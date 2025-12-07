uint64_t sub_1D19083E8(void **__dst, void **__src, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v31 = __src;
    if (a4 != __src || &__src[v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[v12];
    if (v10 < 8 || v31 <= v6)
    {
      goto LABEL_49;
    }

    v60 = v4;
LABEL_32:
    v51 = v31;
    v32 = v31 - 1;
    --v5;
    v33 = v14;
    while (1)
    {
      v34 = *--v33;
      v35 = *v32;
      v36 = v34;
      v37 = v35;
      HMMatterCommand.associatedMatterCommand.getter(&v54);
      if (v55)
      {
        sub_1D1742190(&v54, v57);
        HMMatterCommand.associatedMatterCommand.getter(&v52);
        if (v53)
        {
          sub_1D1742190(&v52, &v54);
          v49 = v14;
          v38 = v58;
          v39 = v59;
          __swift_project_boxed_opaque_existential_1(v57, v58);
          v48 = (*(v39 + 48))(v38, v39);
          v40 = v32;
          v41 = v55;
          v42 = v56;
          __swift_project_boxed_opaque_existential_1(&v54, v55);
          v43 = *(v42 + 48);
          v44 = v41;
          v4 = v60;
          v45 = v42;
          v32 = v40;
          v46 = v43(v44, v45);
          __swift_destroy_boxed_opaque_existential_1(&v54);
          __swift_destroy_boxed_opaque_existential_1(v57);

          v14 = v49;
          if (v48 < v46)
          {
            if (v5 + 1 != v51)
            {
              *v5 = *v32;
            }

            if (v49 <= v4 || (v31 = v32, v32 <= v6))
            {
              v31 = v32;
              goto LABEL_49;
            }

            goto LABEL_32;
          }

          goto LABEL_41;
        }

        sub_1D1741A30(&v52, &qword_1EC646A98, &unk_1D1E858B0);
        __swift_destroy_boxed_opaque_existential_1(v57);
      }

      else
      {
        sub_1D1741A30(&v54, &qword_1EC646A98, &unk_1D1E858B0);
      }

LABEL_41:
      if (v5 + 1 != v14)
      {
        *v5 = *v33;
      }

      --v5;
      v14 = v33;
      if (v33 <= v4)
      {
        v14 = v33;
        v31 = v51;
        goto LABEL_49;
      }
    }
  }

  if (a4 != __dst || &__dst[v9] <= a4)
  {
    memmove(a4, __dst, 8 * v9);
  }

  v14 = &v4[v9];
  if (v7 >= 8 && __src < v5)
  {
    v15 = __src;
    while (1)
    {
      v16 = *v4;
      v17 = *v15;
      v18 = v16;
      HMMatterCommand.associatedMatterCommand.getter(&v54);
      if (!v55)
      {
        break;
      }

      sub_1D1742190(&v54, v57);
      HMMatterCommand.associatedMatterCommand.getter(&v52);
      if (!v53)
      {
        sub_1D1741A30(&v52, &qword_1EC646A98, &unk_1D1E858B0);
        __swift_destroy_boxed_opaque_existential_1(v57);
LABEL_20:

LABEL_21:
        v29 = v4;
        if (v6 == v4++)
        {
          goto LABEL_23;
        }

LABEL_22:
        *v6 = *v29;
        goto LABEL_23;
      }

      sub_1D1742190(&v52, &v54);
      v50 = v15;
      v60 = v4;
      v19 = v58;
      v20 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v21 = (*(v20 + 48))(v19, v20);
      v22 = v14;
      v24 = v55;
      v23 = v56;
      __swift_project_boxed_opaque_existential_1(&v54, v55);
      v25 = *(v23 + 48);
      v26 = v23;
      v14 = v22;
      v27 = v25(v24, v26);
      __swift_destroy_boxed_opaque_existential_1(&v54);
      __swift_destroy_boxed_opaque_existential_1(v57);

      v28 = v21 < v27;
      v4 = v60;
      v15 = v50;
      if (!v28)
      {
        goto LABEL_21;
      }

      v29 = v50;
      v15 = v50 + 1;
      if (v6 != v50)
      {
        goto LABEL_22;
      }

LABEL_23:
      ++v6;
      if (v4 >= v14 || v15 >= v5)
      {
        goto LABEL_25;
      }
    }

    sub_1D1741A30(&v54, &qword_1EC646A98, &unk_1D1E858B0);
    goto LABEL_20;
  }

LABEL_25:
  v31 = v6;
LABEL_49:
  if (v31 != v4 || v31 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v31, v4, 8 * (v14 - v4));
  }

  return 1;
}

_BYTE *ClusterValue.init(clusterKind:endpointID:attributeValues:)@<X0>(_BYTE *result@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 2) = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t MatterClusterAttributeID.init(attributeID:clusterKind:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 4) = v3;
  return result;
}

uint64_t sub_1D19088E4()
{
  if (*v0)
  {
    return 0x4B72657473756C63;
  }

  else
  {
    return 0x7475626972747461;
  }
}

uint64_t sub_1D1908930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7475626972747461 && a2 == 0xEB00000000444965;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4B72657473756C63 && a2 == 0xEB00000000646E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

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

uint64_t sub_1D1908A14(uint64_t a1)
{
  v2 = sub_1D1909094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1908A50(uint64_t a1)
{
  v2 = sub_1D1909094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterClusterAttributeID.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646CE0, &qword_1D1E829D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1909094();
  sub_1D1E6930C();
  v15 = v8;
  v14 = 0;
  type metadata accessor for MTRAttributeIDType(0);
  sub_1D19090E8(&qword_1EC646CF0, &protocol conformance descriptor for MTRAttributeIDType);
  sub_1D1E68F1C();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_1D19002B4();
    sub_1D1E68F1C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MatterClusterAttributeID.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t MatterClusterAttributeID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646CF8, &qword_1D1E829D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1909094();
  sub_1D1E692FC();
  if (!v2)
  {
    type metadata accessor for MTRAttributeIDType(0);
    v15 = 0;
    sub_1D19090E8(&qword_1EC646D00, &protocol conformance descriptor for MTRAttributeIDType);
    sub_1D1E68D7C();
    v9 = v16;
    v13 = 1;
    sub_1D1900460();
    sub_1D1E68D7C();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    *(a2 + 4) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1908EF8()
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1908FA8(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

unint64_t sub_1D1909094()
{
  result = qword_1EC646CE8;
  if (!qword_1EC646CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646CE8);
  }

  return result;
}

uint64_t sub_1D19090E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTRAttributeIDType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1909130()
{
  result = qword_1EC646D08;
  if (!qword_1EC646D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D08);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MatterClusterAttributeID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE3 && *(a1 + 5))
  {
    return (*a1 + 227);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 0x1E;
  v5 = v3 - 30;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MatterClusterAttributeID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE2)
  {
    *(result + 4) = 0;
    *result = a2 - 227;
    if (a3 >= 0xE3)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE3)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 29;
    }
  }

  return result;
}

unint64_t sub_1D1909254()
{
  result = qword_1EC646D10;
  if (!qword_1EC646D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D10);
  }

  return result;
}

unint64_t sub_1D19092AC()
{
  result = qword_1EC646D18;
  if (!qword_1EC646D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D18);
  }

  return result;
}

unint64_t sub_1D1909304()
{
  result = qword_1EC646D20;
  if (!qword_1EC646D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D20);
  }

  return result;
}

unsigned __int8 *static MatterCommandFactory.matterCommand(clusterKind:commandID:expectedValues:commandFields:)@<X0>(unsigned __int8 *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *result;
  v8 = *a4;
  if ((v7 - 24) >= 4)
  {
    if (v7 == 11)
    {
      v20 = a2;
      v9 = &type metadata for StaticOnOffCluster.Command;
      v10 = sub_1D18FA3A8();
    }

    else
    {
      if (v7 != 17)
      {
        goto LABEL_8;
      }

      v20 = a2;
      v9 = &type metadata for StaticColorControlCluster.Command;
      v10 = sub_1D18FA3FC();
    }
  }

  else
  {
    v20 = a2;
    v9 = &type metadata for StaticRVCClusterGroup.Command;
    v10 = sub_1D18FA450();
  }

  v11 = v10;
  v22 = v7;
  v21 = v8;
  v12 = *(v10 + 16);
  v13 = sub_1D1E685AC();
  v19 = &v19;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v19 - v15;

  v12(&v22, v20, a3, &v21, v9, v11);
  Description = v9[-1].Description;
  if (Description[6](v16, 1, v9) == 1)
  {
    result = (*(v14 + 8))(v16, v13);
LABEL_8:
    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  *(a5 + 24) = v9;
  *(a5 + 32) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a5);
  return (Description[4])(boxed_opaque_existential_1, v16, v9);
}

void *static MatterCommandFactory.template(for:device:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StaticMatterDevice(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = static MatterDeviceType.primaryDeviceType(for:)(*(a2 + *(v7 + 40)), &v19);
  if (v19 != 23)
  {
    goto LABEL_4;
  }

  v11 = sub_1D1909778();
  sub_1D19097CC(a2, v9);
  v12 = sub_1D1E685AC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v18[-v14];
  StaticRVCClusterGroup.Command.Template.init(matterCommand:device:)(a1, v9, &v18[-v14]);
  v16 = off_1F4D71968;
  if ((*(off_1F4D71968 + 6))(v15, 1, &type metadata for StaticRVCClusterGroup.Command.Template) == 1)
  {
    result = (*(v13 + 8))(v15, v12);
LABEL_4:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = &type metadata for StaticRVCClusterGroup.Command.Template;
  *(a3 + 32) = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  return v16[4](boxed_opaque_existential_1, v15, &type metadata for StaticRVCClusterGroup.Command.Template);
}

unint64_t sub_1D1909778()
{
  result = qword_1EC646D28;
  if (!qword_1EC646D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D28);
  }

  return result;
}

uint64_t sub_1D19097CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D19098E4()
{
  result = qword_1EC646D30;
  if (!qword_1EC646D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D30);
  }

  return result;
}

uint64_t HMHome.device(for:)(uint64_t a1)
{
  v3 = [v1 accessories];
  sub_1D190A1D0();
  v4 = sub_1D1E67C1C();

  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = sub_1D1E682DC();
      if ((v11 & 1) == 0 && v10 == a1)
      {

        v12 = HMAccessory.matterDevice.getter();

        return v12;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t HMHome.allMatterNodeIDs.getter()
{
  v0 = HMHome.matterAccessories.getter();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_25:
    v3 = sub_1D1E6873C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_26:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_27;
  }

  v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_26;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0](v6, v1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_24;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v9 = sub_1D1E682DC();
      if (v10 & 1) == 0 && v9 && (_s13HomeDataModel19MatterStateSnapshotV17allowSnapshotting9accessorySbSo11HMAccessoryC_tFZ_0(v8))
      {
        break;
      }

LABEL_6:
      ++v6;
      if (v4 == v3)
      {
        goto LABEL_27;
      }
    }

    v11 = sub_1D1E682DC();
    v13 = v12;

    if (v13)
    {
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1D177EA60(0, *(v5 + 2) + 1, 1, v5);
    }

    v16 = *(v5 + 2);
    v15 = *(v5 + 3);
    if (v16 >= v15 >> 1)
    {
      v5 = sub_1D177EA60((v15 > 1), v16 + 1, 1, v5);
    }

    *(v5 + 2) = v16 + 1;
    *&v5[8 * v16 + 32] = v11;
  }

  while (v4 != v3);
LABEL_27:

  v17 = sub_1D1785204(v5);

  return v17;
}

uint64_t HMHome.matterAccessories.getter()
{
  v1 = [v0 accessories];
  sub_1D190A1D0();
  v2 = sub_1D1E67C1C();

  v13 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_1D1E6873C();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1D3891EF0](v4, v2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:
            v11 = v13;
            goto LABEL_21;
          }
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v5 = *(v2 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_16;
          }
        }

        v7 = v5;
        v8 = sub_1D1E682DC();
        if ((v9 & 1) != 0 || !v8)
        {
        }

        else
        {
          v10 = _s13HomeDataModel19MatterStateSnapshotV17allowSnapshotting9accessorySbSo11HMAccessoryC_tFZ_0(v7);

          if (v10)
          {
            sub_1D1E6896C();
            sub_1D1E689AC();
            sub_1D1E689BC();
            sub_1D1E6897C();
            goto LABEL_6;
          }
        }

LABEL_6:
        ++v4;
        if (v6 == v3)
        {
          goto LABEL_17;
        }
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_21:

  return v11;
}

unint64_t sub_1D1909DC8()
{
  v0 = HMHome.matterAccessories.getter();
  v1 = sub_1D18DA170(MEMORY[0x1E69E7CC0]);
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_34:

    return v1;
  }

LABEL_37:
  v3 = sub_1D1E6873C();
  if (!v3)
  {
    goto LABEL_34;
  }

LABEL_3:
  v4 = 0;
  v5 = v0 & 0xC000000000000001;
  v41 = v0 & 0xC000000000000001;
  v42 = v0;
  while (2)
  {
    v40 = v1;
    v1 = v4;
    while (1)
    {
      if (v5)
      {
        v6 = MEMORY[0x1D3891EF0](v1, v0);
      }

      else
      {
        if (v1 >= *(v2 + 16))
        {
          goto LABEL_36;
        }

        v6 = *(v0 + 8 * v1 + 32);
      }

      v7 = v6;
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v8 = sub_1D1E682DC();
      if ((v9 & 1) == 0)
      {
        v10 = v8;
        if (v8)
        {
          v11 = sub_1D1E682DC();
          if ((v12 & 1) == 0)
          {
            v13 = v11;
            if (v11)
            {
              break;
            }
          }
        }
      }

LABEL_6:

      ++v1;
      if (v4 == v3)
      {
        v1 = v40;
        goto LABEL_34;
      }
    }

    v14 = v3;
    v15 = HMAccessory.matterDevice.getter();
    if (!v15)
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v17 = sub_1D1E6709C();
      __swift_project_value_buffer(v17, qword_1EE07A0B0);
      v18 = v7;
      v7 = sub_1D1E6707C();
      v19 = sub_1D1E6835C();

      if (os_log_type_enabled(v7, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 134218242;
        *(v20 + 4) = v13;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v18;
        *v21 = v18;
        v22 = v18;
        _os_log_impl(&dword_1D16EC000, v7, v19, "HMAccessory had a matter node ID (%llu) but didn't return a device: (%@)", v20, 0x16u);
        sub_1D179F28C(v21);
        MEMORY[0x1D3893640](v21, -1, -1);
        MEMORY[0x1D3893640](v20, -1, -1);
      }

      v3 = v14;
      v5 = v41;
      v0 = v42;
      goto LABEL_6;
    }

    v23 = v15;
    v24 = v16;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_1D17420B0(v10);
    v28 = *(v40 + 16);
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      __break(1u);
      goto LABEL_40;
    }

    v32 = v27;
    if (*(v40 + 24) >= v31)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v26;
        sub_1D173AC34();
        v26 = v35;
        v1 = v40;
        if (v32)
        {
          goto LABEL_27;
        }

LABEL_29:
        *(v1 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        *(*(v1 + 48) + 8 * v26) = v10;
        v36 = (*(v1 + 56) + 16 * v26);
        *v36 = v23;
        v36[1] = v24;
        swift_unknownObjectRelease();

        v37 = *(v1 + 16);
        v30 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (!v30)
        {
          *(v1 + 16) = v38;
LABEL_31:
          v3 = v14;
          v5 = v41;
          v0 = v42;
          if (v4 != v3)
          {
            continue;
          }

          goto LABEL_34;
        }

LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_26:
      v1 = v40;
      if (v32)
      {
LABEL_27:
        v34 = (*(v1 + 56) + 16 * v26);
        *v34 = v23;
        v34[1] = v24;
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    break;
  }

  sub_1D172BA84(v31, isUniquelyReferenced_nonNull_native);
  v26 = sub_1D17420B0(v10);
  if ((v32 & 1) == (v33 & 1))
  {
    goto LABEL_26;
  }

LABEL_41:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

unint64_t sub_1D190A1D0()
{
  result = qword_1EE07B690;
  if (!qword_1EE07B690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE07B690);
  }

  return result;
}

uint64_t _sSo6HMHomeC13HomeDataModelE6device3forAC12MatterDevice_pSgSo11HMAccessoryC_tF_0(void *a1)
{
  v2 = sub_1D1E682DC();
  result = 0;
  if ((v4 & 1) == 0)
  {
    if (v2)
    {
      v5 = v2;
      result = HMAccessory.matterDevice.getter();
      if (!result)
      {
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v6 = sub_1D1E6709C();
        __swift_project_value_buffer(v6, qword_1EE07A0B0);
        v7 = a1;
        v8 = sub_1D1E6707C();
        v9 = sub_1D1E6835C();

        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          *v10 = 134218242;
          *(v10 + 4) = v5;
          *(v10 + 12) = 2112;
          *(v10 + 14) = v7;
          *v11 = v7;
          v12 = v7;
          _os_log_impl(&dword_1D16EC000, v8, v9, "HMAccessory had a matter node ID (%llu) but didn't return a device: (%@)", v10, 0x16u);
          sub_1D179F28C(v11);
          MEMORY[0x1D3893640](v11, -1, -1);
          MEMORY[0x1D3893640](v10, -1, -1);
        }

        return 0;
      }
    }
  }

  return result;
}

void *HMHomeManager.accessory(with:inHomeWithID:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v6 = sub_1D1E67C1C();

  v18[2] = a2;
  v7 = sub_1D174A6C4(sub_1D190A884, v18, v6);

  if (v7)
  {
    v8 = [v7 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v9 = sub_1D1E67C1C();

    if (v9 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1D3891EF0](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = sub_1D1E682DC();
        if ((v16 & 1) == 0 && v15 == a1)
        {

          return v13;
        }

        ++v11;
        if (v14 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

uint64_t HMHomeManager.matterDevice(with:inHomeWithID:)(uint64_t a1, uint64_t a2)
{
  v5 = [v2 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v6 = sub_1D1E67C1C();

  v19[2] = a2;
  v7 = sub_1D174A6C4(sub_1D190A864, v19, v6);

  if (v7)
  {
    v8 = [v7 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v9 = sub_1D1E67C1C();

    if (v9 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1D3891EF0](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = sub_1D1E682DC();
        if ((v16 & 1) == 0 && v15 == a1)
        {

          v17 = _sSo6HMHomeC13HomeDataModelE6device3forAC12MatterDevice_pSgSo11HMAccessoryC_tF_0(v13);

          return v17;
        }

        ++v11;
        if (v14 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

uint64_t sub_1D190A758(id *a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t HMAccessory.matterDevice.getter()
{
  if (_s13HomeDataModel19MatterStateSnapshotV17allowSnapshotting9accessorySbSo11HMAccessoryC_tFZ_0(v0))
  {
    if ([v0 hdm_matterDevice])
    {
      sub_1D1E6866C();
      swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0u;
      v16 = 0u;
    }

    v17 = v15;
    v18 = v16;
    if (*(&v16 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A370, &qword_1D1EAF8F0);
      if (swift_dynamicCast())
      {
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        (*(v14 + 24))([v0 home], ObjectType);
        swift_unknownObjectRelease();
        return v13;
      }
    }

    else
    {
      sub_1D1741A30(&v17, &qword_1EC649700, &qword_1D1E6E910);
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EE07A0B0);
    v4 = v0;
    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6833C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *&v15 = v9;
      *v7 = 136315650;
      *(v7 + 4) = sub_1D1B1312C(0xD00000000000002BLL, 0x80000001D1EBE060, &v15);
      *(v7 + 12) = 2112;
      *(v7 + 14) = v4;
      *v8 = v4;
      *(v7 + 22) = 2082;
      if ([v4 hdm_matterDevice])
      {
        sub_1D1E6866C();
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
      v10 = sub_1D1E678BC();
      v12 = sub_1D1B1312C(v10, v11, &v15);

      *(v7 + 24) = v12;
      _os_log_impl(&dword_1D16EC000, v5, v6, "%s Failed to create device from HMAccessory (%@). device: %{public}s", v7, 0x20u);
      sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v8, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v9, -1, -1);
      MEMORY[0x1D3893640](v7, -1, -1);
    }
  }

  return 0;
}

uint64_t MTRClusterDescriptor.endpointPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 device];
  v4 = [v3 hdm_getNodeID];

  sub_1D1E692EC();
  v5 = type metadata accessor for EndpointPath(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 1, 1, v5);
}

uint64_t MTRDeviceState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E75;
    case 2:
      return 0x6168636165726E75;
    case 1:
      return 0x6C62616863616572;
  }

  sub_1D1E6884C();

  v2 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v2);

  return 0xD000000000000010;
}

uint64_t sub_1D190B784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D190B7CC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v42 = a4;
  v43 = a5;
  v41 = a2;
  v12 = sub_1D1E6702C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D1E66FDC();
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  if (*a1)
  {
    v38 = v18;
    v39 = result;
    v40 = v7;
    if (qword_1EE07A050 != -1)
    {
      swift_once();
    }

    v21 = sub_1D1E6701C();
    __swift_project_value_buffer(v21, qword_1EE07A058);
    sub_1D18C20AC(a7, v46);

    v22 = sub_1D1E66FFC();
    sub_1D1E6703C();
    v37 = sub_1D1E683DC();

    if (sub_1D1E6855C())
    {

      sub_1D1E6706C();

      if ((*(v13 + 88))(v15, v12) == *MEMORY[0x1E69E93E8])
      {
        v23 = 0;
        v24 = 0;
        v36 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v15, v12);
        v24 = 2;
        v23 = 4;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v47 = v26;
      *v25 = v24;
      *(v25 + 1) = v23;
      *(v25 + 2) = 2082;
      *(v25 + 4) = sub_1D1B1312C(v41, a3, &v47);
      *(v25 + 12) = 2082;
      v27 = sub_1D1E6940C();
      v29 = sub_1D1B1312C(v27, v28, &v47);

      *(v25 + 14) = v29;
      *(v25 + 22) = 2082;
      *(v25 + 24) = sub_1D1B1312C(v43, a6, &v47);
      *(v25 + 32) = 2082;
      sub_1D18C20AC(v46, v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
      v30 = sub_1D1E678BC();
      v32 = v31;
      sub_1D1741A30(v46, &qword_1EC645D58, &unk_1D1E7E530);
      v33 = sub_1D1B1312C(v30, v32, &v47);

      *(v25 + 34) = v33;
      v34 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v22, v37, v34, "ExecutingMatterCommand", v36, v25, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v26, -1, -1);
      MEMORY[0x1D3893640](v25, -1, -1);

      result = (*(v38 + 8))(v20, v39);
    }

    else
    {

      (*(v38 + 8))(v20, v39);
      result = sub_1D1741A30(v46, &qword_1EC645D58, &unk_1D1E7E530);
    }

    *v44 = 0;
  }

  return result;
}

uint64_t sub_1D190BC38(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  v56 = a6;
  v54 = a4;
  v13 = sub_1D1E6702C();
  v53 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D1E66FDC();
  result = MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v46 = v13;
    v48 = a2;
    v49 = a5;
    v55 = v20;
    v50 = v18;
    v51 = result;
    v52 = a1;
    if (qword_1EE07A050 != -1)
    {
      swift_once();
    }

    v21 = sub_1D1E6701C();
    __swift_project_value_buffer(v21, qword_1EE07A058);

    v22 = a7;
    v23 = a3;
    v24 = sub_1D1E66FFC();
    v25 = v55;
    sub_1D1E6703C();
    v47 = sub_1D1E683DC();

    if (sub_1D1E6855C())
    {
      v45 = v7;

      sub_1D1E6706C();

      v26 = v53;
      v27 = v46;
      v28 = (*(v53 + 11))(v15, v46);
      v29 = *MEMORY[0x1E69E93E8];
      v44 = v24;
      if (v28 == v29)
      {
        v30 = 0;
        v31 = 0;
        v53 = "[Error] Interval already ended";
      }

      else
      {
        (*(v26 + 1))(v15, v27);
        v31 = 2;
        v30 = 4;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v57 = v34;
      *v32 = v31;
      *(v32 + 1) = v30;
      *(v32 + 2) = 2082;
      *(v32 + 4) = sub_1D1B1312C(v48, v23, &v57);
      *(v32 + 12) = 2082;
      v35 = sub_1D1E6940C();
      v37 = sub_1D1B1312C(v35, v36, &v57);

      *(v32 + 14) = v37;
      *(v32 + 22) = 2082;
      *(v32 + 24) = sub_1D1B1312C(v49, v56, &v57);
      *(v32 + 32) = 2114;
      v38 = a7;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v32 + 34) = v39;
      *v33 = v39;
      v40 = v55;
      v41 = sub_1D1E66FBC();
      v42 = v44;
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v44, v47, v41, "ExecutingMatterCommand", v53, v32, 0x2Au);
      sub_1D1741A30(v33, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v33, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v34, -1, -1);
      MEMORY[0x1D3893640](v32, -1, -1);

      result = (*(v50 + 8))(v40, v51);
    }

    else
    {

      result = (*(v50 + 8))(v25, v51);
    }

    *v52 = 0;
  }

  return result;
}

uint64_t sub_1D190C0A4(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v37 = a4;
  v38 = a5;
  v36 = a2;
  v10 = sub_1D1E6702C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D1E66FDC();
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v32 = v16;
    v33 = result;
    v34 = a1;
    v35 = v6;
    if (qword_1EE07A050 != -1)
    {
      swift_once();
    }

    v19 = sub_1D1E6701C();
    __swift_project_value_buffer(v19, qword_1EE07A058);

    v20 = sub_1D1E66FFC();
    sub_1D1E6703C();
    v31 = sub_1D1E683DC();

    if (sub_1D1E6855C())
    {

      sub_1D1E6706C();

      if ((*(v11 + 88))(v13, v10) == *MEMORY[0x1E69E93E8])
      {
        v21 = 0;
        v22 = 0;
        v30 = "[Error] Interval already ended";
      }

      else
      {
        (*(v11 + 8))(v13, v10);
        v22 = 2;
        v21 = 3;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v39 = v24;
      *v23 = v22;
      *(v23 + 1) = v21;
      *(v23 + 2) = 2082;
      *(v23 + 4) = sub_1D1B1312C(v36, a3, &v39);
      *(v23 + 12) = 2082;
      v25 = sub_1D1E6940C();
      v27 = sub_1D1B1312C(v25, v26, &v39);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2082;
      *(v23 + 24) = sub_1D1B1312C(v38, a6, &v39);
      v28 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v20, v31, v28, "ExecutingMatterCommand", v30, v23, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    result = (*(v32 + 8))(v18, v33);
    *v34 = 0;
  }

  return result;
}

uint64_t sub_1D190C444(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v54 = a4;
  v11 = sub_1D1E66FDC();
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v56 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - v14;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D1E6709C();
  __swift_project_value_buffer(v16, qword_1EE07A0B0);

  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6835C();

  v19 = os_log_type_enabled(v17, v18);
  v55 = a5;
  v53 = a2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v60 = v51;
    *v20 = 136446978;
    *(v20 + 4) = sub_1D1B1312C(a1, a2, &v60);
    *(v20 + 12) = 2082;
    v21 = sub_1D1E6940C();
    v23 = sub_1D1B1312C(v21, v22, &v60);
    v52 = a3;
    v24 = v23;

    *(v20 + 14) = v24;
    *(v20 + 22) = 2082;
    *(v20 + 24) = sub_1D1B1312C(v54, a5, &v60);
    *(v20 + 32) = 2082;
    v59 = a6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646D70, &qword_1D1E830B8);
    v25 = sub_1D1E678BC();
    v27 = sub_1D1B1312C(v25, v26, &v60);

    *(v20 + 34) = v27;
    v28 = v51;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v28, -1, -1);
    MEMORY[0x1D3893640](v20, -1, -1);
  }

  if (qword_1EE07A050 != -1)
  {
    swift_once();
  }

  v29 = sub_1D1E6701C();
  __swift_project_value_buffer(v29, qword_1EE07A058);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  v30 = v53;

  v31 = v55;

  v32 = sub_1D1E66FFC();
  v33 = sub_1D1E683EC();

  if (sub_1D1E6855C())
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    LODWORD(v52) = v33;
    v36 = v31;
    v37 = v35;
    v60 = v35;
    *v34 = 136446978;
    *(v34 + 4) = sub_1D1B1312C(a1, v30, &v60);
    *(v34 + 12) = 2082;
    v38 = sub_1D1E6940C();
    v40 = sub_1D1B1312C(v38, v39, &v60);

    *(v34 + 14) = v40;
    *(v34 + 22) = 2082;
    *(v34 + 24) = sub_1D1B1312C(v54, v36, &v60);
    *(v34 + 32) = 2082;
    v59 = a6;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646D70, &qword_1D1E830B8);
    v41 = sub_1D1E678BC();
    v43 = sub_1D1B1312C(v41, v42, &v60);

    *(v34 + 34) = v43;
    v44 = sub_1D1E66FBC();
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v37, -1, -1);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  v45 = v57;
  v46 = v15;
  v47 = v15;
  v48 = v58;
  (*(v57 + 16))(v56, v46, v58);
  sub_1D1E6705C();
  swift_allocObject();
  v49 = sub_1D1E6704C();
  (*(v45 + 8))(v47, v48);
  return v49;
}

void sub_1D190C9A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, os_unfair_lock_s *a7)
{
  os_unfair_lock_lock(a7 + 6);
  sub_1D190D0D0(&a7[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a7 + 6);
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EE07A0B0);
  sub_1D18C20AC(a6, v27);

  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6835C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26 = v17;
    *v16 = 136446978;
    *(v16 + 4) = sub_1D1B1312C(a1, a2, &v26);
    *(v16 + 12) = 2082;
    v18 = sub_1D1E6940C();
    v20 = sub_1D1B1312C(v18, v19, &v26);

    *(v16 + 14) = v20;
    *(v16 + 22) = 2082;
    *(v16 + 24) = sub_1D1B1312C(a4, a5, &v26);
    *(v16 + 32) = 2082;
    sub_1D18C20AC(v27, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
    v21 = sub_1D1E678BC();
    v23 = v22;
    sub_1D1741A30(v27, &qword_1EC645D58, &unk_1D1E7E530);
    v24 = sub_1D1B1312C(v21, v23, &v26);

    *(v16 + 34) = v24;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {

    sub_1D1741A30(v27, &qword_1EC645D58, &unk_1D1E7E530);
  }
}

void sub_1D190CC44(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, os_unfair_lock_s *a7)
{
  os_unfair_lock_lock(a7 + 6);
  sub_1D190D0F4(&a7[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a7 + 6);
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EE07A0B0);

  v14 = a6;
  v15 = sub_1D1E6707C();
  v16 = sub_1D1E6833C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25 = a4;
    v19 = swift_slowAlloc();
    v26[0] = v19;
    *v17 = 136446978;
    *(v17 + 4) = sub_1D1B1312C(a1, a2, v26);
    *(v17 + 12) = 2082;
    v20 = sub_1D1E6940C();
    v22 = sub_1D1B1312C(v20, v21, v26);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2082;
    *(v17 + 24) = sub_1D1B1312C(v25, a5, v26);
    *(v17 + 32) = 2114;
    v23 = a6;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 34) = v24;
    *v18 = v24;
    sub_1D1741A30(v18, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v18, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }
}

void sub_1D190CEB0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, os_unfair_lock_s *a6)
{
  os_unfair_lock_lock(a6 + 6);
  sub_1D190D0AC(&a6[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a6 + 6);
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EE07A0B0);

  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6833C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19[0] = v15;
    *v14 = 136446722;
    *(v14 + 4) = sub_1D1B1312C(a1, a2, v19);
    *(v14 + 12) = 2082;
    v16 = sub_1D1E6940C();
    v18 = sub_1D1B1312C(v16, v17, v19);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2082;
    *(v14 + 24) = sub_1D1B1312C(a4, a5, v19);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }
}

uint64_t type metadata accessor for StaticColorControlCluster(uint64_t a1)
{
  result = qword_1EE07BF38;
  if (!qword_1EE07BF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticColorControlCluster.primaries.getter()
{
  type metadata accessor for StaticColorControlCluster(0);
}

uint64_t StaticColorControlCluster.colorPointR.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticColorControlCluster(0);
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 9) = v4;
  return result;
}

uint64_t StaticColorControlCluster.colorPointG.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticColorControlCluster(0);
  v4 = (v1 + *(result + 56));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 9) = v4;
  return result;
}

uint64_t StaticColorControlCluster.colorPointB.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticColorControlCluster(0);
  v4 = (v1 + *(result + 60));
  v5 = *v4;
  v6 = *(v4 + 8);
  LOBYTE(v4) = *(v4 + 9);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 9) = v4;
  return result;
}

uint64_t StaticColorControlCluster.currentColorMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticColorControlCluster(0);
  *a1 = *(v1 + *(result + 80));
  return result;
}

uint64_t StaticColorControlCluster.compensationText.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticColorControlCluster(0) + 88));

  return v1;
}

int *StaticColorControlCluster.init(id:currentHue:currentSaturation:enhancedCurrentHue:currentX:currentY:primaries:whitePointX:whitePointY:colorPointR:colorPointG:colorPointB:currentColorTemperature:colorTemperatureMin:colorTemperatureMax:supportedColorModes:currentColorMode:driftCompensation:compensationText:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, __int16 a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, __int16 a10, char a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, __int16 a15, char a16, __int16 a17, char a18, __int16 a19, char a20, __int16 a21, char *a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  v51 = *a12;
  v49 = *(a12 + 9);
  v50 = *(a12 + 8);
  v54 = *a13;
  v52 = *(a13 + 9);
  v53 = *(a13 + 8);
  v57 = *a14;
  v55 = *(a14 + 9);
  v56 = *(a14 + 8);
  v59 = *a22;
  sub_1D190D804(a1, a9);
  result = type metadata accessor for StaticColorControlCluster(0);
  v34 = (a9 + result[5]);
  *v34 = a2;
  v34[1] = HIBYTE(a2) & 1;
  v35 = (a9 + result[6]);
  *v35 = a3;
  v35[1] = HIBYTE(a3) & 1;
  v36 = a9 + result[7];
  *v36 = a4;
  *(v36 + 2) = BYTE2(a4) & 1;
  v37 = a9 + result[8];
  *v37 = a5;
  *(v37 + 2) = BYTE2(a5) & 1;
  v38 = a9 + result[9];
  *v38 = a6;
  *(v38 + 2) = BYTE2(a6) & 1;
  *(a9 + result[10]) = a7;
  v39 = a9 + result[11];
  *v39 = a8;
  *(v39 + 2) = BYTE2(a8) & 1;
  v40 = a9 + result[12];
  *v40 = a10;
  *(v40 + 2) = a11 & 1;
  v41 = a9 + result[13];
  *v41 = v51;
  *(v41 + 8) = v50;
  *(v41 + 9) = v49;
  v42 = a9 + result[14];
  *v42 = v54;
  *(v42 + 8) = v53;
  *(v42 + 9) = v52;
  v43 = a9 + result[15];
  *v43 = v57;
  *(v43 + 8) = v56;
  *(v43 + 9) = v55;
  v44 = a9 + result[16];
  *v44 = a15;
  *(v44 + 2) = a16 & 1;
  v45 = a9 + result[17];
  *v45 = a17;
  *(v45 + 2) = a18 & 1;
  v46 = a9 + result[18];
  *v46 = a19;
  *(v46 + 2) = a20 & 1;
  *(a9 + result[19]) = a21;
  *(a9 + result[20]) = v59;
  v47 = (a9 + result[21]);
  *v47 = a23;
  v47[1] = a24 & 1;
  v48 = (a9 + result[22]);
  *v48 = a25;
  v48[1] = a26;
  return result;
}

uint64_t sub_1D190D804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClusterPath(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D190D86C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x48746E6572727563;
      break;
    case 2:
    case 17:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x58746E6572727563;
      break;
    case 5:
      result = 0x59746E6572727563;
      break;
    case 6:
      result = 0x656972616D697270;
      break;
    case 7:
      result = 0x696F506574696877;
      break;
    case 8:
      result = 0x696F506574696877;
      break;
    case 9:
      result = 0x696F50726F6C6F63;
      break;
    case 10:
      result = 0x696F50726F6C6F63;
      break;
    case 11:
      result = 0x696F50726F6C6F63;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
    case 18:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D190DA9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19143B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D190DAD0(uint64_t a1)
{
  v2 = sub_1D1913890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D190DB0C(uint64_t a1)
{
  v2 = sub_1D1913890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticColorControlCluster.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646D78, &qword_1D1E830E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1913890();
  sub_1D1E6930C();
  LOBYTE(v21) = 0;
  type metadata accessor for ClusterPath(0);
  sub_1D1914B04(&qword_1EC646D88, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticColorControlCluster(0);
    LOBYTE(v21) = 1;
    sub_1D1E68E8C();
    LOBYTE(v21) = 2;
    sub_1D1E68E8C();
    LOBYTE(v21) = 3;
    sub_1D1E68E9C();
    LOBYTE(v21) = 4;
    sub_1D1E68E9C();
    LOBYTE(v21) = 5;
    sub_1D1E68E9C();
    v21 = *(v3 + v9[10]);
    v24 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646D90, &qword_1D1E830E8);
    sub_1D191398C(&qword_1EC646D98, sub_1D19138E4, MEMORY[0x1E69E6300]);
    sub_1D1E68F1C();
    LOBYTE(v21) = 7;
    sub_1D1E68E9C();
    LOBYTE(v21) = 8;
    sub_1D1E68E9C();
    v10 = (v3 + v9[13]);
    v11 = *v10;
    v12 = *(v10 + 8);
    LOBYTE(v10) = *(v10 + 9);
    v21 = v11;
    v22 = v12;
    v23 = v10;
    v24 = 9;
    sub_1D19138E4();
    sub_1D1E68E5C();
    v13 = (v3 + v9[14]);
    v14 = *v13;
    v15 = *(v13 + 8);
    LOBYTE(v13) = *(v13 + 9);
    v21 = v14;
    v22 = v15;
    v23 = v13;
    v24 = 10;
    sub_1D1E68E5C();
    v16 = (v3 + v9[15]);
    v17 = *v16;
    v18 = *(v16 + 8);
    LOBYTE(v16) = *(v16 + 9);
    v21 = v17;
    v22 = v18;
    v23 = v16;
    v24 = 11;
    sub_1D1E68E5C();
    LOBYTE(v21) = 12;
    sub_1D1E68E9C();
    LOBYTE(v21) = 13;
    sub_1D1E68E9C();
    LOBYTE(v21) = 14;
    sub_1D1E68E9C();
    LOWORD(v21) = *(v3 + v9[19]);
    v24 = 15;
    type metadata accessor for MTRColorControlColorCapabilitiesBitmap(0);
    sub_1D1914B04(&qword_1EC646DA8, type metadata accessor for MTRColorControlColorCapabilitiesBitmap, &protocol conformance descriptor for MTRColorControlColorCapabilitiesBitmap);
    sub_1D1E68F1C();
    LOBYTE(v21) = *(v3 + v9[20]);
    v24 = 16;
    sub_1D1913938();
    sub_1D1E68F1C();
    LOBYTE(v21) = 17;
    sub_1D1E68E8C();
    LOBYTE(v21) = 18;
    sub_1D1E68E0C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticColorControlCluster.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1914B04(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v3 + 20)));
  sub_1D1E6923C();
  type metadata accessor for ClusterPath(0);
  sub_1D1E6924C();
  v4 = type metadata accessor for StaticColorControlCluster(0);
  if ((*(v1 + v4[5] + 1) & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if ((*(v1 + v4[6] + 1) & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + v4[7] + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  if (*(v1 + v4[8] + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  if (*(v1 + v4[9] + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  sub_1D17704D0(a1, *(v1 + v4[10]));
  if (*(v1 + v4[11] + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  if (*(v1 + v4[12] + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v5 = (v1 + v4[13]);
  if ((*(v5 + 9) & 1) == 0)
  {
    v6 = *(v5 + 8);
    v7 = *v5;
    sub_1D1E6922C();
    if ((v7 & 0x10000) != 0)
    {
      sub_1D1E6922C();
      if ((v7 & 0x1000000000000) != 0)
      {
LABEL_24:
        sub_1D1E6922C();
        if (v6)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    else
    {
      sub_1D1E6922C();
      sub_1D1E6923C();
      if ((v7 & 0x1000000000000) != 0)
      {
        goto LABEL_24;
      }
    }

    sub_1D1E6922C();
    sub_1D1E6923C();
    if (v6)
    {
      goto LABEL_29;
    }

LABEL_28:
    sub_1D1E6922C();
  }

LABEL_29:
  sub_1D1E6922C();
  v8 = (v1 + v4[14]);
  if (*(v8 + 9))
  {
    goto LABEL_38;
  }

  v9 = *(v8 + 8);
  v10 = *v8;
  sub_1D1E6922C();
  if ((v10 & 0x10000) != 0)
  {
    sub_1D1E6922C();
    if ((v10 & 0x1000000000000) != 0)
    {
LABEL_33:
      sub_1D1E6922C();
      if ((v9 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_38;
    }
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
    if ((v10 & 0x1000000000000) != 0)
    {
      goto LABEL_33;
    }
  }

  sub_1D1E6922C();
  sub_1D1E6923C();
  if ((v9 & 1) == 0)
  {
LABEL_37:
    sub_1D1E6922C();
  }

LABEL_38:
  sub_1D1E6922C();
  v11 = (v1 + v4[15]);
  if (*(v11 + 9))
  {
    goto LABEL_47;
  }

  v12 = *(v11 + 8);
  v13 = *v11;
  sub_1D1E6922C();
  if ((v13 & 0x10000) != 0)
  {
    sub_1D1E6922C();
    if ((v13 & 0x1000000000000) != 0)
    {
LABEL_42:
      sub_1D1E6922C();
      if ((v12 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_47;
    }
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
    if ((v13 & 0x1000000000000) != 0)
    {
      goto LABEL_42;
    }
  }

  sub_1D1E6922C();
  sub_1D1E6923C();
  if ((v12 & 1) == 0)
  {
LABEL_46:
    sub_1D1E6922C();
  }

LABEL_47:
  sub_1D1E6922C();
  if (*(v1 + v4[16] + 2))
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  if (*(v1 + v4[17] + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  if (*(v1 + v4[18] + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  sub_1D1E6923C();
  sub_1D1E6922C();
  if ((*(v1 + v4[21] + 1) & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (!*(v1 + v4[22] + 8))
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();

  return sub_1D1E678EC();
}

uint64_t StaticColorControlCluster.hashValue.getter()
{
  sub_1D1E6920C();
  StaticColorControlCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticColorControlCluster.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646DB8, &unk_1D1E830F0);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v54 - v8;
  v10 = type metadata accessor for StaticColorControlCluster(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D1913890();
  v58 = v9;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v14 = v56;
  v54 = v10;
  v15 = v12;
  LOBYTE(v60) = 0;
  sub_1D1914B04(&qword_1EC646DC0, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  sub_1D1E68D7C();
  sub_1D190D804(v6, v12);
  LOBYTE(v60) = 1;
  v16 = sub_1D1E68CEC();
  v17 = v54;
  v18 = (v15 + v54[5]);
  *v18 = v16;
  v18[1] = HIBYTE(v16) & 1;
  LOBYTE(v60) = 2;
  v19 = sub_1D1E68CEC();
  v20 = (v15 + v17[6]);
  *v20 = v19;
  v20[1] = HIBYTE(v19) & 1;
  LOBYTE(v60) = 3;
  v21 = sub_1D1E68CFC();
  v22 = v15 + v17[7];
  *v22 = v21;
  *(v22 + 2) = BYTE2(v21) & 1;
  LOBYTE(v60) = 4;
  v23 = sub_1D1E68CFC();
  v24 = v15 + v17[8];
  *v24 = v23;
  *(v24 + 2) = BYTE2(v23) & 1;
  LOBYTE(v60) = 5;
  v25 = sub_1D1E68CFC();
  v26 = v15 + v17[9];
  *v26 = v25;
  *(v26 + 2) = BYTE2(v25) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646D90, &qword_1D1E830E8);
  v63 = 6;
  sub_1D191398C(&qword_1EC646DC8, sub_1D1913A04, MEMORY[0x1E69E6330]);
  sub_1D1E68D7C();
  *(v15 + v17[10]) = v60;
  LOBYTE(v60) = 7;
  v27 = sub_1D1E68CFC();
  v28 = v15 + v17[11];
  *v28 = v27;
  *(v28 + 2) = BYTE2(v27) & 1;
  LOBYTE(v60) = 8;
  v29 = sub_1D1E68CFC();
  v30 = v15 + v17[12];
  *v30 = v29;
  *(v30 + 2) = BYTE2(v29) & 1;
  v63 = 9;
  sub_1D1913A04();
  sub_1D1E68CBC();
  v31 = v61;
  v32 = v62;
  v33 = v15 + v54[13];
  *v33 = v60;
  *(v33 + 8) = v31;
  *(v33 + 9) = v32;
  v63 = 10;
  sub_1D1E68CBC();
  v34 = v61;
  v35 = v62;
  v36 = v15 + v54[14];
  *v36 = v60;
  *(v36 + 8) = v34;
  *(v36 + 9) = v35;
  v63 = 11;
  sub_1D1E68CBC();
  v37 = v61;
  v38 = v62;
  v39 = v15 + v54[15];
  *v39 = v60;
  *(v39 + 8) = v37;
  *(v39 + 9) = v38;
  LOBYTE(v60) = 12;
  v40 = sub_1D1E68CFC();
  v41 = v15 + v54[16];
  *v41 = v40;
  *(v41 + 2) = BYTE2(v40) & 1;
  LOBYTE(v60) = 13;
  v42 = sub_1D1E68CFC();
  v43 = v15 + v54[17];
  *v43 = v42;
  *(v43 + 2) = BYTE2(v42) & 1;
  LOBYTE(v60) = 14;
  v44 = sub_1D1E68CFC();
  v45 = v15 + v54[18];
  *v45 = v44;
  *(v45 + 2) = BYTE2(v44) & 1;
  type metadata accessor for MTRColorControlColorCapabilitiesBitmap(0);
  v63 = 15;
  sub_1D1914B04(&qword_1EC646DD8, type metadata accessor for MTRColorControlColorCapabilitiesBitmap, &protocol conformance descriptor for MTRColorControlColorCapabilitiesBitmap);
  sub_1D1E68D7C();
  *(v15 + v54[19]) = v60;
  v63 = 16;
  sub_1D1913A58();
  sub_1D1E68D7C();
  *(v15 + v54[20]) = v60;
  LOBYTE(v60) = 17;
  v46 = sub_1D1E68CEC();
  v47 = (v15 + v54[21]);
  *v47 = v46;
  v47[1] = HIBYTE(v46) & 1;
  LOBYTE(v60) = 18;
  v48 = sub_1D1E68C6C();
  v50 = v49;
  (*(v14 + 8))(v58, v57);
  v51 = v55;
  v52 = (v15 + v54[22]);
  *v52 = v48;
  v52[1] = v50;
  sub_1D1913AAC(v15, v51, type metadata accessor for StaticColorControlCluster);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return sub_1D1913B14(v15, type metadata accessor for StaticColorControlCluster);
}

uint64_t sub_1D190F070()
{
  sub_1D1E6920C();
  StaticColorControlCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D190F0B4(uint64_t a1)
{
  sub_1D1E6920C();
  StaticColorControlCluster.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticColorControlCluster.description.getter()
{
  v1 = 7104878;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EBE0D0);
  v2 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](0x6E6572727563202CLL, 0xED00003A65754874);
  v3 = type metadata accessor for StaticColorControlCluster(0);
  if (*(v0 + v3[5] + 1))
  {
    v4 = 0xE300000000000000;
    v5 = 7104878;
  }

  else
  {
    v5 = sub_1D1E68FAC();
    v4 = v6;
  }

  MEMORY[0x1D3890F70](v5, v4);

  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EBE0F0);
  if (*(v0 + v3[6] + 1))
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    v8 = sub_1D1E68FAC();
    v7 = v9;
  }

  MEMORY[0x1D3890F70](v8, v7);

  MEMORY[0x1D3890F70](0x6572727563200A2CLL, 0xED0000203A58746ELL);
  if (*(v0 + v3[8] + 2))
  {
    v10 = 0xE300000000000000;
    v11 = 7104878;
  }

  else
  {
    v11 = sub_1D1E68FAC();
    v10 = v12;
  }

  MEMORY[0x1D3890F70](v11, v10);

  MEMORY[0x1D3890F70](0x6E6572727563202CLL, 0xEC000000203A5974);
  if (*(v0 + v3[9] + 2))
  {
    v13 = 0xE300000000000000;
    v14 = 7104878;
  }

  else
  {
    v14 = sub_1D1E68FAC();
    v13 = v15;
  }

  MEMORY[0x1D3890F70](v14, v13);

  MEMORY[0x1D3890F70](0xD00000000000001CLL, 0x80000001D1EBE110);
  if (*(v0 + v3[16] + 2))
  {
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  else
  {
    v17 = sub_1D1E68FAC();
    v16 = v18;
  }

  MEMORY[0x1D3890F70](v17, v16);

  MEMORY[0x1D3890F70](0xD000000000000018, 0x80000001D1EBE130);
  if (*(v0 + v3[17] + 2))
  {
    v19 = 0xE300000000000000;
    v20 = 7104878;
  }

  else
  {
    v20 = sub_1D1E68FAC();
    v19 = v21;
  }

  MEMORY[0x1D3890F70](v20, v19);

  MEMORY[0x1D3890F70](0xD000000000000018, 0x80000001D1EBE150);
  if (*(v0 + v3[18] + 2))
  {
    v22 = 0xE300000000000000;
    v23 = 7104878;
  }

  else
  {
    v23 = sub_1D1E68FAC();
    v22 = v24;
  }

  MEMORY[0x1D3890F70](v23, v22);

  MEMORY[0x1D3890F70](0xD000000000000018, 0x80000001D1EBE170);
  type metadata accessor for MTRColorControlColorCapabilitiesBitmap(0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EBE190);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0xD000000000000016, 0x80000001D1EBE1B0);
  if (*(v0 + v3[21] + 1))
  {
    v25 = 0xE300000000000000;
    v26 = 7104878;
  }

  else
  {
    v26 = sub_1D1E68FAC();
    v25 = v27;
  }

  MEMORY[0x1D3890F70](v26, v25);

  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EBE1D0);
  v28 = (v0 + v3[22]);
  if (v28[1])
  {
    v1 = *v28;
    v29 = v28[1];
  }

  else
  {
    v29 = 0xE300000000000000;
  }

  MEMORY[0x1D3890F70](v1, v29);

  return 0;
}

uint64_t StaticColorControlCluster.init(path:valueSource:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2[1];
  v73 = *a2;
  v10 = v73;
  v74 = v9;
  sub_1D190FDA4(a1, &v75);
  v72 = v75;
  v73 = v10;
  v74 = v9;
  v71 = sub_1D19101E0(a1);
  sub_1D1913AAC(a1, v8, type metadata accessor for ClusterPath);
  v70 = sub_1D1912E6C(0, v8, v10, v9);
  sub_1D1913B14(v8, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v8, type metadata accessor for ClusterPath);
  v69 = sub_1D1912E6C(1, v8, v10, v9);
  sub_1D1913B14(v8, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v8, type metadata accessor for ClusterPath);
  v68 = sub_1D18F5A60(0x4000, v8, v10, v9);
  sub_1D1913B14(v8, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v8, type metadata accessor for ClusterPath);
  v67 = sub_1D18F5A60(3, v8, v10, v9);
  sub_1D1913B14(v8, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v8, type metadata accessor for ClusterPath);
  v66 = sub_1D18F5A60(4, v8, v10, v9);
  sub_1D1913B14(v8, type metadata accessor for ClusterPath);
  v73 = v10;
  v74 = v9;
  v65 = sub_1D19103F4(a1);
  sub_1D1913AAC(a1, v8, type metadata accessor for ClusterPath);
  v64 = sub_1D18F5A60(48, v8, v10, v9);
  sub_1D1913B14(v8, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v8, type metadata accessor for ClusterPath);
  v63 = sub_1D18F5A60(49, v8, v10, v9);
  sub_1D1913B14(v8, type metadata accessor for ClusterPath);
  v11 = sub_1D18F5A60(50, a1, v10, v9);
  v12 = sub_1D18F5A60(51, a1, v10, v9);
  v13 = sub_1D1912E6C(52, a1, v10, v9);
  v62 = ((v12 & v11) >> 16) & ((v13 & 0x100) >> 8);
  if (v62)
  {
    v61 = 0;
    v60 = 0;
  }

  else
  {
    v61 = v11 & 0x1FFFF | ((v12 & 0x1FFFF) << 32) | (v13 << 56);
    v60 = (v13 & 0x100) >> 8;
  }

  v14 = sub_1D18F5A60(54, a1, v10, v9);
  v15 = sub_1D18F5A60(55, a1, v10, v9);
  v16 = sub_1D1912E6C(56, a1, v10, v9);
  v59 = ((v15 & v14) >> 16) & ((v16 & 0x100) >> 8);
  if (v59)
  {
    v58 = 0;
    v57 = 0;
  }

  else
  {
    v58 = v14 & 0x1FFFF | ((v15 & 0x1FFFF) << 32) | (v16 << 56);
    v57 = (v16 & 0x100) >> 8;
  }

  v17 = sub_1D18F5A60(58, a1, v10, v9);
  v18 = sub_1D18F5A60(59, a1, v10, v9);
  v19 = sub_1D1912E6C(60, a1, v10, v9);
  v56 = ((v18 & v17) >> 16) & ((v19 & 0x100) >> 8);
  if (v56)
  {
    v55 = 0;
    v54 = 0;
  }

  else
  {
    v55 = v17 & 0x1FFFF | ((v18 & 0x1FFFF) << 32) | (v19 << 56);
    v54 = (v19 & 0x100) >> 8;
  }

  sub_1D1913AAC(a1, v8, type metadata accessor for ClusterPath);
  v20 = sub_1D18F5A60(7, v8, v10, v9);
  sub_1D1913B14(v8, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v8, type metadata accessor for ClusterPath);
  v21 = sub_1D18F5A60(16395, v8, v10, v9);
  sub_1D1913B14(v8, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v8, type metadata accessor for ClusterPath);
  v22 = sub_1D18F5A60(16396, v8, v10, v9);
  sub_1D1913B14(v8, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v8, type metadata accessor for ClusterPath);
  v23 = sub_1D1912E6C(5, v8, v10, v9);
  sub_1D1913B14(v8, type metadata accessor for ClusterPath);
  sub_1D1913AAC(a1, v8, type metadata accessor for ClusterPath);
  v24 = sub_1D1912A98(6, v8, v10, v9);
  v53 = v25;

  sub_1D1913B14(v8, type metadata accessor for ClusterPath);
  sub_1D190D804(a1, a3);
  v26 = type metadata accessor for StaticColorControlCluster(0);
  v27 = (a3 + v26[5]);
  v28 = BYTE1(v70);
  *v27 = v70;
  v27[1] = v28 & 1;
  v29 = (a3 + v26[6]);
  v30 = BYTE1(v69);
  *v29 = v69;
  v29[1] = v30 & 1;
  v31 = a3 + v26[7];
  v32 = BYTE2(v68);
  *v31 = v68;
  *(v31 + 2) = v32 & 1;
  v33 = a3 + v26[8];
  v34 = BYTE2(v67);
  *v33 = v67;
  *(v33 + 2) = v34 & 1;
  v35 = a3 + v26[9];
  v36 = BYTE2(v66);
  *v35 = v66;
  *(v35 + 2) = v36 & 1;
  *(a3 + v26[10]) = v65;
  v37 = a3 + v26[11];
  v38 = BYTE2(v64);
  *v37 = v64;
  *(v37 + 2) = v38 & 1;
  v39 = a3 + v26[12];
  v40 = BYTE2(v63);
  *v39 = v63;
  *(v39 + 2) = v40 & 1;
  v41 = a3 + v26[13];
  *v41 = v61;
  *(v41 + 8) = v60;
  *(v41 + 9) = v62;
  v42 = a3 + v26[14];
  *v42 = v58;
  *(v42 + 8) = v57;
  *(v42 + 9) = v59;
  v43 = a3 + v26[15];
  *v43 = v55;
  *(v43 + 8) = v54;
  *(v43 + 9) = v56;
  v44 = a3 + v26[16];
  *v44 = v20;
  *(v44 + 2) = BYTE2(v20) & 1;
  v45 = a3 + v26[17];
  *v45 = v21;
  *(v45 + 2) = BYTE2(v21) & 1;
  v46 = a3 + v26[18];
  *v46 = v22;
  *(v46 + 2) = BYTE2(v22) & 1;
  v47 = v72;
  *(a3 + v26[19]) = v71;
  *(a3 + v26[20]) = v47;
  v48 = (a3 + v26[21]);
  *v48 = v23;
  v48[1] = HIBYTE(v23) & 1;
  v49 = (a3 + v26[22]);
  v50 = v53;
  *v49 = v24;
  v49[1] = v50;
  return (*(*(v26 - 1) + 56))(a3, 0, 1, v26);
}

uint64_t sub_1D190FDA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = type metadata accessor for ClusterPath(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v37[-v9];
  v11 = *v2;
  v12 = v2[1];
  if ((sub_1D1912E6C(16385, a1, *v2, v12) & 0x1FF) != 3)
  {
    result = sub_1D1912E6C(8, a1, v11, v12);
    if ((result & 0x100) != 0)
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v27 = sub_1D1E6709C();
      __swift_project_value_buffer(v27, qword_1EE07A0B0);
      sub_1D1913AAC(a1, v8, type metadata accessor for ClusterPath);
      v28 = sub_1D1E6707C();
      v29 = sub_1D1E6833C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v38 = v31;
        *v30 = 136446210;
        v32 = ClusterPath.description.getter();
        v34 = v33;
        sub_1D1913B14(v8, type metadata accessor for ClusterPath);
        v35 = sub_1D1B1312C(v32, v34, &v38);

        *(v30 + 4) = v35;
        _os_log_impl(&dword_1D16EC000, v28, v29, "Couldn't get value for color mode. path:'%{public}s'. Defaulting to HueSaturation.", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1D3893640](v31, -1, -1);
        MEMORY[0x1D3893640](v30, -1, -1);

        goto LABEL_16;
      }

      v36 = v8;
    }

    else
    {
      if (result < 4u)
      {
        goto LABEL_17;
      }

      v14 = result;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v15 = sub_1D1E6709C();
      __swift_project_value_buffer(v15, qword_1EE07A0B0);
      sub_1D1913AAC(a1, v10, type metadata accessor for ClusterPath);
      v16 = sub_1D1E6707C();
      v17 = sub_1D1E6833C();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v38 = v19;
        *v18 = 136446466;
        v37[7] = v14;
        v20 = sub_1D1E678BC();
        v22 = sub_1D1B1312C(v20, v21, &v38);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2082;
        v23 = ClusterPath.description.getter();
        v25 = v24;
        sub_1D1913B14(v10, type metadata accessor for ClusterPath);
        v26 = sub_1D1B1312C(v23, v25, &v38);

        *(v18 + 14) = v26;
        _os_log_impl(&dword_1D16EC000, v16, v17, "Couldn't create ColorMode enum from value : (%{public}s path:'%{public}s'. Defaulting to HueSaturation.", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v19, -1, -1);
        MEMORY[0x1D3893640](v18, -1, -1);

LABEL_16:
        result = 0;
        goto LABEL_17;
      }

      v36 = v10;
    }

    sub_1D1913B14(v36, type metadata accessor for ClusterPath);
    goto LABEL_16;
  }

  result = 3;
LABEL_17:
  *a2 = result;
  return result;
}

uint64_t sub_1D19101E0(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D18F5A60(16394, a1, *v1, v1[1]);
  if ((result & 0x10000) != 0)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v7 = sub_1D1E6709C();
    __swift_project_value_buffer(v7, qword_1EE07A0B0);
    sub_1D1913AAC(a1, v5, type metadata accessor for ClusterPath);
    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6833C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      v12 = ClusterPath.description.getter();
      v14 = v13;
      sub_1D1913B14(v5, type metadata accessor for ClusterPath);
      v15 = sub_1D1B1312C(v12, v14, &v17);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1D16EC000, v8, v9, "Couldn't get value for color capabilities. path:'%{public}s'. Defaulting to HueSaturation.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    else
    {

      sub_1D1913B14(v5, type metadata accessor for ClusterPath);
    }

    return 1;
  }

  return result;
}

char *sub_1D19103F4(uint64_t a1)
{
  v3 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v44 = v1[1];
  v45 = v6;
  v7 = sub_1D1912E6C(16, a1, v6, v44);
  v46 = MEMORY[0x1E69E7CC0];
  if ((v7 & 0x100) == 0)
  {
    v43 = v5;
    LODWORD(v5) = v7;
    if (v7)
    {
      if (v7 >= 7u)
      {
        if (qword_1EE07A0A8 != -1)
        {
          goto LABEL_32;
        }

        goto LABEL_5;
      }

LABEL_8:
      v13 = 0;
      v46 = MEMORY[0x1E69E7CC0];
      v14 = &dword_1F4D60068;
      v48 = v5;
      *&v8 = 134218498;
      v41 = v8;
      v42 = a1;
      do
      {
        v15 = __OFADD__(v13, 1);
        v47 = v15;
        v16 = *(v14 - 1);
        v17 = *v14;
        v18 = v44;
        v5 = v45;
        v19 = sub_1D18F5A60(*(v14 - 2), a1, v45, v44);
        v20 = sub_1D18F5A60(v16, a1, v5, v18);
        v21 = sub_1D1912E6C(v17, a1, v5, v18);
        v22 = v21;
        if ((v19 & 0x10000) == 0 || ((v20 & 0x10000) != 0 ? (v23 = (v21 & 0x100) == 0) : (v23 = 1), v23))
        {
          v36 = v46;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_1D177E1C0(0, *(v36 + 2) + 1, 1, v36);
          }

          v27 = v13 + 1;
          v38 = *(v36 + 2);
          v37 = *(v36 + 3);
          if (v38 >= v37 >> 1)
          {
            v36 = sub_1D177E1C0((v37 > 1), v38 + 1, 1, v36);
          }

          *(v36 + 2) = v38 + 1;
          v46 = v36;
          v39 = &v36[10 * v38];
          *(v39 + 16) = v19;
          v39[34] = BYTE2(v19) & 1;
          *(v39 + 18) = v20;
          v39[38] = BYTE2(v20) & 1;
          v39[39] = v22;
          v39[40] = HIBYTE(v22) & 1;
        }

        else
        {
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v24 = sub_1D1E6709C();
          __swift_project_value_buffer(v24, qword_1EE07A0B0);
          v25 = v43;
          sub_1D1913AAC(a1, v43, type metadata accessor for ClusterPath);
          v26 = sub_1D1E6707C();
          a1 = sub_1D1E6833C();
          v27 = v13 + 1;
          if (os_log_type_enabled(v26, a1))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v49 = v29;
            *v28 = v41;
            if (v47)
            {
              __break(1u);
LABEL_32:
              swift_once();
LABEL_5:
              v9 = sub_1D1E6709C();
              __swift_project_value_buffer(v9, qword_1EE07A0B0);
              v10 = sub_1D1E6707C();
              v11 = sub_1D1E6833C();
              if (os_log_type_enabled(v10, v11))
              {
                v12 = swift_slowAlloc();
                *v12 = 16908544;
                v12[4] = v5;
                _os_log_impl(&dword_1D16EC000, v10, v11, "StaticColorControlCluster.swift:AttributeValueSet.primaries(): numberOfPrimaries is greater than 6. This is unexpected, and we still stop reading primaries at 6. numberOfPrimaries:%{public}hhu", v12, 5u);
                MEMORY[0x1D3893640](v12, -1, -1);
              }

              LODWORD(v5) = 6;
              goto LABEL_8;
            }

            v30 = v29;
            *(v28 + 4) = v13 + 1;
            *(v28 + 12) = 256;
            *(v28 + 14) = v48;
            *(v28 + 15) = 2082;
            v31 = v43;
            v32 = ClusterPath.description.getter();
            v34 = v33;
            sub_1D1913B14(v31, type metadata accessor for ClusterPath);
            v35 = sub_1D1B1312C(v32, v34, &v49);

            *(v28 + 17) = v35;
            _os_log_impl(&dword_1D16EC000, v26, a1, "Got nil ColorPoint struct for primary %ld, even though numberOfPrimaries is %hhu. path:'%{public}s'.", v28, 0x19u);
            __swift_destroy_boxed_opaque_existential_1(v30);
            MEMORY[0x1D3893640](v30, -1, -1);
            MEMORY[0x1D3893640](v28, -1, -1);
          }

          else
          {

            sub_1D1913B14(v25, type metadata accessor for ClusterPath);
          }

          a1 = v42;
        }

        v14 += 3;
        ++v13;
      }

      while (v27 != v48);
    }
  }

  return v46;
}

uint64_t StaticColorControlCluster.copyApplying(overridingAttributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for StaticColorControlCluster(0);
  v6 = v5;
  v7 = v5[6];
  v8 = (v2 + v5[5]);
  v113 = *v8;
  v114 = v8[1];
  v110 = *(v2 + v7);
  v9 = *(v2 + v7 + 1);
  v10 = v5[8];
  v11 = v2 + v5[7];
  v12 = *v11;
  v96 = *(v11 + 2);
  v97 = v9;
  v107 = *(v2 + v10);
  v13 = v2 + v5[9];
  v105 = v12;
  v106 = *v13;
  v100 = *(v13 + 2);
  v14 = v2 + v5[11];
  v15 = *v14;
  v98 = *(v2 + v10 + 2);
  v99 = *(v14 + 2);
  v16 = v2 + v5[12];
  v103 = v15;
  v104 = *v16;
  v101 = *(v16 + 2);
  v17 = v5[17];
  v18 = (v2 + v5[16]);
  v19 = *v18;
  v108 = *(v18 + 2);
  v95 = *(v2 + v17);
  v111 = *(v2 + v17 + 2);
  v20 = v2 + v5[18];
  v21 = 1 << *(a1 + 32);
  v109 = *v20;
  v22 = -1;
  v102 = *(v20 + 2);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 64);
  v24 = (v21 + 63) >> 6;
  v112 = *(v2 + v5[20]);

  v26 = 0;
LABEL_4:
  while (2)
  {
    while (1)
    {
      v27 = &unk_1D1E85520;
      while (1)
      {
        while (1)
        {
          do
          {
            if (!v23)
            {
              while (1)
              {
                v31 = v26 + 1;
                if (__OFADD__(v26, 1))
                {
                  break;
                }

                if (v31 >= v24)
                {

                  sub_1D1913AAC(v2, a2, type metadata accessor for ClusterPath);
                  v65 = v6[10];
                  v67 = v6[13];
                  v66 = v6[14];
                  v68 = v6[15];
                  v69 = v6[19];
                  v70 = (a2 + v6[5]);
                  v72 = v6[21];
                  v71 = v6[22];
                  *v70 = v113;
                  v70[1] = v114 & 1;
                  v73 = (a2 + v6[6]);
                  *v73 = v110;
                  v73[1] = v97 & 1;
                  v74 = a2 + v6[7];
                  *v74 = v105;
                  *(v74 + 2) = v96 & 1;
                  v75 = a2 + v6[8];
                  *v75 = v107;
                  *(v75 + 2) = v98 & 1;
                  v76 = a2 + v6[9];
                  *v76 = v106;
                  *(v76 + 2) = v100 & 1;
                  *(a2 + v6[10]) = *(v2 + v65);
                  v77 = a2 + v6[11];
                  *v77 = v103;
                  *(v77 + 2) = v99 & 1;
                  v78 = a2 + v6[12];
                  *v78 = v104;
                  v79 = v2 + v67;
                  *(v78 + 2) = v101 & 1;
                  v80 = a2 + v6[13];
                  *v80 = *v79;
                  *(v80 + 8) = *(v79 + 8);
                  v81 = v2 + v66;
                  *(v80 + 9) = *(v79 + 9);
                  v82 = a2 + v6[14];
                  *v82 = *v81;
                  *(v82 + 8) = *(v81 + 8);
                  v83 = v2 + v68;
                  *(v82 + 9) = *(v81 + 9);
                  v84 = a2 + v6[15];
                  *v84 = *v83;
                  *(v84 + 8) = *(v83 + 8);
                  *(v84 + 9) = *(v83 + 9);
                  v85 = a2 + v6[16];
                  *v85 = v19;
                  *(v85 + 2) = v108 & 1;
                  v86 = a2 + v6[17];
                  *v86 = v95;
                  *(v86 + 2) = v111 & 1;
                  v87 = a2 + v6[18];
                  *v87 = v109;
                  *(v87 + 2) = v102 & 1;
                  *(a2 + v6[19]) = *(v2 + v69);
                  *(a2 + v6[20]) = v112;
                  v88 = (a2 + v6[21]);
                  *v88 = *(v2 + v72);
                  v88[1] = *(v2 + v72 + 1);
                  v89 = (v2 + v71);
                  v90 = (a2 + v6[22]);
                  v91 = v89[1];
                  *v90 = *v89;
                  v90[1] = v91;
                }

                v23 = *(a1 + 64 + 8 * v31);
                ++v26;
                if (v23)
                {
                  v26 = v31;
                  goto LABEL_5;
                }
              }

              __break(1u);
LABEL_135:
              __break(1u);
              goto LABEL_136;
            }

LABEL_5:
            v28 = __clz(__rbit64(v23));
            v23 &= v23 - 1;
            v29 = v28 | (v26 << 6);
            v30 = *(a1 + 48) + 8 * v29;
          }

          while (*(v30 + 4) != 17);
          v94 = v19;
          v32 = *v30;
          v33 = *(a1 + 56) + 16 * v29;
          v34 = *v33;
          v35 = *(v33 + 8);
          if (v32)
          {
            break;
          }

          if (*(v33 + 8) > 2u)
          {
            v36 = *(v33 + 8);
            if (v35 == 3)
            {
              v37 = &qword_1EC646A50;
              v27 = &unk_1D1E910D0;
            }

            else
            {
              v37 = &qword_1EC646DE8;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(v37, v27);

            LOBYTE(v35) = v36;
          }

          v38 = v34;
          v39 = v35;
          sub_1D1741AF8(v34, v35);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v46 = v38;
            v19 = v94;
            result = sub_1D1757AE8(v46, v39);
            goto LABEL_4;
          }

          result = sub_1D1757AE8(v38, v39);
          v114 = 0;
          v113 = v115;
          v27 = &unk_1D1E85520;
          v19 = v94;
          if (v115 > 0xFF)
          {
            goto LABEL_135;
          }
        }

        v93 = *v33;
        v92 = *(v33 + 8);
        sub_1D1741AF8(v34, v35);
        if (v32 > 47)
        {
          if (v32 < 0x4000)
          {
            v40 = v92;
            if (v32 == 48)
            {
              if (v92 <= 2)
              {
                v19 = v94;
              }

              else
              {
                v19 = v94;
                if (v92 == 3)
                {
                  v53 = &qword_1EC646A50;
                  v54 = &unk_1D1E910D0;
                }

                else
                {
                  v53 = &qword_1EC646DE8;
                  v54 = &unk_1D1E85520;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(v53, v54);
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_131;
              }

              result = sub_1D1757AE8(v93, v92);
              v103 = v115;
              if (!(v115 >> 16))
              {
                v99 = 0;
                goto LABEL_4;
              }

              goto LABEL_140;
            }

            v41 = v32 == 49;
            v42 = v93;
            v19 = v94;
            if (!v41)
            {
              goto LABEL_132;
            }

            if (v92 > 2)
            {
              if (v92 == 3)
              {
                v49 = &qword_1EC646A50;
                v50 = &unk_1D1E910D0;
              }

              else
              {
                v49 = &qword_1EC646DE8;
                v50 = &unk_1D1E85520;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(v49, v50);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_131;
            }

            result = sub_1D1757AE8(v93, v92);
            v104 = v115;
            if (!(v115 >> 16))
            {
              v101 = 0;
              goto LABEL_4;
            }

LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

          v40 = v92;
          if (v32 == 0x4000)
          {
            if (v92 <= 2)
            {
              v19 = v94;
            }

            else
            {
              v19 = v94;
              if (v92 == 3)
              {
                v55 = &qword_1EC646A50;
                v56 = &unk_1D1E910D0;
              }

              else
              {
                v55 = &qword_1EC646DE8;
                v56 = &unk_1D1E85520;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(v55, v56);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_131;
            }

            result = sub_1D1757AE8(v93, v92);
            v105 = v115;
            if (!(v115 >> 16))
            {
              v96 = 0;
              goto LABEL_4;
            }

            goto LABEL_138;
          }

          if (v32 == 16395)
          {
            if (v92 <= 2)
            {
              v19 = v94;
            }

            else
            {
              v19 = v94;
              if (v92 == 3)
              {
                v57 = &qword_1EC646A50;
                v58 = &unk_1D1E910D0;
              }

              else
              {
                v57 = &qword_1EC646DE8;
                v58 = &unk_1D1E85520;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(v57, v58);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_131;
            }

            result = sub_1D1757AE8(v93, v92);
            v95 = v115;
            if (!(v115 >> 16))
            {
              v111 = 0;
              goto LABEL_4;
            }

            goto LABEL_137;
          }

          v41 = v32 == 16396;
          v42 = v93;
          v19 = v94;
          if (!v41)
          {
            goto LABEL_132;
          }

          if (v92 > 2)
          {
            if (v92 == 3)
            {
              v47 = &qword_1EC646A50;
              v48 = &unk_1D1E910D0;
            }

            else
            {
              v47 = &qword_1EC646DE8;
              v48 = &unk_1D1E85520;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_131;
          }

          result = sub_1D1757AE8(v93, v92);
          v109 = v115;
          if (!(v115 >> 16))
          {
            v102 = 0;
            goto LABEL_4;
          }

LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (v32 <= 3)
        {
          break;
        }

        v40 = v92;
        if (v32 == 4)
        {
          if (v92 <= 2)
          {
            v19 = v94;
          }

          else
          {
            v19 = v94;
            if (v92 == 3)
            {
              v59 = &qword_1EC646A50;
              v60 = &unk_1D1E910D0;
            }

            else
            {
              v59 = &qword_1EC646DE8;
              v60 = &unk_1D1E85520;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(v59, v60);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_131;
          }

          result = sub_1D1757AE8(v93, v92);
          v106 = v115;
          if (!(v115 >> 16))
          {
            v100 = 0;
            goto LABEL_4;
          }

          goto LABEL_143;
        }

        if (v32 == 7)
        {
          if (v92 <= 2)
          {
            v19 = v94;
          }

          else
          {
            v19 = v94;
            if (v92 == 3)
            {
              v61 = &qword_1EC646A50;
              v62 = &unk_1D1E910D0;
            }

            else
            {
              v61 = &qword_1EC646DE8;
              v62 = &unk_1D1E85520;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(v61, v62);
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
          if (swift_dynamicCast())
          {
            result = sub_1D1757AE8(v93, v92);
            v19 = v115;
            if (!(v115 >> 16))
            {
              v108 = 0;
              goto LABEL_4;
            }

            goto LABEL_142;
          }

LABEL_131:
          v42 = v93;
          v40 = v92;
LABEL_132:
          result = sub_1D1757AE8(v42, v40);
          goto LABEL_4;
        }

        v41 = v32 == 8;
        v19 = v94;
        v42 = v93;
        if (!v41)
        {
          goto LABEL_132;
        }

        if (v92 > 2)
        {
          if (v92 == 3)
          {
            v43 = &qword_1EC646A50;
            v44 = &unk_1D1E910D0;
          }

          else
          {
            v43 = &qword_1EC646DE8;
            v44 = &unk_1D1E85520;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
        result = swift_dynamicCast();
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }

        v27 = &unk_1D1E85520;
        if (v115 > 0xFF)
        {
          goto LABEL_141;
        }

        v45 = v112;
        if (v115 < 4)
        {
          v45 = v115;
        }

        v112 = v45;
      }

      v42 = v93;
      v40 = v92;
      if (v32 != 1)
      {
        break;
      }

      if (v92 <= 2)
      {
        v19 = v94;
      }

      else
      {
        v19 = v94;
        if (v92 == 3)
        {
          v63 = &qword_1EC646A50;
          v64 = &unk_1D1E910D0;
        }

        else
        {
          v63 = &qword_1EC646DE8;
          v64 = &unk_1D1E85520;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(v63, v64);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_131;
      }

      result = sub_1D1757AE8(v93, v92);
      v110 = v115;
      if (v115 > 0xFF)
      {
        goto LABEL_145;
      }

      v97 = 0;
    }

    v41 = v32 == 3;
    v19 = v94;
    if (!v41)
    {
      goto LABEL_132;
    }

    if (v92 > 2)
    {
      if (v92 == 3)
      {
        v51 = &qword_1EC646A50;
        v52 = &unk_1D1E910D0;
      }

      else
      {
        v51 = &qword_1EC646DE8;
        v52 = &unk_1D1E85520;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v51, v52);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_131;
    }

    result = sub_1D1757AE8(v93, v92);
    v107 = v115;
    if (!(v115 >> 16))
    {
      v98 = 0;
      continue;
    }

    break;
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

HomeDataModel::StaticColorControlCluster::ColorMode_optional __swiftcall StaticColorControlCluster.ColorMode.init(rawValue:)(HomeDataModel::StaticColorControlCluster::ColorMode_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = HomeDataModel_StaticColorControlCluster_ColorMode_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_1D19118B0()
{
  sub_1D1E6920C();
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1911924(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6923C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1911B3C()
{
  v1 = 121;
  if (*v0 != 1)
  {
    v1 = 0x7469736E65746E69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 120;
  }
}

uint64_t sub_1D1911B84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19149A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1911BAC(uint64_t a1)
{
  v2 = sub_1D1913B74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1911BE8(uint64_t a1)
{
  v2 = sub_1D1913B74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticColorControlCluster.ColorPoint.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646DF0, &qword_1D1E83100);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *(v1 + 4);
  v11[4] = *(v1 + 6);
  v11[5] = v7;
  v8 = *(v1 + 7);
  v11[2] = *(v1 + 8);
  v11[3] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1913B74();
  sub_1D1E6930C();
  v15 = 0;
  v9 = v12;
  sub_1D1E68E9C();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v14[0] = 1;
  sub_1D1E68E9C();
  v13[0] = 2;
  sub_1D1E68E8C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t StaticColorControlCluster.ColorPoint.hash(into:)()
{
  v1 = v0[6];
  v2 = v0[8];
  if (v0[2] == 1)
  {
    sub_1D1E6922C();
    if (!v1)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D1E6922C();
    if (v2)
    {
      return sub_1D1E6922C();
    }

    goto LABEL_4;
  }

  sub_1D1E6922C();
  sub_1D1E6923C();
  if (v1)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D1E6922C();
  sub_1D1E6923C();
  if ((v2 & 1) == 0)
  {
LABEL_4:
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StaticColorControlCluster.ColorPoint.hashValue.getter()
{
  v1 = v0[2];
  v2 = v0[6];
  v3 = v0[8];
  sub_1D1E6920C();
  if (v1 == 1)
  {
    sub_1D1E6922C();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D1E6922C();
    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  sub_1D1E6922C();
  sub_1D1E6923C();
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D1E6922C();
  sub_1D1E6923C();
  if ((v3 & 1) == 0)
  {
LABEL_4:
    sub_1D1E6922C();
  }

LABEL_7:
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticColorControlCluster.ColorPoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E00, &qword_1D1E83108);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1913B74();
  sub_1D1E692FC();
  if (!v2)
  {
    v16 = 0;
    v9 = sub_1D1E68CFC();
    v15 = 1;
    v10 = sub_1D1E68CFC();
    v14 = 2;
    v12 = sub_1D1E68CEC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 2) = BYTE2(v9) & 1;
    *(a2 + 4) = v10;
    *(a2 + 6) = BYTE2(v10) & 1;
    *(a2 + 7) = v12;
    *(a2 + 8) = HIBYTE(v12) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1912174(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[6];
  v4 = v1[8];
  sub_1D1E6920C();
  if (v2 == 1)
  {
    sub_1D1E6922C();
    if (!v3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_1D1E6922C();
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  sub_1D1E6922C();
  sub_1D1E6923C();
  if (v3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1D1E6922C();
  sub_1D1E6923C();
  if ((v4 & 1) == 0)
  {
LABEL_4:
    sub_1D1E6922C();
  }

LABEL_7:
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

void StaticColorControlCluster.lightbulbColor.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticColorControlCluster(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v67 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v67 - v12;
  if (*(v1 + v10[20]) > 1u)
  {
    if (*(v1 + v10[20]) == 2)
    {
      v25 = (v1 + v10[16]);
      if ((v25[1] & 1) == 0)
      {
        v47 = *v25;
        *(a1 + 16) = 0;
        *a1 = v47;
        goto LABEL_24;
      }

      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v26 = sub_1D1E6709C();
      __swift_project_value_buffer(v26, qword_1EE07A0B0);
      sub_1D1913AAC(v1, v13, type metadata accessor for StaticColorControlCluster);
      v27 = sub_1D1E6707C();
      v28 = sub_1D1E6835C();
      if (!os_log_type_enabled(v27, v28))
      {

        v46 = v13;
        goto LABEL_37;
      }

      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v68 = v30;
      *v29 = 136446210;
      v31 = StaticColorControlCluster.description.getter();
      v33 = v32;
      sub_1D1913B14(v13, type metadata accessor for StaticColorControlCluster);
      v34 = sub_1D1B1312C(v31, v33, &v68);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1D16EC000, v27, v28, "ColorMode is set to color temperature, but we failed to retrieve a color temperature value. %{public}s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1D3893640](v30, -1, -1);
      v35 = v29;
LABEL_21:
      MEMORY[0x1D3893640](v35, -1, -1);

      goto LABEL_38;
    }

LABEL_15:
    v36 = (v1 + v10[5]);
    if ((v36[1] & 1) == 0)
    {
      v37 = (v1 + v10[6]);
      if ((v37[1] & 1) == 0)
      {
        v49 = *v36 / 254.0;
        LOBYTE(v11) = *v37;
        v50 = v11;
LABEL_26:
        *a1 = v49;
        *(a1 + 8) = v50 / 254.0;
        *(a1 + 16) = 0;
        v48 = 1;
        goto LABEL_39;
      }
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v38 = sub_1D1E6709C();
    __swift_project_value_buffer(v38, qword_1EE07A0B0);
    sub_1D1913AAC(v1, v9, type metadata accessor for StaticColorControlCluster);
    v27 = sub_1D1E6707C();
    v39 = sub_1D1E6835C();
    if (!os_log_type_enabled(v27, v39))
    {

      v46 = v9;
      goto LABEL_37;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v68 = v41;
    *v40 = 136446210;
    v42 = StaticColorControlCluster.description.getter();
    v44 = v43;
    sub_1D1913B14(v9, type metadata accessor for StaticColorControlCluster);
    v45 = sub_1D1B1312C(v42, v44, &v68);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_1D16EC000, v27, v39, "ColorMode is set to hueSaturation, but we failed to retrieve hue/saturation values. %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1D3893640](v41, -1, -1);
    v35 = v40;
    goto LABEL_21;
  }

  if (!*(v1 + v10[20]))
  {
    goto LABEL_15;
  }

  v14 = v1 + v10[8];
  if (*(v14 + 2) & 1) != 0 || (v15 = v1 + v10[9], (*(v15 + 2)))
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v16 = sub_1D1E6709C();
    __swift_project_value_buffer(v16, qword_1EE07A0B0);
    sub_1D1913AAC(v1, v6, type metadata accessor for StaticColorControlCluster);
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6835C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v68 = v20;
      *v19 = 136446210;
      v21 = StaticColorControlCluster.description.getter();
      v23 = v22;
      sub_1D1913B14(v6, type metadata accessor for StaticColorControlCluster);
      v24 = sub_1D1B1312C(v21, v23, &v68);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1D16EC000, v17, v18, "ColorMode is set to XY, but we failed to retrieve XY values. %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D3893640](v20, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);

LABEL_38:
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v48 = -1;
      goto LABEL_39;
    }

    v46 = v6;
LABEL_37:
    sub_1D1913B14(v46, type metadata accessor for StaticColorControlCluster);
    goto LABEL_38;
  }

  v51 = *v14;
  v52 = *v15;
  v53 = (v1 + v10[16]);
  if (v53[1])
  {
    v54 = (v1 + v10[5]);
    if (v54[1])
    {
      goto LABEL_38;
    }

    v55 = (v1 + v10[6]);
    if (v55[1])
    {
      goto LABEL_38;
    }

    v56 = *v54;
    v57 = *v55;
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v58 = sub_1D1E6709C();
    __swift_project_value_buffer(v58, qword_1EE07A0B0);
    v59 = sub_1D1E6707C();
    v60 = sub_1D1E6835C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 33555456;
      *(v61 + 4) = v51;
      *(v61 + 6) = 512;
      *(v61 + 8) = v52;
      *(v61 + 10) = 256;
      *(v61 + 12) = v56;
      *(v61 + 13) = 256;
      *(v61 + 15) = v57;
      _os_log_impl(&dword_1D16EC000, v59, v60, "ColorMode is set to XY (%hu,%hu), but we are falling back to hue: %hhu saturation: %hhu", v61, 0x10u);
      MEMORY[0x1D3893640](v61, -1, -1);
    }

    v49 = v56 / 254.0;
    v50 = v57;
    goto LABEL_26;
  }

  v62 = *v53;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v63 = sub_1D1E6709C();
  __swift_project_value_buffer(v63, qword_1EE07A0B0);
  v64 = sub_1D1E6707C();
  v65 = sub_1D1E6835C();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 33555200;
    *(v66 + 4) = v51;
    *(v66 + 6) = 512;
    *(v66 + 8) = v52;
    *(v66 + 10) = 512;
    *(v66 + 12) = v62;
    _os_log_impl(&dword_1D16EC000, v64, v65, "ColorMode is set to XY (%hu,%hu), but we are falling back to color temperature: %hu", v66, 0xEu);
    MEMORY[0x1D3893640](v66, -1, -1);
  }

  *(a1 + 16) = 0;
  *a1 = v62;
LABEL_24:
  *(a1 + 8) = 0;
  v48 = 2;
LABEL_39:
  *(a1 + 24) = v48;
}

uint64_t sub_1D1912A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v39[3] = v8;
  v39[4] = sub_1D1914B04(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
  sub_1D1913AAC(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v32 = a3;
  *(&v32 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v39, v38);
  sub_1D18C20AC(v38, &v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v37 = 0;
  }

  sub_1D18C20AC(v38, &v32);
  if (v33)
  {
    sub_1D1742194(&v32, v35);
    if (!v37)
    {
      LOBYTE(v32) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v10 = sub_1D1A38104(a1, &v32);
      v12 = v11;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v13 = sub_1D1E6709C();
      __swift_project_value_buffer(v13, qword_1EE07A0B0);
      sub_1D1741970(v35, v34);
      sub_1D17419CC(v39, &v32);

      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6833C();

      if (!os_log_type_enabled(v14, v15))
      {

        __swift_destroy_boxed_opaque_existential_1(v34);
        __swift_destroy_boxed_opaque_existential_1(v35);
        sub_1D18F49A8(v38);
        __swift_destroy_boxed_opaque_existential_1(&v32);
        goto LABEL_12;
      }

      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136446978;
      v18 = sub_1D1B1312C(v10, v12, &v31);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2082;
      *(v16 + 14) = sub_1D1B1312C(0x676E69727453, 0xE600000000000000, &v31);
      *(v16 + 22) = 2082;
      sub_1D1741970(v34, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v19 = sub_1D1E678BC();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1(v34);
      v22 = sub_1D1B1312C(v19, v21, &v31);

      *(v16 + 24) = v22;
      *(v16 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v32, v33);
      v23 = ClusterPath.description.getter();
      v25 = v24;
      __swift_destroy_boxed_opaque_existential_1(&v32);
      v26 = sub_1D1B1312C(v23, v25, &v31);

      *(v16 + 34) = v26;
      _os_log_impl(&dword_1D16EC000, v14, v15, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
    v27 = v38;
  }

  else
  {
    sub_1D18F49A8(v38);
    v27 = &v32;
  }

  sub_1D18F49A8(v27);
LABEL_12:
  v28 = v36;
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v28;
}

uint64_t sub_1D1912E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ClusterPath(0);
  v41[3] = v8;
  v41[4] = sub_1D1914B04(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  sub_1D1913AAC(a2, boxed_opaque_existential_1, type metadata accessor for ClusterPath);
  *&v34 = a3;
  *(&v34 + 1) = a4;
  AttributeValueSet.value(for:in:)(a1, v41, v40);
  sub_1D18C20AC(v40, &v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  v10 = swift_dynamicCast();
  if ((v10 & 1) == 0)
  {
    v38 = 0;
  }

  v39 = v10 ^ 1;
  sub_1D18C20AC(v40, &v34);
  if (v35)
  {
    sub_1D1742194(&v34, v37);
    if (v39)
    {
      LOBYTE(v34) = *(boxed_opaque_existential_1 + *(v8 + 20));
      v11 = sub_1D1A38104(a1, &v34);
      v13 = v12;
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v14 = sub_1D1E6709C();
      __swift_project_value_buffer(v14, qword_1EE07A0B0);
      sub_1D1741970(v37, v36);
      sub_1D17419CC(v41, &v34);

      v15 = sub_1D1E6707C();
      v16 = sub_1D1E6833C();

      if (!os_log_type_enabled(v15, v16))
      {

        __swift_destroy_boxed_opaque_existential_1(v36);
        __swift_destroy_boxed_opaque_existential_1(v37);
        sub_1D18F49A8(v40);
        __swift_destroy_boxed_opaque_existential_1(&v34);
        goto LABEL_12;
      }

      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v33 = v18;
      *v17 = 136446978;
      v19 = sub_1D1B1312C(v11, v13, &v33);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1D1B1312C(0x38746E4955, 0xE500000000000000, &v33);
      *(v17 + 22) = 2082;
      sub_1D1741970(v36, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      v20 = sub_1D1E678BC();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v36);
      v23 = sub_1D1B1312C(v20, v22, &v33);

      *(v17 + 24) = v23;
      *(v17 + 32) = 2082;
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      v24 = ClusterPath.description.getter();
      v26 = v25;
      __swift_destroy_boxed_opaque_existential_1(&v34);
      v27 = sub_1D1B1312C(v24, v26, &v33);

      *(v17 + 34) = v27;
      _os_log_impl(&dword_1D16EC000, v15, v16, "Retrieved value for (%{public}s) but could not decoded it to %{public}s. result:(%{public}s) path:'%{public}s'", v17, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1(v37);
    v28 = v40;
  }

  else
  {
    sub_1D18F49A8(v40);
    v28 = &v34;
  }

  sub_1D18F49A8(v28);
LABEL_12:
  v29 = v38;
  v30 = v39;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v29 | (v30 << 8);
}

BOOL _s13HomeDataModel25StaticColorControlClusterV0E5PointV2eeoiySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a2 + 2);
  if (a1[1])
  {
    if (!*(a2 + 2))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (a1[3])
  {
    if (!*(a2 + 6))
    {
      return 0;
    }
  }

  else
  {
    if (a1[2] == a2[2])
    {
      v3 = *(a2 + 6);
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((a1[4] & 1) == 0)
  {
    if (*(a1 + 7) == *(a2 + 7))
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }

  return (a2[4] & 1) != 0;
}

BOOL _s13HomeDataModel25StaticColorControlClusterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for ClusterPath(0);
  if (dword_1D1E83794[*(a1 + *(v5 + 20))] != dword_1D1E83794[*(a2 + *(v5 + 20))])
  {
    return 0;
  }

  v6 = type metadata accessor for StaticColorControlCluster(0);
  v7 = v6[5];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 1);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 1);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = v6[6];
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 1);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 1);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = v6[7];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 2);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 2);
  if (v19)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      LOBYTE(v21) = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  v22 = v6[8];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 2);
  v25 = (a2 + v22);
  v26 = *(a2 + v22 + 2);
  if (v24)
  {
    if (!v26)
    {
      return 0;
    }
  }

  else
  {
    if (*v23 != *v25)
    {
      LOBYTE(v26) = 1;
    }

    if (v26)
    {
      return 0;
    }
  }

  v27 = v6[9];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 2);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 2);
  if (v29)
  {
    if (!v31)
    {
      return 0;
    }
  }

  else
  {
    if (*v28 != *v30)
    {
      LOBYTE(v31) = 1;
    }

    if (v31)
    {
      return 0;
    }
  }

  v32 = v6;
  if ((sub_1D177B0AC(*(a1 + v6[10]), *(a2 + v6[10])) & 1) == 0)
  {
    return 0;
  }

  v33 = v32;
  v34 = v32[11];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 2);
  v37 = (a2 + v34);
  v38 = *(a2 + v34 + 2);
  if (v36)
  {
    if (!v38)
    {
      return 0;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v38) = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  v39 = v32[12];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 2);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 2);
  if (v41)
  {
    if (!v43)
    {
      return 0;
    }
  }

  else
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    if (v43)
    {
      return 0;
    }
  }

  v44 = v32[13];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 9);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 9);
  if (v46)
  {
    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v48)
    {
      return 0;
    }

    v64 = *v47;
    v65 = *(v47 + 8);
    if (v45[1])
    {
      if ((v64 & 0x10000) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((v64 & 0x10000) != 0 || *v45 != v64)
      {
        return result;
      }
    }

    if (v45[3])
    {
      if ((v64 & 0x1000000000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((v64 & 0x1000000000000) != 0 || (*(v45 + 3) | (*(v45 + 5) << 16)) >> 8 != WORD2(v64))
      {
        return result;
      }
    }

    if (v45[4])
    {
      v33 = v32;
      if ((v65 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v65)
      {
        return result;
      }

      v33 = v32;
      if (*(v45 + 7) != HIBYTE(v64))
      {
        return result;
      }
    }
  }

  v49 = v33[14];
  v50 = (a1 + v49);
  v51 = (a2 + v49);
  v52 = *(a2 + v49 + 9);
  if (*(a1 + v49 + 9))
  {
    v53 = v32;
    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + v49 + 9))
    {
      return 0;
    }

    v66 = *v51;
    v67 = *(v51 + 8);
    if (v50[1])
    {
      if ((v66 & 0x10000) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((v66 & 0x10000) != 0 || *v50 != v66)
      {
        return result;
      }
    }

    if (v50[3])
    {
      if ((v66 & 0x1000000000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if ((v66 & 0x1000000000000) != 0 || (*(v50 + 3) | (*(v50 + 5) << 16)) >> 8 != WORD2(v66))
      {
        return result;
      }
    }

    if (v50[4])
    {
      v53 = v32;
      if ((v67 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      if (v67)
      {
        return result;
      }

      v53 = v32;
      if (*(v50 + 7) != HIBYTE(v66))
      {
        return result;
      }
    }
  }

  v54 = v53[15];
  v55 = (a1 + v54);
  v56 = (a2 + v54);
  v57 = *(a2 + v54 + 9);
  if (*(a1 + v54 + 9))
  {
    v58 = v32;
    if ((v57 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_54;
  }

  if (*(a2 + v54 + 9))
  {
    return 0;
  }

  v69 = *v56;
  v70 = *(v56 + 8);
  if (v55[1])
  {
    if ((v69 & 0x10000) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v69 & 0x10000) != 0 || *v55 != v69)
    {
      return result;
    }
  }

  if (v55[3])
  {
    if ((v69 & 0x1000000000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v69 & 0x1000000000000) != 0 || (*(v55 + 3) | (*(v55 + 5) << 16)) >> 8 != WORD2(v69))
    {
      return result;
    }
  }

  if (v55[4])
  {
    v58 = v32;
    if ((v70 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_54;
  }

  result = 0;
  if ((v70 & 1) == 0)
  {
    v58 = v32;
    if (*(v55 + 7) == HIBYTE(v69))
    {
LABEL_54:
      v59 = v58[16];
      v60 = (a1 + v59);
      v61 = *(a1 + v59 + 2);
      v62 = (a2 + v59);
      v63 = *(a2 + v59 + 2);
      if (v61)
      {
        if (!v63)
        {
          return 0;
        }
      }

      else
      {
        if (*v60 != *v62)
        {
          LOBYTE(v63) = 1;
        }

        if (v63)
        {
          return 0;
        }
      }

      v71 = v32[17];
      v72 = (a1 + v71);
      v73 = *(a1 + v71 + 2);
      v74 = (a2 + v71);
      v75 = *(a2 + v71 + 2);
      if (v73)
      {
        if (!v75)
        {
          return 0;
        }
      }

      else
      {
        if (*v72 != *v74)
        {
          LOBYTE(v75) = 1;
        }

        if (v75)
        {
          return 0;
        }
      }

      v76 = v32[18];
      v77 = (a1 + v76);
      v78 = *(a1 + v76 + 2);
      v79 = (a2 + v76);
      v80 = *(a2 + v76 + 2);
      if (v78)
      {
        if (!v80)
        {
          return 0;
        }
      }

      else
      {
        if (*v77 != *v79)
        {
          LOBYTE(v80) = 1;
        }

        if (v80)
        {
          return 0;
        }
      }

      if (*(a1 + v32[19]) != *(a2 + v32[19]) || *(a1 + v32[20]) != *(a2 + v32[20]))
      {
        return 0;
      }

      v81 = v32[21];
      v82 = (a1 + v81);
      v83 = *(a1 + v81 + 1);
      v84 = (a2 + v81);
      v85 = *(a2 + v81 + 1);
      if (v83)
      {
        if (!v85)
        {
          return 0;
        }
      }

      else
      {
        if (*v82 != *v84)
        {
          LOBYTE(v85) = 1;
        }

        if (v85)
        {
          return 0;
        }
      }

      v86 = v32[22];
      v87 = (a1 + v86);
      v88 = *(a1 + v86 + 8);
      v89 = (a2 + v86);
      v90 = v89[1];
      if (v88)
      {
        return v90 && (*v87 == *v89 && v88 == v90 || (sub_1D1E6904C() & 1) != 0);
      }

      return !v90;
    }
  }

  return result;
}

unint64_t sub_1D1913890()
{
  result = qword_1EC646D80;
  if (!qword_1EC646D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646D80);
  }

  return result;
}

unint64_t sub_1D19138E4()
{
  result = qword_1EC646DA0;
  if (!qword_1EC646DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646DA0);
  }

  return result;
}

unint64_t sub_1D1913938()
{
  result = qword_1EC646DB0;
  if (!qword_1EC646DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646DB0);
  }

  return result;
}

uint64_t sub_1D191398C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC646D90, &qword_1D1E830E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1913A04()
{
  result = qword_1EC646DD0;
  if (!qword_1EC646DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646DD0);
  }

  return result;
}

unint64_t sub_1D1913A58()
{
  result = qword_1EC646DE0;
  if (!qword_1EC646DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646DE0);
  }

  return result;
}

uint64_t sub_1D1913AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1913B14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1913B74()
{
  result = qword_1EC646DF8;
  if (!qword_1EC646DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646DF8);
  }

  return result;
}

unint64_t sub_1D1913CA4()
{
  result = qword_1EC646E18;
  if (!qword_1EC646E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E18);
  }

  return result;
}

unint64_t sub_1D1913CFC()
{
  result = qword_1EC646E20;
  if (!qword_1EC646E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E20);
  }

  return result;
}

void sub_1D1913D78(uint64_t a1)
{
  type metadata accessor for ClusterPath(319);
  if (v1 <= 0x3F)
  {
    sub_1D1913F78(319, &qword_1EE07B608, MEMORY[0x1E69E7508], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D1913F78(319, &qword_1EE07D1D0, MEMORY[0x1E69E75F8], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D1913F78(319, &qword_1EE079E38, &type metadata for StaticColorControlCluster.ColorPoint, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1D1913F78(319, qword_1EE07A0F0, &type metadata for StaticColorControlCluster.ColorPoint, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for MTRColorControlColorCapabilitiesBitmap(319);
            if (v6 <= 0x3F)
            {
              sub_1D1913F78(319, qword_1EE07D1F8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
              if (v7 <= 0x3F)
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

void sub_1D1913F78(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_memcpy9_2(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for StaticColorControlCluster.ColorPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StaticColorControlCluster.ColorPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StaticColorControlCluster.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticColorControlCluster.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D19141AC()
{
  result = qword_1EC646E28;
  if (!qword_1EC646E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E28);
  }

  return result;
}

unint64_t sub_1D1914204()
{
  result = qword_1EC646E30;
  if (!qword_1EC646E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E30);
  }

  return result;
}

unint64_t sub_1D191425C()
{
  result = qword_1EC646E38;
  if (!qword_1EC646E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E38);
  }

  return result;
}

unint64_t sub_1D19142B4()
{
  result = qword_1EC646E40;
  if (!qword_1EC646E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E40);
  }

  return result;
}

unint64_t sub_1D191430C()
{
  result = qword_1EC646E48;
  if (!qword_1EC646E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E48);
  }

  return result;
}

unint64_t sub_1D1914364()
{
  result = qword_1EC646E50;
  if (!qword_1EC646E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E50);
  }

  return result;
}

uint64_t sub_1D19143B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x48746E6572727563 && a2 == 0xEA00000000006575 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EBE1F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EBE210 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x58746E6572727563 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x59746E6572727563 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656972616D697270 && a2 == 0xE900000000000073 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x696F506574696877 && a2 == 0xEB0000000058746ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x696F506574696877 && a2 == 0xEB0000000059746ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x696F50726F6C6F63 && a2 == 0xEB0000000052746ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x696F50726F6C6F63 && a2 == 0xEB0000000047746ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x696F50726F6C6F63 && a2 == 0xEB0000000042746ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EBE230 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBE250 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBE270 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBE290 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBE2B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EBE2D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBE2F0 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

uint64_t sub_1D19149A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1D1914AB0()
{
  result = qword_1EC646E58;
  if (!qword_1EC646E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646E58);
  }

  return result;
}

uint64_t sub_1D1914B04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1914B4C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (result = sub_1D171D228(result), (v5 & 1) != 0))
  {
    v6 = *(a2 + 56) + 16 * result;
    v7 = *v6;
    *a3 = *v6;
    v8 = *(v6 + 8);
    *(a3 + 8) = v8;

    return sub_1D1741AF8(v7, v8);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = -1;
  }

  return result;
}

unint64_t sub_1D1914BC0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (result = sub_1D171D1A4(result & 0xFFFFFFFFFFLL), (v5 & 1) != 0))
  {
    v6 = *(a2 + 56) + 16 * result;
    v7 = *v6;
    *a3 = *v6;
    v8 = *(v6 + 8);
    *(a3 + 8) = v8;

    return sub_1D1741AF8(v7, v8);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = -1;
  }

  return result;
}

uint64_t sub_1D1914C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1914C64, 0, 0);
}

uint64_t sub_1D1914C64()
{
  v39 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v34 = v0[8];
      v35 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v33 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v36 = ObjectType;
      v37 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v34;
      v15[3] = v35;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v33;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v16 = swift_allocObject();
      v0[11] = v16;

      v17 = v8;

      swift_defaultActor_initialize();
      *(v16 + 16) = 0;
      v18 = *(*v16 + 112);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
      v20 = &v16[*(*v16 + 120)];
      *v20 = 0;
      *(v20 + 1) = 0;
      *(v16 + 14) = &unk_1D1E84158;
      *(v16 + 15) = v15;
      v21 = swift_allocObject();
      v0[12] = v21;
      v21[2] = v4;
      v21[3] = v33;
      v21[4] = v36;
      v21[5] = v37;
      v21[6] = v5;
      v21[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v16, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EE07A0B0);

  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6833C();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[6];
    v25 = v0[7];
    v28 = v0[2];
    v27 = v0[3];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_1D1B1312C(v26, v25, &v38);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_1D1B1312C(v28, v27, &v38);
    _os_log_impl(&dword_1D16EC000, v23, v24, "%{public}s: tried running command %{public}s but cluster was nil", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1D19150CC()
{
  v1 = v0[12];
  v2 = (v0[11] + *(*v0[11] + 120));
  v3 = *v2;
  v4 = v2[1];
  *v2 = sub_1D191E8BC;
  v2[1] = v1;
  sub_1D17169C0(v3, v4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1D19151A8;

  return sub_1D19D7D10(sub_1D19D7D10);
}

uint64_t sub_1D19151A8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D191F20C;
  }

  else
  {
    v2 = sub_1D191F250;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D19152BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D19152E8, 0, 0);
}

uint64_t sub_1D19152E8()
{
  v39 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v34 = v0[8];
      v35 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v33 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v36 = ObjectType;
      v37 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v34;
      v15[3] = v35;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v33;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v16 = swift_allocObject();
      v0[11] = v16;

      v17 = v8;

      swift_defaultActor_initialize();
      *(v16 + 16) = 0;
      v18 = *(*v16 + 112);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
      v20 = &v16[*(*v16 + 120)];
      *v20 = 0;
      *(v20 + 1) = 0;
      *(v16 + 14) = &unk_1D1E84150;
      *(v16 + 15) = v15;
      v21 = swift_allocObject();
      v0[12] = v21;
      v21[2] = v4;
      v21[3] = v33;
      v21[4] = v36;
      v21[5] = v37;
      v21[6] = v5;
      v21[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v16, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EE07A0B0);

  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6833C();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[6];
    v25 = v0[7];
    v28 = v0[2];
    v27 = v0[3];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_1D1B1312C(v26, v25, &v38);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_1D1B1312C(v28, v27, &v38);
    _os_log_impl(&dword_1D16EC000, v23, v24, "%{public}s: tried running command %{public}s but cluster was nil", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1D1915750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D191577C, 0, 0);
}

uint64_t sub_1D191577C()
{
  v39 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v34 = v0[8];
      v35 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v33 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v36 = ObjectType;
      v37 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v34;
      v15[3] = v35;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v33;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v16 = swift_allocObject();
      v0[11] = v16;

      v17 = v8;

      swift_defaultActor_initialize();
      *(v16 + 16) = 0;
      v18 = *(*v16 + 112);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
      v20 = &v16[*(*v16 + 120)];
      *v20 = 0;
      *(v20 + 1) = 0;
      *(v16 + 14) = &unk_1D1E84140;
      *(v16 + 15) = v15;
      v21 = swift_allocObject();
      v0[12] = v21;
      v21[2] = v4;
      v21[3] = v33;
      v21[4] = v36;
      v21[5] = v37;
      v21[6] = v5;
      v21[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D1915BE4, v16, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EE07A0B0);

  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6833C();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[6];
    v25 = v0[7];
    v28 = v0[2];
    v27 = v0[3];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_1D1B1312C(v26, v25, &v38);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_1D1B1312C(v28, v27, &v38);
    _os_log_impl(&dword_1D16EC000, v23, v24, "%{public}s: tried running command %{public}s but cluster was nil", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1D1915BE4()
{
  v1 = v0[12];
  v2 = (v0[11] + *(*v0[11] + 120));
  v3 = *v2;
  v4 = v2[1];
  *v2 = sub_1D191E8BC;
  v2[1] = v1;
  sub_1D17169C0(v3, v4);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1D1915CC0;

  return sub_1D19D7D10(sub_1D19D7D10);
}

uint64_t sub_1D1915CC0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D1915E48;
  }

  else
  {
    v2 = sub_1D1915DD4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1915DD4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1915E48()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1915EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1915EE8, 0, 0);
}

uint64_t sub_1D1915EE8()
{
  v39 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v34 = v0[8];
      v35 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v33 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v36 = ObjectType;
      v37 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v34;
      v15[3] = v35;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v33;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v16 = swift_allocObject();
      v0[11] = v16;

      v17 = v8;

      swift_defaultActor_initialize();
      *(v16 + 16) = 0;
      v18 = *(*v16 + 112);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
      v20 = &v16[*(*v16 + 120)];
      *v20 = 0;
      *(v20 + 1) = 0;
      *(v16 + 14) = &unk_1D1E84130;
      *(v16 + 15) = v15;
      v21 = swift_allocObject();
      v0[12] = v21;
      v21[2] = v4;
      v21[3] = v33;
      v21[4] = v36;
      v21[5] = v37;
      v21[6] = v5;
      v21[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v16, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EE07A0B0);

  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6833C();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[6];
    v25 = v0[7];
    v28 = v0[2];
    v27 = v0[3];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_1D1B1312C(v26, v25, &v38);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_1D1B1312C(v28, v27, &v38);
    _os_log_impl(&dword_1D16EC000, v23, v24, "%{public}s: tried running command %{public}s but cluster was nil", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1D1916350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D191637C, 0, 0);
}

uint64_t sub_1D191637C()
{
  v39 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v34 = v0[8];
      v35 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v33 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v36 = ObjectType;
      v37 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v34;
      v15[3] = v35;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v33;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v16 = swift_allocObject();
      v0[11] = v16;

      v17 = v8;

      swift_defaultActor_initialize();
      *(v16 + 16) = 0;
      v18 = *(*v16 + 112);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
      v20 = &v16[*(*v16 + 120)];
      *v20 = 0;
      *(v20 + 1) = 0;
      *(v16 + 14) = &unk_1D1E84120;
      *(v16 + 15) = v15;
      v21 = swift_allocObject();
      v0[12] = v21;
      v21[2] = v4;
      v21[3] = v33;
      v21[4] = v36;
      v21[5] = v37;
      v21[6] = v5;
      v21[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v16, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EE07A0B0);

  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6833C();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[6];
    v25 = v0[7];
    v28 = v0[2];
    v27 = v0[3];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_1D1B1312C(v26, v25, &v38);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_1D1B1312C(v28, v27, &v38);
    _os_log_impl(&dword_1D16EC000, v23, v24, "%{public}s: tried running command %{public}s but cluster was nil", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1D19167E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1916810, 0, 0);
}

uint64_t sub_1D1916810()
{
  v39 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v34 = v0[8];
      v35 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v33 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v36 = ObjectType;
      v37 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v34;
      v15[3] = v35;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v33;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v16 = swift_allocObject();
      v0[11] = v16;

      v17 = v8;

      swift_defaultActor_initialize();
      *(v16 + 16) = 0;
      v18 = *(*v16 + 112);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
      v20 = &v16[*(*v16 + 120)];
      *v20 = 0;
      *(v20 + 1) = 0;
      *(v16 + 14) = &unk_1D1E84110;
      *(v16 + 15) = v15;
      v21 = swift_allocObject();
      v0[12] = v21;
      v21[2] = v4;
      v21[3] = v33;
      v21[4] = v36;
      v21[5] = v37;
      v21[6] = v5;
      v21[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v16, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EE07A0B0);

  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6833C();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[6];
    v25 = v0[7];
    v28 = v0[2];
    v27 = v0[3];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_1D1B1312C(v26, v25, &v38);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_1D1B1312C(v28, v27, &v38);
    _os_log_impl(&dword_1D16EC000, v23, v24, "%{public}s: tried running command %{public}s but cluster was nil", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1D1916C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1916CA4, 0, 0);
}

uint64_t sub_1D1916CA4()
{
  v39 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v34 = v0[8];
      v35 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v33 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v36 = ObjectType;
      v37 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v34;
      v15[3] = v35;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v33;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v16 = swift_allocObject();
      v0[11] = v16;

      v17 = v8;

      swift_defaultActor_initialize();
      *(v16 + 16) = 0;
      v18 = *(*v16 + 112);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
      v20 = &v16[*(*v16 + 120)];
      *v20 = 0;
      *(v20 + 1) = 0;
      *(v16 + 14) = &unk_1D1E84100;
      *(v16 + 15) = v15;
      v21 = swift_allocObject();
      v0[12] = v21;
      v21[2] = v4;
      v21[3] = v33;
      v21[4] = v36;
      v21[5] = v37;
      v21[6] = v5;
      v21[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v16, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EE07A0B0);

  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6833C();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[6];
    v25 = v0[7];
    v28 = v0[2];
    v27 = v0[3];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_1D1B1312C(v26, v25, &v38);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_1D1B1312C(v28, v27, &v38);
    _os_log_impl(&dword_1D16EC000, v23, v24, "%{public}s: tried running command %{public}s but cluster was nil", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  v31 = v0[1];

  return v31();
}

uint64_t sub_1D191710C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1917138, 0, 0);
}

uint64_t sub_1D1917138()
{
  v39 = v0;
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC649398)
  {
    v1 = v0[5];

    v2 = v0[4];
    if (v2)
    {
LABEL_5:
      v34 = v0[8];
      v35 = v0[9];
      v4 = v0[6];
      v3 = v0[7];
      v6 = v0[2];
      v5 = v0[3];
      v33 = v3;
      ObjectType = swift_getObjectType();
      v8 = v2;
      v9 = v3;
      v10 = ObjectType;
      v11 = ObjectType;
      v36 = ObjectType;
      v37 = v6;
      v12 = v6;
      v13 = sub_1D190C444(v4, v9, v10, v6, v5, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB0, &qword_1D1E840D8);
      v14 = swift_allocObject();
      v0[10] = v14;
      *(v14 + 24) = 0;
      *(v14 + 16) = v13;
      v15 = swift_allocObject();
      v15[2] = v34;
      v15[3] = v35;
      v15[4] = v8;
      v15[5] = v1;
      v15[6] = v4;
      v15[7] = v33;
      v15[8] = v11;
      v15[9] = v12;
      v15[10] = v5;
      v15[11] = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FB8, &qword_1D1E840E8);
      v16 = swift_allocObject();
      v0[11] = v16;

      v17 = v8;

      swift_defaultActor_initialize();
      *(v16 + 16) = 0;
      v18 = *(*v16 + 112);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
      (*(*(v19 - 8) + 56))(&v16[v18], 1, 1, v19);
      v20 = &v16[*(*v16 + 120)];
      *v20 = 0;
      *(v20 + 1) = 0;
      *(v16 + 14) = &unk_1D1E840E0;
      *(v16 + 15) = v15;
      v21 = swift_allocObject();
      v0[12] = v21;
      v21[2] = v4;
      v21[3] = v33;
      v21[4] = v36;
      v21[5] = v37;
      v21[6] = v5;
      v21[7] = v14;

      return MEMORY[0x1EEE6DFA0](sub_1D19150CC, v16, 0);
    }
  }

  else
  {
    v1 = 0;
    v2 = v0[4];
    if (v2)
    {
      goto LABEL_5;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EE07A0B0);

  v23 = sub_1D1E6707C();
  v24 = sub_1D1E6833C();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = v0[6];
    v25 = v0[7];
    v28 = v0[2];
    v27 = v0[3];
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136446466;
    *(v29 + 4) = sub_1D1B1312C(v26, v25, &v38);
    *(v29 + 12) = 2082;
    *(v29 + 14) = sub_1D1B1312C(v28, v27, &v38);
    _os_log_impl(&dword_1D16EC000, v23, v24, "%{public}s: tried running command %{public}s but cluster was nil", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  v31 = v0[1];

  return v31();
}

void StaticColorControlCluster.Command.init(clusterKind:commandID:expectedValues:commandFields:)(_BYTE *a1@<X0>, int a2@<W1>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{

  v9 = *a4;
  if (*a1 != 17)
  {
    goto LABEL_26;
  }

  if (a2 <= 9)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        if (!v9)
        {
          goto LABEL_56;
        }

        sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
        swift_bridgeObjectRetain_n();
        v10 = sub_1D1E684DC();
        v11 = v10;
        if (!*(v9 + 16) || (v12 = sub_1D171D228(v10), (v13 & 1) == 0))
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_56;
        }

        v14 = *(v9 + 56) + 16 * v12;
        v15 = *v14;
        v16 = *(v14 + 8);
        sub_1D1741AF8(*v14, *(v14 + 8));

        if (v16 == 2)
        {
          v17 = sub_1D1E684DC();
          v18 = v17;
          if (*(v9 + 16))
          {
            v19 = sub_1D171D228(v17);
            if (v20)
            {
              v21 = *(v9 + 56) + 16 * v19;
              v22 = *v21;
              v23 = *(v21 + 8);
              sub_1D1741AF8(*v21, *(v21 + 8));

              if (v23 == 2)
              {

                if (!((v22 | v15) >> 16))
                {
                  v24 = v15 | (v22 << 16) | 0x200000000;
LABEL_76:
                  *a5 = v24;
                  *(a5 + 4) = BYTE4(v24);
                  return;
                }

                goto LABEL_81;
              }

              sub_1D1757AE8(v22, v23);
LABEL_56:
              if (qword_1EE07A0A8 != -1)
              {
                swift_once();
              }

              v72 = sub_1D1E6709C();
              __swift_project_value_buffer(v72, qword_1EE07A0B0);

              v61 = sub_1D1E6707C();
              v62 = sub_1D1E6833C();

              if (os_log_type_enabled(v61, v62))
              {
                v63 = swift_slowAlloc();
                v64 = swift_slowAlloc();
                v93 = v64;
                *v63 = 136446722;
                v73 = sub_1D1E6789C();
                v75 = sub_1D1B1312C(v73, v74, &v93);

                *(v63 + 4) = v75;
                *(v63 + 12) = 1026;
                *(v63 + 14) = 7;
                *(v63 + 18) = 2082;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E60, &qword_1D1E83820);
                v76 = sub_1D1E678BC();
                v78 = sub_1D1B1312C(v76, v77, &v93);

                *(v63 + 20) = v78;
                v71 = "Couldn't get expected x/y values from command fields. clusterKind:%{public}s commandID:%{public}u. commandFields: (%{public}s)";
                goto LABEL_72;
              }

              goto LABEL_73;
            }
          }
        }

        else
        {
          sub_1D1757AE8(v15, v16);
        }

        goto LABEL_56;
      }

LABEL_26:

LABEL_75:
      v24 = 0xFF00000000;
      goto LABEL_76;
    }

    if (v9)
    {
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      swift_bridgeObjectRetain_n();
      v39 = sub_1D1E684DC();
      v40 = v39;
      if (!*(v9 + 16) || (v41 = sub_1D171D228(v39), (v42 & 1) == 0))
      {

        swift_bridgeObjectRelease_n();
        goto LABEL_68;
      }

      v43 = *(v9 + 56) + 16 * v41;
      v44 = *v43;
      v45 = *(v43 + 8);
      sub_1D1741AF8(*v43, *(v43 + 8));

      if (v45 == 2)
      {
        v46 = sub_1D1E684DC();
        v47 = v46;
        if (*(v9 + 16))
        {
          v48 = sub_1D171D228(v46);
          if (v49)
          {
            v50 = *(v9 + 56) + 16 * v48;
            v51 = *v50;
            v52 = *(v50 + 8);
            sub_1D1741AF8(*v50, *(v50 + 8));

            if (v52 == 2)
            {

              if ((v51 | v44) <= 0xFF)
              {
                v24 = v44 | (v51 << 8);
                goto LABEL_76;
              }

              goto LABEL_82;
            }

            sub_1D1757AE8(v51, v52);
            goto LABEL_68;
          }
        }
      }

      else
      {
        sub_1D1757AE8(v44, v45);
      }
    }

LABEL_68:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v86 = sub_1D1E6709C();
    __swift_project_value_buffer(v86, qword_1EE07A0B0);

    v61 = sub_1D1E6707C();
    v62 = sub_1D1E6833C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v93 = v64;
      *v63 = 136446722;
      v87 = sub_1D1E6789C();
      v89 = sub_1D1B1312C(v87, v88, &v93);

      *(v63 + 4) = v89;
      *(v63 + 12) = 1026;
      *(v63 + 14) = 6;
      *(v63 + 18) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E60, &qword_1D1E83820);
      v90 = sub_1D1E678BC();
      v92 = sub_1D1B1312C(v90, v91, &v93);

      *(v63 + 20) = v92;
      v71 = "Couldn't get expected hue/saturation values from command fields. clusterKind:%{public}s commandID:%{public}u. commandFields: (%{public}s)";
      goto LABEL_72;
    }

    goto LABEL_73;
  }

  if (a2 == 10)
  {
    if (v9)
    {
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);

      v53 = sub_1D1E684DC();
      v54 = v53;
      if (*(v9 + 16) && (v55 = sub_1D171D228(v53), (v56 & 1) != 0))
      {
        v57 = *(v9 + 56) + 16 * v55;
        v58 = *v57;
        v59 = *(v57 + 8);
        sub_1D1741AF8(*v57, *(v57 + 8));

        if (v59 == 2)
        {

          if (!(v58 >> 16))
          {
            v24 = v58 | 0x300000000;
            goto LABEL_76;
          }

          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
          goto LABEL_83;
        }

        sub_1D1757AE8(v58, v59);
      }

      else
      {
      }
    }

    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v60 = sub_1D1E6709C();
    __swift_project_value_buffer(v60, qword_1EE07A0B0);

    v61 = sub_1D1E6707C();
    v62 = sub_1D1E6833C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v93 = v64;
      *v63 = 136446722;
      v65 = sub_1D1E6789C();
      v67 = sub_1D1B1312C(v65, v66, &v93);

      *(v63 + 4) = v67;
      *(v63 + 12) = 1026;
      *(v63 + 14) = 10;
      *(v63 + 18) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E60, &qword_1D1E83820);
      v68 = sub_1D1E678BC();
      v70 = sub_1D1B1312C(v68, v69, &v93);

      *(v63 + 20) = v70;
      v71 = "Couldn't get expected colorTemperature values from command fields. clusterKind:%{public}s commandID:%{public}u. commandFields: (%{public}s)";
LABEL_72:
      _os_log_impl(&dword_1D16EC000, v61, v62, v71, v63, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v64, -1, -1);
      MEMORY[0x1D3893640](v63, -1, -1);
LABEL_74:

      goto LABEL_75;
    }

LABEL_73:

    goto LABEL_74;
  }

  if (a2 != 67)
  {
    goto LABEL_26;
  }

  if (!v9)
  {
LABEL_62:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v79 = sub_1D1E6709C();
    __swift_project_value_buffer(v79, qword_1EE07A0B0);

    v61 = sub_1D1E6707C();
    v62 = sub_1D1E6833C();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v93 = v64;
      *v63 = 136446722;
      v80 = sub_1D1E6789C();
      v82 = sub_1D1B1312C(v80, v81, &v93);

      *(v63 + 4) = v82;
      *(v63 + 12) = 1026;
      *(v63 + 14) = 67;
      *(v63 + 18) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E60, &qword_1D1E83820);
      v83 = sub_1D1E678BC();
      v85 = sub_1D1B1312C(v83, v84, &v93);

      *(v63 + 20) = v85;
      v71 = "Couldn't get expected Ehue/saturation values from command fields. clusterKind:%{public}s commandID:%{public}u. commandFields: (%{public}s)";
      goto LABEL_72;
    }

    goto LABEL_73;
  }

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  swift_bridgeObjectRetain_n();
  v25 = sub_1D1E684DC();
  v26 = v25;
  if (!*(v9 + 16) || (v27 = sub_1D171D228(v25), (v28 & 1) == 0))
  {

    swift_bridgeObjectRelease_n();
    goto LABEL_62;
  }

  v29 = *(v9 + 56) + 16 * v27;
  v30 = *v29;
  v31 = *(v29 + 8);
  sub_1D1741AF8(*v29, *(v29 + 8));

  if (v31 != 2)
  {
    sub_1D1757AE8(v30, v31);
LABEL_61:

    goto LABEL_62;
  }

  v32 = sub_1D1E684DC();
  v33 = v32;
  if (!*(v9 + 16) || (v34 = sub_1D171D228(v32), (v35 & 1) == 0))
  {

    goto LABEL_61;
  }

  v36 = *(v9 + 56) + 16 * v34;
  v37 = *v36;
  v38 = *(v36 + 8);
  sub_1D1741AF8(*v36, *(v36 + 8));

  if (v38 != 2)
  {
    sub_1D1757AE8(v37, v38);
    goto LABEL_62;
  }

  if (!(v30 >> 16) && v37 <= 0xFF)
  {
    v24 = v30 | (v37 << 16) | 0x100000000;
    goto LABEL_76;
  }

LABEL_83:
  __break(1u);
}

unint64_t StaticColorControlCluster.Command.expectedValues.getter()
{
  v1 = *v0;
  if (*(v0 + 4) > 1u)
  {
    if (*(v0 + 4) != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
      inited = swift_initStackObject();
      *(inited + 32) = 7;
      *(inited + 16) = xmmword_1D1E73A90;
      *(inited + 36) = 17;
      *(inited + 40) = v1;
      *(inited + 48) = 2;
      *(inited + 56) = 8;
      *(inited + 60) = 17;
      *(inited + 64) = 2;
      *(inited + 72) = 2;
      v4 = sub_1D18D4B28(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E70, &qword_1D1E83830);
      goto LABEL_10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
    v2 = swift_initStackObject();
    *(v2 + 32) = 8;
    *(v2 + 16) = xmmword_1D1E6F900;
    *(v2 + 36) = 17;
    *(v2 + 40) = 1;
    *(v2 + 48) = 2;
    *(v2 + 56) = 3;
    *(v2 + 60) = 17;
    *(v2 + 64) = v1;
    *(v2 + 72) = 2;
    *(v2 + 80) = 4;
    *(v2 + 84) = 17;
    *(v2 + 88) = v1 >> 16;
  }

  else
  {
    if (*(v0 + 4))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_1D1E6F900;
      *(v2 + 32) = 8;
      *(v2 + 36) = 17;
      *(v2 + 40) = 3;
      *(v2 + 48) = 2;
      *(v2 + 56) = 0x4000;
      *(v2 + 60) = 17;
      *(v2 + 64) = v1;
      *(v2 + 72) = 2;
      *(v2 + 80) = 1;
      *(v2 + 84) = 17;
      v3 = BYTE2(v1);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
      v2 = swift_initStackObject();
      *(v2 + 16) = xmmword_1D1E6F900;
      *(v2 + 32) = 8;
      *(v2 + 36) = 17;
      *(v2 + 40) = 0;
      *(v2 + 48) = 2;
      *(v2 + 56) = 0;
      *(v2 + 60) = 17;
      *(v2 + 64) = v1;
      *(v2 + 72) = 2;
      *(v2 + 80) = 1;
      *(v2 + 84) = 17;
      v3 = BYTE1(v1);
    }

    *(v2 + 88) = v3;
  }

  *(v2 + 96) = 2;
  v4 = sub_1D18D4B28(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E70, &qword_1D1E83830);
LABEL_10:
  swift_arrayDestroy();
  return v4;
}

HomeDataModel::MatterCommandFields StaticColorControlCluster.Command.commandFields.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 4) <= 1u)
  {
    if (*(v1 + 4))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E78, &qword_1D1E83838);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E73A90;
      *(inited + 32) = v3;
      *(inited + 40) = 2;
      v5 = BYTE2(v3);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E78, &qword_1D1E83838);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E73A90;
      *(inited + 32) = v3;
      *(inited + 40) = 2;
      v5 = BYTE1(v3);
    }

    *(inited + 48) = v5;
    goto LABEL_8;
  }

  if (*(v1 + 4) == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E78, &qword_1D1E83838);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    *(inited + 32) = v3;
    *(inited + 40) = 2;
    *(inited + 48) = v3 >> 16;
LABEL_8:
    *(inited + 56) = 2;
    result.values._rawValue = MatterCommandFields.init(values:)(inited).values._rawValue;
    *a1 = v10;
    return result;
  }

  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  v7 = sub_1D1E684DC();
  v8 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D17524E4(v3, 2, v7, isUniquelyReferenced_nonNull_native);

  *a1 = v8;
  return result;
}

unint64_t StaticColorControlCluster.Command.description.getter()
{
  if (*(v0 + 4) > 1u)
  {
    if (*(v0 + 4) == 2)
    {
      sub_1D1E6884C();

      v5 = 0x6F436F5465766F6DLL;
      v2 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v2);

      MEMORY[0x1D3890F70](3832096, 0xE300000000000000);
    }

    else
    {
      sub_1D1E6884C();

      v5 = 0xD000000000000018;
    }
  }

  else
  {
    if (*(v0 + 4))
    {
      v5 = 0;
      sub_1D1E6884C();
      MEMORY[0x1D3890F70](0xD000000000000024, 0x80000001D1EBE330);
    }

    else
    {
      sub_1D1E6884C();

      v5 = 0xD00000000000001CLL;
    }

    v1 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v1);

    MEMORY[0x1D3890F70](0x7461727574617320, 0xEC0000003A6E6F69);
  }

  v3 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v3);

  return v5;
}

unint64_t sub_1D19187AC()
{
  v1 = 0x59586F5465766F6DLL;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D1918828@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D191E648(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1918850(uint64_t a1)
{
  v2 = sub_1D191D894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D191888C(uint64_t a1)
{
  v2 = sub_1D191D894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19188C8(uint64_t a1)
{
  v2 = sub_1D191D990();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1918904(uint64_t a1)
{
  v2 = sub_1D191D990();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1918940(uint64_t a1)
{
  v2 = sub_1D191D8E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D191897C(uint64_t a1)
{
  v2 = sub_1D191D8E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19189B8(uint64_t a1)
{
  v2 = sub_1D191D9E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19189F4(uint64_t a1)
{
  v2 = sub_1D191D9E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1918A30(uint64_t a1)
{
  v2 = sub_1D191D93C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1918A6C(uint64_t a1)
{
  v2 = sub_1D191D93C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticColorControlCluster.Command.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E80, &qword_1D1E83840);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E88, &qword_1D1E83848);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E90, &qword_1D1E83850);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E98, &qword_1D1E83858);
  v31 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646EA0, &qword_1D1E83860);
  v16 = *(v15 - 8);
  v41 = v15;
  v42 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  v39 = *v2;
  v19 = *(v2 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D191D894();
  sub_1D1E6930C();
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v51 = 2;
      sub_1D191D93C();
      v20 = v41;
      sub_1D1E68DFC();
      v50 = 0;
      v24 = v38;
      v25 = v40;
      sub_1D1E68F4C();
      if (v25)
      {
        (*(v37 + 8))(v8, v24);
        return (*(v42 + 8))(v18, v20);
      }

      v49 = 1;
      sub_1D1E68F4C();
      v22 = *(v37 + 8);
      v23 = v8;
    }

    else
    {
      v52 = 3;
      sub_1D191D8E8();
      v28 = v34;
      v20 = v41;
      sub_1D1E68DFC();
      v24 = v36;
      sub_1D1E68F4C();
      v22 = *(v35 + 8);
      v23 = v28;
    }

    v27 = v24;
    goto LABEL_15;
  }

  if (v19)
  {
    v48 = 1;
    sub_1D191D990();
    v20 = v41;
    sub_1D1E68DFC();
    v47 = 0;
    v12 = v33;
    v26 = v40;
    sub_1D1E68F4C();
    if (!v26)
    {
      v46 = 1;
      sub_1D1E68F3C();
      (*(v32 + 8))(v11, v12);
      return (*(v42 + 8))(v18, v20);
    }

    v22 = *(v32 + 8);
    v23 = v11;
    goto LABEL_10;
  }

  v45 = 0;
  sub_1D191D9E4();
  v20 = v41;
  sub_1D1E68DFC();
  v44 = 0;
  v21 = v40;
  sub_1D1E68F3C();
  if (v21)
  {
    v22 = *(v31 + 8);
    v23 = v14;
LABEL_10:
    v27 = v12;
LABEL_15:
    v22(v23, v27);
    return (*(v42 + 8))(v18, v20);
  }

  v43 = 1;
  sub_1D1E68F3C();
  (*(v31 + 8))(v14, v12);
  return (*(v42 + 8))(v18, v20);
}

uint64_t StaticColorControlCluster.Command.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D1E6920C();
  sub_1D1919AE4(v4, v1 | (v2 << 32));
  return sub_1D1E6926C();
}

uint64_t StaticColorControlCluster.Command.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646ED0, &qword_1D1E83868);
  v61 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v65 = &v54 - v3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646ED8, &qword_1D1E83870);
  v62 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v64 = &v54 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646EE0, &qword_1D1E83878);
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v54 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646EE8, &qword_1D1E83880);
  v57 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646EF0, &unk_1D1E83888);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - v13;
  v15 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D191D894();
  v16 = v66;
  sub_1D1E692FC();
  if (!v16)
  {
    v17 = v10;
    v54 = v8;
    v55 = v12;
    v19 = v64;
    v18 = v65;
    v66 = v11;
    v20 = sub_1D1E68DDC();
    v21 = (2 * *(v20 + 16)) | 1;
    v68 = v20;
    v69 = v20 + 32;
    v70 = 0;
    v71 = v21;
    v22 = sub_1D18085BC();
    if (v22 == 4 || v70 != v71 >> 1)
    {
      v23 = sub_1D1E688EC();
      swift_allocError();
      v25 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v25 = &type metadata for StaticColorControlCluster.Command;
      v26 = v66;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v55 + 8))(v14, v26);
      swift_unknownObjectRelease();
    }

    else
    {
      v72 = v22;
      if (v22 > 1u)
      {
        if (v22 == 2)
        {
          v73 = 2;
          sub_1D191D93C();
          v28 = v19;
          v29 = v66;
          sub_1D1E68C4C();
          v30 = v55;
          v31 = v14;
          v32 = v63;
          v40 = v31;
          v73 = 0;
          v41 = v58;
          v50 = sub_1D1E68DAC();
          v73 = 1;
          v51 = sub_1D1E68DAC();
          (*(v62 + 8))(v28, v41);
          (*(v30 + 8))(v40, v29);
          swift_unknownObjectRelease();
          v49 = v50 | (v51 << 16);
        }

        else
        {
          v73 = 3;
          sub_1D191D8E8();
          v35 = v18;
          v36 = v66;
          sub_1D1E68C4C();
          v37 = v55;
          v38 = v14;
          v32 = v63;
          v64 = v38;
          v46 = v56;
          v53 = sub_1D1E68DAC();
          (*(v61 + 8))(v35, v46);
          (*(v37 + 8))(v64, v36);
          swift_unknownObjectRelease();
          v49 = v53;
        }
      }

      else
      {
        if (v22)
        {
          v73 = 1;
          sub_1D191D990();
          v33 = v14;
          v34 = v66;
          sub_1D1E68C4C();
          v42 = v33;
          v73 = 0;
          v43 = v60;
          v44 = sub_1D1E68DAC();
          v45 = v55;
          v52 = v44;
          v73 = 1;
          LOBYTE(v33) = sub_1D1E68D9C();
          (*(v59 + 8))(v7, v43);
          (*(v45 + 8))(v42, v34);
          swift_unknownObjectRelease();
          v49 = v52 | (v33 << 16);
        }

        else
        {
          v73 = 0;
          sub_1D191D9E4();
          sub_1D1E68C4C();
          v73 = 0;
          v39 = v54;
          v47 = sub_1D1E68D9C();
          v73 = 1;
          v48 = sub_1D1E68D9C();
          (*(v57 + 8))(v17, v39);
          (*(v55 + 8))(v14, v66);
          swift_unknownObjectRelease();
          v49 = v47 | (v48 << 8);
        }

        v32 = v63;
      }

      *v32 = v49;
      *(v32 + 4) = v72;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v67);
}

uint64_t sub_1D1919A88()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D1E6920C();
  sub_1D1919AE4(v4, v1 | (v2 << 32));
  return sub_1D1E6926C();
}

uint64_t sub_1D1919AE4(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v9 = BYTE4(a2);
  sub_1D1E6922C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  v3 = StaticColorControlCluster.Command.expectedValues.getter();
  if (v3)
  {
    v4 = v3;
    sub_1D1E6922C();
    sub_1D18560F4(a1, v4);
  }

  else
  {
    sub_1D1E6922C();
  }

  StaticColorControlCluster.Command.commandFields.getter(&v7);
  v5 = v7;
  if (v7)
  {
    sub_1D1E6922C();
    sub_1D1855E28(a1, v5);
  }

  else
  {
    sub_1D1E6922C();
  }

  StaticColorControlCluster.Command.description.getter();
  sub_1D1E678EC();
}

uint64_t sub_1D1919C00(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v8[1] = a2;
  v9 = a3;
  sub_1D1E6922C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  v4 = StaticRVCClusterGroup.Command.expectedValues.getter();
  if (v4)
  {
    v5 = v4;
    sub_1D1E6922C();
    sub_1D18560F4(a1, v5);
  }

  else
  {
    sub_1D1E6922C();
  }

  StaticRVCClusterGroup.Command.commandFields.getter(v8);
  v6 = v8[0];
  if (v8[0])
  {
    sub_1D1E6922C();
    sub_1D1855E28(a1, v6);
  }

  else
  {
    sub_1D1E6922C();
  }

  StaticRVCClusterGroup.Command.description.getter();
  sub_1D1E678EC();
}

uint64_t sub_1D1919D70(uint64_t a1, char a2)
{
  v3 = a2 ^ 1;
  sub_1D1E6922C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
  inited = swift_initStackObject();
  *(inited + 32) = 0;
  v5 = inited + 32;
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 36) = 11;
  *(inited + 40) = v3 & 1;
  *(inited + 48) = 0;
  v6 = sub_1D18D4B28(inited);
  swift_setDeallocating();
  sub_1D1741A30(v5, &qword_1EC646E70, &qword_1D1E83830);
  sub_1D1E6922C();
  sub_1D18560F4(a1, v6);

  sub_1D1E6922C();
  sub_1D1E678EC();
}

uint64_t sub_1D1919E90(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  sub_1D1E6922C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  if (v4 == 6)
  {
    sub_1D1E6922C();
    sub_1D1E6922C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646E68, &qword_1D1E83828);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = 0;
    v6 = inited + 32;
    *(inited + 36) = 10;
    v7 = (a2 - 1);
    if (v7 > 3)
    {
      v8 = 5;
    }

    else
    {
      v8 = qword_1D1E841A0[(a2 - 1)];
    }

    *(inited + 40) = v8;
    *(inited + 48) = 2;
    v9 = sub_1D18D4B28(inited);
    swift_setDeallocating();
    sub_1D1741A30(v6, &qword_1EC646E70, &qword_1D1E83830);
    sub_1D1E6922C();
    sub_1D18560F4(a1, v9);

    if (v7 > 3)
    {
      v10 = 5;
    }

    else
    {
      v10 = qword_1D1E841A0[(a2 - 1)];
    }

    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v11 = sub_1D1E684DC();
    v12 = sub_1D18D4C50(MEMORY[0x1E69E7CC0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D17524E4(v10, 2, v11, isUniquelyReferenced_nonNull_native);

    sub_1D1E6922C();
    sub_1D1855E28(a1, v12);
  }

  return sub_1D1E678EC();
}

uint64_t sub_1D191A088(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  sub_1D1E6920C();
  sub_1D1919AE4(v5, v2 | (v3 << 32));
  return sub_1D1E6926C();
}

uint64_t StaticColorControlCluster.run(command:)(uint64_t a1)
{
  *(v2 + 88) = v1;
  type metadata accessor for ClusterPath(0);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 176) = *a1;
  *(v2 + 180) = *(a1 + 4);

  return MEMORY[0x1EEE6DFA0](sub_1D191A174, 0, 0);
}

uint64_t sub_1D191A174()
{
  v15 = v0;
  v1 = *(v0 + 180);
  v2 = *(v0 + 176);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  *(v0 + 40) = &type metadata for StaticColorControlCluster.Command;
  v5 = sub_1D18FA3FC();
  *(v0 + 16) = v2;
  *(v0 + 48) = v5;
  *(v0 + 20) = v1;
  sub_1D191EED4(v3, v4, type metadata accessor for ClusterPath);
  v6 = *(v4 + *(type metadata accessor for EndpointPath(0) + 24));
  sub_1D191EF3C(v4, type metadata accessor for EndpointPath);
  v13 = MEMORY[0x1E69E7CC8];
  ExpectedValuesBuilder.addValues(from:in:)((v0 + 16), v6, &v14);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  *(v0 + 104) = v13;
  v7 = *(v0 + 176);
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      *(v0 + 64) = v13;
      v10 = swift_task_alloc();
      *(v0 + 144) = v10;
      *v10 = v0;
      v10[1] = sub_1D191A70C;

      return StaticColorControlCluster.moveToColor(x:y:expectedValues:)(v7, SHIWORD(v7), (v0 + 64));
    }

    else
    {
      *(v0 + 56) = v13;
      v12 = swift_task_alloc();
      *(v0 + 160) = v12;
      *v12 = v0;
      v12[1] = sub_1D191A850;

      return StaticColorControlCluster.moveToColorTemperature(colorTemperature:expectedValues:)(v7, (v0 + 56));
    }
  }

  else if (v1)
  {
    *(v0 + 72) = v13;
    v11 = swift_task_alloc();
    *(v0 + 128) = v11;
    *v11 = v0;
    v11[1] = sub_1D191A5C8;

    return StaticColorControlCluster.enhancedMoveToHueAndSaturation(hue:saturation:expectedValues:)(v7, SBYTE2(v7), (v0 + 72));
  }

  else
  {
    *(v0 + 80) = v13;
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *v8 = v0;
    v8[1] = sub_1D191A484;

    return StaticColorControlCluster.moveToHueAndSaturation(hue:saturation:expectedValues:)(v7, SBYTE1(v7), (v0 + 80));
  }
}

uint64_t sub_1D191A484()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D191A994, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D191A5C8()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D191AA00, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D191A70C()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D191AA6C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D191A850()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D191AAD8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D191A994()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D191AA00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D191AA6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D191AAD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t StaticColorControlCluster.moveToHueAndSaturation(hue:saturation:expectedValues:)(char a1, char a2, uint64_t *a3)
{
  *(v4 + 32) = v3;
  *(v4 + 137) = a2;
  *(v4 + 136) = a1;
  *(v4 + 40) = type metadata accessor for ClusterPath(0);
  *(v4 + 48) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a3;
  *(v4 + 56) = v6;
  *(v4 + 64) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D191ABF4, 0, 0);
}

uint64_t sub_1D191ABF4()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = [objc_allocWithZone(MEMORY[0x1E696F5F8]) init];
  v0[9] = v5;
  v6 = sub_1D1E691BC();
  [v5 setHue_];

  v7 = sub_1D1E691BC();
  [v5 setSaturation_];

  sub_1D1741B10(0, &qword_1EC646EF8, 0x1E696F590);
  sub_1D191EED4(v3, v1, type metadata accessor for ClusterPath);
  sub_1D191EF9C(v1, v2, type metadata accessor for EndpointPath);
  *(v2 + *(v4 + 20)) = 17;
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1D191AD84;
  v9 = v0[7];

  return sub_1D1A092C4(v9);
}

uint64_t sub_1D191AD84(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 88) = a1;

  sub_1D191EF3C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D191AEB8, 0, 0);
}

uint64_t sub_1D191AEB8()
{
  v15 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v12 = MEMORY[0x1E69E7CC0];
  v13 = v1;
  sub_1D1A1456C(&v13, &v12);
  v3 = v12;
  v0[12] = v12;
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v2;
  v5 = v2;
  v13 = 0xD00000000000001ALL;
  v14 = 0x80000001D1EBE3A0;
  v6 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  v7 = v13;
  v8 = v14;
  v0[14] = v14;
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1D191B034;
  v10 = v0[11];

  return sub_1D1914C38(0xD000000000000016, 0x80000001D1EBE380, v10, v3, v7, v8, &unk_1D1E838C8, v4);
}

uint64_t sub_1D191B034()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {

    v3 = sub_1D191F230;
  }

  else
  {
    v4 = *(v2 + 88);

    v3 = sub_1D191F21C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t StaticColorControlCluster.enhancedMoveToHueAndSaturation(hue:saturation:expectedValues:)(__int16 a1, char a2, uint64_t *a3)
{
  *(v4 + 32) = v3;
  *(v4 + 138) = a2;
  *(v4 + 136) = a1;
  *(v4 + 40) = type metadata accessor for ClusterPath(0);
  *(v4 + 48) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a3;
  *(v4 + 56) = v6;
  *(v4 + 64) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D191B244, 0, 0);
}

uint64_t sub_1D191B244()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = [objc_allocWithZone(MEMORY[0x1E696F5E0]) init];
  v0[9] = v5;
  v6 = sub_1D1E692AC();
  [v5 setEnhancedHue_];

  v7 = sub_1D1E691BC();
  [v5 setSaturation_];

  sub_1D1741B10(0, &qword_1EC646EF8, 0x1E696F590);
  sub_1D191EED4(v3, v1, type metadata accessor for ClusterPath);
  sub_1D191EF9C(v1, v2, type metadata accessor for EndpointPath);
  *(v2 + *(v4 + 20)) = 17;
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1D191B3D4;
  v9 = v0[7];

  return sub_1D1A092C4(v9);
}

uint64_t sub_1D191B3D4(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 88) = a1;

  sub_1D191EF3C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D191B508, 0, 0);
}

uint64_t sub_1D191B508()
{
  v15 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v12 = MEMORY[0x1E69E7CC0];
  v13 = v1;
  sub_1D1A1456C(&v13, &v12);
  v3 = v12;
  v0[12] = v12;
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v2;
  v5 = v2;
  v13 = 0xD00000000000001ALL;
  v14 = 0x80000001D1EBE3A0;
  v6 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  v7 = v13;
  v8 = v14;
  v0[14] = v14;
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1D191B034;
  v10 = v0[11];

  return sub_1D1914C38(0xD00000000000001ELL, 0x80000001D1EBE3C0, v10, v3, v7, v8, &unk_1D1E838E8, v4);
}

uint64_t StaticColorControlCluster.moveToColor(x:y:expectedValues:)(__int16 a1, __int16 a2, uint64_t *a3)
{
  *(v4 + 32) = v3;
  *(v4 + 138) = a2;
  *(v4 + 136) = a1;
  *(v4 + 40) = type metadata accessor for ClusterPath(0);
  *(v4 + 48) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a3;
  *(v4 + 56) = v6;
  *(v4 + 64) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D191B730, 0, 0);
}

uint64_t sub_1D191B730()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = [objc_allocWithZone(MEMORY[0x1E696F5E8]) init];
  v0[9] = v5;
  v6 = sub_1D1E692AC();
  [v5 setColorX_];

  v7 = sub_1D1E692AC();
  [v5 setColorY_];

  sub_1D1741B10(0, &qword_1EC646EF8, 0x1E696F590);
  sub_1D191EED4(v3, v1, type metadata accessor for ClusterPath);
  sub_1D191EF9C(v1, v2, type metadata accessor for EndpointPath);
  *(v2 + *(v4 + 20)) = 17;
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1D191B8C0;
  v9 = v0[7];

  return sub_1D1A092C4(v9);
}

uint64_t sub_1D191B8C0(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 88) = a1;

  sub_1D191EF3C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D191B9F4, 0, 0);
}

uint64_t sub_1D191B9F4()
{
  v15 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v12 = MEMORY[0x1E69E7CC0];
  v13 = v1;
  sub_1D1A1456C(&v13, &v12);
  v3 = v12;
  v0[12] = v12;
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v2;
  v5 = v2;
  v13 = 0xD00000000000001ALL;
  v14 = 0x80000001D1EBE3A0;
  v6 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  v7 = v13;
  v8 = v14;
  v0[14] = v14;
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1D191BB74;
  v10 = v0[11];

  return sub_1D1914C38(0x6F436F5465766F6DLL, 0xEB00000000726F6CLL, v10, v3, v7, v8, &unk_1D1E838F8, v4);
}

uint64_t sub_1D191BB74()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {

    v3 = sub_1D191BD4C;
  }

  else
  {
    v4 = *(v2 + 88);

    v3 = sub_1D191BCD4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D191BCD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D191BD4C()
{
  v1 = *(v0 + 128);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 56);
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);

    v6 = *(v0 + 24);
    sub_1D191EED4(v4, v3, type metadata accessor for ClusterPath);
    v7 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D191DEF4(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v9 = v8;
    v10 = v7[7];
    v11 = type metadata accessor for StaticEndpoint(0);
    (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
    *v9 = v6;
    sub_1D191EED4(v3, &v9[v7[5]], type metadata accessor for EndpointPath);
    LOBYTE(v10) = *(v3 + *(v5 + 20));
    v12 = v6;
    sub_1D191EF3C(v3, type metadata accessor for ClusterPath);
    v9[v7[6]] = v10;
    swift_willThrow();
  }

  v13 = *(v0 + 88);
  v14 = *(v0 + 72);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t StaticColorControlCluster.moveToColorTemperature(colorTemperature:expectedValues:)(__int16 a1, uint64_t *a2)
{
  *(v3 + 32) = v2;
  *(v3 + 136) = a1;
  *(v3 + 40) = type metadata accessor for ClusterPath(0);
  *(v3 + 48) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 56) = v5;
  *(v3 + 64) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D191C028, 0, 0);
}

uint64_t sub_1D191C028()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = [objc_allocWithZone(MEMORY[0x1E696F5F0]) init];
  v0[9] = v5;
  v6 = sub_1D1E692AC();
  [v5 setColorTemperatureMireds_];

  sub_1D1741B10(0, &qword_1EC646EF8, 0x1E696F590);
  sub_1D191EED4(v3, v1, type metadata accessor for ClusterPath);
  sub_1D191EF9C(v1, v2, type metadata accessor for EndpointPath);
  *(v2 + *(v4 + 20)) = 17;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1D191C188;
  v8 = v0[7];

  return sub_1D1A092C4(v8);
}

uint64_t sub_1D191C188(uint64_t a1)
{
  v2 = *(*v1 + 56);
  *(*v1 + 88) = a1;

  sub_1D191EF3C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D191C2BC, 0, 0);
}

uint64_t sub_1D191C2BC()
{
  v15 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v12 = MEMORY[0x1E69E7CC0];
  v13 = v1;
  sub_1D1A1456C(&v13, &v12);
  v3 = v12;
  v0[12] = v12;
  v4 = swift_allocObject();
  v0[13] = v4;
  *(v4 + 16) = v2;
  v5 = v2;
  v13 = 0xD00000000000001ALL;
  v14 = 0x80000001D1EBE3A0;
  v6 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  v7 = v13;
  v8 = v14;
  v0[14] = v14;
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_1D191B034;
  v10 = v0[11];

  return sub_1D1914C38(0xD000000000000016, 0x80000001D1EBE3E0, v10, v3, v7, v8, &unk_1D1E83908, v4);
}

uint64_t sub_1D191C444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D191C46C, 0, 0);
}

uint64_t sub_1D191C46C()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[23] = v2;
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D191C5E4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_157;
  v0[14] = v6;
  [v5 moveToHueAndSaturationWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D191C5E4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1D191F224;
  }

  else
  {
    v2 = sub_1D191F1FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D191C6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D191C71C, 0, 0);
}

uint64_t sub_1D191C71C()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[23] = v2;
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D191C5E4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_144;
  v0[14] = v6;
  [v5 enhancedMoveToHueAndSaturationWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D191C894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D191C8BC, 0, 0);
}

uint64_t sub_1D191C8BC()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[23] = v2;
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D191CA34;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_140;
  v0[14] = v6;
  [v5 moveToColorWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D191CA34()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_1D191CBBC;
  }

  else
  {
    v2 = sub_1D191CB44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D191CB44()
{
  v1 = v0[23];
  *(v0[18] + 24) = MEMORY[0x1E69E7CA8] + 8;

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D191CBBC(uint64_t a1)
{
  v2 = *(v1 + 184);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D191CC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D191CC54, 0, 0);
}

uint64_t sub_1D191CC54()
{
  v1 = v0[20];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[23] = v2;
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1D191C5E4;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_22;
  v0[14] = v6;
  [v5 moveToColorTemperatureWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D191CDD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4BFC;

  return StaticColorControlCluster.run(command:)(a1);
}

void static StaticColorControlCluster.Command.Template.moveToHueAndSaturation(_:_:)(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v3 = a2 * 254.0;
  if (v3 <= -1.0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 256.0)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = a3 * 254.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_10;
  }

  if (v4 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 < 256.0)
  {
    *a1 = v3 | (v4 << 8);
    *(a1 + 4) = 0;
    return;
  }

LABEL_12:
  __break(1u);
}

id StaticColorControlCluster.Command.Template.command(with:endpoint:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646F08, &unk_1D1E83910);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22[-1] - v6;
  v8 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(v2 + 4);
  sub_1D191EED4(a2, v10, type metadata accessor for StaticEndpoint);
  sub_1D191D31C(v7);
  v13 = type metadata accessor for StaticColorControlCluster(0);
  v14 = (*(*(v13 - 8) + 48))(v7, 1, v13);
  sub_1D1741A30(v7, &qword_1EC646F08, &unk_1D1E83910);
  if (v14 == 1)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_9;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      goto LABEL_8;
    }

LABEL_7:
    v11 = v11;
    goto LABEL_8;
  }

  if (!v12)
  {
    goto LABEL_7;
  }

  v11 &= 0xFFFFFFu;
LABEL_8:
  *(&v26 + 1) = &type metadata for StaticColorControlCluster.Command;
  v27 = sub_1D18FA3FC();
  LODWORD(v25) = v11;
  BYTE4(v25) = v12;
LABEL_9:
  sub_1D191EF3C(v10, type metadata accessor for StaticEndpoint);
  sub_1D191DD58(&v25, v22);
  v15 = v23;
  if (v23)
  {
    v16 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    v17 = a2 + *(v8 + 20);
    v18 = type metadata accessor for EndpointPath(0);
    v19 = MatterCommand.hm_matterCommand(for:endpointID:)(a1, *(v17 + *(v18 + 24)), v15, v16);
    sub_1D1741A30(&v25, &qword_1EC646A98, &unk_1D1E858B0);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    sub_1D1741A30(&v25, &qword_1EC646A98, &unk_1D1E858B0);
    sub_1D1741A30(v22, &qword_1EC646A98, &unk_1D1E858B0);
    return 0;
  }

  return v19;
}

unint64_t StaticColorControlCluster.Command.Template.matterCommand(endpoint:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646F08, &unk_1D1E83910);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = *v2;
  v9 = *(v2 + 4);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  MatterEndpoint.colorControlCluster.getter(v10, v11, v7);
  v12 = type metadata accessor for StaticColorControlCluster(0);
  LODWORD(v10) = (*(*(v12 - 8) + 48))(v7, 1, v12);
  result = sub_1D1741A30(v7, &qword_1EC646F08, &unk_1D1E83910);
  if (v10 == 1)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v14 = v8;
    if (v9 == 2)
    {
      v15 = v8;
    }

    else
    {
      v15 = v8;
    }

    if (v9)
    {
      v14 = v8 & 0xFFFFFF;
    }

    if (v9 <= 1)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    *(a2 + 24) = &type metadata for StaticColorControlCluster.Command;
    result = sub_1D18FA3FC();
    *(a2 + 32) = result;
    *a2 = v16;
    *(a2 + 4) = v9;
  }

  return result;
}

uint64_t sub_1D191D31C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticCluster(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(type metadata accessor for StaticEndpoint(0) + 36));
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  v8 = sub_1D171D278(17);
  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1D191EED4(*(v7 + 56) + *(v4 + 72) * v8, v6, type metadata accessor for StaticCluster);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1D191EF3C(v6, type metadata accessor for StaticCluster);
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  sub_1D191EF9C(v6, a1, type metadata accessor for StaticColorControlCluster);
  v10 = 0;
LABEL_7:
  v11 = type metadata accessor for StaticColorControlCluster(0);
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

uint64_t StaticColorControlCluster.Command.Template.hash(into:)()
{
  if (*(v0 + 4) > 1u)
  {
    if (*(v0 + 4) == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }

    return sub_1D1E6923C();
  }

  else
  {
    if (*(v0 + 4))
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D1E6922C();
    }

    return sub_1D1E6922C();
  }
}

uint64_t StaticColorControlCluster.Command.Template.hashValue.getter()
{
  v1 = *(v0 + 4);
  sub_1D1E6920C();
  if (v1 > 1)
  {
    if (v1 == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }

    sub_1D1E6923C();
  }

  else
  {
    if (v1)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D1E6922C();
    }

    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D191D658()
{
  if (*(v0 + 4) > 1u)
  {
    if (*(v0 + 4) == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }

    return sub_1D1E6923C();
  }

  else
  {
    if (*(v0 + 4))
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D1E6922C();
    }

    return sub_1D1E6922C();
  }
}

uint64_t sub_1D191D704(uint64_t a1)
{
  v2 = *(v1 + 4);
  sub_1D1E6920C();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }

    sub_1D1E6923C();
  }

  else
  {
    if (v2)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E6923C();
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D1E6922C();
    }

    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

BOOL sub_1D191D7E8(unsigned int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) <= 1u)
  {
    if (!*(a1 + 4))
    {
      if (!*(a2 + 4))
      {
        v5 = BYTE1(v2) == BYTE1(v3);
        return *a1 == v3 && v5;
      }

      return 0;
    }

    if (v4 != 1)
    {
      return 0;
    }

    v7 = *a1;
    v8 = BYTE2(v2) == BYTE2(v3);
    return v7 == v3 && v8;
  }

  if (*(a1 + 4) == 2)
  {
    if (v4 != 2)
    {
      return 0;
    }

    v7 = *a1;
    v8 = (v3 ^ v2) < 0x10000;
    return v7 == v3 && v8;
  }

  v9 = *a1 == v3;
  return v4 == 3 && v9;
}

unint64_t sub_1D191D894()
{
  result = qword_1EC646EA8;
  if (!qword_1EC646EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646EA8);
  }

  return result;
}

unint64_t sub_1D191D8E8()
{
  result = qword_1EC646EB0;
  if (!qword_1EC646EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646EB0);
  }

  return result;
}

unint64_t sub_1D191D93C()
{
  result = qword_1EC646EB8;
  if (!qword_1EC646EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646EB8);
  }

  return result;
}

unint64_t sub_1D191D990()
{
  result = qword_1EC646EC0;
  if (!qword_1EC646EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646EC0);
  }

  return result;
}

unint64_t sub_1D191D9E4()
{
  result = qword_1EC646EC8;
  if (!qword_1EC646EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646EC8);
  }

  return result;
}

uint64_t sub_1D191DA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D191C444(a1, a2, a3, a4, v10);
}

uint64_t sub_1D191DB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D191C6F4(a1, a2, a3, a4, v10);
}

uint64_t sub_1D191DBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D191C894(a1, a2, a3, a4, v10);
}

uint64_t sub_1D191DC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D191CC2C(a1, a2, a3, a4, v10);
}

uint64_t sub_1D191DD58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646A98, &unk_1D1E858B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D191DDC8(uint64_t a1)
{
  result = sub_1D191DDF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D191DDF0()
{
  result = qword_1EC646F10;
  if (!qword_1EC646F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F10);
  }

  return result;
}

unint64_t sub_1D191DE48()
{
  result = qword_1EC646F18;
  if (!qword_1EC646F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F18);
  }

  return result;
}

uint64_t sub_1D191DE9C(uint64_t a1)
{
  result = sub_1D191DEF4(&qword_1EC646F20, type metadata accessor for StaticColorControlCluster, &protocol conformance descriptor for StaticColorControlCluster);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D191DEF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D191DF3C(uint64_t a1)
{
  result = sub_1D191DF64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D191DF64()
{
  result = qword_1EC646F28;
  if (!qword_1EC646F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646F28);
  }

  return result;
}