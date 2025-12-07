void *sub_20DA14B84@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 hf_isMatterOnlyAccessory])
  {
    if ([v3 homeKitObject])
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_20DD940A0;
        *(v5 + 32) = v3;
        *a2 = v5;
        return v3;
      }
    }
  }

  v24 = a2;
  v25 = HFAccessoryLikeObject.elements.getter();
  result = HFAccessoryLikeObject.components.getter();
  v7 = result;
  v8 = result[2];
  if (!v8)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_24:

    sub_20DA12E14(v11);
    v23 = sub_20DA0B55C(v25);

    *v24 = v23;
    return result;
  }

  v9 = 0;
  v10 = result + 5;
  v11 = MEMORY[0x277D84F90];
  while (v9 < v7[2])
  {
    v12 = *v10;
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 24);
    swift_unknownObjectRetain();
    v15 = v14(ObjectType, v12);
    result = swift_unknownObjectRelease();
    v16 = *(v15 + 16);
    v17 = v11[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_26;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v18 <= v11[3] >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v19 = v17 + v16;
      }

      else
      {
        v19 = v17;
      }

      result = sub_20D9E0398(result, v19, 1, v11);
      v11 = result;
      if (*(v15 + 16))
      {
LABEL_19:
        if ((v11[3] >> 1) - v11[2] < v16)
        {
          goto LABEL_28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438F0, &qword_20DD93F90);
        swift_arrayInitWithCopy();

        if (v16)
        {
          v20 = v11[2];
          v21 = __OFADD__(v20, v16);
          v22 = v20 + v16;
          if (v21)
          {
            goto LABEL_29;
          }

          v11[2] = v22;
        }

        goto LABEL_8;
      }
    }

    if (v16)
    {
      goto LABEL_27;
    }

LABEL_8:
    ++v9;
    v10 += 2;
    if (v8 == v9)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

id sub_20DA14E0C@<X0>(id *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v4 = *a1;
  if ([*a1 hf_isMatterOnlyAccessory])
  {
    if ([v4 homeKitObject])
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_20DD940A0;
        *(v6 + 32) = v4;
        *a3 = v6;
        return v4;
      }
    }
  }

  v8 = HFAccessoryLikeObject.components.getter();
  v9 = sub_20DA0B548(v8);

  v28 = v9;
  v10 = HFAccessoryLikeObject.elements.getter();
  v11 = sub_20DA0B55C(v10);

  sub_20DA12D24(v11);
  v27 = MEMORY[0x277D84FA0];
  v24 = v9;
  if (v9 >> 62)
  {
    goto LABEL_37;
  }

  v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v22 = v4;
  v23 = a3;
  if (v12)
  {
LABEL_7:
    v13 = 0;
    a3 = v24;
    v14 = MEMORY[0x277D84FA0];
    while (1)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        MEMORY[0x20F326680](v13, a3);
        v15 = __OFADD__(v13++, 1);
        if (v15)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v13 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        swift_unknownObjectRetain();
        v15 = __OFADD__(v13++, 1);
        if (v15)
        {
          goto LABEL_35;
        }
      }

      swift_getObjectType();
      if (HFAccessoryRepresentable.itemClass.getter())
      {
        if (a2 >> 62)
        {
          v16 = sub_20DD655B4();
          if (v16)
          {
LABEL_19:
            a3 = 0;
            while (1)
            {
              if ((a2 & 0xC000000000000001) != 0)
              {
                v17 = MEMORY[0x20F326680](a3, a2);
              }

              else
              {
                if (a3 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_34;
                }

                v17 = *(a2 + 8 * a3 + 32);
              }

              v18 = v17;
              v4 = (a3 + 1);
              if (__OFADD__(a3, 1))
              {
                break;
              }

              v19 = HFAccessoryRepresentable.accessoryType.getter();
              v20 = [v18 containsType_];

              if (v20)
              {
                goto LABEL_28;
              }

              ++a3;
              if (v4 == v16)
              {
                v18 = 0;
LABEL_28:
                a3 = v24;
                goto LABEL_31;
              }
            }

            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            v12 = sub_20DD655B4();
            v22 = v4;
            v23 = a3;
            if (!v12)
            {
              break;
            }

            goto LABEL_7;
          }
        }

        else
        {
          v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v16)
          {
            goto LABEL_19;
          }
        }

        v18 = 0;
LABEL_31:
        sub_20D9E1F34(&v26, v18);
        swift_unknownObjectRelease();

        v14 = v27;
        if (*(v27 + 16) >= 2uLL)
        {

          goto LABEL_41;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      if (v13 == v12)
      {
        goto LABEL_39;
      }
    }
  }

  v14 = MEMORY[0x277D84FA0];
  a3 = v24;
LABEL_39:
  v21 = *(v14 + 16);

  if (v21 <= 1)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_20DD940A0;
    *(a3 + 32) = v22;
    result = v22;
  }

LABEL_41:
  *v23 = a3;
  return result;
}

id static HFAccessoryListUtilities.accessoryRepresentableItem(for:valueSource:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  result = HFAccessoryRepresentable.itemClass.getter();
  if (result)
  {
    result = [swift_getObjCClassFromMetadata() itemWithAccessoryRepresentableObject:a1 valueSource:a2];
    if (result)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  return result;
}

uint64_t static HFAccessoryListUtilities.createRoomSections(with:in:sectionIdentifierBlock:)(unint64_t a1, void *a2, uint64_t (*a3)(id), uint64_t a4)
{
  v5 = v4;
  v59 = a3;
  v60 = a4;
  v58 = a2;
  v7 = sub_20DD63744();
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  MEMORY[0x28223BE20](v7);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v11 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F326680](v11, a1);
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v62 = v12;
      sub_20DA15AD4(&v63, &v62, v5, &v61);

      v15 = v61;
      v63 = v61;
      ++v11;
      if (v14 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v15 = MEMORY[0x277D84F98];
LABEL_15:
  v16 = [v58 hf_orderedRooms];
  sub_20D9D7510(0, &unk_280E01EE0, 0x277CD1D88);
  v17 = sub_20DD64FD4();

  v63 = MEMORY[0x277D84F90];
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_17;
    }

LABEL_46:
    v20 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

LABEL_45:
  v18 = sub_20DD655B4();
  if (!v18)
  {
    goto LABEL_46;
  }

LABEL_17:
  v19 = 0;
  v58 = (v17 & 0xC000000000000001);
  v54 = (v57 + 1);
  v20 = MEMORY[0x277D84F90];
  do
  {
    v21 = v19;
    while (1)
    {
      if (v58)
      {
        v22 = MEMORY[0x20F326680](v21, v17);
      }

      else
      {
        if (v21 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v22 = *(v17 + 8 * v21 + 32);
      }

      v23 = v22;
      v19 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v59(v22);
      if (v24)
      {
        break;
      }

      ++v21;
      if (v19 == v18)
      {
        goto LABEL_47;
      }
    }

    v25 = objc_allocWithZone(HFMutableItemSection);
    v26 = sub_20DD64E74();

    v53 = [v25 initWithIdentifier_];

    v27 = [v23 hf_reorderableServicesList];
    v28 = [v27 sortedHomeKitItemComparator];

    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    v30 = v29;
    v31 = [v23 uniqueIdentifier];
    v32 = v55;
    sub_20DD63714();

    v37 = *(v15 + 16);
    v57 = v30;
    if (v37 && (v38 = sub_20D9CB38C(v32, v33, v34, v35, v36), (v39 & 1) != 0))
    {
      v40 = *(*(v15 + 56) + 8 * v38);
      v52 = *v54;

      v52(v32, v56);
      v30 = v57;
    }

    else
    {
      (*v54)(v32, v56);
      v40 = MEMORY[0x277D84F90];
    }

    if (v40 >> 62)
    {
      v46 = sub_20DD655B4();
      if (v46)
      {
        v52 = v46;
        v41 = sub_20D9EF64C();

        v47 = v52;
        sub_20DA16F60(v41 + 32, v52, v40);
        v51 = v48;

        v49 = v51 == v47;
        v30 = v57;
        if (!v49)
        {
          __break(1u);

          __break(1u);
          return result;
        }
      }

      else
      {

        v41 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v41 = (v40 & 0xFFFFFFFFFFFFFF8);
    }

    v62 = v41;

    sub_20DA19ED8(&v62, sub_20DA17100, v30);

    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    v42 = sub_20DD64FB4();

    v43 = v53;
    [v53 setItems_];

    v44 = [v23 name];
    if (!v44)
    {
      sub_20DD64EB4();
      v44 = sub_20DD64E74();
    }

    [v43 setHeaderTitle_];

    v45 = v43;
    MEMORY[0x20F325F00]();
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20DD65014();
    }

    sub_20DD65054();

    v20 = v63;
  }

  while (v19 != v18);
LABEL_47:

  return v20;
}

void sub_20DA15AD4(uint64_t *a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v49 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_20DD63744();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v50 = *a2;
  v16 = [v50 latestResults];
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = v16;
  v18 = sub_20DD64DC4();

  v19 = sub_20DD64EB4();
  if (!*(v18 + 16))
  {

LABEL_10:
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_11;
  }

  v47 = v4;
  v48 = a4;
  v21 = sub_20D9CB170(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {

    a4 = v48;
    goto LABEL_10;
  }

  sub_20D9D7174(*(v18 + 56) + 32 * v21, v51);

  v24 = swift_dynamicCast();
  (*(v12 + 56))(v10, v24 ^ 1u, 1, v11);
  v25 = (*(v12 + 48))(v10, 1, v11);
  a4 = v48;
  if (v25 != 1)
  {
    (*(v12 + 32))(v14, v10, v11);
    v26 = *(v15 + 16);

    if (v26 && (v31 = sub_20D9CB38C(v14, v27, v28, v29, v30), (v32 & 1) != 0))
    {
      v51[0] = *(*(v15 + 56) + 8 * v31);
    }

    else
    {
      v51[0] = MEMORY[0x277D84F90];
    }

    v43 = v50;
    MEMORY[0x20F325F00]();
    if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20DD65014();
      a4 = v48;
    }

    sub_20DD65054();
    v44 = v51[0];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v15;
    sub_20D9D0F48(v44, v14, isUniquelyReferenced_nonNull_native);
    v46 = v52;
    (*(v12 + 8))(v14, v11);
    *a4 = v46;
    return;
  }

LABEL_11:
  sub_20D9D76EC(v10, &unk_27C843A70, &qword_20DD94260);
  v33 = sub_20DD65364();
  if (qword_280E01EC8 != -1)
  {
    swift_once();
  }

  v34 = qword_280E03EA0;
  if (os_log_type_enabled(qword_280E03EA0, v33))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v51[0] = v48;
    *v35 = 136315906;
    *(v35 + 4) = sub_20D9E0B38(0xD000000000000061, 0x800000020DD98B60, v51);
    *(v35 + 12) = 2048;
    *(v35 + 14) = 174;
    *(v35 + 22) = 2080;
    v37 = sub_20DD65B04();
    v39 = sub_20D9E0B38(v37, v38, v51);

    *(v35 + 24) = v39;
    *(v35 + 32) = 2112;
    v40 = v50;
    *(v35 + 34) = v50;
    *v36 = v40;
    v41 = v40;
    _os_log_impl(&dword_20D9BF000, v34, v33, "(%s:%ld) %s encountered item with no room identifier: %@", v35, 0x2Au);
    sub_20D9D76EC(v36, &unk_27C843630, &qword_20DD94080);
    MEMORY[0x20F327D10](v36, -1, -1);
    v42 = v48;
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v42, -1, -1);
    MEMORY[0x20F327D10](v35, -1, -1);
  }

  *a4 = v15;
}

uint64_t sub_20DA16018(void *a1, void *a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = sub_20DD65964();
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v6 = sub_20DD65964();
  v7 = (*(a3 + 16))(a3, v5, v6);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t static HFAccessoryListUtilities.createAccessoryCategorySections(with:in:sectionIdentifierBlock:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v48 = a4;
  v4 = a1;
  v61 = MEMORY[0x277D84F98];
  v60 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v5)
  {
    v6 = 0;
    v54 = v4 & 0xC000000000000001;
    v51 = v4 & 0xFFFFFFFFFFFFFF8;
    v52 = v4;
    v50 = v4 + 32;
    v7 = MEMORY[0x277D84F98];
    v53 = v5;
    while (1)
    {
      if (v54)
      {
        v9 = MEMORY[0x20F326680](v6, v52);
      }

      else
      {
        if (v6 >= *(v51 + 16))
        {
          goto LABEL_45;
        }

        v9 = *(v50 + 8 * v6);
      }

      v10 = v9;
      v11 = __OFADD__(v6, 1);
      v12 = v6 + 1;
      if (v11)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v5 = sub_20DD655B4();
        goto LABEL_3;
      }

      v57 = v7;
      v13 = [ObjCClassFromMetadata sortedAccessoryTypeGroups];
      sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
      v14 = sub_20DD64FD4();

      v56 = v12;
      if (v14 >> 62)
      {
        v15 = sub_20DD655B4();
        if (v15)
        {
LABEL_14:
          v16 = 0;
          while (1)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x20F326680](v16, v14);
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_43;
              }

              v17 = *(v14 + 8 * v16 + 32);
            }

            v18 = v17;
            v19 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

            v20 = [v10 accessoryRepresentableObject];
            swift_getObjectType();
            v4 = HFAccessoryRepresentable.accessoryType.getter();
            swift_unknownObjectRelease();
            v21 = [v18 containsType_];

            if (v21)
            {
              break;
            }

            ++v16;
            if (v19 == v15)
            {
              goto LABEL_29;
            }
          }

          if (v57[2] && (v22 = sub_20D9CB6DC(v18), (v23 & 1) != 0))
          {
            v59 = *(v57[7] + 8 * v22);

            v24 = v10;
            MEMORY[0x20F325F00]();
            if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20DD65014();
            }

            sub_20DD65054();
            v4 = v59;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v58[0] = v57;
            sub_20D9D1160(v59, v18, isUniquelyReferenced_nonNull_native);

            v7 = v57;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
            v4 = swift_allocObject();
            *(v4 + 16) = xmmword_20DD940A0;
            *(v4 + 32) = v10;
            v8 = swift_isUniquelyReferenced_nonNull_native();
            v59 = v57;
            sub_20D9D1160(v4, v18, v8);

            v7 = v57;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_14;
        }
      }

LABEL_29:

      v26 = v10;
      MEMORY[0x20F325F00]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v4 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_20DD65014();
      }

      sub_20DD65054();

      v7 = v57;
LABEL_6:
      v6 = v56;
      if (v56 == v53)
      {
        v61 = v7;
        break;
      }
    }
  }

  v59 = 0;
  v27 = [ObjCClassFromMetadata sortedAccessoryTypeGroups];
  sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
  v28 = sub_20DD64FD4();

  v29 = sub_20DA17480(v28, v47, v49, &v61, &v60, &v59);

  v30 = v60;
  if (v60 >> 62)
  {
    if (sub_20DD655B4())
    {
      goto LABEL_35;
    }

LABEL_48:
    v42 = v59;
    goto LABEL_49;
  }

  if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

LABEL_35:
  v31 = sub_20DD65384();
  sub_20D9D7510(0, &qword_280E01EC0, 0x277D86200);
  v32 = sub_20DD65474();
  if (os_log_type_enabled(v32, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v58[0] = v34;
    *v33 = 136315650;
    *(v33 + 4) = sub_20D9E0B38(0xD000000000000040, 0x800000020DD98A80, v58);
    *(v33 + 12) = 2048;
    if (v30 >> 62)
    {
      v35 = sub_20DD655B4();
    }

    else
    {
      v35 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v33 + 14) = v35;
    *(v33 + 22) = 2080;
    v36 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);

    v38 = MEMORY[0x20F325F40](v37, v36);
    v40 = v39;

    v41 = sub_20D9E0B38(v38, v40, v58);

    *(v33 + 24) = v41;
    _os_log_impl(&dword_20D9BF000, v32, v31, "%s Found %ld item(s) without an identified category: %s", v33, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v34, -1, -1);
    MEMORY[0x20F327D10](v33, -1, -1);
  }

  v42 = v59;
  if (v59)
  {
    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);

    v43 = v42;
    v44 = sub_20DD64FB4();

    [v43 setItems_];
  }

LABEL_49:

  return v29;
}

uint64_t sub_20DA16908(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_20DD64EB4();

  return v4;
}

uint64_t sub_20DA169E4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_20DD655B4();
LABEL_9:
  result = sub_20DD65734();
  *v2 = result;
  return result;
}

uint64_t sub_20DA16A84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20DD655B4();
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
      result = sub_20DD655B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20DA1A9BC(&qword_27C8441E8, &qword_27C8441E0, &qword_20DD949E8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441E0, &qword_20DD949E8);
            v9 = sub_20D9EAD84(v13, i, a3);
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
        sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
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

uint64_t sub_20DA16C24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20DD655B4();
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
      result = sub_20DD655B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20DA1A9BC(&qword_27C8441C8, &qword_27C8441C0, &qword_20DD949E0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441C0, &qword_20DD949E0);
            v9 = sub_20D9EAE84(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
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

uint64_t sub_20DA16DC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20DD655B4();
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
      result = sub_20DD655B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20DA1A9BC(&qword_27C844190, &qword_27C8446E0, &qword_20DD95890);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8446E0, &qword_20DD95890);
            v9 = sub_20D9EAE04(v13, i, a3);
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
        sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
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

uint64_t sub_20DA16F60(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20DD655B4();
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
      result = sub_20DD655B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20DA1A9BC(&unk_27C8441B0, &qword_27C8441A8, &qword_20DD949D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441A8, &qword_20DD949D8);
            v9 = sub_20D9EAE04(v13, i, a3);
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
        sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
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

unint64_t sub_20DA17108(unint64_t isUniquelyReferenced_nonNull_bridgeObject, unint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v27)
  {
    v5 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = i;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x20F326680](v5, v29);
      }

      else
      {
        if (v5 >= *(v33 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v5);
      }

      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        break;
      }

      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      sub_20DA14E0C(&v39, a2, &v38);
      if (v3)
      {
        goto LABEL_40;
      }

      v9 = v38;
      v7 = (v38 >> 62);
      if (v38 >> 62)
      {
        v10 = sub_20DD655B4();
      }

      else
      {
        v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v6 >> 62;
      if (v6 >> 62)
      {
        v26 = sub_20DD655B4();
        v13 = v26 + v10;
        if (__OFADD__(v26, v10))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v6;
        }
      }

      else
      {
        v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v14 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_20DD655B4();
        goto LABEL_21;
      }

      if (v11)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_20DD65734();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v7)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_20DD655B4();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17)
      {
        if (((v16 >> 1) - v15) < v36)
        {
          goto LABEL_44;
        }

        v19 = v14 + 8 * v15 + 32;
        v30 = v14;
        if (v7)
        {
          if (v17 < 1)
          {
            goto LABEL_46;
          }

          sub_20DA1A9BC(&qword_27C8441C8, &qword_27C8441C0, &qword_20DD949E0);
          for (j = 0; j != v17; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8441C0, &qword_20DD949E0);
            v21 = sub_20D9EAE84(v37, j, v9);
            v23 = *v22;
            swift_unknownObjectRetain();
            (v21)(v37, 0);
            *(v19 + 8 * j) = v23;
          }
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843D48, &qword_20DD94240);
          swift_arrayInitWithCopy();
        }

        v3 = 0;
        if (v36 >= 1)
        {
          v24 = *(v30 + 16);
          v8 = __OFADD__(v24, v36);
          v25 = v24 + v36;
          if (v8)
          {
            goto LABEL_45;
          }

          *(v30 + 16) = v25;
        }
      }

      else
      {

        if (v36 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v5 == v31)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_20DD655B4();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_20DA17480(unint64_t a1, uint64_t (*a2)(id), uint64_t a3, uint64_t *a4, uint64_t a5, void **a6)
{
  v33 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_28:
    v32 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a6;
    v28 = sub_20DD655B4();
    a6 = v27;
    v8 = v28;
    if (v28)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v32 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v29 = a6;
  v9 = 0;
  result = MEMORY[0x277D84F90];
  do
  {
    v30 = result;
    for (i = v9; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F326680](i, a1);
      }

      else
      {
        if (i >= *(v32 + 16))
        {
          goto LABEL_27;
        }

        v13 = *(a1 + 8 * i + 32);
      }

      v14 = v13;
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      a2(v13);
      if (v15)
      {
        break;
      }

LABEL_15:
      if (*(*a4 + 16) && (sub_20D9CB6DC(v14), (v17 & 1) != 0))
      {
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
      }

      sub_20DA12F18(v12);

      if (v9 == v8)
      {
        return v30;
      }
    }

    if (!*(*a4 + 16) || (sub_20D9CB6DC(v14), (v16 & 1) == 0))
    {

      goto LABEL_15;
    }

    v18 = objc_allocWithZone(HFMutableItemSection);

    v19 = sub_20DD64E74();

    v20 = [v18 initWithIdentifier_];

    v21 = [v14 name];
    [v20 setHeaderTitle_];

    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    v22 = sub_20DD64FB4();

    [v20 setItems_];

    sub_20D9D7510(0, &qword_27C8441A0, 0x277D82BB8);
    v23 = [objc_opt_self() otherAccessoryTypeGroup];
    v24 = sub_20DD65454();

    if (v24)
    {
      v25 = *v29;
      *v29 = v20;
      v26 = v20;

      v14 = v25;
    }

    MEMORY[0x20F325F00]();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20DD65014();
    }

    sub_20DD65054();
    result = v33;
  }

  while (v9 != v8);
  return result;
}

uint64_t sub_20DA177D0(unint64_t isUniquelyReferenced_nonNull_native)
{
  v48 = sub_20DD63744();
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v3 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20DD655B4())
  {
    v5 = 0;
    v6 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v7 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v44[1] = v45 + 16;
    v47 = (v45 + 8);
    v8 = MEMORY[0x277D84F98];
    v46 = isUniquelyReferenced_nonNull_native;
    v44[0] = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    while (v6)
    {
      v9 = MEMORY[0x20F326680](v5, isUniquelyReferenced_nonNull_native);
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_22;
      }

LABEL_9:
      v49 = v10;
      swift_getObjectType();

      v11 = [HFAccessoryRepresentable.homeKitObject.getter() uniqueIdentifier];
      swift_unknownObjectRelease();
      sub_20DD63714();

      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v8;
      v16 = sub_20D9CB38C(v3, v12, v13, v14, v15);
      v21 = *(v8 + 16);
      v22 = (v17 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_24;
      }

      v25 = v17;
      if (*(v8 + 24) < v24)
      {
        sub_20D9CE0BC(v24, isUniquelyReferenced_nonNull_native, v18, v19, v20);
        v16 = sub_20D9CB38C(v3, v26, v27, v28, v29);
        if ((v25 & 1) != (v30 & 1))
        {
          result = sub_20DD659E4();
          __break(1u);
          return result;
        }

LABEL_14:
        v31 = v50;
        if (v25)
        {
          goto LABEL_4;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v39 = v16;
      sub_20D9D2C88(v16, v17, v18, v19, v20);
      v16 = v39;
      v31 = v50;
      if (v25)
      {
LABEL_4:
        *(v31[7] + 8 * v16) = v9;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        (*v47)(v3, v48);
        goto LABEL_5;
      }

LABEL_15:
      v32 = v6;
      v33 = i;
      v31[(v16 >> 6) + 8] |= 1 << v16;
      v34 = v45;
      v35 = v16;
      v36 = v48;
      (*(v45 + 16))(v31[6] + *(v45 + 72) * v16, v3, v48);
      *(v31[7] + 8 * v35) = v9;

      swift_unknownObjectRelease();
      isUniquelyReferenced_nonNull_native = v3;
      (*(v34 + 8))(v3, v36);
      v37 = v31[2];
      v23 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v23)
      {
        goto LABEL_25;
      }

      v31[2] = v38;
      i = v33;
      v6 = v32;
      v7 = v44[0];
LABEL_5:
      ++v5;
      v8 = v31;
      isUniquelyReferenced_nonNull_native = v46;
      if (v49 == i)
      {
        goto LABEL_28;
      }
    }

    if (v5 >= *(v7 + 16))
    {
      goto LABEL_23;
    }

    v9 = *(isUniquelyReferenced_nonNull_native + 8 * v5 + 32);
    swift_unknownObjectRetain();
    v10 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v31 = MEMORY[0x277D84F98];
LABEL_28:
  v40 = v31[2];
  if (!v40)
  {
    goto LABEL_31;
  }

  v41 = sub_20D9EF64C();
  v42 = sub_20D9EF640();
  sub_20D9C51CC(v50);
  if (v42 != v40)
  {
    __break(1u);
LABEL_31:

    return MEMORY[0x277D84F90];
  }

  return v41;
}

uint64_t sub_20DA17BBC(char *__dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 >= v14 >> 3)
  {
    if (a4 != __src || &__src[8 * v15] <= a4)
    {
      memmove(a4, __src, 8 * v15);
    }

    v16 = &v6[8 * v15];
    if (v13 >= 8 && v8 > v9)
    {
LABEL_25:
      v19 = v8 - 8;
      v7 -= 8;
      v20 = v16;
      do
      {
        v21 = v7 + 8;
        v22 = *(v20 - 1);
        v20 -= 8;
        if ((*(a5 + 16))(a5, v22, *v19) != 1)
        {
          if (v21 != v8)
          {
            *v7 = *v19;
          }

          if (v16 <= v6 || (v8 -= 8, v19 <= v9))
          {
            v8 = v19;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v21 != v16)
        {
          *v7 = *v20;
        }

        v7 -= 8;
        v16 = v20;
      }

      while (v20 > v6);
      v16 = v20;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v12] <= a4)
    {
      memmove(a4, __dst, 8 * v12);
    }

    v16 = &v6[8 * v12];
    if (v10 >= 8 && v8 < v7)
    {
      while ((*(a5 + 16))(a5, *v8, *v6) == 1)
      {
        v17 = v6;
        v18 = v9 == v6;
        v6 += 8;
        if (!v18)
        {
          goto LABEL_16;
        }

LABEL_17:
        v9 += 8;
        if (v6 >= v16 || v8 >= v7)
        {
          goto LABEL_19;
        }
      }

      v17 = v8;
      v18 = v9 == v8;
      v8 += 8;
      if (v18)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v9 = *v17;
      goto LABEL_17;
    }

LABEL_19:
    v8 = v9;
  }

LABEL_36:
  if (v8 != v6 || v8 >= &v6[(v16 - v6 + (v16 - v6 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v8, v6, 8 * ((v16 - v6) / 8));
  }

  return 1;
}

void sub_20DA17E00(uint64_t *a1, char *a2, uint64_t *a3, void *aBlock)
{
  v5 = a1;
  v6 = *a1;
  _Block_copy(aBlock);
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_20DA73550(v22);
  }

  v18 = v5;
  *v5 = v22;
  v7 = v22 + 16;
  v8 = *(v22 + 2);
  if (v8 < 2)
  {
LABEL_9:
    _Block_release(aBlock);
    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v8];
      v11 = *v10;
      v12 = v7;
      v13 = &v7[16 * v8];
      v14 = *(v13 + 1);
      __dst = (v9 + 8 * *v10);
      v15 = (v9 + 8 * *v13);
      v23 = (v9 + 8 * v14);
      v5 = aBlock;
      _Block_copy(aBlock);
      sub_20DA17BBC(__dst, v15, v23, a2, aBlock);
      _Block_release(aBlock);
      if (v4)
      {
        *v18 = v22;
        _Block_release(aBlock);
        return;
      }

      if (v14 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v8 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v14;
      v17 = v16 - v8;
      if (v16 < v8)
      {
        goto LABEL_13;
      }

      v7 = v12;
      v8 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    _Block_release(aBlock);
    *v18 = v22;
    _Block_release(aBlock);
    __break(1u);
  }
}

void sub_20DA17FB8(char **a1, int a2, uint64_t *a3, uint64_t a4, void *aBlock)
{
  v5 = aBlock;
  _Block_copy(aBlock);
  v102 = MEMORY[0x277D84F90];
  v99 = a3;
  v8 = a3[1];
  _Block_copy(v5);
  _Block_copy(v5);
  _Block_copy(v5);
  _Block_copy(v5);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v92 = a4;
    aBlocka = v5;
    while (1)
    {
      if (v9 + 1 >= v8)
      {
        v8 = v9 + 1;
      }

      else
      {
        v11 = v10;
        v12 = 8 * v9;
        v13 = (*v99 + 8 * v9);
        v15 = *v13;
        v14 = v13 + 2;
        v16 = (*(v5 + 2))(v5, *(*v99 + 8 * (v9 + 1)), v15);
        v17 = v9 + 2;
        while (v8 != v17)
        {
          v18 = (*(v5 + 2))(v5, *v14, *(v14 - 1)) == 1;
          ++v17;
          ++v14;
          if ((((v16 != 1) ^ v18) & 1) == 0)
          {
            v8 = v17 - 1;
            break;
          }
        }

        a4 = v92;
        if (v16 != 1)
        {
          if (v8 < v9)
          {
            goto LABEL_115;
          }

          if (v9 < v8)
          {
            v19 = 8 * v8 - 8;
            v20 = v8;
            v21 = v9;
            do
            {
              if (v21 != --v20)
              {
                v23 = *v99;
                if (!*v99)
                {
                  goto LABEL_120;
                }

                v22 = *(v23 + v12);
                *(v23 + v12) = *(v23 + v19);
                *(v23 + v19) = v22;
              }

              ++v21;
              v19 -= 8;
              v12 += 8;
            }

            while (v21 < v20);
          }
        }

        v10 = v11;
      }

      v24 = v99[1];
      if (v8 >= v24)
      {
        v27 = v8;
        if (v8 < v9)
        {
          goto LABEL_113;
        }
      }

      else
      {
        if (__OFSUB__(v8, v9))
        {
          goto LABEL_114;
        }

        v25 = v8;
        if (v8 - v9 >= a4)
        {
          goto LABEL_29;
        }

        if (__OFADD__(v9, a4))
        {
          goto LABEL_116;
        }

        if (v9 + a4 >= v24)
        {
          v26 = v99[1];
        }

        else
        {
          v26 = v9 + a4;
        }

        if (v26 < v9)
        {
LABEL_117:
          __break(1u);
LABEL_118:
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          __break(1u);
LABEL_119:
          v5 = aBlocka;
          _Block_release(aBlocka);
          _Block_release(aBlocka);
          _Block_release(aBlocka);
          _Block_release(aBlocka);
          _Block_release(aBlocka);
          _Block_release(aBlocka);
          __break(1u);
LABEL_120:
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          __break(1u);
LABEL_121:
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          __break(1u);
LABEL_122:
          _Block_release(v91);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          _Block_release(v5);
          __break(1u);
          return;
        }

        if (v25 == v26)
        {
LABEL_29:
          v27 = v25;
          if (v25 < v9)
          {
            goto LABEL_113;
          }
        }

        else
        {
          v97 = v10;
          v81 = *v99;
          v82 = *v99 + 8 * v25 - 8;
          v83 = v9 - v25;
          do
          {
            v84 = v25;
            v85 = *(v81 + 8 * v25);
            v86 = v83;
            v87 = v82;
            do
            {
              if ((*(v5 + 2))(v5, v85, *v87) == 1)
              {
                break;
              }

              if (!v81)
              {
                goto LABEL_118;
              }

              v88 = *v87;
              v85 = v87[1];
              *v87 = v85;
              v87[1] = v88;
              --v87;
            }

            while (!__CFADD__(v86++, 1));
            v25 = v84 + 1;
            v82 += 8;
            --v83;
          }

          while (v84 + 1 != v26);
          v27 = v26;
          v10 = v97;
          if (v26 < v9)
          {
            goto LABEL_113;
          }
        }
      }

      v94 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_20D9E014C(0, *(v10 + 2) + 1, 1, v10);
      }

      v29 = *(v10 + 2);
      v28 = *(v10 + 3);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v10 = sub_20D9E014C((v28 > 1), v29 + 1, 1, v10);
      }

      *(v10 + 2) = v30;
      v31 = v10 + 32;
      v32 = &v10[16 * v29 + 32];
      *v32 = v9;
      *(v32 + 1) = v94;
      v98 = *a1;
      if (!*a1)
      {
        goto LABEL_121;
      }

      if (v29)
      {
        v95 = v10 + 32;
        v96 = v10;
        while (1)
        {
          v33 = v30 - 1;
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v34 = *(v10 + 4);
            v35 = *(v10 + 5);
            v44 = __OFSUB__(v35, v34);
            v36 = v35 - v34;
            v37 = v44;
LABEL_52:
            if (v37)
            {
              goto LABEL_103;
            }

            v50 = &v10[16 * v30];
            v52 = *v50;
            v51 = *(v50 + 1);
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_105;
            }

            v56 = &v31[16 * v33];
            v58 = *v56;
            v57 = *(v56 + 1);
            v44 = __OFSUB__(v57, v58);
            v59 = v57 - v58;
            if (v44)
            {
              goto LABEL_108;
            }

            if (__OFADD__(v54, v59))
            {
              goto LABEL_110;
            }

            if (v54 + v59 >= v36)
            {
              if (v36 < v59)
              {
                v33 = v30 - 2;
              }

              goto LABEL_74;
            }

            goto LABEL_67;
          }

          if (v30 < 2)
          {
            goto LABEL_111;
          }

          v60 = &v10[16 * v30];
          v62 = *v60;
          v61 = *(v60 + 1);
          v44 = __OFSUB__(v61, v62);
          v54 = v61 - v62;
          v55 = v44;
LABEL_67:
          if (v55)
          {
            goto LABEL_107;
          }

          v63 = &v31[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v44 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v44)
          {
            goto LABEL_109;
          }

          if (v66 < v54)
          {
            goto LABEL_3;
          }

LABEL_74:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
            goto LABEL_117;
          }

          v71 = *v99;
          if (!*v99)
          {
            goto LABEL_119;
          }

          v72 = &v31[16 * v33 - 16];
          v73 = *v72;
          v74 = v33;
          v75 = &v31[16 * v33];
          v76 = *(v75 + 1);
          v77 = (v71 + 8 * *v72);
          v78 = (v71 + 8 * *v75);
          v79 = (v71 + 8 * v76);
          v5 = aBlocka;
          _Block_copy(aBlocka);
          sub_20DA17BBC(v77, v78, v79, v98, aBlocka);
          if (v101)
          {
            _Block_release(aBlocka);
            goto LABEL_96;
          }

          _Block_release(aBlocka);
          v10 = v96;
          if (v76 < v73)
          {
            goto LABEL_98;
          }

          v80 = *(v96 + 2);
          if (v74 > v80)
          {
            goto LABEL_99;
          }

          *v72 = v73;
          *(v72 + 1) = v76;
          if (v74 >= v80)
          {
            goto LABEL_100;
          }

          v30 = v80 - 1;
          memmove(v75, v75 + 16, 16 * (v80 - 1 - v74));
          *(v96 + 2) = v80 - 1;
          v5 = aBlocka;
          v31 = v95;
          if (v80 <= 2)
          {
            goto LABEL_3;
          }
        }

        v38 = &v31[16 * v30];
        v39 = *(v38 - 8);
        v40 = *(v38 - 7);
        v44 = __OFSUB__(v40, v39);
        v41 = v40 - v39;
        if (v44)
        {
          goto LABEL_101;
        }

        v43 = *(v38 - 6);
        v42 = *(v38 - 5);
        v44 = __OFSUB__(v42, v43);
        v36 = v42 - v43;
        v37 = v44;
        if (v44)
        {
          goto LABEL_102;
        }

        v45 = &v10[16 * v30];
        v47 = *v45;
        v46 = *(v45 + 1);
        v44 = __OFSUB__(v46, v47);
        v48 = v46 - v47;
        if (v44)
        {
          goto LABEL_104;
        }

        v44 = __OFADD__(v36, v48);
        v49 = v36 + v48;
        if (v44)
        {
          goto LABEL_106;
        }

        if (v49 >= v41)
        {
          v67 = &v31[16 * v33];
          v69 = *v67;
          v68 = *(v67 + 1);
          v44 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v44)
          {
            goto LABEL_112;
          }

          if (v36 < v70)
          {
            v33 = v30 - 2;
          }

          goto LABEL_74;
        }

        goto LABEL_52;
      }

LABEL_3:
      v8 = v99[1];
      v9 = v94;
      a4 = v92;
      if (v94 >= v8)
      {
        v102 = v10;
        break;
      }
    }
  }

  v90 = *a1;
  v91 = v5;
  if (!*a1)
  {
    goto LABEL_122;
  }

  _Block_copy(v5);
  sub_20DA17E00(&v102, v90, v99, v5);
  _Block_release(v5);
LABEL_96:

  _Block_release(v5);
  _Block_release(v5);
  _Block_release(v5);
  _Block_release(v5);
  _Block_release(v5);
}

void sub_20DA186A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (**a5)(void, void, void))
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_5:
    v11 = *(v8 + 8 * v6);
    v12 = v10;
    v13 = v9;
    while (1)
    {
      if (a5[2](a5, v11, *v13) == 1)
      {
LABEL_4:
        ++v6;
        v9 += 8;
        --v10;
        if (v6 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v8)
      {
        break;
      }

      v14 = *v13;
      v11 = v13[1];
      *v13 = v11;
      v13[1] = v14;
      --v13;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    _Block_release(a5);
    __break(1u);
  }
}

void sub_20DA1876C(uint64_t *a1, void *aBlock)
{
  v4 = a1[1];
  _Block_copy(aBlock);
  _Block_copy(aBlock);
  v5 = sub_20DD65924();
  if (v5 >= v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      v9 = aBlock;
      if (!v4)
      {
LABEL_11:
        _Block_release(v9);
        _Block_release(aBlock);
        return;
      }

      _Block_copy(aBlock);
      sub_20DA186A0(0, v4, 1, a1, aBlock);
      _Block_release(aBlock);
LABEL_10:
      v9 = aBlock;
      goto LABEL_11;
    }
  }

  else
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
        v8 = sub_20DD65034();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      _Block_copy(aBlock);
      sub_20DA17FB8(v10, &v11, a1, v6, aBlock);
      _Block_release(aBlock);
      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      goto LABEL_10;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_20DA188D0(uint64_t *a1, void *aBlock)
{
  v4 = *a1;
  _Block_copy(aBlock);
  _Block_copy(aBlock);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_20DA73C60(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v7[0] = v4 + 32;
  v7[1] = v6;
  _Block_copy(aBlock);
  sub_20DA1876C(v7, aBlock);
  _Block_release(aBlock);
  sub_20DD65764();
  _Block_release(aBlock);
  _Block_release(aBlock);
}

uint64_t sub_20DA18984(unint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v59 = a2;
  v7 = sub_20DD63744();
  v8 = *(v7 - 8);
  v54 = v7;
  v55 = v8;
  MEMORY[0x28223BE20](v7);
  v56 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a4; v10; i = a4)
  {
    v11 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F326680](v11, a1);
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      a4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v61 = v12;
      sub_20DA15AD4(&v62, &v61, a3, &v60);

      v14 = v60;
      v62 = v60;
      ++v11;
      if (a4 == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    v10 = sub_20DD655B4();
  }

  v14 = MEMORY[0x277D84F98];
LABEL_15:
  v15 = [v59 hf_orderedRooms];
  sub_20D9D7510(0, &unk_280E01EE0, 0x277CD1D88);
  v16 = sub_20DD64FD4();

  v62 = MEMORY[0x277D84F90];
  v17 = i;
  v18 = v16 & 0xFFFFFFFFFFFFFF8;
  if (!(v16 >> 62))
  {
    v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_17;
    }

LABEL_46:
    v21 = MEMORY[0x277D84F90];
    goto LABEL_47;
  }

LABEL_45:
  v19 = sub_20DD655B4();
  if (!v19)
  {
    goto LABEL_46;
  }

LABEL_17:
  v20 = 0;
  v58 = v17 + 16;
  v59 = (v16 & 0xC000000000000001);
  ++v55;
  v21 = MEMORY[0x277D84F90];
  do
  {
    v22 = v20;
    while (1)
    {
      if (v59)
      {
        v23 = MEMORY[0x20F326680](v22, v16);
      }

      else
      {
        if (v22 >= *(v18 + 16))
        {
          goto LABEL_44;
        }

        v23 = *(v16 + 8 * v22 + 32);
      }

      v24 = v23;
      v20 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v25 = (*(v17 + 16))(v17, v23);
      if (v25)
      {
        break;
      }

      ++v22;
      if (v20 == v19)
      {
        goto LABEL_47;
      }
    }

    v52 = v19;
    v53 = v18;
    v26 = v25;
    sub_20DD64EB4();

    v27 = objc_allocWithZone(HFMutableItemSection);
    v28 = sub_20DD64E74();

    v29 = [v27 initWithIdentifier_];

    v30 = [v24 hf_reorderableServicesList];
    v31 = [v30 sortedHomeKitItemComparator];

    _Block_copy(v31);
    v32 = [v24 uniqueIdentifier];
    v33 = v56;
    sub_20DD63714();

    if (*(v14 + 16) && (v38 = sub_20D9CB38C(v33, v34, v35, v36, v37), (v39 & 1) != 0))
    {
      v40 = *(*(v14 + 56) + 8 * v38);
      v41 = *v55;

      v41(v56, v54);
    }

    else
    {
      (*v55)(v33, v54);
      v40 = MEMORY[0x277D84F90];
    }

    if (v40 >> 62)
    {
      v46 = sub_20DD655B4();
      if (v46)
      {
        v47 = v46;
        v42 = sub_20D9EF64C();

        sub_20DA16F60(v42 + 32, v47, v40);
        v51 = v48;

        if (v51 != v47)
        {
          __break(1u);
          _Block_release(v31);
          _Block_release(v31);

          __break(1u);
          return result;
        }
      }

      else
      {
        v42 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v42 = (v40 & 0xFFFFFFFFFFFFFF8);
    }

    v61 = v42;
    _Block_copy(v31);
    sub_20DA188D0(&v61, v31);
    _Block_release(v31);

    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    v43 = sub_20DD64FB4();

    [v29 setItems_];

    v44 = [v24 name];
    if (!v44)
    {
      sub_20DD64EB4();
      v44 = sub_20DD64E74();
    }

    [v29 setHeaderTitle_];

    v45 = v29;
    MEMORY[0x20F325F00]();
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20DD65014();
    }

    sub_20DD65054();

    _Block_release(v31);
    _Block_release(v31);

    v21 = v62;
    v19 = v52;
    v18 = v53;
    v17 = i;
  }

  while (v20 != v52);
LABEL_47:

  return v21;
}

uint64_t sub_20DA18F80(void **__src, void **__dst, void **a3, void **a4, uint64_t (*a5)(void *, void *))
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src;
  v9 = __dst - __src;
  v10 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v10 = __dst - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - __dst;
  v13 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v13 = a3 - __dst;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, 8 * v14);
      v7 = __dst;
    }

    v51 = &v5[v14];
    if (v12 < 8)
    {
      v28 = v7;
      goto LABEL_39;
    }

    v30 = v7;
    if (v7 <= v8)
    {
      v28 = v7;
      goto LABEL_39;
    }

    v43 = v8;
    v45 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    do
    {
      v44 = v30;
      v31 = v30 - 1;
      --v6;
      v32 = v51;
      while (1)
      {
        v33 = v5;
        v34 = *--v32;
        v35 = v6 + 1;
        v8 = v31;
        v36 = *v31;
        v50 = v45;
        v48 = v45;
        v49[0] = v34;
        v47[0] = v36;
        v37 = v34;
        v38 = v36;
        v39 = v37;
        v40 = v38;
        v41 = a5(v49, v47);
        __swift_destroy_boxed_opaque_existential_0(v47);
        __swift_destroy_boxed_opaque_existential_0(v49);

        if (v41 != 1)
        {
          break;
        }

        v5 = v33;
        if (v35 != v51)
        {
          *v6 = *v32;
        }

        --v6;
        v51 = v32;
        v31 = v8;
        if (v32 <= v33)
        {
          v51 = v32;
          v28 = v44;
          goto LABEL_39;
        }
      }

      v5 = v33;
      if (v35 != v44)
      {
        *v6 = *v8;
      }

      if (v51 <= v33)
      {
        break;
      }

      v30 = v8;
    }

    while (v8 > v43);
    goto LABEL_35;
  }

  if (a4 != __src || &__src[v11] <= a4)
  {
    memmove(a4, __src, 8 * v11);
    v7 = __dst;
  }

  v51 = &v5[v11];
  if (v9 < 8 || v7 >= v6)
  {
LABEL_35:
    v28 = v8;
    goto LABEL_39;
  }

  v16 = v7;
  v17 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
  do
  {
    v18 = *v16;
    v19 = *v5;
    v50 = v17;
    v48 = v17;
    v49[0] = v18;
    v47[0] = v19;
    v20 = v5;
    v21 = v18;
    v22 = v19;
    v23 = v21;
    v24 = v22;
    v25 = a5(v49, v47);
    __swift_destroy_boxed_opaque_existential_0(v47);
    __swift_destroy_boxed_opaque_existential_0(v49);

    if (v25 == 1)
    {
      v26 = v20;
      v5 = v20 + 1;
      if (v8 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v8 = *v26;
      goto LABEL_17;
    }

    v26 = v16;
    v27 = v8 == v16++;
    v5 = v20;
    if (!v27)
    {
      goto LABEL_16;
    }

LABEL_17:
    ++v8;
  }

  while (v5 < v51 && v16 < v6);
  v28 = v8;
LABEL_39:
  if (v28 != v5 || v28 >= (v5 + ((v51 - v5 + (v51 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v28, v5, 8 * (v51 - v5));
  }

  return 1;
}

uint64_t sub_20DA19304(void **a1, void **a2, uint64_t *a3, uint64_t (*a4)(void *, void *), uint64_t a5)
{
  v6 = v5;
  v7 = a1;
  v8 = *a1;

  v26 = v8;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v26 = sub_20DA73550(v26);
  }

  v22 = v7;
  *v7 = v26;
  v9 = v26 + 16;
  v10 = *(v26 + 2);
  if (v10 < 2)
  {
LABEL_9:

    *v22 = v26;
    return 1;
  }

  else
  {
    while (1)
    {
      v11 = *a3;
      if (!*a3)
      {
        break;
      }

      v12 = v6;
      v13 = &v26[16 * v10];
      v14 = *v13;
      v15 = v9;
      v16 = &v9[16 * v10];
      v17 = *(v16 + 1);
      __src = (v11 + 8 * *v13);
      v18 = (v11 + 8 * *v16);
      v7 = (v11 + 8 * v17);

      sub_20DA18F80(__src, v18, v7, a2, a4);
      v6 = v12;

      if (v12)
      {
        *v22 = v26;

        return 1;
      }

      if (v17 < v14)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v19 = *v15;
      if (v10 - 2 >= *v15)
      {
        goto LABEL_13;
      }

      *v13 = v14;
      *(v13 + 1) = v17;
      v20 = v19 - v10;
      if (v19 < v10)
      {
        goto LABEL_14;
      }

      v9 = v15;
      v10 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v15 = v10;
      if (v10 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v22 = v26;
    __break(1u);
  }

  return result;
}

uint64_t sub_20DA194AC(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void *, void *), void **a6)
{
  v7 = v6;
  v134 = MEMORY[0x277D84F90];
  v9 = a3[1];
  if (v9 >= 1)
  {
    swift_retain_n();
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    v128 = a6;
    while (1)
    {
      v12 = v10;
      v13 = v10 + 1;
      if (v10 + 1 < v9)
      {
        v114 = v7;
        v14 = *(*a3 + 8 * v13);
        v15 = 8 * v10;
        v16 = (*a3 + 8 * v10);
        v18 = *v16;
        v17 = v16 + 2;
        v117 = v10;
        v19 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
        v133 = v19;
        v132[0] = v14;
        v131 = v19;
        v130[0] = v18;
        v20 = v14;
        v21 = v18;
        v22 = v20;
        v23 = v21;
        v124 = a5(v132, v130);
        __swift_destroy_boxed_opaque_existential_0(v130);
        __swift_destroy_boxed_opaque_existential_0(v132);

        v24 = v117 + 2;
        while (1)
        {
          v25 = v9;
          if (v9 == v24)
          {
            break;
          }

          v27 = *(v17 - 1);
          v26 = *v17;
          v133 = v19;
          v132[0] = v26;
          v131 = v19;
          v130[0] = v27;
          v28 = v26;
          v29 = v27;
          v30 = v28;
          v31 = v29;
          v32 = a5(v132, v130);
          __swift_destroy_boxed_opaque_existential_0(v130);
          __swift_destroy_boxed_opaque_existential_0(v132);

          ++v24;
          ++v17;
          if ((v124 != 1) == (v32 == 1))
          {
            v25 = v24 - 1;
            break;
          }
        }

        v7 = v114;
        a6 = v128;
        v12 = v117;
        if (v124 != 1)
        {
          if (v25 < v117)
          {
            goto LABEL_117;
          }

          if (v117 < v25)
          {
            v33 = 8 * v25 - 8;
            v34 = v25;
            v35 = v117;
            do
            {
              if (v35 != --v34)
              {
                v37 = *a3;
                if (!*a3)
                {
                  goto LABEL_122;
                }

                v36 = *(v37 + v15);
                *(v37 + v15) = *(v37 + v33);
                *(v37 + v33) = v36;
              }

              ++v35;
              v33 -= 8;
              v15 += 8;
            }

            while (v35 < v34);
          }
        }

        v13 = v25;
      }

      v38 = a3[1];
      if (v13 < v38)
      {
        v39 = v13;
        v58 = __OFSUB__(v13, v12);
        v40 = v13 - v12;
        if (v58)
        {
          goto LABEL_116;
        }

        if (v40 < a4)
        {
          if (__OFADD__(v12, a4))
          {
            goto LABEL_118;
          }

          if (v12 + a4 >= v38)
          {
            v41 = a3[1];
          }

          else
          {
            v41 = v12 + a4;
          }

          if (v41 < v12)
          {
LABEL_119:
            __break(1u);
LABEL_120:

            __break(1u);
LABEL_121:

            __break(1u);
LABEL_122:

            __break(1u);
LABEL_123:

            __break(1u);
            goto LABEL_124;
          }

          if (v39 != v41)
          {
            v115 = v7;
            v96 = *a3;
            v97 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
            v98 = v96 + 8 * v39 - 8;
            v99 = v39;
            v118 = v12;
            v120 = v41;
            v100 = v12 - v39;
            do
            {
              v126 = v99;
              v101 = *(v96 + 8 * v99);
              v102 = v100;
              v122 = v98;
              do
              {
                v103 = *v98;
                v133 = v97;
                v132[0] = v101;
                v131 = v97;
                v130[0] = v103;
                v104 = v101;
                v105 = v103;
                v106 = v104;
                v107 = v105;
                v108 = a5(v132, v130);
                __swift_destroy_boxed_opaque_existential_0(v130);
                __swift_destroy_boxed_opaque_existential_0(v132);

                if (v108 == 1)
                {
                  break;
                }

                if (!v96)
                {
                  goto LABEL_120;
                }

                v109 = *v98;
                v101 = *(v98 + 8);
                *v98 = v101;
                *(v98 + 8) = v109;
                v98 -= 8;
              }

              while (!__CFADD__(v102++, 1));
              v99 = v126 + 1;
              v98 = v122 + 8;
              --v100;
            }

            while (v126 + 1 != v120);
            v13 = v120;
            v7 = v115;
            a6 = v128;
            v12 = v118;
            if (v120 < v118)
            {
              goto LABEL_115;
            }

            goto LABEL_30;
          }
        }

        v13 = v39;
      }

      if (v13 < v12)
      {
        goto LABEL_115;
      }

LABEL_30:
      v125 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_20D9E014C(0, *(v11 + 2) + 1, 1, v11);
      }

      v43 = *(v11 + 2);
      v42 = *(v11 + 3);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v11 = sub_20D9E014C((v42 > 1), v43 + 1, 1, v11);
      }

      *(v11 + 2) = v44;
      v45 = v11 + 32;
      v46 = &v11[16 * v43 + 32];
      *v46 = v12;
      *(v46 + 1) = v125;
      v121 = *a1;
      if (!*a1)
      {
        goto LABEL_123;
      }

      if (v43)
      {
        v119 = v11 + 32;
        v123 = v11;
        while (1)
        {
          v47 = v44 - 1;
          if (v44 >= 4)
          {
            break;
          }

          if (v44 == 3)
          {
            v48 = *(v11 + 4);
            v49 = *(v11 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
LABEL_50:
            if (v51)
            {
              goto LABEL_105;
            }

            v64 = &v11[16 * v44];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_107;
            }

            v70 = &v45[16 * v47];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_112;
            }

            if (v68 + v73 >= v50)
            {
              if (v50 < v73)
              {
                v47 = v44 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          if (v44 < 2)
          {
            goto LABEL_113;
          }

          v74 = &v11[16 * v44];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_65:
          if (v69)
          {
            goto LABEL_109;
          }

          v77 = &v45[16 * v47];
          v79 = *v77;
          v78 = *(v77 + 1);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_111;
          }

          if (v80 < v68)
          {
            goto LABEL_3;
          }

LABEL_72:
          if (v47 - 1 >= v44)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          v85 = *a3;
          if (!*a3)
          {
            goto LABEL_121;
          }

          v86 = v7;
          v87 = &v45[16 * v47 - 16];
          v88 = *v87;
          v89 = v47;
          v90 = &v45[16 * v47];
          v91 = *(v90 + 1);
          v92 = (v85 + 8 * *v87);
          v93 = (v85 + 8 * *v90);
          v94 = (v85 + 8 * v91);
          a6 = v128;

          sub_20DA18F80(v92, v93, v94, v121, a5);
          v7 = v86;
          if (v86)
          {

            v134 = v123;
            goto LABEL_95;
          }

          v11 = v123;
          if (v91 < v88)
          {
            goto LABEL_100;
          }

          v95 = *(v123 + 2);
          if (v89 > v95)
          {
            goto LABEL_101;
          }

          *v87 = v88;
          *(v87 + 1) = v91;
          if (v89 >= v95)
          {
            goto LABEL_102;
          }

          v44 = v95 - 1;
          memmove(v90, v90 + 16, 16 * (v95 - 1 - v89));
          *(v123 + 2) = v95 - 1;
          v45 = v119;
          if (v95 <= 2)
          {
            goto LABEL_3;
          }
        }

        v52 = &v45[16 * v44];
        v53 = *(v52 - 8);
        v54 = *(v52 - 7);
        v58 = __OFSUB__(v54, v53);
        v55 = v54 - v53;
        if (v58)
        {
          goto LABEL_103;
        }

        v57 = *(v52 - 6);
        v56 = *(v52 - 5);
        v58 = __OFSUB__(v56, v57);
        v50 = v56 - v57;
        v51 = v58;
        if (v58)
        {
          goto LABEL_104;
        }

        v59 = &v11[16 * v44];
        v61 = *v59;
        v60 = *(v59 + 1);
        v58 = __OFSUB__(v60, v61);
        v62 = v60 - v61;
        if (v58)
        {
          goto LABEL_106;
        }

        v58 = __OFADD__(v50, v62);
        v63 = v50 + v62;
        if (v58)
        {
          goto LABEL_108;
        }

        if (v63 >= v55)
        {
          v81 = &v45[16 * v47];
          v83 = *v81;
          v82 = *(v81 + 1);
          v58 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v58)
          {
            goto LABEL_114;
          }

          if (v50 < v84)
          {
            v47 = v44 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_50;
      }

LABEL_3:
      v10 = v125;
      v9 = a3[1];
      if (v125 >= v9)
      {
        v134 = v11;
        goto LABEL_92;
      }
    }
  }

  swift_retain_n();
LABEL_92:
  v111 = *a1;
  if (*a1)
  {

    sub_20DA19304(&v134, v111, a3, a5, a6);
    if (v7)
    {

LABEL_95:
    }

    else
    {
    }
  }

  else
  {
LABEL_124:

    __break(1u);
  }

  return result;
}

void sub_20DA19C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *, void *))
{
  if (a3 != a2)
  {
    v6 = a3;
    v8 = *a4;
    v9 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
    v10 = v8 + 8 * v6 - 8;
    v11 = a1 - v6;
LABEL_5:
    v27 = v6;
    v12 = *(v8 + 8 * v6);
    v23 = v11;
    v24 = v10;
    v13 = v10;
    while (1)
    {
      v14 = *v13;
      v26[3] = v9;
      v25[3] = v9;
      v26[0] = v12;
      v25[0] = v14;
      v15 = v12;
      v16 = v14;
      v17 = v15;
      v18 = v16;
      v19 = a5(v26, v25);
      __swift_destroy_boxed_opaque_existential_0(v25);
      __swift_destroy_boxed_opaque_existential_0(v26);

      if (v19 == 1)
      {
LABEL_4:
        v6 = v27 + 1;
        v10 = v24 + 8;
        v11 = v23 - 1;
        if (v27 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v8)
      {
        break;
      }

      v20 = *v13;
      v12 = *(v13 + 8);
      *v13 = v12;
      *(v13 + 8) = v20;
      v13 -= 8;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20DA19D60(uint64_t *a1, uint64_t (*a2)(void *, void *), void **a3)
{
  v6 = a1[1];
  swift_retain_n();
  result = sub_20DD65924();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);
        v10 = sub_20DD65034();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v9;

      sub_20DA194AC(v11, v12, a1, v8, a2, a3);

      *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {

    sub_20DA19C1C(0, v6, 1, a1, a2);
  }
}

uint64_t sub_20DA19ED8(uint64_t *a1, uint64_t (*a2)(void *, void *), void **a3)
{
  v6 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_20DA73C60(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;

  sub_20DA19D60(v10, a2, a3);

  sub_20DD65764();
}

uint64_t sub_20DA19F94(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v58 = a3;
  v62 = MEMORY[0x277D84F98];
  v61 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_48;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v4)
  {
    v5 = 0;
    v53 = v3 & 0xC000000000000001;
    v50 = v3 & 0xFFFFFFFFFFFFFF8;
    v51 = v3;
    v49 = (v3 + 4);
    v6 = MEMORY[0x277D84F98];
    v48 = xmmword_20DD940A0;
    v52 = v4;
    while (1)
    {
      if (v53)
      {
        v9 = MEMORY[0x20F326680](v5, v51);
      }

      else
      {
        if (v5 >= *(v50 + 16))
        {
          goto LABEL_47;
        }

        v9 = v49[v5];
      }

      v10 = v9;
      v11 = __OFADD__(v5, 1);
      v12 = v5 + 1;
      if (v11)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        v4 = sub_20DD655B4();
        goto LABEL_3;
      }

      v3 = [ObjCClassFromMetadata sortedAccessoryTypeGroups];
      sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
      v13 = sub_20DD64FD4();

      v55 = v6;
      v56 = v12;
      if (v13 >> 62)
      {
        v14 = sub_20DD655B4();
        if (v14)
        {
LABEL_14:
          v15 = 0;
          while (1)
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x20F326680](v15, v13);
            }

            else
            {
              if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_45;
              }

              v16 = *(v13 + 8 * v15 + 32);
            }

            v17 = v16;
            v18 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v19 = [v10 accessoryRepresentableObject];
            swift_getObjectType();
            v20 = HFAccessoryRepresentable.accessoryType.getter();
            swift_unknownObjectRelease();
            v3 = [v17 containsType_];

            if (v3)
            {
              break;
            }

            ++v15;
            if (v18 == v14)
            {
              goto LABEL_29;
            }
          }

          if (v55[2] && (v21 = sub_20D9CB6DC(v17), (v22 & 1) != 0))
          {
            v60 = *(v55[7] + 8 * v21);
            v23 = v10;

            MEMORY[0x20F325F00](v24);
            if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_20DD65014();
            }

            sub_20DD65054();
            v25 = v60;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v59[0] = v55;
            v3 = v59;
            sub_20D9D1160(v25, v17, isUniquelyReferenced_nonNull_native);

            v6 = v59[0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
            v7 = swift_allocObject();
            *(v7 + 16) = xmmword_20DD940A0;
            *(v7 + 32) = v10;
            v8 = swift_isUniquelyReferenced_nonNull_native();
            v60 = v55;
            v3 = &v60;
            sub_20D9D1160(v7, v17, v8);

            v6 = v60;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_14;
        }
      }

LABEL_29:

      v27 = v10;
      v3 = &v61;
      MEMORY[0x20F325F00]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20DD65014();
      }

      sub_20DD65054();

      v6 = v55;
LABEL_6:
      v5 = v56;
      if (v56 == v52)
      {
        v62 = v6;
        break;
      }
    }
  }

  v60 = 0;
  v28 = [ObjCClassFromMetadata sortedAccessoryTypeGroups];
  sub_20D9D7510(0, &unk_280E020A0, off_277DEF390);
  v29 = sub_20DD64FD4();

  v30 = sub_20DA17480(v29, sub_20DA1A7B8, v57, &v62, &v61, &v60);

  v31 = v61;
  if (v61 >> 62)
  {
    if (!sub_20DD655B4())
    {
      goto LABEL_43;
    }
  }

  else if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_43;
  }

  v32 = sub_20DD65384();
  sub_20D9D7510(0, &qword_280E01EC0, 0x277D86200);
  v33 = sub_20DD65474();
  if (!os_log_type_enabled(v33, v32))
  {

    v37 = v60;
    if (!v60)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v34 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v59[0] = v35;
  *v34 = 136315650;
  *(v34 + 4) = sub_20D9E0B38(0xD000000000000040, 0x800000020DD98A80, v59);
  *(v34 + 12) = 2048;
  if (v31 >> 62)
  {
    v36 = sub_20DD655B4();
  }

  else
  {
    v36 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v34 + 14) = v36;
  *(v34 + 22) = 2080;
  v38 = sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);

  v40 = MEMORY[0x20F325F40](v39, v38);
  v42 = v41;

  v43 = sub_20D9E0B38(v40, v42, v59);

  *(v34 + 24) = v43;
  _os_log_impl(&dword_20D9BF000, v33, v32, "%s Found %ld item(s) without an identified category: %s", v34, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x20F327D10](v35, -1, -1);
  MEMORY[0x20F327D10](v34, -1, -1);

  v37 = v60;
  if (v60)
  {
LABEL_42:
    sub_20D9D7510(0, &qword_280E01F10, off_277DEFBE0);

    v44 = v37;
    v45 = sub_20DD64FB4();

    [v44 setItems_];
  }

LABEL_43:
  v46 = v60;

  return v30;
}

uint64_t _sSo24HFAccessoryListUtilitiesC4HomeE25sortedAccessoryTypeGroupsSaySo0aG5GroupCGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843A60, &qword_20DD94360);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20DD949A0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 climateAccessoryTypeGroup];
  *(v0 + 40) = [v1 lightAccessoryTypeGroup];
  *(v0 + 48) = [v1 securityAccessoryTypeGroup];
  *(v0 + 56) = [v1 mediaAccessoryTypeGroup];
  *(v0 + 64) = [v1 waterAccessoryTypeGroup];
  v2 = [v1 otherAccessoryTypeGroup];
  MEMORY[0x20F325F00]();
  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20DD65014();
  }

  sub_20DD65054();
  return v0;
}

unint64_t sub_20DA1A7C0()
{
  result = qword_280E01F58;
  if (!qword_280E01F58)
  {
    sub_20D9D7510(255, &qword_280E01F60, off_277DEF2B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E01F58);
  }

  return result;
}

uint64_t sub_20DA1A828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HFEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA1A88C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844198, &qword_20DD949D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA1A8FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HFEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA1A960(uint64_t a1)
{
  v2 = type metadata accessor for HFEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20DA1A9BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_20DA1AA10(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t HFItemManager.firstFastUpdate<A>()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_20DD650F4();
  v2[6] = sub_20DD650E4();
  v4 = sub_20DD65094();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_20DA1AB38, v4, v3);
}

uint64_t sub_20DA1AB38()
{
  v7 = *(v0 + 24);
  v1 = sub_20DD650E4();
  *(v0 + 72) = v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *(v2 + 16) = v7;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  swift_getWitnessTable();
  v4 = sub_20DD652C4();
  *v3 = v0;
  v3[1] = sub_20DA1AC84;
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 16, v1, v5, 0xD000000000000011, 0x800000020DD98BD0, sub_20DA1AE88, v2, v4);
}

uint64_t sub_20DA1AC84()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_20DA1AE10;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_20DA1ADA8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_20DA1ADA8()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_20DA1AE10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HFItemManager.firstFullUpdate<A>()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = sub_20DD650F4();
  v2[6] = sub_20DD650E4();
  v4 = sub_20DD65094();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x2822009F8](sub_20DA1AF6C, v4, v3);
}

uint64_t sub_20DA1AF6C()
{
  v7 = *(v0 + 24);
  v1 = sub_20DD650E4();
  *(v0 + 72) = v1;
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *(v2 + 16) = v7;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  swift_getWitnessTable();
  v4 = sub_20DD652C4();
  *v3 = v0;
  v3[1] = sub_20DA1B0B8;
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 16, v1, v5, 0xD000000000000011, 0x800000020DD98BF0, sub_20DA1B408, v2, v4);
}

uint64_t sub_20DA1B0B8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_20DA1B7A8;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_20DA1B7A4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

void sub_20DA1B1DC(uint64_t a1, void *a2, uint64_t a3, SEL *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a7;
  swift_getWitnessTable();
  sub_20DD652C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
  v12 = sub_20DD650C4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  v16 = [a2 *a4];
  (*(v13 + 16))(v15, a1, v12);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  (*(v13 + 32))(v18 + v17, v15, v12);
  aBlock[4] = a6;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20DA1AA10;
  aBlock[3] = v22;
  v19 = _Block_copy(aBlock);

  v20 = [v16 addCompletionBlock_];
  _Block_release(v19);
}

uint64_t sub_20DA1B450(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a2;
    swift_getWitnessTable();
    sub_20DD652C4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
    sub_20DD650C4();
    return sub_20DD650A4();
  }

  else
  {
    if (a1)
    {
      v6 = a1;
      swift_getWitnessTable();
      sub_20DD65244();
    }

    else
    {
      swift_getWitnessTable();
      sub_20DD64DA4();
    }

    sub_20DD652C4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
    sub_20DD650C4();
    return sub_20DD650B4();
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  swift_getWitnessTable();
  sub_20DD652C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
  v1 = sub_20DD650C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20DA1B6C8(void *a1, void *a2)
{
  v5 = *(v2 + 16);
  swift_getWitnessTable();
  sub_20DD652C4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8443A0, &qword_20DD94E00);
  v6 = *(sub_20DD650C4() - 8);
  return sub_20DA1B450(a1, a2, v2 + ((*(v6 + 80) + 24) & ~*(v6 + 80)), v5);
}

id HomeDashboardReorderableItemList.__allocating_init(applicationDataContainer:category:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(v3);
  v6 = sub_20DD64E74();

  v7 = [v5 initWithApplicationDataContainer:a1 category:v6];
  swift_unknownObjectRelease();

  return v7;
}

char *HomeDashboardReorderableItemList.init(applicationDataContainer:category:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_20DD63744();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20DD64E74();

  v10 = type metadata accessor for HomeDashboardReorderableItemList();
  v42.receiver = v3;
  v42.super_class = v10;
  v11 = objc_msgSendSuper2(&v42, sel_initWithApplicationDataContainer_category_, a1, v9);

  v12 = OBJC_IVAR___HFReorderableItemList_sortedIdentifiers;
  swift_beginAccess();
  if (*(*&v11[v12] + 16) || (objc_opt_self(), (v13 = swift_dynamicCastObjCClass()) == 0))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = [v13 hf_reorderableRoomsList];
    v15 = [v14 sortedHomeKitObjectIdentifiers];

    v16 = sub_20DD64FD4();
    v17 = *(v16 + 16);
    if (v17)
    {
      v34 = v12;
      v35 = v11;
      v40 = v8;
      v36 = a1;
      v41 = MEMORY[0x277D84F90];
      sub_20DA4AF84(0, v17, 0);
      v18 = v41;
      v20 = *(v6 + 16);
      v19 = v6 + 16;
      v21 = *(v19 + 64);
      v33 = v16;
      v22 = v16 + ((v21 + 32) & ~v21);
      v38 = *(v19 + 56);
      v39 = v20;
      v37 = (v19 - 8);
      do
      {
        v23 = v40;
        v24 = v19;
        v39(v40, v22, v5);
        v25 = sub_20DD636E4();
        v27 = v26;
        v28 = v5;
        (*v37)(v23, v5);
        v41 = v18;
        v30 = *(v18 + 16);
        v29 = *(v18 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_20DA4AF84((v29 > 1), v30 + 1, 1);
          v18 = v41;
        }

        *(v18 + 16) = v30 + 1;
        v31 = v18 + 16 * v30;
        *(v31 + 32) = v25;
        *(v31 + 40) = v27;
        v22 += v38;
        --v17;
        v5 = v28;
        v19 = v24;
      }

      while (v17);
      swift_unknownObjectRelease();

      v12 = v34;
      v11 = v35;
    }

    else
    {
      swift_unknownObjectRelease();

      v18 = MEMORY[0x277D84F90];
    }

    *&v11[v12] = v18;
  }

  return v11;
}

uint64_t sub_20DA1BB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_20D9C8A28();
  v4 = sub_20DD654C4();
  v6 = v5;
  v7 = sub_20DD654C4();
  v9 = v8;
  v10 = sub_20DA48C3C(v4, v6, v7, v8);
  if (v10 == 2)
  {
    v10 = sub_20DA06210(v4, v6, v7, v9);
    if (v10 == 2)
    {
      v10 = sub_20DA1BD24(v4, v6, v7, v9);
    }
  }

  v11 = v10;

  return v11;
}

uint64_t sub_20DA1BD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843A70, &qword_20DD94260);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v43 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v43 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  if (![v5 applicationDataContainer])
  {
    return 2;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    return 2;
  }

  v43 = v18;
  sub_20DD636D4();
  v19 = v15;
  sub_20DD636D4();
  v20 = sub_20DD63744();
  v21 = *(v20 - 8);
  v22 = v17;
  v23 = *(v21 + 48);
  v24 = v23(v22, 1, v20);
  v44 = v22;
  if (v24 == 1)
  {
    if (v23(v15, 1, v20) != 1)
    {
      v25 = 0;
      v26 = 0;
      goto LABEL_13;
    }

LABEL_11:
    swift_unknownObjectRelease();
    v27 = 2;
    v34 = v44;
LABEL_27:
    sub_20D9C9040(v19);
    sub_20D9C9040(v34);
    return v27;
  }

  sub_20D9C90A8(v22, v12);
  result = v23(v12, 1, v20);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v29 = sub_20DD636F4();
  (*(v21 + 8))(v12, v20);
  v30 = [v43 hf:v29 roomWithIdentifier:?];

  v31 = [v30 hf_displayName];
  v32 = sub_20DD64EB4();
  v25 = v33;

  v19 = v15;
  if (v23(v15, 1, v20) == 1)
  {
    if (v25)
    {
LABEL_22:
      swift_unknownObjectRelease();

      v27 = 1;
      v34 = v44;
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v26 = v32;
LABEL_13:
  sub_20D9C90A8(v19, v9);
  result = v23(v9, 1, v20);
  if (result != 1)
  {
    v35 = sub_20DD636F4();
    (*(v21 + 8))(v9, v20);
    v36 = [v43 hf:v35 roomWithIdentifier:?];

    v37 = [v36 hf_displayName];
    v38 = sub_20DD64EB4();
    v40 = v39;

    v34 = v44;
    if (!v25)
    {
      swift_unknownObjectRelease();
      if (v40)
      {

        v27 = 0;
      }

      else
      {
        v27 = 2;
      }

      goto LABEL_27;
    }

    if (v40)
    {
      v41 = v26 == v38 && v25 == v40;
      if (v41 || (sub_20DD65974() & 1) != 0)
      {

        swift_unknownObjectRelease();
        v27 = 2;
      }

      else
      {
        v42 = sub_20DD65974();

        swift_unknownObjectRelease();
        v27 = v42 & 1;
      }

      goto LABEL_27;
    }

    goto LABEL_22;
  }

LABEL_30:
  __break(1u);
  return result;
}

id HomeDashboardReorderableItemList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeDashboardReorderableItemList();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20DA1C200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20D9D7558(a3, v25 - v10, &qword_27C8443F0, &qword_20DD93820);
  v12 = sub_20DD65114();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20D9D76EC(v11, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20DD65094();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20DD64EF4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844278, &qword_20DD94AF0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844278, &qword_20DD94AF0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20DA1C514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20D9D7558(a3, v25 - v10, &qword_27C8443F0, &qword_20DD93820);
  v12 = sub_20DD65114();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20D9D76EC(v11, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20DD65094();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20DD64EF4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20DA1C814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20D9D7558(a3, v25 - v10, &qword_27C8443F0, &qword_20DD93820);
  v12 = sub_20DD65114();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20D9D76EC(v11, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20DD65094();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20DD64EF4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844280, &qword_20DD94B28);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844280, &qword_20DD94B28);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_20DA1CB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_20D9D7558(a3, v25 - v10, &qword_27C8443F0, &qword_20DD93820);
  v12 = sub_20DD65114();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_20D9D76EC(v11, &qword_27C8443F0, &qword_20DD93820);
  }

  else
  {
    sub_20DD65104();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_20DD65094();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_20DD64EF4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_20D9D76EC(a3, &qword_27C8443F0, &qword_20DD93820);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t sub_20DA1CE20()
{
  type metadata accessor for HFPredictionsManager.AnalyticsScoringCache();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  v0[14] = sub_20D9D59F0(MEMORY[0x277D84F90]);
  result = sub_20D9D5BD8(v1);
  v3 = MEMORY[0x277D84F98];
  v0[15] = result;
  v0[16] = v3;
  qword_280E01F70 = v0;
  return result;
}

uint64_t static HFPredictionsManager.analyticsLatestScoresCache.getter()
{
  if (qword_280E01F68 != -1)
  {
    swift_once();
  }
}

Swift::Void __swiftcall HFPredictionsManager.submitPredictionsFetchEvent(duration:numberOfPredictions:receivedBeforeModuleFreeze:)(Swift::Double duration, Swift::UInt numberOfPredictions, Swift::Bool receivedBeforeModuleFreeze)
{
  v4 = v3;
  if ([v4 submitsAnalytics])
  {
    v8 = receivedBeforeModuleFreeze;
    v9 = [objc_opt_self() processInfo];
    v10 = [v9 processName];

    v11 = sub_20DD64EB4();
    v13 = v12;

    *&v14 = 0xD000000000000019;
    *(&v14 + 1) = 0x800000020DD98C40;
    *&v15 = 0xD00000000000001CLL;
    *(&v15 + 1) = 0x800000020DD98C60;
    *&v16 = duration * 1000.0;
    *(&v16 + 1) = numberOfPredictions;
    *&v17 = v11;
    *(&v17 + 1) = v13;
    sub_20DA1D034();
    sub_20DD63F44();
    v18[2] = v16;
    v18[3] = v17;
    v19 = v8;
    v18[0] = v14;
    v18[1] = v15;
    sub_20DA1D088(v18);
  }
}

unint64_t sub_20DA1D034()
{
  result = qword_280E02178;
  if (!qword_280E02178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02178);
  }

  return result;
}

unint64_t sub_20DA1D190()
{
  result = qword_27C8441F0;
  if (!qword_27C8441F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8441F0);
  }

  return result;
}

Swift::Void __swiftcall HFPredictionsManager.saveAnalyticsScores(for:)(Swift::OpaquePointer a1)
{
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  if ([v1 submitsAnalytics])
  {
    v7 = sub_20DD65114();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2]._rawValue = 0;
    v8[3]._rawValue = 0;
    v8[4]._rawValue = a1._rawValue;
    v8[5]._rawValue = v1;
    v8[6]._rawValue = ObjectType;

    v9 = v1;
    sub_20DA1C514(0, 0, v6, &unk_20DD94A50, v8);
  }
}

uint64_t sub_20DA1D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_20DD64C44();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_20DD63744();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_20DD64544();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA1D4EC, 0, 0);
}

uint64_t sub_20DA1D4EC()
{
  v1 = [*(v0 + 24) home];
  sub_20D9D7510(0, &qword_280E01EF0, 0x277CD1A60);
  sub_20DA210C4(&qword_280E01EF8, &qword_280E01EF0, 0x277CD1A60, MEMORY[0x277D16F68]);
  v2 = sub_20DD63B74();

  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 112) = sub_20D9D7510(0, &unk_280E01F40, 0x277CD1EE8);
    sub_20DA210C4(&qword_280E01F50, &unk_280E01F40, 0x277CD1EE8, MEMORY[0x277D16F50]);
    sub_20DD64534();
    *(v0 + 120) = sub_20DD63934();
    if (qword_280E01F68 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v3 = *(v0 + 24);
  v4 = qword_280E01F70;
  *(v0 + 128) = qword_280E01F70;
  v5 = [v3 home];
  v6 = [v5 uniqueIdentifier];

  sub_20DD63714();

  return MEMORY[0x2822009F8](sub_20DA1D700, v4, 0);
}

uint64_t sub_20DA1D700()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_20DA1DED8(v0[15], v0[13], v1);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](sub_20DA1D7AC, 0, 0);
}

uint64_t sub_20DA1D7AC()
{
  v41 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  sub_20DD64BD4();
  (*(v4 + 16))(v1, v2, v3);

  v5 = sub_20DD64C24();
  v6 = sub_20DD65384();
  if (os_log_type_enabled(v5, v6))
  {
    v34 = v6;
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    *v8 = 134349570;
    if (v7 >> 62)
    {
      v9 = sub_20DD655B4();
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v0[14];
    v11 = v0[11];
    v10 = v0[12];
    v12 = v0[10];
    v37 = v0[6];
    v38 = v0[13];
    v35 = v0[5];
    v36 = v0[4];
    v13 = v0[2];
    *(v8 + 4) = v9;

    *(v8 + 12) = 2082;
    sub_20DA211E8();
    v33 = v12;
    v14 = sub_20DD65934();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_20D9E0B38(v14, v16, &v40);

    *(v8 + 14) = v18;
    *(v8 + 22) = 2080;
    v19 = MEMORY[0x20F325F40](v13, v32);
    v21 = sub_20D9E0B38(v19, v20, &v40);

    *(v8 + 24) = v21;
    _os_log_impl(&dword_20D9BF000, v5, v34, "HFPredictionsManager processed %{public}ld predictions with relevance %{public}s: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F327D10](v39, -1, -1);
    MEMORY[0x20F327D10](v8, -1, -1);

    (*(v35 + 8))(v37, v36);
    v17(v38, v33);
  }

  else
  {
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[10];
    v25 = v0[11];
    v27 = v0[5];
    v26 = v0[6];
    v28 = v0[4];

    v29 = *(v25 + 8);
    v29(v23, v24);
    (*(v27 + 8))(v26, v28);
    v29(v22, v24);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_20DA1DAC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9D77C4;

  return sub_20DA1D368(a1, v4, v5, v6, v7);
}

uint64_t sub_20DA1DD10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 112) = v2;
}

double sub_20DA1DD70()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_20DA1DDA8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 120) = v2;
}

double sub_20DA1DE08()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_20DA1DE40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 128) = v2;
}

double sub_20DA1DEA0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_20DA1DED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844270, &qword_20DD94228);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_20DD63744();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_20D9D1574(a1, a3, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v24;
  swift_endAccess();
  v17 = *(v13 + 16);
  v17(v15, a3, v12);
  v18 = sub_20DD64544();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, v23, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  swift_beginAccess();
  sub_20D9F9C28(v11, v15);
  swift_endAccess();
  v17(v15, a3, v12);
  sub_20DD636B4();
  v20 = sub_20DD636C4();
  (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
  swift_beginAccess();
  sub_20D9F97D0(v8, v15);
  return swift_endAccess();
}

uint64_t sub_20DA1E1DC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_20DD63744();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v11 = a2;
LABEL_3:
    v12 = a2;
    v13 = [v11 uniqueIdentifier];
    sub_20DD63714();

    swift_beginAccess();
    v14 = *(v3 + 112);
    if (*(v14 + 16))
    {

      v19 = sub_20D9CB38C(v10, v15, v16, v17, v18);
      if (v20)
      {
        v21 = *(*(v14 + 56) + 8 * v19);
        v22 = *(v8 + 8);

        v22(v10, v7);

        sub_20D9D7510(0, &unk_27C844260, off_277DEFF18);
        sub_20DA1E478(a1, v21, a3);
      }
    }

    (*(v8 + 8))(v10, v7);
    goto LABEL_12;
  }

  v29[5] = &unk_28252A8F8;
  v24 = swift_dynamicCastObjCProtocolConditional();
  if (v24)
  {
    v25 = [v24 homeKitObject];
    v29[4] = &unk_282562A98;
    v26 = swift_dynamicCastObjCProtocolConditional();
    if (!v26)
    {
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    v27 = [v26 home];
    swift_unknownObjectRelease();
    if (v27)
    {
      v11 = v27;
      goto LABEL_3;
    }
  }

LABEL_12:
  v28 = sub_20DD63944();
  return (*(*(v28 - 8) + 56))(a3, 1, 1, v28);
}

void sub_20DA1E478(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v267 = a2;
  v250 = a3;
  v263 = sub_20DD63944();
  v255 = *(v263 - 8);
  v4 = MEMORY[0x28223BE20](v263);
  v235 = v228 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v243 = v228 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v236 = v228 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v258 = v228 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v237 = v228 - v13;
  MEMORY[0x28223BE20](v12);
  v253 = v228 - v14;
  v262 = sub_20DD63744();
  v264 = *(v262 - 8);
  v15 = MEMORY[0x28223BE20](v262);
  v265 = v228 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v251 = v228 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v252 = (v228 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v249 = v228 - v22;
  MEMORY[0x28223BE20](v21);
  v261 = (v228 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844288, &qword_20DD94B38);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v242 = v228 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v248 = v228 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v257 = v228 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v244 = v228 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = v228 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = v228 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = v228 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = v228 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = v228 - v46;
  v48 = MEMORY[0x28223BE20](v45);
  v50 = v228 - v49;
  v51 = MEMORY[0x28223BE20](v48);
  v53 = (v228 - v52);
  MEMORY[0x28223BE20](v51);
  v55 = v228 - v54;
  objc_opt_self();
  v56 = a1;
  v57 = swift_dynamicCastObjCClass();
  if (v57)
  {
    v58 = v57;
    v59 = v56;
    v265 = [v58 sourceItem];
    sub_20DA1E478(v265, v267, v250);

    v60 = v265;

    return;
  }

  v259 = v53;
  v241 = v50;
  v233 = v47;
  v230 = v44;
  v240 = v38;
  v232 = v35;
  v247 = v41;
  v260 = v55;
  v61 = v263;
  v271 = &unk_28252AFF0;
  v62 = swift_dynamicCastObjCProtocolConditional();
  if (v62)
  {
    v63 = v62;
    v64 = v255;
    v65 = *(v255 + 56);
    v66 = 1;
    v266 = v255 + 56;
    v265 = v65;
    (v65)(v260, 1, 1, v61);
    v228[0] = v56;
    v67 = [objc_msgSend(v63 homeKitObject)];
    swift_unknownObjectRelease();
    v68 = v261;
    sub_20DD63714();

    v73 = v267;
    if (*(v267 + 16) && (v74 = sub_20D9CB38C(v68, v69, v70, v71, v72), (v75 & 1) != 0))
    {
      v76 = *(v64 + 16);
      v77 = *(v73 + 56) + *(v64 + 72) * v74;
      v78 = v259;
      v76(v259, v77, v263);
      v66 = 0;
    }

    else
    {
      v78 = v259;
    }

    v79 = *(v264 + 8);
    v264 += 8;
    v261 = v79;
    v79(v68, v262);
    (v265)(v78, v66, 1, v263);
    sub_20DA20170(v78, v260);
    sub_20D9D76EC(v78, &qword_27C844288, &qword_20DD94B38);
    v80 = [v63 accessoryRepresentableObject];
    ObjectType = swift_getObjectType();
    v82 = HFAccessoryRepresentable.containedServices.getter(ObjectType);
    swift_unknownObjectRelease();
    v83 = v249;
    v229 = v63;
    if ((v82 & 0xC000000000000001) != 0)
    {
      sub_20DD65564();
      sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
      sub_20DA210C4(&qword_27C843900, &qword_27C8435F0, 0x277CD1D90, MEMORY[0x277D85378]);
      sub_20DD65284();
      v82 = v272;
      v84 = v273;
      v85 = v274;
      v86 = v275;
      v87 = v276;
    }

    else
    {
      v86 = 0;
      v105 = -1 << *(v82 + 32);
      v84 = (v82 + 56);
      v85 = ~v105;
      v106 = -v105;
      if (v106 < 64)
      {
        v107 = ~(-1 << v106);
      }

      else
      {
        v107 = -1;
      }

      v87 = v107 & *(v82 + 56);
    }

    v108 = v241;
    v228[1] = v85;
    v109 = (v85 + 64) >> 6;
    v238 = v255 + 16;
    v110 = (v255 + 48);
    v256 = (v255 + 32);
    v231 = (v255 + 8);
    v111 = v233;
    v245 = v84;
    v239 = v109;
    v259 = (v255 + 48);
    i = v82;
    if ((v82 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_23:
    v112 = sub_20DD655F4();
    if (v112)
    {
      v277 = v112;
      sub_20D9D7510(0, &qword_27C8435F0, 0x277CD1D90);
      swift_dynamicCast();
      v113 = v282;
      v114 = v86;
      v115 = v87;
      while (1)
      {
        if (!v113)
        {
          goto LABEL_45;
        }

        v118 = [v113 uniqueIdentifier];
        sub_20DD63714();

        v123 = v267;
        v124 = *(v267 + 16);
        v254 = v115;
        if (v124)
        {
          v125 = sub_20D9CB38C(v83, v119, v120, v121, v122);
          v126 = v262;
          if (v127)
          {
            (*(v255 + 16))(v108, *(v123 + 56) + *(v255 + 72) * v125, v263);
            v128 = 0;
          }

          else
          {
            v128 = 1;
          }
        }

        else
        {
          v128 = 1;
          v126 = v262;
        }

        v261(v83, v126);
        v129 = v263;
        (v265)(v108, v128, 1, v263);
        sub_20D9D7558(v108, v111, &qword_27C844288, &qword_20DD94B38);
        v130 = *v110;
        if ((*v110)(v111, 1, v129) == 1)
        {

          sub_20D9D76EC(v108, &qword_27C844288, &qword_20DD94B38);
          sub_20D9D76EC(v111, &qword_27C844288, &qword_20DD94B38);
          v86 = v114;
          v87 = v254;
          v84 = v245;
          v109 = v239;
          v82 = i;
          if (i < 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v234 = *v256;
          (v234)(v253, v111, v129);
          v131 = v260;
          swift_beginAccess();
          v132 = v230;
          sub_20D9D7558(v131, v230, &qword_27C844288, &qword_20DD94B38);
          if (v130(v132, 1, v129) == 1)
          {

            v133 = v241;
            sub_20D9D76EC(v241, &qword_27C844288, &qword_20DD94B38);
            sub_20D9D76EC(v131, &qword_27C844288, &qword_20DD94B38);
            sub_20D9D76EC(v132, &qword_27C844288, &qword_20DD94B38);
            v134 = v247;
            v108 = v133;
            (v234)(v247, v253, v129);
            (v265)(v134, 0, 1, v129);
            sub_20DA21108(v134, v131);
            v86 = v114;
            v87 = v254;
            v83 = v249;
            v111 = v233;
          }

          else
          {
            v135 = v237;
            v136 = v234;
            (v234)(v237, v132, v129);
            v137 = v253;
            v138 = sub_20DD63924();

            v139 = *v231;
            (*v231)(v135, v129);
            sub_20D9D76EC(v241, &qword_27C844288, &qword_20DD94B38);
            if (v138)
            {
              v140 = v260;
              sub_20D9D76EC(v260, &qword_27C844288, &qword_20DD94B38);
              v141 = v247;
              (v136)(v247, v137, v129);
              (v265)(v141, 0, 1, v129);
              sub_20DA21108(v141, v140);
            }

            else
            {
              v139(v137, v129);
            }

            v86 = v114;
            v87 = v254;
            v83 = v249;
            v111 = v233;
            v108 = v241;
          }

          v110 = v259;
          v82 = i;
          v84 = v245;
          v109 = v239;
          if (i < 0)
          {
            goto LABEL_23;
          }
        }

LABEL_25:
        v116 = v86;
        v117 = v87;
        v114 = v86;
        if (!v87)
        {
          break;
        }

LABEL_29:
        v115 = (v117 - 1) & v117;
        v113 = *(*(v82 + 48) + ((v114 << 9) | (8 * __clz(__rbit64(v117)))));
      }

      while (1)
      {
        v114 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          __break(1u);
          goto LABEL_111;
        }

        if (v114 >= v109)
        {
          break;
        }

        v117 = *&v84[8 * v114];
        ++v116;
        if (v117)
        {
          goto LABEL_29;
        }
      }
    }

LABEL_45:
    sub_20D9C51CC(i);
    v142 = [v229 accessoryRepresentableObject];
    v143 = swift_getObjectType();
    v144 = HFAccessoryRepresentable.associatedAccessories.getter(v143);
    swift_unknownObjectRelease();
    if ((v144 & 0xC000000000000001) != 0)
    {
      sub_20DD65564();
      sub_20D9D7510(0, &qword_27C844290, 0x277CD1650);
      sub_20DA210C4(&qword_27C843840, &qword_27C844290, 0x277CD1650, MEMORY[0x277D85378]);
      sub_20DD65284();
      v144 = v277;
      v145 = v278;
      v146 = v279;
      v147 = v280;
      v148 = v281;
    }

    else
    {
      v147 = 0;
      v149 = -1 << *(v144 + 32);
      v145 = (v144 + 56);
      v146 = ~v149;
      v150 = -v149;
      if (v150 < 64)
      {
        v151 = ~(-1 << v150);
      }

      else
      {
        v151 = -1;
      }

      v148 = v151 & *(v144 + 56);
    }

    v152 = v232;
    v153 = v240;
    v241 = v146;
    v154 = (v146 + 64) >> 6;
    v249 = v144;
    v253 = v145;
    for (i = v154; ; v154 = i)
    {
      if (v144 < 0)
      {
        v160 = sub_20DD655F4();
        if (!v160 || (v269 = v160, sub_20D9D7510(0, &qword_27C844290, 0x277CD1650), swift_dynamicCast(), v159 = v282, v157 = v147, v158 = v148, !v282))
        {
LABEL_76:
          sub_20D9C51CC(v144);
          v183 = [v229 accessoryRepresentableObject];
          v184 = swift_getObjectType();
          v185 = HFAccessoryRepresentable.containedProfiles.getter(v184);
          swift_unknownObjectRelease();
          if ((v185 & 0xC000000000000001) != 0)
          {
            sub_20DD65564();
            sub_20D9D7510(0, &unk_27C8442A0, 0x277CD1760);
            sub_20DA210C4(&unk_27C8438E0, &unk_27C8442A0, 0x277CD1760, MEMORY[0x277D85378]);
            sub_20DD65284();
            v185 = v282;
            v186 = v283;
            v187 = v284;
            v188 = v285;
            v189 = v286;
          }

          else
          {
            v188 = 0;
            v190 = -1 << *(v185 + 32);
            v186 = (v185 + 56);
            v187 = ~v190;
            v191 = -v190;
            if (v191 < 64)
            {
              v192 = ~(-1 << v191);
            }

            else
            {
              v192 = -1;
            }

            v189 = v192 & *(v185 + 56);
          }

          v193 = v248;
          v194 = v263;
          v195 = v256;
          v249 = v187;
          v196 = (v187 + 64) >> 6;
          v254 = v185;
          v258 = v186;
          v253 = v196;
          while (2)
          {
            if (v185 < 0)
            {
              v202 = sub_20DD655F4();
              if (!v202 || (v268 = v202, sub_20D9D7510(0, &unk_27C8442A0, 0x277CD1760), swift_dynamicCast(), v201 = v269, v199 = v188, v200 = v189, !v269))
              {
LABEL_106:
                sub_20D9C51CC(v185);

                v227 = v260;
                swift_beginAccess();
                sub_20D9D7558(v227, v250, &qword_27C844288, &qword_20DD94B38);
                sub_20D9D76EC(v227, &qword_27C844288, &qword_20DD94B38);
                return;
              }
            }

            else
            {
              v197 = v188;
              v198 = v189;
              v199 = v188;
              if (!v189)
              {
                while (1)
                {
                  v199 = v197 + 1;
                  if (__OFADD__(v197, 1))
                  {
                    break;
                  }

                  if (v199 >= v196)
                  {
                    goto LABEL_106;
                  }

                  v198 = *&v186[8 * v199];
                  ++v197;
                  if (v198)
                  {
                    goto LABEL_91;
                  }
                }

LABEL_112:
                __break(1u);
                return;
              }

LABEL_91:
              v200 = (v198 - 1) & v198;
              v201 = *(*(v185 + 48) + ((v199 << 9) | (8 * __clz(__rbit64(v198)))));
              if (!v201)
              {
                goto LABEL_106;
              }
            }

            v263 = v200;
            v203 = [v201 uniqueIdentifier];
            v204 = v251;
            sub_20DD63714();

            v209 = v267;
            if (*(v267 + 16))
            {
              v210 = sub_20D9CB38C(v204, v205, v206, v207, v208);
              v211 = v257;
              if (v212)
              {
                (*(v255 + 16))(v257, *(v209 + 56) + *(v255 + 72) * v210, v194);
                v213 = 0;
              }

              else
              {
                v213 = 1;
              }
            }

            else
            {
              v213 = 1;
              v211 = v257;
            }

            v261(v204, v262);
            (v265)(v211, v213, 1, v194);
            sub_20D9D7558(v211, v193, &qword_27C844288, &qword_20DD94B38);
            v214 = *v259;
            if ((*v259)(v193, 1, v194) != 1)
            {
              v215 = v243;
              v252 = *v195;
              v252(v243, v193, v194);
              v216 = v194;
              v217 = v260;
              swift_beginAccess();
              v218 = v242;
              sub_20D9D7558(v217, v242, &qword_27C844288, &qword_20DD94B38);
              if (v214(v218, 1, v216) == 1)
              {

                sub_20D9D76EC(v257, &qword_27C844288, &qword_20DD94B38);
                sub_20D9D76EC(v217, &qword_27C844288, &qword_20DD94B38);
                sub_20D9D76EC(v218, &qword_27C844288, &qword_20DD94B38);
                v219 = v247;
                v220 = v256;
                v252(v247, v215, v216);
                (v265)(v219, 0, 1, v216);
                sub_20DA21108(v219, v217);
                v188 = v199;
                v189 = v263;
                v193 = v248;
                v194 = v216;
                v195 = v220;
LABEL_84:
                v185 = v254;
              }

              else
              {
                v221 = v235;
                v252(v235, v218, v216);
                v222 = sub_20DD63924();

                v223 = *v231;
                (*v231)(v221, v216);
                sub_20D9D76EC(v257, &qword_27C844288, &qword_20DD94B38);
                v194 = v216;
                v185 = v254;
                if (v222)
                {
                  v224 = v260;
                  sub_20D9D76EC(v260, &qword_27C844288, &qword_20DD94B38);
                  v225 = v247;
                  v226 = v216;
                  v195 = v256;
                  v252(v247, v215, v226);
                  (v265)(v225, 0, 1, v194);
                  sub_20DA21108(v225, v224);
                  v188 = v199;
                  v189 = v263;
                  v193 = v248;
                }

                else
                {
                  v223(v215, v216);
                  v188 = v199;
                  v189 = v263;
                  v193 = v248;
                  v195 = v256;
                }
              }

              v186 = v258;
              v196 = v253;
              continue;
            }

            break;
          }

          sub_20D9D76EC(v211, &qword_27C844288, &qword_20DD94B38);
          sub_20D9D76EC(v193, &qword_27C844288, &qword_20DD94B38);
          v188 = v199;
          v189 = v263;
          goto LABEL_84;
        }
      }

      else
      {
        v155 = v147;
        v156 = v148;
        v157 = v147;
        if (!v148)
        {
          while (1)
          {
            v157 = v155 + 1;
            if (__OFADD__(v155, 1))
            {
              break;
            }

            if (v157 >= v154)
            {
              goto LABEL_76;
            }

            v156 = *&v145[8 * v157];
            ++v155;
            if (v156)
            {
              goto LABEL_60;
            }
          }

LABEL_111:
          __break(1u);
          goto LABEL_112;
        }

LABEL_60:
        v158 = (v156 - 1) & v156;
        v159 = *(*(v144 + 48) + ((v157 << 9) | (8 * __clz(__rbit64(v156)))));
        if (!v159)
        {
          goto LABEL_76;
        }
      }

      v161 = [v159 uniqueIdentifier];
      v162 = v252;
      sub_20DD63714();

      v167 = v267;
      v168 = *(v267 + 16);
      v254 = v158;
      if (v168)
      {
        v169 = sub_20D9CB38C(v162, v163, v164, v165, v166);
        v170 = v258;
        if (v171)
        {
          (*(v255 + 16))(v153, *(v167 + 56) + *(v255 + 72) * v169, v263);
          v172 = 0;
        }

        else
        {
          v172 = 1;
        }
      }

      else
      {
        v172 = 1;
        v170 = v258;
      }

      v261(v162, v262);
      v173 = v263;
      (v265)(v153, v172, 1, v263);
      sub_20D9D7558(v153, v152, &qword_27C844288, &qword_20DD94B38);
      v174 = *v259;
      if ((*v259)(v152, 1, v173) == 1)
      {
        break;
      }

      v245 = *v256;
      (v245)(v170, v152, v173);
      v175 = v260;
      swift_beginAccess();
      v176 = v244;
      sub_20D9D7558(v175, v244, &qword_27C844288, &qword_20DD94B38);
      if (v174(v176, 1, v173) == 1)
      {

        v153 = v240;
        sub_20D9D76EC(v240, &qword_27C844288, &qword_20DD94B38);
        sub_20D9D76EC(v175, &qword_27C844288, &qword_20DD94B38);
        sub_20D9D76EC(v176, &qword_27C844288, &qword_20DD94B38);
        v177 = v247;
        (v245)(v247, v258, v173);
        (v265)(v177, 0, 1, v173);
        sub_20DA21108(v177, v175);
        v147 = v157;
        v148 = v254;
        v152 = v232;
        goto LABEL_53;
      }

      v178 = v236;
      (v245)(v236, v176, v173);
      v179 = sub_20DD63924();

      v180 = *v231;
      (*v231)(v178, v173);
      sub_20D9D76EC(v240, &qword_27C844288, &qword_20DD94B38);
      v144 = v249;
      if (v179)
      {
        v181 = v260;
        sub_20D9D76EC(v260, &qword_27C844288, &qword_20DD94B38);
        v182 = v247;
        (v245)(v247, v258, v173);
        (v265)(v182, 0, 1, v173);
        sub_20DA21108(v182, v181);
      }

      else
      {
        v180(v258, v173);
      }

      v147 = v157;
      v148 = v254;
      v152 = v232;
      v153 = v240;
LABEL_54:
      v145 = v253;
    }

    sub_20D9D76EC(v153, &qword_27C844288, &qword_20DD94B38);
    sub_20D9D76EC(v152, &qword_27C844288, &qword_20DD94B38);
    v147 = v157;
    v148 = v254;
LABEL_53:
    v144 = v249;
    goto LABEL_54;
  }

  v270 = &unk_28252A8F8;
  v88 = swift_dynamicCastObjCProtocolConditional();
  v89 = v255;
  if (v88)
  {
    v90 = v88;
    v91 = v56;
    v92 = [objc_msgSend(v90 homeKitObject)];
    swift_unknownObjectRelease();
    v93 = v265;
    sub_20DD63714();

    v98 = v267;
    if (*(v267 + 16))
    {
      v99 = sub_20D9CB38C(v93, v94, v95, v96, v97);
      v100 = v262;
      v101 = v264;
      if (v102)
      {
        v103 = *(v98 + 56) + *(v89 + 72) * v99;
        v104 = v250;
        (*(v89 + 16))(v250, v103, v61);

        (*(v101 + 8))(v93, v100);
        (*(v89 + 56))(v104, 0, 1, v61);
        return;
      }

      (*(v101 + 8))(v93, v100);
    }

    else
    {

      (*(v264 + 8))(v93, v262);
    }
  }

  (*(v89 + 56))(v250, 1, 1, v61);
}

void *HFPredictionsManager.AnalyticsScoringCache.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t HFPredictionsManager.AnalyticsScoringCache.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20DA20170(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844288, &qword_20DD94B38);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  v11 = sub_20DD63944();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  sub_20D9D7558(a1, v10, &qword_27C844288, &qword_20DD94B38);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    return sub_20D9D76EC(v10, &qword_27C844288, &qword_20DD94B38);
  }

  v20 = *(v12 + 32);
  v20(v17, v10, v11);
  v21 = v28;
  swift_beginAccess();
  sub_20D9D7558(v21, v8, &qword_27C844288, &qword_20DD94B38);
  if (v18(v8, 1, v11) == 1)
  {
    sub_20D9D76EC(v8, &qword_27C844288, &qword_20DD94B38);
    v22 = v27;
    v20(v27, v17, v11);
    (*(v12 + 56))(v22, 0, 1, v11);
    swift_beginAccess();
    return sub_20DA21178(v22, v21);
  }

  else
  {
    v23 = v21;
    v20(v15, v8, v11);
    v24 = sub_20DD63924();
    v25 = *(v12 + 8);
    v25(v15, v11);
    if (v24)
    {
      v26 = v27;
      v20(v27, v17, v11);
      (*(v12 + 56))(v26, 0, 1, v11);
      swift_beginAccess();
      return sub_20DA21178(v26, v23);
    }

    else
    {
      return (v25)(v17, v11);
    }
  }
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20DA20608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20D9C76B4;

  return sub_20DA1D368(a1, v4, v5, v6, v7);
}

uint64_t sub_20DA206D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20DA21240;

  return v6(a1);
}

uint64_t sub_20DA207C8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20DA208C0;

  return v6(a1);
}

uint64_t sub_20DA208C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20DA209B8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_20DA20AAC;

  return v5(v2 + 32);
}

uint64_t sub_20DA20AAC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_20DA20BC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D9D77C4;

  return sub_20DA209B8(a1, v4);
}

uint64_t sub_20DA20C78(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_20DA20D6C;

  return v5(v2 + 16);
}

uint64_t sub_20DA20D6C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_20DA20E9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D9D77C4;

  return sub_20DA20C78(a1, v4);
}

uint64_t sub_20DA20F54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D9D77C4;

  return sub_20DA207C8(a1, v4);
}

uint64_t sub_20DA2100C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20D9C76B4;

  return sub_20DA207C8(a1, v4);
}

uint64_t sub_20DA210C4(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_20D9D7510(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20DA21108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844288, &qword_20DD94B38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20DA21178(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844288, &qword_20DD94B38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_20DA211E8()
{
  result = qword_280E02278;
  if (!qword_280E02278)
  {
    sub_20DD64544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E02278);
  }

  return result;
}

unint64_t CameraEventDebugLogType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_20DA21258()
{
  v1 = *v0;
  sub_20DD65A64();
  MEMORY[0x20F3269D0](v1);
  return sub_20DD65AA4();
}

uint64_t sub_20DA212A0(uint64_t a1)
{
  v2 = *v1;
  sub_20DD65A64();
  MEMORY[0x20F3269D0](v2);
  return sub_20DD65AA4();
}

unint64_t *sub_20DA212E4@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id CameraEventDebugLogger.__allocating_init(cameraProfile:)(uint64_t a1)
{
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 15) = 0;
  *(v3 + 16) = 0;
  *(v3 + 17) = sub_20D9D5DF8(MEMORY[0x277D84F90]);
  v4 = OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval;
  v5 = sub_20DD63484();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  *(v3 + 14) = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CameraEventDebugLogger.init(cameraProfile:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 15) = 0;
  *(v1 + 16) = 0;
  *(v1 + 17) = sub_20D9D5DF8(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval;
  v4 = sub_20DD63484();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *(v1 + 14) = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CameraEventDebugLogger(0);
  return objc_msgSendSuper2(&v6, sel_init);
}

id CameraEventDebugLogger.__allocating_init()()
{
  v0 = swift_allocObject();

  return [v0 initWithCameraProfile_];
}

uint64_t static CameraEventDebugLogger.debugLogDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v15 - v7;
  v9 = [objc_opt_self() externalCachesDirectory];
  if (v9)
  {
    v10 = v9;
    sub_20DD634F4();

    v11 = sub_20DD63514();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v11 = sub_20DD63514();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  sub_20DA031AC(v6, v8, &qword_27C8442B8, &qword_20DD94B60);
  sub_20DD63514();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_20D9D76EC(v8, &qword_27C8442B8, &qword_20DD94B60);
    v13 = 1;
  }

  else
  {
    v15[1] = v1;
    swift_getMetatypeMetadata();
    sub_20DD64ED4();
    sub_20DD634E4();

    (*(v12 + 8))(v8, v11);
    v13 = 0;
  }

  return (*(v12 + 56))(a1, v13, 1, v11);
}

uint64_t static CameraEventDebugLogger.debugLogFileURL(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  v8 = sub_20DD63744();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = v2;
  swift_getMetatypeMetadata();
  v21[0] = sub_20DD64ED4();
  v21[1] = v12;
  MEMORY[0x20F325E90](95, 0xE100000000000000);
  v13 = [a1 uniqueIdentifier];
  sub_20DD63714();

  v14 = sub_20DD636E4();
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x20F325E90](v14, v16);

  MEMORY[0x20F325E90](0x6C6E6F736A2ELL, 0xE600000000000000);
  static CameraEventDebugLogger.debugLogDirectory.getter(v7);
  v17 = sub_20DD63514();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {

    sub_20D9D76EC(v7, &qword_27C8442B8, &qword_20DD94B60);
    v19 = 1;
  }

  else
  {
    sub_20DD634E4();

    (*(v18 + 8))(v7, v17);
    v19 = 0;
  }

  return (*(v18 + 56))(a2, v19, 1, v17);
}

uint64_t static CameraEventDebugLogger.dateIntervalFileURL(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_20DD63744();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_20DD65704();
  v23 = v2;
  swift_getMetatypeMetadata();
  v12 = sub_20DD64ED4();
  v14 = v13;

  v23 = v12;
  v24 = v14;
  MEMORY[0x20F325E90](95, 0xE100000000000000);
  v15 = [a1 uniqueIdentifier];
  sub_20DD63714();

  v16 = sub_20DD636E4();
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  MEMORY[0x20F325E90](v16, v18);

  MEMORY[0x20F325E90](0xD000000000000012, 0x800000020DD98D40);
  static CameraEventDebugLogger.debugLogDirectory.getter(v7);
  v19 = sub_20DD63514();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v7, 1, v19) == 1)
  {

    sub_20D9D76EC(v7, &qword_27C8442B8, &qword_20DD94B60);
    v21 = 1;
  }

  else
  {
    sub_20DD634E4();

    (*(v20 + 8))(v7, v19);
    v21 = 0;
  }

  return (*(v20 + 56))(a2, v21, 1, v19);
}

id sub_20DA21EBC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  swift_getObjCClassMetadata();
  v9 = a3;
  a4();

  v10 = sub_20DD63514();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_20DD634D4();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_20DA22008()
{
  v1[2] = v0;
  v1[3] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v2 = sub_20DD63514();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA22124, v0, 0);
}

uint64_t sub_20DA22124()
{
  if ([objc_opt_self() isInternalInstall])
  {
    v1 = *(v0[2] + 112);
    v2 = v0[6];
    v3 = v0[7];
    v4 = v0[5];
    if (!v1)
    {
      v7 = v0[4];
      v8 = *(v3 + 56);
      v8(v0[5], 1, 1, v0[6]);
      sub_20D9D76EC(v4, &qword_27C8442B8, &qword_20DD94B60);
      v8(v7, 1, 1, v2);
LABEL_8:
      sub_20D9D76EC(v0[4], &qword_27C8442B8, &qword_20DD94B60);
      goto LABEL_9;
    }

    v5 = v1;
    static CameraEventDebugLogger.debugLogFileURL(for:)(v5, v4);

    v6 = *(v3 + 48);
    if (v6(v4, 1, v2) == 1)
    {
      sub_20D9D76EC(v0[5], &qword_27C8442B8, &qword_20DD94B60);
    }

    else
    {
      v9 = v0[9];
      v10 = v0[6];
      v11 = v0[7];
      (*(v11 + 32))(v9, v0[5], v10);
      sub_20DA2A7CC();
      (*(v11 + 8))(v9, v10);
    }

    v12 = v0[6];
    v13 = v0[4];
    v14 = v5;
    static CameraEventDebugLogger.dateIntervalFileURL(for:)(v14, v13);

    if (v6(v13, 1, v12) == 1)
    {
      goto LABEL_8;
    }

    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];
    (*(v18 + 32))(v17, v0[4], v19);
    sub_20DA2A7CC();
    (*(v18 + 8))(v17, v19);
  }

LABEL_9:

  v15 = v0[1];

  return v15();
}

uint64_t sub_20DA22540(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_20DA225E8;

  return sub_20DA22008();
}

uint64_t sub_20DA225E8()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *v1;

  v6 = *(v3 + 24);
  if (v2)
  {
    v7 = sub_20DD63494();

    (*(v6 + 16))(v6, v7);
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }

  _Block_release(*(v4 + 24));
  v8 = *(v5 + 8);

  return v8();
}

uint64_t sub_20DA22770(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 1024) = v6;
  *(v7 + 1016) = a6;
  *(v7 + 1008) = a5;
  *(v7 + 1000) = a4;
  *(v7 + 1120) = a3;
  *(v7 + 992) = a2;
  *(v7 + 984) = a1;
  *(v7 + 1032) = swift_getObjectType();
  v8 = sub_20DD63744();
  *(v7 + 1040) = v8;
  *(v7 + 1048) = *(v8 - 8);
  *(v7 + 1056) = swift_task_alloc();
  v9 = sub_20DD636C4();
  *(v7 + 1064) = v9;
  *(v7 + 1072) = *(v9 - 8);
  *(v7 + 1080) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  *(v7 + 1088) = swift_task_alloc();
  v10 = sub_20DD63514();
  *(v7 + 1096) = v10;
  *(v7 + 1104) = *(v10 - 8);
  *(v7 + 1112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA22970, v6, 0);
}

uint64_t sub_20DA22970()
{
  v150 = v0;
  v149[2] = *MEMORY[0x277D85DE8];
  if (![objc_opt_self() isInternalInstall])
  {
    goto LABEL_9;
  }

  v1 = *(*(v0 + 1024) + 112);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  v4 = *(v0 + 1088);
  if (!v1)
  {
    (*(v2 + 56))(*(v0 + 1088), 1, 1, *(v0 + 1096));
    goto LABEL_8;
  }

  v5 = v1;
  static CameraEventDebugLogger.debugLogFileURL(for:)(v5, v4);

  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
LABEL_8:
    sub_20D9D76EC(*(v0 + 1088), &qword_27C8442B8, &qword_20DD94B60);
LABEL_9:
    [objc_opt_self() hf:33 errorWithCode:?];
    swift_willThrow();
    goto LABEL_10;
  }

  v146 = v5;
  v6 = *(v0 + 1024);
  (*(*(v0 + 1104) + 32))(*(v0 + 1112), *(v0 + 1088), *(v0 + 1096));
  v7 = *(v6 + 120);
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  v10 = *(v0 + 1080);
  v11 = *(v0 + 1072);
  v12 = *(v0 + 1064);
  v144 = *(v0 + 1120);
  v143 = *(v0 + 992);
  v142 = v12;
  *(v6 + 120) = v9;
  v13 = sub_20D9D5FE0(MEMORY[0x277D84F90]);
  v14 = *(v6 + 120);
  *(v0 + 40) = MEMORY[0x277D83E88];
  *(v0 + 16) = v14;
  sub_20D9C29D8((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = v13;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 48, *(v0 + 72));
  sub_20DA294AC(*v16, 0x756F436863746566, 0xEC0000007265746ELL, isUniquelyReferenced_nonNull_native, v149);
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  v17 = v149[0];
  v18 = objc_opt_self();
  v19 = [v18 hf_rfc3339Formatter];
  sub_20DD63684();
  v20 = sub_20DD63624();
  v21 = *(v11 + 8);
  v21(v10, v12);
  v22 = [v19 stringFromDate_];

  v23 = sub_20DD64EB4();
  v25 = v24;

  v26 = MEMORY[0x277D837D0];
  *(v0 + 104) = MEMORY[0x277D837D0];
  *(v0 + 80) = v23;
  *(v0 + 88) = v25;
  sub_20D9C29D8((v0 + 80), (v0 + 112));
  LOBYTE(v23) = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = v17;
  v27 = *(v0 + 136);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 112, v27);
  v29 = *(v27 - 8);
  v30 = swift_task_alloc();
  (*(v29 + 16))(v30, v28, v27);
  sub_20DA29604(*v30, v30[1], 0x6D617473656D6974, 0xE900000000000070, v23, v149);
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  v31 = v149[0];
  *(v0 + 168) = v26;
  *(v0 + 144) = 0x6863746566;
  *(v0 + 152) = 0xE500000000000000;
  sub_20D9C29D8((v0 + 144), (v0 + 176));
  LOBYTE(v27) = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = v31;
  v32 = *(v0 + 200);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v32);
  v34 = *(v32 - 8);
  v35 = swift_task_alloc();
  (*(v34 + 16))(v35, v33, v32);
  sub_20DA29604(*v35, v35[1], 1701869940, 0xE400000000000000, v27, v149);
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  v36 = v149[0];
  v145 = v18;
  v37 = [v18 hf_rfc3339Formatter];
  sub_20DD63464();
  v38 = sub_20DD63624();
  v21(v10, v142);
  v39 = [v37 stringFromDate_];

  v40 = sub_20DD64EB4();
  v42 = v41;

  *(v0 + 232) = v26;
  *(v0 + 208) = v40;
  *(v0 + 216) = v42;
  sub_20D9C29D8((v0 + 208), (v0 + 240));
  LOBYTE(v40) = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = v36;
  v43 = *(v0 + 264);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 240, v43);
  v45 = *(v43 - 8);
  v46 = swift_task_alloc();
  (*(v45 + 16))(v46, v44, v43);
  sub_20DA29604(*v46, v46[1], 0x7461447472617473, 0xE900000000000065, v40, v149);
  __swift_destroy_boxed_opaque_existential_0((v0 + 240));

  v47 = v149[0];
  sub_20DD63474();
  *(v0 + 296) = MEMORY[0x277D839F8];
  *(v0 + 272) = v48;
  sub_20D9C29D8((v0 + 272), (v0 + 304));
  LOBYTE(v40) = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = v47;
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 304, *(v0 + 328));
  sub_20DA297E8(0x6E6F697461727564, 0xE800000000000000, v40, v149, *v49);
  __swift_destroy_boxed_opaque_existential_0((v0 + 304));
  v50 = v149[0];
  *(v0 + 360) = MEMORY[0x277D83E88];
  *(v0 + 336) = v143;
  sub_20D9C29D8((v0 + 336), (v0 + 368));
  LOBYTE(v47) = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = v50;
  v51 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 368, *(v0 + 392));
  sub_20DA294AC(*v51, 0x74696D696CLL, 0xE500000000000000, v47, v149);
  __swift_destroy_boxed_opaque_existential_0((v0 + 368));
  v52 = v149[0];
  *(v0 + 424) = MEMORY[0x277D839B0];
  *(v0 + 400) = v144;
  sub_20D9C29D8((v0 + 400), (v0 + 432));
  LOBYTE(v47) = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = v52;
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 432, *(v0 + 456));
  sub_20DA29938(*v53, 0x6E69646E65637361, 0xE900000000000067, v47, v149);
  __swift_destroy_boxed_opaque_existential_0((v0 + 432));
  v54 = v149[0];
  v147 = v149[0];
  v55 = [v146 accessory];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 hf_serviceNameComponents];

    v58 = [v57 composedString];
    v59 = sub_20DD64EB4();
    v61 = v60;

    *(v0 + 488) = v26;
    *(v0 + 464) = v59;
    *(v0 + 472) = v61;
    sub_20D9C29D8((v0 + 464), (v0 + 944));
    LOBYTE(v58) = swift_isUniquelyReferenced_nonNull_native();
    v149[0] = v54;
    v62 = *(v0 + 968);
    v63 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 944, v62);
    v64 = *(v62 - 8);
    v65 = swift_task_alloc();
    (*(v64 + 16))(v65, v63, v62);
    sub_20DA29C88(v65, 0x614E6172656D6163, 0xEA0000000000656DLL, v58, v149, v26);
    __swift_destroy_boxed_opaque_existential_0((v0 + 944));

    v66 = v149[0];
  }

  else
  {
    sub_20DA27AE8(0x614E6172656D6163, 0xEA0000000000656DLL, sub_20D9D77C8, sub_20D9D2E2C, (v0 + 496));
    sub_20D9D76EC(v0 + 496, &qword_27C8442C0, &qword_20DD94B78);
    v66 = v147;
  }

  v69 = v26;
  v70 = *(v0 + 1056);
  v71 = *(v0 + 1048);
  v72 = *(v0 + 1040);
  v73 = [v146 uniqueIdentifier];
  sub_20DD63714();

  v74 = sub_20DD636E4();
  v76 = v75;
  (*(v71 + 8))(v70, v72);
  *(v0 + 552) = v69;
  *(v0 + 528) = v74;
  *(v0 + 536) = v76;
  sub_20D9C29D8((v0 + 528), (v0 + 560));
  LOBYTE(v70) = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = v66;
  v77 = *(v0 + 584);
  v78 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 560, v77);
  v79 = *(v77 - 8);
  v80 = swift_task_alloc();
  (*(v79 + 16))(v80, v78, v77);
  sub_20DA29604(*v80, v80[1], 0xD000000000000011, 0x800000020DD98D60, v70, v149);
  __swift_destroy_boxed_opaque_existential_0((v0 + 560));

  v81 = v149[0];
  v148 = v149[0];
  v82 = [v146 recordingEventManager];
  if (v82)
  {
    v83 = v82;
    v84 = [v82 zoneName];

    v85 = sub_20DD64EB4();
    v87 = v86;

    *(v0 + 616) = v69;
    *(v0 + 592) = v85;
    *(v0 + 600) = v87;
    sub_20D9C29D8((v0 + 592), (v0 + 912));
    LOBYTE(v85) = swift_isUniquelyReferenced_nonNull_native();
    v149[0] = v81;
    v88 = *(v0 + 936);
    v89 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 912, v88);
    v90 = *(v88 - 8);
    v91 = swift_task_alloc();
    (*(v90 + 16))(v91, v89, v88);
    sub_20DA29C88(v91, 0x656D614E656E6F7ALL, 0xE800000000000000, v85, v149, v69);
    __swift_destroy_boxed_opaque_existential_0((v0 + 912));

    v92 = v149[0];
  }

  else
  {
    sub_20DA27AE8(0x656D614E656E6F7ALL, 0xE800000000000000, sub_20D9D77C8, sub_20D9D2E2C, (v0 + 624));
    sub_20D9D76EC(v0 + 624, &qword_27C8442C0, &qword_20DD94B78);
    v92 = v148;
  }

  v93 = v69;
  v94 = *(v0 + 1008);
  v95 = *(v0 + 1000);
  *(v0 + 680) = v69;
  *(v0 + 656) = v95;
  *(v0 + 664) = v94;
  sub_20D9C29D8((v0 + 656), (v0 + 688));

  LOBYTE(v94) = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = v92;
  v96 = *(v0 + 712);
  v97 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 688, v96);
  v98 = *(v96 - 8);
  v99 = swift_task_alloc();
  (*(v98 + 16))(v99, v97, v96);
  sub_20DA29604(*v99, v99[1], 0x6E6F73616572, 0xE600000000000000, v94, v149);
  __swift_destroy_boxed_opaque_existential_0((v0 + 688));

  v100 = v149[0];
  v101 = sub_20DD63414();
  v102 = [v101 hf_hksvDescription];

  v103 = sub_20DD64EB4();
  v105 = v104;

  *(v0 + 744) = v69;
  *(v0 + 720) = v103;
  *(v0 + 728) = v105;
  sub_20D9C29D8((v0 + 720), (v0 + 752));
  LOBYTE(v103) = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = v100;
  v106 = *(v0 + 776);
  v107 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 752, v106);
  v108 = *(v106 - 8);
  v109 = swift_task_alloc();
  (*(v108 + 16))(v109, v107, v106);
  sub_20DA29604(*v109, v109[1], 0xD000000000000012, 0x800000020DD98D80, v103, v149);
  __swift_destroy_boxed_opaque_existential_0((v0 + 752));

  v110 = v149[0];
  v111 = [v145 hf_rfc3339Formatter];
  v112 = sub_20DD63624();
  v113 = [v111 stringFromDate_];

  v114 = sub_20DD64EB4();
  v116 = v115;

  *(v0 + 808) = v69;
  *(v0 + 784) = v114;
  *(v0 + 792) = v116;
  sub_20D9C29D8((v0 + 784), (v0 + 816));
  LOBYTE(v114) = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = v110;
  v117 = *(v0 + 840);
  v118 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 816, v117);
  v119 = *(v117 - 8);
  v120 = swift_task_alloc();
  (*(v119 + 16))(v120, v118, v117);
  sub_20DA29604(*v120, v120[1], 0xD000000000000010, 0x800000020DD98DA0, v114, v149);
  __swift_destroy_boxed_opaque_existential_0((v0 + 816));

  v121 = v149[0];
  v122 = sub_20DD63624();
  v123 = [v122 hf_hksvDescription];

  v124 = sub_20DD64EB4();
  v126 = v125;

  *(v0 + 872) = v93;
  *(v0 + 848) = v124;
  *(v0 + 856) = v126;
  sub_20D9C29D8((v0 + 848), (v0 + 880));
  LOBYTE(v124) = swift_isUniquelyReferenced_nonNull_native();
  v149[0] = v121;
  v127 = *(v0 + 904);
  v128 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 880, v127);
  v129 = *(v127 - 8);
  v130 = swift_task_alloc();
  (*(v129 + 16))(v130, v128, v127);
  sub_20DA29604(*v130, v130[1], 0xD00000000000001ALL, 0x800000020DD98DC0, v124, v149);
  __swift_destroy_boxed_opaque_existential_0((v0 + 880));

  v131 = v149[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
  v132 = sub_20DD64DB4();
  v133 = sub_20DD634D4();
  *(v0 + 976) = 0;
  LODWORD(v128) = [v132 hf:v133 appendJSONLToURL:v0 + 976 error:?];

  v134 = *(v0 + 976);
  v135 = *(v0 + 1112);
  v136 = *(v0 + 1104);
  v137 = *(v0 + 1096);
  if (v128)
  {
    v138 = *(v136 + 8);
    v139 = v134;
    v138(v135, v137);

    v140 = *(v0 + 8);

    return v140(v131);
  }

  v141 = v134;

  sub_20DD634A4();

  swift_willThrow();
  (*(v136 + 8))(v135, v137);
LABEL_10:

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_20DA23D70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7)
{
  v7[2] = a7;
  v11 = sub_20DD636C4();
  v7[3] = v11;
  v7[4] = *(v11 - 8);
  v12 = swift_task_alloc();
  v7[5] = v12;
  v13 = sub_20DD63484();
  v7[6] = v13;
  v7[7] = *(v13 - 8);
  v14 = swift_task_alloc();
  v7[8] = v14;
  v7[9] = _Block_copy(a6);
  sub_20DD63424();
  v15 = sub_20DD64EB4();
  v17 = v16;
  v7[10] = v16;
  sub_20DD63674();

  v18 = swift_task_alloc();
  v7[11] = v18;
  *v18 = v7;
  v18[1] = sub_20DA23F58;

  return sub_20DA22770(v14, a2, a3, v15, v17, v12);
}

uint64_t sub_20DA23F58(uint64_t a1)
{
  v3 = v1;
  v5 = *v2;
  v4 = *v2;
  v6 = *v2;

  v7 = v4[8];
  v8 = v4[7];
  v9 = v4[6];
  (*(v4[4] + 8))(v4[5], v4[3]);
  (*(v8 + 8))(v7, v9);
  if (v3)
  {
    v10 = sub_20DD63494();

    v11 = v10;
    v12 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
    v10 = sub_20DD64DB4();

    v12 = v10;
    v11 = 0;
  }

  v13 = v10;
  v14 = v5[9];
  v14[2](v14, v12, v11);

  _Block_release(v14);

  v15 = v6[1];

  return v15();
}

uint64_t sub_20DA241E4(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  v3[29] = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843530, &qword_20DD95680);
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442D8, &unk_20DD94BA0);
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442E0, &qword_20DD95D90);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v5 = sub_20DD636C4();
  v3[39] = v5;
  v3[40] = *(v5 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v6 = sub_20DD63484();
  v3[44] = v6;
  v3[45] = *(v6 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442B8, &qword_20DD94B60);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v7 = sub_20DD63514();
  v3[50] = v7;
  v3[51] = *(v7 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20DA24514, v2, 0);
}

uint64_t sub_20DA24514()
{
  v141 = v0;
  v140[2] = *MEMORY[0x277D85DE8];
  v139 = v0;
  if (![objc_opt_self() isInternalInstall])
  {
    goto LABEL_23;
  }

  v2 = *(v0[28] + 112);
  v3 = v0[50];
  v4 = v0[51];
  v5 = v0[49];
  if (!v2)
  {
    (*(v4 + 56))(v0[49], 1, 1, v0[50]);
    goto LABEL_22;
  }

  v6 = v2;
  static CameraEventDebugLogger.debugLogFileURL(for:)(v6, v5);

  v7 = *(v4 + 48);
  if (v7(v5, 1, v3) == 1)
  {
LABEL_22:
    sub_20D9D76EC(v0[49], &qword_27C8442B8, &qword_20DD94B60);
LABEL_23:
    [objc_opt_self() hf:33 errorWithCode:?];
    swift_willThrow();
    goto LABEL_24;
  }

  v8 = v0[27];
  v9 = *(v0[51] + 32);
  v9(v0[53], v0[49], v0[50]);
  if (!v8)
  {
    v10 = v0[28];
    v11 = *(v10 + 128);
    v12 = __CFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      __break(1u);
      goto LABEL_65;
    }

    *(v10 + 128) = v13;
  }

  v14 = sub_20DA25998(v0[26], v0[27]);
  v1 = v14;
  if (!*(v14 + 16))
  {
    v134 = v14;
    (*(v0[51] + 8))(v0[53], v0[50]);
LABEL_60:

    v121 = v139[1];

    return v121(v134);
  }

  if (v0[27] != 1)
  {
    goto LABEL_58;
  }

  v3 = v0[26];
  v5 = v3 >> 62;
  if (!(v3 >> 62))
  {
    v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v133 = v14;
    if (!v15)
    {
      goto LABEL_41;
    }

LABEL_11:
    v128 = v5;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v123 = MEMORY[0x20F326680](0, v0[26]);
      v22 = (v15 - 1);
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_74;
      }

      v20 = MEMORY[0x20F326680](v22, v0[26]);
      v19 = v123;
LABEL_16:
      v124 = v9;
      v129 = v7;
      v127 = v3;
      v21 = [v19 dateOfOccurrence];
      sub_20DD63674();
      v22 = [v20 hf_endDate];
      if (v22)
      {
        v27 = v22;
        v28 = v0[45];
        v130 = v0[44];
        v29 = v0[38];
        v30 = v0[28];

        sub_20DD63674();
        sub_20DD63444();
        v31 = OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval;
        swift_beginAccess();
        v137 = v30;
        v135 = v31;
        sub_20D9D7558(v30 + v31, v29, &qword_27C8442E0, &qword_20DD95D90);
        v32 = *(v28 + 48);
        LODWORD(v31) = v32(v29, 1, v130);
        sub_20D9D76EC(v29, &qword_27C8442E0, &qword_20DD95D90);
        if (v31 != 1)
        {
          v33 = v0[44];
          v34 = v0[45];
          v35 = v0[37];
          v36 = v0[34];
          v37 = v0[33];
          (*(v34 + 16))(v35, v139[47], v33);
          (*(v34 + 56))(v35, 0, 1, v33);
          v38 = *(v37 + 48);
          sub_20D9D7558(v35, v36, &qword_27C8442E0, &qword_20DD95D90);
          v0 = v139;
          sub_20D9D7558(v137 + v135, v36 + v38, &qword_27C8442E0, &qword_20DD95D90);
          v39 = v32(v36, 1, v33);
          v40 = v139[44];
          if (v39 == 1)
          {
            sub_20D9D76EC(v139[37], &qword_27C8442E0, &qword_20DD95D90);
            if (v32(v36 + v38, 1, v40) == 1)
            {
              v41 = v139[45];
              v42 = v139[34];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              sub_20D9D76EC(v42, &qword_27C8442E0, &qword_20DD95D90);
              (*(v41 + 8))(v139[47], v139[44]);
LABEL_39:
              v1 = v133;
LABEL_40:
              v3 = v127;
              v5 = v128;
              goto LABEL_41;
            }

            goto LABEL_30;
          }

          sub_20D9D7558(v139[34], v139[36], &qword_27C8442E0, &qword_20DD95D90);
          if (v32(v36 + v38, 1, v40) == 1)
          {
            v46 = v139[44];
            v45 = v139[45];
            v47 = v139[36];
            sub_20D9D76EC(v139[37], &qword_27C8442E0, &qword_20DD95D90);
            (*(v45 + 8))(v47, v46);
LABEL_30:
            sub_20D9D76EC(v139[34], &qword_27C8442D8, &unk_20DD94BA0);
            goto LABEL_31;
          }

          v89 = v139[45];
          v90 = v139[46];
          v91 = v139[44];
          v92 = v139[37];
          v93 = v139[36];
          v132 = v139[34];
          (*(v89 + 32))(v90, v36 + v38, v91);
          sub_20DA2B610(&qword_27C844300, MEMORY[0x277CC88A8], MEMORY[0x277CC88C8]);
          v94 = sub_20DD64E64();
          v95 = *(v89 + 8);
          v95(v90, v91);
          sub_20D9D76EC(v92, &qword_27C8442E0, &qword_20DD95D90);
          v96 = v93;
          v0 = v139;
          v95(v96, v91);
          sub_20D9D76EC(v132, &qword_27C8442E0, &qword_20DD95D90);
          if (v94)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v95(v139[47], v139[44]);
            goto LABEL_39;
          }
        }

LABEL_31:
        v131 = v0[50];
        v49 = v0[40];
        v48 = v0[41];
        v50 = v0[39];
        v125 = v50;
        v126 = v0[48];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8442E8, &unk_20DD94BB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_20DD94280;
        *(inited + 32) = 0x7461447472617473;
        *(inited + 40) = 0xE900000000000065;
        v52 = objc_opt_self();
        v53 = [v52 hf_rfc3339Formatter];
        sub_20DD63464();
        v54 = sub_20DD63624();
        v55 = *(v49 + 8);
        v55(v48, v50);
        v56 = [v53 stringFromDate_];

        v57 = sub_20DD64EB4();
        v59 = v58;

        v60 = MEMORY[0x277D837D0];
        *(inited + 48) = v57;
        *(inited + 56) = v59;
        *(inited + 72) = v60;
        *(inited + 80) = 0x65746144646E65;
        *(inited + 88) = 0xE700000000000000;
        v61 = [v52 hf_rfc3339Formatter];
        sub_20DD63434();
        v62 = sub_20DD63624();
        v55(v48, v125);
        v63 = [v61 stringFromDate_];

        v64 = sub_20DD64EB4();
        v66 = v65;

        *(inited + 120) = v60;
        *(inited + 96) = v64;
        *(inited + 104) = v66;
        sub_20D9D5FE0(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442F0, &qword_20DD93BC8);
        swift_arrayDestroy();
        v67 = v6;
        static CameraEventDebugLogger.dateIntervalFileURL(for:)(v67, v126);

        if (v129(v126, 1, v131) == 1)
        {
          v0 = v139;
          v68 = v139[48];

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_20D9D76EC(v68, &qword_27C8442B8, &qword_20DD94B60);
        }

        else
        {
          v0 = v139;
          v124(v139[52], v139[48], v139[50]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
          v69 = sub_20DD64DB4();

          v70 = sub_20DD634D4();
          v139[25] = 0;
          v71 = [v69 hf:v70 writeJSONToURL:v139 + 25 error:?];

          v72 = v139[25];
          if (!v71)
          {
            v81 = v139[52];
            v80 = v139[53];
            v82 = v139[50];
            v83 = v139[51];
            v84 = v139[47];
            v85 = v139[45];
            v86 = v139[44];
            v87 = v72;

            sub_20DD634A4();

            swift_willThrow();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            v88 = *(v83 + 8);
            v88(v81, v82);
            (*(v85 + 8))(v84, v86);
            v88(v80, v82);
            goto LABEL_24;
          }

          v73 = v139[52];
          v74 = v139[50];
          v75 = *(v139[51] + 8);
          v76 = v72;
          v75(v73, v74);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        v1 = v133;
        v77 = v0[44];
        v78 = v0[45];
        v79 = v0[35];
        (*(v78 + 32))(v79, v0[47], v77);
        (*(v78 + 56))(v79, 0, 1, v77);
        swift_beginAccess();
        sub_20DA2A8F4(v79, v137 + v135);
        swift_endAccess();
        goto LABEL_40;
      }

      __break(1u);
LABEL_74:
      __break(1u);
      return MEMORY[0x2821FEBD8](v22, v23, v24, v25, v26);
    }

    v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      v17 = v15 - 1;
      if (!__OFSUB__(v15, 1))
      {
        if (v17 < v16)
        {
          v18 = v0[26];
          v19 = *(v18 + 32);
          v20 = *(v18 + 32 + 8 * v17);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          goto LABEL_16;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_65:
  v15 = sub_20DD655B4();
  v133 = v1;
  if (v15)
  {
    goto LABEL_11;
  }

LABEL_41:
  if (v5)
  {
    v97 = sub_20DD655B4();
  }

  else
  {
    v97 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = MEMORY[0x277D84F90];
  if (v97)
  {
    v140[0] = MEMORY[0x277D84F90];
    sub_20DA4B028(0, v97 & ~(v97 >> 63), 0);
    if ((v97 & 0x8000000000000000) == 0)
    {
      v99 = 0;
      v100 = v0[31];
      v138 = v0[30];
      v98 = v140[0];
      v101 = v3 & 0xC000000000000001;
      v136 = v0[26] + 32;
      do
      {
        if (v101)
        {
          v102 = MEMORY[0x20F326680](v99, v0[26]);
        }

        else
        {
          v102 = *(v136 + 8 * v99);
          swift_unknownObjectRetain();
        }

        v103 = v0[32];
        v104 = *(v138 + 48);
        v105 = [v102 uniqueIdentifier];
        sub_20DD63714();

        *(v103 + v104) = v102;
        v140[0] = v98;
        v107 = *(v98 + 16);
        v106 = *(v98 + 24);
        if (v107 >= v106 >> 1)
        {
          sub_20DA4B028((v106 > 1), v107 + 1, 1);
          v98 = v140[0];
        }

        v108 = v0[32];
        ++v99;
        *(v98 + 16) = v107 + 1;
        sub_20DA031AC(v108, v98 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v107, &qword_27C843530, &qword_20DD95680);
      }

      while (v97 != v99);
      v1 = v133;
      goto LABEL_54;
    }

LABEL_72:
    __break(1u);
  }

LABEL_54:
  if (*(v98 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843440, &qword_20DD94BC0);
    v109 = sub_20DD65884();
  }

  else
  {
    v109 = MEMORY[0x277D84F98];
  }

  v140[0] = v109;

  sub_20DA28F0C(v110, 1, v140);
  v111 = v0[28];

  *(v111 + 136) = v140[0];

LABEL_58:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
  v112 = sub_20DD64DB4();
  v113 = sub_20DD634D4();
  v0[24] = 0;
  v114 = [v112 hf:v113 appendJSONLToURL:v0 + 24 error:?];

  v115 = v0[24];
  v116 = v0[53];
  v117 = v0[50];
  v118 = v0[51];
  if (v114)
  {
    v134 = v1;
    v119 = *(v118 + 8);
    v120 = v115;
    v119(v116, v117);
    goto LABEL_60;
  }

  v122 = v115;

  sub_20DD634A4();

  swift_willThrow();
  (*(v118 + 8))(v116, v117);
LABEL_24:

  v43 = v139[1];

  return v43();
}

uint64_t sub_20DA256DC(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844370, &qword_20DD94DA0);
  v6 = sub_20DD64FD4();
  v4[4] = v6;

  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_20DA257C8;

  return sub_20DA241E4(v6, a2);
}

uint64_t sub_20DA257C8(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *v2;

  if (v3)
  {
    v6 = sub_20DD63494();

    v7 = v6;
    v8 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80);
    v9 = sub_20DD64DB4();

    v8 = v9;
    v7 = 0;
    v6 = v9;
  }

  v10 = *(v4 + 24);
  (v10)[2](v10, v8, v7);

  _Block_release(v10);
  v11 = *(v5 + 8);

  return v11();
}

unint64_t sub_20DA25998(unint64_t a1, char **a2)
{
  v3 = v2;
  v6 = sub_20DD636C4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v126 = v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v123 - v10;
  v12 = *(v2 + 128);
  v137 = MEMORY[0x277D83E88];
  *&v136 = v12;
  sub_20D9C29D8(&v136, &v134);
  v13 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v133 = v13;
  v15 = __swift_mutable_project_boxed_opaque_existential_1(&v134, v135);
  sub_20DA294AC(*v15, 0x6F43657461647075, 0xED00007265746E75, isUniquelyReferenced_nonNull_native, &v133);
  __swift_destroy_boxed_opaque_existential_0(&v134);
  v138 = v133;
  v127 = objc_opt_self();
  v16 = [v127 hf_rfc3339Formatter];
  sub_20DD63684();
  v17 = sub_20DD63624();
  v128 = *(v7 + 8);
  v128(v11, v6);
  v18 = [v16 stringFromDate_];

  v19 = sub_20DD64EB4();
  v21 = v20;

  v22 = MEMORY[0x277D837D0];
  v137 = MEMORY[0x277D837D0];
  *&v136 = v19;
  *(&v136 + 1) = v21;
  sub_20D9C29D8(&v136, &v134);
  v23 = v138;
  LOBYTE(v21) = swift_isUniquelyReferenced_nonNull_native();
  v133 = v23;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v134, v135);
  MEMORY[0x28223BE20](v24);
  v26 = (v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_20DA29604(*v26, v26[1], 0x6D617473656D6974, 0xE900000000000070, v21, &v133);
  __swift_destroy_boxed_opaque_existential_0(&v134);
  v28 = v133;
  v138 = v133;
  v129 = a2;
  v130 = v3;
  v29 = *(v3 + 112);
  if (!v29)
  {
    sub_20DA27AE8(0x614E6172656D6163, 0xEA0000000000656DLL, sub_20D9D77C8, sub_20D9D2E2C, &v134);
    sub_20D9D76EC(&v134, &qword_27C8442C0, &qword_20DD94B78);
    v42 = 0x656D614E656E6F7ALL;
    goto LABEL_9;
  }

  v30 = [*(v3 + 112) accessory];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 hf_serviceNameComponents];

    v33 = [v32 composedString];
    v34 = sub_20DD64EB4();
    v36 = v35;

    v137 = v22;
    *&v136 = v34;
    *(&v136 + 1) = v36;
    sub_20D9C29D8(&v136, &v134);
    LOBYTE(v33) = swift_isUniquelyReferenced_nonNull_native();
    v133 = v28;
    v37 = __swift_mutable_project_boxed_opaque_existential_1(&v134, v135);
    MEMORY[0x28223BE20](v37);
    v39 = v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v39);
    v41 = v39;
    a2 = v129;
    sub_20DA29C88(v41, 0x614E6172656D6163, 0xEA0000000000656DLL, v33, &v133, v22);
    __swift_destroy_boxed_opaque_existential_0(&v134);
    v138 = v133;
  }

  else
  {
    sub_20DA27AE8(0x614E6172656D6163, 0xEA0000000000656DLL, sub_20D9D77C8, sub_20D9D2E2C, &v134);
    sub_20D9D76EC(&v134, &qword_27C8442C0, &qword_20DD94B78);
  }

  v42 = 0x656D614E656E6F7ALL;
  v43 = [v29 recordingEventManager];
  if (!v43)
  {
LABEL_9:
    sub_20DA27AE8(0x656D614E656E6F7ALL, 0xE800000000000000, sub_20D9D77C8, sub_20D9D2E2C, &v134);
    sub_20D9D76EC(&v134, &qword_27C8442C0, &qword_20DD94B78);
    if (a2 == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v44 = v43;
  v45 = [v43 zoneName];

  v46 = sub_20DD64EB4();
  v48 = v47;

  v137 = v22;
  *&v136 = v46;
  *(&v136 + 1) = v48;
  sub_20D9C29D8(&v136, &v134);
  v49 = v138;
  LOBYTE(v45) = swift_isUniquelyReferenced_nonNull_native();
  v133 = v49;
  v50 = __swift_mutable_project_boxed_opaque_existential_1(&v134, v135);
  MEMORY[0x28223BE20](v50);
  v52 = v123 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v53 + 16))(v52);
  sub_20DA29C88(v52, 0x656D614E656E6F7ALL, 0xE800000000000000, v45, &v133, v22);
  __swift_destroy_boxed_opaque_existential_0(&v134);
  a2 = v129;
  v138 = v133;
  if (v129 == 2)
  {
LABEL_8:
    v137 = v22;
    *&v136 = 0x64756F6C63;
    v54 = 0xE500000000000000;
    goto LABEL_14;
  }

LABEL_10:
  if (a2 == 1)
  {
    v137 = v22;
    *&v136 = 0x65646F4D77656976;
    v54 = 0xE90000000000006CLL;
  }

  else
  {
    if (a2)
    {
LABEL_70:
      *&v136 = a2;
      result = sub_20DD659B4();
      __break(1u);
      return result;
    }

    v137 = v22;
    *&v136 = 0x7645657461647075;
    v54 = 0xEC00000073746E65;
  }

LABEL_14:
  *(&v136 + 1) = v54;
  sub_20D9C29D8(&v136, &v134);
  v55 = v138;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v55;
  v57 = v135;
  v58 = __swift_mutable_project_boxed_opaque_existential_1(&v134, v135);
  MEMORY[0x28223BE20](v58);
  v60 = v123 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v61 + 16))(v60);
  sub_20DA29C88(v60, 1701869940, 0xE400000000000000, v56, &v133, v57);
  __swift_destroy_boxed_opaque_existential_0(&v134);
  v138 = v133;
  if (a1 >> 62)
  {
LABEL_61:
    v62 = sub_20DD655B4();
  }

  else
  {
    v62 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v131 = v62;
  v132 = a1 & 0xC000000000000001;
  v63 = v129;
  if (!v62)
  {
LABEL_24:
    v98 = 0;
    v127 = 0;
    v99 = a1;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    a1 = 0;
    v128 = MEMORY[0x277D84F90];
LABEL_25:
    v125 = v98;
    v126 = a1;
    v42 = v127;
    while (v62 != v98)
    {
      if (v132)
      {
        v11 = MEMORY[0x20F326680](v98, v99);
        v6 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v98 >= *(v22 + 16))
        {
          goto LABEL_59;
        }

        v11 = *(v99 + 8 * v98 + 32);
        swift_unknownObjectRetain();
        v6 = v98 + 1;
        if (__OFADD__(v98, 1))
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }
      }

      v101 = sub_20DA26AEC(v11, v63);
      v102 = v101;
      if (v63 != 1)
      {
        swift_unknownObjectRelease();
        a1 = v126;
        goto LABEL_45;
      }

      if (!*(v101 + 16) || (v103 = sub_20D9CB170(0x745365676E616863, 0xEB00000000657461), (v104 & 1) == 0) || (sub_20D9D7174(*(v102 + 56) + 32 * v103, &v136), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8442C8, &qword_20DD94B80), (swift_dynamicCast() & 1) == 0))
      {
        swift_unknownObjectRelease();
        v127 = v42;
LABEL_45:
        v106 = v128;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_20D9E04F4(0, *(v106 + 2) + 1, 1, v106);
        }

        v108 = *(v106 + 2);
        v107 = *(v106 + 3);
        if (v108 >= v107 >> 1)
        {
          v106 = sub_20D9E04F4((v107 > 1), v108 + 1, 1, v106);
        }

        *(v106 + 2) = v108 + 1;
        v128 = v106;
        *(v106 + v108 + 4) = v102;
        v98 = v6;
        v62 = v131;
        goto LABEL_25;
      }

      if (v134 == __PAIR128__(0xE900000000000064, 0x65676E6168636E75))
      {

        swift_unknownObjectRelease();
      }

      else
      {
        v105 = sub_20DD65974();

        swift_unknownObjectRelease();
        if ((v105 & 1) == 0)
        {
          v127 = v42;
          v63 = v129;
          goto LABEL_45;
        }

        v63 = v129;
      }

      ++v98;
      v100 = __CFADD__(a1, 1);
      v42 = ++a1;
      v62 = v131;
      if (v100)
      {
        goto LABEL_60;
      }
    }

    if (&v126[v62] == v125)
    {
      goto LABEL_55;
    }

    if (qword_27C842450 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_67;
  }

  v124 = a1;
  if (v132)
  {
    v66 = MEMORY[0x20F326680](0, a1);
    a2 = &selRef_source;
    if (__OFSUB__(v62, 1))
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v125 = MEMORY[0x20F326680](v62 - 1, a1);
LABEL_22:
    v123[1] = v66;
    v68 = v127;
    v69 = [v127 hf_rfc3339Formatter];
    v70 = [v66 dateOfOccurrence];
    sub_20DD63674();

    v71 = sub_20DD63624();
    v72 = v11;
    v11 = v128;
    v128(v72, v6);
    v73 = [v69 a2[109]];

    v74 = sub_20DD64EB4();
    v76 = v75;

    v137 = v22;
    *&v136 = v74;
    *(&v136 + 1) = v76;
    sub_20D9C29D8(&v136, &v134);
    v77 = v138;
    LOBYTE(v76) = swift_isUniquelyReferenced_nonNull_native();
    v133 = v77;
    v78 = __swift_mutable_project_boxed_opaque_existential_1(&v134, v135);
    v79 = v22;
    v80 = a2;
    a2 = v123;
    MEMORY[0x28223BE20](v78);
    v82 = (v123 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v83 + 16))(v82);
    sub_20DA29604(*v82, v82[1], 0x7461447472617473, 0xE900000000000065, v76, &v133);
    __swift_destroy_boxed_opaque_existential_0(&v134);
    v138 = v133;
    v84 = [v68 hf_rfc3339Formatter];
    v85 = [v125 hf_endDate];
    if (v85)
    {
      v86 = v85;
      v87 = v126;
      sub_20DD63674();

      v88 = sub_20DD63624();
      (v11)(v87, v6);
      v89 = [v84 v80 + 1144];

      v90 = sub_20DD64EB4();
      v92 = v91;

      v137 = v79;
      *&v136 = v90;
      *(&v136 + 1) = v92;
      sub_20D9C29D8(&v136, &v134);
      v93 = v138;
      LOBYTE(v92) = swift_isUniquelyReferenced_nonNull_native();
      v133 = v93;
      v94 = __swift_mutable_project_boxed_opaque_existential_1(&v134, v135);
      MEMORY[0x28223BE20](v94);
      v96 = (v123 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v97 + 16))(v96);
      sub_20DA29604(*v96, v96[1], 0x65746144646E65, 0xE700000000000000, v92, &v133);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(&v134);
      v138 = v133;
      v63 = v129;
      a1 = v124;
      v62 = v131;
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_69;
  }

  v64 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  a2 = &selRef_source;
  if (!v64)
  {
    __break(1u);
    goto LABEL_65;
  }

  v65 = v62 - 1;
  if (__OFSUB__(v62, 1))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (v65 < v64)
  {
    v66 = *(a1 + 32);
    v67 = *(a1 + 32 + 8 * v65);
    swift_unknownObjectRetain();
    v125 = v67;
    swift_unknownObjectRetain();
    goto LABEL_22;
  }

LABEL_66:
  __break(1u);
LABEL_67:
  swift_once();
LABEL_52:
  v109 = sub_20DD64C44();
  __swift_project_value_buffer(v109, qword_27C84C5F8);
  v110 = sub_20DD64C24();
  v111 = sub_20DD65384();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 134217984;
    *(v112 + 4) = v42;
    _os_log_impl(&dword_20D9BF000, v110, v111, "Filtered %lu unchanged events from viewModel debug log", v112, 0xCu);
    MEMORY[0x20F327D10](v112, -1, -1);
  }

LABEL_55:
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A8, &qword_20DD94E08);
  v113 = v128;
  *&v136 = v128;
  sub_20D9C29D8(&v136, &v134);

  v114 = v138;
  v115 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v114;
  v116 = __swift_mutable_project_boxed_opaque_existential_1(&v134, v135);
  MEMORY[0x28223BE20](v116);
  v118 = (v123 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v119 + 16))(v118);
  sub_20DA29A90(*v118, 0x73746E657665, 0xE600000000000000, v115, &v133);
  __swift_destroy_boxed_opaque_existential_0(&v134);
  v120 = v133;
  v121 = *(v113 + 2);

  if (!v121)
  {

    return sub_20D9D5FE0(MEMORY[0x277D84F90]);
  }

  return v120;
}

uint64_t sub_20DA26AEC(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() contextWithDetailLevel_];
  v5 = [a1 hf:v4 stateDumpBuilderWithContext:?];

  *&v31 = [v5 buildPropertyListRepresentation];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C844350, &unk_20DD94D60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8438D0, &unk_20DD93F80);
  if (swift_dynamicCast())
  {
    v6 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31 = v6;
    sub_20DA2AEEC(v29, sub_20DA29460, 0, isUniquelyReferenced_nonNull_native, &v31);

    v8 = v31;
  }

  else
  {
    v8 = MEMORY[0x277D84F98];
  }

  v9 = [a1 containerType];
  v10 = MEMORY[0x277D837D0];
  v32 = MEMORY[0x277D837D0];
  if (v9 == 2)
  {
    *&v31 = 0x6962616863616572;
    v11 = 0xEC0000007974696CLL;
  }

  else if (v9 == 1)
  {
    *&v31 = 0x6E6964726F636572;
    v11 = 0xE900000000000067;
  }

  else
  {
    *&v31 = 0x6E776F6E6B6E75;
    v11 = 0xE700000000000000;
  }

  *(&v31 + 1) = v11;
  sub_20D9C29D8(&v31, &v29);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = v8;
  v13 = v30;
  v14 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  sub_20DA29C88(v16, 1701869940, 0xE400000000000000, v12, &v28, v13);
  __swift_destroy_boxed_opaque_existential_0(&v29);
  v18 = v28;
  if (a2 == 1)
  {
    v19 = sub_20DA26ED8(a1, 1);
    v32 = v10;
    *&v31 = v19;
    *(&v31 + 1) = v20;
    sub_20D9C29D8(&v31, &v29);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v28 = v18;
    v22 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
    MEMORY[0x28223BE20](v22);
    v24 = (&v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    sub_20DA29604(*v24, v24[1], 0x745365676E616863, 0xEB00000000657461, v21, &v28);

    __swift_destroy_boxed_opaque_existential_0(&v29);
    return v28;
  }

  else
  {
  }

  return v18;
}

uint64_t sub_20DA26ED8(void *a1, uint64_t a2)
{
  v5 = sub_20DD63744();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 uniqueIdentifier];
  sub_20DD63714();

  v10 = *(v2 + 136);
  if (!*(v10 + 16))
  {
    goto LABEL_12;
  }

  v15 = sub_20D9CB38C(v8, v11, v12, v13, v14);
  if ((v16 & 1) == 0)
  {

LABEL_12:
    (*(v6 + 8))(v8, v5);
    return 7824750;
  }

  v17 = *(*(v10 + 56) + 8 * v15);
  v18 = *(v6 + 8);
  swift_unknownObjectRetain();
  v18(v8, v5);

  v19 = [a1 containerType];
  if (v19 == 1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      if ([v17 containerType] == 1)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v20 = &unk_27C844348;
          v21 = 0x277CD18C8;
          goto LABEL_23;
        }
      }

      swift_unknownObjectRelease();
    }

LABEL_31:
    swift_unknownObjectRelease();
    return 0x65676E6168636E75;
  }

  if (v19 != 2 || a2 == 2)
  {
    goto LABEL_31;
  }

  if (a2 == 1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRetain();
      if ([v17 containerType] == 2)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v20 = &unk_27C844338;
          v21 = off_277DEF780;
          goto LABEL_23;
        }
      }

      goto LABEL_25;
    }

LABEL_26:
    if (qword_27C842450 != -1)
    {
      swift_once();
    }

    v24 = sub_20DD64C44();
    __swift_project_value_buffer(v24, qword_27C84C5F8);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v25 = sub_20DD64C24();
    v26 = sub_20DD65364();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v36 = v28;
      *v27 = 136315394;
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C844330, &unk_20DD94D50);
      v29 = sub_20DD64ED4();
      v31 = sub_20D9E0B38(v29, v30, &v36);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      ObjectType = swift_getObjectType();
      v32 = sub_20DD64ED4();
      v34 = sub_20D9E0B38(v32, v33, &v36);

      *(v27 + 14) = v34;
      _os_log_impl(&dword_20D9BF000, v25, v26, "previousEvent.class %s != event.class %s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F327D10](v28, -1, -1);
      MEMORY[0x20F327D10](v27, -1, -1);
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      goto LABEL_26;
    }

    swift_unknownObjectRetain();
    if ([v17 containerType] != 2 || (objc_opt_self(), !swift_dynamicCastObjCClass()))
    {
LABEL_25:
      swift_unknownObjectRelease();
      goto LABEL_26;
    }

    v20 = &unk_27C844340;
    v21 = 0x277CD1928;
LABEL_23:
    sub_20D9D7510(0, v20, v21);
    swift_unknownObjectRetain();
    v23 = sub_20DD65454();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v23 & 1) == 0)
    {
      swift_unknownObjectRelease();
      return 0x6465696669646F6DLL;
    }

    goto LABEL_31;
  }

  v36 = a2;
  result = sub_20DD659B4();
  __break(1u);
  return result;
}

uint64_t CameraEventDebugLogger.deinit()
{

  sub_20D9D76EC(v0 + OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval, &qword_27C8442E0, &qword_20DD95D90);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CameraEventDebugLogger.__deallocating_deinit()
{

  sub_20D9D76EC(v0 + OBJC_IVAR___HFCameraEventDebugLogger_previousViewModelDateInterval, &qword_27C8442E0, &qword_20DD95D90);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_20DA274C8()
{
  v0 = sub_20DD64C44();
  __swift_allocate_value_buffer(v0, qword_27C84C5F8);
  __swift_project_value_buffer(v0, qword_27C84C5F8);
  return sub_20DD64C34();
}

double sub_20DA27550@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_20D9CB1D0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20D9D23EC();
      v9 = v11;
    }

    sub_20D9C29D8((*(v9 + 56) + 32 * v7), a2);
    sub_20DA27D3C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_20DA2769C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_20D9CB264(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20D9D2924();
      v9 = v11;
    }

    sub_20D9D4298(*(v9 + 48) + 40 * v7);
    sub_20D9C29D8((*(v9 + 56) + 32 * v7), a2);
    sub_20DA28254(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_20DA27740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_20D9CB534(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20D9D2AC8();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_20DD64504();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56);
    v13 = sub_20DD638D4();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_20DA283F8(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_20DD638D4();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_20DA27920@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_20D9CB38C(a1, a2, a3, a4, a5);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v16 = v29;
    }

    v17 = *(v16 + 48);
    v18 = sub_20DD63744();
    v19 = v14;
    (*(*(v18 - 8) + 8))(v17 + *(*(v18 - 8) + 72) * v14, v18);
    v20 = *(v16 + 56);
    v21 = a2(0);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v19, v21);
    sub_20DA27F04(v19, v16, a3);
    *v10 = v16;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a2(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

double sub_20DA27AE8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X2>, void (*a4)(void)@<X3>, _OWORD *a5@<X8>)
{
  v8 = v5;
  v10 = sub_20D9CB170(a1, a2);
  if (v11)
  {
    v12 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v5;
    v16 = *v8;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v14 = v16;
    }

    a3(*(v14 + 56) + 32 * v12, a5);
    sub_20DA2873C(v12, v14);
    *v8 = v14;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    a5[1] = 0u;
  }

  return result;
}

uint64_t sub_20DA27BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_20D9CB800(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_20D9D3B54();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = sub_20DD63FE4();
    v12 = *(v11 - 8);
    v20 = v12;
    v13 = *(v12 + 72) * v7;
    (*(v12 + 8))(v10 + v13, v11);
    (*(v20 + 32))(a2, *(v9 + 56) + v13, v11);
    sub_20DA28C0C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v11;
  }

  else
  {
    v18 = sub_20DD63FE4();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

void sub_20DA27D3C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20DD65524() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_20DD64EB4();
      sub_20DD65A64();
      v11 = v10;
      sub_20DD64F24();
      v12 = sub_20DD65AA4();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_20DA27F04(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_20DD63744();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v42 = a2;
    v13 = ~v11;
    v14 = sub_20DD65524();
    v15 = v13;
    a2 = v42;
    v41 = (v14 + 1) & v15;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v39 = v10;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v40(v9, *(a2 + 48) + v18 * v12, v5);
      sub_20DA2B610(&qword_280E02290, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_20DD64E24();
      result = (*v38)(v9, v5);
      v15 = v21;
      v24 = v23 & v21;
      if (a1 >= v41)
      {
        if (v24 >= v41 && a1 >= v24)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v42 + 48) + v19 * a1 >= (*(v42 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v27 = *(v42 + 56);
          v28 = *(*(v37(0) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v12;
          v31 = v27 + v28 * v12 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v39;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v33 = v29 == v30;
            v10 = v39;
            v15 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v41 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v39;
      a2 = v42;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20DA28254(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20DD65524() + 1) & ~v5;
    do
    {
      sub_20D9D7288(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_20DD65664();
      result = sub_20D9D4298(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
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
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_20DA283F8(int64_t a1, uint64_t a2)
{
  v4 = sub_20DD64504();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_20DD65524();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_20DA2B610(&unk_27C8443B0, MEMORY[0x277D16B08], MEMORY[0x277D16B18]);
      v22 = sub_20DD64E24();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_20DD638D4() - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_20DA2873C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_20DD65524() + 1) & ~v5;
    do
    {
      sub_20DD65A64();

      sub_20DD64F24();
      v10 = sub_20DD65AA4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
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

unint64_t sub_20DA288EC(int64_t a1, uint64_t a2)
{
  v40 = sub_20DD63744();
  v4 = *(v40 - 8);
  result = MEMORY[0x28223BE20](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_20DD65524();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_20DA2B610(&qword_280E02290, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v23 = sub_20DD64E24();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_20DA28C0C(int64_t a1, uint64_t a2)
{
  v4 = sub_20DD63FE4();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_20DD65524();
    v14 = v12;
    v33 = (v13 + 1) & v12;
    v34 = a2 + 64;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v17 = *(v15 + 56);
    v31 = (v15 - 8);
    v32 = v16;
    do
    {
      v18 = v17 * v11;
      v19 = v14;
      v20 = v15;
      v32(v8, *(a2 + 48) + v17 * v11, v4);
      sub_20DA2B610(&qword_27C844380, MEMORY[0x277D15B60], MEMORY[0x277D15B68]);
      v21 = sub_20DD64E24();
      result = (*v31)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v33)
      {
        if (v22 >= v33 && a1 >= v22)
        {
LABEL_15:
          v25 = v17 * a1;
          if (v17 * a1 < v18 || *(a2 + 48) + v17 * a1 >= (*(a2 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v25 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v26 = *(a2 + 56);
          result = v26 + v25;
          if (v25 < v18 || result >= v26 + v18 + v17)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v15 = v20;
            v14 = v19;
          }

          else
          {
            a1 = v11;
            v27 = v25 == v18;
            v15 = v20;
            v14 = v19;
            if (!v27)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v33 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v9 = v34;
    }

    while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

void sub_20DA28F0C(unint64_t a1, char a2, unint64_t *a3)
{
  v7 = sub_20DD63744();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C843530, &qword_20DD95680);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = v76 - v14;
  v81 = *(a1 + 16);
  if (!v81)
  {
    goto LABEL_22;
  }

  v76[1] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v80 = *(v13 + 72);
  v82 = a1;
  v76[0] = v17;
  sub_20D9D7558(a1 + v17, v76 - v14, &qword_27C843530, &qword_20DD95680);
  v77 = v8;
  v83 = *(v8 + 32);
  v84 = v7;
  v83(v10, v15, v7);
  v79 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v24 = sub_20D9CB38C(v10, v20, v21, v22, v23);
  v29 = v19[2];
  v30 = (v25 & 1) == 0;
  v31 = __OFADD__(v29, v30);
  v32 = v29 + v30;
  if (v31)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v33 = v25;
  if (v19[3] < v32)
  {
    sub_20D9CEA00(v32, a2 & 1, v26, v27, v28);
    v24 = sub_20D9CB38C(v10, v34, v35, v36, v37);
    if ((v33 & 1) != (v38 & 1))
    {
LABEL_5:
      sub_20DD659E4();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v33)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v43 = v24;
  sub_20D9D2FF4(v24, v25, v26, v27, v28);
  v24 = v43;
  if (v33)
  {
LABEL_9:
    v39 = swift_allocError();
    swift_willThrow();
    v87 = v39;
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443A0, &qword_20DD94E00);
    v41 = swift_dynamicCast();
    v42 = v84;
    if ((v41 & 1) == 0)
    {
      swift_unknownObjectRelease();

      (*(v77 + 8))(v10, v42);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v44 = *a3;
  *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
  v45 = v44[6];
  v78 = *(v77 + 72);
  v46 = v24;
  v83((v45 + v78 * v24), v10, v84);
  *(v44[7] + 8 * v46) = v18;
  v47 = v44[2];
  v31 = __OFADD__(v47, 1);
  v48 = v47 + 1;
  if (!v31)
  {
    v44[2] = v48;
    v49 = v82;
    if (v81 == 1)
    {
LABEL_22:

      return;
    }

    v50 = v82 + v80 + v76[0];
    v51 = 1;
    while (v51 < *(v49 + 16))
    {
      sub_20D9D7558(v50, v15, &qword_27C843530, &qword_20DD95680);
      v83(v10, v15, v84);
      v52 = *&v15[v79];
      v53 = *a3;
      v58 = sub_20D9CB38C(v10, v54, v55, v56, v57);
      v63 = v53[2];
      v64 = (v59 & 1) == 0;
      v31 = __OFADD__(v63, v64);
      v65 = v63 + v64;
      if (v31)
      {
        goto LABEL_23;
      }

      v66 = v59;
      if (v53[3] < v65)
      {
        sub_20D9CEA00(v65, 1, v60, v61, v62);
        v58 = sub_20D9CB38C(v10, v67, v68, v69, v70);
        if ((v66 & 1) != (v71 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v66)
      {
        goto LABEL_9;
      }

      v72 = *a3;
      *(*a3 + 8 * (v58 >> 6) + 64) |= 1 << v58;
      v73 = v58;
      v83((v72[6] + v78 * v58), v10, v84);
      *(v72[7] + 8 * v73) = v52;
      v74 = v72[2];
      v31 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v31)
      {
        goto LABEL_24;
      }

      ++v51;
      v72[2] = v75;
      v50 += v80;
      v49 = v82;
      if (v81 == v51)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v85 = 0;
  v86 = 0xE000000000000000;
  sub_20DD65704();
  MEMORY[0x20F325E90](0xD00000000000001BLL, 0x800000020DD98FC0);
  sub_20DD657A4();
  MEMORY[0x20F325E90](39, 0xE100000000000000);
  sub_20DD65814();
  __break(1u);
}