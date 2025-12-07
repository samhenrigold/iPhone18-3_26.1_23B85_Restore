uint64_t sub_100208244(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v5 = sub_100208594;
  }

  else
  {
    v5 = sub_100208374;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100208374()
{
  v1 = v0[13];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_19:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v0[13];
    if (!v3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[13];
    if (!v3)
    {
      goto LABEL_20;
    }
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  v1 = _swiftEmptyArrayStorage;
  do
  {
    v8 = v5;
    while (1)
    {
      if (v6)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v2 + 16))
        {
          goto LABEL_18;
        }

        v9 = *(v7 + 8 * v8);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v8;
      if (v5 == v3)
      {
        goto LABEL_20;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v1 = _swiftEmptyArrayStorage;
  }

  while (v5 != v3);
LABEL_20:
  v12 = v0[9];
  v11 = v0[10];
  v14 = v0[7];
  v13 = v0[8];
  v15 = v0[5];
  v16 = v0[6];

  v17 = sub_100207284(_swiftEmptyArrayStorage);

  (*(v16 + 8))(v14, v15);
  (*(v12 + 8))(v11, v13);

  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_100208594()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10020864C(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002086B4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_100140278(&qword_1008E1890, &qword_1006DDC40);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_100140278(&qword_1008E1898, &qword_1006DDC48);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1002087E8, 0, 0);
}

uint64_t sub_1002087E8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = [objc_opt_self() predicateForWorkoutsWithWorkoutActivityType:84];
  v0[11] = v4;
  v5 = [objc_opt_self() notPredicateWithSubpredicate:v4];
  v0[12] = v5;
  sub_1000059F8(0, &qword_1008E04D0, HKSample_ptr);
  v6 = v5;
  static HKSamplePredicate.workout(_:)();

  sub_100140278(&qword_1008E18A0, &unk_1006DDC50);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D46C0;
  (*(v2 + 16))(v8 + v7, v1, v3);
  sub_100140278(&qword_1008E18A8, qword_1006FC190);
  sub_100140278(&qword_1008E18B0, &qword_1006DDC60);
  *(swift_allocObject() + 16) = xmmword_1006D46C0;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  sub_1000059F8(0, &qword_1008ED7C0, HKWorkout_ptr);
  HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
  AppDependency.wrappedValue.getter();
  v9 = v0[2];
  v0[13] = v9;
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_100208A90;
  v11 = v0[5];

  return HKSampleQueryDescriptor.result(for:)(v9, v11);
}

uint64_t sub_100208A90(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  *(*v2 + 120) = v1;

  if (v1)
  {
    v6 = sub_100208CCC;
  }

  else
  {
    *(v4 + 128) = a1;
    v6 = sub_100208BD8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100208BD8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v11 = sub_100207284(v0[16]);

  (*(v8 + 8))(v6, v7);
  (*(v4 + 8))(v3, v5);

  v9 = v0[1];

  return v9(v11);
}

uint64_t sub_100208CCC()
{
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100208D98(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_100140278(&qword_1008E1890, &qword_1006DDC40);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_100140278(&qword_1008E1898, &qword_1006DDC48);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100208ECC, 0, 0);
}

uint64_t sub_100208ECC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = [objc_opt_self() predicateForWorkoutsWithWorkoutActivityType:82];
  v0[11] = v4;
  sub_1000059F8(0, &qword_1008E04D0, HKSample_ptr);
  v5 = v4;
  static HKSamplePredicate.workout(_:)();

  sub_100140278(&qword_1008E18A0, &unk_1006DDC50);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006D46C0;
  (*(v2 + 16))(v7 + v6, v1, v3);
  sub_100140278(&qword_1008E18A8, qword_1006FC190);
  sub_100140278(&qword_1008E18B0, &qword_1006DDC60);
  *(swift_allocObject() + 16) = xmmword_1006D46C0;
  swift_getKeyPath();
  SortDescriptor.init<A>(_:order:)();
  sub_1000059F8(0, &qword_1008ED7C0, HKWorkout_ptr);
  HKSampleQueryDescriptor.init(predicates:sortDescriptors:limit:)();
  AppDependency.wrappedValue.getter();
  v8 = v0[2];
  v0[12] = v8;
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_100209148;
  v10 = v0[5];

  return HKSampleQueryDescriptor.result(for:)(v8, v10);
}

uint64_t sub_100209148(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = sub_10020937C;
  }

  else
  {
    *(v4 + 120) = a1;
    v6 = sub_100209290;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100209290()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];
  v8 = sub_100207284(v0[15]);

  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_10020937C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

unint64_t sub_100209504()
{
  _StringGuts.grow(_:)(20);

  if (*(v0 + OBJC_IVAR___CHNavigatorContext_hasActiveWorkout))
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___CHNavigatorContext_hasActiveWorkout))
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v3 = v2;
  String.append(_:)(*&v1);

  return 0xD000000000000012;
}

id DivingDataCalculator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10020969C@<X0>(void *a1@<X8>)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
  v5.receiver = v3;
  v5.super_class = v1;
  result = objc_msgSendSuper2(&v5, "init");
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TabularMetric(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TabularMetric(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1002098C4(uint64_t a1, id *a2, void *a3)
{
  v5 = objc_opt_self();
  v6 = *a2;
  v7 = [v5 preferredFontForTextStyle:v6];

  v8 = objc_opt_self();
  v9 = UIContentSizeCategoryLarge;
  v10 = [v8 traitCollectionWithPreferredContentSizeCategory:v9];

  v11 = [v7 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v10];
  if (v11)
  {
    *a3 = v11;
  }

  else
  {
    __break(1u);
  }
}

void sub_1002099B4()
{
  sub_1000059F8(0, &qword_1008F73C0, UIFont_ptr);
  v0 = UIFontTextStyleCallout;
  v1 = UIFontDescriptorSystemDesignRounded;
  v2 = static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)();

  v3 = objc_opt_self();
  v4 = UIContentSizeCategoryLarge;
  v5 = [v3 traitCollectionWithPreferredContentSizeCategory:v4];

  v6 = [v2 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v5];
  if (v6)
  {
    qword_1009252A0 = v6;
  }

  else
  {
    __break(1u);
  }
}

id sub_100209AEC()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setMinimumFractionDigits:0];
  [v0 setMaximumFractionDigits:2];
  result = [v0 setNumberStyle:1];
  qword_1008E18E8 = v0;
  return result;
}

uint64_t sub_100209B68(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x43676E696C637963;
    v7 = 0xD000000000000012;
    if (a1 != 10)
    {
      v7 = 0x536D756D6978616DLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x65636E65646163;
    v9 = 0x796772656E65;
    if (a1 != 7)
    {
      v9 = 0x6465657073;
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
    v1 = 0x72656B72616DLL;
    v2 = 1701011824;
    v3 = 0x7461527472616568;
    if (a1 != 4)
    {
      v3 = 0x7265776F70;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x65636E6174736964;
    if (a1 != 1)
    {
      v4 = 1701669236;
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

void sub_100209CE0(void *a1, unsigned __int8 a2)
{
  if (a2 > 5u)
  {
    if (a2 != 7)
    {
LABEL_8:
      v7 = [objc_opt_self() mainBundle];
      v8 = String._bridgeToObjectiveC()();
      v9 = [v7 localizedStringForKey:v8 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      goto LABEL_9;
    }

    v3 = String._bridgeToObjectiveC()();
    v4 = [a1 localizationKeyForEnergyBaseKey:v3];

    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = [objc_opt_self() mainBundle];
    v6 = [v5 localizedStringForKey:v4 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else if (a2 > 2u || a2)
  {
    goto LABEL_8;
  }

LABEL_9:

  AttributedString.init(stringLiteral:)();
}

void sub_10020A2B4(uint64_t a1)
{
  v1 = a1;
  if (a1 <= 5u)
  {
    if (a1 > 2u)
    {
      goto LABEL_14;
    }

    if (!a1)
    {
LABEL_28:

      static Color.gray.getter();
      return;
    }

    if (a1 != 1)
    {
      v18 = [objc_opt_self() elapsedTimeColors];
      if (!v18)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v19 = v18;
      v20 = [v18 nonGradientTextColor];

      if (v20)
      {
        goto LABEL_35;
      }

      __break(1u);
LABEL_34:
      v21 = [objc_opt_self() powerColors];
      v22 = [v21 nonGradientTextColor];

      if (v22)
      {
        goto LABEL_35;
      }

LABEL_43:
      __break(1u);
      return;
    }

    v2 = [objc_opt_self() distanceColors];
    if (!v2)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v3 = v2;
    v4 = [v2 nonGradientTextColor];

    if (v4)
    {
      goto LABEL_35;
    }

    __break(1u);
  }

  if (v1 > 8)
  {
    goto LABEL_19;
  }

  if (v1 == 6)
  {
    goto LABEL_26;
  }

  if (v1 != 7)
  {
LABEL_23:
    v13 = [objc_opt_self() paceColors];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 nonGradientTextColor];

      if (v15)
      {
        goto LABEL_35;
      }

      __break(1u);
      goto LABEL_26;
    }

    __break(1u);
    goto LABEL_39;
  }

  v5 = [objc_opt_self() energyColors];
  if (!v5)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v6 = v5;
  v7 = [v5 nonGradientTextColor];

  if (v7)
  {
    goto LABEL_35;
  }

  __break(1u);
LABEL_14:
  if (v1 == 3)
  {
    goto LABEL_23;
  }

  if (v1 != 4)
  {
    goto LABEL_34;
  }

  v8 = [objc_opt_self() heartRateColors];
  if (!v8)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v9 = v8;
  v10 = [v8 nonGradientTextColor];

  if (v10)
  {
    goto LABEL_35;
  }

  __break(1u);
LABEL_19:
  if (v1 != 9)
  {
    if (v1 == 10)
    {
      v11 = [objc_opt_self() elevationColors];
      v12 = [v11 nonGradientTextColor];

      if (v12)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    goto LABEL_23;
  }

LABEL_26:
  v16 = [objc_opt_self() cadenceColors];
  v17 = [v16 nonGradientTextColor];

  if (!v17)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_35:

  Color.init(_:)();
}

uint64_t sub_10020A5C0@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>)
{
  v492 = a4;
  v496 = a1;
  v457 = type metadata accessor for AttributedString.AttributeMergePolicy();
  v456 = *(v457 - 8);
  __chkstk_darwin(v457);
  v455 = &v453 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v485 = sub_100140278(&qword_1008E18F8, &qword_1006DDE38);
  v484 = *(v485 - 8);
  __chkstk_darwin(v485);
  v483 = &v453 - v11;
  v12 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v12 - 8);
  v487 = &v453 - v13;
  v14 = sub_100140278(&qword_1008E1900, &unk_1006E8990);
  __chkstk_darwin(v14 - 8);
  v472 = &v453 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v470 = &v453 - v17;
  __chkstk_darwin(v18);
  v480 = &v453 - v19;
  __chkstk_darwin(v20);
  v476 = &v453 - v21;
  __chkstk_darwin(v22);
  v24 = &v453 - v23;
  __chkstk_darwin(v25);
  v467 = &v453 - v26;
  __chkstk_darwin(v27);
  v463 = &v453 - v28;
  __chkstk_darwin(v29);
  v461 = &v453 - v30;
  v490 = sub_100140278(&qword_1008E1908, &unk_1006DFC40);
  v488 = *(v490 - 8);
  __chkstk_darwin(v490);
  v465 = &v453 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v464 = &v453 - v33;
  __chkstk_darwin(v34);
  v477 = &v453 - v35;
  __chkstk_darwin(v36);
  v469 = &v453 - v37;
  __chkstk_darwin(v38);
  v468 = &v453 - v39;
  __chkstk_darwin(v40);
  v459 = &v453 - v41;
  __chkstk_darwin(v42);
  v458 = &v453 - v43;
  __chkstk_darwin(v44);
  v454 = &v453 - v45;
  v491 = type metadata accessor for AttributedString();
  v486 = *(v491 - 8);
  __chkstk_darwin(v491);
  v47 = &v453 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v478 = &v453 - v49;
  __chkstk_darwin(v50);
  v479 = &v453 - v51;
  __chkstk_darwin(v52);
  v474 = &v453 - v53;
  __chkstk_darwin(v54);
  v473 = &v453 - v55;
  __chkstk_darwin(v56);
  v466 = &v453 - v57;
  __chkstk_darwin(v58);
  v60 = &v453 - v59;
  __chkstk_darwin(v61);
  v460 = &v453 - v62;
  v63 = sub_100140278(&qword_1008E1910, &qword_1006DDE40);
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v453 - v65;
  v67 = type metadata accessor for AttributeContainer();
  v497 = *(v67 - 8);
  __chkstk_darwin(v67);
  v482 = &v453 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v499 = &v453 - v70;
  *&v72 = __chkstk_darwin(v71).n128_u64[0];
  v498 = &v453 - v73;
  v495 = a6;
  v475 = v24;
  v471 = v47;
  v462 = v60;
  v481 = a2;
  v75 = v74;
  if (a3)
  {
    v76 = [a3 workoutConfiguration];
    v77 = [v76 activityType];
  }

  else
  {
    v77 = [a2 workoutActivityType];
  }

  v78 = v499;
  AttributeContainer.init()();
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  v489 = sub_1001ED5AC();
  AttributeContainer.subscript.getter();

  v80 = *(v497 + 1);
  v81 = v75;
  v494 = v497 + 8;
  v493 = v80;
  v80(v78, v75);
  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v82 = qword_1009252A0;
  v501 = qword_1009252A0;
  v83 = v498;
  AttributeContainer.Builder.callAsFunction(_:)();
  (*(v64 + 8))(v66, v63);
  if (a5 <= 6u)
  {
    v84 = v496;
    if (a5 <= 3u)
    {
      if (a5 <= 2u)
      {
        if (a5 == 1)
        {
          if ((*(v496 + 40) & 1) != 0 || (v85 = *(v496 + 32), floor(v85) <= 0.0))
          {
LABEL_135:
            v441 = swift_getKeyPath();
            __chkstk_darwin(v441);
            swift_getKeyPath();
            sub_10005FAB0();
            v442 = v483;
            AttributeContainer.subscript.getter();

            v501 = static Color.gray.getter();
            v402 = v499;
            v443 = v485;
            AttributeContainer.Builder.callAsFunction(_:)();

            (*(v484 + 8))(v442, v443);
            v404 = [objc_opt_self() mainBundle];
            v405 = String._bridgeToObjectiveC()();
            v406 = [v404 localizedStringForKey:v405 value:0 table:0];
            goto LABEL_136;
          }

          if ((*(v496 + 56) & 1) == 0)
          {
            v86 = *(v496 + 48);
            v87 = [objc_opt_self() defaultPrecisionForDistanceUnit:v86];
            v88 = [v492 localizedStringWithDistanceInMeters:v86 distanceUnit:0 unitStyle:v87 decimalPrecision:2 roundingMode:1 decimalTrimmingMode:v85];
            if (v88)
            {
              v480 = v82;
              v481 = v81;
              v89 = v88;
              v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v92 = v91;

              v93 = [v492 localizedShortUnitStringForDistanceUnit:v86];
              if (v93)
              {
                v94 = v93;
                v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v97 = v96;

                v501 = v95;
                v502 = v97;
                sub_10000FCBC();
                v98 = StringProtocol.localizedUppercase.getter();
                v100 = v99;

                v101 = [objc_opt_self() mainBundle];
                v102 = String._bridgeToObjectiveC()();
                v103 = [v101 localizedStringForKey:v102 value:0 table:0];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
                v104 = swift_allocObject();
                *(v104 + 16) = xmmword_1006D1F70;
                *(v104 + 56) = &type metadata for String;
                v105 = sub_10000A788();
                *(v104 + 32) = v90;
                *(v104 + 40) = v92;
                *(v104 + 96) = &type metadata for String;
                *(v104 + 104) = v105;
                *(v104 + 64) = v105;
                *(v104 + 72) = v98;
                *(v104 + 80) = v100;
                v497 = v92;

                String.init(format:_:)();

                AttributeContainer.init()();
                v106 = v460;
                AttributedString.init(_:attributes:)();
                v501 = v480;
                v480;
                AttributedString.subscript.setter();
                v501 = v98;
                v502 = v100;
                v107 = type metadata accessor for Locale();
                v108 = v487;
                (*(*(v107 - 8) + 56))(v487, 1, 1, v107);
                sub_10007BD90();
                v109 = v461;
                v110 = v491;
                AttributedStringProtocol.range<A>(of:options:locale:)();
                sub_10000EA04(v108, &qword_1008EB540, &unk_1006D5E20);
                if ((*(v488 + 48))(v109, 1, v490) == 1)
                {
                  v111 = &qword_1008E1900;
                  v112 = &unk_1006E8990;
                }

                else
                {
                  v449 = v109;
                  v109 = v454;
                  sub_10007BE08(v449, v454);
                  isa = UIFont.smallCapsVersion()().super.isa;
                  sub_10007C0F0();
                  v451 = AttributedString.subscript.modify();
                  v503 = isa;
                  AttributedSubstring.subscript.setter();
                  v451(&v501, 0);
                  v111 = &qword_1008E1908;
                  v112 = &unk_1006DFC40;
                }

                sub_10000EA04(v109, v111, v112);
                v452 = v498;
                (*(v486 + 32))(v495, v106, v110);

                v218 = v452;
                goto LABEL_140;
              }

              goto LABEL_150;
            }
          }

          if (a3)
          {
            v337 = [a3 fiui_activityType];
LABEL_129:
            v413 = FIUIDistanceTypeForActivityType();
            v503 = 1;
            v414 = v492;
            v415 = [v492 localizedNaturalScaleStringWithDistanceInMeters:v413 distanceType:0 unitStyle:&v503 usedUnit:v85];
            if (v415)
            {
              v497 = v337;
              v480 = v82;
              v481 = v81;
              v416 = v415;
              v417 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v419 = v418;

              v420 = [v414 localizedShortUnitStringForDistanceUnit:v503];
              if (v420)
              {
                v421 = v420;
                v422 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v424 = v423;

                v501 = v422;
                v502 = v424;
                sub_10000FCBC();
                v425 = StringProtocol.localizedUppercase.getter();
                v427 = v426;

                v428 = [objc_opt_self() mainBundle];
                v429 = String._bridgeToObjectiveC()();
                v430 = [v428 localizedStringForKey:v429 value:0 table:0];

                static String._unconditionallyBridgeFromObjectiveC(_:)();
                sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
                v431 = swift_allocObject();
                *(v431 + 16) = xmmword_1006D1F70;
                *(v431 + 56) = &type metadata for String;
                v432 = sub_10000A788();
                *(v431 + 32) = v417;
                *(v431 + 40) = v419;
                *(v431 + 96) = &type metadata for String;
                *(v431 + 104) = v432;
                *(v431 + 64) = v432;
                *(v431 + 72) = v425;
                *(v431 + 80) = v427;
                v496 = v419;

                String.init(format:_:)();

                AttributeContainer.init()();
                v433 = v462;
                AttributedString.init(_:attributes:)();
                v501 = v480;
                v480;
                AttributedString.subscript.setter();
                v501 = v425;
                v502 = v427;
                v434 = type metadata accessor for Locale();
                v435 = v487;
                (*(*(v434 - 8) + 56))(v487, 1, 1, v434);
                sub_10007BD90();
                v436 = v463;
                v437 = v491;
                AttributedStringProtocol.range<A>(of:options:locale:)();
                sub_10000EA04(v435, &qword_1008EB540, &unk_1006D5E20);
                if ((*(v488 + 48))(v436, 1, v490) == 1)
                {
                  v438 = &qword_1008E1900;
                  v439 = &unk_1006E8990;
                  v440 = v436;
                }

                else
                {
                  v446 = v458;
                  sub_10007BE08(v436, v458);
                  v447 = UIFont.smallCapsVersion()().super.isa;
                  sub_10007C0F0();
                  v448 = AttributedString.subscript.modify();
                  v500 = v447;
                  AttributedSubstring.subscript.setter();
                  v448(&v501, 0);
                  v438 = &qword_1008E1908;
                  v439 = &unk_1006DFC40;
                  v440 = v446;
                }

                sub_10000EA04(v440, v438, v439);
                (*(v486 + 32))(v495, v433, v437);

LABEL_139:
                v218 = v498;
LABEL_140:
                v303 = v481;
                return v493(v218, v303);
              }

LABEL_149:
              __break(1u);
LABEL_150:
              __break(1u);
              goto LABEL_151;
            }

            goto LABEL_135;
          }

          v337 = [v481 fiui_activityType];
          if (v337)
          {
            goto LABEL_129;
          }

          goto LABEL_97;
        }

        if (a5 != 2)
        {
LABEL_153:
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v250 = v81;
        v251 = round(*(v496 + 64));
        if (v251 < 3600.0)
        {
          v252 = 3;
        }

        else
        {
          v252 = 2;
        }

        v253 = v492;
        v254 = [v492 stringWithDuration:v252 durationFormat:v251];
        if (v254)
        {
          v255 = v254;
          v256 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v258 = v257;

          v83 = v498;
          if (*(v84 + 80))
          {
LABEL_78:
            v301 = [v253 stringWithDuration:v252 durationFormat:v251];
            if (v301)
            {
              v302 = v301;
LABEL_80:

              static String._unconditionallyBridgeFromObjectiveC(_:)();

              (*(v497 + 2))(v499, v83, v81);
              AttributedString.init(_:attributes:)();
              v218 = v83;
LABEL_81:
              v303 = v250;
              return v493(v218, v303);
            }

            goto LABEL_144;
          }
        }

        else
        {
          v256 = 0;
          v258 = 0;
          if (*(v84 + 80))
          {
            goto LABEL_78;
          }
        }

        v300 = *(v84 + 72);
        if (v300 != 0.0)
        {
          v314 = [v253 stringWithDuration:v252 durationFormat:round(v300)];
          if (v314)
          {
            v315 = v314;
            v316 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v318 = v317;

            if (v258 && v318)
            {
              sub_100140278(&qword_1008E1928, &unk_1006F16C0);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1006D1F70;
              *(inited + 32) = v316;
              *(inited + 40) = v318;
              v320 = objc_opt_self();

              v321 = [v320 elapsedTimeColors];
              if (!v321)
              {
LABEL_151:
                __break(1u);
                goto LABEL_152;
              }

              v322 = v321;
              v323 = [v321 nonGradientTextColor];

              if (!v323)
              {
LABEL_152:
                __break(1u);
                goto LABEL_153;
              }

              *(inited + 48) = v323;
              v324 = [objc_opt_self() mainBundle];
              v325 = String._bridgeToObjectiveC()();
              v326 = [v324 localizedStringForKey:v325 value:0 table:0];

              static String._unconditionallyBridgeFromObjectiveC(_:)();
              sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
              v327 = swift_allocObject();
              *(v327 + 16) = xmmword_1006D46C0;
              *(v327 + 56) = &type metadata for String;
              *(v327 + 64) = sub_10000A788();
              *(v327 + 32) = v256;
              *(v327 + 40) = v258;
              v328 = String.init(format:_:)();
              v330 = v329;

              *(inited + 56) = v328;
              *(inited + 64) = v330;
              *(inited + 72) = [objc_opt_self() grayColor];
              v331 = sub_1004C1FE0(inited);
              swift_setDeallocating();
              sub_100140278(&qword_1008E1930, &qword_1006DDF28);
              swift_arrayDestroy();
              v332 = v331;
              AttributedString.init(_:)();
              v333 = v456;
              v334 = v455;
              v335 = v457;
              (*(v456 + 104))(v455, enum case for AttributedString.AttributeMergePolicy.keepNew(_:), v457);
              v336 = v498;
              AttributedString.mergeAttributes(_:mergePolicy:)();

              (*(v333 + 8))(v334, v335);
              v218 = v336;
              goto LABEL_81;
            }

            v83 = v498;
          }

          v371 = [v253 stringWithDuration:v252 durationFormat:v251];
          if (v371)
          {
            v302 = v371;

            goto LABEL_80;
          }

LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        goto LABEL_78;
      }

      if (*(v496 + 40))
      {
        goto LABEL_125;
      }

      v219 = *(v496 + 32);
      if (floor(v219) <= 0.0)
      {
        goto LABEL_125;
      }

      if (a3)
      {
        v220 = [a3 fiui_activityType];
LABEL_108:
        v347 = FIUIDistanceTypeForActivityType();
        v348 = v492;
        v349 = [v492 unitManager];
        if (!v349)
        {
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v350 = v349;
        v481 = v81;
        v351 = [v349 paceDistanceUnitForDistanceType:v347];

        v352 = [objc_opt_self() meterUnit];
        v353 = [objc_opt_self() quantityWithUnit:v352 doubleValue:v219];

        v478 = v220;
        v354 = FIUIPaceFormatForWorkoutActivityType();
        v355 = [v348 localizedShortUnitStringForDistanceUnit:v351];
        v479 = v353;
        if (v355)
        {
          v480 = v82;
          v356 = v355;
          v357 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v359 = v358;

          v360 = FIUINumberOfUnitsInPaceForPaceFormat();
          v361 = [objc_opt_self() mainBundle];
          if (v360 < 2)
          {
            v372 = String._bridgeToObjectiveC()();
            v373 = [v361 localizedStringForKey:v372 value:0 table:0];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
            v374 = swift_allocObject();
            *(v374 + 16) = xmmword_1006D46C0;
            v501 = v357;
            v502 = v359;
            sub_10000FCBC();
            v375 = StringProtocol.localizedUppercase.getter();
            v377 = v376;
            *(v374 + 56) = &type metadata for String;
            *(v374 + 64) = sub_10000A788();
            *(v374 + 32) = v375;
            *(v374 + 40) = v377;
          }

          else
          {
            v362 = String._bridgeToObjectiveC()();
            v363 = [v361 localizedStringForKey:v362 value:0 table:0];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
            v364 = swift_allocObject();
            *(v364 + 16) = xmmword_1006D1F70;
            v365 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v360];
            *(v364 + 56) = sub_1000059F8(0, &qword_1008E1750, NSNumber_ptr);
            *(v364 + 64) = sub_1001983C8();
            *(v364 + 32) = v365;
            v501 = v357;
            v502 = v359;
            sub_10000FCBC();
            v366 = StringProtocol.localizedUppercase.getter();
            v368 = v367;
            *(v364 + 96) = &type metadata for String;
            *(v364 + 104) = sub_10000A788();
            *(v364 + 72) = v366;
            *(v364 + 80) = v368;
          }

          v369 = String.init(format:_:)();
          v370 = v378;

          v82 = v480;
          v348 = v492;
          v353 = v479;
        }

        else
        {
          v369 = 0;
          v370 = 0xE000000000000000;
        }

        v379 = *(v496 + 64);
        if ((*(v496 + 80) & 1) == 0 && *(v496 + 72) > 0.0)
        {
          v379 = *(v496 + 72);
        }

        v380 = [v348 localizedPaceStringWithDistance:v353 overDuration:v354 paceFormat:v347 distanceType:v379];
        if (v380)
        {
          v381 = v380;
          v382 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v496 = v369;
          v383 = v382;
          v385 = v384;

          v386 = [objc_opt_self() mainBundle];
          v387 = String._bridgeToObjectiveC()();
          v388 = v82;
          v389 = [v386 localizedStringForKey:v387 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
          v390 = swift_allocObject();
          *(v390 + 16) = xmmword_1006D1F70;
          *(v390 + 56) = &type metadata for String;
          v391 = sub_10000A788();
          *(v390 + 32) = v383;
          *(v390 + 40) = v385;
          *(v390 + 96) = &type metadata for String;
          *(v390 + 104) = v391;
          v392 = v496;
          *(v390 + 64) = v391;
          *(v390 + 72) = v392;
          *(v390 + 80) = v370;
          v497 = v385;

          String.init(format:_:)();

          AttributeContainer.init()();
          v393 = v466;
          AttributedString.init(_:attributes:)();
          v501 = v388;
          v388;
          AttributedString.subscript.setter();
          v501 = v392;
          v502 = v370;
          v394 = type metadata accessor for Locale();
          v395 = v487;
          (*(*(v394 - 8) + 56))(v487, 1, 1, v394);
          sub_10007BD90();
          sub_10000FCBC();
          v396 = v467;
          v397 = v491;
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_10000EA04(v395, &qword_1008EB540, &unk_1006D5E20);
          if ((*(v488 + 48))(v396, 1, v490) == 1)
          {
            v398 = &qword_1008E1900;
            v399 = &unk_1006E8990;
          }

          else
          {
            v407 = v396;
            v396 = v459;
            sub_10007BE08(v407, v459);
            v408 = UIFont.smallCapsVersion()().super.isa;
            sub_10007C0F0();
            v409 = AttributedString.subscript.modify();
            v503 = v408;
            AttributedSubstring.subscript.setter();
            v409(&v501, 0);
            v398 = &qword_1008E1908;
            v399 = &unk_1006DFC40;
          }

          sub_10000EA04(v396, v398, v399);
          v410 = v481;
          v411 = v493;
          v412 = v479;
          (*(v486 + 32))(v495, v393, v397);

          return v411(v498, v410);
        }

        v81 = v481;
        v83 = v498;
LABEL_125:
        v400 = swift_getKeyPath();
        __chkstk_darwin(v400);
        swift_getKeyPath();
        sub_10005FAB0();
        v401 = v483;
        AttributeContainer.subscript.getter();

        v501 = static Color.gray.getter();
        v402 = v499;
        v403 = v485;
        AttributeContainer.Builder.callAsFunction(_:)();

        (*(v484 + 8))(v401, v403);
        v404 = [objc_opt_self() mainBundle];
        v405 = String._bridgeToObjectiveC()();
        v406 = [v404 localizedStringForKey:v405 value:0 table:0];
LABEL_136:
        v444 = v406;

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v497 + 2))(v482, v402, v81);
        AttributedString.init(_:attributes:)();
        v445 = v493;
        v493(v402, v81);
        return v445(v83, v81);
      }

      v220 = [v481 fiui_activityType];
      if (v220)
      {
        goto LABEL_108;
      }

LABEL_97:
      AttributedString.init(stringLiteral:)();
      goto LABEL_98;
    }

    if (a5 != 4)
    {
      if (a5 == 5)
      {
        v149 = [objc_opt_self() localizedShortPowerUnitString];
        if (!v149)
        {
          goto LABEL_97;
        }

        v480 = v82;
        v150 = v149;
        v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v153 = v152;

        v154 = *(v84 + 112);
        if (v154)
        {
          v481 = v81;
          [v154 _value];
          v156 = v155;
          v157 = objc_opt_self();
          v158 = [objc_allocWithZone(NSNumber) initWithDouble:v156];
          v159 = [v157 localizedStringFromNumber:v158 numberStyle:0];

          v160 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v162 = v161;

          v503 = v151;
          v504 = v153;
          sub_10000FCBC();
          v163 = StringProtocol.localizedUppercase.getter();
          v165 = v164;

          v166 = [objc_opt_self() mainBundle];
          v167 = String._bridgeToObjectiveC()();
          v168 = [v166 localizedStringForKey:v167 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
          v169 = swift_allocObject();
          *(v169 + 16) = xmmword_1006D1F70;
          *(v169 + 56) = &type metadata for String;
          v170 = sub_10000A788();
          *(v169 + 32) = v160;
          *(v169 + 40) = v162;
          *(v169 + 96) = &type metadata for String;
          *(v169 + 104) = v170;
          *(v169 + 64) = v170;
          *(v169 + 72) = v163;
          *(v169 + 80) = v165;
          v497 = v162;

          String.init(format:_:)();

          AttributeContainer.init()();
          v171 = v474;
          AttributedString.init(_:attributes:)();
          v501 = v480;
          v480;
          AttributedString.subscript.setter();
          v501 = v163;
          v502 = v165;
          v172 = type metadata accessor for Locale();
          v173 = v487;
          (*(*(v172 - 8) + 56))(v487, 1, 1, v172);
          sub_10007BD90();
          v174 = v476;
          v175 = v491;
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_10000EA04(v173, &qword_1008EB540, &unk_1006D5E20);
          if ((*(v488 + 48))(v174, 1, v490) == 1)
          {
            v176 = &qword_1008E1900;
            v177 = &unk_1006E8990;
          }

          else
          {
            v304 = v174;
            v174 = v469;
            sub_10007BE08(v304, v469);
            v305 = UIFont.smallCapsVersion()().super.isa;
            sub_10007C0F0();
            v306 = AttributedString.subscript.modify();
            v500 = v305;
            AttributedSubstring.subscript.setter();
            v306(&v501, 0);
            v176 = &qword_1008E1908;
            v177 = &unk_1006DFC40;
          }

          sub_10000EA04(v174, v176, v177);
          (*(v486 + 32))(v495, v171, v175);

          v218 = v83;
          goto LABEL_140;
        }

LABEL_63:

        goto LABEL_97;
      }

      goto LABEL_32;
    }

    v221 = *(v496 + 104);
    if (!v221)
    {
      goto LABEL_97;
    }

    v114 = v221;
    v222 = [v492 localizedStringWithHeartRate:v114];
    if (v222)
    {
      v497 = v114;
      v481 = v81;
      v223 = v222;
      v496 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v225 = v224;

      v226 = FIUIBundle();
      if (!v226)
      {
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v227 = v226;
      v228 = String._bridgeToObjectiveC()();
      v229 = [v227 localizedStringForKey:v228 value:0 table:0];

      v230 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v232 = v231;

      v503 = v230;
      v504 = v232;
      sub_10000FCBC();
      v233 = StringProtocol.localizedUppercase.getter();
      v235 = v234;

      v236 = [objc_opt_self() mainBundle];
      v237 = String._bridgeToObjectiveC()();
      v238 = [v236 localizedStringForKey:v237 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
      v239 = swift_allocObject();
      *(v239 + 16) = xmmword_1006D1F70;
      *(v239 + 56) = &type metadata for String;
      v240 = sub_10000A788();
      *(v239 + 32) = v496;
      *(v239 + 40) = v225;
      *(v239 + 96) = &type metadata for String;
      *(v239 + 104) = v240;
      *(v239 + 64) = v240;
      *(v239 + 72) = v233;
      *(v239 + 80) = v235;
      v496 = v225;

      String.init(format:_:)();

      AttributeContainer.init()();
      v241 = v473;
      AttributedString.init(_:attributes:)();
      v501 = v82;
      v82;
      AttributedString.subscript.setter();
      v501 = v233;
      v502 = v235;
      v242 = type metadata accessor for Locale();
      v243 = v487;
      (*(*(v242 - 8) + 56))(v487, 1, 1, v242);
      sub_10007BD90();
      v244 = v475;
      v245 = v491;
      AttributedStringProtocol.range<A>(of:options:locale:)();
      sub_10000EA04(v243, &qword_1008EB540, &unk_1006D5E20);
      if ((*(v488 + 48))(v244, 1, v490) == 1)
      {
        v246 = &qword_1008E1900;
        v247 = &unk_1006E8990;
        v248 = v244;
      }

      else
      {
        v307 = v468;
        sub_10007BE08(v244, v468);
        v308 = UIFont.smallCapsVersion()().super.isa;
        sub_10007C0F0();
        v309 = AttributedString.subscript.modify();
        v500 = v308;
        AttributedSubstring.subscript.setter();
        v309(&v501, 0);
        v246 = &qword_1008E1908;
        v247 = &unk_1006DFC40;
        v248 = v307;
      }

      sub_10000EA04(v248, v246, v247);
      v310 = v481;
      v311 = v498;
      v312 = v493;
      v313 = v497;
      (*(v486 + 32))(v495, v241, v245);

      return v312(v311, v310);
    }

LABEL_96:

    goto LABEL_97;
  }

  v84 = v496;
  if (a5 <= 8u)
  {
    if (a5 != 7)
    {
      if (a3)
      {
        v211 = [a3 fiui_activityType];
      }

      else
      {
        v211 = [v481 fiui_activityType];
        if (!v211)
        {
          goto LABEL_97;
        }
      }

      sub_10020E114(v211, v84, v492, v495);
LABEL_75:

LABEL_98:
      v218 = v83;
      goto LABEL_99;
    }

    v209 = [v492 unitManager];
    if (!v209)
    {
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    v210 = v209;
    v211 = [v209 userActiveEnergyBurnedUnit];

    v212 = *(v84 + 88);
    if (v212)
    {
      [v212 doubleValueForUnit:v211];
      v214 = v213;
      if (qword_1008DA670 != -1)
      {
        swift_once();
      }

      v215 = qword_1008E18E8;
      v216 = [objc_allocWithZone(NSNumber) initWithDouble:v214];
      v217 = [v215 stringFromNumber:v216];

      if (v217)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v497 + 2))(v499, v83, v81);
        AttributedString.init(_:attributes:)();

        v218 = v83;
LABEL_99:
        v303 = v81;
        return v493(v218, v303);
      }
    }

LABEL_72:
    AttributedString.init(stringLiteral:)();
    goto LABEL_75;
  }

  if (a5 != 9)
  {
    if (a5 == 10)
    {
      v113 = *(v496 + 152);
      if (!v113)
      {
        goto LABEL_97;
      }

      v114 = v113;
      v115 = v492;
      v116 = [v492 unitManager];
      if (!v116)
      {
LABEL_145:
        __break(1u);
        goto LABEL_146;
      }

      v117 = v116;
      v118 = [v116 userDistanceElevationUnit];

      v119 = [objc_opt_self() meterUnit];
      [v114 doubleValueForUnit:v119];
      v121 = v120;

      v122 = [v115 localizedStringWithDistanceInMeters:5 distanceType:0 unitStyle:v121];
      if (v122)
      {
        v481 = v81;
        v123 = v122;
        v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v126 = v125;

        v127 = [v115 localizedShortUnitStringForDistanceUnit:v118 textCase:1];
        if (v127)
        {
          v128 = v127;
          v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v130 = v82;
          v132 = v131;

          v503 = v129;
          v504 = v132;
          v496 = sub_10000FCBC();
          v133 = StringProtocol.localizedUppercase.getter();
          v135 = v134;

          v136 = [objc_opt_self() mainBundle];
          v137 = String._bridgeToObjectiveC()();
          v138 = [v136 localizedStringForKey:v137 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
          v139 = swift_allocObject();
          *(v139 + 16) = xmmword_1006D1F70;
          *(v139 + 56) = &type metadata for String;
          v140 = sub_10000A788();
          *(v139 + 32) = v124;
          *(v139 + 40) = v126;
          *(v139 + 96) = &type metadata for String;
          *(v139 + 104) = v140;
          *(v139 + 64) = v140;
          *(v139 + 72) = v133;
          *(v139 + 80) = v135;
          v497 = v126;

          String.init(format:_:)();

          AttributeContainer.init()();
          v141 = v471;
          AttributedString.init(_:attributes:)();
          v501 = v130;
          v130;
          AttributedString.subscript.setter();
          v501 = v133;
          v502 = v135;
          v142 = type metadata accessor for Locale();
          v143 = v487;
          (*(*(v142 - 8) + 56))(v487, 1, 1, v142);
          sub_10007BD90();
          v144 = v472;
          v145 = v491;
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_10000EA04(v143, &qword_1008EB540, &unk_1006D5E20);
          if ((*(v488 + 48))(v144, 1, v490) == 1)
          {
            v146 = &qword_1008E1900;
            v147 = &unk_1006E8990;
            v148 = v144;
          }

          else
          {
            v338 = v465;
            sub_10007BE08(v144, v465);
            v339 = UIFont.smallCapsVersion()().super.isa;
            sub_10007C0F0();
            v340 = AttributedString.subscript.modify();
            v500 = v339;
            AttributedSubstring.subscript.setter();
            v340(&v501, 0);
            v146 = &qword_1008E1908;
            v147 = &unk_1006DFC40;
            v148 = v338;
          }

          sub_10000EA04(v148, v146, v147);
          (*(v486 + 32))(v495, v141, v145);

          goto LABEL_139;
        }

        v81 = v481;
        v83 = v498;
      }

      goto LABEL_96;
    }

    if (a3)
    {
      v211 = [a3 fiui_activityType];
      v249 = v492;
    }

    else
    {
      v211 = [v481 fiui_activityType];
      v249 = v492;
      if (!v211)
      {
        goto LABEL_97;
      }
    }

    v265 = *(v84 + 144);
    if (v265)
    {
      v266 = objc_opt_self();
      v267 = v265;
      v268 = [v266 meterUnit];
      v269 = String._bridgeToObjectiveC()();
      v270 = [v266 unitFromString:v269];

      [v267 doubleValueForUnit:v270];
      v272 = v271;

      v273 = [objc_opt_self() quantityWithUnit:v268 doubleValue:v272];
      v274 = [v249 localizedPaceStringWithDistance:v273 overDuration:4 paceFormat:FIUIDistanceTypeForActivityType() distanceType:1.0];
      if (v274)
      {
        v480 = v82;
        v275 = v274;
        v276 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v278 = v277;

        v279 = [v249 localizedSpeedUnitStringForActivityType:v211];
        if (v279)
        {
          v481 = v81;
          v280 = v279;
          v281 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v497 = v276;
          v283 = v282;

          v503 = v281;
          v504 = v283;
          v496 = sub_10000FCBC();
          v284 = StringProtocol.localizedUppercase.getter();
          v286 = v285;

          v287 = [objc_opt_self() mainBundle];
          v288 = String._bridgeToObjectiveC()();
          v289 = [v287 localizedStringForKey:v288 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
          v290 = swift_allocObject();
          *(v290 + 16) = xmmword_1006D1F70;
          *(v290 + 56) = &type metadata for String;
          v291 = sub_10000A788();
          *(v290 + 32) = v497;
          *(v290 + 40) = v278;
          *(v290 + 96) = &type metadata for String;
          *(v290 + 104) = v291;
          *(v290 + 64) = v291;
          *(v290 + 72) = v284;
          *(v290 + 80) = v286;
          v497 = v278;

          String.init(format:_:)();

          AttributeContainer.init()();
          v292 = v478;
          AttributedString.init(_:attributes:)();
          v501 = v480;
          v499 = v480;
          AttributedString.subscript.setter();
          v501 = v284;
          v502 = v286;
          v293 = type metadata accessor for Locale();
          v294 = v487;
          (*(*(v293 - 8) + 56))(v487, 1, 1, v293);
          sub_10007BD90();
          v295 = v470;
          v296 = v491;
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_10000EA04(v294, &qword_1008EB540, &unk_1006D5E20);
          if ((*(v488 + 48))(v295, 1, v490) == 1)
          {
            v297 = &qword_1008E1900;
            v298 = &unk_1006E8990;
            v299 = v295;
          }

          else
          {
            v341 = v295;
            v342 = v464;
            sub_10007BE08(v341, v464);
            v343 = UIFont.smallCapsVersion()().super.isa;
            sub_10007C0F0();
            v344 = AttributedString.subscript.modify();
            v500 = v343;
            AttributedSubstring.subscript.setter();
            v344(&v501, 0);
            v297 = &qword_1008E1908;
            v298 = &unk_1006DFC40;
            v299 = v342;
            v292 = v478;
          }

          sub_10000EA04(v299, v297, v298);
          v345 = v481;
          v346 = v493;
          (*(v486 + 32))(v495, v292, v296);

          return v346(v498, v345);
        }
      }

      AttributedString.init(stringLiteral:)();

      v218 = v498;
      goto LABEL_99;
    }

    goto LABEL_72;
  }

LABEL_32:
  v178 = [objc_opt_self() localizedShortCadenceUnitStringForActivityType:v77];
  if (!v178)
  {
    goto LABEL_97;
  }

  v179 = v178;
  v180 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v182 = v181;

  v183 = *(v84 + 96);
  if (!v183)
  {
    goto LABEL_63;
  }

  v481 = v81;
  v184 = objc_opt_self();
  v185 = v183;
  v186 = [v184 _countPerMinuteUnit];
  [v185 doubleValueForUnit:v186];
  v188 = v187;

  v189 = objc_opt_self();
  v190 = [objc_allocWithZone(NSNumber) initWithDouble:v188];
  v191 = [v189 localizedStringFromNumber:v190 numberStyle:0];

  v497 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v193 = v192;

  v503 = v180;
  v504 = v182;
  sub_10000FCBC();
  v194 = StringProtocol.localizedUppercase.getter();
  v196 = v195;

  v197 = [objc_opt_self() mainBundle];
  v198 = String._bridgeToObjectiveC()();
  v199 = [v197 localizedStringForKey:v198 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v200 = swift_allocObject();
  *(v200 + 16) = xmmword_1006D1F70;
  *(v200 + 56) = &type metadata for String;
  v201 = sub_10000A788();
  *(v200 + 32) = v497;
  *(v200 + 40) = v193;
  *(v200 + 96) = &type metadata for String;
  *(v200 + 104) = v201;
  *(v200 + 64) = v201;
  *(v200 + 72) = v194;
  *(v200 + 80) = v196;
  v497 = v193;

  String.init(format:_:)();

  AttributeContainer.init()();
  v202 = v479;
  AttributedString.init(_:attributes:)();
  v501 = v82;
  v82;
  AttributedString.subscript.setter();
  v501 = v194;
  v502 = v196;
  v203 = type metadata accessor for Locale();
  v204 = v487;
  (*(*(v203 - 8) + 56))(v487, 1, 1, v203);
  sub_10007BD90();
  v205 = v480;
  v206 = v491;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v204, &qword_1008EB540, &unk_1006D5E20);
  if ((*(v488 + 48))(v205, 1, v490) == 1)
  {
    v207 = &qword_1008E1900;
    v208 = &unk_1006E8990;
  }

  else
  {
    v259 = v205;
    v205 = v477;
    sub_10007BE08(v259, v477);
    v260 = UIFont.smallCapsVersion()().super.isa;
    sub_10007C0F0();
    v261 = AttributedString.subscript.modify();
    v500 = v260;
    AttributedSubstring.subscript.setter();
    v261(&v501, 0);
    v207 = &qword_1008E1908;
    v208 = &unk_1006DFC40;
  }

  sub_10000EA04(v205, v207, v208);
  v262 = v481;
  v263 = v493;
  (*(v486 + 32))(v495, v202, v206);

  return v263(v498, v262);
}

void sub_10020E114(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100140278(&qword_1008EB540, &unk_1006D5E20);
  __chkstk_darwin(v8 - 8);
  v10 = &v64 - v9;
  v11 = sub_100140278(&qword_1008E1900, &unk_1006E8990);
  __chkstk_darwin(v11 - 8);
  v73 = &v64 - v12;
  v74 = sub_100140278(&qword_1008E1908, &unk_1006DFC40);
  v13 = *(v74 - 8);
  __chkstk_darwin(v74);
  v15 = &v64 - v14;
  v16 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for AttributedString();
  __chkstk_darwin(v17);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + 136);
  if (v22)
  {
    v70 = v13;
    v71 = v19;
    v72 = v18;
    v69 = v15;
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 meterUnit];
    v26 = a4;
    v27 = String._bridgeToObjectiveC()();
    v28 = [v23 unitFromString:v27];

    a4 = v26;
    [v24 doubleValueForUnit:v28];
    v30 = v29;

    v31 = [objc_opt_self() quantityWithUnit:v25 doubleValue:v30];
    v32 = 1.0;
    if (!v31)
    {
LABEL_12:
      v75 = 0;
LABEL_15:
      AttributedString.init(stringLiteral:)();
      v60 = v75;

      return;
    }
  }

  else
  {
    if (*(a2 + 40))
    {
      goto LABEL_12;
    }

    v70 = v13;
    v71 = v19;
    v72 = v18;
    v69 = v15;
    v33 = *(a2 + 32);
    v34 = [objc_opt_self() meterUnit];
    v31 = [objc_opt_self() quantityWithUnit:v34 doubleValue:v33];

    v32 = *(a2 + 64);
    if (!v31)
    {
      goto LABEL_12;
    }
  }

  v75 = v31;
  v35 = [a3 localizedPaceStringWithDistance:v75 overDuration:4 paceFormat:FIUIDistanceTypeForActivityType() distanceType:v32];
  if (!v35)
  {
LABEL_14:

    goto LABEL_15;
  }

  v36 = v35;
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = [a3 localizedSpeedUnitStringForActivityType:a1];
  if (!v40)
  {

    goto LABEL_14;
  }

  v41 = v40;
  v67 = v37;
  v68 = a4;

  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v77[4] = v42;
  v77[5] = v44;
  v66 = sub_10000FCBC();
  v65 = StringProtocol.localizedUppercase.getter();
  v46 = v45;

  if (qword_1008DA668 != -1)
  {
    swift_once();
  }

  v64 = qword_1009252A0;
  v47 = [objc_opt_self() mainBundle];
  v48 = String._bridgeToObjectiveC()();
  v49 = [v47 localizedStringForKey:v48 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1006D1F70;
  *(v50 + 56) = &type metadata for String;
  v51 = sub_10000A788();
  *(v50 + 32) = v67;
  *(v50 + 40) = v39;
  *(v50 + 96) = &type metadata for String;
  *(v50 + 104) = v51;
  v52 = v65;
  *(v50 + 64) = v51;
  *(v50 + 72) = v52;
  *(v50 + 80) = v46;
  v67 = v39;

  String.init(format:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v53 = v64;
  v77[0] = v64;
  sub_1001ED5AC();
  v53;
  AttributedString.subscript.setter();
  v77[0] = v52;
  v77[1] = v46;
  v54 = type metadata accessor for Locale();
  (*(*(v54 - 8) + 56))(v10, 1, 1, v54);
  sub_10007BD90();
  v56 = v72;
  v55 = v73;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v10, &qword_1008EB540, &unk_1006D5E20);
  if ((*(v70 + 48))(v55, 1, v74) == 1)
  {
    v57 = &qword_1008E1900;
    v58 = &unk_1006E8990;
    v59 = v55;
  }

  else
  {
    v61 = v69;
    sub_10007BE08(v55, v69);
    isa = UIFont.smallCapsVersion()().super.isa;
    sub_10007C0F0();
    v63 = AttributedString.subscript.modify();
    v76 = isa;
    AttributedSubstring.subscript.setter();
    v63(v77, 0);
    v57 = &qword_1008E1908;
    v58 = &unk_1006DFC40;
    v59 = v61;
  }

  sub_10000EA04(v59, v57, v58);
  (*(v71 + 32))(v68, v21, v56);
}

uint64_t sub_10020E8F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100209B68(*a1);
  v5 = v4;
  if (v3 == sub_100209B68(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10020E97C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100209B68(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020E9E0(uint64_t a1)
{
  sub_100209B68(*v1);
  String.hash(into:)();
}

Swift::Int sub_10020EA34(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100209B68(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10020EA94@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10020EC14(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10020EB78()
{
  result = qword_1008E18F0;
  if (!qword_1008E18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E18F0);
  }

  return result;
}

unint64_t sub_10020EC14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100842400, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10020EC60()
{
  result = qword_1008E1948;
  if (!qword_1008E1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1948);
  }

  return result;
}

unint64_t sub_10020ECBC(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_10021447C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10020EFBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6863746177;
  }

  else
  {
    v3 = 0x656E6F687069;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6863746177;
  }

  else
  {
    v5 = 0x656E6F687069;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10020F05C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020F0D8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10020F140(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10020F1C4(uint64_t *a1@<X8>)
{
  v2 = 0x656E6F687069;
  if (*v1)
  {
    v2 = 0x6863746177;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10020F1FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x3434333734393431;
  }

  else
  {
    v3 = 0x3235333734393431;
  }

  if (v2)
  {
    v4 = 0xEA00000000003631;
  }

  else
  {
    v4 = 0xEA00000000003037;
  }

  if (*a2)
  {
    v5 = 0x3434333734393431;
  }

  else
  {
    v5 = 0x3235333734393431;
  }

  if (*a2)
  {
    v6 = 0xEA00000000003037;
  }

  else
  {
    v6 = 0xEA00000000003631;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10020F2A8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020F330(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10020F3A4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10020F434(uint64_t *a1@<X8>)
{
  v2 = 0x3235333734393431;
  if (*v1)
  {
    v2 = 0x3434333734393431;
  }

  v3 = 0xEA00000000003037;
  if (!*v1)
  {
    v3 = 0xEA00000000003631;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10020F478()
{
  v1 = sub_100140278(&qword_1008E1760, &qword_1006D4490);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  swift_defaultActor_initialize();
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 112) = 1;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v7 = sub_100653FFC(0, 0, v3, &unk_1006DE1E8, v6);
  v8 = *(v0 + 112);
  *(v0 + 112) = v7;
  sub_1002151B0(v8);
  return v0;
}

uint64_t sub_10020F5E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_10020F6D0;

    return sub_10020F870();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_10020F6D0()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10020F80C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10020F80C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10020F870()
{
  *(v1 + 24) = v0;

  return _swift_task_switch(sub_10020F900, v0, 0);
}

void sub_10020F900(uint64_t a1)
{
  v58 = v1;
  v2 = v1[3];
  v3 = static os_log_type_t.default.getter();
  v4 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, v4, "[AppStoreQuery] Activating...", 29, 2, _swiftEmptyArrayStorage);

  if (*(v2 + 112))
  {
    v5 = objc_opt_self();
    v6 = [v5 bagSubProfile];
    if (v6)
    {
      v3 = v6;
      v7 = [v5 bagSubProfileVersion];
      if (v7)
      {
        v8 = v7;
        v9 = v1[3];
        v10 = [objc_opt_self() bagForProfile:v3 profileVersion:v7];

        v11 = *(v9 + 120);
        *(v9 + 120) = v10;
        v12 = v10;

        v13 = String._bridgeToObjectiveC()();
        v14 = [v12 stringForKey:v13];

        v1[2] = 0;
        v15 = [v14 valueWithError:v1 + 2];

        v16 = v1[2];
        if (v15 && (v17 = v1[3], v18 = *(v17 + 136), *(v17 + 136) = v15, v19 = v16, v18, v20 = String._bridgeToObjectiveC()(), v21 = [v12 URLForKey:v20], v20, v1[2] = 0, v22 = objc_msgSend(v21, "valueWithError:", v1 + 2), v21, v16 = v1[2], v22))
        {
          v23 = v1[3];
          v24 = v23[18];
          v23[18] = v22;
          v25 = v16;

          v26 = objc_allocWithZone(AMSMediaTokenService);
          v27 = v12;
          v28 = String._bridgeToObjectiveC()();
          v29 = [v26 initWithClientIdentifier:v28 bag:v27];

          v30 = v23[16];
          v23[16] = v29;
          v31 = v29;

          v32 = [objc_allocWithZone(AMSMediaRequestEncoder) initWithTokenService:v31 bag:v27];
          v33 = v23[20];
          v23[20] = v32;

          v34 = [objc_opt_self() ephemeralSessionConfiguration];
          v35 = [objc_allocWithZone(AMSURLSession) initWithConfiguration:v34];

          v36 = [objc_allocWithZone(AMSMediaProtocolHandler) initWithTokenService:v31];
          [v35 setProtocolHandler:v36];
          v37 = v23[19];
          v23[19] = v35;
          v38 = v35;

          v39 = static os_log_type_t.default.getter();
          v40 = HKLogActivity;
          os_log(_:dso:log:_:_:)(v39, &_mh_execute_header, v40, "[AppStoreQuery] Setting state to active", 39, 2, _swiftEmptyArrayStorage);

          v41 = *(v2 + 112);
          *(v2 + 112) = 0;
          sub_1002151B0(v41);
        }

        else
        {
          v42 = v16;
          v43 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v44 = *(v2 + 112);
          *(v2 + 112) = 1;
          sub_1002151B0(v44);
          v45 = static os_log_type_t.error.getter();
          v46 = HKLogActivity;
          if (os_log_type_enabled(HKLogActivity, v45))
          {
            v47 = v46;
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v57 = v49;
            *v48 = 136315138;
            v1[2] = v43;
            swift_errorRetain();
            sub_100140278(&qword_1008EB640, &qword_1006D6730);
            v50 = String.init<A>(describing:)();
            v52 = sub_10000AFDC(v50, v51, &v57);

            *(v48 + 4) = v52;
            _os_log_impl(&_mh_execute_header, v47, v45, "[AppStoreQuery] Failed to activate query: %s", v48, 0xCu);
            sub_100005A40(v49);
          }

          else
          {
          }
        }

        v56 = v1[1];
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v53 = static os_log_type_t.error.getter();
  v54 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v53, &_mh_execute_header, v54, "[AppStoreQuery] Query already activated", 39, 2, _swiftEmptyArrayStorage);

  sub_100214354();
  swift_allocError();
  *v55 = 9;
  swift_willThrow();
  v56 = v1[1];
LABEL_12:

  v56();
}

uint64_t sub_10020FF14(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 128) = a3;
  *(v4 + 16) = a1;
  sub_100140278(&unk_1008EAF30, &qword_1006DE210);
  *(v4 + 40) = swift_task_alloc();
  v5 = type metadata accessor for URLComponents();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100210020, v3, 0);
}

uint64_t sub_100210020()
{
  v55 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_100210FF4(*(v0 + 24), *(v0 + 128) & 1, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000EA04(*(v0 + 40), &unk_1008EAF30, &qword_1006DE210);
    v4 = static os_log_type_t.error.getter();
    v5 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v4))
    {
      v6 = v5;
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v54[0] = v8;
      *v7 = 136315138;
      v9 = Array.description.getter();
      v11 = sub_10000AFDC(v9, v10, v54);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v6, v4, "[AppStoreQuery] Unable to create URL for identifier %s", v7, 0xCu);
      sub_100005A40(v8);
    }

    sub_100214354();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
    goto LABEL_9;
  }

  v13 = *(v0 + 32);
  (*(*(v0 + 56) + 32))(*(v0 + 72), *(v0 + 40), *(v0 + 48));
  v14 = *(v13 + 160);
  *(v0 + 80) = v14;
  v15 = *(v0 + 72);
  if (!v14)
  {
    v38 = *(v0 + 48);
    v39 = *(v0 + 56);
    v40 = static os_log_type_t.error.getter();
    v41 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v40, &_mh_execute_header, v41, "[AppStoreQuery] Unable to retrieve encoder.", 43, 2, _swiftEmptyArrayStorage);

    sub_100214354();
    swift_allocError();
    *v42 = 6;
    swift_willThrow();
    (*(v39 + 8))(v15, v38);
LABEL_9:

    v43 = *(v0 + 8);

    return v43();
  }

  v17 = *(v0 + 56);
  v16 = *(v0 + 64);
  v18 = *(v0 + 48);
  v19 = v14;
  isa = URLComponents._bridgeToObjectiveC()().super.isa;
  v21 = [v19 requestWithComponents:isa];
  *(v0 + 88) = v21;

  v22 = static os_log_type_t.default.getter();
  v23 = HKLogActivity;
  (*(v17 + 16))(v16, v15, v18);
  v24 = os_log_type_enabled(v23, v22);
  v25 = *(v0 + 56);
  v26 = *(v0 + 64);
  v27 = *(v0 + 48);
  if (v24)
  {
    log = v23;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v54[0] = v29;
    *v28 = 136315138;
    sub_100215470(&qword_1008E1B38, 255, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
    v52 = v22;
    v30 = v21;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v34 = *(v25 + 8);
    v34(v26, v27);
    v35 = v31;
    v21 = v30;
    v36 = sub_10000AFDC(v35, v33, v54);

    *(v28 + 4) = v36;
    _os_log_impl(&_mh_execute_header, log, v52, "[AppStoreQuery] Encoding request with components %s.", v28, 0xCu);
    sub_100005A40(v29);
  }

  else
  {
    v34 = *(v25 + 8);
    v34(*(v0 + 64), *(v0 + 48));
  }

  *(v0 + 96) = v34;
  v45 = *(v0 + 24);
  v46 = *(v0 + 32);
  v47 = sub_100215470(&qword_1008E1B10, v37, type metadata accessor for AppStoreQuery, &unk_1006DE1A8);
  v48 = swift_task_alloc();
  *(v0 + 104) = v48;
  *(v48 + 16) = v21;
  *(v48 + 24) = v45;
  v49 = swift_task_alloc();
  *(v0 + 112) = v49;
  v50 = type metadata accessor for URLRequest();
  *v49 = v0;
  v49[1] = sub_1002105C0;
  v51 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v51, v46, v47, 0xD000000000000021, 0x800000010074DED0, sub_100215468, v48, v50);
}

uint64_t sub_1002105C0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1002107C4;
  }

  else
  {
    v4 = sub_100210708;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100210708()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);

  v1(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002107C4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 48);

  v1(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

void sub_100210878(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_100140278(&qword_1008E1B40, &qword_1006DE218);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6, v8);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_1002154B8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002156FC;
  aBlock[3] = &unk_10084CBF0;
  v13 = _Block_copy(aBlock);

  [a2 addFinishBlock:v13];
  _Block_release(v13);
}

uint64_t sub_100210A3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for URLRequest();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v53[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v53[-v12];
  __chkstk_darwin(v14);
  v16 = &v53[-v15];
  if (a2)
  {
    swift_errorRetain();
    v17 = static os_log_type_t.error.getter();
    v18 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v17))
    {
      v19 = v18;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v60 = a2;
      v61 = v21;
      *v20 = 136315394;
      swift_errorRetain();
      sub_100140278(&qword_1008EB640, &qword_1006D6730);
      v22 = String.init<A>(describing:)();
      v24 = sub_10000AFDC(v22, v23, &v61);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = Array.description.getter();
      v27 = sub_10000AFDC(v25, v26, &v61);

      *(v20 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v19, v17, "[AppStoreQuery] Received an error %s encoding the URL for identifiers %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    v61 = a2;
LABEL_5:
    sub_100140278(&qword_1008E1B40, &qword_1006DE218);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    v43 = static os_log_type_t.error.getter();
    v44 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v43))
    {
      v45 = v44;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v61 = v47;
      *v46 = 136315138;
      v48 = Array.description.getter();
      v50 = sub_10000AFDC(v48, v49, &v61);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v45, v43, "[AppStoreQuery] Unable to cast AMSURLRequest for identifiers %s.", v46, 0xCu);
      sub_100005A40(v47);
    }

    sub_100214354();
    v51 = swift_allocError();
    *v52 = 0;
    v61 = v51;
    goto LABEL_5;
  }

  v59 = a4;
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = static os_log_type_t.default.getter();
  v30 = HKLogActivity;
  v31 = *(v8 + 16);
  v31(v13, v16, v7);
  if (os_log_type_enabled(v30, v29))
  {
    v56 = v30;
    v32 = swift_slowAlloc();
    v58 = v31;
    v33 = v32;
    v55 = swift_slowAlloc();
    v61 = v55;
    *v33 = 136315394;
    v34 = Array.description.getter();
    v36 = sub_10000AFDC(v34, v35, &v61);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    sub_100215470(&qword_1008E1B20, 255, &type metadata accessor for URLRequest, &protocol conformance descriptor for URLRequest);
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    v57 = v8 + 16;
    v39 = v38;
    v40 = *(v8 + 8);
    v54 = v29;
    v40(v13, v7);
    v41 = sub_10000AFDC(v37, v39, &v61);

    *(v33 + 14) = v41;
    v42 = v56;
    _os_log_impl(&_mh_execute_header, v56, v54, "[AppStoreQuery] Successfully encoded URL request for identifiers %s and request %s", v33, 0x16u);
    swift_arrayDestroy();

    v31 = v58;
  }

  else
  {
    v40 = *(v8 + 8);
    v40(v13, v7);
  }

  v31(v10, v16, v7);
  sub_100140278(&qword_1008E1B40, &qword_1006DE218);
  CheckedContinuation.resume(returning:)();
  return (v40)(v16, v7);
}

uint64_t sub_100210FF4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v7 - 8);
  v9 = v66 - v8;
  v10 = type metadata accessor for URLComponents();
  __chkstk_darwin(*(v10 - 8));
  v12 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v3 + 136);
  v74 = v14;
  if (!v13)
  {
    v26 = static os_log_type_t.error.getter();
    v27 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v26, &_mh_execute_header, v27, "[AppStoreQuery] Unable to retrieve the country code from the bag.", 65, 2, _swiftEmptyArrayStorage);

LABEL_19:
    v31 = *(v74 + 56);
    v32 = a3;
    v33 = v10;
    goto LABEL_20;
  }

  v15 = *(v3 + 144);
  if (!v15)
  {
    v28 = v13;
    v29 = static os_log_type_t.error.getter();
    v30 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v29, &_mh_execute_header, v30, "[AppStoreQuery] Unable to retrieve the host from the bag.", 57, 2, _swiftEmptyArrayStorage);

    goto LABEL_19;
  }

  v67 = a2;
  v68 = v9;
  v69 = v15;
  v70 = v12;
  v71 = v10;
  v72 = a3;
  v73 = v13;
  v16 = *(a1 + 16);
  v66[0] = a1;
  if (v16)
  {
    v17 = (a1 + 32);
    v18 = v13;
    v19 = v15;
    v20 = _swiftEmptyArrayStorage;
    do
    {
      if (*v17)
      {
        v21 = 0x3434333734393431;
      }

      else
      {
        v21 = 0x3235333734393431;
      }

      if (*v17)
      {
        v22 = 0xEA00000000003037;
      }

      else
      {
        v22 = 0xEA00000000003631;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100042744(0, *(v20 + 2) + 1, 1, v20);
      }

      v24 = *(v20 + 2);
      v23 = *(v20 + 3);
      if (v24 >= v23 >> 1)
      {
        v20 = sub_100042744((v23 > 1), v24 + 1, 1, v20);
      }

      *(v20 + 2) = v24 + 1;
      v25 = &v20[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v22;
      ++v17;
      --v16;
    }

    while (v16);
    goto LABEL_24;
  }

  v20 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage[2];
  v36 = v13;
  v37 = v15;
  if (v35)
  {
LABEL_24:
    v75[0] = v20;
    sub_100140278(&unk_1008E99C0, &unk_1006D2070);
    sub_100020FC0();
    v66[1] = BidirectionalCollection<>.joined(separator:)();

    v38 = v70;
    URLComponents.init()();
    URLComponents.scheme.setter();
    v39 = v69;
    v40 = [v69 absoluteString];
    if (v40)
    {
      v41 = v40;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v42 = v71;
    v43 = v73;
    URLComponents.host.setter();
    v75[0] = 0;
    v75[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    strcpy(v75, "/v1/editorial/");
    HIBYTE(v75[1]) = -18;
    v44 = [v43 description];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48._countAndFlagsBits = v45;
    v48._object = v47;
    String.append(_:)(v48);

    v49._object = 0x800000010074DE50;
    v49._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v49);
    URLComponents.path.setter();
    sub_100140278(&unk_1008EAF40, &unk_1006D6990);
    type metadata accessor for URLQueryItem();
    *(swift_allocObject() + 16) = xmmword_1006D1F70;
    URLQueryItem.init(name:value:)();

    URLQueryItem.init(name:value:)();

    URLComponents.queryItems.setter();
    v50 = v68;
    URLComponents.url.getter();
    v51 = type metadata accessor for URL();
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
      sub_10000EA04(v50, &unk_1008EB5B0, &unk_1006D2BF0);
      v52 = static os_log_type_t.error.getter();
      v53 = HKLogActivity;
      v54 = os_log_type_enabled(HKLogActivity, v52);
      v55 = v72;
      if (v54)
      {
        v56 = v53;
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v75[0] = v58;
        *v57 = 136315138;
        v59 = Array.description.getter();
        v61 = sub_10000AFDC(v59, v60, v75);

        *(v57 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v56, v52, "[AppStoreQuery] Unable to create URL for identifiers %s", v57, 0xCu);
        sub_100005A40(v58);
      }

      else
      {
      }

      (*(v74 + 8))(v38, v42);
      return (*(v74 + 56))(v55, 1, 1, v42);
    }

    else
    {

      sub_10000EA04(v50, &unk_1008EB5B0, &unk_1006D2BF0);
      v62 = v72;
      (*(v74 + 32))(v72, v38, v42);
      return (*(v74 + 56))(v62, 0, 1, v42);
    }
  }

  v63 = v37;

  v64 = static os_log_type_t.error.getter();
  v65 = HKLogActivity;
  os_log(_:dso:log:_:_:)(v64, &_mh_execute_header, v65, "[AppStoreQuery] No editorial identifiers found.", 47, 2, _swiftEmptyArrayStorage, v66[0]);

  v31 = *(v74 + 56);
  v33 = v71;
  v32 = v72;
LABEL_20:

  return v31(v32, 1, 1, v33);
}

uint64_t sub_100211804(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100211824, v1, 0);
}

uint64_t sub_100211824(uint64_t a1)
{
  v2 = v1[4];
  v3 = *(v2 + 152);
  v1[5] = v3;
  if (v3)
  {
    v4 = v1[3];
    v5 = v3;
    isa = URLRequest._bridgeToObjectiveC()().super.isa;
    v7 = [v5 dataTaskPromiseWithRequest:isa];
    v1[6] = v7;

    v9 = sub_100215470(&qword_1008E1B10, v8, type metadata accessor for AppStoreQuery, &unk_1006DE1A8);
    v10 = swift_task_alloc();
    v1[7] = v10;
    *(v10 + 16) = v4;
    *(v10 + 24) = v7;
    v11 = swift_task_alloc();
    v1[8] = v11;
    *v11 = v1;
    v11[1] = sub_100211A64;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v1 + 2, v2, v9, 0xD000000000000015, 0x800000010074DD70, sub_1002152C8, v10, &type metadata for EditorialItemsList);
  }

  else
  {
    v12 = static os_log_type_t.error.getter();
    v13 = HKLogActivity;
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "[AppStoreQuery] Unable to retrieve AMS session.", 47, 2, _swiftEmptyArrayStorage);

    sub_100214354();
    swift_allocError();
    *v14 = 7;
    swift_willThrow();
    v15 = v1[1];

    return v15();
  }
}

uint64_t sub_100211A64()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_100211BF8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_100211B8C;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100211B8C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100211BF8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100211C6C(uint64_t a1, uint64_t a2, void *a3)
{
  v36 = a3;
  v34 = a1;
  v38 = sub_100140278(&qword_1008E1B18, &unk_1006DE1F0);
  v4 = *(v38 - 8);
  v33 = *(v4 + 64);
  __chkstk_darwin(v38);
  v37 = &v29 - v5;
  v6 = type metadata accessor for URLRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v12 = static os_log_type_t.default.getter();
  v13 = HKLogActivity;
  v14 = *(v7 + 16);
  v35 = a2;
  v31 = v14;
  v14(v11, a2, v6);
  if (os_log_type_enabled(v13, v12))
  {
    v30 = v13;
    v15 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v15 = 136315138;
    sub_100215470(&qword_1008E1B20, 255, &type metadata accessor for URLRequest, &protocol conformance descriptor for URLRequest);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v12;
    v19 = v18;
    (*(v7 + 8))(v11, v6);
    v20 = sub_10000AFDC(v16, v19, aBlock);

    *(v15 + 4) = v20;
    v21 = v30;
    _os_log_impl(&_mh_execute_header, v30, v17, "[AppStoreQuery] Begining EditorialItem download for request %s.", v15, 0xCu);
    sub_100005A40(v29);
  }

  else
  {
    (*(v7 + 8))(v11, v6);
  }

  v22 = v32;
  v31(v32, v35, v6);
  v23 = v37;
  v24 = v38;
  (*(v4 + 16))(v37, v34, v38);
  v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v26 = (v8 + *(v4 + 80) + v25) & ~*(v4 + 80);
  v27 = swift_allocObject();
  (*(v7 + 32))(v27 + v25, v22, v6);
  (*(v4 + 32))(v27 + v26, v23, v24);
  aBlock[4] = sub_1002152D0;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002156FC;
  aBlock[3] = &unk_10084CBA0;
  v28 = _Block_copy(aBlock);

  [v36 addFinishBlock:v28];
  _Block_release(v28);
}

uint64_t sub_1002120A4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v72 = a4;
  v7 = type metadata accessor for URLRequest();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = &v70 - v10;
  __chkstk_darwin(v12);
  v14 = &v70 - v13;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v70 - v17;
  if (a2)
  {
    swift_errorRetain();
    v19 = static os_log_type_t.error.getter();
    v20 = HKLogActivity;
    (*(v8 + 16))(v18, a3, v7);
    if (os_log_type_enabled(v20, v19))
    {
      v71 = v20;
      v21 = v7;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v73 = a2;
      v74 = v23;
      *v22 = 136315650;
      swift_errorRetain();
      sub_100140278(&qword_1008EB640, &qword_1006D6730);
      v24 = String.init<A>(describing:)();
      v26 = sub_10000AFDC(v24, v25, &v74);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      sub_100215470(&qword_1008E1B20, 255, &type metadata accessor for URLRequest, &protocol conformance descriptor for URLRequest);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v8 + 8))(v18, v21);
      v30 = sub_10000AFDC(v27, v29, &v74);

      *(v22 + 14) = v30;
      *(v22 + 22) = 2080;
      v73 = a1;
      sub_100140278(&qword_1008E1B30, &unk_1006DE200);
      v31 = Optional.description.getter();
      v33 = sub_10000AFDC(v31, v32, &v74);

      *(v22 + 24) = v33;
      v34 = v71;
      _os_log_impl(&_mh_execute_header, v71, v19, "[AppStoreQuery] Received an error %s downloading the request %s. Result %s", v22, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      (*(v8 + 8))(v18, v7);
    }

    v74 = a2;
LABEL_14:
    sub_100140278(&qword_1008E1B18, &unk_1006DE1F0);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    v39 = static os_log_type_t.error.getter();
    v40 = HKLogActivity;
    (*(v8 + 16))(v11, a3, v7);
    if (os_log_type_enabled(v40, v39))
    {
      v41 = v40;
      v42 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v42 = 136315394;
      sub_100215470(&qword_1008E1B20, 255, &type metadata accessor for URLRequest, &protocol conformance descriptor for URLRequest);
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v44 = v7;
      v45 = v43;
      v47 = v46;
      (*(v8 + 8))(v11, v44);
      v48 = sub_10000AFDC(v45, v47, &v74);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      v73 = 0;
      sub_100140278(&qword_1008DFED8, qword_1006DB480);
      v49 = Optional.description.getter();
      v51 = sub_10000AFDC(v49, v50, &v74);

      *(v42 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v41, v39, "[AppStoreQuery] There are no apps for the request %s. The error is %s.", v42, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      (*(v8 + 8))(v11, v7);
    }

    sub_100214354();
    v67 = swift_allocError();
    *v68 = 5;
    v74 = v67;
    goto LABEL_14;
  }

  v35 = [a1 data];
  v36 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1002153C0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v52 = v74;
  v53 = static os_log_type_t.default.getter();
  v54 = HKLogActivity;
  (*(v8 + 16))(v14, a3, v7);
  if (os_log_type_enabled(v54, v53))
  {
    v70 = v54;
    v56 = v52;
    v57 = v7;
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v71 = v38;
    v60 = v59;
    v74 = v59;
    *v58 = 136315138;
    sub_100215470(&qword_1008E1B20, 255, &type metadata accessor for URLRequest, &protocol conformance descriptor for URLRequest);
    v61 = dispatch thunk of CustomStringConvertible.description.getter();
    v63 = v62;
    v64 = v57;
    v52 = v56;
    (*(v8 + 8))(v14, v64);
    v65 = sub_10000AFDC(v61, v63, &v74);

    *(v58 + 4) = v65;
    v66 = v70;
    _os_log_impl(&_mh_execute_header, v70, v53, "[AppStoreQuery] EditorialItem download complete for request %s.", v58, 0xCu);
    sub_100005A40(v60);
    v38 = v71;
  }

  else
  {
    (*(v8 + 8))(v14, v7);
  }

  v74 = v52;
  sub_100140278(&qword_1008E1B18, &unk_1006DE1F0);
  CheckedContinuation.resume(returning:)();
  return sub_10000AF88(v36, v38);
}

void sub_100212B08(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_100212B94()
{
  sub_1002151B0(*(v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100212BEC()
{
  sub_100212B94();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100212C5C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100212C74(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100212CC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_100212D24(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_100212D58()
{
  result = qword_1008E1AF8;
  if (!qword_1008E1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1AF8);
  }

  return result;
}

unint64_t sub_100212DB0()
{
  result = qword_1008E1B00;
  if (!qword_1008E1B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1B00);
  }

  return result;
}

uint64_t sub_100212E04(uint64_t a1, char a2)
{
  *(v3 + 1008) = v2;
  *(v3 + 1096) = a2;
  *(v3 + 1000) = a1;
  v4 = type metadata accessor for URLRequest();
  *(v3 + 1016) = v4;
  *(v3 + 1024) = *(v4 - 8);
  *(v3 + 1032) = swift_task_alloc();

  return _swift_task_switch(sub_100212ECC, v2, 0);
}

uint64_t sub_100212ECC(uint64_t a1)
{
  v37 = v1;
  v2 = *(*(v1 + 1008) + 112);
  *(v1 + 1040) = v2;
  if (v2 >= 2)
  {

    v6 = static os_log_type_t.default.getter();
    v7 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v6))
    {
      v8 = *(v1 + 1000);

      v9 = v7;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v36[0] = v11;
      *v10 = 134218242;
      *(v10 + 4) = *(v8 + 16);

      *(v10 + 12) = 2080;
      v12 = Array.description.getter();
      v14 = sub_10000AFDC(v12, v13, v36);

      *(v10 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v9, v6, "[AppStoreQuery] Fetching Editorial Items for %ld identifiers %s", v10, 0x16u);
      sub_100005A40(v11);
    }

    v15 = swift_task_alloc();
    *(v1 + 1048) = v15;
    v16 = sub_100140278(&qword_1008EB640, &qword_1006D6730);
    *v15 = v1;
    v15[1] = sub_100213398;

    return Task.value.getter(v16, v2, &type metadata for () + 1, v16, &protocol self-conformance witness table for Error);
  }

  else if (v2)
  {
    sub_100214354();
    swift_allocError();
    *v3 = 8;
    swift_willThrow();

    v4 = *(v1 + 8);

    return v4();
  }

  else
  {
    v17 = [objc_opt_self() sharedConnection];
    if (v17 && (v18 = v17, v19 = [v17 isAppInstallationAllowed], v18, v19))
    {
      v20 = static os_log_type_t.default.getter();
      v21 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, v20))
      {
        v22 = *(v1 + 1000);

        v23 = v21;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v36[0] = v25;
        *v24 = 134218242;
        *(v24 + 4) = *(v22 + 16);

        *(v24 + 12) = 2080;
        v26 = Array.description.getter();
        v28 = sub_10000AFDC(v26, v27, v36);

        *(v24 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v23, v20, "[AppStoreQuery] Fetching Editorial Items for %ld identifiers %s", v24, 0x16u);
        sub_100005A40(v25);
      }

      v29 = *(v1 + 1096);
      v30 = swift_task_alloc();
      *(v1 + 1056) = v30;
      *v30 = v1;
      v30[1] = sub_1002137EC;
      v31 = *(v1 + 1032);
      v32 = *(v1 + 1000);

      return sub_10020FF14(v31, v32, v29 & 1);
    }

    else
    {
      v33 = static os_log_type_t.default.getter();
      v34 = HKLogActivity;
      os_log(_:dso:log:_:_:)(v33, &_mh_execute_header, v34, "[AppStoreQuery] shouldOfferAppStoreSuggestions is false, skipping AppStore suggestions", 86, 2, _swiftEmptyArrayStorage);

      v35 = *(v1 + 8);

      return v35(_swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_100213398()
{
  v2 = *v1;

  v3 = *(v2 + 1008);
  if (v0)
  {

    v4 = sub_1002156F4;
  }

  else
  {
    v4 = sub_1002134D0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002134D0()
{
  v25 = v0;
  v1 = *(v0 + 1008);
  sub_1002151B0(*(v0 + 1040));
  if (*(v1 + 112))
  {
    sub_100214354();
    swift_allocError();
    *v2 = 8;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = [objc_opt_self() sharedConnection];
    if (v5 && (v6 = v5, v7 = [v5 isAppInstallationAllowed], v6, v7))
    {
      v8 = static os_log_type_t.default.getter();
      v9 = HKLogActivity;
      if (os_log_type_enabled(HKLogActivity, v8))
      {
        v10 = *(v0 + 1000);

        v11 = v9;
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v24 = v13;
        *v12 = 134218242;
        *(v12 + 4) = *(v10 + 16);

        *(v12 + 12) = 2080;
        v14 = Array.description.getter();
        v16 = sub_10000AFDC(v14, v15, &v24);

        *(v12 + 14) = v16;
        _os_log_impl(&_mh_execute_header, v11, v8, "[AppStoreQuery] Fetching Editorial Items for %ld identifiers %s", v12, 0x16u);
        sub_100005A40(v13);
      }

      v17 = *(v0 + 1096);
      v18 = swift_task_alloc();
      *(v0 + 1056) = v18;
      *v18 = v0;
      v18[1] = sub_1002137EC;
      v19 = *(v0 + 1032);
      v20 = *(v0 + 1000);

      return sub_10020FF14(v19, v20, v17 & 1);
    }

    else
    {
      v21 = static os_log_type_t.default.getter();
      v22 = HKLogActivity;
      os_log(_:dso:log:_:_:)(v21, &_mh_execute_header, v22, "[AppStoreQuery] shouldOfferAppStoreSuggestions is false, skipping AppStore suggestions", 86, 2, _swiftEmptyArrayStorage);

      v23 = *(v0 + 8);

      return v23(_swiftEmptyArrayStorage);
    }
  }
}

uint64_t sub_1002137EC()
{
  v2 = *v1;
  v2[133] = v0;

  if (v0)
  {
    v3 = v2[126];

    return _swift_task_switch(sub_100214270, v3, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v2[134] = v4;
    *v4 = v2;
    v4[1] = sub_100213960;
    v5 = v2[129];

    return sub_100211804(v5);
  }
}

uint64_t sub_100213960(uint64_t a1)
{
  v4 = *v2;
  v4[135] = v1;

  v5 = v4[126];
  if (v1)
  {
    v6 = sub_1002142D4;
  }

  else
  {
    v4[136] = a1;
    v6 = sub_100213A9C;
  }

  return _swift_task_switch(v6, v5, 0);
}

void sub_100213A9C()
{
  v1 = _swiftEmptyArrayStorage;
  if (*(v0 + 1088))
  {
    v2 = *(v0 + 1088);
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = 0;
  while (2)
  {
    v5 = &v2[3 * v4 + 6];
    v6 = v4;
    while (1)
    {
      if (v6 >= v2[2])
      {
        __break(1u);
        goto LABEL_68;
      }

      v7 = *v5;
      if ((*v5 - 1) >= 2)
      {
        break;
      }

LABEL_8:
      ++v6;
      v5 += 3;
      if (v3 == v6)
      {
        goto LABEL_17;
      }
    }

    if (!v7)
    {
      sub_1002143A8(0);
      goto LABEL_8;
    }

    sub_1001BCA04(*v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1001A24B0(0, v1[2] + 1, 1, v1);
    }

    v9 = v1[2];
    v8 = v1[3];
    if (v9 >= v8 >> 1)
    {
      v1 = sub_1001A24B0((v8 > 1), v9 + 1, 1, v1);
    }

    v4 = v6 + 1;
    v1[2] = v9 + 1;
    v1[v9 + 4] = v7;
    if (v3 - 1 != v6)
    {
      continue;
    }

    break;
  }

LABEL_17:

  v10 = v1[2];
  if (v10)
  {
    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v11 >= v1[2])
      {
        goto LABEL_69;
      }

      v13 = v1[v11 + 4];
      v14 = *(v13 + 16);
      v15 = *(v12 + 2);
      v16 = v15 + v14;
      if (__OFADD__(v15, v14))
      {
        goto LABEL_70;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v16 <= *(v12 + 3) >> 1)
      {
        if (!*(v13 + 16))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v15 <= v16)
        {
          v18 = v15 + v14;
        }

        else
        {
          v18 = v15;
        }

        v12 = sub_1001A2388(isUniquelyReferenced_nonNull_native, v18, 1, v12);
        if (!*(v13 + 16))
        {
LABEL_19:

          if (v14)
          {
            goto LABEL_71;
          }

          goto LABEL_20;
        }
      }

      if ((*(v12 + 3) >> 1) - *(v12 + 2) < v14)
      {
        goto LABEL_72;
      }

      swift_arrayInitWithCopy();

      if (v14)
      {
        v19 = *(v12 + 2);
        v20 = __OFADD__(v19, v14);
        v21 = v19 + v14;
        if (v20)
        {
          goto LABEL_73;
        }

        *(v12 + 2) = v21;
      }

LABEL_20:
      if (v10 == ++v11)
      {
        goto LABEL_36;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_36:

  v22 = *(v12 + 2);
  if (!v22)
  {
    v25 = _swiftEmptyArrayStorage;
LABEL_59:
    v47 = (v0 + 992);

    v48 = [objc_opt_self() hiddenAppBundleIdentifiers];
    v49 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    *(v0 + 992) = _swiftEmptyArrayStorage;

    sub_100214E7C(v25, v49, (v0 + 992));
    swift_bridgeObjectRelease_n();

    v50 = static os_log_type_t.default.getter();
    v51 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v50))
    {
      v52 = v51;
      v53 = swift_slowAlloc();
      *v53 = 134217984;
      swift_beginAccess();
      *(v53 + 4) = *(*v47 + 16);
      _os_log_impl(&_mh_execute_header, v52, v50, "[AppStoreQuery] Found %ld apps to recommend", v53, 0xCu);
    }

    swift_beginAccess();
    v54 = *v47;
    if (*(*v47 + 16) <= 3uLL)
    {

      v56 = v54;
    }

    else
    {
      sub_100311450(*v47, v54 + 32, 0, 7uLL);
      v56 = v55;
    }

    v57 = *(v0 + 1032);
    v58 = *(v0 + 1024);
    v59 = *(v0 + 1016);
    v60 = sub_10019F4D0(v56);

    (*(v58 + 8))(v57, v59);

    v61 = *(v0 + 8);

    v61(v60);
    return;
  }

  v23 = 0;
  v24 = v12 + 224;
  v25 = _swiftEmptyArrayStorage;
LABEL_38:
  v65 = v25;
  v26 = &v24[208 * v23];
  v27 = v23;
  while (v27 < *(v12 + 2))
  {
    v28 = *(v26 - 24);
    v29 = *(v26 - 23);
    v30 = *(v26 - 22);
    v31 = *(v26 - 21);
    v71 = *(v26 - 6);
    v72 = *(v26 - 5);
    v69 = *(v26 - 8);
    v70 = *(v26 - 7);
    v75 = *(v26 - 2);
    v76 = *(v26 - 1);
    v73 = *(v26 - 4);
    v74 = *(v26 - 3);
    v67 = *(v26 - 10);
    v68 = *(v26 - 9);
    v77 = *v26;
    *(v0 + 16) = v30;
    *(v0 + 24) = v31;
    *(v0 + 128) = v73;
    *(v0 + 144) = v74;
    *(v0 + 160) = v75;
    *(v0 + 176) = v76;
    *(v0 + 64) = v69;
    *(v0 + 80) = v70;
    *(v0 + 96) = v71;
    *(v0 + 112) = v72;
    *(v0 + 32) = v67;
    *(v0 + 48) = v68;
    *(v0 + 192) = v77;
    if (sub_100085644(v0 + 16) != 1)
    {
      v32 = *(v0 + 200);
      if (v32)
      {
        v66 = *(v0 + 192);
        *(v0 + 304) = v73;
        *(v0 + 320) = v74;
        *(v0 + 336) = v75;
        *(v0 + 352) = v76;
        *(v0 + 240) = v69;
        *(v0 + 256) = v70;
        *(v0 + 272) = v71;
        *(v0 + 288) = v72;
        *(v0 + 208) = v67;
        *(v0 + 224) = v68;
        if (sub_1002143C8(v0 + 208) != 1)
        {
          v33 = *(v0 + 320);
          *(v0 + 464) = *(v0 + 304);
          *(v0 + 480) = v33;
          v34 = *(v0 + 352);
          *(v0 + 496) = *(v0 + 336);
          *(v0 + 512) = v34;
          v35 = *(v0 + 256);
          *(v0 + 400) = *(v0 + 240);
          *(v0 + 416) = v35;
          v36 = *(v0 + 288);
          *(v0 + 432) = *(v0 + 272);
          *(v0 + 448) = v36;
          v37 = *(v0 + 224);
          *(v0 + 368) = *(v0 + 208);
          *(v0 + 384) = v37;
          if (sub_100085644(v0 + 368) != 1 && *(v0 + 392) && v31 && v29)
          {
            v64 = *(v0 + 392);
            v63 = *(v0 + 384);
            *(v0 + 624) = v73;
            *(v0 + 640) = v74;
            *(v0 + 656) = v75;
            *(v0 + 672) = v76;
            *(v0 + 560) = v69;
            *(v0 + 576) = v70;
            *(v0 + 592) = v71;
            *(v0 + 608) = v72;
            *(v0 + 528) = v67;
            *(v0 + 544) = v68;
            if (sub_100085644(v0 + 528) == 1)
            {
              sub_1002143EC(v0 + 688);
            }

            else
            {
              sub_10021440C(v0 + 560, v0 + 816);
              v38 = *(v0 + 640);
              *(v0 + 752) = *(v0 + 624);
              *(v0 + 768) = v38;
              v39 = *(v0 + 672);
              *(v0 + 784) = *(v0 + 656);
              *(v0 + 800) = v39;
              v40 = *(v0 + 576);
              *(v0 + 688) = *(v0 + 560);
              *(v0 + 704) = v40;
              v41 = *(v0 + 608);
              *(v0 + 720) = *(v0 + 592);
              *(v0 + 736) = v41;
            }

            *&v79[71] = *(v0 + 752);
            *&v79[87] = *(v0 + 768);
            *&v79[103] = *(v0 + 784);
            *&v79[119] = *(v0 + 800);
            *&v79[7] = *(v0 + 688);
            *&v79[23] = *(v0 + 704);
            *&v79[39] = *(v0 + 720);
            *&v79[55] = *(v0 + 736);

            v62 = sub_10020ECBC(v28, v29);
            v43 = v42 & 1;
            v78 = *&v79[112];
            HIBYTE(v78) = v79[127];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = sub_1001A2268(0, *(v65 + 2) + 1, 1, v65);
            }

            v45 = *(v65 + 2);
            v44 = *(v65 + 3);
            if (v45 >= v44 >> 1)
            {
              v65 = sub_1001A2268((v44 > 1), v45 + 1, 1, v65);
            }

            v23 = v27 + 1;
            *(v65 + 2) = v45 + 1;
            v46 = &v65[192 * v45];
            *(v46 + 4) = v66;
            *(v46 + 5) = v32;
            *(v46 + 6) = v30;
            *(v46 + 7) = v31;
            *(v46 + 8) = v63;
            *(v46 + 9) = v64;
            *(v46 + 10) = v62;
            v46[88] = v43;
            v25 = v65;
            *(v46 + 89) = *v79;
            *(v46 + 153) = *&v79[64];
            *(v46 + 137) = *&v79[48];
            *(v46 + 121) = *&v79[32];
            *(v46 + 105) = *&v79[16];
            *(v46 + 27) = *&v79[127];
            *(v46 + 201) = v78;
            *(v46 + 185) = *&v79[96];
            *(v46 + 169) = *&v79[80];
            v24 = v12 + 224;
            if (v22 - 1 != v27)
            {
              goto LABEL_38;
            }

            goto LABEL_59;
          }
        }
      }
    }

    ++v27;
    v26 += 208;
    if (v22 == v27)
    {
      v25 = v65;
      goto LABEL_59;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
}

uint64_t sub_100214270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002142D4()
{
  (*(v0[128] + 8))(v0[129], v0[127]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_100214354()
{
  result = qword_1008E1B08;
  if (!qword_1008E1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1B08);
  }

  return result;
}

uint64_t sub_1002143A8(uint64_t result)
{
  if (result != 2)
  {
    return sub_1002143B8(result);
  }

  return result;
}

uint64_t sub_1002143B8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1002143C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

double sub_1002143EC(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  return result;
}

uint64_t sub_10021440C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008DF7E8, &qword_1006D9980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unsigned __int8 *sub_10021447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100214A08(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_100214A08(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_100214A88(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_100214A88(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_10007DD88(v9, 0), v12 = sub_100214BE0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_100214BE0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100214E00(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100214E00(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_100214E00(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_100214E7C(uint64_t result, uint64_t a2, char **a3)
{
  v42 = *(result + 16);
  if (v42)
  {
    v5 = 0;
    v41 = result + 32;
    v43 = a2 + 56;
    do
    {
      v6 = (v41 + 192 * v5);
      v7 = v6[9];
      v53 = v6[8];
      v54 = v7;
      v8 = v6[11];
      v55 = v6[10];
      v56 = v8;
      v9 = v6[5];
      v49 = v6[4];
      v50 = v9;
      v10 = v6[7];
      v51 = v6[6];
      v52 = v10;
      v11 = v6[1];
      v45 = *v6;
      v46 = v11;
      v12 = v6[3];
      v47 = v6[2];
      v48 = v12;
      v13 = v47;
      v14 = objc_allocWithZone(LSApplicationRecord);

      sub_1001AB490(&v45, v44);
      v15 = String._bridgeToObjectiveC()();

      v44[0] = 0;
      v16 = [v14 initWithBundleIdentifier:v15 allowPlaceholder:0 error:v44];

      if (v16)
      {
        v17 = v44[0];
        v18 = [v16 applicationState];
        v19 = [v18 isInstalled];

        if (v19)
        {
          if (*(a2 + 16))
          {
            Hasher.init(_seed:)();
            String.hash(into:)();
            v20 = Hasher._finalize()();
            v21 = -1 << *(a2 + 32);
            v22 = v20 & ~v21;
            if ((*(v43 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
            {
              v23 = ~v21;
              while (1)
              {
                v24 = (*(a2 + 48) + 16 * v22);
                v25 = *v24 == v13 && v24[1] == *(&v13 + 1);
                if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {
                  break;
                }

                v22 = (v22 + 1) & v23;
                if (((*(v43 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
                {
                  goto LABEL_14;
                }
              }

              goto LABEL_21;
            }
          }
        }

LABEL_14:
      }

      else
      {
        v26 = v44[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v27 = *a3;
      sub_1001AB490(&v45, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_1001A2268(0, *(v27 + 2) + 1, 1, v27);
        *a3 = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = sub_1001A2268((v29 > 1), v30 + 1, 1, v27);
        *a3 = v27;
      }

      *(v27 + 2) = v30 + 1;
      v31 = &v27[192 * v30];
      v32 = v45;
      v33 = v46;
      v34 = v48;
      *(v31 + 4) = v47;
      *(v31 + 5) = v34;
      *(v31 + 2) = v32;
      *(v31 + 3) = v33;
      v35 = v49;
      v36 = v50;
      v37 = v52;
      *(v31 + 8) = v51;
      *(v31 + 9) = v37;
      *(v31 + 6) = v35;
      *(v31 + 7) = v36;
      v38 = v53;
      v39 = v54;
      v40 = v56;
      *(v31 + 12) = v55;
      *(v31 + 13) = v40;
      *(v31 + 10) = v38;
      *(v31 + 11) = v39;
LABEL_21:
      result = sub_1002151C0(&v45);
      ++v5;
    }

    while (v5 != v42);
  }

  return result;
}

double sub_1002151B0(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

uint64_t sub_100215214(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_10020F5C8(a1, v4, v5, v6);
}

uint64_t sub_1002152D0(void *a1, void *a2)
{
  v5 = *(type metadata accessor for URLRequest() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100140278(&qword_1008E1B18, &unk_1006DE1F0) - 8);
  v9 = v2 + ((v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1002120A4(a1, a2, v2 + v6, v9);
}

unint64_t sub_1002153C0()
{
  result = qword_1008E1B28;
  if (!qword_1008E1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1B28);
  }

  return result;
}

uint64_t sub_100215414(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100215470(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1002154B8(uint64_t a1, void *a2)
{
  v5 = *(sub_100140278(&qword_1008E1B40, &qword_1006DE218) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100210A3C(a1, a2, v6, v7);
}

uint64_t getEnumTagSinglePayload for AppStoreQuery.AppStoreQueryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStoreQuery.AppStoreQueryError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10021569C()
{
  result = qword_1008E1B48;
  if (!qword_1008E1B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1B48);
  }

  return result;
}

id sub_100215700(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = [objc_allocWithZone(UIBezierPath) init];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if ((a2 & 1) == 0)
  {
LABEL_10:
    CGRectGetMaxY(*&v13);
    if (qword_1008DAC88 == -1)
    {
LABEL_11:
      UIRoundToScale();
      UIRoundToScale();
      v27 = v26;
      UIRoundToScale();
      [v12 moveToPoint:{v27, v28}];
      v40.origin.x = a3;
      v40.origin.y = a4;
      v40.size.width = a5;
      v40.size.height = a6;
      CGRectGetMaxX(v40);
      UIRoundToScale();
      v30 = v29;
      UIRoundToScale();
      [v12 addLineToPoint:{v30, v31}];
      UIRoundToScale();
      v33 = v32;
      UIRoundToScale();
      [v12 moveToPoint:{v33, v34}];
      v41.origin.x = a3;
      v41.origin.y = a4;
      v41.size.width = a5;
      v41.size.height = a6;
      CGRectGetMaxX(v41);
      UIRoundToScale();
      v36 = v35;
      UIRoundToScale();
      [v12 addLineToPoint:{v36, v37}];
      return v12;
    }

LABEL_14:
    swift_once();
    goto LABEL_11;
  }

  CGRectGetWidth(*&v13);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a1 - 1 < 1)
  {
    __break(1u);
  }

  else if (qword_1008DAC88 == -1)
  {
    goto LABEL_5;
  }

  swift_once();
LABEL_5:
  v17 = 2 - a1;
  v18 = 1;
  while (1)
  {
    UIRoundToScale();
    UIRoundToScale();
    v20 = v19;
    UIRoundToScale();
    [v12 moveToPoint:{v20, v21}];
    v39.origin.x = a3;
    v39.origin.y = a4;
    v39.size.width = a5;
    v39.size.height = a6;
    CGRectGetMaxY(v39);
    UIRoundToScale();
    v23 = v22;
    UIRoundToScale();
    [v12 addLineToPoint:{v23, v24}];
    if (v17 + v18 == 1)
    {
      return v12;
    }

    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_10;
    }
  }
}

void *sub_1002159F8(char a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v13 = [objc_allocWithZone(UIBezierPath) init];
  v14 = v13;
  if (a2)
  {
    [v13 moveToPoint:{0.0, 0.0}];
    v28.origin.x = a3;
    v28.origin.y = a4;
    v28.size.width = a5;
    v28.size.height = a6;
    [v14 addLineToPoint:{0.0, CGRectGetMaxY(v28)}];
    v29.origin.x = a3;
    v29.origin.y = a4;
    v29.size.width = a5;
    v29.size.height = a6;
    [v14 moveToPoint:{CGRectGetMaxX(v29), 0.0}];
    v30.origin.x = a3;
    v30.origin.y = a4;
    v30.size.width = a5;
    v30.size.height = a6;
    MaxX = CGRectGetMaxX(v30);
    v31.origin.x = a3;
    v31.origin.y = a4;
    v31.size.width = a5;
    v31.size.height = a6;
    MaxY = CGRectGetMaxY(v31);
LABEL_7:
    [v14 addLineToPoint:{MaxX, MaxY}];
    return v14;
  }

  if (qword_1008DAC88 != -1)
  {
    swift_once();
  }

  UIRoundToScale();
  v18 = v17;
  UIRoundToScale();
  [v14 moveToPoint:{v18, v19}];
  v32.origin.x = a3;
  v32.origin.y = a4;
  v32.size.width = a5;
  v32.size.height = a6;
  CGRectGetMaxX(v32);
  UIRoundToScale();
  v21 = v20;
  UIRoundToScale();
  [v14 addLineToPoint:{v21, v22}];
  if (a1)
  {
    v33.origin.x = a3;
    v33.origin.y = a4;
    v33.size.width = a5;
    v33.size.height = a6;
    CGRectGetMaxY(v33);
    UIRoundToScale();
    v24 = v23;
    UIRoundToScale();
    [v14 moveToPoint:{v24, v25}];
    v34.origin.x = a3;
    v34.origin.y = a4;
    v34.size.width = a5;
    v34.size.height = a6;
    CGRectGetMaxX(v34);
    v35.origin.x = a3;
    v35.origin.y = a4;
    v35.size.width = a5;
    v35.size.height = a6;
    CGRectGetMaxY(v35);
    UIRoundToScale();
    MaxX = v26;
    UIRoundToScale();
    goto LABEL_7;
  }

  return v14;
}

void *sub_100215C6C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

double sub_100215C8C()
{
  if (qword_1008DAC90 != -1)
  {
    swift_once();
  }

  result = *&qword_100925B90 + *&qword_100925B90;
  *&qword_1008E1B50 = *&qword_100925B90 + *&qword_100925B90;
  return result;
}

char *sub_100215CE8(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainGridLayer;
  *&v2[v4] = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayGridLayer;
  *&v2[v5] = [objc_allocWithZone(CAShapeLayer) init];
  v6 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainStrokeColor;
  sub_1001C8DCC();
  *&v2[v6] = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28235, 0.28235, 0.28235, 1.0);
  v7 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayStrokeColor;
  *&v2[v7] = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.50196, 0.50196, 0.50196, 1.0);
  v8 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineDashPattern;
  sub_100140278(&qword_1008DE450, &qword_1006DE3B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D1F70;
  if (qword_1008DA680 != -1)
  {
    v26 = v9;
    swift_once();
    v9 = v26;
  }

  v10 = *&qword_1008E1B50;
  *&v2[v8] = v9;
  *&v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineWidth] = v10;
  *&v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_nHoursInADay] = 24;
  v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_drawsBottomLine] = 0;
  *(v9 + 32) = v10;
  *(v9 + 40) = v10 * 4.0;
  v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_gridType] = a1 & 1;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for ChartAxisGridLayer();
  v11 = objc_msgSendSuper2(&v27, "init");
  v12 = *&v11[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainGridLayer];
  v13 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineWidth;
  v14 = *&v11[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineWidth];
  v15 = v11;
  v16 = v12;
  [v16 setLineWidth:v14];
  v17 = *&v15[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainStrokeColor];
  v18 = [v17 CGColor];
  [v16 setStrokeColor:v18];

  v19 = CAShapeLayer.withLineDashPattern(_:)();

  [v15 addSublayer:v19];

  v20 = *&v11[v13];
  v21 = *&v15[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayGridLayer];
  [v21 setLineWidth:v20];
  v22 = *&v15[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayStrokeColor];
  v23 = [v22 CGColor];
  [v21 setStrokeColor:v23];

  v24 = CAShapeLayer.withLineDashPattern(_:)();

  [v15 addSublayer:v24];

  return v15;
}

void *sub_100216004(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainGridLayer;
  *&v2[v4] = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayGridLayer;
  *&v2[v5] = [objc_allocWithZone(CAShapeLayer) init];
  v6 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainStrokeColor;
  sub_1001C8DCC();
  *&v2[v6] = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28235, 0.28235, 0.28235, 1.0);
  v7 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayStrokeColor;
  *&v2[v7] = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.50196, 0.50196, 0.50196, 1.0);
  v8 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineDashPattern;
  sub_100140278(&qword_1008DE450, &qword_1006DE3B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D1F70;
  if (qword_1008DA680 != -1)
  {
    v17 = v9;
    swift_once();
    v9 = v17;
  }

  v10 = qword_1008E1B50;
  v11 = *&qword_1008E1B50 * 4.0;
  *(v9 + 32) = qword_1008E1B50;
  *(v9 + 40) = v11;
  *&v2[v8] = v9;
  *&v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineWidth] = v10;
  *&v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_nHoursInADay] = 24;
  v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_drawsBottomLine] = 0;
  sub_10000B1B4(a1, v20);
  v12 = type metadata accessor for ChartAxisGridLayer();
  if (swift_dynamicCast())
  {
    v13 = v19[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_gridType];
  }

  else
  {
    v13 = 0;
  }

  v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_gridType] = v13;
  sub_1000066AC(a1, a1[3]);
  v14 = _bridgeAnythingToObjectiveC<A>(_:)();
  v18.receiver = v2;
  v18.super_class = v12;
  v15 = objc_msgSendSuper2(&v18, "initWithLayer:", v14);
  swift_unknownObjectRelease();
  sub_100005A40(a1);
  return v15;
}

uint64_t sub_100216284(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainGridLayer;
  *(v1 + v4) = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayGridLayer;
  *(v1 + v5) = [objc_allocWithZone(CAShapeLayer) init];
  v6 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainStrokeColor;
  sub_1001C8DCC();
  *(v1 + v6) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.28235, 0.28235, 0.28235, 1.0);
  v7 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayStrokeColor;
  *(v1 + v7) = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.50196, 0.50196, 0.50196, 1.0);
  v8 = OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineDashPattern;
  sub_100140278(&qword_1008DE450, &qword_1006DE3B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1006D1F70;
  if (qword_1008DA680 != -1)
  {
    swift_once();
  }

  v10 = qword_1008E1B50;
  v11 = *&qword_1008E1B50 * 4.0;
  *(v9 + 32) = qword_1008E1B50;
  *(v9 + 40) = v11;

  *(v2 + v8) = v9;
  *(v2 + OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineWidth) = v10;
  *(v2 + OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_nHoursInADay) = 24;
  *(v2 + OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_drawsBottomLine) = 0;

  type metadata accessor for ChartAxisGridLayer();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_100216480(uint64_t a1)
{
  v2 = v1;
  v19.receiver = v1;
  v19.super_class = type metadata accessor for ChartAxisGridLayer();
  objc_msgSendSuper2(&v19, "layoutSublayers");
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_mainGridLayer];
  [v1 bounds];
  [v3 setFrame:?];
  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_overlayGridLayer];
  [v2 bounds];
  [v4 setFrame:?];
  v5 = v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_gridType];
  [v2 bounds];
  v10 = sub_100215700(*&v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_nHoursInADay], v5, v6, v7, v8, v9);
  [v2 bounds];
  v15 = sub_1002159F8(v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_drawsBottomLine], v5, v11, v12, v13, v14, *&v2[OBJC_IVAR____TtC10FitnessApp18ChartAxisGridLayer_lineWidth]);
  v16 = objc_opt_self();
  [v16 begin];
  [v16 setDisableActions:1];
  v17 = [v10 CGPath];
  [v3 setPath:v17];

  v18 = [v15 CGPath];
  [v4 setPath:v18];

  [v16 commit];
}

id sub_1002166A8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ChartAxisGridLayer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_100216790()
{
  result = qword_1008E1BC8;
  if (!qword_1008E1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1BC8);
  }

  return result;
}

__n128 sub_1002167E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100216800(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100216848(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100216910(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = type metadata accessor for Color.RGBColorSpace();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.displayP3(_:), v7);
  result = Color.init(_:red:green:blue:opacity:)();
  *a5 = result;
  return result;
}

double sub_100216A04@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);

  v10 = sub_100216A98(v3, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;

  return result;
}

void *sub_100216A98(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v99 = a2;
  v100 = a3;
  v101 = a1;
  v103 = type metadata accessor for SleepingSampleBaselineBand.Configuration(0);
  v98 = *(v103 - 8);
  __chkstk_darwin(v103);
  v8 = (&v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&v86 - v10);
  v106 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint(0);
  v93 = *(v106 - 8);
  __chkstk_darwin(v106);
  v105 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for BaselineRelativeValue();
  v107 = *(v13 - 8);
  __chkstk_darwin(v13);
  v92 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v94 = (&v86 - v16);
  *&v97 = COERCE_DOUBLE(sub_100140278(&qword_1008E1BD0, &unk_1006DE4A0));
  __chkstk_darwin(v97);
  v18 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v96 = &v86 - v20;
  v95 = sub_100140278(&qword_1008E1BD8, &qword_1006F4BE0);
  __chkstk_darwin(v95);
  v102 = &v86 - v21;
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v86 - v27;
  if ((a4 & 1) != 0 || !*(a5 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v91 = v11;
  v29 = a5 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  Date.timeIntervalSince(_:)();
  Date.addingTimeInterval(_:)();
  v30 = Date.addingTimeInterval(_:)();
  sub_1002175F0(v30, v31);
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v90 = v8;
    v32 = *(v23 + 16);
    v33 = v96;
    v88 = v25;
    v32(v96, v25, v22);
    v34 = v97;
    v35 = v33 + *(v97 + 48);
    v89 = v28;
    v32(v35, v28, v22);
    sub_10001B104(v33, v18, &qword_1008E1BD0, &unk_1006DE4A0);
    v36 = *(v34 + 48);
    v104 = v22;
    v37 = *(v23 + 32);
    v29 = v102;
    v37(v102, v18, v104);
    v38 = *(v23 + 8);
    v38(&v18[v36], v104);
    sub_100217648(v33, v18);
    v37((v29 + *(v95 + 36)), &v18[*(v34 + 48)], v104);
    v22 = v104;
    v96 = (v23 + 8);
    v95 = v38;
    v38(v18, v104);
    sub_100140278(&qword_1008DF270, qword_1006DE4B0);
    v39 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v87 = *(v98 + 72);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1006D46C0;
    v98 = v40;
    v86 = v39;
    v8 = (v40 + v39);
    if (qword_1008DA688 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v41 = v99;
  v42 = v100;
  v43 = *&v99;
  v44 = *&v100;
  v45 = Color.opacity(_:)();
  *v8 = v41;
  v8[1] = v42;
  v46 = v103;
  sub_10001B104(v29, v8 + *(v103 + 20), &qword_1008E1BD8, &qword_1006F4BE0);
  *(v8 + v46[6]) = v45;
  *(v8 + v46[7]) = 0x4010000000000000;
  v47 = v101;
  v48 = *(v101 + 16);
  v49 = _swiftEmptyArrayStorage;
  if (v48)
  {
    v108 = _swiftEmptyArrayStorage;
    sub_100185EA4(0, v48, 0);
    v50 = v47 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v51 = *(v93 + 72);
    v49 = v108;
    v52 = (*&v107 + 16);
    v53 = v92;
    do
    {
      v54 = v105;
      sub_1002176B8(v50, v105);
      (*v52)(v53, v54 + *(v106 + 20), v13);
      sub_10014C324(v54);
      v108 = v49;
      v56 = v49[2];
      v55 = v49[3];
      if (v56 >= v55 >> 1)
      {
        sub_100185EA4((v55 > 1), v56 + 1, 1);
        v49 = v108;
      }

      v49[2] = v56 + 1;
      (*(*&v107 + 32))(v49 + ((*(*&v107 + 80) + 32) & ~*(*&v107 + 80)) + *(*&v107 + 72) * v56, v53, v13);
      v50 += v51;
      --v48;
    }

    while (v48);
    v46 = v103;
    v22 = v104;
    v29 = v102;
  }

  v59 = v49[2];
  *&v97 = v44;
  if (v59)
  {
    v60 = *&v107 + 16;
    v61 = *(*&v107 + 16);
    v62 = v49 + ((*(*&v107 + 80) + 32) & ~*(*&v107 + 80));
    v106 = *(*&v107 + 72);
    v107 = *&v61;
    v63 = (v60 + 72);
    v64 = enum case for BaselineRelativeValue.determinate(_:);
    v65 = (v60 - 8);
    v66 = (v60 + 80);
    v67 = v44;
    v68 = v43;
    v69 = v94;
    v61(v94, v62, v13);
    while (1)
    {
      if ((*v63)(v69, v13) == v64)
      {
        (*v66)(v69, v13);
        if (*v69 >= v68)
        {
          if (v67 < *v69)
          {
            v67 = *v69;
          }
        }

        else
        {
          v68 = *v69;
        }
      }

      else
      {
        (*v65)(v69, v13);
      }

      v62 += v106;
      if (!--v59)
      {
        break;
      }

      (*&v107)(v69, v62, v13);
    }

    v46 = v103;
    v22 = v104;
    v29 = v102;
  }

  else
  {

    v67 = v44;
    v68 = v43;
  }

  v70 = 100.0;
  v71 = fabs(v68 * 100.0);
  v72 = fmod(v71, 50.0);
  v107 = v67 * 100.0;
  v73 = fmod(v67 * 100.0, 50.0);
  v74 = v43 + -0.1;
  v75 = v90;
  v76 = v91;
  v57 = v98;
  if (v68 >= v74)
  {
    v72 = 0.1;
    v80 = *&v97;
    goto LABEL_33;
  }

  v68 = v73;
  v71 = (v71 + 50.0 - v72) / -100.0;
  if (v71 > v74)
  {
    __break(1u);
    goto LABEL_44;
  }

  sub_10001B104(v29, v91 + v46[5], &qword_1008E1BD8, &qword_1006F4BE0);
  v72 = 0.1;
  if (qword_1008DA690 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v77 = Color.opacity(_:)();
    *v76 = v71;
    v76[1] = v74;
    *(v76 + v46[6]) = v77;
    *(v76 + v46[7]) = 4.0;
    v79 = v57[2];
    v78 = v57[3];
    if (v79 >= v78 >> 1)
    {
      v57 = sub_1001A24D4((v78 > 1), v79 + 1, 1, v57);
    }

    v80 = *&v97;
    v57[2] = v79 + 1;
    sub_100217784(v76, v57 + v86 + v79 * v87);
    v73 = v68;
LABEL_33:
    v74 = v80 + v72;
    if (v80 + v72 >= v67)
    {
      sub_10021771C(v29);
      v85 = v95;
      (v95)(v88, v22);
      v85(v89, v22);
      return v57;
    }

    v70 = (v107 + 50.0 - v73) / v70;
    if (v74 <= v70)
    {
      break;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    swift_once();
  }

  sub_10001B104(v29, v75 + v46[5], &qword_1008E1BD8, &qword_1006F4BE0);
  if (qword_1008DA690 != -1)
  {
    swift_once();
  }

  v81 = Color.opacity(_:)();
  *v75 = v74;
  v75[1] = v70;
  *(v75 + v46[6]) = v81;
  *(v75 + v46[7]) = 4.0;
  v83 = v57[2];
  v82 = v57[3];
  if (v83 >= v82 >> 1)
  {
    v57 = sub_1001A24D4((v82 > 1), v83 + 1, 1, v57);
  }

  sub_10021771C(v29);
  v84 = v95;
  (v95)(v88, v22);
  v84(v89, v22);
  v57[2] = v83 + 1;
  sub_100217784(v75, v57 + v86 + v83 * v87);
  return v57;
}

unint64_t sub_1002175F0(uint64_t a1, uint64_t a2)
{
  result = qword_1008E4080;
  if (!qword_1008E4080)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E4080);
  }

  return result;
}

uint64_t sub_100217648(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E1BD0, &unk_1006DE4A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002176B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineRelativeChartPoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021771C(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E1BD8, &qword_1006F4BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100217784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepingSampleBaselineBand.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002177E8()
{
  result = qword_1008E1BE0;
  if (!qword_1008E1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1BE0);
  }

  return result;
}

unint64_t sub_100217840()
{
  result = qword_1008E1BE8;
  if (!qword_1008E1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1BE8);
  }

  return result;
}

unint64_t sub_100217898()
{
  result = qword_1008E1BF0;
  if (!qword_1008E1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1BF0);
  }

  return result;
}

unint64_t sub_1002178F0()
{
  result = qword_1008E1BF8;
  if (!qword_1008E1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1BF8);
  }

  return result;
}

unint64_t sub_100217948()
{
  result = qword_1008E1C00;
  if (!qword_1008E1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C00);
  }

  return result;
}

uint64_t sub_1002179D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v50 = type metadata accessor for DataLinkCommand();
  v2 = *(v50 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v50);
  v49 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Logger();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&unk_1008EB5B0, &unk_1006D2BF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for URL();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v43 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v43 - v11;
  v12 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  type metadata accessor for DataLinkMonitor();
  v15 = static DataLinkMonitor.shared.getter();
  DataLinkMonitor.client.getter();

  dispatch thunk of DataLinkClient.sessionUUID.getter();

  v16 = type metadata accessor for UUID();
  LODWORD(v15) = (*(*(v16 - 8) + 48))(v14, 1, v16);
  sub_10000EA04(v14, &unk_1008DB8A0, qword_1006DBA20);
  if (v15 == 1)
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v54 = 0xD00000000000001ELL;
    v55 = 0x800000010074E0E0;
    sub_100219258(&qword_1008E1C48, &type metadata accessor for DataLinkCommand, &protocol conformance descriptor for DataLinkCommand);
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    URL.init(string:)();

    v18 = v48;
    if ((*(v48 + 48))(v7, 1, v8) == 1)
    {
      sub_10000EA04(v7, &unk_1008EB5B0, &unk_1006D2BF0);
    }

    else
    {
      v24 = v8;
      v25 = v45;
      (*(v18 + 32))(v45, v7, v8);
      v26 = v47;
      static WOLog.dataLink.getter();
      v27 = v43;
      (*(v18 + 16))(v43, v25, v8);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = v27;
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v54 = v32;
        *v31 = 136315138;
        sub_100219258(&unk_1008F5500, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v33 = dispatch thunk of CustomStringConvertible.description.getter();
        v35 = v34;
        v36 = v30;
        v37 = *(v18 + 8);
        v37(v36, v24);
        v38 = sub_10000AFDC(v33, v35, &v54);

        *(v31 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v28, v29, "Sending %s to app", v31, 0xCu);
        sub_100005A40(v32);

        (*(v44 + 8))(v47, v46);
      }

      else
      {

        v37 = *(v18 + 8);
        v37(v27, v24);
        (*(v44 + 8))(v26, v46);
      }

      if (qword_1008DACC0 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for NavigatorContext();
      v40 = objc_allocWithZone(v39);
      v40[OBJC_IVAR___CHNavigatorContext_hasActiveWorkout] = 0;
      v53.receiver = v40;
      v53.super_class = v39;
      v41 = objc_msgSendSuper2(&v53, "init");
      sub_1004DA120(v25, v41);

      v37(v25, v24);
    }
  }

  else
  {
    v19 = static DataLinkMonitor.shared.getter();
    DataLinkMonitor.client.getter();

    v21 = v49;
    v20 = v50;
    (*(v2 + 16))(v49, v51, v50);
    v22 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v23 = swift_allocObject();
    (*(v2 + 32))(v23 + v22, v21, v20);
    dispatch thunk of DataLinkClient.send(command:acknowledged:)();
  }

  return static IntentResult.result<>()();
}

uint64_t sub_1002180FC(int a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v5 = type metadata accessor for DataLinkCommand();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static WOLog.dataLink.getter();
  (*(v6 + 16))(v8, a3, v5);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = v10;
    v16 = v15;
    v26 = swift_slowAlloc();
    v30 = v26;
    *v16 = 136315650;
    sub_100219258(&qword_1008E1C48, &type metadata accessor for DataLinkCommand, &protocol conformance descriptor for DataLinkCommand);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v9;
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v20 = sub_10000AFDC(v17, v19, &v30);

    *(v16 + 4) = v20;
    *(v16 + 12) = 1024;
    *(v16 + 14) = v28 & 1;
    *(v16 + 18) = 2080;
    v29 = a2;
    sub_100140278(&qword_1008DFED8, qword_1006DB480);
    v21 = Optional.description.getter();
    v23 = sub_10000AFDC(v21, v22, &v30);

    *(v16 + 20) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "Sent %s: %{BOOL}d, %s", v16, 0x1Cu);
    swift_arrayDestroy();

    return (*(v27 + 8))(v12, v25);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    return (*(v10 + 8))(v12, v9);
  }
}

NSString sub_100218464()
{
  result = String._bridgeToObjectiveC()();
  qword_1009252C0 = result;
  return result;
}

uint64_t sub_10021849C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_1009252C8);
  sub_10001AC90(v0, qword_1009252C8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100218524(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DataLinkCommand();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1002185E4, 0, 0);
}

uint64_t sub_1002185E4()
{
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100218678, v2, v1);
}

uint64_t sub_100218678()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  (*(v3 + 104))(v1, enum case for DataLinkCommand.resume(_:), v2);
  sub_1002179D0(v1, v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100218740(uint64_t a1)
{
  v2 = sub_100217898();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100218780()
{
  result = qword_1008E1C08;
  if (!qword_1008E1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C08);
  }

  return result;
}

unint64_t sub_1002187D8()
{
  result = qword_1008E1C10;
  if (!qword_1008E1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C10);
  }

  return result;
}

unint64_t sub_100218830()
{
  result = qword_1008E1C18;
  if (!qword_1008E1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C18);
  }

  return result;
}

unint64_t sub_100218888()
{
  result = qword_1008E1C20;
  if (!qword_1008E1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C20);
  }

  return result;
}

NSString sub_100218910()
{
  result = String._bridgeToObjectiveC()();
  qword_1009252E0 = result;
  return result;
}

uint64_t sub_100218948()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_1009252E8);
  sub_10001AC90(v0, qword_1009252E8);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1002189D0(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DataLinkCommand();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100218A90, 0, 0);
}

uint64_t sub_100218A90()
{
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100218B24, v2, v1);
}

uint64_t sub_100218B24()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  (*(v3 + 104))(v1, enum case for DataLinkCommand.pause(_:), v2);
  sub_1002179D0(v1, v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100218BEC(uint64_t a1)
{
  v2 = sub_1002187D8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100218C2C()
{
  result = qword_1008E1C28;
  if (!qword_1008E1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C28);
  }

  return result;
}

unint64_t sub_100218C84()
{
  result = qword_1008E1C30;
  if (!qword_1008E1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C30);
  }

  return result;
}

unint64_t sub_100218CDC()
{
  result = qword_1008E1C38;
  if (!qword_1008E1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C38);
  }

  return result;
}

unint64_t sub_100218D34()
{
  result = qword_1008E1C40;
  if (!qword_1008E1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1C40);
  }

  return result;
}

NSString sub_100218E10()
{
  result = String._bridgeToObjectiveC()();
  qword_100925300 = result;
  return result;
}

uint64_t sub_100218E48()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925308);
  sub_10001AC90(v0, qword_100925308);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100218ED0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for LocalizedStringResource();
  v7 = sub_10001AC90(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_100218F6C(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DataLinkCommand();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10021902C, 0, 0);
}

uint64_t sub_10021902C()
{
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002190C0, v2, v1);
}

uint64_t sub_1002190C0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  (*(v3 + 104))(v1, enum case for DataLinkCommand.markSegment(_:), v2);
  sub_1002179D0(v1, v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100219188(uint64_t a1)
{
  v2 = sub_100218C84();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1002191F4()
{
  result = qword_1008DE270;
  if (!qword_1008DE270)
  {
    sub_100141EEC(&qword_1008DE278, &qword_1006E5400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DE270);
  }

  return result;
}

uint64_t sub_100219258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002192A0(int a1, uint64_t a2)
{
  v5 = *(type metadata accessor for DataLinkCommand() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1002180FC(a1, a2, v6);
}

uint64_t sub_100219340(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100219388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002193F8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for Date();
  v37 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator, &protocol conformance descriptor for DivingDataCalculator);
  v33 = a1;
  v34 = a2;
  v11 = StateObject.wrappedValue.getter();
  v12 = *&v11[OBJC_IVAR___CHDivingDataCalculator_diveSession];

  v13 = [v12 startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = v37;
  v15 = StateObject.wrappedValue.getter();
  v16 = *&v15[OBJC_IVAR___CHDivingDataCalculator_diveSession];

  v17 = [v16 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10021D8EC(&qword_1008E1D78, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v35 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v14 + 8);
  v14 += 8;
  v18(v7, v5);
  v31 = v10;
  v32 = v5;
  v30 = v18;
  v18(v10, v5);
  sub_100140278(&unk_1008E51C0, &qword_1006D8E40);
  v19 = (*(v14 + 72) + 32) & ~*(v14 + 72);
  v37 = *(v14 + 64);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1006D1F70;
  v21 = StateObject.wrappedValue.getter();
  v22 = *&v21[OBJC_IVAR___CHDivingDataCalculator_diveSession];

  v23 = [v22 startDate];
  v36 = v20 + v19;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = StateObject.wrappedValue.getter();
  v25 = *&v24[OBJC_IVAR___CHDivingDataCalculator_diveSession];

  if (v35)
  {
    v26 = [v25 startDate];

    v27 = v31;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.addingTimeInterval(_:)();
    v30(v27, v32);
  }

  else
  {
    v28 = [v25 endDate];

    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v20;
}

void *sub_100219818(uint64_t a1, uint64_t a2, char a3, __n128 a4)
{
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator, &protocol conformance descriptor for DivingDataCalculator);
  v4 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v19[8] = v16;
  v19[9] = v17;
  *v20 = *v18;
  *&v20[9] = *&v18[9];
  v19[4] = v12;
  v19[5] = v13;
  v19[6] = v14;
  v19[7] = v15;
  v19[0] = v8;
  v19[1] = v9;
  v19[2] = v10;
  v19[3] = v11;
  sub_10021D28C(v19);
  if (v20[24])
  {
    return _swiftEmptyArrayStorage;
  }

  if (*&v20[8] > 0.0)
  {
    v6 = *&v20[8];
  }

  else
  {
    v6 = 0.0;
  }

  if (*&v20[16] > 0.0)
  {
    v7 = *&v20[16];
  }

  else
  {
    v7 = 0.0;
  }

  sub_100140278(&qword_1008DE480, &unk_1006D8E10);
  result = swift_allocObject();
  *(result + 1) = xmmword_1006D1F70;
  *(result + 4) = v6;
  *(result + 5) = v7;
  return result;
}

double sub_1002199A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v8 = sub_100140278(&qword_1008E1C58, &qword_1006DE9D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = [objc_opt_self() systemGray6Color];
  v15 = Color.init(_:)();
  *v13 = static HorizontalAlignment.leading.getter();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v16 = sub_100140278(&qword_1008E1C60, L"j\vć");
  sub_100219B44(a1, a2, a3 & 1, &v13[*(v16 + 44)]);
  sub_10001B104(v13, v10, &qword_1008E1C58, &qword_1006DE9D0);
  *a4 = v15;
  v17 = sub_100140278(&qword_1008E1C68, &qword_1006DE9E0);
  sub_10001B104(v10, a4 + *(v17 + 48), &qword_1008E1C58, &qword_1006DE9D0);

  sub_10000EA04(v13, &qword_1008E1C58, &qword_1006DE9D0);
  sub_10000EA04(v10, &qword_1008E1C58, &qword_1006DE9D0);

  return result;
}

void sub_100219B44(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v160 = a4;
  v159 = sub_100140278(&qword_1008E1C70, &qword_1006DE9E8);
  __chkstk_darwin(v159);
  v150 = (&v122 - v7);
  v8 = sub_100140278(&qword_1008E1C78, &unk_1006DE9F0);
  __chkstk_darwin(v8 - 8);
  v147 = &v122 - v9;
  v10 = sub_100140278(&qword_1008E1C80, &unk_100701EC0);
  v135 = *(v10 - 8);
  v136 = v10;
  __chkstk_darwin(v10);
  v134 = &v122 - v11;
  v12 = sub_100140278(&qword_1008E1C88, &qword_1006DEA00);
  v138 = *(v12 - 8);
  v139 = v12;
  __chkstk_darwin(v12);
  v137 = &v122 - v13;
  v143 = sub_100140278(&qword_1008E1C90, &qword_1006DEA08);
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v140 = &v122 - v14;
  v15 = sub_100140278(&qword_1008E1C98, &qword_1006DEA10);
  v144 = *(v15 - 8);
  v145 = v15;
  __chkstk_darwin(v15);
  v142 = &v122 - v16;
  v146 = sub_100140278(&qword_1008E1CA0, &qword_1006DEA18);
  __chkstk_darwin(v146);
  v148 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v149 = &v122 - v19;
  v151 = sub_100140278(&qword_1008E1CA8, &qword_1006DEA20);
  __chkstk_darwin(v151);
  v153 = (&v122 - v20);
  v21 = sub_100140278(&qword_1008E1CB0, &qword_1006DEA28);
  __chkstk_darwin(v21 - 8);
  v158 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v157 = &v122 - v24;
  LocalizedStringKey.init(stringLiteral:)();
  v121 = 256;
  v120 = 0;
  v25 = Text.init(_:tableName:bundle:comment:)();
  v27 = v26;
  v29 = v28;
  static Font.body.getter();
  v30 = Text.font(_:)();
  v154 = v31;
  v155 = v30;
  v152 = v32;
  v156 = v33;

  sub_10004642C(v25, v27, v29 & 1);

  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator, &protocol conformance descriptor for DivingDataCalculator);
  LODWORD(v161) = a3;
  v34 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v197[8] = v194;
  v197[9] = v195;
  v198[0] = v196[0];
  *(v198 + 9) = *(v196 + 9);
  v197[5] = v191;
  v197[6] = v192;
  v197[7] = v193;
  v197[0] = v186;
  v197[1] = v187;
  v197[2] = v188;
  v197[3] = v189;
  v197[4] = v190;
  sub_10021D28C(v197);
  if ((BYTE8(v198[1]) & 1) != 0 || ((v35 = StateObject.wrappedValue.getter(), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v35, v194 = v183, v195 = v184, v196[0] = v185[0], *(v196 + 9) = *(v185 + 9), v190 = v179, v191 = v180, v192 = v181, v193 = v182, v186 = v175, v187 = v176, v188 = v177, v189 = v178, v36 = *(&v175 + 1), , sub_10021D28C(&v186), v36) ? (v37 = v36) : (v37 = _swiftEmptyArrayStorage), v38 = v37[2], , !v38))
  {
    LocalizedStringKey.init(stringLiteral:)();
    v121 = 256;
    v120 = 0;
    v101 = Text.init(_:tableName:bundle:comment:)();
    v103 = v102;
    v105 = v104;
    static Font.body.getter();
    v106 = Text.font(_:)();
    v108 = v107;
    v110 = v109;
    v112 = v111;

    sub_10004642C(v101, v103, v105 & 1);

    v113 = v153;
    *v153 = v106;
    v113[1] = v108;
    *(v113 + 16) = v110 & 1;
    v113[3] = v112;
    swift_storeEnumTagMultiPayload();
    sub_10014A6B0(&qword_1008E1CC0, &qword_1008E1C70, &qword_1006DE9E8, &protocol conformance descriptor for TupleView<A>);
    v100 = v157;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_10;
  }

  v39 = [objc_opt_self() mainBundle];
  v40 = a1;
  v41 = String._bridgeToObjectiveC()();
  v42 = [v39 localizedStringForKey:v41 value:0 table:0];

  v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50, &qword_1006D4A60);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1006D46C0;
  v132 = v40;
  v133 = a2;
  v44 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v183 = v172;
  v184 = v173;
  v185[0] = v174[0];
  *(v185 + 9) = *(v174 + 9);
  v179 = v168;
  v180 = v169;
  v181 = v170;
  v182 = v171;
  v175 = v164;
  v176 = v165;
  v177 = v166;
  v178 = v167;
  v45 = *(&v171 + 1);
  v46 = v172;

  sub_10021D28C(&v175);
  *(v43 + 56) = &type metadata for String;
  *(v43 + 64) = sub_10000A788();
  *(v43 + 32) = v45;
  *(v43 + 40) = v46;
  v47 = String.init(format:_:)();
  v49 = v48;

  *&v164 = v47;
  *(&v164 + 1) = v49;
  sub_10000FCBC();
  v50 = Text.init<A>(_:)();
  v52 = v51;
  LOBYTE(v42) = v53;
  static Font.body.getter();
  v54 = Text.font(_:)();
  v56 = v55;
  v58 = v57;

  sub_10004642C(v50, v52, v42 & 1);

  v59 = [objc_opt_self() paceColors];
  if (v59)
  {
    v60 = v59;
    v61 = [v59 nonGradientTextColor];

    if (v61)
    {
      *&v164 = Color.init(_:)();
      v62 = Text.foregroundStyle<A>(_:)();
      v127 = v63;
      v128 = v62;
      v129 = v64;
      v130 = v65;
      sub_10004642C(v54, v56, v58 & 1);

      __chkstk_darwin(v66);
      v67 = v132;
      v68 = v133;
      *(&v122 - 4) = v132;
      *(&v122 - 3) = v68;
      v69 = v161 & 1;
      v126 = v161 & 1;
      sub_100140278(&qword_1008E1CD0, &qword_1006DEA88);
      sub_10021D2EC();
      v70 = v134;
      v71 = Chart.init(content:)();
      v131 = &v122;
      __chkstk_darwin(v71);
      *(&v122 - 4) = v67;
      *(&v122 - 3) = v68;
      LOBYTE(v120) = v69;
      v123 = sub_100140278(&qword_1008E1CE8, &qword_1006DEA98);
      v72 = sub_10014A6B0(&qword_1008E1CF0, &qword_1008E1C80, &unk_100701EC0, &protocol conformance descriptor for Chart<A>);
      v125 = &protocol conformance descriptor for AxisMarks<A>;
      v73 = sub_10014A6B0(&qword_1008E1CF8, &qword_1008E1CE8, &qword_1006DEA98, &protocol conformance descriptor for AxisMarks<A>);
      v74 = v136;
      v75 = v137;
      View.chartYAxis<A>(content:)();
      (*(v135 + 8))(v70, v74);
      v124 = sub_1002193F8(v67, v68, v161 & 1);
      v163[0] = v124;
      v76 = type metadata accessor for ScaleType();
      v77 = *(v76 - 8);
      v134 = *(v77 + 56);
      v135 = v77 + 56;
      v78 = v147;
      (v134)(v147, 1, 1, v76);
      v122 = sub_100140278(&qword_1008E1D00, &qword_1006DEAA0);
      *&v164 = v74;
      *(&v164 + 1) = v123;
      *&v165 = v72;
      *(&v165 + 1) = v73;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v80 = sub_10021D3FC(&qword_1008E1D08, &qword_1008E1D00, &qword_1006DEAA0);
      v82 = v139;
      v81 = v140;
      View.chartXScale<A>(domain:type:)();
      sub_10000EA04(v78, &qword_1008E1C78, &unk_1006DE9F0);

      v83.n128_f64[0] = (*(v138 + 8))(v75, v82);
      v162 = sub_100219818(v132, v133, v161 & 1, v83);
      (v134)(v78, 1, 1, v76);
      v84 = sub_100140278(&qword_1008E1D10, &qword_1006DEAA8);
      *&v164 = v82;
      *(&v164 + 1) = v122;
      *&v165 = OpaqueTypeConformance2;
      *(&v165 + 1) = v80;
      v85 = swift_getOpaqueTypeConformance2();
      v86 = sub_10021D3FC(&qword_1008E1D18, &qword_1008E1D10, &qword_1006DEAA8);
      v88 = v142;
      v87 = v143;
      View.chartYScale<A>(domain:type:)();
      sub_10000EA04(v78, &qword_1008E1C78, &unk_1006DE9F0);

      v89 = (*(v141 + 8))(v81, v87);
      v161 = &v122;
      __chkstk_darwin(v89);
      v90 = v133;
      *(&v122 - 4) = v132;
      *(&v122 - 3) = v90;
      LOBYTE(v120) = v126;
      sub_100140278(&qword_1008E1D20, &qword_1006DEAB0);
      *&v164 = v87;
      *(&v164 + 1) = v84;
      *&v165 = v85;
      *(&v165 + 1) = v86;
      swift_getOpaqueTypeConformance2();
      sub_10014A6B0(&qword_1008E1D28, &qword_1008E1D20, &qword_1006DEAB0, v125);
      v91 = v149;
      v92 = v145;
      View.chartXAxis<A>(content:)();
      (*(v144 + 8))(v88, v92);
      *(v91 + *(sub_100140278(&qword_1008E1D30, &qword_1006DEAB8) + 36)) = 0;
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      v93 = (v91 + *(v146 + 36));
      v94 = v165;
      *v93 = v164;
      v93[1] = v94;
      v93[2] = v166;
      v95 = v148;
      sub_10001B104(v91, v148, &qword_1008E1CA0, &qword_1006DEA18);
      v96 = v150;
      v97 = v127;
      v98 = v128;
      *v150 = v128;
      *(v96 + 8) = v97;
      LOBYTE(v78) = v129 & 1;
      *(v96 + 16) = v129 & 1;
      *(v96 + 24) = v130;
      v99 = sub_100140278(&qword_1008E1D38, &qword_1006DEAC0);
      sub_10001B104(v95, v96 + *(v99 + 48), &qword_1008E1CA0, &qword_1006DEA18);
      sub_10006965C(v98, v97, v78);

      sub_10006965C(v98, v97, v78);

      sub_10000EA04(v95, &qword_1008E1CA0, &qword_1006DEA18);
      sub_10004642C(v98, v97, v78);

      sub_10001B104(v96, v153, &qword_1008E1C70, &qword_1006DE9E8);
      swift_storeEnumTagMultiPayload();
      sub_10014A6B0(&qword_1008E1CC0, &qword_1008E1C70, &qword_1006DE9E8, &protocol conformance descriptor for TupleView<A>);
      v100 = v157;
      _ConditionalContent<>.init(storage:)();
      sub_10004642C(v98, v97, v78);

      sub_10000EA04(v96, &qword_1008E1C70, &qword_1006DE9E8);
      sub_10000EA04(v91, &qword_1008E1CA0, &qword_1006DEA18);
LABEL_10:
      v114 = v158;
      sub_10001B104(v100, v158, &qword_1008E1CB0, &qword_1006DEA28);
      v115 = v160;
      v117 = v154;
      v116 = v155;
      *v160 = v155;
      v115[1] = v117;
      v118 = v152 & 1;
      *(v115 + 16) = v152 & 1;
      v115[3] = v156;
      v119 = sub_100140278(&qword_1008E1CC8, &unk_1006DEA78);
      sub_10001B104(v114, v115 + *(v119 + 48), &qword_1008E1CB0, &qword_1006DEA28);
      sub_10006965C(v116, v117, v118);

      sub_10000EA04(v100, &qword_1008E1CB0, &qword_1006DEA28);
      sub_10000EA04(v114, &qword_1008E1CB0, &qword_1006DEA28);
      sub_10004642C(v116, v117, v118);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_10021ADCC(uint64_t a1, uint64_t a2, char a3, __n128 a4)
{
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator, &protocol conformance descriptor for DivingDataCalculator);
  v4 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v25[8] = v22;
  v25[9] = v23;
  v26[0] = v24[0];
  *(v26 + 9) = *(v24 + 9);
  v25[4] = v18;
  v25[5] = v19;
  v25[6] = v20;
  v25[7] = v21;
  v25[0] = v14;
  v25[1] = v15;
  v25[2] = v16;
  v25[3] = v17;

  sub_10021D28C(v25);
  v5 = _swiftEmptyArrayStorage;
  if (*(&v14 + 1))
  {
    v5 = *(&v14 + 1);
  }

  v13 = v5;
  v6 = sub_100140278(&qword_1008E1DC8, &qword_1006DEB28);
  v7 = sub_100140278(&qword_1008E1DD0, &unk_1006DEB30);
  v8 = sub_10014A6B0(&qword_1008E1DD8, &qword_1008E1DC8, &qword_1006DEB28, &protocol conformance descriptor for [A]);
  v9 = sub_100141EEC(&qword_1008E1CE0, &qword_1006DEA90);
  type metadata accessor for RuleMark();
  *&v15 = &protocol witness table for RuleMark;
  *(&v15 + 1) = &protocol witness table for Color;
  *&v14 = v9;
  *(&v14 + 1) = swift_getOpaqueTypeConformance2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = sub_10021D8EC(&qword_1008E1DE0, type metadata accessor for WorkoutChartDataElement, &unk_100701D10);
  return ForEach<>.init(_:content:)(&v13, sub_10021B084, 0, v6, &type metadata for Int, v7, v8, OpaqueTypeConformance2, v11);
}

uint64_t sub_10021B084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_100140278(&qword_1008E1DE8, &qword_1006DF920);
  __chkstk_darwin(v3 - 8);
  v24 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v22[1] = v22 - v6;
  v7 = sub_100140278(&qword_1008E1DF0, &qword_1006DEB40);
  __chkstk_darwin(v7 - 8);
  v22[0] = v22 - v8;
  v9 = type metadata accessor for RuleMark();
  v10 = *(v9 - 8);
  v25 = v9;
  v26 = v10;
  __chkstk_darwin(v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008E1CE0, &qword_1006DEA90);
  v14 = *(v13 - 8);
  v27 = v13;
  v28 = v14;
  __chkstk_darwin(v13);
  v23 = v22 - v15;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for Date();
  v16 = a1;
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v17 = type metadata accessor for WorkoutChartDataElement(0);
  v34[0] = *(v16 + *(v17 + 24));
  static PlottableValue.value(_:_:)();

  LocalizedStringKey.init(stringLiteral:)();
  v34[0] = *(v16 + *(v17 + 28));
  static PlottableValue.value(_:_:)();

  RuleMark.init<A, B>(x:yStart:yEnd:)();
  v34[0] = static Color.teal.getter();
  v18 = v23;
  v19 = v25;
  ChartContent.foregroundStyle<A>(_:)();

  (*(v26 + 8))(v12, v19);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v30 = v19;
  v31 = &type metadata for Color;
  v32 = &protocol witness table for RuleMark;
  v33 = &protocol witness table for Color;
  swift_getOpaqueTypeConformance2();
  v20 = v27;
  ChartContent.lineStyle(_:)();
  sub_10021D934(v34);
  return (*(v28 + 8))(v18, v20);
}

uint64_t sub_10021B500(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for AxisMarkValues();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v8 - 8);
  static AxisMarkPreset.inset.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3 & 1;
  sub_10021D48C(a1, a2, a3 & 1);
  static AxisMarkPosition.automatic.getter();
  static AxisMarkValues.automatic.getter();
  sub_100140278(&qword_1008E1D80, &qword_1006DEAF8);
  sub_10021D600();
  return AxisMarks.init(preset:position:values:content:)();
}

uint64_t sub_10021B6AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  LODWORD(v71) = a3;
  v69 = a1;
  v70 = a2;
  v72 = a4;
  v65 = sub_100140278(&qword_1008E1DB0, &qword_1006DEB10);
  __chkstk_darwin(v65);
  v64 = &v57 - v4;
  v5 = sub_100140278(&qword_1008E1DA8, &qword_1006DEB08);
  __chkstk_darwin(v5 - 8);
  v66 = &v57 - v6;
  v7 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v7 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100140278(&qword_1008E1D50, &qword_1006DEAD0);
  v67 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v57 - v12;
  v14 = sub_100140278(&qword_1008E1DB8, &qword_1006DEB18);
  v68 = *(v14 - 8);
  __chkstk_darwin(v14);
  v63 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  v19 = type metadata accessor for AxisGridLine();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v62 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v57 - v23;
  if (AxisValue.index.getter())
  {
    v63 = v9;
    v64 = v13;
    v65 = v14;
    v66 = v11;
    v25 = v72;
    v26 = AxisValue.index.getter();
    result = AxisValue.count.getter();
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if (v26 == result - 1)
    {
      v28 = static UnitPoint.trailing.getter();
      __chkstk_darwin(v28);
      static AxisValueLabelCollisionResolution.automatic.getter();
      static AxisValueLabelOrientation.automatic.getter();
      v56 = &protocol witness table for Text;
      v54 = &v51;
      v55 = &type metadata for Text;
      v53 = sub_10021D890;
      LOBYTE(v52) = 1;
      v51 = 0;
      v29 = v64;
      AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
      sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50, &qword_1006DEAD0, &protocol conformance descriptor for AxisValueLabel<A>);
      v30 = v66;
      AxisMark.offset(x:y:)();
      (*(v67 + 8))(v29, v30);
      (*(v68 + 32))(v25, v18, v65);
      sub_100140278(&qword_1008E1DC0, &qword_1006DEB20);
      swift_storeEnumTagMultiPayload();
      v31 = sub_100140278(&qword_1008E1D98, &qword_1006DEB00);
      return (*(*(v31 - 8) + 56))(v25, 0, 1, v31);
    }

    else
    {
      v49 = sub_100140278(&qword_1008E1D98, &qword_1006DEB00);
      v50 = *(*(v49 - 8) + 56);

      return v50(v25, 1, 1, v49);
    }
  }

  else
  {
    v75 = 0;
    v73 = 0u;
    v74 = 0u;
    v61 = v24;
    AxisGridLine.init(centered:stroke:)();
    v32 = static UnitPoint.bottomTrailing.getter();
    v59 = v34;
    v60 = v33;
    __chkstk_darwin(v32);
    static AxisValueLabelCollisionResolution.automatic.getter();
    static AxisValueLabelOrientation.automatic.getter();
    v56 = &protocol witness table for Text;
    v54 = &v51;
    v55 = &type metadata for Text;
    v53 = sub_10021D89C;
    LOBYTE(v52) = 1;
    v51 = 0;
    AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
    sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50, &qword_1006DEAD0, &protocol conformance descriptor for AxisValueLabel<A>);
    AxisMark.offset(x:y:)();
    (*(v67 + 8))(v13, v11);
    v35 = *(v20 + 16);
    v36 = v62;
    v35(v62, v61, v19);
    v37 = v18;
    v58 = v18;
    v38 = v20;
    v39 = v68;
    v71 = *(v68 + 16);
    v40 = v63;
    v71(v63, v37, v14);
    v41 = v64;
    v35(v64, v36, v19);
    v42 = v65;
    v43 = *(v65 + 48);
    v71(&v41[v43], v40, v14);
    v44 = v66;
    (*(v38 + 32))(v66, v41, v19);
    (*(v39 + 32))(v44 + *(v42 + 48), &v41[v43], v14);
    v45 = *(v39 + 8);
    v45(v58, v14);
    v46 = *(v38 + 8);
    v46(v61, v19);
    v45(v40, v14);
    v46(v36, v19);
    v47 = v72;
    sub_1000886C0(v44, v72);
    sub_100140278(&qword_1008E1DC0, &qword_1006DEB20);
    swift_storeEnumTagMultiPayload();
    v48 = sub_100140278(&qword_1008E1D98, &qword_1006DEB00);
    return (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  }

  return result;
}

uint64_t sub_10021BF74@<X0>(uint64_t *a4@<X8>)
{
  v25 = a4;
  v4 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator, &protocol conformance descriptor for DivingDataCalculator);
  v7 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v37[8] = v34;
  v37[9] = v35;
  v38[0] = *v36;
  *(v38 + 9) = *(&v36[1] + 1);
  v37[4] = v30;
  v37[5] = v31;
  v37[6] = v32;
  v37[7] = v33;
  v37[0] = v26;
  v37[1] = v27;
  v37[2] = v28;
  v37[3] = v29;
  v8 = *(&v34 + 1);
  v9 = v35;
  sub_10021D8A8(*(&v34 + 1), v35, *(&v35 + 1), v36[0]);
  sub_10021D28C(v37);
  if (v9)
  {
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *&v26 = v8;
  *(&v26 + 1) = v9;
  sub_10000FCBC();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v15 = type metadata accessor for Font.Design();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  static Font.system(size:weight:design:)();
  sub_10000EA04(v6, &qword_1008DC448, &qword_1006D48C0);
  v16 = Text.font(_:)();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  sub_10004642C(v10, v12, v14 & 1);

  v24 = v25;
  *v25 = v16;
  v24[1] = v18;
  *(v24 + 16) = v20 & 1;
  v24[3] = v22;
  return result;
}

uint64_t sub_10021C22C@<X0>(uint64_t *a4@<X8>)
{
  v26 = a4;
  v4 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator, &protocol conformance descriptor for DivingDataCalculator);
  v7 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v38[8] = v35;
  v38[9] = v36;
  v39[0] = *v37;
  *(v39 + 9) = *(&v37[1] + 1);
  v38[4] = v31;
  v38[5] = v32;
  v38[6] = v33;
  v38[7] = v34;
  v38[0] = v27;
  v38[1] = v28;
  v38[2] = v29;
  v38[3] = v30;
  v8 = *(&v36 + 1);
  v10 = v36;
  v9 = v37[0];
  sub_10021D8A8(*(&v35 + 1), v36, *(&v36 + 1), v37[0]);
  sub_10021D28C(v38);
  if (v10)
  {
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *&v27 = v8;
  *(&v27 + 1) = v9;
  sub_10000FCBC();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v15 = v14;
  v16 = type metadata accessor for Font.Design();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  static Font.system(size:weight:design:)();
  sub_10000EA04(v6, &qword_1008DC448, &qword_1006D48C0);
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_10004642C(v11, v13, v15 & 1);

  v25 = v26;
  *v26 = v17;
  v25[1] = v19;
  *(v25 + 16) = v21 & 1;
  v25[3] = v23;
  return result;
}

uint64_t sub_10021C4E4(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for AxisMarkPosition();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AxisMarkPreset();
  __chkstk_darwin(v7 - 8);
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator, &protocol conformance descriptor for DivingDataCalculator);
  a3 &= 1u;
  v8 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22[8] = v19;
  v22[9] = v20;
  v23[0] = *v21;
  *(v23 + 9) = *&v21[9];
  v22[4] = v15;
  v22[5] = v16;
  v22[6] = v17;
  v22[7] = v18;
  v22[0] = v11;
  v22[1] = v12;
  v22[2] = v13;
  v22[3] = v14;

  sub_10021D28C(v22);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  sub_10021D48C(a1, a2, a3);
  static AxisMarkPreset.automatic.getter();
  static AxisMarkPosition.automatic.getter();
  sub_100140278(&qword_1008E1D40, &qword_1006DEAC8);
  type metadata accessor for Date();
  sub_10021D49C();
  return AxisMarks.init<A>(preset:position:values:content:)();
}

uint64_t sub_10021C77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v50 = a4;
  v48 = a3;
  v47 = a2;
  v49 = a1;
  v53 = a5;
  v52 = sub_100140278(&qword_1008E1D60, &qword_1006DEAD8) - 8;
  __chkstk_darwin(v52);
  v51 = &v41 - v5;
  v6 = type metadata accessor for AxisValueLabelOrientation();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for AxisValueLabelCollisionResolution();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100140278(&qword_1008E1D50, &qword_1006DEAD0);
  v44 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v46 = sub_100140278(&qword_1008E1D68, &qword_1006DEAE0);
  v56 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v55 = &v41 - v13;
  v14 = type metadata accessor for AxisGridLine();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100140278(&qword_1008E1D70, &unk_1006DEAE8);
  v41 = *(v43 - 8);
  v18 = v41;
  __chkstk_darwin(v43);
  v54 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v41 - v21;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  AxisGridLine.init(centered:stroke:)();
  v42 = v22;
  AxisMark.offset(x:y:)();
  (*(v15 + 8))(v17, v14);
  v57 = v47;
  v58 = v48;
  v59 = v50 & 1;
  v60 = v49;
  static AxisValueLabelCollisionResolution.automatic.getter();
  static AxisValueLabelOrientation.automatic.getter();
  AxisValueLabel.init(centered:anchor:multiLabelAlignment:collisionResolution:offsetsMarks:orientation:horizontalSpacing:verticalSpacing:content:)();
  static Color.gray.getter();
  v23 = Color.opacity(_:)();

  v61 = v23;
  sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50, &qword_1006DEAD0, &protocol conformance descriptor for AxisValueLabel<A>);
  v24 = v55;
  AxisMark.foregroundStyle<A>(_:)();

  (*(v44 + 8))(v10, v8);
  v25 = *(v18 + 16);
  v26 = v54;
  v27 = v43;
  v25(v54, v22, v43);
  v28 = *(v56 + 16);
  v29 = v45;
  v30 = v46;
  v28(v45, v24, v46);
  v31 = v51;
  v25(v51, v26, v27);
  v32 = v52;
  v33 = *(v52 + 56);
  v28(&v31[v33], v29, v30);
  v34 = v41;
  v35 = v53;
  (*(v41 + 32))(v53, v31, v27);
  v36 = *(v32 + 56);
  v37 = v56;
  (*(v56 + 32))(v35 + v36, &v31[v33], v30);
  v38 = *(v37 + 8);
  v38(v55, v30);
  v39 = *(v34 + 8);
  v39(v42, v27);
  v38(v29, v30);
  return (v39)(v54, v27);
}

unint64_t sub_10021CE14@<X0>(uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v40 = a5;
  v41 = a4;
  v5 = sub_100140278(&qword_1008DC448, &qword_1006D48C0);
  __chkstk_darwin(v5 - 8);
  v39 = &v37 - v6;
  v38 = type metadata accessor for Date();
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DivingDataCalculator(0);
  sub_10021D8EC(&qword_1008E1CB8, type metadata accessor for DivingDataCalculator, &protocol conformance descriptor for DivingDataCalculator);
  v37 = StateObject.wrappedValue.getter();
  v10 = StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v53[8] = v50;
  v53[9] = v51;
  v54[0] = v52[0];
  *(v54 + 9) = *(v52 + 9);
  v53[4] = v46;
  v53[5] = v47;
  v53[6] = v48;
  v53[7] = v49;
  v53[0] = v42;
  v53[1] = v43;
  v53[2] = v44;
  v53[3] = v45;
  v11 = v43;

  sub_10021D28C(v53);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  result = AxisValue.index.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < v12[2])
  {
    v14 = v38;
    (*(v7 + 16))(v9, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * result, v38);

    v15 = v37;
    v16 = *(v37 + OBJC_IVAR___CHDivingDataCalculator_axisFormatter);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = [v16 stringFromDate:isa];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    (*(v7 + 8))(v9, v14);
    *&v42 = v19;
    *(&v42 + 1) = v21;
    sub_10000FCBC();
    v22 = Text.init<A>(_:)();
    v24 = v23;
    v26 = v25;
    v27 = type metadata accessor for Font.Design();
    v28 = v39;
    (*(*(v27 - 8) + 56))(v39, 1, 1, v27);
    static Font.system(size:weight:design:)();
    sub_10000EA04(v28, &qword_1008DC448, &qword_1006D48C0);
    v29 = Text.font(_:)();
    v31 = v30;
    v33 = v32;
    v35 = v34;

    sub_10004642C(v22, v24, v26 & 1);

    v36 = v40;
    *v40 = v29;
    v36[1] = v31;
    *(v36 + 16) = v33 & 1;
    v36[3] = v35;
    return result;
  }

  __break(1u);
  return result;
}

double sub_10021D228@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static Alignment.leading.getter();
  a1[1] = v6;
  v7 = sub_100140278(&qword_1008E1C50, &qword_1006DE9C8);
  return sub_1002199A4(v3, v4, v5, (a1 + *(v7 + 44)));
}

unint64_t sub_10021D2EC()
{
  result = qword_1008E1CD8;
  if (!qword_1008E1CD8)
  {
    sub_100141EEC(&qword_1008E1CD0, &qword_1006DEA88);
    sub_100141EEC(&qword_1008E1CE0, &qword_1006DEA90);
    type metadata accessor for RuleMark();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1CD8);
  }

  return result;
}

uint64_t sub_10021D3FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100141EEC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10021D470(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    _objc_release_x1(a1, a2);
  }

  else
  {
  }
}

id sub_10021D48C(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

unint64_t sub_10021D49C()
{
  result = qword_1008E1D48;
  if (!qword_1008E1D48)
  {
    sub_100141EEC(&qword_1008E1D40, &qword_1006DEAC8);
    type metadata accessor for AxisGridLine();
    swift_getOpaqueTypeConformance2();
    sub_100141EEC(&qword_1008E1D50, &qword_1006DEAD0);
    sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50, &qword_1006DEAD0, &protocol conformance descriptor for AxisValueLabel<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1D48);
  }

  return result;
}

unint64_t sub_10021D600()
{
  result = qword_1008E1D88;
  if (!qword_1008E1D88)
  {
    sub_100141EEC(&qword_1008E1D80, &qword_1006DEAF8);
    sub_10021D684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1D88);
  }

  return result;
}

unint64_t sub_10021D684()
{
  result = qword_1008E1D90;
  if (!qword_1008E1D90)
  {
    sub_100141EEC(&qword_1008E1D98, &qword_1006DEB00);
    sub_10021D788();
    sub_100141EEC(&qword_1008E1D50, &qword_1006DEAD0);
    sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50, &qword_1006DEAD0, &protocol conformance descriptor for AxisValueLabel<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1D90);
  }

  return result;
}

unint64_t sub_10021D788()
{
  result = qword_1008E1DA0;
  if (!qword_1008E1DA0)
  {
    sub_100141EEC(&qword_1008E1DA8, &qword_1006DEB08);
    sub_100141EEC(&qword_1008E1D50, &qword_1006DEAD0);
    sub_10014A6B0(&qword_1008E1D58, &qword_1008E1D50, &qword_1006DEAD0, &protocol conformance descriptor for AxisValueLabel<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E1DA0);
  }

  return result;
}

double sub_10021D8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10021D8EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10021D988@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1 || !a2)
  {
    v33 = objc_opt_self();
    v34 = [v33 mainBundle];
    v35 = String._bridgeToObjectiveC()();
    v36 = [v34 localizedStringForKey:v35 value:0 table:0];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = [v33 mainBundle];
    v41 = String._bridgeToObjectiveC()();
    v42 = [v40 localizedStringForKey:v41 value:0 table:0];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    sub_1004C2DD4(v37, v39, v43, v45, 0, 0xE000000000000000, a3, a4);

    goto LABEL_7;
  }

  v8 = objc_opt_self();
  v9 = a2;
  v10 = a1;
  v11 = [v8 minuteUnit];
  v12 = objc_opt_self();
  v52 = v10;
  [v10 doubleValueForUnit:v11];
  v14 = [objc_allocWithZone(NSNumber) initWithDouble:v13];
  v15 = [v12 stringWithNumber:v14 decimalPrecision:1 roundingMode:1];

  v16 = v9;
  if (v15)
  {
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    [v16 doubleValueForUnit:v11];
    v20 = [objc_allocWithZone(NSNumber) initWithDouble:v19];
    v21 = [v12 stringWithNumber:v20 decimalPrecision:1 roundingMode:1];

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = [objc_opt_self() mainBundle];
      v26 = String._bridgeToObjectiveC()();
      v27 = [v25 localizedStringForKey:v26 value:0 table:0];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v18;
      v30 = v16;
      v32 = v31;

      sub_1004C2DD4(v50, v29, v22, v24, v28, v32, a3, a4);

LABEL_7:
      v46 = 0;
      goto LABEL_10;
    }
  }

  v46 = 1;
LABEL_10:
  v47 = type metadata accessor for AttributedString();
  v48 = *(*(v47 - 8) + 56);

  return v48(a4, v46, 1, v47);
}

uint64_t sub_10021DD98@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1 || !a2)
  {
    v33 = objc_opt_self();
    v34 = [v33 mainBundle];
    v35 = String._bridgeToObjectiveC()();
    v36 = [v34 localizedStringForKey:v35 value:0 table:0];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = [v33 mainBundle];
    v41 = String._bridgeToObjectiveC()();
    v42 = [v40 localizedStringForKey:v41 value:0 table:0];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    sub_1004C2DD4(v37, v39, v43, v45, 0, 0xE000000000000000, a3, a4);

    goto LABEL_7;
  }

  v8 = objc_opt_self();
  v9 = a2;
  v10 = a1;
  v11 = [v8 countUnit];
  v12 = objc_opt_self();
  v52 = v10;
  [v10 doubleValueForUnit:v11];
  v14 = [objc_allocWithZone(NSNumber) initWithDouble:v13];
  v15 = [v12 stringWithNumber:v14 decimalPrecision:1];

  v16 = v9;
  if (v15)
  {
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    [v16 doubleValueForUnit:v11];
    v20 = [objc_allocWithZone(NSNumber) initWithDouble:v19];
    v21 = [v12 stringWithNumber:v20 decimalPrecision:1];

    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = [objc_opt_self() mainBundle];
      v26 = String._bridgeToObjectiveC()();
      v27 = [v25 localizedStringForKey:v26 value:0 table:0];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v18;
      v30 = v16;
      v32 = v31;

      sub_1004C2DD4(v50, v29, v22, v24, v28, v32, a3, a4);

LABEL_7:
      v46 = 0;
      goto LABEL_10;
    }
  }

  v46 = 1;
LABEL_10:
  v47 = type metadata accessor for AttributedString();
  v48 = *(*(v47 - 8) + 56);

  return v48(a4, v46, 1, v47);
}

id sub_10021E1A0(void *a1, void *a2, void *a3)
{
  if (!a1 || !a2)
  {
    return sub_1004C2254(11565, 0xE200000000000000, 0x2D2D, 0xE200000000000000, 0, 0xE000000000000000, a3);
  }

  v6 = objc_opt_self();
  v7 = a1;
  v30 = a2;
  v8 = [v6 minuteUnit];
  v9 = objc_opt_self();
  [v7 doubleValueForUnit:v8];
  v11 = [objc_allocWithZone(NSNumber) initWithDouble:v10];
  v12 = [v9 stringWithNumber:v11 decimalPrecision:1 roundingMode:1];

  if (v12)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    [v30 doubleValueForUnit:v8];
    v16 = [objc_allocWithZone(NSNumber) initWithDouble:v15];
    v17 = [v9 stringWithNumber:v16 decimalPrecision:1 roundingMode:1];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = [objc_opt_self() mainBundle];
      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 localizedStringForKey:v22 value:0 table:0];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_1004C2254(v29, v14, v18, v20, v24, v26, a3);

      return v27;
    }
  }

  return 0;
}

id sub_10021E444(void *a1, void *a2, void *a3, void *a4)
{
  if (!a1 || !a2)
  {
    return sub_1004C2254(11565, 0xE200000000000000, 0x2D2D, 0xE200000000000000, 0, 0xE000000000000000, a4);
  }

  v7 = a1;
  v29 = a2;
  result = [a3 unitManager];
  if (result)
  {
    v9 = result;
    v10 = [result userActiveEnergyBurnedUnit];

    v11 = objc_opt_self();
    [v7 doubleValueForUnit:v10];
    v13 = [objc_allocWithZone(NSNumber) initWithDouble:v12];
    v14 = [v11 stringWithNumber:v13 decimalPrecision:1 roundingMode:1];

    if (!v14)
    {

      return 0;
    }

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    [v29 doubleValueForUnit:v10];
    v18 = [objc_allocWithZone(NSNumber) initWithDouble:v17];
    v19 = [v11 stringWithNumber:v18 decimalPrecision:1 roundingMode:1];

    if (!v19)
    {

      return 0;
    }

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    result = [a3 localizedShortActiveEnergyUnitString];
    if (result)
    {
      v23 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000FCBC();
      v24 = StringProtocol.localizedUppercase.getter();
      v26 = v25;

      v27 = sub_1004C2254(v28, v16, v20, v22, v24, v26, a4);

      return v27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10021E708(void *a1, void *a2, void *a3)
{
  if (!a1 || !a2)
  {
    return sub_1004C2254(11565, 0xE200000000000000, 0x2D2D, 0xE200000000000000, 0, 0xE000000000000000, a3);
  }

  v6 = objc_opt_self();
  v7 = a1;
  v30 = a2;
  v8 = [v6 countUnit];
  v9 = objc_opt_self();
  [v7 doubleValueForUnit:v8];
  v11 = [objc_allocWithZone(NSNumber) initWithDouble:v10];
  v12 = [v9 stringWithNumber:v11 decimalPrecision:1];

  if (v12)
  {
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    [v30 doubleValueForUnit:v8];
    v16 = [objc_allocWithZone(NSNumber) initWithDouble:v15];
    v17 = [v9 stringWithNumber:v16 decimalPrecision:1];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      v21 = [objc_opt_self() mainBundle];
      v22 = String._bridgeToObjectiveC()();
      v23 = [v21 localizedStringForKey:v22 value:0 table:0];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v27 = sub_1004C2254(v29, v14, v18, v20, v24, v26, a3);

      return v27;
    }
  }

  return 0;
}

uint64_t sub_10021E9A4(void *a1)
{
  v2 = [objc_opt_self() countUnit];
  [a1 doubleValueForUnit:v2];
  v4 = v3;

  v5 = objc_opt_self();
  v6 = [objc_allocWithZone(NSNumber) initWithDouble:v4];
  v7 = [v5 stringWithNumber:v6 decimalPrecision:1 roundingMode:4];

  if (!v7)
  {
    return 0;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v8;
}

id sub_10021EA9C(void *a1, void *a2, void *a3)
{
  v6 = [objc_opt_self() meterUnit];
  [a1 doubleValueForUnit:v6];
  v8 = v7;

  result = [a2 unitManager];
  if (result)
  {
    v10 = result;
    [result distanceInUserDistanceUnitForDistanceInMeters:1 distanceType:v8];

    v11.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
    v12 = [objc_opt_self() stringWithNumber:v11.super.super.isa decimalPrecision:3];
    if (!v12)
    {

      return 0;
    }

    v13 = v12;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    result = [a2 localizedShortUnitStringForDistanceType:1];
    if (result)
    {
      v17 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000FCBC();
      v18 = StringProtocol.localizedUppercase.getter();
      v20 = v19;

      v21 = sub_1004C154C(v14, v16, v18, v20, a3);

      return v21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10021EC5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10021ECA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10021ED08(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v38 = a5;
  v11 = a3;
  v12 = type metadata accessor for UUID();
  v39 = *(v12 - 8);
  v40 = v12;
  __chkstk_darwin(v12);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Card = type metadata accessor for FitnessPlusUpNextCard(0);
  __chkstk_darwin(Card);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v17 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  if (v11 < 3 || a1 ^ 5 | a2)
  {
    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  else
  {
    sub_10001B104(a4, &v42, &qword_1008DCC60, &qword_1006DEBC0);
    v23 = v43;
    if (v43)
    {
      v24 = v44;
      sub_1000066AC(&v42, v43);
      (*(v24 + 8))(v23, v24);
      (*(v39 + 56))(v22, 0, 1, v40);
      sub_100005A40(&v42);
    }

    else
    {
      sub_10000EA04(&v42, &qword_1008DCC60, &qword_1006DEBC0);
      (*(v39 + 56))(v22, 1, 1, v40);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25 = v42;
    sub_100007C5C(v6 + 8, &v42);
    sub_100007C5C(v6 + 48, v41);
    *(a6 + 24) = Card;
    *(a6 + 32) = &off_100852068;
    v26 = sub_100005994(a6);
    v27 = &v16[Card[5]];
    *v27 = xmmword_1006D4A80;
    v27[16] = 3;
    v16[Card[6]] = 1;
    sub_10001B104(v22, v19, &unk_1008DB8A0, qword_1006DBA20);
    v29 = v39;
    v28 = v40;
    v30 = *(v39 + 48);
    if (v30(v19, 1, v40) == 1)
    {
      v36 = v26;
      v31 = v25;
      v32 = v37;
      UUID.init()();
      sub_10000EA04(v22, &unk_1008DB8A0, qword_1006DBA20);
      v33 = v30(v19, 1, v28);
      v34 = v32;
      v25 = v31;
      v26 = v36;
      if (v33 != 1)
      {
        sub_10000EA04(v19, &unk_1008DB8A0, qword_1006DBA20);
      }
    }

    else
    {
      sub_10000EA04(v22, &unk_1008DB8A0, qword_1006DBA20);
      v34 = v37;
      (*(v29 + 32))(v37, v19, v28);
    }

    (*(v29 + 32))(v16, v34, v28);
    v16[Card[7]] = v38 & 1;
    v16[Card[8]] = 1;
    *&v16[Card[9]] = v25;
    sub_100006260(&v42, &v16[Card[10]]);
    sub_100006260(v41, &v16[Card[11]]);
    sub_10021F194(v16, v26);
  }
}

uint64_t sub_10021F194(uint64_t a1, uint64_t a2)
{
  Card = type metadata accessor for FitnessPlusUpNextCard(0);
  (*(*(Card - 8) + 32))(a2, a1, Card);
  return a2;
}

void sub_10021F200(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X8>)
{
  v38 = a5;
  v11 = a3;
  v12 = type metadata accessor for UUID();
  v39 = *(v12 - 8);
  v40 = v12;
  __chkstk_darwin(v12);
  v37 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Card = type metadata accessor for FitnessPlusUpNextCard(0);
  __chkstk_darwin(Card);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v17 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v35 - v21;
  if (v11 < 3 || a1 ^ 5 | a2)
  {
    *(a6 + 32) = 0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  else
  {
    sub_10001B104(a4, &v42, &qword_1008DCC60, &qword_1006DEBC0);
    v23 = v43;
    if (v43)
    {
      v24 = v44;
      sub_1000066AC(&v42, v43);
      (*(v24 + 8))(v23, v24);
      (*(v39 + 56))(v22, 0, 1, v40);
      sub_100005A40(&v42);
    }

    else
    {
      sub_10000EA04(&v42, &qword_1008DCC60, &qword_1006DEBC0);
      (*(v39 + 56))(v22, 1, 1, v40);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v25 = v42;
    sub_100007C5C(v6 + 8, &v42);
    sub_100007C5C(v6 + 48, v41);
    *(a6 + 24) = Card;
    *(a6 + 32) = &off_100852068;
    v26 = sub_100005994(a6);
    v27 = &v16[Card[5]];
    *v27 = xmmword_1006D4A80;
    v27[16] = 3;
    v16[Card[6]] = 1;
    sub_10001B104(v22, v19, &unk_1008DB8A0, qword_1006DBA20);
    v29 = v39;
    v28 = v40;
    v30 = *(v39 + 48);
    if (v30(v19, 1, v40) == 1)
    {
      v36 = v26;
      v31 = v25;
      v32 = v37;
      UUID.init()();
      sub_10000EA04(v22, &unk_1008DB8A0, qword_1006DBA20);
      v33 = v30(v19, 1, v28);
      v34 = v32;
      v25 = v31;
      v26 = v36;
      if (v33 != 1)
      {
        sub_10000EA04(v19, &unk_1008DB8A0, qword_1006DBA20);
      }
    }

    else
    {
      sub_10000EA04(v22, &unk_1008DB8A0, qword_1006DBA20);
      v34 = v37;
      (*(v29 + 32))(v37, v19, v28);
    }

    (*(v29 + 32))(v16, v34, v28);
    v16[Card[7]] = v38 & 1;
    v16[Card[8]] = 1;
    *&v16[Card[9]] = v25;
    sub_100006260(&v42, &v16[Card[10]]);
    sub_100006260(v41, &v16[Card[11]]);
    sub_100221070(v16, v26, type metadata accessor for FitnessPlusUpNextCard);
  }
}

double sub_10021F69C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v11 = a3;
  v12 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v12 - 8);
  v14 = &v26[-1] - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v11 < 3 || a1 ^ 6 | a2)
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    return result;
  }

  sub_10001B104(a4, v26, &qword_1008DCC60, &qword_1006DEBC0);
  v19 = v27;
  if (!v27)
  {
    sub_10000EA04(v26, &qword_1008DCC60, &qword_1006DEBC0);
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_8:
    UUID.init()();
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      sub_10000EA04(v14, &unk_1008DB8A0, qword_1006DBA20);
    }

    goto LABEL_10;
  }

  v20 = v28;
  sub_1000066AC(v26, v27);
  (*(v20 + 8))(v19, v20);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_100005A40(v26);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    goto LABEL_8;
  }

  (*(v16 + 32))(v18, v14, v15);
LABEL_10:
  v22 = type metadata accessor for FitnessPlusSampleContentCard(0);
  *(a6 + 24) = v22;
  *(a6 + 32) = &off_10084B820;
  v23 = sub_100005994(a6);
  (*(v16 + 32))(v23, v18, v15);
  v24 = v23 + v22[5];
  *&result = 6;
  *v24 = xmmword_1006D4A90;
  v24[16] = 3;
  *(v23 + v22[6]) = 1;
  *(v23 + v22[7]) = a5 & 1;
  *(v23 + v22[8]) = 1;
  return result;
}

void sub_10021F9AC(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v65 = a5;
  v68 = a6;
  v63 = a4;
  v62 = a2;
  v67 = type metadata accessor for UUID();
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v61 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v61 - v12;
  v66 = type metadata accessor for TrendsCard(0);
  __chkstk_darwin(v66);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v61 - v17;
  v19 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v19 - 8);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v61 - v23;
  __chkstk_darwin(v25);
  v27 = &v61 - v26;
  __chkstk_darwin(v28);
  v30 = &v61 - v29;
  if (a3 == 2)
  {
    v62 = v13;
    LODWORD(v61) = v63 & 1;
    v64 = sub_1000779F4(a1, v61);
    v63 = v37;
    sub_10001B104(v65, v70, &qword_1008DCC60, &qword_1006DEBC0);
    v38 = v71;
    if (v71)
    {
      v39 = v72;
      sub_1000066AC(v70, v71);
      (*(v39 + 8))(v38, v39);
      v40 = v69;
      v41 = v67;
      (*(v69 + 56))(v30, 0, 1, v67);
      sub_100005A40(v70);
    }

    else
    {
      sub_10000EA04(v70, &qword_1008DCC60, &qword_1006DEBC0);
      v40 = v69;
      v41 = v67;
      (*(v69 + 56))(v30, 1, 1, v67);
    }

    v42 = a1;
    v43 = v66;
    *(a7 + 24) = v66;
    *(a7 + 32) = &off_100860780;
    v44 = sub_100005994(a7);
    sub_10001B104(v30, v27, &unk_1008DB8A0, qword_1006DBA20);
    v45 = *(v40 + 48);
    if (v45(v27, 1, v41) == 1)
    {
      v69 = v42;
      v46 = v44;
      v47 = v62;
      UUID.init()();
      sub_10000EA04(v30, &unk_1008DB8A0, qword_1006DBA20);
      v48 = v45(v27, 1, v41);
      v49 = v47;
      v44 = v46;
      v42 = v69;
      if (v48 != 1)
      {
        sub_10000EA04(v27, &unk_1008DB8A0, qword_1006DBA20);
      }
    }

    else
    {
      sub_10000EA04(v30, &unk_1008DB8A0, qword_1006DBA20);
      v49 = v62;
      (*(v40 + 32))(v62, v27, v41);
    }

    (*(v40 + 32))(v18, v49, v41);
    v50 = &v18[v43[5]];
    *v50 = v42;
    *(v50 + 1) = 0;
    v50[16] = 2;
    v18[v43[6]] = v61;
    v18[v43[7]] = v68 & 1;
    v18[v43[8]] = 1;
    v51 = &v18[v43[9]];
    *v51 = v64;
    v51[8] = v63;
    v52 = v18;
  }

  else
  {
    if (a3 != 3 || a1 != 8 || v62)
    {
      *(a7 + 32) = 0;
      *a7 = 0u;
      *(a7 + 16) = 0u;
      return;
    }

    v31 = v63 & 1;
    v64 = sub_1000779F4(9, v63 & 1);
    v63 = v32;
    sub_10001B104(v65, v70, &qword_1008DCC60, &qword_1006DEBC0);
    v33 = v71;
    if (v71)
    {
      v34 = v72;
      sub_1000066AC(v70, v71);
      (*(v34 + 8))(v33, v34);
      v35 = v69;
      v36 = v67;
      (*(v69 + 56))(v24, 0, 1, v67);
      sub_100005A40(v70);
    }

    else
    {
      sub_10000EA04(v70, &qword_1008DCC60, &qword_1006DEBC0);
      v35 = v69;
      v36 = v67;
      (*(v69 + 56))(v24, 1, 1, v67);
    }

    v53 = v66;
    *(a7 + 24) = v66;
    *(a7 + 32) = &off_100860780;
    v44 = sub_100005994(a7);
    sub_10001B104(v24, v21, &unk_1008DB8A0, qword_1006DBA20);
    v54 = *(v35 + 48);
    if (v54(v21, 1, v36) == 1)
    {
      v55 = v61;
      UUID.init()();
      sub_10000EA04(v24, &unk_1008DB8A0, qword_1006DBA20);
      if (v54(v21, 1, v36) != 1)
      {
        sub_10000EA04(v21, &unk_1008DB8A0, qword_1006DBA20);
      }
    }

    else
    {
      sub_10000EA04(v24, &unk_1008DB8A0, qword_1006DBA20);
      v56 = *(v35 + 32);
      v55 = v61;
      v56(v61, v21, v36);
    }

    v57 = v63;
    v58 = v63 < 3u;
    (*(v69 + 32))(v15, v55, v36);
    v59 = &v15[v53[5]];
    *v59 = xmmword_1006D4AC0;
    v59[16] = 3;
    v15[v53[6]] = v31;
    v15[v53[7]] = v68 & 1;
    v15[v53[8]] = v58;
    v60 = &v15[v53[9]];
    *v60 = v64;
    v60[8] = v57;
    v52 = v15;
  }

  sub_100221070(v52, v44, type metadata accessor for TrendsCard);
}

void sub_100220120(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v45 = a8;
  v40 = a7;
  v43 = a4;
  v44 = a6;
  v13 = a3;
  v14 = type metadata accessor for UUID();
  v42 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CatalogTipCard(0);
  __chkstk_darwin(v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008E4E80, &qword_100700A40);
  __chkstk_darwin(v19 - 8);
  v46 = &v39 - v20;
  v21 = sub_100140278(&unk_1008DB8A0, qword_1006DBA20);
  __chkstk_darwin(v21 - 8);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v39 - v25;
  if (v13 < 3 || a1 ^ 7 | a2)
  {
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
  }

  else
  {
    sub_10001B104(a5, v47, &qword_1008DCC60, &qword_1006DEBC0);
    v27 = v48;
    if (v48)
    {
      v28 = v49;
      sub_1000066AC(v47, v48);
      (*(v28 + 8))(v27, v28);
      v29 = v42;
      (v42[7])(v26, 0, 1, v14);
      sub_100005A40(v47);
    }

    else
    {
      sub_10000EA04(v47, &qword_1008DCC60, &qword_1006DEBC0);
      v29 = v42;
      (v42[7])(v26, 1, 1, v14);
    }

    v30 = *(v40 + 32);
    v31 = *(*v30 + class metadata base offset for ManagedBuffer + 16);
    v32 = (*(*v30 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v30 + v32));
    v33 = type metadata accessor for CatalogTipActivityTileDataModel.State(0);
    sub_10001B104(v30 + *(v33 + 20) + v31, v46, &qword_1008E4E80, &qword_100700A40);
    os_unfair_lock_unlock((v30 + v32));
    *(a9 + 24) = v16;
    *(a9 + 32) = &off_1008520B0;
    v42 = sub_100005994(a9);
    v34 = &v18[v16[5]];
    *v34 = xmmword_1006D4AA0;
    v34[16] = 3;
    sub_10001B104(v26, v23, &unk_1008DB8A0, qword_1006DBA20);
    v35 = v29;
    v36 = v29[6];
    LODWORD(v31) = v36(v23, 1, v14);
    v37 = v45;

    if (v31 == 1)
    {
      v38 = v41;
      UUID.init()();
      sub_10000EA04(v26, &unk_1008DB8A0, qword_1006DBA20);
      if (v36(v23, 1, v14) != 1)
      {
        sub_10000EA04(v23, &unk_1008DB8A0, qword_1006DBA20);
      }
    }

    else
    {
      sub_10000EA04(v26, &unk_1008DB8A0, qword_1006DBA20);
      v38 = v41;
      (v35[4])(v41, v23, v14);
    }

    (v35[4])(v18, v38, v14);
    v18[v16[6]] = v43 & 1;
    v18[v16[7]] = v44 & 1;
    v18[v16[8]] = 1;
    sub_100015E80(v46, &v18[v16[9]], &qword_1008E4E80, &qword_100700A40);
    *&v18[v16[10]] = v37;
    sub_100221070(v18, v42, type metadata accessor for CatalogTipCard);
  }
}