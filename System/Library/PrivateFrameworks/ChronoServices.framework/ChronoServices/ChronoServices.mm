void sub_195EB45B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_195EB48FC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 widgetExtensionContainers];
  type metadata accessor for CHSWidgetExtensionContainer(0);
  v5 = sub_195FA0B38();

  v6 = [v2 allExtensions];
  sub_195EB4B30(0, &qword_1EAEEC4B8, off_1E7452788);
  sub_195EB4C00();
  v7 = sub_195FA0BF8();

  v8 = *&v2[OBJC_IVAR___CHSWidgetExtensionSet_equivalentBundleIdentifierResolver];
  v9 = *&v2[OBJC_IVAR___CHSWidgetExtensionSet_iconResolver];
  v10 = objc_allocWithZone(CHSWidgetExtensionSet);
  v11 = OBJC_IVAR___CHSWidgetExtensionSet_equivalentBundleIdentifierResolver;
  *&v10[OBJC_IVAR___CHSWidgetExtensionSet_equivalentBundleIdentifierResolver] = 0;
  if (v8)
  {
    swift_unknownObjectRetain();
    v12 = v8;
  }

  else
  {
    v13 = objc_opt_self();
    swift_unknownObjectRetain();
    v12 = [v13 defaultResolver];
  }

  *&v10[v11] = v12;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  *&v10[OBJC_IVAR___CHSWidgetExtensionSet_allExtensions] = v7;
  *&v10[OBJC_IVAR___CHSWidgetExtensionSet_iconResolver] = v9;
  *&v10[OBJC_IVAR___CHSWidgetExtensionSet_widgetExtensionContainers] = v5;
  v17.receiver = v10;
  v17.super_class = CHSWidgetExtensionSet;
  v14 = objc_msgSendSuper2(&v17, sel_init);
  v15 = swift_unknownObjectRelease();
  result = type metadata accessor for CHSWidgetExtensionSet(v15);
  a1[3] = result;
  *a1 = v14;
  return result;
}

uint64_t sub_195EB4B30(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_195EB4C00()
{
  result = qword_1EAEEC4A8;
  if (!qword_1EAEEC4A8)
  {
    sub_195EB4B30(255, &qword_1EAEEC4B8, off_1E7452788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC4A8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_195EB4D24(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_195FA08B8();
  v8 = v7;
  v9 = a1;
  v10 = a4(v6, v8);

  return v10;
}

id sub_195EB4D9C(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v36 = a2;
  v3 = [v2 widgetExtensionContainers];
  type metadata accessor for CHSWidgetExtensionContainer(0);
  v4 = sub_195FA0B38();

  v30 = v4;
  if (v4 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_195FA0E88())
  {
    v6 = 0;
    v7 = 0;
    v33 = v30 & 0xFFFFFFFFFFFFFF8;
    v34 = v30 & 0xC000000000000001;
    v31 = i;
    v32 = v30 + 32;
    while (2)
    {
      if (v34)
      {
        v8 = MEMORY[0x19A8C4520](v6, v30);
        v9 = __OFADD__(v6, 1);
        v10 = v6 + 1;
        if (!v9)
        {
LABEL_7:
          v38 = v7;
          v39 = v8;
          v11 = *&v8[OBJC_IVAR___CHSWidgetExtensionContainer_storage];
          v37 = v10;
          if (v11 >> 62)
          {
            v12 = sub_195FA0E88();
          }

          else
          {
            v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v13 = 0;
          v14 = MEMORY[0x1E69E7CC0];
          while (v12 != v13)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x19A8C4520](v13, v11);
            }

            else
            {
              if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_31;
              }

              v15 = *(v11 + 8 * v13 + 32);
            }

            v16 = v15;
            v17 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            v18 = [v15 identity];

            v19 = &v18[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
            swift_beginAccess();
            v21 = *v19;
            v20 = *(v19 + 1);

            ++v13;
            if (v20)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v14 = sub_195EB50CC(0, v14[2] + 1, 1, v14);
              }

              v23 = v14[2];
              v22 = v14[3];
              if (v23 >= v22 >> 1)
              {
                v14 = sub_195EB50CC((v22 > 1), v23 + 1, 1, v14);
              }

              v14[2] = v23 + 1;
              v24 = &v14[2 * v23];
              v24[4] = v21;
              v24[5] = v20;
              v13 = v17;
            }
          }

          v40[0] = v35;
          v40[1] = v36;
          MEMORY[0x1EEE9AC00](v25);
          v29[2] = v40;
          v26 = v14;
          v7 = v38;
          v27 = sub_195EB5220(sub_195EB5204, v29, v26);

          if (v27)
          {

            return v39;
          }

          v6 = v37;
          if (v37 != v31)
          {
            continue;
          }

          goto LABEL_35;
        }
      }

      else
      {
        if (v6 >= *(v33 + 16))
        {
          goto LABEL_33;
        }

        v8 = *(v32 + 8 * v6);
        v9 = __OFADD__(v6, 1);
        v10 = v6 + 1;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      break;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:

  return 0;
}

void *sub_195EB50CC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA58, &qword_195FAC978);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA60, &qword_195FAC980);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_195EB5220(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_195EB52CC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_195FA12B8() & 1;
  }
}

uint64_t TypedIdentifier.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_195EB539C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_195EB540C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_195EB547C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_195EB54F0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_195EB5564();
  a1[1] = v2;
}

uint64_t TypedIdentifier.description.getter()
{
  v0 = sub_195EB5564();

  return v0;
}

uint64_t sub_195EB5570()
{
  v0 = sub_195EB5564();

  return v0;
}

uint64_t CHSWidgetExtensionContainer.localExtensions.getter()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionContainer_storage);
  v11 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_195FA0E88())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x19A8C4520](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 identity];
      v8 = [v7 isRemote];

      if (v8)
      {
      }

      else
      {
        sub_195FA0FA8();
        sub_195FA0FD8();
        sub_195FA0FE8();
        sub_195FA0FB8();
      }

      ++v3;
      if (v6 == i)
      {
        v9 = v11;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_16:

  return v9;
}

char *sub_195EB5868(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    goto LABEL_19;
  }

  v5 = sub_195EB5D44(a1, a2);
  v7 = v6;
  v37 = 44230;
  v8 = sub_195FA0948();
  if (!v7)
  {

    goto LABEL_19;
  }

  if (v5 == v8 && v7 == v9)
  {

    goto LABEL_11;
  }

  v10 = sub_195FA12B8();

  if ((v10 & 1) == 0)
  {
LABEL_19:

    return 0;
  }

LABEL_11:
  v11 = sub_195FA0978();
  v12 = sub_195EB82CC(v11, a1, a2);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_75;
  }

  v13 = v12 >> 16;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v37 = a1;
    v38 = a2 & 0xFFFFFFFFFFFFFFLL;
    v15 = &v37 + v13;
    v22 = *(&v37 + v13);
    LODWORD(v13) = *(&v37 + v13);
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    v17 = (__clz(v13 ^ 0xFF) - 24);
    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v13) = ((v13 & 0xF) << 12) | ((v15[1] & 0x3F) << 6) | v15[2] & 0x3F;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      else
      {
        LODWORD(v13) = ((v13 & 0xF) << 18) | ((v15[1] & 0x3F) << 12) | ((v15[2] & 0x3F) << 6) | v15[3] & 0x3F;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v14 = sub_195FA0F98();
  }

  v15 = (v14 + v13);
  v16 = *(v14 + v13);
  LODWORD(v13) = *(v14 + v13);
  if ((v16 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  v17 = (__clz(v13 ^ 0xFF) - 24);
  if (v17 <= 2)
  {
LABEL_22:
    if (v17 != 1)
    {
      LODWORD(v13) = v15[1] & 0x3F | ((v13 & 0x1F) << 6);
      if (!v13)
      {
        goto LABEL_24;
      }

      goto LABEL_26;
    }

LABEL_23:
    if (!v13)
    {
      goto LABEL_24;
    }

    goto LABEL_26;
  }

  if (v17 == 3)
  {
    v18 = v15[1];
    v19 = v15[2];
    v20 = ((v13 & 0xF) << 12) | ((v18 & 0x3F) << 6);
  }

  else
  {
    v35 = v15[1];
    v36 = v15[2];
    v19 = v15[3];
    v20 = ((v13 & 0xF) << 18) | ((v35 & 0x3F) << 12) | ((v36 & 0x3F) << 6);
  }

  LODWORD(v13) = v20 & 0xFFFFFFC0 | v19 & 0x3F;
  if (!v13)
  {
    goto LABEL_24;
  }

  do
  {
LABEL_26:
    v24 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v24) = 1;
    }

    v25 = 4 << v24;
    v21 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v26 = sub_195FA0978();
      if ((v26 & 0xC) == v25 || (v26 & 1) == 0)
      {
        break;
      }

      v28 = v26 >> 16;
      if (v26 >> 16 >= v3)
      {
        goto LABEL_74;
      }

LABEL_40:
      if ((a2 & 0x1000000000000000) != 0)
      {
        v31 = sub_195FA0F28();
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v37 = a1;
          v38 = a2 & 0xFFFFFFFFFFFFFFLL;
          v30 = &v37 + v28;
        }

        else
        {
          v29 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v29 = sub_195FA0F98();
          }

          v30 = (v29 + v28);
        }

        v31 = *v30;
        if (*v30 < 0)
        {
          v34 = (__clz(v31 ^ 0xFF) - 24);
          if (v34 > 2)
          {
            if (v34 == 3)
            {
              v31 = ((v31 & 0xF) << 12) | ((v30[1] & 0x3F) << 6) | v30[2] & 0x3F;
            }

            else
            {
              v31 = ((v31 & 0xF) << 18) | ((v30[1] & 0x3F) << 12) | ((v30[2] & 0x3F) << 6) | v30[3] & 0x3F;
            }
          }

          else if (v34 != 1)
          {
            v31 = v30[1] & 0x3F | ((v31 & 0x1F) << 6);
          }
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_195EB8364(0, *(v21 + 2) + 1, 1, v21);
      }

      v33 = *(v21 + 2);
      v32 = *(v21 + 3);
      if (v33 >= v32 >> 1)
      {
        v21 = sub_195EB8364((v32 > 1), v33 + 1, 1, v21);
      }

      *(v21 + 2) = v33 + 1;
      *&v21[4 * v33 + 32] = v31;
      LODWORD(v13) = v13 - 1;
      if (!v13)
      {
        goto LABEL_61;
      }
    }

    if ((v26 & 0xC) == v25)
    {
      v26 = sub_195F67F6C(v26, a1, a2);
    }

    v28 = v26 >> 16;
    if (v26 >> 16 < v3)
    {
      if ((v26 & 1) == 0)
      {
        v28 = sub_195F3A300(v26, a1, a2) >> 16;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    LODWORD(v13) = sub_195FA0F28();
  }

  while (v13);
LABEL_24:
  v37 = a1;
  v38 = a2;
  sub_195F3A624();
  v13 = *(sub_195FA0C48() + 16);

  if (HIDWORD(v13))
  {
    __break(1u);
  }

  else
  {
    if (v13)
    {
      goto LABEL_26;
    }

    v21 = MEMORY[0x1E69E7CC0];
LABEL_61:

    return v21;
  }

  return result;
}

uint64_t sub_195EB5D44(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_195FA0A48();
  }

  else
  {
    return 0;
  }
}

uint64_t DeviceScopedIdentity.token.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195FAC280;
  v6 = (v2 + *(a1 + 60));
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
  }

  else
  {
    v8 = 0;
  }

  *(inited + 32) = v8;
  *(inited + 40) = v7;

  sub_195FA0A78();
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  return sub_195EB6308(inited, a2);
}

uint64_t sub_195EB5E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_195EB5ED4()
{
  result = qword_1EAEEC498;
  if (!qword_1EAEEC498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAEED8F0, &unk_195FACA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC498);
  }

  return result;
}

uint64_t sub_195EB5F38(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_195EB5F80()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v9 = MEMORY[0x1E69E7CC0];
  sub_195EB6628(0, v2, 0);
  v3 = v9;
  for (i = v1 + 40; ; i += 16)
  {

    v5 = sub_195FA0968();

    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (HIDWORD(v5))
    {
      goto LABEL_10;
    }

    v8 = *(v9 + 16);
    v7 = *(v9 + 24);
    if (v8 >= v7 >> 1)
    {
      sub_195EB6628((v7 > 1), v8 + 1, 1);
    }

    *(v9 + 16) = v8 + 1;
    *(v9 + 4 * v8 + 32) = v5;
    if (!--v2)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_195EB6074(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA80, &qword_195FACBF0);
  result = swift_allocObject();
  *(result + 16) = xmmword_195FAC280;
  *(result + 32) = 428;
  v3 = *(a1 + 16);
  if (HIDWORD(v3))
  {
    goto LABEL_14;
  }

  if ((*(a1 + 16) & 0xFFFFF800) != 0xD800)
  {
    if (v3 >> 16 > 0x10)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    *(result + 36) = v3;
    if (!v3)
    {
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAB8, qword_195FACBF8);
      sub_195EB5F38(&unk_1EAEEBD60, &qword_1EAEEDAB8, qword_195FACBF8, MEMORY[0x1E69E6328]);
      sub_195FA0938();

      return 0;
    }

    v4 = 0;
    while (1)
    {
      v5 = *(a1 + 32 + 4 * v4);
      if (v5 >> 11 == 27)
      {
        break;
      }

      if (HIWORD(v5) > 0x10u)
      {
        __break(1u);
        break;
      }

      v6 = *(result + 24);
      if (v4 + 2 >= v6 >> 1)
      {
        result = sub_195EB6648((v6 > 1), v4 + 3, 1, result);
      }

      *(result + 16) = v4 + 3;
      *(result + 4 * v4++ + 40) = v5;
      if (v3 == v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_195EB6214(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_195EB6418(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_195EB6308@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = result;
  v4 = 0;
  v5 = *(result + 16);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = 16 * v4 + 40;
  while (1)
  {
    if (v5 == v4)
    {

      *a2 = v6;
      return result;
    }

    if (v4 >= *(v2 + 16))
    {
      break;
    }

    ++v4;
    v8 = v7 + 16;
    v9 = *(v2 + v7);
    v7 += 16;
    if (v9)
    {
      v10 = *(v2 + v8 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_195EB6418(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_195EB6418((v11 > 1), v12 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 16) = v12 + 1;
      v13 = v6 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

char *sub_195EB6418(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
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

char *sub_195EB6524(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA50, &qword_195FAC970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_195EB6628(char *a1, int64_t a2, char a3)
{
  result = sub_195EB6524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_195EB6648(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDA80, &qword_195FACBF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

id CHSLogChronoServices(uint64_t a1)
{
  if (CHSLogChronoServices_onceToken != -1)
  {
    CHSLogChronoServices_cold_1();
  }

  v2 = CHSLogChronoServices___logObj;

  return v2;
}

uint64_t CHSExtensionIdentity.token.getter@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E0, &unk_195FADCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195FADCC0;
  v4 = (v1 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (!v6)
  {
    v5 = 0;
  }

  *(inited + 32) = v5;
  *(inited + 40) = v6;
  v7 = (v1 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
  swift_beginAccess();
  v8 = v7[1];
  if (v8)
  {
    v9 = *v7;
  }

  else
  {
    v9 = 0;
  }

  *(inited + 48) = v9;
  *(inited + 56) = v8;
  v10 = (v1 + OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *(inited + 64) = v11;
  *(inited + 72) = v12;

  return sub_195EB6308(inited, a1);
}

uint64_t Token.rawValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_195FAC070;
  v1 = sub_195EB5F80();
  v2 = sub_195EB6074(v1);
  v4 = v3;

  *(v0 + 32) = v2;
  *(v0 + 40) = v4;

  sub_195EB6214(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5F38(&qword_1EAEEC498, &qword_1EAEED8F0, &unk_195FACA00, MEMORY[0x1E69E6310]);
  v6 = sub_195FA0828();

  return v6;
}

uint64_t sub_195EB6A58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_195EB6AA0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

ChronoServices::Token __swiftcall Token.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;

  result.storage._rawValue = sub_195EB5868(countAndFlagsBits, object);
  if (!result.storage._rawValue)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
    result.storage._rawValue = swift_allocObject();
    v8 = result.storage._rawValue;
    *(result.storage._rawValue + 1) = xmmword_195FAC070;
    *(result.storage._rawValue + 4) = countAndFlagsBits;
    *(result.storage._rawValue + 5) = object;
    goto LABEL_14;
  }

  v6 = result.storage._rawValue;
  if (!__OFADD__(*(result.storage._rawValue + 2), 2))
  {
    sub_195FA0998();
    v7 = v6[2];
    if (v7)
    {
      v18 = v4;
      v8 = MEMORY[0x1E69E7CC0];
      v9 = 32;
      while (1)
      {
        sub_195FA0968();
        v10 = sub_195FA0998();
        result.storage._rawValue = sub_195FA0998();
        if (result.storage._rawValue >> 14 < v10 >> 14)
        {
          break;
        }

        v11 = sub_195FA0A68();
        v12 = MEMORY[0x19A8C3EF0](v11);
        v14 = v13;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_195EB6418(0, *(v8 + 2) + 1, 1, v8);
        }

        v16 = *(v8 + 2);
        v15 = *(v8 + 3);
        if (v16 >= v15 >> 1)
        {
          v8 = sub_195EB6418((v15 > 1), v16 + 1, 1, v8);
        }

        *(v8 + 2) = v16 + 1;
        v17 = &v8[16 * v16];
        *(v17 + 4) = v12;
        *(v17 + 5) = v14;
        v9 += 4;
        if (!--v7)
        {

          v4 = v18;
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_16;
    }

    v8 = MEMORY[0x1E69E7CC0];
LABEL_14:
    *v4 = v8;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

int *sub_195EB6CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  result = MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *result;
  v12 = *(*result + 16);
  v22 = v13;
  v23 = v14;
  v21 = v15;
  if (v12 == 1)
  {
    v16 = 0;
    v17 = 0;
    v18 = v11[4];
    v19 = v11[5];
  }

  else
  {
    if (v12 != 2)
    {
      __break(1u);
      return result;
    }

    v16 = v11[4];
    v17 = v11[5];
    v18 = v11[6];
    v19 = v11[7];
  }

  v24 = v18;
  v25 = v19;
  (*(a3 + 16))(&v24, a2, a3);
  if (!v17)
  {
    v16 = 0;
  }

  (*(v7 + 32))(a4, v10, a2);
  v24 = a2;
  v25 = a3;
  v26 = v21;
  v27 = v22;
  v28 = v23;
  result = type metadata accessor for DeviceScopedIdentity(0, &v24);
  v20 = (a4 + result[15]);
  *v20 = v16;
  v20[1] = v17;
  return result;
}

uint64_t sub_195EB6E70(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_195EB6E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t DeviceScopedIdentity.rawValue.getter(uint64_t a1)
{
  DeviceScopedIdentity.token.getter(a1, &v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_195FAC070;
  v2 = sub_195EB5F80();
  v3 = sub_195EB6074(v2);
  v5 = v4;

  *(v1 + 32) = v3;
  *(v1 + 40) = v5;

  sub_195EB6214(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5ED4();
  v7 = sub_195FA0828();

  return v7;
}

uint64_t sub_195EB6FF8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = DeviceScopedIdentity.rawValue.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_195EB7020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_195EB7094(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t CHSExtensionIdentity.hash.getter()
{
  sub_195FA13F8();
  swift_beginAccess();
  sub_195FA1398();

  sub_195FA0958();

  v1 = sub_195FA13E8();
  MEMORY[0x19A8C4970](v1);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDEA0, &unk_195FADD00);
  sub_195EB5F38(&qword_1EAEEC380, &qword_1EAEEDA60, &qword_195FAC980, &protocol conformance descriptor for TypedIdentifier<A>);
  v2 = sub_195FA0DC8();
  MEMORY[0x19A8C4970](v2);
  v3 = v0 + OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier;
  swift_beginAccess();
  v4 = *(v3 + 8);
  sub_195FA1398();
  sub_195FA13B8();
  if (v4)
  {

    sub_195FA0958();
  }

  v5 = sub_195FA13E8();

  MEMORY[0x19A8C4970](v5);
  return sub_195FA13D8();
}

unint64_t type metadata accessor for CHSExtensionIdentity()
{
  result = qword_1ED457B88[0];
  if (!qword_1ED457B88[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1ED457B88);
  }

  return result;
}

uint64_t CHSExtensionIdentity.isEqual(_:)(uint64_t a1)
{
  sub_195EB773C(a1, v20);
  if (!v21)
  {
    sub_195EB7914(v20);
    goto LABEL_24;
  }

  type metadata accessor for CHSExtensionIdentity();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v17 = 0;
    return v17 & 1;
  }

  if (v19 != v1)
  {
    v2 = &v1[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
    swift_beginAccess();
    v3 = *v2;
    v4 = *(v2 + 1);
    v5 = &v19[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
    swift_beginAccess();
    v6 = v3 == *v5 && v4 == *(v5 + 1);
    if (!v6 && (sub_195FA12B8() & 1) == 0)
    {
      goto LABEL_23;
    }

    v7 = &v1[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
    swift_beginAccess();
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = &v19[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
    swift_beginAccess();
    v11 = *(v10 + 1);
    if (v9)
    {
      if (!v11 || (v8 != *v10 || v9 != v11) && (sub_195FA12B8() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v11)
      {
LABEL_23:

        goto LABEL_24;
      }
    }

    v12 = &v1[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    v14 = *v12;
    v13 = *(v12 + 1);
    v15 = &v19[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    v16 = *(v15 + 1);
    if (!v13)
    {

      if (!v16)
      {

        v17 = 1;
        return v17 & 1;
      }

      goto LABEL_24;
    }

    if (!v16)
    {
      goto LABEL_23;
    }

    if (v14 != *v15 || v13 != v16)
    {
      v17 = sub_195FA12B8();

      return v17 & 1;
    }
  }

  v17 = 1;
  return v17 & 1;
}

uint64_t sub_195EB773C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CHSCurrentPlatform()
{
  active_platform = dyld_get_active_platform();

  return CHSPlatformFromDYLDPlatform(active_platform);
}

uint64_t CHSPlatformFromDYLDPlatform(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return qword_195FAAE28[a1 - 1];
  }
}

uint64_t sub_195EB7914(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED4B0, &qword_195FAC080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_195EB7D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  ObjCClassFromObject = swift_getObjCClassFromObject();
  if (a6)
  {
    v13 = a5;
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(ObjCClassFromObject) init];
  v15 = &v14[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
  swift_beginAccess();
  *v15 = a1;
  *(v15 + 1) = a2;
  v16 = v14;

  v17 = &v16[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  swift_beginAccess();
  *v17 = v11;
  v17[1] = a4;

  v18 = &v16[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
  swift_beginAccess();
  *v18 = v13;
  v18[1] = a6;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v16;
}

void __swiftcall CHSExtensionIdentity.init(tokenString:)(CHSExtensionIdentity_optional *__return_ptr retstr, Swift::String tokenString)
{
  Token.init(rawValue:)(tokenString);
  if ((*(v2 + 16) & 0x7FFFFFFFFFFFFFFELL) == 2)
  {
    sub_195EB8468(&v2);
  }

  else
  {
  }
}

unint64_t sub_195EB82CC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_195F3A28C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_195F3A300(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

char *sub_195EB8364(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA50, &qword_195FAC970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_195EB8468(char *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 == 2)
  {
    v4 = v1[4];
    v3 = v1[5];
    v6 = v1[6];
    v5 = v1[7];

    v7 = 0;
    v8 = 0;
LABEL_5:
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v10 = &v9[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
    swift_beginAccess();
    *v10 = v6;
    *(v10 + 1) = v5;
    v11 = v9;

    v12 = &v11[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
    swift_beginAccess();
    *v12 = v4;
    *(v12 + 1) = v3;

    v13 = &v11[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    *v13 = v7;
    *(v13 + 1) = v8;

    return v11;
  }

  if (v2 == 3)
  {
    v7 = v1[4];
    v8 = v1[5];
    v4 = v1[6];
    v3 = v1[7];
    v6 = v1[8];
    v5 = v1[9];

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id _genericiseIntent(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = v1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = INIntentWithTypedIntent();
  }

  return v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_195EB8DE8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_195EB8E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  v16 = sub_195FA0CF8();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_195FA0CD8();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_195FA07D8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v23 = type metadata accessor for ConcreteFileManagerFactory();
  v24 = &protocol witness table for ConcreteFileManagerFactory;
  *&v22 = a1;
  v20 = type metadata accessor for ConcreteImageIOPrimitives();
  v21 = &protocol witness table for ConcreteImageIOPrimitives;
  *&v19 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE668, &qword_195FB0510);
  swift_allocObject();
  *(a4 + 16) = sub_195FA06F8();
  sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  sub_195FA0798();
  v18 = MEMORY[0x1E69E7CC0];
  sub_195EB911C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195EB94DC();
  sub_195FA0E38();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8090], v16);
  *(a4 + 24) = sub_195FA0D38();
  sub_195EB9104(&v22, a4 + 32);
  sub_195EB9104(&v19, a4 + 72);
  v12 = OBJC_IVAR____TtC14ChronoServices9IconStore_iconsFolderURL;
  v13 = sub_195FA0478();
  (*(*(v13 - 8) + 32))(a4 + v12, v17, v13);
  return a4;
}

uint64_t sub_195EB9104(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_195EB911C()
{
  result = qword_1EAEEC5A0;
  if (!qword_1EAEEC5A0)
  {
    sub_195FA0CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC5A0);
  }

  return result;
}

__CFString *NSStringFromWidgetFamily(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return @"undefined";
  }

  else
  {
    return off_1E7454450[a1 - 1];
  }
}

unint64_t sub_195EB94DC()
{
  result = qword_1EAEEC5B0;
  if (!qword_1EAEEC5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAEEE3A0, &unk_195FAC790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC5B0);
  }

  return result;
}

uint64_t CHSWidgetExtensionProviderOptions.isEqual(_:)(uint64_t a1)
{
  v2 = sub_195EB773C(a1, v6);
  if (!v7)
  {
    sub_195EB7914(v6);
    goto LABEL_6;
  }

  type metadata accessor for CHSWidgetExtensionProviderOptions(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v3 = 0;
    return v3 & 1;
  }

  if (v5 == v1)
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_195EBAC28(v1, v5);
  }

  return v3 & 1;
}

BOOL CHSWidgetDescriptorsPredicate.isEqual(_:)(uint64_t a1)
{
  sub_195EB773C(a1, v7);
  if (v8)
  {
    type metadata accessor for CHSWidgetDescriptorsPredicate();
    if (swift_dynamicCast())
    {
      if (v6 == v1)
      {

        return 1;
      }

      v2 = [v1 includeRelevanceBacked];
      if (v2 == [v6 includeRelevanceBacked])
      {
        v4 = [v1 remoteWidgetInclusions];
        v5 = [v6 remoteWidgetInclusions];

        return v4 == v5;
      }
    }
  }

  else
  {
    sub_195EB7914(v7);
  }

  return 0;
}

char *sub_195EB98CC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v4 init];
  v9 = v8;
  if (a2)
  {
    v10 = v8;
    v11 = a2;
  }

  else
  {
    v12 = objc_opt_self();
    v13 = v9;
    v11 = [v12 defaultResolver];
  }

  *&v9[OBJC_IVAR___CHSWidgetExtensionSet_equivalentBundleIdentifierResolver] = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v9[OBJC_IVAR___CHSWidgetExtensionSet_iconResolver] = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *&v9[OBJC_IVAR___CHSWidgetExtensionSet_allExtensions] = a1;

  sub_195EB9C24(a1, v11, a3);
  v15 = v14;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *&v9[OBJC_IVAR___CHSWidgetExtensionSet_widgetExtensionContainers] = v15;

  return v9;
}

id sub_195EB9A3C()
{
  v1 = OBJC_IVAR___CHSWidgetExtensionSet_equivalentBundleIdentifierResolver;
  *&v0[OBJC_IVAR___CHSWidgetExtensionSet_equivalentBundleIdentifierResolver] = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___CHSWidgetExtensionSet_widgetExtensionContainers] = MEMORY[0x1E69E7CC0];
  if (v2 >> 62 && sub_195FA0E88())
  {
    sub_195F72C8C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CD0];
  }

  *&v0[OBJC_IVAR___CHSWidgetExtensionSet_allExtensions] = v3;
  *&v0[v1] = [objc_opt_self() defaultResolver];
  swift_unknownObjectRelease();
  v4 = [objc_allocWithZone(CHSIconResolver) init];
  *&v0[OBJC_IVAR___CHSWidgetExtensionSet_iconResolver] = v4;
  v6.receiver = v0;
  v6.super_class = CHSWidgetExtensionSet;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t IconStore.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  v1 = OBJC_IVAR____TtC14ChronoServices9IconStore_iconsFolderURL;
  v2 = sub_195FA0478();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_195EB9C24(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a1;
  v22[0] = MEMORY[0x1E69E7CC8];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_195FA0E78();
    sub_195EB4B30(0, &qword_1EAEEC4B8, off_1E7452788);
    sub_195EB4C00();
    sub_195FA0C28();
    v4 = v22[1];
    v5 = v22[2];
    v7 = v22[3];
    v6 = v22[4];
    v8 = v22[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v6 = 0;
  }

  v12 = (v7 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v6;
    v14 = v8;
    v15 = v6;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_18:
      sub_195EB9E70(v4);
      v19 = v22[0];
      swift_unknownObjectRetain();
      sub_195EB9E78(v19, a3);

      swift_unknownObjectRelease();
      return;
    }

    while (1)
    {
      v18 = objc_autoreleasePoolPush();
      sub_195EC23B8(v17, a2, v22);
      objc_autoreleasePoolPop(v18);

      v6 = v15;
      v8 = v16;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_195FA0EA8())
      {
        sub_195EB4B30(0, &qword_1EAEEC4B8, off_1E7452788);
        swift_dynamicCast();
        v17 = v21;
        v15 = v6;
        v16 = v8;
        if (v21)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_195EB9E78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v25 = MEMORY[0x1E69E7CC0];
    v23 = a1;
    sub_195FA0FC8();
    v5 = v23 + 64;
    result = sub_195FA0E48();
    v6 = v23;
    v7 = result;
    v8 = 0;
    v9 = *(v23 + 36);
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v6 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      if (v9 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v24 = v8;
      v12 = v5;
      v13 = objc_allocWithZone(CHSWidgetExtensionContainer);
      sub_195EB4B30(0, &qword_1EAEEC4B8, off_1E7452788);

      v14 = sub_195FA0B28();
      [v13 initWithExtensions:v14 iconResolver:a2];

      sub_195FA0FA8();
      sub_195FA0FD8();
      sub_195FA0FE8();
      result = sub_195FA0FB8();
      v6 = v23;
      v10 = 1 << *(v23 + 32);
      if (v7 >= v10)
      {
        goto LABEL_23;
      }

      v15 = *(v12 + 8 * v11);
      if ((v15 & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (v9 != *(v23 + 36))
      {
        goto LABEL_25;
      }

      v5 = v12;
      v16 = v15 & (-2 << (v7 & 0x3F));
      if (v16)
      {
        v10 = __clz(__rbit64(v16)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v11 << 6;
        v18 = v11 + 1;
        v19 = (v23 + 72 + 8 * v11);
        while (v18 < (v10 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            result = sub_195EC2F2C(v7, v9, 0);
            v6 = v23;
            v10 = __clz(__rbit64(v20)) + v17;
            goto LABEL_4;
          }
        }

        result = sub_195EC2F2C(v7, v9, 0);
        v6 = v23;
      }

LABEL_4:
      v8 = v24 + 1;
      v7 = v10;
      if (v24 + 1 == v3)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

__CFString *NSStringFromCHSWidgetRenderingMode(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"unknown";
  }

  else
  {
    return off_1E7453500[a1];
  }
}

__CFString *NSStringFromCHSWidgetBackgroundViewPolicy(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Include";
  }

  else
  {
    return off_1E7453410[a1 - 1];
  }
}

__CFString *_CHSSystemVersionStringToCompareAgainstFromSDKAndPlatform(uint64_t a1, uint64_t a2)
{
  if (_CHSSystemVersionStringToCompareAgainstFromSDKAndPlatform___once != -1)
  {
    _CHSSystemVersionStringToCompareAgainstFromSDKAndPlatform_cold_1();
  }

  v4 = __sdkVersionPlatformToSystemVersion;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = CHSLogChronoServices(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      _CHSSystemVersionStringToCompareAgainstFromSDKAndPlatform_cold_2(a1, a2, v11);
    }

    v10 = @"9999999.0";
  }

  return v10;
}

unint64_t *sub_195EBA74C(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_195FA0E88())
  {
    v12 = sub_195EB4B30(0, a2, a3);
    v13 = sub_195EBE1C8(a4, a2, a3);
    result = MEMORY[0x19A8C41E0](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x19A8C4520](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_195FA0E88();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_195EBA980(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_195FA0E98();

    if (v17)
    {

      sub_195EB4B30(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_195FA0E88();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_195F6BD20(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_195F6BF20(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_195F6C854(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_195EB4B30(0, a3, a4);
    v19 = sub_195FA0D78();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_195FA0D88();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_195EBE218(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

id sub_195EBAC28(void *a1, void *a2)
{
  v4 = [a1 widgetsPredicate];
  v5 = [a2 widgetsPredicate];
  v6 = v5;
  if (!v4)
  {
    if (v5)
    {

      return 0;
    }

LABEL_7:
    v8 = [a1 controlsPredicate];
    v9 = [a2 controlsPredicate];
    if (v8)
    {
      if (v9)
      {
        v10 = v9;

        if (v8 == v10)
        {
LABEL_18:
          v15 = [a1 includeIntents];
          return (v15 ^ [a2 includeIntents] ^ 1);
        }

        goto LABEL_16;
      }

      v9 = v8;
    }

    else if (!v9)
    {
      goto LABEL_18;
    }

LABEL_16:
    result = [a1 controlsPredicate];
    if (!result)
    {
      return result;
    }

    v12 = result;
    v13 = [a2 controlsPredicate];
    v14 = [v12 isEqual_];

    if (v14)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v5)
  {

    return 0;
  }

  type metadata accessor for CHSWidgetDescriptorsPredicate();
  v7 = sub_195FA0D88();

  if (v7)
  {
    goto LABEL_7;
  }

  return 0;
}

Swift::Bool __swiftcall CHSWidgetExtensionProviderOptions.matches(widgetDescriptor:)(CHSWidgetDescriptor *widgetDescriptor)
{
  v2 = v1;
  v4 = [v2 widgetsPredicate];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [(CHSBaseDescriptor *)widgetDescriptor extensionIdentity];
  v7 = [(CHSExtensionIdentity *)v6 isRemote];

  if (!v7 || (v8 = [v5 remoteWidgetInclusions], v8 == 2) || v8 == 1 && -[CHSBaseDescriptor requestedDataProtection](widgetDescriptor, sel_requestedDataProtection) >= 2)
  {
    if ([(CHSWidgetDescriptor *)widgetDescriptor isRelevanceBacked])
    {
      v9 = [v5 includeRelevanceBacked];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t CHSControlDescriptorsPredicate.isEqual(_:)(uint64_t a1)
{
  sub_195EB773C(a1, v8);
  if (v9)
  {
    type metadata accessor for CHSControlDescriptorsPredicate();
    if (swift_dynamicCast())
    {
      if (v7 == v1)
      {

        return 1;
      }

      v2 = [v1 includeHidden];
      if (v2 == [v7 includeHidden])
      {
        v3 = [v1 includeVisible];
        if (v3 == [v7 includeVisible])
        {
          v5 = [v1 includeRemote];
          v6 = [v7 includeRemote];

          return v5 ^ v6 ^ 1;
        }
      }
    }
  }

  else
  {
    sub_195EB7914(v8);
  }

  return 0;
}

uint64_t CHSWidgetExtensionProviderOptions.description.getter()
{
  sub_195FA0F38();
  MEMORY[0x19A8C3F70](0xD000000000000020, 0x8000000195FC1110);
  sub_195FA1008();
  MEMORY[0x19A8C3F70](0xD000000000000011, 0x8000000195FC1140);
  v1 = [v0 includeIntents];
  v2 = v1 == 0;
  v3 = 20302;
  if (v1)
  {
    v4 = 5457241;
  }

  else
  {
    v4 = 20302;
  }

  v5 = 0xE200000000000000;
  if (v2)
  {
    v6 = 0xE200000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x19A8C3F70](v4, v6);

  MEMORY[0x19A8C3F70](0x746567646977202CLL, 0xEA00000000003D73);
  v7 = [v0 widgetsPredicate];
  if (v7)
  {

    v5 = 0xE300000000000000;
    v3 = 5457241;
  }

  MEMORY[0x19A8C3F70](v3, v5);

  MEMORY[0x19A8C3F70](0x6F72746E6F63202CLL, 0xEB000000003D736CLL);
  v8 = [v0 controlsPredicate];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 description];

    v11 = sub_195FA08B8();
    v13 = v12;
  }

  else
  {
    v13 = 0xE200000000000000;
    v11 = 20302;
  }

  MEMORY[0x19A8C3F70](v11, v13);

  MEMORY[0x19A8C3F70](62, 0xE100000000000000);
  return 0;
}

CHSWidgetExtensionProviderOptions __swiftcall CHSWidgetExtensionProviderOptions.merged(with:)(CHSWidgetExtensionProviderOptions with)
{
  isa = with.super.isa;
  v2 = [v1 controlsPredicate];
  if (v2 || (v2 = [v50 widgetsPredicate]) != 0)
  {

    v3 = [(objc_class *)isa controlsPredicate];
    if (v3 || (v3 = [(objc_class *)isa widgetsPredicate]) != 0)
    {

      if ([v50 includeIntents])
      {
        v4 = 1;
      }

      else
      {
        v4 = [(objc_class *)isa includeIntents];
      }

      v5 = [v50 controlsPredicate];
      if (v5 && (v6 = v5, v7 = [v5 includeVisible], v6, (v7 & 1) != 0))
      {
        v8 = 1;
      }

      else
      {
        v9 = [(objc_class *)isa controlsPredicate];
        if (v9)
        {
          v10 = v9;
          v8 = [v9 includeVisible];
        }

        else
        {
          v8 = 0;
        }
      }

      v11 = [v50 controlsPredicate];
      if (v11 && (v12 = v11, v13 = [v11 includeHidden], v12, (v13 & 1) != 0))
      {
        v14 = 1;
      }

      else
      {
        v15 = [(objc_class *)isa controlsPredicate];
        if (v15)
        {
          v16 = v15;
          v14 = [v15 includeHidden];
        }

        else
        {
          v14 = 0;
        }
      }

      v17 = [v50 controlsPredicate];
      if (v17 && (v18 = v17, v19 = [v17 includeRemote], v18, (v19 & 1) != 0))
      {
        v20 = 1;
      }

      else
      {
        v21 = [(objc_class *)isa controlsPredicate];
        if (v21)
        {
          v22 = v21;
          v20 = [v21 includeRemote];
        }

        else
        {
          v20 = 0;
        }
      }

      v23 = [v50 widgetsPredicate];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 remoteWidgetInclusions];
      }

      else
      {
        v25 = 0;
      }

      v26 = [(objc_class *)isa widgetsPredicate];
      if (v26)
      {
        v27 = v26;
        v28 = [v26 remoteWidgetInclusions];
      }

      else
      {
        v28 = 0;
      }

      v29 = v50;
      if (v28 > v25)
      {
        v25 = v28;
      }

      if ((v8 | v14))
      {
        v30 = [objc_allocWithZone(CHSControlDescriptorsPredicate) initIncludingVisible:v8 hidden:v14];
        v31 = v30;
        if (v30)
        {
          [v30 setIncludeRemote_];
        }

        v29 = v50;
      }

      else
      {
        v31 = 0;
      }

      v32 = [v29 widgetsPredicate];
      if (v32 || (v32 = [(objc_class *)isa widgetsPredicate]) != 0)
      {

        v33 = [v50 widgetsPredicate];
        if (v33 && (v34 = v33, v35 = [v33 includeRelevanceBacked], v34, (v35 & 1) != 0))
        {
          v36 = 1;
        }

        else
        {
          v37 = [(objc_class *)isa widgetsPredicate];
          if (v37)
          {
            v38 = v37;
            v36 = [v37 includeRelevanceBacked];
          }

          else
          {
            v36 = 0;
          }
        }

        v39 = [objc_allocWithZone(CHSWidgetDescriptorsPredicate) initIncludingRelevanceBacked_];
        v40 = v39;
        if (v39)
        {
          [v39 setRemoteWidgetInclusions_];
        }
      }

      else
      {
        v40 = 0;
      }

      v46 = objc_allocWithZone(CHSWidgetExtensionProviderOptions);
      v47 = v40;
      v48 = [v46 initWithWidgetsPredicate:v47 controlsPredicate:v31 includeIntents:v4];

      v42 = v48;
      goto LABEL_56;
    }

    v41 = v50;
  }

  else
  {
    v41 = isa;
  }

  v42 = v41;
LABEL_56:
  result.widgetsPredicate = v44;
  result.controlsPredicate = v43;
  result.super.isa = v42;
  result.includeIntents = v45;
  return result;
}

unint64_t type metadata accessor for CHSWidgetDescriptorsPredicate()
{
  result = qword_1EAEEC228;
  if (!qword_1EAEEC228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEC228);
  }

  return result;
}

uint64_t CHSControlDescriptorsPredicate.description.getter()
{
  sub_195FA0F38();

  v1 = [v0 includeVisible];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 5457241;
  }

  else
  {
    v3 = 20302;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x19A8C3F70](v3, v4);

  MEMORY[0x19A8C3F70](0x6E6564646968202CLL, 0xE90000000000003DLL);
  v5 = [v0 includeHidden];
  v6 = v5 == 0;
  if (v5)
  {
    v7 = 5457241;
  }

  else
  {
    v7 = 20302;
  }

  if (v6)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  MEMORY[0x19A8C3F70](v7, v8);

  MEMORY[0x19A8C3F70](0x65746F6D6572202CLL, 0xE90000000000003DLL);
  v9 = [v0 includeRemote];
  v10 = v9 == 0;
  if (v9)
  {
    v11 = 5457241;
  }

  else
  {
    v11 = 20302;
  }

  if (v10)
  {
    v12 = 0xE200000000000000;
  }

  else
  {
    v12 = 0xE300000000000000;
  }

  MEMORY[0x19A8C3F70](v11, v12);

  MEMORY[0x19A8C3F70](93, 0xE100000000000000);
  return 0x656C62697369765BLL;
}

id CHSLogSubscriptions(uint64_t a1)
{
  if (CHSLogSubscriptions_onceToken != -1)
  {
    CHSLogSubscriptions_cold_1();
  }

  v2 = CHSLogSubscriptions___logObj;

  return v2;
}

void sub_195EBC268(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Swift::Void __swiftcall CHSWidgetExtensionProviderOptions.encode(with:)(NSCoder with)
{
  v3 = [v1 controlsPredicate];
  v4 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = [v1 widgetsPredicate];
  v6 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = [v1 includeIntents];
  v8 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];
}

Swift::Void __swiftcall CHSControlDescriptorsPredicate.encode(with:)(NSCoder with)
{
  v3 = [v1 includeVisible];
  v4 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeBool:v3 forKey:v4];

  v5 = [v1 includeHidden];
  v6 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeBool:v5 forKey:v6];

  v7 = [v1 includeRemote];
  v8 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];
}

id sub_195EBC828(void *a1)
{
  v2 = v1;
  type metadata accessor for CHSControlDescriptorsPredicate();
  v4 = sub_195FA0D58();
  type metadata accessor for CHSWidgetDescriptorsPredicate();
  v5 = sub_195FA0D58();
  v6 = sub_195FA0888();
  v7 = [a1 decodeBoolForKey_];

  v8 = [v2 initWithWidgetsPredicate:v5 controlsPredicate:v4 includeIntents:v7];
  return v8;
}

unint64_t type metadata accessor for CHSControlDescriptorsPredicate()
{
  result = qword_1EAEEC218;
  if (!qword_1EAEEC218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEC218);
  }

  return result;
}

_BYTE *sub_195EBC9F0(void *a1)
{
  v3 = sub_195FA0888();
  v4 = [a1 decodeBoolForKey_];

  v5 = sub_195FA0888();
  v6 = [a1 decodeBoolForKey_];

  v7 = sub_195FA0888();
  LOBYTE(a1) = [a1 decodeBoolForKey_];

  v8 = [v1 initIncludingVisible:v4 hidden:v6];
  v9 = OBJC_IVAR___CHSControlDescriptorsPredicate_includeRemote;
  swift_beginAccess();
  v8[v9] = a1;
  return v8;
}

_BYTE *CHSWidgetDescriptorsPredicate.init(coder:)(void *a1)
{
  v2 = sub_195FA0888();
  v3 = [a1 decodeBoolForKey_];

  v4 = sub_195FA0888();
  v5 = [a1 decodeIntegerForKey_];

  v6 = [objc_allocWithZone(swift_getObjCClassFromObject()) init];
  v6[OBJC_IVAR___CHSWidgetDescriptorsPredicate_includeRelevanceBacked] = v3;
  *&v6[OBJC_IVAR___CHSWidgetDescriptorsPredicate_remoteWidgetInclusions] = v5;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

void sub_195EBCCEC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_195EBCD6C(int a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    BSDispatchQueueAssert();
    if (a1)
    {
      if (a1 == 1)
      {
        sub_195EBCE08(&v8);
        v6 = *(v5 + 24);
        *(v5 + 24) = v8;
        v7 = v6;
        sub_195EBCE70(&v7);
      }
    }

    else
    {
      *(v5 + 40) = 1;
      sub_195EC76C8();
    }
  }

  return result;
}

uint64_t sub_195EBCE08@<X0>(_BYTE *a1@<X8>)
{
  if (qword_1EAEEC290 != -1)
  {
    swift_once();
  }

  result = MKBGetDeviceLockState();
  if (result < 8)
  {
    v3 = result + 1;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_195EBCE70(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_195FA0778();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_195FA07D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  result = BSDispatchQueueAssert();
  v14 = *(v2 + 24);
  if (v14 != v12)
  {
    v54 = v8;
    if (qword_1EAEEC278 != -1)
    {
      swift_once();
    }

    v55 = v5;
    v15 = sub_195FA0678();
    __swift_project_value_buffer(v15, qword_1EAEF7300);
    v16 = sub_195FA0658();
    v17 = sub_195FA0CC8();
    v18 = os_log_type_enabled(v16, v17);
    v53 = v9;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v19 = 136446466;
      if (v12 <= 3)
      {
        v28 = 0xE700000000000000;
        v29 = 0xE600000000000000;
        v30 = 0x64656B636F6CLL;
        if (v12 != 2)
        {
          v30 = 0x676E696B636F6CLL;
          v29 = 0xE700000000000000;
        }

        v31 = 0x64656B636F6C6E75;
        if (v12)
        {
          v28 = 0xE800000000000000;
        }

        else
        {
          v31 = 0x6E776F6E6B6E75;
        }

        if (v12 <= 1)
        {
          v26 = v31;
        }

        else
        {
          v26 = v30;
        }

        if (v12 <= 1)
        {
          v27 = v28;
        }

        else
        {
          v27 = v29;
        }
      }

      else
      {
        v20 = 0x5065636172476E69;
        v21 = 0xED0000646F697265;
        v22 = 0x7472657373416E69;
        v23 = 0xED000079616C6544;
        if (v12 != 7)
        {
          v22 = 0x6C6E556F69426E69;
          v23 = 0xEB000000006B636FLL;
        }

        if (v12 != 6)
        {
          v20 = v22;
          v21 = v23;
        }

        v24 = 0xE800000000000000;
        v25 = 0x64656C6261736964;
        if (v12 != 4)
        {
          v25 = 0xD000000000000010;
          v24 = 0x8000000195FC0390;
        }

        if (v12 <= 5)
        {
          v26 = v25;
        }

        else
        {
          v26 = v20;
        }

        if (v12 <= 5)
        {
          v27 = v24;
        }

        else
        {
          v27 = v21;
        }
      }

      v32 = sub_195EBD554(v26, v27, aBlock);

      *(v19 + 4) = v32;
      *(v19 + 12) = 2082;
      if (v14 <= 3)
      {
        v41 = 0xE700000000000000;
        v42 = 0xE600000000000000;
        v43 = 0x64656B636F6CLL;
        if (v14 != 2)
        {
          v43 = 0x676E696B636F6CLL;
          v42 = 0xE700000000000000;
        }

        v44 = 0x64656B636F6C6E75;
        if (v14)
        {
          v41 = 0xE800000000000000;
        }

        else
        {
          v44 = 0x6E776F6E6B6E75;
        }

        if (v14 <= 1)
        {
          v39 = v44;
        }

        else
        {
          v39 = v43;
        }

        if (v14 <= 1)
        {
          v40 = v41;
        }

        else
        {
          v40 = v42;
        }
      }

      else
      {
        v33 = 0x5065636172476E69;
        v34 = 0xED0000646F697265;
        v35 = 0x7472657373416E69;
        v36 = 0xED000079616C6544;
        if (v14 != 7)
        {
          v35 = 0x6C6E556F69426E69;
          v36 = 0xEB000000006B636FLL;
        }

        if (v14 != 6)
        {
          v33 = v35;
          v34 = v36;
        }

        v37 = 0xE800000000000000;
        v38 = 0x64656C6261736964;
        if (v14 != 4)
        {
          v38 = 0xD000000000000010;
          v37 = 0x8000000195FC0390;
        }

        if (v14 <= 5)
        {
          v39 = v38;
        }

        else
        {
          v39 = v33;
        }

        if (v14 <= 5)
        {
          v40 = v37;
        }

        else
        {
          v40 = v34;
        }
      }

      v45 = sub_195EBD554(v39, v40, aBlock);

      *(v19 + 14) = v45;
      _os_log_impl(&dword_195EB2000, v16, v17, "Transition: %{public}s -> %{public}s", v19, 0x16u);
      v46 = v52;
      swift_arrayDestroy();
      MEMORY[0x19A8C5B70](v46, -1, -1);
      MEMORY[0x19A8C5B70](v19, -1, -1);
    }

    v47 = *(v2 + 56);
    v48 = swift_allocObject();
    *(v48 + 16) = v2;
    *(v48 + 24) = v14;
    aBlock[4] = sub_195EBDC2C;
    aBlock[5] = v48;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195EBDBE8;
    aBlock[3] = &block_descriptor_30;
    v49 = _Block_copy(aBlock);
    v50 = v47;

    sub_195FA0798();
    v56 = MEMORY[0x1E69E7CC0];
    sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
    sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
    sub_195FA0E38();
    MEMORY[0x19A8C42F0](0, v11, v7, v49);
    _Block_release(v49);

    (*(v55 + 8))(v7, v4);
    (*(v53 + 8))(v11, v54);
  }

  return result;
}

uint64_t sub_195EBD51C()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

unint64_t sub_195EBD554(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_195EBD904(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_195EBDAFC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

void *sub_195EBD620(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_195EBD844(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_195FA0F98();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_195FA09B8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_195EBD844(v10, 0);
        result = sub_195FA0F08();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_195EBD844(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED340, &qword_195FAB8F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_195EBD8B8(uint64_t a1, unint64_t a2)
{
  v3 = sub_195EBD620(a1, a2);
  sub_195EBDA10(&unk_1F0A511F0);
  return v3;
}

unint64_t sub_195EBD904(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_195EBD8B8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_195FA0F98();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_195EBDA10(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_195F27D1C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_195EBDAFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_195EBDB58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_195EBDBA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_195EBDBE8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t CHSWidgetLocationStyleMaskFromStyle(unint64_t a1)
{
  if (a1 > 6)
  {
    return 4;
  }

  else
  {
    return qword_195FAADF0[a1];
  }
}

uint64_t CHSWidgetFamilyMaskFromWidgetFamily(uint64_t a1)
{
  if ((a1 - 1) > 0xD)
  {
    return 0;
  }

  else
  {
    return qword_195FAAD80[a1 - 1];
  }
}

uint64_t sub_195EBE1C8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_195EB4B30(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_195EBE218(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_195F6BF20(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_195F6CF7C(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_195F6D5BC(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_195FA0D78();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_195EB4B30(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_195FA0D88();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_195FA1328();
  __break(1u);
}

id _unifiedIntentDataIfPossible(void *a1)
{
  v1 = a1;
  v2 = [v1 _intentData];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else if (([v1 _isPartial] & 1) != 0 || !objc_msgSend(v1, "_isSchemaSeparated"))
  {
    v4 = 0;
  }

  else
  {
    v5 = [v1 intent];
    v4 = [CHSIntentReference _encodeToOPACK:v5 error:0];
  }

  return v4;
}

uint64_t CHSEdgeInsetsCompare(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a1 < a5)
  {
    return -1;
  }

  if (a1 > a5)
  {
    return 1;
  }

  if (a2 < a6)
  {
    return -1;
  }

  if (a2 > a6)
  {
    return 1;
  }

  if (a3 < a7)
  {
    return -1;
  }

  v9 = -1;
  if (a4 >= a8)
  {
    v9 = a4 > a8;
  }

  if (a3 <= a7)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_195EBE840@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_195FA0918();
  v10 = getxattr(a1, (v9 + 32), 0, 0, 0, 0);

  if (v10 < 1)
  {
    type metadata accessor for URL.ExtendedAttributeError(0);
    sub_195EBE9E8(&unk_1EAEEC208, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
    swift_allocError();
    *v14 = a2;
    v14[1] = a3;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v15 = sub_195EBFE18(v10);
    v16 = v11;

    sub_195EBFEB8(&v15, a1, a2, a3, v10);
    result = v15;
    v13 = v16;
    if (v4)
    {
      return sub_195EC0890(v15, v16);
    }

    else
    {
      *a4 = v15;
      a4[1] = v13;
    }
  }

  return result;
}

uint64_t type metadata accessor for URL.ExtendedAttributeError(uint64_t a1)
{
  result = qword_1EAEEC1F8;
  if (!qword_1EAEEC1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_195EBE9E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_195EBEA30(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

char *CHSExtensionIdentity.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDEA8, &unk_195FADD10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195EC0D2C();
  sub_195FA1448();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA70, &qword_195FAC990);
    v25 = 0;
    sub_195EB5F38(&qword_1EAEEC430, &qword_1EAEEDA70, &qword_195FAC990, &protocol conformance descriptor for TypedIdentifier<A>);
    sub_195FA1178();
    v24 = v3;
    v10 = v27;
    v28 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA60, &qword_195FAC980);
    v25 = 1;
    sub_195EB5F38(&qword_1EAEEC438, &qword_1EAEEDA60, &qword_195FAC980, &protocol conformance descriptor for TypedIdentifier<A>);
    sub_195FA1128();
    v11 = v10;
    v12 = v28;
    v13 = v27;
    v23 = v26;
    v25 = 2;
    sub_195EBF368();
    sub_195FA1178();
    v21 = v27;
    v22 = v26;
    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    (*(v6 + 8))(v8, v5);
    v16 = &v15[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
    swift_beginAccess();
    *v16 = v12;
    *(v16 + 1) = v11;
    v9 = v15;

    v17 = &v9[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
    swift_beginAccess();
    *v17 = v23;
    *(v17 + 1) = v13;

    v18 = &v9[OBJC_IVAR___CHSExtensionIdentity_deviceIdentifier];
    swift_beginAccess();
    v19 = v21;
    *v18 = v22;
    *(v18 + 1) = v19;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

char *sub_195EBF148@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = CHSExtensionIdentity.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ConcreteImageIOPrimitives.ImageIOError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConcreteImageIOPrimitives.ImageIOError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_195EBF328@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = TypedIdentifier.init(stringLiteral:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

unint64_t sub_195EBF368()
{
  result = qword_1EAEEC428;
  if (!qword_1EAEEC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC428);
  }

  return result;
}

void *sub_195EBF3BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED470, &qword_195FAC048);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED478, &qword_195FAC050);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEED480, &qword_195FAC058);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v31 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_195EBF8F4();
  v14 = v30;
  sub_195FA1448();
  if (!v14)
  {
    v26 = v5;
    v15 = v29;
    v30 = v9;
    v16 = sub_195FA11A8();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_195EBFAAC();
    v19 = v8;
    v13 = v11;
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v21 = sub_195FA0F88();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDF40, &unk_195FAC060);
      *v23 = &type metadata for DeviceIdentifier;
      sub_195FA10F8();
      sub_195FA0F78();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v30 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v36 = 1;
      sub_195F292A0();
      sub_195FA10E8();
      v20 = v30;
      v27 = v11;
      v13 = sub_195FA1138();
      (*(v28 + 8))(v4, v15);
      (*(v20 + 8))(v27, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      sub_195EBFAE0();
      sub_195FA10E8();
      v25 = v30;
      (*(v27 + 1))(v7, v26);
      (*(v25 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return v13;
}

void *sub_195EBF8C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_195EBF3BC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_195EBF8F4()
{
  result = qword_1ED457AA8;
  if (!qword_1ED457AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457AA8);
  }

  return result;
}

uint64_t sub_195EBF948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61636F6CLL && a2 == 0xE500000000000000;
  if (v6 || (sub_195FA12B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746F6D6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_195FA12B8();

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

uint64_t getEnumTagSinglePayload for CHSHostActivationState(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_195EBFAAC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_195EBFAE0()
{
  result = qword_1ED457A90;
  if (!qword_1ED457A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A90);
  }

  return result;
}

uint64_t sub_195EBFB34()
{
  if (*v0)
  {
    return 0x65746F6D6572;
  }

  else
  {
    return 0x6C61636F6CLL;
  }
}

uint64_t storeEnumTagSinglePayload for CHSHostActivationState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_195EBFC30(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

  return v5 + (v6 | v11) + 1;
}

uint64_t sub_195EBFD70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_195FA0478();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t sub_195EBFE18(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_195F61960(result);
    }

    else
    {
      sub_195FA0218();
      swift_allocObject();
      sub_195FA01E8();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_195FA04A8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_195EBFEB8(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4, size_t a5)
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      *(&value + 7) = 0;
      *&value = 0;
      v30 = sub_195FA0918();

      v31 = getxattr(a2, (v30 + 32), &value, a5, 0, 0);

      if (v31 >= 1)
      {
        return swift_bridgeObjectRelease_n();
      }

      type metadata accessor for URL.ExtendedAttributeError(0);
      sub_195EBE9E8(&unk_1EAEEC208, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
      swift_allocError();
      *v36 = a3;
      v36[1] = a4;
      v36[2] = v31;

      MEMORY[0x19A8C3C80](v37);
      result = sub_195FA0698();
      if ((result & 0x100000000) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750);
        sub_195FA01A8();
        sub_195F4BFD8(MEMORY[0x1E69E7CC0]);
        sub_195EBE9E8(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_195FA0308();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return swift_bridgeObjectRelease_n();
      }

      goto LABEL_41;
    }

    sub_195EC0890(v9, v8);
    *&value = v9;
    *(&value + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_195FAD740;
    sub_195EC0890(0, 0xC000000000000000);
    sub_195FA0488();
    v17 = *(&value + 1);
    v54 = value;
    v18 = *(value + 16);
    v19 = sub_195FA01D8();
    if (!v19)
    {

      __break(1u);
      goto LABEL_39;
    }

    v20 = v19;
    v21 = sub_195FA0208();
    v22 = v18 - v21;
    if (!__OFSUB__(v18, v21))
    {
      sub_195FA01F8();
      v23 = sub_195FA0918();
      v24 = getxattr(a2, (v23 + 32), (v20 + v22), a5, 0, 0);

      if (v24 >= 1)
      {
        result = swift_bridgeObjectRelease_n();
        v25 = *(&value + 1) | 0x8000000000000000;
        *a1 = value;
LABEL_29:
        a1[1] = v25;
        return result;
      }

      type metadata accessor for URL.ExtendedAttributeError(0);
      sub_195EBE9E8(&unk_1EAEEC208, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
      swift_allocError();
      *v38 = a3;
      v38[1] = a4;
      v38[2] = v24;

      MEMORY[0x19A8C3C80](v39);
      result = sub_195FA0698();
      if ((result & 0x100000000) != 0)
      {
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750);
      sub_195FA01A8();
      sub_195F4BFD8(MEMORY[0x1E69E7CC0]);
      sub_195EBE9E8(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_195FA0308();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      result = swift_bridgeObjectRelease_n();
      v40 = v17 | 0x8000000000000000;
      v41 = a1;
      *a1 = v54;
LABEL_32:
      v41[1] = v40;
      return result;
    }

    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (!v10)
  {

    sub_195EC0890(v9, v8);
    *&value = v9;
    WORD4(value) = v8;
    BYTE10(value) = BYTE2(v8);
    BYTE11(value) = BYTE3(v8);
    BYTE12(value) = BYTE4(v8);
    BYTE13(value) = BYTE5(v8);
    BYTE14(value) = BYTE6(v8);
    v11 = sub_195FA0918();
    v12 = getxattr(a2, (v11 + 32), &value, a5, 0, 0);

    if (v12 > 0)
    {
      v13 = value;
      v14 = DWORD2(value) | ((WORD6(value) | (BYTE14(value) << 16)) << 32);
      result = swift_bridgeObjectRelease_n();
      *a1 = v13;
      a1[1] = v14;
      return result;
    }

    type metadata accessor for URL.ExtendedAttributeError(0);
    sub_195EBE9E8(&unk_1EAEEC208, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
    swift_allocError();
    *v32 = a3;
    v32[1] = a4;
    v32[2] = v12;

    MEMORY[0x19A8C3C80](v33);
    result = sub_195FA0698();
    if ((result & 0x100000000) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750);
      sub_195FA01A8();
      sub_195F4BFD8(MEMORY[0x1E69E7CC0]);
      sub_195EBE9E8(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      sub_195FA0308();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v34 = value;
      v35 = DWORD2(value) | ((WORD6(value) | (BYTE14(value) << 16)) << 32);
      result = swift_bridgeObjectRelease_n();
      *a1 = v34;
      a1[1] = v35;
      return result;
    }

    goto LABEL_40;
  }

  v26 = v8 & 0x3FFFFFFFFFFFFFFFLL;

  sub_195EC08E4(v9, v8);
  sub_195EC0890(v9, v8);
  *a1 = xmmword_195FAD740;
  sub_195EC0890(0, 0xC000000000000000);

  v27 = v9 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v27 < v9)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (sub_195FA01D8() && __OFSUB__(v9, sub_195FA0208()))
    {
LABEL_37:
      __break(1u);
    }

    sub_195FA0218();
    swift_allocObject();
    v42 = sub_195FA01B8();

    v26 = v42;
  }

  if (v27 < v9)
  {
    goto LABEL_34;
  }

  result = sub_195FA01D8();
  if (!result)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v43 = result;
  v44 = sub_195FA0208();
  v45 = v9 - v44;
  if (__OFSUB__(v9, v44))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_195FA01F8();
  v46 = sub_195FA0918();
  v47 = getxattr(a2, (v46 + 32), (v43 + v45), a5, 0, 0);

  if (v47 >= 1)
  {
    swift_bridgeObjectRelease_n();

    v25 = v26 | 0x4000000000000000;
    *a1 = v9;
    goto LABEL_29;
  }

  type metadata accessor for URL.ExtendedAttributeError(0);
  sub_195EBE9E8(&unk_1EAEEC208, type metadata accessor for URL.ExtendedAttributeError, &protocol conformance descriptor for URL.ExtendedAttributeError);
  swift_allocError();
  *v48 = a3;
  v48[1] = a4;
  v48[2] = v47;

  MEMORY[0x19A8C3C80](v49);
  result = sub_195FA0698();
  if ((result & 0x100000000) == 0)
  {
    v50 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDDF0, &qword_195FAD750);
    sub_195FA01A8();
    LODWORD(value) = v50;
    sub_195F4BFD8(MEMORY[0x1E69E7CC0]);
    sub_195EBE9E8(&unk_1EAEEBCD8, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_195FA0308();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_bridgeObjectRelease_n();

    v40 = v26 | 0x4000000000000000;
    v41 = a1;
    *a1 = v9;
    goto LABEL_32;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_195EC0890(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_195EC08E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t PrimitiveBox.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v31 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrimitiveBox.CodingKeys(255, v10, v11, v12);
  swift_getWitnessTable();
  v34 = sub_195FA11C8();
  v29 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v14 = &v25 - v13;
  v30 = a2;
  v32 = a3;
  v15 = type metadata accessor for PrimitiveBox(0, a2, a3, a4);
  v27 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v35;
  sub_195FA1448();
  if (!v18)
  {
    v26 = v17;
    v35 = v15;
    v20 = v29;
    v19 = v30;
    v21 = v31;
    v22 = v33;
    sub_195FA1178();
    (*(v20 + 8))(v14, v34);
    v23 = v26;
    (*(v21 + 32))(v26, v22, v19);
    (*(v27 + 32))(v28, v23, v35);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t getEnumTagSinglePayload for ControlsXPCDefinition(unsigned int *a1, int a2)
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

unint64_t sub_195EC0D2C()
{
  result = qword_1ED457A68;
  if (!qword_1ED457A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED457A68);
  }

  return result;
}

unint64_t sub_195EC0D80()
{
  v1 = 0xD000000000000010;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

_WORD *storeEnumTagSinglePayload for ControlsXPCDefinition(_WORD *result, int a2, int a3)
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

void *URL.extendedAttribute<A>(named:of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = MEMORY[0x1E6969080];
  result = sub_195FA0418();
  if (!v6)
  {
    if (a3 == v8)
    {
      return swift_dynamicCast();
    }

    else
    {
      sub_195FA02A8();
      swift_allocObject();
      sub_195FA0298();
      sub_195FA0288();

      return sub_195EC0890(v10, v11);
    }
  }

  return result;
}

uint64_t DeviceScopedIdentity.description.getter(uint64_t a1)
{
  DeviceScopedIdentity.token.getter(a1, &v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8F0, &unk_195FACA00);
  sub_195EB5ED4();
  v1 = sub_195FA0828();
  swift_bridgeObjectRelease_n();
  return v1;
}

Swift::Bool __swiftcall CHSWidgetExtensionProviderOptions.matches(controlDescriptor:)(CHSControlDescriptor *controlDescriptor)
{
  v2 = v1;
  v4 = [v2 controlsPredicate];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [(CHSBaseDescriptor *)controlDescriptor extensionIdentity];
  v7 = [(CHSExtensionIdentity *)v6 isRemote];

  if (v7 && ([v5 includeRemote] & 1) == 0 || (v8 = -[CHSBaseDescriptor extensionIdentity](controlDescriptor, sel_extensionIdentity), v9 = -[CHSExtensionIdentity isRemote](v8, sel_isRemote), v8, (v9 & 1) == 0) && objc_msgSend(v5, sel_includeOnlyRemoteEligible) && (_sSo33CHSWidgetExtensionProviderOptionsC14ChronoServicesE33controlDescriptorIsRemoteEligibleySbSo010CHSControlH0CFZ_0(controlDescriptor), (v10 & 1) == 0))
  {
LABEL_12:

    return 0;
  }

  if (![v5 includeVisible] || -[CHSControlDescriptor hiddenControl](controlDescriptor, sel_hiddenControl))
  {
    if ([v5 includeHidden])
    {
      v11 = [(CHSControlDescriptor *)controlDescriptor hiddenControl];

      return (v11 & 1) != 0;
    }

    goto LABEL_12;
  }

  return 1;
}

Swift::Bool __swiftcall CHSWidgetExtensionProviderOptions.matches(extension:)(CHSWidgetExtension *extension)
{
  v3 = [v1 widgetsPredicate];
  if (v3)
  {

    v4 = [(CHSWidgetExtension *)extension orderedWidgetDescriptors];
    if (v4)
    {
      v5 = v4;
      sub_195EB4B30(0, &qword_1EAEEC138, off_1E7452768);
      v6 = sub_195FA0B38();

      if (v6 >> 62)
      {
LABEL_16:
        v7 = sub_195FA0E88();
        if (v7)
        {
LABEL_5:
          v8 = 0;
          while (v7 != v8)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v9 = MEMORY[0x19A8C4520](v8, v6);
            }

            else
            {
              if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_15;
              }

              v9 = *(v6 + 8 * v8 + 32);
            }

            v10 = v9;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_15:
              __break(1u);
              goto LABEL_16;
            }

            v11 = [v1 matchesWidgetDescriptor_];

            ++v8;
            if (v11)
            {
              LOBYTE(v12) = 1;
              goto LABEL_36;
            }
          }
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_5;
        }
      }
    }
  }

  v13 = [v1 controlsPredicate];
  if (v13)
  {

    v12 = [(CHSWidgetExtension *)extension orderedControlDescriptors];
    if (v12)
    {
      sub_195EB4B30(0, &qword_1EAEEBE70, off_1E74525A0);
      v14 = sub_195FA0B38();

      if (v14 >> 62)
      {
LABEL_34:
        v15 = sub_195FA0E88();
        if (v15)
        {
LABEL_22:
          v16 = 0;
          while (1)
          {
            LOBYTE(v12) = v15 != v16;
            if (v15 == v16)
            {
              goto LABEL_36;
            }

            if ((v14 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x19A8C4520](v16, v14);
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v17 = *(v14 + 8 * v16 + 32);
            }

            v18 = v17;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            v19 = [v1 matchesControlDescriptor_];

            ++v16;
            if (v19)
            {
              goto LABEL_36;
            }
          }
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_22;
        }
      }

      LOBYTE(v12) = 0;
LABEL_36:
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

uint64_t sub_195EC1C90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED8E8, &unk_195FAC890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_195FAC070;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v7 = sub_195EC1F60(inited);
  swift_setDeallocating();
  sub_195EC2148(inited + 32);
  v37 = v7;
  v8 = OBJC_IVAR___CHSEquivalentBundleIdentifierResolver_categoriesPrimitives;
  v9 = qword_1F0A51650;
  v10 = *(v3 + OBJC_IVAR___CHSEquivalentBundleIdentifierResolver_categoriesPrimitives);
  swift_unknownObjectRetain();
  v11 = sub_195FA0888();
  v12 = [v10 resolveBundleIdentifier:v11 from:v9 to:1];

  swift_unknownObjectRelease();
  if (v12)
  {
    v13 = sub_195FA08B8();
    v15 = v14;

    sub_195EC1FF8(v36, v13, v15);
  }

  v16 = *(v3 + v8);
  swift_unknownObjectRetain();
  v17 = sub_195FA0888();
  v18 = [v16 resolveBundleIdentifier:v17 from:v9 to:0];

  swift_unknownObjectRelease();
  if (v18)
  {
    v19 = sub_195FA08B8();
    v21 = v20;

    sub_195EC1FF8(v36, v19, v21);
  }

  v22 = qword_1F0A51658;
  v23 = *(v3 + v8);
  swift_unknownObjectRetain();
  v24 = sub_195FA0888();
  v25 = [v23 resolveBundleIdentifier:v24 from:v22 to:1];

  swift_unknownObjectRelease();
  if (v25)
  {
    v26 = sub_195FA08B8();
    v28 = v27;

    sub_195EC1FF8(v36, v26, v28);
  }

  v29 = *(v3 + v8);
  swift_unknownObjectRetain();
  v30 = sub_195FA0888();
  v31 = [v29 resolveBundleIdentifier:v30 from:v22 to:0];

  swift_unknownObjectRelease();
  if (v31)
  {
    v32 = sub_195FA08B8();
    v34 = v33;

    sub_195EC1FF8(v36, v32, v34);
  }

  return v37;
}

uint64_t sub_195EC1F60(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x19A8C41E0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_195EC1FF8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_195EC1FF8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_195FA1398();
  sub_195FA0958();
  v8 = sub_195FA13E8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_195FA12B8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_195EC26B0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

unint64_t sub_195EC219C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_195ECA0D8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_195EC41E8(v14, a3 & 1);
      result = sub_195ECA0D8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_195FA1338();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_195F5EE38();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_195EC23B8(void *a1, void *a2, void *a3)
{
  v6 = [a1 identity];
  v7 = &v6[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
  swift_beginAccess();
  v8 = *(v7 + 1);

  if (v8)
  {
    v9 = sub_195FA0888();

    v10 = [a2 equivalentBundleIdentifiersForBundleIdentifier_];

    v11 = sub_195FA0BF8();
    sub_195FA13F8();
    sub_195EC408C(v27, v11);

    v12 = sub_195FA13D8();
    v13 = v12;
    if (*(*a3 + 16) && (sub_195EC44C4(v12), (v14 & 1) != 0))
    {
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    v26 = v15;
    v16 = a1;
    MEMORY[0x19A8C40E0]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_195FA0B58();
    }

    sub_195FA0B78();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *a3;
    *a3 = 0x8000000000000000;
    sub_195EC219C(v26, v13, isUniquelyReferenced_nonNull_native);
    *a3 = v25;
  }

  else
  {
    if (qword_1EAEED028 != -1)
    {
      swift_once();
    }

    v18 = sub_195FA0678();
    __swift_project_value_buffer(v18, qword_1EAEEE218);
    v19 = a1;
    v20 = sub_195FA0658();
    v21 = sub_195FA0CA8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = [v19 identity];
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_195EB2000, v20, v21, "Dropping extension %@: missing container bundle identifier", v22, 0xCu);
      sub_195F27EBC(v23);
      MEMORY[0x19A8C5B70](v23, -1, -1);
      MEMORY[0x19A8C5B70](v22, -1, -1);
    }
  }
}

uint64_t sub_195EC26B0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_195EC44C8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_195F6D0BC();
      goto LABEL_16;
    }

    sub_195F6D7C8(v8 + 1);
  }

  v10 = *v4;
  sub_195FA1398();
  sub_195FA0958();
  result = sub_195FA13E8();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_195FA12B8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_195FA1328();
  __break(1u);
  return result;
}

uint64_t CHSWidgetExtensionContainer.isEqual(_:)(uint64_t a1)
{
  v2 = sub_195EB773C(a1, v8);
  if (!v9)
  {
    sub_195EB7914(v8);
    goto LABEL_6;
  }

  type metadata accessor for CHSWidgetExtensionContainer(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v5 = 0;
    return v5 & 1;
  }

  if (v7 == v1)
  {

    v5 = 1;
  }

  else
  {
    v3 = *&v1[OBJC_IVAR___CHSWidgetExtensionContainer_storage];
    v4 = *&v7[OBJC_IVAR___CHSWidgetExtensionContainer_storage];

    v5 = sub_195EC297C(v3, v4);
  }

  return v5 & 1;
}

uint64_t sub_195EC297C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_195EB4B30(0, &qword_1EAEEC4B8, off_1E7452788);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x19A8C4520](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x19A8C4520](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_195FA0D88();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_195FA0D88();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_195FA0E88();
  }

  result = sub_195FA0E88();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

unint64_t sub_195EC2C54(unint64_t result, uint64_t a2)
{
  v2 = result;
  if (!(result >> 62))
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_23:
  v18 = a2;
  result = sub_195FA0E88();
  a2 = v18;
  v3 = result;
  if (!result)
  {
    goto LABEL_24;
  }

LABEL_3:
  v19 = a2;
  v4 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x19A8C4520](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v8 = [v5 identity];

    v9 = &v8[OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier];
    swift_beginAccess();
    v11 = *v9;
    v10 = *(v9 + 1);

    ++v4;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_195EB50CC(0, v22[2] + 1, 1, v22);
      }

      v13 = v22[2];
      v12 = v22[3];
      if (v13 >= v12 >> 1)
      {
        v22 = sub_195EB50CC((v12 > 1), v13 + 1, 1, v22);
      }

      v22[2] = v13 + 1;
      v14 = &v22[2 * v13];
      v14[4] = v11;
      v14[5] = v10;
      v4 = v7;
    }
  }

  v15 = v22[2];

  if (v20)
  {
    result = sub_195FA0E88();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 == result)
  {
    v16 = [v21 init];
    *&v16[OBJC_IVAR___CHSWidgetExtensionContainer_storage] = v2;
    v17 = v16;

    *&v17[OBJC_IVAR___CHSWidgetExtensionContainer_iconResolver] = v19;
    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    return v17;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_195EC2F2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id sub_195EC2FB8(unint64_t a1)
{
  v3 = [v1 widgetExtensionContainers];
  type metadata accessor for CHSWidgetExtensionContainer(0);
  v4 = sub_195FA0B38();

  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_195FA0E88())
  {
    v20 = a1;
    v6 = (a1 + OBJC_IVAR___CHSExtensionIdentity_containerBundleIdentifier);
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v7 = 0;
    a1 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A8C4520](v7, v4);
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 containerBundleIdentifier];
      v12 = sub_195FA08B8();
      v14 = v13;

      v15 = v6[1];
      if (v15)
      {
        if (v12 == *v6 && v14 == v15)
        {

LABEL_21:

          v19 = [v9 extensionForExtensionIdentity_];

          return v19;
        }

        v17 = sub_195FA12B8();

        if (v17)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_19:

  return 0;
}

id sub_195EC327C()
{
  v1 = *(v0 + OBJC_IVAR___CHSWidgetExtensionContainer_storage);
  if (v1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_195FA0E88())
  {

    if (!i)
    {
      break;
    }

    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x19A8C4520](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 identity];
      v8 = [v7 isRemote];

      if ((v8 & 1) == 0)
      {

        return v5;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

LABEL_13:

  v9 = *(v14 + v13);
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_15;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  result = sub_195FA0E88();
  if (!result)
  {
    goto LABEL_25;
  }

LABEL_15:
  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_26:

    v12 = MEMORY[0x19A8C4520](0, v9);

    return v12;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void __swiftcall CHSWidgetExtensionContainer.extension(for:)(CHSWidgetExtension_optional *__return_ptr retstr, CHSExtensionIdentity *a2)
{
  v3 = *(v2 + OBJC_IVAR___CHSWidgetExtensionContainer_storage);
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_195FA0E88())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x19A8C4520](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_195EB4B30(0, &qword_1EAEEBE10, 0x1E69E58C0);
      v9 = [v7 identity];
      v10 = sub_195FA0D88();

      if ((v10 & 1) == 0)
      {

        ++v5;
        if (v8 != i)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_13:
}

void *sub_195EC361C(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v32 = a2;
  v3 = [v2 widgetExtensionContainers];
  type metadata accessor for CHSWidgetExtensionContainer(0);
  v4 = sub_195FA0B38();

  v26 = v4;
  if (v4 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_195FA0E88())
  {
    v6 = 0;
    v29 = v26 & 0xFFFFFFFFFFFFFF8;
    v30 = v26 & 0xC000000000000001;
    v27 = i;
    v28 = v26 + 32;
    while (1)
    {
      if (v30)
      {
        v7 = MEMORY[0x19A8C4520](v6, v26);
      }

      else
      {
        if (v6 >= *(v29 + 16))
        {
          goto LABEL_28;
        }

        v7 = *(v28 + 8 * v6);
      }

      v8 = v7;
      if (__OFADD__(v6++, 1))
      {
        break;
      }

      v10 = *&v7[OBJC_IVAR___CHSWidgetExtensionContainer_storage];
      if (v10 >> 62)
      {
        v7 = sub_195FA0E88();
        v11 = v7;
        if (!v7)
        {
LABEL_21:
          v13 = MEMORY[0x1E69E7CC0];
          goto LABEL_22;
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_21;
        }
      }

      v35[0] = MEMORY[0x1E69E7CC0];

      sub_195EC3A54(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        goto LABEL_29;
      }

      v33 = v8;
      v34 = v6;
      v12 = 0;
      v13 = v35[0];
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x19A8C4520](v12, v10);
        }

        else
        {
          v14 = *(v10 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = [v14 identity];

        v17 = &v16[OBJC_IVAR___CHSExtensionIdentity_extensionBundleIdentifier];
        swift_beginAccess();
        v19 = *v17;
        v18 = *(v17 + 1);

        v35[0] = v13;
        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_195EC3A54((v20 > 1), v21 + 1, 1);
          v13 = v35[0];
        }

        ++v12;
        *(v13 + 16) = v21 + 1;
        v22 = v13 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v18;
      }

      while (v11 != v12);

      i = v27;
      v8 = v33;
      v6 = v34;
LABEL_22:
      v35[0] = v31;
      v35[1] = v32;
      MEMORY[0x1EEE9AC00](v7);
      v25[2] = v35;
      v23 = sub_195EB5220(sub_195EC3A74, v25, v13);

      if (v23)
      {

        return v8;
      }

      if (v6 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

LABEL_24:

  return 0;
}

void *sub_195EC3920(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA68, &qword_195FAC988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDA70, &qword_195FAC990);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_195EC3A54(void *a1, int64_t a2, char a3)
{
  result = sub_195EC3920(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

__CFString *NSStringFromCHSTintFilterStyle(unint64_t a1)
{
  if (a1 > 7)
  {
    return @"unknown";
  }

  else
  {
    return off_1E74533B0[a1];
  }
}

uint64_t sub_195EC3F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() sharedCategories];
  v7 = *MEMORY[0x1E6993B78];
  v8 = *MEMORY[0x1E6993B70];
  if (a4)
  {
    v9 = *MEMORY[0x1E6993B70];
  }

  else
  {
    v9 = *MEMORY[0x1E6993B78];
  }

  v10 = v9;
  v11 = sub_195FA0888();
  if (a3)
  {
    v12 = v8;
  }

  else
  {
    v12 = v7;
  }

  v13 = v12;
  v14 = [v6 bundleIDForPlatform:v10 fromBundleID:v11 platform:v13];

  if (!v14)
  {
    return 0;
  }

  v15 = sub_195FA08B8();

  return v15;
}

uint64_t sub_195EC408C(__int128 *a1, uint64_t a2)
{
  sub_195FA13E8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x19A8C4970](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_195FA1398();

        sub_195FA0958();
        v11 = sub_195FA13E8();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_195EC41E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEE0B8, &qword_195FAEFC8);
  result = sub_195FA1098();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
    v14 = result + 64;
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
      }

      result = sub_195FA1388();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_195EC4458(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_195EC44C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDAF8, &unk_195FACCD0);
  result = sub_195FA0ED8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_195FA1398();
      sub_195FA0958();
      result = sub_195FA13E8();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

__CFString *CHSWidgetFontStyleDescription(unint64_t a1)
{
  if (a1 >= 0xD)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unexpected CHSWidgetFontStyle value: %ld", a1];
  }

  else
  {
    v2 = off_1E74544C0[a1];
  }

  return v2;
}

id NSStringFromCHSColorSchemes(uint64_t a1)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"["];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __NSStringFromCHSColorSchemes_block_invoke;
  v11 = &unk_1E7453920;
  v13 = v14;
  v3 = v2;
  v12 = v3;
  v4 = v9;
  if (a1)
  {
    v5 = 0;
    v15 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v10)(v4);
        if (v15)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  [v3 appendString:@"]"];
  _Block_object_dispose(v14, 8);

  return v3;
}

void sub_195EC4CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NSStringFromCHSWidgetProximities(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:&stru_1F0A56DE8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __NSStringFromCHSWidgetProximities_block_invoke;
  v11 = &unk_1E74537F0;
  v3 = v2;
  v12 = v3;
  v4 = v9;
  if (a1)
  {
    v5 = 0;
    v13 = 0;
    v6 = vcnt_s8(a1);
    v6.i16[0] = vaddlv_u8(v6);
    v7 = v6.i32[0];
    do
    {
      if (((1 << v5) & a1) != 0)
      {
        (v10)(v4);
        if (v13)
        {
          break;
        }

        --v7;
      }

      if (v5 > 0x3E)
      {
        break;
      }

      ++v5;
    }

    while (v7 > 0);
  }

  return v3;
}

__CFString *CHSScreenshotColorSchemeDescription(uint64_t a1)
{
  if (a1)
  {
    return @"light";
  }

  else
  {
    return @"dark";
  }
}

uint64_t sub_195EC529C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v42 = a4;
  v41 = a3;
  v43 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDF78, &qword_195FAE430);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDF80, &qword_195FAE438);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDF88, &qword_195FAE440);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDF90, &qword_195FAE448);
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDF98, &qword_195FAE450);
  v30 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDFA0, &qword_195FAE458);
  v18 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v20 = &v29 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_195EC5C44();
  sub_195FA1468();
  if (v42 <= 1u)
  {
    if (!v42)
    {
      v48 = 2;
      sub_195F52CB8();
      v21 = v44;
      sub_195FA11D8();
      v22 = v34;
      sub_195FA11F8();
      (*(v33 + 8))(v11, v22);
      return (*(v18 + 8))(v20, v21);
    }

    v49 = 3;
    sub_195F52C64();
    v23 = v35;
    v21 = v44;
    sub_195FA11D8();
    v45 = v43;
    type metadata accessor for CHSRemoteDeviceType(0);
    sub_195F52D60(&qword_1EAEEDFA8, &protocol conformance descriptor for CHSRemoteDeviceType);
    v24 = v38;
    sub_195FA1238();
    v25 = v37;
LABEL_7:
    (*(v25 + 8))(v23, v24);
    return (*(v18 + 8))(v20, v21);
  }

  if (v42 == 2)
  {
    v50 = 4;
    sub_195F52C10();
    v23 = v36;
    v21 = v44;
    sub_195FA11D8();
    v24 = v40;
    sub_195FA11F8();
    v25 = v39;
    goto LABEL_7;
  }

  v27 = (v18 + 8);
  if (v43 | v41)
  {
    v47 = 1;
    sub_195F52D0C();
    v28 = v44;
    sub_195FA11D8();
    (*(v31 + 8))(v14, v32);
  }

  else
  {
    v46 = 0;
    sub_195EC5D48();
    v28 = v44;
    sub_195FA11D8();
    (*(v30 + 8))(v17, v15);
  }

  return (*v27)(v20, v28);
}

Swift::Void __swiftcall CHSRemoteDevicePredicate.encode(with:)(NSCoder with)
{
  sub_195FA02E8();
  swift_allocObject();
  sub_195FA02D8();
  v8 = *(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate);
  v9 = *(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 8);
  v10 = *(v1 + OBJC_IVAR___CHSRemoteDevicePredicate_predicate + 16);
  sub_195EC5D9C(v8, v9, v10);
  sub_195EC5AB0();
  v3 = sub_195FA02C8();
  v5 = v4;
  sub_195EC5C98(v8, v9, v10);

  sub_195EC08E4(v3, v5);
  v6 = sub_195FA04B8();
  sub_195EC0890(v3, v5);
  v7 = sub_195FA0888();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
  swift_unknownObjectRelease();

  sub_195EC5A34(v3, v5);
}

uint64_t sub_195EC5A34(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_195EC0890(result, a2);
  }

  return result;
}

unint64_t sub_195EC5AB0()
{
  result = qword_1EAEEBD10;
  if (!qword_1EAEEBD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEBD10);
  }

  return result;
}

uint64_t _s9PredicateO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9PredicateO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_195EC5C44()
{
  result = qword_1EAEEC3F8;
  if (!qword_1EAEEC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC3F8);
  }

  return result;
}

uint64_t sub_195EC5C98(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 2) == 2)
  {
  }

  return result;
}

unint64_t sub_195EC5CB4()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0xD000000000000010;
  v4 = 0x7954656369766564;
  if (v1 != 3)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7105633;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_195EC5D48()
{
  result = qword_1EAEEC3D0;
  if (!qword_1EAEEC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC3D0);
  }

  return result;
}

uint64_t sub_195EC5D9C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if ((a3 | 2) == 2)
  {
  }

  return result;
}

Class __getNSLocaleClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  if (!IntlPreferencesLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x1E69E9820];
    v7[2] = 3221225472;
    v7[3] = __IntlPreferencesLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_1E74545C0;
    v9 = 0;
    IntlPreferencesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!IntlPreferencesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntlPreferencesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CHSBaseDescriptor.m" lineNumber:17 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("NSLocale");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNSLocaleClass(void)_block_invoke"];
    [v5 handleFailureInFunction:v6 file:@"CHSBaseDescriptor.m" lineNumber:18 description:{@"Unable to find class %s", "NSLocale"}];

LABEL_10:
    __break(1u);
  }

  getNSLocaleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_195EC61E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void CHSWidgetFamilyMaskEnumerateFamilies(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __CHSWidgetFamilyMaskEnumerateFamilies_block_invoke;
    v6[3] = &unk_1E74543E0;
    v8 = a1;
    v7 = v3;
    v5 = _Block_copy(v6);
    v5[2](v5, 2);
    v5[2](v5, 4);
    v5[2](v5, 8);
    v5[2](v5, 32);
    v5[2](v5, 0x4000);
    v5[2](v5, 0x2000);
    v5[2](v5, 16);
    v5[2](v5, 64);
    v5[2](v5, 128);
    v5[2](v5, 256);
    v5[2](v5, 512);
    v5[2](v5, 1024);
    v5[2](v5, 2048);
    v5[2](v5, 4096);
  }
}

uint64_t __CHSWidgetFamilyMaskEnumerateFamilies_block_invoke(uint64_t result, uint64_t a2)
{
  if ((a2 & ~*(result + 40)) == 0)
  {
    v2 = *(result + 32);
    if ((a2 & 2) != 0)
    {
      v3 = 1;
    }

    else if ((a2 & 4) != 0)
    {
      v3 = 2;
    }

    else if ((a2 & 8) != 0)
    {
      v3 = 3;
    }

    else if ((a2 & 0x20) != 0)
    {
      v3 = 5;
    }

    else if ((a2 & 0x4000) != 0)
    {
      v3 = 14;
    }

    else if ((a2 & 0x2000) != 0)
    {
      v3 = 13;
    }

    else if ((a2 & 0x10) != 0)
    {
      v3 = 4;
    }

    else if ((a2 & 0x40) != 0)
    {
      v3 = 6;
    }

    else if ((a2 & 0x80) != 0)
    {
      v3 = 7;
    }

    else if ((a2 & 0x100) != 0)
    {
      v3 = 8;
    }

    else if ((a2 & 0x200) != 0)
    {
      v3 = 9;
    }

    else if ((a2 & 0x400) != 0)
    {
      v3 = 10;
    }

    else if ((a2 & 0x800) != 0)
    {
      v3 = 11;
    }

    else
    {
      v3 = (a2 << 51 >> 63) & 0xC;
    }

    return (*(v2 + 16))(v2, v3);
  }

  return result;
}

id StateCaptureItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StateCaptureService.init()()
{
  v12 = sub_195FA0CF8();
  v1 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_195FA0CD8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_195FA07D8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC14ChronoServices19StateCaptureService_itemsByIdentifier] = MEMORY[0x1E69E7CC8];
  *&v0[OBJC_IVAR____TtC14ChronoServices19StateCaptureService_subitemsByIdentifier] = v6;
  v11 = OBJC_IVAR____TtC14ChronoServices19StateCaptureService_queue;
  v7 = sub_195EB4B30(0, &qword_1EAEEC590, 0x1E69E9610);
  v10[1] = "tateCaptureItem";
  v10[2] = v7;
  sub_195FA07C8();
  v14 = MEMORY[0x1E69E7CC0];
  sub_195EC6848(&qword_1EAEEC5A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195EB5F38(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v12);
  *&v0[v11] = sub_195FA0D38();
  v8 = type metadata accessor for StateCaptureService();
  v13.receiver = v0;
  v13.super_class = v8;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_195EC6848(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_195EC6890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_195EC6904()
{
  type metadata accessor for DefaultKeybagStateProvider();
  v0 = swift_allocObject();
  result = sub_195EC699C();
  qword_1EAEF7330 = v0;
  return result;
}

uint64_t sub_195EC699C()
{
  v1 = sub_195FA0CF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_195FA0CD8();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_195FA07D8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED740, &qword_195FAC5A0);
  swift_allocObject();
  *(v0 + 16) = sub_195FA06F8();
  *(v0 + 24) = 4;
  LOBYTE(v19) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED748, &qword_195FAC5A8);
  swift_allocObject();
  v7 = sub_195FA0728();
  v18 = v0;
  *(v0 + 32) = v7;
  *(v0 + 40) = 0;
  v8 = sub_195EC6FD4();
  v16 = "unlockInProgress";
  v17 = v8;
  sub_195FA07B8();
  v19 = MEMORY[0x1E69E7CC0];
  v15[3] = sub_195EBDB58(&qword_1EAEEC5A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v15[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEE3A0, &unk_195FAC790);
  sub_195EB5F38(&qword_1EAEEC5B0, &unk_1EAEEE3A0, &unk_195FAC790, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  v9 = *MEMORY[0x1E69E8090];
  v10 = v2 + 104;
  v11 = *(v2 + 104);
  v15[1] = v10;
  v11(v4, v9, v1);
  *(v18 + 48) = sub_195FA0D38();
  v16 = "kit.keybagLockState";
  sub_195FA07B8();
  v19 = MEMORY[0x1E69E7CC0];
  sub_195FA0E38();
  v11(v4, v9, v1);
  v12 = sub_195FA0D38();
  v13 = v18;
  *(v18 + 56) = v12;
  *(v13 + 64) = 0;
  sub_195EC7020(v13);
  return v13;
}

char *CHSRemoteDevicePredicate.init(coder:)(void *a1)
{
  sub_195EB4B30(0, &qword_1EAEEC2F0, 0x1E695DEF0);
  v2 = sub_195FA0D58();
  if (v2)
  {
    v3 = v2;
    sub_195FA04C8();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_195EC6FD4()
{
  result = qword_1EAEEC590;
  if (!qword_1EAEEC590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAEEC590);
  }

  return result;
}

void sub_195EC7020(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_195EC7614;
  *(v3 + 24) = a1;
  v15 = sub_195EC74B8;
  v16 = v3;
  v11 = MEMORY[0x1E69E9820];
  v12 = 1107296256;
  v13 = sub_195EC7454;
  v14 = &block_descriptor_44;
  v4 = _Block_copy(&v11);
  v5 = v2;

  dispatch_sync(v5, v4);

  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = swift_allocObject();
    swift_weakInit();
    v15 = sub_195EBCD64;
    v16 = v7;
    v11 = MEMORY[0x1E69E9820];
    v12 = 1107296256;
    v13 = sub_195EBCCEC;
    v14 = &block_descriptor_50;
    v8 = _Block_copy(&v11);
    v9 = v6;

    v10 = MKBEventsRegister();
    _Block_release(v8);

    *(a1 + 64) = v10;
  }
}

uint64_t sub_195EC7234()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_195EC7618()
{
  result = qword_1EAEEC2F8;
  if (!qword_1EAEEC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAEEC2F8);
  }

  return result;
}

uint64_t sub_195EC766C(uint64_t a1)
{
  *(a1 + 40) = MKBDeviceUnlockedSinceBoot() == 1;
  sub_195EC76C8();
  sub_195EBCE08(&v5);
  v2 = *(a1 + 24);
  *(a1 + 24) = v5;
  v4 = v2;
  return sub_195EBCE70(&v4);
}

uint64_t sub_195EC76C8()
{
  v1 = v0;
  v2 = sub_195FA0778();
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_195FA07D8();
  v5 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  v8 = *(v0 + 40);
  if (qword_1EAEEC278 != -1)
  {
    swift_once();
  }

  v9 = sub_195FA0678();
  __swift_project_value_buffer(v9, qword_1EAEF7300);
  v10 = sub_195FA0658();
  v11 = sub_195FA0CC8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67240192;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_195EB2000, v10, v11, "Has unlocked since boot: %{BOOL,public}d", v12, 8u);
    MEMORY[0x19A8C5B70](v12, -1, -1);
  }

  v13 = *(v1 + 56);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = v8;
  aBlock[4] = sub_195EC7E04;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195EBDBE8;
  aBlock[3] = &block_descriptor_36;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  sub_195FA0798();
  v21 = MEMORY[0x1E69E7CC0];
  sub_195EBDB58(&qword_1EAEEC450, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDB20, qword_195FACF30);
  sub_195EB5F38(&unk_1EAEEC440, &unk_1EAEEDB20, qword_195FACF30, MEMORY[0x1E69E6328]);
  sub_195FA0E38();
  MEMORY[0x19A8C42F0](0, v7, v4, v15);
  _Block_release(v15);

  (*(v20 + 8))(v4, v2);
  (*(v5 + 8))(v7, v19);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_195EC7B44()
{
  sub_195EC7BB0(&unk_1F0A51360);
  sub_195EC7E10(&unk_1F0A51380);
  v0 = sub_195FA07E8();

  qword_1EAEEC298 = v0;
  return result;
}

unint64_t sub_195EC7BB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED610, &qword_195FAC368);
    v3 = sub_195FA10B8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_195EC7CCC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_195EC7CCC(uint64_t a1, uint64_t a2)
{
  sub_195FA1398();
  sub_195FA0958();
  v4 = sub_195FA13E8();

  return sub_195EC7D4C(a1, a2, v4);
}

unint64_t sub_195EC7D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_195FA12B8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_195EC7E10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED788, &unk_195FAC780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_195EC7E78(uint64_t a1, char a2)
{

  sub_195FA0718();
}

unsigned int *sub_195EC7ED4(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      v18[1] = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t static KeybagStateProviderFactory.newKeybagStateProvider()@<X0>(uint64_t *a1@<X8>)
{
  if (qword_1EAEEC288 != -1)
  {
    swift_once();
  }

  v2 = qword_1EAEF7330;
  a1[3] = type metadata accessor for DefaultKeybagStateProvider();
  a1[4] = &off_1F0A52240;
  *a1 = v2;
}

void sub_195EC81DC()
{
  v1 = *(*v0 + 48);
  sub_195FA0D18();
}

uint64_t storeEnumTagSinglePayload for KeybagLockState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KeybagLockState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_195EC83D0()
{
  v1 = *(*v0 + 48);
  sub_195FA0D18();

  return v3;
}

uint64_t sub_195EC8474()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED740, &qword_195FAC5A0);
  sub_195EB5F38(&qword_1EAEEC258, &qword_1EAEED740, &qword_195FAC5A0, MEMORY[0x1E695BF88]);
  return sub_195FA0738();
}

uint64_t sub_195EC87B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEED748, &qword_195FAC5A8);
  sub_195EB5F38(&qword_1EAEEC250, &qword_1EAEED748, &qword_195FAC5A8, MEMORY[0x1E695BFB0]);
  return sub_195FA0738();
}

uint64_t sub_195EC8A3C(void *a1)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDF08, &qword_195FAE3F8);
  v54 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v43 - v2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDF10, &qword_195FAE400);
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v43 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDF18, &qword_195FAE408);
  v50 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v56 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDF20, &qword_195FAE410);
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDF28, &qword_195FAE418);
  v46 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAEEDF30, &unk_195FAE420);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_195EC5C44();
  v16 = v58;
  sub_195FA1448();
  if (!v16)
  {
    v17 = v10;
    v44 = v8;
    v45 = 0;
    v10 = v56;
    v18 = v57;
    v58 = v12;
    v19 = sub_195FA11A8();
    v20 = *(v19 + 16);
    if (!v20 || ((v21 = *(v19 + 32), v20 == 1) ? (v22 = v21 == 5) : (v22 = 1), v22))
    {
      v23 = sub_195FA0F88();
      swift_allocError();
      v24 = v11;
      v26 = v25;
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAEEDF40, &unk_195FAC060) + 48);
      *v26 = &_s9PredicateON;
      sub_195FA10F8();
      sub_195FA0F78();
      (*(*(v23 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v58 + 8))(v14, v24);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v19 + 32) <= 1u)
      {
        if (*(v19 + 32))
        {
          v62 = 1;
          sub_195F52D0C();
          v31 = v14;
          v37 = v45;
          sub_195FA10E8();
          v33 = v58;
          v45 = v37;
          if (!v37)
          {
            (*(v48 + 8))(v7, v49);
            (*(v33 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v10 = 1;
            goto LABEL_9;
          }
        }

        else
        {
          v61 = 0;
          sub_195EC5D48();
          v31 = v14;
          v32 = v45;
          sub_195FA10E8();
          v33 = v58;
          v45 = v32;
          if (!v32)
          {
            (*(v46 + 8))(v17, v44);
            (*(v33 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v10 = 0;
            goto LABEL_9;
          }
        }

        (*(v33 + 8))(v31, v11);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      if (v21 == 2)
      {
        v63 = 2;
        sub_195F52CB8();
        v34 = v10;
        v35 = v45;
        sub_195FA10E8();
        if (!v35)
        {
          v38 = v47;
          v39 = sub_195FA1138();
          v45 = 0;
          v10 = v39;
          (*(v50 + 8))(v34, v38);
        }

        (*(v58 + 8))(v14, v11);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v21 == 3)
        {
          v10 = v19;
          v64 = 3;
          sub_195F52C64();
          v28 = v55;
          v29 = v45;
          sub_195FA10E8();
          v30 = v58;
          if (!v29)
          {
            type metadata accessor for CHSRemoteDeviceType(0);
            sub_195F52D60(&qword_1EAEEDF58, &protocol conformance descriptor for CHSRemoteDeviceType);
            v40 = v51;
            sub_195FA1178();
            v45 = 0;
            (*(v53 + 8))(v28, v40);
            (*(v30 + 8))(v14, v11);
            swift_unknownObjectRelease();
            v10 = v60;
            goto LABEL_9;
          }
        }

        else
        {
          v65 = 4;
          sub_195F52C10();
          v36 = v45;
          sub_195FA10E8();
          v10 = v36;
          v30 = v58;
          if (!v36)
          {
            v41 = v52;
            v42 = sub_195FA1138();
            v45 = 0;
            v10 = v42;
            (*(v54 + 8))(v18, v41);
            (*(v30 + 8))(v14, v11);
            swift_unknownObjectRelease();
            goto LABEL_9;
          }
        }

        (*(v30 + 8))(v14, v11);
        swift_unknownObjectRelease();
      }
    }
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  return v10;
}

uint64_t sub_195EC93C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_195EC8A3C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

_DWORD *sub_195EC93F0(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for UnfairLock();
  v3 = swift_allocObject();
  result = swift_slowAlloc();
  *result = 0;
  *(v3 + 16) = result;
  *a2 = v3;
  return result;
}

uint64_t sub_195EC945C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_195EC94A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_195EC94A8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_195FA12B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_195FA12B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000195FBF960 == a2 || (sub_195FA12B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (sub_195FA12B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000195FC14E0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_195FA12B8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_195EC966C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13);
  sub_195F5F4EC(v13, a2, a3, 0, a4, a5, a6);
  return (*(v11 + 8))(v13, a5);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_195EC97E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_195EC9868@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  aBlock[4] = sub_195F5FF80;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195F585A0;
  aBlock[3] = &block_descriptor_9;
  v13 = _Block_copy(aBlock);

  v14 = os_state_add_handler();
  _Block_release(v13);
  if (v14)
  {
    if (qword_1EAEEBF18 != -1)
    {
      swift_once();
    }

    v15 = off_1EAEEBF28;
    os_unfair_lock_lock(*(off_1EAEEBF28 + 2));
    objc_allocWithZone(type metadata accessor for StateCaptureEntry());

    v16 = sub_195EC9D08(a3, a4, a5, a1, a2);
    if (qword_1EAEEBF00 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v17 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = qword_1EAEEBF10;
    qword_1EAEEBF10 = 0x8000000000000000;
    sub_195EC9F90(v17, v14, isUniquelyReferenced_nonNull_native);
    qword_1EAEEBF10 = v29;
    swift_endAccess();
    os_unfair_lock_unlock(v15[2]);
    v19 = type metadata accessor for StateCaptureInvalidator();
    v20 = objc_allocWithZone(v19);
    v20[OBJC_IVAR____TtC14ChronoServices23StateCaptureInvalidator_invalidated] = 0;
    *&v20[OBJC_IVAR____TtC14ChronoServices23StateCaptureInvalidator_handle] = v14;
    v28.receiver = v20;
    v28.super_class = v19;
    v21 = objc_msgSendSuper2(&v28, sel_init);
    *(a6 + 24) = v19;
    *(a6 + 32) = &off_1F0A540D0;

    *a6 = v21;
  }

  else
  {
    if (qword_1EAEEBEC8 != -1)
    {
      swift_once();
    }

    v23 = sub_195FA0678();
    __swift_project_value_buffer(v23, qword_1EAEF72D0);

    v24 = sub_195FA0658();
    v25 = sub_195FA0CA8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_195EBD554(a3, a4, aBlock);
      _os_log_impl(&dword_195EB2000, v24, v25, "[state-capture][%{public}s] os_state_add_handler() failed to return a handle", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x19A8C5B70](v27, -1, -1);
      MEMORY[0x19A8C5B70](v26, -1, -1);
    }

    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

uint64_t sub_195EC9C00()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_195EC9C70()
{
  v0 = sub_195FA0678();
  __swift_allocate_value_buffer(v0, qword_1EAEF72D0);
  __swift_project_value_buffer(v0, qword_1EAEF72D0);
  return sub_195FA0668();
}

id sub_195EC9D08(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EAEEBEC8 != -1)
  {
    swift_once();
  }

  v12 = sub_195FA0678();
  __swift_project_value_buffer(v12, qword_1EAEF72D0);

  v13 = sub_195FA0658();
  v14 = sub_195FA0CC8();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_195EBD554(a1, a2, &v21);
    _os_log_impl(&dword_195EB2000, v13, v14, "[state-capture] StateCaptureEntry created with title: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x19A8C5B70](v16, -1, -1);
    MEMORY[0x19A8C5B70](v15, -1, -1);
  }

  v17 = &v6[OBJC_IVAR____TtC14ChronoServices17StateCaptureEntry_title];
  *v17 = a1;
  *(v17 + 1) = a2;
  *&v6[OBJC_IVAR____TtC14ChronoServices17StateCaptureEntry_queue] = a3;
  v18 = &v6[OBJC_IVAR____TtC14ChronoServices17StateCaptureEntry_captureHandler];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = type metadata accessor for StateCaptureEntry();
  v22.receiver = v6;
  v22.super_class = v19;
  return objc_msgSendSuper2(&v22, sel_init);
}