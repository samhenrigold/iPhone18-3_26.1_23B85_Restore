uint64_t sub_19743E090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5E8, &qword_19752EA40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19743E100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19743AA50(a1, a2, a3);
  sub_197404E70(v4 + OBJC_IVAR____TtC9SwiftData34DataStoreSaveChangesRequestBuilder_editingState, v12);
  sub_19743E248(v12, a4);

  return sub_19740BE74(v12, type metadata accessor for EditingState);
}

uint64_t sub_19743E1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = type metadata accessor for DataStoreSaveChangesRequest(0, a5, a6, a4);
  result = sub_1974074E0(a1, a7 + *(v12 + 44));
  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  return result;
}

double sub_19743E248@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197404E70(a1, v9);
  swift_beginAccess();
  v10 = v2[5];
  swift_beginAccess();
  v11 = v2[6];
  swift_beginAccess();
  sub_19743E1E0(v9, v10, v11, v2[7], *(v5 + 80), *(v5 + 88), a2);

  return result;
}

uint64_t sub_19743E380(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = swift_unknownObjectRelease())
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    swift_unknownObjectRetain();
    sub_1974327FC(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19743E484(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v25 = a4;
  v27 = a3;
  v26 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_1973F68A4(AssociatedTypeWitness, AssociatedConformanceWitness);
  v9 = *(v8 + 16);
  if (v9)
  {
    v24[1] = v8;
    v10 = v8 + 32;
    do
    {
      sub_1973F7E64(v10, v35);
      v21 = v26[3];
      v22 = v26[4];
      __swift_project_boxed_opaque_existential_1Tm_1(v26, v21);
      sub_19743B2AC(v35[2], v21, v22, &v30);
      if (v31)
      {
        sub_1974028A0(&v30, v34);
        v11 = v35[1];
        v28 = v35[0];
        sub_1973FDED4(v34, &v30);
        v12 = v25;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v29 = *v12;
        *v12 = 0x8000000000000000;
        v14 = v31;
        v15 = v32;
        v16 = v33;
        v17 = __swift_mutable_project_boxed_opaque_existential_2(&v30, v31);
        MEMORY[0x1EEE9AC00](v17, v17);
        v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19);
        sub_19743B06C(v19, v28, v11, isUniquelyReferenced_nonNull_native, &v29, v14, v15, v16);
        __swift_destroy_boxed_opaque_existential_1Tm_2(v34);
        __swift_destroy_boxed_opaque_existential_1Tm_2(&v30);
        *v12 = v29;

        sub_1973F82A8(v35);
      }

      else
      {
        sub_1973F82A8(v35);
        sub_197448384(&v30, &qword_1EAF2B5E8, &qword_19752EA40);
      }

      v10 += 96;
      --v9;
    }

    while (v9);
  }

  else
  {
  }
}

uint64_t sub_19743E750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v9);
  v10 = *(v5 + 16);
  v10(v18 - v11, a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for _KKMDBackingData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  if (swift_dynamicCast() & 1) != 0 || (v10(v8, a1, a2), type metadata accessor for _StitchedBackingData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15), (swift_dynamicCast()))
  {
    v16 = *(v18[0] + 16);

    return v16;
  }

  else
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000005DLL, 0x8000000197525B00);
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

void *sub_19743E9A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = MEMORY[0x1E69E7CC8];
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm_1(a1, v6);
  result = (*(v7 + 32))(&v12, v6, v7);
  if (v13 == 255)
  {
    __break(1u);
  }

  else
  {
    v15 = v12;
    v16 = v13;
    __swift_project_boxed_opaque_existential_1Tm_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    sub_19743E484(DynamicType, a1, a2, &v14, DynamicType, a1[4]);
    v10 = v15;
    v11 = v16;
    *a3 = v14;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;
    return __swift_destroy_boxed_opaque_existential_1Tm_2(a1);
  }

  return result;
}

uint64_t sub_19743EA84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v7 = sub_1973F8364(a2);
  v9 = *(a1 + 16);
  if (!*(v9 + 16))
  {

    goto LABEL_7;
  }

  v10 = sub_1973F4028(v7, v8);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_7:
    memset(v17, 0, sizeof(v17));
    goto LABEL_8;
  }

  v13 = *(*(v9 + 56) + 8 * v10);
  result = swift_beginAccess();
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v15 = *(a1 + 32);
    if (v13 < *(v15 + 16))
    {
      sub_1973FE14C(v15 + 32 * v13 + 32, v17, &qword_1EAF2AF20, &unk_19752F320);
LABEL_8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
      v16 = swift_dynamicCast();
      return (*(*(a3 - 8) + 56))(a4, v16 ^ 1u, 1, a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_19743EC54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  sub_197522B2C();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    v18 = sub_1973F8364(a1);
    v20 = *(a2 + 16);
    if (*(v20 + 16))
    {
      v21 = sub_1973F4028(v18, v19);
      v23 = v22;

      if (v23)
      {
        v24 = *(*(v20 + 56) + 8 * v21);
        result = swift_beginAccess();
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v25 = *(a2 + 32);
          if (v24 < *(v25 + 16))
          {
            sub_1973FE14C(v25 + 32 * v24 + 32, v27, &qword_1EAF2AF20, &unk_19752F320);
LABEL_12:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
            v26 = swift_dynamicCast();
            return (*(*(a4 - 8) + 56))(a6, v26 ^ 1u, 1, a4);
          }
        }

        __break(1u);
        return result;
      }
    }

    else
    {
    }

    memset(v27, 0, sizeof(v27));
    goto LABEL_12;
  }

  v14 = v13;
  v15 = *(a5 + 64);

  v15(v14, a4, a7, a3, a5);

  v16 = *(*(a4 - 8) + 56);

  return v16(a6, 0, 1, a4);
}

uint64_t sub_19743EE9C(uint64_t a1)
{
  sub_197521AAC();
  swift_getWitnessTable();
  if (sub_197521D0C() & 1) != 0 && (sub_197521D0C())
  {
    v1 = sub_197521D0C();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

unint64_t sub_19743EF58(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 32 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_19743EFD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B230, &unk_19752D3C0);
  v34 = v4;
  result = sub_19752243C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v5 + 56) + 32 * v20;
      if (v34)
      {
        sub_197433E8C(v24, v35);
      }

      else
      {
        sub_19742FE50(v24, v35);
        sub_1974028EC(v22, v23);
      }

      sub_197522A5C();
      if (v23)
      {
        if (v23 == 1)
        {
          MEMORY[0x19A8E1190](1);
          sub_19752180C();
          sub_19752180C();
          if (v22[3])
          {
            sub_197522A7C();
            sub_19752180C();
          }

          else
          {
            sub_197522A7C();
          }

          sub_197522A7C();
          v5 = v33;
        }

        else
        {
          MEMORY[0x19A8E1190](2);
          sub_19750A470();
          sub_19752180C();

          sub_19750A588();
        }

        sub_19752180C();
      }

      else
      {
        MEMORY[0x19A8E1190](0);
        sub_197521F4C();
      }

      result = sub_197522A9C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      result = sub_197433E8C(v35, *(v7 + 56) + 32 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_43;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_43:
  *v3 = v7;
  return result;
}

uint64_t sub_19743F3E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  *(v5 + 16) = result + 1;
  v6 = v5 + 16 * result;
  *(v6 + 32) = a2;
  *(v6 + 40) = a5;
  return result;
}

void sub_19743F3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v71 = a1;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v65 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v62[-v11];
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v62[-v14];
  v17 = *(v16 + 88);
  v66 = *(v16 + 104);
  v67 = v18;
  v19 = v17;
  if (sub_197522B4C() == 0xD000000000000014 && 0x8000000197524BA0 == v20)
  {
    goto LABEL_7;
  }

  v22 = sub_19752282C();

  if ((v22 & 1) == 0)
  {
    v23 = *(v6 + 16);
    v23(v15, v71, a3);
    if (swift_dynamicCast())
    {
LABEL_7:

      return;
    }

    v64 = v23;
    v24 = *(v4 + 40);
    v25 = sub_197522B4C();
    v27 = v26;
    swift_beginAccess();
    v28 = *(v24 + 96);
    if (*(v28 + 16))
    {
      v29 = sub_1973F4028(v25, v27);
      v63 = v30;

      if (v63)
      {
        v31 = *(*(v28 + 56) + 8 * v29);
        swift_endAccess();
        v70 = a3;
        boxed_opaque_existential_2Tm_0 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v68);
        v64(boxed_opaque_existential_2Tm_0, v71, a3);

        v33 = sub_197522B4C();
        sub_1974381F8(v31, &v68, v33, v34, *(v4 + 16));

        sub_1973FE58C(&v68, &qword_1EAF2AF20, &unk_19752F320);
        return;
      }
    }

    else
    {
    }

    swift_endAccess();
    v35 = sub_197522B4C();
    v37 = v36;
    swift_beginAccess();
    if (*(*(v24 + 104) + 16))
    {
      sub_1973F4028(v35, v37);
      v39 = v38;

      v40 = v64;
      if (v39)
      {
        swift_endAccess();
        v41 = v71;
        v40(v12, v71, a3);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
        if (swift_dynamicCast())
        {
          v71 = v19;
          v42 = v68;
          v43 = [objc_allocWithZone(MEMORY[0x1E695DFA8]) init];
          v44 = *(v42 + 16);
          if (v44)
          {
            v45 = (v42 + 40);
            do
            {
              v46 = *(v45 - 1);
              v47 = *v45;
              v45 += 16;
              v68 = v46;
              LOBYTE(v69) = v47;
              sub_1974028EC(v46, v47);
              v48 = sub_19744D188(&v68);
              [v43 addObject_];

              sub_1974028C8(v46, v47);
              --v44;
            }

            while (v44);
          }

          v49 = *(v4 + 16);
          v50 = v43;
          sub_197522B4C();
          v51 = sub_19752178C();

          [v49 setValue:v50 forKey:v51];

          return;
        }

        v40(v65, v41, a3);
        if (swift_dynamicCast())
        {
          v52 = v68;
          v53 = v69;
          v54 = *(v4 + 16);
          v55 = sub_19744D188(&v68);
          sub_197522B4C();
          v56 = sub_19752178C();

          [v54 setValue:v55 forKey:v56];

          sub_1974028C8(v52, v53);
          return;
        }

LABEL_25:
        sub_1975223EC();
        __break(1u);
        return;
      }
    }

    else
    {
    }

    swift_endAccess();
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_1975221EC();

    v68 = 0xD000000000000011;
    v69 = 0x8000000197525550;
    v57 = sub_197522B4C();
    MEMORY[0x19A8DFF80](v57);

    MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
    v58 = [*(v4 + 16) description];
    v59 = sub_1975217BC();
    v61 = v60;

    MEMORY[0x19A8DFF80](v59, v61);

    goto LABEL_25;
  }
}

void *DefaultStore.save(_:)(uint64_t a1)
{
  v18 = MEMORY[0x1E69E7CC8];
  v17 = MEMORY[0x1E69E7CC8];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE80, &qword_19752C298) + 44);
  v13 = v1;
  v14 = a1;
  v15 = &v18;
  v16 = &v17;
  v5 = MEMORY[0x19A8E1370]();
  sub_197463DBC(a1 + v4, v1, sub_197440E74, &v12);
  objc_autoreleasePoolPop(v5);
  if (v2)
  {
  }

  else
  {
    v7 = DefaultStore.identifier.getter();
    v9 = v8;
    v10 = v18;
    v11 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE88, &unk_19752C2A0);
    result = swift_allocObject();
    result[2] = v10;
    result[3] = v7;
    result[4] = v9;
    result[5] = v11;
  }

  return result;
}

uint64_t sub_19743FB78(char a1)
{
  v3 = v2;
  if (*(v1 + 59))
  {
    return 1;
  }

  v4 = v1;
  if ((*(v1 + 50) & 1) == 0)
  {
    sub_19744C43C();
    return 1;
  }

  type metadata accessor for ModelContext.ProcessPendingChangesContext();
  inited = swift_initStackObject();
  v6 = MEMORY[0x1E69E7CD0];
  inited[2] = MEMORY[0x1E69E7CC8];
  inited[3] = v6;
  inited[4] = v6;
  v51 = inited + 4;
  inited[5] = v6;
  v50 = inited + 5;
  inited[6] = v6;
  v49 = inited + 6;
  inited[7] = v6;
  inited[8] = v6;
  v48 = inited + 8;
  v7 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
LABEL_71:
    if (sub_1975220EC())
    {
      sub_1974FA0B4(MEMORY[0x1E69E7CC0]);
    }
  }

  *(v4 + 59) = 257;
  swift_beginAccess();
  v8 = *(*(v4 + 96) + 16);
  result = swift_beginAccess();
  v10 = *(*(v4 + 80) + 16);
  v11 = __OFADD__(v8, v10);
  v12 = v8 + v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_74;
  }

  result = swift_beginAccess();
  v13 = *(*(v4 + 112) + 16);
  v11 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v11)
  {
LABEL_74:
    __break(1u);
    return result;
  }

  if (v14 >= 1)
  {
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v15 = 0;
    v45 = 0;
    v47 = inited;
    while (1)
    {
      sub_197440AC4();
      v16 = *(v4 + 112);
      if (*(v4 + 56) == 1 && (*(v16 + 16) || *(*(v4 + 104) + 16)))
      {
        sub_1974B651C(a1 & 1);
        if (v3)
        {
          swift_setDeallocating();
          sub_1974433A8();
          swift_deallocClassInstance();

          if ((v45 & 1) == 0)
          {
            goto LABEL_60;
          }

          return 1;
        }

        v16 = *(v4 + 112);
      }

      if (*(v16 + 16))
      {
        v53 = v7;

        sub_197457C24(v17, v4, inited, &v53, sub_1974B5D80);

        v18 = v53;
      }

      else
      {
        v18 = v7;
      }

      if (*(*(v4 + 80) + 16))
      {
        v53 = v7;

        sub_197457C24(v19, v4, inited, &v53, sub_197457D6C);

        v20 = v53;
      }

      else
      {
        v20 = v7;
      }

      if (*(*(v4 + 96) + 16))
      {
        v53 = v7;

        sub_197442730(v21, v4, &v53, inited);

        inited = v53;
      }

      else
      {
        inited = v7;
      }

      sub_197442CDC(inited);
      sub_197443070(v20);
      v22 = *v48;

      sub_19744307C(v18, v22);

      v23 = *(v4 + 40);
      if (v23)
      {
        v24 = v23;
        if ([v24 groupsByEvent])
        {
        }

        else
        {
          if (([v24 isUndoing] & 1) == 0 && !objc_msgSend(v24, sel_isRedoing))
          {
            [v24 endUndoGrouping];
          }

          *(v4 + 180) = 0;
        }
      }

      *(v4 + 80) = v6;

      *(v4 + 112) = v6;

      *(v4 + 96) = v6;

      v25 = *(v4 + 120);
      *(v4 + 120) = v6;
      if ((v15 & 1) == 0)
      {
        *(v4 + 50) = 0;
        *(v4 + 58) = 0;
        v45 = 1;
        *(v4 + 60) = 0;
      }

      v7 = *(v4 + 136);
      v52 = v3;
      if (*(v7 + 16))
      {
        *(v4 + 136) = v6;
      }

      else
      {
        v7 = v6;
      }

      v26 = *v51;
      v27 = *v50;
      v28 = *v49;
      v29 = *(v4 + 144) != 0;

      sub_197443A28(v26, v27, v28, v25, v7, v29);

      sub_1974B6340(v30, 0);

      v3 = inited[2];
      if (v3)
      {
        v7 = 0;
        v6 = inited + 5;
        while (v7 < inited[2])
        {
          ++v7;
          v31 = *v6;
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          sub_197443368(ObjectType, v31);
          swift_unknownObjectRelease();
          v6 += 2;
          if (v3 == v7)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
        goto LABEL_67;
      }

LABEL_38:

      v3 = *(v20 + 2);
      if (v3)
      {
        v7 = 0;
        inited = (v20 + 40);
        v6 = MEMORY[0x1E69E7CD0];
        while (v7 < *(v20 + 2))
        {
          ++v7;
          v33 = *inited;
          v34 = swift_getObjectType();
          swift_unknownObjectRetain();
          sub_197443368(v34, v33);
          swift_unknownObjectRelease();
          inited += 2;
          if (v3 == v7)
          {
            goto LABEL_44;
          }
        }

LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v6 = MEMORY[0x1E69E7CD0];
LABEL_44:

      v3 = *(v18 + 2);
      if (v3)
      {
        v7 = 0;
        v35 = (v18 + 40);
        inited = v47;
        while (v7 < *(v18 + 2))
        {
          ++v7;
          v36 = *v35;
          v37 = swift_getObjectType();
          swift_unknownObjectRetain();
          sub_197443368(v37, v36);
          swift_unknownObjectRelease();
          v35 += 2;
          if (v3 == v7)
          {
            goto LABEL_50;
          }
        }

        goto LABEL_68;
      }

      inited = v47;
LABEL_50:

      v38 = *(*(v4 + 96) + 16);
      v39 = *(*(v4 + 80) + 16);
      v11 = __OFADD__(v38, v39);
      v40 = v38 + v39;
      if (v11)
      {
        goto LABEL_69;
      }

      v41 = *(*(v4 + 112) + 16);
      v11 = __OFADD__(v40, v41);
      v42 = v40 + v41;
      if (v11)
      {
        goto LABEL_70;
      }

      v15 = 1;
      v3 = v52;
      v7 = MEMORY[0x1E69E7CC0];
      if (v42 <= 0)
      {
        goto LABEL_56;
      }
    }
  }

  v45 = 0;
LABEL_56:
  v43 = *(v4 + 120);
  if ((v43 & 0xC000000000000001) == 0)
  {
    if (*(v43 + 16) < 1)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v44 = sub_1975220EC();

  if (v44 >= 1)
  {
LABEL_58:
    sub_19744C43C();
  }

LABEL_59:
  swift_setDeallocating();
  sub_1974433A8();
  swift_deallocClassInstance();
  if ((v45 & 1) == 0)
  {
LABEL_60:
    *(v4 + 50) = 0;
    *(v4 + 58) = 0;
    *(v4 + 60) = 0;
  }

  return 1;
}

void sub_197440354(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, void (**a5)(char *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(char *, uint64_t), uint64_t a10)
{
  v65 = a7;
  v66 = a8;
  v63 = a6;
  v64 = a2;
  WitnessTable = a5;
  v67 = *a3;
  v68 = swift_allocObject();
  *(v68 + 16) = MEMORY[0x1E69E7CC0];
  v70 = a9;
  v12 = sub_19743AA50(a1, a9, a10);
  swift_beginAccess();
  v13 = v12;
  v14 = *(v12 + 32);
  v15 = a3;
  v16 = *(a3 + 2);
  v17 = *(v16 + 64);
  v75 = v14;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  while (v20)
  {
    v23 = v22;
LABEL_9:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = (v23 << 10) | (16 * v24);
    v26 = *(v16 + 48) + v25;
    v27 = *(v16 + 56) + v25;
    v28 = *v27;
    v29 = *(v26 + 8);
    v30 = *(v27 + 8);
    v71 = *v26;
    v72 = v29;
    v73 = v28;
    v74 = v30;
    sub_1974028EC(v71, v29);
    sub_1974028EC(v28, v30);
    sub_1974590C4(&v71, &v73, WitnessTable, v15, &v75, v13, v70);
    v31 = v73;
    v32 = v74;
    sub_1974028C8(v71, v72);
    sub_1974028C8(v31, v32);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v21)
    {

      v61 = v15;
      v71 = *(v15 + 5);
      v35 = MEMORY[0x1EEE9AC00](v33, v34);
      v56[0] = v70;
      v56[1] = a10;
      v57 = WitnessTable;
      v58 = v13;
      v62 = v13;
      v59 = v68;
      MEMORY[0x1EEE9AC00](v35, v36);
      v55 = v70;
      sub_197405108();
      sub_19752166C();

      swift_getWitnessTable();
      sub_19752195C();

      v38 = v64;
      v71 = *(v64 + 16);
      v39 = v71;
      MEMORY[0x1EEE9AC00](v37, v40);
      v57 = v70;
      v58 = a10;
      v59 = WitnessTable;
      v41 = sub_197521AAC();

      swift_getWitnessTable();
      sub_19752195C();

      v71 = *v64;
      MEMORY[0x1EEE9AC00](v42, v43);
      v58 = a10;
      v59 = v15;

      WitnessTable = swift_getWitnessTable();
      v45 = sub_1974048EC(sub_1974C1D80, v56, v41, &type metadata for PersistentIdentifier, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v44);

      swift_beginAccess();
      sub_19744673C(v45);
      v46 = swift_endAccess();
      v71 = *(v38 + 8);
      MEMORY[0x1EEE9AC00](v46, v47);
      v59 = v55;
      v60 = a10;

      v48 = WitnessTable;
      v50 = sub_1974048EC(sub_19745A004, &v57, v41, &type metadata for PersistentIdentifier, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v49);

      swift_beginAccess();
      sub_19744673C(v50);
      v51 = swift_endAccess();
      v71 = v39;
      MEMORY[0x1EEE9AC00](v51, v52);
      v59 = v55;
      v60 = a10;

      v54 = sub_1974048EC(sub_197448600, &v57, v41, &type metadata for PersistentIdentifier, MEMORY[0x1E69E73E0], v48, MEMORY[0x1E69E7410], v53);

      swift_beginAccess();
      sub_19744673C(v54);
      swift_endAccess();

      return;
    }

    v20 = *(v16 + 64 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_197440954()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_197440990(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B238, &unk_19752F350);
  result = sub_1975221AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_19747ECF8(v15, v14, v5))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_11:
      v14 = *(*(v3 + 48) + 16 * (v11 | (v6 << 6)) + 8);
      v15 = swift_unknownObjectRetain();
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v13 = *(v3 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

void sub_197440AC4()
{
  if ((*(v0 + 180) & 1) == 0)
  {
    swift_beginAccess();
    v1 = *(v0 + 40);
    if (v1)
    {
      v2 = *(v0 + 176);
      v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v4 = v1;
      v5 = [v3 initWithInt_];
      if (([v4 groupsByEvent] & 1) == 0 && (objc_msgSend(v4, sel_isUndoing) & 1) == 0 && (objc_msgSend(v4, sel_isRedoing) & 1) == 0)
      {
        *(v0 + 60) = 1;
        [v4 beginUndoGrouping];
        *(v0 + 60) = 0;
      }

      swift_beginAccess();
      v6 = *(v0 + 88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_19752F3D0;
      *(v7 + 56) = sub_1974C179C(0, &qword_1ED7C9B88, 0x1E696AD98);
      *(v7 + 32) = v5;
      *(v7 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
      *(v7 + 64) = v6;

      v8 = v5;
      v9 = sub_1975219BC();

      [v4 registerUndoWithTarget:v0 selector:sel__clearChangedThisTransaction_ object:v9];
    }

    *(v0 + 180) = 1;
  }

  v10 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  swift_beginAccess();
  if (*(v0 + v10) == 1)
  {
    v11 = OBJC_IVAR____TtC9SwiftData12ModelContext_timer;
    if (!*(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_timer))
    {
      v12 = *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_AUTOSAVE_MAX_TIME) + 1.0;
      *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = 0;
      v13 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_checkAutosaveConditions selector:0 userInfo:1 repeats:v12];
      v14 = *(v0 + v11);
      *(v0 + v11) = v13;
    }
  }
}

uint64_t sub_197440D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_beginAccess();
  if (*(v3 + 40))
  {
    if (sub_1974A46D0(a2, a3))
    {
      swift_unknownObjectRelease();
      if (sub_1974A4780(a2, a3))
      {
LABEL_4:
        swift_unknownObjectRelease();
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1974A6118(a2, a3);
      v8 = v7;
      v10 = v9;
      v11 = swift_unknownObjectRetain();
      sub_1974A4718(v11, v10, a2, a3);
      swift_unknownObjectRelease();
      if (sub_1974A4780(a2, a3))
      {
        goto LABEL_4;
      }

      if (v8)
      {
        v12 = v10;
LABEL_9:
        sub_197442F3C(v8, v12, a2, a3);
        return swift_unknownObjectRelease();
      }
    }

    sub_1974A6118(a2, a3);
    v8 = v13;
    goto LABEL_9;
  }

  return result;
}

id sub_197440E94(uint64_t a1, void *a2)
{
  sub_1975212CC();
  v4 = *a1;
  if (!*(a1 + 8))
  {
    if ([*a1 isTemporaryID])
    {
      v5 = objc_opt_self();
      v6 = [v4 entityName];
      sub_1975217BC();

      goto LABEL_8;
    }

    sub_1974028EC(v4, 0);
LABEL_13:
    v7 = [a2 objectWithID_];
    goto LABEL_14;
  }

  if (*(a1 + 8) != 1)
  {
    v5 = objc_opt_self();
    sub_19750A588();
    goto LABEL_8;
  }

  if (v4[33])
  {
    v5 = objc_opt_self();

LABEL_8:
    v4 = sub_19752178C();

    v7 = [v5 insertNewObjectForEntityForName:v4 inManagedObjectContext:a2];
LABEL_14:
    v11 = v7;

    return v11;
  }

  result = [a2 persistentStoreCoordinator];
  if (result)
  {
    v10 = result;
    sub_19750ACDC(result, v9);
    v4 = sub_197521EDC();

    if (v4)
    {

      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_197441030(uint64_t a1)
{
  v2 = sub_197521F2C();

  return sub_197441EDC(a1, v2);
}

unint64_t sub_197441074(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3;
  *(v5 + 8) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1974410C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = swift_beginAccess();
  v8 = *(*(a1 + 24) + 16);
  if (v8)
  {
    v9 = 0;
    for (i = v8 - 1; ; i = v11)
    {
      if (i <= 0)
      {
        if (v9)
        {
          goto LABEL_23;
        }

        v11 = 0;
        v9 = 1;
      }

      else
      {
        v11 = i - 1;
      }

      v12 = *(a1 + 24);
      if (i >= *(v12 + 16))
      {
        break;
      }

      sub_19740C00C(v12 + 16 * i + 32, v22);
      v13 = v23;
      if (v23 && *(v23 + 16) && (sub_197522A5C(), sub_19752180C(), v14 = sub_197522A9C(), v15 = -1 << *(v13 + 32), v16 = v14 & ~v15, ((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
      {
        v17 = ~v15;
        while (1)
        {
          v18 = (*(v13 + 48) + 16 * v16);
          v19 = *v18 == a2 && v18[1] == a3;
          if (v19 || (sub_19752282C() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        Strong = swift_weakLoadStrong();
        result = sub_19740FE8C(v22);
        if (Strong)
        {
          *a4 = Strong;
          return result;
        }
      }

      else
      {
LABEL_3:
        result = sub_19740FE8C(v22);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    *a4 = 0;
  }

  return result;
}

uint64_t sub_197441270()
{
  sub_1974A1014(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm_7((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1974412B4(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 >> 2) & 1;
}

uint64_t PersistentModel.getValue<A, B>(forKey:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v10 = MEMORY[0x1E69E77B0];
  v11 = *(*a1 + *MEMORY[0x1E69E77B0]);
  if (sub_1973FE6F0(v11, a3))
  {
    sub_1974258A4(v11, a3);
  }

  if (PersistentModel.modelContext.getter(v11, a3))
  {
    sub_1974B3098(a1, a3);
  }

  if (swift_getAssociatedTypeWitness() == v11)
  {
    (*(a3 + 56))(&v20, v11, a3);
    v17 = v22;
    v18 = v23;
    __swift_project_boxed_opaque_existential_1Tm_2(&v20, v22);
    (*(v18 + 88))(a1, *(v9 + *v10 + 8), a2, a4, v17, v18);
    return __swift_destroy_boxed_opaque_existential_1Tm_3(&v20);
  }

  else
  {
    sub_1974C2DAC(a1, a3, &v20);
    v12 = v21;
    v13 = sub_197521FFC();
    v14 = swift_conformsToProtocol2();
    if (v14)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197525F50);
      v19 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v19);

      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
      sub_1974C6478(v13, v12, v4, v11, *(v9 + *MEMORY[0x1E69E77B0] + 8), a2, v13, a3, a4, v14, 212);
      return sub_1973F82A8(&v20);
    }
  }

  return result;
}

BOOL PersistentModel.isDeleted.getter(void *a1, uint64_t a2)
{
  if (sub_19744377C(a1, a2) & 1) != 0 || (sub_1974412B4(a1, a2))
  {
    return 1;
  }

  if (qword_1ED7C7270 != -1)
  {
    swift_once();
  }

  if (*(qword_1ED7CE5B8 + 17) != 1)
  {
    return 0;
  }

  if (sub_1973FE6F0(a1, a2))
  {
    sub_1974258A4(a1, a2);
  }

  v5 = *(sub_1973FE074(a1, a2) + 24);

  return (v5 & 0x100000) != 0;
}

uint64_t sub_197441670(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1974416CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_197441730(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8B0, &qword_19752FB50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B8B8, &unk_19752FB58);
    v8 = sub_19752245C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1974047F8(v10, v6, &qword_1EAF2B8B0, &qword_19752FB50);
      result = sub_19749EE94(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_19752239C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_1974028B8(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
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

void sub_19744191C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 16);
  if (*(v8 + 16))
  {

    v9 = sub_197403C30(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      if ([v11 isEqual_])
      {

        return;
      }

      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197524670);
      sub_19752235C();
      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      v23 = [v11 description];
      v24 = sub_1975217BC();
      v26 = v25;

      MEMORY[0x19A8DFF80](v24, v26);

      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      v27 = [a3 description];
      v28 = sub_1975217BC();
      v30 = v29;

      MEMORY[0x19A8DFF80](v28, v30);

      goto LABEL_13;
    }
  }

  swift_beginAccess();
  v12 = *(v4 + 24);
  if (*(v12 + 16))
  {

    v13 = sub_197441030(a3);
    if (v14)
    {
      sub_1974028EC(*(*(v12 + 56) + 16 * v13), *(*(v12 + 56) + 16 * v13 + 8));

      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000043, 0x8000000197524620);
      v19 = [a3 description];
      v20 = sub_1975217BC();
      v22 = v21;

      MEMORY[0x19A8DFF80](v20, v22);

      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      sub_19752235C();
      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      sub_19752235C();
LABEL_13:
      sub_1975223EC();
      __break(1u);
      return;
    }
  }

  swift_beginAccess();
  sub_1974028EC(a1, a2);
  v15 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  sub_19743EFA8(v15, a1, a2, isUniquelyReferenced_nonNull_native);
  sub_1974028C8(a1, a2);
  *(v4 + 16) = v31;
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(a1, a2);
  v17 = v15;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  sub_197441D84(a1, a2, v17, v18);

  *(v4 + 24) = v32;
  swift_endAccess();
}

void sub_197441D84(uint64_t a1, char a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_197441030(a3);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      v18 = v10;
      sub_19747AADC();
      v10 = v18;
      goto LABEL_8;
    }

    sub_197441FB0(v15, a4 & 1);
    v10 = sub_197441030(a3);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_16:
      sub_19744CC00(0, qword_1ED7C7910, 0x1E695D630);
      sub_1975229CC();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 16 * v10;
    v22 = *v21;
    *v21 = a1;
    v23 = *(v21 + 8);
    *(v21 + 8) = a2;

    sub_1974028C8(v22, v23);
  }

  else
  {
    sub_197441074(v10, a3, a1, a2, v20);

    v24 = a3;
  }
}

unint64_t sub_197441EDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1973FF680(0, qword_1ED7C7910, 0x1E695D630);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_197521F3C();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_197441FB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B298, &qword_19752D430);
  v35 = v4;
  result = sub_19752243C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v35 & 1) == 0)
      {
        v25 = v21;
        sub_1974028EC(v23, v24);
      }

      result = sub_197521F2C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_197442240(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1ED7C9CD8 != -1)
  {
    a1 = swift_once();
  }

  v4 = *(qword_1ED7CE678 + 16);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  MEMORY[0x1EEE9AC00](v5, v6);
  os_unfair_lock_lock(v4 + 4);
  sub_1974423B0(&v12);
  os_unfair_lock_unlock(v4 + 4);
  if (v12)
  {
    v7 = *(*(v12 + 16) + 72);
    if (*(v7 + 16))
    {

      v8 = sub_1973F4028(v3, a2);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        return v10;
      }
    }

    else
    {
    }
  }

  return 0;
}

void *sub_1974423B0@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

unint64_t sub_197442414()
{
  result = qword_1ED7C8198[0];
  if (!qword_1ED7C8198[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7C8198);
  }

  return result;
}

uint64_t sub_197442468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*v3 + 88);
  v13[0] = *(*v3 + 80);
  v13[1] = a2;
  v13[2] = v4;
  v13[3] = a3;
  type metadata accessor for ManagedObjectKeyedEncoding(0, v13);
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v5;

  v11 = sub_1974425BC(v10, v6, v7, v8, v9);

  v13[0] = v11;
  swift_getWitnessTable();
  return sub_19752279C();
}

void *sub_1974425BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 96);
  v13[0] = *(v5 + 80);
  v13[1] = v11;
  type metadata accessor for ManagedObjectKeyedEncoding(0, v13);
  swift_allocObject();
  return sub_197442640(a1, a2, a3, a4, a5);
}

void *sub_197442640(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  result = [a1 managedObjectContext];
  if (result)
  {
    v5[3] = result;
    v5[4] = a5;
    v5[5] = a2;
    v5[6] = a3;
    v5[7] = a4;
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1974426B8(uint64_t a1)
{
  swift_beginAccess();
  sub_19743B4F0(a1, v1 + 48);
  return swift_endAccess();
}

void sub_197442730(uint64_t a1, uint64_t a2, char **a3, uint64_t a4)
{
  v16 = a4;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v11)))));
      swift_unknownObjectRetain();
      sub_19744286C(&v15, a2, a3, v16);
      if (v4)
      {
        break;
      }

      v11 &= v11 - 1;
      swift_unknownObjectRelease();
      v13 = v14;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_19744286C(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v12 = *a1;
  v5 = *a1;
  ObjectType = swift_getObjectType();
  sub_197432360(0, ObjectType, *(&v12 + 1));
  if ((sub_197442A30(ObjectType, *(&v12 + 1)) & 1) == 0 && (sub_19744377C(ObjectType, *(&v12 + 1)) & 1) == 0)
  {
    sub_197442A5C(1, ObjectType, *(&v12 + 1));
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_1974327FC(v13, v5, *(&v12 + 1));
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  v7 = *a3;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_197442AD4(0, *(v7 + 2) + 1, 1, v7);
    *a3 = v7;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    v7 = sub_197442AD4((v9 > 1), v10 + 1, 1, v7);
    *a3 = v7;
  }

  *(v7 + 2) = v10 + 1;
  *&v7[16 * v10 + 32] = v12;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_1974327FC(v13, v5, *(&v12 + 1));
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_197442A30(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 >> 4) & 1;
}

uint64_t sub_197442A5C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1973FE074(a2, a3);
  if (a1)
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *(v4 + 24) = *(v4 + 24) & 0xFFFFFFF7 | v5;
}

char *sub_197442AD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B278, &unk_19752D410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

void sub_197442BE0(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16))
  {
    v3 = *a2;
    v4 = type metadata accessor for ModelContext._UndoPayload();
    v5 = objc_allocWithZone(v4);
    v6 = OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots;
    *&v5[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots] = 0;
    v7 = OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__deletedModifiedLastSnapshots;
    *&v5[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__deletedModifiedLastSnapshots] = 0;
    v8 = OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__moveToUpdatesList;
    *&v5[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__moveToUpdatesList] = 0;
    v9 = &v5[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__undoTransactionID];
    *v9 = 0;
    v9[4] = 1;
    *&v5[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects] = a1;
    *&v5[v6] = 0;
    *&v5[v7] = 0;
    *&v5[v8] = 0;

    *v9 = 0;
    v9[4] = 1;
    v11.receiver = v5;
    v11.super_class = v4;
    v10 = objc_msgSendSuper2(&v11, sel_init);
    sub_197442D0C(v3, v10);
  }
}

uint64_t sub_197442D0C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects);
  result = swift_beginAccess();
  v7 = *(v5 + 16);
  if (*(v2 + 40))
  {
    if (v7)
    {
      v22 = a1;
      v23 = a2;
      v8 = (v5 + 40);
      v9 = MEMORY[0x1E69E7CC0];
      do
      {
        v10 = *v8;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        v12 = sub_1974A6A54(ObjectType, v10);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_197477954(0, v9[2] + 1, 1, v9);
        }

        v14 = v9[2];
        v13 = v9[3];
        if (v14 >= v13 >> 1)
        {
          v9 = sub_197477954((v13 > 1), v14 + 1, 1, v9);
        }

        v9[2] = v14 + 1;
        v9[v14 + 4] = v12;
        sub_197442F3C(0, 0, ObjectType, v10);
        swift_unknownObjectRelease();
        v8 += 2;
        --v7;
      }

      while (v7);
      if (*(v5 + 16))
      {
        v15 = v9[2];
        if (v15)
        {

          v15 = v9;
        }

        *(v23 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots) = v15;

        v16 = v23 + OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__undoTransactionID;
        *v16 = *(v2 + 176);
        *(v16 + 4) = 0;
        v17 = *(v2 + 40);
        if (v17)
        {
          [v17 registerUndoWithTarget:v2 selector:v22 object:v23];
        }
      }
    }
  }

  else if (v7)
  {
    v18 = 0;
    v19 = (v5 + 40);
    while (v18 < *(v5 + 16))
    {
      ++v18;
      v20 = *v19;
      v21 = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_197442F3C(0, 0, v21, v20);
      result = swift_unknownObjectRelease();
      v19 += 2;
      if (v7 == v18)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_197442F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1973FE074(a3, a4);
  v9 = *(v8 + 48);
  v10 = *(v8 + 56);
  swift_unknownObjectRetain();

  if (a1)
  {
    if (v9)
    {
      v11 = v9 == a1;
    }

    else
    {
      v11 = 0;
    }

    if (!v11)
    {
      goto LABEL_9;
    }

LABEL_7:
    v12 = sub_1973FE074(a3, a4);
    *(v12 + 64) = v9;
    *(v12 + 72) = v10;
    goto LABEL_10;
  }

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_9:
  v13 = sub_1973FE074(a3, a4);
  *(v13 + 64) = v9;
  *(v13 + 72) = v10;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  v14 = sub_1973FE074(a3, a4);
  swift_unknownObjectRelease();
  *(v14 + 48) = a1;
  *(v14 + 56) = a2;
  swift_unknownObjectRetain();
LABEL_10:

  return swift_unknownObjectRelease();
}

void sub_19744307C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v16 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    v18 = *(a2 + 16) != 0;
    swift_beginAccess();
    if (*(v2 + 40))
    {

      sub_1974C04E4(a1, &v17, &v18, a2, &v16);

      v5 = v16;
      if (*(v16 + 2))
      {
LABEL_4:

        v6 = v5;
LABEL_7:
        v7 = v17;
        v8 = type metadata accessor for ModelContext._UndoPayload();
        v9 = objc_allocWithZone(v8);
        v10 = OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots;
        *&v9[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__snapshots] = 0;
        v11 = OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__deletedModifiedLastSnapshots;
        *&v9[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__deletedModifiedLastSnapshots] = 0;
        v12 = OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__moveToUpdatesList;
        *&v9[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__moveToUpdatesList] = 0;
        v13 = &v9[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__undoTransactionID];
        *v13 = 0;
        v13[4] = 1;
        *&v9[OBJC_IVAR____TtCC9SwiftData12ModelContextP33_9BAFD8545624C8465B3B73E4060DF56012_UndoPayload__objects] = a1;
        *&v9[v10] = 0;
        *&v9[v11] = v7;
        *&v9[v12] = v6;

        *v13 = 0;
        v13[4] = 1;
        v15.receiver = v9;
        v15.super_class = v8;
        v14 = objc_msgSendSuper2(&v15, sel_init);
        sub_197442D0C(sel__undoDeletions_, v14);

        return;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_4;
      }
    }

    v6 = 0;
    goto LABEL_7;
  }
}

uint64_t sub_197443248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1973F4028(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_19747BCB8();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1974A0670(v6, v8);
  *v3 = v8;
  return v9;
}

void *sub_1974432E0(uint64_t a1, uint64_t a2)
{
  sub_197405108();
  v2[4] = sub_1975215BC();
  v2[5] = sub_1975215CC();
  v2[6] = sub_1975215CC();
  v2[7] = sub_1975215CC();
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_197443368(uint64_t a1, uint64_t a2)
{
  v2 = sub_1973FE074(a1, a2);
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;

  return swift_unknownObjectRelease();
}

void *sub_1974433A8()
{

  return v0;
}

uint64_t sub_1974433F8(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v5 = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  *(v2 + 24) = v5;
  sub_197404E70(a1, v2 + OBJC_IVAR____TtC9SwiftData34DataStoreSaveChangesRequestBuilder_editingState);
  v6 = *(a2 + 16);
  if (v6)
  {
    v30 = v4;
    v31 = a2;
    v7 = 32;
    while (1)
    {
      v34 = *(a2 + v7);
      v9 = *(a2 + v7);
      ObjectType = swift_getObjectType();
      v11 = *(*(&v34 + 1) + 40);
      swift_unknownObjectRetain();
      v12 = v11(ObjectType, *(&v34 + 1));
      v14 = v13;
      swift_beginAccess();
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v32;
      *v32 = 0x8000000000000000;
      v18 = sub_1973F4028(v12, v14);
      v19 = v16[2];
      v20 = (v17 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        break;
      }

      v22 = v17;
      if (v16[3] >= v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_19747B284();
        }
      }

      else
      {
        sub_19740CAD4(v21, isUniquelyReferenced_nonNull_native);
        v23 = sub_1973F4028(v12, v14);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_19;
        }

        v18 = v23;
      }

      if (v22)
      {
        *(v16[7] + 16 * v18) = v34;

        swift_unknownObjectRelease();
      }

      else
      {
        v16[(v18 >> 6) + 8] |= 1 << v18;
        v25 = (v16[6] + 16 * v18);
        *v25 = v12;
        v25[1] = v14;
        *(v16[7] + 16 * v18) = v34;
        v26 = v16[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_18;
        }

        v16[2] = v28;
      }

      *(v33 + 16) = v16;
      swift_endAccess();
      v8 = swift_getObjectType();
      sub_19744388C(v8, v33, v9, *(&v34 + 1), v8, *(&v34 + 1));
      swift_unknownObjectRelease();
      v7 += 16;
      --v6;
      a2 = v31;
      if (!v6)
      {

        v4 = v30;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_1975229CC();
    __break(1u);
  }

  else
  {

LABEL_16:
    sub_19740BE74(v4, type metadata accessor for EditingState);
    return v33;
  }

  return result;
}

uint64_t sub_197443690@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if (swift_getAssociatedTypeWitness() == a1)
  {
    return (*(a2 + 56))(a1, a2);
  }

  v8 = sub_1974C23A4(a1, a2, v6, v7);
  a3[3] = type metadata accessor for _StitchedBackingData(0, a1, a2, v9);
  result = swift_getWitnessTable();
  a3[4] = result;
  *a3 = v8;
  return result;
}

uint64_t sub_19744377C(uint64_t a1, uint64_t a2)
{
  v2 = *(sub_1973FE074(a1, a2) + 24);

  return (v2 >> 5) & 1;
}

uint64_t sub_1974437D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t))
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  swift_dynamicCast();
  sub_19743AA50(v13, a6, a7);
  a8(a5);
  swift_unknownObjectRelease();
}

uint64_t sub_19744388C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v9 = *(a4 + 40);
  v10 = v9(ObjectType, a4);
  v23 = v11;
  v24 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for DataStoreSaveChangesRequestBuilder.StoreBuilder(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v16 = v9(ObjectType, a4);
  v18 = v17;
  v19 = swift_allocObject();
  sub_1974432E0(v16, v18);
  v27 = v15;
  *&v26 = v19;
  type metadata accessor for DataStoreSaveChangesRequestBuilder.AnyStoreBuilderBox();
  v20 = swift_allocObject();
  sub_1974028B8(&v26, (v20 + 16));
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(a2 + 24);
  *(a2 + 24) = 0x8000000000000000;
  sub_197442708(v20, v24, v23, isUniquelyReferenced_nonNull_native);

  *(a2 + 24) = v25;
  return swift_endAccess();
}

uint64_t sub_197443A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = sub_1973FFB18(MEMORY[0x1E69E7CC0]);
  v14 = *(a5 + 16);
  v50 = MEMORY[0x1E69E7CD0];
  if (!v14)
  {

    goto LABEL_19;
  }

  if (*(a2 + 16))
  {
    v50 = a5;

    sub_1974AE1A8(a2);
  }

  v15 = *(v50 + 16);
  if (*(a1 + 16))
  {
    if (!v15)
    {

      v50 = a5;
    }

    sub_1974AE3E0(a1);
    a1 = v50;
  }

  else if (v15)
  {

    a1 = v50;
  }

  else
  {

    v16 = v50;
    a1 = a5;
  }

  if (!*(a3 + 16))
  {

LABEL_19:
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v49 = a3;
  if (*(v16 + 16))
  {
    a5 = v16;
  }

  swift_bridgeObjectRetain_n();

  sub_1974BFD24(v17, a5);
  swift_bridgeObjectRelease_n();
  if (*(v49 + 16))
  {

    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }

LABEL_20:
    v18 = sub_1975217BC();
    v20 = v19;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
    *&v46 = a1;
    sub_1974028B8(&v46, v45);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v13;
    sub_1973FF710(v45, v18, v20, isUniquelyReferenced_nonNull_native);

    v13 = v48;
    goto LABEL_21;
  }

  if (*(a1 + 16))
  {
    goto LABEL_20;
  }

LABEL_21:
  if (*(a2 + 16))
  {
    v22 = sub_1975217BC();
    v24 = v23;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
    *&v46 = a2;
    sub_1974028B8(&v46, v45);

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v13;
    sub_1973FF710(v45, v22, v24, v25);

    v13 = v48;
  }

  if (*(a3 + 16))
  {
    v26 = sub_1975217BC();
    v28 = v27;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
    *&v46 = a3;
    sub_1974028B8(&v46, v45);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    v48 = v13;
    sub_1973FF710(v45, v26, v28, v29);

    v13 = v48;
  }

  if ((a4 & 0xC000000000000001) != 0)
  {
    if (sub_1975220EC() < 1)
    {
      goto LABEL_33;
    }
  }

  else if (*(a4 + 16) < 1)
  {
    goto LABEL_33;
  }

  v30 = sub_1975217BC();
  v32 = v31;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B928, &unk_19752FC28);
  *&v46 = a4;
  sub_1974028B8(&v46, v45);

  v33 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v13;
  sub_1973FF710(v45, v30, v32, v33);

  v13 = v48;
  v48 = MEMORY[0x1E69E7CD0];

  sub_1974BFE44(a4, v7);

  v34 = v48;
  if (*(v48 + 16))
  {
    v35 = sub_1975217BC();
    v37 = v36;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
    *&v46 = v34;
    sub_1974028B8(&v46, v45);

    v38 = swift_isUniquelyReferenced_nonNull_native();
    sub_1973FF710(v45, v35, v37, v38);
  }

LABEL_33:
  if (*(v13 + 16))
  {
    if (a6)
    {
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B920, &qword_19752FC20);
      *&v46 = MEMORY[0x1E69E7CD0];
      sub_1974028B8(&v46, v45);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v48 = v13;
      sub_1973FF710(v45, 0xD000000000000021, 0x8000000197527480, v39);
      v13 = v48;
    }

    sub_1974443D4(v13);
  }

  swift_beginAccess();
  if (*(v7 + 144))
  {
    v48 = v13;

    sub_19749F498(0xD000000000000021, 0x8000000197527480, &v46);
    sub_1974050A8(&v46, &qword_1EAF2AF20, &unk_19752F320);
    v40 = *(v7 + 144);
    if (v40)
    {

      v41 = v48;
      v42 = swift_isUniquelyReferenced_nonNull_native();
      *&v46 = v41;
      sub_1974C07C0(v40, sub_1974BF3EC, 0, v42, &v46);

      v48 = v46;
    }

    else
    {
    }

    *(v7 + 144) = 0;
  }

  else
  {
  }
}

uint64_t sub_1974440A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[3] = a3;
  v28[4] = a4;
  boxed_opaque_existential_1Tm_0 = __swift_allocate_boxed_opaque_existential_1Tm_0(v28);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1Tm_0, a1, a3);
  v9 = *(a4 + 32);
  v9(&v26, a3, a4);
  v10 = v26;
  v11 = v27;
  if (v27 > 1u)
  {
    if (v27 != 2)
    {
      v26 = 0;
      v27 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000038, 0x8000000197526EE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B220, &qword_19752D3B0);
      sub_19752235C();
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (v27)
  {
    v16 = *(v26 + 3);
    if (v16)
    {
      v14 = *(v26 + 2);

      goto LABEL_9;
    }

LABEL_8:
    v14 = sub_197458844(a2, v26, v27, boxed_opaque_existential_1Tm_0, a3, a4);
    v16 = v17;

    goto LABEL_9;
  }

  v12 = v9;
  v13 = [v26 storeIdentifier];
  v14 = sub_1975217BC();
  v16 = v15;

  v9 = v12;
LABEL_9:
  swift_beginAccess();
  v18 = *(a2 + 16);
  if (*(v18 + 16))
  {

    v19 = sub_1973F4028(v14, v16);
    if (v20)
    {
      v21 = v19;

      v22 = *(*(v18 + 56) + 16 * v21);
      swift_unknownObjectRetain();
      sub_1974A1014(v10, v11);

      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      return v22;
    }
  }

  sub_1975221EC();

  v25[2] = 0xD000000000000019;
  v25[3] = 0x80000001975278E0;
  v9(v25, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5A0, &qword_19752E9F0);
  v24 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v24);

LABEL_14:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

void sub_1974443D4(uint64_t a1)
{
  v40 = MEMORY[0x1E69E7CC8];
  v43 = MEMORY[0x1E69E7CC8];
  v42[20] = sub_1975217BC();
  v42[21] = v2;
  v42[22] = sub_1975217BC();
  v42[23] = v3;
  v42[24] = sub_1975217BC();
  v42[25] = v4;
  v42[26] = sub_1975217BC();
  v42[27] = v5;
  v42[8] = sub_1975217BC();
  v42[9] = v6;
  v42[10] = sub_1975217BC();
  v42[11] = v7;
  v42[12] = sub_1975217BC();
  v42[13] = v8;
  v9 = 0;
  v42[14] = sub_1975217BC();
  v42[15] = v10;
  if (*(a1 + 16))
  {
LABEL_2:
    v11 = v42[v9 + 20];
    v12 = v42[v9 + 21];

    v13 = sub_1973F4028(v11, v12);
    v15 = v14;

    if ((v15 & 1) == 0)
    {
      goto LABEL_17;
    }

    sub_197404860(*(a1 + 56) + 32 * v13, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B678, &unk_19752F340);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    if (!*(v41 + 16))
    {

      goto LABEL_17;
    }

    v16 = sub_1974AEAC4(v41);

    v18 = v42[v9 + 8];
    v17 = v42[v9 + 9];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42[0] = v40;
    v21 = sub_1973F4028(v18, v17);
    v22 = v40[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v25 = v20;
    if (v40[3] < v24)
    {
      sub_197443234(v24, isUniquelyReferenced_nonNull_native);
      v26 = sub_1973F4028(v18, v17);
      if ((v25 & 1) != (v27 & 1))
      {
LABEL_23:
        sub_1975229CC();
        __break(1u);
        return;
      }

      v21 = v26;
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_13:

      v40 = v42[0];
      *(*(v42[0] + 56) + 8 * v21) = v16;

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v20)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_19747BCB8();
      if (v25)
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v28 = v42[0];
    *(v42[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v29 = (v28[6] + 16 * v21);
    *v29 = v18;
    v29[1] = v17;
    *(v28[7] + 8 * v21) = v16;
    v30 = v28[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      v40 = v28;
      v28[2] = v32;
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_17:
  while (v9 != 6)
  {
    v9 += 2;
    if (*(a1 + 16))
    {
      goto LABEL_2;
    }
  }

  v43 = v40;
  swift_arrayDestroy();
  swift_arrayDestroy();
  v33 = sub_1975217BC();
  sub_197443248(v33, v34);

  v35 = v43;
  *(v39 + OBJC_IVAR____TtC9SwiftData12ModelContext_contextChanged) = 1;
  v36 = [objc_opt_self() defaultCenter];
  v37 = sub_19752178C();
  sub_197444840(v35, &qword_1EAF2AEE0, &qword_19752E9C0);

  v38 = sub_1975215EC();

  [v36 postNotificationName:v37 object:v39 userInfo:v38];
}

void sub_197444840(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B950, &qword_19752FC68);
    v4 = sub_19752245C();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC8];
  }

  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v4 + 64;

  v10 = 0;
  while (v7)
  {
LABEL_15:
    v14 = (*(a1 + 48) + 16 * (__clz(__rbit64(v7)) | (v10 << 6)));
    v15 = v14[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_1974028B8(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_1974028B8(v33, v34);
    v16 = sub_19752215C();
    v17 = -1 << *(v4 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v9 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v9 + 8 * v19);
        if (v23 != -1)
        {
          v11 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v11 = __clz(__rbit64((-1 << v18) & ~*(v9 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v7 &= v7 - 1;
    *(v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
    v12 = *(v4 + 48) + 40 * v11;
    *v12 = v26;
    *(v12 + 16) = v27;
    *(v12 + 32) = v28;
    sub_1974028B8(v34, (*(v4 + 56) + 32 * v11));
    ++*(v4 + 16);
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return;
    }

    v7 = *(a1 + 64 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void *sub_197444B2C(void *a1, int64_t a2, char a3)
{
  result = sub_19740CD8C(a1, a2, a3, *v3, &qword_1EAF2B3A8, &unk_19752D560, &qword_1EAF2B168, &unk_19752E980);
  *v3 = result;
  return result;
}

uint64_t sub_197444BD8(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_197444BE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_197520BFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  sub_197520BDC();

  v8(v7);

  return (*(v4 + 8))(v7, v3);
}

void sub_197444CD8(uint64_t a1, uint64_t a2, void *a3, void *a4, void **a5)
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1975220AC();
    sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
    sub_197471480(&qword_1EAF2ACD0, &qword_1ED7C9360, 0x1E695D620);
    sub_197521C1C();
    v6 = v34;
    v7 = v35;
    v8 = v36;
    v9 = v37;
    v10 = v38;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v26 = v6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v14 = v9;
    v15 = v10;
    v16 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_18:
      sub_1973FF47C(v6);
      return;
    }

    while (1)
    {
      v29 = v18;
      v30 = MEMORY[0x19A8E1370]();
      sub_197402910(v18, a3, a4, &v31);
      v20 = v31;
      v21 = v32;
      v22 = v33;
      sub_1974028EC(v32, v33);

      sub_1974028EC(v21, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = *a5;
      *a5 = 0x8000000000000000;
      sub_197400CA8(v20, v21, v22, v21, v22, isUniquelyReferenced_nonNull_native);
      sub_1974028C8(v21, v22);
      *a5 = v31;
      swift_beginAccess();
      sub_1974028EC(v21, v22);

      sub_1974028EC(v21, v22);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v39 = a4[2];
      a4[2] = 0x8000000000000000;
      sub_197400CA8(v20, v21, v22, v21, v22, v24);
      sub_1974028C8(v21, v22);
      a4[2] = v39;
      swift_endAccess();
      swift_beginAccess();
      v25 = sub_197400BC8(v21, v22);
      swift_endAccess();
      v6 = v26;

      sub_1974028C8(v21, v22);
      objc_autoreleasePoolPop(v30);

      v9 = v16;
      v10 = v17;
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v19 = sub_19752212C();
      if (v19)
      {
        v39 = v19;
        sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
        swift_dynamicCast();
        v18 = v31;
        v16 = v9;
        v17 = v10;
        if (v31)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v8 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v15 = *(v7 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1974450A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v27 = a6;
  v28 = a7;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  swift_dynamicCast();
  v20 = a12;
  v21 = a13;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  sub_197446014(v26, sub_19744506C, v19, a2, a3, a4, a5, a12, a13);
  return swift_unknownObjectRelease();
}

void sub_197445198()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 postNotificationName:*MEMORY[0x1E695D358] object:v0 userInfo:0];

  v4 = sub_197520BEC();
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  sub_1975217BC();
  sub_19752218C();
  if (!*(v5 + 16) || (v6 = sub_197445520(v16), (v7 & 1) == 0))
  {

    sub_197420CA4(v16);
LABEL_8:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_9;
  }

  sub_197404860(*(v5 + 56) + 32 * v6, &v17);
  sub_197420CA4(v16);

  if (!*(&v18 + 1))
  {
LABEL_9:
    sub_1974454C0(&v17, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_10;
  }

  sub_19744CC00(0, &qword_1ED7C7C78, 0x1E695D6A8);
  if (swift_dynamicCast())
  {
    v8 = v16[0];
    sub_19744E718(v8, v16);
    v9 = v16[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B2B8, &qword_19752D450);
    inited = swift_initStackObject();
    v15 = xmmword_19752C280;
    *(inited + 16) = xmmword_19752C280;
    strcpy((inited + 32), "HistoryTokens");
    *(inited + 46) = -4864;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B2C0, &qword_19752D458);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_19752C280;
    *(v11 + 56) = &type metadata for DefaultHistoryToken;
    *(v11 + 64) = sub_19744E9E4();
    *(v11 + 32) = v9;
    *(inited + 48) = v11;
    v12 = sub_19744ECBC(inited);
    swift_setDeallocating();
    sub_1974454C0(inited + 32, &qword_1EAF2B2C8, &unk_19752D460);

    goto LABEL_11;
  }

LABEL_10:
  v12 = 0;
LABEL_11:
  v13 = [v2 defaultCenter];
  if (qword_1ED7C8620 != -1)
  {
    swift_once();
  }

  v14 = qword_1ED7C8628;
  if (v12)
  {
    sub_19744ED20(v12);

    v12 = sub_1975215EC();
  }

  [v13 postNotificationName:v14 object:v1 userInfo:v12];
}

uint64_t sub_1974454C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_197445520(uint64_t a1)
{
  v2 = sub_19752215C();

  return sub_197445564(a1, v2);
}

unint64_t sub_197445564(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_19741FFE0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x19A8E0890](v9, a1);
      sub_197420CA4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_197445644()
{
  sub_1974466C8();

  return swift_deallocClassInstance();
}

uint64_t sub_197445678(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFC0, &qword_19752C728);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = swift_projectBox();
  v8 = sub_197520BFC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a1, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  swift_beginAccess();
  return sub_197420984(v6, v7, &qword_1EAF2AFC0, &qword_19752C728);
}

uint64_t sub_1974457D4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for EditingState(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_197445880(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  if (!*(v9 + 16))
  {
    return swift_endAccess();
  }

  v34 = a3;
  v35 = a5;
  v36 = a1;
  while (1)
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    v16 = (v15 + 63) >> 6;
    while (1)
    {
      v18 = *v14++;
      v17 = v18;
      if (v18)
      {
        break;
      }

      v13 -= 64;
      if (!--v16)
      {
        goto LABEL_10;
      }
    }

    v15 = __clz(__rbit64(v17)) - v13;
LABEL_10:
    v19 = sub_197425424(&v39, v15, *(v9 + 36));
    v41 = v19;
    v21 = v39;
    v20 = v40;
    result = swift_endAccess();
    if (!v19)
    {
      return result;
    }

    v42 = v20;
    v37 = MEMORY[0x19A8E1370](result);
    sub_197402910(v19, a3, a4, &v39);
    v24 = v39;
    v23 = v40;
    v25 = v41;
    swift_beginAccess();

    sub_1974028EC(v23, v25);

    sub_1974028EC(v23, v25);
    sub_1974028EC(v23, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = a4[2];
    a4[2] = 0x8000000000000000;
    sub_197400CA8(v24, v23, v25, v23, v25, isUniquelyReferenced_nonNull_native);
    sub_1974028C8(v23, v25);
    a4[2] = v38;
    swift_endAccess();
    swift_beginAccess();
    v27 = sub_197400BC8(v23, v25);
    swift_endAccess();

    v28 = *a5;
    if (*(*a5 + 16) && (v29 = sub_197403C30(v23, v25), (v30 & 1) != 0))
    {
      v31 = *(v28 + 56) + 24 * v29;
      v32 = *(v31 + 8);
      v33 = *(v31 + 16);

      sub_1974028EC(v32, v33);

      sub_1974028C8(v23, v25);

      sub_1974028C8(v23, v25);

      v11 = v32;
      v12 = v33;
      a3 = v34;
      a5 = v35;
    }

    else
    {
      sub_1974028EC(v23, v25);
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v39 = *a5;
      *a5 = 0x8000000000000000;
      sub_197400CA8(v24, v23, v25, v23, v25, v10);
      sub_1974028C8(v23, v25);
      *a5 = v39;

      v11 = v23;
      v12 = v25;
    }

    sub_1974028C8(v11, v12);
    objc_autoreleasePoolPop(v37);
    sub_197425500(v21, v42, v19);
    swift_beginAccess();
    v9 = *(v36 + 24);
    if (!*(v9 + 16))
    {
      return swift_endAccess();
    }
  }
}

char *sub_197445BA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3C0, &qword_19752D580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

void sub_197445CC4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B950, &qword_19752FC68);
    v2 = sub_19752245C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_197404860(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1974028B8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1974028B8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1974028B8(v31, v32);
    v16 = sub_19752215C();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_1974028B8(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_197445F8C()
{

  sub_19740BE74(v0 + OBJC_IVAR____TtC9SwiftData34DataStoreSaveChangesRequestBuilder_editingState, type metadata accessor for EditingState);

  return swift_deallocClassInstance();
}

uint64_t sub_197446014(uint64_t a1, void (*a2)(uint64_t, char *, void), uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a7;
  v45 = a3;
  v46 = a2;
  v44 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = AssociatedTypeWitness;
  v15 = type metadata accessor for DataStoreSaveChangesRequest(255, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v16 = sub_197521F5C();
  v41[0] = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16, v17);
  v20 = v41 - v19;
  v21 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v18, v22);
  v24 = v41 - v23;
  swift_beginAccess();
  v41[1] = a4;
  v42 = a5;
  v25 = *a4;
  v26 = *(*a4 + 16);
  v43 = a6;
  if (v26 && (v27 = sub_1973F4028(a5, a6), (v28 & 1) != 0))
  {
    sub_1974047F8(*(v25 + 56) + 32 * v27, &v49, &qword_1EAF2AF20, &unk_19752F320);
  }

  else
  {
    v49 = 0uLL;
    *&v50 = 0;
    *(&v50 + 1) = 1;
  }

  swift_endAccess();
  if (*(&v50 + 1) == 1)
  {
    v32 = &qword_1EAF2B648;
    v33 = &unk_19752FD20;
    v34 = &v49;
LABEL_13:
    sub_1974050A8(v34, v32, v33);
    (*(v21 + 56))(v20, 1, 1, v15);
    goto LABEL_14;
  }

  v51 = v49;
  v52 = v50;
  if (!*(&v50 + 1))
  {
    v32 = &qword_1EAF2AF20;
    v33 = &unk_19752F320;
    v34 = &v51;
    goto LABEL_13;
  }

  v29 = swift_dynamicCast();
  (*(v21 + 56))(v20, v29 ^ 1u, 1, v15);
  if ((*(v21 + 48))(v20, 1, v15) == 1)
  {
LABEL_14:
    (*(v41[0] + 8))(v20, v16);
    *&v51 = 0;
    *(&v51 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v49 = v51;
    MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x80000001975277D0);
    MEMORY[0x19A8DFF80](v42, v43);
    MEMORY[0x19A8DFF80](0xD000000000000021, 0x80000001975277F0);
    v35 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v35);

    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
    v36 = sub_19752160C();
    v38 = v37;

    MEMORY[0x19A8DFF80](v36, v38);

    goto LABEL_17;
  }

  (*(v21 + 32))(v24, v20, v15);
  sub_1974047F8(v48, &v51, &qword_1EAF2AF20, &unk_19752F320);
  if (*(&v52 + 1))
  {
    type metadata accessor for DataStoreSaveChangesResult(0, v47, AssociatedConformanceWitness, v30);
    if (swift_dynamicCast())
    {
      v46(v44, v24, v49);

      return (*(v21 + 8))(v24, v15);
    }
  }

  else
  {
    sub_1974050A8(&v51, &qword_1EAF2AF20, &unk_19752F320);
  }

  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  sub_1975221EC();
  v49 = v51;
  MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x8000000197527820);
  MEMORY[0x19A8DFF80](v42, v43);
  MEMORY[0x19A8DFF80](0xD000000000000020, 0x8000000197527840);
  v39 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v39);

  MEMORY[0x19A8DFF80](10, 0xE100000000000000);
  sub_1974047F8(v48, &v51, &qword_1EAF2AF20, &unk_19752F320);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  v40 = sub_1975217CC();
  MEMORY[0x19A8DFF80](v40);

LABEL_17:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

void *sub_197446624(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for EditingState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_1974466C8()
{

  return v0;
}

uint64_t DataStoreSaveChangesResult.__deallocating_deinit()
{
  DataStoreSaveChangesResult.deinit();

  return swift_deallocClassInstance();
}

char *sub_19744673C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_197445BA8(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_197446830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a4;
  if (*(a3 + 16))
  {
    Strong = *(a3 + 16);
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }
  }

  v12 = *(Strong + 16);

  v13 = *(v12 + 72);

  v14 = *(v10 + 88);
  v40 = *(v10 + 80);
  v41 = *(v14 + 24);
  v41(&v47);
  v15 = v47;
  v16 = v48;
  if (v48)
  {
    if (v48 == 1)
    {
      v18 = *(v47 + 9);
      v17 = *(v47 + 10);
    }

    else
    {
      v18 = sub_19750A588();
      v17 = v23;
    }

    v21 = v15;
    v22 = v16;
  }

  else
  {
    v19 = [v47 entityName];
    v18 = sub_1975217BC();
    v17 = v20;

    v21 = v15;
    v22 = 0;
  }

  sub_1974028C8(v21, v22);
  if (!*(v13 + 16))
  {

    goto LABEL_15;
  }

  v24 = sub_1973F4028(v18, v17);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
LABEL_15:

    goto LABEL_16;
  }

  v27 = *(*(v13 + 56) + 8 * v24);

  v28 = *(v27 + 144);
  v29 = *(v27 + 152);

  if (v28)
  {
    return sub_1974483E4(v28, a3, a2, a4, a5, a6, v28, a7, v29);
  }

LABEL_16:
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000037, 0x8000000197527710);
  (v41)(&v45, v40, v14);
  v31 = v45;
  v32 = v46;
  sub_19752235C();
  sub_1974028C8(v31, v32);
  MEMORY[0x19A8DFF80](0xD000000000000010, 0x8000000197527750);
  Strong = *(a3 + 16);
  if (!Strong)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  v33 = Strong;
LABEL_22:
  v34 = *(v33 + 16);

  v35 = *(v34 + 64);

  v36 = type metadata accessor for Schema.Entity();
  v37 = MEMORY[0x19A8E0100](v35, v36);
  v39 = v38;

  MEMORY[0x19A8DFF80](v37, v39);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_197446BBC()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_197446BF4()
{
  sub_19744946C();

  return swift_deallocClassInstance();
}

uint64_t sub_197446C28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B848, &qword_19752F3E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_197446C98(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B240, &qword_19752D3D0);
    v2 = sub_19752245C();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
        swift_dynamicCast();
        sub_1974028B8(&v22, v24);
        sub_1974028B8(v24, v25);
        sub_1974028B8(v25, &v23);
        v16 = sub_1973F4028(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0Tm(v10);
          sub_1974028B8(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_1974028B8(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

double sub_197446EF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v25 - v11;
  v27[0] = v10;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v14 = sub_1974482A8(v27, MetatypeMetadata);
  v27[0] = a1;
  v15 = swift_conformsToProtocol2();
  if (v15 && a1)
  {
    v16 = v15;
    v17 = a1;
    do
    {
      sub_1973F732C(v17, v27, v17, v16);
      v17 = v27[0];
      v16 = swift_conformsToProtocol2();
      if (v16)
      {
        v18 = v17 == 0;
      }

      else
      {
        v18 = 1;
      }
    }

    while (!v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  v19 = sub_1975214EC();
  v20 = sub_1975214EC();
  if (v19)
  {
    if (v20 && v19 == v20)
    {
      goto LABEL_12;
    }

LABEL_17:
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    a3 = v27;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000038, 0x800000019752B150);
    sub_1975227FC();
    sub_1975223EC();
    __break(1u);
    goto LABEL_18;
  }

  if (v20)
  {
    goto LABEL_17;
  }

LABEL_12:
  v21 = *(v5 + 16);
  if ((v14 & 1) == 0)
  {
    v21(v8, v26, a1);
    swift_getAssociatedTypeWitness();
    a3[3] = sub_197521AAC();
    a3[4] = swift_getWitnessTable();
    swift_dynamicCast();
    return result;
  }

  v21(v12, v26, a1);
  swift_getAssociatedTypeWitness();
  v22 = sub_197521AAC();
  sub_197521F5C();
  swift_dynamicCast();
  v23 = v27[0];
  if (v27[0])
  {
    a3[3] = v22;
    a3[4] = swift_getWitnessTable();
    *a3 = v23;
    return result;
  }

LABEL_18:
  a3[4] = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 1) = 0u;
  return result;
}

uint64_t sub_19744725C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19744D0E0(result, a2);
  }

  return result;
}

uint64_t sub_197447270(uint64_t a1)
{
  result = sub_197521AAC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for EditingState(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

char *sub_197447300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a3;
  v46 = a8;
  v43 = a1;
  v12 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = a6;
  v16 = sub_197521AAC();
  v17 = sub_197521F5C();
  sub_197522B2C();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v20 = *(a7 + 88);

    WitnessTable = swift_getWitnessTable();
    v49 = v46;
    v21 = swift_getWitnessTable();
    v20(&v56, v19, v17, v44, v21, a4, a7);
    if (v56)
    {
      v47 = v46;
      v22 = swift_getWitnessTable();
      v23 = sub_19743055C(1, v16, v22);

      return v23;
    }

    goto LABEL_24;
  }

  v24 = a2;
  v25 = v16;
  (*(v12 + 16))(v14, v45, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for _StitchedBackingData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v27);
  if (!swift_dynamicCast())
  {
    goto LABEL_29;
  }

  v28 = *(v56 + 16);

  v29 = sub_1973F8364(v24);
  v31 = *(v28 + 16);
  if (!*(v31 + 16))
  {

    goto LABEL_12;
  }

  v32 = sub_1973F4028(v29, v30);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
LABEL_12:
    memset(v61, 0, 32);
    goto LABEL_13;
  }

  v35 = *(*(v31 + 56) + 8 * v32);
  swift_beginAccess();
  if ((v35 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v36 = *(v28 + 32);
    if (v35 < *(v36 + 16))
    {
      sub_1973FE14C(v36 + 32 * v35 + 32, v61, &qword_1EAF2AF20, &unk_19752F320);
LABEL_13:

      sub_1973FE14C(v61, &v50, &qword_1EAF2AF20, &unk_19752F320);
      if (*(&v51 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B600, &qword_19752EA58);
        v37 = swift_dynamicCast();
        v38 = v25;
        v39 = v46;
        if (v37)
        {
          if (v56)
          {
            sub_1973FE58C(v61, &qword_1EAF2AF20, &unk_19752F320);

            v50 = v56;
            v51 = v57;
            v53 = v59;
            v54 = v60;
            v52 = v58;
            v23 = v56;
            sub_1974416CC(v59, *(&v59 + 1), v60, *(&v60 + 1));
            __swift_destroy_boxed_opaque_existential_1Tm_1(&v50 + 1);
            return v23;
          }
        }

        else
        {
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v56 = 0u;
        }
      }

      else
      {
        sub_1973FE58C(&v50, &qword_1EAF2AF20, &unk_19752F320);
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v38 = v25;
        v39 = v46;
      }

      sub_1973FE58C(&v56, &qword_1EAF2B5F8, &qword_19752EA50);
      sub_1973FE14C(v61, &v56, &qword_1EAF2AF20, &unk_19752F320);
      if (!*(&v57 + 1))
      {
        sub_1973FE58C(v61, &qword_1EAF2AF20, &unk_19752F320);

        sub_1973FE58C(&v56, &qword_1EAF2AF20, &unk_19752F320);
        return 0;
      }

      if (swift_dynamicCast())
      {
        v55 = v39;
        *&v56 = v50;
        v40 = swift_getWitnessTable();
        v23 = sub_19743055C(1, v38, v40);

        sub_1973FE58C(v61, &qword_1EAF2AF20, &unk_19752F320);
        return v23;
      }

      sub_1973FE58C(v61, &qword_1EAF2AF20, &unk_19752F320);
LABEL_24:

      return 0;
    }
  }

  __break(1u);
LABEL_29:
  *&v56 = 0;
  *(&v56 + 1) = 0xE000000000000000;
  sub_1975221EC();

  *&v56 = 0xD00000000000002ELL;
  *(&v56 + 1) = 0x8000000197525AA0;
  v42 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v42);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19744790C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *a1;
  v9 = *(v3 + 16);
  v10 = *(v9 + 24);
  v11 = *(v10 + 16);

  if (!v11 || (v12 = sub_1973F7814(a1), (v13 & 1) == 0))
  {
    v22 = 0u;
    v23 = 0u;

    goto LABEL_10;
  }

  v14 = *(*(v10 + 56) + 8 * v12);
  swift_beginAccess();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = *(v9 + 32);
  if (v14 >= *(v15 + 16))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000026, 0x800000019752B620);
    sub_197522B2C();
    sub_1975227FC();
    MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);
    type metadata accessor for KnownKeysDictionary();
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    sub_1975227FC();
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  sub_197413B20(v15 + 32 * v14 + 32, &v22);

  if (*(&v23 + 1))
  {
    sub_1974028B8(&v22, v24);
    if (*(v4 + 48) != 1)
    {
      sub_197404860(v24, &v22);
      v18 = *(*(v8 + *MEMORY[0x1E69E77B0] + 8) + 16);
      swift_dynamicCast();
      PersistentModel.persistentModelID.getter(v18, a2, &v20);
      swift_unknownObjectRelease();
LABEL_14:
      result = __swift_destroy_boxed_opaque_existential_1Tm_7(v24);
      v19 = v21;
      *a3 = v20;
      *(a3 + 8) = v19;
      return result;
    }

    sub_197404860(v24, &v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm_7(v24);
      v16 = v21;
      result = swift_unknownObjectRelease();
      *a3 = v20;
      *(a3 + 8) = v16;
      return result;
    }

    sub_197404860(v24, &v22);
    if (swift_dynamicCast())
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

LABEL_10:
  result = sub_1973FE5EC(&v22, &qword_1EAF2AF20, &unk_19752F320);
  *a3 = 0;
  *(a3 + 8) = -1;
  return result;
}

uint64_t sub_197447C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9)
{
  v44 = a8;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = a6;
  sub_197521F5C();
  sub_197522B2C();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    v24 = sub_1973F8364(a2);
    v26 = *(a4 + 16);
    if (*(v26 + 16))
    {
      v27 = sub_1973F4028(v24, v25);
      v29 = v28;

      if (v29)
      {
        v30 = *(*(v26 + 56) + 8 * v27);
        result = swift_beginAccess();
        if ((v30 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v31 = *(a4 + 32);
          if (v30 < *(v31 + 16))
          {
            sub_1973FE14C(v31 + 32 * v30 + 32, v50, &qword_1EAF2AF20, &unk_19752F320);
LABEL_13:
            v35 = v43;
            sub_1973FE14C(v50, &v47, &qword_1EAF2AF20, &unk_19752F320);
            if (v49)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5F0, &qword_19752EA48);
              if (swift_dynamicCast())
              {
                sub_1973FE58C(v50, &qword_1EAF2AF20, &unk_19752F320);
                v36 = v45;
                v37 = v46;
                result = swift_unknownObjectRelease();
                v38 = v44;
                *v44 = v36;
                *(v38 + 8) = v37;
                return result;
              }
            }

            else
            {
              sub_1973FE58C(&v47, &qword_1EAF2AF20, &unk_19752F320);
            }

            sub_1973FE14C(v50, &v47, &qword_1EAF2AF20, &unk_19752F320);
            if (v49)
            {
              if (swift_dynamicCast())
              {
                PersistentModel.persistentModelID.getter(v35, a9, &v47);
                swift_unknownObjectRelease();
                result = sub_1973FE58C(v50, &qword_1EAF2AF20, &unk_19752F320);
                v33 = v47;
                v34 = v48;
                goto LABEL_20;
              }

              v40 = v50;
            }

            else
            {
              sub_1973FE58C(v50, &qword_1EAF2AF20, &unk_19752F320);
              v40 = &v47;
            }

            result = sub_1973FE58C(v40, &qword_1EAF2AF20, &unk_19752F320);
            goto LABEL_25;
          }
        }

        __break(1u);
        return result;
      }
    }

    else
    {
    }

    memset(v50, 0, sizeof(v50));
    goto LABEL_13;
  }

  v20 = v19;
  (*(v15 + 16))(v17, a3, a5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for _KKMDBackingData(0, AssociatedTypeWitness, AssociatedConformanceWitness, v22);

  if (swift_dynamicCast())
  {
    sub_19744790C(v20, a9, v44);
  }

  v32 = v43;
  if ((*(a7 + 80))(v20, v43, a9, a5, a7))
  {
    PersistentModel.persistentModelID.getter(v32, a9, v50);
    swift_unknownObjectRelease();

    v33 = *&v50[0];
    v34 = BYTE8(v50[0]);
LABEL_20:
    v39 = v44;
    *v44 = v33;
    *(v39 + 8) = v34;
    return result;
  }

LABEL_25:
  v41 = v44;
  *v44 = 0;
  *(v41 + 8) = -1;
  return result;
}

uint64_t sub_1974480F8(uint64_t a1, uint64_t a2)
{
  v3 = swift_beginAccess();
  v5 = *(a2 + 48);
  v7 = *(v5 + 16);
  v6 = v5 + 16;
  v8 = v7 + 1;
  while (--v8)
  {
    v9 = (v6 + 40);
    v10 = *(v6 + 16);
    v6 += 40;
    if (v10 == 1)
    {
      v11 = *v9;
      if (*v9)
      {
        v12 = *(v9 - 1);
        MEMORY[0x1EEE9AC00](v3, v4);

        sub_19744E3BC(v12, v11, sub_19744E704);

        sub_19744C1E4(0, 0xF000000000000000);
        sub_19744725C(0, 0xF000000000000000);
        return 0;
      }

      break;
    }
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000004DLL, 0x800000019752A1C0);
  v14 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v14);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974482A8(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a1);
  (*(v3 + 16))(&v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B668, &qword_19752F2E8);
  return swift_dynamicCast();
}

uint64_t sub_197448384(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1974483E4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a4;
  swift_beginAccess();
  v15 = a4[4];
  v16 = *(v14 + 80);
  v17 = *(v14 + 88);

  v18 = sub_197401480(a3, a1, 0, v15, v16, a7, v17, a9);

  swift_beginAccess();
  v19 = *(a5 + 16);
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_197433F80(0, v19[2] + 1, 1, v19);
    *(a5 + 16) = v19;
  }

  v21 = v19[2];
  v22 = v19[3];
  if (v21 >= v22 >> 1)
  {
    v24 = v19[2];
    v19 = sub_197433F80((v22 > 1), v21 + 1, 1, v19);
    v21 = v24;
    *(a5 + 16) = v19;
  }

  sub_19743F3E4(v21, v18, (a5 + 16), a7, a9);
  *(a5 + 16) = v19;
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_19744857C(uint64_t a1)
{
  v3 = *(v1 + 32);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

void *DataStoreSaveChangesResult.deinit()
{

  return v0;
}

uint64_t sub_197448648(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_197520DAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B320, &qword_19752D4C8);
  v48 = v4;
  result = sub_19752243C();
  v12 = result;
  if (*(v10 + 16))
  {
    v51 = v9;
    v52 = v5;
    v44 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v45 = (v6 + 16);
    v46 = v6;
    v49 = (v6 + 32);
    v19 = result + 64;
    v47 = v10;
    while (v17)
    {
      v25 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v28 = v25 | (v13 << 6);
      v29 = *(v10 + 48);
      v50 = *(v6 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v52);
        v31 = (*(v10 + 56) + (v28 << 6));
        v33 = *v31;
        v32 = v31[1];
        v34 = v31[3];
        v55 = v31[2];
        v56 = v34;
        v53 = v33;
        v54 = v32;
      }

      else
      {
        (*v45)(v51, v30, v52);
        sub_197408378(*(v10 + 56) + (v28 << 6), &v53);
      }

      sub_197413D04(qword_1ED7C9228, MEMORY[0x1E6968B10], MEMORY[0x1E6968B18]);
      result = sub_1975216AC();
      v35 = -1 << *(v12 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        v6 = v46;
        v10 = v47;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v19 + 8 * v37);
          if (v41 != -1)
          {
            v20 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
      v6 = v46;
      v10 = v47;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v49)(*(v12 + 48) + v50 * v20, v51, v52);
      v21 = (*(v12 + 56) + (v20 << 6));
      v23 = v55;
      v22 = v56;
      v24 = v54;
      *v21 = v53;
      v21[1] = v24;
      v21[2] = v23;
      v21[3] = v22;
      ++*(v12 + 16);
    }

    v26 = v13;
    while (1)
    {
      v13 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v27 = v14[v13];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v17 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v10 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v14, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v42;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_197448A30(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197448A6C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197448AA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1975220EC();
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
      result = sub_1975220EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19745B31C(&qword_1EAF2BCA0, &qword_1EAF2BC98, &qword_197532030, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC98, &qword_197532030);
            v9 = sub_1974805CC(v13, i, a3);
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
        sub_19752202C();
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

uint64_t sub_197448C4C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_197448C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  v7 = *a1;
  if (!*(a1 + 8))
  {
    sub_1974028EC(*a1, 0);
    v13 = [v7 entityName];
    v8 = sub_1975217BC();
    v9 = v14;

    v15 = v7;
    v16 = 0;
    goto LABEL_8;
  }

  if (*(a1 + 8) != 1)
  {
    sub_1974028EC(*a1, 2);
    v8 = sub_19750A588();
    v9 = v17;
    v15 = v7;
    v16 = 2;
LABEL_8:
    sub_1974028C8(v15, v16);
    v10 = *(a2 + 16);
    if (!v10)
    {
      goto LABEL_4;
    }

LABEL_9:
    v12 = v10;
    goto LABEL_10;
  }

  v8 = v7[9];
  v9 = v7[10];

  v10 = *(a2 + 16);
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_4:
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_19:

LABEL_21:
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000034, 0x8000000197527AC0);
    swift_beginAccess();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  v12 = Strong;
LABEL_10:
  v18 = *(v12 + 80);

  if (!*(v18 + 16))
  {
    goto LABEL_19;
  }

  v19 = sub_1973F4028(v8, v9);
  if ((v20 & 1) == 0)
  {
    goto LABEL_19;
  }

  v21 = *(*(v18 + 56) + 8 * v19);

  v22 = *(v21 + 144);
  if (!v22)
  {

    goto LABEL_21;
  }

  v23 = *(v21 + 152);

  v24 = sub_1974498AC(v22, a1, a2, v22, v23);
  v25 = swift_unknownObjectRetain();
  sub_1974339E4(v25, a2, v22, v23);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v26 = *(a2 + 64);
  if (v26)
  {
    swift_beginAccess();
    v27 = *a1;
    v28 = *(a1 + 8);

    sub_1974028EC(v27, v28);
    sub_197455CE4(v27, v28, v26);

    sub_1974028C8(v27, v28);
    if (PersistentModel.modelContext.getter(v22, v23))
    {
    }

    else
    {
      sub_1974BF438(v24, a2, v22, v23);
      sub_1974B7028(v24, v22, v23);
    }
  }

  *a4 = v24;
  a4[1] = v23;
  return result;
}

uint64_t sub_197449054(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197449090(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1974490F0(uint64_t *a1, void *a2)
{
  v5 = MEMORY[0x19A8E1370]();
  sub_1974EADDC(v2, a1, a2[2], a2[3], a2[4], &v7, &v6);
  objc_autoreleasePoolPop(v5);
}

uint64_t ModelContext.__deallocating_deinit()
{
  ModelContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t DefaultStore.invalidateState(for:)(uint64_t a1)
{
  v3 = sub_19752135C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v7, a1, v3);
  v8 = *(v1 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v19 = v1;
  v20 = v7;
  v16 = sub_197449450;
  v17 = &v18;

  os_unfair_lock_lock(v8 + 4);
  sub_197405074(aBlock);
  os_unfair_lock_unlock(v8 + 4);
  v9 = aBlock[0];

  if (v9)
  {

    sub_19744A4E8();

    v10 = *(v9 + 16);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    aBlock[4] = sub_197472374;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1974635F0;
    aBlock[3] = &block_descriptor_0;
    v12 = _Block_copy(aBlock);
    v13 = v10;

    [v13 performBlock_];
    _Block_release(v12);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_197449404()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_19744946C()
{

  return v0;
}

uint64_t sub_1974494AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a4;
  v34 = a7;
  v31 = a5;
  v32 = a6;
  v12 = sub_197521F5C();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v17 = &AssociatedTypeWitness - v16;
  v18 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v15, v19);
  v21 = &AssociatedTypeWitness - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_197522B2C();
  v22 = swift_dynamicCastClassUnconditional();
  (*(a11 + 104))(v22, v12, a8, a11);
  if ((*(v18 + 48))(v17, 1, a10) == 1)
  {
    return (*(v13 + 8))(v17, v12);
  }

  (*(v18 + 32))(v21, v17, a10);
  type metadata accessor for Schema.Attribute();
  v37 = a10;
  v24 = __swift_allocate_boxed_opaque_existential_2Tm_0(&v35);
  (*(v18 + 16))(v24, v21, a10);
  v25 = sub_1974480F8(&v35, v33);
  v27 = v26;
  __swift_destroy_boxed_opaque_existential_1Tm_1(&v35);
  if (v27 >> 60 == 15)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ELL, 0x80000001975259F0);
    v29 = sub_197522B8C();
    MEMORY[0x19A8DFF80](v29);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v31, v32);
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
    MEMORY[0x19A8DFF80](0xD000000000000039, 0x8000000197525A10);
    MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E6969080];
    v38 = sub_1974122A4();
    v39 = sub_1974122F8();
    v35 = v25;
    v36 = v27;
    (*(v18 + 8))(v21, a10);
    v28 = v34;
    swift_beginAccess();
    return sub_19743E090(&v35, v28);
  }

  return result;
}

uint64_t sub_197449870(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974498AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for _FullFutureBackingData(0, a4, a5, a4);
  swift_beginAccess();
  v11 = *(a2 + 8);
  v14 = *a2;
  v15 = v11;
  sub_1974028EC(v14, v11);

  v12 = sub_197449BBC(a1, &v14, a3);
  _SD_set_faulting_backingdata_tsd(1);
  v16 = v10;
  WitnessTable = swift_getWitnessTable();
  v14 = v12;
  return (*(a5 + 48))(&v14, a4, a5);
}

uint64_t sub_1974499A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a2;
  v7 = *(a2 + 8);
  type metadata accessor for _ModelMetadata();
  swift_allocObject();
  *(v3 + 40) = sub_1973FD110();
  if (v7)
  {
    if (v7 == 1 && (v6[33] & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (![v6 isTemporaryID])
  {
    goto LABEL_11;
  }

  if (qword_1EAF2AC88 != -1)
  {
    swift_once();
  }

  v8 = sub_19752157C();
  __swift_project_value_buffer(v8, qword_1EAF33DD0);
  sub_1974028EC(v6, v7);
  v9 = sub_19752155C();
  v10 = sub_197521DDC();
  sub_1974028C8(v6, v7);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    sub_1974028EC(v6, v7);
    v13 = sub_1975217CC();
    v15 = sub_197462310(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_1973F2000, v9, v10, "Illegal attempt to create a full future for a temporary identifier. These won't be resolvable after the temporary object is deallocated: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm_7(v12);
    MEMORY[0x19A8E1B50](v12, -1, -1);
    MEMORY[0x19A8E1B50](v11, -1, -1);
  }

LABEL_11:
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = a3;
  *(*(v4 + 40) + 16) = a3;

  *(*(v4 + 40) + 112) = 1;
  return v4;
}

uint64_t sub_197449BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  sub_1974499A4(v5, a2, a3);
  return v5;
}

uint64_t sub_197449C90(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197449D18(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t ModelContext.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for EditingState(0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x19A8E1370](v4);
  v8 = [objc_opt_self() defaultCenter];
  [v8 removeObserver_];

  sub_19740E3D0(0);
  current_context_tsd = _SD_get_current_context_tsd();
  if (current_context_tsd)
  {
    v10 = swift_retain_n();

    swift_retain_n();
    v11 = sub_1974BEE44(v1);

    if (v11)
    {
    }
  }

  v12 = &unk_1ED7CE000;
  if (*(v1 + 16))
  {
    Strong = *(v1 + 16);
  }

  else
  {
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_12:

      goto LABEL_13;
    }
  }

  swift_beginAccess();
  v14 = *(Strong + 48);
  v15 = *(v14 + 16);
  if (!v15)
  {

    goto LABEL_12;
  }

  v21[2] = Strong;
  v21[3] = current_context_tsd;
  v22 = v7;
  v16 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  v17 = v14 + 32;

  v21[1] = v14;

  swift_beginAccess();
  do
  {
    sub_1974047F8(v17, v23, &qword_1EAF2AF38, &qword_19752C6A8);
    v18 = v24;
    ObjectType = swift_getObjectType();
    sub_197404E70(v1 + v16, v6);
    (*(v18 + 120))(v6, ObjectType, v18);
    swift_unknownObjectRelease();
    sub_19740BE74(v6, type metadata accessor for EditingState);
    sub_197414BEC(v23);
    v17 += 56;
    --v15;
  }

  while (v15);

  v12 = &unk_1ED7CE000;
  v7 = v22;
LABEL_13:
  objc_autoreleasePoolPop(v7);

  swift_weakDestroy();

  sub_19740BE74(v1 + v12[220], type metadata accessor for EditingState);

  return v1;
}

uint64_t sub_19744A0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier;
  swift_beginAccess();
  v7 = sub_197404D0C(a2);
  v8 = 0;
  if (v9)
  {
    v10 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + v6);
    *(a1 + v6) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_19747A4FC();
    }

    v13 = *(v12 + 48);
    v14 = sub_19752135C();
    (*(*(v14 - 8) + 8))(v13 + *(*(v14 - 8) + 72) * v10, v14);
    v8 = *(*(v12 + 56) + 8 * v10);
    sub_19744A1C8(v10, v12);
    *(a1 + v6) = v12;
  }

  *a3 = v8;
  return swift_endAccess();
}

unint64_t sub_19744A1C8(int64_t a1, uint64_t a2)
{
  v41 = sub_19752135C();
  v4 = *(v41 - 8);
  result = MEMORY[0x1EEE9AC00](v41, v5);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v42 = v7;
    v13 = sub_19752207C();
    v14 = v41;
    v7 = v42;
    v15 = v12;
    v39 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v37 = a2 + 64;
    v38 = v17;
    v18 = *(v16 + 56);
    v36 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v40;
      v22 = v15;
      v23 = v16;
      v38(v40, *(v7 + 48) + v18 * v11, v14);
      sub_197404DE0(&qword_1ED7C9B68, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v24 = sub_1975216AC();
      result = (*v36)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v39)
      {
        if (v25 >= v39 && a1 >= v25)
        {
LABEL_15:
          v7 = v42;
          v28 = *(v42 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v42;
            v18 = v19;
            v15 = v22;
            v9 = v37;
          }

          else
          {
            v9 = v37;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v42;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v39 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v37;
      v18 = v19;
      v7 = v42;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v7 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v34;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_19744A4E8()
{
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_19744A624(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v0[2] = v2;

  v3 = sub_19744A638(v1);
  swift_beginAccess();
  v0[3] = v3;

  v4 = sub_19744A624(v1);
  swift_beginAccess();
  v0[4] = v4;

  v5 = sub_19744943C(v1);
  swift_beginAccess();
  v0[5] = v5;

  v6 = sub_19744A64C(v1);
  swift_beginAccess();
  v0[6] = v6;

  v7 = sub_19744A624(v1);
  swift_beginAccess();
  v0[7] = v7;
}

uint64_t sub_19744A660()
{

  return swift_deallocClassInstance();
}

uint64_t sub_19744A6A0()
{

  return swift_deallocClassInstance();
}

uint64_t ModelActor.unownedExecutor.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = v4();
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    swift_unknownObjectRelease();
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197524840);
    (v4)(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B160, &unk_19752CF90);
    sub_19752235C();
    swift_unknownObjectRelease();
    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    swift_getObjectType();
    v7 = sub_197521B4C();
    swift_unknownObjectRelease();
    return v7;
  }

  return result;
}

uint64_t DefaultSerialModelExecutor.enqueue(_:)()
{
  v1 = v0;
  v2 = sub_197521B3C();
  v3 = *(v0 + 32);
  if (v3)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_197472ABC;
    *(v5 + 24) = v4;
    v15[4] = sub_197472AC4;
    v15[5] = v5;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_197472418;
    v15[3] = &block_descriptor_1;
    v6 = _Block_copy(v15);
    v7 = v3;

    [v7 performBlockAndWait_];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  else
  {
    v10 = *(v0 + 16);
    if (_SD_get_current_context_tsd())
    {
      v11 = swift_retain_n();

      sub_19744AB88(v10);
    }

    else
    {
      _SD_get_current_context_tsd();
      type metadata accessor for _SwiftDataContextThreadLocalState();
      v12 = swift_allocObject();
      *(v12 + 16) = MEMORY[0x1E69E7CC0];
      sub_19744AB88(v10);
      _SD_set_current_context_tsd(v12);
    }

    sub_19744ADA8(&qword_1ED7C6D30, &protocol conformance descriptor for DefaultSerialModelExecutor);
    swift_job_run();
    result = _SD_get_current_context_tsd();
    if (result)
    {
      v13 = swift_retain_n();

      v14 = sub_19744BE90(v10);

      if (v14)
      {
      }
    }
  }

  return result;
}

uint64_t sub_19744AB1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_19744AB88(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 16);
  if (v4 >> 62)
  {
    result = sub_1975220EC();
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_10;
    }
  }

  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_21:

    MEMORY[0x19A8E0960](v6, v4);

    goto LABEL_8;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_8:
  Strong = swift_weakLoadStrong();

  if (Strong)
  {

    if (Strong == a1)
    {
      return result;
    }
  }

LABEL_10:
  type metadata accessor for _SwiftDataContextScope();
  v8 = swift_allocObject();
  swift_weakInit();
  *(v8 + 24) = 0;
  swift_weakAssign();
  if (!*(a1 + 16))
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      v9 = result;
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  v9 = *(a1 + 16);
LABEL_14:
  v10 = *(v9 + 72);

  *(v8 + 24) = v10;

  swift_beginAccess();

  MEMORY[0x19A8E00D0](v11);
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1975219FC();
  }

  sub_197521A4C();
  swift_endAccess();
}

uint64_t sub_19744ADA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultSerialModelExecutor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ModelActor.modelContext.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(a1);
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 16))(ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_19744AEE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v53 = a3;
  v52 = a2;
  v59 = a4;
  sub_19752139C();
  v51 = sub_197521F5C();
  v9 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v10);
  v50 = &v41 - v11;
  v12 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v48 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a4;
  v55 = a5;
  v49 = type metadata accessor for DataStoreBatchDeleteRequest(0, a4, a5, v15);
  v16 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v17);
  v19 = &v41 - v18;
  v20 = *(v5 + 16);
  v56 = v6;
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      goto LABEL_20;
    }

    v21 = result;
  }

  swift_beginAccess();
  v23 = *(v21 + 48);

  v24 = *(v23 + 16);
  if (!v24)
  {
  }

  v46 = v19;
  v25 = v23 + 32;
  v47 = v5;
  v45 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  result = swift_beginAccess();
  v26 = 0;
  v44 = (v9 + 16);
  v43 = (v16 + 8);
  v42 = v23;
  while (v26 < *(v23 + 16))
  {
    sub_1974047F8(v25, v57, &qword_1EAF2AF38, &qword_19752C6A8);
    v27 = v58;
    swift_getObjectType();
    v28 = swift_conformsToProtocol2();
    if (v28)
    {
      v29 = v27 == 0;
    }

    else
    {
      v29 = 1;
    }

    if (v29)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = v28;
      v31 = v24;
      v32 = v48;
      sub_197404E70(v47 + v45, v48);
      v33 = v50;
      (*v44)(v50, v52, v51);
      v34 = v46;
      v35 = v32;
      v36 = v33;
      v37 = v54;
      v38 = v55;
      sub_19744B340(v35, v36, v53 & 1, v54, v55, v46);
      ObjectType = swift_getObjectType();
      v40 = v56;
      (*(v30 + 16))(v34, v37, v38, ObjectType, v30);
      if (v40)
      {
        swift_unknownObjectRelease();

        (*v43)(v34, v49);
        return sub_197414BEC(v57);
      }

      v56 = 0;
      swift_unknownObjectRelease();
      (*v43)(v34, v49);
      v23 = v42;
      v24 = v31;
    }

    ++v26;
    result = sub_197414BEC(v57);
    v25 += 56;
    if (v24 == v26)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_19744B340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1974074E0(a1, a6);
  v12 = type metadata accessor for DataStoreBatchDeleteRequest(0, a4, a5, v11);
  v13 = *(v12 + 36);
  sub_19752139C();
  v14 = sub_197521F5C();
  result = (*(*(v14 - 8) + 32))(a6 + v13, a2, v14);
  *(a6 + *(v12 + 40)) = a3;
  return result;
}

void DefaultStore.delete<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  v5 = MEMORY[0x19A8E1370]();
  sub_197463DBC(a1, v3, sub_19744B504, v6);
  objc_autoreleasePoolPop(v5);
}

void sub_19744B524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a3;
  v56 = a2;
  v62 = *MEMORY[0x1E69E9840];
  v61 = a4;
  v8 = sub_19752139C();
  v9 = sub_197521F5C();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v50 - v13;
  v52 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v12, v15);
  v53 = &v50 - v16;
  v55 = *(a1 + 16);
  sub_1973F7AAC(a4);
  v17 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v18 = sub_19752178C();

  v19 = [v17 initWithEntityName_];

  v20 = a5;
  v22 = type metadata accessor for DataStoreBatchDeleteRequest(0, a4, a5, v21);
  v23 = v9;
  v24 = v9;
  v25 = v52;
  (*(v10 + 16))(v14, v56 + *(v22 + 36), v24);
  if ((*(v25 + 48))(v14, 1, v8) == 1)
  {
    (*(v10 + 8))(v14, v23);
  }

  else
  {
    v26 = v53;
    (*(v25 + 32))(v53, v14, v8);
    v27 = v54;
    sub_19744BBA0(v26, v51, a4, v20);
    if (v27)
    {
      (*(v25 + 8))(v53, v8);
      v29 = v55;
LABEL_11:

      return;
    }

    v30 = v28;
    [v19 setPredicate_];

    (*(v25 + 8))(v53, v8);
  }

  [v19 setIncludesSubentities_];
  v31 = v19;
  v32 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  [v32 setResultType:0];
  *&v60[0] = 0;
  v29 = v55;
  v33 = [v55 executeRequest:v32 error:v60];
  v34 = *&v60[0];
  if (!v33)
  {
    v39 = *&v60[0];
    sub_1975211DC();

    swift_willThrow();
    v19 = v31;
    goto LABEL_11;
  }

  v35 = v33;
  objc_opt_self();
  v36 = swift_dynamicCastObjCClass();
  if (!v36)
  {
    v45 = v34;

LABEL_26:
    sub_1975223EC();
    __break(1u);
    return;
  }

  v37 = v36;
  v38 = v34;
  if ([v37 result])
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0u;
    v59 = 0u;
  }

  v60[0] = v58;
  v60[1] = v59;
  if (!*(&v59 + 1))
  {
    sub_19740C044(v60, &qword_1EAF2AF20, &unk_19752F320);
    goto LABEL_25;
  }

  sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    *&v60[0] = 0;
    *(&v60[0] + 1) = 0xE000000000000000;
    sub_1975221EC();

    *&v60[0] = 0xD000000000000020;
    *(&v60[0] + 1) = 0x80000001975246F0;
    v46 = [v37 description];
    v47 = sub_1975217BC();
    v49 = v48;

    MEMORY[0x19A8DFF80](v47, v49);

    goto LABEL_26;
  }

  v40 = v57;
  if ([v57 BOOLValue])
  {
    v41 = v32;
  }

  else
  {
    if (qword_1ED7C9848 != -1)
    {
      swift_once();
    }

    v42 = sub_19752157C();
    __swift_project_value_buffer(v42, qword_1ED7CE648);
    v41 = sub_19752155C();
    v43 = sub_197521DDC();
    if (os_log_type_enabled(v41, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_1973F2000, v41, v43, "NSBatchDeleteRequest returned a false status but no error", v44, 2u);
      MEMORY[0x19A8E1B50](v44, -1, -1);
    }
  }
}

void sub_19744BBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x19A8E1370]();
  sub_1974DE4EC(a1, a2, a3, &v8, &v9);
  objc_autoreleasePoolPop(v7);
}

void sub_19744BD48(uint64_t *a1, void *a2)
{
  v5 = MEMORY[0x19A8E1370]();
  sub_1974E36E0(v2, a1, a2[2], a2[3], a2[4], a2[5], a2[6], &v7, &v6);
  objc_autoreleasePoolPop(v5);
}

unint64_t sub_19744BE3C()
{
  result = qword_1EAF2ACE0;
  if (!qword_1EAF2ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF2ACE0);
  }

  return result;
}

BOOL sub_19744BE90(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = v4 - 1;
  if (v4 < 1)
  {
    goto LABEL_24;
  }

  do
  {
    v6 = 0;
    if (!v5)
    {
LABEL_7:
      if ((v6 & 1) == 0)
      {
        v7 = 0;
        v6 = 1;
        goto LABEL_9;
      }

      break;
    }

    while (1)
    {
      v7 = v5 - 1;
LABEL_9:
      v8 = *(v1 + 16);
      if ((v8 & 0xC000000000000001) != 0)
      {

        v9 = MEMORY[0x19A8E0960](v5, v8);

        goto LABEL_12;
      }

      if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      v9 = *(v8 + 8 * v5 + 32);

LABEL_12:
      if (swift_weakLoadStrong())
      {

        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v11 = Strong;

          if (v11 == a1)
          {
            swift_beginAccess();
            sub_19744C118(v5);
            swift_endAccess();

            *(v9 + 24) = 0;

            goto LABEL_24;
          }
        }

        v5 = v7;
        if (!v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        swift_beginAccess();
        v12 = *(v1 + 16);
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v1 + 16) = v12;
        if (!isUniquelyReferenced_nonNull_bridgeObject || v12 < 0 || (v12 & 0x4000000000000000) != 0)
        {
          v12 = sub_19751E880();
          *(v1 + 16) = v12;
        }

        v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5 >= v14)
        {
          goto LABEL_29;
        }

        v15 = v14 - 1;
        memmove(((v12 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 32), ((v12 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 40), 8 * (v14 - 1 - v5));
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v15;
        *(v1 + 16) = v12;
        swift_endAccess();

        *(v9 + 24) = 0;

        v5 = v7;
        if (!v7)
        {
          goto LABEL_7;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v19 = sub_1975220EC();
    v5 = v19 - 1;
  }

  while (v19 >= 1);
LABEL_24:
  v16 = *(v1 + 16);
  if (v16 >> 62)
  {
    v17 = sub_1975220EC();
    if (!v17)
    {
LABEL_26:
      _SD_remove_current_context_tsd();
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_26;
    }
  }

  return v17 == 0;
}

uint64_t sub_19744C130()
{
  swift_weakAssign();
  *(v0 + 24) = 0;

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_19744C188()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];

  return swift_deallocClassInstance();
}

uint64_t sub_19744C1E4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19744D134(result, a2);
  }

  return result;
}

uint64_t sub_19744C1F8(void *a1, char a2, void *a3, uint64_t *a4)
{
  __swift_project_boxed_opaque_existential_1Tm_4(a3, a3[3]);
  v7 = sub_19752281C();
  if (a2)
  {
    v8 = [a1 reverseTransformedValue_];
  }

  else
  {
    v8 = [a1 transformedValue_];
  }

  v9 = v8;
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = *a4;
      v11 = a4[1];
      *a4 = v17;
      return sub_19744725C(v10, v11);
    }
  }

  else
  {
    sub_1973F9E68(v19);
  }

  *&v19[0] = 0;
  *(&v19[0] + 1) = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000014, 0x800000019752A2B0);
  sub_19752235C();
  MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
  MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
  MEMORY[0x19A8DFF80](0x20676E69737520, 0xE700000000000000);
  v13 = [a1 description];
  v14 = sub_1975217BC();
  v16 = v15;

  MEMORY[0x19A8DFF80](v14, v16);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19744C43C()
{
  v1 = v0[15];
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = sub_1975220EC();

    if (v2 <= 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    v4 = v0[15];
    v5 = v0[17];
    v6 = MEMORY[0x1E69E7CD0];
    v0[15] = MEMORY[0x1E69E7CD0];
    v0[17] = v6;
    swift_beginAccess();
    sub_197443A28(v6, v6, v6, v4, v5, v0[18] != 0);
  }

  if (*(v1 + 16) > 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (*(v0[17] + 16))
  {
    goto LABEL_7;
  }

  result = swift_beginAccess();
  if (v0[18])
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t FetchDescriptor.predicate.setter(uint64_t a1, uint64_t a2)
{
  sub_19752139C();
  v4 = sub_197521F5C();
  return (*(*(v4 - 8) + 40))(v2, a1, v4);
}

uint64_t sub_19744C5BC(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_19744C698(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B238, &unk_19752F350);
  result = sub_1975221AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_19747ECF8(*v15, v15[1], v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v16 = 1 << *(v3 + 32);
    if (v16 >= 64)
    {
      bzero((v3 + 56), ((v16 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v16;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_19744C800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Schema.Entity();
  v6 = sub_1973FDF38(a2, a3);
  v7 = sub_1973F8364(a1);
  v9 = v8;
  swift_beginAccess();
  v10 = *(v6 + 104);
  if (*(v10 + 16))
  {
    v11 = sub_1973F4028(v7, v9);
    v13 = v12;

    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v11);
      swift_endAccess();

      return v14;
    }
  }

  else
  {
  }

  swift_endAccess();
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197528400);
  v16 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v16);

  MEMORY[0x19A8DFF80](0x79654B20726F6620, 0xED00002068746150);
  sub_19752202C();
  sub_19752235C();
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19744CA30(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (*(v3 + 48) == 1)
  {
    if (a2)
    {
      *(&v12 + 1) = &type metadata for PersistentIdentifier;
      v6 = *(*(v5 + *MEMORY[0x1E69E77B0] + 8) + 16);

      PersistentModel.persistentModelID.getter(v6, a3, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    if (a2)
    {
      v8 = *(*(v5 + *MEMORY[0x1E69E77B0] + 8) + 16);
      v9 = a2;
    }

    else
    {
      v9 = 0;
      v8 = 0;
      *(&v11 + 1) = 0;
      *&v12 = 0;
    }

    *&v11 = v9;
    *(&v12 + 1) = v8;

    swift_unknownObjectRetain();
  }

  sub_1973FCF28(&v11, a1);
}

uint64_t sub_19744CB7C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19744CBB8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_19744CC00(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_19744CC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v27 = a3;
  v11 = swift_conformsToProtocol2();
  if (v11 && a3)
  {
    v12 = v11;
    v13 = a3;
    do
    {
      sub_1973F732C(v13, &v27, v13, v12);
      v13 = v27;
      v12 = swift_conformsToProtocol2();
      if (v12)
      {
        v14 = v13 == 0;
      }

      else
      {
        v14 = 1;
      }
    }

    while (!v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  v15 = sub_1975214EC();
  v16 = sub_1975214EC();
  if (v15)
  {
    if (!v16 || v15 != v16)
    {
      goto LABEL_24;
    }
  }

  else if (v16)
  {
    goto LABEL_24;
  }

  sub_1975214DC();
  if (v17 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v17)
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1975221EC();

      v27 = 0xD00000000000001BLL;
      v28 = 0x800000019752B270;
      v25 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v25);

      MEMORY[0x19A8DFF80](0x20726F6620, 0xE500000000000000);
      swift_getMetatypeMetadata();
      v26 = sub_1975217CC();
      MEMORY[0x19A8DFF80](v26);

      goto LABEL_24;
    }

    v18 = sub_1975214DC();
    if (v19 >= 1)
    {
      v20 = *v18;
      v21 = swift_conformsToProtocol2();
      if (v21 && v20)
      {
        sub_19744CFD8(v20, a2, a1, *(v10 + 232), a3, v20, *(v10 + 240), a4, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
        v22 = sub_19752234C();

        v27 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B560, &unk_19752F330);
        return swift_dynamicCast();
      }

      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_22:
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1975221EC();

  v27 = 0xD000000000000028;
  v28 = 0x800000019752B490;
  v24 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v24);

  MEMORY[0x19A8DFF80](8285, 0xE200000000000000);
LABEL_24:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_19744CFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = sub_1975215CC();
  v22 = result;
  v15 = *(a3 + 16);
  if (v15)
  {
    v16 = a2;
    v17 = (a3 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v17 += 16;
      v20 = v18;
      v21 = v19;
      sub_1974028EC(v18, v19);
      v20 = sub_197452724(a6, &v20, v16, a4, a5, a6, a6);
      sub_197521AAC();
      sub_197521A7C();
      sub_1974028C8(v18, v19);
      --v15;
    }

    while (v15);
    return v22;
  }

  return result;
}

uint64_t sub_19744D0E0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_19744D134(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_19744D188(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v8 = *a1;
  LOBYTE(v9) = v3;
  v4 = sub_19744DAA0(&v8);
  if (v4)
  {
    v5 = v4;
    v6 = [*(v1 + 24) objectWithID_];
  }

  else
  {
    v8 = v2;
    LOBYTE(v9) = v3;
    v6 = sub_197440E94(&v8, *(v1 + 24));
    LOBYTE(v9) = v3;
    v5 = [v6 objectID];
    sub_19744DBF0(&v8, v5);
  }

  return v6;
}

void sub_19744D278(__int16 a1)
{
  v2 = *(v1 + 16);
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  sub_197522B4C();
  v4 = sub_19752178C();

  [v2 setValue:v3 forKey:v4];
}

uint64_t sub_19744D340@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a3 + 48);
  v10 = *(v8 + 16);
  v9 = v8 + 16;
  v11 = v10 + 1;
  while (--v11)
  {
    v12 = (v9 + 40);
    v13 = *(v9 + 16);
    v9 += 40;
    if (v13 == 1)
    {
      v14 = *v12;
      if (*v12)
      {
        v15 = *(v12 - 1);
        *a4 = 0u;
        a4[1] = 0u;

        sub_19744D134(a1, a2);

        sub_19744D4C0(v15, v14, a1, a2, a3, a4);

        sub_19744D0E0(a1, a2);
      }

      break;
    }
  }

  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000004DLL, 0x800000019752A1C0);
  v17 = sub_197522B8C();
  MEMORY[0x19A8DFF80](v17);

  result = sub_1975223EC();
  __break(1u);
  return result;
}

void sub_19744D4C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, _OWORD *a6)
{
  if (a1 == 0xD000000000000024 && 0x800000019752A210 == a2)
  {
    v18 = MEMORY[0x1E696A8B0];
    goto LABEL_15;
  }

  v13 = sub_19752282C();
  v14 = *MEMORY[0x1E696A8B0];
  if (v13)
  {
    goto LABEL_16;
  }

  if (sub_1975217BC() == a1 && v15 == a2)
  {
    goto LABEL_33;
  }

  v17 = sub_19752282C();

  if (v17)
  {
    goto LABEL_16;
  }

  if (a1 == 0xD000000000000027 && 0x800000019752A120 == a2)
  {
    v18 = MEMORY[0x1E696A510];
LABEL_15:
    v14 = *v18;
    goto LABEL_16;
  }

  v21 = sub_19752282C();
  v14 = *MEMORY[0x1E696A510];
  if ((v21 & 1) == 0)
  {
    if (sub_1975217BC() == a1 && v22 == a2)
    {
      goto LABEL_33;
    }

    v24 = sub_19752282C();

    if ((v24 & 1) == 0)
    {
      if (a1 == 0xD000000000000022 && 0x800000019752A150 == a2)
      {
        v18 = MEMORY[0x1E696A9F8];
        goto LABEL_15;
      }

      v25 = sub_19752282C();
      v14 = *MEMORY[0x1E696A9F8];
      if ((v25 & 1) == 0)
      {
        if (sub_1975217BC() == a1 && v26 == a2)
        {
LABEL_33:

          goto LABEL_16;
        }

        v27 = sub_19752282C();

        if ((v27 & 1) == 0)
        {
          v28 = sub_19752178C();
          v29 = [objc_opt_self() valueTransformerForName_];

          if (v29)
          {
            objc_opt_self();
            v20 = swift_dynamicCastObjCClass() != 0;
            v19 = v29;
            goto LABEL_18;
          }

LABEL_37:
          sub_1975221EC();

          MEMORY[0x19A8DFF80](a1, a2);
          sub_19744D0E0(a3, a4);

          sub_1975223EC();
          __break(1u);
          return;
        }
      }
    }
  }

LABEL_16:
  v19 = [objc_opt_self() valueTransformerForName_];
  if (!v19)
  {
    goto LABEL_37;
  }

  v20 = 1;
LABEL_18:
  v30 = v19;
  sub_19744D83C(v30, v20, a3, a4, a5, a6);
}

_OWORD *sub_19744D83C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v10 = sub_1975212FC();
  if (a2)
  {
    v11 = [a1 transformedValue_];
  }

  else
  {
    v11 = [a1 reverseTransformedValue_];
  }

  v12 = v11;

  if (v12)
  {
    sub_197521FDC();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    sub_1974028B8(v21, v22);
    sub_1973F9E68(a6);
    return sub_1974028B8(v22, a6);
  }

  else
  {
    sub_1973F9E68(v21);
    *&v22[0] = 0;
    *(&v22[0] + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000031, 0x800000019752A270);
    v14 = [a1 description];
    v15 = sub_1975217BC();
    v17 = v16;

    MEMORY[0x19A8DFF80](v15, v17);

    MEMORY[0x19A8DFF80](8238, 0xE200000000000000);
    v18 = sub_1975212EC();
    MEMORY[0x19A8DFF80](v18);

    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v21[0] = a5;
    type metadata accessor for Schema.Attribute();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19744DA60()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

void *sub_19744DAA0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = sub_197403C30(v2, v3);
  if (v6)
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = v7;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_19744DB58()
{
  v1 = *(v0 + 16);
  sub_197522B4C();
  v2 = sub_19752178C();

  [v1 setValue:0 forKey:v2];
}

void sub_19744DBF0(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_197403C30(v5, v6);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      if ([v10 isEqual_])
      {

        return;
      }

      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000044, 0x8000000197524670);
      sub_19752235C();
      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      v22 = [v10 description];
      v23 = sub_1975217BC();
      v25 = v24;

      MEMORY[0x19A8DFF80](v23, v25);

      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      v26 = [a2 description];
      v27 = sub_1975217BC();
      v29 = v28;

      MEMORY[0x19A8DFF80](v27, v29);

      goto LABEL_13;
    }
  }

  swift_beginAccess();
  v11 = *(v3 + 24);
  if (*(v11 + 16))
  {

    v12 = sub_197441030(a2);
    if (v13)
    {
      sub_1974028EC(*(*(v11 + 56) + 16 * v12), *(*(v11 + 56) + 16 * v12 + 8));

      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000043, 0x8000000197524620);
      v18 = [a2 description];
      v19 = sub_1975217BC();
      v21 = v20;

      MEMORY[0x19A8DFF80](v19, v21);

      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      sub_19752235C();
      MEMORY[0x19A8DFF80](2108704, 0xE300000000000000);
      sub_19752235C();
LABEL_13:
      sub_1975223EC();
      __break(1u);
      return;
    }
  }

  swift_beginAccess();
  sub_1974028EC(v5, v6);
  v14 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_19743EFA8(v14, v5, v6, isUniquelyReferenced_nonNull_native);
  sub_1974028C8(v5, v6);
  *(v3 + 16) = v30;
  swift_endAccess();
  swift_beginAccess();
  sub_1974028EC(v5, v6);
  v16 = v14;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v3 + 24);
  *(v3 + 24) = 0x8000000000000000;
  sub_197441D84(v5, v6, v16, v17);

  *(v3 + 24) = v31;
  swift_endAccess();
}

unint64_t sub_19744E050(uint64_t a1)
{
  result = sub_197406AAC();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_19744E078()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ED7C8358 = result;
  return result;
}

unint64_t sub_19744E0DC(uint64_t a1)
{
  *(a1 + 8) = sub_1973FF3D4();
  result = sub_1973FF428();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_19744E158(uint64_t a1)
{
  result = sub_197413CBC(&qword_1ED7C9B80, type metadata accessor for DefaultStore, &protocol conformance descriptor for DefaultStore);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_19744E1D4()
{
  result = qword_1ED7C7AA0[0];
  if (!qword_1ED7C7AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7C7AA0);
  }

  return result;
}

uint64_t sub_19744E238()
{
  result = sub_19752178C();
  qword_1ED7C8180 = result;
  return result;
}

uint64_t sub_19744E270(uint64_t a1)
{
  result = type metadata accessor for EditingState(319);
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

uint64_t sub_19744E36C()
{

  return swift_deallocClassInstance();
}

void sub_19744E3BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1 == 0xD000000000000024 && 0x800000019752A210 == a2)
  {
    v12 = MEMORY[0x1E696A8B0];
    goto LABEL_15;
  }

  v7 = sub_19752282C();
  v8 = *MEMORY[0x1E696A8B0];
  if (v7)
  {
    goto LABEL_16;
  }

  if (sub_1975217BC() == a1 && v9 == a2)
  {
    goto LABEL_32;
  }

  v11 = sub_19752282C();

  if (v11)
  {
    goto LABEL_16;
  }

  if (a1 == 0xD000000000000027 && 0x800000019752A120 == a2)
  {
    v12 = MEMORY[0x1E696A510];
LABEL_15:
    v8 = *v12;
    goto LABEL_16;
  }

  v14 = sub_19752282C();
  v8 = *MEMORY[0x1E696A510];
  if ((v14 & 1) == 0)
  {
    if (sub_1975217BC() == a1 && v15 == a2)
    {
      goto LABEL_32;
    }

    v17 = sub_19752282C();

    if ((v17 & 1) == 0)
    {
      if (a1 == 0xD000000000000022 && 0x800000019752A150 == a2)
      {
        v12 = MEMORY[0x1E696A9F8];
        goto LABEL_15;
      }

      v18 = sub_19752282C();
      v8 = *MEMORY[0x1E696A9F8];
      if ((v18 & 1) == 0)
      {
        if (sub_1975217BC() == a1 && v19 == a2)
        {
LABEL_32:

          goto LABEL_16;
        }

        v20 = sub_19752282C();

        if ((v20 & 1) == 0)
        {
          v21 = sub_19752178C();
          v22 = [objc_opt_self() valueTransformerForName_];

          if (v22)
          {
            objc_opt_self();
            swift_dynamicCastObjCClass();
            v13 = v22;
            goto LABEL_17;
          }

LABEL_36:
          sub_1975221EC();

          MEMORY[0x19A8DFF80](a1, a2);
          sub_1975223EC();
          __break(1u);
          return;
        }
      }
    }
  }

LABEL_16:
  v13 = [objc_opt_self() valueTransformerForName_];
  if (!v13)
  {
    goto LABEL_36;
  }

LABEL_17:
  v23 = v13;
  a3();
}

void sub_19744E718(void *a1@<X0>, void *a2@<X8>)
{
  v3 = sub_19744E9BC(MEMORY[0x1E69E7CC0]);
  v34 = a1;
  v4 = [a1 storeTokens];
  if (!v4)
  {
    goto LABEL_26;
  }

  v5 = v4;
  sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
  v6 = sub_1975215FC();

  v7 = 0;
  v8 = v6 + 64;
  v36 = v6;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
LABEL_12:
    v15 = __clz(__rbit64(v11)) | (v7 << 6);
    v16 = (*(v36 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(*(v36 + 56) + 8 * v15);

    v20 = v19;
    v37 = [v20 longLongValue];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = sub_1973F4028(v18, v17);
    v24 = v3[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_24;
    }

    v28 = v23;
    if (v3[3] < v27)
    {
      sub_19744E9D0(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_1973F4028(v18, v17);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_27;
      }

LABEL_17:
      if (v28)
      {
        goto LABEL_5;
      }

      goto LABEL_18;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    v33 = v22;
    sub_19747AFA8();
    v22 = v33;
    if (v28)
    {
LABEL_5:
      v13 = v22;

      *(v3[7] + 8 * v13) = v37;

      goto LABEL_6;
    }

LABEL_18:
    v3[(v22 >> 6) + 8] |= 1 << v22;
    v30 = (v3[6] + 16 * v22);
    *v30 = v18;
    v30[1] = v17;
    *(v3[7] + 8 * v22) = v37;

    v31 = v3[2];
    v26 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v26)
    {
      goto LABEL_25;
    }

    v3[2] = v32;
LABEL_6:
    v11 &= v11 - 1;
  }

  while (1)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      *a2 = v3;
      return;
    }

    v11 = *(v8 + 8 * v14);
    ++v7;
    if (v11)
    {
      v7 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1975229CC();
  __break(1u);
}

unint64_t sub_19744E9E4()
{
  result = qword_1ED7C7C98;
  if (!qword_1ED7C7C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7C98);
  }

  return result;
}

unint64_t sub_19744EA38(void *a1)
{
  a1[1] = sub_19744EA80();
  a1[2] = sub_19744EB30();
  a1[3] = sub_19744EB84();
  a1[4] = sub_19744EBF0();
  result = sub_19744EC4C();
  a1[5] = result;
  return result;
}

unint64_t sub_19744EA80()
{
  result = qword_1ED7C7CB8;
  if (!qword_1ED7C7CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7CB8);
  }

  return result;
}

unint64_t sub_19744EADC()
{
  result = qword_1ED7C7CB0;
  if (!qword_1ED7C7CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7CB0);
  }

  return result;
}

unint64_t sub_19744EB30()
{
  result = qword_1ED7C7CA8;
  if (!qword_1ED7C7CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7CA8);
  }

  return result;
}

unint64_t sub_19744EB84()
{
  result = qword_1ED7C7CC8;
  if (!qword_1ED7C7CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7CC8);
  }

  return result;
}

unint64_t sub_19744EBF0()
{
  result = qword_1ED7C7CC0;
  if (!qword_1ED7C7CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7CC0);
  }

  return result;
}

unint64_t sub_19744EC4C()
{
  result = qword_1ED7C7CA0;
  if (!qword_1ED7C7CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C7CA0);
  }

  return result;
}

uint64_t sub_19744ED98(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19744EDE0(uint64_t a1)
{
  *(a1 + 8) = sub_19744ED98(qword_1ED7C7720, type metadata accessor for DefaultHistoryTransaction, &protocol conformance descriptor for DefaultHistoryTransaction);
  result = sub_19744ED98(&qword_1ED7C7710, type metadata accessor for DefaultHistoryTransaction, &protocol conformance descriptor for DefaultHistoryTransaction);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_19744EECC(uint64_t a1)
{
  sub_19752139C();
  result = sub_197521F5C();
  if (v2 <= 0x3F)
  {
    sub_197520C4C();
    result = sub_197521AAC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t HistoryDescriptor.init(predicate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_19752139C();
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  v10 = type metadata accessor for HistoryDescriptor(0, a2, a3, v9);
  v11 = *(v10 + 40);
  sub_197520C4C();
  *(a4 + v11) = sub_197521A1C();
  v12 = sub_197521F5C();
  result = (*(*(v12 - 8) + 40))(a4, a1, v12);
  *(a4 + *(v10 + 36)) = 0;
  return result;
}

uint64_t sub_19744F0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = sub_1975215CC();
  if (*(v3 + 16))
  {
    v7 = *(v3 + 16);
  }

  else
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      goto LABEL_13;
    }

    v7 = result;
  }

  swift_beginAccess();
  v9 = *(v7 + 48);

  v10 = *(v9 + 16);
  if (!v10)
  {
LABEL_10:

    swift_beginAccess();
    return v17;
  }

  v11 = 0;
  v12 = v9 + 32;
  while (v11 < *(v9 + 16))
  {
    sub_1974047F8(v12, v14, &qword_1EAF2AF38, &qword_19752C6A8);
    sub_19744F268(v14, v15, v16, &v17, a1, a2, a3);
    if (v4)
    {

      sub_1974050A8(v14, &qword_1EAF2AF38, &qword_19752C6A8);
    }

    ++v11;
    result = sub_1974050A8(v14, &qword_1EAF2AF38, &qword_19752C6A8);
    v12 += 56;
    if (v10 == v11)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_19744F268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a2;
  v16 = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B980, &qword_19752FCC8);
  if (swift_dynamicCast())
  {
    sub_197402778(v13, v17);
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    DynamicType = swift_getDynamicType();
    sub_19744F388(DynamicType, v17, a4, a5, a6, DynamicType, a7, v17[4]);
    return __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    return sub_1974050A8(v13, &qword_1EAF2B988, &unk_19752FCD0);
  }
}

uint64_t sub_19744F388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a6 - 8);
  v15 = MEMORY[0x1EEE9AC00](a2, a2);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1973FFC48(v15, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B980, &qword_19752FCC8);
  swift_dynamicCast();
  if ((*(a8 + 24))(a6, a8) == a5)
  {
    sub_19744F500(a5, a4, v17, a3, a5, a6, a5, a7, a8, a7);
  }

  return (*(v14 + 8))(v17, a6);
}

uint64_t sub_19744F500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a3;
  v27[0] = a4;
  v27[1] = a5;
  v28 = a2;
  v11 = type metadata accessor for HistoryDescriptor(0, a7, a10, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v27 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for HistoryDescriptor(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = v27 - v22;
  (*(v12 + 16))(v15, v28, v11);
  swift_dynamicCast();
  v24 = v30;
  (*(a9 + 32))(v23, a6, a9);
  if (!v24)
  {
    v25 = sub_1975224BC();

    if (v25)
    {
      v31 = v25;
      swift_beginAccess();
      sub_197521AAC();
      swift_getWitnessTable();
      sub_197521A6C();
      swift_endAccess();
    }
  }

  return (*(v20 + 8))(v23, v19);
}

uint64_t DefaultStore.fetchHistory(_:)(uint64_t a1)
{
  v22 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container);
  v4 = objc_allocWithZone(MEMORY[0x1E695D628]);
  v5 = v3;
  v6 = [v4 initWithConcurrencyType_];
  v7 = [v5 persistentStoreCoordinator];
  [v6 setPersistentStoreCoordinator_];

  v8 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v6 setMergePolicy_];

  [v6 set:1 isSwiftBound:?];
  sub_197521E5C();
  if (!v2)
  {

    return v22;
  }

  v9 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
  sub_1973F3D34(0, &qword_1EAF2AEA0, 0x1E696ABC0);
  if (swift_dynamicCast())
  {

    v10 = [v21 domain];
    v11 = sub_1975217BC();
    v13 = v12;

    if (v11 == sub_1975217BC() && v13 == v14)
    {
    }

    else
    {
      v16 = sub_19752282C();

      if ((v16 & 1) == 0)
      {
LABEL_12:
        swift_willThrow();
        goto LABEL_13;
      }
    }

    if ([v21 code] == 134301)
    {
      if (qword_1EAF2AD88 != -1)
      {
        swift_once();
      }

      v17 = byte_1EAF2B818;
      v19 = qword_1EAF2B820;
      v18 = unk_1EAF2B828;
      sub_19744BE3C();
      swift_allocError();
      *v20 = v17;
      *(v20 + 8) = v19;
      *(v20 + 16) = v18;
      swift_willThrow();

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
}

void sub_19744FB48(uint64_t a1, int a2)
{
  v68 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF60, &qword_19752C6D0);
  v5 = *(v4 - 8);
  v74 = v4;
  v75 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v73 = &v63 - v7;
  v8 = sub_197520DAC();
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v67 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF68, &qword_19752C6D8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v63 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF70, &qword_19752C6E0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v63 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF78, &qword_19752C6E8);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v63 - v23;
  v69 = [objc_opt_self() fetchRequest];
  if (!v69)
  {
    if (qword_1EAF2AD90 == -1)
    {
LABEL_5:
      v26 = byte_1EAF2B830;
      v28 = qword_1EAF2B838;
      v27 = unk_1EAF2B840;
      sub_19744BE3C();
      swift_allocError();
      *v29 = v26;
      *(v29 + 8) = v28;
      *(v29 + 16) = v27;
      swift_willThrow();

      return;
    }

LABEL_22:
    swift_once();
    goto LABEL_5;
  }

  v66 = a1;
  sub_1973FE0E4(a1, v19, &qword_1EAF2AF70, &qword_19752C6E0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_19740C044(v19, &qword_1EAF2AF70, &qword_19752C6E0);
    v25 = v72;
  }

  else
  {
    v65 = v21;
    v30 = (*(v21 + 32))(v24, v19, v20);
    v31 = MEMORY[0x19A8E1370](v30);
    v63 = v2;
    v64 = v31;
    v79[5] = v15;
    sub_19752138C();
    v32 = v67;
    sub_19752118C();
    (*(v12 + 8))(v15, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF88, &qword_19752C6F8);
    v33 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF90, &qword_19752C700) - 8);
    v34 = (*(*v33 + 80) + 32) & ~*(*v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_19752C280;
    v36 = v35 + v34;
    v37 = v35 + v34 + v33[14];
    v39 = v70;
    v38 = v71;
    (*(v70 + 16))(v36, v32, v71);
    v40 = [objc_opt_self() expressionForEvaluatedObject];
    *(v37 + 8) = 0u;
    *(v37 + 24) = 0u;
    *(v37 + 40) = 0u;
    *(v37 + 56) = 0;
    *v37 = v40;
    v41 = sub_197407784(v35);
    swift_setDeallocating();
    sub_19740C044(v36, &qword_1EAF2AF90, &qword_19752C700);
    swift_deallocClassInstance();
    (*(v39 + 8))(v32, v38);
    v79[0] = 1;
    v79[1] = v41;
    v79[2] = v63;

    sub_19752136C();
    v43 = v77;
    v42 = v78;
    __swift_project_boxed_opaque_existential_1Tm(v76, v77);
    v44 = v72;
    sub_197407C0C(v79, v43, *(v42 + 8));
    v25 = v44;
    if (v44)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      objc_autoreleasePoolPop(v64);

      (*(v65 + 8))(v24, v20);
      return;
    }

    v46 = v45;
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    [v69 setPredicate_];

    objc_autoreleasePoolPop(v64);
    (*(v65 + 8))(v24, v20);
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF80, &qword_19752C6F0);
  v48 = v47;
  v49 = v66;
  v50 = *(v66 + *(v47 + 40));
  v51 = *(v50 + 16);
  v52 = v68;
  if (v51)
  {
    v67 = v47;
    v53 = v25;
    v76[0] = MEMORY[0x1E69E7CC0];
    sub_1975222CC();
    v54 = 0;
    v72 = v50 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v70 = v75 + 8;
    v71 = v75 + 16;
    while (v54 < *(v50 + 16))
    {
      v56 = v74;
      v55 = v75;
      v57 = v73;
      (*(v75 + 16))(v73, v72 + *(v75 + 72) * v54, v74);
      sub_197467984();
      (*(v55 + 8))(v57, v56);
      if (v53)
      {

        return;
      }

      ++v54;
      sub_19752229C();
      sub_1975222DC();
      sub_1975222EC();
      sub_1975222AC();
      if (v51 == v54)
      {
        v52 = v68;
        v49 = v66;
        v48 = v67;
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  sub_1973F3D34(0, &qword_1ED7C9358, 0x1E696AEB0);
  v58 = sub_1975219BC();

  v59 = v69;
  [v69 setSortDescriptors_];

  v60 = *(v49 + *(v48 + 9));
  if (v60 < 0)
  {
    __break(1u);
  }

  else
  {
    [v59 setFetchLimit_];
    if (v52)
    {
      v61 = [objc_opt_self() deleteRequest];
    }

    else
    {
      v61 = [objc_allocWithZone(MEMORY[0x1E695D698]) init];
    }

    v62 = v61;
    [v61 setFetchRequest_];
    [v62 setFetchLimit_];
  }
}

unint64_t sub_1974503D0()
{
  result = qword_1ED7C8188;
  if (!qword_1ED7C8188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C8188);
  }

  return result;
}

unint64_t sub_197450428()
{
  result = qword_1ED7C8190;
  if (!qword_1ED7C8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C8190);
  }

  return result;
}

uint64_t sub_197450540()
{
  result = sub_19752178C();
  qword_1ED7C7CD8 = result;
  return result;
}

uint64_t sub_197450578(void *a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5)
{
  v6 = v5;
  v9 = a3;
  v12 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a5;
  v30 = a1;
  if (a5)
  {
    if (a5 != 1 || (v19 = a4[3]) == 0)
    {
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197526FB0);
      v32 = a4;
      LOBYTE(v33) = a5;
      sub_19752235C();
      goto LABEL_17;
    }

    v17 = a4[2];

    v20 = *(v6 + 16);
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [a4 storeIdentifier];
    v17 = sub_1975217BC();
    v19 = v18;

    v20 = *(v6 + 16);
    if (v20)
    {
LABEL_3:
      v21 = v20;
      goto LABEL_9;
    }
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_14:

    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000005CLL, 0x8000000197527010);
    *&v34 = a4;
    BYTE8(v34) = v31;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v34 = v6;
    type metadata accessor for ModelContext(0);
    sub_19752235C();
    goto LABEL_17;
  }

  v21 = Strong;
LABEL_9:
  swift_beginAccess();
  v23 = *(v21 + 56);

  if (!*(v23 + 16))
  {
    goto LABEL_14;
  }

  v24 = sub_1973F4028(v17, v19);
  if ((v25 & 1) == 0)
  {
    goto LABEL_14;
  }

  v29 = *(*(v23 + 56) + 16 * v24);
  swift_unknownObjectRetain();

  type metadata accessor for DefaultStore(0);
  if (swift_dynamicCastClass())
  {

    v26 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    sub_197404E70(v6 + v26, v15);
    v27 = sub_1974509B0(v30, a2, v9, a4, v31);
    swift_unknownObjectRelease();
    sub_197428DBC(v15);
    return v27;
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000048, 0x8000000197527070);
  MEMORY[0x19A8DFF80](0x53746C7561666544, 0xEC00000065726F74);
  MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
  v34 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  sub_19752235C();
LABEL_17:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t sub_1974509B0(uint64_t a1, uint64_t a2, unsigned __int8 a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(&v140 + 1) = a2;
  *&v140 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  v11 = *(*(v5 + 32) + 72);
  if (a5)
  {
    if (a5 == 1)
    {
      v13 = *(a4 + 72);
      v12 = *(a4 + 80);
    }

    else
    {

      v13 = sub_19750A588();
      v12 = v16;
    }
  }

  else
  {

    v14 = [a4 entityName];
    v13 = sub_1975217BC();
    v12 = v15;
  }

  if (!*(v11 + 16))
  {
    goto LABEL_124;
  }

  v17 = sub_1973F4028(v13, v12);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_125:

    *&v148 = 0;
    *(&v148 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197523F10);
    if (a5)
    {
      if (a5 == 1)
      {
        v111 = *(a4 + 72);
        v113 = *(a4 + 80);
      }

      else
      {
        v111 = sub_19750A588();
        v113 = v112;
      }
    }

    else
    {
      v115 = [a4 entityName];
      v111 = sub_1975217BC();
      v113 = v116;
    }

    MEMORY[0x19A8DFF80](v111, v113);

    MEMORY[0x19A8DFF80](0xD000000000000028, 0x8000000197523F30);
    BYTE8(v145) = a5;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v145 = v6;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    v117 = [*(v6 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) managedObjectModel];
    v118 = [v117 description];
    v119 = sub_1975217BC();
    v121 = v120;

    MEMORY[0x19A8DFF80](v119, v121);

    goto LABEL_152;
  }

  v141 = *(*(v11 + 56) + 8 * v17);

  v21 = *(v6 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  MEMORY[0x1EEE9AC00](v23, v24);

  os_unfair_lock_lock(v21 + 4);
  sub_19751E8A8(&v148);
  os_unfair_lock_unlock(v21 + 4);
  v25 = v148;

  if (!v25)
  {
    *&v148 = 0;
    *(&v148 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v145 = v148;
    MEMORY[0x19A8DFF80](0xD000000000000027, 0x8000000197523F60);
    v148 = v140;
    LOBYTE(v149) = a3;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000015, 0x8000000197523F90);
    sub_19752135C();
    sub_19751E7F8(&qword_1EAF2AF28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v114 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v114);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    *&v148 = v6;
    sub_19752235C();
    goto LABEL_152;
  }

  if (a3 > 2u)
  {
    if (a3 != 4)
    {
      if (a3 == 5)
      {
        swift_beginAccess();
        v32 = v25[7];
        if (*(v32 + 16))
        {

          v33 = sub_197403C30(a4, a5);
          if (v34)
          {
            v35 = *(*(v32 + 56) + 8 * v33);

            if (*(v35 + 16))
            {
              v36 = sub_1973F4028(v140, *(&v140 + 1));
              if (v37)
              {
                sub_197404860(*(v35 + 56) + 32 * v36, &v148);

LABEL_110:
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
                goto LABEL_111;
              }
            }
          }
        }

        else
        {
        }

        v148 = 0u;
        v149 = 0u;
        goto LABEL_110;
      }

LABEL_119:
      swift_beginAccess();
      v106 = v25[5];
      if (*(v106 + 16))
      {

        v107 = sub_197403C30(a4, a5);
        if (v108)
        {
          v109 = *(*(v106 + 56) + 8 * v107);

          if (*(v109 + 16))
          {
            sub_1973F4028(v140, *(&v140 + 1));
            if (v110)
            {

              __break(1u);
LABEL_124:

              goto LABEL_125;
            }
          }
        }
      }

      *&v145 = 0;
      *(&v145 + 1) = 0xE000000000000000;
      sub_1975221EC();
      v147 = v145;
      MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197523FB0);
      *(&v145 + 1) = *(&v140 + 1);
      LOBYTE(v146) = 3;
      sub_19752235C();
      MEMORY[0x19A8DFF80](10, 0xE100000000000000);
      *&v145 = a4;
      BYTE8(v145) = a5;
      sub_19752235C();
      goto LABEL_152;
    }

    swift_beginAccess();
    v57 = v25[6];
    if (*(v57 + 16))
    {

      v58 = sub_197403C30(a4, a5);
      if (v59)
      {
        v60 = *(*(v57 + 56) + 8 * v58);

        if (*(v60 + 16))
        {
          v61 = sub_1973F4028(v140, *(&v140 + 1));
          if (v62)
          {
            a4 = *(*(v60 + 56) + 8 * v61);

            if (a4 >> 62)
            {
              v63 = sub_1975220EC();
              if (v63)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v63 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v63)
              {
LABEL_50:
                *&v145 = MEMORY[0x1E69E7CC0];
                sub_197411CB8(0, v63 & ~(v63 >> 63), 0);
                if ((v63 & 0x8000000000000000) == 0)
                {
                  v64 = 0;
                  v65 = v145;
                  do
                  {
                    if ((a4 & 0xC000000000000001) != 0)
                    {
                      v66 = MEMORY[0x19A8E0960](v64, a4);
                    }

                    else
                    {
                      v66 = *(a4 + 8 * v64 + 32);
                    }

                    *&v145 = v65;
                    v68 = *(v65 + 16);
                    v67 = *(v65 + 24);
                    if (v68 >= v67 >> 1)
                    {
                      v70 = v66;
                      sub_197411CB8((v67 > 1), v68 + 1, 1);
                      v66 = v70;
                      v65 = v145;
                    }

                    ++v64;
                    *(v65 + 16) = v68 + 1;
                    v69 = v65 + 16 * v68;
                    *(v69 + 32) = v66;
                    *(v69 + 40) = 0;
                  }

                  while (v63 != v64);

                  return v65;
                }

                __break(1u);
                goto LABEL_119;
              }
            }

            return MEMORY[0x1E69E7CC0];
          }
        }
      }
    }

    *&v145 = 0;
    *(&v145 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v147 = v145;
    MEMORY[0x19A8DFF80](0xD000000000000059, 0x8000000197523FB0);
    *(&v145 + 1) = *(&v140 + 1);
    LOBYTE(v146) = 4;
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v145 = a4;
    BYTE8(v145) = a5;
    sub_19752235C();
    goto LABEL_152;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      swift_beginAccess();
      v26 = v25[4];
      if (*(v26 + 16))
      {

        v27 = sub_197403C30(a4, a5);
        if (v28)
        {
          v29 = *(*(v26 + 56) + 8 * v27);

          if (*(v29 + 16))
          {
            v30 = sub_1973F4028(v140, *(&v140 + 1));
            if (v31)
            {
              sub_197404860(*(v29 + 56) + 32 * v30, &v148);

LABEL_89:
              sub_197413B20(&v148, &v145);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
              if (swift_dynamicCast())
              {
                sub_1973FE5EC(&v148, &qword_1EAF2AF20, &unk_19752F320);

                goto LABEL_91;
              }

              sub_197413B20(&v148, &v145);
              if (!*(&v146 + 1))
              {
                goto LABEL_153;
              }

              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_154;
              }

              *&v145 = v10;
              v98 = swift_conformsToProtocol2();
              v99 = v10;
              if (v98)
              {
                v99 = v10;
                if (v10)
                {
                  v100 = v98;
                  v99 = v10;
                  do
                  {
                    sub_1973F732C(v99, &v145, v99, v100);
                    v99 = v145;
                    v100 = swift_conformsToProtocol2();
                    if (v100)
                    {
                      v101 = v99 == 0;
                    }

                    else
                    {
                      v101 = 1;
                    }
                  }

                  while (!v101);
                }
              }

              v102 = swift_conformsToProtocol2();
              if (v102)
              {
                v103 = v99 == 0;
              }

              else
              {
                v103 = 1;
              }

              if (!v103)
              {
                v144 = 0;
                sub_19746C600(v99, v142, v143, &v144, v10, v99, v102);
                sub_19744D0E0(v142, v143);

                swift_beginAccess();
                v104 = v144;
                if (v144)
                {
                  sub_1973FE5EC(&v148, &qword_1EAF2AF20, &unk_19752F320);
                  return v104;
                }

                v145 = v148;
                v146 = v149;
LABEL_111:
                swift_dynamicCast();
                return v150;
              }

              *&v145 = 0;
              *(&v145 + 1) = 0xE000000000000000;
              sub_1975221EC();
              MEMORY[0x19A8DFF80](0xD000000000000014, 0x8000000197524210);
              sub_197413B20(&v148, &v145);
              v138 = sub_1975217CC();
              MEMORY[0x19A8DFF80](v138);

              MEMORY[0x19A8DFF80](0xD000000000000022, 0x8000000197524230);
              MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x800000019752B3A0);
              while (1)
              {
LABEL_152:
                sub_1975223EC();
                __break(1u);
LABEL_153:
                sub_1973FE5EC(&v145, &qword_1EAF2AF20, &unk_19752F320);
LABEL_154:
                *&v145 = 0;
                *(&v145 + 1) = 0xE000000000000000;
                sub_1975221EC();

                sub_197413B20(&v148, &v145);
                v137 = sub_1975217CC();
                MEMORY[0x19A8DFF80](v137);

                MEMORY[0x19A8DFF80](0xD000000000000012, 0x80000001975241F0);
                MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x800000019752B3A0);
              }
            }
          }
        }
      }

      v148 = 0u;
      v149 = 0u;
      goto LABEL_89;
    }

    swift_beginAccess();
    v71 = v25[3];
    if (*(v71 + 16))
    {

      v72 = sub_197403C30(a4, a5);
      if (v73)
      {
        v74 = *(*(v71 + 56) + 8 * v72);

        if (*(v74 + 16))
        {
          sub_1973F4028(v140, *(&v140 + 1));
          if (v75)
          {

            v76 = sub_1975215EC();
            swift_beginAccess();
            if (*(v141[12] + 16))
            {
              v77 = a5;
              sub_1973F4028(v140, *(&v140 + 1));
              if (v78)
              {
                swift_endAccess();
                type metadata accessor for Schema.CompositeAttribute();
                v79 = swift_dynamicCastClass();
                if (v79)
                {
                  v80 = v79;

                  v81 = sub_19746C608(v76, v80);
                  *&v145 = v10;
                  v82 = swift_conformsToProtocol2();
                  v83 = v10;
                  if (v82)
                  {
                    v83 = v10;
                    if (v10)
                    {
                      v84 = v82;
                      v83 = v10;
                      do
                      {
                        sub_1973F732C(v83, &v145, v83, v84);
                        v83 = v145;
                        v84 = swift_conformsToProtocol2();
                        if (v84)
                        {
                          v85 = v83 == 0;
                        }

                        else
                        {
                          v85 = 1;
                        }
                      }

                      while (!v85);
                    }
                  }

                  v86 = dynamic_cast_existential_2_conditional(v83, v83, MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
                  if (v86)
                  {
                    v88 = MEMORY[0x1EEE9AC00](v86, v87);
                    sub_19746CA90(v88, v81, v80, v10, v88, v89);
                    if (swift_dynamicCast())
                    {

                      return v145;
                    }

                    *&v145 = 0;
                    *(&v145 + 1) = 0xE000000000000000;
                    sub_1975221EC();

                    *&v145 = 0xD000000000000020;
                    *(&v145 + 1) = 0x80000001975241A0;
                    v130 = sub_197522B8C();
                    MEMORY[0x19A8DFF80](v130);

                    MEMORY[0x19A8DFF80](0x206D6F726620, 0xE600000000000000);
                    v131 = [v81 description];
                    v132 = sub_1975217BC();
                    v134 = v133;

                    MEMORY[0x19A8DFF80](v132, v134);
                  }

                  goto LABEL_152;
                }

LABEL_144:
                *&v145 = 0;
                *(&v145 + 1) = 0xE000000000000000;
                sub_1975221EC();
                MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197524130);
                BYTE8(v147) = v77;
                sub_19752235C();
                MEMORY[0x19A8DFF80](0x2074756220, 0xE500000000000000);
                MEMORY[0x19A8DFF80](v140, *(&v140 + 1));
                MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524150);
                *&v147 = v141;
                type metadata accessor for Schema.Entity();
                sub_19752235C();
                goto LABEL_152;
              }
            }

            else
            {
              v77 = a5;
            }

            swift_endAccess();
            goto LABEL_144;
          }
        }
      }
    }

    *&v145 = 0;
    *(&v145 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000003CLL, 0x80000001975240F0);
    if (a5)
    {
      if (a5 == 1)
      {
        v122 = *(a4 + 72);
        v124 = *(a4 + 80);
      }

      else
      {
        v122 = sub_19750A588();
        v124 = v123;
      }
    }

    else
    {
      v135 = [a4 entityName];
      v122 = sub_1975217BC();
      v124 = v136;
    }

    MEMORY[0x19A8DFF80](v122, v124);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v140, *(&v140 + 1));
    MEMORY[0x19A8DFF80](0x20726F662029, 0xE600000000000000);
    *&v147 = a4;
    BYTE8(v147) = a5;
    sub_19752235C();
    goto LABEL_152;
  }

  v139 = a5;
  swift_beginAccess();
  v38 = v141[12];
  if (!*(v38 + 16) || (v39 = sub_1973F4028(v140, *(&v140 + 1)), (v40 & 1) == 0))
  {
    swift_endAccess();
    *&v148 = 0;
    *(&v148 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001ALL, 0x8000000197523F10);
    MEMORY[0x19A8DFF80](v140, *(&v140 + 1));
    MEMORY[0x19A8DFF80](544108320, 0xE400000000000000);
    BYTE8(v145) = a5;
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD000000000000035, 0x8000000197524010);
    sub_19752235C();
    MEMORY[0x19A8DFF80](10, 0xE100000000000000);
    *&v145 = v141;
    type metadata accessor for Schema.Entity();
    sub_19752235C();
    goto LABEL_152;
  }

  v41 = *(*(v38 + 56) + 8 * v39);
  swift_endAccess();
  *&v148 = v10;
  v42 = swift_conformsToProtocol2();
  v43 = v10;
  if (v42)
  {
    v43 = v10;
    if (v10)
    {
      v44 = v42;
      v43 = v10;
      do
      {
        sub_1973F732C(v43, &v148, v43, v44);
        v43 = v148;
        v44 = swift_conformsToProtocol2();
        if (v44)
        {
          v45 = v43 == 0;
        }

        else
        {
          v45 = 1;
        }
      }

      while (!v45);
    }
  }

  if ((*(v41 + 120) & 0x40) != 0)
  {
    swift_beginAccess();
    v91 = v25[2];
    v92 = *(v91 + 16);

    if (v92)
    {

      v93 = sub_197403C30(a4, v139);
      if (v94)
      {
        v95 = *(*(v91 + 56) + 8 * v93);

        if (*(v95 + 16))
        {
          v96 = sub_1973F4028(v140, *(&v140 + 1));
          if (v97)
          {
            sub_197404860(*(v95 + 56) + 32 * v96, &v148);

            sub_1974028B8(&v148, &v145);
            goto LABEL_111;
          }
        }
      }
    }

    goto LABEL_141;
  }

  v46 = swift_conformsToProtocol2();
  if (!v46 || !v43)
  {
    *&v148 = 0;
    *(&v148 + 1) = 0xE000000000000000;

    sub_1975221EC();
    v145 = v148;
    MEMORY[0x19A8DFF80](0xD00000000000002FLL, 0x8000000197524050);
    swift_beginAccess();
    v126 = v141[2];
    v125 = v141[3];

    MEMORY[0x19A8DFF80](v126, v125);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v140, *(&v140 + 1));
    MEMORY[0x19A8DFF80](544175136, 0xE400000000000000);
    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x800000019752B3A0);
    goto LABEL_152;
  }

  v47 = v46;
  swift_beginAccess();
  v48 = v25[2];
  v49 = *(v48 + 16);

  if (!v49)
  {
    goto LABEL_141;
  }

  v50 = v47;

  v51 = sub_197403C30(a4, v139);
  if ((v52 & 1) == 0 || (v53 = *(*(v48 + 56) + 8 * v51), , , !*(v53 + 16)) || (v54 = sub_1973F4028(v140, *(&v140 + 1)), (v55 & 1) == 0))
  {

LABEL_141:
    *&v148 = 0;
    *(&v148 + 1) = 0xE000000000000000;
    sub_1975221EC();
    v145 = v148;
    MEMORY[0x19A8DFF80](0xD00000000000001FLL, 0x8000000197524080);
    swift_beginAccess();
    v128 = v141[2];
    v127 = v141[3];

    MEMORY[0x19A8DFF80](v128, v127);

    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](v140, *(&v140 + 1));
    MEMORY[0x19A8DFF80](0x20726F662029, 0xE600000000000000);
    sub_19752235C();
    MEMORY[0x19A8DFF80](0xD00000000000001DLL, 0x80000001975240A0);
    sub_19752135C();
    sub_19751E7F8(&qword_1EAF2AF28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v129 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v129);

    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_19752235C();
    goto LABEL_152;
  }

  sub_197404860(*(v53 + 56) + 32 * v54, &v148);

  sub_197404860(&v148, &v145);
  if (!swift_dynamicCast())
  {
    sub_197404860(&v148, &v145);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1Tm_7(&v148);

LABEL_91:

      return v142;
    }

    *&v145 = 0;
    *(&v145 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000026, 0x80000001975240C0);
    MEMORY[0x19A8DFF80](1635017028, 0xE400000000000000);
    MEMORY[0x19A8DFF80](544370464, 0xE400000000000000);
    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x800000019752B3A0);
    MEMORY[0x19A8DFF80](8250, 0xE200000000000000);
    sub_19752235C();
    goto LABEL_152;
  }

  v144 = 0;
  sub_19746CD08(v43, v142, v143, &v144, v10, v43, v50);
  sub_19744D0E0(v142, v143);

  swift_beginAccess();
  v56 = v144;
  if (!v144)
  {
    sub_1974028B8(&v148, &v145);
    goto LABEL_111;
  }

  __swift_destroy_boxed_opaque_existential_1Tm_7(&v148);
  return v56;
}

uint64_t sub_197452724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a2 + 8);
  v11 = *a2;
  LOBYTE(v12) = v7;
  v11 = sub_1974309B4(&v11);
  v12 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B168, &unk_19752E980);
  swift_dynamicCast();
  return v10;
}

uint64_t sub_19745279C()
{
  type metadata accessor for SwiftDataGlobals();
  v0 = swift_allocObject();
  result = sub_1974527FC();
  qword_1ED7CE5B8 = v0;
  return result;
}

uint64_t sub_1974527FC()
{
  *(v0 + 16) = 0;
  v1 = objc_opt_self();
  v2 = [v1 processInfo];
  v3 = [v2 processName];

  v4 = sub_1975217BC();
  v6 = v5;

  if (v4 == 0x777777617244 && v6 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_19752282C();
  }

  *(v0 + 16) = v8 & 1;
  v9 = [v1 processInfo];
  v10 = [v9 processName];

  v11 = sub_1975217BC();
  v13 = v12;

  if (v11 == 0x6473706974 && v13 == 0xE500000000000000)
  {

    v14 = 1;
  }

  else
  {
    v14 = sub_19752282C();
  }

  *(v0 + 17) = v14 & 1;
  return v0;
}

uint64_t sub_197452990()
{
  result = sub_19752178C();
  qword_1ED7C8628 = result;
  return result;
}