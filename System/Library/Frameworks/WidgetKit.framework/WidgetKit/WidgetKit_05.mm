void sub_19209B0C4(uint64_t *a1)
{
  v2 = *(type metadata accessor for ViewableTimelineEntry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1920C50A8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_19209B20C(v5);
  *a1 = v3;
}

uint64_t sub_19209B16C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_19209B20C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_192228900();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ViewableTimelineEntry(0);
        v6 = sub_192227BE0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ViewableTimelineEntry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_19202E1A0(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_19209B338(0, v2, 1, a1);
  }
}

void sub_19209B338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for ViewableTimelineEntry(0);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v22;
    v29 = v21;
    while (1)
    {
      sub_19204E6EC(v22, v16, type metadata accessor for ViewableTimelineEntry);
      sub_19204E6EC(v19, v12, type metadata accessor for ViewableTimelineEntry);
      v23 = sub_192225100();
      sub_192046EE8(v12, type metadata accessor for ViewableTimelineEntry);
      sub_192046EE8(v16, type metadata accessor for ViewableTimelineEntry);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v21 = v29 - 1;
        v22 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      sub_19203CFC0(v22, v9, type metadata accessor for ViewableTimelineEntry);
      swift_arrayInitWithTakeFrontToBack();
      sub_19203CFC0(v9, v19, type metadata accessor for ViewableTimelineEntry);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_19209B588(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v41 = type metadata accessor for ViewableTimelineEntry(0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v35 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v46 = a1;
  v45 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v16 < 1)
    {
      v24 = a4 + v16;
    }

    else
    {
      v21 = -v12;
      v22 = a4 + v16;
      v23 = v41;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = v21;
      do
      {
        v35 = v24;
        v25 = a2 + v21;
        v40 = a2;
        v41 = a2 + v21;
        while (1)
        {
          if (a2 <= a1)
          {
            v46 = a2;
            v44 = v35;
            goto LABEL_59;
          }

          v36 = v24;
          v27 = v23;
          v28 = a3 + v21;
          v29 = v22 + v21;
          v30 = v42;
          sub_19204E6EC(v29, v42, type metadata accessor for ViewableTimelineEntry);
          v31 = v25;
          v32 = v43;
          sub_19204E6EC(v31, v43, type metadata accessor for ViewableTimelineEntry);
          v33 = sub_192225100();
          sub_192046EE8(v32, type metadata accessor for ViewableTimelineEntry);
          sub_192046EE8(v30, type metadata accessor for ViewableTimelineEntry);
          if (v33)
          {
            break;
          }

          v24 = v29;
          if (a3 < v22 || v28 >= v22)
          {
            a3 = v28;
            v23 = v27;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v38;
          }

          else
          {
            v34 = a3 == v22;
            a3 = v28;
            v23 = v27;
            a1 = v38;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v22 = v29;
          a2 = v40;
          v26 = v29 > v39;
          v25 = v41;
          v21 = v37;
          if (!v26)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v40 || v28 >= v40)
        {
          a3 = v28;
          v23 = v27;
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v21 = v37;
          a1 = v38;
          v24 = v36;
        }

        else
        {
          v34 = a3 == v40;
          a3 = v28;
          v23 = v27;
          a2 = v41;
          v21 = v37;
          a1 = v38;
          v24 = v36;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v22 > v39);
    }

LABEL_57:
    v46 = a2;
    v44 = v24;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v15;
    v44 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = v42;
        sub_19204E6EC(a2, v42, type metadata accessor for ViewableTimelineEntry);
        v19 = v43;
        sub_19204E6EC(a4, v43, type metadata accessor for ViewableTimelineEntry);
        v20 = sub_192225100();
        sub_192046EE8(v19, type metadata accessor for ViewableTimelineEntry);
        sub_192046EE8(v18, type metadata accessor for ViewableTimelineEntry);
        if (v20)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v12;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v46 = a1;
      }

      while (a4 < v40 && a2 < a3);
    }
  }

LABEL_59:
  sub_19209BA9C(&v46, &v45, &v44);
}

uint64_t sub_19209BA9C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ViewableTimelineEntry(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_19209BB80(uint64_t a1)
{
  v33 = type metadata accessor for ViewableTimelineEntry(0);
  v2 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v2 + 80);
  v5 = *(a1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries);
  v6 = *(v5 + 16);

  v8 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v9 = 0;
    v10 = 0;
    v34 = v5;
    v35 = v4;
    v11 = (v4 + 32) & ~v4;
    v12 = MEMORY[0x1E69E7CC0] + v11;
    v37 = v11;
    v38 = v5 + v11;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = v36;
    while (v9 < *(v5 + 16))
    {
      v16 = *(v2 + 72);
      result = sub_19204E6EC(v38 + v16 * v9, v14, type metadata accessor for ViewableTimelineEntry);
      if (v10)
      {
        v8 = v13;
        v15 = __OFSUB__(v10--, 1);
        if (v15)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v17 = v13[3];
        if (((v17 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_35;
        }

        v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
        v20 = v37;
        v8 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v8);
        if (!v16)
        {
          goto LABEL_36;
        }

        v21 = result - v20;
        if ((result - v20) == 0x8000000000000000 && v16 == -1)
        {
          goto LABEL_37;
        }

        v23 = v2;
        v24 = v21 / v16;
        v8[2] = v19;
        v8[3] = 2 * (v21 / v16);
        v25 = v8 + v20;
        v26 = v13[3] >> 1;
        v27 = v26 * v16;
        if (v13[2])
        {
          if (v8 < v13 || v25 >= v13 + v37 + v27)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v8 != v13)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v13[2] = 0;
        }

        v12 = &v25[v27];
        v29 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;

        v2 = v23;
        v5 = v34;
        v14 = v36;
        v15 = __OFSUB__(v29, 1);
        v10 = v29 - 1;
        if (v15)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      ++v9;
      result = sub_19203CFC0(v14, v12, type metadata accessor for ViewableTimelineEntry);
      v12 += v16;
      v13 = v8;
      if (v6 == v9)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_29:
  v10 = 0;
LABEL_30:

  v30 = v8[3];
  if (v30 < 2)
  {
    return v8;
  }

  v31 = v30 >> 1;
  v15 = __OFSUB__(v31, v10);
  v32 = v31 - v10;
  if (!v15)
  {
    v8[2] = v32;
    return v8;
  }

LABEL_38:
  __break(1u);
  return result;
}

void sub_19209BE50(void *a1, uint64_t a2)
{
  v30 = a1;
  v3 = a1;

  sub_192056340(&v30, a2);
  v5 = v4;
  v6 = 0;
  v30 = v7;
  v31 = v4;
  v32 = v8;
  v9 = MEMORY[0x1E69E7CC0];
  v10 = (MEMORY[0x1E69E7CC0] + 32);
  v11 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
    goto LABEL_20;
  }

LABEL_2:
  v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v13 = v12 - 1;
  if (v12 >= 1)
  {
    while (1)
    {

      if ((sub_19205F34C(v13, v14) & 1) == 0)
      {

        v30 = v9;

        v31 = v9;

        v32 = v9;
      }

      if (!v6)
      {
        v15 = v11[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF600, &qword_19222AF58);
        v18 = swift_allocObject();
        v19 = _swift_stdlib_malloc_size(v18);
        v20 = v19 - 32;
        if (v19 < 32)
        {
          v20 = v19 - 25;
        }

        v21 = v20 >> 3;
        v18[2] = v17;
        v18[3] = 2 * (v20 >> 3);
        v22 = (v18 + 4);
        v23 = v11[3] >> 1;
        if (v11[2])
        {
          v24 = v11 + 4;
          if (v18 != v11 || v22 >= v24 + 8 * v23)
          {
            memmove(v18 + 4, v24, 8 * v23);
          }

          v11[2] = 0;
        }

        v10 = (v22 + 8 * v23);
        v6 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

        v11 = v18;
      }

      v25 = __OFSUB__(v6--, 1);
      if (v25)
      {
        break;
      }

      *v10++ = v5;
      v5 = v31;
      if (!(v31 >> 62))
      {
        goto LABEL_2;
      }

LABEL_20:
      v26 = sub_192228340();
      v13 = v26 - 1;
      if (v26 < 1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v27 = v11[3];
  if (v27 >= 2)
  {
    v28 = v27 >> 1;
    v25 = __OFSUB__(v28, v6);
    v29 = v28 - v6;
    if (v25)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v11[2] = v29;
  }
}

void sub_19209C05C(uint64_t a1)
{
  v2 = sub_1922261D0();
  v70 = *(v2 - 8);
  v3 = v70;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v63 - v7;
  v8 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(v3 + 80);
  v16 = MEMORY[0x1E69E7CC0];
  v64 = (v65 + 32) & ~v65;
  v71 = MEMORY[0x1E69E7CC0] + v64;
  sub_19204E6EC(a1, v11, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v17 = *v11;
  v18 = *(v9 + 28);
  v19 = *(v13 + 28);
  v20 = *(v3 + 16);
  v68 = v3 + 16;
  v69 = v19;
  v67 = v20;
  v20(&v15[v19], v11 + v18, v2);
  v21 = v17;
  v23 = sub_192056208(v16, v22);
  v74 = v21;
  v24 = v21;

  sub_192056340(&v74, v23);
  v26 = v25;
  v28 = v27;
  v30 = v29;

  sub_192046EE8(v11, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  v31 = 0;
  *v15 = v26;
  *(v15 + 1) = v28;
  v72 = (v70 + 32);
  *(v15 + 2) = v30;
  v32 = MEMORY[0x1E69E7CC0];
  v66 = v2;
  while (!(v28 >> 62))
  {
    v37 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v38 = v37 - 1;
    if (v37 < 1)
    {
      goto LABEL_42;
    }

LABEL_7:

    if ((sub_19205F34C(v38, v39) & 1) == 0)
    {

      v40 = MEMORY[0x1E69E7CC0];
      *v15 = MEMORY[0x1E69E7CC0];

      *(v15 + 1) = v40;

      *(v15 + 2) = v40;
    }

    v67(v5, &v15[v69], v2);
    if (v28 >> 62)
    {
      v41 = sub_192228340();
      if (!v41)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v41 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v41)
      {
        goto LABEL_2;
      }
    }

    if (v41 < 1)
    {
      goto LABEL_47;
    }

    for (i = 0; i != v41; ++i)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x193B0B410](i, v28);
      }

      else
      {
        v43 = *(v28 + 8 * i + 32);
      }

      (*(**(v43 + 16) + 112))(v5);
    }

LABEL_2:

    v33 = *v72;
    v2 = v66;
    (*v72)(v73, v5, v66);
    if (v31)
    {
      v34 = v32;
      v35 = v71;
      v36 = __OFSUB__(v31--, 1);
      if (v36)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v44 = v32[3];
      if (((v44 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_48;
      }

      v45 = v44 & 0xFFFFFFFFFFFFFFFELL;
      if (v45 <= 1)
      {
        v46 = 1;
      }

      else
      {
        v46 = v45;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECF8, &unk_19222B0E0);
      v47 = *(v70 + 72);
      v48 = v64;
      v34 = swift_allocObject();
      v49 = _swift_stdlib_malloc_size(v34);
      if (!v47)
      {
        goto LABEL_49;
      }

      v50 = v49 - v48;
      if (v49 - v48 == 0x8000000000000000 && v47 == -1)
      {
        goto LABEL_50;
      }

      v52 = v48;
      v53 = v50 / v47;
      v34[2] = v46;
      v34[3] = 2 * (v50 / v47);
      v54 = v34 + v52;
      v55 = v32[3] >> 1;
      v56 = v55 * v47;
      if (v32[2])
      {
        if (v34 < v32 || v54 >= v32 + v52 + v56)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v34 != v32)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v32[2] = 0;
      }

      v35 = &v54[v56];
      v58 = (v53 & 0x7FFFFFFFFFFFFFFFLL) - v55;

      v36 = __OFSUB__(v58, 1);
      v31 = v58 - 1;
      if (v36)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    v33(v35, v73, v2);
    v71 = &v35[*(v70 + 72)];
    v28 = *(v15 + 1);
    v32 = v34;
  }

  v59 = sub_192228340();
  v38 = v59 - 1;
  if (v59 >= 1)
  {
    goto LABEL_7;
  }

LABEL_42:
  sub_192046EE8(v15, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  v60 = v32[3];
  if (v60 < 2)
  {
    return;
  }

  v61 = v60 >> 1;
  v36 = __OFSUB__(v61, v31);
  v62 = v61 - v31;
  if (!v36)
  {
    v32[2] = v62;
    return;
  }

LABEL_51:
  __break(1u);
}

unint64_t sub_19209C5BC()
{
  result = qword_1EADECAA8;
  if (!qword_1EADECAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECAA8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_19209C658(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for DynamicIslandExpandedRegionVerticalPlacement(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DynamicIslandExpandedRegionVerticalPlacement(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_19209C7D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_19209CBBC()
{
  v0 = *MEMORY[0x1E69941E8];
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  v1 = sub_192227960();
  v3 = v2;
  v10 = MEMORY[0x1E69E6158];
  *&v9 = 0xD000000000000036;
  *(&v9 + 1) = 0x80000001922490E0;
  sub_19203BEDC(&v9, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28(v8, v1, v3, isUniquelyReferenced_nonNull_native);

  v5 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v6 = sub_192227830();

  v7 = [v5 initWithDomain:v0 code:1103 userInfo:v6];

  qword_1EAE007A0 = v7;
}

void sub_19209CCFC()
{
  v0 = *MEMORY[0x1E69941E8];
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  v1 = sub_192227960();
  v3 = v2;
  v10 = MEMORY[0x1E69E6158];
  *&v9 = 0xD000000000000043;
  *(&v9 + 1) = 0x8000000192249140;
  sub_19203BEDC(&v9, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28(v8, v1, v3, isUniquelyReferenced_nonNull_native);

  v5 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v6 = sub_192227830();

  v7 = [v5 initWithDomain:v0 code:1100 userInfo:v6];

  qword_1ED74C6E8 = v7;
}

void sub_19209CE3C()
{
  v1 = sub_192227710();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_192227790();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WidgetDescriptor(0);
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v0;
  v42 = *(v0 + 32);
  v39 = *(v42 + 16);
  if (v39)
  {
    v7 = 0;
    v38 = v42 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v37 = *(v5 + 84);
    while (v7 < *(v42 + 16))
    {
      v8 = *(v41 + 72);
      v43 = v7;
      v9 = v38 + v8 * v7;
      v10 = v40;
      sub_192084578(v9, v40, type metadata accessor for WidgetDescriptor);
      v11 = *(v10 + v37);

      sub_1920B3484(v10, type metadata accessor for WidgetDescriptor);
      v44 = v11;
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = *(v45 + 16);
        v14 = *(v45 + 24);
        v15 = v12 - 1;
        for (i = v44 + 56; ; i += 32)
        {
          v17 = *(i - 24);
          v18 = *(i - 8);

          if (v17(v13, v14))
          {
            v19 = v45;
            dispatch_group_enter(*(v45 + 64));
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE48, &qword_19222B718);
            v20 = swift_allocObject();
            *(v20 + 20) = 0;
            *(v20 + 16) = 0;
            v21 = swift_allocObject();
            v21[2] = v20;
            v21[3] = v13;
            v21[4] = v14;
            v21[5] = v19;

            v18(v13, v14, sub_1920B3988, v21);

            v22 = objc_opt_self();
            v23 = sub_192227930();
            [v22 _sendPendingCallbacksForSessionIdentifier_];

            if (!v15)
            {
              break;
            }
          }

          else
          {

            if (!v15)
            {
              break;
            }
          }

          --v15;
        }
      }

      v7 = v43 + 1;

      if (v7 == v39)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
    v24 = sub_192228080();
    v25 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1920B3980;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19202AB80;
    aBlock[3] = &block_descriptor_233;
    v26 = _Block_copy(aBlock);

    v27 = v31;
    sub_192227740();
    v46 = MEMORY[0x1E69E7CC0];
    sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    v28 = v33;
    v29 = v36;
    sub_1922282F0();
    sub_192228040();
    _Block_release(v26);

    (*(v35 + 8))(v28, v29);
    (*(v32 + 8))(v27, v34);
  }
}

void sub_19209D40C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a1 + 20));
  v8 = *(a1 + 16);
  *(a1 + 16) = 1;
  os_unfair_lock_unlock((a1 + 20));
  if (v8)
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v9 = sub_1922258B0();
    __swift_project_value_buffer(v9, qword_1ED74CCC8);

    oslog = sub_192225890();
    v10 = sub_192227FA0();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136446210;
      *(v11 + 4) = sub_19202B8CC(a2, a3, &v24);
      _os_log_impl(&dword_192028000, oslog, v10, "BUG IN CLIENT OF WIDGETKIT. Completion handler called multiple times by %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x193B0C7F0](v12, -1, -1);
      MEMORY[0x193B0C7F0](v11, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v13 = sub_1922258B0();
    __swift_project_value_buffer(v13, qword_1ED74CCC8);

    v14 = sub_192225890();
    v15 = sub_192227F80();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_19202B8CC(0x6E657645646E6573, 0xEC00000029287374, &v24);
      *(v16 + 12) = 2082;
      type metadata accessor for WidgetURLHandler();

      v18 = sub_192227990();
      v20 = sub_19202B8CC(v18, v19, &v24);

      *(v16 + 14) = v20;
      _os_log_impl(&dword_192028000, v14, v15, "%{public}s - %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v17, -1, -1);
      MEMORY[0x193B0C7F0](v16, -1, -1);
    }

    v21 = objc_opt_self();
    v22 = sub_192227930();
    [v21 _releaseProcessAssertionForSessionIdentifier_];

    dispatch_group_leave(*(a4 + 64));
  }
}

double sub_19209D770(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 40);
    v4 = *(Strong + 48);
    sub_19202D088(v3, v4);

    if (v3)
    {
      v3(v5);
      return sub_19203831C(v3, v4);
    }
  }

  return result;
}

uint64_t sub_19209D7F4()
{

  sub_19203831C(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_19209D870()
{
  sub_192228AD0();
  sub_1922281E0();
  return sub_192228B30();
}

uint64_t sub_19209D8E0()
{
  sub_192228AD0();
  v1 = *(*v0 + 56);
  sub_1922281E0();

  return sub_192228B30();
}

uint64_t sub_19209D988()
{
  v0 = sub_1922275D0();
  __swift_allocate_value_buffer(v0, qword_1ED74C6D0);
  __swift_project_value_buffer(v0, qword_1ED74C6D0);
  return sub_1922275C0();
}

void (*sub_19209D9D4(void (*result)(uint64_t)))(uint64_t)
{
  if (xmmword_1ED74CC80)
  {
    v1 = result;
    v2 = (*(qword_1ED74CC90 + 16))(*xmmword_1ED74CC80);
    v4 = sub_192036D98(v2, v3);

    v1(v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_19209DAC4(uint64_t a1, uint64_t a2)
{
  sub_19202A7A8(0, &qword_1ED74C500, 0x1E6994388);
  v3 = sub_192227B60();
  (*(a2 + 16))(a2, v3);
}

double sub_19209DB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v7 = sub_192227710();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_192227790();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v13 = sub_1922258B0();
  __swift_project_value_buffer(v13, qword_1ED74CCC8);
  v14 = sub_192225890();
  v15 = sub_192227FB0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_19202B8CC(0xD000000000000027, 0x8000000192249190, aBlock);
    _os_log_impl(&dword_192028000, v14, v15, "%{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x193B0C7F0](v17, -1, -1);
    MEMORY[0x193B0C7F0](v16, -1, -1);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x1E69E7CC0];
  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v19 = sub_192228080();
  v20 = swift_allocObject();
  v21 = v27;
  v20[2] = v18;
  v20[3] = v21;
  v20[4] = a4;
  v20[5] = a1;
  v20[6] = a2;
  v22 = v28;
  v20[7] = v28;
  aBlock[4] = sub_1920B36BC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_152;
  v23 = _Block_copy(aBlock);

  v24 = v22;

  sub_192227740();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v12, v9, v23);
  _Block_release(v23);

  (*(v31 + 8))(v9, v7);
  (*(v29 + 8))(v12, v30);

  return result;
}

void sub_19209DF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a4;
  v11 = sub_192227710();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v38 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_192227790();
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (xmmword_1ED74CC80)
  {
    v17 = *xmmword_1ED74CC80;
    aBlock[0] = xmmword_1ED74CC80;
    v18 = (*(qword_1ED74CC90 + 24))(v17, v14);
    swift_beginAccess();
    *(a1 + 16) = v18;

    type metadata accessor for UnfairLock();
    v19 = swift_allocObject();
    v20 = swift_slowAlloc();
    *v20 = 0;
    *(v19 + 16) = v20;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    v22 = swift_allocObject();
    v22[2] = v19;
    v22[3] = v21;
    v36[0] = v19;
    v36[1] = v21;
    v22[4] = a2;
    v22[5] = a3;
    swift_beginAccess();
    v23 = *(a1 + 16);
    type metadata accessor for WidgetURLHandler();
    v24 = swift_allocObject();
    v24[5] = 0;
    v24[6] = 0;
    v25 = objc_allocWithZone(MEMORY[0x1E696AFB0]);

    v24[7] = [v25 init];
    v24[8] = dispatch_group_create();
    v24[2] = v37;
    v24[3] = a5;
    v24[4] = v23;
    swift_beginAccess();

    sub_1921C1CB8(&v44, v24);
    swift_endAccess();

    v26 = swift_allocObject();
    v37 = v26;
    swift_weakInit();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    v28[2] = v27;
    v28[3] = v26;
    v28[4] = sub_1920B36CC;
    v28[5] = v22;
    v29 = v24[5];
    v30 = v24[6];
    v24[5] = sub_1920B3720;
    v24[6] = v28;

    sub_19203831C(v29, v30);

    v31 = *(a6 + OBJC_IVAR____TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject__queue);
    aBlock[4] = sub_1920B372C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19202AB80;
    aBlock[3] = &block_descriptor_168;
    v32 = _Block_copy(aBlock);

    v33 = v31;
    sub_192227740();
    v44 = MEMORY[0x1E69E7CC0];
    sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    v34 = v38;
    v35 = v42;
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v16, v34, v32);
    _Block_release(v32);

    (*(v41 + 8))(v34, v35);
    (*(v39 + 8))(v16, v40);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19209E518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  os_unfair_lock_lock(*(a1 + 16));
  swift_beginAccess();
  if (*(a2 + 16))
  {
    result = sub_192228620();
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    os_unfair_lock_unlock(*(a1 + 16));
    return a3();
  }

  return result;
}

uint64_t sub_19209E5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      v7 = v6;
      swift_beginAccess();
      sub_1921C47E8(v7);
      swift_endAccess();
    }

    else
    {
    }
  }

  return a3();
}

uint64_t sub_19209E798(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  os_unfair_lock_lock(*(a2 + 16));
  swift_beginAccess();
  if (*(a3 + 16))
  {
    result = sub_192228620();
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
    os_unfair_lock_unlock(*(a2 + 16));
    if (a1)
    {
      v38 = a6;
      v14 = qword_1ED74AED8;
      v15 = a1;
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = sub_1922258B0();
      __swift_project_value_buffer(v16, qword_1ED74CB50);
      v17 = v15;

      v18 = sub_192225890();
      v19 = sub_192227FB0();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = a7;
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v39 = v23;
        *v21 = 136446466;
        *(v21 + 4) = sub_19202B8CC(a4, a5, &v39);
        *(v21 + 12) = 2114;
        *(v21 + 14) = v17;
        *v22 = a1;
        v24 = v17;
        _os_log_impl(&dword_192028000, v18, v19, "Batch ended (%{public}s) - failure: %{public}@", v21, 0x16u);
        sub_192033970(v22, &qword_1EADEEDF0, &qword_1922319C0);
        MEMORY[0x193B0C7F0](v22, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x193B0C7F0](v23, -1, -1);
        v25 = v21;
        a7 = v20;
        MEMORY[0x193B0C7F0](v25, -1, -1);
      }

      else
      {
      }

      a6 = v38;
    }

    else
    {
      if (qword_1ED74AED8 != -1)
      {
        swift_once();
      }

      v26 = sub_1922258B0();
      __swift_project_value_buffer(v26, qword_1ED74CB50);

      v27 = sub_192225890();
      v28 = sub_192227FB0();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v39 = v30;
        *v29 = 136446210;
        *(v29 + 4) = sub_19202B8CC(a4, a5, &v39);
        _os_log_impl(&dword_192028000, v27, v28, "Batch ended (%{public}s) - success", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x193B0C7F0](v30, -1, -1);
        MEMORY[0x193B0C7F0](v29, -1, -1);
      }
    }

    v31 = sub_1922280D0();
    if (qword_1ED74B750 != -1)
    {
      swift_once();
    }

    v32 = qword_1ED74CBD8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
    v33 = swift_allocObject();
    v34 = v33;
    *(v33 + 16) = xmmword_19222B480;
    if (a1)
    {
      v35 = 1702195828;
    }

    else
    {
      v35 = 0x65736C6166;
    }

    if (a1)
    {
      v36 = 0xE400000000000000;
    }

    else
    {
      v36 = 0xE500000000000000;
    }

    *(v33 + 56) = MEMORY[0x1E69E6158];
    *(v33 + 64) = sub_1920B3134();
    *(v34 + 32) = v35;
    *(v34 + 40) = v36;
    sub_1922257B0(v31, &dword_192028000, v32, "GetPlaceholders", 15, 2, a6, "<error.present>=%@", 18, 2, v34);

    return a7(a1);
  }

  return result;
}

void sub_19209EC48(unint64_t a1, void (*a2)(id), __n128 a3)
{
  v13 = 0;
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_18:
    (a2)(0, a3);
    return;
  }

LABEL_17:
  v4 = sub_192228340();
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_3:
  v5 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x193B0B410](v5, a1, a3);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = objc_autoreleasePoolPush();
    sub_19209EDB8(v7, &v13);
    objc_autoreleasePoolPop(v9);
    v10 = v13;
    if (v13)
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_18;
    }
  }

  v11 = v13;
  a2(v10);
}

void sub_19209EDB8(uint64_t a1, void **a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v292 = v248 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v296 = v248 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v248 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v295 = v248 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v297 = v248 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v280 = v248 - v18;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  MEMORY[0x1EEE9AC00](v259);
  v301 = (v248 - v19);
  v281 = sub_192225D50();
  v283 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281);
  v279 = v248 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE78, &qword_19222B7D8);
  v264 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v277 = (v248 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v276 = v248 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v275 = v248 - v25;
  v282 = type metadata accessor for ViewableTimelineEntry(0);
  v288 = *(v282 - 8);
  MEMORY[0x1EEE9AC00](v282);
  v289 = v248 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v291 = v248 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v285 = v248 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v274 = v248 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v320 = v248 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v273 = v248 - v36;
  v286 = sub_192225150();
  v260 = *(v286 - 1);
  MEMORY[0x1EEE9AC00](v286);
  v258 = v248 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v257 = v248 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v256);
  v261 = v248 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v284 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v290 = v248 - v42;
  v287 = type metadata accessor for TimelineProviderContext(0);
  MEMORY[0x1EEE9AC00](v287);
  v294 = v248 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = v248 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v49 = v248 - v48;
  v50 = *(a1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind);
  v298 = *(a1 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_kind + 8);
  v299 = v50;
  v51 = OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_environment;
  v300 = a1;
  KeyPath = swift_getKeyPath();
  v53 = sub_192066FD0(KeyPath);

  if (!v53)
  {
    goto LABEL_15;
  }

  if (!*(v53 + 2))
  {

LABEL_15:
    v76 = 0x8000000192249270;
    v77 = *MEMORY[0x1E69941E8];
    v78 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v79 = sub_192227960();
    v81 = v80;
    *(&v311 + 1) = MEMORY[0x1E69E6158];
    v82 = 0xD000000000000010;
LABEL_43:
    *&v310 = v82;
    *(&v310 + 1) = v76;
    sub_19203BEDC(&v310, &v303);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v317[0] = v78;
    sub_19213DB28(&v303, v79, v81, isUniquelyReferenced_nonNull_native);

    v115 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v116 = sub_192227830();

    v117 = [v115 initWithDomain:v77 code:1102 userInfo:v116];

    v102 = *a2;
    *a2 = v117;
LABEL_44:

    return;
  }

  v293 = v12;
  v54 = v53[32];

  v55 = swift_getKeyPath();
  p_cache = sub_192066C3C(v55);

  if (!p_cache)
  {
LABEL_42:
    v76 = 0x8000000192249290;
    v77 = *MEMORY[0x1E69941E8];
    v78 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v79 = sub_192227960();
    v81 = v113;
    *(&v311 + 1) = MEMORY[0x1E69E6158];
    v82 = 0xD000000000000011;
    goto LABEL_43;
  }

  v57 = p_cache & 0xFFFFFFFFFFFFFF8;
  if (!(p_cache >> 62))
  {
    if (*((p_cache & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

  if (!sub_192228340())
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_6:
  v255 = v46;
  if ((p_cache & 0xC000000000000001) != 0)
  {
    v58 = MEMORY[0x193B0B410](0, p_cache);
  }

  else
  {
    if (!*((p_cache & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_47;
    }

    v58 = *(p_cache + 32);
  }

  v271 = v58;

  v59 = *(v300 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_fileHandle);
  *&v310 = v299;
  *(&v310 + 1) = v298;

  MEMORY[0x193B0A990](58, 0xE100000000000000);
  LODWORD(v270) = v54;
  LOBYTE(v303) = v54;
  _sSo15CHSWidgetFamilyV9WidgetKitEyAbC08InternalcB0OcfC_0(&v303);
  v60 = NSStringFromWidgetFamily();
  v61 = sub_192227960();
  v63 = v62;

  MEMORY[0x193B0A990](v61, v63);

  v64 = v310;
  if (qword_1ED74AED8 != -1)
  {
    swift_once();
  }

  v65 = sub_1922258B0();
  v66 = __swift_project_value_buffer(v65, qword_1ED74CB50);

  v67 = v59;
  v251 = v66;
  v68 = sub_192225890();
  v69 = sub_192227FB0();

  LODWORD(v269) = v69;
  v70 = os_log_type_enabled(v68, v69);
  v253 = *(&v64 + 1);
  v254 = a2;
  v250 = v64;
  v252 = v67;
  if (v70)
  {
    v268 = v68;
    v71 = swift_slowAlloc();
    v266 = swift_slowAlloc();
    *&v310 = v266;
    *v71 = 136446466;
    *(v71 + 4) = sub_19202B8CC(v64, *(&v64 + 1), &v310);
    v267 = v71;
    *(v71 + 12) = 2082;
    sub_19211B2CC(v49);
    v72 = sub_192225020();
    v73 = *(v72 - 8);
    if ((*(v73 + 48))(v49, 1, v72) == 1)
    {
      sub_192033970(v49, &qword_1EADEEE10, &unk_19222B630);
      v74 = 0xE700000000000000;
      v75 = 0x6E776F6E6B6E75;
    }

    else
    {
      v83 = sub_192225000();
      v74 = v84;
      (*(v73 + 8))(v49, v72);
      v75 = v83;
    }

    v54 = v270;
    v85 = sub_19202B8CC(v75, v74, &v310);

    v87 = v267;
    v86 = v268;
    *(v267 + 14) = v85;
    _os_log_impl(&dword_192028000, v86, v269, "Request began for %{public}s - to archive: %{public}s", v87, 0x16u);
    v88 = v266;
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v88, -1, -1);
    MEMORY[0x193B0C7F0](v87, -1, -1);
  }

  else
  {

    v54 = v270;
  }

  p_cache = *(v300 + OBJC_IVAR____TtC9WidgetKit18PlaceholderRequest_extensionIdentity);
  LOBYTE(v310) = v54;
  v89 = _sSo15CHSWidgetFamilyV9WidgetKitEyAbC08InternalcB0OcfC_0(&v310);
  v90 = objc_allocWithZone(MEMORY[0x1E6994370]);
  v49 = sub_192227930();
  a2 = [v90 initWithExtensionIdentity:p_cache kind:v49 family:v89 intent:0 activityIdentifier:0];

  v57 = xmmword_1ED74CC80;
  if (!xmmword_1ED74CC80)
  {
    goto LABEL_123;
  }

  v91 = qword_1ED74CC90;
  v92 = *xmmword_1ED74CC80;
  *&v303 = xmmword_1ED74CC80;
  v93 = *(qword_1ED74CC90 + 40);

  v93(&v310, a2, v92, v91);

  if (!*(&v311 + 1))
  {

    sub_192033970(&v310, &qword_1EADEEE80, &qword_19222B808);
    if (qword_1ED749278 != -1)
    {
      swift_once();
    }

    v101 = qword_1ED74C6E8;

    v102 = *v254;
    *v254 = v101;
    goto LABEL_44;
  }

  sub_19203832C(&v310, v317);
  *&v303 = *(v300 + v51);
  v94 = v303;
  TimelineProviderContext.EnvironmentVariants.init(_:)(&v303, &v310);
  v95 = v310;
  v49 = *(&v311 + 1);
  v300 = v311;
  InternalWidgetFamily.init(_:)([a2 family], &v303);
  v96 = v303;
  v97 = [a2 personaIdentifier];
  v270 = a2;
  v249 = v94;
  if (v97)
  {
    v98 = v97;
    v99 = sub_192227960();
    v298 = v100;
    v299 = v99;
  }

  else
  {
    v298 = 0;
    v299 = 0;
  }

  p_cache = v255;
  v103 = v294;
  *v294 = v95;
  v104 = v300;
  *(v103 + 16) = v300;
  *(v103 + 24) = v49;
  LOBYTE(v302) = v96;

  a2 = v95;

  sub_19206E384(&v302, &v316);
  *(v103 + 32) = v316;
  *(v103 + 33) = v96;
  *(v103 + 56) = 0;
  v105 = swift_getKeyPath();
  v106 = sub_192085490(v105, a2, *(&v95 + 1), v104, v49);

  if (v106)
  {
    if (*(v106 + 2))
    {
      v2 = *(v106 + 4);
    }

    else
    {
      v2 = 2.0;
    }

    v46 = p_cache;
    v54 = v270;
  }

  else
  {
    v54 = v270;
    v2 = 2.0;
    v46 = p_cache;
  }

  v107 = swift_getKeyPath();
  v269 = *(&v95 + 1);
  v51 = sub_192085D6C(v107, a2, *(&v95 + 1), v300, v49);

  v3 = 0;
  if (!v51)
  {
    goto LABEL_49;
  }

  v57 = v51 & 0xFFFFFFFFFFFFFF8;
  if (!(v51 >> 62))
  {
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_36:
      if ((v51 & 0xC000000000000001) != 0)
      {
        v108 = MEMORY[0x193B0B410](0, v51);
        goto LABEL_39;
      }

      if (*(v57 + 16))
      {
        v108 = *(v51 + 32);
LABEL_39:
        v109 = v108;

        [v109 _rawLayoutInsetAdjustedSizePixelAlignedForDisplayScale_];
        v3 = v110;
        v112 = v111;

        goto LABEL_50;
      }

      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:

      v247 = v276;
      sub_1920B3484(&v276[v57], type metadata accessor for BundleStub);
      sub_192033970(&v247[*(p_cache + 1848)], &qword_1EADEE9F0, &qword_19222A7A0);
      (*(v49 + 8))(&v247[*v54], a2);
      swift_deallocPartialClassInstance();
      __break(1u);
      return;
    }

    goto LABEL_48;
  }

LABEL_47:
  if (sub_192228340())
  {
    goto LABEL_36;
  }

LABEL_48:

LABEL_49:
  v112 = 0;
LABEL_50:
  v118 = v294;
  *(v294 + 64) = v3;
  *(v118 + 72) = v112;
  v119 = swift_getKeyPath();
  v120 = sub_192099884(v119);

  v121 = v54;
  v122 = v290;
  if (v120)
  {
    if (v120[2])
    {
      sub_19202CFFC(v120 + ((v284[80] + 32) & ~v284[80]), v290, &qword_1EADEECD0, &qword_1922363D0);

      goto LABEL_55;
    }
  }

  v123 = sub_192224EA0();
  (*(*(v123 - 8) + 56))(v122, 1, 1, v123);
LABEL_55:
  v124 = v294;
  sub_19204E300(v122, v294 + *(v287 + 40), &qword_1EADEECD0, &qword_1922363D0);
  v125 = v298;
  *(v124 + 40) = v299;
  *(v124 + 48) = v125;
  sub_192084510(v124, v46, type metadata accessor for TimelineProviderContext);
  v126 = v318;
  v127 = v319;
  __swift_project_boxed_opaque_existential_1(v317, v318);
  v128 = (*(v127 + 24))(v121, v46, v126, v127);
  if (!v128)
  {

    v169 = *MEMORY[0x1E69941E8];
    v170 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v171 = sub_192227960();
    v172 = v254;
    v174 = v173;
    *(&v311 + 1) = MEMORY[0x1E69E6158];
    *&v310 = 0xD00000000000001BLL;
    *(&v310 + 1) = 0x80000001922492B0;
    sub_19203BEDC(&v310, &v303);
    v175 = swift_isUniquelyReferenced_nonNull_native();
    v316 = v170;
    sub_19213DB28(&v303, v171, v174, v175);

    v176 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v177 = sub_192227830();

    v178 = [v176 initWithDomain:v169 code:1101 userInfo:v177];

    sub_1920B3484(v255, type metadata accessor for TimelineProviderContext);
    v179 = *v172;
    *v172 = v178;

    __swift_destroy_boxed_opaque_existential_1(v317);
    return;
  }

  v129 = v128;

  v131 = sub_19209BB80(v130);

  v132 = v131[2];
  v248[2] = v129;
  v284 = MEMORY[0x1E69E7CC0];
  if (v132)
  {
    v316 = MEMORY[0x1E69E7CC0];
    sub_19209ACA4(0, v132, 0);
    v133 = (*(v288 + 80) + 32) & ~*(v288 + 80);
    v248[1] = v131;
    v269 = v133;
    v134 = v131 + v133;
    v300 = v316;
    v267 = (v264 + 2);
    v268 = (v283 + 8);
    v265 = *(v288 + 72);
    v266 = (v260 + 16);
    ++v264;
    v299 = (v132 - 1);
    v263 = xmmword_19222B490;
    v262 = xmmword_19222A790;
    while (1)
    {
      v298 = type metadata accessor for ViewableTimelineEntry;
      v287 = v134;
      v135 = v320;
      sub_192084578(v134, v320, type metadata accessor for ViewableTimelineEntry);
      v136 = *(v135 + *(v282 + 20));
      v137 = swift_getKeyPath();
      LOBYTE(v303) = 0;
      v138 = swift_getKeyPath();
      LOBYTE(v302) = 0;
      v139 = swift_getKeyPath();
      v309 = 0;
      v140 = v121;
      v141 = v271;
      v142 = [v140 family];
      v143 = v303;
      *&v303 = v136;
      *(&v303 + 1) = v140;
      *&v304 = v141;
      *(&v304 + 1) = v142;
      *&v305 = v137;
      BYTE8(v305) = v143;
      v306 = v138;
      LOBYTE(v307) = v302;
      *(&v307 + 1) = v139;
      v308 = v309;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF2A0, &qword_19222B810);
      v144 = v283;
      v145 = swift_allocObject();
      *(v145 + 16) = v263;

      sub_192225D10();
      sub_192225D20();
      v302 = v145;
      sub_192035B0C(&qword_1ED74ABF0, 255, MEMORY[0x1E697EA58], MEMORY[0x1E697EA78]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE88, &qword_19222B818);
      sub_19202A880(&qword_1ED74ABE0, &qword_1EADEEE88, &qword_19222B818);
      v146 = v279;
      v147 = v281;
      sub_1922282F0();
      v294 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE58, &unk_19222B7A0);
      v290 = sub_1920B33A4();
      v148 = v275;
      sub_192227200();
      (*(v144 + 8))(v146, v147);
      v312 = v305;
      v313 = v306;
      v314 = v307;
      v315 = v308;
      v310 = v303;
      v311 = v304;
      sub_192033970(&v310, &qword_1EADEEE58, &unk_19222B7A0);
      v149 = v274;
      sub_192084578(v320, v274, v298);
      v150 = *v267;
      v151 = v276;
      v152 = v278;
      (*v267)(v276, v148, v278);
      v153 = v273;
      (*v266)(v273, v149, v286);
      v150(v277, v151, v152);
      *&v303 = v294;
      *(&v303 + 1) = v290;
      swift_getOpaqueTypeConformance2();
      v154 = sub_192227570();
      v155 = *v264;
      (*v264)(v151, v152);
      v156 = v152;
      v157 = v153;
      v155(v148, v156);
      sub_1920B3484(v320, type metadata accessor for ViewableTimelineEntry);
      v158 = v282;
      v159 = &v149[*(v282 + 24)];
      v160 = *v159;
      v161 = *(v159 + 1);
      LOBYTE(v153) = v159[16];
      sub_1920B3484(v149, type metadata accessor for ViewableTimelineEntry);
      v162 = v158[7];
      v163 = type metadata accessor for WidgetViewMetadata(0);
      (*(*(v163 - 8) + 56))(v157 + v162, 1, 1, v163);
      *(v157 + v158[5]) = v154;
      v164 = v157 + v158[6];
      *v164 = v160;
      *(v164 + 8) = v161;
      *(v164 + 16) = v153;
      *(v157 + v158[8]) = v262;
      v165 = v300;
      v316 = v300;
      v167 = *(v300 + 16);
      v166 = *(v300 + 24);
      if (v167 >= v166 >> 1)
      {
        sub_19209ACA4((v166 > 1), v167 + 1, 1);
        v165 = v316;
      }

      *(v165 + 16) = v167 + 1;
      v300 = v165;
      v168 = v265;
      sub_192084510(v157, v165 + v269 + v167 * v265, type metadata accessor for ViewableTimelineEntry);
      if (!v299)
      {
        break;
      }

      v299 = (v299 - 1);
      v134 = v287 + v168;
      v121 = v270;
    }

    v121 = v270;
  }

  else
  {

    v300 = MEMORY[0x1E69E7CC0];
  }

  v180 = qword_1ED74B558;
  v274 = v249;
  v181 = v121;
  v182 = v272;
  v49 = v260;
  if (v180 != -1)
  {
LABEL_119:
    swift_once();
  }

  v183 = __swift_project_value_buffer(v256, qword_1ED74B570);
  sub_192084578(v183, v261, type metadata accessor for TimelineReloadPolicy);
  v275 = type metadata accessor for WidgetViewCollection(0);
  v184 = swift_allocObject();
  p_cache = &OBJC_METACLASS____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate.cache;
  v185 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
  v186 = sub_192224E00();
  (*(*(v186 - 8) + 56))(v184 + v185, 1, 1, v186);
  v277 = v181;
  v187 = [v181 extensionIdentity];
  v188 = v257;
  BundleStub.init(_:)(v187, v257);
  v57 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle;
  sub_192084510(v188, v184 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
  v189 = v258;
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v54 = &OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  v190 = *(v49 + 32);
  v276 = v184;
  v191 = v184 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate;
  a2 = v286;
  v190(v191, v189, v286);
  *&v310 = v300;

  sub_19209B0C4(&v310);
  v273 = v182;
  if (v182)
  {
    goto LABEL_124;
  }

  v192 = v310;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
  inited = swift_initStackObject();
  *(inited + 16) = v192;
  *(inited + 24) = 0;
  v49 = v288 + 56;
  v194 = *(v288 + 56);
  v279 = *(v288 + 80);
  v195 = (v279 + 32) & ~v279;
  v281 = MEMORY[0x1E69E7CC0] + v195;
  v196 = v301;
  v294 = *(v259 + 32);
  v181 = v282;
  v299 = v194;
  (v194)(v301 + v294, 1, 1, v282);
  *v196 = inited;
  v196[1] = sub_1920DA3A8;
  v196[2] = 0;
  v290 = v192;
  v278 = v195;
  v286 = (v192 + v195);
  v287 = inited;
  v300 = v49;
  v298 = (v49 - 8);

  v283 = 0;
  v320 = 0;
  v182 = v297;
  while (2)
  {
    v299(v182, 1, 1, v181);
    while (1)
    {
      v198 = *(v290 + 16);
      if (v320 == v198)
      {
        v199 = 1;
        v182 = v295;
        v200 = v296;
      }

      else
      {
        v182 = v295;
        v200 = v296;
        if (v320 >= v198)
        {
          __break(1u);
          goto LABEL_116;
        }

        v201 = v320;
        sub_192084578(v286 + *(v288 + 72) * v320, v295, type metadata accessor for ViewableTimelineEntry);
        v199 = 0;
        v320 = v201 + 1;
        *(v287 + 24) = v201 + 1;
      }

      v299(v182, v199, 1, v181);
      v202 = v181;
      v203 = v297;
      v49 = &qword_1EADEE9F8;
      sub_192033970(v297, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19204E300(v182, v203, &qword_1EADEE9F8, &unk_19222A7D0);
      v204 = v293;
      sub_19202CFFC(v203, v293, &qword_1EADEE9F8, &unk_19222A7D0);
      v205 = *v298;
      if ((*v298)(v204, 1, v202) == 1)
      {
        break;
      }

      sub_192033970(v204, &qword_1EADEE9F8, &unk_19222A7D0);
      sub_19202CFFC(v203, v200, &qword_1EADEE9F8, &unk_19222A7D0);
      v182 = v203;
      if (v205(v200, 1, v202) == 1)
      {
        v210 = v200;
        v181 = v202;
        goto LABEL_83;
      }

      v206 = v200;
      v207 = v291;
      sub_192084510(v206, v291, type metadata accessor for ViewableTimelineEntry);
      v208 = v292;
      sub_19202CFFC(v301 + v294, v292, &qword_1EADEE9F8, &unk_19222A7D0);
      v181 = v202;
      if (v205(v208, 1, v202) == 1)
      {
        sub_1920B3484(v207, type metadata accessor for ViewableTimelineEntry);
        v210 = v208;
        goto LABEL_83;
      }

      v209 = v289;
      sub_192084510(v208, v289, type metadata accessor for ViewableTimelineEntry);
      v49 = sub_192225120();
      sub_1920B3484(v209, type metadata accessor for ViewableTimelineEntry);
      sub_1920B3484(v207, type metadata accessor for ViewableTimelineEntry);
      if ((v49 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    v210 = v204;
    v182 = v203;
    v181 = v202;
LABEL_83:
    sub_192033970(v210, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_84:
    sub_19209B16C(v182, v301 + v294);
    v57 = v280;
    sub_19204E300(v182, v280, &qword_1EADEE9F8, &unk_19222A7D0);
    if (v205(v57, 1, v181) != 1)
    {
      sub_192084510(v57, v285, type metadata accessor for ViewableTimelineEntry);
      v49 = v283;
      v211 = v284;
      if (!v283)
      {
        v212 = *(v284 + 3);
        if (((v212 >> 1) + 0x4000000000000000) >= 0)
        {
          v213 = v212 & 0xFFFFFFFFFFFFFFFELL;
          if (v213 <= 1)
          {
            v214 = 1;
          }

          else
          {
            v214 = v213;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
          v215 = *(v288 + 72);
          v49 = v278;
          v197 = swift_allocObject();
          v216 = _swift_stdlib_malloc_size(v197);
          if (v215)
          {
            v217 = v216 - v49;
            if (v216 - v49 != 0x8000000000000000 || v215 != -1)
            {
              v219 = v49;
              v220 = v217 / v215;
              *(v197 + 2) = v214;
              *(v197 + 3) = 2 * (v217 / v215);
              v221 = &v197[v219];
              v222 = *(v211 + 3) >> 1;
              v223 = v222 * v215;
              if (*(v211 + 2))
              {
                if (v197 < v211 || v221 >= &v211[v219 + v223])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v197 != v211)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                *(v211 + 2) = 0;
              }

              v57 = &v221[v223];
              v224 = (v220 & 0x7FFFFFFFFFFFFFFFLL) - v222;

              v225 = __OFSUB__(v224, 1);
              v49 = v224 - 1;
              if (!v225)
              {
                goto LABEL_69;
              }

              goto LABEL_104;
            }

LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v197 = v284;
      v57 = v281;
      v49 = v283 - 1;
      if (!__OFSUB__(v283, 1))
      {
LABEL_69:
        v283 = v49;
        sub_192084510(v285, v57, type metadata accessor for ViewableTimelineEntry);
        v281 = v57 + *(v288 + 72);
        v284 = v197;
        continue;
      }

LABEL_104:
      __break(1u);
    }

    break;
  }

  sub_192033970(v301, &qword_1EADEEA00, &unk_19222B660);
  sub_192033970(v57, &qword_1EADEE9F8, &unk_19222A7D0);
  p_cache = v284;
  v226 = *(v284 + 3);
  v54 = v254;
  v227 = v255;
  v228 = v253;
  v229 = v276;
  a2 = v277;
  if (v226 >= 2)
  {
    v230 = v226 >> 1;
    v225 = __OFSUB__(v230, v283);
    v231 = v230 - v283;
    if (v225)
    {
      goto LABEL_122;
    }

    *(v284 + 2) = v231;
  }

  swift_setDeallocating();

  *&v229[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries] = p_cache;
  *(v229 + 2) = v274;
  *&v229[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget] = a2;
  v232 = v261;
  sub_192084578(v261, &v229[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy], type metadata accessor for TimelineReloadPolicy);
  swift_beginAccess();
  v233 = byte_1ED74B5B8;
  sub_1920B3484(v232, type metadata accessor for TimelineReloadPolicy);
  v229[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel] = v233;
  *&v229[OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes] = MEMORY[0x1E69E7CD0];
  v234 = type metadata accessor for WidgetArchiver();
  *(&v311 + 1) = v275;
  *&v312 = &protocol witness table for WidgetViewCollection;
  *&v310 = v229;

  v236 = sub_1920AD1B0(v235);
  v237 = v252;
  v238 = v273;
  sub_192170900(&v310, v236, v234, v237);
  if (v238)
  {

    __swift_destroy_boxed_opaque_existential_1(&v310);
    v239 = sub_192224F80();

    sub_1920B3484(v227, type metadata accessor for TimelineProviderContext);
    v240 = *v54;
    *v54 = v239;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v310);

    v241 = sub_192225890();
    v242 = sub_192227FB0();

    if (os_log_type_enabled(v241, v242))
    {
      v243 = swift_slowAlloc();
      v244 = swift_slowAlloc();
      *&v310 = v244;
      *v243 = 136446210;
      v245 = sub_19202B8CC(v250, v228, &v310);

      *(v243 + 4) = v245;
      _os_log_impl(&dword_192028000, v241, v242, "Request ended for %{public}s - success.", v243, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v244);
      MEMORY[0x193B0C7F0](v244, -1, -1);
      MEMORY[0x193B0C7F0](v243, -1, -1);

      v246 = v255;
    }

    else
    {

      v246 = v227;
    }

    sub_1920B3484(v246, type metadata accessor for TimelineProviderContext);
  }

  __swift_destroy_boxed_opaque_existential_1(v317);
}

double sub_1920A118C(unint64_t a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a3;
  v50 = a4;
  v48 = a2;
  v7 = sub_1922252A0();
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1922251B0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v13 = sub_192228340();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1922251A0();
  v14 = sub_192225160();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  sub_1920AC810(6, v14, v16);

  v17 = sub_192228260();
  v19 = v18;

  v51 = 2976116;
  v52 = 0xE300000000000000;
  MEMORY[0x193B0A990](v17, v19);

  v21 = v51;
  v20 = v52;
  v22 = v13;
  if (v13 < 1)
  {
    goto LABEL_8;
  }

  if (qword_1ED749B38 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v23 = sub_1922258B0();
    __swift_project_value_buffer(v23, qword_1ED74C770);

    v24 = sub_192225890();
    v25 = sub_192227FB0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v45;
      *v26 = 136446466;
      v44 = v21;
      *(v26 + 4) = sub_19202B8CC(v21, v20, &v51);
      *(v26 + 12) = 2082;
      v27 = v46;
      sub_192225240();
      sub_192035B0C(&unk_1ED74C4F0, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
      v28 = sub_192228910();
      v29 = v7;
      v7 = a5;
      v30 = v22;
      v32 = v31;
      (*(v47 + 8))(v27, v29);
      v33 = sub_19202B8CC(v28, v32, &v51);
      v22 = v30;
      a5 = v7;

      *(v26 + 14) = v33;
      v21 = v44;
      _os_log_impl(&dword_192028000, v24, v25, "Batch begin (%{public}s) - locale: %{public}s", v26, 0x16u);
      v34 = v45;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v34, -1, -1);
      MEMORY[0x193B0C7F0](v26, -1, -1);
    }

LABEL_8:
    v35 = swift_allocObject();
    *(v35 + 16) = v22 > 0;
    *(v35 + 24) = v21;
    *(v35 + 32) = v20;
    v36 = v50;
    *(v35 + 40) = v50;
    *(v35 + 48) = a5;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    v21 = v49;
    if ((v49 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > v49)
    {
      v37 = *(a1 + 8 * v49 + 32);

      v38 = v37;
      goto LABEL_12;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v21 = v49;
  v38 = MEMORY[0x193B0B410](v49, a1);
LABEL_12:
  v39 = v38;
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = swift_allocObject();
  *(v41 + 16) = v40;
  *(v41 + 24) = v36;
  *(v41 + 32) = a5;
  *(v41 + 40) = v21;
  *(v41 + 48) = a1;
  v42 = v48 & 1;
  *(v41 + 56) = v48 & 1;
  *(v41 + 64) = sub_1920B3624;
  *(v41 + 72) = v35;

  sub_1920A19B4(v39, v42, sub_1920B3684, v41);

  return result;
}

void sub_1920A16E4(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, unint64_t a6, char a7, void (*a8)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_1ED749B38 != -1)
    {
      swift_once();
    }

    v18 = sub_1922258B0();
    __swift_project_value_buffer(v18, qword_1ED74C770);
    v19 = sub_192225890();
    v20 = sub_192227FB0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_192028000, v19, v20, "WidgetExtensionXPCServer disappeared", v21, 2u);
      MEMORY[0x193B0C7F0](v21, -1, -1);
    }

    v22 = *MEMORY[0x1E69941E8];
    v23 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v24 = sub_192227960();
    v26 = v25;
    v35 = MEMORY[0x1E69E6158];
    *&v34 = 0xD000000000000024;
    *(&v34 + 1) = 0x8000000192248FB0;
    sub_19203BEDC(&v34, v33);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19213DB28(v33, v24, v26, isUniquelyReferenced_nonNull_native);

    v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v29 = sub_192227830();

    v16 = [v28 initWithDomain:v22 code:1050 userInfo:{v29, v23}];

    a3(v16);
    goto LABEL_15;
  }

  v16 = Strong;
  if (a1)
  {
    v17 = a1;
    goto LABEL_14;
  }

  if (a6 >> 62)
  {
    v32 = sub_192228340();
    v31 = v32 - 1;
    if (!__OFSUB__(v32, 1))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v30 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v30 - 1;
    if (!__OFSUB__(v30, 1))
    {
LABEL_11:
      if (v31 > a5)
      {
        sub_1920A118C(a6, a7 & 1, a5 + 1, a3, a4);
LABEL_15:

        return;
      }

      v17 = 0;
LABEL_14:
      a8(v17);
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1920A19B4(char *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v120 = a4;
  v121 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = &v111 - v9;
  v132 = sub_192225800();
  v119 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v128 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v111 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v111 - v14;
  v16 = sub_1922258B0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v127 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v111 - v20;
  LODWORD(v116) = a2;
  if (a2)
  {
    if (qword_1ED7499C0 != -1)
    {
      swift_once();
    }

    v22 = qword_1ED74C730;
  }

  else
  {
    if (qword_1ED749B38 != -1)
    {
      swift_once();
    }

    v22 = qword_1ED74C770;
  }

  v23 = __swift_project_value_buffer(v16, v22);
  v118 = v17;
  v24 = *(v17 + 16);
  v129 = v16;
  v115 = v17 + 16;
  v114 = v24;
  v24(v21, v23, v16);
  v113 = a1;
  v25 = *&a1[OBJC_IVAR____TtC9WidgetKit15TimelineRequest_widget];
  v26 = [v25 kind];
  v27 = sub_192227960();
  v29 = v28;

  v134 = v27;
  v135 = v29;
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  [v25 family];
  v30 = NSStringFromWidgetFamily();
  v31 = sub_192227960();
  v33 = v32;

  MEMORY[0x193B0A990](v31, v33);

  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v126 = v25;
  v34 = [v25 intentReference];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 stableHash];

    v133 = v36;
    sub_1920B3350();
    v37 = sub_192228290();
    v39 = v38;
  }

  else
  {
    v39 = 0xEA00000000002974;
    v37 = 0x6E65746E496F6E28;
  }

  MEMORY[0x193B0A990](v37, v39);

  v40 = v135;
  v124 = v134;
  v41 = [v126 intentReference];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 intent];
  }

  else
  {
    v43 = 0;
  }

  v44 = v43;
  v45 = sub_192225890();
  v46 = sub_192227FB0();
  v122 = v44;

  v47 = os_log_type_enabled(v45, v46);
  v123 = v40;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v134 = v49;
    *v48 = 136446210;
    if (v43)
    {
      v50 = [v122 description];
      v111 = v15;
      v51 = v18;
      v52 = v21;
      v53 = v5;
      v54 = v50;
      v55 = sub_192227960();
      v57 = v56;

      v5 = v53;
      v21 = v52;
      v18 = v51;
      v15 = v111;
    }

    else
    {
      v57 = 0xE300000000000000;
      v55 = 7104878;
    }

    v58 = sub_19202B8CC(v55, v57, &v134);

    *(v48 + 4) = v58;
    _os_log_impl(&dword_192028000, v45, v46, "intent = %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x193B0C7F0](v49, -1, -1);
    MEMORY[0x193B0C7F0](v48, -1, -1);

    v40 = v123;
  }

  else
  {
  }

  v59 = v113;
  v60 = sub_192225890();
  v61 = sub_192227FB0();

  v62 = os_log_type_enabled(v60, v61);
  v125 = v21;
  v113 = v59;
  if (v62)
  {
    v111 = v18;
    v63 = v5;
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v134 = v65;
    *v64 = 136446466;
    *(v64 + 4) = sub_19202B8CC(v124, v40, &v134);
    *(v64 + 12) = 2082;
    sub_19211B2CC(v15);
    v66 = sub_192225020();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v15, 1, v66) == 1)
    {
      sub_192033970(v15, &qword_1EADEEE10, &unk_19222B630);
      v68 = 0xE700000000000000;
      v69 = 0x6E776F6E6B6E75;
    }

    else
    {
      v69 = sub_192225000();
      v68 = v70;
      (*(v67 + 8))(v15, v66);
    }

    v71 = sub_19202B8CC(v69, v68, &v134);

    *(v64 + 14) = v71;
    _os_log_impl(&dword_192028000, v60, v61, "Request began for %{public}s - to archive: %{public}s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v65, -1, -1);
    MEMORY[0x193B0C7F0](v64, -1, -1);

    v5 = v63;
    v21 = v125;
    v18 = v111;
  }

  else
  {
  }

  v112 = v5;
  if (qword_1ED74B750 != -1)
  {
    swift_once();
  }

  v72 = qword_1ED74CBD8;
  v73 = v130;
  sub_1922257E0();
  v74 = sub_1922280E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_19222B490;
  v134 = 91;
  v135 = 0xE100000000000000;
  v76 = v126;
  v77 = [v126 extensionBundleIdentifier];
  v78 = sub_192227960();
  v80 = v79;

  MEMORY[0x193B0A990](v78, v80);

  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v81 = [v76 kind];
  v82 = sub_192227960();
  v84 = v83;

  MEMORY[0x193B0A990](v82, v84);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  v85 = v134;
  v86 = v135;
  v87 = MEMORY[0x1E69E6158];
  *(v75 + 56) = MEMORY[0x1E69E6158];
  v88 = sub_1920B3134();
  *(v75 + 32) = v85;
  *(v75 + 40) = v86;
  v89 = (v116 & 1) == 0;
  LODWORD(v126) = v116 & 1;
  v90 = 1702195828;
  if ((v116 & 1) == 0)
  {
    v90 = 0x65736C6166;
  }

  v91 = 0xE500000000000000;
  *(v75 + 96) = v87;
  *(v75 + 104) = v88;
  if (!v89)
  {
    v91 = 0xE400000000000000;
  }

  *(v75 + 64) = v88;
  *(v75 + 72) = v90;
  *(v75 + 80) = v91;
  sub_1922257B0(v74, &dword_192028000, v72, "GetTimeline", 11, 2, v73, "<widget.description>=%@ <isPreview>=%@", 38, 2, v75);

  v92 = sub_192227CF0();
  (*(*(v92 - 8) + 56))(v131, 1, 1, v92);
  v114(v127, v21, v129);
  v93 = v119;
  (*(v119 + 16))(v128, v73, v132);
  sub_192227CC0();
  v116 = v113;
  v94 = v112;
  v95 = v120;

  v96 = sub_192227CB0();
  v97 = v118;
  v98 = (*(v118 + 80) + 49) & ~*(v118 + 80);
  v99 = &v18[v98 + 7] & 0xFFFFFFFFFFFFFFF8;
  v100 = (*(v93 + 80) + v99 + 16) & ~*(v93 + 80);
  v101 = (v117 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = swift_allocObject();
  v103 = MEMORY[0x1E69E85E0];
  *(v102 + 16) = v96;
  *(v102 + 24) = v103;
  v104 = v116;
  *(v102 + 32) = v94;
  *(v102 + 40) = v104;
  *(v102 + 48) = v126;
  v105 = v129;
  (*(v97 + 32))(v102 + v98, v127, v129);
  v106 = (v102 + v99);
  v107 = v123;
  *v106 = v124;
  v106[1] = v107;
  v108 = v132;
  (*(v93 + 32))(v102 + v100, v128, v132);
  v109 = (v102 + v101);
  *v109 = v121;
  v109[1] = v95;
  sub_19211CA04(0, 0, v131, &unk_19222B648, v102);

  (*(v93 + 8))(v130, v108);
  return (*(v97 + 8))(v125, v105);
}

uint64_t sub_1920A255C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a6;
  *(v8 + 48) = v15;
  *(v8 + 56) = v16;
  *(v8 + 32) = v14;
  *(v8 + 16) = a7;
  *(v8 + 24) = a8;
  *(v8 + 96) = a6;
  *(v8 + 64) = sub_192227CC0();
  *(v8 + 72) = sub_192227CB0();
  v11 = swift_task_alloc();
  *(v8 + 80) = v11;
  *v11 = v8;
  v11[1] = sub_1920A2634;

  return sub_1920AD734(a5, v9);
}

uint64_t sub_1920A2634()
{
  *(*v1 + 88) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_1920A29FC;
  }

  else
  {
    v4 = sub_1920A2790;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1920A2790()
{
  v20 = v0;

  v1 = sub_192225890();
  v2 = sub_192227FB0();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_19202B8CC(v4, v3, &v19);
    _os_log_impl(&dword_192028000, v1, v2, "Request ended for %{public}s - success", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }

  v7 = sub_1922280D0();
  if (qword_1ED74B750 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 48);
  v9 = *(v0 + 40);
  v10 = *(v0 + 96);
  v11 = qword_1ED74CBD8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_19222B490;
  v13 = MEMORY[0x1E69E6158];
  *(v12 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1920B3134();
  v15 = 0x65736C6166;
  v16 = 0xE500000000000000;
  *(v12 + 32) = 0x65736C6166;
  *(v12 + 40) = 0xE500000000000000;
  if (v10)
  {
    v15 = 1702195828;
  }

  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  if (v10)
  {
    v16 = 0xE400000000000000;
  }

  *(v12 + 64) = v14;
  *(v12 + 72) = v15;
  *(v12 + 80) = v16;
  sub_1922257B0(v7, &dword_192028000, v11, "GetTimeline", 11, 2, v9, "<error.present>=%@ <isPreview>=%@", 33, 2, v12);

  v8(0);
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1920A29FC()
{
  v31 = v0;
  v1 = *(v0 + 88);

  v2 = sub_192224F80();

  v3 = v1;
  v4 = sub_192225890();
  v5 = sub_192227FB0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v9 = *(v0 + 24);
    v8 = *(v0 + 32);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v10 = 136446466;
    *(v10 + 4) = sub_19202B8CC(v9, v8, &v30);
    *(v10 + 12) = 2114;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_192028000, v4, v5, "Request ended for %{public}s - error: %{public}@", v10, 0x16u);
    sub_192033970(v11, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x193B0C7F0](v12, -1, -1);
    MEMORY[0x193B0C7F0](v10, -1, -1);
  }

  else
  {
  }

  v29 = sub_1922280D0();
  if (qword_1ED74B750 != -1)
  {
    swift_once();
  }

  v28 = *(v0 + 48);
  v25 = *(v0 + 96);
  v26 = qword_1ED74CBD8;
  v27 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE18, &unk_19223C580);
  v15 = swift_allocObject();
  v16 = v15;
  *(v15 + 16) = xmmword_19222B490;
  if (v2)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v2)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  v19 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1920B3134();
  v16[4] = v17;
  v16[5] = v18;
  if (v25)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v25)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  v16[12] = v19;
  v16[13] = v20;
  v16[8] = v20;
  v16[9] = v21;
  v16[10] = v22;
  sub_1922257B0(v29, &dword_192028000, v26, "GetTimeline", 11, 2, v27, "<error.present>=%@ <isPreview>=%@", 33, 2, v16);

  v28(v2);

  v23 = *(v0 + 8);

  return v23();
}

void sub_1920A2D20(uint64_t a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a2 + 5);
  sub_1920B35C8(&a2[4], v4);
  os_unfair_lock_unlock(a2 + 5);
  if (v4[0] == 1)
  {
    *v4 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE70, &qword_19222B7C0);
    sub_192227C90();
  }
}

void sub_1920A2DC4(_BYTE *a1@<X0>, char *a2@<X8>)
{
  if (*a1)
  {
    v3 = sub_192225890();
    v4 = sub_192227FA0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_192028000, v3, v4, "Completion handler can only be called once. Subsequent calls in the same session are ignored.", v5, 2u);
      MEMORY[0x193B0C7F0](v5, -1, -1);
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
    *a1 = 1;
  }

  *a2 = v6;
}

void sub_1920A2EF4(char *a1, void (*a2)(void), uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v49 = a1;
  v3 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v3);
  v55 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v49 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v49 - v9;
  v50 = type metadata accessor for WidgetDescriptor(0);
  v10 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v54 = &v49 - v15;
  if (xmmword_1ED74CC80)
  {
    v16 = *xmmword_1ED74CC80;
    v61[0] = xmmword_1ED74CC80;
    v17 = (*(qword_1ED74CC90 + 24))(v16, v14);
    v18 = v17;
    v19 = *(v17 + 16);
    if (v19)
    {
      v20 = 0;
      v58 = v10;
      v59 = &v49[OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_kind];
      v21 = v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v56 = v21;
      v57 = v3;
      while (v20 < *(v18 + 16))
      {
        sub_192084578(v21 + *(v10 + 72) * v20, v12, type metadata accessor for WidgetDescriptor);
        sub_192084578(v12, v7, type metadata accessor for ViewSource);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          sub_1920B3484(v7, type metadata accessor for ViewSource);
        }

        else if (EnumCaseMultiPayload)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);

          v28 = sub_1922253B0();
          (*(*(v28 - 8) + 8))(v7, v28);
        }

        else
        {
          v23 = *v7;
          v24 = v7[1];
          v25 = v7[4];
          v26 = v7[5];

          sub_19203831C(v25, v26);

          if (v23 == *v59 && v24 == *(v59 + 1))
          {

            v10 = v58;
            goto LABEL_16;
          }

          v27 = sub_1922289A0();

          v10 = v58;
          v21 = v56;
          if (v27)
          {

LABEL_16:
            v30 = v51;
            sub_192084510(v12, v51, type metadata accessor for WidgetDescriptor);
            v29 = 0;
            goto LABEL_17;
          }
        }

        ++v20;
        sub_1920B3484(v12, type metadata accessor for WidgetDescriptor);
        if (v19 == v20)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_14:

      v29 = 1;
      v30 = v51;
LABEL_17:
      v31 = v50;
      (*(v10 + 56))(v30, v29, 1, v50);
      if ((*(v10 + 48))(v30, 1, v31) == 1)
      {
        sub_192033970(v30, &qword_1EADEEE20, &qword_19222B670);
      }

      else
      {
        v32 = v30;
        v33 = v54;
        sub_192084510(v32, v54, type metadata accessor for WidgetDescriptor);
        sub_192084578(v33, v55, type metadata accessor for ViewSource);
        v34 = swift_getEnumCaseMultiPayload();
        if (v34 > 1)
        {
          sub_1920B3484(v54, type metadata accessor for WidgetDescriptor);
          sub_1920B3484(v55, type metadata accessor for ViewSource);
        }

        else
        {
          if (!v34)
          {
            v35 = v55[4];
            v36 = v55[5];
            v37 = v55[6];

            sub_19203831C(v35, v36);

            v37(v60, v38);

            sub_19203832C(v60, v61);
            v39 = v62;
            v40 = v63;
            __swift_project_boxed_opaque_existential_1(v61, v62);
            v41 = swift_allocObject();
            v42 = v49;
            v43 = v52;
            v44 = v53;
            v41[2] = v49;
            v41[3] = v43;
            v41[4] = v44;
            v45 = *(v40 + 56);
            v46 = v42;

            v45(sub_1920B377C, v41, v39, v40);

            sub_1920B3484(v54, type metadata accessor for WidgetDescriptor);
            __swift_destroy_boxed_opaque_existential_1(v61);
            return;
          }

          sub_1920B3484(v54, type metadata accessor for WidgetDescriptor);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);
          v47 = v55;

          v48 = sub_1922253B0();
          (*(*(v48 - 8) + 8))(v47, v48);
        }
      }

      if (qword_1ED749278 == -1)
      {
        goto LABEL_25;
      }
    }

    swift_once();
LABEL_25:
    v52(qword_1ED74C6E8);
    return;
  }

  __break(1u);
}

double sub_1920A3600(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_192227CF0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_192227CC0();
  v12 = a1;
  v13 = a2;

  v14 = sub_192227CB0();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = a3;
  v15[7] = a4;
  sub_19211CA04(0, 0, v10, &unk_19222B7D0, v15);

  return result;
}

uint64_t sub_1920A3758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_192227CC0();
  v7[6] = sub_192227CB0();
  v9 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1920A37F4, v9, v8);
}

uint64_t sub_1920A37F4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  sub_1921626C0(v2, *(v1 + OBJC_IVAR____TtC9WidgetKit22WidgetRelevanceRequest_archiveFileHandle));
  (*(v0 + 32))(0);
  v3 = *(v0 + 8);

  return v3();
}

id sub_1920A3AAC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_1920A3B08(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a2;
  v56 = a3;
  v57 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v49 - v6;
  v8 = sub_1922252A0();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1922251B0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v15 = sub_192228340();
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1922251A0();
  v16 = sub_192225160();
  v18 = v17;
  (*(v12 + 8))(v14, v11);
  sub_1920AC810(6, v16, v18);

  v19 = sub_192228260();
  v21 = v20;

  v58 = 2978915;
  v59 = 0xE300000000000000;
  MEMORY[0x193B0A990](v19, v21);

  v22 = v58;
  v23 = v59;
  if (v15 < 1)
  {
    goto LABEL_8;
  }

  v52 = v7;
  if (qword_1EADEE4E8 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v24 = sub_1922258B0();
    __swift_project_value_buffer(v24, qword_1EAE00810);

    v25 = sub_192225890();
    v26 = sub_192227FB0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v51 = v15;
      v28 = v27;
      v50 = swift_slowAlloc();
      v58 = v50;
      *v28 = 136446466;
      *(v28 + 4) = sub_19202B8CC(v22, v23, &v58);
      *(v28 + 12) = 2082;
      sub_192225240();
      sub_192035B0C(&unk_1ED74C4F0, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
      v29 = v54;
      v30 = sub_192228910();
      v31 = v22;
      v33 = v32;
      (*(v53 + 8))(v10, v29);
      v34 = sub_19202B8CC(v30, v33, &v58);
      v22 = v31;

      *(v28 + 14) = v34;
      _os_log_impl(&dword_192028000, v25, v26, "Batch begin (%{public}s) - locale: %{public}s", v28, 0x16u);
      v35 = v50;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v35, -1, -1);
      v15 = v51;
      MEMORY[0x193B0C7F0](v28, -1, -1);
    }

    v7 = v52;
LABEL_8:
    v36 = swift_allocObject();
    *(v36 + 16) = v15 > 0;
    *(v36 + 24) = v22;
    *(v36 + 32) = v23;
    v22 = v56;
    v37 = v57;
    *(v36 + 40) = v56;
    *(v36 + 48) = v37;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    v15 = v55;
    if ((v55 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > v55)
    {
      v38 = *(a1 + 8 * v55 + 32);

      v39 = v38;
      goto LABEL_12;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v15 = v55;
  v39 = MEMORY[0x193B0B410](v55, a1);
LABEL_12:
  v40 = v39;
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = swift_allocObject();
  v42[2] = v41;
  v42[3] = sub_1920B2DAC;
  v42[4] = v36;
  v42[5] = v15;
  v42[6] = a1;
  v42[7] = v22;
  v42[8] = v37;

  sub_192227CD0();
  v43 = sub_192227CF0();
  (*(*(v43 - 8) + 56))(v7, 0, 1, v43);
  sub_192227CC0();
  v44 = v40;

  v45 = sub_192227CB0();
  v46 = swift_allocObject();
  v47 = MEMORY[0x1E69E85E0];
  v46[2] = v45;
  v46[3] = v47;
  v46[4] = v44;
  v46[5] = sub_1920B2E0C;
  v46[6] = v42;
  sub_19211CA04(0, 0, v7, &unk_19222B5F8, v46);

  return result;
}

uint64_t sub_1920A4180(id a1, char a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(id))
{
  if (a2)
  {
    if (a1)
    {
      v9 = a1;
      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v10 = sub_1922258B0();
      __swift_project_value_buffer(v10, qword_1EAE00810);
      v11 = a1;

      v12 = sub_192225890();
      v13 = sub_192227FB0();

      if (!os_log_type_enabled(v12, v13))
      {

        return a5(a1);
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v14 = 136446466;
      *(v14 + 4) = sub_19202B8CC(a3, a4, &v24);
      *(v14 + 12) = 2114;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      *v15 = v18;
      _os_log_impl(&dword_192028000, v12, v13, "Batch end (%{public}s) - failure: %{public}@", v14, 0x16u);
      sub_192033970(v15, &qword_1EADEEDF0, &qword_1922319C0);
      MEMORY[0x193B0C7F0](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x193B0C7F0](v16, -1, -1);
      MEMORY[0x193B0C7F0](v14, -1, -1);
    }

    else
    {
      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v19 = sub_1922258B0();
      __swift_project_value_buffer(v19, qword_1EAE00810);

      v12 = sub_192225890();
      v20 = sub_192227FB0();

      if (os_log_type_enabled(v12, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v24 = v22;
        *v21 = 136446210;
        *(v21 + 4) = sub_19202B8CC(a3, a4, &v24);
        _os_log_impl(&dword_192028000, v12, v20, "Batch end (%{public}s) - success", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x193B0C7F0](v22, -1, -1);
        MEMORY[0x193B0C7F0](v21, -1, -1);
      }
    }
  }

  return a5(a1);
}

void sub_1920A4490(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (a1)
    {
      v16 = a1;
      v17 = a1;
      a3(a1);

      return;
    }

    if (a6 >> 62)
    {
      v33 = sub_192228340();
      v32 = v33 - 1;
      if (!__OFSUB__(v33, 1))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v31 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = v31 - 1;
      if (!__OFSUB__(v31, 1))
      {
LABEL_11:
        if (v32 <= a5)
        {
          a3(0);
        }

        else
        {
          sub_1920A3B08(a6, a5 + 1, a7, a8);
        }

        return;
      }
    }

    __break(1u);
    return;
  }

  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v18 = sub_1922258B0();
  __swift_project_value_buffer(v18, qword_1EAE00810);
  v19 = sub_192225890();
  v20 = sub_192227FB0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_192028000, v19, v20, "WidgetExtensionXPCServer disappeared", v21, 2u);
    MEMORY[0x193B0C7F0](v21, -1, -1);
  }

  v22 = *MEMORY[0x1E69941E8];
  v23 = sub_19214036C(MEMORY[0x1E69E7CC0]);
  v24 = sub_192227960();
  v26 = v25;
  v36 = MEMORY[0x1E69E6158];
  *&v35 = 0xD000000000000024;
  *(&v35 + 1) = 0x8000000192248FB0;
  sub_19203BEDC(&v35, v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28(v34, v24, v26, isUniquelyReferenced_nonNull_native);

  v28 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v29 = sub_192227830();

  v30 = [v28 initWithDomain:v22 code:1500 userInfo:{v29, v23}];

  a3(v30);
}

uint64_t sub_1920A4788()
{
  v1[18] = v0;
  sub_192227CC0();
  v1[19] = sub_192227CB0();
  v3 = sub_192227C70();
  v1[20] = v3;
  v1[21] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1920A4820, v3, v2);
}

uint64_t sub_1920A4820()
{
  v1 = *(v0 + 144);
  if (*v1 == 1)
  {

    sub_1922254F0();
    v2 = sub_1922254D0();
    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    sub_1920B2F50((v1 + 1), v0 + 16);
    if (*(v0 + 56))
    {
      sub_19203832C((v0 + 16), v0 + 64);
      v5 = *(v0 + 88);
      v6 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), v5);
      v14 = (*(v6 + 48) + **(v6 + 48));
      v7 = swift_task_alloc();
      *(v0 + 208) = v7;
      *v7 = v0;
      v7[1] = sub_1920A4CDC;

      return v14(v5, v6);
    }

    else
    {
      sub_19203832C((v0 + 16), v0 + 104);
      v8 = *(v0 + 128);
      v9 = *(v0 + 136);
      __swift_project_boxed_opaque_existential_1((v0 + 104), v8);
      v10 = (*(v9 + 8))(v8, v9);
      *(v0 + 176) = v10;
      v11 = *(v0 + 128);
      v12 = *(v0 + 136);
      __swift_project_boxed_opaque_existential_1((v0 + 104), v11);
      v15 = (*(v12 + 24) + **(v12 + 24));
      v13 = swift_task_alloc();
      *(v0 + 184) = v13;
      *v13 = v0;
      v13[1] = sub_1920A4B1C;

      return v15(v10, v11, v12);
    }
  }
}

uint64_t sub_1920A4B1C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1920A4E94;
  }

  else
  {
    v4[25] = a1;
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1920A4C44;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1920A4C44()
{
  v1 = v0[22];

  sub_1922254F0();
  v2 = sub_1922254D0();

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1920A4CDC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1920A4F08;
  }

  else
  {
    v4[28] = a1;
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1920A4E04;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1920A4E04()
{

  sub_1922254F0();
  v1 = sub_1922254D0();
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1920A4E94()
{
  v1 = v0[22];

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1920A4F08()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1920A4F74(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  sub_192227CC0();
  v3[21] = sub_192227CB0();
  v5 = sub_192227C70();
  v3[22] = v5;
  v3[23] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1920A5010, v5, v4);
}

uint64_t sub_1920A5010()
{
  sub_1920B2F50(*(v0 + 160) + 8, v0 + 16);
  if (*(v0 + 56))
  {
    v1 = *(v0 + 144);
    sub_19203832C((v0 + 16), v0 + 64);
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1((v0 + 64), v2);
    v4 = *(v3 + 56);
    v1[3] = swift_getAssociatedTypeWitness();
    v1[4] = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
    v19 = (v4 + *v4);
    v6 = swift_task_alloc();
    *(v0 + 216) = v6;
    *v6 = v0;
    v6[1] = sub_1920A54E0;
    v7 = *(v0 + 152);

    return v19(boxed_opaque_existential_1, v7, v2, v3);
  }

  else
  {
    v9 = *(v0 + 160);
    sub_19203832C((v0 + 16), v0 + 104);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v10);
    v12 = (*(v11 + 8))(v10, v11);
    *(v0 + 192) = v12;
    v13 = *(v0 + 128);
    v14 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v13);
    v15 = *v9;
    v20 = (*(v14 + 16) + **(v14 + 16));
    v16 = swift_task_alloc();
    *(v0 + 200) = v16;
    *v16 = v0;
    v16[1] = sub_1920A5330;
    v17 = *(v0 + 144);
    v18 = *(v0 + 152);

    return v20(v17, v18, v12, v15, v13, v14);
  }
}

uint64_t sub_1920A5330()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1920A5688;
  }

  else
  {
    v5 = sub_1920A546C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1920A546C()
{
  v1 = v0[24];

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1920A54E0()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1920A56FC;
  }

  else
  {
    v5 = sub_1920A561C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1920A561C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1920A5688()
{
  v1 = v0[24];

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1920A56FC()
{
  v1 = v0[18];

  __swift_deallocate_boxed_opaque_existential_1(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1920A5774()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1920A5800;

  return sub_1920A4788();
}

uint64_t sub_1920A5800(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1920A5900(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1920A59A8;

  return sub_1920A4F74(a1, a2);
}

uint64_t sub_1920A59A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1920A5A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[46] = a5;
  v6[47] = a6;
  v6[45] = a4;
  sub_192227CC0();
  v6[48] = sub_192227CB0();
  v8 = sub_192227C70();
  v6[49] = v8;
  v6[50] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1920A5B38, v8, v7);
}

void sub_1920A5B38()
{
  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = sub_1922258B0();
  *(v0 + 408) = __swift_project_value_buffer(v2, qword_1EAE00810);
  v3 = v1;
  v4 = sub_192225890();
  v5 = sub_192227FB0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 360);
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = v6[OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_isPreview];

    _os_log_impl(&dword_192028000, v4, v5, "Generating control template [isPreview=%{BOOL,public}d]...", v7, 8u);
    MEMORY[0x193B0C7F0](v7, -1, -1);
    v8 = *(v0 + 360);
  }

  else
  {

    v8 = *(v0 + 360);
    v4 = v8;
  }

  v9 = *(&v8->isa + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_isPreview);
  *(v0 + 105) = v9;
  if (xmmword_1ED74CC80)
  {
    v10 = *(v0 + 360);
    v11 = *(&xmmword_1ED74CC80 + 1);
    v12 = *xmmword_1ED74CC80;
    *(v0 + 344) = xmmword_1ED74CC80;
    v13 = *(v10 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_control);
    *(v0 + 416) = v13;

    sub_1921E7020(v13, v12, v11, (v0 + 16));

    sub_1920B2B7C(v0 + 64, v0 + 216);
    if (*(v0 + 256))
    {
      v14 = *(v0 + 216);
      *(v0 + 424) = *(v0 + 224);
      v15 = [v13 intentReference];
      if (v15)
      {
        v16 = v15;
        v17 = [v15 intent];
      }

      else
      {
        v17 = 0;
      }

      *(v0 + 432) = v17;
      v26 = (v14 + *v14);
      v25 = swift_task_alloc();
      *(v0 + 440) = v25;
      *v25 = v0;
      v25[1] = sub_1920A609C;

      v26(v0 + 264, v17, v9);
    }

    else
    {
      sub_19203832C((v0 + 216), v0 + 168);
      *(v0 + 208) = 0;
      v18 = *(v0 + 105);
      v19 = *(v0 + 360);
      sub_1920B2F50(v0 + 168, v0 + 120);
      *(v0 + 112) = v18;
      v20 = *(v19 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment);
      v21 = *(v19 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID);
      v22 = *(v19 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID + 8);
      *(v0 + 456) = *(v19 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle);
      v23 = swift_task_alloc();
      *(v0 + 464) = v23;
      *v23 = v0;
      v23[1] = sub_1920A6328;
      v24 = *(v0 + 416);

      sub_1920A9CD0(v24, v20, v21, v22, v0 + 112);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1920A609C()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_1920A6744;
  }

  else
  {
    v5 = sub_1920A61F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1920A61F0()
{

  sub_19203832C((v0 + 264), v0 + 168);
  *(v0 + 208) = 1;
  v1 = *(v0 + 105);
  v2 = *(v0 + 360);
  sub_1920B2F50(v0 + 168, v0 + 120);
  *(v0 + 112) = v1;
  v3 = *(v2 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_environment);
  v4 = *(v2 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID);
  v5 = *(v2 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_hostDeviceID + 8);
  *(v0 + 456) = *(v2 + OBJC_IVAR____TtC9WidgetKit22ControlTemplateRequest_fileHandle);
  v6 = swift_task_alloc();
  *(v0 + 464) = v6;
  *v6 = v0;
  v6[1] = sub_1920A6328;
  v7 = *(v0 + 416);

  return sub_1920A9CD0(v7, v3, v4, v5, v0 + 112);
}

uint64_t sub_1920A6328(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[59] = a1;
  v4[60] = a2;
  v4[61] = v2;

  if (v2)
  {
    v4[62] = v2;
    v5 = v4[49];
    v6 = v4[50];
    v7 = sub_1920A659C;
  }

  else
  {
    v7 = sub_1920A645C;
    v5 = 0;
    v6 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1920A645C()
{
  v1 = *(v0 + 488);
  *(v0 + 328) = *(v0 + 472);
  sub_1920B2FE8();
  sub_192227F40();
  sub_192039140(*(v0 + 472), *(v0 + 480));
  if (v1)
  {
    *(v0 + 496) = v1;
    v2 = *(v0 + 392);
    v3 = *(v0 + 400);
    v4 = sub_1920A659C;
  }

  else
  {
    v2 = *(v0 + 392);
    v3 = *(v0 + 400);
    v4 = sub_1920A6514;
  }

  return MEMORY[0x1EEE6DFA0](v4, v2, v3);
}

uint64_t sub_1920A6514()
{
  v1 = *(v0 + 368);

  v1(0);
  sub_1920B2F88(v0 + 112);
  sub_1920B2FB8(v0 + 168);
  sub_1920390EC(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1920A659C()
{
  v15 = v0;

  sub_1920B2F88((v0 + 14));
  sub_1920B2FB8((v0 + 21));
  sub_1920390EC((v0 + 2));
  v1 = v0[62];
  v2 = v1;
  v3 = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_1921C9C58(v0[39], v0[40]);
    v9 = sub_19202B8CC(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_192028000, v3, v4, "Template request failed: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }

  v10 = v0[46];
  v11 = v1;
  v10(v1);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1920A6744()
{
  v15 = v0;

  sub_1920390EC((v0 + 2));
  v1 = v0[56];
  v2 = v1;
  v3 = sub_192225890();
  v4 = sub_192227F90();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    swift_getErrorValue();
    v7 = sub_1921C9C58(v0[39], v0[40]);
    v9 = sub_19202B8CC(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_192028000, v3, v4, "Template request failed: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x193B0C7F0](v6, -1, -1);
    MEMORY[0x193B0C7F0](v5, -1, -1);
  }

  v10 = v0[46];
  v11 = v1;
  v10(v1);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1920A68E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[30] = a4;
  v7 = type metadata accessor for WidgetDescriptor(0);
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();
  sub_192227CC0();
  v6[36] = sub_192227CB0();
  v9 = sub_192227C70();
  v6[37] = v9;
  v6[38] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1920A69E0, v9, v8);
}

uint64_t sub_1920A69E0(__n128 a1)
{
  v2 = v1;
  v3 = *(*(v1 + 240) + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_controls);
  *(v1 + 312) = v3;
  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v1 + 320) = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_15:
    v16 = xmmword_1ED74CC80;
    if (!xmmword_1ED74CC80)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    v17 = *(&xmmword_1ED74CC80 + 1);
    v18 = *xmmword_1ED74CC80;

    *(v1 + 232) = v16;
    v19 = (*(v17 + 8))(v18, v17);

    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = 0;
      v22 = (*(v1 + 280) + *(*(v1 + 264) + 152));
      v45 = *(v1 + 272);
      v23 = v19 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
      v24 = MEMORY[0x1E69E7CC0];
      v44 = *(v19 + 16);
      while (v21 < *(v19 + 16))
      {
        sub_192084578(v23 + *(v45 + 72) * v21, *(v2 + 280), type metadata accessor for WidgetDescriptor);
        v25 = *v22;
        if (*v22)
        {
          v26 = v22[1];
          v27 = *(v24 + 2);
          v28 = v27 + 1;
          v29 = 32;
          while (--v28)
          {
            v30 = *&v24[v29];
            v29 += 16;
            if (v30 == v25)
            {
              v2 = v1;
              goto LABEL_18;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1920C313C(0, v27 + 1, 1, v24);
          }

          v32 = *(v24 + 2);
          v31 = *(v24 + 3);
          if (v32 >= v31 >> 1)
          {
            v24 = sub_1920C313C((v31 > 1), v32 + 1, 1, v24);
          }

          sub_1920B3484(*(v1 + 280), type metadata accessor for WidgetDescriptor);
          *(v24 + 2) = v32 + 1;
          v33 = &v24[16 * v32];
          *(v33 + 4) = v25;
          *(v33 + 5) = v26;
          v2 = v1;
          v20 = v44;
        }

        else
        {
LABEL_18:
          sub_1920B3484(*(v2 + 280), type metadata accessor for WidgetDescriptor);
        }

        if (++v21 == v20)
        {

          goto LABEL_33;
        }
      }

      __break(1u);
    }

    else
    {

      v24 = MEMORY[0x1E69E7CC0];
LABEL_33:
      if (qword_1EADEE4E8 == -1)
      {
        goto LABEL_34;
      }
    }

    swift_once();
LABEL_34:
    v34 = sub_1922258B0();
    __swift_project_value_buffer(v34, qword_1EAE00810);
    v35 = sub_192225890();
    v36 = sub_192227FB0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134349312;
      *(v37 + 4) = *(MEMORY[0x1E69E7CC0] + 16);
      *(v37 + 12) = 2050;
      *(v37 + 14) = *(v24 + 2);
      _os_log_impl(&dword_192028000, v35, v36, "Sending %{public}ld ControlInfo instance(s) to %{public}ld PushHandler instances.", v37, 0x16u);
      MEMORY[0x193B0C7F0](v37, -1, -1);
    }

    v38 = *(v24 + 2);
    if (v38)
    {

      v39 = 32;
      do
      {
        v46 = *&v24[v39];
        v40 = *(*(&v46 + 1) + 8);
        *(v2 + 200) = v46;
        __swift_allocate_boxed_opaque_existential_1((v2 + 176));
        v40(v46, *(&v46 + 1));
        v41 = *(*(&v46 + 1) + 16);

        v2 = v1;
        v41(v42, v46, *(&v46 + 1));

        __swift_destroy_boxed_opaque_existential_1((v1 + 176));
        v39 += 16;
        --v38;
      }

      while (v38);
    }

    (*(v2 + 248))(0);

    v43 = *(v2 + 8);

    return v43();
  }

  result = sub_192228340();
  *(v1 + 320) = result;
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
    goto LABEL_46;
  }

  result = 0;
  *(v1 + 328) = *(*(v1 + 240) + OBJC_IVAR____TtC9WidgetKit33ControlsConfigurationXPCContainer_tokens);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v1 + 336) = result;
    *(v1 + 344) = v5;
    v6 = *(v1 + 312);
    v7 = (v6 & 0xC000000000000001) != 0 ? MEMORY[0x193B0B410](a1) : *(v6 + 8 * result + 32);
    v8 = v7;
    *(v1 + 352) = v7;
    if (*(*(v1 + 328) + 16))
    {
      v9 = sub_1920B7194(v7);
      if (v10)
      {
        break;
      }
    }

    result = *(v1 + 336) + 1;
    if (result == *(v1 + 320))
    {
      goto LABEL_15;
    }
  }

  v11 = (*(*(v1 + 328) + 56) + 16 * v9);
  v12 = *v11;
  *(v1 + 360) = *v11;
  v13 = v11[1];
  *(v1 + 368) = v13;
  *(v1 + 216) = v12;
  *(v1 + 224) = v13;
  sub_1920367C8(v12, v13);
  sub_1920367C8(v12, v13);
  v14 = v8;
  v15 = swift_task_alloc();
  *(v1 + 376) = v15;
  *v15 = v1;
  v15[1] = sub_1920A6FE0;

  return ControlInfo.init(control:pushInfo:)(v1 + 16, v14, (v1 + 216));
}

uint64_t sub_1920A6FE0()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1920A7100, v3, v2);
}

uint64_t sub_1920A7100()
{
  sub_1920B2CF4(v0 + 16, v0 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 344);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1920C301C((v3 > 1), v4 + 1, 1, v2);
    }

    v6 = *(v0 + 360);
    v5 = *(v0 + 368);

    sub_192039140(v6, v5);
    sub_1920B2D50(v0 + 16);
    *(v2 + 2) = v4 + 1;
    v7 = &v2[80 * v4];
    *(v7 + 2) = *(v0 + 96);
    v8 = *(v0 + 160);
    v10 = *(v0 + 112);
    v9 = *(v0 + 128);
    *(v7 + 5) = *(v0 + 144);
    *(v7 + 6) = v8;
    *(v7 + 3) = v10;
    *(v7 + 4) = v9;
    while (1)
    {
      result = *(v0 + 336) + 1;
      if (result == *(v0 + 320))
      {
        break;
      }

      *(v0 + 336) = result;
      *(v0 + 344) = v2;
      v12 = *(v0 + 312);
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x193B0B410]();
      }

      else
      {
        v13 = *(v12 + 8 * result + 32);
      }

      v14 = v13;
      *(v0 + 352) = v13;
      if (*(*(v0 + 328) + 16))
      {
        v15 = sub_1920B7194(v13);
        if (v16)
        {
          v17 = (*(*(v0 + 328) + 56) + 16 * v15);
          v18 = *v17;
          *(v0 + 360) = *v17;
          v19 = v17[1];
          *(v0 + 368) = v19;
          *(v0 + 216) = v18;
          *(v0 + 224) = v19;
          sub_1920367C8(v18, v19);
          sub_1920367C8(v18, v19);
          v20 = v14;
          v21 = swift_task_alloc();
          *(v0 + 376) = v21;
          *v21 = v0;
          v21[1] = sub_1920A6FE0;

          return ControlInfo.init(control:pushInfo:)(v0 + 16, v20, (v0 + 216));
        }
      }
    }

    v22 = xmmword_1ED74CC80;
    if (!xmmword_1ED74CC80)
    {
      __break(1u);
      return result;
    }

    v23 = *(&xmmword_1ED74CC80 + 1);
    v24 = *xmmword_1ED74CC80;

    *(v0 + 232) = v22;
    v25 = (*(v23 + 8))(v24, v23);

    v26 = *(v25 + 16);
    v51 = v2;
    if (!v26)
    {
      break;
    }

    v27 = 0;
    v28 = (*(v0 + 280) + *(*(v0 + 264) + 152));
    v2 = *(v0 + 272);
    v52 = v25 + ((v2[80] + 32) & ~v2[80]);
    v29 = MEMORY[0x1E69E7CC0];
    v50 = *(v25 + 16);
    while (v27 < *(v25 + 16))
    {
      sub_192084578(v52 + *(v2 + 9) * v27, *(v0 + 280), type metadata accessor for WidgetDescriptor);
      v30 = *v28;
      if (*v28)
      {
        v31 = v28[1];
        v32 = *(v29 + 2);
        v33 = v32 + 1;
        v34 = 32;
        while (--v33)
        {
          v35 = *&v29[v34];
          v34 += 16;
          if (v35 == v30)
          {
            goto LABEL_18;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1920C313C(0, v32 + 1, 1, v29);
        }

        v37 = *(v29 + 2);
        v36 = *(v29 + 3);
        if (v37 >= v36 >> 1)
        {
          v29 = sub_1920C313C((v36 > 1), v37 + 1, 1, v29);
        }

        sub_1920B3484(*(v0 + 280), type metadata accessor for WidgetDescriptor);
        *(v29 + 2) = v37 + 1;
        v38 = &v29[16 * v37];
        *(v38 + 4) = v30;
        *(v38 + 5) = v31;
        v26 = v50;
      }

      else
      {
LABEL_18:
        sub_1920B3484(*(v0 + 280), type metadata accessor for WidgetDescriptor);
      }

      if (++v27 == v26)
      {

        v2 = v51;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_45:
    v2 = sub_1920C301C(0, *(v2 + 2) + 1, 1, v2);
  }

  v29 = MEMORY[0x1E69E7CC0];
LABEL_33:
  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v39 = sub_1922258B0();
  __swift_project_value_buffer(v39, qword_1EAE00810);
  v40 = sub_192225890();
  v41 = sub_192227FB0();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134349312;
    *(v42 + 4) = *(v2 + 2);
    *(v42 + 12) = 2050;
    *(v42 + 14) = *(v29 + 2);
    _os_log_impl(&dword_192028000, v40, v41, "Sending %{public}ld ControlInfo instance(s) to %{public}ld PushHandler instances.", v42, 0x16u);
    MEMORY[0x193B0C7F0](v42, -1, -1);
  }

  v43 = *(v29 + 2);
  if (v43)
  {

    v49 = v29;
    v44 = 32;
    do
    {
      v53 = *&v29[v44];
      v45 = *(*(&v53 + 1) + 8);
      *(v0 + 200) = v53;
      __swift_allocate_boxed_opaque_existential_1((v0 + 176));
      v45(v53, *(&v53 + 1));
      v46 = *(*(&v53 + 1) + 16);

      v46(v47, v53, *(&v53 + 1));
      v29 = v49;

      __swift_destroy_boxed_opaque_existential_1((v0 + 176));
      v44 += 16;
      --v43;
    }

    while (v43);
  }

  (*(v0 + 248))(0);

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1920A78B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[7] = a5;
  v7[10] = sub_192227CC0();
  v7[11] = sub_192227CB0();
  v9 = swift_task_alloc();
  v7[12] = v9;
  *v9 = v7;
  v9[1] = sub_1920A796C;

  return sub_1920B1CF8(a5);
}

uint64_t sub_1920A796C()
{
  *(*v1 + 104) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_1920A7D48;
  }

  else
  {
    v4 = sub_1920A7AC8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1920A7AC8()
{
  v20 = v0;

  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1922258B0();
  __swift_project_value_buffer(v2, qword_1EAE00810);
  v3 = v1;
  v4 = sub_192225890();
  v5 = sub_192227FB0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 136446466;
    v9 = [*(v6 + OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_control) kind];
    v10 = sub_192227960();
    v12 = v11;

    v13 = sub_19202B8CC(v10, v12, &v19);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    *(v0 + 48) = *(v6 + OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_state);
    sub_1922254F0();
    sub_192035B0C(&qword_1EADEEE00, 255, MEMORY[0x1E6994010], MEMORY[0x1E6994038]);
    v14 = sub_192228910();
    v16 = sub_19202B8CC(v14, v15, &v19);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_192028000, v4, v5, "State for %{public}s updated to %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v8, -1, -1);
    MEMORY[0x193B0C7F0](v7, -1, -1);
  }

  (*(v0 + 64))(0);
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1920A7D48()
{
  v25 = v0;

  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[7];
  v3 = sub_1922258B0();
  __swift_project_value_buffer(v3, qword_1EAE00810);
  v4 = v2;
  v5 = v1;
  v6 = sub_192225890();
  v7 = sub_192227F90();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136446466;
    v11 = [*(v8 + OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_control) kind];
    v12 = sub_192227960();
    v14 = v13;

    v15 = sub_19202B8CC(v12, v14, &v24);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2082;
    swift_getErrorValue();
    v16 = sub_1921C9C58(v0[3], v0[4]);
    v18 = sub_19202B8CC(v16, v17, &v24);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_192028000, v6, v7, "Error setting state for %{public}s: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B0C7F0](v10, -1, -1);
    MEMORY[0x193B0C7F0](v9, -1, -1);
  }

  v19 = v0[13];
  v20 = v0[8];
  v21 = sub_192224F80();
  v20();

  v22 = v0[1];

  return v22();
}

uint64_t sub_1920A8158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a5;
  v6[36] = a6;
  v6[34] = a4;
  v7 = type metadata accessor for WidgetDescriptor(0);
  v6[37] = v7;
  v6[38] = *(v7 - 8);
  v6[39] = swift_task_alloc();
  sub_192227CC0();
  v6[40] = sub_192227CB0();
  v9 = sub_192227C70();
  v6[41] = v9;
  v6[42] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1920A8250, v9, v8);
}

uint64_t sub_1920A8250(__n128 a1)
{
  v53 = v2;
  v3 = *(v2 + 272);
  v4 = v3 + OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token;
  v5 = *(v3 + OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_token);
  *(v2 + 344) = v5;
  v6 = *(v4 + 8);
  *(v2 + 352) = v6;
  v7 = *(v3 + OBJC_IVAR____TtC9WidgetKit35WidgetPushConfigurationXPCContainer_widgets);
  *(v2 + 360) = v7;
  if (v7 >> 62)
  {
    v15 = v5;
    v1 = v6;
    v16 = sub_192228340();
    v6 = v1;
    v8 = v16;
    v5 = v15;
    *(v2 + 368) = v8;
    if (v8)
    {
LABEL_3:
      if (v8 >= 1)
      {
        sub_1920367C8(v5, v6);
        v9 = MEMORY[0x1E69E7CC0];
        *(v2 + 376) = 0;
        *(v2 + 384) = v9;
        v10 = *(v2 + 360);
        if ((v10 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x193B0B410](0);
        }

        else
        {
          v11 = *(v10 + 32);
        }

        *(v2 + 392) = v11;
        v12 = v11;
        v13 = swift_task_alloc();
        *(v2 + 400) = v13;
        *v13 = v2;
        v13[1] = sub_1920A8808;

        return sub_1920D8C04(v2 + 16, v12);
      }

      goto LABEL_40;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v2 + 368) = v8;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  result = sub_1920367C8(v5, v6);
  v17 = xmmword_1ED74CC80;
  if (!xmmword_1ED74CC80)
  {
    __break(1u);
    return result;
  }

  v18 = qword_1ED74CC90;
  v19 = *xmmword_1ED74CC80;

  *(v2 + 264) = v17;
  v20 = (*(v18 + 24))(v19, v18);

  v21 = *(v20 + 16);
  if (!v21)
  {

    v1 = MEMORY[0x1E69E7CC0];
LABEL_29:
    if (qword_1EADEE4E8 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

  v22 = 0;
  v23 = (*(v2 + 312) + *(*(v2 + 296) + 168));
  v50 = *(v2 + 304);
  v24 = v20 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
  v1 = MEMORY[0x1E69E7CC0];
  v48 = *(v20 + 16);
  while (v22 < *(v20 + 16))
  {
    sub_192084578(v24 + *(v50 + 72) * v22, *(v2 + 312), type metadata accessor for WidgetDescriptor);
    v25 = *v23;
    if (*v23)
    {
      v26 = v23[1];
      v27 = *(v1 + 2);
      v28 = v27 + 1;
      v29 = 32;
      while (--v28)
      {
        v30 = *&v1[v29];
        v29 += 16;
        if (v30 == v25)
        {
          goto LABEL_14;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1920C3278(0, v27 + 1, 1, v1);
      }

      v32 = *(v1 + 2);
      v31 = *(v1 + 3);
      if (v32 >= v31 >> 1)
      {
        v1 = sub_1920C3278((v31 > 1), v32 + 1, 1, v1);
      }

      sub_1920B3484(*(v2 + 312), type metadata accessor for WidgetDescriptor);
      *(v1 + 2) = v32 + 1;
      v33 = &v1[16 * v32];
      *(v33 + 4) = v25;
      *(v33 + 5) = v26;
      v21 = v48;
    }

    else
    {
LABEL_14:
      sub_1920B3484(*(v2 + 312), type metadata accessor for WidgetDescriptor);
    }

    if (++v22 == v21)
    {

      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_30:
  v34 = sub_1922258B0();
  __swift_project_value_buffer(v34, qword_1EAE00810);
  v35 = sub_192225890();
  v36 = sub_192227FB0();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134349312;
    *(v37 + 4) = *(MEMORY[0x1E69E7CC0] + 16);
    *(v37 + 12) = 2050;
    *(v37 + 14) = *(v1 + 2);
    _os_log_impl(&dword_192028000, v35, v36, "Sending %{public}ld WidgetInfo instance(s) to %{public}ld PushHandler instances.", v37, 0x16u);
    MEMORY[0x193B0C7F0](v37, -1, -1);
  }

  v38 = *(v1 + 2);
  if (v38)
  {

    v39 = 32;
    v47 = v1;
    do
    {
      v40 = *(v2 + 344);
      v51 = *(v2 + 352);
      v49 = *&v1[v39];
      v41 = *(*(&v49 + 1) + 8);
      *(v2 + 248) = v49;
      __swift_allocate_boxed_opaque_existential_1((v2 + 224));
      v41(v49, *(&v49 + 1));
      v52[0] = v40;
      v52[1] = v51;
      v42 = *(*(&v49 + 1) + 16);
      v43 = MEMORY[0x1E69E7CC0];

      v42(v52, v43, v49, *(&v49 + 1));
      v1 = v47;

      __swift_destroy_boxed_opaque_existential_1((v2 + 224));
      v39 += 16;
      --v38;
    }

    while (v38);
  }

  v45 = *(v2 + 344);
  v44 = *(v2 + 352);
  (*(v2 + 280))(0);

  sub_192039140(v45, v44);

  v46 = *(v2 + 8);

  return v46();
}

uint64_t sub_1920A8808()
{
  v1 = *v0;

  v2 = *(v1 + 336);
  v3 = *(v1 + 328);

  return MEMORY[0x1EEE6DFA0](sub_1920A8928, v3, v2);
}

uint64_t sub_1920A8928()
{
  v56 = v0;
  sub_1920B29F8(v0 + 16, v0 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 384);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1920C3150((v3 > 1), v4 + 1, 1, v2);
    }

    v6 = *(v0 + 368);
    v5 = *(v0 + 376);

    result = sub_1920B2A54(v0 + 16);
    *(v2 + 2) = v4 + 1;
    v8 = &v2[104 * v4];
    v9 = *(v0 + 152);
    v10 = *(v0 + 136);
    *(v8 + 2) = *(v0 + 120);
    *(v8 + 3) = v10;
    *(v8 + 4) = v9;
    v11 = *(v0 + 184);
    v12 = *(v0 + 200);
    v13 = *(v0 + 168);
    *(v8 + 16) = *(v0 + 216);
    *(v8 + 6) = v11;
    *(v8 + 7) = v12;
    *(v8 + 5) = v13;
    if (v5 + 1 != v6)
    {
      v31 = *(v0 + 376) + 1;
      *(v0 + 376) = v31;
      *(v0 + 384) = v2;
      v32 = *(v0 + 360);
      if ((v32 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x193B0B410]();
      }

      else
      {
        v33 = *(v32 + 8 * v31 + 32);
      }

      *(v0 + 392) = v33;
      v34 = v33;
      v35 = swift_task_alloc();
      *(v0 + 400) = v35;
      *v35 = v0;
      v35[1] = sub_1920A8808;

      return sub_1920D8C04(v0 + 16, v34);
    }

    v14 = xmmword_1ED74CC80;
    if (!xmmword_1ED74CC80)
    {
      __break(1u);
      return result;
    }

    v15 = qword_1ED74CC90;
    v16 = *xmmword_1ED74CC80;

    *(v0 + 264) = v14;
    v17 = (*(v15 + 24))(v16, v15);

    v18 = *(v17 + 16);
    v50 = v2;
    if (!v18)
    {
      break;
    }

    v19 = 0;
    v20 = (*(v0 + 312) + *(*(v0 + 296) + 168));
    v2 = *(v0 + 304);
    v53 = v17 + ((v2[80] + 32) & ~v2[80]);
    v21 = MEMORY[0x1E69E7CC0];
    v51 = *(v17 + 16);
    while (v19 < *(v17 + 16))
    {
      sub_192084578(v53 + *(v2 + 9) * v19, *(v0 + 312), type metadata accessor for WidgetDescriptor);
      v22 = *v20;
      if (*v20)
      {
        v23 = v20[1];
        v24 = *(v21 + 2);
        v25 = v24 + 1;
        v26 = 32;
        while (--v25)
        {
          v27 = *&v21[v26];
          v26 += 16;
          if (v27 == v22)
          {
            goto LABEL_8;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1920C3278(0, v24 + 1, 1, v21);
        }

        v29 = *(v21 + 2);
        v28 = *(v21 + 3);
        if (v29 >= v28 >> 1)
        {
          v21 = sub_1920C3278((v28 > 1), v29 + 1, 1, v21);
        }

        sub_1920B3484(*(v0 + 312), type metadata accessor for WidgetDescriptor);
        *(v21 + 2) = v29 + 1;
        v30 = &v21[16 * v29];
        *(v30 + 4) = v22;
        *(v30 + 5) = v23;
        v18 = v51;
      }

      else
      {
LABEL_8:
        sub_1920B3484(*(v0 + 312), type metadata accessor for WidgetDescriptor);
      }

      if (++v19 == v18)
      {

        v2 = v50;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_41:
    v2 = sub_1920C3150(0, *(v2 + 2) + 1, 1, v2);
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_29:
  if (qword_1EADEE4E8 != -1)
  {
    swift_once();
  }

  v36 = sub_1922258B0();
  __swift_project_value_buffer(v36, qword_1EAE00810);
  v37 = sub_192225890();
  v38 = sub_192227FB0();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134349312;
    *(v39 + 4) = *(v2 + 2);
    *(v39 + 12) = 2050;
    *(v39 + 14) = *(v21 + 2);
    _os_log_impl(&dword_192028000, v37, v38, "Sending %{public}ld WidgetInfo instance(s) to %{public}ld PushHandler instances.", v39, 0x16u);
    MEMORY[0x193B0C7F0](v39, -1, -1);
  }

  v40 = *(v21 + 2);
  if (v40)
  {

    v41 = 32;
    v49 = v21;
    do
    {
      v42 = *(v0 + 344);
      v54 = *(v0 + 352);
      v52 = *&v21[v41];
      v43 = v0;
      v44 = *(*(&v52 + 1) + 8);
      *(v43 + 248) = v52;
      __swift_allocate_boxed_opaque_existential_1((v43 + 224));
      v44(v52, *(&v52 + 1));
      v55[0] = v42;
      v55[1] = v54;
      v45 = *(*(&v52 + 1) + 16);

      v21 = v49;
      v45(v55, v50, v52, *(&v52 + 1));
      v0 = v43;

      __swift_destroy_boxed_opaque_existential_1((v43 + 224));
      v41 += 16;
      --v40;
    }

    while (v40);
  }

  v47 = *(v0 + 344);
  v46 = *(v0 + 352);
  (*(v0 + 280))(0);

  sub_192039140(v47, v46);

  v48 = *(v0 + 8);

  return v48();
}

double sub_1920A90A0(unint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v45 = a2;
  v46 = a4;
  v6 = sub_1922252A0();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1922251B0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1 >> 62)
  {
    v13 = sub_192228340();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1922251A0();
  v14 = sub_192225160();
  v16 = v15;
  (*(v10 + 8))(v12, v9);
  sub_1920AC810(6, v14, v16);

  v17 = sub_192228260();
  v19 = v18;

  v47 = 2977907;
  v48 = 0xE300000000000000;
  MEMORY[0x193B0A990](v17, v19);

  v21 = v47;
  v20 = v48;
  if (v13 < 1)
  {
    goto LABEL_8;
  }

  v43 = a3;
  if (qword_1EADEDEB0 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v22 = sub_1922258B0();
    __swift_project_value_buffer(v22, qword_1EAE007D8);

    v23 = sub_192225890();
    v24 = sub_192227FB0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v47 = v42;
      *v25 = 136446466;
      *(v25 + 4) = sub_19202B8CC(v21, v20, &v47);
      *(v25 + 12) = 2082;
      v41 = v24;
      v26 = v8;
      sub_192225240();
      sub_192035B0C(&unk_1ED74C4F0, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
      v27 = sub_192228910();
      v28 = v21;
      v30 = v29;
      (*(v44 + 8))(v26, v6);
      v31 = sub_19202B8CC(v27, v30, &v47);
      v21 = v28;

      *(v25 + 14) = v31;
      _os_log_impl(&dword_192028000, v23, v41, "Batch begin (%{public}s) - locale: %{public}s", v25, 0x16u);
      v32 = v42;
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v32, -1, -1);
      MEMORY[0x193B0C7F0](v25, -1, -1);
    }

    a3 = v43;
LABEL_8:
    v33 = swift_allocObject();
    *(v33 + 16) = v13 > 0;
    *(v33 + 24) = v21;
    *(v33 + 32) = v20;
    v6 = v46;
    *(v33 + 40) = a3;
    *(v33 + 48) = v6;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    v8 = v45;
    if ((v45 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) > v45)
    {
      v34 = *(a1 + 8 * v45 + 32);

      v35 = v34;
      goto LABEL_12;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  v8 = v45;
  v35 = MEMORY[0x193B0B410](v45, a1);
LABEL_12:
  v36 = v35;
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = swift_allocObject();
  v38[2] = v37;
  v38[3] = a3;
  v38[4] = v6;
  v38[5] = v8;
  v38[6] = a1;
  v38[7] = sub_1920AC8CC;
  v38[8] = v33;

  sub_1920B232C(v36, sub_1920AC8F0, v38);

  return result;
}

uint64_t sub_1920A961C(void *a1, int a2, uint64_t a3, void *aBlock, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, void (*a8)(uint64_t, void, uint64_t, uint64_t))
{
  v12 = _Block_copy(aBlock);
  a5(0);
  v13 = sub_192227B70();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = a1;
  a8(v13, 0, a7, v14);
}

uint64_t sub_1920A9734(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void *), uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    if (a1)
    {
      v13 = *a7;
      v29 = a1;
      v14 = a1;
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = sub_1922258B0();
      __swift_project_value_buffer(v15, a8);
      v16 = v14;

      v17 = sub_192225890();
      v18 = sub_192227FB0();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v30 = v21;
        *v19 = 136446466;
        *(v19 + 4) = sub_19202B8CC(a3, a4, &v30);
        *(v19 + 12) = 2114;
        *(v19 + 14) = v16;
        *v20 = v29;
        v22 = v16;
        _os_log_impl(&dword_192028000, v17, v18, "Batch end (%{public}s) - failure: %{public}@", v19, 0x16u);
        sub_192033970(v20, &qword_1EADEEDF0, &qword_1922319C0);
        MEMORY[0x193B0C7F0](v20, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x193B0C7F0](v21, -1, -1);
        MEMORY[0x193B0C7F0](v19, -1, -1);
      }

      else
      {
      }

      a1 = v29;
    }

    else
    {
      if (*a7 != -1)
      {
        swift_once();
      }

      v23 = sub_1922258B0();
      __swift_project_value_buffer(v23, a8);

      v24 = sub_192225890();
      v25 = sub_192227FB0();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v30 = v27;
        *v26 = 136446210;
        *(v26 + 4) = sub_19202B8CC(a3, a4, &v30);
        _os_log_impl(&dword_192028000, v24, v25, "Batch end (%{public}s) - success", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x193B0C7F0](v27, -1, -1);
        MEMORY[0x193B0C7F0](v26, -1, -1);
      }

      a1 = 0;
    }
  }

  return a5(a1);
}

void sub_1920A9A20(uint64_t a1, uint64_t a2, void (*a3)(id), uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v16 = *MEMORY[0x1E69941E8];
    v17 = sub_19214036C(MEMORY[0x1E69E7CC0]);
    v18 = sub_192227960();
    v20 = v19;
    v29 = MEMORY[0x1E69E6158];
    *&v28 = 0xD000000000000024;
    *(&v28 + 1) = 0x8000000192248FB0;
    sub_19203BEDC(&v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_19213DB28(v27, v18, v20, isUniquelyReferenced_nonNull_native);

    v22 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v23 = sub_192227830();

    v14 = [v22 initWithDomain:v16 code:1050 userInfo:{v23, v17}];

    a3(v14);
    goto LABEL_11;
  }

  v14 = Strong;
  if (a1)
  {
    v15 = a1;
LABEL_10:
    a7(v15);
    goto LABEL_11;
  }

  if (a6 >> 62)
  {
    v26 = sub_192228340();
    v25 = v26 - 1;
    if (!__OFSUB__(v26, 1))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v24 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v24 - 1;
    if (!__OFSUB__(v24, 1))
    {
LABEL_7:
      if (v25 <= a5)
      {
        v15 = 0;
        goto LABEL_10;
      }

      sub_1920A90A0(a6, (a5 + 1), a3, a4);
LABEL_11:

      return;
    }
  }

  __break(1u);
}

uint64_t sub_1920A9CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for ControlArchiveStorage(0);
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1920A9D6C, 0, 0);
}

uint64_t sub_1920A9D6C()
{
  if (WidgetEnvironment.enumeratedCount()() < 1)
  {
    sub_1920B303C();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 3;
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_1920A9E9C;
    v2 = v0[8];
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[3];
    v6 = v0[4];
    v7 = v0[2];

    return sub_1920AA158(v2, v3, v7, v5, v6, v4);
  }
}

uint64_t sub_1920A9E9C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1920AA0F4;
  }

  else
  {
    v2 = sub_1920A9FB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1920A9FB0()
{
  v1 = v0[10];
  sub_192035B0C(&qword_1EADEE130, 255, type metadata accessor for ControlArchiveStorage, &unk_192238D48);
  v3 = sub_192227870();
  v4 = v0[8];
  if (v1)
  {
    sub_1920B3484(v4, type metadata accessor for ControlArchiveStorage);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v2;
    sub_1920B3484(v4, type metadata accessor for ControlArchiveStorage);

    v8 = v0[1];

    return v8(v3, v7);
  }
}

uint64_t sub_1920AA0F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1920AA158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[32] = a5;
  v6[33] = a6;
  v6[30] = a3;
  v6[31] = a4;
  v6[28] = a1;
  v6[29] = a2;
  v6[34] = *(type metadata accessor for ControlTemplateType(0) - 8);
  v6[35] = swift_task_alloc();
  v7 = sub_1922261D0();
  v6[36] = v7;
  v6[37] = *(v7 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator(0);
  v6[42] = swift_task_alloc();
  v6[43] = type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator(0);
  v6[44] = swift_task_alloc();
  type metadata accessor for BundleStub(0);
  v6[45] = swift_task_alloc();
  v8 = sub_192225150();
  v6[46] = v8;
  v6[47] = *(v8 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v6[50] = type metadata accessor for ControlArchiveStorageMetadata(0);
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[53] = v9;
  *v9 = v6;
  v9[1] = sub_1920AA3F0;

  return sub_1920A4788();
}

uint64_t sub_1920AA3F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1920AA5D0, 0, 0);
  }
}

uint64_t sub_1920AA5D0(uint64_t a1)
{
  v97 = v1;
  v2 = *(v1 + 384);
  v3 = *(v1 + 392);
  v4 = *(v1 + 368);
  v5 = *(v1 + 376);
  v6 = *(v1 + 360);
  v7 = *(v1 + 240);
  _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  v88 = *(v5 + 16);
  v88(v2, v3, v4);
  BundleStub.init(_:)([v7 extensionIdentity], v6);
  if (qword_1ED74BA98 != -1)
  {
    swift_once();
  }

  v8 = *(v1 + 416);
  v9 = *(v1 + 400);
  v11 = *(v1 + 376);
  v10 = *(v1 + 384);
  v13 = *(v1 + 360);
  v12 = *(v1 + 368);
  v86 = *(v1 + 432);
  v87 = *(v1 + 352);
  v84 = *(v1 + 392);
  v85 = *(v1 + 344);
  v94 = *(v1 + 336);
  v90 = *(v1 + 328);
  v83 = *(v1 + 296);
  v92 = *(v1 + 288);
  v14 = *(v1 + 240);
  v15 = *(v1 + 248);
  swift_beginAccess();
  v16 = qword_1ED74BAA0;
  *(v8 + v9[6]) = v14;
  sub_192084578(v13, v8, type metadata accessor for BundleStub);
  v88(v8 + v9[8], v10, v12);
  *(v8 + v9[5]) = v16;
  v96 = v15;
  v14;
  v17 = v15;
  WidgetEnvironment.filterForControlArchiving()();
  sub_1920B3484(v13, type metadata accessor for BundleStub);
  v18 = *(v11 + 8);
  v18(v10, v12);
  v18(v84, v12);
  v19 = v9[7];
  *(v8 + v19) = v15;
  *(v8 + v9[9]) = v86;
  v20 = *(v85 + 20);
  v21 = *(v8 + v19);
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  *v87 = v21;
  *(v1 + 440) = sub_192217738();
  v22 = *v87;
  v23 = *(v90 + 20);
  *(v1 + 552) = v23;
  v24 = *(v83 + 16);
  *(v1 + 448) = v24;
  *(v1 + 456) = (v83 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(&v94[v23], v87 + v20, v92);
  v25 = v22;
  v26 = MEMORY[0x1E69E7CC0];
  v28 = sub_192056208(MEMORY[0x1E69E7CC0], v27);
  v96 = v25;
  v29 = v25;

  sub_192056340(&v96, v28);
  v31 = v30;
  v33 = v32;
  v35 = v34;

  *v94 = v31;
  *(v94 + 1) = v33;
  *(v94 + 2) = v35;
  if (v33 >> 62)
  {
    v43 = sub_192228340();
    v37 = v43 - 1;
    if (v43 >= 1)
    {
LABEL_5:
      *(v1 + 464) = sub_192227CC0();
      *(v1 + 472) = v26;

      if ((sub_19205F34C(v37, v38) & 1) == 0)
      {
        v39 = *(v1 + 336);

        *v39 = v26;

        v39[1] = v26;

        v39[2] = v26;
      }

      (*(v1 + 448))(*(v1 + 312), *(v1 + 336) + *(v1 + 552), *(v1 + 288));
      if (v33 >> 62)
      {
        v40 = sub_192228340();
        if (v40)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v40 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v40)
        {
LABEL_9:
          if (v40 >= 1)
          {
            for (i = 0; i != v40; ++i)
            {
              if ((v33 & 0xC000000000000001) != 0)
              {
                v42 = MEMORY[0x193B0B410](i, v33);
              }

              else
              {
                v42 = *(v33 + 8 * i + 32);
              }

              (*(**(v42 + 16) + 112))(*(v1 + 312));
            }

            goto LABEL_26;
          }

          __break(1u);
          goto LABEL_33;
        }
      }

LABEL_26:
      v67 = *(v1 + 440);
      v68 = *(v1 + 312);
      v69 = *(v1 + 320);
      v71 = *(v1 + 296);
      v70 = *(v1 + 304);
      v72 = *(v1 + 288);

      v73 = *(v71 + 32);
      v73(v69, v68, v72);
      v73(v70, v69, v72);
      if (v67)
      {

        sub_192227270();
        v89 = v75;
        v91 = v74;
        v93 = v77;
        v95 = v76;

        v78.i64[0] = v91;
        v78.i64[1] = v89;
        v79 = vorrq_s8(vshll_n_s32(__PAIR64__(v93, v95), 0x20uLL), v78);
      }

      else
      {
        v79 = 0uLL;
      }

      v80 = *(v1 + 440) == 0;
      *(v1 + 60) = v79;
      *(v1 + 76) = v80;
      sub_1920B3090();
      sub_1922261F0();
      *(v1 + 480) = sub_192227CB0();
      v82 = sub_192227C70();
      *(v1 + 488) = v82;
      *(v1 + 496) = v81;

      return MEMORY[0x1EEE6DFA0](sub_1920AAE50, v82, v81);
    }
  }

  else
  {
    v36 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v36 - 1;
    if (v36 >= 1)
    {
      goto LABEL_5;
    }
  }

  sub_1920B3484(*(v1 + 336), type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  if (qword_1EADEE4E8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v44 = *(v1 + 240);
  v45 = sub_1922258B0();
  __swift_project_value_buffer(v45, qword_1EAE00810);

  v46 = v44;
  v47 = sub_192225890();
  v48 = sub_192227FB0();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = *(v1 + 240);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v96 = v52;
    *v50 = 138478083;
    *(v50 + 4) = v49;
    *v51 = v49;
    *(v50 + 12) = 2082;
    v53 = v49;
    v54 = sub_192225530();
    v56 = sub_19202B8CC(v54, v55, &v96);

    *(v50 + 14) = v56;
    _os_log_impl(&dword_192028000, v47, v48, "(async) generating control archive for %{private}@ for host %{public}s", v50, 0x16u);
    sub_192033970(v51, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v51, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v52);
    MEMORY[0x193B0C7F0](v52, -1, -1);
    MEMORY[0x193B0C7F0](v50, -1, -1);
  }

  v57 = *(v1 + 264);
  sub_192084578(*(v1 + 416), *(v1 + 408), type metadata accessor for ControlArchiveStorageMetadata);
  if (v57)
  {
    v58 = sub_1922189A8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v58 = sub_192140634(MEMORY[0x1E69E7CC0]);
  }

  v59 = v58;
  v61 = *(v1 + 408);
  v60 = *(v1 + 416);
  v62 = *(v1 + 352);
  v63 = *(v1 + 224);

  sub_1920B3484(v60, type metadata accessor for ControlArchiveStorageMetadata);
  sub_1920B3484(v62, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  sub_192084510(v61, v63, type metadata accessor for ControlArchiveStorageMetadata);
  v64 = type metadata accessor for ControlArchiveStorage(0);
  *(v63 + v64[5]) = MEMORY[0x1E69E7CC0];
  *(v63 + v64[7]) = 2;
  *(v63 + v64[6]) = v59;

  v65 = *(v1 + 8);

  return v65();
}

uint64_t sub_1920AAE50()
{
  sub_1920B2F50(*(v0 + 232) + 8, v0 + 16);
  if (*(v0 + 56))
  {
    sub_19203832C((v0 + 16), v0 + 120);
    v1 = *(v0 + 144);
    v2 = *(v0 + 152);
    __swift_project_boxed_opaque_existential_1((v0 + 120), v1);
    v3 = *(v2 + 56);
    *(v0 + 104) = swift_getAssociatedTypeWitness();
    *(v0 + 112) = swift_getAssociatedConformanceWitness();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
    v17 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 528) = v5;
    *v5 = v0;
    v5[1] = sub_1920AB2A0;
    v6 = *(v0 + 304);

    return v17(boxed_opaque_existential_1, v6, v1, v2);
  }

  else
  {
    v8 = *(v0 + 232);
    sub_19203832C((v0 + 16), v0 + 160);
    v9 = *(v0 + 184);
    v10 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v0 + 160), v9);
    v11 = (*(v10 + 8))(v9, v10);
    *(v0 + 504) = v11;
    v12 = *(v0 + 184);
    v13 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v0 + 160), v12);
    v14 = *v8;
    v18 = (*(v13 + 16) + **(v13 + 16));
    v15 = swift_task_alloc();
    *(v0 + 512) = v15;
    *v15 = v0;
    v15[1] = sub_1920AB164;
    v16 = *(v0 + 304);

    return v18(v0 + 80, v16, v11, v14, v12, v13);
  }
}

uint64_t sub_1920AB164()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_1920AB454;
  }

  else
  {
    v5 = sub_1920AB3DC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1920AB2A0()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  v3 = *(v2 + 496);
  v4 = *(v2 + 488);
  if (v0)
  {
    v5 = sub_1920ABE24;
  }

  else
  {
    v5 = sub_1920ABDB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1920AB3DC()
{
  v1 = *(v0 + 504);

  __swift_destroy_boxed_opaque_existential_1((v0 + 160));

  return MEMORY[0x1EEE6DFA0](sub_1920AB4DC, 0, 0);
}

uint64_t sub_1920AB454()
{
  v1 = v0[63];

  __swift_destroy_boxed_opaque_existential_1(v0 + 20);

  v0[68] = v0[65];

  return MEMORY[0x1EEE6DFA0](sub_1920ABC38, 0, 0);
}

uint64_t sub_1920AB4DC()
{
  v65 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 104);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 80), v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  ControlTemplateType.init<A>(_:)(v5, v2, v1);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + 472);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1920C2FF4(0, *(v7 + 16) + 1, 1, *(v0 + 472));
  }

  v9 = *(v7 + 16);
  v8 = *(v7 + 24);
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1920C2FF4((v8 > 1), v9 + 1, 1, v7);
  }

  v10 = *(v0 + 336);
  v11 = *(v0 + 280);
  v12 = *(v0 + 272);
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  *(v7 + 16) = v9 + 1;
  sub_192084510(v11, v7 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9, type metadata accessor for ControlTemplateType);
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  v13 = *(v10 + 8);
  if (v13 >> 62)
  {
    v14 = sub_192228340();
    if (v14 > 0)
    {
LABEL_7:
      *(v0 + 472) = v7;
      v15 = v14 - 1;

      if ((sub_19205F34C(v15, v16) & 1) == 0)
      {
        v17 = *(v0 + 336);

        v18 = MEMORY[0x1E69E7CC0];
        *v17 = MEMORY[0x1E69E7CC0];

        v17[1] = v18;

        v17[2] = v18;
      }

      (*(v0 + 448))(*(v0 + 312), *(v0 + 336) + *(v0 + 552), *(v0 + 288));
      if (v13 >> 62)
      {
        v7 = sub_192228340();
        if (v7)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v7 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
LABEL_11:
          if (v7 >= 1)
          {
            for (i = 0; i != v7; ++i)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v20 = MEMORY[0x193B0B410](i, v13);
              }

              else
              {
                v20 = *(v13 + 8 * i + 32);
              }

              (*(**(v20 + 16) + 112))(*(v0 + 312));
            }

            goto LABEL_28;
          }

          __break(1u);
          goto LABEL_35;
        }
      }

LABEL_28:
      v44 = *(v0 + 440);
      v45 = *(v0 + 312);
      v46 = *(v0 + 320);
      v48 = *(v0 + 296);
      v47 = *(v0 + 304);
      v49 = *(v0 + 288);

      v50 = *(v48 + 32);
      v50(v46, v45, v49);
      v50(v47, v46, v49);
      if (v44)
      {

        sub_192227270();
        v60 = v52;
        v61 = v51;
        v62 = v54;
        v63 = v53;

        v55.i64[0] = v61;
        v55.i64[1] = v60;
        v56 = vorrq_s8(vshll_n_s32(__PAIR64__(v62, v63), 0x20uLL), v55);
      }

      else
      {
        v56 = 0uLL;
      }

      v57 = *(v0 + 440) == 0;
      *(v0 + 60) = v56;
      *(v0 + 76) = v57;
      sub_1920B3090();
      sub_1922261F0();
      *(v0 + 480) = sub_192227CB0();
      v59 = sub_192227C70();
      *(v0 + 488) = v59;
      *(v0 + 496) = v58;

      return MEMORY[0x1EEE6DFA0](sub_1920AAE50, v59, v58);
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14 > 0)
    {
      goto LABEL_7;
    }
  }

  sub_1920B3484(*(v0 + 336), type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  if (qword_1EADEE4E8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v21 = *(v0 + 240);
  v22 = sub_1922258B0();
  __swift_project_value_buffer(v22, qword_1EAE00810);

  v23 = v21;
  v24 = sub_192225890();
  v25 = sub_192227FB0();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 240);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v64 = v29;
    *v27 = 138478083;
    *(v27 + 4) = v26;
    *v28 = v26;
    *(v27 + 12) = 2082;
    v30 = v26;
    v31 = sub_192225530();
    v33 = sub_19202B8CC(v31, v32, &v64);

    *(v27 + 14) = v33;
    _os_log_impl(&dword_192028000, v24, v25, "(async) generating control archive for %{private}@ for host %{public}s", v27, 0x16u);
    sub_192033970(v28, &qword_1EADEEDF0, &qword_1922319C0);
    MEMORY[0x193B0C7F0](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x193B0C7F0](v29, -1, -1);
    MEMORY[0x193B0C7F0](v27, -1, -1);
  }

  v34 = *(v0 + 264);
  sub_192084578(*(v0 + 416), *(v0 + 408), type metadata accessor for ControlArchiveStorageMetadata);
  if (v34)
  {
    v35 = sub_1922189A8(v7);
  }

  else
  {
    v35 = sub_192140634(MEMORY[0x1E69E7CC0]);
  }

  v36 = v35;
  v38 = *(v0 + 408);
  v37 = *(v0 + 416);
  v39 = *(v0 + 352);
  v40 = *(v0 + 224);

  sub_1920B3484(v37, type metadata accessor for ControlArchiveStorageMetadata);
  sub_1920B3484(v39, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);
  sub_192084510(v38, v40, type metadata accessor for ControlArchiveStorageMetadata);
  v41 = type metadata accessor for ControlArchiveStorage(0);
  *(v40 + v41[5]) = v7;
  *(v40 + v41[7]) = 2;
  *(v40 + v41[6]) = v36;

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1920ABC38()
{
  v1 = v0[52];
  v2 = v0[44];
  v3 = v0[42];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[36];

  (*(v5 + 8))(v4, v6);
  sub_1920B3484(v1, type metadata accessor for ControlArchiveStorageMetadata);
  sub_1920B3484(v3, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator.Iterator);
  sub_1920B3484(v2, type metadata accessor for WidgetEnvironment.EnvironmentValuesEnumerator);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1920ABDB4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));

  return MEMORY[0x1EEE6DFA0](sub_1920AB4DC, 0, 0);
}

uint64_t sub_1920ABE24()
{

  __swift_deallocate_boxed_opaque_existential_1((v0 + 10));
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);

  v0[68] = v0[67];

  return MEMORY[0x1EEE6DFA0](sub_1920ABC38, 0, 0);
}

uint64_t sub_1920ABEAC(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[3] = v2;
  v25[4] = &protocol witness table for WidgetViewCollection;
  v25[0] = a1;
  if (qword_1ED74BA98 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_1ED74BAA0;
  sub_192084578(a1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, v5, type metadata accessor for BundleStub);
  result = sub_192033A64(v25, v23);
  if (xmmword_1ED74CC80)
  {
    v21 = *xmmword_1ED74CC80;
    v22 = *(qword_1ED74CC90 + 8);
    *&v20 = xmmword_1ED74CC80;
    type metadata accessor for WidgetArchiver.ArchivingDelegate(0);
    v8 = swift_allocObject();
    *(v8 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions) = 0;
    v9 = MEMORY[0x1E69E7CC8];
    *(v8 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions) = MEMORY[0x1E69E7CC8];
    *(v8 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing) = 0;
    *(v8 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes) = MEMORY[0x1E69E7CC0];
    v10 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
    v11 = sub_1922261D0();
    (*(*(v11 - 8) + 56))(v8 + v10, 1, 1, v11);
    *(v8 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily) = v9;
    v12 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_allowedImageTypes;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE68, &qword_19223B340);
    v13 = sub_192225790();
    v14 = *(v13 - 8);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_19222B4A0;

    sub_192225780();
    sub_192225750();
    sub_192225770();
    sub_192225760();
    v16 = sub_19216FF08(v15);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v8 + v12) = v16;
    v17 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType;
    sub_192225750();
    (*(v14 + 56))(v8 + v17, 0, 1, v13);
    sub_192084510(v5, v8 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_bundleStub, type metadata accessor for BundleStub);
    *(v8 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_systemVersion) = v6;
    *(v8 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode) = 0;
    v18 = v8 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection;
    *(v18 + 32) = v24;
    v19 = v23[1];
    *v18 = v23[0];
    *(v18 + 16) = v19;
    sub_19203832C(&v20, v8 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying);
    __swift_destroy_boxed_opaque_existential_1(v25);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1920AC2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_192227710();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_192227790();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1922252A0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v12 = sub_1922258B0();
  __swift_project_value_buffer(v12, qword_1ED74CCC8);
  v13 = sub_192225890();
  v14 = sub_192227FB0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = a2;
    v17 = v16;
    aBlock[0] = v16;
    *v15 = 136446466;
    *(v15 + 4) = sub_19202B8CC(0xD000000000000022, 0x8000000192249320, aBlock);
    *(v15 + 12) = 2082;
    sub_192225240();
    sub_192035B0C(&unk_1ED74C4F0, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
    v18 = sub_192228910();
    v19 = v9;
    v20 = v7;
    v21 = a1;
    v23 = v22;
    (*(v19 + 8))(v11, v8);
    v24 = sub_19202B8CC(v18, v23, aBlock);
    a1 = v21;
    v7 = v20;

    *(v15 + 14) = v24;
    _os_log_impl(&dword_192028000, v13, v14, "=+= %{public}s - locale: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v25 = v17;
    a2 = v32;
    MEMORY[0x193B0C7F0](v25, -1, -1);
    MEMORY[0x193B0C7F0](v15, -1, -1);
  }

  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v26 = sub_192228080();
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  aBlock[4] = sub_1920B3978;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_229;
  v28 = _Block_copy(aBlock);

  sub_192227740();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  v29 = v34;
  v30 = v37;
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v7, v29, v28);
  _Block_release(v28);

  (*(v36 + 8))(v29, v30);
  return (*(v33 + 8))(v7, v35);
}

uint64_t sub_1920AC810(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return MEMORY[0x1EEE69100]();
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = sub_1922279D0();
  if (v5)
  {
    v4 = 15;
  }

  if (4 * v3 < v4 >> 14)
  {
    goto LABEL_12;
  }

  return MEMORY[0x1EEE69100]();
}

double sub_1920AC908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a3;
  v4 = sub_192227710();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_192227790();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_192225800();
  v63 = *(v71 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v60 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v57 - v9;
  v10 = sub_1922252A0();
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1922251B0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1922251A0();
  v17 = sub_192225160();
  v19 = v18;
  (*(v14 + 8))(v16, v13);
  sub_1920AC810(6, v17, v19);

  v20 = sub_192228260();
  v22 = v21;

  aBlock = 2976880;
  v73 = 0xE300000000000000;
  MEMORY[0x193B0A990](v20, v22);

  v23 = aBlock;
  v24 = v73;
  if (qword_1ED74AED8 != -1)
  {
    swift_once();
  }

  v25 = sub_1922258B0();
  __swift_project_value_buffer(v25, qword_1ED74CB50);

  v26 = sub_192225890();
  v27 = sub_192227FB0();

  v28 = os_log_type_enabled(v26, v27);
  v59 = v23;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v57 = a1;
    v31 = v30;
    aBlock = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_19202B8CC(v23, v24, &aBlock);
    *(v29 + 12) = 2082;
    sub_192225240();
    sub_192035B0C(&unk_1ED74C4F0, 255, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
    v32 = sub_192228910();
    v34 = v33;
    (*(v58 + 8))(v12, v10);
    v35 = sub_19202B8CC(v32, v34, &aBlock);

    *(v29 + 14) = v35;
    _os_log_impl(&dword_192028000, v26, v27, "Batch begin (%{public}s) - locale: %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    v36 = v31;
    a1 = v57;
    MEMORY[0x193B0C7F0](v36, -1, -1);
    MEMORY[0x193B0C7F0](v29, -1, -1);
  }

  if (qword_1ED74B750 != -1)
  {
    swift_once();
  }

  v37 = qword_1ED74CBD8;
  v38 = v70;
  sub_1922257E0();
  sub_1922280E0();
  sub_1922257C0();
  type metadata accessor for UnfairLock();
  v39 = swift_allocObject();
  v40 = swift_slowAlloc();
  *v40 = 0;
  *(v39 + 16) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v42 = v63;
  v43 = v60;
  v44 = v71;
  (*(v63 + 16))(v60, v38, v71);
  v45 = (*(v42 + 80) + 48) & ~*(v42 + 80);
  v46 = (v7 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 2) = v39;
  *(v47 + 3) = v41;
  *(v47 + 4) = v59;
  *(v47 + 5) = v24;
  (*(v42 + 32))(&v47[v45], v43, v44);
  v48 = &v47[v46];
  v49 = v62;
  *v48 = v61;
  v48[1] = v49;
  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);

  v62 = sub_192228080();
  v50 = swift_allocObject();
  v50[2] = a1;
  v50[3] = sub_1920B38AC;
  v50[4] = v47;
  v76 = sub_1920B3954;
  v77 = v50;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_19202AB80;
  v75 = &block_descriptor_203;
  v51 = _Block_copy(&aBlock);

  v52 = v64;
  sub_192227740();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  v53 = v66;
  v54 = v69;
  sub_1922282F0();
  v55 = v62;
  MEMORY[0x193B0B040](0, v52, v53, v51);
  _Block_release(v51);

  (*(v68 + 8))(v53, v54);
  (*(v65 + 8))(v52, v67);
  (*(v42 + 8))(v70, v71);

  return result;
}

id sub_1920AD1B0(uint64_t *a1)
{
  v2 = *a1;
  v3 = type metadata accessor for BundleStub(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[3] = v2;
  v38[4] = &protocol witness table for WidgetViewCollection;
  v38[0] = a1;
  v6 = objc_opt_self();

  result = [v6 sharedInstance];
  if (result)
  {
    v8 = result;
    v9 = [result isInternalInstall];

    if (v9)
    {
      v10 = [objc_opt_self() processInfo];
      v11 = [v10 environment];

      v12 = sub_192227840();
      if (*(v12 + 16))
      {
        sub_1920440AC(0xD000000000000011, 0x8000000192249120);
        v14 = v13;

        if (v14)
        {
          if (qword_1ED74BA98 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v15 = qword_1ED74BAA0;
          sub_192084578(a1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, v5, type metadata accessor for BundleStub);
          v16 = type metadata accessor for TestingNilDescriptorQuerying();
          v17 = swift_allocObject();
          v36 = v16;
          v37 = &off_1F06B1F68;
          *&v35 = v17;
          type metadata accessor for WidgetArchiver.ArchivingDelegate(0);
          v18 = swift_allocObject();
          *(v18 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_includeSelectableRegions) = 0;
          v19 = MEMORY[0x1E69E7CC8];
          *(v18 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_computedSelectableRegions) = MEMORY[0x1E69E7CC8];
          *(v18 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfBackgroundIsMissing) = 0;
          *(v18 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_unencodeableTypes) = MEMORY[0x1E69E7CC0];
          v20 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_currentEnvironment;
          v21 = sub_1922261D0();
          (*(*(v21 - 8) + 56))(v18 + v20, 1, 1, v21);
          *(v18 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_largestImageSizeByFamily) = v19;
          v22 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_allowedImageTypes;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE68, &qword_19223B340);
          v23 = sub_192225790();
          v24 = *(v23 - 8);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_19222B4A0;
          sub_192225780();
          sub_192225750();
          sub_192225770();
          sub_192225760();
          v26 = sub_19216FF08(v25);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(v18 + v22) = v26;
          v27 = OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_defaultImageType;
          sub_192225750();
          (*(v24 + 56))(v18 + v27, 0, 1, v23);
          sub_192084510(v5, v18 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_bundleStub, type metadata accessor for BundleStub);
          *(v18 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_systemVersion) = v15;
          *(v18 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_failIfAnyTypeFailedToEncode) = 0;
          v28 = v18 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_viewCollection;
          *(v28 + 32) = 0;
          *v28 = 0u;
          *(v28 + 16) = 0u;
          sub_19203832C(&v35, v18 + OBJC_IVAR____TtCC9WidgetKit14WidgetArchiver17ArchivingDelegate_descriptorQuerying);
          goto LABEL_10;
        }
      }

      else
      {
      }
    }

    v29 = __swift_project_boxed_opaque_existential_1(v38, v2);
    v30 = MEMORY[0x1EEE9AC00](v29);
    v32 = (&v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v33 + 16))(v32, v30);
    v18 = sub_1920ABEAC(*v32);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v38);
    return v18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1920AD734(uint64_t a1, char a2)
{
  *(v2 + 97) = a2;
  *(v2 + 616) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F8, &unk_19222A7D0);
  *(v2 + 624) = swift_task_alloc();
  *(v2 + 632) = swift_task_alloc();
  *(v2 + 640) = swift_task_alloc();
  *(v2 + 648) = swift_task_alloc();
  *(v2 + 656) = swift_task_alloc();
  *(v2 + 664) = swift_task_alloc();
  *(v2 + 672) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA00, &unk_19222B660);
  *(v2 + 680) = swift_task_alloc();
  v3 = type metadata accessor for ViewableTimelineEntry(0);
  *(v2 + 688) = v3;
  *(v2 + 696) = *(v3 - 8);
  *(v2 + 704) = swift_task_alloc();
  *(v2 + 712) = swift_task_alloc();
  *(v2 + 720) = swift_task_alloc();
  *(v2 + 728) = swift_task_alloc();
  *(v2 + 736) = swift_task_alloc();
  v4 = sub_192225150();
  *(v2 + 744) = v4;
  *(v2 + 752) = *(v4 - 8);
  *(v2 + 760) = swift_task_alloc();
  type metadata accessor for BundleStub(0);
  *(v2 + 768) = swift_task_alloc();
  type metadata accessor for TimelineReloadPolicy(0);
  *(v2 + 776) = swift_task_alloc();
  *(v2 + 784) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0) - 8);
  *(v2 + 792) = swift_task_alloc();
  *(v2 + 800) = type metadata accessor for TimelineProviderContext(0);
  *(v2 + 808) = swift_task_alloc();
  *(v2 + 816) = swift_task_alloc();
  *(v2 + 824) = type metadata accessor for ViewSource(0);
  *(v2 + 832) = swift_task_alloc();
  *(v2 + 840) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE20, &qword_19222B670);
  *(v2 + 848) = swift_task_alloc();
  v5 = type metadata accessor for WidgetDescriptor(0);
  *(v2 + 856) = v5;
  *(v2 + 864) = *(v5 - 8);
  *(v2 + 872) = swift_task_alloc();
  v6 = sub_1922258B0();
  *(v2 + 880) = v6;
  *(v2 + 888) = *(v6 - 8);
  *(v2 + 896) = swift_task_alloc();
  sub_192227CC0();
  *(v2 + 904) = sub_192227CB0();
  v8 = sub_192227C70();
  *(v2 + 912) = v8;
  *(v2 + 920) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1920832E8, v8, v7);
}

uint64_t sub_1920ADB90(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 568) = v1;
  *(v3 + 576) = a1;

  v4 = *(v2 + 920);
  v5 = *(v2 + 912);

  return MEMORY[0x1EEE6DFA0](sub_1920ADCB8, v5, v4);
}

void sub_1920ADCB8()
{
  v146 = v0;
  v1 = *(v0 + 576);

  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  if (v1)
  {

    v3 = sub_192096880(v2);

    v4 = *(v3 + 16);

    if (v4)
    {

      v6 = sub_19209BB80(v5);

      v7 = v6[2];
      v119 = v1;
      v126 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v8 = *(v0 + 752);
        v9 = *(v0 + 696);
        v124 = *(v0 + 688);
        v145[0] = MEMORY[0x1E69E7CC0];
        sub_19209ACA4(0, v7, 0);
        v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v10 = v6 + v122;
        v143 = v145[0];
        v120 = (v8 + 16);
        v121 = *(v9 + 72);
        do
        {
          v140 = v7;
          v11 = *(v0 + 952);
          v12 = *(v0 + 928);
          v134 = *(v0 + 744);
          v137 = v10;
          v13 = *(v0 + 736);
          v14 = *(v0 + 728);
          sub_192084578(v10, v14, type metadata accessor for ViewableTimelineEntry);
          v132 = *(v14 + v124[5]);
          KeyPath = swift_getKeyPath();
          v128 = swift_getKeyPath();
          v127 = swift_getKeyPath();
          v15 = v12;
          v16 = v11;
          v17 = [v15 family];
          (*v120)(v13, v14, v134);
          *(v0 + 16) = v132;
          *(v0 + 24) = v15;
          *(v0 + 32) = v16;
          *(v0 + 40) = v17;
          *(v0 + 48) = KeyPath;
          *(v0 + 56) = 0;
          *(v0 + 64) = v128;
          *(v0 + 72) = 0;
          *(v0 + 80) = 0;
          *(v0 + 88) = v127;
          *(v0 + 96) = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE58, &unk_19222B7A0);
          sub_1920B33A4();
          v18 = sub_192227570();
          v19 = v14 + v124[6];
          v20 = *v19;
          v21 = *(v19 + 8);
          LOBYTE(v16) = *(v19 + 16);
          sub_19202CFFC(v14 + v124[7], v13 + v124[7], &qword_1EADEEE60, &unk_192246DC0);
          v22 = (v14 + v124[8]);
          v23 = *v22;
          v24 = v22[1];
          sub_19206A874(*v22, v24);
          sub_1920B3484(v14, type metadata accessor for ViewableTimelineEntry);
          *(v13 + v124[5]) = v18;
          v25 = v13 + v124[6];
          *v25 = v20;
          *(v25 + 8) = v21;
          *(v25 + 16) = v16;
          v26 = (v13 + v124[8]);
          *v26 = v23;
          v26[1] = v24;
          v27 = v143;
          v145[0] = v143;
          v29 = *(v143 + 16);
          v28 = *(v143 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_19209ACA4((v28 > 1), v29 + 1, 1);
            v27 = v145[0];
          }

          v143 = v27;
          v30 = *(v0 + 736);
          *(v27 + 16) = v29 + 1;
          sub_192084510(v30, v27 + v122 + v29 * v121, type metadata accessor for ViewableTimelineEntry);
          v10 = v137 + v121;
          v7 = v140 - 1;
        }

        while (v140 != 1);

        v1 = v119;
      }

      else
      {

        v143 = MEMORY[0x1E69E7CC0];
      }

      v42 = *(v0 + 944);
      v43 = *(v0 + 928);
      v44 = *(v0 + 768);
      v45 = *(v0 + 760);
      v46 = *(v0 + 752);
      v47 = *(v0 + 744);
      sub_192084578(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, *(v0 + 776), type metadata accessor for TimelineReloadPolicy);
      v48 = type metadata accessor for WidgetViewCollection(0);
      v49 = swift_allocObject();
      v50 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
      v51 = sub_192224E00();
      (*(*(v51 - 8) + 56))(v49 + v50, 1, 1, v51);
      v52 = v42;
      BundleStub.init(_:)([v43 extensionIdentity], v44);
      sub_192084510(v44, v49 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
      _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
      (*(v46 + 32))(v49 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v45, v47);
      v145[0] = v143;

      sub_19209B0C4(v145);
      v117 = v49;
      v118 = v48;
      v53 = *(v0 + 696);
      v54 = *(v0 + 688);
      v55 = *(v0 + 680);
      v56 = *(v0 + 672);

      v57 = v145[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
      inited = swift_initStackObject();
      *(inited + 16) = v57;
      *(inited + 24) = 0;
      v59 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v123 = MEMORY[0x1E69E7CC0] + v59;
      v136 = *(v56 + 32);
      v142 = *(v53 + 56);
      v142(v55 + v136, 1, 1, v54);
      v131 = v53;
      v129 = inited;
      *v55 = inited;
      v55[1] = sub_1920DA3A8;
      v139 = v55;
      v55[2] = 0;
      v60 = (v53 + 48);

      v125 = 0;
      v61 = 0;
      while (2)
      {
        v142(*(v0 + 656), 1, 1, *(v0 + 688));
        while (1)
        {
          v62 = *(v57 + 16);
          if (v61 == v62)
          {
            v63 = 1;
          }

          else
          {
            if (v61 >= v62)
            {
              __break(1u);
              goto LABEL_59;
            }

            sub_192084578(v57 + v59 + *(v131 + 72) * v61, *(v0 + 648), type metadata accessor for ViewableTimelineEntry);
            v63 = 0;
            *(v129 + 24) = ++v61;
          }

          v64 = *(v0 + 688);
          v65 = *(v0 + 656);
          v66 = *(v0 + 648);
          v67 = *(v0 + 640);
          v142(v66, v63, 1, v64);
          sub_192033970(v65, &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19204E300(v66, v65, &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19202CFFC(v65, v67, &qword_1EADEE9F8, &unk_19222A7D0);
          v68 = *v60;
          if ((*v60)(v67, 1, v64) == 1)
          {
            break;
          }

          v69 = *(v0 + 688);
          v70 = *(v0 + 656);
          v71 = *(v0 + 632);
          sub_192033970(*(v0 + 640), &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19202CFFC(v70, v71, &qword_1EADEE9F8, &unk_19222A7D0);
          if (v68(v71, 1, v69) == 1)
          {
            v78 = (v0 + 632);
            goto LABEL_29;
          }

          v72 = *(v0 + 688);
          v73 = *(v0 + 624);
          sub_192084510(*(v0 + 632), *(v0 + 712), type metadata accessor for ViewableTimelineEntry);
          sub_19202CFFC(v139 + v136, v73, &qword_1EADEE9F8, &unk_19222A7D0);
          v74 = v68(v73, 1, v72);
          v75 = *(v0 + 712);
          if (v74 == 1)
          {
            sub_1920B3484(*(v0 + 712), type metadata accessor for ViewableTimelineEntry);
            v78 = (v0 + 624);
            goto LABEL_29;
          }

          v76 = *(v0 + 704);
          sub_192084510(*(v0 + 624), v76, type metadata accessor for ViewableTimelineEntry);
          v77 = sub_192225120();
          sub_1920B3484(v76, type metadata accessor for ViewableTimelineEntry);
          sub_1920B3484(v75, type metadata accessor for ViewableTimelineEntry);
          if ((v77 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v78 = (v0 + 640);
LABEL_29:
        sub_192033970(*v78, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_30:
        v79 = *(v0 + 688);
        v80 = *(v0 + 664);
        v81 = *(v0 + 656);
        sub_19209B16C(v81, v139 + v136);
        sub_19204E300(v81, v80, &qword_1EADEE9F8, &unk_19222A7D0);
        if (v68(v80, 1, v79) == 1)
        {
          v99 = *(v0 + 664);
          sub_192033970(*(v0 + 680), &qword_1EADEEA00, &unk_19222B660);
          sub_192033970(v99, &qword_1EADEE9F8, &unk_19222A7D0);
          v100 = v126[3];
          if (v100 >= 2)
          {
            v101 = v100 >> 1;
            v98 = __OFSUB__(v101, v125);
            v102 = v101 - v125;
            if (v98)
            {
LABEL_63:
              __break(1u);
              return;
            }

            v126[2] = v102;
          }

          v103 = *(v0 + 944);
          v104 = *(v0 + 928);
          v105 = *(v0 + 776);
          v106 = *(v0 + 616);
          swift_setDeallocating();

          *(v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v126;
          v117[2] = v103;
          *(v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v104;
          sub_192084578(v105, v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
          swift_beginAccess();
          LOBYTE(v103) = byte_1ED74B5B8;
          sub_1920B3484(v105, type metadata accessor for TimelineReloadPolicy);
          *(v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v103;
          *(v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
          v107 = type metadata accessor for WidgetArchiver();
          *(v0 + 368) = v118;
          *(v0 + 376) = &protocol witness table for WidgetViewCollection;
          *(v0 + 344) = v117;
          v108 = *(v106 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_fileHandle);
          v109 = sub_1920AD1B0(v117);
          sub_192170900((v0 + 344), v109, v107, v108);
          v110 = *(v0 + 952);
          v111 = *(v0 + 936);
          v112 = *(v0 + 896);
          v113 = *(v0 + 888);
          v114 = *(v0 + 880);
          v115 = *(v0 + 872);
          v116 = *(v0 + 816);

          sub_1920B3484(v115, type metadata accessor for WidgetDescriptor);
          (*(v113 + 8))(v112, v114);
          __swift_destroy_boxed_opaque_existential_1((v0 + 344));
          sub_1920B3484(v116, type metadata accessor for TimelineProviderContext);
          __swift_destroy_boxed_opaque_existential_1((v0 + 104));

          v41 = *(v0 + 8);
          goto LABEL_11;
        }

        sub_192084510(*(v0 + 664), *(v0 + 720), type metadata accessor for ViewableTimelineEntry);
        v82 = v123;
        if (v125)
        {
          v83 = v126;
          v84 = v125 - 1;
          if (!__OFSUB__(v125, 1))
          {
            goto LABEL_53;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v85 = v126[3];
        if (((v85 >> 1) + 0x4000000000000000) < 0)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v86 = v85 & 0xFFFFFFFFFFFFFFFELL;
        if (v86 <= 1)
        {
          v87 = 1;
        }

        else
        {
          v87 = v86;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
        v88 = *(v131 + 72);
        v83 = swift_allocObject();
        v89 = _swift_stdlib_malloc_size(v83);
        if (!v88)
        {
          goto LABEL_61;
        }

        v90 = v89 - v59;
        if (v89 - v59 == 0x8000000000000000 && v88 == -1)
        {
          goto LABEL_62;
        }

        v92 = v90 / v88;
        v83[2] = v87;
        v83[3] = 2 * (v90 / v88);
        v93 = v83 + v59;
        v94 = v126;
        v95 = v126[3] >> 1;
        v96 = v95 * v88;
        if (!v126[2])
        {
LABEL_52:
          v82 = &v93[v96];
          v97 = (v92 & 0x7FFFFFFFFFFFFFFFLL) - v95;

          v98 = __OFSUB__(v97, 1);
          v84 = v97 - 1;
          if (!v98)
          {
LABEL_53:
            v125 = v84;
            sub_192084510(*(v0 + 720), v82, type metadata accessor for ViewableTimelineEntry);
            v123 = v82 + *(v131 + 72);
            v126 = v83;
            continue;
          }

          goto LABEL_59;
        }

        break;
      }

      if (v83 < v126 || v93 >= v126 + v59 + v96)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v83 == v126)
        {
LABEL_51:
          v94[2] = 0;
          goto LABEL_52;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v94 = v126;
      goto LABEL_51;
    }
  }

  v31 = *(v0 + 952);
  v133 = *(v0 + 936);
  v141 = *(v0 + 896);
  v32 = *(v0 + 888);
  v135 = *(v0 + 872);
  v138 = *(v0 + 880);
  v144 = *(v0 + 816);
  v33 = *MEMORY[0x1E69941E8];
  v34 = sub_19214036C(MEMORY[0x1E69E7CC0]);
  v35 = sub_192227960();
  v37 = v36;
  *(v0 + 472) = MEMORY[0x1E69E6158];
  *(v0 + 448) = 0xD000000000000031;
  *(v0 + 456) = 0x80000001922490A0;
  sub_19203BEDC((v0 + 448), (v0 + 480));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v145[0] = v34;
  sub_19213DB28((v0 + 480), v35, v37, isUniquelyReferenced_nonNull_native);

  v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v40 = sub_192227830();

  [v39 initWithDomain:v33 code:1101 userInfo:v40];

  swift_willThrow();

  sub_1920B3484(v135, type metadata accessor for WidgetDescriptor);
  (*(v32 + 8))(v141, v138);
  sub_1920B3484(v144, type metadata accessor for TimelineProviderContext);
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  v41 = *(v0 + 8);
LABEL_11:

  v41();
}

uint64_t sub_1920AEE6C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 584) = v1;
  *(v3 + 592) = a1;

  v4 = *(v2 + 920);
  v5 = *(v2 + 912);

  return MEMORY[0x1EEE6DFA0](sub_1920AEF94, v5, v4);
}

void sub_1920AEF94()
{
  v146 = v0;
  v1 = *(v0 + 592);

  __swift_destroy_boxed_opaque_existential_1((v0 + 224));
  if (v1)
  {

    v3 = sub_192096880(v2);

    v4 = *(v3 + 16);

    if (v4)
    {

      v6 = sub_19209BB80(v5);

      v7 = v6[2];
      v119 = v1;
      v126 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v8 = *(v0 + 752);
        v9 = *(v0 + 696);
        v124 = *(v0 + 688);
        v145[0] = MEMORY[0x1E69E7CC0];
        sub_19209ACA4(0, v7, 0);
        v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v10 = v6 + v122;
        v143 = v145[0];
        v120 = (v8 + 16);
        v121 = *(v9 + 72);
        do
        {
          v140 = v7;
          v11 = *(v0 + 952);
          v12 = *(v0 + 928);
          v134 = *(v0 + 744);
          v137 = v10;
          v13 = *(v0 + 736);
          v14 = *(v0 + 728);
          sub_192084578(v10, v14, type metadata accessor for ViewableTimelineEntry);
          v132 = *(v14 + v124[5]);
          KeyPath = swift_getKeyPath();
          v128 = swift_getKeyPath();
          v127 = swift_getKeyPath();
          v15 = v12;
          v16 = v11;
          v17 = [v15 family];
          (*v120)(v13, v14, v134);
          *(v0 + 16) = v132;
          *(v0 + 24) = v15;
          *(v0 + 32) = v16;
          *(v0 + 40) = v17;
          *(v0 + 48) = KeyPath;
          *(v0 + 56) = 0;
          *(v0 + 64) = v128;
          *(v0 + 72) = 0;
          *(v0 + 80) = 0;
          *(v0 + 88) = v127;
          *(v0 + 96) = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE58, &unk_19222B7A0);
          sub_1920B33A4();
          v18 = sub_192227570();
          v19 = v14 + v124[6];
          v20 = *v19;
          v21 = *(v19 + 8);
          LOBYTE(v16) = *(v19 + 16);
          sub_19202CFFC(v14 + v124[7], v13 + v124[7], &qword_1EADEEE60, &unk_192246DC0);
          v22 = (v14 + v124[8]);
          v23 = *v22;
          v24 = v22[1];
          sub_19206A874(*v22, v24);
          sub_1920B3484(v14, type metadata accessor for ViewableTimelineEntry);
          *(v13 + v124[5]) = v18;
          v25 = v13 + v124[6];
          *v25 = v20;
          *(v25 + 8) = v21;
          *(v25 + 16) = v16;
          v26 = (v13 + v124[8]);
          *v26 = v23;
          v26[1] = v24;
          v27 = v143;
          v145[0] = v143;
          v29 = *(v143 + 16);
          v28 = *(v143 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_19209ACA4((v28 > 1), v29 + 1, 1);
            v27 = v145[0];
          }

          v143 = v27;
          v30 = *(v0 + 736);
          *(v27 + 16) = v29 + 1;
          sub_192084510(v30, v27 + v122 + v29 * v121, type metadata accessor for ViewableTimelineEntry);
          v10 = v137 + v121;
          v7 = v140 - 1;
        }

        while (v140 != 1);

        v1 = v119;
      }

      else
      {

        v143 = MEMORY[0x1E69E7CC0];
      }

      v42 = *(v0 + 944);
      v43 = *(v0 + 928);
      v44 = *(v0 + 768);
      v45 = *(v0 + 760);
      v46 = *(v0 + 752);
      v47 = *(v0 + 744);
      sub_192084578(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, *(v0 + 776), type metadata accessor for TimelineReloadPolicy);
      v48 = type metadata accessor for WidgetViewCollection(0);
      v49 = swift_allocObject();
      v50 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
      v51 = sub_192224E00();
      (*(*(v51 - 8) + 56))(v49 + v50, 1, 1, v51);
      v52 = v42;
      BundleStub.init(_:)([v43 extensionIdentity], v44);
      sub_192084510(v44, v49 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
      _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
      (*(v46 + 32))(v49 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v45, v47);
      v145[0] = v143;

      sub_19209B0C4(v145);
      v117 = v49;
      v118 = v48;
      v53 = *(v0 + 696);
      v54 = *(v0 + 688);
      v55 = *(v0 + 680);
      v56 = *(v0 + 672);

      v57 = v145[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
      inited = swift_initStackObject();
      *(inited + 16) = v57;
      *(inited + 24) = 0;
      v59 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v123 = MEMORY[0x1E69E7CC0] + v59;
      v136 = *(v56 + 32);
      v142 = *(v53 + 56);
      v142(v55 + v136, 1, 1, v54);
      v131 = v53;
      v129 = inited;
      *v55 = inited;
      v55[1] = sub_1920DA3A8;
      v139 = v55;
      v55[2] = 0;
      v60 = (v53 + 48);

      v125 = 0;
      v61 = 0;
      while (2)
      {
        v142(*(v0 + 656), 1, 1, *(v0 + 688));
        while (1)
        {
          v62 = *(v57 + 16);
          if (v61 == v62)
          {
            v63 = 1;
          }

          else
          {
            if (v61 >= v62)
            {
              __break(1u);
              goto LABEL_59;
            }

            sub_192084578(v57 + v59 + *(v131 + 72) * v61, *(v0 + 648), type metadata accessor for ViewableTimelineEntry);
            v63 = 0;
            *(v129 + 24) = ++v61;
          }

          v64 = *(v0 + 688);
          v65 = *(v0 + 656);
          v66 = *(v0 + 648);
          v67 = *(v0 + 640);
          v142(v66, v63, 1, v64);
          sub_192033970(v65, &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19204E300(v66, v65, &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19202CFFC(v65, v67, &qword_1EADEE9F8, &unk_19222A7D0);
          v68 = *v60;
          if ((*v60)(v67, 1, v64) == 1)
          {
            break;
          }

          v69 = *(v0 + 688);
          v70 = *(v0 + 656);
          v71 = *(v0 + 632);
          sub_192033970(*(v0 + 640), &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19202CFFC(v70, v71, &qword_1EADEE9F8, &unk_19222A7D0);
          if (v68(v71, 1, v69) == 1)
          {
            v78 = (v0 + 632);
            goto LABEL_29;
          }

          v72 = *(v0 + 688);
          v73 = *(v0 + 624);
          sub_192084510(*(v0 + 632), *(v0 + 712), type metadata accessor for ViewableTimelineEntry);
          sub_19202CFFC(v139 + v136, v73, &qword_1EADEE9F8, &unk_19222A7D0);
          v74 = v68(v73, 1, v72);
          v75 = *(v0 + 712);
          if (v74 == 1)
          {
            sub_1920B3484(*(v0 + 712), type metadata accessor for ViewableTimelineEntry);
            v78 = (v0 + 624);
            goto LABEL_29;
          }

          v76 = *(v0 + 704);
          sub_192084510(*(v0 + 624), v76, type metadata accessor for ViewableTimelineEntry);
          v77 = sub_192225120();
          sub_1920B3484(v76, type metadata accessor for ViewableTimelineEntry);
          sub_1920B3484(v75, type metadata accessor for ViewableTimelineEntry);
          if ((v77 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v78 = (v0 + 640);
LABEL_29:
        sub_192033970(*v78, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_30:
        v79 = *(v0 + 688);
        v80 = *(v0 + 664);
        v81 = *(v0 + 656);
        sub_19209B16C(v81, v139 + v136);
        sub_19204E300(v81, v80, &qword_1EADEE9F8, &unk_19222A7D0);
        if (v68(v80, 1, v79) == 1)
        {
          v99 = *(v0 + 664);
          sub_192033970(*(v0 + 680), &qword_1EADEEA00, &unk_19222B660);
          sub_192033970(v99, &qword_1EADEE9F8, &unk_19222A7D0);
          v100 = v126[3];
          if (v100 >= 2)
          {
            v101 = v100 >> 1;
            v98 = __OFSUB__(v101, v125);
            v102 = v101 - v125;
            if (v98)
            {
LABEL_63:
              __break(1u);
              return;
            }

            v126[2] = v102;
          }

          v103 = *(v0 + 944);
          v104 = *(v0 + 928);
          v105 = *(v0 + 776);
          v106 = *(v0 + 616);
          swift_setDeallocating();

          *(v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v126;
          v117[2] = v103;
          *(v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v104;
          sub_192084578(v105, v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
          swift_beginAccess();
          LOBYTE(v103) = byte_1ED74B5B8;
          sub_1920B3484(v105, type metadata accessor for TimelineReloadPolicy);
          *(v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v103;
          *(v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
          v107 = type metadata accessor for WidgetArchiver();
          *(v0 + 368) = v118;
          *(v0 + 376) = &protocol witness table for WidgetViewCollection;
          *(v0 + 344) = v117;
          v108 = *(v106 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_fileHandle);
          v109 = sub_1920AD1B0(v117);
          sub_192170900((v0 + 344), v109, v107, v108);
          v110 = *(v0 + 952);
          v111 = *(v0 + 936);
          v112 = *(v0 + 896);
          v113 = *(v0 + 888);
          v114 = *(v0 + 880);
          v115 = *(v0 + 872);
          v116 = *(v0 + 816);

          sub_1920B3484(v115, type metadata accessor for WidgetDescriptor);
          (*(v113 + 8))(v112, v114);
          __swift_destroy_boxed_opaque_existential_1((v0 + 344));
          sub_1920B3484(v116, type metadata accessor for TimelineProviderContext);
          __swift_destroy_boxed_opaque_existential_1((v0 + 104));

          v41 = *(v0 + 8);
          goto LABEL_11;
        }

        sub_192084510(*(v0 + 664), *(v0 + 720), type metadata accessor for ViewableTimelineEntry);
        v82 = v123;
        if (v125)
        {
          v83 = v126;
          v84 = v125 - 1;
          if (!__OFSUB__(v125, 1))
          {
            goto LABEL_53;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v85 = v126[3];
        if (((v85 >> 1) + 0x4000000000000000) < 0)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v86 = v85 & 0xFFFFFFFFFFFFFFFELL;
        if (v86 <= 1)
        {
          v87 = 1;
        }

        else
        {
          v87 = v86;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
        v88 = *(v131 + 72);
        v83 = swift_allocObject();
        v89 = _swift_stdlib_malloc_size(v83);
        if (!v88)
        {
          goto LABEL_61;
        }

        v90 = v89 - v59;
        if (v89 - v59 == 0x8000000000000000 && v88 == -1)
        {
          goto LABEL_62;
        }

        v92 = v90 / v88;
        v83[2] = v87;
        v83[3] = 2 * (v90 / v88);
        v93 = v83 + v59;
        v94 = v126;
        v95 = v126[3] >> 1;
        v96 = v95 * v88;
        if (!v126[2])
        {
LABEL_52:
          v82 = &v93[v96];
          v97 = (v92 & 0x7FFFFFFFFFFFFFFFLL) - v95;

          v98 = __OFSUB__(v97, 1);
          v84 = v97 - 1;
          if (!v98)
          {
LABEL_53:
            v125 = v84;
            sub_192084510(*(v0 + 720), v82, type metadata accessor for ViewableTimelineEntry);
            v123 = v82 + *(v131 + 72);
            v126 = v83;
            continue;
          }

          goto LABEL_59;
        }

        break;
      }

      if (v83 < v126 || v93 >= v126 + v59 + v96)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v83 == v126)
        {
LABEL_51:
          v94[2] = 0;
          goto LABEL_52;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v94 = v126;
      goto LABEL_51;
    }
  }

  v31 = *(v0 + 952);
  v133 = *(v0 + 936);
  v141 = *(v0 + 896);
  v32 = *(v0 + 888);
  v135 = *(v0 + 872);
  v138 = *(v0 + 880);
  v144 = *(v0 + 816);
  v33 = *MEMORY[0x1E69941E8];
  v34 = sub_19214036C(MEMORY[0x1E69E7CC0]);
  v35 = sub_192227960();
  v37 = v36;
  *(v0 + 472) = MEMORY[0x1E69E6158];
  *(v0 + 448) = 0xD000000000000031;
  *(v0 + 456) = 0x80000001922490A0;
  sub_19203BEDC((v0 + 448), (v0 + 480));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v145[0] = v34;
  sub_19213DB28((v0 + 480), v35, v37, isUniquelyReferenced_nonNull_native);

  v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v40 = sub_192227830();

  [v39 initWithDomain:v33 code:1101 userInfo:v40];

  swift_willThrow();

  sub_1920B3484(v135, type metadata accessor for WidgetDescriptor);
  (*(v32 + 8))(v141, v138);
  sub_1920B3484(v144, type metadata accessor for TimelineProviderContext);
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  v41 = *(v0 + 8);
LABEL_11:

  v41();
}

uint64_t sub_1920B0148()
{
  v1 = *v0;

  v1[126] = v1[76];

  v2 = v1[115];
  v3 = v1[114];

  return MEMORY[0x1EEE6DFA0](sub_1920B02E0, v3, v2);
}

void sub_1920B02E0()
{
  v146 = v0;

  v1 = *(v0 + 1008);

  if (v1)
  {

    v3 = sub_192096880(v2);

    v4 = *(v3 + 16);

    if (v4)
    {

      v6 = sub_19209BB80(v5);

      v7 = v6[2];
      v119 = v1;
      v126 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v8 = *(v0 + 752);
        v9 = *(v0 + 696);
        v124 = *(v0 + 688);
        v145[0] = MEMORY[0x1E69E7CC0];
        sub_19209ACA4(0, v7, 0);
        v122 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v10 = v6 + v122;
        v143 = v145[0];
        v120 = (v8 + 16);
        v121 = *(v9 + 72);
        do
        {
          v140 = v7;
          v11 = *(v0 + 952);
          v12 = *(v0 + 928);
          v134 = *(v0 + 744);
          v137 = v10;
          v13 = *(v0 + 736);
          v14 = *(v0 + 728);
          sub_192084578(v10, v14, type metadata accessor for ViewableTimelineEntry);
          v132 = *(v14 + v124[5]);
          KeyPath = swift_getKeyPath();
          v128 = swift_getKeyPath();
          v127 = swift_getKeyPath();
          v15 = v12;
          v16 = v11;
          v17 = [v15 family];
          (*v120)(v13, v14, v134);
          *(v0 + 16) = v132;
          *(v0 + 24) = v15;
          *(v0 + 32) = v16;
          *(v0 + 40) = v17;
          *(v0 + 48) = KeyPath;
          *(v0 + 56) = 0;
          *(v0 + 64) = v128;
          *(v0 + 72) = 0;
          *(v0 + 80) = 0;
          *(v0 + 88) = v127;
          *(v0 + 96) = 0;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE58, &unk_19222B7A0);
          sub_1920B33A4();
          v18 = sub_192227570();
          v19 = v14 + v124[6];
          v20 = *v19;
          v21 = *(v19 + 8);
          LOBYTE(v16) = *(v19 + 16);
          sub_19202CFFC(v14 + v124[7], v13 + v124[7], &qword_1EADEEE60, &unk_192246DC0);
          v22 = (v14 + v124[8]);
          v23 = *v22;
          v24 = v22[1];
          sub_19206A874(*v22, v24);
          sub_1920B3484(v14, type metadata accessor for ViewableTimelineEntry);
          *(v13 + v124[5]) = v18;
          v25 = v13 + v124[6];
          *v25 = v20;
          *(v25 + 8) = v21;
          *(v25 + 16) = v16;
          v26 = (v13 + v124[8]);
          *v26 = v23;
          v26[1] = v24;
          v27 = v143;
          v145[0] = v143;
          v29 = *(v143 + 16);
          v28 = *(v143 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_19209ACA4((v28 > 1), v29 + 1, 1);
            v27 = v145[0];
          }

          v143 = v27;
          v30 = *(v0 + 736);
          *(v27 + 16) = v29 + 1;
          sub_192084510(v30, v27 + v122 + v29 * v121, type metadata accessor for ViewableTimelineEntry);
          v10 = v137 + v121;
          v7 = v140 - 1;
        }

        while (v140 != 1);

        v1 = v119;
      }

      else
      {

        v143 = MEMORY[0x1E69E7CC0];
      }

      v42 = *(v0 + 944);
      v43 = *(v0 + 928);
      v44 = *(v0 + 768);
      v45 = *(v0 + 760);
      v46 = *(v0 + 752);
      v47 = *(v0 + 744);
      sub_192084578(v1 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, *(v0 + 776), type metadata accessor for TimelineReloadPolicy);
      v48 = type metadata accessor for WidgetViewCollection(0);
      v49 = swift_allocObject();
      v50 = OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection____lazy_storage___dateRange;
      v51 = sub_192224E00();
      (*(*(v51 - 8) + 56))(v49 + v50, 1, 1, v51);
      v52 = v42;
      BundleStub.init(_:)([v43 extensionIdentity], v44);
      sub_192084510(v44, v49 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_originatingBundle, type metadata accessor for BundleStub);
      _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
      (*(v46 + 32))(v49 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_creationDate, v45, v47);
      v145[0] = v143;

      sub_19209B0C4(v145);
      v117 = v49;
      v118 = v48;
      v53 = *(v0 + 696);
      v54 = *(v0 + 688);
      v55 = *(v0 + 680);
      v56 = *(v0 + 672);

      v57 = v145[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEA08, &unk_19222A7E0);
      inited = swift_initStackObject();
      *(inited + 16) = v57;
      *(inited + 24) = 0;
      v59 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v123 = MEMORY[0x1E69E7CC0] + v59;
      v136 = *(v56 + 32);
      v142 = *(v53 + 56);
      v142(v55 + v136, 1, 1, v54);
      v131 = v53;
      v129 = inited;
      *v55 = inited;
      v55[1] = sub_1920DA3A8;
      v139 = v55;
      v55[2] = 0;
      v60 = (v53 + 48);

      v125 = 0;
      v61 = 0;
      while (2)
      {
        v142(*(v0 + 656), 1, 1, *(v0 + 688));
        while (1)
        {
          v62 = *(v57 + 16);
          if (v61 == v62)
          {
            v63 = 1;
          }

          else
          {
            if (v61 >= v62)
            {
              __break(1u);
              goto LABEL_59;
            }

            sub_192084578(v57 + v59 + *(v131 + 72) * v61, *(v0 + 648), type metadata accessor for ViewableTimelineEntry);
            v63 = 0;
            *(v129 + 24) = ++v61;
          }

          v64 = *(v0 + 688);
          v65 = *(v0 + 656);
          v66 = *(v0 + 648);
          v67 = *(v0 + 640);
          v142(v66, v63, 1, v64);
          sub_192033970(v65, &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19204E300(v66, v65, &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19202CFFC(v65, v67, &qword_1EADEE9F8, &unk_19222A7D0);
          v68 = *v60;
          if ((*v60)(v67, 1, v64) == 1)
          {
            break;
          }

          v69 = *(v0 + 688);
          v70 = *(v0 + 656);
          v71 = *(v0 + 632);
          sub_192033970(*(v0 + 640), &qword_1EADEE9F8, &unk_19222A7D0);
          sub_19202CFFC(v70, v71, &qword_1EADEE9F8, &unk_19222A7D0);
          if (v68(v71, 1, v69) == 1)
          {
            v78 = (v0 + 632);
            goto LABEL_29;
          }

          v72 = *(v0 + 688);
          v73 = *(v0 + 624);
          sub_192084510(*(v0 + 632), *(v0 + 712), type metadata accessor for ViewableTimelineEntry);
          sub_19202CFFC(v139 + v136, v73, &qword_1EADEE9F8, &unk_19222A7D0);
          v74 = v68(v73, 1, v72);
          v75 = *(v0 + 712);
          if (v74 == 1)
          {
            sub_1920B3484(*(v0 + 712), type metadata accessor for ViewableTimelineEntry);
            v78 = (v0 + 624);
            goto LABEL_29;
          }

          v76 = *(v0 + 704);
          sub_192084510(*(v0 + 624), v76, type metadata accessor for ViewableTimelineEntry);
          v77 = sub_192225120();
          sub_1920B3484(v76, type metadata accessor for ViewableTimelineEntry);
          sub_1920B3484(v75, type metadata accessor for ViewableTimelineEntry);
          if ((v77 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        v78 = (v0 + 640);
LABEL_29:
        sub_192033970(*v78, &qword_1EADEE9F8, &unk_19222A7D0);
LABEL_30:
        v79 = *(v0 + 688);
        v80 = *(v0 + 664);
        v81 = *(v0 + 656);
        sub_19209B16C(v81, v139 + v136);
        sub_19204E300(v81, v80, &qword_1EADEE9F8, &unk_19222A7D0);
        if (v68(v80, 1, v79) == 1)
        {
          v99 = *(v0 + 664);
          sub_192033970(*(v0 + 680), &qword_1EADEEA00, &unk_19222B660);
          sub_192033970(v99, &qword_1EADEE9F8, &unk_19222A7D0);
          v100 = v126[3];
          if (v100 >= 2)
          {
            v101 = v100 >> 1;
            v98 = __OFSUB__(v101, v125);
            v102 = v101 - v125;
            if (v98)
            {
LABEL_63:
              __break(1u);
              return;
            }

            v126[2] = v102;
          }

          v103 = *(v0 + 944);
          v104 = *(v0 + 928);
          v105 = *(v0 + 776);
          v106 = *(v0 + 616);
          swift_setDeallocating();

          *(v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_viewableEntries) = v126;
          v117[2] = v103;
          *(v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_widget) = v104;
          sub_192084578(v105, v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_reloadPolicy, type metadata accessor for TimelineReloadPolicy);
          swift_beginAccess();
          LOBYTE(v103) = byte_1ED74B5B8;
          sub_1920B3484(v105, type metadata accessor for TimelineReloadPolicy);
          *(v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_protectionLevel) = v103;
          *(v117 + OBJC_IVAR____TtC9WidgetKit20WidgetViewCollection_urlAttributes) = MEMORY[0x1E69E7CD0];
          v107 = type metadata accessor for WidgetArchiver();
          *(v0 + 368) = v118;
          *(v0 + 376) = &protocol witness table for WidgetViewCollection;
          *(v0 + 344) = v117;
          v108 = *(v106 + OBJC_IVAR____TtC9WidgetKit15TimelineRequest_fileHandle);
          v109 = sub_1920AD1B0(v117);
          sub_192170900((v0 + 344), v109, v107, v108);
          v110 = *(v0 + 952);
          v111 = *(v0 + 936);
          v112 = *(v0 + 896);
          v113 = *(v0 + 888);
          v114 = *(v0 + 880);
          v115 = *(v0 + 872);
          v116 = *(v0 + 816);

          sub_1920B3484(v115, type metadata accessor for WidgetDescriptor);
          (*(v113 + 8))(v112, v114);
          __swift_destroy_boxed_opaque_existential_1((v0 + 344));
          sub_1920B3484(v116, type metadata accessor for TimelineProviderContext);
          __swift_destroy_boxed_opaque_existential_1((v0 + 104));

          v41 = *(v0 + 8);
          goto LABEL_11;
        }

        sub_192084510(*(v0 + 664), *(v0 + 720), type metadata accessor for ViewableTimelineEntry);
        v82 = v123;
        if (v125)
        {
          v83 = v126;
          v84 = v125 - 1;
          if (!__OFSUB__(v125, 1))
          {
            goto LABEL_53;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v85 = v126[3];
        if (((v85 >> 1) + 0x4000000000000000) < 0)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v86 = v85 & 0xFFFFFFFFFFFFFFFELL;
        if (v86 <= 1)
        {
          v87 = 1;
        }

        else
        {
          v87 = v86;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA10, &unk_19222B7B0);
        v88 = *(v131 + 72);
        v83 = swift_allocObject();
        v89 = _swift_stdlib_malloc_size(v83);
        if (!v88)
        {
          goto LABEL_61;
        }

        v90 = v89 - v59;
        if (v89 - v59 == 0x8000000000000000 && v88 == -1)
        {
          goto LABEL_62;
        }

        v92 = v90 / v88;
        v83[2] = v87;
        v83[3] = 2 * (v90 / v88);
        v93 = v83 + v59;
        v94 = v126;
        v95 = v126[3] >> 1;
        v96 = v95 * v88;
        if (!v126[2])
        {
LABEL_52:
          v82 = &v93[v96];
          v97 = (v92 & 0x7FFFFFFFFFFFFFFFLL) - v95;

          v98 = __OFSUB__(v97, 1);
          v84 = v97 - 1;
          if (!v98)
          {
LABEL_53:
            v125 = v84;
            sub_192084510(*(v0 + 720), v82, type metadata accessor for ViewableTimelineEntry);
            v123 = v82 + *(v131 + 72);
            v126 = v83;
            continue;
          }

          goto LABEL_59;
        }

        break;
      }

      if (v83 < v126 || v93 >= v126 + v59 + v96)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v83 == v126)
        {
LABEL_51:
          v94[2] = 0;
          goto LABEL_52;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v94 = v126;
      goto LABEL_51;
    }
  }

  v31 = *(v0 + 952);
  v133 = *(v0 + 936);
  v141 = *(v0 + 896);
  v32 = *(v0 + 888);
  v135 = *(v0 + 872);
  v138 = *(v0 + 880);
  v144 = *(v0 + 816);
  v33 = *MEMORY[0x1E69941E8];
  v34 = sub_19214036C(MEMORY[0x1E69E7CC0]);
  v35 = sub_192227960();
  v37 = v36;
  *(v0 + 472) = MEMORY[0x1E69E6158];
  *(v0 + 448) = 0xD000000000000031;
  *(v0 + 456) = 0x80000001922490A0;
  sub_19203BEDC((v0 + 448), (v0 + 480));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v145[0] = v34;
  sub_19213DB28((v0 + 480), v35, v37, isUniquelyReferenced_nonNull_native);

  v39 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v40 = sub_192227830();

  [v39 initWithDomain:v33 code:1101 userInfo:v40];

  swift_willThrow();

  sub_1920B3484(v135, type metadata accessor for WidgetDescriptor);
  (*(v32 + 8))(v141, v138);
  sub_1920B3484(v144, type metadata accessor for TimelineProviderContext);
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  v41 = *(v0 + 8);
LABEL_11:

  v41();
}

void sub_1920B1490(uint64_t a1)
{
  v2 = [objc_opt_self() sharedListener];
  v3 = [v2 listenerEndpoint];

  v4 = objc_opt_self();
  v5 = [objc_opt_self() tokenForCurrentProcess];
  [v5 realToken];
  v12 = v15;
  v13 = v14;

  v14 = v13;
  v15 = v12;
  v6 = [v4 if:&v14 dataWithAuditToken:?];
  if (v6)
  {
    v7 = v6;
    v8 = sub_192225080();
    v10 = v9;

    v11 = sub_192225050();
  }

  else
  {
    v11 = 0;
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  (*(a1 + 16))(a1, v3, v11, 0);

  sub_192046ED4(v8, v10);
}

uint64_t sub_1920B15E0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192227710();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_192227790();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v12 = sub_192228080();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_1920B3730;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_178;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  sub_192227740();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  MEMORY[0x193B0B040](0, v11, v8, v14);
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_1920B18D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1ED74C6B0 != -1)
  {
    swift_once();
  }

  v10 = sub_1922258B0();
  __swift_project_value_buffer(v10, qword_1ED74CCC8);
  v11 = sub_192225890();
  v12 = sub_192227FB0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_192028000, v11, v12, "Attaching to preview agent.", v13, 2u);
    MEMORY[0x193B0C7F0](v13, -1, -1);
  }

  v14 = sub_1922279A0();
  v15 = dlopen((v14 + 32), 2);

  if (v15)
  {
    v16 = dlsym(v15, "_initializePreviewAgent");
    if (v16)
    {
      v17 = v16;
      if (a3)
      {
        swift_unknownObjectRetain();
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (!v18)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v18 = 0;
      }

      v25 = v17(v18);

      *(a4 + OBJC_IVAR____TtCC9WidgetKit24WidgetExtensionXPCServer14ExportedObject_previewAgent) = v25;

      v26 = [objc_opt_self() tokenForCurrentProcess];
      (*(a5 + 16))(a5, v26);
    }

    else
    {
      v22 = sub_192225890();
      v23 = sub_192227F80();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_192028000, v22, v23, "Failed to find Preview Agent initialization function symbol", v24, 2u);
        MEMORY[0x193B0C7F0](v24, -1, -1);
      }

      (*(a5 + 16))(a5, 0);
    }

    return dlclose(v15);
  }

  else
  {
    if (dlerror())
    {
      v19 = sub_1922279F0();
      v21 = v20;
    }

    else
    {
      v21 = 0xED0000726F727265;
      v19 = 0x206E776F6E6B6E75;
    }

    v28 = sub_192225890();
    v29 = sub_192227F80();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v34 = v31;
      *v30 = 136446466;
      *(v30 + 4) = sub_19202B8CC(a1, a2, &v34);
      *(v30 + 12) = 2082;
      v32 = sub_19202B8CC(v19, v21, &v34);

      *(v30 + 14) = v32;
      _os_log_impl(&dword_192028000, v28, v29, "Failed to open Preview Agent framework: %{public}s, %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193B0C7F0](v31, -1, -1);
      MEMORY[0x193B0C7F0](v30, -1, -1);
    }

    else
    {
    }

    v33 = *(a5 + 16);

    return v33(a5, 0);
  }
}

uint64_t sub_1920B1CF8(uint64_t a1)
{
  v1[26] = a1;
  sub_192227CC0();
  v1[27] = sub_192227CB0();
  v3 = sub_192227C70();
  v1[28] = v3;
  v1[29] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1920B1D90, v3, v2);
}

void sub_1920B1D90()
{
  if (xmmword_1ED74CC80)
  {
    v1 = *(v0 + 208);
    v2 = *(&xmmword_1ED74CC80 + 1);
    v3 = *xmmword_1ED74CC80;
    *(v0 + 200) = xmmword_1ED74CC80;
    v4 = *(v1 + OBJC_IVAR____TtC9WidgetKit25ModifyControlStateRequest_control);

    sub_1921E7020(v4, v3, v2, (v0 + 16));

    v5 = sub_1922254E0();
    sub_1920B2B7C(v0 + 64, v0 + 112);
    if (*(v0 + 152))
    {

      sub_1920B2BD8(v0 + 112);
      if (qword_1EADEE4E8 != -1)
      {
        swift_once();
      }

      v6 = sub_1922258B0();
      __swift_project_value_buffer(v6, qword_1EAE00810);
      v7 = sub_192225890();
      v8 = sub_192227FA0();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_192028000, v7, v8, "ModifyControlStateRequest is unsupported in the API", v9, 2u);
        MEMORY[0x193B0C7F0](v9, -1, -1);
      }

      sub_1920390EC(v0 + 16);
      v10 = *(v0 + 8);

      v10();
    }

    else
    {
      sub_19203832C((v0 + 112), v0 + 160);
      v11 = *(v0 + 184);
      v12 = *(v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 160), v11);
      v13 = (*(v12 + 8))(v11, v12);
      *(v0 + 240) = v13;
      v14 = *(v0 + 184);
      v15 = *(v0 + 192);
      __swift_project_boxed_opaque_existential_1((v0 + 160), v14);
      v17 = (*(v15 + 32) + **(v15 + 32));
      v16 = swift_task_alloc();
      *(v0 + 248) = v16;
      *v16 = v0;
      v16[1] = sub_1920B20F0;

      v17(v5, v13, v14, v15);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1920B20F0()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1920B22AC;
  }

  else
  {
    v5 = sub_1920B222C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1920B222C()
{

  sub_1920390EC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1920B22AC()
{

  sub_1920390EC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1920B232C(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v3 = sub_192227710();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_192227790();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1922258B0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActivityArchiver(0);
  v31 = *(v11 - 8);
  v12 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v30 - v15);
  result = xmmword_1ED74CC80;
  if (xmmword_1ED74CC80)
  {
    v41 = *xmmword_1ED74CC80;
    v42 = qword_1ED74CC90;
    aBlock[0] = xmmword_1ED74CC80;
    v18 = qword_1EADEDEB0;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v7, qword_1EAE007D8);
    (*(v8 + 16))(v10, v19, v7);
    sub_192225810();
    v20 = v32;
    *v16 = v32;
    sub_192033A64(aBlock, (v16 + 1));
    v21 = v20;
    sub_192225820();
    sub_1922257E0();
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
    v22 = sub_192228080();
    sub_192084578(v16, v13, type metadata accessor for ActivityArchiver);
    v23 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v24 = swift_allocObject();
    sub_192084510(v13, v24 + v23, type metadata accessor for ActivityArchiver);
    v25 = (v24 + ((v12 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
    v26 = v34;
    *v25 = v33;
    v25[1] = v26;
    v42 = sub_1920B28A0;
    v43 = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19202AB80;
    v41 = &block_descriptor;
    v27 = _Block_copy(aBlock);

    sub_192227740();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_192035B0C(&qword_1ED74C620, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
    sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
    v28 = v36;
    v29 = v39;
    sub_1922282F0();
    MEMORY[0x193B0B040](0, v6, v28, v27);
    _Block_release(v27);

    (*(v38 + 8))(v28, v29);
    (*(v35 + 8))(v6, v37);
    return sub_1920B3484(v16, type metadata accessor for ActivityArchiver);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1920B28A0()
{
  v1 = *(type metadata accessor for ActivityArchiver(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1920A9C2C(v0 + v2, v3);
}

uint64_t sub_1920B2930(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_1920A8158(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1920B2AA8(uint64_t a1)
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
  v10[1] = sub_1920B3B44;

  return sub_1920A78B8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1920B2C2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_1920A68E8(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_38Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_48Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1920B2E88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_1920A5A9C(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_1920B2FE8()
{
  result = qword_1ED74ABF8;
  if (!qword_1ED74ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ABF8);
  }

  return result;
}

unint64_t sub_1920B303C()
{
  result = qword_1EADEEE08;
  if (!qword_1EADEEE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEEE08);
  }

  return result;
}

unint64_t sub_1920B3090()
{
  result = qword_1EADEE4C0;
  if (!qword_1EADEE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE4C0);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x193B0C7F0);
  }

  return result;
}

unint64_t sub_1920B3134()
{
  result = qword_1ED74B758;
  if (!qword_1ED74B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B758);
  }

  return result;
}

uint64_t sub_1920B3188(uint64_t a1)
{
  v3 = *(sub_1922258B0() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_192225800();
  v12 = *(v1 + 24);
  v13 = *(v1 + 16);
  v6 = *(v1 + 40);
  v11 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + v5);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_1920A255C(a1, v13, v12, v11, v6, v7, v1 + v4, v8);
}

unint64_t sub_1920B3350()
{
  result = qword_1ED7494C0;
  if (!qword_1ED7494C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7494C0);
  }

  return result;
}

unint64_t sub_1920B33A4()
{
  result = qword_1ED74A4A8;
  if (!qword_1ED74A4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEEE58, &unk_19222B7A0);
    sub_1920B3430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A4A8);
  }

  return result;
}

unint64_t sub_1920B3430()
{
  result = qword_1ED74A498;
  if (!qword_1ED74A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A498);
  }

  return result;
}

uint64_t sub_1920B3484(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1920B34E4(uint64_t a1)
{
  sub_1922258B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE70, &qword_19222B7C0);
  v3 = *(v1 + 16);

  sub_1920A2D20(a1, v3);
}

uint64_t objectdestroy_32Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_157Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_174Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1920B37D8(uint64_t a1)
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
  v10[1] = sub_1920A59A8;

  return sub_1920A3758(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1920B38AC(void *a1)
{
  v3 = *(sub_192225800() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_19209E798(a1, v5, v6, v7, v8, v1 + v4, v9);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1920B39BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1920B3A04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1920B3A68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1920B3AA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1920B3AF0(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1920B3B98(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_192228240();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1920B3C7C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v9 + 80);
  v15 = *(*(v8 - 8) + 64);
  if (!v11)
  {
    ++v15;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 64) + v14;
  v17 = v15 + 7;
  if (v13 < a2)
  {
    v18 = ((((v17 + (v16 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18;
    if (v18 <= 3)
    {
      v19 = ((a2 - v13 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v18);
        if (*(a1 + v18))
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = *(a1 + v18);
        if (v22)
        {
          goto LABEL_27;
        }
      }
    }

    else if (v21)
    {
      v22 = *(a1 + v18);
      if (*(a1 + v18))
      {
LABEL_27:
        v23 = (v22 - 1) << (8 * v18);
        if (v18 <= 3)
        {
          v24 = *a1;
        }

        else
        {
          v23 = 0;
          v24 = *a1;
        }

        return v13 + (v24 | v23) + 1;
      }
    }
  }

  if (v7 == v13)
  {
    v25 = *(v6 + 48);

    return v25(a1, v7, AssociatedTypeWitness);
  }

  v27 = (a1 + v16) & ~v14;
  if (v12 == v13)
  {
    if (v11 >= 2)
    {
      v29 = (*(v10 + 48))(v27);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(((((v17 + v27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v28 >= 0xFFFFFFFF)
  {
    LODWORD(v28) = -1;
  }

  return (v28 + 1);
}

void sub_1920B3F50(_WORD *a1, uint64_t a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = *(v11 + 84);
  v13 = *(v8 + 64);
  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
  }

  v15 = *(v11 + 80);
  if (v14 <= v9)
  {
    v16 = v9;
  }

  else
  {
    v16 = v14;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = v13 + v15;
  v18 = (v13 + v15) & ~v15;
  if (v12)
  {
    v19 = *(v11 + 64);
  }

  else
  {
    v19 = *(v11 + 64) + 1;
  }

  v20 = v19 + 7;
  v21 = ((((v20 + v18) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v16 < a3)
  {
    if (v21 <= 3)
    {
      v22 = ((a3 - v16 + 0xFFFF) >> 16) + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }
  }

  if (v16 >= a2)
  {
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *(a1 + v21) = 0;
    }

    else if (v10)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

LABEL_41:
    if (v9 == v16)
    {
      v26 = *(v8 + 56);

      v26(a1, a2, v9, AssociatedTypeWitness);
    }

    else
    {
      v27 = (a1 + v17) & ~v15;
      if (v14 == v16)
      {
        v28 = *(v11 + 56);

        v28(v27, (a2 + 1));
      }

      else
      {
        v29 = ((((v20 + v27) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v29 = a2 & 0x7FFFFFFF;
          v29[1] = 0;
        }

        else
        {
          v29[1] = (a2 - 1);
        }
      }
    }

    return;
  }

  v24 = ~v16 + a2;
  bzero(a1, v21);
  if (v21 <= 3)
  {
    v25 = HIWORD(v24) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v21 <= 3)
  {
    *a1 = v24;
    if (v10 > 1)
    {
LABEL_29:
      if (v10 == 2)
      {
        *(a1 + v21) = v25;
      }

      else
      {
        *(a1 + v21) = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v10 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v10)
  {
    *(a1 + v21) = v25;
  }
}