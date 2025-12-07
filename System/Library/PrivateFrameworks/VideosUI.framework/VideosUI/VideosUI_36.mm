id sub_1E38F4938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LibraryDetailsContainerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E38F4A2C(uint64_t a1, uint64_t a2)
{
  result = [v2 vuiView];
  if (result)
  {
    v4 = result;
    v5 = sub_1E4206ED4();

    if (v5)
    {
      v6 = v5;
      sub_1E3D79C84();

      v7 = sub_1E4206ED4();

      if (v7)
      {

        return v7;
      }
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E38F4B74()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_106();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = *v0;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_dataSourceManager);

    v12 = (*(*v11 + 408))();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1E324FBDC();
  (*(v3 + 16))(v7, v13, v1);

  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  v16 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  if (os_log_type_enabled(v14, v15))
  {
    v34 = v1;
    v17 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v17 = 67109634;
    *(v17 + 4) = v8;
    *(v17 + 8) = 2080;
    v35 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D628, &qword_1E42A9B98);
    v18 = sub_1E4205F84();
    v20 = sub_1E3270FC8(v18, v19, v36);

    *(v17 + 10) = v20;
    *(v17 + 18) = 2080;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v21 = swift_unknownObjectWeakLoadStrong();
    if (v21)
    {
      v22 = v21;
      v23 = *(v21 + OBJC_IVAR____TtC8VideosUI37LibraryDetailsContainerViewController_menuItem);

      if (v23)
      {
      }
    }

    v24 = sub_1E4205F84();
    v26 = sub_1E3270FC8(v24, v25, v36);

    *(v17 + 20) = v26;
    _os_log_impl(&dword_1E323F000, v14, v15, "LibraryDetailsContainerViewController:: new library loading status %{BOOL}d\ncurrent selected menu %s\ncurrent display menu %s", v17, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v3 + 8))(v7, v34);
    v8 = v35;
    v16 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  }

  else
  {

    (*(v3 + 8))(v7, v1);
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (v27)
  {
    v28 = v27;
    v29 = *(v27 + v16[32]);

    if (v29)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        if (v12)
        {
          v32 = v29 == v12;
        }

        else
        {
          v32 = 0;
        }

        v33 = v32;
        (*((*MEMORY[0x1E69E7D40] & *v30) + 0x1C8))(v29, v33, v8);
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38F4F74()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = sub_1E324FBDC();
      (*(v2 + 16))(v6, v11, v0);

      v12 = sub_1E41FFC94();
      v13 = sub_1E4206814();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = OUTLINED_FUNCTION_6_21();
        v23 = swift_slowAlloc();
        v24 = v23;
        *v14 = 136315138;
        sub_1E38F53C4(v23, v15, v16);
        v17 = sub_1E4207944();
        v19 = sub_1E3270FC8(v17, v18, &v24);

        *(v14 + 4) = v19;
        _os_log_impl(&dword_1E323F000, v12, v13, "LibraryDetailsContainerViewController:: configure menu item %s when collection updated", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v2 + 8))(v6, v0);
      OUTLINED_FUNCTION_21_6();
      v21 = *(v20 + 216);

      LOBYTE(v21) = v21(v22);

      (*((*MEMORY[0x1E69E7D40] & *v8) + 0x1C8))(v10, 0, v21 & 1);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38F5214(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_21();
  (*(v2 + 208))(&v5);
  v3 = v6;
  *a1 = v5;
  OUTLINED_FUNCTION_43_1(v3);
  *(a1 + 48) = v4;
}

void (*sub_1E38F52F0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 224))();
  return sub_1E37BCF0C;
}

unint64_t sub_1E38F53C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE285ED0;
  if (!qword_1EE285ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE285ED0);
  }

  return result;
}

unint64_t sub_1E38F5418()
{
  result = qword_1EE282A78;
  if (!qword_1EE282A78)
  {
    type metadata accessor for LibLocalSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE282A78);
  }

  return result;
}

BOOL sub_1E38F5470(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *v3;
  sub_1E37DA464(a1, a2, a3);
  v6 = sub_1E4205DA4();
  v9 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v10 = v6 & v9;
    v11 = (1 << (v6 & v9)) & *(v5 + 56 + (((v6 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      sub_1E38F57F0(v4, v10, isUniquelyReferenced_nonNull_native);
      *v3 = v15;
      goto LABEL_7;
    }

    sub_1E37DA4B8(v6, v7, v8);
    if (sub_1E4205E84())
    {
      break;
    }

    v6 = v10 + 1;
  }

  LOBYTE(v4) = *(*(v5 + 48) + v10);
LABEL_7:
  result = v11 == 0;
  *a1 = v4;
  return result;
}

void sub_1E38F559C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D638, qword_1E42BF0E0);
  v4 = sub_1E4207444();
  v7 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v7;
    return;
  }

  v8 = 0;
  v9 = (v3 + 56);
  v10 = 1 << *(v3 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v3 + 56);
  v13 = (v10 + 63) >> 6;
  v14 = v4 + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_1E373CBF0(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(*(v3 + 48) + (v15 | (v8 << 6)));
    sub_1E37DA464(v4, v5, v6);
    v4 = sub_1E4205DA4();
    v19 = -1 << *(v7 + 32);
    v20 = v4 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v7 + 48) + v22) = v18;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v14 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1E38F57F0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E38F559C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_1E38F5A94(v6 + 1);
LABEL_10:
      v15 = *v3;
      sub_1E37DA464(v8, v9, v10);
      v16 = sub_1E4205DA4();
      v19 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a2 = v16 & v19;
        if (((*(v15 + 56 + (((v16 & v19) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v19)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_1E37DA4B8(v16, v17, v18);
        if (sub_1E4205E84())
        {
          goto LABEL_15;
        }

        v16 = a2 + 1;
      }
    }

    sub_1E38F5954();
  }

LABEL_7:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v5;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_15:
    sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v11 + 16) = v14;
  }
}

void sub_1E38F5954()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D638, qword_1E42BF0E0);
  v2 = *v0;
  v3 = sub_1E4207434();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1E38F5A94(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D638, qword_1E42BF0E0);
  v4 = sub_1E4207444();
  v7 = v4;
  if (*(v3 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v4 + 56;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_12:
        v17 = *(*(v3 + 48) + (v14 | (v8 << 6)));
        sub_1E37DA464(v4, v5, v6);
        v4 = sub_1E4205DA4();
        v18 = -1 << *(v7 + 32);
        v19 = v4 & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v13 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v13 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v13 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v7 + 48) + v21) = v17;
        ++*(v7 + 16);
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v13 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v15 = v8;
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v12)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v16 = *(v3 + 56 + 8 * v8);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v11 = (v16 - 1) & v16;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }
}

uint64_t sub_1E38F5D2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 280) = a1;
  v8 = a1;
  v9 = sub_1E3B76D04(63, a2, a3, a4, 0, 0, 0);

  if (v9)
  {
  }

  return v9;
}

uint64_t sub_1E38F5DAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1E38F5EA8();
  sub_1E327F454(a1, v15);
  sub_1E38F5EEC(a5, v14);
  v11 = sub_1E3BFF560(v15, v14);
  if (v11)
  {
    v12 = (*(v5 + 984))(v11, a2, a3, a4);

    sub_1E38F5F5C(a5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v12)
    {
    }
  }

  else
  {

    sub_1E38F5F5C(a5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return 0;
  }

  return v12;
}

unint64_t sub_1E38F5EA8()
{
  result = qword_1EE23AFA0;
  if (!qword_1EE23AFA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AFA0);
  }

  return result;
}

uint64_t sub_1E38F5EEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D640, &qword_1E42A9BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38F5F5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D640, &qword_1E42A9BA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E38F5FFC()
{
  v0 = sub_1E3B7736C();

  return MEMORY[0x1EEE6BDC0](v0, 288, 7);
}

uint64_t sub_1E38F6068()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage___seasonNumber);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage___seasonNumber + 9) & 1) == 0)
  {
    return *v1;
  }

  result = 0;
  *v1 = 0;
  v1[4] = 1;
  return result;
}

uint64_t (*sub_1E38F60AC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  v2 = sub_1E38F6068();
  OUTLINED_FUNCTION_4_17(v2, v3);
  return sub_1E38F60F4;
}

double sub_1E38F6100@<D0>(uint64_t a1@<X8>)
{
  sub_1E38F6590(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void sub_1E38F6144(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData);
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData + 8);
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData + 16);
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData + 24);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  v9 = *(v3 + 32);
  *(v3 + 32) = v2;
  sub_1E37C52A4(v5, v4, v6, v7, v9);
}

void (*sub_1E38F6174(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  sub_1E38F6590(v3);
  return sub_1E38F61D8;
}

void sub_1E38F61D8(void ***a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 32);
  v10 = v4 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData;
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  v13 = *(v10 + 32);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = v8;
  *(v10 + 32) = v9;
  if (a2)
  {
    sub_1E37C5358(v5, v6, v7, v8, v9);
    v14 = OUTLINED_FUNCTION_57();
    sub_1E37C52A4(v14, v15, v11, v12, v13);
    sub_1E37C52B8(*v3, v3[1], v3[2], v3[3], *(v3 + 32));
  }

  else
  {
    v16 = OUTLINED_FUNCTION_57();
    sub_1E37C52A4(v16, v17, v11, v12, v13);
  }

  free(v3);
}

id sub_1E38F6298()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage___episodeNumber);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage___episodeNumber + 9) & 1) == 0)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandBaseMediaEntity_managedObject);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = result;
    v5 = v2;
    v6 = [v4 episodeNumberInSeason];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 integerValue];
    }

    else
    {
      v8 = 0;
    }

    v10 = [v4 episodeNumberInSeries];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 integerValue];
    }

    else
    {
      v12 = 0;
    }

    v13 = v7 | v11;

    if (v7)
    {
      result = v8;
    }

    else
    {
      result = v12;
    }

    v9 = v13 == 0;
  }

  else
  {
    v9 = 1;
  }

  *v1 = result;
  v1[8] = v9;
  v1[9] = 0;
  return result;
}

uint64_t (*sub_1E38F63D4(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  v2 = sub_1E38F6298();
  OUTLINED_FUNCTION_4_17(v2, v3);
  return sub_1E38F641C;
}

void *sub_1E38F6428()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage___fractionalEpisodeNumber);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage___fractionalEpisodeNumber + 9) & 1) == 0)
  {
    return *v1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26LibSidebandBaseMediaEntity_managedObject);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    goto LABEL_7;
  }

  v4 = result;
  v5 = v2;
  v6 = [v4 fractionalEpisodeNumberInSeason];
  if (!v6)
  {

    result = 0;
LABEL_7:
    v10 = 1;
    goto LABEL_8;
  }

  v7 = v6;
  [v6 doubleValue];
  v9 = v8;

  v10 = 0;
  result = v9;
LABEL_8:
  *v1 = result;
  v1[8] = v10;
  v1[9] = 0;
  return result;
}

uint64_t (*sub_1E38F6518(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  v2 = sub_1E38F6428();
  OUTLINED_FUNCTION_4_17(v2, v3);
  return sub_1E38F6560;
}

uint64_t sub_1E38F656C(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 8);
  v4 = *(result + 16) + *a3;
  *v4 = *result;
  *(v4 + 8) = v3;
  return result;
}

void sub_1E38F6590(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData);
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData + 8);
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData + 16);
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData + 24);
  v8 = v4;
  v9 = v5;
  v10 = *(v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData + 32);
  v11 = v6;
  v12 = v7;
  v13 = *(v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData + 32);
  if (v10 != 254)
  {
    goto LABEL_40;
  }

  v57 = (v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData + 8);
  v58 = *(v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData + 24);
  v59 = *(v1 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData + 16);
  v14 = *(v1 + OBJC_IVAR____TtC8VideosUI26LibSidebandBaseMediaEntity_managedObject);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  v60 = v5;
  v61 = v4;
  if (!v15)
  {
    goto LABEL_7;
  }

  v16 = v15;
  v17 = v14;
  v18 = sub_1E38F6DA4(v16);
  if (!v18)
  {

LABEL_7:
    v8 = 0;
    v13 = -1;
LABEL_39:
    v64 = v8;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    LOBYTE(v68) = v13;
    v49 = *(v3 + 16);
    v50 = *(v3 + 24);
    *v3 = v8;
    v57[1] = 0;
    v57[2] = 0;
    *v57 = 0;
    v51 = *(v3 + 32);
    *(v3 + 32) = v13;
    sub_1E37C5550(&v64, v63);
    v52 = OUTLINED_FUNCTION_57();
    sub_1E37C52A4(v52, v53, v49, v50, v51);
    v9 = 0;
    v11 = 0;
    v12 = 0;
    v5 = v60;
    v4 = v61;
    v7 = v58;
    v6 = v59;
    LOBYTE(v10) = -2;
LABEL_40:
    sub_1E37C55C0(v4, v5, v6, v7, v10);
    *a1 = v8;
    *(a1 + 8) = v9;
    *(a1 + 16) = v11;
    *(a1 + 24) = v12;
    *(a1 + 32) = v13;
    return;
  }

  v54 = v18 & 0xC000000000000001;
  v55 = v17;
  v56 = v18;
  if ((v18 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    sub_1E38F6E48();
    OUTLINED_FUNCTION_1_88();
    sub_1E38F6E8C(v19, v20, MEMORY[0x1E69E81B8]);
    OUTLINED_FUNCTION_57();
    sub_1E4206664();
    v21 = v63[0];
    v22 = v63[1];
    v17 = v63[2];
    v23 = v63[3];
    v24 = v63[4];
  }

  else
  {
    v22 = v18;
    OUTLINED_FUNCTION_3_64();
    v24 = v25 & v26;
    v23 = 0;
  }

  v27 = (v17 + 64) >> 6;
  if (v21 < 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v28 = v23;
  v29 = v24;
  v30 = v23;
  if (!v24)
  {
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v27)
      {
        goto LABEL_21;
      }

      v29 = *(v22 + 8 * v30);
      ++v28;
      if (v29)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_14:
  v31 = (v29 - 1) & v29;
  v8 = *(*(v21 + 48) + ((v30 << 9) | (8 * __clz(__rbit64(v29)))));
  if (v8)
  {
    while ([v8 imageType] != 1)
    {

      v23 = v30;
      v24 = v31;
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_16:
      v30 = v21 & 0x7FFFFFFFFFFFFFFFLL;
      v32 = sub_1E42073C4();
      if (v32)
      {
        v62 = v32;
        sub_1E38F6E48();
        swift_dynamicCast();
        v8 = v64;
        v30 = v23;
        v31 = v24;
        if (v64)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    goto LABEL_37;
  }

LABEL_21:
  OUTLINED_FUNCTION_2_68();
  sub_1E34AF4DC(v33);
  v34 = v56;
  if (v54)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    sub_1E38F6E48();
    OUTLINED_FUNCTION_1_88();
    sub_1E38F6E8C(v35, v36, MEMORY[0x1E69E81B8]);
    OUTLINED_FUNCTION_57();
    sub_1E4206664();
    v34 = v64;
    v37 = v65;
    v30 = v66;
    v38 = v67;
    v39 = v68;
  }

  else
  {
    v37 = v56;
    OUTLINED_FUNCTION_3_64();
    v39 = v40 & v41;

    v38 = 0;
  }

  v42 = (v30 + 64) >> 6;
  if (v34 < 0)
  {
    goto LABEL_31;
  }

LABEL_25:
  v43 = v38;
  v44 = v39;
  v45 = v38;
  if (v39)
  {
LABEL_29:
    v46 = (v44 - 1) & v44;
    v8 = *(*(v34 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v44)))));
    if (!v8)
    {
LABEL_36:

      OUTLINED_FUNCTION_2_68();
      sub_1E34AF4DC(v47);

      v8 = 0;
LABEL_38:
      v13 = 1;
      goto LABEL_39;
    }

    while ([v8 imageType])
    {

      v38 = v45;
      v39 = v46;
      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_31:
      if (sub_1E42073C4())
      {
        sub_1E38F6E48();
        swift_dynamicCast();
        v8 = v62;
        v45 = v38;
        v46 = v39;
        if (v62)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

LABEL_37:

    OUTLINED_FUNCTION_2_68();
    sub_1E34AF4DC(v48);

    goto LABEL_38;
  }

  while (1)
  {
    v45 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      break;
    }

    if (v45 >= v42)
    {
      goto LABEL_36;
    }

    v44 = *(v37 + 8 * v45);
    ++v43;
    if (v44)
    {
      goto LABEL_29;
    }
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_1E38F6AE8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = v2 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage___seasonNumber;
  *v3 = 0;
  *(v3 + 8) = 256;
  v4 = v2 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage___episodeNumber;
  *v4 = 0;
  *(v4 + 8) = 256;
  v5 = v2 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage___fractionalEpisodeNumber;
  *v5 = 0;
  *(v5 + 8) = 256;
  v6 = v2 + OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = -2;
  return a2(a1);
}

uint64_t sub_1E38F6B60()
{
  v0 = sub_1E413CEFC();
  OUTLINED_FUNCTION_7_15(v0, OBJC_IVAR____TtC8VideosUI29LibSidebandEpisodeMediaEntity____lazy_storage____imageData);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E38F6CA8(uint64_t a1)
{
  result = sub_1E38F6E8C(&qword_1ECF2D648, type metadata accessor for LibSidebandEpisodeMediaEntity, &unk_1E42EE6F8);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LibSidebandEpisodeMediaEntity(uint64_t a1)
{
  result = qword_1ECF4F460;
  if (!qword_1ECF4F460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E38F6DA4(void *a1)
{
  v2 = [a1 imageInfos];

  if (!v2)
  {
    return 0;
  }

  sub_1E38F6E48();
  sub_1E38F6E8C(&qword_1ECF2D658, sub_1E38F6E48, MEMORY[0x1E69E81B8]);
  v3 = sub_1E4206624();

  return v3;
}

unint64_t sub_1E38F6E48()
{
  result = qword_1ECF2D650;
  if (!qword_1ECF2D650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF2D650);
  }

  return result;
}

uint64_t sub_1E38F6E8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MonogramLockup(uint64_t a1)
{
  result = qword_1EE2A55F0;
  if (!qword_1EE2A55F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E38F6F20@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for MonogramLockup(0) + 28);
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  memcpy(a3 + 1, a2, 0xC3uLL);
  v7 = *(*a1 + 392);

  v9 = v7(v8);

  if (!v9)
  {
    goto LABEL_4;
  }

  type metadata accessor for EntityLockupCollectionViewCellLayout();
  result = swift_dynamicCastClass();
  if (!result)
  {

LABEL_4:
    type metadata accessor for EntityLockupCollectionViewCellLayout();
    result = sub_1E3B9117C(0, 0);
  }

  a3[26] = result;
  return result;
}

void sub_1E38F703C(uint64_t a1@<X8>)
{
  v51 = a1;
  v52 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v50 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v49 = v5 - v4;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v47 = v7;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v46 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D660, &qword_1E42A9C70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D668, &qword_1E42A9C78);
  OUTLINED_FUNCTION_0_10();
  v42 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v41 - v24;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D670, &qword_1E42A9C80);
  OUTLINED_FUNCTION_0_10();
  v43 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v41 = &v41 - v28;
  v29 = sub_1E38F7574(v21);
  v30 = *(*(**(v1 + 208) + 1840))(v29);
  v31 = (*(v30 + 1712))();

  if (v31 == 13)
  {
    v32 = sub_1E42012F4();
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v32);
  }

  else
  {
    sub_1E3B033CC(v31, v13);
  }

  sub_1E3B03114(v13, v17);
  sub_1E325F6F0(v13, &qword_1ECF2A250, " B\r");
  v33 = sub_1E38F794C();
  v34 = sub_1E32752B0(&qword_1EE23ACD8, &qword_1ECF2A1F8, &qword_1E429E7F0, MEMORY[0x1E69E6ED8]);
  sub_1E4202FA4();
  sub_1E325F6F0(v17, &qword_1ECF2A1F8, &qword_1E429E7F0);
  sub_1E32B96D4(v21);
  v35 = v46;
  sub_1E4202474();
  v53 = v18;
  v54 = v14;
  v55 = v33;
  v56 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v41;
  v38 = v44;
  sub_1E4203224();
  (*(v47 + 8))(v35, v48);
  (*(v42 + 8))(v25, v38);
  v39 = v49;
  sub_1E4201C94();
  v53 = v38;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v40 = v45;
  sub_1E4203294();
  (*(v50 + 8))(v39, v52);
  (*(v43 + 8))(v37, v40);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38F7574@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D698, &qword_1E42A9C90);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D680, &qword_1E42A9C88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6B0, &qword_1E42A9D00);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  *v5 = sub_1E4201D44();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6B8, &qword_1E42A9D08);
  sub_1E38F7B14(&v5[*(v16 + 44)]);
  sub_1E4203DA4();
  sub_1E42015C4();
  sub_1E38F843C(v5, v9);
  v17 = memcpy(&v9[*(v6 + 36)], __src, 0x70uLL);
  v18 = *(**v1 + 392);
  if (v18(v17))
  {
    OUTLINED_FUNCTION_30();
    v20 = (*(v19 + 744))();
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_1E38F7A40();
  sub_1E39B87A4(v20, v6, v21);

  v22 = sub_1E325F6F0(v9, &qword_1ECF2D680, &qword_1E42A9C88);
  v23 = 0.0;
  if (v18(v22))
  {
    OUTLINED_FUNCTION_30();
    (*(v24 + 552))(v43);
    v25 = v43[0];
    v26 = v43[1];
    v27 = v43[2];
    v28 = v43[3];

    if ((v44 & 1) == 0)
    {
      v29.n128_u64[0] = v25;
      v30.n128_u64[0] = v26;
      v31.n128_u64[0] = v27;
      v32.n128_u64[0] = v28;
      v23 = j_nullsub_1(v29, v30, v31, v32);
    }
  }

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D660, &qword_1E42A9C70);
  v34 = v41;
  v35 = (v41 + *(v33 + 36));
  v36 = *(sub_1E4201534() + 20);
  v37 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v38 + 104))(v35 + v36, v37);
  *v35 = v23;
  v35[1] = v23;
  *(v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
  return (*(v12 + 32))(v34, v15, v10);
}

unint64_t sub_1E38F794C()
{
  result = qword_1ECF2D678;
  if (!qword_1ECF2D678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D660, &qword_1E42A9C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D680, &qword_1E42A9C88);
    sub_1E38F7A40();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289E08, &qword_1ECF298B0, &unk_1E42AC0E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D678);
  }

  return result;
}

unint64_t sub_1E38F7A40()
{
  result = qword_1ECF2D688;
  if (!qword_1ECF2D688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D680, &qword_1E42A9C88);
    sub_1E32752B0(&qword_1ECF2D690, &qword_1ECF2D698, &qword_1E42A9C90, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D688);
  }

  return result;
}

uint64_t sub_1E38F7B14@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StackedTextViews(0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29648, &qword_1E42B70C0);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  sub_1E38F7CD4(&v19 - v14);
  sub_1E38F7F84(v8);
  sub_1E37E93E8(v15, v12, &qword_1ECF29648, &qword_1E42B70C0);
  sub_1E38F84AC(v8, v5);
  sub_1E37E93E8(v12, a1, &qword_1ECF29648, &qword_1E42B70C0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6C0, &unk_1E42A9D10);
  sub_1E38F84AC(v5, a1 + *(v16 + 48));
  v17 = a1 + *(v16 + 64);
  *v17 = 0;
  *(v17 + 8) = 0;
  sub_1E38F8510(v8);
  sub_1E325F6F0(v15, &qword_1ECF29648, &qword_1E42B70C0);
  sub_1E38F8510(v5);
  return sub_1E325F6F0(v12, &qword_1ECF29648, &qword_1E42B70C0);
}

void sub_1E38F7CD4(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Monogram(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  v8 = (*(**v1 + 488))();
  if (v8 && (v10 = sub_1E373E010(41, v8, v9), , v10))
  {
    v11 = *(*v10 + 392);

    v13 = v11(v12);
    if (v13)
    {
      OUTLINED_FUNCTION_30();
      v15 = (*(v14 + 200))();
      v17 = v16;

      if (v17)
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v23 = v11(v13);
    v24 = v23;
    if (v23)
    {
      v25 = (*(*v23 + 304))(v23);
      v27 = v26;

      if (v27)
      {
        v24 = 0;
      }

      else
      {
        v24 = v25;
      }
    }

    v28 = j__OUTLINED_FUNCTION_51_1();
    v29 = j__OUTLINED_FUNCTION_18();
    v30 = j__OUTLINED_FUNCTION_18();
    sub_1E3EB9C0C(v15, v24, 0, 0, 0, 1, v28 & 1, 2, v31, 0, 1, 0, 1, 0, 2, v29 & 1, v30 & 1);
    sub_1E3BD63E4(v10, 0, v31, 0, 0, 0, 0, 0, v7);

    sub_1E38F856C(v7, a1);
    __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }
}

void sub_1E38F7F84(uint64_t a1@<X8>)
{
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  v9 = *(**v1 + 488);
  v10 = v9();
  if (!v10)
  {
    goto LABEL_5;
  }

  v12 = sub_1E373E010(23, v10, v11);

  if (v12 && *v12 != _TtC8VideosUI13TextViewModel)
  {

LABEL_5:
    v12 = 0;
  }

  v13 = (v9)(v10);
  if (v13)
  {
    v15 = sub_1E373E010(15, v13, v14);

    if (!v15 || *v15 == _TtC8VideosUI13TextViewModel)
    {
      goto LABEL_11;
    }
  }

  v15 = 0;
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D378, &unk_1E42E1610);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E4299720;
  *(v16 + 32) = v12;
  *(v16 + 40) = v15;
  type metadata accessor for MonogramLockup(0);

  sub_1E3746E10(v8);
  v17 = sub_1E42012B4();
  (*(v4 + 8))(v8, v2);
  if (v17)
  {
    v18 = sub_1E4201D54();
  }

  else
  {
    v18 = sub_1E4201D44();
  }

  v19 = v18;
  v20 = j__OUTLINED_FUNCTION_18();
  sub_1E403E654(v16, v19, v20 & 1, a1);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38F821C(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E374A270();
    if (v2 <= 0x3F)
    {
      type metadata accessor for EntityLockupCollectionViewCellLayout();
      if (v3 <= 0x3F)
      {
        sub_1E38D5D68(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1E38F82D0()
{
  result = qword_1ECF2D6A0;
  if (!qword_1ECF2D6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D6A8, &qword_1E42A9CF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D668, &qword_1E42A9C78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D660, &qword_1E42A9C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
    sub_1E38F794C();
    sub_1E32752B0(&qword_1EE23ACD8, &qword_1ECF2A1F8, &qword_1E429E7F0, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D6A0);
  }

  return result;
}

uint64_t sub_1E38F843C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D698, &qword_1E42A9C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38F84AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StackedTextViews(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E38F8510(uint64_t a1)
{
  v2 = type metadata accessor for StackedTextViews(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E38F856C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Monogram(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SearchTemplateView(uint64_t a1)
{
  result = qword_1EE2A0400;
  if (!qword_1EE2A0400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E38F861C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6C8, &unk_1E42A9DE0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  sub_1E3743538(v2, &v16 - v9, &qword_1ECF2D6C8, &unk_1E42A9DE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1E3900BAC(v10, a1);
  }

  v12 = sub_1E4206804();
  v13 = sub_1E42026D4();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1E3270FC8(0xD000000000000020, 0x80000001E42672C0, &v17);
    _os_log_impl(&dword_1E323F000, v13, v12, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E69143B0](v15, -1, -1);
    MEMORY[0x1E69143B0](v14, -1, -1);
  }

  sub_1E4201AA4();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E38F8894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0, &qword_1E42A9DF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E3743538(a1, &v5 - v3, &qword_1ECF2D6D0, &qword_1E42A9DF0);
  return sub_1E42018F4();
}

void sub_1E38F893C()
{
  OUTLINED_FUNCTION_9_4();
  v49 = v1;
  v2 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_58_2();
  OUTLINED_FUNCTION_6_14(0, 0, v2 & 1, v58, 0, 1, 0, 1, v45, v46[0], v46[1], v46[2]);
  sub_1E375C2C0(v58, __dst);
  v3 = j__OUTLINED_FUNCTION_18();
  v4 = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_10_39();
  OUTLINED_FUNCTION_18_15();
  sub_1E3EB9DAC(v9, v5, v6, v7, v8, 0, 0, 1, 0, 1, 0, 0, 256, 3, 0, v3 & 1, v4 & 1, v47);
  v57 = __src[112];
  v10 = *(v0 + *(type metadata accessor for SearchTemplateView(0) + 32));
  if (v10)
  {
    v11 = *(*v10 + 184);

    v48 = v11(v12);
    v14 = v13;
    v16 = v15;

    v57 = v16 & 1;
    memcpy(__dst, __src, sizeof(__dst));
    v63 = v48;
    v64 = v14;
    LOBYTE(v11) = v16 & 1;
    v65 = v16 & 1;
    memcpy(v66, v60, 0x41uLL);
    v66[65] = 1;
    v67 = v61;
    sub_1E375C1CC(__dst, v51);
    v17 = j__OUTLINED_FUNCTION_18();
    v18 = j__OUTLINED_FUNCTION_18();
    j_j__OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_3();
    j__OUTLINED_FUNCTION_51_1();
    v19 = j__OUTLINED_FUNCTION_18();
    v20 = v19;
    v21 = sub_1E3CBD2B8(v19);
    v22 = j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_18_15();
    sub_1E3EBA150(v28, v23, v24, v25, v26, v17, v18, 0, v27, v29, v30, v31, v32, v33, v34, v35, v36, 0, 1, v20 & 1, v21, v22 & 1);
    sub_1E3EBA2C8(1);
    v37 = *(*v10 + 184);

    v39 = v37(v38);
    v41 = v40;
    v43 = v42;

    sub_1E375C31C(v58);
    memcpy(v51, __src, sizeof(v51));
    v52 = v48;
    v53 = v14;
    v54 = v11;
    memcpy(v55, v60, 0x41uLL);
    v55[65] = 1;
    v56 = v61;
    sub_1E37E6F2C(v51);
    v50[25] = v39;
    v50[26] = v41;
    LOBYTE(v50[27]) = v43 & 1;
    memcpy(v49, v50, 0x150uLL);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    type metadata accessor for AppEnvironment(0);
    OUTLINED_FUNCTION_3_65();
    sub_1E3900B14(v44);
    sub_1E4201744();
    __break(1u);
  }
}

uint64_t sub_1E38F8CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for SearchTemplateView(0);
  v17 = v16[6];
  *(a9 + v17) = swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_55_13(v18);
  v19 = v16[7];
  *(a9 + v19) = swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  OUTLINED_FUNCTION_55_13(v20);
  v21 = (a9 + v16[8]);
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_3_65();
  sub_1E3900B14(v22);
  *v21 = sub_1E4201754();
  v21[1] = v23;
  v24 = v16[9];
  *(a9 + v24) = swift_getKeyPath();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6C8, &unk_1E42A9DE0);
  OUTLINED_FUNCTION_55_13(v25);
  *(a9 + v16[11]) = 0x402E000000000000;
  *(a9 + v16[12]) = 0x4034000000000000;
  *(a9 + v16[13]) = 0x4024000000000000;
  v26 = v16[14];
  *(a9 + v26) = [objc_opt_self() sharedInstance];
  v27 = v16[15];
  type metadata accessor for SearchHeaderLayout();
  *(a9 + v27) = sub_1E3FC56F8();
  v28 = a9 + v16[16];
  type metadata accessor for CGSize(0);
  v46 = 0;
  v47 = 0;
  sub_1E42038E4();
  v29 = v45;
  *v28 = v44;
  *(v28 + 16) = v29;
  *a9 = a1;
  *(a9 + v16[19]) = a8;
  *(a9 + v16[17]) = a6;
  *(a9 + v16[18]) = a7;
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a8;
  *(a9 + 8) = sub_1E38F9010;
  *(a9 + 16) = v30;
  *(a9 + 24) = 0;
  v31 = *(*a1 + 488);
  swift_retain_n();

  v33 = v31(v32);

  if (!v33 || (v35 = sub_1E373E010(17, v33, v34), , !v35))
  {
    v44 = 0u;
    v45 = 0u;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_8();
  (*(v36 + 512))(&v44);

  if (!*(&v45 + 1))
  {
LABEL_7:
    result = sub_1E325F69C(&v44, &unk_1ECF296E0);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v38 = 0;
    v39 = 0xE000000000000000;
    goto LABEL_9;
  }

  v38 = v46;
  v39 = v47;
LABEL_9:
  v40 = (a9 + v16[10]);
  *v40 = v38;
  v40[1] = v39;
  v41 = a9 + v16[20];
  *v41 = a2;
  *(v41 + 8) = a3;
  *(v41 + 16) = a4 & 1;
  *(v41 + 24) = a5;
  return result;
}

uint64_t sub_1E38F9010()
{
  type metadata accessor for SearchInteractor(0);
  OUTLINED_FUNCTION_111();
  (*(v0 + 648))();

  return sub_1E4197050();
}

void sub_1E38F908C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v126 = v2;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0, &qword_1E42A9DF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v124 = v4;
  v5 = OUTLINED_FUNCTION_138();
  v129 = type metadata accessor for SearchTemplateView(v5);
  OUTLINED_FUNCTION_0_10();
  v118 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_6();
  v122 = v9;
  v123 = v8;
  OUTLINED_FUNCTION_138();
  sub_1E4201184();
  OUTLINED_FUNCTION_0_10();
  v120 = v11;
  v121 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v119 = v13 - v12;
  OUTLINED_FUNCTION_138();
  v108 = sub_1E4201FC4();
  OUTLINED_FUNCTION_0_10();
  v107 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v17 - v16);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D8, &qword_1E42A9DF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &KeyPath - v19;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6E0, &qword_1E42A9E00);
  OUTLINED_FUNCTION_0_10();
  v111 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v23);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6E8, &qword_1E42A9E08);
  OUTLINED_FUNCTION_0_10();
  v112 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6F0, &qword_1E42A9E10);
  OUTLINED_FUNCTION_0_10();
  v116 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v29);
  v30 = *(v0 + 8);
  v31 = *(v1 + 16);
  v32 = *(v1 + 24);
  v33 = type metadata accessor for SearchInteractor(0);
  OUTLINED_FUNCTION_0_79();
  sub_1E3900B14(v34);
  v105 = v30;
  v104 = v31;
  v103 = v32;
  sub_1E4200BC4();
  OUTLINED_FUNCTION_2_1();
  LOBYTE(v32) = (*(v35 + 1080))();

  LOBYTE(v30) = sub_1E40781E4(v32, 2);
  KeyPath = swift_getKeyPath();
  *v20 = v30 & 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6F8, &qword_1E42A9E48);
  v102 = v20;
  sub_1E38F9C7C();
  v37 = *(v36 + 72);
  v38 = v1;
  OUTLINED_FUNCTION_53_5();
  v130 = v33;
  sub_1E4200BC4();
  OUTLINED_FUNCTION_2_1();
  v40 = (*(v39 + 360))();
  v42 = v41;

  if (v40 == 0x6F6973726556736ALL && v42 == 0xEA00000000003F6ELL)
  {

    v44 = 1;
  }

  else
  {
    v44 = sub_1E42079A4();
  }

  v138[0] = v44 & 1;
  v137 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  v133 = MEMORY[0x1E69E7CC0];
  v131 = 0;
  OUTLINED_FUNCTION_53_5();
  v46 = *sub_1E4200BC4();
  v47 = (*(v46 + 696))();
  v49 = v48;

  if (!v49)
  {
    v138[0] = 1;
    v131 = v47;
    goto LABEL_25;
  }

  if (v49 != 1)
  {
    v137 = 1;
    goto LABEL_25;
  }

  if (([objc_opt_self() isSearchEnabled] & 1) == 0 || !sub_1E32AE9B0(v47))
  {
LABEL_19:
    v56 = sub_1E38FB1DC(v47);
    sub_1E38FFF2C(v47, 1);
    if (v56)
    {
      v57 = v56;
    }

    else
    {
      v57 = v45;
    }

    if (v57 >> 62)
    {
      type metadata accessor for ViewModel();

      OUTLINED_FUNCTION_32_0();
      v58 = sub_1E42076C4();
    }

    else
    {

      sub_1E42079D4();
      type metadata accessor for ViewModel();
      v58 = v57;
    }

    v133 = v58;
    goto LABEL_25;
  }

  if ((v47 & 0xC000000000000001) != 0)
  {
    v50 = MEMORY[0x1E6911E60](0, v47);
LABEL_14:
    v51 = *(v50 + 98);

    if (sub_1E373F6E0(v51, 89, v52, v53, v54, v55))
    {
      v133 = v47;
LABEL_25:
      v59 = v102;
      v60 = &v102[v37];
      v61 = v129;
      v62 = *(v38 + *(v129 + 52));
      *v60 = sub_1E4201D44();
      *(v60 + 1) = v62;
      v60[16] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D810, &qword_1E42AA058);
      sub_1E38FB30C();

      v127 = v38;
      sub_1E38FA100();
      v63 = v59 + *(v36 + 80);
      *v63 = KeyPath;
      *(v63 + 8) = 0;
      v64 = (v59 + *(v128 + 36));
      *v64 = 0xD000000000000019;
      v64[1] = 0x80000001E42672A0;
      sub_1E4200BD4();
      swift_getKeyPath();
      sub_1E42010E4();

      v65 = v106;
      sub_1E4201FB4();
      v66 = (v38 + *(v61 + 40));
      v67 = v66[1];
      v131 = *v66;
      v132 = v67;
      v130 = sub_1E38FE410();
      v70 = sub_1E32822E0(v130, v68, v69);

      v71 = v109;
      v72 = v128;
      sub_1E4202D64();

      OUTLINED_FUNCTION_15_5();
      v73(v65, v108);
      v74 = sub_1E325F69C(v59, &qword_1ECF2D6D8);
      MEMORY[0x1EEE9AC00](v74);
      v75 = v127;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D710, &qword_1E42A9E80);
      v133 = v72;
      v134 = MEMORY[0x1E69E6158];
      v135 = v130;
      v136 = v70;
      v77 = OUTLINED_FUNCTION_56();
      v78 = sub_1E38FE564(&unk_1ECF2D718);
      v79 = v110;
      v80 = v113;
      sub_1E42030D4();
      OUTLINED_FUNCTION_15_5();
      v81(v71, v80);
      v133 = v80;
      v134 = v76;
      v135 = v77;
      v136 = v78;
      v82 = OUTLINED_FUNCTION_56();
      v83 = v114;
      v84 = v115;
      MEMORY[0x1E690DBC0](1, v115, v82);
      OUTLINED_FUNCTION_15_5();
      v85(v79, v84);
      v86 = v119;
      sub_1E4201174();
      OUTLINED_FUNCTION_2_69();
      v130 = v87;
      v88 = v75;
      v89 = v123;
      sub_1E39009CC(v88, v123, v90);
      v91 = (*(v118 + 80) + 16) & ~*(v118 + 80);
      v92 = swift_allocObject();
      sub_1E38FE718(v89, v92 + v91);
      v133 = v84;
      v134 = v82;
      OUTLINED_FUNCTION_56();
      v93 = v126;
      v94 = v117;
      sub_1E4203544();

      (*(v120 + 8))(v86, v121);
      OUTLINED_FUNCTION_15_5();
      v95(v83, v94);
      v96 = v127;
      v97 = v124;
      sub_1E38F861C(v124);
      v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D750, &unk_1E42A9EA0);
      sub_1E42070F4();
      sub_1E325F69C(v97, &qword_1ECF2D6D0);
      sub_1E39009CC(v96, v89, v130);
      v99 = swift_allocObject();
      sub_1E38FE718(v89, v99 + v91);
      v100 = (v93 + *(v98 + 56));
      *v100 = sub_1E38FE86C;
      v100[1] = v99;
      OUTLINED_FUNCTION_25_2();
      return;
    }

    goto LABEL_19;
  }

  if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_14;
  }

  __break(1u);
}

void sub_1E38FA100()
{
  OUTLINED_FUNCTION_9_4();
  v24 = v1;
  sub_1E4201134();
  OUTLINED_FUNCTION_0_10();
  v21 = v2;
  v22 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D780, &qword_1E42A9FB0);
  OUTLINED_FUNCTION_0_10();
  v20 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D788, &qword_1E42A9FB8);
  OUTLINED_FUNCTION_0_10();
  v23 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31_2();
  type metadata accessor for SearchInteractor(0);
  OUTLINED_FUNCTION_0_79();
  sub_1E3900B14(v12);
  OUTLINED_FUNCTION_57();
  sub_1E4200BC4();
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 1448))();
  OUTLINED_FUNCTION_11_5();

  sub_1E38F893C();
  memcpy(v27, v26, 0xC3uLL);
  sub_1E375C1CC(v27, v25);
  sub_1E375B760(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D790, &qword_1E42A9FC0);
  sub_1E38FF900();
  sub_1E4202AE4();
  sub_1E4201124();
  v14 = sub_1E3743478(&unk_1ECF2D7F8);
  v15 = MEMORY[0x1E697C0D8];
  sub_1E42035B4();
  (*(v22 + 8))(v6, v21);
  (*(v20 + 8))(v0, v7);
  sub_1E4202734();
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_3();
  v25[0] = v7;
  v25[1] = v21;
  v25[2] = v14;
  v25[3] = v15;
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6();
  sub_1E4202E24();

  sub_1E37E6F2C(v27);
  v16 = OUTLINED_FUNCTION_50_8();
  v17(v16, v23);
  KeyPath = swift_getKeyPath();
  v19 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D800, &qword_1E42AA020) + 36);
  *v19 = KeyPath;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  OUTLINED_FUNCTION_10_3();
}

uint64_t sub_1E38FA4D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 360))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E38FA524(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 368);

  return v4(v2, v3);
}

uint64_t sub_1E38FA594@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D728, &qword_1E42A9E88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-v5];
  type metadata accessor for SearchInteractor(0);
  OUTLINED_FUNCTION_0_79();
  sub_1E3900B14(v7);
  sub_1E4200BC4();
  OUTLINED_FUNCTION_2_1();
  v9 = (*(v8 + 1080))();

  v15[15] = v9;
  v15[14] = 2;
  sub_1E38FF540(v10, v11, v12);
  if (sub_1E4205E84())
  {
    v13 = 1;
  }

  else
  {
    sub_1E38FA724();
    sub_1E3741EA0(v6, a2, &qword_1ECF2D728, &qword_1E42A9E88);
    v13 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v13, 1, v3);
}

void sub_1E38FA724()
{
  OUTLINED_FUNCTION_9_4();
  v96 = v1;
  v88 = sub_1E4204874();
  OUTLINED_FUNCTION_0_10();
  v86 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v84 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v83 = v8;
  v9 = OUTLINED_FUNCTION_138();
  v92 = type metadata accessor for SearchTemplateView(v9);
  OUTLINED_FUNCTION_0_10();
  v81 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_6();
  v82 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D740, &qword_1E42A9E98);
  OUTLINED_FUNCTION_0_10();
  v89 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D778, &unk_1E42A9FA0);
  OUTLINED_FUNCTION_0_10();
  v87 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v85 = v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D738, &qword_1E42A9E90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v93 = v19;
  v91 = v0;
  type metadata accessor for SearchInteractor(0);
  OUTLINED_FUNCTION_0_79();
  sub_1E3900B14(v20);
  sub_1E4200BC4();
  OUTLINED_FUNCTION_2_1();
  v22 = (*(v21 + 600))();

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v23 = *(v22 + 96);

  sub_1E4200BC4();
  OUTLINED_FUNCTION_2_1();
  v25 = (*(v24 + 360))();
  v27 = v26;

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

    v41 = 1;
    v42 = v96;
LABEL_21:
    __swift_storeEnumTagSinglePayload(v42, v41, 1, v95);
    OUTLINED_FUNCTION_10_3();
    return;
  }

  v90 = v23;
  v29 = (v0 + *(v92 + 64));
  v30 = *v29;
  v31 = v29[1];
  v32 = v29[2];
  v100[0] = *v29;
  v100[1] = v31;
  v100[2] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29028, &qword_1E42992D0);
  sub_1E42038F4();
  if (v99[0] != 0.0 || v99[1] != 0.0)
  {
    v100[0] = v30;
    v100[1] = v31;
    v100[2] = v32;
    sub_1E42038F4();
    v40 = v99[0];
    v39 = *&v99[1];
    goto LABEL_12;
  }

  if (*(v0 + *(v92 + 32)))
  {
    OUTLINED_FUNCTION_8();
    v34 = *(v33 + 184);

    v36 = COERCE_DOUBLE(v34(v35));
    v38 = v37;

    v39 = 0;
    if (v38)
    {
      v40 = 0.0;
    }

    else
    {
      v40 = v36;
    }

LABEL_12:
    if (v23)
    {
      type metadata accessor for SearchCollectionViewModel();
      if (swift_dynamicCastClass())
      {
        v43 = sub_1E4200BC4();
        OUTLINED_FUNCTION_2_69();
        sub_1E39009CC(v91, v82, v44);
        v45 = (*(v81 + 80) + 16) & ~*(v81 + 80);
        v46 = swift_allocObject();
        sub_1E38FE718(v82, v46 + v45);
        v47 = j__OUTLINED_FUNCTION_51_1();
        j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_10_39();
        OUTLINED_FUNCTION_58_2();
        OUTLINED_FUNCTION_6_14(*&v40, v39, v47 & 1, v100, 0, 1, 0, 1, v78, v79[0], v79[1], v79[2]);
        v48 = j__OUTLINED_FUNCTION_18();
        v49 = j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_51_1();
        OUTLINED_FUNCTION_10_39();
        OUTLINED_FUNCTION_18_15();
        sub_1E3EB9DAC(v54, v50, v51, v52, v53, *&v40, v39, 0, 0, 1, 0, 0, 256, 3, 0, v48 & 1, v49 & 1, v80);
        sub_1E3E91128(v43, sub_1E38FF594, v46, &v101, v100);
        v55 = *(*v90 + 576);

        v57 = v55(v56);

        if (v57)
        {
          OUTLINED_FUNCTION_8();
          v59 = v83;
          (*(v58 + 224))(v60);
        }

        else
        {
          v68 = sub_1E4204724();
          v59 = v83;
          v61 = __swift_storeEnumTagSinglePayload(v83, 1, 1, v68);
        }

        sub_1E38FE6C4(v61, v62, v63);
        v69 = OUTLINED_FUNCTION_74();
        sub_1E3B29C44(v69, v70);
        sub_1E3B29C48();
        (*(v86 + 8))(v84, v88);
        sub_1E325F69C(v59, &qword_1ECF2B7B0);
        memcpy(v99, v100, sizeof(v99));
        sub_1E38FF754(v99);
        sub_1E4203914();
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        OUTLINED_FUNCTION_51_1();
        v72 = OUTLINED_FUNCTION_24_4();
        sub_1E41DBF30(v72, v73, v74, v89, OpaqueTypeConformance2, v97, v98);

        v75 = OUTLINED_FUNCTION_50_8();
        v76(v75, v89);
        v65 = v93;
        (*(v87 + 32))(v93, v85, v94);
        v66 = v93;
        v67 = 0;
        v64 = v94;
        goto LABEL_20;
      }
    }

    v65 = v93;
    v64 = v94;
    v66 = v93;
    v67 = 1;
LABEL_20:
    __swift_storeEnumTagSinglePayload(v66, v67, 1, v64);
    v42 = v96;
    sub_1E3741EA0(v65, v96, &qword_1ECF2D738, &qword_1E42A9E90);
    v41 = 0;
    goto LABEL_21;
  }

  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_3_65();
  sub_1E3900B14(v77);
  OUTLINED_FUNCTION_82();
  sub_1E4201744();
  __break(1u);
}

void sub_1E38FB000()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_9_5();
  v1 = sub_1E42021E4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  type metadata accessor for SearchInteractor(0);
  OUTLINED_FUNCTION_0_79();
  sub_1E3900B14(v8);
  OUTLINED_FUNCTION_12_46();
  OUTLINED_FUNCTION_2_1();
  (*(v9 + 312))();

  OUTLINED_FUNCTION_11_50();
  sub_1E3900B14(v10);
  v11 = sub_1E4205E84();
  v12 = OUTLINED_FUNCTION_74();
  v13(v12);
  if ((v11 & 1) == 0)
  {
    v14 = OUTLINED_FUNCTION_12_46();
    (*(v3 + 16))(v7, v0, v1);
    (*(*v14 + 320))(v7);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38FB1DC(unint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for CollectionViewModel();
    if (!swift_dynamicCastClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1E38FB30C()
{
  OUTLINED_FUNCTION_31_1();
  v189 = v2;
  v190 = v1;
  v191 = v3;
  v205 = v4;
  v6 = v5;
  v202 = v7;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D818, &qword_1E42AA060);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v184 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D820, &qword_1E42AA068);
  OUTLINED_FUNCTION_0_10();
  v178 = v11;
  v179 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  v177 = v13;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D828, &qword_1E42AA070);
  OUTLINED_FUNCTION_0_10();
  v181 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v174 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v173 = v18;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D830, &qword_1E42AA078);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v182 = v20;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D838, &qword_1E42AA080);
  OUTLINED_FUNCTION_0_10();
  v188 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v187 = v23;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D840, &qword_1E42AA088);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  v199 = v25;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D848, &qword_1E42AA090);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44();
  v193 = v27;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D850, &qword_1E42AA098);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v194 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D858, &qword_1E42AA0A0);
  v31 = OUTLINED_FUNCTION_17_2(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  v200 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25_3();
  v207 = v34;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D860, &qword_1E42AA0A8);
  OUTLINED_FUNCTION_0_10();
  v176 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  v175 = v37;
  OUTLINED_FUNCTION_138();
  v38 = sub_1E42021E4();
  OUTLINED_FUNCTION_0_10();
  v40 = v39;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  v185 = v43 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D868, &qword_1E42AA0B0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_31_2();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0, &qword_1E42A9DF0);
  v47 = OUTLINED_FUNCTION_17_2(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_5();
  v203 = v48;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v171[-v50];
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v171[-v53];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D870, &qword_1E42AA0B8);
  v56 = OUTLINED_FUNCTION_17_2(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_2_5();
  v196 = v57;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_25_3();
  v208 = v59;
  v60 = OUTLINED_FUNCTION_138();
  v186 = type metadata accessor for SearchTemplateView(v60);
  v206 = v6;
  sub_1E38F861C(v54);
  (*(v40 + 104))(v51, *MEMORY[0x1E697FF38], v38);
  __swift_storeEnumTagSinglePayload(v51, 0, 1, v38);
  v61 = *(v44 + 56);
  v62 = OUTLINED_FUNCTION_53_5();
  sub_1E3743538(v62, v63, &qword_1ECF2D6D0, &qword_1E42A9DF0);
  sub_1E3743538(v51, v0 + v61, &qword_1ECF2D6D0, &qword_1E42A9DF0);
  if (OUTLINED_FUNCTION_70_9(v0) == 1)
  {
    sub_1E325F69C(v51, &qword_1ECF2D6D0);
    sub_1E325F69C(v54, &qword_1ECF2D6D0);
    if (OUTLINED_FUNCTION_70_9(v0 + v61) == 1)
    {
      sub_1E325F69C(v0, &qword_1ECF2D6D0);
      v64 = v208;
      v65 = v206;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1E3743538(v0, v203, &qword_1ECF2D6D0, &qword_1E42A9DF0);
    if (OUTLINED_FUNCTION_70_9(v0 + v61) != 1)
    {
      v67 = v185;
      (*(v40 + 32))(v185, v0 + v61, v38);
      OUTLINED_FUNCTION_11_50();
      sub_1E3900B14(v68);
      v69 = v203;
      v172 = sub_1E4205E84();
      v70 = *(v40 + 8);
      v70(v67, v38);
      OUTLINED_FUNCTION_31_24();
      sub_1E325F69C(v71, v72);
      v73 = OUTLINED_FUNCTION_24_4();
      sub_1E325F69C(v73, v74);
      v70(v69, v38);
      OUTLINED_FUNCTION_31_24();
      sub_1E325F69C(v75, v76);
      v64 = v208;
      v65 = v206;
      if ((v172 & 1) == 0)
      {
LABEL_10:
        v66 = 1;
        goto LABEL_11;
      }

LABEL_8:
      v77 = *(v65 + 16);
      type metadata accessor for SearchInteractor(0);
      OUTLINED_FUNCTION_0_79();
      sub_1E3900B14(v78);
      OUTLINED_FUNCTION_57();
      sub_1E4200BC4();
      OUTLINED_FUNCTION_2_1();
      (*(v79 + 504))();
      OUTLINED_FUNCTION_11_5();

      v80 = *(v77 + 16);

      if (v80)
      {
        v81 = sub_1E42026E4();
        MEMORY[0x1EEE9AC00](v81);
        *&v171[-16] = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D8D0, &qword_1E42AA0E0);
        sub_1E39003D0();
        v82 = v175;
        sub_1E4200AD4();
        v83 = v204;
        (*(v176 + 32))(v64, v82, v204);
        v66 = 0;
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    sub_1E325F69C(v51, &qword_1ECF2D6D0);
    sub_1E325F69C(v54, &qword_1ECF2D6D0);
    (*(v40 + 8))(v203, v38);
  }

  sub_1E325F69C(v0, &qword_1ECF2D868);
  v66 = 1;
  v64 = v208;
LABEL_11:
  v83 = v204;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v64, v66, 1, v83);
  if (*v205 == 1)
  {
    type metadata accessor for SearchInteractor(0);
    OUTLINED_FUNCTION_0_79();
    sub_1E3900B14(v84);
    OUTLINED_FUNCTION_12_46();
    OUTLINED_FUNCTION_2_1();
    v86 = (*(v85 + 360))();
    v88 = v87;

    OUTLINED_FUNCTION_12_46();
    OUTLINED_FUNCTION_2_1();
    (*(v89 + 1056))(v212);

    OUTLINED_FUNCTION_12_46();
    OUTLINED_FUNCTION_2_1();
    v91 = (*(v90 + 1032))();

    v92 = *v191;

    sub_1E38F893C();
    memcpy(v210, v213, 0xC3uLL);
    sub_1E375C1CC(v210, v214);
    sub_1E375B760(v213);
    memcpy(v211, v210, sizeof(v211));
    nullsub_1();
    memcpy(v215, v211, 0xC3uLL);
    sub_1E3AE1DF8(v86, v88, v212, v91, v92, v215, v214);
    memcpy(v193, v214, 0x103uLL);
    swift_storeEnumTagMultiPayload();
    v93 = sub_1E3900318(v214, &v209);
    v96 = sub_1E39001D0(v93, v94, v95);
    OUTLINED_FUNCTION_22_22(v96);
    v97 = v194;
    sub_1E4201F44();
    OUTLINED_FUNCTION_34_25(v97);
    swift_storeEnumTagMultiPayload();
    sub_1E390012C();
    sub_1E3900224();
    v98 = v207;
    OUTLINED_FUNCTION_24_21();
    sub_1E3900374(v214);
LABEL_30:
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v139, v140);
    goto LABEL_31;
  }

  if (*v190 != 1)
  {
    v116 = [objc_opt_self() isSearchEnabled];
    v98 = v207;
    v117 = v189;
    if (v116 && sub_1E32AE9B0(*v189))
    {
      if ((*v117 & 0xC000000000000001) != 0)
      {
        v118 = MEMORY[0x1E6911E60](0);
      }

      else
      {
        if (!*((*v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }
      }

      v119 = *(v118 + 98);

      if (sub_1E373F6E0(v119, 89, v120, v121, v122, v123))
      {
        v124 = sub_1E32AE9B0(*v117);
        if (v124 >= 1)
        {
          v125 = v124;
          v126 = *v117;
          sub_1E37EFABC(1, *v117);
          sub_1E37EFABC(v125, v126);
          if ((v126 & 0xC000000000000001) == 0 || v125 == 1)
          {
          }

          else
          {
            type metadata accessor for ViewModel();

            v127 = 1;
            do
            {
              v128 = v127 + 1;
              sub_1E42074F4();
              v127 = v128;
            }

            while (v125 != v128);
          }

          if (!(v126 >> 62))
          {
            v117 = ((v126 & 0xFFFFFFFFFFFFFF8) + 32);
            v155 = 1;
            v156 = (2 * v125) | 1;
            if ((v156 & 1) == 0)
            {
              goto LABEL_35;
            }

            goto LABEL_40;
          }

LABEL_39:

          sub_1E4207704();
          v117 = v161;
          v155 = v162;
          v156 = v163;
          if ((v163 & 1) == 0)
          {
            goto LABEL_35;
          }

LABEL_40:
          sub_1E42079E4();
          swift_unknownObjectRetain_n();
          v164 = swift_dynamicCastClass();
          if (!v164)
          {
            swift_unknownObjectRelease();
            v164 = MEMORY[0x1E69E7CC0];
          }

          v165 = *(v164 + 16);

          if (__OFSUB__(v156 >> 1, v155))
          {
            __break(1u);
          }

          else if (v165 == (v156 >> 1) - v155)
          {
            swift_dynamicCastClass();
            OUTLINED_FUNCTION_11_5();
            swift_unknownObjectRelease();
            if (v156)
            {
LABEL_47:
              sub_1E38FB1DC(v156);

              v166 = sub_1E4202704();
              MEMORY[0x1EEE9AC00](v166);
              OUTLINED_FUNCTION_61_7();
              v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D878, &qword_1E42AA0C0);
              sub_1E38FFF50();
              OUTLINED_FUNCTION_39_15();

              sub_1E4202704();
              v132 = OUTLINED_FUNCTION_8_44(&unk_1ECF2D8A8, &qword_1ECF2D820, &qword_1E42AA068);
              v133 = v173;
              OUTLINED_FUNCTION_46_15();
              v167 = OUTLINED_FUNCTION_50_8();
              v168(v167, v171);
              v169 = OUTLINED_FUNCTION_30_20();
              v170(v169);
              goto LABEL_29;
            }

            v156 = MEMORY[0x1E69E7CC0];
LABEL_46:
            swift_unknownObjectRelease();
            goto LABEL_47;
          }

          swift_unknownObjectRelease();
LABEL_35:
          OUTLINED_FUNCTION_90();
          sub_1E38FE8D0(v157, v158, v159, v156);
          v156 = v160;
          goto LABEL_46;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }
    }

    sub_1E38FB1DC(v129);
    OUTLINED_FUNCTION_11_5();

    v130 = sub_1E4202704();
    MEMORY[0x1EEE9AC00](v130);
    OUTLINED_FUNCTION_61_7();
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D878, &qword_1E42AA0C0);
    sub_1E38FFF50();
    OUTLINED_FUNCTION_39_15();

    sub_1E4202704();
    v132 = OUTLINED_FUNCTION_8_44(&unk_1ECF2D8A8, &qword_1ECF2D820, &qword_1E42AA068);
    v133 = v174;
    OUTLINED_FUNCTION_46_15();
    v134 = OUTLINED_FUNCTION_50_8();
    v135(v134, v171);
    v136 = OUTLINED_FUNCTION_30_20();
    v137(v136);
LABEL_29:
    swift_storeEnumTagMultiPayload();
    v213[0] = v171;
    v213[1] = v132;
    swift_getOpaqueTypeConformance2();
    v138 = v182;
    sub_1E4201F44();
    (*(v131 + 8))(v133, v117);
    OUTLINED_FUNCTION_34_25(v138);
    swift_storeEnumTagMultiPayload();
    sub_1E390012C();
    sub_1E3900224();
    OUTLINED_FUNCTION_24_21();
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_18();
  v99 = OUTLINED_FUNCTION_57();
  v102 = sub_1E3F06F18(v99, v100, v101);
  v103 = v187;
  sub_1E3F074EC(v102 & 1, v104, v105, v106, v187);

  v107 = v188;
  v108 = v195;
  (*(v188 + 16))(v193, v103, v195);
  v109 = swift_storeEnumTagMultiPayload();
  v112 = sub_1E39001D0(v109, v110, v111);
  OUTLINED_FUNCTION_22_22(v112);
  v113 = v194;
  sub_1E4201F44();
  OUTLINED_FUNCTION_34_25(v113);
  swift_storeEnumTagMultiPayload();
  sub_1E390012C();
  sub_1E3900224();
  v98 = v207;
  OUTLINED_FUNCTION_24_21();
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v114, v115);
  (*(v107 + 8))(v103, v108);
LABEL_31:
  sub_1E3743538(v208, v196, &qword_1ECF2D870, &qword_1E42AA0B8);
  v141 = v200;
  sub_1E3743538(v98, v200, &qword_1ECF2D858, &qword_1E42AA0A0);
  v142 = v202;
  OUTLINED_FUNCTION_31_24();
  sub_1E3743538(v143, v144, v145, &qword_1E42AA0B8);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D8C8, &qword_1E42AA0D8);
  sub_1E3743538(v141, v142 + *(v146 + 48), &qword_1ECF2D858, &qword_1E42AA0A0);
  OUTLINED_FUNCTION_90();
  sub_1E325F69C(v147, v148);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v149, v150);
  OUTLINED_FUNCTION_90();
  sub_1E325F69C(v151, v152);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v153, v154);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E38FC508@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v31 = type metadata accessor for SearchTemplateView(0);
  OUTLINED_FUNCTION_0_10();
  v32 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D8F8, &qword_1E42AA0F0);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D8E8, &qword_1E42AA0E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v11);
  type metadata accessor for SearchInteractor(0);
  OUTLINED_FUNCTION_0_79();
  sub_1E3900B14(v12);
  sub_1E4200BD4();
  swift_getKeyPath();
  sub_1E42010E4();

  v39[0] = __src[0];
  v39[1] = __src[1];
  v13 = v31;
  v14 = *sub_1E4200BC4();
  v15 = (*(v14 + 504))();

  sub_1E39009CC(a1, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchTemplateView);
  v16 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v17 = swift_allocObject();
  sub_1E38FE718(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_1E39009CC(a1, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchTemplateView);
  v18 = swift_allocObject();
  v19 = v33;
  sub_1E38FE718(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  v23 = sub_1E39005CC(v20, v21, v22);
  v37 = MEMORY[0x1E6981148];
  v38 = MEMORY[0x1E6981138];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3C00AA4(v39, v15, sub_1E3900514, v17, sub_1E3900574, v18, &unk_1F5D969F8, v20, v19, v23, OpaqueTypeConformance2);
  sub_1E4203DB4();
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  v25 = v35;
  sub_1E3741EA0(v19, v35, &qword_1ECF2D8F8, &qword_1E42AA0F0);
  memcpy((v25 + *(v34 + 36)), __src, 0x70uLL);
  v26 = *(a1 + *(v13 + 48));
  LOBYTE(v18) = sub_1E4202734();
  v27 = v36;
  sub_1E3741EA0(v25, v36, &qword_1ECF2D8E8, &qword_1E42AA0E8);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D8D0, &qword_1E42AA0E0) + 36);
  *v28 = v18;
  *(v28 + 8) = 0x4024000000000000;
  *(v28 + 16) = v26;
  result = 15.0;
  *(v28 + 24) = xmmword_1E42A9D20;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_1E38FC9F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1E38FCA48(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 464);

  return v4(v2, v3);
}

void sub_1E38FCAB8()
{
  OUTLINED_FUNCTION_31_1();
  v34 = v0;
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v35 = v2;
  v36 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = (v8 - v7);
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v32 = v11;
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  type metadata accessor for HorizontalPickerLayout();
  v15 = *sub_1E3C008AC();
  v16 = (*(v15 + 1696))();
  sub_1E32822E0(v16, v17, v18);

  v19 = sub_1E4202C44();
  v30 = v20;
  v31 = v19;
  v22 = v21 & 1;
  type metadata accessor for SearchTemplateView(0);

  sub_1E3746E10(v14);
  sub_1E374709C(v9);
  v23 = MEMORY[0x1E6981148];
  v24 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_13_8();
  v25 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13_8();
  sub_1E37B5FBC(v26);
  OUTLINED_FUNCTION_13_8();
  v27 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v16, v14, v9, v25, v5, v27 & 1, v23, v24, v34);

  (*(v35 + 8))(v5, v36);
  v28 = OUTLINED_FUNCTION_50_8();
  v29(v28);
  (*(v32 + 8))(v14, v33);
  sub_1E37434B8(v31, v30, v22);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38FCDAC(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  if (a1)
  {
    sub_1E4205F14();

    v9 = OUTLINED_FUNCTION_24_4();
    sub_1E3277E60(v9, v10, a1, v11);

    if (v39)
    {
      if (swift_dynamicCast())
      {
        v12 = *(&v37[0] + 1);
        v13 = *&v37[0];
        type metadata accessor for Metrics(0);
        v14 = sub_1E3BA54D0();
        (*(*v14 + 184))(a1);
        type metadata accessor for SearchTemplateView(0);
        OUTLINED_FUNCTION_8();
        (*(v15 + 208))(v14, 0);

        goto LABEL_10;
      }
    }

    else
    {

      sub_1E325F69C(&v38, &unk_1ECF296E0);
    }
  }

  v16 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v16, v2);
  v17 = sub_1E41FFC94();
  v18 = sub_1E42067F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1E323F000, v17, v18, "SearchTemplate:: No metrics in category item", v19, 2u);
    MEMORY[0x1E69143B0](v19, -1, -1);
  }

  v20 = OUTLINED_FUNCTION_57();
  v21(v20);
  v13 = 0;
  v12 = 0xE000000000000000;
LABEL_10:
  type metadata accessor for SearchTemplateView(0);
  OUTLINED_FUNCTION_111();
  (*(v22 + 240))();
  OUTLINED_FUNCTION_111();
  v24 = (*(v23 + 104))();
  if (v24)
  {
    v25 = v24;
    v26 = (*(*v24 + 128))();
    if (v26)
    {
      v27 = v26;
      v28 = MEMORY[0x1E69E6158];
      v29 = sub_1E4205F14();
      v31 = v30;
      v39 = v28;
      *&v38 = v13;
      *(&v38 + 1) = v12;
      sub_1E329504C(&v38, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1E32A87C0(v37, v29, v31, isUniquelyReferenced_nonNull_native);

      (*(*v25 + 136))(v27);
      OUTLINED_FUNCTION_111();
      v34 = *(v33 + 200);

      v34(v35);
    }
  }
}

uint64_t sub_1E38FD184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchTemplateView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v12[1] = a1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_69();
  sub_1E39009CC(a2, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1E38FE718(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D908, &qword_1E42AA150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D890, &qword_1E42AA0C8);
  OUTLINED_FUNCTION_14_11();
  sub_1E3743478(v10);
  sub_1E375BEF4();
  sub_1E38FFFD4();
  return sub_1E4203B34();
}

void sub_1E38FD338()
{
  OUTLINED_FUNCTION_31_1();
  v85 = v1;
  v3 = v2;
  v83 = v4;
  v5 = type metadata accessor for SearchTemplateView(0);
  v74 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_25_6();
  v75 = v7;
  v76 = v6;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D8A0, &qword_1E42AA0D0);
  OUTLINED_FUNCTION_0_10();
  v78 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v77 = v10;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D918, &qword_1E42AA158);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v81 = v12;
  v13 = OUTLINED_FUNCTION_138();
  v80 = type metadata accessor for HorizontalCollectionViewWithHeader(v13);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v72 = v16 - v15;
  OUTLINED_FUNCTION_138();
  v17 = sub_1E42021E4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v71 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D868, &qword_1E42AA0B0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_26_2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0, &qword_1E42A9DF0);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  v73 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v69[-v29];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v69[-v32];
  v84 = *v3;
  sub_1E38F861C(&v69[-v32]);
  v34 = v19;
  (*(v19 + 104))(v30, *MEMORY[0x1E697FF40], v17);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v17);
  v35 = *(v23 + 56);
  sub_1E3743538(v33, v0, &qword_1ECF2D6D0, &qword_1E42A9DF0);
  sub_1E3743538(v30, v0 + v35, &qword_1ECF2D6D0, &qword_1E42A9DF0);
  OUTLINED_FUNCTION_71_3(v0);
  if (v41)
  {
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v36, v37);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v38, v39);
    OUTLINED_FUNCTION_71_3(v0 + v35);
    if (v41)
    {
      sub_1E325F69C(v0, &qword_1ECF2D6D0);
LABEL_18:
      v57 = v84;

      sub_1E38F893C();
      nullsub_1();
      memcpy(v87, v86, 0x150uLL);
      v58 = v72;
      sub_1E381AC68(v57, v87, 0, v72);
      sub_1E39009CC(v58, v81, type metadata accessor for HorizontalCollectionViewWithHeader);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_21_35();
      sub_1E3900B14(v59);
      sub_1E3900090();
      sub_1E4201F44();
      sub_1E3900B58();
LABEL_22:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    goto LABEL_9;
  }

  v40 = v73;
  sub_1E3743538(v0, v73, &qword_1ECF2D6D0, &qword_1E42A9DF0);
  OUTLINED_FUNCTION_71_3(v0 + v35);
  if (v41)
  {
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v42, v43);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v44, v45);
    (*(v19 + 8))(v40, v17);
LABEL_9:
    sub_1E325F69C(v0, &qword_1ECF2D868);
    goto LABEL_10;
  }

  v52 = v71;
  (*(v34 + 32))(v71, v0 + v35, v17);
  OUTLINED_FUNCTION_11_50();
  sub_1E3900B14(v53);
  v70 = sub_1E4205E84();
  v54 = *(v34 + 8);
  v54(v52, v17);
  sub_1E325F69C(v30, &qword_1ECF2D6D0);
  sub_1E325F69C(v33, &qword_1ECF2D6D0);
  v54(v40, v17);
  v55 = OUTLINED_FUNCTION_74();
  sub_1E325F69C(v55, v56);
  if (v70)
  {
    goto LABEL_18;
  }

LABEL_10:
  OUTLINED_FUNCTION_8();
  v47 = (*(v46 + 1040))();
  if (!v47)
  {
    goto LABEL_20;
  }

  v48 = v47;
  if (!sub_1E32AE9B0(v47))
  {

    goto LABEL_20;
  }

  if ((v48 & 0xC000000000000001) != 0)
  {
    v49 = MEMORY[0x1E6911E60](0, v48);
LABEL_15:

    v51 = (*(*v49 + 872))(v50);

    if (v51)
    {
LABEL_21:
      v87[0] = v51;
      swift_getKeyPath();
      OUTLINED_FUNCTION_2_69();
      v60 = v76;
      sub_1E39009CC(v85, v76, v61);
      v62 = (*(v74 + 80) + 16) & ~*(v74 + 80);
      v63 = swift_allocObject();
      sub_1E38FE718(v60, v63 + v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
      OUTLINED_FUNCTION_14_11();
      OUTLINED_FUNCTION_90();
      sub_1E3743478(v64);
      sub_1E375BEF4();
      swift_getOpaqueTypeConformance2();
      v65 = v77;
      sub_1E4203B34();
      v66 = v78;
      v67 = v82;
      (*(v78 + 16))(v81, v65, v82);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_21_35();
      sub_1E3900B14(v68);
      sub_1E3900090();
      sub_1E4201F44();
      (*(v66 + 8))(v65, v67);
      goto LABEL_22;
    }

LABEL_20:

    v51 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

  if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v49 = *(v48 + 32);

    goto LABEL_15;
  }

  __break(1u);
}

void sub_1E38FDBB0()
{
  OUTLINED_FUNCTION_9_4();
  v24 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D7F0, &qword_1E42A9FE8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25[-v13 - 8];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D7D8, &qword_1E42A9FE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_25();
  sub_1E40EA03C(v17, v18, v19, v20, v21);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  (*(v9 + 32))(v14, v1, v7);
  memcpy(&v14[*(v11 + 44)], v25, 0x70uLL);
  OUTLINED_FUNCTION_5_8();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v14, v0, &qword_1ECF2D7F0, &qword_1E42A9FE8);
  v22 = v0 + *(v15 + 36);
  *v22 = v2;
  *(v22 + 8) = v3;
  *(v22 + 16) = v4;
  *(v22 + 24) = v5;
  *(v22 + 32) = 0;
  sub_1E4200D14();
  OUTLINED_FUNCTION_20_38();
  sub_1E38FFB0C(v23);
  sub_1E4203074();
  sub_1E325F69C(v0, &qword_1ECF2D7D8);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E38FDDFC()
{
  OUTLINED_FUNCTION_31_1();
  v88 = v1;
  v89 = v0;
  v3 = v2;
  v4 = *(v2 + 16);
  OUTLINED_FUNCTION_1_2();
  v83 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v82 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  v81 = v9;
  v11 = *(v10 + 32);
  OUTLINED_FUNCTION_1_2();
  v80 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v78 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v77 = v16;
  OUTLINED_FUNCTION_138();
  v17 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v84 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  v85 = v23;
  v24 = *(v3 + 24);
  OUTLINED_FUNCTION_1_2();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v73 - v31;
  OUTLINED_FUNCTION_31_24();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v86 = v34;
  v87 = v33;
  OUTLINED_FUNCTION_5_7();
  v37 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v73 - v36;
  if (*v89 == 1)
  {
    v39 = *(v3 + 48);
    v40 = *(v26 + 16);
    (v40)(v32, &v89[*(v3 + 72)], v24, v37);
    v40(v29, v32, v24);
    v41 = *(v3 + 40);
    v89 = *(v3 + 56);
    v90 = v89;
    v91 = v41;
    OUTLINED_FUNCTION_2_25();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_31_24();
    sub_1E37B8D98(v42, v43);
    v44 = *(v26 + 8);
    v44(v29, v24);
    v44(v32, v24);
  }

  else
  {
    v75 = v4;
    v76 = v19;
    v74 = &v73 - v36;
    v45 = v89;
    if (sub_1E38D5E2C(*&v89[*(v3 + 80)], v89[*(v3 + 80) + 8]))
    {
      v46 = *(v3 + 56);
      v47 = v80;
      v48 = *(v80 + 16);
      v49 = v77;
      v48(v77, &v45[*(v3 + 76)], v11);
      v48(v78, v49, v11);
      v50 = OUTLINED_FUNCTION_53_5();
      v89 = v46;
      v79 = v51;
      sub_1E37B8D98(v50, v52);
      v53 = *(v47 + 8);
      v54 = OUTLINED_FUNCTION_53_5();
      v53(v54);
      v55 = v49;
      v56 = v11;
    }

    else
    {
      v57 = *(v3 + 68);
      v79 = *(v3 + 40);
      v58 = v83;
      v59 = *(v83 + 16);
      v60 = &v45[v57];
      v61 = v81;
      v62 = v75;
      v59(v81, v60, v75);
      v63 = v82;
      v59(v82, v61, v62);
      v89 = *(v3 + 56);
      sub_1E37B8E90(v63, v11, v62);
      v53 = *(v58 + 8);
      (v53)(v63, v62);
      v55 = v61;
      v56 = v62;
    }

    (v53)(v55, v56);
    v41 = v79;
    v96 = v89;
    v97 = v79;
    OUTLINED_FUNCTION_2_25();
    swift_getWitnessTable();
    v64 = v76;
    v65 = v84;
    v66 = v85;
    (*(v76 + 16))(v84, v85, v17);
    v39 = *(v3 + 48);
    v38 = v74;
    v67 = OUTLINED_FUNCTION_24_4();
    sub_1E37B8E90(v67, v68, v17);
    v69 = *(v64 + 8);
    v69(v65, v17);
    v69(v66, v17);
  }

  v94 = v89;
  v95 = v41;
  WitnessTable = swift_getWitnessTable();
  v92 = v39;
  v93 = WitnessTable;
  v71 = v87;
  swift_getWitnessTable();
  v72 = v86;
  (*(v86 + 16))(v88, v38, v71);
  (*(v72 + 8))(v38, v71);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38FE3E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E42017A4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1E38FE410()
{
  result = qword_1ECF2D700;
  if (!qword_1ECF2D700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D6D8, &qword_1E42A9DF8);
    sub_1E38FE4C8();
    sub_1E3743478(&qword_1EE288888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D700);
  }

  return result;
}

unint64_t sub_1E38FE4C8()
{
  result = qword_1ECF4F4A8[0];
  if (!qword_1ECF4F4A8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D6F8, &qword_1E42A9E48);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF4F4A8);
  }

  return result;
}

unint64_t sub_1E38FE564(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E38FE5D8()
{
  result = qword_1ECF2D730;
  if (!qword_1ECF2D730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D738, &qword_1E42A9E90);
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D740, &qword_1E42A9E98);
    sub_1E38FE6C4(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D730);
  }

  return result;
}

unint64_t sub_1E38FE6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2D748;
  if (!qword_1ECF2D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D748);
  }

  return result;
}

uint64_t sub_1E38FE718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchTemplateView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E38FE77C()
{
  v0 = type metadata accessor for SearchTemplateView(0);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_135_0();
  type metadata accessor for SearchInteractor(0);
  OUTLINED_FUNCTION_0_79();
  sub_1E3900B14(v1);
  OUTLINED_FUNCTION_32_0();
  sub_1E4200BC4();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 1088))(2);

  return result;
}

void sub_1E38FE86C()
{
  v0 = OUTLINED_FUNCTION_9_5();
  v1 = type metadata accessor for SearchTemplateView(v0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_135_0();

  sub_1E38FB000();
}

void sub_1E38FE8D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      type metadata accessor for ViewModel();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1E38FE9AC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

void sub_1E38FEA04(uint64_t a1)
{
  type metadata accessor for TemplateViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1E38FEC60(319);
    if (v2 <= 0x3F)
    {
      sub_1E38FECF4(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1E38FECF4(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1E381EC50(319);
          if (v5 <= 0x3F)
          {
            sub_1E38FED58(319);
            if (v6 <= 0x3F)
            {
              sub_1E38FECF4(319, &qword_1EE23B058, sub_1E38FEDBC, MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for SearchHeaderLayout();
                if (v8 <= 0x3F)
                {
                  sub_1E38FECF4(319, &qword_1EE288648, type metadata accessor for CGSize, MEMORY[0x1E6981790]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for ShowcaseValue(319);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for NavigationBarObservableModel(319);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for ViewMetricsRecorder();
                        if (v12 <= 0x3F)
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
  }
}

void sub_1E38FEC60(uint64_t a1)
{
  if (!qword_1EE289E68)
  {
    type metadata accessor for SearchInteractor(255);
    sub_1E3900B14(qword_1EE27D1D8);
    v1 = sub_1E4200BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289E68);
    }
  }
}

void sub_1E38FECF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E38FED58(uint64_t a1)
{
  if (!qword_1EE289E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D6D0, &qword_1E42A9DF0);
    v1 = sub_1E4200B94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289E90);
    }
  }
}

unint64_t sub_1E38FEDBC()
{
  result = qword_1EE23B060;
  if (!qword_1EE23B060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B060);
  }

  return result;
}

void sub_1E38FEE08(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1E38FF4A4(319, &qword_1EE289E70, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E38FEEFC(uint64_t result, unsigned int a2, void *a3)
{
  v6 = a3[2];
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = a3[3];
  v10 = a3[4];
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  if (v8 <= v12)
  {
    v13 = *(v11 + 84);
  }

  else
  {
    v13 = *(v7 + 84);
  }

  v14 = *(v10 - 8);
  v15 = *(v14 + 84);
  if (v13 <= v15)
  {
    v16 = *(v14 + 84);
  }

  else
  {
    v16 = v13;
  }

  v17 = *(v7 + 80);
  v18 = *(*(v6 - 8) + 64);
  v19 = *(v11 + 80);
  v20 = *(v14 + 80);
  if (v16 <= 0xFE)
  {
    v21 = 254;
  }

  else
  {
    v21 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = *(*(v9 - 8) + 64) + v20;
  if (v21 >= a2)
  {
LABEL_32:
    if (v16 > 0xFE)
    {
      v33 = (result + v17 + 1) & ~v17;
      if (v8 != v21)
      {
        v33 = (v33 + v18 + v19) & ~v19;
        if (v12 == v21)
        {
          v8 = v12;
          v6 = v9;
        }

        else
        {
          v33 = (v22 + v33) & ~v20;
          v8 = v15;
          v6 = v10;
        }
      }

      return __swift_getEnumTagSinglePayload(v33, v8, v6);
    }

    else
    {
      v30 = *result;
      v31 = v30 >= 2;
      v32 = (v30 + 2147483646) & 0x7FFFFFFF;
      if (v31)
      {
        return (v32 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v23 = ((*(*(v10 - 8) + 64) + ((v22 + ((v18 + v19 + ((v17 + 1) & ~v17)) & ~v19)) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
    v24 = (a2 - v21 + 255) >> 8;
    if (v23 <= 3)
    {
      v25 = v24 + 1;
    }

    else
    {
      v25 = 2;
    }

    if (v25 >= 0x10000)
    {
      LODWORD(v26) = 4;
    }

    else
    {
      LODWORD(v26) = 2;
    }

    if (v25 < 0x100)
    {
      LODWORD(v26) = 1;
    }

    if (v25 >= 2)
    {
      v26 = v26;
    }

    else
    {
      v26 = 0;
    }

    switch(v26)
    {
      case 1:
        v27 = *(result + v23);
        if (!*(result + v23))
        {
          goto LABEL_32;
        }

        goto LABEL_28;
      case 2:
        v27 = *(result + v23);
        if (!*(result + v23))
        {
          goto LABEL_32;
        }

        goto LABEL_28;
      case 3:
        __break(1u);
        return result;
      case 4:
        v27 = *(result + v23);
        if (!v27)
        {
          goto LABEL_32;
        }

LABEL_28:
        v28 = (v27 - 1) << (8 * v23);
        if (v23 <= 3)
        {
          v29 = *result;
        }

        else
        {
          v28 = 0;
          v29 = *result;
        }

        result = v21 + (v29 | v28) + 1;
        break;
      default:
        goto LABEL_32;
    }
  }

  return result;
}

void sub_1E38FF194(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = a4[2];
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = a4[3];
  v11 = a4[4];
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  if (v9 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v8 + 84);
  }

  v15 = *(v11 - 8);
  v16 = *(v15 + 84);
  if (v14 <= v16)
  {
    v17 = *(v15 + 84);
  }

  else
  {
    v17 = v14;
  }

  if (v17 <= 0xFE)
  {
    v18 = 254;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v8 + 80);
  v20 = *(*(v7 - 8) + 64);
  v21 = *(v12 + 80);
  v22 = *(v15 + 80);
  v23 = *(*(v10 - 8) + 64) + v22;
  v24 = ((*(*(v11 - 8) + 64) + ((v23 + ((v20 + v21 + ((v19 + 1) & ~v19)) & ~v21)) & ~v22) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v18 >= a3)
  {
    v28 = 0;
  }

  else
  {
    v25 = (a3 - v18 + 255) >> 8;
    if (v24 <= 3)
    {
      v26 = v25 + 1;
    }

    else
    {
      v26 = 2;
    }

    if (v26 >= 0x10000)
    {
      v27 = 4;
    }

    else
    {
      v27 = 2;
    }

    if (v26 < 0x100)
    {
      v27 = 1;
    }

    if (v26 >= 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }
  }

  if (v18 >= a2)
  {
    v33 = ~v22;
    switch(v28)
    {
      case 1:
        a1[v24] = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        break;
      case 2:
        *&a1[v24] = 0;
        if (a2)
        {
          goto LABEL_37;
        }

        break;
      case 3:
LABEL_50:
        __break(1u);
        break;
      case 4:
        *&a1[v24] = 0;
        goto LABEL_36;
      default:
LABEL_36:
        if (a2)
        {
LABEL_37:
          if (v17 > 0xFE)
          {
            v34 = &a1[v19 + 1] & ~v19;
            if (v9 != v18)
            {
              v34 = (v34 + v20 + v21) & ~v21;
              if (v13 == v18)
              {
                v9 = v13;
                v7 = v10;
              }

              else
              {
                v34 = (v23 + v34) & v33;
                v9 = v16;
                v7 = v11;
              }
            }

            __swift_storeEnumTagSinglePayload(v34, a2, v9, v7);
          }

          else
          {
            *a1 = a2 + 1;
          }
        }

        break;
    }
  }

  else
  {
    v29 = ~v18 + a2;
    v30 = OUTLINED_FUNCTION_32_0();
    bzero(v30, v31);
    if (v24 <= 3)
    {
      v32 = (v29 >> 8) + 1;
    }

    else
    {
      v32 = 1;
    }

    if (v24 > 3)
    {
      *a1 = v29;
    }

    else
    {
      *a1 = v29;
    }

    switch(v28)
    {
      case 1:
        a1[v24] = v32;
        break;
      case 2:
        *&a1[v24] = v32;
        break;
      case 3:
        goto LABEL_50;
      case 4:
        *&a1[v24] = v32;
        break;
      default:
        return;
    }
  }
}

void sub_1E38FF4A4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1E38FF540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2D770;
  if (!qword_1ECF2D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D770);
  }

  return result;
}

double sub_1E38FF594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SearchTemplateView(0);
  OUTLINED_FUNCTION_32_5();
  OUTLINED_FUNCTION_135_0();
  if (a3)
  {
    OUTLINED_FUNCTION_8();
    v5 = *(v4 + 208);

    v5(v6, 0);
  }

  OUTLINED_FUNCTION_8();
  (*(v7 + 240))();
  v8 = OUTLINED_FUNCTION_13_8();
  v9(v8);
  type metadata accessor for SearchInteractor(0);
  OUTLINED_FUNCTION_0_79();
  sub_1E3900B14(v10);
  OUTLINED_FUNCTION_32_0();
  sub_1E4200BC4();
  OUTLINED_FUNCTION_2_1();
  (*(v11 + 1376))(1);

  return result;
}

void sub_1E38FF7A8()
{
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v1 + 968))())
    {

      sub_1E3CC6014(v2);
      OUTLINED_FUNCTION_5_8();
      OUTLINED_FUNCTION_3();

      v3 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D7D0, &qword_1E42A9FD8);
      OUTLINED_FUNCTION_82();
      sub_1E38FFB0C(v5);
      sub_1E38FFA18();
      sub_1E4203B94();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1E38FF900()
{
  result = qword_1ECF2D798;
  if (!qword_1ECF2D798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D790, &qword_1E42A9FC0);
    sub_1E38FFB0C(&unk_1ECF2D7A0);
    sub_1E38FFA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D798);
  }

  return result;
}

unint64_t sub_1E38FF9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2D7B0;
  if (!qword_1ECF2D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D7B0);
  }

  return result;
}

unint64_t sub_1E38FFA18()
{
  result = qword_1ECF2D7C8;
  if (!qword_1ECF2D7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D7D0, &qword_1E42A9FD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D7D8, &qword_1E42A9FE0);
    sub_1E38FFB0C(&unk_1ECF2D7E0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D7C8);
  }

  return result;
}

unint64_t sub_1E38FFB0C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    sub_1E3743478(&qword_1ECF2D7B8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E38FFBB4()
{
  result = qword_1ECF2D7E8;
  if (!qword_1ECF2D7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D7F0, &qword_1E42A9FE8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D7E8);
  }

  return result;
}

uint64_t sub_1E38FFC58@<X0>(uint64_t a1@<X8>)
{
  result = MEMORY[0x1E690C120]();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E38FFCBC()
{
  v1 = *(v0 + 24);
  if (!*(v0 + 16))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1040))();
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  result = sub_1E32AE9B0(v3);
  if (!result)
  {

    goto LABEL_10;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1E6911E60](0, v4);
LABEL_7:

    v8 = (*(*v6 + 872))(v7);

    if (v8)
    {
LABEL_11:
      v14[25] = v8;
      swift_getKeyPath();
      v9 = swift_allocObject();
      memcpy((v9 + 16), v1, 0xC3uLL);
      sub_1E375C1CC(v1, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D808, &qword_1E42AA050);
      OUTLINED_FUNCTION_14_11();
      sub_1E3743478(v10);
      sub_1E375BEF4();
      v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D7D8, &qword_1E42A9FE0);
      OUTLINED_FUNCTION_20_38();
      v13 = sub_1E38FFB0C(v12);
      v14[0] = v11;
      v14[1] = v13;
      swift_getOpaqueTypeConformance2();
      return sub_1E4203B34();
    }

LABEL_10:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v4 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1E38FFF2C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

unint64_t sub_1E38FFF50()
{
  result = qword_1ECF2D880;
  if (!qword_1ECF2D880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D878, &qword_1E42AA0C0);
    sub_1E38FFFD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D880);
  }

  return result;
}

unint64_t sub_1E38FFFD4()
{
  result = qword_1ECF2D888;
  if (!qword_1ECF2D888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D890, &qword_1E42AA0C8);
    sub_1E3900B14(qword_1EE240A68);
    sub_1E3900090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D888);
  }

  return result;
}

unint64_t sub_1E3900090()
{
  result = qword_1ECF2D898;
  if (!qword_1ECF2D898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D8A0, &qword_1E42AA0D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D898);
  }

  return result;
}

unint64_t sub_1E390012C()
{
  result = qword_1ECF2D8B0;
  if (!qword_1ECF2D8B0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D850, &qword_1E42AA098);
    sub_1E39001D0(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D8B0);
  }

  return result;
}

unint64_t sub_1E39001D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2D8B8;
  if (!qword_1ECF2D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D8B8);
  }

  return result;
}

unint64_t sub_1E3900224()
{
  result = qword_1ECF2D8C0;
  if (!qword_1ECF2D8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D830, &qword_1E42AA078);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D820, &qword_1E42AA068);
    sub_1E3743478(&unk_1ECF2D8A8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D8C0);
  }

  return result;
}

unint64_t sub_1E39003D0()
{
  result = qword_1ECF2D8D8;
  if (!qword_1ECF2D8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D8D0, &qword_1E42AA0E0);
    sub_1E390045C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D8D8);
  }

  return result;
}

unint64_t sub_1E390045C()
{
  result = qword_1ECF2D8E0;
  if (!qword_1ECF2D8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D8E8, &qword_1E42AA0E8);
    sub_1E3743478(&unk_1ECF2D8F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D8E0);
  }

  return result;
}

void sub_1E3900514()
{
  v0 = OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_135_0();
  sub_1E38FCAB8();
}

uint64_t sub_1E3900574()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2 = type metadata accessor for SearchTemplateView(v1);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_135_0();
  return sub_1E38FCDAC(v0);
}

unint64_t sub_1E39005CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2D900;
  if (!qword_1ECF2D900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D900);
  }

  return result;
}

void sub_1E3900620()
{
  v0 = OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_135_0();

  sub_1E38FD338();
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for SearchTemplateView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_1E3264CE0(*(v2 + 8), *(v2 + 16));
  v3 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E4201324();
    OUTLINED_FUNCTION_2();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  v7 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6C8, &unk_1E42A9DE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1E42021E4();
    if (!OUTLINED_FUNCTION_70_9(v2 + v7))
    {
      (*(*(v8 - 8) + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E3900920()
{
  v0 = OUTLINED_FUNCTION_57_9();
  OUTLINED_FUNCTION_17_2(v0);
  sub_1E38F893C();
  memcpy(__dst, __src, 0xC3uLL);
  sub_1E375C1CC(__dst, &v7);
  sub_1E375B760(__src);
  OUTLINED_FUNCTION_25();
  sub_1E40EA03C(v1, v2, v3, v4, v5);
  return sub_1E37E6F2C(__dst);
}

uint64_t sub_1E39009CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3900A28()
{
  result = qword_1ECF2D938;
  if (!qword_1ECF2D938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D930, &qword_1E42AA170);
    sub_1E3900B14(&unk_1EE279920);
    sub_1E3900B14(&qword_1EE288768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D938);
  }

  return result;
}

unint64_t sub_1E3900B14(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1E3900B58()
{
  v1 = OUTLINED_FUNCTION_9_5();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1E3900BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0, &qword_1E42A9DF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_57_9()
{

  return type metadata accessor for SearchTemplateView(0);
}

uint64_t OUTLINED_FUNCTION_70_9(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t DocumentRequestViewController.viewControllerDocumentIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_viewControllerDocumentIdentifier);
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_viewControllerDocumentIdentifier, v4);
  v2 = *v1;

  return v2;
}

uint64_t DocumentRequestViewController.viewControllerDocumentIdentifier.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(a1);
  *v2 = a1;
  v2[1] = a2;
}

uint64_t DocumentRequestViewController.sendInitialRequestOnViewWillAppear.getter()
{
  v1 = OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_sendInitialRequestOnViewWillAppear;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_sendInitialRequestOnViewWillAppear, v3);
  return *(v0 + v1);
}

uint64_t DocumentRequestViewController.sendInitialRequestOnViewWillAppear.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_sendInitialRequestOnViewWillAppear;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DocumentRequestViewController.interactorDelegate.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_1(a1);
  *(v2 + 8) = a2;
  OUTLINED_FUNCTION_57();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DocumentRequestViewController.interactorDelegate.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_interactorDelegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  OUTLINED_FUNCTION_57();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_1E3900F50;
}

void sub_1E3900F50(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
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

uint64_t DocumentRequestViewController.pagePerformanceReporter.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController____lazy_storage___pagePerformanceReporter;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController____lazy_storage___pagePerformanceReporter);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = (*(v1 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_requestContext) + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef);
    v6 = *v5 == 0x686372616553 && v5[1] == 0xE600000000000000;
    if (v6 || (sub_1E42079A4() & 1) != 0)
    {
      v4 = 0;
    }

    else
    {
      type metadata accessor for PagePerformanceReporter();
      v4 = sub_1E3C678AC();
    }

    v7 = *(v1 + v2);
    *(v1 + v2) = v4;

    sub_1E3781D80(v7);
  }

  sub_1E37C5408(v3);
  return v4;
}

void DocumentRequestViewController.init(_:supplementaryData:loadingConfiguration:documentOptions:viewControllerIdentifier:)()
{
  OUTLINED_FUNCTION_31_1();
  v122 = v1;
  v112 = v2;
  v4 = v3;
  v6 = v5;
  v126 = v7;
  v9 = v8;
  v125 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v123 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v115 = &v109 - v16;
  v118 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v116 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  v119 = v23;
  v120 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v117 = &v109 - v24;
  v25 = (v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_viewControllerDocumentIdentifier);
  *v25 = 0;
  v25[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_sendInitialRequestOnViewWillAppear) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_interactorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_initialRequestSent) = 0;
  v26 = OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentOptions;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentOptions) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractorObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController____lazy_storage___pagePerformanceReporter) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_playbackObserver) = 0;
  v27 = *(v9 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef);
  v28 = *(v9 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef + 8);
  v111 = v9 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef;
  v29 = (v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_initialControllerRef);
  *v29 = v27;
  v29[1] = v28;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_requestContext) = v9;
  *(v0 + v26) = v4;
  v30 = *(v6 + 51);
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_loadingConfigPrefersLargeTitle) = v30;
  type metadata accessor for LoadingControllerManager();
  v121 = v6;
  v31 = *(v6 + 8);
  v32 = *(v6 + 16);

  v127 = v9;

  v113 = v4;

  v33 = sub_1E3F68068(v31, v32);

  v114 = v33;
  v34 = sub_1E400E9A0();
  v35 = v34;
  if ((v30 & 1) == 0)
  {
    v36 = [v34 vuiNavigationItem];
    [v36 setLargeTitleDisplayMode_];
  }

  v37 = v121;
  v39 = *(v121 + 32);
  v38 = *(v121 + 40);
  if (v38)
  {

    v40 = [v35 vuiNavigationItem];
    v41 = OUTLINED_FUNCTION_112();
    sub_1E3835BB4(v41, v38, v31);
  }

  v42 = sub_1E39DFFC8();
  v43 = 2;
  v44 = v126;
  if ((v42 & 1) == 0 && v126)
  {
    v130[3] = &unk_1F5D7C138;
    v130[4] = &off_1F5D7BC98;
    LOBYTE(v130[0]) = 22;

    sub_1E3F9F164(v130, v44, MEMORY[0x1E69E7CA0] + 8);

    if (v129[3])
    {
      if (swift_dynamicCast())
      {
        v45 = v128;
        __swift_destroy_boxed_opaque_existential_1(v130);
        if (v45)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }

        goto LABEL_15;
      }

      __swift_destroy_boxed_opaque_existential_1(v130);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v130);
      sub_1E325F748(v129, &unk_1ECF296E0, &unk_1E4298030);
    }

    v43 = 2;
  }

LABEL_15:
  v46 = sub_1E39DFFC8();
  v124 = v11;
  if ((v46 & 1) == 0 && (v43 != 2 || (v30 & 1) == 0 && ([v35 vuiIsNavigationRoot] & 1) == 0))
  {
    type metadata accessor for UberNavigationBarTitleView();

    v47 = v35;
    v48 = sub_1E398BFB8(v47, v43, v39, v38);
    type metadata accessor for NavigationBarLayout();
    v49 = sub_1E4117D84();
    v50 = sub_1E37AD648([v47 vuiNavigationItem]);
    v52 = v51;
    if (v48)
    {
      v110 = v50;
      v109 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
      v53 = v21;
      v54 = (*v49 + 1720);
      v55 = *v54;

      v56 = v48;
      v57 = v55(v56);
      (*(*v57 + 2408))(v57);
      OUTLINED_FUNCTION_26_5();

      v58 = v54;
      v21 = v53;
      v37 = v121;
      v59 = sub_1E3810954(v110, v52, v58, 0);
      (*((*MEMORY[0x1E69E7D40] & *v56) + 0xD0))(v59);
    }

    if (v52)
    {

      if (v48)
      {
        [v48 setHeightShouldBeIncreasedByTabBarHeight_];
      }
    }

    v60 = [v47 vuiNavigationItem];
    [v60 setTitleView_];
  }

  if (v122)
  {

    v61 = sub_1E4205ED4();
  }

  else
  {
    v61 = 0;
  }

  [v35 setVuiViewControllerIdentifier_];

  if (v35[OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_initialRequestSent] & 1) == 0 && (*v37)
  {
    v35[OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_initialRequestSent] = 1;
    if (*&v35[OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentOptions])
    {

      sub_1E3744600(v62);
    }

    type metadata accessor for DocumentInteractor(0);
    DocumentRequestViewController.pagePerformanceReporter.getter();
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_51_1();

    v63 = sub_1E3DDCD04();
    v64 = OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractor;
    *&v35[OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractor] = v63;

    v65 = *&v35[v64];
    if (v65)
    {
      OUTLINED_FUNCTION_4_66();
      sub_1E3904E54(v66, v67, &unk_1E42D32D8);

      v68 = sub_1E4200514();

      v130[0] = v68;
      OUTLINED_FUNCTION_4_0();
      v69 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_4_0();
      v70 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_2_4();
      v71 = swift_allocObject();
      *(v71 + 16) = v69;
      *(v71 + 24) = v70;
      OUTLINED_FUNCTION_2_4();
      v72 = swift_allocObject();
      *(v72 + 16) = sub_1E39051F8;
      *(v72 + 24) = v71;
      sub_1E42005A4();
      v65 = v130;
      sub_1E4200844();
      OUTLINED_FUNCTION_50();
    }

    *&v35[OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractorObserver] = v65;
  }

  v73 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v74 = sub_1E4206A04();
  v130[0] = v74;
  v75 = sub_1E42069A4();
  v76 = v35;
  v77 = v37;
  v78 = v21;
  v79 = v115;
  __swift_storeEnumTagSinglePayload(v115, 1, 1, v75);
  sub_1E3904E54(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1E3746800();
  v80 = v117;
  v81 = v118;
  sub_1E42007D4();
  sub_1E325F748(v79, &unk_1ECF2D2B0, &unk_1E429D3D0);

  v82 = v78;
  v83 = v77;
  v84 = v76;
  (*(v116 + 8))(v82, v81);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E38DF1B8();
  v85 = v120;
  sub_1E4200844();
  OUTLINED_FUNCTION_50();

  (*(v119 + 8))(v80, v85);
  *&v76[OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_playbackObserver] = v80;

  if (*(v83 + 50))
  {
    v86 = [v76 view];
    v87 = v124;
    if (!v86)
    {
      __break(1u);
      return;
    }

    v88 = v86;

    v89 = [objc_opt_self() clearColor];
    [v88 setBackgroundColor_];
  }

  else
  {

    v87 = v124;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v90 = v123;
  v91(v123);

  v92 = v76;
  sub_1E38D3D2C(v83, v130);
  v93 = sub_1E41FFC94();
  v94 = sub_1E4206814();

  sub_1E38D3D88(v83);
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v130[0] = swift_slowAlloc();
    *v95 = 136446978;
    v97 = sub_1E3902608();
    v99 = sub_1E3270FC8(v97, v98, v130);

    *(v95 + 4) = v99;
    *(v95 + 12) = 2112;
    *(v95 + 14) = v92;
    *v96 = v84;
    *(v95 + 22) = 2080;
    v100 = v92;

    v101 = OUTLINED_FUNCTION_57();
    v104 = sub_1E3270FC8(v101, v102, v103);

    *(v95 + 24) = v104;
    *(v95 + 32) = 2080;
    sub_1E38D3D88(v83);
    v105 = OUTLINED_FUNCTION_57();
    v108 = sub_1E3270FC8(v105, v106, v107);

    *(v95 + 34) = v108;
    _os_log_impl(&dword_1E323F000, v93, v94, "    %{public}s init %@ ref:%s\n     %s", v95, 0x2Au);
    sub_1E325F748(v96, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();

    (*(v124 + 8))(v123, v125);
  }

  else
  {

    sub_1E38D3D88(v83);

    (*(v87 + 8))(v90, v125);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3901EC8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v80 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v82 = v3;
  MEMORY[0x1EEE9AC00](v4);
  v77 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_6();
  v76 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  v75 = v9;
  OUTLINED_FUNCTION_49();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v81 = &v74 - v12;
  v13 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x548))(v11);
  v79 = v0;
  if (v13)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    v16 = (*(*v2 + 272))();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    (*(v15 + 8))(v0, v16, v17, v19, v21 & 0xFFFFFF, ObjectType, v15);
    swift_unknownObjectRelease();
    sub_1E39050C0(v16, v18, v20, v22);
  }

  v26 = (*(*v2 + 272))();
  v27 = v23;
  v28 = v81;
  v29 = v82;
  switch(v25 >> 13)
  {
    case 1:
      v47 = v79;
      sub_1E3903CF4();
      sub_1E324FBDC();
      OUTLINED_FUNCTION_51_4();
      v48(v28);
      v49 = v47;
      v50 = sub_1E41FFC94();
      v51 = sub_1E4206814();

      if (os_log_type_enabled(v50, v51))
      {
        OUTLINED_FUNCTION_6_21();
        v52 = OUTLINED_FUNCTION_11_16();
        v83 = v52;
        *v28 = 136446210;
        v53 = sub_1E3902608();
        v55 = OUTLINED_FUNCTION_58_0(v53, v54);

        *(v28 + 4) = v55;
        _os_log_impl(&dword_1E323F000, v50, v51, "%{public}s::interactorStateChanged .receivedDocument", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_6_55();

        (*(v82 + 8))(v81, v80);
      }

      else
      {
        OUTLINED_FUNCTION_6_55();

        (*(v29 + 8))(v28, v80);
      }

      goto LABEL_26;
    case 2:
      v56 = v79;
      sub_1E3904910();
      OUTLINED_FUNCTION_6_55();
      sub_1E324FBDC();
      OUTLINED_FUNCTION_51_4();
      v57 = v75;
      v58 = v80;
      v59(v75);
      v60 = v56;
      v61 = sub_1E41FFC94();
      v62 = sub_1E4206814();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = OUTLINED_FUNCTION_6_21();
        v64 = OUTLINED_FUNCTION_100();
        v83 = v64;
        *v63 = 136446210;
        v65 = sub_1E3902608();
        v67 = OUTLINED_FUNCTION_58_0(v65, v66);

        *(v63 + 4) = v67;
        _os_log_impl(&dword_1E323F000, v61, v62, "%{public}s::interactorStateChanged .receivedFragmentWithItems", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v29 + 8))(v57, v58);
      goto LABEL_26;
    case 3:
      sub_1E37CD868(v23, v24, v25);
      v42 = v79;
      v43 = *((*MEMORY[0x1E69E7D40] & *v79) + 0x2F0);

      v45 = v43(v44);
      v46 = v45;
      if (v26)
      {
        if (v45)
        {

          if (v26 == v46)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }
      }

      else if (!v45)
      {
LABEL_21:
        sub_1E324FBDC();
        OUTLINED_FUNCTION_51_4();
        v31 = v77;
        v32 = v80;
        v68(v77);
        v69 = v42;
        v35 = sub_1E41FFC94();
        v70 = sub_1E4206814();

        if (os_log_type_enabled(v35, v70))
        {
          OUTLINED_FUNCTION_6_21();
          v71 = OUTLINED_FUNCTION_11_16();
          v83 = v71;
          *v28 = 136446210;
          v72 = sub_1E3902608();
          OUTLINED_FUNCTION_58_0(v72, v73);
          OUTLINED_FUNCTION_26_5();

          *(v28 + 4) = v69;
          _os_log_impl(&dword_1E323F000, v35, v70, "%{public}s::interactorStateChanged .finishedFetching", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v71);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_21_0();

          goto LABEL_23;
        }

        goto LABEL_25;
      }

LABEL_20:
      sub_1E3903CF4();
      goto LABEL_21;
    case 4:
      goto LABEL_26;
    default:
      OUTLINED_FUNCTION_6_55();
      if (v27)
      {
        v30 = sub_1E383C8A8();
        (*((*MEMORY[0x1E69E7D40] & *v79) + 0x438))(1, v30);
      }

      sub_1E324FBDC();
      OUTLINED_FUNCTION_51_4();
      v31 = v76;
      v32 = v80;
      v33(v76);
      v34 = v79;
      v35 = sub_1E41FFC94();
      v36 = sub_1E4206814();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = OUTLINED_FUNCTION_100();
        v83 = v38;
        *v37 = 136446466;
        v39 = sub_1E3902608();
        v41 = OUTLINED_FUNCTION_58_0(v39, v40);

        *(v37 + 4) = v41;
        *(v37 + 12) = 1024;
        *(v37 + 14) = v27 & 1;
        _os_log_impl(&dword_1E323F000, v35, v36, "%{public}s::interactorStateChanged .fetchingDocument , show loading %{BOOL}d", v37, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v38);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_6_0();
      }

LABEL_23:

LABEL_25:
      (*(v29 + 8))(v31, v32);
LABEL_26:
      OUTLINED_FUNCTION_25_2();
      return;
  }
}

unint64_t sub_1E3902608()
{
  sub_1E42074B4();

  v20[0] = 0xD000000000000020;
  v20[1] = 0x80000001E42675A0;
  v1 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v1);

  v2 = MEMORY[0x1E69109E0](8285, 0xE200000000000000);
  v3 = 0xD000000000000020;
  v21 = 0xD000000000000020;
  v22 = 0x80000001E42675A0;
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x2F0);
  v5 = v4(v2);
  if (v5)
  {
    v6 = v5;
    OUTLINED_FUNCTION_5_0(v5 + 56, v20);
    v7 = *(v6 + 56);

    if (v7)
    {
      v8 = 0x6E776F6E6B6E55;

      v10 = v4(v9);
      if (v10 && (v11 = v10, OUTLINED_FUNCTION_5_0(v10 + 56, &v17), v12 = *(v11 + 56), , , v12))
      {
        OUTLINED_FUNCTION_8();
        v8 = (*(v13 + 368))();
        v15 = v14;
      }

      else
      {
        v15 = 0xE700000000000000;
      }

      v18 = 0x6574616C706D6554;
      v19 = 0xEA00000000005B20;
      MEMORY[0x1E69109E0](v8, v15);

      MEMORY[0x1E69109E0](8285, 0xE200000000000000);

      MEMORY[0x1E69109E0](v18, v19);

      return v21;
    }
  }

  return v3;
}

id DocumentRequestViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DocumentRequestViewController.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_viewControllerDocumentIdentifier);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_sendInitialRequestOnViewWillAppear) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_interactorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_initialRequestSent) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentOptions) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractorObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController____lazy_storage___pagePerformanceReporter) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_playbackObserver) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E390296C()
{

  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_interactorDelegate);

  sub_1E3781D80(*(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController____lazy_storage___pagePerformanceReporter));

  return result;
}

void DocumentRequestViewController.__deallocating_deinit()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  *&v0[OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractor] = 0;

  v8 = OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_playbackObserver;
  if (*&v0[OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_playbackObserver])
  {

    sub_1E42004E4();
  }

  *&v0[v8] = 0;

  v9 = sub_1E324FBDC();
  (*(v3 + 16))(v7, v9, v1);
  v10 = v0;
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();

  if (os_log_type_enabled(v11, v12))
  {
    v21 = v1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_100();
    v22 = v15;
    *v13 = 136446466;
    v16 = sub_1E3902608();
    v18 = sub_1E3270FC8(v16, v17, &v22);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v10;
    *v14 = v10;
    v19 = v10;
    _os_log_impl(&dword_1E323F000, v11, v12, "%{public}s deinit %@", v13, 0x16u);
    sub_1E325F748(v14, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();

    (*(v3 + 8))(v7, v21);
  }

  else
  {

    (*(v3 + 8))(v7, v1);
  }

  v20 = type metadata accessor for DocumentRequestViewController(0);
  v23.receiver = v10;
  v23.super_class = v20;
  objc_msgSendSuper2(&v23, sel_dealloc);
  OUTLINED_FUNCTION_25_2();
}

Swift::Void __swiftcall DocumentRequestViewController.vuiViewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DocumentRequestViewController(0);
  objc_msgSendSuper2(&v3, sel_vui_viewWillAppear_, a1);
  if ([objc_opt_self() isMac] & 1) == 0 && ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x530))())
  {
    DocumentRequestViewController.sendInitialRequestIfApplicableAndMarkDocumentInteractorAsVisible()();
  }
}

Swift::Void __swiftcall DocumentRequestViewController.sendInitialRequestIfApplicableAndMarkDocumentInteractorAsVisible()()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_initialRequestSent) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_initialRequestSent) = 1;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentOptions))
    {

      sub_1E3744600(v2);
      OUTLINED_FUNCTION_112();
    }

    else
    {
    }

    type metadata accessor for DocumentInteractor(0);
    DocumentRequestViewController.pagePerformanceReporter.getter();
    OUTLINED_FUNCTION_58_4();
    OUTLINED_FUNCTION_51_1();
    *(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractor) = sub_1E3DDCD04();

    OUTLINED_FUNCTION_4_66();
    sub_1E3904E54(v3, v4, &unk_1E42D32D8);
    sub_1E4200514();

    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_4_0();
    v6 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_2_4();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    OUTLINED_FUNCTION_2_4();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1E3904F24;
    *(v8 + 24) = v7;
    sub_1E42005A4();
    v9 = sub_1E4200844();

    *(v1 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractorObserver) = v9;
  }

  v10 = OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractor;
  v11 = *(v1 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractor);
  if (v11)
  {
    v12 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x180);

    v14 = v12(v13);
    (*(*v11 + 328))(v14 & 1);

    v15 = *(v1 + v10);
    if (v15)
    {

      v16 = j__OUTLINED_FUNCTION_18();
      v17 = j__OUTLINED_FUNCTION_18();
      (*(*v15 + 792))(1, v16 & 1, v17 & 1);
    }
  }
}

Swift::Void __swiftcall DocumentRequestViewController.vuiViewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DocumentRequestViewController(0);
  v4 = objc_msgSendSuper2(&v6, sel_vui_viewDidAppear_, a1);
  if ((*((*MEMORY[0x1E69E7D40] & *v2) + 0x530))(v4))
  {
    v5 = DocumentRequestViewController.pagePerformanceReporter.getter();
    if (v5)
    {
      (*(*v5 + 208))(4, 0, 1);
    }

    if ([objc_opt_self() isMac])
    {
      DocumentRequestViewController.sendInitialRequestIfApplicableAndMarkDocumentInteractorAsVisible()();
    }
  }
}

Swift::Void __swiftcall DocumentRequestViewController.vuiViewWillDisappear(_:)(Swift::Bool a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for DocumentRequestViewController(0);
  objc_msgSendSuper2(&v9, sel_vui_viewWillDisappear_, a1);
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x188))(0);
  v3 = [v1 vuiNavigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 vuiIsBeingDismissed];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v1 vuiIsBeingDismissed];
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractor);
  if (v7)
  {
    v8 = v6 | v5;

    (*(*v7 + 792))(0, v8 & 1, [v1 vuiIsMovingFromParentViewController]);
  }
}

Swift::Void __swiftcall DocumentRequestViewController.vuiViewDidDisappear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DocumentRequestViewController(0);
  objc_msgSendSuper2(&v4, sel_vui_viewDidDisappear_, a1);
  v3 = DocumentRequestViewController.pagePerformanceReporter.getter();
  if (v3)
  {
    (*(*v3 + 208))(5, 0, 1);
  }
}

uint64_t DocumentRequestViewController.isEqualToDocumentController(_:)(uint64_t a1)
{
  v2 = v1;
  sub_1E3294F34(a1, v37);
  if (!v38)
  {
    sub_1E325F748(v37, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_42;
  }

  type metadata accessor for DocumentRequestViewController(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    v34 = 0;
    return v34 & 1;
  }

  if (v36[0] == v1)
  {

LABEL_45:
    v34 = 1;
    return v34 & 1;
  }

  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v36[0]) + 0x2F0);
  v5 = v36[0];
  v6 = v4();

  if (!v6 || (OUTLINED_FUNCTION_5_0(v6 + 56, v36), v7 = *(v6 + 56), , v8 = , !v7) || (v9 = (*(*v7 + 1000))(v8), v11 = v10, , !v11))
  {
    v9 = *&v5[OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_initialControllerRef];
    v11 = *&v5[OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_initialControllerRef + 8];
  }

  OUTLINED_FUNCTION_23_0();
  v13 = (*(v12 + 752))();
  if (!v13 || (v14 = v13, OUTLINED_FUNCTION_5_0(v13 + 56, v37), v15 = *(v14 + 56), , v16 = , !v15) || (v17 = (*(*v15 + 1000))(v16), v19 = v18, , !v19))
  {
    v17 = *&v2[OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_initialControllerRef];
    v19 = *&v2[OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_initialControllerRef + 8];
  }

  v20 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v20 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v21 && (v17 == v9 ? (v22 = v19 == v11) : (v22 = 0), !v22))
  {
    v23 = sub_1E42079A4();

    if ((v23 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  else
  {
LABEL_25:
  }

  OUTLINED_FUNCTION_23_0();
  v25 = (*(v24 + 1304))();
  if (!v26)
  {
LABEL_41:

    goto LABEL_42;
  }

  v27 = v25;
  v28 = v26;
  v29 = (*((*v3 & *v5) + 0x518))();
  if (!v30)
  {
LABEL_40:

    goto LABEL_41;
  }

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
    v32 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v32 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {

      goto LABEL_40;
    }
  }

  if (v27 == v29 && v28 == v30)
  {

    goto LABEL_45;
  }

  v34 = sub_1E42079A4();

  return v34 & 1;
}

Swift::Void __swiftcall DocumentRequestViewController.templateControllerDidUpdate(resetEligibleEvents:)(Swift::Bool resetEligibleEvents)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractor))
  {
    OUTLINED_FUNCTION_8();
    v4 = *(v3 + 800);

    v4(resetEligibleEvents);
  }
}

uint64_t DocumentRequestViewController.handleDeeplink(_:)(uint64_t a1)
{
  v3 = [v1 childViewControllers];
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  v4 = sub_1E42062B4();

  v6[2] = a1;
  sub_1E3903A4C(sub_1E3904FA0, v6, v4);

  return 1;
}

void sub_1E3903A4C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v6 = sub_1E32AE9B0(a3);
  for (i = 0; v6 != i; ++i)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E6911E60](i, a3);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v8 = *(a3 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_12:
      __break(1u);
      return;
    }

    v10 = v8;
    a1(&v10);

    if (v3)
    {
      return;
    }
  }
}

Swift::Void __swiftcall DocumentRequestViewController.updatePrefetchData(_:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  if (a1.value._rawValue)
  {
    a1.value._rawValue = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    v2 = rawValue;
  }

  else
  {
    v2 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  v5[0] = v2;
  v5[3] = a1.value._rawValue;
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 248);

  v4(v5);
}

void sub_1E3903CF4()
{
  OUTLINED_FUNCTION_31_1();
  v130 = v2;
  v131 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_6();
  v126 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v137 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v127 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  v124 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v122 - v20;
  v22 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v136 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v29 = VUISignpostLogObject(v28);
  sub_1E41FFBC4();
  v30 = sub_1E4206BA4();
  v31 = VUISignpostLogObject(v30);
  v32 = v4;
  v135 = v27;
  sub_1E41FFBA4();

  if (v4)
  {

    v33 = sub_1E324FBDC();
    v132 = *(v7 + 2);
    v133 = v33;
    v134 = v7 + 16;
    v132(v21);
    v34 = v5;
    v35 = v0;
    v36 = sub_1E41FFC94();
    v37 = sub_1E4206814();

    v38 = os_log_type_enabled(v36, v37);
    v39 = v7;
    v128 = v35;
    v129 = v32;
    v125 = v22;
    if (v38)
    {
      v40 = swift_slowAlloc();
      v41 = OUTLINED_FUNCTION_100();
      v138[0] = v41;
      *v40 = 136446466;
      v42 = sub_1E3902608();
      OUTLINED_FUNCTION_22_23(v42, v43);
      OUTLINED_FUNCTION_112();

      *(v40 + 4) = v22;
      *(v40 + 12) = 1024;
      *(v40 + 14) = v130 & 1;
      _os_log_impl(&dword_1E323F000, v36, v37, "%{public}s updateWithNewDocument, animated %{BOOL}d", v40, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v39 = v7;
      OUTLINED_FUNCTION_6_0();
      v32 = v129;
      OUTLINED_FUNCTION_6_0();
    }

    v52 = *(v7 + 1);
    v53 = v52(v21, v34);
    v56 = v34;
    v57 = v137;
    v58 = v131;
    v59 = MEMORY[0x1E69E7D40];
    v61 = v127;
    v60 = v128;
    if (v131 != 5)
    {
      LOBYTE(v138[0]) = v131;
      v140 = 0;
      sub_1E37D17DC(v53, v54, v55);
      v62 = sub_1E4205E84();
      if (v62)
      {
        goto LABEL_16;
      }
    }

    v62 = OUTLINED_FUNCTION_5_0(v32 + 56, &v140);
    v65 = *(v32 + 56);
    if (v65)
    {
      LOBYTE(v138[0]) = *(v65 + OBJC_IVAR____TtC8VideosUI17TemplateViewModel_templateType);
      LOBYTE(v139) = 10;
      sub_1E3905190(v62, v63, v64);
      v62 = sub_1E4205E84();
      if (v62)
      {
        v66 = v124;
        OUTLINED_FUNCTION_29_22();
        v67();
        v68 = v60;
        v69 = sub_1E41FFC94();
        v70 = sub_1E4206814();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = OUTLINED_FUNCTION_6_21();
          v72 = OUTLINED_FUNCTION_100();
          v123 = v56;
          v73 = v52;
          v74 = v72;
          v138[0] = v72;
          *v71 = 136446210;
          v75 = sub_1E3902608();
          v77 = OUTLINED_FUNCTION_22_23(v75, v76);

          *(v71 + 4) = v77;
          _os_log_impl(&dword_1E323F000, v69, v70, "%{public}s shouldRestoreOldTemplate is true. Not replacing existing document with error template.", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v74);
          v52 = v73;
          v56 = v123;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          v78 = v124;
        }

        else
        {

          v78 = v66;
        }

        v52(v78, v56);
        OUTLINED_FUNCTION_24_1();
        (*(v106 + 1088))();
        v60 = v128;
LABEL_34:
        v107 = v126;
        OUTLINED_FUNCTION_29_22();
        v108();
        v109 = v60;
        v110 = sub_1E41FFC94();
        v111 = sub_1E4206814();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = OUTLINED_FUNCTION_6_21();
          v113 = OUTLINED_FUNCTION_100();
          v127 = v52;
          v114 = v113;
          v138[0] = v113;
          *v112 = 136446210;
          v115 = sub_1E3902608();
          v117 = OUTLINED_FUNCTION_22_23(v115, v116);

          *(v112 + 4) = v117;
          _os_log_impl(&dword_1E323F000, v110, v111, "%{public}s hide loading spinner after updating with new document", v112, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v114);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          v127(v107, v56);
        }

        else
        {

          v52(v107, v56);
        }

        v22 = v125;
        sub_1E383C8A8();
        OUTLINED_FUNCTION_24_1();
        (*(v118 + 1080))(0);

        goto LABEL_38;
      }
    }

    if (v58 == 5)
    {
      if ((v130 & 1) == 0)
      {
LABEL_25:
        OUTLINED_FUNCTION_29_22();
        v94();
        v95 = v60;
        v96 = sub_1E41FFC94();
        v97 = sub_1E4206814();

        if (os_log_type_enabled(v96, v97))
        {
          v123 = v56;
          v127 = v52;
          v98 = v131;
          v99 = v131;
          v100 = swift_slowAlloc();
          v139 = swift_slowAlloc();
          *v100 = 136446722;
          v101 = sub_1E3902608();
          sub_1E3270FC8(v101, v102, &v139);
          OUTLINED_FUNCTION_50();

          *(v100 + 4) = v95;
          *(v100 + 12) = 2080;
          if (v99 == 5)
          {
            v103 = 0;
            memset(v138, 0, 24);
          }

          else
          {
            LOBYTE(v138[0]) = v98;
            v103 = &type metadata for ViewModelRequestType;
          }

          v52 = v127;
          v138[3] = v103;
          v104 = sub_1E3294FA4(v138);
          sub_1E3270FC8(v104, v105, &v139);
          OUTLINED_FUNCTION_50();

          *(v100 + 14) = v95;
          *(v100 + 22) = 1024;
          *(v100 + 24) = v130 & 1;
          _os_log_impl(&dword_1E323F000, v96, v97, "%{public}s replace new document for request type %s, animated %{BOOL}d", v100, 0x1Cu);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          v56 = v123;
          v52(v137, v123);
          v60 = v128;
          v32 = v129;
        }

        else
        {

          v52(v57, v56);
        }

        (*((*MEMORY[0x1E69E7D40] & *v95) + 0x428))(v32);
        goto LABEL_34;
      }
    }

    else
    {
LABEL_16:
      LOBYTE(v138[0]) = v58;
      LOBYTE(v139) = 0;
      sub_1E37D17DC(v62, v63, v64);
      if ((sub_1E4205E84() & 1) != 0 || (v130 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v124 = v39;
    v79 = j__OUTLINED_FUNCTION_18();
    v80 = (*((*v59 & *v60) + 0x430))(v32, 1, v79 & 1);
    OUTLINED_FUNCTION_29_22();
    v81();
    v82 = v60;
    v83 = v61;
    v84 = sub_1E41FFC94();
    v85 = sub_1E4206814();

    if (os_log_type_enabled(v84, v85))
    {
      swift_slowAlloc();
      v86 = OUTLINED_FUNCTION_11_16();
      v138[0] = v86;
      *v58 = 136446722;
      v87 = sub_1E3902608();
      OUTLINED_FUNCTION_22_23(v87, v88);
      OUTLINED_FUNCTION_112();

      *(v58 + 4) = v52;
      *(v58 + 12) = 1024;
      *(v58 + 14) = v80 & 1;
      *(v58 + 18) = 1024;
      *(v58 + 20) = (v80 & 1) == 0;
      _os_log_impl(&dword_1E323F000, v84, v85, "%{public}s interactive replace: hasReplaced: %{BOOL}d, need more update = %{BOOL}d", v58, 0x18u);
      __swift_destroy_boxed_opaque_existential_1(v86);
      v32 = v129;
      OUTLINED_FUNCTION_6_0();
      LOBYTE(v58) = v131;
      OUTLINED_FUNCTION_6_0();

      v89 = v127;
    }

    else
    {

      v89 = v83;
    }

    v90 = v52(v89, v56);
    v93 = v80;
    v60 = v128;
    v57 = v137;
    if (v58 != 5)
    {
      LOBYTE(v138[0]) = v58;
      LOBYTE(v139) = 1;
      sub_1E37D17DC(v90, v91, v92);
      if (sub_1E4205E84())
      {
        (*((*MEMORY[0x1E69E7D40] & *v82) + 0x448))();
      }
    }

    if (v93)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v44 = sub_1E324FBDC();
  (*(v7 + 2))(v10, v44, v5);
  v45 = v0;
  v46 = sub_1E41FFC94();
  v47 = sub_1E4206814();

  if (os_log_type_enabled(v46, v47))
  {
    OUTLINED_FUNCTION_6_21();
    v48 = v22;
    v49 = OUTLINED_FUNCTION_11_16();
    v138[0] = v49;
    *v21 = 136446210;
    v50 = sub_1E3902608();
    OUTLINED_FUNCTION_22_23(v50, v51);
    OUTLINED_FUNCTION_26_5();

    *(v21 + 4) = v45;
    _os_log_impl(&dword_1E323F000, v46, v47, "%{public}s Received nil document", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    v22 = v48;
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_21_0();
  }

  (*(v7 + 1))(v10, v5);
LABEL_38:
  v119 = sub_1E4206B94();
  v120 = VUISignpostLogObject(v119);
  v121 = v135;
  sub_1E41FFBA4();

  (*(v136 + 8))(v121, v22);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3904910()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v41 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v19 = VUISignpostLogObject(v18);
  sub_1E41FFBC4();
  v20 = sub_1E4206BA4();
  v21 = VUISignpostLogObject(v20);
  sub_1E41FFBA4();

  if (!(*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0))() || (sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E400, &qword_1E42AA270), (swift_dynamicCast() & 1) == 0))
  {
    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    goto LABEL_9;
  }

  if (!*(&v43 + 1))
  {
LABEL_9:
    sub_1E325F748(&v42, &qword_1ECF2D948, &unk_1E42E5650);
    goto LABEL_10;
  }

  v39 = v5;
  v22 = v12;
  sub_1E3251BE8(&v42, v45);
  v23 = v46;
  v24 = v47;
  __swift_project_boxed_opaque_existential_1(v45, v46);
  if (((*(v24 + 16))(v4, v2 & 1, v23, v24) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v45);
    v12 = v22;
    v5 = v39;
LABEL_10:
    v27 = sub_1E324FBDC();
    (*(v7 + 16))(v11, v27, v5);
    v28 = v0;
    v29 = sub_1E41FFC94();
    v30 = sub_1E42067F4();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_6_21();
      v40 = v5;
      v32 = v12;
      v33 = OUTLINED_FUNCTION_100();
      v45[0] = v33;
      *v31 = 136446210;
      v34 = sub_1E3902608();
      v36 = sub_1E3270FC8(v34, v35, v45);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1E323F000, v29, v30, "%{public}s received document fragments when there's no tempalte controller.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v12 = v32;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v7 + 8))(v11, v40);
    }

    else
    {

      (*(v7 + 8))(v11, v5);
    }

    goto LABEL_13;
  }

  v12 = v22;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractor))
  {
    OUTLINED_FUNCTION_8();
    v26 = *(v25 + 800);

    v26(0);
  }

  __swift_destroy_boxed_opaque_existential_1(v45);
LABEL_13:
  v37 = sub_1E4206B94();
  v38 = VUISignpostLogObject(v37);
  sub_1E41FFBA4();

  (*(v41 + 8))(v17, v12);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3904D6C()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isFullscreenPlaybackUIBeingShown];

  OUTLINED_FUNCTION_5_0(v0 + 16, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC8VideosUI29DocumentRequestViewController_documentInteractor);

    if (v6)
    {
      v7 = j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_8();
      (*(v8 + 792))(v2 ^ 1, v7 & 1, v9 & 1);
    }
  }

  return result;
}

uint64_t sub_1E3904E54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for DocumentRequestViewController(uint64_t a1)
{
  result = qword_1EE293610;
  if (!qword_1EE293610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

void sub_1E3904F28()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_5_0(*(v0 + 16) + 16, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    OUTLINED_FUNCTION_5_0(v1 + 16, &v4);
    if (swift_weakLoadStrong())
    {
      sub_1E3901EC8();
    }
  }
}

void sub_1E3904FA0(void **a1)
{
  v1 = *a1;
  v2 = swift_dynamicCastObjCProtocolConditional();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    v5 = sub_1E41FE364();
    [v3 deeplinkURLWasHandled_];
  }
}

void sub_1E39050C0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a4 >> 13) <= 3u)
  {
    v4 = a4;
    switch(a4 >> 13)
    {
      case 2:

        break;
      case 3:

        sub_1E37CD868(a2, a3, v4);
        break;
      default:

        break;
    }
  }
}

unint64_t sub_1E3905190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE279870[0];
  if (!qword_1EE279870[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE279870);
  }

  return result;
}

uint64_t sub_1E39051FC()
{
  v0 = [objc_opt_self() currentThread];
  v1 = sub_1E39052B0(v0);
  v3 = v2;
  v4 = sub_1E4205F14();
  if (v3)
  {
    if (v1 == v4 && v3 == v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_1E42079A4();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1E39052B0(void *a1)
{
  v2 = [a1 name];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

void *sub_1E3905320(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 648);

  v7 = v6();
  if (v7)
  {
    v8 = v7;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v9 = *(v8 + 56);

    if (v9)
    {
      v21 = 4;
      (*(*v9 + 776))(v22, &v21, &unk_1F5D5D6D8, &off_1F5D5C8B8);
      if (v22[3])
      {
        if (swift_dynamicCast())
        {

          goto LABEL_9;
        }
      }

      else
      {
        sub_1E325F6F0(v22, &unk_1ECF296E0, &unk_1E4298030);
      }

      sub_1E397D2C8();
    }
  }

LABEL_9:
  sub_1E34AF604(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v11;
  v12 = [a1 tvShowCanonicalId];
  v13 = sub_1E4205F14();
  v15 = v14;

  *(inited + 48) = v13;
  *(inited + 56) = v15;
  *(inited + 64) = sub_1E4205F14();
  *(inited + 72) = v16;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v17;
  v18 = sub_1E4205CB4();
  type metadata accessor for Metrics(0);
  v19 = sub_1E3797720(v18);

  sub_1E3BA7798(v19);

  sub_1E34AF594(a2, a3);
  return a1;
}

void sub_1E39055AC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v152 = v2;
  v4 = v3;
  v150 = v3;
  v6 = v5;
  v137 = v7;
  sub_1E4201AE4();
  OUTLINED_FUNCTION_0_10();
  v145 = v8;
  v146 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v11 - v10);
  v12 = sub_1E4201134();
  OUTLINED_FUNCTION_0_10();
  v142 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D9C0, &qword_1E42AA518);
  OUTLINED_FUNCTION_0_10();
  v140 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v130 - v21;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D9B8, &qword_1E42AA510);
  OUTLINED_FUNCTION_0_10();
  v143 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v25);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D9A8, &qword_1E42AA500);
  OUTLINED_FUNCTION_0_10();
  v147 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v151 = v28;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D9A0, &qword_1E42AA4F8);
  OUTLINED_FUNCTION_0_10();
  v130 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v148 = v31;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D990, &qword_1E42AA4E8);
  OUTLINED_FUNCTION_0_10();
  v133 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D988, &qword_1E42AA4E0);
  OUTLINED_FUNCTION_0_10();
  v135 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v37);
  v38 = (*(*v6 + 1168))();
  v39 = swift_allocObject();
  *(v39 + 16) = v6;
  *(v39 + 24) = v4;
  v40 = v152;
  *(v39 + 32) = v152;
  *(v39 + 40) = v1;
  v149 = v1;
  v155 = v39;
  v156[0] = v38;
  v153 = v156;
  v154 = sub_1E3909388;

  sub_1E34AF604(v40, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA98, &qword_1E42AA5D0);
  sub_1E39094E8();
  sub_1E4202AE4();

  sub_1E4201124();
  OUTLINED_FUNCTION_4_61();
  v43 = sub_1E32752B0(v41, &qword_1ECF2D9C0, &qword_1E42AA518, v42);
  v44 = MEMORY[0x1E697C0D8];
  v45 = v138;
  OUTLINED_FUNCTION_32_12();
  sub_1E42035B4();
  OUTLINED_FUNCTION_15_5();
  v46(v17, v12);
  OUTLINED_FUNCTION_15_5();
  v47(v22, v18);
  v49 = v145;
  v48 = v146;
  v50 = v144;
  (*(v146 + 104))(v144, *MEMORY[0x1E697C438], v145);
  v156[0] = v18;
  v156[1] = v12;
  v157 = v43;
  v158 = v44;
  v51 = v139;
  v52 = v149;
  OUTLINED_FUNCTION_12_41();
  v55 = OUTLINED_FUNCTION_36_21(v53, v54);
  v56 = v50;
  v57 = v141;
  v58 = v45;
  v59 = v6;
  sub_1E42033D4();
  (*(v48 + 8))(v56, v49);
  OUTLINED_FUNCTION_15_5();
  v60 = v57;
  v61(v58, v57);
  v62 = type metadata accessor for SeasonMetadata();
  v63 = swift_allocObject();
  *(v63 + 16) = v6;
  *(v63 + 24) = v150;
  *(v63 + 32) = v152;
  *(v63 + 40) = v52;

  v64 = OUTLINED_FUNCTION_33_11();
  sub_1E34AF604(v64, v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D9B0, &qword_1E42AA508);
  v156[0] = v60;
  v156[1] = v55;
  OUTLINED_FUNCTION_7_18();
  v69 = OUTLINED_FUNCTION_36_21(v67, v68);
  OUTLINED_FUNCTION_3_66();
  v72 = sub_1E39096D0(v70, v71, &unk_1E42B75E8);
  v73 = sub_1E3908BF0();
  v128 = v73;
  v74 = v151;
  sub_1E4203284();

  v75 = v51;
  v76 = (*(v147 + 8))(v74, v51);
  v77 = (*(*v59 + 1168))(v76);
  if (!sub_1E32AE9B0(v77))
  {
    v78 = v66;

    v82 = [objc_opt_self() sharedInstance];
    if (v82)
    {
      v83 = v82;
      v84 = sub_1E3741090(0xD000000000000023, 0x80000001E42675F0, v82);
      v86 = v85;

      if (v86)
      {
        v80 = v84;
      }

      else
      {
        v80 = 0;
      }

      if (v86)
      {
        v81 = v86;
      }

      else
      {
        v81 = 0xE000000000000000;
      }

      goto LABEL_12;
    }

LABEL_20:
    __break(1u);
    return;
  }

  if ((v77 & 0xC000000000000001) != 0)
  {
    v78 = v66;
    v127 = MEMORY[0x1E6911E60](0, v77);

    v80 = *(v127 + 56);
    v81 = *(v127 + 64);

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_20;
  }

  v78 = v66;
  v79 = *(v77 + 32);

  v80 = *(v79 + 56);
  v81 = *(v79 + 64);

LABEL_12:
  v87 = v150 & 1;
  v161 = v80;
  v162 = v81;
  v156[0] = v75;
  v156[1] = v62;
  v157 = v78;
  v158 = v69;
  v159 = v72;
  v160 = v73;
  OUTLINED_FUNCTION_14_9();
  v90 = OUTLINED_FUNCTION_36_21(v88, v89);
  v93 = sub_1E32822E0(v90, v91, v92);
  v94 = MEMORY[0x1E69E6158];
  v95 = v132;
  v96 = v131;
  sub_1E4203034();

  OUTLINED_FUNCTION_15_5();
  v97 = OUTLINED_FUNCTION_33_11();
  v99 = v98(v97);
  MEMORY[0x1EEE9AC00](v99);
  *(&v130 - 4) = v59;
  *(&v130 - 24) = v87;
  v128 = v152;
  v129 = v149;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D998, &qword_1E42AA4F0);
  v156[0] = v96;
  v156[1] = v94;
  v157 = v90;
  v158 = v93;
  OUTLINED_FUNCTION_14_54();
  v103 = OUTLINED_FUNCTION_36_21(v101, v102);
  v104 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D9E0, &qword_1E42AA520);
  OUTLINED_FUNCTION_2_63();
  OUTLINED_FUNCTION_40_13();
  v109 = sub_1E32752B0(v105, v106, v107, v108);
  v156[0] = v104;
  v156[1] = v109;
  OUTLINED_FUNCTION_6_10();
  v112 = OUTLINED_FUNCTION_36_21(v110, v111);
  v113 = v134;
  sub_1E4203504();
  OUTLINED_FUNCTION_15_5();
  v114(v95, v113);
  v156[0] = 0;
  v156[1] = 0xE000000000000000;
  sub_1E42074B4();

  strcpy(v156, "SeasonList.id=");
  HIBYTE(v156[1]) = -18;
  v116 = (*(*v59 + 320))(v115);
  if (v117)
  {
    v118 = v116;
    v119 = v117;
  }

  else
  {
    v119 = v59[3];
    if (v119)
    {
      v118 = v59[2];
    }

    else
    {
      v119 = 0xE700000000000000;
      v118 = 0x6E776F6E6B6E75;
    }
  }

  MEMORY[0x1E69109E0](v118, v119);

  v120 = v156[0];
  v121 = v156[1];
  v156[0] = v113;
  v156[1] = v100;
  v157 = v103;
  v158 = v112;
  OUTLINED_FUNCTION_11_17();
  v124 = OUTLINED_FUNCTION_36_21(v122, v123);
  sub_1E40A7FF0(v120, v121, 5, v136, v124);

  OUTLINED_FUNCTION_15_5();
  v125 = OUTLINED_FUNCTION_32_12();
  v126(v125);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39060D0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v25 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = type metadata accessor for SeasonDownloadListItemView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DAD8, &unk_1E42AA5F0);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_12();
  type metadata accessor for SeasonEpisodeListViewLayout();
  v19 = sub_1E3C85F24(0);
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v20 = v11[5];
  *(v15 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v21 = (v15 + v11[6]);
  v21[1] = 0;
  v21[2] = 0;
  *v21 = v4;
  *(v15 + v11[8]) = v2;
  *(v15 + v11[7]) = v19;

  sub_1E4202474();
  OUTLINED_FUNCTION_17_36();
  sub_1E39096D0(v22, v23, &unk_1E42AA360);
  sub_1E4203224();
  (*(v6 + 8))(v10, v25);
  sub_1E3909718(v15);
  MEMORY[0x1E69109E0](*(v4 + 16), *(v4 + 24));
  OUTLINED_FUNCTION_15_10();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E40A7FF0(4023401, 0xE300000000000000, 1, v26, OpaqueTypeConformance2);

  (*(v17 + 8))(v0, v26);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39063B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for SeasonDownloadListItemView(0);
  v13 = v12[5];
  *(a6 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  result = swift_storeEnumTagMultiPayload();
  v15 = (a6 + v12[6]);
  *v15 = a1;
  v15[1] = a2;
  v15[2] = a3;
  *(a6 + v12[8]) = a5;
  *(a6 + v12[7]) = a4;
  return result;
}

void sub_1E3906498()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for SeasonDownloadEpisodeListView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v13 = *v8;
  v14 = *(*v6 + 1168);

  v16 = v14(v15);
  sub_1E3906618(v13, v16);
  LOBYTE(v14) = v17;

  if (v14)
  {

    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  }

  else
  {
    type metadata accessor for EpisodeListInteractor(0);
    v23 = OUTLINED_FUNCTION_33_11();
    v25 = sub_1E37956E0(v23, v24);
    sub_1E34AF604(v4, v2);
    sub_1E3EA9C58(v25, v4, v2, v0);
    sub_1E3909650(v0, v10);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3906618(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E32AE9B0(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }
    }

    type metadata accessor for SeasonMetadata();
    sub_1E39096D0(&qword_1ECF2DAC0, type metadata accessor for SeasonMetadata, &unk_1E42B7628);
    v5 = sub_1E4205E84();

    if (v5)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

void sub_1E3906748()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E4202034();
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D9E0, &qword_1E42AA520);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  sub_1E4201FF4();
  v19[2] = v7;
  v20 = v5;
  v21 = v3;
  v22 = v1;
  type metadata accessor for ModalDismissButton(0);
  sub_1E39096D0(&qword_1ECF2DAB8, type metadata accessor for ModalDismissButton, &unk_1E42BEC68);
  sub_1E4200C04();
  OUTLINED_FUNCTION_2_63();
  v18 = sub_1E32752B0(v16, &qword_1ECF2D9E0, &qword_1E42AA520, v17);
  MEMORY[0x1E690CA00](v15, v10, v18);
  (*(v12 + 8))(v15, v10);
  OUTLINED_FUNCTION_25_2();
}

uint64_t type metadata accessor for SeasonDownloadListItemView(uint64_t a1)
{
  result = qword_1EE295130;
  if (!qword_1EE295130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3906C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA00, &qword_1E42AA530);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA08, &qword_1E42AA538);
  v33 = OUTLINED_FUNCTION_17_2(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_4_6();
  v36 = v34 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  *v39 = sub_1E4201D54();
  *(v39 + 1) = 0;
  v39[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA10, &qword_1E42AA540);
  sub_1E3906E78();
  *v31 = sub_1E4201B84();
  *(v31 + 1) = 0;
  v31[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA18, &qword_1E42AA548);
  sub_1E3907F9C();
  sub_1E3294EE4(v39, v36, &qword_1ECF2DA08, &qword_1E42AA538);
  OUTLINED_FUNCTION_37_18(v31, v28);
  sub_1E3294EE4(v36, v23, &qword_1ECF2DA08, &qword_1E42AA538);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA20, &unk_1E42AA550);
  v41 = v23 + *(v40 + 48);
  *v41 = 0;
  *(v41 + 8) = 0;
  OUTLINED_FUNCTION_37_18(v28, v23 + *(v40 + 64));
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v42, v43, v44);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F6F0(v45, v46, v47);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v48, v49, v50);
  OUTLINED_FUNCTION_40_13();
  sub_1E325F6F0(v51, v52, v53);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3906E78()
{
  OUTLINED_FUNCTION_31_1();
  v35 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v34 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v8);
  v33 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v32 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_42_21();
  sub_1E3907150(v22);
  sub_1E3907344();
  v31 = v12;
  sub_1E3907650();
  sub_1E3294EE4(v0, v20, &qword_1ECF29938, &unk_1E429C3F0);
  v23 = *(v4 + 16);
  v24 = v33;
  v23(v33, v15, v2);
  v25 = v34;
  v23(v34, v12, v2);
  v26 = v35;
  sub_1E3294EE4(v20, v35, &qword_1ECF29938, &unk_1E429C3F0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA68, &unk_1E42AA598);
  v23((v26 + *(v27 + 48)), v24, v2);
  v23((v26 + *(v27 + 64)), v25, v2);
  v28 = *(v4 + 8);
  v28(v31, v2);
  v28(v32, v2);
  sub_1E325F6F0(v0, &qword_1ECF29938, &unk_1E429C3F0);
  v29 = OUTLINED_FUNCTION_32_12();
  (v28)(v29);
  v28(v24, v2);
  sub_1E325F6F0(v20, &qword_1ECF29938, &unk_1E429C3F0);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3907150@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = type metadata accessor for SeasonDownloadListItemView(0);
  v8 = *(v1 + *(v7 + 24));
  if (v8 < 0)
  {

    v10 = sub_1E379540C();

    v8 = v10;
  }

  else
  {
  }

  v11 = (*(*v8 + 168))(v9);

  if (v11)
  {
    v12 = *(*(v3 + *(v7 + 28)) + 136);

    sub_1E3EB9BB4(v17);

    v13 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v11, v17, v12, v13 & 1, 0, 0, v2);

    sub_1E375C31C(v17);
    v14 = OUTLINED_FUNCTION_114_0();
    v15(v14);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
  }
}

void sub_1E3907344()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v36 = v3;
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v34 = v8;
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v32 = v10;
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  v14 = *(v0 + *(type metadata accessor for SeasonDownloadListItemView(0) + 24));

  v15 = OUTLINED_FUNCTION_114_0();
  sub_1E3909340(v15);
  if (v14 < 0)
  {

    sub_1E379540C();
  }

  sub_1E32822E0(v16, v17, v18);
  v31 = sub_1E4202C44();
  v20 = v19;
  v22 = v21 & 1;

  sub_1E3746E10(v13);
  sub_1E374709C(v1);
  v23 = MEMORY[0x1E6981148];
  v24 = MEMORY[0x1E6981138];
  v25 = j__OUTLINED_FUNCTION_18();
  sub_1E37B5FBC(v6);
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_40_13();
  sub_1E37B6028(v26, v27, v28, v25, v6, v29, v23, v24, v30);

  (*(v36 + 8))(v6, v37);
  (*(v34 + 8))(v1, v35);
  (*(v32 + 8))(v13, v33);
  sub_1E37434B8(v31, v20, v22);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3907650()
{
  OUTLINED_FUNCTION_31_1();
  v45 = v1;
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v46 = v3;
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v40 = v5 - v4;
  sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v43 = v7;
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v41 = v12;
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  v16 = type metadata accessor for SeasonDownloadListItemView(0);
  v17 = *(*(v0 + *(v16 + 28)) + 128);

  v18 = *(v0 + *(v16 + 24));
  if (v18 < 0)
  {
    v20 = v18 & 0x7FFFFFFFFFFFFFFFLL;

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v19 = sub_1E32AE9B0(*(v20 + 16));
  }

  else
  {
    v19 = *(v18 + 72);
  }

  v21 = [objc_opt_self() sharedInstance];
  if (v21)
  {
    v24 = v21;
    sub_1E3741090(0xD000000000000019, 0x80000001E42675D0, v21);
    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870, &unk_1E429CE30);
      v26 = swift_allocObject();
      v27 = MEMORY[0x1E69E6530];
      *(v26 + 16) = xmmword_1E4297BE0;
      v28 = MEMORY[0x1E69E65A8];
      *(v26 + 56) = v27;
      *(v26 + 64) = v28;
      *(v26 + 32) = v19;
      sub_1E4205EE4();
    }

    else
    {
    }
  }

  sub_1E32822E0(v21, v22, v23);
  v39 = sub_1E4202C44();
  v30 = v29;
  v32 = v31 & 1;

  sub_1E3746E10(v15);
  sub_1E374709C(v10);
  v33 = MEMORY[0x1E6981148];
  v34 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_115();
  v35 = v15;
  v36 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_115();
  sub_1E37B5FBC(v37);
  OUTLINED_FUNCTION_115();
  v38 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v17, v35, v10, v36, v40, v38 & 1, v33, v34, v45);

  (*(v46 + 8))(v40, v47);
  (*(v43 + 8))(v10, v44);
  (*(v41 + 8))(v35, v42);
  sub_1E37434B8(v39, v30, v32);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3907A14()
{
  OUTLINED_FUNCTION_31_1();
  v34 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA00, &qword_1E42AA530);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA70, &qword_1E42AA5A8);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_19_7();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_42_21();
  v33 = v1;
  sub_1E3907150(v23);
  *v0 = sub_1E4201D54();
  *(v0 + 8) = 0;
  *(v0 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA78, &qword_1E42AA5B0);
  sub_1E3907D2C();
  *v10 = sub_1E4201B84();
  *(v10 + 1) = 0;
  v10[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA18, &qword_1E42AA548);
  sub_1E3907F9C();
  sub_1E3294EE4(v1, v21, &qword_1ECF29938, &unk_1E429C3F0);
  sub_1E3294EE4(v0, v15, &qword_1ECF2DA70, &qword_1E42AA5A8);
  sub_1E3294EE4(v10, v7, &qword_1ECF2DA00, &qword_1E42AA530);
  v24 = v34;
  sub_1E3294EE4(v21, v34, &qword_1ECF29938, &unk_1E429C3F0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA80, &qword_1E42AA5B8);
  sub_1E3294EE4(v15, v24 + v25[12], &qword_1ECF2DA70, &qword_1E42AA5A8);
  v26 = v24 + v25[16];
  *v26 = 0;
  *(v26 + 8) = 0;
  sub_1E3294EE4(v7, v24 + v25[20], &qword_1ECF2DA00, &qword_1E42AA530);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v27, v28, v29);
  sub_1E325F6F0(v0, &qword_1ECF2DA70, &qword_1E42AA5A8);
  sub_1E325F6F0(v33, &qword_1ECF29938, &unk_1E429C3F0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v30, v31, v32);
  sub_1E325F6F0(v15, &qword_1ECF2DA70, &qword_1E42AA5A8);
  sub_1E325F6F0(v21, &qword_1ECF29938, &unk_1E429C3F0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3907D2C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v27 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA88, &qword_1E42AA5C0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_7();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = (v14 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - v18;
  sub_1E3907344();
  if (*(v2 + *(type metadata accessor for SeasonDownloadListItemView(0) + 32)) == 1)
  {
    sub_1E3907650();
    (*(v12 + 32))(v0, v16, v10);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v20, 1, v10);
  v21 = *(v12 + 16);
  v21(v16, v19, v10);
  sub_1E3294EE4(v0, v8, &qword_1ECF2DA88, &qword_1E42AA5C0);
  v22 = v8;
  v23 = v27;
  v21(v27, v16, v10);
  v24 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA90, &qword_1E42AA5C8) + 48)];
  sub_1E3294EE4(v22, v24, &qword_1ECF2DA88, &qword_1E42AA5C0);
  sub_1E325F6F0(v0, &qword_1ECF2DA88, &qword_1E42AA5C0);
  v25 = *(v12 + 8);
  v25(v19, v10);
  sub_1E325F6F0(v22, &qword_1ECF2DA88, &qword_1E42AA5C0);
  v25(v16, v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3907F9C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA28, &qword_1E42DA970);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v79 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA30, &qword_1E42AA560);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_12();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA38, &qword_1E42AA568);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v83 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_19_7();
  v18 = v3 + *(type metadata accessor for SeasonDownloadListItemView(0) + 24);
  v19 = *v18;
  v20 = *(v18 + 16);
  if ((*v18 & 0x8000000000000000) != 0)
  {

    sub_1E390846C();
    (*(v8 + 16))(v1, v11, v6);
    swift_storeEnumTagMultiPayload();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA40, &qword_1E42AA570);
    v81 = sub_1E3908D84();
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DA50, &qword_1E42AA578);
    v40 = v0;
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DA58, &qword_1E42AA580);
    v44 = sub_1E3908E5C(v41, v42, v43);
    *&v84 = &type metadata for DownloadButton;
    *(&v84 + 1) = v44;
    OUTLINED_FUNCTION_5_66();
    v47 = OUTLINED_FUNCTION_35_7(v45, v46);
    *&v84 = v41;
    *(&v84 + 1) = v47;
    v48 = v40;
    OUTLINED_FUNCTION_4_67();
    v51 = OUTLINED_FUNCTION_35_7(v49, v50);
    *&v84 = v39;
    *(&v84 + 1) = v51;
    OUTLINED_FUNCTION_5_27();
    OUTLINED_FUNCTION_35_7(v52, v53);
    sub_1E4201F44();

    (*(v8 + 8))(v11, v6);
  }

  else
  {
    v79[2] = *(v18 + 8);
    v79[3] = v20;
    v81 = v6;
    v82 = v5;

    sub_1E38F5EA8();
    v21 = v19[2];
    v22 = v19[3];
    v23 = v19[5];
    v24 = v19[6];
    v25 = v19[9];
    swift_bridgeObjectRetain_n();

    v26 = sub_1E39088CC(v21, v22, v23, v24, v25, 2);
    type metadata accessor for DownloadStateIndicatorViewModel(0);
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
    v27 = v26;
    v28 = sub_1E4173E90(233, v27, v21, v22, 0, &v84);
    v80 = v0;
    if (v28)
    {
      OUTLINED_FUNCTION_25();
      sub_1E3F66914(v29, v30, v31, v32, 0, v33);
      v35 = *(&v84 + 1);
      v34 = v84;
      v36 = *(&v85 + 1);
      v37 = v85;
      v38 = v86;
    }

    else
    {

      v34 = 0;
      v35 = 0;
      v37 = 0;
      v36 = 0;
      v38 = 0;
    }

    *v1 = v34;
    *(v1 + 8) = v35;
    *(v1 + 16) = v37;
    *(v1 + 24) = v36;
    *(v1 + 32) = v38;
    swift_storeEnumTagMultiPayload();
    v54 = OUTLINED_FUNCTION_33_11();
    sub_1E3908EB0(v54, v55, v37, v36, v38);
    v79[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA40, &qword_1E42AA570);
    sub_1E3908D84();
    v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DA50, &qword_1E42AA578);
    v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DA58, &qword_1E42AA580);
    v60 = sub_1E3908E5C(v57, v58, v59);
    *&v84 = &type metadata for DownloadButton;
    *(&v84 + 1) = v60;
    OUTLINED_FUNCTION_5_66();
    v63 = OUTLINED_FUNCTION_35_7(v61, v62);
    *&v84 = v57;
    *(&v84 + 1) = v63;
    OUTLINED_FUNCTION_4_67();
    v66 = OUTLINED_FUNCTION_35_7(v64, v65);
    *&v84 = v56;
    *(&v84 + 1) = v66;
    OUTLINED_FUNCTION_5_27();
    OUTLINED_FUNCTION_35_7(v67, v68);
    v48 = v80;
    sub_1E4201F44();
    sub_1E3908F58(v19);
    v69 = OUTLINED_FUNCTION_33_11();
    sub_1E3908FA0(v69, v70, v37, v36, v38);
    v5 = v82;
  }

  v71 = v83;
  OUTLINED_FUNCTION_37_18(v48, v83);
  *v5 = 0;
  *(v5 + 8) = 1;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA60, &unk_1E42AA588);
  OUTLINED_FUNCTION_37_18(v71, v5 + *(v72 + 48));
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v73, v74, v75);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v76, v77, v78);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E390846C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v51 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA58, &qword_1E42AA580);
  OUTLINED_FUNCTION_0_10();
  v48 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DA50, &qword_1E42AA578);
  OUTLINED_FUNCTION_0_10();
  v50 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v14);
  sub_1E3795418();
  v16 = v15;
  v17 = type metadata accessor for ButtonLayout();
  v18 = sub_1E3BBF394(v17);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v19 = *(v5 + 40);
  v20 = swift_allocObject();
  *(v20 + 16) = v3;
  *(v20 + 24) = v1;
  v21 = v19;

  v22 = OUTLINED_FUNCTION_45_1();
  sub_1E3C00844(v22, v23, v16, v24, v20, v25);
  v65[0] = v57;
  v26 = v58;
  v27 = v59;
  v47 = v58;
  v46 = v59;
  v45 = v56;
  sub_1E3294EE4(v65, &v60, &qword_1ECF3D960, &unk_1E4298000);
  sub_1E34AF604(v26, v27);

  v28 = sub_1E41A09C4(&v56, v18, &v60);
  v63 = v60;
  *v64 = *v61;
  *&v64[9] = *&v61[9];
  v52 = v60;
  v53 = *v61;
  v54 = *&v61[16];
  v55 = v62;
  v31 = sub_1E3908E5C(v28, v29, v30);

  OUTLINED_FUNCTION_45_1();
  LOBYTE(v27) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_45_1();
  LOBYTE(v16) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_45_1();
  LOBYTE(v19) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_45_1();
  v32 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v18, v27 & 1, v16 & 1, v19 & 1, v32 & 1, &type metadata for DownloadButton, v31);

  sub_1E3909048(&v63);

  v33 = *(v5 + 64);
  *&v52 = &type metadata for DownloadButton;
  *(&v52 + 1) = v31;
  OUTLINED_FUNCTION_5_66();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E4036118(v33, v7, OpaqueTypeConformance2);
  OUTLINED_FUNCTION_15_5();
  v35(v11, v7);
  *&v52 = 4023401;
  *(&v52 + 1) = 0xE300000000000000;
  v36 = sub_1E379540C();
  v37 = *(v36 + 16);
  v38 = *(v36 + 24);

  MEMORY[0x1E69109E0](v37, v38);

  *&v52 = v7;
  *(&v52 + 1) = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_4_67();
  swift_getOpaqueTypeConformance2();
  v39 = OUTLINED_FUNCTION_114_0();
  sub_1E40A7FF0(v39, v40, 0, v49, v41);

  sub_1E325F6F0(v65, &qword_1ECF3D960, &unk_1E4298000);
  sub_1E34AF594(v47, v46);
  OUTLINED_FUNCTION_15_5();
  v42 = OUTLINED_FUNCTION_32_12();
  v43(v42);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E39088CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1E4205ED4();

  if (a4)
  {
    v10 = sub_1E4205ED4();
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() viewModelWithCanonicalId:v9 title:v10 episodeCount:a5 downloadType:a6];

  return v11;
}

void *sub_1E39089B8(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_1E3908A10(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 24))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

void *sub_1E3908A64(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      result[1] = 0;
      result[2] = 0;
      return OUTLINED_FUNCTION_25_9(result, (v3 | (v3 << 57)) & 0xF000000000000007);
    }
  }

  return result;
}

void sub_1E3908B0C(uint64_t a1)
{
  sub_1E374A21C(319, &qword_1EE289EB0, MEMORY[0x1E697E730]);
  if (v1 <= 0x3F)
  {
    sub_1E374A21C(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SeasonEpisodeListViewLayout();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E3908BF0()
{
  result = qword_1ECF2D9D8;
  if (!qword_1ECF2D9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D9B0, &qword_1E42AA508);
    sub_1E39096D0(&unk_1ECF3BE60, type metadata accessor for SeasonDownloadEpisodeListView, &unk_1E42DA7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D9D8);
  }

  return result;
}

unint64_t sub_1E3908CA4()
{
  result = qword_1ECF2D9F0;
  if (!qword_1ECF2D9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2D9F8, &qword_1E42AA528);
    v1 = MEMORY[0x1E69817F8];
    sub_1E32752B0(&qword_1ECF2D970, &qword_1ECF2D960, &qword_1E42AA2F8, MEMORY[0x1E69817F8]);
    sub_1E32752B0(&qword_1ECF2D978, &qword_1ECF2D950, &qword_1E42AA2E8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2D9F0);
  }

  return result;
}

unint64_t sub_1E3908D84()
{
  result = qword_1ECF2DA48;
  if (!qword_1ECF2DA48)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DA40, &qword_1E42AA570);
    sub_1E3908E08(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2DA48);
  }

  return result;
}

unint64_t sub_1E3908E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE278548[0];
  if (!qword_1EE278548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE278548);
  }

  return result;
}

unint64_t sub_1E3908E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE283100;
  if (!qword_1EE283100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE283100);
  }

  return result;
}

uint64_t sub_1E3908EB0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    return sub_1E3908F18(a3, a4);
  }

  return result;
}

uint64_t sub_1E3908F18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

double sub_1E3908F58(uint64_t a1)
{
  if (a1 < 0)
  {
  }

  return result;
}

double sub_1E3908FA0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {

    return sub_1E3909004(a3, a4);
  }

  return v7;
}

double sub_1E3909004(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1E3909080(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:

      break;
    case 1:

      sub_1E34AF594(a4, a5);
      break;
    case 2:

      swift_unknownObjectRelease();
      break;
    case 3:

      goto LABEL_6;
    case 4:
LABEL_6:

      break;
    default:
      return;
  }
}

uint64_t sub_1E3909180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3BE00, &unk_1E42AA5E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DAB0, &qword_1E42AA5D8);
  sub_1E32752B0(&qword_1ECF3BE30, &qword_1ECF3BE00, &unk_1E42AA5E0, MEMORY[0x1E69E6338]);
  sub_1E32752B0(&qword_1ECF2DAA8, &qword_1ECF2DAB0, &qword_1E42AA5D8, MEMORY[0x1E697C090]);
  sub_1E39096D0(&qword_1ECF2DAC8, type metadata accessor for SeasonMetadata, &unk_1E42B75B0);
  return sub_1E4203B44();
}

uint64_t sub_1E3909340(uint64_t a1)
{
  if (a1 < 0)
  {
  }
}

uint64_t sub_1E3909388(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DAD0, &qword_1E42DA9E0);
  type metadata accessor for SeasonMetadata();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DAD8, &unk_1E42AA5F0);
  type metadata accessor for SeasonDownloadListItemView(255);
  OUTLINED_FUNCTION_17_36();
  sub_1E39096D0(v1, v2, &unk_1E42AA360);
  OUTLINED_FUNCTION_15_10();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_5_27();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_3_66();
  sub_1E39096D0(v3, v4, &unk_1E42B75E8);
  return sub_1E42010A4();
}

unint64_t sub_1E39094E8()
{
  result = qword_1ECF2DAA0;
  if (!qword_1ECF2DAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DA98, &qword_1E42AA5D0);
    sub_1E32752B0(&qword_1ECF2DAA8, &qword_1ECF2DAB0, &qword_1E42AA5D8, MEMORY[0x1E697C090]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2DAA0);
  }

  return result;
}

uint64_t objectdestroy_27Tm()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1E39095FC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_1E34AF604(v4, v3);

  return sub_1E3B780C4(v4, v3, a1);
}

uint64_t sub_1E3909650(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeasonDownloadEpisodeListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E39096D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3909718(uint64_t a1)
{
  v2 = type metadata accessor for SeasonDownloadListItemView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E39097A8(uint64_t a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  v2 = sub_1E3C2F9A0();
  swift_retain_n();
  v3 = *sub_1E3E6011C();
  v4 = *(*v2 + 752);
  v5 = v3;
  v4(v3);
  v6 = *sub_1E3E5FACC();
  v7 = *(*v2 + 872);
  v8 = v6;
  v7(v6);

  v10 = *(*v2 + 1704);
  v11 = (v10)(v9);
  v12 = *sub_1E3E5FDEC();
  v13 = *(*v11 + 680);
  v14 = v12;
  v13(v12);

  (v10)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1696))(14);

  v18 = (v10)(v17);
  v19 = sub_1E3E5FD88();
  v20 = *v19;
  v21 = *(*v18 + 872);
  v22 = *v19;
  v21(v20);

  (v10)(v23);
  OUTLINED_FUNCTION_2_1();
  (*(v24 + 2296))(0);

  v26 = (v10)(v25);
  LOBYTE(v20) = TVAppFeature.isEnabled.getter(10, v27, v28);
  v31 = TVAppFeature.isEnabled.getter(10, v29, v30);
  v32 = 0x403F000000000000;
  if (v20)
  {
    v32 = 0x402C000000000000;
  }

  v33 = 0x4033000000000000;
  if (v31)
  {
    v33 = 0x402A000000000000;
  }

  v218[0] = v32;
  v218[1] = 0;
  v218[2] = v33;
  v218[3] = 0x4020000000000000;
  v219 = 0;
  (*(*v26 + 160))(v218);

  v34 = [objc_opt_self() isSearchEnabled];
  v10();
  OUTLINED_FUNCTION_2_1();
  v36 = *(v35 + 2056);
  if (v34)
  {
    v36(2, 0);

    (v10)(v37);
    OUTLINED_FUNCTION_2_1();
    (*(v38 + 2176))(4, 0);
  }

  else
  {
    v36(1, 0);
  }

  (v10)(v39);
  OUTLINED_FUNCTION_2_1();
  (*(v40 + 2104))(0, 0);

  v42 = (*v2 + 1728);
  v43 = *v42;
  v44 = (*v42)(v41);
  v45 = *v19;
  v46 = *(*v44 + 680);
  v47 = *v19;
  v46(v45);

  v43(v48);
  v49 = sub_1E3952CA4();
  LOBYTE(__dst[0]) = LOBYTE(v49);
  v212 = sub_1E3952C64();
  v213 = v50;
  v214 = v51;
  v215 = v52;
  v216 = 0;
  type metadata accessor for UIEdgeInsets();
  v54 = v53;
  sub_1E3C2FC98();
  v206 = v209;
  v207 = v210;
  v208 = v211;
  sub_1E3C3DE00();
  v200 = v203;
  v201 = v204;
  v202 = v205;
  sub_1E3C3DE00();
  v194 = v197;
  v195 = v198;
  v196 = v199;
  v55 = sub_1E3C3DE00();
  v188 = v191;
  v189 = v192;
  v190 = v193;
  v63 = OUTLINED_FUNCTION_0_80(v55, v56, v57, v58, v59, v60, v61, v62, v19, v43, __dst[0]);
  sub_1E3C2FCB8(v63, v64, v65, v66, v67, v68, v54, v69);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v78 = OUTLINED_FUNCTION_4_68(v70, v71, v72, v73, v74, v75, v76, v77, v172, v179, __dst[0]);
  v79(v78, 0);

  v43(v80);
  __dst[0] = 0;
  v212 = COERCE_DOUBLE(sub_1E42029F4());
  v81 = MEMORY[0x1E6980F50];
  sub_1E3C2FC98();
  *&v206 = v209;
  sub_1E3C3DE00();
  *&v200 = v203;
  sub_1E3C3DE00();
  *&v194 = v197;
  v82 = sub_1E3C3DE00();
  *&v188 = v191;
  v90 = OUTLINED_FUNCTION_0_80(v82, v83, v84, v85, v86, v87, v88, v89, v173, v180, __dst[0]);
  sub_1E3C2FCB8(v90, v91, v92, v93, v94, v95, v81, v96);
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  __dst[3] = __src[3];
  __dst[4] = __src[4];
  __dst[5] = __src[5];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v105 = OUTLINED_FUNCTION_4_68(v97, v98, v99, v100, v101, v102, v103, v104, v174, v181, __dst[0]);
  v106(v105, 95);

  v108 = v182;
  v182(v107);
  LOBYTE(__dst[0]) = 11;
  LOBYTE(v212) = 5;
  sub_1E3C2FC98();
  LOBYTE(v206) = v209;
  sub_1E3C3DE00();
  LOBYTE(v200) = v203;
  sub_1E3C3DE00();
  LOBYTE(v194) = v197;
  v109 = sub_1E3C3DE00();
  LOBYTE(v188) = v191;
  v117 = OUTLINED_FUNCTION_0_80(v109, v110, v111, v112, v113, v114, v115, v116, v175, v182, __dst[0]);
  sub_1E3C2FCB8(v117, v118, v119, v120, v121, v122, &qword_1F5D54AF8, v123);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = WORD2(__src[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v132 = OUTLINED_FUNCTION_4_68(v124, v125, v126, v127, v128, v129, v130, v131, v176, v183, __dst[0]);
  v133(v132, 97);

  v108(v134);
  __dst[0] = 0;
  v212 = *v177;
  v135 = v212;
  v136 = sub_1E3755B54();
  v137 = *&v135;
  sub_1E3C2FC98();
  *&v206 = v209;
  sub_1E3C3DE00();
  *&v200 = v203;
  sub_1E3C3DE00();
  *&v194 = v197;
  v138 = sub_1E3C3DE00();
  *&v188 = v191;
  v146 = OUTLINED_FUNCTION_0_80(v138, v139, v140, v141, v142, v143, v144, v145, v177, v184, __dst[0]);
  sub_1E3C2FCB8(v146, v147, v148, v149, v150, v151, v136, v152);
  v153 = __src[0];
  v154 = __src[1];
  v155 = __src[2];
  v156 = __src[3];
  v157 = __src[4];
  v158 = __src[5];
  __dst[0] = __src[0];
  __dst[1] = __src[1];
  __dst[2] = __src[2];
  __dst[3] = __src[3];
  __dst[4] = __src[4];
  __dst[5] = __src[5];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v167 = OUTLINED_FUNCTION_4_68(v159, v160, v161, v162, v163, v164, v165, v166, v178, v185, __dst[0]);
  v168(v167, 21);

  v169 = v186();
  v170 = [objc_opt_self() configurationWithTextStyle_];
  (*(*v169 + 1952))(v170);

  return v2;
}

void sub_1E390A1A4()
{
  if ([objc_opt_self() sharedInstance])
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_82_1(23, v1);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_24_22();
    v3 = 0xE000000000000000;
    if (!v4)
    {
      v3 = v0;
    }

    qword_1EE28AE88 = v2;
    unk_1EE28AE90 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_1E390A224()
{
  if ([objc_opt_self() sharedInstance])
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_82_1(27, v1);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_24_22();
    v3 = 0xE000000000000000;
    if (!v4)
    {
      v3 = v0;
    }

    qword_1EE28AEA0 = v2;
    *algn_1EE28AEA8 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_1E390A2A4()
{
  if ([objc_opt_self() sharedInstance])
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_82_1(20, v1);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_24_22();
    v3 = 0xE000000000000000;
    if (!v4)
    {
      v3 = v0;
    }

    qword_1EE28AEB8 = v2;
    unk_1EE28AEC0 = v3;
  }

  else
  {
    __break(1u);
  }
}

void sub_1E390A324()
{
  if ([objc_opt_self() sharedInstance])
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_82_1(20, v1);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_24_22();
    v3 = 0xE000000000000000;
    if (!v4)
    {
      v3 = v0;
    }

    qword_1EE28AED0 = v2;
    *algn_1EE28AED8 = v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E390A3A4()
{
  sub_1E3A62EB4();
}

uint64_t sub_1E390A414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_selectedOption;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DAF0, &unk_1E42AA630);
  __swift_storeEnumTagSinglePayload(v3 + v6, 1, 1, v7);
  v8 = (v3 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_textEntry);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v3 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___menuTableView) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___submitButton) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___cancelButton) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_additionalParameters) = a1;
  *(v3 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_searchRacManager) = a2;

  v9 = sub_1E3A62F14();
  v10 = *(v9 + 1);
  v11 = *(v9 + 2);
  v12 = v3 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_racConfiguration;
  *v12 = *v9;
  *(v12 + 8) = v10;
  *(v12 + 16) = v11;
  v13 = type metadata accessor for LoadingControllerManager();

  v14 = OUTLINED_FUNCTION_165();
  *(v3 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_loadingManager) = sub_1E3F68068(v14, v15);
  v19 = type metadata accessor for SearchRACViewControllerIOS(0);
  OUTLINED_FUNCTION_25();
  objc_msgSendSuper2(v16, v17, v3, v19);
  OUTLINED_FUNCTION_50();

  return v13;
}

uint64_t type metadata accessor for SearchRACViewControllerIOS(uint64_t a1)
{
  result = qword_1EE2951C0;
  if (!qword_1EE2951C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E390A58C()
{
  v1 = OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_selectedOption;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DAF0, &unk_1E42AA630);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_textEntry);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___menuTableView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___submitButton) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___cancelButton) = 0;
  OUTLINED_FUNCTION_19_37();
  __break(1u);
}

id sub_1E390A648()
{
  v1 = OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___menuTableView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___menuTableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___menuTableView);
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x1E69DD020]);
    v5 = OUTLINED_FUNCTION_5_8();
    v8 = [v6 v7];
    [v8 setDelegate_];
    [v8 setDataSource_];
    v9 = *(v0 + v1);
    *(v0 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1E390A6EC()
{
  v1 = OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___submitButton;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___submitButton];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___submitButton];
  }

  else
  {
    v4 = v0;
    sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
    if (qword_1EE28AEC8 != -1)
    {
      swift_once();
    }

    v5 = v0;
    OUTLINED_FUNCTION_34();
    v6 = sub_1E4206884();
    v7 = *&v0[v1];
    *&v4[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1E390A7D8()
{
  v1 = OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___cancelButton;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___cancelButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___cancelButton);
  }

  else
  {
    v4 = sub_1E390A83C(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1E390A83C(uint64_t a1)
{
  v4 = sub_1E4207014();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  sub_1E4206FF4();
  if (qword_1EE28AEB0 != -1)
  {
    swift_once();
  }

  sub_1E4207004();
  sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
  sub_1E3834BC8();
  sub_1E4206FE4();
  sub_1E4206FD4();
  sub_1E4206FB4();
  OUTLINED_FUNCTION_5_8();
  sub_1E4206FC4();
  sub_1E3280A90(0, &qword_1ECF2B990, 0x1E69DC738);
  (*(v6 + 16))(v2, v1, v4);
  v9 = sub_1E4207024();
  v10 = [v9 imageView];
  if (v10)
  {
    v11 = v10;
    [v10 setContentMode_];
  }

  [v9 addTarget:a1 action:sel_cancelButtonTapped forControlEvents:64];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

  (*(v6 + 8))(v1, v4);
  return v12;
}

void sub_1E390AA80()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for SearchRACViewControllerIOS(0);
  objc_msgSendSuper2(&v18, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1E390A648();
    OUTLINED_FUNCTION_26_4(v3, sel_addSubview_);

    v4 = [v0 navigationItem];
    v5 = sub_1E390A6EC();
    OUTLINED_FUNCTION_26_4(v5, sel_setRightBarButtonItem_);

    v6 = [v0 navigationItem];
    v7 = sub_1E390A7D8();
    OUTLINED_FUNCTION_26_4(v7, sel_setLeftBarButtonItem_);

    v8 = [v0 navigationItem];
    if (_MergedGlobals_279 != -1)
    {
      swift_once();
    }

    v9 = sub_1E4205ED4();
    OUTLINED_FUNCTION_26_4(v9, sel_setTitle_);

    v10 = *&v0[OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___menuTableView];
    type metadata accessor for ConcernTextCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = v10;
    OUTLINED_FUNCTION_5_67();
    v13 = sub_1E4205ED4();
    [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v13];

    v19[3] = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    v19[0] = v0;
    objc_allocWithZone(MEMORY[0x1E69DD060]);
    v14 = v0;
    v15 = sub_1E3814AF0(v19, sel_dismissKeyboard);
    [v15 setCancelsTouchesInView_];
    v16 = [v14 view];
    if (v16)
    {
      v17 = v16;
      [v16 addGestureRecognizer_];

      sub_1E390B240();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E390AD40(char a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for SearchRACViewControllerIOS(0);
  objc_msgSendSuper2(&v12, sel_viewWillAppear_, a1 & 1);
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  OUTLINED_FUNCTION_41_21(v4, v5, v6, v7, *MEMORY[0x1E69DE080]);

  v8 = [v3 defaultCenter];
  OUTLINED_FUNCTION_41_21(v8, v9, v10, v11, *MEMORY[0x1E69DE078]);
}

void sub_1E390AE60()
{
  v1 = v0;
  v2 = sub_1E41FDF24();
  if (v2)
  {
    v3 = v2;
    v8 = sub_1E4205F14();
    sub_1E4207414();
    sub_1E375D7E8(v3, &v10, v9);

    sub_1E375D84C(v9);
    if (v11)
    {
      sub_1E3280A90(0, &unk_1EE23AE30, 0x1E696B098);
      if (swift_dynamicCast())
      {
        [v8 CGRectValue];
        CGRectGetHeight(v12);
        v4 = sub_1E390A648();
        [v4 contentInset];

        v5 = OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___menuTableView;
        v6 = *(v1 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS____lazy_storage___menuTableView);
        [v6 contentInset];
        [v6 setContentInset_];

        v7 = *(v1 + v5);
        [v7 scrollIndicatorInsets];
        [v7 setScrollIndicatorInsets_];
      }
    }

    else
    {
      sub_1E325F6F0(&v10, &unk_1ECF296E0, &unk_1E4298030);
    }
  }
}

id sub_1E390B0E0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SearchRACViewControllerIOS(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_1E390B240()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  sub_1E383C8A8();
  OUTLINED_FUNCTION_8();
  (*(v5 + 232))(v0, 0, 0);
  sub_1E4206474();
  v6 = OUTLINED_FUNCTION_28_10();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  sub_1E4206434();
  v10 = v0;
  v11 = sub_1E4206424();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v14 = OUTLINED_FUNCTION_165();
  sub_1E376FE58(v14, v15, v4, v16, v17);

  return result;
}

uint64_t sub_1E390B364()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  sub_1E4206434();
  v0[3] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v3 = sub_1E42063B4();
  v0[4] = v3;
  v0[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E390B3F4, v3, v2);
}

uint64_t sub_1E390B3F4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_8();
  v4 = (*(v1 + 224) + **(v1 + 224));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1E390B50C;

  return v4();
}

uint64_t sub_1E390B50C()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  *(v7 + 72) = v6;
  *(v7 + 56) = v8;
  *(v7 + 64) = v9;

  v10 = *(v1 + 40);
  v11 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1E390B62C, v11, v10);
}

uint64_t sub_1E390B62C()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 16);

  v5 = v4 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_racConfiguration;
  *v5 = v3;
  *(v5 + 8) = v2;
  *(v5 + 16) = v1;

  OUTLINED_FUNCTION_8();
  (*(v6 + 240))();
  v7 = sub_1E390A648();
  [v7 reloadData];

  if (!*(*(v5 + 16) + 16))
  {
    [*(v0 + 16) dismissViewControllerAnimated:1 completion:0];
  }

  OUTLINED_FUNCTION_54();

  return v8();
}

uint64_t sub_1E390B728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v24 - v10;
  sub_1E37E93E8(a3, v24 - v10, &unk_1ECF2C400, &qword_1E429ABE0);
  v12 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F6F0(v11, &unk_1ECF2C400, &qword_1E429ABE0);
  }

  else
  {
    sub_1E4206464();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1E42063B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1E4205FB4() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_1E325F6F0(a3, &unk_1ECF2C400, &qword_1E429ABE0);

      return v22;
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

  sub_1E325F6F0(a3, &unk_1ECF2C400, &qword_1E429ABE0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void sub_1E390BA04()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  [v1 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  Width = CGRectGetWidth(v25);
  v12 = [v0 view];
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v26.origin.x = v15;
  v26.origin.y = v17;
  v26.size.width = v19;
  v26.size.height = v21;
  Height = CGRectGetHeight(v26);
  v23 = sub_1E390A648();
  [v23 setFrame_];
}

void sub_1E390BB74()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2DAF8, &unk_1E42AA640);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  type metadata accessor for SearchRACMenuOption(0);
  OUTLINED_FUNCTION_0_10();
  v34 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_78();
  v19 = OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_selectedOption;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E37E93E8(&v2[v19], v9, &unk_1ECF2DAF8, &unk_1E42AA640);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DAF0, &unk_1E42AA630);
  if (__swift_getEnumTagSinglePayload(v9, 1, v20))
  {
    sub_1E325F6F0(v9, &unk_1ECF2DAF8, &unk_1E42AA640);
    sub_1E390C3C0();
  }

  else
  {
    sub_1E390E2C8(v9, v17);
    sub_1E325F6F0(v9, &unk_1ECF2DAF8, &unk_1E42AA640);
    sub_1E390E32C(v17, v1);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1E42074B4();
    MEMORY[0x1E69109E0](0xD000000000000027, 0x80000001E42676A0);
    sub_1E4207614();
    OUTLINED_FUNCTION_23();
    MEMORY[0x1E69109E0](0xD000000000000011);
    v21 = *&v2[OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_textEntry];
    v22 = *&v2[OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_textEntry + 8];

    MEMORY[0x1E69109E0](v21, v22);

    sub_1E390C3C0();

    v23 = sub_1E4206474();
    v24 = v35;
    __swift_storeEnumTagSinglePayload(v35, 1, 1, v23);
    sub_1E390E2C8(v1, v14);
    sub_1E4206434();
    v25 = v2;
    v26 = sub_1E4206424();
    v27 = (*(v34 + 80) + 40) & ~*(v34 + 80);
    v28 = swift_allocObject();
    v29 = MEMORY[0x1E69E85E0];
    v28[2] = v26;
    v28[3] = v29;
    v28[4] = v25;
    sub_1E390E32C(v14, v28 + v27);
    v30 = OUTLINED_FUNCTION_165();
    sub_1E390B728(v30, v31, v24, v32, v28);

    [v25 dismissViewControllerAnimated:1 completion:0];
    sub_1E390E548(v1);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E390BF2C()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v5 = sub_1E42063B4();
  v0[6] = v5;
  v0[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E390BFC0, v5, v4);
}

uint64_t sub_1E390BFC0()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = (v1 + *(type metadata accessor for SearchRACMenuOption(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v2 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_textEntry);
  v7 = *(v2 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_textEntry + 8);
  v0[8] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_additionalParameters);
  OUTLINED_FUNCTION_8();
  v10 = *(v9 + 232);

  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  v0[9] = v11;
  *v11 = v0;
  v11[1] = sub_1E390C144;

  return v13(v4, v5, v6, v7, v8);
}

uint64_t sub_1E390C144()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  *(v7 + 80) = v6;

  v8 = *(v1 + 56);
  v9 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E390C284, v9, v8);
}

uint64_t sub_1E390C284()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);

  *v2 = v1;
  OUTLINED_FUNCTION_54();

  return v3();
}

id sub_1E390C32C()
{
  OUTLINED_FUNCTION_23();
  sub_1E390C3C0();

  return [v0 dismissViewControllerAnimated:1 completion:0];
}

void sub_1E390C3C0()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E324FBDC();
  (*(v2 + 16))(v6, v7, v0);

  v8 = sub_1E41FFC94();
  v9 = sub_1E42067D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v10 = 136315138;
    v11 = OUTLINED_FUNCTION_74();
    *(v10 + 4) = sub_1E3270FC8(v11, v12, v13);
    _os_log_impl(&dword_1E323F000, v8, v9, "RACViewController - %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E69143B0](v14, -1, -1);
    MEMORY[0x1E69143B0](v10, -1, -1);
  }

  (*(v2 + 8))(v6, v0);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E390C5B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 1;
  }

  else
  {
    return *(*(v2 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_racConfiguration + 16) + 16);
  }
}

id sub_1E390C600(void *a1, uint64_t a2, uint64_t a3)
{
  result = [a1 text];
  if (result)
  {
    v7 = result;
    v8 = sub_1E4205ED4();
    v9 = [v7 stringByReplacingCharactersInRange:a2 withString:{a3, v8}];

    sub_1E4205F14();
    OUTLINED_FUNCTION_34();
    v10 = sub_1E4206024();

    return (v10 < *(v3 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_racConfiguration + 8));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E390C76C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  if (qword_1EE28AE98 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE28AEA0;

  return v2;
}

id sub_1E390C86C(void *a1)
{
  result = sub_1E41FE854();
  if (result != 1)
  {

    return [a1 rowHeight];
  }

  return result;
}

void sub_1E390C9C0()
{
  OUTLINED_FUNCTION_31_1();
  v101 = v0;
  v4 = v3;
  v99 = v5;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DB08, &qword_1E42AA660);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v98 = &v90 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DB10, &qword_1E42AA668);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v95 = v10 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v90 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v90 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2DAF8, &unk_1E42AA640);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v90 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_78();
  v23 = type metadata accessor for SearchRACMenuOption(0);
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v90 - v31;
  v33 = objc_allocWithZone(MEMORY[0x1E69DD028]);
  v34 = OUTLINED_FUNCTION_165();
  v100 = sub_1E390E254(v34, v35, 0);
  if (sub_1E41FE854())
  {
    v36 = v101;
    OUTLINED_FUNCTION_5_67();
    v37 = sub_1E4205ED4();
    v38 = sub_1E41FE7E4();
    v39 = [v99 dequeueReusableCellWithIdentifier:v37 forIndexPath:v38];

    type metadata accessor for ConcernTextCell();
    v40 = swift_dynamicCastClass();
    if (v40)
    {
      v41 = v40;
      v42 = OBJC_IVAR____TtC8VideosUI15ConcernTextCell_textView;
      [*(v40 + OBJC_IVAR____TtC8VideosUI15ConcernTextCell_textView) setDelegate_];
      v43 = *(v41 + v42);
      [v43 setTag_];

      v44 = *(v41 + v42);
      sub_1E390D124();

      v45 = *(v41 + v42);
      v46 = *(v36 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_textEntry);
      v47 = *(v36 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_textEntry + 8);

      sub_1E390E860(v46, v47, v45);
      if (qword_1EE28AEE0 != -1)
      {
        OUTLINED_FUNCTION_1_89(&qword_1EE28AEE0);
      }

      sub_1E390D234();
    }

    else
    {
    }

    goto LABEL_28;
  }

  v91 = v21;
  v92 = v2;
  v90 = v29;
  v93 = v23;
  v94 = v16;
  v48 = v101;
  v49 = *(v101 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_racConfiguration + 16);

  v50 = sub_1E41FE824();
  if ((v50 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v50 < *(v49 + 16))
  {
    v51 = v4;
    v52 = v32;
    sub_1E390E2C8(v49 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v50, v32);

    v53 = OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_selectedOption;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E37E93E8(v48 + v53, v1, &unk_1ECF2DAF8, &unk_1E42AA640);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DAF0, &unk_1E42AA630);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v99);
    v55 = OUTLINED_FUNCTION_74();
    v56 = v52;
    sub_1E325F6F0(v55, v57, &unk_1E42AA640);
    if (EnumTagSinglePayload == 1)
    {
      v58 = v99;
      v59 = v99[12];
      v60 = v91;
      sub_1E390E2C8(v56, v91);
      sub_1E41FE874();
      OUTLINED_FUNCTION_2();
      (*(v61 + 16))(v60 + v59, v51);
      __swift_storeEnumTagSinglePayload(v60, 0, 1, v58);
      swift_beginAccess();
      sub_1E390E8C4(v60, v48 + v53);
      swift_endAccess();
    }

    v62 = v100;
    v63 = [v100 textLabel];
    v65 = v93;
    v64 = v94;
    if (v63)
    {
      v66 = v63;
      v67 = sub_1E4205ED4();
      OUTLINED_FUNCTION_26_4(v67, sel_setText_);
    }

    v68 = v92;
    sub_1E37E93E8(v48 + v53, v92, &unk_1ECF2DAF8, &unk_1E42AA640);
    v69 = 1;
    v70 = __swift_getEnumTagSinglePayload(v68, 1, v99);
    v71 = v96;
    if (!v70)
    {
      sub_1E390E2C8(v68, v64);
      v69 = 0;
    }

    sub_1E325F6F0(v68, &unk_1ECF2DAF8, &unk_1E42AA640);
    __swift_storeEnumTagSinglePayload(v64, v69, 1, v65);
    v72 = v97;
    sub_1E390E2C8(v56, v97);
    __swift_storeEnumTagSinglePayload(v72, 0, 1, v65);
    v73 = *(v71 + 48);
    v74 = v98;
    sub_1E37E93E8(v64, v98, &qword_1ECF2DB10, &qword_1E42AA668);
    sub_1E37E93E8(v72, v74 + v73, &qword_1ECF2DB10, &qword_1E42AA668);
    OUTLINED_FUNCTION_44_3(v74);
    if (v77)
    {
      OUTLINED_FUNCTION_43_15(v72);
      OUTLINED_FUNCTION_43_15(v64);
      OUTLINED_FUNCTION_44_3(v74 + v73);
      if (v77)
      {
        sub_1E325F6F0(v74, &qword_1ECF2DB10, &qword_1E42AA668);
        v75 = 3;
LABEL_27:
        [v62 setAccessoryType_];
        sub_1E390E548(v56);
LABEL_28:
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    else
    {
      v76 = v95;
      sub_1E37E93E8(v74, v95, &qword_1ECF2DB10, &qword_1E42AA668);
      OUTLINED_FUNCTION_44_3(v74 + v73);
      if (!v77)
      {
        v78 = v74 + v73;
        v79 = v90;
        sub_1E390E32C(v78, v90);
        sub_1E390E934();
        v80 = sub_1E4205E84();
        sub_1E390E548(v79);
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v81, v82, v83);
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v84, v85, v86);
        sub_1E390E548(v76);
        OUTLINED_FUNCTION_82();
        sub_1E325F6F0(v87, v88, v89);
        if (v80)
        {
          v75 = 3;
        }

        else
        {
          v75 = 0;
        }

        goto LABEL_27;
      }

      OUTLINED_FUNCTION_43_15(v72);
      OUTLINED_FUNCTION_43_15(v64);
      sub_1E390E548(v76);
    }

    sub_1E325F6F0(v74, &qword_1ECF2DB08, &qword_1E42AA660);
    v75 = 0;
    goto LABEL_27;
  }

  __break(1u);
}

void sub_1E390D124()
{
  v1 = v0;
  v2 = [v0 textColor];
  v3 = v2;
  if (qword_1EE28AEF8 == -1)
  {
    if (!v2)
    {
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_50(&qword_1EE28AEF8);
    if (!v3)
    {
      return;
    }
  }

  v4 = qword_1EE28AF00;
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  v5 = v4;
  OUTLINED_FUNCTION_34();
  v6 = sub_1E4206F64();

  if (v6)
  {
    sub_1E390E860(0, 0xE000000000000000, v1);
    if (qword_1EE28AEE8 != -1)
    {
      OUTLINED_FUNCTION_8_45(&qword_1EE28AEE8);
    }

    v7 = qword_1EE28AEF0;

    [v1 setTextColor_];
  }
}