uint64_t sub_1D8F0FDB0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5;
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v26 = sub_1D917820C();
  *(&v26 + 1) = v11;
  v12 = [a1 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  if (!*(&v27 + 1))
  {
    goto LABEL_14;
  }

  if (swift_dynamicCast())
  {
    v24[1] = v25;
    *&v26 = sub_1D917820C();
    *(&v26 + 1) = v13;
    v14 = [a1 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v14)
    {
      sub_1D917928C();
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0u;
      v27 = 0u;
    }

    v28 = v26;
    v29 = v27;
    if (*(&v27 + 1))
    {
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_16;
      }

      v15 = v25;
      sub_1D9176BFC();

      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        v21 = *(v8 + 32);
        v21(v10, v6, v7);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
        v23 = *(v22 + 48);
        *a2 = v15;
        v21(&a2[v23], v10, v7);
        return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
      }

      v16 = &unk_1ECAB5910;
      v17 = &qword_1D9188C90;
      v18 = v6;
      goto LABEL_15;
    }

LABEL_14:
    v16 = &qword_1ECAB57F0;
    v17 = &unk_1D9190AA0;
    v18 = &v28;
LABEL_15:
    sub_1D8D08A50(v18, v16, v17);
  }

LABEL_16:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
}

void sub_1D8F1016C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v33 = a2;
  v35[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_fileManager + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_fileManager), *(v2 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_fileManager + 24));
  v9 = sub_1D9176BCC();
  v10 = (*(v8 + 32))(v9);

  if ((v10 & 1) == 0)
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD0F20);
    (*(v5 + 16))(v7, a1, v4);
    v23 = sub_1D917741C();
    v24 = sub_1D9178CFC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[0] = v26;
      *v25 = 136315138;
      sub_1D8D11A14(&qword_1ECAB2C88, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v27 = sub_1D9179A4C();
      v29 = v28;
      (*(v5 + 8))(v7, v4);
      v30 = sub_1D8CFA924(v27, v29, v35);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1D8CEC000, v23, v24, "Episode record references non-existing file: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1DA72CB90](v26, -1, -1);
      MEMORY[0x1DA72CB90](v25, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    goto LABEL_13;
  }

  v11 = [objc_opt_self() defaultManager];
  sub_1D9176BCC();
  v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v35[0] = 0;
  v13 = [v11 attributesOfItemAtPath:v12 error:v35];

  v14 = v35[0];
  if (v13)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1D8D11A14(&qword_1ECAAFD58, type metadata accessor for FileAttributeKey, &unk_1D91881F4);
    v15 = sub_1D917805C();
    v16 = v14;

    if (*(v15 + 16) && (v17 = sub_1D8F06900(*MEMORY[0x1E696A3B8]), (v18 & 1) != 0))
    {
      sub_1D8CFAD1C(*(v15 + 56) + 32 * v17, v35);

      sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v19 = v34;
        v20 = [v34 unsignedLongLongValue];

        v21 = 0;
LABEL_14:
        v31 = v33;
        *v33 = v20;
        *(v31 + 8) = v21;
        return;
      }
    }

    else
    {
    }

LABEL_13:
    v20 = 0;
    v21 = 1;
    goto LABEL_14;
  }

  v32 = v35[0];
  sub_1D9176A6C();

  swift_willThrow();
}

uint64_t MediaSpaceCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator__mediaDistribution;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69D8, &unk_1D91BCBC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_mediaPath;
  v4 = sub_1D9176C2C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_fileManager));

  return v0;
}

uint64_t MediaSpaceCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator__mediaDistribution;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69D8, &unk_1D91BCBC0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_mediaPath;
  v4 = sub_1D9176C2C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC18PodcastsFoundation20MediaSpaceCalculator_fileManager));

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F1084C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MediaSpaceCalculator(0);
  result = sub_1D917788C();
  *a2 = result;
  return result;
}

id MediaSpaceCalculator.MediaSpaceDistribution.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD00000000000003FLL, 0x80000001D91CCDC0);
  v6 = objc_opt_self();
  result = [v6 stringWithBytesize_];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  v9 = sub_1D917820C();
  v11 = v10;

  MEMORY[0x1DA7298F0](v9, v11);

  MEMORY[0x1DA7298F0](0xD00000000000001ELL, 0x80000001D91CCE00);
  result = [v6 stringWithBytesize_];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = result;
  v13 = sub_1D917820C();
  v15 = v14;

  MEMORY[0x1DA7298F0](v13, v15);

  MEMORY[0x1DA7298F0](0xD000000000000015, 0x80000001D91CCE20);
  result = [v6 stringWithBytesize_];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = result;
  v17 = sub_1D917820C();
  v19 = v18;

  MEMORY[0x1DA7298F0](v17, v19);

  MEMORY[0x1DA7298F0](0xD000000000000018, 0x80000001D91CCE40);
  result = [v6 stringWithBytesize_];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v20 = result;
  v21 = sub_1D917820C();
  v23 = v22;

  MEMORY[0x1DA7298F0](v21, v23);

  MEMORY[0x1DA7298F0](0xD00000000000001ALL, 0x80000001D91CCE60);
  result = [v6 stringWithBytesize_];
  if (result)
  {
    v24 = result;
    v25 = sub_1D917820C();
    v27 = v26;

    MEMORY[0x1DA7298F0](v25, v27);

    MEMORY[0x1DA7298F0](32010, 0xE200000000000000);
    return 0;
  }

LABEL_11:
  __break(1u);
  return result;
}

unint64_t sub_1D8F10B70()
{
  v1 = *v0;
  v2 = 0x7053656D756C6F76;
  v3 = 0x6573556C61746F74;
  v4 = 0xD000000000000013;
  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000017;
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

uint64_t sub_1D8F10C24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8F12264(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8F10C4C(uint64_t a1)
{
  v2 = sub_1D8F114B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8F10C88(uint64_t a1)
{
  v2 = sub_1D8F114B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MediaSpaceCalculator.MediaSpaceDistribution.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A18, &qword_1D9194338);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v18 = v1[2];
  v19 = v8;
  v16 = v1[4];
  v17 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F114B0();
  sub_1D9179F1C();
  v21 = v9;
  v20 = 0;
  sub_1D8F11504();
  sub_1D91799FC();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = v17;
  v11 = v18;
  v13 = v16;
  v21 = v19;
  v20 = 1;
  sub_1D91799FC();
  v21 = v11;
  v20 = 2;
  sub_1D91799FC();
  v21 = v12;
  v20 = 3;
  sub_1D91799FC();
  v21 = v13;
  v20 = 4;
  sub_1D91799FC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t MediaSpaceCalculator.MediaSpaceDistribution.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A30, &qword_1D9194340);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8F114B0();
  sub_1D9179EEC();
  if (!v2)
  {
    v19 = 0;
    sub_1D8F11558();
    sub_1D91798FC();
    v9 = v20;
    v19 = 1;
    sub_1D91798FC();
    v18 = v9;
    v10 = v20;
    v19 = 2;
    sub_1D91798FC();
    v17 = v10;
    v11 = v20;
    v19 = 3;
    sub_1D91798FC();
    v16 = v20;
    v19 = 4;
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    v13 = v20;
    v14 = v17;
    *a2 = v18;
    a2[1] = v14;
    v15 = v16;
    a2[2] = v11;
    a2[3] = v15;
    a2[4] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MediaSpaceCalculator.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A40, &qword_1D9194348);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A48, &qword_1D9194350);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB69D8, &unk_1D91BCBC0);
  sub_1D9177AAC();
  swift_endAccess();
  v9 = sub_1D8CF48EC(&qword_1ECAB01F8, &qword_1ECAB6A48, &qword_1D9194350, MEMORY[0x1E695C068]);
  MEMORY[0x1DA729380](v5, v9);
  (*(v6 + 8))(v8, v5);
  sub_1D917787C();
  return (*(v2 + 8))(v4, v1);
}

BOOL sub_1D8F11408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v5 = sub_1D9179DAC();
  v6 = -1 << *(a3 + 32);
  v7 = v5 & ~v6;
  if (((*(a3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a3 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

unint64_t sub_1D8F114B0()
{
  result = qword_1ECAB6A20;
  if (!qword_1ECAB6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6A20);
  }

  return result;
}

unint64_t sub_1D8F11504()
{
  result = qword_1ECAB6A28;
  if (!qword_1ECAB6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6A28);
  }

  return result;
}

unint64_t sub_1D8F11558()
{
  result = qword_1ECAB6A38;
  if (!qword_1ECAB6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6A38);
  }

  return result;
}

unint64_t sub_1D8F11634()
{
  result = qword_1ECAB6A58;
  if (!qword_1ECAB6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6A58);
  }

  return result;
}

unint64_t sub_1D8F1168C()
{
  result = qword_1ECAB6A60;
  if (!qword_1ECAB6A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6A60);
  }

  return result;
}

unint64_t sub_1D8F116E4()
{
  result = qword_1ECAB6A68;
  if (!qword_1ECAB6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6A68);
  }

  return result;
}

void *sub_1D8F11738(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1D8F11FA4(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1D8F117C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC0, &unk_1D9194690);
  result = sub_1D91797AC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = sub_1D9179DAC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D8F119C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB6AD0, &qword_1D91946A8);
  result = sub_1D91797AC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = (v17 + 40 * v16);
    v34 = v19[1];
    v35 = *v19;
    v20 = v19[3];
    v32 = v19[4];
    v33 = v19[2];
    sub_1D9179DBC();
    MEMORY[0x1DA72B3C0](v18);
    result = sub_1D9179E1C();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v18;
    v29 = (*(v9 + 56) + 40 * v24);
    result = v35;
    *v29 = v35;
    v29[1] = v34;
    v29[2] = v33;
    v29[3] = v20;
    v29[4] = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    result = sub_1D8D1C3BC(v35, v34, v33);
    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D8F11C20(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC8, &qword_1D91946A0);
  result = sub_1D91797AC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v27 = *(*(v4 + 56) + v16);
    sub_1D9179DBC();
    MEMORY[0x1DA72B3C0](v17);
    result = sub_1D9179E1C();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    *(*(v9 + 56) + v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_1D8F11E40()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v1 = [objc_opt_self() predicateForDownloaded:1 excludeHidden:0];
  [v0 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9189060;
  v3 = sub_1D917820C();
  v4 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v6 = sub_1D917820C();
  *(v2 + 88) = v4;
  *(v2 + 64) = v6;
  *(v2 + 72) = v7;
  v8 = sub_1D917820C();
  *(v2 + 120) = v4;
  *(v2 + 96) = v8;
  *(v2 + 104) = v9;
  v10 = sub_1D91785DC();

  [v0 setPropertiesToFetch_];

  [v0 setResultType_];
  return v0;
}

uint64_t sub_1D8F11FA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t *))
{
  v20 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(*(a3 + 48) + 8 * v16);
    v21 = *(*(a3 + 56) + 8 * v16);
    result = a4(v17, &v21);
    if (result)
    {
      *(v20 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_1D8F117C8(v20, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_1D8F117C8(v20, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D8F120E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t *))
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1D8F11FA4(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1D8F11738(v10, v6, v4, a2);
  result = MEMORY[0x1DA72CB90](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1D8F12264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7053656D756C6F76 && a2 == 0xEB00000000656361;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D91CCF10 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573556C61746F74 && a2 == 0xEE00656361705364 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91CCF30 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91CCF50 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

uint64_t sub_1D8F1242C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8F1249C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8F1254C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SettingTransition.init(originValue:newValue:transitionTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(*(a4 - 8) + 32);
  v13(a7, a1, a4);
  v14 = type metadata accessor for SettingTransition(0, a4, a5, a6);
  v13(a7 + *(v14 + 44), a2, a4);
  v15 = *(v14 + 48);
  v16 = sub_1D9176E3C();
  v17 = *(*(v16 - 8) + 32);

  return v17(a7 + v15, a3, v16);
}

uint64_t SettingTransition.transitionTime.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1D9176E3C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D8F127A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61566E696769726FLL && a2 == 0xEB0000000065756CLL;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C615677656ELL && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697469736E617274 && a2 == 0xEE00656D69546E6FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D9179ACC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t _s18PodcastsFoundation26PlayButtonTimeFormatHelperV030WidgetCountDownSizeRestrictingG0O9hashValueSivg_0(unsigned __int8 a1)
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](a1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F1294C(char a1)
{
  if (!a1)
  {
    return 0x61566E696769726FLL;
  }

  if (a1 == 1)
  {
    return 0x65756C615677656ELL;
  }

  return 0x697469736E617274;
}

uint64_t sub_1D8F129F0(uint64_t a1)
{
  sub_1D9179DBC();
  sub_1D8F128DC(v3, *v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8F12A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D8F127A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D8F12A80@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D8F139AC();
  *a2 = result;
  return result;
}

uint64_t sub_1D8F12AB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D8F12B08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t SettingTransition.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v11[0] = a2;
  v11[1] = v4;
  type metadata accessor for SettingTransition.CodingKeys(255, v4, v3, a2[4]);
  swift_getWitnessTable();
  v5 = sub_1D9179A1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F1C();
  v14 = 0;
  v9 = v11[3];
  sub_1D91799FC();
  if (!v9)
  {
    v13 = 1;
    sub_1D91799FC();
    v12 = 2;
    sub_1D9176E3C();
    sub_1D8F132BC(&qword_1ECAB2C80, MEMORY[0x1E6969538]);
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SettingTransition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v38 = sub_1D9176E3C();
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v40 = &v32 - v13;
  type metadata accessor for SettingTransition.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v46 = sub_1D917992C();
  v42 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v15 = &v32 - v14;
  v41 = a2;
  v43 = a3;
  v16 = type metadata accessor for SettingTransition(0, a2, a3, a4);
  v34 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v45 = v15;
  v19 = v47;
  sub_1D9179EEC();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v32 = v16;
  v33 = v18;
  v20 = v44;
  v47 = a1;
  v50 = 0;
  v21 = v39;
  v22 = v40;
  v23 = v41;
  sub_1D91798FC();
  v24 = *(v20 + 32);
  v24(v33, v22, v23);
  v49 = 1;
  sub_1D91798FC();
  v24(&v33[*(v32 + 44)], v21, v23);
  v48 = 2;
  sub_1D8F132BC(&unk_1EDCD7610, MEMORY[0x1E6969558]);
  v26 = v37;
  v25 = v38;
  v27 = v45;
  sub_1D91798FC();
  (*(v42 + 8))(v27, v46);
  v29 = v32;
  v28 = v33;
  (*(v35 + 32))(&v33[*(v32 + 48)], v26, v25);
  v30 = v34;
  (*(v34 + 16))(v36, v28, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  return (*(v30 + 8))(v28, v29);
}

uint64_t sub_1D8F132BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D9176E3C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8F1333C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1D9176E3C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D8F133C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1D9176E3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v6 + 80);
  v13 = *(v9 + 80);
  if (v10 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v11 + v12;
  if (a2 <= v14)
  {
    goto LABEL_28;
  }

  v16 = ((v11 + v13 + (v15 & ~v12)) & ~v13) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v19 < 2)
    {
LABEL_27:
      if (v14)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v25 = *(v6 + 48);

          return v25(a1, v7, v5);
        }

        else
        {
          v23 = *(v9 + 48);

          return v23((((a1 + v15) & ~v12) + v11 + v13) & ~v13);
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_27;
  }

LABEL_14:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_1D8F13648(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1D9176E3C();
  v11 = v8;
  v12 = *(v10 - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  if (v13 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  v16 = *(v11 + 80);
  v17 = *(v12 + 80);
  v18 = ((v14 + v17 + ((v14 + v16) & ~v16)) & ~v17) + *(*(v10 - 8) + 64);
  if (a3 <= v15)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v15 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v15 < a2)
  {
    v20 = ~v15 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_46:
              if (v19 == 2)
              {
                *&a1[v18] = v21;
              }

              else
              {
                *&a1[v18] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v19)
    {
      a1[v18] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v18] = 0;
  }

  else if (v19)
  {
    a1[v18] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v13)
  {
    v26 = *(v11 + 56);

    v26(a1, a2, v9, v7);
  }

  else
  {
    v25 = *(v12 + 56);

    v25(((&a1[v14 + v16] & ~v16) + v14 + v17) & ~v17, a2);
  }
}

id MediaItemMetadataLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D8F139E8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D91785DC();
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v12[4] = sub_1D8F13DE0;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D8CF5F60;
  v12[3] = &block_descriptor_31;
  v9 = _Block_copy(v12);
  v10 = v3;
  v11 = a1;

  [v11 loadValuesAsynchronouslyForKeys:v7 completionHandler:v9];
  _Block_release(v9);
}

uint64_t sub_1D8F13B04(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9177E9C();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&a1[OBJC_IVAR___MTMediaItemMetadataLoader_metadataLoadingQueue];
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a1;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_1D8F14DE4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_19;
  v16 = _Block_copy(aBlock);
  v17 = a2;
  v18 = a1;

  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v21);
}

uint64_t sub_1D8F13DEC(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v41 = a3;
  v42 = a2;
  v5 = sub_1D9177E0C();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1D9177E9C();
  v45 = *(v47 - 8);
  v7 = MEMORY[0x1EEE9AC00](v47);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 metadata];
  sub_1D8CF2154(0, &qword_1ECAB4820, 0x1E6987FE0);
  v10 = sub_1D91785FC();

  v55 = swift_allocObject();
  *(v55 + 16) = MEMORY[0x1E69E7CC8];
  v54 = dispatch_group_create();
  if (v10 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v12 = 0;
    v13 = v10 & 0xC000000000000001;
    v14 = v10 & 0xFFFFFFFFFFFFFF8;
    v56 = 0x80000001D91CB5A0;
    v51 = &v59;
    v15 = &off_1E856D000;
    v52 = v10 & 0xFFFFFFFFFFFFFF8;
    v53 = v10 & 0xC000000000000001;
    v50 = i;
    while (1)
    {
      if (v13)
      {
        v16 = MEMORY[0x1DA72AA90](v12, v10);
      }

      else
      {
        if (v12 >= *(v14 + 16))
        {
          goto LABEL_20;
        }

        v16 = *(v10 + 8 * v12 + 32);
      }

      v17 = v16;
      v18 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v19 = [v16 v15[298]];
      if (v19 && (v63 = v19, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5548, &qword_1D9194900), (swift_dynamicCast() & 1) != 0))
      {
        v21 = aBlock;
        v20 = v58;
        if (aBlock == 0xD000000000000012 && v56 == v58 || (sub_1D9179ACC() & 1) != 0)
        {
          v22 = v10;
          v23 = v54;
          dispatch_group_enter(v54);
          v24 = sub_1D91785DC();
          v25 = swift_allocObject();
          v25[2] = v17;
          v25[3] = v21;
          v26 = v15;
          v27 = v55;
          v25[4] = v20;
          v25[5] = v27;
          v25[6] = v23;
          v61 = sub_1D8F14DF0;
          v62 = v25;
          aBlock = MEMORY[0x1E69E9820];
          v58 = 1107296256;
          v59 = sub_1D8CF5F60;
          v60 = &block_descriptor_29;
          v28 = _Block_copy(&aBlock);
          v29 = v17;
          v15 = v26;

          v30 = v23;
          v10 = v22;
          v14 = v52;

          [v29 loadValuesAsynchronouslyForKeys:v24 completionHandler:v28];

          _Block_release(v28);
          i = v50;
          v13 = v53;
        }

        else
        {
        }
      }

      else
      {
      }

      ++v12;
      if (v18 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v31 = v42;
  v32 = swift_allocObject();
  v32[2] = v55;
  v32[3] = v31;
  v33 = v43;
  v32[4] = v41;
  v32[5] = v33;
  v61 = sub_1D8F14E00;
  v62 = v32;
  aBlock = MEMORY[0x1E69E9820];
  v58 = 1107296256;
  v59 = sub_1D8CF5F60;
  v60 = &block_descriptor_35;
  v34 = _Block_copy(&aBlock);

  v35 = v31;

  v36 = v44;
  sub_1D9177E4C();
  v63 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v37 = v46;
  v38 = v49;
  sub_1D91792CC();
  v39 = v54;
  sub_1D9178D7C();
  _Block_release(v34);

  (*(v48 + 8))(v37, v38);
  (*(v45 + 8))(v36, v47);
}

void sub_1D8F14428(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, NSObject *a5)
{
  v32 = a4;
  v33 = a2;
  v8 = sub_1D917744C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v13 = [a1 statusOfValueForKey:v12 error:0];

  if (qword_1ECAAFBE0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, qword_1ECAAFBE8);
  swift_beginAccess();
  (*(v9 + 16))(v11, v14, v8);

  v15 = sub_1D917741C();
  v16 = sub_1D9178D1C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = a1;
    v18 = v17;
    v19 = a5;
    v20 = swift_slowAlloc();
    v35[0] = v20;
    *v18 = 136315394;
    *(v18 + 4) = sub_1D8CFA924(v33, a3, v35);
    *(v18 + 12) = 2048;
    *(v18 + 14) = v13;
    _os_log_impl(&dword_1D8CEC000, v15, v16, "Status of metadata key %s is %ld", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v21 = v20;
    a5 = v19;
    MEMORY[0x1DA72CB90](v21, -1, -1);
    v22 = v18;
    a1 = v31;
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  if (v13 == 2)
  {
    v23 = [a1 stringValue];
    if (v23)
    {
      v24 = a5;
      v25 = v23;
      v26 = sub_1D917820C();
      v28 = v27;

      a5 = v24;
      v29 = v32;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = *(v29 + 16);
      *(v29 + 16) = 0x8000000000000000;
      sub_1D8F50170(v26, v28, v33, a3, isUniquelyReferenced_nonNull_native);

      *(v29 + 16) = v34;
      swift_endAccess();
    }
  }

  dispatch_group_leave(a5);
}

void sub_1D8F1474C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_1D917744C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v36 - v12;
  swift_beginAccess();
  v14 = *(a1 + 16);
  if (*(v14 + 16) && (v15 = sub_1D8D33C70(0xD000000000000012, 0x80000001D91CB5A0), (v16 & 1) != 0))
  {
    v17 = (*(v14 + 56) + 16 * v15);
    v18 = *v17;
    v19 = v17[1];
    swift_endAccess();

    v20 = sub_1D8F14E0C(v18, v19);

    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v7, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v8 + 16))(v10, v21, v7);

    v22 = sub_1D917741C();
    v23 = sub_1D9178D1C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37 = a3;
      v25 = v24;
      v26 = swift_slowAlloc();
      v36[1] = a4;
      v27 = v26;
      v38 = v20;
      v39 = v26;
      *v25 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6BE0, &qword_1D9194908);
      v28 = sub_1D917826C();
      v30 = sub_1D8CFA924(v28, v29, &v39);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "Metadata in HLS playlist has HLS keys %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x1DA72CB90](v27, -1, -1);
      v31 = v25;
      a3 = v37;
      MEMORY[0x1DA72CB90](v31, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    a3(v20);
  }

  else
  {
    swift_endAccess();
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v7, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v8 + 16))(v13, v32, v7);
    v33 = sub_1D917741C();
    v34 = sub_1D9178CFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "Metadata in HLS playlist was missing HLS key information", v35, 2u);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    a3(0);
  }
}

void sub_1D8F14CE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1D91785DC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id MediaItemMetadataLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaItemMetadataLoader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_1D8F14E0C(uint64_t a1, unint64_t a2)
{
  v53[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1D917744C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = sub_1D9176C4C();
  if (v12 >> 60 == 15)
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v4, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v5 + 16))(v7, v13, v4);

    v14 = sub_1D917741C();
    v15 = sub_1D9178CFC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v53[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1D8CFA924(a1, a2, v53);
      _os_log_impl(&dword_1D8CEC000, v14, v15, "Metadata in HLS playlist was not base64 encoded: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v18 = v11;
  v19 = v12;
  v20 = objc_opt_self();
  v21 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v52[0] = 0;
  v22 = [v20 JSONObjectWithData:v21 options:0 error:v52];

  if (!v22)
  {
    v35 = v52[0];
    v36 = sub_1D9176A6C();

    swift_willThrow();
    goto LABEL_22;
  }

  v23 = v52[0];
  sub_1D917928C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v4, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v5 + 16))(v10, v37, v4);

    v38 = sub_1D917741C();
    v39 = sub_1D9178CFC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v49 = v19;
      v41 = a1;
      v42 = v40;
      v43 = swift_slowAlloc();
      v53[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1D8CFA924(v41, a2, v53);
      _os_log_impl(&dword_1D8CEC000, v38, v39, "base64 encoded metadata in HLS playlist was not a JSON object: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1DA72CB90](v43, -1, -1);
      MEMORY[0x1DA72CB90](v42, -1, -1);
      v44 = v18;
      v45 = v49;
    }

    else
    {
      v44 = v18;
      v45 = v19;
    }

    sub_1D8D75668(v44, v45);

    (*(v5 + 8))(v10, v4);
    return 0;
  }

  v49 = v19;
  v47 = v18;
  v48 = v53[0];
  v24 = *(v53[0] + 16);
  if (v24)
  {
    v25 = (v48 + 32);
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      v27 = *v25;
      v50 = 6910581;
      v51 = 0xE300000000000000;

      sub_1D91793EC();
      if (*(v27 + 16) && (v28 = sub_1D8D6550C(v52), (v29 & 1) != 0))
      {
        sub_1D8CFAD1C(*(v27 + 56) + 32 * v28, v53);
        sub_1D8D9A308(v52);

        if (swift_dynamicCast())
        {
          v31 = v50;
          v30 = v51;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_1D8D4241C(0, *(v26 + 2) + 1, 1, v26);
          }

          v33 = *(v26 + 2);
          v32 = *(v26 + 3);
          if (v33 >= v32 >> 1)
          {
            v26 = sub_1D8D4241C((v32 > 1), v33 + 1, 1, v26);
          }

          *(v26 + 2) = v33 + 1;
          v34 = &v26[16 * v33];
          *(v34 + 4) = v31;
          *(v34 + 5) = v30;
        }
      }

      else
      {

        sub_1D8D9A308(v52);
      }

      ++v25;
      --v24;
    }

    while (v24);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
  }

  sub_1D8D75668(v47, v49);
  return v26;
}

id SecureDownloadRenewalManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D8F15484()
{
  v7 = sub_1D9178E0C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D9177E4C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1D9178E4C();
  qword_1ECAB17C0 = result;
  return result;
}

id sub_1D8F156F8()
{
  v1 = OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader;
  v2 = *(v0 + OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader);
  }

  else
  {
    v4 = [objc_allocWithZone(IMAVSecureKeyLoader) initWithRecipient:0 useCase:1 account:0 urlProtocolDelegate:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id SecureDownloadRenewalManager.__allocating_init(delegate:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1D8CFDE70(a1);
  swift_unknownObjectRelease();
  return v4;
}

id SecureDownloadRenewalManager.init(delegate:)(uint64_t a1)
{
  v1 = sub_1D8CFDE70(a1);
  swift_unknownObjectRelease();
  return v1;
}

void sub_1D8F15808(void (*a1)(void), uint64_t a2)
{
  v43 = a2;
  v44 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_1D9177E0C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1D9177E9C();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D917744C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 mainOrPrivateContext];

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = swift_allocObject();
  v17[2] = v15;
  v17[3] = v16;
  v17[4] = ObjectType;
  v50 = sub_1D8F1E5F4;
  v51 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1D8CF5F60;
  v49 = &block_descriptor_32;
  v18 = _Block_copy(&aBlock);
  v19 = v15;

  [v19 performBlockAndWaitWithSave_];
  _Block_release(v18);
  swift_beginAccess();
  v20 = *(v16 + 16);

  if (v20 < 1)
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v7, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v8 + 16))(v10, v33, v7);
    v34 = sub_1D917741C();
    v35 = sub_1D9178D1C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D8CEC000, v34, v35, "Did not locate any orphaned key data", v36, 2u);
      MEMORY[0x1DA72CB90](v36, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    if (v44)
    {
      v44(MEMORY[0x1E69E7CC0]);
    }
  }

  else
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v7, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v8 + 16))(v13, v21, v7);
    v22 = sub_1D917741C();
    v23 = sub_1D9178D1C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v20;
      _os_log_impl(&dword_1D8CEC000, v22, v23, "Did locate %ld orphaned key data", v24, 0xCu);
      MEMORY[0x1DA72CB90](v24, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    if (qword_1ECAB17B8 != -1)
    {
      swift_once();
    }

    v25 = swift_allocObject();
    v26 = v37;
    v27 = v43;
    v28 = v44;
    v25[2] = v37;
    v25[3] = v28;
    v25[4] = v27;
    v50 = sub_1D8F210E8;
    v51 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1D8CF5F60;
    v49 = &block_descriptor_9;
    v29 = _Block_copy(&aBlock);
    v30 = v26;
    sub_1D8D1F93C(v28, v27);
    sub_1D9177E4C();
    v45 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
    v31 = v39;
    v32 = v42;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v6, v31, v29);
    _Block_release(v29);

    (*(v41 + 8))(v31, v32);
    (*(v38 + 8))(v6, v40);
  }
}

uint64_t sub_1D8F15FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_1D9177E0C();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9177E9C();
  v25 = *(v10 - 8);
  v26 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 mainOrPrivateContext];

  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v14;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = ObjectType;
  v34 = sub_1D8F1E600;
  v35 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1D8CF5F60;
  v33 = &block_descriptor_15_1;
  v16 = _Block_copy(&aBlock);
  v17 = v14;
  sub_1D8D1F93C(a2, a3);

  [v17 performBlockAndWaitWithSave_];
  _Block_release(v16);
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v18 = swift_allocObject();
  v19 = v24;
  v18[2] = v24;
  v18[3] = a2;
  v18[4] = a3;
  v34 = sub_1D8F210E8;
  v35 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_1D8CF5F60;
  v33 = &block_descriptor_21_0;
  v20 = _Block_copy(&aBlock);
  sub_1D8D1F93C(a2, a3);
  v21 = v19;
  sub_1D9177E4C();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v22 = v28;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v12, v9, v20);
  _Block_release(v20);

  (*(v27 + 8))(v9, v22);
  (*(v25 + 8))(v12, v26);
}

void sub_1D8F16420(uint64_t a1, void *a2, void (*a3)(void))
{
  v6 = sub_1D917744C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s18PodcastsFoundation28SecureDownloadRenewalManagerC16inContextKeyData3for3ctxSo09MTOfflineiJ0CSgs5Int64V_So015NSManagedObjectH0CtFZ_0(a1, a2);
  if (v10)
  {
    v16 = v10;
    [v10 setPendingDeletion_];
    v11 = v16;
  }

  else
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v6, qword_1ECAAFBE8);
    swift_beginAccess();
    (*(v7 + 16))(v9, v12, v6);
    v13 = sub_1D917741C();
    v14 = sub_1D9178CFC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = a1;
      _os_log_impl(&dword_1D8CEC000, v13, v14, "Did not locate key data for episode adam id %lld", v15, 0xCu);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    if (a3)
    {
      a3(MEMORY[0x1E69E7CC0]);
    }
  }
}

void sub_1D8F16720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = [objc_opt_self() sharedInstance];
  v10 = [v9 mainOrPrivateContext];

  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v10;
  v11[4] = v4;
  v11[5] = a2;
  v11[6] = a3;
  v11[7] = ObjectType;
  v15[4] = sub_1D8F1E89C;
  v15[5] = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D8CF5F60;
  v15[3] = &block_descriptor_27_1;
  v12 = _Block_copy(v15);

  v13 = v10;
  v14 = v4;
  sub_1D8D1F93C(a2, a3);

  [v13 performBlock_];
  _Block_release(v12);
}

uint64_t sub_1D8F16888(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v7 = sub_1D917744C();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9177E0C();
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E9C();
  v42 = *(v13 - 8);
  v43 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = (a1 + 32);
    while (1)
    {
      v20 = *v18++;
      v19 = v20;
      v21 = _s18PodcastsFoundation28SecureDownloadRenewalManagerC16inContextKeyData3for3ctxSo09MTOfflineiJ0CSgs5Int64V_So015NSManagedObjectH0CtFZ_0(v20, a2);
      if (!v21)
      {
        break;
      }

      v22 = v21;
      [v21 setPendingDeletion_];

      if (!--v17)
      {
        goto LABEL_5;
      }
    }

    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v30 = v38;
    v31 = __swift_project_value_buffer(v38, qword_1ECAAFBE8);
    swift_beginAccess();
    v32 = v37;
    (*(v37 + 16))(v9, v31, v30);
    v33 = sub_1D917741C();
    v34 = sub_1D9178CFC();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = v19;
      _os_log_impl(&dword_1D8CEC000, v33, v34, "Did not locate key data for episode adam id %lld", v35, 0xCu);
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    return (*(v32 + 8))(v9, v30);
  }

  else
  {
LABEL_5:
    [a2 saveInCurrentBlock];
    if (qword_1ECAB17B8 != -1)
    {
      swift_once();
    }

    v23 = swift_allocObject();
    v25 = v39;
    v24 = v40;
    v23[2] = v39;
    v23[3] = v24;
    v26 = v41;
    v23[4] = v41;
    aBlock[4] = sub_1D8F210E8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_228;
    v27 = _Block_copy(aBlock);
    v28 = v25;
    sub_1D8D1F93C(v24, v26);
    sub_1D9177E4C();
    v45 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v16, v12, v27);
    _Block_release(v27);
    (*(v44 + 8))(v12, v10);
    (*(v42 + 8))(v16, v43);
  }
}

void sub_1D8F16E44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 privateQueueContext];

  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v3;
  v9[4] = a1;
  v9[5] = a2;
  v9[6] = ObjectType;
  v13[4] = sub_1D8F1E8AC;
  v13[5] = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_33;
  v10 = _Block_copy(v13);
  v11 = v8;
  v12 = v3;
  sub_1D8D1F93C(a1, a2);

  [v11 performBlock_];
  _Block_release(v10);
}

unint64_t sub_1D8F16F98(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a3;
  v6 = sub_1D9177E0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9177E9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  sub_1D8CF2154(0, &unk_1EDCD5B60, off_1E8567630);
  v28 = a1;
  result = sub_1D917908C();
  v32 = v11;
  v33 = v10;
  v31 = v14;
  v16 = result;
  if (result >> 62)
  {
    result = sub_1D917935C();
    v17 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_12;
  }

  v17 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
    goto LABEL_11;
  }

LABEL_3:
  v27 = a4;
  if (v17 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v17; ++i)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x1DA72AA90](i, v16);
    }

    else
    {
      v19 = *(v16 + 8 * i + 32);
    }

    v20 = v19;
    [v19 setPendingDeletion_];
  }

  a4 = v27;
LABEL_12:
  v22 = v29;
  v21 = v30;
  [v28 saveInCurrentBlock];
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v21;
  v23[4] = a4;
  aBlock[4] = sub_1D8F21024;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_222;
  v24 = _Block_copy(aBlock);
  v25 = v22;
  sub_1D8D1F93C(v21, a4);
  sub_1D9177E4C();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v13, v9, v24);
  _Block_release(v24);

  (*(v7 + 8))(v9, v6);
  (*(v32 + 8))(v13, v33);
}

void sub_1D8F17534(void (*a1)(void), uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR___MTSecureDownloadRenewalManager_removalLock;
  if ((v2[OBJC_IVAR___MTSecureDownloadRenewalManager_removalLock] & 1) != 0 || v2[OBJC_IVAR___MTSecureDownloadRenewalManager_renewalLock] == 1)
  {
    if (a1)
    {
      a1(MEMORY[0x1E69E7CC0]);
    }

    return;
  }

  v22 = ObjectType;
  v2[OBJC_IVAR___MTSecureDownloadRenewalManager_removalLock] = 1;
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  v7 = (v23 + 16);
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 mainOrPrivateContext];

  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v9;
  v10[4] = v23 + 16;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D8F20B90;
  *(v11 + 24) = v10;
  v28 = sub_1D8D24508;
  v29 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1D8D24488;
  v27 = &block_descriptor_150;
  v12 = _Block_copy(&aBlock);
  v21 = v2;
  v13 = v9;

  [v13 performBlockAndWait_];
  _Block_release(v12);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
LABEL_10:
    v15 = v23;
    if (sub_1D917935C())
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v14 = *v7;
  if (*v7 >> 62)
  {
    goto LABEL_10;
  }

  v15 = v23;
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_8:
    v16 = sub_1D8F156F8();
    sub_1D8CF2154(0, &qword_1ECAB6C68, off_1E85675F8);

    v17 = sub_1D91785DC();

    v18 = swift_allocObject();
    v18[2] = v21;
    v18[3] = v15;
    v18[4] = a1;
    v18[5] = a2;
    v18[6] = v22;
    v28 = sub_1D8F20B9C;
    v29 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v25 = 1107296256;
    v26 = sub_1D8F18870;
    v27 = &block_descriptor_156;
    v19 = _Block_copy(&aBlock);
    v20 = v21;

    sub_1D8D1F93C(a1, a2);

    [v16 securelyInvalidateOfflineDataForRequests:v17 completion:v19];
    _Block_release(v19);

    return;
  }

LABEL_11:
  v2[v6] = 0;
  if (a1)
  {
    a1(MEMORY[0x1E69E7CC0]);
  }
}

double sub_1D8F178F8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1D917744C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  v11 = sub_1D8F1E8C4(a2);
  if (qword_1ECAAFBE0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, qword_1ECAAFBE8);
  swift_beginAccess();
  v13 = *(v6 + 16);
  v54 = v6 + 16;
  v55 = v12;
  v57 = v5;
  v53 = v13;
  v13(v10, v12, v5);

  v14 = sub_1D917741C();
  v15 = sub_1D9178D1C();
  v16 = v11 >> 62;
  if (!os_log_type_enabled(v14, v15))
  {

    goto LABEL_8;
  }

  v17 = swift_slowAlloc();
  *v17 = 134217984;
  if (v16)
  {
    goto LABEL_29;
  }

  v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v17 + 4) = v18;
    v19 = v17;

    _os_log_impl(&dword_1D8CEC000, v14, v15, "Removing %ld HLS keys", v19, 0xCu);
    MEMORY[0x1DA72CB90](v19, -1, -1);

LABEL_8:
    v14 = v11;
    v20 = *(v6 + 8);
    v6 += 8;
    v56 = v6;
    v52 = v20;
    v17 = (v20)(v10, v57);
    if (v16)
    {
      v17 = sub_1D917935C();
      v10 = v17;
      if (!v17)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        goto LABEL_27;
      }
    }

    if (v10 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_29:
    v48 = v17;
    v18 = sub_1D917935C();
    v17 = v48;
  }

  v22 = 0;
  v23 = v11 & 0xC000000000000001;
  v24 = &off_1E856D000;
  v25 = &selRef_redirectURLForStoreCollectionId_;
  *&v21 = 134217984;
  v49 = v21;
  v50 = v14;
  v51 = v10;
  do
  {
    if (v23)
    {
      v27 = MEMORY[0x1DA72AA90](v22, v14);
    }

    else
    {
      v27 = v14[v22 + 4].isa;
    }

    v28 = v27;
    v29 = [v28 v24[303]];
    if (v29)
    {
      v26 = v29;
      v30 = [(objc_class *)v28 data];
      if (v30)
      {
        v31 = a3;
        v32 = v30;
        v33 = sub_1D9176C8C();
        v35 = v34;

        v36 = [objc_allocWithZone(MTKeyRequestData) init];
        [v36 setKeyIdentifier_];

        v37 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
        [v36 setKeyData_];

        v59 = [v28 v25[452]];
        sub_1D9179A4C();
        v38 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

        [v36 setContentAdamId_];

        v39 = [(objc_class *)v28 secureInvalidationDsid];
        v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
        [v36 setSecureInvalidationDsid_];

        v41 = v33;
        v42 = v57;
        sub_1D8D7567C(v41, v35);
        v53(v58, v55, v42);
        v26 = v28;
        v43 = sub_1D917741C();
        v44 = sub_1D9178D1C();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = v49;
          *(v45 + 4) = [v26 v25[452]];

          _os_log_impl(&dword_1D8CEC000, v43, v44, "Removing HLS key for episode adam id %lld", v45, 0xCu);
          v46 = v45;
          v42 = v57;
          MEMORY[0x1DA72CB90](v46, -1, -1);
        }

        else
        {

          v43 = v26;
        }

        v52(v58, v42);
        v28 = v36;
        a3 = v31;
        MEMORY[0x1DA729B90]();
        if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        sub_1D917869C();
        v14 = v50;
        v10 = v51;
        v24 = &off_1E856D000;
        v25 = &selRef_redirectURLForStoreCollectionId_;
      }

      else
      {
      }
    }

    else
    {
      v26 = v28;
    }

    ++v22;
  }

  while (v10 != v22);
LABEL_27:

  return result;
}

uint64_t sub_1D8F17EA0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D9177E0C();
  v22 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D9177E9C();
  v13 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v20 = qword_1ECAB17C0;
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a1;
  v16[5] = a4;
  v16[6] = a5;
  aBlock[4] = sub_1D8F20BAC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_162;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  sub_1D8D1F93C(a4, a5);
  sub_1D9177E4C();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v12, v17);
  _Block_release(v17);
  (*(v22 + 8))(v12, v10);
  (*(v13 + 8))(v15, v21);
}

uint64_t sub_1D8F181D8(void *a1, char *a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v10 = sub_1D917744C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v56 - v14);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v58 = a1;

  sub_1D8F1EA48(sub_1D8F20BC4, v16);

  if (qword_1ECAAFBE0 != -1)
  {
LABEL_27:
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_1ECAAFBE8);
  swift_beginAccess();
  v18 = *(v11 + 16);
  v66 = v11 + 16;
  v67 = v17;
  v65 = v18;
  v18(v15, v17, v10);

  v19 = sub_1D917741C();
  v20 = sub_1D9178D1C();
  v21 = os_log_type_enabled(v19, v20);
  v59 = a4;
  v57 = a5;
  if (v21)
  {
    v22 = swift_slowAlloc();
    *v22 = 134218240;
    swift_beginAccess();
    v23 = *(a2 + 2);
    if (v23 >> 62)
    {
      v24 = sub_1D917935C();
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v22 + 4) = v24;

    *(v22 + 12) = 2048;
    *(v22 + 14) = *(a3 + 16);

    _os_log_impl(&dword_1D8CEC000, v19, v20, "Finished invalidating %ld key data requests with %ld failed requests", v22, 0x16u);
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  else
  {
  }

  v25 = *(v11 + 8);
  v68 = v11 + 8;
  v64 = v25;
  v25(v15, v10);
  a5 = a3 + 64;
  v26 = 1 << *(a3 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a3 + 64);
  v11 = (v26 + 63) >> 6;

  v29 = 0;
  *&v30 = 136315394;
  v60 = v30;
  a2 = v69;
  v61 = v10;
  v62 = a3;
  while (v28)
  {
    a4 = v29;
LABEL_17:
    v31 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v32 = v31 | (a4 << 6);
    v33 = (*(a3 + 48) + 16 * v32);
    v34 = *v33;
    v35 = v33[1];
    v36 = *(*(a3 + 56) + 8 * v32);
    v65(a2, v67, v10);

    v70 = v36;
    v37 = v36;
    v15 = sub_1D917741C();
    v38 = sub_1D9178CFC();
    if (os_log_type_enabled(v15, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v71 = v63;
      *v39 = v60;
      v41 = sub_1D8CFA924(v34, v35, &v71);

      *(v39 + 4) = v41;
      *(v39 + 12) = 2112;
      v42 = v70;
      v43 = sub_1D9176A5C();
      *(v39 + 14) = v43;
      *v40 = v43;
      _os_log_impl(&dword_1D8CEC000, v15, v38, "Failed to invalidate download for episode adam id %s with error %@", v39, 0x16u);
      sub_1D8D08A50(v40, &unk_1ECAB6C70, &unk_1D9188C30);
      v44 = v40;
      v10 = v61;
      MEMORY[0x1DA72CB90](v44, -1, -1);
      v45 = v63;
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x1DA72CB90](v45, -1, -1);
      v46 = v39;
      a3 = v62;
      MEMORY[0x1DA72CB90](v46, -1, -1);
    }

    else
    {
    }

    a2 = v69;
    v64(v69, v10);
    v29 = a4;
  }

  while (1)
  {
    a4 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (a4 >= v11)
    {
      break;
    }

    v28 = *(a5 + 8 * a4);
    ++v29;
    if (v28)
    {
      goto LABEL_17;
    }
  }

  v58[OBJC_IVAR___MTSecureDownloadRenewalManager_removalLock] = 0;
  v48 = v59;
  if (v59)
  {
    v49 = *(a3 + 16);
    if (v49)
    {
      v50 = sub_1D8D1B418(*(a3 + 16), 0);
      v51 = sub_1D8F0CAD8();
      v52 = v71;

      v53 = v48;
      v54 = v57;
      sub_1D8D1F93C(v53, v57);
      result = sub_1D8D1B144(v52);
      if (v51 != v49)
      {
        __break(1u);
        return result;
      }

      v55 = v59;
      v59(v50);
    }

    else
    {
      v55 = v59;
      v54 = v57;
      sub_1D8D1F93C(v59, v57);
      v55(MEMORY[0x1E69E7CC0]);
    }

    return sub_1D8D15664(v55, v54);
  }

  return result;
}

double sub_1D8F18804@<D0>(uint64_t *x8_0@<X8>)
{
  swift_beginAccess();

  sub_1D8F18900(v4, x8_0);

  return result;
}

double sub_1D8F18870(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  v3 = sub_1D917805C();

  v2(v3);

  return result;
}

double sub_1D8F18900@<D0>(unint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_23:
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v6 = sub_1D917935C();
  if (!v6)
  {
    goto LABEL_23;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1DA72AA90](v9, a1);
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v9 >= *(v5 + 16))
        {
          goto LABEL_21;
        }

        v10 = *(a1 + 8 * v9 + 32);
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v11 = v10;
      v12 = [v11 contentAdamId];
      if (v12)
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_24;
      }
    }

    v26 = a3;
    v13 = v12;
    v14 = sub_1D917820C();
    v25 = v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D8D4241C(0, *(v8 + 2) + 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = sub_1D8D4241C((v16 > 1), v17 + 1, 1, v8);
    }

    *(v8 + 2) = v17 + 1;
    v18 = &v8[16 * v17];
    a3 = v26;
    *(v18 + 4) = v14;
    *(v18 + 5) = v25;
  }

  while (v7 != v6);
LABEL_24:
  v19 = sub_1D8FC0F28(v8);

  v21 = sub_1D8D7D560(v20);
  if (*(v21 + 16) <= *(v19 + 16) >> 3)
  {
    sub_1D910E6BC(v21);

    v22 = v19;
  }

  else
  {
    v22 = sub_1D90A4A60(v21, v19);
  }

  v23 = swift_allocObject();
  v23[2] = sub_1D8F18C3C;
  v23[3] = 0;
  v23[4] = v22;
  v23[5] = sub_1D8F18BD0;
  v23[6] = 0;
  v23[7] = sub_1D8F18C24;
  v23[8] = 0;
  v23[9] = sub_1D8F1E47C;
  v23[10] = 0;
  v23[11] = sub_1D8F1E48C;
  v23[12] = 0;
  *a3 = v22;
  a3[1] = sub_1D8F18BD0;
  a3[2] = 0;
  a3[3] = sub_1D8F18C24;
  a3[4] = 0;
  a3[5] = sub_1D8F1E47C;
  a3[6] = 0;
  a3[7] = sub_1D8F20B1C;
  a3[8] = v23;

  return result;
}

unsigned __int8 *sub_1D8F18BD0@<X0>(uint64_t *a1@<X0>, unsigned __int8 **a2@<X8>)
{
  result = sub_1D8FE6808(*a1, a1[1]);
  *a2 = result;
  return result;
}

void *sub_1D8F18C24@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
    *(a2 + 8) = 0;
  }

  return result;
}

id sub_1D8F18C3C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  *a2 = result;
  return result;
}

void sub_1D8F18C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 loggingContext];

  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = v9;
  v10[5] = a1;
  v10[6] = a2;
  v13[4] = sub_1D8F20BD8;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_177;
  v11 = _Block_copy(v13);

  v12 = v9;

  [v12 performBlock_];
  _Block_release(v11);
}

void sub_1D8F18DCC(void (*a1)(uint64_t *__return_ptr), uint64_t a2, void *a3, void (*a4)(unint64_t))
{
  v27[22] = *MEMORY[0x1E69E9840];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  v8 = objc_opt_self();
  a1(v27);
  sub_1D8FC03D8(v27);
  v9 = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  sub_1D8CF3274(&qword_1EDCD0808, qword_1EDCD0810, 0x1E696AD98, MEMORY[0x1E69E81B8]);
  v10 = sub_1D9178A8C();

  v11 = [v8 predicateForEpisodeStoreTrackIds_];

  v12 = [v8 predicateForDownloaded:1 excludeHidden:1];
  v13 = [v11 AND_];

  [v7 setPredicate_];
  v26[0] = 0;
  v14 = [a3 countForFetchRequest:v7 error:v26];
  v15 = v26[0];
  if (v26[0])
  {
    swift_willThrow();
    v16 = qword_1EDCD0F80;
    v17 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1EDCD0F88);
    v19 = sub_1D917741C();
    v20 = sub_1D9178CDC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D8CEC000, v19, v20, "Failed to count downloaded episodes for deleted secure keys. Unable to assess misalignment", v21, 2u);
      MEMORY[0x1DA72CB90](v21, -1, -1);
    }
  }

  else if (v14 > 0)
  {
    v22 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB5C00, &qword_1D91913F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    v26[0] = 0xD000000000000025;
    v26[1] = 0x80000001D91CD140;
    sub_1D91793EC();
    v24 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    *(inited + 96) = v9;
    *(inited + 72) = v24;
    v25 = sub_1D8D653BC(inited);
    swift_setDeallocating();
    sub_1D8D08A50(inited + 32, &unk_1ECAB6C80, &unk_1D91949C0);
    a4(v25);
  }
}

uint64_t sub_1D8F191D8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;
  sub_1D8D1F93C(a2, a3);
  sub_1D8F198E8(sub_1D8F20C78, v6);
}

double sub_1D8F19270(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1EDCD0F88);

  v9 = sub_1D917741C();
  v10 = sub_1D9178CDC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 134349314;
    *(v11 + 4) = *(a1 + 16);

    *(v11 + 12) = 2080;
    v13 = MEMORY[0x1DA729BD0](a1, MEMORY[0x1E69E6158]);
    v15 = sub_1D8CFA924(v13, v14, &v18);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "Finished request for missing keys for shows (%{public}ld): %s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x1DA72CB90](v12, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  else
  {
  }

  v16 = a2;
  sub_1D8D1F93C(a3, a4);
  sub_1D8F1F110(v16, v16, a1, a3, a4);
  sub_1D8D15664(a3, a4);

  return result;
}

uint64_t sub_1D8F19460(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917744C();
  __swift_project_value_buffer(v10, qword_1EDCD0F88);

  v11 = sub_1D917741C();
  v12 = sub_1D9178CDC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v21 = v14;
    *v13 = 134349314;
    *(v13 + 4) = *(a1 + 16);

    *(v13 + 12) = 2080;
    v15 = MEMORY[0x1DA729BD0](a1, MEMORY[0x1E69E6158]);
    v17 = sub_1D8CFA924(v15, v16, &v21);

    *(v13 + 14) = v17;
    _os_log_impl(&dword_1D8CEC000, v11, v12, "Finished renewal & removal of existing DRM keys (%{public}ld: %s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1DA72CB90](v14, -1, -1);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  else
  {
  }

  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = a4;
  v18[5] = a5;
  v19 = a2;

  sub_1D8D1F93C(a4, a5);
  sub_1D8F15808(sub_1D8F21018, v18);
}

void sub_1D8F19668(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  __swift_project_value_buffer(v7, qword_1EDCD0F88);

  v8 = sub_1D917741C();
  v9 = sub_1D9178CDC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 134349314;
    *(v10 + 4) = *(a1 + 16);

    *(v10 + 12) = 2080;
    v12 = MEMORY[0x1DA729BD0](a1, MEMORY[0x1E69E6158]);
    v14 = sub_1D8CFA924(v12, v13, &v15);

    *(v10 + 14) = v14;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "Finished removal of orphan DRM keys. episodes that failed removal: (%{public}ld) %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  else
  {
  }

  sub_1D8F1AC24(a3);
  if (a4)
  {
    a4();
  }
}

void sub_1D8F198E8(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = v6;
  v7[4] = a1;
  v7[5] = a2;
  v11[4] = sub_1D8F20AF0;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8CF5F60;
  v11[3] = &block_descriptor_135;
  v8 = _Block_copy(v11);
  v9 = v2;
  v10 = v6;

  [v10 performBlock_];
  _Block_release(v8);
}

uint64_t sub_1D8F19A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a2;
  v51 = a3;
  v3 = sub_1D9177E0C();
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D8F1F570();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v11 = sub_1D917908C();
  v45 = v9;
  v46 = v5;
  v47 = v7;

  v12 = sub_1D8FBEEF0(v11);

  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v14 = sub_1D8F1F680(v12);

    v15 = sub_1D917908C();
    v16 = v47;
    v17 = v49;
    v44 = v6;
    v18 = v13;
    v19 = v15;

    v20 = sub_1D8FBEEF0(v19);

    if (v20)
    {
      v18 = v20;
    }

    v21 = v51;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
    v21 = v51;
    v44 = v6;
    v16 = v47;
    v17 = v49;
  }

  v22 = v3;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v23 = sub_1D917744C();
  __swift_project_value_buffer(v23, qword_1EDCD0F88);

  v24 = sub_1D917741C();
  v25 = sub_1D9178CDC();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v46;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v28 = 134349314;
    v49 = v24;
    LODWORD(v47) = v25;
    if (v18 >> 62)
    {
      v29 = sub_1D917935C();
    }

    else
    {
      v29 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v28 + 4) = v29;

    *(v28 + 12) = 2080;

    sub_1D8FC1160(v30);

    sub_1D8CF2154(0, &qword_1EDCD0A20, 0x1E695DF20);
    sub_1D8CF3274(&qword_1ECAB6C48, &qword_1EDCD0A20, 0x1E695DF20, MEMORY[0x1E69E81B8]);
    v31 = sub_1D9178AAC();
    v33 = v32;

    v34 = sub_1D8CFA924(v31, v33, aBlock);

    *(v28 + 14) = v34;
    v35 = v49;
    _os_log_impl(&dword_1D8CEC000, v49, v47, "Found %{public}ld episodes missing DRM keys: %s", v28, 0x16u);
    v36 = v43;
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x1DA72CB90](v36, -1, -1);
    MEMORY[0x1DA72CB90](v28, -1, -1);

    v21 = v51;
  }

  else
  {
  }

  v37 = v45;
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v38 = swift_allocObject();
  v38[2] = v18;
  v38[3] = v17;
  v38[4] = v50;
  v38[5] = v21;
  aBlock[4] = sub_1D8F1F674;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_86_0;
  v39 = _Block_copy(aBlock);
  v40 = v17;

  sub_1D9177E4C();
  aBlock[6] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v37, v27, v39);
  _Block_release(v39);
  (*(v48 + 8))(v27, v22);
  (*(v16 + 8))(v37, v44);
}

uint64_t sub_1D8F1A184(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v40 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6A70, &unk_1D91949A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  v43 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v37 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v13 = 0;
    v45 = a1 & 0xC000000000000001;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = (v43 + 48);
    v16 = MEMORY[0x1E69E7CC0];
    v41 = a1;
    v44 = i;
    while (1)
    {
      if (v45)
      {
        v17 = MEMORY[0x1DA72AA90](v13, a1, v10);
      }

      else
      {
        if (v13 >= *(v14 + 16))
        {
          goto LABEL_18;
        }

        v17 = *(a1 + 8 * v13 + 32);
      }

      v18 = v17;
      v19 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v48 = v17;
      sub_1D8F1A694(&v48, v7);

      if ((*v15)(v7, 1, v47) == 1)
      {
        sub_1D8D08A50(v7, &qword_1ECAB6A70, &unk_1D91949A0);
      }

      else
      {
        v20 = v42;
        sub_1D8D6734C(v7, v42, &qword_1ECAB6C60, &unk_1D9194630);
        sub_1D8D6734C(v20, v46, &qword_1ECAB6C60, &unk_1D9194630);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_1D8ECCCBC(0, v16[2] + 1, 1, v16);
        }

        v22 = v16[2];
        v21 = v16[3];
        if (v22 >= v21 >> 1)
        {
          v16 = sub_1D8ECCCBC((v21 > 1), v22 + 1, 1, v16);
        }

        v16[2] = v22 + 1;
        sub_1D8D6734C(v46, v16 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v22, &qword_1ECAB6C60, &unk_1D9194630);
        a1 = v41;
      }

      ++v13;
      if (v19 == v44)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_21:
  if (v37)
  {
    v23 = sub_1D917935C();
  }

  else
  {
    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v23 != v16[2])
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v24 = sub_1D917744C();
    __swift_project_value_buffer(v24, qword_1EDCD0F88);

    v25 = sub_1D917741C();
    v26 = sub_1D9178CFC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v48 = v28;
      *v27 = 141558275;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2081;
      v29 = sub_1D8CF2154(0, &qword_1EDCD0A20, 0x1E695DF20);
      v30 = MEMORY[0x1DA729BD0](a1, v29);
      v32 = sub_1D8CFA924(v30, v31, &v48);

      *(v27 + 14) = v32;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "Invalid data found in episode DB: %{private,mask.hash}s.", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1DA72CB90](v28, -1, -1);
      MEMORY[0x1DA72CB90](v27, -1, -1);
    }
  }

  v33 = sub_1D8F60C24(v16);
  v34 = swift_allocObject();
  v34[2] = v38;
  v34[3] = v39;
  v34[4] = v16;

  sub_1D8F1AEF4(v33, sub_1D8F1FAEC, v34);
}

uint64_t sub_1D8F1A694@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_1D9176C2C();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  *&v27 = sub_1D917820C();
  *(&v27 + 1) = v11;
  v12 = [v10 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v25 = v26;
  *&v27 = sub_1D917820C();
  *(&v27 + 1) = v13;
  v14 = [v10 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_1D917928C();
    swift_unknownObjectRelease();
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v29 = v27;
  v30 = v28;
  if (!*(&v28 + 1))
  {
LABEL_13:
    v16 = &qword_1ECAB57F0;
    v17 = &unk_1D9190AA0;
    v18 = &v29;
LABEL_14:
    sub_1D8D08A50(v18, v16, v17);
    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    sub_1D9176BFC();

    v15 = v31;
    if ((*(v31 + 48))(v6, 1, v7) != 1)
    {
      v21 = *(v15 + 32);
      v21(v9, v6, v7);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
      v23 = *(v22 + 48);
      *a2 = v25;
      v21(&a2[v23], v9, v7);
      return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
    }

    v16 = &unk_1ECAB5910;
    v17 = &qword_1D9188C90;
    v18 = v6;
    goto LABEL_14;
  }

LABEL_15:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
}

double sub_1D8F1AA4C(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C60, &unk_1D9194630);
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = (v21 - v9);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v21[1] = a2;
    v22 = a1;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v11, 0);
    v12 = v25;
    v13 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v23 = *(v7 + 72);
    do
    {
      sub_1D8D088B4(v13, v10, &qword_1ECAB6C60, &unk_1D9194630);
      v24 = *v10;
      v14 = sub_1D9179A4C();
      v16 = v15;
      sub_1D8D08A50(v10, &qword_1ECAB6C60, &unk_1D9194630);
      v25 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D8D41BE0((v17 > 1), v18 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v18 + 1;
      v19 = v12 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v13 += v23;
      --v11;
    }

    while (v11);
    a1 = v22;
  }

  a1(v12, v8);

  return result;
}

void sub_1D8F1AC24(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C30, &qword_1D9194988);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    *(inited + 32) = 0xD000000000000014;
    *(inited + 40) = 0x80000001D91CD0C0;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v4 = sub_1D8E26F30(inited);
    swift_setDeallocating();
    sub_1D8D08A50(inited + 32, &unk_1ECAB6C38, &unk_1D9194990);
    sub_1D8CFD9D8(v1 + OBJC_IVAR___MTSecureDownloadRenewalManager_bugReporter, v18);
    v5 = v19;
    v6 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v7 = type metadata accessor for BugReport();
    v8 = objc_allocWithZone(v7);
    v8[OBJC_IVAR___PFBugReport_system] = 1;
    v8[OBJC_IVAR___PFBugReport_errorKind] = 3;
    v8[OBJC_IVAR___PFBugReport_forceSubmissionAttempt] = 0;
    v23.receiver = v8;
    v23.super_class = v7;
    v9 = objc_msgSendSuper2(&v23, sel_init);
    v22 = 1;
    sub_1D9053300(v4);
    (*(v6 + 2))(v9, &v22, v10, v5, v6);

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v11 = *(v1 + OBJC_IVAR___MTSecureDownloadRenewalManager_analyticsChannel);
    swift_unknownObjectRetain();
    sub_1D90535C0(v4);
    v13 = v12;

    v14 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    v20 = sub_1D8E81910;
    v21 = v15;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1D8D6F198;
    v19 = &block_descriptor_80_0;
    v16 = _Block_copy(v18);

    v17 = [v14 initWithName:@"com.apple.podcasts.DRMKeysRecovered" generator:v16];
    _Block_release(v16);
    [v11 sendEvent_];
    swift_unknownObjectRelease();
  }
}

void sub_1D8F1AEF4(uint64_t a1, void (*a2)(double), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v10 = *(*(v9 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v32 - v12;
  if (*(a1 + 16))
  {
    v15 = *(v11 + 80);
    v37 = ObjectType;
    v16 = (v15 + 32) & ~v15;
    sub_1D8D088B4(a1 + v16, &v32 - v12, &qword_1ECAB4538, &unk_1D91949B0);
    v35 = a3;
    v17 = *(v9 + 48);
    v18 = objc_allocWithZone(MEMORY[0x1E6988168]);
    v34 = a2;
    v19 = v18;
    v20 = sub_1D9176B1C();
    v33 = [v19 initWithURL:v20 options:0];

    v21 = sub_1D9176C2C();
    (*(*(v21 - 8) + 8))(&v14[v17], v21);
    v36 = *&v4[OBJC_IVAR___MTSecureDownloadRenewalManager_metadataLoader];
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1D8D088B4(a1 + v16, v14, &qword_1ECAB4538, &unk_1D91949B0);
    v23 = (v15 + 48) & ~v15;
    v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v28 = v33;
    v27 = v34;
    v26[2] = v22;
    v26[3] = v27;
    v26[4] = v35;
    v26[5] = v28;
    sub_1D8D6734C(v14, v26 + v23, &qword_1ECAB4538, &unk_1D91949B0);
    *(v26 + v24) = v4;
    *(v26 + v25) = a1;
    *(v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
    aBlock[4] = sub_1D8F1FAF8;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8F1C0E0;
    aBlock[3] = &block_descriptor_98_0;
    v29 = _Block_copy(aBlock);

    v30 = v28;
    v31 = v4;

    [v36 keyIdentifiersFrom:v30 completion:v29];
    _Block_release(v29);
  }

  else
  {
    a2(v13);
  }
}

void sub_1D8F1B214(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(double), uint64_t a6)
{
  v7 = v6;
  v51 = a1;
  ObjectType = swift_getObjectType();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v17;
  if (a4 >> 1 == a3)
  {
    a5(v19);
  }

  else
  {
    v50 = a5;
    if ((a4 >> 1) <= a3)
    {
      __break(1u);
    }

    else
    {
      v21 = a2 + *(v18 + 72) * a3;
      v49 = a4;
      v47 = a2;
      v44 = v18;
      sub_1D8D088B4(v21, &v41 - v17, &qword_1ECAB4538, &unk_1D91949B0);
      v46 = v20;
      sub_1D8D088B4(v20, v15, &qword_1ECAB4538, &unk_1D91949B0);
      v22 = *(v13 + 48);
      v23 = objc_allocWithZone(MEMORY[0x1E6988168]);
      v45 = a6;
      v24 = v23;
      v25 = sub_1D9176B1C();
      v43 = [v24 initWithURL:v25 options:0];

      v26 = sub_1D9176C2C();
      (*(*(v26 - 8) + 8))(&v15[v22], v26);
      v48 = *&v7[OBJC_IVAR___MTSecureDownloadRenewalManager_metadataLoader];
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = v7;
      v42 = a3;
      sub_1D8D088B4(v20, v15, &qword_1ECAB4538, &unk_1D91949B0);
      v28 = (*(v44 + 80) + 48) & ~*(v44 + 80);
      v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
      v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
      v31 = swift_allocObject();
      v32 = v50;
      v31[2] = v27;
      v31[3] = v32;
      v33 = v43;
      v31[4] = v45;
      v31[5] = v33;
      sub_1D8D6734C(v15, v31 + v28, &qword_1ECAB4538, &unk_1D91949B0);
      v34 = v41;
      *(v31 + v29) = v41;
      v35 = (v31 + v30);
      v36 = v47;
      *v35 = v51;
      v35[1] = v36;
      v37 = v49;
      v35[2] = v42;
      v35[3] = v37;
      *(v31 + ((v30 + 39) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
      aBlock[4] = sub_1D8F2060C;
      aBlock[5] = v31;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8F1C0E0;
      aBlock[3] = &block_descriptor_117;
      v38 = _Block_copy(aBlock);

      v39 = v33;
      v40 = v34;
      swift_unknownObjectRetain();

      [v48 keyIdentifiersFrom:v39 completion:v38];
      _Block_release(v38);

      sub_1D8D08A50(v46, &qword_1ECAB4538, &unk_1D91949B0);
    }
  }
}

void sub_1D8F1B5C8(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v58 = a7;
  v59 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v54 = *(v14 - 8);
  v15 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v56 = a4;
    v57 = Strong;
    v55 = a3;
    if (a1 && a1[2])
    {
      v53 = a9;

      v21 = v57;
      v22 = sub_1D8F156F8();
      [v22 setDelegate_];

      v23 = [objc_allocWithZone(IMAVSecureKeyLoader) initWithRecipient:a5 useCase:1 account:0 urlProtocolDelegate:0];
      v24 = v21;
      v25 = *&v21[OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader];
      *&v24[OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader] = v23;
      v52 = v23;

      v51 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      sub_1D8D088B4(a6, v19, &qword_1ECAB4538, &unk_1D91949B0);
      v26 = *(v14 + 48);
      aBlock[0] = *v19;
      sub_1D9179A4C();
      v27 = sub_1D9176C2C();
      (*(*(v27 - 8) + 8))(&v19[v26], v27);
      v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      sub_1D8D088B4(a6, v19, &qword_1ECAB4538, &unk_1D91949B0);
      v29 = (*(v54 + 80) + 16) & ~*(v54 + 80);
      v30 = (v15 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
      v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
      v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
      v33 = swift_allocObject();
      sub_1D8D6734C(v19, v33 + v29, &qword_1ECAB4538, &unk_1D91949B0);
      v35 = v58;
      v34 = v59;
      *(v33 + v30) = v58;
      *(v33 + v31) = v34;
      v36 = (v33 + v32);
      v37 = v56;
      *v36 = v55;
      v36[1] = v37;
      *(v33 + ((v32 + 23) & 0xFFFFFFFFFFFFFFF8)) = v53;
      aBlock[4] = sub_1D8F1FEE0;
      aBlock[5] = v33;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8E8A43C;
      aBlock[3] = &block_descriptor_104;
      v38 = _Block_copy(aBlock);
      v39 = v35;

      v41 = v51;
      v40 = v52;
      [v52 startKeyLoadingProcessWithKeyIdentifier:v51 contentAdamId:v28 isRenewal:0 completion:v38];

      _Block_release(v38);
    }

    else
    {
      if (qword_1EDCD0F80 != -1)
      {
        swift_once();
      }

      v42 = sub_1D917744C();
      __swift_project_value_buffer(v42, qword_1EDCD0F88);
      sub_1D8D088B4(a6, v16, &qword_1ECAB4538, &unk_1D91949B0);
      v43 = sub_1D917741C();
      v44 = sub_1D9178CFC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 141558275;
        *(v45 + 4) = 1752392040;
        *(v45 + 12) = 2049;
        sub_1D8D088B4(v16, v19, &qword_1ECAB4538, &unk_1D91949B0);
        v46 = *v19;
        v47 = *(v14 + 48);
        v48 = sub_1D9176C2C();
        (*(*(v48 - 8) + 8))(&v19[v47], v48);
        sub_1D8D08A50(v16, &qword_1ECAB4538, &unk_1D91949B0);
        *(v45 + 14) = v46;
        _os_log_impl(&dword_1D8CEC000, v43, v44, "Unable to load keyIdentifier for adamID: %{private,mask.hash}lld.", v45, 0x16u);
        MEMORY[0x1DA72CB90](v45, -1, -1);
      }

      else
      {
        sub_1D8D08A50(v16, &qword_1ECAB4538, &unk_1D91949B0);
      }

      v50 = v55;
      v49 = v56;

      sub_1D8F1FBC0(v58, v59, v50, v49);
    }
  }

  else
  {
    a3();
  }
}

void sub_1D8F1BB40(void *a1, uint64_t a2, void (*a3)(void), void (*a4)(void), uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v67 = a7;
  v68 = a8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  v61 = *(v17 - 8);
  v18 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57 - v21;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v65 = a4;
    v66 = Strong;
    v64 = a3;
    v62 = a9;
    v63 = a10;
    if (a1 && a1[2])
    {
      v60 = a12;

      v24 = v66;
      v25 = sub_1D8F156F8();
      [v25 setDelegate_];

      v26 = [objc_allocWithZone(IMAVSecureKeyLoader) initWithRecipient:a5 useCase:1 account:0 urlProtocolDelegate:0];
      v27 = v24;
      v28 = *&v24[OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader];
      *&v27[OBJC_IVAR___MTSecureDownloadRenewalManager____lazy_storage___secureKeyLoader] = v26;
      v59 = v26;

      v58 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      sub_1D8D088B4(a6, v22, &qword_1ECAB4538, &unk_1D91949B0);
      v29 = *(v17 + 48);
      aBlock[0] = *v22;
      sub_1D9179A4C();
      v30 = sub_1D9176C2C();
      (*(*(v30 - 8) + 8))(&v22[v29], v30);
      v57 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

      sub_1D8D088B4(a6, v22, &qword_1ECAB4538, &unk_1D91949B0);
      v31 = (*(v61 + 80) + 16) & ~*(v61 + 80);
      v32 = (v18 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
      v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
      v34 = (v33 + 39) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      sub_1D8D6734C(v22, v35 + v31, &qword_1ECAB4538, &unk_1D91949B0);
      v37 = v67;
      v36 = v68;
      *(v35 + v32) = v67;
      v38 = (v35 + v33);
      v40 = v62;
      v39 = v63;
      *v38 = v36;
      v38[1] = v40;
      v38[2] = v39;
      v38[3] = a11;
      v41 = (v35 + v34);
      v42 = v65;
      *v41 = v64;
      v41[1] = v42;
      *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = v60;
      aBlock[4] = sub_1D8F206E4;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8E8A43C;
      aBlock[3] = &block_descriptor_123;
      v43 = _Block_copy(aBlock);
      v44 = v37;
      swift_unknownObjectRetain();

      v46 = v58;
      v45 = v59;
      v47 = v57;
      [v59 startKeyLoadingProcessWithKeyIdentifier:v58 contentAdamId:v57 isRenewal:0 completion:v43];

      _Block_release(v43);
    }

    else
    {
      if (qword_1EDCD0F80 != -1)
      {
        swift_once();
      }

      v48 = sub_1D917744C();
      __swift_project_value_buffer(v48, qword_1EDCD0F88);
      sub_1D8D088B4(a6, v19, &qword_1ECAB4538, &unk_1D91949B0);
      v49 = sub_1D917741C();
      v50 = sub_1D9178CFC();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 141558275;
        *(v51 + 4) = 1752392040;
        *(v51 + 12) = 2049;
        sub_1D8D088B4(v19, v22, &qword_1ECAB4538, &unk_1D91949B0);
        v52 = *v22;
        v53 = *(v17 + 48);
        v54 = sub_1D9176C2C();
        (*(*(v54 - 8) + 8))(&v22[v53], v54);
        sub_1D8D08A50(v19, &qword_1ECAB4538, &unk_1D91949B0);
        *(v51 + 14) = v52;
        _os_log_impl(&dword_1D8CEC000, v49, v50, "Unable to load keyIdentifier for adamID: %{private,mask.hash}lld.", v51, 0x16u);
        MEMORY[0x1DA72CB90](v51, -1, -1);
      }

      else
      {
        sub_1D8D08A50(v19, &qword_1ECAB4538, &unk_1D91949B0);
      }

      v56 = v64;
      v55 = v65;

      sub_1D8F1FFA4(v67, v68, v62, v63, a11, v56, v55);
    }
  }

  else
  {
    a3();
  }
}

double sub_1D8F1C0E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1D91785FC();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);

  return result;
}

double sub_1D8F1C15C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1D917744C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  v12 = sub_1D8F20EA8(a2);
  if (qword_1ECAAFBE0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_1ECAAFBE8);
  swift_beginAccess();
  v14 = *(v6 + 16);
  v50 = v6 + 16;
  v51 = v13;
  v49 = v14;
  v14(v11, v13, v5);

  v15 = sub_1D917741C();
  v16 = sub_1D9178D1C();
  v17 = v12 >> 62;
  if (!os_log_type_enabled(v15, v16))
  {

    goto LABEL_8;
  }

  v18 = swift_slowAlloc();
  *v18 = 134217984;
  if (v17)
  {
    goto LABEL_24;
  }

  v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v20 = v12;
  while (1)
  {
    *(v18 + 4) = v19;
    v21 = v18;

    _os_log_impl(&dword_1D8CEC000, v15, v16, "Renewing %ld HLS keys", v21, 0xCu);
    MEMORY[0x1DA72CB90](v21, -1, -1);

    v12 = v20;
LABEL_8:
    v23 = *(v6 + 8);
    v6 += 8;
    v22 = v23;
    v18 = (v23)(v11, v5);
    if (v17)
    {
      v18 = sub_1D917935C();
      v15 = v18;
      if (!v18)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v15)
      {
        goto LABEL_22;
      }
    }

    if (v15 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_24:
    v20 = v12;
    v43 = v18;
    v19 = sub_1D917935C();
    v18 = v43;
  }

  v25 = 0;
  v46 = v12 & 0xC000000000000001;
  *&v24 = 134217984;
  v44 = v24;
  v47 = v12;
  v48 = v6;
  v45 = v8;
  do
  {
    if (v46)
    {
      v28 = MEMORY[0x1DA72AA90](v25, v12);
    }

    else
    {
      v28 = *(v12 + 8 * v25 + 32);
    }

    v29 = v28;
    v30 = [objc_allocWithZone(MTKeyRequestData) init];
    v31 = [v29 keyUri];
    [v30 setKeyIdentifier_];

    v52 = [v29 storeTrackId];
    sub_1D9179A4C();
    v32 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    [v30 setContentAdamId_];

    v33 = v30;
    MEMORY[0x1DA729B90]();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D917863C();
    }

    sub_1D917869C();
    v49(v8, v51, v5);
    v34 = v29;
    v27 = sub_1D917741C();
    v35 = sub_1D9178D1C();
    if (os_log_type_enabled(v27, v35))
    {
      v36 = a3;
      v37 = v5;
      v38 = v15;
      v39 = v22;
      v40 = swift_slowAlloc();
      *v40 = v44;
      *(v40 + 4) = [v34 storeTrackId];

      _os_log_impl(&dword_1D8CEC000, v27, v35, "Renewing HLS key for episode adam id:%lld", v40, 0xCu);
      v41 = v40;
      v22 = v39;
      v15 = v38;
      v5 = v37;
      a3 = v36;
      v8 = v45;
      MEMORY[0x1DA72CB90](v41, -1, -1);
      v26 = v33;
    }

    else
    {

      v26 = v34;
      v27 = v33;
    }

    v12 = v47;
    ++v25;

    v22(v8, v5);
  }

  while (v15 != v25);
LABEL_22:

  return result;
}

void sub_1D8F1C658(int64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_1D917744C();
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v53 - v16;
  v18 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_44:
    v19 = sub_1D917935C();
  }

  else
  {
    v19 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v59 = a3;
  if (v19 <= a1)
  {
    if (qword_1ECAAFBE0 != -1)
    {
      swift_once();
    }

    v31 = __swift_project_value_buffer(v10, qword_1ECAAFBE8);
    swift_beginAccess();
    (v11[2])(v13, v31, v10);
    v32 = sub_1D917741C();
    v33 = sub_1D9178D1C();
    if (os_log_type_enabled(v32, v33))
    {
      a1 = v5;
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D8CEC000, v32, v33, "Renewals ended. Unlocking renewal.", v34, 2u);
      v35 = v34;
      v5 = a1;
      MEMORY[0x1DA72CB90](v35, -1, -1);
    }

    v57 = a4;

    (v11[1])(v13, v10);
    v5[OBJC_IVAR___MTSecureDownloadRenewalManager_renewalLock] = 0;
    sub_1D8F17534(0, 0);
    a4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (v18)
    {
      v17 = sub_1D917935C();
      if (v17)
      {
LABEL_18:
        v5 = 0;
        v13 = (a2 & 0xC000000000000001);
        v18 = MEMORY[0x1E69E7CC0];
        v11 = &selRef_allPlayedEpsWeight;
        do
        {
          a3 = v5;
          while (1)
          {
            if (v13)
            {
              v36 = MEMORY[0x1DA72AA90](a3, a2);
              v5 = (a3 + 1);
              if (__OFADD__(a3, 1))
              {
                goto LABEL_42;
              }
            }

            else
            {
              if (a3 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_43;
              }

              v36 = *(a2 + 8 * a3 + 32);
              v5 = (a3 + 1);
              if (__OFADD__(a3, 1))
              {
LABEL_42:
                __break(1u);
LABEL_43:
                __break(1u);
                goto LABEL_44;
              }
            }

            v10 = v36;
            v37 = [v10 contentAdamId];
            if (v37)
            {
              break;
            }

            ++a3;
            if (v5 == v17)
            {
              goto LABEL_37;
            }
          }

          v38 = v37;
          v39 = sub_1D917820C();
          ObjectType = v40;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_1D8D4241C(0, *(v18 + 16) + 1, 1, v18);
          }

          a1 = *(v18 + 16);
          v41 = *(v18 + 24);
          v10 = (a1 + 1);
          if (a1 >= v41 >> 1)
          {
            v18 = sub_1D8D4241C((v41 > 1), a1 + 1, 1, v18);
          }

          *(v18 + 16) = v10;
          v42 = v18 + 16 * a1;
          v43 = ObjectType;
          *(v42 + 32) = v39;
          *(v42 + 40) = v43;
        }

        while (v5 != v17);
        goto LABEL_37;
      }
    }

    else
    {
      v17 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_18;
      }
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_37:
    v59(v18);

    return;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1DA72AA90](a1, a2, v15);
  }

  else
  {
    if (a1 < 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      __break(1u);
      return;
    }

    v20 = *(a2 + 8 * a1 + 32);
  }

  a3 = v20;
  v56 = v5;
  if (qword_1ECAAFBE0 != -1)
  {
LABEL_47:
    swift_once();
  }

  v21 = __swift_project_value_buffer(v10, qword_1ECAAFBE8);
  swift_beginAccess();
  (v11[2])(v17, v21, v10);
  v22 = a3;
  v23 = sub_1D917741C();
  v24 = sub_1D9178D1C();

  if (os_log_type_enabled(v23, v24))
  {
    v54 = v24;
    v57 = a4;
    v25 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    aBlock[0] = v53;
    *v25 = 136315138;
    v55 = v22;
    v26 = [v22 contentAdamId];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1D917820C();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    v44 = sub_1D8CFA924(v28, v30, aBlock);

    *(v25 + 4) = v44;
    _os_log_impl(&dword_1D8CEC000, v23, v54, "[Key Loading] Starting from Key RenewalManager for episode adam id %s", v25, 0xCu);
    v45 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1DA72CB90](v45, -1, -1);
    MEMORY[0x1DA72CB90](v25, -1, -1);

    (v11[1])(v17, v10);
    a4 = v57;
    v22 = v55;
  }

  else
  {

    (v11[1])(v17, v10);
  }

  v46 = v56;
  v47 = sub_1D8F156F8();
  v48 = swift_allocObject();
  v48[2] = v22;
  v48[3] = v46;
  v48[4] = a1;
  v48[5] = a2;
  v49 = ObjectType;
  v48[6] = v59;
  v48[7] = a4;
  v48[8] = v49;
  aBlock[4] = sub_1D8F1F0C0;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8E8A43C;
  aBlock[3] = &block_descriptor_68_1;
  v50 = _Block_copy(aBlock);
  v51 = v22;
  v52 = v46;

  [v47 startKeyLoadingProcessWithKeyRequestData:v51 isRenewal:1 completion:v50];
  _Block_release(v50);
}

uint64_t sub_1D8F1CD18(void *a1, void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v103 = a7;
  v101 = a6;
  v102 = a5;
  v100 = a4;
  v109 = a3;
  v9 = sub_1D9177E0C();
  isa = v9[-1].isa;
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1D9177E9C();
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D917744C();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v91 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v91 - v19;
  if (qword_1ECAAFBE0 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v12, qword_1ECAAFBE8);
  swift_beginAccess();
  v22 = *(v13 + 16);
  v99 = v21;
  v98 = v13 + 16;
  v97 = v22;
  v22(v20, v21, v12);
  v23 = a2;
  v24 = sub_1D917741C();
  v25 = sub_1D9178D1C();

  if (os_log_type_enabled(v24, v25))
  {
    v92 = v17;
    v94 = v13;
    v93 = v12;
    v26 = a1;
    v95 = v9;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136315138;
    v29 = [v23 contentAdamId];
    if (v29)
    {
      v30 = v29;
      v31 = sub_1D917820C();
      v33 = v32;
    }

    else
    {
      v31 = 0;
      v33 = 0xE000000000000000;
    }

    a1 = v26;
    v35 = sub_1D8CFA924(v31, v33, aBlock);

    *(v27 + 4) = v35;
    _os_log_impl(&dword_1D8CEC000, v24, v25, "[Key Loading] Ending from Key RenewalManager for episode adam id %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x1DA72CB90](v28, -1, -1);
    MEMORY[0x1DA72CB90](v27, -1, -1);

    v13 = v94;
    v34 = *(v94 + 8);
    v12 = v93;
    (v34)(v20, v93);
    v9 = v95;
    v17 = v92;
    if (!a1)
    {
      goto LABEL_33;
    }

LABEL_10:
    v97(v17, v99, v12);
    v36 = v23;
    v37 = a1;
    v38 = sub_1D917741C();
    v39 = sub_1D9178CFC();

    if (os_log_type_enabled(v38, v39))
    {
      LODWORD(v94) = v39;
      v95 = v38;
      v40 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      aBlock[0] = v93;
      *v40 = 136315394;
      v41 = [v36 contentAdamId];
      if (v41)
      {
        v92 = v36;
        v42 = v17;
        v43 = v34;
        v44 = v13;
        v45 = v12;
        v46 = a1;
        v47 = v9;
        v48 = v41;
        v49 = sub_1D917820C();
        v51 = v50;

        v9 = v47;
        a1 = v46;
        v12 = v45;
        v13 = v44;
        v34 = v43;
        v17 = v42;
        v36 = v92;
      }

      else
      {
        v49 = 0;
        v51 = 0xE000000000000000;
      }

      v52 = sub_1D8CFA924(v49, v51, aBlock);

      *(v40 + 4) = v52;
      *(v40 + 12) = 2080;
      swift_getErrorValue();
      v53 = sub_1D9179D2C();
      v55 = sub_1D8CFA924(v53, v54, aBlock);

      *(v40 + 14) = v55;
      v56 = v95;
      _os_log_impl(&dword_1D8CEC000, v95, v94, "Failed to renew %s with error %s", v40, 0x16u);
      v57 = v93;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v57, -1, -1);
      MEMORY[0x1DA72CB90](v40, -1, -1);

      (v34)(v17, v12);
    }

    else
    {

      (v34)(v17, v12);
    }

    v58 = a1;
    v59 = sub_1D9176A5C();
    v60 = v36;
    v61 = [v36 contentAdamId];
    if (!v61)
    {
      v68 = v58;
LABEL_32:

      goto LABEL_33;
    }

    v62 = v61;
    v92 = v34;
    v93 = v58;
    v63 = [v59 domain];
    v64 = sub_1D917820C();
    v66 = v65;

    if (v64 == 0xD000000000000036 && 0x80000001D91CD080 == v66)
    {

      v67 = v96;
    }

    else
    {
      v69 = sub_1D9179ACC();

      v67 = v96;
      if ((v69 & 1) == 0)
      {
LABEL_31:

        v68 = v93;
        goto LABEL_32;
      }
    }

    if ([v59 code] == -1002)
    {
      v95 = v9;
      v97(v67, v99, v12);
      v70 = v60;
      v71 = sub_1D917741C();
      v72 = sub_1D9178CFC();

      if (os_log_type_enabled(v71, v72))
      {
        v94 = v13;
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        aBlock[0] = v74;
        *v73 = 136315138;
        v75 = [v70 contentAdamId];
        if (v75)
        {
          v76 = v75;
          v77 = sub_1D917820C();
          v79 = v78;
        }

        else
        {
          v77 = 0;
          v79 = 0xE000000000000000;
        }

        v81 = sub_1D8CFA924(v77, v79, aBlock);

        *(v73 + 4) = v81;
        _os_log_impl(&dword_1D8CEC000, v71, v72, "Removing download and key for episode %s without entitlement.", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        MEMORY[0x1DA72CB90](v74, -1, -1);
        MEMORY[0x1DA72CB90](v73, -1, -1);

        v80 = v96;
      }

      else
      {

        v80 = v67;
      }

      (v92)(v80, v12);
      v9 = v95;
      if (*&v109[OBJC_IVAR___MTSecureDownloadRenewalManager_delegate])
      {
        [swift_unknownObjectRetain() removeDownloadOf_];

        swift_unknownObjectRelease();
        goto LABEL_33;
      }
    }

    goto LABEL_31;
  }

  v34 = *(v13 + 8);
  (v34)(v20, v12);
  if (a1)
  {
    goto LABEL_10;
  }

LABEL_33:
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v82 = swift_allocObject();
  v83 = v109;
  v84 = v100;
  v82[2] = v109;
  v82[3] = v84;
  v85 = v101;
  v82[4] = v102;
  v82[5] = v85;
  v82[6] = v103;
  aBlock[4] = sub_1D8F1F0D4;
  aBlock[5] = v82;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_74_0;
  v86 = _Block_copy(aBlock);
  v87 = v83;

  v88 = v104;
  sub_1D9177E4C();
  v110 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  v89 = v106;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v88, v89, v86);
  _Block_release(v86);
  (*(isa + 1))(v89, v9);
  (*(v105 + 8))(v88, v107);
}

void sub_1D8F1D8D8(void *a1, uint64_t a2)
{
  v109 = a2;
  v107 = sub_1D917744C();
  *&v103 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v105 = &v99 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v99 - v7;
  v8 = objc_opt_self();
  v9 = @"MTOfflineKeyData";
  v10 = [v8 truePredicate];
  v11 = MEMORY[0x1E69E7CC0];
  v12 = sub_1D91785DC();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v14 = swift_allocObject();
  v110 = xmmword_1D9189080;
  *(v14 + 16) = xmmword_1D9189080;
  v15 = sub_1D917820C();
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v17 = sub_1D91785DC();

  v106 = a1;
  v18 = [a1 objectDictionariesInEntity:v9 predicate:v10 sortDescriptors:v12 propertiesToFetch:v17 includeObjectId:0];

  if (!v18)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }

  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4608, &qword_1D91AC8D0);
  v19 = sub_1D91785FC();

  v20 = *(v19 + 16);
  v108 = v13;
  if (v20)
  {
    v112[0] = v11;
    sub_1D8E314DC(0, v20, 0);
    v21 = 32;
    v22 = v112[0];
    do
    {
      v23 = *(v19 + v21);
      v24 = sub_1D917820C();
      v26 = v25;
      if (*(v23 + 16) && (v27 = v24, , v28 = sub_1D8D33C70(v27, v26), v30 = v29, , (v30 & 1) != 0))
      {
        sub_1D8CFAD1C(*(v23 + 56) + 32 * v28, &v113);
      }

      else
      {

        v113 = 0u;
        v114 = 0u;
      }

      v112[0] = v22;
      v32 = *(v22 + 16);
      v31 = *(v22 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D8E314DC((v31 > 1), v32 + 1, 1);
        v22 = v112[0];
      }

      *(v22 + 16) = v32 + 1;
      v33 = v22 + 32 * v32;
      v34 = v114;
      *(v33 + 32) = v113;
      *(v33 + 48) = v34;
      v21 += 8;
      --v20;
    }

    while (v20);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  v35 = [objc_opt_self() predicateForDownloaded:0 excludeHidden:0];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D918A530;
  v37 = sub_1D917820C();
  v39 = v38;
  v40 = MEMORY[0x1E69E6158];
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = sub_1D8D34978();
  *(v36 + 32) = v37;
  *(v36 + 40) = v39;
  *(v36 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CA0, &qword_1D91949D0);
  *(v36 + 104) = sub_1D8CF48EC(&qword_1ECAAFEB8, &qword_1ECAB6CA0, &qword_1D91949D0, MEMORY[0x1E6969E28]);
  *(v36 + 72) = v22;

  v41 = sub_1D9178C8C();
  v42 = [v35 AND_];

  v43 = @"MTEpisode";
  v44 = v42;
  v45 = MEMORY[0x1E69E7CC0];
  v46 = sub_1D91785DC();
  v47 = swift_allocObject();
  *(v47 + 16) = v110;
  v48 = sub_1D917820C();
  *(v47 + 56) = v40;
  *(v47 + 32) = v48;
  *(v47 + 40) = v49;
  v50 = sub_1D91785DC();

  v51 = [v106 objectDictionariesInEntity:v43 predicate:v44 sortDescriptors:v46 propertiesToFetch:v50 includeObjectId:0];

  v100 = v44;
  if (!v51)
  {
    goto LABEL_48;
  }

  v52 = sub_1D91785FC();

  v53 = *(v52 + 16);
  if (v53)
  {
    v112[0] = v45;
    sub_1D8E314DC(0, v53, 0);
    v54 = 32;
    v55 = v112[0];
    do
    {
      v56 = *(v52 + v54);
      v57 = sub_1D917820C();
      v59 = v58;
      if (*(v56 + 16) && (v60 = v57, , v61 = sub_1D8D33C70(v60, v59), v63 = v62, , (v63 & 1) != 0))
      {
        sub_1D8CFAD1C(*(v56 + 56) + 32 * v61, &v113);
      }

      else
      {

        v113 = 0u;
        v114 = 0u;
      }

      v112[0] = v55;
      v65 = *(v55 + 16);
      v64 = *(v55 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_1D8E314DC((v64 > 1), v65 + 1, 1);
        v55 = v112[0];
      }

      *(v55 + 16) = v65 + 1;
      v66 = v55 + 32 * v65;
      v67 = v114;
      *(v66 + 32) = v113;
      *(v66 + 48) = v67;
      v54 += 8;
      --v53;
    }

    while (v53);
  }

  else
  {

    v55 = MEMORY[0x1E69E7CC0];
  }

  v68 = *(v55 + 16);
  v69 = v109;
  swift_beginAccess();
  *(v69 + 16) = v68;
  v70 = v107;
  v71 = v103;
  v72 = v102;
  if (qword_1ECAAFBE0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v73 = __swift_project_value_buffer(v70, qword_1ECAAFBE8);
  swift_beginAccess();
  v74 = *(v71 + 16);
  v109 = v71 + 16;
  *&v110 = v73;
  v108 = v74;
  v74(v72, v73, v70);

  v75 = sub_1D917741C();
  v76 = sub_1D9178D1C();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    *&v113 = v78;
    *v77 = 136315138;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB57F0, &unk_1D9190AA0);
    v80 = MEMORY[0x1DA729BD0](v55, v79);
    v82 = sub_1D8CFA924(v80, v81, &v113);

    *(v77 + 4) = v82;
    v71 = v103;
    _os_log_impl(&dword_1D8CEC000, v75, v76, "Found orphaned keys for storeTrackIds: %s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
    MEMORY[0x1DA72CB90](v78, -1, -1);
    MEMORY[0x1DA72CB90](v77, -1, -1);
  }

  v83 = *(v71 + 8);
  v83(v72, v70);
  v85 = v105;
  v72 = *(v55 + 16);
  if (v72)
  {
    v86 = 0;
    v87 = v55 + 32;
    v71 += 8;
    *&v84 = 134217984;
    v103 = v84;
    while (1)
    {
      if (v86 >= *(v55 + 16))
      {
        __break(1u);
        goto LABEL_46;
      }

      sub_1D8D088B4(v87, &v113, &qword_1ECAB57F0, &unk_1D9190AA0);
      if (!*(&v114 + 1))
      {
        break;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      v88 = v111;
      v89 = _s18PodcastsFoundation28SecureDownloadRenewalManagerC16inContextKeyData3for3ctxSo09MTOfflineiJ0CSgs5Int64V_So015NSManagedObjectH0CtFZ_0(v111, v106);
      if (v89)
      {
        v90 = v89;
        [v89 setPendingDeletion_];

        v85 = v105;
      }

      else
      {
        v108(v104, v110, v70);
        v95 = sub_1D917741C();
        v96 = sub_1D9178D1C();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = v103;
          *(v97 + 4) = v88;
          _os_log_impl(&dword_1D8CEC000, v95, v96, "Did not locate orphaned key data for storeTrackId %lld", v97, 0xCu);
          v98 = v97;
          v70 = v107;
          MEMORY[0x1DA72CB90](v98, -1, -1);
        }

        v83(v104, v70);
        v85 = v105;
      }

LABEL_32:
      ++v86;
      v87 += 32;
      if (v72 == v86)
      {
        goto LABEL_44;
      }
    }

    sub_1D8D08A50(&v113, &qword_1ECAB57F0, &unk_1D9190AA0);
LABEL_38:
    v108(v85, v110, v70);
    v91 = sub_1D917741C();
    v92 = sub_1D9178CFC();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_1D8CEC000, v91, v92, "Found orphaned key with invalid storeTrackId type", v93, 2u);
      v94 = v93;
      v70 = v107;
      MEMORY[0x1DA72CB90](v94, -1, -1);
    }

    v83(v85, v70);
    goto LABEL_32;
  }

LABEL_44:
}

id SecureDownloadRenewalManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureDownloadRenewalManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8F1E48C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 8))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

void sub_1D8F1E4A4(uint64_t a1, uint64_t *a2, void (*a3)(double), uint64_t a4)
{
  v6 = *a2;
  v7 = *(*a2 + 16);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  sub_1D8F1B214(v6, v6 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v7 != 0, (2 * v7) | 1, a3, a4);
}

uint64_t sub_1D8F1E554(uint64_t a1, uint64_t *a2, void (*a3)(double), uint64_t a4)
{
  v6 = sub_1D8F4CD70();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRetain();
  sub_1D8F1B214(v6, v8, v10, v12, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t _s18PodcastsFoundation28SecureDownloadRenewalManagerC16inContextKeyData3for3ctxSo09MTOfflineiJ0CSgs5Int64V_So015NSManagedObjectH0CtFZ_0(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D918A530;
  v5 = sub_1D917820C();
  v7 = v6;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1D8D34978();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  *(v4 + 104) = sub_1D8CF3274(&qword_1ECAAFC70, qword_1EDCD0810, 0x1E696AD98, MEMORY[0x1E69E81C8]);
  *(v4 + 72) = v3;
  v8 = @"MTOfflineKeyData";
  v9 = v3;
  v10 = sub_1D9178C8C();
  v11 = sub_1D91785DC();
  v12 = [a2 objectsInEntity:v8 predicate:v10 sortDescriptors:v11];

  if (!v12)
  {
    goto LABEL_11;
  }

  sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
  v13 = sub_1D91785FC();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  result = sub_1D917935C();
  if (!result)
  {
LABEL_10:

LABEL_11:

    return 0;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1DA72AA90](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v13 + 32);
  }

  v16 = v15;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

uint64_t sub_1D8F1E8C4(void *a1)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D9189080;
  v3 = sub_1D917820C();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1D8D34978();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  v6 = @"MTOfflineKeyData";
  v7 = sub_1D9178C8C();
  v8 = MEMORY[0x1E69E7CC0];
  v9 = sub_1D91785DC();
  v10 = [a1 objectsInEntity:v6 predicate:v7 sortDescriptors:v9];

  if (v10)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v11 = sub_1D91785FC();

    v12 = sub_1D8FBEEE4(v11);

    if (v12)
    {
      return v12;
    }
  }

  return v8;
}

void sub_1D8F1EA48(uint64_t a1, uint64_t a2)
{
  if (os_feature_enabled_download_consistency_checks())
  {
    if (qword_1EDCD2AD8 == -1)
    {
      if (_s18PodcastsFoundation25FairPlayRolloutControllerC9isEnabledSbyF_0())
      {
        return;
      }
    }

    else
    {
      swift_once();
      if (_s18PodcastsFoundation25FairPlayRolloutControllerC9isEnabledSbyF_0())
      {
        return;
      }
    }

    v4 = type metadata accessor for BugReport();
    v5 = objc_allocWithZone(v4);
    v5[OBJC_IVAR___PFBugReport_system] = 1;
    v5[OBJC_IVAR___PFBugReport_errorKind] = 2;
    v5[OBJC_IVAR___PFBugReport_forceSubmissionAttempt] = 0;
    v11.receiver = v5;
    v11.super_class = v4;
    v6 = objc_msgSendSuper2(&v11, sel_init);
    v7 = [objc_opt_self() sharedInstance];
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;
    v10[4] = sub_1D8F20BD0;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D91509C0;
    v10[3] = &block_descriptor_171;
    v9 = _Block_copy(v10);

    [v7 submitBugReport:v6 userInfo:v9 withMaximumSubmissionCadence:3600.0];
    _Block_release(v9);
  }
}

uint64_t sub_1D8F1EC28(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9177E0C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D9177E9C();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v16[1] = qword_1ECAB17C0;
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1D8F20C6C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_197;
  v13 = _Block_copy(aBlock);
  v14 = v2;
  sub_1D8D1F93C(a1, a2);
  sub_1D9177E4C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t dispatch thunk of SecureDownloadRenewalManager.requestSecureDeletion(of:completionHandler:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x100))();
}

void sub_1D8F1F0D4()
{
  v1 = v0[3];
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1D8F1C658(v1 + 1, v0[4], v0[5], v0[6]);
  }
}

double sub_1D8F1F110(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D917744C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  if (a1[OBJC_IVAR___MTSecureDownloadRenewalManager_renewalLock] == 1)
  {
    v15 = a2;

    sub_1D8D1F93C(a4, a5);
    sub_1D8F19460(MEMORY[0x1E69E7CC0], v15, a3, a4, a5);

    return result;
  }

  a1[OBJC_IVAR___MTSecureDownloadRenewalManager_renewalLock] = 1;
  v32 = MEMORY[0x1E69E7CC0];
  v17 = objc_opt_self();
  v18 = a2;

  sub_1D8D1F93C(a4, a5);
  v19 = [v17 sharedInstance];
  v20 = [v19 mainOrPrivateContext];

  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = v20;
  v21[4] = &v32;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1D8F20C90;
  *(v22 + 24) = v21;
  aBlock[4] = sub_1D8EDCFE0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D24488;
  aBlock[3] = &block_descriptor_213;
  v23 = _Block_copy(aBlock);
  a1;
  v24 = v20;

  [v24 performBlockAndWait_];
  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (qword_1ECAAFBE0 != -1)
  {
LABEL_11:
    swift_once();
  }

  v25 = __swift_project_value_buffer(v10, qword_1ECAAFBE8);
  swift_beginAccess();
  (*(v11 + 16))(v13, v25, v10);
  v26 = sub_1D917741C();
  v27 = sub_1D9178D1C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1D8CEC000, v26, v27, "Renewals started.", v28, 2u);
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v29 = v32;

  sub_1D8F1C658(0, v29, sub_1D8F20C84, v14);

  return result;
}

id sub_1D8F1F570()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  [v0 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D918A530;
  v2 = sub_1D917820C();
  v3 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v5 = sub_1D917820C();
  *(v1 + 88) = v3;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  v7 = sub_1D91785DC();

  [v0 setPropertiesToFetch_];

  return v0;
}

id sub_1D8F1F680(unint64_t a1)
{
  v2 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v3 = [v2 predicateForDRMKeyRequired];
  v4 = sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
  v5 = sub_1D8CF3274(&qword_1EDCD0808, qword_1EDCD0810, 0x1E696AD98, MEMORY[0x1E69E81B8]);

  v36 = MEMORY[0x1DA72A0A0](0, v4, v5);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D917935C())
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v2 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (v2)
      {
        v8 = MEMORY[0x1DA72AA90](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      *&v31 = sub_1D917820C();
      *(&v31 + 1) = v11;
      v3 = [v9 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v3)
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v31 = 0u;
        v32 = 0u;
      }

      v33[0] = v31;
      v33[1] = v32;
      if (*(&v32 + 1))
      {
        v12 = swift_dynamicCast();
        if ((v12 & 1) == 0)
        {
          v34 = 0;
        }

        v13 = v12 ^ 1;
      }

      else
      {
        sub_1D8D08A50(v33, &qword_1ECAB57F0, &unk_1D9190AA0);
        v34 = 0;
        v13 = 1;
      }

      v35 = v13;

      if ((v35 & 1) == 0)
      {
        sub_1D8EFAB68(v33, [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_]);
      }

      ++v7;
      if (v10 == i)
      {
        v2 = v29;
        v3 = v30;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

LABEL_21:
  v14 = MEMORY[0x1E69E6158];

  v15 = sub_1D9178A8C();

  v16 = [v2 predicateForEpisodeStoreTrackIds_];

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v17 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v17 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D9189060;
  v19 = sub_1D917820C();
  *(v18 + 56) = v14;
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = sub_1D917820C();
  *(v18 + 88) = v14;
  *(v18 + 64) = v21;
  *(v18 + 72) = v22;
  v23 = sub_1D917820C();
  *(v18 + 120) = v14;
  *(v18 + 96) = v23;
  *(v18 + 104) = v24;
  v25 = sub_1D91785DC();

  [v17 setPropertiesToFetch_];

  v26 = [v16 NOT];
  v27 = [v3 AND_];

  [v17 setPredicate_];
  swift_bridgeObjectRelease_n();

  return v17;
}

void sub_1D8F1FAF8(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1D8F1B5C8(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D8F1FBC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9177E0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9177E9C();
  v12 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v19[1] = qword_1ECAB17C0;
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_1D8F205FC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_110;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_1D9177E4C();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_1D8F1FEE0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);

  return sub_1D8F202D8(a1, v1 + v4, v7, v11, v9, v10);
}

uint64_t sub_1D8F1FFA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = a5;
  v26 = a6;
  v12 = sub_1D9177E0C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D9177E9C();
  v16 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB17B8 != -1)
  {
    swift_once();
  }

  v27 = qword_1ECAB17C0;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v20 = v26;
  v19[6] = v25;
  v19[7] = v20;
  v19[8] = a7;
  aBlock[4] = sub_1D8F20AE0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_129;
  v21 = _Block_copy(aBlock);
  v22 = a1;
  swift_unknownObjectRetain();

  sub_1D9177E4C();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v18, v15, v21);
  _Block_release(v21);
  (*(v13 + 8))(v15, v12);
  (*(v16 + 8))(v18, v28);
}

uint64_t sub_1D8F202D8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  if (a1)
  {
    v40 = a3;
    v18 = a1;
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v19 = sub_1D917744C();
    __swift_project_value_buffer(v19, qword_1EDCD0F88);
    sub_1D8D088B4(a2, v17, &qword_1ECAB4538, &unk_1D91949B0);
    v20 = a1;
    v21 = sub_1D917741C();
    v22 = sub_1D9178CFC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v39 = a6;
      v24 = v23;
      v25 = swift_slowAlloc();
      v38 = a5;
      v26 = v25;
      v41 = v25;
      *v24 = 141558531;
      *(v24 + 4) = 1752392040;
      *(v24 + 12) = 2049;
      v37 = a4;
      sub_1D8D088B4(v17, v14, &qword_1ECAB4538, &unk_1D91949B0);
      v27 = *v14;
      v28 = *(v12 + 48);
      v29 = sub_1D9176C2C();
      (*(*(v29 - 8) + 8))(&v14[v28], v29);
      sub_1D8D08A50(v17, &qword_1ECAB4538, &unk_1D91949B0);
      *(v24 + 14) = v27;
      *(v24 + 22) = 2082;
      swift_getErrorValue();
      v30 = sub_1D9179D2C();
      v32 = sub_1D8CFA924(v30, v31, &v41);

      *(v24 + 24) = v32;
      a4 = v37;
      _os_log_impl(&dword_1D8CEC000, v21, v22, "Unable to load key for adamID: %{private,mask.hash}lld, with error: %{public}s.", v24, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      v33 = v26;
      a5 = v38;
      MEMORY[0x1DA72CB90](v33, -1, -1);
      v34 = v24;
      a6 = v39;
      MEMORY[0x1DA72CB90](v34, -1, -1);
    }

    else
    {
      sub_1D8D08A50(v17, &qword_1ECAB4538, &unk_1D91949B0);
    }

    a3 = v40;
  }

  return sub_1D8F1FBC0(a3, a4, a5, a6);
}

void sub_1D8F2060C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1D8F1BB40(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16), *(v1 + v6 + 24), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1D8F206E4(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D8F207B0(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v6 + 16), *(v1 + v6 + 24), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D8F207B0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a3;
  v46 = a4;
  v15 = a9;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4538, &unk_1D91949B0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - v20;
  if (a1)
  {
    v43 = a9;
    v44 = a5;
    v22 = a1;
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v23 = sub_1D917744C();
    __swift_project_value_buffer(v23, qword_1EDCD0F88);
    sub_1D8D088B4(a2, v21, &qword_1ECAB4538, &unk_1D91949B0);
    v24 = a1;
    v25 = sub_1D917741C();
    v26 = sub_1D9178CFC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v42 = a8;
      v28 = v27;
      v29 = swift_slowAlloc();
      v41 = a7;
      v30 = v29;
      v47 = v29;
      *v28 = 141558531;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2049;
      sub_1D8D088B4(v21, v18, &qword_1ECAB4538, &unk_1D91949B0);
      v31 = *v18;
      v32 = *(v16 + 48);
      v33 = sub_1D9176C2C();
      (*(*(v33 - 8) + 8))(&v18[v32], v33);
      sub_1D8D08A50(v21, &qword_1ECAB4538, &unk_1D91949B0);
      *(v28 + 14) = v31;
      *(v28 + 22) = 2082;
      swift_getErrorValue();
      v34 = sub_1D9179D2C();
      v36 = sub_1D8CFA924(v34, v35, &v47);

      *(v28 + 24) = v36;
      _os_log_impl(&dword_1D8CEC000, v25, v26, "Unable to load key for adamID: %{private,mask.hash}lld, with error: %{public}s.", v28, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v37 = v30;
      a7 = v41;
      MEMORY[0x1DA72CB90](v37, -1, -1);
      v38 = v28;
      a8 = v42;
      MEMORY[0x1DA72CB90](v38, -1, -1);
    }

    else
    {
      sub_1D8D08A50(v21, &qword_1ECAB4538, &unk_1D91949B0);
    }

    v15 = v43;
    a5 = v44;
  }

  return sub_1D8F1FFA4(v45, v46, a5, a6, a7, a8, v15);
}

void *sub_1D8F20B1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(a1 + 8);
  v6 = *(v2 + 88);
  v9 = *a1;
  v10 = v5;
  v6(&v8, &v9);
  result = v4(&v11, &v8);
  *a2 = v11;
  return result;
}

void sub_1D8F20C0C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1D91785DC();
  (*(v2 + 16))(v2, v3);
}

id sub_1D8F20C9C()
{
  v0 = sub_1D9176E3C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = @"expirationDate";
  sub_1D9176E2C();
  v5 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  v6 = [objc_opt_self() predicateForDateKey:v4 isLessThanDate:v5];

  (*(v1 + 8))(v3, v0);
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D918A530;
  v8 = sub_1D917820C();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D8D34978();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v13 = sub_1D917820C();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  v15 = sub_1D9178C8C();
  v16 = [v6 AND_];

  return v16;
}

uint64_t sub_1D8F20EA8(void *a1)
{
  v2 = sub_1D8F20C9C();
  v3 = @"MTOfflineKeyData";
  v4 = v2;
  v5 = sub_1D91785DC();
  v6 = [a1 objectsInEntity:v3 predicate:v4 sortDescriptors:v5];

  if (v6)
  {
    sub_1D8CF2154(0, &qword_1EDCD5B70, 0x1E695D620);
    v7 = sub_1D91785FC();

    v8 = sub_1D8FBEEE4(v7);

    if (v8)
    {
      return v8;
    }
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t objectdestroy_152Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));
  if (*(v2 + 32))
  {
  }

  return swift_deallocObject();
}

Swift::Bool __swiftcall URL.isPackagedMedia()()
{
  v0 = sub_1D9176B1C();
  v1 = [v0 isPackagedMedia];

  return v1;
}

Swift::Bool __swiftcall URL.isHLSPlaylist()()
{
  v0 = sub_1D9176B1C();
  v1 = [v0 isHLSPlaylist];

  return v1;
}

Swift::Bool __swiftcall NSURL.isHLSPlaylist()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CA8, &qword_1D91949D8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_1D91772BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = [v1 pathExtension];
  if (!v11)
  {
    goto LABEL_4;
  }

  v12 = v11;
  sub_1D917820C();

  sub_1D917725C();
  sub_1D917722C();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D8F213C8(v4);
LABEL_4:
    v13 = 0;
    return v13 & 1;
  }

  (*(v6 + 32))(v10, v4, v5);
  v14 = sub_1D917721C();
  v16 = v15;
  v17 = [*MEMORY[0x1E6982E90] identifier];
  v18 = sub_1D917820C();
  v20 = v19;

  if (v14 == v18 && v16 == v20)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1D9179ACC();
  }

  (*(v6 + 8))(v10, v5);
  return v13 & 1;
}

uint64_t sub_1D8F213C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CA8, &qword_1D91949D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1D8F21430(void *a1)
{
  v1 = a1;
  v2 = NSURL.isHLSPlaylist()();

  return v2;
}

Swift::Bool __swiftcall NSURL.isPackagedMedia()()
{
  v1 = [v0 pathExtension];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1D917820C();
    v5 = v4;

    if (v3 == 0x676B70766F6DLL && v5 == 0xE600000000000000)
    {

      LOBYTE(v1) = 1;
    }

    else
    {
      v7 = sub_1D9179ACC();

      LOBYTE(v1) = v7 & 1;
    }
  }

  return v1;
}

uint64_t sub_1D8F2150C(void *a1)
{
  v1 = a1;
  v2 = [v1 pathExtension];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D917820C();
    v6 = v5;

    if (v4 == 0x676B70766F6DLL && v6 == 0xE600000000000000)
    {

      v8 = 1;
    }

    else
    {
      v8 = sub_1D9179ACC();
    }
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

PodcastsFoundation::AppDependencyKey_optional __swiftcall AppDependencyKey.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1D917980C();

  if (v1 == 1)
  {
    v2.value = PodcastsFoundation_AppDependencyKey_objectGraph;
  }

  else
  {
    v2.value = PodcastsFoundation_AppDependencyKey_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

unint64_t AppDependencyKey.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD00000000000002FLL;
  }
}

uint64_t sub_1D8F21660(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD00000000000002FLL;
  }

  if (v2)
  {
    v4 = "noDownloadBehavior";
  }

  else
  {
    v4 = "jectGraphAppIntentDependencyKey";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000021;
  }

  else
  {
    v6 = 0xD00000000000002FLL;
  }

  if (*a2)
  {
    v7 = "jectGraphAppIntentDependencyKey";
  }

  else
  {
    v7 = "noDownloadBehavior";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D9179ACC();
  }

  return v9 & 1;
}

double sub_1D8F2170C(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D8F21778(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

void sub_1D8F217F4(char *a2@<X8>)
{
  v3 = sub_1D917980C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D8F21854(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000021;
  }

  else
  {
    v2 = 0xD00000000000002FLL;
  }

  if (*v1)
  {
    v3 = "jectGraphAppIntentDependencyKey";
  }

  else
  {
    v3 = "noDownloadBehavior";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void AMSBagProtocol.createLocalSnapshot(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_1D8D597EC;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D8D5960C;
  v7[3] = &block_descriptor_33;
  v6 = _Block_copy(v7);

  [v2 createSnapshotWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_1D8F21984(uint64_t a1, uint64_t a2)
{
  v3 = [*(v2 + 16) arrayForKey_];
  v4 = [v3 unsafeSnapshotSyncValue];

  if (!v4)
  {
    return 0;
  }

  sub_1D8F21A3C();
  sub_1D91786FC();
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D8F21A3C()
{
  result = qword_1ECAB6CB0;
  if (!qword_1ECAB6CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAB6CB0);
  }

  return result;
}

uint64_t sub_1D8F21A88(uint64_t a1)
{
  v2 = [*(v1 + 16) BOOLForKey_];
  v3 = [v2 unsafeSnapshotSyncValue];

  if (!v3)
  {
    return 2;
  }

  v4 = [v3 BOOLValue];

  return v4;
}

id sub_1D8F21B08(uint64_t a1)
{
  v2 = [*(v1 + 16) integerForKey_];
  v3 = [v2 unsafeSnapshotSyncValue];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 integerValue];

  return v4;
}

uint64_t sub_1D8F21B90(uint64_t a1)
{
  v2 = [*(v1 + 16) stringForKey_];
  v3 = [v2 unsafeSnapshotSyncValue];

  sub_1D91781FC();
  return 0;
}

uint64_t sub_1D8F21D2C(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 16) = v3;
  memset(&v7.retain, 0, 64);
  v7.version = 0;
  v7.info = qword_1ECAFBB50;
  if (__OFADD__(qword_1ECAFBB50, 1))
  {
    __break(1u);
    goto LABEL_6;
  }

  ++qword_1ECAFBB50;
  *(v1 + 24) = a1;
  v4 = CFRunLoopGetCurrent();
  if (!v4)
  {
LABEL_6:
    __break(1u);
LABEL_7:
    __break(1u);
  }

  *(v1 + 32) = v4;
  v5 = CFRunLoopSourceCreate(*MEMORY[0x1E695E4A8], 0, &v7);
  if (!v5)
  {
    goto LABEL_7;
  }

  *(v1 + 40) = v5;
  CFRunLoopAddSource(*(v1 + 32), v5, *MEMORY[0x1E695E8D0]);
  return v1;
}

uint64_t sub_1D8F21E30()
{
  CFRunLoopRemoveSource(*(v0 + 32), *(v0 + 40), *MEMORY[0x1E695E8D0]);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F21EB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8F21F04(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1D8F21F68(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

void sub_1D8F21FA4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177EDC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9177ECC();
  if (sub_1D9177EBC())
  {
    (*(v8 + 8))(v10, v7);
    return;
  }

  v11 = sub_1D9177EAC();
  v12 = sub_1D9177EAC();
  v13 = v11 - v12;
  if (v11 < v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v27 = v8;
  v14 = *(v2 + 16);
  os_unfair_lock_lock(v14 + 4);
  v15 = *(v2 + 24);
  v16 = v15 + 1;
  if (__OFADD__(v15, 1))
  {
LABEL_13:
    __break(1u);
    return;
  }

  *(v2 + 24) = v16;
  os_unfair_lock_unlock(v14 + 4);
  if (v16 < 1)
  {
    (*(v27 + 8))(v10, v7);
  }

  else
  {
    v26 = v7;
    v17 = v13 / 1000000000.0;
    v18 = *MEMORY[0x1E695E8E0];
    v19 = (v4 + 8);
    do
    {
      sub_1D9176E2C();
      sub_1D9176CCC();
      v21 = v20;
      v22 = *v19;
      (*v19)(v6, v3);
      CFRunLoopRunInMode(v18, v17, 1u);
      sub_1D9176E2C();
      sub_1D9176CCC();
      v24 = v23;
      v22(v6, v3);
      v17 = v17 - (v24 - v21);
      if (v17 < 0.0)
      {
        break;
      }

      os_unfair_lock_lock(v14 + 4);
      v25 = *(v2 + 24);
      os_unfair_lock_unlock(v14 + 4);
    }

    while (v25);
    (*(v27 + 8))(v10, v26);
  }
}

void Publisher.pf_combineLatest(_:)(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  sub_1D8D53E90(a2, a2);
  v7 = *(a2 - 8);
  swift_allocObject();
  sub_1D917861C();
  (*(v7 + 16))(v8, v4, a2);
  sub_1D91786FC();
  v9 = sub_1D917864C();

  *a3 = v9;
}

double Publishers.PFCombineLatestMany.receive<A>(subscriber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v51 = sub_1D91777CC();
  v53 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v46 = v45 - v12;
  v13 = swift_getAssociatedTypeWitness();
  v63 = v10;
  v64 = v13;
  v65 = AssociatedTypeWitness;
  v66 = a3;
  WitnessTable = v9;
  v68 = a4;
  v55 = _s19PFCombineLatestManyV5InnerC4SideVMa(0, &v63);
  v49 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = (v45 - v14);
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v52 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v59 = sub_1D91791BC();
  v50 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v45 - v19);
  v21 = *v5;
  v63 = v10;
  v64 = v13;
  v47 = v13;
  v22 = a1;
  v65 = AssociatedTypeWitness;
  v66 = a3;
  v57 = v9;
  WitnessTable = v9;
  v68 = a4;
  v45[1] = a4;
  v23 = _s19PFCombineLatestManyV5InnerCMa(0, &v63);
  v24 = sub_1D91786AC();
  v25 = sub_1D8F24B60(v22, v24);
  v63 = v21;
  v56 = v10;
  v26 = sub_1D91786FC();
  swift_getWitnessTable();
  if (sub_1D9178BEC())
  {
    v66 = v23;
    WitnessTable = swift_getWitnessTable();
    v63 = v25;

    sub_1D917779C();
    __swift_destroy_boxed_opaque_existential_1Tm(&v63);
    v63 = sub_1D917866C();
    sub_1D91777AC();

    v27 = v46;
    (*(*(AssociatedTypeWitness - 8) + 56))(v46, 1, 1, AssociatedTypeWitness);
    sub_1D917778C();

    (v53[1])(v27, v51);
  }

  else
  {
    v53 = v25;
    v63 = v21;
    v29 = swift_getWitnessTable();
    MEMORY[0x1DA729A10](&v62, v26, v29);
    v61 = v62;
    sub_1D917973C();
    sub_1D917970C();
    v30 = sub_1D917972C();
    v31 = (v50 + 32);
    v32 = TupleTypeMetadata2;
    v50 = TupleTypeMetadata2 - 8;
    v51 = v30;
    v33 = (v48 + 32);
    v34 = (v49 + 8);
    for (i = (v48 + 8); ; (*i)(v39, v44))
    {
      v36 = v58;
      sub_1D917971C();
      (*v31)(v20, v36, v59);
      if ((*(*(v32 - 8) + 48))(v20, 1, v32) == 1)
      {
        break;
      }

      v37 = *v20;
      v38 = v20 + *(v32 + 48);
      v39 = v52;
      v40 = v56;
      (*v33)(v52, v38, v56);
      v41 = v53;

      v42 = v54;
      sub_1D8F22A04(v37, v41, v54);
      v43 = v55;
      swift_getWitnessTable();
      sub_1D9177D5C();
      (*v34)(v42, v43);
      v44 = v40;
      v32 = TupleTypeMetadata2;
    }
  }

  return result;
}

uint64_t sub_1D8F22A04@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = a1;
  a3[1] = a2;
  v4 = v3[6];
  v6[0] = v3[5];
  v6[1] = v4;
  v6[2] = v3[7];
  _s19PFCombineLatestManyV5InnerC4SideVMa(0, v6);
  return sub_1D917751C();
}

uint64_t sub_1D8F22A7C(_OWORD *a1)
{
  v3 = sub_1D9179E5C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CB8, qword_1D9194EF8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D9189080;
  *(v13 + 32) = 0xD000000000000012;
  *(v13 + 40) = 0x80000001D91CD2E0;
  *(v13 + 72) = sub_1D917752C();
  __swift_allocate_boxed_opaque_existential_0((v13 + 48));
  v14 = a1[2];
  v17[0] = a1[1];
  v17[1] = v14;
  v17[2] = a1[3];
  _s19PFCombineLatestManyV5InnerCMa(0, v17);
  swift_getWitnessTable();
  sub_1D91774FC();
  v15 = sub_1D9179E4C();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_1D8F386A0(v5);
  return sub_1D9179E8C();
}

void sub_1D8F22CFC(uint64_t a1@<X8>)
{
  *(a1 + 24) = MEMORY[0x1E69E6158];
  strcpy(a1, "CombineLatest");
  *(a1 + 14) = -4864;
}

uint64_t sub_1D8F22DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = sub_1D917752C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D8F22E54()
{
  v1 = *v0;
  v2 = sub_1D9179E5C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CB8, qword_1D9194EF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v11 - v6;
  v12 = v0;
  v8 = sub_1D9179E4C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = v1[6];
  v11[0] = v1[5];
  v11[1] = v9;
  v11[2] = v1[7];
  _s19PFCombineLatestManyV5InnerCMa(0, v11);
  sub_1D8F386A0(v4);

  return sub_1D9179E8C();
}

uint64_t sub_1D8F22FD8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      v4 = sub_1D917867C();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_1D8D73ABC(v3, v5);
        v5 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1D8D740C4(v3);
    return v4;
  }

  return result;
}

void sub_1D8F2305C(char *a1, uint64_t a2)
{
  v7 = *v2;
  if (*(v2 + *(*v2 + 176)) <= a2)
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = a2;
  v4 = a1;
  v5 = *(v2 + *(v7 + 184));
  os_unfair_lock_lock(v5 + 4);
  v8 = *v2;
  if (*(v2 + *(*v2 + 152)) & 1) != 0 || (*(v2 + v8[20]) & 1) != 0 || (*(v2 + v8[21]))
  {
    goto LABEL_8;
  }

  v6 = v8[18];
  swift_beginAccess();
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v9 = *(v2 + v6);
  if (*(v9 + 16) <= v3)
  {
    goto LABEL_24;
  }

  sub_1D8D73ABC(v9 + 40 * v3 + 32, &v16);
  v10 = *&v17[8];
  sub_1D8D740C4(&v16);
  if (v10)
  {
LABEL_8:
    os_unfair_lock_unlock(v5 + 4);
    __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
    sub_1D91777BC();
  }

  else
  {
    sub_1D8CFD9D8(v4, &v16);
    swift_beginAccess();
    v4 = *(v2 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v6) = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_25;
    }

    while (*(v4 + 2) > v3)
    {
      v12 = (v4 + 32);
      sub_1D8D74118(&v16, &v4[40 * v3 + 32]);
      *(v2 + v6) = v4;
      swift_endAccess();
      v3 = *(v4 + 2);

      if (!v3)
      {
LABEL_19:

        os_unfair_lock_unlock(v5 + 4);
        v13 = *(v7 + 120);
        v14 = *(v7 + 80);
        *v17 = *(v7 + 96);
        v15 = *(v7 + 104);
        v16 = v14;
        *&v17[8] = v15;
        v18 = v13;
        *&v17[8] = _s19PFCombineLatestManyV5InnerCMa(0, &v16);
        *&v17[16] = swift_getWitnessTable();
        *&v16 = v2;

        sub_1D917779C();
        __swift_destroy_boxed_opaque_existential_1Tm(&v16);
        return;
      }

      v6 = 0;
      while (v6 < *(v4 + 2))
      {
        sub_1D8D73ABC(v12, &v16);
        v19[0] = v16;
        v19[1] = *v17;
        v20 = *&v17[16];
        if (*&v17[8] != 1)
        {
          if (!*&v17[8])
          {

            os_unfair_lock_unlock(v5 + 4);
            return;
          }

          sub_1D8D740C4(v19);
        }

        ++v6;
        v12 += 40;
        if (v3 == v6)
        {
          goto LABEL_19;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v4 = sub_1D915C34C(v4);
      *(v2 + v6) = v4;
    }

    __break(1u);
  }
}

void sub_1D8F23380(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = sub_1D91791BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  if (*(v2 + v5[22]) <= a2)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = *(v2 + v6[23]);
  os_unfair_lock_lock(v12 + 4);
  v13 = *v2;
  if (*(v2 + *(*v2 + 152)) & 1) != 0 || (*(v2 + *(v13 + 160)) & 1) != 0 || (*(v2 + *(v13 + 168)))
  {
    os_unfair_lock_unlock(v12 + 4);

    goto LABEL_7;
  }

  v14 = *(v7 - 8);
  (*(v14 + 16))(v11, a1, v7);
  (*(v14 + 56))(v11, 0, 1, v7);
  v15 = a2;
  v16 = *(*v2 + 136);
  swift_beginAccess();
  v48 = sub_1D91786FC();
  v17 = v2;
  sub_1D917865C();
  v18 = *(v2 + v16);
  sub_1D8F24788(v15, v18, v8);
  v20 = *(v9 + 40);
  v19 = v9 + 40;
  v21 = v18 + ((*(v19 + 40) + 32) & ~*(v19 + 40));
  v22 = *(v19 + 32);
  v44 = v15;
  v20(v21 + v22 * v15, v11, v8);
  v23 = swift_endAccess();
  v47 = &v41;
  v46 = v17;
  v45 = v16;
  *v52 = *(v17 + v16);
  MEMORY[0x1EEE9AC00](v23);
  v43 = v6[10];
  *(&v41 - 6) = v43;
  *(&v41 - 5) = v7;
  v24 = v6[13];
  v42 = v6[12];
  *(&v41 - 4) = v42;
  *(&v41 - 3) = v24;
  v26 = v6[14];
  v25 = v6[15];
  *(&v41 - 2) = v26;
  *(&v41 - 1) = v25;

  WitnessTable = swift_getWitnessTable();
  LOBYTE(v18) = sub_1D917842C();

  if ((v18 & 1) == 0)
  {
    os_unfair_lock_unlock(v12 + 4);
    goto LABEL_7;
  }

  v47 = &v41;
  v41 = WitnessTable;
  *v52 = *(v46 + v45);
  MEMORY[0x1EEE9AC00](v28);
  *(&v41 - 6) = v43;
  *(&v41 - 5) = v7;
  *(&v41 - 4) = v42;
  *(&v41 - 3) = v24;
  *(&v41 - 2) = v26;
  *(&v41 - 1) = v25;

  v29 = sub_1D917843C();

  os_unfair_lock_unlock(v12 + 4);
  *v52 = v29;
  v30 = sub_1D91777AC();

  sub_1D91777FC();
  v31 = sub_1D91777DC();
  v32 = v44;
  if ((v31 & 1) == 0)
  {
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v30)
      {
        goto LABEL_12;
      }

LABEL_7:
      sub_1D91777EC();
      return;
    }

LABEL_27:
    __break(1u);
    return;
  }

LABEL_12:
  os_unfair_lock_lock(v12 + 4);
  v33 = v46;
  v34 = *(*v46 + 144);
  swift_beginAccess();
  v35 = *(v33 + v34);

  os_unfair_lock_unlock(v12 + 4);
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = 0;
    v38 = v35 + 32;
    do
    {
      if (v37 >= *(v35 + 16))
      {
        goto LABEL_26;
      }

      *v52 = v37;
      sub_1D8D73ABC(v38, &v52[8]);
      if (*(&v53[0] + 1) == 2)
      {
        break;
      }

      v40 = *v52;
      *v52 = *&v52[8];
      *&v52[16] = *&v53[0];
      v53[0] = *(v53 + 8);
      v39 = v52;
      if (v40 != v32)
      {
        sub_1D8D73ABC(v52, &v49);
        if (v50 > 1)
        {
          sub_1D8D6BCE0(&v49, v51);
          __swift_project_boxed_opaque_existential_1(v51, v51[3]);
          sub_1D917782C();
          sub_1D8D740C4(v52);
          __swift_destroy_boxed_opaque_existential_1Tm(v51);
          goto LABEL_16;
        }

        sub_1D8D740C4(v52);
        v39 = &v49;
      }

      sub_1D8D740C4(v39);
LABEL_16:
      ++v37;
      v38 += 40;
    }

    while (v36 != v37);
  }
}

void sub_1D8F239C8(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 96);
  swift_getAssociatedConformanceWitness();
  v7 = sub_1D91777CC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(v2 + *(v5 + 184));
  os_unfair_lock_lock(v14 + 4);
  v15 = *v2;
  if (*(v2 + *(*v2 + 152)) & 1) != 0 || (v16 = *(v15 + 160), (*(v2 + v16)) || (*(v2 + *(v15 + 168)))
  {

LABEL_6:
    os_unfair_lock_unlock(v14 + 4);
    return;
  }

  v24 = *(v15 + 168);
  (*(v8 + 16))(v13, a1, v7);
  v23 = *(v6 - 8);
  if ((*(v23 + 48))(v13, 1, v6) != 1)
  {
    *(v2 + v16) = 1;
    sub_1D8F23D98(a1, a2);
    (*(v8 + 8))(v13, v7);
    return;
  }

  v27 = 0uLL;
  *v28 = 0;
  *&v28[8] = xmmword_1D918BEE0;
  v17 = *(*v2 + 144);
  swift_beginAccess();
  v18 = *(v2 + v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v17) = v18;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = sub_1D915C34C(v18);
  *(v2 + v17) = v18;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (*(v18 + 2) <= a2)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v20 = (v18 + 32);
  sub_1D8D74118(&v27, &v18[40 * a2 + 32]);
  *(v2 + v17) = v18;
  swift_endAccess();
  v21 = *(v18 + 2);
  if (v21)
  {
    while (1)
    {
      sub_1D8D73ABC(v20, &v27);
      v25[0] = v27;
      v25[1] = *v28;
      v26 = *&v28[16];
      if (*&v28[8] != 1)
      {
        break;
      }

      v20 += 40;
      if (!--v21)
      {
        goto LABEL_14;
      }
    }

    if (*&v28[8])
    {
      sub_1D8D740C4(v25);
    }

    goto LABEL_6;
  }

LABEL_14:
  v22 = v23;
  *(v2 + v24) = 1;
  (*(v22 + 56))(v10, 1, 1, v6);
  sub_1D8F23D98(v10, a2);
  (*(v8 + 8))(v10, v7);
}

void sub_1D8F23D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21[1] = a1;
  v5 = *(*v2 + 88);
  v6 = sub_1D91791BC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  (*(*(v5 - 8) + 56))(v21 - v9, 1, 1, v5, v8);
  v11 = *(v3 + *(*v3 + 176));
  v12 = sub_1D8F247DC(v10, v11, v6);
  (*(v7 + 8))(v10, v6);
  v13 = *(*v3 + 136);
  swift_beginAccess();
  *(v3 + v13) = v12;

  v14 = *(*v3 + 144);
  swift_beginAccess();
  v15 = *(v3 + v14);
  memset(v25, 0, 40);

  *(v3 + v14) = sub_1D8F22FD8(v25, v11);

  os_unfair_lock_unlock((*(v3 + *(*v3 + 184)) + 16));
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_11:

    sub_1D917778C();
    return;
  }

  v17 = 0;
  v18 = v15 + 32;
  while (v17 < *(v15 + 16))
  {
    *v25 = v17;
    sub_1D8D73ABC(v18, &v25[8]);
    if (*&v25[32] == 2)
    {
      goto LABEL_11;
    }

    v20 = *v25;
    *v25 = *&v25[8];
    *&v25[16] = *&v25[24];
    *&v25[24] = *&v25[32];
    v19 = v25;
    if (v20 != a2)
    {
      sub_1D8D73ABC(v25, &v22);
      if (v23 > 1)
      {
        sub_1D8D6BCE0(&v22, v24);
        __swift_project_boxed_opaque_existential_1(v24, v24[3]);
        sub_1D91777BC();
        sub_1D8D740C4(v25);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        goto LABEL_5;
      }

      sub_1D8D740C4(v25);
      v19 = &v22;
    }

    sub_1D8D740C4(v19);
LABEL_5:
    ++v17;
    v18 += 40;
    if (v16 == v17)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

double sub_1D8F240E4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = sub_1D91791BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = *(v0 + *(v1 + 184));
  os_unfair_lock_lock(v7 + 4);
  v8 = *(*v0 + 152);
  if (*(v0 + v8))
  {

    os_unfair_lock_unlock(v7 + 4);
  }

  else
  {
    v10 = *(*v0 + 144);
    swift_beginAccess();
    v11 = *(v0 + v10);
    *(v0 + v8) = 1;
    memset(v19, 0, sizeof(v19));
    v20 = xmmword_1D918BEE0;
    v12 = *(v0 + *(*v0 + 176));

    *(v0 + v10) = sub_1D8F22FD8(v19, v12);

    (*(*(v2 - 8) + 56))(v6, 1, 1, v2);
    v13 = sub_1D8F247DC(v6, v12, v3);
    (*(v4 + 8))(v6, v3);
    v14 = *(*v0 + 136);
    swift_beginAccess();
    *(v0 + v14) = v13;

    os_unfair_lock_unlock(v7 + 4);
    v15 = *(v11 + 16);
    if (v15)
    {
      v16 = v11 + 32;
      do
      {
        sub_1D8D73ABC(v16, &v17);
        if (v18 <= 1)
        {
          sub_1D8D740C4(&v17);
        }

        else
        {
          sub_1D8D6BCE0(&v17, v19);
          __swift_project_boxed_opaque_existential_1(v19, v20);
          sub_1D91777BC();
          __swift_destroy_boxed_opaque_existential_1Tm(v19);
        }

        v16 += 40;
        --v15;
      }

      while (v15);
    }
  }

  return result;
}

void sub_1D8F243E0(uint64_t a1)
{
  sub_1D91777FC();
  if ((sub_1D91777DC() & 1) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (a1)
    {
      goto LABEL_4;
    }

    __break(1u);
    return;
  }

LABEL_4:
  v3 = *(v1 + *(*v1 + 184));
  os_unfair_lock_lock(v3 + 4);
  v4 = *v1;
  if (*(v1 + *(*v1 + 152)) & 1) != 0 || (*(v1 + v4[20]) & 1) != 0 || (*(v1 + v4[21]))
  {

    os_unfair_lock_unlock(v3 + 4);
  }

  else
  {
    v5 = v4[18];
    swift_beginAccess();
    v6 = *(v1 + v5);

    os_unfair_lock_unlock(v3 + 4);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v6 + 32;
      do
      {
        sub_1D8D73ABC(v8, &v9);
        if (v10 > 1)
        {
          sub_1D8D6BCE0(&v9, v11);
          __swift_project_boxed_opaque_existential_1(v11, v11[3]);
          sub_1D917782C();
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
        }

        else
        {
          sub_1D8D740C4(&v9);
        }

        v8 += 40;
        --v7;
      }

      while (v7);
    }
  }
}

uint64_t sub_1D8F2459C()
{
  (*(*(*(*v0 + 104) - 8) + 8))(v0 + *(*v0 + 128));

  return v0;
}

uint64_t sub_1D8F24660()
{
  sub_1D8F2459C();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F24788(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D8F247DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D917866C();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1D91786FC();
    return v8;
  }

  return result;
}

uint64_t *sub_1D8F248E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 88);
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  *(v2 + *(v5 + 152)) = 0;
  *(v2 + *(*v2 + 160)) = 0;
  *(v2 + *(*v2 + 168)) = 0;
  v11 = *(*v2 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v12 = swift_allocObject();
  *(v2 + v11) = v12;
  *(v12 + 16) = 0;
  (*(*(*(v5 + 104) - 8) + 16))(v2 + *(*v2 + 128), a1);
  *(v2 + *(*v2 + 176)) = a2;
  (*(*(v6 - 8) + 56))(v10, 1, 1, v6);
  v13 = sub_1D8F247DC(v10, a2, v7);
  (*(v8 + 8))(v10, v7);
  *(v2 + *(*v2 + 136)) = v13;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  *(v2 + *(*v2 + 144)) = sub_1D8F22FD8(v15, a2);
  return v2;
}

uint64_t *sub_1D8F24B60(uint64_t a1, uint64_t a2)
{
  v5 = v2[6];
  v7[0] = v2[5];
  v7[1] = v5;
  v7[2] = v2[7];
  _s19PFCombineLatestManyV5InnerCMa(0, v7);
  swift_allocObject();
  return sub_1D8F248E0(a1, a2);
}

uint64_t sub_1D8F24BCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D8F24C20(uint64_t a1)
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

uint64_t sub_1D8F24CEC(_OWORD *a1)
{
  v6 = 0;
  v9 = MEMORY[0x1E69E6530];
  v1 = a1[2];
  v5[0] = a1[1];
  v5[1] = v1;
  v5[2] = a1[3];
  result = _s19PFCombineLatestManyV5InnerCMa(319, v5);
  if (v3 <= 0x3F)
  {
    v7 = 0;
    v10 = result;
    result = sub_1D917752C();
    if (v4 <= 0x3F)
    {
      v8 = 0;
      v11 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t Publisher.ignoreValue()(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1D9177B9C();
}

void sub_1D8F24F9C(uint64_t a1)
{
  v18[3] = a1;
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 96);
  v5 = type metadata accessor for ProducerInner.State(0, v2, v3, v4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - v10;
  v18[1] = v4;
  v18[2] = v2;
  active = type metadata accessor for ProducerInner.ActiveState(0, v2, v3, v4);
  v13 = *(active - 8);
  MEMORY[0x1EEE9AC00](active);
  v15 = v18 - v14;
  v16 = *(v1 + 2);
  os_unfair_lock_lock(v16 + 4);
  v17 = *(*v1 + 112);
  swift_beginAccess();
  (*(v6 + 16))(v11, &v1[v17], v5);
  if ((*(v13 + 48))(v11, 1, active) == 1)
  {
    (*(v6 + 8))(v11, v5);
    os_unfair_lock_unlock(v16 + 4);
  }

  else
  {
    (*(v13 + 32))(v15, v11, active);
    (*(v13 + 56))(v8, 1, 1, active);
    swift_beginAccess();
    (*(v6 + 40))(&v1[v17], v8, v5);
    swift_endAccess();
    os_unfair_lock_unlock(v16 + 4);
    sub_1D917778C();
    (*(v13 + 8))(v15, active);
  }
}

void sub_1D8F25298()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = sub_1D91791BC();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v27 - v4;
  v29 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v27 - v6;
  v7 = *(v1 + 80);
  v8 = *(v1 + 96);
  v9 = type metadata accessor for ProducerInner.State(0, v7, v2, v8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  active = type metadata accessor for ProducerInner.ActiveState(0, v7, v2, v8);
  v16 = *(active - 8);
  MEMORY[0x1EEE9AC00](active);
  v18 = &v27 - v17;
  v19 = *(v0 + 2);
  os_unfair_lock_lock(v19 + 4);
  v20 = *(*v0 + 112);
  swift_beginAccess();
  (*(v10 + 16))(v14, &v0[v20], v9);
  if ((*(v16 + 48))(v14, 1, active) == 1)
  {
    (*(v10 + 8))(v14, v9);
    os_unfair_lock_unlock(v19 + 4);
  }

  else
  {
    (*(v16 + 32))(v18, v14, active);
    v21 = v28;
    (*(v16 + 56))(v28, 1, 1, active);
    swift_beginAccess();
    (*(v10 + 40))(&v0[v20], v21, v9);
    swift_endAccess();
    os_unfair_lock_unlock(v19 + 4);
    v23 = v30;
    v22 = v31;
    v24 = v32;
    (*(v31 + 16))(v30, &v18[*(active + 44)], v32);
    v25 = v29;
    if ((*(v29 + 48))(v23, 1, v2) == 1)
    {
      (*(v16 + 8))(v18, active);
      (*(v22 + 8))(v23, v24);
    }

    else
    {
      v26 = v27;
      (*(v25 + 32))(v27, v23, v2);
      (*&v18[*(active + 56)])(v26);
      (*(v25 + 8))(v26, v2);
      (*(v16 + 8))(v18, active);
    }
  }
}

uint64_t **sub_1D8F25748()
{
  v1 = *v0;

  v2 = (*v0)[14];
  v3 = type metadata accessor for ProducerInner.State(0, v1[10], v1[11], v1[12]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1D8F25804()
{
  sub_1D8F25748();

  return swift_deallocClassInstance();
}

uint64_t sub_1D8F258B8(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a3 + 24) - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = v9;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a3 + 24) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v4 - 8) + 64) + v11;
  v14 = v12 + 7;
  if (v10 - 1 >= a2)
  {
    goto LABEL_32;
  }

  v15 = ((((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a2 - v10;
  v17 = v15 & 0xFFFFFFF8;
  v18 = v16 + 2;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v15);
      if (v21)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v21 = *(a1 + v15);
      if (v21)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    if (v6 == v10)
    {
      v24 = (*(v5 + 48))(a1, v6, v4);
      goto LABEL_41;
    }

    v25 = (a1 + v13) & ~v11;
    if (v9 != v10)
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      v24 = v27 + 1;
LABEL_41:
      v28 = v24 != 0;
      result = v24 - 1;
      if (result != 0 && v28)
      {
        return result;
      }

      return 0;
    }

    if (v8 >= 2)
    {
      v26 = (*(v7 + 48))(v25);
      if (v26 >= 2)
      {
        v24 = v26 - 1;
        goto LABEL_41;
      }
    }

    return 0;
  }

  if (!v20)
  {
    goto LABEL_32;
  }

  v21 = *(a1 + v15);
  if (!v21)
  {
    goto LABEL_32;
  }

LABEL_29:
  v22 = v21 - 1;
  if (v17)
  {
    v22 = 0;
    v23 = *a1;
  }

  else
  {
    v23 = 0;
  }

  return (v23 | v22) + v10;
}

unsigned int *sub_1D8F25AE0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a4 + 24) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  v12 = *(v9 + 64);
  v13 = v10 - 1;
  if (!v10)
  {
    v13 = 0;
  }

  if (v13 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  v15 = v14 - 1;
  v16 = *(*(v6 - 8) + 64) + v11;
  if (!v10)
  {
    ++v12;
  }

  v17 = (((((((((v16 & ~v11) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 < a3)
  {
    v18 = a3 - v14 + 2;
    if ((((((((((v16 & ~v11) + v12 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v5 = v19;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v15 < a2)
  {
    v20 = a2 - v14;
    if ((((((((((v16 & ~v11) + v12 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v21 = v20 + 1;
    }

    else
    {
      v21 = 1;
    }

    if ((((((((((v16 & ~v11) + v12 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v22 = result;
      bzero(result, (((((((((v16 & ~v11) + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v22;
      *v22 = v20;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + v17) = v21;
      }

      else
      {
        *(result + v17) = v21;
      }
    }

    else if (v5)
    {
      *(result + v17) = v21;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + v17) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_39;
    }

    *(result + v17) = 0;
  }

  else if (v5)
  {
    *(result + v17) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_39;
  }

  if (!a2)
  {
    return result;
  }

LABEL_39:
  if (v8 == v14)
  {
    v23 = *(v7 + 56);

    return v23();
  }

  else
  {
    result = ((result + v16) & ~v11);
    if (v13 == v14)
    {
      v24 = *(v9 + 56);
      v25 = a2 + 2;

      return v24(result, v25, v10);
    }

    else
    {
      v26 = ((result + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (((a2 + 1) & 0x80000000) != 0)
      {
        *v26 = a2 - 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = a2;
      }
    }
  }

  return result;
}

uint64_t Publisher.validator(unlimited:timeout:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v15 - v7;
  if (a1)
  {
    v9 = sub_1D91777FC();
  }

  else
  {
    v9 = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for XCTestCombineValidator(0, AssociatedTypeWitness, v11, AssociatedConformanceWitness);
  sub_1D8D088B4(a2, v8, &qword_1ECAB6CC0, &unk_1D9195030);
  v13 = swift_allocObject();
  XCTestCombineValidator.init(initialDemand:timeout:)(v9, v8);
  v15[1] = v13;
  swift_getWitnessTable();
  sub_1D9177D5C();
  return v13;
}

uint64_t XCTestCombineValidator.__allocating_init(initialDemand:timeout:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  XCTestCombineValidator.init(initialDemand:timeout:)(a1, a2);
  return v4;
}

uint64_t Publisher.validator(secondsUntilTimeout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v18 = a2;
  v4 = sub_1D9177DEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1D9177EDC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  sub_1D9177ECC();
  *v7 = a1;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7F48], v4);
  MEMORY[0x1DA7294F0](v11, v7);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  (*(v9 + 56))(v14, 0, 1, v8);
  v15 = Publisher.validator(unlimited:timeout:)(1, v14, v18, v19);
  sub_1D8D08A50(v14, &qword_1ECAB6CC0, &unk_1D9195030);
  return v15;
}

uint64_t XCTestCombineValidator.currentValues.getter()
{
  os_unfair_lock_lock((*(v0 + *(*v0 + 184)) + 16));
  swift_beginAccess();
  v1 = v0[2];
  v2 = *(v0 + *(*v0 + 184));

  os_unfair_lock_unlock(v2 + 4);
  return v1;
}

void sub_1D8F262F0(uint64_t a1)
{
  os_unfair_lock_lock((*(v1 + *(*v1 + 184)) + 16));
  swift_beginAccess();
  v1[2] = a1;

  os_unfair_lock_unlock((*(v1 + *(*v1 + 184)) + 16));
}

char *XCTestCombineValidator.init(initialDemand:timeout:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 2) = sub_1D9177FFC();
  *&v3[qword_1ECAB6CC8] = MEMORY[0x1E69E7CC0];
  v6 = *(*v3 + 128);
  v7 = sub_1D91777CC();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v8 = &v3[*(*v3 + 136)];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[*(*v3 + 144)];
  *(v9 + 4) = 0;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v10 = *(*v3 + 152);
  *&v3[v10] = 0;
  swift_beginAccess();
  *&v3[v10] = a1;
  sub_1D8D088B4(a2, &v3[qword_1ECAFBB58], &qword_1ECAB6CC0, &unk_1D9195030);
  type metadata accessor for RunLoopSemaphore();
  swift_allocObject();
  *&v3[*(*v3 + 160)] = sub_1D8F21D2C(0);
  swift_allocObject();
  *&v3[*(*v3 + 168)] = sub_1D8F21D2C(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  sub_1D8D08A50(a2, &qword_1ECAB6CC0, &unk_1D9195030);
  *&v3[*(*v3 + 184)] = v11;
  *&v3[*(*v3 + 176)] = 0;
  return v3;
}

char *XCTestCombineValidator.deinit()
{
  XCTestCombineValidator.cancel()();

  sub_1D8D08A50(v0 + qword_1ECAFBB58, &qword_1ECAB6CC0, &unk_1D9195030);

  v1 = *(*v0 + 128);
  sub_1D91777CC();
  v2 = sub_1D91791BC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D8D08A50(v0 + *(*v0 + 144), qword_1ECAB6CD0, &unk_1D9195040);

  return v0;
}

Swift::Void __swiftcall XCTestCombineValidator.cancel()()
{
  v1 = v0 + *(*v0 + 144);
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_1D8CFD9D8(v1, &v2);
    __swift_project_boxed_opaque_existential_1(&v2, *(&v3 + 1));
    sub_1D91777BC();
    __swift_destroy_boxed_opaque_existential_1Tm(&v2);
  }

  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  swift_beginAccess();
  sub_1D8F26884(&v2, v1);
  swift_endAccess();
}

uint64_t sub_1D8F26884(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB6CD0, &unk_1D9195040);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t XCTestCombineValidator.__deallocating_deinit()
{
  XCTestCombineValidator.deinit();

  return swift_deallocClassInstance();
}

BOOL XCTestCombineValidator.isEmpty.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D91777CC();
  v4 = sub_1D91791BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *&v1[*(v2 + 184)];
  os_unfair_lock_lock(v8 + 4);
  swift_beginAccess();
  v13 = *(v1 + 2);
  sub_1D91786FC();
  swift_getWitnessTable();
  if (sub_1D9178BEC())
  {
    v9 = *(*v1 + 128);
    swift_beginAccess();
    (*(v5 + 16))(v7, &v1[v9], v4);
    v10 = (*(*(v3 - 8) + 48))(v7, 1, v3) == 1;
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(v8 + 4);
  return v10;
}

uint64_t XCTestCombineValidator.isFailed.getter()
{
  v1 = *v0;
  v18 = *(*v0 + 88);
  v2 = sub_1D91777CC();
  v3 = sub_1D91791BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  v14 = *(v0 + *(v1 + 184));
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v0 + 128);
  swift_beginAccess();
  (*(v4 + 16))(v6, v0 + v15, v3);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    os_unfair_lock_unlock(v14 + 4);
    return 0;
  }

  v16 = *(v7 + 32);
  v16(v13, v6, v2);
  os_unfair_lock_unlock(v14 + 4);
  v16(v10, v13, v2);
  if ((*(*(v18 - 8) + 48))(v10, 1) == 1)
  {
    return 0;
  }

  (*(v7 + 8))(v10, v2);
  return 1;
}

uint64_t XCTestCombineValidator.isFinished.getter()
{
  v1 = *v0;
  v19 = *(*v0 + 88);
  v2 = sub_1D91777CC();
  v3 = sub_1D91791BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v7 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = *(v0 + *(v1 + 184));
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v0 + 128);
  swift_beginAccess();
  (*(v4 + 16))(v6, v0 + v15, v3);
  if ((*(v7 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    os_unfair_lock_unlock(v14 + 4);
    return 0;
  }

  v16 = *(v7 + 32);
  v16(v13, v6, v2);
  os_unfair_lock_unlock(v14 + 4);
  v16(v10, v13, v2);
  v17 = 1;
  if ((*(*(v19 - 8) + 48))(v10, 1) != 1)
  {
    (*(v7 + 8))(v10, v2);
    return 0;
  }

  return v17;
}

BOOL XCTestCombineValidator.isSubscribed.getter()
{
  v1 = *(v0 + *(*v0 + 184));
  os_unfair_lock_lock(v1 + 4);
  v2 = *(*v0 + 144);
  swift_beginAccess();
  sub_1D8D088B4(v0 + v2, v5, qword_1ECAB6CD0, &unk_1D9195040);
  v3 = v5[3] != 0;
  sub_1D8D08A50(v5, qword_1ECAB6CD0, &unk_1D9195040);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t XCTestCombineValidator.awaitFinish()(uint64_t a1)
{
  v2 = v1;
  v50 = *v1;
  v3 = *(v50 + 88);
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v40 - v4;
  v49 = *(v5 + 96);
  v6 = sub_1D91777CC();
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  v44 = v7;
  v45 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  v48 = v6;
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v40 - v14;
  v15 = &qword_1ECAB6CC0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v40 - v17;
  v19 = sub_1D9177EDC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D088B4(&v2[qword_1ECAFBB58], v18, &qword_1ECAB6CC0, &unk_1D9195030);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1D8D08A50(v18, &qword_1ECAB6CC0, &unk_1D9195030);
    __break(1u);
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);

    sub_1D8F21FA4(v22);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      v28 = type metadata accessor for XCTestCombineValidator.Errors(0, *(v50 + 80), v3, v49);
      swift_getWitnessTable();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_6:
      (*(v20 + 8))(v22, v19);
      return v28;
    }

    v25 = &v2[*(*v2 + 136)];
    v26 = v25[1];
    if (v26)
    {
      v27 = *v25;
      v28 = type metadata accessor for XCTestCombineValidator.Errors(0, *(v50 + 80), v3, v49);
      swift_getWitnessTable();
      swift_allocError();
      *v29 = v27;
      v29[1] = v26;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v30 = *(v20 + 8);

      v30(v22, v19);
      return v28;
    }

    v32 = *(*v2 + 128);
    swift_beginAccess();
    v15 = v44;
    (*(v45 + 16))(v10, &v2[v32], v44);
    v34 = v47;
    v33 = v48;
    if ((*(v47 + 48))(v10, 1, v48) != 1)
    {
      v35 = v46;
      (*(v34 + 32))(v46, v10, v33);
      v36 = v42;
      (*(v34 + 16))(v42, v35, v33);
      v37 = v43;
      if ((*(v43 + 48))(v36, 1, v3) == 1)
      {
        v28 = XCTestCombineValidator.currentValues.getter();
        (*(v47 + 8))(v46, v48);
        (*(v20 + 8))(v22, v19);
        return v28;
      }

      (*(v37 + 32))(v41, v36, v3);
      v28 = type metadata accessor for XCTestCombineValidator.Errors(0, *(v50 + 80), v3, v49);
      swift_getWitnessTable();
      swift_allocError();
      v38 = v41;
      (*(v37 + 16))(v39, v41, v3);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v37 + 8))(v38, v3);
      (*(v47 + 8))(v46, v48);
      goto LABEL_6;
    }
  }

  result = (*(v45 + 8))(v10, v15);
  __break(1u);
  return result;
}

uint64_t XCTestCombineValidator.awaitFailure()(uint64_t a1)
{
  v39 = a1;
  v2 = v1;
  v49 = *v1;
  v3 = *(v49 + 88);
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v39 - v4;
  v48 = *(v5 + 96);
  v6 = sub_1D91777CC();
  v7 = sub_1D91791BC();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v47 = v6;
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v39 - v13;
  v14 = &qword_1ECAB6CC0;
  v15 = &unk_1D9195030;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v39 - v17;
  v19 = sub_1D9177EDC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D088B4(v2 + qword_1ECAFBB58, v18, &qword_1ECAB6CC0, &unk_1D9195030);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1D8D08A50(v18, &qword_1ECAB6CC0, &unk_1D9195030);
    __break(1u);
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);

    sub_1D8F21FA4(v22);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      v28 = type metadata accessor for XCTestCombineValidator.Errors(0, *(v49 + 80), v3, v48);
      swift_getWitnessTable();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
LABEL_6:
      (*(v20 + 8))(v22, v19);
      return v28;
    }

    v25 = (v2 + *(*v2 + 136));
    v26 = v25[1];
    if (v26)
    {
      v27 = *v25;
      v28 = type metadata accessor for XCTestCombineValidator.Errors(0, *(v49 + 80), v3, v48);
      swift_getWitnessTable();
      swift_allocError();
      *v29 = v27;
      v29[1] = v26;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v30 = *(v20 + 8);

      v30(v22, v19);
      return v28;
    }

    v32 = *(*v2 + 128);
    swift_beginAccess();
    v15 = v43;
    v14 = v44;
    (v43[2])(v9, v2 + v32, v44);
    v33 = v45;
    if ((*(v45 + 48))(v9, 1, v47) != 1)
    {
      v34 = v46;
      v35 = v47;
      (*(v33 + 32))(v46, v9, v47);
      v36 = v41;
      (*(v33 + 16))(v41, v34, v35);
      v37 = v42;
      if ((*(v42 + 48))(v36, 1, v3) != 1)
      {
        v38 = v40;
        (*(v37 + 32))();
        (*(v37 + 16))(v39, v38, v3);
        v28 = XCTestCombineValidator.currentValues.getter();
        (*(v37 + 8))(v40, v3);
        (*(v33 + 8))(v46, v47);
        (*(v20 + 8))(v22, v19);
        return v28;
      }

      v28 = type metadata accessor for XCTestCombineValidator.Errors(0, *(v49 + 80), v3, v48);
      swift_getWitnessTable();
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v33 + 8))(v34, v47);
      goto LABEL_6;
    }
  }

  result = v15[1](v9, v14);
  __break(1u);
  return result;
}

uint64_t XCTestCombineValidator.awaitInput()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v55 = *v2;
  v4 = *(v55 + 88);
  v47 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v43 - v5;
  v54 = *(v6 + 96);
  v7 = sub_1D91777CC();
  v8 = sub_1D91791BC();
  v48 = *(v8 - 8);
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v52 = v7;
  v53 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v43 - v14;
  v15 = &qword_1ECAB6CC0;
  v16 = &unk_1D9195030;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v43 - v18;
  v20 = sub_1D9177EDC();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8D088B4(v3 + qword_1ECAFBB58, v19, &qword_1ECAB6CC0, &unk_1D9195030);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    goto LABEL_17;
  }

  (*(v21 + 32))(v23, v19, v20);

  sub_1D8F21FA4(v23);
  v25 = v24;

  if (v25)
  {
    v26 = (v3 + *(*v3 + 136));
    v27 = v26[1];
    if (v27)
    {
      v28 = *v26;
      type metadata accessor for XCTestCombineValidator.Errors(0, *(v55 + 80), v4, v54);
      swift_getWitnessTable();
      swift_allocError();
      *v29 = v28;
      v29[1] = v27;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v30 = *(v21 + 8);

      return v30(v23, v20);
    }

    v43 = *(*v3 + 176);
    v44 = *(v3 + v43);
    XCTestCombineValidator.currentValues.getter();
    v15 = *(v55 + 80);
    v16 = sub_1D91786AC();

    if (v44 == v16)
    {
      v55 = v15;
      v32 = *(*v3 + 128);
      swift_beginAccess();
      v15 = v48;
      v16 = v49;
      (*(v48 + 16))(v10, v3 + v32, v49);
      v34 = v52;
      v33 = v53;
      if ((*(v53 + 48))(v10, 1, v52) != 1)
      {
        v35 = v51;
        (*(v33 + 32))();
        v36 = v46;
        (*(v33 + 16))(v46, v35, v34);
        v37 = v47;
        if ((*(v47 + 48))(v36, 1, v4) == 1)
        {
          type metadata accessor for XCTestCombineValidator.Errors(0, v55, v4, v54);
          swift_getWitnessTable();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v53 + 8))(v35, v34);
        }

        else
        {
          v41 = v45;
          (*(v37 + 32))();
          type metadata accessor for XCTestCombineValidator.Errors(0, v55, v4, v54);
          swift_getWitnessTable();
          swift_allocError();
          (*(v37 + 16))(v42, v41, v4);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v37 + 8))(v41, v4);
          (*(v53 + 8))(v51, v52);
        }

        return (*(v21 + 8))(v23, v20);
      }

LABEL_18:
      result = (v15[1])(v10, v16);
      __break(1u);
      return result;
    }

    v38 = v43;
    v10 = *(v3 + v43);
    XCTestCombineValidator.currentValues.getter();
    sub_1D917872C();

    XCTestCombineValidator.currentValues.getter();
    v39 = *(v3 + v38);

    v40 = __OFADD__(v39, 1);
    v19 = (v39 + 1);
    if (!v40)
    {
      result = (*(v21 + 8))(v23, v20);
      *(v3 + v38) = v19;
      return result;
    }

    __break(1u);
LABEL_17:
    sub_1D8D08A50(v19, &qword_1ECAB6CC0, &unk_1D9195030);
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for XCTestCombineValidator.Errors(0, *(v55 + 80), v4, v54);
  swift_getWitnessTable();
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return (*(v21 + 8))(v23, v20);
}

void XCTestCombineValidator.awaitInput(_:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v7 - v3;
  v5 = sub_1D917866C();
  v7[1] = v5;
  if (a1 >= 1)
  {
    v6 = a1 + 1;
    while (1)
    {
      XCTestCombineValidator.awaitInput()(v5, v4);
      if (v1)
      {
        break;
      }

      sub_1D91786FC();
      v5 = sub_1D91786BC();
      if (--v6 <= 1)
      {
        return;
      }
    }
  }
}

void XCTestCombineValidator.receive(subscription:)(void *a1)
{
  v3 = *(v1 + *(*v1 + 184));
  os_unfair_lock_lock(v3 + 4);
  v4 = *(*v1 + 144);
  swift_beginAccess();
  sub_1D8D088B4(v1 + v4, &v10, qword_1ECAB6CD0, &unk_1D9195040);
  v5 = v12;
  sub_1D8D08A50(&v10, qword_1ECAB6CD0, &unk_1D9195040);
  if (v5)
  {
    os_unfair_lock_unlock(v3 + 4);
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD000000000000022, 0x80000001D91CD300);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6138, &qword_1D9192158);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](39, 0xE100000000000000);
    v6 = v11;
    v7 = (v1 + *(*v1 + 136));
    *v7 = v10;
    v7[1] = v6;

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D91777BC();
    return;
  }

  sub_1D8CFD9D8(a1, &v10);
  swift_beginAccess();
  sub_1D8F26884(&v10, v1 + v4);
  swift_endAccess();
  v8 = *(*v1 + 152);
  swift_beginAccess();
  sub_1D91777FC();
  if (sub_1D91777DC())
  {
    os_unfair_lock_unlock(v3 + 4);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D91777FC();
  }

  else
  {
    v9 = *(v1 + v8);
    sub_1D91777FC();
    if ((sub_1D91777DC() & 1) == 0)
    {
      if (v9 < 0)
      {
        __break(1u);
        return;
      }

      if (!v9)
      {
        os_unfair_lock_unlock(v3 + 4);
        return;
      }
    }

    os_unfair_lock_unlock(v3 + 4);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  }

  sub_1D917782C();
}

void XCTestCombineValidator.receive(_:)(uint64_t a1)
{
  v2 = v1;
  v42 = a1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v37 - v5;
  v6 = sub_1D9176E3C();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = sub_1D91777CC();
  v14 = sub_1D91791BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - v16;
  v18 = *&v2[*(v3 + 184)];
  os_unfair_lock_lock(v18 + 4);
  v19 = *(*v2 + 128);
  swift_beginAccess();
  (*(v15 + 16))(v17, &v2[v19], v14);
  LODWORD(v19) = (*(*(v13 - 8) + 48))(v17, 1, v13);
  (*(v15 + 8))(v17, v14);
  if (v19 != 1)
  {
    os_unfair_lock_unlock(v18 + 4);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD000000000000010, 0x80000001D91CD330);
    sub_1D9179A8C();
    MEMORY[0x1DA7298F0](0xD000000000000022, 0x80000001D91CD350);
    v35 = v44;
    v36 = &v2[*(*v2 + 136)];
    *v36 = v43;
    *(v36 + 1) = v35;

LABEL_12:
    sub_1D91777EC();
    return;
  }

  v20 = v18;
  (*(v9 + 16))(v12, v42, v8);
  swift_beginAccess();
  sub_1D91786FC();
  sub_1D91786BC();
  swift_endAccess();
  v21 = v38;
  sub_1D9176E2C();
  v22 = qword_1ECAB6CC8;
  v23 = *&v2[qword_1ECAB6CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v2[v22] = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_1D8ECC990(0, v23[2] + 1, 1, v23);
    *&v2[v22] = v23;
  }

  v25 = v20;
  v27 = v23[2];
  v26 = v23[3];
  if (v27 >= v26 >> 1)
  {
    v23 = sub_1D8ECC990((v26 > 1), v27 + 1, 1, v23);
  }

  v23[2] = v27 + 1;
  (*(v39 + 32))(v23 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v27, v21, v40);
  *&v2[v22] = v23;
  os_unfair_lock_unlock(v25 + 4);
  v28 = v41;
  sub_1D8D088B4(&v2[qword_1ECAFBB58], v41, &qword_1ECAB6CC0, &unk_1D9195030);
  v29 = sub_1D9177EDC();
  v30 = (*(*(v29 - 8) + 48))(v28, 1, v29);
  sub_1D8D08A50(v28, &qword_1ECAB6CC0, &unk_1D9195030);
  if (v30 == 1)
  {
    goto LABEL_12;
  }

  v31 = *&v2[*(*v2 + 168)];
  v32 = *(v31 + 16);

  os_unfair_lock_lock(v32 + 4);
  v33 = *(v31 + 24);
  v34 = v33 - 1;
  if (!__OFSUB__(v33, 1))
  {
    *(v31 + 24) = v34;
    os_unfair_lock_unlock((*(v31 + 16) + 16));
    if (!v34)
    {
      CFRunLoopSourceSignal(*(v31 + 40));
      CFRunLoopWakeUp(*(v31 + 32));
    }

    goto LABEL_12;
  }

  __break(1u);
}

void XCTestCombineValidator.receive(completion:)(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6CC0, &unk_1D9195030);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v27 - v5;
  v6 = sub_1D91777CC();
  v7 = sub_1D91791BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = *(v1 + *(v3 + 184));
  os_unfair_lock_lock(v14 + 4);
  v15 = *(*v1 + 128);
  swift_beginAccess();
  (*(v8 + 16))(v13, v1 + v15, v7);
  v16 = *(v6 - 8);
  LODWORD(v3) = (*(v16 + 48))(v13, 1, v6);
  (*(v8 + 8))(v13, v7);
  if (v3 == 1)
  {
    (*(v16 + 16))(v10, v29, v6);
    (*(v16 + 56))(v10, 0, 1, v6);
    swift_beginAccess();
    (*(v8 + 40))(v2 + v15, v10, v7);
    swift_endAccess();
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    v17 = *(*v2 + 144);
    swift_beginAccess();
    sub_1D8F26884(v30, v2 + v17);
    swift_endAccess();
    os_unfair_lock_unlock(v14 + 4);
    v18 = v28;
    sub_1D8D088B4(v2 + qword_1ECAFBB58, v28, &qword_1ECAB6CC0, &unk_1D9195030);
    v19 = sub_1D9177EDC();
    v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
    sub_1D8D08A50(v18, &qword_1ECAB6CC0, &unk_1D9195030);
    if (v20 != 1)
    {
      v21 = *(v2 + *(*v2 + 160));
      v22 = *(v21 + 16);

      os_unfair_lock_lock(v22 + 4);
      v23 = *(v21 + 24);
      v24 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        __break(1u);
      }

      else
      {
        *(v21 + 24) = v24;
        os_unfair_lock_unlock((*(v21 + 16) + 16));
        if (!v24)
        {
          CFRunLoopSourceSignal(*(v21 + 40));
          CFRunLoopWakeUp(*(v21 + 32));
        }
      }
    }
  }

  else
  {
    os_unfair_lock_unlock(v14 + 4);
    *&v30[0] = 0;
    *(&v30[0] + 1) = 0xE000000000000000;
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD000000000000015, 0x80000001D91CD380);
    sub_1D9179A8C();
    MEMORY[0x1DA7298F0](0xD000000000000022, 0x80000001D91CD350);
    v25 = *(&v30[0] + 1);
    v26 = (v2 + *(*v2 + 136));
    *v26 = *&v30[0];
    v26[1] = v25;
  }
}

void XCTestCombineValidator.request(_:)(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 184));
  os_unfair_lock_lock(v3 + 4);
  v4 = *(*v1 + 144);
  swift_beginAccess();
  sub_1D8D088B4(v1 + v4, &v9, qword_1ECAB6CD0, &unk_1D9195040);
  if (v10)
  {
    sub_1D8D6BCE0(&v9, v11);
    os_unfair_lock_unlock(v3 + 4);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_1D917782C();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    return;
  }

  sub_1D8D08A50(&v9, qword_1ECAB6CD0, &unk_1D9195040);
  v5 = *(*v1 + 152);
  swift_beginAccess();
  v6 = *(v1 + v5);
  sub_1D91777FC();
  if (sub_1D91777DC())
  {
    goto LABEL_12;
  }

  sub_1D91777FC();
  v7 = sub_1D91777DC();
  v8 = sub_1D91777FC();
  if ((v7 & 1) == 0)
  {
    if ((sub_1D91777DC() & 1) == 0)
    {
      if ((v6 | a1) < 0)
      {
        __break(1u);
        goto LABEL_15;
      }

      v8 = v6 + a1;
      if (!__OFADD__(v6, a1))
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }

    v8 = sub_1D91777FC();
  }

LABEL_11:
  *(v1 + v5) = v8;
LABEL_12:
  swift_endAccess();
  os_unfair_lock_unlock(v3 + 4);
}