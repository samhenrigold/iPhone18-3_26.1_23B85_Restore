uint64_t type metadata accessor for WidgetRendererSessionSubscriptionRequest(uint64_t a1)
{
  result = qword_1EE00B598;
  if (!qword_1EE00B598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1DAD9B67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1DAED09DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DAED0A3C();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v3[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_1DADA5B20;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_205;
  v15 = _Block_copy(aBlock);
  v16 = v3;

  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);

  return result;
}

uint64_t sub_1DAD9B970()
{

  return swift_deallocObject();
}

void sub_1DAD9B9DC(uint64_t a1)
{
  v2 = v1;
  v3 = a1 & 1;
  BSDispatchQueueAssertMain();
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
  swift_beginAccess();
  if (*(v2 + v4) != v3)
  {

    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED200C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136446466;
      *(v7 + 4) = sub_1DAD6482C(*(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), &v9);
      *(v7 + 12) = 1026;
      *(v7 + 14) = *(v2 + v4);

      _os_log_impl(&dword_1DAD61000, v5, v6, "[%{public}s] isForeground changed (%{BOOL,public}d)", v7, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    else
    {
    }

    if (*(v2 + v4) == 1)
    {
      LOBYTE(v9) = 2;
      sub_1DAD8EC1C(&v9);
    }
  }
}

double sub_1DAD9BB74@<D0>(uint64_t a1@<X8>)
{

  sub_1DADA4A88(a1);

  return result;
}

uint64_t sub_1DAD9BBC0(char a1, void *a2, char **a3, char a4, char a5, char a6)
{
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  v13 = (*(v12 + 64))(v11, v12);
  if ((a1 & 1) == 0)
  {
LABEL_8:
    v16 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v16;
    if (a4)
    {
      if (a5)
      {
        if (a6)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v16 = sub_1DAD9BF68(0, *(v16 + 2) + 1, 1, v16);
            *a3 = v16;
          }

          v23 = *(v16 + 2);
          v22 = *(v16 + 3);
          v24 = v23 + 1;
          if (v23 >= v22 >> 1)
          {
            v16 = sub_1DAD9BF68((v22 > 1), v23 + 1, 1, v16);
            *a3 = v16;
          }

          v25 = 0x80000001DAEE62D0;
          v15 = 0xD000000000000036;
          result = 1;
        }

        else
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v16 = sub_1DAD9BF68(0, *(v16 + 2) + 1, 1, v16);
            *a3 = v16;
          }

          v23 = *(v16 + 2);
          v30 = *(v16 + 3);
          v24 = v23 + 1;
          if (v23 >= v30 >> 1)
          {
            v16 = sub_1DAD9BF68((v30 > 1), v23 + 1, 1, v16);
            *a3 = v16;
          }

          result = 0;
          v25 = 0x80000001DAEE6290;
          v15 = 0xD00000000000003BLL;
        }
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = sub_1DAD9BF68(0, *(v16 + 2) + 1, 1, v16);
          *a3 = v16;
        }

        v23 = *(v16 + 2);
        v29 = *(v16 + 3);
        v24 = v23 + 1;
        if (v23 >= v29 >> 1)
        {
          v16 = sub_1DAD9BF68((v29 > 1), v23 + 1, 1, v16);
          *a3 = v16;
        }

        result = 0;
        v25 = 0x80000001DAEE6210;
        v15 = 0xD000000000000072;
      }
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_1DAD9BF68(0, *(v16 + 2) + 1, 1, v16);
        *a3 = v16;
      }

      v25 = 0xEF64656B636F6C6ELL;
      v15 = 0x752067616279654BLL;
      v23 = *(v16 + 2);
      v27 = *(v16 + 3);
      v24 = v23 + 1;
      if (v23 >= v27 >> 1)
      {
        v16 = sub_1DAD9BF68((v27 > 1), v23 + 1, 1, v16);
        result = 1;
        *a3 = v16;
      }

      else
      {
        result = 1;
      }
    }

    goto LABEL_35;
  }

  v14 = v13;
  v15 = 0xD00000000000002DLL;
  v16 = *a3;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v16;
  if (v14)
  {
    if ((v17 & 1) == 0)
    {
      v16 = sub_1DAD9BF68(0, *(v16 + 2) + 1, 1, v16);
      *a3 = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      v16 = sub_1DAD9BF68((v18 > 1), v19 + 1, 1, v16);
      *a3 = v16;
    }

    *(v16 + 2) = v19 + 1;
    v20 = &v16[16 * v19];
    *(v20 + 4) = 0xD00000000000002ELL;
    *(v20 + 5) = 0x80000001DAEE6340;
    goto LABEL_8;
  }

  if ((v17 & 1) == 0)
  {
    v16 = sub_1DAD9BF68(0, *(v16 + 2) + 1, 1, v16);
    *a3 = v16;
  }

  v23 = *(v16 + 2);
  v28 = *(v16 + 3);
  v24 = v23 + 1;
  if (v23 >= v28 >> 1)
  {
    v16 = sub_1DAD9BF68((v28 > 1), v23 + 1, 1, v16);
    *a3 = v16;
  }

  result = 0;
  v25 = 0x80000001DAEE6310;
LABEL_35:
  *(v16 + 2) = v24;
  v31 = &v16[16 * v23];
  *(v31 + 4) = v15;
  *(v31 + 5) = v25;
  return result;
}

char *sub_1DAD9BF68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08778, &qword_1DAED71B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1DAD9C074()
{
  v1 = *(*v0 + 16);
  v2 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1DAD9C0C0()
{
  v1 = *(*v0 + 16);
  v2 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersPlaceholderContent;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1DAD9C130()
{
  v1 = sub_1DAECE21C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  sub_1DAD648F8(v5 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__dataProtectionMonitor, v9);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v6 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_1DAED128C();
  (*(v2 + 8))(v4, v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

uint64_t sub_1DAD9C28C@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1DAED18CC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAD648F8(*v2 + OBJC_IVAR____TtC14WidgetRenderer31DataProtectionSuspensionMonitor_innerProtectionMonitor, v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1DAED128C();
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  sub_1DAD669E8(v7, a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DAD9C3C0()
{
  sub_1DAD648F8(*(*v0 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v3 = *(v2 + 16);

  v4 = v3(v1, v2);
  sub_1DAED0B9C();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_1DAD9C494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A7F8, &qword_1DAEDEBA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DAD6495C(a1, v8, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1DAD64398(v8, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
  }

  else
  {
    sub_1DADB23E8(v8, v12, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
    swift_beginAccess();
    v13 = *(a2 + 32);
    if (*(v13 + 16))
    {

      v14 = sub_1DADB9EB8(v12);
      if (v15)
      {
        v16 = v14;
        v17 = *(v13 + 56);
        v18 = sub_1DAED19AC();
        v19 = *(v18 - 8);
        (*(v19 + 16))(a3, v17 + *(v19 + 72) * v16, v18);
        sub_1DADB2450(v12, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);

        return (*(v19 + 56))(a3, 0, 1, v18);
      }
    }

    sub_1DADB2450(v12, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
  }

  v21 = sub_1DAED19AC();
  return (*(*(v21 - 8) + 56))(a3, 1, 1, v21);
}

double sub_1DAD9C7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  BSDispatchQueueAssert();
  v8 = *(a1 + 16);
  v9 = *&v3[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v9 + 16));
  v10 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v11 = *&v3[v10];
  if ((v11 & 0xC000000000000001) == 0)
  {

LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *&v4[v10];
    sub_1DADA5B4C(a1, v8, isUniquelyReferenced_nonNull_native);
    *&v4[v10] = v32;
    swift_endAccess();
    os_unfair_lock_unlock(*(v9 + 16));
    sub_1DAECDAFC();
    swift_allocObject();
    sub_1DAECDAEC();
    v31[0] = a1;
    type metadata accessor for WidgetRendererSessionSubscriptionRequest(0);
    sub_1DAD649C4(&unk_1EE0081F8, 255, type metadata accessor for WidgetRendererSessionSubscriptionRequest, &protocol conformance descriptor for WidgetRendererSessionSubscriptionRequest);
    v10 = sub_1DAECDADC();
    v9 = v15;

    if (qword_1EE005E90 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v11 < 0)
  {
    v12 = *&v3[v10];
  }

  else
  {
    v12 = v11 & 0xFFFFFFFFFFFFFF8;
  }

  v13 = sub_1DAED247C();
  if (!__OFADD__(v13, 1))
  {
    *&v4[v10] = sub_1DAEB99AC(v12, v13 + 1);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v16 = sub_1DAECEDEC();
  __swift_project_value_buffer(v16, qword_1EE0117F0);
  v17 = v8;
  v18 = sub_1DAECEDCC();
  v19 = sub_1DAED203C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&dword_1DAD61000, v18, v19, "Subscribing to session: %{public}@", v20, 0xCu);
    sub_1DAD64398(v21, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v21, -1, -1);
    MEMORY[0x1E127F100](v20, -1, -1);
  }

  v23 = sub_1DAD6F45C();
  if (!v23)
  {
    return sub_1DAD70BB4(v10, v9);
  }

  v24 = v23;
  v25 = sub_1DAECDC0C();
  v26 = swift_allocObject();
  v26[2] = v4;
  v26[3] = v17;
  v26[4] = a2;
  v26[5] = a3;
  v31[4] = sub_1DADAF564;
  v31[5] = v26;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 1107296256;
  v31[2] = sub_1DADAF8A8;
  v31[3] = &block_descriptor_199_0;
  v27 = _Block_copy(v31);
  v28 = v17;
  v29 = v4;

  [v24 subscribe:v25 completion:v27];
  sub_1DAD70BB4(v10, v9);
  swift_unknownObjectRelease();
  _Block_release(v27);

  return result;
}

uint64_t sub_1DAD9CC40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
  v5 = sub_1DAECEDEC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DAD9CCC0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *v2;
  BSDispatchQueueAssertMain();
  sub_1DAD648F8(*(v5 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v7);
  sub_1DAD9CD3C(v7, a1, a2);
  return sub_1DAD64398(v7, &unk_1ECC07D90, &unk_1DAED5840);
}

uint64_t sub_1DAD9CD3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v311 = a2;
  v317 = sub_1DAECEDEC();
  v316 = *(v317 - 8);
  MEMORY[0x1EEE9AC00](v317);
  v298 = &v289 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v297 = &v289 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v305 = &v289 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v290 = &v289 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v296 = &v289 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v295 = &v289 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v306 = &v289 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v291 = &v289 - v20;
  v301 = sub_1DAED157C();
  v302 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301);
  v293 = &v289 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v294 = &v289 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D8, &qword_1DAED72D0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v289 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v289 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v289 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v292 = &v289 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v289 - v36;
  v313 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v312 = *(v313 - 1);
  MEMORY[0x1EEE9AC00](v313);
  v300 = &v289 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v304 = &v289 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v299 = &v289 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v303 = &v289 - v44;
  v45 = sub_1DAED167C();
  MEMORY[0x1EEE9AC00](v45 - 8);
  v309 = &v289 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_1DAED15DC();
  v321 = *(v320 - 8);
  MEMORY[0x1EEE9AC00](v320);
  v48 = &v289 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v289 - v50;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v289 - v53;
  v314 = sub_1DAECF8EC();
  v315 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314);
  v318 = &v289 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v56);
  v310 = &v289 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v319 = &v289 - v59;
  sub_1DAD6495C(a1, &v324, &unk_1ECC07D90, &unk_1DAED5840);
  if (!v325)
  {
    sub_1DAD64398(&v324, &unk_1ECC07D90, &unk_1DAED5840);
    v68 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
    return (*(*(v68 - 8) + 56))(a3, 1, 1, v68);
  }

  v307 = a3;
  sub_1DAD657D8(&v324, &v326);
  v60 = *(v3 + 16);
  v61 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v62 = [*(v60 + v61) renderingMode];
  v308 = v3;
  v63 = *(v3 + 16);
  v64 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  if ((v62 - 1) > 1)
  {
    swift_beginAccess();
    v70 = *(v63 + v64);
    v71 = v317;
    if (v70)
    {

      v72 = v70;
      v73 = sub_1DAD998A4();

      v74 = v308;
      if (v73)
      {
        v319 = v73;
      }

      else
      {
        type metadata accessor for TintedWidgetViewModel(0);
        v164 = swift_allocObject();
        swift_beginAccess();
        v323 = v72;
        sub_1DAD674D4(0, &qword_1EE00AA18, 0x1E6994428);
        v165 = v72;
        v319 = v164;
        sub_1DAECEEFC();
        swift_endAccess();
      }

      v166 = v318;
      (*(v315 + 16))(v318, v311, v314);
      sub_1DAED166C();
      v167 = *(v74 + 16);
      v168 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
      swift_beginAccess();
      [*(v167 + v168) backgroundViewPolicy];
      sub_1DAED15BC();
      sub_1DAECF72C();
      sub_1DAD9F338(&v326, v166, v29);
      v169 = (*(v312 + 48))(v29, 1, v313);
      v310 = v72;
      if (v169 == 1)
      {
        sub_1DAD64398(v29, &qword_1ECC088D8, &qword_1DAED72D0);
      }

      else
      {
        v170 = v304;
        sub_1DADB62CC(v29, v304, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
        v171 = v327;
        v172 = v328;
        __swift_project_boxed_opaque_existential_1(&v326, v327);
        v173 = (*(v172 + 16))(v171, v172);
        sub_1DAED0C5C();

        v174 = v325;
        if (v325)
        {
          v175 = v71;
          v176 = __swift_project_boxed_opaque_existential_1(&v324, v325);
          v177 = *(v174 - 8);
          v178 = MEMORY[0x1EEE9AC00](v176);
          v180 = &v289 - ((v179 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v177 + 16))(v180, v178);
          sub_1DAD64398(&v324, &unk_1ECC08880, &unk_1DAED6F50);
          v181 = v293;
          sub_1DAED19FC();
          (*(v177 + 8))(v180, v174);
          swift_getKeyPath();
          v182 = sub_1DAED150C();

          result = (*(v302 + 8))(v181, v301);
          if (v182)
          {
            v311 = &v289;
            v183 = 0;
            v184 = *(v182 + 16);
            do
            {
              if (v184 == v183)
              {

                sub_1DADB6334(v304, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
                v71 = v317;
                goto LABEL_60;
              }

              if (v183 >= *(v182 + 16))
              {
LABEL_76:
                __break(1u);
                return result;
              }

              v185 = v321;
              v186 = v320;
              (*(v321 + 16))(v48, v182 + ((*(v185 + 80) + 32) & ~*(v185 + 80)) + *(v185 + 72) * v183++, v320);
              sub_1DAECF71C();
              v187 = sub_1DAED15CC();
              v188 = *(v185 + 8);
              v188(v54, v186);
              result = (v188)(v48, v186);
            }

            while ((v187 & 1) == 0);

            v189 = v308;
            v190 = v316;
            v191 = v290;
            v192 = v317;
            (*(v316 + 16))(v290, *(v308 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v317);

            v193 = sub_1DAECEDCC();
            v194 = sub_1DAED200C();

            if (os_log_type_enabled(v193, v194))
            {
              v195 = swift_slowAlloc();
              v196 = swift_slowAlloc();
              v197 = swift_slowAlloc();
              v322 = v197;
              *v195 = 136446466;
              v198 = (*(v189 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
              v199 = *v198;
              v200 = v198[1];

              v201 = sub_1DAD6482C(v199, v200, &v322);

              *(v195 + 4) = v201;
              *(v195 + 12) = 2114;
              v202 = *(v189 + 16);
              v203 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
              swift_beginAccess();
              v204 = *(v202 + v203);
              *(v195 + 14) = v204;
              *v196 = v204;
              v205 = v204;
              _os_log_impl(&dword_1DAD61000, v193, v194, "[%{public}s] SELECTING tinted fullColor (%{public}@)", v195, 0x16u);
              sub_1DAD64398(v196, &qword_1ECC07CF0, &qword_1DAED57A0);
              MEMORY[0x1E127F100](v196, -1, -1);
              __swift_destroy_boxed_opaque_existential_1Tm(v197);
              MEMORY[0x1E127F100](v197, -1, -1);
              MEMORY[0x1E127F100](v195, -1, -1);

              (*(v190 + 8))(v290, v192);
            }

            else
            {

              (*(v190 + 8))(v191, v192);
            }

            (*(v315 + 8))(v318, v314);
            v280 = v307;
            v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
            v286 = *(v285 + 48);
            v287 = *(v285 + 64);
            *v280 = v319;
            v288 = v304;
            sub_1DADB6264(v304, &v280[v286], type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
            sub_1DADB62CC(v288, &v280[v287], type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
            (*(v312 + 56))(&v280[v287], 0, 1, v313);
LABEL_71:
            v240 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
            swift_storeEnumTagMultiPayload();
            v238 = *(*(v240 - 8) + 56);
            v239 = v280;
            goto LABEL_72;
          }

          sub_1DADB6334(v170, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
          v74 = v308;
          v71 = v175;
        }

        else
        {
          sub_1DADB6334(v170, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
          sub_1DAD64398(&v324, &unk_1ECC08880, &unk_1DAED6F50);
LABEL_60:
          v74 = v308;
        }
      }

      v260 = v305;
      (*(v316 + 16))(v305, *(v74 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v71);

      v261 = sub_1DAECEDCC();
      v262 = v71;
      v263 = sub_1DAED200C();

      if (os_log_type_enabled(v261, v263))
      {
        v264 = swift_slowAlloc();
        v265 = swift_slowAlloc();
        v266 = v316;
        v267 = v265;
        v268 = swift_slowAlloc();
        v322 = v268;
        *v264 = 136446466;
        v269 = (*(v74 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
        v270 = *v269;
        v271 = v269[1];

        v272 = sub_1DAD6482C(v270, v271, &v322);

        *(v264 + 4) = v272;
        *(v264 + 12) = 2114;
        v273 = *(v74 + 16);
        v274 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
        swift_beginAccess();
        v275 = *(v273 + v274);
        *(v264 + 14) = v275;
        *v267 = v275;
        v276 = v275;
        _os_log_impl(&dword_1DAD61000, v261, v263, "[%{public}s] SELECTING tinted fullColor - NIL (%{public}@)", v264, 0x16u);
        sub_1DAD64398(v267, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v267, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v268);
        MEMORY[0x1E127F100](v268, -1, -1);
        MEMORY[0x1E127F100](v264, -1, -1);

        (*(v266 + 8))(v260, v317);
      }

      else
      {

        (*(v316 + 8))(v260, v262);
      }

      (*(v315 + 8))(v318, v314);
      goto LABEL_65;
    }

    v95 = v308;
    sub_1DAD9F338(&v326, v311, v26);
    v96 = (*(v312 + 48))(v26, 1, v313);
    v97 = v316;
    v98 = (v316 + 16);
    v99 = v307;
    if (v96 == 1)
    {
      sub_1DAD64398(v26, &qword_1ECC088D8, &qword_1DAED72D0);
      v100 = v298;
      (*v98)(v298, *(v95 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v71);

      v101 = sub_1DAECEDCC();
      v102 = v71;
      v103 = sub_1DAED200C();

      if (os_log_type_enabled(v101, v103))
      {
        v104 = swift_slowAlloc();
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v323 = v106;
        *v104 = 136446466;
        v107 = (*(v95 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
        v108 = *v107;
        v109 = v107[1];

        v110 = sub_1DAD6482C(v108, v109, &v323);

        *(v104 + 4) = v110;
        *(v104 + 12) = 2114;
        v111 = *(v95 + 16);
        v112 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
        swift_beginAccess();
        v113 = *(v111 + v112);
        *(v104 + 14) = v113;
        *v105 = v113;
        v114 = v113;
        _os_log_impl(&dword_1DAD61000, v101, v103, "[%{public}s] SELECTING raw - NIL (%{public}@)", v104, 0x16u);
        sub_1DAD64398(v105, &qword_1ECC07CF0, &qword_1DAED57A0);
        v115 = v105;
        v99 = v307;
        MEMORY[0x1E127F100](v115, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v106);
        MEMORY[0x1E127F100](v106, -1, -1);
        MEMORY[0x1E127F100](v104, -1, -1);

        (*(v97 + 8))(v298, v102);
      }

      else
      {

        (*(v97 + 8))(v100, v102);
      }

      v237 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
      v238 = *(*(v237 - 8) + 56);
      v239 = v99;
      goto LABEL_66;
    }

    sub_1DADB62CC(v26, v300, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v221 = v297;
    (*v98)(v297, *(v95 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v71);

    v222 = sub_1DAECEDCC();
    v223 = v71;
    v224 = sub_1DAED200C();

    if (os_log_type_enabled(v222, v224))
    {
      v225 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v227 = swift_slowAlloc();
      v323 = v227;
      *v225 = 136446466;
      v228 = (*(v95 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v229 = *v228;
      v230 = v228[1];

      v231 = sub_1DAD6482C(v229, v230, &v323);

      *(v225 + 4) = v231;
      *(v225 + 12) = 2114;
      v232 = *(v95 + 16);
      v233 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
      swift_beginAccess();
      v234 = *(v232 + v233);
      *(v225 + 14) = v234;
      *v226 = v234;
      v235 = v234;
      _os_log_impl(&dword_1DAD61000, v222, v224, "[%{public}s] SELECTING raw (%{public}@)", v225, 0x16u);
      sub_1DAD64398(v226, &qword_1ECC07CF0, &qword_1DAED57A0);
      v236 = v226;
      v99 = v307;
      MEMORY[0x1E127F100](v236, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v227);
      MEMORY[0x1E127F100](v227, -1, -1);
      MEMORY[0x1E127F100](v225, -1, -1);

      (*(v97 + 8))(v297, v223);
    }

    else
    {

      (*(v97 + 8))(v221, v223);
    }

    sub_1DADB62CC(v300, v99, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v240 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
    swift_storeEnumTagMultiPayload();
    v238 = *(*(v240 - 8) + 56);
    v239 = v99;
LABEL_72:
    v278 = 0;
    v237 = v240;
    goto LABEL_73;
  }

  swift_beginAccess();
  v65 = *(v63 + v64);
  if (!v65)
  {
    v75 = v308;
    sub_1DAD9F338(&v326, v311, v32);
    v76 = (*(v312 + 48))(v32, 1, v313);
    v77 = v316;
    v78 = (v316 + 16);
    v79 = v307;
    if (v76 == 1)
    {
      sub_1DAD64398(v32, &qword_1ECC088D8, &qword_1DAED72D0);
      v80 = v296;
      v81 = v317;
      (*v78)(v296, *(v75 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v317);

      v82 = sub_1DAECEDCC();
      v83 = sub_1DAED200C();

      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v323 = v86;
        *v84 = 136446466;
        v87 = (*(v75 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
        v88 = *v87;
        v89 = v87[1];

        v90 = sub_1DAD6482C(v88, v89, &v323);

        *(v84 + 4) = v90;
        *(v84 + 12) = 2114;
        v91 = *(v75 + 16);
        v92 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
        swift_beginAccess();
        v93 = *(v91 + v92);
        *(v84 + 14) = v93;
        *v85 = v93;
        v94 = v93;
        _os_log_impl(&dword_1DAD61000, v82, v83, "[%{public}s] SELECTING raw - NIL (%{public}@)", v84, 0x16u);
        sub_1DAD64398(v85, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v85, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v86);
        MEMORY[0x1E127F100](v86, -1, -1);
        MEMORY[0x1E127F100](v84, -1, -1);

        (*(v77 + 8))(v296, v317);
      }

      else
      {

        (*(v77 + 8))(v80, v81);
      }

      v237 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
      v238 = *(*(v237 - 8) + 56);
      v239 = v79;
      goto LABEL_66;
    }

    sub_1DADB62CC(v32, v299, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v206 = v295;
    v207 = v317;
    (*v78)(v295, *(v75 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v317);

    v208 = sub_1DAECEDCC();
    v209 = sub_1DAED200C();

    if (os_log_type_enabled(v208, v209))
    {
      v210 = swift_slowAlloc();
      v211 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v323 = v212;
      *v210 = 136446466;
      v213 = (*(v75 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v214 = *v213;
      v215 = v213[1];

      v216 = sub_1DAD6482C(v214, v215, &v323);

      *(v210 + 4) = v216;
      *(v210 + 12) = 2114;
      v217 = *(v75 + 16);
      v218 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
      swift_beginAccess();
      v219 = *(v217 + v218);
      *(v210 + 14) = v219;
      *v211 = v219;
      v220 = v219;
      _os_log_impl(&dword_1DAD61000, v208, v209, "[%{public}s] SELECTING raw (%{public}@)", v210, 0x16u);
      sub_1DAD64398(v211, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v211, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v212);
      MEMORY[0x1E127F100](v212, -1, -1);
      MEMORY[0x1E127F100](v210, -1, -1);

      (*(v77 + 8))(v295, v317);
    }

    else
    {

      (*(v77 + 8))(v206, v207);
    }

    sub_1DADB62CC(v299, v79, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v240 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
    swift_storeEnumTagMultiPayload();
    v238 = *(*(v240 - 8) + 56);
    v239 = v79;
    goto LABEL_72;
  }

  v66 = v65;
  v67 = sub_1DAD998A4();

  if (v67)
  {
    v318 = v67;
  }

  else
  {
    type metadata accessor for TintedWidgetViewModel(0);
    v116 = swift_allocObject();
    swift_beginAccess();
    v323 = v66;
    sub_1DAD674D4(0, &qword_1EE00AA18, 0x1E6994428);
    v117 = v66;
    v318 = v116;
    sub_1DAECEEFC();
    swift_endAccess();
  }

  v118 = *(v315 + 16);
  v119 = v319;
  v120 = v311;
  v121 = v314;
  v118(v319, v311, v314);
  v305 = v66;
  [v66 accentedAlternateBackground];
  sub_1DAECF82C();
  v118(v310, v120, v121);
  sub_1DAED166C();
  v122 = v308;
  v123 = *(v308 + 16);
  v124 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  [*(v123 + v124) backgroundViewPolicy];
  sub_1DAED15BC();
  v125 = v122;
  sub_1DAECF72C();
  sub_1DAD9F338(&v326, v119, v37);
  if ((*(v312 + 48))(v37, 1, v313) != 1)
  {
    v126 = v303;
    sub_1DADB62CC(v37, v303, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v127 = v327;
    v128 = v328;
    __swift_project_boxed_opaque_existential_1(&v326, v327);
    v129 = (*(v128 + 16))(v127, v128);
    sub_1DAED0C5C();

    v130 = v325;
    if (!v325)
    {
      sub_1DADB6334(v126, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      sub_1DAD64398(&v324, &unk_1ECC08880, &unk_1DAED6F50);
      goto LABEL_55;
    }

    v131 = __swift_project_boxed_opaque_existential_1(&v324, v325);
    v132 = *(v130 - 8);
    v133 = MEMORY[0x1EEE9AC00](v131);
    v135 = &v289 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v132 + 16))(v135, v133);
    sub_1DAD64398(&v324, &unk_1ECC08880, &unk_1DAED6F50);
    v136 = v294;
    sub_1DAED19FC();
    (*(v132 + 8))(v135, v130);
    swift_getKeyPath();
    v137 = sub_1DAED150C();

    result = (*(v302 + 8))(v136, v301);
    if (!v137)
    {
      sub_1DADB6334(v126, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      goto LABEL_55;
    }

    v313 = &v289;
    v138 = 0;
    v139 = *(v137 + 16);
    do
    {
      if (v139 == v138)
      {

        sub_1DADB6334(v303, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
        v125 = v308;
        goto LABEL_55;
      }

      if (v138 >= *(v137 + 16))
      {
        __break(1u);
        goto LABEL_76;
      }

      v140 = v321;
      v141 = v320;
      (*(v321 + 16))(v51, v137 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v138++, v320);
      sub_1DAECF71C();
      v142 = sub_1DAED15CC();
      v143 = *(v140 + 8);
      v143(v54, v141);
      result = (v143)(v51, v141);
    }

    while ((v142 & 1) == 0);

    v144 = v310;
    v145 = v308;
    sub_1DAD9F338(&v326, v310, v292);
    v146 = v316;
    v147 = v291;
    v148 = v317;
    (*(v316 + 16))(v291, *(v145 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v317);

    v149 = sub_1DAECEDCC();
    v150 = sub_1DAED200C();

    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v322 = v153;
      *v151 = 136446466;
      v154 = (*(v145 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
      v155 = *v154;
      v156 = v154[1];

      v157 = sub_1DAD6482C(v155, v156, &v322);

      *(v151 + 4) = v157;
      *(v151 + 12) = 2114;
      v158 = *(v145 + 16);
      v159 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
      swift_beginAccess();
      v160 = *(v158 + v159);
      *(v151 + 14) = v160;
      *v152 = v160;
      v161 = v160;
      _os_log_impl(&dword_1DAD61000, v149, v150, "[%{public}s] SELECTING tinted (%{public}@)", v151, 0x16u);
      sub_1DAD64398(v152, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v152, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v153);
      MEMORY[0x1E127F100](v153, -1, -1);
      MEMORY[0x1E127F100](v151, -1, -1);

      (*(v146 + 8))(v291, v148);
      v162 = *(v315 + 8);
      v163 = v310;
    }

    else
    {

      (*(v146 + 8))(v147, v148);
      v162 = *(v315 + 8);
      v163 = v144;
    }

    v279 = v314;
    v162(v163, v314);
    v162(v319, v279);
    v280 = v307;
    v281 = v303;
    v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v283 = *(v282 + 48);
    v284 = *(v282 + 64);
    *v280 = v318;
    sub_1DADB62CC(v281, &v280[v283], type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAD7C48C(v292, &v280[v284], &qword_1ECC088D8, &qword_1DAED72D0);
    goto LABEL_71;
  }

  sub_1DAD64398(v37, &qword_1ECC088D8, &qword_1DAED72D0);
LABEL_55:
  v241 = v316;
  v242 = v306;
  v243 = v317;
  (*(v316 + 16))(v306, *(v125 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger, v317);

  v244 = sub_1DAECEDCC();
  v245 = sub_1DAED200C();

  if (os_log_type_enabled(v244, v245))
  {
    v246 = swift_slowAlloc();
    v247 = swift_slowAlloc();
    v248 = swift_slowAlloc();
    v322 = v248;
    *v246 = 136446466;
    v249 = (*(v125 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);
    v250 = v125;
    v251 = *v249;
    v252 = v249[1];

    v253 = sub_1DAD6482C(v251, v252, &v322);

    *(v246 + 4) = v253;
    *(v246 + 12) = 2114;
    v254 = *(v250 + 16);
    v255 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
    swift_beginAccess();
    v256 = *(v254 + v255);
    *(v246 + 14) = v256;
    *v247 = v256;
    v257 = v256;
    _os_log_impl(&dword_1DAD61000, v244, v245, "[%{public}s] SELECTING tinted - NIL (%{public}@)", v246, 0x16u);
    sub_1DAD64398(v247, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v247, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v248);
    MEMORY[0x1E127F100](v248, -1, -1);
    MEMORY[0x1E127F100](v246, -1, -1);

    (*(v241 + 8))(v306, v243);
  }

  else
  {

    (*(v241 + 8))(v242, v243);
  }

  v258 = *(v315 + 8);
  v259 = v314;
  v258(v310, v314);
  v258(v319, v259);
LABEL_65:
  v277 = v307;
  v237 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  v238 = *(*(v237 - 8) + 56);
  v239 = v277;
LABEL_66:
  v278 = 1;
LABEL_73:
  v238(v239, v278, 1, v237);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v326);
}

uint64_t sub_1DAD9F338@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v149 = a1;
  v151 = a3;
  v145 = sub_1DAED0DDC();
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v143 = &v123 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A628, &unk_1DAEDE770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v129 = &v123 - v6;
  v128 = type metadata accessor for InlineTextView(0);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v132 = &v123 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D0, &qword_1DAEDE260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v126 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v133 = &v123 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A680, &unk_1DAED72C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v134 = &v123 - v15;
  v137 = sub_1DAECFF0C();
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v131 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1DAED149C();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v123 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v139 = &v123 - v19;
  v150 = sub_1DAED19AC();
  v154 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v147 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v123 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B0, &qword_1DAEDE780);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v148 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v125 = &v123 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v123 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v156 = &v123 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v123 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v123 - v40;
  v42 = sub_1DAECDCEC();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v130 = &v123 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v138 = &v123 - v46;
  v47 = sub_1DAECF8EC();
  v153 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v123 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1DAECF4BC();
  v51 = &_serverStartupToken[892];
  v152 = a2;
  v146 = v47;
  if (v50)
  {
    v124 = v30;
    v123 = v38;
    v135 = v23;
    v52 = v153;
    (*(v153 + 16))(v49, a2, v47);
    sub_1DAECF4CC();
    v53 = *(v155 + 16);
    v54 = v47;
    v55 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_overrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v53 + v55, v41, &qword_1ECC07CE8, &qword_1DAED6F60);
    if ((*(v43 + 48))(v41, 1, v42) == 1)
    {
      (*(v52 + 8))(v49, v54);
      sub_1DAD64398(v41, &qword_1ECC07CE8, &qword_1DAED6F60);
      v23 = v135;
      v51 = _serverStartupToken + 3568;
      v30 = v124;
    }

    else
    {
      v56 = v138;
      (*(v43 + 32))(v138, v41, v42);
      v58 = *(v149 + 3);
      v57 = *(v149 + 4);
      __swift_project_boxed_opaque_existential_1(v149, v58);
      v59 = (*(v57 + 16))(v58, v57);
      (*(v43 + 16))(v35, v56, v42);
      v60 = *(v43 + 56);
      v60(v35, 0, 1, v42);
      sub_1DAED0B5C();

      sub_1DAD64398(v35, &qword_1ECC07CE8, &qword_1DAED6F60);
      if (v160)
      {
        __swift_project_boxed_opaque_existential_1(&v159, v160);
        v61 = v123;
        sub_1DAED177C();
        v60(v61, 0, 1, v42);
        __swift_destroy_boxed_opaque_existential_1Tm(&v159);
      }

      else
      {
        sub_1DAD64398(&v159, &unk_1ECC07DE0, &qword_1DAEDBED0);
        v61 = v123;
        v60(v123, 1, 1, v42);
      }

      v23 = v135;
      v30 = v124;

      sub_1DAEAFEE8(v149, v49, v61);

      sub_1DAD64398(v61, &qword_1ECC07CE8, &qword_1DAED6F60);
      (*(v43 + 8))(v138, v42);
      (*(v153 + 8))(v49, v146);
      v51 = &_serverStartupToken[892];
    }
  }

  v62 = v155;
  v63 = *(v155 + 16);
  v64 = *(v51 + 347);
  swift_beginAccess();
  v65 = v63 + v64;
  v66 = v152;
  sub_1DAD6495C(v65, v35, &qword_1ECC07CE8, &qword_1DAED6F60);

  v67 = v156;
  sub_1DADA06DC(v149, v66, v35, v156);

  sub_1DAD64398(v35, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD6495C(v67, v30, &qword_1ECC080B0, &qword_1DAEDE780);
  v68 = v154;
  v69 = *(v154 + 48);
  v70 = v150;
  if ((v69)(v30, 1, v150) == 1)
  {
    sub_1DAD64398(v30, &qword_1ECC080B0, &qword_1DAEDE780);
    v71 = v156;
    v72 = v148;
    v73 = v153;
    goto LABEL_19;
  }

  v149 = v69;
  (*(v68 + 32))(v23, v30, v70);
  sub_1DAD648F8(*(v62 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v159);
  v74 = v68;
  v75 = v160;
  v76 = v161;
  __swift_project_boxed_opaque_existential_1(&v159, v160);
  v77 = (*(v76 + 16))(v75, v76);
  v78 = v139;
  sub_1DAED0C4C();

  v79 = v141;
  v80 = v140;
  v81 = v142;
  (*(v141 + 104))(v140, *MEMORY[0x1E69856B8], v142);
  sub_1DAD900EC(&qword_1EE005748, MEMORY[0x1E69856C0], MEMORY[0x1E69856C8]);
  sub_1DAED1E4C();
  sub_1DAED1E4C();
  v82 = *(v79 + 8);
  v82(v80, v81);
  v82(v78, v81);
  v83 = v157;
  v84 = v158;
  __swift_destroy_boxed_opaque_existential_1Tm(&v159);
  v72 = v148;
  if (v83 == v84)
  {
    v85 = v133;
    sub_1DAED194C();
    v86 = sub_1DAED165C();
    v87 = *(v86 - 8);
    if ((*(v87 + 48))(v85, 1, v86) == 1)
    {
      v68 = v154;
      (*(v154 + 8))(v23, v70);
      sub_1DAD64398(v85, &qword_1ECC088D0, &qword_1DAEDE260);
      v88 = v134;
      (*(v136 + 56))(v134, 1, 1, v137);
      v62 = v155;
      v71 = v156;
      v73 = v153;
    }

    else
    {
      v135 = v23;
      v89 = v85;
      v88 = v134;
      sub_1DAED160C();
      (*(v87 + 8))(v89, v86);
      v90 = v136;
      v91 = v137;
      v92 = (*(v136 + 48))(v88, 1, v137);
      v62 = v155;
      v71 = v156;
      if (v92 != 1)
      {
        (*(v90 + 32))(v131, v88, v91);
        v93 = v132;
        (*(v90 + 16))();
        v94 = *(v62 + 16);
        v95 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
        swift_beginAccess();
        v96 = *(v94 + v95);
        v97 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
        v98 = v128;
        v99 = *(v128 + 24);
        v100 = sub_1DAECEDEC();
        (*(*(v100 - 8) + 16))(v93 + v99, v94 + v97, v100);
        *(v93 + *(v98 + 20)) = v96;
        v101 = v96;
        v102 = v135;
        sub_1DAED195C();
        sub_1DADB6264(v93, v127, type metadata accessor for InlineTextView);
        sub_1DAD900EC(&qword_1EE007CF0, type metadata accessor for InlineTextView, &unk_1DAED9950);
        sub_1DAED087C();
        sub_1DAED199C();
        sub_1DAED194C();
        v103 = v125;
        sub_1DAED196C();
        v72 = v148;
        sub_1DADB6334(v132, type metadata accessor for InlineTextView);
        (*(v136 + 8))(v131, v137);
        v68 = v154;
        (*(v154 + 8))(v102, v70);
        sub_1DAD64398(v71, &qword_1ECC080B0, &qword_1DAEDE780);
        (*(v68 + 56))(v103, 0, 1, v70);
        sub_1DAD7C48C(v103, v71, &qword_1ECC080B0, &qword_1DAEDE780);
        v73 = v153;
        goto LABEL_18;
      }

      v68 = v154;
      (*(v154 + 8))(v135, v70);
      v73 = v153;
    }

    sub_1DAD64398(v88, &unk_1ECC0A680, &unk_1DAED72C0);
  }

  else
  {
    (*(v74 + 8))(v23, v70);
    v68 = v74;
    v62 = v155;
    v71 = v156;
    v73 = v153;
  }

LABEL_18:
  v69 = v149;
LABEL_19:
  sub_1DAD6495C(v71, v72, &qword_1ECC080B0, &qword_1DAEDE780);
  if ((v69)(v72, 1, v70) == 1)
  {
    sub_1DAD64398(v71, &qword_1ECC080B0, &qword_1DAEDE780);
    sub_1DAD64398(v72, &qword_1ECC080B0, &qword_1DAEDE780);
    v104 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
    return (*(*(v104 - 8) + 56))(v151, 1, 1, v104);
  }

  else
  {
    v106 = v147;
    (*(v68 + 32))(v147, v72, v70);
    v107 = v151;
    (*(v73 + 16))();
    v155 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
    (*(v68 + 16))(v107 + *(v155 + 20), v106, v70);
    sub_1DAD648F8(*(v62 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v159);
    v108 = v160;
    v109 = v161;
    __swift_project_boxed_opaque_existential_1(&v159, v160);
    v110 = v62;
    v111 = *(v109 + 16);

    v112 = v111(v108, v109);
    v113 = v143;
    sub_1DAED0C3C();

    v153 = sub_1DAED0DBC();

    v114 = *(v144 + 8);
    v115 = v145;
    v114(v113, v145);
    __swift_destroy_boxed_opaque_existential_1Tm(&v159);
    sub_1DAD648F8(*(v110 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v159);
    v116 = v160;
    v117 = v161;
    __swift_project_boxed_opaque_existential_1(&v159, v160);
    v118 = *(v117 + 16);

    v119 = v118(v116, v117);
    sub_1DAED0C3C();

    v120 = sub_1DAED0DCC();

    v114(v113, v115);
    (*(v154 + 8))(v147, v150);
    sub_1DAD64398(v156, &qword_1ECC080B0, &qword_1DAEDE780);
    __swift_destroy_boxed_opaque_existential_1Tm(&v159);
    v121 = v155;
    v122 = v151;
    *(v151 + *(v155 + 24)) = v153;
    *(v122 + *(v121 + 28)) = v120;
    return (*(*(v121 - 8) + 56))(v122, 0, 1, v121);
  }
}

uint64_t sub_1DADA06DC@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a4;
  v88 = a3;
  v6 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v73 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v74 = (&v73 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B0, &qword_1DAEDE780);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v75 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v73 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v73 - v19;
  v20 = sub_1DAECF8EC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v73 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A990, &qword_1DAEDE2D0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v73 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A7F8, &qword_1DAEDEBA8);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v81 = &v73 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v80 = &v73 - v35;
  v37 = MEMORY[0x1EEE9AC00](v36);
  v90 = &v73 - v38;
  v39 = *(v21 + 16);
  v82 = a2;
  v78 = v39;
  (v39)(v31, a2, v20, v37);
  (*(v21 + 56))(v31, 0, 1, v20);
  v40 = a1[3];
  v41 = a1[4];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v40);
  v42 = (*(v41 + 16))(v40, v41);
  sub_1DAED0B5C();

  if (!v94)
  {
    sub_1DAD64398(v31, &unk_1ECC0A990, &qword_1DAEDE2D0);
    sub_1DAD64398(&v93, &unk_1ECC07DE0, &qword_1DAEDBED0);
    goto LABEL_5;
  }

  sub_1DAD657D8(&v93, v95);
  sub_1DAD6495C(v31, v28, &unk_1ECC0A990, &qword_1DAEDE2D0);
  if ((*(v21 + 48))(v28, 1, v20) == 1)
  {
    sub_1DAD64398(v31, &unk_1ECC0A990, &qword_1DAEDE2D0);
    sub_1DAD64398(v28, &unk_1ECC0A990, &qword_1DAEDE2D0);
    __swift_destroy_boxed_opaque_existential_1Tm(v95);
LABEL_5:
    v43 = v89;
    v44 = v90;
    v45 = v91;
    (*(v91 + 56))(v90, 1, 1, v92);
    v46 = v86;
    goto LABEL_7;
  }

  (*(v21 + 32))(v25, v28, v20);
  v44 = v90;
  sub_1DAD648F8(v84, v90);
  __swift_project_boxed_opaque_existential_1(v95, v96);
  v47 = v92;
  sub_1DAED177C();
  v78(v79, v25, v20);
  sub_1DAED156C();
  (*(v21 + 8))(v25, v20);
  sub_1DAD64398(v31, &unk_1ECC0A990, &qword_1DAEDE2D0);
  v45 = v91;
  (*(v91 + 56))(v44, 0, 1, v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  v46 = v86;
  v43 = v89;
LABEL_7:
  v48 = v85;
  v49 = *(v46 + 24);
  os_unfair_lock_lock(*(v49 + 16));
  sub_1DAD9C494(v44, v46, v43);
  os_unfair_lock_unlock(*(v49 + 16));
  sub_1DAD6495C(v43, v48, &qword_1ECC080B0, &qword_1DAEDE780);
  v50 = sub_1DAED19AC();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v48, 1, v50) == 1)
  {
    sub_1DAD64398(v48, &qword_1ECC080B0, &qword_1DAEDE780);
    v52 = v80;
    sub_1DAD6495C(v44, v80, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
    v53 = *(v45 + 48);
    v54 = v53(v52, 1, v92);
    v91 = v45 + 48;
    if (v54 == 1)
    {
      sub_1DAD64398(v52, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
    }

    else
    {
      v56 = v52;
      v57 = v74;
      sub_1DADB23E8(v56, v74, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
      os_unfair_lock_lock(*(v49 + 16));
      sub_1DADAD760(v46, v57);
      os_unfair_lock_unlock(*(v49 + 16));
      sub_1DADB2450(v57, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
    }

    v58 = v84;
    v59 = v84[3];
    v60 = v84[4];
    __swift_project_boxed_opaque_existential_1(v84, v59);
    (*(v60 + 32))(v95, v59, v60);
    v61 = v96;
    v62 = v97;
    __swift_project_boxed_opaque_existential_1(v95, v96);
    v63 = v58[3];
    v64 = v58[4];
    __swift_project_boxed_opaque_existential_1(v58, v63);
    v65 = (*(v64 + 16))(v63, v64);
    v66 = v83;
    (*(v62 + 8))(v65, v88, v82, v61, v62);

    __swift_destroy_boxed_opaque_existential_1Tm(v95);
    v44 = v90;
    v67 = v81;
    sub_1DAD6495C(v90, v81, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
    if (v53(v67, 1, v92) == 1)
    {
      sub_1DAD64398(v89, &qword_1ECC080B0, &qword_1DAEDE780);
      sub_1DAD64398(v67, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
    }

    else
    {
      v68 = v77;
      sub_1DADB23E8(v67, v77, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
      os_unfair_lock_lock(*(v49 + 16));
      v69 = v76;
      sub_1DADBA01C(v68, v76, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
      v70 = v75;
      sub_1DAD6495C(v66, v75, &qword_1ECC080B0, &qword_1DAEDE780);
      swift_beginAccess();
      v71 = v69;
      v44 = v90;
      sub_1DADB9CEC(v70, v71);
      swift_endAccess();
      os_unfair_lock_unlock(*(v49 + 16));
      sub_1DAD64398(v89, &qword_1ECC080B0, &qword_1DAEDE780);
      sub_1DADB2450(v68, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
    }

    sub_1DAD7C48C(v66, v87, &qword_1ECC080B0, &qword_1DAEDE780);
  }

  else
  {
    sub_1DAD64398(v43, &qword_1ECC080B0, &qword_1DAEDE780);
    v55 = v87;
    (*(v51 + 32))(v87, v48, v50);
    (*(v51 + 56))(v55, 0, 1, v50);
  }

  return sub_1DAD64398(v44, &qword_1ECC0A7F8, &qword_1DAEDEBA8);
}

uint64_t sub_1DADA1144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1DAECDCEC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1DAED157C();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1DADA1268@<X0>(void *a1@<X0>, char *a4@<X8>)
{
  v177 = a4;
  v5 = sub_1DAED0B7C();
  v170 = *(v5 - 8);
  v171 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v160 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v161 = &v157 - v8;
  v165 = sub_1DAED18CC();
  v164 = *(v165 - 1);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DAECEDEC();
  v172 = *(v10 - 8);
  v173 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v159 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v166 = &v157 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v169 = (&v157 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v158 = &v157 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v162 = &v157 - v19;
  v20 = sub_1DAED19AC();
  v174 = *(v20 - 1);
  v175 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C48, &unk_1DAEDBE58);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v157 - v24);
  v26 = sub_1DAED0DDC();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED0C3C();
  v30 = sub_1DAED0DBC();
  v31 = *(v27 + 8);
  v168 = v26;
  v167 = v31;
  v31(v29, v26);
  v32 = [v30 extensionIdentity];

  v176 = v32;
  LODWORD(v30) = [v32 isRemote];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v33 = swift_allocObject();
  if (v30)
  {
    *(v33 + 16) = xmmword_1DAEDBE10;
    *(v33 + 32) = swift_getKeyPath();
    *(v33 + 40) = swift_getKeyPath();
    *(v33 + 48) = swift_getKeyPath();
    *(v33 + 56) = swift_getKeyPath();
    *(v33 + 64) = swift_getKeyPath();
    *(v33 + 72) = swift_getKeyPath();
    *(v33 + 80) = swift_getKeyPath();
    *(v33 + 88) = swift_getKeyPath();
    v34 = (v33 + 96);
  }

  else
  {
    *(v33 + 16) = xmmword_1DAEDBE00;
    *(v33 + 32) = swift_getKeyPath();
    v34 = (v33 + 40);
  }

  *v34 = swift_getKeyPath();

  sub_1DAED28AC();
  sub_1DAED239C();

  sub_1DAED0B3C();

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v45 = v174;
    v44 = v175;
    v46 = *(v174 + 32);
    v46(v22, v25, v175);
    v47 = v178[13];
    v48 = *(*v47 + *MEMORY[0x1E69E6B68] + 16);
    v49 = (*(*v47 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v47 + v49));
    sub_1DAD64398(v47 + v48, &qword_1ECC07DF0, &qword_1DAED5870);
    v50 = sub_1DAED157C();
    (*(*(v50 - 8) + 56))(v47 + v48, 1, 1, v50);
    os_unfair_lock_unlock((v47 + v49));

    v51 = v177;
    v46(v177, v22, v44);
    return (*(v45 + 56))(v51, 0, 1, v44);
  }

  v36 = v170;
  v35 = v171;
  v37 = (*(v170 + 88))(v25, v171);
  v38 = v178;
  if (v37 == *MEMORY[0x1E6993D10])
  {
    (*(v36 + 96))(v25, v35);
    v39 = v25[1];
    v40 = v172;
    if (v39)
    {
      v41 = *v25;
      v181 = 2108704;
      v182 = 0xE300000000000000;
      MEMORY[0x1E127DA50](v41, v39);

      v43 = v181;
      v42 = v182;
    }

    else
    {
      v43 = 0;
      v42 = 0xE000000000000000;
    }

    v88 = v169;
    v89 = __swift_project_boxed_opaque_existential_1(v38 + 2, v38[5]);
    v90 = v173;
    (*(v40 + 16))(v88, *v89 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v173);
    v91 = a1;

    v92 = sub_1DAECEDCC();
    v93 = sub_1DAED203C();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v178 = v43;
      v96 = v95;
      v181 = v95;
      *v94 = 136446722;
      sub_1DAED0C3C();
      v97 = sub_1DAED0DBC();
      v167(v29, v168);
      v98 = [v97 _loggingIdentifierWithoutMetrics];

      v99 = sub_1DAED1CEC();
      v101 = v100;

      v102 = sub_1DAD6482C(v99, v101, &v181);

      *(v94 + 4) = v102;
      *(v94 + 12) = 2082;
      v103 = sub_1DAD6482C(v178, v42, &v181);

      *(v94 + 14) = v103;
      *(v94 + 22) = 2082;
      v104 = v163;
      sub_1DAED0B9C();
      sub_1DADA6F60(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
      v105 = v165;
      v106 = sub_1DAED287C();
      v108 = v107;
      (*(v164 + 8))(v104, v105);
      v109 = sub_1DAD6482C(v106, v108, &v181);

      *(v94 + 24) = v109;
      _os_log_impl(&dword_1DAD61000, v92, v93, "%{public}s currentViewableEntry: No content%{public}s, (entry protected by: %{public}s)", v94, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v96, -1, -1);
      MEMORY[0x1E127F100](v94, -1, -1);

      (*(v172 + 8))(v169, v173);
    }

    else
    {

      (*(v40 + 8))(v88, v90);
    }

    return (*(v174 + 56))(v177, 1, 1, v175);
  }

  v53 = v172;
  if (v37 == *MEMORY[0x1E6993D18])
  {
    (*(v36 + 96))(v25, v35);
    v54 = v25[5];
    v55 = __swift_project_boxed_opaque_existential_1(v38 + 2, v38[5]);
    v56 = v166;
    v57 = v173;
    (*(v53 + 16))(v166, *v55 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v173);
    v58 = a1;
    v59 = v54;
    v60 = sub_1DAECEDCC();
    v61 = sub_1DAED201C();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v181 = v175;
      *v62 = 136446467;
      sub_1DAED0C3C();
      v63 = sub_1DAED0DBC();
      v167(v29, v168);
      v64 = [v63 _loggingIdentifierWithoutMetrics];

      v65 = sub_1DAED1CEC();
      v67 = v66;

      v68 = sub_1DAD6482C(v65, v67, &v181);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2113;
      v69 = v54;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v62 + 14) = v70;
      v71 = v174;
      *v174 = v70;
      _os_log_impl(&dword_1DAD61000, v60, v61, "%{public}s reload: could not decode view: %{private}@", v62, 0x16u);
      sub_1DAD64398(v71, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v71, -1, -1);
      v72 = v175;
      __swift_destroy_boxed_opaque_existential_1Tm(v175);
      MEMORY[0x1E127F100](v72, -1, -1);
      MEMORY[0x1E127F100](v62, -1, -1);

      (*(v53 + 8))(v166, v173);
    }

    else
    {

      (*(v53 + 8))(v56, v57);
    }

    __swift_project_boxed_opaque_existential_1(v178 + 7, v178[10]);
    sub_1DADC551C(2);
    sub_1DAED0B2C();

    return sub_1DAD64398(v25, &unk_1ECC07DE0, &qword_1DAEDBED0);
  }

  if (v37 != *MEMORY[0x1E6993D08])
  {
    if (v37 != *MEMORY[0x1E6993D20])
    {
      v128 = v161;
      (*(v36 + 32))(v161, v25, v35);
      v129 = __swift_project_boxed_opaque_existential_1(v38 + 2, v38[5]);
      v130 = v159;
      (*(v53 + 16))(v159, *v129 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v173);
      v131 = v36;
      v178 = *(v36 + 16);
      (v178)(v160, v128, v35);
      v132 = v130;
      v133 = a1;
      v134 = v35;
      v135 = sub_1DAECEDCC();
      v136 = sub_1DAED201C();

      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        LODWORD(v166) = v136;
        v138 = v137;
        v165 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        v181 = v169;
        *v138 = 136446467;
        sub_1DAED0C3C();
        v139 = sub_1DAED0DBC();
        v167(v29, v168);
        v140 = [v139 _loggingIdentifierWithoutMetrics];

        v141 = sub_1DAED1CEC();
        v142 = v53;
        v144 = v143;

        v145 = sub_1DAD6482C(v141, v144, &v181);

        *(v138 + 4) = v145;
        *(v138 + 12) = 2113;
        sub_1DADA6F60(&qword_1ECC09C50, MEMORY[0x1E6993D28], MEMORY[0x1E6993D30]);
        swift_allocError();
        v146 = v160;
        (v178)(v147, v160, v134);
        v148 = _swift_stdlib_bridgeErrorToNSError();
        v149 = *(v131 + 8);
        v149(v146, v134);
        *(v138 + 14) = v148;
        v150 = v165;
        *v165 = v148;
        _os_log_impl(&dword_1DAD61000, v135, v166, "%{public}s reload error: %{private}@", v138, 0x16u);
        sub_1DAD64398(v150, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v150, -1, -1);
        v151 = v169;
        __swift_destroy_boxed_opaque_existential_1Tm(v169);
        MEMORY[0x1E127F100](v151, -1, -1);
        MEMORY[0x1E127F100](v138, -1, -1);

        (*(v142 + 8))(v159, v173);
        v149(v161, v134);
      }

      else
      {

        v156 = *(v131 + 8);
        v156(v160, v134);
        (*(v53 + 8))(v132, v173);
        v156(v161, v134);
      }

      return (*(v174 + 56))(v177, 1, 1, v175);
    }

    (*(v36 + 96))(v25, v35);
    v110 = v25[6];
    v175 = v25[5];
    v111 = __swift_project_boxed_opaque_existential_1(v38 + 2, v38[5]);
    v112 = v158;
    (*(v53 + 16))(v158, *v111 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v173);
    v113 = a1;

    v114 = sub_1DAECEDCC();
    v115 = sub_1DAED203C();

    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v181 = v117;
      *v116 = 136446466;
      LODWORD(v174) = v115;
      sub_1DAED0C3C();
      v118 = sub_1DAED0DBC();
      v167(v29, v168);
      v119 = [v118 _loggingIdentifierWithoutMetrics];

      v120 = sub_1DAED1CEC();
      v121 = v112;
      v123 = v122;

      v124 = sub_1DAD6482C(v120, v123, &v181);

      *(v116 + 4) = v124;
      *(v116 + 12) = 2082;
      v125 = sub_1DAD6482C(v175, v110, &v181);

      *(v116 + 14) = v125;
      _os_log_impl(&dword_1DAD61000, v114, v174, "%{public}s currentViewableEntry: no matching environment - mismatches: %{public}s", v116, 0x16u);
      swift_arrayDestroy();
      v126 = v117;
      v38 = v178;
      MEMORY[0x1E127F100](v126, -1, -1);
      MEMORY[0x1E127F100](v116, -1, -1);

      (*(v172 + 8))(v121, v173);
    }

    else
    {

      (*(v53 + 8))(v112, v173);
    }

    sub_1DAED0C5C();
    if (v180)
    {
      v152 = sub_1DAD657D8(&v179, &v181);
      v153 = v38[13];
      MEMORY[0x1EEE9AC00](v152);
      *(&v157 - 2) = &v181;
      v154 = *(*v153 + *MEMORY[0x1E69E6B68] + 16);
      v155 = (*(*v153 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v153 + v155));
      sub_1DADC18C4(v153 + v154, &v179);
      os_unfair_lock_unlock((v153 + v155));
      LODWORD(v154) = v179;

      if (v154 == 1)
      {
        __swift_project_boxed_opaque_existential_1(v38 + 7, v38[10]);
        sub_1DADC551C(3);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(&v181);
    }

    else
    {
      sub_1DAD64398(&v179, &unk_1ECC08880, &unk_1DAED6F50);
    }

    sub_1DAED0B2C();

    return sub_1DAD64398(v25, &unk_1ECC07DE0, &qword_1DAEDBED0);
  }

  (*(v36 + 96))(v25, v35);
  v73 = __swift_project_boxed_opaque_existential_1(v38 + 2, v38[5]);
  v74 = v162;
  v75 = v173;
  (*(v53 + 16))(v162, *v73 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v173);
  v76 = a1;
  v77 = sub_1DAECEDCC();
  v78 = sub_1DAED203C();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v181 = v80;
    *v79 = 136446210;
    sub_1DAED0C3C();
    v81 = sub_1DAED0DBC();
    v167(v29, v168);
    v82 = [v81 _loggingIdentifierWithoutMetrics];

    v83 = sub_1DAED1CEC();
    v84 = v53;
    v86 = v85;

    v87 = sub_1DAD6482C(v83, v86, &v181);

    *(v79 + 4) = v87;
    _os_log_impl(&dword_1DAD61000, v77, v78, "%{public}s currentViewableEntry: no entry", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v80);
    MEMORY[0x1E127F100](v80, -1, -1);
    MEMORY[0x1E127F100](v79, -1, -1);

    (*(v84 + 8))(v162, v173);
  }

  else
  {

    (*(v53 + 8))(v74, v75);
  }

  (*(v174 + 56))(v177, 1, 1, v175);
  v127 = sub_1DAECDCEC();
  return (*(*(v127 - 8) + 8))(v25, v127);
}

char *LiveWidgetContentViewController.init(widget:metrics:viewModel:)(void *a1, void *a2, char *a3)
{
  v4 = v3;
  v69 = sub_1DAECFBAC();
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A600, &unk_1DAEDE250);
  v88 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAE8, &qword_1DAEDFB68);
  v11 = *(v10 - 8);
  v89 = v10;
  v90 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v85 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v78 = &v66 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v76 = *(v75 - 1);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v66 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAF0, &qword_1DAEDFB70);
  v79 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v66 - v16;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAF8, &qword_1DAEDFB78);
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v74 = &v66 - v17;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09AE8, &qword_1DAEDFB80);
  MEMORY[0x1EEE9AC00](v71);
  v91 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v66 - v20);
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_animationsPausedCancellable) = 0;
  v22 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver) = 0;
  v87 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__cachedAnimationsDisabledPreference;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__cachedAnimationsDisabledPreference) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__renderingScaleObserver) = 0;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_widget) = a1;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_metrics) = a2;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel) = a3;
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = a1;
  v24 = a2;

  sub_1DAECEF3C();

  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused) = v92;
  type metadata accessor for _RootContentViewModel(0);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = v24;
  swift_beginAccess();
  LOBYTE(v93) = 1;
  v26 = v23;
  v83 = v24;
  sub_1DAECEEFC();
  swift_endAccess();
  swift_beginAccess();
  LOBYTE(v93) = 0;
  sub_1DAECEEFC();
  swift_endAccess();
  *(v4 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__rootViewModel) = v25;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  LOBYTE(v25) = sub_1DAECE07C();

  *(v87 + v4) = v25 & 1;
  *(v4 + v22) = 0;

  v82 = v26;
  LODWORD(v70) = sub_1DAE9BAB0([v26 family]);
  v27 = v21 + *(v71 + 36);
  v93 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09AF0, &unk_1DAED7740);
  sub_1DAED076C();
  *(v27 + 1) = v92;
  v93 = 0;
  sub_1DAED076C();
  *(v27 + 2) = v92;
  v27[48] = 0;
  *(v27 + 7) = 0;
  v28 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logger;
  v29 = *(type metadata accessor for LiveWidgetEntryView(0) + 36);
  v30 = sub_1DAECEDEC();
  (*(*(v30 - 8) + 16))(&v27[v29], &a3[v28], v30);
  type metadata accessor for LiveWidgetEntryViewModel(0);
  sub_1DAD730A4(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel, &protocol conformance descriptor for LiveWidgetEntryViewModel);
  *v27 = sub_1DAECF21C();
  *(v27 + 1) = v31;
  sub_1DAD730A4(&qword_1EE006B90, type metadata accessor for _RootContentViewModel, &unk_1DAEDFD48);
  *v21 = sub_1DAECF21C();
  v21[1] = v32;
  v87 = v21;
  sub_1DADA5A60(v21, v91);
  sub_1DAD64B94(qword_1EE0078A8, &qword_1ECC09AE8, &qword_1DAEDFB80, &unk_1DAEDFCF8);
  v33 = sub_1DAED087C();
  v34 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  swift_beginAccess();
  v91 = a3;
  sub_1DADA5544(v33, v70 & 1, a3[v34], 1);
  v36 = v35;

  v37 = v36;
  sub_1DAECE1AC();
  v38 = sub_1DAECE08C();

  *&v92 = v38;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08898, &qword_1DAED8240);
  sub_1DAD64B94(&qword_1EE00AC00, &qword_1ECC08898, &qword_1DAED8240, MEMORY[0x1E695BED8]);
  v39 = sub_1DAECF00C();

  *&v37[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver] = v39;

  v70 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v40 = v72;
  sub_1DAECEF0C();
  swift_endAccess();

  v71 = MEMORY[0x1E695C068];
  sub_1DAD64B94(&qword_1EE00ABC0, &unk_1ECC0A540, &unk_1DAED7D70, MEMORY[0x1E695C068]);
  v41 = v73;
  v42 = v75;
  sub_1DAECEFFC();
  (*(v76 + 8))(v40, v42);
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v43 = sub_1DAED20EC();
  *&v92 = v43;
  v44 = sub_1DAED20AC();
  v45 = *(v44 - 8);
  v75 = *(v45 + 56);
  v76 = v45 + 56;
  v46 = v78;
  (v75)(v78, 1, 1, v44);
  sub_1DAD64B94(&unk_1EE005DA0, &qword_1ECC0AAF0, &qword_1DAEDFB70, MEMORY[0x1E695BD38]);
  sub_1DAD88828();
  v47 = v74;
  v48 = v77;
  v49 = v41;
  sub_1DAECEFBC();
  v50 = v46;
  sub_1DAD64398(v46, &unk_1ECC07D20, &unk_1DAED57D0);

  (*(v79 + 8))(v49, v48);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = MEMORY[0x1E695BE98];
  sub_1DAD64B94(&qword_1EE005CF8, &qword_1ECC0AAF8, &qword_1DAEDFB78, MEMORY[0x1E695BE98]);
  v52 = v80;
  v53 = sub_1DAECF00C();

  (*(v81 + 8))(v47, v52);
  *&v37[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_animationsPausedCancellable] = v53;

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D40, &unk_1DAED57F0);
  v54 = v84;
  sub_1DAECEF0C();
  swift_endAccess();

  v55 = sub_1DAED20EC();
  *&v92 = v55;
  (v75)(v50, 1, 1, v44);
  sub_1DAD64B94(&unk_1EE005BE8, &qword_1ECC0A600, &unk_1DAEDE250, v71);
  v56 = v85;
  v57 = v50;
  v58 = v86;
  sub_1DAECEFBC();
  sub_1DAD64398(v57, &unk_1ECC07D20, &unk_1DAED57D0);

  (*(v88 + 8))(v54, v58);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1DAD64B94(&qword_1EE005D08, &qword_1ECC0AAE8, &qword_1DAEDFB68, v51);
  v59 = v89;
  v60 = sub_1DAECF00C();

  (*(v90 + 8))(v56, v59);
  *&v37[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__renderingScaleObserver] = v60;

  if (v37[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController__renderEngine] == 1)
  {
    v61 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
    swift_beginAccess();
    v62 = *&v37[v61];
    (*(v67 + 104))(v68, *MEMORY[0x1E697FFA0], v69);
    v63 = v62;
    v64 = sub_1DAECFA7C();
    sub_1DAECFC6C();
    v64(&v92, 0);
  }

  else
  {
  }

  sub_1DAD64398(v87, &qword_1ECC09AE8, &qword_1DAEDFB80);
  return v37;
}

uint64_t sub_1DADA3870()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

char *sub_1DADA38A8(void *a1, char *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D18, &qword_1DAED7D68);
  v6 = *(v5 - 8);
  v74 = v5;
  v75 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v73 = v57 - v7;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A540, &unk_1DAED7D70);
  v68 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v65 = v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D20, &unk_1DAEDD960);
  v10 = *(v9 - 8);
  v70 = v9;
  v71 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v66 = v57 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D28, &unk_1DAED7D80);
  v64 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v57 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v17 = v57 - v16;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_shouldVisibleEntrySnapshot) = 1;
  v18 = v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_lifetimeAssertion;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_metricsAggregator) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_invalidated) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__cancellables) = MEMORY[0x1E69E7CD0];
  v19 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__alwaysOnOverrideDate;
  v20 = sub_1DAECDCEC();
  v21 = *(*(v20 - 8) + 56);
  v21(v2 + v19, 1, 1, v20);
  v21(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__overrideDatePreferenceValue, 1, 1, v20);
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene) = a1;
  v22 = a1;
  v23 = sub_1DAD8CE78(v22);
  v24 = (v2 + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier);
  *v24 = v23;
  v24[1] = v25;
  v72 = v22;
  v26 = [v22 widget];
  v27 = [v22 metrics];
  v69 = a2;

  v79 = LiveWidgetContentViewController.init(widget:metrics:viewModel:)(v26, v27, a2);
  v80 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel;
  v28 = v79;
  sub_1DAD648F8(*&v79[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel] + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v84);
  v29 = v85;
  v30 = v86;
  __swift_project_boxed_opaque_existential_1(v84, v85);
  v31 = *(v30 + 16);
  v32 = v28;

  v33 = v31(v29, v30);
  v34 = sub_1DAED0BFC();

  __swift_destroy_boxed_opaque_existential_1Tm(v84);
  v84[0] = v34;
  v35 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v36 = sub_1DAED20EC();
  v83 = v36;
  v37 = sub_1DAED20AC();
  v38 = *(v37 - 8);
  v82 = *(v38 + 56);
  v77 = v38 + 56;
  v78 = v37;
  v82(v15, 1, 1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  v81 = MEMORY[0x1E695BED8];
  sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, MEMORY[0x1E695BED8]);
  v76 = sub_1DAD88828();
  sub_1DAECEFBC();
  sub_1DAD64398(v15, &unk_1ECC07D20, &unk_1DAED57D0);

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1DADC4450;
  *(v40 + 24) = v39;
  v59 = MEMORY[0x1E695BE98];
  sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0, MEMORY[0x1E695BE98]);
  v41 = v60;
  sub_1DAECF00C();

  (*(v61 + 8))(v17, v41);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  v84[0] = *(*&v79[v80] + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher);

  v42 = sub_1DAED20EC();
  v83 = v42;
  v58 = v15;
  v82(v15, 1, 1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083D0, qword_1DAED6780);
  sub_1DAD64B94(&qword_1EE005C88, &unk_1ECC083D0, qword_1DAED6780, v81);
  v43 = v62;
  sub_1DAECEFBC();
  sub_1DAD64398(v15, &unk_1ECC07D20, &unk_1DAED57D0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = v59;
  sub_1DAD64B94(&qword_1EE005D20, &qword_1ECC08D28, &unk_1DAED7D80, v59);
  v45 = v63;
  sub_1DAECF00C();

  (*(v64 + 8))(v43, v45);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v46 = v65;
  sub_1DAECEF0C();
  swift_endAccess();

  v57[1] = v35;
  v47 = sub_1DAED20EC();
  v84[0] = v47;
  v48 = v58;
  v82(v58, 1, 1, v78);
  sub_1DAD64B94(&qword_1EE00ABC0, &unk_1ECC0A540, &unk_1DAED7D70, MEMORY[0x1E695C068]);
  v49 = v66;
  v50 = v67;
  sub_1DAECEFBC();
  sub_1DAD64398(v48, &unk_1ECC07D20, &unk_1DAED57D0);

  (*(v68 + 8))(v46, v50);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1DAD64B94(&unk_1EE00AC20, &qword_1ECC08D20, &unk_1DAEDD960, v44);
  v51 = v70;
  sub_1DAECF00C();

  (*(v71 + 8))(v49, v51);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v52 = sub_1DAECE01C();

  v84[0] = v52;
  v53 = sub_1DAED20EC();
  v83 = v53;
  v82(v48, 1, 1, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D30, &qword_1DAED7D90);
  sub_1DAD64B94(&qword_1EE005C80, &qword_1ECC08D30, &qword_1DAED7D90, v81);
  v54 = v73;
  sub_1DAECEFBC();
  sub_1DAD64398(v48, &unk_1ECC07D20, &unk_1DAED57D0);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1DAD64B94(&qword_1EE005D18, &qword_1ECC08D18, &qword_1DAED7D68, v44);
  v55 = v74;
  sub_1DAECF00C();

  (*(v75 + 8))(v54, v55);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  return v32;
}

uint64_t sub_1DADA4584()
{
  MEMORY[0x1E127F1A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DADA45BC()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for WidgetSceneContentViewController(uint64_t a1)
{
  result = qword_1EE00BFD0;
  if (!qword_1EE00BFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DADA4678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAECF8EC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1DAED19AC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1DADA4798(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DAECF8EC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1DAED19AC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1DADA48A0()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 16);
  v6 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent;
  swift_beginAccess();
  v7 = *(v5 + v6);
  if (v7 != 2 && (v7 & 1) != 0)
  {
    return 0;
  }

  v9 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isCarPlayDisplay;
  swift_beginAccess();
  if (*(v5 + v9))
  {
    return 1;
  }

  v10 = v0;
  v11 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v11, v1);
  LOBYTE(v11) = sub_1DAECF60C();
  (*(v2 + 8))(v4, v1);
  if (v11)
  {
    return 1;
  }

  v12 = *(v10 + 16);
  v13 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_ignoreComplicationUserRedactionPreference;
  swift_beginAccess();
  return *(v12 + v13);
}

uint64_t sub_1DADA4A3C()
{
  v1 = *(*v0 + 16);
  v2 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1DADA4A88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DAED176C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08368, &unk_1DAEDE2B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v67 = &v52 - v7;
  v69 = sub_1DAED16FC();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1DAECF32C();
  v52 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1DAECE21C();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v60 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1DAECE23C();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DAED15DC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1DAECF0AC();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DAED0DDC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DAED149C();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__rawEnvironmentValues;
  swift_beginAccess();
  v21 = sub_1DAECF8EC();
  (*(*(v21 - 8) + 16))(a1, v2 + v20, v21);
  v22 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource;
  sub_1DAD648F8(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v71);
  v24 = v72;
  v23 = v73;
  __swift_project_boxed_opaque_existential_1(&v71, v72);
  v25 = (*(v23 + 16))(v24, v23);
  sub_1DAED0C3C();

  v26 = sub_1DAED0DBC();
  v27 = *(v16 + 8);
  v27(v18, v15);
  [v26 family];

  sub_1DAED14AC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  sub_1DAECF62C();
  sub_1DAD648F8(v2 + v22, &v71);
  v28 = v72;
  v29 = v73;
  __swift_project_boxed_opaque_existential_1(&v71, v72);
  v30 = (*(v29 + 16))(v28, v29);
  sub_1DAED0C3C();

  sub_1DAED0DCC();
  v27(v18, v15);
  sub_1DAECF66C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v71);
  v31 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
  swift_beginAccess();
  (*(v56 + 16))(v55, v2 + v31, v57);
  sub_1DAECF3AC();
  swift_beginAccess();
  sub_1DAECF4CC();
  swift_beginAccess();
  sub_1DAECF5FC();
  v32 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v33 = *(v2 + v32);
  sub_1DAED15EC();
  sub_1DAECF72C();
  v34 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersRedactedContent;
  swift_beginAccess();
  v35 = *(v2 + v34);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider), *(v2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__keybagStateProvider + 24));
  v36 = v59;
  sub_1DAECE29C();
  v37 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_keybagLockPolicy;
  swift_beginAccess();
  v38 = v62;
  v39 = v60;
  v40 = v64;
  (*(v62 + 16))(v60, v2 + v37, v64);
  LOBYTE(v37) = sub_1DAECE22C();
  (*(v38 + 8))(v39, v40);
  (*(v61 + 8))(v36, v63);
  if (v37 & 1) != 0 || (v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09038, &unk_1DAED85C0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1DAED6200;
    sub_1DAECF31C();
    v70[0] = v41;
  }

  else
  {
    v70[0] = MEMORY[0x1E69E7CC0];
  }

  sub_1DAD900EC(&qword_1EE00BE58, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  sub_1DAECF47C();
  v42 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  swift_beginAccess();
  v43 = *(v2 + v42);
  v44 = v69;
  if (v43)
  {
    v45 = v43;
    sub_1DAECF7AC();
  }

  v46 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  swift_beginAccess();
  v47 = v2 + v46;
  v48 = v67;
  sub_1DAD6495C(v47, v67, &qword_1ECC08368, &unk_1DAEDE2B0);
  v49 = v68;
  if ((*(v68 + 48))(v48, 1, v44) == 1)
  {
    return sub_1DAD64398(v48, &qword_1ECC08368, &unk_1DAEDE2B0);
  }

  v51 = v53;
  (*(v49 + 32))(v53, v48, v44);
  sub_1DAED16EC();
  sub_1DAECF63C();
  return (*(v49 + 8))(v51, v44);
}

uint64_t sub_1DADA54D0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for AbstractArchiveWidgetEntrySource();
  a1[4] = &off_1F56B6788;
  *a1 = v3;
}

void sub_1DADA5544(uint64_t a1, char a2, char a3, char a4)
{
  v5 = v4;
  *&v5[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape] = 0;
  v9 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
  v5[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent] = 0;
  *&v5[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer] = 0;
  *&v5[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay] = 0;
  v5[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController__renderEngine] = a2 & 1;
  objc_allocWithZone(type metadata accessor for SecureHostingController(0));
  v34 = a1;

  *&v5[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController] = sub_1DAECFA9C();
  swift_beginAccess();
  v5[v9] = a3;
  v33.receiver = v5;
  v33.super_class = type metadata accessor for BaseWidgetContentViewController();
  v10 = objc_msgSendSuper2(&v33, sel_initWithNibName_bundle_, 0, 0);
  v11 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v12 = *&v10[v11];
  v13 = v10;
  v14 = [v12 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 clearColor];
  [v15 setBackgroundColor_];

  v18 = [v13 view];
  if (!v18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v19 = [v16 clearColor];
  [v18 setBackgroundColor_];

  if ((a2 & 1) == 0)
  {
    v23 = *&v10[v11];
    v24 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
    swift_beginAccess();
    LOBYTE(v24) = v13[v24];
    v22 = v23;
    sub_1DADB25F8(a4 & 1, (v24 & 1) == 0, 0.0);
LABEL_7:

    v25 = *&v10[v11];
    v26 = v13;
    [v26 addChildViewController_];
    v27 = [v26 view];
    if (v27)
    {
      v28 = v27;
      v29 = [*&v10[v11] view];
      if (v29)
      {
        v30 = v29;
        [v28 addSubview_];

        v31 = *&v10[v11];
        [v31 didMoveToParentViewController_];

        return;
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v20 = [v13 view];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 layer];

    [v22 setHitTestsAsOpaque_];
    goto LABEL_7;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1DADA586C(uint64_t a1)
{
  result = sub_1DAECEDEC();
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

uint64_t sub_1DADA5920(uint64_t a1)
{
  result = sub_1DAD722E0(qword_1EE008420, type metadata accessor for WidgetArchiveEntryAssertion, &unk_1DAED7160);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DADA5978()
{
  result = qword_1EE008208[0];
  if (!qword_1EE008208[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE008208);
  }

  return result;
}

void sub_1DADA59CC()
{
  if (!qword_1EE00ABB8)
  {
    v0 = sub_1DAECEF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE00ABB8);
    }
  }
}

uint64_t sub_1DADA5A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09AE8, &qword_1DAEDFB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DADA5B4C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1DADA5AD0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1DADA5CF4(v13, a3 & 1);
      v8 = sub_1DADA5AD0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
        sub_1DAED28FC();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1DADDC6D8();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  v21 = a2;
}

void sub_1DADA5CF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9B0, &unk_1DAEDF140);
  v6 = sub_1DAED277C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = sub_1DAED227C();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

double sub_1DADA5F64(void *a1)
{
  v2 = v1;
  v42[3] = *MEMORY[0x1E69E9840];
  v4 = sub_1DAED10DC();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAECE20C();
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099A0, &qword_1DAEDACF0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DADA64C4();
  sub_1DAED29BC();
  v13 = objc_opt_self();
  v14 = *(v2 + 16);
  v42[0] = 0;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:v42];
  v16 = v42[0];
  if (v15)
  {
    v33 = v6;
    v17 = sub_1DAECDC1C();
    v19 = v18;

    v42[0] = v17;
    v42[1] = v19;
    v41 = 0;
    sub_1DADA7F5C();
    v20 = v38;
    sub_1DAED284C();
    if (v20)
    {
      (*(v10 + 8))(v12, v9);
      v21 = v17;
      v22 = v19;
    }

    else
    {
      v32 = v17;
      v38 = v19;
      LOBYTE(v42[0]) = 1;
      sub_1DAED283C();
      v25 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_priority;
      swift_beginAccess();
      v26 = v37;
      v27 = v33;
      (*(v37 + 16))(v8, v2 + v25, v33);
      v41 = 2;
      sub_1DADA7FB0(&qword_1EE00BCE0, MEMORY[0x1E6993FA8], MEMORY[0x1E6993FB0]);
      sub_1DAED284C();
      (*(v26 + 8))(v8, v27);
      v28 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers;
      swift_beginAccess();
      v29 = v34;
      v30 = v35;
      v31 = v36;
      (*(v35 + 16))(v34, v2 + v28, v36);
      v40 = 3;
      sub_1DADA7FB0(&qword_1EE005790, MEMORY[0x1E6993E88], MEMORY[0x1E6993E90]);
      sub_1DAED284C();
      (*(v30 + 8))(v29, v31);
      swift_beginAccess();
      v39 = 4;
      sub_1DAED282C();
      (*(v10 + 8))(v12, v9);
      v21 = v32;
      v22 = v38;
    }

    return sub_1DAD70BB4(v21, v22);
  }

  else
  {
    v23 = v16;
    sub_1DAECDB1C();

    swift_willThrow();
    (*(v10 + 8))(v12, v9);
  }

  return result;
}

unint64_t sub_1DADA64C4()
{
  result = qword_1EE00B5B8;
  if (!qword_1EE00B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B5B8);
  }

  return result;
}

void sub_1DADA6518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DADA657C()
{
  result = qword_1EE00AA18;
  if (!qword_1EE00AA18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE00AA18);
  }

  return result;
}

void sub_1DADA65C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1DAED252C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_1DAED227C();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }
}

void sub_1DADA67D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1DAECEF5C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1DADA6828(uint64_t a1)
{
  if (!qword_1EE00BBE0)
  {
    type metadata accessor for TintedWidgetViewModel(255);
    type metadata accessor for EnvironmentWrappedViewableTimelineEntry(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC088D8, &qword_1DAED72D0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE00BBE0);
    }
  }
}

uint64_t sub_1DADA68BC(uint64_t a1)
{
  result = sub_1DAECF8EC();
  if (v2 <= 0x3F)
  {
    result = sub_1DAED19AC();
    if (v3 <= 0x3F)
    {
      result = sub_1DAD674D4(319, &unk_1EE00A860, 0x1E6994370);
      if (v4 <= 0x3F)
      {
        result = sub_1DAD674D4(319, &qword_1EE00AA60, 0x1E69943F0);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1DADA6998(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DADA6A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DAED233C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DADA6A5C(uint64_t a1)
{
  sub_1DADA8A78(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DADA6B20(uint64_t a1)
{
  result = sub_1DAECF8EC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DADA6BA4(uint64_t a1)
{
  result = sub_1DADA6C40();
  if (v2 <= 0x3F)
  {
    result = sub_1DAECDCEC();
    if (v3 <= 0x3F)
    {
      result = sub_1DAED157C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1DADA6C40()
{
  result = qword_1EE008C40;
  if (!qword_1EE008C40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE008C40);
  }

  return result;
}

uint64_t sub_1DADA6CA4(uint64_t a1)
{
  result = sub_1DAECE20C();
  if (v2 <= 0x3F)
  {
    result = sub_1DAED10DC();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1DADA6DA8()
{
  result = qword_1EE00B5A8;
  if (!qword_1EE00B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B5A8);
  }

  return result;
}

unint64_t sub_1DADA6E00()
{
  result = qword_1EE00B5B0;
  if (!qword_1EE00B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B5B0);
  }

  return result;
}

void sub_1DADA6E5C(uint64_t a1)
{
  sub_1DAECFF0C();
  if (v1 <= 0x3F)
  {
    sub_1DADA6EF8(319);
    if (v2 <= 0x3F)
    {
      sub_1DAECEDEC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DADA6EF8(uint64_t a1)
{
  if (!qword_1EE005570)
  {
    sub_1DAD674D4(255, &unk_1EE005578, 0x1E69942B8);
    v1 = sub_1DAED233C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE005570);
    }
  }
}

uint64_t sub_1DADA6F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DADA6FA8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *v2;
  BSDispatchQueueAssertMain();
  v6 = *(v5 + 16);
  v7 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__placeholderSource;
  swift_beginAccess();
  sub_1DAD6495C(v6 + v7, v9, &unk_1ECC07D90, &unk_1DAED5840);
  sub_1DAD9CD3C(v9, a1, a2);
  return sub_1DAD64398(v9, &unk_1ECC07D90, &unk_1DAED5840);
}

uint64_t sub_1DADA7058()
{
  v1 = *(*(*v0 + 16) + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier);

  return v1;
}

uint64_t sub_1DADA709C()
{
  v1 = sub_1DAECF0AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  v5 = *(v0 + 16);
  v6 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isContentTransparent;
  swift_beginAccess();
  if (*(v5 + v6) == 1)
  {
    v7 = sub_1DAED064C();
  }

  else
  {
    v8 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_colorScheme;
    swift_beginAccess();
    (*(v2 + 16))(v4, v5 + v8, v1);
    v9 = (*(v2 + 88))(v4, v1);
    if (v9 == *MEMORY[0x1E697DBB8])
    {
      v7 = sub_1DAED066C();
    }

    else if (v9 == *MEMORY[0x1E697DBA8])
    {
      v7 = sub_1DAED063C();
    }

    else
    {
      v10 = sub_1DAED060C();
      (*(v2 + 8))(v4, v1);
      v7 = v10;
    }
  }

  v12[1] = v7;
  return sub_1DAED087C();
}

void sub_1DADA7250(uint64_t a1)
{
  sub_1DADAABE4(319);
  if (v1 <= 0x3F)
  {
    sub_1DADAAC78(319);
    if (v2 <= 0x3F)
    {
      sub_1DADA7FF8(319, &qword_1EE00AB78, MEMORY[0x1E69E6530], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1DADA7FF8(319, &qword_1EE005800, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1DAECEDEC();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DADA7380(uint64_t a1, NSObject *a2)
{
  v4 = sub_1DAED0DDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) == 1)
  {
    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v9 = sub_1DAECEDEC();
    __swift_project_value_buffer(v9, qword_1EE0117D8);

    v45 = sub_1DAECEDCC();
    v10 = sub_1DAED203C();

    if (os_log_type_enabled(v45, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v46 = v12;
      *v11 = 136446210;
      v13 = a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier;
      v14 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v15 = *(v13 + 8);

      v16 = sub_1DAD6482C(v14, v15, &v46);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1DAD61000, v45, v10, "[%{public}s] Ignoring subscription result; we were invalidated while subscribing.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E127F100](v12, -1, -1);
      MEMORY[0x1E127F100](v11, -1, -1);

      return;
    }

    v31 = v45;

LABEL_13:

    return;
  }

  if (a2)
  {
    *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) = 0;
    v17 = a2;
    if (qword_1EE005E88 != -1)
    {
      swift_once();
    }

    v18 = sub_1DAECEDEC();
    __swift_project_value_buffer(v18, qword_1EE0117D8);

    v19 = a2;
    v20 = sub_1DAECEDCC();
    v21 = sub_1DAED201C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v22 = 136446466;
      v25 = a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier;
      v26 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
      v27 = *(v25 + 8);

      v28 = sub_1DAD6482C(v26, v27, &v46);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2114;
      v29 = a2;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v30;
      *v23 = v30;
      _os_log_impl(&dword_1DAD61000, v20, v21, "[%{public}s] Error subscribing to session: %{public}@", v22, 0x16u);
      sub_1DAD64398(v23, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1E127F100](v24, -1, -1);
      MEMORY[0x1E127F100](v22, -1, -1);

      return;
    }

    v31 = a2;

    goto LABEL_13;
  }

  v32 = v6;
  v33 = *(a1 + 40);
  v34 = *(a1 + 32);
  v35 = v33;
  sub_1DAED0DAC();

  sub_1DADAE53C(v8);

  if (qword_1EE005E88 != -1)
  {
    swift_once();
  }

  v36 = sub_1DAECEDEC();
  __swift_project_value_buffer(v36, qword_1EE0117D8);

  v37 = sub_1DAECEDCC();
  v38 = sub_1DAED203C();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46 = v40;
    *v39 = 136446210;
    v41 = a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier;
    v42 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
    v43 = *(v41 + 8);

    v44 = sub_1DAD6482C(v42, v43, &v46);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_1DAD61000, v37, v38, "[%{public}s] Subscribed", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1E127F100](v40, -1, -1);
    MEMORY[0x1E127F100](v39, -1, -1);
  }

  (*(v5 + 8))(v8, v32);
}

uint64_t sub_1DADA7954(uint64_t a1, char *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    if (qword_1EE005E48 != -1)
    {
      goto LABEL_28;
    }

    goto LABEL_5;
  }

  v5 = v4;
  v34 = MEMORY[0x1E69E7CD0];
  v32 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = a2;

    sub_1DAED242C();
    sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
    sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0, MEMORY[0x1E69E81B8]);
    sub_1DAED1F9C();
    a1 = v35[0];
    v7 = v35[1];
    v8 = v35[2];
    a2 = v35[3];
    v9 = v35[4];
  }

  else
  {
    v21 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v9 = v23 & *(a1 + 56);
    v24 = a2;

    a2 = 0;
  }

  while (a1 < 0)
  {
    if (!sub_1DAED24BC() || (sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0), swift_dynamicCast(), v29 = v33, v27 = a2, v28 = v9, !v33))
    {
LABEL_25:
      sub_1DAD70B20(a1);

      return v34;
    }

LABEL_23:
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      sub_1DADAE690(v5, v30);
    }

    else
    {
      sub_1DAE87D18(&v33, v29);
    }

    a2 = v27;
    v9 = v28;
  }

  v25 = a2;
  v26 = v9;
  v27 = a2;
  if (v9)
  {
LABEL_19:
    v28 = (v26 - 1) & v26;
    v29 = *(*(a1 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v26)))));
    if (!v29)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= ((v8 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v26 = *(v7 + 8 * v27);
    ++v25;
    if (v26)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_28:
  swift_once();
LABEL_5:
  v10 = sub_1DAECEDEC();
  __swift_project_value_buffer(v10, qword_1EE011748);
  v11 = a2;
  v12 = sub_1DAECEDCC();
  v13 = sub_1DAED202C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35[0] = v15;
    *v14 = 136446210;
    v16 = [v11 description];
    v17 = sub_1DAED1CEC();
    v19 = v18;

    v20 = sub_1DAD6482C(v17, v19, v35);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_1DAD61000, v12, v13, "Ignoring actions received; unexpected scene type: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E127F100](v15, -1, -1);
    MEMORY[0x1E127F100](v14, -1, -1);
  }

  return a1;
}

void sub_1DADA7D44(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1E127E110](a1, a2, v11);
      sub_1DAD674D4(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1DAD674D4(0, a5, a6);
    if (sub_1DAED245C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1DAED246C();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_1DAED227C();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_1DAED228C();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
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

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

unint64_t sub_1DADA7F5C()
{
  result = qword_1EE00BD00;
  if (!qword_1EE00BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BD00);
  }

  return result;
}

uint64_t sub_1DADA7FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DADA7FF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1DADA8060(uint64_t a1)
{
  if (!qword_1EE005B50)
  {
    type metadata accessor for _RootContentViewModel(255);
    sub_1DAD730A4(&qword_1EE006B90, type metadata accessor for _RootContentViewModel, &unk_1DAEDFD48);
    v1 = sub_1DAECF24C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE005B50);
    }
  }
}

void sub_1DADA80F4(uint64_t a1)
{
  sub_1DADA8060(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DADA817C(uint64_t a1)
{
  sub_1DADA59CC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DADA8288()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1EE011730);
  __swift_project_value_buffer(v0, qword_1EE011730);
  return sub_1DAECEDDC();
}

void sub_1DADA8304(uint64_t a1)
{
  sub_1DADA59CC();
  if (v1 <= 0x3F)
  {
    sub_1DADA67D4(319, &qword_1EE005BC8, &qword_1ECC07D68, &unk_1DAEDE610);
    if (v2 <= 0x3F)
    {
      sub_1DADA67D4(319, &qword_1EE005BC0, &qword_1ECC07D70, &unk_1DAED5820);
      if (v3 <= 0x3F)
      {
        sub_1DADA67D4(319, &qword_1EE005BD8, &qword_1ECC07D78, &unk_1DAEDE620);
        if (v4 <= 0x3F)
        {
          sub_1DADA67D4(319, &qword_1EE005BE0, &unk_1ECC07D80, &unk_1DAED5830);
          if (v5 <= 0x3F)
          {
            sub_1DADA88B0(319);
            if (v6 <= 0x3F)
            {
              sub_1DAECF8EC();
              if (v7 <= 0x3F)
              {
                sub_1DAECF0AC();
                if (v8 <= 0x3F)
                {
                  sub_1DADA6A08(319, &qword_1EE00ABA0, MEMORY[0x1E697DBD0]);
                  if (v9 <= 0x3F)
                  {
                    sub_1DAECE21C();
                    if (v10 <= 0x3F)
                    {
                      sub_1DADA6A08(319, &qword_1EE00C278, MEMORY[0x1E6969530]);
                      if (v11 <= 0x3F)
                      {
                        sub_1DADA6A08(319, &unk_1EE00A710, MEMORY[0x1E6968278]);
                        if (v12 <= 0x3F)
                        {
                          sub_1DADA6A08(319, &qword_1EE0056F8, MEMORY[0x1E6985868]);
                          if (v13 <= 0x3F)
                          {
                            sub_1DADA6A08(319, &qword_1EE00BD08, MEMORY[0x1E6968FB0]);
                            if (v14 <= 0x3F)
                            {
                              sub_1DAECEDEC();
                              if (v15 <= 0x3F)
                              {
                                swift_updateClassMetadata2();
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
      }
    }
  }
}

void sub_1DADA88B0(uint64_t a1)
{
  if (!qword_1EE0082D8[0])
  {
    v2 = type metadata accessor for DefaultWidgetLiveViewEntry(255);
    v3 = sub_1DAD900EC(&qword_1EE008CE0, type metadata accessor for DefaultWidgetLiveViewEntry, &protocol conformance descriptor for DefaultWidgetLiveViewEntry);
    v5 = type metadata accessor for WidgetViewSecurityPolicyResult(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1EE0082D8);
    }
  }
}

void sub_1DADA8944(uint64_t a1)
{
  sub_1DADA6828(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for EnvironmentWrappedViewableTimelineEntry(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1DADA89B8(uint64_t a1)
{
  sub_1DADA6518(319, &qword_1EE00ABB0, sub_1DADA657C, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DADA8A78(uint64_t a1)
{
  if (!qword_1EE0091A8[0])
  {
    type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(255);
    v1 = sub_1DAED233C();
    if (!v2)
    {
      atomic_store(v1, qword_1EE0091A8);
    }
  }
}

uint64_t TintedWidgetViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer21TintedWidgetViewModel__tintParameters;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08930, qword_1DAED73A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1DADA8B78@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v222 = a1;
  v228 = a3;
  v218 = sub_1DAED0B7C();
  v217 = *(v218 - 8);
  MEMORY[0x1EEE9AC00](v218);
  v202 = &v199 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v205 = &v199 - v6;
  v210 = sub_1DAED18CC();
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v208 = &v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_1DAECDCEC();
  v229 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v201 = &v199 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_1DAECEDEC();
  v219 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v204 = &v199 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v207 = &v199 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v215 = &v199 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v203 = &v199 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v206 = &v199 - v17;
  v18 = sub_1DAED19AC();
  v226 = *(v18 - 8);
  v227 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v216 = &v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v199 - v21;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C48, &unk_1DAEDBE58);
  MEMORY[0x1EEE9AC00](v221);
  v24 = (&v199 - v23);
  v25 = sub_1DAED0DDC();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v199 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1DAECF32C();
  MEMORY[0x1EEE9AC00](v29);
  v30 = sub_1DAECF8EC();
  v31 = MEMORY[0x1EEE9AC00](v30);
  v33 = &v199 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = v34;
  v225 = v35;
  (*(v35 + 16))(v33, a2, v31);
  v233 = MEMORY[0x1E69E7CC0];
  sub_1DAD9017C(&qword_1EE00BE58, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
  sub_1DADAAA84();
  v36 = v33;
  sub_1DAED23CC();
  sub_1DAECF47C();
  v37 = v222;
  sub_1DAED0C3C();
  v38 = sub_1DAED0DBC();
  v39 = *(v26 + 8);
  v212 = v28;
  v214 = v25;
  v213 = v26 + 8;
  v211 = v39;
  v39(v28, v25);
  v40 = [v38 extensionIdentity];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1DAEDBE10;
  *(v41 + 32) = swift_getKeyPath();
  *(v41 + 40) = swift_getKeyPath();
  *(v41 + 48) = swift_getKeyPath();
  *(v41 + 56) = swift_getKeyPath();
  *(v41 + 64) = swift_getKeyPath();
  *(v41 + 72) = swift_getKeyPath();
  *(v41 + 80) = swift_getKeyPath();
  *(v41 + 88) = swift_getKeyPath();
  *(v41 + 96) = swift_getKeyPath();
  v42 = v223;
  (v229[7])(v22, 1, 1);
  v43 = v37;
  sub_1DAED0B3C();

  sub_1DAD64398(v22, &qword_1ECC07CE8, &qword_1DAED6F60);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v56 = v226;
    v55 = v227;
    v57 = *(v226 + 32);
    v58 = v216;
    v57(v216, v24, v227);
    v59 = *(v230 + 104);
    v60 = *(*v59 + *MEMORY[0x1E69E6B68] + 16);
    v61 = (*(*v59 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v59 + v61));
    sub_1DAD64398(v59 + v60, &qword_1ECC07DF0, &qword_1DAED5870);
    v62 = sub_1DAED157C();
    (*(*(v62 - 8) + 56))(v59 + v60, 1, 1, v62);
    os_unfair_lock_unlock((v59 + v61));

    (*(v225 + 8))(v36, v224);

    v63 = v228;
    v57(v228, v58, v55);
    return (*(v56 + 56))(v63, 0, 1, v55);
  }

  v44 = v217;
  v45 = v218;
  v46 = (*(v217 + 88))(v24, v218);
  v47 = v45;
  if (v46 == *MEMORY[0x1E6993D10])
  {
    v200 = v36;
    (*(v44 + 96))(v24, v45);
    v48 = v24[1];
    v49 = v219;
    v50 = v220;
    v51 = v230;
    v199 = v40;
    if (v48)
    {
      v52 = *v24;
      v233 = 2108704;
      v234 = 0xE300000000000000;
      MEMORY[0x1E127DA50](v52, v48);

      v53 = v233;
      v54 = v234;
    }

    else
    {
      v53 = 0;
      v54 = 0xE000000000000000;
    }

    v119 = __swift_project_boxed_opaque_existential_1((v51 + 16), *(v51 + 40));
    v120 = v215;
    (*(v49 + 16))(v215, *v119 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v50);
    v121 = v43;

    v122 = sub_1DAECEDCC();
    v123 = sub_1DAED203C();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v230 = swift_slowAlloc();
      v233 = v230;
      *v124 = 136446722;
      v125 = v53;
      v126 = v212;
      sub_1DAED0C3C();
      v127 = sub_1DAED0DBC();
      v211(v126, v214);
      v128 = [v127 _loggingIdentifierWithoutMetrics];

      v129 = sub_1DAED1CEC();
      v131 = v130;

      v132 = sub_1DAD6482C(v129, v131, &v233);

      *(v124 + 4) = v132;
      *(v124 + 12) = 2082;
      v133 = sub_1DAD6482C(v125, v54, &v233);

      *(v124 + 14) = v133;
      *(v124 + 22) = 2082;
      v134 = v208;
      sub_1DAED0B9C();
      sub_1DAD9017C(&unk_1EE00AAD0, MEMORY[0x1E69859A8], MEMORY[0x1E69859D8]);
      v135 = v210;
      v136 = sub_1DAED287C();
      v138 = v137;
      (*(v209 + 8))(v134, v135);
      v139 = sub_1DAD6482C(v136, v138, &v233);

      *(v124 + 24) = v139;
      _os_log_impl(&dword_1DAD61000, v122, v123, "%{public}s placeholder reload: No content%{public}s, (entry protected by: %{public}s)", v124, 0x20u);
      v140 = v230;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v140, -1, -1);
      MEMORY[0x1E127F100](v124, -1, -1);

      (*(v49 + 8))(v215, v220);
    }

    else
    {

      (*(v49 + 8))(v120, v50);
    }

    goto LABEL_20;
  }

  v65 = v219;
  v66 = v220;
  v67 = v230;
  if (v46 == *MEMORY[0x1E6993D18])
  {
    v199 = v40;
    (*(v44 + 96))(v24, v47);
    v221 = v24;
    v68 = v24[5];
    v69 = __swift_project_boxed_opaque_existential_1(v67 + 2, v67[5]);
    v70 = v207;
    (*(v65 + 16))(v207, *v69 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v66);
    v71 = v70;
    v72 = v37;
    v73 = v68;
    v74 = v65;
    v75 = sub_1DAECEDCC();
    v76 = sub_1DAED201C();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v200 = v36;
      v80 = v79;
      v233 = v79;
      *v77 = 136446467;
      v81 = v212;
      v82 = v76;
      sub_1DAED0C3C();
      v83 = sub_1DAED0DBC();
      v211(v81, v214);
      v84 = [v83 _loggingIdentifierWithoutMetrics];

      v85 = sub_1DAED1CEC();
      v87 = v86;

      v88 = sub_1DAD6482C(v85, v87, &v233);

      *(v77 + 4) = v88;
      *(v77 + 12) = 2113;
      v89 = v68;
      v90 = _swift_stdlib_bridgeErrorToNSError();
      *(v77 + 14) = v90;
      *v78 = v90;
      _os_log_impl(&dword_1DAD61000, v75, v82, "%{public}s placeholder reload: could not decode view: %{private}@", v77, 0x16u);
      sub_1DAD64398(v78, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v78, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      v91 = v80;
      v36 = v200;
      MEMORY[0x1E127F100](v91, -1, -1);
      v67 = v230;
      MEMORY[0x1E127F100](v77, -1, -1);

      (*(v219 + 8))(v71, v220);
    }

    else
    {

      (*(v74 + 8))(v71, v66);
    }

    v142 = v225;
    v141 = v226;
    v143 = v224;
    __swift_project_boxed_opaque_existential_1(v67 + 7, v67[10]);
    sub_1DADC551C(2);

    (*(v142 + 8))(v36, v143);
    (*(v141 + 56))(v228, 1, 1, v227);
    v144 = v221;
    return sub_1DAD64398(v144, &unk_1ECC07DE0, &qword_1DAEDBED0);
  }

  v92 = v46 == *MEMORY[0x1E6993D08];
  v200 = v36;
  if (!v92)
  {
    if (v46 != *MEMORY[0x1E6993D20])
    {
      v199 = v40;
      v164 = v205;
      v165 = v219;
      v166 = v47;
      (*(v44 + 32))(v205, v24, v47);
      v167 = __swift_project_boxed_opaque_existential_1(v67 + 2, v67[5]);
      (*(v165 + 16))(v204, *v167 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v66);
      v168 = v202;
      v230 = *(v44 + 16);
      (v230)(v202, v164, v166);
      v169 = v43;
      v170 = v44;
      v171 = sub_1DAECEDCC();
      v172 = sub_1DAED201C();

      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        v174 = swift_slowAlloc();
        v229 = swift_slowAlloc();
        v233 = v229;
        *v173 = 136446466;
        v175 = v212;
        sub_1DAED0C3C();
        v176 = sub_1DAED0DBC();
        v211(v175, v214);
        v177 = [v176 _loggingIdentifierWithoutMetrics];

        v178 = sub_1DAED1CEC();
        v180 = v179;

        v181 = sub_1DAD6482C(v178, v180, &v233);

        *(v173 + 4) = v181;
        *(v173 + 12) = 2114;
        sub_1DAD9017C(&qword_1ECC09C50, MEMORY[0x1E6993D28], MEMORY[0x1E6993D30]);
        v182 = v218;
        swift_allocError();
        (v230)(v183, v168, v182);
        v184 = _swift_stdlib_bridgeErrorToNSError();
        v185 = *(v170 + 8);
        v185(v168, v182);
        *(v173 + 14) = v184;
        *v174 = v184;
        _os_log_impl(&dword_1DAD61000, v171, v172, "%{public}s placeholder reload error: %{public}@", v173, 0x16u);
        sub_1DAD64398(v174, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v174, -1, -1);
        v186 = v229;
        __swift_destroy_boxed_opaque_existential_1Tm(v229);
        MEMORY[0x1E127F100](v186, -1, -1);
        MEMORY[0x1E127F100](v173, -1, -1);

        (*(v219 + 8))(v204, v220);
        v185(v205, v182);
      }

      else
      {

        v194 = *(v170 + 8);
        v194(v168, v166);
        (*(v219 + 8))(v204, v66);
        v194(v205, v166);
      }

LABEL_20:
      (*(v225 + 8))(v200, v224);
      return (*(v226 + 56))(v228, 1, 1, v227);
    }

    (*(v44 + 96))(v24, v47);
    v146 = v24[5];
    v145 = v24[6];
    v221 = v24;
    v147 = __swift_project_boxed_opaque_existential_1(v67 + 2, v67[5]);
    v148 = v203;
    (*(v65 + 16))(v203, *v147 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v66);
    v149 = v43;

    v150 = v65;
    v151 = sub_1DAECEDCC();
    v152 = sub_1DAED203C();

    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      v229 = v146;
      v154 = v153;
      v155 = swift_slowAlloc();
      v233 = v155;
      *v154 = 136446466;
      v156 = v212;
      LODWORD(v223) = v152;
      sub_1DAED0C3C();
      v157 = sub_1DAED0DBC();
      v211(v156, v214);
      v158 = [v157 _loggingIdentifierWithoutMetrics];

      v159 = sub_1DAED1CEC();
      v161 = v160;

      v162 = sub_1DAD6482C(v159, v161, &v233);
      v67 = v230;

      *(v154 + 4) = v162;
      *(v154 + 12) = 2082;
      v163 = sub_1DAD6482C(v229, v145, &v233);

      *(v154 + 14) = v163;
      _os_log_impl(&dword_1DAD61000, v151, v223, "%{public}s placeholder reload: no matching environment - mismatches: %{public}s", v154, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v155, -1, -1);
      MEMORY[0x1E127F100](v154, -1, -1);

      (*(v150 + 8))(v203, v220);
    }

    else
    {

      (*(v150 + 8))(v148, v66);
    }

    v188 = v225;
    v187 = v226;
    sub_1DAED0C5C();
    if (v232)
    {
      v189 = sub_1DAD657D8(&v231, &v233);
      v190 = v67[13];
      MEMORY[0x1EEE9AC00](v189);
      *(&v199 - 2) = &v233;
      v191 = *(*v190 + *MEMORY[0x1E69E6B68] + 16);
      v192 = (*(*v190 + 48) + 3) & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v190 + v192));
      sub_1DAEBC5A0(v190 + v191, &v231);
      os_unfair_lock_unlock((v190 + v192));
      v193 = v231;

      if (v193 == 1)
      {
        __swift_project_boxed_opaque_existential_1(v67 + 7, v67[10]);
        sub_1DADC551C(3);

        (*(v188 + 8))(v200, v224);
      }

      else
      {
        (*(v188 + 8))(v200, v224);
      }

      v197 = v227;
      v196 = v228;
      v198 = v221;
      __swift_destroy_boxed_opaque_existential_1Tm(&v233);
    }

    else
    {
      (*(v188 + 8))(v200, v224);

      sub_1DAD64398(&v231, &unk_1ECC08880, &unk_1DAED6F50);
      v197 = v227;
      v196 = v228;
      v198 = v221;
    }

    (*(v187 + 56))(v196, 1, 1, v197);
    v144 = v198;
    return sub_1DAD64398(v144, &unk_1ECC07DE0, &qword_1DAEDBED0);
  }

  v93 = v219;
  (*(v44 + 96))(v24, v47);
  v94 = __swift_project_boxed_opaque_existential_1(v67 + 2, v67[5]);
  v95 = *(v65 + 16);
  v96 = v206;
  v95(v206, *v94 + OBJC_IVAR____TtC14WidgetRenderer27WidgetArchiveEntryAssertion_logger, v66);
  v97 = v43;
  v98 = sub_1DAECEDCC();
  v99 = sub_1DAED203C();

  if (os_log_type_enabled(v98, v99))
  {
    v221 = v24;
    v199 = v40;
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *&v231 = v101;
    *v100 = 136446466;
    v102 = v212;
    sub_1DAED0C3C();
    v103 = sub_1DAED0DBC();
    v211(v102, v214);
    v104 = [v103 _loggingIdentifierWithoutMetrics];

    v105 = sub_1DAED1CEC();
    v107 = v106;

    v108 = sub_1DAD6482C(v105, v107, &v231);

    *(v100 + 4) = v108;
    *(v100 + 12) = 2082;
    sub_1DAED0B4C();
    if (v235)
    {
      __swift_project_boxed_opaque_existential_1(&v233, v235);
      v109 = v201;
      sub_1DAED177C();
      v110 = v229;
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v111 = qword_1EE00A708;
      v112 = sub_1DAECDC5C();
      v113 = [v111 stringFromDate_];

      v114 = sub_1DAED1CEC();
      v116 = v115;

      (v110[1])(v109, v42);
      __swift_destroy_boxed_opaque_existential_1Tm(&v233);
      v117 = v226;
      v118 = v199;
    }

    else
    {
      sub_1DAD64398(&v233, &unk_1ECC07DE0, &qword_1DAEDBED0);
      v116 = 0xE900000000000064;
      v114 = 0x6E756F6620746F6ELL;
      v117 = v226;
      v118 = v199;
      v110 = v229;
    }

    v195 = sub_1DAD6482C(v114, v116, &v231);

    *(v100 + 14) = v195;
    _os_log_impl(&dword_1DAD61000, v98, v99, "%{public}s placeholder reload: no entry (currentEntry = %{public}s)", v100, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v101, -1, -1);
    MEMORY[0x1E127F100](v100, -1, -1);

    (*(v219 + 8))(v206, v220);
    (*(v225 + 8))(v200, v224);
    v24 = v221;
  }

  else
  {

    (*(v93 + 8))(v96, v66);
    (*(v225 + 8))(v200, v224);
    v117 = v226;
    v110 = v229;
  }

  (*(v117 + 56))(v228, 1, 1, v227);
  return (v110[1])(v24, v42);
}

uint64_t sub_1DADAA76C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF64C();
  *a1 = result;
  return result;
}

uint64_t sub_1DADAA7C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF6FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DADAA834@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF56C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADAA88C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF4EC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADAA8E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF50C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADAA93C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF52C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1DADAAA84()
{
  result = qword_1EE00BE18;
  if (!qword_1EE00BE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09040, &qword_1DAED91C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BE18);
  }

  return result;
}

void sub_1DADAAB0C(uint64_t a1)
{
  sub_1DAD8C31C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1DADAABE4(uint64_t a1)
{
  if (!qword_1EE005B68)
  {
    type metadata accessor for LiveWidgetEntryViewModel(255);
    sub_1DAD7305C(&qword_1EE009E48, type metadata accessor for LiveWidgetEntryViewModel, &protocol conformance descriptor for LiveWidgetEntryViewModel);
    v1 = sub_1DAECF24C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE005B68);
    }
  }
}

void sub_1DADAAC78(uint64_t a1)
{
  if (!qword_1EE005840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECC09AF0, &unk_1DAED7740);
    v1 = sub_1DAED079C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE005840);
    }
  }
}

void sub_1DADAACDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080A0, &qword_1DAED6230);
  v6 = sub_1DAED277C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      v23 = sub_1DAED227C();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1DADAAF4C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1DAED252C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_1DAED227C();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

unint64_t sub_1DADAB16C()
{
  result = qword_1EE005628;
  if (!qword_1EE005628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE005628);
  }

  return result;
}

unint64_t sub_1DADAB1C0(void *a1, uint64_t a2)
{
  v21 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  MEMORY[0x1EEE9AC00](v21);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v2 + 64;
  v22 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v5 + 72);
    do
    {
      sub_1DADAB8DC(*(v22 + 48) + v12 * v10, v7);
      v13 = v7[3];
      v14 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v13);
      (*(v14 + 24))(&v23 + 1, v13, v14);
      v15 = BYTE1(v23);
      v16 = a1[3];
      v17 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v16);
      (*(v17 + 24))(&v23, v16, v17);
      if (v15 == v23 && (sub_1DAED155C() & 1) != 0)
      {
        v18 = sub_1DAECDCAC();
        sub_1DADAB9A4(v7);
        if (v18)
        {
          return v10;
        }
      }

      else
      {
        sub_1DADAB9A4(v7);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_1DADAB3B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v53 = sub_1DAED19AC();
  v5 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B8, &qword_1DAED6240);
  v48 = v4;
  v11 = v10;
  v12 = sub_1DAED277C();
  v13 = v12;
  if (*(v10 + 16))
  {
    v42 = v2;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = v5 + 16;
    v44 = v11;
    v45 = v5;
    v49 = (v5 + 32);
    v20 = v12 + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v51 = *(v46 + 72);
      v27 = v26 + v51 * v25;
      if (v48)
      {
        sub_1DADAB940(v27, v9);
        v28 = *(v11 + 56);
        v50 = *(v45 + 72);
        (*(v45 + 32))(v52, v28 + v50 * v25, v53);
      }

      else
      {
        sub_1DADAB8DC(v27, v9);
        v29 = *(v11 + 56);
        v50 = *(v45 + 72);
        (*(v45 + 16))(v52, v29 + v50 * v25, v53);
      }

      sub_1DAED294C();
      sub_1DAECDCEC();
      sub_1DAD888A8(&qword_1EE00A6F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1DAED1C6C();
      sub_1DAED157C();
      sub_1DAD888A8(&qword_1EE005720, MEMORY[0x1E6985700], MEMORY[0x1E6985710]);
      sub_1DAED1C6C();
      v30 = v9[3];
      v31 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v30);
      (*(v31 + 24))(&v54, v30, v31);
      MEMORY[0x1E127E5D0](v54);
      v32 = sub_1DAED297C();
      v33 = -1 << *(v13 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v20 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v11 = v44;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v20 + 8 * v35);
          if (v39 != -1)
          {
            v21 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v34) & ~*(v20 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v11 = v44;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_1DADAB940(v9, *(v13 + 48) + v51 * v21);
      (*v49)(*(v13 + 56) + v50 * v21, v52, v53);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_34;
    }

    v40 = 1 << *(v11 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v15, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v40;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
}

uint64_t sub_1DADAB8DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADAB940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADAB9A4(uint64_t a1)
{
  v2 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DADABA00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DAED233C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DADABA54(uint64_t a1)
{
  sub_1DADABA00(319, &qword_1EE0057C0, MEMORY[0x1E6993D98]);
  if (v1 <= 0x3F)
  {
    sub_1DADABA00(319, &qword_1EE00C278, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      sub_1DAD8D644();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DADABB28()
{
  result = qword_1EE008CE8;
  if (!qword_1EE008CE8)
  {
    type metadata accessor for TintedWidgetViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE008CE8);
  }

  return result;
}

void sub_1DADABB80(uint64_t a1)
{
  if (!qword_1EE005B60)
  {
    type metadata accessor for TintedWidgetViewModel(255);
    sub_1DADABB28();
    v1 = sub_1DAECF24C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE005B60);
    }
  }
}

void sub_1DADABBE4(uint64_t a1)
{
  sub_1DADABB80(319);
  if (v1 <= 0x3F)
  {
    sub_1DAED233C();
    if (v2 <= 0x3F)
    {
      sub_1DAED233C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DADABC88(uint64_t a1)
{
  sub_1DADA59CC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1DADABD40()
{
  result = qword_1EE00BE60;
  if (!qword_1EE00BE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC091E8, &qword_1DAED9168);
    sub_1DADABDF8();
    sub_1DAD64B94(&qword_1EE00BE28, &qword_1ECC091D8, &qword_1DAED9128, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BE60);
  }

  return result;
}

unint64_t sub_1DADABDF8()
{
  result = qword_1EE00BE70;
  if (!qword_1EE00BE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC091D0, &qword_1DAED9120);
    sub_1DAD64B94(&qword_1EE00BE48, &qword_1ECC091E0, &qword_1DAED9130, MEMORY[0x1E697FDF8]);
    sub_1DAD64B94(&qword_1EE00BE28, &qword_1ECC091D8, &qword_1DAED9128, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BE70);
  }

  return result;
}

uint64_t sub_1DADABEF8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09200, &qword_1DAED9180);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC091F8, &qword_1DAED9178);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC091F0, &qword_1DAED9170);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09210, &qword_1DAED9190);
  sub_1DAD64B94(&qword_1EE00BE40, &qword_1ECC09210, &qword_1DAED9190, MEMORY[0x1E697FDF8]);
  swift_getOpaqueTypeConformance2();
  sub_1DAD64B94(&unk_1EE00AB90, &qword_1ECC091F0, &qword_1DAED9170, MEMORY[0x1E697F820]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t LiveWidgetEntryLaunchHandlingModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09798, &qword_1DAEDA278);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097A0, &qword_1DAEDA280);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097A8, &qword_1DAEDA288);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097B0, &qword_1DAEDA290);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v34 = &v32 - v15;
  v16 = *v2;
  v17 = v2[1];
  v18 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canConsumeLaunchRequest;
  v19 = *(v17 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canConsumeLaunchRequest);
  v20 = swift_allocObject();
  *(v20 + 16) = v16;
  *(v20 + 24) = v17;
  if (v19 == 1)
  {
    KeyPath = swift_getKeyPath();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097B8, &qword_1DAEDA298);
    (*(*(v22 - 8) + 16))(v7, v32, v22);
    v32 = v18;
    v23 = &v7[*(v33 + 36)];
    *v23 = sub_1DAE38D84;
    *(v23 + 1) = v17;
    *(v23 + 2) = sub_1DAE38D88;
    *(v23 + 3) = v20;
    *(v23 + 4) = KeyPath;
    *(v23 + 20) = 0;
    sub_1DAD6495C(v7, v5, &qword_1ECC097A0, &qword_1DAEDA280);
    swift_storeEnumTagMultiPayload();
    sub_1DAD71850();
    sub_1DAD64B94(&qword_1EE0058F0, &qword_1ECC097B8, &qword_1DAEDA298, MEMORY[0x1E697FDF8]);
    swift_retain_n();
    v18 = v32;
    sub_1DAECFB1C();
    sub_1DAD64398(v7, &qword_1ECC097A0, &qword_1DAEDA280);
  }

  else
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097B8, &qword_1DAEDA298);
    (*(*(v24 - 8) + 16))(v5, v32, v24);
    swift_storeEnumTagMultiPayload();
    sub_1DAD71850();
    sub_1DAD64B94(&qword_1EE0058F0, &qword_1ECC097B8, &qword_1DAEDA298, MEMORY[0x1E697FDF8]);
    swift_retain_n();
    sub_1DAECFB1C();
  }

  sub_1DAD7C48C(v10, v13, &qword_1ECC097A8, &qword_1DAEDA288);
  v25 = *(v17 + v18);

  v26 = v34;
  sub_1DADAC638(v25, sub_1DAE38D90, v17);

  sub_1DAD64398(v13, &qword_1ECC097A8, &qword_1DAEDA288);
  if (*(v17 + v18) == 1 && (sub_1DAD648F8(v17 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v36), v27 = v37, v28 = v38, __swift_project_boxed_opaque_existential_1(v36, v37), (*(v28 + 24))(&v39, v27, v28), __swift_destroy_boxed_opaque_existential_1Tm(v36), v39 != 2))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    v29 = LOBYTE(v36[0]) ^ 1;
  }

  else
  {
    v29 = 0;
  }

  v30 = v35;
  sub_1DAD7C48C(v26, v35, &qword_1ECC097B0, &qword_1DAEDA290);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097C0, &qword_1DAEDA2A0);
  *(v30 + *(result + 36)) = v29 & 1;
  return result;
}

void *sub_1DADAC638(char a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097D0, &qword_1DAEDA450);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097C8, &qword_1DAEDA448);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  if (a1)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = a3;

    sub_1DAECF1BC();
    sub_1DAD6495C(v5, v14, &qword_1ECC097A8, &qword_1DAEDA288);
    sub_1DAD6495C(v14, v11, &qword_1ECC097C8, &qword_1DAEDA448);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097A8, &qword_1DAEDA288);
    sub_1DAD716DC();
    sub_1DAD71798();
    sub_1DAECFB1C();
    return sub_1DAD64398(v14, &qword_1ECC097C8, &qword_1DAEDA448);
  }

  else
  {
    sub_1DAD6495C(v5, v11, &qword_1ECC097A8, &qword_1DAEDA288);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097A8, &qword_1DAEDA288);
    sub_1DAD716DC();
    sub_1DAD71798();
    return sub_1DAECFB1C();
  }
}

uint64_t sub_1DADAC890()
{

  return swift_deallocObject();
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t type metadata accessor for WidgetMetricsAggregator(uint64_t a1)
{
  result = qword_1EE0088D8;
  if (!qword_1EE0088D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DADAC950()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09958, &unk_1DAEDA888);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14[-v5];
  v7 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configuration);
  if (v7)
  {
    v8 = v7;
    sub_1DAED222C();
    v9 = sub_1DAED11EC();
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
    v10 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetWidgetViewIdentity;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v10, v3, &qword_1ECC09958, &unk_1DAEDA888);
    swift_beginAccess();
    sub_1DAD901C4(v6, v0 + v10, &qword_1ECC09958, &unk_1DAEDA888);
    swift_endAccess();
    sub_1DADACBD0(v3);
  }

  else
  {
    v11 = sub_1DAED11EC();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetWidgetViewIdentity;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v12, v3, &qword_1ECC09958, &unk_1DAEDA888);
    swift_beginAccess();
    sub_1DAD901C4(v6, v0 + v12, &qword_1ECC09958, &unk_1DAEDA888);
    swift_endAccess();
    sub_1DADACBD0(v3);
  }

  sub_1DAD64398(v3, &qword_1ECC09958, &unk_1DAEDA888);
  return sub_1DAD64398(v6, &qword_1ECC09958, &unk_1DAEDA888);
}

uint64_t sub_1DADACBD0(uint64_t a1)
{
  v56 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v47 = &v45[-v3];
  v4 = sub_1DAECDCEC();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1DAED11EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v45[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09958, &unk_1DAEDA888);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09960, &qword_1DAEDA898);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v45[-v18];
  v20 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetWidgetViewIdentity;
  swift_beginAccess();
  v21 = *(v17 + 56);
  v54 = v1;
  v22 = v1 + v20;
  v23 = v56;
  sub_1DAD6495C(v22, v19, &qword_1ECC09958, &unk_1DAEDA888);
  sub_1DAD6495C(v23, &v19[v21], &qword_1ECC09958, &unk_1DAEDA888);
  v55 = v7;
  v24 = *(v7 + 48);
  if (v24(v19, 1, v6) == 1)
  {
    if (v24(&v19[v21], 1, v6) == 1)
    {
      return sub_1DAD64398(v19, &qword_1ECC09958, &unk_1DAEDA888);
    }

    goto LABEL_6;
  }

  sub_1DAD6495C(v19, v15, &qword_1ECC09958, &unk_1DAEDA888);
  if (v24(&v19[v21], 1, v6) == 1)
  {
    (*(v55 + 8))(v15, v6);
LABEL_6:
    sub_1DAD64398(v19, &qword_1ECC09960, &qword_1DAEDA898);
    goto LABEL_7;
  }

  v40 = v55;
  v41 = v51;
  (*(v55 + 32))(v51, &v19[v21], v6);
  sub_1DAE3B004(&qword_1EE005778, MEMORY[0x1E6993ED0], MEMORY[0x1E6993ED8]);
  v46 = sub_1DAED1CAC();
  v42 = *(v40 + 8);
  v42(v41, v6);
  v42(v15, v6);
  v23 = v56;
  result = sub_1DAD64398(v19, &qword_1ECC09958, &unk_1DAEDA888);
  if ((v46 & 1) == 0)
  {
LABEL_7:
    v25 = v24(v23, 1, v6);
    v26 = v54;
    if (v25 != 1)
    {
      sub_1DAD6EAB8();
    }

    v19 = v53;
    sub_1DAD6495C(v26 + v20, v53, &qword_1ECC09958, &unk_1DAEDA888);
    if (v24(v19, 1, v6) == 1)
    {
      return sub_1DAD64398(v19, &qword_1ECC09958, &unk_1DAEDA888);
    }

    v28 = v52;
    (*(v55 + 32))(v52, v19, v6);
    if (*(v26 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession) != 1)
    {
      return (*(v55 + 8))(v28, v6);
    }

    Strong = swift_weakLoadStrong();
    v30 = v48;
    if (Strong)
    {
      sub_1DAD648F8(Strong + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v57);
      v31 = v58;
      v32 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v33 = (*(v32 + 16))(v31, v32);
      sub_1DAED0C5C();

      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      if (v61)
      {
        v34 = v6;
        __swift_project_boxed_opaque_existential_1(v60, v61);
        v35 = v47;
        sub_1DAED1A3C();
        v36 = v35;
        __swift_destroy_boxed_opaque_existential_1Tm(v60);
        v37 = v49;
        v38 = v35;
        v39 = v50;
        if ((*(v49 + 48))(v38, 1, v50) != 1)
        {
          (*(v37 + 32))(v30, v36, v39);
LABEL_23:
          sub_1DAD648F8(v26 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewRecorder, v60);
          __swift_project_boxed_opaque_existential_1(v60, v61);
          v43 = v52;
          v44 = sub_1DAED122C();
          (*(v37 + 8))(v30, v39);
          (*(v55 + 8))(v43, v34);
          *(v26 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry) = v44;

          return __swift_destroy_boxed_opaque_existential_1Tm(v60);
        }

LABEL_21:
        sub_1DAECDC3C();
        if ((*(v37 + 48))(v36, 1, v39) != 1)
        {
          sub_1DAD64398(v36, &qword_1ECC07CE8, &qword_1DAED6F60);
        }

        goto LABEL_23;
      }

      sub_1DAD64398(v60, &unk_1ECC08880, &unk_1DAED6F50);
    }

    v34 = v6;
    v37 = v49;
    v39 = v50;
    v36 = v47;
    (*(v49 + 56))(v47, 1, 1, v50);
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_1DADAD358()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08850, &qword_1DAED7280);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24[-v5];
  v7 = *(v0 + 72);
  if (!v7)
  {
LABEL_10:
    v21 = sub_1DAED12CC();
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
    v22 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
    swift_beginAccess();
    sub_1DAD6495C(v0 + v22, v3, &qword_1ECC08850, &qword_1DAED7280);
    swift_beginAccess();
    sub_1DAD901C4(v6, v0 + v22, &qword_1ECC08850, &qword_1DAED7280);
    swift_endAccess();
    sub_1DADB34A4(v3);
    goto LABEL_11;
  }

  v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configuration);
  if (!v8)
  {
    v12 = v0;
    v13 = *(v0 + 64);
    v14 = qword_1EE005E88;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = sub_1DAECEDEC();
    __swift_project_value_buffer(v15, qword_1EE0117D8);

    v16 = sub_1DAECEDCC();
    v17 = sub_1DAED201C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25[0] = v19;
      *v18 = 136446210;
      v20 = sub_1DAD6482C(v13, v7, v25);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_1DAD61000, v16, v17, "[MetricsAggregator] No configuration found for configured widget identifier: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1E127F100](v19, -1, -1);
      MEMORY[0x1E127F100](v18, -1, -1);
    }

    else
    {
    }

    v0 = v12;
    goto LABEL_10;
  }

  v9 = v8;
  sub_1DAED223C();
  v10 = sub_1DAED12CC();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
  swift_beginAccess();
  sub_1DAD6495C(v0 + v11, v3, &qword_1ECC08850, &qword_1DAED7280);
  swift_beginAccess();
  sub_1DAD901C4(v6, v0 + v11, &qword_1ECC08850, &qword_1DAED7280);
  swift_endAccess();
  sub_1DADB34A4(v3);

LABEL_11:
  sub_1DAD64398(v3, &qword_1ECC08850, &qword_1DAED7280);
  return sub_1DAD64398(v6, &qword_1ECC08850, &qword_1DAED7280);
}

uint64_t sub_1DADAD720@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TintedWidgetViewModel(0);
  result = sub_1DAECEE4C();
  *a2 = result;
  return result;
}

uint64_t sub_1DADAD760(uint64_t a1, void *a2)
{
  v28 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  v4 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v24 - v8;
  v26 = a1;
  v10 = [*(a1 + 40) array];
  v11 = sub_1DAED1E7C();

  v12 = sub_1DADADA44(v11);

  v13 = *(v12 + 16);
  if (v13)
  {
    v24 = v12;
    v14 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v27 = *(v4 + 72);
    do
    {
      sub_1DADBA01C(v14, v9, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
      v15 = &v9[*(v28 + 20)];
      v16 = *(v15 + 3);
      v17 = *(v15 + 4);
      __swift_project_boxed_opaque_existential_1(v15, v16);
      (*(v17 + 24))(&v29 + 1, v16, v17);
      v18 = BYTE1(v29);
      v19 = a2[3];
      v20 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v19);
      (*(v20 + 24))(&v29, v19, v20);
      if (v18 == v29)
      {
        type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
        if (sub_1DAED155C() & 1) != 0 && (sub_1DAECDCAC())
        {
          v21 = *(v26 + 40);
          sub_1DADBA01C(v9, v25, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
          v22 = v21;
          [v22 removeObject_];

          swift_unknownObjectRelease();
        }
      }

      sub_1DADB2450(v9, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
      v14 += v27;
      --v13;
    }

    while (v13);
  }
}

uint64_t sub_1DADADA44(uint64_t a1)
{
  v2 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DAE02264(0, v6, 0);
    v7 = v14;
    v8 = a1 + 32;
    do
    {
      sub_1DAD642F8(v8, v13);
      swift_dynamicCast();
      v14 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1DAE02264((v9 > 1), v10 + 1, 1);
        v7 = v14;
      }

      *(v7 + 16) = v10 + 1;
      sub_1DAEAFDA8(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
      v8 += 32;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t TintedWidgetView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = *(a1 + 16);
  sub_1DAED233C();
  sub_1DAECF2AC();
  sub_1DAED233C();
  v4 = *(a1 + 24);
  sub_1DAED233C();
  sub_1DAECF2AC();
  sub_1DAECF2AC();
  sub_1DAED233C();
  swift_getTupleTypeMetadata2();
  sub_1DAED097C();
  swift_getWitnessTable();
  v5 = sub_1DAED086C();
  v21 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC099D8, &qword_1DAEDB218);
  v8 = sub_1DAECF2AC();
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v24 = v3;
  v25 = v4;
  v26 = *(a1 + 32);
  v27 = v20;
  sub_1DAED091C();
  sub_1DAED085C();
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF3C();

  v14 = v30;
  v15 = [v30 accentedDesaturatedMode];

  v30 = v15;
  WitnessTable = swift_getWitnessTable();
  sub_1DAED040C();

  (*(v21 + 8))(v7, v5);
  v17 = sub_1DAD64B94(&qword_1EE005870, &qword_1ECC099D8, &qword_1DAEDB218, MEMORY[0x1E6980A18]);
  v28 = WitnessTable;
  v29 = v17;
  swift_getWitnessTable();
  sub_1DADB6258(v10, v8, v13);
  v18 = *(v22 + 8);
  v18(v10, v8);
  sub_1DADB6258(v13, v8, v23);
  return (v18)(v13, v8);
}

uint64_t sub_1DADADFFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF7DC();
  *a1 = result;
  return result;
}

uint64_t sub_1DADAE050(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_1DADAE064()
{
  result = qword_1EE0081F0;
  if (!qword_1EE0081F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0081F0);
  }

  return result;
}

uint64_t sub_1DADAE0B8(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetURLReaderModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1DAD75350(a1, v4);
}

void sub_1DADAE128(void *a1, const char *a2, ...)
{
  BSDispatchQueueAssertMain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v21 = a1;
  v7 = [v6 nullableWidget];
  if (v7)
  {

    if (qword_1EE005E48 != -1)
    {
      swift_once();
    }

    v8 = sub_1DAECEDEC();
    __swift_project_value_buffer(v8, qword_1EE011748);
    v9 = v21;
    v10 = v2;
    v21 = sub_1DAECEDCC();
    v11 = sub_1DAED1FFC();

    if (os_log_type_enabled(v21, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446210;
      v14 = *&v10[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
      if (v14)
      {
        v15 = (v14 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
        v17 = *v15;
        v16 = v15[1];
      }

      else
      {
        v18 = v9;
        v17 = sub_1DAD8CE78(v6);
        v16 = v19;
      }

      v20 = sub_1DAD6482C(v17, v16, &v22);

      *(v12 + 4) = v20;
      _os_log_impl(&dword_1DAD61000, v21, v11, a2, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);

      return;
    }
  }
}

void sub_1DADAE36C(char *a1, uint64_t a2)
{
  v2 = *a1;
  BSDispatchQueueAssertMain();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    isEscapingClosureAtFileLocation = Strong;
    v5 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene;
    if ([*(Strong + OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_scene) wantsBaseContentTouchEvents])
    {
      v6 = [*(isEscapingClosureAtFileLocation + v5) _FBSScene];
      v7 = swift_allocObject();
      *(v7 + 16) = v2;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1DAE102D4;
      *(v8 + 24) = v7;
      aBlock[4] = sub_1DADB8C24;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DADB8220;
      aBlock[3] = &block_descriptor_8;
      v9 = _Block_copy(aBlock);

      [v6 updateClientSettings_];

      _Block_release(v9);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }
  }
}

uint64_t sub_1DADAE53C(uint64_t a1)
{
  v2 = sub_1DAED0DDC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED0DBC();
  v7 = [v6 widgetByReplacingIntent_];

  v8 = v7;
  sub_1DAED0DCC();
  sub_1DAED0DAC();
  sub_1DAD85CEC(v5);
  sub_1DAD85CEC(a1);

  return (*(v3 + 8))(v5, v2);
}

void sub_1DADAE690(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v78 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083C0, &qword_1DAED6768);
  v83 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v78 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083C8, &unk_1DAED6770);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v78 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v91);
  v88 = (&v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v78 - v12;
  BSDispatchQueueAssertMain();
  aBlock[0] = a2;
  v92 = sub_1DAED29CC();
  v14 = v13;
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v15 = sub_1DAECEDEC();
  __swift_project_value_buffer(v15, qword_1EE011748);
  v16 = a1;
  v17 = v2;

  v18 = sub_1DAECEDCC();
  v19 = sub_1DAED203C();

  if (os_log_type_enabled(v18, v19))
  {
    v89 = v16;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136446466;
    v22 = *&v17[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
    if (v22)
    {
      v23 = (v22 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
      v25 = *v23;
      v24 = v23[1];
    }

    else
    {
      v26 = v89;
      v81 = v7;
      v27 = v17;
      v28 = a2;
      v29 = v14;
      v30 = v26;
      v25 = sub_1DAD8CE78(v26);
      v24 = v31;

      v14 = v29;
      a2 = v28;
      v17 = v27;
      v7 = v81;
    }

    v32 = sub_1DAD6482C(v25, v24, aBlock);

    *(v20 + 4) = v32;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_1DAD6482C(v92, v14, aBlock);
    _os_log_impl(&dword_1DAD61000, v18, v19, "[%{public}s] Received content confirmation action %{public}s): waiting for live scene content", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v21, -1, -1);
    MEMORY[0x1E127F100](v20, -1, -1);

    v16 = v89;
  }

  else
  {
  }

  if (!*&v17[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_foregroundScene])
  {
    sub_1DAD674D4(0, &unk_1EE005490, 0x1E696ABC0);
    v49 = 0;
    goto LABEL_24;
  }

  v33 = *&v17[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (!v33 || (v34 = *(v33 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController)) == 0)
  {
    sub_1DAD674D4(0, &unk_1EE005490, 0x1E696ABC0);
    v49 = 1;
LABEL_24:
    v50 = sub_1DADD7B94(v49, 0, 2, 0, 0);
    BSDispatchQueueAssertMain();
    sub_1DADC5B84(a2, v17, v16, v92, v14, v50);

    return;
  }

  v35 = v16;
  v89 = v14;
  v36 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel;
  v37 = *&v34[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel];
  v38 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
  swift_beginAccess();
  v39 = v37 + v38;
  v40 = v90;
  sub_1DAD6495C(v39, v90, &unk_1ECC07D30, &unk_1DAED57E0);
  LODWORD(v38) = swift_getEnumCaseMultiPayload();
  v80 = v34;
  sub_1DAD64398(v40, &unk_1ECC07D30, &unk_1DAED57E0);
  if (v38 == 1 && [v16 contentType] == 2 || (v81 = v7, v41 = *&v34[v36], v42 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry, swift_beginAccess(), v43 = v41 + v42, v44 = v88, sub_1DAD6495C(v43, v88, &unk_1ECC07D30, &unk_1DAED57E0), LODWORD(v41) = swift_getEnumCaseMultiPayload(), sub_1DAD64398(v44, &unk_1ECC07D30, &unk_1DAED57E0), !v41) && objc_msgSend(v16, sel_contentType) != 2)
  {
    v77 = v80;

    sub_1DADB0000(0, a2, v17, v16, v92, v89);
  }

  else
  {
    if (qword_1EE008AD8 != -1)
    {
      swift_once();
    }

    if (byte_1ECC08188 == 1 && (v45 = [v16 widget], v46 = objc_msgSend(v45, sel_extensionIdentity), v45, LODWORD(v45) = objc_msgSend(v46, sel_isRemote), v46, v45) && objc_msgSend(v35, sel_contentType) == 2)
    {
      v47 = v80;

      v48 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E69941E8] code:4001 userInfo:0];
      BSDispatchQueueAssertMain();
      sub_1DADC5B84(a2, v17, v35, v92, v89, v48);
    }

    else
    {
      v51 = swift_allocObject();
      v91 = v51;
      v79 = a2;
      *(v51 + 16) = 0;
      v88 = (v51 + 16);
      v52 = *&v34[v36];

      v53 = v80;

      v54 = *(v52 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher);

      aBlock[0] = v54;
      v55 = swift_allocObject();
      *(v55 + 16) = v35;
      *(v55 + 24) = v53;
      v56 = v35;
      v90 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083D0, qword_1DAED6780);
      sub_1DAD64B94(&qword_1EE005C88, &unk_1ECC083D0, qword_1DAED6780, MEMORY[0x1E695BED8]);
      v57 = v82;
      sub_1DAECEF9C();

      sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
      v58 = sub_1DAED20EC();
      aBlock[0] = v58;
      v59 = sub_1DAED20AC();
      v60 = v84;
      (*(*(v59 - 8) + 56))(v84, 1, 1, v59);
      sub_1DAD64B94(&qword_1EE005DB0, &qword_1ECC083C0, &qword_1DAED6768, MEMORY[0x1E695BC90]);
      sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610, MEMORY[0x1E69E8028]);
      v61 = v85;
      v62 = v81;
      sub_1DAECEFBC();
      sub_1DAD64398(v60, &unk_1ECC07D20, &unk_1DAED57D0);

      (*(v83 + 8))(v57, v62);
      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v64 = swift_allocObject();
      v65 = v79;
      v64[2] = v63;
      v64[3] = v65;
      v64[4] = v17;
      v64[5] = v56;
      v66 = v91;
      v67 = v92;
      v68 = v89;
      v64[6] = v92;
      v64[7] = v68;
      v64[8] = v66;
      sub_1DAD64B94(&qword_1EE005D00, &qword_1ECC083C8, &unk_1DAED6770, MEMORY[0x1E695BE98]);
      v69 = v56;
      v17;

      v84 = v65;

      v70 = v87;
      v71 = sub_1DAECF00C();

      (*(v86 + 8))(v61, v70);
      v72 = v88;
      swift_beginAccess();
      *v72 = v71;

      v73 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v74 = swift_allocObject();
      v74[2] = v73;
      v74[3] = v69;
      v74[4] = v67;
      v74[5] = v68;
      v74[6] = v71;
      aBlock[4] = sub_1DADE6398;
      aBlock[5] = v74;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAD751C0;
      aBlock[3] = &block_descriptor_152;
      v75 = _Block_copy(aBlock);
      swift_retain_n();
      v76 = v69;

      [v84 setNullificationHandler_];
      _Block_release(v75);
      swift_beginAccess();

      sub_1DADC3638(&v93, v71);
      swift_endAccess();
    }
  }
}

uint64_t sub_1DADAF310()
{

  return swift_deallocObject();
}

uint64_t sub_1DADAF348()
{

  return swift_deallocObject();
}

uint64_t sub_1DADAF388()
{

  return swift_deallocObject();
}

uint64_t sub_1DADAF3F0(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1DAED241C();
    v5 = v4;
    v6 = sub_1DAED24DC();
    v8 = v7;
    v9 = MEMORY[0x1E127E0C0](v3, v5, v6, v7);
    sub_1DADAE050(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1DADAE050(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_1DAED23DC();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1DADA7D44(v3, v5, v2 != 0, a1, &unk_1EE00A880, 0x1E698E5F0);
  v12 = v11;
  sub_1DADAE050(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_1DADAF570(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09990, &qword_1DAEDAB08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DADB2F58();
  sub_1DAED29AC();
  if (!v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

double sub_1DADAF698(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1DAD70BB4(a1, a2);
  }

  return result;
}

uint64_t sub_1DADAF81C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

double sub_1DADAF8A8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1DAECDC1C();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1DADAF698(v4, v8);

  return result;
}

double sub_1DADAF954(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *, void *))
{
  BSDispatchQueueAssert();
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
      if (qword_1EE005E90 != -1)
      {
        swift_once();
      }

      v11 = sub_1DAECEDEC();
      __swift_project_value_buffer(v11, qword_1EE0117F0);
      v12 = a5;
      v13 = sub_1DAECEDCC();
      v14 = sub_1DAED201C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138543362;
        *(v15 + 4) = v12;
        *v16 = v12;
        v17 = v12;
        _os_log_impl(&dword_1DAD61000, v13, v14, "Error subscribing to session %{public}@: unknown response", v15, 0xCu);
        sub_1DAD64398(v16, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v16, -1, -1);
        MEMORY[0x1E127F100](v15, -1, -1);
      }

      v42 = 1;
      a6(&v42, 0);
      return result;
    }

    goto LABEL_9;
  }

  if (a3)
  {
LABEL_9:
    v19 = a3;
    v20 = a3;
    v21 = a3;
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v22 = sub_1DAECEDEC();
    __swift_project_value_buffer(v22, qword_1EE0117F0);
    v23 = a5;
    v24 = a3;
    v25 = sub_1DAECEDCC();
    v26 = sub_1DAED201C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543618;
      *(v27 + 4) = v23;
      *v28 = v23;
      *(v27 + 12) = 2114;
      v29 = v23;
      v30 = v19;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 14) = v31;
      v28[1] = v31;
      _os_log_impl(&dword_1DAD61000, v25, v26, "Error subscribing to session %{public}@: %{public}@", v27, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CF0, &qword_1DAED57A0);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v28, -1, -1);
      MEMORY[0x1E127F100](v27, -1, -1);
    }

    v41 = 1;
    v32 = v19;
    a6(&v41, v19);

    return result;
  }

  sub_1DAECDACC();
  swift_allocObject();
  sub_1DADAFE40(a1, a2);
  sub_1DAECDABC();
  sub_1DADAE064();
  sub_1DAECDAAC();

  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v33 = sub_1DAECEDEC();
  __swift_project_value_buffer(v33, qword_1EE0117F0);
  v34 = a5;
  v35 = sub_1DAECEDCC();
  v36 = sub_1DAED200C();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138543362;
    *(v37 + 4) = v34;
    *v38 = v34;
    v39 = v34;
    _os_log_impl(&dword_1DAD61000, v35, v36, "Successfully subscribed to session: %{public}@", v37, 0xCu);
    sub_1DAD64398(v38, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v38, -1, -1);
    MEMORY[0x1E127F100](v37, -1, -1);
  }

  v40[0] = 0;
  a6(v40, 0);
  return sub_1DADAF698(a1, a2);
}

uint64_t sub_1DADAFE40(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_1DADAFE9C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a2;
  v8[4] = sub_1DADA7378;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1DAD751C0;
  v8[3] = &block_descriptor_87;
  v6 = _Block_copy(v8);

  v7 = a2;

  BSDispatchMain();
  _Block_release(v6);
}

uint64_t sub_1DADAFF78()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_195Tm()
{

  return swift_deallocObject();
}

void sub_1DADB0000(void *a1, void *a2, char *a3, void *a4, uint64_t a5, unint64_t a6)
{
  BSDispatchQueueAssertMain();
  if (a1)
  {

    sub_1DADC5B84(a2, a3, a4, a5, a6, a1);
    return;
  }

  v12 = OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection;
  v13 = *&a3[OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_connection];
  if (v13)
  {
    v14 = *(v13 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
    if (v14)
    {
      v15 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
      swift_beginAccess();
      v16 = *&v14[v15];
      type metadata accessor for SecureHostingController(0);
      sub_1DAD8E1BC(qword_1EE00AFA0, type metadata accessor for SecureHostingController, MEMORY[0x1E697C600]);
      v17 = v14;
      v18 = v16;
      if (sub_1DAECF9AC())
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (!v19)
        {

          swift_unknownObjectRelease();
          goto LABEL_13;
        }

        [v19 setNeedsSynchronousUpdate_];
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_13:
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v20 = sub_1DAECEDEC();
  __swift_project_value_buffer(v20, qword_1EE011748);
  v21 = a4;
  v22 = a3;
  v23 = sub_1DAECEDCC();
  v24 = sub_1DAED203C();

  if (os_log_type_enabled(v23, v24))
  {
    v39 = a6;
    v40 = a5;
    v38 = v14;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v41 = v26;
    *v25 = 136446210;
    v27 = *&a3[v12];
    if (v27)
    {
      v28 = (v27 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier);
      v29 = *v28;
      v30 = v28[1];
    }

    else
    {
      v31 = v21;
      v29 = sub_1DAD8CE78(v31);
      v30 = v32;
    }

    v33 = sub_1DAD6482C(v29, v30, &v41);

    *(v25 + 4) = v33;
    _os_log_impl(&dword_1DAD61000, v23, v24, "[%{public}s] Waiting on SwiftUI layout", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x1E127F100](v26, -1, -1);
    MEMORY[0x1E127F100](v25, -1, -1);

    v14 = v38;
    a6 = v39;
    a5 = v40;
  }

  else
  {
  }

  sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  v34 = swift_allocObject();
  v34[2] = v22;
  v34[3] = v21;
  v34[4] = a2;
  v34[5] = a5;
  v34[6] = a6;
  v34[7] = 0;
  v35 = v21;
  v36 = v22;
  v37 = a2;

  sub_1DAED22FC();
}

uint64_t sub_1DADB03C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v30 = a3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099E0, &qword_1DAEDB3D8);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099E8, &qword_1DAEDB3E0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099F0, &qword_1DAEDB3E8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC099F8, &qword_1DAEDB3F0);
  MEMORY[0x1EEE9AC00](v29);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A00, &qword_1DAEDB3F8);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = &v27 - v17;
  v19 = [a2 filterStyle];
  if ((v19 - 3) < 4)
  {
    goto LABEL_2;
  }

  if (v19 == 7)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A08, &qword_1DAEDB400);
    (*(*(v25 - 8) + 16))(v12, a1, v25);
    swift_storeEnumTagMultiPayload();
    sub_1DAD64B94(qword_1EE008E08, &qword_1ECC09A00, &qword_1DAEDB3F8, &unk_1DAEDB578);
    sub_1DAD64B94(&qword_1EE0058E8, &qword_1ECC09A08, &qword_1DAEDB400, MEMORY[0x1E697FDF8]);
    sub_1DAECFB1C();
    v23 = &qword_1ECC099F8;
    v24 = &qword_1DAEDB3F0;
    sub_1DAD6495C(v14, v9, &qword_1ECC099F8, &qword_1DAEDB3F0);
    swift_storeEnumTagMultiPayload();
    sub_1DADB0964();
    sub_1DAD64B94(qword_1EE008D80, &qword_1ECC099E0, &qword_1DAEDB3D8, &unk_1DAEDB528);
    sub_1DAECFB1C();
    v20 = v14;
    goto LABEL_7;
  }

  if (v19)
  {
    sub_1DAE46454(a1, a2, v6);
    v23 = &qword_1ECC099E0;
    v24 = &qword_1DAEDB3D8;
    sub_1DAD6495C(v6, v9, &qword_1ECC099E0, &qword_1DAEDB3D8);
    swift_storeEnumTagMultiPayload();
    sub_1DADB0964();
    sub_1DAD64B94(qword_1EE008D80, &qword_1ECC099E0, &qword_1DAEDB3D8, &unk_1DAEDB528);
    sub_1DAECFB1C();
    v20 = v6;
LABEL_7:
    v21 = v23;
    v22 = v24;
    return sub_1DAD64398(v20, v21, v22);
  }

LABEL_2:
  v27 = v7;
  sub_1DAE46804(a1, a2, v18);
  sub_1DAD6495C(v18, v12, &qword_1ECC09A00, &qword_1DAEDB3F8);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A08, &qword_1DAEDB400);
  sub_1DAD64B94(qword_1EE008E08, &qword_1ECC09A00, &qword_1DAEDB3F8, &unk_1DAEDB578);
  sub_1DAD64B94(&qword_1EE0058E8, &qword_1ECC09A08, &qword_1DAEDB400, MEMORY[0x1E697FDF8]);
  sub_1DAECFB1C();
  sub_1DAD6495C(v14, v9, &qword_1ECC099F8, &qword_1DAEDB3F0);
  swift_storeEnumTagMultiPayload();
  sub_1DADB0964();
  sub_1DAD64B94(qword_1EE008D80, &qword_1ECC099E0, &qword_1DAEDB3D8, &unk_1DAEDB528);
  sub_1DAECFB1C();
  sub_1DAD64398(v14, &qword_1ECC099F8, &qword_1DAEDB3F0);
  v20 = v18;
  v21 = &qword_1ECC09A00;
  v22 = &qword_1DAEDB3F8;
  return sub_1DAD64398(v20, v21, v22);
}

unint64_t sub_1DADB0964()
{
  result = qword_1EE0059C0;
  if (!qword_1EE0059C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC099F8, &qword_1DAEDB3F0);
    sub_1DAD64B94(qword_1EE008E08, &qword_1ECC09A00, &qword_1DAEDB3F8, &unk_1DAEDB578);
    sub_1DAD64B94(&qword_1EE0058E8, &qword_1ECC09A08, &qword_1DAEDB400, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0059C0);
  }

  return result;
}

uint64_t sub_1DADB0A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1DADB0CE0(v7, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1DADB0D44(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09218, &qword_1DAED9198);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09220, &qword_1DAED91A0);
  v12 = (a3 + *(result + 36));
  *v12 = sub_1DADAE0B8;
  v12[1] = v9;
  return result;
}

uint64_t sub_1DADB0BA0()
{
  v1 = *(type metadata accessor for WidgetURLReaderModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091C0, &qword_1DAED8E80) + 32);
  v4 = sub_1DAECDBFC();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1DADB0CE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetURLReaderModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADB0D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetURLReaderModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DADB0DA8()
{
  v1 = v0;
  sub_1DAECE1DC();
  sub_1DAECE1AC();
  v2 = sub_1DAECE0AC();

  if ((v2 & 1) != 0 && v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshotting] == 1)
  {
    v3 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshottingView;
    v4 = *&v0[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshottingView];
    if (!v4 && (sub_1DAED060C(), sub_1DAED067C(), , v5 = [objc_allocWithZone(type metadata accessor for TouchPassThroughView()) init], objc_msgSend(v0, sel_bounds), objc_msgSend(v5, sel_setFrame_), sub_1DAEB2B7C(), , v6 = sub_1DAED226C(), objc_msgSend(v5, sel_setBackgroundColor_, v6), , v5, v6, v7 = *&v1[v3], *&v1[v3] = v5, v8 = v5, v7, objc_msgSend(v1, sel_addSubview_, v8), v8, (v4 = *&v1[v3]) == 0) || (v9 = v4, objc_msgSend(v1, sel_bounds), objc_msgSend(v9, sel_setFrame_), v9, !*&v1[v3]))
    {
      __break(1u);
      goto LABEL_61;
    }

    [v1 bringSubviewToFront_];
  }

  else
  {
    v10 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshottingView;
    v11 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshottingView];
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *&v1[v10];
    }

    else
    {
      v12 = 0;
    }

    *&v1[v10] = 0;
  }

  sub_1DAECE1AC();
  v13 = sub_1DAECE0BC();

  if ((v13 & 1) != 0 && v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplay] == 1)
  {
    v14 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplayView;
    v15 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplayView];
    if (v15 || (sub_1DAED065C(), sub_1DAED067C(), , v16 = [objc_allocWithZone(type metadata accessor for TouchPassThroughView()) init], objc_msgSend(v1, sel_bounds), objc_msgSend(v16, sel_setFrame_), sub_1DAEB2B7C(), , v17 = sub_1DAED226C(), objc_msgSend(v16, sel_setBackgroundColor_, v17), , v16, v17, v18 = *&v1[v14], *&v1[v14] = v16, v19 = v16, v18, objc_msgSend(v1, sel_addSubview_, v19), v19, (v15 = *&v1[v14]) != 0))
    {
      v20 = v15;
      [v1 bounds];
      [v20 setFrame_];

      if (*&v1[v14])
      {
        [v1 bringSubviewToFront_];
        goto LABEL_21;
      }
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v21 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplayView;
  v22 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplayView];
  if (v22)
  {
    [v22 removeFromSuperview];
    v23 = *&v1[v21];
  }

  else
  {
    v23 = 0;
  }

  *&v1[v21] = 0;

LABEL_21:
  sub_1DAECE1AC();
  v24 = sub_1DAECE0DC();

  if ((v24 & 1) != 0 && v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPaused] == 1)
  {
    v25 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPausedView;
    v26 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPausedView];
    if (v26 || (sub_1DAED061C(), sub_1DAED067C(), , v27 = [objc_allocWithZone(type metadata accessor for TouchPassThroughView()) init], objc_msgSend(v1, sel_bounds), objc_msgSend(v27, sel_setFrame_), sub_1DAEB2B7C(), , v28 = sub_1DAED226C(), objc_msgSend(v27, sel_setBackgroundColor_, v28), , v27, v28, v29 = *&v1[v25], *&v1[v25] = v27, v30 = v27, v29, objc_msgSend(v1, sel_addSubview_, v30), v30, (v26 = *&v1[v25]) != 0))
    {
      v31 = v26;
      [v1 bounds];
      [v31 setFrame_];

      if (*&v1[v25])
      {
        [v1 bringSubviewToFront_];
        goto LABEL_31;
      }
    }

LABEL_62:
    __break(1u);
    return;
  }

  v32 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPausedView;
  v33 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPausedView];
  if (v33)
  {
    [v33 removeFromSuperview];
    v34 = *&v1[v32];
  }

  else
  {
    v34 = 0;
  }

  *&v1[v32] = 0;

LABEL_31:
  if (!os_variant_has_internal_ui() || v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationState] != 2 || (sub_1DAECE1AC(), v35 = sub_1DAECE16C(), , (v35 & 1) == 0))
  {
    v47 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationView;
    v48 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationView];
    if (v48)
    {
      [v48 removeFromSuperview];
      v46 = *&v1[v47];
    }

    else
    {
      v46 = 0;
    }

    *&v1[v47] = 0;
    goto LABEL_41;
  }

  v36 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationView;
  v37 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationView];
  if (v37 || (v38 = [objc_allocWithZone(type metadata accessor for TouchPassThroughView()) init], v39 = *&v1[v36], *&v1[v36] = v38, v40 = v38, v39, v41 = v40, objc_msgSend(v1, sel_addSubview_, v41), objc_msgSend(v41, sel_setFrame_, 6.0, 6.0, 16.0, 16.0), v42 = objc_msgSend(v41, sel_layer), v41, objc_msgSend(v42, sel_setCornerRadius_, 8.0), v42, objc_msgSend(v1, sel_bringSubviewToFront_, v41), v41, (v37 = *&v1[v36]) != 0))
  {
    v43 = objc_opt_self();
    v44 = v37;
    v45 = [v43 redColor];
    v46 = [v45 colorWithAlphaComponent_];

    [v44 setBackgroundColor_];
LABEL_41:
  }

  v49 = &v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText];
  if (!*&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText + 8] || (sub_1DAECE1AC(), v50 = sub_1DAECDFDC(), , (v50 & 1) == 0))
  {
    v56 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugTextView;
    v57 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugTextView];
    if (v57)
    {
      [v57 removeFromSuperview];
      v57 = *&v1[v56];
    }

    *&v1[v56] = 0;
    goto LABEL_56;
  }

  v51 = OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugTextView;
  v52 = *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugTextView];
  if (v52)
  {
    goto LABEL_65;
  }

  v53 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v54 = [objc_opt_self() systemFontOfSize_];
  [v53 setFont_];

  [v53 setTextAlignment_];
  if (*(v49 + 1))
  {

    v55 = sub_1DAED1CBC();
  }

  else
  {
    v55 = 0;
  }

  [v53 setText_];

  v58 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0 alpha:0.75];
  [v53 setTextColor_];

  v59 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v60 = v53;
  v61 = [v59 initWithWhite:0.9 alpha:0.75];
  [v60 setBackgroundColor_];

  v62 = [v60 layer];
  [v62 setCornerCurve_];

  v63 = [v60 layer];
  [v63 setCornerRadius_];

  [v60 setClipsToBounds_];
  [v60 setAutoresizingMask_];

  v64 = *&v1[v51];
  *&v1[v51] = v60;
  v65 = v60;

  [v1 addSubview_];
  v52 = *&v1[v51];
  if (v52)
  {
LABEL_65:
    if (*(v49 + 1))
    {
      v66 = v52;

      v67 = sub_1DAED1CBC();
    }

    else
    {
      v68 = v52;
      v67 = 0;
    }

    [v52 setText_];

    v73 = v52;
    [v1 bounds];
    [v73 sizeThatFits_];
    v75.size.width = v71;
    v75.size.height = v72;
    v75.origin.x = 0.0;
    v75.origin.y = 0.0;
    v76 = CGRectInset(v75, -4.0, -4.0);
    [v73 setBounds_];
    [v1 bounds];
    BSRectGetCenter();
    [v73 setCenter_];

    [v1 bringSubviewToFront_];
    v57 = v73;
LABEL_56:
  }
}

uint64_t sub_1DADB17F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1DADB1850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DAECF33C();
  v6 = v5 - 8;
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *v2;
  v11 = *(v2 + 8);
  [v10 _effectiveCornerRadius];
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = *(v6 + 28);
  v15 = *MEMORY[0x1E697F468];
  v16 = sub_1DAECF99C();
  (*(*(v16 - 8) + 104))(v9 + v14, v15, v16);
  *v9 = v13;
  v9[1] = v13;
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09100, &unk_1DAED8760) + 36);
  sub_1DADB1A4C(v9, v17);
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FA8, &qword_1DAED8508) + 36)) = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09108, &qword_1DAED8770);
  (*(*(v18 - 8) + 16))(a2, a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09110, &qword_1DAED8778);
  sub_1DAED169C();
  v19 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09118, &unk_1DAED8780) + 36);
  sub_1DADB1AB0(v9, v19);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09060, &qword_1DAED85E8);
  *(v19 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1DADB1A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAECF33C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADB1AB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAECF33C();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DADB1B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091D0, &qword_1DAED9120) + 36));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091D8, &qword_1DAED9128);
  v8 = *(v7 + 28);
  v9 = sub_1DAECF1CC();
  v10 = *(*(v9 - 8) + 16);
  v10(v6 + v8, v2, v9);
  *v6 = KeyPath;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091E0, &qword_1DAED9130);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = swift_getKeyPath();
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091E8, &qword_1DAED9168) + 36));
  result = (v10)(v13 + *(v7 + 28), v2, v9);
  *v13 = v12;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DADB1D30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_1DAECF08C();
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091F0, &qword_1DAED9170);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v31 - v7;
  v8 = sub_1DAECF8EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091F8, &qword_1DAED9178);
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v13 = &v31 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09200, &qword_1DAED9180);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v31 - v14;
  v48 = *(v1 + 40);
  v47 = *(v1 + 32);
  if (HIBYTE(v48) != 1)
  {

    sub_1DAED202C();
    v15 = sub_1DAED001C();
    sub_1DAECECEC();

    sub_1DAECF8DC();
    swift_getAtKeyPath();
    sub_1DAD64398(&v47, &qword_1ECC09208, &qword_1DAED9188);
    (*(v9 + 8))(v11, v8);
  }

  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09210, &qword_1DAED9190);
  v31 = sub_1DAD64B94(&qword_1EE00BE40, &qword_1ECC09210, &qword_1DAED9190, MEMORY[0x1E697FDF8]);
  sub_1DAED042C();
  v16 = v6;
  sub_1DAECF07C();
  v17 = swift_allocObject();
  v18 = v2[1];
  v17[1] = *v2;
  v17[2] = v18;
  *(v17 + 42) = *(v2 + 26);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1DAD93D0C;
  *(v19 + 24) = v17;
  sub_1DAD6495C(&v47, &v43, &qword_1ECC09208, &qword_1DAED9188);

  v20 = v40;
  v21 = v33;
  sub_1DAED08BC();

  (*(v34 + 8))(v16, v21);
  v22 = swift_allocObject();
  v23 = v2[1];
  v22[1] = *v2;
  v22[2] = v23;
  *(v22 + 42) = *(v2 + 26);
  v24 = v41;
  sub_1DAD6495C(&v47, &v43, &qword_1ECC09208, &qword_1DAED9188);

  sub_1DAECF25C();
  sub_1DAECF0CC();
  v43 = v32;
  v44 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_1DAD64B94(&unk_1EE00AB90, &qword_1ECC091F0, &qword_1DAED9170, MEMORY[0x1E697F820]);
  v27 = v35;
  v28 = v38;
  sub_1DAED055C();
  sub_1DAD64398(v20, &qword_1ECC091F0, &qword_1DAED9170);
  (*(v36 + 8))(v13, v28);
  v43 = v28;
  v44 = v24;
  v45 = OpaqueTypeConformance2;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v39;
  sub_1DAED042C();
  return (*(v37 + 8))(v27, v29);
}

uint64_t sub_1DADB23A4()
{

  return swift_deallocObject();
}

uint64_t sub_1DADB23E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DADB2450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DADB24E4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09988, &qword_1DAEDAB00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DADB2F58();
  sub_1DAED29BC();
  return (*(v3 + 8))(v5, v2);
}

void sub_1DADB25F8(int a1, int a2, double a3)
{
  v55 = a1;
  v56 = a2;
  v4 = sub_1DAECFBAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAECFC7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v53[3] = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v53 - v12;
  v57 = sub_1DAECFC4C();
  isa = v57[-1].isa;
  MEMORY[0x1EEE9AC00](v57);
  v54 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v53 - v17;
  v19 = objc_opt_self();
  if ([v19 isSupported])
  {
    v53[0] = v19;
    v20 = type metadata accessor for SecureHostingController(0);
    sub_1DAD730A4(qword_1EE00AFA0, type metadata accessor for SecureHostingController, MEMORY[0x1E697C600]);
    v53[1] = v20;
    v53[2] = v3;
    sub_1DAECF9CC();
    sub_1DAECFC5C();
    (*(v9 + 8))(v13, v8);
    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E697FF98])
    {
      (*(v5 + 96))(v7, v4);
      v21 = swift_projectBox();
      v22 = isa;
      v23 = v57;
      (*(isa + 2))(v18, v21, v57);

      v24 = sub_1DAECFBFC();
      v25 = sub_1DAECFC1C();
      (*(isa + 1))(v18, v23);
      v27 = v55;
      v26 = v56;
      if ((v24 ^ v55) & 1) != 0 || ((v25 ^ v56))
      {
        goto LABEL_15;
      }
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      v23 = v57;
      v22 = isa;
      v27 = v55;
      v26 = v56;
      if (v55 & 1) != 0 || (v56)
      {
LABEL_15:
        v32 = v54;
        sub_1DAECFC3C();
        sub_1DAECFC0C();
        sub_1DAECFC2C();
        if (qword_1EE00BE80 != -1)
        {
          swift_once();
        }

        v33 = sub_1DAECEDEC();
        __swift_project_value_buffer(v33, qword_1EE011C08);
        v34 = sub_1DAECEDCC();
        v35 = sub_1DAED200C();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 67240448;
          *(v36 + 4) = v27 & 1;
          *(v36 + 8) = 1026;
          *(v36 + 10) = v26 & 1;
          _os_log_impl(&dword_1DAD61000, v34, v35, "RenderBox hosting configured - async? %{BOOL,public}d, opaque: %{BOOL,public}d", v36, 0xEu);
          MEMORY[0x1E127F100](v36, -1, -1);
        }

        [v53[0] setAllowsRenderingInBackground_];
        v37 = [objc_opt_self() standardUserDefaults];
        v38 = sub_1DAED1CBC();
        v39 = [v37 objectForKey_];

        if (v39)
        {
          sub_1DAED238C();
          swift_unknownObjectRelease();
        }

        else
        {
          v63 = 0u;
          v64 = 0u;
        }

        aBlock = v63;
        v60 = v64;
        if (*(&v64 + 1))
        {
          sub_1DAD674D4(0, &qword_1EE005470, 0x1E696AD98);
          if (swift_dynamicCast())
          {
            v40 = v58;
            [v58 intValue];

            LOBYTE(aBlock) = 0;
            sub_1DAECFBEC();
          }
        }

        else
        {
          sub_1DAD64398(&aBlock, &qword_1ECC0A3A0, &qword_1DAEDFE30);
        }

        sub_1DAECFBBC();
        sub_1DAECF9DC();
        v41 = sub_1DAECF9BC();
        sub_1DAECFBDC();
        v41(&aBlock, 0);
        if (sub_1DAECF9AC())
        {
          objc_opt_self();
          v42 = swift_dynamicCastObjCClass();
          if (v42)
          {
            v43 = v42;
            [v42 setNeedsSynchronousUpdate_];
            [v43 setNeedsDisplay];
            v44 = [v43 statisticsHandler];
            if (v44)
            {
              v45 = v44;
              swift_unknownObjectRelease();
              _Block_release(v45);
            }

            else
            {
              v49 = sub_1DAECEDCC();
              v50 = sub_1DAED200C();
              if (os_log_type_enabled(v49, v50))
              {
                v51 = swift_slowAlloc();
                *v51 = 0;
                _os_log_impl(&dword_1DAD61000, v49, v50, "Attaching layer statistics handler", v51, 2u);
                MEMORY[0x1E127F100](v51, -1, -1);
              }

              [v43 resetStatistics:11 alpha:0.0];
              v61 = nullsub_1;
              v62 = 0;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              *&v60 = sub_1DADB7C8C;
              *(&v60 + 1) = &block_descriptor_21;
              v52 = _Block_copy(&aBlock);
              [v43 setStatisticsHandler_];
              _Block_release(v52);
              swift_unknownObjectRelease();
            }

LABEL_34:
            (*(v22 + 1))(v32, v23);
            return;
          }

          swift_unknownObjectRelease();
        }

        v46 = sub_1DAECEDCC();
        v47 = sub_1DAED203C();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_1DAD61000, v46, v47, "RenderBox unable to attach layer statistics", v48, 2u);
          MEMORY[0x1E127F100](v48, -1, -1);
        }

        goto LABEL_34;
      }
    }
  }

  else
  {
    if (qword_1EE00BE80 != -1)
    {
      swift_once();
    }

    v28 = sub_1DAECEDEC();
    __swift_project_value_buffer(v28, qword_1EE011C08);
    v57 = sub_1DAECEDCC();
    v29 = sub_1DAED203C();
    if (os_log_type_enabled(v57, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 67240192;
      _os_log_impl(&dword_1DAD61000, v57, v29, "RenderBox hosting disabled (isSupported=%{BOOL,public}d)", v30, 8u);
      MEMORY[0x1E127F100](v30, -1, -1);
    }

    v31 = v57;
  }
}

unint64_t sub_1DADB2F58()
{
  result = qword_1EE00B478[0];
  if (!qword_1EE00B478[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE00B478);
  }

  return result;
}

uint64_t type metadata accessor for SecureHostingController(uint64_t a1)
{
  result = qword_1EE00BF20;
  if (!qword_1EE00BF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1DADB2FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  *&result = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v10 = &v28 - v9;
  v11 = *(a1 + 72);
  if (v11)
  {
    v29 = *(a1 + 64);
    v30 = v6;
    v12 = (a1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModel);
    v31 = v7;
    sub_1DAD648F8(a1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModel, v33);
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);

    v13 = sub_1DAED11AC();
    sub_1DAE3A88C(v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    v14 = v12[3];
    v15 = __swift_project_boxed_opaque_existential_1(v12, v14);
    v28 = &v28;
    v16 = *(v14 - 8);
    v17 = MEMORY[0x1EEE9AC00](v15);
    v19 = &v28 - v18;
    (*(v16 + 16))(&v28 - v18, v17);
    v20 = sub_1DAED11CC();
    (*(v16 + 8))(v19, v14);
    v33[0] = v20;
    sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
    v21 = sub_1DAED20EC();
    v32 = v21;
    v22 = sub_1DAED20AC();
    (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
    sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, MEMORY[0x1E695BED8]);
    sub_1DAD88828();
    sub_1DAECEFBC();
    sub_1DAD64398(v4, &unk_1ECC07D20, &unk_1DAED57D0);

    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v25 = v29;
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v11;
    sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0, MEMORY[0x1E695BE98]);
    v26 = v30;
    v27 = sub_1DAECF00C();

    (*(v31 + 8))(v10, v26);
    *(a1 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModelSubscriber) = v27;
  }

  return result;
}

uint64_t sub_1DADB342C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DADB3464()
{

  return swift_deallocObject();
}

uint64_t sub_1DADB34A4(uint64_t a1)
{
  v47 = a1;
  v2 = sub_1DAED12CC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v42 = &v39[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v39[-v6];
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v39[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08850, &qword_1DAED7280);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v45 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09950, &qword_1DAEDA880);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39[-v19];
  v21 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
  swift_beginAccess();
  v22 = *(v18 + 56);
  v46 = v1;
  v43 = v21;
  v23 = v1 + v21;
  v24 = v47;
  sub_1DAD6495C(v23, v20, &qword_1ECC08850, &qword_1DAED7280);
  sub_1DAD6495C(v24, &v20[v22], &qword_1ECC08850, &qword_1DAED7280);
  v48 = v3;
  v25 = *(v3 + 48);
  if (v25(v20, 1, v2) == 1)
  {
    if (v25(&v20[v22], 1, v2) == 1)
    {
      return sub_1DAD64398(v20, &qword_1ECC08850, &qword_1DAED7280);
    }

    goto LABEL_6;
  }

  sub_1DAD6495C(v20, v16, &qword_1ECC08850, &qword_1DAED7280);
  if (v25(&v20[v22], 1, v2) == 1)
  {
    (*(v48 + 8))(v16, v2);
LABEL_6:
    sub_1DAD64398(v20, &qword_1ECC09950, &qword_1DAEDA880);
    goto LABEL_7;
  }

  v31 = v41;
  (*(v48 + 32))(v41, &v20[v22], v2);
  sub_1DAE3B004(&qword_1EE005760, MEMORY[0x1E6993F18], MEMORY[0x1E6993F20]);
  v40 = sub_1DAED1CAC();
  v32 = *(v48 + 8);
  v32(v31, v2);
  v32(v16, v2);
  result = sub_1DAD64398(v20, &qword_1ECC08850, &qword_1DAED7280);
  if ((v40 & 1) == 0)
  {
LABEL_7:
    sub_1DAD6495C(v24, v13, &qword_1ECC08850, &qword_1DAED7280);
    v26 = &unk_1EE008000;
    if (v25(v13, 1, v2) == 1)
    {
      sub_1DAD64398(v13, &qword_1ECC08850, &qword_1DAED7280);
      v27 = v48;
      v28 = v46;
      v20 = v45;
      goto LABEL_19;
    }

    v27 = v48;
    (*(v48 + 32))(v44, v13, v2);
    v28 = v46;
    v29 = v46 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
    swift_beginAccess();
    v20 = v45;
    if (*(v29 + 24))
    {
      sub_1DAD648F8(v29, &v51);
      if (*(&v52 + 1))
      {
LABEL_11:
        sub_1DAD648F8(&v51, v49);
        if (*(&v52 + 1))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v51);
        }

        __swift_project_boxed_opaque_existential_1(v49, v50);
        v30 = v44;
        sub_1DAED115C();
        (*(v27 + 8))(v30, v2);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        v26 = &unk_1EE008000;
        goto LABEL_19;
      }
    }

    else
    {
      v34 = *(v29 + 16);
      v51 = *v29;
      v52 = v34;
      v53 = *(v29 + 32);
      if (*(&v34 + 1))
      {
        goto LABEL_11;
      }
    }

    (*(v27 + 8))(v44, v2);
    if (*(&v52 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v51);
    }

LABEL_19:
    sub_1DAD6495C(v28 + v43, v20, &qword_1ECC08850, &qword_1DAED7280);
    if (v25(v20, 1, v2) == 1)
    {
      return sub_1DAD64398(v20, &qword_1ECC08850, &qword_1DAED7280);
    }

    v35 = v42;
    (*(v27 + 32))(v42, v20, v2);
    v36 = v28 + v26[289];
    swift_beginAccess();
    if (*(v36 + 24))
    {
      sub_1DAD648F8(v36, &v51);
      if (*(&v52 + 1))
      {
LABEL_23:
        sub_1DAD648F8(&v51, v49);
        if (*(&v52 + 1))
        {
          __swift_destroy_boxed_opaque_existential_1Tm(&v51);
        }

        __swift_project_boxed_opaque_existential_1(v49, v50);
        sub_1DAED115C();
        (*(v27 + 8))(v35, v2);
        v37 = v49;
        return __swift_destroy_boxed_opaque_existential_1Tm(v37);
      }
    }

    else
    {
      v38 = *(v36 + 16);
      v51 = *v36;
      v52 = v38;
      v53 = *(v36 + 32);
      if (*(&v38 + 1))
      {
        goto LABEL_23;
      }
    }

    result = (*(v27 + 8))(v35, v2);
    if (!*(&v52 + 1))
    {
      return result;
    }

    v37 = &v51;
    return __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }

  return result;
}

uint64_t type metadata accessor for VisibilityPolicyController(uint64_t a1)
{
  result = qword_1EE006758;
  if (!qword_1EE006758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DADB3BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v14 = *(v13 - 8);
  v39 = v13;
  v40 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__visibility;
  v18 = sub_1DAECE55C();
  (*(*(v18 - 8) + 56))(v5 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__metricsAggregator;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__metricsAggregator) = 0;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
  v38 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__timelineReloadedNotificationCancellable;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__timelineReloadedNotificationCancellable) = 0;
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__evaluateStaleTimelineContentTimer) = 0;
  swift_weakInit();
  *(v5 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__invalidated) = 0;
  swift_weakAssign();
  *(v5 + v19) = a3;

  v20 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logger;
  v36 = sub_1DAECEDEC();
  v21 = *(v36 - 8);
  (*(v21 + 16))(v5 + v20, a4, v36);
  v22 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
  v23 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier + 8);
  v24 = (v5 + OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__logIdentifier);
  *v24 = v22;
  v24[1] = v23;
  sub_1DAD648F8(a2 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, v42);
  v25 = v43;
  v26 = v44;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  v27 = *(v26 + 16);

  v28 = v27(v25, v26);
  v29 = sub_1DAED0BFC();

  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  v42[0] = v29;
  sub_1DAD84C40();
  v30 = sub_1DAED20EC();
  v41 = v30;
  v31 = sub_1DAED20AC();
  (*(*(v31 - 8) + 56))(v12, 1, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, MEMORY[0x1E695BED8]);
  sub_1DADB40C4(&qword_1EE00AA40, sub_1DAD84C40, MEMORY[0x1E69E8028]);
  sub_1DAECEFBC();
  sub_1DAD64398(v12, &unk_1ECC07D20, &unk_1DAED57D0);

  swift_allocObject();
  swift_weakInit();
  sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0, MEMORY[0x1E695BE98]);
  v32 = v39;
  v33 = sub_1DAECF00C();

  (*(v40 + 8))(v16, v32);
  *(v5 + v38) = v33;

  sub_1DAD6CF04();
  (*(v21 + 8))(v37, v36);
  return v5;
}

uint64_t sub_1DADB40C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DADB410C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1DAED294C();
  sub_1DAED1D9C();
  v6 = sub_1DAED297C();
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
    if (v11 || (sub_1DAED289C() & 1) != 0)
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

void sub_1DADB4204(char a1)
{
  v1[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting] = a1;
  v3 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent;
  swift_beginAccess();
  if (v1[v3] == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    if (v23 != (a1 & 1))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v23) = a1 & 1;

      sub_1DAECEF4C();
      if (qword_1EE00BE80 != -1)
      {
        swift_once();
      }

      v4 = sub_1DAECEDEC();
      __swift_project_value_buffer(v4, qword_1EE011C08);
      v5 = v1;
      v6 = sub_1DAECEDCC();
      v7 = sub_1DAED203C();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v23 = v9;
        *v8 = 136446722;
        v10 = [v5 description];
        v11 = sub_1DAED1CEC();
        v13 = v12;

        v14 = sub_1DAD6482C(v11, v13, &v23);

        *(v8 + 4) = v14;
        *(v8 + 12) = 2082;
        v15 = [*&v5[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_widget] _loggingIdentifierWithMetrics_];
        v16 = sub_1DAED1CEC();
        v18 = v17;

        v19 = sub_1DAD6482C(v16, v18, &v23);

        *(v8 + 14) = v19;
        *(v8 + 22) = 2082;
        if (a1)
        {
          v20 = 1702195828;
        }

        else
        {
          v20 = 0x65736C6166;
        }

        if (a1)
        {
          v21 = 0xE400000000000000;
        }

        else
        {
          v21 = 0xE500000000000000;
        }

        v22 = sub_1DAD6482C(v20, v21, &v23);

        *(v8 + 24) = v22;
        _os_log_impl(&dword_1DAD61000, v6, v7, "%{public}s - %{public}s - isSnapshotting = %{public}s", v8, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v9, -1, -1);
        MEMORY[0x1E127F100](v8, -1, -1);
      }
    }
  }
}

uint64_t sub_1DADB4574(char a1)
{
  if (qword_1EE005E48 != -1)
  {
    swift_once();
  }

  v3 = sub_1DAECEDEC();
  __swift_project_value_buffer(v3, qword_1EE011748);
  v4 = v1;
  v5 = sub_1DAECEDCC();
  v6 = sub_1DAED203C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136446466;
    v9 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier];
    v10 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_logIdentifier + 8];

    v11 = sub_1DAD6482C(v9, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    if (a1)
    {
      v12 = 0x726170736E617274;
    }

    else
    {
      v12 = 0x65757161706FLL;
    }

    if (a1)
    {
      v13 = 0xEB00000000746E65;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    v14 = sub_1DAD6482C(v12, v13, &v21);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1DAD61000, v5, v6, "[%{public}s] Connection transparency did change to: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v8, -1, -1);
    MEMORY[0x1E127F100](v7, -1, -1);
  }

  v15 = *&v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController];
  if (v15)
  {
    v16 = v15;
    sub_1DAEC70C4(a1 & 1);
  }

  v17 = &v4[OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(v17 + 1);
    ObjectType = swift_getObjectType();
    (*(v19 + 16))(v4, a1 & 1, ObjectType, v19);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1DADB47F4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer19WidgetSceneDelegate_window);
  if (v2)
  {
    if (a1)
    {
      v3 = v2;
      v4 = 0;
    }

    else
    {
      v5 = objc_opt_self();
      v6 = v2;
      v4 = [v5 systemBackgroundColor];
    }

    v7 = v4;
    [v2 setBackgroundColor_];
  }
}

void sub_1DADB48A4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_scene) canAppearInSecureEnvironment];
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21WidgetSceneConnection_contentViewController);
  if ((v1 & 1) == 0)
  {
    if (!v2)
    {
      return;
    }

    v6 = [v2 view];
    if (v6)
    {
      v4 = v6;
      v5 = 64;
      goto LABEL_8;
    }

LABEL_13:
    __break(1u);
    return;
  }

  if (!v2)
  {
    return;
  }

  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = v3;
  v5 = 0;
LABEL_8:
  v7 = [v4 layer];

  [v7 setDisableUpdateMask_];
}

void sub_1DADB49B8(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v9.receiver = a1;
  v9.super_class = type metadata accessor for LiveWidgetContentViewController();
  v7 = *a4;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF4C();
}

void sub_1DADB4ADC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  if (qword_1EE005DB8 != -1)
  {
    swift_once();
  }

  v10 = sub_1DAECEDEC();
  v11 = __swift_project_value_buffer(v10, qword_1EE011640);
  v12 = a1;
  v13 = v2;
  v44 = v11;
  v14 = sub_1DAECEDCC();
  v15 = sub_1DAED200C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v43 = v6;
    v17 = v16;
    v18 = v9;
    v19 = swift_slowAlloc();
    v45[0] = v19;
    *v17 = 136446466;
    *(v17 + 4) = sub_1DAD6482C(*&v13[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v13[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], v45);
    *(v17 + 12) = 2082;
    if (a1)
    {
      v20 = 7562617;
    }

    else
    {
      v20 = 28526;
    }

    if (a1)
    {
      v21 = 0xE300000000000000;
    }

    else
    {
      v21 = 0xE200000000000000;
    }

    v22 = sub_1DAD6482C(v20, v21, v45);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_1DAD61000, v14, v15, "[%{public}s] Trait collection did change. (had previous collection = %{public}s)", v17, 0x16u);
    swift_arrayDestroy();
    v23 = v19;
    v9 = v18;
    MEMORY[0x1E127F100](v23, -1, -1);
    v24 = v17;
    v6 = v43;
    MEMORY[0x1E127F100](v24, -1, -1);
  }

  if (!a1 || [v12 _backlightLuminance] != 1)
  {
    v25 = [v13 traitCollection];
    v26 = [v25 _backlightLuminance];

    if (v26 == 1)
    {
      v27 = v13;
      v28 = sub_1DAECEDCC();
      v29 = sub_1DAED203C();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v45[0] = v31;
        *v30 = 136446210;
        *(v30 + 4) = sub_1DAD6482C(*&v27[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v27[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], v45);
        _os_log_impl(&dword_1DAD61000, v28, v29, "[%{public}s] Trait collection: entering AoD.", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v31);
        MEMORY[0x1E127F100](v31, -1, -1);
        MEMORY[0x1E127F100](v30, -1, -1);
      }

      v32 = OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController__alwaysOnOverrideDate;
      swift_beginAccess();
      sub_1DAD6495C(&v27[v32], v9, &qword_1ECC07CE8, &qword_1DAED6F60);
      v33 = sub_1DAECDCEC();
      v34 = *(v33 - 8);
      v35 = (*(v34 + 48))(v9, 1, v33);
      sub_1DAD64398(v9, &qword_1ECC07CE8, &qword_1DAED6F60);
      if (v35 == 1)
      {
        sub_1DAECDCDC();
        (*(v34 + 56))(v6, 0, 1, v33);
        swift_beginAccess();
        sub_1DAE101FC(v6, &v27[v32]);
        swift_endAccess();
        sub_1DAE0FC40();
        sub_1DAD64398(v6, &qword_1ECC07CE8, &qword_1DAED6F60);
      }

      return;
    }

    if (!a1)
    {
      return;
    }
  }

  if ([v12 _backlightLuminance] == 1)
  {
    v36 = [v13 traitCollection];
    v37 = [v36 _backlightLuminance];

    if (v37 != 1)
    {
      v38 = v13;
      v44 = sub_1DAECEDCC();
      v39 = sub_1DAED203C();

      if (os_log_type_enabled(v44, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v45[0] = v41;
        *v40 = 136446210;
        *(v40 + 4) = sub_1DAD6482C(*&v38[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier], *&v38[OBJC_IVAR____TtC14WidgetRenderer32WidgetSceneContentViewController_logIdentifier + 8], v45);
        _os_log_impl(&dword_1DAD61000, v44, v39, "[%{public}s] Trait collection: exiting AoD.", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v41);
        MEMORY[0x1E127F100](v41, -1, -1);
        MEMORY[0x1E127F100](v40, -1, -1);
      }

      else
      {
        v42 = v44;
      }
    }
  }
}

void sub_1DADB50F4()
{
  v38.receiver = v0;
  v38.super_class = type metadata accessor for BaseWidgetContentViewController();
  objc_msgSendSuper2(&v38, sel_viewWillLayoutSubviews);
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v2 = [*&v0[v1] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  v14 = *&v0[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer];
  if (!v14)
  {
    goto LABEL_6;
  }

  v15 = v14;
  v16 = [v0 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame_];
LABEL_6:
  v26 = *&v0[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay];
  if (!v26)
  {
    return;
  }

  v27 = v26;
  v28 = [v0 view];
  if (!v28)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v29 = v28;
  [v28 bounds];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;

  [v27 setFrame_];
}

unint64_t sub_1DADB53A4(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A790, &unk_1DAEDE9A0);
    v6 = sub_1DAED274C();

    return v6;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1DAED28AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A790, &unk_1DAEDE9A0);
    if (!swift_dynamicCastMetatype())
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        v5 = v2 + 32;
        while (swift_dynamicCastObjCProtocolConditional())
        {
          v5 += 8;
          if (!--v4)
          {
            return v1;
          }
        }

        return v2 | 1;
      }
    }

    return v1;
  }
}

uint64_t sub_1DADB54B0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for _RootContentViewModel(0);
  result = sub_1DAECEE4C();
  *a2 = result;
  return result;
}

uint64_t sub_1DADB54F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v73 = sub_1DAECF32C();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v69 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAECF2AC();
  v70 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v64 - v6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0AB60, &qword_1DAEDFD80);
  v86 = v5;
  v8 = sub_1DAECF2AC();
  v74 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v64 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0AB68, &qword_1DAEDFD88);
  v85 = v8;
  v10 = sub_1DAECF2AC();
  v76 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v64 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC090B8, &qword_1DAEDFD90);
  v83 = v10;
  v12 = sub_1DAECF2AC();
  v78 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v77 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v75 = &v64 - v15;
  v79 = sub_1DAED233C();
  v82 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v64 - v19;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF3C();

  if (v112)
  {
    (*(v78 + 56))(v17, 1, 1, v12);
    v80 = *(a1 + 24);
    v93 = v80;
    v94 = MEMORY[0x1E6980318];
    WitnessTable = swift_getWitnessTable();
    v21 = v17;
    v22 = MEMORY[0x1E6980A18];
    v23 = sub_1DAD64B94(&qword_1EE0058A0, &qword_1ECC0AB60, &qword_1DAEDFD80, MEMORY[0x1E6980A18]);
    v91 = WitnessTable;
    v92 = v23;
    v24 = swift_getWitnessTable();
    v25 = sub_1DAD64B94(&qword_1EE005868, &qword_1ECC0AB68, &qword_1DAEDFD88, v22);
    v89 = v24;
    v90 = v25;
    v26 = swift_getWitnessTable();
    v27 = v22;
    v28 = v21;
    v29 = sub_1DAD64B94(&qword_1EE00AB80, &qword_1ECC090B8, &qword_1DAEDFD90, v27);
    v87 = v26;
    v88 = v29;
    swift_getWitnessTable();
  }

  else
  {
    sub_1DAED004C();
    v80 = *(a1 + 24);
    v30 = v80;
    v65 = v2;
    sub_1DAED052C();
    swift_getKeyPath();
    v112 = MEMORY[0x1E69E7CC0];
    sub_1DAD730A4(&qword_1EE00BE58, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
    v67 = v17;
    sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0, MEMORY[0x1E69E6328]);
    v31 = v69;
    v32 = v73;
    sub_1DAED23CC();
    v110 = v30;
    v111 = MEMORY[0x1E6980318];
    v66 = v12;
    v64 = MEMORY[0x1E697E858];
    v33 = v86;
    v34 = swift_getWitnessTable();
    v35 = v68;
    sub_1DAED040C();

    (*(v72 + 8))(v31, v32);
    (*(v70 + 8))(v7, v33);
    swift_getKeyPath();
    v112 = *(*(v65 + 8) + 16);
    v36 = v112;
    v37 = MEMORY[0x1E6980A18];
    v38 = sub_1DAD64B94(&qword_1EE0058A0, &qword_1ECC0AB60, &qword_1DAEDFD80, MEMORY[0x1E6980A18]);
    v108 = v34;
    v109 = v38;
    v39 = v36;
    v40 = v66;
    v41 = v85;
    v42 = swift_getWitnessTable();
    v43 = v71;
    sub_1DAED040C();

    (*(v74 + 8))(v35, v41);
    swift_getKeyPath();
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1DAECEF3C();

    v44 = sub_1DAD64B94(&qword_1EE005868, &qword_1ECC0AB68, &qword_1DAEDFD88, v37);
    v106 = v42;
    v107 = v44;
    v45 = v83;
    v46 = swift_getWitnessTable();
    v47 = v77;
    sub_1DAED040C();

    (*(v76 + 8))(v43, v45);
    v48 = sub_1DAD64B94(&qword_1EE00AB80, &qword_1ECC090B8, &qword_1DAEDFD90, v37);
    v104 = v46;
    v105 = v48;
    swift_getWitnessTable();
    v49 = v75;
    sub_1DADB6258(v47, v40, v75);
    v50 = v78;
    v51 = *(v78 + 8);
    v51(v47, v40);
    sub_1DADB6258(v49, v40, v47);
    v51(v49, v40);
    v28 = v67;
    (*(v50 + 32))(v67, v47, v40);
    (*(v50 + 56))(v28, 0, 1, v40);
  }

  v52 = v82;
  v53 = v81;
  v54 = v79;
  (*(v82 + 16))(v81, v28, v79);
  v55 = *(v52 + 8);
  v55(v28, v54);
  v102 = v80;
  v103 = MEMORY[0x1E6980318];
  v56 = swift_getWitnessTable();
  v57 = MEMORY[0x1E6980A18];
  v58 = sub_1DAD64B94(&qword_1EE0058A0, &qword_1ECC0AB60, &qword_1DAEDFD80, MEMORY[0x1E6980A18]);
  v100 = v56;
  v101 = v58;
  v59 = swift_getWitnessTable();
  v60 = sub_1DAD64B94(&qword_1EE005868, &qword_1ECC0AB68, &qword_1DAEDFD88, v57);
  v98 = v59;
  v99 = v60;
  v61 = swift_getWitnessTable();
  v62 = sub_1DAD64B94(&qword_1EE00AB80, &qword_1ECC090B8, &qword_1DAEDFD90, v57);
  v96 = v61;
  v97 = v62;
  v95 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1DADB6258(v53, v54, v84);
  return (v55)(v53, v54);
}

uint64_t sub_1DADB616C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF85C();
  *a1 = result;
  return result;
}

uint64_t sub_1DADB61C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF74C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DADB6264(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DADB62CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DADB6334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DefaultWidgetLiveViewEntry.view.getter@<X0>(void *a1@<X8>)
{
  v83 = a1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09800, &qword_1DAEDE2C0);
  v77 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v74 = (v72 - v1);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A608, &qword_1DAEDE2C8);
  MEMORY[0x1EEE9AC00](v81);
  v82 = v72 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A990, &qword_1DAEDE2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v72 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A610, qword_1DAEDE2D8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v76 = (v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v79 = (v72 - v9);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC097F8, &unk_1DAEDA4D0);
  MEMORY[0x1EEE9AC00](v80);
  v75 = (v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = v72 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088D8, &qword_1DAED72D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v72 - v18;
  v20 = type metadata accessor for EnvironmentWrappedViewableTimelineEntry(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v72 - v25;
  v27 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DADB6264(v78, v29, type metadata accessor for DefaultWidgetLiveViewEntry);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DADB62CC(v29, v23, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    v30 = sub_1DAED197C();
    v31 = *(v20 + 28);
    v32 = *&v23[*(v20 + 24)];
    v33 = *&v23[v31];
    v34 = sub_1DAECF8EC();
    v35 = *(v34 - 8);
    (*(v35 + 16))(v5, v23, v34);
    (*(v35 + 56))(v5, 0, 1, v34);
    v36 = v32;
    v37 = v33;
    v38 = v74;
    sub_1DAED1BFC();
    *v38 = v30;
    sub_1DAD6495C(v38, v82, &qword_1ECC09800, &qword_1DAEDE2C0);
    swift_storeEnumTagMultiPayload();
    sub_1DAD64B94(qword_1EE008CF8, &qword_1ECC097F8, &unk_1DAEDA4D0, &protocol conformance descriptor for TintedWidgetView<A, B>);
    sub_1DADB6D6C();
    sub_1DAECFB1C();
    sub_1DAD64398(v38, &qword_1ECC09800, &qword_1DAEDE2C0);
    v26 = v23;
  }

  else
  {
    v78 = v13;
    v39 = v84;
    v72[1] = *v29;
    v73 = v5;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC088E8, &qword_1DAED72E0);
    v41 = *(v40 + 64);
    sub_1DADB62CC(v29 + *(v40 + 48), v26, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
    sub_1DAD7C48C(v29 + v41, v19, &qword_1ECC088D8, &qword_1DAED72D0);
    v74 = v19;
    sub_1DAD6495C(v19, v16, &qword_1ECC088D8, &qword_1DAED72D0);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      sub_1DAD64398(v16, &qword_1ECC088D8, &qword_1DAED72D0);
      v42 = 1;
      v43 = v73;
      v44 = v79;
    }

    else
    {
      v45 = sub_1DAED197C();
      v46 = *&v16[*(v20 + 24)];
      v47 = *&v16[*(v20 + 28)];
      v48 = sub_1DAECF8EC();
      v49 = *(v48 - 8);
      v43 = v73;
      (*(v49 + 16))(v73, v16, v48);
      (*(v49 + 56))(v43, 0, 1, v48);
      v50 = v46;
      v51 = v47;
      v44 = v79;
      sub_1DAED1BFC();
      *v44 = v45;
      sub_1DADB6334(v16, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
      v42 = 0;
    }

    v52 = *(v77 + 56);
    v52(v44, v42, 1, v39);
    v53 = sub_1DAED197C();
    v54 = *(v20 + 28);
    v55 = *&v26[*(v20 + 24)];
    v56 = *&v26[v54];
    v57 = sub_1DAECF8EC();
    v58 = *(v57 - 8);
    (*(v58 + 16))(v43, v26, v57);
    (*(v58 + 56))(v43, 0, 1, v57);
    v59 = v55;
    v60 = v56;
    v61 = v39;
    v62 = v76;
    sub_1DAED1BFC();
    *v62 = v53;
    v52(v62, 0, 1, v61);
    v64 = v79;
    v63 = v80;
    v65 = v75;
    sub_1DAD6495C(v79, v75 + *(v80 + 52), &qword_1ECC0A610, qword_1DAEDE2D8);
    sub_1DAD6495C(v62, v65 + *(v63 + 56), &qword_1ECC0A610, qword_1DAEDE2D8);
    type metadata accessor for TintedWidgetViewModel(0);
    sub_1DAD900EC(&qword_1EE008CE8, type metadata accessor for TintedWidgetViewModel, &protocol conformance descriptor for TintedWidgetViewModel);

    v66 = sub_1DAECF21C();
    v68 = v67;
    sub_1DAD64398(v62, &qword_1ECC0A610, qword_1DAEDE2D8);
    sub_1DAD64398(v64, &qword_1ECC0A610, qword_1DAEDE2D8);
    *v65 = v66;
    v65[1] = v68;
    v69 = v65;
    v70 = v78;
    sub_1DAD7C48C(v69, v78, &qword_1ECC097F8, &unk_1DAEDA4D0);
    sub_1DAD6495C(v70, v82, &qword_1ECC097F8, &unk_1DAEDA4D0);
    swift_storeEnumTagMultiPayload();
    sub_1DAD64B94(qword_1EE008CF8, &qword_1ECC097F8, &unk_1DAEDA4D0, &protocol conformance descriptor for TintedWidgetView<A, B>);
    sub_1DADB6D6C();
    sub_1DAECFB1C();

    sub_1DAD64398(v70, &qword_1ECC097F8, &unk_1DAEDA4D0);
    sub_1DAD64398(v74, &qword_1ECC088D8, &qword_1DAED72D0);
  }

  return sub_1DADB6334(v26, type metadata accessor for EnvironmentWrappedViewableTimelineEntry);
}

unint64_t sub_1DADB6D6C()
{
  result = qword_1EE005A70;
  if (!qword_1EE005A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09800, &qword_1DAEDE2C0);
    sub_1DAD7305C(&qword_1EE0056B0, MEMORY[0x1E6985B18], MEMORY[0x1E6985B10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A70);
  }

  return result;
}

unint64_t sub_1DADB6E28()
{
  result = qword_1EE0059B8;
  if (!qword_1EE0059B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC097F0, &qword_1DAEDA4C8);
    sub_1DAD64B94(qword_1EE008CF8, &qword_1ECC097F8, &unk_1DAEDA4D0, &protocol conformance descriptor for TintedWidgetView<A, B>);
    sub_1DADB6D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0059B8);
  }

  return result;
}

uint64_t sub_1DADB6EF8@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v85 = a6;
  v87 = sub_1DAED233C();
  v11 = sub_1DAECF2AC();
  v76 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v74 = v73 - v12;
  v94 = v13;
  v14 = sub_1DAECF2AC();
  v80 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v77 = v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v75 = v73 - v17;
  v93 = v18;
  v84 = sub_1DAED233C();
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v92 = v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v83 = v73 - v21;
  v90 = sub_1DAED233C();
  v22 = sub_1DAECF2AC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v81 = v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v79 = v73 - v26;
  v91 = sub_1DAED233C();
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v28 = v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v95 = a5;
  v96 = v73 - v30;
  v118 = a2;
  v119 = a3;
  v88 = a4;
  v120 = a4;
  v121 = a5;
  v31 = type metadata accessor for TintedWidgetView(0, &v118);
  v86 = a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF3C();

  v32 = v118;
  [v118 fraction];
  v34 = v33;

  v35 = 1.0 - v34;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1DAECEF3C();

  v36 = v118;
  [v118 fraction];
  v38 = v37;

  v39 = MEMORY[0x1E697E5C0];
  v73[1] = v31;
  if (v35 == 0.0)
  {
    (*(v23 + 56))(v28, 1, 1, v22);
    v40 = v88;
    v99 = v88;
    WitnessTable = swift_getWitnessTable();
    v98 = v39;
    swift_getWitnessTable();
  }

  else
  {
    v117[9] = v88;
    v41 = swift_getWitnessTable();
    v42 = v81;
    sub_1DAED056C();
    v117[7] = v41;
    v117[8] = v39;
    swift_getWitnessTable();
    v43 = v79;
    sub_1DADB6258(v42, v22, v79);
    v44 = *(v23 + 8);
    v44(v42, v22);
    sub_1DADB6258(v43, v22, v42);
    v44(v43, v22);
    (*(v23 + 32))(v28, v42, v22);
    (*(v23 + 56))(v28, 0, 1, v22);
    v40 = v88;
  }

  v81 = v22;
  sub_1DADB79FC(v28, v96);
  v45 = *(v89 + 8);
  v86 = v28;
  v78 = v45;
  v79 = v89 + 8;
  v45(v28, v91);
  v47 = v94;
  v46 = v95;
  v48 = v87;
  v49 = v92;
  v50 = v93;
  if (v38 == 0.0)
  {
    (*(v80 + 56))(v92, 1, 1, v93);
    v104 = v46;
    v51 = swift_getWitnessTable();
    v52 = sub_1DADB7A68();
    v102 = v51;
    v103 = v52;
    v100 = swift_getWitnessTable();
    v101 = MEMORY[0x1E697E5C0];
    swift_getWitnessTable();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1DAECEF3C();

    v53 = v118;
    v117[6] = v95;
    v54 = swift_getWitnessTable();
    v118 = v53;
    v55 = v74;
    MEMORY[0x1E127C210](&v118, v48, &type metadata for TintedWidgetModifier, v54);

    v56 = sub_1DADB7A68();
    v117[4] = v54;
    v117[5] = v56;
    v57 = swift_getWitnessTable();
    v58 = v77;
    sub_1DAED056C();
    (*(v76 + 8))(v55, v47);
    v117[2] = v57;
    v117[3] = MEMORY[0x1E697E5C0];
    swift_getWitnessTable();
    v59 = v75;
    sub_1DADB6258(v58, v50, v75);
    v60 = v80;
    v61 = *(v80 + 8);
    v61(v58, v50);
    sub_1DADB6258(v59, v50, v58);
    v61(v59, v50);
    v40 = v88;
    (*(v60 + 32))(v49, v58, v50);
    (*(v60 + 56))(v49, 0, 1, v50);
  }

  v62 = v83;
  sub_1DADB79FC(v49, v83);
  v63 = v82;
  v80 = *(v82 + 8);
  v64 = v84;
  (v80)(v49, v84);
  v65 = v86;
  v66 = v91;
  (*(v89 + 16))(v86, v96, v91);
  v118 = v65;
  (*(v63 + 16))(v49, v62, v64);
  v119 = v49;
  v117[0] = v66;
  v117[1] = v64;
  v114 = v40;
  v112 = swift_getWitnessTable();
  v67 = MEMORY[0x1E697E5C0];
  v113 = MEMORY[0x1E697E5C0];
  v111 = swift_getWitnessTable();
  v115 = swift_getWitnessTable();
  v110 = v95;
  v68 = swift_getWitnessTable();
  v69 = sub_1DADB7A68();
  v108 = v68;
  v109 = v69;
  v106 = swift_getWitnessTable();
  v107 = v67;
  v105 = swift_getWitnessTable();
  v116 = swift_getWitnessTable();
  sub_1DADB7ABC(&v118, 2uLL, v117);
  v70 = v80;
  (v80)(v62, v64);
  v71 = v78;
  v78(v96, v66);
  v70(v92, v64);
  return v71(v65, v66);
}

uint64_t sub_1DADB79FC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_1DAED233C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

unint64_t sub_1DADB7A68()
{
  result = qword_1EE008CF0;
  if (!qword_1EE008CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE008CF0);
  }

  return result;
}

uint64_t sub_1DADB7ABC(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1DAED098C();
}

uint64_t sub_1DADB7C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1DADB7CF0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = sub_1DAED26FC();

    if (v3)
    {
      type metadata accessor for WidgetRendererSessionSubscriptionRequest(0);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1DADA5AD0(a1);
    if (v5)
    {
    }
  }

  return 0;
}

uint64_t sub_1DADB7DC4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09230, &qword_1DAED91B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09238, &qword_1DAED91B8);
  sub_1DAD64B94(&qword_1EE00BE50, &qword_1ECC09238, &qword_1DAED91B8, MEMORY[0x1E697FDF8]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1DADB7E98()
{
  result = qword_1EE005A28;
  if (!qword_1EE005A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09118, &unk_1DAED8780);
    sub_1DADB7F50();
    sub_1DAD64B94(&qword_1EE005B88, &qword_1ECC09060, &qword_1DAED85E8, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A28);
  }

  return result;
}

unint64_t sub_1DADB7F50()
{
  result = qword_1EE005A50;
  if (!qword_1EE005A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09110, &qword_1DAED8778);
    sub_1DADB8470();
    sub_1DADB8554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A50);
  }

  return result;
}

uint64_t sub_1DADB7FE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DADB802C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DAED23EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      sub_1DAECEE3C();
      sub_1DADB7FE4(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      do
      {
        v10 = sub_1DAED1C5C() & v7;
        if (v2 >= v9)
        {
          if (v10 >= v9 && v2 >= v10)
          {
LABEL_16:
            v13 = *(v3 + 48);
            v14 = (v13 + 8 * v2);
            v15 = (v13 + 8 * v6);
            if (v2 != v6 || v14 >= v15 + 1)
            {
              *v14 = *v15;
              v2 = v6;
            }
          }
        }

        else if (v10 >= v9 || v2 >= v10)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }
}

void sub_1DADB8220(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v6 = a2;
  v5 = a3;
  v4(v6, v5);
}

void sub_1DADB828C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DefaultWidgetLiveViewEntry(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D30, &unk_1DAED57E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = *(a3 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_viewModel);
    v14 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD6495C(v13 + v14, v10, &unk_1ECC07D30, &unk_1DAED57E0);
    if (swift_getEnumCaseMultiPayload())
    {
      v15 = a1;
      sub_1DAD64398(v10, &unk_1ECC07D30, &unk_1DAED57E0);
      v16 = 0;
    }

    else
    {
      sub_1DADB8C4C(v10, v7);
      v17 = a1;
      v16 = DefaultWidgetLiveViewEntry.containsInteractiveControls.getter();
      sub_1DADB9380(v7);
    }

    [v12 setContainsInteractiveControls_];
  }
}