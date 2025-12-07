double sub_1B7A1EE48(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((((v9 + 143) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return result;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v19 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 40) = 0;
          result = 0.0;
          *(v19 + 24) = 0u;
          *(v19 + 8) = 0u;
          *(v19 + 48) = 0;
          *v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *v19 = 0;
          *(v19 + 8) = 0;
          *(v19 + 16) = 0;
          *(v19 + 24) = 4 * -a2;
          *(v19 + 32) = 0;
          *(v19 + 40) = 0;
          *(v19 + 48) = 0;
        }
      }

      else
      {
        v18 = *(v6 + 56);

        v18();
      }

      return result;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((((v9 + 143) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v17 = (v15 >> 8) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v17;
      }

      else
      {
        *&a1[v10] = v17;
      }

      return result;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v17;
  }

  return result;
}

void sub_1B7A1F068(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B7A1F0B8(uint64_t a1)
{
  if (!qword_1EBA48730)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_1B7A970E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA48730);
    }
  }
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B7A1F124(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1B7A1F16C(uint64_t result, int a2, int a3)
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
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7A1F1D0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1B7A1F1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3[7];
  v15[0] = v3[2];
  v7 = v15[0];
  v15[1] = v8;
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = v11;
  v15[5] = v12;
  v13 = *(type metadata accessor for ShelfGrid(0, v15) - 8);
  return sub_1B7A1CB84(a1, a2, (v3 + ((*(v13 + 64) + ((*(v13 + 80) + 64) & ~*(v13 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), v7, v8, v9, v10, a3, v11, v12);
}

uint64_t sub_1B7A1F384@<X0>(uint64_t a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v13[0] = v1[2];
  v3 = v13[0];
  v13[1] = v4;
  v13[2] = v5;
  v13[3] = v6;
  v13[4] = v7;
  v13[5] = v8;
  v9 = *(type metadata accessor for ShelfGrid(0, v13) - 8);
  v10 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B7A1A400(v1 + v10, *(v1 + v11), v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8), *(v1 + ((v11 + 71) & 0xFFFFFFFFFFFFFFF8)), v3, v4, v5, a1, v6, v7, v8);
}

uint64_t sub_1B7A1F4C4(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_1B7A1F4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48758;
  if (!qword_1EBA48758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48758);
  }

  return result;
}

uint64_t sub_1B7A1F52C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48760, &unk_1B7AA35B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A1F59C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3[7];
  v16[0] = v3[2];
  v7 = v16[0];
  v16[1] = v8;
  v16[2] = v9;
  v16[3] = v10;
  v16[4] = v11;
  v16[5] = v12;
  v13 = *(type metadata accessor for ShelfGrid(0, v16) - 8);
  v14 = ((*(v13 + 80) + 64) & ~*(v13 + 80)) + *(v13 + 64);
  return sub_1B7A1B980(a1, a2, (v3 + ((v14 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v14 + 63) & 0xFFFFFFFFFFFFFFF8)), v7, v8, v9, a3, v10, v11, v12);
}

uint64_t sub_1B7A1F708(uint64_t result, uint64_t (*a2)(void *, uint64_t *))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  if (result)
  {
    v5 = sub_1B7A9A690();
    *(v5 + 16) = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = v5 + 32;
  v8 = 0;
  v7[0] = v5 + 32;
  v7[1] = v4;
  result = a2(v7, &v8);
  if (v2)
  {
    if (v8 <= v4)
    {
      if (!v7[0])
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      if (v6 == v7[0])
      {
        *(v5 + 16) = v8;

        return v5;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v8 > v4)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7[0])
  {
    if (v6 == v7[0])
    {
      *(v5 + 16) = v8;
      return v5;
    }

    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1B7A1F8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48770;
  if (!qword_1EBA48770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48770);
  }

  return result;
}

uint64_t sub_1B7A1F918(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1B7A991B0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_1B7A9A7E0();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v4 + 16))(v6, a1, v3);
  sub_1B7A9A760();
  v11 = sub_1B7A9A750();
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v13 = (v5 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v11;
  *(v14 + 24) = v15;
  (*(v4 + 32))(v14 + v12, v6, v3);
  *(v14 + v13) = ObjectType;
  sub_1B79A9B34(0, 0, v9, &unk_1B7AA3698, v14);
}

uint64_t sub_1B7A1FB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1B7A9A760();
  *(v4 + 24) = sub_1B7A9A750();
  v6 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B7A1FBC4, v6, v5);
}

uint64_t sub_1B7A1FBC4()
{
  v1 = *(v0 + 16);

  sub_1B7A20454(v1);
  v2 = *(v0 + 8);

  return v2();
}

void *sub_1B7A1FC2C()
{
  result = sub_1B7990F54(MEMORY[0x1E69E7CC0]);
  off_1EBA48778 = result;
  return result;
}

BOOL sub_1B7A1FC54(void **a1)
{
  v1 = *a1;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [v1 activationState];

  return v2 == 0;
}

uint64_t sub_1B7A1FCF8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_1B7A1FDB4(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [v3 windows];
  sub_1B79596F8(0, &qword_1EDC10A20, 0x1E69DD2E8);
  v5 = sub_1B7A9A640();

  *a2 = v5;
}

void *sub_1B7A1FEEC@<X0>(void *a1@<X8>)
{
  v4.receiver = objc_allocWithZone(v1);
  v4.super_class = v1;
  result = objc_msgSendSuper2(&v4, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_1B7A1FF58(uint64_t a1)
{
  v4 = *(sub_1B7A991B0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B798D338;

  return sub_1B7A1FB2C(a1, v6, v7, v1 + v5);
}

id sub_1B7A20088@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B7A2009C(uint64_t a1)
{
  v2 = sub_1B7A99000();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1B7A96BF0();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = _s21PopupHUDConfigurationVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EBA45B70 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = off_1EBA48778;
  if (*(off_1EBA48778 + 2) && (v8 = sub_1B7994C28(a1), (v9 & 1) != 0))
  {
    v10 = v7[7] + 16 * v8;
    v11 = *v10;
    v12 = *(v10 + 8);
    swift_endAccess();
    v11;
    v12;
  }

  else
  {
    swift_endAccess();
    *v6 = sub_1B7A98DB0();
    v6[1] = v13;
    _s13PopupHUDModelCMa(0);
    v14 = swift_allocObject();
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1B7A96EE0();
    v15 = MEMORY[0x1E69E7CC0];
    v29 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48790, &unk_1B7AA36B0);
    sub_1B7A96EE0();
    v6[2] = v14;
    v6[3] = v15;
    sub_1B7A96BE0();
    sub_1B7A98FF0();
    sub_1B7A99AF0();
    v16 = _s22PopupHUDViewControllerCMa(0);
    v17 = objc_allocWithZone(v16);
    sub_1B7A20DF8(v6, v17 + OBJC_IVAR____TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer22PopupHUDViewController_config, v18);
    v28.receiver = v17;
    v28.super_class = v16;
    v19 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
    sub_1B7A20E5C(v6, v20);
    v21 = [objc_allocWithZone(_s25MetricsVisualizerUIWindowCMa()) initWithWindowScene_];
    [v21 setHidden_];
    v22 = v19;
    [v21 setRootViewController_];
    v23 = [v22 view];

    if (v23)
    {
      [v21 addSubview_];

      swift_beginAccess();
      v24 = v22;
      v25 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = off_1EBA48778;
      off_1EBA48778 = 0x8000000000000000;
      sub_1B79A0874(v25, v24, a1, isUniquelyReferenced_nonNull_native);
      off_1EBA48778 = v27;
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1B7A20454(uint64_t a1)
{
  v45 = a1;
  v1 = sub_1B7A9A280();
  v44 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v43 = v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 connectedScenes];

  v5 = sub_1B79596F8(0, &qword_1EDC0FC58, 0x1E69DCE70);
  sub_1B7A20D28();
  v6 = sub_1B7A9A8A0();

  v49 = v5;
  if ((v6 & 0xC000000000000001) != 0)
  {

    sub_1B7A9ABC0();
    sub_1B7A9A8D0();
    v7 = v72;
    v8 = v73;
    v9 = v74;
    v10 = v75;
    v11 = v76;
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v8 = v6 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);

    v10 = 0;
    v7 = v6;
  }

  v15 = 0;
  v16 = (v9 + 64) >> 6;
  v52 = v10;
  v51 = v7;
  v50 = v16;
  v48 = v1;
  v47 = v6;
  v46 = v9;
LABEL_24:
  v17 = 0;
  if (v7 < 0)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v26 = v52;
    if (!v11)
    {
      break;
    }

    v10 = v52;
LABEL_35:
    v27 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v25 = *(*(v7 + 48) + ((v10 << 9) | (8 * v27)));
    if (!v25)
    {
LABEL_55:
      v7 = v51;
      goto LABEL_56;
    }

    while (2)
    {
      sub_1B7A9A760();
      sub_1B7A9A750();
      sub_1B7A9A710();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v28 = [v25 activationState];

      if (v28)
      {

        goto LABEL_44;
      }

      sub_1B7A9A750();
      sub_1B7A9A710();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        goto LABEL_44;
      }

      v30 = v29;

      sub_1B7A9A750();
      sub_1B7A9A710();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v31 = [v30 windows];
      sub_1B79596F8(0, &qword_1EDC10A20, 0x1E69DD2E8);
      v32 = sub_1B7A9A640();

      v15 = v32;
      v7 = v51;
      v16 = v50;
      if (!v32)
      {
        goto LABEL_24;
      }

      v42 = v8;
      v17 = 0;
      v18 = v32 & 0xFFFFFFFFFFFFFF8;
      if (v32 >= 0)
      {
        v19 = v32 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        v19 = v32;
      }

      v41[1] = v19;
      v53 = v32 & 0xC000000000000001;
      if (v32 >> 62)
      {
        goto LABEL_21;
      }

      while (v17 != *(v18 + 16))
      {
        while (1)
        {
          if (v53)
          {
            v20 = v15;
            v21 = MEMORY[0x1B8CABED0](v17, v15);
          }

          else
          {
            if (v17 >= *(v18 + 16))
            {
              goto LABEL_62;
            }

            v20 = v15;
            v21 = *(v15 + 8 * v17 + 32);
          }

          v22 = v21;
          if (__OFADD__(v17, 1))
          {
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
            return;
          }

          sub_1B7A9A760();
          sub_1B7A9A750();
          sub_1B7A9A710();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v23 = [v22 isKeyWindow];

          if (v23)
          {
            v55 = v51;
            v56 = v42;
            v57 = v46;
            v58 = v10;
            v59 = v11;
            v60 = sub_1B7A1FC54;
            v61 = 0;
            v62 = sub_1B7A1FCF8;
            v63 = 0;
            v64 = sub_1B7A20078;
            v65 = 0;
            v66 = sub_1B7A20088;
            v67 = 0;
            v68 = sub_1B7A1FDB4;
            v69 = 0;
            v70 = v20;
            v71 = v17 + 1;
            sub_1B7A20D90(&v55);

            goto LABEL_57;
          }

          ++v17;
          v15 = v20;
          if (!(v20 >> 62))
          {
            break;
          }

LABEL_21:
          if (v17 == sub_1B7A9AD90())
          {
            goto LABEL_28;
          }
        }
      }

LABEL_28:
      v8 = v42;
LABEL_44:
      v7 = v51;
      v16 = v50;
      if (v51 < 0)
      {
LABEL_25:
        v24 = sub_1B7A9ABD0();
        if (!v24)
        {
          goto LABEL_55;
        }

        v54 = v24;
        swift_dynamicCast();
        v25 = v55;
        if (!v55)
        {
          goto LABEL_55;
        }

        continue;
      }

      break;
    }
  }

  while (1)
  {
    v10 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_61;
    }

    if (v10 >= v16)
    {
      break;
    }

    v11 = *(v8 + 8 * v10);
    ++v26;
    if (v11)
    {
      v52 = v10;
      goto LABEL_35;
    }
  }

  v11 = 0;
  if (v16 <= v52 + 1)
  {
    v33 = v52 + 1;
  }

  else
  {
    v33 = v16;
  }

  v10 = v33 - 1;
LABEL_56:
  v55 = v7;
  v56 = v8;
  v57 = v46;
  v58 = v10;
  v59 = v11;
  v60 = sub_1B7A1FC54;
  v61 = 0;
  v62 = sub_1B7A1FCF8;
  v63 = 0;
  v64 = sub_1B7A20078;
  v65 = 0;
  v66 = sub_1B7A20088;
  v67 = 0;
  v68 = sub_1B7A1FDB4;
  v69 = 0;
  v70 = v15;
  v71 = v17;
  sub_1B7A20D90(&v55);

  v22 = 0;
LABEL_57:
  v34 = v48;
  v35 = [v22 windowScene];

  if (v35)
  {
    v36 = v35;
    sub_1B7A2009C(v36);
    v38 = v37;

    swift_beginAccess();
    sub_1B7A59A5C(v45);
    swift_endAccess();
  }

  else
  {
    v40 = v43;
    sub_1B7A9A240();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98C40();
    sub_1B7A99E60();

    (*(v44 + 8))(v40, v34);
  }
}

unint64_t sub_1B7A20D28()
{
  result = qword_1EBA48780;
  if (!qword_1EBA48780)
  {
    sub_1B79596F8(255, &qword_1EDC0FC58, 0x1E69DCE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48780);
  }

  return result;
}

uint64_t sub_1B7A20D90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48788, &unk_1B7AA36A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7A20DF8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = _s21PopupHUDConfigurationVMa(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7A20E5C(uint64_t a1, double a2)
{
  v3 = _s21PopupHUDConfigurationVMa(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ComponentMenuContent(uint64_t a1)
{
  result = qword_1EBA487A0;
  if (!qword_1EBA487A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7A20F2C(uint64_t a1)
{
  sub_1B7A21010(319);
  if (v1 <= 0x3F)
  {
    sub_1B7A21068();
    if (v2 <= 0x3F)
    {
      sub_1B797CE50(319, qword_1EDC0EC28, &qword_1EBA47828, &qword_1B7AA0240);
      if (v3 <= 0x3F)
      {
        sub_1B797CE50(319, &qword_1EBA487C0, &qword_1EBA487C8, &qword_1B7AA36F0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7A21010(uint64_t a1)
{
  if (!qword_1EBA487B0)
  {
    sub_1B7A9A0D0();
    v1 = sub_1B7A9AB60();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA487B0);
    }
  }
}

unint64_t sub_1B7A21068()
{
  result = qword_1EBA487B8;
  if (!qword_1EBA487B8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBA487B8);
  }

  return result;
}

uint64_t sub_1B7A210E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t *))
{
  v5 = a2;
  a3(&v4, a1, &v5);
  return v4;
}

uint64_t sub_1B7A21128()
{
  v1 = v0;
  v2 = type metadata accessor for ComponentMenuContent(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48798, &unk_1B7AA36C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  sub_1B7957820(v1, v14 - v6, &qword_1EBA48798, &unk_1B7AA36C0);
  v8 = sub_1B7A9A0D0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B7957888(v7, &qword_1EBA48798, &unk_1B7AA36C0);
    v10 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v10 = sub_1B7A9A0C0();
    (*(v9 + 8))(v7, v8);
  }

  v14[1] = v10;
  sub_1B7A22F34(v1, v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_1B7A22F98(v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA487D0, &qword_1B7AA3748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA487D8, &qword_1B7AA3750);
  sub_1B797EC34(&qword_1EBA487E0, &qword_1EBA487D0, &qword_1B7AA3748, MEMORY[0x1E69E6338]);
  sub_1B7A2307C();
  sub_1B7A234E0(&qword_1EBA48860, MEMORY[0x1E69AB5E0], MEMORY[0x1E69AB5E8]);
  return sub_1B7A988D0();
}

uint64_t sub_1B7A21410@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v106 = a2;
  v120 = a1;
  v126 = a3;
  v102 = sub_1B7A97880();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48818, &qword_1B7AA3768);
  MEMORY[0x1EEE9AC00](v119);
  v105 = &v99 - v4;
  v114 = sub_1B7A9A0D0();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v104 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48868, &qword_1B7AA3790);
  MEMORY[0x1EEE9AC00](v123);
  v125 = (&v99 - v6);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48870, &qword_1B7AA3798);
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v99 - v7;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA487F8, &qword_1B7AA3758);
  MEMORY[0x1EEE9AC00](v124);
  v118 = &v99 - v8;
  v108 = sub_1B7A9A0B0();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v103 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48878, &unk_1B7AA37A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v99 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v111 = &v99 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48880, &qword_1B7AA37B0);
  MEMORY[0x1EEE9AC00](v109);
  v16 = &v99 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48808, &qword_1B7AA3760);
  MEMORY[0x1EEE9AC00](v115);
  v110 = &v99 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v99 - v19;
  v127 = sub_1B7A9A090();
  v121 = *(v127 - 8);
  v20 = v121[8];
  MEMORY[0x1EEE9AC00](v127);
  v21 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v99 - v23;
  v25 = sub_1B7A9A0A0();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = (&v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA487D8, &qword_1B7AA3750);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v128 = &v99 - v30;
  sub_1B7A9A760();
  v122 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v26 + 16))(v28, v120, v25);
  v31 = (*(v26 + 88))(v28, v25);
  if (v31 != *MEMORY[0x1E69AB5C8])
  {
    if (v31 == *MEMORY[0x1E69AB5D0])
    {
      (*(v26 + 96))(v28, v25);
      v38 = v104;
      v39 = (*(v113 + 32))(v104, v28, v114);
      MEMORY[0x1EEE9AC00](v39);
      MEMORY[0x1EEE9AC00](v40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48888, &qword_1B7AA37B8);
      type metadata accessor for ComponentMenuContent(0);
      sub_1B797EC34(&qword_1EBA48890, &qword_1EBA48888, &qword_1B7AA37B8, MEMORY[0x1E697D658]);
      sub_1B7A234E0(&qword_1EBA47010, type metadata accessor for ComponentMenuContent, &unk_1B7AA36F8);
      v41 = v105;
      sub_1B7A98040();
      v42 = sub_1B7A9A050();
      v43 = (v41 + *(v119 + 52));
      *v43 = v42;
      v43[1] = v44;
      sub_1B7957820(v41, v117, &qword_1EBA48818, &qword_1B7AA3768);
      swift_storeEnumTagMultiPayload();
      v45 = MEMORY[0x1E6981810];
      sub_1B797EC34(&qword_1EBA48800, &qword_1EBA48808, &qword_1B7AA3760, MEMORY[0x1E6981810]);
      sub_1B797EC34(&qword_1EBA48810, &qword_1EBA48818, &qword_1B7AA3768, v45);
      v46 = v118;
      sub_1B7A97B30();
      sub_1B7957820(v46, v125, &qword_1EBA487F8, &qword_1B7AA3758);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48828, &qword_1B7AA3770);
      sub_1B7A23108();
      sub_1B7A231E8();
      sub_1B7A97B30();
      sub_1B7957888(v46, &qword_1EBA487F8, &qword_1B7AA3758);
      sub_1B7957888(v41, &qword_1EBA48818, &qword_1B7AA3768);
      (*(v113 + 8))(v38, v114);
LABEL_19:
      sub_1B797E788(v128, v126, &qword_1EBA487D8, &qword_1B7AA3750);
    }

    if (v31 != *MEMORY[0x1E69AB5D8])
    {
      v133 = 0uLL;
      v134 = 0;
      v135 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48838, &qword_1B7AA3778);
      sub_1B7A23274();
      sub_1B7A97B30();
      v80 = v130;
      v81 = v131;
      v82 = BYTE1(v131);
      v83 = v125;
      *v125 = v129;
      *(v83 + 2) = v80;
      *(v83 + 24) = v81;
      *(v83 + 25) = v82;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48828, &qword_1B7AA3770);
      sub_1B7A23108();
      sub_1B7A231E8();
      sub_1B7A97B30();
      (*(v26 + 8))(v28, v25);
      goto LABEL_19;
    }

    (*(v26 + 96))(v28, v25);
    v50 = *v28;
    v49 = v28[1];
    v51 = type metadata accessor for ComponentMenuContent(0);
    v52 = v106;
    sub_1B797C31C(&v129);
    v53 = v131;
    if (!v131)
    {
      sub_1B7957888(&v129, &qword_1EBA47828, &qword_1B7AA0240);
LABEL_26:
      *&v129 = 0;
      *(&v129 + 1) = 0xE000000000000000;
      sub_1B7A9AC50();
      MEMORY[0x1B8CAB750](0xD000000000000020, 0x80000001B7AC6B30);
      MEMORY[0x1B8CAB750](v50, v49);

      MEMORY[0x1B8CAB750](0xD000000000000051, 0x80000001B7AC6B60);
      v90 = v129;
      v91 = swift_allocObject();
      *(v91 + 16) = v90;
      *&v133 = sub_1B797D598;
      *(&v133 + 1) = v91;
      v134 = 0;
      LOBYTE(v135) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48848, &qword_1B7AA3780);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48858, &qword_1B7AA3788);
      sub_1B797EC34(&qword_1EBA48840, &qword_1EBA48848, &qword_1B7AA3780, MEMORY[0x1E6981810]);
      sub_1B797EC34(&qword_1EBA48850, &qword_1EBA48858, &qword_1B7AA3788, &protocol conformance descriptor for _RequirementFailureView<A, B>);
      sub_1B7A97B30();
      goto LABEL_27;
    }

    v54 = v132;
    __swift_project_boxed_opaque_existential_1(&v129, v131);
    v55 = (*(v54 + 16))(v53, v54);
    __swift_destroy_boxed_opaque_existential_1(&v129);
    v56 = v52 + *(v51 + 28);
    v57 = *v56;
    if (*(v56 + 8) == 1)
    {

      if (!*(v57 + 16))
      {
        goto LABEL_25;
      }
    }

    else
    {

      sub_1B7A9AA10();
      v84 = sub_1B7A97E70();
      sub_1B7A96D30();

      v85 = v100;
      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B79A5B8C(v57, 0);
      (*(v101 + 8))(v85, v102);
      v57 = v129;
      if (!*(v129 + 16))
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    v86 = sub_1B79948B8(v50, v49);
    if (v87)
    {
      v88 = *(*(v57 + 56) + 16 * v86);

      v89 = *(v51 + 20);
      *&v129 = v55;
      v88(&v133, v52 + v89, &v129);

      *(&v133 + 1) = v50;
      v134 = v49;
      LOBYTE(v135) = 0;
      swift_retain_n();
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48848, &qword_1B7AA3780);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48858, &qword_1B7AA3788);
      sub_1B797EC34(&qword_1EBA48840, &qword_1EBA48848, &qword_1B7AA3780, MEMORY[0x1E6981810]);
      sub_1B797EC34(&qword_1EBA48850, &qword_1EBA48858, &qword_1B7AA3788, &protocol conformance descriptor for _RequirementFailureView<A, B>);
      sub_1B7A97B30();
      swift_bridgeObjectRelease_n();

LABEL_27:
      v92 = v130;
      v93 = v131;
      v133 = v129;
      v134 = v130;
      v135 = v131;
      v94 = v129;
      sub_1B7A23358(v129, *(&v129 + 1), v130, v131);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48838, &qword_1B7AA3778);
      sub_1B7A23274();
      sub_1B7A97B30();
      v95 = v130;
      v96 = v131;
      v97 = BYTE1(v131);
      v98 = v125;
      *v125 = v129;
      *(v98 + 2) = v95;
      *(v98 + 24) = v96;
      *(v98 + 25) = v97;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48828, &qword_1B7AA3770);
      sub_1B7A23108();
      sub_1B7A231E8();
      sub_1B7A97B30();
      sub_1B7A233A8(v94, *(&v94 + 1), v92, v93);
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  (*(v26 + 96))(v28, v25);
  v32 = v121[4];
  v32(v24, v28, v127);
  sub_1B7A9A070();
  v33 = v107;
  v34 = v108;
  v35 = (*(v107 + 48))(v12, 1, v108);
  v120 = v32;
  if (v35 == 1)
  {
    sub_1B7957888(v12, &qword_1EBA48878, &unk_1B7AA37A0);
    v36 = sub_1B7A96FC0();
    v37 = v111;
    (*(*(v36 - 8) + 56))(v111, 1, 1, v36);
LABEL_18:
    sub_1B7A9A080();
    v59 = v24;
    v60 = v121;
    v61 = v121[2];
    v99 = v59;
    v62 = v127;
    v61(v21);
    v63 = (*(v60 + 80) + 16) & ~*(v60 + 80);
    v64 = swift_allocObject();
    v120(v64 + v63, v21, v62);
    *(v16 + 10) = swift_getKeyPath();
    v16[120] = 0;
    v65 = v109;
    v66 = *(v109 + 44);
    *&v16[v66] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
    swift_storeEnumTagMultiPayload();
    v67 = &v16[*(v65 + 48)];
    *v67 = swift_getKeyPath();
    *(v67 + 1) = 0;
    v67[16] = 0;
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48898, &qword_1B7AA3840);
    *(v16 + 3) = v68;
    *(v16 + 4) = sub_1B797EC34(&qword_1EBA488A0, &qword_1EBA48898, &qword_1B7AA3840, &unk_1B7AA89DC);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v16);
    sub_1B797E788(v37, boxed_opaque_existential_1Tm, &qword_1EBA47018, &qword_1B7A9EFA0);
    v70 = (boxed_opaque_existential_1Tm + *(v68 + 36));
    *v70 = sub_1B7A23408;
    v70[1] = v64;
    v71 = sub_1B7A9A060();
    v73 = v72;
    v74 = v110;
    sub_1B7957820(v16, v110, &qword_1EBA48880, &qword_1B7AA37B0);
    v75 = (v74 + *(v115 + 52));
    *v75 = v71;
    v75[1] = v73;
    sub_1B7957888(v16, &qword_1EBA48880, &qword_1B7AA37B0);
    v76 = v112;
    sub_1B797E788(v74, v112, &qword_1EBA48808, &qword_1B7AA3760);
    sub_1B7957820(v76, v117, &qword_1EBA48808, &qword_1B7AA3760);
    swift_storeEnumTagMultiPayload();
    v77 = MEMORY[0x1E6981810];
    sub_1B797EC34(&qword_1EBA48800, &qword_1EBA48808, &qword_1B7AA3760, MEMORY[0x1E6981810]);
    sub_1B797EC34(&qword_1EBA48810, &qword_1EBA48818, &qword_1B7AA3768, v77);
    v78 = v118;
    sub_1B7A97B30();
    sub_1B7957820(v78, v125, &qword_1EBA487F8, &qword_1B7AA3758);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48828, &qword_1B7AA3770);
    sub_1B7A23108();
    sub_1B7A231E8();
    sub_1B7A97B30();
    sub_1B7957888(v78, &qword_1EBA487F8, &qword_1B7AA3758);
    sub_1B7957888(v76, &qword_1EBA48808, &qword_1B7AA3760);
    (v60[1])(v99, v127);
    goto LABEL_19;
  }

  v47 = v103;
  (*(v33 + 16))(v103, v12, v34);
  v48 = (*(v33 + 88))(v47, v34);
  v37 = v111;
  if (v48 == *MEMORY[0x1E69AB600])
  {
    sub_1B7A96FA0();
LABEL_17:
    v58 = sub_1B7A96FC0();
    (*(*(v58 - 8) + 56))(v37, 0, 1, v58);
    (*(v33 + 8))(v12, v34);
    goto LABEL_18;
  }

  if (v48 == *MEMORY[0x1E69AB5F8])
  {
    sub_1B7A96F90();
    goto LABEL_17;
  }

  result = sub_1B7A9AD70();
  __break(1u);
  return result;
}

uint64_t sub_1B7A229C8(uint64_t a1)
{
  sub_1B7A98F40();
  sub_1B7A234E0(&qword_1EBA488A8, MEMORY[0x1E69AAFD8], &protocol conformance descriptor for MediaArtwork);
  return sub_1B7A98690();
}

uint64_t sub_1B7A22A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_1B7A9A0D0();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a3, a1, v6);
  (*(v7 + 56))(a3, 0, 1, v6);
  v8 = type metadata accessor for ComponentMenuContent(0);
  sub_1B7999E90(a2 + v8[5], a3 + v8[5]);
  v9 = a3 + v8[6];
  *v9 = swift_getKeyPath();
  *(v9 + 40) = 0;
  v10 = a3 + v8[7];
  KeyPath = swift_getKeyPath();

  *v10 = KeyPath;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_1B7A22C04(uint64_t a1)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x1EEE9AC00](isCurrentExecutor);
  MEMORY[0x1EEE9AC00](v2);
  sub_1B7A98F40();
  sub_1B7A234E0(&qword_1EBA488A8, MEMORY[0x1E69AAFD8], &protocol conformance descriptor for MediaArtwork);
  sub_1B7A98690();
}

uint64_t sub_1B7A22D74@<X0>(uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v16 = a2(isCurrentExecutor);
  sub_1B7999DD8(v16, v6, v7);
  v8 = sub_1B7A98080();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = v12 & 1;
  *(a3 + 24) = v14;
  return result;
}

uint64_t sub_1B7A22E6C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a3(isCurrentExecutor);
}

uint64_t sub_1B7A22F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentMenuContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A22F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComponentMenuContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A22FFC@<X0>(void (*a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ComponentMenuContent(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1B7A21410(a1, v6, a2);
}

unint64_t sub_1B7A2307C()
{
  result = qword_1EBA487E8;
  if (!qword_1EBA487E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA487D8, &qword_1B7AA3750);
    sub_1B7A23108();
    sub_1B7A231E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA487E8);
  }

  return result;
}

unint64_t sub_1B7A23108()
{
  result = qword_1EBA487F0;
  if (!qword_1EBA487F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA487F8, &qword_1B7AA3758);
    v1 = MEMORY[0x1E6981810];
    sub_1B797EC34(&qword_1EBA48800, &qword_1EBA48808, &qword_1B7AA3760, MEMORY[0x1E6981810]);
    sub_1B797EC34(&qword_1EBA48810, &qword_1EBA48818, &qword_1B7AA3768, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA487F0);
  }

  return result;
}

unint64_t sub_1B7A231E8()
{
  result = qword_1EBA48820;
  if (!qword_1EBA48820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48828, &qword_1B7AA3770);
    sub_1B7A23274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48820);
  }

  return result;
}

unint64_t sub_1B7A23274()
{
  result = qword_1EBA48830;
  if (!qword_1EBA48830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48838, &qword_1B7AA3778);
    sub_1B797EC34(&qword_1EBA48840, &qword_1EBA48848, &qword_1B7AA3780, MEMORY[0x1E6981810]);
    sub_1B797EC34(&qword_1EBA48850, &qword_1EBA48858, &qword_1B7AA3788, &protocol conformance descriptor for _RequirementFailureView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48830);
  }

  return result;
}

void sub_1B7A23358(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1B7A233A8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_1B7A23408()
{
  v1 = *(sub_1B7A9A090() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1B7A229C8(v2);
}

uint64_t sub_1B7A234E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B7A23590()
{
  result = qword_1EBA488B0;
  if (!qword_1EBA488B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA488B8, &unk_1B7AA3870);
    sub_1B7A2307C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA488B0);
  }

  return result;
}

void sub_1B7A236EC()
{
  v78.receiver = v0;
  v78.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v78, sel_viewDidLoad);
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = OBJC_IVAR____TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer31MetricsVisualizerViewController_borderView;
  v3 = *&v0[OBJC_IVAR____TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer31MetricsVisualizerViewController_borderView];
  *&v0[OBJC_IVAR____TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer31MetricsVisualizerViewController_borderView] = v1;
  v4 = v1;

  v5 = [v4 layer];
  v6 = *&v0[OBJC_IVAR____TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer31MetricsVisualizerViewController_borderSize];
  [v5 setBorderWidth_];

  v7 = *&v0[v2];
  if (!v7)
  {
    __break(1u);
    goto LABEL_26;
  }

  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!*&v0[v2])
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v9 = v8;
  [v8 addSubview_];

  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v11 = OBJC_IVAR____TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer31MetricsVisualizerViewController_eventLabel;
  v12 = *&v0[OBJC_IVAR____TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer31MetricsVisualizerViewController_eventLabel];
  *&v0[OBJC_IVAR____TtCC18_JetEngine_SwiftUI28_PageRenderMetricsVisualizer31MetricsVisualizerViewController_eventLabel] = v10;
  v13 = v10;

  v14 = [objc_opt_self() preferredFontForTextStyle_];
  [v13 setFont_];

  v15 = *&v0[v11];
  if (!v15)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 blackColor];
  [v17 setTextColor_];

  v19 = *&v0[v11];
  if (!v19)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v20 = v19;
  v21 = [v16 whiteColor];
  [v20 setBackgroundColor_];

  v22 = *&v0[v11];
  if (!v22)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v22 setUserInteractionEnabled_];
  v23 = *&v0[v11];
  if (!v23)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!*&v0[v11])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v25 = v24;
  [v24 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46480, &unk_1B7A9D190);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B7AA3880;
  v27 = *&v0[v11];
  if (!v27)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v28 = [v27 topAnchor];
  v29 = [v0 view];
  if (!v29)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = v29;
  v31 = [v29 layoutMarginsGuide];

  v32 = [v31 topAnchor];
  v33 = [v28 constraintEqualToAnchor:v32 constant:v6];

  *(v26 + 32) = v33;
  v34 = *&v0[v11];
  if (!v34)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v35 = [v34 leftAnchor];
  v36 = [v0 view];
  if (!v36)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v37 = v36;
  v38 = [v36 safeAreaLayoutGuide];

  v39 = [v38 leftAnchor];
  v40 = [v35 constraintEqualToAnchor:v39 constant:v6];

  *(v26 + 40) = v40;
  v41 = *&v0[v11];
  if (!v41)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v42 = [v41 rightAnchor];
  v43 = [v0 view];
  if (!v43)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v44 = v43;
  v45 = [v43 safeAreaLayoutGuide];

  v46 = [v45 rightAnchor];
  v47 = [v42 constraintEqualToAnchor:v46 constant:-v6];

  *(v26 + 48) = v47;
  v48 = *&v0[v2];
  if (!v48)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v49 = [v48 topAnchor];
  v50 = [v0 view];
  if (!v50)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v51 = v50;
  v52 = [v50 safeAreaLayoutGuide];

  v53 = [v52 topAnchor];
  v54 = [v49 constraintEqualToAnchor_];

  *(v26 + 56) = v54;
  v55 = *&v0[v2];
  if (!v55)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v56 = [v55 leftAnchor];
  v57 = [v0 view];
  if (!v57)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v58 = v57;
  v59 = [v57 safeAreaLayoutGuide];

  v60 = [v59 leftAnchor];
  v61 = [v56 constraintEqualToAnchor_];

  *(v26 + 64) = v61;
  v62 = *&v0[v2];
  if (!v62)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v63 = [v62 rightAnchor];
  v64 = [v0 view];
  if (!v64)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v65 = v64;
  v66 = [v64 safeAreaLayoutGuide];

  v67 = [v66 rightAnchor];
  v68 = [v63 constraintEqualToAnchor_];

  *(v26 + 72) = v68;
  v69 = *&v0[v2];
  if (!v69)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v70 = [v69 bottomAnchor];
  v71 = [v0 view];
  if (v71)
  {
    v72 = v71;
    v73 = objc_opt_self();
    v74 = [v72 safeAreaLayoutGuide];

    v75 = [v74 bottomAnchor];
    v76 = [v70 constraintEqualToAnchor_];

    *(v26 + 80) = v76;
    sub_1B7A2442C();
    v77 = sub_1B7A9A630();

    [v73 activateConstraints_];

    return;
  }

LABEL_47:
  __break(1u);
}

unint64_t sub_1B7A2442C()
{
  result = qword_1EBA488D8[0];
  if (!qword_1EBA488D8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EBA488D8);
  }

  return result;
}

uint64_t sub_1B7A244B4(char a1)
{
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](a1 & 1);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7A24518()
{
  sub_1B7A9AF80();
  sub_1B7A2448C(v2, *v0);
  return sub_1B7A9AFA0();
}

__n128 ToastActionImplementation.init<A>(following:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *a1;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = v12;
  result = *(a1 + 1);
  *(v13 + 56) = result;
  *a6 = &unk_1B7AA38D8;
  a6[1] = v13;
  return result;
}

uint64_t sub_1B7A245E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[8] = a3;
  v8[9] = a4;
  v8[6] = a1;
  v8[7] = a2;
  v9 = sub_1B7A9AD20();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18, &qword_1B7A9C320);
  v8[17] = swift_task_alloc();
  v10 = sub_1B7A96C20();
  v8[18] = v10;
  v8[19] = *(v10 - 8);
  v8[20] = swift_task_alloc();
  sub_1B7A9A760();
  v8[21] = sub_1B7A9A750();
  v12 = sub_1B7A9A710();
  v8[22] = v12;
  v8[23] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1B7A24778, v12, v11);
}

uint64_t sub_1B7A24778()
{
  *(v0 + 16) = *(v0 + 56);
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);
  v7 = *(v0 + 48);
  *(v0 + 24) = *(v0 + 64);
  v8 = type metadata accessor for FlowAuthority(255, v6, v4, v5);
  v9 = sub_1B7A98870();
  MEMORY[0x1B8CA9A40](v9);
  *(v0 + 192) = sub_1B7A2A3A0(v8);

  sub_1B79EAFBC(v7, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v10 = *(v0 + 136);
    v11 = *(v0 + 80);

    sub_1B7A255E0(v10);
    type metadata accessor for ToastActionImplementation.PresentationError(0, v11, v12, v13);
    swift_getWitnessTable();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 136), *(v0 + 144));
    sub_1B7A99F70();
    v17 = sub_1B7A9AFD0();
    v19 = v18;
    sub_1B7A9AEF0();
    v20 = swift_task_alloc();
    *(v0 + 200) = v20;
    *v20 = v0;
    v20[1] = sub_1B7A249F8;

    return sub_1B795A058(v17, v19, 0, 0, 1);
  }
}

uint64_t sub_1B7A249F8()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  v3 = v2[23];
  v4 = v2[22];
  if (v0)
  {
    v5 = sub_1B7A24CF4;
  }

  else
  {
    v5 = sub_1B7A24B80;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B7A24B80()
{
  v1 = v0[20];

  v2 = sub_1B79EA4E4(v1);
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  if (v2)
  {
    (*(v6 + 8))(v0[20], v0[18]);
  }

  else
  {
    type metadata accessor for ToastActionImplementation.PresentationError(0, v0[10], v3, v4);
    swift_getWitnessTable();
    swift_allocError();
    *v9 = 1;
    swift_willThrow();

    (*(v6 + 8))(v5, v7);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1B7A24CF4()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B7A24DA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B798D54C;

  return sub_1B7A245E4(a1, v8, v9, v10, v4, v5, v6, v7);
}

uint64_t sub_1B7A24E84(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = sub_1B7A9A760();
  v4[4] = sub_1B7A9A750();
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_1B7A24FA4;

  return v9(a4);
}

uint64_t sub_1B7A24FA4()
{
  *(*v1 + 48) = v0;

  v3 = sub_1B7A9A710();
  if (v0)
  {
    v4 = sub_1B7A251B0;
  }

  else
  {
    v4 = sub_1B7A25100;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1B7A25100()
{
  v1 = *(v0 + 16);

  v2 = *MEMORY[0x1E69AB010];
  v3 = sub_1B7A98FA0();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B7A251B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7A2521C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_1B7A99F80();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = *v2;
  v12 = v2[1];
  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = *(a2 + 16);
  *(v15 + 3) = v13;
  *(v15 + 4) = v12;
  (*(v9 + 32))(&v15[v14], &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46FF0, &unk_1B7AA01E0);

  v16 = sub_1B7A9A150();
  v17 = sub_1B7A9A7E0();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B7AA3988;
  v18[5] = v15;
  v18[6] = v16;

  sub_1B7A64074(0, 0, v7, &unk_1B7A9EE00, v18);

  return v16;
}

uint64_t sub_1B7A25494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A254E8(uint64_t a1)
{
  v4 = *(sub_1B7A99F80() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B798D338;

  return sub_1B7A24E84(a1, v6, v7, v1 + v5);
}

uint64_t sub_1B7A255E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18, &qword_1B7A9C320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.shelfGridPagingDecoration<A, B, C>(transaction:backward:forward:mask:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  swift_getKeyPath();
  sub_1B7A25938(a1, a2, a3, a4, a5, a6, a7, a9, &v23, a10, a11, a13, a14, a15);
  v24 = v23;

  sub_1B7A98150();

  sub_1B7A25A64(&v24);
}

__n128 sub_1B7A257DC@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A262C4(a2, a3, a4);
  sub_1B7A97890();
  result = v7;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  return result;
}

__n128 sub_1B7A2583C@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A262C4(a2, a3, a4);
  sub_1B7A97890();
  result = v7;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 24) = v8;
  *(a1 + 40) = v9;
  return result;
}

uint64_t sub_1B7A258A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A262C4(a1, a2, a3);

  return sub_1B7A978A0();
}

void *sub_1B7A25938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a13;
  v18[7] = a14;
  v18[8] = a2;
  v18[9] = a3;
  v19 = swift_allocObject();
  v19[2] = a8;
  v19[3] = a10;
  v19[4] = a11;
  v19[5] = a12;
  v19[6] = a13;
  v19[7] = a14;
  v19[8] = a4;
  v19[9] = a5;
  result = swift_allocObject();
  result[2] = a8;
  result[3] = a10;
  result[4] = a11;
  result[5] = a12;
  result[6] = a13;
  result[7] = a14;
  result[8] = a6;
  result[9] = a7;
  *a9 = a1;
  a9[1] = sub_1B7A26244;
  a9[2] = v18;
  a9[3] = sub_1B7A2625C;
  a9[4] = v19;
  a9[5] = sub_1B7A262B0;
  a9[6] = result;
  return result;
}

uint64_t sub_1B7A25AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  v15 = sub_1B7999EF4(v13, a5, a8);
  (*(v10 + 8))(v13, a5);
  return v15;
}

uint64_t sub_1B7A25BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA489F8, &qword_1B7AA3B58);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;

  sub_1B7A98730();
  (*(v4 + 16))(v6, v9, v3);
  sub_1B797EC34(qword_1EBA48A00, &qword_1EBA489F8, &qword_1B7AA3B58, MEMORY[0x1E697D680]);
  v10 = sub_1B7A987F0();
  (*(v4 + 8))(v9, v3);
  return v10;
}

uint64_t sub_1B7A25D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a6 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  v15 = sub_1B7999EF4(v13, a6, a9);
  (*(v10 + 8))(v13, a6);
  return v15;
}

uint64_t sub_1B7A25E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  v15 = sub_1B7999EF4(v13, a5, a8);
  (*(v10 + 8))(v13, a5);
  return v15;
}

uint64_t sub_1B7A25F70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A985E0();
  *a1 = result;
  return result;
}

uint64_t sub_1B7A25FB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A985E0();
  *a1 = result;
  return result;
}

uint64_t sub_1B7A25FFC@<X0>(uint64_t *a1@<X8>)
{
  sub_1B7A98A60();
  result = sub_1B7A97180();
  *a1 = result;
  a1[1] = sub_1B7A25AB8;
  a1[2] = 0;
  a1[3] = sub_1B7A25BB4;
  a1[4] = 0;
  a1[5] = sub_1B7A25E50;
  a1[6] = 0;
  return result;
}

uint64_t View.shelfGridPagingDecoration<A, B, C, D>(transaction:backward:forward:leadingMask:trailingMask:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B7A25684;
  *(v21 + 24) = 0;
  View.shelfGridPagingDecoration<A, B, C>(transaction:backward:forward:mask:)(a1, a2, a3, a4, a5, sub_1B7A26170, v21, a10, a11, a12, MEMORY[0x1E69815C0], a15, a16, a17, MEMORY[0x1E6981580]);
}

uint64_t sub_1B7A26170@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1B7A261A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B7A261E8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1B7A262C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA489F0;
  if (!qword_1EBA489F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA489F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18_JetEngine_SwiftUI26_MediaArtworkFetchProgressO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B7A26340(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7A2639C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B7A263FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_9JetEngine20MediaArtworkResource_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_18_JetEngine_SwiftUI26_MediaArtworkFetchProgressOSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B7A264A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7A264F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B7A26568()
{
  v1 = v0;
  v2 = sub_1B7A99CC0();
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B7A99CD0();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7A97880();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v0 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA48AC8, &unk_1B7AA3E60);
  sub_1B7A986D0();
  v12 = v29;
  if ((v29 - 1) < 2)
  {
    v18 = *(v0 + 104);
    v19 = *(v1 + 112);

    if ((v19 & 1) == 0)
    {
      sub_1B7A9AA10();
      v20 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      j__swift_release(v18);
      (*(v9 + 8))(v11, v8);
      v18 = v30;
    }

    if (v18)
    {
      *v4 = 1;
      v17 = v28;
      (*(v28 + 104))(v4, *MEMORY[0x1E69AB438], v2);
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (v29)
  {
    if (v29 == 3)
    {
      return;
    }

    v13 = *(v0 + 104);
    v14 = *(v1 + 112);

    if ((v14 & 1) == 0)
    {
      sub_1B7A9AA10();
      v16 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      j__swift_release(v13);
      (*(v9 + 8))(v11, v8);
      v13 = v30;
    }

    if (v13)
    {
      *v4 = v12;
      v4[8] = 1;
      v17 = v28;
      (*(v28 + 104))(v4, *MEMORY[0x1E69AB428], v2);
      sub_1B7A28E48(v12);
LABEL_12:
      sub_1B7A99D10();

      sub_1B7A28C64(v21, v12);
      (*(v17 + 8))(v4, v2);
      return;
    }

LABEL_13:
    sub_1B7A28C64(v15, v12);
    return;
  }

  v22 = *(v0 + 104);
  v23 = *(v1 + 112);

  if ((v23 & 1) == 0)
  {
    sub_1B7A9AA10();
    v24 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v22);
    (*(v9 + 8))(v11, v8);
    v22 = v30;
  }

  if (v22)
  {
    *v7 = 1;
    v25 = v27;
    (*(v27 + 104))(v7, *MEMORY[0x1E69AB448], v5);
    sub_1B7A99D30();

    (*(v25 + 8))(v7, v5);
  }
}

uint64_t sub_1B7A26A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = *(a1 + 16);
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48A88, &qword_1B7AA3E48);
  v40 = a1;
  v3 = *(a1 + 24);
  v4 = MEMORY[0x1E69805D0];
  v39 = v3;
  v55 = v3;
  v56 = MEMORY[0x1E69805D0];
  WitnessTable = swift_getWitnessTable();
  v54 = v4;
  swift_getWitnessTable();
  sub_1B7A28450(&qword_1EBA48A90, &qword_1EBA48A88, &qword_1B7AA3E48, sub_1B7A283FC);
  *&v44 = swift_getOpaqueTypeMetadata2();
  *(&v44 + 1) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48AA0, &unk_1B7AA3E50);
  *&v45 = swift_getOpaqueTypeConformance2();
  *(&v45 + 1) = sub_1B7A28450(&qword_1EBA48AA8, &qword_1EBA48AA0, &unk_1B7AA3E50, sub_1B7A284CC);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v5 = sub_1B7A96F80();
  v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8, &unk_1B7AA07E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  sub_1B7957820(v43, &v44, &qword_1EBA46B48, &unk_1B7A9DD80);
  if (*(&v45 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48AC0, &qword_1B7AA9620);
    v20 = sub_1B7A96B90();
    v21 = swift_dynamicCast();
    (*(*(v20 - 8) + 56))(v19, v21 ^ 1u, 1, v20);
  }

  else
  {
    sub_1B7957888(&v44, &qword_1EBA46B48, &unk_1B7A9DD80);
    v22 = sub_1B7A96B90();
    (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  }

  sub_1B7957820(v19, v16, &qword_1EBA47AF8, &unk_1B7AA07E0);
  (*(*(v40 - 8) + 16))(&v44);
  sub_1B7957820(v19, v13, &qword_1EBA47AF8, &unk_1B7AA07E0);
  v23 = (*(v11 + 80) + 168) & ~*(v11 + 80);
  v24 = swift_allocObject();
  v25 = v39;
  *(v24 + 16) = v41;
  *(v24 + 24) = v25;
  v26 = v51;
  *(v24 + 128) = v50;
  *(v24 + 144) = v26;
  *(v24 + 160) = v52;
  v27 = v47;
  *(v24 + 64) = v46;
  *(v24 + 80) = v27;
  v28 = v49;
  *(v24 + 96) = v48;
  *(v24 + 112) = v28;
  v29 = v45;
  *(v24 + 32) = v44;
  *(v24 + 48) = v29;
  sub_1B7A28570(v13, v24 + v23);

  sub_1B7A96F70();
  v30 = swift_getWitnessTable();
  v31 = v35;
  sub_1B7957EE0(v7, v5, v30);
  v32 = *(v38 + 8);
  v32(v7, v5);
  sub_1B7957EE0(v31, v5, v30);
  v32(v31, v5);
  return sub_1B7957888(v19, &qword_1EBA47AF8, &unk_1B7AA07E0);
}

uint64_t sub_1B7A270B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v133 = a3;
  v131 = a1;
  v122 = a6;
  v125 = sub_1B7A97530();
  v107 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v132 = v9;
  v105 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8, &unk_1B7AA07E0);
  v127 = *(v10 - 8);
  v126 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v134 = &v95 - v11;
  v99 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = a4;
  v14 = sub_1B7A97590();
  v103 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v95 - v15;
  v16 = sub_1B7A97590();
  v114 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v112 = &v95 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48A88, &qword_1B7AA3E48);
  v19 = MEMORY[0x1E69805D0];
  v135 = a5;
  v148 = a5;
  v149 = MEMORY[0x1E69805D0];
  v104 = v14;
  WitnessTable = swift_getWitnessTable();
  v146 = WitnessTable;
  v147 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_1B7A28450(&qword_1EBA48A90, &qword_1EBA48A88, &qword_1B7AA3E48, sub_1B7A283FC);
  *&v137 = v16;
  *(&v137 + 1) = v18;
  *&v138 = v20;
  *(&v138 + 1) = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v120 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v119 = &v95 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48AA0, &unk_1B7AA3E50);
  v116 = v16;
  *&v137 = v16;
  *(&v137 + 1) = v18;
  v106 = v18;
  v102 = v20;
  *&v138 = v20;
  *(&v138 + 1) = v21;
  v100 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_1B7A28450(&qword_1EBA48AA8, &qword_1EBA48AA0, &unk_1B7AA3E50, sub_1B7A284CC);
  v121 = OpaqueTypeMetadata2;
  *&v137 = OpaqueTypeMetadata2;
  *(&v137 + 1) = v24;
  v118 = v24;
  v113 = OpaqueTypeConformance2;
  *&v138 = OpaqueTypeConformance2;
  *(&v138 + 1) = v26;
  v111 = v26;
  v117 = swift_getOpaqueTypeMetadata2();
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v109 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v110 = &v95 - v29;
  sub_1B7A9A760();
  v108 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v30 = v131;
  (*(a2 + 56))(v131);
  v31 = v134;
  sub_1B7957820(v133, v134, &qword_1EBA47AF8, &unk_1B7AA07E0);
  v32 = v107;
  v96 = *(v107 + 16);
  v33 = v105;
  v96(v105, v30, v125);
  v34 = v124;
  v129 = type metadata accessor for _MediaArtworkDeprecatedFallbackImage(0, v124, v135, v35);
  v36 = *(v129 - 8);
  v130 = *(v36 + 16);
  v128 = v36 + 16;
  v130(&v137, a2, v129);
  v37 = *(v127 + 80);
  v97 = ((v37 + 32) & ~v37) + v126;
  v38 = (v37 + 32) & ~v37;
  v127 = v38;
  v126 = v37 | 7;
  v39 = (v97 + *(v32 + 80)) & ~*(v32 + 80);
  v95 = v39;
  v40 = v132 + v39 + 7;
  v132 = a2;
  v41 = v40 & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v135;
  *(v42 + 16) = v34;
  *(v42 + 24) = v43;
  sub_1B7A28570(v31, v42 + v38);
  v107 = *(v32 + 32);
  v44 = v42 + v39;
  v45 = v33;
  v46 = v125;
  (v107)(v44, v33, v125);
  v47 = v42 + v41;
  v48 = v144;
  *(v47 + 96) = v143;
  *(v47 + 112) = v48;
  *(v47 + 128) = v145;
  v49 = v140;
  *(v47 + 32) = v139;
  *(v47 + 48) = v49;
  v50 = v142;
  *(v47 + 64) = v141;
  *(v47 + 80) = v50;
  v51 = v138;
  *v47 = v137;
  *(v47 + 16) = v51;
  v52 = v101;
  v53 = v123;
  sub_1B7A984A0();

  (*(v99 + 8))(v53, v34);
  v54 = v134;
  sub_1B7957820(v133, v134, &qword_1EBA47AF8, &unk_1B7AA07E0);
  v96(v45, v131, v46);
  v130(&v137, v132, v129);
  v55 = v135;
  v56 = swift_allocObject();
  *(v56 + 16) = v34;
  *(v56 + 24) = v55;
  sub_1B7A28570(v54, v56 + v127);
  (v107)(v56 + v95, v45, v46);
  v57 = v56 + v41;
  v58 = v144;
  *(v57 + 96) = v143;
  *(v57 + 112) = v58;
  *(v57 + 128) = v145;
  v59 = v140;
  *(v57 + 32) = v139;
  *(v57 + 48) = v59;
  v60 = v142;
  *(v57 + 64) = v141;
  *(v57 + 80) = v60;
  v61 = v138;
  *v57 = v137;
  *(v57 + 16) = v61;
  v62 = v112;
  v63 = v104;
  sub_1B7A98160();

  (*(v103 + 8))(v52, v63);
  v136 = sub_1B7A97520();
  v64 = v134;
  sub_1B7957820(v133, v134, &qword_1EBA47AF8, &unk_1B7AA07E0);
  v130(&v137, v132, v129);
  v65 = (v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = swift_allocObject();
  *(v66 + 16) = v34;
  *(v66 + 24) = v55;
  sub_1B7A28570(v64, v66 + v127);
  v67 = v66 + v65;
  v68 = v144;
  *(v67 + 96) = v143;
  *(v67 + 112) = v68;
  *(v67 + 128) = v145;
  v69 = v140;
  *(v67 + 32) = v139;
  *(v67 + 48) = v69;
  v70 = v142;
  *(v67 + 64) = v141;
  *(v67 + 80) = v70;
  v71 = v138;
  *v67 = v137;
  *(v67 + 16) = v71;
  v72 = v119;
  v73 = v116;
  sub_1B7A984B0();

  (*(v114 + 8))(v62, v73);
  v74 = sub_1B7A97510();
  if (v74)
  {
    v75 = v74;
    v76 = sub_1B7A96B00();
  }

  else
  {
    v76 = 0;
  }

  v136 = v76;
  v77 = v134;
  sub_1B7957820(v133, v134, &qword_1EBA47AF8, &unk_1B7AA07E0);
  v130(&v137, v132, v129);
  v78 = swift_allocObject();
  v79 = v135;
  *(v78 + 16) = v124;
  *(v78 + 24) = v79;
  sub_1B7A28570(v77, v78 + v127);
  v80 = v78 + v65;
  v81 = v144;
  *(v80 + 96) = v143;
  *(v80 + 112) = v81;
  *(v80 + 128) = v145;
  v82 = v140;
  *(v80 + 32) = v139;
  *(v80 + 48) = v82;
  v83 = v142;
  *(v80 + 64) = v141;
  *(v80 + 80) = v83;
  v84 = v138;
  *v80 = v137;
  *(v80 + 16) = v84;
  v85 = v109;
  v86 = v121;
  v87 = v118;
  v88 = v113;
  v89 = v111;
  sub_1B7A984B0();

  (*(v120 + 8))(v72, v86);
  *&v137 = v86;
  *(&v137 + 1) = v87;
  *&v138 = v88;
  *(&v138 + 1) = v89;
  v90 = swift_getOpaqueTypeConformance2();
  v91 = v110;
  v92 = v117;
  sub_1B7957EE0(v85, v117, v90);
  v93 = *(v115 + 8);
  v93(v85, v92);
  sub_1B7957EE0(v91, v92, v90);
  v93(v91, v92);
}

uint64_t sub_1B7A27E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v21 = a3;
  v22 = a7;
  v20 = a5;
  v10 = sub_1B7A97530();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = sub_1B7A96B90();
  if ((*(*(v14 - 8) + 48))(a1, 1, v14) == 1)
  {
  }

  else
  {
    (*(v11 + 16))(v13, a2, v10);
    v15 = (*(v11 + 88))(v13, v10);
    v16 = *MEMORY[0x1E697C118];
    (*(v11 + 8))(v13, v10);
    if (v15 == v16)
    {
      type metadata accessor for _MediaArtworkDeprecatedFallbackImage(0, a4, v20, v17);
      sub_1B7A28DC4(v22);
    }
  }
}

uint64_t sub_1B7A2808C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a2;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_1B7A96B90();
  if ((*(*(v10 - 8) + 48))(a3, 1, v10) == 1 || !v9)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA48AC8, &unk_1B7AA3E60);
    sub_1B7A986D0();
    if (v14)
    {
      if (v14 != 3)
      {
        sub_1B7A28C64(v12, v14);
      }
    }

    else
    {
      type metadata accessor for _MediaArtworkDeprecatedFallbackImage(0, a5, a6, v11);
      sub_1B7A28DC4(1);
    }
  }
}

void sub_1B7A28214(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a2;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_1B7A96B90();
  if ((*(*(v10 - 8) + 48))(a3, 1, v10) == 1 || !v9)
  {
  }

  else
  {
    v11 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA48AC8, &unk_1B7AA3E60);
    sub_1B7A986D0();
    if (v14)
    {
      if (v14 != 3)
      {
        sub_1B7A28C64(v13, v14);
      }
    }

    else
    {
      type metadata accessor for _MediaArtworkDeprecatedFallbackImage(0, a5, a6, v12);
      sub_1B7A28DC4(v9);
    }
  }
}

unint64_t sub_1B7A283FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48A98;
  if (!qword_1EBA48A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48A98);
  }

  return result;
}

uint64_t sub_1B7A28450(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7A284CC()
{
  result = qword_1EBA48AB0;
  if (!qword_1EBA48AB0)
  {
    sub_1B7A28524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48AB0);
  }

  return result;
}

unint64_t sub_1B7A28524()
{
  result = qword_1EBA48AB8;
  if (!qword_1EBA48AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA48AB8);
  }

  return result;
}

uint64_t sub_1B7A28570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8, &unk_1B7AA07E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A285E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8, &unk_1B7AA07E0) - 8);
  v8 = v2 + ((*(v7 + 80) + 168) & ~*(v7 + 80));

  return sub_1B7A270B8(a1, v2 + 32, v8, v5, v6, a2);
}

uint64_t objectdestroy_8Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8, &unk_1B7AA07E0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_1B7A97530();
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1B7A96B90();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v2, 1, v8))
  {
    (*(v9 + 8))(v0 + v2, v8);
  }

  (*(v5 + 8))(v0 + v6, v4);
  v10 = v0 + v7;
  if (*(v0 + v7 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v7));
  }

  sub_1B79A5B8C(*(v10 + 72), *(v10 + 80));
  sub_1B79A5B8C(*(v10 + 88), *(v10 + 96));
  j__swift_release(*(v10 + 104));
  v11 = *(v10 + 120);
  if (v11 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B7A288AC(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8, &unk_1B7AA07E0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_1B7A97530() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  return sub_1B7A27E54(v2 + v8, v2 + v11, v2 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8), v5, v6, a1, a2);
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8, &unk_1B7AA07E0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = sub_1B7A96B90();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = v0 + v3;
  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  sub_1B79A5B8C(*(v6 + 72), *(v6 + 80));
  sub_1B79A5B8C(*(v6 + 88), *(v6 + 96));
  j__swift_release(*(v6 + 104));
  v7 = *(v6 + 120);
  if (v7 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B7A28B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8, &unk_1B7AA07E0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = v3 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a3(a1, a2, v3 + v9, v10, v6, v7);
}

void sub_1B7A28C64(__n128 a1, id result)
{
  if (result != 3)
  {
    sub_1B7A28C74(result);
  }
}

void sub_1B7A28C74(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1B7A28C84(uint64_t a1, unint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2 != 1)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (a1 != 2)
      {
        if (a2 >= 3)
        {
          swift_getErrorValue();
          v4 = v12[4];
          v5 = v13;
          v12[3] = v13;
          boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v12);
          (*(*(v5 - 8) + 16))(boxed_opaque_existential_1Tm, v4, v5);
          swift_getErrorValue();
          v7 = v10[4];
          v8 = v11;
          v10[3] = v11;
          v9 = __swift_allocate_boxed_opaque_existential_1Tm(v10);
          (*(*(v8 - 8) + 16))(v9, v7, v8);
          v2 = sub_1B7A999A0();
          __swift_destroy_boxed_opaque_existential_1(v10);
          __swift_destroy_boxed_opaque_existential_1(v12);
          return v2 & 1;
        }

        goto LABEL_11;
      }

      if (a2 != 2)
      {
LABEL_11:
        v2 = 0;
        return v2 & 1;
      }
    }
  }

  else if (a2)
  {
    goto LABEL_11;
  }

  v2 = 1;
  return v2 & 1;
}

void sub_1B7A28DC4(void *a1)
{
  sub_1B7A28E38(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA48AC8, &unk_1B7AA3E60);
  sub_1B7A986E0();
  sub_1B7A26568();
}

id sub_1B7A28E38(id result)
{
  if (result != 3)
  {
    return sub_1B7A28E48(result);
  }

  return result;
}

id sub_1B7A28E48(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1B7A28E60(void *a1)
{
  type metadata accessor for FlowStackAuthority(255, a1[10], a1[11], a1[12]);
  result = sub_1B7A96F50();
  if (v2 <= 0x3F)
  {
    sub_1B7A9AB60();
    result = sub_1B7A96F50();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B7A28F54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_1B7A96EE0();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_1B7A29044()
{
  v1 = *(*v0 + 80);
  v11 = sub_1B7A9AB60();
  v2 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v4 = &v10 - v3;
  v5 = sub_1B7A99350();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
  sub_1B7A98D10();
  *(swift_allocObject() + 16) = xmmword_1B7A9C180;
  sub_1B7A98C40();
  sub_1B7A9A1E0();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  (*(v6 + 104))(v8, *MEMORY[0x1E69AB100], v5);
  sub_1B7A99E20();

  (*(v6 + 8))(v8, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  (*(*(v1 - 8) + 56))(v4, 1, 1, v1);
  sub_1B7A2A1B4(v4);
  return (*(v2 + 8))(v4, v11);
}

BOOL sub_1B7A29318()
{
  v1 = *(*v0 + 80);
  v2 = sub_1B7A9AB60();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  sub_1B7A2991C();
  v6 = (*(*(v1 - 8) + 48))(v5, 1, v1) != 1;
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_1B7A29434(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_1B7A9AB60();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - v6;
  v19 = sub_1B7A99350();
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7A98CC0();
  MEMORY[0x1EEE9AC00](v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
  sub_1B7A98D10();
  *(swift_allocObject() + 16) = xmmword_1B7A9C180;
  sub_1B7A98CB0();
  sub_1B7A98CA0();
  v18 = v1;
  v12 = sub_1B7A8B06C(a1, v4, *(v3 + 88), *(v3 + 96));
  v23 = MEMORY[0x1E69E6158];
  v22[0] = v12;
  v22[1] = v13;
  sub_1B7A98C60();
  sub_1B7A05FE0(v22);
  sub_1B7A98CA0();
  sub_1B7A98CD0();
  sub_1B7A9A1E0();
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v14 = v19;
  (*(v8 + 104))(v10, *MEMORY[0x1E69AB100], v19);
  sub_1B7A99E20();

  (*(v8 + 8))(v10, v14);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v15 = *(v4 - 8);
  (*(v15 + 16))(v7, a1, v4);
  (*(v15 + 56))(v7, 0, 1, v4);
  sub_1B7A2A1B4(v7);
  return (*(v20 + 8))(v7, v21);
}

uint64_t sub_1B7A29804()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();

  return v1;
}

uint64_t sub_1B7A298DC(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1B7A29A3C(a1);
  return v2;
}

uint64_t sub_1B7A2991C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B7A96F20();
}

uint64_t sub_1B7A29A3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  sub_1B7A9AB60();
  v5 = sub_1B7A96F50();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-v7];
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19[-v11];
  v13 = v3[14];
  (*(*(v4 - 8) + 56))(&v19[-v11], 1, 1, v4, v10);
  v14 = v3[11];
  v15 = v3[12];
  sub_1B7A29C94(v12, v4);
  (*(v6 + 32))(v1 + v13, v8, v5);
  type metadata accessor for FlowStackAuthority(0, v4, v14, v15);
  v16 = sub_1B7A895C8();
  swift_beginAccess();
  v17 = *v16;
  v20 = v16;
  sub_1B7A28F54(&v20, v17);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B7A29C94(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7A9AB60();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, a1, v3, v5);
  sub_1B7A28F54(v7, v3);
  return (*(v4 + 8))(a1, v3);
}

uint64_t sub_1B7A29D88(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1B7A96F30();
}

uint64_t sub_1B7A29E5C()
{
  v1 = *(*v0 + 80);
  v2 = sub_1B7A9AB60();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  sub_1B7A2991C();
  LODWORD(v1) = (*(*(v1 - 8) + 48))(v5, 1, v1);
  result = (*(v3 + 8))(v5, v2);
  if (v1 != 1)
  {
    sub_1B7A29804();
    sub_1B7A88ABC();
  }

  return result;
}

uint64_t sub_1B7A29F8C()
{
  swift_beginAccess();
  sub_1B7A9AB60();
  sub_1B7A96F50();
  sub_1B7A96EF0();
  return swift_endAccess();
}

uint64_t sub_1B7A2A024()
{
  v1 = *(*v0 + 104);
  type metadata accessor for FlowStackAuthority(255, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  v2 = sub_1B7A96F50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 112);
  sub_1B7A9AB60();
  v4 = sub_1B7A96F50();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1B7A2A144()
{
  sub_1B7A2A024();

  return swift_deallocClassInstance();
}

uint64_t sub_1B7A2A1B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = sub_1B7A9AB60();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  v12[4] = v4;
  v13 = *(v3 + 88);
  v9 = v13;
  v14 = *(v3 + 96);
  v10 = v14;
  swift_getKeyPath();
  v12[0] = v4;
  v12[1] = v9;
  v12[2] = v10;
  swift_getKeyPath();
  (*(v6 + 16))(v8, a1, v5);

  sub_1B7A96F30();
  return sub_1B7A29E5C();
}

uint64_t sub_1B7A2A3B8(uint64_t a1, uint64_t (*a2)(void))
{
  sub_1B7A8FD3C();
  v3 = a2();

  return v3;
}

uint64_t FlowAuthority.init(tabSelection:tabContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  swift_getAssociatedTypeWitness();
  v12 = sub_1B7A98870();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18 - v14;
  type metadata accessor for FlowStackTabsAuthority(0, a3, a4, a5);
  (*(v13 + 16))(v15, a1, v12);
  v16 = sub_1B7A8FCEC(v15, a2);
  result = (*(v13 + 8))(a1, v12);
  *a6 = v16;
  return result;
}

uint64_t FlowAuthority.init(initialTabSelection:tabContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v23 = a1;
  v24 = a2;
  v25 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1B7A98870();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for _TransientSelection(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v16 = swift_allocObject();
  v16[2] = sub_1B7A2ACB4(a1, *(*v16 + 80));
  sub_1B7A9A760();

  v17 = sub_1B7A9A750();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v16;

  v20 = sub_1B7A9A750();
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v19;
  v21[4] = a3;
  v21[5] = a4;
  v21[6] = a5;
  v21[7] = v16;
  sub_1B7A98840();
  FlowAuthority.init(tabSelection:tabContent:)(v13, v24, a3, a4, a5, &v26);

  result = (*(*(AssociatedTypeWitness - 8) + 8))(v23, AssociatedTypeWitness);
  *v25 = v26;
  return result;
}

uint64_t sub_1B7A2A798@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A2A848(a1);
}

uint64_t sub_1B7A2A848@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v5));
  sub_1B7A2AFB4(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t sub_1B7A2A928(uint64_t a1)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A2AE2C();
}

uint64_t FlowAuthority.init(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v21 - v12;
  v14 = sub_1B7A98870();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v21 - v15;
  sub_1B7A9AC60();
  sub_1B7A98850();
  (*(v11 + 8))(v13, AssociatedTypeWitness);
  sub_1B7A2AC40(a2, a2);
  v17 = *(a2 - 8);
  swift_allocObject();
  v18 = sub_1B7A9A650();
  (*(v17 + 16))(v19, a1, a2);
  sub_1B7A9A6E0();
  FlowAuthority.init(tabSelection:tabContent:)(v16, v18, a2, a3, a4, &v22);
  result = (*(v17 + 8))(a1, a2);
  *a5 = v22;
  return result;
}

uint64_t sub_1B7A2AC40(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46480, &unk_1B7A9D190);
  }

  else
  {

    return sub_1B7A9AE30();
  }
}

uint64_t sub_1B7A2ACB4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1B7A9ACB0();
  return sub_1B7A9ACA0();
}

uint64_t objectdestroyTm_4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7A2AD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A2AE2C()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v1 + v3));
  sub_1B7A2AF00(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1B7A2AF00(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v3 - 8);
  (*(v5 + 8))(a1, v3);
  return (*(v5 + 16))(a1, v4, v3);
}

uint64_t sub_1B7A2B00C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1B7A2B0A4(uint64_t a1, id a2)
{
  v4 = sub_1B7A96B90();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  (*(v5 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v6);
  sub_1B7A9A1B0();
  if (!a2)
  {
    sub_1B7A9A190();
    v13 = 0u;
    v14 = 0u;
    sub_1B7A9A170();
    v17 = 0u;
    v18 = 0u;
LABEL_13:
    sub_1B7957888(&v17, &qword_1EBA46B50, &qword_1B7A9DD90);
    goto LABEL_14;
  }

  v8 = [a2 sourceApplication];
  if (v8)
  {
    v9 = v8;
    sub_1B7A9A4B0();
  }

  sub_1B7A9A190();
  if ([a2 annotation])
  {
    sub_1B7A9AB80();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  sub_1B7A9A170();
  a2 = a2;
  v10 = sub_1B7A9A480();
  v11 = [a2 valueForKeyPath_];

  if (v11)
  {
    sub_1B7A9AB80();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
    goto LABEL_13;
  }

  swift_dynamicCast();
LABEL_14:
  sub_1B7A9A180();

  return (*(v5 + 8))(a1, v4);
}

void DeepLink.init(sceneContext:)(void *a1)
{
  v2 = sub_1B7A96B90();
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 URL];
  sub_1B7A96B60();

  sub_1B7A2B0A4(v5, [a1 options]);
}

uint64_t DeepLink.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B7A96B90();
  v61 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v56 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = sub_1B7A9A1C0();
  v18 = *(v17 - 8);
  v62 = v17;
  v63 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 activityType];
  v23 = sub_1B7A9A4B0();
  v25 = v24;

  if (v23 == sub_1B7A9A4B0() && v25 == v26)
  {
  }

  else
  {
    v28 = sub_1B7A9AE80();

    if ((v28 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v29 = [a1 webpageURL];
  if (!v29)
  {
LABEL_11:

    v35 = v62;
    v36 = *(v63 + 56);

    return v36(a2, 1, 1, v35);
  }

  v58 = a2;
  v30 = v29;
  sub_1B7A96B60();

  v31 = v61;
  v57 = *(v61 + 32);
  v57(v16, v13, v4);
  v32 = *(v31 + 16);
  v32(v10, v16, v4);
  sub_1B7A9A1B0();
  v33 = sub_1B7A9A480();
  v34 = [a1 valueForKey_];

  if (v34)
  {
    sub_1B7A9AB80();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66 = v64;
  v67 = v65;
  if (*(&v65 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1B7957888(&v66, &qword_1EBA46B50, &qword_1B7A9DD90);
  }

  sub_1B7A9A190();
  v38 = sub_1B7A9A480();
  v39 = [a1 valueForKeyPath_];

  if (v39)
  {
    sub_1B7A9AB80();
    swift_unknownObjectRelease();
  }

  else
  {
    v64 = 0u;
    v65 = 0u;
  }

  v66 = v64;
  v67 = v65;
  if (*(&v65 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    sub_1B7957888(&v66, &qword_1EBA46B50, &qword_1B7A9DD90);
  }

  sub_1B7A9A180();
  v40 = [a1 referrerURL];
  if (v40)
  {
    v41 = v59;
    v42 = v40;
    sub_1B7A96B60();

    v43 = v60;
    v57(v60, v41, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48C50, &qword_1B7AA4040);
    v44 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46578, &qword_1B7A9D360) - 8);
    v45 = v32;
    v46 = (*(*v44 + 80) + 32) & ~*(*v44 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1B7A9C180;
    v48 = (v47 + v46);
    v49 = v44[14];
    *v48 = sub_1B7A9A4B0();
    v48[1] = v50;
    v45(v48 + v49, v43, v4);
    v51 = sub_1B7991080(v47);
    swift_setDeallocating();
    sub_1B7957888(v48, &qword_1EBA46578, &qword_1B7A9D360);
    swift_deallocClassInstance();
    *(&v67 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48C58, &qword_1B7AA4048);
    *&v66 = v51;
    sub_1B7A9A170();

    v52 = *(v61 + 8);
    v52(v43, v4);
    v52(v16, v4);
  }

  else
  {
    (*(v61 + 8))(v16, v4);
  }

  v53 = v58;
  v54 = v21;
  v55 = v62;
  (*(v63 + 32))(v58, v54, v62);
  return (*(v63 + 56))(v53, 0, 1, v55);
}

uint64_t sub_1B7A2BAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MediaArtwork.ProtocolRequest(0, a2, a3, a4);
  MediaArtwork.ProtocolRequest.cachedImagesKey.getter(v12);
  v6 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v9 + 16))(&v12[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_1B7A9AC20();
  (*(*(v5 - 8) + 8))(a1, v5);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t MediaArtwork.CacheKey.hashValue.getter()
{
  sub_1B7A9AF80();
  _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE8CacheKeyV4hash4intoys6HasherVz_tF_0();
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7A2BC78()
{
  sub_1B7A9AF80();
  _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE8CacheKeyV4hash4intoys6HasherVz_tF_0();
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7A2BCBC()
{
  sub_1B7A9AF80();
  _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE8CacheKeyV4hash4intoys6HasherVz_tF_0();
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7A2BD00@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1B7A9A160();
  v10 = type metadata accessor for MediaArtwork.ProtocolRequest(0, a4, v8, v9);
  *a5 = MediaArtwork.ProtocolRequest.size.getter();
  *(a5 + 8) = v11;
  *(a5 + 16) = *(a1 + *(v10 + 44));
  sub_1B7A99CB0();

  v12 = sub_1B7A99CA0();
  result = (*(*(v10 - 8) + 8))(a1, v10);
  *(a5 + 24) = v12;
  return result;
}

uint64_t MediaArtwork.CacheValue.debugDescription.getter(uint64_t a1)
{
  sub_1B7A99CB0();
  sub_1B7A9AE60();
  MEMORY[0x1B8CAB750](64, 0xE100000000000000);
  v1 = sub_1B7A9A880();
  MEMORY[0x1B8CAB750](v1);

  MEMORY[0x1B8CAB750](120, 0xE100000000000000);
  v2 = sub_1B7A9A880();
  MEMORY[0x1B8CAB750](v2);

  return 0;
}

unint64_t sub_1B7A2BEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48C60[0];
  if (!qword_1EBA48C60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBA48C60);
  }

  return result;
}

uint64_t sub_1B7A2BF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v14 = type metadata accessor for MediaArtwork.ProtocolRequest(0, a4, a3, a4);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v23[-v16];
  (*(v18 + 16))(&v23[-v16], a1, v15);
  sub_1B7A2BAF8(v17, a4, v19, v20);
  v24 = a2;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a1;
  v30 = a7;
  type metadata accessor for _MultiCacheImageMatch(0, a3, a6, v21);
  sub_1B7A98D20();
  sub_1B7A2CFF8(v31);
  return v32;
}

uint64_t sub_1B7A2C0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t *a7@<X8>, double a8@<D0>)
{
  v45 = a3;
  *&v49 = a1;
  v62 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v48 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &AssociatedConformanceWitness - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedTypeWitness();
  v47 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &AssociatedConformanceWitness - v16;
  v55 = a2;
  v56 = v45;
  v57 = a4;
  v58 = a5;
  v59 = a6;
  KeyPath = swift_getKeyPath();
  v51 = a2;
  v52 = a4;
  v45 = a4;
  v53 = a5;
  v54 = KeyPath;
  v19 = v49;
  v20 = v50;
  sub_1B7A99C50();

  (*(v48 + 16))(v46, v19, AssociatedTypeWitness);
  sub_1B7A9A540();
  swift_getAssociatedConformanceWitness();
  sub_1B7A9AB70();
  if (v61)
  {
    v49 = v60;
    v48 = v61;
    type metadata accessor for MediaArtwork.ProtocolRequest(0, v45, v21, v22);
    v23 = v49;
    v24 = v48;
    v25 = 0x8000000000000000;
    v26 = 1.79769313e308;
    AssociatedConformanceWitness = v20;
    while (2)
    {
      v46 = v25;
      while (1)
      {
        v49 = v23;
        v27 = v23;
        *&v23 = *(&v23 + 1);
        v50 = v23;
        v48 = v24;
        v28 = *(&v24 + 1);
        if (MediaArtwork.ProtocolRequest.size.getter() == *&v49 && v29 == *&v50)
        {
          (*(v47 + 8))(v17, v15);

          result = sub_1B7A2D140(v27, *(&v27 + 1), v48);
          v28 |= 0x4000000000000000uLL;
          goto LABEL_24;
        }

        if (*&v49 > 0.0 && *&v50 > 0.0 && MediaArtwork.ProtocolRequest.size.getter() > 0.0 && v31 > 0.0)
        {
          v32 = *&v49 / *&v50;
          v33 = MediaArtwork.ProtocolRequest.size.getter();
          if (vabdd_f64(v32, v33 / v34) < a8 && (sub_1B7A99C80() & 1) != 0)
          {
            v35 = MediaArtwork.ProtocolRequest.size.getter();
            MediaArtwork.ProtocolRequest.size.getter();
            v37 = v36;
            v38 = MediaArtwork.ProtocolRequest.size.getter();
            v40 = *&v50 - v39;
            v41 = *&v49 - v38;
            if (v37 >= v35)
            {
              v41 = v40;
            }

            v42 = fabs(v41);
            if (v42 < v26)
            {
              break;
            }
          }
        }

        sub_1B7A2D140(v27, *(&v27 + 1), v48);
        sub_1B7A9AB70();
        v24 = v61;
        v23 = v60;
        if (!v61)
        {
          v28 = v46;
          goto LABEL_23;
        }
      }

      sub_1B7A2D140(v27, *(&v27 + 1), v48);
      sub_1B7A9AB70();
      v24 = v61;
      v23 = v60;
      v25 = v28;
      v26 = v42;
      if (v61)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v28 = 0x8000000000000000;
  }

LABEL_23:
  result = (*(v47 + 8))(v17, v15);
LABEL_24:
  *v62 = v28;
  return result;
}

uint64_t sub_1B7A2C61C(__int128 *a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return v3;
}

uint64_t sub_1B7A2C690(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = a3;
  v27 = a4;
  v16 = type metadata accessor for MediaArtwork.ProtocolRequest(0, a7, a3, a4);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  (*(v20 + 16))(&v26 - v18, a1, v17);
  sub_1B7A2BAF8(v19, a7, v21, v22);
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a9;
  v33 = a10;
  v34 = a1;
  v35 = a2;
  swift_getAssociatedTypeWitness();
  sub_1B7A99CB0();
  swift_getTupleTypeMetadata2();
  sub_1B7A98D20();
  sub_1B7A2CFF8(v36);
  v23 = v37;
  if (v38 == 1)
  {
    v24 = swift_allocObject();
    v24[2] = a5;
    v24[3] = a6;
    v24[4] = a7;
    v24[5] = a8;
    v24[6] = a9;
    v24[7] = a10;
    v24[8] = v26;
    v24[9] = v27;

    sub_1B7A99C90();
  }

  return v23;
}

uint64_t sub_1B7A2C8A4@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a10)
{
  v51 = a2;
  v59 = a1;
  v82 = a8;
  v57 = a10;
  v48 = sub_1B7A96D70();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v55 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1B7A9A7E0();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for MediaArtwork.ProtocolRequest(0, a5, v18, v19);
  v49 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v50 = &v46 - v20;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v76 = a6;
  v56 = a7;
  v77 = a7;
  v78 = a10;
  KeyPath = swift_getKeyPath();
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v70 = a6;
  v71 = a7;
  v72 = KeyPath;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1B7A99C50();
  v22 = a5;
  v23 = v56;

  v60 = a3;
  v24 = v59;
  v61 = a4;
  v62 = v22;
  v63 = a6;
  v64 = v23;
  v65 = v57;
  v66 = v59;
  sub_1B7A9A5B0();
  v25 = v80;
  if (v80)
  {
    v57 = v10;
    v26 = v79[1];
    v56 = v79[0];
    v27 = v81;
    v28 = *(*(v24 + *(v58 + 44)) + 16);
    v29 = *(*v28 + *MEMORY[0x1E69E6B68] + 16);
    v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v28 + v30));
    v31 = v53;
    v32 = v52;
    v33 = v54;
    (*(v53 + 16))(v52, v28 + v29, v54);
    os_unfair_lock_unlock((v28 + v30));

    LOBYTE(v28) = MediaArtwork.ProtocolRequestPriorityCoordinator.increasePriority(to:)(v32);
    (*(v31 + 8))(v32, v33);
    v34 = v82;
    if (v28)
    {
      if (qword_1EBA45B80 != -1)
      {
        swift_once();
      }

      v35 = sub_1B7A96DA0();
      __swift_project_value_buffer(v35, qword_1EBA507B8);
      v36 = v55;
      sub_1B7A96D60();
      v37 = sub_1B7A96D90();
      v38 = sub_1B7A9AAA0();
      if (sub_1B7A9AB50())
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        v40 = sub_1B7A96D50();
        _os_signpost_emit_with_name_impl(&dword_1B7954000, v37, v38, v40, "Image.CacheIncreasedRequestPriority", "", v39, 2u);
        v41 = v39;
        v36 = v55;
        MEMORY[0x1B8CACB70](v41, -1, -1);
      }

      (*(v47 + 8))(v36, v48);
    }

    result = sub_1B7A2D140(v56, v26, v25);
    *v34 = v27;
    *(v34 + 8) = 0;
  }

  else
  {
    v43 = v50;
    (*(v49 + 16))(v50, v24, v58);
    swift_getAssociatedTypeWitness();
    sub_1B7A2BD00(v43, v22, v79);
    v44 = v81;
    sub_1B7A99C40();

    v45 = v82;
    *v82 = v44;
    *(v45 + 8) = 1;
  }

  return result;
}

uint64_t sub_1B7A2CEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B7A2CF20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7A2CF68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
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

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1B7A2D078(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  type metadata accessor for MediaArtwork.ProtocolRequest(0, *(v4 + 32), a3, a4);
  v7 = v5 == MediaArtwork.ProtocolRequest.size.getter();
  return v6 == v8 && v7;
}

uint64_t sub_1B7A2D140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1B7A2D184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t get_enum_tag_for_layout_string_18_JetEngine_SwiftUI21_MultiCacheImageMatchOyxG(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1B7A2D1DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B7A2D238(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B7A2D298(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1B7A2D2C4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1B7957D50(a1, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    v5 = v17;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    v7 = MEMORY[0x1EEE9AC00](v6);
    v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v9, v7);
    sub_1B7A33CB0(v9, a2, isUniquelyReferenced_nonNull_native, &v15, v5);
    __swift_destroy_boxed_opaque_existential_1(v16);
    v11 = sub_1B7A991E0();
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v2 = v15;
  }

  else
  {
    sub_1B7957888(a1, &qword_1EBA48EF0, &qword_1B7AA4648);
    sub_1B7A3328C(v16);
    v13 = sub_1B7A991E0();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_1B7957888(v16, &qword_1EBA48EF0, &qword_1B7AA4648);
  }

  return result;
}

uint64_t sub_1B7A2D4B8(uint64_t a1)
{
  v2 = sub_1B7A97580();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1B7A977D0();
}

uint64_t sub_1B7A2D580@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v3);
  return sub_1B7A2DAC0(v5, a2);
}

uint64_t MediaArtwork.body.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_1B7A98F40();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v1, v4);
  return sub_1B7A2DAC0(v6, a1);
}

uint64_t sub_1B7A2D700()
{
  v0 = sub_1B7A9A260();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1B7A9A280();
  __swift_allocate_value_buffer(v1, qword_1EBA507A0);
  __swift_project_value_buffer(v1, qword_1EBA507A0);
  sub_1B7A9A250();
  return sub_1B7A9A270();
}

uint64_t sub_1B7A2D7C8()
{
  v0 = sub_1B7A9A280();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B7A96DA0();
  __swift_allocate_value_buffer(v4, qword_1EBA507B8);
  __swift_project_value_buffer(v4, qword_1EBA507B8);
  if (qword_1EBA45B78 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EBA507A0);
  (*(v1 + 16))(v3, v5, v0);
  sub_1B7A9A230();
  (*(v1 + 8))(v3, v0);
  return sub_1B7A96D80();
}

double MediaArtwork.pageRenderMetrics(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = sub_1B7A98F40();
  (*(*(v7 - 8) + 16))(a2, v2, v7);
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48D68, &qword_1B7AA4338) + 36));
  *v8 = KeyPath;
  v8[1] = sub_1B7A2DC54;
  v8[2] = v6;

  return result;
}

uint64_t sub_1B7A2DA0C(void *a1, uint64_t a2)
{
  sub_1B7A9A160();

  *a1 = a2;
  return result;
}

uint64_t sub_1B7A2DAC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1B7A98F40();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _MediaArtworkBody(0);
  v9 = &a2[v8[6]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = &a2[v8[7]];
  *v10 = swift_getKeyPath();
  v10[40] = 0;
  v11 = &a2[v8[8]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = &a2[v8[9]];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = *(v5 + 16);
  v13(a2, a1, v4);
  v13(v7, a1, v4);
  sub_1B7A2DC7C(v7, &a2[v8[5]]);
  return (*(v5 + 8))(a1, v4);
}

uint64_t MediaArtwork.subscript.getter(uint64_t a1)
{
  result = sub_1B7A98EE0();
  if (result)
  {
    return sub_1B7A98530();
  }

  return result;
}

uint64_t sub_1B7A2DC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MediaArtworkLoaderImage(0);
  v5 = (a2 + v4[5]);
  type metadata accessor for MediaArtworkLoader(0);
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader__imagePhase;
  v8 = *MEMORY[0x1E697C118];
  v9 = sub_1B7A97530();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6 + v7, v8, v9);
  (*(v10 + 56))(v6 + v7, 0, 1, v9);
  v11 = v6 + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader_loadingState;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 2;
  sub_1B7A96CE0();
  sub_1B7A986C0();
  *v5 = v20;
  v5[1] = v21;
  v12 = a2 + v4[6];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a2 + v4[7];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v4[8];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E00, &unk_1B7A9C590);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v4[9];
  *v15 = swift_getKeyPath();
  *(v15 + 8) = 0;
  v16 = a2 + v4[10];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a2 + v4[11];
  *v17 = swift_getKeyPath();
  *(v17 + 40) = 0;
  v18 = sub_1B7A98F40();
  return (*(*(v18 - 8) + 32))(a2, a1, v18);
}

uint64_t sub_1B7A2DECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26[0] = sub_1B7A97880();
  v6 = *(v26[0] - 8);
  MEMORY[0x1EEE9AC00](v26[0]);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MediaArtworkStyleConfiguration(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _MediaArtworkBody(0);
  sub_1B797C4B8(v28);
  v13 = v29;
  v27 = v30;
  v26[1] = __swift_project_boxed_opaque_existential_1(v28, v29);
  v14 = sub_1B7A98F40();
  (*(*(v14 - 8) + 16))(v11, v3, v14);
  v15 = *(v9 + 20);
  v16 = sub_1B7A97530();
  (*(*(v16 - 8) + 16))(&v11[v15], a1, v16);
  v17 = v3 + *(v12 + 32);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
  }

  else
  {

    sub_1B7A9AA10();
    v19 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B79A5B8C(v18, 0);
    (*(v6 + 8))(v8, v26[0]);
    v18 = v31;
  }

  *&v11[*(v9 + 24)] = v18;
  v20 = MediaArtworkStyle._body(configuration:)(v11, v13, v27);
  sub_1B7A34230(v11);
  _s18_JetEngine_SwiftUI30MediaArtworkStyleConfigurationV4sizeSo6CGSizeVvg_0();
  _s18_JetEngine_SwiftUI30MediaArtworkStyleConfigurationV4sizeSo6CGSizeVvg_0();
  sub_1B7A98A20();
  sub_1B7A97260();
  v21 = v31;
  v22 = v32;
  v23 = v33;
  v24 = v34;
  *a2 = v20;
  *(a2 + 8) = v21;
  *(a2 + 16) = v22;
  *(a2 + 24) = v23;
  *(a2 + 32) = v24;
  *(a2 + 40) = v35;
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_1B7A2E1DC@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_1B7A97880();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for _MediaArtworkBody(0);
  v53 = *(v4 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E78, &qword_1B7AA4530);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v45 - v7;
  v9 = sub_1B7A97530();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 20);
  v55 = v1;
  v13 = (v1 + v12 + *(type metadata accessor for MediaArtworkLoaderImage(0) + 20));
  v15 = *v13;
  v14 = v13[1];
  v56 = v15;
  v57 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E80, &qword_1B7AA4538);
  sub_1B7A986D0();
  v16 = v74[0];
  swift_getKeyPath();
  v56 = v16;
  sub_1B7A32474(&qword_1EBA48E88, type metadata accessor for MediaArtworkLoader, &unk_1B7AA44C0);
  sub_1B7A96CB0();

  v17 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader__imagePhase;
  swift_beginAccess();
  sub_1B7957820(v16 + v17, v8, &qword_1EBA48E78, &qword_1B7AA4530);

  v18 = v10;
  v19 = v9;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v52 = v5;
    v48 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1B7957888(v8, &qword_1EBA48E78, &qword_1B7AA4530);
    v20 = v55 + *(v4 + 24);
    v21 = *v20;
    if (*(v20 + 8) == 1)
    {
      v22 = *v20;
      _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE5SizedV9_resource9withScaleAA0cD8Resource_pSg12CoreGraphics7CGFloatV_tF_0();
    }

    else
    {

      sub_1B7A9AA10();
      v32 = sub_1B7A97E70();
      sub_1B7A96D30();

      v33 = v49;
      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B795AE10(v21, 0);
      v34 = v51;
      v35 = *(v50 + 8);
      v35(v33, v51);
      _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE5SizedV9_resource9withScaleAA0cD8Resource_pSg12CoreGraphics7CGFloatV_tF_0();

      sub_1B7A9AA10();
      v36 = sub_1B7A97E70();
      sub_1B7A96D30();

      sub_1B7A97870();
      swift_getAtKeyPath();
      sub_1B795AE10(v21, 0);
      v35(v33, v34);
      v22 = v56;
    }

    v37 = v48;
    v38 = v53;
    v39 = v55;
    sub_1B797C4B8(&v56);
    v40 = v59;
    v41 = v60;
    __swift_project_boxed_opaque_existential_1(&v56, v59);
    v42 = (*(v41 + 24))(v40, v41);
    sub_1B7A32CDC(v39, v37);
    v43 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v44 = swift_allocObject();
    sub_1B7A32D40(v37, v44 + v43);
    v74[9] = swift_getKeyPath();
    v75 = 0;
    KeyPath = swift_getKeyPath();
    v77 = 0;
    v78 = swift_getKeyPath();
    v79 = 0;
    v72 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E90, &qword_1B7AA45C0);
    sub_1B7A986C0();
    v80 = v73;
    v74[5] = v22;
    v74[6] = v42;
    v74[7] = sub_1B7A32DA4;
    v74[8] = v44;
    __swift_destroy_boxed_opaque_existential_1(&v56);
    sub_1B7957820(v74, &v56, &qword_1EBA48E98, &qword_1B7AA45C8);
    v71 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48EA0, &qword_1B7AA45D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E98, &qword_1B7AA45C8);
    sub_1B7A32E54(&qword_1EBA48EA8, &qword_1EBA48EA0, &qword_1B7AA45D0, sub_1B7A32E24);
    sub_1B797EC34(&qword_1EBA48ED0, &qword_1EBA48E98, &qword_1B7AA45C8, &unk_1B7AA3DF8);
    sub_1B7A97B30();
    return sub_1B7957888(v74, &qword_1EBA48E98, &qword_1B7AA45C8);
  }

  else
  {
    v23 = *(v10 + 32);
    v24 = v52;
    v48 = v19;
    v23(v52, v8, v19);
    v25 = v55;
    sub_1B7A2DECC(v24, &v56);
    v50 = v57;
    v51 = v56;
    v26 = v58;
    v49 = v59;
    v27 = v60;
    v46 = v62;
    v47 = v61;
    sub_1B7A32CDC(v25, &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v53 + 80) + 16) & ~*(v53 + 80);
    v29 = swift_allocObject();
    sub_1B7A32D40(&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    LOBYTE(v74[0]) = v26;
    LOBYTE(v73) = v27;
    sub_1B7A32CDC(v25, &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v30 = swift_allocObject();
    sub_1B7A32D40(&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v28);
    v56 = v51;
    v57 = v50;
    v58 = v26;
    v59 = v49;
    LOBYTE(v60) = v27;
    v61 = v47;
    v62 = v46;
    v63 = 0;
    v64 = 0;
    v65 = sub_1B7A331CC;
    v66 = v29;
    v67 = sub_1B7A331E4;
    v68 = v30;
    v71 = 0;
    v69 = 0;
    v70 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48EA0, &qword_1B7AA45D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E98, &qword_1B7AA45C8);
    sub_1B7A32E54(&qword_1EBA48EA8, &qword_1EBA48EA0, &qword_1B7AA45D0, sub_1B7A32E24);
    sub_1B797EC34(&qword_1EBA48ED0, &qword_1EBA48E98, &qword_1B7AA45C8, &unk_1B7AA3DF8);
    sub_1B7A97B30();
    return (*(v18 + 8))(v52, v48);
  }
}

uint64_t sub_1B7A2EA74()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for _MediaArtworkBody(0);
  type metadata accessor for MediaArtworkLoaderImage(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E80, &qword_1B7AA4538);
  sub_1B7A986D0();
  sub_1B7A2FCD4();
}

uint64_t sub_1B7A2EB60()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = type metadata accessor for _MediaArtworkBody(0);
  MEMORY[0x1EEE9AC00](v0);
  v3[2] = v1;
  sub_1B7A2FB4C(sub_1B7A33270, v3, "_JetEngine_SwiftUI/MediaArtwork+View.swift", 42, 2u, 223);
}

__n128 sub_1B7A2EC64@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B7A2DECC(a1, v8);
  v3 = v8[1];
  v4 = v9;
  v5 = v10;
  v6 = v11;
  result = v12;
  *a2 = v8[0];
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_1B7A2ECC4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1B7A32474(&qword_1EBA48E88, type metadata accessor for MediaArtworkLoader, &unk_1B7AA44C0);
  sub_1B7A96CB0();

  v3 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader__imagePhase;
  swift_beginAccess();
  return sub_1B7957820(v5 + v3, a1, &qword_1EBA48E78, &qword_1B7AA4530);
}

uint64_t sub_1B7A2ED9C()
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A2EE40();
}

uint64_t sub_1B7A2EE40()
{
  v1 = v0;
  v2 = sub_1B7A9A7E0();
  v92 = *(v2 - 8);
  v93 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B7A97580();
  v90 = *(v5 - 8);
  v91 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v88 = (&v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_1B7A991E0();
  v7 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B7A97880();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MediaArtworkLoaderImage(0);
  v96 = v10;
  v97 = v14;
  v15 = v1 + *(v14 + 28);
  v16 = *v15;
  LODWORD(v15) = *(v15 + 8);
  v94 = *&v16;
  v95 = v11;
  v89 = v4;
  v84 = v15;
  if (v15 != 1)
  {

    sub_1B7A9AA10();
    v17 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE10(v16, 0);
    (*(v11 + 8))(v13, v10);
  }

  sub_1B7A98EB0();
  v18 = (v1 + v97[5]);
  v19 = *v18;
  v86 = v18[1];
  v87 = v19;
  v105 = v19;
  v106 = v86;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E80, &qword_1B7AA4538);
  sub_1B7A986D0();
  v20 = v98;
  v21 = __swift_project_boxed_opaque_existential_1(v111, v111[3]);
  v22 = MEMORY[0x1EEE9AC00](v21);
  (*(v24 + 16))(&v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  sub_1B7A9AC20();
  v25 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader_loadingState;
  swift_beginAccess();
  sub_1B7957820(v20 + v25, &v105, &qword_1EBA48ED8, &qword_1B7AA45E8);
  sub_1B7957820(&v105, &v98, &qword_1EBA48ED8, &qword_1B7AA45E8);
  if (v101)
  {
    if (v101 == 1)
    {
      sub_1B795C1E4(&v98, &v102);
    }

    else
    {
      v104 = 0;
      v102 = 0u;
      v103 = 0u;
    }
  }

  else
  {
    sub_1B795C1E4((&v98 + 8), &v102);
  }

  sub_1B7957888(&v105, &qword_1EBA48ED8, &qword_1B7AA45E8);
  if (*(&v103 + 1))
  {
    sub_1B795C1E4(&v102, v108);
    v26 = __swift_project_boxed_opaque_existential_1(v108, v108[3]);
    v27 = MEMORY[0x1EEE9AC00](v26);
    (*(v29 + 16))(&v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
    sub_1B7A9AC20();
    v30 = MEMORY[0x1B8CABE40](&v109, &v105);

    sub_1B7991408(&v105);
    sub_1B7991408(&v109);
    __swift_destroy_boxed_opaque_existential_1(v108);
    v31 = v96;
    if (v30)
    {
      return __swift_destroy_boxed_opaque_existential_1(v111);
    }
  }

  else
  {

    sub_1B7991408(&v109);
    sub_1B7957888(&v102, &qword_1EBA48EE0, &qword_1B7AA45F0);
    v31 = v96;
  }

  v32 = v1 + v97[10];
  v33 = *v32;
  if (*(v32 + 8) == 1)
  {
  }

  else
  {

    sub_1B7A9AA10();
    v34 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B79A5B8C(v33, 0);
    (*(v95 + 8))(v13, v31);
    v33 = v105;
  }

  v82 = v1;
  _s18_JetEngine_SwiftUI30MediaArtworkStyleConfigurationV4sizeSo6CGSizeVvg_0();
  v36 = v35;
  v38 = v37;
  sub_1B7A991F0();
  type metadata accessor for CGSize(0);
  v107 = v39;
  v105 = v36;
  v106 = v38;
  sub_1B7957D50(&v105, &v98);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v109 = v33;
  v41 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v99);
  sub_1B7A33368(v9, isUniquelyReferenced_nonNull_native, &v109, *v41, v41[1]);
  v42 = *(v7 + 8);
  v43 = v83;
  v42(v9, v83);
  __swift_destroy_boxed_opaque_existential_1(&v98);
  v44 = v109;
  sub_1B7999E90(v111, &v105);
  sub_1B7A991F0();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48EE8, &qword_1B7AA45F8);
  *&v98 = swift_allocObject();
  sub_1B7999E90(&v105, v98 + 16);
  sub_1B7957D50(&v98, &v109);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v108[0] = v44;
  v46 = __swift_mutable_project_boxed_opaque_existential_1(&v109, v110);
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = (&v81 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49, v47);
  sub_1B7A3354C(v49, v9, v45, v108);
  v42(v9, v43);
  __swift_destroy_boxed_opaque_existential_1(&v105);
  __swift_destroy_boxed_opaque_existential_1(&v109);
  v51 = v108[0];
  v52 = v84;
  if (!v84)
  {
    v53 = *&v94;

    sub_1B7A9AA10();
    v54 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE10(v53, 0);
    (*(v95 + 8))(v13, v96);
  }

  v55 = v89;
  v56 = v82;
  _s9JetEngine12MediaArtworkV01_aB8_SwiftUIE5SizedV9_resource9withScaleAA0cD8Resource_pSg12CoreGraphics7CGFloatV_tF_0();
  v57 = v56 + v97[9];
  v58 = *v57;
  if (*(v57 + 8) != 1)
  {

    sub_1B7A9AA10();
    v62 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B79A5B8C(v58, 0);
    (*(v95 + 8))(v13, v96);
    v58 = v98;
    if (!v52)
    {
      goto LABEL_19;
    }

LABEL_21:
    v61 = v94;
    goto LABEL_22;
  }

  if (v52)
  {
    goto LABEL_21;
  }

LABEL_19:
  v59 = *&v94;

  sub_1B7A9AA10();
  v60 = sub_1B7A97E70();
  sub_1B7A96D30();

  sub_1B7A97870();
  swift_getAtKeyPath();
  sub_1B795AE10(v59, 0);
  (*(v95 + 8))(v13, v96);
  v61 = *&v98;
LABEL_22:
  v63 = v88;
  sub_1B797C0CC(v88);
  sub_1B7A9A780();
  sub_1B7957820(&v105, &v109, &qword_1EBA46B48, &unk_1B7A9DD80);
  if (v110)
  {
    sub_1B795C1E4(&v109, &v98);
    v64 = v99;
    v65 = v100;
    v66 = __swift_project_boxed_opaque_existential_1(&v98, v99);
    v67 = sub_1B7A8CCE0(v66, v58, v51, 1, v63, v55, v64, v65, v61);
    v68 = v63;
    v69 = v67;
    v71 = v70;

    (*(v92 + 8))(v55, v93);
    (*(v90 + 8))(v68, v91);
    __swift_destroy_boxed_opaque_existential_1(&v98);
  }

  else
  {

    (*(v92 + 8))(v55, v93);
    (*(v90 + 8))(v63, v91);
    sub_1B7957888(&v109, &qword_1EBA46B48, &unk_1B7A9DD80);
    v69 = 0;
    v71 = 0;
  }

  *&v98 = v87;
  *(&v98 + 1) = v86;
  sub_1B7A986D0();
  v72 = v97;
  sub_1B797C4B8(&v98);
  v73 = v99;
  v74 = v100;
  __swift_project_boxed_opaque_existential_1(&v98, v99);
  v75 = (*(v74 + 24))(v73, v74);
  v76 = v56 + v72[6];
  v77 = *v76;
  v78 = *(v76 + 8);

  if ((v78 & 1) == 0)
  {
    sub_1B7A9AA10();
    v79 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v77);
    (*(v95 + 8))(v13, v96);
    v77 = v109;
  }

  sub_1B7A2FDDC(v111, v69, v71, v75, v77);

  sub_1B7974C44(v69, v71);

  sub_1B7957888(&v105, &qword_1EBA46B48, &unk_1B7A9DD80);
  __swift_destroy_boxed_opaque_existential_1(&v98);
  return __swift_destroy_boxed_opaque_existential_1(v111);
}

uint64_t sub_1B7A2FB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1B7A9A750();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1B7A06064();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1B7A9AC50();
    MEMORY[0x1B8CAB750](0xD00000000000003FLL, 0x80000001B7AC7110);
    v12 = sub_1B7A9AFF0();
    MEMORY[0x1B8CAB750](v12);

    MEMORY[0x1B8CAB750](46, 0xE100000000000000);
    result = sub_1B7A9AD70();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7A2FCD4()
{
  v1 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader_loadingState;
  swift_beginAccess();
  result = sub_1B7957820(v0 + v1, &v5, &qword_1EBA48ED8, &qword_1B7AA45E8);
  if (v7)
  {
    if (v7 == 1)
    {
      return sub_1B7957888(&v5, &qword_1EBA48ED8, &qword_1B7AA45E8);
    }
  }

  else
  {
    sub_1B7A9A7F0();

    memset(v3, 0, sizeof(v3));
    v4 = 2;
    swift_beginAccess();
    sub_1B7A33800(v3, v0 + v1);
    swift_endAccess();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t sub_1B7A2FDDC(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v61 = a4;
  v62 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E78, &qword_1B7AA4530);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v60 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464A0, &qword_1B7AA4600);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  if (a2)
  {
    v24 = &v53 - v23;
    v54 = v18;

    v25 = a2;
    sub_1B7A2FCD4();
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    v68 = 2;
    v26 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader_loadingState;
    v55 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader_loadingState;
    swift_beginAccess();
    sub_1B7A33800(&v65, v6 + v26);
    v27 = swift_endAccess();
    v59 = a3;
    v58 = v25;
    v25(v27);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = *(v19 + 16);
    v56 = v24;
    v29(v21, v24, v18);
    v53 = a1;
    sub_1B7999E90(a1, &v65);
    v30 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v31 = (v20 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = v6;
    v33 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    *(v35 + 16) = v62;
    v57 = v19;
    v36 = v35 + v30;
    v37 = v54;
    (*(v19 + 32))(v36, v21);
    *(v35 + v31) = v61;
    *(v35 + v33) = v28;
    v38 = v32;
    v39 = v35 + v34;
    v40 = v55;
    sub_1B795C1E4(&v65, v39);
    v41 = sub_1B7A9A7E0();
    v42 = v60;
    (*(*(v41 - 8) + 56))(v60, 1, 1, v41);
    v43 = swift_allocObject();
    *(v43 + 16) = &unk_1B7AA4610;
    *(v43 + 24) = v35;

    v44 = sub_1B7A9A800();
    sub_1B7957888(v42, &qword_1EBA46B40, &qword_1B7A9DF90);
    sub_1B7957820(v38 + v40, &v65, &qword_1EBA48ED8, &qword_1B7AA45E8);
    v64 = v68;
    v63[0] = v65;
    v63[1] = v66;
    v63[2] = v67;
    if (v68)
    {
      if (v68 == 1)
      {
        sub_1B7974C44(v58, v59);

        sub_1B7957888(v63, &qword_1EBA48ED8, &qword_1B7AA45E8);
        return (*(v57 + 8))(v56, v37);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v63 + 1);
    }

    isCancelled = swift_task_isCancelled();
    sub_1B7974C44(v58, v59);

    (*(v57 + 8))(v56, v37);
    if (isCancelled)
    {
    }

    else
    {
      *&v65 = v44;
      sub_1B7999E90(v53, &v65 + 8);
      v68 = 0;
      swift_beginAccess();
      sub_1B7A33800(&v65, v38 + v40);
      return swift_endAccess();
    }
  }

  else
  {
    swift_getKeyPath();
    *&v65 = v6;
    sub_1B7A32474(&qword_1EBA48E88, type metadata accessor for MediaArtworkLoader, &unk_1B7AA44C0);
    sub_1B7A96CB0();

    v46 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader__imagePhase;
    swift_beginAccess();
    sub_1B7957820(v6 + v46, v15, &qword_1EBA48E78, &qword_1B7AA4530);
    v47 = sub_1B7A97530();
    v48 = *(v47 - 8);
    v49 = v6;
    v50 = (*(v48 + 48))(v15, 1, v47);
    result = sub_1B7957888(v15, &qword_1EBA48E78, &qword_1B7AA4530);
    if (v50 != 1)
    {
      (*(v48 + 56))(v12, 1, 1, v47);
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v53 - 2) = v49;
      *(&v53 - 1) = v12;
      *&v63[0] = v49;
      sub_1B7A96CA0();

      return sub_1B7957888(v12, &qword_1EBA48E78, &qword_1B7AA4530);
    }
  }

  return result;
}

uint64_t sub_1B7A30520()
{
  sub_1B7A9A760();
  v3 = v0;
  return sub_1B7A2FB4C(sub_1B7A343EC, &v2, "_JetEngine_SwiftUI/MediaArtwork+View.swift", 42, 2u, 223);
}

uint64_t sub_1B7A30594@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1B7A32474(&qword_1EBA48E88, type metadata accessor for MediaArtworkLoader, &unk_1B7AA44C0);
  sub_1B7A96CB0();

  v4 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader__imagePhase;
  swift_beginAccess();
  return sub_1B7957820(v3 + v4, a2, &qword_1EBA48E78, &qword_1B7AA4530);
}

uint64_t sub_1B7A3066C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E78, &qword_1B7AA4530);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9[-v5];
  sub_1B7957820(a1, &v9[-v5], &qword_1EBA48E78, &qword_1B7AA4530);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1B7A32474(&qword_1EBA48E88, type metadata accessor for MediaArtworkLoader, &unk_1B7AA44C0);
  sub_1B7A96CA0();

  return sub_1B7957888(v6, &qword_1EBA48E78, &qword_1B7AA4530);
}

uint64_t sub_1B7A307BC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader__imagePhase;
  swift_beginAccess();
  sub_1B7A33C40(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1B7A30828()
{
  v1 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader_loadingState;
  swift_beginAccess();
  sub_1B7957820(v0 + v1, v7, &qword_1EBA48ED8, &qword_1B7AA45E8);
  v6 = v8;
  v5[0] = v7[0];
  v5[1] = v7[1];
  v5[2] = v7[2];
  if (v8)
  {
    if (v8 == 1)
    {
      sub_1B7957888(v5, &qword_1EBA48ED8, &qword_1B7AA45E8);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v5 + 1);
    sub_1B7A9A7F0();
  }

  sub_1B7957888(v0 + OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader__imagePhase, &qword_1EBA48E78, &qword_1B7AA4530);
  sub_1B7957888(v0 + v1, &qword_1EBA48ED8, &qword_1B7AA45E8);
  v2 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader___observationRegistrar;
  v3 = sub_1B7A96CF0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return swift_deallocClassInstance();
}

uint64_t sub_1B7A309B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = sub_1B7A9A760();
  v5[8] = sub_1B7A9A750();
  v7 = sub_1B7A9A710();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B7A30A58, v7, v6);
}

uint64_t sub_1B7A30A58()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 88) = v4;
  *(v4 + 16) = 0;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v9 = *(v0 + 40);
  *(v5 + 16) = v4 + 16;
  *(v5 + 24) = v3;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  *(v5 + 48) = v9;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  v6[2] = v9;
  v6[3] = v4;
  v6[4] = v3;
  *(v0 + 112) = sub_1B7A9A750();
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_1B7A30BC4;

  return MEMORY[0x1EEE6DE18]();
}

uint64_t sub_1B7A30BC4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 72);
    v5 = *(v2 + 80);

    return MEMORY[0x1EEE6DFA0](sub_1B7A30D24, v4, v5);
  }
}

uint64_t sub_1B7A30D24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7A30D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v8 = sub_1B7A99CC0();
  v7[25] = v8;
  v7[26] = *(v8 - 8);
  v7[27] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B58, &unk_1B7A9DDC0);
  v7[28] = v9;
  v7[29] = *(v9 - 8);
  v7[30] = swift_task_alloc();
  v10 = sub_1B7A99CD0();
  v7[31] = v10;
  v7[32] = *(v10 - 8);
  v7[33] = swift_task_alloc();
  v7[34] = sub_1B7A9A760();
  v7[35] = sub_1B7A9A750();
  v12 = sub_1B7A9A710();
  v7[36] = v12;
  v7[37] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1B7A30F54, v12, v11);
}

uint64_t sub_1B7A30F54()
{
  v2 = v0[19];
  v1 = v0[20];
  swift_beginAccess();
  *v2 = 1;
  if (v1)
  {
    v4 = v0[32];
    v3 = v0[33];
    v5 = v0[31];
    *v3 = 1;
    (*(v4 + 104))(v3, *MEMORY[0x1E69AB448], v5);
    sub_1B7A99D30();
    (*(v4 + 8))(v3, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464A0, &qword_1B7AA4600);
  sub_1B7A98B90();
  v6 = sub_1B7A9A750();
  v0[38] = v6;
  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_1B7A310C0;
  v8 = v0[28];
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE15E88](v0 + 18, v6, v9, v8);
}

uint64_t sub_1B7A310C0()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_1B7A314F8;
  }

  else
  {
    v5 = sub_1B7A31214;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1B7A31214(uint64_t a1)
{
  v2 = *(v1 + 144);
  if (!v2)
  {
    (*(*(v1 + 232) + 8))(*(v1 + 240), *(v1 + 224));

    if (sub_1B7A9A810())
    {
      goto LABEL_10;
    }

    if (*(v1 + 160))
    {
      v4 = *(v1 + 208);
      v3 = *(v1 + 216);
      v5 = *(v1 + 200);
      *v3 = 1;
      (*(v4 + 104))(v3, *MEMORY[0x1E69AB438], v5);
      sub_1B7A99D10();
      (*(v4 + 8))(v3, v5);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      goto LABEL_10;
    }

    v7 = Strong;
    sub_1B7999E90(*(v1 + 192), v1 + 16);
    *(v1 + 64) = 1;
    v8 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader_loadingState;
    swift_beginAccess();
    sub_1B7A33800(v1 + 16, v7 + v8);
    swift_endAccess();
LABEL_9:

LABEL_10:

    v9 = *(v1 + 8);

    return v9();
  }

  if (sub_1B7A9A810())
  {
    (*(*(v1 + 232) + 8))(*(v1 + 240), *(v1 + 224));

    goto LABEL_9;
  }

  v11 = *(v1 + 184);
  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60, &qword_1B7A9ED20);
  sub_1B7A97600();

  v13 = sub_1B7A9A750();
  *(v1 + 304) = v13;
  v14 = swift_task_alloc();
  *(v1 + 312) = v14;
  *v14 = v1;
  v14[1] = sub_1B7A310C0;
  v15 = *(v1 + 224);
  v16 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE15E88](v1 + 144, v13, v16, v15);
}

uint64_t sub_1B7A314F8()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);

  (*(v2 + 8))(v1, v3);
  if (sub_1B7A9A810() & 1) != 0 || (v4 = *(v0 + 320), v5 = *(v0 + 184), v6 = swift_task_alloc(), *(v6 + 16) = v5, *(v6 + 24) = v4, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F60, &qword_1B7A9ED20), sub_1B7A97600(), , (sub_1B7A9A810()))
  {
  }

  else
  {
    v9 = *(v0 + 320);
    if (*(v0 + 160))
    {
      v11 = *(v0 + 208);
      v10 = *(v0 + 216);
      v12 = *(v0 + 200);
      *v10 = v9;
      *(v10 + 8) = 1;
      (*(v11 + 104))(v10, *MEMORY[0x1E69AB428], v12);
      v13 = v9;
      sub_1B7A99D10();

      (*(v11 + 8))(v10, v12);
    }

    else
    {
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      sub_1B7999E90(*(v0 + 192), v0 + 16);
      *(v0 + 64) = 1;
      v16 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader_loadingState;
      swift_beginAccess();
      sub_1B7A33800(v0 + 16, v15 + v16);
      swift_endAccess();
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B7A31720@<X0>(uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E78, &qword_1B7AA4530);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *v7 = a2;
    v9 = *MEMORY[0x1E697C138];
    v10 = sub_1B7A97530();
    v11 = *(v10 - 8);
    v15 = a3;
    v12 = v11;
    (*(v11 + 104))(v7, v9, v10);
    (*(v12 + 56))(v7, 0, 1, v10);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v15 - 2) = Strong;
    *(&v15 - 1) = v7;
    v16 = Strong;
    sub_1B7A32474(&qword_1EBA48E88, type metadata accessor for MediaArtworkLoader, &unk_1B7AA44C0);

    sub_1B7A96CA0();

    a3 = v15;
    sub_1B7957888(v7, &qword_1EBA48E78, &qword_1B7AA4530);
  }

  *a3 = Strong == 0;
  return result;
}

uint64_t sub_1B7A319EC@<X0>(void *a2@<X1>, BOOL *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E78, &qword_1B7AA4530);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *v7 = a2;
    v9 = *MEMORY[0x1E697C130];
    v10 = sub_1B7A97530();
    v11 = *(v10 - 8);
    v16 = a3;
    v12 = v11;
    (*(v11 + 104))(v7, v9, v10);
    (*(v12 + 56))(v7, 0, 1, v10);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v16 - 2) = Strong;
    *(&v16 - 1) = v7;
    v17 = Strong;
    v14 = a2;
    sub_1B7A32474(&qword_1EBA48E88, type metadata accessor for MediaArtworkLoader, &unk_1B7AA44C0);
    sub_1B7A96CA0();

    a3 = v16;
    sub_1B7957888(v7, &qword_1EBA48E78, &qword_1B7AA4530);
  }

  *a3 = Strong == 0;
  return result;
}

uint64_t sub_1B7A31CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46B40, &qword_1B7A9DF90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1B7A9A7E0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1B7A9A760();

  v10 = sub_1B7A9A750();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  sub_1B79A9B34(0, 0, v8, &unk_1B7AA4640, v11);
}

uint64_t sub_1B7A31DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_1B7A99CC0();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  sub_1B7A9A760();
  v6[24] = sub_1B7A9A750();
  v9 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B7A31EF4, v9, v8);
}

uint64_t sub_1B7A31EF4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 2;
    v2 = OBJC_IVAR____TtC18_JetEngine_SwiftUIP33_8FC4452CDC73A1D6B1D415B1A4F9D86F18MediaArtworkLoader_loadingState;
    v3 = Strong;
    swift_beginAccess();
    sub_1B7A33800(v0 + 16, v3 + v2);
    swift_endAccess();
  }

  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  swift_beginAccess();
  if (*(v4 + 16) == 1 && v5 != 0)
  {
    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = *(v0 + 168);
    *v7 = 1;
    (*(v8 + 104))(v7, *MEMORY[0x1E69AB438], v9);
    sub_1B7A99D10();
    (*(v8 + 8))(v7, v9);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1B7A3205C(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1B798D338;

  return v5();
}

uint64_t sub_1B7A32144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7A3428C(a1, a2, a3);
  sub_1B7A97890();
  return v4;
}

uint64_t View.mediaArtworkDebugging(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;
  sub_1B7A98320();
}

void sub_1B7A32288(uint64_t a1)
{
  sub_1B7A32C5C(319, &qword_1EBA48D98, MEMORY[0x1E697C140], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B7A96CF0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1B7A3238C()
{
  result = qword_1EBA48DA0;
  if (!qword_1EBA48DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48D68, &qword_1B7AA4338);
    sub_1B7A32474(&qword_1EBA488A8, MEMORY[0x1E69AAFD8], &protocol conformance descriptor for MediaArtwork);
    sub_1B797EC34(&qword_1EDC10A38, &qword_1EBA48DA8, &unk_1B7AA4400, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48DA0);
  }

  return result;
}

uint64_t sub_1B7A32474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7A324DC(uint64_t a1)
{
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7A32564(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 24) - 8);
  v4 = *(v3 + 64);
  v5 = ((*(*(*(a3 + 16) - 8) + 64) + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v4 <= v5)
  {
    v4 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v6 = v4 + 1;
  v7 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v4);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1B7A326C8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 64);
  v7 = ((*(*(*(a4 + 16) - 8) + 64) + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v6 > v7)
  {
    v7 = *(v5 + 64);
  }

  v8 = v7 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v7] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1B7A3292C(uint64_t a1)
{
  sub_1B7A98F40();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MediaArtworkLoaderImage(319);
    if (v2 <= 0x3F)
    {
      sub_1B79A232C(319, &qword_1EBA46B10, MEMORY[0x1E69E7DE0]);
      if (v3 <= 0x3F)
      {
        sub_1B797CE50(319, &qword_1EBA48E48, &qword_1EBA48E50, &qword_1B7AA4458);
        if (v4 <= 0x3F)
        {
          sub_1B79A232C(319, &qword_1EBA46B28, &type metadata for _MediaArtworkValues);
          if (v5 <= 0x3F)
          {
            sub_1B797CE50(319, &qword_1EBA46B30, &qword_1EBA46B38, &qword_1B7AA4460);
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

void sub_1B7A32A88(uint64_t a1)
{
  sub_1B7A98F40();
  if (v1 <= 0x3F)
  {
    sub_1B7A32C5C(319, &qword_1EBA48E70, type metadata accessor for MediaArtworkLoader, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1B797CE50(319, &qword_1EBA46B30, &qword_1EBA46B38, &qword_1B7AA4460);
      if (v3 <= 0x3F)
      {
        sub_1B79A232C(319, &qword_1EBA46B10, MEMORY[0x1E69E7DE0]);
        if (v4 <= 0x3F)
        {
          sub_1B7A32C5C(319, &qword_1EBA46B18, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            sub_1B79A232C(319, &qword_1EBA46B20, &_s19_ProtocolDispatcherVN);
            if (v6 <= 0x3F)
            {
              sub_1B79A232C(319, &qword_1EBA46B28, &type metadata for _MediaArtworkValues);
              if (v7 <= 0x3F)
              {
                sub_1B797CE50(319, &qword_1EBA48E48, &qword_1EBA48E50, &qword_1B7AA4458);
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

void sub_1B7A32C5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B7A32CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MediaArtworkBody(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A32D40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MediaArtworkBody(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1B7A32DA4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for _MediaArtworkBody(0);

  *&result = sub_1B7A2EC64(a1, a2).n128_u64[0];
  return result;
}

uint64_t sub_1B7A32E54(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B7A32ED8()
{
  result = qword_1EBA48EC0;
  if (!qword_1EBA48EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48EC8, &qword_1B7AA45E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48EC0);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{
  v1 = type metadata accessor for _MediaArtworkBody(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = sub_1B7A98F40();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = v2 + v1[5];
  v4(v5, v3);
  v6 = type metadata accessor for MediaArtworkLoaderImage(0);

  j__swift_release(*(v5 + v6[6]));
  sub_1B795AE10(*(v5 + v6[7]), *(v5 + v6[7] + 8));
  v7 = v6[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E00, &unk_1B7A9C590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1B7A97580();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_1B79A5B8C(*(v5 + v6[9]), *(v5 + v6[9] + 8));
  sub_1B79A5B8C(*(v5 + v6[10]), *(v5 + v6[10] + 8));
  v9 = v5 + v6[11];
  if (*(v9 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
  }

  sub_1B795AE10(*(v2 + v1[6]), *(v2 + v1[6] + 8));
  v10 = v2 + v1[7];
  if (*(v10 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
  }

  sub_1B79A5B8C(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  j__swift_release(*(v2 + v1[9]));

  return swift_deallocObject();
}

uint64_t sub_1B7A331FC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for _MediaArtworkBody(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_1B7A3328C@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1B7995D44();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v12 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B79A0FC8();
      v8 = v12;
    }

    v9 = *(v8 + 48);
    v10 = sub_1B7A991E0();
    (*(*(v10 - 8) + 8))(v9 + *(*(v10 - 8) + 72) * v6, v10);
    sub_1B7957D50(*(v8 + 56) + 32 * v6, a1);
    sub_1B79A0254(v6, v8);
    *v2 = v8;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1B7A33368(uint64_t a1, char a2, uint64_t *a3, double a4, double a5)
{
  v10 = sub_1B7A991E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CGSize(0);
  v30 = v14;
  *v29 = a4;
  *&v29[1] = a5;
  v15 = *a3;
  v17 = sub_1B7995D44();
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
  }

  else
  {
    v21 = v16;
    v22 = v15[3];
    if (v22 >= v20 && (a2 & 1) != 0)
    {
LABEL_7:
      v23 = *a3;
      if (v21)
      {
LABEL_8:
        v24 = (v23[7] + 32 * v17);
        __swift_destroy_boxed_opaque_existential_1(v24);
        return sub_1B7957D50(v29, v24);
      }

      goto LABEL_11;
    }

    if (v22 >= v20 && (a2 & 1) == 0)
    {
      sub_1B79A0FC8();
      goto LABEL_7;
    }

    sub_1B799F4B4(v20, a2 & 1);
    v26 = sub_1B7995D44();
    if ((v21 & 1) == (v27 & 1))
    {
      v17 = v26;
      v23 = *a3;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_11:
      (*(v11 + 16))(v13, a1, v10);
      v28 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
      sub_1B7A3404C(v17, v13, v23, *v28, v28[1]);
      return __swift_destroy_boxed_opaque_existential_1(v29);
    }
  }

  result = sub_1B7A9AEC0();
  __break(1u);
  return result;
}

uint64_t sub_1B7A3354C(__int128 *a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = sub_1B7A991E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48EE8, &qword_1B7AA45F8);
  v30[0] = swift_allocObject();
  sub_1B795C1E4(a1, v30[0] + 16);
  v12 = *a4;
  v14 = sub_1B7995D44();
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *a4;
    if (v18)
    {
LABEL_8:
      v21 = (v20[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v21);
      return sub_1B7957D50(v30, v21);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1B79A0FC8();
    goto LABEL_7;
  }

  sub_1B799F4B4(v17, a3 & 1);
  v23 = sub_1B7995D44();
  if ((v18 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1B7A9AEC0();
    __break(1u);
    return result;
  }

  v14 = v23;
  v20 = *a4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = (v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  sub_1B7A33F50(v14, v11, v28, v20);
  return __swift_destroy_boxed_opaque_existential_1(v30);
}

uint64_t sub_1B7A33800(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48ED8, &qword_1B7AA45E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A33870()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464A0, &qword_1B7AA4600) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  v8 = *(v0 + v4);
  v9 = *(v0 + v5);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_1B798D338;

  return sub_1B7A309B4(v7, v0 + v3, v8, v9, v0 + v6);
}

uint64_t sub_1B7A339A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B798D54C;

  return sub_1B7A3205C(a1, v4);
}

uint64_t sub_1B7A33A60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B798D338;

  return sub_1B7A30D90(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1B7A33B40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1B798D54C;

  return sub_1B7A31DFC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1B7A33C40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E78, &qword_1B7AA4530);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A33CB0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5)
{
  v10 = sub_1B7A991E0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v33);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a5);
  v15 = *a4;
  v17 = sub_1B7995D44();
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a3 & 1) != 0)
  {
LABEL_7:
    v23 = *a4;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 32 * v17);
      __swift_destroy_boxed_opaque_existential_1(v24);
      return sub_1B7957D50(v33, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a3 & 1) == 0)
  {
    sub_1B79A0FC8();
    goto LABEL_7;
  }

  sub_1B799F4B4(v20, a3 & 1);
  v26 = sub_1B7995D44();
  if ((v21 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1B7A9AEC0();
    __break(1u);
    return result;
  }

  v17 = v26;
  v23 = *a4;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v11 + 16))(v13, a2, v10);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, v29);
  sub_1B7A34128(v17, v13, v31, v23, a5);
  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_1B7A33F50(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v14[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48EE8, &qword_1B7AA45F8);
  v14[0] = swift_allocObject();
  sub_1B795C1E4(a3, v14[0] + 16);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B7A991E0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1B7957D50(v14, a4[7] + 32 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1B7A3404C(unint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  type metadata accessor for CGSize(0);
  v17[3] = v10;
  *v17 = a4;
  *&v17[1] = a5;
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a3[6];
  v12 = sub_1B7A991E0();
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  result = sub_1B7957D50(v17, a3[7] + 32 * a1);
  v14 = a3[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v16;
  }

  return result;
}

uint64_t sub_1B7A34128(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v17[3] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v17);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = sub_1B7A991E0();
  (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a2, v12);
  result = sub_1B7957D50(v17, a4[7] + 32 * a1);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_1B7A34230(uint64_t a1)
{
  v2 = type metadata accessor for MediaArtworkStyleConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7A3428C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48EF8;
  if (!qword_1EBA48EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48EF8);
  }

  return result;
}

unint64_t sub_1B7A342F0()
{
  result = qword_1EBA48F00;
  if (!qword_1EBA48F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F08, &qword_1B7AA4700);
    sub_1B7A32E54(&qword_1EBA48EA8, &qword_1EBA48EA0, &qword_1B7AA45D0, sub_1B7A32E24);
    sub_1B797EC34(&qword_1EBA48ED0, &qword_1EBA48E98, &qword_1B7AA45C8, &unk_1B7AA3DF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48F00);
  }

  return result;
}

void *EnvironmentValues.metricsContext.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B797E844(a1, a2, a3);

  return sub_1B7A97890();
}

uint64_t EnvironmentValues.metricsContext.setter(uint64_t a1)
{
  v2 = sub_1B7A99900();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (*(v3 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);
  sub_1B797E844(v6, v7, v8);
  sub_1B7A978A0();
  return (*(v3 + 8))(a1, v2);
}

uint64_t View.metricsContext(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v31 = a2;
  v29 = a3;
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38, &unk_1B7AA4740);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &KeyPath - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D40, &qword_1B7A9C4B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &KeyPath - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &KeyPath - v10;
  v12 = sub_1B7A99DB0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &KeyPath - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B7A99900();
  v24 = *(v16 - 8);
  v25 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &KeyPath - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  sub_1B7A99880();
  sub_1B7A99920();
  v19 = *(v7 + 8);
  v27 = v7 + 8;
  v28 = v6;
  v19(v11, v6);
  v20 = *(v13 + 48);
  if (v20(v5, 1, v12) == 1)
  {
    (*(v13 + 104))(v15, *MEMORY[0x1E69AB4F8], v12);
    if (v20(v5, 1, v12) != 1)
    {
      sub_1B7957888(v5, &qword_1EBA45D38, &unk_1B7AA4740);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v5, v12);
  }

  v21 = v26;
  sub_1B7A99880();
  sub_1B7A99860();
  v19(v21, v28);
  (*(v13 + 8))(v15, v12);
  sub_1B7A98150();

  return (*(v24 + 8))(v18, v25);
}

uint64_t View.transformMetricsContext(transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  sub_1B7A98320();
}

uint64_t sub_1B7A349B4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v25 = a1;
  v3 = sub_1B7A99DB0();
  v24 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38, &unk_1B7AA4740);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D40, &qword_1B7A9C4B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23(v25);
  sub_1B7A99880();
  sub_1B7A99920();
  v15 = *(v9 + 8);
  v15(v14, v8);
  v16 = v24;
  v17 = (*(v24 + 48))(v7, 1, v3);
  sub_1B7957888(v7, &qword_1EBA45D38, &unk_1B7AA4740);
  if (v17 == 1)
  {
    v18 = v21;
    (*(v16 + 104))(v21, *MEMORY[0x1E69AB4F8], v3);
    sub_1B7A99880();
    sub_1B7A998E0();
    v15(v11, v8);
    (*(v16 + 8))(v18, v3);
  }
}

uint64_t sub_1B7A34D00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D40, &qword_1B7A9C4B0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - v2;
  v4 = sub_1B7A99DB0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69AB500], v4, v6);
  sub_1B7A99880();
  sub_1B7A998E0();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B7A34EA4()
{
  v0 = sub_1B7A99900();
  __swift_allocate_value_buffer(v0, qword_1EDC10098);
  v1 = __swift_project_value_buffer(v0, qword_1EDC10098);
  return sub_1B7A34EF0(v1);
}

uint64_t sub_1B7A34EF0@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D70, &unk_1B7A9C4E0);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v25 = &v22 - v1;
  v24 = sub_1B7A96C20();
  v26 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D40, &qword_1B7A9C4B0);
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v22 - v5;
  v7 = sub_1B7A99DB0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7A99900();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  sub_1B7A998F0();
  (*(v8 + 104))(v10, *MEMORY[0x1E69AB4F8], v7);
  sub_1B7A99880();
  sub_1B7A99860();
  (*(v4 + 8))(v6, v23);
  (*(v8 + 8))(v10, v7);
  v18 = *(v12 + 8);
  v18(v14, v11);
  sub_1B7A96C10();
  v19 = v25;
  sub_1B7A998B0();
  v20 = v24;
  sub_1B7A99860();
  (*(v27 + 8))(v19, v29);
  (*(v26 + 8))(v3, v20);
  return (v18)(v17, v11);
}

uint64_t sub_1B7A352D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC10090 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7A99900();
  v3 = __swift_project_value_buffer(v2, qword_1EDC10098);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1B7A3537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7A35EA0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.metricsContext.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1B7A99900();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  v5[6] = sub_1B797E844(v9, v10, v11);
  sub_1B7A97890();
  return sub_1B7A3551C;
}

void sub_1B7A3551C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  v4(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[5];
  v7 = v3[3];
  v6 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  if (a2)
  {
    v4(v3[3], v3[4], v3[1]);
    sub_1B7A978A0();
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v5, v8);
  }

  else
  {
    sub_1B7A978A0();
    (*(v9 + 8))(v5, v8);
  }

  free(v5);
  free(v6);
  free(v7);

  free(v3);
}

void *_s7SwiftUI17EnvironmentValuesV011_JetEngine_aB0E20metricsFieldsContextAD013OpaqueMetricshI0Vvg_0@<X0>(void *a1@<X8>)
{
  v25[1] = a1;
  v25[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D70, &unk_1B7A9C4E0);
  v1 = *(v25[0] - 8);
  MEMORY[0x1EEE9AC00](v25[0]);
  v3 = v25 - v2;
  v4 = sub_1B7A99900();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D18, &qword_1B7A9C320);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v25 - v9;
  v11 = sub_1B7A96C20();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B79B56A4(v15, v16, v17);
  sub_1B7A97890();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v18 = sub_1B7957888(v10, &qword_1EBA45D18, &qword_1B7A9C320);
    sub_1B797E844(v18, v19, v20);
    return sub_1B7A97890();
  }

  else
  {
    v22 = (*(v12 + 32))(v14, v10, v11);
    sub_1B797E844(v22, v23, v24);
    sub_1B7A97890();
    sub_1B7A998C0();
    sub_1B7A99860();
    (*(v1 + 8))(v3, v25[0]);
    (*(v5 + 8))(v7, v4);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t OpaqueMetricsFieldsContext.description.getter()
{
  sub_1B7A99900();
  sub_1B7A9AD50();
  return 0;
}

uint64_t sub_1B7A359C4()
{
  sub_1B7A99900();
  sub_1B7A9AD50();
  return 0;
}

uint64_t ActionDispatcher.perform(_:withOpaqueMetrics:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v18[0] = a1;
  v18[1] = a4;
  v4 = sub_1B7A99450();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  v8 = type metadata accessor for OpaqueMetricsFieldsContext(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7A98C30();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1B7A99250())
  {
  }

  else
  {
    sub_1B7A35CF8(v19, v10);
    sub_1B7A98C00();
    sub_1B7A992C0();
    (*(v12 + 8))(v14, v11);
  }

  v15 = sub_1B7A99900();
  (*(*(v15 - 8) + 16))(v7, v19, v15);
  (*(v5 + 104))(v7, *MEMORY[0x1E69AB120], v4);
  v16 = sub_1B7A994C0();

  (*(v5 + 8))(v7, v4);
  return v16;
}

uint64_t type metadata accessor for OpaqueMetricsFieldsContext(uint64_t a1)
{
  result = qword_1EDC0F440;
  if (!qword_1EDC0F440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7A35CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpaqueMetricsFieldsContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7A35D84(uint64_t a1)
{
  result = sub_1B7A99900();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy9JetEngine20MetricsFieldsContextVGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1B7A97590();
  sub_1B797EC34(a4, a2, a3, a5);
  return swift_getWitnessTable();
}

unint64_t sub_1B7A35EA0()
{
  result = qword_1EDC0FC88;
  if (!qword_1EDC0FC88)
  {
    sub_1B7A99900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC0FC88);
  }

  return result;
}

void *sub_1B7A35EF8(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1B7A376C8(x0_0, a2, a3);

  return sub_1B7A97890();
}

uint64_t sub_1B7A35F80(uint64_t a1)
{
  sub_1B7999E90(a1, v6);
  v1 = sub_1B7999E90(v6, &v5);
  sub_1B7A376C8(v1, v2, v3);
  sub_1B7A978A0();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1B7A35FE0@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v17 = *a3;
  v18 = *a5;
  v19 = sub_1B7999EF4(a1, a8, a10);
  result = (*(*(a8 - 8) + 8))(a1, a8);
  *a9 = v19;
  *(a9 + 8) = a2;
  *(a9 + 9) = v17;
  *(a9 + 10) = a4;
  *(a9 + 11) = v18;
  *(a9 + 16) = a6;
  *(a9 + 24) = a7;
  return result;
}

uint64_t sub_1B7A3609C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v17 - v8;
  v10 = *(a1 + 8);
  v11 = *(a1 + 9);
  v12 = *(a1 + 10);
  v13 = *(a1 + 11);
  v17 = *a1;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = *(a1 + 1);
  (*(a3 + 24))(&v17, a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = sub_1B7999EF4(v9, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v15;
}

uint64_t FlowSheetContentStyleConfiguration.PresentationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

uint64_t FlowSheetContentStyleConfiguration.dismissAction.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1B7A36308@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F88, &unk_1B7AA4A48);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v26 - v7;
  v8 = sub_1B7A96FC0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 9);
  v14 = *(a1 + 10);
  v15 = *(a1 + 11);
  v16 = a1[2];
  v17 = a1[3];
  sub_1B7A96FB0();
  v18 = *(v9 + 16);
  v28 = v11;
  v18(v5, v11, v8);
  v29 = v9;
  v30 = v8;
  (*(v9 + 56))(v5, 0, 1, v8);
  v34 = v26;
  v35 = v12;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F98, &qword_1B7AA4A58);
  v19 = v27;
  sub_1B797EC34(&qword_1EBA48FA0, &qword_1EBA48F98, &qword_1B7AA4A58, MEMORY[0x1E697D658]);
  sub_1B7A98720();
  if (v15 == 1)
  {
    if (qword_1EDC10A28 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1EDC10A28 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v41 = sub_1B7A96AC0();
  v42 = v20;
  v21 = sub_1B797EC34(&qword_1EBA48F80, &qword_1EBA48F88, &unk_1B7AA4A48, MEMORY[0x1E697D680]);
  sub_1B7999DD8(v21, v22, v23);
  v24 = v32;
  sub_1B7A98260();

  (*(v31 + 8))(v19, v24);
  return (*(v29 + 8))(v28, v30);
}

uint64_t sub_1B7A367BC@<X0>(unsigned int a1@<W1>, uint64_t a2@<X8>)
{
  if (HIBYTE(a1) == 1)
  {
    if (qword_1EDC10A28 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1EDC10A28 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v9 = sub_1B7A96AC0();
  sub_1B7999DD8(v9, v3, v4);
  result = sub_1B7A98080();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_1B7A368E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A985E0();
  *a1 = result;
  return result;
}

uint64_t DefaultFlowSheetContentStyle.makeBody(configuration:)(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F10, &qword_1B7AA4840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F18, &qword_1B7AA4848);
  sub_1B7A36FD0();
  swift_getOpaqueTypeConformance2();
  sub_1B7A98460();
}

uint64_t sub_1B7A36A30@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a3;
  v42 = a4;
  v40 = a1;
  v46 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F58, &qword_1B7AA4A28);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v45 = v39 - v8;
  v9 = sub_1B7A97BB0();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F28, &qword_1B7AA4850);
  v44 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v43 = v39 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F18, &qword_1B7AA4848);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v39 - v18;
  sub_1B7A9A760();
  v47 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((a2 & 0x100) != 0 || (a2 & 1) == 0 || (a2 & 0x10000) != 0)
  {
    (*(v7 + 56))(v16, 1, 1, v6);
    v35 = sub_1B797EC34(&qword_1EBA48F30, &qword_1EBA48F28, &qword_1B7AA4850, MEMORY[0x1E697BEF0]);
    v48 = v12;
    v49 = v35;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CA8E50](v16, v6, OpaqueTypeConformance2);
    sub_1B796B038(v16);
  }

  else
  {
    v39[0] = v11;
    v20 = sub_1B7A97BA0();
    v39[1] = v39;
    MEMORY[0x1EEE9AC00](v20);
    v39[-4] = v40;
    LOBYTE(v39[-3]) = a2 & 1;
    *(&v39[-3] + 1) = 0;
    BYTE3(v39[-3]) = HIBYTE(a2);
    v21 = v42;
    v39[-2] = v41;
    v39[-1] = v21;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F60, &qword_1B7AA4A30);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F68, &qword_1B7AA4A38);
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F70, &qword_1B7AA4A40);
    v42 = v12;
    v24 = v23;
    v25 = sub_1B7A37734();
    v28 = sub_1B7A377EC(v25, v26, v27);
    v48 = v24;
    v49 = &type metadata for FlowSheetDoneButtonLabelStyle._LabelStyle;
    v50 = v25;
    v51 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v48 = v22;
    v49 = v29;
    swift_getOpaqueTypeConformance2();
    v30 = v43;
    sub_1B7A97150();
    v31 = sub_1B797EC34(&qword_1EBA48F30, &qword_1EBA48F28, &qword_1B7AA4850, MEMORY[0x1E697BEF0]);
    v32 = v45;
    v33 = v42;
    MEMORY[0x1B8CA8E40](v30, v42, v31);
    (*(v7 + 16))(v16, v32, v6);
    (*(v7 + 56))(v16, 0, 1, v6);
    v48 = v33;
    v49 = v31;
    v34 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1B8CA8E50](v16, v6, v34);
    sub_1B796B038(v16);
    (*(v7 + 8))(v32, v6);
    (*(v44 + 8))(v30, v33);
  }

  v37 = sub_1B7A36FD0();
  MEMORY[0x1B8CA8E40](v19, v14, v37);
  sub_1B796B038(v19);
}

unint64_t sub_1B7A36FD0()
{
  result = qword_1EBA48F20;
  if (!qword_1EBA48F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F18, &qword_1B7AA4848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F28, &qword_1B7AA4850);
    sub_1B797EC34(&qword_1EBA48F30, &qword_1EBA48F28, &qword_1B7AA4850, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48F20);
  }

  return result;
}

uint64_t sub_1B7A370C4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v23 = a4;
  v25 = a5;
  v26 = sub_1B7A97620();
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F70, &qword_1B7AA4A40);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F68, &qword_1B7AA4A38);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  sub_1B7A9A760();
  v21 = sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = a1;
  LOWORD(v28) = a2 & 0x101;
  BYTE2(v28) = BYTE2(a2) & 1;
  BYTE3(v28) = HIBYTE(a2);
  v29 = v22;
  v30 = v23;
  sub_1B7A36308(&v27, v11);
  LOBYTE(v27) = HIBYTE(a2);
  v16 = sub_1B7A37734();
  v19 = sub_1B7A377EC(v16, v17, v18);
  sub_1B7A980E0();
  sub_1B7A37840(v11);
  sub_1B7A97610();
  v27 = v9;
  v28 = &type metadata for FlowSheetDoneButtonLabelStyle._LabelStyle;
  v29 = v16;
  v30 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1B7A98210();
  (*(v24 + 8))(v8, v26);
  (*(v13 + 8))(v15, v12);
}

uint64_t sub_1B7A373C0(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F10, &qword_1B7AA4840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F18, &qword_1B7AA4848);
  sub_1B7A36FD0();
  swift_getOpaqueTypeConformance2();
  sub_1B7A98460();
}

double PlainFlowSheetContentStyle.makeBody(configuration:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

double sub_1B7A374DC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

uint64_t View.flowSheetContentStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  v10[3] = a3;
  v10[4] = a5;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v10);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a3);
  sub_1B7A98150();

  return __swift_destroy_boxed_opaque_existential_1(v10);
}

unint64_t sub_1B7A375B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48F38;
  if (!qword_1EBA48F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48F38);
  }

  return result;
}

unint64_t sub_1B7A37694@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  *(a1 + 24) = &type metadata for DefaultFlowSheetContentStyle;
  result = sub_1B7A37958(a2, a3, a4);
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1B7A376C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48F50;
  if (!qword_1EBA48F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48F50);
  }

  return result;
}

unint64_t sub_1B7A37734()
{
  result = qword_1EBA48F78;
  if (!qword_1EBA48F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F70, &qword_1B7AA4A40);
    sub_1B797EC34(&qword_1EBA48F80, &qword_1EBA48F88, &unk_1B7AA4A48, MEMORY[0x1E697D680]);
    sub_1B7A048FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48F78);
  }

  return result;
}

unint64_t sub_1B7A377EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48F90;
  if (!qword_1EBA48F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48F90);
  }

  return result;
}

uint64_t sub_1B7A37840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F70, &qword_1B7AA4A40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7A378C0(uint64_t (*a1)(void, void, void, void))
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *(v1 + 24);
  if (*(v1 + 26))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return a1(*(v1 + 16), v3 | v4 | (*(v1 + 27) << 24), *(v1 + 32), *(v1 + 40));
}

uint64_t sub_1B7A37908@<X0>(uint64_t a1@<X8>)
{
  if (v1[25])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | v1[24];
  if (v1[26])
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_1B7A367BC(v3 | v4 | (v1[27] << 24), a1);
}

unint64_t sub_1B7A37958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBA48FA8;
  if (!qword_1EBA48FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA48FA8);
  }

  return result;
}

void ContentUnavailableView.init<>(error:retry:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for ContentUnavailableTextLogBuilder();
  v8 = swift_allocObject();
  v8[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA470E0, &unk_1B7AA4AC0);
  v9 = swift_allocObject();
  *(v9 + 20) = 0;
  *(v9 + 16) = 2;
  v8[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA470E8, &unk_1B7A9F160);
  v10 = swift_allocObject();
  *(v10 + 20) = 0;
  *(v10 + 16) = 2;
  v8[4] = v10;
  swift_getErrorValue();
  v11 = a1;
  if ((sub_1B7A39630(v38, v39) & 1) != 0 && (v12 = objc_opt_self(), v13 = sub_1B7A9A480(), LODWORD(v12) = [v12 BOOLForEntitlement_], v13, v12))
  {
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = v8;
    *(a4 + 96) = swift_getKeyPath();
    *(a4 + 104) = 0;
    *(a4 + 112) = swift_getKeyPath();
    *(a4 + 120) = 0;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F50, &unk_1B7A9ECA0);
    v17 = v16[22];
    *(a4 + v17) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
    swift_storeEnumTagMultiPayload();
    v18 = a4 + v16[23];
    *v18 = swift_getKeyPath();
    *(v18 + 8) = 0;
    v19 = a4 + v16[24];
    *v19 = swift_getKeyPath();
    *(v19 + 8) = 0;
    *a4 = sub_1B7A3A4AC;
    *(a4 + 8) = v14;
    *(a4 + 16) = sub_1B7A3A4C8;
    *(a4 + 24) = v15;
    *(a4 + 32) = sub_1B7A39860;
    *(a4 + 40) = 0;
    *(a4 + 48) = 1;
    v20 = a1;
    v21 = a1;
    v22 = qword_1EDC107C8;

    if (v22 != -1)
    {
      swift_once();
    }

    *(a4 + 56) = a2;
    *(a4 + 64) = a3;
  }

  else
  {
    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    v24 = swift_allocObject();
    *(v24 + 16) = a1;
    *(v24 + 24) = v8;
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = a3;
    *(a4 + 56) = 0;
    *(a4 + 64) = 0;
    *(a4 + 96) = swift_getKeyPath();
    *(a4 + 104) = 0;
    *(a4 + 112) = swift_getKeyPath();
    *(a4 + 120) = 0;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F50, &unk_1B7A9ECA0);
    v27 = v26[22];
    *(a4 + v27) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
    swift_storeEnumTagMultiPayload();
    v28 = a4 + v26[23];
    *v28 = swift_getKeyPath();
    *(v28 + 8) = 0;
    v29 = a4 + v26[24];
    *v29 = swift_getKeyPath();
    *(v29 + 8) = 0;
    *a4 = sub_1B7A43388;
    *(a4 + 8) = v23;
    *(a4 + 16) = sub_1B7A43384;
    *(a4 + 24) = v24;
    *(a4 + 32) = sub_1B7A39DC4;
    *(a4 + 40) = v25;
    *(a4 + 48) = 1;
    v30 = a1;
    v31 = a1;
    v32 = qword_1EDC107C8;

    if (v32 != -1)
    {
      swift_once();
    }
  }

  v33 = sub_1B7A96B00();
  v34 = AMSLogableError();

  v35 = sub_1B7A9A4B0();
  v37 = v36;

  *(a4 + 72) = v35;
  *(a4 + 80) = v37;
  *(a4 + 88) = v8;
}

uint64_t View.contentUnavailableViewPresentationContext(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7A98150();
}

uint64_t ContentUnavailableView.init<>(error:retry:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  type metadata accessor for ContentUnavailableTextLogBuilder();
  v9 = swift_allocObject();
  v9[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA470E0, &unk_1B7AA4AC0);
  v10 = swift_allocObject();
  *(v10 + 20) = 0;
  *(v10 + 16) = 2;
  v9[3] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA470E8, &unk_1B7A9F160);
  v11 = swift_allocObject();
  *(v11 + 20) = 0;
  *(v11 + 16) = 2;
  v9[4] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v9;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1B7A41D68;
  *(v14 + 24) = v8;
  sub_1B7A41644(sub_1B7A41D70, v12, sub_1B7A41D78, v13, sub_1B7A41D80, v14, a4);
  v15 = a1;
  v16 = a1;

  *(a4 + 88) = v9;
  return result;
}

uint64_t sub_1B7A38084(void *a1, uint64_t a2)
{
  v4 = sub_1B7A99E00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getErrorValue();
  v8 = sub_1B7A39630(v32[5], v32[6]);
  v9 = *(a2 + 24);
  os_unfair_lock_lock((v9 + 20));
  if (v8)
  {
    *(v9 + 16) = 0;
    os_unfair_lock_unlock((v9 + 20));
    sub_1B7A99DF0();
    v10 = sub_1B7A99DE0();
    (*(v5 + 8))(v7, v4);
    if (qword_1EDC107C8 != -1)
    {
      swift_once();
    }

    v11 = *(off_1EDC107D0 + 2);
    os_unfair_lock_lock((v11 + 20));
    v12 = *(v11 + 16);
    os_unfair_lock_unlock((v11 + 20));
    v13 = *(a2 + 32);
    os_unfair_lock_lock((v13 + 20));
    if (v12 == 1)
    {
      *(v13 + 16) = 0;
      os_unfair_lock_unlock((v13 + 20));
      if (v10)
      {
        if (qword_1EDC10A28 == -1)
        {
          goto LABEL_11;
        }
      }

      else if (qword_1EDC10A28 == -1)
      {
LABEL_11:
        sub_1B7A96AC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49058, &qword_1B7AA5328);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1B7A9C180;
        v15 = [objc_opt_self() mainBundle];
        v16 = NSBundle.displayName.getter();
        v18 = v17;

        *(v14 + 56) = MEMORY[0x1E69E6158];
        *(v14 + 64) = sub_1B7A43224(v19, v20, v21);
        *(v14 + 32) = v16;
        *(v14 + 40) = v18;
        v22 = sub_1B7A9A4C0();
        v24 = v23;

        v32[0] = v22;
        v32[1] = v24;
        sub_1B7999DD8(v25, v26, v27);
        v28 = sub_1B7A98080();
        goto LABEL_15;
      }

      swift_once();
      goto LABEL_11;
    }

    *(v13 + 16) = 1;
    os_unfair_lock_unlock((v13 + 20));
  }

  else
  {
    *(v9 + 16) = 1;
    os_unfair_lock_unlock((v9 + 20));
  }

  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v29 = qword_1EDC10A30;
  v28 = sub_1B7A98070();
LABEL_15:
  v30 = v28;

  return v30;
}

uint64_t sub_1B7A3852C()
{
  v1 = v0;
  v2 = *(v0 + 24);
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  if (v3 == 2)
  {
    v4 = "ue to phase becoming active";
    v5 = 0xD00000000000002CLL;
LABEL_9:
    MEMORY[0x1B8CAB750](v5, v4 | 0x8000000000000000);
    goto LABEL_10;
  }

  if (v3)
  {
    v4 = "essage messageType was set; ";
    v5 = 0xD000000000000025;
    goto LABEL_9;
  }

  MEMORY[0x1B8CAB750](0xD000000000000021, 0x80000001B7AC7530);
  v6 = *(v1 + 32);
  os_unfair_lock_lock((v6 + 20));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 20));
  if (v7 != 2)
  {
    v4 = " will be shown; ";
    if (v7)
    {
      v4 = "or was detected; ";
      v5 = 0xD000000000000030;
    }

    else
    {
      v5 = 0xD000000000000035;
    }

    goto LABEL_9;
  }

LABEL_10:
  v8 = sub_1B7A96B00();
  v9 = AMSLogableError();

  v10 = sub_1B7A9A4B0();
  v12 = v11;

  MEMORY[0x1B8CAB750](v10, v12);

  MEMORY[0x1B8CAB750](0x203A726F727245, 0xE700000000000000);

  return 0;
}

uint64_t sub_1B7A386D4(uint64_t a1)
{
  v2 = sub_1B7A97040();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1B7A97730();
}

void *sub_1B7A387B4()
{
  type metadata accessor for JetCellularDataInquiry();
  swift_allocObject();
  result = sub_1B7A387F4();
  off_1EDC107D0 = result;
  return result;
}

uint64_t sub_1B7A387F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA46F68, &unk_1B7AA5340);
  v1 = swift_allocObject();
  *(v1 + 20) = 0;
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  v2 = [objc_allocWithZone(MEMORY[0x1E6964F78]) init];
  *(v0 + 24) = v2;
  v3 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_1B7A43278;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1B7A389BC;
  v7[3] = &block_descriptor_3;
  v4 = _Block_copy(v7);
  v5 = v2;

  [v5 setCellularDataRestrictionDidUpdateNotifier_];
  _Block_release(v4);

  return v0;
}

uint64_t sub_1B7A3892C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 16);

    os_unfair_lock_lock((v4 + 20));
    *(v4 + 16) = a1 == 1;
    os_unfair_lock_unlock((v4 + 20));
  }

  return result;
}

uint64_t sub_1B7A389BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1B7A38A10()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B7A38A50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v4 = sub_1B7A97FB0();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48FB8, &qword_1B7AA4BC8);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v50 - v7;
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a1[7];
  v56 = a1[2];
  v71[0] = v56;
  v71[1] = v8;
  v55 = v8;
  v54 = v9;
  v71[2] = v9;
  v71[3] = v10;
  v53 = v10;
  v52 = v11;
  v71[4] = v11;
  v71[5] = v12;
  v51 = v12;
  v13 = type metadata accessor for _CompatibilityContentUnavailableViewContent(255, v71);
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for _ContentUnavailableScrollView(0, v13, WitnessTable, v14);
  v61 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v50 - v19;
  v67 = v6;
  v20 = sub_1B7A97B40();
  v65 = *(v20 - 8);
  v66 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v64 = &v50 - v21;
  v23 = *v2;
  v22 = v2[1];
  v25 = v2[2];
  v24 = v2[3];
  v26 = v2[4];
  v27 = v2[5];
  if (v2[6])
  {
    v28 = swift_allocObject();
    v28[2] = v23;
    v28[3] = v22;
    v28[4] = v25;
    v28[5] = v24;
    v28[6] = v26;
    v28[7] = v27;
    v29 = v67;
    v71[0] = 0x4076800000000000;
    (*(v59 + 104))(v62, *MEMORY[0x1E6980F00], v60);

    v30 = sub_1B7974B84(v26, v27);
    sub_1B7A4261C(v30, v31, v32);
    v33 = v63;
    sub_1B7A971D0();
    *v33 = sub_1B7A4304C;
    v33[1] = v28;
    v34 = swift_getWitnessTable();
    v35 = sub_1B797EC34(qword_1EDC10228, &qword_1EBA48FB8, &qword_1B7AA4BC8, &unk_1B7AA5234);
    v36 = v64;
    sub_1B7959A28(v33, v15, v29, v34, v35);
    sub_1B7957888(v33, &qword_1EBA48FB8, &qword_1B7AA4BC8);
  }

  else
  {
    v37 = swift_allocObject();
    v38 = v55;
    *(v37 + 2) = v56;
    *(v37 + 3) = v38;
    v39 = v53;
    *(v37 + 4) = v54;
    *(v37 + 5) = v39;
    v40 = v51;
    *(v37 + 6) = v52;
    *(v37 + 7) = v40;
    *(v37 + 8) = v23;
    *(v37 + 9) = v22;
    *(v37 + 10) = v25;
    *(v37 + 11) = v24;
    *(v37 + 12) = v26;
    *(v37 + 13) = v27;

    sub_1B7A3E2EC(360.0);
    *v17 = sub_1B7A4305C;
    v17[1] = v37;
    v41 = swift_getWitnessTable();
    v42 = v58;
    sub_1B7957EE0(v17, v15, v41);
    v43 = *(v61 + 8);
    v43(v17, v15);
    sub_1B7957EE0(v42, v15, v41);
    v44 = sub_1B797EC34(qword_1EDC10228, &qword_1EBA48FB8, &qword_1B7AA4BC8, &unk_1B7AA5234);
    v36 = v64;
    sub_1B79B5878(v17, v15, v67, v41, v44);
    v43(v17, v15);
    v43(v42, v15);
  }

  v45 = swift_getWitnessTable();
  v46 = sub_1B797EC34(qword_1EDC10228, &qword_1EBA48FB8, &qword_1B7AA4BC8, &unk_1B7AA5234);
  v69 = v45;
  v70 = v46;
  v47 = v66;
  v48 = swift_getWitnessTable();
  sub_1B7957EE0(v36, v47, v48);
  return (*(v65 + 8))(v36, v47);
}

uint64_t sub_1B7A39064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11)
{
  v14 = a1;
  *&v15 = a2;
  *(&v15 + 1) = a3;
  *&v16 = a4;
  *(&v16 + 1) = a5;
  v17 = a6;
  v18 = a7;
  *v19 = a8;
  *&v19[8] = a9;
  *&v19[24] = a10;
  v20 = a11;
  v11 = type metadata accessor for _CompatibilityContentUnavailableViewContent(0, &v18);
  WitnessTable = swift_getWitnessTable();
  sub_1B7957EE0(&v14, v11, WitnessTable);
  v14 = v18;
  v15 = *v19;
  v16 = *&v19[16];
  v17 = v20;
  sub_1B7957EE0(&v14, v11, WitnessTable);
}

uint64_t sub_1B7A39154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;

  return sub_1B7974B84(a5, a6);
}

uint64_t ContentUnavailableView.init<>(title:message:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 88) = 0;
  *(a7 + 72) = 0u;
  *(a7 + 56) = 0u;
  *(a7 + 96) = swift_getKeyPath();
  *(a7 + 104) = 0;
  *(a7 + 112) = swift_getKeyPath();
  *(a7 + 120) = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46F50, &unk_1B7A9ECA0);
  v15 = v14[22];
  *(a7 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
  swift_storeEnumTagMultiPayload();
  v16 = a7 + v14[23];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a7 + v14[24];
  result = swift_getKeyPath();
  *v17 = result;
  *(v17 + 8) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = 1;
  if (qword_1EDC107C8 != -1)
  {

    return swift_once();
  }

  return result;
}

uint64_t ContentUnavailableView.init<>(title:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 88) = 0;
  *(a5 + 72) = 0u;
  *(a5 + 56) = 0u;
  *(a5 + 96) = swift_getKeyPath();
  *(a5 + 104) = 0;
  *(a5 + 112) = swift_getKeyPath();
  *(a5 + 120) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48FB0, &unk_1B7AA4BB8);
  v11 = v10[22];
  *(a5 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
  swift_storeEnumTagMultiPayload();
  v12 = a5 + v10[23];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a5 + v10[24];
  result = swift_getKeyPath();
  *v13 = result;
  *(v13 + 8) = 0;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  if (qword_1EDC107C8 != -1)
  {

    return swift_once();
  }

  return result;
}

uint64_t ContentUnavailableView.init<>(error:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for ContentUnavailableTextLogBuilder();
  v4 = swift_allocObject();
  v4[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA470E0, &unk_1B7AA4AC0);
  v5 = swift_allocObject();
  *(v5 + 20) = 0;
  *(v5 + 16) = 2;
  v4[3] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA470E8, &unk_1B7A9F160);
  v6 = swift_allocObject();
  *(v6 + 20) = 0;
  *(v6 + 16) = 2;
  v4[4] = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = v4;
  v9 = a1;
  v10 = a1;
  v11 = a1;

  ContentUnavailableView.init<>(title:message:)(sub_1B7A43388, v7, sub_1B7A43384, v8, a2);
  v12 = sub_1B7A96B00();
  v13 = AMSLogableError();

  v14 = sub_1B7A9A4B0();
  v16 = v15;

  a2[9] = v14;
  a2[10] = v16;

  a2[11] = v4;
  return result;
}

uint64_t sub_1B7A39630(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7A99410();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B7A99440();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - v14;
  (*(v7 + 16))(v10, v18[1], a1, v13);
  sub_1B7A99420();
  sub_1B7A99400();
  v16 = sub_1B7A99430();
  (*(v4 + 8))(v6, v3);
  (*(v12 + 8))(v15, v11);
  return v16 & 1;
}

uint64_t sub_1B7A39860@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8, &unk_1B7AA07E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  sub_1B7A96B70();
  v5 = sub_1B7A96B90();
  v6 = *(v5 - 8);
  result = (*(v6 + 48))(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_1B7A96FC0();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49028, &qword_1B7AA5300);
    (*(v6 + 32))(a1 + *(v9 + 36), v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49038, &unk_1B7AA5310);
    result = swift_storeEnumTagMultiPayload();
    v10 = (a1 + *(v9 + 40));
    *v10 = sub_1B7A39A20;
    v10[1] = 0;
  }

  return result;
}

uint64_t sub_1B7A39A20@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDC10A30;
  result = sub_1B7A98070();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t ContentUnavailableButton.init(role:sensitiveURL:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1B7957888(a1, &qword_1EBA47018, &qword_1B7A9EFA0);
  v13 = sub_1B7A96FC0();
  (*(*(v13 - 8) + 56))(a7, 1, 1, v13);
  v15 = type metadata accessor for ContentUnavailableButton(0, a5, a6, v14);
  v16 = *(v15 + 36);
  v17 = sub_1B7A96B90();
  (*(*(v17 - 8) + 32))(a7 + v16, a2, v17);
  type metadata accessor for ContentUnavailableButton.Action(0, a5, a6, v18);
  result = swift_storeEnumTagMultiPayload();
  v20 = (a7 + *(v15 + 40));
  *v20 = a3;
  v20[1] = a4;
  return result;
}

uint64_t sub_1B7A39C20(void *a1)
{
  v2 = a1;
  v3 = sub_1B7A4309C(a1);

  return v3;
}

uint64_t sub_1B7A39C8C(void *a1, uint64_t a2)
{
  v4 = a1;

  return sub_1B7A38084(a1, a2);
}

double sub_1B7A39CD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B7A96FC0();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49028, &qword_1B7AA5300);
  v8 = (a3 + *(v7 + 36));
  *v8 = a1;
  v8[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49038, &unk_1B7AA5310);
  swift_storeEnumTagMultiPayload();
  v9 = (a3 + *(v7 + 40));
  *v9 = sub_1B7A4337C;
  v9[1] = 0;

  return result;
}

uint64_t ContentUnavailableButton.init(role:action:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1B797E788(a1, a8, &qword_1EBA47018, &qword_1B7A9EFA0);
  v16 = type metadata accessor for ContentUnavailableButton(0, a6, a7, v15);
  v17 = (a8 + *(v16 + 36));
  *v17 = a2;
  v17[1] = a3;
  type metadata accessor for ContentUnavailableButton.Action(0, a6, a7, v18);
  result = swift_storeEnumTagMultiPayload();
  v20 = (a8 + *(v16 + 40));
  *v20 = a4;
  v20[1] = a5;
  return result;
}

void sub_1B7A39E88(void *a1@<X8>)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 96);
  if (*(v1 + 104) == 1)
  {
    *a1 = v7;
  }

  else
  {

    sub_1B7A9AA10();
    v8 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE10(v7, 0);
    (*(v4 + 8))(v6, v3);
  }
}

void *sub_1B7A39FD8(uint64_t x0_0, uint64_t a2, uint64_t a3)
{
  sub_1B7A43288(x0_0, a2, a3);

  return sub_1B7A97890();
}

void *sub_1B7A3A020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A43288(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B7A3A0BC()
{
  v1 = sub_1B7A97880();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 112);
  v6 = *(v0 + 120);

  if ((v6 & 1) == 0)
  {
    sub_1B7A9AA10();
    v7 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v5);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1B7A3A200(uint64_t a1)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 92);
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_1B7A9AA10();
    v10 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    j__swift_release(v8);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

void *sub_1B7A3A350(uint64_t a1)
{
  v3 = sub_1B7A97880();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 96);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    v9 = v8;
  }

  else
  {

    sub_1B7A9AA10();
    v10 = sub_1B7A97E70();
    sub_1B7A96D30();

    sub_1B7A97870();
    swift_getAtKeyPath();
    sub_1B795AE1C(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v12[1];
  }

  return v8;
}

uint64_t ContentUnavailableView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v156 = sub_1B7A9A7E0();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v154 = &v106[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v153 = sub_1B7A997E0();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v151 = &v106[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v150 = sub_1B7A978D0();
  v149 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v106[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v159 = *(a1 + 16);
  v163 = *(a1 + 32);
  v162 = *(a1 + 40);
  v161 = *(a1 + 48);
  v160 = *(a1 + 56);
  v6 = a1;
  v180 = v159;
  *&v181 = v163;
  *(&v181 + 1) = v162;
  *&v182 = v161;
  *(&v182 + 1) = v160;
  v7 = type metadata accessor for _CompatibilityContentUnavailableViewContent(255, &v180);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _ContentUnavailableScrollView(255, v7, WitnessTable, v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FB8, &qword_1B7AA4BC8);
  v10 = sub_1B7A97B40();
  v146 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v139 = &v106[-v11];
  sub_1B7A97590();
  type metadata accessor for _OnScenePhaseChange(255);
  sub_1B7A97590();
  v12 = sub_1B7A97B40();
  v144 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v143 = &v106[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FC0, &qword_1B7AA4BD0);
  v15 = swift_getWitnessTable();
  v16 = sub_1B797EC34(qword_1EDC10228, &qword_1EBA48FB8, &qword_1B7AA4BC8, &unk_1B7AA5234);
  v178 = v15;
  v179 = v16;
  v147 = v10;
  v17 = swift_getWitnessTable();
  v20 = sub_1B797D440(v17, v18, v19);
  v176 = v17;
  v177 = v20;
  v21 = swift_getWitnessTable();
  v22 = sub_1B7A42C8C(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange, &unk_1B7AA0978);
  v135 = v17;
  v174 = v17;
  v175 = v22;
  v23 = swift_getWitnessTable();
  v172 = v21;
  v173 = v23;
  v24 = swift_getWitnessTable();
  v25 = sub_1B7A41DD8();
  *&v180 = v12;
  *(&v180 + 1) = v14;
  *&v181 = v24;
  *(&v181 + 1) = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v132 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v129 = &v106[-v27];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FD0, &qword_1B7AA5DF0);
  v136 = OpaqueTypeMetadata2;
  v28 = sub_1B7A97590();
  v131 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v127 = &v106[-v29];
  v145 = v12;
  *&v180 = v12;
  *(&v180 + 1) = v14;
  v142 = v14;
  v128 = v24;
  *&v181 = v24;
  *(&v181 + 1) = v25;
  v126 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_1B797EC34(&qword_1EDC10A50, &qword_1EBA48FD0, &qword_1B7AA5DF0, MEMORY[0x1E697F940]);
  v118 = OpaqueTypeConformance2;
  v170 = OpaqueTypeConformance2;
  v171 = v31;
  v32 = swift_getWitnessTable();
  *&v180 = v28;
  *(&v180 + 1) = v32;
  v33 = swift_getOpaqueTypeMetadata2();
  v121 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v120 = &v106[-v34];
  sub_1B7A97E00();
  v123 = v33;
  v35 = sub_1B7A97590();
  v138 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v137 = &v106[-v36];
  v134 = v28;
  *&v180 = v28;
  *(&v180 + 1) = v32;
  v119 = v32;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = sub_1B7A42C8C(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v117 = v37;
  v168 = v37;
  v169 = v38;
  v39 = swift_getWitnessTable();
  v140 = v35;
  *&v180 = v35;
  *(&v180 + 1) = v39;
  v125 = v39;
  v133 = swift_getOpaqueTypeMetadata2();
  v130 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v122 = &v106[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v41);
  v124 = &v106[-v42];
  v158 = v6;
  v43 = *(v6 - 8);
  v44 = *(v43 + 64);
  v46 = MEMORY[0x1EEE9AC00](v45);
  v47 = &v106[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = *(v43 + 16);
  v49 = v141;
  v109 = v43 + 16;
  v108 = v48;
  (v48)(v47, v141, v46);
  v50 = *(v43 + 80);
  v110 = ~v50;
  v51 = (v50 + 64) & ~v50;
  v113 = v44;
  v112 = v50;
  v52 = swift_allocObject();
  v53 = v159;
  *(v52 + 16) = v159;
  v54 = v163;
  v55 = v162;
  *(v52 + 32) = v163;
  *(v52 + 40) = v55;
  v56 = v161;
  v57 = v160;
  *(v52 + 48) = v161;
  *(v52 + 56) = v57;
  v58 = *(v43 + 32);
  v115 = v52;
  v114 = v47;
  v59 = v47;
  v60 = v158;
  v116 = v43 + 32;
  v111 = v58;
  v58((v52 + v51), v59, v158);
  sub_1B7A39E88(&v180);
  v107 = v180;
  v61 = v49[1];
  v180 = *v49;
  v181 = v61;
  v182 = v49[2];
  v183 = *(v49 + 48);
  v164 = v53;
  *&v165 = v54;
  *(&v165 + 1) = v55;
  v166 = v56;
  v167 = v57;
  v62 = type metadata accessor for ContentUnavailableView.Implementation(0, &v164);
  v63 = v139;
  sub_1B7A38A50(v62, v139);
  if (!sub_1B7A3A200(v60) || (Strong = swift_unknownObjectWeakLoadStrong(), , !Strong))
  {
    v65 = sub_1B7A3A350(v158);
    Strong = [v65 scene];
  }

  v66 = v143;
  v67 = v147;
  sub_1B79E7A50(Strong, sub_1B7A41FA4, v115, v147, v135, v143);

  v68 = (*(v146 + 8))(v63, v67);
  MEMORY[0x1EEE9AC00](v68);
  v69 = *(&v159 + 1);
  *&v106[-64] = v159;
  *&v106[-56] = v69;
  v70 = v162;
  *&v106[-48] = v163;
  *&v106[-40] = v70;
  v71 = v160;
  *&v106[-32] = v161;
  *&v106[-24] = v71;
  v105 = v49;
  v72 = v129;
  v73 = v145;
  sub_1B7A98130();
  (*(v144 + 8))(v66, v73);
  LOBYTE(v164) = v107 == 2;
  v74 = sub_1B7A98A20();
  sub_1B7959D7C(v74, v75, v76);
  v77 = v127;
  v78 = v136;
  sub_1B7A980C0();
  (*(v132 + 8))(v72, v78);
  v79 = v149;
  v80 = v148;
  v81 = v150;
  (*(v149 + 104))(v148, *MEMORY[0x1E697C438], v150);
  v82 = v120;
  v83 = v134;
  sub_1B7A98380();
  (*(v79 + 8))(v80, v81);
  (*(v131 + 8))(v77, v83);
  v165 = 0u;
  v164 = 0u;
  v84 = v151;
  sub_1B7A997B0();
  sub_1B7957888(&v164, &qword_1EBA46B50, &qword_1B7A9DD90);
  v85 = v137;
  v86 = v123;
  View.automationSemantics(_:)(v84, v123, v117);
  (*(v152 + 8))(v84, v153);
  (*(v121 + 8))(v82, v86);
  v87 = v114;
  v88 = v158;
  v108(v114, v49, v158);
  sub_1B7A9A760();
  v89 = sub_1B7A9A750();
  v90 = (v112 + 80) & v110;
  v91 = swift_allocObject();
  v92 = MEMORY[0x1E69E85E0];
  *(v91 + 2) = v89;
  *(v91 + 3) = v92;
  v93 = *(&v159 + 1);
  *(v91 + 4) = v159;
  *(v91 + 5) = v93;
  v94 = v162;
  *(v91 + 6) = v163;
  *(v91 + 7) = v94;
  v95 = v160;
  *(v91 + 8) = v161;
  *(v91 + 9) = v95;
  v111(&v91[v90], v87, v88);
  v96 = v154;
  v97 = v140;
  v98 = v125;
  sub_1B7974C6C();
  v99 = v122;
  sub_1B7974CBC(0, v96, 0xD00000000000002FLL, 0x80000001B7AC7220, 285, &unk_1B7AA4BF0, v91, v122, v97, v98);

  (*(v155 + 8))(v96, v156);
  (*(v138 + 8))(v85, v97);
  *&v164 = v97;
  *(&v164 + 1) = v98;
  v100 = swift_getOpaqueTypeConformance2();
  v101 = v124;
  v102 = v133;
  sub_1B7957EE0(v99, v133, v100);
  v103 = *(v130 + 8);
  v103(v99, v102);
  sub_1B7957EE0(v101, v102, v100);
  return v103(v101, v102);
}

uint64_t sub_1B7A3B634(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7A9A280();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A97040();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x1E697BE38], v7, v9);
  v12 = sub_1B7A97030();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    sub_1B7A9A200();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98C40();
    sub_1B7A99E30();

    result = (*(v4 + 8))(v6, v3);
    v14 = *(a2 + 56);
    if (v14)
    {
      return v14(result);
    }
  }

  return result;
}

uint64_t sub_1B7A3B8B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v36 = a1;
  v37 = a5;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48FC8, &qword_1B7AA4BD8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48FC0, &qword_1B7AA4BD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (sub_1B7A99DD0())
  {
    v30 = a7;
    v31 = v14;
    v32 = a8;
    sub_1B7A97960();
    if (qword_1EDC10A28 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDC10A30;
    LOWORD(v28) = 256;
    v38 = sub_1B7A98070();
    v39 = v19;
    v40 = v20 & 1;
    v41 = v21;
    MEMORY[0x1EEE9AC00](v38);
    v22 = v34;
    *(&v29 - 8) = v33;
    *(&v29 - 7) = v22;
    v23 = v37;
    *(&v29 - 6) = v35;
    *(&v29 - 5) = v23;
    v24 = v30;
    *(&v29 - 4) = a6;
    *(&v29 - 3) = v24;
    v27 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46DD0, &qword_1B7AA4BE0);
    sub_1B797EC34(&qword_1EDC10120, &qword_1EBA46DD0, &qword_1B7AA4BE0, MEMORY[0x1E697D680]);
    v25 = v31;
    sub_1B7A98940();
    (*(v12 + 32))(v17, v25, v11);
    (*(v12 + 56))(v17, 0, 1, v11);
    a8 = v32;
  }

  else
  {
    (*(v12 + 56))(v17, 1, 1, v11);
  }

  sub_1B797E788(v17, a8, &qword_1EBA48FC0, &qword_1B7AA4BD0);
}

uint64_t sub_1B7A3BC54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a1;
  v23 = a5;
  v26 = a8;
  v27[0] = a2;
  v27[1] = a3;
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a6;
  v24 = a6;
  v25 = a7;
  v27[5] = a7;
  v11 = type metadata accessor for ContentUnavailableView(0, v27);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v12 + 16))(v14, v22, v11);
  v15 = (*(v12 + 80) + 64) & ~*(v12 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  v17 = v23;
  v18 = v24;
  *(v16 + 4) = a4;
  *(v16 + 5) = v17;
  v19 = v25;
  *(v16 + 6) = v18;
  *(v16 + 7) = v19;
  (*(v12 + 32))(&v16[v15], v14, v11);
  sub_1B7A98730();
}

void sub_1B7A3BE54(uint64_t a1)
{
  v2 = sub_1B7A9A280();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 80))
  {
    v6 = [objc_opt_self() generalPasteboard];
    v9 = sub_1B7A9A480();
    [v6 setString_];

    v7 = v9;
  }

  else
  {
    sub_1B7A9A200();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98C40();
    sub_1B7A99E60();

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1B7A3C0EC@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A9A760();
  sub_1B7A9A750();
  sub_1B7A9A710();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDC10A30;
  v3 = sub_1B7A98070();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_1B7A3C244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v19;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v8[12] = a3;
  v9 = sub_1B7A997F0();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49040, &qword_1B7AA5320);
  v8[22] = v10;
  v8[23] = *(v10 - 8);
  v8[24] = swift_task_alloc();
  v11 = sub_1B7A99000();
  v8[25] = v11;
  v8[26] = *(v11 - 8);
  v8[27] = swift_task_alloc();
  v12 = sub_1B7A99380();
  v8[28] = v12;
  v8[29] = *(v12 - 8);
  v8[30] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49048, &qword_1B7AA63C0);
  v8[31] = v13;
  v8[32] = *(v13 - 8);
  v8[33] = swift_task_alloc();
  sub_1B7A98CC0();
  v8[34] = swift_task_alloc();
  v14 = sub_1B7A9A280();
  v8[35] = v14;
  v8[36] = *(v14 - 8);
  v8[37] = swift_task_alloc();
  sub_1B7A9A760();
  v8[38] = sub_1B7A9A750();
  v16 = sub_1B7A9A710();

  return MEMORY[0x1EEE6DFA0](sub_1B7A3C55C, v16, v15);
}

uint64_t sub_1B7A3C55C()
{
  v1 = *(v0 + 96);

  if (*(v1 + 88))
  {
    v3 = *(v0 + 288);
    v2 = *(v0 + 296);
    v4 = *(v0 + 280);

    sub_1B7A9A200();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98CB0();
    sub_1B7A98CA0();

    sub_1B7A98C80();

    sub_1B7A98CA0();
    v5 = sub_1B7A3852C();
    v6 = MEMORY[0x1E69E6158];
    *(v0 + 64) = v5;
    *(v0 + 88) = v6;
    *(v0 + 72) = v7;
    sub_1B7A98C70();
    sub_1B7957888(v0 + 64, &qword_1EBA46B50, &qword_1B7A9DD90);
    sub_1B7A98CA0();
    sub_1B7A98CD0();
    sub_1B7A99E30();

    (*(v3 + 8))(v2, v4);
  }

  else
  {
    v9 = *(v0 + 288);
    v8 = *(v0 + 296);
    v10 = *(v0 + 280);
    sub_1B7A9A200();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464D8, &unk_1B7A9D250);
    sub_1B7A98D10();
    *(swift_allocObject() + 16) = xmmword_1B7A9C180;
    sub_1B7A98C40();
    sub_1B7A99E30();

    (*(v9 + 8))(v8, v10);
  }

  v11 = *(v0 + 120);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 32) = v11;
  *(v0 + 48) = *(v0 + 136);
  type metadata accessor for ContentUnavailableView(0, v0 + 16);
  if (sub_1B7A3A0BC())
  {
    v12 = *(v0 + 256);
    v13 = *(v0 + 264);
    v14 = *(v0 + 240);
    v22 = *(v0 + 248);
    v16 = *(v0 + 224);
    v15 = *(v0 + 232);
    v17 = *(v0 + 216);
    v30 = *(v0 + 208);
    v18 = *(v0 + 192);
    v27 = *(v0 + 184);
    v28 = *(v0 + 200);
    v26 = *(v0 + 176);
    v29 = *(v0 + 160);
    v23 = *(v0 + 168);
    v24 = *(v0 + 152);
    sub_1B7A993B0();
    sub_1B7A99D20();
    sub_1B7A99370();
    v21 = *(v15 + 8);
    v21(v14, v16);
    sub_1B7A98FF0();
    sub_1B7A993C0();

    v25 = *(v30 + 8);
    v25(v17, v28);
    (*(v12 + 8))(v13, v22);
    sub_1B7A99390();
    (*(v29 + 104))(v23, *MEMORY[0x1E69AB280], v24);
    sub_1B7A99D20();
    sub_1B7A99370();
    v21(v14, v16);
    sub_1B7A98FF0();
    sub_1B7A42C8C(&qword_1EBA49050, MEMORY[0x1E69AB288], MEMORY[0x1E69AB290]);
    sub_1B7A993D0();

    v25(v17, v28);
    (*(v29 + 8))(v23, v24);
    (*(v27 + 8))(v18, v26);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t ContentUnavailableViewPresentationContext.hashValue.getter()
{
  v1 = *v0;
  sub_1B7A9AF80();
  MEMORY[0x1B8CAC1D0](v1);
  return sub_1B7A9AFA0();
}

uint64_t sub_1B7A3CB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7A432EC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t (*sub_1B7A3CBEC(void (*a1)(char *, char *, uint64_t)))()
{
  v61 = a1;
  v60 = sub_1B7A97330();
  v59 = *(v60 - 8);
  v1 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v53 - v3;
  v57 = sub_1B7A96B90();
  v56 = *(v57 - 8);
  v5 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v63 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - v7;
  v55 = sub_1B7A99900();
  v54 = *(v55 - 8);
  v9 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v53 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49038, &unk_1B7AA5310);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v53 - v14);
  sub_1B7957820(v62, &v53 - v14, &qword_1EBA49038, &unk_1B7AA5310);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v19 = v56 + 32;
    v18 = *(v56 + 32);
    v20 = v15;
    v21 = v57;
    if (EnumCaseMultiPayload == 2)
    {
      v18(v8, v20, v57);
      v22 = v18;
      v62 = v18;
      sub_1B7A97840();
      v23 = v59 + 32;
      v61 = *(v59 + 32);
      v24 = v58;
      v25 = v4;
      v26 = v60;
      v61(v58, v25, v60);
      v22(v63, v8, v21);
      v27 = (*(v23 + 48) + 16) & ~*(v23 + 48);
      v28 = (v1 + *(v19 + 48) + v27) & ~*(v19 + 48);
      v29 = swift_allocObject();
      v61((v29 + v27), v24, v26);
      v62(v29 + v28, v63, v21);
      return sub_1B7A42A90;
    }

    else
    {
      v18(v8, v20, v57);
      v44 = v18;
      v62 = v18;
      sub_1B7A977E0();
      v45 = v59 + 32;
      v61 = *(v59 + 32);
      v46 = v58;
      v47 = v4;
      v48 = v60;
      v61(v58, v47, v60);
      v44(v63, v8, v21);
      v49 = (*(v45 + 48) + 16) & ~*(v45 + 48);
      v50 = (v1 + *(v19 + 48) + v49) & ~*(v19 + 48);
      v51 = swift_allocObject();
      v61((v51 + v49), v46, v48);
      v62(v51 + v50, v63, v21);
      return sub_1B7A43378;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v30 = sub_1B795C1E4(v15, v71);
    sub_1B7A42B54(v30, v31, v32);
    v33 = sub_1B7A97890();
    sub_1B797E844(v33, v34, v35);
    sub_1B7A97890();
    v65 = v68;
    v66 = v69;
    v67 = v70;
    sub_1B795C1E4(v71, v64);
    v37 = v54 + 32;
    v36 = *(v54 + 32);
    v38 = v53;
    v39 = v12;
    v40 = v55;
    v36(v53, v39, v55);
    v41 = (*(v37 + 48) + 96) & ~*(v37 + 48);
    v42 = swift_allocObject();
    v43 = v66;
    *(v42 + 16) = v65;
    *(v42 + 32) = v43;
    *(v42 + 48) = v67;
    sub_1B795C1E4(v64, v42 + 56);
    v36((v42 + v41), v38, v40);
    return sub_1B7A42BA8;
  }

  else
  {
    *(swift_allocObject() + 16) = *v15;
    return sub_1B7A42C10;
  }
}