uint64_t *QuickReturnTracker.deinit()
{
  sub_1C1AC0530(*(v0 + 16), *(v0 + 24));
  swift_unknownObjectRelease();
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime);
  return v0;
}

uint64_t QuickReturnTracker.__deallocating_deinit()
{
  sub_1C1AC0530(v0[2], v0[3]);
  swift_unknownObjectRelease();
  sub_1C1ABBAF4(v0 + OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C1B5CE1C(uint64_t a1)
{
  type metadata accessor for QuickReturnTracker(0);
  v2 = swift_allocObject();
  *(v2 + 40) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime;
  v4 = sub_1C1B94588();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  *(v2 + 32) = a1;
  return v2;
}

uint64_t sub_1C1B5CEB4(uint64_t a1, uint64_t a2)
{
  *(a2 + 40) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v4 = OBJC_IVAR____TtC15PromotedContent18QuickReturnTracker_interactionTime;
  v5 = sub_1C1B94588();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  *(a2 + 32) = a1;
  return a2;
}

unint64_t sub_1C1B5CF3C()
{
  result = qword_1EBF096D0;
  if (!qword_1EBF096D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF096D0);
  }

  return result;
}

uint64_t type metadata accessor for QuickReturnTracker(uint64_t a1)
{
  result = qword_1EDE6AFA0;
  if (!qword_1EDE6AFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1B5CFE4(uint64_t a1)
{
  sub_1C1AA3EA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C1B5D190(double a1, double a2)
{
  v2 = a1 * 1000.0 / a2;
  if (v2 < 0.1)
  {
    return 8101;
  }

  if (v2 < 0.25)
  {
    return 8102;
  }

  if (v2 < 0.5)
  {
    return 8103;
  }

  if (v2 < 0.75)
  {
    return 8104;
  }

  if (v2 < 1.0)
  {
    return 8105;
  }

  if (v2 < 1.25)
  {
    return 8106;
  }

  if (v2 < 1.5)
  {
    return 8107;
  }

  if (v2 < 1.75)
  {
    return 8108;
  }

  if (v2 >= 2.0 || v2 < 1.75)
  {
    return 8110;
  }

  else
  {
    return 8109;
  }
}

uint64_t sub_1C1B5D278@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id LifecycleMetricsHelper.__allocating_init(metricsHelper:placeholder:)(uint64_t a1, char a2)
{
  swift_getObjectType();

  return sub_1C1AB5844(a1, a2);
}

unint64_t LifecycleMetricsManualDiscardReason.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

BOOL sub_1C1B5D45C(void *a1, uint64_t *a2)
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

void *sub_1C1B5D48C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1C1B5D4B8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

id LifecycleMetricsHelper.init(metricsHelper:placeholder:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  swift_getObjectType();

  return sub_1C1B5DEF4(a1, v3, v2);
}

void sub_1C1B5D5E4()
{
  v1 = OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper;
  v2 = [*(v0 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper) promotedContent];
  if (v2 && (v3 = [v2 adType], swift_unknownObjectRelease(), v3 == 1))
  {
    *(v0 + OBJC_IVAR___APPCLifecycleMetricsHelper_wasOnScreen) = 1;
    [*(v0 + v1) onScreenWithCollapsed_];
    v4 = *(v0 + v1);

    [v4 offScreenWithCollapsed_];
  }

  else
  {
    v5 = sub_1C1B95128();
    sub_1C1AC53E4();
    v6 = sub_1C1B95298();
    sub_1C1B94BA8(v5, &dword_1C1AA2000, v6, "Trying to report missed opportunity for a non-interstitial ad", 61, 2, MEMORY[0x1E69E7CC0]);
  }
}

id sub_1C1B5D78C()
{
  if (*(v0 + OBJC_IVAR___APPCLifecycleMetricsHelper_wasOnScreen) == 1)
  {
    return [*(v0 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper) notConsumedWithCode:8001 placeholder:*(v0 + OBJC_IVAR___APPCLifecycleMetricsHelper_placeholder)];
  }

  return result;
}

id sub_1C1B5D810(id result)
{
  if (*(v1 + OBJC_IVAR___APPCLifecycleMetricsHelper_wasOnScreen) == 1)
  {
    if (result == 1)
    {
      v2 = *(v1 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper);
      v3 = sel_discardedWithCode_;
      v4 = 2613;

      return [v2 v3];
    }

    if (!result)
    {
      v2 = *(v1 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper);
      v3 = sel_notConsumedWithCode_placeholder_;
      v4 = 8001;

      return [v2 v3];
    }

    result = sub_1C1B95568();
    __break(1u);
  }

  return result;
}

void sub_1C1B5D960()
{
  v1 = OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper;
  v2 = [*(v0 + OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper) promotedContent];
  if (v2 && (v3 = [v2 adType], swift_unknownObjectRelease(), v3 == 4))
  {
    v4 = *(v0 + v1);

    [v4 contentLoadFailure];
  }

  else
  {
    v5 = sub_1C1B95128();
    sub_1C1AC53E4();
    v6 = sub_1C1B95298();
    sub_1C1B94BA8(v5, &dword_1C1AA2000, v6, "Trying to report contentLoadFailure on a non-native ad.", 55, 2, MEMORY[0x1E69E7CC0]);
  }
}

uint64_t sub_1C1B5DAE0(uint64_t *a1)
{
  type metadata accessor for JourneyMetricsHelper(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = *a1;
    swift_unknownObjectRetain();
    sub_1C1B82678(&v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1C1B5DB5C(uint64_t a1)
{
  v1 = sub_1C1B95128();
  sub_1C1AC53E4();
  v2 = sub_1C1B95298();
  sub_1C1B94BA8(v1, &dword_1C1AA2000, v2, "Manual impression tracking is no longer supported. This method will be removed in a future iOS update.", 102, 2, MEMORY[0x1E69E7CC0]);
}

id LifecycleMetricsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LifecycleMetricsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LifecycleMetricsHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B5DE74(uint64_t *a1)
{
  type metadata accessor for JourneyMetricsHelper(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = *a1;
    swift_unknownObjectRetain();
    sub_1C1B82678(&v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1C1B5DEF4(uint64_t a1, char a2, _BYTE *a3)
{
  a3[OBJC_IVAR___APPCLifecycleMetricsHelper_wasOnScreen] = 0;
  *&a3[OBJC_IVAR___APPCLifecycleMetricsHelper_metricsHelper] = a1;
  a3[OBJC_IVAR___APPCLifecycleMetricsHelper_placeholder] = a2;
  v4.receiver = a3;
  v4.super_class = type metadata accessor for LifecycleMetricsHelper();
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t sub_1C1B5DF5C()
{
  result = qword_1EBF096F0;
  if (!qword_1EBF096F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF096F0);
  }

  return result;
}

unint64_t sub_1C1B5DFB4()
{
  result = qword_1EDE6BF18;
  if (!qword_1EDE6BF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BF18);
  }

  return result;
}

unint64_t sub_1C1B5E00C()
{
  result = qword_1EDE6BF10;
  if (!qword_1EDE6BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BF10);
  }

  return result;
}

unint64_t sub_1C1B5E064()
{
  result = qword_1EDE6BF20;
  if (!qword_1EDE6BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BF20);
  }

  return result;
}

unint64_t sub_1C1B5E0BC()
{
  result = qword_1EDE6BF08;
  if (!qword_1EDE6BF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BF08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClientPolicyExclusion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClientPolicyExclusion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1C1B5E30C(uint64_t a1)
{
  v48 = sub_1C1AC1F08(&qword_1EBF09718, &qword_1C1BA3698);
  v3 = MEMORY[0x1EEE9AC00](v48);
  v47 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v46 = v39 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v45 = v39 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v44 = v39 - v9;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v39[1] = v1;
  v54 = MEMORY[0x1E69E7CC0];
  sub_1C1AC7EE4(0, v10, 0);
  v11 = v54;
  v12 = a1 + 64;
  result = sub_1C1B95328();
  v14 = result;
  v15 = 0;
  v53 = *(a1 + 36);
  v40 = a1 + 72;
  v41 = v10;
  v42 = a1 + 64;
  v43 = a1;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    if ((*(v12 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_22;
    }

    if (v53 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v50 = 1 << v14;
    v51 = v14 >> 6;
    v49 = v15;
    v52 = v11;
    v18 = v48;
    v19 = *(v48 + 48);
    v20 = *(a1 + 56);
    v21 = v44;
    *v44 = *(*(a1 + 48) + v14);
    v22 = sub_1C1B94588();
    v23 = *(v22 - 8);
    (*(v23 + 16))(&v21[v19], v20 + *(v23 + 72) * v14, v22);
    v24 = v45;
    *v45 = *v21;
    v25 = *(v23 + 32);
    v25(v24 + *(v18 + 48), &v21[v19], v22);
    v26 = v46;
    sub_1C1AA7E30(v24, v46, &qword_1EBF09718, &qword_1C1BA3698);
    v27 = *(v18 + 48);
    v11 = v52;
    v28 = v47;
    *v47 = *v26;
    v25(&v28[v27], &v26[v27], v22);
    v29 = *v28;
    sub_1C1AA7C8C(v28, &qword_1EBF09718, &qword_1C1BA3698);
    result = sub_1C1AA7C8C(v24, &qword_1EBF09718, &qword_1C1BA3698);
    v54 = v11;
    v31 = *(v11 + 16);
    v30 = *(v11 + 24);
    if (v31 >= v30 >> 1)
    {
      result = sub_1C1AC7EE4((v30 > 1), v31 + 1, 1);
      v11 = v54;
    }

    *(v11 + 16) = v31 + 1;
    *(v11 + v31 + 32) = v29;
    a1 = v43;
    v16 = 1 << *(v43 + 32);
    if (v14 >= v16)
    {
      goto LABEL_24;
    }

    v12 = v42;
    v32 = *(v42 + 8 * v51);
    if ((v32 & v50) == 0)
    {
      goto LABEL_25;
    }

    if (v53 != *(v43 + 36))
    {
      goto LABEL_26;
    }

    v33 = v32 & (-2 << (v14 & 0x3F));
    if (v33)
    {
      v16 = __clz(__rbit64(v33)) | v14 & 0x7FFFFFFFFFFFFFC0;
      v17 = v41;
    }

    else
    {
      v34 = v51 << 6;
      v35 = v51 + 1;
      v17 = v41;
      v36 = (v40 + 8 * v51);
      while (v35 < (v16 + 63) >> 6)
      {
        v38 = *v36++;
        v37 = v38;
        v34 += 64;
        ++v35;
        if (v38)
        {
          result = sub_1C1B616D0(v14, v53, 0);
          v16 = __clz(__rbit64(v37)) + v34;
          goto LABEL_4;
        }
      }

      result = sub_1C1B616D0(v14, v53, 0);
    }

LABEL_4:
    v15 = v49 + 1;
    v14 = v16;
    if (v49 + 1 == v17)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t VisibleThresholdTracker.__allocating_init(clock:impressionDuration:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1C1B61188(a1, a2);
}

PromotedContent::VisibilityThreshold_optional __swiftcall VisibilityThreshold.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 100)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (rawValue == 50)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (!rawValue)
  {
    v3 = 0;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t sub_1C1B5E7F8()
{
  v1 = *v0;
  sub_1C1B95958();
  MEMORY[0x1C6907960](50 * v1);
  return sub_1C1B959A8();
}

uint64_t sub_1C1B5E878(uint64_t a1)
{
  v2 = *v1;
  sub_1C1B95958();
  MEMORY[0x1C6907960](50 * v2);
  return sub_1C1B959A8();
}

uint64_t sub_1C1B5E93C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1B61590;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1AC0598(v4);
}

uint64_t sub_1C1B5E9D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1B61558;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_1C1AC0598(v3);
  return sub_1C1AC0530(v8, v9);
}

uint64_t sub_1C1B5EADC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1C1B6152C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1C1AC0598(v4);
}

uint64_t sub_1C1B5EB70(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1C1B614F4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_1C1AC0598(v3);
  return sub_1C1AC0530(v8, v9);
}

uint64_t sub_1C1B5EC2C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_1C1AC0598(v1);
  return v1;
}

uint64_t sub_1C1B5EC7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_1C1AC0530(v5, v6);
}

uint64_t VisibleThresholdTracker.init(clock:impressionDuration:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1C1B4DBE0(a1, v2, a2);
}

void sub_1C1B5ED70(uint64_t a1)
{
  if ((a1 - 50) < 0x32)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 >= 50)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v6 = v2;
  sub_1C1B5EDDC(&v6);
  v5 = v2;
  sub_1C1B5F4A0(&v5);
  v4 = v2;
  sub_1C1B5F9B4(&v4);
  v3 = v2;
  sub_1C1B6051C(&v3);
}

void sub_1C1B5EDDC(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1C1B94588();
  v73 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v70 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v63 - v7;
  v8 = sub_1C1AC1F08(&qword_1EBF09710, &qword_1C1BA3690);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v72 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v63 - v11;
  v12 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v63 - v13;
  v15 = *a1;
  v74 = *(v2 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock);
  os_unfair_lock_lock((v74 + 16));
  swift_beginAccess();

  v17 = sub_1C1B60990(v16, v15);

  v67 = v17;
  v18 = sub_1C1B5E30C(v17);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 32);
    v21 = (v73 + 56);
    do
    {
      v23 = *v20++;
      swift_beginAccess();
      v24 = sub_1C1AD8B2C(v23);
      if (v25)
      {
        v26 = v24;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v2[6];
        v78 = v28;
        v2[6] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1C1ADAF30();
          v28 = v78;
        }

        (*(v73 + 32))(v14, *(v28 + 56) + *(v73 + 72) * v26, v4);
        sub_1C1AD3EB8(v26, v28);
        v2[6] = v28;

        v22 = 0;
      }

      else
      {
        v22 = 1;
      }

      (*v21)(v14, v22, 1, v4);
      sub_1C1AA7C8C(v14, &qword_1EBF07F50, &qword_1C1B9A590);
      swift_endAccess();
      --v19;
    }

    while (v19);
  }

  v76 = v4;

  swift_beginAccess();
  v29 = v2[5];
  v77 = v2[4];
  v71 = v2;
  v64 = v29;
  sub_1C1AC0598(v77);
  os_unfair_lock_unlock((v74 + 16));
  v30 = 0;
  v31 = v67[8];
  v63 = (v67 + 8);
  v32 = 1 << *(v67 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v31;
  v69 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock;
  v35 = (v32 + 63) >> 6;
  v65 = v73 + 16;
  v74 = v73 + 32;
  v68 = (v73 + 8);
  v36 = v66;
  while (v34)
  {
    v37 = v30;
LABEL_22:
    v40 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v41 = v40 | (v37 << 6);
    v42 = *(v67[6] + v41);
    v43 = v73;
    v45 = v75;
    v44 = v76;
    (*(v73 + 16))(v75, v67[7] + *(v73 + 72) * v41, v76);
    v46 = sub_1C1AC1F08(&qword_1EBF09718, &qword_1C1BA3698);
    v47 = *(v46 + 48);
    v48 = v72;
    *v72 = v42;
    (*(v43 + 32))(&v48[v47], v45, v44);
    (*(*(v46 - 8) + 56))(v48, 0, 1, v46);
    v39 = v37;
    v49 = v48;
    v36 = v66;
LABEL_23:
    sub_1C1B61660(v49, v36);
    v50 = sub_1C1AC1F08(&qword_1EBF09718, &qword_1C1BA3698);
    if ((*(*(v50 - 8) + 48))(v36, 1, v50) == 1)
    {

      sub_1C1AC0530(v77, v64);
      return;
    }

    v51 = v39;
    v52 = *v36;
    v53 = v70;
    v54 = v76;
    (*v74)(v70, &v36[*(v50 + 48)], v76);
    v55 = [*(v71 + v69) now];
    v56 = v75;
    sub_1C1B94558();

    sub_1C1B94528();
    v58 = v57;
    v59 = *v68;
    (*v68)(v56, v54);
    if (v77)
    {
      LOBYTE(v78) = v52;
      v60 = v64;

      v77(&v78, v58);
      sub_1C1AC0530(v77, v60);
    }

    v59(v53, v54);
    v30 = v51;
  }

  if (v35 <= v30 + 1)
  {
    v38 = v30 + 1;
  }

  else
  {
    v38 = v35;
  }

  v39 = v38 - 1;
  while (1)
  {
    v37 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v37 >= v35)
    {
      v61 = sub_1C1AC1F08(&qword_1EBF09718, &qword_1C1BA3698);
      v62 = v72;
      (*(*(v61 - 8) + 56))(v72, 1, 1, v61);
      v49 = v62;
      v34 = 0;
      goto LABEL_23;
    }

    v34 = *&v63[8 * v37];
    ++v30;
    if (v34)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_1C1B5F4A0(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v45 - v5;
  v7 = sub_1C1B94588();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - v11;
  v13 = *a1;
  v46 = *(v2 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock);
  os_unfair_lock_lock(v46 + 4);
  v14 = [*(v2 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock) now];
  v47 = v12;
  sub_1C1B94558();

  swift_beginAccess();
  v15 = 0;
  v54 = (v8 + 16);
  v48 = v8;
  v16 = (v8 + 56);
  v17 = MEMORY[0x1E69E7CC0];
  v51 = v7;
  do
  {
    v20 = byte_1F414DED0[v15 + 32];
    if (v13 >= v20)
    {
      v21 = *(v2 + 48);
      if (*(v21 + 16) && (v22 = sub_1C1AD8B2C(byte_1F414DED0[v15 + 32]), (v23 & 1) != 0))
      {
        v18 = *(v21 + 56);
        v19 = v48;
        (*(v48 + 16))(v6, v18 + *(v48 + 72) * v22, v7);
        (*(v19 + 56))(v6, 0, 1, v7);
        sub_1C1AA7C8C(v6, &qword_1EBF07F50, &qword_1C1B9A590);
      }

      else
      {
        (*v16)(v6, 1, 1, v7);
        sub_1C1AA7C8C(v6, &qword_1EBF07F50, &qword_1C1B9A590);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C1AC7EE4(0, *(v17 + 16) + 1, 1);
          v17 = v57;
        }

        v26 = *(v17 + 16);
        v25 = *(v17 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1C1AC7EE4((v25 > 1), v26 + 1, 1);
          v17 = v57;
        }

        *(v17 + 16) = v26 + 1;
        *(v17 + v26 + 32) = v20;
        v7 = v51;
      }
    }

    ++v15;
  }

  while (v15 != 3);
  v28 = v47;
  v27 = v48;
  v53 = *(v17 + 16);
  if (!v53)
  {
LABEL_27:

    (*(v27 + 8))(v28, v7);
    os_unfair_lock_unlock(v46 + 4);
    return;
  }

  v29 = 0;
  v52 = v17 + 32;
  v49 = v48 + 40;
  v50 = v48 + 32;
  while (v29 < *(v17 + 16))
  {
    v30 = *(v52 + v29);
    swift_beginAccess();
    (*v54)(v55, v28, v7);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v2 + 48);
    v32 = v56;
    *(v2 + 48) = 0x8000000000000000;
    v33 = sub_1C1AD8B2C(v30);
    v35 = v32[2];
    v36 = (v34 & 1) == 0;
    v37 = __OFADD__(v35, v36);
    v38 = v35 + v36;
    if (v37)
    {
      goto LABEL_29;
    }

    v39 = v34;
    if (v32[3] < v38)
    {
      sub_1C1ADA038(v38, v31);
      v33 = sub_1C1AD8B2C(v30);
      if ((v39 & 1) != (v40 & 1))
      {
        goto LABEL_31;
      }

LABEL_22:
      v41 = v56;
      if (v39)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }

    if (v31)
    {
      goto LABEL_22;
    }

    v44 = v33;
    sub_1C1ADAF30();
    v33 = v44;
    v7 = v51;
    v41 = v56;
    if (v39)
    {
LABEL_14:
      (*(v27 + 40))(v41[7] + *(v27 + 72) * v33, v55, v7);
      goto LABEL_15;
    }

LABEL_23:
    v41[(v33 >> 6) + 8] |= 1 << v33;
    *(v41[6] + v33) = v30;
    (*(v27 + 32))(v41[7] + *(v27 + 72) * v33, v55, v7);
    v42 = v41[2];
    v37 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (v37)
    {
      goto LABEL_30;
    }

    v41[2] = v43;
LABEL_15:
    ++v29;
    *(v2 + 48) = v41;

    swift_endAccess();
    if (v53 == v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_1C1B958E8();
  __break(1u);
}

void sub_1C1B5F9B4(unsigned __int8 *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v40 - v4;
  v5 = sub_1C1B94C18();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C1B94C38();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1B94BF8();
  v46 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v14 = sub_1C1B94C58();
  v44 = *(v14 - 8);
  v45 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - v18;
  v20 = sub_1C1B951B8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  v54 = *(v1 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock);
  os_unfair_lock_lock(v54 + 4);
  if (a1 && !*(v1 + 56))
  {
    v43 = sub_1C1B615BC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    v42 = sub_1C1B61618(&qword_1EDE6A650, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    sub_1C1AC1F08(&qword_1EBF09708, &unk_1C1BA3680);
    sub_1C1AB0DC4(&unk_1EDE6A660, &qword_1EBF09708, &unk_1C1BA3680, MEMORY[0x1E69E6328]);
    v41 = v1;
    sub_1C1B95318();
    v43 = sub_1C1B951C8();
    (*(v21 + 8))(v23, v20);
    ObjectType = swift_getObjectType();
    v42 = ObjectType;
    sub_1C1B94C48();
    sub_1C1B94C98();
    v26 = v45;
    v44 = *(v44 + 8);
    (v44)(v17, v45);
    v27 = v46;
    v28 = *(v46 + 104);
    v28(v13, *MEMORY[0x1E69E7F40], v8);
    *v11 = 0;
    v28(v11, *MEMORY[0x1E69E7F28], v8);
    MEMORY[0x1C6907220](v19, v13, v11, ObjectType);
    v29 = *(v27 + 8);
    v29(v11, v8);
    v29(v13, v8);
    (v44)(v19, v26);
    v30 = swift_allocObject();
    v31 = v41;
    swift_weakInit();
    aBlock[4] = sub_1C1B61608;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C1B196F0;
    aBlock[3] = &unk_1F41538F0;
    v32 = _Block_copy(aBlock);

    v33 = v47;
    sub_1C1B94C28();
    v34 = v49;
    sub_1C1B60430();
    v35 = v43;
    sub_1C1B951D8();
    _Block_release(v32);
    (*(v51 + 8))(v34, v52);
    (*(v48 + 8))(v33, v50);

    sub_1C1B951F8();
    v36 = [*(v31 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock) now];
    v37 = v53;
    sub_1C1B94558();

    v38 = sub_1C1B94588();
    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    v39 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionBeganTimestamp;
    swift_beginAccess();
    sub_1C1AABE90(v37, v31 + v39);
    swift_endAccess();
    *(v31 + 56) = v35;
    swift_unknownObjectRelease();
    os_unfair_lock_unlock(v54 + 4);
  }

  else
  {
    v24 = v54 + 4;

    os_unfair_lock_unlock(v24);
  }
}

void sub_1C1B60110(uint64_t a1)
{
  v1 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_1C1B94588();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock;
    v14 = *(Strong + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock);

    os_unfair_lock_lock(v14 + 4);

    swift_beginAccess();
    v15 = *(v12 + 16);
    v16 = *(v12 + 24);
    v17 = *(v12 + v13);
    sub_1C1AC0598(v15);

    os_unfair_lock_unlock(v17 + 4);

    v18 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionBeganTimestamp;
    swift_beginAccess();
    sub_1C1AA7E30(v12 + v18, v3, &qword_1EBF07F50, &qword_1C1B9A590);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1C1AA7C8C(v3, &qword_1EBF07F50, &qword_1C1B9A590);
      v19 = *(v12 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionDuration);
      if (!v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      (*(v5 + 32))(v10, v3, v4);
      v20 = [*(v12 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock) now];
      sub_1C1B94558();

      sub_1C1B94528();
      v19 = v21;
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v10, v4);
      if (v19 <= *(v12 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionDuration))
      {
        v19 = *(v12 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionDuration);
      }

      if (!v15)
      {
        goto LABEL_9;
      }
    }

    v15(v23, v19);
    sub_1C1AC0530(v15, v16);
    sub_1C1AC0530(v15, v16);
LABEL_9:
  }
}

uint64_t sub_1C1B60430()
{
  sub_1C1B94C18();
  sub_1C1B61618(&qword_1EDE6CA58, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1C1AC1F08(&unk_1EBF09090, &qword_1C1B9F028);
  sub_1C1AB0DC4(&qword_1EDE6CA40, &unk_1EBF09090, &qword_1C1B9F028, MEMORY[0x1E69E6328]);
  return sub_1C1B95318();
}

void sub_1C1B6051C(_BYTE *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22[-v4];
  v6 = sub_1C1B94588();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22[-v11];
  if (!*a1)
  {
    v13 = *(v1 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_lock);
    os_unfair_lock_lock(v13 + 4);
    if (v1[7])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1C1B951E8();
      swift_unknownObjectRelease();
    }

    v1[7] = 0;
    swift_unknownObjectRelease();
    v14 = OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionBeganTimestamp;
    swift_beginAccess();
    sub_1C1AA7E30(v1 + v14, v5, &qword_1EBF07F50, &qword_1C1B9A590);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1C1AA7C8C(v5, &qword_1EBF07F50, &qword_1C1B9A590);
      os_unfair_lock_unlock(v13 + 4);
    }

    else
    {
      (*(v7 + 32))(v12, v5, v6);
      swift_beginAccess();
      v15 = v1[2];
      v16 = v1[3];
      sub_1C1AC0598(v15);
      os_unfair_lock_unlock(v13 + 4);
      v17 = [*(v1 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_clock) now];
      sub_1C1B94558();

      sub_1C1B94528();
      v19 = v18;
      v20 = *(v7 + 8);
      v20(v10, v6);
      if (*(v1 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionDuration) <= v19)
      {
        if (v15)
        {

          v15(v21, v19);
          sub_1C1AC0530(v15, v16);
          sub_1C1AC0530(v15, v16);
        }

        v20(v12, v6);
      }

      else
      {
        v20(v12, v6);
        sub_1C1AC0530(v15, v16);
      }
    }
  }
}

uint64_t *VisibleThresholdTracker.deinit()
{
  sub_1C1AC0530(v0[2], v0[3]);
  sub_1C1AC0530(v0[4], v0[5]);

  swift_unknownObjectRelease();
  sub_1C1AA7C8C(v0 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionBeganTimestamp, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t VisibleThresholdTracker.__deallocating_deinit()
{
  sub_1C1AC0530(v0[2], v0[3]);
  sub_1C1AC0530(v0[4], v0[5]);

  swift_unknownObjectRelease();
  sub_1C1AA7C8C(v0 + OBJC_IVAR____TtC15PromotedContent23VisibleThresholdTracker_impressionBeganTimestamp, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_unknownObjectRelease();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1C1B60990(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1C1B60AFC(v8, v6, v4, v3);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1C1B60DC0(v10, v6, v4, v3);
  result = MEMORY[0x1C6908230](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1C1B60AFC(unint64_t *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v29 = a2;
  v30 = a1;
  v41 = a4;
  v40 = sub_1C1AC1F08(&qword_1EBF09718, &qword_1C1BA3698);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v28 - v5;
  v39 = sub_1C1B94588();
  result = MEMORY[0x1EEE9AC00](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v42 = a3;
  v10 = *(a3 + 64);
  v31 = 0;
  v32 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v38 = v7;
  v34 = v7 + 8;
  v35 = v7 + 16;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v43 = (v13 - 1) & v13;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = v42[7];
    v20 = *(v42[6] + v18);
    v22 = v38;
    v21 = v39;
    v23 = *(v38 + 72);
    v33 = v18;
    v24 = *(v38 + 16);
    v25 = v36;
    v24(v36, v19 + v23 * v18, v39);
    v26 = v37;
    *v37 = v20;
    v24(&v26[*(v40 + 48)], v25, v21);
    LODWORD(v24) = *v26;
    sub_1C1AA7C8C(v26, &qword_1EBF09718, &qword_1C1BA3698);
    result = (*(v22 + 8))(v25, v21);
    v13 = v43;
    if (v24 > v41)
    {
      *(v30 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
        return sub_1C1B60E48(v30, v29, v31, v42);
      }
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      return sub_1C1B60E48(v30, v29, v31, v42);
    }

    v17 = *(v32 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v43 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C1B60DC0(void *result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1C1B60AFC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1C1B60E48(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1C1B94588();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v45 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v42 = &v37 - v13;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v41 = v12;
  sub_1C1AC1F08(&unk_1EBF09720, &unk_1C1BA36A0);
  result = sub_1C1B955C8();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v39 = v9 + 32;
  v40 = v9 + 16;
  v18 = result + 64;
  v19 = v41;
  v37 = v9;
  v38 = a4;
  while (v16)
  {
    v20 = __clz(__rbit64(v16));
    v43 = (v16 - 1) & v16;
LABEL_16:
    v23 = v20 | (v17 << 6);
    v24 = a4[7];
    v25 = *(a4[6] + v23);
    v44 = *(v9 + 72);
    v26 = v42;
    (*(v9 + 16))(v42, v24 + v44 * v23, v19);
    v27 = *(v9 + 32);
    v27(v45, v26, v19);
    sub_1C1B95958();
    MEMORY[0x1C6907960](50 * v25);
    result = sub_1C1B959A8();
    v28 = -1 << *(v15 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      v19 = v41;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v18 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v19 = v41;
LABEL_26:
    *(v18 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    *(*(v15 + 48) + v31) = v25;
    result = (v27)(*(v15 + 56) + v31 * v44, v45, v19);
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v9 = v37;
    a4 = v38;
    v16 = v43;
    if (!a3)
    {
      return v15;
    }
  }

  v21 = v17;
  while (1)
  {
    v17 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v22 = a1[v17];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v43 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C1B61188(uint64_t a1, double a2)
{
  type metadata accessor for VisibleThresholdTracker(0);
  v4 = swift_allocObject();

  return sub_1C1B4DBE0(a1, v4, a2);
}

unint64_t sub_1C1B611EC()
{
  result = qword_1EDE6ADA0;
  if (!qword_1EDE6ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6ADA0);
  }

  return result;
}

uint64_t type metadata accessor for VisibleThresholdTracker(uint64_t a1)
{
  result = qword_1EDE6ACE8;
  if (!qword_1EDE6ACE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1B612E8(uint64_t a1)
{
  sub_1C1AA3EA0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1C1B614F4(uint64_t a1, double a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  return v3(a1, &v5);
}

uint64_t sub_1C1B61558(double a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1C1B615BC()
{
  result = qword_1EDE6A648;
  if (!qword_1EDE6A648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE6A648);
  }

  return result;
}

uint64_t sub_1C1B61618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C1B61660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF09710, &qword_1C1BA3690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B616D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t ExpandTapAction.adIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_adIdentifier);

  return v1;
}

uint64_t ExpandTapAction.expandedDestinationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_expandedDestinationURL;
  v4 = sub_1C1B944A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C1B61808(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C1B61868(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C1B61900;
}

void sub_1C1B61900(void **a1, char a2)
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

uint64_t sub_1C1B61980(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = 0x80000001C1BA5AC0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000016;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001C1BA5AC0;
  }

  else
  {
    v6 = 0x80000001C1BA5AE0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x69746E6564496461;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEC00000072656966;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000016;
  }

  else
  {
    v4 = 0x80000001C1BA5AE0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x69746E6564496461;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000072656966;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C1B95888();
  }

  return v11 & 1;
}

uint64_t sub_1C1B61A64()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B61B1C(uint64_t a1)
{
  sub_1C1B94DE8();
}

uint64_t sub_1C1B61BC0(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

unint64_t sub_1C1B61C74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B62D6C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1C1B61CA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000072656966;
  v4 = 0x80000001C1BA5AC0;
  v5 = 0xD000000000000016;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x80000001C1BA5AE0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x69746E6564496461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1C1B61D18()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69746E6564496461;
  }
}

unint64_t sub_1C1B61D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B62D6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B61DB0(uint64_t a1)
{
  v2 = sub_1C1B6287C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B61DEC(uint64_t a1)
{
  v2 = sub_1C1B6287C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ExpandTapAction.__allocating_init(adIdentifier:expandedDestinationURL:maximumExpandedSize:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v14 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  v15 = &v14[OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_adIdentifier];
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_expandedDestinationURL;
  v17 = sub_1C1B944A8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a3, v17);
  v19 = &v14[OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_maximumExpandedSize];
  *v19 = a4;
  *(v19 + 1) = a5;
  v19[16] = a6 & 1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v14[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v14[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
  v22.receiver = v14;
  v22.super_class = type metadata accessor for TapAction();
  v20 = objc_msgSendSuper2(&v22, sel_init);
  swift_unknownObjectRelease();
  (*(v18 + 8))(a3, v17);
  return v20;
}

id ExpandTapAction.init(adIdentifier:expandedDestinationURL:maximumExpandedSize:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  swift_unknownObjectWeakInit();
  v14 = &v7[OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_adIdentifier];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_expandedDestinationURL;
  v16 = sub_1C1B944A8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v7[v15], a3, v16);
  v18 = &v7[OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_maximumExpandedSize];
  *v18 = a4;
  *(v18 + 1) = a5;
  v18[16] = a6 & 1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *&v7[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v7[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
  v21.receiver = v7;
  v21.super_class = type metadata accessor for TapAction();
  v19 = objc_msgSendSuper2(&v21, sel_init);
  swift_unknownObjectRelease();
  (*(v17 + 8))(a3, v16);
  return v19;
}

void *sub_1C1B62184(void *a1)
{
  v3 = v1;
  v5 = sub_1C1B944A8();
  v20 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C1AC1F08(&qword_1EBF09838, &qword_1C1BA38B8);
  v8 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v10 = &v20 - v9;
  v22 = OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_delegate;
  swift_unknownObjectWeakInit();
  v11 = a1[3];
  v26 = a1;
  sub_1C1AAABE0(a1, v11);
  sub_1C1B6287C();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(v26);
    sub_1C1ABD038(v3 + v22);
    type metadata accessor for ExpandTapAction(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v7;
    LOBYTE(v24) = 0;
    v13 = v21;
    v14 = sub_1C1B95698();
    v16 = (v3 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_adIdentifier);
    *v16 = v14;
    v16[1] = v17;
    LOBYTE(v24) = 1;
    sub_1C1B62DB8(&unk_1EDE6C3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1C1B956F8();
    (*(v20 + 32))(v3 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_expandedDestinationURL, v12, v5);
    type metadata accessor for CGSize(0);
    LOBYTE(v23[0]) = 2;
    sub_1C1B62DB8(&unk_1EDE6BB30, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1C1B95678();
    v18 = v25;
    v19 = v3 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_maximumExpandedSize;
    *v19 = v24;
    v19[16] = v18;
    sub_1C1B95628();
    sub_1C1AAD2FC(&v24, v23);
    v3 = TapAction.init(from:)(v23);
    sub_1C1AA86F8(&v24);
    (*(v8 + 8))(v10, v13);
    sub_1C1AA86F8(v26);
  }

  return v3;
}

uint64_t sub_1C1B62600(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09738, &qword_1C1BA36E8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B6287C();
  sub_1C1B95A18();
  LOBYTE(v11) = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1C1B944A8();
    sub_1C1B62DB8(&unk_1EDE6C3B0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    sub_1C1B95808();
    v9 = *(v3 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_maximumExpandedSize + 16);
    v11 = *(v3 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_maximumExpandedSize);
    v12 = v9;
    v13 = 2;
    type metadata accessor for CGSize(0);
    sub_1C1B62DB8(&qword_1EDE6BB40, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1C1B95788();
    sub_1C1B95738();
    sub_1C1B3BBE0(&v11);
    sub_1C1AA86F8(&v11);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1B6287C()
{
  result = qword_1EBF09740;
  if (!qword_1EBF09740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09740);
  }

  return result;
}

uint64_t sub_1C1B62930()
{

  v1 = OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_expandedDestinationURL;
  v2 = sub_1C1B944A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC15PromotedContent15ExpandTapAction_delegate;

  return sub_1C1ABD038(v3);
}

id ExpandTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpandTapAction(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ExpandTapAction(uint64_t a1)
{
  result = qword_1EBF09750;
  if (!qword_1EBF09750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1B62AD8(uint64_t a1)
{
  result = sub_1C1B944A8();
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

unint64_t sub_1C1B62C68()
{
  result = qword_1EBF09820;
  if (!qword_1EBF09820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09820);
  }

  return result;
}

unint64_t sub_1C1B62CC0()
{
  result = qword_1EBF09828;
  if (!qword_1EBF09828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09828);
  }

  return result;
}

unint64_t sub_1C1B62D18()
{
  result = qword_1EBF09830;
  if (!qword_1EBF09830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09830);
  }

  return result;
}

unint64_t sub_1C1B62D6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B955F8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C1B62DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id SearchLandingPageRepresentation.__allocating_init(adamId:metadata:clientRequestId:journeyRelayAdGroupId:journeyRelayCampaignId:parentAppCheckEnabled:installAttribution:rank:timeToDisplay:iAdId:storeFront:storeFrontLocale:size:odmlSuccess:treatmentId:deploymentId:experimentId:positionInformation:slotNumber:cppIds:appMetadata:creativeDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned __int8 a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = v34;
  v85 = a8;
  v83 = a7;
  v82 = a6;
  v81 = a5;
  v80 = a4;
  v79 = a3;
  v100 = a33;
  v101 = a34;
  v99 = a32;
  v98 = a31;
  v96 = a29;
  v97 = a30;
  v94 = a27;
  v95 = a28;
  v92 = a25;
  v93 = a26;
  v90 = a23;
  v91 = a24;
  v89 = a22;
  v87 = a20;
  v88 = a21;
  v86 = a19;
  v84 = a18;
  v78 = a16;
  v77 = a15;
  v76 = a14;
  v40 = sub_1C1B945F8();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v75 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = objc_allocWithZone(v35);
  v45 = &v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId];
  *v45 = a1;
  v45[1] = a2;
  v46 = &v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata];
  v47 = v80;
  *v46 = v79;
  v46[1] = v47;
  v48 = &v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId];
  v49 = v82;
  *v48 = v81;
  v48[1] = v49;
  v50 = &v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId];
  v51 = v85;
  *v50 = v83;
  v50[1] = v51;
  v52 = &v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId];
  *v52 = a11;
  v52[1] = a12;
  v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_parentAppCheckEnabled] = a13;
  *&v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_installAttribution] = v76;
  *&v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_rank] = v77;
  *&v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_timeToDisplay] = v78;
  v53 = *(v41 + 16);
  v53(&v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId], a17, v40);
  v54 = &v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront];
  v56 = v86;
  v55 = v87;
  *v54 = v84;
  v54[1] = v56;
  v57 = &v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale];
  *v57 = v55;
  v57[1] = v88;
  v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_odmlSuccess] = v89;
  v58 = &v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId];
  v59 = v91;
  *v58 = v90;
  v58[1] = v59;
  v60 = &v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId];
  v61 = v93;
  *v60 = v92;
  v60[1] = v61;
  v62 = &v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId];
  v63 = v95;
  *v62 = v94;
  v62[1] = v63;
  v64 = v97;
  *&v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_positionInformation] = v96;
  v65 = &v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber];
  *v65 = v64;
  v65[8] = v98 & 1;
  v66 = v100;
  *&v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_cppIds] = v99;
  *&v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_appMetadata] = v66;
  *&v44[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_creativeDetails] = v101;
  sub_1C1B945E8();
  v67 = sub_1C1B945A8();
  v68 = &v44[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v68 = v67;
  v68[1] = v69;
  v53(&v44[OBJC_IVAR___APPCContentRepresentation_id], v43, v40);
  *&v44[OBJC_IVAR___APPCContentRepresentation_adType] = 6;
  *&v44[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v44[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v44[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v70 = &v44[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v70 = a9;
  v70[1] = a10;
  *&v44[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v44[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v71 = type metadata accessor for ContentRepresentation(0);
  v102.receiver = v44;
  v102.super_class = v71;
  v72 = objc_msgSendSuper2(&v102, sel_init);
  v73 = *(v41 + 8);
  v73(a17, v40);
  v73(v43, v40);
  return v72;
}

char *sub_1C1B63274(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C1B953A8();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1C1AC7DE4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1C6907490](i, a1);
        sub_1C1AEE4FC();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1C1AC7DE4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1C1AA7E98(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1C1AEE4FC();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1C1AC7DE4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1C1AA7E98(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1B63440(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C1AC7E94(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      sub_1C1AC1F08(&qword_1EBF09870, &qword_1C1BA3AF0);
      sub_1C1AC1F08(&qword_1EBF09878, qword_1C1BA3AF8);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C1AC7E94((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C1B6356C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1C1AC7EC4(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
      sub_1C1AC1F08(&qword_1EBF07AD0, &qword_1C1B98EF0);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C1AC7EC4((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t SearchLandingPageRepresentation.adamId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId);

  return v1;
}

uint64_t SearchLandingPageRepresentation.metadata.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata);

  return v1;
}

uint64_t SearchLandingPageRepresentation.clientRequestId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId);

  return v1;
}

uint64_t SearchLandingPageRepresentation.journeyRelayAdGroupId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId);

  return v1;
}

uint64_t SearchLandingPageRepresentation.journeyRelayCampaignId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId);

  return v1;
}

uint64_t SearchLandingPageRepresentation.iAdId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId;
  v4 = sub_1C1B945F8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchLandingPageRepresentation.storeFront.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront);

  return v1;
}

uint64_t SearchLandingPageRepresentation.storeFrontLocale.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale);

  return v1;
}

uint64_t SearchLandingPageRepresentation.treatmentId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId);

  return v1;
}

uint64_t SearchLandingPageRepresentation.deploymentId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId);

  return v1;
}

uint64_t SearchLandingPageRepresentation.experimentId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId);

  return v1;
}

uint64_t sub_1C1B63A14(char a1)
{
  result = 0x64496D616461;
  switch(a1)
  {
    case 1:
      result = 0x617461646174656DLL;
      break;
    case 2:
      result = 0x6552746E65696C63;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 1802396018;
      break;
    case 8:
      result = 0x69446F54656D6974;
      break;
    case 9:
      result = 0x6449644169;
      break;
    case 10:
      result = 0x6F724665726F7473;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x636375536C6D646FLL;
      break;
    case 13:
      result = 0x6E656D7461657274;
      break;
    case 14:
      v3 = 0x796F6C706564;
      goto LABEL_11;
    case 15:
      v3 = 0x697265707865;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
      break;
    case 16:
      result = 0x646174654D707061;
      break;
    case 17:
      result = 0xD000000000000013;
      break;
    case 18:
      result = 0x626D754E746F6C73;
      break;
    case 19:
      result = 0x736449707063;
      break;
    case 20:
      result = 0x6576697461657263;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C1B63C80(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1C1B63A14(*a1);
  v5 = v4;
  if (v3 == sub_1C1B63A14(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1B63D08()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B63A14(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B63D6C(uint64_t a1)
{
  sub_1C1B63A14(*v1);
  sub_1C1B94DE8();
}

uint64_t sub_1C1B63DC0(uint64_t a1)
{
  v2 = *v1;
  sub_1C1B95958();
  sub_1C1B63A14(v2);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

unint64_t sub_1C1B63E20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B66BCC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C1B63E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1B63A14(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C1B63E84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B66BCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B63EB8(uint64_t a1)
{
  v2 = sub_1C1B661E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B63EF4(uint64_t a1)
{
  v2 = sub_1C1B661E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id SearchLandingPageRepresentation.init(adamId:metadata:clientRequestId:journeyRelayAdGroupId:journeyRelayCampaignId:parentAppCheckEnabled:installAttribution:rank:timeToDisplay:iAdId:storeFront:storeFrontLocale:size:odmlSuccess:treatmentId:deploymentId:experimentId:positionInformation:slotNumber:cppIds:appMetadata:creativeDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unsigned __int8 a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v35 = v34;
  v84 = a8;
  v82 = a7;
  v81 = a6;
  v80 = a5;
  v79 = a4;
  v78 = a3;
  v99 = a33;
  v100 = a34;
  v98 = a32;
  v97 = a31;
  v95 = a29;
  v96 = a30;
  v93 = a27;
  v94 = a28;
  v91 = a25;
  v92 = a26;
  v89 = a23;
  v90 = a24;
  v88 = a22;
  v86 = a20;
  v87 = a21;
  v85 = a19;
  v83 = a18;
  v77 = a16;
  v76 = a15;
  v75 = a14;
  v40 = sub_1C1B945F8();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v74 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId];
  *v44 = a1;
  v44[1] = a2;
  v45 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata];
  v46 = v79;
  *v45 = v78;
  v45[1] = v46;
  v47 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId];
  v48 = v81;
  *v47 = v80;
  v47[1] = v48;
  v49 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId];
  v50 = v84;
  *v49 = v82;
  v49[1] = v50;
  v51 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId];
  *v51 = a11;
  v51[1] = a12;
  v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_parentAppCheckEnabled] = a13;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_installAttribution] = v75;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_rank] = v76;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_timeToDisplay] = v77;
  v52 = *(v41 + 16);
  v52(&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId], a17, v40);
  v53 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront];
  v55 = v85;
  v54 = v86;
  *v53 = v83;
  v53[1] = v55;
  v56 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale];
  *v56 = v54;
  v56[1] = v87;
  v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_odmlSuccess] = v88;
  v57 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId];
  v58 = v90;
  *v57 = v89;
  v57[1] = v58;
  v59 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId];
  v60 = v92;
  *v59 = v91;
  v59[1] = v60;
  v61 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId];
  v62 = v94;
  *v61 = v93;
  v61[1] = v62;
  v63 = v96;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_positionInformation] = v95;
  v64 = &v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber];
  *v64 = v63;
  v64[8] = v97 & 1;
  v65 = v99;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_cppIds] = v98;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_appMetadata] = v65;
  *&v35[OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_creativeDetails] = v100;
  sub_1C1B945E8();
  v66 = sub_1C1B945A8();
  v67 = &v35[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v67 = v66;
  v67[1] = v68;
  v52(&v35[OBJC_IVAR___APPCContentRepresentation_id], v43, v40);
  *&v35[OBJC_IVAR___APPCContentRepresentation_adType] = 6;
  *&v35[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v35[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v35[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v69 = &v35[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v69 = a9;
  v69[1] = a10;
  *&v35[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v35[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v70 = type metadata accessor for ContentRepresentation(0);
  v101.receiver = v35;
  v101.super_class = v70;
  v71 = objc_msgSendSuper2(&v101, sel_init);
  v72 = *(v41 + 8);
  v72(a17, v40);
  v72(v43, v40);
  return v71;
}

void *sub_1C1B643CC(void *a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v3 = sub_1C1B945F8();
  v93 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1AC1F08(&qword_1EBF09860, &unk_1C1BA3AD8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v86 - v8;
  v10 = a1[3];
  v94 = a1;
  sub_1C1AAABE0(a1, v10);
  sub_1C1B661E0();
  sub_1C1B95A08();
  if (!v1)
  {
    v92 = v3;
    LOBYTE(v97) = 0;
    v11 = sub_1C1B95698();
    v13 = v95;
    v14 = (v95 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_adamId);
    *v14 = v11;
    v14[1] = v15;
    LOBYTE(v97) = 1;
    v16 = sub_1C1B95638();
    v17 = (v13 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata);
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v97) = 2;
    v19 = 0;
    v20 = sub_1C1B95698();
    v21 = (v13 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_clientRequestId);
    *v21 = v20;
    v21[1] = v22;
    LOBYTE(v97) = 3;
    v23 = sub_1C1B95638();
    v86 = 0;
    v24 = (v13 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId);
    *v24 = v23;
    v24[1] = v25;
    LOBYTE(v97) = 4;
    v26 = sub_1C1B95638();
    v27 = (v13 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId);
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v97) = 5;
    *(v13 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_parentAppCheckEnabled) = sub_1C1B956A8() & 1;
    LOBYTE(v96) = 6;
    sub_1C1AE4898();
    sub_1C1B95678();
    v91 = v98;
    if (v98 >> 60 == 15)
    {
      v34 = 0;
    }

    else
    {
      *&v89[4] = 0;
      v35 = v97;
      v36 = objc_opt_self();
      v90 = v35;
      v37 = sub_1C1B944C8();
      v97 = 0;
      v38 = [v36 JSONObjectWithData:v37 options:0 error:&v97];

      if (!v38)
      {
        v40 = v97;
        sub_1C1B94458();

        swift_willThrow();
        sub_1C1AE49EC(v90, v91);
        (*(v7 + 8))(v9, v6);
        v29 = 0;
        v30 = 0;
        v87 = 0;
        v88 = 0;
        *v89 = 0;
        LODWORD(v90) = 0;
        LODWORD(v91) = 0;
        goto LABEL_6;
      }

      v39 = v97;
      sub_1C1B952F8();
      swift_unknownObjectRelease();
      sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
      if (swift_dynamicCast())
      {
        v34 = sub_1C1B1AF58(v96);
        sub_1C1AE49EC(v90, v91);
      }

      else
      {
        sub_1C1AE49EC(v90, v91);
        v34 = 0;
      }

      v19 = *&v89[4];
    }

    *(v13 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_installAttribution) = v34;
    LOBYTE(v97) = 7;
    v41 = sub_1C1B956D8();
    if (v19)
    {
      (*(v7 + 8))(v9, v6);
      v30 = 0;
      v87 = 0;
      v88 = 0;
      *v89 = 0;
      LODWORD(v90) = 0;
      LODWORD(v91) = 0;
      v29 = 1;
      goto LABEL_6;
    }

    *(v13 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_rank) = v41;
    LOBYTE(v97) = 8;
    *(v13 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_timeToDisplay) = sub_1C1B956D8();
    LOBYTE(v97) = 9;
    sub_1C1B66C20(&qword_1EDE6C358, MEMORY[0x1E69695D0]);
    v42 = v6;
    v43 = v9;
    sub_1C1B956F8();
    (*(v93 + 32))(v95 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId, v5, v92);
    LOBYTE(v97) = 10;
    v44 = sub_1C1B95638();
    v45 = (v95 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront);
    *v45 = v44;
    v45[1] = v46;
    LOBYTE(v97) = 11;
    v47 = sub_1C1B95638();
    v48 = (v95 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale);
    *v48 = v47;
    v48[1] = v49;
    LOBYTE(v97) = 12;
    *(v95 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_odmlSuccess) = sub_1C1B956A8() & 1;
    LOBYTE(v97) = 13;
    v50 = sub_1C1B95638();
    v51 = (v95 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId);
    *v51 = v50;
    v51[1] = v52;
    LOBYTE(v97) = 14;
    v53 = sub_1C1B95698();
    v54 = (v95 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_deploymentId);
    *v54 = v53;
    v54[1] = v55;
    LOBYTE(v97) = 15;
    v56 = sub_1C1B95638();
    v57 = (v95 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId);
    *v57 = v56;
    v57[1] = v58;
    LOBYTE(v96) = 16;
    sub_1C1B95678();
    v59 = v98;
    if (v98 >> 60 != 15)
    {
      v60 = v97;
      v61 = objc_opt_self();
      v62 = sub_1C1B944C8();
      v97 = 0;
      v63 = [v61 JSONObjectWithData:v62 options:0 error:&v97];

      if (!v63)
      {
        v66 = v97;
        sub_1C1B94458();

        swift_willThrow();
        sub_1C1AE49EC(v60, v59);
        (*(v7 + 8))(v43, v42);
        LODWORD(v90) = 0;
        LODWORD(v91) = 0;
        v29 = 1;
        v30 = 1;
        v87 = 0x100000001;
        v88 = 0x100000001;
        *v89 = 1;
        goto LABEL_40;
      }

      v64 = v97;
      sub_1C1B952F8();
      swift_unknownObjectRelease();
      sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
      if (swift_dynamicCast())
      {
        v65 = sub_1C1B1AF58(v96);
        sub_1C1AE49EC(v60, v59);

LABEL_48:
        *(v95 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_appMetadata) = v65;
        LOBYTE(v96) = 20;
        sub_1C1B95678();
        v67 = v98;
        if (v98 >> 60 == 15)
        {
          goto LABEL_54;
        }

        v68 = v97;
        v69 = objc_opt_self();
        v70 = sub_1C1B944C8();
        v97 = 0;
        v71 = [v69 JSONObjectWithData:v70 options:0 error:&v97];

        if (v71)
        {
          v72 = v97;
          sub_1C1B952F8();
          swift_unknownObjectRelease();
          sub_1C1AC1F08(&qword_1EBF09868, &qword_1C1BA3AE8);
          if (swift_dynamicCast())
          {
            v73 = sub_1C1B6356C(v96);
            sub_1C1AE49EC(v68, v67);

LABEL_55:
            *(v95 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_creativeDetails) = v73;
            LOBYTE(v96) = 17;
            sub_1C1B95678();
            v75 = v98;
            if (v98 >> 60 == 15)
            {
              goto LABEL_61;
            }

            v76 = v97;
            v77 = objc_opt_self();
            v78 = sub_1C1B944C8();
            v97 = 0;
            v79 = [v77 JSONObjectWithData:v78 options:0 error:&v97];

            if (v79)
            {
              v80 = v97;
              sub_1C1B952F8();
              swift_unknownObjectRelease();
              sub_1C1AC1F08(&unk_1EBF08348, &unk_1C1B9F740);
              if (swift_dynamicCast())
              {
                v81 = sub_1C1B1AF58(v96);
                sub_1C1AE49EC(v76, v75);

LABEL_62:
                *(v95 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_positionInformation) = v81;
                LOBYTE(v97) = 18;
                v83 = sub_1C1B95668();
                v84 = v95 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber;
                *v84 = v83;
                v84[8] = v85 & 1;
                sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
                LOBYTE(v96) = 19;
                sub_1C1B66C64();
                sub_1C1B95678();
                *(v95 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_cppIds) = v97;
                sub_1C1B95628();
                v13 = ContentRepresentation.init(from:)(&v97);
                (*(v7 + 8))(v43, v42);
                sub_1C1AA86F8(v94);
                return v13;
              }

              sub_1C1AE49EC(v76, v75);
LABEL_61:
              v81 = 0;
              goto LABEL_62;
            }

            v82 = v97;
            sub_1C1B94458();

            swift_willThrow();
            sub_1C1AE49EC(v76, v75);
            (*(v7 + 8))(v43, v42);
            LODWORD(v91) = 0;
            v29 = 1;
            v30 = 1;
            v87 = 0x100000001;
            v88 = 0x100000001;
            *v89 = 1;
            *&v89[4] = 1;
            LODWORD(v90) = 1;
            goto LABEL_40;
          }

          sub_1C1AE49EC(v68, v67);
LABEL_54:
          v73 = 0;
          goto LABEL_55;
        }

        v74 = v97;
        sub_1C1B94458();

        swift_willThrow();
        sub_1C1AE49EC(v68, v67);
        (*(v7 + 8))(v43, v42);
        LODWORD(v90) = 0;
        LODWORD(v91) = 0;
        v29 = 1;
        v30 = 1;
        v87 = 0x100000001;
        v88 = 0x100000001;
        *v89 = 1;
        *&v89[4] = 1;
LABEL_40:
        v13 = v95;
LABEL_6:
        v31 = v86;
        sub_1C1AA86F8(v94);

        if (!v31)
        {
        }

        if (v29)
        {

          v32 = v92;
          v33 = v93;
          if (v30)
          {
LABEL_10:
            (*(v33 + 8))(v13 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId, v32);
            if ((v87 & 1) == 0)
            {
              goto LABEL_11;
            }

            goto LABEL_21;
          }
        }

        else
        {
          v32 = v92;
          v33 = v93;
          if (v30)
          {
            goto LABEL_10;
          }
        }

        if (!v87)
        {
LABEL_11:
          if (HIDWORD(v87))
          {
            goto LABEL_12;
          }

          goto LABEL_22;
        }

LABEL_21:

        if ((v87 & 0x100000000) != 0)
        {
LABEL_12:

          if ((v88 & 1) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_23;
        }

LABEL_22:
        if (!v88)
        {
LABEL_13:
          if (HIDWORD(v88))
          {
            goto LABEL_14;
          }

          goto LABEL_24;
        }

LABEL_23:

        if ((v88 & 0x100000000) != 0)
        {
LABEL_14:

          if ((v89[0] & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_25;
        }

LABEL_24:
        if (!*v89)
        {
LABEL_15:
          if (*&v89[4])
          {
            goto LABEL_16;
          }

          goto LABEL_26;
        }

LABEL_25:

        if (v89[4])
        {
LABEL_16:

          if ((v90 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_27;
        }

LABEL_26:
        if (!v90)
        {
LABEL_17:
          if (!v91)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }

LABEL_27:

        if ((v91 & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_18:

        goto LABEL_4;
      }

      sub_1C1AE49EC(v60, v59);
    }

    v65 = 0;
    goto LABEL_48;
  }

  v13 = v95;
  sub_1C1AA86F8(v94);
LABEL_4:
  type metadata accessor for SearchLandingPageRepresentation(0);
  swift_deallocPartialClassInstance();
  return v13;
}

uint64_t sub_1C1B65738(void *a1)
{
  v3 = v1;
  v42 = *MEMORY[0x1E69E9840];
  v5 = sub_1C1AC1F08(&qword_1EBF09840, &unk_1C1BA38C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - v7;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B661E0();
  sub_1C1B95A18();
  LOBYTE(v41[0]) = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    *v41 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_metadata);
    v40 = 1;
    sub_1C1AC1F08(&qword_1EBF07AB8, &qword_1C1B98D00);
    sub_1C1B66360(&qword_1EDE6BBC0, &qword_1EBF07AB8, &qword_1C1B98D00, MEMORY[0x1E69E7C70]);
    sub_1C1B95808();
    LOBYTE(v41[0]) = 2;
    sub_1C1B957A8();
    *v41 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayAdGroupId);
    v40 = 3;
    sub_1C1B95808();
    *v41 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_journeyRelayCampaignId);
    v40 = 4;
    sub_1C1B95808();
    LOBYTE(v41[0]) = 5;
    sub_1C1B957B8();
    if (*(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_installAttribution))
    {
      v39 = objc_opt_self();
      v10 = sub_1C1B94CA8();
      v41[0] = 0;
      v11 = [v39 dataWithJSONObject:v10 options:0 error:v41];

      v12 = v41[0];
      if (!v11)
      {
        v15 = v12;
        sub_1C1B94458();

LABEL_9:
        swift_willThrow();
        return (*(v6 + 8))(v8, v5);
      }

      v39 = sub_1C1B944D8();
      v14 = v13;

      v41[0] = v39;
      v41[1] = v14;
      v38 = v14;
      v40 = 6;
      sub_1C1AE4B54();
      sub_1C1B95808();
      sub_1C1AE4A00(v39, v38);
    }

    else
    {
      LOBYTE(v41[0]) = 6;
      sub_1C1B95828();
    }

    LOBYTE(v41[0]) = 7;
    sub_1C1B957E8();
    LOBYTE(v41[0]) = 8;
    sub_1C1B957E8();
    LOBYTE(v41[0]) = 9;
    sub_1C1B945F8();
    sub_1C1B66C20(&unk_1EDE6C360, MEMORY[0x1E69695B0]);
    sub_1C1B95808();
    *v41 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFront);
    v40 = 10;
    sub_1C1B95808();
    *v41 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_storeFrontLocale);
    v40 = 11;
    sub_1C1B95808();
    LOBYTE(v41[0]) = 12;
    sub_1C1B957B8();
    *v41 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_treatmentId);
    v40 = 13;
    sub_1C1B95808();
    LOBYTE(v41[0]) = 14;
    sub_1C1B957A8();
    *v41 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_experimentId);
    v40 = 15;
    sub_1C1B95808();
    if (*(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_appMetadata))
    {
      v16 = objc_opt_self();
      v17 = sub_1C1B94CA8();
      v41[0] = 0;
      v18 = [v16 dataWithJSONObject:v17 options:0 error:v41];

      v19 = v41[0];
      if (!v18)
      {
        goto LABEL_21;
      }

      v20 = sub_1C1B944D8();
      v22 = v21;

      v41[0] = v20;
      v41[1] = v22;
      v40 = 16;
      sub_1C1AE4B54();
      sub_1C1B95808();
      sub_1C1AE4A00(v20, v22);
    }

    else
    {
      LOBYTE(v41[0]) = 16;
      sub_1C1B95828();
    }

    if (!*(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_creativeDetails))
    {
      LOBYTE(v41[0]) = 20;
      sub_1C1B95828();
      goto LABEL_18;
    }

    v23 = objc_opt_self();
    sub_1C1AC1F08(&qword_1EBF07AD0, &qword_1C1B98EF0);
    v24 = sub_1C1B94EB8();
    v41[0] = 0;
    v25 = [v23 dataWithJSONObject:v24 options:0 error:v41];

    v19 = v41[0];
    if (v25)
    {
      v26 = sub_1C1B944D8();
      v28 = v27;

      v41[0] = v26;
      v41[1] = v28;
      v40 = 20;
      sub_1C1AE4B54();
      sub_1C1B95808();
      sub_1C1AE4A00(v26, v28);
LABEL_18:
      if (!*(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_positionInformation))
      {
        LOBYTE(v41[0]) = 17;
        sub_1C1B95828();
        goto LABEL_23;
      }

      v29 = objc_opt_self();
      v30 = sub_1C1B94CA8();
      v41[0] = 0;
      v31 = [v29 dataWithJSONObject:v30 options:0 error:v41];

      v19 = v41[0];
      if (v31)
      {
        v32 = sub_1C1B944D8();
        v34 = v33;

        v41[0] = v32;
        v41[1] = v34;
        v40 = 17;
        sub_1C1AE4B54();
        sub_1C1B95808();
        sub_1C1AE4A00(v32, v34);
LABEL_23:
        v36 = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber + 8);
        v41[0] = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_slotNumber);
        LOBYTE(v41[1]) = v36;
        v40 = 18;
        sub_1C1AC1F08(&qword_1EBF09848, &qword_1C1BA38D0);
        sub_1C1B66234();
        sub_1C1B95808();
        v41[0] = *(v3 + OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_cppIds);
        v40 = 19;
        sub_1C1AC1F08(&qword_1EBF09850, &qword_1C1BA38D8);
        sub_1C1B662B0();
        sub_1C1B95808();
        sub_1C1B95738();
        sub_1C1B4FA4C(v41);
        sub_1C1AA86F8(v41);
        return (*(v6 + 8))(v8, v5);
      }
    }

LABEL_21:
    v35 = v19;
    sub_1C1B94458();

    goto LABEL_9;
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1C1B661E0()
{
  result = qword_1EDE6A818;
  if (!qword_1EDE6A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A818);
  }

  return result;
}

unint64_t sub_1C1B66234()
{
  result = qword_1EDE6A658;
  if (!qword_1EDE6A658)
  {
    sub_1C1AC3404(&qword_1EBF09848, &qword_1C1BA38D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A658);
  }

  return result;
}

unint64_t sub_1C1B662B0()
{
  result = qword_1EDE6A680;
  if (!qword_1EDE6A680)
  {
    sub_1C1AC3404(&qword_1EBF09850, &qword_1C1BA38D8);
    sub_1C1B66360(&unk_1EDE6BBA0, &unk_1EBF07AA0, &qword_1C1B98CF0, MEMORY[0x1E69E6300]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A680);
  }

  return result;
}

uint64_t sub_1C1B66360(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1B66420()
{

  v1 = OBJC_IVAR____TtC15PromotedContent31SearchLandingPageRepresentation_iAdId;
  v2 = sub_1C1B945F8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id SearchLandingPageRepresentation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchLandingPageRepresentation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SearchLandingPageRepresentation(uint64_t a1)
{
  result = qword_1EDE6C520;
  if (!qword_1EDE6C520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1B667B0(uint64_t a1)
{
  result = sub_1C1B945F8();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of SearchLandingPageRepresentation.__allocating_init(adamId:metadata:clientRequestId:journeyRelayAdGroupId:journeyRelayCampaignId:parentAppCheckEnabled:installAttribution:rank:timeToDisplay:iAdId:storeFront:storeFrontLocale:size:odmlSuccess:treatmentId:deploymentId:experimentId:positionInformation:slotNumber:cppIds:appMetadata:creativeDetails:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = *(v28 + 360);

  return v30(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t getEnumTagSinglePayload for SearchLandingPageRepresentation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchLandingPageRepresentation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C1B66AC8()
{
  result = qword_1EBF09858;
  if (!qword_1EBF09858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09858);
  }

  return result;
}

unint64_t sub_1C1B66B20()
{
  result = qword_1EDE6A808;
  if (!qword_1EDE6A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A808);
  }

  return result;
}

unint64_t sub_1C1B66B78()
{
  result = qword_1EDE6A810;
  if (!qword_1EDE6A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A810);
  }

  return result;
}

unint64_t sub_1C1B66BCC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C1B958A8();

  if (v2 >= 0x15)
  {
    return 21;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C1B66C20(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C1B945F8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B66C64()
{
  result = qword_1EDE6BB98;
  if (!qword_1EDE6BB98)
  {
    sub_1C1AC3404(&unk_1EBF07AA0, &qword_1C1B98CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BB98);
  }

  return result;
}

uint64_t sub_1C1B66D10@<X0>(char *a2@<X8>)
{
  v3 = sub_1C1B955F8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1C1B66D70@<X0>(char *a3@<X8>)
{
  v4 = sub_1C1B955F8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1C1B66DD4(uint64_t a1)
{
  v2 = sub_1C1B67438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B66E10(uint64_t a1)
{
  v2 = sub_1C1B67438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B66E4C()
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B66EC0(uint64_t a1)
{
  sub_1C1B95958();
  sub_1C1B94DE8();
  return sub_1C1B959A8();
}

uint64_t sub_1C1B66F14@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1C1B955F8();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1C1B67038(void *a1, uint64_t a2)
{
  v5 = sub_1C1AC1F08(&qword_1EBF09888, &qword_1C1BA3B98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B67438();
  sub_1C1B95A18();
  v12 = 0;
  sub_1C1B674E0();
  sub_1C1B95808();
  if (!v2)
  {
    sub_1C1B67534(&unk_1EDE6C140, &unk_1C1B98CBC);
    sub_1C1B67534(&qword_1EDE6C150, &unk_1C1B98C94);
    swift_getObjectType();
    v11 = a2;
    v10[15] = 1;
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_1C1B67200@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1C1B67248(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1C1B67248(void *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF09880, &qword_1C1BA3B90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9[-v5];
  v7 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B67438();
  sub_1C1B95A08();
  if (!v1)
  {
    v11 = 0;
    sub_1C1B6748C();
    sub_1C1B956F8();
    type metadata accessor for PrimitiveCreator();
    v9[15] = 1;
    sub_1C1B67534(&unk_1EDE6C140, &unk_1C1B98CBC);
    sub_1C1B956F8();
    (*(v4 + 8))(v6, v3);
    v7 = v10;
  }

  sub_1C1AA86F8(a1);
  return v7;
}

unint64_t sub_1C1B67438()
{
  result = qword_1EDE6BE48;
  if (!qword_1EDE6BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE48);
  }

  return result;
}

unint64_t sub_1C1B6748C()
{
  result = qword_1EDE6BE20;
  if (!qword_1EDE6BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE20);
  }

  return result;
}

unint64_t sub_1C1B674E0()
{
  result = qword_1EDE6BE30;
  if (!qword_1EDE6BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE30);
  }

  return result;
}

uint64_t sub_1C1B67534(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PrimitiveCreator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B6759C()
{
  result = qword_1EBF09890;
  if (!qword_1EBF09890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09890);
  }

  return result;
}

unint64_t sub_1C1B675F4()
{
  result = qword_1EBF09898;
  if (!qword_1EBF09898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09898);
  }

  return result;
}

unint64_t sub_1C1B6764C()
{
  result = qword_1EDE6BE38;
  if (!qword_1EDE6BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE38);
  }

  return result;
}

unint64_t sub_1C1B676A4()
{
  result = qword_1EDE6BE40;
  if (!qword_1EDE6BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE40);
  }

  return result;
}

unint64_t sub_1C1B676F8()
{
  result = qword_1EDE6BE28;
  if (!qword_1EDE6BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6BE28);
  }

  return result;
}

void sub_1C1B6774C(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a2;
  v23 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {

    sub_1C1B95368();
    sub_1C1AA576C(0, &qword_1EDE6CA00, 0x1E698A050);
    sub_1C1B7B340();
    sub_1C1B95088();
    a1 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v16 = v4;
  while (a1 < 0)
  {
    if (!sub_1C1B953D8() || (sub_1C1AA576C(0, &qword_1EDE6CA00, 0x1E698A050), swift_dynamicCast(), (v14 = v17) == 0))
    {
LABEL_32:
      sub_1C1B478F8(a1);

      return;
    }

LABEL_20:
    v15 = [v14 placementType];
    if (v15 <= 2)
    {
      if (v15 >= 3)
      {
        goto LABEL_26;
      }

      goto LABEL_9;
    }

    if (v15 <= 4)
    {
      if (v15 == 3)
      {
        v10 = sub_1C1AC37D8(v14);
      }

      else
      {
        v10 = sub_1C1AC3EA4(v14);
      }

      goto LABEL_10;
    }

    if (v15 == 5)
    {
      v10 = sub_1C1AC439C(v14);
      goto LABEL_10;
    }

    if (v15 == 7)
    {
LABEL_9:
      sub_1C1AC4BFC(v14);
LABEL_10:
      v11 = v10;

      if (v11)
      {
        MEMORY[0x1C6906EA0]();
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C1B94F08();
        }

        sub_1C1B94F48();
      }
    }

    else
    {
LABEL_26:
    }
  }

  v12 = v5;
  v13 = v6;
  if (v6)
  {
LABEL_16:
    v6 = (v13 - 1) & v13;
    v14 = *(*(a1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_32;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_32;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1C1B67A68(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1C1B95358();
    v5 = v4;
    v6 = sub_1C1B953F8();
    v8 = v7;
    v9 = MEMORY[0x1C6907370](v3, v5, v6, v7);
    sub_1C1B616D0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1C1B616D0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1C1B95328();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1C1B76134(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_1C1B616D0(v3, v5, v2 != 0);
  return v12;
}

unint64_t sub_1C1B67B84()
{
  sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
  inited = swift_initStackObject();
  *(inited + 32) = 0x65746172746962;
  *(inited + 16) = xmmword_1C1B9C9C0;
  *(inited + 40) = 0xE700000000000000;
  v2 = MEMORY[0x1E69E63B0];
  *(inited + 48) = *(v0 + OBJC_IVAR___APPCVideoRepresentation_bitrate);
  *(inited + 72) = v2;
  strcpy((inited + 80), "signalStrength");
  *(inited + 95) = -18;
  v3 = MEMORY[0x1E69E6810];
  *(inited + 96) = *(v0 + OBJC_IVAR___APPCVideoRepresentation_signalStrength);
  *(inited + 120) = v3;
  strcpy((inited + 128), "connectionType");
  *(inited + 143) = -18;
  v4 = MEMORY[0x1E69E6530];
  *(inited + 144) = *(v0 + OBJC_IVAR___APPCVideoRepresentation_connectionType);
  *(inited + 168) = v4;
  *(inited + 176) = 0x4C52557465737361;
  *(inited + 184) = 0xE800000000000000;
  *(inited + 216) = sub_1C1B944A8();
  v5 = sub_1C1AB0D60((inited + 192));
  sub_1C1B0C774(v5);
  *(inited + 224) = 0x6E6F697461727564;
  *(inited + 232) = 0xE800000000000000;
  v6 = *(v0 + OBJC_IVAR___APPCVideoRepresentation_duration);
  *(inited + 264) = v2;
  *(inited + 240) = v6;
  v7 = sub_1C1AA7D00(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&qword_1EBF08340, &qword_1C1B9AF70);
  swift_arrayDestroy();
  return v7;
}

char *PromotedContent.__allocating_init(placementType:size:context:unfilledReason:)(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  swift_getObjectType();

  return sub_1C1B76358(0, 0, a1, 0, a2, a3, a4, a5);
}

unint64_t sub_1C1B67DCC(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x617461446174656DLL;
      break;
    case 4:
      result = 0x75736F6C63736964;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      v3 = 10;
      goto LABEL_28;
    case 7:
      result = 0x6D614E646E617262;
      break;
    case 8:
      result = 0x6E676961706D6163;
      break;
    case 9:
      result = 0x6E65736572706572;
      break;
    case 10:
    case 11:
    case 28:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0x726F727265;
      break;
    case 13:
      result = 0x6C6F686563616C70;
      break;
    case 14:
      result = 0x7461447472617473;
      break;
    case 15:
      result = 0x6974617269707865;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0x6465686361747461;
      break;
    case 18:
      result = 0x6465646E6576;
      break;
    case 19:
      result = 0x6564726163736964;
      break;
    case 20:
      result = 0x64656D75736E6F63;
      break;
    case 21:
      result = 0xD000000000000013;
      break;
    case 22:
    case 32:
      result = 0xD000000000000015;
      break;
    case 23:
      result = 0xD000000000000014;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    case 25:
    case 26:
      result = 0xD000000000000010;
      break;
    case 27:
      result = 0xD000000000000018;
      break;
    case 29:
      result = 0x6E656D6563616C70;
      break;
    case 30:
      v3 = 11;
LABEL_28:
      result = v3 | 0xD000000000000014;
      break;
    case 31:
      result = 0x5264726163736964;
      break;
    case 33:
      result = 0xD000000000000014;
      break;
    case 34:
      result = 0xD00000000000001ALL;
      break;
    case 35:
      result = 0x74736F6E67616964;
      break;
    case 36:
      result = 0x6973736572706D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C1B681DC(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1C1B67DCC(*a1);
  v5 = v4;
  if (v3 == sub_1C1B67DCC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();
  }

  return v8 & 1;
}

uint64_t sub_1C1B68264()
{
  v1 = *v0;
  sub_1C1B95958();
  sub_1C1B67DCC(v1);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B682C8(uint64_t a1)
{
  sub_1C1B67DCC(*v1);
  sub_1C1B94DE8();
}

uint64_t sub_1C1B6831C(uint64_t a1)
{
  v2 = *v1;
  sub_1C1B95958();
  sub_1C1B67DCC(v2);
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

unint64_t sub_1C1B6837C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C1B7B17C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C1B683AC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C1B67DCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C1B683E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B7B17C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B68414(uint64_t a1)
{
  v2 = sub_1C1B795B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B68450(uint64_t a1)
{
  v2 = sub_1C1B795B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B6850C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1C1B94D88();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1C1B68ACC()
{
  v1 = OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_1C1B68B94(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1C1B94D78();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1C1B68C34(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1C1B94D88();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1C1B68DE0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a5;
  swift_beginAccess();
  v12 = *(v10 + v11);
  *(v10 + v11) = v9;
  a6(v9);
  return a7(v12);
}

void *sub_1C1B68EA8()
{
  v1 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *sub_1C1B68FD8()
{
  v1 = OBJC_IVAR___APPCPromotedContent_error;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1C1B69030(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_1C1B6908C(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_error;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1C1B6917C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1C1AA7E30(v4 + v8, a4, a2, a3);
}

uint64_t sub_1C1B691F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = sub_1C1AC1F08(a5, a6);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - v13;
  sub_1C1AA7E30(a1, &v18 - v13, a5, a6);
  v15 = *a2;
  v16 = *a7;
  swift_beginAccess();
  sub_1C1B19384(v14, v15 + v16, a5, a6);
  return swift_endAccess();
}

uint64_t sub_1C1B693EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  v4 = sub_1C1B94588();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C1B69588@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  v5 = sub_1C1B94588();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1B69614(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1B94588();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_1C1B6972C()
{
  v1 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  return *(v0 + v1);
}

void *sub_1C1B697F4(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  *(v1 + v3) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result setUnfilledReason_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1C1B69874(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  *(v3 + v4) = v2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result setUnfilledReason_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t (*sub_1C1B698F8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C1B69980;
}

void sub_1C1B69980(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong setUnfilledReason_];
      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t sub_1C1B69A70()
{
  v1 = OBJC_IVAR___APPCPromotedContent_attachedToView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B69B08(char a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_attachedToView;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1B69C00()
{
  v1 = OBJC_IVAR___APPCPromotedContent_vended;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1C1B69C44(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_1C1B69CCC;
}

void sub_1C1B69CCC(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for Context(0);
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        v6 = OBJC_IVAR___APPCContext_waitingLock;
        [*(v4 + OBJC_IVAR___APPCContext_waitingLock) lock];
        v7 = OBJC_IVAR___APPCContext_waiting;
        swift_beginAccess();
        v8 = *(v5 + v7);
        v9 = *(v5 + v6);

        [v9 unlock];
        if (*(v8 + 16))
        {
          sub_1C1AAB208(v8, 1, 0);
        }
      }

      swift_unknownObjectRelease();
    }
  }

  free(v3);
}

uint64_t sub_1C1B69DF0()
{
  v1 = OBJC_IVAR___APPCPromotedContent_discarded;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B69E88(char a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_discarded;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1B69F80()
{
  v1 = OBJC_IVAR___APPCPromotedContent_consumed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B6A018(char a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_consumed;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1C1B6A110()
{
  v1 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B6A1A8(double a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_1C1B6A264(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = *a3;
  swift_beginAccess();
  sub_1C1AA7E30(a1 + v8, v7, &qword_1EBF07F50, &qword_1C1B9A590);
  v9 = sub_1C1B94588();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1C1B94538();
    (*(v10 + 8))(v7, v9);
    v12 = v13;
  }

  return v12;
}

void sub_1C1B6A3E0(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  if (a3)
  {
    sub_1C1B94558();
    v10 = sub_1C1B94588();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_1C1B94588();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = *a4;
  swift_beginAccess();
  v13 = a1;
  sub_1C1B19384(v9, &a1[v12], &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
}

uint64_t sub_1C1B6A530(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_videoRequestStartDate;
  swift_beginAccess();
  sub_1C1B19384(a1, v1 + v3, &qword_1EBF07F50, &qword_1C1B9A590);
  return swift_endAccess();
}

uint64_t sub_1C1B6A648()
{
  v1 = OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B6A6E0(char a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1C1B6A7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C1B6A84C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(uint64_t))
{
  v9 = *a1;
  v10 = *a2;
  v11 = *a5;
  swift_beginAccess();
  v12 = *(v10 + v11);
  *(v10 + v11) = v9;
  a6(v9);
  return a7(v12);
}

uint64_t sub_1C1B6AB4C()
{
  v1 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = (v0 + OBJC_IVAR___APPCPromotedContent_identifier);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  LOBYTE(v5) = sub_1C1AB1C0C(v5, v4, v2);

  return v5 & 1;
}

uint64_t sub_1C1B6AC34()
{
  swift_beginAccess();

  v1 = sub_1C1ABBCD4(v0);

  return v1 & 1;
}

uint64_t sub_1C1B6ADBC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  v6 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  swift_beginAccess();
  sub_1C1AA7E30(v1 + v6, v5, &unk_1EBF098E0, &qword_1C1BA22A0);
  v7 = sub_1C1B945F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (v9(v5, 1, v7) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = [Strong identifier];
      swift_unknownObjectRelease();
      sub_1C1B945D8();

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    (*(v8 + 56))(a1, v12, 1, v7);
    result = v9(v5, 1, v7);
    if (result != 1)
    {
      return sub_1C1AA7C8C(v5, &unk_1EBF098E0, &qword_1C1BA22A0);
    }
  }

  else
  {
    (*(v8 + 32))(a1, v5, v7);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }

  return result;
}

uint64_t sub_1C1B6B010()
{
  v1 = sub_1C1B94588();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR___APPCPromotedContent_consumed;
  swift_beginAccess();
  if (*(v0 + v8) & 1) != 0 || (v9 = OBJC_IVAR___APPCPromotedContent_attachedToView, swift_beginAccess(), (*(v0 + v9)))
  {
    v10 = 0;
  }

  else
  {
    v11 = OBJC_IVAR___APPCPromotedContent_expirationDate;
    swift_beginAccess();
    (*(v2 + 16))(v7, v0 + v11, v1);
    sub_1C1B94578();
    v10 = sub_1C1B94548();
    v12 = *(v2 + 8);
    v12(v5, v1);
    v12(v7, v1);
  }

  return v10 & 1;
}

unint64_t sub_1C1B6B224()
{
  v1 = v0;
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-v7];
  v9 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  swift_beginAccess();
  sub_1C1AA7E30(v1 + v9, v8, &qword_1EBF07AC8, &qword_1C1B9CED0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1C1AA7C8C(v8, &qword_1EBF07AC8, &qword_1C1B9CED0);
    return sub_1C1AA7D00(MEMORY[0x1E69E7CC0]);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_1C1AA7C8C(v8, &qword_1EBF07AC8, &qword_1C1B9CED0);
  v11 = sub_1C1B94468();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v14 = (v1 + OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload);
  swift_beginAccess();
  v15 = v14[1];
  if (!v15)
  {

    return sub_1C1AA7D00(MEMORY[0x1E69E7CC0]);
  }

  v16 = *v14;
  sub_1C1AC1F08(&qword_1EBF08310, &qword_1C1B9AF40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1B9D2F0;
  *(inited + 32) = 0xD000000000000017;
  v18 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0x80000001C1BAC040;
  *(inited + 48) = v11;
  *(inited + 56) = v13;
  *(inited + 72) = v18;
  *(inited + 80) = 0xD00000000000001BLL;
  *(inited + 88) = 0x80000001C1BAC060;
  *(inited + 96) = v16;
  *(inited + 104) = v15;
  *(inited + 120) = v18;
  *(inited + 128) = 0xD000000000000019;
  *(inited + 136) = 0x80000001C1BAC080;
  v19 = MEMORY[0x1E69E6370];
  *(inited + 144) = *(v1 + OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd);
  *(inited + 168) = v19;
  *(inited + 176) = 0xD000000000000013;
  *(inited + 184) = 0x80000001C1BAC0A0;
  v20 = *(v1 + OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd);
  *(inited + 216) = v19;
  *(inited + 192) = v20;

  v21 = sub_1C1AA7D00(inited);
  swift_setDeallocating();
  sub_1C1AC1F08(&qword_1EBF08340, &qword_1C1B9AF70);
  swift_arrayDestroy();
  return v21;
}

id sub_1C1B6B5B0(uint64_t *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for Context(0);
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = OBJC_IVAR___APPCContext_newsContext;
      v5 = v3;
      swift_beginAccess();
      v6 = *(v5 + v4);
      v7 = v6;
      swift_unknownObjectRelease();
      if (v6)
      {
        v8 = *a1;
        swift_beginAccess();
        v9 = *&v7[v8];
        v10 = v9;

        if (v9)
        {
          v11 = [v10 integerValue];

          return v11;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1C1B6B6B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR___APPCPromotedContent_discardReason;
  swift_beginAccess();
  *v5 = v2;
  *(v5 + 8) = v3;
  v6 = OBJC_IVAR___APPCPromotedContent_discarded;
  result = swift_beginAccess();
  *(v4 + v6) = v3 ^ 1;
  return result;
}

uint64_t sub_1C1B6B73C()
{
  v1 = v0 + OBJC_IVAR___APPCPromotedContent_discardReason;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1C1B6B788(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___APPCPromotedContent_discardReason;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  v6 = OBJC_IVAR___APPCPromotedContent_discarded;
  result = swift_beginAccess();
  *(v2 + v6) = (a2 & 1) == 0;
  return result;
}

uint64_t (*sub_1C1B6B818(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___APPCPromotedContent_discardReason;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C1B6B8A0;
}

void sub_1C1B6B8A0(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + v3[4] + 8);
    v6 = OBJC_IVAR___APPCPromotedContent_discarded;
    swift_beginAccess();
    *(v4 + v6) = (v5 & 1) == 0;
  }

  free(v3);
}

uint64_t sub_1C1B6B9B8(uint64_t a1, uint64_t a2)
{
  sub_1C1B95468();
  v3 = [v2 description];
  v4 = sub_1C1B94D88();

  MEMORY[0x1C6906DF0](0x6669746E65646920, 0xED0000203A726569);
  v5 = &v2[OBJC_IVAR___APPCPromotedContent_identifier];
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 1);

  MEMORY[0x1C6906DF0](v7, v6);

  return v4;
}

double sub_1C1B6BAB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCPromotedContent_appImpressionTask;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

uint64_t sub_1C1B6BB80(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t sub_1C1B6BC3C(uint64_t a1, uint64_t *a2)
{
  sub_1C1AA7E30(a1, v6, &qword_1EBF098F0, &qword_1C1B9D838);
  v3 = *a2;
  v4 = OBJC_IVAR___APPCPromotedContent_appImpression;
  swift_beginAccess();
  sub_1C1B19384(v6, v3 + v4, &qword_1EBF098F0, &qword_1C1B9D838);
  return swift_endAccess();
}

uint64_t sub_1C1B6BCC8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCPromotedContent_appImpression;
  swift_beginAccess();
  return sub_1C1AA7E30(v1 + v3, a1, &qword_1EBF098F0, &qword_1C1B9D838);
}

uint64_t sub_1C1B6BD30(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_appImpression;
  swift_beginAccess();
  sub_1C1B19384(a1, v1 + v3, &qword_1EBF098F0, &qword_1C1B9D838);
  return swift_endAccess();
}

uint64_t sub_1C1B6BE00(char a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_1C1B6BEB0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v2 = (Strong + OBJC_IVAR___APPCPromotedContent_identifier);
  v3 = Strong;
  swift_beginAccess();
  v5 = *v2;
  v4 = v2[1];

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
LABEL_8:

    return;
  }

  v7 = v6;
  v8 = OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete;
  swift_beginAccess();
  v9 = *(*&v7[v8] + 16);
  if (!v9)
  {
LABEL_7:

    goto LABEL_8;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *&v7[v8];
    if (v11 >= *(v12 + 16))
    {
      break;
    }

    ++v11;
    v13 = *(v12 + v10 + 32);
    v14[0] = v5;
    v14[1] = v4;

    v13(v14);

    v10 += 16;
    if (v9 == v11)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1C1B6BFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1B6C01C, 0, 0);
}

uint64_t sub_1C1B6C01C()
{
  v0[5] = sub_1C1B94718();
  v0[6] = &protocol witness table for AppImpression;
  v1 = sub_1C1AB0D60(v0 + 2);

  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1C1B6C0F0;
  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x1EEDB2930](v1, v3, v4);
}

uint64_t sub_1C1B6C0F0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1C1B6C2D0;
  }

  else
  {
    v2 = sub_1C1B6C204;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C1B6C204()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = OBJC_IVAR___APPCPromotedContent_appImpression;
  swift_beginAccess();
  sub_1C1B19384((v0 + 2), v2 + v3, &qword_1EBF098F0, &qword_1C1B9D838);
  swift_endAccess();
  sub_1C1AA7E30(v2 + v3, v1, &qword_1EBF098F0, &qword_1C1B9D838);
  v4 = v0[1];

  return v4();
}

uint64_t sub_1C1B6C2D0()
{
  sub_1C1B7B298(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

char *PromotedContent.__allocating_init(placementType:container:format:unfilledReason:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v180 = a4;
  v5 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v168 = v155 - v6;
  v7 = sub_1C1B94588();
  v189 = *(v7 - 8);
  v190 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v156 = v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v185 = v155 - v10;
  v11 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v170 = v155 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v188 = v155 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v184 = v155 - v16;
  v17 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v155 - v18;
  v178 = v155 - v18;
  v20 = sub_1C1B945F8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v155 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v155 - v25;
  sub_1C1B945E8();
  v27 = type metadata accessor for ContentRepresentation(0);
  v28 = objc_allocWithZone(v27);
  v29 = sub_1C1B945A8();
  v30 = &v28[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v30 = v29;
  v30[1] = v31;
  v182 = v21;
  (*(v21 + 16))(&v28[OBJC_IVAR___APPCContentRepresentation_id], v26, v20);
  *&v28[OBJC_IVAR___APPCContentRepresentation_adType] = a1;
  *&v28[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v28[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v28[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v32 = &v28[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v32 = 0;
  *(v32 + 1) = 0;
  *&v28[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v28[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v195.receiver = v28;
  v195.super_class = v27;
  v33 = objc_msgSendSuper2(&v195, sel_init);
  v187 = v33;
  v34 = *(v21 + 8);
  v173 = v20;
  v34(v26, v20);
  v179 = v34;
  sub_1C1B945E8();
  v183 = sub_1C1B945A8();
  v176 = v35;
  v34(v24, v20);
  sub_1C1B945E8();
  v36 = objc_allocWithZone(type metadata accessor for Context(0));
  v177 = sub_1C1B2A6F0(v26, 0, 0, 0, MEMORY[0x1E69E7CC0], 0.0, 0.0);
  v37 = sub_1C1B944A8();
  v38 = *(*(v37 - 8) + 56);
  v38(v19, 1, 1, v37);
  v39 = v190;
  v40 = *(v189 + 56);
  v40(v184, 1, 1, v190);
  sub_1C1B94518();
  sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  v41 = swift_allocObject();
  v166 = v41;
  *(v41 + 16) = xmmword_1C1B9FE60;
  *(v41 + 32) = v33;
  v40(v188, 1, 1, v39);
  v172 = type metadata accessor for PromotedContent(0);
  v42 = objc_allocWithZone(v172);
  v43 = &v42[OBJC_IVAR___APPCPromotedContent_impressionId];
  *v43 = 0;
  v43[1] = 0;
  v167 = v43;
  v158 = OBJC_IVAR___APPCPromotedContent_context;
  swift_unknownObjectWeakInit();
  v159 = OBJC_IVAR___APPCPromotedContent_metaData;
  *&v42[OBJC_IVAR___APPCPromotedContent_metaData] = 0;
  v160 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v38(&v42[OBJC_IVAR___APPCPromotedContent_disclosureURL], 1, 1, v37);
  v44 = &v42[OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload];
  *v44 = 0;
  v44[1] = 0;
  v45 = &v42[OBJC_IVAR___APPCPromotedContent_brandName];
  v161 = &v42[OBJC_IVAR___APPCPromotedContent_brandName];
  *v45 = 0;
  v45[1] = 0;
  v46 = &v42[OBJC_IVAR___APPCPromotedContent_campaignText];
  v162 = &v42[OBJC_IVAR___APPCPromotedContent_campaignText];
  *v46 = 0;
  v46[1] = 0;
  v164 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  *&v42[OBJC_IVAR___APPCPromotedContent_installAttribution] = 0;
  *&v42[OBJC_IVAR___APPCPromotedContent_bestRepresentation] = 0;
  v165 = OBJC_IVAR___APPCPromotedContent_error;
  *&v42[OBJC_IVAR___APPCPromotedContent_error] = 0;
  v163 = OBJC_IVAR___APPCPromotedContent_startDate;
  v40(&v42[OBJC_IVAR___APPCPromotedContent_startDate], 1, 1, v39);
  *&v42[OBJC_IVAR___APPCPromotedContent_mediaMetricHelper] = 0;
  v42[OBJC_IVAR___APPCPromotedContent_attachedToView] = 0;
  v42[OBJC_IVAR___APPCPromotedContent_vended] = 0;
  v42[OBJC_IVAR___APPCPromotedContent_discarded] = 0;
  v42[OBJC_IVAR___APPCPromotedContent_consumed] = 0;
  v175 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *&v42[OBJC_IVAR___APPCPromotedContent_impressionThreshold] = 0x3FF0000000000000;
  v40(&v42[OBJC_IVAR___APPCPromotedContent_videoRequestStartDate], 1, 1, v39);
  v42[OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy] = 0;
  v47 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v155[1] = type metadata accessor for MetricEventsTracker(0);
  swift_allocObject();
  v48 = sub_1C1AB0510();
  v169 = v47;
  *&v42[v47] = v48;
  *&v42[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v49 = &v42[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v49 = 0;
  v49[1] = 0;
  v50 = &v42[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
  *v50 = 0;
  v50[8] = 1;
  v51 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v52 = *(v182 + 56);
  v182 += 56;
  v157 = v52;
  v53 = v173;
  v52(&v42[OBJC_IVAR___APPCPromotedContent__contextIdentifier], 1, 1, v173);
  v54 = &v42[OBJC_IVAR___APPCPromotedContent_discardReason];
  *v54 = 0;
  v54[8] = 1;
  *&v42[OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete] = MEMORY[0x1E69E7CC0];
  *&v42[OBJC_IVAR___APPCPromotedContent_appImpressionTask] = 0;
  v55 = &v42[OBJC_IVAR___APPCPromotedContent_appImpression];
  *v55 = 0u;
  *(v55 + 1) = 0u;
  *(v55 + 4) = 0;
  v42[OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView] = 0;
  strcpy(v191, "placeholder: ");
  HIWORD(v191[1]) = -4864;
  v171 = v187;
  sub_1C1B945E8();
  v56 = sub_1C1B945A8();
  v58 = v57;
  v181 = v26;
  v174 = v21 + 8;
  v179(v26, v53);
  MEMORY[0x1C6906DF0](v56, v58);

  v59 = v191[0];
  v60 = v191[1];
  v42[OBJC_IVAR___APPCPromotedContent_placeholder] = 1;
  v61 = &v42[OBJC_IVAR___APPCPromotedContent_identifier];
  v187 = v59;
  *v61 = v59;
  v61[1] = v60;
  swift_beginAccess();
  v62 = v177;
  swift_unknownObjectWeakAssign();
  v186 = v60;

  v63 = [v62 identifier];
  v64 = v168;
  sub_1C1B945D8();

  v65 = v53;
  v157(v64, 0, 1, v53);
  swift_beginAccess();
  sub_1C1B19384(v64, &v42[v51], &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v66 = v159;
  swift_beginAccess();
  *&v42[v66] = 0;

  v67 = v160;
  swift_beginAccess();
  sub_1C1B7953C(v178, &v42[v67], &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  *v44 = 0;
  v44[1] = 0;

  *&v42[OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation] = 0;
  v68 = v161;
  swift_beginAccess();
  *v68 = 0;
  v68[1] = 0;
  v69 = v62;

  v70 = v162;
  swift_beginAccess();
  *v70 = 0;
  v70[1] = 0;

  v71 = v163;
  swift_beginAccess();
  sub_1C1B7953C(v184, &v42[v71], &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  (*(v189 + 16))(&v42[OBJC_IVAR___APPCPromotedContent_expirationDate], v185, v190);
  *&v42[OBJC_IVAR___APPCPromotedContent_serverUnfilledReason] = v180;
  *&v42[OBJC_IVAR___APPCPromotedContent_representations] = v166;
  v72 = v164;
  swift_beginAccess();
  v73 = *&v42[v72];
  *&v42[v72] = 0;

  v74 = v165;
  swift_beginAccess();
  v75 = *&v42[v74];
  *&v42[v74] = 0;

  v76 = &v42[OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp];
  *v76 = 0;
  v76[8] = 1;
  v77 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v78 = *&v62[v77];
  if (v78 && (v79 = (v78 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement), swift_beginAccess(), (v80 = v79[1]) != 0))
  {
    v81 = sub_1C1AB08D0(*v79, v80);
  }

  else
  {
    v82 = [v62 current];
    if (v82)
    {
      v81 = [v82 placement];
      swift_unknownObjectRelease();
    }

    else
    {
      v81 = 0;
    }
  }

  v83 = v181;
  *&v42[OBJC_IVAR___APPCPromotedContent_placement] = v81;
  v84 = v175;
  swift_beginAccess();
  *&v42[v84] = 0x3FF0000000000000;
  v85 = v167;
  swift_beginAccess();
  *v85 = 0;
  v85[1] = 0;

  v86 = &v42[OBJC_IVAR___APPCPromotedContent_journeyIdentifier];
  v87 = v176;
  *v86 = v183;
  v86[1] = v87;
  sub_1C1AA7E30(v188, &v42[OBJC_IVAR___APPCPromotedContent_receivedReferenceTime], &qword_1EBF07F50, &qword_1C1B9A590);
  *&v42[OBJC_IVAR___APPCPromotedContent_adServerEnvironments] = 0;

  v88 = [v69 identifier];
  sub_1C1B945D8();

  v89 = sub_1C1B945A8();
  v91 = v90;
  v179(v83, v65);
  v180 = objc_opt_self();
  [v180 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v92 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v93 = v83;
  v94 = type metadata accessor for PrimitiveCreator();
  v95 = objc_allocWithZone(v94);
  v96 = &v95[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v97 = v186;
  *v96 = v187;
  v96[1] = v97;
  v98 = &v95[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v182 = v89;
  *v98 = v89;
  v98[1] = v91;
  v99 = &v95[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v99 = v183;
  v99[1] = v87;
  v100 = &v95[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v100 = 0;
  v100[1] = 0;
  v95[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 1;
  *&v95[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v92;
  *&v95[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v95[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  v101 = qword_1EDE6C538;

  v181 = v91;

  swift_unknownObjectRetain();
  if (v101 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v95[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v194.receiver = v95;
  v194.super_class = v94;
  v102 = objc_msgSendSuper2(&v194, sel_init);
  swift_unknownObjectRelease();
  v168 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *&v42[OBJC_IVAR___APPCPromotedContent_primitiveCreator] = v102;
  v191[0] = 6911329;
  v191[1] = 0xE300000000000000;
  sub_1C1B945E8();
  v103 = sub_1C1B945A8();
  v105 = v104;
  v179(v93, v173);
  MEMORY[0x1C6906DF0](v103, v105);

  v106 = v191[0];
  v107 = v191[1];
  [v180 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v108 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v109 = objc_allocWithZone(v94);
  v110 = &v109[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v111 = v186;
  *v110 = v187;
  v110[1] = v111;
  v112 = &v109[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v113 = v181;
  *v112 = v182;
  v112[1] = v113;
  v114 = &v109[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v114 = v106;
  v114[1] = v107;
  v115 = &v109[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v115 = 0;
  v115[1] = 0;
  v109[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 1;
  *&v109[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v108;
  *&v109[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v109[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  sub_1C1AAD2FC(qword_1EDE6C540, &v109[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v193.receiver = v109;
  v193.super_class = v94;

  v116 = objc_msgSendSuper2(&v193, sel_init);
  v173 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *&v42[OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator] = v116;
  *&v42[OBJC_IVAR___APPCPromotedContent_diagnosticCode] = -1;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  sub_1C1B94908();
  swift_allocObject();
  v117 = sub_1C1B948E8();
  v118 = v170;
  sub_1C1AA7E30(v188, v170, &qword_1EBF07F50, &qword_1C1B9A590);
  v120 = v189;
  v119 = v190;
  v121 = (*(v189 + 48))(v118, 1, v190);
  v122 = v180;
  v174 = v117;
  if (v121 == 1)
  {
    sub_1C1AA7C8C(v118, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v123 = v156;
    (*(v120 + 32))(v156, v118, v119);
    sub_1C1B948D8();
    (*(v120 + 8))(v123, v119);
  }

  type metadata accessor for MetricsUnloadTracker();
  v124 = swift_allocObject();
  v124[2] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v124 + 24) = 0;
  v179 = v124;
  v124[4] = 1;
  v170 = *&v42[v168];
  swift_unknownObjectRetain();
  [v122 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v125 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v126 = 0;
  v127 = 0;
  v128 = *&v42[OBJC_IVAR___APPCPromotedContent_placement] - 7005;
  if (v128 <= 3)
  {
    v126 = qword_1C1BA4170[v128];
    v127 = qword_1C1BA4190[v128];
  }

  v168 = v126;
  v129 = type metadata accessor for JourneyMetricsHelper(0);
  ObjectType = swift_getObjectType();
  v131 = v186;

  v132 = v181;

  v133 = v174;

  v134 = v179;

  LOBYTE(v154) = 1;
  v135 = sub_1C1AB0E7C(v187, v131, v182, v132, v183, v176, v133, v134, v170, v125, v168, v127, 0, 0, 0, 0, 0, v154, v129, ObjectType);
  *&v42[OBJC_IVAR___APPCPromotedContent_metricsHelper] = v135;
  [v135 setImpressionThresholdDuration_];
  v136 = *&v42[v173];
  swift_unknownObjectRetain();
  [v180 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v137 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v138 = v169;
  swift_beginAccess();
  if (*&v42[v138])
  {
    v139 = *&v42[v138];
  }

  else
  {
    swift_allocObject();
    v139 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *&v42[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper] = sub_1C1AB1708(v182, v181, v187, v186, v136, v137, v139);
  v42[OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd] = 0;
  v42[OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd] = 0;
  v192.receiver = v42;
  v192.super_class = v172;
  v140 = objc_msgSendSuper2(&v192, sel_init);
  v141 = sub_1C1AB17D0(v133, v179);
  v142 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  *&v140[v142] = v141;
  swift_unknownObjectRelease();
  v143 = *&v140[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v143 setNetworkType_];
  swift_unknownObjectRelease();
  v144 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v140[v144] setPromotedContent_];
  v145 = *&v140[v144];
  v146 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v191[4] = sub_1C1B795A4;
  v191[5] = v146;
  v191[0] = MEMORY[0x1E69E9820];
  v191[1] = 1107296256;
  v191[2] = sub_1C1B196F0;
  v191[3] = &unk_1F4153C10;
  v147 = _Block_copy(v191);

  v148 = [v145 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v147);
  v149 = sub_1C1B94D88();
  v151 = v150;

  v152 = &v140[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v152 = v149;
  v152[1] = v151;

  sub_1C1AA7C8C(v188, &qword_1EBF07F50, &qword_1C1B9A590);
  (*(v189 + 8))(v185, v190);
  sub_1C1AA7C8C(v184, &qword_1EBF07F50, &qword_1C1B9A590);
  sub_1C1AA7C8C(v178, &qword_1EBF07AC8, &qword_1C1B9CED0);
  return v140;
}

char *PromotedContent.__allocating_init(identifier:placementType:container:size:context:unfilledReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, double a7, double a8)
{
  swift_getObjectType();

  return sub_1C1B76358(a1, a2, a3, a4, a5, a6, a7, a8);
}

char *PromotedContent.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v157 = a2;
  v152 = a1;
  v151 = sub_1C1B945F8();
  v156 = *(v151 - 1);
  MEMORY[0x1EEE9AC00](v151);
  v145 = v132 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v144 = v132 - v4;
  v5 = sub_1C1B94588();
  v154 = *(v5 - 8);
  v6 = v154;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v133 = v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v149 = v132 - v9;
  v10 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v141 = v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v132 - v14;
  v153 = v132 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = v132 - v16;
  v148 = v132 - v16;
  v18 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v132 - v19;
  v147 = v132 - v19;
  v21 = sub_1C1B944A8();
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 1, 1, v21);
  v23 = *(v6 + 56);
  v23(v17, 1, 1, v5);
  sub_1C1B94518();
  v24 = v15;
  v25 = v5;
  v23(v24, 1, 1, v5);
  v143 = type metadata accessor for PromotedContent(0);
  v26 = objc_allocWithZone(v143);
  v27 = &v26[OBJC_IVAR___APPCPromotedContent_impressionId];
  v150 = &v26[OBJC_IVAR___APPCPromotedContent_impressionId];
  *v27 = 0;
  v27[1] = 0;
  v134 = OBJC_IVAR___APPCPromotedContent_context;
  swift_unknownObjectWeakInit();
  v135 = OBJC_IVAR___APPCPromotedContent_metaData;
  *&v26[OBJC_IVAR___APPCPromotedContent_metaData] = 0;
  v136 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v22(&v26[OBJC_IVAR___APPCPromotedContent_disclosureURL], 1, 1, v21);
  v28 = &v26[OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v26[OBJC_IVAR___APPCPromotedContent_brandName];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v26[OBJC_IVAR___APPCPromotedContent_campaignText];
  v137 = &v26[OBJC_IVAR___APPCPromotedContent_campaignText];
  *v30 = 0;
  v30[1] = 0;
  v139 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  *&v26[OBJC_IVAR___APPCPromotedContent_installAttribution] = 0;
  *&v26[OBJC_IVAR___APPCPromotedContent_bestRepresentation] = 0;
  v140 = OBJC_IVAR___APPCPromotedContent_error;
  *&v26[OBJC_IVAR___APPCPromotedContent_error] = 0;
  v138 = OBJC_IVAR___APPCPromotedContent_startDate;
  v155 = v25;
  v23(&v26[OBJC_IVAR___APPCPromotedContent_startDate], 1, 1, v25);
  *&v26[OBJC_IVAR___APPCPromotedContent_mediaMetricHelper] = 0;
  v26[OBJC_IVAR___APPCPromotedContent_attachedToView] = 0;
  v26[OBJC_IVAR___APPCPromotedContent_vended] = 0;
  v26[OBJC_IVAR___APPCPromotedContent_discarded] = 0;
  v26[OBJC_IVAR___APPCPromotedContent_consumed] = 0;
  v146 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *&v26[OBJC_IVAR___APPCPromotedContent_impressionThreshold] = 0x3FF0000000000000;
  v23(&v26[OBJC_IVAR___APPCPromotedContent_videoRequestStartDate], 1, 1, v25);
  v26[OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy] = 0;
  v31 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v132[1] = type metadata accessor for MetricEventsTracker(0);
  swift_allocObject();
  v32 = sub_1C1AB0510();
  v142 = v31;
  *&v26[v31] = v32;
  *&v26[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v33 = &v26[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v26[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
  *v34 = 0;
  v34[8] = 1;
  v35 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v36 = *(v156 + 56);
  v37 = v151;
  v36(&v26[OBJC_IVAR___APPCPromotedContent__contextIdentifier], 1, 1, v151);
  v38 = &v26[OBJC_IVAR___APPCPromotedContent_discardReason];
  *v38 = 0;
  v38[8] = 1;
  *&v26[OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete] = MEMORY[0x1E69E7CC0];
  *&v26[OBJC_IVAR___APPCPromotedContent_appImpressionTask] = 0;
  v39 = &v26[OBJC_IVAR___APPCPromotedContent_appImpression];
  *v39 = 0u;
  *(v39 + 1) = 0u;
  *(v39 + 4) = 0;
  v26[OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView] = 0;
  v26[OBJC_IVAR___APPCPromotedContent_placeholder] = 0;
  v40 = &v26[OBJC_IVAR___APPCPromotedContent_identifier];
  v41 = v157;
  *v40 = v152;
  v40[1] = v41;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v42 = v144;
  v36(v144, 1, 1, v37);
  swift_beginAccess();

  sub_1C1B19384(v42, &v26[v35], &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v43 = v135;
  swift_beginAccess();
  *&v26[v43] = 0;

  v44 = v136;
  swift_beginAccess();
  sub_1C1B7953C(v147, &v26[v44], &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  *v28 = 0;
  v28[1] = 0;

  *&v26[OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation] = 0;
  swift_beginAccess();
  *v29 = 0;
  v29[1] = 0;

  v45 = v137;
  swift_beginAccess();
  *v45 = 0;
  v45[1] = 0;

  v46 = v138;
  swift_beginAccess();
  sub_1C1B7953C(v148, v46 + v26, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  (*(v154 + 16))(&v26[OBJC_IVAR___APPCPromotedContent_expirationDate], v149, v155);
  *&v26[OBJC_IVAR___APPCPromotedContent_serverUnfilledReason] = 200;
  *&v26[OBJC_IVAR___APPCPromotedContent_representations] = MEMORY[0x1E69E7CC0];
  v47 = v139;
  swift_beginAccess();
  v48 = *&v26[v47];
  *&v26[v47] = 0;

  v49 = v140;
  swift_beginAccess();
  v50 = *&v26[v49];
  *&v26[v49] = 0;

  v51 = &v26[OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp];
  *v51 = 0;
  v51[8] = 1;
  v139 = OBJC_IVAR___APPCPromotedContent_placement;
  *&v26[OBJC_IVAR___APPCPromotedContent_placement] = 0;
  v52 = v146;
  swift_beginAccess();
  *&v26[v52] = 0x3FF0000000000000;
  v53 = v145;
  sub_1C1B945E8();
  v54 = sub_1C1B945A8();
  v144 = v54;
  v56 = v55;
  v57 = v156 + 8;
  v58 = *(v156 + 8);
  v59 = v151;
  v58(v53, v151);
  v60 = v150;
  swift_beginAccess();
  *v60 = 0;
  v60[1] = 0;

  v61 = &v26[OBJC_IVAR___APPCPromotedContent_journeyIdentifier];
  *v61 = v54;
  v61[1] = v56;
  sub_1C1AA7E30(v153, &v26[OBJC_IVAR___APPCPromotedContent_receivedReferenceTime], &qword_1EBF07F50, &qword_1C1B9A590);
  *&v26[OBJC_IVAR___APPCPromotedContent_adServerEnvironments] = 0;
  v158[0] = 0;
  v158[1] = 0xE000000000000000;

  sub_1C1B95468();

  strcpy(v158, "missingContext");
  HIBYTE(v158[1]) = -18;
  sub_1C1B945E8();
  v62 = sub_1C1B945A8();
  v64 = v63;
  v156 = v57;
  v138 = v58;
  v58(v53, v59);
  MEMORY[0x1C6906DF0](v62, v64);
  v65 = v152;

  v66 = v158[0];
  v67 = v158[1];
  v68 = objc_opt_self();
  [v68 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v69 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v70 = type metadata accessor for PrimitiveCreator();
  v71 = objc_allocWithZone(v70);
  v72 = &v71[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v73 = v157;
  *v72 = v65;
  v72[1] = v73;
  v74 = &v71[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v150 = v66;
  *v74 = v66;
  v74[1] = v67;
  v75 = &v71[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v75 = v144;
  v75[1] = v56;
  v76 = &v71[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v76 = 0;
  v76[1] = 0;
  v71[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v71[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v69;
  *&v71[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v71[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  v77 = qword_1EDE6C538;

  v140 = v56;

  swift_unknownObjectRetain();
  if (v77 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v71[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v161.receiver = v71;
  v161.super_class = v70;
  v78 = objc_msgSendSuper2(&v161, sel_init);
  swift_unknownObjectRelease();
  v136 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *&v26[OBJC_IVAR___APPCPromotedContent_primitiveCreator] = v78;
  v158[0] = 6911329;
  v158[1] = 0xE300000000000000;
  v79 = v145;
  sub_1C1B945E8();
  v80 = sub_1C1B945A8();
  v82 = v81;
  v138(v79, v151);
  MEMORY[0x1C6906DF0](v80, v82);

  v83 = v158[0];
  v84 = v158[1];
  v151 = v68;
  [v68 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v85 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v86 = objc_allocWithZone(v70);
  v87 = &v86[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v88 = v157;
  *v87 = v65;
  v87[1] = v88;
  v89 = &v86[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  *v89 = v150;
  v89[1] = v67;
  v90 = &v86[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v90 = v83;
  v90[1] = v84;
  v91 = &v86[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v91 = 0;
  v91[1] = 0;
  v86[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v86[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v85;
  *&v86[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v86[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  sub_1C1AAD2FC(qword_1EDE6C540, &v86[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v160.receiver = v86;
  v160.super_class = v70;

  v156 = v67;

  v92 = objc_msgSendSuper2(&v160, sel_init);
  v137 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *&v26[OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator] = v92;
  *&v26[OBJC_IVAR___APPCPromotedContent_diagnosticCode] = -1;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  sub_1C1B94908();
  swift_allocObject();
  v93 = sub_1C1B948E8();
  v94 = v141;
  sub_1C1AA7E30(v153, v141, &qword_1EBF07F50, &qword_1C1B9A590);
  v96 = v154;
  v95 = v155;
  v97 = (*(v154 + 48))(v94, 1, v155);
  v138 = v93;
  if (v97 == 1)
  {
    sub_1C1AA7C8C(v94, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v98 = v133;
    (*(v96 + 32))(v133, v94, v95);
    sub_1C1B948D8();
    (*(v96 + 8))(v98, v95);
  }

  type metadata accessor for MetricsUnloadTracker();
  v99 = swift_allocObject();
  *(v99 + 16) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v99 + 24) = 0;
  v145 = v99;
  *(v99 + 32) = 1;
  v141 = *&v26[v136];
  swift_unknownObjectRetain();
  [v151 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v100 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v101 = 0;
  v102 = 0;
  v103 = *&v26[v139] - 7005;
  if (v103 <= 3)
  {
    v101 = qword_1C1BA4170[v103];
    v102 = qword_1C1BA4190[v103];
  }

  v139 = v101;
  v104 = type metadata accessor for JourneyMetricsHelper(0);
  ObjectType = swift_getObjectType();
  v106 = v157;

  v107 = v156;

  v108 = v138;

  v109 = v145;

  LOBYTE(v131) = 1;
  v110 = v106;
  v111 = v152;
  v112 = sub_1C1AB0E7C(v152, v110, v150, v107, v144, v140, v108, v109, v141, v100, v139, v102, 0, 0, 0, 0, 0, v131, v104, ObjectType);
  *&v26[OBJC_IVAR___APPCPromotedContent_metricsHelper] = v112;
  [v112 setImpressionThresholdDuration_];
  v113 = *&v26[v137];
  swift_unknownObjectRetain();
  [v151 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v114 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v115 = v142;
  swift_beginAccess();
  if (*&v26[v115])
  {
    v116 = *&v26[v115];
  }

  else
  {
    swift_allocObject();
    v116 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *&v26[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper] = sub_1C1AB1708(v150, v156, v111, v157, v113, v114, v116);
  v26[OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd] = 0;
  v26[OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd] = 0;
  v159.receiver = v26;
  v159.super_class = v143;
  v117 = objc_msgSendSuper2(&v159, sel_init);
  v118 = sub_1C1AB17D0(v108, v145);
  v119 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  *&v117[v119] = v118;
  swift_unknownObjectRelease();
  v120 = *&v117[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v120 setNetworkType_];
  swift_unknownObjectRelease();
  v121 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v117[v121] setPromotedContent_];
  v122 = *&v117[v121];
  v123 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v158[4] = sub_1C1B7B4D4;
  v158[5] = v123;
  v158[0] = MEMORY[0x1E69E9820];
  v158[1] = 1107296256;
  v158[2] = sub_1C1B196F0;
  v158[3] = &unk_1F4153C38;
  v124 = _Block_copy(v158);

  v125 = [v122 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v124);
  v126 = sub_1C1B94D88();
  v128 = v127;

  v129 = &v117[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v129 = v126;
  v129[1] = v128;

  sub_1C1AA7C8C(v153, &qword_1EBF07F50, &qword_1C1B9A590);
  (*(v154 + 8))(v149, v155);
  sub_1C1AA7C8C(v148, &qword_1EBF07F50, &qword_1C1B9A590);
  sub_1C1AA7C8C(v147, &qword_1EBF07AC8, &qword_1C1B9CED0);
  return v117;
}

id PromotedContent.__deallocating_deinit(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1C1B95138();
  sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v4 = sub_1C1B95298();
  v5 = &unk_1EBF09000;
  if (os_log_type_enabled(v4, v3))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29[0] = v7;
    *v6 = 136380931;
    v8 = &v1[OBJC_IVAR___APPCPromotedContent_identifier];
    swift_beginAccess();
    v10 = *v8;
    v9 = v8[1];

    v11 = sub_1C1AC7650(v10, v9, v29);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    v12 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
    swift_beginAccess();
    v13 = [*&v1[v12] journeyIdentifier];
    v14 = sub_1C1B94D88();
    v16 = v15;

    v17 = sub_1C1AC7650(v14, v16, v29);

    *(v6 + 14) = v17;
    _os_log_impl(&dword_1C1AA2000, v4, v3, "PromotedContent is being deallocated PC Identifier: %{private}s Journey ID %s", v6, 0x16u);
    swift_arrayDestroy();
    v18 = v7;
    v5 = &unk_1EBF09000;
    MEMORY[0x1C6908230](v18, -1, -1);
    MEMORY[0x1C6908230](v6, -1, -1);
  }

  v19 = sub_1C1B95138();
  v20 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C1B98E60;
  v22 = v5[277];
  swift_beginAccess();
  v23 = [*&v2[v22] debugging];
  v24 = sub_1C1B94D88();
  v26 = v25;

  *(v21 + 56) = MEMORY[0x1E69E6158];
  *(v21 + 64) = sub_1C1AA5E7C();
  *(v21 + 32) = v24;
  *(v21 + 40) = v26;
  sub_1C1B94BA8(v19, &dword_1C1AA2000, v20, "PromotedContent is being deallocated metricsHelper %@", 53, 2, v21);

  v28.receiver = v2;
  v28.super_class = type metadata accessor for PromotedContent(0);
  return objc_msgSendSuper2(&v28, sel_dealloc);
}

char *static PromotedContent.makePCError(placementType:container:size:context:unfilledReason:diagnosticCode:)(uint64_t a1, double a2, double a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v177 = a7;
  v181 = a6;
  v172 = a5;
  v194 = a1;
  v9 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v173 = v161 - v10;
  v11 = sub_1C1B94588();
  v195 = *(v11 - 8);
  v196 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v162 = v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v193 = v161 - v14;
  v15 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v176 = v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v161 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v192 = v161 - v21;
  v22 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = v161 - v23;
  v184 = v161 - v23;
  v25 = sub_1C1B945F8();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = v161 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = v161 - v30;
  sub_1C1B945E8();
  v32 = type metadata accessor for ContentRepresentation(0);
  v33 = objc_allocWithZone(v32);
  v34 = sub_1C1B945A8();
  v35 = &v33[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v35 = v34;
  v35[1] = v36;
  v187 = v26;
  (*(v26 + 16))(&v33[OBJC_IVAR___APPCContentRepresentation_id], v31, v25);
  *&v33[OBJC_IVAR___APPCContentRepresentation_adType] = v194;
  *&v33[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v33[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v33[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v37 = &v33[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v37 = a2;
  v37[1] = a3;
  *&v33[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v33[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v201.receiver = v33;
  v201.super_class = v32;
  v38 = objc_msgSendSuper2(&v201, sel_init);
  v39 = *(v26 + 8);
  v180 = v25;
  v39(v31, v25);
  v185 = v26 + 8;
  v188 = v39;
  sub_1C1B945E8();
  v190 = sub_1C1B945A8();
  v183 = v40;
  v39(v29, v25);
  v41 = sub_1C1B944A8();
  v42 = *(*(v41 - 8) + 56);
  v42(v24, 1, 1, v41);
  v43 = v196;
  v44 = *(v195 + 56);
  v44(v192, 1, 1, v196);
  sub_1C1B94518();
  sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  v45 = swift_allocObject();
  v171 = v45;
  *(v45 + 16) = xmmword_1C1B9FE60;
  *(v45 + 32) = v38;
  v191 = v20;
  v44(v20, 1, 1, v43);
  v179 = type metadata accessor for PromotedContent(0);
  v46 = objc_allocWithZone(v179);
  v47 = (v46 + OBJC_IVAR___APPCPromotedContent_impressionId);
  *v47 = 0;
  *(v47 + 1) = 0;
  v174 = v47;
  v163 = OBJC_IVAR___APPCPromotedContent_context;
  swift_unknownObjectWeakInit();
  v164 = OBJC_IVAR___APPCPromotedContent_metaData;
  *(v46 + OBJC_IVAR___APPCPromotedContent_metaData) = 0;
  v165 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v42(v46 + OBJC_IVAR___APPCPromotedContent_disclosureURL, 1, 1, v41);
  v48 = v46 + OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload;
  *v48 = 0;
  v48[1] = 0;
  v49 = v46 + OBJC_IVAR___APPCPromotedContent_brandName;
  v166 = v46 + OBJC_IVAR___APPCPromotedContent_brandName;
  *v49 = 0;
  v49[1] = 0;
  v50 = v46 + OBJC_IVAR___APPCPromotedContent_campaignText;
  v167 = v46 + OBJC_IVAR___APPCPromotedContent_campaignText;
  *v50 = 0;
  v50[1] = 0;
  v169 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  *(v46 + OBJC_IVAR___APPCPromotedContent_installAttribution) = 0;
  *(v46 + OBJC_IVAR___APPCPromotedContent_bestRepresentation) = 0;
  v170 = OBJC_IVAR___APPCPromotedContent_error;
  *(v46 + OBJC_IVAR___APPCPromotedContent_error) = 0;
  v168 = OBJC_IVAR___APPCPromotedContent_startDate;
  v44(v46 + OBJC_IVAR___APPCPromotedContent_startDate, 1, 1, v43);
  *(v46 + OBJC_IVAR___APPCPromotedContent_mediaMetricHelper) = 0;
  *(v46 + OBJC_IVAR___APPCPromotedContent_attachedToView) = 0;
  *(v46 + OBJC_IVAR___APPCPromotedContent_vended) = 0;
  *(v46 + OBJC_IVAR___APPCPromotedContent_discarded) = 0;
  *(v46 + OBJC_IVAR___APPCPromotedContent_consumed) = 0;
  v182 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *(v46 + OBJC_IVAR___APPCPromotedContent_impressionThreshold) = 0x3FF0000000000000;
  v44(v46 + OBJC_IVAR___APPCPromotedContent_videoRequestStartDate, 1, 1, v43);
  *(v46 + OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy) = 0;
  v51 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v161[1] = type metadata accessor for MetricEventsTracker(0);
  swift_allocObject();
  v52 = sub_1C1AB0510();
  v175 = v51;
  *(v46 + v51) = v52;
  *(v46 + OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v53 = v46 + OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID;
  *v53 = 0;
  v53[1] = 0;
  v54 = v46 + OBJC_IVAR___APPCPromotedContent_overriddenAdType;
  *v54 = 0;
  v54[8] = 1;
  v55 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v56 = *(v187 + 56);
  v187 += 56;
  v57 = v180;
  v56(v46 + OBJC_IVAR___APPCPromotedContent__contextIdentifier, 1, 1, v180);
  v58 = v46 + OBJC_IVAR___APPCPromotedContent_discardReason;
  *v58 = 0;
  v58[8] = 1;
  *(v46 + OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete) = MEMORY[0x1E69E7CC0];
  *(v46 + OBJC_IVAR___APPCPromotedContent_appImpressionTask) = 0;
  v59 = v46 + OBJC_IVAR___APPCPromotedContent_appImpression;
  *v59 = 0u;
  *(v59 + 1) = 0u;
  *(v59 + 4) = 0;
  *(v46 + OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView) = 0;
  strcpy(v197, "placeholder: ");
  HIWORD(v197[1]) = -4864;
  v178 = v38;
  sub_1C1B945E8();
  v60 = sub_1C1B945A8();
  v62 = v61;
  v186 = v31;
  v188(v31, v57);
  v63 = v60;
  v64 = v172;
  MEMORY[0x1C6906DF0](v63, v62);

  v65 = v197[0];
  v66 = v197[1];
  *(v46 + OBJC_IVAR___APPCPromotedContent_placeholder) = 1;
  v67 = (v46 + OBJC_IVAR___APPCPromotedContent_identifier);
  v189 = v65;
  *v67 = v65;
  v67[1] = v66;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v194 = v66;

  v68 = [v64 identifier];
  v69 = v173;
  sub_1C1B945D8();

  v56(v69, 0, 1, v57);
  swift_beginAccess();
  sub_1C1B19384(v69, v46 + v55, &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v70 = v164;
  swift_beginAccess();
  *(v46 + v70) = 0;

  v71 = v165;
  swift_beginAccess();
  sub_1C1B7953C(v184, v46 + v71, &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  *v48 = 0;
  v48[1] = 0;

  *(v46 + OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation) = 0;
  v72 = v166;
  swift_beginAccess();
  *v72 = 0;
  v72[1] = 0;

  v73 = v167;
  swift_beginAccess();
  *v73 = 0;
  v73[1] = 0;

  v74 = v168;
  swift_beginAccess();
  sub_1C1B7953C(v192, v46 + v74, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  (*(v195 + 16))(v46 + OBJC_IVAR___APPCPromotedContent_expirationDate, v193, v196);
  *(v46 + OBJC_IVAR___APPCPromotedContent_serverUnfilledReason) = v181;
  *(v46 + OBJC_IVAR___APPCPromotedContent_representations) = v171;
  v75 = v169;
  swift_beginAccess();
  v76 = *(v46 + v75);
  *(v46 + v75) = 0;

  v77 = v170;
  swift_beginAccess();
  v78 = *(v46 + v77);
  *(v46 + v77) = 0;

  v79 = v46 + OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp;
  *v79 = 0;
  v79[8] = 1;
  type metadata accessor for Context(0);
  v80 = swift_dynamicCastClass();
  if (v80 && (v81 = OBJC_IVAR___APPCContext_newsContext, v82 = v80, swift_beginAccess(), (v83 = *(v82 + v81)) != 0) && (v84 = (v83 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement), swift_beginAccess(), (v85 = v84[1]) != 0))
  {
    v86 = sub_1C1AB08D0(*v84, v85);
  }

  else
  {
    v87 = [v64 current];
    if (v87)
    {
      v86 = [v87 placement];
      swift_unknownObjectRelease();
    }

    else
    {
      v86 = 0;
    }
  }

  v88 = v57;
  v89 = v186;
  *(v46 + OBJC_IVAR___APPCPromotedContent_placement) = v86;
  v90 = v182;
  swift_beginAccess();
  *(v46 + v90) = 0x3FF0000000000000;
  v91 = v174;
  swift_beginAccess();
  *v91 = 0;
  *(v91 + 1) = 0;

  v92 = v46 + OBJC_IVAR___APPCPromotedContent_journeyIdentifier;
  v93 = v191;
  v94 = v183;
  *v92 = v190;
  v92[1] = v94;
  sub_1C1AA7E30(v93, v46 + OBJC_IVAR___APPCPromotedContent_receivedReferenceTime, &qword_1EBF07F50, &qword_1C1B9A590);
  *(v46 + OBJC_IVAR___APPCPromotedContent_adServerEnvironments) = 0;

  v95 = [v64 identifier];
  sub_1C1B945D8();

  v96 = sub_1C1B945A8();
  v98 = v97;
  v188(v89, v88);
  v186 = objc_opt_self();
  [v186 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v99 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v174 = type metadata accessor for PrimitiveCreator();
  v100 = objc_allocWithZone(v174);
  v101 = &v100[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v103 = v189;
  v102 = v190;
  v104 = v194;
  *v101 = v189;
  v101[1] = v104;
  v105 = &v100[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v181 = v96;
  *v105 = v96;
  v105[1] = v98;
  v106 = &v100[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v106 = v102;
  v106[1] = v94;
  v107 = &v100[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v107 = 0;
  v107[1] = 0;
  v100[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 1;
  *&v100[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v99;
  *&v100[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v100[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  v108 = qword_1EDE6C538;

  v187 = v98;

  swift_unknownObjectRetain();
  if (v108 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v100[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v109 = v174;
  v200.receiver = v100;
  v200.super_class = v174;
  v110 = objc_msgSendSuper2(&v200, sel_init);
  swift_unknownObjectRelease();
  v173 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *(v46 + OBJC_IVAR___APPCPromotedContent_primitiveCreator) = v110;
  v197[0] = 6911329;
  v197[1] = 0xE300000000000000;
  sub_1C1B945E8();
  v111 = sub_1C1B945A8();
  v113 = v112;
  v188(v89, v180);
  MEMORY[0x1C6906DF0](v111, v113);

  v114 = v197[0];
  v115 = v197[1];
  [v186 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v116 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v117 = objc_allocWithZone(v109);
  v118 = &v117[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  *v118 = v103;
  v118[1] = v194;
  v119 = &v117[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v120 = v187;
  *v119 = v181;
  v119[1] = v120;
  v121 = &v117[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v121 = v114;
  v121[1] = v115;
  v122 = &v117[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v122 = 0;
  v122[1] = 0;
  v117[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 1;
  *&v117[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v116;
  *&v117[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v117[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  sub_1C1AAD2FC(qword_1EDE6C540, &v117[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v199.receiver = v117;
  v199.super_class = v109;

  v123 = objc_msgSendSuper2(&v199, sel_init);
  v185 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *(v46 + OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator) = v123;
  *(v46 + OBJC_IVAR___APPCPromotedContent_diagnosticCode) = v177;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  sub_1C1B94908();
  swift_allocObject();
  v124 = sub_1C1B948E8();
  v125 = v176;
  sub_1C1AA7E30(v191, v176, &qword_1EBF07F50, &qword_1C1B9A590);
  v127 = v195;
  v126 = v196;
  if ((*(v195 + 48))(v125, 1, v196) == 1)
  {
    sub_1C1AA7C8C(v125, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v128 = v162;
    (*(v127 + 32))(v162, v125, v126);
    sub_1C1B948D8();
    (*(v127 + 8))(v128, v126);
  }

  type metadata accessor for MetricsUnloadTracker();
  v129 = swift_allocObject();
  v129[2] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v129 + 24) = 0;
  v188 = v129;
  v129[4] = 1;
  v180 = *&v173[v46];
  swift_unknownObjectRetain();
  [v186 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v130 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v131 = 0;
  v132 = 0;
  v133 = *(v46 + OBJC_IVAR___APPCPromotedContent_placement) - 7005;
  if (v133 <= 3)
  {
    v131 = qword_1C1BA4170[v133];
    v132 = qword_1C1BA4190[v133];
  }

  v177 = v131;
  v134 = type metadata accessor for JourneyMetricsHelper(0);
  ObjectType = swift_getObjectType();
  v136 = v194;

  v137 = v187;

  v138 = v188;

  LOBYTE(v160) = 1;
  v139 = v136;
  v140 = v181;
  v141 = sub_1C1AB0E7C(v189, v139, v181, v137, v190, v183, v124, v138, v180, v130, v177, v132, 0, 0, 0, 0, 0, v160, v134, ObjectType);
  *(v46 + OBJC_IVAR___APPCPromotedContent_metricsHelper) = v141;
  [v141 setImpressionThresholdDuration_];
  v142 = *(v46 + v185);
  swift_unknownObjectRetain();
  [v186 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v143 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v144 = v175;
  swift_beginAccess();
  if (*(v46 + v144))
  {
    v145 = *(v46 + v144);
  }

  else
  {
    swift_allocObject();
    v145 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *(v46 + OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper) = sub_1C1AB1708(v140, v187, v189, v194, v142, v143, v145);
  *(v46 + OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd) = 0;
  *(v46 + OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd) = 0;
  v198.receiver = v46;
  v198.super_class = v179;
  v146 = objc_msgSendSuper2(&v198, sel_init);
  v147 = sub_1C1AB17D0(v124, v188);
  v148 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  *&v146[v148] = v147;
  swift_unknownObjectRelease();
  v149 = *&v146[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v149 setNetworkType_];
  swift_unknownObjectRelease();
  v150 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v146[v150] setPromotedContent_];
  v151 = *&v146[v150];
  v152 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v197[4] = sub_1C1B7B4D4;
  v197[5] = v152;
  v197[0] = MEMORY[0x1E69E9820];
  v197[1] = 1107296256;
  v197[2] = sub_1C1B196F0;
  v197[3] = &unk_1F4153C60;
  v153 = _Block_copy(v197);

  v154 = [v151 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v153);
  v155 = sub_1C1B94D88();
  v157 = v156;

  v158 = &v146[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v158 = v155;
  v158[1] = v157;

  sub_1C1AA7C8C(v191, &qword_1EBF07F50, &qword_1C1B9A590);
  (*(v195 + 8))(v193, v196);
  sub_1C1AA7C8C(v192, &qword_1EBF07F50, &qword_1C1B9A590);
  sub_1C1AA7C8C(v184, &qword_1EBF07AC8, &qword_1C1B9CED0);
  return v146;
}

uint64_t PromotedContent.init(from:)(void *a1)
{
  v2 = v1;
  v292 = a1;
  v3 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v258 = &v243 - v4;
  v5 = sub_1C1B945F8();
  v270 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v257 = &v243 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1B94588();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v256 = &v243 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v251 = &v243 - v11;
  v12 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v255 = &v243 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v254 = &v243 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v252 = &v243 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v250 = &v243 - v19;
  v20 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v263 = &v243 - v21;
  v22 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v264 = &v243 - v23;
  v24 = sub_1C1AC1F08(&qword_1EBF098F8, &qword_1C1BA3DF0);
  v265 = *(v24 - 8);
  v266 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v243 - v25;
  v27 = &v2[OBJC_IVAR___APPCPromotedContent_impressionId];
  *v27 = 0;
  v27[1] = 0;
  v290 = v27;
  v276 = OBJC_IVAR___APPCPromotedContent_context;
  swift_unknownObjectWeakInit();
  v289 = OBJC_IVAR___APPCPromotedContent_metaData;
  *&v2[OBJC_IVAR___APPCPromotedContent_metaData] = 0;
  v28 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v29 = sub_1C1B944A8();
  v30 = *(*(v29 - 8) + 56);
  v288 = v28;
  v262 = v29;
  v30(&v2[v28], 1, 1);
  v31 = &v2[OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload];
  *v31 = 0;
  v31[1] = 0;
  v287 = v31;
  v32 = &v2[OBJC_IVAR___APPCPromotedContent_brandName];
  *v32 = 0;
  v32[1] = 0;
  v285 = v32;
  v33 = &v2[OBJC_IVAR___APPCPromotedContent_campaignText];
  *v33 = 0;
  v33[1] = 0;
  v284 = v33;
  v282 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  *&v2[OBJC_IVAR___APPCPromotedContent_installAttribution] = 0;
  v272 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
  *&v2[OBJC_IVAR___APPCPromotedContent_bestRepresentation] = 0;
  v274 = OBJC_IVAR___APPCPromotedContent_error;
  *&v2[OBJC_IVAR___APPCPromotedContent_error] = 0;
  v267 = v8;
  v34 = *(v8 + 56);
  v277 = OBJC_IVAR___APPCPromotedContent_startDate;
  v34(&v2[OBJC_IVAR___APPCPromotedContent_startDate], 1, 1, v7);
  v280 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  *&v2[OBJC_IVAR___APPCPromotedContent_mediaMetricHelper] = 0;
  v261 = OBJC_IVAR___APPCPromotedContent_attachedToView;
  v2[OBJC_IVAR___APPCPromotedContent_attachedToView] = 0;
  v260 = OBJC_IVAR___APPCPromotedContent_vended;
  v2[OBJC_IVAR___APPCPromotedContent_vended] = 0;
  v253 = OBJC_IVAR___APPCPromotedContent_discarded;
  v2[OBJC_IVAR___APPCPromotedContent_discarded] = 0;
  v259 = OBJC_IVAR___APPCPromotedContent_consumed;
  v2[OBJC_IVAR___APPCPromotedContent_consumed] = 0;
  v249 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *&v2[OBJC_IVAR___APPCPromotedContent_impressionThreshold] = 0x3FF0000000000000;
  v273 = OBJC_IVAR___APPCPromotedContent_videoRequestStartDate;
  v268 = v7;
  v34(&v2[OBJC_IVAR___APPCPromotedContent_videoRequestStartDate], 1, 1, v7);
  v35 = OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy;
  v2[OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy] = 0;
  v36 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v37 = type metadata accessor for MetricEventsTracker(0);
  swift_allocObject();
  v38 = sub_1C1AB0510();
  v283 = v36;
  *&v2[v36] = v38;
  v39 = &v2[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate];
  *(v39 + 8) = 0;
  v275 = v39;
  swift_unknownObjectWeakInit();
  v40 = &v2[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v40 = 0;
  v40[1] = 0;
  v271 = v40;
  v41 = &v2[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
  *v41 = 0;
  v41[8] = 1;
  v42 = *(v270 + 56);
  v291 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v42(&v2[OBJC_IVAR___APPCPromotedContent__contextIdentifier], 1, 1, v5);
  v43 = &v2[OBJC_IVAR___APPCPromotedContent_discardReason];
  *v43 = 0;
  v43[8] = 1;
  v278 = OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete;
  *&v2[OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete] = MEMORY[0x1E69E7CC0];
  v279 = OBJC_IVAR___APPCPromotedContent_appImpressionTask;
  *&v2[OBJC_IVAR___APPCPromotedContent_appImpressionTask] = 0;
  v44 = &v2[OBJC_IVAR___APPCPromotedContent_appImpression];
  *v44 = 0u;
  *(v44 + 16) = 0u;
  v281 = v44;
  *(v44 + 32) = 0;
  v286 = v2;
  v2[OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView] = 0;
  sub_1C1AAABE0(v292, v292[3]);
  sub_1C1B795B4();
  v45 = v269;
  sub_1C1B95A08();
  if (v45)
  {
    v48 = v286;
    sub_1C1AA86F8(v292);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
LABEL_4:

    sub_1C1ABD038(&v48[v276]);

    sub_1C1AA7C8C(&v48[v288], &qword_1EBF07AC8, &qword_1C1B9CED0);

    if (v49)
    {
    }

    swift_unknownObjectRelease();
    sub_1C1AA7C8C(&v48[v277], &qword_1EBF07F50, &qword_1C1B9A590);
    if (v50)
    {
      (*(v267 + 8))(&v48[OBJC_IVAR___APPCPromotedContent_expirationDate], v268);
    }

    swift_unknownObjectRelease();
    sub_1C1AA7C8C(&v48[v273], &qword_1EBF07F50, &qword_1C1B9A590);
    swift_unknownObjectRelease();
    if (v51)
    {
      sub_1C1AA7C8C(&v48[OBJC_IVAR___APPCPromotedContent_receivedReferenceTime], &qword_1EBF07F50, &qword_1C1B9A590);
    }

    if (v52)
    {
    }

    sub_1C1ABD038(v275);

    sub_1C1AA7C8C(&v48[v291], &unk_1EBF098E0, &qword_1C1BA22A0);
    if (v53)
    {
      swift_unknownObjectRelease();
    }

    if (v54)
    {
      swift_unknownObjectRelease();
    }

    sub_1C1AA7C8C(v281, &qword_1EBF098F0, &qword_1C1B9D838);
    type metadata accessor for PromotedContent(0);
    swift_deallocPartialClassInstance();
    return v51;
  }

  v269 = v5;
  v46 = v264;
  v246 = v35;
  v247 = v43;
  v248 = v37;
  v311 = 0;
  v47 = sub_1C1B95698();
  v56 = v286;
  v57 = &v286[OBJC_IVAR___APPCPromotedContent_identifier];
  *v57 = v47;
  v57[1] = v58;
  v311 = 2;
  sub_1C1B79608(&qword_1EDE6C358, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1C1B95678();
  v59 = v291;
  v60 = v26;
  swift_beginAccess();
  sub_1C1B19384(v46, &v56[v59], &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v311 = 1;
  v61 = sub_1C1B95698();
  v62 = &v56[OBJC_IVAR___APPCPromotedContent_journeyIdentifier];
  *v62 = v61;
  v62[1] = v63;
  v311 = 36;
  v64 = sub_1C1B95638();
  v66 = v65;
  v244 = v62;
  v245 = v57;
  v67 = v290;
  swift_beginAccess();
  *v67 = v64;
  v67[1] = v66;

  sub_1C1AC1F08(&qword_1EBF09900, &qword_1C1BA3DF8);
  v310 = 3;
  sub_1C1B798E8(&unk_1EDE6BBD8, &unk_1EDE6BBF0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1C1B95678();
  v68 = v309;
  v69 = v289;
  swift_beginAccess();
  *&v56[v69] = v68;

  LOBYTE(v309) = 4;
  sub_1C1B79608(&unk_1EDE6C3A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v70 = v263;
  sub_1C1B95678();
  v71 = v60;
  v72 = v288;
  swift_beginAccess();
  sub_1C1B19384(v70, &v56[v72], &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  LOBYTE(v309) = 5;
  v73 = sub_1C1B95638();
  v75 = v74;
  v76 = v287;
  swift_beginAccess();
  *v76 = v73;
  v76[1] = v75;

  v308 = 6;
  *&v56[OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation] = sub_1C1B956D8();
  v308 = 7;
  v77 = sub_1C1B95638();
  v264 = 0;
  v79 = v77;
  v80 = v78;
  v81 = v285;
  swift_beginAccess();
  *v81 = v79;
  v81[1] = v80;

  v307 = 8;
  v263 = v71;
  v82 = v264;
  v83 = sub_1C1B95638();
  v264 = v82;
  if (v82 || (v85 = v83, v86 = v84, v87 = v284, swift_beginAccess(), *v87 = v85, v87[1] = v86, , sub_1C1AC1F08(&qword_1EBF09908, &qword_1C1BA3E00), LOBYTE(v305) = 9, sub_1C1B79974(&qword_1EDE6BBB0, sub_1C1B79650, MEMORY[0x1E69E6330]), v88 = v264, sub_1C1B956F8(), (v264 = v88) != 0))
  {
    (*(v265 + 8))(v263, v266);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
LABEL_21:
    v48 = v286;
    sub_1C1AA86F8(v292);

    goto LABEL_4;
  }

  v89 = v306;
  v90 = *(v306 + 16);
  if (v90)
  {
    v305 = MEMORY[0x1E69E7CC0];
    sub_1C1B95518();
    v91 = 32;
    while (1)
    {
      v95 = *(v89 + v91);
      v96 = v95 >> 61;
      if ((v95 >> 61) <= 1)
      {
        if (!v96)
        {
          sub_1C1B79608(&qword_1EBF08D50, type metadata accessor for BannerRepresentation, &protocol conformance descriptor for ContentRepresentation);
          sub_1C1B79608(&qword_1EBF09930, type metadata accessor for BannerRepresentation, &protocol conformance descriptor for ContentRepresentation);
          v97 = (v95 & 0x1FFFFFFFFFFFFFFFLL);
          goto LABEL_26;
        }

        v97 = (v95 & 0x1FFFFFFFFFFFFFFFLL);
        v92 = type metadata accessor for VideoRepresentation;
        sub_1C1B79608(&qword_1EBF08D48, type metadata accessor for VideoRepresentation, &protocol conformance descriptor for ContentRepresentation);
        v93 = &unk_1EBF09920;
      }

      else
      {
        v97 = (v95 & 0x1FFFFFFFFFFFFFFFLL);
        if (v96 == 2)
        {
          v92 = type metadata accessor for NativeRepresentation;
          sub_1C1B79608(&qword_1EBF08D40, type metadata accessor for NativeRepresentation, &protocol conformance descriptor for ContentRepresentation);
          v93 = &unk_1EBF09910;
        }

        else if (v96 == 3)
        {
          v92 = type metadata accessor for SearchLandingPageRepresentation;
          sub_1C1B79608(&unk_1EDE6A7F0, type metadata accessor for SearchLandingPageRepresentation, &protocol conformance descriptor for ContentRepresentation);
          v93 = &unk_1EDE6A800;
        }

        else
        {
          v92 = type metadata accessor for ClientLayoutRepresentation;
          sub_1C1B79608(&qword_1EDE6A8F0, type metadata accessor for ClientLayoutRepresentation, &protocol conformance descriptor for ContentRepresentation);
          v93 = &unk_1EDE6A8F8;
        }
      }

      sub_1C1B79608(v93, v92, &protocol conformance descriptor for ContentRepresentation);
LABEL_26:
      v94 = v97;
      sub_1C1B954F8();
      sub_1C1B95528();
      sub_1C1B95538();
      sub_1C1B95508();
      v91 += 8;
      if (!--v90)
      {

        v98 = v305;
        goto LABEL_37;
      }
    }
  }

  v98 = MEMORY[0x1E69E7CC0];
LABEL_37:
  *&v286[OBJC_IVAR___APPCPromotedContent_representations] = v98;
  LOBYTE(v306) = 13;
  v99 = v264;
  v100 = sub_1C1B956A8();
  v264 = v99;
  if (v99)
  {
    goto LABEL_49;
  }

  v286[OBJC_IVAR___APPCPromotedContent_placeholder] = v100 & 1;
  LOBYTE(v306) = 17;
  v101 = v264;
  v102 = sub_1C1B956A8();
  v264 = v101;
  if (v101)
  {
    goto LABEL_49;
  }

  v103 = v102;
  v104 = v286;
  v105 = v261;
  swift_beginAccess();
  v104[v105] = v103 & 1;
  LOBYTE(v305) = 18;
  v106 = v264;
  v107 = sub_1C1B956A8();
  v264 = v106;
  if (v106)
  {
    goto LABEL_49;
  }

  v108 = v107;
  v109 = v286;
  v110 = v260;
  swift_beginAccess();
  v109[v110] = v108 & 1;
  v304 = 20;
  v111 = v264;
  v112 = sub_1C1B956A8();
  v264 = v111;
  if (v111)
  {
    goto LABEL_49;
  }

  v113 = v112;
  v114 = v286;
  v115 = v259;
  swift_beginAccess();
  v114[v115] = v113 & 1;
  v303 = 21;
  v116 = v264;
  sub_1C1B956B8();
  v264 = v116;
  if (v116)
  {
    goto LABEL_49;
  }

  v118 = v117;
  v119 = v286;
  v120 = v249;
  swift_beginAccess();
  *&v119[v120] = v118;
  v302 = 22;
  sub_1C1B79608(&unk_1EDE6C370, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v121 = v264;
  sub_1C1B95678();
  v264 = v121;
  if (v121)
  {
    goto LABEL_49;
  }

  v122 = v273;
  v123 = v286;
  swift_beginAccess();
  sub_1C1B19384(v250, &v123[v122], &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  v302 = 23;
  v124 = v264;
  v125 = sub_1C1B956A8();
  v264 = v124;
  if (v124)
  {
    goto LABEL_49;
  }

  v126 = v125;
  v127 = v286;
  v128 = v246;
  swift_beginAccess();
  v127[v128] = v126 & 1;
  v300 = 24;
  sub_1C1B1D308();
  v129 = v264;
  sub_1C1B95678();
  v264 = v129;
  if (v129)
  {
    goto LABEL_49;
  }

  v130 = v301;
  if (v301)
  {
    sub_1C1B79608(&unk_1EDE6C0B0, type metadata accessor for MetricEventsTracker, &unk_1C1B9CAF8);
    sub_1C1B79608(&qword_1EDE6C0C0, type metadata accessor for MetricEventsTracker, &unk_1C1B9CAD0);
  }

  v131 = v283;
  v132 = v286;
  swift_beginAccess();
  *&v132[v131] = v130;
  swift_unknownObjectRelease();
  v300 = 31;
  sub_1C1B796A4();
  v133 = v264;
  sub_1C1B95678();
  v264 = v133;
  if (v133 || (v134 = v298, v135 = v299, v136 = v247, swift_beginAccess(), *v136 = v134, v136[8] = v135, LOBYTE(v298) = 15, v137 = v264, sub_1C1B956F8(), (v264 = v137) != 0))
  {
LABEL_49:
    (*(v265 + 8))(v263, v266);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v49 = 1;
    goto LABEL_21;
  }

  v138 = *(v267 + 32);
  v138(&v286[OBJC_IVAR___APPCPromotedContent_expirationDate], v251, v268);
  LOBYTE(v298) = 14;
  v139 = v264;
  sub_1C1B95678();
  v264 = v139;
  if (v139)
  {
    goto LABEL_67;
  }

  v140 = v277;
  v141 = v286;
  swift_beginAccess();
  sub_1C1B19384(v252, &v141[v140], &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  v297 = 16;
  sub_1C1B796F8();
  v142 = v264;
  sub_1C1B956F8();
  v264 = v142;
  if (v142)
  {
    goto LABEL_67;
  }

  *&v286[OBJC_IVAR___APPCPromotedContent_serverUnfilledReason] = v298;
  v297 = 11;
  sub_1C1B79650();
  v143 = v264;
  sub_1C1B95678();
  v264 = v143;
  if (v143)
  {
    goto LABEL_67;
  }

  v144 = v298;
  if ((~v298 & 0xF000000000000007) != 0)
  {
    v145 = v298 >> 61;
    if ((v298 >> 61) <= 1)
    {
      if (v145)
      {
        v144 = v298 & 0x1FFFFFFFFFFFFFFFLL;
        v146 = type metadata accessor for VideoRepresentation;
        sub_1C1B79608(&qword_1EBF08D48, type metadata accessor for VideoRepresentation, &protocol conformance descriptor for ContentRepresentation);
        v147 = &unk_1EBF09920;
      }

      else
      {
        v146 = type metadata accessor for BannerRepresentation;
        sub_1C1B79608(&qword_1EBF08D50, type metadata accessor for BannerRepresentation, &protocol conformance descriptor for ContentRepresentation);
        v147 = &qword_1EBF09930;
      }
    }

    else
    {
      v144 = v298 & 0x1FFFFFFFFFFFFFFFLL;
      if (v145 == 2)
      {
        v146 = type metadata accessor for NativeRepresentation;
        sub_1C1B79608(&qword_1EBF08D40, type metadata accessor for NativeRepresentation, &protocol conformance descriptor for ContentRepresentation);
        v147 = &unk_1EBF09910;
      }

      else if (v145 == 3)
      {
        v146 = type metadata accessor for SearchLandingPageRepresentation;
        sub_1C1B79608(&unk_1EDE6A7F0, type metadata accessor for SearchLandingPageRepresentation, &protocol conformance descriptor for ContentRepresentation);
        v147 = &unk_1EDE6A800;
      }

      else
      {
        v146 = type metadata accessor for ClientLayoutRepresentation;
        sub_1C1B79608(&qword_1EDE6A8F0, type metadata accessor for ClientLayoutRepresentation, &protocol conformance descriptor for ContentRepresentation);
        v147 = &unk_1EDE6A8F8;
      }
    }

    sub_1C1B79608(v147, v146, &protocol conformance descriptor for ContentRepresentation);
  }

  else
  {
    v144 = 0;
  }

  v148 = v272;
  v149 = v286;
  swift_beginAccess();
  *&v149[v148] = v144;
  swift_unknownObjectRelease();
  v297 = 19;
  v150 = v264;
  v151 = sub_1C1B956A8();
  v264 = v150;
  if (v150 || (v152 = v151, v153 = v253, v154 = v286, swift_beginAccess(), v154[v153] = v152 & 1, v294 = 26, sub_1C1B1D2B4(), v155 = v264, sub_1C1B956F8(), (v264 = v155) != 0))
  {
LABEL_67:
    (*(v265 + 8))(v263, v266);
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    v49 = 1;
    v50 = 1;
    goto LABEL_21;
  }

  v156 = v295;
  sub_1C1B79608(&unk_1EDE6C140, type metadata accessor for PrimitiveCreator, &unk_1C1B98CBC);
  sub_1C1B79608(&qword_1EDE6C150, type metadata accessor for PrimitiveCreator, &unk_1C1B98C94);
  v157 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *&v286[OBJC_IVAR___APPCPromotedContent_primitiveCreator] = v156;
  v294 = 34;
  v158 = v264;
  sub_1C1B956F8();
  v264 = v158;
  if (v158)
  {
    (*(v265 + 8))(v263, v266);
    v51 = 0;
    v52 = 0;
    v54 = 0;
    v49 = 1;
    v50 = 1;
    v53 = 1;
    goto LABEL_21;
  }

  *&v286[OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator] = v295;
  LOBYTE(v295) = 27;
  v159 = v264;
  v160 = sub_1C1B956A8();
  v264 = v159;
  if (v159 || (v286[OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd] = v160 & 1, LOBYTE(v295) = 28, v161 = v264, v162 = sub_1C1B956A8(), (v264 = v161) != 0) || (v286[OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd] = v162 & 1, v294 = 29, sub_1C1B5AE40(), v163 = v264, sub_1C1B956F8(), (v264 = v163) != 0) || (v164 = OBJC_IVAR___APPCPromotedContent_placement, *&v286[OBJC_IVAR___APPCPromotedContent_placement] = v295, LOBYTE(v295) = 30, v165 = v264, v166 = sub_1C1B95658(), (v264 = v165) != 0) || (v168 = &v286[OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp], *v168 = v166, v168[8] = v167 & 1, LOBYTE(v295) = 32, v169 = v264, sub_1C1B95678(), (v264 = v169) != 0))
  {
    (*(v265 + 8))(v263, v266);
    v51 = 0;
    v52 = 0;
    v49 = 1;
    v50 = 1;
LABEL_76:
    v53 = 1;
    v54 = 1;
    goto LABEL_21;
  }

  v170 = OBJC_IVAR___APPCPromotedContent_receivedReferenceTime;
  sub_1C1B193EC(v254, &v286[OBJC_IVAR___APPCPromotedContent_receivedReferenceTime]);
  sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
  v294 = 33;
  sub_1C1AC34C8(&qword_1EDE6BB98, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  v171 = v264;
  sub_1C1B95678();
  v264 = v171;
  if (v171)
  {
    (*(v265 + 8))(v263, v266);
    v52 = 0;
    v49 = 1;
    v50 = 1;
    v51 = 1;
    goto LABEL_76;
  }

  v262 = OBJC_IVAR___APPCPromotedContent_adServerEnvironments;
  *&v286[OBJC_IVAR___APPCPromotedContent_adServerEnvironments] = v295;
  LOBYTE(v295) = 35;
  v172 = v264;
  v173 = sub_1C1B95668();
  v264 = v172;
  if (v172 || ((v174 & 1) != 0 ? (v175 = -1) : (v175 = v173), *&v286[OBJC_IVAR___APPCPromotedContent_diagnosticCode] = v175, v294 = 10, sub_1C1AE4898(), v176 = v264, sub_1C1B95678(), (v264 = v176) != 0))
  {
    (*(v265 + 8))(v263, v266);
LABEL_85:
    v49 = 1;
    v50 = 1;
    v51 = 1;
    v52 = 1;
    goto LABEL_76;
  }

  v261 = v296;
  if (v296 >> 60 != 15)
  {
    v177 = v295;
    v178 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    v179 = v261;
    sub_1C1B798D4(v177, v261);
    v260 = v177;
    v180 = v264;
    v181 = sub_1C1B79814(v177, v179);
    v264 = v180;
    if (v180)
    {
      v183 = v260;
      v182 = v261;
      sub_1C1AE49EC(v260, v261);
      (*(v265 + 8))(v263, v266);
      sub_1C1AE49EC(v183, v182);
      goto LABEL_85;
    }

    v184 = v181;
    sub_1C1AE49EC(v260, v261);
    [v184 setRequiresSecureCoding_];
    v290 = [objc_allocWithZone(MEMORY[0x1E698A040]) initWithCoder_];
    v185 = v282;
    v186 = v286;
    swift_beginAccess();
    v187 = *&v186[v185];
    *&v186[v185] = v290;

    [v184 finishDecoding];
    sub_1C1AE49EC(v260, v261);
  }

  type metadata accessor for MetricsUnloadTracker();
  v188 = swift_allocObject();
  *(v188 + 16) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v188 + 24) = 0;
  v289 = v188;
  *(v188 + 32) = 1;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  sub_1C1B94908();
  swift_allocObject();
  v290 = sub_1C1B948E8();
  v189 = v255;
  sub_1C1AA7E30(&v286[v170], v255, &qword_1EBF07F50, &qword_1C1B9A590);
  if ((*(v267 + 48))(v189, 1, v268) == 1)
  {
    sub_1C1AA7C8C(v255, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v190 = v256;
    v191 = v268;
    v138(v256, v255, v268);
    sub_1C1B948D8();
    (*(v267 + 8))(v190, v191);
  }

  v192 = v245;
  swift_beginAccess();
  v193 = v192[1];
  v282 = *v192;
  v288 = v193;
  v284 = *(v270 + 48);
  v285 = (v270 + 48);
  if ((v284)(&v286[v291], 1, v269))
  {

    sub_1C1B945E8();
  }

  else
  {
    (*(v270 + 16))(v257, &v286[v291], v269);
  }

  v194 = v257;
  v277 = sub_1C1B945A8();
  v278 = v195;
  v280 = *(v270 + 8);
  v281 = v270 + 8;
  v280(v194, v269);
  v196 = v244;
  swift_beginAccess();
  v197 = *v196;
  v198 = v196[1];
  v276 = v197;
  v199 = v286;
  v200 = *&v286[v157];
  v201 = objc_opt_self();
  v275 = v198;

  v274 = v200;
  swift_unknownObjectRetain();
  v279 = v201;
  [v201 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v202 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v287 = 0;
  v203 = 0;
  v204 = *&v199[v164] - 7005;
  if (v204 <= 3)
  {
    v287 = qword_1C1BA4170[v204];
    v203 = qword_1C1BA4190[v204];
  }

  v205 = type metadata accessor for JourneyMetricsHelper(0);
  ObjectType = swift_getObjectType();
  v207 = v286;
  v208 = *&v286[v262];

  v209 = v290;

  v210 = v289;

  LOBYTE(v242) = 1;
  *&v207[OBJC_IVAR___APPCPromotedContent_metricsHelper] = sub_1C1AB0E7C(v282, v288, v277, v278, v276, v275, v209, v210, v274, v202, v287, v203, v208, 0, 0, 0, 0, v242, v205, ObjectType);
  if ((v284)(&v207[v291], 1, v269))
  {
    sub_1C1B945E8();
  }

  else
  {
    (*(v270 + 16))(v257, &v286[v291], v269);
  }

  v211 = v257;
  v291 = sub_1C1B945A8();
  v213 = v212;
  v280(v211, v269);
  v214 = v245[1];
  v288 = *v245;
  v215 = v286;
  v216 = *&v286[v157];

  swift_unknownObjectRetain();
  [v279 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v217 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v218 = *&v215[v283];
  if (v218)
  {
    v219 = v218;
  }

  else
  {
    swift_allocObject();
    v219 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  v220 = sub_1C1AB1708(v291, v213, v288, v214, v216, v217, v219);
  v221 = v286;
  *&v286[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper] = v220;
  v222 = type metadata accessor for PromotedContent(0);
  v293.receiver = v221;
  v293.super_class = v222;
  v51 = objc_msgSendSuper2(&v293, sel_init);
  v223 = sub_1C1AB17D0(v290, v289);
  v224 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  *(v51 + v224) = v223;
  swift_unknownObjectRelease();
  v225 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  v226 = *(v51 + v225);
  v227 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  swift_beginAccess();
  [v226 setImpressionThresholdDuration_];
  v228 = *(v51 + OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper);
  swift_unknownObjectRetain();
  [v228 setNetworkType_];
  swift_unknownObjectRelease();
  [swift_unknownObjectRetain() setPromotedContent_];
  swift_unknownObjectRelease();

  v229 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  swift_beginAccess();
  v230 = *(v51 + v229);
  if (v230)
  {
    v231 = [v230 attributionSignature];
    v232 = sub_1C1B94D88();
    v234 = v233;

    v235 = OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView;
    swift_beginAccess();
    *(v51 + v235) = 1;
    v236 = sub_1C1B95028();
    v237 = v258;
    (*(*(v236 - 8) + 56))(v258, 1, 1, v236);
    v238 = swift_allocObject();
    v238[2] = 0;
    v238[3] = 0;
    v238[4] = v51;
    v238[5] = v232;
    v238[6] = v234;
    v239 = v51;
    v240 = sub_1C1B025C8(0, 0, v237, &unk_1C1BA3E10, v238);

    (*(v265 + 8))(v263, v266);
    v241 = OBJC_IVAR___APPCPromotedContent_appImpressionTask;
    swift_beginAccess();
    *&v239[v241] = v240;
  }

  else
  {

    (*(v265 + 8))(v263, v266);
  }

  sub_1C1AA86F8(v292);
  return v51;
}

uint64_t sub_1C1B72B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a1;
  v6[11] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C1B72BA0, 0, 0);
}

uint64_t sub_1C1B72BA0()
{
  v0[5] = sub_1C1B94718();
  v0[6] = &protocol witness table for AppImpression;
  v1 = sub_1C1AB0D60(v0 + 2);

  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1C1B72C74;
  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x1EEDB2930](v1, v3, v4);
}

uint64_t sub_1C1B72C74()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1C1B7B4CC;
  }

  else
  {
    v2 = sub_1C1B7B4D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C1B72D88(void *a1)
{
  v2 = v1;
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v79 = &v74 - v7;
  v8 = sub_1C1B94588();
  v81 = *(v8 - 8);
  v82 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v83);
  v11 = &v74 - v10;
  v12 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v84 = &v74 - v13;
  v14 = sub_1C1AC1F08(&qword_1EBF09938, &qword_1C1BA3E18);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v74 - v16;
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B795B4();
  sub_1C1B95A18();
  swift_beginAccess();
  v112 = 0;

  v18 = v113;
  sub_1C1B957A8();
  if (v18)
  {
    (*(v15 + 8))(v17, v14);
  }

  v77 = v11;
  v113 = v15;

  v20 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v21 = v2;
  swift_beginAccess();
  v22 = v2 + v20;
  v23 = v84;
  sub_1C1AA7E30(v22, v84, &unk_1EBF098E0, &qword_1C1BA22A0);
  v111 = 2;
  sub_1C1B945F8();
  sub_1C1B79608(&unk_1EDE6C360, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1C1B95788();
  sub_1C1AA7C8C(v23, &unk_1EBF098E0, &qword_1C1BA22A0);
  v111 = 0;

  sub_1C1B957A8();

  swift_beginAccess();
  v110 = 1;

  sub_1C1B957A8();

  v24 = OBJC_IVAR___APPCPromotedContent_impressionId;
  swift_beginAccess();
  v109 = *(v21 + v24);
  LOBYTE(v108[0]) = 36;
  v25 = sub_1C1AC1F08(&qword_1EBF07AB8, &qword_1C1B98D00);
  v26 = sub_1C1AC344C();
  sub_1C1B95808();
  v84 = v26;
  v27 = v17;
  v28 = OBJC_IVAR___APPCPromotedContent_metaData;
  swift_beginAccess();
  v108[0] = *(v21 + v28);
  v107 = 3;
  sub_1C1AC1F08(&qword_1EBF09900, &qword_1C1BA3DF8);
  sub_1C1B798E8(&qword_1EDE6BBE8, &qword_1EDE6BC00, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1C1B95788();
  v29 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  swift_beginAccess();
  v30 = v21 + v29;
  v31 = v77;
  sub_1C1AA7E30(v30, v77, &qword_1EBF07AC8, &qword_1C1B9CED0);
  v107 = 4;
  sub_1C1AEEE3C();
  sub_1C1B95808();
  sub_1C1AA7C8C(v31, &qword_1EBF07AC8, &qword_1C1B9CED0);
  v32 = OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload;
  swift_beginAccess();
  v106 = *(v21 + v32);
  v105 = 5;
  sub_1C1B95808();
  v83 = v25;
  swift_beginAccess();
  v105 = 6;
  sub_1C1B957E8();
  v33 = OBJC_IVAR___APPCPromotedContent_brandName;
  swift_beginAccess();
  v104 = *(v21 + v33);
  LOBYTE(v103) = 7;
  sub_1C1B95808();
  v34 = OBJC_IVAR___APPCPromotedContent_campaignText;
  swift_beginAccess();
  v103 = *(v21 + v34);
  LOBYTE(v102) = 8;
  v75 = v27;
  v76 = v14;
  sub_1C1B95808();
  v74 = 0;
  v35 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v77 = *(v21 + v35);
  if (v77 >> 62)
  {
LABEL_41:
    v36 = v77 & 0xFFFFFFFFFFFFFF8;
    v84 = sub_1C1B953A8();
  }

  else
  {
    v36 = v77 & 0xFFFFFFFFFFFFFF8;
    v84 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v84)
  {
    v37 = 0;
    v83 = v77 & 0xC000000000000001;
    v38 = MEMORY[0x1E69E7CC0];
    do
    {
      v39 = v37;
      v40 = v77;
      while (1)
      {
        if (v83)
        {
          MEMORY[0x1C6907490](v39, v40);
          v37 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v39 >= *(v36 + 16))
          {
            goto LABEL_40;
          }

          swift_unknownObjectRetain();
          v37 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
            goto LABEL_41;
          }
        }

        type metadata accessor for BannerRepresentation(0);
        v41 = swift_dynamicCastClass();
        if (v41)
        {
          v46 = v41;
          goto LABEL_26;
        }

        type metadata accessor for VideoRepresentation(0);
        v42 = swift_dynamicCastClass();
        if (v42)
        {
          v46 = v42 | 0x2000000000000000;
          goto LABEL_26;
        }

        type metadata accessor for NativeRepresentation(0);
        v43 = swift_dynamicCastClass();
        if (v43)
        {
          v46 = v43 | 0x4000000000000000;
          goto LABEL_26;
        }

        type metadata accessor for SearchLandingPageRepresentation(0);
        v44 = swift_dynamicCastClass();
        if (v44)
        {
          v46 = v44 | 0x6000000000000000;
          goto LABEL_26;
        }

        type metadata accessor for ClientLayoutRepresentation(0);
        v45 = swift_dynamicCastClass();
        if (v45)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v39;
        if (v37 == v84)
        {
          goto LABEL_33;
        }
      }

      v46 = v45 | 0x8000000000000000;
LABEL_26:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_1C1ACE5F4(0, *(v38 + 2) + 1, 1, v38);
      }

      v48 = *(v38 + 2);
      v47 = *(v38 + 3);
      if (v48 >= v47 >> 1)
      {
        v38 = sub_1C1ACE5F4((v47 > 1), v48 + 1, 1, v38);
      }

      *(v38 + 2) = v48 + 1;
      *&v38[8 * v48 + 32] = v46;
    }

    while (v37 != v84);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

LABEL_33:

  v102 = v38;
  LOBYTE(v101) = 9;
  sub_1C1AC1F08(&qword_1EBF09908, &qword_1C1BA3E00);
  sub_1C1B79974(&qword_1EDE6BBB8, sub_1C1B799EC, MEMORY[0x1E69E6300]);
  v49 = v74;
  sub_1C1B95808();
  if (v49)
  {

    return (*(v113 + 8))(v75, v76);
  }

  v50 = OBJC_IVAR___APPCPromotedContent_bestRepresentation;
  swift_beginAccess();
  if (*(v21 + v50))
  {
    v51 = swift_unknownObjectRetain_n();
    v52 = sub_1C1B113D8(v51);
    v101 = v52;
    v100 = 11;
    sub_1C1AC1F08(&unk_1EBF09950, &qword_1C1BA3E30);
    sub_1C1B79BF0();
    sub_1C1B95808();
    sub_1C1B79C74(v52);
    swift_unknownObjectRelease();
  }

  LOBYTE(v101) = 13;
  sub_1C1B957B8();
  v53 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  (*(v81 + 16))(v80, v21 + v53, v82);
  v100 = 15;
  sub_1C1B79608(&unk_1EDE6C380, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1C1B95808();
  (*(v81 + 8))(v80, v82);
  v54 = OBJC_IVAR___APPCPromotedContent_startDate;
  swift_beginAccess();
  sub_1C1AA7E30(v21 + v54, v79, &qword_1EBF07F50, &qword_1C1B9A590);
  v99 = 14;
  sub_1C1B95788();
  sub_1C1AA7C8C(v79, &qword_1EBF07F50, &qword_1C1B9A590);
  v55 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  v98 = *(v21 + v55);
  v97 = 16;
  sub_1C1B79A40();
  sub_1C1B95808();
  swift_beginAccess();
  v97 = 17;
  sub_1C1B957B8();
  swift_beginAccess();
  v96 = 18;
  sub_1C1B957B8();
  swift_beginAccess();
  v95 = 19;
  sub_1C1B957B8();
  swift_beginAccess();
  v94 = 20;
  sub_1C1B957B8();
  swift_beginAccess();
  v93 = 21;
  sub_1C1B957C8();
  v56 = OBJC_IVAR___APPCPromotedContent_videoRequestStartDate;
  swift_beginAccess();
  sub_1C1AA7E30(v21 + v56, v78, &qword_1EBF07F50, &qword_1C1B9A590);
  v92 = 22;
  sub_1C1B95788();
  sub_1C1AA7C8C(v78, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_beginAccess();
  v91 = 23;
  sub_1C1B957B8();
  v57 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  swift_beginAccess();
  if (*(v21 + v57))
  {
    type metadata accessor for MetricEventsTracker(0);
    v58 = swift_dynamicCastClass();
    if (v58)
    {
      swift_unknownObjectRetain();
    }

    v90 = v58;
    LOBYTE(v88) = 24;
    swift_unknownObjectRetain();
    sub_1C1AC1F08(&qword_1EBF09948, &qword_1C1BA3E28);
    sub_1C1B79B6C();
    sub_1C1B95808();
    swift_unknownObjectRelease();
  }

  v59 = v21 + OBJC_IVAR___APPCPromotedContent_discardReason;
  swift_beginAccess();
  v60 = *(v59 + 8);
  v88 = *v59;
  v89 = v60;
  LOBYTE(v86) = 31;
  sub_1C1B79A94();
  sub_1C1B95788();
  v61 = *(v21 + OBJC_IVAR___APPCPromotedContent_overriddenAdType + 8);
  v88 = *(v21 + OBJC_IVAR___APPCPromotedContent_overriddenAdType);
  v89 = v61;
  LOBYTE(v86) = 25;
  sub_1C1AC1F08(&qword_1EBF09940, &qword_1C1BA3E20);
  sub_1C1B79AE8();
  sub_1C1B95808();
  type metadata accessor for PrimitiveCreator();
  v62 = swift_dynamicCastClass();
  if (v62)
  {
    swift_unknownObjectRetain();
  }

  v88 = v62;
  LOBYTE(v86) = 26;
  sub_1C1B1D3A4();
  sub_1C1B95788();

  v63 = swift_dynamicCastClass();
  if (v63)
  {
    swift_unknownObjectRetain();
  }

  v88 = v63;
  LOBYTE(v86) = 34;
  sub_1C1B95788();

  LOBYTE(v88) = 27;
  sub_1C1B957B8();
  LOBYTE(v88) = 28;
  sub_1C1B957B8();
  v88 = *(v21 + OBJC_IVAR___APPCPromotedContent_placement);
  LOBYTE(v86) = 29;
  sub_1C1B5AD98();
  sub_1C1B95808();
  LOBYTE(v88) = 30;
  sub_1C1B95768();
  LOBYTE(v88) = 32;
  sub_1C1B95788();
  v88 = *(v21 + OBJC_IVAR___APPCPromotedContent_adServerEnvironments);
  LOBYTE(v86) = 33;
  sub_1C1AC1F08(&unk_1EBF07AA0, &qword_1C1B98CF0);
  sub_1C1AC34C8(&unk_1EDE6BBA0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1C1B95788();
  LOBYTE(v88) = 35;
  sub_1C1B95778();
  v64 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  swift_beginAccess();
  v65 = *(v21 + v64);
  if (!v65)
  {
    return (*(v113 + 8))(v75, v76);
  }

  v66 = objc_opt_self();
  v67 = v65;
  v68 = [v66 supportsSecureCoding];
  v69 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  [v67 encodeWithCoder_];
  [v69 finishEncoding];
  v70 = [v69 encodedData];
  v71 = sub_1C1B944D8();
  v73 = v72;

  v86 = v71;
  v87 = v73;
  v85 = 10;
  sub_1C1AE4B54();
  sub_1C1B95808();
  (*(v113 + 8))(v75, v76);

  return sub_1C1AE4A00(v71, v73);
}

uint64_t sub_1C1B742B0(uint64_t a1)
{
  v3 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C1B74314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  *(a1 + v5) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C1B743B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete;
  swift_beginAccess();
  v7 = *(v2 + v6);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1C1ACE190(0, v7[2] + 1, 1, v7);
    *(v2 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1C1ACE190((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = sub_1C1B32A6C;
  v11[5] = v5;
  *(v2 + v6) = v7;
  return swift_endAccess();
}

void sub_1C1B74618(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete;
  swift_beginAccess();
  v6 = *(*(v2 + v5) + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = *(v2 + v5);
      if (v8 >= *(v9 + 16))
      {
        break;
      }

      ++v8;
      v10 = *(v9 + v7 + 32);
      v11[0] = a1;
      v11[1] = a2;

      v10(v11);

      v7 += 16;
      if (v6 == v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

char *sub_1C1B7474C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  v6 = v5;
  v235 = a5;
  v243 = a3;
  v10 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v198 = &v196 - v11;
  v12 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v221 = (&v196 - v13);
  v14 = sub_1C1B94588();
  v242 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v197 = &v196 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v241 = &v196 - v17;
  v18 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v227 = &v196 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v196 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v240 = &v196 - v24;
  v25 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v239 = &v196 - v26;
  v27 = sub_1C1B945F8();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v232 = &v196 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v30 = a2;
  }

  else
  {
    sub_1C1B945E8();
    a1 = sub_1C1B945A8();
    v30 = v31;
    (*(v28 + 8))(v232, v27);
  }

  v247 = v30;
  v248 = v23;
  v249 = a1;
  v244 = v28;
  v233 = v27;
  v210 = a4;

  if (a4)
  {
    v246 = a4;
  }

  else
  {
    v32 = v232;
    sub_1C1B945E8();
    v243 = sub_1C1B945A8();
    v246 = v33;
    (*(v28 + 8))(v32, v27);
  }

  v34 = (v6 + OBJC_IVAR___APPCPromotedContent_impressionId);
  swift_beginAccess();
  v35 = v34[1];
  v236 = *v34;
  v237 = v35;
  v36 = OBJC_IVAR___APPCPromotedContent_metaData;
  swift_beginAccess();
  v209 = *(v6 + v36);
  v37 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  swift_beginAccess();
  sub_1C1AA7E30(v6 + v37, v239, &qword_1EBF07AC8, &qword_1C1B9CED0);
  v38 = v6 + OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload;
  swift_beginAccess();
  v39 = *(v38 + 8);
  v219 = *v38;
  v207 = v39;
  v40 = OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation;
  swift_beginAccess();
  v216 = *(v6 + v40);
  v41 = (v6 + OBJC_IVAR___APPCPromotedContent_brandName);
  swift_beginAccess();
  v42 = v41[1];
  v214 = *v41;
  v230 = v42;
  v43 = (v6 + OBJC_IVAR___APPCPromotedContent_campaignText);
  swift_beginAccess();
  v44 = v43[1];
  v215 = *v43;
  v234 = v44;
  v45 = OBJC_IVAR___APPCPromotedContent_startDate;
  swift_beginAccess();
  sub_1C1AA7E30(v6 + v45, v240, &qword_1EBF07F50, &qword_1C1B9A590);
  v46 = OBJC_IVAR___APPCPromotedContent_expirationDate;
  swift_beginAccess();
  v47 = v242;
  v48 = *(v242 + 16);
  v212 = v242 + 16;
  v213 = v48;
  v48(v241, (v6 + v46), v14);
  v49 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
  swift_beginAccess();
  v211 = *(v6 + v49);
  v50 = OBJC_IVAR___APPCPromotedContent_representations;
  swift_beginAccess();
  v229 = *(v6 + v50);
  v250 = v14;
  v51 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  swift_beginAccess();
  v238 = *(v6 + v51);
  v52 = OBJC_IVAR___APPCPromotedContent_error;
  swift_beginAccess();
  v200 = *(v6 + v52);
  v53 = v200;
  v54 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  swift_beginAccess();
  v55 = *(v6 + v54);
  v218 = *(v6 + OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp);
  v217 = *(v6 + OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp + 8);
  sub_1C1AA7E30(v6 + OBJC_IVAR___APPCPromotedContent_receivedReferenceTime, v248, &qword_1EBF07F50, &qword_1C1B9A590);
  v56 = *(v6 + OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd);
  v225 = *(v6 + OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd);
  v226 = v56;
  v245 = *(v6 + OBJC_IVAR___APPCPromotedContent_adServerEnvironments);
  v222 = *(v6 + OBJC_IVAR___APPCPromotedContent_diagnosticCode);
  v224 = type metadata accessor for PromotedContent(0);
  v57 = objc_allocWithZone(v224);
  v58 = &v57[OBJC_IVAR___APPCPromotedContent_impressionId];
  *v58 = 0;
  v58[1] = 0;
  v220 = v58;
  swift_unknownObjectWeakInit();
  v202 = OBJC_IVAR___APPCPromotedContent_metaData;
  *&v57[OBJC_IVAR___APPCPromotedContent_metaData] = 0;
  v59 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v201 = OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v60 = sub_1C1B944A8();
  (*(*(v60 - 8) + 56))(&v57[v59], 1, 1, v60);
  v61 = &v57[OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload];
  *v61 = 0;
  v61[1] = 0;
  v62 = &v57[OBJC_IVAR___APPCPromotedContent_brandName];
  v203 = &v57[OBJC_IVAR___APPCPromotedContent_brandName];
  *v62 = 0;
  v62[1] = 0;
  v63 = &v57[OBJC_IVAR___APPCPromotedContent_campaignText];
  v204 = &v57[OBJC_IVAR___APPCPromotedContent_campaignText];
  *v63 = 0;
  v63[1] = 0;
  v206 = OBJC_IVAR___APPCPromotedContent_installAttribution;
  *&v57[OBJC_IVAR___APPCPromotedContent_installAttribution] = 0;
  *&v57[OBJC_IVAR___APPCPromotedContent_bestRepresentation] = 0;
  v208 = OBJC_IVAR___APPCPromotedContent_error;
  *&v57[OBJC_IVAR___APPCPromotedContent_error] = 0;
  v205 = OBJC_IVAR___APPCPromotedContent_startDate;
  v64 = *(v47 + 56);
  v64(&v57[OBJC_IVAR___APPCPromotedContent_startDate], 1, 1, v250);
  *&v57[OBJC_IVAR___APPCPromotedContent_mediaMetricHelper] = 0;
  v57[OBJC_IVAR___APPCPromotedContent_attachedToView] = 0;
  v57[OBJC_IVAR___APPCPromotedContent_vended] = 0;
  v57[OBJC_IVAR___APPCPromotedContent_discarded] = 0;
  v57[OBJC_IVAR___APPCPromotedContent_consumed] = 0;
  v231 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *&v57[OBJC_IVAR___APPCPromotedContent_impressionThreshold] = 0x3FF0000000000000;
  v64(&v57[OBJC_IVAR___APPCPromotedContent_videoRequestStartDate], 1, 1, v250);
  v57[OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy] = 0;
  v65 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v196 = type metadata accessor for MetricEventsTracker(0);
  swift_allocObject();
  v66 = sub_1C1AB0510();
  v223 = v65;
  *&v57[v65] = v66;
  *&v57[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v67 = &v57[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v67 = 0;
  v67[1] = 0;
  v68 = &v57[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
  *v68 = 0;
  v68[8] = 1;
  v69 = OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v199 = *(v244 + 56);
  v70 = v233;
  v199(&v57[OBJC_IVAR___APPCPromotedContent__contextIdentifier], 1, 1, v233);
  v71 = &v57[OBJC_IVAR___APPCPromotedContent_discardReason];
  *v71 = 0;
  v71[8] = 1;
  *&v57[OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete] = MEMORY[0x1E69E7CC0];
  *&v57[OBJC_IVAR___APPCPromotedContent_appImpressionTask] = 0;
  v72 = &v57[OBJC_IVAR___APPCPromotedContent_appImpression];
  *v72 = 0u;
  *(v72 + 1) = 0u;
  *(v72 + 4) = 0;
  v57[OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView] = 0;
  v57[OBJC_IVAR___APPCPromotedContent_placeholder] = 0;
  v73 = &v57[OBJC_IVAR___APPCPromotedContent_identifier];
  v74 = v247;
  *v73 = v249;
  v73[1] = v74;
  swift_beginAccess();
  v75 = v235;
  swift_unknownObjectWeakAssign();
  v228 = v53;

  v76 = v209;

  v77 = v207;

  v210 = v238;

  v78 = [v75 identifier];
  v79 = v221;
  sub_1C1B945D8();

  v199(v79, 0, 1, v70);
  swift_beginAccess();
  sub_1C1B19384(v79, &v57[v69], &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v80 = v202;
  swift_beginAccess();
  *&v57[v80] = v76;

  v81 = v201;
  swift_beginAccess();
  sub_1C1B7953C(v239, &v57[v81], &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  *v61 = v219;
  v61[1] = v77;

  *&v57[OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation] = v216;
  v82 = v203;
  swift_beginAccess();
  v83 = v230;
  *v82 = v214;
  v82[1] = v83;

  v84 = v204;
  swift_beginAccess();
  v85 = v234;
  *v84 = v215;
  v84[1] = v85;

  v86 = v205;
  swift_beginAccess();
  sub_1C1B7953C(v240, &v57[v86], &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  v213(&v57[OBJC_IVAR___APPCPromotedContent_expirationDate], v241, v250);
  *&v57[OBJC_IVAR___APPCPromotedContent_serverUnfilledReason] = v211;
  *&v57[OBJC_IVAR___APPCPromotedContent_representations] = v229;
  v87 = v206;
  swift_beginAccess();
  v88 = *&v57[v87];
  *&v57[v87] = v238;
  v219 = v210;

  if (v200)
  {
    v89 = v228;
    v90 = sub_1C1B94448();
  }

  else
  {
    v90 = 0;
  }

  v91 = v208;
  swift_beginAccess();
  v92 = *&v57[v91];
  *&v57[v91] = v90;

  v93 = &v57[OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp];
  *v93 = v218;
  v93[8] = v217;
  v94 = OBJC_IVAR___APPCContext_newsContext;
  v95 = v235;
  swift_beginAccess();
  v96 = *&v95[v94];
  v97 = v248;
  v98 = v245;
  v99 = v233;
  v100 = v237;
  if (v96 && (v101 = (v96 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement), swift_beginAccess(), (v102 = v101[1]) != 0))
  {
    v103 = sub_1C1AB08D0(*v101, v102);
    v104 = v236;
  }

  else
  {
    v105 = [v95 current];
    v104 = v236;
    if (v105)
    {
      v103 = [v105 placement];
      swift_unknownObjectRelease();
    }

    else
    {
      v103 = 0;
    }
  }

  *&v57[OBJC_IVAR___APPCPromotedContent_placement] = v103;
  v106 = v231;
  swift_beginAccess();
  *&v57[v106] = v55;
  v107 = v220;
  swift_beginAccess();
  *v107 = v104;
  v107[1] = v100;

  v108 = &v57[OBJC_IVAR___APPCPromotedContent_journeyIdentifier];
  v109 = v246;
  *v108 = v243;
  v108[1] = v109;
  v246 = v109;
  sub_1C1AA7E30(v97, &v57[OBJC_IVAR___APPCPromotedContent_receivedReferenceTime], &qword_1EBF07F50, &qword_1C1B9A590);
  *&v57[OBJC_IVAR___APPCPromotedContent_adServerEnvironments] = v98;

  v110 = [v95 identifier];
  v111 = v232;
  sub_1C1B945D8();

  v112 = sub_1C1B945A8();
  v114 = v113;
  v115 = *(v244 + 8);
  v244 += 8;
  v220 = v115;
  (v115)(v111, v99);
  v116 = objc_opt_self();

  v234 = v116;
  [v116 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v117 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v221 = type metadata accessor for PrimitiveCreator();
  v118 = objc_allocWithZone(v221);
  v119 = &v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v120 = v98;
  v122 = v246;
  v121 = v247;
  *v119 = v249;
  v119[1] = v121;
  v123 = &v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v230 = v112;
  *v123 = v112;
  v123[1] = v114;
  v124 = &v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v124 = v243;
  v124[1] = v122;
  v125 = &v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v125 = v236;
  v125[1] = v100;
  v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v117;
  *&v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = v120;
  v126 = qword_1EDE6C538;

  v235 = v114;

  swift_unknownObjectRetain();
  if (v126 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v118[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v259.receiver = v118;
  v127 = v221;
  v259.super_class = v221;
  v128 = objc_msgSendSuper2(&v259, sel_init);
  swift_unknownObjectRelease();
  v229 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *&v57[OBJC_IVAR___APPCPromotedContent_primitiveCreator] = v128;
  v251 = 6911329;
  v252 = 0xE300000000000000;
  sub_1C1B945E8();
  v129 = sub_1C1B945A8();
  v131 = v130;
  (v220)(v111, v233);
  MEMORY[0x1C6906DF0](v129, v131);

  v132 = v251;
  v133 = v252;
  v134 = v245;

  [v234 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v135 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v136 = objc_allocWithZone(v127);
  v137 = &v136[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  *v137 = v249;
  v137[1] = v121;
  v138 = &v136[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v139 = v235;
  *v138 = v230;
  v138[1] = v139;
  v140 = &v136[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v140 = v132;
  v140[1] = v133;
  v141 = &v136[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  v142 = v237;
  *v141 = v236;
  v141[1] = v142;
  v136[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v136[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v135;
  *&v136[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v136[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = v134;
  sub_1C1AAD2FC(qword_1EDE6C540, &v136[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v258.receiver = v136;
  v258.super_class = v127;

  v143 = objc_msgSendSuper2(&v258, sel_init);
  v237 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *&v57[OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator] = v143;
  *&v57[OBJC_IVAR___APPCPromotedContent_diagnosticCode] = v222;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  sub_1C1B94908();
  swift_allocObject();
  v144 = sub_1C1B948E8();
  v145 = v227;
  sub_1C1AA7E30(v248, v227, &qword_1EBF07F50, &qword_1C1B9A590);
  v146 = v242;
  v147 = v250;
  v148 = (*(v242 + 48))(v145, 1, v250);
  v149 = v234;
  if (v148 == 1)
  {
    sub_1C1AA7C8C(v145, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v150 = v197;
    (*(v146 + 32))(v197, v145, v147);
    sub_1C1B948D8();
    (*(v146 + 8))(v150, v147);
  }

  type metadata accessor for MetricsUnloadTracker();
  v151 = swift_allocObject();
  *(v151 + 16) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v151 + 24) = 0;
  v244 = v151;
  *(v151 + 32) = 1;
  v236 = *&v57[v229];
  swift_unknownObjectRetain();
  [v149 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v152 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v153 = 0;
  v154 = 0;
  v155 = *&v57[OBJC_IVAR___APPCPromotedContent_placement] - 7005;
  if (v155 <= 3)
  {
    v153 = qword_1C1BA4170[v155];
    v154 = qword_1C1BA4190[v155];
  }

  v156 = type metadata accessor for JourneyMetricsHelper(0);
  ObjectType = swift_getObjectType();
  v158 = v247;

  v159 = v235;

  LOBYTE(v195) = 1;
  v161 = v158;
  v162 = v230;
  v163 = sub_1C1AB0E7C(v249, v161, v230, v159, v243, v246, v144, v160, v236, v152, v153, v154, v245, 0, 0, 0, 0, v195, v156, ObjectType);
  *&v57[OBJC_IVAR___APPCPromotedContent_metricsHelper] = v163;
  [v163 setImpressionThresholdDuration_];
  v164 = *&v57[v237];
  swift_unknownObjectRetain();
  [v234 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v165 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v166 = v223;
  swift_beginAccess();
  if (*&v57[v166])
  {
    v167 = *&v57[v166];
  }

  else
  {
    swift_allocObject();
    v167 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *&v57[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper] = sub_1C1AB1708(v162, v235, v249, v247, v164, v165, v167);
  v168 = v225;
  v57[OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd] = v226;
  v57[OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd] = v168;
  v257.receiver = v57;
  v257.super_class = v224;
  v169 = objc_msgSendSuper2(&v257, sel_init);
  v170 = sub_1C1AB17D0(v144, v244);
  v171 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  *&v169[v171] = v170;
  swift_unknownObjectRelease();
  v172 = *&v169[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v172 setNetworkType_];
  swift_unknownObjectRelease();
  v173 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v169[v173] setPromotedContent_];
  v174 = *&v169[v173];
  v175 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v255 = sub_1C1B7B4D4;
  v256 = v175;
  v251 = MEMORY[0x1E69E9820];
  v252 = 1107296256;
  v253 = sub_1C1B196F0;
  v254 = &unk_1F4153D68;
  v176 = _Block_copy(&v251);

  v177 = [v174 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v176);
  v178 = sub_1C1B94D88();
  v180 = v179;

  v181 = &v169[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v181 = v178;
  v181[1] = v180;

  if (v238)
  {
    v182 = v219;
    v183 = [v219 attributionSignature];
    v184 = sub_1C1B94D88();
    v186 = v185;

    v187 = OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView;
    swift_beginAccess();
    v169[v187] = 1;
    v188 = sub_1C1B95028();
    v189 = v198;
    (*(*(v188 - 8) + 56))(v198, 1, 1, v188);
    v190 = swift_allocObject();
    v190[2] = 0;
    v190[3] = 0;
    v190[4] = v169;
    v190[5] = v184;
    v190[6] = v186;
    v191 = v169;
    v192 = sub_1C1B025C8(0, 0, v189, &unk_1C1BA4100, v190);

    sub_1C1AA7C8C(v248, &qword_1EBF07F50, &qword_1C1B9A590);
    (*(v242 + 8))(v241, v250);
    sub_1C1AA7C8C(v240, &qword_1EBF07F50, &qword_1C1B9A590);
    sub_1C1AA7C8C(v239, &qword_1EBF07AC8, &qword_1C1B9CED0);
    v193 = OBJC_IVAR___APPCPromotedContent_appImpressionTask;
    swift_beginAccess();
    *&v191[v193] = v192;
  }

  else
  {

    sub_1C1AA7C8C(v248, &qword_1EBF07F50, &qword_1C1B9A590);
    (*(v242 + 8))(v241, v250);
    sub_1C1AA7C8C(v240, &qword_1EBF07F50, &qword_1C1B9A590);
    sub_1C1AA7C8C(v239, &qword_1EBF07AC8, &qword_1C1B9CED0);
  }

  return v169;
}

id PromotedContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C1B760B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for PromotedContent(0));
  result = PromotedContent.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C1B76134(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C69073C0](a1, a2, v7);
      sub_1C1AA576C(0, &qword_1EDE6CA00, 0x1E698A050);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C1AA576C(0, &qword_1EDE6CA00, 0x1E698A050);
    if (sub_1C1B95388() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C1B95398();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1C1B95268();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1C1B95278();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

char *sub_1C1B76358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, double a7, double a8)
{
  v193 = a6;
  v202 = a5;
  v203 = a1;
  v184 = a4;
  v198 = a2;
  v11 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v185 = v166 - v12;
  v13 = sub_1C1B94588();
  v200 = *(v13 - 8);
  v201 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v167 = v166 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v197 = v166 - v16;
  v17 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v181 = v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v199 = v166 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v196 = v166 - v22;
  v23 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v166 - v24;
  v26 = sub_1C1B945F8();
  v186 = *(v26 - 8);
  v27 = v186;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v32 = v166 - v31;
  sub_1C1B945E8();
  v33 = type metadata accessor for ContentRepresentation(0);
  v34 = objc_allocWithZone(v33);
  v35 = sub_1C1B945A8();
  v36 = &v34[OBJC_IVAR___APPCContentRepresentation_identifier];
  *v36 = v35;
  v36[1] = v37;
  (*(v27 + 16))(&v34[OBJC_IVAR___APPCContentRepresentation_id], v32, v26);
  v183 = a3;
  *&v34[OBJC_IVAR___APPCContentRepresentation_adType] = a3;
  *&v34[OBJC_IVAR___APPCContentRepresentation_desiredPosition] = 0;
  *&v34[OBJC_IVAR___APPCContentRepresentation_privacyMarkerPosition] = 0;
  *&v34[OBJC_IVAR___APPCContentRepresentation_privacyMarkerType] = 0;
  v38 = &v34[OBJC_IVAR___APPCContentRepresentation_adSize];
  *v38 = a7;
  v38[1] = a8;
  *&v34[OBJC_IVAR___APPCContentRepresentation_tapAction] = 0;
  *&v34[OBJC_IVAR___APPCContentRepresentation_adPolicyData] = 0;
  v208.receiver = v34;
  v208.super_class = v33;
  v39 = objc_msgSendSuper2(&v208, sel_init);
  v40 = *(v27 + 8);
  v194 = v32;
  v40(v32, v26);
  sub_1C1B945E8();
  v195 = sub_1C1B945A8();
  v188 = v41;
  v191 = v27 + 8;
  v192 = v40;
  v40(v30, v26);
  v42 = sub_1C1B944A8();
  v43 = *(*(v42 - 8) + 56);
  v190 = v25;
  (v43)(v25, 1, 1, v42);
  v44 = v201;
  v45 = *(v200 + 56);
  (v45)(v196, 1, 1, v201);
  swift_unknownObjectRetain();
  sub_1C1B94518();
  sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C1B9FE60;
  v178 = v46;
  v189 = v39;
  *(v46 + 32) = v39;
  (v45)(v199, 1, 1, v44);
  v182 = type metadata accessor for PromotedContent(0);
  v47 = objc_allocWithZone(v182);
  v48 = &v47[OBJC_IVAR___APPCPromotedContent_impressionId];
  *v48 = 0;
  v48[1] = 0;
  v179 = v48;
  v170 = &v47[OBJC_IVAR___APPCPromotedContent_context];
  swift_unknownObjectWeakInit();
  v171 = &v47[OBJC_IVAR___APPCPromotedContent_metaData];
  *&v47[OBJC_IVAR___APPCPromotedContent_metaData] = 0;
  v172 = &v47[OBJC_IVAR___APPCPromotedContent_disclosureURL];
  v43();
  v49 = v26;
  v50 = &v47[OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload];
  *v50 = 0;
  v50[1] = 0;
  v51 = &v47[OBJC_IVAR___APPCPromotedContent_brandName];
  *v51 = 0;
  v51[1] = 0;
  v173 = v51;
  v52 = &v47[OBJC_IVAR___APPCPromotedContent_campaignText];
  *v52 = 0;
  v52[1] = 0;
  v175 = v52;
  v176 = &v47[OBJC_IVAR___APPCPromotedContent_installAttribution];
  *&v47[OBJC_IVAR___APPCPromotedContent_installAttribution] = 0;
  *&v47[OBJC_IVAR___APPCPromotedContent_bestRepresentation] = 0;
  v177 = &v47[OBJC_IVAR___APPCPromotedContent_error];
  *&v47[OBJC_IVAR___APPCPromotedContent_error] = 0;
  v174 = &v47[OBJC_IVAR___APPCPromotedContent_startDate];
  v45();
  *&v47[OBJC_IVAR___APPCPromotedContent_mediaMetricHelper] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_attachedToView] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_vended] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_discarded] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_consumed] = 0;
  v187 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *&v47[OBJC_IVAR___APPCPromotedContent_impressionThreshold] = 0x3FF0000000000000;
  v53 = v198;
  (v45)(&v47[OBJC_IVAR___APPCPromotedContent_videoRequestStartDate], 1, 1, v44);
  v47[OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy] = 0;
  v54 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v166[1] = type metadata accessor for MetricEventsTracker(0);
  swift_allocObject();
  v55 = sub_1C1AB0510();
  v180 = v54;
  *&v47[v54] = v55;
  *&v47[OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v56 = &v47[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v56 = 0;
  v56[1] = 0;
  v57 = &v47[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
  *v57 = 0;
  v57[8] = 1;
  v58 = &v47[OBJC_IVAR___APPCPromotedContent__contextIdentifier];
  v169 = *(v186 + 56);
  v169(&v47[OBJC_IVAR___APPCPromotedContent__contextIdentifier], 1, 1, v49);
  v59 = &v47[OBJC_IVAR___APPCPromotedContent_discardReason];
  *v59 = 0;
  v59[8] = 1;
  *&v47[OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete] = MEMORY[0x1E69E7CC0];
  *&v47[OBJC_IVAR___APPCPromotedContent_appImpressionTask] = 0;
  v60 = &v47[OBJC_IVAR___APPCPromotedContent_appImpression];
  *v60 = 0u;
  *(v60 + 1) = 0u;
  *(v60 + 4) = 0;
  v47[OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView] = 0;
  if (v53)
  {
    v61 = v189;
    v62 = v53;
    v63 = v203;
  }

  else
  {
    strcpy(v204, "placeholder: ");
    HIWORD(v204[1]) = -4864;
    v64 = v189;
    v65 = v194;
    sub_1C1B945E8();
    v66 = sub_1C1B945A8();
    v68 = v67;
    v192(v65, v49);
    v69 = v66;
    v53 = 0;
    MEMORY[0x1C6906DF0](v69, v68);

    v63 = v204[0];
    v62 = v204[1];
  }

  LODWORD(v186) = v53 == 0;
  v47[OBJC_IVAR___APPCPromotedContent_placeholder] = v186;
  v70 = &v47[OBJC_IVAR___APPCPromotedContent_identifier];
  v203 = v63;
  *v70 = v63;
  v70[1] = v62;
  swift_beginAccess();
  v71 = v202;
  swift_unknownObjectWeakAssign();
  v198 = v62;

  v72 = [v71 identifier];
  v73 = v185;
  sub_1C1B945D8();

  v74 = v49;
  v169(v73, 0, 1, v49);
  swift_beginAccess();
  sub_1C1B19384(v73, v58, &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v75 = v171;
  swift_beginAccess();
  *v75 = 0;

  v76 = v172;
  swift_beginAccess();
  sub_1C1B7953C(v190, v76, &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  *v50 = 0;
  v50[1] = 0;

  *&v47[OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation] = 0;
  v77 = v173;
  swift_beginAccess();
  *v77 = 0;
  v77[1] = 0;

  v78 = v175;
  swift_beginAccess();
  *v78 = 0;
  v78[1] = 0;

  v79 = v174;
  swift_beginAccess();
  sub_1C1B7953C(v196, v79, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  (*(v200 + 16))(&v47[OBJC_IVAR___APPCPromotedContent_expirationDate], v197, v201);
  *&v47[OBJC_IVAR___APPCPromotedContent_serverUnfilledReason] = v193;
  *&v47[OBJC_IVAR___APPCPromotedContent_representations] = v178;
  v80 = v176;
  swift_beginAccess();
  v81 = *v80;
  *v80 = 0;

  v82 = v177;
  swift_beginAccess();
  v83 = *v82;
  *v82 = 0;

  v84 = &v47[OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp];
  *v84 = 0;
  v84[8] = 1;
  type metadata accessor for Context(0);
  v85 = swift_dynamicCastClass();
  if (v85 && (v86 = OBJC_IVAR___APPCContext_newsContext, v87 = v85, swift_beginAccess(), (v88 = *(v87 + v86)) != 0) && (v89 = (v88 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement), swift_beginAccess(), (v90 = v89[1]) != 0))
  {
    v91 = sub_1C1AB08D0(*v89, v90);
    v92 = v194;
    v93 = v192;
  }

  else
  {
    v94 = [v202 current];
    v92 = v194;
    v93 = v192;
    if (v94)
    {
      v91 = [v94 placement];
      swift_unknownObjectRelease();
    }

    else
    {
      v91 = 0;
    }
  }

  v168 = v74;
  *&v47[OBJC_IVAR___APPCPromotedContent_placement] = v91;
  v95 = v187;
  swift_beginAccess();
  *&v47[v95] = 0x3FF0000000000000;
  v96 = v179;
  swift_beginAccess();
  *v96 = 0;
  v96[1] = 0;

  v97 = &v47[OBJC_IVAR___APPCPromotedContent_journeyIdentifier];
  v98 = v188;
  *v97 = v195;
  v97[1] = v98;
  sub_1C1AA7E30(v199, &v47[OBJC_IVAR___APPCPromotedContent_receivedReferenceTime], &qword_1EBF07F50, &qword_1C1B9A590);
  *&v47[OBJC_IVAR___APPCPromotedContent_adServerEnvironments] = 0;

  v99 = [v202 identifier];
  sub_1C1B945D8();

  v100 = sub_1C1B945A8();
  v102 = v101;
  v93(v92, v74);
  v193 = objc_opt_self();
  [v193 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v103 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v104 = type metadata accessor for PrimitiveCreator();
  v105 = objc_allocWithZone(v104);
  v106 = &v105[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v107 = v198;
  *v106 = v203;
  v106[1] = v107;
  v108 = &v105[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v185 = v100;
  *v108 = v100;
  v108[1] = v102;
  v109 = &v105[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v109 = v195;
  v109[1] = v98;
  v110 = &v105[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v110 = 0;
  v110[1] = 0;
  v105[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = v186;
  *&v105[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v103;
  *&v105[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v105[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  v111 = qword_1EDE6C538;

  v194 = v102;

  swift_unknownObjectRetain();
  if (v111 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v105[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v207.receiver = v105;
  v207.super_class = v104;
  v112 = objc_msgSendSuper2(&v207, sel_init);
  swift_unknownObjectRelease();
  v179 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *&v47[OBJC_IVAR___APPCPromotedContent_primitiveCreator] = v112;
  v204[0] = 6911329;
  v204[1] = 0xE300000000000000;
  sub_1C1B945E8();
  v113 = sub_1C1B945A8();
  v115 = v114;
  v192(v92, v168);
  MEMORY[0x1C6906DF0](v113, v115);

  v116 = v204[0];
  v117 = v204[1];
  [v193 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v118 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v119 = objc_allocWithZone(v104);
  v120 = &v119[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v121 = v198;
  *v120 = v203;
  v120[1] = v121;
  v122 = &v119[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v123 = v194;
  *v122 = v185;
  v122[1] = v123;
  v124 = &v119[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v124 = v116;
  v124[1] = v117;
  v125 = &v119[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  *v125 = 0;
  v125[1] = 0;
  v119[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = v186;
  *&v119[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v118;
  *&v119[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v119[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = 0;
  sub_1C1AAD2FC(qword_1EDE6C540, &v119[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v206.receiver = v119;
  v206.super_class = v104;

  v126 = objc_msgSendSuper2(&v206, sel_init);
  v186 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *&v47[OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator] = v126;
  *&v47[OBJC_IVAR___APPCPromotedContent_diagnosticCode] = -1;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  sub_1C1B94908();
  swift_allocObject();
  v127 = sub_1C1B948E8();
  v128 = v181;
  sub_1C1AA7E30(v199, v181, &qword_1EBF07F50, &qword_1C1B9A590);
  v130 = v200;
  v129 = v201;
  v131 = (*(v200 + 48))(v128, 1, v201);
  v191 = v127;
  if (v131 == 1)
  {
    sub_1C1AA7C8C(v128, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v132 = v167;
    (*(v130 + 32))(v167, v128, v129);
    sub_1C1B948D8();
    (*(v130 + 8))(v132, v129);
  }

  type metadata accessor for MetricsUnloadTracker();
  v133 = swift_allocObject();
  v133[2] = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v133 + 24) = 0;
  v192 = v133;
  v133[4] = 1;
  v181 = *(v179 + v47);
  swift_unknownObjectRetain();
  [v193 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v134 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v135 = 0;
  v136 = 0;
  v137 = *&v47[OBJC_IVAR___APPCPromotedContent_placement] - 7005;
  if (v137 <= 3)
  {
    v135 = qword_1C1BA4170[v137];
    v136 = qword_1C1BA4190[v137];
  }

  v179 = v135;
  v138 = type metadata accessor for JourneyMetricsHelper(0);
  ObjectType = swift_getObjectType();
  v140 = v198;

  v141 = v194;

  v142 = v191;

  v143 = v192;

  LOBYTE(v165) = 1;
  v144 = v140;
  v145 = v185;
  v146 = sub_1C1AB0E7C(v203, v144, v185, v141, v195, v188, v142, v143, v181, v134, v179, v136, 0, 0, 0, 0, 0, v165, v138, ObjectType);
  *&v47[OBJC_IVAR___APPCPromotedContent_metricsHelper] = v146;
  [v146 setImpressionThresholdDuration_];
  v147 = *&v47[v186];
  swift_unknownObjectRetain();
  [v193 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v148 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v149 = v180;
  swift_beginAccess();
  if (*&v47[v149])
  {
    v150 = *&v47[v149];
  }

  else
  {
    swift_allocObject();
    v150 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *&v47[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper] = sub_1C1AB1708(v145, v194, v203, v198, v147, v148, v150);
  v47[OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd] = 0;
  v47[OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd] = 0;
  v205.receiver = v47;
  v205.super_class = v182;
  v151 = objc_msgSendSuper2(&v205, sel_init);
  v152 = sub_1C1AB17D0(v142, v192);
  v153 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  *&v151[v153] = v152;
  swift_unknownObjectRelease();
  v154 = *&v151[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v154 setNetworkType_];
  swift_unknownObjectRelease();
  v155 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v151[v155] setPromotedContent_];
  v156 = *&v151[v155];
  v157 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v204[4] = sub_1C1B7B4D4;
  v204[5] = v157;
  v204[0] = MEMORY[0x1E69E9820];
  v204[1] = 1107296256;
  v204[2] = sub_1C1B196F0;
  v204[3] = &unk_1F4153E08;
  v158 = _Block_copy(v204);

  v159 = [v156 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v158);
  v160 = sub_1C1B94D88();
  v162 = v161;

  v163 = &v151[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v163 = v160;
  v163[1] = v162;
  swift_unknownObjectRelease();

  sub_1C1AA7C8C(v199, &qword_1EBF07F50, &qword_1C1B9A590);
  (*(v200 + 8))(v197, v201);
  sub_1C1AA7C8C(v196, &qword_1EBF07F50, &qword_1C1B9A590);
  sub_1C1AA7C8C(v190, &qword_1EBF07AC8, &qword_1C1B9CED0);
  [swift_unknownObjectRetain() createdWithAdType:v183 container:v184];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v151;
}

char *_s15PromotedContentAAC11contentData7contextABSo09APContentD0C_AA17PromotableContext_pSgtcfC_0(void *a1, void *a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF08560, &qword_1C1B9AF90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v233 = &v231 - v5;
  v6 = sub_1C1B945F8();
  v265 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v257 = &v231 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v263 = &v231 - v9;
  v10 = sub_1C1B94588();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v232 = &v231 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v270 = &v231 - v14;
  v15 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v254 = &v231 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v274 = &v231 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v269 = &v231 - v20;
  v21 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v268 = &v231 - v22;
  v23 = sub_1C1B87B74([a1 serverUnfilledReason]);
  v25 = v24;
  v26 = [a1 representations];
  if (v26)
  {
    v27 = v26;
    sub_1C1AA576C(0, &qword_1EDE6CA00, 0x1E698A050);
    sub_1C1B7B340();
    v28 = sub_1C1B95058();

    sub_1C1B6774C(v29, v28);
    v260 = v30;
  }

  else
  {
    v260 = MEMORY[0x1E69E7CC0];
  }

  v31 = [a1 identifier];
  v32 = sub_1C1B94D88();
  v277 = v33;
  v278 = v32;

  v34 = [a1 journeyIdentifier];
  v267 = sub_1C1B94D88();
  v258 = v35;

  v36 = [a1 impressionId];
  if (v36)
  {
    v37 = v36;
    v264 = sub_1C1B94D88();
    v273 = v38;
  }

  else
  {
    v264 = 0;
    v273 = 0;
  }

  v39 = v269;
  v40 = [a1 metadata];
  if (v40)
  {
    v41 = v40;
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    v262 = sub_1C1B94CB8();
  }

  else
  {
    v262 = 0;
  }

  v266 = v6;
  v42 = [a1 disclosureURL];
  if (v42)
  {
    v43 = v268;
    v44 = v42;
    sub_1C1B94488();

    v45 = sub_1C1B944A8();
    (*(*(v45 - 8) + 56))(v43, 0, 1, v45);
  }

  else
  {
    v46 = sub_1C1B944A8();
    (*(*(v46 - 8) + 56))(v268, 1, 1, v46);
  }

  v47 = [a1 disclosureRendererPayload];
  if (v47)
  {
    v48 = v47;
    v261 = sub_1C1B94D88();
    v250 = v49;
  }

  else
  {
    v261 = 0;
    v250 = 0;
  }

  v247 = [a1 minimumTimeBetweenPresentation];
  v50 = [a1 brandName];
  if (v50)
  {
    v51 = v50;
    v52 = sub_1C1B94D88();
    v245 = v53;
    v246 = v52;
  }

  else
  {
    v245 = 0;
    v246 = 0;
  }

  v54 = [a1 campaignText];
  if (v54)
  {
    v55 = v54;
    v56 = sub_1C1B94D88();
    v243 = v57;
    v244 = v56;
  }

  else
  {
    v243 = 0;
    v244 = 0;
  }

  v58 = [a1 startDate];
  if (v58)
  {
    v59 = v58;
    sub_1C1B94558();

    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  v271 = v11;
  v61 = *(v11 + 56);
  (v61)(v39, v60, 1, v10);
  v62 = [a1 expirationDate];
  sub_1C1B94558();

  v63 = 200;
  if ((v25 & 1) == 0)
  {
    v63 = v23;
  }

  v240 = v63;
  v241 = [a1 installAttribution];
  v259 = [a1 error];
  [a1 impressionThreshold];
  v65 = v64;
  [a1 serverResponseReceivedTimestamp];
  v67 = v66;
  v68 = 0;
  if (v66 > 0.0)
  {
    [a1 serverResponseReceivedTimestamp];
    v68 = v69;
  }

  v70 = [a1 receivedReferenceTime];
  v71 = v274;
  if (v70)
  {
    v72 = v70;
    sub_1C1B94558();

    v73 = 0;
  }

  else
  {
    v73 = 1;
  }

  (v61)(v71, v73, 1, v10);
  v253 = [a1 isLocationAvailableForAd];
  v252 = [a1 isPAAvailableForAd];
  v74 = [a1 adServerEnvironment];
  v275 = v10;
  v276 = a2;
  if (v74)
  {
    v75 = v74;
    v272 = sub_1C1B94EC8();
  }

  else
  {
    v272 = 0;
  }

  v255 = a1;
  v248 = [a1 diagnosticCode];
  v251 = type metadata accessor for PromotedContent(0);
  v76 = objc_allocWithZone(v251);
  v77 = (v76 + OBJC_IVAR___APPCPromotedContent_impressionId);
  *v77 = 0;
  v77[1] = 0;
  v242 = v77;
  swift_unknownObjectWeakInit();
  v234 = v76 + OBJC_IVAR___APPCPromotedContent_metaData;
  *(v76 + OBJC_IVAR___APPCPromotedContent_metaData) = 0;
  v78 = v76 + OBJC_IVAR___APPCPromotedContent_disclosureURL;
  v79 = sub_1C1B944A8();
  v80 = *(*(v79 - 8) + 56);
  v235 = v78;
  v80(v78, 1, 1, v79);
  v81 = v76 + OBJC_IVAR___APPCPromotedContent_disclosureRendererPayload;
  *v81 = 0;
  v81[1] = 0;
  v82 = (v76 + OBJC_IVAR___APPCPromotedContent_brandName);
  *v82 = 0;
  v82[1] = 0;
  v83 = (v76 + OBJC_IVAR___APPCPromotedContent_campaignText);
  *v83 = 0;
  v83[1] = 0;
  v236 = v83;
  v238 = (v76 + OBJC_IVAR___APPCPromotedContent_installAttribution);
  *(v76 + OBJC_IVAR___APPCPromotedContent_installAttribution) = 0;
  *(v76 + OBJC_IVAR___APPCPromotedContent_bestRepresentation) = 0;
  v239 = OBJC_IVAR___APPCPromotedContent_error;
  *(v76 + OBJC_IVAR___APPCPromotedContent_error) = 0;
  v237 = v76 + OBJC_IVAR___APPCPromotedContent_startDate;
  v84 = v275;
  v61();
  *(v76 + OBJC_IVAR___APPCPromotedContent_mediaMetricHelper) = 0;
  *(v76 + OBJC_IVAR___APPCPromotedContent_attachedToView) = 0;
  *(v76 + OBJC_IVAR___APPCPromotedContent_vended) = 0;
  *(v76 + OBJC_IVAR___APPCPromotedContent_discarded) = 0;
  *(v76 + OBJC_IVAR___APPCPromotedContent_consumed) = 0;
  v256 = OBJC_IVAR___APPCPromotedContent_impressionThreshold;
  *(v76 + OBJC_IVAR___APPCPromotedContent_impressionThreshold) = 0x3FF0000000000000;
  (v61)(v76 + OBJC_IVAR___APPCPromotedContent_videoRequestStartDate, 1, 1, v84);
  *(v76 + OBJC_IVAR___APPCPromotedContent_discardedDueToPolicy) = 0;
  v85 = OBJC_IVAR___APPCPromotedContent_metricEventsTracking;
  v231 = type metadata accessor for MetricEventsTracker(0);
  swift_allocObject();
  v86 = sub_1C1AB0510();
  v249 = v85;
  *(v76 + v85) = v86;
  *(v76 + OBJC_IVAR___APPCPromotedContent_unfilledReasonDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v87 = v76 + OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID;
  *v87 = 0;
  v87[1] = 0;
  v88 = v76 + OBJC_IVAR___APPCPromotedContent_overriddenAdType;
  *v88 = 0;
  v88[8] = 1;
  v89 = v76 + OBJC_IVAR___APPCPromotedContent__contextIdentifier;
  v90 = v266;
  v91 = *(v265 + 56);
  v91(v76 + OBJC_IVAR___APPCPromotedContent__contextIdentifier, 1, 1, v266);
  v92 = v76 + OBJC_IVAR___APPCPromotedContent_discardReason;
  *v92 = 0;
  v92[8] = 1;
  *(v76 + OBJC_IVAR___APPCPromotedContent_onPromotedContentComplete) = MEMORY[0x1E69E7CC0];
  *(v76 + OBJC_IVAR___APPCPromotedContent_appImpressionTask) = 0;
  v93 = v76 + OBJC_IVAR___APPCPromotedContent_appImpression;
  *v93 = 0u;
  *(v93 + 1) = 0u;
  *(v93 + 4) = 0;
  *(v76 + OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView) = 0;
  *(v76 + OBJC_IVAR___APPCPromotedContent_placeholder) = 0;
  v94 = v76 + OBJC_IVAR___APPCPromotedContent_identifier;
  v95 = v277;
  *v94 = v278;
  v94[1] = v95;
  swift_beginAccess();
  v96 = v276;
  swift_unknownObjectWeakAssign();
  if (v96)
  {

    v97 = [swift_unknownObjectRetain() identifier];
    v98 = v263;
    sub_1C1B945D8();

    v91(v98, 0, 1, v90);
  }

  else
  {
    v99 = v263;
    v91(v263, 1, 1, v90);
    v98 = v99;
  }

  swift_beginAccess();
  sub_1C1B19384(v98, v89, &unk_1EBF098E0, &qword_1C1BA22A0);
  swift_endAccess();
  v100 = v234;
  swift_beginAccess();
  *v100 = v262;

  v101 = v235;
  swift_beginAccess();
  sub_1C1B7953C(v268, v101, &qword_1EBF07AC8, &qword_1C1B9CED0);
  swift_endAccess();
  swift_beginAccess();
  v102 = v250;
  *v81 = v261;
  v81[1] = v102;

  *(v76 + OBJC_IVAR___APPCPromotedContent_minimumTimeBetweenPresentation) = v247;
  swift_beginAccess();
  v103 = v245;
  *v82 = v246;
  v82[1] = v103;

  v104 = v236;
  swift_beginAccess();
  v105 = v243;
  *v104 = v244;
  v104[1] = v105;

  v106 = v237;
  swift_beginAccess();
  sub_1C1B7953C(v269, v106, &qword_1EBF07F50, &qword_1C1B9A590);
  swift_endAccess();
  (*(v271 + 16))(v76 + OBJC_IVAR___APPCPromotedContent_expirationDate, v270, v275);
  *(v76 + OBJC_IVAR___APPCPromotedContent_serverUnfilledReason) = v240;
  *(v76 + OBJC_IVAR___APPCPromotedContent_representations) = v260;
  v107 = v238;
  swift_beginAccess();
  v108 = *v107;
  v109 = v241;
  *v107 = v241;

  v110 = v109;

  v111 = v273;
  if (v259)
  {
    v112 = v259;
    v113 = sub_1C1B94448();
  }

  else
  {
    v113 = 0;
  }

  v114 = v277;
  v115 = v258;
  v116 = v264;
  v117 = v239;
  swift_beginAccess();
  v118 = *(v76 + v117);
  *(v76 + v117) = v113;

  v119 = v76 + OBJC_IVAR___APPCPromotedContent_serverResponseReceivedTimestamp;
  *v119 = v68;
  v119[8] = v67 <= 0.0;
  v120 = v276;
  if (!v276)
  {
    goto LABEL_48;
  }

  type metadata accessor for Context(0);
  v121 = swift_dynamicCastClass();
  if (v121)
  {
    v122 = OBJC_IVAR___APPCContext_newsContext;
    v123 = v121;
    swift_beginAccess();
    v124 = *(v123 + v122);
    v120 = v276;
    if (v124)
    {
      v125 = (v124 + OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement);
      swift_beginAccess();
      v126 = v125[1];
      if (v126)
      {
        v127 = sub_1C1AB08D0(*v125, v126);
        goto LABEL_49;
      }
    }
  }

  v128 = [v120 current];
  if (v128)
  {
    v127 = [v128 placement];
    swift_unknownObjectRelease();
  }

  else
  {
LABEL_48:
    v127 = 0;
  }

LABEL_49:
  v250 = v110;
  *(v76 + OBJC_IVAR___APPCPromotedContent_placement) = v127;
  v129 = v256;
  swift_beginAccess();
  *(v76 + v129) = v65;
  v130 = v242;
  swift_beginAccess();
  *v130 = v116;
  v130[1] = v111;

  v131 = v76 + OBJC_IVAR___APPCPromotedContent_journeyIdentifier;
  *v131 = v267;
  v131[1] = v115;
  sub_1C1AA7E30(v274, v76 + OBJC_IVAR___APPCPromotedContent_receivedReferenceTime, &qword_1EBF07F50, &qword_1C1B9A590);
  v132 = v272;
  *(v76 + OBJC_IVAR___APPCPromotedContent_adServerEnvironments) = v272;
  v133 = v276;
  if (v276)
  {

    v134 = [v133 identifier];
    v135 = v257;
    sub_1C1B945D8();

    v263 = sub_1C1B945A8();
    v137 = v136;
    v246 = *(v265 + 8);
    v246(v135, v266);
  }

  else
  {
    v279[0] = 0;
    v279[1] = 0xE000000000000000;

    sub_1C1B95468();

    strcpy(v279, "missingContext");
    HIBYTE(v279[1]) = -18;
    v138 = v257;
    sub_1C1B945E8();
    v139 = sub_1C1B945A8();
    v141 = v140;
    v246 = *(v265 + 8);
    v246(v138, v266);
    MEMORY[0x1C6906DF0](v139, v141);
    v132 = v272;

    v137 = v279[1];
    v263 = v279[0];
  }

  v142 = objc_opt_self();

  v261 = v142;
  [v142 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v143 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v144 = type metadata accessor for PrimitiveCreator();
  v145 = objc_allocWithZone(v144);
  v146 = &v145[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  *v146 = v278;
  v146[1] = v114;
  v147 = &v145[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  *v147 = v263;
  v147[1] = v137;
  v148 = &v145[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v148 = v267;
  v148[1] = v115;
  v149 = &v145[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  v150 = v137;
  v151 = v273;
  *v149 = v264;
  v149[1] = v151;
  v145[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v145[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v143;
  *&v145[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  *&v145[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = v132;
  v152 = qword_1EDE6C538;

  v273 = v151;

  v262 = v150;

  swift_unknownObjectRetain();
  if (v152 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(qword_1EDE6C540, &v145[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v282.receiver = v145;
  v153 = v144;
  v282.super_class = v144;
  v154 = objc_msgSendSuper2(&v282, sel_init);
  swift_unknownObjectRelease();
  v247 = OBJC_IVAR___APPCPromotedContent_primitiveCreator;
  *(v76 + OBJC_IVAR___APPCPromotedContent_primitiveCreator) = v154;
  v279[0] = 6911329;
  v279[1] = 0xE300000000000000;
  v155 = v257;
  sub_1C1B945E8();
  v156 = sub_1C1B945A8();
  v158 = v157;
  v246(v155, v266);
  MEMORY[0x1C6906DF0](v156, v158);

  v159 = v279[0];
  v160 = v279[1];

  [v261 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v161 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v162 = objc_allocWithZone(v153);
  v163 = &v162[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_promotedContentIdentifier];
  v164 = v277;
  *v163 = v278;
  v163[1] = v164;
  v165 = &v162[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_contextIdentifier];
  v166 = v262;
  *v165 = v263;
  v165[1] = v166;
  v167 = &v162[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_journeyIdentifier];
  *v167 = v159;
  v167[1] = v160;
  v168 = &v162[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_impressionId];
  v169 = v273;
  *v168 = v264;
  v168[1] = v169;
  v162[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_placeholder] = 0;
  *&v162[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_receiver] = v161;
  *&v162[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_branch] = 0;
  v272 = v132;
  *&v162[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_environment] = v132;
  sub_1C1AAD2FC(qword_1EDE6C540, &v162[OBJC_IVAR____TtC15PromotedContent16PrimitiveCreator_eventPipeline]);
  v281.receiver = v162;
  v281.super_class = v153;

  v170 = objc_msgSendSuper2(&v281, sel_init);
  v265 = OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator;
  *(v76 + OBJC_IVAR___APPCPromotedContent_diagnosticPrimitiveCreator) = v170;
  *(v76 + OBJC_IVAR___APPCPromotedContent_diagnosticCode) = v248;
  [objc_allocWithZone(MEMORY[0x1E69861C0]) init];
  sub_1C1B94908();
  swift_allocObject();
  v171 = sub_1C1B948E8();
  v172 = v254;
  sub_1C1AA7E30(v274, v254, &qword_1EBF07F50, &qword_1C1B9A590);
  v173 = v271;
  v174 = v275;
  v175 = (*(v271 + 48))(v172, 1, v275);
  v266 = v171;
  if (v175 == 1)
  {
    sub_1C1AA7C8C(v172, &qword_1EBF07F50, &qword_1C1B9A590);
  }

  else
  {
    v176 = v232;
    (*(v173 + 32))(v232, v172, v174);
    sub_1C1B948D8();
    (*(v173 + 8))(v176, v174);
  }

  type metadata accessor for MetricsUnloadTracker();
  v177 = swift_allocObject();
  *(v177 + 16) = [objc_allocWithZone(MEMORY[0x1E69861D8]) initWithOptions_];
  *(v177 + 24) = 0;
  v273 = v177;
  *(v177 + 32) = 1;
  v264 = *&v247[v76];
  swift_unknownObjectRetain();
  [v261 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v178 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v179 = 0;
  v180 = 0;
  v181 = *(v76 + OBJC_IVAR___APPCPromotedContent_placement) - 7005;
  if (v181 <= 3)
  {
    v179 = qword_1C1BA4170[v181];
    v180 = qword_1C1BA4190[v181];
  }

  v257 = v179;
  v182 = type metadata accessor for JourneyMetricsHelper(0);
  ObjectType = swift_getObjectType();
  v184 = v277;

  v185 = v262;

  v186 = v266;

  v187 = v273;

  LOBYTE(v230) = 1;
  v188 = v184;
  v189 = v263;
  v190 = sub_1C1AB0E7C(v278, v188, v263, v185, v267, v258, v186, v187, v264, v178, v257, v180, v272, 0, 0, 0, 0, v230, v182, ObjectType);
  *(v76 + OBJC_IVAR___APPCPromotedContent_metricsHelper) = v190;
  [v190 setImpressionThresholdDuration_];
  v191 = *(v76 + v265);
  swift_unknownObjectRetain();
  [v261 daemonDeliveryClass];
  swift_getObjCClassMetadata();
  v192 = [swift_getObjCClassFromMetadata() daemonDelivery];
  v193 = v249;
  swift_beginAccess();
  if (*(v76 + v193))
  {
    v194 = *(v76 + v193);
  }

  else
  {
    swift_allocObject();
    v194 = sub_1C1AB0510();
  }

  type metadata accessor for DiagnosticMetricsHelper();
  swift_getObjectType();
  swift_unknownObjectRetain();
  *(v76 + OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper) = sub_1C1AB1708(v189, v262, v278, v277, v191, v192, v194);
  v195 = v252;
  *(v76 + OBJC_IVAR___APPCPromotedContent_isLocationAvailableForAd) = v253;
  *(v76 + OBJC_IVAR___APPCPromotedContent_isPAAvailableForAd) = v195;
  v280.receiver = v76;
  v280.super_class = v251;
  v196 = objc_msgSendSuper2(&v280, sel_init);
  v197 = sub_1C1AB17D0(v186, v273);
  v198 = OBJC_IVAR___APPCPromotedContent_mediaMetricHelper;
  swift_beginAccess();
  *&v196[v198] = v197;
  swift_unknownObjectRelease();
  v199 = *&v196[OBJC_IVAR___APPCPromotedContent_diagnosticMetricHelper];
  swift_unknownObjectRetain();
  [v199 setNetworkType_];
  swift_unknownObjectRelease();
  v200 = OBJC_IVAR___APPCPromotedContent_metricsHelper;
  swift_beginAccess();
  [*&v196[v200] setPromotedContent_];
  v201 = *&v196[v200];
  v202 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v279[4] = sub_1C1B7B4D4;
  v279[5] = v202;
  v279[0] = MEMORY[0x1E69E9820];
  v279[1] = 1107296256;
  v279[2] = sub_1C1B196F0;
  v279[3] = &unk_1F4153E30;
  v203 = _Block_copy(v279);

  v204 = [v201 registerForPCUsedEventWithAction_];
  swift_unknownObjectRelease();
  _Block_release(v203);
  v205 = sub_1C1B94D88();
  v207 = v206;

  v208 = &v196[OBJC_IVAR___APPCPromotedContent_promotedContentUsedRegisterID];
  *v208 = v205;
  v208[1] = v207;

  v209 = v250;
  if (v250)
  {
    v210 = [v250 attributionSignature];
    v211 = sub_1C1B94D88();
    v213 = v212;

    v214 = OBJC_IVAR___APPCPromotedContent_shouldSetupAttributionEventView;
    swift_beginAccess();
    v196[v214] = 1;
    v215 = sub_1C1B95028();
    v216 = v233;
    (*(*(v215 - 8) + 56))(v233, 1, 1, v215);
    v217 = swift_allocObject();
    v217[2] = 0;
    v217[3] = 0;
    v217[4] = v196;
    v217[5] = v211;
    v217[6] = v213;
    v218 = v196;
    v219 = sub_1C1B025C8(0, 0, v216, &unk_1C1BA4108, v217);
    swift_unknownObjectRelease();

    sub_1C1AA7C8C(v274, &qword_1EBF07F50, &qword_1C1B9A590);
    (*(v271 + 8))(v270, v275);
    sub_1C1AA7C8C(v269, &qword_1EBF07F50, &qword_1C1B9A590);
    sub_1C1AA7C8C(v268, &qword_1EBF07AC8, &qword_1C1B9CED0);
    v220 = OBJC_IVAR___APPCPromotedContent_appImpressionTask;
    swift_beginAccess();
    *&v218[v220] = v219;
  }

  else
  {
    swift_unknownObjectRelease();

    sub_1C1AA7C8C(v274, &qword_1EBF07F50, &qword_1C1B9A590);
    (*(v271 + 8))(v270, v275);
    sub_1C1AA7C8C(v269, &qword_1EBF07F50, &qword_1C1B9A590);
    sub_1C1AA7C8C(v268, &qword_1EBF07AC8, &qword_1C1B9CED0);
  }

  v221 = v255;
  if (v260 >> 62)
  {
    v223 = sub_1C1B953A8();

    if (v223)
    {
      goto LABEL_67;
    }

LABEL_69:
    v224 = [v221 representations];
    if (v224)
    {
      sub_1C1AA576C(0, &qword_1EDE6CA00, 0x1E698A050);
      sub_1C1B7B340();
      v225 = sub_1C1B95058();

      v226 = sub_1C1B67A68(v225);

      if (v226)
      {
        v224 = [v226 placementType];

        swift_unknownObjectRelease();
        v227 = 0;
        if (v224 >= 5)
        {
          if (v224 == 5)
          {
            v227 = 0;
            v224 = 6;
          }

          else if (v224 != 7)
          {
            v224 = 0;
            v227 = 0;
          }
        }

        goto LABEL_78;
      }

      swift_unknownObjectRelease();
      v224 = 0;
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v227 = 1;
LABEL_78:
    v228 = &v196[OBJC_IVAR___APPCPromotedContent_overriddenAdType];
    *v228 = v224;
    v228[8] = v227;
    return v196;
  }

  v222 = *((v260 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v222)
  {
    goto LABEL_69;
  }

LABEL_67:

  swift_unknownObjectRelease();
  return v196;
}