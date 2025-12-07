void sub_1B9F64E60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B9F64EDC(uint64_t a1)
{
  if (!qword_1EDC6AE88)
  {
    sub_1BA4A1728();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6AE88);
    }
  }
}

void sub_1B9F64F44(uint64_t a1)
{
  if (!qword_1EDC6B790)
  {
    type metadata accessor for UIPluginInfo(255);
    sub_1B9F650B4();
    v1 = sub_1BA4A3BA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B790);
    }
  }
}

unint64_t sub_1B9F64FA8()
{
  result = qword_1EDC69CD8;
  if (!qword_1EDC69CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC69CD8);
  }

  return result;
}

uint64_t type metadata accessor for UIPluginInfo(uint64_t a1)
{
  result = qword_1EDC6DC38;
  if (!qword_1EDC6DC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B9F650B4()
{
  result = qword_1EDC6DC50;
  if (!qword_1EDC6DC50)
  {
    type metadata accessor for UIPluginInfo(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6DC50);
  }

  return result;
}

uint64_t sub_1B9F6512C(uint64_t a1)
{
  v2 = sub_1B9F2F8B0(&qword_1EDC66498, &protocol conformance descriptor for ContentConfigurationItem);

  return MEMORY[0x1EEE0DA58](a1, v2);
}

uint64_t sub_1B9F652B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))(v4);
  return sub_1B9F43A50(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1B9F65364()
{
  v1 = v0;
  sub_1B9F655A8();
  sub_1B9F657C0();
  v2 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v1 + v2, v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (v13)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
  }

  sub_1B9F374E8(&v15, v12, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
  v3 = v13;
  if (!v13)
  {
    sub_1B9F43A50(v12, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
    goto LABEL_9;
  }

  v4 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (!v7)
  {
LABEL_9:
    [v1 setAccessibilityIdentifier_];
    return sub_1B9F43A50(&v15, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
  }

  sub_1B9F25350();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BA4B5480;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_1BA4A6AE8();

  v10 = HKUIJoinStringsForAutomationIdentifier();

  [v1 setAccessibilityIdentifier_];
  return sub_1B9F43A50(&v15, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
}

uint64_t sub_1B9F655C8(uint64_t *a1, void (*a2)(__int128 *))
{
  v4 = *a1;
  swift_beginAccess();
  sub_1B9F374E8(v2 + v4, v11, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (v12)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC62258, &protocol descriptor for ContentConfigurationProvidingItem);
    if (swift_dynamicCast())
    {
      if (*(&v9 + 1))
      {
        sub_1B9F1134C(&v8, v11);
        v5 = v12;
        v6 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        (*(v6 + 16))(&v8, v5, v6);
        a2(&v8);
        return __swift_destroy_boxed_opaque_existential_1(v11);
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v11, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  return sub_1B9F43A50(&v8, &qword_1EBBF0088, &qword_1EDC62258, &protocol descriptor for ContentConfigurationProvidingItem);
}

uint64_t sub_1B9F6575C(uint64_t a1)
{
  result = sub_1B9F2F8B0(&qword_1EDC66498, &protocol conformance descriptor for ContentConfigurationItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B9F657C0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v0 + v1, v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (v9)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC60098, &protocol descriptor for ContentConfigurationAccessoriesProvidingItem);
    if (swift_dynamicCast())
    {
      if (*(&v6 + 1))
      {
        sub_1B9F1134C(&v5, v8);
        v2 = v9;
        v3 = v10;
        __swift_project_boxed_opaque_existential_1(v8, v9);
        (*(v3 + 16))(v2, v3);
        sub_1BA4A75F8();
        return __swift_destroy_boxed_opaque_existential_1(v8);
      }
    }

    else
    {
      v7 = 0;
      v5 = 0u;
      v6 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v8, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v5 = 0u;
    v6 = 0u;
    v7 = 0;
  }

  return sub_1B9F43A50(&v5, &qword_1EBBF00A0, &qword_1EDC60098, &protocol descriptor for ContentConfigurationAccessoriesProvidingItem);
}

uint64_t sub_1B9F65944()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1B9F65A5C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A40A8();
  v15.receiver = v2;
  v15.super_class = type metadata accessor for ContentConfigurationCollectionViewListCell();
  objc_msgSendSuper2(&v15, sel__bridgedUpdateConfigurationUsingState_, v4);

  v5 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v2 + v5, v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (v13)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1B9F0D950(0, &qword_1EDC62258, &protocol descriptor for ContentConfigurationProvidingItem);
    if (swift_dynamicCast())
    {
      if (*(&v10 + 1))
      {
        sub_1B9F1134C(&v9, v12);
        v6 = v13;
        v7 = v14;
        __swift_project_boxed_opaque_existential_1(v12, v13);
        (*(v7 + 24))(v2, a1, v6, v7);
        return __swift_destroy_boxed_opaque_existential_1(v12);
      }
    }

    else
    {
      v11 = 0;
      v9 = 0u;
      v10 = 0u;
    }
  }

  else
  {
    sub_1B9F43A50(v12, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
  }

  return sub_1B9F43A50(&v9, &qword_1EBBF0088, &qword_1EDC62258, &protocol descriptor for ContentConfigurationProvidingItem);
}

void sub_1B9F65DE4(uint64_t a1)
{
  if (!qword_1EDC6B770)
  {
    sub_1BA4A4168();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B770);
    }
  }
}

uint64_t sub_1B9F65E3C@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1B9F65DE4(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 22;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI42ContentConfigurationCollectionViewListCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v3 + v9, v20, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (!v21)
  {
    sub_1B9F43A50(v20, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    goto LABEL_8;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1B9F0D950(0, &qword_1EDC600A0, &protocol descriptor for ContentConfigurationBackgroundProvidingItem);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    goto LABEL_8;
  }

  if (!*(&v23 + 1))
  {
LABEL_8:
    v14 = sub_1B9F43A50(&v22, &qword_1EBBF0080, &qword_1EDC600A0, &protocol descriptor for ContentConfigurationBackgroundProvidingItem);
    goto LABEL_9;
  }

  sub_1B9F1134C(&v22, v25);
  v10 = v26;
  v11 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v11 + 16))(v10, v11);
  v12 = sub_1BA4A4168();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) != 1)
  {
    (*(v13 + 32))(a2, v8, v12);
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  sub_1B9F66560(v8);
  v14 = __swift_destroy_boxed_opaque_existential_1(v25);
LABEL_9:
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x50))(v14);
  v15 = [v3 viewController];
  if (v15)
  {
    v16 = v15;
    UIViewController.resolvedPresentation.getter(v25);

    v17 = v25[0];
  }

  else
  {
    v17 = 0;
  }

  LOBYTE(v25[0]) = v17;
  Presentation.cellBackgroundColor(for:)();
  return sub_1BA4A4118();
}

uint64_t sub_1B9F66128(uint64_t a1, uint64_t a2)
{
  sub_1B9F6621C(0, &qword_1EDC6B770, MEMORY[0x1E69DC0D8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B9F661B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F6621C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F66270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F662D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F66328(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F6638C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F663F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F66454(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F664A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F664FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B9F66560(uint64_t a1)
{
  sub_1B9F65DE4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9F665BC@<X0>(void *a2@<X8>)
{
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x50))(a2);
  v3 = [v2 viewController];
  if (v3)
  {
    v4 = v3;
    UIViewController.resolvedPresentation.getter(v7);

    v5 = v7[0];
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v5;
  Presentation.cellBackgroundColor(for:)();
  return sub_1BA4A4118();
}

void UIViewController.resolvedPresentation.getter(_BYTE *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F668A8(&v26);
  v9 = v26;
  if (v26 == 15)
  {
    sub_1BA4A3DD8();
    v10 = v1;
    v11 = sub_1BA4A3E88();
    v12 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v24 = a1;
      v14 = v13;
      v15 = swift_slowAlloc();
      v25 = v15;
      v26 = ObjectType;
      *v14 = 136446466;
      swift_getMetatypeMetadata();
      v16 = sub_1BA4A6808();
      v18 = sub_1B9F0B82C(v16, v17, &v25);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = UIViewController.resolutionDebugDescription.getter();
      v21 = sub_1B9F0B82C(v19, v20, &v25);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_1B9F07000, v11, v12, "[%{public}s]: No Presentation could be resolved in hierarchy: %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v15, -1, -1);
      v22 = v14;
      a1 = v24;
      MEMORY[0x1BFAF43A0](v22, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v9 = 0;
  }

  *a1 = v9;
}

void sub_1B9F668A8(char *a1@<X8>)
{
  v3 = sub_1B9F21ADC();
  v26 = v3;
  v25[0] = v1;
  sub_1B9F0AD9C(v25, v21 + 1);
  sub_1B9F66B64();
  v4 = v1;
  if (swift_dynamicCast())
  {
    v5 = *(&v23 + 1);
    v6 = v24;
    __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
    (*(v6 + 8))(v21, v5, v6);
    v7 = v21[0];
    __swift_destroy_boxed_opaque_existential_1(&v22);
    __swift_destroy_boxed_opaque_existential_1(v25);
    goto LABEL_24;
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  sub_1BA38B5C0(&v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  v8 = sub_1BA096838();
  v9 = v8;
  v20 = a1;
  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
LABEL_5:
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1BFAF2860](v11, v9);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:

          v14 = *(&v23 + 1);
          v15 = v24;
          __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
          (*(v15 + 8))(v21, v14, v15);
          v7 = v21[0];
          __swift_destroy_boxed_opaque_existential_1(&v22);
          __swift_destroy_boxed_opaque_existential_1(v25);
          goto LABEL_23;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_17:
          v10 = sub_1BA4A7CC8();
          if (!v10)
          {
            break;
          }

          goto LABEL_5;
        }

        v12 = *(v9 + 8 * v11 + 32);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_14;
        }
      }

      v26 = v3;
      v25[0] = v12;
      sub_1B9F0AD9C(v25, v21 + 1);
      if (swift_dynamicCast())
      {
        goto LABEL_15;
      }

      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      sub_1BA38B5C0(&v22);
      __swift_destroy_boxed_opaque_existential_1(v25);
      ++v11;
    }

    while (v13 != v10);
  }

  v16 = [v4 parentViewController];
  if (v16)
  {
    v17 = v16;
    UIViewController.resolvedPresentation.getter(&v22);

    v7 = v22;
  }

  else
  {
    v18 = [v4 presentingViewController];
    if (v18)
    {
      v19 = v18;
      UIViewController.resolvedPresentation.getter(&v22);

      v7 = v22;
    }

    else
    {
      v7 = 15;
    }
  }

LABEL_23:
  a1 = v20;
LABEL_24:
  *a1 = v7;
}

unint64_t sub_1B9F66B64()
{
  result = qword_1EDC6C150;
  if (!qword_1EDC6C150)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6C150);
  }

  return result;
}

uint64_t sub_1B9F66BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 44));
  if (*v4)
  {
    return (*v4)(a1, a2);
  }

  return a1;
}

void *HostViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_recreateViewControllerOnHostedFeedItemChange] = 1;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_sectionContext;
  v11 = type metadata accessor for SectionContext(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v22.receiver = v4;
  v22.super_class = type metadata accessor for HostViewCell(0);
  v12 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *((*MEMORY[0x1E69E7D40] & *v12) + 0xD0);
  v14 = v12;
  v15 = v13();
  v16 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  swift_beginAccess();
  v17 = *(v14 + v16);
  *(v14 + v16) = v15;

  result = [v14 contentView];
  if (*(v14 + v16))
  {
    v19 = result;
    [result addSubview_];

    sub_1B9F67380();
    v20 = v14;
    if ([objc_opt_self() isAppleInternalInstall])
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E69DCC48]) initWithTarget:v14 action:sel_didLongPress_];
      [v21 setNumberOfTouchesRequired_];
      v20 = [v14 contentView];
      [v20 addGestureRecognizer_];
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9F66EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1BA4A1998();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

id sub_1B9F66F60()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = objc_allocWithZone(type metadata accessor for ChromeHostView(0));

  return [v9 initWithFrame_];
}

uint64_t type metadata accessor for ChromeHostView(uint64_t a1)
{
  result = qword_1EDC6DC00;
  if (!qword_1EDC6DC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for HostView(uint64_t a1)
{
  result = qword_1EDC6B878;
  if (!qword_1EDC6B878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F670B4(uint64_t a1)
{
  sub_1B9F6719C(319, qword_1EDC6E9C8, type metadata accessor for SectionContext);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B9F6719C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id HostView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_userDataObserver] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = -1;
  v10 = &v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentFeedItemUniqueIdentifier];
  *v10 = 0;
  v10[1] = 0;
  v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_recreateViewControllerOnHostedFeedItemChange] = 1;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem] = 0;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_sectionContext;
  v12 = type metadata accessor for SectionContext(0);
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = &v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable];
  *v13 = 0;
  v13[1] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView] = 0;
  v14 = &v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier];
  v15 = type metadata accessor for HostView(0);
  *v14 = 0;
  v14[1] = 0;
  v17.receiver = v4;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
}

void sub_1B9F6738C(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_1B9F109F8();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BA4B5890;
  v5 = *&v1[v2];
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = [v5 leadingAnchor];
  v7 = [v1 contentView];
  v8 = [v7 leadingAnchor];

  v9 = [v6 constraintEqualToAnchor_];
  *(v4 + 32) = v9;
  v10 = *&v1[v2];
  if (!v10)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = [v10 trailingAnchor];
  v12 = [v1 contentView];
  v13 = [v12 trailingAnchor];

  v14 = [v11 constraintEqualToAnchor_];
  *(v4 + 40) = v14;
  v15 = *&v1[v2];
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = [v15 topAnchor];
  v17 = [v1 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v4 + 48) = v19;
  v20 = *&v1[v2];
  if (v20)
  {
    v21 = objc_opt_self();
    v22 = [v20 bottomAnchor];
    v23 = [v1 contentView];
    v24 = [v23 bottomAnchor];

    v25 = [v22 constraintEqualToAnchor_];
    *(v4 + 56) = v25;
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v26 = sub_1BA4A6AE8();

    [v21 activateConstraints_];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_1B9F676E0(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for ChromeHostView(0);
  objc_msgSendSuper2(&v16, sel_traitCollectionDidChange_, a1);
  if (a1)
  {
    v3 = [a1 preferredContentSizeCategory];
    v4 = sub_1BA4A74F8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = sub_1BA4A74F8();
  if (a1 && ((v4 ^ v7) & 1) != 0)
  {
    v8 = &v1[OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header];
    swift_beginAccess();
    if (*v8)
    {
      [*v8 removeFromSuperview];
      v9 = *v8;
    }

    else
    {
      v9 = 0;
    }

    *v8 = 0;
    *(v8 + 1) = 0;

    sub_1B9F6CECC();
    v10 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView];
    if (v10)
    {
      v11 = [v10 topAnchor];
      if (*v8)
      {
        v12 = *v8;
      }

      else
      {
        v12 = v1;
      }

      v13 = &selRef_bottomAnchor;
      if (!*v8)
      {
        v13 = &selRef_topAnchor;
      }

      v14 = [v12 *v13];
      v15 = [v11 constraintEqualToAnchor:v14 constant:0.0];

      [v15 setActive_];
    }
  }
}

void sub_1B9F678B4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(v4 + v6);
  if (v7)
  {
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v8 = v7;
    sub_1B9F67948();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B9F67948()
{
  v1 = v0 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (!v4 || (v5 = v4, swift_beginAccess(), v6 = swift_unknownObjectWeakLoadStrong(), v7 = *(v5 + 16), v8 = v2, v7(v6, ObjectType, v5), v8, (v2 = *v1) != 0))
    {
      v9 = *(v1 + 8);
      v10 = swift_getObjectType();
      v11 = *(v9 + 16);
      v12 = v2;
      v13 = v11(v10, v9);

      if (v13)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v15 = Strong;
          [Strong addChildViewController_];
          v16 = v15;
          [v13 didMoveToParentViewController_];
        }

        else
        {
          [v13 willMoveToParentViewController_];
          [v13 removeFromParentViewController];
        }
      }
    }
  }
}

uint64_t sub_1B9F67B0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v1 + v3);
  v4 = swift_endAccess();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x110))(v4);
  return sub_1B9F43AAC(a1, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
}

uint64_t sub_1B9F67BD4()
{
  sub_1B9F67DC4();
  v1 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  result = swift_beginAccess();
  if (!*(v0 + v1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14[0] = Strong, sub_1B9F21ADC(), sub_1B9F75874(), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v12 + 1))
    {
      sub_1B9F1134C(&v11, v14);
      v4 = v15;
      v5 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      result = (*(v5 + 8))(v4, v5);
      if (result == 2 || (result & 1) != 0)
      {
        return __swift_destroy_boxed_opaque_existential_1(v14);
      }

      v6 = *(v0 + v1);
      if (v6)
      {
        type metadata accessor for ChromeHostView(0);
        v7 = swift_dynamicCastClassUnconditional();
        v8 = v6;
        v9 = [v7 layer];
        [v9 setCornerCurve_];

        v10 = [v7 layer];
        [v10 setCornerRadius_];

        [v7 setClipsToBounds_];
        return __swift_destroy_boxed_opaque_existential_1(v14);
      }

      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  return sub_1B9F758D8(&v11);
}

void sub_1B9F67DC4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_item;
  swift_beginAccess();
  sub_1B9F68124(v2 + v0, v21);
  if (!v21[3])
  {
LABEL_11:
    sub_1B9F43AAC(v21, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    goto LABEL_12;
  }

  sub_1B9F0D9AC(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], 1);
  sub_1BA4A27B8();
  if (swift_dynamicCast())
  {
    v3 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
    swift_beginAccess();
    v4 = *(v0 + v3);
    if (v4)
    {
      v5 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_recreateViewControllerOnHostedFeedItemChange;
      swift_beginAccess();
      v4[OBJC_IVAR____TtC18HealthExperienceUI8HostView_recreateViewControllerOnHostedFeedItemChange] = *(v0 + v5);
      v6 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
      swift_beginAccess();
      v7 = *&v4[v6];
      *&v4[v6] = v20;
      v2 = v20;
      v8 = v4;
      sub_1B9F681A0(v7);

      v9 = [v2 baseAutomationIdentifier];
      if (v9)
      {
        v10 = v9;
        v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v13 = v12;

        (*((*MEMORY[0x1E69E7D40] & *v1) + 0x120))(v11, v13);
LABEL_8:

        return;
      }

      v14 = *(v1 + v3);
      if (v14)
      {
        v15 = (v14 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier);
        swift_beginAccess();
        v17 = *v15;
        v16 = v15[1];
        v18 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x120);

        v18(v17, v16);
        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  sub_1B9F68124(v2 + v1, v21);
  sub_1B9F0CE40(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  v19 = sub_1BA4A6808();
  MEMORY[0x1BFAF1350](v19);

  sub_1BA4A8018();
  __break(1u);
}

uint64_t sub_1B9F68124(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CDE8(0, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B9F681A0(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v42 - v11;
  v13 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
  swift_beginAccess();
  v14 = *&v2[v13];
  if (v14)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    sub_1BA4A27B8();
    v15 = v14;
    v16 = a1;
    v17 = sub_1BA4A7798();

    if (v17)
    {
      return;
    }

    v14 = *&v2[v13];
    if (!v14)
    {
      v43 = v5;
      v19 = 0;
    }

    else
    {
LABEL_5:
      v43 = v5;
      v18 = [v14 uniqueIdentifier];
      v19 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v14 = v20;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v43 = v5;
    v19 = 0;
    v14 = 0;
  }

  v21 = &v2[OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentFeedItemUniqueIdentifier];
  *v21 = v19;
  v21[1] = v14;

  v22 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_userDataObserver;
  v23 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI8HostView_userDataObserver];
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI8HostView_userDataObserver] = 0;

  v24 = *&v2[v13];
  if (v24)
  {
    v25 = v24;
    if (HAFeatureFlagViewLoggingEnabled())
    {
      sub_1BA4A3DD8();
      v26 = v2;
      v27 = sub_1BA4A3E88();
      v28 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 138543362;
        *(v29 + 4) = v26;
        *v30 = v26;
        v31 = v26;
        _os_log_impl(&dword_1B9F07000, v27, v28, "%{public}@ Updating hostedViewable", v29, 0xCu);
        sub_1B9F8C6C8(v30);
        MEMORY[0x1BFAF43A0](v30, -1, -1);
        MEMORY[0x1BFAF43A0](v29, -1, -1);
      }

      (*(v43 + 8))(v12, v4);
    }

    sub_1B9F68654(v25);
    v44[0] = v25;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = sub_1BA4A14E8();

    v33 = *&v2[v22];
    *&v2[v22] = v32;
  }

  else
  {
    if (HAFeatureFlagViewLoggingEnabled())
    {
      sub_1BA4A3DD8();
      v34 = v2;
      v35 = sub_1BA4A3E88();
      v36 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138543362;
        *(v37 + 4) = v34;
        *v38 = v34;
        v39 = v34;
        _os_log_impl(&dword_1B9F07000, v35, v36, "%{public}@ Clearing view controller, hostedFeedItem is nil", v37, 0xCu);
        sub_1B9F8C6C8(v38);
        MEMORY[0x1BFAF43A0](v38, -1, -1);
        MEMORY[0x1BFAF43A0](v37, -1, -1);
      }

      (*(v43 + 8))(v8, v4);
    }

    v40 = &v2[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable];
    swift_beginAccess();
    v33 = *v40;
    v41 = *(v40 + 1);
    *v40 = 0;
    *(v40 + 1) = 0;
    sub_1B9F6B084(v33, v41);
  }
}

uint64_t sub_1B9F6861C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1B9F68654(void *a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v67 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  v16 = *v15;
  if (*v15 && *(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_recreateViewControllerOnHostedFeedItemChange) != 1)
  {
    v19 = *(v15 + 1);
    v70 = v5;
    v71 = v19;
    v17 = v16;
  }

  else
  {
    v17 = sub_1B9F68F90(a1);
    if (!v17)
    {
      sub_1BA4A3DD8();
      v32 = v2;
      v33 = a1;
      v34 = sub_1BA4A3E88();
      v35 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        LODWORD(v70) = v35;
        v37 = v36;
        v38 = swift_slowAlloc();
        v68 = v38;
        v71 = swift_slowAlloc();
        v72[0] = v71;
        *v37 = 138543618;
        *(v37 + 4) = v32;
        *v38 = v32;
        *(v37 + 12) = 2082;
        v67[1] = "secondaryDataSource";
        sub_1B9F75364(0, &qword_1EDC6B410, &qword_1EDC6B3D0, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1BA4B5460;
        v40 = v32;
        v41 = [v33 uniqueIdentifier];
        v69 = v4;
        v42 = v41;
        v43 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v67[0] = v34;
        v44 = v5;
        v45 = v43;
        v47 = v46;

        *(v39 + 56) = MEMORY[0x1E69E6158];
        *(v39 + 64) = sub_1B9F1BE20();
        *(v39 + 32) = v45;
        *(v39 + 40) = v47;
        v48 = [v33 dateSubmitted];
        *(v39 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0, 0x1E695DF00);
        *(v39 + 104) = sub_1B9F6A24C();
        *(v39 + 72) = v48;
        v49 = sub_1BA4A67D8();
        v51 = sub_1B9F0B82C(v49, v50, v72);

        *(v37 + 14) = v51;
        v52 = v67[0];
        _os_log_impl(&dword_1B9F07000, v67[0], v70, "%{public}@ Failed to load viewable from feedItem %{public}s", v37, 0x16u);
        v53 = v68;
        sub_1B9F8C6C8(v68);
        MEMORY[0x1BFAF43A0](v53, -1, -1);
        v54 = v71;
        __swift_destroy_boxed_opaque_existential_1(v71);
        MEMORY[0x1BFAF43A0](v54, -1, -1);
        MEMORY[0x1BFAF43A0](v37, -1, -1);

        (*(v44 + 8))(v8, v69);
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }

      v66 = *v15;
      v65 = *(v15 + 1);
      *v15 = 0;
      *(v15 + 1) = 0;
      sub_1B9F6B084(v66, v65);

      [v32 setAccessibilityLabel_];
      return;
    }

    v70 = v5;
    v71 = v18;
    v16 = v17;
  }

  v20 = v17;
  swift_getObjectType();
  v21 = swift_conformsToProtocol2();
  if (v21)
  {
    v22 = v21;
    v69 = v4;
    v23 = v20;
    if (HAFeatureFlagViewLoggingEnabled())
    {
      sub_1BA20749C(v2, a1, v23);
    }

    sub_1B9F6A2F0(a1, v72);
    ObjectType = swift_getObjectType();
    (*(v22 + 24))(v72, ObjectType, v22);
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x128))(1);
  }

  else if (HAFeatureFlagViewLoggingEnabled())
  {
    sub_1BA4A3DD8();
    v24 = v2;
    v25 = sub_1BA4A3E88();
    v26 = sub_1BA4A6FC8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v69 = v4;
      v28 = v27;
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      *(v28 + 4) = v24;
      *v29 = v24;
      v30 = v24;
      _os_log_impl(&dword_1B9F07000, v25, v26, "%{public}@ hostedViewable is not a context consumer", v28, 0xCu);
      sub_1B9F8C6C8(v29);
      MEMORY[0x1BFAF43A0](v29, -1, -1);
      v31 = v28;
      v4 = v69;
      MEMORY[0x1BFAF43A0](v31, -1, -1);
    }

    (*(v70 + 8))(v12, v4);
  }

  v56 = sub_1BA4A2718();
  v57 = v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface;
  v58 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface);
  v59 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_currentUserInterface + 8);
  *v57 = v56;
  *(v57 + 1) = v60;
  v61 = v57[16];
  v57[16] = v62;
  sub_1B9F6B070(v58, v59, v61);
  sub_1B9F6AE74(v20, v71);
  v63 = [a1 uniqueIdentifier];
  _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();

  if (qword_1EDC5E100 != -1)
  {
    swift_once();
  }

  sub_1BA4A1318();

  v64 = sub_1BA4A6758();

  [v2 setAccessibilityLabel_];
}

char *sub_1B9F68F90(void *a1)
{
  v2 = sub_1BA4A3EA8();
  v3 = *(v2 - 8);
  v155 = v2;
  v156 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v151 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v151 - v13;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v151 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v151 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v151 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v151 - v29;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v151 - v33;
  result = FeedItem.pluginInfo.getter();
  if (!result)
  {
    return result;
  }

  v153 = v34;
  v154 = v26;
  v36 = v14;
  v157 = result;
  v37 = sub_1BA4A2718();
  v40 = v37;
  v41 = v38;
  if (v39 > 2u)
  {
    if (v39 == 3)
    {
      sub_1BA4A3DD8();

      v83 = sub_1BA4A3E88();
      v84 = sub_1BA4A6FB8();
      sub_1B9F244F4(v40, v41, 3u);
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v158 = v86;
        *v85 = 136315138;
        v87 = sub_1B9F0B82C(v40, v41, &v158);
        sub_1B9F244F4(v40, v41, 3u);
        *(v85 + 4) = v87;
        _os_log_impl(&dword_1B9F07000, v83, v84, "Attempted to load a content configuration as Viewable %s. This is not supported", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v86);
        MEMORY[0x1BFAF43A0](v86, -1, -1);
        MEMORY[0x1BFAF43A0](v85, -1, -1);
      }

      else
      {

        sub_1B9F244F4(v40, v41, 3u);
      }

      (*(v156 + 8))(v10, v155);
      return 0;
    }

    if (v39 == 4)
    {
      sub_1BA4A3DD8();

      v59 = sub_1BA4A3E88();
      v60 = sub_1BA4A6FB8();
      sub_1B9F244F4(v40, v41, 4u);
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v158 = v62;
        *v61 = 136315138;
        v63 = sub_1B9F0B82C(v40, v41, &v158);
        sub_1B9F244F4(v40, v41, 4u);
        *(v61 + 4) = v63;
        _os_log_impl(&dword_1B9F07000, v59, v60, "Attempted to load a content configuration as Viewable %s. This is not supported", v61, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v62);
        MEMORY[0x1BFAF43A0](v62, -1, -1);
        MEMORY[0x1BFAF43A0](v61, -1, -1);
      }

      else
      {

        sub_1B9F244F4(v40, v41, 4u);
      }

      (*(v156 + 8))(v6, v155);
      return 0;
    }

    goto LABEL_32;
  }

  if (!v39)
  {
    v64 = sub_1BA1D56FC();
    if (v64)
    {
      v65 = v64;
      v66 = sub_1BA4A6758();
      sub_1B9F244F4(v40, v41, 0);
      v67 = [v65 tryToInstantiateViewControllerWithIdentifier_];

      if (v67)
      {
        v154 = v67;
        v68 = v153;
        sub_1BA4A3E28();
        v69 = a1;
        v70 = sub_1BA4A3E88();
        v71 = sub_1BA4A6FC8();

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v158 = v152;
          *v72 = 136315138;
          v151 = "secondaryDataSource";
          sub_1B9F2EAC0(0);
          v73 = swift_allocObject();
          *(v73 + 16) = xmmword_1BA4B5460;
          v74 = [v69 uniqueIdentifier];
          v75 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v77 = v76;

          *(v73 + 56) = MEMORY[0x1E69E6158];
          *(v73 + 64) = sub_1B9F1BE20();
          *(v73 + 32) = v75;
          *(v73 + 40) = v77;
          v78 = [v69 dateSubmitted];
          *(v73 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0, 0x1E695DF00);
          *(v73 + 104) = sub_1B9F6A24C();
          *(v73 + 72) = v78;
          v79 = sub_1BA4A67D8();
          v81 = sub_1B9F0B82C(v79, v80, &v158);

          *(v72 + 4) = v81;
          _os_log_impl(&dword_1B9F07000, v70, v71, "FeedItem STORYBOARD makeViewController(): %s", v72, 0xCu);
          v82 = v152;
          __swift_destroy_boxed_opaque_existential_1(v152);
          MEMORY[0x1BFAF43A0](v82, -1, -1);
          MEMORY[0x1BFAF43A0](v72, -1, -1);
        }

        else
        {
        }

        (*(v156 + 8))(v68, v155);
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          return v154;
        }

        return 0;
      }

      sub_1BA4A3DD8();
      v132 = a1;
      v106 = v65;
      v133 = sub_1BA4A3E88();
      v134 = sub_1BA4A6FB8();

      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v158 = v154;
        *v135 = 136446466;
        v136 = [v106 debugDescription];
        v137 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v139 = v138;

        v140 = sub_1B9F0B82C(v137, v139, &v158);

        *(v135 + 4) = v140;
        *(v135 + 12) = 2080;
        v153 = "secondaryDataSource";
        sub_1B9F2EAC0(0);
        v141 = swift_allocObject();
        *(v141 + 16) = xmmword_1BA4B5460;
        v142 = [v132 uniqueIdentifier];
        v143 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v145 = v144;

        *(v141 + 56) = MEMORY[0x1E69E6158];
        *(v141 + 64) = sub_1B9F1BE20();
        *(v141 + 32) = v143;
        *(v141 + 40) = v145;
        v146 = [v132 dateSubmitted];
        *(v141 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0, 0x1E695DF00);
        *(v141 + 104) = sub_1B9F6A24C();
        *(v141 + 72) = v146;
        v147 = sub_1BA4A67D8();
        v149 = sub_1B9F0B82C(v147, v148, &v158);

        *(v135 + 14) = v149;
        _os_log_impl(&dword_1B9F07000, v133, v134, "Cannot resolve viewController from storyboard %{public}s for feedItem %s", v135, 0x16u);
        v150 = v154;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v150, -1, -1);
        MEMORY[0x1BFAF43A0](v135, -1, -1);

LABEL_48:

        (*(v156 + 8))(v30, v155);
        return 0;
      }

LABEL_47:
      goto LABEL_48;
    }

    sub_1B9F244F4(v40, v41, 0);
LABEL_32:

    return 0;
  }

  if (v39 == 1)
  {
    v42 = v37;
    if (sub_1B9F6A168(v37, v38, v157, &qword_1EDC6B5D0, 0x1E69DD258))
    {
      sub_1B9F244F4(v40, v41, 1u);
      v43 = v154;
      sub_1BA4A3E28();
      v44 = a1;
      v45 = sub_1BA4A3E88();
      v46 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v158 = v153;
        *v47 = 136315138;
        v152 = "secondaryDataSource";
        sub_1B9F2EAC0(0);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_1BA4B5460;
        v49 = [v44 uniqueIdentifier];
        v50 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v52 = v51;

        *(v48 + 56) = MEMORY[0x1E69E6158];
        *(v48 + 64) = sub_1B9F1BE20();
        *(v48 + 32) = v50;
        *(v48 + 40) = v52;
        v53 = [v44 dateSubmitted];
        *(v48 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0, 0x1E695DF00);
        *(v48 + 104) = sub_1B9F6A24C();
        *(v48 + 72) = v53;
        v54 = sub_1BA4A67D8();
        v56 = sub_1B9F0B82C(v54, v55, &v158);

        *(v47 + 4) = v56;
        _os_log_impl(&dword_1B9F07000, v45, v46, "FeedItem CLASS makeViewController(): %s", v47, 0xCu);
        v57 = v153;
        __swift_destroy_boxed_opaque_existential_1(v153);
        MEMORY[0x1BFAF43A0](v57, -1, -1);
        MEMORY[0x1BFAF43A0](v47, -1, -1);
      }

      (*(v156 + 8))(v43, v155);
      v58 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:0 bundle:0];
      goto LABEL_23;
    }

    sub_1BA4A3DD8();
    v105 = a1;
    sub_1BA1EB37C(v40, v41, 1u);
    v106 = sub_1BA4A3E88();
    v107 = sub_1BA4A6FB8();
    sub_1B9F244F4(v40, v41, 1u);

    if (!os_log_type_enabled(v106, v107))
    {

      sub_1B9F244F4(v40, v41, 1u);

      (*(v156 + 8))(v22, v155);
      return 0;
    }

    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v158 = v109;
    *v108 = 136446466;
    v30 = v22;
    v110 = sub_1B9F0B82C(v40, v41, &v158);
    sub_1B9F244F4(v42, v41, 1u);
    *(v108 + 4) = v110;
    *(v108 + 12) = 2080;
    v154 = "secondaryDataSource";
    sub_1B9F2EAC0(0);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_1BA4B5460;
    v112 = [v105 uniqueIdentifier];
    v113 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v115 = v114;

    *(v111 + 56) = MEMORY[0x1E69E6158];
    *(v111 + 64) = sub_1B9F1BE20();
    *(v111 + 32) = v113;
    *(v111 + 40) = v115;
    v116 = [v105 dateSubmitted];
    *(v111 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0, 0x1E695DF00);
    *(v111 + 104) = sub_1B9F6A24C();
    *(v111 + 72) = v116;
    v117 = sub_1BA4A67D8();
    v119 = sub_1B9F0B82C(v117, v118, &v158);

    *(v108 + 14) = v119;
    v120 = "Cannot resolve viewController from class name %{public}s for feedItem %s";
    goto LABEL_37;
  }

  if (!sub_1B9F6A168(v37, v38, v157, &qword_1EDC6B4A0, 0x1E69DD250))
  {
    sub_1BA4A3DD8();
    v121 = a1;
    sub_1BA1EB37C(v40, v41, 2u);
    v106 = sub_1BA4A3E88();
    v107 = sub_1BA4A6FB8();
    sub_1B9F244F4(v40, v41, 2u);

    if (!os_log_type_enabled(v106, v107))
    {

      sub_1B9F244F4(v40, v41, 2u);

      (*(v156 + 8))(v36, v155);
      return 0;
    }

    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v158 = v109;
    *v108 = 136446466;
    v30 = v36;
    v122 = sub_1B9F0B82C(v40, v41, &v158);
    sub_1B9F244F4(v40, v41, 2u);
    *(v108 + 4) = v122;
    *(v108 + 12) = 2080;
    v154 = "secondaryDataSource";
    sub_1B9F2EAC0(0);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_1BA4B5460;
    v124 = [v121 uniqueIdentifier];
    v125 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v127 = v126;

    *(v123 + 56) = MEMORY[0x1E69E6158];
    *(v123 + 64) = sub_1B9F1BE20();
    *(v123 + 32) = v125;
    *(v123 + 40) = v127;
    v128 = [v121 dateSubmitted];
    *(v123 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0, 0x1E695DF00);
    *(v123 + 104) = sub_1B9F6A24C();
    *(v123 + 72) = v128;
    v129 = sub_1BA4A67D8();
    v131 = sub_1B9F0B82C(v129, v130, &v158);

    *(v108 + 14) = v131;
    v120 = "Cannot resolve view from class name %{public}s for feedItem %s";
LABEL_37:
    _os_log_impl(&dword_1B9F07000, v106, v107, v120, v108, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v109, -1, -1);
    MEMORY[0x1BFAF43A0](v108, -1, -1);
    goto LABEL_47;
  }

  sub_1B9F244F4(v40, v41, 2u);
  v88 = v18;
  sub_1BA4A3E28();
  v89 = a1;
  v90 = sub_1BA4A3E88();
  v91 = sub_1BA4A6FC8();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    v154 = swift_slowAlloc();
    v158 = v154;
    *v92 = 136315138;
    v153 = "secondaryDataSource";
    sub_1B9F2EAC0(0);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_1BA4B5460;
    v94 = [v89 uniqueIdentifier];
    v95 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v97 = v96;

    *(v93 + 56) = MEMORY[0x1E69E6158];
    *(v93 + 64) = sub_1B9F1BE20();
    *(v93 + 32) = v95;
    *(v93 + 40) = v97;
    v98 = [v89 dateSubmitted];
    *(v93 + 96) = sub_1B9F0ADF8(0, &qword_1EDC6B4C0, 0x1E695DF00);
    *(v93 + 104) = sub_1B9F6A24C();
    *(v93 + 72) = v98;
    v99 = sub_1BA4A67D8();
    v101 = sub_1B9F0B82C(v99, v100, &v158);

    *(v92 + 4) = v101;
    _os_log_impl(&dword_1B9F07000, v90, v91, "FeedItem CLASS makeView(): %s", v92, 0xCu);
    v102 = v154;
    __swift_destroy_boxed_opaque_existential_1(v154);
    MEMORY[0x1BFAF43A0](v102, -1, -1);
    MEMORY[0x1BFAF43A0](v92, -1, -1);
  }

  (*(v156 + 8))(v88, v155);
  v58 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_23:
  v103 = v58;

  swift_getObjectType();
  v104 = swift_conformsToProtocol2();
  result = v103;
  if (!v104 || !v103)
  {

    return 0;
  }

  return result;
}

Class sub_1B9F6A168(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  if ([v5 usesPlatformView])
  {
    v8 = sub_1BA4A6758();
    v9 = NSClassFromString(v8);

    result = v9;
    if (!v9)
    {
      return result;
    }
  }

  else
  {
    v11 = sub_1BA4A3AD8();
    v12 = sub_1BA4A6758();
    v13 = [v11 classNamed_];

    result = v13;
    if (!v13)
    {
      return result;
    }
  }

  swift_getObjCClassMetadata();
  sub_1B9F0ADF8(0, a4, a5);
  return swift_dynamicCastMetatype();
}

unint64_t sub_1B9F6A24C()
{
  result = qword_1EDC6B4B0;
  if (!qword_1EDC6B4B0)
  {
    sub_1B9F6A2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B4B0);
  }

  return result;
}

unint64_t sub_1B9F6A2A4()
{
  result = qword_1EDC6B4C0;
  if (!qword_1EDC6B4C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B4C0);
  }

  return result;
}

void sub_1B9F6A2F0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B9F6A8B8(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v51 - v6;
  v8 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  *&v10 = MEMORY[0x1EEE9AC00](v8, v9).n128_u64[0];
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 faultingState])
  {
    sub_1BA207F84();
    swift_allocError();
    *v13 = 0;
LABEL_3:
    swift_willThrow();
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1BA207F84();
    swift_allocError();
    *v26 = 1;
    goto LABEL_3;
  }

  v15 = Strong;
  v16 = UIViewController.resolvedHealthStore.getter();
  if (v16)
  {
    v52 = v16;
    UIViewController.resolvedPinnedContentManager.getter(v55);
    UIViewController.resolvedPresentation.getter(&v57);
    v56 = v57;
    a2[3] = v8;
    a2[4] = &protocol witness table for BasicFeedItemViewControllerContext;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    *v12 = xmmword_1BA4B7EA0;
    *(v12 + 1) = xmmword_1BA4B7EA0;
    v17 = v8[11];
    v18 = sub_1BA4A22F8();
    v19 = *(*(v18 - 8) + 56);
    v53 = v17;
    v19(&v12[v17], 1, 1, v18);
    v20 = &v12[v8[13]];
    *v20 = 0;
    *(v20 + 1) = 0;
    v51 = v20;
    v21 = [a1 userData];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1BA4A1608();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xF000000000000000;
    }

    sub_1B9F6AC8C(*v12, *(v12 + 1));
    *v12 = v23;
    *(v12 + 1) = v25;
    v28 = [a1 actionHandlerUserData];
    if (v28)
    {
      v29 = v28;
      v30 = sub_1BA4A1608();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0xF000000000000000;
    }

    sub_1B9F6AC8C(*(v12 + 2), *(v12 + 3));
    *(v12 + 2) = v30;
    *(v12 + 3) = v32;
    *(v12 + 4) = v52;
    sub_1B9F0A534(v55, (v12 + 48));
    v33 = [a1 uniqueIdentifier];
    v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v36 = v35;

    *(v12 + 11) = v34;
    *(v12 + 12) = v36;
    sub_1BA4A26B8();
    sub_1BA4A2788();
    sub_1B9F6ACA0(v7, &v12[v53]);
    v12[40] = v56;
    v37 = [a1 baseAutomationIdentifier];
    if (v37)
    {
      v38 = v37;
      v39 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      v41 = v40;
    }

    else
    {
      v39 = 0;
      v41 = 0;
    }

    v42 = &v12[v8[12]];
    *v42 = v39;
    v42[1] = v41;
    if (FeedItem.pluginInfo.getter())
    {
      v43 = sub_1BA4A3AD8();

      v44 = [a1 actionHandlerClassName];
      if (v44)
      {
        v45 = v44;
        v46 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v48 = v47;

        __swift_destroy_boxed_opaque_existential_1(v55);
        v49 = swift_allocObject();
        *(v49 + 2) = v43;
        *(v49 + 3) = v46;
        *(v49 + 4) = v48;
        v50 = v51;
        *v51 = sub_1BA028D88;
        v50[1] = v49;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v55);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    sub_1B9F6AD20(v12, boxed_opaque_existential_1);
  }

  else
  {
    sub_1BA207F84();
    swift_allocError();
    *v27 = 2;
    swift_willThrow();
  }
}

uint64_t sub_1B9F6A770()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B9F6A7B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6A804(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1B9F0ADF8(255, a3, a4);
    v5 = sub_1BA4A7AA8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B9F6A85C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F6A8B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6A90C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F6A970(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0ADF8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F6A9F8(uint64_t a1)
{
  sub_1B9F6AB84(319, &unk_1EDC6E268, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B9F2ACE8();
    if (v2 <= 0x3F)
    {
      sub_1B9F6ABD4();
      if (v3 <= 0x3F)
      {
        sub_1BA4A1C68();
        if (v4 <= 0x3F)
        {
          sub_1B9F6AC38(319, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
          if (v5 <= 0x3F)
          {
            sub_1B9F6AB84(319, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1B9F6AC38(319, &qword_1EDC5DB48, sub_1B9F37BB8);
              if (v7 <= 0x3F)
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

void sub_1B9F6AB84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1B9F6ABD4()
{
  result = qword_1EDC6ADC0;
  if (!qword_1EDC6ADC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC6ADC0);
  }

  return result;
}

void sub_1B9F6AC38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9F6AC8C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B9F2BB4C(result, a2);
  }

  return result;
}

uint64_t sub_1B9F6ACA0(uint64_t a1, uint64_t a2)
{
  sub_1B9F6AC38(0, &qword_1EDC6E220, MEMORY[0x1E69A3D00]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F6AD20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BasicFeedItemViewControllerContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F6AD84(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B9F206D4(result, a2);
  }

  return result;
}

uint64_t sub_1B9F6AD98()
{
  v1 = *v0;
  sub_1B9F6AD84(*v0, *(v0 + 8));
  return v1;
}

void sub_1B9F6ADFC(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  if (*(v1 + v3) && *(v1 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_recreateViewControllerOnHostedFeedItemChange) != 1 || (a1 & 1) == 0)
  {
    sub_1B9F6CECC();
  }
}

void sub_1B9F6AE74(void *a1, uint64_t a2)
{
  v5 = sub_1BA4A3EA8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable];
  swift_beginAccess();
  v11 = *v10;
  v12 = *(v10 + 1);
  if (*v10 && v2[OBJC_IVAR____TtC18HealthExperienceUI8HostView_recreateViewControllerOnHostedFeedItemChange] != 1)
  {
    if (HAFeatureFlagViewLoggingEnabled())
    {
      sub_1BA4A3DD8();
      v14 = v2;
      v15 = sub_1BA4A3E88();
      v16 = sub_1BA4A6FC8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138543362;
        *(v17 + 4) = v14;
        *v18 = v14;
        v19 = v14;
        _os_log_impl(&dword_1B9F07000, v15, v16, "%{public}@ We are re-using the view controller so no need to update the hosted viewable", v17, 0xCu);
        sub_1B9F8C6C8(v18);
        MEMORY[0x1BFAF43A0](v18, -1, -1);
        MEMORY[0x1BFAF43A0](v17, -1, -1);
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  else
  {
    *v10 = a1;
    *(v10 + 1) = a2;
    v13 = a1;
    sub_1B9F6B084(v11, v12);
  }
}

uint64_t sub_1B9F6B070(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1B9F244F4(a1, a2, a3);
  }

  return a1;
}

void sub_1B9F6B084(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BA4A3EA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v68 - v13;
  v15 = v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
  swift_beginAccess();
  if (*v15)
  {
    if (*v15 != a1)
    {
      if (!a1)
      {
LABEL_8:
        v19 = *v15;
        if (*v15)
        {
          v71 = *(v15 + 1);
          v20 = v19;
          v21 = HAFeatureFlagViewLoggingEnabled();
          v70 = v20;
          if (v21)
          {
            v69 = a1;
            sub_1BA4A3DD8();
            v22 = v3;
            v23 = sub_1BA4A3E88();
            v24 = sub_1BA4A6FC8();

            if (os_log_type_enabled(v23, v24))
            {
              v25 = swift_slowAlloc();
              v68 = v7;
              v26 = v25;
              v27 = swift_slowAlloc();
              *v26 = 138543362;
              *(v26 + 4) = v22;
              *v27 = v22;
              v28 = v22;
              _os_log_impl(&dword_1B9F07000, v23, v24, "%{public}@ Updating non-nil and not loaded viewable", v26, 0xCu);
              sub_1B9F8C6C8(v27);
              MEMORY[0x1BFAF43A0](v27, -1, -1);
              v29 = v26;
              v7 = v68;
              MEMORY[0x1BFAF43A0](v29, -1, -1);
            }

            (*(v7 + 8))(v14, v6);
            a1 = v69;
            v20 = v70;
          }

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v31 = Strong;
            v32 = *v15;
            if (*v15)
            {
              v68 = a2;
              v69 = a1;
              v33 = *(v15 + 1);
              ObjectType = swift_getObjectType();
              v35 = *(v33 + 16);
              v36 = v32;
              v37 = v35(ObjectType, v33);

              if (v37)
              {
                [v31 addChildViewController_];

                v31 = v37;
              }

              a2 = v68;
              a1 = v69;
              v20 = v70;
            }
          }

          v38 = swift_getObjectType();
          v39 = (*(v71 + 24))(v38);
          v40 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView;
          v41 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
          if (v41)
          {
            [v41 removeFromSuperview];
            v42 = *(v3 + v40);
          }

          else
          {
            v42 = 0;
          }

          *(v3 + v40) = v39;
          v54 = v39;

          sub_1B9F6C98C();
          v55 = swift_unknownObjectWeakLoadStrong();
          if (v55)
          {
            v56 = v55;
            v57 = *v15;
            if (*v15)
            {
              v58 = *(v15 + 1);
              v59 = swift_getObjectType();
              v60 = *(v58 + 16);
              v61 = v57;
              v62 = v60(v59, v58);

              if (v62)
              {
                [v62 didMoveToParentViewController_];

                v56 = v62;
              }

              v20 = v70;
            }
          }

          if (a1)
          {
            v63 = swift_getObjectType();
            v64 = (*(a2 + 16))(v63, a2);
            [v64 removeFromParentViewController];
          }

          v72 = v20;
          v73 = v71;
          sub_1B9F0D9AC(0, qword_1EDC6B7C0, &protocol descriptor for Viewable, 0);
          sub_1B9F0D9AC(0, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, 1);
          v65 = v20;
          if ((swift_dynamicCast() & 1) == 0)
          {
            v75 = 0;
            memset(v74, 0, sizeof(v74));
          }

          (*((*MEMORY[0x1E69E7D40] & *v3) + 0x1E8))(v74);

          sub_1B9F752DC(v74);
        }

        else
        {
          if (HAFeatureFlagViewLoggingEnabled())
          {
            sub_1BA4A3DD8();
            v43 = v3;
            v44 = sub_1BA4A3E88();
            v45 = sub_1BA4A6FC8();

            if (os_log_type_enabled(v44, v45))
            {
              v46 = swift_slowAlloc();
              v68 = v7;
              v47 = v46;
              v48 = swift_slowAlloc();
              *v47 = 138543362;
              *(v47 + 4) = v43;
              *v48 = v43;
              v49 = v43;
              _os_log_impl(&dword_1B9F07000, v44, v45, "%{public}@ Removing hosted view, hostedViewable.", v47, 0xCu);
              sub_1B9F8C6C8(v48);
              MEMORY[0x1BFAF43A0](v48, -1, -1);
              v50 = v47;
              v7 = v68;
              MEMORY[0x1BFAF43A0](v50, -1, -1);
            }

            (*(v7 + 8))(v10, v6);
          }

          v51 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView;
          v52 = *(v3 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
          if (v52)
          {
            [v52 removeFromSuperview];
            v53 = *(v3 + v51);
          }

          else
          {
            v53 = 0;
          }

          *(v3 + v51) = 0;

          sub_1B9F6C98C();
          if (a1)
          {
            v66 = swift_getObjectType();
            v67 = (*(a2 + 16))(v66, a2);
            [v67 removeFromParentViewController];
          }
        }

        return;
      }

LABEL_6:
      v16 = swift_getObjectType();
      v17 = (*(a2 + 16))(v16, a2);
      if (v17)
      {
        v18 = v17;
        [v17 willMoveToParentViewController_];
      }

      goto LABEL_8;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  if (HAFeatureFlagViewLoggingEnabled())
  {
    sub_1BA2DB3EC(v2);
  }
}

void *Viewable<>.viewController.getter()
{
  v0 = sub_1B9F6B730();
  v1 = v0;
  return v0;
}

{
  v1 = v0;
  return v0;
}

id _s18HealthExperienceUI8ViewablePAA05SwiftC019UIHostingControllerCyAD7AnyViewVGRbzrlE010presentingI0So6UIViewCvg_0()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1B9F6B774(void *a1, uint64_t a2, int a3, uint64_t a4, int a5, void *a6, char a7)
{
  v65 = a3;
  v64 = a2;
  v12 = sub_1BA4A3EA8();
  v63 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  if ((a7 & 1) == 0)
  {
    v16 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
  }

  if (!a6)
  {
    v21 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:v16];
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v17 = objc_opt_self();
  v18 = a6;
  v19 = [v17 _preferredFontForTextStyle_maximumContentSizeCategory_compatibleWithTraitCollection_];
  if (v19)
  {
    v20 = v19;
    v21 = [v20 fontDescriptor];

    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_8:
    v22 = [v21 fontDescriptorWithSymbolicTraits_];

    v21 = v22;
    goto LABEL_9;
  }

  v21 = 0;
  if (a4)
  {
    goto LABEL_8;
  }

LABEL_9:
  v60 = a4;
  if ((v65 & 1) == 0)
  {
    v61 = a5;
    v62 = v15;
    v23 = MEMORY[0x1E69E6F90];
    sub_1B9F6C0D8(0, &qword_1EDC6E320, sub_1B9F6BEB8, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v59 = xmmword_1BA4B5480;
    *(inited + 16) = xmmword_1BA4B5480;
    v25 = *MEMORY[0x1E69DB8F0];
    *(inited + 32) = *MEMORY[0x1E69DB8F0];
    sub_1B9F6C0D8(0, &qword_1EDC6E328, sub_1B9F6C24C, v23);
    v26 = swift_initStackObject();
    v27 = MEMORY[0x1E69DB990];
    *(v26 + 16) = v59;
    v28 = *v27;
    *(v26 + 32) = *v27;
    *(v26 + 40) = v64;
    v29 = v25;
    v30 = v28;
    v31 = sub_1B9F6C37C(v26);
    swift_setDeallocating();
    sub_1B9F6C460(v26 + 32, sub_1B9F6C24C);
    sub_1B9F6C4C0(0);
    *(inited + 64) = v32;
    *(inited + 40) = v31;
    sub_1B9F6C6E0(inited);
    swift_setDeallocating();
    sub_1B9F6C460(inited + 32, sub_1B9F6BEB8);
    if (!v21)
    {

      v15 = v62;
      a5 = v61;
      goto LABEL_20;
    }

    type metadata accessor for AttributeName(0);
    sub_1B9F6C56C(&qword_1EDC6E3A8, type metadata accessor for AttributeName, &unk_1BA4B4490);
    v33 = sub_1BA4A6618();

    v34 = [v21 fontDescriptorByAddingAttributes_];

    v21 = v34;
    v15 = v62;
    a5 = v61;
  }

  if (a5)
  {
    if (!v21)
    {
      goto LABEL_20;
    }

    v35 = [v21 fontDescriptorWithDesign_];

    v21 = v35;
  }

  if (v21)
  {
    v36 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
    goto LABEL_24;
  }

LABEL_20:
  *&v59 = v12;
  sub_1BA4A3DD8();
  v37 = a1;
  v38 = sub_1BA4A3E88();
  v39 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v61 = a5;
    v41 = v40;
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v68[0] = v43;
    *v41 = 136315906;
    v44 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
    v46 = sub_1B9F0B82C(v44, v45, v68);
    v62 = v15;
    v47 = v46;

    *(v41 + 4) = v47;
    *(v41 + 12) = 2080;
    v66 = v64;
    v67 = v65 & 1;
    sub_1B9F6C0D8(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
    v48 = sub_1BA4A6808();
    v50 = sub_1B9F0B82C(v48, v49, v68);

    *(v41 + 14) = v50;
    *(v41 + 22) = 2080;
    LODWORD(v66) = v60;
    type metadata accessor for SymbolicTraits(0);
    v51 = sub_1BA4A6808();
    v53 = sub_1B9F0B82C(v51, v52, v68);

    *(v41 + 24) = v53;
    *(v41 + 32) = 2112;
    v54 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v55 = [v54 initWithBool_];
    *(v41 + 34) = v55;
    *v42 = v55;
    _os_log_impl(&dword_1B9F07000, v38, v39, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v41, 0x2Au);
    sub_1B9F8C6C8(v42);
    MEMORY[0x1BFAF43A0](v42, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v43, -1, -1);
    MEMORY[0x1BFAF43A0](v41, -1, -1);

    (*(v63 + 8))(v62, v59);
  }

  else
  {

    (*(v63 + 8))(v15, v59);
  }

  v56 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v36 = [objc_opt_self() fontWithDescriptor:v56 size:0.0];
  v21 = v16;
  v16 = v56;
LABEL_24:
  v57 = v36;

  return v57;
}

void sub_1B9F6BEB8(uint64_t a1)
{
  if (!qword_1EDC6E388)
  {
    type metadata accessor for AttributeName(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6E388);
    }
  }
}

void sub_1B9F6BF24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6BF78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6BFCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F6C030(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6C084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6C0D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F6C13C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6C190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6C1E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A7AA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B9F6C24C(uint64_t a1)
{
  if (!qword_1EDC6E3B0)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6E3B0);
    }
  }
}

void sub_1B9F6C2D0(uint64_t a1)
{
  if (!qword_1EDC6E340)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_1B9F28EB8(&qword_1EDC6E3D8, type metadata accessor for TraitKey, &unk_1BA4B444C);
    v1 = sub_1BA4A80A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6E340);
    }
  }
}

unint64_t sub_1B9F6C37C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B9F6C2D0(0);
    v3 = sub_1BA4A8098();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1B9F4E590(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B9F6C460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B9F6C4C0(uint64_t a1)
{
  if (!qword_1EDC6E428)
  {
    type metadata accessor for TraitKey(255);
    type metadata accessor for Weight(255);
    sub_1B9F6C56C(&qword_1EDC6E3D8, type metadata accessor for TraitKey, &unk_1BA4B444C);
    v1 = sub_1BA4A6688();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6E428);
    }
  }
}

uint64_t sub_1B9F6C56C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B9F6C5B4(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0);
    v8 = sub_1BA4A8098();
    v9 = a1 + 32;

    while (1)
    {
      sub_1B9F6C7B4(v9, &v16, a3, a4, sub_1B9F6C824);
      v10 = v16;
      result = sub_1B9F4E590(v16);
      if (v12)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v10;
      result = sub_1B9F46920(&v17, (v8[7] + 32 * result));
      v13 = v8[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v8[2] = v15;
      v9 += 40;
      if (!--v4)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B9F6C714(uint64_t a1)
{
  if (!qword_1EDC6E338)
  {
    type metadata accessor for AttributeName(255);
    sub_1B9F28EB8(&qword_1EDC6E3A8, type metadata accessor for AttributeName, &unk_1BA4B4490);
    v1 = sub_1BA4A80A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6E338);
    }
  }
}

uint64_t sub_1B9F6C7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1B9F6C824(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1B9F6C88C()
{
  v1 = 25705;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 0x3265756C6176;
  }

  if (*v0)
  {
    v1 = 0x65746E4965746164;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B9F6C904(void *a1, uint64_t *a2)
{
  v2 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v4 = v3;
  if (v2 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1BA4A8338();
  }

  return v7 & 1;
}

void sub_1B9F6C98C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints_];
    v3 = [v0 addSubview_];
    v4 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0x120))(v3);
    v5 = objc_opt_self();
    sub_1B9F64098(0, &qword_1EDC6B400, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1BA4B5890;
    v7 = [v2 leadingAnchor];
    v8 = [v0 leadingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];

    *(v6 + 32) = v9;
    v10 = [v2 trailingAnchor];
    v11 = [v0 trailingAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];

    *(v6 + 40) = v12;
    v13 = [v2 topAnchor];
    v14 = (*((*v4 & *v0) + 0x110))();
    v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];

    *(v6 + 48) = v15;
    v16 = [v2 bottomAnchor];
    v17 = [v0 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:0.0];

    *(v6 + 56) = v18;
    sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
    v19 = sub_1BA4A6AE8();

    [v5 activateConstraints_];

    sub_1B9F0ADF8(0, &qword_1EDC6B4A0, 0x1E69DD250);
    sub_1B9F0D9AC(0, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, 1);
    v20 = v2;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v22 = 0;
      memset(v21, 0, sizeof(v21));
    }

    (*((*v4 & *v0) + 0x1E8))(v21);

    sub_1B9F752DC(v21);
  }
}

void sub_1B9F6CD5C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView];
  if (v2)
  {
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      v5 = v4;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v7 = *(v5 + 16);
      v8 = v2;
      v7(Strong, ObjectType, v5);
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    UIViewController.resolvedPresentation.getter(&v14);

    LOBYTE(v10) = v14 - 4;
    v11 = objc_opt_self();
    v12 = &selRef_tertiarySystemBackgroundColor;
    if ((v10 & 0xF7) != 0)
    {
      v12 = &selRef_secondarySystemGroupedBackgroundColor;
    }

    v13 = [v11 *v12];
    [v1 setBackgroundColor_];
  }

  sub_1B9F6CECC();
}

void sub_1B9F6CECC()
{
  v1 = &v0[OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable];
  swift_beginAccess();
  v2 = *v1;
  if (*v1 && (v3 = *(v1 + 1), v16[0] = *v1, v16[1] = v3, sub_1B9F0D9AC(0, qword_1EDC6B7C0, &protocol descriptor for Viewable, 0), sub_1B9F0D9AC(0, qword_1EDC65D70, &protocol descriptor for ChromeHostViewContainable, 1), v4 = v2, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v14 + 1))
    {
      sub_1B9F1134C(&v13, v16);
      v5 = v17;
      v6 = v18;
      __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      v7 = *(v6 + 16);
      v8 = v0;
      v7(v0, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v16);
      v9 = *v1;
      if (!*v1)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
  }

  sub_1B9F43AAC(&v13, &qword_1EDC65D68, qword_1EDC65D70, &protocol descriptor for ChromeHostViewContainable);
  v9 = *v1;
  if (!*v1)
  {
LABEL_11:
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_12;
  }

LABEL_8:
  sub_1B9F0D9AC(0, qword_1EDC6B7C0, &protocol descriptor for Viewable, 0);
  sub_1B9F0D9AC(0, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, 1);
  v10 = v9;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (*(&v14 + 1))
  {
    sub_1B9F1134C(&v13, v16);
    sub_1B9F6D244(v16);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return;
  }

LABEL_12:
  sub_1B9F43AAC(&v13, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
  v11 = &v0[OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header];
  swift_beginAccess();
  if (*v11)
  {
    [*v11 removeFromSuperview];
    v12 = *v11;
  }

  else
  {
    v12 = 0;
  }

  *v11 = 0;
  *(v11 + 1) = 0;
}

id sub_1B9F6D140(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 8))(v9, v1, v2);
  v4 = v9[0];
  if (v9[0])
  {
    if (v9[0] == 1)
    {
      type metadata accessor for DismissibleTileHeaderView();
      v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    else
    {
      v7 = v9[1];
      v5 = (v9[0])(v3);
      v6 = sub_1BA2AD424(v4, v7);
    }
  }

  else
  {
    type metadata accessor for DataTypeTileHeaderView(0);
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  }

  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  return v5;
}

void sub_1B9F6D244(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header;
  swift_beginAccess();
  v5 = *v4;
  if (!*v4)
  {
    v11 = sub_1B9F6D140(a1);
    v13 = v12;
    v14 = *v4;
    *v4 = v11;
    *(v4 + 8) = v12;
    v15 = v11;

    sub_1B9F6D95C(v15, v13, a1);
    v10 = *v4;
    if (!*v4)
    {
      return;
    }

LABEL_5:
    v16 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v32 = v10;
    v18 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable);
    swift_beginAccess();
    v19 = *v18;
    if (*v18)
    {
      sub_1B9F0D9AC(0, qword_1EDC6B7C0, &protocol descriptor for Viewable, 0);
      sub_1B9F0D9AC(0, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, 1);
      v20 = v10;
      v21 = v19;
      if (swift_dynamicCast())
      {
        v22 = *(&v30 + 1);
        if (*(&v30 + 1))
        {
          v23 = v31;
          __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
          v24 = (*(v23 + 8))(v22, v23);
          v26 = v25;
          __swift_destroy_boxed_opaque_existential_1(&v29);
          v27 = v24;
LABEL_12:
          (*(*(v16 + 16) + 8))(v27, v26, ObjectType);

          return;
        }
      }

      else
      {
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
      }
    }

    else
    {
      v31 = 0;
      v29 = 0u;
      v30 = 0u;
      v28 = v10;
    }

    sub_1B9F43AAC(&v29, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
    v27 = 0;
    v26 = 0;
    goto LABEL_12;
  }

  v6 = *(v4 + 8);
  v7 = swift_getObjectType();
  sub_1B9F0A534(a1, &v29);
  v8 = *(v6 + 128);
  v9 = v5;
  v8(&v29, v7, v6);

  sub_1B9F43AAC(&v29, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
  v10 = *v4;
  if (*v4)
  {
    goto LABEL_5;
  }
}

uint64_t type metadata accessor for DataTypeTileHeaderView(uint64_t a1)
{
  result = qword_1EDC6E928;
  if (!qword_1EDC6E928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F6D524(uint64_t a1)
{
  sub_1B9F0A9A4(319, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t type metadata accessor for TileHeaderDetailKind(uint64_t a1)
{
  result = qword_1EDC6EAA0;
  if (!qword_1EDC6EAA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F6D66C(uint64_t a1)
{
  sub_1B9F6D6D8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1B9F6D6D8(uint64_t a1)
{
  if (!qword_1EDC6EA28[0])
  {
    sub_1BA4A1728();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDC6EA28);
    }
  }
}

id DataTypeTileHeaderView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_heightConstraint] = 0;
  v9 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_currentTileHeaderDetailKind;
  v10 = type metadata accessor for TileHeaderDetailKind(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_minimumViewHeight] = 0x4040800000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToTop] = 0x4030000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToBottom] = 0x4028000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToAccessory] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleToDetail] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailToAccessory] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_glyphBaselineOffset] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for DataTypeTileHeaderView(0);
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 defaultCenter];
  [v15 addObserver:v14 selector:sel_updateTitleText name:*MEMORY[0x1E69A40A0] object:0];

  return v14;
}

void sub_1B9F6D95C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  [v4 addSubview_];
  sub_1B9F0A534(a3, v23);
  (*(a2 + 120))(v23, ObjectType, a2);
  sub_1B9F43AAC(v23, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
  v9 = *(a2 + 32);
  v10 = v4;
  v9(v4, ObjectType, a2);
  v11 = objc_opt_self();
  sub_1B9F109F8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BA4B8B60;
  v13 = [a1 leadingAnchor];
  v14 = [v10 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:0.0];

  *(v12 + 32) = v15;
  v16 = [a1 trailingAnchor];
  v17 = [v10 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor:v17 constant:0.0];

  *(v12 + 40) = v18;
  v19 = [a1 topAnchor];
  v20 = [v10 topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20 constant:0.0];

  *(v12 + 48) = v21;
  sub_1B9F740B0();
  v22 = sub_1BA4A6AE8();

  [v11 activateConstraints_];
}

uint64_t sub_1B9F6DBC8(uint64_t a1)
{
  v2 = v1;
  sub_1B9F0A9A4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22[-v10];
  sub_1B9F6DEE0(a1, v23);
  v12 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6E028(v23, v2 + v12);
  swift_endAccess();
  sub_1B9F6DEE0(a1, v23);
  v13 = v24;
  if (v24)
  {
    v14 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v14 + 40))(v13, v14);
    v15 = type metadata accessor for TileHeaderDetailKind(0);
    (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
    __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    sub_1B9F6F238(v23, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v16 = type metadata accessor for TileHeaderDetailKind(0);
    (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  }

  v17 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_currentTileHeaderDetailKind;
  swift_beginAccess();
  sub_1B9F6E0FC(v11, v2 + v17);
  swift_endAccess();
  sub_1B9F6E190(a1);
  sub_1B9F73D48(v2 + v17, v7);
  sub_1B9F73E30(v7);
  sub_1B9F6FBF4(v7, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind);
  sub_1B9F0A9A4(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BA4B5480;
  v19 = sub_1BA4A4858();
  v20 = MEMORY[0x1E69DC2B0];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  MEMORY[0x1BFAF2130](v18, sel_updateForTraitChanges);
  swift_unknownObjectRelease();
}

uint64_t sub_1B9F6DEE0(uint64_t a1, uint64_t a2)
{
  sub_1B9F6DF70(0, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B9F6DF70(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F6DFCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1B9F6E028(uint64_t a1, uint64_t a2)
{
  sub_1B9F6DF70(0, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TileHeaderDataSource.detail.getter()
{
  type metadata accessor for TileHeaderDetailKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B9F6E0FC(uint64_t a1, uint64_t a2)
{
  sub_1B9F0A9A4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B9F6E190(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v106 - v11;
  sub_1B9F6DEE0(a1, v115);
  if (v116)
  {
    sub_1B9F0D950(0, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
    sub_1B9F0D950(0, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource);
    if (swift_dynamicCast())
    {
      if (*(&v118 + 1))
      {
        sub_1B9F6F238(&v117, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
        [v2 setUserInteractionEnabled_];
        LODWORD(v13) = 1148846080;
        [v2 setContentCompressionResistancePriority:1 forAxis:v13];
        type metadata accessor for DynamicFontLabel();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v15 = [objc_allocWithZone(ObjCClassFromMetadata) init];
        [v15 setNumberOfLines_];
        [v15 setLineBreakMode_];
        [v15 setTranslatesAutoresizingMaskIntoConstraints_];
        LODWORD(v16) = 1148846080;
        [v15 setContentCompressionResistancePriority:1 forAxis:v16];
        v17 = sub_1B9F6B774(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DB980], 0, 0, 0, 0, 1);
        [v15 setFont_];

        [v2 addSubview_];
        v18 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
        swift_beginAccess();
        v19 = *&v2[v18];
        v112 = v18;
        *&v2[v18] = v15;

        sub_1B9F6F658();
        if (v20)
        {
          v21 = [objc_allocWithZone(ObjCClassFromMetadata) init];
          [v21 setNumberOfLines_];
          [v21 setTranslatesAutoresizingMaskIntoConstraints_];
          [v21 setAdjustsFontSizeToFitWidth_];
          v22 = sub_1BA4A6758();

          [v21 setText_];

          v23 = [objc_opt_self() secondaryLabelColor];
          [v21 setTextColor_];

          LODWORD(v24) = 1148846080;
          [v21 setContentHuggingPriority:0 forAxis:v24];
          LODWORD(v25) = 1148846080;
          [v21 setContentCompressionResistancePriority:0 forAxis:v25];
          LODWORD(v26) = 1148846080;
          [v21 setContentCompressionResistancePriority:1 forAxis:v26];
          v27 = *MEMORY[0x1E69DDD28];
          v111 = objc_opt_self();
          v28 = [v111 preferredFontDescriptorWithTextStyle:v27 compatibleWithTraitCollection:0];
          v29 = &selRef_createHKUnitPreferenceController;
          if (v28)
          {
            v30 = v28;
            v31 = [objc_opt_self() fontWithDescriptor:v28 size:0.0];
          }

          else
          {
            sub_1BA4A3DD8();
            v35 = v27;
            v36 = sub_1BA4A3E88();
            v37 = sub_1BA4A6FB8();
            v110 = v35;

            v108 = v37;
            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v109 = v36;
              v39 = v38;
              v106 = swift_slowAlloc();
              v107 = swift_slowAlloc();
              v113[0] = v107;
              *v39 = 136315906;
              v40 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
              v42 = sub_1B9F0B82C(v40, v41, v113);

              *(v39 + 4) = v42;
              *(v39 + 12) = 2080;
              *&v117 = 0;
              BYTE8(v117) = 1;
              sub_1B9F0A9A4(0, &qword_1EBBECB00, type metadata accessor for Weight, MEMORY[0x1E69E6720]);
              v43 = sub_1BA4A6808();
              v45 = sub_1B9F0B82C(v43, v44, v113);

              *(v39 + 14) = v45;
              *(v39 + 22) = 2080;
              LODWORD(v117) = 0;
              type metadata accessor for SymbolicTraits(0);
              v46 = sub_1BA4A6808();
              v48 = sub_1B9F0B82C(v46, v47, v113);

              *(v39 + 24) = v48;
              v29 = &selRef_createHKUnitPreferenceController;
              *(v39 + 32) = 2112;
              v49 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
              *(v39 + 34) = v49;
              v50 = v106;
              *v106 = v49;
              _os_log_impl(&dword_1B9F07000, v109, v108, "Unable to create descriptor with textStyle %s, weight %s, traits %s and rounded %@. Using only the text style", v39, 0x2Au);
              sub_1B9F6F238(v50, &qword_1EDC6B490, &qword_1EDC6E350, 0x1E69E58C0, sub_1B9F0ADF8);
              MEMORY[0x1BFAF43A0](v50, -1, -1);
              v51 = v107;
              swift_arrayDestroy();
              MEMORY[0x1BFAF43A0](v51, -1, -1);
              MEMORY[0x1BFAF43A0](v39, -1, -1);
            }

            else
            {
            }

            (*(v5 + 8))(v12, v4);
            v30 = [v111 preferredFontDescriptorWithTextStyle_];
            v31 = [objc_opt_self() v29[99]];
          }

          v52 = v31;

          [v21 setFont_];
          v53 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
          swift_beginAccess();
          v54 = *&v2[v53];
          *&v2[v53] = v21;
        }

        sub_1B9F6FCD0();
        sub_1B9F70798();
        sub_1B9F6DEE0(a1, &v117);
        v55 = *(&v118 + 1);
        if (*(&v118 + 1))
        {
          v56 = v119;
          __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
          v57 = (*(v56 + 16))(v55, v56);
          v55 = v58;
          __swift_destroy_boxed_opaque_existential_1(&v117);
        }

        else
        {
          sub_1B9F6F238(&v117, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
          v57 = 0;
        }

        sub_1B9F709C4(v57, v55, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel);

        sub_1B9F711CC();
        v59 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
        swift_beginAccess();
        v60 = *&v2[v59];
        if (v60)
        {
          v61 = v60;
          sub_1B9F6F658();
          if (v62)
          {
            v63 = sub_1BA4A6758();
          }

          else
          {
            v63 = 0;
          }

          [v61 setText_];
        }

        sub_1B9F71D38();
        v114 = MEMORY[0x1E69E7CC0];
        v64 = sub_1B9F725CC();
        if (v64)
        {
          sub_1B9F73B50(v64);
        }

        v65 = *&v2[v112];
        if (v65)
        {
          v66 = v65;
          v67 = [v66 topAnchor];
          v68 = [v2 safeAreaLayoutGuide];
          v69 = [v68 topAnchor];

          v70 = [v67 constraintEqualToAnchor:v69 constant:16.0];
          MEMORY[0x1BFAF1510]();
          if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v71 = [v66 leadingAnchor];
          v72 = [v2 safeAreaLayoutGuide];
          v73 = [v72 leadingAnchor];

          v74 = [v71 constraintEqualToAnchor:v73 constant:16.0];
          MEMORY[0x1BFAF1510]();
          if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BA4A6B68();
          }

          sub_1BA4A6BB8();
          v75 = [v2 traitCollection];
          v76 = [v75 preferredContentSizeCategory];

          LOBYTE(v75) = sub_1BA4A74F8();
          if ((v75 & 1) == 0 || !*&v2[v59])
          {
            v77 = [v66 bottomAnchor];
            v78 = [v2 safeAreaLayoutGuide];
            v79 = [v78 bottomAnchor];

            v80 = [v77 constraintEqualToAnchor:v79 constant:-12.0];
            MEMORY[0x1BFAF1510]();
            if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }

          v81 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
          swift_beginAccess();
          if (*&v2[v81])
          {
          }

          else
          {
            v82 = [v66 trailingAnchor];

            v83 = [v2 safeAreaLayoutGuide];
            v84 = [v83 trailingAnchor];

            v85 = [v82 constraintEqualToAnchor:v84 constant:-16.0];
            MEMORY[0x1BFAF1510]();
            if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }
        }

        v86 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
        swift_beginAccess();
        v87 = *&v2[v86];
        if (v87)
        {
          v88 = *&v2[v112];
          if (v88)
          {
            v89 = v87;
            v90 = v88;
            v91 = [v90 trailingAnchor];
            v92 = [v89 leadingAnchor];
            v93 = [v91 constraintEqualToAnchor:v92 constant:-8.0];

            MEMORY[0x1BFAF1510]();
            if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }

          else
          {
            v94 = [v87 bottomAnchor];
            v95 = [v2 safeAreaLayoutGuide];
            v96 = [v95 bottomAnchor];

            v97 = [v94 constraintEqualToAnchor:v96 constant:-12.0];
            MEMORY[0x1BFAF1510]();
            if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1BA4A6B68();
            }

            sub_1BA4A6BB8();
          }
        }

        v98 = [v2 heightAnchor];
        v99 = [v98 constraintEqualToConstant_];

        if (*&v2[v112])
        {
          LODWORD(v100) = 1132068864;
        }

        else
        {
          LODWORD(v100) = 1132068864;
          if (!*&v2[v86])
          {
            *&v100 = 750.0;
          }
        }

        [v99 setPriority_];
        v101 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_heightConstraint];
        *&v2[OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_heightConstraint] = v99;
        v102 = v99;

        v103 = v102;
        MEMORY[0x1BFAF1510]();
        if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BA4A6B68();
        }

        sub_1BA4A6BB8();
        v104 = objc_opt_self();
        sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
        v105 = sub_1BA4A6AE8();

        [v104 activateConstraints_];

        return;
      }
    }

    else
    {
      v119 = 0;
      v118 = 0u;
      v117 = 0u;
    }
  }

  else
  {
    sub_1B9F6F238(v115, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v117 = 0u;
    v118 = 0u;
    v119 = 0;
  }

  sub_1B9F6F238(&v117, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
  sub_1BA4A3DD8();
  v32 = sub_1BA4A3E88();
  v33 = sub_1BA4A6FB8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1B9F07000, v32, v33, "Incorrect configuration: expecting a DataTypeTileHeaderDataSource", v34, 2u);
    MEMORY[0x1BFAF43A0](v34, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B9F6F238(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F6DF70(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F6F294(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F6DFCC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F6F2F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *DynamicFontLabel.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = *MEMORY[0x1E69DDDC8];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_textStyle] = *MEMORY[0x1E69DDDC8];
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_symbolicTraits] = 2;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for DynamicFontLabel();
  v10 = v9;
  v11 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x98);
  v13 = v11;
  v12(v13, v14);
  v15 = [objc_opt_self() labelColor];
  [v13 setTextColor_];

  [v13 setAdjustsFontForContentSizeCategory_];
  return v13;
}

void sub_1B9F6F4D0()
{
  v1 = objc_opt_self();
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x60))();
  v4 = [v1 hk:v3 scalableFontForTextStyle:(*((*v2 & *v0) + 0x78))() symbolicTraits:?];

  [v0 setFont_];
}

id sub_1B9F6F5C0()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_textStyle;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t sub_1B9F6F614()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_symbolicTraits;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B9F6F658()
{
  v1 = type metadata accessor for TileHeaderDetailKind(0);
  MEMORY[0x1EEE9AC00](v1, v2);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B9F0A9A4(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v34 - v7;
  v9 = sub_1BA4A1728();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v34 - v16;
  v18 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v18, v38);
  if (!v39)
  {
    sub_1B9F6F238(v38, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v35 = 0u;
    v36 = 0u;
    v37 = 0;
    goto LABEL_13;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
  sub_1B9F0D950(0, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    goto LABEL_13;
  }

  if (!*(&v36 + 1))
  {
LABEL_13:
    sub_1B9F6F238(&v35, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
    return 0;
  }

  sub_1B9F1134C(&v35, v38);
  v19 = v39;
  v20 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  (*(v20 + 32))(v19, v20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B9F6FBF4(v8, &qword_1EDC6E440, MEMORY[0x1E6969530]);
    v22 = v39;
    v21 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    (*(*(v21 + 8) + 40))(v22);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v31 = *v4;
      __swift_destroy_boxed_opaque_existential_1(v38);
      return v31;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1B9F6D6D8(0);
      v25 = *(v4 + *(v24 + 48));
      (*(v10 + 32))(v13, v4, v9);
      v26 = sub_1BA4A16B8();
      if (v25)
      {
        if (qword_1EDC6E3F8 != -1)
        {
          swift_once();
        }
      }

      else if (qword_1EDC6E3F8 != -1)
      {
        swift_once();
      }

      v32 = HKMostRecentSampleEndDateText();

      if (v32)
      {
        v33 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
      }

      else
      {
        v33 = 0;
      }

      (*(v10 + 8))(v13, v9);
      __swift_destroy_boxed_opaque_existential_1(v38);
      return v33;
    }

    __swift_destroy_boxed_opaque_existential_1(v38);
    return 0;
  }

  (*(v10 + 32))(v17, v8, v9);
  v28 = sub_1BA4A16B8();
  if (qword_1EDC6E3F8 != -1)
  {
    swift_once();
  }

  v29 = HKMostRecentSampleEndDateText();

  if (v29)
  {
    v30 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  }

  else
  {
    v30 = 0;
  }

  (*(v10 + 8))(v17, v9);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v30;
}

uint64_t sub_1B9F6FBF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0A9A4(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DataTypeTileHeaderDataSource.dateUpdated.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BA4A1728();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_1B9F6FCD0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v1 + v2, v22);
  v3 = v23;
  if (v23)
  {
    v4 = v24;
    v5 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v6 = *(v3 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5, v5);
    v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v6 + 16))(v9, v7);
    sub_1B9F6F238(v22, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    LOBYTE(v4) = (*(v4 + 48))(v3, v4);
    (*(v6 + 8))(v9, v3);
    if ((v4 & 1) == 0)
    {
      type metadata accessor for DynamicFontLabel();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v11 = objc_opt_self();
      v12 = v10;
      v13 = [v11 tertiaryLabelColor];
      [v12 setTextColor_];

      [v12 setTextAlignment_];
      [v12 setTranslatesAutoresizingMaskIntoConstraints_];
      [v12 setAdjustsFontSizeToFitWidth_];
      LODWORD(v14) = 1148846080;
      [v12 setContentCompressionResistancePriority:0 forAxis:v14];
      LODWORD(v15) = 1148846080;
      [v12 setContentCompressionResistancePriority:1 forAxis:v15];
      LODWORD(v16) = 1148846080;
      [v12 setContentHuggingPriority:0 forAxis:v16];
      v17 = [objc_opt_self() _preferredFontForTextStyle_variant_];
      if (v17)
      {
        v18 = v17;
        [v12 setFont_];

        [v12 setAdjustsFontForContentSizeCategory_];
        v19 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
        swift_beginAccess();
        v20 = *(v1 + v19);
        *(v1 + v19) = v12;
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_1B9F6F238(v22, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  }
}

uint64_t sub_1B9F70028@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A5D68();
  v69 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v10 = v9;
  if (v8 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v10 == v11)
  {

    goto LABEL_8;
  }

  v13 = sub_1BA4A8338();

  if (v13)
  {

LABEL_8:
    v14 = MEMORY[0x1E6980F00];
LABEL_9:
    (*(v69 + 104))(v7, *v14, v4);
    (*(v69 + 32))(a2, v7, v4);
    return (*(v69 + 56))(a2, 0, 1, v4);
  }

  v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v18 = v17;
  if (v16 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v18 == v19)
  {

    goto LABEL_17;
  }

  v21 = sub_1BA4A8338();

  if (v21)
  {

LABEL_17:
    v14 = MEMORY[0x1E6980F08];
    goto LABEL_9;
  }

  v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v24 = v23;
  if (v22 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v24 == v25)
  {

LABEL_23:
    v14 = MEMORY[0x1E6980F10];
    goto LABEL_9;
  }

  v26 = sub_1BA4A8338();

  if (v26)
  {

    goto LABEL_23;
  }

  v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v29 = v28;
  if (v27 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v29 == v30)
  {

LABEL_29:
    v14 = MEMORY[0x1E6980EF8];
    goto LABEL_9;
  }

  v31 = sub_1BA4A8338();

  if (v31)
  {

    goto LABEL_29;
  }

  v32 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v34 = v33;
  if (v32 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v34 == v35)
  {

LABEL_35:
    v14 = MEMORY[0x1E6980F20];
    goto LABEL_9;
  }

  v36 = sub_1BA4A8338();

  if (v36)
  {

    goto LABEL_35;
  }

  v37 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v39 = v38;
  if (v37 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v39 == v40)
  {

LABEL_41:
    v14 = MEMORY[0x1E6980F28];
    goto LABEL_9;
  }

  v41 = sub_1BA4A8338();

  if (v41)
  {

    goto LABEL_41;
  }

  v42 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v44 = v43;
  if (v42 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v44 == v45)
  {

LABEL_47:
    v14 = MEMORY[0x1E6980F18];
    goto LABEL_9;
  }

  v46 = sub_1BA4A8338();

  if (v46)
  {

    goto LABEL_47;
  }

  v47 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v49 = v48;
  if (v47 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v49 == v50)
  {

LABEL_53:
    v14 = MEMORY[0x1E6980F38];
    goto LABEL_9;
  }

  v51 = sub_1BA4A8338();

  if (v51)
  {

    goto LABEL_53;
  }

  v52 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v54 = v53;
  if (v52 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v54 == v55)
  {

LABEL_59:
    v14 = MEMORY[0x1E6980F30];
    goto LABEL_9;
  }

  v56 = sub_1BA4A8338();

  if (v56)
  {

    goto LABEL_59;
  }

  v57 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v59 = v58;
  if (v57 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v59 == v60)
  {

LABEL_65:
    v14 = MEMORY[0x1E6980EE8];
    goto LABEL_9;
  }

  v61 = sub_1BA4A8338();

  if (v61)
  {

    goto LABEL_65;
  }

  v62 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v64 = v63;
  if (v62 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v64 == v65)
  {

LABEL_70:
    v14 = MEMORY[0x1E6980EF0];
    goto LABEL_9;
  }

  v66 = sub_1BA4A8338();

  if (v66)
  {
    goto LABEL_70;
  }

  v67 = *(v69 + 56);

  return v67(a2, 1, 1, v4);
}

void sub_1B9F70798()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  if (*&v0[v1] || (v2 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel, swift_beginAccess(), *&v0[v2]))
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
    LODWORD(v4) = 1148846080;
    [v3 setContentHuggingPriority:1 forAxis:v4];
    LODWORD(v5) = 1148846080;
    [v3 setContentCompressionResistancePriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [v3 setContentCompressionResistancePriority:1 forAxis:v6];
    [v3 setTranslatesAutoresizingMaskIntoConstraints_];
    [v3 setIsAccessibilityElement_];
    [v0 addSubview_];
    v7 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
    swift_beginAccess();
    v8 = *&v0[v7];
    *&v0[v7] = v3;
  }
}

void sub_1B9F708DC(uint64_t a1)
{
  if (!qword_1EDC5E870)
  {
    type metadata accessor for TraitKey(255);
    sub_1B9F4E47C(&qword_1EDC6E3D8, type metadata accessor for TraitKey, &unk_1BA4B444C);
    v1 = sub_1BA4A6688();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E870);
    }
  }
}

void sub_1B9F709C4(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v13 = v7;
  v16 = type metadata accessor for TileHeaderDetailKind(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x1EEE9AC00](v20, v21).n128_u64[0];
  v25 = &v59 - v24;
  if (a2)
  {
    v61 = a5;
    v62 = a6;
    v59 = v22;
    v60 = a7;
    v65 = a1;
    v66 = a2;

    v26 = a1;
    MEMORY[0x1BFAF1350](0x7265646165482ELL, 0xE700000000000000);
    v27 = sub_1BA4A6758();

    [v13 setAccessibilityIdentifier_];

    v28 = *a3;
    swift_beginAccess();
    v29 = *&v13[v28];
    if (v29)
    {
      v65 = v26;
      v66 = a2;

      v30 = v29;
      MEMORY[0x1BFAF1350](0x2E7265646165482ELL, 0xED0000656C746954);
      v31 = sub_1BA4A6758();

      [v30 setAccessibilityIdentifier_];
    }

    v32 = *a4;
    swift_beginAccess();
    v33 = *&v13[v32];
    if (v33)
    {
      v65 = 0;
      v66 = 0xE000000000000000;
      v34 = v33;
      sub_1BA4A7DF8();

      v65 = v26;
      v66 = a2;

      MEMORY[0x1BFAF1350](0xD000000000000017, 0x80000001BA4FB900);
      v35 = sub_1BA4A6758();

      [v34 setAccessibilityIdentifier_];
    }

    v36 = *v61;
    swift_beginAccess();
    v37 = *&v13[v36];
    if (v37)
    {
      v65 = 0;
      v66 = 0xE000000000000000;
      v38 = v37;
      sub_1BA4A7DF8();

      v65 = v26;
      v66 = a2;

      MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4FB8E0);
      v39 = sub_1BA4A6758();

      [v38 setAccessibilityIdentifier_];
    }

    v40 = *v62;
    swift_beginAccess();
    sub_1B9F6DEE0(&v13[v40], &v65);
    v41 = v67;
    if (!v67)
    {
      sub_1B9F6F238(&v65, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
      return;
    }

    v42 = v68;
    __swift_project_boxed_opaque_existential_1(&v65, v67);
    (*(v42 + 40))(v41, v42);
    sub_1B9F70FE4(v25, v19);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v44 = v60;
      if (EnumCaseMultiPayload != 1)
      {
        sub_1B9F71048(v25, type metadata accessor for TileHeaderDetailKind);
        __swift_destroy_boxed_opaque_existential_1(&v65);
        return;
      }

      sub_1B9F71048(v25, type metadata accessor for TileHeaderDetailKind);
      v45 = sub_1BA4A1728();
      (*(*(v45 - 8) + 8))(v19, v45);
      v46 = 0xE400000000000000;
      v47 = 1702125892;
    }

    else
    {
      sub_1B9F71048(v19, type metadata accessor for TileHeaderDetailKind);
      sub_1B9F71048(v25, type metadata accessor for TileHeaderDetailKind);
      v46 = 0xE600000000000000;
      v47 = 0x6C6961746544;
      v44 = v60;
    }

    __swift_destroy_boxed_opaque_existential_1(&v65);
    v55 = *v44;
    swift_beginAccess();
    v56 = *&v13[v55];
    if (v56)
    {
      v63 = v26;
      v64 = a2;

      v57 = v56;
      MEMORY[0x1BFAF1350](0x2E7265646165482ELL, 0xE800000000000000);
      MEMORY[0x1BFAF1350](v47, v46);

      v58 = sub_1BA4A6758();

      [v57 setAccessibilityIdentifier_];
    }

    else
    {
    }
  }

  else
  {
    [v13 setAccessibilityIdentifier_];
    v48 = *a3;
    swift_beginAccess();
    v49 = *&v13[v48];
    if (v49)
    {
      [v49 setAccessibilityIdentifier_];
    }

    v50 = *a5;
    swift_beginAccess();
    v51 = *&v13[v50];
    if (v51)
    {
      [v51 setAccessibilityIdentifier_];
    }

    v52 = *a7;
    swift_beginAccess();
    v53 = *&v13[v52];
    if (v53)
    {
      [v53 setAccessibilityIdentifier_];
    }

    v54 = *a4;
    swift_beginAccess();
    [*&v13[v54] setAccessibilityIdentifier_];
  }
}

uint64_t sub_1B9F70FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileHeaderDetailKind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F71048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F710A8(double a1)
{
  if (*MEMORY[0x1E69DB950] == a1)
  {
    sub_1BA4A5C68();
    return v1;
  }

  if (*MEMORY[0x1E69DB958] == a1)
  {
    sub_1BA4A5C48();
    return v1;
  }

  if (*MEMORY[0x1E69DB960] == a1)
  {
    sub_1BA4A5C78();
    return v1;
  }

  if (*MEMORY[0x1E69DB968] == a1)
  {
    sub_1BA4A5C88();
    return v1;
  }

  if (*MEMORY[0x1E69DB970] == a1)
  {
    sub_1BA4A5C98();
    return v1;
  }

  if (*MEMORY[0x1E69DB978] == a1)
  {
    sub_1BA4A5CA8();
    return v1;
  }

  if (*MEMORY[0x1E69DB980] == a1)
  {
    sub_1BA4A5CB8();
    return v1;
  }

  if (*MEMORY[0x1E69DB988] == a1)
  {
    sub_1BA4A5C58();
    return v1;
  }

  if (*MEMORY[0x1E69DB998] == a1)
  {
    sub_1BA4A5C38();
    return v1;
  }

  return 0;
}

void sub_1B9F711CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x250);
    v5 = v3;
    v6 = v4();
    if (!v7)
    {
LABEL_17:

      return;
    }

    v8 = v6;
    v9 = v7;
    sub_1B9F717D4();
    if (v10)
    {
      v11 = v10;
      v12 = v5;
      v13 = [v12 font];
      if (!v13)
      {
        __break(1u);
        return;
      }

      v14 = v13;
      v15 = [objc_opt_self() configurationWithFont_];

      v16 = [v11 imageByApplyingSymbolConfiguration_];
      if (v16)
      {
        v17 = sub_1BA4A7748();
        if (v18)
        {
          v19 = -0.0;
        }

        else
        {
          *&v19 = v17 ^ 0x8000000000000000;
        }

        [v16 size];
        v21 = v20;
        v23 = v22;
        v24 = [v16 imageWithRenderingMode_];
        v25 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
        if (([v16 isSymbolImage] & 1) == 0)
        {
          [v25 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
        }

        [v25 setImage_];
        [v25 setBounds_];
        sub_1B9F0ADF8(0, &qword_1EDC6B520, 0x1E696AD40);
        v26 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

        MEMORY[0x1BFAF1350](v8, v9);

        v27 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
        v28 = sub_1BA4A6758();

        v29 = [v27 initWithString_];

        [v26 appendAttributedString_];
        if ([v1 effectiveUserInterfaceLayoutDirection] == 1)
        {
          v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
          v31 = sub_1BA4A6758();
          v32 = [v30 initWithString_];

          [v26 insertAttributedString:v32 atIndex:0];
        }

        [v12 setAttributedText_];

        goto LABEL_16;
      }
    }

    v26 = v5;
    v12 = sub_1BA4A6758();

    [v26 setText_];
LABEL_16:

    v33 = v5;
    v5 = sub_1B9F71A70();
    [v33 setTextColor_];

    goto LABEL_17;
  }
}

uint64_t sub_1B9F715D8()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v1, v14);
  if (!v15)
  {
    sub_1B9F6F238(v14, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    goto LABEL_8;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
  sub_1B9F0D950(0, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
    goto LABEL_8;
  }

  if (!*(&v12 + 1))
  {
LABEL_8:
    sub_1B9F6F238(&v11, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
    return 0;
  }

  sub_1B9F1134C(&v11, v14);
  v2 = v15;
  v3 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v4 = (*(v3 + 24))(v2, v3);
  if (v4)
  {
    v5 = v4;
    sub_1BA2D126C(v4);
    v7 = v6;
  }

  else
  {
    v9 = v15;
    v10 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v7 = (*(*(v10 + 8) + 32))(v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v14);
  return v7;
}

void sub_1B9F717D4()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v1, v18);
  if (!v19)
  {
    sub_1B9F6F238(v18, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    goto LABEL_11;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
  sub_1B9F0D950(0, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_11;
  }

  if (!*(&v16 + 1))
  {
LABEL_11:
    sub_1B9F6F238(&v15, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
    return;
  }

  sub_1B9F1134C(&v15, v18);
  v2 = v19;
  v3 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v4 = (*(v3 + 24))(v2, v3);
  if (!v4)
  {
LABEL_14:
    v13 = v19;
    v14 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(*(v14 + 8) + 24))(v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return;
  }

  v5 = v4;
  v6 = v19;
  v7 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v8 = (*(v7 + 40))(v6, v7);
  if (!v8)
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v8 displayTypeController];

  if (v10)
  {
    v11 = [v10 displayTypeForObjectType_];

    if (v11)
    {
      v12 = [v11 displayCategory];
      [v12 listIcon];

      __swift_destroy_boxed_opaque_existential_1(v18);
      return;
    }

    goto LABEL_13;
  }

  __break(1u);
}

id sub_1B9F71A70()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(v0 + v1, v13);
  if (!v14)
  {
    sub_1B9F6F238(v13, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    v15 = 0u;
    v16 = 0u;
    v17 = 0;
    goto LABEL_10;
  }

  sub_1B9F0D950(0, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource);
  sub_1B9F0D950(0, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    goto LABEL_10;
  }

  if (!*(&v16 + 1))
  {
LABEL_10:
    sub_1B9F6F238(&v15, &qword_1EDC6E0F8, qword_1EDC6E100, &protocol descriptor for DataTypeTileHeaderDataSource, sub_1B9F0D950);
    goto LABEL_11;
  }

  sub_1B9F1134C(&v15, v18);
  v2 = v19;
  v3 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v4 = (*(v3 + 24))(v2, v3);
  if (v4)
  {
    v5 = v4;
    sub_1BA2D0F04(v4);
    if (!v6)
    {
      v6 = [objc_opt_self() systemBlackColor];
    }

    v7 = v6;

    goto LABEL_16;
  }

  v10 = v19;
  v11 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v12 = (*(v11 + 16))(v10, v11);
  if (v12)
  {
    v7 = v12;
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(v18);
    return v7;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
LABEL_11:
  v8 = [objc_opt_self() systemBlackColor];

  return v8;
}

uint64_t sub_1B9F71CB8(uint64_t a1, id *a2)
{
  v3 = sub_1BA4A6788();
  *a2 = 0;
  return v3 & 1;
}

void sub_1B9F71D38()
{
  v1 = sub_1B9F7220C();
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
    swift_beginAccess();
    v4 = *(v0 + v3);
    if (v4)
    {
      v5 = v4;
      v6 = [v2 imageWithRenderingMode_];
      v7 = [objc_allocWithZone(MEMORY[0x1E69DB7F0]) init];
      if (([v2 isSymbolImage] & 1) == 0)
      {
        [v7 setAdjustsImageSizeForAccessibilityContentSizeCategory_];
      }

      [v7 setImage_];
      sub_1B9F0ADF8(0, &qword_1EDC6B520, 0x1E696AD40);
      v8 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];

      [v5 setAttributedText_];
    }
  }
}

uint64_t sub_1B9F71E7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BA4A5C28();
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v10 = v9;
  if (v8 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v10 == v11)
  {

    goto LABEL_8;
  }

  v13 = sub_1BA4A8338();

  if (v13)
  {

LABEL_8:
    v14 = MEMORY[0x1E6980E20];
LABEL_9:
    (*(v34 + 104))(v7, *v14, v4);
    (*(v34 + 32))(a2, v7, v4);
    return (*(v34 + 56))(a2, 0, 1, v4);
  }

  v16 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v18 = v17;
  if (v16 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v18 == v19)
  {

    goto LABEL_17;
  }

  v21 = sub_1BA4A8338();

  if (v21)
  {

LABEL_17:
    v14 = MEMORY[0x1E6980E08];
    goto LABEL_9;
  }

  v22 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v24 = v23;
  if (v22 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v24 == v25)
  {

LABEL_23:
    v14 = MEMORY[0x1E6980E28];
    goto LABEL_9;
  }

  v26 = sub_1BA4A8338();

  if (v26)
  {

    goto LABEL_23;
  }

  v27 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  v29 = v28;
  if (v27 == _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0() && v29 == v30)
  {

LABEL_28:
    v14 = MEMORY[0x1E6980E10];
    goto LABEL_9;
  }

  v31 = sub_1BA4A8338();

  if (v31)
  {
    goto LABEL_28;
  }

  v32 = *(v34 + 56);

  return v32(a2, 1, 1, v4);
}

id sub_1B9F7220C()
{
  v1 = sub_1BA4A3EA8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v7 = *(v0 + v6);
  if (v7 && (v8 = [v7 font]) != 0)
  {
    v9 = v8;
    v10 = *MEMORY[0x1E69DDCF8];
  }

  else
  {
    v11 = objc_opt_self();
    v10 = *MEMORY[0x1E69DDCF8];
    result = [v11 _preferredFontForTextStyle_variant_];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v9 = result;
  }

  v13 = objc_opt_self();
  v14 = [v13 configurationWithFont:v9 scale:1];
  v15 = [v13 configurationWithTextStyle:v10 scale:-1];
  v16 = sub_1BA4A6758();
  v17 = [objc_opt_self() systemImageNamed:v16 withConfiguration:v15];

  if (v17 && (v18 = [v17 imageWithConfiguration_], v17, v18))
  {
  }

  else
  {
    sub_1BA4A3DD8();
    v19 = sub_1BA4A3E88();
    v20 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B9F07000, v19, v20, "Unable to create symbol chevron.forward", v21, 2u);
      MEMORY[0x1BFAF43A0](v21, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v5, v1);
    return 0;
  }

  return v18;
}

uint64_t sub_1B9F724F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F47C10(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F7254C(uint64_t a1, uint64_t a2)
{
  sub_1B9F47C10(0, &qword_1EDC5EBE8, MEMORY[0x1E6980E30]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F725CC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    return 0;
  }

  v41 = MEMORY[0x1E69E7CC0];
  v4 = v3;
  v5 = sub_1B9F72B74();
  if (v5)
  {
    sub_1B9F73B50(v5);
  }

  v6 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(&v1[v6], v38);
  v7 = v39;
  if (v39)
  {
    v8 = v40;
    v9 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v10 = *(v7 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9, v9);
    v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
    (*(v10 + 16))(v13, v11);
    sub_1B9F6F238(v38, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    LOBYTE(v8) = (*(v8 + 48))(v7, v8);
    (*(v10 + 8))(v13, v7);
    if ((v8 & 1) == 0)
    {
      v14 = sub_1B9F732EC();
      if (v14)
      {
        sub_1B9F73B50(v14);
      }
    }
  }

  else
  {
    sub_1B9F6F238(v38, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  }

  v16 = [v4 topAnchor];
  v17 = [v1 safeAreaLayoutGuide];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  MEMORY[0x1BFAF1510]();
  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v20 = [v4 trailingAnchor];
  v21 = [v1 safeAreaLayoutGuide];
  v22 = [v21 trailingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:-16.0];
  MEMORY[0x1BFAF1510]();
  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v24 = [v4 widthAnchor];
  v25 = [v1 widthAnchor];
  v26 = [v24 constraintLessThanOrEqualToAnchor:v25 multiplier:0.37];

  MEMORY[0x1BFAF1510]();
  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v15 = v41;
  v27 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  if (*&v1[v27] && (v28 = [v1 traitCollection], v29 = objc_msgSend(v28, sel_preferredContentSizeCategory), v28, LOBYTE(v28) = sub_1BA4A74F8(), v29, (v28 & 1) == 0))
  {
    v31 = *&v1[v27];
    if (!v31)
    {
LABEL_25:

      return v15;
    }
  }

  else
  {
    v30 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
    swift_beginAccess();
    v31 = *&v1[v30];
    if (!v31)
    {
      goto LABEL_25;
    }
  }

  v32 = [v31 heightAnchor];
  if (!v32)
  {
    goto LABEL_25;
  }

  v33 = v32;
  v34 = [v4 heightAnchor];
  v35 = [v34 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  return v41;
}

uint64_t sub_1B9F72B74()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (!v3)
  {
    return 0;
  }

  v48 = MEMORY[0x1E69E7CC0];
  v4 = v3;
  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LOBYTE(v5) = sub_1BA4A74F8();
  if (v5)
  {
    v7 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
    swift_beginAccess();
    v8 = *&v1[v7];
    if (v8)
    {
      v9 = v4;
      v10 = v8;
      [v1 addSubview_];
      v11 = [v9 leadingAnchor];
      v12 = [v1 safeAreaLayoutGuide];
      v13 = [v12 leadingAnchor];

      v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
      MEMORY[0x1BFAF1510]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v15 = [v10 bottomAnchor];
      v16 = [v9 topAnchor];

      v17 = [v15 constraintEqualToAnchor:v16 constant:-8.0];
      MEMORY[0x1BFAF1510]();
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v18 = [v9 bottomAnchor];

      v19 = [v1 safeAreaLayoutGuide];
      v20 = [v19 bottomAnchor];

      v21 = [v18 constraintEqualToAnchor:v20 constant:-12.0];
      goto LABEL_22;
    }
  }

  v22 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
  swift_beginAccess();
  v23 = *&v1[v22];
  if (!v23)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v9 = v4;
  v10 = v23;
  [v10 addSubview_];
  v24 = [v9 leadingAnchor];
  v25 = [v10 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v27 = v48;
  v28 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v29 = *&v1[v28];
  if (v29)
  {
    v30 = v29;
    v31 = [v9 firstBaselineAnchor];

    v32 = [v30 firstBaselineAnchor];
    v33 = [v31 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();

    v27 = v48;
  }

  else
  {
  }

  v35 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  sub_1B9F6DEE0(&v1[v35], v45);
  v36 = v46;
  if (!v46)
  {

    sub_1B9F6F238(v45, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
    return v27;
  }

  v37 = v47;
  v38 = __swift_project_boxed_opaque_existential_1(v45, v46);
  v39 = *(v36 - 8);
  v40 = MEMORY[0x1EEE9AC00](v38, v38);
  v42 = v45 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  (*(v39 + 16))(v42, v40);
  sub_1B9F6F238(v45, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
  LOBYTE(v37) = (*(v37 + 48))(v36, v37);
  (*(v39 + 8))(v42, v36);
  if ((v37 & 1) == 0)
  {

    return v27;
  }

  v18 = [v9 trailingAnchor];

  v20 = [v10 trailingAnchor];
  v21 = [v18 constraintEqualToAnchor_];
LABEL_22:
  v43 = v21;

  MEMORY[0x1BFAF1510]();
  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  return v48;
}

unint64_t sub_1B9F73298()
{
  result = qword_1EDC6AEE0;
  if (!qword_1EDC6AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6AEE0);
  }

  return result;
}

uint64_t sub_1B9F732EC()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (!v2)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (!v4)
  {
    return 0;
  }

  v33 = MEMORY[0x1E69E7CC0];
  v5 = v2;
  v6 = v4;
  [v6 addSubview_];
  v7 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
  swift_beginAccess();
  v8 = *&v0[v7];
  if (v8)
  {
    v9 = v8;
    v10 = [v0 traitCollection];
    v11 = [v10 preferredContentSizeCategory];

    LOBYTE(v10) = sub_1BA4A74F8();
    if ((v10 & 1) == 0)
    {

      v23 = [v5 leadingAnchor];
      v19 = v9;
      v24 = [v19 trailingAnchor];
      v25 = [v23 constraintEqualToAnchor:v24 constant:8.0];

      MEMORY[0x1BFAF1510]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BA4A6B68();
      }

      sub_1BA4A6BB8();
      v20 = [v5 centerYAnchor];

      v21 = [v19 centerYAnchor];
      v22 = [v20 constraintEqualToAnchor_];
      goto LABEL_15;
    }

    v12 = v0;
  }

  else
  {
    v12 = v0;

    v9 = v5;
  }

  v14 = [v5 leadingAnchor];
  v15 = [v6 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();
  v17 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v18 = *&v12[v17];
  if (!v18)
  {

    v27 = [v5 centerYAnchor];
    v28 = [v6 centerYAnchor];
    v29 = [v27 constraintEqualToAnchor_];

    MEMORY[0x1BFAF1510]();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BA4A6B68();
    }

    sub_1BA4A6BB8();
    goto LABEL_21;
  }

  v19 = v18;

  v20 = [v5 firstBaselineAnchor];
  v21 = [v19 firstBaselineAnchor];
  v22 = [v20 constraintEqualToAnchor_];
LABEL_15:
  v26 = v22;

  MEMORY[0x1BFAF1510]();
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

LABEL_21:
  v30 = [v5 trailingAnchor];

  v31 = [v6 trailingAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  MEMORY[0x1BFAF1510]();
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1BA4A6B68();
  }

  sub_1BA4A6BB8();

  return v33;
}

unint64_t sub_1B9F73860()
{
  result = qword_1EDC63460;
  if (!qword_1EDC63460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63460);
  }

  return result;
}

void sub_1B9F738B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t AnimatedSnidgetCurrentValueText.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_1B9F738B4(0, &qword_1EDC5DEA0, sub_1B9F73DDC, &type metadata for AnimatedSnidgetCurrentValueText.Configuration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F73DDC();
  sub_1BA4A8528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v19;
  v23 = 0;
  v11 = sub_1BA4A8188();
  v13 = v12;
  v14 = v11;
  v22 = 1;
  sub_1B9F748E8();
  sub_1BA4A81C8();
  (*(v6 + 8))(v9, v5);
  v15 = v20;
  v16 = v21;
  *v10 = v14;
  *(v10 + 8) = v13;
  *(v10 + 16) = v15;
  *(v10 + 24) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B9F73B80(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BA4A7CC8();
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
      result = sub_1BA4A7CC8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1B9FE4218(0, &qword_1EBBE9A28, &qword_1EDC6B570, 0x1E696ACD8, MEMORY[0x1E69E62F8]);
          sub_1B9FE43C8(&qword_1EBBE9A30, &qword_1EBBE9A28, &qword_1EDC6B570, 0x1E696ACD8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1BA0CA818(v13, i, a3);
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
        sub_1B9F0ADF8(0, &qword_1EDC6B570, 0x1E696ACD8);
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

uint64_t sub_1B9F73D48(uint64_t a1, uint64_t a2)
{
  sub_1B9F0A9A4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B9F73DDC()
{
  result = qword_1EDC6BE88[0];
  if (!qword_1EDC6BE88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6BE88);
  }

  return result;
}

void sub_1B9F73E30(uint64_t a1)
{
  sub_1B9F0A9A4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  v9 = *MEMORY[0x1E69DDB88];
  [v8 removeObserver:v1 name:*MEMORY[0x1E69DDB88] object:0];

  sub_1B9F73D48(a1, v6);
  v10 = type metadata accessor for TileHeaderDetailKind(0);
  if ((*(*(v10 - 8) + 48))(v6, 1, v10) == 1)
  {
    sub_1B9F6FBF4(v6, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1BA4A1728();
    (*(*(v11 - 8) + 8))(v6, v11);
    v12 = [v7 defaultCenter];
    [v12 addObserver:v1 selector:sel_didReceiveSignificantTimeChangeNotification_ name:v9 object:0];
  }

  else
  {
    sub_1B9F71048(v6, type metadata accessor for TileHeaderDetailKind);
  }
}

void sub_1B9F74054(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

unint64_t sub_1B9F740B0()
{
  result = qword_1EDC6B570;
  if (!qword_1EDC6B570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B570);
  }

  return result;
}

unint64_t sub_1B9F740FC()
{
  result = qword_1EDC6BE78;
  if (!qword_1EDC6BE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE78);
  }

  return result;
}

Swift::Void __swiftcall TileHeader.updateAutomationIdentifiers(with:)(Swift::String_optional with)
{
  v4 = v2;
  v5 = v1;
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v8 = type metadata accessor for TileHeaderDetailKind(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  *&v14 = MEMORY[0x1EEE9AC00](v10, v11).n128_u64[0];
  v16 = &v44 - v15;
  if (object)
  {
    v44 = v12;
    v45 = v13;
    v47 = countAndFlagsBits;
    v48 = object;

    MEMORY[0x1BFAF1350](0x7265646165482ELL, 0xE700000000000000);
    v17 = sub_1BA4A6758();

    [v3 setAccessibilityIdentifier_];

    v18 = (*(v4 + 72))(v5, v4);
    if (v18)
    {
      v19 = v18;
      v47 = countAndFlagsBits;
      v48 = object;

      MEMORY[0x1BFAF1350](0x2E7265646165482ELL, 0xED0000656C746954);
      v20 = sub_1BA4A6758();

      [v19 setAccessibilityIdentifier_];
    }

    v46 = countAndFlagsBits;
    v21 = (*(v4 + 88))(v5, v4);
    if (v21)
    {
      v22 = v21;
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_1BA4A7DF8();

      v47 = v46;
      v48 = object;
      MEMORY[0x1BFAF1350](0xD000000000000017, 0x80000001BA4FB900);
      v23 = sub_1BA4A6758();

      [v22 &selRef_tertiarySystemFillColor];
    }

    v24 = (*(v4 + 80))(v5, v4);
    if (v24)
    {
      v25 = v24;
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_1BA4A7DF8();

      v47 = v46;
      v48 = object;
      MEMORY[0x1BFAF1350](0xD000000000000011, 0x80000001BA4FB8E0);
      v26 = sub_1BA4A6758();

      [v25 &selRef_tertiarySystemFillColor];
    }

    (*(v4 + 112))(&v47, v5, v4);
    v27 = v49;
    if (!v49)
    {
      sub_1B9F6F2F0(&v47, sub_1BA434C74);
      return;
    }

    v28 = v50;
    __swift_project_boxed_opaque_existential_1(&v47, v49);
    (*(v28 + 40))(v27, v28);
    v29 = v45;
    sub_1B9F70FE4(v16, v45);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1B9F6F2F0(v16, type metadata accessor for TileHeaderDetailKind);
        __swift_destroy_boxed_opaque_existential_1(&v47);
        return;
      }

      sub_1B9F6F2F0(v16, type metadata accessor for TileHeaderDetailKind);
      v31 = sub_1BA4A1728();
      (*(*(v31 - 8) + 8))(v29, v31);
      v32 = 0xE400000000000000;
      v33 = 1702125892;
    }

    else
    {
      sub_1B9F6F2F0(v29, type metadata accessor for TileHeaderDetailKind);
      sub_1B9F6F2F0(v16, type metadata accessor for TileHeaderDetailKind);
      v32 = 0xE600000000000000;
      v33 = 0x6C6961746544;
    }

    __swift_destroy_boxed_opaque_existential_1(&v47);
    v41 = (*(v4 + 64))(v5, v4);
    if (v41)
    {
      v42 = v41;
      v47 = v46;
      v48 = object;

      MEMORY[0x1BFAF1350](0x2E7265646165482ELL, 0xE800000000000000);
      MEMORY[0x1BFAF1350](v33, v32);

      v43 = sub_1BA4A6758();

      [v42 &selRef_tertiarySystemFillColor];
    }

    else
    {
    }
  }

  else
  {
    [v3 setAccessibilityIdentifier_];
    v34 = (*(v4 + 72))(v5, v4);
    if (v34)
    {
      v35 = v34;
      [v34 setAccessibilityIdentifier_];
    }

    v36 = (*(v4 + 80))(v5, v4);
    if (v36)
    {
      v37 = v36;
      [v36 setAccessibilityIdentifier_];
    }

    v38 = (*(v4 + 64))(v5, v4);
    if (v38)
    {
      v39 = v38;
      [v38 setAccessibilityIdentifier_];
    }

    v46 = (*(v4 + 88))(v5, v4);
    [v46 setAccessibilityIdentifier_];
    v40 = v46;
  }
}

unint64_t sub_1B9F747C4()
{
  result = qword_1EDC6BE80;
  if (!qword_1EDC6BE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE80);
  }

  return result;
}

void *sub_1B9F74818()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B9F74864()
{
  if (*v0)
  {
    return 0x656C797473;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

void *sub_1B9F7489C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

unint64_t sub_1B9F748E8()
{
  result = qword_1EDC63470;
  if (!qword_1EDC63470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63470);
  }

  return result;
}

void *sub_1B9F7493C()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t sub_1B9F7498C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
  swift_beginAccess();
  return sub_1B9F6DEE0(v1 + v3, a1);
}

uint64_t AnimatedSnidgetCurrentValueText.Configuration.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1B9F738B4(0, &qword_1EDC5DE90, sub_1B9F74FD4, &type metadata for AnimatedSnidgetCurrentValueText.Configuration.Style.StringCodingKeys, MEMORY[0x1E69E6F48]);
  v39 = v4;
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v40 = &v36[-v6];
  sub_1B9F738B4(0, &qword_1EDC5DE88, sub_1B9F75434, &type metadata for AnimatedSnidgetCurrentValueText.Configuration.Style.NumericCodingKeys, v3);
  v8 = v7;
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v36[-v10];
  sub_1B9F738B4(0, &qword_1EDC5DE98, sub_1B9F759E0, &type metadata for AnimatedSnidgetCurrentValueText.Configuration.Style.CodingKeys, v3);
  v13 = v12;
  v43 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v36[-v15];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F759E0();
  v17 = v44;
  sub_1BA4A8528();
  if (v17)
  {
    goto LABEL_7;
  }

  v18 = v40;
  v19 = v41;
  v44 = a1;
  v20 = v42;
  v21 = sub_1BA4A81D8();
  v22 = (2 * *(v21 + 16)) | 1;
  v46 = v21;
  v47 = v21 + 32;
  v48 = 0;
  v49 = v22;
  v23 = sub_1B9F4BD44();
  v24 = v16;
  if (v23 == 2 || v48 != v49 >> 1)
  {
    v27 = sub_1BA4A7E68();
    swift_allocError();
    v29 = v28;
    sub_1B9FFFD90(0);
    *v29 = &type metadata for AnimatedSnidgetCurrentValueText.Configuration.Style;
    sub_1BA4A8128();
    sub_1BA4A7E48();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    (*(v43 + 8))(v16, v13);
    swift_unknownObjectRelease();
    a1 = v44;
LABEL_7:
    v30 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v37 = v23;
  if (v23)
  {
    v45 = 1;
    sub_1B9F74FD4();
    v25 = v18;
    sub_1BA4A8118();
    v26 = v43;
    v33 = v20;
    (*(v19 + 8))(v25, v39);
    (*(v26 + 8))(v24, v13);
    swift_unknownObjectRelease();
    v34 = 0;
  }

  else
  {
    v45 = 0;
    sub_1B9F75434();
    sub_1BA4A8118();
    v32 = v43;
    v33 = v20;
    sub_1BA4A81A8();
    v34 = v35;
    (*(v38 + 8))(v11, v8);
    (*(v32 + 8))(v16, v13);
    swift_unknownObjectRelease();
  }

  *v33 = v34;
  *(v33 + 8) = v37 & 1;
  v30 = v44;
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

id sub_1B9F74F58()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header;
  swift_beginAccess();
  v2 = *&v0[v1];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = *&v0[v1];
  }

  else
  {
    v4 = v0;
  }

  v5 = &selRef_topAnchor;
  if (!v3)
  {
    v5 = &selRef_bottomAnchor;
  }

  v6 = [v4 *v5];

  return v6;
}

unint64_t sub_1B9F74FD4()
{
  result = qword_1EDC6BE48;
  if (!qword_1EDC6BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE48);
  }

  return result;
}

uint64_t sub_1B9F75028(uint64_t a1, uint64_t a2)
{
  sub_1B9F0CE40(0, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F750A4(uint64_t a1)
{
  v2 = v1;
  sub_1B9F75028(a1, v21);
  v4 = v22;
  if (v22)
  {
    v5 = v23;
    __swift_project_boxed_opaque_existential_1(v21, v22);
    v6 = (*(v5 + 8))(v4, v5);
    v4 = v7;
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    sub_1B9F43AAC(v21, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
    v6 = 0;
  }

  v8 = (v2 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_baseIdentifier);
  swift_beginAccess();
  *v8 = v6;
  v8[1] = v4;

  v9 = v2 + OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header;
  result = swift_beginAccess();
  v11 = *v9;
  if (*v9)
  {
    v12 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    sub_1B9F75028(a1, v21);
    v14 = v22;
    if (v22)
    {
      v15 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v16 = *(v15 + 8);
      v17 = v11;
      v18 = v16(v14, v15);
      v14 = v19;
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      v20 = v11;
      sub_1B9F43AAC(v21, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider);
      v18 = 0;
    }

    (*(*(v12 + 16) + 8))(v18, v14, ObjectType);
  }

  return result;
}

unint64_t sub_1B9F75288()
{
  result = qword_1EDC6BE58;
  if (!qword_1EDC6BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE58);
  }

  return result;
}

uint64_t sub_1B9F752DC(uint64_t a1)
{
  sub_1B9F75364(0, &qword_1EDC61770, qword_1EDC61778, &protocol descriptor for UIAutomationBaseIdentifierProvider, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9F75364(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B9F753E0()
{
  result = qword_1EDC6BE50;
  if (!qword_1EDC6BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE50);
  }

  return result;
}

unint64_t sub_1B9F75434()
{
  result = qword_1EDC6BE40;
  if (!qword_1EDC6BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE40);
  }

  return result;
}

void sub_1B9F75494(uint64_t a1, uint64_t a2)
{
  sub_1B9F75488(a1, a2);
  v5 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  swift_beginAccess();
  if (*(v2 + v5))
  {
    type metadata accessor for ChromeHostView(0);
    v6 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header;
    swift_beginAccess();
    v7 = *v6;
    if (*v6)
    {
      v8 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 16);
      v11 = *(v10 + 8);
      v12 = v7;
      v11(a1, a2, ObjectType, v10);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1B9F755A4()
{
  result = qword_1EDC6BE30;
  if (!qword_1EDC6BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE30);
  }

  return result;
}

uint64_t sub_1B9F755F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  if (a2)
  {
    v8 = sub_1BA4A6758();
  }

  else
  {
    v8 = 0;
  }

  [v5 setAccessibilityIdentifier_];

  v9 = *a3;
  result = swift_beginAccess();
  v11 = *&v5[v9];
  if (!v11)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v12 = *(v11 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
  if (v12 && (sub_1B9F0ADF8(0, &qword_1EDC6B4A0, 0x1E69DD250), sub_1B9F0D9AC(0, qword_1EDC65F98, &protocol descriptor for UIAutomationIdentifiable, 1), v13 = v12, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v21 + 1))
    {
LABEL_14:
      sub_1B9F1134C(&v20, v23);
      v18 = v24;
      v19 = v25;
      __swift_project_boxed_opaque_existential_1(v23, v24);
      (*(v19 + 8))(a1, a2, v18, v19);
      return __swift_destroy_boxed_opaque_existential_1(v23);
    }
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  result = sub_1B9F43AAC(&v20, &qword_1EDC65F90, qword_1EDC65F98, &protocol descriptor for UIAutomationIdentifiable);
  v14 = *&v5[v9];
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = (v14 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable);
  swift_beginAccess();
  v16 = *v15;
  if (*v15 && (sub_1B9F0D9AC(0, qword_1EDC6B7C0, &protocol descriptor for Viewable, 0), sub_1B9F0D9AC(0, qword_1EDC65F98, &protocol descriptor for UIAutomationIdentifiable, 1), v17 = v16, (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v21 + 1))
    {
      goto LABEL_14;
    }
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  return sub_1B9F43AAC(&v20, &qword_1EDC65F90, qword_1EDC65F98, &protocol descriptor for UIAutomationIdentifiable);
}

unint64_t sub_1B9F75874()
{
  result = qword_1EDC61330;
  if (!qword_1EDC61330)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC61330);
  }

  return result;
}

uint64_t sub_1B9F758D8(uint64_t a1)
{
  sub_1B9F75988(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B9F75934()
{
  result = qword_1EDC6BE38;
  if (!qword_1EDC6BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE38);
  }

  return result;
}

void sub_1B9F75988(uint64_t a1)
{
  if (!qword_1EDC61328)
  {
    sub_1B9F75874();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC61328);
    }
  }
}

unint64_t sub_1B9F759E0()
{
  result = qword_1EDC6BE70;
  if (!qword_1EDC6BE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE70);
  }

  return result;
}

uint64_t sub_1B9F75A34(uint64_t a1)
{
  sub_1B9F35130(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_sectionContext;
  swift_beginAccess();
  sub_1B9F75B30(v1 + v7, v6);
  swift_beginAccess();
  sub_1B9F75CCC(a1, v1 + v7);
  swift_endAccess();
  sub_1B9F75D30(v6);
  sub_1B9F76220(a1, sub_1B9F35130);
  return sub_1B9F76220(v6, sub_1B9F35130);
}

uint64_t sub_1B9F75B30(uint64_t a1, uint64_t a2)
{
  sub_1B9F35130(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B9F75B94()
{
  result = qword_1EDC6BE60;
  if (!qword_1EDC6BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE60);
  }

  return result;
}

uint64_t sub_1B9F75BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1BA4A1998();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

unint64_t sub_1B9F75C78()
{
  result = qword_1EDC6BE68;
  if (!qword_1EDC6BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BE68);
  }

  return result;
}

uint64_t sub_1B9F75CCC(uint64_t a1, uint64_t a2)
{
  sub_1B9F35130(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1B9F75D30(uint64_t a1)
{
  v3 = type metadata accessor for SectionContext(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B9F35130(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v32[-v14];
  sub_1B9F76184(0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v32[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_sectionContext;
  swift_beginAccess();
  v22 = *(v17 + 56);
  sub_1B9F75B30(a1, v20);
  sub_1B9F75B30(v1 + v21, &v20[v22]);
  v23 = *(v4 + 48);
  if (v23(v20, 1, v3) == 1)
  {
    if (v23(&v20[v22], 1, v3) == 1)
    {
      sub_1B9F76220(v20, sub_1B9F35130);
      return;
    }

    v27 = sub_1B9F76184;
  }

  else
  {
    sub_1B9F75B30(v20, v15);
    v24 = v23(&v20[v22], 1, v3);
    v25 = sub_1B9F76184;
    if (v24 != 1)
    {
      sub_1B9FE1020(&v20[v22], v7);
      if (*v15 == *v7)
      {
        v26 = sub_1BA4A1908();
        sub_1B9F76220(v7, type metadata accessor for SectionContext);
        sub_1B9F76220(v15, type metadata accessor for SectionContext);
        sub_1B9F76220(v20, sub_1B9F35130);
        if (v26)
        {
          return;
        }

        goto LABEL_12;
      }

      sub_1B9F76220(v7, type metadata accessor for SectionContext);
      v25 = sub_1B9F35130;
    }

    v28 = v25;
    sub_1B9F76220(v15, type metadata accessor for SectionContext);
    v27 = v28;
  }

  sub_1B9F76220(v20, v27);
LABEL_12:
  v29 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  swift_beginAccess();
  v30 = *(v1 + v29);
  if (v30)
  {
    sub_1B9F75B30(v1 + v21, v11);
    v31 = v30;
    sub_1B9F76294(v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9F760AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636972656D756ELL && a2 == 0xE700000000000000;
  if (v6 || (sub_1BA4A8338() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BA4A8338();

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

void sub_1B9F76184(uint64_t a1)
{
  if (!qword_1EDC69270[0])
  {
    sub_1B9F35130(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDC69270);
    }
  }
}

uint64_t sub_1B9F761E8()
{
  if (*v0)
  {
    return 0x676E69727473;
  }

  else
  {
    return 0x636972656D756ELL;
  }
}

uint64_t sub_1B9F76220(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F76294(uint64_t a1)
{
  sub_1B9F6719C(0, qword_1EDC6E9C8, type metadata accessor for SectionContext);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_sectionContext;
  swift_beginAccess();
  sub_1B9F75CCC(a1, v1 + v11);
  swift_endAccess();
  v12 = (v1 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable);
  swift_beginAccess();
  v13 = *v12;
  if (!*v12)
  {
    v20 = a1;
    return sub_1B9F778E4(v20);
  }

  sub_1B9F75B30(v1 + v11, v10);
  ObjectType = swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (!v15)
  {
    v22 = v13;
    v19 = HAFeatureFlagViewLoggingEnabled();
    if (!v19)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v16 = v15;
  sub_1B9F75B30(v10, v6);
  v17 = *(v16 + 16);
  v18 = v13;
  v17(v6, ObjectType, v16);
  v19 = HAFeatureFlagViewLoggingEnabled();
  if (v19)
  {
LABEL_4:
    v19 = sub_1BA20775C(v1, v13);
  }

LABEL_5:
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x130))(v19);

  sub_1B9F778E4(a1);
  v20 = v10;
  return sub_1B9F778E4(v20);
}

uint64_t sub_1B9F764B4(uint64_t a1)
{
  v2 = v1;
  sub_1B9F0A9A4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v24 - v6;
  if (sub_1B9F771B0(a1))
  {
    sub_1B9F6DEE0(a1, &v27);
    v8 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource;
    swift_beginAccess();
    sub_1B9F6E028(&v27, v2 + v8);
    swift_endAccess();
    sub_1B9F6DEE0(a1, &v27);
    if (v28)
    {
      sub_1B9F1134C(&v27, v24);
      v9 = v25;
      v10 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      (*(v10 + 40))(v9, v10);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v11 = type metadata accessor for TileHeaderDetailKind(0);
      (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
    }

    else
    {
      v13 = type metadata accessor for TileHeaderDetailKind(0);
      (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    }

    v14 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_currentTileHeaderDetailKind;
    swift_beginAccess();
    sub_1B9F6E0FC(v7, v2 + v14);
    swift_endAccess();
    sub_1B9F711CC();
    v15 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel;
    swift_beginAccess();
    v16 = *(v2 + v15);
    if (v16)
    {
      v17 = v16;
      sub_1B9F6F658();
      if (v18)
      {
        v19 = sub_1BA4A6758();
      }

      else
      {
        v19 = 0;
      }

      [v17 setText_];
    }

    sub_1B9F71D38();
    sub_1B9F6DEE0(a1, &v27);
    v20 = v28;
    if (v28)
    {
      v21 = v29;
      __swift_project_boxed_opaque_existential_1(&v27, v28);
      v22 = (*(v21 + 16))(v20, v21);
      v20 = v23;
      __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    else
    {
      sub_1B9F6F238(&v27, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
      v22 = 0;
    }

    sub_1B9F709C4(v22, v20, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_titleLabel, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailContainerView, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_accessoryLabel, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_dataSource, &OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_detailLabel);
  }

  else
  {
    sub_1BA2D03A4();

    return sub_1B9F6DBC8(a1);
  }
}

void *sub_1B9F7682C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SnidgetSwiftChartViewModel(0);
  v5 = swift_allocObject();
  result = SnidgetSwiftChartViewModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *SnidgetSwiftChartViewModel.init(from:)(void *a1)
{
  v2 = sub_1BA4A1898();
  v3 = *(v2 - 8);
  v49 = v2;
  v50 = v3;
  MEMORY[0x1EEE9AC00](v2, v4);
  v47 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  MEMORY[0x1EEE9AC00](v48, v6);
  v52 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A0FA8();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v46 - v14;
  sub_1B9F77148(0, &qword_1EDC5DEC0, sub_1B9F77770, &type metadata for SnidgetSwiftChartViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v53 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v46 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B9F77770();
  v54 = v20;
  v22 = v55;
  sub_1BA4A8528();
  if (v22)
  {
    v23 = v56;
    type metadata accessor for SnidgetSwiftChartViewModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v15;
    v25 = v52;
    v55 = v11;
    v26 = v17;
    LOBYTE(v58) = 0;
    sub_1B9F77B54();
    sub_1BA4A81C8();
    v23 = v56;
    *(v56 + 16) = v59;
    sub_1B9F47FD8(0, &qword_1EDC6B678, type metadata accessor for SwiftChartPoint, MEMORY[0x1E69E62F8]);
    LOBYTE(v58) = 1;
    sub_1B9F78C44(&qword_1EDC5E6E0, &qword_1EDC68EA0, &protocol conformance descriptor for SwiftChartPoint, MEMORY[0x1E69E6330]);
    sub_1BA4A81C8();
    *(v23 + 24) = v59;
    LOBYTE(v59) = 2;
    sub_1B9F796F4(&qword_1EDC6AF10, MEMORY[0x1E6968130], MEMORY[0x1E6968150]);
    v27 = v8;
    sub_1BA4A81C8();
    v28 = OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval;
    (*(v51 + 32))(v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateInterval, v24, v27);
    LOBYTE(v59) = 3;
    sub_1B9F796F4(&qword_1EDC652F0, type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight, &protocol conformance descriptor for SnidgetSwiftChartViewModel.DiagramHighlight);
    sub_1BA4A81C8();
    sub_1B9F7B908(v25, v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_diagramHighlight);
    sub_1B9F7B9A0();
    LOBYTE(v58) = 4;
    sub_1B9F7B9F8(&qword_1EDC5E850, MEMORY[0x1E69E63E8], MEMORY[0x1E69E5FC0]);
    v52 = 0;
    sub_1BA4A81C8();
    v29 = v49;
    *(v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_yValueRange) = v59;
    LOBYTE(v59) = 5;
    v30 = sub_1BA4A8198();
    v32 = v50;
    v31 = v51;
    *(v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_shouldReverseYAxis) = v30 & 1;
    swift_beginAccess();
    v33 = v55;
    (*(v31 + 16))(v55, v23 + v28, v27);
    sub_1BA4A0F98();
    v35 = v34;
    (*(v31 + 8))(v33, v27);
    v36 = 4.0;
    if (v35 > 86400.0)
    {
      v36 = 6.0;
    }

    v37 = v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_chartParameters;
    v38 = vdup_n_s32(v35 > 86400.0);
    v39.i64[0] = v38.u32[0];
    v39.i64[1] = v38.u32[1];
    v40 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v39, 0x3FuLL)), xmmword_1BA4D3280, xmmword_1BA4D3270);
    *v37 = v40.i64[0];
    *(v37 + 8) = v40;
    *(v37 + 24) = v36;
    *(v37 + 32) = 0x4000000000000000;
    swift_beginAccess();
    sub_1BA4A0F98();
    v42 = v41;
    swift_endAccess();
    v43 = MEMORY[0x1E6969A48];
    if (v42 <= 86400.0)
    {
      v43 = MEMORY[0x1E6969A58];
    }

    v44 = v47;
    (*(v32 + 104))(v47, *v43, v29);
    (*(v32 + 32))(v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_dateScaleStep, v44, v29);
    v60 = 6;
    sub_1B9F7BE68();
    sub_1BA4A8178();
    (*(v26 + 8))(v54, v53);
    *(v23 + OBJC_IVAR____TtC18HealthExperienceUI26SnidgetSwiftChartViewModel_animationConfiguration) = v58;
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  return v23;
}

void sub_1B9F77148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1B9F771B0(uint64_t a1)
{
  sub_1B9F777C4(0);
  v45 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F0A9A4(0, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for TileHeaderDetailKind(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v44 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v43 - v24;
  v26 = OBJC_IVAR____TtC18HealthExperienceUI22DataTypeTileHeaderView_currentTileHeaderDetailKind;
  swift_beginAccess();
  sub_1B9F73D48(v1 + v26, v13);
  v27 = *(v15 + 48);
  if (v27(v13, 1, v14) != 1)
  {
    sub_1B9F77828(v13, v25);
    sub_1B9F6DEE0(a1, v47);
    v29 = v48;
    if (!v48)
    {
      sub_1B9F71048(v25, type metadata accessor for TileHeaderDetailKind);
      sub_1B9F6F238(v47, &qword_1EDC6CD10, qword_1EDC6CD18, &protocol descriptor for TileHeaderDataSource, sub_1B9F0D950);
      (*(v15 + 56))(v9, 1, 1, v14);
      goto LABEL_7;
    }

    v30 = v49;
    __swift_project_boxed_opaque_existential_1(v47, v48);
    (*(v30 + 40))(v29, v30);
    (*(v15 + 56))(v9, 0, 1, v14);
    __swift_destroy_boxed_opaque_existential_1(v47);
    if (v27(v9, 1, v14) == 1)
    {
      sub_1B9F71048(v25, type metadata accessor for TileHeaderDetailKind);
LABEL_7:
      v28 = v9;
      goto LABEL_8;
    }

    sub_1B9F77828(v9, v21);
    v32 = v46;
    v33 = *(v45 + 48);
    sub_1B9F77828(v25, v46);
    sub_1B9F77828(v21, v32 + v33);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v35 = v44;
        sub_1B9F70FE4(v32, v44);
        v36 = swift_getEnumCaseMultiPayload();
        if (!v36)
        {
          sub_1B9F71048(v32 + v33, type metadata accessor for TileHeaderDetailKind);
          v41 = sub_1BA4A1728();
          (*(*(v41 - 8) + 8))(v35, v41);
          goto LABEL_24;
        }

        if (v36 == 1)
        {
          v37 = sub_1BA4A1728();
          v38 = *(*(v37 - 8) + 8);
          v38(v32 + v33, v37);
          v38(v35, v37);
LABEL_24:
          sub_1B9F71048(v32, type metadata accessor for TileHeaderDetailKind);
          return 1;
        }

        v42 = sub_1BA4A1728();
        (*(*(v42 - 8) + 8))(v35, v42);
      }

      else if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v39 = swift_getEnumCaseMultiPayload();
      if (!v39)
      {
        sub_1B9F71048(v32 + v33, type metadata accessor for TileHeaderDetailKind);
        goto LABEL_24;
      }

      if (v39 == 1)
      {
        v40 = sub_1BA4A1728();
        (*(*(v40 - 8) + 8))(v32 + v33, v40);
        goto LABEL_24;
      }
    }

    sub_1B9F71048(v32, sub_1B9F777C4);
    return 0;
  }

  v28 = v13;
LABEL_8:
  sub_1B9F6FBF4(v28, qword_1EDC6E940, type metadata accessor for TileHeaderDetailKind);
  return 0;
}

unint64_t sub_1B9F77770()
{
  result = qword_1EDC6C528;
  if (!qword_1EDC6C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C528);
  }

  return result;
}

void sub_1B9F777C4(uint64_t a1)
{
  if (!qword_1EDC6CD08)
  {
    type metadata accessor for TileHeaderDetailKind(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6CD08);
    }
  }
}

uint64_t sub_1B9F77828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileHeaderDetailKind(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B9F77890()
{
  result = qword_1EDC6C518;
  if (!qword_1EDC6C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C518);
  }

  return result;
}

uint64_t sub_1B9F778E4(uint64_t a1)
{
  sub_1B9F6719C(0, qword_1EDC6E9C8, type metadata accessor for SectionContext);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B9F77984()
{
  result = qword_1EDC6C520;
  if (!qword_1EDC6C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C520);
  }

  return result;
}

uint64_t sub_1B9F779D8(char a1, char a2)
{
  v5 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7)
  {
    v8 = v7 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedViewable;
    swift_beginAccess();
    v9 = *v8;
    if (*v8 && (v10 = *(v8 + 8), v17[0] = *v8, v17[1] = v10, sub_1B9F0D9AC(0, qword_1EDC6B7C0, &protocol descriptor for Viewable, 0), sub_1B9F0D9AC(0, &qword_1EDC67CE0, &protocol descriptor for CellEditModeHandling, 1), v11 = v9, (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v15 + 1))
      {
        sub_1B9F1134C(&v14, v17);
        v12 = v18;
        v13 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        (*(v13 + 8))(a1 & 1, a2 & 1, v12, v13);
        return __swift_destroy_boxed_opaque_existential_1(v17);
      }
    }

    else
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
    }

    return sub_1B9F43AAC(&v14, &qword_1EDC67CD8, &qword_1EDC67CE0, &protocol descriptor for CellEditModeHandling);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B9F77B54()
{
  result = qword_1EDC65310;
  if (!qword_1EDC65310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC65310);
  }

  return result;
}

id sub_1B9F77BA8(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for HostViewCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_1B9F77BF8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x696F507472616863;
    if (v1 != 1)
    {
      v5 = 0x65746E4965746164;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x536D617267616964;
    }
  }

  else
  {
    v2 = 0xD000000000000016;
    if (v1 == 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0x615265756C615679;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t storeEnumTagSinglePayload for SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Action(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SummarySharingSetupDetailAnalyticsEvent.OnboardingStepDetailsAnalytics.Action(unsigned __int8 *a1, unsigned int a2)
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

void sub_1B9F77F18(double a1, double a2, float a3, float a4)
{
  v9 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
  swift_beginAccess();
  v10 = *&v4[v9];
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
    if (!v11 || (swift_getObjectType(), !swift_conformsToProtocol2()))
    {
      v22.receiver = v4;
      v22.super_class = type metadata accessor for ChromeHostViewCell(0);
      *&v19 = a3;
      *&v20 = a4;
      objc_msgSendSuper2(&v22, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_, a1, a2, v19, v20);
      return;
    }

    type metadata accessor for ChromeHostView(0);
    v12 = swift_dynamicCastClassUnconditional();
    v13 = OBJC_IVAR____TtC18HealthExperienceUI14ChromeHostView_header;
    swift_beginAccess();
    v14 = *(v12 + v13);
    if (v14)
    {
      v15 = v11;
      *&v16 = a3;
      *&v17 = a4;
      [v14 systemLayoutSizeFittingSize:a1 withHorizontalFittingPriority:a2 verticalFittingPriority:{v16, v17}];
      if (*&v4[v9])
      {
        goto LABEL_6;
      }
    }

    else
    {
      v21 = v11;
      if (*&v4[v9])
      {
LABEL_6:
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18)
        {
          [v18 sizeThatFits_];

          return;
        }

        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_11:

    return;
  }

  __break(1u);
}

unint64_t sub_1B9F781A4()
{
  result = qword_1EDC6C510;
  if (!qword_1EDC6C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C510);
  }

  return result;
}

unint64_t sub_1B9F781F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s18HealthExperienceUI26SnidgetSwiftChartViewModelC12DiagramStyleO8rawValueAESgSS_tcfC_0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B9F78228(uint64_t *a1, uint64_t (*a2)(void), double a3, double a4, float a5, float a6)
{
  v12 = *a1;
  swift_beginAccess();
  v13 = *&v6[v12];
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedView);
    if (v14 && (swift_getObjectType(), swift_conformsToProtocol2()))
    {
      v15 = UIEdgeInsetsInsetRect(0.0, 0.0, a3);
      v16 = v14;
      [v16 sizeThatFits_];
    }

    else
    {
      v19.receiver = v6;
      v19.super_class = a2(0);
      *&v17 = a5;
      *&v18 = a6;
      objc_msgSendSuper2(&v19, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_, a3, a4, v17, v18);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t _s18HealthExperienceUI26SnidgetSwiftChartViewModelC12DiagramStyleO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BA4A8108();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id sub_1B9F783AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a6;
  v57 = sub_1BA4A3EA8();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v11);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1BA4A3428();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v51[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_unownedRetainStrong();
  v18 = *(a5 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource);
  v19 = *(a5 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource + 16);
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v63[0] = v18;
  (*(v19 + 8))(v66, a2, a3, a4, ObjectType, v19);
  swift_unknownObjectRelease();
  sub_1B9F0A534(v66, v63);
  sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
  if (swift_dynamicCast())
  {

    v21 = sub_1BA4A6758();
    v63[0] = type metadata accessor for FakeCollectionViewHeader();
    sub_1B9F37450(0, qword_1EDC66158, type metadata accessor for FakeCollectionViewHeader);
    sub_1BA4A6808();
    v22 = sub_1BA4A6758();

    v23 = sub_1BA4A18F8();
    v24 = [a1 dequeueReusableSupplementaryViewOfKind:v21 withReuseIdentifier:v22 forIndexPath:v23];
  }

  else
  {
    v54 = a4;
    __swift_project_boxed_opaque_existential_1(v66, v66[3]);
    sub_1BA4A2D48();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1BA4A3D88();
      sub_1B9F0A534(v66, v63);
      v25 = sub_1BA4A3E88();
      v26 = sub_1BA4A6FA8();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v52 = v26;
        v28 = v27;
        v53 = swift_slowAlloc();
        *&v61[0] = v53;
        *v28 = 136315394;
        v29 = sub_1BA4A85D8();
        v31 = sub_1B9F0B82C(v29, v30, v61);

        *(v28 + 4) = v31;
        *(v28 + 12) = 2080;
        __swift_project_boxed_opaque_existential_1(v63, v64);
        v32 = sub_1BA4A2D58();
        v34 = v33;
        __swift_destroy_boxed_opaque_existential_1(v63);
        v35 = sub_1B9F0B82C(v32, v34, v61);

        *(v28 + 14) = v35;
        _os_log_impl(&dword_1B9F07000, v25, v52, "[%s]: Item %s registered as a supplementary view but is attempting to use a cell provider which is unsupported.", v28, 0x16u);
        v36 = v53;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v36, -1, -1);
        MEMORY[0x1BFAF43A0](v28, -1, -1);

        (*(v56 + 8))(v13, v57);
      }

      else
      {

        (*(v56 + 8))(v13, v57);
        __swift_destroy_boxed_opaque_existential_1(v63);
      }

      v43 = sub_1BA4A6758();
      v44 = sub_1BA4A6758();
      v45 = sub_1BA4A18F8();
      v46 = [a1 dequeueReusableSupplementaryViewOfKind:v43 withReuseIdentifier:v44 forIndexPath:v45];

      v23 = v46;
      sub_1B9F5DBCC(v17, MEMORY[0x1E69A3458]);
    }

    else
    {
      v37 = sub_1BA4A6758();
      v38 = sub_1BA4A6758();

      v39 = sub_1BA4A18F8();
      v40 = [a1 dequeueReusableSupplementaryViewOfKind:v37 withReuseIdentifier:v38 forIndexPath:v39];

      v60[0] = v40;
      sub_1B9F0ADF8(0, &unk_1EDC6B538, 0x1E69DC7E8);
      sub_1B9F0D950(0, &qword_1EDC6C6D0, &protocol descriptor for SupplementaryViewAdaptor);
      v23 = v40;
      if (swift_dynamicCast())
      {
        sub_1B9F1134C(v61, v63);
        sub_1B9F0A534(v66, v60);
        sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(v58, v61);
          sub_1B9F0A534(v61, v60);
          v41 = v64;
          v42 = v65;
          __swift_mutable_project_boxed_opaque_existential_1(v63, v64);
          (*(v42 + 16))(v60, v41, v42);
          __swift_destroy_boxed_opaque_existential_1(v61);
        }

        else
        {
          v59 = 0;
          memset(v58, 0, sizeof(v58));
          sub_1B9F5F198(v58, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
        }

        __swift_destroy_boxed_opaque_existential_1(v63);
      }

      else
      {
        v62 = 0;
        memset(v61, 0, sizeof(v61));
        sub_1B9F5F198(v61, &unk_1EBBEC060, &qword_1EDC6C6D0, &protocol descriptor for SupplementaryViewAdaptor, sub_1B9F0CDE8);
      }
    }

    swift_getObjectType();
    v47 = swift_conformsToProtocol2();
    if (!v47 || !v23)
    {
      v24 = v23;
      goto LABEL_19;
    }

    v48 = v47;
    v49 = swift_getObjectType();
    v22 = v23;
    v24 = v22;
    (*(v48 + 16))([a1 viewController], v49, v48);
    v23 = v22;
  }

LABEL_19:
  __swift_destroy_boxed_opaque_existential_1(v66);
  return v24;
}

void sub_1B9F78B84(uint64_t a1)
{
  sub_1BA4A0FA8();
  if (v1 <= 0x3F)
  {
    sub_1B9F482E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B9F78C44(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F47FD8(255, &qword_1EDC6B678, type metadata accessor for SwiftChartPoint, MEMORY[0x1E69E62F8]);
    sub_1B9F796F4(a2, type metadata accessor for SwiftChartPoint, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t CompoundSectionedDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v74 = a2;
  v72 = a1;
  v79 = a4;
  v5 = sub_1BA4A3EA8();
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  MEMORY[0x1EEE9AC00](v7, v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v75 = &v68 - v11;
  v12 = sub_1BA4A1998();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v73 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v68 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v76 = &v68 - v22;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v68 - v25;
  v29 = MEMORY[0x1EEE9AC00](v27, v28);
  v31 = &v68 - v30;
  v32 = *(v13 + 16);
  v81 = v33;
  v32(&v68 - v30, a3, v29);
  v34 = sub_1BA4A1978();
  v80 = v31;
  if (v34 == 1)
  {
    sub_1B9F261DC(0, &qword_1EDC5DBD8, MEMORY[0x1E69E6530], MEMORY[0x1E69E6F90]);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BA4B5460;
    *(v35 + 32) = sub_1BA4A18D8();
    *(v35 + 40) = 0;
    v36 = v35;
    v31 = v80;
    MEMORY[0x1BFAEC3C0](v36);
    v37 = v81;
    (*(v13 + 8))(v31, v81);
    (*(v13 + 32))(v31, v26, v37);
  }

  v38 = sub_1B9F55C08(v19, v31);
  v40 = v39;
  v41 = v76;
  v42 = v19;
  v43 = v81;
  (*(v13 + 32))(v76, v42, v81);
  v84 = v38;
  v85 = v40;
  v70 = v40;
  v44 = sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, qword_1EDC648F8, &protocol descriptor for SupplementaryItemDataSource, 1);
  swift_unknownObjectRetain();
  v71 = v44;
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v82, v86);
    v45 = v87;
    v46 = v88;
    __swift_project_boxed_opaque_existential_1(v86, v87);
    (*(v46 + 8))(v72, v74, v41, v45, v46);
    swift_unknownObjectRelease();
    v47 = *(v13 + 8);
    v47(v41, v43);
    v47(v80, v43);
    return __swift_destroy_boxed_opaque_existential_1(v86);
  }

  else
  {
    v83 = 0;
    memset(v82, 0, sizeof(v82));
    sub_1B9F3B8FC(v82, &qword_1EBBEBD40, qword_1EDC648F8, &protocol descriptor for SupplementaryItemDataSource);
    sub_1BA4A3DD8();
    (v32)(v73, v41, v43);
    swift_unknownObjectRetain();
    v49 = v74;

    v50 = sub_1BA4A3E88();
    v51 = sub_1BA4A6FA8();
    swift_unknownObjectRelease();

    v69 = v51;
    v52 = v51;
    v53 = v50;
    if (os_log_type_enabled(v50, v52))
    {
      v54 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *&v82[0] = v68;
      *v54 = 136315650;
      *(v54 + 4) = sub_1B9F0B82C(v72, v49, v82);
      *(v54 + 12) = 2080;
      v55 = v73;
      (v32)(v26, v73, v43);
      v56 = sub_1BA4A6828();
      v58 = v57;
      v59 = *(v13 + 8);
      v59(v55, v81);
      v60 = sub_1B9F0B82C(v56, v58, v82);
      v43 = v81;

      *(v54 + 14) = v60;
      *(v54 + 22) = 2080;
      v86[0] = v38;
      v86[1] = v70;
      swift_unknownObjectRetain();
      v61 = sub_1BA4A6828();
      v63 = sub_1B9F0B82C(v61, v62, v82);

      *(v54 + 24) = v63;
      v64 = v53;
      _os_log_impl(&dword_1B9F07000, v53, v69, "supplementaryItem requested of CompoundSectionedDataSource but childDataSource does not implement SupplementaryItemDataSource.  kind: %s, local index path %s, source: %s. Returning fake header item", v54, 0x20u);
      v65 = v68;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v65, -1, -1);
      v66 = v54;
      v41 = v76;
      MEMORY[0x1BFAF43A0](v66, -1, -1);
    }

    else
    {

      v59 = *(v13 + 8);
      v59(v73, v43);
    }

    (*(v77 + 8))(v75, v78);
    v67 = v79;
    v79[3] = &type metadata for FallbackHeaderItem;
    v67[4] = sub_1BA1BA0F8();
    *v67 = swift_allocObject();
    FallbackHeaderItem.init()();
    swift_unknownObjectRelease();
    v59(v41, v43);
    return (v59)(v80, v43);
  }
}

uint64_t sub_1B9F796B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B9F796F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SwiftChartPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1BA4A0FA8();
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F79BD0(0, &qword_1EDC5DF18, MEMORY[0x1E69E6F48]);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v28 - v9;
  v11 = type metadata accessor for SwiftChartPoint(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F79C98();
  v33 = v10;
  v15 = v34;
  sub_1BA4A8528();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v11;
  v16 = v31;
  v17 = v32;
  v39 = 0;
  v18 = v14;
  *v14 = sub_1BA4A8188();
  v14[1] = v19;
  v28[1] = v19;
  v38 = 1;
  sub_1B9F79F10(&qword_1EDC6AF10, MEMORY[0x1E6968150]);
  sub_1BA4A81C8();
  (*(v30 + 32))(v14 + *(v34 + 20), v6, v3);
  v37 = 2;
  v28[0] = 0;
  sub_1BA4A81A8();
  v20 = a1;
  v21 = v34;
  *(v14 + *(v34 + 24)) = v22;
  v36 = 3;
  v23 = sub_1BA4A8158();
  v35 = v24;
  v25 = v23;
  v26 = v14 + *(v21 + 28);
  (*(v16 + 8))(v33, v17);
  *v26 = v25;
  v26[8] = v35 & 1;
  sub_1B9F79F54(v18, v29);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1B9F79FB8(v18);
}

void sub_1B9F79BD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B9F79C98();
    v7 = a3(a1, &type metadata for SwiftChartPoint.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B9F79C34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

unint64_t sub_1B9F79C98()
{
  result = qword_1EDC6D9B8[0];
  if (!qword_1EDC6D9B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6D9B8);
  }

  return result;
}

unint64_t sub_1B9F79D24()
{
  result = qword_1EDC6D9A8;
  if (!qword_1EDC6D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D9A8);
  }

  return result;
}

id DefaultHeaderCollectionReusableView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton] = 0;
  v9 = &v4[OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item];
  v10 = type metadata accessor for DefaultHeaderCollectionReusableView();
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v12.receiver = v4;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

unint64_t sub_1B9F79E28()
{
  result = qword_1EDC6D9B0;
  if (!qword_1EDC6D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D9B0);
  }

  return result;
}

uint64_t sub_1B9F79F10(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1BA4A0FA8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F79F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SwiftChartPoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F79FB8(uint64_t a1)
{
  v2 = type metadata accessor for SwiftChartPoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B9F7A014()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton);
  }

  else
  {
    v4 = sub_1BA344BF0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t SnidgetSwiftChartViewModel.DiagramHighlight.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  sub_1B9F47FD8(0, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v32 = &v29 - v5;
  v6 = sub_1BA4A2B98();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F77148(0, &qword_1EDC5DEB8, sub_1B9F7A5D4, &type metadata for SnidgetSwiftChartViewModel.DiagramHighlight.CodingKeys, MEMORY[0x1E69E6F48]);
  v35 = v9;
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 24);
  v19 = sub_1BA4A1728();
  v20 = *(*(v19 - 8) + 56);
  v37 = v16;
  v38 = v18;
  v20(&v16[v18], 1, 1, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F7A5D4();
  v34 = v12;
  v21 = v36;
  sub_1BA4A8528();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1BA05DB44(&v37[v38]);
  }

  else
  {
    v22 = v30;
    v43 = 0;
    sub_1B9F796F4(&qword_1EDC6E1D8, MEMORY[0x1E69A3260], MEMORY[0x1E69A3270]);
    sub_1BA4A81C8();
    v23 = v37;
    (*(v22 + 32))(v37, v33, v6);
    v41 = 1;
    sub_1B9F7B168();
    sub_1BA4A81C8();
    *(v23 + *(v13 + 20)) = v42;
    v40 = 2;
    sub_1B9F796F4(&qword_1EDC6AE70, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1BA4A8178();
    sub_1B9F7B4F4(v32, v23 + v38);
    v39 = 3;
    v24 = sub_1BA4A8158();
    v26 = v25;
    v27 = v23 + *(v13 + 28);
    (*(v31 + 8))(v34, v35);
    *v27 = v24;
    *(v27 + 8) = v26 & 1;
    sub_1B9F7B750(v23, v29);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1B9F7B8AC(v23);
  }
}

unint64_t sub_1B9F7A5D4()
{
  result = qword_1EDC6C500;
  if (!qword_1EDC6C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C500);
  }

  return result;
}

unint64_t sub_1B9F7A62C()
{
  result = qword_1EDC6B5E0;
  if (!qword_1EDC6B5E0)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B5E0);
  }

  return result;
}

void sub_1B9F7A684(uint64_t a1)
{
  if (!qword_1EDC5DC30)
  {
    sub_1B9F3BF3C();
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DC30);
    }
  }
}

unint64_t sub_1B9F7A6DC()
{
  result = qword_1EDC6C4F0;
  if (!qword_1EDC6C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C4F0);
  }

  return result;
}

uint64_t sub_1B9F7A730(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1B9F63E74(a1, v3 + v4);
  swift_endAccess();
  sub_1B9F7A7A4();
  return sub_1B9F7B644(a1);
}

uint64_t sub_1B9F7A7A4()
{
  v1 = v0;
  sub_1B9F0D598(0, &qword_1EDC6B780, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v45 - v4;
  v6 = sub_1BA4A3FD8();
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A3F98();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BA4A4428();
  v16 = *(v15 - 1);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1B9F68124(v1 + v20, &aBlock);
  if (!v59)
  {
LABEL_9:
    sub_1B9F7B644(&aBlock);
    goto LABEL_10;
  }

  v52 = v14;
  v53 = v9;
  v54 = v11;
  sub_1B9FCD918();
  type metadata accessor for HeaderItem(0);
  if (swift_dynamicCast())
  {
    v21 = v62;
    v20 = v16 + 16;
    v55 = *(v16 + 16);
    v55(v19, v62 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_configuration, v15);

    sub_1BA4A43B8();
    swift_beginAccess();
    if (*(v21 + 64) != 1)
    {
      sub_1BA4A75F8();
      goto LABEL_7;
    }

    v46 = v10;
    v47 = v5;
    v48 = v16;
    v22 = sub_1B9F7A014();
    v24 = *(v21 + 48);
    v23 = *(v21 + 56);
    v49 = objc_opt_self();
    v25 = swift_allocObject();
    v25[2] = v22;
    v25[3] = v24;
    v25[4] = v23;
    v25[5] = 0;
    v26 = swift_allocObject();
    v45 = v1;
    *(v26 + 16) = sub_1B9F7B15C;
    *(v26 + 24) = v25;
    v60 = sub_1B9F7B0CC;
    v61 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v57 = 1107296256;
    v58 = sub_1B9F7B0FC;
    v59 = &block_descriptor_92;
    v27 = _Block_copy(&aBlock);
    v1 = v61;
    swift_bridgeObjectRetain_n();
    v28 = v22;

    [v49 performWithoutAnimation_];
    _Block_release(v27);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if ((v27 & 1) == 0)
    {
      sub_1B9F0D598(0, &qword_1EDC6B430, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
      sub_1BA4A3FE8();
      v29 = swift_allocObject();
      v49 = v15;
      *(v29 + 16) = xmmword_1BA4B5480;
      v30 = *(v45 + OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView____lazy_storage___detailButton);
      sub_1B9FD7EE0(0);
      v32 = v53;
      v33 = &v53[*(v31 + 48)];
      v34 = *MEMORY[0x1E69DBF28];
      v35 = sub_1BA4A3F18();
      (*(*(v35 - 8) + 104))(v32, v34, v35);
      *v33 = sub_1B9FF87F0;
      v33[1] = 0;
      (*(v50 + 104))(v32, *MEMORY[0x1E69DBF60], v51);
      v36 = sub_1BA4A3F48();
      (*(*(v36 - 8) + 56))(v47, 1, 1, v36);
      v37 = v30;
      v38 = v52;
      sub_1BA4A3F88();
      sub_1BA4A3EE8();
      (*(v54 + 8))(v38, v46);
      v15 = v49;
      sub_1BA4A75F8();
      v16 = v48;
LABEL_7:
      v59 = v15;
      v60 = MEMORY[0x1E69DC110];
      v39 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      v55(v39, v19, v15);
      MEMORY[0x1BFAF1EF0](&aBlock);
      v40 = (v21 + OBJC_IVAR____TtC18HealthExperienceUI10HeaderItem_baseIdentifier);
      swift_beginAccess();
      v41 = *v40;
      v42 = v40[1];

      sub_1B9F7B558(v41, v42);

      return (*(v16 + 8))(v19, v15);
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  aBlock = 0;
  v57 = 0xE000000000000000;
  sub_1BA4A7DF8();

  v62 = 0xD000000000000026;
  v63 = 0x80000001BA501790;
  sub_1B9F68124(v1 + v20, &aBlock);
  sub_1B9F0D598(0, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720]);
  v44 = sub_1BA4A6828();
  MEMORY[0x1BFAF1350](v44);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

uint64_t sub_1B9F7AFA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1B9F7AFF4()
{
  result = qword_1EDC6C4F8;
  if (!qword_1EDC6C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C4F8);
  }

  return result;
}

uint64_t sub_1B9F7B048()
{
  v1 = 0x436D617267616964;
  v2 = 1702125924;
  if (*v0 != 2)
  {
    v2 = 0x65756C615679;
  }

  if (*v0)
  {
    v1 = 0x6867696C68676968;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B9F7B168()
{
  result = qword_1EDC65300;
  if (!qword_1EDC65300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC65300);
  }

  return result;
}

id sub_1B9F7B1BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a4;
    v6 = sub_1BA4A6758();
    a4 = v5;
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [a1 setTitle:v7 forState:a4];

  result = [a1 window];
  if (result)
  {

    return [a1 layoutIfNeeded];
  }

  return result;
}

unint64_t sub_1B9F7B2C0()
{
  result = qword_1EDC6C508;
  if (!qword_1EDC6C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C508);
  }

  return result;
}

uint64_t sub_1B9F7B320()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI35DefaultHeaderCollectionReusableView_item;
  swift_beginAccess();
  sub_1B9F68124(v0 + v1, v6);
  if (v6[3])
  {
    sub_1B9FCD918();
    type metadata accessor for HeaderItem(0);
    if (swift_dynamicCast())
    {
      return v5;
    }

    v3 = v0;
  }

  else
  {
    v3 = v0;
    sub_1B9F7B644(v6);
  }

  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1BA4A7DF8();

  sub_1B9F68124(v3 + v1, v6);
  sub_1B9F0D598(0, &qword_1EDC6E1A0, sub_1B9FCD918, MEMORY[0x1E69E6720]);
  v4 = sub_1BA4A6828();
  MEMORY[0x1BFAF1350](v4);

  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

HealthExperienceUI::SnidgetSwiftChartViewModel::DiagramHighlight::HighlightStyle_optional __swiftcall SnidgetSwiftChartViewModel.DiagramHighlight.HighlightStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BA4A8108();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B9F7B4F4(uint64_t a1, uint64_t a2)
{
  sub_1B9F7B6A0(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B9F7B558(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1BA4A6758();
    [v2 setAccessibilityIdentifier_];

    v4 = sub_1B9F7A014();

    MEMORY[0x1BFAF1350](0x6C69617465442ELL, 0xE700000000000000);
    v5 = sub_1BA4A6758();

    [v4 setAccessibilityIdentifier_];
  }

  else
  {
    v5 = sub_1B9F7A014();
    [v5 setAccessibilityIdentifier_];
  }
}

uint64_t sub_1B9F7B644(uint64_t a1)
{
  sub_1B9F7B6F8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9F7B6A0(uint64_t a1)
{
  if (!qword_1EDC6E440)
  {
    sub_1BA4A1728();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6E440);
    }
  }
}

void sub_1B9F7B6F8(uint64_t a1)
{
  if (!qword_1EDC6E1A0)
  {
    sub_1B9FCD918();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6E1A0);
    }
  }
}

uint64_t sub_1B9F7B750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HideableDataSource<>.supplementaryItem(ofKind:at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_1B9F35348();
  v11 = *(v9 + 80);
  if (v13 == 1)
  {
    swift_beginAccess();
    v12 = *(a4 + 8);
    swift_unknownObjectRetain();
    v12(a1, a2, a3, v11, a4);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B9F7B8AC(uint64_t a1)
{
  v2 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9F7B908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B9F7B9A0()
{
  if (!qword_1EDC6B698)
  {
    v0 = sub_1BA4A6718();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B698);
    }
  }
}

uint64_t sub_1B9F7B9F8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F7B9A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PrimarySecondaryDataSource.supplementaryItem(ofKind:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v34 = *v4;
  v35 = sub_1BA4A3EA8();
  v9 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1B9F1E2C4();
  v39 = v13;
  sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
  sub_1B9F0D9AC(0, qword_1EDC648F8, &protocol descriptor for SupplementaryItemDataSource, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    sub_1B9F1134C(v36, v40);
    v14 = v41;
    v15 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    (*(v15 + 8))(a1, a2, a3, v14, v15);
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    v37 = 0;
    memset(v36, 0, sizeof(v36));
    sub_1BA1EAFD0(v36);
    sub_1BA4A3D88();
    swift_retain_n();
    v17 = sub_1BA4A3E88();
    v18 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v36[0] = v33;
      *v19 = 136315650;
      v20 = sub_1BA4A85D8();
      v22 = sub_1B9F0B82C(v20, v21, v36);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2080;
      v40[0] = sub_1B9F1E2C4();
      v40[1] = v23;
      swift_unknownObjectRetain();
      v24 = sub_1BA4A6808();
      v26 = sub_1B9F0B82C(v24, v25, v36);

      *(v19 + 14) = v26;
      *(v19 + 22) = 2080;
      v27 = PrimarySecondaryDataSource.description.getter();
      v29 = v28;

      v30 = sub_1B9F0B82C(v27, v29, v36);

      *(v19 + 24) = v30;
      _os_log_impl(&dword_1B9F07000, v17, v18, "%s asked for a supplementaryItem, but currentDataSource=%s does not conform to SupplementaryItemDataSource. %s", v19, 0x20u);
      v31 = v33;
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v31, -1, -1);
      MEMORY[0x1BFAF43A0](v19, -1, -1);
    }

    else
    {
    }

    (*(v9 + 8))(v12, v35);
    a4[3] = &type metadata for FallbackHeaderItem;
    a4[4] = sub_1BA1BA0F8();
    *a4 = swift_allocObject();
    return FallbackHeaderItem.init()();
  }
}

uint64_t sub_1B9F7BE04()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

unint64_t sub_1B9F7BE68()
{
  result = qword_1EDC652E0;
  if (!qword_1EDC652E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC652E0);
  }

  return result;
}

uint64_t SnidgetSwiftChartViewModel.AnimationConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v16 = a2;
  sub_1B9F77148(0, &qword_1EDC5DEB0, sub_1B9F7C07C, &type metadata for SnidgetSwiftChartViewModel.AnimationConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B9F7C07C();
  sub_1BA4A8528();
  if (!v2)
  {
    v10 = v16;
    v11 = sub_1BA4A8188();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *v10 = v11;
    v10[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B9F7C07C()
{
  result = qword_1EDC6C450[0];
  if (!qword_1EDC6C450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6C450);
  }

  return result;
}

unint64_t sub_1B9F7C0D4()
{
  result = qword_1EDC6C440;
  if (!qword_1EDC6C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C440);
  }

  return result;
}

unint64_t sub_1B9F7C12C()
{
  result = qword_1EDC6C448;
  if (!qword_1EDC6C448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6C448);
  }

  return result;
}

uint64_t sub_1B9F7C194(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8, a2);
  v9[5] = *v2;
  sub_1B9F63EF0(v2, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SnidgetSwiftChartView.BarChartMarks);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1B9F6307C(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SnidgetSwiftChartView.BarChartMarks);
  sub_1B9F53A5C(0);
  sub_1B9F7C3E8(0);
  sub_1B9F48334(&qword_1EDC5E6D8, sub_1B9F53A5C, MEMORY[0x1E69E6338]);
  v7 = sub_1BA4A49F8();

  v9[1] = v7;
  v9[2] = MEMORY[0x1E69815C0];
  v9[3] = MEMORY[0x1E695B228];
  v9[4] = MEMORY[0x1E6981568];
  swift_getOpaqueTypeConformance2();
  sub_1B9F48334(&qword_1EDC68E98, type metadata accessor for SwiftChartPoint, &protocol conformance descriptor for SwiftChartPoint);
  return sub_1BA4A62E8();
}

void sub_1B9F7C3E8(uint64_t a1)
{
  if (!qword_1EDC5F818)
  {
    sub_1BA4A49F8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EDC5F818);
    }
  }
}

double sub_1B9F7C508@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t sub_1B9F7C514(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_1B9F7C668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v28 = a1;
  v37 = a3;
  sub_1B9F7CB04();
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v36 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F7CBC0(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A1728();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F569EC(0, &qword_1EDC5F778, MEMORY[0x1E6969530], MEMORY[0x1E695AF60], MEMORY[0x1E695B170]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v29 = &v27 - v16;
  v17 = sub_1BA4A49F8();
  v18 = *(v17 - 8);
  v34 = v17;
  v35 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A57F8();
  v22 = type metadata accessor for SwiftChartPoint(0);
  sub_1BA4A0F88();
  v30 = type metadata accessor for SnidgetSwiftChartView.BarChartMarks(0);
  v23 = sub_1BA4A18A8();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  sub_1BA4A4978();

  sub_1B9F617A8(v9, sub_1B9F7CBC0);
  (*(v31 + 8))(v13, v32);
  sub_1BA4A57F8();
  v24 = v28;
  v38 = *(v28 + *(v22 + 24));
  sub_1BA4A4988();

  sub_1BA4A49E8();
  v38 = sub_1B9F7CBF4(v24, type metadata accessor for SnidgetSwiftChartView.BarChartMarks);
  v25 = v34;
  sub_1BA4A4918();
  return (*(v35 + 8))(v21, v25);
}

uint64_t sub_1B9F7CACC(uint64_t a1, uint64_t a2)
{
  sub_1B9F7CE88(a1, a2);

  return swift_unknownObjectRelease();
}

void sub_1B9F7CB04()
{
  if (!qword_1EDC5F770)
  {
    v0 = sub_1BA4A4998();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5F770);
    }
  }
}

uint64_t sub_1B9F7CBF4(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1B9F7B6A0(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BA4A1728();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = &v26 - v16;
  v18 = (a2)(0, v15);
  v19 = v2 + *(v18 + 20);
  v20 = type metadata accessor for SnidgetSwiftChartViewModel.DiagramHighlight(0);
  v21 = *(v19 + *(v20 + 20));
  if (v21 >= 2)
  {
    if (v21 != 2)
    {
      v22 = (v2 + *(v18 + 28));
      return *v22;
    }

    sub_1B9F63EF0(v19 + *(v20 + 24), v7, sub_1B9F7B6A0);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1B9F617A8(v7, sub_1B9F7B6A0);
    }

    else
    {
      (*(v9 + 32))(v17, v7, v8);
      type metadata accessor for SwiftChartPoint(0);
      sub_1BA4A0F88();
      v24 = sub_1BA4A16E8();
      v25 = *(v9 + 8);
      v25(v12, v8);
      v25(v17, v8);
      if (v24)
      {
        v22 = (v2 + *(v18 + 28));
        return *v22;
      }
    }
  }

  if (qword_1EDC67350 != -1)
  {
    swift_once();
  }

  v22 = &qword_1EDC84C20;
  return *v22;
}

uint64_t sub_1B9F7CE88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  return swift_unknownObjectWeakAssign();
}

uint64_t SnidgetAnimation.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[2] = a1;
  v19 = a3;
  swift_getWitnessTable();
  sub_1BA4A5978();
  v18[1] = sub_1BA4A5828();
  v5 = sub_1BA4A5418();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v18 - v12;
  if (*(v3 + *(a2 + 40)) == 1)
  {
  }

  WitnessTable = swift_getWitnessTable();
  sub_1BA4A6008();

  v15 = swift_getWitnessTable();
  v20 = WitnessTable;
  v21 = v15;
  swift_getWitnessTable();
  sub_1B9F51AA8(v9, v5, v13);
  v16 = *(v6 + 8);
  v16(v9, v5);
  sub_1B9F51AA8(v13, v5, v19);
  return (v16)(v13, v5);
}

uint64_t sub_1B9F7D204(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1B9F7E0A0(0, &qword_1EDC5ECE0, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60]);
  v64[2] = *(v2 - 8);
  v64[3] = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v64[1] = v64 - v4;
  v5 = sub_1BA4A3EA8();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v64[4] = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v69 = v64 - v10;
  v11 = sub_1BA4A40C8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = v64 - v19;
  v65 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_cellState;
  v21 = *(v12 + 16);
  v21(v64 - v19, a1, v11, v18);
  swift_getKeyPath();
  swift_getKeyPath();
  (v21)(v15, v20, v11);

  sub_1BA4A4F38();
  (*(v12 + 8))(v20, v11);
  v22 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_providedViewContext;
  v23 = v70;
  swift_beginAccess();
  v24 = v23;
  v25 = *&v23[v22];
  if (v25)
  {
    v26 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_configurationProvider;
    swift_beginAccess();
    sub_1B9F374E8(&v23[v26], &v71, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider);
    if (!v72)
    {
      return sub_1B9F4A1F4(&v71, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider, sub_1B9F0CDE8);
    }

    sub_1B9F1134C(&v71, v76);
    v27 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_currentViewModel;
    swift_beginAccess();
    sub_1B9F374E8(&v23[v27], &v71, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
    if (v72)
    {
      sub_1B9F1134C(&v71, v75);
      v28 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item;
      swift_beginAccess();
      sub_1B9F374E8(&v23[v28], &v71, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
      if (v72)
      {
        sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
        sub_1BA4A27B8();

        if (swift_dynamicCast())
        {
          v29 = v74[0];
          v31 = v77;
          v30 = v78;
          v32 = __swift_project_boxed_opaque_existential_1(v76, v77);
          v69 = v29;
          v33 = [v29 uniqueIdentifier];
          v34 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v36 = v35;

          v37 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_previousViewModel;
          swift_beginAccess();
          sub_1B9F374E8(&v24[v37], v73, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
          v38 = *&v24[v65];

          sub_1B9F7E154(&OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item, &OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_providedViewContext, &OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_currentViewModel, &v71);
          (*(v30 + 24))(v74, v34, v36, v75, v73, v25, v38, &v71, v31, v30);

          sub_1B9F4A1F4(&v71, qword_1EDC6BB70, &type metadata for ConfigurationFeedItemActionContent, MEMORY[0x1E69E6720], sub_1B9F23348);
          sub_1B9F4A1F4(v73, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel, sub_1B9F0CDE8);
          MEMORY[0x1BFAF1EF0](v74);

          __swift_destroy_boxed_opaque_existential_1(v75);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v75);
        }

        return __swift_destroy_boxed_opaque_existential_1(v76);
      }

      __swift_destroy_boxed_opaque_existential_1(v75);
      v60 = &qword_1EDC6E1A0;
      v61 = &qword_1EDC6E1B0;
      v62 = MEMORY[0x1E69A3348];
    }

    else
    {
      v60 = &qword_1EDC68F40;
      v61 = &qword_1EDC68F50;
      v62 = &protocol descriptor for PluginViewModel;
    }

    sub_1B9F4A1F4(&v71, v60, v61, v62, sub_1B9F0CDE8);
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v39 = v69;
  sub_1BA4A3DD8();
  v40 = v23;
  v41 = sub_1BA4A3E88();
  v42 = sub_1BA4A6FA8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v75[0] = v44;
    *v43 = 136315395;
    v45 = sub_1BA4A85D8();
    v47 = sub_1B9F0B82C(v45, v46, v75);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2081;
    v48 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item;
    swift_beginAccess();
    sub_1B9F374E8(&v40[v48], &v71, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v49 = v72;
    if (v72)
    {
      v50 = __swift_project_boxed_opaque_existential_1(&v71, v72);
      v70 = v64;
      v51 = v44;
      v52 = *(v49 - 8);
      v53 = MEMORY[0x1EEE9AC00](v50, v50);
      v55 = v64 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v55, v53);
      sub_1B9F4A1F4(&v71, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
      v56 = sub_1BA4A2D58();
      v58 = v57;
      (*(v52 + 8))(v55, v49);
      v44 = v51;
      v39 = v69;
    }

    else
    {
      sub_1B9F4A1F4(&v71, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
      v58 = 0x80000001BA4FACA0;
      v56 = 0xD00000000000002FLL;
    }

    v63 = sub_1B9F0B82C(v56, v58, v75);

    *(v43 + 14) = v63;
    _os_log_impl(&dword_1B9F07000, v41, v42, "[%s]: observableViewEnvironment was unexpectedly nil on %{private}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v44, -1, -1);
    MEMORY[0x1BFAF43A0](v43, -1, -1);
  }

  return (*(v67 + 8))(v39, v68);
}

void sub_1B9F7E0A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1BA4A59C8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B9F7E10C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

void sub_1B9F7E154(uint64_t *a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  swift_beginAccess();
  sub_1B9F374E8(v5 + v9, v22, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (!v23)
  {
    sub_1B9F4A1F4(v22, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
    goto LABEL_10;
  }

  sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  sub_1BA4A27B8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_9:

    goto LABEL_10;
  }

  v11 = Strong;
  v12 = *a3;
  swift_beginAccess();
  v13 = *(v5 + v12);
  if (!v13)
  {

    goto LABEL_9;
  }

  v14 = [v21 objectID];
  v15 = *a4;
  swift_beginAccess();
  sub_1B9F374E8(v5 + v15, v22, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
  v16 = [v21 actionHandlerUserData];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1BA4A1608();
    v20 = v19;
  }

  else
  {

    v18 = 0;
    v20 = 0xF000000000000000;
  }

  *(a5 + 40) = 0u;
  *(a5 + 24) = 0u;
  *(a5 + 8) = 0u;
  *(a5 + 56) = 0xF000000000000000;
  *a5 = v14;
  sub_1B9F4A184(v22, a5 + 8, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
  sub_1B9F6AC8C(*(a5 + 48), *(a5 + 56));
  *(a5 + 48) = v18;
  *(a5 + 56) = v20;
  *(a5 + 64) = v13;
  *(a5 + 72) = v11;
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI15PluginViewModel_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B9F7E438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v71 = a7;
  v70 = a6;
  v68 = a5;
  v59 = a4;
  v65 = a1;
  v66 = a2;
  v67 = a8;
  v57 = *v8;
  v10 = sub_1BA4A3EA8();
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v57 + 88);
  v63 = *(v57 + 80);
  v64 = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for ViewModelState(0, AssociatedTypeWitness, v15, v16);
  v61 = *(v17 - 8);
  v62 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v60 = &v56 - v19;
  v76 = sub_1BA4A7AA8();
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v20);
  v58 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v56 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v56 - v28;
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v56 - v37;
  sub_1B9F0A534(a3, v75);
  sub_1B9F7EABC();
  v39 = swift_dynamicCast();
  v40 = *(v30 + 56);
  if (v39)
  {
    v40(v29, 0, 1, AssociatedTypeWitness);
    (*(v30 + 32))(v38, v29, AssociatedTypeWitness);
    sub_1B9F7EB2C(v59, v75);
    sub_1B9F7ECC4(0);
    v41 = swift_dynamicCast();
    v40(v25, v41 ^ 1u, 1, AssociatedTypeWitness);
    (*(v30 + 16))(v34, v38, AssociatedTypeWitness);
    v42 = v74;
    v43 = v58;
    (*(v74 + 16))(v58, v25, v76);
    v44 = v66;

    v45 = v60;
    ViewModelState.init(id:viewModel:previousViewModel:)(v65, v44, v34, v43, AssociatedTypeWitness, v60);
    (*(v64 + 40))(v45, v68, v70, v71, v63);
    (*(v61 + 8))(v45, v62);
    (*(v30 + 8))(v38, AssociatedTypeWitness);
    return (*(v42 + 8))(v25, v76);
  }

  else
  {
    v40(v29, 1, 1, AssociatedTypeWitness);
    (*(v74 + 8))(v29, v76);
    v47 = v69;
    sub_1BA4A3E28();
    v48 = sub_1BA4A3E88();
    v49 = sub_1BA4A6FA8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v75[0] = v51;
      *v50 = 136315138;
      v52 = sub_1BA4A85D8();
      v54 = sub_1B9F0B82C(v52, v53, v75);

      *(v50 + 4) = v54;
      _os_log_impl(&dword_1B9F07000, v48, v49, "Model for %s is unable to cast to required type", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1BFAF43A0](v51, -1, -1);
      MEMORY[0x1BFAF43A0](v50, -1, -1);
    }

    (*(v72 + 8))(v47, v73);
    sub_1B9F21374();
    swift_allocError();
    *v55 = 0x8000000000000000;
    return swift_willThrow();
  }
}