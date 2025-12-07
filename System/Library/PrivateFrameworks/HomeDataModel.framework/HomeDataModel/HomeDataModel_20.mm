uint64_t sub_1D18A6214(uint64_t a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v10, qword_1EE07DCE0);
  *v5 = [a2 home];
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  return (*(v7 + 8))(v9, v6);
}

void (*HMAccessory.customNearbyAccessoryIdentifiers.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = HMAccessory.customNearbyAccessoryIdentifiers.getter();
  return sub_1D18A6414;
}

void sub_1D18A6414(uint64_t *a1, char a2)
{
  if (a2)
  {

    HMAccessory.customNearbyAccessoryIdentifiers.setter(v2);
  }

  else
  {
    HMAccessory.customNearbyAccessoryIdentifiers.setter(*a1);
  }
}

unint64_t sub_1D18A646C()
{
  result = qword_1EC645BB0;
  if (!qword_1EC645BB0)
  {
    sub_1D1741B10(255, &qword_1EC645BA8, 0x1E696AEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645BB0);
  }

  return result;
}

uint64_t HMActionSet.shouldShowInDashboard.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  v4 = [v0 applicationData];
  v5 = sub_1D1E677EC();
  v6 = [v4 objectForKeyedSubscript_];

  if (v6 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

void HMActionSet.shouldShowInDashboard.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18A6800;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_11;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*HMActionSet.shouldShowInDashboard.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HMActionSet.shouldShowInDashboard.getter() & 1;
  return sub_1D18A6880;
}

BOOL HMActionSet.hasSetDashboardVisibility.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    swift_unknownObjectRelease();
  }

  return v3 != 0;
}

double HMActionSet.icon.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = [v1 applicationData];
  v4 = sub_1D1E677EC();
  v5 = [v3 objectForKeyedSubscript_];

  if (v5 && (v11 = v5, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), (swift_dynamicCast() & 1) != 0))
  {
    v12 = v10;
    v13[0] = 2;
    *&v13[8] = v10;
    v13[24] = 2;
    v14 = v10;
    v15[0] = 2;
    *&v15[8] = v10;
    v15[24] = 2;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v6 = [v1 actionSetType];
    sub_1D1E6781C();

    HMActionSet.ActionSetKind.init(rawValue:)(&v10);
    Icon.init(actionSetKind:)(&v10, &v12);
  }

  v7 = v14;
  a1[2] = *&v13[16];
  a1[3] = v7;
  a1[4] = *v15;
  *(a1 + 73) = *&v15[9];
  result = *&v12;
  v9 = *v13;
  *a1 = v12;
  a1[1] = v9;
  return result;
}

void HMActionSet.icon.setter(uint64_t *a1)
{
  v2 = [v1 applicationData];
  v3 = sub_1D1E677EC();
  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];

  v5 = [v1 applicationData];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v9[4] = sub_1D18A9C34;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D1C40BA8;
  v9[3] = &block_descriptor_6_1;
  v7 = _Block_copy(v9);
  v8 = v1;

  [v8 updateApplicationData:v5 completionHandler:v7];
  _Block_release(v7);
}

uint64_t (*HMActionSet.icon.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x188uLL);
  }

  *a1 = v3;
  *(v3 + 384) = v1;
  HMActionSet.icon.getter(v3);
  return sub_1D18A9C30;
}

uint64_t HMActionSet.iconTint.getter()
{
  v1 = [v0 applicationData];
  v2 = [v1 dictionary];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  v3 = sub_1D1E675FC();

  if (*(v3 + 16) && (sub_1D171D2F0(0xD00000000000001FLL, 0x80000001D1EBB8B0), (v4 & 1) != 0))
  {
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643420, &qword_1D1E718A0);
    if (swift_dynamicCast())
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {

    v5 = 0;
  }

  return Color.init(_:)(v5);
}

unint64_t sub_1D18A6E38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BE8, &qword_1D1E7BE00);
    v2 = sub_1D1E68BCC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v4 = a1 + 64;
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
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v31 >= v25)
      {
LABEL_37:

        return v2;
      }

      v7 = *(v4 + 8 * v31);
      ++v26;
      if (v7)
      {
        while (1)
        {
          v32 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v33 = v32 | (v31 << 6);
          v34 = *(*(a1 + 48) + 8 * v33);
          sub_1D1741970(*(a1 + 56) + 32 * v33, &v47 + 8);
          *&v47 = v34;
          v44 = v47;
          v45 = v48;
          v46 = v49;
          sub_1D16EEE38((&v44 + 8), &v40);
          v35 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
          swift_dynamicCast();
          sub_1D16EEE38((v42 + 8), (v43 + 8));
          sub_1D16EEE38((v43 + 8), v41);
          sub_1D16EEE38(v41, v43);
          result = sub_1D171D368(v34);
          if (v36)
          {
            v27 = *(v2 + 48);
            v28 = *(v27 + 8 * result);
            *(v27 + 8 * result) = v34;
            v29 = result;

            v30 = (*(v2 + 56) + 32 * v29);
            __swift_destroy_boxed_opaque_existential_1(v30);
            result = sub_1D16EEE38(v43, v30);
            v26 = v31;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (*(v2 + 16) >= *(v2 + 24))
            {
              goto LABEL_41;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v34;
            result = sub_1D16EEE38(v43, (*(v2 + 56) + 32 * result));
            v37 = *(v2 + 16);
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_42;
            }

            *(v2 + 16) = v39;
            v26 = v31;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v31 = v26;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = __clz(__rbit64(v7)) | (v12 << 6);
      v16 = *(*(a1 + 48) + 8 * v15);
      sub_1D1741970(*(a1 + 56) + 32 * v15, &v47 + 8);
      *&v47 = v16;
      v44 = v47;
      v45 = v48;
      v46 = v49;
      sub_1D16EEE38((&v44 + 8), v41);
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      swift_dynamicCast();
      sub_1D16EEE38((v42 + 8), (v43 + 8));
      sub_1D16EEE38((v43 + 8), v42);
      result = sub_1D1E684EC();
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v7 &= v7 - 1;
      *(*(v2 + 48) + 8 * v13) = v16;
      result = sub_1D16EEE38(v42, (*(v2 + 56) + 32 * v13));
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_37;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_1D18A72A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
    v2 = sub_1D1E68BCC();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_1D16EEE38(&v22, v24);
        sub_1D16EEE38(v24, v25);
        sub_1D16EEE38(v25, &v23);
        result = sub_1D171D2F0(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_1D16EEE38(&v23, v11);
          v8 = v12;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_1D16EEE38(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D18A74EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A58, &qword_1D1E7E6F0);
    v2 = sub_1D1E68BCC();
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

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v9 << 6);
    v13 = *(*(a1 + 48) + v12);
    sub_1D1741970(*(a1 + 56) + 32 * v12, v27 + 8);
    LOBYTE(v27[0]) = v13;
    v25[0] = v27[0];
    v25[1] = v27[1];
    v26 = v28;
    LOBYTE(v24[0]) = v13;
    sub_1D16EEE38((v25 + 8), &v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    swift_dynamicCast();
    v21 = v24[0];
    sub_1D16EEE38((v24 + 8), v22);
    sub_1D16EEE38(v22, v24);
    sub_1D1E6920C();
    LOBYTE(v23) = v21;
    CharacteristicKind.rawValue.getter();
    sub_1D1E678EC();

    result = sub_1D1E6926C();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    *(*(v2 + 48) + v10) = v21;
    result = sub_1D16EEE38(v24, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v9;
    if (v5)
    {
      v9 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1D18A77C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BF0, &unk_1D1E7E8B0);
    v2 = sub_1D1E68BCC();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_1D1741970(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_1D16EEE38(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
        swift_dynamicCast();
        sub_1D16EEE38(&v23, v25);
        sub_1D16EEE38(v25, v26);
        sub_1D16EEE38(v26, &v24);
        result = sub_1D171D2F0(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_1D16EEE38(&v24, v10);
          v8 = v11;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_1D16EEE38(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1D18A7A4C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
    v2 = sub_1D1E68BCC();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        sub_1D1741970(*(a1 + 56) + 32 * v13, v29);
        *&v28 = v15;
        *(&v28 + 1) = v16;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v17 = v28;
        sub_1D16EEE38(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
        swift_dynamicCast();
        sub_1D16EEE38(&v23, v25);
        sub_1D16EEE38(v25, v26);
        sub_1D16EEE38(v26, &v24);
        result = sub_1D171D2F0(v17, *(&v17 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v17;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_1D16EEE38(&v24, v10);
          v8 = v11;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          result = sub_1D16EEE38(&v24, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1D18A7CD8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BF8, &qword_1D1E7BE08);
    v2 = sub_1D1E68BCC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  v4 = a1 + 64;
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
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v23 = v8 >> 6;

    v24 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
LABEL_36:

        return v2;
      }

      v7 = *(v4 + 8 * v28);
      ++v24;
      if (v7)
      {
        while (1)
        {
          v29 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v30 = *(*(a1 + 48) + ((v28 << 9) | (8 * v29)));

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
          swift_dynamicCast();
          result = sub_1D171DC34(v30);
          if (v31)
          {
            v25 = *(v2 + 48);
            v26 = *(v25 + 8 * result);
            *(v25 + 8 * result) = v30;
            v27 = result;

            *(*(v2 + 56) + 8 * v27) = v33;

            v24 = v28;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v32 = *(v2 + 16);
            if (v32 >= *(v2 + 24))
            {
              goto LABEL_40;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v30;
            *(*(v2 + 56) + 8 * result) = v33;
            *(v2 + 16) = v32 + 1;
            v24 = v28;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v28 = v24;
        }
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 64;

    v12 = 0;
    while (v7)
    {
LABEL_16:
      v15 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v7)))));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      swift_dynamicCast();
      result = sub_1D1E684EC();
      v16 = -1 << *(v2 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v13 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v13 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v2 + 48) + 8 * v13) = v15;
      *(*(v2 + 56) + 8 * v13) = v33;
      ++*(v2 + 16);
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v9)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v14);
      ++v12;
      if (v7)
      {
        v12 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1D18A80B0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BF0, &unk_1D1E7E8B0);
    v2 = sub_1D1E68BCC();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
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
        sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);

        v19 = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
        swift_dynamicCast();
        sub_1D16EEE38(&v25, v27);
        sub_1D16EEE38(v27, v28);
        sub_1D16EEE38(v28, &v26);
        result = sub_1D171D2F0(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1(v11);
          result = sub_1D16EEE38(&v26, v11);
          v8 = v12;
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

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_1D16EEE38(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D18A8328(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642958, &unk_1D1EB2A00);
  v61 = *(v2 - 8);
  v62 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v45 - v3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC0, &qword_1D1E7BDF0);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v45 - v4;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC8, &unk_1D1EB2A50);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v45 - v5;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BD0, &qword_1D1E96B30);
  v47 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v7 = &v45 - v6;
  v67 = sub_1D1E66A7C();
  v63 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BD8, &qword_1D1E7BDF8);
  v9 = MEMORY[0x1EEE9AC00](v53);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v45 - v11;
  v64 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BE0, &unk_1D1E7E600);
    v12 = sub_1D1E68BCC();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC8];
  }

  v13 = v64 + 64;
  v14 = 1 << *(v64 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v64 + 64);
  v17 = (v14 + 63) >> 6;
  v49 = v63 + 16;
  v68 = v63 + 32;

  v19 = 0;
  v46 = v13;
  v54 = v7;
  v50 = v12;
  v45 = v17;
  v48 = v12 + 64;
  v20 = v67;
  while (v16)
  {
LABEL_15:
    v23 = __clz(__rbit64(v16)) | (v19 << 6);
    v24 = v63;
    v25 = v64;
    v26 = *(v64 + 48);
    v66 = *(v63 + 72);
    v27 = v51;
    (*(v63 + 16))(v51, v26 + v66 * v23, v20);
    v28 = v53;
    sub_1D18A9B8C(*(v25 + 56) + *(v61 + 72) * v23, &v27[*(v53 + 48)]);
    v29 = v27;
    v30 = v52;
    sub_1D1741A90(v29, v52, &qword_1EC645BD8, &qword_1D1E7BDF8);
    v31 = *(v28 + 48);
    v32 = *(v59 + 48);
    v33 = *(v24 + 32);
    v34 = v58;
    v33(v58, v30, v20);
    sub_1D1741A90(v30 + v31, v60, &qword_1EC642958, &unk_1D1EB2A00);
    swift_dynamicCast();
    v35 = v56;
    v36 = *(v57 + 48);
    v33(v56, v34, v20);
    sub_1D1741A90(&v34[v32], &v35[v36], &qword_1EC645BD0, &qword_1D1E96B30);
    v65 = v33;
    v33(v69, v35, v20);
    v37 = v54;
    sub_1D1741A90(&v35[v36], v54, &qword_1EC645BD0, &qword_1D1E96B30);
    v12 = v50;
    sub_1D17579AC();
    result = sub_1D1E676DC();
    v38 = -1 << *(v12 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v48 + 8 * (v39 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v38) >> 6;
      while (++v40 != v42 || (v41 & 1) == 0)
      {
        v43 = v40 == v42;
        if (v40 == v42)
        {
          v40 = 0;
        }

        v41 |= v43;
        v44 = *(v48 + 8 * v40);
        if (v44 != -1)
        {
          v21 = __clz(__rbit64(~v44)) + (v40 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v21 = __clz(__rbit64((-1 << v39) & ~*(v48 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v16 &= v16 - 1;
    *(v48 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v65(*(v12 + 48) + v21 * v66, v69, v67);
    result = sub_1D1741A90(v37, *(v12 + 56) + *(v47 + 72) * v21, &qword_1EC645BD0, &qword_1D1E96B30);
    ++*(v12 + 16);
    v13 = v46;
    v17 = v45;
  }

  while (1)
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v22 >= v17)
    {

      return v12;
    }

    v16 = *(v13 + 8 * v22);
    ++v19;
    if (v16)
    {
      v19 = v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D18A89CC(uint64_t a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v10, qword_1EE07DCE0);
  *v5 = [a2 home];
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  return (*(v7 + 8))(v9, v6);
}

void (*HMActionSet.iconTint.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = HMActionSet.iconTint.getter();
  return sub_1D18A8BCC;
}

void sub_1D18A8BCC(uint64_t *a1, char a2)
{
  if (a2)
  {

    HMActionSet.iconTint.setter(v2);
  }

  else
  {
    HMActionSet.iconTint.setter(*a1);
  }
}

uint64_t HMActionSet.iconTintDictionary.getter()
{
  v1 = [v0 applicationData];
  v2 = [v1 dictionary];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  v3 = sub_1D1E675FC();

  if (*(v3 + 16) && (sub_1D171D2F0(0xD00000000000001FLL, 0x80000001D1EBB8B0), (v4 & 1) != 0))
  {
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643420, &qword_1D1E718A0);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t (*HMActionSet.statusIcon.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x188uLL);
  }

  *a1 = v3;
  *(v3 + 384) = v1;
  HMActionSet.icon.getter(v3);
  return sub_1D18A8DD0;
}

void sub_1D18A8DD4(__int128 **a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  if (a2)
  {
    v10 = v8[2];
    v9 = v8[3];
    v11 = v8[1];
    v8[14] = v10;
    v8[15] = v9;
    v12 = v8[3];
    v8[16] = v8[4];
    *(v8 + 265) = *(v8 + 73);
    v13 = v8[1];
    v14 = *v8;
    v8[12] = *v8;
    v8[13] = v13;
    v21 = v10;
    v22 = v12;
    v23[0] = v8[4];
    *(v23 + 9) = *(v8 + 73);
    v19 = v14;
    v20 = v11;
    sub_1D18A9844((v8 + 12), (v8 + 18));
    HMActionSet.icon.setter(&v19);
    v15 = v8[3];
    v8[8] = v8[2];
    v8[9] = v15;
    v8[10] = v8[4];
    *(v8 + 169) = *(v8 + 73);
    v16 = v8[1];
    v8[6] = *v8;
    v8[7] = v16;
    sub_1D18A98A0((v8 + 6));
  }

  else
  {
    v17 = v8[3];
    v21 = v8[2];
    v22 = v17;
    v23[0] = v8[4];
    *(v23 + 9) = *(v8 + 73);
    v18 = v8[1];
    v19 = *v8;
    v20 = v18;
    HMActionSet.icon.setter(&v19);
  }

  free(v8);
}

void (*HMActionSet.statusIconTint.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 48) = HMActionSet.iconTint.getter();
  return sub_1D18A8F64;
}

void sub_1D18A8FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = Color.colorDictionary.getter(a1);
    if (v7)
    {
      v8 = v7;
      v9 = [v4 applicationData];
      sub_1D18A72A4(v8);

      v10 = sub_1D1E675DC();

      v11 = sub_1D1E677EC();
      [v9 setObject:v10 forKeyedSubscript:v11];

      v12 = [v4 applicationData];
      v13 = swift_allocObject();
      *(v13 + 16) = v4;
      v16[4] = a3;
      v16[5] = v13;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 1107296256;
      v16[2] = sub_1D1C40BA8;
      v16[3] = a4;
      v14 = _Block_copy(v16);
      v15 = v4;

      [v15 updateApplicationData:v12 completionHandler:v14];
      _Block_release(v14);
    }

    else
    {
    }
  }
}

void (*HMActionSet.tileIconTint.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 56) = v1;
  *(v3 + 48) = HMActionSet.iconTint.getter();
  return sub_1D18A9238;
}

void sub_1D18A9274(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v6 = *a1;
  if (a2)
  {

    a6(v8);
  }

  else
  {
    if (!*(*a1 + 48))
    {
      goto LABEL_7;
    }

    v11 = Color.colorDictionary.getter(*(*a1 + 48));
    if (v11)
    {
      v12 = v11;
      v13 = v6[7];
      v14 = [v13 applicationData];
      sub_1D18A72A4(v12);

      v15 = sub_1D1E675DC();

      v16 = sub_1D1E677EC();
      [v14 setObject:v15 forKeyedSubscript:v16];

      v17 = [v13 applicationData];
      v18 = swift_allocObject();
      *(v18 + 16) = v13;
      v6[4] = a4;
      v6[5] = v18;
      *v6 = MEMORY[0x1E69E9820];
      v6[1] = 1107296256;
      v6[2] = sub_1D1C40BA8;
      v6[3] = a5;
      v19 = _Block_copy(v6);
      v20 = v13;

      [v20 updateApplicationData:v17 completionHandler:v19];
      _Block_release(v19);
    }
  }

LABEL_7:

  free(v6);
}

uint64_t HMActionSet.iconSymbol.getter()
{
  v1 = v0;
  v2 = [v0 applicationData];
  v3 = sub_1D1E677EC();
  v4 = [v2 objectForKeyedSubscript_];

  if (v4)
  {
    v19 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    v5 = swift_dynamicCast();
    if (v5)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v4 = v18;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = [v1 applicationData];
  v8 = sub_1D1E677EC();
  v9 = [v7 objectForKeyedSubscript_];

  if (v9)
  {
    v19 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    v10 = swift_dynamicCast();
    if (v10)
    {
      v11 = v17;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v18;
    }

    else
    {
      v12 = 0;
    }

    if (!v4)
    {
      if (v12)
      {

        v6 = v11;
        goto LABEL_21;
      }

LABEL_25:
      v15 = [v1 actionSetType];
      sub_1D1E6781C();

      HMActionSet.ActionSetKind.init(rawValue:)(&v17);
      if (v17 <= 1u)
      {
        if (!v17)
        {
          return 0xD000000000000013;
        }

        if (v17 == 1)
        {
          return 0xD000000000000015;
        }
      }

      else
      {
        switch(v17)
        {
          case 2u:
            return 0x2E78616D2E6E7573;
          case 3u:
            return 0x6174732E6E6F6F6DLL;
          case 7u:
            goto LABEL_29;
        }
      }

      return 0x69662E6573756F68;
    }
  }

  else if (!v4)
  {
    goto LABEL_25;
  }

  v12 = v4;
LABEL_21:

  if (sub_1D1E679AC())
  {

    v6 = sub_1D18A98F4(v6, v12);
    v14 = v13;

    if (!v14)
    {
LABEL_29:
      v6 = 0x69662E6573756F68;
    }
  }

  else
  {
  }

  return v6;
}

uint64_t HMActionSet.backupTint.getter()
{
  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_1D18A98F4(uint64_t a1, uint64_t a2)
{

  v4 = _s13HomeDataModel24LegacyHFImageIdentifiersO8rawValueACSgSS_tcfC_0(a1, a2);
  if (v4 <= 0x42)
  {
    if (v4 > 63)
    {
      if (v4 != 64)
      {
        if (v4 == 65)
        {
          return 0x696E6B2E6B726F66;
        }

        else
        {
          return 0xD000000000000015;
        }
      }
    }

    else if (v4 != 61)
    {
      if (v4 != 62)
      {
        if (v4 == 63)
        {
          return 0xD000000000000011;
        }

        return 0x69662E6573756F68;
      }

      return 0x702E676E69797266;
    }

    return 0xD000000000000013;
  }

  if (v4 > 69)
  {
    if (v4 == 72)
    {
      return 0x69662E6573756F68;
    }

    if (v4 != 71)
    {
      if (v4 == 70)
      {
        return 0x6174732E6E6F6F6DLL;
      }

      return 0x69662E6573756F68;
    }

    return 0x2E78616D2E6E7573;
  }

  else if (v4 == 67)
  {
    return 0x2E6E726F63706F70;
  }

  else if (v4 == 68)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x69662E7472616568;
  }
}

void keypath_set_45Tm(uint64_t a1)
{
  v2 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v2;
  v6[0] = *(a1 + 64);
  *(v6 + 9) = *(a1 + 73);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  sub_1D18A9844(v5, &v4);
  HMActionSet.icon.setter(a1);
}

uint64_t sub_1D18A9B8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642958, &unk_1D1EB2A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

HomeDataModel::TileSize_optional __swiftcall TileSize.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t TileSize.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1D18A9D0C@<X0>(char *a2@<X8>)
{
  v3 = sub_1D1E68C2C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1D18A9D6C(unint64_t *a1@<X8>)
{
  v2 = "HFTileResizableSizeSmall";
  v3 = 0xD000000000000018;
  if (*v1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v2 = "40-A849-215882E2F008";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1D18A9DA8()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18A9E24(uint64_t a1)
{
  sub_1D1E678EC();
}

uint64_t sub_1D18A9E8C(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18A9F04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v3 = 0xD000000000000018;
  }

  if (v2)
  {
    v4 = "40-A849-215882E2F008";
  }

  else
  {
    v4 = "HFTileResizableSizeSmall";
  }

  if (*a2)
  {
    v5 = 0xD000000000000019;
  }

  else
  {
    v5 = 0xD000000000000018;
  }

  if (*a2)
  {
    v6 = "HFTileResizableSizeSmall";
  }

  else
  {
    v6 = "40-A849-215882E2F008";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D1E6904C();
  }

  return v8 & 1;
}

uint64_t HMApplicationData.isDoubleHigh.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    swift_dynamicCast();
  }

  v4 = sub_1D1E68C2C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void HMApplicationData.isDoubleHigh.setter(char a1)
{
  if (a1 != 2)
  {
    v2 = [v1 applicationData];
    v3 = sub_1D1E677EC();

    v4 = sub_1D1E677EC();
    [v2 setObject:v3 forKeyedSubscript:v4];

    v5 = [v1 applicationData];
    v7[4] = sub_1D18AA2EC;
    v7[5] = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1D1C40BA8;
    v7[3] = &block_descriptor_12;
    v6 = _Block_copy(v7);
    [v1 updateApplicationData:v5 completionHandler:v6];
    _Block_release(v6);
  }
}

uint64_t sub_1D18AA2EC()
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - v3;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v5, qword_1EE07DCE0);
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  return (*(v2 + 8))(v4, v1);
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*HMApplicationData.isDoubleHigh.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = HMApplicationData.isDoubleHigh.getter();
  return sub_1D18AA4E4;
}

unint64_t sub_1D18AA510()
{
  result = qword_1EC645C00;
  if (!qword_1EC645C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645C00);
  }

  return result;
}

unint64_t sub_1D18AA574()
{
  result = qword_1EC645C08;
  if (!qword_1EC645C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645C08);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall HMApplicationData.array(forKey:)(Swift::String forKey)
{
  v1 = sub_1D18AB0A0(forKey._countAndFlagsBits, forKey._object, &qword_1EC645C10, qword_1D1E7BF20);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

Swift::Void __swiftcall HMApplicationData.set(_:forKey:)(Swift::OpaquePointer _, Swift::String forKey)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  v3 = sub_1D1E67BFC();
  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];
}

{
  v3 = sub_1D1E675DC();
  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];
}

{
  v3 = sub_1D1E67BFC();
  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];
}

Swift::Void __swiftcall HMApplicationData.set(_:forKey:)(Swift::Bool _, Swift::String forKey)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void sub_1D18AA740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = a5(a1, a2);
  v7 = sub_1D1E677EC();
  [v5 setObject:v6 forKeyedSubscript:v7];
}

Swift::String_optional __swiftcall HMApplicationData.string(forKey:)(Swift::String forKey)
{
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    v4 = swift_dynamicCast();
    v5 = v4 == 0;
    if (v4)
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v10;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::OpaquePointer_optional __swiftcall HMApplicationData.stringArray(forKey:)(Swift::String forKey)
{
  v1 = sub_1D18AB0A0(forKey._countAndFlagsBits, forKey._object, &qword_1EC643CB0, &qword_1D1E73640);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

Swift::Bool_optional __swiftcall HMApplicationData.BOOL(forKey:)(Swift::String forKey)
{
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  v4.value = 2;
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 2;
    }
  }

  return v4;
}

uint64_t HMApplicationData.data(forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D1E677EC();
  v4 = [v2 objectForKeyedSubscript_];

  if (!v4)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t HMApplicationData.date(forKey:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_1D1E677EC();
  v6 = [v3 objectForKeyedSubscript_];

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    v7 = sub_1D1E669FC();
    v8 = swift_dynamicCast();
    return (*(*(v7 - 8) + 56))(a3, v8 ^ 1u, 1, v7);
  }

  else
  {
    v10 = sub_1D1E669FC();
    v11 = *(*(v10 - 8) + 56);

    return v11(a3, 1, 1, v10);
  }
}

void HMApplicationData.set(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_1D1E6694C();
  v6 = sub_1D1E677EC();
  [v4 setObject:v5 forKeyedSubscript:v6];
}

Swift::Double_optional __swiftcall HMApplicationData.double(forKey:)(Swift::String forKey)
{
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    if (swift_dynamicCast())
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  result.value = v4;
  result.is_nil = v5;
  return result;
}

Swift::Void __swiftcall HMApplicationData.set(_:forKey:)(Swift::Double _, Swift::String forKey)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __swiftcall HMApplicationData.float(forKey:)(Swift::Float_optional *__return_ptr retstr, Swift::String forKey)
{
  v3 = sub_1D1E677EC();
  v4 = [v2 objectForKeyedSubscript_];

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    swift_dynamicCast();
  }
}

Swift::Void __swiftcall HMApplicationData.set(_:forKey:)(Swift::Float _, Swift::String forKey)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v5 = _;
  v6 = [v4 initWithFloat_];
  v7 = sub_1D1E677EC();
  [v2 setObject:v6 forKeyedSubscript:v7];
}

Swift::Int_optional __swiftcall HMApplicationData.int(forKey:)(Swift::String forKey)
{
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    v4 = swift_dynamicCast();
    if (v4)
    {
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }

    v6 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
    v6 = 1;
  }

  result.value = v5;
  result.is_nil = v6;
  return result;
}

Swift::Void __swiftcall HMApplicationData.set(_:forKey:)(Swift::Int _, Swift::String forKey)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];
}

Swift::OpaquePointer_optional __swiftcall HMApplicationData.dictionary(forKey:)(Swift::String forKey)
{
  v1 = sub_1D18AB0A0(forKey._countAndFlagsBits, forKey._object, &unk_1EC64A340, &qword_1D1E71800);
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

uint64_t sub_1D18AB0A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = sub_1D1E677EC();
  v8 = [v4 objectForKeyedSubscript_];

  if (!v8)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall HMApplicationData.clear(forKey:)(Swift::String forKey)
{
  v2 = sub_1D1E677EC();
  [v1 setObject:0 forKeyedSubscript:v2];
}

char *sub_1D18AB1A8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v30 = sub_1D1E66A7C();
  v25 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v2 applicationData];
  v8 = sub_1D1E677EC();
  v9 = [v7 objectForKeyedSubscript_];

  if (!v9)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v31 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C10, qword_1D1E7BF20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = v32;
  if (v32 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v13 = 0;
    v27 = v11 & 0xFFFFFFFFFFFFFF8;
    v28 = v11 & 0xC000000000000001;
    v14 = (v25 + 48);
    v26 = (v25 + 32);
    v15 = MEMORY[0x1E69E7CC0];
    v24 = v10;
    while (v28)
    {
      v16 = MEMORY[0x1D3891EF0](v13, v11);
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      v18 = v11;
      v32 = v16;
      swift_unknownObjectRetain();
      swift_dynamicCast();
      sub_1D1E66A0C();
      swift_unknownObjectRelease();

      v19 = v30;
      if ((*v14)(v5, 1, v30) == 1)
      {
        sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        v20 = *v26;
        (*v26)(v29, v5, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_1D177D0AC(0, *(v15 + 2) + 1, 1, v15);
        }

        v22 = *(v15 + 2);
        v21 = *(v15 + 3);
        if (v22 >= v21 >> 1)
        {
          v15 = sub_1D177D0AC((v21 > 1), v22 + 1, 1, v15);
        }

        *(v15 + 2) = v22 + 1;
        v20(&v15[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22], v29, v30);
        v10 = v24;
      }

      v11 = v18;
      ++v13;
      if (v17 == i)
      {
        goto LABEL_25;
      }
    }

    if (v13 >= *(v27 + 16))
    {
      goto LABEL_22;
    }

    v16 = *(v11 + 8 * v13 + 32);
    swift_unknownObjectRetain();
    v17 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_11;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_25:

  return v15;
}

uint64_t sub_1D18AB598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v4 applicationData];
  v16 = v15;
  v37 = MEMORY[0x1E69E7CC0];
  v17 = a1;
  v18 = *(a1 + 16);
  if (v18)
  {
    v31 = v15;
    v32 = a2;
    v33 = a3;
    v34 = v10;
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v35 = v4;
    v36 = v20;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v22 = *(v19 + 56);
    do
    {
      v36(v14, v21, v11);
      sub_1D1E66A1C();
      sub_1D1E677EC();

      v23 = (*(v19 - 8))(v14, v11);
      MEMORY[0x1D3891220](v23);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
      v21 += v22;
      --v18;
    }

    while (v18);
    v10 = v34;
    v4 = v35;
    v16 = v31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  v24 = sub_1D1E67BFC();

  v25 = sub_1D1E677EC();
  [v16 setObject:v24 forKeyedSubscript:v25];

  v26 = sub_1D1E67E7C();
  (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v4;
  v28 = v4;
  sub_1D1B02368(0, 0, v10, &unk_1D1E7BF60, v27);
}

uint64_t sub_1D18AB8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  v4[19] = type metadata accessor for StateSnapshot.UpdateType(0);
  v4[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18AB9B0, 0, 0);
}

uint64_t sub_1D18AB9B0()
{
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v5, qword_1EE07DCE0);
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  (*(v1 + 8))(v2, v3);
  v6 = [v4 applicationData];
  v0[24] = v6;
  v0[2] = v0;
  v0[3] = sub_1D18ABB9C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_49;
  v0[14] = v7;
  [v4 updateApplicationData:v6 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D18ABB9C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1D18ABD24;
  }

  else
  {
    v2 = sub_1D18ABCAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D18ABCAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D18ABD24(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t HMHome.sectionsSortOrder.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640), (swift_dynamicCast() & 1) != 0))
  {
    return v5;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void HMHome.sectionsSortOrder.setter(uint64_t a1)
{
  v2 = [v1 applicationData];
  v3 = sub_1D1E67BFC();

  v4 = sub_1D1E677EC();
  [v2 setObject:v3 forKeyedSubscript:v4];

  v5 = [v1 applicationData];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  v9[4] = sub_1D18AC124;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D1C40BA8;
  v9[3] = &block_descriptor_13;
  v7 = _Block_copy(v9);
  v8 = v1;

  [v8 updateApplicationData:v5 completionHandler:v7];
  _Block_release(v7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_13(uint64_t a1)
{
}

{
}

void (*HMHome.sectionsSortOrder.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = HMHome.sectionsSortOrder.getter();
  return sub_1D18AC1A0;
}

void sub_1D18AC1A0(uint64_t *a1, char a2)
{
  if (a2)
  {

    HMHome.sectionsSortOrder.setter(v2);
  }

  else
  {
    HMHome.sectionsSortOrder.setter(*a1);
  }
}

uint64_t HMHome.showPredictedScenesOnDashboard.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void HMHome.showPredictedScenesOnDashboard.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18AF4D0;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_6_2;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMHome.showPredictedScenesOnDashboard.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HMHome.showPredictedScenesOnDashboard.getter() & 1;
  return sub_1D18AC4A0;
}

uint64_t HMHome.actionSetsSortOrder.setter(uint64_t a1)
{
  sub_1D18AB598(a1, 0xD000000000000028, 0x80000001D1EBB9B0);
}

uint64_t (*HMHome.actionSetsSortOrder.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D18AB1A8(0xD000000000000028, 0x80000001D1EBB9B0);
  return sub_1D18AC5A8;
}

uint64_t sub_1D18AC5A8(uint64_t *a1, char a2)
{
  if (a2)
  {

    sub_1D18AB598(v2, 0xD000000000000028, 0x80000001D1EBB9B0);
  }

  else
  {
    sub_1D18AB598(*a1, 0xD000000000000028, 0x80000001D1EBB9B0);
  }
}

uint64_t HMHome.camerasSortOrder.setter(uint64_t a1)
{
  sub_1D18AB598(a1, 0xD000000000000025, 0x80000001D1EBB9E0);
}

uint64_t (*HMHome.camerasSortOrder.modify(char **a1))()
{
  a1[1] = v1;
  *a1 = sub_1D18AB1A8(0xD000000000000025, 0x80000001D1EBB9E0);
  return sub_1D18AC70C;
}

uint64_t HMHome.sidebarRoomsSortOrder.setter(uint64_t a1)
{
  sub_1D18AB598(a1, 0xD000000000000023, 0x80000001D1EBBA70);
}

uint64_t (*HMHome.sidebarRoomsSortOrder.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D18AB1A8(0xD000000000000023, 0x80000001D1EBBA70);
  return sub_1D18AC7F0;
}

uint64_t sub_1D18AC7F0(uint64_t *a1, char a2)
{
  if (a2)
  {

    sub_1D18AB598(v2, 0xD000000000000023, 0x80000001D1EBBA70);
  }

  else
  {
    sub_1D18AB598(*a1, 0xD000000000000023, 0x80000001D1EBBA70);
  }
}

uint64_t HMHome.servicesSortOrder.setter(uint64_t a1)
{
  sub_1D18AB598(a1, 0xD000000000000026, 0x80000001D1EBBA10);
}

uint64_t (*HMHome.servicesSortOrder.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D18AB1A8(0xD000000000000026, 0x80000001D1EBBA10);
  return sub_1D18AC954;
}

uint64_t sub_1D18AC954(uint64_t *a1, char a2)
{
  if (a2)
  {

    sub_1D18AB598(v2, 0xD000000000000026, 0x80000001D1EBBA10);
  }

  else
  {
    sub_1D18AB598(*a1, 0xD000000000000026, 0x80000001D1EBBA10);
  }
}

uint64_t (*HMHome.cameraProfilesSortOrder.modify(char **a1))()
{
  a1[1] = v1;
  *a1 = sub_1D18AB1A8(0xD000000000000025, 0x80000001D1EBB9E0);
  return sub_1D18AF4C8;
}

uint64_t sub_1D18ACA38(uint64_t *a1, char a2)
{
  if (a2)
  {

    sub_1D18AB598(v2, 0xD000000000000025, 0x80000001D1EBB9E0);
  }

  else
  {
    sub_1D18AB598(*a1, 0xD000000000000025, 0x80000001D1EBB9E0);
  }
}

uint64_t HMHome.umbrellaCategoriesSortOrder.setter(uint64_t a1)
{
  sub_1D18AB598(a1, 0xD000000000000030, 0x80000001D1EBBAD0);
}

uint64_t (*HMHome.umbrellaCategoriesSortOrder.modify(char **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D18AB1A8(0xD000000000000030, 0x80000001D1EBBAD0);
  return sub_1D18ACB9C;
}

uint64_t sub_1D18ACB9C(uint64_t *a1, char a2)
{
  if (a2)
  {

    sub_1D18AB598(v2, 0xD000000000000030, 0x80000001D1EBBAD0);
  }

  else
  {
    sub_1D18AB598(*a1, 0xD000000000000030, 0x80000001D1EBBAD0);
  }
}

uint64_t HMHome.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = [v1 applicationData];
  v7 = sub_1D1E677EC();
  v8 = [v6 objectForKeyedSubscript_];

  if (!v8)
  {
    goto LABEL_5;
  }

  v20[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = v20[1];
  v9 = v20[2];
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
  v11 = sub_1D1E6836C();
  if (!v11)
  {
    sub_1D174E7C4(v10, v9);
LABEL_5:
    v12 = sub_1D1E669FC();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  v14 = v11;
  v15 = sub_1D1E669FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v5, 1, 1, v15);
  sub_1D18A52E4();
  sub_1D1E68C1C();
  sub_1D174E7C4(v10, v9);

  if ((*(v16 + 48))(v5, 1, v15) == 1)
  {
    v18 = a1;
    v19 = 1;
  }

  else
  {
    (*(v16 + 32))(a1, v5, v15);
    v18 = a1;
    v19 = 0;
  }

  return (v17)(v18, v19, 1, v15);
}

uint64_t sub_1D18ACF08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D174A548(a1, &v6 - v3);
  return HMHome.dateAdded.setter(v4);
}

uint64_t HMHome.dateAdded.setter(uint64_t a1)
{
  v2 = v1;
  aBlock[7] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D174A548(a1, v6);
  v11 = *(v8 + 48);
  if (v11(v6, 1, v7) == 1)
  {
    sub_1D1E669EC();
    if (v11(v6, 1, v7) != 1)
    {
      sub_1D1741A30(v6, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v12 = objc_opt_self();
  v13 = sub_1D1E6694C();
  (*(v8 + 8))(v10, v7);
  aBlock[0] = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:aBlock];

  v15 = aBlock[0];
  if (v14)
  {
    v16 = sub_1D1E668BC();
    v18 = v17;

    v19 = [v2 applicationData];
    v20 = sub_1D1E6688C();
    v21 = sub_1D1E677EC();
    [v19 setObject:v20 forKeyedSubscript:v21];

    v22 = [v2 applicationData];
    v23 = swift_allocObject();
    v23[2] = v2;
    aBlock[4] = sub_1D18AF4D0;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1C40BA8;
    aBlock[3] = &block_descriptor_17;
    v24 = _Block_copy(aBlock);
    v25 = v2;

    [v25 updateApplicationData:v22 completionHandler:v24];
    _Block_release(v24);

    sub_1D174E7C4(v16, v18);
  }

  else
  {
    v26 = v15;
    v27 = sub_1D1E6656C();

    swift_willThrow();
  }

  return sub_1D1741A30(a1, &qword_1EC642570, &qword_1D1E6C6A0);
}

uint64_t sub_1D18AD378(uint64_t a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v10, qword_1EE07DCE0);
  *v5 = a2;
  swift_storeEnumTagMultiPayload();
  v11 = a2;
  sub_1D1E67ECC();
  return (*(v7 + 8))(v9, v6);
}

void (*HMHome.dateAdded.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  HMHome.dateAdded.getter(v4);
  return sub_1D18AD5D8;
}

void sub_1D18AD5D8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1D174A548(v3, v2);
    HMHome.dateAdded.setter(v2);
    sub_1D1741A30(v3, &qword_1EC642570, &qword_1D1E6C6A0);
  }

  else
  {
    HMHome.dateAdded.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t HMHome.colorPickerFavorites.getter()
{
  result = sub_1D18AD70C();
  if (!result)
  {
    result = sub_1D18ADE40();
    if (!result)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1D18AD690@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D18AD70C();
  if (!result)
  {
    result = sub_1D18ADE40();
    if (!result)
    {
      result = MEMORY[0x1E69E7CC0];
    }
  }

  *a1 = result;
  return result;
}

uint64_t HMHome.colorPickerFavorites.setter(uint64_t a1)
{
  sub_1D18AE40C(a1);
}

void *sub_1D18AD70C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C28, &qword_1D1E7BF50);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v62 - v2;
  v69 = type metadata accessor for ColorPickerFavorite(0);
  v67 = *(v69 - 8);
  v4 = MEMORY[0x1EEE9AC00](v69);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v62 - v7;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v0 applicationData];
  v13 = [v0 currentUser];
  v14 = [v13 uniqueIdentifier];

  sub_1D1E66A5C();
  v15 = sub_1D1E66A1C();
  v17 = v16;
  v18 = *(v9 + 8);
  v75 = v9 + 8;
  v76 = v8;
  v74 = v18;
  v18(v11, v8);
  v19 = sub_1D1E677EC();
  v20 = [v12 objectForKeyedSubscript_];

  if (!v20)
  {
    goto LABEL_55;
  }

  v78[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C20, &qword_1D1E7BF48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_55;
  }

  v21 = v77;
  if (!*(v77 + 16))
  {

    goto LABEL_55;
  }

  v22 = sub_1D171D2F0(v15, v17);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_55:

    return 0;
  }

  v25 = *(*(v21 + 56) + 8 * v22);

  v73 = *(v25 + 16);
  if (v73)
  {
    v27 = 0;
    v70 = (v67 + 56);
    v71 = v25 + 32;
    v66 = MEMORY[0x1E69E7CC0];
    v64 = (v67 + 48);
    v28 = v69;
    v72 = v25;
    while (1)
    {
      if (v27 >= *(v25 + 16))
      {
        __break(1u);
        return result;
      }

      v29 = *(v71 + 8 * v27);
      v30 = *(v28 + 24);

      sub_1D1E66A6C();
      if (!*(v29 + 16))
      {
LABEL_7:

        v74(&v6[v30], v76);
        (*v70)(v3, 1, 1, v28);
        goto LABEL_8;
      }

      v31 = sub_1D171D2F0(114, 0xE100000000000000);
      if (v32 & 1) != 0 && *(v29 + 16) && (v33 = *(*(v29 + 56) + 8 * v31), v34 = sub_1D171D2F0(103, 0xE100000000000000), (v35) && *(v29 + 16) && (v36 = *(*(v29 + 56) + 8 * v34), v37 = sub_1D171D2F0(98, 0xE100000000000000), (v38))
      {
        v39 = *(*(v29 + 56) + 8 * v37);

        v40 = *(v29 + 16);
        if (!v40)
        {
          goto LABEL_39;
        }

        v65 = v36;
        v41 = 0;
      }

      else
      {

        if (!*(v29 + 16))
        {
          goto LABEL_7;
        }

        v39 = 0;
        v65 = 0;
        v33 = 0;
        v41 = 1;
      }

      v42 = sub_1D171D2F0(0x74617265706D6574, 0xEB00000000657275);
      v44 = v43;
      v45 = 0.0;
      if (v43)
      {
        v45 = *(*(v29 + 56) + 8 * v42);
      }

      if (*(v29 + 16))
      {
        v46 = sub_1D171D2F0(6649192, 0xE300000000000000);
        if (v47)
        {
          if (*(v29 + 16))
          {
            v63 = *(*(v29 + 56) + 8 * v46);
            v48 = sub_1D171D2F0(0x6974617275746173, 0xEA00000000006E6FLL);
            if (v49)
            {
              break;
            }
          }
        }
      }

      if (v44)
      {
        goto LABEL_30;
      }

      v28 = v69;
      if (v41)
      {
        goto LABEL_7;
      }

      LOBYTE(v40) = 0;
      v36 = v65;
LABEL_39:
      *v6 = v33;
      *(v6 + 1) = v36;
      *(v6 + 2) = v39;
      v6[24] = v40;
      v53 = 1.0;
      if (*(v29 + 16))
      {
        v54 = sub_1D171D2F0(0x656E746867697262, 0xEA00000000007373);
        if (v55)
        {
          v53 = *(*(v29 + 56) + 8 * v54);
        }
      }

      if (v53 > 0.0)
      {
        v56 = v53;
      }

      else
      {
        v56 = 0.0;
      }

      if (v56 > 1.0)
      {
        v56 = 1.0;
      }

      *(v6 + 4) = v56;
      sub_1D1839588(v6, v3);
      (*v70)(v3, 0, 1, v28);
      sub_1D18395EC(v6);
      if ((*v64)(v3, 1, v28) != 1)
      {
        sub_1D18AF378(v3, v68);
        v57 = v66;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_1D177D81C(0, v57[2] + 1, 1, v57);
        }

        v59 = v57[2];
        v58 = v57[3];
        v66 = v57;
        if (v59 >= v58 >> 1)
        {
          v66 = sub_1D177D81C((v58 > 1), v59 + 1, 1, v66);
        }

        v61 = v66;
        v60 = v67;
        v66[2] = v59 + 1;
        result = sub_1D18AF378(v68, v61 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v59);
        goto LABEL_9;
      }

LABEL_8:
      result = sub_1D1741A30(v3, &qword_1EC645C28, &qword_1D1E7BF50);
LABEL_9:
      v25 = v72;
      if (v73 == ++v27)
      {
        goto LABEL_57;
      }
    }

    if ((v44 & 1) == 0)
    {
      v39 = 0;
      v36 = *(*(v29 + 56) + 8 * v48);
      LOBYTE(v40) = 1;
      v33 = v63;
      v28 = v69;
      goto LABEL_39;
    }

LABEL_30:
    v36 = 0;
    v39 = 0;
    v50 = round(v45);
    HIDWORD(v51) = 1089470464;
    v52 = v50 >= 65536.0 || v50 <= -1.0;
    LODWORD(v51) = llround(v45);
    if (v52)
    {
      v33 = 100;
    }

    else
    {
      v33 = v51;
    }

    LOBYTE(v40) = 2;
    v28 = v69;
    goto LABEL_39;
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_57:

  return v66;
}

uint64_t sub_1D18ADE40()
{
  v1 = type metadata accessor for ColorPickerFavorite(0);
  v50 = *(v1 - 8);
  v51 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v46 - v6;
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v46 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v46 - v11;
  v13 = [v0 applicationData];
  v14 = sub_1D1E677EC();
  v15 = [v13 objectForKeyedSubscript_];

  if (!v15 || (v53 = v15, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C18, &qword_1D1E7BF40), result = swift_dynamicCast(), (result & 1) == 0))
  {
    v33 = sub_1D1E677EC();
    v34 = [v13 objectForKeyedSubscript_];

    if (v34 && (v53 = v34, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C18, &qword_1D1E7BF40), result = swift_dynamicCast(), (result & 1) != 0))
    {
      v49 = v13;
      v35 = v52;
      v36 = *(v52 + 16);
      if (v36)
      {
        v37 = 0;
        v20 = MEMORY[0x1E69E7CC0];
        while (v37 < *(v35 + 16))
        {
          v38 = *(v35 + 32 + 8 * v37);
          if (*(v38 + 16))
          {

            result = sub_1D171D2F0(1886217588, 0xE400000000000000);
            if (v39)
            {
              v40 = *(*(v38 + 56) + 8 * result);
              if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
                goto LABEL_50;
              }

              if (v40 <= -9.22337204e18)
              {
                goto LABEL_51;
              }

              if (v40 >= 9.22337204e18)
              {
                goto LABEL_52;
              }

              if (v40 <= 1)
              {
                v41 = 1;
              }

              else
              {
                v41 = v40;
              }

              v42 = (0xF4240 / v41);
              if (v40 >= 16)
              {
                v43 = v42;
              }

              else
              {
                v43 = 0xFFFFLL;
              }

              sub_1D1E66A6C();

              *(v4 + 1) = 0;
              *(v4 + 2) = 0;
              *v4 = v43;
              v4[24] = 2;
              *(v4 + 4) = 0x3FF0000000000000;
              sub_1D18AF378(v4, v7);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = sub_1D177D81C(0, v20[2] + 1, 1, v20);
              }

              v45 = v20[2];
              v44 = v20[3];
              if (v45 >= v44 >> 1)
              {
                v20 = sub_1D177D81C((v44 > 1), v45 + 1, 1, v20);
              }

              v20[2] = v45 + 1;
              result = sub_1D18AF378(v7, v20 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v45);
            }

            else
            {
            }
          }

          if (v36 == ++v37)
          {
            goto LABEL_46;
          }
        }

        goto LABEL_49;
      }

      v20 = MEMORY[0x1E69E7CC0];
LABEL_46:
    }

    else
    {

      return 0;
    }

    return v20;
  }

  v17 = v52;
  v18 = *(v52 + 16);
  if (!v18)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_44:

    return v20;
  }

  v48 = v10;
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  while (v19 < *(v17 + 16))
  {
    v21 = *(v17 + 32 + 8 * v19);
    if (*(v21 + 16))
    {

      v22 = sub_1D171D2F0(114, 0xE100000000000000);
      if (v23 & 1) != 0 && *(v21 + 16) && (v24 = *(*(v21 + 56) + 8 * v22), v25 = sub_1D171D2F0(103, 0xE100000000000000), (v26) && *(v21 + 16) && (v27 = *(*(v21 + 56) + 8 * v25), v28 = sub_1D171D2F0(98, 0xE100000000000000), (v29))
      {
        v49 = v13;
        v47 = *(*(v21 + 56) + 8 * v28);
        v30 = v48;
        sub_1D1E66A6C();

        *v30 = v24;
        *(v30 + 8) = v27;
        *(v30 + 16) = v47;
        *(v30 + 24) = 0;
        *(v30 + 32) = 0x3FF0000000000000;
        sub_1D18AF378(v30, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D177D81C(0, v20[2] + 1, 1, v20);
        }

        v32 = v20[2];
        v31 = v20[3];
        v13 = v49;
        if (v32 >= v31 >> 1)
        {
          v20 = sub_1D177D81C((v31 > 1), v32 + 1, 1, v20);
        }

        v20[2] = v32 + 1;
        result = sub_1D18AF378(v12, v20 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v32);
      }

      else
      {
      }
    }

    if (v18 == ++v19)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

void sub_1D18AE40C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ColorPickerFavorite(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v2 applicationData];
  v110 = v2;
  v13 = [v2 currentUser];
  v14 = [v13 uniqueIdentifier];

  sub_1D1E66A5C();
  v111 = sub_1D1E66A1C();
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  v114 = sub_1D18D9738(MEMORY[0x1E69E7CC0]);
  v17 = sub_1D1E677EC();
  v18 = [v12 objectForKeyedSubscript_];

  v112 = v16;
  v109 = "essoryCategories";
  if (v18)
  {
    aBlock[0] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C20, &qword_1D1E7BF48);
    if (swift_dynamicCast())
    {
      v19 = v115[0];

      v114 = v19;
    }
  }

  v113 = v12;
  v20 = *(a1 + 16);
  if (!v20)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_43:
    v93 = v114;
    v95 = v111;
    v94 = v112;
    if (*(v114 + 16) && (v96 = sub_1D171D2F0(v111, v112), (v97 & 1) != 0) && (v98 = *(*(v93 + 56) + 8 * v96), , , v99 = sub_1D177C1EC(v98, v23), , , (v99 & 1) != 0))
    {

      v100 = v113;
    }

    else
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v93;
      sub_1D1754740(v23, v95, v94, isUniquelyReferenced_nonNull_native);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C18, &qword_1D1E7BF40);
      v102 = sub_1D1E675DC();
      v103 = sub_1D1E677EC();
      v100 = v113;
      [v113 setObject:v102 forKeyedSubscript:{v103, v109}];

      v104 = swift_allocObject();
      v105 = v110;
      *(v104 + 16) = v110;
      aBlock[4] = sub_1D18AF370;
      aBlock[5] = v104;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D1C40BA8;
      aBlock[3] = &block_descriptor_42_1;
      v106 = _Block_copy(aBlock);
      v107 = v100;
      v108 = v105;

      [v108 updateApplicationData:v107 completionHandler:v106];

      _Block_release(v106);
    }

    return;
  }

  v21 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v22 = *(v5 + 72);
  v23 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D1839588(v21, v7);
    v24 = *v7;
    if (v7[24] <= 1u)
    {
      break;
    }

    if (v7[24] == 2)
    {
      v131 = 0x74617265706D6574;
      v132 = 0xEB00000000657275;
      v133 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C10, &qword_1D1E6E960);
      v27 = sub_1D1E68BCC();

      v54 = v131;
      v55 = v132;
      v56 = v133;

      v57 = sub_1D171D2F0(v54, v55);
      if (v58)
      {
        goto LABEL_55;
      }

      v27[(v57 >> 6) + 8] |= 1 << v57;
      v59 = (v27[6] + 16 * v57);
      *v59 = v54;
      v59[1] = v55;
      *(v27[7] + 8 * v57) = v56;
      v60 = v27[2];
      v36 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v36)
      {
        goto LABEL_56;
      }

      v27[2] = v61;

      sub_1D1741A30(&v131, qword_1EC644948, &qword_1D1E76918);
LABEL_26:
      v77 = *(v7 + 4);
      v78 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v27;
      v80 = sub_1D171D2F0(0x656E746867697262, 0xEA00000000007373);
      v81 = v27[2];
      v82 = (v79 & 1) == 0;
      v83 = v81 + v82;
      if (__OFADD__(v81, v82))
      {
        goto LABEL_51;
      }

      v84 = v79;
      if (v27[3] >= v83)
      {
        if (v78)
        {
          v87 = aBlock[0];
          if ((v79 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_1D17382E8();
          v87 = aBlock[0];
          if ((v84 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_1D17271B8(v83, v78);
        v85 = sub_1D171D2F0(0x656E746867697262, 0xEA00000000007373);
        if ((v84 & 1) != (v86 & 1))
        {
          goto LABEL_57;
        }

        v80 = v85;
        v87 = aBlock[0];
        if ((v84 & 1) == 0)
        {
LABEL_30:
          v87[(v80 >> 6) + 8] |= 1 << v80;
          v88 = (v87[6] + 16 * v80);
          *v88 = 0x656E746867697262;
          v88[1] = 0xEA00000000007373;
          *(v87[7] + 8 * v80) = v77;
          v89 = v87[2];
          v36 = __OFADD__(v89, 1);
          v90 = v89 + 1;
          if (v36)
          {
            goto LABEL_54;
          }

          v87[2] = v90;
          goto LABEL_35;
        }
      }

      *(v87[7] + 8 * v80) = v77;
LABEL_35:
      sub_1D18395EC(v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D177DD3C(0, v23[2] + 1, 1, v23);
      }

      v92 = v23[2];
      v91 = v23[3];
      if (v92 >= v91 >> 1)
      {
        v23 = sub_1D177DD3C((v91 > 1), v92 + 1, 1, v23);
      }

      v23[2] = v92 + 1;
      v23[v92 + 4] = v87;
      goto LABEL_7;
    }

    sub_1D18395EC(v7);
LABEL_7:
    v21 += v22;
    if (!--v20)
    {
      goto LABEL_43;
    }
  }

  v25 = *(v7 + 1);
  if (v7[24])
  {
    v125 = 6649192;
    v126 = 0xE300000000000000;
    v127 = v24;
    v128 = 0x6974617275746173;
    v129 = 0xEA00000000006E6FLL;
    v130 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C10, &qword_1D1E6E960);
    v27 = sub_1D1E68BCC();

    v62 = v125;
    v63 = v126;
    v64 = v127;

    v65 = sub_1D171D2F0(v62, v63);
    if (v66)
    {
      goto LABEL_52;
    }

    *(v27 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v65;
    v67 = (v27[6] + 16 * v65);
    *v67 = v62;
    v67[1] = v63;
    *(v27[7] + 8 * v65) = v64;
    v68 = v27[2];
    v36 = __OFADD__(v68, 1);
    v69 = v68 + 1;
    if (v36)
    {
      goto LABEL_53;
    }

    v27[2] = v69;
    v70 = v128;
    v71 = v129;
    v72 = v130;

    v73 = sub_1D171D2F0(v70, v71);
    if (v74)
    {
      goto LABEL_52;
    }

    *(v27 + ((v73 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v73;
    v75 = (v27[6] + 16 * v73);
    *v75 = v70;
    v75[1] = v71;
    *(v27[7] + 8 * v73) = v72;
    v76 = v27[2];
    v36 = __OFADD__(v76, 1);
    v53 = v76 + 1;
    if (v36)
    {
      goto LABEL_53;
    }

LABEL_25:
    v27[2] = v53;

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC644948, &qword_1D1E76918);
    swift_arrayDestroy();
    goto LABEL_26;
  }

  v26 = *(v7 + 2);
  v116 = 114;
  v117 = 0xE100000000000000;
  v118 = v24;
  v119 = 103;
  v120 = 0xE100000000000000;
  v121 = v25;
  v122 = 98;
  v123 = 0xE100000000000000;
  v124 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C10, &qword_1D1E6E960);
  v27 = sub_1D1E68BCC();

  v28 = v116;
  v29 = v117;
  v30 = v118;

  v31 = sub_1D171D2F0(v28, v29);
  if ((v32 & 1) == 0)
  {
    v33 = v27 + 8;
    *(v27 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v31;
    v34 = (v27[6] + 16 * v31);
    *v34 = v28;
    v34[1] = v29;
    *(v27[7] + 8 * v31) = v30;
    v35 = v27[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_50;
    }

    v27[2] = v37;
    v38 = v119;
    v39 = v120;
    v40 = v121;

    v41 = sub_1D171D2F0(v38, v39);
    if ((v42 & 1) == 0)
    {
      *(v33 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v43 = (v27[6] + 16 * v41);
      *v43 = v38;
      v43[1] = v39;
      *(v27[7] + 8 * v41) = v40;
      v44 = v27[2];
      v36 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v36)
      {
        goto LABEL_50;
      }

      v27[2] = v45;
      v46 = v122;
      v47 = v123;
      v48 = v124;

      v49 = sub_1D171D2F0(v46, v47);
      if ((v50 & 1) == 0)
      {
        *(v33 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
        v51 = (v27[6] + 16 * v49);
        *v51 = v46;
        v51[1] = v47;
        *(v27[7] + 8 * v49) = v48;
        v52 = v27[2];
        v36 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v36)
        {
          goto LABEL_50;
        }

        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_1D1E690FC();
  __break(1u);
}

uint64_t (*HMHome.colorPickerFavorites.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = sub_1D18AD70C();
  if (!v3)
  {
    v3 = sub_1D18ADE40();
    if (!v3)
    {
      v3 = MEMORY[0x1E69E7CC0];
    }
  }

  *a1 = v3;
  return sub_1D18AEEF8;
}

uint64_t sub_1D18AEEF8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    sub_1D18AE40C(v3);
  }

  else
  {
    sub_1D18AE40C(v2);
  }
}

void sub_1D18AEF4C(NSObject *a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  if (a1)
  {
    v11 = a1;
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EE07B5D8);
    v13 = a1;
    v27 = sub_1D1E6707C();
    v14 = sub_1D1E6833C();

    if (os_log_type_enabled(v27, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1D16EC000, v27, v14, "Updating color picker favorites FAILED %@", v15, 0xCu);
      sub_1D1741A30(v16, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);

      v19 = v27;
    }

    else
    {

      v19 = a1;
    }
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v20 = sub_1D1E6709C();
    __swift_project_value_buffer(v20, qword_1EE07B5D8);
    v21 = sub_1D1E6707C();
    v22 = sub_1D1E6835C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1D16EC000, v21, v22, "Updated color picker favorites", v23, 2u);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    if (qword_1EE07DC88 != -1)
    {
      swift_once();
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
    __swift_project_value_buffer(v24, qword_1EE07DCE0);
    *v6 = a2;
    swift_storeEnumTagMultiPayload();
    v25 = a2;
    sub_1D1E67ECC();
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1D18AF378(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorPickerFavorite(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18AF3DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return sub_1D18AB8B4(a1, v4, v5, v6);
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  return sub_1D1741970(a2 + 32, a1 + 32);
}

{
  return sub_1D1741970(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_48(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t HMHomeManager.homesSortOrder.setter(uint64_t a1)
{
  sub_1D18AF55C(a1, 0xD000000000000026, 0x80000001D1EBBB50);
}

uint64_t sub_1D18AF55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v4 applicationData];
  v16 = v15;
  v37 = MEMORY[0x1E69E7CC0];
  v17 = a1;
  v18 = *(a1 + 16);
  if (v18)
  {
    v31 = v15;
    v32 = a2;
    v33 = a3;
    v34 = v10;
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v35 = v4;
    v36 = v20;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v22 = *(v19 + 56);
    do
    {
      v36(v14, v21, v11);
      sub_1D1E66A1C();
      sub_1D1E677EC();

      v23 = (*(v19 - 8))(v14, v11);
      MEMORY[0x1D3891220](v23);
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
      v21 += v22;
      --v18;
    }

    while (v18);
    v10 = v34;
    v4 = v35;
    v16 = v31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  v24 = sub_1D1E67BFC();

  v25 = sub_1D1E677EC();
  [v16 setObject:v24 forKeyedSubscript:v25];

  v26 = sub_1D1E67E7C();
  (*(*(v26 - 8) + 56))(v10, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v4;
  v28 = v4;
  sub_1D1B02368(0, 0, v10, &unk_1D1E7BF90, v27);
}

uint64_t (*HMHomeManager.homesSortOrder.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1D16F8F48();
  return sub_1D18AF8D8;
}

uint64_t sub_1D18AF8D8(uint64_t *a1, char a2)
{
  if (a2)
  {

    sub_1D18AF55C(v2, 0xD000000000000026, 0x80000001D1EBBB50);
  }

  else
  {
    sub_1D18AF55C(*a1, 0xD000000000000026, 0x80000001D1EBBB50);
  }
}

uint64_t sub_1D18AF95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v4[22] = type metadata accessor for StateSnapshot.UpdateType(0);
  v4[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18AFA58, 0, 0);
}

uint64_t sub_1D18AFA58()
{
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[21];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v5, qword_1EE07DCE0);
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  (*(v1 + 8))(v2, v3);
  v6 = [v4 applicationData];
  v0[27] = v6;
  v0[2] = v0;
  v0[3] = sub_1D18AFC44;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_14;
  v0[14] = v7;
  [v4 updateApplicationData:v6 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D18AFC44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_1D18AFE14;
  }

  else
  {
    v2 = sub_1D18AFD54;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D18AFD54()
{
  swift_beginAccess();
  v1 = off_1EC645C30;
  if (off_1EC645C30)
  {
    v2 = qword_1EC645C38;

    v1(v3);
    sub_1D17169C0(v1, v2);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D18AFE14(uint64_t a1)
{
  v2 = *(v1 + 216);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void *static HMHomeManager.applicationDataWriteCompletion.getter()
{
  swift_beginAccess();
  v0 = off_1EC645C30;
  sub_1D18AFEFC(off_1EC645C30);
  return v0;
}

uint64_t sub_1D18AFEFC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t static HMHomeManager.applicationDataWriteCompletion.setter(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = off_1EC645C30;
  v5 = qword_1EC645C38;
  off_1EC645C30 = a1;
  qword_1EC645C38 = a2;
  return sub_1D17169C0(v4, v5);
}

uint64_t sub_1D18AFFC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return sub_1D18AF95C(a1, v4, v5, v6);
}

uint64_t HMMediaSystem.shouldShowInDashboard.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void HMMediaSystem.shouldShowInDashboard.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18B139C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_15;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*HMMediaSystem.shouldShowInDashboard.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HMMediaSystem.shouldShowInDashboard.getter() & 1;
  return sub_1D18B034C;
}

uint64_t HMMediaSystem.isFavorite.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

void HMMediaSystem.isFavorite.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18B139C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_6_3;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMMediaSystem.isFavorite.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HMMediaSystem.isFavorite.getter() & 1;
  return sub_1D18B061C;
}

uint64_t HMMediaSystem.contributesToHomeStatus.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void HMMediaSystem.contributesToHomeStatus.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18B08A0;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_13_1;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMMediaSystem.contributesToHomeStatus.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HMMediaSystem.contributesToHomeStatus.getter() & 1;
  return sub_1D18B0908;
}

uint64_t HMMediaSystem.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = [v1 applicationData];
  v7 = sub_1D1E677EC();
  v8 = [v6 objectForKeyedSubscript_];

  if (!v8)
  {
    goto LABEL_5;
  }

  v20[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = v20[1];
  v9 = v20[2];
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
  v11 = sub_1D1E6836C();
  if (!v11)
  {
    sub_1D174E7C4(v10, v9);
LABEL_5:
    v12 = sub_1D1E669FC();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  v14 = v11;
  v15 = sub_1D1E669FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v5, 1, 1, v15);
  sub_1D18A52E4();
  sub_1D1E68C1C();
  sub_1D174E7C4(v10, v9);

  if ((*(v16 + 48))(v5, 1, v15) == 1)
  {
    v18 = a1;
    v19 = 1;
  }

  else
  {
    (*(v16 + 32))(a1, v5, v15);
    v18 = a1;
    v19 = 0;
  }

  return (v17)(v18, v19, 1, v15);
}

uint64_t sub_1D18B0C18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D174A548(a1, &v6 - v3);
  return HMMediaSystem.dateAdded.setter(v4);
}

uint64_t HMMediaSystem.dateAdded.setter(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27[-v4];
  sub_1D174A548(a1, &v27[-v4]);
  v6 = sub_1D1E669FC();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC642570, &qword_1D1E6C6A0);
    v33 = 0u;
    v34 = 0u;
    v8 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    v30 = sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
    *&aBlock = v8;
    if (*(&v34 + 1))
    {
      sub_1D1741A30(&v33, &qword_1EC649700, &qword_1D1E6E910);
    }
  }

  else
  {
    *(&v34 + 1) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
    (*(v7 + 32))(boxed_opaque_existential_1, v5, v6);
    sub_1D1742194(&v33, &aBlock);
  }

  v10 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&aBlock, v30);
  v11 = sub_1D1E6903C();
  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  *&aBlock = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&aBlock];
  swift_unknownObjectRelease();
  v13 = aBlock;
  if (v12)
  {
    v14 = sub_1D1E668BC();
    v16 = v15;

    v17 = [v1 applicationData];
    v18 = sub_1D1E6688C();
    v19 = sub_1D1E677EC();
    [v17 setObject:v18 forKeyedSubscript:v19];

    v20 = [v1 applicationData];
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    v31 = sub_1D18B139C;
    v32 = v21;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v29 = sub_1D1C40BA8;
    v30 = &block_descriptor_20_2;
    v22 = _Block_copy(&aBlock);
    v23 = v1;

    [v23 updateApplicationData:v20 completionHandler:v22];
    _Block_release(v22);

    sub_1D174E7C4(v14, v16);
  }

  else
  {
    v24 = v13;
    v25 = sub_1D1E6656C();

    swift_willThrow();
  }

  return sub_1D1741A30(a1, &qword_1EC642570, &qword_1D1E6C6A0);
}

uint64_t sub_1D18B1090(uint64_t a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v10, qword_1EE07DCE0);
  *v5 = [a2 home];
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  return (*(v7 + 8))(v9, v6);
}

void (*HMMediaSystem.dateAdded.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  HMMediaSystem.dateAdded.getter(v4);
  return sub_1D18B1304;
}

void sub_1D18B1304(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1D174A548(v3, v2);
    HMMediaSystem.dateAdded.setter(v2);
    sub_1D1741A30(v3, &qword_1EC642570, &qword_1D1E6C6A0);
  }

  else
  {
    HMMediaSystem.dateAdded.setter(v3);
  }

  free(v3);

  free(v2);
}

unint64_t sub_1D18B13F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v49 - v2;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 applicationData];
  v9 = [v8 dictionary];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  v10 = sub_1D1E675FC();

  v11 = sub_1D18B1930(v10);

  if (v11)
  {
    v56 = v7;
    v57 = v3;
    v58 = v4;
    v59 = sub_1D18D52F0(MEMORY[0x1E69E7CC0]);
    v12 = v11 + 64;
    v13 = 1 << *(v11 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v11 + 64);
    v16 = (v13 + 63) >> 6;
    v53 = v5;
    v54 = (v5 + 32);
    v55 = (v5 + 48);

    v18 = 0;
    v60 = "erStrings_roomServices";
    v61 = v11;
    while (v15)
    {
LABEL_11:
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v21 = (*(v11 + 48) + ((v18 << 10) | (16 * v20)));
      v22 = *v21;
      v23 = v21[1];

      if ((sub_1D1E679AC() & 1) != 0 && (, v24 = sub_1D1E678FC(), v25 = sub_1D18B1E64(v24, v22, v23), v27 = v26, v29 = v28, v31 = v30, , MEMORY[0x1D3890F10](v25, v27, v29, v31), , v11 = v61, v32 = sub_1D1E68C2C(), , v32 <= 7) && *(v11 + 16))
      {
        v33 = sub_1D171D2F0(v22, v23);
        v35 = v34;

        if (v35)
        {
          v36 = *(*(*(v11 + 56) + 8 * v33) + 16);

          v51 = v36;
          if (v36)
          {
            v37 = 0;
            v38 = result + 40;
            v52 = MEMORY[0x1E69E7CC0];
            v50 = result;
            while (v37 < *(result + 16))
            {

              v39 = v57;
              sub_1D1E66A0C();

              v40 = v58;
              if ((*v55)(v39, 1, v58) == 1)
              {
                sub_1D1835548(v39);
              }

              else
              {
                v41 = *v54;
                (*v54)(v56, v39, v40);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v52 = sub_1D177D0AC(0, *(v52 + 2) + 1, 1, v52);
                }

                v43 = *(v52 + 2);
                v42 = *(v52 + 3);
                if (v43 >= v42 >> 1)
                {
                  v52 = sub_1D177D0AC((v42 > 1), v43 + 1, 1, v52);
                }

                v45 = v52;
                v44 = v53;
                *(v52 + 2) = v43 + 1;
                v41(&v45[((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v43], v56, v58);
              }

              ++v37;
              v38 += 16;
              result = v50;
              if (v51 == v37)
              {
                goto LABEL_27;
              }
            }

            goto LABEL_33;
          }

          v52 = MEMORY[0x1E69E7CC0];
LABEL_27:

          v46 = v59;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v62 = v46;
          result = sub_1D1753640(v52, v32, isUniquelyReferenced_nonNull_native);
          v11 = v61;
          v59 = v62;
        }
      }

      else
      {
      }
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {

        return v59;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        v18 = v19;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v48 = MEMORY[0x1E69E7CC0];

    return sub_1D18D52F0(v48);
  }

  return result;
}

unint64_t sub_1D18B1930(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C40, qword_1D1E7BFB0);
    v2 = sub_1D1E68BCC();
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

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v11 << 6)));
        v14 = *v12;
        v13 = v12[1];

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_1D171D2F0(v14, v13);
        if (v15)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v14;
          v9[1] = v13;
          v10 = result;

          *(v2[7] + 8 * v10) = v20;

          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v16 = (v2[6] + 16 * result);
          *v16 = v14;
          v16[1] = v13;
          *(v2[7] + 8 * result) = v20;
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D18B1B7C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = [v1 applicationData];
  v7 = sub_1D1E677EC();
  v8 = [v6 objectForKeyedSubscript_];

  if (!v8)
  {
    goto LABEL_5;
  }

  v20[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = v20[1];
  v9 = v20[2];
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
  v11 = sub_1D1E6836C();
  if (!v11)
  {
    sub_1D174E7C4(v10, v9);
LABEL_5:
    v12 = sub_1D1E669FC();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  v14 = v11;
  v15 = sub_1D1E669FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v5, 1, 1, v15);
  sub_1D18A52E4();
  sub_1D1E68C1C();
  sub_1D174E7C4(v10, v9);

  if ((*(v16 + 48))(v5, 1, v15) == 1)
  {
    v18 = a1;
    v19 = 1;
  }

  else
  {
    (*(v16 + 32))(a1, v5, v15);
    v18 = a1;
    v19 = 0;
  }

  return (v17)(v18, v19, 1, v15);
}

unint64_t sub_1D18B1E64(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1D1E6791C();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1D1E67A0C();
}

uint64_t HMService.shouldShowInDashboard.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3 && (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void HMService.shouldShowInDashboard.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18B3BB4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_16;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*HMService.shouldShowInDashboard.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HMService.shouldShowInDashboard.getter() & 1;
  return sub_1D18B2244;
}

uint64_t HMService.isFavorite.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (!v3)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

void HMService.isFavorite.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18B3BB4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_6_4;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMService.isFavorite.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HMService.isFavorite.getter() & 1;
  return sub_1D18B2514;
}

uint64_t HMService.contributesToHomeStatus.getter()
{
  v1 = v0;
  v2 = [v0 serviceType];
  v3 = sub_1D1E6781C();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  ServiceKind.init(rawValue:)(v6);
  if (ServiceKind.rawValue.getter() != 0xD000000000000024 || 0x80000001D1EB3430 != v7)
  {
    v9 = sub_1D1E6904C();

    v8 = 0;
    if (v9)
    {
      goto LABEL_8;
    }

    v10 = [v1 serviceType];
    v11 = sub_1D1E6781C();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    ServiceKind.init(rawValue:)(v14);
    if (ServiceKind.rawValue.getter() != 0xD000000000000024 || 0x80000001D1EB3400 != v15)
    {
      v16 = sub_1D1E6904C();

      v8 = v16 ^ 1;
      goto LABEL_8;
    }
  }

  v8 = 0;
LABEL_8:
  v17 = [v1 applicationData];
  v18 = sub_1D1E677EC();
  v19 = [v17 objectForKeyedSubscript_];

  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    if (swift_dynamicCast())
    {
      v8 = v21;
    }
  }

  return v8 & 1;
}

void HMService.contributesToHomeStatus.setter(char a1)
{
  v3 = [v1 applicationData];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v5 = sub_1D1E677EC();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [v1 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v10[4] = sub_1D18B3AC4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_13_2;
  v8 = _Block_copy(v10);
  v9 = v1;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMService.contributesToHomeStatus.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = HMService.contributesToHomeStatus.getter() & 1;
  return sub_1D18B2930;
}

unint64_t HMService.customIconSFSymbol.getter()
{
  v0 = HMService.customIconSymbol.getter();
  v2 = v1;
  if (v1)
  {

    v3._countAndFlagsBits = v0;
    v3._object = v2;
    HFCAPackageIconIdentifier.init(rawValue:)(v3);
    if (v7 != 65)
    {

      v6 = v7;
      static IconSymbol.convertFromCAPackageIcon(iconIdentifier:)(&v6, &v5);
      return IconSymbol.rawValue.getter();
    }
  }

  return v0;
}

void HMService.customIconSFSymbol.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    IconSymbol.init(rawValue:)(*&a1);
    if (v6 != 92)
    {
      v4 = v6;
      static IconSymbol.convertToCAPackageIcon(iconSymbol:)(&v4, &v5);
      if (v5 == 65)
      {
        v2 = 0;
        v3 = 0;
      }

      else
      {
        v2 = HFCAPackageIconIdentifier.rawValue.getter();
      }

      HMService.customIconSymbol.setter(v2, v3);
    }
  }
}

unint64_t HMService.customIconSymbol.getter()
{
  v1 = [v0 applicationData];
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKeyedSubscript_];

  if (v3)
  {
    v20 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    if (swift_dynamicCast())
    {
      if ((sub_1D1E679AC() & 1) == 0)
      {
        return v18;
      }

      v4 = _s13HomeDataModel24LegacyHFImageIdentifiersO8rawValueACSgSS_tcfC_0(v18, v19);
      if (v4 != 73)
      {
        if (qword_1EC642240 != -1)
        {
          v16 = v4;
          swift_once();
          v4 = v16;
        }

        v5 = qword_1EC6BE110;
        v6 = LegacyHFImageIdentifiers.rawValue.getter(v4);
        if (*(v5 + 16))
        {
          v8 = sub_1D171D2F0(v6, v7);
          v10 = v9;

          if (v10)
          {
            v11 = (*(v5 + 56) + 16 * v8);
            v12 = *v11;
            v13 = v11[1];

            v14._countAndFlagsBits = v12;
            v14._object = v13;
            HFCAPackageIconIdentifier.init(rawValue:)(v14);
            if (v18 != 65)
            {
              LOBYTE(v20) = v18;
              static IconSymbol.convertFromCAPackageIcon(iconIdentifier:)(&v20, &v17);
              return IconSymbol.rawValue.getter();
            }
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

void HMService.customIconSymbol.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [v2 applicationData];
    v4 = sub_1D1E677EC();

    v5 = sub_1D1E677EC();
    [v3 setObject:v4 forKeyedSubscript:v5];
  }

  else
  {
    v4 = [v2 applicationData];
    v5 = sub_1D1E677EC();
    [v4 setObject:0 forKeyedSubscript:v5];
  }

  v6 = [v2 applicationData];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v10[4] = sub_1D18B3BB4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D1C40BA8;
  v10[3] = &block_descriptor_20_3;
  v8 = _Block_copy(v10);
  v9 = v2;

  [v9 updateApplicationData:v6 completionHandler:v8];
  _Block_release(v8);
}

void (*HMService.customIconSFSymbol.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = HMService.customIconSymbol.getter();
  v5 = v4;
  if (v4)
  {

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    HFCAPackageIconIdentifier.init(rawValue:)(v6);
    if (v11 != 65)
    {

      v10 = v11;
      static IconSymbol.convertFromCAPackageIcon(iconIdentifier:)(&v10, &v9);
      v3 = IconSymbol.rawValue.getter();
      v5 = v7;
    }
  }

  *a1 = v3;
  a1[1] = v5;
  return sub_1D18B2EF0;
}

void sub_1D18B2EF0(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];

    HMService.customIconSFSymbol.setter(v2, v3);
  }

  else
  {
    v4 = a1[1];
    if (v4)
    {
      v5 = *a1;
      IconSymbol.init(rawValue:)(*(&v4 - 1));
      if (v8 != 92)
      {
        v10[0] = v8;
        static IconSymbol.convertToCAPackageIcon(iconSymbol:)(v10, &v9);
        if (v9 == 65)
        {
          v6 = 0;
          v7 = 0;
        }

        else
        {
          v10[1] = v9;
          v6 = HFCAPackageIconIdentifier.rawValue.getter();
        }

        HMService.customIconSymbol.setter(v6, v7);
      }
    }
  }
}

void (*HMService.customIconSymbol.modify(unint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = HMService.customIconSymbol.getter();
  a1[1] = v3;
  return sub_1D18B300C;
}

void sub_1D18B300C(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    HMService.customIconSymbol.setter(v3, v2);
  }

  else
  {
    HMService.customIconSymbol.setter(*a1, v2);
  }
}

uint64_t HMService.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = [v1 applicationData];
  v7 = sub_1D1E677EC();
  v8 = [v6 objectForKeyedSubscript_];

  if (!v8)
  {
    goto LABEL_5;
  }

  v20[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = v20[1];
  v9 = v20[2];
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
  v11 = sub_1D1E6836C();
  if (!v11)
  {
    sub_1D174E7C4(v10, v9);
LABEL_5:
    v12 = sub_1D1E669FC();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  v14 = v11;
  v15 = sub_1D1E669FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v5, 1, 1, v15);
  sub_1D18A52E4();
  sub_1D1E68C1C();
  sub_1D174E7C4(v10, v9);

  if ((*(v16 + 48))(v5, 1, v15) == 1)
  {
    v18 = a1;
    v19 = 1;
  }

  else
  {
    (*(v16 + 32))(a1, v5, v15);
    v18 = a1;
    v19 = 0;
  }

  return (v17)(v18, v19, 1, v15);
}

uint64_t sub_1D18B3368(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D174A548(a1, &v6 - v3);
  return HMService.dateAdded.setter(v4);
}

uint64_t HMService.dateAdded.setter(uint64_t a1)
{
  v2 = v1;
  aBlock[7] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D174A548(a1, v6);
  v11 = *(v8 + 48);
  if (v11(v6, 1, v7) == 1)
  {
    sub_1D1E669EC();
    if (v11(v6, 1, v7) != 1)
    {
      sub_1D18B3AE0(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v12 = objc_opt_self();
  v13 = sub_1D1E6694C();
  (*(v8 + 8))(v10, v7);
  aBlock[0] = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:aBlock];

  v15 = aBlock[0];
  if (v14)
  {
    v16 = sub_1D1E668BC();
    v18 = v17;

    v19 = [v2 applicationData];
    v20 = sub_1D1E6688C();
    v21 = sub_1D1E677EC();
    [v19 setObject:v20 forKeyedSubscript:v21];

    v22 = [v2 applicationData];
    v23 = swift_allocObject();
    v23[2] = v2;
    aBlock[4] = sub_1D18B3BB4;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1C40BA8;
    aBlock[3] = &block_descriptor_27_1;
    v24 = _Block_copy(aBlock);
    v25 = v2;

    [v25 updateApplicationData:v22 completionHandler:v24];
    _Block_release(v24);

    sub_1D174E7C4(v16, v18);
  }

  else
  {
    v26 = v15;
    v27 = sub_1D1E6656C();

    swift_willThrow();
  }

  return sub_1D18B3AE0(a1);
}

uint64_t sub_1D18B37B8(uint64_t a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v10, qword_1EE07DCE0);
  v11 = [a2 accessory];
  v12 = [v11 home];

  *v5 = v12;
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  return (*(v7 + 8))(v9, v6);
}

void (*HMService.dateAdded.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  HMService.dateAdded.getter(v4);
  return sub_1D18B3A54;
}

void sub_1D18B3A54(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1D174A548(v3, v2);
    HMService.dateAdded.setter(v2);
    sub_1D18B3AE0(v3);
  }

  else
  {
    HMService.dateAdded.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t sub_1D18B3AE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t keypath_set_33Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t HMServiceGroup.dateAdded.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = [v1 applicationData];
  v7 = sub_1D1E677EC();
  v8 = [v6 objectForKeyedSubscript_];

  if (!v8)
  {
    goto LABEL_5;
  }

  v20[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = v20[1];
  v9 = v20[2];
  sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
  sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
  v11 = sub_1D1E6836C();
  if (!v11)
  {
    sub_1D174E7C4(v10, v9);
LABEL_5:
    v12 = sub_1D1E669FC();
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  v14 = v11;
  v15 = sub_1D1E669FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(v5, 1, 1, v15);
  sub_1D18A52E4();
  sub_1D1E68C1C();
  sub_1D174E7C4(v10, v9);

  if ((*(v16 + 48))(v5, 1, v15) == 1)
  {
    v18 = a1;
    v19 = 1;
  }

  else
  {
    (*(v16 + 32))(a1, v5, v15);
    v18 = a1;
    v19 = 0;
  }

  return (v17)(v18, v19, 1, v15);
}

uint64_t sub_1D18B3EA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D174A548(a1, &v6 - v3);
  return HMServiceGroup.dateAdded.setter(v4);
}

uint64_t HMServiceGroup.dateAdded.setter(uint64_t a1)
{
  v2 = v1;
  aBlock[7] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D174A548(a1, v6);
  v11 = *(v8 + 48);
  if (v11(v6, 1, v7) == 1)
  {
    sub_1D1E669EC();
    if (v11(v6, 1, v7) != 1)
    {
      sub_1D18B3AE0(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v12 = objc_opt_self();
  v13 = sub_1D1E6694C();
  (*(v8 + 8))(v10, v7);
  aBlock[0] = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:aBlock];

  v15 = aBlock[0];
  if (v14)
  {
    v16 = sub_1D1E668BC();
    v18 = v17;

    v19 = [v2 applicationData];
    v20 = sub_1D1E6688C();
    v21 = sub_1D1E677EC();
    [v19 setObject:v20 forKeyedSubscript:v21];

    v22 = [v2 applicationData];
    v23 = swift_allocObject();
    v23[2] = v2;
    aBlock[4] = sub_1D18B462C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1C40BA8;
    aBlock[3] = &block_descriptor_17;
    v24 = _Block_copy(aBlock);
    v25 = v2;

    [v25 updateApplicationData:v22 completionHandler:v24];
    _Block_release(v24);

    sub_1D174E7C4(v16, v18);
  }

  else
  {
    v26 = v15;
    v27 = sub_1D1E6656C();

    swift_willThrow();
  }

  return sub_1D18B3AE0(a1);
}

uint64_t sub_1D18B42F0(uint64_t a1, void *a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v6, qword_1EE07DCE0);
  (*(v7 + 16))(v9, v14, v6);
  v15 = [a2 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v16 = sub_1D1E67C1C();

  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  result = sub_1D1E6873C();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1D3891EF0](0, v16);
    goto LABEL_8;
  }

  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v16 + 32);
LABEL_8:
    v19 = v18;
LABEL_11:

    v20 = [v19 accessory];

    v21 = [v20 home];
    *v5 = v21;
    swift_storeEnumTagMultiPayload();
    sub_1D1E67ECC();
    (*(v7 + 8))(v9, v6);
    return (*(v11 + 8))(v13, v10);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*HMServiceGroup.dateAdded.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  HMServiceGroup.dateAdded.getter(v4);
  return sub_1D18B4708;
}

void sub_1D18B4708(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1D174A548(v3, v2);
    HMServiceGroup.dateAdded.setter(v2);
    sub_1D18B3AE0(v3);
  }

  else
  {
    HMServiceGroup.dateAdded.setter(v3);
  }

  free(v3);

  free(v2);
}

void sub_1D18B47DC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v11 = [a1 home];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D1E682DC();
    if (v14)
    {
    }

    else
    {
      v15 = v13;
      v22 = *(v2 + 152);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
      inited = swift_initStackObject();
      v24 = v8;
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v15;
      v17 = sub_1D179CDAC(inited);
      swift_setDeallocating();
      v23 = *(*v22 + 120);
      v18 = *(v4 + 44);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
      (*(*(v19 - 8) + 56))(&v6[v18], 1, 1, v19);
      *v6 = v17;
      *(v6 + 1) = v12;
      v6[16] = 1;
      v20 = v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
      sub_1D1E67ECC();

      (*(v24 + 8))(v10, v7);
    }
  }

  else
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
  }
}

void sub_1D18B4A8C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650100, &qword_1D1E7BFE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - v5 + 32;
  v7 = [a1 home];
  if (!v7)
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v8 = v7;
  v9 = sub_1D1E682DC();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    if (qword_1EE07DC68 != -1)
    {
      swift_once();
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500F0, &unk_1D1E7C000);
    v19 = __swift_project_value_buffer(v12, qword_1EE07DCC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v11;
    v14 = sub_1D179CDAC(inited);
    swift_setDeallocating();
    v22[0] = v14;
    v22[1] = v8;
    v23 = 1;
    v15 = v8;
    sub_1D1E67ECC();
    (*(v4 + 8))(v6, v3);
  }

  v26 = a1;
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C48, &qword_1D1E7BFF0);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(v20, v22);
    swift_beginAccess();
    if (!qword_1EE07AE00)
    {
      v17 = v24;
      v18 = v25;
      __swift_project_boxed_opaque_existential_1(v22, v24);
      (*(v18 + 8))(v17, v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
    if (!_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0())
    {
      goto LABEL_16;
    }
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1D1741A30(v20, &qword_1EC645C50, &qword_1D1E7BFF8);
    if (!_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0())
    {
      goto LABEL_16;
    }
  }

  sub_1D18B47DC(v16);
  if (v1)
  {

    return;
  }

LABEL_16:
}

void sub_1D18B4DB8(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650100, &qword_1D1E7BFE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - v7;
  v9 = [a1 home];
  if (!v9)
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v10 = v9;
  v11 = sub_1D1E682DC();
  if ((v12 & 1) == 0)
  {
    v13 = v11;
    v22 = a2;
    if (qword_1EE07DC68 != -1)
    {
      swift_once();
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500F0, &unk_1D1E7C000);
    v21[1] = __swift_project_value_buffer(v14, qword_1EE07DCC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v13;
    v16 = sub_1D179CDAC(inited);
    swift_setDeallocating();
    v25[0] = v16;
    v25[1] = v10;
    v26 = 1;
    v17 = v10;
    sub_1D1E67ECC();
    (*(v6 + 8))(v8, v5);
    a2 = v22;
  }

  v29 = v10;
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v18 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644920, &qword_1D1E768A0);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(v23, v25);
    swift_beginAccess();
    if (!qword_1EE07AE00)
    {
      v19 = v27;
      v20 = v28;
      __swift_project_boxed_opaque_existential_1(v25, v27);
      (*(v20 + 24))(a2, a1, v19, v20);
    }

    __swift_destroy_boxed_opaque_existential_1(v25);
    if (!_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0())
    {
      goto LABEL_16;
    }
  }

  else
  {
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_1D1741A30(v23, &qword_1EC644928, &qword_1D1E768A8);
    if (!_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0())
    {
      goto LABEL_16;
    }
  }

  sub_1D18B47DC(a1);
  if (v2)
  {

    return;
  }

LABEL_16:
}

void sub_1D18B50F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650100, &qword_1D1E7BFE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v20 - v5 + 32;
  v7 = [a1 home];
  if (!v7)
  {
    sub_1D1820D0C();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v8 = v7;
  v9 = sub_1D1E682DC();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    if (qword_1EE07DC68 != -1)
    {
      swift_once();
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500F0, &unk_1D1E7C000);
    v19 = __swift_project_value_buffer(v12, qword_1EE07DCC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v11;
    v14 = sub_1D179CDAC(inited);
    swift_setDeallocating();
    v22[0] = v14;
    v22[1] = v8;
    v23 = 1;
    v15 = v8;
    sub_1D1E67ECC();
    (*(v4 + 8))(v6, v3);
  }

  v26 = a1;
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C48, &qword_1D1E7BFF0);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(v20, v22);
    swift_beginAccess();
    if (!qword_1EE07AE00)
    {
      v17 = v24;
      v18 = v25;
      __swift_project_boxed_opaque_existential_1(v22, v24);
      (*(v18 + 16))(v17, v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
    if (!_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0())
    {
      goto LABEL_16;
    }
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1D1741A30(v20, &qword_1EC645C50, &qword_1D1E7BFF8);
    if (!_s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0())
    {
      goto LABEL_16;
    }
  }

  sub_1D18B47DC(v16);
  if (v1)
  {

    return;
  }

LABEL_16:
}

uint64_t HMAccessory.supportsAlarmsAndTimers.getter()
{
  v1 = [v0 category];
  v2 = [v1 categoryType];

  v3 = sub_1D1E6781C();
  v5 = v4;

  if (v3 == sub_1D1E6781C() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1D1E6904C();

    if ((v8 & 1) == 0)
    {
      result = [v0 siriEndpointProfile];
      if (!result)
      {
        return result;
      }
    }
  }

  return 1;
}

uint64_t HMAccessory.categoryType.getter()
{
  v1 = [v0 category];
  v2 = [v1 categoryType];

  v3 = sub_1D1E6781C();
  return v3;
}

unint64_t HMAccessory.specialMediaCategory.getter@<X0>(uint64_t a1@<X8>)
{
  static StaticAccessory.SpecialMediaCategory.siriEndpoint(from:)(v1, &v26);
  v3 = v27;
  if (v27 != 255)
  {
    result = v26;
    goto LABEL_18;
  }

  v5 = [v1 category];
  v6 = [v5 categoryType];

  v7 = sub_1D1E6781C();
  v9 = v8;

  if (sub_1D1E6781C() == v7 && v10 == v9)
  {
    goto LABEL_16;
  }

  v12 = sub_1D1E6904C();

  if (v12)
  {
LABEL_17:

    result = HMAccessory.customNearbyAccessoryIdentifiers.getter();
    v3 = 0;
    goto LABEL_18;
  }

  if (sub_1D1E6781C() == v7 && v13 == v9)
  {
LABEL_16:

    goto LABEL_17;
  }

  v15 = sub_1D1E6904C();

  if (v15)
  {
    goto LABEL_17;
  }

  if (sub_1D1E6781C() == v7 && v16 == v9)
  {

LABEL_20:

    result = 0;
    v3 = 3;
    goto LABEL_18;
  }

  v17 = sub_1D1E6904C();

  if (v17)
  {
    goto LABEL_20;
  }

  if (sub_1D1E6781C() == v7 && v18 == v9)
  {

LABEL_25:

    v3 = 3;
    result = 1;
    goto LABEL_18;
  }

  v19 = sub_1D1E6904C();

  if (v19)
  {
    goto LABEL_25;
  }

  if (sub_1D1E6781C() == v7 && v20 == v9)
  {

LABEL_30:

    v3 = 3;
    result = 2;
    goto LABEL_18;
  }

  v21 = sub_1D1E6904C();

  if (v21)
  {
    goto LABEL_30;
  }

  if (sub_1D1E6781C() == v7 && v22 == v9)
  {
  }

  else
  {
    v23 = sub_1D1E6904C();

    if ((v23 & 1) == 0)
    {
      if (sub_1D1E6781C() == v7 && v24 == v9)
      {

        result = 3;
        v3 = 3;
      }

      else
      {
        v25 = sub_1D1E6904C();

        if (v25)
        {
          result = 3;
        }

        else
        {
          result = 0;
        }

        if (v25)
        {
          v3 = 3;
        }

        else
        {
          v3 = -1;
        }
      }

      goto LABEL_18;
    }
  }

  result = [v1 homePodVariant];
  if (result >= 4)
  {
    result = 1;
  }

  v3 = 1;
LABEL_18:
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

void *HMAccessory.subscript.getter()
{
  v1 = [v0 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v2 = sub_1D1E67C1C();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D3891EF0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 serviceType];
      v9 = sub_1D1E6781C();
      v11 = v10;

      v12._countAndFlagsBits = v9;
      v12._object = v11;
      ServiceKind.init(rawValue:)(v12);
      v13 = ServiceKind.rawValue.getter();
      v15 = v14;
      if (v13 == ServiceKind.rawValue.getter() && v15 == v16)
      {

LABEL_15:

        return v6;
      }

      v17 = sub_1D1E6904C();

      if (v17)
      {
        goto LABEL_15;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  return 0;
}

{
  v0 = HMAccessory.subscript.getter();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 characteristics];
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    v3 = sub_1D1E67C1C();

    if (v3 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D3891EF0](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v9 = [v6 characteristicType];
        v10 = sub_1D1E6781C();
        v12 = v11;

        if (v10 == CharacteristicKind.rawValue.getter() && v12 == v13)
        {

          return v7;
        }

        v15 = sub_1D1E6904C();

        if (v15)
        {

          return v7;
        }

        ++v5;
        if (v8 == i)
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
  }

  return 0;
}

uint64_t sub_1D18B5D24(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[1];
      v18 = *v7;
      v19[0] = v9;
      *(v19 + 9) = *(v7 + 25);
      v10 = v7[1];
      v16 = *v7;
      v17[0] = v10;
      *(v17 + 9) = *(v7 + 25);
      sub_1D18B869C(&v18, &v14);
      v11 = a1(&v16);
      if (v3)
      {
        break;
      }

      v4 = v11;
      v14 = v16;
      v15[0] = v17[0];
      *(v15 + 9) = *(v17 + 9);
      sub_1D18B86F8(&v14);
      v12 = v8-- == 0;
      v7 += 3;
      if ((v4 | v12))
      {
        return v4 & 1;
      }
    }

    v14 = v16;
    v15[0] = v17[0];
    *(v15 + 9) = *(v17 + 9);
    sub_1D18B86F8(&v14);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D18B5E18(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_1D1771B38(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_1D1716AA4(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1D18B5EC8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D18B5F74(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v15 = *(*(a3 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v9)))));
      result = a1(&v15);
      if (v3)
      {

        return v14 & 1;
      }

      if (result)
      {
        break;
      }

      v9 &= v9 - 1;
      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v14 = 1;
    return v14 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        v14 = 0;
        return v14 & 1;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D18B609C(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
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
      v12 = *(v7 - 1);
      v13 = v9;
      sub_1D1771B4C(v12, v9);
      v10 = a1(&v12);
      sub_1D1771B5C(v12, v13);
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 16;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1D18B6154(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1D3891EF0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1D1E6873C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1D18B629C()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D18B63B8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C60, &qword_1D1EABE80);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_18;
  v0[14] = v2;
  [v1 fetchThermostatSleepScheduleWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D18B63B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1D18B6780;
  }

  else
  {
    v2 = sub_1D18B64C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D18B64C8()
{
  v21 = v0;
  v1 = v0[18];
  v2 = [v1 scheduleRules];
  sub_1D1741B10(0, &qword_1EC645C68, 0x1E696CCC0);
  v3 = sub_1D1E67C1C();

  if (v3 >> 62)
  {
    v4 = sub_1D1E6873C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    if (qword_1EC642478 != -1)
    {
      swift_once();
    }

    v5 = v0[19];
    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EC64F458);
    v7 = v5;
    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6835C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[19];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315650;
      *(v11 + 4) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EBBD10, &v20);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EBBD40, &v20);
      *(v11 + 22) = 2080;
      v13 = [v10 name];
      v14 = sub_1D1E6781C();
      v16 = v15;

      v17 = sub_1D1B1312C(v14, v16, &v20);

      *(v11 + 24) = v17;
      _os_log_impl(&dword_1D16EC000, v8, v9, "%s - %s: Accessory: %s already has a sleep schedule.", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v12, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1D18B6780(uint64_t a1)
{
  v18 = v1;
  swift_willThrow();
  if (qword_1EC642478 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 152);
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F458);
  v4 = v2;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 152);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EBBD10, v17);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1D1B1312C(0xD00000000000001BLL, 0x80000001D1EBBD40, v17);
    *(v8 + 22) = 2080;
    v10 = [v7 name];
    v11 = sub_1D1E6781C();
    v13 = v12;

    v14 = sub_1D1B1312C(v11, v13, v17);

    *(v8 + 24) = v14;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%s - %s: Accessory: %s has no sleep schedule. Updating with default schedule", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v15 = swift_task_alloc();
  *(v1 + 168) = v15;
  *v15 = v1;
  v15[1] = sub_1D18B69F4;

  return sub_1D18B75EC();
}

uint64_t sub_1D18B69F4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1D18B6B6C;
  }

  else
  {
    v2 = sub_1D18B6B08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D18B6B08()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D18B6B6C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t HMAccessory.updateDefaultSleepSchedule(_:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4BFC;

  return sub_1D18B75EC();
}

uint64_t HMAccessory.thermostatCluster()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v63 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v58 - v9;
  v11 = type metadata accessor for StaticEndpoint(0);
  v62 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v58 - v14;
  v16 = type metadata accessor for StaticMatterDevice(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D1E682DC();
  if ((v21 & 1) == 0)
  {
    v22 = v20;
    v23 = [v1 home];
    if (v23)
    {
      v24 = v23;
      v25 = HMHome.device(for:)(v22);
      v26 = v19;
      v27 = v8;
      v28 = v10;
      v29 = v11;
      v30 = v25;
      v59 = v31;

      v32 = v30;
      if (v30)
      {
        v33 = v29;
        v34 = v28;
        v35 = v27;
        v36 = v26;
        swift_unknownObjectRetain();
        v37 = v2;
        StaticMatterDevice.init(device:accessory:)(v32, v59, v37, v15);
        if ((*(v17 + 48))(v15, 1, v16) == 1)
        {
          swift_unknownObjectRelease();
          v38 = &qword_1EC643650;
          v39 = &qword_1D1E71D40;
          v40 = v15;
        }

        else
        {
          v41 = sub_1D18B8634(v15, v26, type metadata accessor for StaticMatterDevice);
          v42 = *(v26 + *(v16 + 56));
          MEMORY[0x1EEE9AC00](v41);
          *(&v58 - 2) = v26;

          sub_1D1746B78(sub_1D18076C8, v42, v35);

          v43 = v62;
          v44 = *(v62 + 48);
          if (v44(v35, 1, v33) == 1)
          {

            sub_1D1771D7C(v45, v34);

            if (v44(v35, 1, v33) != 1)
            {
              sub_1D1741A30(v35, &qword_1EC644780, &qword_1D1E91AA0);
            }
          }

          else
          {
            sub_1D18B8634(v35, v34, type metadata accessor for StaticEndpoint);
            (*(v43 + 56))(v34, 0, 1, v33);
          }

          if (v44(v34, 1, v33) == 1)
          {
            sub_1D18B8564(v36, type metadata accessor for StaticMatterDevice);
            swift_unknownObjectRelease();
            v38 = &qword_1EC644780;
            v39 = &qword_1D1E91AA0;
            v40 = v34;
          }

          else
          {
            v46 = v60;
            sub_1D18B8634(v34, v60, type metadata accessor for StaticEndpoint);
            v64[3] = &type metadata for HomeKitFeatures;
            v64[4] = sub_1D18076E8();
            LOBYTE(v64[0]) = 3;
            v47 = sub_1D1E66D5C();
            swift_unknownObjectRelease();
            sub_1D18B8564(v36, type metadata accessor for StaticMatterDevice);
            __swift_destroy_boxed_opaque_existential_1(v64);
            if (v47)
            {
              v48 = *(v33 + 40);
              v49 = type metadata accessor for StaticClusterGroups(0);
              v50 = v61;
              sub_1D18B85C4(v46 + v48 + *(v49 + 20), v61);
              sub_1D18B8564(v46, type metadata accessor for StaticEndpoint);
              v51 = type metadata accessor for StaticThermostatClusterGroup(0);
              v52 = *(v51 - 8);
              if ((*(v52 + 48))(v50, 1, v51) != 1)
              {
                v53 = v50;
                v54 = v63;
                sub_1D18B8634(v53, v63, type metadata accessor for StaticThermostatClusterGroup);
                return (*(v52 + 56))(v54, 0, 1, v51);
              }
            }

            else
            {
              sub_1D18B8564(v46, type metadata accessor for StaticEndpoint);
              v56 = type metadata accessor for StaticThermostatClusterGroup(0);
              v50 = v61;
              (*(*(v56 - 8) + 56))(v61, 1, 1, v56);
            }

            v38 = &qword_1EC644790;
            v39 = &unk_1D1E75B48;
            v40 = v50;
          }
        }

        sub_1D1741A30(v40, v38, v39);
      }
    }
  }

  v57 = type metadata accessor for StaticThermostatClusterGroup(0);
  return (*(*(v57 - 8) + 56))(v63, 1, 1, v57);
}

Swift::Bool __swiftcall HMAccessory.isClimateAccessory()()
{
  v1 = [v0 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v2 = sub_1D1E67C1C();

  if (v2 >> 62)
  {
LABEL_25:
    v21 = sub_1D1E6873C();
  }

  else
  {
    v21 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v5 = v3;
    if (v21 == v3)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D3891EF0](v3, v2);
    }

    else
    {
      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v6 = *(v2 + 8 * v3 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v8 = [v6 serviceType];
    v9 = sub_1D1E6781C();
    v11 = v10;

    if (v9 == sub_1D1E6781C() && v11 == v12)
    {

      break;
    }

    v14 = sub_1D1E6904C();

    if (v14)
    {

      break;
    }

    v15 = [v7 serviceType];
    v16 = sub_1D1E6781C();
    v18 = v17;

    if (v16 == sub_1D1E6781C() && v18 == v19)
    {

      return v21 != v5;
    }

    v4 = sub_1D1E6904C();

    v3 = v5 + 1;
  }

  while ((v4 & 1) == 0);

  return v21 != v5;
}

uint64_t sub_1D18B75EC()
{
  v1[18] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643968, &qword_1D1E72CE0);
  v1[20] = swift_task_alloc();
  v2 = sub_1D1E662EC();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18B7728, 0, 0);
}

uint64_t sub_1D18B7728(uint64_t a1)
{
  v55 = v1;
  v3 = v1[19];
  v2 = v1[20];
  sub_1D1E66B9C();
  v4 = sub_1D1E66BBC();
  v5 = *(*(v4 - 8) + 56);
  v5(v2, 0, 1, v4);
  v6 = sub_1D1E66C5C();
  v7 = *(*(v6 - 8) + 56);
  v7(v3, 1, 1, v6);
  sub_1D1E662BC();
  sub_1D1E66B9C();
  v5(v2, 0, 1, v4);
  v7(v3, 1, 1, v6);
  LOBYTE(v51) = 1;
  LOBYTE(v50) = 1;
  LOBYTE(v49) = 1;
  LOBYTE(v48) = 1;
  LOBYTE(v47) = 1;
  LOBYTE(v46) = 1;
  LOBYTE(v45) = 1;
  LOBYTE(v44) = 1;
  LOBYTE(v43) = 0;
  LOBYTE(v42) = 0;
  LOBYTE(v41) = 1;
  sub_1D1E662BC();
  v8 = objc_allocWithZone(MEMORY[0x1E696CCC0]);
  v9 = sub_1D1E661FC();
  v10 = sub_1D1E661FC();
  v11 = [v8 initWithStartTime:v9 endTime:v10 daysOfTheWeek:{127, 0, v41, 6, v42, 0, v43, 0, v44, 0, v45, 0, v46, 0, v47, 0, v48, 0, v49, 0, v50, 0, v51}];
  v1[25] = v11;

  if (v11)
  {
    v12 = v1[18];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D1E73FA0;
    *(v13 + 32) = v11;
    v14 = objc_allocWithZone(MEMORY[0x1E696CCB8]);
    sub_1D1741B10(0, &qword_1EC645C68, 0x1E696CCC0);
    v15 = v11;
    v16 = sub_1D1E67BFC();

    v17 = [v14 initWithScheduleRules_];
    v1[26] = v17;

    v1[2] = v1;
    v1[3] = sub_1D18B7DAC;
    v18 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_1D17B04C8;
    v1[13] = &block_descriptor_7;
    v1[14] = v18;
    [v12 setThermostatSleepSchedule:v17 completion:v1 + 10];

    return MEMORY[0x1EEE6DEC8](v1 + 2);
  }

  else
  {
    if (qword_1EC642478 != -1)
    {
      swift_once();
    }

    v19 = v1[18];
    v20 = sub_1D1E6709C();
    __swift_project_value_buffer(v20, qword_1EC64F458);
    v21 = v19;
    v22 = sub_1D1E6707C();
    v23 = sub_1D1E6833C();

    v24 = os_log_type_enabled(v22, v23);
    v26 = v1[23];
    v25 = v1[24];
    v27 = v1[21];
    v28 = v1[22];
    if (v24)
    {
      v29 = v1[18];
      v53 = v1[24];
      v30 = swift_slowAlloc();
      v52 = v26;
      v31 = swift_slowAlloc();
      v54[0] = v31;
      *v30 = 136315650;
      *(v30 + 4) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EBBD10, v54);
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EBBD60, v54);
      *(v30 + 22) = 2080;
      v32 = [v29 name];
      v33 = sub_1D1E6781C();
      v35 = v34;

      v36 = sub_1D1B1312C(v33, v35, v54);

      *(v30 + 24) = v36;
      _os_log_impl(&dword_1D16EC000, v22, v23, "%s - %s: Failed to create default sleep schedule for accessory: %s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v31, -1, -1);
      MEMORY[0x1D3893640](v30, -1, -1);

      v37 = *(v28 + 8);
      v37(v52, v27);
      v38 = v53;
    }

    else
    {

      v37 = *(v28 + 8);
      v37(v26, v27);
      v38 = v25;
    }

    v37(v38, v27);

    v39 = v1[1];

    return v39();
  }
}

uint64_t sub_1D18B7DAC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1D18B81F8;
  }

  else
  {
    v2 = sub_1D18B7EBC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D18B7EBC()
{
  v35 = v0;
  if (qword_1EC642478 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[18];
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F458);
  v4 = v1;
  v5 = v2;
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6835C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v14 = v0[21];
  v13 = v0[22];
  if (v8)
  {
    v15 = v0[18];
    v33 = v0[21];
    v16 = swift_slowAlloc();
    v32 = v10;
    v17 = swift_slowAlloc();
    v31 = v12;
    v18 = swift_slowAlloc();
    v34 = v18;
    *v16 = 136315906;
    *(v16 + 4) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EBBD10, &v34);
    v30 = v11;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EBBD60, &v34);
    *(v16 + 22) = 2112;
    *(v16 + 24) = v9;
    *v17 = v9;
    *(v16 + 32) = 2080;
    v29 = v9;
    v19 = [v15 name];
    v20 = sub_1D1E6781C();
    v22 = v21;

    v23 = sub_1D1B1312C(v20, v22, &v34);

    *(v16 + 34) = v23;
    _os_log_impl(&dword_1D16EC000, v6, v7, "%s - %s: Successfully set default sleep schedule: %@ for accessory: %s", v16, 0x2Au);
    sub_1D1741A30(v17, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v18, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);

    v24 = *(v13 + 8);
    v24(v31, v33);
    v25 = v30;
    v26 = v33;
  }

  else
  {

    v24 = *(v13 + 8);
    v24(v12, v14);
    v25 = v11;
    v26 = v14;
  }

  v24(v25, v26);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1D18B81F8(uint64_t a1)
{
  v39 = v1;
  swift_willThrow();
  if (qword_1EC642478 != -1)
  {
    swift_once();
  }

  v2 = v1[27];
  v3 = v1[18];
  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EC64F458);
  v5 = v3;
  v6 = v2;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v1[26];
  v10 = v1[27];
  v12 = v1[24];
  v13 = v1[25];
  v15 = v1[22];
  v14 = v1[23];
  v16 = v1[21];
  if (v9)
  {
    v37 = v1[25];
    v17 = v1[18];
    v36 = v1[23];
    v18 = swift_slowAlloc();
    v35 = v11;
    v19 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v18 = 136315906;
    *(v18 + 4) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EBBD10, v38);
    v34 = v12;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EBBD60, v38);
    *(v18 + 22) = 2080;
    v20 = [v17 name];
    v32 = v16;
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, v38);

    *(v18 + 24) = v24;
    *(v18 + 32) = 2112;
    v25 = v10;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 34) = v26;
    *v19 = v26;
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s - %s: Failed to set default sleep schedule for accessory: %s due to error: %@", v18, 0x2Au);
    sub_1D1741A30(v19, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v19, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v33, -1, -1);
    MEMORY[0x1D3893640](v18, -1, -1);

    v27 = *(v15 + 8);
    v27(v36, v32);
    v28 = v34;
    v29 = v32;
  }

  else
  {

    v27 = *(v15 + 8);
    v27(v14, v16);
    v28 = v12;
    v29 = v16;
  }

  v27(v28, v29);

  v30 = v1[1];

  return v30();
}

uint64_t sub_1D18B8564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D18B85C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18B8634(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *HMActionSet.actionSetKind.getter@<X0>(char *a1@<X8>)
{
  v3 = [v1 actionSetType];
  sub_1D1E6781C();

  return HMActionSet.ActionSetKind.init(rawValue:)(a1);
}

uint64_t HMActionSet.ActionSetKind.defaultIconSymbolName.getter()
{
  v1 = *v0;
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        return 0x6174732E6E6F6F6DLL;
      }

      return 0x69662E6573756F68;
    }

    return 0x2E78616D2E6E7573;
  }

  else
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        return 0xD000000000000015;
      }

      return 0x69662E6573756F68;
    }

    return 0xD000000000000013;
  }
}

uint64_t HMActionSet.ActionSetKind.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D1E68C2C();

  v6 = 7;
  if (v4 < 7)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t HMActionSet.ActionSetKind.rawValue.getter()
{
  v1 = 0xD00000000000001ALL;
  v2 = *v0;
  v3 = 0xD000000000000021;
  if (v2 == 5)
  {
    v3 = 0xD00000000000001BLL;
  }

  v4 = 0xD000000000000014;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001CLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D18B89E4(uint64_t a1)
{
  sub_1D1E678EC();
}

void sub_1D18B8AE8(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ALL;
  v3 = *v1;
  v4 = "5291";
  v5 = "HMActionSetTypeUserDefined";
  v6 = 0xD000000000000021;
  if (v3 == 5)
  {
    v6 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = "HMActionSetTypeTriggerOwned";
  }

  v7 = "HMActionSetTypeWakeUp";
  v8 = 0xD000000000000014;
  if (v3 != 3)
  {
    v8 = 0xD00000000000001ALL;
    v7 = "HMActionSetTypeSleep";
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "HMActionSetTypeHomeArrival";
  v10 = 0xD00000000000001CLL;
  if (v3 != 1)
  {
    v10 = 0xD000000000000015;
    v9 = "HMActionSetTypeHomeDeparture";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 > 2u)
  {
    v2 = v6;
    v4 = v5;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t HMActionSet.defaultTint.getter()
{
  v1 = [v0 actionSetType];
  sub_1D1E6781C();

  HMActionSet.ActionSetKind.init(rawValue:)(&v3);
  result = 0;
  if (v3 > 1u)
  {
    if (v3 == 2)
    {
      return sub_1D1E673FC();
    }

    else if (v3 == 3)
    {
      return sub_1D1E673DC();
    }
  }

  else if (!v3 || v3 == 1)
  {
    return sub_1D1E673EC();
  }

  return result;
}

unint64_t sub_1D18B8D24()
{
  result = qword_1EC645C70;
  if (!qword_1EC645C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645C70);
  }

  return result;
}

unint64_t sub_1D18B8D7C()
{
  result = qword_1EC645C78;
  if (!qword_1EC645C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC645C80, &qword_1D1E7C0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645C78);
  }

  return result;
}

unint64_t sub_1D18B8DF0()
{
  result = qword_1EC645C88;
  if (!qword_1EC645C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645C88);
  }

  return result;
}

HomeDataModel::CharacteristicKind_optional HMCharacteristic.characteristicKind.getter@<W0>(unsigned __int8 *a1@<X8>)
{
  v3 = [v1 characteristicType];
  v4 = sub_1D1E6781C();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  result.value = CharacteristicKind.init(rawValue:)(v7).value;
  v9 = v10;
  if (v10 == 174)
  {
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t HMCharacteristic.BOOL.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1D18B8F54;

  return HMCharacteristic.fetchedValue()(v0 + 16);
}

uint64_t sub_1D18B8F54()
{

  return MEMORY[0x1EEE6DFA0](sub_1D18B9050, 0, 0);
}

uint64_t sub_1D18B9050()
{
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 56);
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    sub_1D18B9B30(v0 + 16);
    v1 = 2;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t HMCharacteristic.int.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D18B9188;

  return HMCharacteristic.fetchedValue()(v0 + 16);
}

uint64_t sub_1D18B9188()
{

  return MEMORY[0x1EEE6DFA0](sub_1D18B9284, 0, 0);
}

uint64_t sub_1D18B9284()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    if (v1)
    {
      v2 = v0[6];
    }

    else
    {
      v2 = 0;
    }

    v3 = v1 ^ 1u;
  }

  else
  {
    sub_1D18B9B30((v0 + 2));
    v2 = 0;
    v3 = 1;
  }

  v4 = v0[1];

  return v4(v2, v3);
}

id sub_1D18B9330(void *a1)
{
  v1 = a1;
  HMCharacteristic.description.getter();

  v2 = sub_1D1E677EC();

  return v2;
}

uint64_t HMCharacteristic.description.getter()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  v3 = [v0 service];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 accessory];

    if (v5 && (v6 = [v5 home], v5, v6))
    {
      v7 = [v6 name];

      v8 = sub_1D1E6781C();
      v2 = v9;

      v3 = v8;
    }

    else
    {
      v3 = 0;
      v2 = 0xE000000000000000;
    }
  }

  MEMORY[0x1D3890F70](v3, v2);

  MEMORY[0x1D3890F70](58, 0xE100000000000000);
  v10 = [v1 service];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 accessory];

    if (v12)
    {
      v13 = [v12 name];

      v14 = sub_1D1E6781C();
      v16 = v15;

      v10 = v14;
      goto LABEL_11;
    }

    v10 = 0;
  }

  v16 = 0xE000000000000000;
LABEL_11:
  MEMORY[0x1D3890F70](v10, v16);

  MEMORY[0x1D3890F70](58, 0xE100000000000000);
  v17 = [v1 service];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 serviceType];
    v20 = sub_1D1E6781C();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    ServiceKind.init(rawValue:)(v23);

    v17 = ServiceKind.localizedDescription.getter();
    v25 = v24;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  MEMORY[0x1D3890F70](v17, v25);

  MEMORY[0x1D3890F70](58, 0xE100000000000000);
  v26 = [v1 metadata];
  if (v26 && (v27 = v26, v28 = [v26 manufacturerDescription], v27, v28))
  {
    v29 = sub_1D1E6781C();
    v31 = v30;

    v32 = v29;
  }

  else
  {
    v31 = 0x80000001D1EBBD80;
    v32 = 0xD000000000000010;
  }

  MEMORY[0x1D3890F70](v32, v31);

  MEMORY[0x1D3890F70](58, 0xE100000000000000);
  if ([v1 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  v33 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v33);

  return 0;
}

uint64_t HMCharacteristic.bestNameForAccessory.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = [v0 service];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 accessory];

    if (v4)
    {
      v5 = [v4 name];

      v1 = sub_1D1E6781C();
    }
  }

  return v1;
}

uint64_t HMCharacteristic.fetchedValue()(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D18B97C8, 0, 0);
}

uint64_t sub_1D18B97C8()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D18B98DC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_19;
  v0[14] = v2;
  [v1 readValueWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D18B98DC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_1D18B9A80;
  }

  else
  {
    v2 = sub_1D18B99EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D18B99EC()
{
  v1 = [*(v0 + 152) value];
  v2 = *(v0 + 144);
  if (v1)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v2 = 0u;
    v2[1] = 0u;
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D18B9A80(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = [*(v1 + 152) value];
  v4 = *(v1 + 144);
  if (v3)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    *v4 = 0u;
    v4[1] = 0u;
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1D18B9B30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double HMCharacteristic.cachedValue.getter@<D0>(_OWORD *a1@<X8>)
{
  if ([v1 value])
  {
    sub_1D1E6866C();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t HMCharacteristic.cachedBool.getter()
{
  if ([v0 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 2;
  }
}

uint64_t HMCharacteristic.cachedInt.getter()
{
  if ([v0 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 0;
  }
}

uint64_t HMCharacteristic.float.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D18B9E0C;

  return HMCharacteristic.fetchedValue()(v0 + 16);
}

uint64_t sub_1D18B9E0C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D18B9F08, 0, 0);
}

uint64_t sub_1D18B9F08()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    if (v1)
    {
      v2 = v0[6];
    }

    else
    {
      v2 = 0;
    }

    v3 = v1 ^ 1u;
  }

  else
  {
    sub_1D18B9B30((v0 + 2));
    v2 = 0;
    v3 = 1;
  }

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t HMCharacteristic.cachedFloat.getter()
{
  if ([v0 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 0;
  }
}

uint64_t HMCharacteristic.data.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D18BA104;

  return HMCharacteristic.fetchedValue()(v0 + 16);
}

uint64_t sub_1D18BA104()
{

  return MEMORY[0x1EEE6DFA0](sub_1D18BA200, 0, 0);
}

uint64_t sub_1D18BA200()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    v2 = v1 == 0;
    if (v1)
    {
      v3 = v0[6];
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = 0xF000000000000000;
    }

    else
    {
      v4 = v0[7];
    }
  }

  else
  {
    sub_1D18B9B30((v0 + 2));
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t HMCharacteristic.tlv8.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D18BA344;

  return HMCharacteristic.fetchedValue()(v0 + 16);
}

uint64_t sub_1D18BA344()
{

  return MEMORY[0x1EEE6DFA0](sub_1D18BB198, 0, 0);
}

uint64_t _sSo16HMCharacteristicC13HomeDataModelE06cachedC010Foundation0C0VSgvg_0()
{
  if ([v0 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0u;
    v3 = 0u;
  }

  v4[0] = v2;
  v4[1] = v3;
  if (*(&v3 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 0;
  }
}

uint64_t HMCharacteristic.currentValue<A>()(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_1D1E669FC();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18BA5CC, 0, 0);
}

uint64_t sub_1D18BA5CC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = [v5 valueUpdatedTime];
  sub_1D1E669BC();

  v7 = [v5 notificationEnabledTime];
  sub_1D1E669BC();

  LOBYTE(v7) = sub_1D1E6695C();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v8(v1, v3);
  if (v7)
  {
    if ([*(v0 + 96) value])
    {
      sub_1D1E6866C();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    *(v0 + 48) = v15;
    *(v0 + 64) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
    v13 = swift_dynamicCast();
    (*(*(v12 - 8) + 56))(v11, v13 ^ 1u, 1, v12);

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_1D18BA810;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }
}

uint64_t sub_1D18BA810()
{

  return MEMORY[0x1EEE6DFA0](sub_1D18BA90C, 0, 0);
}

uint64_t sub_1D18BA90C()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  v3 = swift_dynamicCast();
  (*(*(v2 - 8) + 56))(v1, v3 ^ 1u, 1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D18BA9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = (*(a2 + 8))();
  if (result == 2 || (result & 1) == 0)
  {
    result = (*(a2 + 16))(a1, a2);
    if (result == 2 || (result & 1) == 0)
    {
      result = (*(a2 + 24))(&v9, a1, a2);
      v7 = v10;
      if (v10)
      {
        *a3 = v9;
        *(a3 + 16) = v7;
        v8 = 2;
      }

      else
      {
        result = (*(a2 + 32))(a1, a2);
        if (result == 2 || (result & 1) == 0)
        {
          *a3 = 0;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          v8 = -1;
        }

        else
        {
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *a3 = 1;
          v8 = 3;
        }
      }

      *(a3 + 24) = v8;
    }

    else
    {
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = 1;
      *(a3 + 24) = 1;
    }
  }

  else
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 1;
    *(a3 + 24) = 0;
  }

  return result;
}

uint64_t sub_1D18BADF0(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  *a2 = a1;
}

uint64_t sub_1D18BAEA0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  *a2 = *a1;
}

unint64_t sub_1D18BAF08()
{
  result = qword_1EC645CB0;
  if (!qword_1EC645CB0)
  {
    type metadata accessor for HMCharacteristicValueAirQuality(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645CB0);
  }

  return result;
}

HomeDataModel::CharacteristicKind_optional sub_1D18BB070@<W0>(unsigned __int8 *a1@<X8>)
{
  v3 = [*v1 characteristicType];
  v4 = sub_1D1E6781C();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  result.value = CharacteristicKind.init(rawValue:)(v7).value;
  v9 = v10;
  if (v10 == 174)
  {
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

uint64_t sub_1D18BB0EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return HMCharacteristic.currentValue<A>()(a1, a2);
}

Swift::Bool __swiftcall HMHome.shouldShowNoAccessOutsideOfSchedule(forRestrictedUser:)(HMUser forRestrictedUser)
{
  v2 = v1;
  v4 = sub_1D1E66C5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = forRestrictedUser.super.isa;
  v12 = [v2 homeAccessControlForUser_];
  v13 = [v12 restrictedGuestAccessSettings];
  if (!v13)
  {
    if (qword_1EC642450 != -1)
    {
      swift_once();
    }

    v54 = sub_1D1E6709C();
    __swift_project_value_buffer(v54, qword_1EC64F3E0);
    v55 = isa;
    v56 = v12;
    v57 = sub_1D1E6707C();
    v58 = sub_1D1E6835C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v94 = v61;
      *v59 = 136315650;
      *(v59 + 4) = sub_1D1B1312C(0xD000000000000037, 0x80000001D1EBBDA0, &v94);
      *(v59 + 12) = 2080;
      v62 = [v55 name];
      v63 = sub_1D1E6781C();
      v65 = v64;

      v66 = sub_1D1B1312C(v63, v65, &v94);

      *(v59 + 14) = v66;
      *(v59 + 22) = 2112;
      *(v59 + 24) = v56;
      *v60 = v56;
      v67 = v56;
      _os_log_impl(&dword_1D16EC000, v57, v58, "%s: user = %s. Returning false because restrictedGuestAccessSettings is nil. accessControl = %@", v59, 0x20u);
      sub_1D179F28C(v60);
      MEMORY[0x1D3893640](v60, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v61, -1, -1);
      MEMORY[0x1D3893640](v59, -1, -1);

LABEL_19:
      LOBYTE(v25) = 0;
      return v25;
    }

LABEL_17:
    goto LABEL_19;
  }

  v14 = v13;
  v92 = v12;
  v15 = v2;
  v16 = [v13 guestAccessSchedule];
  if (!v16)
  {
    if (qword_1EC642450 != -1)
    {
      swift_once();
    }

    v68 = sub_1D1E6709C();
    __swift_project_value_buffer(v68, qword_1EC64F3E0);
    v69 = isa;
    v70 = v92;
    v71 = v14;
    v72 = sub_1D1E6707C();
    v73 = sub_1D1E6835C();

    if (!os_log_type_enabled(v72, v73))
    {

      goto LABEL_19;
    }

    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    isa = swift_slowAlloc();
    v94 = isa;
    *v74 = 136315906;
    *(v74 + 4) = sub_1D1B1312C(0xD000000000000037, 0x80000001D1EBBDA0, &v94);
    *(v74 + 12) = 2080;
    v76 = [v69 name];
    v77 = sub_1D1E6781C();
    v78 = v14;
    v80 = v79;

    v81 = sub_1D1B1312C(v77, v80, &v94);

    *(v74 + 14) = v81;
    *(v74 + 22) = 2112;
    *(v74 + 24) = v70;
    *(v74 + 32) = 2112;
    *(v74 + 34) = v71;
    *v75 = v70;
    v75[1] = v78;
    v57 = v70;
    v82 = v71;
    _os_log_impl(&dword_1D16EC000, v72, v73, "%s: user = %s. Returning false because rgAccessSchedule is nil. accessControl = %@. rgAccessSettings = %@.", v74, 0x2Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v75, -1, -1);
    v83 = isa;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v83, -1, -1);
    MEMORY[0x1D3893640](v74, -1, -1);

    goto LABEL_17;
  }

  v17 = v16;
  v91 = v14;
  v18 = objc_opt_self();
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  v19 = v7;
  v20 = sub_1D1E6694C();
  (*(v9 + 8))(v11, v8);
  v21 = v15;
  v22 = [v15 timeZone];
  sub_1D1E66C3C();

  v23 = sub_1D1E66C0C();
  v24 = *(v5 + 8);
  v88 = v19;
  v89 = v5 + 8;
  v90 = v4;
  v87 = v24;
  v24(v19, v4);
  LODWORD(v19) = [v18 isDate:v20 withinAllowedTimeForSchedule:v17 forHomeInTimeZone:v23];

  v25 = v19 ^ 1;
  v26 = v17;
  if (qword_1EC642450 != -1)
  {
    swift_once();
  }

  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EC64F3E0);
  v28 = isa;
  v29 = v92;
  v30 = v17;
  v31 = v21;
  v32 = sub_1D1E6707C();
  v33 = sub_1D1E6835C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v86 = v31;
    v36 = v35;
    isa = swift_slowAlloc();
    v94 = isa;
    *v34 = 136316418;
    *(v34 + 4) = sub_1D1B1312C(0xD000000000000037, 0x80000001D1EBBDA0, &v94);
    *(v34 + 12) = 2080;
    v37 = [v28 name];
    v38 = sub_1D1E6781C();
    LODWORD(v92) = v33;
    v39 = v38;
    v41 = v40;

    v42 = sub_1D1B1312C(v39, v41, &v94);

    *(v34 + 14) = v42;
    *(v34 + 22) = 1024;
    *(v34 + 24) = v25;
    *(v34 + 28) = 2112;
    *(v34 + 30) = v29;
    *(v34 + 38) = 2112;
    *(v34 + 40) = v30;
    *v36 = v29;
    v36[1] = v26;
    v43 = v36;
    *(v34 + 48) = 2080;
    v44 = v29;
    v45 = v30;
    v46 = [v86 timeZone];
    v47 = v88;
    sub_1D1E66C3C();

    sub_1D18BBB04();
    v48 = v90;
    v49 = sub_1D1E68FAC();
    v51 = v50;
    v87(v47, v48);
    v52 = sub_1D1B1312C(v49, v51, &v94);

    *(v34 + 50) = v52;
    _os_log_impl(&dword_1D16EC000, v32, v92, "%s: user = %s. Returning %{BOOL}d. accessControl = %@. guestAccessSchedule = %@. timeZone = %s", v34, 0x3Au);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    v53 = isa;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v53, -1, -1);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  else
  {
  }

  return v25;
}

unint64_t sub_1D18BBB04()
{
  result = qword_1EC643940;
  if (!qword_1EC643940)
  {
    sub_1D1E66C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643940);
  }

  return result;
}

void sub_1D18BBB5C(unint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3891EF0](v8, a1);
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_1D18BD600(&v14, a2, a3, a4 & 1);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1D18BBC70()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D18BE798(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18BBD38(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D18BE798(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();
}

uint64_t sub_1D18BBDFC(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D18BE798(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18BBEC0(uint64_t a1, uint64_t a2, void *a3)
{

  v6 = a3;

  v21[0] = sub_1D18D8A70(MEMORY[0x1E69E7CC0]);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D18BE688();
    sub_1D1E681BC();
    a1 = v21[1];
    v7 = v21[2];
    v8 = v21[3];
    v9 = v21[4];
    v10 = v21[5];
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

  v14 = (v8 + 64) >> 6;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v9;
    v16 = v10;
    v17 = v9;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v8 = *(*(a1 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v8)
    {
LABEL_18:

      sub_1D1716918(a1);
      return v21[0];
    }

    while (1)
    {
      v20 = v8;
      sub_1D18BC124(v21, &v20, a2);

      v9 = v17;
      v10 = v18;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D1E6877C())
      {
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        swift_dynamicCast();
        v8 = v20;
        v17 = v9;
        v18 = v10;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_18;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);

  sub_1D1716918(a1);

  __break(1u);
  return result;
}

id sub_1D18BC124(uint64_t *a1, void **a2, uint64_t a3)
{
  v58 = a3;
  v56 = type metadata accessor for BatchRequestError.ID(0);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51 - v15;
  v17 = *a2;
  result = [v17 service];
  if (result)
  {
    v19 = result;
    v54 = a1;
    v55 = v3;
    v20 = [result uniqueIdentifier];

    sub_1D1E66A5C();
    v21 = *(v8 + 32);
    v21(v16, v14, v7);
    v52 = v16;
    v53 = v8;
    (*(v8 + 16))(v11, v16, v7);
    v22 = [v17 characteristicType];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    CharacteristicKind.init(rawValue:)(v26);
    if (v59 == 174)
    {
      v27 = 0;
    }

    else
    {
      v27 = v59;
    }

    v28 = v57;
    v21(v57, v11, v7);
    *(v28 + *(v56 + 20)) = v27;
    v29 = v58;
    v30 = v7;
    if (*(v58 + 16) && (v31 = sub_1D171D54C(v28), (v32 & 1) != 0))
    {
      v33 = *(*(v29 + 56) + 8 * v31);
      v34 = v33;
      sub_1D18BE73C(v28);
      v35 = v54;
      if (v33)
      {
        v36 = sub_1D1E6655C();
        v37 = v17;
        v38 = [v36 code];
        v39 = [v36 domain];
        v40 = sub_1D1E6781C();
        v42 = v41;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = *v35;
        sub_1D1753978(v38, v40, v42, 2, v37, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v49 = v17;
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v59 = *v35;
        sub_1D1753978(1, 0, 0, 3, v49, v50);
      }
    }

    else
    {
      sub_1D18BE73C(v28);
      v44 = sub_1D1E6781C();
      v46 = v45;
      v47 = v17;
      v35 = v54;
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v59 = *v35;
      sub_1D1753978(8, v44, v46, 2, v47, v48);
    }

    *v35 = v59;
    return (*(v53 + 8))(v52, v30);
  }

  return result;
}

uint64_t HMHome.perform(batchCharacteristicRequest:timeout:inProgressSnapshots:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 32) = a2;
  *(v5 + 40) = v4;
  *(v5 + 89) = a4;
  *(v5 + 88) = a3;
  *(v5 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18BC550, 0, 0);
}

uint64_t sub_1D18BC550()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 89);
  v4 = *(v0 + 88);
  v5 = *(v0 + 24);
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = sub_1D18D888C(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v0 + 56) = v8;
  *(v8 + 16) = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645CF8, &qword_1D1E7C3C8);
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *(v10 + 16) = v5;
  *(v10 + 24) = v8;
  *(v10 + 32) = v6;
  *(v10 + 40) = v3;
  *(v10 + 48) = v1;
  *(v10 + 56) = v2;
  *(v10 + 64) = v4 & 1;
  v11 = swift_task_alloc();
  *(v0 + 72) = v11;
  *v11 = v0;
  v11[1] = sub_1D18BC6DC;

  return MEMORY[0x1EEE6DD58](v0 + 16, v9, v9, 0, 0, &unk_1D1E7C3D8, v10, v9);
}

uint64_t sub_1D18BC6DC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D18BC868;
  }

  else
  {

    v2 = sub_1D18BC7F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D18BC7F8()
{

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D18BC868()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D18BC8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 105) = v11;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 104) = a6;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  *(v8 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v8 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18BC998, 0, 0);
}

uint64_t sub_1D18BC998()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 105);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 104);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = sub_1D1E67E7C();
  v24 = *(*(v8 - 8) + 56);
  v25 = v8;
  v24(v1, 1, 1);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v3;
  *(v9 + 56) = v5;
  *(v9 + 64) = v4;
  v10 = v6;

  v11 = v4;
  sub_1D1A01DC8(v1, &unk_1D1E7C4A8, v9);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  if ((v2 & 1) == 0)
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EE07B5D8);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6835C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 72);
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v15;
      _os_log_impl(&dword_1D16EC000, v13, v14, "performing batch request with timeout: %f", v16, 0xCu);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 56);

    (v24)(v17, 1, 1, v25);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v18;
    v20[5] = v19;

    sub_1D1A01DC8(v17, &unk_1D1E7C4C8, v20);
    sub_1D1741A30(v17, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v21 = swift_task_alloc();
  *(v0 + 88) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D00, &unk_1D1E7C4B0);
  *v21 = v0;
  v21[1] = sub_1D18BCCA4;

  return MEMORY[0x1EEE6DAC8](v0 + 16, 0, 0, v22);
}

uint64_t sub_1D18BCCA4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D18BCFE8;
  }

  else
  {
    v2 = sub_1D18BCDB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D18BCDB8()
{
  v16 = v0;
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645CF8, &qword_1D1E7C3C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07B5D8);

  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    if (v1)
    {
      v7 = sub_1D1741B10(0, &qword_1EC645D08, 0x1E696CB58);
      v8 = MEMORY[0x1D3891260](v1, v7);
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    v11 = sub_1D1B1312C(v8, v10, &v15);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1D16EC000, v3, v4, "batch request has completed with result: %s, cancelling timeout", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D3893640](v6, -1, -1);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = v1;
  }

  **(v0 + 24) = v12;

  v13 = *(v0 + 8);

  return v13();
}