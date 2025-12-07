uint64_t sub_1B9F34660()
{
  v1 = qword_1EDC84A70;
  swift_beginAccess();
  return *(v0 + v1);
}

void __swiftcall EmptyStateCollectionViewCellItem.init(title:showSpinner:)(HealthExperienceUI::EmptyStateCollectionViewCellItem *__return_ptr retstr, Swift::String title, Swift::Bool showSpinner)
{
  object = title._object;
  countAndFlagsBits = title._countAndFlagsBits;
  type metadata accessor for EmptyStateCollectionViewCell();
  sub_1B9F34708();
  retstr->reuseIdentifier._countAndFlagsBits = sub_1BA4A6808();
  retstr->reuseIdentifier._object = v7;
  retstr->title.value._countAndFlagsBits = countAndFlagsBits;
  retstr->title.value._object = object;
  retstr->showSpinner = showSpinner;
}

unint64_t sub_1B9F34708()
{
  result = qword_1EDC6C3D0;
  if (!qword_1EDC6C3D0)
  {
    type metadata accessor for EmptyStateCollectionViewCell();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EDC6C3D0);
  }

  return result;
}

uint64_t ArrayDataSourceSection.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BA4A1798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1788();
  v9 = sub_1BA4A1748();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  sub_1B9F1C5F0(MEMORY[0x1E69E7CC0]);

  v13 = Array<A>.identifierToIndexDict()(v12);

  *a2 = 0;
  a2[1] = 0;
  a2[2] = a1;
  a2[3] = v13;
  a2[4] = v9;
  a2[5] = v11;
  return result;
}

uint64_t sub_1B9F34870(uint64_t a1)
{
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
  }

  else
  {
    sub_1BA1A2CB0();
    v2 = sub_1BA4A6808();
  }

  return v2;
}

void *sub_1B9F348D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B9F15B38();
  v8 = sub_1BA4A7A78();
  v9 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v10 = sub_1BA4A6758();
  v11 = [v9 initWithName:v10 loggingCategory:v8];

  v4[3] = 0;
  v4[4] = 0;
  v4[2] = v11;
  sub_1BA4A45D8();
  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSections) = a1;

  *(v4 + OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_arrangedSectionsIdentifierToIndexMap) = Array<A>.identifierToIndexDict()(v12);
  v4[5] = a2;
  v4[6] = a3;
  sub_1B9F34BA0(a1);
  return v4;
}

void *ArrayDataSource.init(arrangedSections:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B9F348D8(a1, a2, a3);

  return v3;
}

uint64_t sub_1B9F34BA0(uint64_t a1)
{
  sub_1B9F12538();
  v3 = v2;
  v34[0] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A45D8();
  v7 = *(a1 + 16);
  if (v7)
  {
    v36 = v6;
    v37 = v3;
    v43[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F1C360(0, v7, 0);
    v8 = v43[0];
    v38 = a1 + 32;
    v9 = (a1 + 72);
    v35 = v7;
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v43[0] = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);

      if (v13 >= v12 >> 1)
      {
        sub_1B9F1C360((v12 > 1), v13 + 1, 1);
        v8 = v43[0];
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 16 * v13;
      *(v14 + 32) = v11;
      *(v14 + 40) = v10;
      v9 += 6;
      --v7;
    }

    while (v7);
    v6 = v36;
    v3 = v37;
    sub_1BA4A44C8();

    v15 = 0;
    v16 = v35;
    do
    {
      v17 = (v38 + 48 * v15);
      v18 = v17[1];
      v19 = v17[2];
      v20 = v17[3];
      v42 = v17[4];
      v21 = v17[5];
      v22 = *(v19 + 16);
      if (v22)
      {
        v44 = MEMORY[0x1E69E7CC0];
        v41 = v18;

        v39 = v20;

        sub_1B9F1C360(0, v22, 0);
        v23 = v44;
        v40 = v19;
        v24 = v19 + 32;
        do
        {
          sub_1B9F0A534(v24, v43);
          __swift_project_boxed_opaque_existential_1(v43, v43[3]);
          v25 = sub_1BA4A2D58();
          v27 = v26;
          __swift_destroy_boxed_opaque_existential_1(v43);
          v44 = v23;
          v29 = *(v23 + 16);
          v28 = *(v23 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1B9F1C360((v28 > 1), v29 + 1, 1);
            v23 = v44;
          }

          *(v23 + 16) = v29 + 1;
          v30 = v23 + 16 * v29;
          *(v30 + 32) = v25;
          *(v30 + 40) = v27;
          v24 += 40;
          --v22;
        }

        while (v22);
        v6 = v36;
        v3 = v37;
        v16 = v35;
      }

      else
      {
      }

      ++v15;
      v43[0] = v42;
      v43[1] = v21;

      sub_1BA4A4448();
      swift_bridgeObjectRelease_n();
    }

    while (v15 != v16);
  }

  else
  {
    sub_1BA4A44C8();
  }

  v31 = OBJC_IVAR____TtC18HealthExperienceUI15ArrayDataSource_snapshot;
  v32 = v34[1];
  swift_beginAccess();
  (*(v34[0] + 40))(v32 + v31, v6, v3);
  return swift_endAccess();
}

uint64_t PrimarySecondaryDataSource.__allocating_init(primaryDataSource:secondaryDataSource:activeDataSourceResolver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(v4 + 272))(a1, a2);
  swift_beginAccess();
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;

  return v7;
}

void *sub_1B9F34FD8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 96);
  v7[0] = *(v2 + 80);
  v7[1] = v5;
  type metadata accessor for PrimarySecondaryDataSource(0, v7);
  swift_allocObject();
  return sub_1B9F2EB64(a1, a2);
}

uint64_t sub_1B9F3503C()
{
  v0 = sub_1B9F35074();

  return v0;
}

uint64_t sub_1B9F35088()
{
  v1 = *(v0 + 40);

  return v1;
}

void sub_1B9F35130(uint64_t a1)
{
  if (!qword_1EDC6E9C8[0])
  {
    type metadata accessor for SectionContext(255);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, qword_1EDC6E9C8);
    }
  }
}

void sub_1B9F351B0(uint64_t a1)
{
  sub_1B9F35130(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B9F35260(uint64_t a1)
{
  result = sub_1BA4A1998();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B9F35348()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();
}

uint64_t sub_1B9F35404@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B9F35348();
  *a1 = v3;
  return result;
}

__n128 sub_1B9F35484(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

void sub_1B9F35490(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  sub_1B9F35348();
  if (v3 != v5)
  {
    type metadata accessor for HideableDataSource(0, *(v2 + 80), *(v2 + 88), v4);

    SnapshotDataSource.notifyObserversSnapshotDidChange(animated:)(1);
  }
}

void sub_1B9F3558C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F355F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B9F0D9AC(255, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B9F35664(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F356C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B9F0D9AC(255, a3, a4, 0);
    v5 = sub_1BA4A82E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B9F35724(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D9AC(255, a3, a4, 0);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B9F35790(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1B9F357D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B9F3581C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

Swift::Void __swiftcall CompoundSectionedDataSource.registerCells(for:)(UICollectionView *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v16 = *(v3 + 32 + 16 * v5);
      sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
      sub_1B9F0D9AC(0, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering, 1);
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        if (*(&v14 + 1))
        {
          sub_1B9F25598(&v13, &v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1B9F39AF4(0, v6[2] + 1, 1, v6);
          }

          v8 = v6[2];
          v7 = v6[3];
          if (v8 >= v7 >> 1)
          {
            v6 = sub_1B9F39AF4((v7 > 1), v8 + 1, 1, v6);
          }

          v6[2] = v8 + 1;
          sub_1B9F25598(&v16, &v6[5 * v8 + 4]);
          goto LABEL_5;
        }
      }

      else
      {
        v15 = 0;
        v13 = 0u;
        v14 = 0u;
      }

      sub_1B9F399C0(&v13);
LABEL_5:
      if (v4 == ++v5)
      {
        goto LABEL_15;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v9 = v6[2];
  if (v9)
  {
    v10 = (v6 + 4);
    do
    {
      sub_1B9F0A534(v10, &v16);
      v11 = v17;
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(&v16, v17);
      (*(v12 + 8))(a1, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v16);
      v10 += 40;
      --v9;
    }

    while (v9);
  }
}

void sub_1B9F35AE4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  sub_1BA4A3A48();
  swift_getWitnessTable();
  v6 = sub_1BA4A8508();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v24[-1] - v9;
  sub_1B9F0A534(v0 + *((v3 & v2) + 0x60), v24);
  __swift_project_boxed_opaque_existential_1(v24, v25);
  sub_1BA4A3958();
  __swift_destroy_boxed_opaque_existential_1(v24);
  if (sub_1B9F35F24())
  {
    v12 = v11;
    sub_1B9F0A534(v0 + *((*v1 & *v0) + 0x60), v24);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1BA4A3968();
    __swift_destroy_boxed_opaque_existential_1(v24);
    v13 = *(v0 + *((*v1 & *v0) + 0x90) + 8);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 8);
    swift_unknownObjectRetain();
    LOBYTE(v13) = v15(ObjectType, v13);
    swift_unknownObjectRelease();
    if (v13)
    {
      v16 = swift_getObjectType();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v4;
      v18[3] = v5;
      v18[4] = v17;
      v19 = *(v12 + 32);

      v19(sub_1BA0A2784, v18, v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = sub_1B9F530F0();
      if (v21)
      {
        v22 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage_];
      }

      else
      {
        v22 = 0;
      }

      sub_1BA0A1DE8(v22, 0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1B9F0A534(v0 + *((*v1 & *v0) + 0x60), v24);
    __swift_project_boxed_opaque_existential_1(v24, v25);
    sub_1BA4A3968();
    __swift_destroy_boxed_opaque_existential_1(v24);
    v24[0] = 0;
    type metadata accessor for MeProfilePicturePublisher.Inner(0, v4, v5, v20);
    swift_getWitnessTable();
    sub_1BA4A39D8();
    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1B9F35F24()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x88));
  if (*v2)
  {
    v3 = *v2;
  }

  else
  {
    v4 = v0;
    v3 = (*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x80)))();
    v6 = v5;
    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v6 + 16))(ObjectType, v6, *(v4 + *((*v1 & *v4) + 0x70)) * *(v4 + *((*v1 & *v4) + 0x78)));
      v8 = (v4 + *((*v1 & *v4) + 0x88));
      *v8 = v3;
      v8[1] = v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRetain();
  return v3;
}

unint64_t get_enum_tag_for_layout_string_18HealthExperienceUI20PluginViewModelErrorO(unint64_t *a1)
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = sub_1BA4A2BF8();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v6 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = a5(0);
      v16 = *(*(v15 - 8) + 56);
      v17 = v6 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

_BYTE *__swift_store_extra_inhabitant_indexTm_0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 241)
  {
    *result = a2 + 14;
  }

  else
  {
    v7 = sub_1BA4A40C8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B9F362B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1B9F36484(0);
    v2 = sub_1BA4A8098();
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
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_1B9F24A34(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
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

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1B9F36484(uint64_t a1)
{
  if (!qword_1EDC5DFD0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E350, 0x1E69E58C0);
    v1 = sub_1BA4A80A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DFD0);
    }
  }
}

void sub_1B9F36508(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B9F24A34(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BA0F3028();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B9F3664C(v16, a4 & 1);
    v11 = sub_1B9F24A34(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1BA4A83B8();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;
  }

  else
  {
    sub_1B9F23574(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1B9F3664C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B9F36484(0);
  v35 = v4;
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1BA4A8488();
      sub_1BA4A68C8();
      result = sub_1BA4A84D8();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

UICollectionView *sub_1B9F36938()
{
  v1 = v0;
  sub_1B9F12538();
  v89 = v2;
  v3 = *(v2 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v2, v4).n128_u64[0];
  v88 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 collectionView];
  if (!result)
  {
    goto LABEL_42;
  }

  v8 = result;
  sub_1B9F23D88();
  v9 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F23DE0(v9, v10, type metadata accessor for FakeCollectionViewHeader, qword_1EDC66158, type metadata accessor for FakeCollectionViewHeader);

  v11 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F23DE0(v11, v12, type metadata accessor for FakeCollectionViewHeader, qword_1EDC66158, type metadata accessor for FakeCollectionViewHeader);

  sub_1B9F23FB0();
  result = [v1 collectionView];
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v13 = result;
  CompoundSectionedDataSource.registerCells(for:)(result);

  result = [v1 collectionView];
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v14 = result;
  v15 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F43830(v15, v16);

  result = [v1 collectionView];
  v17 = v89;
  v18 = v88;
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v19 = result;
  v20 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F23DE0(v20, v21, type metadata accessor for SectionHeaderCollectionViewCell, qword_1EDC630E0, type metadata accessor for SectionHeaderCollectionViewCell);

  result = [v1 collectionView];
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v22 = result;
  v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F405E0(v23, v24);

  result = [v1 collectionView];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v25 = result;
  v26 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F3A13C(v26, v27);

  result = [v1 collectionView];
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v28 = result;
  sub_1B9F43994();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v29 = result;
  sub_1B9F40768();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v30 = result;
  sub_1B9F3A2A0();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v31 = result;
  sub_1B9F437FC();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v32 = result;
  sub_1B9F439C8();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v33 = result;
  sub_1B9F4079C();

  result = [v1 collectionView];
  if (!result)
  {
LABEL_54:
    __break(1u);
    return result;
  }

  v34 = result;
  v35 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
  sub_1B9F23DE0(v35, v36, type metadata accessor for CollectionViewGroupedFooterCell, qword_1EDC63330, type metadata accessor for CollectionViewGroupedFooterCell);

  v97 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource;
  v37 = *&v1[OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController____lazy_storage___dataSource];
  v38 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
  swift_beginAccess();
  v40 = v3 + 16;
  v39 = *(v3 + 16);
  v39(v18, v37 + v38, v17);
  v41 = sub_1BA4A4578();
  v43 = *(v3 + 8);
  v42 = v3 + 8;
  v87 = v43;
  result = v43(v18, v17);
  v86 = *(v41 + 16);
  if (v86)
  {
    v44 = 0;
    v85 = v41 + 32;
    v90 = v42;
    v93 = v1;
    v92 = v40;
    v96 = v39;
    v84 = v41;
    while (1)
    {
      v91 = v44;
      if (v44 >= *(v41 + 16))
      {
        goto LABEL_40;
      }

      v47 = (v85 + 16 * v91);
      v49 = *v47;
      v48 = v47[1];
      v50 = *&v1[v97];
      v51 = v39;
      v52 = OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_snapshot;
      swift_beginAccess();
      v51(v18, v50 + v52, v17);
      v102 = v49;
      v112 = v49;
      v113 = v48;

      sub_1BA4A44E8();
      LOBYTE(v51) = v53;
      v54 = v87;
      v87(v18, v17);
      v98 = v48;
      if (v51)
      {

        v55 = MEMORY[0x1E69E7CC0];
        v39 = v96;
      }

      else
      {
        v56 = v50 + v52;
        v39 = v96;
        v96(v18, v56, v17);
        v112 = v102;
        v113 = v48;
        v57 = sub_1BA4A4528();

        v58 = v18;
        v55 = v57;
        result = v54(v58, v17);
      }

      v59 = 0x2A5F5F5F2ALL;
      v95 = *(v55 + 16);
      if (v95)
      {
        break;
      }

LABEL_16:
      v45 = v91 + 1;

      v46 = v45 == v86;
      v44 = v45;
      v17 = v89;
      v18 = v88;
      v41 = v84;
      if (v46)
      {
      }
    }

    v60 = 0;
    v61 = (v55 + 40);
    v94 = v55;
    while (1)
    {
      if (v60 >= *(v55 + 16))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v101 = v60;
      v62 = v59;
      v63 = *(v61 - 1);
      v64 = *v61;
      v100 = v61;
      v65 = *&v1[v97];
      v103 = v63;
      p_swiftAnimationInfo = v64;
      v107 = v62;
      v108 = 0xE500000000000000;
      sub_1BA164F44();

      result = sub_1BA4A6E08();
      if (!result->super.super._constraintsExceptingSubviewAutoresizingConstraints)
      {
        goto LABEL_38;
      }

      v99 = v65;
      swiftAnimationInfo = result->super.super._swiftAnimationInfo;
      traitChangeRegistry = result->super.super._traitChangeRegistry;
      layerRetained = result->super.super._layerRetained;
      subviewCache = result->super.super._subviewCache;
      v102 = v64;

      v70 = MEMORY[0x1BFAF12A0](swiftAnimationInfo, traitChangeRegistry, layerRetained, subviewCache);
      v72 = v71;

      v103 = v63;
      p_swiftAnimationInfo = v102;
      v107 = v62;
      v108 = 0xE500000000000000;
      result = sub_1BA4A6E08();
      constraintsExceptingSubviewAutoresizingConstraints = result->super.super._constraintsExceptingSubviewAutoresizingConstraints;
      if (!constraintsExceptingSubviewAutoresizingConstraints)
      {
        goto LABEL_39;
      }

      v59 = v62;
      v103 = result;
      p_swiftAnimationInfo = &result->super.super._swiftAnimationInfo;
      v105 = 1;
      v106 = (2 * constraintsExceptingSubviewAutoresizingConstraints) | 1;
      sub_1B9F3A31C();
      sub_1B9F3A36C(&qword_1EDC5E070, sub_1B9F3A31C, MEMORY[0x1E69E6968]);
      sub_1B9F439FC();
      v74 = sub_1BA4A6A48();
      v76 = v75;

      v103 = v74;
      p_swiftAnimationInfo = v76;
      v77 = sub_1BA4A69D8();
      sub_1B9F3A3B4(v70, v72, v77, v78, &v112);

      if (!v114)
      {
        break;
      }

      sub_1B9F0D950(0, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
      sub_1B9F0D950(0, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering);
      v79 = swift_dynamicCast();
      v1 = v93;
      v55 = v94;
      if ((v79 & 1) == 0)
      {
        v111 = 0;
        v109 = 0u;
        v110 = 0u;
LABEL_35:

LABEL_24:
        result = sub_1B9F43A50(&v109, &qword_1EDC6C320, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering);
        goto LABEL_25;
      }

      if (!*(&v110 + 1))
      {
        goto LABEL_35;
      }

      sub_1B9F1134C(&v109, &v112);
      v80 = v114;
      v81 = v115;
      __swift_project_boxed_opaque_existential_1(&v112, v114);
      result = [v1 collectionView];
      if (!result)
      {
        goto LABEL_41;
      }

      v82 = result;

      (*(v81 + 8))(v82, v80, v81);

      result = __swift_destroy_boxed_opaque_existential_1(&v112);
LABEL_25:
      v39 = v96;
      v60 = v101 + 1;
      v61 = v100 + 2;
      if (v95 == v101 + 1)
      {
        goto LABEL_16;
      }
    }

    sub_1B9F43A50(&v112, &qword_1EDC6AD40, &qword_1EDC6AD50, MEMORY[0x1E69A3310]);
    v109 = 0u;
    v110 = 0u;
    v111 = 0;
    v1 = v93;
    v55 = v94;
    goto LABEL_24;
  }
}

uint64_t sub_1B9F37450(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B9F3749C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B9F374E8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1B9F0CDE8(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1B9F37558(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1B9F224CC(0, a3, a4, a5, MEMORY[0x1E69E6720]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_1B9F375DC(uint64_t a1)
{
  sub_1B9F12538();
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1B9F376F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for HideableDataSource.Visibility(255, *(a1 + 80), *(a1 + 88), a4);
  result = sub_1BA4A4F58();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1B9F37820(uint64_t a1, char *a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *a2;
  sub_1B9F15B38();
  v7 = sub_1BA4A7A78();
  v8 = objc_allocWithZone(MEMORY[0x1E696C4F8]);
  v9 = sub_1BA4A6758();
  v10 = [v8 initWithName:v9 loggingCategory:v7];

  v3[2] = v10;
  *(v3 + *(*v3 + 112)) = a1;
  swift_beginAccess();
  v11 = *(v5 + 80);
  v12 = *(v5 + 88);
  swift_unknownObjectRetain();
  v21 = v6;
  v14 = type metadata accessor for HideableDataSource.Visibility(0, v11, v12, v13);
  sub_1B9F37A14(&v21, v14);
  swift_endAccess();
  v15 = (*(v12 + 8))(v11, v12);
  v16 = (v3 + *(*v3 + 120));
  *v16 = v15;
  v16[1] = v17;
  swift_beginAccess();
  v18 = *(v12 + 40);
  swift_unknownObjectRetain();
  v19 = v18(v11, v12);
  swift_unknownObjectRelease();
  [v19 registerObserver_];

  return v3;
}

uint64_t sub_1B9F37A14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1, a2);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_1BA4A4EE8();
  return (*(v4 + 8))(a1, a2);
}

uint64_t sub_1B9F37B04()
{
  v0 = sub_1B9F37B3C();

  return v0;
}

void sub_1B9F37B64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_1B9F37BB8()
{
  result = qword_1EDC6B3C0;
  if (!qword_1EDC6B3C0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDC6B3C0);
  }

  return result;
}

uint64_t sub_1B9F37C2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ListLayoutConfiguration(0);
  v7 = __swift_project_value_buffer(v6, a2);

  return sub_1B9F37E38(v7, a4);
}

uint64_t _s18HealthExperienceUI23ListLayoutConfigurationV16withLeadingInset5insetAC12CoreGraphics7CGFloatV_tFZ_0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDC6D268 != -1)
  {
    swift_once();
  }

  v2 = *(&xmmword_1EDC6D290 + 1);
  if (*(&xmmword_1EDC6D290 + 1))
  {
    v3 = qword_1EDC6D2A0;
    v4 = qword_1EDC6D2A0;
    v5 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = [objc_opt_self() clearColor];
  sub_1BA4A75C8();
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = v9;
  *(a1 + 80) = 0x404E000000000000;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = sub_1BA4A7618();
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = 257;
  v10 = type metadata accessor for ListLayoutConfiguration(0);
  v11 = *(v10 + 88);
  v12 = *MEMORY[0x1E69DC280];
  v13 = sub_1BA4A47D8();
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = *(v10 + 92);
  v15 = *MEMORY[0x1E69DC278];
  v16 = sub_1BA4A47C8();
  v17 = *(*(v16 - 8) + 104);

  return v17(a1 + v14, v15, v16);
}

uint64_t sub_1B9F37E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListLayoutConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MutableArrayDataSourceWithLayout.__allocating_init(_:collapseEmptySections:layoutConstructor:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1BA4A1798();
  v9 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v10);
  v34 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v28 = a3;
    v29 = a4;
    v30 = a2;
    v31 = v4;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1B9F277B0(0, v12, 0);
    v13 = v36;
    v32 = (v9 + 8);
    v33 = a1;
    v14 = 32;
    do
    {
      v15 = *(a1 + v14);

      v16 = v34;
      sub_1BA4A1788();
      v17 = sub_1BA4A1748();
      v19 = v18;
      (*v32)(v16, v35);

      v21 = Array<A>.identifierToIndexDict()(v20);

      v36 = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B9F277B0((v22 > 1), v23 + 1, 1);
        v13 = v36;
      }

      *(v13 + 16) = v23 + 1;
      v24 = (v13 + 48 * v23);
      v24[4] = 0;
      v24[5] = 0;
      v24[6] = v15;
      v24[7] = v21;
      v24[8] = v17;
      v24[9] = v19;
      v14 += 8;
      --v12;
      a1 = v33;
    }

    while (v12);

    v4 = v31;
    LOBYTE(a2) = v30;
    a3 = v28;
    a4 = v29;
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  v25 = swift_allocObject();
  v25[2] = a3;
  v25[3] = a4;
  v25[4] = v4;
  return (*(v4 + 584))(v13, a2 & 1, sub_1B9F57074, v25);
}

uint64_t sub_1B9F380E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F38128()
{
  sub_1B9F38150();

  return swift_unknownObjectRetain();
}

uint64_t sub_1B9F38150()
{
  v1 = *(*v0 + 112);
  swift_beginAccess();
  return *(v0 + v1);
}

BOOL SnapshotDataSource.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v5 = v4;
  v6 = *(v4 - 8);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v14 - v9;
  (*(a2 + 16))(a1, a2, v8);
  v11 = sub_1BA4A4538();
  (*(v6 + 8))(v10, v5);
  v12 = *(v11 + 16);

  return v12 == 0;
}

void sub_1B9F382CC(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BA4A4F28();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_1BA4A4F38();
  sub_1B9F35490(&v1);
}

uint64_t type metadata accessor for HeaderFooterDataSourceWithLayout(uint64_t a1)
{
  result = qword_1EDC62A90;
  if (!qword_1EDC62A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HeaderFooterDataSourceWithLayout.init(headerDataSource:mainDataSource:footerDataSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = sub_1B9F384A0(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

uint64_t sub_1B9F384A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = (v9 + OBJC_IVAR____TtC18HealthExperienceUI32HeaderFooterDataSourceWithLayout_headerDataSource);
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v11 = (v9 + OBJC_IVAR____TtC18HealthExperienceUI32HeaderFooterDataSourceWithLayout_mainDataSource);
  *v11 = a4;
  v11[1] = a5;
  v11[2] = a6;
  v12 = (v9 + OBJC_IVAR____TtC18HealthExperienceUI32HeaderFooterDataSourceWithLayout_footerDataSource);
  *v12 = a7;
  v12[1] = a8;
  v12[2] = a9;
  v26[0] = a1;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v26[4] = a5;
  v26[5] = a6;
  v26[6] = a7;
  v26[7] = a8;
  v26[8] = a9;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain_n();
  result = swift_unknownObjectRetain_n();
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v14 <= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = v14;
  }

  v17 = v16 + 1;
  v18 = &v26[3 * v14];
  while (1)
  {
    if (v14 == 3)
    {
      sub_1B9F3558C(0, &qword_1EDC60EF0, sub_1B9F1AC28, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      v24 = sub_1B9F38800(v15);

      return CompoundSectionedDataSource.init(_:)(v24);
    }

    if (v17 == ++v14)
    {
      break;
    }

    v19 = v18 + 3;
    v20 = *v18;
    v18 += 3;
    if (v20)
    {
      v25 = *(v19 - 1);
      swift_unknownObjectRetain();
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B9F386A0(0, v15[2] + 1, 1, v15);
        v15 = result;
      }

      v22 = v15[2];
      v21 = v15[3];
      if (v22 >= v21 >> 1)
      {
        result = sub_1B9F386A0((v21 > 1), v22 + 1, 1, v15);
        v15 = result;
      }

      v15[2] = v22 + 1;
      v23 = &v15[3 * v22];
      v23[4] = v20;
      *(v23 + 5) = v25;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void *sub_1B9F386A0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B9F1D1BC(0, &qword_1EDC5DC58, sub_1B9F1AC28, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F1AC28();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B9F38800(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B9F39554(0, v1, 0);
    v2 = v11;
    sub_1B9F1AC28();
    sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
    v4 = a1 + 48;
    do
    {
      swift_unknownObjectRetain();
      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B9F39554((v5 > 1), v6 + 1, 1);
      }

      ObjectType = swift_getObjectType();
      sub_1B9F38934(v6, v9, &v11, ObjectType, v10);
      v2 = v11;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B9F38934(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a3;
  *(v5 + 16) = result + 1;
  v6 = v5 + 16 * result;
  *(v6 + 32) = a2;
  *(v6 + 40) = a5;
  return result;
}

uint64_t sub_1B9F38950()
{
  v1 = *v0;
  sub_1B9F35348();
  if (v7)
  {
    swift_beginAccess();
    v4 = v1 + 80;
    v2 = *(v1 + 80);
    v3 = *(v4 + 8);
    v5 = *(v3 + 16);
    swift_unknownObjectRetain();
    v5(v2, v3);
    return swift_unknownObjectRelease();
  }

  else
  {

    return sub_1BA4A45D8();
  }
}

uint64_t DelayedDataSource.$dataSourceState.getter()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for DelayedDataSource.DataSourceState(255, *(v1 + 80), *(v1 + 88), v2);
  sub_1BA4A4F58();
  sub_1BA4A4EF8();
  return swift_endAccess();
}

uint64_t sub_1B9F38B44()
{

  sub_1BA4A24D8();
}

void sub_1B9F38BA0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1B9F35AE4();
  }
}

unint64_t sub_1B9F38BF4()
{
  result = qword_1EDC6B5A0;
  if (!qword_1EDC6B5A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC6B5A0);
  }

  return result;
}

uint64_t sub_1B9F38C40(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1B9F38CA0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = SnidgetTileView.ViewModel.__allocating_init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v10 = sub_1BA4A2BF8();
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = a4(0);
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 241)
  {
    v4 = *a1;
    if (v4 >= 0xF)
    {
      return v4 - 14;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1BA4A40C8();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

uint64_t get_enum_tag_for_layout_string_18HealthExperienceUI25ResettableDateDisplayItemV10Foundation0E0VSgIegnr_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t ProvidedViewContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext__healthStore;
  v2 = MEMORY[0x1E695C070];
  sub_1B9F2AC84(0, &qword_1EDC6B6F0, sub_1B9F2ACE8, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext__healthExperienceStore;
  sub_1B9F2AC84(0, &qword_1EDC6B710, sub_1B9F1F4BC, v2);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProvidedViewContext_pinnedContentManager));

  return swift_deallocClassInstance();
}

uint64_t sub_1B9F3904C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1B9F0ADF8(0, &qword_1EDC6E360, 0x1E696AD98);
    sub_1B9F2D594();
    v4 = sub_1BA4A6628();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1B9F39100(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v8 = sub_1BA4A3EA8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1BA4A3E58();
    v14 = a2;
    v15 = sub_1BA4A3E88();
    v16 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v34 = a3;
      v18 = v17;
      v19 = swift_slowAlloc();
      v33 = a4;
      v20 = v19;
      v36 = v19;
      *v18 = 136315394;
      v21 = sub_1BA4A85D8();
      v23 = sub_1B9F0B82C(v21, v22, &v36);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v35 = a2;
      v24 = a2;
      sub_1B9F22538(0, &qword_1EDC6B3E0, sub_1B9FED358, MEMORY[0x1E69E6720]);
      v25 = sub_1BA4A6828();
      v27 = sub_1B9F0B82C(v25, v26, &v36);

      *(v18 + 14) = v27;
      _os_log_impl(&dword_1B9F07000, v15, v16, "%s Error: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      v28 = v18;
      a3 = v34;
      MEMORY[0x1BFAF43A0](v28, -1, -1);
    }

    (*(v9 + 8))(v13, v8);
    return a3(0);
  }

  else
  {
    sub_1B9F2240C(&qword_1EDC69CD0, v11, type metadata accessor for HealthAppInteractionAnalyticEvent, &protocol conformance descriptor for HealthAppInteractionAnalyticEvent);
    v30 = sub_1BA4A2CD8();
    sub_1B9F362B0(v30);
    v32 = v31;

    a3(v32);
  }
}

void *sub_1B9F39410(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_1B9F356C8(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 17;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 4);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[2 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 16 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B9F0D9AC(0, a6, a7, 0);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_1B9F39554(void *a1, int64_t a2, char a3)
{
  result = sub_1B9F39410(a1, a2, a3, *v3, &qword_1EDC5DC70, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource);
  *v3 = result;
  return result;
}

void sub_1B9F395C8(uint64_t a1)
{
  sub_1B9F39780(319, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  if (v1 <= 0x3F)
  {
    sub_1B9F39780(319, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
    if (v2 <= 0x3F)
    {
      sub_1B9F4A814(319, &qword_1EDC6B708, &type metadata for CellHeaderDetailsVisibility, MEMORY[0x1E695C070]);
      if (v3 <= 0x3F)
      {
        sub_1B9F4A864(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1B9F39780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1B9F3980C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 376))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

char *DisclosureCellHeaderView.ViewModel.__allocating_init(from:)(void *a1)
{
  swift_allocObject();
  sub_1B9F0A534(a1, v4);
  v2 = CellHeaderViewModel.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t getEnumTagSinglePayload for DataLoggingPluginViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1B9F39968()
{
  result = qword_1EDC6CF28[0];
  if (!qword_1EDC6CF28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6CF28);
  }

  return result;
}

uint64_t sub_1B9F399C0(uint64_t a1)
{
  sub_1B9F39A1C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9F39A1C(uint64_t a1)
{
  if (!qword_1EDC6C320)
  {
    sub_1B9F0D9AC(255, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering, 1);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6C320);
    }
  }
}

void sub_1B9F39A88(uint64_t a1)
{
  if (!qword_1EDC6B440)
  {
    sub_1B9F0D9AC(255, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering, 1);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B440);
    }
  }
}

Swift::Void __swiftcall PrimarySecondaryDataSource.registerCells(for:)(UICollectionView *a1)
{
  sub_1B9F39CEC();
  sub_1B9F0D9AC(0, qword_1EDC6C328, &protocol descriptor for CollectionViewCellRegistering, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v2 = *(&v7 + 1);
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
    (*(v3 + 8))(a1, v2, v3);
    __swift_destroy_boxed_opaque_existential_1(&v6);
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_1B9F399C0(&v6);
  }

  sub_1B9F40328();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v4 = *(&v7 + 1);
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(&v6, *(&v7 + 1));
    (*(v5 + 8))(a1, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(&v6);
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_1B9F399C0(&v6);
  }
}

void sub_1B9F39D20()
{
  v1 = v0;
  v2 = type metadata accessor for EmptyStateCollectionViewCell();
  v3 = swift_conformsToProtocol2();
  if (v3 && v2)
  {
    v4 = v3;
    v5 = (*(v3 + 24))(v2, v3);
    (*(*(v4 + 16) + 8))(v2);
    v7 = sub_1BA4A6758();

    [v1 registerNib:v5 forCellWithReuseIdentifier:v7];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    off_1F380B600(v2);
    v7 = sub_1BA4A6758();

    [v1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v7];
  }
}

void UICollectionView.registerCell<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = swift_conformsToProtocol2();
  if (v7 && a2)
  {
    v8 = v7;
    v9 = (*(v7 + 24))(a2, v7);
    (*(*(v8 + 16) + 8))(a2);
    v11 = sub_1BA4A6758();

    [v4 registerNib:v9 forCellWithReuseIdentifier:v11];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    (*(a3 + 8))(a2, a3);
    v11 = sub_1BA4A6758();

    [v4 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v11];
  }
}

uint64_t sub_1B9F39FD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t HideableDataSource<>.registerCells(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B9F437D0();
  v6 = *(a2 + 8);
  v7 = *(v5 + 80);
  swift_unknownObjectRetain();
  v6(a1, v7, a2);
  return swift_unknownObjectRelease();
}

void sub_1B9F3A13C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for EmptyHeaderCollectionReusableView();
  v5 = swift_conformsToProtocol2();
  if (v5 && v4)
  {
    v6 = v5;
    v7 = (*(v5 + 24))(v4, v5);
    v8 = sub_1BA4A6758();
    (*(*(v6 + 16) + 8))(v4);
    v10 = sub_1BA4A6758();

    [v3 registerNib:v7 forSupplementaryViewOfKind:v8 withReuseIdentifier:v10];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = sub_1BA4A6758();
    v10 = sub_1BA4A6758();
    [v3 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v8 withReuseIdentifier:?];
  }
}

void sub_1B9F3A31C()
{
  if (!qword_1EDC5E068)
  {
    v0 = sub_1BA4A7C08();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC5E068);
    }
  }
}

uint64_t sub_1B9F3A36C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1B9F3A3B4@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a4;
  v10 = *v5;
  v11 = sub_1BA4A3EA8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2;
  if (sub_1B9F3A69C(a1, a2))
  {
    v18 = v17;
    ObjectType = swift_getObjectType();
    (*(v18 + 24))(a3, v36, ObjectType, v18);

    swift_unknownObjectRelease();
  }

  else
  {
    v31 = a1;
    v32 = a3;
    v33 = v10;
    v34 = v11;
    v35 = v12;
    v21 = v15;
    sub_1BA4A3D88();
    v22 = v36;

    v23 = sub_1BA4A3E88();
    v24 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v37 = v26;
      *v25 = 136315650;
      v27 = sub_1BA4A85D8();
      v29 = sub_1B9F0B82C(v27, v28, &v37);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_1B9F0B82C(v32, v22, &v37);
      *(v25 + 22) = 2080;
      *(v25 + 24) = sub_1B9F0B82C(v31, v16, &v37);
      _os_log_impl(&dword_1B9F07000, v23, v24, "[%s]: Unable to retrieve item at with uniqueIdentifier %s, for child data source %s", v25, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v26, -1, -1);
      MEMORY[0x1BFAF43A0](v25, -1, -1);
    }

    (*(v35 + 8))(v21, v34);
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

unint64_t sub_1B9F3A69C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1BA4A3EA8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSourcesIdentifierToIndexMap);
  if (*(v12 + 16) && (result = sub_1B9F24A34(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * result);
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *(*(v3 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources) + 16))
    {
      return swift_unknownObjectRetain();
    }

    __break(1u);
  }

  else
  {
    sub_1BA4A3D88();

    v16 = sub_1BA4A3E88();
    v17 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = a1;
      v26[0] = v19;
      v20 = v19;
      *v18 = 136315394;
      v26[1] = v6;
      swift_getMetatypeMetadata();
      v21 = sub_1BA4A6808();
      v23 = sub_1B9F0B82C(v21, v22, v26);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1B9F0B82C(v25, a2, v26);
      _os_log_impl(&dword_1B9F07000, v16, v17, "[%s]: Unable to retrieve data source with identifier %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v20, -1, -1);
      MEMORY[0x1BFAF43A0](v18, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    return 0;
  }

  return result;
}

void *sub_1B9F3A92C(uint64_t a1, uint64_t a2)
{
  sub_1BA164F44();
  result = sub_1BA4A6E08();
  if (result[2])
  {
    v3 = result[4];
    v4 = result[5];
    v5 = result[6];
    v6 = result[7];

    v7 = MEMORY[0x1BFAF12A0](v3, v4, v5, v6);

    result = sub_1BA4A6E08();
    if (result[2])
    {
      sub_1B9F261DC(0, &qword_1EDC5E068, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6948]);
      sub_1B9F407D0();
      sub_1B9F439FC();
      sub_1BA4A6A48();

      sub_1BA4A69D8();
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9F3AB0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_1B9F3A92C(a1, a2);
  sub_1B9F3A3B4(v4, v5, v6, v7, a3);
}

double sub_1B9F3AB98@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1B9F117BC(0, &qword_1EDC5F8A0, MEMORY[0x1E69E6168], MEMORY[0x1E69DC168]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v30 - v12;
  v14 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_snapshot;
  swift_beginAccess();
  (*(v10 + 16))(v13, v4 + v14, v9);
  v36 = a1;
  v37 = a2;
  sub_1BA4A4568();
  (*(v10 + 8))(v13, v9);
  v15 = v31;
  if (v31)
  {
    v16 = v30;
    v17 = OBJC_IVAR____TtC18HealthExperienceUI22MutableArrayDataSource_sections;
    swift_beginAccess();
    v18 = *(v4 + v17);
    if (*(v18 + 16))
    {

      v19 = sub_1B9F24A34(v16, v15);
      v21 = v20;

      if (v21)
      {
        v22 = (*(v18 + 56) + 48 * v19);
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v28 = v22[4];
        v27 = v22[5];

        v30 = v24;
        v31 = v23;
        v32 = v25;
        v33 = v26;
        v34 = v28;
        v35 = v27;
        ArrayDataSourceSection.item(for:)(a1, a2, a3);

        return result;
      }
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

unint64_t ArrayDataSourceSection.item(for:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(v3 + 24);
  if (!*(v6 + 16) || (v7 = *(v4 + 16), result = sub_1B9F24A34(result, a2), (v8 & 1) == 0))
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v9 = *(*(v6 + 56) + 8 * result);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v9 >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return sub_1B9F0A534(v7 + 40 * v9 + 32, a3);
}

uint64_t sub_1B9F3AE94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return DataSourceWrapper.resolvedDataSource.getter(a1, WitnessTable);
}

unint64_t sub_1B9F3AEE8()
{
  result = qword_1EDC67DC0;
  if (!qword_1EDC67DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC67DC0);
  }

  return result;
}

uint64_t sub_1B9F3AF4C()
{
  swift_beginAccess();
  v0 = qword_1EBBF0198;

  return v0;
}

uint64_t sub_1B9F3AFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  return (*(a4 + 248))(a1, a2, a6, a7, a3, sub_1B9F5D980, v13);
}

void *sub_1B9F3B090(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a6;
  sub_1B9F0ADF8(0, &qword_1EDC6B610, 0x1E695E000);
  sub_1BA4A70E8();
  v42[0] = 2;
  sub_1B9F1174C();
  sub_1BA4A1CC8();
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_loaded) = 0;
  type metadata accessor for DiffableCollectionViewAdaptor.DebugState(0);
  swift_storeEnumTagMultiPayload();
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_collectionView) = a1;
  v15 = (a6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_backingDataSource);
  *v15 = a2;
  v15[1] = a8;
  v37 = a8;
  v15[2] = a9;
  v16 = a1;
  swift_unknownObjectRetain();
  [v16 _setShouldPrefetchCellsWhenPerformingReloadData_];
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a2;
  v17[5] = a8;
  v17[6] = a9;
  v17[7] = v14;
  sub_1B9F11824(0, &qword_1EDC5F880, MEMORY[0x1E69E6168], MEMORY[0x1E69DC228]);
  v19 = objc_allocWithZone(v18);
  v20 = v16;
  swift_unknownObjectRetain();

  v39 = v20;
  v21 = sub_1BA4A46B8();
  v22 = OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource;
  *(a6 + OBJC_IVAR____TtC18HealthExperienceUI29DiffableCollectionViewAdaptor_diffableDataSource) = v21;
  v23 = v15[1];
  ObjectType = swift_getObjectType();
  v25 = *(v23 + 40);
  swift_unknownObjectRetain();
  v26 = v25(ObjectType, v23);
  swift_unknownObjectRelease();
  [v26 registerObserver_];

  v27 = *(a6 + v22);
  swift_unownedRetainStrong();
  v28 = v27;
  swift_unownedRetain();
  swift_unownedRetain();

  v29 = swift_allocObject();
  *(v29 + 16) = a6;
  *(v29 + 24) = v14;
  sub_1BA4A46C8();

  swift_unownedRelease();
  LOBYTE(v28) = (*(v37 + 32))(a7);
  swift_unknownObjectRelease();
  if (v28)
  {
    v30 = *(a6 + v22);
    swift_allocObject();
    swift_weakInit();
    v31 = v30;

    v32 = sub_1BA4A4708();
    sub_1B9F11824(0, &qword_1EDC5F888, MEMORY[0x1E69E6168], MEMORY[0x1E69DC210]);
    sub_1BA4A46F8();
    v32(v42, 0);

    v33 = *(a6 + v22);
    swift_allocObject();
    swift_weakInit();
    v34 = v33;

    v35 = sub_1BA4A4708();
    sub_1BA4A46E8();
    v35(v42, 0);
  }

  return a6;
}

uint64_t sub_1B9F3B4EC()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B9F3B52C()
{
  swift_unownedRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B9F3B564()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1B9F3B59C()
{
  result = qword_1EDC66C70;
  if (!qword_1EDC66C70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC66C70);
  }

  return result;
}

Swift::Bool __swiftcall PrimarySecondaryDataSource.isReorderable()()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[12];
  v3 = *(v2 + 32);
  v4 = v1[10];
  swift_unknownObjectRetain();
  v5 = v3(v4, v2);
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    swift_beginAccess();
    v7 = v1[13];
    v8 = *(v7 + 32);
    v9 = v1[11];
    swift_unknownObjectRetain();
    v6 = v8(v9, v7);
    swift_unknownObjectRelease();
  }

  return v6 & 1;
}

Swift::Bool __swiftcall SnapshotDataSource.isReorderable()()
{
  sub_1B9F0D9AC(0, &qword_1EDC66C70, &protocol descriptor for DiffableReorderHandling, 1);
  swift_unknownObjectRetain();
  v0 = swift_dynamicCast();
  if (v0)
  {
    v1 = v0;
    __swift_destroy_boxed_opaque_existential_1(v3);
    LOBYTE(v0) = v1;
  }

  return v0;
}

uint64_t sub_1B9F3B7C8()
{
  v0 = sub_1B9F23FB0();
  v1 = (*(*v0 + 248))(v0);

  sub_1B9F3BED8(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BA4B9FD0;
  v3 = sub_1BA4A4858();
  v4 = MEMORY[0x1E69DC2B0];
  *(inited + 32) = v3;
  *(inited + 40) = v4;
  v5 = sub_1BA4A4438();
  v6 = MEMORY[0x1E69DC130];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = sub_1BA4A6588();
  v8 = sub_1B9F3A36C(&qword_1EDC5E8D0, MEMORY[0x1E69A4080], MEMORY[0x1E69A4078]);
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  sub_1B9F3BC30(inited);
  return v1;
}

uint64_t sub_1B9F3B8FC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F40D78(0, a2, a3, a4, 1);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t PrimarySecondaryDataSource.observedTraits.getter()
{
  sub_1B9F39CEC();
  sub_1B9F0D9AC(0, &qword_1EDC63A40, &protocol descriptor for TraitCollectionChangeHandling, 1);
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v0 = *(&v9 + 1);
    v1 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    v2 = (*(v1 + 8))(v0, v1);
    __swift_destroy_boxed_opaque_existential_1(&v8);
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_1B9F3BB6C(&v8);
    v2 = MEMORY[0x1E69E7CC0];
  }

  sub_1B9F40328();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v3 = *(&v9 + 1);
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(&v8, *(&v9 + 1));
    v5 = (*(v4 + 8))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(&v8);
    v6 = v5;
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_1B9F3BB6C(&v8);
    v6 = MEMORY[0x1E69E7CC0];
  }

  *&v8 = v2;
  sub_1B9F3BC30(v6);
  return v8;
}

uint64_t sub_1B9F3BB6C(uint64_t a1)
{
  sub_1B9F3BBC8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B9F3BBC8(uint64_t a1)
{
  if (!qword_1EDC63A30)
  {
    sub_1B9F0D950(255, &qword_1EDC63A40, &protocol descriptor for TraitCollectionChangeHandling);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC63A30);
    }
  }
}

uint64_t sub_1B9F3BC30(uint64_t result)
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

  result = sub_1B9F3BD1C(result, v11, 1, v3);
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

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

char *sub_1B9F3BD1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1D1BC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t HideableDataSource<>.observedTraits.getter(uint64_t a1)
{
  v3 = *v1;
  sub_1B9F437D0();
  return (*(a1 + 8))(*(v3 + 80), a1);
}

void sub_1B9F3BED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1B9F3BF3C()
{
  result = qword_1EDC5F8C0;
  if (!qword_1EDC5F8C0)
  {
    sub_1B9F3BF84();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EDC5F8C0);
  }

  return result;
}

unint64_t sub_1B9F3BF84()
{
  result = qword_1EDC5F8D0;
  if (!qword_1EDC5F8D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC5F8D0);
  }

  return result;
}

uint64_t (*static CompoundDataSourceCollectionViewController.makeLayoutErrorHandler(diffableAdaptor:)(uint64_t a1))(void *a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  return sub_1BA16509C;
}

uint64_t sub_1B9F3C064()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F3C09C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1B9F3C0D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;
  v6 = objc_opt_self();

  sub_1B9F0F1B8(a1, a2);
  v7 = [v6 defaultConfiguration];
  [v7 setContentInsetsReference_];
  v8 = objc_allocWithZone(MEMORY[0x1E69DC808]);
  v12[4] = sub_1B9F54DE8;
  v12[5] = v5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B9F54940;
  v12[3] = &block_descriptor_24_1;
  v9 = _Block_copy(v12);
  v10 = [v8 initWithSectionProvider:v9 configuration:v7];

  _Block_release(v9);

  return v10;
}

uint64_t sub_1B9F3C228()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void ProfileButtonDisplaying<>.updateProfileButtonForCompactSizeClass()(uint64_t a1, uint64_t a2)
{
  v5 = [v2 navigationItem];
  [v5 setLargeTitleDisplayMode_];

  v6 = [v2 navigationItem];
  v7 = (*(a2 + 8))(a1, a2);
  [v6 _setLargeTitleAccessoryView_alignToBaseline_];
}

id ProfileBarButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1B9F3C3C0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton____lazy_storage___meContactView] = 0;
  *&v4[OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton_gestureRecognizer] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for ProfileBarButton();
  v9 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_1B9F3C618();
  [v9 addSubview_];

  v11 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v9 action:sel_openProfileViewControllerWithSender_];
  v12 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton_gestureRecognizer];
  *&v9[OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton_gestureRecognizer] = v11;
  v13 = v11;

  if (v13)
  {
    v14 = *&v9[OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton____lazy_storage___meContactView];
    [v14 addGestureRecognizer_];

    v15 = v9;
    [v15 setIsAccessibilityElement_];
    [v15 setAccessibilityTraits_];
    if (qword_1EDC5E100 != -1)
    {
      swift_once();
    }

    sub_1BA4A1318();
    v16 = sub_1BA4A6758();

    [v15 setAccessibilityLabel_];
  }

  else
  {
    __break(1u);
  }
}

char *sub_1B9F3C618()
{
  v1 = OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton____lazy_storage___meContactView;
  v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton____lazy_storage___meContactView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton____lazy_storage___meContactView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for MeContactAvatarView());
    v6 = sub_1B9F3C6B0(1);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_1B9F3C6B0(char a1)
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_defaultAvatarImageSymbolConfiguration;
  *&v1[v3] = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:28.0];
  v1[OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_avatarSize] = a1 & 1;
  type metadata accessor for PublisherImageView();
  *&v1[OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_publisherImageView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;

  *&v1[OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_screenScale] = v6;
  v7 = [objc_opt_self() userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1;
  v1[OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_monogramRightToLeft] = v7;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for MeContactAvatarView();
  v8 = objc_msgSendSuper2(&v13, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_publisherImageView;
  v10 = *&v8[OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_publisherImageView];
  v11 = v8;
  [v11 addSubview_];
  [*&v8[v9] setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 hk:*&v8[v9] alignConstraintsWithView:?];
  sub_1B9F3C990();

  return v11;
}

void sub_1B9F3C928(uint64_t a1)
{
  if (!qword_1EDC5E1E0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6E370, 0x1E69DCAB8);
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E1E0);
    }
  }
}

uint64_t sub_1B9F3C990()
{
  sub_1B9F3D850(0);
  v67 = *(v1 - 8);
  v68 = v1;
  MEMORY[0x1EEE9AC00](v1, v2);
  v66 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F3D608(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v62 = &v53 - v6;
  sub_1B9F3DA8C(0);
  v57 = *(v7 - 8);
  v58 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F44C60(0);
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F44B94(0);
  v64 = *(v13 - 8);
  v65 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v63 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1BA4A72F8();
  v16 = *(v54 - 1);
  MEMORY[0x1EEE9AC00](v54, v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v20, v21);
  v22 = sub_1BA4A64C8();
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v24 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_defaultAvatarImageSymbolConfiguration);
  v25 = sub_1BA4A6758();
  v55 = [objc_opt_self() systemImageNamed:v25 withConfiguration:v24];

  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  sub_1BA4A6498();
  v69 = MEMORY[0x1E69E7CC0];
  sub_1B9F3DBF4(&unk_1EDC5E480, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1B9F3D608(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1B9F21B28();
  sub_1BA4A7C38();
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8090], v54);
  v26 = v53;
  v27 = sub_1BA4A7328();
  v28 = *(v26 + OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_avatarSize);
  v29 = *(v26 + OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_screenScale);
  if (qword_1EDC63680 != -1)
  {
    swift_once();
  }

  v30 = 86.0;
  if (v28)
  {
    v30 = 44.0;
  }

  v69 = v30;
  v70 = v29;
  v71 = qword_1EDC63688;
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  *(v32 + 24) = v27;
  v33 = MEMORY[0x1E695BED0];
  sub_1B9F3DE4C(0, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
  sub_1B9F3DB14();

  v54 = v27;
  v34 = v56;
  sub_1BA4A4FE8();

  v35 = sub_1B9F3DBF4(&qword_1EDC5F690, sub_1B9F3DA8C, MEMORY[0x1E695BD60]);
  v36 = sub_1B9F3DED0(&qword_1EDC5F498, &qword_1EDC5F490, v33, MEMORY[0x1E695BED8]);
  v37 = v58;
  v38 = v59;
  MEMORY[0x1BFAEFB60](v58, v35, v36);
  (*(v57 + 8))(v34, v37);
  v39 = sub_1BA4A7308();
  v69 = *&v39;
  v40 = sub_1BA4A72A8();
  v41 = v62;
  (*(*(v40 - 8) + 56))(v62, 1, 1, v40);
  sub_1B9F3DBF4(&qword_1EDC5F6B0, sub_1B9F44C60, MEMORY[0x1E695BD00]);
  sub_1B9F3DC80();
  v42 = v63;
  v43 = v61;
  sub_1BA4A50A8();
  sub_1B9F0DCE0(v41, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720], sub_1B9F3D608);

  (*(v60 + 8))(v38, v43);
  sub_1B9F3D608(0, &qword_1EDC5DB78, sub_1B9F3C928, MEMORY[0x1E69E6F90]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1BA4B5480;
  v45 = v55;
  *(v44 + 32) = v55;
  sub_1B9F3DBF4(&qword_1EDC5F520, sub_1B9F44B94, MEMORY[0x1E695BE98]);
  v46 = v45;
  v48 = v65;
  v47 = v66;
  sub_1BA4A5098();

  v49 = *((*MEMORY[0x1E69E7D40] & **(v26 + OBJC_IVAR____TtC18HealthExperienceUI19MeContactAvatarView_publisherImageView)) + 0x70);
  v50 = sub_1B9F3DBF4(&qword_1EDC5F6E0, sub_1B9F3D850, MEMORY[0x1E695BCA8]);
  v51 = v68;
  v49(v47, v68, v50);

  (*(v67 + 8))(v47, v51);
  return (*(v64 + 8))(v42, v48);
}

uint64_t sub_1B9F3D358()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F3D390()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void sub_1B9F3D3D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1B9F3D424(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D488(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D4EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1B9F3D5A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D66C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D6D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1B9F3D724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D7EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3D850(uint64_t a1)
{
  if (!qword_1EDC5F6D8)
  {
    sub_1B9F40E34(255);
    sub_1B9F44B94(255);
    sub_1B9F3DBF4(&qword_1EDC5F580, sub_1B9F40E34, MEMORY[0x1E695BE60]);
    sub_1B9F3DBF4(&qword_1EDC5F520, sub_1B9F44B94, MEMORY[0x1E695BE98]);
    v1 = sub_1BA4A4AF8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F6D8);
    }
  }
}

void sub_1B9F3D93C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1B9F3C928(255);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B9F3D9AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1B9F3C928(255);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B9F3DA1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1B9F3C928(255);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1B9F3DA8C(uint64_t a1)
{
  if (!qword_1EDC5F688)
  {
    sub_1B9F3D93C(255, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
    sub_1B9F3DB14();
    v1 = sub_1BA4A4B78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F688);
    }
  }
}

unint64_t sub_1B9F3DB14()
{
  result = qword_1EDC63590;
  if (!qword_1EDC63590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63590);
  }

  return result;
}

uint64_t sub_1B9F3DB68(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3D93C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F3DBAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F3DBF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F3DC3C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1BA2F2C28(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B9F3DC80()
{
  result = qword_1EDC6B5B0;
  if (!qword_1EDC6B5B0)
  {
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6B5B0);
  }

  return result;
}

void *sub_1B9F3DCE8()
{
  type metadata accessor for MeProfilePictureCachePublisher.SharePublisherCache();
  result = MeProfilePictureCachePublisher.SharePublisherCache.__allocating_init()();
  qword_1EDC63688 = result;
  return result;
}

void *MeProfilePictureCachePublisher.SharePublisherCache.__allocating_init()()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  type metadata accessor for MeProfilePictureCachePublisher.SharePublisherCache();
  v2 = swift_allocObject();
  sub_1BA4A1C18();
  swift_allocObject();
  v2[2] = sub_1BA4A1C08();
  v3 = MEMORY[0x1E69E7CC8];
  v2[4] = v1;
  v2[5] = v3;
  v2[3] = sub_1B9F44FAC;
  v4 = objc_opt_self();

  v5 = [v4 defaultCenter];
  [v5 addObserver:v2 selector:sel_didReceiveMemoryWarning_ name:*MEMORY[0x1E69DDAD8] object:0];

  return v2;
}

void sub_1B9F3DE4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_1B9F3C928(255);
    v7 = a3(a1, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B9F3DED0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3DE4C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F3DF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v6 = v5;
  v25[1] = a1;
  sub_1B9F3E26C(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B9F38BF4();
  v14 = sub_1B9F3E224(&qword_1EDC6B5B0, sub_1B9F38BF4, MEMORY[0x1E69E8028]);
  v28 = a2;
  v29 = v13;
  v30 = a3;
  v31 = v14;
  v15 = sub_1BA4A4CC8();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = v25 - v18;
  v20 = sub_1BA4A7308();
  v28 = v20;
  v21 = sub_1BA4A72A8();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_1BA4A50A8();
  sub_1B9F3E2C4(v12);

  KeyPath = swift_getKeyPath();
  WitnessTable = swift_getWitnessTable();
  sub_1B9F44D78(KeyPath, v6, v15, WitnessTable, v26, v27);

  (*(v16 + 8))(v19, v15);
  swift_beginAccess();
  sub_1BA4A4D28();
  swift_endAccess();
}

id sub_1B9F3E190@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 image];
  *a2 = result;
  return result;
}

uint64_t sub_1B9F3E1E0(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F0ADF8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F3E224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B9F3E26C(uint64_t a1)
{
  if (!qword_1EDC6B5B8)
  {
    sub_1BA4A72A8();
    v1 = sub_1BA4A7AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B5B8);
    }
  }
}

uint64_t sub_1B9F3E2C4(uint64_t a1)
{
  sub_1B9F3E26C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B9F3E320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MeProfilePictureCachePublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B9F3E438(*v3, v3[1]);
  v4 = MEMORY[0x1E695BED0];
  sub_1B9F3DA1C(0, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
  sub_1B9F44FF8(&qword_1EDC5F498, &qword_1EDC5F490, v4, MEMORY[0x1E695BED8]);
  sub_1BA4A5108();
}

uint64_t sub_1B9F3E438(double a1, double a2)
{
  v3 = v2;
  sub_1BA4A1BE8();
  swift_beginAccess();
  v6 = *(v2 + 40);
  if (*(v6 + 16) && (v7 = sub_1B9F3EE1C(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    *&v13 = a1;
    *(&v13 + 1) = a2;
    v9 = sub_1B9F3E544(&v13);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    sub_1B9F450D0(v9, isUniquelyReferenced_nonNull_native, a1, a2);
    *(v3 + 40) = v12;
    swift_endAccess();
  }

  sub_1BA4A1BF8();
  return v9;
}

uint64_t sub_1B9F3E544(__int128 *a1)
{
  sub_1B9F3E860(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v20 - v5;
  sub_1B9F44EC0(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 24);
  v21 = *a1;
  *&v21 = v13(&v21);
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v14 = sub_1BA4A7308();
  v20[1] = v14;
  v15 = sub_1BA4A72A8();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = MEMORY[0x1E695BED0];
  sub_1B9F3DA1C(0, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
  sub_1B9F44FF8(&qword_1EDC5F498, &qword_1EDC5F490, v16, MEMORY[0x1E695BED8]);
  sub_1B9F3DC80();
  sub_1BA4A50A8();
  sub_1B9F3E2C4(v6);

  sub_1B9F3EC74(&qword_1EDC5F540, sub_1B9F44EC0, MEMORY[0x1E695BE98]);
  v17 = sub_1BA4A4F68();
  (*(v9 + 8))(v12, v8);
  *&v21 = v17;
  sub_1B9F4503C(0);
  sub_1B9F3EC74(&qword_1EDC5F6F0, sub_1B9F4503C, MEMORY[0x1E695BCA0]);
  v18 = sub_1BA4A4F98();

  return v18;
}

void sub_1B9F3E860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F3E8C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BA4A6BF8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B9F3E918(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3D9AC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B9F3E95C(uint64_t *a1)
{
  v2 = sub_1BA4A72F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A7288();
  MEMORY[0x1EEE9AC00](v7, v8);
  v9 = sub_1BA4A64C8();
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v11 = *a1;
  v12 = a1[1];
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  sub_1BA4A6498();
  *&v22 = MEMORY[0x1E69E7CC0];
  sub_1B9F3EC74(&unk_1EDC5E480, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1B9F3E860(0, &qword_1EDC5E670, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1B9F21B28();
  sub_1BA4A7C38();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8090], v2);
  v13 = sub_1BA4A7328();
  v14 = objc_allocWithZone(MEMORY[0x1E6959A48]);
  v15 = v13;
  v16 = [v14 init];
  v17 = *MEMORY[0x1E698BB38];
  *&v22 = v11;
  *(&v22 + 1) = v12;
  v23 = sub_1B9F3607C;
  v24 = 0;
  *&v25 = v16;
  *(&v25 + 1) = &off_1F38048C0;
  *&v26 = v13;
  *(&v26 + 1) = v17;
  v21[0] = v22;
  v21[1] = sub_1B9F3607C;
  v21[2] = v25;
  v21[3] = v26;
  sub_1B9F3ECBC();
  v18 = v17;
  v19 = sub_1BA4A4F98();

  sub_1B9F40F98(&v22);
  return v19;
}

uint64_t sub_1B9F3EC74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B9F3ECBC()
{
  result = qword_1EDC65738[0];
  if (!qword_1EDC65738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC65738);
  }

  return result;
}

void sub_1B9F3ED10(uint64_t a1)
{
  if (!qword_1EDC5F548)
  {
    sub_1B9F44EC0(255);
    v1 = MEMORY[0x1E69A3180];
    sub_1B9F3DA1C(255, &qword_1EDC6AD78, MEMORY[0x1E69A3180]);
    sub_1B9F3EC74(&qword_1EDC5F540, sub_1B9F44EC0, MEMORY[0x1E695BE98]);
    sub_1B9F44FF8(&qword_1EDC6AD80, &qword_1EDC6AD78, v1, MEMORY[0x1E69A3188]);
    v2 = sub_1BA4A4CB8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC5F548);
    }
  }
}

unint64_t sub_1B9F3EE1C(double a1, double a2)
{
  sub_1BA4A8488();
  if (a1 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = a1;
  }

  MEMORY[0x1BFAF2F00](*&v4);
  if (a2 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a2;
  }

  MEMORY[0x1BFAF2F00](*&v5);
  v6 = sub_1BA4A84D8();

  return sub_1B9F454BC(v6, a1, a2);
}

void sub_1B9F3EEB4(uint64_t a1)
{
  if (!qword_1EDC5E008)
  {
    sub_1B9F3EF20(255);
    sub_1B9F3EF88();
    v1 = sub_1BA4A80A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E008);
    }
  }
}

void sub_1B9F3EF20(uint64_t a1)
{
  if (!qword_1EDC5F490)
  {
    sub_1B9F3C928(255);
    v1 = sub_1BA4A4D18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F490);
    }
  }
}

unint64_t sub_1B9F3EF88()
{
  result = qword_1EDC63698[0];
  if (!qword_1EDC63698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC63698);
  }

  return result;
}

unint64_t sub_1B9F3EFDC(unint64_t result, uint64_t a2, void *a3, double a4, double a5)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v5 = (a3[6] + 16 * result);
  *v5 = a4;
  v5[1] = a5;
  *(a3[7] + 8 * result) = a2;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_1B9F3F028(uint64_t a1)
{
  result = sub_1BA4A3A68();
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

uint64_t sub_1B9F3F1FC(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_1BA4A3A68();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void sub_1B9F3F2D8()
{
  sub_1B9F45A18();
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_profilePictureStoreDidChange_ name:*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0)) object:0];
}

void sub_1B9F3F378(uint64_t a1)
{
  if (!qword_1EDC5E6B0)
  {
    sub_1BA4A6478();
    v1 = sub_1BA4A6BF8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E6B0);
    }
  }
}

Swift::Void __swiftcall GradientBackgroundPresenting.configureGradientBackground()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = [v2 traitCollection];
  sub_1B9F3AEE8();
  sub_1BA4A7358();

  v7 = objc_opt_self();
  v8 = &selRef_secondarySystemBackgroundColor;
  if (((LOBYTE(v50[0]) - 4) & 0xF7) != 0)
  {
    v8 = &selRef_systemGroupedBackgroundColor;
  }

  v9 = [v7 *v8];
  v10 = [v3 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  [v10 setBackgroundColor_];

  v12 = *(v4 + 48);
  v12(v50, v5, v4);
  v13 = v51;
  v14 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  (*(v14 + 8))(v13, v14);
  sub_1BA4A4DB8();

  __swift_destroy_boxed_opaque_existential_1(v50);
  v15 = *(v4 + 8);
  v16 = v15(v5, v4);
  v18 = v17;
  ObjectType = swift_getObjectType();
  (*(v18 + 8))(v49, ObjectType, v18);

  v20 = v15(v5, v4);
  v21 = [v20 layer];

  [v21 setZPosition_];
  v22 = [v3 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = v22;
  v24 = v15(v5, v4);
  [v23 insertSubview:v24 atIndex:0];

  v48 = v12;
  v12(v50, v5, v4);
  v25 = v51;
  v26 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  (*(v26 + 8))(v25, v26);
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  v28[2] = v5;
  v28[3] = v4;
  v28[4] = v27;
  sub_1B9F10B50(0);
  sub_1B9F4117C();
  v29 = sub_1BA4A5148();

  __swift_destroy_boxed_opaque_existential_1(v50);
  (*(v4 + 24))(v29, v5, v4);
  v30 = v15(v5, v4);
  v32 = v31;
  v33 = [v3 view];
  if (!v33)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v34 = v33;

  v35 = [v34 backgroundColor];

  if (!v35)
  {
    v35 = [objc_opt_self() systemBackgroundColor];
  }

  v36 = swift_getObjectType();
  (*(v32 + 16))(v35, v36, v32);

  sub_1B9F0F2FC(0, &qword_1EDC5DC30, sub_1B9F3BF3C, MEMORY[0x1E69E6F90]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1BA4B5480;
  v38 = sub_1BA4A4178();
  v39 = MEMORY[0x1E69DC0F8];
  *(v37 + 32) = v38;
  *(v37 + 40) = v39;
  v40 = swift_allocObject();
  v40[2] = v5;
  v40[3] = v4;
  v40[4] = v9;
  v41 = v9;
  sub_1BA4A7228();
  swift_unknownObjectRelease();

  v48(v50, v5, v4);
  v42 = v51;
  v43 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v44 = *((*(v43 + 24))(v42, v43) + 16);

  __swift_destroy_boxed_opaque_existential_1(v50);
  if (v44)
  {
    v48(v50, v5, v4);
    v45 = v51;
    v46 = v52;
    __swift_project_boxed_opaque_existential_1(v50, v51);
    (*(v46 + 24))(v45, v46);
    v47 = swift_allocObject();
    *(v47 + 16) = v5;
    *(v47 + 24) = v4;
    sub_1BA4A7228();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
  }
}

uint64_t sub_1B9F3FA1C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F3FA54()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F3FA8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

char *sub_1B9F3FAD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B9F1BFA8(0, &unk_1EDC6B3F0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

double static PersonalizedFeedTrainer.DwellPolicy.summary.getter@<D0>(uint64_t a1@<X8>)
{
  result = 2.5;
  *a1 = xmmword_1BA4D7B40;
  *(a1 + 16) = 0x3FF3333333333333;
  return result;
}

uint64_t _s18HealthExperienceUI31PersonalizedFeedTrainerDelegatePAAE07visibleE24ItemsEligibleForTraining2inShy0A8Platform0E4ItemCGSo16UICollectionViewC_tF_0(void *a1)
{
  v71 = sub_1BA4A1C68();
  v58 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v2);
  v68 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x1EEE9AC00](v4, v5).n128_u64[0];
  v8 = &v56 - v7;
  v57 = a1;
  v9 = [a1 visibleCells];
  sub_1B9F0ADF8(0, &qword_1EDC6B550, 0x1E69DC7F8);
  v10 = sub_1BA4A6B08();

  v72 = MEMORY[0x1E69E7CC0];
  v11 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
LABEL_30:
    v12 = sub_1BA4A7CC8();
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_3:
      v13 = 0;
      v14 = v10 & 0xC000000000000001;
      v15 = v10 + 32;
      v67 = v58 + 16;
      v56 = MEMORY[0x1E69E7CC0];
      v70 = (v58 + 8);
      v59 = v10;
      v61 = v11;
      v63 = v12;
      v60 = v10 & 0xC000000000000001;
      v62 = v10 + 32;
      while (1)
      {
        if (v14)
        {
          v16 = MEMORY[0x1BFAF2860](v13, v10);
        }

        else
        {
          if (v13 >= *(v11 + 16))
          {
            goto LABEL_29;
          }

          v16 = *(v15 + 8 * v13);
        }

        v17 = v16;
        if (__OFADD__(v13++, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        type metadata accessor for ChromeHostViewCell(0);
        v19 = swift_dynamicCastClass();
        if (!v19)
        {
          goto LABEL_4;
        }

        v20 = OBJC_IVAR____TtC18HealthExperienceUI12HostViewCell_hostView;
        v21 = v19;
        result = swift_beginAccess();
        v23 = *(v21 + v20);
        if (!v23)
        {
          __break(1u);
          return result;
        }

        v24 = OBJC_IVAR____TtC18HealthExperienceUI8HostView_hostedFeedItem;
        swift_beginAccess();
        v25 = *(v23 + v24);
        if (v25)
        {
          v26 = qword_1EDC6CB58;
          v27 = v17;
          v28 = v25;
          if (v26 != -1)
          {
            swift_once();
          }

          v29 = off_1EDC6CB60;
          sub_1BA4A26B8();
          if (*(v29 + 2))
          {
            v64 = v27;
            v65 = v28;
            v66 = v13;
            sub_1B9F85D08(&qword_1EDC6E240, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C10]);
            v30 = sub_1BA4A6698();
            v31 = -1 << v29[32];
            v32 = v30 & ~v31;
            v69 = v29 + 56;
            if ((*&v29[((v32 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v32))
            {
              v33 = ~v31;
              v34 = *(v58 + 72);
              v35 = *(v58 + 16);
              while (1)
              {
                v36 = v68;
                v37 = v71;
                v35(v68, *(v29 + 6) + v34 * v32, v71);
                sub_1B9F85D08(&qword_1EDC6E230, MEMORY[0x1E69A3C08], MEMORY[0x1E69A3C18]);
                v38 = sub_1BA4A6728();
                v39 = *v70;
                (*v70)(v36, v37);
                if (v38)
                {
                  break;
                }

                v32 = (v32 + 1) & v33;
                if (((*&v69[(v32 >> 3) & 0xFFFFFFFFFFFFFF8] >> v32) & 1) == 0)
                {
                  goto LABEL_20;
                }
              }

              v39(v8, v71);
              [v57 bounds];
              v42 = v41;
              v44 = v43;
              v46 = v45;
              v48 = v47;
              v49 = v64;
              [v64 frame];
              v74.origin.x = v50;
              v74.origin.y = v51;
              v74.size.width = v52;
              v74.size.height = v53;
              v73.origin.x = v42;
              v73.origin.y = v44;
              v73.size.width = v46;
              v73.size.height = v48;
              v54 = CGRectContainsRect(v73, v74);

              v11 = v61;
              v12 = v63;
              v13 = v66;
              v14 = v60;
              if (v54)
              {
                MEMORY[0x1BFAF1510]();
                v10 = v59;
                v15 = v62;
                if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1BA4A6B68();
                }

                sub_1BA4A6BB8();
                v56 = v72;
              }

              else
              {

                v10 = v59;
                v15 = v62;
              }
            }

            else
            {
LABEL_20:

              v40 = v64;
              (*v70)(v8, v71);
              v10 = v59;
              v11 = v61;
              v15 = v62;
              v12 = v63;
              v13 = v66;
              v14 = v60;
            }
          }

          else
          {

            (*v70)(v8, v71);
            v15 = v62;
            v12 = v63;
          }
        }

        else
        {
LABEL_4:
        }

        if (v13 == v12)
        {
          goto LABEL_32;
        }
      }
    }
  }

  v56 = MEMORY[0x1E69E7CC0];
LABEL_32:

  v55 = sub_1B9F51CBC(v56);

  return v55;
}

uint64_t sub_1B9F402F0()
{
  type metadata accessor for EmptyStateCollectionViewCell();
  sub_1B9F34708();
  return sub_1BA4A6808();
}

uint64_t DefaultCloudSyncStateStore.lastKnownFirstRestoreState.setter(uint64_t a1)
{
  sub_1B9F0C700(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A2D28();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F39FD0(a1, v6, sub_1B9F0C700);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B9F0DF80(v6, sub_1B9F0C700);
    v12 = *v1;
    v13 = sub_1BA4A6758();
    [v12 removeObjectForKey_];

    return sub_1B9F0DF80(a1, sub_1B9F0C700);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v15 = *v1;
    sub_1BA4A2D08();
    v16 = sub_1BA4A6758();

    v17 = sub_1BA4A6758();
    [v15 setObject:v16 forKey:v17];

    sub_1B9F0DF80(a1, sub_1B9F0C700);
    return (*(v8 + 8))(v11, v7);
  }
}

void sub_1B9F405E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for CollectionHeaderWithIconReusableView();
  v5 = swift_conformsToProtocol2();
  if (v5 && v4)
  {
    v6 = v5;
    v7 = (*(v5 + 24))(v4, v5);
    v8 = sub_1BA4A6758();
    (*(*(v6 + 16) + 8))(v4);
    v10 = sub_1BA4A6758();

    [v3 registerNib:v7 forSupplementaryViewOfKind:v8 withReuseIdentifier:v10];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = sub_1BA4A6758();
    v10 = sub_1BA4A6758();
    [v3 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v8 withReuseIdentifier:?];
  }
}

unint64_t sub_1B9F407D0()
{
  result = qword_1EDC5E070;
  if (!qword_1EDC5E070)
  {
    sub_1B9F261DC(255, &qword_1EDC5E068, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E070);
  }

  return result;
}

void *sub_1B9F4085C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  ObjectType = swift_getObjectType();
  return sub_1B9F3B090(a1, a2, a5, a6, a7, v14, ObjectType, a3, a4);
}

Swift::Bool __swiftcall DataSourceWrapper.isReorderable()()
{
  v2 = v1;
  v3 = v0;
  sub_1B9F3B59C();
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v9);
    (*(v2 + 32))(v3, v2);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v5 = *(AssociatedConformanceWitness + 32);
    v6 = swift_checkMetadataState();
    v7 = v5(v6, AssociatedConformanceWitness);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1B9F40A0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v7 = v4[2];
    if (!v7)
    {
LABEL_32:

      return;
    }

    v8 = (v4 + 4);
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1B9F0A534(v8, &v25);
      v10 = v26;
      v11 = v27;
      __swift_project_boxed_opaque_existential_1(&v25, v26);
      v12 = (*(v11 + 8))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(&v25);
      v13 = *(v12 + 16);
      v14 = *(v9 + 2);
      v15 = v14 + v13;
      if (__OFADD__(v14, v13))
      {
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v15 <= *(v9 + 3) >> 1)
      {
        if (!*(v12 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v14 <= v15)
        {
          v17 = v14 + v13;
        }

        else
        {
          v17 = v14;
        }

        v9 = sub_1B9F3BD1C(isUniquelyReferenced_nonNull_native, v17, 1, v9);
        if (!*(v12 + 16))
        {
LABEL_17:

          if (v13)
          {
            goto LABEL_35;
          }

          goto LABEL_18;
        }
      }

      v18 = *(v9 + 2);
      if ((*(v9 + 3) >> 1) - v18 < v13)
      {
        goto LABEL_36;
      }

      memcpy(&v9[16 * v18 + 32], (v12 + 32), 16 * v13);

      if (v13)
      {
        v19 = *(v9 + 2);
        v20 = __OFADD__(v19, v13);
        v21 = v19 + v13;
        if (v20)
        {
          goto LABEL_37;
        }

        *(v9 + 2) = v21;
      }

LABEL_18:
      v8 += 40;
      if (!--v7)
      {
        goto LABEL_32;
      }
    }
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (v3 < *(v1 + 16))
  {
    v25 = *(v1 + 32 + 16 * v3);
    sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
    sub_1B9F0D9AC(0, &qword_1EDC63A40, &protocol descriptor for TraitCollectionChangeHandling, 1);
    swift_unknownObjectRetain();
    if (swift_dynamicCast())
    {
      if (*(&v23 + 1))
      {
        sub_1B9F1134C(&v22, &v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1B9F3B95C(0, v4[2] + 1, 1, v4);
        }

        v6 = v4[2];
        v5 = v4[3];
        if (v6 >= v5 >> 1)
        {
          v4 = sub_1B9F3B95C((v5 > 1), v6 + 1, 1, v4);
        }

        v4[2] = v6 + 1;
        sub_1B9F1134C(&v25, &v4[5 * v6 + 4]);
        goto LABEL_5;
      }
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
    }

    sub_1B9F3B8FC(&v22, &qword_1EDC63A30, &qword_1EDC63A40, &protocol descriptor for TraitCollectionChangeHandling);
LABEL_5:
    if (v2 == ++v3)
    {
      goto LABEL_15;
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
  __break(1u);
}

void sub_1B9F40D10(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B9F0D950(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B9F40D78(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, char a5)
{
  if (!*a2)
  {
    sub_1B9F0D9AC(255, a3, a4, a5 & 1);
    v6 = sub_1BA4A7AA8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1B9F40DD8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1B9F40E34(uint64_t a1)
{
  if (!qword_1EDC5F578)
  {
    sub_1B9F3D608(255, &qword_1EDC5E648, sub_1B9F3C928, MEMORY[0x1E69E62F8]);
    sub_1B9F40EE4();
    v1 = sub_1BA4A4C98();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F578);
    }
  }
}

unint64_t sub_1B9F40EE4()
{
  result = qword_1EDC5E640;
  if (!qword_1EDC5E640)
  {
    sub_1B9F3D608(255, &qword_1EDC5E648, sub_1B9F3C928, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E640);
  }

  return result;
}

uint64_t sub_1B9F41010@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = sub_1BA4A3A68();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

double sub_1B9F410E4()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = 0.0;
  v7[0] = 0;
  v4 = 0.0;
  v5 = 0.0;
  [v0 getRed:v7 green:&v6 blue:&v5 alpha:&v4];
  *&v1.f64[0] = v7[0];
  v2.f64[0] = v5;
  v1.f64[1] = v6;
  v2.f64[1] = v4;
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v1), v2).u64[0];
  return result;
}

unint64_t sub_1B9F4117C()
{
  result = qword_1EDC5F468;
  if (!qword_1EDC5F468)
  {
    sub_1B9F10B50(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5F468);
  }

  return result;
}

void sub_1B9F411D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = (*(a4 + 8))(a3, a4);
    v11 = v10;
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v6, ObjectType, v11);
  }
}

uint64_t sub_1B9F41290(double a1, double a2, double a3)
{
  result = 0;
  v4 = 0;
  v5 = 0;
  v6 = a1;
  do
  {
    v8 = v6 <= a2;
    if (a3 > 0.0)
    {
      v8 = v6 >= a2;
    }

    if (v8)
    {
      if ((v6 != a2) | v4 & 1)
      {
        return result;
      }

      v4 = 1;
    }

    else
    {
      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        goto LABEL_12;
      }

      v6 = a1 + v5 * a3;
    }

    v7 = __OFADD__(result++, 1);
  }

  while (!v7);
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t CodablePluginViewModel.init(userData:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v29 = sub_1BA4A3EA8();
  v8 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0EB8();
  swift_allocObject();
  sub_1BA4A0EA8();
  sub_1BA4A0E98();
  if (v4)
  {
    v28 = a1;

    sub_1BA4A3E28();
    v12 = v4;
    v13 = sub_1BA4A3E88();
    v14 = sub_1BA4A6FA8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31 = v16;
      *v15 = 136315394;
      v30 = a3;
      swift_getMetatypeMetadata();
      v17 = sub_1BA4A6808();
      v19 = sub_1B9F0B82C(v17, v18, &v31);
      v27 = a2;
      v20 = v19;

      *(v15 + 4) = v20;
      *(v15 + 12) = 2082;
      v30 = v4;
      v21 = v4;
      sub_1B9FED358();
      v22 = sub_1BA4A6808();
      v24 = sub_1B9F0B82C(v22, v23, &v31);
      a2 = v27;

      *(v15 + 14) = v24;
      _os_log_impl(&dword_1B9F07000, v13, v14, "Failed to decode data for %s with error: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFAF43A0](v16, -1, -1);
      MEMORY[0x1BFAF43A0](v15, -1, -1);
    }

    (*(v8 + 8))(v11, v29);
    sub_1B9F21374();
    swift_allocError();
    *v25 = v4 | 0x4000000000000000;
    swift_willThrow();
    return sub_1B9F2BB4C(v28, a2);
  }

  else
  {
    sub_1B9F2BB4C(a1, a2);
  }
}

void sub_1B9F41674(uint64_t a1)
{
  sub_1B9F416DC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1B9F416DC(uint64_t a1)
{
  if (!qword_1EDC6E250)
  {
    sub_1BA4A1728();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDC6E250);
    }
  }
}

unint64_t sub_1B9F41748()
{
  result = qword_1EDC6CF10;
  if (!qword_1EDC6CF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CF10);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingTileDisabledState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SharingTileDisabledState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B9F418E4()
{
  sub_1B9F39780(0, &qword_1EDC6B5B8, MEMORY[0x1E69E8050]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v21 - v2;
  v4 = sub_1BA4A7488();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F4BDC0(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B9F4BEAC();
  v15 = [objc_opt_self() defaultCenter];
  sub_1BA4A7498();

  sub_1B9F38BF4();
  v16 = sub_1BA4A7308();
  v21[3] = v16;
  v17 = sub_1BA4A72A8();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  sub_1B9F42A64(&unk_1EDC6B560, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  sub_1B9F42A64(&qword_1EDC6B5B0, sub_1B9F38BF4, MEMORY[0x1E69E8028]);
  sub_1BA4A50A8();
  sub_1B9F4C1D4(v3, &qword_1EDC6B5B8, v21[2]);

  (*(v5 + 8))(v8, v4);
  swift_allocObject();
  v18 = v21[1];
  swift_weakInit();
  sub_1B9F42A64(&unk_1EDC6B750, sub_1B9F4BDC0, MEMORY[0x1E695BE98]);
  v19 = sub_1BA4A5148();

  (*(v11 + 8))(v14, v10);
  *(v18 + OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable) = v19;
}

uint64_t sub_1B9F41C90()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F41CC8()
{
  v0 = sub_1BA4A18A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1878();
  v5 = objc_allocWithZone(MEMORY[0x1E69A4358]);
  v6 = sub_1BA4A1818();
  v7 = [v5 initWithCalendar_];

  result = (*(v1 + 8))(v4, v0);
  qword_1EDC6E400 = v7;
  return result;
}

uint64_t SnidgetContentView.ViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SnidgetContentView.ViewModel.init(from:)(a1);
  return v2;
}

uint64_t SnidgetCurrentValueView.ViewModel<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v64 = a4;
  v72 = a5;
  v8 = type metadata accessor for SnidgetCurrentValueView.ViewModel.DataCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v70 = v8;
  v63 = sub_1BA4A81E8();
  v62 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v9);
  v71 = &v55 - v10;
  v12 = type metadata accessor for SnidgetCurrentValueView.ViewModel.NoDataCodingKeys(255, a2, a3, v11);
  v67 = swift_getWitnessTable();
  v68 = v12;
  v61 = sub_1BA4A81E8();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v13);
  v66 = &v55 - v14;
  type metadata accessor for SnidgetCurrentValueView.ViewModel.CodingKeys(255, a2, a3, v15);
  swift_getWitnessTable();
  v75 = sub_1BA4A81E8();
  v77 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75, v16);
  v18 = &v55 - v17;
  v73 = a2;
  v76 = a3;
  v20 = type metadata accessor for SnidgetCurrentValueView.ViewModel(0, a2, a3, v19);
  v65 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v55 - v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v74 = v18;
  v28 = v82;
  sub_1BA4A8528();
  if (!v28)
  {
    v56 = v23;
    v57 = v27;
    v59 = v20;
    v58 = 0;
    v82 = a1;
    v30 = v74;
    v29 = v75;
    *&v78 = sub_1BA4A81D8();
    sub_1BA4A6BF8();
    swift_getWitnessTable();
    *&v80 = sub_1BA4A7C18();
    *(&v80 + 1) = v31;
    *&v81 = v32;
    *(&v81 + 1) = v33;
    sub_1BA4A7C08();
    swift_getWitnessTable();
    sub_1BA4A6E58();
    v34 = v78;
    if (v78 == 2 || (v55 = v80, v78 = v80, v79 = v81, (sub_1BA4A6E78() & 1) == 0))
    {
      v42 = sub_1BA4A7E68();
      swift_allocError();
      v44 = v43;
      sub_1B9FFFD90(0);
      *v44 = v59;
      sub_1BA4A8128();
      sub_1BA4A7E48();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v77 + 8))(v30, v29);
    }

    else
    {
      if (v34)
      {
        LOBYTE(v78) = 1;
        v35 = v71;
        v36 = v58;
        sub_1BA4A8118();
        v37 = v72;
        if (!v36)
        {
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v39 = v56;
          v40 = v63;
          sub_1BA4A81C8();
          v41 = v77;
          (*(v62 + 8))(v35, v40);
          (*(v41 + 8))(v30, v29);
          swift_unknownObjectRelease();
          (*(*(AssociatedTypeWitness - 8) + 56))(v39, 0, 1, AssociatedTypeWitness);
          v52 = *(v65 + 32);
          v53 = v57;
          v54 = v59;
          v52(v57, v39, v59);
          v52(v37, v53, v54);
LABEL_14:
          v45 = v82;
          return __swift_destroy_boxed_opaque_existential_1(v45);
        }
      }

      else
      {
        LOBYTE(v78) = 0;
        v47 = v66;
        v48 = v58;
        sub_1BA4A8118();
        v49 = v72;
        if (!v48)
        {
          (*(v60 + 8))(v47, v61);
          (*(v77 + 8))(v30, v29);
          swift_unknownObjectRelease();
          v50 = swift_getAssociatedTypeWitness();
          v51 = v57;
          (*(*(v50 - 8) + 56))(v57, 1, 1, v50);
          (*(v65 + 32))(v49, v51, v59);
          goto LABEL_14;
        }
      }

      (*(v77 + 8))(v30, v29);
    }

    swift_unknownObjectRelease();
    a1 = v82;
  }

  v45 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_1B9F42674@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel(0);
  v5 = swift_allocObject();
  result = StandardSnidgetCurrentValueDataView.ViewModel.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1B9F426D0(uint64_t a1, uint64_t a2)
{
  sub_1B9F47BAC(0, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B9F42764(uint64_t a1)
{
  if (!qword_1EDC6AE98)
  {
    sub_1BA4A1168();
    sub_1B9F4D13C(&qword_1EDC6AEE8, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
    v1 = sub_1BA4A14D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6AE98);
    }
  }
}

void sub_1B9F427F8(uint64_t a1)
{
  if (!qword_1EDC5E030)
  {
    sub_1BA4A1278();
    sub_1B9F4D13C(&qword_1EDC6AEC8, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
    v1 = sub_1BA4A7FC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5E030);
    }
  }
}

uint64_t SnidgetTileView.ViewModel.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SnidgetTileView.ViewModel.init(from:)(a1);
  return v2;
}

unint64_t sub_1B9F42954(char a1)
{
  result = 0xD000000000000010;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD000000000000015;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  return result;
}

void sub_1B9F429B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1B9F42A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F42A64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F42AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B9F42AF4()
{
  result = qword_1EDC6CEF0;
  if (!qword_1EDC6CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6CEF0);
  }

  return result;
}

uint64_t sub_1B9F42B48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CellHeaderDetailText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B9F42BAC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F39780(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B9F42C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B9F42C80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1B9F39780(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B9F42CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *SnidgetContentView.ViewModel.init(from:)(void *a1)
{
  v50 = a1;
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = sub_1BA4A7AA8();
  v34 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v6);
  v37 = &v34 - v7;
  v8 = *(v2 + 96);
  v9 = *(v2 + 80);
  v10 = swift_getAssociatedTypeWitness();
  v11 = sub_1BA4A7AA8();
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v45 = &v34 - v13;
  *&v14 = v9;
  *(&v14 + 1) = v4;
  *&v15 = v8;
  *(&v15 + 1) = v3;
  v49[1] = v15;
  v49[0] = v14;
  v16 = *(v2 + 128);
  v41 = *(v2 + 112);
  v49[2] = v41;
  v36 = v16;
  v49[3] = v16;
  type metadata accessor for SnidgetContentView.ViewModel.CodingKeys(255, v49);
  swift_getWitnessTable();
  v47 = sub_1BA4A81E8();
  v40 = *(v47 - 8);
  v18 = MEMORY[0x1EEE9AC00](v47, v17);
  v20 = &v34 - v19;
  v21 = *(*(v10 - 8) + 56);
  v39 = *(v2 + 144);
  v44 = v10;
  v22 = v10;
  v23 = v20;
  v21(&v1[v39], 1, 1, v22, v18);
  v24 = *(*v1 + 152);
  v25 = *(*(AssociatedTypeWitness - 8) + 56);
  v38 = AssociatedTypeWitness;
  v25(&v1[v24], 1, 1, AssociatedTypeWitness);
  sub_1BA4A19D8();
  __swift_project_boxed_opaque_existential_1(v50, v50[3]);
  v46 = v23;
  v26 = v48;
  sub_1BA4A8528();
  if (v26)
  {
  }

  else
  {
    v28 = v39;
    v27 = v40;
    v30 = v42;
    v29 = v43;
    LOBYTE(v49[0]) = 0;
    v31 = v45;
    sub_1BA4A8178();
    swift_beginAccess();
    (*(v30 + 40))(&v1[v28], v31, v29);
    swift_endAccess();
    LOBYTE(v49[0]) = 1;
    v32 = v37;
    sub_1BA4A8178();
    (*(v27 + 8))(v46, v47);
    swift_beginAccess();
    (*(v34 + 40))(&v1[v24], v32, v35);
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  return v1;
}

void sub_1B9F432CC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v10 = 0;
    v11 = *(v8 + 64) + 1;
  }

  if (a3 <= v10)
  {
    goto LABEL_15;
  }

  if (v11 <= 3)
  {
    v12 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v12))
    {
      v7 = 4;
      if (v10 >= a2)
      {
        goto LABEL_25;
      }

      goto LABEL_16;
    }

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
      v7 = v13;
    }

    else
    {
      v7 = 0;
    }

LABEL_15:
    if (v10 >= a2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

  v7 = 1;
  if (v10 >= a2)
  {
LABEL_25:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v11] = 0;
    }

    else if (v7)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_32;
    }

    if (!a2)
    {
      return;
    }

LABEL_32:
    if (v9 >= 2)
    {
      v17 = *(v8 + 56);

      v17(a1, a2 + 1);
    }

    return;
  }

LABEL_16:
  v14 = ~v10 + a2;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v14;
    v15 = 1;
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v15 = (v14 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_39:
    if (v7 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  v16 = v14 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v16;
    a1[2] = BYTE2(v16);
    goto LABEL_39;
  }

  if (v11 == 2)
  {
    *a1 = v16;
    if (v7 > 1)
    {
LABEL_43:
      if (v7 == 2)
      {
        *&a1[v11] = v15;
      }

      else
      {
        *&a1[v11] = v15;
      }

      return;
    }
  }

  else
  {
    *a1 = v14;
    if (v7 > 1)
    {
      goto LABEL_43;
    }
  }

LABEL_40:
  if (v7)
  {
    a1[v11] = v15;
  }
}

uint64_t sub_1B9F4354C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461446F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1BA4A8338() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_1BA4A8338();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1B9F43614(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x617461446F6ELL;
  }
}

_WORD *storeEnumTagSinglePayload for PDFFileNameGenerator(_WORD *result, int a2, int a3)
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

void sub_1B9F436C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B9F4372C();
    v7 = a3(a1, &type metadata for StandardSnidgetCurrentValueDataView.ViewModel.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B9F4372C()
{
  result = qword_1EDC6BAC8;
  if (!qword_1EDC6BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6BAC8);
  }

  return result;
}

void sub_1B9F43830(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = type metadata accessor for DefaultHeaderCollectionReusableView();
  v5 = swift_conformsToProtocol2();
  if (v5 && v4)
  {
    v6 = v5;
    v7 = (*(v5 + 24))(v4, v5);
    v8 = sub_1BA4A6758();
    (*(*(v6 + 16) + 8))(v4);
    v10 = sub_1BA4A6758();

    [v3 registerNib:v7 forSupplementaryViewOfKind:v8 withReuseIdentifier:v10];
  }

  else
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = sub_1BA4A6758();
    v10 = sub_1BA4A6758();
    [v3 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v8 withReuseIdentifier:?];
  }
}

unint64_t sub_1B9F439FC()
{
  result = qword_1EDC5E880;
  if (!qword_1EDC5E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC5E880);
  }

  return result;
}

uint64_t sub_1B9F43A50(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F0CDE8(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B9F43AAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F0CE40(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B9F43B08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F43B68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F0CE9C(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B9F43BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0CF08(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F43C48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0CFD4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F43CA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0D028(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F43D14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0D08C(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F43D84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0D0F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F43DE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F0D144(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B9F43E50(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F0D1B0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F43EAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1BA172450(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F43F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F43F68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F0D260(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B9F43FD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0D31C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F44034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0D370(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F44090(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B9F0D3C4(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B9F44100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1BA2173E8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F44170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F441D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0D484(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F4422C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F4428C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F0D4D8(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F442E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F44348(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F443A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F44408(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F44468(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F0D5FC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F444C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0D658(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F44534(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F0D6BC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F44590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F48104(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F445EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1B9F0D718(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F44648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F0D774(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F446A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B9F664A8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B9F44700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F44760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B9F447C4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EBBF0190;
  return result;
}

uint64_t storeEnumTagSinglePayload for PlatformCellBackgroundColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DiffableCollectionViewAdaptor.__allocating_init(collectionView:backingDataSource:prefetchCellsWhenPerformingReloadData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_1B9F3AFE0(a1, a2, a5, v5, ObjectType, a3, a4);
}

void sub_1B9F44938()
{
  v1 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
  v2 = (v1 + 40);
  v3 = -*(v1 + 16);
  v4 = -1;
  while (v3 + v4 != -1)
  {
    if (++v4 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v5 = v2 + 2;
    v6 = *v2;
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 32);
    swift_unknownObjectRetain();
    LOBYTE(v6) = v8(ObjectType, v6);
    swift_unknownObjectRelease();
    v2 = v5;
    if (v6)
    {
      return;
    }
  }
}

BOOL sub_1B9F44A04(uint64_t a1)
{
  swift_getWitnessTable();

  return DataSourceWrapper.isReorderable()();
}

BOOL sub_1B9F44A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return DataSourceWrapper.isReorderable()();
}

void sub_1B9F44AE4(uint64_t a1)
{
  if (!qword_1EDC5DC60)
  {
    sub_1B9F0D9AC(255, &qword_1EDC63A40, &protocol descriptor for TraitCollectionChangeHandling, 1);
    v1 = sub_1BA4A82E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5DC60);
    }
  }
}

void sub_1B9F44B94(uint64_t a1)
{
  if (!qword_1EDC5F518)
  {
    sub_1B9F44C60(255);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1B9F3DBF4(&qword_1EDC5F6B0, sub_1B9F44C60, MEMORY[0x1E695BD00]);
    sub_1B9F3DC80();
    v1 = sub_1BA4A4CC8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F518);
    }
  }
}

void sub_1B9F44C60(uint64_t a1)
{
  if (!qword_1EDC5F6A8)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1B9F3D93C(255, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
    sub_1B9F3DA8C(255);
    sub_1B9F3DB68(&qword_1EDC5F498, &qword_1EDC5F490, v1, MEMORY[0x1E695BED8]);
    sub_1B9F3DBAC(&qword_1EDC5F690, sub_1B9F3DA8C, MEMORY[0x1E695BD60]);
    v2 = sub_1BA4A4B48();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC5F6A8);
    }
  }
}

uint64_t sub_1B9F44D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v9;
  v10[5] = a1;

  v11 = sub_1BA4A5148();

  return v11;
}

uint64_t sub_1B9F44E40()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F44E78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

void sub_1B9F44EC0(uint64_t a1)
{
  if (!qword_1EDC5F538)
  {
    v1 = MEMORY[0x1E695BED0];
    sub_1B9F3D9AC(255, &qword_1EDC5F490, MEMORY[0x1E695BED0]);
    sub_1B9F0ADF8(255, &qword_1EDC6B5A0, 0x1E69E9610);
    sub_1B9F3E918(&qword_1EDC5F498, &qword_1EDC5F490, v1, MEMORY[0x1E695BED8]);
    sub_1B9F3DC80();
    v2 = sub_1BA4A4CC8();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDC5F538);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B9F44FF8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1B9F3DA1C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B9F4503C(uint64_t a1)
{
  if (!qword_1EDC5F6E8)
  {
    sub_1B9F3ED10(255);
    sub_1B9F3EC74(&qword_1EDC5F550, sub_1B9F3ED10, MEMORY[0x1E695BE88]);
    v1 = sub_1BA4A4AE8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC5F6E8);
    }
  }
}

unint64_t sub_1B9F450D0(uint64_t a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B9F3EE1C(a3, a4);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a2 & 1) == 0)
  {
    if (v18 >= v16 && (a2 & 1) == 0)
    {
      v19 = v11;
      sub_1BA0F28E8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B9F45208(v16, a2 & 1);
    v11 = sub_1B9F3EE1C(a3, a4);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1BA4A83B8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  else
  {

    return sub_1B9F3EFDC(v11, a1, v21, a3, a4);
  }
}

uint64_t sub_1B9F45208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B9F3EEB4(0);
  result = sub_1BA4A8078();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v31 = *(*(v5 + 48) + 16 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_1BA4A8488();
      v21 = *&v31;
      if (*&v31 == 0.0)
      {
        v21 = 0.0;
      }

      MEMORY[0x1BFAF2F00](*&v21);
      v22 = *(&v31 + 1);
      if (*(&v31 + 1) == 0.0)
      {
        v22 = 0.0;
      }

      MEMORY[0x1BFAF2F00](*&v22);
      result = sub_1BA4A84D8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_39;
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

      v3 = v2;
      goto LABEL_37;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v7;
  return result;
}

unint64_t sub_1B9F454BC(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1B9F45534()
{
  result = qword_1EDC63690;
  if (!qword_1EDC63690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC63690);
  }

  return result;
}

uint64_t MeProfilePicturePublisher.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = *(v4 + 2);
  v9 = *(v4 + 3);
  v10 = *(v4 + 4);
  v11 = *(v4 + 5);
  v12 = *(v4 + 6);
  v13 = *(v4 + 7);
  v14 = type metadata accessor for MeProfilePicturePublisher.Inner(0, a2, a3, a4);
  v15 = v12;
  v16 = v13;

  swift_unknownObjectRetain();
  v17 = sub_1B9F3F10C(a1, v8, v9, v10, v11, v12, v16, v6, v7);
  v19[3] = v14;
  v19[4] = swift_getWitnessTable();
  v19[0] = v17;
  sub_1BA4A4CD8();
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

id sub_1B9F456A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v10 = v9;
  v39 = a6;
  v40 = a7;
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v34[1] = a1;
  v13 = MEMORY[0x1E69E7D40];
  v14 = *v9;
  v15 = *MEMORY[0x1E69E7D40];
  v16 = *((*MEMORY[0x1E69E7D40] & v14) + 0x50);
  v17 = *((*MEMORY[0x1E69E7D40] & v14) + 0x58);
  v18 = sub_1BA4A3A68();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = v34 - v21;
  v23 = &v10[*((v15 & v14) + 0x60)];
  v24 = sub_1BA4A1C18();
  swift_allocObject();
  v25 = sub_1BA4A1C08();
  v23[3] = v24;
  v23[4] = sub_1B9F0AE88(&qword_1EDC6AE00, MEMORY[0x1E69A3B50], MEMORY[0x1E69A3B48]);
  *v23 = v25;
  v26 = &v10[*((*v13 & *v10) + 0x88)];
  *v26 = 0;
  *(v26 + 1) = 0;
  sub_1BA4A3A58();
  (*(v19 + 32))(&v10[*((*v13 & *v10) + 0x68)], v22, v18);
  *&v10[*((*v13 & *v10) + 0x70)] = a8;
  *&v10[*((*v13 & *v10) + 0x78)] = a9;
  v27 = &v10[*((*v13 & *v10) + 0x80)];
  v28 = v36;
  *v27 = v35;
  v27[1] = v28;
  v29 = &v10[*((*v13 & *v10) + 0x90)];
  v30 = v38;
  *v29 = v37;
  v29[1] = v30;
  *&v10[*((*v13 & *v10) + 0x98)] = v39;
  *&v10[*((*v13 & *v10) + 0xA0)] = v40;
  v32 = type metadata accessor for MeProfilePicturePublisher.Inner(0, v16, v17, v31);
  v41.receiver = v10;
  v41.super_class = v32;
  return objc_msgSendSuper2(&v41, sel_init);
}

void sub_1B9F45A18()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  v4 = sub_1BA4A6478();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BA4A64C8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + *((v2 & v1) + 0x98));
  if (v15)
  {
    v20[0] = v12;
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = *(v3 + 80);
    v17[3] = *(v3 + 88);
    v17[4] = v16;
    aBlock[4] = sub_1B9F38B94;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    aBlock[3] = &block_descriptor_18;
    v18 = _Block_copy(aBlock);
    v19 = v15;

    sub_1BA4A64A8();
    v20[1] = MEMORY[0x1E69E7CC0];
    sub_1B9F0AE88(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1B9F3F378(0);
    sub_1B9F0AE88(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
    sub_1BA4A7C38();
    MEMORY[0x1BFAF1D50](0, v14, v8, v18);
    _Block_release(v18);

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v14, v20[0]);
  }

  else
  {

    sub_1B9F35AE4();
  }
}

uint64_t sub_1B9F45DA0()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B9F45DD8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B9F45E40(unint64_t a1)
{
  v2 = v1;
  v76 = [v1 layer];
  type metadata accessor for GradientLayer();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    if (a1 >> 62)
    {
      v6 = sub_1BA4A7CC8();
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v6 <= 1)
    {
      if (!v6)
      {
        v18 = &v5[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
        swift_beginAccess();
        *(v18 + 1) = 0u;
        [v5 setNeedsDisplay];
        *(v18 + 2) = 0u;
        [v5 setNeedsDisplay];
        *(v18 + 3) = 0u;
        [v5 setNeedsDisplay];
        *(v18 + 4) = 0u;
        [v5 setNeedsDisplay];
LABEL_70:

        v60 = &v2[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_staticAngle];
        *v60 = 0;
        v60[4] = 1;
        return;
      }

      if (v6 == 1)
      {
        v7 = a1 & 0xC000000000000001;
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1BFAF2860](0, a1);
          goto LABEL_10;
        }

        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v8 = *(a1 + 32);
LABEL_10:
          v9 = v8;
          *&v10 = sub_1B9F410E4();
          v63 = v10;

          v11 = &v5[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
          swift_beginAccess();
          *(v11 + 1) = v63;
          [v5 setNeedsDisplay];
          if (v7)
          {
            v12 = MEMORY[0x1BFAF2860](0, a1);
          }

          else
          {
            v12 = *(a1 + 32);
          }

          v27 = v12;
          *&v28 = sub_1B9F410E4();
          v67 = v28;

          *(v11 + 2) = v67;
          [v5 setNeedsDisplay];
          if (v7)
          {
            v29 = MEMORY[0x1BFAF2860](0, a1);
          }

          else
          {
            v29 = *(a1 + 32);
          }

          v33 = v29;
          *v34.i64 = sub_1B9F410E4();
          v61 = v34;

          __asm { FMOV            V0.4S, #0.25 }

          v69 = _Q0;
          *(v11 + 3) = vmulq_f32(v61, _Q0);
          [v5 setNeedsDisplay];
          if (v7)
          {
            v40 = MEMORY[0x1BFAF2860](0, a1);
          }

          else
          {
            v40 = *(a1 + 32);
          }

          v41 = v40;
          *v42.i64 = sub_1B9F410E4();
          v62 = v42;

          *(v11 + 4) = vmulq_f32(v62, v69);
          [v5 setNeedsDisplay];

          v43 = &v2[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_staticAngle];
          *v43 = 0;
          v43[4] = 0;
          return;
        }

        __break(1u);
        goto LABEL_78;
      }

      goto LABEL_22;
    }

    if (v6 == 2)
    {
      v7 = a1 & 0xC000000000000001;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1BFAF2860](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_79:
          __break(1u);
LABEL_80:
          v23 = MEMORY[0x1BFAF2860](0, a1);
          goto LABEL_33;
        }

        v19 = *(a1 + 32);
      }

      v20 = v19;
      *&v21 = sub_1B9F410E4();
      v65 = v21;

      v16 = &v5[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
      swift_beginAccess();
      *(v16 + 1) = v65;
      [v5 setNeedsDisplay];
      if (v7)
      {
        v22 = MEMORY[0x1BFAF2860](0, a1);
      }

      else
      {
        v22 = *(a1 + 32);
      }

      v44 = v22;
      *&v45 = sub_1B9F410E4();
      v70 = v45;

      *(v16 + 2) = v70;
      [v5 setNeedsDisplay];
      if (v7)
      {
        v46 = MEMORY[0x1BFAF2860](1, a1);
      }

      else
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

        v46 = *(a1 + 40);
      }

      v47 = v46;
      *&v48 = sub_1B9F410E4();
      v71 = v48;

      *(v16 + 3) = v71;
      [v5 setNeedsDisplay];
      if (v7)
      {
        v49 = 1;
LABEL_68:
        v52 = MEMORY[0x1BFAF2860](v49, a1);
        goto LABEL_69;
      }

      v52 = *(a1 + 40);
    }

    else
    {
      if (v6 != 3)
      {
LABEL_22:
        if (v6 < 4)
        {
          goto LABEL_70;
        }

        v7 = a1 & 0xC000000000000001;
        if ((a1 & 0xC000000000000001) != 0)
        {
          goto LABEL_80;
        }

        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v23 = *(a1 + 32);
LABEL_33:
          v24 = v23;
          *&v25 = sub_1B9F410E4();
          v66 = v25;

          v16 = &v5[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
          swift_beginAccess();
          *(v16 + 1) = v66;
          [v5 setNeedsDisplay];
          if (v7)
          {
            v26 = MEMORY[0x1BFAF2860](1, a1);
LABEL_62:
            v53 = v26;
            *&v54 = sub_1B9F410E4();
            v73 = v54;

            *(v16 + 2) = v73;
            [v5 setNeedsDisplay];
            if (v7)
            {
              v55 = MEMORY[0x1BFAF2860](2, a1);
LABEL_66:
              v56 = v55;
              *&v57 = sub_1B9F410E4();
              v74 = v57;

              *(v16 + 3) = v74;
              [v5 setNeedsDisplay];
              if (v7)
              {
                v49 = 3;
                goto LABEL_68;
              }

              if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
              {
                v52 = *(a1 + 56);
                goto LABEL_69;
              }

LABEL_87:
              __break(1u);
              return;
            }

            if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
            {
              v55 = *(a1 + 48);
              goto LABEL_66;
            }

LABEL_86:
            __break(1u);
            goto LABEL_87;
          }

          if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
          {
            v26 = *(a1 + 40);
            goto LABEL_62;
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        __break(1u);
        goto LABEL_82;
      }

      v7 = a1 & 0xC000000000000001;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1BFAF2860](0, a1);
      }

      else
      {
        if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v13 = *(a1 + 32);
      }

      v14 = v13;
      *&v15 = sub_1B9F410E4();
      v64 = v15;

      v16 = &v5[OBJC_IVAR____TtC18HealthExperienceUI13GradientLayer_uniforms];
      swift_beginAccess();
      *(v16 + 1) = v64;
      [v5 setNeedsDisplay];
      if (v7)
      {
        v17 = MEMORY[0x1BFAF2860](1, a1);
      }

      else
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        v17 = *(a1 + 40);
      }

      v30 = v17;
      *&v31 = sub_1B9F410E4();
      v68 = v31;

      *(v16 + 2) = v68;
      [v5 setNeedsDisplay];
      if (v7)
      {
        v32 = MEMORY[0x1BFAF2860](2, a1);
      }

      else
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
        {
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v32 = *(a1 + 48);
      }

      v50 = v32;
      *&v51 = sub_1B9F410E4();
      v72 = v51;

      *(v16 + 3) = v72;
      [v5 setNeedsDisplay];
      if (v7)
      {
        v49 = 2;
        goto LABEL_68;
      }

      v52 = *(a1 + 48);
    }

LABEL_69:
    v58 = v52;
    *&v59 = sub_1B9F410E4();
    v75 = v59;

    *(v16 + 4) = v75;
    [v5 setNeedsDisplay];
    goto LABEL_70;
  }
}

void sub_1B9F46518(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC18HealthExperienceUI27ProfileGradientWithFadeView_fadeView) layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = a1;
  sub_1B9F46608(v5, 0.0, 1.0, 0.1);

  v6 = sub_1BA4A6AE8();

  [v4 setColors_];
}

void *sub_1B9F46608(void *a1, double a2, double a3, double a4)
{
  v8 = sub_1B9F41290(a2, a3, a4);
  v35 = MEMORY[0x1E69E7CC0];
  result = sub_1B9F468EC(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    goto LABEL_32;
  }

  v31 = v4;
  v10 = v35;
  v11 = 0;
  v12 = 0;
  if (!v8)
  {
    v15 = a2;
    goto LABEL_17;
  }

  v13 = a2;
  do
  {
    if (a4 <= 0.0)
    {
      v14 = v13 <= a3;
    }

    else
    {
      v14 = v13 >= a3;
    }

    if (v14)
    {
      if (v11 & 1 | (v13 != a3))
      {
        goto LABEL_30;
      }

      v11 = 1;
      v15 = v13;
    }

    else
    {
      v16 = __OFADD__(v12++, 1);
      if (v16)
      {
        goto LABEL_31;
      }

      v15 = a2 + v12 * a4;
    }

    v17 = fmin(fmax(v13, 0.0), 1.0);
    v18 = [a1 colorWithAlphaComponent_];
    v19 = [v18 CGColor];

    type metadata accessor for CGColor(0);
    v34 = v20;
    *&v33 = v19;
    v35 = v10;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1B9F468EC((v21 > 1), v22 + 1, 1);
      v10 = v35;
    }

    *(v10 + 16) = v22 + 1;
    result = sub_1B9F46920(&v33, (v10 + 32 * v22 + 32));
    v13 = v15;
    --v8;
  }

  while (v8);
LABEL_17:
  while (a4 <= 0.0 ? v15 <= a3 : v15 >= a3)
  {
    if ((v15 != a3) | v11 & 1)
    {
      return v10;
    }

    v11 = 1;
    v24 = v15;
LABEL_25:
    v25 = fmin(fmax(v15, 0.0), 1.0);
    v26 = [a1 colorWithAlphaComponent_];
    v27 = [v26 CGColor];

    type metadata accessor for CGColor(0);
    v34 = v28;
    *&v33 = v27;
    v35 = v10;
    v30 = *(v10 + 16);
    v29 = *(v10 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1B9F468EC((v29 > 1), v30 + 1, 1);
      v10 = v35;
    }

    *(v10 + 16) = v30 + 1;
    result = sub_1B9F46920(&v33, (v10 + 32 * v30 + 32));
    v15 = v24;
  }

  v16 = __OFADD__(v12++, 1);
  if (!v16)
  {
    v24 = a2 + v12 * a4;
    goto LABEL_25;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_1B9F468EC(char *a1, int64_t a2, char a3)
{
  result = sub_1B9F3FAD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

_OWORD *sub_1B9F46920(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1B9F46930(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [a1 traitCollection];
  v7 = sub_1BA4A7368();

  if (v7 != sub_1BA4A7368())
  {
    v8 = [a1 traitCollection];
    v9 = sub_1BA4A7368();

    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x128))(v9);
  }

  v10 = sub_1B9F23FB0();
  (*(*v10 + 256))(a1, a2);

  v11 = [v3 collectionView];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 collectionViewLayout];

    [v13 invalidateLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B9F46AC4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18HealthExperienceUI42CompoundDataSourceCollectionViewController_usesAdaptiveMargins;
  result = swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    return sub_1BA4A7678();
  }

  return result;
}

void sub_1B9F46B24(void *a1, void *a2)
{
  v5 = sub_1BA4A6478();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BA4A64C8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v26 = v13;
    sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
    v25 = sub_1BA4A7308();
    v16 = swift_allocObject();
    v16[2] = v2;
    v16[3] = a1;
    v16[4] = a2;
    v29 = sub_1B9F84D00;
    v30 = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B9F0B040;
    v28 = &block_descriptor_46;
    v17 = _Block_copy(aBlock);
    v18 = a2;

    swift_unknownObjectRetain();

    sub_1BA4A64A8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B9F46F90(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1B9F3F378(0);
    sub_1B9F46F90(&qword_1EDC5E6A0, sub_1B9F3F378, MEMORY[0x1E69E6328]);
    sub_1BA4A7C38();
    v19 = v25;
    MEMORY[0x1BFAF1D50](0, v15, v9, v17);
    _Block_release(v17);

    (*(v6 + 8))(v9, v5);
    (*(v11 + 8))(v15, v26);
  }

  else
  {
    v20 = *(v2 + OBJC_IVAR____TtC18HealthExperienceUI27CompoundSectionedDataSource_managedDataSources);
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = (v20 + 32);
      swift_unknownObjectRetain();
      sub_1B9F0D9AC(0, &qword_1EDC67F10, &protocol descriptor for SnapshotDataSource, 0);
      sub_1B9F0D9AC(0, &qword_1EDC63A40, &protocol descriptor for TraitCollectionChangeHandling, 1);
      do
      {
        v33 = *v22;
        swift_unknownObjectRetain();
        if (swift_dynamicCast())
        {
          sub_1B9F1134C(v31, aBlock);
          v23 = v28;
          v24 = v29;
          __swift_project_boxed_opaque_existential_1(aBlock, v28);
          TraitCollectionChangeHandling.notifyIfChangedTraitsWithinObservedTraits(traitEnvironment:previousTraitCollection:)(a1, 0, v23, v24);
          __swift_destroy_boxed_opaque_existential_1(aBlock);
        }

        else
        {
          v32 = 0;
          memset(v31, 0, sizeof(v31));
          sub_1B9F3B8FC(v31, &qword_1EDC63A30, &qword_1EDC63A40, &protocol descriptor for TraitCollectionChangeHandling);
        }

        ++v22;
        --v21;
      }

      while (v21);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1B9F46F48()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B9F46F90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F46FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B9F47020()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProfileGradientView();
  objc_msgSendSuper2(&v6, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    sub_1B9F470E0();
  }

  v2 = *&v0[OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 window];
    v5 = v4;
    if (v4)
    {
    }

    [v3 setPaused_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1B9F470E0()
{
  if (!UIAccessibilityIsReduceMotionEnabled() && (*(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLinkAdded) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLinkAdded) = 1;
    v1 = OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_delayAnimation;
    swift_beginAccess();
    if (*(v0 + v1) == 1)
    {
      sub_1B9F471D4();
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_lastAnimate) = CACurrentMediaTime();
      v2 = *(v0 + OBJC_IVAR____TtC18HealthExperienceUI19ProfileGradientView_displayLink);
      if (v2)
      {
        v3 = objc_opt_self();
        v4 = v2;
        v5 = [v3 mainRunLoop];
        [v4 addToRunLoop:v5 forMode:*MEMORY[0x1E695DA28]];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1B9F471D4()
{
  v31 = sub_1BA4A6478();
  v34 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v0);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1BA4A64C8();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BA4A6468();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1BA4A64E8();
  v29 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v28 - v19;
  sub_1B9F0ADF8(0, &qword_1EDC6B5A0, 0x1E69E9610);
  v30 = sub_1BA4A7308();
  sub_1BA4A64D8();
  *v11 = 3;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E7F48], v7);
  MEMORY[0x1BFAF0F40](v16, v11);
  (*(v8 + 8))(v11, v7);
  v21 = *(v13 + 8);
  v21(v16, v12);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1BA3626A4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B9F0B040;
  aBlock[3] = &block_descriptor_96;
  v23 = _Block_copy(aBlock);

  sub_1BA4A64A8();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B9F0AFA8(&qword_1EDC5E8E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v24 = MEMORY[0x1E69E7F60];
  sub_1B9F0AA08(0, &qword_1EDC5E6B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B9F0B95C(&qword_1EDC5E6A0, &qword_1EDC5E6B0, v24);
  v25 = v31;
  sub_1BA4A7C38();
  v26 = v30;
  MEMORY[0x1BFAF1CD0](v20, v6, v2, v23);
  _Block_release(v23);

  (*(v34 + 8))(v2, v25);
  (*(v32 + 8))(v6, v33);
  return (v21)(v20, v29);
}

uint64_t sub_1B9F4767C()
{
  MEMORY[0x1BFAF44B0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t PersonalizedFeedTrainer.init(delegate:dwellPolicy:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1B9F47720(a1, a3, v3, ObjectType, a2);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1B9F47720(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *a2;
  v7 = *(a2 + 2);
  v8 = MEMORY[0x1E69E7CC8];
  *(a3 + 16) = MEMORY[0x1E69E7CC8];
  *(a3 + 24) = v8;
  *(a3 + 32) = MEMORY[0x1E69E7CC0];
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 56) = a5;
  swift_unknownObjectWeakAssign();
  *(a3 + 64) = v13;
  *(a3 + 80) = v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  [v10 addObserver:a3 selector:sel_appDidBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];

  v11 = [v9 defaultCenter];
  [v11 addObserver:a3 selector:sel_appDidEnterBackground name:*MEMORY[0x1E69DDAC8] object:0];

  return a3;
}

uint64_t sub_1B9F47854(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 56);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 16))(ObjectType, v3);
    swift_unknownObjectRelease();
    sub_1B9F51E70(v5, a1);
  }

  else
  {
    result = sub_1BA4A8018();
    __break(1u);
  }

  return result;
}

id PersonalizedFeedTrainerDelegate<>.visibleFeedItemsEligibleForTraining()()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = _s18HealthExperienceUI31PersonalizedFeedTrainerDelegatePAAE07visibleE24ItemsEligibleForTraining2inShy0A8Platform0E4ItemCGSo16UICollectionViewC_tF_0(result);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B9F479AC(uint64_t a1)
{
  result = sub_1B9F51360();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B9F479EC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return AssociatedTypeWitness;
}

uint64_t type metadata accessor for StandardSnidgetCurrentValueDataView.ViewModel(uint64_t a1)
{
  result = qword_1EDC6BAA8;
  if (!qword_1EDC6BAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B9F47AA4(uint64_t a1)
{
  sub_1B9F47BAC(319, &unk_1EDC6E290, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BA4A12C8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B9F47BAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F47C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1B9F47C64(uint64_t a1)
{
  if (!qword_1EDC6B6B8)
  {
    type metadata accessor for SnidgetSwiftChartViewModel(255);
    sub_1B9F48334(&qword_1EDC6C438, type metadata accessor for SnidgetSwiftChartViewModel, &protocol conformance descriptor for SnidgetSwiftChartViewModel);
    v1 = sub_1BA4A5378();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B6B8);
    }
  }
}

void sub_1B9F47CF8(uint64_t a1)
{
  sub_1B9F47C64(319);
  if (v1 <= 0x3F)
  {
    sub_1B9F51630(319, &qword_1EDC6C3F8, type metadata accessor for SnidgetSwiftChartViewModel, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9F51694(319, &qword_1EDC6B6C8, MEMORY[0x1E69E6158], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1B9F516E4(319);
        if (v4 <= 0x3F)
        {
          sub_1B9F51630(319, &qword_1EDC6B6D8, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B9F47E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F47ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1B9F47F20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1B9F47F74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F47FD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F4803C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F480A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F48104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1B9F48158(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B9F481BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1B9F48210(uint64_t a1)
{
  sub_1BA4A2B98();
  if (v1 <= 0x3F)
  {
    sub_1B9F47FD8(319, &qword_1EDC6E440, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B9F482E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B9F482E4()
{
  if (!qword_1EDC6B648)
  {
    v0 = sub_1BA4A7AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC6B648);
    }
  }
}

uint64_t sub_1B9F48334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B9F4837C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B9F483B8(uint64_t a1)
{
  result = sub_1B9F48334(&qword_1EDC6CCD0, type metadata accessor for SnidgetSwiftChartView, &protocol conformance descriptor for SnidgetSwiftChartView);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B9F48410(uint64_t a1)
{
  result = sub_1BA4A19E8();
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

uint64_t sub_1B9F484D0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1BA4A7AA8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B9F48634@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BA4A3EA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v101[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v101[-v11];
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v101[-v15];
  v17 = FeedItem.pluginInfo.getter();
  if (!v17)
  {
    sub_1BA1EB328();
    swift_allocError();
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 2;
    return swift_willThrow();
  }

  v106 = v5;
  v107 = v4;
  v110 = v17;
  v18 = sub_1BA4A3AD8();
  [v18 load];

  v19 = sub_1BA4A2718();
  v22 = v20;
  v23 = v21;
  if (v21 == 4)
  {
    v36 = v19;

    v37 = sub_1BA4A6758();
    v38 = NSClassFromString(v37);

    if (!v38 || (ObjCClassMetadata = swift_getObjCClassMetadata(), (v39 = swift_conformsToProtocol2()) == 0) || !ObjCClassMetadata)
    {
      sub_1BA4A3DD8();
      sub_1BA1EB37C(v36, v22, 4u);
      v82 = a1;
      v83 = sub_1BA4A3E88();
      v84 = sub_1BA4A6FA8();
      sub_1B9F244F4(v36, v22, 4u);

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v108[0] = v104;
        *v85 = 136446466;
        *(v85 + 4) = sub_1B9F0B82C(v36, v22, v108);
        *(v85 + 12) = 2080;
        v103 = "secondaryDataSource";
        sub_1B9F2EAC0(0);
        v86 = swift_allocObject();
        v105 = v36;
        v87 = v86;
        *(v86 + 16) = xmmword_1BA4B5460;
        v88 = [v82 uniqueIdentifier];
        v89 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v102 = v84;
        v91 = v90;

        v87[7] = MEMORY[0x1E69E6158];
        v87[8] = sub_1B9F1BE20();
        v87[4] = v89;
        v87[5] = v91;
        v92 = [v82 dateSubmitted];
        v87[12] = sub_1B9F6A2A4();
        v87[13] = sub_1B9F6A24C();
        v87[9] = v92;
        v93 = sub_1BA4A67D8();
        v95 = sub_1B9F0B82C(v93, v94, v108);

        *(v85 + 14) = v95;
        _os_log_impl(&dword_1B9F07000, v83, v102, "Cannot resolve view from class name %{public}s for feedItem %s", v85, 0x16u);
        v96 = v104;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v96, -1, -1);
        MEMORY[0x1BFAF43A0](v85, -1, -1);

        (*(v106 + 8))(v12, v107);
        sub_1BA1EB328();
        swift_allocError();
        v97 = v105;
        *v98 = v105;
        *(v98 + 8) = v22;
        *(v98 + 16) = 0;
        swift_willThrow();
        v41 = v97;
      }

      else
      {

        (*(v106 + 8))(v12, v107);
        sub_1BA1EB328();
        swift_allocError();
        *v100 = v36;
        *(v100 + 8) = v22;
        *(v100 + 16) = 0;
        swift_willThrow();
        v41 = v36;
      }

      v42 = v22;
      v43 = 4;
      goto LABEL_25;
    }

    v29 = v39;
    v30 = v36;
    v31 = v36;
    v32 = v22;
    v33 = 4;
  }

  else
  {
    if (v21 != 3)
    {
      sub_1B9F244F4(v19, v20, v21);
      sub_1BA4A3DD8();
      v44 = a1;
      v45 = sub_1BA4A3E88();
      v46 = sub_1BA4A6FA8();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v108[0] = v104;
        *v47 = 136446210;
        v48 = sub_1BA4A2718();
        v50 = v49;
        v52 = v51;
        v53 = sub_1BA4A1D88();
        v105 = v44;
        v54 = v53;
        v56 = v55;
        sub_1B9F244F4(v48, v50, v52);
        v57 = sub_1B9F0B82C(v54, v56, v108);

        *(v47 + 4) = v57;
        _os_log_impl(&dword_1B9F07000, v45, v46, "%{public}s does not support SwiftUI Views", v47, 0xCu);
        v58 = v104;
        __swift_destroy_boxed_opaque_existential_1(v104);
        MEMORY[0x1BFAF43A0](v58, -1, -1);
        MEMORY[0x1BFAF43A0](v47, -1, -1);
      }

      (*(v106 + 8))(v8, v107);
      v108[0] = sub_1BA4A2718();
      v108[1] = v59;
      v109 = v60;
      v61 = sub_1BA4A6808();
      v63 = v62;
      sub_1BA1EB328();
      swift_allocError();
      *v64 = v61;
      *(v64 + 8) = v63;
      *(v64 + 16) = 1;
      swift_willThrow();
    }

    v24 = v19;

    v25 = sub_1BA4A6758();
    v26 = NSClassFromString(v25);

    if (!v26 || (ObjCClassMetadata = swift_getObjCClassMetadata(), (v28 = swift_conformsToProtocol2()) == 0) || !ObjCClassMetadata)
    {
      sub_1BA4A3DD8();
      sub_1BA1EB37C(v24, v22, 3u);
      v65 = a1;
      v66 = sub_1BA4A3E88();
      v67 = sub_1BA4A6FA8();
      sub_1B9F244F4(v24, v22, 3u);

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v104 = swift_slowAlloc();
        v108[0] = v104;
        *v68 = 136446466;
        *(v68 + 4) = sub_1B9F0B82C(v24, v22, v108);
        *(v68 + 12) = 2080;
        v103 = "secondaryDataSource";
        sub_1B9F2EAC0(0);
        v69 = swift_allocObject();
        v105 = v24;
        v70 = v69;
        *(v69 + 16) = xmmword_1BA4B5460;
        v71 = [v65 uniqueIdentifier];
        v72 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v102 = v67;
        v74 = v73;

        v70[7] = MEMORY[0x1E69E6158];
        v70[8] = sub_1B9F1BE20();
        v70[4] = v72;
        v70[5] = v74;
        v75 = [v65 dateSubmitted];
        v70[12] = sub_1B9F6A2A4();
        v70[13] = sub_1B9F6A24C();
        v70[9] = v75;
        v76 = sub_1BA4A67D8();
        v78 = sub_1B9F0B82C(v76, v77, v108);

        *(v68 + 14) = v78;
        _os_log_impl(&dword_1B9F07000, v66, v102, "Cannot resolve view from class name %{public}s for feedItem %s", v68, 0x16u);
        v79 = v104;
        swift_arrayDestroy();
        MEMORY[0x1BFAF43A0](v79, -1, -1);
        MEMORY[0x1BFAF43A0](v68, -1, -1);

        (*(v106 + 8))(v16, v107);
        sub_1BA1EB328();
        swift_allocError();
        v80 = v105;
        *v81 = v105;
        *(v81 + 8) = v22;
        *(v81 + 16) = 0;
        swift_willThrow();
        v41 = v80;
      }

      else
      {

        (*(v106 + 8))(v16, v107);
        sub_1BA1EB328();
        swift_allocError();
        *v99 = v24;
        *(v99 + 8) = v22;
        *(v99 + 16) = 0;
        swift_willThrow();
        v41 = v24;
      }

      v42 = v22;
      v43 = 3;
      goto LABEL_25;
    }

    v29 = v28;
    v30 = v24;
    v31 = v24;
    v32 = v22;
    v33 = 3;
  }

  sub_1B9F244F4(v31, v32, v33);
  v40 = *(v29 + 16);
  a2[3] = ObjCClassMetadata;
  a2[4] = v29;
  __swift_allocate_boxed_opaque_existential_1(a2);
  v40(ObjCClassMetadata, v29);
  v41 = v30;
  v42 = v22;
  v43 = v23;
LABEL_25:
  sub_1B9F244F4(v41, v42, v43);
}

void *sub_1B9F48FD8@<X0>(uint64_t *a1@<X8>)
{
  result = PlatformConfigurationProvider.__allocating_init()();
  *a1 = result;
  return result;
}

void *PlatformConfigurationProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  v0[2] = (*(*(*v0 + 88) + 32))();
  return v0;
}

uint64_t PlatformCellHostingConfiguration.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t UIPluginInfo.__deallocating_deinit()
{
  v0 = sub_1BA4A3AF8();
  sub_1B9F49114(*(v0 + qword_1EDC6DC48));

  return swift_deallocClassInstance();
}

void sub_1B9F49114(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_1B9F49124(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1BA4A3EA8();
  v86 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v79 - v8;
  v10 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_item;
  swift_beginAccess();
  sub_1B9F374E8(v2 + v10, v94, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
  if (v95)
  {
    sub_1B9F0D950(0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    sub_1BA4A27B8();
    if (swift_dynamicCast())
    {
      v85 = v4;
      v11 = v91;
      v12 = [v91 userData];
      if (v12)
      {
        v81 = a1;
        v13 = v12;
        v83 = sub_1BA4A1608();
        v82 = v14;

        v15 = [v11 baseAutomationIdentifier];
        v84 = v11;
        if (v15)
        {
          v16 = v15;
          v17 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
          v19 = v18;

          sub_1B9F23348(0, &qword_1EDC6E330, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1BA4B5480;
          *(v20 + 32) = v17;
          *(v20 + 40) = v19;
          v21 = sub_1BA4A6AE8();

          v22 = HKUIJoinStringsForAutomationIdentifier();

          if (v22)
          {
            v23 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v25 = v24;
          }

          else
          {
            v23 = 0;
            v25 = 0;
          }

          sub_1B9F641A0(v23, v25);
          v11 = v84;
        }

        sub_1B9F48634(v11, v94);
        v46 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_configurationProvider;
        swift_beginAccess();
        sub_1B9F4A184(v94, v2 + v46, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider);
        swift_endAccess();
        v47 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_currentViewModel;
        swift_beginAccess();
        v79 = v47;
        sub_1B9F374E8(v2 + v47, v94, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
        v80 = v46;
        sub_1B9F374E8(v2 + v46, v90, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider);
        if (v90[3])
        {
          sub_1B9F0A534(v90, v87);
          sub_1B9F4A1F4(v90, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider, sub_1B9F0CDE8);
          v48 = v88;
          v49 = v89;
          __swift_project_boxed_opaque_existential_1(v87, v88);
          (*(v49 + 32))(&v91, v83, v82, v48, v49);
          __swift_destroy_boxed_opaque_existential_1(v87);
        }

        else
        {
          sub_1B9F4A1F4(v90, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider, sub_1B9F0CDE8);
          v91 = 0u;
          v92 = 0u;
          v93 = 0;
        }

        v50 = v84;
        v51 = v79;
        swift_beginAccess();
        sub_1B9F4A184(&v91, v2 + v51, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
        swift_endAccess();
        sub_1B9F374E8(v81, &v91, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
        if (*(&v92 + 1))
        {
          if (swift_dynamicCast())
          {
            v52 = v90[0];
            v53 = [v90[0] uniqueIdentifier];

            v54 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
            v56 = v55;

            goto LABEL_26;
          }
        }

        else
        {
          sub_1B9F4A1F4(&v91, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
        }

        v54 = 0;
        v56 = 0;
LABEL_26:
        v57 = [v50 uniqueIdentifier];
        v58 = _sSo19HKFeatureIdentifiera18HealthExperienceUIE2idSSvg_0();
        v60 = v59;

        if (v56)
        {
          if (v58 == v54 && v56 == v60)
          {

LABEL_32:
            sub_1B9F374E8(v94, &v91, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
            v62 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_previousViewModel;
            swift_beginAccess();
            v63 = v2 + v62;
LABEL_34:
            sub_1B9F4A184(&v91, v63, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel);
            swift_endAccess();
            sub_1B9F374E8(v2 + v80, &v91, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider);
            v65 = *(&v92 + 1);
            if (*(&v92 + 1))
            {
              v66 = v93;
              v67 = __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
              v68 = *(v65 - 8);
              v69 = MEMORY[0x1EEE9AC00](v67, v67);
              v71 = &v79 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v68 + 16))(v71, v69);
              sub_1B9F4A1F4(&v91, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider, sub_1B9F0CDE8);
              v72 = (*(v66 + 8))(v65, v66);
              (*(v68 + 8))(v71, v65);
              if (*(v72 + 16))
              {
                MEMORY[0x1BFAF2130](v72, sel_setNeedsUpdateConfiguration);

                swift_unknownObjectRelease();
              }

              else
              {
              }
            }

            else
            {
              sub_1B9F4A1F4(&v91, &qword_1EDC66650, &qword_1EDC66658, &protocol descriptor for AnyConfigurationProvider, sub_1B9F0CDE8);
            }

            v74 = sub_1B9F7C5E4(&v91);
            v75 = *(v73 + 24);
            if (v75)
            {
              v76 = *(v73 + 32);
              __swift_mutable_project_boxed_opaque_existential_1(v73, *(v73 + 24));
              v77 = *(v76 + 80);
              v78 = swift_unknownObjectRetain();
              v77(v78, &protocol witness table for ContentConfigurationHostCell, v75, v76);
            }

            (v74)(&v91, 0);
            sub_1B9F4A1F4(v94, &qword_1EDC68F40, &qword_1EDC68F50, &protocol descriptor for PluginViewModel, sub_1B9F0CDE8);
            [v2 setNeedsUpdateConfiguration];
            sub_1B9F2BB4C(v83, v82);

            return;
          }

          v61 = sub_1BA4A8338();

          if (v61)
          {
            goto LABEL_32;
          }
        }

        else
        {
        }

        v93 = 0;
        v91 = 0u;
        v92 = 0u;
        v64 = OBJC_IVAR____TtC18HealthExperienceUI28ContentConfigurationHostCell_previousViewModel;
        swift_beginAccess();
        v63 = v2 + v64;
        goto LABEL_34;
      }

      v4 = v85;
    }
  }

  else
  {
    sub_1B9F4A1F4(v94, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
  }

  sub_1BA4A3E28();
  v26 = v2;
  v27 = sub_1BA4A3E88();
  v28 = sub_1BA4A6FB8();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v91 = v30;
    *v29 = 136315394;
    v31 = sub_1BA4A85D8();
    v33 = sub_1B9F0B82C(v31, v32, &v91);

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    sub_1B9F374E8(v2 + v10, v94, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348]);
    v34 = v95;
    if (v95)
    {
      v35 = __swift_project_boxed_opaque_existential_1(v94, v95);
      v84 = &v79;
      v36 = *(v34 - 8);
      v37 = MEMORY[0x1EEE9AC00](v35, v35);
      v85 = v30;
      v39 = v4;
      v40 = &v79 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v36 + 16))(v40, v37);
      sub_1B9F4A1F4(v94, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
      v41 = sub_1BA4A2D58();
      v43 = v42;
      v44 = v40;
      v4 = v39;
      v30 = v85;
      (*(v36 + 8))(v44, v34);
    }

    else
    {
      v41 = 0x6E776F6E6B6E55;
      sub_1B9F4A1F4(v94, &qword_1EDC6E1A0, &qword_1EDC6E1B0, MEMORY[0x1E69A3348], sub_1B9F0CDE8);
      v43 = 0xE700000000000000;
    }

    v45 = sub_1B9F0B82C(v41, v43, &v91);

    *(v29 + 14) = v45;
    _os_log_impl(&dword_1B9F07000, v27, v28, "[%s]: Failed to update hosting content for feed item: %s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFAF43A0](v30, -1, -1);
    MEMORY[0x1BFAF43A0](v29, -1, -1);
  }

  (*(v86 + 8))(v9, v4);
}

uint64_t sub_1B9F4A184(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1B9F0CDE8(0, a3, a4, a5);
  (*(*(v7 - 8) + 40))(a2, a1, v7);
  return a2;
}

uint64_t sub_1B9F4A1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B9F4A278@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 8);
  a3[3] = AssociatedTypeWitness;
  a3[4] = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1B9F206D4(a1, a2);
  result = v9(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a3);
  }

  return result;
}

char *SnidgetTileView.ViewModel.init(from:)(void *a1)
{
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 104);
  v7 = *(*v1 + 112);
  v8 = *(*v1 + 120);
  v9 = *(*v1 + 128);
  v10 = *(*v1 + 136);
  v29 = *(*v1 + 88);
  v30 = v4;
  v36 = v4;
  v37 = v29;
  v28 = v5;
  v38 = v5;
  v39 = v6;
  v34 = v7;
  v35 = v6;
  v40 = v7;
  v41 = v8;
  v32 = v9;
  v33 = v8;
  v42 = v9;
  v43 = v10;
  v31 = v10;
  type metadata accessor for SnidgetTileView.ViewModel.CodingKeys(255, &v36);
  swift_getWitnessTable();
  v25 = sub_1BA4A81E8();
  v11 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v12);
  v14 = &v23 - v13;
  v26 = qword_1EDC6DA40;
  sub_1BA4A19D8();
  v15 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1BA4A8528();
  if (v2)
  {
    v18 = v29;
    v17 = v30;
    v19 = v28;
    v20 = sub_1BA4A19E8();
    (*(*(v20 - 8) + 8))(&v1[v26], v20);
    v36 = v17;
    v37 = v18;
    v38 = v19;
    v39 = v35;
    v40 = v34;
    v41 = v33;
    v42 = v32;
    v43 = v31;
    type metadata accessor for SnidgetTileView.ViewModel(0, &v36);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v11;
    type metadata accessor for DisclosureCellHeaderView.ViewModel(0);
    LOBYTE(v44) = 0;
    sub_1B9F4A8E0(&qword_1EDC663B8, type metadata accessor for DisclosureCellHeaderView.ViewModel, &protocol conformance descriptor for CellHeaderViewModel);
    v16 = v25;
    sub_1BA4A81C8();
    v22 = v35;
    *(v1 + 2) = v36;
    v36 = v30;
    v37 = v29;
    v38 = v28;
    v39 = v22;
    v40 = v34;
    v41 = v33;
    v42 = v32;
    v43 = v31;
    type metadata accessor for SnidgetContentView.ViewModel(0, &v36);
    LOBYTE(v36) = 1;
    swift_getWitnessTable();
    sub_1BA4A81C8();
    (*(v24 + 8))(v14, v16);
    *(v1 + 3) = v44;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v1;
}

void sub_1B9F4A814(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B9F4A864(uint64_t a1)
{
  if (!qword_1EDC6B6F8)
  {
    sub_1B9F4A814(255, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    v1 = sub_1BA4A4F58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC6B6F8);
    }
  }
}

uint64_t sub_1B9F4A8E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *CellHeaderViewModel.init(from:)(void *a1)
{
  v2 = v1;
  sub_1B9F39780(0, &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v47 = v45 - v6;
  sub_1B9F39780(0, qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v46 = v45 - v9;
  sub_1B9F429B0(0, &qword_1EDC6B468, sub_1B9F4B08C, &type metadata for CellHeaderViewModel.CodingKeys, MEMORY[0x1E69E6F48]);
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v45 - v12;
  sub_1B9F4A864(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 4) = 0;
  v45[1] = v2 + 32;
  *(v2 + 5) = 0;
  v20 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_detailText;
  v21 = type metadata accessor for CellHeaderDetailText(0);
  v22 = *(*(v21 - 8) + 56);
  v57 = v20;
  v22(&v2[v20], 1, 1, v21);
  v23 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_foregroundColor;
  v24 = sub_1BA4A2B98();
  v25 = *(*(v24 - 8) + 56);
  v56 = v23;
  v25(&v2[v23], 1, 1, v24);
  v26 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel__detailTextString;
  sub_1B9F4A814(0, &qword_1EDC6E410, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v60 = 0;
  v61 = 0;
  sub_1BA4A4EE8();
  v52 = v26;
  v53 = v16;
  v27 = *(v16 + 32);
  v54 = v15;
  v27(&v2[v26], v19, v15);
  v51 = OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable;
  *&v2[OBJC_IVAR____TtC18HealthExperienceUI19CellHeaderViewModel_cancellable] = 0;
  v28 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1B9F4B08C();
  v50 = v13;
  v29 = v55;
  sub_1BA4A8528();
  if (v29)
  {
    v34 = v56;
    v33 = v57;

    sub_1B9F4C1D4(&v2[v33], qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
    sub_1B9F4C1D4(&v2[v34], &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
    (*(v53 + 8))(&v2[v52], v54);

    type metadata accessor for CellHeaderViewModel(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v30 = v46;
    v55 = v24;
    v31 = v47;
    LOBYTE(v60) = 0;
    v32 = v49;
    *(v2 + 2) = sub_1BA4A8188();
    *(v2 + 3) = v36;
    LOBYTE(v60) = 1;
    v37 = sub_1BA4A8138();
    v39 = v38;
    swift_beginAccess();
    *(v2 + 4) = v37;
    *(v2 + 5) = v39;

    v59 = 2;
    sub_1B9F42A64(&qword_1EDC6CEE0, type metadata accessor for CellHeaderDetailText, &protocol conformance descriptor for CellHeaderDetailText);
    v40 = v50;
    sub_1BA4A8178();
    v41 = v57;
    swift_beginAccess();
    sub_1B9F42BAC(v30, &v2[v41], qword_1EDC6CEA0, type metadata accessor for CellHeaderDetailText);
    swift_endAccess();
    v59 = 3;
    sub_1B9F42A64(&qword_1EDC6E1D8, MEMORY[0x1E69A3260], MEMORY[0x1E69A3270]);
    sub_1BA4A8178();
    v42 = v48;
    v43 = v56;
    swift_beginAccess();
    sub_1B9F42BAC(v31, &v2[v43], &qword_1EDC6E1D0, MEMORY[0x1E69A3260]);
    swift_endAccess();
    v59 = 4;
    v44 = sub_1BA4A81B8();
    swift_beginAccess();
    v62 = v44;
    sub_1BA4A4EE8();
    swift_endAccess();
    sub_1B9F418E4();
    (*(v42 + 8))(v40, v32);
  }

  __swift_destroy_boxed_opaque_existential_1(v58);
  return v2;
}

unint64_t sub_1B9F4B08C()
{
  result = qword_1EDC6D6E0[0];
  if (!qword_1EDC6D6E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC6D6E0);
  }

  return result;
}

unint64_t sub_1B9F4B0E4()
{
  result = qword_1EDC6D6D0;
  if (!qword_1EDC6D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D6D0);
  }

  return result;
}

unint64_t sub_1B9F4B138()
{
  result = qword_1EDC6D6D8;
  if (!qword_1EDC6D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC6D6D8);
  }

  return result;
}

uint64_t sub_1B9F4B18C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x6C6961746564;
  v4 = 0x756F726765726F66;
  if (v1 != 3)
  {
    v4 = 0x696C696269736976;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D614E6567616D69;
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

uint64_t storeEnumTagSinglePayload for DataLoggingPluginViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t CellHeaderDetailText.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1B9F429B0(0, &qword_1EDC5DF00, sub_1B9F39968, &type metadata for CellHeaderDetailText.TextCodingKeys, MEMORY[0x1E69E6F48]);
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v66 = &v57 - v7;
  sub_1B9F429B0(0, &qword_1EDC5DEF0, sub_1B9F4BB00, &type metadata for CellHeaderDetailText.DateCodingKeys, v3);
  v61 = v8;
  v64 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v65 = &v57 - v10;
  sub_1B9F429B0(0, &qword_1EDC5DEF8, sub_1B9F41748, &type metadata for CellHeaderDetailText.CodingKeys, v3);
  v12 = v11;
  v68 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for CellHeaderDetailText(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v57 - v26;
  v28 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_1B9F41748();
  v29 = v69;
  sub_1BA4A8528();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  v59 = v19;
  v60 = v23;
  v30 = v65;
  v31 = v66;
  v69 = v16;
  v32 = v67;
  v33 = sub_1BA4A81D8();
  v34 = (2 * *(v33 + 16)) | 1;
  v71 = v33;
  v72 = v33 + 32;
  v73 = 0;
  v74 = v34;
  v35 = sub_1B9F4BD44();
  v36 = v12;
  if (v35 == 2 || v73 != v74 >> 1)
  {
    v41 = sub_1BA4A7E68();
    swift_allocError();
    v43 = v42;
    sub_1B9FFFD90(0);
    *v43 = v69;
    sub_1BA4A8128();
    sub_1BA4A7E48();
    (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
    swift_willThrow();
    (*(v68 + 8))(v15, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v70);
  }

  if (v35)
  {
    v75 = 1;
    sub_1B9F39968();
    sub_1BA4A8118();
    v37 = v32;
    v38 = v31;
    v39 = v62;
    v40 = sub_1BA4A8188();
    v58 = 0;
    v48 = v40;
    v50 = v49;
    (*(v63 + 8))(v38, v39);
    (*(v68 + 8))(v15, v36);
    swift_unknownObjectRelease();
    v51 = v59;
    *v59 = v48;
    *(v51 + 8) = v50;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v75 = 0;
    sub_1B9F4BB00();
    sub_1BA4A8118();
    v66 = v12;
    sub_1BA4A1728();
    v75 = 0;
    sub_1B9F42A64(&qword_1EDC6AE70, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v45 = v61;
    v46 = v30;
    sub_1BA4A81C8();
    v47 = v68;
    v75 = 1;
    v52 = sub_1BA4A8198();
    v58 = 0;
    v53 = v64;
    v54 = v52;
    sub_1B9F416DC(0);
    v56 = *(v55 + 48);
    (*(v53 + 8))(v46, v45);
    (*(v47 + 8))(v15, v66);
    swift_unknownObjectRelease();
    v51 = v60;
    v60[v56] = v54 & 1;
    swift_storeEnumTagMultiPayload();
    v37 = v32;
  }

  sub_1B9F42B48(v51, v27);
  sub_1B9F42B48(v27, v37);
  return __swift_destroy_boxed_opaque_existential_1(v70);
}