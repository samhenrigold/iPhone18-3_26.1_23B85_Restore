unint64_t sub_18E6BA350()
{
  result = qword_1EAC8E260[0];
  if (!qword_1EAC8E260[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EAC8E260);
  }

  return result;
}

uint64_t GestureComponentController.traits.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*v1 + 216);
  if (!*(v1 + v3))
  {
    (*(*(*v1 + 184) + 32))(&v5, *(*v1 + 176));
    *(v1 + v3) = v5;
  }

  *a1 = result;
  return result;
}

uint64_t GestureComponentController.timeSource.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(*v1 + 200));
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  a1[3] = ObjectType;
  a1[4] = v7;
  *a1 = v4;

  return swift_unknownObjectRetain();
}

uint64_t GestureComponentController.handleEvents<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18E6BA6C0(a2, a2, a3, a4);
  (*(*v8 + 88))(a1, a2, a3);
  v9 = v4 + *(*v4 + 224);
  if (*(v9 + 16) == 1)
  {
    v10 = *(v4 + *(*v4 + 200) + 8);
    ObjectType = swift_getObjectType();
    *v9 = (*(*(v10 + 8) + 8))(ObjectType);
    *(v9 + 8) = v12;
    *(v9 + 16) = 0;
  }

  v13 = sub_18E6BA798(0, a2, a2, a3);
  (*(*v8 + 96))(v13);
}

void *sub_18E6BA6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v4 + 208);
  v8 = *(v4 + v7);
  if (*(v8 + 16) && (v9 = a3, v10 = sub_18E6EB450(a2), a3 = v9, (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v10);
  }

  else
  {
    type metadata accessor for EventStore(0, a2, a3, a4);
    v12 = sub_18E6A4200();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v5 + v7);
    *(v5 + v7) = 0x8000000000000000;
    sub_18E6B7274(v12, a2, isUniquelyReferenced_nonNull_native);
    *(v5 + v7) = v15;
  }

  return v12;
}

uint64_t sub_18E6BA798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a2;
  v65 = a3;
  v67 = a1;
  v7 = *v4;
  v8 = v7[23];
  v56 = v7[22];
  v57 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for GestureOutput(255, AssociatedTypeWitness, v10, v11);
  v52 = sub_18E72B438();
  v51 = *(v52 - 8);
  v13 = MEMORY[0x1EEE9AC00](v52);
  v15 = &v50 - v14;
  v59 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v53 = &v50 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  v58 = v12;
  v17 = sub_18E72B928();
  v60 = *(v17 - 8);
  v61 = v17;
  result = MEMORY[0x1EEE9AC00](v17);
  v20 = &v50 - v19;
  v21 = v5 + v7[28];
  if (v21[16])
  {
    __break(1u);
    return result;
  }

  v23 = *v21;
  v22 = *(v21 + 1);
  v24 = (v5 + v7[25]);
  v25 = *v24;
  v26 = v24[1];
  ObjectType = swift_getObjectType();
  v66[0] = v25;
  v28 = (*(*(v26 + 8) + 8))(ObjectType);
  v30 = v29;
  v50 = a4;
  v32 = sub_18E6BA6C0(v64, v65, a4, v31);
  v33 = sub_18E6B9EE4();
  v66[0] = v23;
  v66[1] = v22;
  v66[2] = v28;
  v66[3] = v30;
  v66[4] = v67;
  v66[5] = v33;
  v54 = v32;
  v55 = v33;
  v66[6] = v32;

  v35 = v56;
  v34 = v57;
  sub_18E722318(v66, v56, v57, v20);
  v36 = *(v5 + *(*v5 + 240));
  if (v36)
  {

    sub_18E6F71BC();
    sub_18E6F7398();
    sub_18E688410(v36);
  }

  v37 = v61;
  v63 = v20;
  sub_18E6FBFA4(v61, v15);
  v38 = v58;
  v39 = v59;
  v40 = (*(v59 + 48))(v15, 1, v58);
  v41 = v62;
  if (v40 == 1)
  {
    v42 = v34;
    (*(v51 + 8))(v15, v52);
  }

  else
  {
    v43 = v53;
    (*(v39 + 32))();
    sub_18E6BAF04(v43, v64, v65, v50);
    if (v41)
    {

      (*(v39 + 8))(v43, v38);
      return (*(v60 + 8))(v63, v37);
    }

    v42 = v34;
    (*(v39 + 8))(v43, v38);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v45 = v63;
    sub_18E6BBDE8(Strong, v63, v35, v42);
    if (v41)
    {
      (*(v60 + 8))(v45, v37);
    }
  }

  v46 = v5 + *(*v5 + 232);
  v47 = *v46;
  if (*v46)
  {
    v48 = *(v46 + 1);

    v49 = v63;
    v47(v63);
    sub_18E6826D0(v47, v48);

    return (*(v60 + 8))(v49, v37);
  }

  (*(v60 + 8))(v63, v37);
}

Swift::Void __swiftcall GestureComponentController.reset()()
{
  v1 = *v0;
  sub_18E6B9F78();
  sub_18E7225D0();

  v2 = *(v0 + *(*v0 + 208));
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(**(*(v2 + 56) + ((v8 << 9) | (8 * v9))) + 104);

    v10(v11);
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      (*(*(v1 + 184) + 24))(*(v1 + 176));
      *(v0 + *(*v0 + 216)) = 0;

      v12 = v0 + *(*v0 + 224);
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 1;
      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_18E6BAF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*v4 + 184);
  v9 = *(*v4 + 176);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v11, v12);
  result = sub_18E6FED28(v13, &v26);
  v15 = v26;
  if (v26)
  {
    v24 = a3;
    v25 = a4;
    v29 = a2;
    v17 = *(&v26 + 1);
    v16 = v27;
    v18 = v28;
    if (*(v26 + 16))
    {
      sub_18E6B9F78();
      v19 = swift_allocObject();
      swift_weakInit();
      v23 = v16;
      v20 = v18;
      v21 = swift_allocObject();
      v21[2] = v9;
      v21[3] = v24;
      v21[4] = v8;
      v21[5] = v25;
      v22 = v29;
      v21[6] = v19;
      v21[7] = v22;

      sub_18E722788(v15, sub_18E6BC224, v21, 0, 0);

      v18 = v20;
      v16 = v23;
    }

    if (*(v17 + 16))
    {
      sub_18E6B9F78();
      sub_18E722A20(v17);
      sub_18E6AF804(v15, v17, v16, v18);
    }

    else
    {
      return sub_18E6AF804(v15, v17, v16, v18);
    }
  }

  return result;
}

uint64_t sub_18E6BB0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_18E6BB17C(a1, a3, a5, a7);
  }

  return result;
}

uint64_t sub_18E6BB17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18E72AE18();
  MEMORY[0x1EEE9AC00](v8);
  return sub_18E6BA798(a1, a2, a3, a4);
}

uint64_t sub_18E6BB390()
{
  (*(*(*(*v0 + 176) - 8) + 8))(v0 + *(*v0 + 192));
  swift_unknownObjectRelease();

  sub_18E6826D0(*(v0 + *(*v0 + 232)), *(v0 + *(*v0 + 232) + 8));
  sub_18E688410(*(v0 + *(*v0 + 240)));
}

uint64_t *GestureComponentController.deinit()
{
  v1 = *v0;
  swift_weakDestroy();
  (*(*(*(v1 + 176) - 8) + 8))(v0 + *(*v0 + 192));
  swift_unknownObjectRelease();

  sub_18E6826D0(*(v0 + *(*v0 + 232)), *(v0 + *(*v0 + 232) + 8));
  sub_18E688410(*(v0 + *(*v0 + 240)));

  return v0;
}

uint64_t GestureComponentController.__deallocating_deinit()
{
  GestureComponentController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_18E6BB660(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  if (swift_weakLoadStrong())
  {
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_6;
    }

    (*(*v1 + 152))();
  }

LABEL_6:
}

uint64_t (*sub_18E6BB6F8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return sub_18E6BB744;
}

uint64_t sub_18E6BB744(uint64_t *a1, char a2)
{
  v3 = a1[1];
  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  v5 = swift_weakLoadStrong();
  if (a2)
  {
    if (!v5)
    {
      if (!Strong)
      {
        goto LABEL_8;
      }

      v6 = *(*v3 + 152);

      v6(v7);
    }

    goto LABEL_6;
  }

  if (v5)
  {
LABEL_6:

LABEL_7:

    goto LABEL_8;
  }

  if (Strong)
  {
    (*(*v3 + 152))();
    goto LABEL_7;
  }

LABEL_8:
}

uint64_t sub_18E6BB890(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  result = swift_weakLoadStrong();
  if (!result)
  {
    if (!Strong)
    {
      return result;
    }

    v5 = *(*v2 + 152);

    v5(v6);
  }
}

uint64_t AnyGestureComponentController.__deallocating_deinit()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_18E6BBB3C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_18E6BBDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_18E72B438();
  v28 = *(v6 - 8);
  v29 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - v10;
  v14 = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EAC8E2E8, &qword_18E72DA00);
  v18 = sub_18E72B928();
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v27 - v19);
  (*(v21 + 16))(&v27 - v19, v31, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v20;
    v32 = *v20 | 0x8000000000000000;
    v23 = *(*a1 + 344);
    v24 = v22;
    v23(&v32, 0);
    sub_18E683B98(v32);
  }

  else
  {
    (*(v15 + 32))(v17, v20, v14);
    GestureOutput.value.getter(v14, v9);
    v25 = v30;
    if ((*(v30 + 48))(v9, 1, AssociatedTypeWitness) == 1)
    {
      (*(v15 + 8))(v17, v14);
      (*(v28 + 8))(v9, v29);
    }

    else
    {
      (*(v25 + 32))(v11, v9, AssociatedTypeWitness);
      v26 = GestureOutput.isFinal.getter(v14);
      (*(*a1 + 328))(v11, v26 & 1, AssociatedTypeWitness);
      (*(v25 + 8))(v11, AssociatedTypeWitness);
      (*(v15 + 8))(v17, v14);
    }
  }
}

uint64_t GFGestureRelationType.description.getter(uint64_t a1, __n128 a2)
{
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return 0xD000000000000017;
      case 4:
        return 0x7365726975716572;
      case 5:
        return 0x6465726975716572;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        return 0x756C6378456E6163;
      case 1:
        return 0x63784565426E6163;
      case 2:
        return 0xD000000000000010;
    }
  }

  v11 = v3;
  v12 = v2;
  v13 = v4;
  v14 = v5;
  sub_18E72B5C8();

  strcpy(v10, "Unknown type: ");
  v10[15] = -18;
  v9 = GFGestureRelationType.description.getter(a1, v8);
  MEMORY[0x193AD15C0](v9);

  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

uint64_t GFGestureRelationRole.description.getter(uint64_t a1, __n128 a2)
{
  if (!a1)
  {
    return 0x72616C75676572;
  }

  if (a1 == 1)
  {
    return 0x676E696B636F6C62;
  }

  v11 = v3;
  v12 = v2;
  v13 = v4;
  v14 = v5;
  sub_18E72B5C8();

  strcpy(v10, "Unknown role: ");
  v10[15] = -18;
  v9 = GFGestureRelationRole.description.getter(a1, v8);
  MEMORY[0x193AD15C0](v9);

  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

uint64_t GestureUpdateDriverToken.hashValue.getter(uint64_t a1)
{
  sub_18E72B888();
  sub_18E72B8C8();
  return sub_18E72B8E8();
}

uint64_t sub_18E6BC54C()
{
  sub_18E72B888();
  sub_18E72B8C8();
  return sub_18E72B8E8();
}

uint64_t sub_18E6BC5C0(uint64_t a1)
{
  sub_18E72B888();
  sub_18E72B8C8();
  return sub_18E72B8E8();
}

uint64_t sub_18E6BC690()
{

  sub_18E695864(*(v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_18E6BC6D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18E72B4A8() + 1) & ~v5;
    do
    {
      sub_18E72B888();
      sub_18E72B8C8();
      result = sub_18E72B8E8();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = v10 + 56 * v3;
        v12 = (v10 + 56 * v6);
        if (v3 != v6 || v11 >= v12 + 56)
        {
          v13 = *v12;
          v14 = v12[1];
          v15 = v12[2];
          *(v11 + 48) = *(v12 + 6);
          *(v11 + 16) = v14;
          *(v11 + 32) = v15;
          *v11 = v13;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_18E6BC884(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_18E72B4A8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 2 * v6);
      result = MEMORY[0x193AD1DC0](*(a2 + 40), *v10, 2);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 2 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
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

uint64_t sub_18E6BCA38()
{
  sub_18E72B888();
  MEMORY[0x193AD1DF0](0);
  return sub_18E72B8E8();
}

uint64_t sub_18E6BCAA4(uint64_t a1)
{
  sub_18E72B888();
  MEMORY[0x193AD1DF0](0);
  return sub_18E72B8E8();
}

uint64_t sub_18E6BCAF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6BCB4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6BCBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = sub_18E72B438();
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v40 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v25 = &v40 - v24;
  if (!*(a1 + 32))
  {
    v43 = v23;
    v44 = v19;
    v45 = v22;
    v27 = *(a1 + 40);
    v26 = *(a1 + 48);
    v28 = *(a1 + 16);
    v46[0] = *a1;
    v46[1] = v28;
    v47 = 0;
    v48 = v27;
    v49 = v26;
    v42 = *(a2 + 24);
    if (!sub_18E6AB27C())
    {
      v35 = MEMORY[0x1E69E7CC0];
      *a3 = 0;
      *(a3 + 8) = v35;
      *(a3 + 16) = v35;
      *(a3 + 24) = xmmword_18E72DB60;
LABEL_13:
      type metadata accessor for GestureOutput(0, v8, v29, v30);
      return swift_storeEnumTagMultiPayload();
    }

    if ((*(v4 + 8) & 1) == 0)
    {
      *&v46[0] = *v4;
      v41 = v4;
      sub_18E6A38F4(v46);
      v36 = v45;
      if ((*(v45 + 48))(v15, 1, v8) != 1)
      {
        (*(v36 + 32))(v25, v15, v8);
        sub_18E6BCFF8(v25, v8, v42, a3);
        (*(v36 + 8))(v25, v8);
      }

      (*(v43 + 8))(v15, v44);
      if (*(v41 + 8) != 1)
      {
        goto LABEL_11;
      }
    }

    sub_18E6A3554(v12);
    v31 = v45;
    if ((*(v45 + 48))(v12, 1, v8) == 1)
    {
      (*(v43 + 8))(v12, v44);
      if (*(v4 + 8))
      {

        *a3 = 0;
        v32 = MEMORY[0x1E69E7CC0];
        v33 = 0x800000018E73A450;
        *(a3 + 8) = MEMORY[0x1E69E7CC0];
        *(a3 + 16) = v32;
        v34 = 0xD000000000000011;
LABEL_12:
        *(a3 + 24) = v34;
        *(a3 + 32) = v33;
        goto LABEL_13;
      }

LABEL_11:

      v33 = 0x800000018E73A470;
      *a3 = 0;
      v37 = MEMORY[0x1E69E7CC0];
      *(a3 + 8) = MEMORY[0x1E69E7CC0];
      *(a3 + 16) = v37;
      v34 = 0xD000000000000017;
      goto LABEL_12;
    }

    (*(v31 + 32))(v18, v12, v8);
    v39 = v42;
    (*(v42 + 16))(v46, v8, v42);
    *v4 = *&v46[0];
    *(v4 + 8) = 0;
    sub_18E6BCFF8(v18, v8, v39, a3);
    (*(v31 + 8))(v18, v8);
  }

  *a3 = 2;
  type metadata accessor for GestureOutput(0, v8, v20, v21);
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18E6BCFF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(a3 + 24))(&v13, a2, a3);
  if (v13 <= 2u)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8DDE8, &unk_18E72CEA0);
    v9 = (a4 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(a2 - 8) + 16))(a4, a1, a2);
    type metadata accessor for GestureOutput(0, a2, v10, v11);
    *v9 = 0u;
    v9[1] = 0u;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    type metadata accessor for EventSource.Failure(0, a2, a3, v8);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }
}

void sub_18E6BD1F8(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t sub_18E6BD20C(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_18E6BD220(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6BD2B0(unsigned int *a1, int a2)
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

_WORD *sub_18E6BD300(_WORD *result, int a2, int a3)
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

uint64_t sub_18E6BD394(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E6BD41C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6BD4B8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    *((v10 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v11 + 23) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

uint64_t sub_18E6BD5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6BD650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  return a1;
}

uint64_t sub_18E6BD6F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  *((v7 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_18E6BD780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v9[1] = v10[1];
  return a1;
}

uint64_t sub_18E6BD824(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_18E6BD930(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

double sub_18E6BDAD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v8 = v7;
  v32 = a4;
  v33 = a7;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DurationGate(0, v17, v18, v16);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v31 - v20;
  (*(v13 + 16))(v15, v8, a5);
  (*(v13 + 32))(v21, v15, a5);
  v22 = &v21[*(v19 + 36)];
  *v22 = a1;
  *(v22 + 1) = a2;
  v23 = &v21[*(v19 + 40)];
  v24 = v32;
  *v23 = a3;
  *(v23 + 1) = v24;
  WitnessTable = swift_getWitnessTable();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for ExpirationRecord(255, AssociatedTypeWitness, v27, v28);
  v29 = swift_getWitnessTable();
  sub_18E6AE000(v34);
  *&result = sub_18E6AE018(v21, v34, v19, WitnessTable, v29, v33).n128_u64[0];
  return result;
}

uint64_t sub_18E6BDCE4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a2;
  v18 = a1;
  v19 = a5;
  v5 = *(a4 + 16);
  v17 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v7, v8);
  v20 = *(v9 - 8);
  v21 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();
  if (_s8Gestures9TimestampV1loiySbAC_ACtFZ_0())
  {
    if (v23)
    {
      type metadata accessor for DurationGate.Failure(0, v5, v17, v12);
      swift_getWitnessTable();
      swift_allocError();
      return swift_willThrow();
    }

    *v11 = 1;
    v15 = MEMORY[0x1E69E7CC0];
    *(v11 + 1) = MEMORY[0x1E69E7CC0];
    *(v11 + 2) = v15;
    *(v11 + 3) = 0xD000000000000018;
    *(v11 + 4) = 0x800000018E73A4B0;
    v16 = v21;
    swift_storeEnumTagMultiPayload();
    sub_18E6BDF7C(v19);
    v14 = v16;
  }

  else
  {
    memset(v22, 0, sizeof(v22));
    sub_18E6FEC1C(v18, v22, AssociatedTypeWitness, v11);
    sub_18E6BDF7C(v19);
    v14 = v21;
  }

  return (*(v20 + 8))(v11, v14);
}

uint64_t sub_18E6BDF7C@<X0>(uint64_t a6@<X8>)
{
  sub_18E72B9B8();
  if (_s8Gestures9TimestampV1loiySbAC_ACtFZ_0() & 1) != 0 && (sub_18E72B958(), (_s8Gestures9TimestampV1loiySbAC_ACtFZ_0()))
  {
    _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v8, v9);
    return sub_18E6AF02C();
  }

  else
  {
    v11 = swift_getAssociatedTypeWitness();
    v14 = type metadata accessor for GestureOutput(0, v11, v12, v13);
    return sub_18E6AF478(v14, a6);
  }
}

uint64_t sub_18E6BE0C0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6BE0FC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6BE16C()
{
  v0 = sub_18E72AE18();
  __swift_allocate_value_buffer(v0, qword_1EAC99270);
  __swift_project_value_buffer(v0, qword_1EAC99270);
  return sub_18E72AE08();
}

uint64_t sub_18E6BE1E0()
{
  v0 = sub_18E72AE18();
  __swift_allocate_value_buffer(v0, qword_1EAC99288);
  __swift_project_value_buffer(v0, qword_1EAC99288);
  return sub_18E72AE08();
}

uint64_t sub_18E6BE2B8(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_18E72AE18();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_18E72AE28();
}

uint64_t sub_18E6BE368()
{
  if (qword_1ED6F7F80 != -1)
  {
    result = swift_once();
  }

  qword_1ED6F7F88[0] = 0;
  return result;
}

uint64_t _s8Gestures19GestureRelationRoleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

uint64_t sub_18E6BE414(uint64_t a1)
{
  v2 = *v1;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v2);
  return sub_18E72B8E8();
}

unint64_t *sub_18E6BE458@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

void *sub_18E6BE488@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result > 2uLL)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GestureOutputEmptyReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for GestureOutputEmptyReason(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18E6BE608()
{
  result = qword_1EAC8E5A0;
  if (!qword_1EAC8E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E5A0);
  }

  return result;
}

uint64_t sub_18E6BE65C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v16 = *(v15 + 8);
  v16(v17, v18, v15, 1.0 - a2);
  v16(a1, a4, a5, a2);
  (*(a5 + 16))(v14, v12, a4, a5);
  v19 = *(v9 + 8);
  v19(v12, a4);
  return (v19)(v14, a4);
}

uint64_t sub_18E6BE7E4(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 32))(v11, v4, a2);
  sub_18E6BE65C(a1, a4, v11, a2, a3);
  return (*(v9 + 8))(v11, a2);
}

uint64_t sub_18E6BE8EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = type metadata accessor for AnyGestureNode();
  v4 = sub_18E68D978(&qword_1ED6F7F48, &protocol conformance descriptor for AnyGestureNode);
  result = MEMORY[0x193AD1810](v2, v3, v4);
  v6 = 0;
  v15 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  for (i = (v7 + 63) >> 6; v9; result = )
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(a1 + 48) + ((v11 << 9) | (8 * v12)));

    sub_18E6880B0(&v14, v13);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v15;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6BEA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a2;
  if (a1 == a2)
  {
    return 0;
  }

  if (!*(a3 + 16))
  {
    return 0;
  }

  v8 = sub_18E6879CC(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = *(*(a3 + 56) + 8 * v8);
  if ((v10 & 0xC000000000000001) != 0)
  {

    v11 = sub_18E72B518();
  }

  else
  {
    v11 = *(v10 + 16);
  }

  if (v11 <= 0)
  {
    return 0;
  }

  if (!*(a4 + 16))
  {
    return 0;
  }

  v12 = sub_18E6879CC(a2);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = *(*(a4 + 56) + 8 * v12);
  if ((v14 & 0xC000000000000001) != 0)
  {

    v15 = sub_18E72B518();
  }

  else
  {
    v15 = *(v14 + 16);
  }

  if (v15 < 1)
  {
    return 0;
  }

  v20 = MEMORY[0x1E69E7CD0];
  v19 = 0;
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18[2] = &v21;
  sub_18E6BED5C(v16, &v20, 1u, &v19, sub_18E6C02D4, v18, a3, a4);

  return v19;
}

BOOL sub_18E6BEBB8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 == a2)
  {
    return 1;
  }

  v3 = &v8;
  v4 = (*(*v2 + 304))(&v8);
  v5 = v9;
  if (v9 == 255)
  {
    v3 = &v10;
    (*(*v2 + 296))(&v10, v4);
    v5 = v11;
  }

  if (v5 <= 2)
  {
    return v5 >= 2;
  }

  v6 = *v3;
  if (v5 == 3)
  {
    sub_18E69E818(v6, 3);
  }

  else if (v6)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_18E6BEC98()
{

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t sub_18E6BECE0()
{
  v1 = *(*v0 + 16);

  v2 = sub_18E6BF464(0xD000000000000014, 0x800000018E73A1E0, v1);

  return v2;
}

uint64_t sub_18E6BED5C(uint64_t a1, uint64_t *a2, unsigned int a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a1;
  result = sub_18E68CE2C(a1, *a2);
  if ((result & 1) == 0)
  {

    sub_18E6880B0(v32, a1);

    result = a5(&v33, a4);
    if (result)
    {
      v28 = a6;
      v14 = sub_18E68D214(a1, a3, a7, a8);
      v15 = v14;
      v27 = a5;
      if (v14 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18E72B518())
      {
        v17 = 0;
        while ((v15 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x193AD1B60](v17, v15);
          v19 = __OFADD__(v17++, 1);
          if (v19)
          {
            goto LABEL_25;
          }

LABEL_14:
          if (v18 != a1)
          {
            v20 = *a2;
            if ((*a2 & 0xC000000000000001) != 0)
            {

              v21 = sub_18E72B558();

              if ((v21 & 1) == 0)
              {
                goto LABEL_7;
              }
            }

            else
            {
              if (!*(v20 + 16))
              {
                goto LABEL_7;
              }

              sub_18E72B888();
              v22 = sub_18E72AFA8();
              MEMORY[0x193AD1DF0](v22);
              v23 = sub_18E72B8E8();
              v24 = -1 << *(v20 + 32);
              v25 = v23 & ~v24;
              if (((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
              {
                goto LABEL_7;
              }

              v26 = ~v24;
              while (*(*(v20 + 48) + 8 * v25) != a1)
              {
                v25 = (v25 + 1) & v26;
                if (((*(v20 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
                {
                  goto LABEL_7;
                }
              }
            }

            sub_18E6BED5C(v18, a2, a3, a4, v27, v28, a7, a8);
          }

LABEL_7:

          if (v17 == i)
          {
            goto LABEL_28;
          }
        }

        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v18 = *(v15 + 32 + 8 * v17);

        v19 = __OFADD__(v17++, 1);
        if (!v19)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

LABEL_28:
    }
  }

  return result;
}

void sub_18E6BEFDC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 16 * a3), 16 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5B8, &unk_18E731FB0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 17;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_18E6BF0AC(uint64_t a1)
{
  swift_bridgeObjectRetain_n();
  result = sub_18E6BE8EC(a1);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      v10 = sub_18E687AA8(v11);

      return v10;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      do
      {
LABEL_9:
        v6 &= v6 - 1;

        sub_18E68D3E0(v9);
      }

      while (v6);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_18E6BF1D4(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_18E72B518();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DA10, &qword_18E72C8D0);
      result = sub_18E72B5A8();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = sub_18E72B518();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = MEMORY[0x193AD1B60](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      sub_18E72B888();
      v10 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v10);
      result = sub_18E72B8E8();
      v11 = ~(-1 << *(v3 + 32));
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      v16 = *(v3 + 48);
      if ((v15 & v14) != 0)
      {
        while (*(v16 + 8 * v12) != v9)
        {
          v12 = (v12 + 1) & v11;
          v13 = v12 >> 6;
          v14 = *(v6 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_16;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return v3;
        }
      }

      else
      {
LABEL_16:
        *(v6 + 8 * v13) = v15 | v14;
        *(v16 + 8 * v12) = v9;
        v17 = *(v3 + 16);
        v8 = __OFADD__(v17, 1);
        v18 = v17 + 1;
        if (v8)
        {
          goto LABEL_29;
        }

        *(v3 + 16) = v18;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
    v19 = 0;
    v20 = v1 + 32;
    v21 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v19 != v21)
    {
      v22 = *(v20 + 8 * v19);
      sub_18E72B888();

      v23 = sub_18E72AFA8();
      MEMORY[0x193AD1DF0](v23);
      result = sub_18E72B8E8();
      v24 = ~(-1 << *(v3 + 32));
      v25 = result & v24;
      v26 = (result & v24) >> 6;
      v27 = *(v6 + 8 * v26);
      v28 = 1 << (result & v24);
      v29 = *(v3 + 48);
      if ((v28 & v27) != 0)
      {
        while (*(v29 + 8 * v25) != v22)
        {
          v25 = (v25 + 1) & v24;
          v26 = v25 >> 6;
          v27 = *(v6 + 8 * (v25 >> 6));
          v28 = 1 << v25;
          if (((1 << v25) & v27) == 0)
          {
            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_26:
        *(v6 + 8 * v26) = v28 | v27;
        *(v29 + 8 * v25) = v22;
        v30 = *(v3 + 16);
        v8 = __OFADD__(v30, 1);
        v31 = v30 + 1;
        if (v8)
        {
          goto LABEL_31;
        }

        *(v3 + 16) = v31;
      }

      if (++v19 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_18E6BF464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v63 = 0;
  v64 = 0xE000000000000000;
  v4 = sub_18E6BF0AC(a3);
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_18E72B518())
  {
    v7 = 0;
    v46 = v5 & 0xC000000000000001;
    v40 = v5 + 32;
    v41 = v5 & 0xFFFFFFFFFFFFFF8;
    v8 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0] >> 62;
    v43 = i;
    v44 = v5;
    v45 = v3;
    while (v46)
    {
      v51 = MEMORY[0x193AD1B60](v7, v5);
      v9 = __OFADD__(v7, 1);
      v10 = v7 + 1;
      if (v9)
      {
        goto LABEL_40;
      }

LABEL_11:
      if (*(v3 + 16) && (v11 = sub_18E6879CC(v51), (v12 & 1) != 0))
      {
        v13 = *(*(v3 + 56) + 8 * v11);

        if ((v13 & 0xC000000000000001) != 0)
        {
          goto LABEL_17;
        }
      }

      else if (v42 && sub_18E72B518())
      {
        v13 = sub_18E6BF1D4(v8);
        if ((v13 & 0xC000000000000001) != 0)
        {
LABEL_17:
          v14 = sub_18E72B518();
          if (v14)
          {
            goto LABEL_18;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E7CD0];
        if ((MEMORY[0x1E69E7CD0] & 0xC000000000000001) != 0)
        {
          goto LABEL_17;
        }
      }

      v14 = *(v13 + 16);
      if (v14)
      {
LABEL_18:
        if (v14 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DD08, &qword_18E72CD30);
          v8 = swift_allocObject();
          v15 = _swift_stdlib_malloc_size(v8);
          v16 = v15 - 32;
          if (v15 < 32)
          {
            v16 = v15 - 25;
          }

          *(v8 + 16) = v14;
          *(v8 + 24) = (2 * (v16 >> 3)) | 1;
        }

        v17 = sub_18E687B58(&v59, (v8 + 32), v14, v13);
        sub_18E687EE8(v59);
        if (v17 != v14)
        {
          goto LABEL_41;
        }

        v47 = v10;
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        goto LABEL_29;
      }

LABEL_28:

      v47 = v10;
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

LABEL_29:
      if ((v8 & 0x4000000000000000) == 0)
      {
        v50 = *(v8 + 16);
        if (!v50)
        {
          goto LABEL_4;
        }

        goto LABEL_31;
      }

LABEL_37:
      v50 = sub_18E72B518();
      if (!v50)
      {
        goto LABEL_4;
      }

LABEL_31:
      if (v50 < 1)
      {
        goto LABEL_42;
      }

      v18 = 0;
      v48 = v8 & 0xC000000000000001;
      v49 = v8;
      do
      {
        if (v48)
        {
          v19 = MEMORY[0x193AD1B60](v18, v8);
        }

        else
        {
          v19 = *(v8 + 8 * v18 + 32);
        }

        ++v18;
        v57 = 0x202020200ALL;
        v58 = 0xE500000000000000;
        v20 = type metadata accessor for AnyGestureNode();
        v61 = v20;
        v21 = sub_18E68D978(&qword_1EAC8E5A8, &protocol conformance descriptor for AnyGestureNode);
        v62 = v21;
        v59 = v51;
        v55 = 0;
        v56 = 0xE000000000000000;
        v22 = __swift_project_boxed_opaque_existential_1(&v59, v20);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v53 = AssociatedTypeWitness;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v54 = AssociatedConformanceWitness;
        *__swift_allocate_boxed_opaque_existential_0(v52) = *(*v22 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5B0, &unk_18E72E010);
        sub_18E72B6C8();
        __swift_destroy_boxed_opaque_existential_0(v52);
        v25 = v55;
        v26 = v56;
        __swift_destroy_boxed_opaque_existential_0(&v59);
        MEMORY[0x193AD15C0](v25, v26);

        MEMORY[0x193AD15C0](540945696, 0xE400000000000000);
        v61 = v20;
        v62 = v21;
        v59 = v19;
        v55 = 0;
        v56 = 0xE000000000000000;
        v27 = __swift_project_boxed_opaque_existential_1(&v59, v20);
        v53 = AssociatedTypeWitness;
        v54 = AssociatedConformanceWitness;
        *__swift_allocate_boxed_opaque_existential_0(v52) = *(*v27 + 16);

        sub_18E72B6C8();
        __swift_destroy_boxed_opaque_existential_0(v52);

        v28 = v55;
        v29 = v56;
        __swift_destroy_boxed_opaque_existential_0(&v59);
        MEMORY[0x193AD15C0](v28, v29);

        MEMORY[0x193AD15C0](59, 0xE100000000000000);
        MEMORY[0x193AD15C0](v57, v58);

        v8 = v49;
      }

      while (v50 != v18);
LABEL_4:

      v5 = v44;
      v7 = v47;
      v3 = v45;
      v8 = MEMORY[0x1E69E7CC0];
      if (v47 == v43)
      {

        v31 = v63;
        v30 = v64;
        goto LABEL_46;
      }
    }

    if (v7 >= *(v41 + 16))
    {
      goto LABEL_43;
    }

    v51 = *(v40 + 8 * v7);

    v9 = __OFADD__(v7, 1);
    v10 = v7 + 1;
    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v31 = 0;
  v30 = 0xE000000000000000;
LABEL_46:
  v59 = 0x2068706172676964;
  v60 = 0xE900000000000022;
  MEMORY[0x193AD15C0](a1, a2);
  MEMORY[0x193AD15C0](8069154, 0xE300000000000000);

  MEMORY[0x193AD15C0](v31, v30);

  v33 = v59;
  v32 = v60;
  v34 = sub_18E72B028();

  if (v34 <= 0)
  {
    v35 = 0;
  }

  else
  {
    v35 = 10;
  }

  if (v34 <= 0)
  {
    v36 = 0xE000000000000000;
  }

  else
  {
    v36 = 0xE100000000000000;
  }

  v59 = v33;
  v60 = v32;

  MEMORY[0x193AD15C0](v35, v36);

  MEMORY[0x193AD15C0](125, 0xE100000000000000);

  return v59;
}

uint64_t sub_18E6BFA68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_18E6AB9A0();
  result = MEMORY[0x193AD1810](v2, &type metadata for EventID, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_18E695BE4(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_18E6BFADC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = result;
  v63 = 0;
  v64 = 0xE000000000000000;
  if (a3 < 0)
  {
    goto LABEL_70;
  }

  v4 = a3;
  if (!a3)
  {
    goto LABEL_5;
  }

  v5 = sub_18E69FA38(a3, 0);
  result = sub_18E69FEB4(&v60, (v5 + 4), v4, 0, v4);
  if (result != v4)
  {
    __break(1u);
LABEL_5:
    v5 = MEMORY[0x1E69E7CC0];
  }

  v52 = v5[2];
  if (!v52)
  {

    v39 = 0;
    v40 = 0xE000000000000000;
LABEL_56:
    v60 = 0x2068706172676964;
    v61 = 0xE900000000000022;
    MEMORY[0x193AD15C0](v46, a2);
    MEMORY[0x193AD15C0](8069154, 0xE300000000000000);

    MEMORY[0x193AD15C0](v39, v40);

    v42 = v60;
    v41 = v61;
    v43 = sub_18E72B028();

    if (v43 <= 0)
    {
      v44 = 0;
    }

    else
    {
      v44 = 10;
    }

    if (v43 <= 0)
    {
      v45 = 0xE000000000000000;
    }

    else
    {
      v45 = 0xE100000000000000;
    }

    v60 = v42;
    v61 = v41;

    MEMORY[0x193AD15C0](v44, v45);

    MEMORY[0x193AD15C0](125, 0xE100000000000000);

    return v60;
  }

  v6 = 0;
  v51 = v5 + 4;
  v7 = v4 - 1;
  v48 = v4 - 1;
  v49 = v5;
  v50 = v4;
  while (v6 < v5[2])
  {
    v8 = v51[v6];
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5D0, &qword_18E72E030);
      v9 = swift_allocObject();
      result = _swift_stdlib_malloc_size(v9);
      v10 = 0;
      v11 = result - 32;
      if (result < 32)
      {
        v11 = result - 25;
      }

      v9[2] = v4;
      v9[3] = 2 * (v11 >> 3);
      while (1)
      {
        v9[v10 + 4] = v10;
        if (v7 == v10)
        {
          break;
        }

        if (__OFADD__(++v10, 1))
        {
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    v53 = v6;
    v12 = v9[2];
    if (v12)
    {
      v13 = 0;
      v14 = v8 * v4;
      v15 = (v8 * v4) >> 64 != (v8 * v4) >> 63;
      v16 = MEMORY[0x1E69E7CD0];
      do
      {
        v18 = v9[v13 + 4];
        if (v18 != v8)
        {
          if (v15)
          {
            goto LABEL_63;
          }

          v19 = v14 + v18;
          if (__OFADD__(v14, v18))
          {
            goto LABEL_64;
          }

          if (v19 >= 0)
          {
            v20 = v14 + v18;
          }

          else
          {
            v20 = v19 + 63;
          }

          if ((v19 - (v20 & 0xFFFFFFFFFFFFFFC0)) < 0)
          {
            goto LABEL_65;
          }

          if (v19 < -63)
          {
            goto LABEL_66;
          }

          if (v20 >> 6 >= *(a4 + 16))
          {
            goto LABEL_67;
          }

          if ((*(a4 + 32 + 8 * (v20 >> 6)) & (1 << (v19 - (v20 & 0xC0u)))) != 0)
          {
            result = sub_18E72B878();
            v21 = -1 << *(v16 + 32);
            v22 = result & ~v21;
            if ((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
            {
              v23 = ~v21;
              while (*(*(v16 + 48) + 8 * v22) != v18)
              {
                v22 = (v22 + 1) & v23;
                if (((*(v16 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
                {
                  goto LABEL_21;
                }
              }
            }

            else
            {
LABEL_21:
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v60 = v16;
              result = sub_18E6A0220(v18, v22, isUniquelyReferenced_nonNull_native);
              v16 = v60;
            }
          }
        }

        ++v13;
      }

      while (v13 != v12);

      v24 = *(v16 + 16);
      if (!v24)
      {
LABEL_44:

        v25 = MEMORY[0x1E69E7CC0];
        goto LABEL_45;
      }
    }

    else
    {

      v16 = MEMORY[0x1E69E7CD0];
      v24 = *(MEMORY[0x1E69E7CD0] + 16);
      if (!v24)
      {
        goto LABEL_44;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5D0, &qword_18E72E030);
    v25 = swift_allocObject();
    v26 = _swift_stdlib_malloc_size(v25);
    v27 = v26 - 32;
    if (v26 < 32)
    {
      v27 = v26 - 25;
    }

    v25[2] = v24;
    v25[3] = 2 * (v27 >> 3);
    v28 = sub_18E6A0340(&v60, v25 + 4, v24, v16);
    result = sub_18E687EE8(v60);
    if (v28 != v24)
    {
      goto LABEL_69;
    }

LABEL_45:
    v29 = v25[2];
    if (v29)
    {
      v30 = v25 + 4;
      do
      {
        v35 = *v30++;
        v34 = v35;
        v58 = 0x202020200ALL;
        v59 = 0xE500000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5C0, &qword_18E72E020);
        if (swift_dynamicCast())
        {
          sub_18E689D58(&v55, &v60);
          __swift_project_boxed_opaque_existential_1(&v60, v62);
          *(&v56 + 1) = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          __swift_allocate_boxed_opaque_existential_0(&v55);
          sub_18E72B5D8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5B0, &unk_18E72E010);
          sub_18E72B6C8();
          __swift_destroy_boxed_opaque_existential_0(&v55);
          v37 = 0;
          v36 = 0xE000000000000000;
          __swift_destroy_boxed_opaque_existential_0(&v60);
        }

        else
        {
          AssociatedConformanceWitness = 0;
          v55 = 0u;
          v56 = 0u;
          sub_18E6C026C(&v55);
          v60 = v8;
          v37 = sub_18E72AFF8();
          v36 = v38;
        }

        MEMORY[0x193AD15C0](v37, v36);

        MEMORY[0x193AD15C0](540945696, 0xE400000000000000);
        if (swift_dynamicCast())
        {
          sub_18E689D58(&v55, &v60);
          __swift_project_boxed_opaque_existential_1(&v60, v62);
          *(&v56 + 1) = swift_getAssociatedTypeWitness();
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          __swift_allocate_boxed_opaque_existential_0(&v55);
          sub_18E72B5D8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5B0, &unk_18E72E010);
          sub_18E72B6C8();
          __swift_destroy_boxed_opaque_existential_0(&v55);
          v33 = 0xE000000000000000;
          __swift_destroy_boxed_opaque_existential_0(&v60);
          v31 = 0;
        }

        else
        {
          AssociatedConformanceWitness = 0;
          v55 = 0u;
          v56 = 0u;
          sub_18E6C026C(&v55);
          v60 = v34;
          v31 = sub_18E72AFF8();
          v33 = v32;
        }

        MEMORY[0x193AD15C0](v31, v33);

        MEMORY[0x193AD15C0](59, 0xE100000000000000);
        MEMORY[0x193AD15C0](v58, v59);

        --v29;
      }

      while (v29);
    }

    v6 = v53 + 1;

    v7 = v48;
    v5 = v49;
    v4 = v50;
    if (v53 + 1 == v52)
    {

      v39 = v63;
      v40 = v64;
      goto LABEL_56;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_18E6C026C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5C8, &qword_18E72E028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_18E6C02D4(uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  v4 = **(v2 + 16);
  if (*a1 == v4)
  {
    *a2 = 1;
  }

  return v3 != v4;
}

unint64_t sub_18E6C02FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E5D8, &qword_18E72E038);
    v3 = sub_18E72B5A8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x193AD1DC0](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t *sub_18E6C0424(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for FailureDependencyGraph.Subgraph(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t *sub_18E6C04D4(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for FailureDependencyGraph.Edge(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

void *sub_18E6C0584(void *a1, _OWORD *a2, uint64_t a3, void (*a4)(void))
{
  (a4)(*a1, a2, a3);
  *a1 = *a2;

  return a1;
}

uint64_t sub_18E6C05C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_18E6C0610(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_18E6C065C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_18E6C06F8(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(*(a2 + 16) - 8) + 64);
  if (v2 <= 8)
  {
    v2 = 8;
  }

  v3 = a1[v2];
  v4 = v3 - 3;
  if (v3 >= 3)
  {
    if (v2 <= 3)
    {
      v5 = v2;
    }

    else
    {
      v5 = 4;
    }

    if (v5 <= 1)
    {
      if (!v5)
      {
        goto LABEL_17;
      }

      v6 = *a1;
    }

    else if (v5 == 2)
    {
      v6 = *a1;
    }

    else if (v5 == 3)
    {
      v6 = *a1 | (a1[2] << 16);
    }

    else
    {
      v6 = *a1;
    }

    v7 = (v6 | (v4 << (8 * v2))) + 3;
    v3 = v6 + 3;
    if (v2 < 4)
    {
      v3 = v7;
    }
  }

LABEL_17:
  if (v3 == 2)
  {
  }

  else
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }
}

void *sub_18E6C07E4(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = a2[v5];
  v7 = v6 - 3;
  if (v6 < 3)
  {
    goto LABEL_18;
  }

  if (v5 <= 3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 4;
  }

  if (v8 <= 1)
  {
    if (!v8)
    {
      goto LABEL_18;
    }

    v9 = *a2;
  }

  else if (v8 == 2)
  {
    v9 = *a2;
  }

  else if (v8 == 3)
  {
    v9 = *a2 | (a2[2] << 16);
  }

  else
  {
    v9 = *a2;
  }

  v10 = (v9 | (v7 << (8 * v5))) + 3;
  v6 = v9 + 3;
  if (v5 < 4)
  {
    v6 = v10;
  }

LABEL_18:
  if (v6 == 2)
  {
    *a1 = *a2;
    *(a1 + v5) = 2;
  }

  else if (v6 == 1)
  {
    (*(v4 + 16))(a1);
    *(a1 + v5) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(a1 + v5) = 0;
  }

  return a1;
}

unsigned __int8 *sub_18E6C0930(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 + 16);
    v6 = *(v5 - 8);
    if (*(v6 + 64) <= 8uLL)
    {
      v7 = 8;
    }

    else
    {
      v7 = *(v6 + 64);
    }

    v8 = a1[v7];
    v9 = v8 - 3;
    if (v8 >= 3)
    {
      if (v7 <= 3)
      {
        v10 = v7;
      }

      else
      {
        v10 = 4;
      }

      if (v10 <= 1)
      {
        if (!v10)
        {
          goto LABEL_19;
        }

        v11 = *a1;
      }

      else if (v10 == 2)
      {
        v11 = *a1;
      }

      else if (v10 == 3)
      {
        v11 = *a1 | (a1[2] << 16);
      }

      else
      {
        v11 = *a1;
      }

      v12 = (v11 | (v9 << (8 * v7))) + 3;
      v8 = v11 + 3;
      if (v7 < 4)
      {
        v8 = v12;
      }
    }

LABEL_19:
    if (v8 == 2)
    {
    }

    else
    {
      (*(v6 + 8))(a1, v5);
    }

    v13 = a2[v7];
    v14 = v13 - 3;
    if (v13 < 3)
    {
      goto LABEL_36;
    }

    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
LABEL_36:
        if (v13 == 2)
        {
          *a1 = *a2;
          a1[v7] = 2;
        }

        else if (v13 == 1)
        {
          (*(v6 + 16))(a1, a2, v5);
          a1[v7] = 1;
        }

        else
        {
          (*(v6 + 16))(a1, a2, v5);
          a1[v7] = 0;
        }

        return a1;
      }

      v16 = *a2;
    }

    else if (v15 == 2)
    {
      v16 = *a2;
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
    }

    else
    {
      v16 = *a2;
    }

    v17 = (v16 | (v14 << (8 * v7))) + 3;
    v13 = v16 + 3;
    if (v7 < 4)
    {
      v13 = v17;
    }

    goto LABEL_36;
  }

  return a1;
}

void *sub_18E6C0B50(void *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 8uLL)
  {
    v4 = 8;
  }

  else
  {
    v4 = *(*(*(a3 + 16) - 8) + 64);
  }

  v5 = a2[v4];
  v6 = v5 - 3;
  if (v5 < 3)
  {
    goto LABEL_18;
  }

  if (v4 <= 3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 4;
  }

  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

    v8 = *a2;
  }

  else if (v7 == 2)
  {
    v8 = *a2;
  }

  else if (v7 == 3)
  {
    v8 = *a2 | (a2[2] << 16);
  }

  else
  {
    v8 = *a2;
  }

  v9 = (v8 | (v6 << (8 * v4))) + 3;
  v5 = v8 + 3;
  if (v4 < 4)
  {
    v5 = v9;
  }

LABEL_18:
  if (v5 == 2)
  {
    *result = *a2;
    v11 = 2;
  }

  else
  {
    v10 = result;
    if (v5 == 1)
    {
      (*(v3 + 32))();
      result = v10;
      v11 = 1;
    }

    else
    {
      (*(v3 + 32))();
      result = v10;
      v11 = 0;
    }
  }

  *(result + v4) = v11;
  return result;
}

unsigned __int8 *sub_18E6C0C94(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = a1[v7];
  v9 = v8 - 3;
  if (v8 >= 3)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_19;
      }

      v11 = *a1;
    }

    else if (v10 == 2)
    {
      v11 = *a1;
    }

    else if (v10 == 3)
    {
      v11 = *a1 | (a1[2] << 16);
    }

    else
    {
      v11 = *a1;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 3;
    v8 = v11 + 3;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_19:
  if (v8 == 2)
  {
  }

  else
  {
    (*(v6 + 8))(a1, v5);
  }

  v13 = a2[v7];
  v14 = v13 - 3;
  if (v13 >= 3)
  {
    if (v7 <= 3)
    {
      v15 = v7;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a2;
      }

      else if (v15 == 3)
      {
        v16 = *a2 | (a2[2] << 16);
      }

      else
      {
        v16 = *a2;
      }

LABEL_34:
      v17 = (v16 | (v14 << (8 * v7))) + 3;
      v13 = v16 + 3;
      if (v7 < 4)
      {
        v13 = v17;
      }

      goto LABEL_36;
    }

    if (v15)
    {
      v16 = *a2;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v13 == 2)
  {
    *a1 = *a2;
    v18 = 2;
  }

  else if (v13 == 1)
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = 1;
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    v18 = 0;
  }

  a1[v7] = v18;
  return a1;
}

uint64_t sub_18E6C0EAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_18E6C0FC4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_18E6C117C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = 8;
  if (*(v2 + 64) > 8uLL)
  {
    v3 = *(v2 + 64);
  }

  v4 = a1[v3];
  v5 = v4 - 3;
  if (v4 >= 3)
  {
    if (v3 <= 3)
    {
      v6 = v3;
    }

    else
    {
      v6 = 4;
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        return v4;
      }

      v7 = *a1;
    }

    else if (v6 == 2)
    {
      v7 = *a1;
    }

    else if (v6 == 3)
    {
      v7 = *a1 | (a1[2] << 16);
    }

    else
    {
      v7 = *a1;
    }

    v8 = (v7 | (v5 << (8 * v3))) + 3;
    LODWORD(v4) = v7 + 3;
    if (v3 >= 4)
    {
      return v4;
    }

    else
    {
      return v8;
    }
  }

  return v4;
}

void sub_18E6C121C(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  if (*(*(*(a3 + 16) - 8) + 64) <= 8uLL)
  {
    v3 = 8;
  }

  else
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (a2 > 2)
  {
    v4 = a2 - 3;
    if (v3 < 4)
    {
      a1[v3] = (v4 >> (8 * v3)) + 3;
      if (v3)
      {
        v6 = v4 & ~(-1 << (8 * v3));
        bzero(a1, v3);
        if (v3 == 3)
        {
          *a1 = v6;
          a1[2] = BYTE2(v6);
        }

        else if (v3 == 2)
        {
          *a1 = v6;
        }

        else
        {
          *a1 = v4;
        }
      }
    }

    else
    {
      a1[v3] = 3;
      bzero(a1, v3);
      *a1 = v4;
    }
  }

  else
  {
    a1[v3] = a2;
  }
}

uint64_t sub_18E6C130C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  v12 = type metadata accessor for ReplicatingList.Storage(0, v5, v10, v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  (*(v15 + 16))(&v18 - v13, v3, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return (*(v6 + 32))(a2, v14, v5);
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v6 + 32))(v9, v14, v5);
  }

  else
  {
    sub_18E72B298();
  }

  (*(v10 + 8))(v5, v10);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_18E6C1510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a2 == 1)
  {
    (*(*(a3 - 8) + 32))(a5, a1, a3);
    type metadata accessor for ReplicatingList.Storage(0, a3, a4, v10);
  }

  else
  {
    if (a2)
    {
      v11 = sub_18E6844A4(a1, a2, a3);
      (*(*(a3 - 8) + 8))(a1, a3);
      *a5 = v11;
    }

    else
    {
      (*(*(a3 - 8) + 32))(a5, a1, a3);
    }

    type metadata accessor for ReplicatingList.Storage(0, a3, a4, v9);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18E6C1670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for ReplicatingList.Storage(0, *(a1 + 16), *(a1 + 24), a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, v5, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v7 + 8))(v9, v6);
      return 1;
    }

    else
    {
      v12 = sub_18E72B228();

      return v12;
    }
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }
}

uint64_t sub_18E6C17B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v9 = type metadata accessor for ReplicatingList.Storage(0, v8, *(a2 + 24), a3);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, v5, v9);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    result = (*(*(v8 - 8) + 32))(a4, v11, v8);
    if (!a1)
    {
      return result;
    }

    __break(1u);
  }

  else if (result == 2)
  {
    sub_18E72B298();
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6C190C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a3 + 16);
  v9 = type metadata accessor for ReplicatingList.Storage(0, v8, *(a3 + 24), a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v18 - v11);
  (*(v10 + 16))(&v18 - v11, v5, v9);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    if (!a2)
    {
      v17 = *(v10 + 8);
      v17(v5, v9);
      (*(*(v8 - 8) + 32))(v5, a1, v8);
      swift_storeEnumTagMultiPayload();
      return v17(v12, v9);
    }

    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (result != 2)
  {
    goto LABEL_10;
  }

  v19 = *v12;
  sub_18E72B278();
  sub_18E72B1D8();
  v14 = v19;
  sub_18E68E2C0(a2, v19, v8);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v16 = v14 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v16 = v14;
  }

  (*(*(v8 - 8) + 40))(v16 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * a2, a1, v8);
  (*(v10 + 8))(v5, v9);
  *v5 = v19;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18E6C1B50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v12 = type metadata accessor for ReplicatingList.Storage(0, v5, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v21 - v17);
  (*(v13 + 16))(&v21 - v17, v3, v12);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    result = (*(v6 + 32))(v8, v18, v5);
    if (!a1)
    {
      (*(v10 + 8))(v5, v10);
      (*(v6 + 8))(v8, v5);
      swift_storeEnumTagMultiPayload();
      return (*(v13 + 40))(v3, v16, v12);
    }

    __break(1u);
    goto LABEL_10;
  }

  if (result != 2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v22 = *v18;
  sub_18E72B278();
  sub_18E72B248();
  (*(v6 + 8))(v8, v5);
  v20 = v22;
  if (sub_18E72B228() == 1)
  {
    sub_18E72B298();
    swift_storeEnumTagMultiPayload();
    (*(v13 + 40))(v3, v16, v12);
  }

  else
  {
    (*(v13 + 8))(v3, v12);
    *v3 = v20;
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_18E6C1E54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v28 = *(v11 + 24);
  v13 = type metadata accessor for ReplicatingList.Storage(0, v4, v28, v12);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v14);
  v20 = &v25 - v18;
  if (a1 >= 1)
  {
    v26 = v19;
    v27 = v2;
    (*(v19 + 16))(&v25 - v18, v2, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v5 + 32))(v8, v20, v4);
        sub_18E6C2BD4(v4, v4);
        swift_allocObject();
        sub_18E72B198();
        (*(v5 + 16))(v22, v8, v4);
        sub_18E72B278();
        sub_18E6C2234(a1, v4);
        v23 = sub_18E72B1C8();

        (*(v5 + 8))(v8, v4);
      }

      else
      {
        sub_18E72B298();
        sub_18E6C2234(a1, v4);
        (*(v5 + 8))(v8, v4);
        v23 = sub_18E72B1C8();
      }
    }

    else
    {
      (*(v5 + 32))(v10, v20, v4);
      if (a1 == 1)
      {
        (*(v28 + 8))(v4);
        (*(v5 + 8))(v10, v4);
LABEL_10:
        v24 = v27;
        swift_storeEnumTagMultiPayload();
        return (*(v26 + 40))(v24, v16, v13);
      }

      v23 = sub_18E6C2234(a1, v4);
      (*(v5 + 8))(v10, v4);
    }

    *v16 = v23;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_18E6C2234(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 8))(v8, v7);
  v9 = sub_18E6844A4(v6, a1, a2);
  (*(v4 + 8))(v6, a2);
  return v9;
}

uint64_t sub_18E6C2328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v12 = type metadata accessor for ReplicatingList.Storage(0, v6, v10, v11);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v34 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v14);
  v21 = (&v33 - v20);
  if (a1 < 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  result = sub_18E6C1670(a2, v17, v18, v19);
  v25 = __OFSUB__(result, a1);
  v26 = result - a1;
  if (v25)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  result = sub_18E6C1670(a2, v22, v23, v24);
  if (v26 < result)
  {
    v27 = v13;
    (*(v13 + 16))(v21, v2, v12);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      return (*(v13 + 8))(v21, v12);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v29 = v33;
      (*(v33 + 32))(v8, v21, v6);
      v30 = v34;
      (*(v10 + 8))(v6, v10);
      (*(v29 + 8))(v8, v6);
    }

    else if (v26 == 1)
    {
      v30 = v34;
      sub_18E72B298();
    }

    else
    {
      if (v26)
      {
        *&v35 = *v21;
        sub_18E72B278();
        swift_getWitnessTable();
        sub_18E72B368();
        v35 = v37;
        v36 = v38;
        sub_18E72B468();
        swift_getWitnessTable();
        v31 = sub_18E72B288();
        v32 = v34;
        *v34 = v31;
        swift_storeEnumTagMultiPayload();
        return (*(v13 + 40))(v3, v32, v12);
      }

      sub_18E72B298();

      v30 = v34;
      (*(v10 + 8))(v6, v10);
      (*(v33 + 8))(v8, v6);
    }

    swift_storeEnumTagMultiPayload();
    return (*(v27 + 40))(v2, v30, v12);
  }

  return result;
}

uint64_t sub_18E6C270C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = sub_18E6C1670(a2, a2, a3, a4);
  if (result == v5)
  {
    return result;
  }

  v9 = sub_18E6C1670(a2, v6, v7, v8);
  v13 = sub_18E6C1670(a2, v10, v11, v12);
  if (v9 > v5)
  {
    v14 = __OFSUB__(v13, v5);
    result = v13 - v5;
    if (!v14)
    {

      return sub_18E6C2328(result, a2);
    }

    goto LABEL_13;
  }

  v14 = __OFSUB__(v5, v13);
  result = v5 - v13;
  if (v14)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  return sub_18E6C1E54(result, a2);
}

uint64_t sub_18E6C27CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_18E6C1670(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t (*sub_18E6C27F4(void *a1, uint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_18E6C28C4(v6, *a2, a3);
  return sub_18E6C287C;
}

void sub_18E6C287C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_18E6C28C4(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  sub_18E6C17B8(a2, a3, v10, v9);
  return sub_18E6C2994;
}

void sub_18E6C2994(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

void *sub_18E6C2A08@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_18E6C2A20(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_18E6C2A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_18E72B6D8();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_18E6C2AC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_18E6C2B20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_18E707F08(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

uint64_t sub_18E6C2BD4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DD08, &qword_18E72CD30);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t sub_18E6C2C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ReplicatingList.Storage(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_18E6C2CD8(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  if (*(v4 + 64) <= 8uLL)
  {
    v5 = 8;
  }

  else
  {
    v5 = *(*(*(a3 + 16) - 8) + 64);
  }

  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || (v5 + 1) > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));

    return v3;
  }

  v9 = *(a2 + v5);
  v10 = v9 - 3;
  if (v9 >= 3)
  {
    if (v5 <= 3)
    {
      v11 = v5;
    }

    else
    {
      v11 = 4;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        v12 = *a2;
      }

      else if (v11 == 3)
      {
        v12 = *a2 | (*(a2 + 2) << 16);
      }

      else
      {
        v12 = *a2;
      }

LABEL_22:
      v13 = (v12 | (v10 << (8 * v5))) + 3;
      v9 = v12 + 3;
      if (v5 < 4)
      {
        v9 = v13;
      }

      goto LABEL_24;
    }

    if (v11)
    {
      v12 = *a2;
      goto LABEL_22;
    }
  }

LABEL_24:
  if (v9 == 2)
  {
    *a1 = *a2;
    *(a1 + v5) = 2;
  }

  else if (v9 == 1)
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = 1;
  }

  else
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = 0;
  }

  return v3;
}

float64x2_t sub_18E6C2EFC@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vsubq_f64(*a1, *a2);
  *a3 = result;
  return result;
}

unint64_t sub_18E6C2F10(uint64_t a1)
{
  result = sub_18E6C2F38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18E6C2F38()
{
  result = qword_1EAC8E6E0;
  if (!qword_1EAC8E6E0)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E6E0);
  }

  return result;
}

uint64_t EventPhase.hashValue.getter()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

unint64_t sub_18E6C301C()
{
  result = qword_1EAC8E6E8;
  if (!qword_1EAC8E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E6E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventPhase(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventPhase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

float64x2_t sub_18E6C31FC@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  result = vaddq_f64(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_18E6C3210(uint64_t a1)
{
  result = sub_18E6C32DC(&qword_1EAC8E6F0, MEMORY[0x1E695EFB8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6C3264(uint64_t a1)
{
  result = sub_18E6C32DC(&qword_1EAC8E6F8, &unk_18E72E29C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E6C32DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AnyGestureNode.tag.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

Swift::Void __swiftcall AnyGestureNode.startTrackingEvents(with:)(Swift::OpaquePointer with)
{
  v1 = *(with._rawValue + 2);
  if (v1)
  {
    v2 = (with._rawValue + 32);
    do
    {
      v3 = *v2++;
      sub_18E695BE4(&v4, v3);
      --v1;
    }

    while (v1);
  }
}

void GestureNode.update(value:isFinalUpdate:)(unint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (*(*v4 + 368) == MEMORY[0x1E69E7CA8] + 8)
  {
    if (a2)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1;
    }

    sub_18E6964A4(a1, v5, 0);
    sub_18E69E818(v6, v5);
  }

  else
  {
    sub_18E6C4554(a1, a2 & 1, 0, a4);
  }
}

void GestureNode.update<A>(someValue:isFinalUpdate:)(uint64_t a1, char a2)
{
  v4 = *(*v2 + 368);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v15 - v9;
  if (v4 == MEMORY[0x1E69E7CA8] + 8 && v7 == MEMORY[0x1E69E7CA8] + 8)
  {
    if (a2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    sub_18E6964A4(v6, v13, 0);
    sub_18E69E818(v14, v13);
  }

  else if (*(*(v7 - 8) + 64) == v8)
  {
    (*(v5 + 16))(&v15 - v9);
    sub_18E6C4554(v10, a2 & 1, 0, v12);
    (*(v5 + 8))(v10, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t GestureNode.__allocating_init(traits:tag:relations:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_18E6C8474(a1, a2, a3, a4);

  return v4;
}

uint64_t AnyGestureNode.tag.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t (*AnyGestureNode.tag.modify(void *a1))(uint64_t a1)
{
  a1[2] = v1;
  v3 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v3;

  return sub_18E6C3694;
}

uint64_t (*AnyGestureNode.traits.modify(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 40);
  a1[1] = v1;

  return sub_18E6C3704;
}

uint64_t sub_18E6C3740(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*sub_18E6C3784(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 64);
  *a1 = Strong;
  a1[1] = v4;
  return sub_18E6C37D4;
}

uint64_t sub_18E6C37D4(uint64_t *a1)
{
  *(a1[2] + 64) = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_18E6C38D4(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(*v1 + 256);
    v4 = result + 32;
    do
    {
      v5 = *(v4 + 1);
      v6 = *(v4 + 2);
      v7 = *(v4 + 8);
      v8 = *(v4 + 16);
      v9 = *(v4 + 24);
      v10[0] = *v4;
      v10[1] = v5;
      v10[2] = v6;
      v11 = v7;
      v12 = v8;
      v13 = v9;
      sub_18E67EEC4(v7, v8, v9);
      v3(v10);
      result = sub_18E682A3C(v7, v8, v9);
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_18E6C39F8(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(*v1 + 272);
    v4 = result + 32;
    do
    {
      v5 = *(v4 + 1);
      v6 = *(v4 + 2);
      v7 = *(v4 + 8);
      v8 = *(v4 + 16);
      v9 = *(v4 + 24);
      v10[0] = *v4;
      v10[1] = v5;
      v10[2] = v6;
      v11 = v7;
      v12 = v8;
      v13 = v9;
      sub_18E67EEC4(v7, v8, v9);
      v3(v10);
      result = sub_18E682A3C(v7, v8, v9);
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t AnyGestureNode.__deallocating_deinit()
{
  AnyGestureNode.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 184, 7);
}

uint64_t GestureNode.delegate.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*GestureNode.delegate.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 192);
  *a1 = Strong;
  a1[1] = v4;
  return sub_18E6C3F2C;
}

uint64_t sub_18E6C3F2C(uint64_t *a1)
{
  *(a1[2] + 192) = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*GestureNode.container.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_18E6C3784(v3);
  return sub_18E6C3FE8;
}

void sub_18E6C3FE8(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_18E67F50C();
  }

  free(v3);
}

uint64_t GestureNode.init(traits:tag:relations:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_18E6C83D4(a1, a2, a3, a4);

  return v4;
}

uint64_t GestureNode.__allocating_init()()
{
  v4 = 0;
  _sSa8GesturesAA15GestureRelationVRszlE7defaultSayACGvgZ_0();
  v1 = v0;
  swift_allocObject();
  v2 = sub_18E6C83D4(&v4, 0, 0, v1);

  return v2;
}

uint64_t GestureNode.relations.getter()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v2 + 16);
  swift_retain_n();
  swift_retain_n();
  result = swift_retain_n();
  if (!v3)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_21:

    return v7;
  }

  v5 = 0;
  v6 = (v1 + 48);
  v7 = MEMORY[0x1E69E7CC0];
  v20 = v2;
  while (v5 < *(v1 + 16))
  {
    if (v5 >= *(v2 + 16))
    {
      goto LABEL_23;
    }

    v9 = *(v6 - 2);
    v8 = *(v6 - 1);
    v10 = *v6;
    sub_18E67EEC4(v9, v8, *v6);
    sub_18E67EEC4(v9, v8, v10);

    v12 = sub_18E6C8148(v11, v9, v8, v10);
    sub_18E682A3C(v9, v8, v10);
    sub_18E682A3C(v9, v8, v10);

    v13 = *(v12 + 16);
    v14 = *(v7 + 16);
    v15 = v14 + v13;
    if (__OFADD__(v14, v13))
    {
      goto LABEL_24;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v15 <= *(v7 + 24) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v14 <= v15)
      {
        v16 = v14 + v13;
      }

      else
      {
        v16 = v14;
      }

      result = sub_18E6EE080(result, v16, 1, v7);
      v7 = result;
      if (*(v12 + 16))
      {
LABEL_16:
        if ((*(v7 + 24) >> 1) - *(v7 + 16) < v13)
        {
          goto LABEL_26;
        }

        swift_arrayInitWithCopy();

        if (v13)
        {
          v17 = *(v7 + 16);
          v18 = __OFADD__(v17, v13);
          v19 = v17 + v13;
          if (v18)
          {
            goto LABEL_27;
          }

          *(v7 + 16) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v13)
    {
      goto LABEL_25;
    }

LABEL_4:
    ++v5;
    v6 += 24;
    v2 = v20;
    if (v3 == v5)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_18E6C4348@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[33];
  if (!v2)
  {
    *a1 = 0;
    *(a1 + 8) = -1;
    return result;
  }

  v3 = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 < 0 || v3 >= v2)
  {
    goto LABEL_14;
  }

  v4 = v1[37];
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = v1[32];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v1[34];
  if (v6 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_19;
  }

  v9 = v6 % v7;
  if ((v9 & 0x8000000000000000) == 0)
  {
    if (v9 < *(v8 + 16))
    {
      v10 = v8 + 16 * v9;
      v11 = *(v10 + 32);
      *a1 = v11;
      v12 = *(v10 + 40);
      *(a1 + 8) = v12;
      return sub_18E6AA03C(v11, v12);
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_18E6C43EC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(*v3 + 368);
  v6 = type metadata accessor for GesturePhase(255, v5, a1, a2);
  v9 = type metadata accessor for RingBuffer(0, v6, v7, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - v13;
  if (v5 == MEMORY[0x1E69E7CA8] + 8)
  {
    v16 = *(v3 + 272);
    v17 = *(v3 + 280);
    v18 = (v3 + 296);
    *a3 = *(v3 + 256);
    *(a3 + 16) = v16;
    *(a3 + 24) = v17;
    v19 = *(v3 + 288);
    *(a3 + 32) = v19;
    *(a3 + 40) = *v18;

    return sub_18E6AA03C(v17, v19);
  }

  else
  {
    sub_18E67DBC8(v14, v11, v12);
    sub_18E71F180(v9, a3);
    return (*(v10 + 8))(v14, v9);
  }
}

void sub_18E6C4554(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v8 = *(*v4 + 368);
  v9 = type metadata accessor for GesturePhase(0, v8, a3, a4);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  if (v8 == MEMORY[0x1E69E7CA8] + 8)
  {
    if (a2)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    sub_18E6964A4(v11, v14, v5 & 1);
    sub_18E69E818(v15, v14);
  }

  else
  {
    (*(*(v8 - 8) + 16))(v13, a1, v8);
    swift_storeEnumTagMultiPayload();
    sub_18E682A9C(v13, v5 & 1);
    (*(v10 + 8))(v13, v9);
  }
}

uint64_t sub_18E6C46E8(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v121 = a2;
  v120 = a1;
  v4 = sub_18E72AE18();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = *(v3 + 264);
  if (v10)
  {
    v127 = v9;
    v111 = &v110 - v8;
    v151 = 1;
    v11 = *(v3 + 256);
    v13 = *(v3 + 272);
    v12 = *(v3 + 280);
    v14 = *(v3 + 288);
    v15 = *(v3 + 296);
    v115 = *(v3 + 304);

    v113 = v12;
    v114 = v14;
    v16 = v14;
    v17 = v13;
    sub_18E6AA03C(v12, v16);
    v19 = v10;
    v116 = v15;
    v20 = v15;
    if (v10 < 1)
    {
LABEL_33:
      v140 = v11;
      v141 = v10;
      v142 = v17;
      v143 = v113;
      v144 = v114;
      *v145 = *v150;
      *&v145[3] = *&v150[3];
      v146 = v116;
      v147 = v115;
      v148 = v20;
      v149 = v19;
      sub_18E68B548(&v140, &qword_1EAC8E720, &qword_18E72E4A0);
      if (v10 >= 1)
      {
LABEL_34:
        if (swift_unknownObjectUnownedLoadStrong())
        {
          sub_18E6C5A18(v3);
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      v21 = v10;
      v22 = 0;
      v126 = v13 + 32;
      v124 = v5 + 2;
      v125 = v5 + 1;
      v112 = v21;
      v23 = v21 + 1;
      *&v18 = 136315650;
      v118 = v18;
      v20 = v116;
      v119 = v13;
      v123 = v11;
      v117 = v4;
      while (1)
      {
        if ((v20 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          swift_once();
LABEL_41:
          v78 = qword_1EAC8E570;
          goto LABEL_47;
        }

        if (v20 >= *(v17 + 16))
        {
          goto LABEL_56;
        }

        if (!v11)
        {
          goto LABEL_57;
        }

        v133 = v23;
        v23 = v4;
        v26 = v126 + 16 * v20;
        v27 = *(v26 + 8);
        v13 = (v20 + 1) % v11;
        v28 = *(v3 + 240);
        v29 = *(v3 + 248);
        v134 = *v26;
        sub_18E6AA03C(v134, v27);
        sub_18E6AA03C(v28, v29);
        v130 = v13;
        v131 = v28;
        v132 = v29;
        v135 = v27;
        if (v27 <= 2)
        {
          v30 = sub_18E69C624(&v151, v120);
          if (v30)
          {
            break;
          }
        }

        v31 = *(v3 + 264);
        if (!v31)
        {
          goto LABEL_58;
        }

        v32 = *(v3 + 296);
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v33 = *(v3 + 272);
        if (v32 >= *(v33 + 16))
        {
          goto LABEL_60;
        }

        v34 = *(v3 + 256);
        if (!v34)
        {
          goto LABEL_61;
        }

        v35 = v33 + 16 * v32;
        v36 = *(v35 + 32);
        v37 = *(v35 + 40);
        *(v3 + 296) = (v32 + 1) % v34;
        v38 = __OFSUB__(v31, 1);
        v39 = v31 - 1;
        if (v38)
        {
          goto LABEL_62;
        }

        *(v3 + 264) = v39;
        v40 = *(v3 + 240);
        *(v3 + 240) = v36;
        v41 = *(v3 + 248);
        *(v3 + 248) = v37;
        sub_18E6AA03C(v36, v37);
        sub_18E69E818(v40, v41);
        v42 = *(v3 + 240);
        v43 = *(v3 + 248);
        if (v43 == 4)
        {
          v44 = v127;
          if (!v42)
          {

            *(v3 + 176) = MEMORY[0x1E69E7CD0];
            v42 = *(v3 + 240);
            v43 = *(v3 + 248);
          }
        }

        else
        {
          v44 = v127;
        }

        v140 = v42;
        LOBYTE(v141) = v43;
        v138 = v28;
        v139 = v29;
        sub_18E6AA03C(v42, v43);
        v45 = sub_18E680FFC();
        v129 = v42;
        LODWORD(v128) = v43;
        if (v45)
        {
          v46 = qword_1EAC8E570;
          if (qword_1EAC8D8F8 != -1)
          {
            swift_once();
            v46 = qword_1EAC8E570;
          }
        }

        else
        {
          v46 = qword_1ED6F7FA0;
          if (qword_1ED6F7F98 != -1)
          {
            swift_once();
            v46 = qword_1ED6F7FA0;
          }
        }

        v47 = __swift_project_value_buffer(v23, v46);
        (v124->isa)(v44, v47, v23);
        v48 = v138;
        v49 = v139;
        v50 = v140;
        v51 = v141;
        sub_18E6AA03C(v138, v139);
        sub_18E6AA03C(v50, v51);

        sub_18E6AA03C(v48, v49);
        sub_18E6AA03C(v50, v51);
        v52 = sub_18E72ADF8();
        v53 = v23;
        v54 = sub_18E72B3E8();

        if (os_log_type_enabled(v52, v54))
        {
          v55 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v136 = v122;
          *v55 = v118;
          v56 = AnyGestureNode.debugLabel.getter();
          v58 = sub_18E6C5E8C(v56, v57, &v136);

          *(v55 + 4) = v58;
          *(v55 + 12) = 2080;
          v59 = sub_18E6C5B28(v48, v49);
          v61 = v60;
          sub_18E69E818(v48, v49);
          sub_18E69E818(v48, v49);
          v62 = sub_18E6C5E8C(v59, v61, &v136);

          *(v55 + 14) = v62;
          *(v55 + 22) = 2080;
          v63 = sub_18E6C5B28(v50, v51);
          v65 = v64;
          sub_18E69E818(v50, v51);
          sub_18E69E818(v50, v51);
          v66 = sub_18E6C5E8C(v63, v65, &v136);

          *(v55 + 24) = v66;
          _os_log_impl(&dword_18E67C000, v52, v54, "%s updated phase: %s -> %s", v55, 0x20u);
          v67 = v122;
          swift_arrayDestroy();
          MEMORY[0x193AD25C0](v67, -1, -1);
          v68 = v55;
          v17 = v119;
          MEMORY[0x193AD25C0](v68, -1, -1);

          v4 = v117;
          (v125->isa)(v127, v117);
        }

        else
        {
          sub_18E69E818(v50, v51);
          sub_18E69E818(v48, v49);
          sub_18E69E818(v50, v51);
          sub_18E69E818(v48, v49);

          (v125->isa)(v44, v53);
          v4 = v53;
        }

        v70 = v133;
        v69 = v134;
        Strong = swift_unknownObjectUnownedLoadStrong();
        v11 = v123;
        v20 = v130;
        v13 = v131;
        if (Strong)
        {
          v72 = Strong;
          v73 = swift_unknownObjectRetain();
          sub_18E6A2C3C(v3, (v73 + 208), v72);
          swift_unknownObjectRelease_n();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v24 = *(v3 + 192);
          ObjectType = swift_getObjectType();
          (*(v24 + 32))(v3, &v140, &v138, ObjectType, v24);
          sub_18E69E818(v69, v135);
          sub_18E69E818(v13, v132);
          sub_18E69E818(v129, v128);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_18E69E818(v69, v135);
          sub_18E69E818(v13, v132);
          sub_18E69E818(v129, v128);
        }

        v23 = v70 - 1;
        v22 = 1;
        if (v23 <= 1)
        {
          v19 = 0;
          v10 = v112;
          goto LABEL_33;
        }
      }

      sub_18E6C5430(*(v30 + 16));
      if (v74)
      {
        v128 = v133 - 2;
        v75 = *(v3 + 240);
        v76 = *(v3 + 248);
        v138 = v75;
        v139 = v76;
        v136 = v28;
        v137 = v29;
        sub_18E6AA03C(v75, v76);
        v77 = sub_18E680FFC();
        LODWORD(v133) = v76;
        v129 = v75;
        if (v77)
        {
          if (qword_1EAC8D8F8 == -1)
          {
            goto LABEL_41;
          }

          goto LABEL_63;
        }

        if (qword_1ED6F7F98 != -1)
        {
          swift_once();
        }

        v78 = qword_1ED6F7FA0;
LABEL_47:
        v79 = __swift_project_value_buffer(v23, v78);
        (v124->isa)(v111, v79, v23);
        v80 = v136;
        v81 = v137;
        v82 = v138;
        v83 = v139;
        sub_18E6AA03C(v136, v137);
        sub_18E6AA03C(v82, v83);
        sub_18E6AA03C(v80, v81);
        v127 = v82;
        sub_18E6AA03C(v82, v83);

        v84 = sub_18E72ADF8();
        LODWORD(v82) = sub_18E72B3E8();

        LODWORD(v126) = v82;
        if (os_log_type_enabled(v84, v82))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v140 = v86;
          *v85 = v118;
          v124 = v84;
          v87 = AnyGestureNode.debugLabel.getter();
          v89 = sub_18E6C5E8C(v87, v88, &v140);

          *(v85 + 4) = v89;
          *(v85 + 12) = 2080;
          v90 = sub_18E6C5B28(v80, v81);
          v92 = v91;
          sub_18E69E818(v80, v81);
          sub_18E69E818(v80, v81);
          v93 = sub_18E6C5E8C(v90, v92, &v140);
          v11 = v123;

          *(v85 + 14) = v93;
          *(v85 + 22) = 2080;
          v94 = v127;
          v95 = sub_18E6C5B28(v127, v83);
          v97 = v96;
          sub_18E69E818(v94, v83);
          sub_18E69E818(v94, v83);
          v98 = sub_18E6C5E8C(v95, v97, &v140);

          *(v85 + 24) = v98;
          v99 = v124;
          _os_log_impl(&dword_18E67C000, v124, v126, "%s updated phase: %s -> %s", v85, 0x20u);
          swift_arrayDestroy();
          v100 = v86;
          v13 = v130;
          MEMORY[0x193AD25C0](v100, -1, -1);
          MEMORY[0x193AD25C0](v85, -1, -1);

          (v125->isa)(v111, v117);
        }

        else
        {
          v101 = v127;
          sub_18E69E818(v127, v83);
          sub_18E69E818(v80, v81);
          sub_18E69E818(v101, v83);
          sub_18E69E818(v80, v81);

          (v125->isa)(v111, v23);
        }

        v102 = swift_unknownObjectUnownedLoadStrong();
        v103 = v119;
        v104 = v132;
        v105 = v131;
        if (v102)
        {
          v106 = v102;
          v107 = swift_unknownObjectRetain();
          sub_18E6A2C3C(v3, (v107 + 208), v106);
          swift_unknownObjectRelease_n();
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v108 = *(v3 + 192);
          v109 = swift_getObjectType();
          (*(v108 + 32))(v3, &v138, &v136, v109, v108);
          swift_unknownObjectRelease();
        }

        sub_18E69E818(v134, v135);

        v140 = v11;
        v141 = v112;
        v142 = v103;
        v143 = v113;
        v144 = v114;
        *v145 = *v150;
        *&v145[3] = *&v150[3];
        v146 = v116;
        v147 = v115;
        v148 = v13;
        v149 = v128;
        sub_18E68B548(&v140, &qword_1EAC8E720, &qword_18E72E4A0);
        sub_18E69E818(v105, v104);
        sub_18E69E818(v129, v133);
        goto LABEL_34;
      }

      v140 = v11;
      v141 = v112;
      v142 = v17;
      v143 = v113;
      v144 = v114;
      *v145 = *v150;
      *&v145[3] = *&v150[3];
      v146 = v116;
      v147 = v115;
      v148 = v13;
      v149 = v133 - 2;
      sub_18E68B548(&v140, &qword_1EAC8E720, &qword_18E72E4A0);

      sub_18E69E818(v28, v29);
      sub_18E69E818(v134, v135);
      if (v22)
      {
        goto LABEL_34;
      }
    }

    return sub_18E688410(v151);
  }

  return result;
}

void sub_18E6C5430(uint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  if (v4)
  {
    sub_18E6AA03C(*(v1 + 40), *(v1 + 48));
    sub_18E69E818(v3, v4);
  }

  else
  {
    sub_18E6AA03C(*(v1 + 40), 0);
    if (v3 == v2)
    {
      return;
    }
  }

  v5 = *(v1 + 64);
  if (!v5)
  {
    goto LABEL_19;
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = *(v1 + 56);
  if (!v6)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = *(v1 + 72);
  v8 = *(v1 + 96);
  if (v8 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_18;
  }

  v9 = v8 % v6;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_16;
  }

  if (v9 >= *(v7 + 16))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v10 = v7 + 16 * v9;
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  sub_18E6AA03C(v11, v12);
  sub_18E6C5D2C(v2, v11, v12, &v15);
  sub_18E69E818(v11, v12);
  v13 = v16;
  v14 = v15;
  if (v16 == 255)
  {
LABEL_20:
    sub_18E6AA028(v14, 255);
    __break(1u);
    return;
  }

  sub_18E69E818(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v14;
  *(v1 + 48) = v13;
}

uint64_t sub_18E6C5574()
{
  v1 = *v0;
  sub_18E694018((v0 + 184));
  v2 = *(*v0 + 384);
  v5 = type metadata accessor for GesturePhaseQueue(0, *(v1 + 368), v3, v4);
  v6 = *(*(v5 - 8) + 8);

  return v6(&v0[v2], v5);
}

uint64_t AnyGestureNode.hashValue.getter()
{
  sub_18E72B888();
  v0 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v0);
  return sub_18E72B8E8();
}

uint64_t sub_18E6C5694()
{
  sub_18E72B888();
  v0 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v0);
  return sub_18E72B8E8();
}

uint64_t sub_18E6C5710(uint64_t a1)
{
  sub_18E72B888();
  v1 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

uint64_t sub_18E6C5754(uint64_t result)
{
  v2 = result;
  v3 = (result + 240);
  v4 = *(result + 248);
  if (v4 < 4 || *v3)
  {
    v5 = *(result + 264);
    if (v5)
    {
      v6 = v5 - 1;
      if (__OFSUB__(v5, 1))
      {
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      if (v6 < 0 || v6 >= v5)
      {
        goto LABEL_64;
      }

      v7 = *(result + 296);
      v8 = __OFADD__(v7, v6);
      v9 = v7 + v6;
      if (v8)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v10 = *(result + 256);
      if (!v10)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v11 = *(result + 272);
      if (v9 == 0x8000000000000000 && v10 == -1)
      {
        goto LABEL_70;
      }

      v12 = v9 % v10;
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      if (v12 >= *(v11 + 16))
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v13 = v11 + 16 * v12;
      v14 = (v13 + 32);
      v15 = *(v13 + 40);
    }

    else
    {
      v15 = *(result + 248);
      v14 = (result + 240);
    }

    result = *v14;
    if (v15 == 3 && *v14 >> 62 == 0)
    {
      result = sub_18E683B80(result);
      goto LABEL_23;
    }

    if (v4 < 4 || !*v3)
    {
LABEL_23:
      v17 = *(v2 + 264);
      if (v17)
      {
        goto LABEL_24;
      }

LABEL_49:
      v25 = *(v2 + 248);
      if (v25 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v26 = *(result + 264);
    if (!v26)
    {
      goto LABEL_46;
    }

    v27 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (v27 < 0 || v27 >= v26)
    {
      goto LABEL_72;
    }

    v28 = *(result + 296);
    v8 = __OFADD__(v28, v27);
    v29 = v28 + v27;
    if (v8)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v30 = *(result + 256);
    if (!v30)
    {
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v31 = *(result + 272);
    if (v29 == 0x8000000000000000 && v30 == -1)
    {
      goto LABEL_77;
    }

    v32 = v29 % v30;
    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_75;
    }

    if (v32 >= *(v31 + 16))
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      return result;
    }

    if (*(v31 + 16 * v32 + 40) != 3)
    {
LABEL_46:
      result = sub_18E6959C4(result);
      if (result)
      {
        *(v1 + 40) = 0;
      }
    }
  }

  *(v1 + 41) = 1;
  v17 = *(v2 + 264);
  if (!v17)
  {
    goto LABEL_49;
  }

LABEL_24:
  v18 = v17 - 1;
  if (__OFSUB__(v17, 1))
  {
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v18 < 0 || v18 >= v17)
  {
    goto LABEL_58;
  }

  v19 = *(v2 + 296);
  v8 = __OFADD__(v19, v18);
  v20 = v19 + v18;
  if (v8)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v21 = *(v2 + 256);
  if (!v21)
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v22 = *(v2 + 272);
  if (v20 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_69;
  }

  v23 = v20 % v21;
  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_61;
  }

  if (v23 >= *(v22 + 16))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v24 = v22 + 16 * v23;
  v25 = *(v24 + 40);
  if (v25 != 3)
  {
    v3 = (v24 + 32);
LABEL_50:
    if (v25 < 4 || *v3)
    {
      return result;
    }
  }

LABEL_52:
  sub_18E68E9DC(v2);

  v33 = *(v1 + 48);
  if (v33)
  {
    v34 = *(v2 + 16);

    sub_18E68EB58((v33 + 16), v34);
    sub_18E68EB58((v33 + 24), v34);
  }

  return result;
}

uint64_t sub_18E6C5A18(uint64_t result)
{
  v1 = *(result + 248);
  if (v1 != 4 || *(result + 240) != 0)
  {
    if ((v1 & 0xFE) != 2)
    {
      return result;
    }

    v3 = result;
    sub_18E6C4348(&v8);
    if (v9 == 255)
    {
      v5 = v3;
      if ((*(v3 + 248) & 0xFE) != 2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = v9 & 0xFE;
      sub_18E6AA028(v8, v9);
      v5 = v3;
      if (v4 != 2)
      {
LABEL_9:
        v7 = v5;

        sub_18E6880B0(&v8, v7);
      }
    }

    v6 = sub_18E687600(v3);
    sub_18E687F10(v6);

    v5 = v3;
    goto LABEL_9;
  }

  return sub_18E68FEDC(result);
}

uint64_t sub_18E6C5B28(unint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      sub_18E6AA03C(a1, 1);
      return 0x657669746361;
    }

    else
    {
      strcpy(v7, "blocked(by: ");
      BYTE5(v7[1]) = 0;
      HIWORD(v7[1]) = -5120;
      sub_18E6AA03C(a1, 0);
      v6 = sub_18E72B778();
      MEMORY[0x193AD15C0](v6);

      MEMORY[0x193AD15C0](41, 0xE100000000000000);
      return v7[0];
    }
  }

  else if (a2 == 2)
  {
    sub_18E6AA03C(a1, 2);
    return 0x6465646E65;
  }

  else if (a2 == 3)
  {
    sub_18E6AA03C(a1, 3);
    v4 = sub_18E6C5C8C(a1, v3);
    sub_18E69E818(a1, 3);
    return v4;
  }

  else if (a1)
  {
    sub_18E6AA03C(1uLL, 4);
    return 0x656C626973736F70;
  }

  else
  {
    sub_18E6AA03C(0, 4);
    return 1701602409;
  }
}

uint64_t sub_18E6C5C8C(uint64_t a1, __n128 a2)
{
  v2 = GestureFailureReason.description.getter(a2);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    MEMORY[0x193AD15C0]();

    MEMORY[0x193AD15C0](41, 0xE100000000000000);
    return 0x2864656C696166;
  }

  else
  {

    return 0x64656C696166;
  }
}

void sub_18E6C5D2C(unsigned int a1@<W0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 <= 1u)
  {
    v7 = a2;
    v8 = a3 != 0;
LABEL_8:
    sub_18E6AA03C(v7, v8);
    v9 = 0;
    goto LABEL_10;
  }

  if (a3 == 2)
  {
    v7 = a2;
    v8 = 2;
    goto LABEL_8;
  }

  if (a3 == 3)
  {
    sub_18E6AA03C(a2, 3);
    sub_18E69E818(a2, 3);
  }

  else
  {
    sub_18E6AA03C(a2 != 0, 4);
  }

  a1 = 0;
  v9 = -1;
LABEL_10:
  *a4 = a1;
  *(a4 + 8) = v9;
}

void sub_18E6C5DEC(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  if (v2 >= *(v3 + 16))
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v1[1];
  if (v2 >= *(v4 + 16))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4 + 24 * v2;
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  v8 = *(v3 + 8 * v2 + 32);
  v9 = *(v5 + 48);
  v1[3] = v2 + 1;
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v8;
  sub_18E67EEC4(v6, v7, v9);
}

unint64_t sub_18E6C5E8C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_18E6C5F58(v11, 0, 0, 1, a1, a2);
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
    sub_18E69F7B4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_18E6C5F58(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_18E6C6064(a5, a6);
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
    result = sub_18E72B618();
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

void *sub_18E6C6064(uint64_t a1, unint64_t a2)
{
  v3 = sub_18E6C60B0(a1, a2);
  sub_18E6C61E0(&unk_1F01A5150);
  return v3;
}

void *sub_18E6C60B0(uint64_t a1, unint64_t a2)
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

  v6 = sub_18E6C62CC(v5, 0);
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

  result = sub_18E72B618();
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
        v10 = sub_18E72B078();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_18E6C62CC(v10, 0);
        result = sub_18E72B5B8();
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

uint64_t sub_18E6C61E0(uint64_t result)
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

  result = sub_18E6C6340(result, v11, 1, v3);
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

void *sub_18E6C62CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E728, &qword_18E72E4A8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_18E6C6340(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E728, &qword_18E72E4A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_18E6C6434(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DA10, &qword_18E72C8D0);
    v2 = sub_18E72B598();
    v16 = v2;
    sub_18E72B4D8();
    if (sub_18E72B548())
    {
      type metadata accessor for AnyGestureNode();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_18E688420(v10 + 1);
        }

        v2 = v16;
        sub_18E72B888();
        v3 = sub_18E72AFA8();
        MEMORY[0x193AD1DF0](v3);
        result = sub_18E72B8E8();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_18E72B548());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_18E6C6634(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E718, &qword_18E72E498);
  result = sub_18E72B588();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v3;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_18E72B888();
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          MEMORY[0x193AD1DF0](2);
          sub_18E70D89C(v32, v19);
          v22 = v20;
        }

        else
        {
          MEMORY[0x193AD1DF0](3);
          v22 = v19;
        }

        MEMORY[0x193AD1DF0](v22);
      }

      else if (v21)
      {
        MEMORY[0x193AD1DF0](1);
        _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x193AD1DF0](0);
        sub_18E72B8C8();
      }

      result = sub_18E72B8E8();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_18E6C6914(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E730, &qword_18E72E4B0);
  result = sub_18E72B588();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_18E72B878();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_18E6C6B38(uint64_t a1, uint64_t a2)
{
  sub_18E72B888();
  v4 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v4);
  sub_18E72B8E8();
  result = sub_18E72B4B8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_18E6C6BE0@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](a1);
  MEMORY[0x193AD1DF0]((a1 >> 8) & 1);
  v6 = a1 & 0xFF0000;
  sub_18E72B8A8();
  if ((a1 & 0xFF0000) != 0x20000)
  {
    MEMORY[0x193AD1DF0](HIWORD(a1) & 1);
  }

  result = sub_18E72B8E8();
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_15:
    *(a2 + 2) = 0;
    *a2 = 512;
    return result;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 3 * v9);
    if (*v11 != a1 || ((((a1 & 0x100) != 0) ^ v11[1]) & 1) != 0)
    {
      goto LABEL_6;
    }

    v12 = v11[2];
    if (v12 != 2)
    {
      break;
    }

    if (v6 == 0x20000)
    {
      goto LABEL_12;
    }

LABEL_6:
    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v6 == 0x20000 || (HIWORD(a1) & 1) != (v12 & 1))
  {
    goto LABEL_6;
  }

LABEL_12:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v18 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_18E6C7174();
    v14 = v18;
  }

  v15 = (*(v14 + 48) + 3 * v9);
  v16 = *v15;
  v17 = v15[1];
  LOBYTE(v15) = v15[2];
  *a2 = v16;
  *(a2 + 1) = v17;
  *(a2 + 2) = v15;
  result = sub_18E6C76D0(v9);
  *v2 = v18;
  return result;
}

unint64_t sub_18E6C6D9C(uint64_t a1, uint64_t a2)
{

  v4 = sub_18E72B518();
  v5 = swift_unknownObjectRetain();
  v6 = sub_18E6C6434(v5, v4);
  v14 = v6;
  sub_18E72B888();

  v7 = sub_18E72AFA8();
  MEMORY[0x193AD1DF0](v7);
  v8 = sub_18E72B8E8();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v6 + 48) + 8 * v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v6 + 48) + 8 * v10);
  result = sub_18E68F790(v10);
  if (v12 == a2)
  {
    *v2 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_18E6C6ECC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E718, &qword_18E72E498);
  v2 = *v0;
  v3 = sub_18E72B578();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_18E67EEC4(v19, v20, v22);
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

void *sub_18E6C7034()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E730, &qword_18E72E4B0);
  v2 = *v0;
  v3 = sub_18E72B578();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

  return result;
}

void *sub_18E6C7174()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DA20, &qword_18E72C8D8);
  v2 = *v0;
  v3 = sub_18E72B578();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; v21[2] = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 3 * v14;
      v18 = (*(v2 + 48) + v17);
      v19 = *v18;
      v20 = v18[1];
      LOBYTE(v18) = v18[2];
      v21 = (*(v4 + 48) + v17);
      *v21 = v19;
      v21[1] = v20;
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

  return result;
}

void *sub_18E6C72D0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DA28, &unk_18E72C8E0);
  v2 = *v0;
  v3 = sub_18E72B578();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
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

  return result;
}

uint64_t sub_18E6C7410(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E718, &qword_18E72E498);
  result = sub_18E72B588();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_18E72B888();
      if (v21 > 1)
      {
        if (v21 == 2)
        {
          MEMORY[0x193AD1DF0](2);

          sub_18E70D89C(v31, v19);
          v22 = v20;
        }

        else
        {
          MEMORY[0x193AD1DF0](3);
          v22 = v19;
        }

        MEMORY[0x193AD1DF0](v22);
      }

      else if (v21)
      {
        MEMORY[0x193AD1DF0](1);

        _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x193AD1DF0](0);
        sub_18E72B8C8();
      }

      result = sub_18E72B8E8();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_36;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_34;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {

LABEL_34:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_18E6C76D0(int64_t a1)
{
  result = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v23 = *v1;

    v8 = sub_18E72B4A8();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v10 = v23;
      do
      {
        v12 = (*(v10 + 48) + 3 * v6);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        sub_18E72B888();
        MEMORY[0x193AD1DF0](v13);
        MEMORY[0x193AD1DF0](v14);
        sub_18E72B8A8();
        if (v15 != 2)
        {
          MEMORY[0x193AD1DF0](v15 & 1);
        }

        v16 = sub_18E72B8E8() & v7;
        if (a1 >= v9)
        {
          v10 = v23;
          if (v16 < v9)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v10 = v23;
          if (v16 >= v9)
          {
            goto LABEL_13;
          }
        }

        if (a1 >= v16)
        {
LABEL_13:
          v17 = *(v10 + 48);
          v18 = v17 + 3 * a1;
          v19 = (v17 + 3 * v6);
          if (a1 != v6 || v18 >= v19 + 3)
          {
            v11 = *v19;
            *(v18 + 2) = *(v19 + 2);
            *v18 = v11;
            a1 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    result = v23;
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v20 = *(result + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = v22;
    ++*(result + 36);
  }

  return result;
}

uint64_t sub_18E6C78E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v31 = *v4;
  sub_18E72B888();
  if (v5 > 1u)
  {
    if (v5 == 2)
    {
      MEMORY[0x193AD1DF0](2);
      sub_18E70D89C(v32, a2);
      v8 = a3;
    }

    else
    {
      MEMORY[0x193AD1DF0](3);
      v8 = a2;
    }

    MEMORY[0x193AD1DF0](v8);
  }

  else if (v5)
  {
    MEMORY[0x193AD1DF0](1);
    _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x193AD1DF0](0);
    sub_18E72B8C8();
  }

  v9 = sub_18E72B8E8();
  v10 = -1 << *(v31 + 32);
  v11 = v9 & ~v10;
  if (((*(v31 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_36:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = *v28;
    sub_18E67EEC4(a2, a3, v5);
    sub_18E6C7D0C(a2, a3, v5, v11, isUniquelyReferenced_nonNull_native);
    *v28 = v32[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = v5;
    return 1;
  }

  v30 = ~v10;
  while (1)
  {
    v15 = *(v31 + 48) + 24 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (v18 <= 1)
    {
      break;
    }

    if (v18 != 2)
    {
      if (v5 == 3)
      {
        sub_18E682A3C(v16, v17, 3);
        sub_18E682A3C(a2, a3, 3);
        if (v16 == a2)
        {
          goto LABEL_39;
        }

        goto LABEL_14;
      }

LABEL_12:
      v12 = a2;
      v13 = a3;
      v14 = v5;
LABEL_13:
      sub_18E67EEC4(v12, v13, v14);
      sub_18E682A3C(v16, v17, v18);
      sub_18E682A3C(a2, a3, v5);
      goto LABEL_14;
    }

    if (v5 != 2)
    {
      sub_18E67EEC4(a2, a3, v5);
      v12 = v16;
      v13 = v17;
      v14 = 2;
      goto LABEL_13;
    }

    sub_18E67EEC4(a2, a3, 2);
    sub_18E67EEC4(v16, v17, 2);
    sub_18E67EEC4(a2, a3, 2);
    sub_18E67EEC4(v16, v17, 2);
    v21 = sub_18E7098C0(v16, a2);
    sub_18E682A3C(v16, v17, 2);
    sub_18E682A3C(a2, a3, 2);
    sub_18E682A3C(a2, a3, 2);
    sub_18E682A3C(v16, v17, 2);
    if ((v21 & 1) != 0 && v17 == a3)
    {
      goto LABEL_38;
    }

LABEL_14:
    v11 = (v11 + 1) & v30;
    if (((*(v31 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  if (!*(v15 + 16))
  {
    if (v5)
    {
      goto LABEL_12;
    }

    sub_18E682A3C(*v15, *(v15 + 8), 0);
    sub_18E682A3C(a2, a3, 0);
    if (v16 == a2)
    {
      goto LABEL_39;
    }

    goto LABEL_14;
  }

  if (v5 != 1)
  {
    sub_18E67EEC4(a2, a3, v5);
    v12 = v16;
    v13 = v17;
    v14 = 1;
    goto LABEL_13;
  }

  if (v16 != a2 || v17 != a3)
  {
    v20 = sub_18E72B7C8();
    sub_18E67EEC4(a2, a3, 1);
    sub_18E67EEC4(v16, v17, 1);
    sub_18E682A3C(v16, v17, 1);
    sub_18E682A3C(a2, a3, 1);
    if (v20)
    {
      goto LABEL_38;
    }

    goto LABEL_14;
  }

  sub_18E682A3C(a2, a3, 1);
LABEL_38:
  sub_18E682A3C(a2, a3, v18);
LABEL_39:
  v24 = *(v31 + 48) + 24 * v11;
  v25 = *v24;
  v26 = *(v24 + 8);
  *a1 = *v24;
  *(a1 + 8) = v26;
  v27 = *(v24 + 16);
  *(a1 + 16) = v27;
  sub_18E67EEC4(v25, v26, v27);
  return 0;
}

uint64_t sub_18E6C7D0C(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 <= v10 || (a5 & 1) == 0)
  {
    if (a5)
    {
      sub_18E6C6634(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        result = sub_18E6C6ECC();
        goto LABEL_43;
      }

      sub_18E6C7410(v10 + 1);
    }

    v12 = *v5;
    sub_18E72B888();
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        MEMORY[0x193AD1DF0](2);
        sub_18E70D89C(v32, v9);
        v13 = a2;
      }

      else
      {
        MEMORY[0x193AD1DF0](3);
        v13 = v9;
      }

      MEMORY[0x193AD1DF0](v13);
    }

    else if (a3)
    {
      MEMORY[0x193AD1DF0](1);
      _s8Gestures10GestureTagV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      MEMORY[0x193AD1DF0](0);
      sub_18E72B8C8();
    }

    result = sub_18E72B8E8();
    v14 = -1 << *(v12 + 32);
    a4 = result & ~v14;
    if ((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
    {
      v15 = ~v14;
      do
      {
        v19 = *(v12 + 48) + 24 * a4;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        if (v22 > 1)
        {
          if (v22 == 2)
          {
            if (a3 != 2)
            {
              sub_18E67EEC4(v9, a2, a3);
              v16 = v20;
              v17 = v21;
              v18 = 2;
              goto LABEL_20;
            }

            sub_18E67EEC4(v9, a2, 2);
            sub_18E67EEC4(v20, v21, 2);
            sub_18E67EEC4(v9, a2, 2);
            sub_18E67EEC4(v20, v21, 2);
            v25 = sub_18E7098C0(v20, v9);
            sub_18E682A3C(v20, v21, 2);
            sub_18E682A3C(v9, a2, 2);
            sub_18E682A3C(v9, a2, 2);
            result = sub_18E682A3C(v20, v21, 2);
            if ((v25 & 1) != 0 && v21 == a2)
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (a3 != 3)
            {
LABEL_19:
              v16 = v9;
              v17 = a2;
              v18 = a3;
LABEL_20:
              sub_18E67EEC4(v16, v17, v18);
              sub_18E682A3C(v20, v21, v22);
              result = sub_18E682A3C(v9, a2, a3);
              goto LABEL_21;
            }

            sub_18E682A3C(v20, v21, 3);
            result = sub_18E682A3C(v9, a2, 3);
            if (v20 == v9)
            {
              goto LABEL_47;
            }
          }
        }

        else if (*(v19 + 16))
        {
          if (a3 != 1)
          {
            sub_18E67EEC4(v9, a2, a3);
            v16 = v20;
            v17 = v21;
            v18 = 1;
            goto LABEL_20;
          }

          if (v20 == v9 && v21 == a2)
          {
            goto LABEL_46;
          }

          v24 = sub_18E72B7C8();
          sub_18E67EEC4(v9, a2, 1);
          sub_18E67EEC4(v20, v21, 1);
          sub_18E682A3C(v20, v21, 1);
          result = sub_18E682A3C(v9, a2, 1);
          if (v24)
          {
            goto LABEL_47;
          }
        }

        else
        {
          if (a3)
          {
            goto LABEL_19;
          }

          sub_18E682A3C(*v19, *(v19 + 8), 0);
          result = sub_18E682A3C(v9, a2, 0);
          if (v20 == v9)
          {
            goto LABEL_47;
          }
        }

LABEL_21:
        a4 = (a4 + 1) & v15;
      }

      while (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
    }
  }

LABEL_43:
  v26 = *v31;
  *(*v31 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v27 = *(v26 + 48) + 24 * a4;
  *v27 = v9;
  *(v27 + 8) = a2;
  *(v27 + 16) = a3;
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_46:
    sub_18E67EEC4(v9, a2, 1);
    sub_18E67EEC4(v9, a2, 1);
    sub_18E682A3C(v9, a2, 1);
    sub_18E682A3C(v9, a2, 1);
LABEL_47:
    result = sub_18E72B808();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v30;
  }

  return result;
}

uint64_t sub_18E6C8148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v37 = MEMORY[0x1E69E7CC0];
  sub_18E6EE388(0, v4, 0);
  v5 = v37;
  v7 = a1 + 56;
  result = sub_18E72B498();
  v9 = result;
  v10 = a1;
  v11 = 0;
  v12 = a2;
  v13 = a3;
  v30 = v4;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v10 + 32))
  {
    v15 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v32 = v11;
    v33 = *(v10 + 36);
    v16 = (*(v10 + 48) + 3 * v9);
    v36 = *v16;
    v34 = v16[2];
    v35 = v16[1];
    result = sub_18E67EEC4(v12, v13, a4);
    v17 = a4;
    v19 = *(v37 + 16);
    v18 = *(v37 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_18E6EE388((v18 > 1), v19 + 1, 1);
    }

    *(v37 + 16) = v19 + 1;
    v20 = v37 + 32 * v19;
    *(v20 + 32) = v36;
    *(v20 + 33) = v35;
    *(v20 + 34) = v34;
    *(v20 + 40) = v12;
    *(v20 + 48) = v13;
    *(v20 + 56) = v17;
    v10 = a1;
    v14 = 1 << *(a1 + 32);
    if (v9 >= v14)
    {
      goto LABEL_22;
    }

    a4 = v17;
    v7 = a1 + 56;
    v21 = *(a1 + 56 + 8 * v15);
    if ((v21 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    if (v33 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v9 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v15 << 6;
      v24 = v15 + 1;
      v25 = (a1 + 64 + 8 * v15);
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_18E6C87A0(v9, v33, 0);
          v10 = a1;
          v12 = a2;
          v13 = a3;
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_18E6C87A0(v9, v33, 0);
      v10 = a1;
      v12 = a2;
      v13 = a3;
    }

LABEL_4:
    v11 = v32 + 1;
    v9 = v14;
    if (v32 + 1 == v30)
    {
      return v5;
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
  return result;
}

uint64_t sub_18E6C83D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = *a1;
  v4[24] = 0;
  swift_unknownObjectWeakInit();
  sub_18E71F59C(*(v8 + 368), v10, v11, v4 + *(*v4 + 384));
  v13 = v9;
  return sub_18E67E5EC(&v13, a2, a3, a4);
}

unint64_t sub_18E6C84DC()
{
  result = qword_1EAC8E710;
  if (!qword_1EAC8E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E710);
  }

  return result;
}

uint64_t sub_18E6C87A0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_18E6C87AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E738, &qword_18E72E4B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18E6C881C()
{
  result = qword_1EAC8D8B0;
  if (!qword_1EAC8D8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E740, &qword_18E72E4C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8D8B0);
  }

  return result;
}

Gestures::GestureTrait::AttributeKey sub_18E6C88B8()
{
  v0._countAndFlagsBits = 0x756F43746E696F70;
  v0._object = 0xEA0000000000746ELL;
  return GestureTrait.AttributeKey.init(_:)(v0);
}

Gestures::GestureTrait::AttributeKey sub_18E6C8900()
{
  v0._countAndFlagsBits = 0x746E756F43706174;
  v0._object = 0xE800000000000000;
  return GestureTrait.AttributeKey.init(_:)(v0);
}

Gestures::GestureTrait::AttributeKey sub_18E6C8944()
{
  v0._countAndFlagsBits = 0x446D756D696E696DLL;
  v0._object = 0xEF6E6F6974617275;
  return GestureTrait.AttributeKey.init(_:)(v0);
}

Gestures::GestureTrait::AttributeKey sub_18E6C8994()
{
  v0._countAndFlagsBits = 0x4D6D756D6978616DLL;
  v0._object = 0xEF746E656D65766FLL;
  return GestureTrait.AttributeKey.init(_:)(v0);
}

void *sub_18E6C89E4@<X0>(void *result@<X0>, void *a2@<X1>, void *a4@<X8>)
{
  if (*result != -1)
  {
    v4 = a2;
    v5 = a4;
    result = swift_once();
    a4 = v5;
    a2 = v4;
  }

  *a4 = *a2;
  return result;
}

uint64_t sub_18E6C8A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27 = a1;
  v23 = sub_18E72B918();
  v22 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v38 + 1) = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v4, a2);
  sub_18E72B8F8();
  v21 = v8;
  sub_18E72B908();
  sub_18E72B6B8();

  sub_18E72B748();
  v38 = v35;
  v39 = v36;
  v37 = v34;
  if (*(&v36 + 1))
  {
    v26 = v4;
    v25 = a3;
    v24 = a2;
    while (1)
    {
      v10 = v37;
      sub_18E68A8E4(&v38, v33);
      if (!*(&v10 + 1))
      {
        break;
      }

      sub_18E6CA09C(v33, &v34);
      if (*(&v35 + 1))
      {
        sub_18E68A8E4(&v34, &v31);
        sub_18E69F7B4(&v31, v30);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DD30, "8g");
        if ((swift_dynamicCast() & 1) == 0)
        {
          v29 = 0;
          memset(v28, 0, sizeof(v28));
          sub_18E68B548(v28, &qword_1EAC8DD38, &qword_18E72CD50);
LABEL_14:
          v12 = v32;
          v13 = __swift_project_boxed_opaque_existential_1(&v31, v32);
          v14 = sub_18E72B438();
          v15 = *(v14 - 8);
          MEMORY[0x1EEE9AC00](v14);
          v17 = &v20 - v16;
          v18 = *(v12 - 8);
          (*(v18 + 16))(&v20 - v16, v13, v12);
          (*(v18 + 56))(v17, 0, 1, v12);
          sub_18E6C9080(v17, v10, *(&v10 + 1), v12);

          (*(v15 + 8))(v17, v14);
          __swift_destroy_boxed_opaque_existential_0(v33);
          __swift_destroy_boxed_opaque_existential_0(&v31);
          goto LABEL_4;
        }

        sub_18E689D58(v28, &v34);
        __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
        if ((sub_18E72B318() & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_0(&v34);
          goto LABEL_14;
        }

        __swift_destroy_boxed_opaque_existential_0(v33);

        __swift_destroy_boxed_opaque_existential_0(&v34);
        v11 = &v31;
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_0(v33);

      sub_18E68B548(&v34, &qword_1EAC8DD40, &qword_18E72CD58);
LABEL_4:
      sub_18E72B748();
      v38 = v35;
      v39 = v36;
      v37 = v34;
      if (!*(&v36 + 1))
      {
        goto LABEL_15;
      }
    }

    v11 = v33;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v11);
    goto LABEL_4;
  }

LABEL_15:
  (*(v22 + 8))(v21, v23);
}

uint64_t sub_18E6C8EC8(uint64_t a1, uint64_t a2)
{
  v17[3] = a1;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_0, v2, a1);
  v16 = MEMORY[0x1E69E7CC0];
  sub_18E69F7B4(v17, v15);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  __swift_destroy_boxed_opaque_existential_0(v17);
  sub_18E68B548(&v18, &qword_1EAC8DCC8, &qword_18E72CD10);
  v23 = v16;
  v18 = 0u;
  v19 = 0u;
  v21 = v15[0];
  v22 = v15[1];
  v20 = 0uLL;
  (*(a2 + 24))(&v18, a1, a2);
  v6 = sub_18E6C96B4();
  sub_18E6C9B94();
  v8 = v7;
  v10 = v9;

  MEMORY[0x193AD15C0](v8, v10);

  v11 = sub_18E6C9D10();
  v13 = v12;

  MEMORY[0x193AD15C0](v11, v13);

  sub_18E6A9C8C(&v18);
  return v6;
}

uint64_t sub_18E6C9080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a2;
  v7 = sub_18E72B438();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v49 - v10;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - v16;
  (*(v8 + 16))(v11, a1, v7);
  if ((*(v12 + 48))(v11, 1, a4) == 1)
  {
    return (*(v8 + 8))(v11, v7);
  }

  (*(v12 + 32))(v17, v11, a4);
  v74 = 0;
  v75 = 0xE000000000000000;
  if (a3)
  {
    *&v65 = v49;
    *(&v65 + 1) = a3;

    MEMORY[0x193AD15C0](8250, 0xE200000000000000);
    MEMORY[0x193AD15C0](v65, *(&v65 + 1));
  }

  v19 = *(v12 + 16);
  v19(v15, v17, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DCB8, &qword_18E72CD00);
  v20 = swift_dynamicCast();
  v21 = v50;
  if (v20)
  {
    sub_18E689D58(&v65, v71);
    v64[3] = a4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v64);
    v19(boxed_opaque_existential_0, v17, a4);
    sub_18E6A9C30(v21, &v58);
    v53 = 0u;
    v54 = 0u;
    *&v55 = 0;
    v57 = MEMORY[0x1E69E7CC0];
    sub_18E69F7B4(v64, v56);
    v51[3] = v61;
    v51[4] = v62;
    v51[1] = v59;
    v51[2] = v60;
    v52 = v63;
    v51[0] = v58;
    if (*(&v62 + 1))
    {
      v67 = v60;
      v68 = v61;
      v69 = v62;
      v70 = v63;
      v65 = v58;
      v66 = v59;
      v23 = *(&v60 + 1);
      v24 = v58;
      sub_18E6A9C8C(&v65);
      result = __swift_destroy_boxed_opaque_existential_0(v64);
      v25 = (v24 & 8) == 0;
      v26 = __OFADD__(v23, v25);
      v27 = v23 + v25;
      if (v26)
      {
        __break(1u);
        return result;
      }

      v28 = v17;
      *(&v55 + 1) = v27;
    }

    else
    {
      v28 = v17;
      __swift_destroy_boxed_opaque_existential_0(v64);
      sub_18E68B548(v51, &qword_1EAC8DCC8, &qword_18E72CD10);
      *(&v55 + 1) = 0;
    }

    v67 = v55;
    v68 = v56[0];
    v69 = v56[1];
    v70 = v57;
    v65 = v53;
    v66 = v54;
    v29 = v72;
    v30 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(v30 + 24))(&v65, v29, v30);
    v31 = sub_18E6C96B4();
    v33 = v32;
    sub_18E6C9B94();
    v35 = v34;
    v37 = v36;
    *&v58 = v31;
    *(&v58 + 1) = v33;

    MEMORY[0x193AD15C0](v35, v37);

    v38 = v58;
    v39 = sub_18E6C9D10();
    v41 = v40;
    v58 = v38;

    MEMORY[0x193AD15C0](v39, v41);

    MEMORY[0x193AD15C0](v58, *(&v58 + 1));

    sub_18E6A9C8C(&v65);
    __swift_destroy_boxed_opaque_existential_0(v71);
    v21 = v50;
  }

  else
  {
    *&v67 = 0;
    v65 = 0u;
    v66 = 0u;
    sub_18E68B548(&v65, &qword_1EAC8DCC0, &qword_18E72CD08);
    *&v65 = 0;
    *(&v65 + 1) = 0xE000000000000000;
    v28 = v17;
    sub_18E72B798();
    MEMORY[0x193AD15C0](v65, *(&v65 + 1));
  }

  v43 = v74;
  v42 = v75;
  v44 = HIBYTE(v75) & 0xF;
  if ((v75 & 0x2000000000000000) == 0)
  {
    v44 = v74 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    v45 = *(v21 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_18E6ED4A8(0, *(v45 + 2) + 1, 1, v45);
    }

    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_18E6ED4A8((v46 > 1), v47 + 1, 1, v45);
    }

    result = (*(v12 + 8))(v28, a4);
    *(v45 + 2) = v47 + 1;
    v48 = &v45[16 * v47];
    *(v48 + 4) = v43;
    *(v48 + 5) = v42;
    *(v21 + 80) = v45;
  }

  else
  {
    (*(v12 + 8))(v28, a4);
  }

  return result;
}

uint64_t sub_18E6C9674@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_18E6AA174();

  *a2 = v3;
  return result;
}

uint64_t sub_18E6C96B4()
{
  v1 = v0;
  if (v0[2])
  {
    v2 = v0[1];
    goto LABEL_30;
  }

  v3 = *v0;
  if (*v0)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    if ((v3 & 4) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_18E69F7B4((v0 + 6), &v20);
    __swift_project_boxed_opaque_existential_1(&v20, v22);
    swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_0(&v20);
    v23 = sub_18E72B9C8();
    v24 = v4;
    if ((v3 & 4) != 0)
    {
      goto LABEL_11;
    }
  }

  sub_18E69F7B4((v0 + 6), &v20);
  __swift_project_boxed_opaque_existential_1(&v20, v22);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_0(&v20);
  if (swift_isClassType() && DynamicType)
  {
    v20 = 15392;
    v21 = 0xE200000000000000;
    __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
    *&v15 = 30768;
    *(&v15 + 1) = 0xE200000000000000;
    v18 = sub_18E72B7B8();
    sub_18E6A9FC4();
    v6 = sub_18E72B098();
    MEMORY[0x193AD15C0](v6);
    swift_unknownObjectRelease();

    MEMORY[0x193AD15C0](30768, 0xE200000000000000);

    MEMORY[0x193AD15C0](v20, v21);

    if ((v3 & 2) != 0)
    {
LABEL_20:
      MEMORY[0x193AD15C0](62, 0xE100000000000000);
      goto LABEL_21;
    }

    v7 = 1;
LABEL_13:
    sub_18E69F7B4((v1 + 6), &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5C0, &qword_18E72E020);
    if (swift_dynamicCast())
    {
      sub_18E689D58(&v15, &v20);
      v18 = 0;
      v19 = 0xE000000000000000;
      if (v7)
      {
        MEMORY[0x193AD15C0](32, 0xE100000000000000);
        __swift_project_boxed_opaque_existential_1(&v20, v22);
        *(&v16 + 1) = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0(&v15);
        sub_18E72B5D8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5B0, &unk_18E72E010);
        sub_18E72B6C8();
        __swift_destroy_boxed_opaque_existential_0(&v15);
      }

      else
      {
        MEMORY[0x193AD15C0](15392, 0xE200000000000000);
        __swift_project_boxed_opaque_existential_1(&v20, v22);
        *(&v16 + 1) = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0(&v15);
        sub_18E72B5D8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8E5B0, &unk_18E72E010);
        sub_18E72B6C8();
        __swift_destroy_boxed_opaque_existential_0(&v15);
        MEMORY[0x193AD15C0](62, 0xE100000000000000);
      }

      MEMORY[0x193AD15C0](v18, v19);

      __swift_destroy_boxed_opaque_existential_0(&v20);
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      AssociatedConformanceWitness = 0;
      v15 = 0u;
      v16 = 0u;
      sub_18E68B548(&v15, &qword_1EAC8E5C8, &qword_18E72E028);
      if (!v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_20;
  }

LABEL_11:
  if ((v3 & 2) == 0)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_21:
  v8 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v8 = v23 & 0xFFFFFFFFFFFFLL;
  }

  v9 = 32 * (v8 != 0);
  if (v8)
  {
    v10 = 0xE100000000000000;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v20 = v23;
  v21 = v24;

  MEMORY[0x193AD15C0](v9, v10);

  MEMORY[0x193AD15C0](123, 0xE100000000000000);

  v11 = *(v1[10] + 16);
  v12 = 32 * (v11 != 0);
  if (v11)
  {
    v13 = 0xE100000000000000;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  MEMORY[0x193AD15C0](v12, v13);

  v2 = v20;
LABEL_30:

  return v2;
}

void sub_18E6C9B94()
{
  if ((*v0 & 8) != 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
    sub_18E6A9E68();
    sub_18E72AF58();

    return;
  }

  if (!*(*(v0 + 80) + 16))
  {
    goto LABEL_6;
  }

  if (!__OFADD__(*(v0 + 40), 1))
  {
    sub_18E72B088();
    v1 = sub_18E72B088();
    MEMORY[0x193AD15C0](v1);

LABEL_6:

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAC8DCF8, &qword_18E72CEB0);
    sub_18E6A9E68();
    v2 = sub_18E72AF58();
    v4 = v3;

    MEMORY[0x193AD15C0](v2, v4);

    return;
  }

  __break(1u);
}

uint64_t sub_18E6C9D10()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
  }

  else
  {
    v3 = 0xE100000000000000;
    v2 = 125;
  }

  if (*(*(v0 + 80) + 16))
  {
    if ((*v0 & 8) != 0)
    {
      v6 = 32 * (v1 == 0);
    }

    else
    {

      sub_18E72B088();
      v4 = sub_18E72B088();
      v6 = 10;
      MEMORY[0x193AD15C0](v4);
    }

    MEMORY[0x193AD15C0](v2, v3);

    return v6;
  }

  else
  {
  }

  return v2;
}

BOOL sub_18E6C9E1C(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = (*(*(*(a1 + 16) - 8) + 48))(v4, 1);
  if (v5 != 1)
  {
    (*(v2 + 8))(v4, a1);
  }

  return v5 == 1;
}

uint64_t sub_18E6C9F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  v7 = *(a1 + 16);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = (*(v4 + 8))(v6, a1);
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *(a2 + 24) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
    return (*(v8 + 32))(boxed_opaque_existential_0, v6, v7);
  }

  return result;
}

void *sub_18E6CA09C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_18E69F7B4(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8DD20, &qword_18E72CD38);
  if (!swift_dynamicCast())
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    sub_18E68B548(&v9, &qword_1EAC8DD28, &unk_18E72CD40);
    return sub_18E69F7B4(a1, a2);
  }

  sub_18E689D58(&v9, v13);
  v4 = v14;
  v5 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  if ((*(v5 + 8))(v4, v5))
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    result = (*(v8 + 16))(&v9, v7, v8);
    if (!*(&v10 + 1))
    {
      __break(1u);
      return result;
    }

    sub_18E68A8E4(&v9, a2);
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_18E6CA1E4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v8[2] = a3;
  v8[3] = a4;
  v5 = sub_18E72B278();
  WitnessTable = swift_getWitnessTable();
  return sub_18E6CA3BC(&v9, a1, sub_18E6CACAC, v8, v5, WitnessTable);
}

uint64_t sub_18E6CA26C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_18E72B438();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  v9 = *(a3 - 8);
  (*(v9 + 16))(&v11 - v7, a1, a3);
  (*(v9 + 56))(v8, 0, 1, a3);
  sub_18E6C9080(v8, 0, 0, a3);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18E6CA3BC(uint64_t a1, uint64_t *a2, void (*a3)(char *, uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a3;
  v37 = a4;
  v9 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v34 = &v32 - v11;
  v12 = sub_18E72B438();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v32 - v14;
  v38 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v9;
  v39 = swift_getAssociatedTypeWitness();
  v32 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v19 = (&v32 - v18);
  v20 = sub_18E72B308();
  v21 = *a2;
  if (v20 < 2)
  {
    v22 = 9;
    if ((~v21 & 9) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (v21)
    {
      goto LABEL_6;
    }

    v22 = 1;
  }

  *a2 = v21 | v22;
LABEL_6:

  *(a2 + 1) = xmmword_18E72CA40;

  *(a2 + 3) = xmmword_18E72CA50;
  v38[2](v17, a1, a5);
  sub_18E72B0C8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v19;
  v35 = AssociatedConformanceWitness;
  sub_18E72B448();
  v24 = v33;
  v25 = *(v33 + 48);
  v26 = v25(v15, 1, AssociatedTypeWitness);
  v27 = v34;
  if (v26 != 1)
  {
    v30 = *(v24 + 32);
    v28 = v24 + 32;
    v29 = v30;
    do
    {
      v29(v27, v15, AssociatedTypeWitness);
      v36(v27, a2);
      (*(v28 - 24))(v27, AssociatedTypeWitness);
      sub_18E72B448();
    }

    while (v25(v15, 1, AssociatedTypeWitness) != 1);
  }

  return (*(v32 + 8))(v38, v39);
}

uint64_t sub_18E6CA7E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v6 = sub_18E72B2E8();
  WitnessTable = swift_getWitnessTable();
  return sub_18E6CA3BC(&v10, a1, sub_18E6CACC0, v9, v6, WitnessTable);
}

uint64_t sub_18E6CA8B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a6;
  v7 = sub_18E72AED8();
  WitnessTable = swift_getWitnessTable();
  return sub_18E6CA3BC(&v11, a1, sub_18E6CACB4, v10, v7, WitnessTable);
}

uint64_t sub_18E6CA944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v18 - v9;
  v11 = sub_18E72B438();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  (*(v8 + 16))(v10, a1, TupleTypeMetadata2);
  v15 = *(TupleTypeMetadata2 + 48);
  v16 = *(a4 - 8);
  (*(v16 + 32))(v14, &v10[v15], a4);
  (*(v16 + 56))(v14, 0, 1, a4);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_18E72B798();
  sub_18E6C9080(v14, v18, v19, a4);

  (*(v12 + 8))(v14, v11);
  return (*(*(a3 - 8) + 8))(v10, a3);
}

uint64_t destroy for NestedDescription(void *a1)
{

  __swift_destroy_boxed_opaque_existential_0(a1 + 6);
}

uint64_t initializeWithCopy for NestedDescription(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 72);
  *(a1 + 72) = v6;
  v7 = **(v6 - 8);

  v7(a1 + 48, a2 + 48, v6);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

void *assignWithCopy for NestedDescription(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];

  a1[3] = a2[3];
  a1[4] = a2[4];

  a1[5] = a2[5];
  __swift_assign_boxed_opaque_existential_0(a1 + 6, a2 + 6);
  a1[10] = a2[10];

  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_0(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for NestedDescription(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;

  *(a1 + 40) = *(a2 + 40);
  __swift_destroy_boxed_opaque_existential_0((a1 + 48));
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

uint64_t getEnumTagSinglePayload for NestedDescription(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NestedDescription(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

unint64_t sub_18E6CB1D0()
{
  result = qword_1EAC8E778;
  if (!qword_1EAC8E778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E778);
  }

  return result;
}

unint64_t sub_18E6CB228()
{
  result = qword_1EAC8E780;
  if (!qword_1EAC8E780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E780);
  }

  return result;
}

unint64_t sub_18E6CB280()
{
  result = qword_1EAC8E788;
  if (!qword_1EAC8E788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E788);
  }

  return result;
}

unint64_t sub_18E6CB2D8()
{
  result = qword_1EAC8E790;
  if (!qword_1EAC8E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8E790);
  }

  return result;
}

uint64_t PanComponent.pointCountTimeout.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PanComponent.init(hysteresis:minimumPointCount:maximumPointCount:maximumSeparationDistance:pointCountTimeout:failOnExceedingMaximumPointCount:invertScrollingDirection:preferNonAcceleratedScrollingDelta:ignoreStationaryPoints:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, void *a13, uint64_t a14, void *a15)
{
  v66 = a12;
  v67 = a13;
  v68 = a14;
  v69 = a15;
  v19 = *(type metadata accessor for PanComponent(0, &v66) + 84);
  v20 = *(a14 + 8);
  v22 = type metadata accessor for EventSource(255, a12, v20, v21);
  WitnessTable = swift_getWitnessTable();
  v25 = type metadata accessor for DynamicCombinerComponent(255, v22, WitnessTable, v24);
  v26 = swift_getWitnessTable();
  v28 = type metadata accessor for TimeoutComponent(255, v25, v26, v27);
  v29 = swift_getWitnessTable();
  v30 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v30, v31, v32);
  v33 = swift_getWitnessTable();
  v34 = type metadata accessor for ExpirationComponent(255, v28, v29, v33);
  v35 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  v37 = *(a14 + 16);
  v66 = v34;
  v67 = v35;
  v68 = v36;
  v69 = v37;
  v38 = type metadata accessor for SeparationDistanceGate(255, &v66);
  v39 = swift_getWitnessTable();
  v40 = *(v20 + 8);
  v66 = v38;
  v67 = v39;
  v68 = v36;
  v69 = v37;
  v70 = v40;
  v41 = type metadata accessor for StationaryLocationFilter(255, &v66);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A0, &qword_18E72E760);
  v43 = swift_getWitnessTable();
  v71[0] = type metadata accessor for MapComponent(255, v41, v42, v43);
  v71[1] = type metadata accessor for ScrollPositionListener(255, a13, a15, v44);
  v65[0] = swift_getWitnessTable();
  v65[1] = &off_1EE4C9C68;
  v66 = 2;
  v67 = v71;
  v68 = v42;
  v69 = v65;
  v45 = type metadata accessor for CombinerComponent(255, &v66);
  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8E7A8, &qword_18E72E768);
  v47 = swift_getWitnessTable();
  v48 = type metadata accessor for ReduceComponent(255, v45, v46, v47);
  v49 = swift_getWitnessTable();
  v50 = sub_18E6CB950(&qword_1EAC8E7B0, &unk_18E72E9DC);
  v51 = type metadata accessor for ThresholdComponent(255, v48, v49, v50);
  v52 = swift_getWitnessTable();
  v53 = sub_18E6CB950(&qword_1EAC8E7B8, &unk_18E72E9C0);
  v66 = v51;
  v67 = v52;
  v68 = v53;
  v69 = &off_1F01A6538;
  v54 = type metadata accessor for VelocityComponent(255, &v66);
  v55 = swift_getWitnessTable();
  v56 = type metadata accessor for MapComponent(0, v54, &type metadata for PanComponentValue, v55);
  result = (*(*(v56 - 8) + 56))(a9 + v19, 1, 1, v56);
  *(a9 + 32) = a1;
  *(a9 + 40) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 48) = a5;
  *(a9 + 49) = a6;
  *(a9 + 50) = a7;
  *(a9 + 51) = a8;
  return result;
}