uint64_t sub_23DABFBB8()
{
  v0 = sub_23DABFE74();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v7);

  v1 = v7;
  if (!(v7 >> 62))
  {
    v2 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_20:

    goto LABEL_25;
  }

  v2 = sub_23DB70C3C();
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_4:
  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x23EEF70C0](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v7);

  v2 = v7;
  if (v7)
  {
    v1 = v7 & 0xFFFFFFFFFFFFFF8;
    if (!(v7 >> 62))
    {
      if (v0 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      goto LABEL_10;
    }

LABEL_23:
    v5 = v2;
    v6 = sub_23DB70C3C();
    v2 = v5;
    if (v0 >= v6)
    {
      goto LABEL_24;
    }

LABEL_10:
    if ((v0 & 0x8000000000000000) == 0)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEF70C0](v0);
      }

      else
      {
        if (v0 >= *(v1 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C(&v7);

      if (v7)
      {
        if (!(v7 >> 62))
        {
          v3 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:

          return v3;
        }

LABEL_30:
        v3 = sub_23DB70C3C();
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_24:

    goto LABEL_25;
  }

LABEL_18:

LABEL_25:

  return 1;
}

uint64_t sub_23DABFE74()
{
  v39 = sub_23DB6EA8C();
  v2 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v40 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = v24 - v5;
  swift_beginAccess();
  v33 = v0;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v41);

  v9 = v41[0];
  if (v41[0] >> 62)
  {
    goto LABEL_48;
  }

  if (!*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_49:

LABEL_50:

    return 0;
  }

LABEL_4:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x23EEF70C0](0, v9);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_55;
    }

    v1 = *(v9 + 32);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v41);

  v25 = v41[0];
  if (!v41[0])
  {

    goto LABEL_50;
  }

  v10 = sub_23DAC72C0();
  KeyPath = v10;
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_10;
  }

LABEL_55:
  v11 = sub_23DB70C3C();
LABEL_10:
  v24[1] = v1;
  v24[2] = v7;
  if (v11)
  {
    v9 = 0;
    v12 = 0;
    v32 = KeyPath & 0xC000000000000001;
    v31 = KeyPath & 0xFFFFFFFFFFFFFF8;
    v13 = v25 & 0xFFFFFFFFFFFFFF8;
    v37 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 < 0)
    {
      v13 = v25;
    }

    v24[0] = v13;
    v35 = (v2 + 16);
    v34 = (v2 + 8);
    v28 = v25 & 0xC000000000000001;
    v26 = v25 + 32;
    v30 = v25 >> 62;
    v29 = KeyPath;
    v27 = v11;
    while (1)
    {
      if (v32)
      {
        v2 = MEMORY[0x23EEF70C0](v9, KeyPath);
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v9 >= *(v31 + 16))
        {
          goto LABEL_45;
        }

        v2 = *(KeyPath + 8 * v9 + 32);

        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          if (!sub_23DB70C3C())
          {
            goto LABEL_49;
          }

          goto LABEL_4;
        }
      }

      if (v30)
      {
        if (v12 >= sub_23DB70C3C())
        {
LABEL_38:

          goto LABEL_39;
        }
      }

      else if (v12 >= *(v37 + 16))
      {
        goto LABEL_38;
      }

      v36 = v7;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(&v42);

      KeyPath = v42;
      if (v42)
      {
        v14 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v15 = *v35;
        v16 = v38;
        v7 = v39;
        (*v35)(v38, v2 + v14, v39);
        v17 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v1 = v40;
        v15(v40, KeyPath + v17, v7);
        LOBYTE(v17) = sub_23DB6EA6C();

        KeyPath = *v34;
        (*v34)(v1, v7);
        (KeyPath)(v16, v7);
        if (v17)
        {
          goto LABEL_43;
        }
      }

      else
      {
      }

      if (v28)
      {
        v18 = MEMORY[0x23EEF70C0](v12, v25);
      }

      else
      {
        if (v12 < 0)
        {
          goto LABEL_46;
        }

        if (v12 >= *(v37 + 16))
        {
          goto LABEL_47;
        }

        v18 = *(v26 + 8 * v12);
      }

      v19 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v20 = *v35;
      v21 = v38;
      v7 = v39;
      (*v35)(v38, v2 + v19, v39);
      v22 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v1 = v40;
      v20(v40, v18 + v22, v7);
      LOBYTE(v20) = sub_23DB6EA6C();

      v23 = *v34;
      (*v34)(v1, v7);
      v23(v21, v7);
      v12 += v20 & 1;
      ++v9;
      KeyPath = v29;
      if (v36 == v27)
      {
        goto LABEL_37;
      }
    }
  }

  v12 = 0;
LABEL_37:

LABEL_39:

  if (!v12)
  {
    return 0;
  }

  result = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
LABEL_43:

    return v12 - (v12 > 0);
  }

  return result;
}

uint64_t sub_23DAC0550()
{
  v0 = sub_23DB6EA8C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v7 = sub_23DABFE74();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v9 = Strong;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v40);

  v11 = v40[0];
  if (!(v40[0] >> 62))
  {
    v12 = *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_37:

    goto LABEL_38;
  }

  v12 = sub_23DB70C3C();
  if (!v12)
  {
    goto LABEL_37;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x23EEF70C0](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_42;
    }

    v13 = *(v11 + 32);
  }

  v14 = swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v40);

  v12 = v40[0];
  if (!v40[0])
  {
    goto LABEL_35;
  }

  v36 = v13;
  KeyPath = v40[0] & 0xFFFFFFFFFFFFFF8;
  if (v40[0] >> 62)
  {
    goto LABEL_43;
  }

  if (v7 >= *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_34:

LABEL_35:

LABEL_38:

    return 1;
  }

  while (1)
  {
    if (v7 < 0)
    {
      goto LABEL_34;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
LABEL_46:
      v7 = MEMORY[0x23EEF70C0](v7);
    }

    else
    {
      if (v7 >= *(KeyPath + 16))
      {
        __break(1u);
        goto LABEL_48;
      }

      v7 = *(v12 + 8 * v7 + 32);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(v40);

    v15 = v40[0];
    if (!v40[0])
    {
      goto LABEL_35;
    }

    v14 = v40[0] & 0xFFFFFFFFFFFFFF8;
    if (!(v40[0] >> 62))
    {
      v16 = *((v40[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_34;
      }

      goto LABEL_17;
    }

LABEL_48:
    v7 = v15;
    v16 = sub_23DB70C3C();
    v15 = v7;
    if (!v16)
    {
      goto LABEL_34;
    }

LABEL_17:
    v35 = v9;
    v37 = v16;
    v38 = v15;
    if ((v15 & 0xC000000000000001) == 0)
    {
      break;
    }

    v17 = 0;
    v33 = v1 + 1;
    v34 = (v1 + 2);
    while (1)
    {
      v12 = MEMORY[0x23EEF70C0](v17);
      KeyPath = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v1 = v12;
      v39 = v17 + 1;
      swift_getKeyPath();
      v7 = swift_getKeyPath();
      swift_unknownObjectRetain();
      sub_23DB6EF0C(&v41);

      v18 = v41;
      if (v41)
      {
        v19 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v20 = *v34;
        (*v34)(v6, v1 + v19, v0);
        v21 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v20(v3, v18 + v21, v0);
        v7 = sub_23DB6EA6C();
        swift_unknownObjectRelease_n();

        v22 = *v33;
        (*v33)(v3, v0);
        v22(v6, v0);
        v9 = v35;
        if (v7)
        {
          goto LABEL_33;
        }
      }

      else
      {
        swift_unknownObjectRelease_n();
      }

      ++v17;
      if (v39 == v37)
      {
        goto LABEL_34;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    v14 = v12;
    v31 = sub_23DB70C3C();
    v12 = v14;
    if (v7 >= v31)
    {
      goto LABEL_34;
    }
  }

  v23 = 0;
  v33 = v1 + 1;
  v34 = (v1 + 2);
  v39 = v14;
  v24 = (v1 + 2);
  while (1)
  {
    if (v23 >= *(v14 + 16))
    {
      __break(1u);
      goto LABEL_46;
    }

    v1 = *(v15 + 8 * v23 + 32);
    v7 = swift_getKeyPath();
    swift_getKeyPath();
    swift_retain_n();
    sub_23DB6EF0C(&v41);

    v25 = v41;
    if (v41)
    {
      break;
    }

LABEL_28:
    ++v23;
    v15 = v38;
    v14 = v39;
    if (v37 == v23)
    {
      goto LABEL_34;
    }
  }

  v26 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v27 = *v24;
  (*v24)(v6, v1 + v26, v0);
  v28 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  v27(v3, v25 + v28, v0);
  v7 = sub_23DB6EA6C();

  v1 = v33;
  v29 = *v33;
  (*v33)(v3, v0);
  v29(v6, v0);
  v9 = v35;
  if ((v7 & 1) == 0)
  {
    goto LABEL_28;
  }

  v39 = v23 + 1;
LABEL_33:

  return v39;
}

uint64_t NavigationModel.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__columnVisibility;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9B0, &qword_23DB7C8E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__selectedPage;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__expandedPages;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE980, &qword_23DB7C878);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_weakDestroy();

  return v0;
}

uint64_t NavigationModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__columnVisibility;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9B0, &qword_23DB7C8E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__selectedPage;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__expandedPages;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE980, &qword_23DB7C878);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_weakDestroy();

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_23DAC0EA4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_23DB6EE6C();
  *a2 = result;
  return result;
}

uint64_t sub_23DAC0F1C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_23DB6EA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v13 < 0)
    {
      v14 = *v2;
    }

    else
    {
      v14 = v13 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = sub_23DB70C4C();

    if (v15)
    {

      v42 = v15;
      type metadata accessor for Page(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v43;
    }

    else
    {
      result = sub_23DB70C3C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v30 = sub_23DAC1320(v14, result + 1);
        v43 = v30;
        v31 = *(v30 + 16);
        if (*(v30 + 24) <= v31)
        {
          sub_23DAC1634(v31 + 1);
          v30 = v43;
        }

        sub_23DAC19AC(v32, v30);

        *v3 = v30;
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    v34 = v2;
    v35 = a1;
    sub_23DB70E0C();
    v17 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
    swift_beginAccess();
    v18 = *(v7 + 16);
    v38 = v17;
    v18(v12, a2 + v17, v6);
    sub_23DAC2E70(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_23DB7083C();
    v19 = *(v7 + 8);
    v19(v12, v6);
    v20 = sub_23DB70E4C();
    v21 = v13 + 56;
    v39 = v13;
    v40 = a2;
    v22 = -1 << *(v13 + 32);
    v23 = v20 & ~v22;
    v37 = v21;
    if ((*(v21 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v36 = ~v22;
      while (1)
      {
        v24 = *(*(v39 + 48) + 8 * v23);
        v25 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        v18(v12, v24 + v25, v6);
        v18(v9, v40 + v38, v6);
        LOBYTE(v24) = sub_23DB6EA6C();
        v19(v9, v6);
        v19(v12, v6);
        if (v24)
        {
          break;
        }

        v23 = (v23 + 1) & v36;
        if (((*(v37 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      *v35 = *(*(v39 + 48) + 8 * v23);

      return 0;
    }

    else
    {
LABEL_11:
      v26 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *v26;
      v28 = v40;

      sub_23DAC1B60(v29, v23, isUniquelyReferenced_nonNull_native);
      *v26 = v41;
      *v35 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_23DAC1320(uint64_t a1, uint64_t a2)
{
  v3 = sub_23DB6EA8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9E8, &unk_23DB7CA30);
    v7 = sub_23DB70CBC();
    v29 = v7;
    sub_23DB70C2C();
    v8 = sub_23DB70C5C();
    if (v8)
    {
      v9 = v8;
      type metadata accessor for Page(0);
      v10 = v9;
      v11 = (v4 + 16);
      v12 = (v4 + 8);
      do
      {
        v27 = v10;
        swift_dynamicCast();
        v21 = *(v7 + 16);
        if (*(v7 + 24) <= v21)
        {
          sub_23DAC1634(v21 + 1);
        }

        v13 = v28;
        v7 = v29;
        sub_23DB70E0C();
        v14 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
        swift_beginAccess();
        (*v11)(v6, v13 + v14, v3);
        sub_23DAC2E70(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_23DB7083C();
        (*v12)(v6, v3);
        result = sub_23DB70E4C();
        v16 = v7 + 56;
        v17 = -1 << *(v7 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v7 + 56 + 8 * (v18 >> 6))) != 0)
        {
          v20 = __clz(__rbit64((-1 << v18) & ~*(v7 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = 0;
          v23 = (63 - v17) >> 6;
          do
          {
            if (++v19 == v23 && (v22 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v24 = v19 == v23;
            if (v19 == v23)
            {
              v19 = 0;
            }

            v22 |= v24;
            v25 = *(v16 + 8 * v19);
          }

          while (v25 == -1);
          v20 = __clz(__rbit64(~v25)) + (v19 << 6);
        }

        *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v7 + 48) + 8 * v20) = v13;
        ++*(v7 + 16);
        v10 = sub_23DB70C5C();
      }

      while (v10);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v7;
}

uint64_t sub_23DAC1634(uint64_t a1)
{
  v2 = v1;
  v3 = sub_23DB6EA8C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9E8, &unk_23DB7CA30);
  result = sub_23DB70CAC();
  v9 = result;
  if (*(v7 + 16))
  {
    v31 = v1;
    v32 = v7;
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = (v4 + 8);
    v34 = (v4 + 16);
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      sub_23DB70E0C();
      v22 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      (*v34)(v6, v21 + v22, v3);
      sub_23DAC2E70(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_23DB7083C();
      (*v33)(v6, v3);
      result = sub_23DB70E4C();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
      v7 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v7 + 32);
    if (v30 >= 64)
    {
      bzero(v11, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v30;
    }

    v2 = v31;
    *(v7 + 16) = 0;
  }

  *v2 = v9;
  return result;
}

unint64_t sub_23DAC19AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_23DB6EA8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23DB70E0C();
  v8 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  swift_beginAccess();
  (*(v5 + 16))(v7, a1 + v8, v4);
  sub_23DAC2E70(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DB7083C();
  (*(v5 + 8))(v7, v4);
  sub_23DB70E4C();
  result = sub_23DB70C1C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_23DAC1B60(uint64_t a1, unint64_t a2, char a3)
{
  v36 = a1;
  v6 = sub_23DB6EA8C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v31 = v3;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23DAC1634(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_23DAC1EA4();
      goto LABEL_12;
    }

    sub_23DAC1FF4(v13 + 1);
  }

  v15 = *v3;
  sub_23DB70E0C();
  v16 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  v17 = v36;
  swift_beginAccess();
  v18 = *(v7 + 16);
  v33 = v16;
  v18(v12, v17 + v16, v6);
  sub_23DAC2E70(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23DB7083C();
  v20 = v7 + 8;
  v19 = *(v7 + 8);
  v35 = v20;
  v19(v12, v6);
  v21 = sub_23DB70E4C();
  v34 = v15;
  v22 = -1 << *(v15 + 32);
  a2 = v21 & ~v22;
  v32 = v15 + 56;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v23 = ~v22;
    v30 = type metadata accessor for Page(0);
    do
    {
      v24 = *(*(v34 + 48) + 8 * a2);
      v25 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v18(v12, v24 + v25, v6);
      v18(v9, v36 + v33, v6);
      LOBYTE(v24) = sub_23DB6EA6C();
      v19(v9, v6);
      v19(v12, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v23;
    }

    while (((*(v32 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + 8 * a2) = v36;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return;
  }

  __break(1u);
LABEL_15:
  sub_23DB70DEC();
  __break(1u);
}

void *sub_23DAC1EA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9E8, &unk_23DB7CA30);
  v2 = *v0;
  v3 = sub_23DB70C9C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

  return result;
}

uint64_t sub_23DAC1FF4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_23DB6EA8C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE9E8, &unk_23DB7CA30);
  result = sub_23DB70CAC();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v1;
    v8 = 0;
    v9 = v5 + 56;
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
    v32 = (v3 + 8);
    v33 = (v3 + 16);
    v14 = result + 56;
    v34 = v5;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      sub_23DB70E0C();
      v20 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
      swift_beginAccess();
      v21 = v19 + v20;
      v22 = v35;
      v23 = v36;
      (*v33)(v35, v21, v36);
      sub_23DAC2E70(&qword_27E2FC3A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

      sub_23DB7083C();
      (*v32)(v22, v23);
      result = sub_23DB70E4C();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        v5 = v34;
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      v5 = v34;
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
        break;
      }

      if (v8 >= v13)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v2 = v7;
  }

  return result;
}

uint64_t (*sub_23DAC2354(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEF70C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_23DAC23D4;
  }

  __break(1u);
  return result;
}

unint64_t sub_23DAC2434(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x23EEF70C0](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        sub_23DAC0F1C(&v6, v4);

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = v3 + 1;
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_23DB70C3C();
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_23DAC2518(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v33 = a3;
  v34 = a1;
  v5 = sub_23DB6FA6C();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE980, &qword_23DB7C878);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE970, &qword_23DB7C868);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  v18 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__selectedPage;
  v35[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE988, &unk_23DB7C880);
  sub_23DB6EECC();
  (*(v15 + 32))(v4 + v18, v17, v14);
  v19 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE320, &qword_23DB7B4B8);
  swift_allocObject();
  *(v4 + v19) = sub_23DABC940(0);
  v20 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__expandedPages;
  v21 = MEMORY[0x277D84FA0];
  v35[0] = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE998, &qword_23DB7C890);
  sub_23DB6EECC();
  (*(v11 + 32))(v4 + v20, v13, v10);
  v22 = v34;
  swift_weakInit();
  if (MEMORY[0x277D84F90] >> 62 && sub_23DB70C3C())
  {
    v21 = sub_23DA3AE98(MEMORY[0x277D84F90]);
  }

  *(v4 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_subscribers) = v21;
  v23 = v31;
  v24 = *(v31 + 16);
  v24(v9, v22, v5);
  swift_beginAccess();
  v24(v30, v9, v5);
  sub_23DB6EECC();
  v25 = *(v23 + 8);
  v31 = v5;
  v25(v9, v5);
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = v32;

  sub_23DB6EF0C(v35);

  v27 = v35[0];
  swift_getKeyPath();
  swift_getKeyPath();
  v35[0] = v26;

  sub_23DB6EF1C();
  sub_23DABE3E8(v27);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v35);

  v28 = v34;
  if (v35[0])
  {
    sub_23DA1DF04();
  }

  v25(v28, v31);
  return v4;
}

unint64_t sub_23DAC2A08()
{
  result = qword_27E2FE9B8;
  if (!qword_27E2FE9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FE9B8);
  }

  return result;
}

uint64_t sub_23DAC2A64@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel__shouldShowHomeButton);
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_23DAC2ABC@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for NavigationModel(uint64_t a1)
{
  result = qword_27E2FE9C0;
  if (!qword_27E2FE9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DAC2BD8(uint64_t a1)
{
  sub_23DAC2D70(319);
  if (v1 <= 0x3F)
  {
    sub_23DA3F3D4(319, &qword_27E2FE9D8, &qword_27E2FE988, &unk_23DB7C880);
    if (v2 <= 0x3F)
    {
      sub_23DA3F3D4(319, &qword_27E2FE9E0, &qword_27E2FE998, &qword_23DB7C890);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_23DAC2D70(uint64_t a1)
{
  if (!qword_27E2FE9D0)
  {
    sub_23DB6FA6C();
    v1 = sub_23DB6EF2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2FE9D0);
    }
  }
}

uint64_t sub_23DAC2E18()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DAC2E70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DAC2F38(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
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

  MEMORY[0x28223BE20](TupleTypeMetadata);
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

  return sub_23DB706CC();
}

uint64_t sub_23DAC3108@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_23DB70B7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t AXOnboardingHeader.init(title:description:iconName:traits:customIconView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = *a7;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for AXOnboardingHeader(0, a10, a11, v19);
  v21 = &a9[v20[9]];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = &a9[v20[10]];
  *v22 = a3;
  *(v22 + 1) = a4;
  v23 = &a9[v20[11]];
  *v23 = a5;
  *(v23 + 1) = a6;
  *&a9[v20[12]] = v18;
  v24 = v20[13];
  v25 = sub_23DB70B7C();
  v26 = *(*(v25 - 8) + 32);

  return v26(&a9[v24], a8, v25);
}

uint64_t sub_23DAC32C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23DB6F55C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FBEF8, &qword_23DB73D60);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23DA0E2B4(v2, &v14 - v9, &qword_27E2FBEF8, &qword_23DB73D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23DB6F25C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23DB70ACC();
    v13 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t AXOnboardingHeader.body.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEB70, &qword_23DB7CB88);
  sub_23DB6F7AC();
  sub_23DB70B7C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2FEB78, &qword_23DB7CB90);
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  v2 = sub_23DB7044C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  sub_23DAC36AC(a1);
  swift_getWitnessTable();
  sub_23DAAC170();
  v9 = *(v3 + 8);
  v9(v5, v2);
  sub_23DAAC170();
  return (v9)(v8, v2);
}

uint64_t sub_23DAC36AC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEB70, &qword_23DB7CB88);
  v3 = *(a1 + 16);
  sub_23DB6F7AC();
  sub_23DB70B7C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2FEB78, &qword_23DB7CB90);
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  v4 = sub_23DB7044C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  v11 = *(a1 + 24);
  v15 = v3;
  v16 = v11;
  v17 = v1;
  sub_23DB6F68C();
  sub_23DB7043C();
  swift_getWitnessTable();
  sub_23DAAC170();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_23DAAC170();
  return (v12)(v10, v4);
}

uint64_t sub_23DAC3924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a1;
  v30 = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FEB78, &qword_23DB7CB90);
  MEMORY[0x28223BE20](v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEB70, &qword_23DB7CB88);
  v28 = a2;
  sub_23DB6F7AC();
  v11 = sub_23DB70B7C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  v18 = a2;
  v19 = a3;
  v21 = type metadata accessor for AXOnboardingHeader(0, v18, a3, v20);
  sub_23DAC3C80(v21, v14);
  v34[3] = sub_23DA17B80(&qword_27E2FEC00, &qword_27E2FEB70, &qword_23DB7CB88, MEMORY[0x277CE1198]);
  v34[4] = a3;
  v34[2] = swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_23DAAC170();
  v23 = *(v12 + 8);
  v23(v14, v11);
  *v10 = sub_23DB6F5BC();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC08, &qword_23DB7CC18);
  sub_23DAC432C(v27, v28, v19, &v10[*(v24 + 44)]);
  (*(v12 + 16))(v14, v17, v11);
  v34[0] = v14;
  sub_23DAC5AFC(v10, v7);
  v34[1] = v7;
  v33[0] = v11;
  v33[1] = v29;
  v31 = WitnessTable;
  v32 = sub_23DA17B80(&qword_27E2FEC10, qword_27E2FEB78, &qword_23DB7CB90, MEMORY[0x277CE1138]);
  sub_23DAC2F38(v34, 2uLL, v33);
  sub_23DAC5B6C(v10);
  v23(v17, v11);
  sub_23DAC5B6C(v7);
  return (v23)(v14, v11);
}

uint64_t sub_23DAC3C80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v5 = *(a1 + 16);
  v6 = sub_23DB70B7C();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v51 - v7;
  v58 = *(v5 - 8);
  MEMORY[0x28223BE20](v8);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v51 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEB70, &qword_23DB7CB88);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v18 = sub_23DB6F7AC();
  v59 = sub_23DB70B7C();
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v60 = &v51 - v23;
  v24 = a1;
  if (*(v3 + *(a1 + 44) + 8))
  {
    *v17 = sub_23DB6F68C();
    *(v17 + 1) = 0;
    v17[16] = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC88, &qword_23DB7CC98);
    v26 = *(a1 + 24);
    sub_23DAC4FE4(&v17[*(v25 + 44)]);
    v27 = sub_23DA17B80(&qword_27E2FEC00, &qword_27E2FEB70, &qword_23DB7CB88, MEMORY[0x277CE1198]);
    v28 = v15;
    v29 = v26;
    sub_23DAAA68C(v17, v28, v5, v27, v26);
    sub_23DA17988(v17, &qword_27E2FEB70, &qword_23DB7CB88);
    (*(*(v18 - 8) + 56))(v20, 0, 1, v18);
    v63 = v27;
    v30 = &v63;
    v31 = v20;
  }

  else
  {
    v51 = v15;
    v52 = v20;
    v32 = v53;
    v33 = v54;
    v34 = v24;
    v35 = *(v24 + 52);
    v37 = v56;
    v36 = v57;
    v38 = v55;
    (*(v56 + 16))(v55, v3 + v35, v57, v22);
    v39 = v58;
    if ((*(v58 + 48))(v38, 1, v5) == 1)
    {
      (*(v37 + 8))(v38, v36);
      v31 = v52;
      (*(*(v18 - 8) + 56))(v52, 1, 1, v18);
      v40 = sub_23DA17B80(&qword_27E2FEC00, &qword_27E2FEB70, &qword_23DB7CB88, MEMORY[0x277CE1198]);
      v29 = *(v34 + 24);
      v65 = v40;
      v30 = &v65;
    }

    else
    {
      (*(v39 + 32))(v14, v38, v5);
      v41 = *(v34 + 24);
      v42 = v32;
      sub_23DAAC170();
      sub_23DAAC170();
      v43 = sub_23DA17B80(&qword_27E2FEC00, &qword_27E2FEB70, &qword_23DB7CB88, MEMORY[0x277CE1198]);
      v31 = v52;
      sub_23DAAA784(v33, v51, v5, v43, v41);
      v44 = *(v39 + 8);
      v44(v33, v5);
      v45 = v42;
      v29 = v41;
      v44(v45, v5);
      v44(v14, v5);
      (*(*(v18 - 8) + 56))(v31, 0, 1, v18);
      v64[0] = v43;
      v30 = v64;
    }
  }

  v30[1] = v29;
  swift_getWitnessTable();
  v47 = v60;
  v46 = v61;
  v48 = v59;
  (*(v61 + 16))(v60, v31, v59);
  v49 = *(v46 + 8);
  v49(v31, v48);
  v64[3] = sub_23DA17B80(&qword_27E2FEC00, &qword_27E2FEB70, &qword_23DB7CB88, MEMORY[0x277CE1198]);
  v64[4] = v29;
  v64[2] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_23DAAC170();
  return (v49)(v47, v48);
}

uint64_t sub_23DAC432C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC18, &qword_23DB7CC20);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC20, &qword_23DB7CC28);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v18 = type metadata accessor for AXOnboardingHeader(0, a2, a3, v17);
  if (sub_23DAC4624(v18))
  {
    v19 = sub_23DB6F69C();
  }

  else
  {
    v19 = sub_23DB6F68C();
  }

  *v9 = v19;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC28, &qword_23DB7CC30);
  sub_23DAC47CC(a1, a2, a3, &v9[*(v20 + 44)]);
  sub_23DB705DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC30, &qword_23DB7CC38);
  sub_23DA17B80(&qword_27E2FEC38, &qword_27E2FEC18, &qword_23DB7CC20, MEMORY[0x277CE1198]);
  sub_23DAC5BD4();
  sub_23DB700CC();
  sub_23DA17988(v9, &qword_27E2FEC18, &qword_23DB7CC20);
  v21 = _UISolariumEnabled();
  v22 = *(v11 + 16);
  v22(v13, v16, v10);
  v23 = v28;
  v22(v28, v13, v10);
  v24 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC48, &qword_23DB7CC40) + 48)];
  *v24 = 0;
  v24[8] = v21;
  v24[9] = v21 ^ 1;
  v25 = *(v11 + 8);
  v25(v16, v10);
  return (v25)(v13, v10);
}

BOOL sub_23DAC4624(uint64_t a1)
{
  v3 = sub_23DB6F25C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  if (_UISolariumEnabled())
  {
    return 1;
  }

  sub_23DAC32C0(v9);
  v11 = *(v1 + *(a1 + 48));
  (*(v4 + 104))(v6, *MEMORY[0x277CDFA00], v3);
  sub_23DAB4A80();
  v12 = sub_23DB7084C();
  v13 = *(v4 + 8);
  v13(v6, v3);
  if (v12)
  {
    v13(v9, v3);
    return 0;
  }

  else
  {
    IsPad = AXDeviceIsPad();
    v13(v9, v3);
    return (IsPad & 1) == 0 && (v11 & 4) == 0;
  }
}

uint64_t sub_23DAC47CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v96 = a4;
  v7 = sub_23DB6F67C();
  v101 = *(v7 - 8);
  v102 = v7;
  MEMORY[0x28223BE20](v7);
  v100 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC50, &qword_23DB7CC48);
  MEMORY[0x28223BE20](v9 - 8);
  v99 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v103 = &v88 - v12;
  v97 = type metadata accessor for AXOnboardingHeader(0, a2, a3, v13);
  v98 = a1;
  v14 = (a1 + *(v97 + 36));
  v15 = v14[1];
  *&v116 = *v14;
  *(&v116 + 1) = v15;
  v16 = sub_23DA16E70();

  v95 = v16;
  v17 = sub_23DB6FD8C();
  v19 = v18;
  v21 = v20;
  if (_UISolariumEnabled())
  {
    sub_23DB6FC3C();
  }

  else
  {
    sub_23DB6FBAC();
  }

  v22 = sub_23DB6FD3C();
  v24 = v23;
  v26 = v25;

  sub_23DA16EC4(v17, v19, v21 & 1);

  LODWORD(v116) = sub_23DB6F87C();
  v27 = sub_23DB6FCEC();
  v29 = v28;
  v31 = v30;
  sub_23DA16EC4(v22, v24, v26 & 1);

  v32 = sub_23DB6FD1C();
  v34 = v33;
  LOBYTE(v24) = v35;
  v37 = v36;
  sub_23DA16EC4(v27, v29, v31 & 1);

  v38 = v97;
  v39 = v98;
  LOBYTE(v27) = !sub_23DAC4624(v97);
  KeyPath = swift_getKeyPath();
  v129 = v24 & 1;
  *&v116 = v32;
  *(&v116 + 1) = v34;
  LOBYTE(v117[0]) = v24 & 1;
  *(&v117[0] + 1) = v37;
  *&v117[1] = KeyPath;
  BYTE8(v117[1]) = v27;
  *(&v117[1] + 9) = 256;
  v41 = v100;
  sub_23DB6F66C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC58, &qword_23DB7CC80);
  sub_23DAC5C94();
  sub_23DB6FE8C();
  (*(v101 + 8))(v41, v102);
  v127 = v116;
  v128[0] = v117[0];
  *(v128 + 11) = *(v117 + 11);
  sub_23DA17988(&v127, &qword_27E2FEC58, &qword_23DB7CC80);
  v42 = (v39 + *(v38 + 40));
  v43 = v42[1];
  if (v43)
  {
    v44 = *v42;

    if ((_UISolariumEnabled() & 1) == 0)
    {
      AXDeviceTemplateType();
    }

    sub_23DB7062C();
    sub_23DB6F10C();
    v49 = v130;
    v89 = v132;
    v100 = v135;
    v101 = v134;
    v109 = 1;
    v108 = v131;
    v107 = v133;
    *&v116 = v44;
    *(&v116 + 1) = v43;
    v50 = sub_23DB6FD8C();
    v52 = v51;
    v54 = v53;
    v55 = _UISolariumEnabled();
    v102 = v49;
    if (v55)
    {
      sub_23DB6FC3C();
    }

    else
    {
      sub_23DB6FBCC();
    }

    v56 = sub_23DB6FD3C();
    v58 = v57;
    v60 = v59;

    sub_23DA16EC4(v50, v52, v54 & 1);

    if (_UISolariumEnabled())
    {
      v61 = sub_23DB6F89C();
    }

    else
    {
      v61 = sub_23DB6F87C();
    }

    LODWORD(v116) = v61;
    v62 = sub_23DB6FCEC();
    v64 = v63;
    v66 = v65;
    v68 = v67;
    sub_23DA16EC4(v56, v58, v60 & 1);

    v69 = !sub_23DAC4624(v97);
    v70 = swift_getKeyPath();
    v106 = v66 & 1;
    v94 = v109;
    v93 = v108;
    v92 = v107;
    *&v110 = v62;
    *(&v110 + 1) = v64;
    LOBYTE(v111) = v66 & 1;
    *(&v111 + 1) = *v105;
    DWORD1(v111) = *&v105[3];
    *(&v111 + 1) = v68;
    *&v112 = v70;
    BYTE8(v112) = v69;
    *(&v112 + 9) = 256;
    v91 = WORD4(v112) | 0x10000;
    v90 = v111;
    v97 = v64;
    v98 = v62;
    *&v116 = v62;
    *(&v116 + 1) = v64;
    LOBYTE(v117[0]) = v66 & 1;
    DWORD1(v117[0]) = *&v105[3];
    *(v117 + 1) = *v105;
    v95 = v68;
    *(&v117[0] + 1) = v68;
    *&v117[1] = v70;
    v48 = v70;
    BYTE8(v117[1]) = v69;
    *(&v117[1] + 9) = 256;
    sub_23DA0E2B4(&v110, &v104, &qword_27E2FEC58, &qword_23DB7CC80);
    sub_23DA17988(&v116, &qword_27E2FEC58, &qword_23DB7CC80);
    v46 = v101;
    v43 = v102;
    v45 = v89;
    v47 = v100;
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v45 = 0;
    v92 = 0;
    v46 = 0;
    v47 = 0;
    v97 = 0;
    v98 = 0;
    v90 = 0;
    v95 = 0;
    v48 = 0;
    v91 = 0;
  }

  v100 = v47;
  v101 = v46;
  v102 = v43;
  v71 = v99;
  sub_23DA0E2B4(v103, v99, &qword_27E2FEC50, &qword_23DB7CC48);
  v72 = v71;
  v73 = v96;
  sub_23DA0E2B4(v72, v96, &qword_27E2FEC50, &qword_23DB7CC48);
  v74 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC78, &qword_23DB7CC88) + 48));
  v76 = v94;
  v75 = v95;
  *&v110 = 0;
  *(&v110 + 1) = v94;
  *&v111 = v43;
  v77 = v93;
  *(&v111 + 1) = v93;
  *&v112 = v45;
  v78 = v45;
  v79 = v92;
  *(&v112 + 1) = v92;
  *&v113 = v46;
  v80 = v97;
  *(&v113 + 1) = v47;
  *&v114 = v98;
  v81 = v90;
  *(&v114 + 1) = v97;
  *&v115[0] = v90;
  *(&v115[0] + 1) = v95;
  *&v115[1] = v48;
  v82 = v91;
  LODWORD(v96) = HIWORD(v91);
  BYTE10(v115[1]) = BYTE2(v91);
  WORD4(v115[1]) = v91;
  v83 = v111;
  *v74 = v110;
  v74[1] = v83;
  v84 = v113;
  v74[2] = v112;
  v74[3] = v84;
  v85 = v115[0];
  v74[4] = v114;
  v74[5] = v85;
  *(v74 + 91) = *(v115 + 11);
  v86 = v78;
  sub_23DA0E2B4(&v110, &v116, &qword_27E2FEC80, &qword_23DB7CC90);
  sub_23DA17988(v103, &qword_27E2FEC50, &qword_23DB7CC48);
  *&v116 = 0;
  *(&v116 + 1) = v76;
  *&v117[0] = v102;
  *(&v117[0] + 1) = v77;
  *&v117[1] = v86;
  *(&v117[1] + 1) = v79;
  v118 = v101;
  v119 = v100;
  v120 = v98;
  v121 = v80;
  v122 = v81;
  v123 = v75;
  v124 = v48;
  v126 = v96;
  v125 = v82;
  sub_23DA17988(&v116, &qword_27E2FEC80, &qword_23DB7CC90);
  return sub_23DA17988(v99, &qword_27E2FEC50, &qword_23DB7CC48);
}

uint64_t sub_23DAC4F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB6FB6C();
  sub_23DB6EFAC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_23DA0E2B4(a1, a2, &qword_27E2FEC18, &qword_23DB7CC20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC30, &qword_23DB7CC38);
  v14 = a2 + *(result + 36);
  *v14 = v4;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_23DAC4FE4@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_23DB702CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6B8, &unk_23DB7CCA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;

  sub_23DB702DC();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v14 = sub_23DB702EC();
  (*(v5 + 8))(v7, v4);
  sub_23DB7062C();
  sub_23DB6F10C();

  LOBYTE(v31[0]) = 1;
  *&v30[3] = *&v30[27];
  *&v30[11] = *&v30[35];
  *&v30[19] = *&v30[43];
  v15 = [objc_opt_self() systemBlueColor];
  v16 = sub_23DB700DC();
  v28 = v14;
  LOWORD(v29[0]) = 1;
  *(v29 + 2) = *v30;
  *(&v29[1] + 2) = *&v30[8];
  *(&v29[2] + 2) = *&v30[16];
  *&v29[3] = *&v30[23];
  *(&v29[3] + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE6C0, &unk_23DB7C280);
  sub_23DAB57C0();
  sub_23DB6FE7C();
  v31[2] = v29[1];
  v31[3] = v29[2];
  v31[4] = v29[3];
  v31[0] = v28;
  v31[1] = v29[0];
  sub_23DA17988(v31, &qword_27E2FE6C0, &unk_23DB7C280);
  _UISolariumEnabled();
  sub_23DB7062C();
  sub_23DB6F10C();
  v23 = *&v29[0];
  v24 = v28;
  v17 = *(&v29[1] + 1);
  v22 = *&v29[1];
  v27 = 1;
  v26 = BYTE8(v28);
  v25 = BYTE8(v29[0]);
  sub_23DA0E2B4(v13, v10, &qword_27E2FE6B8, &unk_23DB7CCA0);
  LOBYTE(v5) = v27;
  LOBYTE(v7) = v26;
  LOBYTE(v4) = v25;
  sub_23DA0E2B4(v10, a3, &qword_27E2FE6B8, &unk_23DB7CCA0);
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEC90, &unk_23DB7CCC8) + 48);
  *v18 = 0;
  *(v18 + 8) = v5;
  v19 = v23;
  *(v18 + 16) = v24;
  *(v18 + 24) = v7;
  *(v18 + 32) = v19;
  *(v18 + 40) = v4;
  *(v18 + 48) = v22;
  *(v18 + 56) = v17;
  sub_23DA17988(v13, &qword_27E2FE6B8, &unk_23DB7CCA0);
  return sub_23DA17988(v10, &qword_27E2FE6B8, &unk_23DB7CCA0);
}

void sub_23DAC53B8(uint64_t a1)
{
  sub_23DA156A4(319);
  if (v1 <= 0x3F)
  {
    sub_23DA18420();
    if (v2 <= 0x3F)
    {
      sub_23DB70B7C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_23DAC5470(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_23DB6F25C() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  if (!v9)
  {
    ++v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_34;
  }

  v14 = v13 + ((v12 + (((((((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v12);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v11 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v18 < 2)
    {
LABEL_34:
      v20 = (a1 + v7 + 8) & 0xFFFFFFFFFFFFFFF8;
      if ((v10 & 0x80000000) != 0)
      {
        v22 = (*(*(*(a3 + 16) - 8) + 48))((v12 + ((((((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v12);
        if (v22 >= 2)
        {
          return v22 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v21 = *(v20 + 8);
        if (v21 >= 0xFFFFFFFF)
        {
          LODWORD(v21) = -1;
        }

        return (v21 + 1);
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_34;
  }

LABEL_23:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v11 + (v14 | v19) + 1;
}

void sub_23DAC56A8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(*(sub_23DB6F25C() - 8) + 64);
  v10 = 8;
  if (v9 > 8)
  {
    v10 = v9;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  v14 = v12 - 1;
  if (!v12)
  {
    v14 = 0;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (v12)
  {
    v16 = *(v11 + 64);
  }

  else
  {
    v16 = *(v11 + 64) + 1;
  }

  v17 = ((v13 + (((((((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v13) + v16;
  if (a3 <= v15)
  {
    goto LABEL_22;
  }

  if (v17 <= 3)
  {
    v18 = ((a3 - v15 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v18))
    {
      v8 = 4;
      if (v15 >= a2)
      {
        goto LABEL_32;
      }

      goto LABEL_23;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    if (v18 >= 2)
    {
      v8 = v19;
    }

    else
    {
      v8 = 0;
    }

LABEL_22:
    if (v15 >= a2)
    {
      goto LABEL_32;
    }

    goto LABEL_23;
  }

  v8 = 1;
  if (v15 >= a2)
  {
LABEL_32:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_39;
      }

      *&a1[v17] = 0;
    }

    else if (v8)
    {
      a1[v17] = 0;
      if (!a2)
      {
        return;
      }

LABEL_39:
      v23 = (&a1[v10 + 8] & 0xFFFFFFFFFFFFFFF8);
      if ((v14 & 0x80000000) != 0)
      {
        v24 = ((v13 + ((((((v23 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v13);
        if (v14 >= a2)
        {
          v28 = *(v11 + 56);

          v28((v13 + ((((((v23 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v13, a2 + 1);
        }

        else
        {
          if (v16 <= 3)
          {
            v25 = ~(-1 << (8 * v16));
          }

          else
          {
            v25 = -1;
          }

          if (v16)
          {
            v26 = v25 & (~v14 + a2);
            if (v16 <= 3)
            {
              v27 = v16;
            }

            else
            {
              v27 = 4;
            }

            bzero(v24, v16);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v24 = v26;
                v24[2] = BYTE2(v26);
              }

              else
              {
                *v24 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v24 = v26;
            }

            else
            {
              *v24 = v26;
            }
          }
        }
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v23 = a2 & 0x7FFFFFFF;
        v23[1] = 0;
      }

      else
      {
        v23[1] = a2 - 1;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

LABEL_23:
  v20 = ~v15 + a2;
  if (v17 >= 4)
  {
    bzero(a1, ((v13 + (((((((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 4) & ~v13) + v16);
    *a1 = v20;
    v21 = 1;
    if (v8 > 1)
    {
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v21 = (v20 >> (8 * v17)) + 1;
  if (!v17)
  {
LABEL_60:
    if (v8 > 1)
    {
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v22 = v20 & ~(-1 << (8 * v17));
  bzero(a1, v17);
  if (v17 == 3)
  {
    *a1 = v22;
    a1[2] = BYTE2(v22);
    goto LABEL_60;
  }

  if (v17 == 2)
  {
    *a1 = v22;
    if (v8 > 1)
    {
LABEL_64:
      if (v8 == 2)
      {
        *&a1[v17] = v21;
      }

      else
      {
        *&a1[v17] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v8 > 1)
    {
      goto LABEL_64;
    }
  }

LABEL_61:
  if (v8)
  {
    a1[v17] = v21;
  }
}

uint64_t sub_23DAC5A0C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEB70, &qword_23DB7CB88);
  sub_23DB6F7AC();
  sub_23DB70B7C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2FEB78, &qword_23DB7CB90);
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();

  return swift_getWitnessTable();
}

uint64_t sub_23DAC5AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FEB78, &qword_23DB7CB90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DAC5B6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FEB78, &qword_23DB7CB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23DAC5BD4()
{
  result = qword_27E2FEC40;
  if (!qword_27E2FEC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEC30, &qword_23DB7CC38);
    sub_23DA17B80(&qword_27E2FEC38, &qword_27E2FEC18, &qword_23DB7CC20, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEC40);
  }

  return result;
}

unint64_t sub_23DAC5C94()
{
  result = qword_27E2FEC60;
  if (!qword_27E2FEC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEC58, &qword_23DB7CC80);
    sub_23DAC5D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEC60);
  }

  return result;
}

unint64_t sub_23DAC5D20()
{
  result = qword_27E2FEC68;
  if (!qword_27E2FEC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEC70, &unk_23DB7FC40);
    sub_23DA17B80(&qword_27E2FE920, &qword_27E2FE928, &qword_23DB7C760, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEC68);
  }

  return result;
}

uint64_t AXOnboardingModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v11 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDCF0, &qword_23DB830A0);
  sub_23DB6EECC();
  v6 = (*(v2 + 32))(v0 + v5, v4, v1);
  v7 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier);
  *v7 = 0xD000000000000026;
  v7[1] = 0x800000023DB86520;
  *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_initialOffset) = 0;
  *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer) = 0;
  *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;
  *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_numberOfTimerSkips) = 2;
  v8 = (*(*v0 + 320))(v6);
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v8;

  sub_23DB6EF1C();
  return v0;
}

uint64_t AXOnboardingModel.deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_23DAC6074()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v1);

  return v1;
}

uint64_t sub_23DAC60E8(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23DB6EF1C();
}

void (*sub_23DAC6158(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_23DB6EEFC();
  return sub_23DA10218;
}

uint64_t sub_23DAC61FC()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  sub_23DB6EEDC();
  return swift_endAccess();
}

uint64_t sub_23DAC6270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECA0, &qword_23DB7CD68);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_23DAC63A8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECA0, &qword_23DB7CD68);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  sub_23DB6EEDC();
  swift_endAccess();
  return sub_23DA107BC;
}

uint64_t sub_23DAC6518()
{
  v1 = (v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_23DAC6570(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_23DAC6630()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_initialOffset;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_23DAC6674(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_initialOffset;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_23DAC6724()
{
  v1 = sub_23DB6EA8C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v20[-v7];
  v9 = *(*v0 + 304);
  v10 = v9(0xD00000000000001DLL, 0x800000023DB8B790, v6);
  v12 = v11;
  v13 = (v9)(0xD00000000000001CLL, 0x800000023DB8B7B0);
  v15 = v14;
  sub_23DB6EA7C();
  type metadata accessor for Page.PrimaryTOC(0);
  v16 = (swift_allocObject() + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  *v16 = 0;
  v16[1] = 0;
  (*(v2 + 16))(v4, v8, v1);
  v17 = Page.init(id:title:text:subPages:iconName:)(v4, v10, v12, v13, v15, MEMORY[0x277D84F90], 0, 0);
  (*(v2 + 8))(v8, v1);
  v18 = (v17 + OBJC_IVAR____TtCC28AccessibilitySharedUISupport4Page10PrimaryTOC_tocIconName);
  swift_beginAccess();
  *v18 = xmmword_23DB7CD00;

  swift_getKeyPath();
  swift_getKeyPath();
  v20[7] = 1;

  sub_23DB6EF1C();
  return v17;
}

uint64_t sub_23DAC699C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v8);

  v2 = v8;
  v3 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_16:
    v4 = sub_23DB70C3C();
  }

  else
  {
    v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EEF70C0](v5, v2);
      if (__OFADD__(v5, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_12;
      }
    }

    v6 = sub_23DA1E3D8(a1);

    ++v5;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  v6 = 0;
LABEL_14:

  return v6;
}

unint64_t sub_23DAC6AD0(uint64_t a1)
{
  result = sub_23DAC72C0();
  v2 = result;
  if (result >> 62)
  {
    result = sub_23DB70C3C();
    v3 = result;
    if (result)
    {
LABEL_3:
      if (v3 < 1)
      {
        __break(1u);
      }

      else
      {
        for (i = 0; i != v3; ++i)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            MEMORY[0x23EEF70C0](i, v2);
          }

          else
          {
          }

          type metadata accessor for Page.PracticeGrid(0);
          if (swift_dynamicCastClass())
          {
            swift_getKeyPath();
            swift_getKeyPath();
            sub_23DB6EF0C(&v6);

            v6(v5);
          }
        }
      }

      return result;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_23DAC6C5C(int a1, uint64_t a2)
{
  v40 = a2;
  v31 = a1;
  v2 = sub_23DB6EA8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v39 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v27 - v6;
  v7 = sub_23DAC72C0();
  v30 = v7 >> 62;
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_58:

    return 0;
  }

LABEL_74:
  v26 = v7;
  v8 = sub_23DB70C3C();
  v7 = v26;
  if (!v8)
  {
    goto LABEL_58;
  }

LABEL_3:
  v42 = v7 & 0xC000000000000001;
  v9 = v7;
  v37 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
  v7 = swift_beginAccess();
  v10 = v9;
  v11 = 0;
  v33 = 0;
  v12 = 0;
  v28 = v9 + 32;
  v35 = (v3 + 8);
  v36 = (v3 + 16);
  v32 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 < 0)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
  }

  v29 = v13;
  v41 = v9;
  v34 = v8;
  if (v42)
  {
LABEL_7:
    v7 = MEMORY[0x23EEF70C0](v11, v10);
    v14 = v7;
    v3 = v11 + 1;
    if (!__OFADD__(v11, 1))
    {
      goto LABEL_12;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  while (1)
  {
    if (v11 >= *(v32 + 16))
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v14 = *(v10 + 8 * v11 + 32);

    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_71;
    }

LABEL_12:
    v15 = OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_id;
    swift_beginAccess();
    v16 = *v36;
    v17 = v38;
    (*v36)(v38, v14 + v15, v2);
    v18 = v39;
    v16(v39, v40 + v37, v2);
    LOBYTE(v15) = sub_23DB6EA6C();
    v19 = *v35;
    (*v35)(v18, v2);
    v19(v17, v2);
    if (v15)
    {
      break;
    }

    if (v12)
    {
      v20 = v33;
      if ((v33 & 0x8000000000000000) == 0)
      {
        if (v30)
        {
          result = sub_23DB70C3C();
          if (v20 < result)
          {
LABEL_37:
            if (v42)
            {
              MEMORY[0x23EEF70C0](v20, v41);
            }

            else
            {
              if (v20 >= *(v32 + 16))
              {
                goto LABEL_78;
              }
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_23DB6EF0C(v43);

            if (LOBYTE(v43[0]) == 1)
            {
              if (v42)
              {
LABEL_65:
                v24 = v33;
LABEL_66:
                v23 = MEMORY[0x23EEF70C0](v24, v41);
LABEL_70:

                return v23;
              }

              v25 = *(v28 + 8 * v33);
LABEL_69:
              v23 = v25;

              goto LABEL_70;
            }

            if (v31)
            {
              v10 = v41;
              if (v3 == v34)
              {
                goto LABEL_58;
              }

              v22 = v33 - 1;
            }

            else
            {
              v10 = v41;
              if (v3 == v34)
              {
                goto LABEL_58;
              }

              v22 = v33 + 1;
            }

            v33 = v22;
            v12 = 1;
            goto LABEL_46;
          }
        }

        else
        {
          result = *(v32 + 16);
          if (v33 < result)
          {
            goto LABEL_37;
          }
        }
      }

      goto LABEL_34;
    }

    if (v3 == v34)
    {
      goto LABEL_58;
    }

    v12 = 0;
LABEL_45:
    v10 = v41;
LABEL_46:
    ++v11;
    if (v42)
    {
      goto LABEL_7;
    }
  }

  if (v31)
  {
    if (!v11)
    {

      goto LABEL_58;
    }

    v7 = v11 - 1;
    v33 = v11 - 1;
    if (v42)
    {
      MEMORY[0x23EEF70C0]();
    }

    else
    {
      if (v11 > *(v32 + 16))
      {
        goto LABEL_73;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(v43);

    if (LOBYTE(v43[0]) == 1)
    {
      if (v42)
      {
        goto LABEL_65;
      }

      v23 = *(v41 + 8 * v11 + 24);

      goto LABEL_70;
    }

LABEL_34:

    if (v3 == v34)
    {
      goto LABEL_58;
    }

    v12 = 1;
    goto LABEL_45;
  }

  if (v30)
  {
    result = sub_23DB70C3C();
    if (v3 >= result)
    {
LABEL_24:

      v10 = v41;
      if (v3 == v34)
      {
        goto LABEL_58;
      }

      goto LABEL_46;
    }
  }

  else
  {
    result = *(v32 + 16);
    if (v3 >= result)
    {
      goto LABEL_24;
    }
  }

  if (v42)
  {
    MEMORY[0x23EEF70C0](v3, v41);
LABEL_42:
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(v43);

    if (LOBYTE(v43[0]) == 1)
    {
      if (v42)
      {
        v24 = v3;
        goto LABEL_66;
      }

      v25 = *(v28 + 8 * v3);
      goto LABEL_69;
    }

    if (v3 == v34)
    {
      goto LABEL_58;
    }

    v12 = 1;
    v33 = v3;
    goto LABEL_45;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    if (v3 >= *(v32 + 16))
    {
      goto LABEL_77;
    }

    goto LABEL_42;
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

unint64_t sub_23DAC72C0()
{
  v0 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(&v12);

  v2 = v12;
  while (1)
  {
    if (v2 >> 62)
    {
      if (!sub_23DB70C3C() || (result = sub_23DB70C3C()) == 0)
      {
LABEL_36:

        return v0;
      }
    }

    else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_36;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {

      MEMORY[0x23EEF70C0](0, v2);
    }

    else
    {
      if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }
    }

    MEMORY[0x23EEF6D70](v3);
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23DB709FC();
    }

    sub_23DB70A0C();
    v0 = v13;
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v2 >> 62 || (result & 1) == 0)
    {
      result = sub_23DAC8AC0(v2);
      v2 = result;
    }

    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      break;
    }

    v5 = v4 - 1;
    memmove(((v2 & 0xFFFFFFFFFFFFFF8) + 32), ((v2 & 0xFFFFFFFFFFFFFF8) + 40), 8 * (v4 - 1));
    *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v11);

    v6 = v11;
    if (v11)
    {
      v7 = v2 >> 62;
      if (v2 >> 62)
      {
        result = sub_23DB70C3C();
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }
      }

      if (v6 >> 62)
      {
        v8 = sub_23DB70C3C();
        if (!v7)
        {
LABEL_18:
          result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_27;
        }
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          goto LABEL_18;
        }
      }

      result = sub_23DB70C3C();
LABEL_27:
      v9 = result + v8;
      if (__OFADD__(result, v8))
      {
        goto LABEL_39;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v12 = v2;
      if (v7)
      {
        isUniquelyReferenced_nonNull_bridgeObject = 0;
      }

      if (isUniquelyReferenced_nonNull_bridgeObject != 1 || v9 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        if (v7)
        {
          sub_23DB70C3C();
        }

        v2 = sub_23DB70D2C();
        v12 = v2;
      }

      sub_23DAC8F24(0, 0, v8, v6);
    }

    else
    {
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_23DAC75F4()
{
  v2 = *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued);
  if (*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer) && v2 >= *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_numberOfTimerSkips))
  {
    v5 = sub_23DAC72C0();
    v0 = v5;
    if (v5 >> 62)
    {
      goto LABEL_23;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
LABEL_24:

      return;
    }

LABEL_7:
    v7 = 0;
    while (1)
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEF70C0](v7, v0);
        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v7 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v6 = sub_23DB70C3C();
          if (!v6)
          {
            goto LABEL_24;
          }

          goto LABEL_7;
        }
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_23DB6EF0C(&v11);

      if (v11 == 1)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_23DB6EF0C(&v11);

        v9 = v12;
        if (v12)
        {
          v10 = v11;

          (*(*v1 + 488))(v10, v9);

LABEL_18:

          return;
        }
      }

      ++v7;
      if (v8 == v6)
      {
        goto LABEL_18;
      }
    }
  }

  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    goto LABEL_22;
  }

  *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = v4;
}

void sub_23DAC7854(uint64_t a1)
{
  if (qword_27E2FBBD0 != -1)
  {
    swift_once();
  }

  v3 = *(qword_27E30A6A8 + 32);
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_numberOfTimerSkips) = a1;
  v5 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer;
  if (!*(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer))
  {
    v6 = 20.0;
    if (v4 >= 25.0)
    {
      v6 = 15.0;
    }

    if (v4 < 50.0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 10.0;
    }

    *(v1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;
    v8 = [objc_opt_self() scheduledTimerWithTimeInterval:v1 target:sel_timerFireAction selector:0 userInfo:1 repeats:v7];
    v9 = *(v1 + v5);
    *(v1 + v5) = v8;
  }
}

void sub_23DAC7974()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer;
  [*(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_timer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  *(v0 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_announcementQueued) = 0;
}

uint64_t sub_23DAC79C0()
{
  v0 = sub_23DB6EBFC();
  __swift_allocate_value_buffer(v0, qword_27E30A6C0);
  __swift_project_value_buffer(v0, qword_27E30A6C0);
  return sub_23DB6EBEC();
}

uint64_t sub_23DAC7A48(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  sub_23DB6EEDC();
  return swift_endAccess();
}

uint64_t sub_23DAC7AC0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECA0, &qword_23DB7CD68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  sub_23DB6EEEC();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_23DAC7C44()
{
  type metadata accessor for AXOnboardingModel(0);
  v0 = swift_allocObject();
  result = AXOnboardingModel.init()();
  qword_27E30A6D8 = v0;
  return result;
}

uint64_t AXOnboardingModel.__allocating_init()()
{
  v0 = swift_allocObject();
  AXOnboardingModel.init()();
  return v0;
}

uint64_t sub_23DAC7CBC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_23DAC7D28(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  v4 = sub_23DB7087C();

  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_23DB7087C();
  v7 = sub_23DB7087C();
  v8 = sub_23DB7087C();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  v10 = sub_23DB708BC();
  v12 = v11;

  v13 = v10 == a1 && v12 == a2;
  if (v13 || (sub_23DB70DBC()) && ((v14 = objc_opt_self(), v15 = [v14 currentDevice], v16 = objc_msgSend(v15, sel_userInterfaceIdiom), v15, !v16) || (v17 = objc_msgSend(v14, sel_currentDevice), v18 = objc_msgSend(v17, sel_userInterfaceIdiom), v17, v18 == 1)))
  {

    MEMORY[0x23EEF6D00](0x656E6F68702ELL, 0xE600000000000000);
    v19 = sub_23DB7087C();

    v20 = sub_23DB7087C();
    v21 = sub_23DB7087C();
    v22 = [v5 localizedStringForKey:v19 value:v20 table:v21];

    v10 = sub_23DB708BC();
  }

  else
  {
  }

  return v10;
}

uint64_t sub_23DAC7FE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23DB74310;
  *(v0 + 32) = sub_23DAC6724();
  return v0;
}

uint64_t sub_23DAC8040(uint64_t a1, char a2, uint64_t a3)
{
  v7 = [objc_opt_self() mainScreen];
  [v7 bounds];
  v9 = v8;

  if (v9 >= 850.0 && (v10 = [objc_opt_self() currentDevice], v11 = objc_msgSend(v10, sel_userInterfaceIdiom), v10, v11) || *(*a1 + 16) < 4uLL)
  {
    v12 = *(*v3 + 424);
    v14 = a2 & 1;
    v13 = a1;
  }

  else
  {
    v12 = *(*v3 + 416);
    v13 = a1;
    v14 = a3;
  }

  return v12(v13, v14);
}

uint64_t AXOnboardingModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel__pages;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE168, &unk_23DB7CD10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23DAC82B8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AXOnboardingModel(0);
  result = sub_23DB6EE6C();
  *a2 = result;
  return result;
}

char *sub_23DAC82F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDAD0, &qword_23DB793E0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_23DAC842C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECC8, &qword_23DB7CE60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23DAC854C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECE0, &qword_23DB7CFF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_23DAC8658(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECD8, &qword_23DB7CF50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23DAC87A0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

void *sub_23DAC897C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE310, &unk_23DB7C540);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

unint64_t sub_23DAC8A04(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_23DB70C3C();
    }

    result = sub_23DB70D2C();
    *v2 = result;
  }

  return result;
}

uint64_t sub_23DAC8AC0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23DB70C3C();
  }

  return sub_23DB70D2C();
}

unint64_t sub_23DAC8B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for CommandToPractice(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (a3 >= 1 && v17 >= 1)
  {
    result = sub_23DAC962C(a4, v15);
    if (v12 < v17)
    {
      goto LABEL_25;
    }
  }

  return sub_23DAC95C4(a4);
}

uint64_t sub_23DAC8CF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for Page(0);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_23DAC8D60(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_23DAC897C(v2, 0);

    MEMORY[0x23EEF70B0](v3 + 4, v2, v1);
    v1 = v4;

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_23DB70C3C();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

void *sub_23DAC8E04(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x277D84F90]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_23DAC8D60(a1);

      objc_setAssociatedObject(v2, MEMORY[0x277D84F90], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_23DAC8EC0(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_23DAC8E04(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

void sub_23DAC8F24(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a4;
  v8 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for Page(0);
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v8, v11);
  v11 = v8 - v11;
  if (v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v5[2];
    v16 = v15 - v7;
    if (!__OFSUB__(v15, v7))
    {
      goto LABEL_6;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_25:
  v20 = sub_23DB70C3C();
  v16 = v20 - v7;
  if (__OFSUB__(v20, v7))
  {
    goto LABEL_27;
  }

LABEL_6:
  v17 = (v6 + 8 * v8);
  v18 = &v9[v7];
  if (v17 != v18 || v17 >= &v18[8 * v16])
  {
    memmove(v17, v18, 8 * v16);
  }

  if (v10)
  {
    v13 = sub_23DB70C3C();
  }

  else
  {
    v13 = v5[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_28;
  }

  v5[2] = v13 + v11;
LABEL_17:
  if (v8 < 1)
  {
    return;
  }

  MEMORY[0x28223BE20](v13);
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
LABEL_29:
    sub_23DAC8EC0(v4, sub_23DAC977C);
    return;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) == v8)
  {
    swift_arrayInitWithCopy();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DAC90C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_bundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_23DAC9120@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_initialOffset;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_23DAC9178(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC28AccessibilitySharedUISupport17AXOnboardingModel_initialOffset;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t type metadata accessor for AXOnboardingModel(uint64_t a1)
{
  result = qword_27E2FECA8;
  if (!qword_27E2FECA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23DAC9220(uint64_t a1)
{
  sub_23DAC9560(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23DAC9560(uint64_t a1)
{
  if (!qword_27E2FECB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FDCF0, &qword_23DB830A0);
    v1 = sub_23DB6EF2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2FECB8);
    }
  }
}

uint64_t sub_23DAC95C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECC0, &qword_23DB7CE58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23DAC962C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandToPractice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_23DAC96A8(unsigned __int8 a1)
{
  LODWORD(v2) = a1;
  if (a1 <= 1u)
  {
LABEL_6:
    if (!v2)
    {
      return;
    }

    goto LABEL_12;
  }

  if (a1 == 2)
  {
    v2 = *MEMORY[0x277CE6CC0];
    if (*MEMORY[0x277CE6CC0])
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (a1 != 3)
  {
LABEL_10:
    v2 = *MEMORY[0x277CE6CD8];
    if (!*MEMORY[0x277CE6CD8])
    {
      __break(1u);
LABEL_12:
      v2 = *MEMORY[0x277CE6CE8];
      if (!*MEMORY[0x277CE6CE8])
      {
        __break(1u);
        return;
      }

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v2 = *MEMORY[0x277CE6CE0];
  if (!*MEMORY[0x277CE6CE0])
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_13:
  v3 = *MEMORY[0x277D76438];
  v4 = v2;
  UIAccessibilityPostNotification(v3, v4);
}

uint64_t AXOnboardingToggle.init(_:contentLabel:isOn:disabled:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 16) = a8;
  return result;
}

uint64_t AXOnboardingToggle.body.getter()
{
  if (*(v0 + 32))
  {
    sub_23DA16E70();

    sub_23DB6FD8C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECE8, &unk_23DB7D000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECF0, &qword_23DB84880);
  sub_23DAC99E8();
  sub_23DAC9ACC();
  return sub_23DB7054C();
}

uint64_t sub_23DAC98D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2FED38, &qword_23DB7D0D0);
  sub_23DB7049C();
  sub_23DA16E70();
  sub_23DB7042C();
  v4 = *(a1 + 16);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECE8, &unk_23DB7D000);
  v8 = (a2 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = sub_23DAC9DF8;
  v8[2] = v6;
  return result;
}

unint64_t sub_23DAC99E8()
{
  result = qword_27E2FECF8;
  if (!qword_27E2FECF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FECE8, &unk_23DB7D000);
    sub_23DA17B80(&qword_27E2FED00, &qword_27E2FED08, &qword_23DB7D010, MEMORY[0x277CDF068]);
    sub_23DA17B80(&qword_27E2FED10, &qword_27E2FED18, &qword_23DB7D018, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FECF8);
  }

  return result;
}

unint64_t sub_23DAC9ACC()
{
  result = qword_27E2FED20;
  if (!qword_27E2FED20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FECF0, &qword_23DB84880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FED20);
  }

  return result;
}

uint64_t sub_23DAC9B64()
{
  if (*(v0 + 32))
  {
    sub_23DA16E70();

    sub_23DB6FD8C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECE8, &unk_23DB7D000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FECF0, &qword_23DB84880);
  sub_23DAC99E8();
  sub_23DAC9ACC();
  return sub_23DB7054C();
}

unint64_t sub_23DAC9C8C()
{
  result = qword_27E2FED28;
  if (!qword_27E2FED28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FED30, &qword_23DB7D0C8);
    sub_23DAC99E8();
    sub_23DAC9ACC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FED28);
  }

  return result;
}

uint64_t sub_23DAC9D24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23DB6F4EC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_23DAC9D54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23DB6F4EC();
  *a1 = result & 1;
  return result;
}

void *sub_23DAC9E14@<X0>(_BYTE *a1@<X8>)
{
  sub_23DA0E324();
  result = sub_23DB6F56C();
  *a1 = v3;
  return result;
}

uint64_t sub_23DAC9EB0@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, double a8@<D0>)
{
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  type metadata accessor for InstructionCardAndPracticeView(0, v19);
  v16 = sub_23DB6F91C();
  *(a7 + 16) = a8;
  v17 = a1(v16);
  return a2(v17);
}

uint64_t AdaptiveStack.init(horizontalAlignment:verticalAlignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_getKeyPath();
  *a7 = result;
  *(a7 + 8) = 0;
  *(a7 + 16) = a1;
  *(a7 + 24) = a2;
  *(a7 + 32) = a3;
  *(a7 + 40) = a4 & 1;
  *(a7 + 48) = a5;
  *(a7 + 56) = a6;
  return result;
}

void *sub_23DACA000@<X0>(_BYTE *a1@<X8>)
{
  sub_23DA0E324();
  result = sub_23DB6F56C();
  *a1 = v3;
  return result;
}

double SuccessTextView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_23DB6F55C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  *&v25 = *v1;
  *(&v25 + 1) = v7;
  sub_23DA16E70();

  v23 = sub_23DB6FD8C();
  v11 = v10;
  v13 = v12;
  v22 = v14;
  KeyPath = swift_getKeyPath();
  if (v9 != 1)
  {

    sub_23DB70ACC();
    v16 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v8, 0);
    (*(v4 + 8))(v6, v3);
  }

  sub_23DB7062C();
  sub_23DB6F34C();
  *&v24[23] = v26;
  *&v24[7] = v25;
  *&v24[55] = v28;
  *&v24[71] = v29;
  *&v24[87] = v30;
  *&v24[103] = v31;
  *&v24[39] = v27;
  v17 = *&v24[80];
  *(a1 + 105) = *&v24[64];
  *(a1 + 121) = v17;
  *(a1 + 137) = *&v24[96];
  v18 = *&v24[16];
  *(a1 + 41) = *v24;
  *(a1 + 57) = v18;
  result = *&v24[32];
  v20 = *&v24[48];
  *(a1 + 73) = *&v24[32];
  *a1 = v23;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 152) = *&v24[111];
  *(a1 + 89) = v20;
  return result;
}

void sub_23DACA370(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DB6EF0C(v9);

  v2 = v9[0];
  v3 = v9[1];
  v4 = sub_23DB6FB5C();
  sub_23DB6EFAC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = 0;
}

__n128 sub_23DACA414@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  sub_23DA16E70();

  v4 = sub_23DB6FD8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  sub_23DB7062C();
  sub_23DB6F34C();
  *&v13[23] = v15;
  *&v13[7] = v14;
  *&v13[55] = v17;
  *&v13[71] = v18;
  *&v13[87] = v19;
  *&v13[103] = v20;
  *&v13[39] = v16;
  *(a3 + 105) = *&v13[64];
  *(a3 + 121) = *&v13[80];
  *(a3 + 137) = *&v13[96];
  *(a3 + 41) = *v13;
  *(a3 + 57) = *&v13[16];
  result = *&v13[32];
  *(a3 + 73) = *&v13[32];
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 152) = *(&v20 + 1);
  *(a3 + 89) = *&v13[48];
  return result;
}

uint64_t sub_23DACA568@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DB6F9FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  type metadata accessor for Page(0);
  sub_23DADA750(&qword_27E2FCBD8, type metadata accessor for Page, &protocol conformance descriptor for Page);

  v17[0] = sub_23DB6F1EC();
  v17[1] = v8;
  v17[2] = v7;
  v18 = 0;
  sub_23DB6F9DC();
  sub_23DADA860();
  sub_23DB6FF8C();
  (*(v3 + 8))(v5, v2);

  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEE08, &qword_23DB7D4A8) + 36);
  *v9 = KeyPath;
  *(v9 + 8) = 0;
  if (qword_27E2FBB78 != -1)
  {
    swift_once();
  }

  v10 = qword_27E30A650;
  v11 = sub_23DB6FB3C();
  v12 = sub_23DB7062C();
  v14 = v13;
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEE10, &unk_23DB7D4B0) + 36);
  *v15 = v10;
  *(v15 + 8) = v11;
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
}

uint64_t sub_23DACA7A8@<X0>(uint64_t a2@<X8>)
{
  v27[1] = a2;
  v28 = type metadata accessor for PracticeFooterViewDefault(0);
  MEMORY[0x28223BE20](v28);
  v3 = (v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEDE8, &qword_23DB7D468);
  MEMORY[0x28223BE20](v27[0]);
  v5 = v27 - v4;
  v6 = type metadata accessor for PracticeFooterViewiOS(0);
  MEMORY[0x28223BE20](v6);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = objc_opt_self();
  v10 = [v9 currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 && (v12 = [v9 currentDevice], v13 = objc_msgSend(v12, sel_userInterfaceIdiom), v12, v13 != 1))
  {
    KeyPath = swift_getKeyPath();
    v19 = v28;
    *(v3 + *(v28 + 24)) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for Page(0);
    sub_23DADA750(&qword_27E2FCBD8, type metadata accessor for Page, &protocol conformance descriptor for Page);

    *v3 = sub_23DB6F1EC();
    v3[1] = v20;
    type metadata accessor for NavigationModel(0);
    sub_23DADA750(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    v3[2] = sub_23DB6F39C();
    v3[3] = v21;
    v22 = v3 + *(v19 + 28);
    v29 = 0;
    sub_23DB7037C();
    v23 = v31;
    *v22 = v30;
    *(v22 + 1) = v23;
    v24 = v3 + *(v19 + 32);
    v29 = 0;
    sub_23DB7037C();
    v25 = v31;
    *v24 = v30;
    *(v24 + 1) = v25;
    v16 = type metadata accessor for PracticeFooterViewDefault;
    sub_23DADA798(v3, v5, type metadata accessor for PracticeFooterViewDefault);
    swift_storeEnumTagMultiPayload();
    sub_23DADA750(&qword_27E2FEDF0, type metadata accessor for PracticeFooterViewiOS, &unk_23DB7D718);
    sub_23DADA750(&qword_27E2FEDF8, type metadata accessor for PracticeFooterViewDefault, &unk_23DB7D6C8);
    sub_23DB6F79C();
    v17 = v3;
  }

  else
  {
    *(v8 + *(v6 + 24)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
    swift_storeEnumTagMultiPayload();

    sub_23DB6F91C();
    type metadata accessor for Page(0);
    sub_23DADA750(&qword_27E2FCBD8, type metadata accessor for Page, &protocol conformance descriptor for Page);
    *v8 = sub_23DB6F1EC();
    v8[1] = v14;
    type metadata accessor for NavigationModel(0);
    sub_23DADA750(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    v8[2] = sub_23DB6F39C();
    v8[3] = v15;
    v16 = type metadata accessor for PracticeFooterViewiOS;
    sub_23DADA798(v8, v5, type metadata accessor for PracticeFooterViewiOS);
    swift_storeEnumTagMultiPayload();
    sub_23DADA750(&qword_27E2FEDF0, type metadata accessor for PracticeFooterViewiOS, &unk_23DB7D718);
    sub_23DADA750(&qword_27E2FEDF8, type metadata accessor for PracticeFooterViewDefault, &unk_23DB7D6C8);
    sub_23DB6F79C();
    v17 = v8;
  }

  return sub_23DADA800(v17, v16);
}

uint64_t sub_23DACAD18@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  v5 = sub_23DB6FA4C();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for PracticeFooterViewiOS(0);
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v41);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF50, &qword_23DB7D7F8);
  MEMORY[0x28223BE20](v35);
  v11 = &v34 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF58, &qword_23DB7D800);
  MEMORY[0x28223BE20](v36);
  v13 = &v34 - v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF60, &qword_23DB7D808);
  MEMORY[0x28223BE20](v37);
  v15 = &v34 - v14;
  v44 = v3;
  sub_23DADA798(v3, &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeFooterViewiOS);
  v16 = *(v8 + 80);
  v38 = ~v16;
  v42 = v9;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DADBF88(v43, v17 + ((v16 + 17) & ~v16), type metadata accessor for PracticeFooterViewiOS);
  v46 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF68, &unk_23DB7D810);
  sub_23DADBB3C();
  sub_23DB703CC();
  v18 = sub_23DB7012C();
  KeyPath = swift_getKeyPath();
  v20 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF80, &qword_23DB7D850) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  if (qword_27E2FBB80 != -1)
  {
    swift_once();
  }

  v21 = qword_27E30A658;
  v22 = swift_getKeyPath();
  v23 = &v11[*(v35 + 36)];
  *v23 = v22;
  v23[1] = v21;

  sub_23DB6FA3C();
  sub_23DADBC48(&qword_27E2FEF88, &qword_27E2FEF50, &qword_23DB7D7F8, sub_23DADBCF8);
  sub_23DADA750(&qword_27E2FCFB8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v24 = v40;
  sub_23DB6FE2C();
  (*(v39 + 8))(v7, v24);
  sub_23DA17988(v11, &qword_27E2FEF50, &qword_23DB7D7F8);
  v25 = sub_23DB6FB4C();
  v26 = &v13[*(v36 + 36)];
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  sub_23DADBDDC();
  sub_23DB6FFDC();
  sub_23DA17988(v13, &qword_27E2FEF58, &qword_23DB7D800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  v27 = v44;
  sub_23DB6F90C();
  sub_23DADCD90(&qword_27E2FEFB0, &qword_27E2FEF60, &qword_23DB7D808, sub_23DADBDDC);
  v28 = v45;
  sub_23DB6FF9C();

  sub_23DA17988(v15, &qword_27E2FEF60, &qword_23DB7D808);
  v29 = v43;
  sub_23DADA798(v27, v43, type metadata accessor for PracticeFooterViewiOS);
  v30 = (v16 + 16) & v38;
  v31 = swift_allocObject();
  sub_23DADBF88(v29, v31 + v30, type metadata accessor for PracticeFooterViewiOS);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF28, &unk_23DB7D790);
  v33 = (v28 + *(result + 36));
  *v33 = sub_23DADBF28;
  v33[1] = v31;
  v33[2] = 0;
  v33[3] = 0;
  return result;
}

uint64_t sub_23DACB344(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((a1 & 1) == 0)
  {
    if (v2)
    {

      NavigationModel.goHome()();
      goto LABEL_6;
    }

LABEL_9:
    type metadata accessor for NavigationModel(0);
    sub_23DADA750(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
    return result;
  }

  if (!v2)
  {
    goto LABEL_9;
  }

  v4 = 0;

  sub_23DABB0B8(&v4);
LABEL_6:
}

__n128 sub_23DACB40C@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  *&v26 = (*(*qword_27E30A6D8 + 304))();
  *(&v26 + 1) = v2;
  sub_23DA16E70();
  v3 = sub_23DB6FD8C();
  v5 = v4;
  v7 = v6;
  v8 = sub_23DB6FD1C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_23DA16EC4(v3, v5, v7 & 1);

  LOBYTE(v3) = sub_23DB6FB9C();
  sub_23DB6EFAC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [objc_opt_self() currentDevice];
  [v23 userInterfaceIdiom];

  sub_23DB7062C();
  sub_23DB6F34C();
  *&v25[55] = v29;
  *&v25[71] = v30;
  *&v25[87] = v31;
  *&v25[103] = v32;
  *&v25[7] = v26;
  *&v25[23] = v27;
  *&v25[39] = v28;
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 32) = v3;
  *(a1 + 40) = v16;
  *(a1 + 48) = v18;
  *(a1 + 56) = v20;
  *(a1 + 64) = v22;
  *(a1 + 72) = 0;
  *(a1 + 137) = *&v25[64];
  *(a1 + 153) = *&v25[80];
  *(a1 + 169) = *&v25[96];
  *(a1 + 184) = *(&v32 + 1);
  *(a1 + 73) = *v25;
  *(a1 + 89) = *&v25[16];
  result = *&v25[32];
  *(a1 + 105) = *&v25[32];
  *(a1 + 121) = *&v25[48];
  return result;
}

uint64_t sub_23DACB6FC(uint64_t a1)
{
  type metadata accessor for Page.CollectionFinished(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    type metadata accessor for PracticeFooterViewiOS(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    return sub_23DB6F8FC();
  }

  return result;
}

__n128 sub_23DACB778@<Q0>(uint64_t a1@<X8>)
{
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  *&v17 = (*(*qword_27E30A6D8 + 304))(0xD000000000000020, 0x800000023DB8B7D0);
  *(&v17 + 1) = v2;
  sub_23DA16E70();
  v3 = sub_23DB6FD8C();
  v5 = v4;
  v7 = v6;
  v8 = sub_23DB6FD1C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_23DA16EC4(v3, v5, v7 & 1);

  v15 = [objc_opt_self() currentDevice];
  [v15 userInterfaceIdiom];

  sub_23DB7062C();
  sub_23DB6F34C();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  *(a1 + 96) = v21;
  *(a1 + 112) = v22;
  *(a1 + 128) = v23;
  *(a1 + 32) = v17;
  *(a1 + 48) = v18;
  result = v20;
  *(a1 + 64) = v19;
  *(a1 + 80) = v20;
  return result;
}

uint64_t sub_23DACB9B8@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v3 = type metadata accessor for PracticeFooterViewiOS(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = sub_23DB6F8DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEEF0, &qword_23DB7D768);
  MEMORY[0x28223BE20](v10);
  v12 = v23 - v11;
  *v12 = sub_23DB6F68C();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEEF8, &qword_23DB7D770);
  sub_23DACBCA8(v2, &v12[*(v13 + 44)]);
  v14 = sub_23DB6FB2C();
  if (qword_27E2FBC10 != -1)
  {
    swift_once();
  }

  sub_23DB6EFAC();
  v15 = &v12[*(v10 + 36)];
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  sub_23DB6F8BC();
  sub_23DADA798(v2, v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeFooterViewiOS);
  v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v21 = swift_allocObject();
  sub_23DADBF88(v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PracticeFooterViewiOS);
  sub_23DADB57C();
  sub_23DB6FF6C();

  (*(v7 + 8))(v9, v6);
  return sub_23DA17988(v12, &qword_27E2FEEF0, &qword_23DB7D768);
}

uint64_t sub_23DACBCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PracticeFooterViewiOS(0);
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF18, &qword_23DB7D780);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF20, &qword_23DB7D788);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF28, &unk_23DB7D790);
  MEMORY[0x28223BE20](v16 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  if (*(a1 + 16))
  {
    v38 = v7;
    v39 = v18;
    v40 = v15;
    v41 = v12;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v36 = a2;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(&v42);

      v21 = v42 != 0;
      if (v42)
      {
        v22 = sub_23DAC6C5C(0, v42);

        if (!v22)
        {
          v21 = 0;
          a2 = v36;
          goto LABEL_10;
        }
      }

      else
      {
      }

      a2 = v36;
    }

    else
    {
      v21 = 0;
    }

LABEL_10:
    sub_23DACAD18(v21, v20);
    sub_23DADA798(a1, &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeFooterViewiOS);
    v23 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v24 = swift_allocObject();
    sub_23DADBF88(&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for PracticeFooterViewiOS);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDE00, &unk_23DB7C750);
    sub_23DADCB08(&qword_27E2FE918, &qword_27E2FDE00, &unk_23DB7C750);
    sub_23DB703CC();
    v25 = sub_23DB6FB9C();
    sub_23DB6EFAC();
    v26 = &v9[*(v38 + 36)];
    *v26 = v25;
    *(v26 + 1) = v27;
    *(v26 + 2) = v28;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    v26[40] = 0;
    sub_23DADB830();
    v31 = v40;
    sub_23DB6FFDC();
    sub_23DA17988(v9, &qword_27E2FEF18, &qword_23DB7D780);
    v32 = v39;
    sub_23DA0E2B4(v20, v39, &qword_27E2FEF28, &unk_23DB7D790);
    v33 = v41;
    sub_23DA0E2B4(v31, v41, &qword_27E2FEF20, &qword_23DB7D788);
    sub_23DA0E2B4(v32, a2, &qword_27E2FEF28, &unk_23DB7D790);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEF48, &qword_23DB7D7A8);
    sub_23DA0E2B4(v33, a2 + *(v34 + 48), &qword_27E2FEF20, &qword_23DB7D788);
    sub_23DA17988(v31, &qword_27E2FEF20, &qword_23DB7D788);
    sub_23DA17988(v20, &qword_27E2FEF28, &unk_23DB7D790);
    sub_23DA17988(v33, &qword_27E2FEF20, &qword_23DB7D788);
    return sub_23DA17988(v32, &qword_27E2FEF28, &unk_23DB7D790);
  }

  type metadata accessor for NavigationModel(0);
  sub_23DADA750(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DACC22C@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v2 = type metadata accessor for PracticeFooterViewDefault(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_23DB6F8DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEFB8, &qword_23DB7D898);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  *v11 = sub_23DB6F5BC();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEFC0, &qword_23DB7D8A0);
  sub_23DACC514(v1, &v11[*(v12 + 44)]);
  if (qword_27E2FBB78 != -1)
  {
    swift_once();
  }

  v13 = qword_27E30A650;
  v14 = sub_23DB6FB3C();
  v15 = &v11[*(v9 + 36)];
  *v15 = v13;
  v15[8] = v14;

  sub_23DB6F8BC();
  sub_23DADA798(v1, v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeFooterViewDefault);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  sub_23DADBF88(v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PracticeFooterViewDefault);
  sub_23DADC078();
  sub_23DB6FF6C();

  (*(v6 + 8))(v8, v5);
  return sub_23DA17988(v11, &qword_27E2FEFB8, &qword_23DB7D898);
}

uint64_t sub_23DACC514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v249 = a2;
  v252 = sub_23DB6F81C();
  v261 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v4 = &v211 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PracticeFooterViewDefault(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEFE0, &qword_23DB7D8B8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v211 - v10;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEFE8, &qword_23DB7D8C0);
  MEMORY[0x28223BE20](v251);
  v238 = &v211 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v211 = &v211 - v14;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEFF0, &qword_23DB7D8C8);
  MEMORY[0x28223BE20](v253);
  v239 = &v211 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v212 = &v211 - v17;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FEFF8, &qword_23DB7D8D0);
  MEMORY[0x28223BE20](v254);
  v240 = &v211 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v216 = &v211 - v20;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF000, &qword_23DB7D8D8);
  MEMORY[0x28223BE20](v255);
  v242 = &v211 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v233 = &v211 - v23;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF008, &qword_23DB7D8E0);
  MEMORY[0x28223BE20](v256);
  v241 = &v211 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v213 = &v211 - v26;
  v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF010, &qword_23DB7D8E8);
  MEMORY[0x28223BE20](v259);
  v243 = &v211 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v245 = &v211 - v29;
  MEMORY[0x28223BE20](v30);
  v246 = &v211 - v31;
  MEMORY[0x28223BE20](v32);
  v250 = &v211 - v33;
  MEMORY[0x28223BE20](v34);
  v215 = &v211 - v35;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF018, &qword_23DB7D8F0);
  MEMORY[0x28223BE20](v258);
  v248 = &v211 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v260 = &v211 - v38;
  MEMORY[0x28223BE20](v39);
  v244 = &v211 - v40;
  MEMORY[0x28223BE20](v41);
  v247 = &v211 - v42;
  MEMORY[0x28223BE20](v43);
  v214 = &v211 - v44;
  MEMORY[0x28223BE20](v45);
  v263 = &v211 - v46;
  sub_23DADA798(a1, &v211 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PracticeFooterViewDefault);
  v47 = *(v6 + 80);
  v48 = (v47 + 16) & ~v47;
  v264 = v7;
  v262 = v47;
  v49 = swift_allocObject();
  v257 = v48;
  v265 = &v211 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DADBF88(v265, v49 + v48, type metadata accessor for PracticeFooterViewDefault);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF020, &qword_23DB7D8F8);
  v231 = sub_23DADC334();
  v232 = v50;
  sub_23DB703CC();
  sub_23DB6F80C();
  v51 = sub_23DA17B80(&qword_27E2FF058, &qword_27E2FEFE0, &qword_23DB7D8B8, MEMORY[0x277CDF028]);
  v52 = sub_23DADA750(&qword_27E2FF060, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v53 = v211;
  v54 = v252;
  v229 = v52;
  v230 = v51;
  sub_23DB6FE2C();
  v55 = *(v261 + 8);
  v237 = v4;
  v261 += 8;
  v228 = v55;
  v55(v4, v54);
  v56 = *(v9 + 8);
  v234 = v11;
  v235 = v9 + 8;
  v236 = v8;
  v57 = v8;
  v58 = v53;
  v227 = v56;
  v56(v11, v57);
  v59 = &v53[*(v251 + 36)];
  v60 = sub_23DB6F32C();
  v61 = *(v60 + 20);
  v62 = *MEMORY[0x277CE0118];
  v63 = sub_23DB6F63C();
  v64 = *(v63 - 8);
  v65 = *(v64 + 104);
  v225 = v62;
  v223 = v65;
  v224 = v63;
  v222 = v64 + 104;
  (v65)(&v59[v61], v62);
  __asm { FMOV            V0.2D, #8.0 }

  v221 = _Q0;
  *v59 = _Q0;
  v266 = a1;
  v71 = sub_23DADC4CC(1986359920, 0xE400000000000000);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD208, &qword_23DB7C3F0);
  *&v59[*(v72 + 52)] = v71;
  v220 = v72;
  *&v59[*(v72 + 56)] = 256;

  v73 = sub_23DB7062C();
  v75 = v74;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE768, &qword_23DB7C410);
  v76 = &v59[*(v219 + 36)];
  *v76 = v73;
  v76[1] = v75;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD130, &qword_23DB77D40);
  inited = swift_initStackObject();
  v217 = xmmword_23DB76A80;
  *(inited + 16) = xmmword_23DB76A80;
  LOBYTE(v75) = sub_23DB6FB5C();
  *(inited + 32) = v75;
  v78 = sub_23DB6FB4C();
  *(inited + 33) = v78;
  v79 = sub_23DB6FB8C();
  *(inited + 34) = v79;
  v80 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v75)
  {
    v80 = sub_23DB6FB7C();
  }

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v78)
  {
    v80 = sub_23DB6FB7C();
  }

  v81 = v233;
  v82 = v212;

  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v79)
  {
    v80 = sub_23DB6FB7C();
  }

  v83 = v216;
  v84 = sub_23DB6FB7C();
  sub_23DB6FB7C();
  if (sub_23DB6FB7C() != v80)
  {
    v84 = sub_23DB6FB7C();
  }

  sub_23DA17A54(v58, v82, &qword_27E2FEFE8, &qword_23DB7D8C0);
  v85 = v82 + *(v253 + 36);
  *v85 = v84;
  *(v85 + 8) = 0u;
  *(v85 + 24) = 0u;
  *(v85 + 40) = 1;
  v86 = sub_23DB6FB6C();
  if (qword_27E2FBC10 != -1)
  {
    swift_once();
  }

  sub_23DB6EFAC();
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v94 = v93;
  sub_23DA17A54(v82, v83, &qword_27E2FEFF0, &qword_23DB7D8C8);
  v95 = v83 + *(v254 + 36);
  *v95 = v86;
  *(v95 + 8) = v88;
  *(v95 + 16) = v90;
  *(v95 + 24) = v92;
  *(v95 + 32) = v94;
  *(v95 + 40) = 0;
  if (*(v266 + 16))
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v226 = v60;
    if (Strong)
    {
      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(&v271);

      v97 = v271 == 0;
      if (v271)
      {
        v98 = sub_23DAC6C5C(1, v271);

        if (!v98)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

LABEL_18:
      KeyPath = swift_getKeyPath();
      v100 = swift_allocObject();
      *(v100 + 16) = v97;
      sub_23DA17A54(v83, v81, &qword_27E2FEFF8, &qword_23DB7D8D0);
      v101 = (v81 + *(v255 + 36));
      *v101 = KeyPath;
      v101[1] = sub_23DADC658;
      v101[2] = v100;
      v102 = OBJC_IVAR____TtC28AccessibilitySharedUISupport15NavigationModel_dataModel;
      swift_beginAccess();
      v103 = 0.0;
      if (swift_weakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C(&v271);

        v104 = v265;
        if (v271)
        {
          v105 = sub_23DAC6C5C(1, v271);

          if (!v105)
          {
            goto LABEL_25;
          }

          v103 = 1.0;
        }

        else
        {
        }
      }

      else
      {
        v104 = v265;
      }

LABEL_25:
      v106 = v213;
      sub_23DA17A54(v81, v213, &qword_27E2FF000, &qword_23DB7D8D8);
      *(v106 + *(v256 + 36)) = v103;
      v216 = sub_23DADC660();
      sub_23DB6FFDC();
      sub_23DA17988(v106, &qword_27E2FF008, &qword_23DB7D8E0);
      v107 = swift_weakLoadStrong();
      v233 = v102;
      if (v107)
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C(&v271);

        if (v271)
        {
          v108 = sub_23DAC6C5C(1, v271);

          if (!v108)
          {
            goto LABEL_32;
          }
        }

        else
        {
        }
      }

LABEL_32:
      v109 = v215;
      v110 = v250;
      sub_23DB6F29C();
      sub_23DA17988(v110, &qword_27E2FF010, &qword_23DB7D8E8);
      sub_23DADA798(v266, v104, type metadata accessor for PracticeFooterViewDefault);
      v111 = v257;
      v112 = swift_allocObject();
      sub_23DADBF88(v104, v112 + v111, type metadata accessor for PracticeFooterViewDefault);
      v113 = v109;
      v114 = v214;
      sub_23DA17A54(v113, v214, &qword_27E2FF010, &qword_23DB7D8E8);
      v115 = (v114 + *(v258 + 36));
      *v115 = sub_23DADCA38;
      v115[1] = v112;
      sub_23DA17A54(v114, v263, &qword_27E2FF018, &qword_23DB7D8F0);
      if (qword_27E2FBBF0 != -1)
      {
        swift_once();
      }

      (*(*qword_27E30A6D8 + 304))(0xD00000000000001BLL, 0x800000023DB8B850);
      v116 = [objc_opt_self() mainBundle];
      sub_23DB6E9FC();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE2B0, &qword_23DB76980);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_23DB78D60;

      v118 = sub_23DAC0550();

      v119 = MEMORY[0x277D83B88];
      v120 = MEMORY[0x277D83C10];
      *(v117 + 56) = MEMORY[0x277D83B88];
      *(v117 + 64) = v120;
      *(v117 + 32) = v118;

      v121 = sub_23DABFBB8();

      *(v117 + 96) = v119;
      *(v117 + 104) = v120;
      *(v117 + 72) = v121;
      v122 = sub_23DB7088C();
      v124 = v123;

      v271 = v122;
      v272 = v124;
      sub_23DA16E70();
      v125 = sub_23DB6FD8C();
      v127 = v126;
      LOBYTE(v117) = v128;
      sub_23DB7021C();
      v129 = sub_23DB6FCDC();
      v213 = v130;
      v214 = v129;
      v132 = v131;
      v215 = v133;

      sub_23DA16EC4(v125, v127, v117 & 1);

      LODWORD(v212) = sub_23DB6FB5C();
      sub_23DB6EFAC();
      v135 = v134;
      v137 = v136;
      v139 = v138;
      v141 = v140;
      LODWORD(v250) = v132 & 1;
      LOBYTE(v271) = v132 & 1;
      LOBYTE(v267) = 0;
      v142 = v265;
      sub_23DADA798(v266, v265, type metadata accessor for PracticeFooterViewDefault);
      v143 = swift_allocObject();
      sub_23DADBF88(v142, v143 + v111, type metadata accessor for PracticeFooterViewDefault);
      v144 = v234;
      sub_23DB703CC();
      v145 = v237;
      sub_23DB6F80C();
      v146 = v238;
      v147 = v236;
      v148 = v252;
      sub_23DB6FE2C();
      v228(v145, v148);
      v227(v144, v147);
      v149 = (v146 + *(v251 + 36));
      v223(&v149[*(v226 + 20)], v225, v224);
      *v149 = v221;
      v150 = sub_23DADC4CC(1954047342, 0xE400000000000000);
      v151 = v220;
      *&v149[*(v220 + 52)] = v150;
      *&v149[*(v151 + 56)] = 256;

      v152 = sub_23DB7062C();
      v153 = &v149[*(v219 + 36)];
      *v153 = v152;
      v153[1] = v154;
      v155 = swift_initStackObject();
      *(v155 + 16) = v217;
      v156 = sub_23DB6FB5C();
      *(v155 + 32) = v156;
      v157 = sub_23DB6FB4C();
      *(v155 + 33) = v157;
      v158 = sub_23DB6FB6C();
      *(v155 + 34) = v158;
      v159 = sub_23DB6FB7C();
      sub_23DB6FB7C();
      if (sub_23DB6FB7C() != v156)
      {
        v159 = sub_23DB6FB7C();
      }

      sub_23DB6FB7C();
      v160 = sub_23DB6FB7C();
      v161 = v243;
      v162 = v240;
      if (v160 != v157)
      {
        v159 = sub_23DB6FB7C();
      }

      sub_23DB6FB7C();
      if (sub_23DB6FB7C() != v158)
      {
        v159 = sub_23DB6FB7C();
      }

      v163 = sub_23DB6FB7C();
      sub_23DB6FB7C();
      if (sub_23DB6FB7C() != v159)
      {
        v163 = sub_23DB6FB7C();
      }

      v164 = v239;
      sub_23DA17A54(v146, v239, &qword_27E2FEFE8, &qword_23DB7D8C0);
      v165 = v164 + *(v253 + 36);
      *v165 = v163;
      *(v165 + 8) = 0u;
      *(v165 + 24) = 0u;
      v166 = 1;
      *(v165 + 40) = 1;
      v167 = sub_23DB6FB8C();
      sub_23DB6EFAC();
      v169 = v168;
      v171 = v170;
      v173 = v172;
      v175 = v174;
      sub_23DA17A54(v164, v162, &qword_27E2FEFF0, &qword_23DB7D8C8);
      v176 = v162 + *(v254 + 36);
      *v176 = v167;
      *(v176 + 8) = v169;
      *(v176 + 16) = v171;
      *(v176 + 24) = v173;
      *(v176 + 32) = v175;
      *(v176 + 40) = 0;
      if (swift_weakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C(&v271);

        v166 = v271 == 0;
        if (!v271)
        {

LABEL_47:

          goto LABEL_49;
        }

        v177 = sub_23DAC6C5C(0, v271);

        if (v177)
        {
          goto LABEL_47;
        }

        v166 = 1;
      }

LABEL_49:
      v178 = swift_getKeyPath();
      v179 = swift_allocObject();
      *(v179 + 16) = v166;
      v180 = v242;
      sub_23DA17A54(v162, v242, &qword_27E2FEFF8, &qword_23DB7D8D0);
      v181 = (v180 + *(v255 + 36));
      *v181 = v178;
      v181[1] = sub_23DAE0728;
      v181[2] = v179;
      v182 = 0.0;
      if (!swift_weakLoadStrong())
      {
        goto LABEL_55;
      }

      swift_getKeyPath();
      swift_getKeyPath();

      sub_23DB6EF0C(&v271);

      if (v271)
      {
        v183 = sub_23DAC6C5C(0, v271);

        if (!v183)
        {
          goto LABEL_55;
        }

        v182 = 1.0;
      }

      else
      {
      }

LABEL_55:
      v184 = v241;
      sub_23DA17A54(v180, v241, &qword_27E2FF000, &qword_23DB7D8D8);
      *(v184 + *(v256 + 36)) = v182;
      sub_23DB6FFDC();
      sub_23DA17988(v184, &qword_27E2FF008, &qword_23DB7D8E0);
      if (swift_weakLoadStrong())
      {
        swift_getKeyPath();
        swift_getKeyPath();

        sub_23DB6EF0C(&v271);

        if (v271)
        {
          v185 = sub_23DAC6C5C(0, v271);

          if (!v185)
          {
            goto LABEL_61;
          }
        }

        else
        {
        }
      }

LABEL_61:
      v186 = v245;
      sub_23DB6F29C();
      sub_23DA17988(v161, &qword_27E2FF010, &qword_23DB7D8E8);
      v187 = v246;
      sub_23DB6F2CC();
      sub_23DA17988(v186, &qword_27E2FF010, &qword_23DB7D8E8);
      v188 = v265;
      sub_23DADA798(v266, v265, type metadata accessor for PracticeFooterViewDefault);
      v189 = v257;
      v190 = swift_allocObject();
      sub_23DADBF88(v188, v190 + v189, type metadata accessor for PracticeFooterViewDefault);
      v191 = v187;
      v192 = v244;
      sub_23DA17A54(v191, v244, &qword_27E2FF010, &qword_23DB7D8E8);
      v193 = (v192 + *(v258 + 36));
      *v193 = sub_23DADCA6C;
      v193[1] = v190;
      v194 = v192;
      v195 = v247;
      sub_23DA17A54(v194, v247, &qword_27E2FF018, &qword_23DB7D8F0);
      v196 = v260;
      sub_23DA0E2B4(v263, v260, &qword_27E2FF018, &qword_23DB7D8F0);
      v197 = v248;
      sub_23DA0E2B4(v195, v248, &qword_27E2FF018, &qword_23DB7D8F0);
      v198 = v196;
      v199 = v249;
      sub_23DA0E2B4(v198, v249, &qword_27E2FF018, &qword_23DB7D8F0);
      v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF090, &qword_23DB7D948);
      v201 = v199 + v200[12];
      *v201 = 0;
      *(v201 + 8) = 1;
      v202 = (v199 + v200[16]);
      v204 = v213;
      v203 = v214;
      *&v267 = v214;
      *(&v267 + 1) = v213;
      LOBYTE(v268) = v250;
      *(&v268 + 1) = *v284;
      DWORD1(v268) = *&v284[3];
      v205 = v215;
      *(&v268 + 1) = v215;
      v206 = v212;
      LOBYTE(v269) = v212;
      *(&v269 + 1) = *v283;
      DWORD1(v269) = *&v283[3];
      *(&v269 + 1) = v135;
      *&v270[0] = v137;
      *(&v270[0] + 1) = v139;
      *&v270[1] = v141;
      BYTE8(v270[1]) = 0;
      v207 = v270[0];
      v202[2] = v269;
      v202[3] = v207;
      v208 = v268;
      *v202 = v267;
      v202[1] = v208;
      *(v202 + 57) = *(v270 + 9);
      v209 = v199 + v200[20];
      *v209 = 0;
      *(v209 + 8) = 1;
      sub_23DA0E2B4(v197, v199 + v200[24], &qword_27E2FF018, &qword_23DB7D8F0);
      sub_23DA0E2B4(&v267, &v271, &qword_27E2FD908, &qword_23DB790D8);
      sub_23DA17988(v195, &qword_27E2FF018, &qword_23DB7D8F0);
      sub_23DA17988(v263, &qword_27E2FF018, &qword_23DB7D8F0);
      sub_23DA17988(v197, &qword_27E2FF018, &qword_23DB7D8F0);
      v271 = v203;
      v272 = v204;
      v273 = v250;
      *v274 = *v284;
      *&v274[3] = *&v284[3];
      v275 = v205;
      v276 = v206;
      *v277 = *v283;
      *&v277[3] = *&v283[3];
      v278 = v135;
      v279 = v137;
      v280 = v139;
      v281 = v141;
      v282 = 0;
      sub_23DA17988(&v271, &qword_27E2FD908, &qword_23DB790D8);
      return sub_23DA17988(v260, &qword_27E2FF018, &qword_23DB7D8F0);
    }

LABEL_15:
    v97 = 1;
    goto LABEL_18;
  }

  type metadata accessor for NavigationModel(0);
  sub_23DADA750(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
  result = sub_23DB6F38C();
  __break(1u);
  return result;
}

uint64_t sub_23DACE050@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DB702CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB702DC();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_23DB702EC();

  (*(v3 + 8))(v5, v2);
  sub_23DB7062C();
  sub_23DB6F10C();
  *&v21[11] = *&v21[35];
  *&v21[19] = v22;
  *&v21[3] = *&v21[27];
  *&v20[2] = *v21;
  LOBYTE(v23[0]) = 1;
  v19 = v6;
  *v20 = 1;
  *&v20[18] = *&v21[8];
  *&v20[34] = *&v21[16];
  *&v20[48] = *(&v22 + 1);
  v20[56] = 1;
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  (*(*qword_27E30A6D8 + 304))(0xD00000000000001FLL, 0x800000023DB8B8D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF048, &unk_23DB7D908);
  sub_23DADC3EC();
  sub_23DB6FF0C();

  v23[1] = *v20;
  v23[2] = *&v20[16];
  v24[0] = *&v20[32];
  *(v24 + 9) = *&v20[41];
  v23[0] = v19;
  sub_23DA17988(v23, &qword_27E2FF048, &unk_23DB7D908);
  v7 = sub_23DB6FB3C();
  sub_23DB6EFAC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF020, &qword_23DB7D8F8);
  v17 = a1 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_23DACE374(char a1, uint64_t a2)
{
  type metadata accessor for PracticeFooterViewDefault(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD018, &qword_23DB7D950);
  return sub_23DB7039C();
}

uint64_t sub_23DACE3E8(uint64_t a1, unsigned __int8 a2)
{
  if (*(a1 + 16))
  {
    v3 = a2;

    sub_23DABB0B8(&v3);
  }

  else
  {
    type metadata accessor for NavigationModel(0);
    sub_23DADA750(&unk_27E2FE800, type metadata accessor for NavigationModel, &protocol conformance descriptor for NavigationModel);
    result = sub_23DB6F38C();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DACE498@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23DB702CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DB702DC();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0FE0], v2);
  v6 = sub_23DB702EC();

  (*(v3 + 8))(v5, v2);
  sub_23DB7062C();
  sub_23DB6F10C();
  *&v21[11] = *&v21[35];
  *&v21[19] = v22;
  *&v21[3] = *&v21[27];
  *&v20[2] = *v21;
  LOBYTE(v23[0]) = 1;
  v19 = v6;
  *v20 = 1;
  *&v20[18] = *&v21[8];
  *&v20[34] = *&v21[16];
  *&v20[48] = *(&v22 + 1);
  v20[56] = 1;
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  (*(*qword_27E30A6D8 + 304))(0xD00000000000001BLL, 0x800000023DB8B890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF048, &unk_23DB7D908);
  sub_23DADC3EC();
  sub_23DB6FF0C();

  v23[1] = *v20;
  v23[2] = *&v20[16];
  v24[0] = *&v20[32];
  *(v24 + 9) = *&v20[41];
  v23[0] = v19;
  sub_23DA17988(v23, &qword_27E2FF048, &unk_23DB7D908);
  v7 = sub_23DB6FB3C();
  sub_23DB6EFAC();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF020, &qword_23DB7D8F8);
  v17 = a1 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_23DACE7BC(char a1, uint64_t a2)
{
  type metadata accessor for PracticeFooterViewDefault(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD018, &qword_23DB7D950);
  return sub_23DB7039C();
}

uint64_t sub_23DACE830(uint64_t a1, uint64_t (*a2)(void, __n128))
{
  v4 = sub_23DB6F55C();
  v18 = *(v4 - 8);
  v19 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCC18, &qword_23DB79160);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = sub_23DB6F12C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2(0, v12);
  sub_23DA0E2B4(a1 + *(v15 + 24), v9, &qword_27E2FCC18, &qword_23DB79160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    sub_23DB70ACC();
    v16 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();

    (*(v18 + 8))(v6, v19);
  }

  sub_23DB6F11C();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_23DACEABC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F90C();
  return v1;
}

uint64_t sub_23DACEB0C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD018, &qword_23DB7D950);
  sub_23DB7038C();
  return v2;
}

uint64_t sub_23DACEB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[2] = a2;
  v2 = *(a1 + 24);
  v36 = *(a1 + 16);
  v20[0] = v36;
  v21 = v2;
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_23DB702AC();
  sub_23DB6F2DC();
  v35 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v34 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_23DB7044C();
  v3 = v36;
  sub_23DB702AC();
  sub_23DB6F2DC();
  v32 = v21;
  v30 = swift_getWitnessTable();
  v31 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  v28 = swift_getOpaqueTypeConformance2();
  v29 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v5 = swift_getOpaqueTypeConformance2();
  v6 = MEMORY[0x277D839B0];
  v7 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  v36 = OpaqueTypeMetadata2;
  v37 = v6;
  v38 = v5;
  v39 = v7;
  swift_getOpaqueTypeConformance2();
  sub_23DB703FC();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB703FC();
  sub_23DB6F7AC();
  v8 = sub_23DB702AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v20 - v13;
  v22 = v3;
  v23 = v21;
  v24 = v20[1];
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v26 = v15;
  v27 = v16;
  v17 = swift_getWitnessTable();
  sub_23DB7029C();
  v25 = v17;
  swift_getWitnessTable();
  sub_23DAAC170();
  v18 = *(v9 + 8);
  v18(v11, v8);
  sub_23DAAC170();
  return (v18)(v14, v8);
}

uint64_t sub_23DACF114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a1;
  v53 = a4;
  sub_23DB702AC();
  sub_23DB6F2DC();
  v69 = a3;
  v49 = MEMORY[0x277CE0FB0];
  WitnessTable = swift_getWitnessTable();
  v68 = MEMORY[0x277CDF678];
  v48 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = swift_getOpaqueTypeConformance2();
  v8 = MEMORY[0x277D839B0];
  v9 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  v61 = OpaqueTypeMetadata2;
  v62 = v8;
  v63 = v7;
  v64 = v9;
  swift_getOpaqueTypeConformance2();
  sub_23DB703FC();
  swift_getTupleTypeMetadata3();
  v44[1] = sub_23DB706BC();
  v44[0] = swift_getWitnessTable();
  v10 = sub_23DB703FC();
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = v44 - v13;
  v61 = a2;
  v62 = a3;
  swift_getOpaqueTypeMetadata2();
  v14 = sub_23DB6F2DC();
  v51 = a2;
  v52 = a3;
  v61 = a2;
  v62 = a3;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = MEMORY[0x277CE0790];
  v15 = swift_getWitnessTable();
  v61 = v14;
  v62 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v61 = v14;
  v62 = v15;
  v17 = swift_getOpaqueTypeConformance2();
  v61 = v16;
  v62 = v8;
  v63 = v17;
  v64 = v9;
  swift_getOpaqueTypeMetadata2();
  sub_23DB702AC();
  sub_23DB6F2DC();
  v61 = v16;
  v62 = v8;
  v63 = v17;
  v64 = v9;
  v58 = swift_getOpaqueTypeConformance2();
  v56 = swift_getWitnessTable();
  v57 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  v18 = sub_23DB7044C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v44 - v23;
  v49 = sub_23DB6F7AC();
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v26 = v44 - v25;
  v27 = v50;
  v28 = sub_23DAD3D38();
  if (v28)
  {
    v29 = sub_23DB6F68C();
    MEMORY[0x28223BE20](v29);
    v30 = v52;
    v44[-4] = v51;
    v44[-3] = v30;
    v44[-2] = v27;
    sub_23DB7043C();
    v31 = swift_getWitnessTable();
    sub_23DAAC170();
    v32 = *(v19 + 8);
    v32(v21, v18);
    sub_23DAAC170();
    v33 = swift_getWitnessTable();
    sub_23DAAA68C(v21, v18, v10, v31, v33);
    v32(v21, v18);
    v32(v24, v18);
  }

  else
  {
    MEMORY[0x28223BE20](v28);
    v34 = v52;
    v44[-4] = v51;
    v44[-3] = v34;
    v44[-2] = v27;
    sub_23DB6F5BC();
    v35 = v46;
    sub_23DB703EC();
    v36 = swift_getWitnessTable();
    v37 = v45;
    sub_23DAAC170();
    v38 = *(v47 + 8);
    v38(v35, v10);
    sub_23DAAC170();
    v39 = swift_getWitnessTable();
    sub_23DAAA784(v35, v18, v10, v39, v36);
    v38(v35, v10);
    v38(v37, v10);
  }

  v40 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v54 = v40;
  v55 = v41;
  v42 = v49;
  swift_getWitnessTable();
  sub_23DAAC170();
  return (*(v48 + 8))(v26, v42);
}

uint64_t sub_23DACF99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a1;
  v25 = a4;
  v22 = a2;
  v23 = a3;
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v4 = swift_getOpaqueTypeConformance2();
  v32 = OpaqueTypeMetadata2;
  v33 = MEMORY[0x277D839B0];
  v34 = v4;
  v35 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  v5 = sub_23DB702AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  v9 = sub_23DB6F2DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v32 = OpaqueTypeMetadata2;
  v33 = MEMORY[0x277D839B0];
  v34 = v4;
  v35 = MEMORY[0x277D839C8];
  v16 = swift_getOpaqueTypeConformance2();
  sub_23DB7029C();
  sub_23DB6FB2C();
  if (qword_27E2FBC10 != -1)
  {
    swift_once();
  }

  v31 = v16;
  WitnessTable = swift_getWitnessTable();
  sub_23DB7007C();
  (*(v6 + 8))(v8, v5);
  v29 = WitnessTable;
  v30 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_23DAAC170();
  v18 = *(v10 + 8);
  v18(v12, v9);
  sub_23DAAC170();
  return (v18)(v15, v9);
}

uint64_t sub_23DACFDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a4;
  v7 = sub_23DB70A6C();
  v82 = *(v7 - 8);
  v83 = v7;
  MEMORY[0x28223BE20](v7);
  v81 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2;
  v11 = type metadata accessor for NoInstructionCardPracticeView(0, a2, a3, v10);
  v87 = *(v11 - 8);
  v89 = *(v87 + 64);
  MEMORY[0x28223BE20](v11);
  v65 = &v60 - v12;
  v91 = a2;
  v92 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v86 = &v60 - v13;
  v14 = sub_23DB6F2DC();
  v80 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v90 = &v60 - v15;
  v91 = a2;
  v92 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = OpaqueTypeConformance2;
  v96 = MEMORY[0x277CE0790];
  WitnessTable = swift_getWitnessTable();
  v91 = v14;
  v92 = WitnessTable;
  v68 = v14;
  v17 = WitnessTable;
  v67 = WitnessTable;
  v18 = swift_getOpaqueTypeMetadata2();
  v75 = v18;
  v79 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v69 = &v60 - v19;
  v91 = v14;
  v92 = v17;
  v74 = swift_getOpaqueTypeConformance2();
  v91 = v18;
  v92 = MEMORY[0x277D839B0];
  v93 = v74;
  v94 = MEMORY[0x277D839C8];
  v76 = MEMORY[0x277CE0E40];
  v20 = swift_getOpaqueTypeMetadata2();
  v21 = *(v20 - 8);
  v77 = v20;
  v78 = v21;
  MEMORY[0x28223BE20](v20);
  v71 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v73 = &v60 - v24;
  v25 = v11;
  sub_23DACEABC();
  v85 = a1;
  v61 = v9;
  v26 = a3;
  v62 = a3;
  sub_23DB6FF9C();

  v27 = v87;
  v28 = *(v87 + 16);
  v88 = v87 + 16;
  v29 = v65;
  v28(v65, a1, v25);
  v63 = v28;
  v30 = *(v27 + 80);
  v64 = (v30 + 32) & ~v30;
  v31 = swift_allocObject();
  *(v31 + 16) = v9;
  *(v31 + 24) = v26;
  v87 = *(v27 + 32);
  v32 = v29;
  (v87)(v31 + ((v30 + 32) & ~v30), v29, v25);
  v33 = OpaqueTypeMetadata2;
  v34 = v86;
  sub_23DB7009C();

  (*(v72 + 8))(v34, v33);
  v86 = "l.practice.label";
  v35 = v32;
  v28(v32, v85, v25);
  sub_23DB70A3C();
  v36 = sub_23DB70A2C();
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D85700];
  v37[2] = v36;
  v37[3] = v38;
  v39 = v61;
  v40 = v62;
  v37[4] = v61;
  v37[5] = v40;
  (v87)(v37 + ((v30 + 48) & ~v30), v35, v25);
  v41 = v81;
  v42 = v68;
  v43 = v67;
  sub_23DA0CF18();
  v59 = v43;
  v44 = v69;
  v45 = v37;
  v46 = v90;
  sub_23DA0D0C4(0, v41, 0xD00000000000002ELL, v86 | 0x8000000000000000, 283, &unk_23DB7DE90, v45, v69, v42, v59);
  (*(v82 + 8))(v41, v83);
  (*(v80 + 8))(v46, v42);
  v47 = v85;
  LOBYTE(v91) = sub_23DACEB0C(v25) & 1;
  v63(v35, v47, v25);
  v48 = v64;
  v49 = swift_allocObject();
  *(v49 + 16) = v39;
  *(v49 + 24) = v40;
  (v87)(v49 + v48, v35, v25);
  v50 = v71;
  v51 = v75;
  v52 = MEMORY[0x277D839B0];
  v53 = v74;
  v54 = MEMORY[0x277D839C8];
  sub_23DB700BC();

  (*(v79 + 8))(v44, v51);
  v91 = v51;
  v92 = v52;
  v93 = v53;
  v94 = v54;
  swift_getOpaqueTypeConformance2();
  v55 = v73;
  v56 = v77;
  sub_23DAAC170();
  v57 = *(v78 + 8);
  v57(v50, v56);
  sub_23DAAC170();
  return (v57)(v55, v56);
}

uint64_t sub_23DAD065C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  sub_23DB70A3C();
  v5[5] = sub_23DB70A2C();
  v7 = sub_23DB70A1C();

  return MEMORY[0x2822009F8](sub_23DAD06F8, v7, v6);
}

uint64_t sub_23DAD06F8()
{
  v1 = v0[4];
  v2 = v0[3];

  type metadata accessor for NoInstructionCardPracticeView(0, v2, v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F8FC();
  v4 = v0[1];

  return v4();
}

uint64_t sub_23DAD07A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  sub_23DB702AC();
  sub_23DB6F2DC();
  v41 = a3;
  WitnessTable = swift_getWitnessTable();
  v40 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = swift_getOpaqueTypeConformance2();
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  v33 = OpaqueTypeMetadata2;
  v34 = v9;
  v35 = v8;
  v36 = v10;
  swift_getOpaqueTypeConformance2();
  v11 = sub_23DB703FC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v21 - v16;
  v22 = a2;
  v23 = a3;
  v24 = a1;
  sub_23DB6F5BC();
  sub_23DB703EC();
  v18 = swift_getWitnessTable();
  sub_23DAAC170();
  v19 = *(v12 + 8);
  v19(v14, v11);
  v31 = 0;
  v32 = 1;
  v33 = &v31;
  (*(v12 + 16))(v14, v17, v11);
  v29 = 0;
  v30 = 1;
  v34 = v14;
  v35 = &v29;
  v28[0] = MEMORY[0x277CE1180];
  v28[1] = v11;
  v28[2] = MEMORY[0x277CE1180];
  v25 = MEMORY[0x277CE1170];
  v26 = v18;
  v27 = MEMORY[0x277CE1170];
  sub_23DAC2F38(&v33, 3uLL, v28);
  v19(v17, v11);
  return (v19)(v14, v11);
}

uint64_t sub_23DAD0B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v99 = a1;
  v91 = a4;
  v90 = sub_23DB70A6C();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a3;
  v81 = type metadata accessor for NoInstructionCardPracticeView(0, a2, a3, v7);
  v100 = *(v81 - 8);
  v97 = *(v100 + 64);
  MEMORY[0x28223BE20](v81);
  v85 = &v69 - v8;
  v9 = sub_23DB702AC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v69 - v11;
  v13 = sub_23DB6F2DC();
  v93 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - v14;
  v112 = a3;
  WitnessTable = swift_getWitnessTable();
  v110 = WitnessTable;
  v111 = MEMORY[0x277CDF678];
  v16 = swift_getWitnessTable();
  v104 = v13;
  v105 = v16;
  v17 = v16;
  v70 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v77 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v94 = &v69 - v18;
  v19 = sub_23DB6F2DC();
  v86 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v95 = &v69 - v20;
  v104 = v13;
  v105 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v108 = OpaqueTypeConformance2;
  v109 = MEMORY[0x277CE0790];
  v21 = swift_getWitnessTable();
  v104 = v19;
  v105 = v21;
  v74 = v19;
  v73 = v21;
  v22 = swift_getOpaqueTypeMetadata2();
  v80 = v22;
  v87 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v96 = &v69 - v23;
  v104 = v19;
  v105 = v21;
  v79 = swift_getOpaqueTypeConformance2();
  v104 = v22;
  v105 = MEMORY[0x277D839B0];
  v106 = v79;
  v107 = MEMORY[0x277D839C8];
  v82 = MEMORY[0x277CE0E40];
  v83 = swift_getOpaqueTypeMetadata2();
  v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v76 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v78 = &v69 - v26;
  v92 = a2;
  v27 = v99;
  v101 = a2;
  v102 = v98;
  v103 = v99;
  sub_23DB7029C();
  sub_23DB7062C();
  sub_23DB7004C();
  (*(v10 + 8))(v12, v9);
  v28 = v81;
  v29 = v27;
  sub_23DACEABC();
  sub_23DB6FF9C();

  (*(v93 + 8))(v15, v13);
  v30 = v100;
  v31 = *(v100 + 16);
  v93 = v100 + 16;
  v32 = v85;
  v33 = v28;
  v31(v85, v29, v28);
  v70 = v31;
  v34 = *(v30 + 80);
  v35 = v30;
  WitnessTable = (v34 + 32) & ~v34;
  v36 = swift_allocObject();
  v37 = v92;
  v38 = v98;
  *(v36 + 16) = v92;
  *(v36 + 24) = v38;
  v39 = *(v35 + 32);
  v100 = v35 + 32;
  v40 = v33;
  v39(v36 + ((v34 + 32) & ~v34), v32, v33);
  v41 = OpaqueTypeMetadata2;
  v42 = v94;
  sub_23DB7009C();

  (*(v77 + 8))(v42, v41);
  v94 = "l.practice.label";
  v31(v32, v99, v40);
  sub_23DB70A3C();
  v43 = sub_23DB70A2C();
  v44 = swift_allocObject();
  v45 = MEMORY[0x277D85700];
  v44[2] = v43;
  v44[3] = v45;
  v46 = v98;
  v44[4] = v37;
  v44[5] = v46;
  v39(v44 + ((v34 + 48) & ~v34), v32, v40);
  v47 = v88;
  v48 = v74;
  v49 = v73;
  sub_23DA0CF18();
  v67 = v48;
  v68 = v49;
  v50 = v48;
  v51 = v47;
  v52 = v47;
  v53 = v95;
  sub_23DA0D0C4(0, v51, 0xD00000000000002ELL, v94 | 0x8000000000000000, 310, &unk_23DB7DEA8, v44, v96, v67, v68);
  (*(v89 + 8))(v52, v90);
  (*(v86 + 8))(v53, v50);
  v54 = v99;
  LOBYTE(v104) = sub_23DACEB0C(v40) & 1;
  v70(v32, v54, v40);
  v55 = WitnessTable;
  v56 = swift_allocObject();
  *(v56 + 16) = v92;
  *(v56 + 24) = v46;
  v39(v56 + v55, v32, v40);
  v57 = v76;
  v58 = v80;
  v59 = MEMORY[0x277D839B0];
  v60 = v79;
  v61 = MEMORY[0x277D839C8];
  v62 = v96;
  sub_23DB700BC();

  (*(v87 + 8))(v62, v58);
  v104 = v58;
  v105 = v59;
  v106 = v60;
  v107 = v61;
  swift_getOpaqueTypeConformance2();
  v63 = v78;
  v64 = v83;
  sub_23DAAC170();
  v65 = *(v84 + 8);
  v65(v57, v64);
  sub_23DAAC170();
  return (v65)(v63, v64);
}

uint64_t sub_23DAD1674(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NoInstructionCardPracticeView(0, v6, v7, v8);
  sub_23DAAC170();
  sub_23DAAC170();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23DAD176C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4, uint64_t a5)
{
  type metadata accessor for NoInstructionCardPracticeView(0, a2, a3, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F8FC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD018, &qword_23DB7D950);
  sub_23DB7038C();
  sub_23DB7039C();
}

uint64_t sub_23DAD1850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  sub_23DB70A3C();
  v5[5] = sub_23DB70A2C();
  v7 = sub_23DB70A1C();

  return MEMORY[0x2822009F8](sub_23DAD18EC, v7, v6);
}

uint64_t sub_23DAD18EC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);

  type metadata accessor for NoInstructionCardPracticeView(0, v2, v1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F8EC();
  if ((*(v0 + 48) & 1) == 0)
  {
    *(v0 + 48) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    sub_23DB6F8FC();
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23DAD19CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v39 = a4;
  v33 = a2;
  v34 = a3;
  v36 = a1;
  v43 = sub_23DB707AC();
  v46 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23DB707CC();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NoInstructionCardPracticeView(0, a2, a3, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = sub_23DB707EC();
  v38 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v32 - v22;
  sub_23DA5295C();
  v35 = sub_23DB70AEC();
  sub_23DB707DC();
  sub_23DB707FC();
  v37 = *(v18 + 8);
  v37(v20, v17);
  (*(v14 + 16))(v16, v36, v13);
  v24 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v25 = swift_allocObject();
  v26 = v34;
  *(v25 + 16) = v33;
  *(v25 + 24) = v26;
  (*(v14 + 32))(v25 + v24, v16, v13);
  aBlock[4] = v40;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23DABB3DC;
  aBlock[3] = v41;
  v27 = _Block_copy(aBlock);

  sub_23DB707BC();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23DADA750(&qword_27E2FE2F0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCFE8, &unk_23DB7A4E0);
  sub_23DA17B80(&qword_27E2FE300, &qword_27E2FCFE8, &unk_23DB7A4E0, MEMORY[0x277D83970]);
  v28 = v42;
  v29 = v43;
  sub_23DB70C0C();
  v30 = v35;
  MEMORY[0x23EEF6E80](v23, v11, v28, v27);
  _Block_release(v27);

  (*(v46 + 8))(v28, v29);
  (*(v44 + 8))(v11, v45);
  return (v37)(v23, v38);
}

void *sub_23DAD1E60(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for NoInstructionCardPracticeView(0, a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  result = sub_23DB6F8EC();
  if ((v6 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    return sub_23DB6F8FC();
  }

  return result;
}

uint64_t sub_23DAD1EFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = a1[2];
  *&v23 = a1[4];
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v4 = sub_23DB6F2DC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = MEMORY[0x277CE0790];
  WitnessTable = swift_getWitnessTable();
  *&v36 = v4;
  *(&v36 + 1) = MEMORY[0x277D839B0];
  *&v37 = WitnessTable;
  *(&v37 + 1) = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF2F8, &unk_23DB7DE60);
  v6 = a1[3];
  sub_23DB6F2DC();
  sub_23DB6F2DC();
  v7 = MEMORY[0x277CDF918];
  v34 = a1[5];
  v35 = MEMORY[0x277CDF918];
  v32 = swift_getWitnessTable();
  v33 = v7;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6FA9C();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB7044C();
  *&v8 = v3;
  *(&v8 + 1) = v6;
  v22 = v8;
  *&v9 = v23;
  *(&v9 + 1) = v34;
  v23 = v9;
  v37 = v9;
  v36 = v8;
  type metadata accessor for InstructionCardAndPracticeView(255, &v36);
  sub_23DB6F7AC();
  v10 = sub_23DB702AC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v17 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v30 = v17;
  v31 = v18;
  v19 = swift_getWitnessTable();
  sub_23DB7029C();
  v29 = v19;
  swift_getWitnessTable();
  sub_23DAAC170();
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_23DAAC170();
  return (v20)(v16, v10);
}

uint64_t sub_23DAD239C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a1;
  v60 = a6;
  v70 = a2;
  v71 = a3;
  v54 = a5;
  v55 = a3;
  v72 = a4;
  v73 = a5;
  v61 = type metadata accessor for InstructionCardAndPracticeView(0, &v70);
  v53 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v52 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = &v49 - v11;
  v70 = a2;
  v71 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = a2;
  v71 = a4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = OpaqueTypeMetadata2;
  v71 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v14 = sub_23DB6F2DC();
  v70 = OpaqueTypeMetadata2;
  v71 = OpaqueTypeConformance2;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = MEMORY[0x277CE0790];
  WitnessTable = swift_getWitnessTable();
  v70 = v14;
  v71 = MEMORY[0x277D839B0];
  v72 = WitnessTable;
  v73 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF2F8, &unk_23DB7DE60);
  sub_23DB6F2DC();
  v16 = sub_23DB6F2DC();
  v17 = MEMORY[0x277CDF918];
  v66 = a5;
  v67 = MEMORY[0x277CDF918];
  v64 = swift_getWitnessTable();
  v65 = v17;
  v18 = swift_getWitnessTable();
  v70 = v16;
  v71 = v18;
  swift_getOpaqueTypeMetadata2();
  sub_23DB6FA9C();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  v49 = swift_getWitnessTable();
  v19 = sub_23DB7044C();
  v50 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  v25 = sub_23DB6F7AC();
  v57 = *(v25 - 8);
  v58 = v25;
  MEMORY[0x28223BE20](v25);
  v56 = &v49 - v26;
  v27 = a2;
  v70 = a2;
  v28 = v55;
  v71 = v55;
  v72 = a4;
  v29 = v54;
  v73 = v54;
  type metadata accessor for InstructionCardAndPracticeViewWithDivider(0, &v70);
  v30 = v59;
  v31 = sub_23DAD3D38();
  if (v31)
  {
    v32 = sub_23DB6F68C();
    MEMORY[0x28223BE20](v32);
    *(&v49 - 6) = v27;
    *(&v49 - 5) = v28;
    *(&v49 - 4) = a4;
    *(&v49 - 3) = v29;
    *(&v49 - 2) = v30;
    sub_23DB7043C();
    v33 = swift_getWitnessTable();
    sub_23DAAC170();
    v34 = *(v50 + 8);
    v34(v21, v19);
    sub_23DAAC170();
    v35 = v61;
    v36 = swift_getWitnessTable();
    v37 = v56;
    sub_23DAAA68C(v21, v19, v35, v33, v36);
    v34(v21, v19);
    v34(v24, v19);
  }

  else
  {
    MEMORY[0x28223BE20](v31);
    *(&v49 - 6) = v27;
    *(&v49 - 5) = v28;
    *(&v49 - 4) = a4;
    *(&v49 - 3) = v29;
    *(&v49 - 2) = v30;
    MEMORY[0x28223BE20](v38);
    *(&v49 - 6) = v27;
    *(&v49 - 5) = v28;
    *(&v49 - 4) = a4;
    *(&v49 - 3) = v29;
    *(&v49 - 2) = v30;
    v39 = v52;
    sub_23DAC9EB0(sub_23DADF020, sub_23DADF04C, v27, v28, a4, v29, v52, 100.0);
    v40 = v61;
    v41 = swift_getWitnessTable();
    v42 = v51;
    sub_23DAAC170();
    v43 = *(v53 + 8);
    v43(v39, v40);
    sub_23DAAC170();
    v44 = swift_getWitnessTable();
    v37 = v56;
    sub_23DAAA784(v39, v19, v40, v44, v41);
    v43(v39, v40);
    v43(v42, v40);
  }

  v45 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v62 = v45;
  v63 = v46;
  v47 = v58;
  swift_getWitnessTable();
  sub_23DAAC170();
  return (*(v57 + 8))(v37, v47);
}

uint64_t sub_23DAD2B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v154 = a1;
  v143 = a6;
  v123 = a3;
  v10 = sub_23DB6F2DC();
  v132 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v129 = &v109 - v11;
  v12 = sub_23DB6F2DC();
  v131 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v128 = &v109 - v13;
  v14 = MEMORY[0x277CDF918];
  v171 = a5;
  v172 = MEMORY[0x277CDF918];
  v122 = a5;
  v134 = v10;
  WitnessTable = swift_getWitnessTable();
  v169 = WitnessTable;
  v170 = v14;
  v15 = swift_getWitnessTable();
  v137 = v12;
  *&v173 = v12;
  *(&v173 + 1) = v15;
  v130 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v135 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v133 = &v109 - v17;
  sub_23DB6FA9C();
  v136 = OpaqueTypeMetadata2;
  v142 = sub_23DB6F2DC();
  v138 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v141 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v140 = &v109 - v20;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF2F8, &unk_23DB7DE60);
  MEMORY[0x28223BE20](v152);
  v139 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v155 = &v109 - v23;
  *&v173 = a2;
  *(&v173 + 1) = a3;
  v24 = a4;
  *&v174 = a4;
  *(&v174 + 1) = a5;
  v25 = type metadata accessor for InstructionCardAndPracticeViewWithDivider(0, &v173);
  v121 = *(v25 - 8);
  v147 = *(v121 + 64);
  MEMORY[0x28223BE20](v25);
  v119 = &v109 - v26;
  v149 = sub_23DB6F9FC();
  v27 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v29 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v173 = a2;
  *(&v173 + 1) = v24;
  v144 = a2;
  v30 = swift_getOpaqueTypeMetadata2();
  v115 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v109 - v31;
  *&v173 = a2;
  *(&v173 + 1) = v24;
  v33 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v173 = v30;
  *(&v173 + 1) = OpaqueTypeConformance2;
  v35 = OpaqueTypeConformance2;
  v111 = OpaqueTypeConformance2;
  v113 = swift_getOpaqueTypeMetadata2();
  v117 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v145 = &v109 - v36;
  v37 = sub_23DB6F2DC();
  v116 = v37;
  v120 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v146 = &v109 - v38;
  *&v173 = v30;
  *(&v173 + 1) = v35;
  v112 = swift_getOpaqueTypeConformance2();
  v167 = v112;
  v168 = MEMORY[0x277CE0790];
  v114 = swift_getWitnessTable();
  *&v173 = v37;
  *(&v173 + 1) = MEMORY[0x277D839B0];
  *&v174 = v114;
  *(&v174 + 1) = MEMORY[0x277D839C8];
  v118 = MEMORY[0x277CE0E40];
  v151 = swift_getOpaqueTypeMetadata2();
  v148 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v150 = &v109 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v153 = &v109 - v41;
  v42 = v25;
  sub_23DB6F9EC();
  v43 = v154;
  v44 = v144;
  v110 = v24;
  sub_23DB6FF8C();
  v45 = *(v27 + 8);
  v125 = v29;
  v126 = v27 + 8;
  v124 = v45;
  v45(v29, v149);
  sub_23DAD3E80();
  sub_23DB6FF9C();

  (*(v115 + 8))(v32, v30);
  v46 = v121;
  v115 = *(v121 + 16);
  v47 = v119;
  v109 = v42;
  (v115)(v119, v43, v42);
  v48 = (*(v46 + 80) + 48) & ~*(v46 + 80);
  v49 = swift_allocObject();
  v49[2] = v44;
  v50 = v123;
  v49[3] = v123;
  v49[4] = v33;
  v51 = v122;
  v49[5] = v122;
  v121 = *(v46 + 32);
  v52 = v47;
  (v121)(v49 + v48, v47, v42);
  v53 = v113;
  v54 = v145;
  sub_23DB7009C();

  v55 = v54;
  v56 = v50;
  (*(v117 + 8))(v55, v53);
  swift_beginAccess();
  LOBYTE(v173) = byte_27E2FE958;
  v57 = v109;
  (v115)(v52, v154, v109);
  v58 = swift_allocObject();
  v58[2] = v144;
  v58[3] = v56;
  v58[4] = v110;
  v58[5] = v51;
  (v121)(v58 + v48, v52, v57);
  v59 = v150;
  v60 = v116;
  v61 = MEMORY[0x277D839B0];
  v62 = v114;
  v63 = MEMORY[0x277D839C8];
  v64 = v146;
  sub_23DB700BC();

  (*(v120 + 8))(v64, v60);
  *&v173 = v60;
  *(&v173 + 1) = v61;
  *&v174 = v62;
  *(&v174 + 1) = v63;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v151;
  v145 = v65;
  sub_23DAAC170();
  v67 = *(v148 + 8);
  v147 = v148 + 8;
  v146 = v67;
  (v67)(v59, v66);
  v68 = v155;
  sub_23DB704CC();
  sub_23DB7062C();
  sub_23DB6F10C();
  v69 = (v68 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FDFB0, &qword_23DB79BF0) + 36));
  v70 = v174;
  *v69 = v173;
  v69[1] = v70;
  v69[2] = v175;
  if (qword_27E2FBB70 != -1)
  {
    swift_once();
  }

  v71 = qword_27E30A648;
  v72 = sub_23DB6FB3C();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF300, &qword_23DB7DE70);
  v74 = v155 + *(v73 + 36);
  *v74 = v71;
  *(v74 + 8) = v72;

  v75 = sub_23DB6FB2C();
  if (qword_27E2FBC10 != -1)
  {
    swift_once();
  }

  sub_23DB6EFAC();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF308, &qword_23DB7DE78);
  v85 = v155;
  v86 = v155 + *(v84 + 36);
  *v86 = v75;
  *(v86 + 8) = v77;
  *(v86 + 16) = v79;
  *(v86 + 24) = v81;
  *(v86 + 32) = v83;
  *(v86 + 40) = 0;
  *(v85 + *(v152 + 36)) = 0x3FE0000000000000;
  sub_23DB6FB2C();
  v87 = v129;
  sub_23DB7007C();
  sub_23DB6FB4C();
  v88 = v128;
  v89 = v134;
  sub_23DB7007C();
  (*(v132 + 8))(v87, v89);
  v90 = v125;
  sub_23DB6F9EC();
  v91 = v133;
  v92 = v137;
  v93 = v130;
  sub_23DB6FF8C();
  v124(v90, v149);
  (*(v131 + 8))(v88, v92);
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  v162 = (*(*qword_27E30A6D8 + 304))(0xD000000000000020, 0x800000023DB8B930);
  v163 = v94;
  v159 = v92;
  v160 = v93;
  v95 = swift_getOpaqueTypeConformance2();
  sub_23DA16E70();
  v96 = v141;
  v97 = v136;
  sub_23DB6FF1C();

  (*(v135 + 8))(v91, v97);
  v98 = sub_23DADA750(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v165 = v95;
  v166 = v98;
  v99 = v142;
  v100 = swift_getWitnessTable();
  v101 = v140;
  sub_23DAAC170();
  v102 = v138;
  v103 = *(v138 + 8);
  v103(v96, v99);
  v104 = v150;
  v105 = v151;
  (*(v148 + 16))(v150, v153, v151);
  v162 = v104;
  v106 = v139;
  sub_23DA0E2B4(v155, v139, &qword_27E2FF2F8, &unk_23DB7DE60);
  v163 = v106;
  (*(v102 + 16))(v96, v101, v99);
  v164 = v96;
  v159 = v105;
  v160 = v152;
  v161 = v99;
  v156 = v145;
  v157 = sub_23DADF35C();
  v158 = v100;
  sub_23DAC2F38(&v162, 3uLL, &v159);
  v103(v101, v99);
  sub_23DA17988(v155, &qword_27E2FF2F8, &unk_23DB7DE60);
  v107 = v146;
  (v146)(v153, v105);
  v103(v96, v99);
  sub_23DA17988(v106, &qword_27E2FF2F8, &unk_23DB7DE60);
  return v107(v104, v105);
}

uint64_t sub_23DAD3D38()
{
  v1 = sub_23DB6F55C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_23DB70ACC();
    v6 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_23DAD3E80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F90C();
  return v1;
}

uint64_t sub_23DAD3ED4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = a1[2];
  v23 = a1[4];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  v21 = a1[3];
  sub_23DB6F2DC();
  v40 = a1[5];
  v4 = v40;
  v41 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6FA9C();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  swift_getWitnessTable();
  v20 = sub_23DB7044C();
  sub_23DB7044C();
  sub_23DB6F2DC();
  v22 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v39 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  v36 = swift_getOpaqueTypeConformance2();
  v37 = MEMORY[0x277CE0790];
  v34 = swift_getWitnessTable();
  v35 = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF1D0, &qword_23DB7DCA0);
  v5 = v21;
  sub_23DB7044C();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB703FC();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB703FC();
  sub_23DB6F7AC();
  v6 = sub_23DB702AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  *&v13 = v3;
  *(&v13 + 1) = v5;
  *&v14 = v23;
  *(&v14 + 1) = v4;
  v26 = v13;
  v27 = v14;
  v28 = v24;
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v30 = v15;
  v31 = v16;
  v17 = swift_getWitnessTable();
  sub_23DB7029C();
  v29 = v17;
  swift_getWitnessTable();
  sub_23DAAC170();
  v18 = *(v7 + 8);
  v18(v9, v6);
  sub_23DAAC170();
  return (v18)(v12, v6);
}

uint64_t sub_23DAD44FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v57 = a5;
  v63 = a6;
  v64 = a4;
  v62 = a1;
  sub_23DB7044C();
  sub_23DB6F2DC();
  WitnessTable = swift_getWitnessTable();
  v76 = MEMORY[0x277CDF678];
  v61 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = MEMORY[0x277CE0790];
  v71 = swift_getWitnessTable();
  v72 = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF1D0, &qword_23DB7DCA0);
  v8 = a3;
  v9 = v57;
  sub_23DB7044C();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  swift_getWitnessTable();
  sub_23DB703FC();
  swift_getTupleTypeMetadata3();
  v52 = sub_23DB706BC();
  v51 = swift_getWitnessTable();
  v10 = sub_23DB703FC();
  v55 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v54 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = v49 - v13;
  v56 = a2;
  v14 = v64;
  OpaqueTypeMetadata2 = a2;
  v70 = v64;
  v15 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeMetadata2 = a2;
  v70 = v14;
  v16 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v15;
  v70 = v16;
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  v17 = v8;
  v18 = sub_23DB6F2DC();
  v67 = v9;
  v68 = MEMORY[0x277CDF918];
  v19 = v9;
  v20 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v18;
  v70 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_23DB6FA9C();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata2();
  sub_23DB706BC();
  v49[1] = swift_getWitnessTable();
  v21 = sub_23DB7044C();
  v50 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v49 - v25;
  v61 = v10;
  v27 = sub_23DB6F7AC();
  v59 = *(v27 - 8);
  v60 = v27;
  MEMORY[0x28223BE20](v27);
  v58 = v49 - v28;
  v29 = v56;
  OpaqueTypeMetadata2 = v56;
  v70 = v17;
  v30 = v64;
  v71 = v64;
  v72 = v19;
  type metadata accessor for InstructionCardAndPracticeView(0, &OpaqueTypeMetadata2);
  v31 = v62;
  v32 = sub_23DAD3D38();
  if (v32)
  {
    v33 = sub_23DB6F68C();
    MEMORY[0x28223BE20](v33);
    v49[-6] = v29;
    v49[-5] = v17;
    v49[-4] = v30;
    v49[-3] = v19;
    v49[-2] = v31;
    sub_23DB7043C();
    v34 = swift_getWitnessTable();
    sub_23DAAC170();
    v35 = *(v50 + 8);
    v35(v23, v21);
    sub_23DAAC170();
    v36 = v61;
    v37 = swift_getWitnessTable();
    v38 = v58;
    sub_23DAAA68C(v23, v21, v36, v34, v37);
    v35(v23, v21);
    v35(v26, v21);
  }

  else
  {
    MEMORY[0x28223BE20](v32);
    v49[-6] = v29;
    v49[-5] = v17;
    v49[-4] = v30;
    v49[-3] = v19;
    v49[-2] = v31;
    sub_23DB6F5BC();
    v39 = v54;
    sub_23DB703EC();
    v40 = v61;
    v41 = swift_getWitnessTable();
    v42 = v53;
    sub_23DAAC170();
    v43 = *(v55 + 8);
    v43(v39, v40);
    sub_23DAAC170();
    v44 = swift_getWitnessTable();
    v38 = v58;
    sub_23DAAA784(v39, v21, v40, v44, v41);
    v43(v39, v40);
    v43(v42, v40);
  }

  v45 = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  v65 = v45;
  v66 = v46;
  v47 = v60;
  swift_getWitnessTable();
  sub_23DAAC170();
  return (*(v59 + 8))(v38, v47);
}

uint64_t sub_23DAD4E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v105 = a6;
  v106 = a3;
  v11 = sub_23DB6F2DC();
  v97 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v96 = &v76 - v12;
  v123 = a5;
  v124 = MEMORY[0x277CDF918];
  v13 = a5;
  v107 = a5;
  v92 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v98 = v11;
  v119 = v11;
  v120 = WitnessTable;
  v94 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v99 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v93 = &v76 - v16;
  sub_23DB6FA9C();
  v100 = OpaqueTypeMetadata2;
  v104 = sub_23DB6F2DC();
  v101 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v102 = &v76 - v19;
  v119 = a2;
  v120 = a3;
  v121 = a4;
  v122 = v13;
  v20 = type metadata accessor for InstructionCardAndPracticeView(0, &v119);
  v88 = *(v20 - 8);
  v89 = *(v88 + 64);
  MEMORY[0x28223BE20](v20);
  v86 = &v76 - v21;
  v108 = sub_23DB6F9FC();
  v22 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v24 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = a2;
  v120 = a4;
  v25 = a2;
  v79 = a2;
  v26 = a4;
  v27 = swift_getOpaqueTypeMetadata2();
  v80 = v27;
  v95 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v76 - v28;
  v119 = v25;
  v120 = v26;
  v77 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v119 = v27;
  v120 = OpaqueTypeConformance2;
  v83 = MEMORY[0x277CDEAF8];
  v82 = swift_getOpaqueTypeMetadata2();
  v84 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = &v76 - v30;
  v110 = sub_23DB6F2DC();
  v85 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v109 = &v76 - v34;
  v35 = v20;
  sub_23DB6F9EC();
  v36 = v79;
  sub_23DB6FF8C();
  v37 = *(v22 + 8);
  v90 = v24;
  v91 = v22 + 8;
  v87 = v37;
  v37(v24, v108);
  sub_23DAD3E80();
  v38 = v80;
  v39 = OpaqueTypeConformance2;
  sub_23DB6FF9C();

  v40 = v38;
  (*(v95 + 8))(v29, v38);
  v41 = v88;
  v42 = *(v88 + 16);
  v43 = v86;
  v95 = a1;
  v42(v86, a1, v35);
  v44 = (*(v41 + 80) + 48) & ~*(v41 + 80);
  v45 = swift_allocObject();
  v46 = v106;
  *(v45 + 2) = v36;
  *(v45 + 3) = v46;
  v47 = v107;
  *(v45 + 4) = v77;
  *(v45 + 5) = v47;
  (*(v41 + 32))(&v45[v44], v43, v35);
  v119 = v40;
  v120 = v39;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v82;
  v50 = v78;
  sub_23DB7009C();

  (*(v84 + 8))(v50, v49);
  v117 = v48;
  v118 = MEMORY[0x277CE0790];
  v51 = v110;
  v88 = swift_getWitnessTable();
  sub_23DAAC170();
  v52 = v85;
  v53 = *(v85 + 8);
  v54 = v32;
  v92 = v85 + 8;
  v89 = v53;
  v53(v32, v51);
  sub_23DB6FB2C();
  if (qword_27E2FBC10 != -1)
  {
    swift_once();
  }

  v55 = v96;
  sub_23DB7007C();
  v56 = v90;
  sub_23DB6F9EC();
  v57 = v93;
  v58 = v98;
  v59 = v94;
  sub_23DB6FF8C();
  v87(v56, v108);
  (*(v97 + 8))(v55, v58);
  if (qword_27E2FBBF0 != -1)
  {
    swift_once();
  }

  v119 = (*(*qword_27E30A6D8 + 304))(0xD000000000000020, 0x800000023DB8B930);
  v120 = v60;
  v115 = v58;
  v116 = v59;
  v61 = swift_getOpaqueTypeConformance2();
  sub_23DA16E70();
  v62 = v103;
  v63 = v100;
  sub_23DB6FF1C();

  (*(v99 + 8))(v57, v63);
  v64 = sub_23DADA750(&qword_27E2FCBD0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v113 = v61;
  v114 = v64;
  v65 = v104;
  v66 = swift_getWitnessTable();
  v67 = v102;
  sub_23DAAC170();
  v68 = v101;
  v69 = *(v101 + 8);
  v69(v62, v65);
  v70 = *(v52 + 16);
  v72 = v109;
  v71 = v110;
  v70(v54, v109, v110);
  v119 = v54;
  (*(v68 + 16))(v62, v67, v65);
  v120 = v62;
  v115 = v71;
  v116 = v65;
  v111 = v88;
  v112 = v66;
  sub_23DAC2F38(&v119, 2uLL, &v115);
  v69(v67, v65);
  v73 = v72;
  v74 = v89;
  v89(v73, v71);
  v69(v62, v65);
  return v74(v54, v71);
}

uint64_t sub_23DAD59E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void *))
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  a6(0, v7);
  LOBYTE(v7[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  return sub_23DB6F8FC();
}

uint64_t sub_23DAD5A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[0] = a1;
  v20[1] = a6;
  sub_23DB7044C();
  sub_23DB6F2DC();
  WitnessTable = swift_getWitnessTable();
  v41 = MEMORY[0x277CDF678];
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_23DB6F2DC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = MEMORY[0x277CE0790];
  v36 = swift_getWitnessTable();
  v37 = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v35 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FF1D0, &qword_23DB7DCA0);
  sub_23DB7044C();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  swift_getWitnessTable();
  v10 = sub_23DB703FC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v20 - v15;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v25 = v20[0];
  sub_23DB6F5BC();
  sub_23DB703EC();
  v17 = swift_getWitnessTable();
  sub_23DAAC170();
  v18 = *(v11 + 8);
  v18(v13, v10);
  v32 = 0;
  v33 = 1;
  OpaqueTypeMetadata2 = &v32;
  (*(v11 + 16))(v13, v16, v10);
  v30 = 0;
  v31 = 1;
  v35 = v13;
  v36 = &v30;
  v29[0] = MEMORY[0x277CE1180];
  v29[1] = v10;
  v29[2] = MEMORY[0x277CE1180];
  v26 = MEMORY[0x277CE1170];
  v27 = v17;
  v28 = MEMORY[0x277CE1170];
  sub_23DAC2F38(&OpaqueTypeMetadata2, 3uLL, v29);
  v18(v16, v10);
  return (v18)(v13, v10);
}

uint64_t sub_23DAD5EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v154 = a5;
  v155 = a1;
  v144 = a6;
  v157 = a3;
  v139 = sub_23DB7044C();
  v143 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v138 = v109 - v10;
  v11 = sub_23DB6F2DC();
  v12 = *(v11 - 8);
  v141 = v11;
  v142 = v12;
  MEMORY[0x28223BE20](v11);
  v137 = v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v140 = v109 - v15;
  v16 = sub_23DB70A6C();
  v135 = *(v16 - 8);
  v136 = v16;
  MEMORY[0x28223BE20](v16);
  v133 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v183 = a2;
  *&v183[8] = a3;
  v159 = a2;
  v152 = a4;
  *&v183[16] = a4;
  *&v183[24] = a5;
  v130 = type metadata accessor for InstructionCardAndPracticeView(0, v183);
  v158 = *(v130 - 8);
  v151 = v158[8];
  MEMORY[0x28223BE20](v130);
  v131 = v109 - v18;
  v19 = sub_23DB6F9FC();
  v145 = *(v19 - 8);
  v146 = v19;
  MEMORY[0x28223BE20](v19);
  v125 = v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23DB7044C();
  v123 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v118 = v109 - v22;
  v23 = sub_23DB6F2DC();
  v124 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v116 = v109 - v24;
  v134 = MEMORY[0x277CE1198];
  WitnessTable = swift_getWitnessTable();
  v178[10] = WitnessTable;
  v178[11] = MEMORY[0x277CDF678];
  v132 = MEMORY[0x277CDFAD8];
  v25 = swift_getWitnessTable();
  *v183 = v23;
  *&v183[8] = v25;
  v26 = v25;
  v111 = v25;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v119 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v110 = v109 - v28;
  *v183 = v23;
  *&v183[8] = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *v183 = OpaqueTypeMetadata2;
  *&v183[8] = OpaqueTypeConformance2;
  v30 = OpaqueTypeMetadata2;
  v109[0] = OpaqueTypeMetadata2;
  v109[1] = OpaqueTypeConformance2;
  v31 = OpaqueTypeConformance2;
  v117 = swift_getOpaqueTypeMetadata2();
  v120 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v148 = v109 - v32;
  v33 = sub_23DB6F2DC();
  v126 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v149 = v109 - v34;
  *v183 = v30;
  *&v183[8] = v31;
  v112 = swift_getOpaqueTypeConformance2();
  v178[8] = v112;
  v178[9] = MEMORY[0x277CE0790];
  v35 = swift_getWitnessTable();
  *v183 = v33;
  *&v183[8] = MEMORY[0x277D839B0];
  v113 = v33;
  v36 = MEMORY[0x277D839B0];
  *&v183[16] = v35;
  *&v183[24] = MEMORY[0x277D839C8];
  v37 = v35;
  v114 = v35;
  v38 = MEMORY[0x277D839C8];
  v39 = swift_getOpaqueTypeMetadata2();
  v122 = v39;
  v129 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v147 = v109 - v40;
  *v183 = v33;
  *&v183[8] = v36;
  *&v183[16] = v37;
  *&v183[24] = v38;
  v121 = swift_getOpaqueTypeConformance2();
  *v183 = v39;
  *&v183[8] = v121;
  v127 = &unk_23DB8FE80;
  v150 = swift_getOpaqueTypeMetadata2();
  v128 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v153 = v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v156 = v109 - v43;
  v44 = v157;
  v165 = v159;
  v166 = v157;
  v45 = v152;
  v167 = v152;
  v46 = v155;
  v168 = v154;
  v169 = v155;
  sub_23DB6F68C();
  v47 = v118;
  sub_23DB7043C();
  sub_23DB7062C();
  v48 = v116;
  sub_23DB7004C();
  (*(v123 + 8))(v47, v21);
  v49 = v125;
  sub_23DB6F9EC();
  v50 = v110;
  sub_23DB6FF8C();
  v145[1](v49, v146);
  (*(v124 + 8))(v48, v23);
  v51 = v130;
  sub_23DAD3E80();
  v52 = v109[0];
  sub_23DB6FF9C();

  (*(v119 + 8))(v50, v52);
  v53 = v158;
  v54 = v158[2];
  v145 = (v158 + 2);
  v146 = v54;
  v55 = v131;
  v54(v131, v46, v51);
  v56 = *(v53 + 80);
  v57 = (v56 + 48) & ~v56;
  v58 = swift_allocObject();
  v58[2] = v159;
  v58[3] = v44;
  v59 = v154;
  v58[4] = v45;
  v58[5] = v59;
  v125 = v53[4];
  v158 = v53 + 4;
  v60 = v55;
  (v125)(v58 + v57, v55, v51);
  v61 = v148;
  v62 = v117;
  sub_23DB7009C();

  (*(v120 + 8))(v61, v62);
  swift_beginAccess();
  v183[0] = byte_27E2FE958;
  v63 = v60;
  v64 = v60;
  v65 = v155;
  v146(v64, v155, v51);
  v66 = swift_allocObject();
  v67 = v157;
  v66[2] = v159;
  v66[3] = v67;
  v68 = v152;
  v66[4] = v152;
  v66[5] = v59;
  v69 = v66 + v57;
  v70 = v63;
  v71 = v125;
  (v125)(v69, v63, v51);
  v72 = v113;
  v73 = v149;
  sub_23DB700BC();

  (*(v126 + 8))(v73, v72);
  v149 = "l.practice.label";
  v146(v70, v65, v51);
  sub_23DB70A3C();
  v74 = sub_23DB70A2C();
  v75 = (v56 + 64) & ~v56;
  v76 = swift_allocObject();
  v77 = MEMORY[0x277D85700];
  *(v76 + 2) = v74;
  *(v76 + 3) = v77;
  v78 = v157;
  *(v76 + 4) = v159;
  *(v76 + 5) = v78;
  v79 = v154;
  *(v76 + 6) = v68;
  *(v76 + 7) = v79;
  v71(&v76[v75], v70, v51);
  v80 = v133;
  v82 = v121;
  v81 = v122;
  sub_23DA0CF18();
  v107 = v81;
  v108 = v82;
  v83 = v82;
  v84 = v81;
  v85 = v153;
  v86 = v80;
  v87 = v80;
  v88 = v147;
  sub_23DA0D0C4(0, v86, 0xD00000000000002ELL, v149 | 0x8000000000000000, 432, &unk_23DB7DCB0, v76, v153, v107, v108);
  (*(v135 + 8))(v87, v136);
  (*(v129 + 8))(v88, v84);
  *v183 = v84;
  *&v183[8] = v83;
  v149 = swift_getOpaqueTypeConformance2();
  v89 = v150;
  sub_23DAAC170();
  v90 = v128;
  v91 = *(v128 + 8);
  v151 = v128 + 8;
  v158 = v91;
  (v91)(v85, v89);
  v92 = sub_23DB7018C();
  sub_23DB7062C();
  sub_23DB6F10C();
  *&v183[6] = v179;
  *&v183[22] = v180;
  *&v183[38] = v181;
  *&v182[10] = *v183;
  *v182 = v92;
  *&v182[8] = 256;
  *&v182[26] = *&v183[16];
  *&v182[42] = *&v183[32];
  *&v182[56] = *(&v181 + 1);
  v160 = v159;
  v161 = v157;
  v162 = v152;
  v163 = v79;
  v164 = v155;
  sub_23DB6F68C();
  v93 = v138;
  sub_23DB7043C();
  sub_23DB7062C();
  v94 = v139;
  v95 = swift_getWitnessTable();
  v96 = v137;
  sub_23DB7004C();
  (*(v143 + 8))(v93, v94);
  v178[3] = v95;
  v178[4] = MEMORY[0x277CDF678];
  v97 = v141;
  v98 = swift_getWitnessTable();
  v99 = v140;
  sub_23DAAC170();
  v100 = v142;
  v101 = *(v142 + 8);
  v101(v96, v97);
  v102 = *(v90 + 16);
  v103 = v153;
  v104 = v150;
  v102(v153, v156, v150);
  v174 = *v182;
  v175 = *&v182[16];
  v176 = *&v182[32];
  v177 = *&v182[48];
  v178[0] = v103;
  v178[1] = &v174;
  (*(v100 + 16))(v96, v99, v97);
  v178[2] = v96;
  sub_23DA0E2B4(v182, v183, &qword_27E2FF1D0, &qword_23DB7DCA0);
  v173[0] = v104;
  v173[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF1D0, &qword_23DB7DCA0);
  v173[2] = v97;
  v170 = v149;
  v171 = sub_23DADD8C0();
  v172 = v98;
  sub_23DAC2F38(v178, 3uLL, v173);
  sub_23DA17988(v182, &qword_27E2FF1D0, &qword_23DB7DCA0);
  v101(v99, v97);
  v105 = v158;
  (v158)(v156, v104);
  v101(v96, v97);
  *v183 = v174;
  *&v183[16] = v175;
  *&v183[32] = v176;
  *&v183[48] = v177;
  sub_23DA17988(v183, &qword_27E2FF1D0, &qword_23DB7DCA0);
  return v105(v153, v104);
}

uint64_t sub_23DAD6EDC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  v11(0, v13, v4);
  sub_23DAAC170();
  sub_23DAAC170();
  return (*(v3 + 8))(v6, a2);
}

uint64_t sub_23DAD6FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  type metadata accessor for InstructionCardAndPracticeView(0, v6);
  LOBYTE(v6[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F8FC();
  result = swift_beginAccess();
  byte_27E2FE958 = (byte_27E2FE958 & 1) == 0;
  return result;
}

void *sub_23DAD7084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  type metadata accessor for InstructionCardAndPracticeView(0, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  result = sub_23DB6F8EC();
  if ((v6[0] & 1) == 0)
  {
    LOBYTE(v6[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    return sub_23DB6F8FC();
  }

  return result;
}

uint64_t sub_23DAD7128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a3;
  sub_23DB70A3C();
  v7[11] = sub_23DB70A2C();
  v9 = sub_23DB70A1C();

  return MEMORY[0x2822009F8](sub_23DAD71C8, v9, v8);
}

uint64_t sub_23DAD71C8()
{
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  *(v0 + 16) = v4;
  *(v0 + 32) = v3;
  type metadata accessor for InstructionCardAndPracticeView(0, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
  sub_23DB6F8EC();
  if ((*(v0 + 16) & 1) == 0)
  {
    *(v0 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
    sub_23DB6F8FC();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23DAD72C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[0] = v8;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  v12(0, v14, v5);
  sub_23DAAC170();
  sub_23DAAC170();
  return (*(v4 + 8))(v7, a3);
}

uint64_t AdaptiveStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_23DB7044C();
  sub_23DB703FC();
  v19[0] = sub_23DB6F2DC();
  sub_23DB6F7AC();
  v5 = sub_23DB702AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v12 = v2[1];
  v20[0] = *v2;
  v20[1] = v12;
  v13 = v2[3];
  v20[2] = v2[2];
  v20[3] = v13;
  v19[4] = v3;
  v19[5] = v4;
  v19[6] = v20;
  WitnessTable = swift_getWitnessTable();
  v19[10] = swift_getWitnessTable();
  v19[11] = MEMORY[0x277CDF918];
  v15 = swift_getWitnessTable();
  v19[8] = WitnessTable;
  v19[9] = v15;
  v16 = swift_getWitnessTable();
  sub_23DB7029C();
  v19[7] = v16;
  swift_getWitnessTable();
  sub_23DAAC170();
  v17 = *(v6 + 8);
  v17(v8, v5);
  sub_23DAAC170();
  return (v17)(v11, v5);
}

uint64_t sub_23DAD7660@<X0>(uint64_t a4@<X8>)
{
  v46 = a4;
  v4 = sub_23DB703FC();
  v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v39 - v5;
  v43 = v6;
  v7 = sub_23DB6F2DC();
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v39 - v11;
  v12 = sub_23DB7044C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  v19 = sub_23DB6F7AC();
  v44 = *(v19 - 8);
  v45 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  if (sub_23DAD3D38())
  {
    v22 = MEMORY[0x277CDF918];
    sub_23DB7043C();
    WitnessTable = swift_getWitnessTable();
    sub_23DAAC170();
    v24 = *(v13 + 8);
    v24(v15, v12);
    sub_23DAAC170();
    v47 = swift_getWitnessTable();
    v48 = v22;
    v25 = swift_getWitnessTable();
    sub_23DAAA68C(v15, v12, v7, WitnessTable, v25);
    v24(v15, v12);
    v24(v18, v12);
    v26 = v22;
  }

  else
  {
    v27 = MEMORY[0x277CDF918];
    v28 = v43;
    v29 = v39;
    sub_23DB703EC();
    sub_23DB6FB2C();
    if (qword_27E2FBC10 != -1)
    {
      swift_once();
    }

    v30 = swift_getWitnessTable();
    sub_23DB7007C();
    (*(v40 + 8))(v29, v28);
    v53 = v30;
    v54 = v27;
    v26 = v27;
    v31 = swift_getWitnessTable();
    v32 = v41;
    sub_23DAAC170();
    v33 = *(v42 + 8);
    v33(v9, v7);
    sub_23DAAC170();
    v34 = swift_getWitnessTable();
    sub_23DAAA784(v9, v12, v7, v34, v31);
    v33(v9, v7);
    v33(v32, v7);
  }

  v35 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  v52 = v26;
  v36 = swift_getWitnessTable();
  v49 = v35;
  v50 = v36;
  v37 = v45;
  swift_getWitnessTable();
  sub_23DAAC170();
  return (*(v44 + 8))(v21, v37);
}

__n128 sub_23DAD7C60@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v8 = sub_23DB6F55C();
  v39 = *(v8 - 8);
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF098, &qword_23DB7D958);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF0A0, &qword_23DB7D960);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF0A8, &qword_23DB7D968);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  *v13 = sub_23DB6F68C();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF0B0, &qword_23DB7D970);
  sub_23DAD8050(a2, a3, a4 & 1, &v13[*(v20 + 44)]);
  v21 = sub_23DB6FB4C();
  if ((a4 & 1) == 0)
  {

    sub_23DB70ACC();
    v22 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a3, 0);
    (*(v39 + 8))(v10, v40);
  }

  sub_23DB6EFAC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_23DA17A54(v13, v16, &qword_27E2FF098, &qword_23DB7D958);
  v31 = &v16[*(v14 + 36)];
  *v31 = v21;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_23DB6FB5C();
  sub_23DA17A54(v16, v19, &qword_27E2FF0A0, &qword_23DB7D960);
  v33 = &v19[*(v17 + 36)];
  *v33 = v32;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  v33[40] = 1;
  sub_23DB7062C();
  sub_23DB6F34C();
  v34 = v41;
  sub_23DA17A54(v19, v41, &qword_27E2FF0A8, &qword_23DB7D968);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF0B8, &unk_23DB7D978) + 36);
  v36 = v47;
  *(v35 + 64) = v46;
  *(v35 + 80) = v36;
  *(v35 + 96) = v48;
  v37 = v43;
  *v35 = v42;
  *(v35 + 16) = v37;
  result = v45;
  *(v35 + 32) = v44;
  *(v35 + 48) = result;
  return result;
}

uint64_t sub_23DAD8050@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v131 = a4;
  v7 = sub_23DB6EA1C();
  MEMORY[0x28223BE20](v7 - 8);
  v108 = &v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FC2F8, &qword_23DB74470);
  MEMORY[0x28223BE20](v9 - 8);
  v125 = (&v108 - v10);
  v11 = sub_23DB6E9BC();
  v121 = *(v11 - 8);
  v122 = v11;
  MEMORY[0x28223BE20](v11);
  v123 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23DB6F55C();
  v127 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF0C0, &qword_23DB7D988);
  v117 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v111 = &v108 - v16;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF0C8, &qword_23DB7D990);
  MEMORY[0x28223BE20](v110);
  v115 = &v108 - v17;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF0D0, &qword_23DB7D998);
  MEMORY[0x28223BE20](v113);
  v116 = &v108 - v18;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF0D8, &qword_23DB7D9A0);
  MEMORY[0x28223BE20](v114);
  v119 = &v108 - v19;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF0E0, &qword_23DB7D9A8);
  MEMORY[0x28223BE20](v118);
  v130 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v112 = &v108 - v22;
  MEMORY[0x28223BE20](v23);
  v132 = &v108 - v24;
  v124 = a1;
  v25 = (a1 + OBJC_IVAR____TtC28AccessibilitySharedUISupport4Page_title);
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  v137 = v26;
  v138 = v27;
  sub_23DA16E70();

  v28 = sub_23DB6FD8C();
  v30 = v29;
  v32 = v31;
  LODWORD(v128) = a3;
  v129 = a2;
  v109 = v13;
  v126 = v15;
  if (a3)
  {
    if ((a2 & 1) == 0)
    {
LABEL_3:
      sub_23DB6FBDC();
      goto LABEL_6;
    }
  }

  else
  {

    sub_23DB70ACC();
    v33 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(a2, 0);
    (*(v127 + 8))(v15, v13);
    if (v137 != 1)
    {
      goto LABEL_3;
    }
  }

  sub_23DB6FC4C();
LABEL_6:
  v34 = sub_23DB6FD3C();
  v36 = v35;
  v38 = v37;
  v40 = v39;

  sub_23DA16EC4(v28, v30, v32 & 1);

  v137 = v34;
  v138 = v36;
  v41 = v38 & 1;
  v139 = v38 & 1;
  v141 = v40;
  LOWORD(v142) = 256;
  sub_23DB6FBFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FE708, &qword_23DB7D9B0);
  sub_23DADCB08(&qword_27E2FE710, &qword_27E2FE708, &qword_23DB7D9B0);
  v42 = v111;
  sub_23DB6FE1C();
  sub_23DA16EC4(v34, v36, v41);

  sub_23DB7063C();
  sub_23DB6F34C();
  v43 = v115;
  (*(v117 + 32))(v115, v42, v120);
  v44 = &v43[*(v110 + 36)];
  v45 = v160;
  *(v44 + 4) = v159;
  *(v44 + 5) = v45;
  *(v44 + 6) = v161;
  v46 = v156;
  *v44 = v155;
  *(v44 + 1) = v46;
  v47 = v158;
  *(v44 + 2) = v157;
  *(v44 + 3) = v47;
  KeyPath = swift_getKeyPath();
  v49 = v43;
  v50 = v116;
  sub_23DA17A54(v49, v116, &qword_27E2FF0C8, &qword_23DB7D990);
  v51 = v50 + *(v113 + 36);
  *v51 = KeyPath;
  *(v51 + 8) = 0;
  LOBYTE(KeyPath) = sub_23DB6FB4C();
  sub_23DB6EFAC();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v60 = v50;
  v61 = v119;
  sub_23DA17A54(v60, v119, &qword_27E2FF0D0, &qword_23DB7D998);
  v62 = v61 + *(v114 + 36);
  *v62 = KeyPath;
  *(v62 + 8) = v53;
  *(v62 + 16) = v55;
  *(v62 + 24) = v57;
  *(v62 + 32) = v59;
  *(v62 + 40) = 0;
  LOBYTE(KeyPath) = sub_23DB6FB5C();
  sub_23DB6EFAC();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v61;
  v72 = v112;
  sub_23DA17A54(v71, v112, &qword_27E2FF0D8, &qword_23DB7D9A0);
  v73 = v72 + *(v118 + 36);
  *v73 = KeyPath;
  *(v73 + 8) = v64;
  *(v73 + 16) = v66;
  *(v73 + 24) = v68;
  *(v73 + 32) = v70;
  *(v73 + 40) = 0;
  sub_23DA17A54(v72, v132, &qword_27E2FF0E0, &qword_23DB7D9A8);
  swift_getKeyPath();
  swift_getKeyPath();
  v74 = v125;
  sub_23DB6EF0C(v125);

  v75 = v121;
  v76 = v122;
  v77 = *(v121 + 48);
  if (v77(v74, 1, v122) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DB6EF0C(&v137);

    sub_23DB6EA0C();
    sub_23DB6E9CC();
    v78 = v77(v74, 1, v76);
    v79 = v126;
    if (v78 != 1)
    {
      sub_23DA17988(v74, &qword_27E2FC2F8, &qword_23DB74470);
    }
  }

  else
  {
    (*(v75 + 32))(v123, v74, v76);
    v79 = v126;
  }

  v80 = sub_23DB6FD7C();
  v82 = v81;
  v84 = v83;
  if ((v128 & 1) == 0)
  {
    v85 = v129;

    sub_23DB70ACC();
    v86 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v85, 0);
    (*(v127 + 8))(v79, v109);
    if ((v137 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    sub_23DB6FBBC();
    goto LABEL_15;
  }

  if (v129)
  {
    goto LABEL_14;
  }

LABEL_12:
  sub_23DB6FBCC();
LABEL_15:
  v87 = sub_23DB6FD3C();
  v127 = v88;
  v128 = v87;
  v90 = v89;
  v129 = v91;

  sub_23DA16EC4(v80, v82, v84 & 1);

  v126 = swift_getKeyPath();
  sub_23DB7063C();
  sub_23DB6F34C();
  *&v152[55] = v165;
  *&v152[71] = v166;
  *&v152[87] = v167;
  *&v152[103] = v168;
  *&v152[7] = v162;
  *&v152[23] = v163;
  v92 = v90 & 1;
  v154 = v90 & 1;
  *&v152[39] = v164;
  v93 = v132;
  v94 = v130;
  sub_23DA0E2B4(v132, v130, &qword_27E2FF0E0, &qword_23DB7D9A8);
  v95 = v131;
  sub_23DA0E2B4(v94, v131, &qword_27E2FF0E0, &qword_23DB7D9A8);
  v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF0E8, &qword_23DB7DA48) + 48);
  *(v135 + 9) = *v152;
  *(&v135[4] + 9) = *&v152[64];
  v97 = v95 + v96;
  v99 = v127;
  v98 = v128;
  *&v133 = v128;
  *(&v133 + 1) = v127;
  LOBYTE(v134) = v92;
  *(&v134 + 1) = *v153;
  DWORD1(v134) = *&v153[3];
  v100 = v129;
  v101 = v126;
  *(&v134 + 1) = v129;
  *&v135[0] = v126;
  BYTE8(v135[0]) = 0;
  *(&v135[5] + 9) = *&v152[80];
  *(&v135[6] + 9) = *&v152[96];
  *(&v135[7] + 1) = *&v152[111];
  *(&v135[1] + 9) = *&v152[16];
  *(&v135[2] + 9) = *&v152[32];
  *(&v135[3] + 9) = *&v152[48];
  v136 = 256;
  *(v97 + 160) = 256;
  v102 = v135[7];
  *(v97 + 128) = v135[6];
  *(v97 + 144) = v102;
  v103 = v135[3];
  *(v97 + 64) = v135[2];
  *(v97 + 80) = v103;
  v104 = v135[5];
  *(v97 + 96) = v135[4];
  *(v97 + 112) = v104;
  v105 = v134;
  *v97 = v133;
  *(v97 + 16) = v105;
  v106 = v135[1];
  *(v97 + 32) = v135[0];
  *(v97 + 48) = v106;
  sub_23DA0E2B4(&v133, &v137, qword_27E2FF0F0, &qword_23DB7DA50);
  sub_23DA17988(v93, &qword_27E2FF0E0, &qword_23DB7D9A8);
  v148 = *&v152[64];
  v149 = *&v152[80];
  *v150 = *&v152[96];
  v144 = *v152;
  v145 = *&v152[16];
  v146 = *&v152[32];
  v137 = v98;
  v138 = v99;
  v139 = v92;
  *v140 = *v153;
  *&v140[3] = *&v153[3];
  v141 = v100;
  v142 = v101;
  v143 = 0;
  *&v150[15] = *&v152[111];
  v147 = *&v152[48];
  v151 = 256;
  sub_23DA17988(&v137, qword_27E2FF0F0, &qword_23DB7DA50);
  return sub_23DA17988(v94, &qword_27E2FF0E0, &qword_23DB7D9A8);
}

uint64_t sub_23DAD8D4C@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = qword_27E2FBBF0;

  if (v5 != -1)
  {
    swift_once();
  }

  result = (*(*qword_27E30A6D8 + 304))(0xD00000000000001ELL, 0x800000023DB8B8F0);
  *a1 = v4;
  a1[1] = v3;
  a1[2] = result;
  a1[3] = v7;
  a1[4] = 0xD000000000000016;
  a1[5] = 0x800000023DB8B910;
  return result;
}

uint64_t sub_23DAD8E24@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = 0;
  a1[5] = 0;
}

uint64_t sub_23DAD8E6C()
{
  v1 = sub_23DB6FA4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF348, &unk_23DB7DEB0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18[-v6];
  v8 = v0[1];
  v21 = v0[2];
  v22 = v8;
  v9 = swift_allocObject();
  v10 = v0[1];
  v9[1] = *v0;
  v9[2] = v10;
  v9[3] = v0[2];
  v19 = v0;

  sub_23DAB668C(&v22, v20);
  sub_23DA0E2B4(&v21, v20, &qword_27E2FC358, &qword_23DB74690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF350, &qword_23DB7DEC0);
  sub_23DA17B80(&qword_27E2FF358, &qword_27E2FF350, &qword_23DB7DEC0, MEMORY[0x277CE1138]);
  sub_23DB703CC();
  if (qword_27E2FBB80 != -1)
  {
    swift_once();
  }

  v11 = qword_27E30A658;
  KeyPath = swift_getKeyPath();
  v13 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FF360, &qword_23DB7DEC8) + 36)];
  *v13 = KeyPath;
  v13[1] = v11;

  v14 = sub_23DB700EC();
  v15 = swift_getKeyPath();
  v16 = &v7[*(v5 + 36)];
  *v16 = v15;
  v16[1] = v14;
  sub_23DB6FA3C();
  sub_23DADBC48(&qword_27E2FF368, &qword_27E2FF348, &unk_23DB7DEB0, sub_23DADFD80);
  sub_23DADA750(&qword_27E2FCFB8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  sub_23DB6FE2C();
  (*(v2 + 8))(v4, v1);
  return sub_23DA17988(v7, &qword_27E2FF348, &unk_23DB7DEB0);
}

__n128 sub_23DAD91C0@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23DB6F5BC();
  v18 = 1;
  sub_23DAD9250(a1, &v12);
  v5 = v13;
  v6 = v14;
  v7 = v15;
  v8 = v16;
  v9 = v17;
  result = v12;
  v11 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v11;
  *(a2 + 24) = result;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 65) = v9;
  return result;
}

uint64_t sub_23DAD9250@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[5];
  if (v3)
  {

    v3 = sub_23DB702BC();
  }

  sub_23DA16E70();

  v4 = sub_23DB6FD8C();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v8 &= 1u;
  sub_23DA6D470(v4, v6, v8);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  *(a2 + 40) = 256;
  sub_23DA16EC4(v4, v6, v8);
}

uint64_t sub_23DAD9354(uint64_t a1)
{
  v3 = sub_23DB6F55C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 36);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_23DB70ACC();
    v9 = sub_23DB6FAFC();
    sub_23DB6EBCC();

    sub_23DB6F54C();
    swift_getAtKeyPath();
    sub_23DA4FF14(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_23DAD94E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = *(a1 + 16);
  sub_23DB702AC();
  sub_23DB6F2DC();
  swift_getTupleTypeMetadata3();
  sub_23DB706BC();
  v35[1] = swift_getWitnessTable();
  v5 = sub_23DB703FC();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v37 = v35 - v9;
  v10 = sub_23DB6F2DC();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v35 - v14;
  v16 = sub_23DB6F7AC();
  v39 = *(v16 - 8);
  v40 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v35 - v17;
  v19 = sub_23DAD9354(a1);
  if (v19)
  {
    v20 = MEMORY[0x277CDF918];
    sub_23DB6FB2C();
    if (qword_27E2FBC10 != -1)
    {
      swift_once();
    }

    v21 = *(a1 + 24);
    sub_23DB7007C();
    v42 = v21;
    v43 = v20;
    WitnessTable = swift_getWitnessTable();
    sub_23DAAC170();
    v23 = *(v36 + 8);
    v23(v12, v10);
    sub_23DAAC170();
    v24 = swift_getWitnessTable();
    sub_23DAAA68C(v12, v10, v5, WitnessTable, v24);
    v25 = v20;
    v23(v12, v10);
    v23(v15, v10);
  }

  else
  {
    MEMORY[0x28223BE20](v19);
    v21 = *(a1 + 24);
    v35[-4] = v4;
    v35[-3] = v21;
    v35[-2] = v2;
    sub_23DB6F5BC();
    sub_23DB703EC();
    v26 = swift_getWitnessTable();
    v27 = v37;
    sub_23DAAC170();
    v28 = *(v38 + 8);
    v28(v7, v5);
    sub_23DAAC170();
    v48 = v21;
    v29 = MEMORY[0x277CDF918];
    v49 = MEMORY[0x277CDF918];
    v30 = swift_getWitnessTable();
    sub_23DAAA784(v7, v10, v5, v30, v26);
    v28(v7, v5);
    v28(v27, v5);
    v25 = v29;
  }

  v46 = v21;
  v47 = v25;
  v31 = swift_getWitnessTable();
  v32 = swift_getWitnessTable();
  v44 = v31;
  v45 = v32;
  v33 = v40;
  swift_getWitnessTable();
  sub_23DAAC170();
  return (*(v39 + 8))(v18, v33);
}

uint64_t sub_23DAD9A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v7 = sub_23DB702AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v22 - v9;
  v11 = sub_23DB6F2DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v22 - v16;
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a1;
  sub_23DB7029C();
  sub_23DB7062C();
  v28[5] = a3;
  WitnessTable = swift_getWitnessTable();
  sub_23DB7004C();
  (*(v8 + 8))(v10, v7);
  v28[3] = WitnessTable;
  v28[4] = MEMORY[0x277CDF678];
  v19 = swift_getWitnessTable();
  sub_23DAAC170();
  v20 = *(v12 + 8);
  v20(v14, v11);
  v26 = 0;
  v27 = 1;
  v28[0] = &v26;
  (*(v12 + 16))(v14, v17, v11);
  v24 = 0;
  v25 = 1;
  v28[1] = v14;
  v28[2] = &v24;
  v23[0] = MEMORY[0x277CE1180];
  v23[1] = v11;
  v23[2] = MEMORY[0x277CE1180];
  v22[7] = MEMORY[0x277CE1170];
  v22[8] = v19;
  v22[9] = MEMORY[0x277CE1170];
  sub_23DAC2F38(v28, 3uLL, v23);
  v20(v17, v11);
  return (v20)(v14, v11);
}

uint64_t sub_23DAD9DB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DAAC170();
  sub_23DAAC170();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_23DAD9E90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23DB6F52C();
  *a1 = result;
  return result;
}

uint64_t sub_23DAD9EE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23DB6F45C();
  *a1 = result;
  return result;
}

uint64_t sub_23DAD9F14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_23DB6F45C();
  *a1 = result;
  return result;
}

uint64_t sub_23DADA00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23DADA048(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23DADA090(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_23DADA0FC()
{
  result = qword_27E2FEDC0;
  if (!qword_27E2FEDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2FEDC8, &qword_23DB7D350);
    sub_23DAC5D20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEDC0);
  }

  return result;
}

uint64_t sub_23DADA188(void *a1)
{
  sub_23DB7044C();
  sub_23DB703FC();
  sub_23DB6F2DC();
  sub_23DB6F7AC();
  sub_23DB702AC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_23DADA2F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE78, &unk_23DB791B0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_23DADA448(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE78, &unk_23DB791B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FD4F8, &unk_23DB7D3A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_23DADA5A4(uint64_t a1)
{
  sub_23DADA640(319);
  if (v1 <= 0x3F)
  {
    sub_23DA5195C(319);
    if (v2 <= 0x3F)
    {
      sub_23DA557F4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23DADA640(uint64_t a1)
{
  if (!qword_27E2FEDE0)
  {
    type metadata accessor for Page(255);
    sub_23DADA750(&qword_27E2FCBD8, type metadata accessor for Page, &protocol conformance descriptor for Page);
    v1 = sub_23DB6F21C();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2FEDE0);
    }
  }
}

uint64_t sub_23DADA750(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23DADA798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DADA800(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23DADA860()
{
  result = qword_27E2FEE00;
  if (!qword_27E2FEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2FEE00);
  }

  return result;
}

uint64_t sub_23DADA8C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2FCE78, &unk_23DB791B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}