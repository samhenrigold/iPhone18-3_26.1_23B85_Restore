Swift::Int AccessoryDetailsBasicInfo.chargingState.getter()
{
  v109 = type metadata accessor for StaticService(0);
  v118 = *(v109 - 8);
  v1 = MEMORY[0x1EEE9AC00](v109);
  v108 = v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v95 - v4;
  MEMORY[0x1EEE9AC00](v3);
  v7 = v95 - v6;
  v103 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v103);
  v104 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticClusterPowerSource(0);
  v112 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v98 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StaticCluster(0);
  v106 = *(v14 - 8);
  v107 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v105 = v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448C8, &qword_1D1E94060);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v102 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v117 = v95 - v19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
  v20 = MEMORY[0x1EEE9AC00](v116);
  v101 = v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v115 = v95 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v119 = v95 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v114 = v95 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v99 = v95 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v100 = v95 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v95 - v32;
  v34 = type metadata accessor for StaticMatterDevice(0);
  v35 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v95 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  AccessoryDetails.Payload.staticMatterDevice.getter(v33);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_1D1741A30(v33, &qword_1EC643650, &qword_1D1E71D40);
    v38 = v7;
    v39 = v108;
    goto LABEL_22;
  }

  v113 = v12;
  v95[1] = v9;
  v96 = v11;
  v97 = v0;
  v95[0] = v7;
  sub_1D182161C(v33, v37, type metadata accessor for StaticMatterDevice);
  v40 = *&v37[*(v34 + 56)];
  v41 = 1 << *(v40 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & *(v40 + 64);
  v44 = (v41 + 63) >> 6;
  v110 = (v112 + 7);
  v112 += 6;

  v46 = 0;
  v47 = v37;
  v111 = v37;
  if (!v43)
  {
LABEL_7:
    while (1)
    {
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v49 >= v44)
      {

        sub_1D18215BC(v47, type metadata accessor for StaticMatterDevice);
        v38 = v95[0];
        v39 = v108;
        v0 = v97;
        v11 = v96;
        goto LABEL_22;
      }

      v43 = *(v40 + 64 + 8 * v49);
      ++v46;
      if (v43)
      {
        v48 = v5;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
    return result;
  }

  while (1)
  {
    v48 = v5;
    v49 = v46;
LABEL_11:
    v50 = __clz(__rbit64(v43)) | (v49 << 6);
    v51 = *(v40 + 56);
    v52 = *(*(v40 + 48) + 2 * v50);
    v53 = (type metadata accessor for StaticEndpoint(0) - 8);
    v54 = v51 + *(*v53 + 72) * v50;
    v55 = v116;
    v56 = v114;
    sub_1D1821554(v54, &v114[*(v116 + 48)], type metadata accessor for StaticEndpoint);
    *v56 = v52;
    v57 = v119;
    sub_1D1820EE8(v56, v119);
    v58 = v57;
    v59 = v115;
    sub_1D1741C08(v58, v115, &qword_1EC6448D0, &qword_1D1E76600);
    v60 = v59 + *(v55 + 48);
    v61 = *(v60 + v53[11]);
    if (*(v61 + 16))
    {
      v62 = sub_1D171D278(2);
      v5 = v48;
      if (v63)
      {
        v64 = v105;
        sub_1D1821554(*(v61 + 56) + *(v106 + 72) * v62, v105, type metadata accessor for StaticCluster);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          sub_1D182161C(v64, v117, type metadata accessor for StaticClusterPowerSource);
          v65 = 0;
          goto LABEL_18;
        }

        sub_1D18215BC(v64, type metadata accessor for StaticCluster);
      }

      v65 = 1;
    }

    else
    {
      v65 = 1;
      v5 = v48;
    }

LABEL_18:
    v66 = v117;
    v67 = v113;
    (*v110)(v117, v65, 1, v113);
    sub_1D18215BC(v60, type metadata accessor for StaticEndpoint);
    v68 = *v112;
    v69 = (*v112)(v66, 1, v67);
    sub_1D1741A30(v66, &qword_1EC6448C8, &qword_1D1E94060);
    if (v69 != 1)
    {
      break;
    }

    v43 &= v43 - 1;
    result = sub_1D1741A30(v119, &qword_1EC6448D0, &qword_1D1E76600);
    v46 = v49;
    v47 = v111;
    if (!v43)
    {
      goto LABEL_7;
    }
  }

  v83 = v99;
  sub_1D1820EE8(v119, v99);
  v84 = v100;
  sub_1D1820EE8(v83, v100);
  v85 = v101;
  sub_1D1741C08(v84, v101, &qword_1EC6448D0, &qword_1D1E76600);
  v86 = *(v116 + 48);
  v87 = v102;
  sub_1D181BD6C(v102);
  sub_1D1741A30(v84, &qword_1EC6448D0, &qword_1D1E76600);
  sub_1D18215BC(v111, type metadata accessor for StaticMatterDevice);
  v88 = v113;
  v89 = v68(v87, 1, v113);
  v0 = v97;
  v11 = v96;
  if (v89 == 1)
  {
    sub_1D1741A30(v87, &qword_1EC6448C8, &qword_1D1E94060);
    sub_1D18215BC(v85 + v86, type metadata accessor for StaticEndpoint);
    v38 = v95[0];
    v39 = v108;
LABEL_22:
    sub_1D1821554(v0, v11, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v71 = v109;
    if (EnumCaseMultiPayload > 1)
    {
      v79 = type metadata accessor for AccessoryDetails.Payload;
      v80 = v11;
      goto LABEL_31;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1D182161C(v11, v39, type metadata accessor for StaticService);
      v121 = *(v39 + *(v71 + 128));
      v120 = 24;
      v123 = StaticCharacteristicsBag.int(for:)(&v120);
      if (v123.is_nil)
      {
        value = 2;
      }

      else
      {
        value = v123.value;
      }

      v82 = v39;
LABEL_36:
      sub_1D18215BC(v82, type metadata accessor for StaticService);
      return value;
    }

    else
    {
      v72 = v11;
      v73 = v104;
      v74 = sub_1D182161C(v72, v104, type metadata accessor for StaticAccessory);
      MEMORY[0x1EEE9AC00](v74);
      v95[-2] = v73;
      result = sub_1D17868B8(sub_1D1823318, &v95[-4], v75);
      v76 = result;
      v77 = *(result + 16);
      if (v77)
      {
        v78 = 0;
        while (v78 < *(v76 + 16))
        {
          sub_1D1821554(v76 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v78, v5, type metadata accessor for StaticService);
          v121 = *&v5[*(v71 + 128)];
          v120 = 24;
          v122 = StaticCharacteristicsBag.int(for:)(&v120);
          if (!v122.is_nil)
          {

            sub_1D182161C(v5, v38, type metadata accessor for StaticService);
            v121 = *(v38 + *(v71 + 128));
            v120 = 24;
            v124 = StaticCharacteristicsBag.int(for:)(&v120);
            if (v124.is_nil)
            {
              sub_1D18215BC(v104, type metadata accessor for StaticAccessory);
              v79 = type metadata accessor for StaticService;
              v80 = v38;
              goto LABEL_31;
            }

            value = v124.value;
            sub_1D18215BC(v104, type metadata accessor for StaticAccessory);
            v82 = v38;
            goto LABEL_36;
          }

          ++v78;
          result = sub_1D18215BC(v5, type metadata accessor for StaticService);
          if (v77 == v78)
          {
            goto LABEL_29;
          }
        }

        goto LABEL_44;
      }

LABEL_29:

      v79 = type metadata accessor for StaticAccessory;
      v80 = v104;
LABEL_31:
      sub_1D18215BC(v80, v79);
      return 2;
    }
  }

  else
  {
    v90 = v87;
    v91 = v98;
    sub_1D182161C(v90, v98, type metadata accessor for StaticClusterPowerSource);
    sub_1D18215BC(v85 + v86, type metadata accessor for StaticEndpoint);
    v92 = (v91 + *(v88 + 48));
    v93 = *v92;
    v94 = v92[1];
    sub_1D18215BC(v91, type metadata accessor for StaticClusterPowerSource);
    return (v93 == 1) & ~v94;
  }
}

uint64_t AccessoryDetailsBasicInfo.defaultIcon.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v1, v4, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = type metadata accessor for StaticServiceGroup(0);
      v6 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
      v7 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      v21 = type metadata accessor for StaticEndpoint(0);
      v6 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
      v7 = type metadata accessor for StaticEndpoint;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v21 = type metadata accessor for StaticService(0);
    v6 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    v7 = type metadata accessor for StaticService;
  }

  else
  {
    v21 = type metadata accessor for StaticAccessory(0);
    v6 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    v7 = type metadata accessor for StaticAccessory;
  }

  v8 = v7;
  v22 = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_1D182161C(v4, boxed_opaque_existential_1, v8);
  v10 = v21;
  v11 = v22;
  __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v11 + 80))(&v17, v10, v11);
  v14 = v17;
  v15 = v18;
  v16 = v19;
  StatusIcon.defaultIconSymbol()();
  sub_1D1820F58(v14, v15);

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t AccessoryDetailsBasicInfo.temperatureStringIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for StaticService(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - v7;
  v8 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v38 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v38 - v20);
  v22 = *(v4 + 48);
  if (v22(v21, 1, v3) == 1)
  {
    sub_1D1741A30(v21, &qword_1EC6436F0, &qword_1D1E99BC0);
    v23 = 0;
  }

  else
  {
    v23 = v21[*(v3 + 104)];
    sub_1D18215BC(v21, type metadata accessor for StaticService);
  }

  v44[2] = v23;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v24)
  {
LABEL_6:

    goto LABEL_8;
  }

  v25 = sub_1D1E6904C();

  if ((v25 & 1) == 0)
  {
    AccessoryDetailsBasicInfo.primaryStaticService.getter(v19);
    if (v22(v19, 1, v3) == 1)
    {
      sub_1D1741A30(v19, &qword_1EC6436F0, &qword_1D1E99BC0);
      v33 = 0;
    }

    else
    {
      v33 = v19[*(v3 + 104)];
      sub_1D18215BC(v19, type metadata accessor for StaticService);
    }

    v44[1] = v33;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3070 == v35)
    {
      goto LABEL_6;
    }

    v36 = sub_1D1E6904C();

    if ((v36 & 1) == 0)
    {
      v37 = v42;
      *v42 = 0;
      v37[1] = 0;
      v37[2] = 0;
      return result;
    }
  }

LABEL_8:
  sub_1D1821554(v2, v12, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v30 = v41;
    sub_1D182161C(v12, v41, type metadata accessor for StaticService);
    v31 = v39;
    sub_1D1821554(v30, v39, type metadata accessor for StaticService);
    v44[0] = 0;
    sub_1D18F211C(v31, v44, v42);
    return sub_1D18215BC(v30, type metadata accessor for StaticService);
  }

  else if (EnumCaseMultiPayload)
  {
    v32 = v42;
    *v42 = 0;
    v32[1] = 0;
    v32[2] = 0;
    return sub_1D18215BC(v12, type metadata accessor for AccessoryDetails.Payload);
  }

  else
  {
    v27 = v40;
    sub_1D182161C(v12, v40, type metadata accessor for StaticAccessory);
    StaticAccessory.primaryStaticService.getter(v16);
    if (v22(v16, 1, v3) == 1)
    {
      sub_1D18215BC(v27, type metadata accessor for StaticAccessory);
      result = sub_1D1741A30(v16, &qword_1EC6436F0, &qword_1D1E99BC0);
      v29 = v42;
      v42[1] = 0;
      v29[2] = 0;
      *v29 = 0;
    }

    else
    {
      v34 = v41;
      sub_1D1821554(v16, v41, type metadata accessor for StaticService);
      v43 = 1;
      sub_1D18F211C(v34, &v43, v42);
      sub_1D18215BC(v27, type metadata accessor for StaticAccessory);
      return sub_1D18215BC(v16, type metadata accessor for StaticService);
    }
  }

  return result;
}

uint64_t AccessoryDetailsBasicInfo.iconSymbol.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StaticMatterDevice(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - v9;
  v11 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessoryDetails.Payload(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  result = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v21 = *(v2 + *(result + 40));
  if (v21 != 92)
  {
    *a1 = v21;
    return result;
  }

  sub_1D1821554(v2, v19, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v38 = v5;
  v39 = a1;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *(&v42 + 1) = type metadata accessor for StaticServiceGroup(0);
      v23 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
      v24 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      *(&v42 + 1) = type metadata accessor for StaticEndpoint(0);
      v23 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
      v24 = type metadata accessor for StaticEndpoint;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    *(&v42 + 1) = type metadata accessor for StaticService(0);
    v23 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    v24 = type metadata accessor for StaticService;
  }

  else
  {
    *(&v42 + 1) = v11;
    v23 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    v24 = type metadata accessor for StaticAccessory;
  }

  v25 = v24;
  v43 = v23;
  v26 = __swift_allocate_boxed_opaque_existential_1(&v40);
  sub_1D182161C(v19, v26, v25);
  v28 = *(&v42 + 1);
  v27 = v43;
  __swift_project_boxed_opaque_existential_1(&v40, *(&v42 + 1));
  (*(v27 + 80))(&v44, v28, v27);
  __swift_destroy_boxed_opaque_existential_1(&v40);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v29 = qword_1EE07DC60;
  swift_getKeyPath();
  v40 = v29;
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v30 = v29 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  v31 = *(v30 + *(type metadata accessor for MatterStateSnapshot(0) + 24));
  sub_1D1821554(v2, v17, type metadata accessor for AccessoryDetails.Payload);
  if (swift_getEnumCaseMultiPayload())
  {
    v32 = type metadata accessor for AccessoryDetails.Payload;
    v33 = v17;
  }

  else
  {
    sub_1D182161C(v17, v13, type metadata accessor for StaticAccessory);
    v34 = &v13[*(v11 + 144)];
    if (v34[8] != 1)
    {
      if (*(v31 + 16))
      {
        v35 = sub_1D17420B0(*v34);
        if (v36)
        {
          sub_1D1821554(*(v31 + 56) + *(v38 + 72) * v35, v8, type metadata accessor for StaticMatterDevice);
          sub_1D1820F58(v44, v45);

          sub_1D182161C(v8, v10, type metadata accessor for StaticMatterDevice);
          StaticMatterDevice.statusIcon.getter(&v40);
          sub_1D18215BC(v10, type metadata accessor for StaticMatterDevice);
          sub_1D18215BC(v13, type metadata accessor for StaticAccessory);
          v44 = v40;
          v45 = v41;
          v46 = v42;
          goto LABEL_20;
        }
      }
    }

    v32 = type metadata accessor for StaticAccessory;
    v33 = v13;
  }

  sub_1D18215BC(v33, v32);
LABEL_20:
  v37 = HIBYTE(v45);
  if (HIBYTE(v45) == 92)
  {
    v40 = v44;
    LOBYTE(v41) = v45;
    HIBYTE(v41) = 92;
    v42 = v46;
    StatusIcon.defaultIconSymbol()();
    sub_1D1820F58(v40, v41);
  }

  else
  {
    sub_1D1820F58(v44, v45);

    *v39 = v37;
  }

  return result;
}

uint64_t AccessoryDetailsBasicInfo.iconSymbol.setter(char *a1)
{
  v2 = *a1;
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F440);
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    v8 = IconSymbol.rawValue.getter();
    v10 = sub_1D1B1312C(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Write %s to dataModel icon", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  result = type metadata accessor for AccessoryDetailsBasicInfo(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t (*AccessoryDetailsBasicInfo.iconSymbol.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  AccessoryDetailsBasicInfo.iconSymbol.getter((a1 + 8));
  return sub_1D181DC20;
}

uint64_t sub_1D181DC20(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  else
  {
    v5 = *(a1 + 8);
    v2 = &v5;
  }

  return AccessoryDetailsBasicInfo.iconSymbol.setter(v2);
}

void *AccessoryDetailsBasicInfo.symbolSet.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticServiceGroup(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v50 - v10;
  v12 = type metadata accessor for StaticService(0);
  v55 = *(v12 - 8);
  v56 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v52 = &v50 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v50 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - v20;
  v22 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v1, v27, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D182161C(v27, v19, type metadata accessor for StaticService);
      if (v19[*(v56 + 104)] == 30)
      {
        v41 = &unk_1F4D621F0;
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
      }

      v42 = type metadata accessor for StaticService;
      v43 = v19;
    }

    else
    {
      sub_1D182161C(v27, v24, type metadata accessor for StaticAccessory);
      StaticAccessory.primaryStaticService.getter(v11);
      v29 = v56;
      if ((*(v55 + 48))(v11, 1, v56) == 1)
      {
        sub_1D1741A30(v11, &qword_1EC6436F0, &qword_1D1E99BC0);
        v30 = type metadata accessor for StaticAccessory;
        v31 = v24;
LABEL_29:
        sub_1D18215BC(v31, v30);
        return MEMORY[0x1E69E7CC0];
      }

      sub_1D182161C(v11, v21, type metadata accessor for StaticService);
      if (v21[*(v29 + 104)] == 30)
      {
        v41 = &unk_1F4D621C8;
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
      }

      sub_1D18215BC(v21, type metadata accessor for StaticService);
      v42 = type metadata accessor for StaticAccessory;
      v43 = v24;
    }

LABEL_38:
    sub_1D18215BC(v43, v42);
    return v41;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v44 = v53;
    sub_1D182161C(v27, v53, type metadata accessor for StaticEndpoint);
    static MatterDeviceType.primaryDeviceType(for:)(*(v44 + *(v2 + 32)), &v57);
    v45 = v57;
    if (v57 == 28)
    {
      v30 = type metadata accessor for StaticEndpoint;
      v31 = v44;
      goto LABEL_29;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D8, &qword_1D1E76630);
    v46 = swift_allocObject();
    v41 = v46;
    *(v46 + 16) = xmmword_1D1E739C0;
    if (v45 > 20)
    {
      if ((v45 - 21) < 2)
      {
        v47 = 19;
        goto LABEL_37;
      }

      if (v45 == 23)
      {
        v47 = 53;
        goto LABEL_37;
      }

      if (v45 == 27)
      {
        v47 = 77;
        goto LABEL_37;
      }
    }

    else if ((v45 - 4) < 4)
    {
      v47 = 31;
LABEL_37:
      *(v46 + 32) = v47;
      v42 = type metadata accessor for StaticEndpoint;
      v43 = v44;
      goto LABEL_38;
    }

    v47 = 91;
    goto LABEL_37;
  }

  v32 = v27;
  v33 = v54;
  sub_1D182161C(v32, v54, type metadata accessor for StaticServiceGroup);
  sub_1D1821554(v33, v7, type metadata accessor for StaticServiceGroup);
  v34 = *&v7[*(v4 + 56)];
  v35 = v34[2];
  v36 = MEMORY[0x1E69E7CC0];
  if (!v35)
  {
    v37 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v37 = sub_1D18042C8(v34[2], 0);
  v38 = sub_1D1804A58(&v57, v37 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v35, v34);
  v39 = v57;

  result = sub_1D1716918(v39);
  if (v38 == v35)
  {
    v36 = MEMORY[0x1E69E7CC0];
LABEL_23:
    sub_1D18215BC(v7, type metadata accessor for StaticServiceGroup);
    if (!v37[2])
    {

      v30 = type metadata accessor for StaticServiceGroup;
      v31 = v54;
      goto LABEL_29;
    }

    v48 = v51;
    sub_1D1821554(v37 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v51, type metadata accessor for StaticService);

    v49 = v52;
    sub_1D182161C(v48, v52, type metadata accessor for StaticService);
    if (*(v49 + *(v56 + 104)) == 30)
    {
      v41 = &unk_1F4D62218;
    }

    else
    {
      v41 = v36;
    }

    sub_1D18215BC(v49, type metadata accessor for StaticService);
    v42 = type metadata accessor for StaticServiceGroup;
    v43 = v54;
    goto LABEL_38;
  }

  __break(1u);
  return result;
}

uint64_t AccessoryDetailsBasicInfo.primaryStaticService.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = AccessoryDetailsBasicInfo.staticServices.getter();
  v10 = v9;
  v11 = v9 + 56;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 56);
  v15 = (v12 + 63) >> 6;

  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_8:
      sub_1D1821554(*(v10 + 48) + *(v3 + 72) * (__clz(__rbit64(v14)) | (v18 << 6)), v8, type metadata accessor for StaticService);
      sub_1D182161C(v8, v6, type metadata accessor for StaticService);
      if (v6[*(v2 + 24)] == 1)
      {
        break;
      }

      v14 &= v14 - 1;
      result = sub_1D18215BC(v6, type metadata accessor for StaticService);
      v17 = v18;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    sub_1D182161C(v6, a1, type metadata accessor for StaticService);
    (*(v3 + 56))(a1, 0, 1, v2);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        (*(v3 + 56))(a1, 1, 1, v2);
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t AccessoryDetailsBasicInfo.staticServices.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StaticServiceGroup(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v32 - v6;
  v8 = type metadata accessor for StaticService(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v1, v17, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = sub_1D182161C(v17, v14, type metadata accessor for StaticAccessory);
      MEMORY[0x1EEE9AC00](v19);
      *(&v32 - 2) = v14;
      v21 = sub_1D17868B8(sub_1D1823318, (&v32 - 4), v20);
      v22 = sub_1D1785078(v21);

      v23 = type metadata accessor for StaticAccessory;
      v24 = v14;
LABEL_13:
      sub_1D18215BC(v24, v23);
      return v22;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D182161C(v17, v7, type metadata accessor for StaticServiceGroup);
    sub_1D1821554(v7, v5, type metadata accessor for StaticServiceGroup);
    v25 = *&v5[*(v2 + 56)];
    v26 = v25[2];
    if (v26)
    {
      v11 = sub_1D18042C8(v25[2], 0);
      v33 = sub_1D1804A58(v34, v11 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v26, v25);
      v27 = v34[0];
      v17 = v34[2];
      v9 = v34[4];

      sub_1D1716918(v27);
      if (v33 != v26)
      {
        __break(1u);
LABEL_8:
        sub_1D182161C(v17, v11, type metadata accessor for StaticService);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643258, &qword_1D1E716B0);
        v28 = (*(v9 + 80) + 32) & ~*(v9 + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1D1E739C0;
        sub_1D1821554(v11, v29 + v28, type metadata accessor for StaticService);
        v22 = sub_1D179CB38(v29);
        swift_setDeallocating();
        v30 = type metadata accessor for StaticService;
        sub_1D18215BC(v29 + v28, type metadata accessor for StaticService);
        swift_deallocClassInstance();
        v24 = v11;
LABEL_12:
        v23 = v30;
        goto LABEL_13;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    v30 = type metadata accessor for StaticServiceGroup;
    sub_1D18215BC(v5, type metadata accessor for StaticServiceGroup);
    v22 = sub_1D1785078(v11);

    v24 = v7;
    goto LABEL_12;
  }

  sub_1D18215BC(v17, type metadata accessor for AccessoryDetails.Payload);
  return MEMORY[0x1E69E7CD0];
}

uint64_t AccessoryDetailsBasicInfo.primaryServiceId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  AccessoryDetailsBasicInfo.primaryStaticService.getter(v4);
  v8 = type metadata accessor for StaticService(0);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC6436F0, &qword_1D1E99BC0);
    v9 = sub_1D1E66A7C();
    v10 = *(v9 - 8);
    (*(v10 + 56))(v7, 1, 1, v9);
    sub_1D1E66A6C();
    result = (*(v10 + 48))(v7, 1, v9);
    if (result != 1)
    {
      return sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    v12 = sub_1D1E66A7C();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v7, v4, v12);
    sub_1D18215BC(v4, type metadata accessor for StaticService);
    (*(v13 + 56))(v7, 0, 1, v12);
    return (*(v13 + 32))(a1, v7, v12);
  }

  return result;
}

uint64_t AccessoryDetailsBasicInfo.displayAsServiceKind.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v8 - v3);
  v5 = type metadata accessor for StaticService(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    result = sub_1D1741A30(v4, &qword_1EC6436F0, &qword_1D1E99BC0);
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = v4[*(v5 + 112)];
    if (v7 == 53)
    {
      LOBYTE(v7) = v4[*(v5 + 104)];
    }

    result = sub_1D18215BC(v4, type metadata accessor for StaticService);
  }

  *a1 = v7;
  return result;
}

uint64_t AccessoryDetailsBasicInfo.foregroundColor.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4];
  v6 = type metadata accessor for StaticMatterDevice(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AccessoryDetails.Payload.staticMatterDevice.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D1741A30(v5, &qword_1EC643650, &qword_1D1E71D40);
    AccessoryDetailsBasicInfo.primaryStaticService.getter(v2);
    v10 = type metadata accessor for StaticService(0);
    if ((*(*(v10 - 8) + 48))(v2, 1, v10) == 1)
    {
      sub_1D1741A30(v2, &qword_1EC6436F0, &qword_1D1E99BC0);
      LOBYTE(v11) = 0;
    }

    else
    {
      v11 = v2[*(v10 + 112)];
      if (v11 == 53)
      {
        LOBYTE(v11) = v2[*(v10 + 104)];
      }

      sub_1D18215BC(v2, type metadata accessor for StaticService);
    }

    v15[0] = v11;
    return ServiceKind.foregroundColor.getter();
  }

  else
  {
    sub_1D182161C(v5, v9, type metadata accessor for StaticMatterDevice);
    static MatterDeviceType.primaryDeviceType(for:)(*&v9[*(v6 + 32)], v15);
    if (v15[0] == 28)
    {
      if (qword_1EC642158 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v12 = qword_1EC644938;
    }

    else
    {
      v14[7] = v15[0];
      v12 = MatterDeviceType.foregroundColor.getter();
    }

    sub_1D18215BC(v9, type metadata accessor for StaticMatterDevice);
    return v12;
  }
}

BOOL AccessoryDetailsBasicInfo.canBeToggled.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v6 - v1);
  v3 = type metadata accessor for StaticService(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    sub_1D1741A30(v2, &qword_1EC6436F0, &qword_1D1E99BC0);
    return 0;
  }

  else
  {
    v4 = StaticService.canBeToggled.getter();
    sub_1D18215BC(v2, type metadata accessor for StaticService);
  }

  return v4;
}

id sub_1D181F24C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v4 = *(v3 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentHome);
  *a2 = v4;

  return v4;
}

void sub_1D181F30C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D1DE83C0(v1);
}

uint64_t sub_1D181F33C(uint64_t *a1)
{
  v2 = *(type metadata accessor for StaticRoom(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0C030(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D181F3E4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D181F3E4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for StaticRoom(0);
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for StaticRoom(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D181F7B8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D181F510(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D181F510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for StaticRoom(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v39 = v18;
    v33 = v19;
    v23 = v18 + v19 * a3;
LABEL_6:
    v37 = v20;
    v38 = a3;
    v35 = v23;
    v36 = v22;
    while (1)
    {
      sub_1D1821554(v23, v17, type metadata accessor for StaticRoom);
      sub_1D1821554(v20, v13, type metadata accessor for StaticRoom);
      v24 = *(v8 + 20);
      v25 = *&v17[v24];
      v26 = *&v17[v24 + 8];
      v27 = &v13[v24];
      if (v25 == *v27 && v26 == *(v27 + 1))
      {
        sub_1D18215BC(v13, type metadata accessor for StaticRoom);
        result = sub_1D18215BC(v17, type metadata accessor for StaticRoom);
LABEL_5:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v22 = v36 - 1;
        v23 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_1D1E6904C();
      sub_1D18215BC(v13, type metadata accessor for StaticRoom);
      result = sub_1D18215BC(v17, type metadata accessor for StaticRoom);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v30 = v40;
      sub_1D182161C(v23, v40, type metadata accessor for StaticRoom);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D182161C(v30, v20, type metadata accessor for StaticRoom);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D181F7B8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v132 = a1;
  v8 = type metadata accessor for StaticRoom(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v137 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v144 = &v125 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v145 = &v125 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v143 = &v125 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v142 = (&v125 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v131 = &v125 - v22;
  result = MEMORY[0x1EEE9AC00](v21);
  v130 = &v125 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v29 = *v132;
    if (!*v132)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_143:
      result = sub_1D1E0BE44(v28);
      v28 = result;
    }

    v148 = v28;
    v120 = *(v28 + 16);
    if (v120 >= 2)
    {
      while (*a3)
      {
        v121 = *(v28 + 16 * v120);
        v122 = v28;
        v123 = *(v28 + 16 * (v120 - 1) + 32);
        v28 = *(v28 + 16 * (v120 - 1) + 40);
        sub_1D182024C(*a3 + *(v9 + 72) * v121, *a3 + *(v9 + 72) * v123, *a3 + *(v9 + 72) * v28, v29);
        if (v5)
        {
        }

        if (v28 < v121)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_1D1E0BE44(v122);
        }

        if (v120 - 2 >= *(v122 + 2))
        {
          goto LABEL_137;
        }

        v124 = &v122[16 * v120];
        *v124 = v121;
        *(v124 + 1) = v28;
        v148 = v122;
        result = sub_1D1E0BDB8(v120 - 1);
        v28 = v148;
        v120 = *(v148 + 16);
        if (v120 <= 1)
        {
        }
      }

      goto LABEL_147;
    }
  }

  v146 = v24;
  v126 = a4;
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  v134 = a3;
  v127 = v9;
  v147 = v8;
  while (1)
  {
    v29 = v27 + 1;
    if (v27 + 1 >= v26)
    {
      goto LABEL_37;
    }

    v138 = v26;
    a3 = *a3;
    v30 = *(v9 + 72);
    v140 = v27 + 1;
    v31 = v130;
    sub_1D1821554(a3 + v30 * v29, v130, type metadata accessor for StaticRoom);
    v133 = v27;
    v141 = v30;
    v29 = v131;
    sub_1D1821554(a3 + v30 * v27, v131, type metadata accessor for StaticRoom);
    v32 = *(v8 + 20);
    v33 = *(v31 + v32);
    v34 = *(v31 + v32 + 8);
    v35 = (v29 + v32);
    v36 = v33 == *v35 && v34 == v35[1];
    v129 = v5;
    LODWORD(v139) = v36 ? 0 : sub_1D1E6904C();
    v128 = v28;
    sub_1D18215BC(v131, type metadata accessor for StaticRoom);
    result = sub_1D18215BC(v130, type metadata accessor for StaticRoom);
    v37 = v133 + 2;
    v38 = v140;
    v39 = v141 * (v133 + 2);
    v40 = a3 + v39;
    v41 = v141 * v140;
    v42 = a3 + v141 * v140;
    do
    {
      v9 = v37;
      v28 = v38;
      v44 = v41;
      v5 = v39;
      if (v37 >= v138)
      {
        break;
      }

      a3 = v142;
      sub_1D1821554(v40, v142, type metadata accessor for StaticRoom);
      v45 = v143;
      sub_1D1821554(v42, v143, type metadata accessor for StaticRoom);
      v46 = *(v147 + 20);
      v47 = *(a3 + v46);
      v48 = *(a3 + v46 + 8);
      v49 = (v45 + v46);
      v50 = v47 == *v49 && v48 == v49[1];
      v43 = v50 ? 0 : sub_1D1E6904C();
      v29 = type metadata accessor for StaticRoom;
      sub_1D18215BC(v143, type metadata accessor for StaticRoom);
      result = sub_1D18215BC(v142, type metadata accessor for StaticRoom);
      v37 = v9 + 1;
      v40 += v141;
      v42 += v141;
      v38 = v28 + 1;
      v41 = v44 + v141;
      v39 = v5 + v141;
    }

    while (((v139 ^ v43) & 1) == 0);
    if (v139)
    {
      v51 = v133;
      if (v9 < v133)
      {
        goto LABEL_140;
      }

      if (v133 >= v9)
      {
        v29 = v9;
        v28 = v128;
        v5 = v129;
        a3 = v134;
        v9 = v127;
        v8 = v147;
        v27 = v133;
        goto LABEL_37;
      }

      v52 = v133 * v141;
      v8 = v147;
      do
      {
        if (v51 != v28)
        {
          v54 = *v134;
          if (!*v134)
          {
            goto LABEL_146;
          }

          sub_1D182161C(v54 + v52, v137, type metadata accessor for StaticRoom);
          if (v52 < v44 || v54 + v52 >= (v54 + v5))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v52 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1D182161C(v137, v54 + v44, type metadata accessor for StaticRoom);
          v8 = v147;
        }

        ++v51;
        v44 -= v141;
        v5 -= v141;
        v52 += v141;
      }

      while (v51 < v28--);
      v29 = v9;
      v28 = v128;
      v5 = v129;
      a3 = v134;
      v9 = v127;
    }

    else
    {
      v29 = v9;
      v28 = v128;
      v5 = v129;
      a3 = v134;
      v9 = v127;
      v8 = v147;
    }

    v27 = v133;
LABEL_37:
    v55 = a3[1];
    if (v29 < v55)
    {
      if (__OFSUB__(v29, v27))
      {
        goto LABEL_139;
      }

      if (v29 - v27 < v126)
      {
        v56 = v27 + v126;
        if (__OFADD__(v27, v126))
        {
          goto LABEL_141;
        }

        if (v56 >= v55)
        {
          v56 = a3[1];
        }

        if (v56 < v27)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v29 != v56)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v29 < v27)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
    }

    v75 = *(v28 + 16);
    v74 = *(v28 + 24);
    v76 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      result = sub_1D177D070((v74 > 1), v75 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 16) = v76;
    v77 = v28 + 16 * v75;
    *(v77 + 32) = v27;
    *(v77 + 40) = v29;
    v140 = v29;
    v29 = *v132;
    if (!*v132)
    {
      goto LABEL_148;
    }

    if (v75)
    {
      while (1)
      {
        v78 = v76 - 1;
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v79 = *(v28 + 32);
          v80 = *(v28 + 40);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_80:
          if (v82)
          {
            goto LABEL_127;
          }

          v95 = (v28 + 16 * v76);
          v97 = *v95;
          v96 = v95[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_130;
          }

          v101 = (v28 + 32 + 16 * v78);
          v103 = *v101;
          v102 = v101[1];
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_134;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              v78 = v76 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v105 = (v28 + 16 * v76);
        v107 = *v105;
        v106 = v105[1];
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_94:
        if (v100)
        {
          goto LABEL_129;
        }

        v108 = v28 + 16 * v78;
        v110 = *(v108 + 32);
        v109 = *(v108 + 40);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_132;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_101:
        v116 = v78 - 1;
        if (v78 - 1 >= v76)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v117 = *(v28 + 32 + 16 * v116);
        v118 = *(v28 + 32 + 16 * v78 + 8);
        sub_1D182024C(*a3 + *(v9 + 72) * v117, *a3 + *(v9 + 72) * *(v28 + 32 + 16 * v78), *a3 + *(v9 + 72) * v118, v29);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1D1E0BE44(v28);
        }

        if (v116 >= *(v28 + 16))
        {
          goto LABEL_124;
        }

        v119 = v28 + 16 * v116;
        *(v119 + 32) = v117;
        *(v119 + 40) = v118;
        v148 = v28;
        result = sub_1D1E0BDB8(v78);
        v28 = v148;
        v76 = *(v148 + 16);
        if (v76 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = v28 + 32 + 16 * v76;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_125;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_126;
      }

      v90 = (v28 + 16 * v76);
      v92 = *v90;
      v91 = v90[1];
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_128;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_131;
      }

      if (v94 >= v86)
      {
        v112 = (v28 + 32 + 16 * v78);
        v114 = *v112;
        v113 = v112[1];
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_135;
        }

        if (v81 < v115)
        {
          v78 = v76 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v26 = a3[1];
    v27 = v140;
    v8 = v147;
    if (v140 >= v26)
    {
      goto LABEL_111;
    }
  }

  v128 = v28;
  v129 = v5;
  v57 = *a3;
  v58 = *(v9 + 72);
  v59 = *a3 + v58 * (v29 - 1);
  v60 = -v58;
  v133 = v27;
  v61 = v27 - v29;
  v135 = v58;
  v136 = v56;
  v62 = v57 + v29 * v58;
  v63 = v145;
  while (2)
  {
    v139 = v61;
    v140 = v29;
    v138 = v62;
    v64 = v62;
    v141 = v59;
LABEL_49:
    v65 = v146;
    sub_1D1821554(v64, v146, type metadata accessor for StaticRoom);
    sub_1D1821554(v59, v63, type metadata accessor for StaticRoom);
    v66 = *(v8 + 20);
    v67 = *(v65 + v66);
    v68 = *(v65 + v66 + 8);
    v69 = (v63 + v66);
    if (v67 == *v69 && v68 == v69[1])
    {
      sub_1D18215BC(v63, type metadata accessor for StaticRoom);
      sub_1D18215BC(v65, type metadata accessor for StaticRoom);
LABEL_47:
      v29 = v140 + 1;
      v59 = v141 + v135;
      v61 = v139 - 1;
      v62 = (v138 + v135);
      if (v140 + 1 != v136)
      {
        continue;
      }

      v29 = v136;
      v28 = v128;
      v5 = v129;
      v27 = v133;
      a3 = v134;
      v9 = v127;
      goto LABEL_60;
    }

    break;
  }

  v71 = sub_1D1E6904C();
  sub_1D18215BC(v63, type metadata accessor for StaticRoom);
  result = sub_1D18215BC(v65, type metadata accessor for StaticRoom);
  if ((v71 & 1) == 0)
  {
    v8 = v147;
    goto LABEL_47;
  }

  v8 = v147;
  if (v57)
  {
    v72 = v144;
    sub_1D182161C(v64, v144, type metadata accessor for StaticRoom);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D182161C(v72, v59, type metadata accessor for StaticRoom);
    v59 += v60;
    v64 += v60;
    v73 = __CFADD__(v61++, 1);
    v63 = v145;
    if (v73)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_1D182024C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = a4;
  v56 = type metadata accessor for StaticRoom(0);
  v7 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v49 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v20 = (a2 - a1) / v18;
  v60 = a1;
  v59 = v57;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (v57 < a2 || a2 + v22 <= v57)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v57 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = v57 + v22;
    if (v22 >= 1)
    {
      v33 = -v18;
      v34 = v57 + v22;
      do
      {
        v50 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v52 = v35;
        v53 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v60 = v35;
            v58 = v50;
            goto LABEL_69;
          }

          v37 = a3;
          v51 = v32;
          v38 = v33;
          v39 = v34 + v33;
          v40 = v34 + v33;
          v41 = v54;
          sub_1D1821554(v40, v54, type metadata accessor for StaticRoom);
          v42 = v55;
          sub_1D1821554(v36, v55, type metadata accessor for StaticRoom);
          v43 = *(v56 + 20);
          v44 = *(v41 + v43);
          v45 = *(v41 + v43 + 8);
          v46 = (v42 + v43);
          v47 = v44 == *v46 && v45 == v46[1];
          v48 = v47 ? 0 : sub_1D1E6904C();
          v33 = v38;
          a3 = v37 + v38;
          sub_1D18215BC(v55, type metadata accessor for StaticRoom);
          sub_1D18215BC(v54, type metadata accessor for StaticRoom);
          if (v48)
          {
            break;
          }

          v32 = v39;
          v36 = v53;
          if (v37 < v34 || a3 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v37 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v34 = v39;
          v35 = v52;
          if (v39 <= v57)
          {
            a2 = v52;
            goto LABEL_68;
          }
        }

        a2 = v53;
        if (v37 < v52 || a3 >= v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          v32 = v51;
        }

        else
        {
          v32 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v57);
    }

LABEL_68:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v21 = v20 * v18;
    if (v57 < a1 || a1 + v21 <= v57)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v57 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v57 + v21;
    v58 = v57 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      while (1)
      {
        sub_1D1821554(a2, v16, type metadata accessor for StaticRoom);
        sub_1D1821554(v57, v13, type metadata accessor for StaticRoom);
        v25 = *(v56 + 20);
        v26 = *&v16[v25];
        v27 = *&v16[v25 + 8];
        v28 = &v13[v25];
        if (v26 == *v28 && v27 == *(v28 + 1))
        {
          break;
        }

        v30 = sub_1D1E6904C();
        sub_1D18215BC(v13, type metadata accessor for StaticRoom);
        sub_1D18215BC(v16, type metadata accessor for StaticRoom);
        if ((v30 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < a2 || a1 >= a2 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v18;
LABEL_38:
        a1 += v18;
        v60 = a1;
        if (v57 >= v23 || a2 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_1D18215BC(v13, type metadata accessor for StaticRoom);
      sub_1D18215BC(v16, type metadata accessor for StaticRoom);
LABEL_30:
      v31 = v57 + v18;
      if (a1 < v57 || a1 >= v31)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v57)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v59 = v31;
      v57 = v31;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_1D1DC7174(&v60, &v59, &v58);
  return 1;
}

uint64_t _s13HomeDataModel25AccessoryDetailsBasicInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticRoom(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644930, &qword_1D1E768B8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  if ((static AccessoryDetails.Payload.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v15 = *(v14 + 20);
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }

    v20 = *v16 == *v18 && v17 == v19;
    if (!v20 && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v51 = v14;
  v21 = *(v14 + 24);
  v22 = a1;
  v23 = *(v11 + 48);
  v49 = v22;
  sub_1D1741C08(v22 + v21, v13, &qword_1EC643878, &qword_1D1E72030);
  v50 = a2;
  sub_1D1741C08(a2 + v21, &v13[v23], &qword_1EC643878, &qword_1D1E72030);
  v24 = *(v5 + 48);
  if (v24(v13, 1, v4) == 1)
  {
    if (v24(&v13[v23], 1, v4) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC643878, &qword_1D1E72030);
      goto LABEL_20;
    }

LABEL_16:
    sub_1D1741A30(v13, &qword_1EC644930, &qword_1D1E768B8);
    return 0;
  }

  sub_1D1741C08(v13, v10, &qword_1EC643878, &qword_1D1E72030);
  if (v24(&v13[v23], 1, v4) == 1)
  {
    sub_1D18215BC(v10, type metadata accessor for StaticRoom);
    goto LABEL_16;
  }

  sub_1D182161C(&v13[v23], v7, type metadata accessor for StaticRoom);
  v26 = static StaticRoom.== infix(_:_:)(v10, v7);
  sub_1D18215BC(v7, type metadata accessor for StaticRoom);
  sub_1D18215BC(v10, type metadata accessor for StaticRoom);
  sub_1D1741A30(v13, &qword_1EC643878, &qword_1D1E72030);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v27 = v50;
  v28 = v51;
  v29 = v51[7];
  v30 = v49;
  v31 = (v49 + v29);
  v32 = *(v49 + v29 + 8);
  v33 = (v50 + v29);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  v35 = v28[8];
  v36 = *(v30 + v35);
  v37 = *(v27 + v35);
  if (v36 == 2)
  {
    if (v37 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v37 == 2 || ((v37 ^ v36) & 1) != 0)
    {
      return result;
    }
  }

  v38 = v28[9];
  v39 = *(v30 + v38);
  v40 = *(v27 + v38);
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      return 0;
    }

    goto LABEL_37;
  }

  result = 0;
  if (v40 != 2 && ((v40 ^ v39) & 1) == 0)
  {
LABEL_37:
    v41 = v28[10];
    v42 = *(v30 + v41);
    v43 = *(v27 + v41);
    if (v42 == 92)
    {
      if (v43 == 92)
      {
        return 1;
      }
    }

    else if (v43 != 92)
    {
      v53 = v42;
      v52 = v43;
      v44 = IconSymbol.rawValue.getter();
      v46 = v45;
      if (v44 == IconSymbol.rawValue.getter() && v46 == v47)
      {
      }

      else
      {
        v48 = sub_1D1E6904C();

        if ((v48 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t type metadata accessor for AccessoryDetailsBasicInfo(uint64_t a1)
{
  result = qword_1EC6448E8;
  if (!qword_1EC6448E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1820D0C()
{
  result = qword_1EC644888;
  if (!qword_1EC644888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644888);
  }

  return result;
}

unint64_t sub_1D1820D60()
{
  result = qword_1EC644898;
  if (!qword_1EC644898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644898);
  }

  return result;
}

unint64_t sub_1D1820DB4()
{
  result = qword_1EC6448A8;
  if (!qword_1EC6448A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6448A8);
  }

  return result;
}

uint64_t sub_1D1820E08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1820E78()
{
  result = qword_1EC6448C0;
  if (!qword_1EC6448C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6448C0);
  }

  return result;
}

uint64_t sub_1D1820EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1820F58(uint64_t result, char a2)
{
  if ((a2 & 0xE0) == 0x40)
  {
    return sub_1D1771B5C(result, a2 & 0x1F);
  }

  return result;
}

uint64_t sub_1D1821000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1821070(uint64_t a1)
{
  type metadata accessor for AccessoryDetails.Payload(319);
  if (v1 <= 0x3F)
  {
    sub_1D17BDF80(319, qword_1EE07D1F8, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1D1821170(319);
      if (v3 <= 0x3F)
      {
        sub_1D17BDF80(319, &qword_1EE07D1F0, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          sub_1D17BDF80(319, &qword_1EC644900, &type metadata for IconSymbol);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D1821170(uint64_t a1)
{
  if (!qword_1EC6448F8)
  {
    type metadata accessor for StaticRoom(255);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC6448F8);
    }
  }
}

unint64_t sub_1D18211DC()
{
  result = qword_1EC644908;
  if (!qword_1EC644908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644908);
  }

  return result;
}

unint64_t sub_1D1821234()
{
  result = qword_1EC644910;
  if (!qword_1EC644910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644910);
  }

  return result;
}

unint64_t sub_1D182128C()
{
  result = qword_1EC644918;
  if (!qword_1EC644918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644918);
  }

  return result;
}

uint64_t sub_1D18212E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E646567617473 && a2 == 0xEA0000000000656DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F52646567617473 && a2 == 0xEA00000000006D6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBA130 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EBA150 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBA170 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EBA190 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D1821554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D18215BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D182161C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1821684(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AccessoryDetailsBasicInfo(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1D181870C(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1821750(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AccessoryDetailsBasicInfo(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D17C4BFC;

  return sub_1D181891C(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

unint64_t sub_1D1821898()
{
  result = qword_1EE07B620;
  if (!qword_1EE07B620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE07B620);
  }

  return result;
}

uint64_t sub_1D18218E4(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1C4C990(a1, a2, v7, v6);
}

uint64_t sub_1D1821998()
{
  type metadata accessor for AccessoryDetailsBasicInfo(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  return sub_1D1809324();
}

uint64_t sub_1D1821A88()
{
  type metadata accessor for AccessoryDetailsBasicInfo(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  return sub_1D180C028();
}

uint64_t sub_1D1821B78()
{
  type metadata accessor for AccessoryDetailsBasicInfo(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  return sub_1D180EAD8();
}

uint64_t sub_1D1821C68()
{
  type metadata accessor for AccessoryDetailsBasicInfo(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  return sub_1D180F944();
}

uint64_t objectdestroy_74Tm()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v116 = *(*(v2 - 8) + 80);
  v3 = (v116 + 32) & ~v116;
  v114 = *(*(v2 - 8) + 64);
  swift_unknownObjectRelease();
  v115 = v3;
  v4 = v1 + v3;
  type metadata accessor for AccessoryDetails.Payload(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v117 = v2;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_94;
      }

      v6 = sub_1D1E66A7C();
      v7 = *(v6 - 8);
      v8 = *(v7 + 8);
      v8(v4, v6);
      v9 = type metadata accessor for StaticService(0);

      v109 = v8;
      v8(v4 + v9[11], v6);
      v10 = v4 + v9[13];
      v11 = type metadata accessor for StaticDeviceMetadata(0);
      if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
      {
        v8(v10, v6);
      }

      v12 = v9[14];
      v13 = sub_1D1E669FC();
      v14 = *(v13 - 8);
      v15 = *(v14 + 48);
      if (!v15(v4 + v12, 1, v13))
      {
        (*(v14 + 8))(v4 + v12, v13);
      }

      v16 = v9[15];
      if (!v15(v4 + v16, 1, v13))
      {
        (*(v14 + 8))(v4 + v16, v13);
      }

      v106 = v14;

      v17 = v9[29];
      v18 = *(v7 + 48);
      if (!v18(v4 + v17, 1, v6))
      {
        v8(v4 + v17, v6);
      }

      v111 = v1;
      v19 = v9[30];
      if (!v18(v4 + v19, 1, v6))
      {
        v8(v4 + v19, v6);
      }

      v20 = v4 + v9[34];
      v21 = type metadata accessor for StaticSoftwareUpdate(0);
      if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
      {
        v8(v20, v6);
        v22 = v20 + *(v21 + 20);
        type metadata accessor for StaticSoftwareUpdate.Kind(0);
        v23 = swift_getEnumCaseMultiPayload();
        if (v23 == 2 || v23 == 1)
        {

          v105 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
          if (!v15(v22 + v105, 1, v13))
          {
            (*(v106 + 8))(v22 + v105, v13);
          }
        }

        else
        {
          if (v23)
          {
            goto LABEL_75;
          }

          v8(v22, v6);
          if (*(v22 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
          {
            goto LABEL_75;
          }
        }
      }

LABEL_75:

      v81 = v9[37];
      if (!v18(v4 + v81, 1, v6))
      {
        v109(v4 + v81, v6);
      }

      v82 = v9[39];
      v83 = type metadata accessor for EndpointPath(0);
      v1 = v111;
      if (!(*(*(v83 - 8) + 48))(v4 + v82, 1, v83))
      {
        v109(v4 + v82, v6);
      }

      v84 = v4 + v9[40];
      v85 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
      if (!(*(*(v85 - 8) + 48))(v84, 1, v85))
      {
        if (*(v84 + 16) != 1)
        {
        }

        v86 = v84 + *(v85 + 20);
        v87 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
        if (!(*(*(v87 - 8) + 48))(v86, 1, v87))
        {

          v88 = *(v87 + 24);
          v89 = sub_1D1E66C5C();
          (*(*(v89 - 8) + 8))(v86 + v88, v89);
        }

LABEL_84:

        goto LABEL_94;
      }

      goto LABEL_94;
    }

    v59 = sub_1D1E66A7C();
    v60 = *(v59 - 8);
    v61 = *(v60 + 8);
    v61(v4, v59);
    v62 = type metadata accessor for StaticAccessory(0);
    v63 = v62[5];
    v64 = sub_1D1E669FC();
    v107 = *(v64 - 8);
    v108 = *(v107 + 48);
    if (!v108(v4 + v63, 1, v64))
    {
      (*(v107 + 8))(v4 + v63, v64);
    }

    v110 = v64;

    v65 = v4 + v62[8];
    type metadata accessor for StaticAccessory.DeviceIdentifier(0);
    v113 = v1;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v61(v65, v59);
    }

    else
    {
    }

    v71 = v4 + v62[9];
    v72 = type metadata accessor for StaticDeviceMetadata(0);
    if (!(*(*(v72 - 8) + 48))(v71, 1, v72))
    {
      v61(v71, v59);
    }

    v73 = v62[10];
    if (!v108(v4 + v73, 1, v110))
    {
      (*(v107 + 8))(v4 + v73, v110);
    }

    v61(v4 + v62[12], v59);

    v74 = v62[22];
    if (!(*(v60 + 48))(v4 + v74, 1, v59))
    {
      v61(v4 + v74, v59);
    }

    v75 = v4 + v62[23];
    v76 = *(v75 + 8);
    if (v76 != 255)
    {
      sub_1D1771B5C(*v75, v76);
    }

    v77 = v4 + v62[30];
    v78 = type metadata accessor for StaticSoftwareUpdate(0);
    if (!(*(*(v78 - 8) + 48))(v77, 1, v78))
    {
      v61(v77, v59);
      v79 = v77 + *(v78 + 20);
      type metadata accessor for StaticSoftwareUpdate.Kind(0);
      v80 = swift_getEnumCaseMultiPayload();
      if (v80 == 2 || v80 == 1)
      {

        v90 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
        if (!v108(v79 + v90, 1, v110))
        {
          (*(v107 + 8))(v79 + v90, v110);
        }
      }

      else
      {
        if (v80)
        {
          goto LABEL_89;
        }

        v61(v79, v59);
        if (*(v79 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
        {
          goto LABEL_89;
        }
      }
    }

LABEL_89:

    v91 = v4 + v62[38];
    v92 = type metadata accessor for StaticMatterDevice(0);
    v1 = v113;
    if (!(*(*(v92 - 1) + 48))(v91, 1, v92))
    {
      v61(v91, v59);

      v61(v91 + v92[9], v59);
      v61(v91 + v92[10], v59);

      v61(v91 + v92[12], v59);
      v93 = v92[13];
      if (!v108(v91 + v93, 1, v110))
      {
        (*(v107 + 8))(v91 + v93, v110);
      }

      v94 = v91 + v92[15];

      v95 = *(type metadata accessor for MatterTileMetadata(0) + 44);
      if (!v108(v94 + v95, 1, v110))
      {
        (*(v107 + 8))(v94 + v95, v110);
      }
    }

    goto LABEL_94;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v66 = sub_1D1E66A7C();
    (*(*(v66 - 8) + 8))(v1 + v3, v66);
    v67 = type metadata accessor for StaticServiceGroup(0);

    v68 = *(v67 + 32);
    v69 = sub_1D1E669FC();
    v70 = *(v69 - 8);
    if (!(*(v70 + 48))(v4 + v68, 1, v69))
    {
      (*(v70 + 8))(v4 + v68, v69);
    }

    goto LABEL_84;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v24 = sub_1D1E66A7C();
    v25 = *(*(v24 - 8) + 8);
    v25(v4, v24);
    v26 = type metadata accessor for StaticEndpoint(0);
    v25(v4 + v26[5], v24);

    v27 = v4 + v26[10];
    v28 = type metadata accessor for StaticRVCClusterGroup(0);
    if (!(*(*(v28 - 8) + 48))(v27, 1, v28))
    {
      v25(v27, v24);

      if (*(v27 + *(v28 + 28) + 16))
      {
      }

      v29 = (v27 + *(v28 + 60));
      if (*v29)
      {

        if (v29[9] != 1)
        {
        }
      }
    }

    v30 = v27 + *(type metadata accessor for StaticClusterGroups(0) + 20);
    v31 = type metadata accessor for StaticThermostatClusterGroup(0);
    if (!(*(*(v31 - 1) + 48))(v30, 1, v31))
    {
      v112 = v1;
      v25(v30, v24);
      v32 = v30 + v31[7];

      v33 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
      v34 = (v32 + v33[9]);
      v35 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
      if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
      {
        v36 = v34[1];
        if (v36 >> 60 != 15)
        {
          sub_1D174E7C4(*v34, v36);
        }

        v37 = *(v35 + 20);
        v38 = sub_1D1E669FC();
        v39 = *(v38 - 8);
        if (!(*(v39 + 48))(v34 + v37, 1, v38))
        {
          (*(v39 + 8))(v34 + v37, v38);
        }
      }

      v40 = (v32 + v33[11]);
      v41 = v40[1];
      if (v41 >> 60 != 15)
      {
        sub_1D174E7C4(*v40, v41);
      }

      v42 = (v32 + v33[12]);
      v43 = v42[1];
      if (v43 >> 60 != 15)
      {
        sub_1D174E7C4(*v42, v43);
      }

      v44 = v33[13];
      v45 = sub_1D1E669FC();
      v46 = *(v45 - 8);
      v47 = *(v46 + 48);
      if (!v47(v32 + v44, 1, v45))
      {
        (*(v46 + 8))(v32 + v44, v45);
      }

      v48 = v31[8];
      v49 = v48 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
      if (!v47(v30 + v49, 1, v45))
      {
        (*(v46 + 8))(v30 + v49, v45);
      }

      v50 = v30 + v31[12];
      v51 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
      v52 = *(v51 + 32);
      if (!v47(v50 + v52, 1, v45))
      {
        (*(v46 + 8))(v50 + v52, v45);
      }

      v53 = *(v51 + 36);
      v54 = v47(v50 + v53, 1, v45);
      v1 = v112;
      if (!v54)
      {
        (*(v46 + 8))(v50 + v53, v45);
      }
    }

    v55 = v4 + v26[13];

    v56 = *(type metadata accessor for MatterTileMetadata(0) + 44);
    v57 = sub_1D1E669FC();
    v58 = *(v57 - 8);
    if (!(*(v58 + 48))(v55 + v56, 1, v57))
    {
      (*(v58 + 8))(v55 + v56, v57);
    }
  }

LABEL_94:

  v96 = v4 + *(v117 + 24);
  v97 = type metadata accessor for StaticRoom(0);
  if (!(*(*(v97 - 8) + 48))(v96, 1, v97))
  {
    v98 = v1;
    v99 = sub_1D1E66A7C();
    v100 = *(*(v99 - 8) + 8);
    v100(v96, v99);

    v101 = *(v97 + 24);
    v102 = sub_1D1E669FC();
    v103 = *(v102 - 8);
    if (!(*(v103 + 48))(v96 + v101, 1, v102))
    {
      (*(v103 + 8))(v96 + v101, v102);
    }

    v100(v96 + *(v97 + 36), v99);

    v1 = v98;
  }

  return MEMORY[0x1EEE6BDD0](v1, v115 + v114, v116 | 7);
}

uint64_t sub_1D1823224()
{
  type metadata accessor for AccessoryDetailsBasicInfo(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  return sub_1D1810A08();
}

uint64_t Color.init(_:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (sub_1D171D2F0(114, 0xE100000000000000), (v2 & 1) != 0) && *(v1 + 16) && (sub_1D171D2F0(103, 0xE100000000000000), (v3 & 1) != 0) && *(v1 + 16) && (sub_1D171D2F0(98, 0xE100000000000000), (v4 & 1) != 0))
    {

      v5 = sub_1D1E6731C();
      MEMORY[0x1EEE9AC00](v5);
      (*(v7 + 104))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D0]);
      return sub_1D1E6744C();
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t Color.colorDictionary.getter(uint64_t a1)
{
  v1 = sub_1D1E6721C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6720C();
  sub_1D1E6740C();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644940, &qword_1D1E76910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E6F900;
  *(inited + 32) = 114;
  *(inited + 40) = 0xE100000000000000;
  sub_1D1E6741C();
  *(inited + 48) = v6;
  *(inited + 56) = 103;
  *(inited + 64) = 0xE100000000000000;
  sub_1D1E6743C();
  *(inited + 72) = v7;
  *(inited + 80) = 98;
  *(inited + 88) = 0xE100000000000000;
  sub_1D1E6742C();
  *(inited + 96) = v8;
  v9 = sub_1D18D8D08(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC644948, &qword_1D1E76918);
  swift_arrayDestroy();
  return v9;
}

uint64_t sub_1D1823680()
{
  result = sub_1D1E673EC();
  qword_1EC644938 = result;
  return result;
}

uint64_t static Color.homeAccentColor.getter()
{
  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static Color.homeAccentColor.setter(uint64_t a1)
{
  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EC644938 = a1;
}

uint64_t (*static Color.homeAccentColor.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EC642158 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t Color.resolve(for:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D1E6721C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6720C();
  v7 = sub_1D1E671BC();
  MEMORY[0x1EEE9AC00](v7);
  (*(v9 + 16))(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1D1E671FC();
  sub_1D1E6740C();
  v10 = sub_1D1E6745C();
  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t DynamicColor.init(light:dark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *(*(a3 - 8) + 32);
  v12(a3 - 8, a5, a1);
  v10 = a5 + *(type metadata accessor for DynamicColor(0, a3, a4, v9) + 36);

  return v12(v10, a2, a3);
}

uint64_t DynamicColor.resolve(in:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D1E671BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = sub_1D1E671EC();
  MEMORY[0x1EEE9AC00](v5);
  v6 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E697DBC0], v2);
  sub_1D1E671AC();
  v7 = *(v3 + 8);
  v7(v6, v2);
  v7(v6, v2);
  return sub_1D1E6715C();
}

uint64_t OnOffColor.on.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1D16EEE20(a1, v1);
}

uint64_t OnOffColor.off.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_1D16EEE20(a1, v1 + 40);
}

uint64_t OnOffColor.init(on:off:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D16EEE20(a1, a3);

  return sub_1D16EEE20(a2, a3 + 40);
}

uint64_t OnOffColor.init<A, B>(onLight:onDark:offLight:offDark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v14 = type metadata accessor for DynamicColor(0, a5, a7, a4);
  a9[3] = v14;
  a9[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a9);
  v16 = *(*(a5 - 8) + 32);
  v16(boxed_opaque_existential_1, a1, a5);
  v16((boxed_opaque_existential_1 + *(v14 + 36)), a2, a5);
  v18 = type metadata accessor for DynamicColor(0, a6, a8, v17);
  a9[8] = v18;
  a9[9] = swift_getWitnessTable();
  v19 = __swift_allocate_boxed_opaque_existential_1(a9 + 5);
  v25 = *(*(a6 - 8) + 32);
  v25(v19, a3, a6);
  v20 = v19 + *(v18 + 36);

  return (v25)(v20, a4, a6);
}

uint64_t OnOffColor.init<A>(on:offLight:offDark:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_1D16EEE20(a1, a6);
  v12 = type metadata accessor for DynamicColor(0, a4, a5, v11);
  a6[8] = v12;
  a6[9] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6 + 5);
  v16 = *(*(a4 - 8) + 32);
  v16(boxed_opaque_existential_1, a2, a4);
  v14 = boxed_opaque_existential_1 + *(v12 + 36);

  return (v16)(v14, a3, a4);
}

uint64_t OnOffColor.init<A>(onLight:onDark:off:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = type metadata accessor for DynamicColor(0, a4, a5, a4);
  a6[3] = v11;
  a6[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  v13 = *(*(a4 - 8) + 32);
  v13(boxed_opaque_existential_1, a1, a4);
  v13((boxed_opaque_existential_1 + *(v11 + 36)), a2, a4);

  return sub_1D16EEE20(a3, (a6 + 5));
}

uint64_t OnOffColor.resolve(for:)@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v4 = v2[3];
    v5 = v2;
  }

  else
  {
    v4 = v2[8];
    v5 = v2 + 5;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v5, v4);
  MEMORY[0x1EEE9AC00](v6);
  (*(v8 + 16))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1D1E671CC();
  *a2 = result;
  return result;
}

uint64_t ColorWithSchemeOverride.init(color:overrideColorScheme:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for ColorWithSchemeOverride(0) + 20);
  v6 = sub_1D1E671BC();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t ColorWithSchemeOverride.resolve(in:)@<X0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D1E6721C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = *(type metadata accessor for ColorWithSchemeOverride(0) + 20);
  v11 = sub_1D1E671BC();
  MEMORY[0x1EEE9AC00](v11);
  (*(v13 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + v10);
  sub_1D1E671FC();
  sub_1D1E6740C();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = (*(v7 + 8))(v9, v6);
  *a2 = v15;
  *(a2 + 1) = v17;
  *(a2 + 2) = v19;
  *(a2 + 3) = v21;
  return result;
}

uint64_t sub_1D18244B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v5 = v3;
  v8 = sub_1D1E6721C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = *(a2 + 20);
  v13 = sub_1D1E671BC();
  MEMORY[0x1EEE9AC00](v13);
  (*(v15 + 16))(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v12);
  sub_1D1E671FC();
  sub_1D1E6740C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = (*(v9 + 8))(v11, v8);
  *a3 = v17;
  *(a3 + 1) = v19;
  *(a3 + 2) = v21;
  *(a3 + 3) = v23;
  return result;
}

uint64_t static ShapeStyle<>.dynamic<A>(light:dark:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *(v9 + 16);
  v15(&v20 - v13);
  (v15)(v12, a2, a3);
  v16 = *(v9 + 32);
  v16(a5, v14, a3);
  v18 = type metadata accessor for DynamicColor(0, a3, a4, v17);
  return (v16)(a5 + *(v18 + 36), v12, a3);
}

uint64_t View.foregroundStyle(_:isOn:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a1[3];
  }

  else
  {
    v4 = a1[8];
    a1 += 5;
  }

  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 16))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9[1] = sub_1D1E671CC();
  sub_1D1E672FC();
}

uint64_t View.background(_:isOn:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v4 = a1[3];
  }

  else
  {
    v4 = a1[8];
    a1 += 5;
  }

  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 16))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9[1] = sub_1D1E671CC();
  sub_1D1E6729C();
  sub_1D1E672CC();
}

uint64_t View.background<A>(_:in:isOn:fillStyle:)(void *a1, uint64_t a2, char a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[1] = a7;
  if (a3)
  {
    v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  }

  else
  {
    v8 = __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  }

  MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12[3] = sub_1D1E671CC();
  sub_1D1E672DC();
}

uint64_t type metadata accessor for ColorWithSchemeOverride(uint64_t a1)
{
  result = qword_1EC6449D0;
  if (!qword_1EC6449D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1824D2C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1824D9C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_1D1824EEC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D1825120(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D1825168(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D18251F4(uint64_t a1)
{
  result = sub_1D1E671BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA24_ForegroundStyleModifierVyAA08AnyShapeG0VGGAaBHPxAaBHD1__AiA0cH0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_1D1E671DC();
  sub_1D17D8EA8(a4, a2, a3, a5);
  return swift_getWitnessTable();
}

HomeDataModel::DeviceDisplayNames __swiftcall DeviceDisplayNames.init(name:roomName:)(Swift::String name, Swift::String_optional roomName)
{
  v2->value = name;
  v2[1] = roomName;
  result.roomName = roomName;
  result.name = name;
  return result;
}

uint64_t DeviceDisplayNames.displayName.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (!v0[3])
  {
    goto LABEL_11;
  }

  v3 = sub_1D1E678AC();
  v5 = v4;
  if (v3 == sub_1D1E678AC() && v5 == v6)
  {

    goto LABEL_11;
  }

  v8 = sub_1D1E6904C();

  if (v8)
  {
    goto LABEL_11;
  }

  sub_1D1E678AC();
  sub_1D1E678AC();
  MEMORY[0x1D3890F70](32, 0xE100000000000000);
  v9 = sub_1D1E679AC();

  if (v9)
  {
    result = sub_1D1E678FC();
    if (!__OFADD__(result, 1))
    {
      v11 = sub_1D1E6792C();

      v12 = sub_1D1825860(v11, v2, v1);
      v14 = v13;
      v16 = v15;
      v18 = v17;

      v2 = MEMORY[0x1D3890F10](v12, v14, v16, v18);
LABEL_16:

      return v2;
    }

    __break(1u);
    goto LABEL_18;
  }

  sub_1D1E678AC();
  v19 = sub_1D1E678AC();
  MEMORY[0x1D3890F70](v19);

  v20 = sub_1D1E679BC();

  if ((v20 & 1) == 0)
  {
LABEL_11:

    return v2;
  }

  result = sub_1D1E678FC();
  if (!__OFADD__(result, 1))
  {
    sub_1D1E6792C();
    v21 = sub_1D1E67A0C();
    v2 = MEMORY[0x1D3890F10](v21);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t DeviceDisplayNames.displayRoomName.getter()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v1 = *(v0 + 16);
  v2 = sub_1D1E678AC();
  v4 = v3;
  if (v2 == sub_1D1E678AC() && v4 == v5)
  {

    goto LABEL_10;
  }

  v7 = sub_1D1E6904C();

  if (v7)
  {
    goto LABEL_10;
  }

  DeviceDisplayNames.displayName.getter();
  sub_1D1E678AC();

  sub_1D1E678AC();
  v9 = sub_1D1E679AC();

  if (v9)
  {
    DeviceDisplayNames.displayName.getter();
    sub_1D1E678AC();

    sub_1D1E678AC();
    MEMORY[0x1D3890F70](32, 0xE100000000000000);
    v10 = sub_1D1E679AC();

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  DeviceDisplayNames.displayName.getter();
  sub_1D1E678AC();

  sub_1D1E678AC();
  v12 = sub_1D1E679BC();

  if ((v12 & 1) == 0)
  {
    if ((v11 & 1) == 0)
    {
      return v1;
    }

    goto LABEL_10;
  }

  DeviceDisplayNames.displayName.getter();
  sub_1D1E678AC();

  v13 = sub_1D1E678AC();
  MEMORY[0x1D3890F70](v13);

  v14 = sub_1D1E679BC();

  if ((v11 & 1) != 0 || (v14 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  return v1;
}

unint64_t sub_1D1825860(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_1D1E67A0C();
  }

  __break(1u);
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

uint64_t sub_1D18258B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D1825900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SliderAlignment.alignment.getter()
{
  if (*v0 == 1)
  {
    return sub_1D1E674AC();
  }

  else
  {
    return sub_1D1E674BC();
  }
}

uint64_t StaticAlignment.alignment.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    if (*v0 > 1u)
    {
      if (v1 == 2)
      {
        return sub_1D1E674AC();
      }

      else
      {
        return sub_1D1E674DC();
      }
    }

    else if (*v0)
    {
      return sub_1D1E6747C();
    }

    else
    {
      return sub_1D1E6746C();
    }
  }

  else if (*v0 <= 5u)
  {
    if (v1 == 4)
    {
      return sub_1D1E674CC();
    }

    else
    {
      return sub_1D1E674EC();
    }
  }

  else if (v1 == 6)
  {
    return sub_1D1E6748C();
  }

  else if (v1 == 7)
  {
    return sub_1D1E674BC();
  }

  else
  {
    return sub_1D1E6749C();
  }
}

uint64_t StaticAlignment.description.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x696461654C706F74;
    v7 = 7368564;
    if (v1 != 2)
    {
      v7 = 0x654C7265746E6563;
    }

    if (*v0)
    {
      v6 = 0x6C69617254706F74;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x654C6D6F74746F62;
    v3 = 0x6D6F74746F62;
    if (v1 != 7)
    {
      v3 = 0x72546D6F74746F62;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x7265746E6563;
    if (v1 != 4)
    {
      v4 = 0x72547265746E6563;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

BOOL static StateValueType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) != 0 && v2 == v3)
    {
      return *(a1 + 8) == *(a2 + 8);
    }
  }

  else if ((*(a2 + 16) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t StateValueType.hash(into:)()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    MEMORY[0x1D3892850](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1D3892890](v3);
    v1 = v2;
  }

  else
  {
    MEMORY[0x1D3892850](0);
  }

  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = 0;
  }

  return MEMORY[0x1D3892890](v4);
}

uint64_t StateValueType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v1 = 0;
  }

  if (v3)
  {
    MEMORY[0x1D3892850](1);
    MEMORY[0x1D3892890](v1);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v1 = v2;
    }

    else
    {
      v1 = 0;
    }
  }

  else
  {
    MEMORY[0x1D3892850](0);
  }

  MEMORY[0x1D3892890](v1);
  return sub_1D1E6926C();
}

BOOL sub_1D1825D68(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) != 0 && v2 == v3)
    {
      return *(a1 + 8) == *(a2 + 8);
    }
  }

  else if ((*(a2 + 16) & 1) == 0 && v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D1825DD0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  sub_1D1E6920C();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    v2 = 0;
  }

  if (v4)
  {
    MEMORY[0x1D3892850](1);
    MEMORY[0x1D3892890](v2);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    MEMORY[0x1D3892850](0);
  }

  MEMORY[0x1D3892890](v2);
  return sub_1D1E6926C();
}

unint64_t sub_1D1825E60()
{
  result = qword_1EC644A00;
  if (!qword_1EC644A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A00);
  }

  return result;
}

unint64_t sub_1D1825EB8()
{
  result = qword_1EC644A08;
  if (!qword_1EC644A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A08);
  }

  return result;
}

unint64_t sub_1D1825F10()
{
  result = qword_1EC644A10;
  if (!qword_1EC644A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644A18, &qword_1D1E76C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A10);
  }

  return result;
}

unint64_t sub_1D1825F78()
{
  result = qword_1EC644A20;
  if (!qword_1EC644A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A20);
  }

  return result;
}

uint64_t _s10SystemModeOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10SystemModeOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for StateValueType(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StateValueType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t StaticRenderingMode.symbolRenderingMode.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      return sub_1D1E6722C();
    }

    else
    {
      return sub_1D1E6725C();
    }
  }

  else if (*v0)
  {
    return sub_1D1E6723C();
  }

  else
  {
    return sub_1D1E6724C();
  }
}

uint64_t sub_1D1826250()
{
  v1 = 0x6863726172656968;
  v2 = 0x6F7268636F6E6F6DLL;
  if (*v0 != 2)
  {
    v2 = 0x657474656C6170;
  }

  if (*v0)
  {
    v1 = 0x6C6F6369746C756DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D18262D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D18276C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1826300(uint64_t a1)
{
  v2 = sub_1D182699C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D182633C(uint64_t a1)
{
  v2 = sub_1D182699C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1826384(uint64_t a1)
{
  v2 = sub_1D1826AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18263C0(uint64_t a1)
{
  v2 = sub_1D1826AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18263FC(uint64_t a1)
{
  v2 = sub_1D1826A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1826438(uint64_t a1)
{
  v2 = sub_1D1826A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1826474(uint64_t a1)
{
  v2 = sub_1D1826A98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18264B0(uint64_t a1)
{
  v2 = sub_1D1826A98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18264EC(uint64_t a1)
{
  v2 = sub_1D18269F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1826528(uint64_t a1)
{
  v2 = sub_1D18269F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticRenderingMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A28, &qword_1D1E76D20);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A30, &qword_1D1E76D28);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A38, &qword_1D1E76D30);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A40, &qword_1D1E76D38);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A48, &qword_1D1E76D40);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D182699C();
  sub_1D1E6930C();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D1826A44();
      v18 = v27;
      sub_1D1E68DFC();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D18269F0();
      v18 = v30;
      sub_1D1E68DFC();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1D1826A98();
    v18 = v24;
    sub_1D1E68DFC();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D1826AEC();
  sub_1D1E68DFC();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1D182699C()
{
  result = qword_1EC644A50;
  if (!qword_1EC644A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A50);
  }

  return result;
}

unint64_t sub_1D18269F0()
{
  result = qword_1EC644A58;
  if (!qword_1EC644A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A58);
  }

  return result;
}

unint64_t sub_1D1826A44()
{
  result = qword_1EC644A60;
  if (!qword_1EC644A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A60);
  }

  return result;
}

unint64_t sub_1D1826A98()
{
  result = qword_1EC644A68;
  if (!qword_1EC644A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A68);
  }

  return result;
}

unint64_t sub_1D1826AEC()
{
  result = qword_1EC644A70;
  if (!qword_1EC644A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644A70);
  }

  return result;
}

uint64_t StaticRenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticRenderingMode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A78, &qword_1D1E76D48);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A80, &qword_1D1E76D50);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A88, &qword_1D1E76D58);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A90, &qword_1D1E76D60);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644A98, &unk_1D1E76D68);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D182699C();
  v15 = v46;
  sub_1D1E692FC();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1D1E68DDC();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1D18085BC();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1D1E688EC();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v28 = &type metadata for StaticRenderingMode;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1D1826A98();
        v32 = v35;
        sub_1D1E68C4C();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1D1826AEC();
        v25 = v35;
        sub_1D1E68C4C();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1D1826A44();
      v31 = v35;
      sub_1D1E68C4C();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1D18269F0();
      v33 = v35;
      sub_1D1E68C4C();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

unint64_t sub_1D1827214()
{
  result = qword_1EC644AA0;
  if (!qword_1EC644AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AA0);
  }

  return result;
}

unint64_t sub_1D18272FC()
{
  result = qword_1EC644AA8;
  if (!qword_1EC644AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AA8);
  }

  return result;
}

unint64_t sub_1D1827354()
{
  result = qword_1EC644AB0;
  if (!qword_1EC644AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AB0);
  }

  return result;
}

unint64_t sub_1D18273AC()
{
  result = qword_1EC644AB8;
  if (!qword_1EC644AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AB8);
  }

  return result;
}

unint64_t sub_1D1827404()
{
  result = qword_1EC644AC0;
  if (!qword_1EC644AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AC0);
  }

  return result;
}

unint64_t sub_1D182745C()
{
  result = qword_1EC644AC8;
  if (!qword_1EC644AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AC8);
  }

  return result;
}

unint64_t sub_1D18274B4()
{
  result = qword_1EC644AD0;
  if (!qword_1EC644AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AD0);
  }

  return result;
}

unint64_t sub_1D182750C()
{
  result = qword_1EC644AD8;
  if (!qword_1EC644AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AD8);
  }

  return result;
}

unint64_t sub_1D1827564()
{
  result = qword_1EC644AE0;
  if (!qword_1EC644AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AE0);
  }

  return result;
}

unint64_t sub_1D18275BC()
{
  result = qword_1EC644AE8;
  if (!qword_1EC644AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AE8);
  }

  return result;
}

unint64_t sub_1D1827614()
{
  result = qword_1EC644AF0;
  if (!qword_1EC644AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AF0);
  }

  return result;
}

unint64_t sub_1D182766C()
{
  result = qword_1EC644AF8;
  if (!qword_1EC644AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644AF8);
  }

  return result;
}

uint64_t sub_1D18276C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6863726172656968 && a2 == 0xEC0000006C616369;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F6369746C756DLL && a2 == 0xEA0000000000726FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F7268636F6E6F6DLL && a2 == 0xEA0000000000656DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657474656C6170 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void *sub_1D1827838(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 64);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = *(v6 - 1);
    v9 = *v6;
    v11 = *(v6 - 3);
    v12 = *(v6 - 2);
    v24[0] = *(v6 - 4);
    v24[1] = v11;
    v24[2] = v12;
    v24[3] = v10;
    v24[4] = v9;

    a1(&v25, v24);
    if (v4)
    {

      return v7;
    }

    v13 = v25;
    v14 = *(v25 + 16);
    v15 = v7[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= v7[3] >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v7 = sub_1D177DC54(isUniquelyReferenced_nonNull_native, v18, 1, v7);
      if (*(v13 + 16))
      {
LABEL_15:
        v19 = (v7[3] >> 1) - v7[2];
        result = type metadata accessor for StaticServiceCharacteristicDoublet(0);
        if (v19 < v14)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v20 = v7[2];
          v21 = __OFADD__(v20, v14);
          v22 = v20 + v14;
          if (v21)
          {
            goto LABEL_25;
          }

          v7[2] = v22;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_23;
    }

LABEL_4:
    v6 += 5;
    if (!--v5)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t StaticServiceCharacteristicDoublet.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticServiceCharacteristicDoublet(0) + 24);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for StaticServiceCharacteristicDoublet(uint64_t a1)
{
  result = qword_1EC644B48;
  if (!qword_1EC644B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticServiceCharacteristicDoublet.staticAccessoryID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticServiceCharacteristicDoublet.staticServiceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticServiceCharacteristicDoublet(0) + 20);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL static StaticServiceCharacteristicDoublet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);

  return _s13HomeDataModel20StaticCharacteristicV2eeoiySbAC_ACtFZ_0(a1 + v5, a2 + v5);
}

unint64_t sub_1D1827CE0()
{
  v1 = 0x6553636974617473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1D1827D4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D182BDB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1827D74(uint64_t a1)
{
  v2 = sub_1D182BA04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1827DB0(uint64_t a1)
{
  v2 = sub_1D182BA04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticServiceCharacteristicDoublet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B00, &qword_1D1E77270);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D182BA04();
  sub_1D1E6930C();
  v11 = 0;
  sub_1D1E66A7C();
  sub_1D182BB5C(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v1)
  {
    type metadata accessor for StaticServiceCharacteristicDoublet(0);
    v10 = 1;
    sub_1D1E68F1C();
    v9 = 2;
    type metadata accessor for StaticCharacteristic(0);
    sub_1D182BB5C(&qword_1EC644B10, type metadata accessor for StaticCharacteristic, &protocol conformance descriptor for StaticCharacteristic);
    sub_1D1E68F1C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t StaticServiceCharacteristicDoublet.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D182BB5C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  type metadata accessor for StaticServiceCharacteristicDoublet(0);
  sub_1D1E676EC();
  return StaticCharacteristic.hash(into:)(a1);
}

uint64_t StaticServiceCharacteristicDoublet.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D182BB5C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  type metadata accessor for StaticServiceCharacteristicDoublet(0);
  sub_1D1E676EC();
  StaticCharacteristic.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticServiceCharacteristicDoublet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = type metadata accessor for StaticCharacteristic(0);
  MEMORY[0x1EEE9AC00](v26);
  v27 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1E66A7C();
  v28 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B18, &qword_1D1E77278);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D182BA04();
  v32 = v11;
  v15 = v33;
  sub_1D1E692FC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v24 = v14;
  v33 = a1;
  v36 = 0;
  sub_1D182BB5C(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v16 = v29;
  sub_1D1E68D7C();
  v29 = *(v28 + 32);
  (v29)(v24, v16, v4);
  v35 = 1;
  v17 = v7;
  sub_1D1E68D7C();
  v18 = v24;
  (v29)(&v24[*(v23 + 20)], v17, v4);
  v34 = 2;
  sub_1D182BB5C(&qword_1EC644B28, type metadata accessor for StaticCharacteristic, &protocol conformance descriptor for StaticCharacteristic);
  v19 = v27;
  sub_1D1E68D7C();
  v20 = v33;
  (*(v30 + 8))(v32, v31);
  sub_1D182BFE8(v19, v18 + *(v23 + 24), type metadata accessor for StaticCharacteristic);
  sub_1D182BA58(v18, v25, type metadata accessor for StaticServiceCharacteristicDoublet);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_1D182BF88(v18, type metadata accessor for StaticServiceCharacteristicDoublet);
}

BOOL sub_1D18286A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);

  return _s13HomeDataModel20StaticCharacteristicV2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

uint64_t sub_1D1828720()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D182BB5C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  StaticCharacteristic.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D18287EC(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D182BB5C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  return StaticCharacteristic.hash(into:)(a1);
}

uint64_t sub_1D18288A0(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D182BB5C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  StaticCharacteristic.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1828968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D1828A0C(uint64_t a1, char a2, char a3, char a4, uint64_t a5)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  MEMORY[0x1EEE9AC00](v38);
  v11 = &v34 - v10;
  v45 = MEMORY[0x1E69E7CC0];
  v12 = 1 << *(a5 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a5 + 64);
  v15 = (v12 + 63) >> 6;
  v36 = a4 & 1;
  v37 = a2 & 1;
  v35 = a3 & 1;

  for (i = 0; v14; result = sub_1D17A3D7C(&v46))
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v18 << 6);
    v21 = *(a5 + 48);
    v22 = sub_1D1E66A7C();
    (*(*(v22 - 8) + 16))(v11, v21 + *(*(v22 - 8) + 72) * v20, v22);
    v23 = *(a5 + 56);
    v24 = (type metadata accessor for StaticAccessory(0) - 8);
    v25 = v23 + *(*v24 + 72) * v20;
    v26 = &v11[*(v38 + 48)];
    sub_1D182BA58(v25, v26, type metadata accessor for StaticAccessory);
    v27 = *(v26 + v24[22]);
    v28 = swift_allocObject();
    *(v28 + 16) = v37;
    *&v41 = v27;
    *(&v41 + 1) = sub_1D182C050;
    v42 = v28;
    *(swift_allocObject() + 16) = v36;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B78, &unk_1D1E774E0);
    sub_1D1E68B7C();

    v39 = v43;
    v40 = v44;
    *(swift_allocObject() + 16) = v35;
    sub_1D1E68B7C();

    v39 = v41;
    v40 = v42;
    v29 = swift_allocObject();
    *(v29 + 16) = a1;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1D182C068;
    *(v30 + 24) = v29;

    sub_1D1E68B7C();

    v31 = v44;
    v32 = swift_allocObject();
    *(v32 + 16) = a1;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1D182C0C4;
    *(v33 + 24) = v32;
    v46 = v43;
    v47 = v31;
    v48 = sub_1D182C110;
    v49 = v33;

    sub_1D1741A30(v11, &qword_1EC644B30, &qword_1D1E77280);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return v45;
    }

    v14 = *(a5 + 64 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t Dictionary<>.staticServiceCharacteristicDoublets<A>(matching:filterOutHiddenStatusAccessories:skipNoResponseAccessories:skipCalibratingAccessories:)(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a6;
  v30 = a7;
  v27 = a3;
  v28 = a4;
  HIDWORD(v26) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v31 = MEMORY[0x1E69E7CC0];
  v12 = 1 << *(a5 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a5 + 64);
  v15 = (v12 + 63) >> 6;

  for (i = 0; v14; result = sub_1D17A3D7C(v32))
  {
    v18 = i;
LABEL_9:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v18 << 6);
    v21 = *(a5 + 48);
    v22 = sub_1D1E66A7C();
    (*(*(v22 - 8) + 16))(v11, v21 + *(*(v22 - 8) + 72) * v20, v22);
    v23 = *(a5 + 56);
    v24 = v23 + *(*(type metadata accessor for StaticAccessory(0) - 8) + 72) * v20;
    v25 = *(v9 + 48);
    sub_1D182BA58(v24, &v11[v25], type metadata accessor for StaticAccessory);
    sub_1D1829054(v11, &v11[v25], BYTE4(v26) & 1, v28 & 1, v27 & 1, a1, v29, v30, v32);
    sub_1D1741A30(v11, &qword_1EC644B30, &qword_1D1E77280);
  }

  while (1)
  {
    v18 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return v31;
    }

    v14 = *(a5 + 64 + 8 * v18);
    ++i;
    if (v14)
    {
      i = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

double sub_1D1829054@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v32 = a8;
  v34 = a6;
  v37 = a9;
  v16 = *(a7 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + *(type metadata accessor for StaticAccessory(0) + 80));
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *&v40 = v18;
  *(&v40 + 1) = sub_1D182C47C;
  v41 = v19;
  *(swift_allocObject() + 16) = a4;

  *&v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B78, &unk_1D1E774E0);
  sub_1D1E68B7C();

  v38 = v42;
  v39 = v43;
  *(swift_allocObject() + 16) = a5;
  sub_1D1E68B7C();

  v38 = v40;
  v39 = v41;
  v33 = *(v16 + 16);
  v20 = v36;
  v33(v36, a6, a7);
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  v23 = *(v16 + 32);
  v23(v22 + v21, v20, a7);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D182C1B8;
  *(v24 + 24) = v22;
  sub_1D1E68B7C();

  v25 = v43;
  v35 = v42;
  v33(v20, v34, a7);
  v26 = swift_allocObject();
  v27 = v32;
  *(v26 + 16) = a7;
  *(v26 + 24) = v27;
  v23(v26 + v21, v20, a7);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1D182C2DC;
  *(v28 + 24) = v26;
  v29 = v37;
  result = *&v35;
  *v37 = v35;
  v29[2] = v25;
  v29[3] = sub_1D182C474;
  v29[4] = v28;
  return result;
}

uint64_t sub_1D18293BC(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  if ((a2 & 1) == 0)
  {
    return 1;
  }

  sub_1D182C148(a1, &v11 - v5);
  v7 = &v6[*(v4 + 48)];
  v8 = *(v7 + *(type metadata accessor for StaticService(0) + 96));
  sub_1D182BF88(v7, type metadata accessor for StaticService);
  v9 = sub_1D1E66A7C();
  (*(*(v9 - 8) + 8))(v6, v9);
  return v8;
}

uint64_t sub_1D18294C8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  if (a2)
  {
    sub_1D182C148(a1, &v12 - v5);
    v7 = &v6[*(v4 + 48)];
    v8 = *(v7 + *(type metadata accessor for StaticService(0) + 36));
    sub_1D182BF88(v7, type metadata accessor for StaticService);
    v9 = sub_1D1E66A7C();
    (*(*(v9 - 8) + 8))(v6, v9);
    v10 = v8 ^ 1;
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

uint64_t sub_1D18295D8(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for StatusStrings.Options(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v9 = v6[11];
  v10 = sub_1D1E669FC();
  (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
  *v8 = 257;
  *(v8 + 2) = 0;
  v8[6] = 0;
  v8[v6[12]] = 2;
  v11 = &v8[v6[13]];
  v11[4] = 0;
  *v11 = 2;
  v12 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  StaticService.statusString(with:associatedMatterDevice:)(v8);
  v14 = v13;
  sub_1D1741A30(v5, &qword_1EC643650, &qword_1D1E71D40);
  sub_1D182BF88(v8, type metadata accessor for StatusStrings.Options);
  if (!v14)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D18297D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B70, &qword_1D1E774D8);
  sub_1D182C3C8();
  return sub_1D1E67ACC();
}

uint64_t sub_1D1829864@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for StaticCharacteristic(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticService(0);
  v14 = *(a2 + *(v13 + 128));
  if (!*(v14 + 16))
  {
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_7:
    sub_1D1741A30(v8, &qword_1EC643630, &qword_1D1E71D10);
    v19 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
    return (*(*(v19 - 8) + 56))(a3, 1, 1, v19);
  }

  v15 = v13;
  v16 = *a1;

  v17 = sub_1D171D140(v16);
  if (v18)
  {
    sub_1D182BA58(*(v14 + 56) + *(v10 + 72) * v17, v8, type metadata accessor for StaticCharacteristic);
    (*(v10 + 56))(v8, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_7;
  }

  sub_1D182BFE8(v8, v12, type metadata accessor for StaticCharacteristic);
  v21 = *(v15 + 44);
  v22 = sub_1D1E66A7C();
  v23 = *(*(v22 - 8) + 16);
  v23(a3, a2 + v21, v22);
  v24 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v23(a3 + *(v24 + 20), a2, v22);
  sub_1D182BFE8(v12, a3 + *(v24 + 24), type metadata accessor for StaticCharacteristic);
  return (*(*(v24 - 8) + 56))(a3, 0, 1, v24);
}

uint64_t Dictionary<>.staticServiceCharacteristicDoublets(matching:filterOutHiddenStatusAccessories:skipNoResponseAccessories:)(uint64_t *a1, char a2, char a3, uint64_t a4)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D1E739C0;
  *(v12 + 32) = v8;
  *(v12 + 40) = v7;
  *(v12 + 48) = v9;
  *(v12 + 56) = v10;
  *(v12 + 64) = v11;

  v13 = sub_1D1828A0C(v12, a2, a3, 0, a4);

  return v13;
}

void *sub_1D1829C68(uint64_t a1, int a2, uint64_t a3)
{
  v51 = a2;
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v50 = &v46 - v5;
  v49 = type metadata accessor for StatusStrings.Options(0);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  MEMORY[0x1EEE9AC00](v48);
  v54 = &v46 - v8;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v46 = (v10 + 63) >> 6;
  v52 = a3;

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (v12)
  {
    v53 = v15;
LABEL_11:
    v17 = __clz(__rbit64(v12)) | (v14 << 6);
    v18 = v52;
    v19 = *(v52 + 48);
    v20 = sub_1D1E66A7C();
    v21 = v54;
    (*(*(v20 - 8) + 16))(v54, v19 + *(*(v20 - 8) + 72) * v17, v20);
    v22 = *(v18 + 56);
    v23 = v22 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v17;
    v24 = v21 + *(v48 + 48);
    sub_1D182BA58(v23, v24, type metadata accessor for StaticService);
    v25 = v49;
    v26 = *(v49 + 44);
    v27 = sub_1D1E669FC();
    (*(*(v27 - 8) + 56))(&v7[v26], 1, 1, v27);
    *v7 = 257;
    *(v7 + 2) = 0;
    v7[6] = 0;
    v7[*(v25 + 48)] = 2;
    v28 = &v7[*(v25 + 52)];
    v28[4] = 0;
    *v28 = 2;
    v29 = type metadata accessor for StaticMatterDevice(0);
    v30 = v50;
    (*(*(v29 - 8) + 56))(v50, 1, 1, v29);
    StaticService.statusString(with:associatedMatterDevice:)(v7);
    v32 = v31;
    sub_1D1741A30(v30, &qword_1EC643650, &qword_1D1E71D40);
    v33 = sub_1D182BF88(v7, type metadata accessor for StatusStrings.Options);
    if (v51)
    {
      if (v32)
      {

        goto LABEL_17;
      }
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v33);
    *(&v46 - 2) = v24;
    v34 = v47;
    v35 = sub_1D1C92714(0, sub_1D182BF50, (&v46 - 4), v47);
    if (v35)
    {
      MEMORY[0x1EEE9AC00](v35);
      *(&v46 - 2) = v24;
      v36 = sub_1D18FBBB8(MEMORY[0x1E69E7CC0], sub_1D182BF6C, (&v46 - 4), v34);
      goto LABEL_18;
    }

LABEL_17:
    v36 = MEMORY[0x1E69E7CC0];
LABEL_18:
    result = sub_1D1741A30(v54, &qword_1EC642DB0, &unk_1D1E6F360);
    v37 = *(v36 + 16);
    v15 = v53;
    v38 = v53[2];
    v39 = v38 + v37;
    if (__OFADD__(v38, v37))
    {
      goto LABEL_32;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v39 > v15[3] >> 1)
    {
      if (v38 <= v39)
      {
        v41 = v38 + v37;
      }

      else
      {
        v41 = v38;
      }

      v15 = sub_1D177DC54(isUniquelyReferenced_nonNull_native, v41, 1, v15);
    }

    v12 &= v12 - 1;
    if (*(v36 + 16))
    {
      v42 = (v15[3] >> 1) - v15[2];
      result = type metadata accessor for StaticServiceCharacteristicDoublet(0);
      if (v42 < v37)
      {
        goto LABEL_34;
      }

      swift_arrayInitWithCopy();

      if (v37)
      {
        v43 = v15[2];
        v44 = __OFADD__(v43, v37);
        v45 = v43 + v37;
        if (v44)
        {
          goto LABEL_35;
        }

        v15[2] = v45;
      }
    }

    else
    {

      if (v37)
      {
        goto LABEL_33;
      }
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v46)
    {

      return v15;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      v53 = v15;
      v14 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *Dictionary<>.staticServiceCharacteristicDoublets<A>(matching:skipNoResponsServices:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v36 = a2;
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v34 - v6;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v39 = a3;

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (v11)
  {
LABEL_10:
    v17 = __clz(__rbit64(v11)) | (v14 << 6);
    v18 = v39;
    v19 = *(v39 + 48);
    v20 = sub_1D1E66A7C();
    (*(*(v20 - 8) + 16))(v7, v19 + *(*(v20 - 8) + 72) * v17, v20);
    v21 = *(v18 + 56);
    v22 = v21 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * v17;
    v23 = *(v34 + 48);
    sub_1D182BA58(v22, &v7[v23], type metadata accessor for StaticService);
    v24 = sub_1D182A4B8(v7, &v7[v23], v36 & 1, v35, v37, v38);
    result = sub_1D1741A30(v7, &qword_1EC642DB0, &unk_1D1E6F360);
    v25 = *(v24 + 16);
    v26 = v15[2];
    v27 = v26 + v25;
    if (__OFADD__(v26, v25))
    {
      goto LABEL_24;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v27 > v15[3] >> 1)
    {
      if (v26 <= v27)
      {
        v29 = v26 + v25;
      }

      else
      {
        v29 = v26;
      }

      v15 = sub_1D177DC54(isUniquelyReferenced_nonNull_native, v29, 1, v15);
    }

    v11 &= v11 - 1;
    if (*(v24 + 16))
    {
      v30 = (v15[3] >> 1) - v15[2];
      result = type metadata accessor for StaticServiceCharacteristicDoublet(0);
      if (v30 < v25)
      {
        goto LABEL_26;
      }

      swift_arrayInitWithCopy();

      if (v25)
      {
        v31 = v15[2];
        v32 = __OFADD__(v31, v25);
        v33 = v31 + v25;
        if (v32)
        {
          goto LABEL_27;
        }

        v15[2] = v33;
      }
    }

    else
    {

      if (v25)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return v15;
    }

    v11 = *(v8 + 8 * v16);
    ++v14;
    if (v11)
    {
      v14 = v16;
      goto LABEL_10;
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
  __break(1u);
  return result;
}

uint64_t sub_1D182A4B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for StatusStrings.Options(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v12[13];
  v16 = sub_1D1E669FC();
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  *v14 = 257;
  *(v14 + 2) = 0;
  v14[6] = 0;
  v14[v12[14]] = 2;
  v17 = &v14[v12[15]];
  v17[4] = 0;
  *v17 = 2;
  v18 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  StaticService.statusString(with:associatedMatterDevice:)(v14);
  v20 = v19;
  sub_1D1741A30(v10, &qword_1EC643650, &qword_1D1E71D40);
  v21 = sub_1D182BF88(v14, type metadata accessor for StatusStrings.Options);
  if (a3)
  {
    if (v20)
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
  }

  LOBYTE(v24) = 0;
  MEMORY[0x1EEE9AC00](v21);
  *(&v23 - 2) = a2;
  sub_1D1E67AAC();
  result = MEMORY[0x1E69E7CC0];
  if (v25[0] == 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    MEMORY[0x1EEE9AC00](MEMORY[0x1E69E7CC0]);
    *(&v23 - 2) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B70, &qword_1D1E774D8);
    sub_1D1E67A9C();
    return *v25;
  }

  return result;
}

BOOL sub_1D182A7C4@<W0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    v8 = *(a2 + 16);
    v7 = *(a2 + 24);
    v9 = type metadata accessor for StaticService(0);
    if (sub_1D17C4E00(*(a3 + *(v9 + 104)), v8))
    {
      if (*(v7 + 16))
      {
        if (*(a3 + *(v9 + 112)) == 53)
        {
          v10 = 0;
        }

        else
        {
          v10 = *(a3 + *(v9 + 112));
        }

        result = sub_1D17C4E00(v10, v7);
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      result = 0;
    }
  }

  *a4 = result;
  return result;
}

uint64_t sub_1D182A86C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v5 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for StaticCharacteristic(0);
  v43 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 32);
  v15 = *(v14 + 16);
  if (v15)
  {
    v37 = type metadata accessor for StaticService(0);
    v38 = v13;
    v16 = *(v44 + *(v37 + 128));
    v17 = (v14 + 32);
    v18 = (v43 + 56);
    v19 = (v43 + 48);
    v39 = v10;
    v40 = v9;
    v35 = (v43 + 56);
    v36 = v16;
    v34 = (v43 + 48);
    do
    {
      if (*(v16 + 16))
      {
        v20 = *v17;

        v21 = sub_1D171D140(v20);
        if (v22)
        {
          sub_1D182BA58(*(v16 + 56) + *(v43 + 72) * v21, v9, type metadata accessor for StaticCharacteristic);
          v23 = 0;
        }

        else
        {
          v23 = 1;
        }

        (*v18)(v9, v23, 1, v10);

        if ((*v19)(v9, 1, v10) != 1)
        {
          sub_1D182BFE8(v9, v13, type metadata accessor for StaticCharacteristic);
          v24 = *(v37 + 44);
          v25 = sub_1D1E66A7C();
          v26 = *(*(v25 - 8) + 16);
          v27 = v44;
          v28 = v45;
          v26(v45, v44 + v24, v25);
          v29 = v42;
          v26(v28 + *(v42 + 20), v27, v25);
          v13 = v38;
          sub_1D182BA58(v38, v28 + *(v29 + 24), type metadata accessor for StaticCharacteristic);
          v30 = *a1;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_1D177DC54(0, v30[2] + 1, 1, v30);
          }

          v32 = v30[2];
          v31 = v30[3];
          v18 = v35;
          if (v32 >= v31 >> 1)
          {
            v30 = sub_1D177DC54((v31 > 1), v32 + 1, 1, v30);
          }

          sub_1D182BF88(v13, type metadata accessor for StaticCharacteristic);
          v30[2] = v32 + 1;
          result = sub_1D182BFE8(v45, v30 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v32, type metadata accessor for StaticServiceCharacteristicDoublet);
          *a1 = v30;
          v10 = v39;
          v9 = v40;
          v16 = v36;
          v19 = v34;
          goto LABEL_5;
        }
      }

      else
      {
        (*v18)(v9, 1, 1, v10);
      }

      result = sub_1D1741A30(v9, &qword_1EC643630, &qword_1D1E71D10);
LABEL_5:
      ++v17;
      --v15;
    }

    while (v15);
  }

  return result;
}

void *Dictionary<>.staticServiceCharacteristicDoublets(matching:filterOutHiddenStatusAccessories:skipNoResponseServices:)(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v7;
  *(inited + 40) = v6;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 64) = v10;

  v12 = sub_1D1829C68(inited, a3, a4);
  swift_setDeallocating();
  sub_1D182BAC0(inited + 32);
  return v12;
}

void *Dictionary<>.staticServiceCharacteristicDoublets<A>(matching:skipHiddenServices:skipNoResponseServices:skipCalibratingServices:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4;
  v12 = sub_1D182AF68(a5, a2, sub_1D182B530, sub_1D182B530);
  v13 = sub_1D182AF68(v12, v9, sub_1D182B0EC, sub_1D182B0EC);

  v14 = Dictionary<>.staticServiceCharacteristicDoublets<A>(matching:skipNoResponsServices:)(a1, a3, v13, a6, a7);

  return v14;
}

void *sub_1D182AF68(uint64_t a1, char a2, uint64_t (*a3)(char *, unint64_t, uint64_t, void), uint64_t (*a4)(void *, uint64_t, uint64_t, void))
{
  v7 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = ((1 << v8) + 63) >> 6;
  if ((v8 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v11 = v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v10);
    result = a3(v11, v9, v7, a2 & 1);
    if (v4)
    {
      return swift_willThrow();
    }

    return result;
  }

  v14 = swift_slowAlloc();
  v15 = sub_1D182B974(v14, v9, v7, a2 & 1, a4);
  result = MEMORY[0x1D3893640](v14, -1, -1);
  if (!v4)
  {
    return v15;
  }

  return result;
}

uint64_t sub_1D182B0EC(unint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v41 = a2;
  v54 = a4;
  v42 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = MEMORY[0x1EEE9AC00](v53);
  v48 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v40 - v7;
  v47 = type metadata accessor for StaticService(0);
  v52 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0;
  v55 = a3;
  v19 = a3[8];
  v18 = a3 + 8;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v44 = (v20 + 63) >> 6;
  v45 = v18;
  v50 = v12 + 16;
  v51 = v12;
  v49 = (v12 + 8);
  while (2)
  {
    v43 = v15;
    while (1)
    {
      if (!v22)
      {
        v26 = v16;
        v25 = v56;
        while (1)
        {
          v16 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v16 >= v44)
          {
            return sub_1D188B1C8(v42, v41, v43, v55);
          }

          v27 = v45[v16];
          ++v26;
          if (v27)
          {
            v23 = v14;
            v57 = (v27 - 1) & v27;
            v24 = __clz(__rbit64(v27)) | (v16 << 6);
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v23 = v14;
      v57 = (v22 - 1) & v22;
      v24 = __clz(__rbit64(v22)) | (v16 << 6);
      v25 = v56;
LABEL_12:
      v28 = v55;
      v29 = *(v51 + 16);
      v29(v23, v55[6] + *(v51 + 72) * v24, v10);
      v30 = v28[7];
      v31 = *(v52 + 72);
      v46 = v24;
      sub_1D182BA58(v30 + v31 * v24, v9, type metadata accessor for StaticService);
      v29(v25, v23, v10);
      v32 = v53;
      sub_1D182BA58(v9, v25 + *(v53 + 48), type metadata accessor for StaticService);
      if ((v54 & 1) == 0)
      {
        break;
      }

      v33 = v25;
      v34 = v48;
      sub_1D182BEE0(v33, v48);
      v35 = v34 + *(v32 + 48);
      v36 = *(v35 + *(v47 + 36));
      sub_1D182BF88(v35, type metadata accessor for StaticService);
      v37 = *v49;
      (*v49)(v34, v10);
      sub_1D182BF88(v9, type metadata accessor for StaticService);
      result = v37(v23, v10);
      v14 = v23;
      v22 = v57;
      if ((v36 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    sub_1D1741A30(v25, &qword_1EC642DB0, &unk_1D1E6F360);
    sub_1D182BF88(v9, type metadata accessor for StaticService);
    result = (*v49)(v23, v10);
    v14 = v23;
    v22 = v57;
LABEL_16:
    v38 = v43;
    *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
    v39 = __OFADD__(v38, 1);
    v15 = v38 + 1;
    if (!v39)
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_1D188B1C8(v42, v41, v43, v55);
}

uint64_t sub_1D182B530(unint64_t *a1, uint64_t a2, void *a3, int a4)
{
  v41 = a2;
  v54 = a4;
  v42 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v5 = MEMORY[0x1EEE9AC00](v53);
  v48 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v40 - v7;
  v47 = type metadata accessor for StaticService(0);
  v52 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v16 = 0;
  v55 = a3;
  v19 = a3[8];
  v18 = a3 + 8;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v44 = (v20 + 63) >> 6;
  v45 = v18;
  v50 = v12 + 16;
  v51 = v12;
  v49 = (v12 + 8);
  while (2)
  {
    v43 = v15;
    while (1)
    {
      if (!v22)
      {
        v26 = v16;
        v25 = v56;
        while (1)
        {
          v16 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          if (v16 >= v44)
          {
            return sub_1D188B1C8(v42, v41, v43, v55);
          }

          v27 = v45[v16];
          ++v26;
          if (v27)
          {
            v23 = v14;
            v57 = (v27 - 1) & v27;
            v24 = __clz(__rbit64(v27)) | (v16 << 6);
            goto LABEL_12;
          }
        }

        __break(1u);
        return result;
      }

      v23 = v14;
      v57 = (v22 - 1) & v22;
      v24 = __clz(__rbit64(v22)) | (v16 << 6);
      v25 = v56;
LABEL_12:
      v28 = v55;
      v29 = *(v51 + 16);
      v29(v23, v55[6] + *(v51 + 72) * v24, v10);
      v30 = v28[7];
      v31 = *(v52 + 72);
      v46 = v24;
      sub_1D182BA58(v30 + v31 * v24, v9, type metadata accessor for StaticService);
      v29(v25, v23, v10);
      v32 = v53;
      sub_1D182BA58(v9, v25 + *(v53 + 48), type metadata accessor for StaticService);
      if ((v54 & 1) == 0)
      {
        break;
      }

      v33 = v25;
      v34 = v48;
      sub_1D182BEE0(v33, v48);
      v35 = v34 + *(v32 + 48);
      v36 = *(v35 + *(v47 + 96));
      sub_1D182BF88(v35, type metadata accessor for StaticService);
      v37 = *v49;
      (*v49)(v34, v10);
      sub_1D182BF88(v9, type metadata accessor for StaticService);
      result = v37(v23, v10);
      v14 = v23;
      v22 = v57;
      if (v36)
      {
        goto LABEL_16;
      }
    }

    sub_1D1741A30(v25, &qword_1EC642DB0, &unk_1D1E6F360);
    sub_1D182BF88(v9, type metadata accessor for StaticService);
    result = (*v49)(v23, v10);
    v14 = v23;
    v22 = v57;
LABEL_16:
    v38 = v43;
    *(v42 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
    v39 = __OFADD__(v38, 1);
    v15 = v38 + 1;
    if (!v39)
    {
      continue;
    }

    break;
  }

  __break(1u);
  return sub_1D188B1C8(v42, v41, v43, v55);
}

void *sub_1D182B974(void *result, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void *, uint64_t, uint64_t, void))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4 & 1);

    return v10;
  }

  return result;
}

unint64_t sub_1D182BA04()
{
  result = qword_1EC644B08;
  if (!qword_1EC644B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644B08);
  }

  return result;
}

uint64_t sub_1D182BA58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D182BB5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D182BC14(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StaticCharacteristic(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D182BCAC()
{
  result = qword_1EC644B58;
  if (!qword_1EC644B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644B58);
  }

  return result;
}

unint64_t sub_1D182BD04()
{
  result = qword_1EC644B60;
  if (!qword_1EC644B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644B60);
  }

  return result;
}

unint64_t sub_1D182BD5C()
{
  result = qword_1EC644B68;
  if (!qword_1EC644B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644B68);
  }

  return result;
}

uint64_t sub_1D182BDB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001D1EBA1D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6553636974617473 && a2 == 0xEF44496563697672 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EBA1F0 == a2)
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

uint64_t sub_1D182BEE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D182BF88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D182BFE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D182C068(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[2] = a2;
  return sub_1D1C92714(0, sub_1D182C45C, v5, v3) & 1;
}

void *sub_1D182C0C4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[2] = a2;
  return sub_1D1827838(sub_1D182C114, v5, v3);
}

uint64_t sub_1D182C148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D182C318@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  result = v5(a1, a1 + *(v6 + 48));
  *a2 = result;
  return result;
}

void *sub_1D182C374@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 32);
  v6[2] = *(v2 + 16);
  result = sub_1D1787E3C(sub_1D182C12C, v6, v4);
  *a2 = result;
  return result;
}

unint64_t sub_1D182C3C8()
{
  result = qword_1EC644B80;
  if (!qword_1EC644B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644B70, &qword_1D1E774D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644B80);
  }

  return result;
}

uint64_t static ClimateSummarizer.climateSummary(context:from:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v60 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v60 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v12 = swift_allocObject();
  v64 = xmmword_1D1E739C0;
  *(v12 + 16) = xmmword_1D1E739C0;
  if (qword_1EC642168 != -1)
  {
    swift_once();
  }

  v13 = *algn_1EC644B98;
  v14 = qword_1EC644BA0;
  v15 = unk_1EC644BA8;
  v16 = qword_1EC644BB0;
  *(v12 + 32) = qword_1EC644B90;
  *(v12 + 40) = v13;
  *(v12 + 48) = v14;
  *(v12 + 56) = v15;
  *(v12 + 64) = v16;

  v17 = sub_1D1828A0C(v12, 1, 1, 1, a2);

  static ClimateSummarizer._temperatureGaugeData(context:from:)(v17, v11);

  v18 = type metadata accessor for IconTextValueStringDataHolder(0);
  v19 = *(v18 - 1);
  v63 = *(v19 + 48);
  if (v63(v11, 1, v18) == 1)
  {
    sub_1D18304D4(v11);
  }

  else
  {
    v20 = &v11[v18[7]];
    v21 = *v20;
    v22 = *(v20 + 1);

    sub_1D1831068(v11);
    if (v22)
    {
      return v21;
    }
  }

  v62 = v19 + 48;
  v23 = swift_allocObject();
  *(v23 + 16) = v64;
  if (qword_1EC642178 != -1)
  {
    swift_once();
  }

  v24 = *algn_1EC644BE8;
  v25 = qword_1EC644BF0;
  v26 = unk_1EC644BF8;
  v27 = qword_1EC644C00;
  *(v23 + 32) = qword_1EC644BE0;
  *(v23 + 40) = v24;
  *(v23 + 48) = v25;
  *(v23 + 56) = v26;
  *(v23 + 64) = v27;

  v28 = sub_1D1828A0C(v23, 1, 1, 1, a2);

  v29 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(v28);

  v30 = *(v29 + 2);
  if (v30)
  {
    v60 = a2;
    v61 = v6;
    if (v30 >= 4)
    {
      v31 = v30 & 0x7FFFFFFFFFFFFFFCLL;
      v33 = (v29 + 48);
      v32 = 0.0;
      v34 = v30 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v32 = v32 + *(v33 - 2) + *(v33 - 1) + *v33 + v33[1];
        v33 += 4;
        v34 -= 4;
      }

      while (v34);
      if (v30 == v31)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v31 = 0;
      v32 = 0.0;
    }

    v35 = v30 - v31;
    v36 = &v29[8 * v31 + 32];
    do
    {
      v37 = *v36++;
      v32 = v32 + v37;
      --v35;
    }

    while (v35);
LABEL_18:
    v38 = v32 / v30;
    v39 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
    v41 = v40;
    v42 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v29, 1);
    v44 = v43;

    sub_1D1E66A6C();
    v45 = &v9[v18[5]];
    strcpy(v45, "humidity.fill");
    *(v45 + 7) = -4864;
    v46 = &v9[v18[6]];
    *v46 = v39;
    v46[1] = v41;
    v47 = &v9[v18[7]];
    *v47 = v42;
    v47[1] = v44;
    v48 = &v9[v18[8]];
    *v48 = v38;
    *(v48 + 8) = xmmword_1D1E774F0;
    v48[24] = 1;
    (*(v19 + 56))(v9, 0, 1, v18);
    a2 = v60;
    v6 = v61;
LABEL_19:
    v49 = &v9[v18[7]];
    v21 = *v49;
    v50 = *(v49 + 1);

    sub_1D1831068(v9);
    if (v50)
    {
      return v21;
    }

    goto LABEL_20;
  }

  (*(v19 + 56))(v9, 1, 1, v18);

  if (v63(v9, 1, v18) != 1)
  {
    goto LABEL_19;
  }

  sub_1D18304D4(v9);
LABEL_20:
  v51 = swift_allocObject();
  *(v51 + 16) = v64;
  if (qword_1EC642170 != -1)
  {
    swift_once();
  }

  v52 = unk_1EC644BC0;
  v53 = qword_1EC644BC8;
  v54 = unk_1EC644BD0;
  v55 = qword_1EC644BD8;
  *(v51 + 32) = qword_1EC644BB8;
  *(v51 + 40) = v52;
  *(v51 + 48) = v53;
  *(v51 + 56) = v54;
  *(v51 + 64) = v55;

  v56 = sub_1D1828A0C(v51, 1, 1, 0, a2);

  static ClimateSummarizer._airQualityGaugeData(from:)(v6, v56);

  if (v63(v6, 1, v18) == 1)
  {
    sub_1D18304D4(v6);
    return 0;
  }

  v57 = &v6[v18[7]];
  v21 = *v57;
  v58 = *(v57 + 1);

  sub_1D1831068(v6);
  if (!v58)
  {
    return 0;
  }

  return v21;
}

uint64_t static ClimateSummarizer.temperatureGaugeData(context:from:)@<X0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D1E739C0;
  if (qword_1EC642168 != -1)
  {
    swift_once();
  }

  v6 = *algn_1EC644B98;
  v7 = qword_1EC644BA0;
  v8 = unk_1EC644BA8;
  v9 = qword_1EC644BB0;
  *(v5 + 32) = qword_1EC644B90;
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  *(v5 + 56) = v8;
  *(v5 + 64) = v9;

  v10 = sub_1D1828A0C(v5, 1, 1, 1, a2);

  static ClimateSummarizer._temperatureGaugeData(context:from:)(v10, x8_0);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  if (qword_1EC642168 != -1)
  {
    swift_once();
  }

  v6 = *algn_1EC644B98;
  v7 = qword_1EC644BA0;
  v8 = unk_1EC644BA8;
  v9 = qword_1EC644BB0;
  *(inited + 32) = qword_1EC644B90;
  *(inited + 40) = v6;
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  *(inited + 64) = v9;

  v10 = sub_1D182AE80(a2, 0);
  v11 = sub_1D182AEF4(v10, 1);

  v12 = sub_1D1829C68(inited, 1, v11);

  swift_setDeallocating();
  sub_1D182BAC0(inited + 32);
  static ClimateSummarizer._temperatureGaugeData(context:from:)(v12, x8_0);
}

uint64_t static ClimateSummarizer.humidityGaugeData(context:from:addPercentageSign:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D1E739C0;
  if (qword_1EC642178 != -1)
  {
    swift_once();
  }

  v7 = *algn_1EC644BE8;
  v8 = qword_1EC644BF0;
  v9 = unk_1EC644BF8;
  v10 = qword_1EC644C00;
  *(v6 + 32) = qword_1EC644BE0;
  *(v6 + 40) = v7;
  *(v6 + 48) = v8;
  *(v6 + 56) = v9;
  *(v6 + 64) = v10;

  v11 = sub_1D1828A0C(v6, 1, 1, 1, a1);

  v12 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(v11);

  v13 = *(v12 + 2);
  if (v13)
  {
    if (v13 > 3)
    {
      v14 = v13 & 0x7FFFFFFFFFFFFFFCLL;
      v18 = (v12 + 48);
      v15 = 0.0;
      v19 = v13 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v15 = v15 + *(v18 - 2) + *(v18 - 1) + *v18 + v18[1];
        v18 += 4;
        v19 -= 4;
      }

      while (v19);
      if (v13 == v14)
      {
LABEL_14:
        v23 = v15 / v13;
        v24 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
        v26 = v25;
        v27 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v12, a2 & 1);
        v29 = v28;

        sub_1D1E66A6C();
        v30 = type metadata accessor for IconTextValueStringDataHolder(0);
        v31 = a3 + v30[5];
        strcpy(v31, "humidity.fill");
        *(v31 + 14) = -4864;
        v32 = (a3 + v30[6]);
        *v32 = v24;
        v32[1] = v26;
        v33 = (a3 + v30[7]);
        *v33 = v27;
        v33[1] = v29;
        v34 = a3 + v30[8];
        *v34 = v23;
        *(v34 + 8) = xmmword_1D1E774F0;
        *(v34 + 24) = 1;
        v35 = *(*(v30 - 1) + 56);

        return v35(a3, 0, 1, v30);
      }
    }

    else
    {
      v14 = 0;
      v15 = 0.0;
    }

    v20 = v13 - v14;
    v21 = &v12[8 * v14 + 32];
    do
    {
      v22 = *v21++;
      v15 = v15 + v22;
      --v20;
    }

    while (v20);
    goto LABEL_14;
  }

  v16 = type metadata accessor for IconTextValueStringDataHolder(0);
  (*(*(v16 - 8) + 56))(a3, 1, 1, v16);
}

uint64_t static ClimateSummarizer.airQualityGaugeData(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D1E739C0;
  if (qword_1EC642170 != -1)
  {
    swift_once();
  }

  v5 = unk_1EC644BC0;
  v6 = qword_1EC644BC8;
  v7 = unk_1EC644BD0;
  v8 = qword_1EC644BD8;
  *(v4 + 32) = qword_1EC644BB8;
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  *(v4 + 56) = v7;
  *(v4 + 64) = v8;

  v9 = sub_1D1828A0C(v4, 1, 1, 0, a1);

  static ClimateSummarizer._airQualityGaugeData(from:)(a2, v9);
}

uint64_t static ClimateSummarizer.climateSummary(context:from:for:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v67[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v67[-v12];
  v14 = *a3;
  if (v14 == 8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    if (qword_1EC642170 != -1)
    {
      swift_once();
    }

    v39 = unk_1EC644BC0;
    v40 = qword_1EC644BC8;
    v41 = unk_1EC644BD0;
    v42 = qword_1EC644BD8;
    *(inited + 32) = qword_1EC644BB8;
    *(inited + 40) = v39;
    *(inited + 48) = v40;
    *(inited + 56) = v41;
    *(inited + 64) = v42;

    v43 = sub_1D182AE80(a2, 0);
    v44 = sub_1D182AEF4(v43, 0);

    v45 = sub_1D1829C68(inited, 1, v44);

    swift_setDeallocating();
    sub_1D182BAC0(inited + 32);
    static ClimateSummarizer._airQualityGaugeData(from:)(v8, v45);

    v46 = type metadata accessor for IconTextValueStringDataHolder(0);
    if ((*(*(v46 - 8) + 48))(v8, 1, v46) == 1)
    {
      v25 = v8;
      goto LABEL_21;
    }

    v15 = *&v8[*(v46 + 28)];

    v47 = v8;
LABEL_29:
    sub_1D1831068(v47);
    return v15;
  }

  if (v14 == 41)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_1D1E739C0;
    if (qword_1EC642178 != -1)
    {
      swift_once();
    }

    v27 = *algn_1EC644BE8;
    v28 = qword_1EC644BF0;
    v29 = unk_1EC644BF8;
    v30 = qword_1EC644C00;
    *(v26 + 32) = qword_1EC644BE0;
    *(v26 + 40) = v27;
    *(v26 + 48) = v28;
    *(v26 + 56) = v29;
    *(v26 + 64) = v30;

    v31 = sub_1D182AE80(a2, 0);
    v32 = sub_1D182AEF4(v31, 0);

    v33 = sub_1D1829C68(v26, 1, v32);

    swift_setDeallocating();
    sub_1D182BAC0(v26 + 32);
    v34 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(v33);

    v35 = *(v34 + 2);
    if (!v35)
    {
      v48 = type metadata accessor for IconTextValueStringDataHolder(0);
      v49 = *(v48 - 1);
      (*(v49 + 56))(v11, 1, 1, v48);

      if ((*(v49 + 48))(v11, 1, v48) == 1)
      {
        v25 = v11;
        goto LABEL_21;
      }

      goto LABEL_28;
    }

    if (v35 >= 4)
    {
      v36 = v35 & 0x7FFFFFFFFFFFFFFCLL;
      v50 = (v34 + 48);
      v37 = 0.0;
      v51 = v35 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v37 = v37 + *(v50 - 2) + *(v50 - 1) + *v50 + v50[1];
        v50 += 4;
        v51 -= 4;
      }

      while (v51);
      if (v35 == v36)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v36 = 0;
      v37 = 0.0;
    }

    v52 = v35 - v36;
    v53 = &v34[8 * v36 + 32];
    do
    {
      v54 = *v53++;
      v37 = v37 + v54;
      --v52;
    }

    while (v52);
LABEL_27:
    v55 = v37 / v35;
    v56 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
    v58 = v57;
    v59 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v34, 1);
    v61 = v60;

    sub_1D1E66A6C();
    v48 = type metadata accessor for IconTextValueStringDataHolder(0);
    v62 = &v11[v48[5]];
    strcpy(v62, "humidity.fill");
    *(v62 + 7) = -4864;
    v63 = &v11[v48[6]];
    *v63 = v56;
    v63[1] = v58;
    v64 = &v11[v48[7]];
    *v64 = v59;
    v64[1] = v61;
    v65 = &v11[v48[8]];
    *v65 = v55;
    *(v65 + 8) = xmmword_1D1E774F0;
    v65[24] = 1;
    (*(*(v48 - 1) + 56))(v11, 0, 1, v48);
LABEL_28:
    type metadata accessor for IconTextValueStringDataHolder(0);
    v15 = *&v11[v48[7]];

    v47 = v11;
    goto LABEL_29;
  }

  v15 = 0;
  if (v14 == 44)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_1D1E739C0;
    if (qword_1EC642168 != -1)
    {
      swift_once();
    }

    v17 = *algn_1EC644B98;
    v18 = qword_1EC644BA0;
    v19 = unk_1EC644BA8;
    v20 = qword_1EC644BB0;
    *(v16 + 32) = qword_1EC644B90;
    *(v16 + 40) = v17;
    *(v16 + 48) = v18;
    *(v16 + 56) = v19;
    *(v16 + 64) = v20;

    v21 = sub_1D182AE80(a2, 0);
    v22 = sub_1D182AEF4(v21, 1);

    v23 = sub_1D1829C68(v16, 1, v22);

    swift_setDeallocating();
    sub_1D182BAC0(v16 + 32);
    static ClimateSummarizer._temperatureGaugeData(context:from:)(v23, v13);

    v24 = type metadata accessor for IconTextValueStringDataHolder(0);
    if ((*(*(v24 - 8) + 48))(v13, 1, v24) == 1)
    {
      v25 = v13;
LABEL_21:
      sub_1D18304D4(v25);
      return 0;
    }

    v15 = *&v13[*(v24 + 28)];

    v47 = v13;
    goto LABEL_29;
  }

  return v15;
}

uint64_t static ClimateSummarizer.humidityGaugeData(context:from:skipHiddenServices:skipCalibratingServices:addPercentageSign:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, char a3@<W3>, char a4@<W4>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  if (qword_1EC642178 != -1)
  {
    swift_once();
  }

  v11 = *algn_1EC644BE8;
  v12 = qword_1EC644BF0;
  v13 = unk_1EC644BF8;
  v14 = qword_1EC644C00;
  *(inited + 32) = qword_1EC644BE0;
  *(inited + 40) = v11;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  *(inited + 64) = v14;

  v15 = sub_1D182AE80(a1, a2 & 1);
  v16 = sub_1D182AEF4(v15, a3 & 1);

  v17 = sub_1D1829C68(inited, 1, v16);

  swift_setDeallocating();
  sub_1D182BAC0(inited + 32);
  v18 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(v17);

  v19 = *(v18 + 2);
  if (!v19)
  {
    v22 = type metadata accessor for IconTextValueStringDataHolder(0);
    (*(*(v22 - 8) + 56))(a5, 1, 1, v22);
  }

  if (v19 > 3)
  {
    v20 = v19 & 0x7FFFFFFFFFFFFFFCLL;
    v24 = (v18 + 48);
    v21 = 0.0;
    v25 = v19 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v21 = v21 + *(v24 - 2) + *(v24 - 1) + *v24 + v24[1];
      v24 += 4;
      v25 -= 4;
    }

    while (v25);
    if (v19 == v20)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v20 = 0;
    v21 = 0.0;
  }

  v26 = v19 - v20;
  v27 = &v18[8 * v20 + 32];
  do
  {
    v28 = *v27++;
    v21 = v21 + v28;
    --v26;
  }

  while (v26);
LABEL_12:
  v29 = v21 / v19;
  v30 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
  v32 = v31;
  v33 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v18, a4 & 1);
  v35 = v34;

  sub_1D1E66A6C();
  v36 = type metadata accessor for IconTextValueStringDataHolder(0);
  v37 = a5 + v36[5];
  strcpy(v37, "humidity.fill");
  *(v37 + 14) = -4864;
  v38 = (a5 + v36[6]);
  *v38 = v30;
  v38[1] = v32;
  v39 = (a5 + v36[7]);
  *v39 = v33;
  v39[1] = v35;
  v40 = a5 + v36[8];
  *v40 = v29;
  *(v40 + 8) = xmmword_1D1E774F0;
  *(v40 + 24) = 1;
  return (*(*(v36 - 1) + 56))(a5, 0, 1, v36);
}

uint64_t static ClimateSummarizer.airQualityGaugeData(from:skipHiddenServices:skipCalibratingServices:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  if (qword_1EC642170 != -1)
  {
    swift_once();
  }

  v9 = unk_1EC644BC0;
  v10 = qword_1EC644BC8;
  v11 = unk_1EC644BD0;
  v12 = qword_1EC644BD8;
  *(inited + 32) = qword_1EC644BB8;
  *(inited + 40) = v9;
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  *(inited + 64) = v12;

  v13 = sub_1D182AE80(a1, a2 & 1);
  v14 = sub_1D182AEF4(v13, a3 & 1);

  v15 = sub_1D1829C68(inited, 1, v14);

  swift_setDeallocating();
  sub_1D182BAC0(inited + 32);
  static ClimateSummarizer._airQualityGaugeData(from:)(a4, v15);
}

uint64_t static ClimateSummarizer._temperatureGaugeData(context:from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(a1);
  v4 = *(v3 + 2);
  if (v4)
  {
    if (v4 > 3)
    {
      v5 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      v9 = (v3 + 48);
      v6 = 0.0;
      v10 = v4 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v6 = v6 + *(v9 - 2) + *(v9 - 1) + *v9 + v9[1];
        v9 += 4;
        v10 -= 4;
      }

      while (v10);
      if (v4 == v5)
      {
LABEL_12:
        v14 = v6 / v4;
        v15 = v3;
        v16 = _s13HomeDataModel17ClimateSummarizerO15temperatureIconySSSaySdGFZ_0(v3);
        v18 = v17;
        v19 = static String.hfLocalized(_:)(0xD000000000000020, 0x80000001D1EBA230);
        v21 = v20;
        v22 = static ClimateSummarizer.temperatureRangeString(_:)(v15);
        v24 = v23;

        sub_1D1E66A6C();
        v25 = type metadata accessor for IconTextValueStringDataHolder(0);
        v26 = (a2 + v25[5]);
        *v26 = v16;
        v26[1] = v18;
        v27 = (a2 + v25[6]);
        *v27 = v19;
        v27[1] = v21;
        v28 = (a2 + v25[7]);
        *v28 = v22;
        v28[1] = v24;
        v29 = a2 + v25[8];
        *v29 = v14;
        *(v29 + 8) = xmmword_1D1E77500;
        *(v29 + 24) = 1;
        v30 = *(*(v25 - 1) + 56);

        return v30(a2, 0, 1, v25);
      }
    }

    else
    {
      v5 = 0;
      v6 = 0.0;
    }

    v11 = v4 - v5;
    v12 = &v3[8 * v5 + 32];
    do
    {
      v13 = *v12++;
      v6 = v6 + v13;
      --v11;
    }

    while (v11);
    goto LABEL_12;
  }

  v7 = type metadata accessor for IconTextValueStringDataHolder(0);
  (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
}

double static ClimateSummarizer.doubleAverage(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = 0.0;
    return v3 / v1;
  }

  if (v1 <= 3)
  {
    v2 = 0;
    v3 = 0.0;
LABEL_8:
    v6 = v1 - v2;
    v7 = (a1 + 8 * v2 + 32);
    do
    {
      v8 = *v7++;
      v3 = v3 + v8;
      --v6;
    }

    while (v6);
    return v3 / v1;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v4 = (a1 + 48);
  v3 = 0.0;
  v5 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v3 = v3 + *(v4 - 2) + *(v4 - 1) + *v4 + v4[1];
    v4 += 4;
    v5 -= 4;
  }

  while (v5);
  if (v1 != v2)
  {
    goto LABEL_8;
  }

  return v3 / v1;
}

uint64_t static ClimateSummarizer.temperatureRangeString(_:)(uint64_t a1)
{
  v2 = 0x9380E29380E2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v87 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v99 = v87 - v8;
  v9 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C70, &unk_1D1E77550);
  v13 = a1;
  v14 = *(v12 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v87 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v22 = v87 - v21;
  v23 = *(v19 + 16);
  if (v23)
  {
    v24 = *(v19 + 32);
    v25 = v23 - 1;
    v97 = v20;
    if (v25)
    {
      v26 = (v19 + 40);
      do
      {
        v27 = *v26++;
        v28 = v27;
        if (v27 < v24)
        {
          v24 = v28;
        }

        --v25;
      }

      while (v25);
    }

    sub_1D1745ACC(v19);
    if ((v29 & 1) == 0)
    {
      v90 = v4;
      v93 = v12;
      v94 = v6;
      v95 = v3;
      v92 = v14;
      v30 = sub_1D18311BC();
      sub_1D1E66ABC();
      sub_1D1E666FC();
      v31 = sub_1D1E6838C();
      v32 = objc_opt_self();
      v33 = [v32 fahrenheit];
      v34 = sub_1D1E684FC();

      if ((v34 & 1) == 0)
      {
        v35 = [v32 celsius];
        sub_1D1E684FC();

        v31 = v35;
      }

      v36 = [v32 celsius];
      sub_1D1E65F9C();
      sub_1D1E66ABC();
      v98 = v30;
      sub_1D1E666FC();
      v37 = sub_1D1E6838C();
      v38 = [v32 fahrenheit];
      v39 = sub_1D1E684FC();

      v91 = v11;
      v96 = v22;
      if ((v39 & 1) == 0)
      {
        v40 = [v32 celsius];
        sub_1D1E684FC();

        v37 = v40;
      }

      v41 = v92;

      v42 = [v32 celsius];
      sub_1D1E65F9C();
      v43 = v94;
      static ClimateSummarizer.temperatureNumberFormatStyle.getter();
      sub_1D1E66ABC();
      sub_1D1E666FC();
      v44 = sub_1D1E6838C();
      v45 = v97;
      v92 = v18;
      v46 = v93;
      sub_1D1E65FFC();

      sub_1D1E65FAC();
      v48 = v47;
      v49 = *(v41 + 1);
      v49(v45, v46);
      v103 = v48;
      v50 = v95;
      v51 = sub_1D1E6661C();
      v88 = v52;
      v89 = v51;
      v53 = *(v90 + 1);
      v53(v43, v50);
      static ClimateSummarizer.temperatureNumberFormatStyle.getter();
      sub_1D1E66ABC();
      sub_1D1E666FC();
      v54 = v53;
      v55 = sub_1D1E6838C();
      sub_1D1E65FFC();

      sub_1D1E65FAC();
      v57 = v56;
      v58 = v46;
      v59 = v49;
      v49(v45, v58);
      v103 = v57;
      v60 = sub_1D1E6661C();
      v62 = v61;
      v63 = v43;
      v64 = v88;
      v54(v63, v50);
      if (v89 == v60 && v64 == v62)
      {
      }

      else
      {
        v65 = sub_1D1E6904C();

        if ((v65 & 1) == 0)
        {
          v103 = 0;
          v104 = 0xE000000000000000;
          v89 = v54;
          sub_1D1E66ABC();
          sub_1D1E666FC();
          v74 = sub_1D1E6838C();
          v90 = v59;
          v75 = v97;
          v76 = v93;
          sub_1D1E65FFC();

          sub_1D1E65FAC();
          v78 = v77;
          v90(v75, v76);
          v100 = v78;
          v79 = v94;
          static ClimateSummarizer.temperatureNumberFormatStyle.getter();
          v88 = sub_1D173FC5C();
          v87[1] = sub_1D1831208();
          v80 = v95;
          sub_1D1E675AC();
          v89(v79, v80);
          MEMORY[0x1D3890F70](v101, v102);

          MEMORY[0x1D3890F70](9666786, 0xA300000000000000);
          sub_1D1E66ABC();
          sub_1D1E666FC();
          v81 = sub_1D1E6838C();
          v69 = v92;
          sub_1D1E65FFC();

          sub_1D1E65FAC();
          v83 = v82;
          v84 = v75;
          v59 = v90;
          v90(v84, v76);
          v100 = v83;
          static ClimateSummarizer.temperatureNumberFormatStyle.getter();
          sub_1D1E675AC();
          v85 = v79;
          v68 = v76;
          v89(v85, v80);
          goto LABEL_19;
        }
      }

      v103 = 0;
      v104 = 0xE000000000000000;
      sub_1D1E66ABC();
      sub_1D1E666FC();
      v66 = sub_1D1E6838C();
      v67 = v97;
      v69 = v92;
      v68 = v93;
      sub_1D1E65FFC();

      sub_1D1E65FAC();
      v71 = v70;
      v59(v67, v68);
      v100 = v71;
      v72 = v94;
      static ClimateSummarizer.temperatureNumberFormatStyle.getter();
      sub_1D173FC5C();
      sub_1D1831208();
      v73 = v95;
      sub_1D1E675AC();
      v54(v72, v73);
LABEL_19:
      MEMORY[0x1D3890F70](v101, v102);

      MEMORY[0x1D3890F70](45250, 0xA200000000000000);
      v2 = v103;
      v59(v69, v68);
      v59(v96, v68);
    }
  }

  return v2;
}

uint64_t static ClimateSummarizer._humidityGaugeData(context:from:addPercentageSign:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v5 = _s13HomeDataModel17ValueAccumulatorsO12doubleValues4fromSaySdGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(a1);
  v6 = v5;
  v7 = *(v5 + 2);
  if (v7)
  {
    if (v7 > 3)
    {
      v8 = v7 & 0x7FFFFFFFFFFFFFFCLL;
      v12 = (v5 + 48);
      v9 = 0.0;
      v13 = v7 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v9 = v9 + *(v12 - 2) + *(v12 - 1) + *v12 + v12[1];
        v12 += 4;
        v13 -= 4;
      }

      while (v13);
      if (v7 == v8)
      {
LABEL_12:
        v17 = v9 / v7;
        v18 = static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EBA210);
        v20 = v19;
        v21 = _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(v6, a2 & 1);
        v23 = v22;

        sub_1D1E66A6C();
        v24 = type metadata accessor for IconTextValueStringDataHolder(0);
        v25 = a3 + v24[5];
        strcpy(v25, "humidity.fill");
        *(v25 + 14) = -4864;
        v26 = (a3 + v24[6]);
        *v26 = v18;
        v26[1] = v20;
        v27 = (a3 + v24[7]);
        *v27 = v21;
        v27[1] = v23;
        v28 = a3 + v24[8];
        *v28 = v17;
        *(v28 + 8) = xmmword_1D1E774F0;
        *(v28 + 24) = 1;
        v29 = *(*(v24 - 1) + 56);

        return v29(a3, 0, 1, v24);
      }
    }

    else
    {
      v8 = 0;
      v9 = 0.0;
    }

    v14 = v7 - v8;
    v15 = &v5[8 * v8 + 32];
    do
    {
      v16 = *v15++;
      v9 = v9 + v16;
      --v14;
    }

    while (v14);
    goto LABEL_12;
  }

  v10 = type metadata accessor for IconTextValueStringDataHolder(0);
  (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
}

uint64_t static ClimateSummarizer._airQualityGaugeData(from:)@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = _s13HomeDataModel17ValueAccumulatorsO9intValues4fromSaySiGSayAA34StaticServiceCharacteristicDoubletVG_tFZ_0(a2);
  v4 = v3;
  if (*(v3 + 16))
  {
    v5 = sub_1D183126C(v3);
    if ((v6 & 1) == 0)
    {
      v13 = v5;
      v14 = sub_1D1745B10(v4);
      v16 = v15;

      if (v16)
      {
        goto LABEL_4;
      }

      v17 = 6 - v13;
      if (__OFSUB__(6, v13))
      {
        __break(1u);
        return result;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v18 = 0xE700000000000000;
          v19 = 0x776F6C2E697161;
LABEL_15:
          v20 = 0xD000000000000023;
          v21 = static String.hfLocalized(_:)(0xD00000000000001FLL, 0x80000001D1EBA260);
          v23 = v22;
          v24 = 0;
          if (v14 <= 2)
          {
            if (v14 == 1)
            {
              v26 = "ValueAirQualityGood";
              v20 = 0xD000000000000028;
              goto LABEL_27;
            }

            v25 = 0;
            if (v14 == 2)
            {
              v26 = "ValueAirQualityFair";
              goto LABEL_27;
            }
          }

          else
          {
            if (v14 == 3)
            {
              v26 = "ValueAirQualityInferior";
              goto LABEL_27;
            }

            if (v14 == 4)
            {
              v26 = "ValueAirQualityPoor";
              v20 = 0xD000000000000027;
              goto LABEL_27;
            }

            v25 = 0;
            if (v14 == 5)
            {
              v26 = "HFCharacteristicTitleAirQuality";
LABEL_27:
              v24 = static String.hfLocalized(_:)(v20, v26 | 0x8000000000000000);
              v25 = v27;
            }
          }

          sub_1D1E66A6C();
          v28 = type metadata accessor for IconTextValueStringDataHolder(0);
          v29 = (a1 + v28[5]);
          *v29 = v19;
          v29[1] = v18;
          v30 = (a1 + v28[6]);
          *v30 = v21;
          v30[1] = v23;
          v31 = (a1 + v28[7]);
          *v31 = v24;
          v31[1] = v25;
          v32 = a1 + v28[8];
          *v32 = v17;
          *(v32 + 8) = xmmword_1D1E77510;
          *(v32 + 24) = 1;
          v8 = *(*(v28 - 1) + 56);
          v9 = v28;
          v10 = a1;
          v11 = 0;
          goto LABEL_5;
        }
      }

      else if (v13 == 5)
      {
        v18 = 0xE800000000000000;
        v19 = 0x686769682E697161;
        goto LABEL_15;
      }

      v19 = 0x6964656D2E697161;
      v18 = 0xEA00000000006D75;
      goto LABEL_15;
    }
  }

LABEL_4:
  v7 = type metadata accessor for IconTextValueStringDataHolder(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = v7;
  v10 = a1;
  v11 = 1;
LABEL_5:

  return v8(v10, v11, 1, v9);
}

uint64_t static ClimateSummarizer.airQualityIcon(_:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x6964656D2E697161;
  }

  if (a1 > 2)
  {
    if (a1 == 5)
    {
      return 0x686769682E697161;
    }

    return 0x6964656D2E697161;
  }

  if (a1 != 1)
  {
    return 0x6964656D2E697161;
  }

  return 0x776F6C2E697161;
}

uint64_t static ClimateSummarizer.airQualityString(_:)(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0xD000000000000023;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v6 = "ValueAirQualityGood";
      v5 = 0xD000000000000028;
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }

    if (a1 == 2)
    {
      v6 = "ValueAirQualityFair";
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        v6 = "ValueAirQualityInferior";
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      case 4:
        v6 = "ValueAirQualityPoor";
        v5 = 0xD000000000000027;
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      case 5:
        v6 = "HFCharacteristicTitleAirQuality";
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }
  }

  return v4;
}

uint64_t static ClimateSummarizer.airQualityRangeString(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v6 = vdupq_n_s64(v2);
      v7 = (a1 + 56);
      v8 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v9 = v6;
      do
      {
        v6 = vbslq_s8(vcgtq_s64(v6, v7[-1]), v7[-1], v6);
        v9 = vbslq_s8(vcgtq_s64(v9, *v7), *v7, v9);
        v7 += 2;
        v8 -= 4;
      }

      while (v8);
      v10 = vbslq_s8(vcgtq_s64(v9, v6), v6, v9);
      v11 = vextq_s8(v10, v10, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v11, v10.i64[0]), *v10.i8, v11);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v4 = 1;
    }

    v12 = v1 - v4;
    v13 = (a1 + 8 * v4 + 32);
    do
    {
      v15 = *v13++;
      v14 = v15;
      if (v15 < v2)
      {
        v2 = v14;
      }

      --v12;
    }

    while (v12);
  }

LABEL_13:
  v16 = sub_1D1745B10(a1);
  if (v17)
  {
    return 0;
  }

  v18 = v16;
  result = 0;
  v19 = 0xD000000000000023;
  v20 = "ValueAirQualityGood";
  if (v2 <= 2)
  {
    if (v2 != 1)
    {
      if (v2 != 2)
      {
        return result;
      }

      v21 = "HFCharacteristicValueAirQualityGood";
      goto LABEL_24;
    }

    v23 = 0xD000000000000028;
    v22 = "ValueAirQualityGood";
  }

  else
  {
    if (v2 == 3)
    {
      v21 = "HFCharacteristicValueAirQualityFair";
LABEL_24:
      v22 = (v21 - 32);
      v23 = 0xD000000000000023;
      goto LABEL_27;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        return result;
      }

      v21 = "HFCharacteristicValueAirQualityPoor";
      goto LABEL_24;
    }

    v22 = "ValueAirQualityPoor";
    v23 = 0xD000000000000027;
  }

LABEL_27:
  v24 = static String.hfLocalized(_:)(v23, v22 | 0x8000000000000000);
  v26 = v25;
  if (v18 <= 2)
  {
    if (v18 != 1)
    {
      if (v18 == 2)
      {
        v27 = "HFCharacteristicValueAirQualityGood";
        goto LABEL_36;
      }

LABEL_45:

      return 0;
    }

    v19 = 0xD000000000000028;
  }

  else
  {
    if (v18 == 3)
    {
      v27 = "HFCharacteristicValueAirQualityFair";
      goto LABEL_36;
    }

    if (v18 != 4)
    {
      if (v18 == 5)
      {
        v27 = "HFCharacteristicValueAirQualityPoor";
LABEL_36:
        v20 = (v27 - 32);
        goto LABEL_39;
      }

      goto LABEL_45;
    }

    v20 = "ValueAirQualityPoor";
    v19 = 0xD000000000000027;
  }

LABEL_39:
  v29 = static String.hfLocalized(_:)(v19, v20 | 0x8000000000000000);
  if (v29 == v24 && v28 == v26 || (sub_1D1E6904C() & 1) != 0)
  {

    return v29;
  }

  else
  {
    MEMORY[0x1D3890F70](9666786, 0xA300000000000000);
    MEMORY[0x1D3890F70](v24, v26);

    return v29;
  }
}

uint64_t sub_1D182F12C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1D182F170(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[4];
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = a1 + 7;
    do
    {
      v5 = *(v4 - 1);
      if (sub_1D1E6934C())
      {
        v2 = v5;
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t static ClimateSummarizer.temperatureNumberFormatStyle.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D1E6673C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  sub_1D1E66ABC();
  sub_1D173FC5C();
  sub_1D1E6662C();
  sub_1D18311BC();
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v10 = sub_1D1E6838C();
  v11 = [objc_opt_self() celsius];
  sub_1D1E684FC();

  sub_1D1E6672C();
  MEMORY[0x1D388FCE0](v4, v6);
  (*(v2 + 8))(v4, v1);
  return (*(v7 + 8))(v9, v6);
}

uint64_t static ClimateSummarizer.preferredTemperatureUnit.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1D18311BC();
  sub_1D1E66ABC();
  sub_1D1E666FC();
  return sub_1D1E6838C();
}

uint64_t static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(unsigned __int8 *a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C88, &qword_1D1EAF050);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C90, &qword_1D1E77560);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C98, &qword_1D1E77568);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v35 = &v32 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C70, &unk_1D1E77550);
  v34 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v19 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = *a1;
  v37 = v10;
  v38 = v9;
  v33 = v6;
  if (v20)
  {
    if (v20 == 1)
    {
      v21 = [objc_opt_self() celsius];
    }

    else
    {
      v21 = [objc_opt_self() fahrenheit];
    }

    v22 = v21;
  }

  else
  {
    sub_1D18311BC();
    sub_1D1E66ABC();
    sub_1D1E666FC();
    v22 = sub_1D1E6838C();
  }

  v23 = v22;
  v39 = v20;
  _s13HomeDataModel17ClimateSummarizerO18roundedTemperature_16temperatureScaleS2d_AC0gI0OtFZ_0(&v39, a2);
  v24 = [objc_opt_self() celsius];
  sub_1D18311BC();
  sub_1D1E65F9C();
  sub_1D1E65FFC();
  v25 = *(v34 + 8);
  v25(v15, v12);
  sub_1D1E65FDC();
  sub_1D1E666EC();
  v26 = v33;
  static ClimateSummarizer.personalizedTemperatureNumberFormatStyle(unitTemperature:)(v23);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
  sub_1D1E66ABC();
  v28 = v35;
  sub_1D1E65FEC();
  v29 = v38;
  v30 = sub_1D1E65FCC();

  (*(v37 + 8))(v28, v29);
  v25(v17, v12);
  return v30;
}

id ClimateSummarizer.TemperatureScale.value.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if (*v0)
  {
    if (*v0 == 1)
    {
      v3 = [objc_opt_self() celsius];
    }

    else
    {
      v3 = [objc_opt_self() fahrenheit];
    }

    return v3;
  }

  else
  {
    sub_1D18311BC();
    sub_1D1E66ABC();
    sub_1D1E666FC();
    return sub_1D1E6838C();
  }
}

uint64_t static ClimateSummarizer.personalizedTemperatureNumberFormatStyle(unitTemperature:)(uint64_t a1)
{
  v1 = sub_1D1E6673C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  sub_1D1E66ABC();
  sub_1D173FC5C();
  sub_1D1E6662C();
  sub_1D18311BC();
  v10 = [objc_opt_self() celsius];
  sub_1D1E684FC();

  sub_1D1E6672C();
  MEMORY[0x1D388FCE0](v4, v6);
  (*(v2 + 8))(v4, v1);
  return (*(v7 + 8))(v9, v6);
}

uint64_t static ClimateSummarizer.strippedTemperatureString(_:)(double a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v27 = &v25 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C70, &unk_1D1E77550);
  v26 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  sub_1D18311BC();
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v11 = sub_1D1E6838C();
  v12 = objc_opt_self();
  v13 = [v12 fahrenheit];
  v14 = sub_1D1E684FC();

  if ((v14 & 1) == 0)
  {
    v15 = [v12 celsius];
    sub_1D1E684FC();

    v11 = v15;
  }

  v16 = [v12 celsius];
  sub_1D1E65F9C();
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v17 = sub_1D1E6838C();
  sub_1D1E65FFC();

  sub_1D1E65FAC();
  v19 = v18;
  v20 = *(v26 + 8);
  v20(v8, v5);
  v30 = v19;
  v21 = v27;
  static ClimateSummarizer.temperatureNumberFormatStyle.getter();
  sub_1D173FC5C();
  sub_1D1831208();
  v22 = v29;
  sub_1D1E675AC();
  (*(v28 + 8))(v21, v22);
  MEMORY[0x1D3890F70](v31, v32);

  v23 = v33;
  v20(v10, v5);
  return v23;
}

double NSUnitTemperature.preferredStepSize.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 fahrenheit];
  sub_1D18311BC();
  v2 = sub_1D1E684FC();

  if (v2)
  {
    return 0.555555556;
  }

  v4 = [v0 celsius];
  sub_1D1E684FC();

  return 0.5;
}

uint64_t sub_1D183027C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B38, &unk_1D1E78E70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D1E6F900;
  if (qword_1EC642168 != -1)
  {
    swift_once();
  }

  v1 = *algn_1EC644B98;
  v2 = qword_1EC644BA0;
  v3 = unk_1EC644BA8;
  v4 = qword_1EC644BB0;
  *(v0 + 32) = qword_1EC644B90;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  v5 = qword_1EC642170;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = unk_1EC644BC0;
  v7 = qword_1EC644BC8;
  v8 = unk_1EC644BD0;
  v9 = qword_1EC644BD8;
  *(v0 + 72) = qword_1EC644BB8;
  *(v0 + 80) = v6;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  v10 = qword_1EC642178;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = *algn_1EC644BE8;
  v12 = qword_1EC644BF0;
  v13 = unk_1EC644BF8;
  v14 = qword_1EC644C00;
  *(v0 + 112) = qword_1EC644BE0;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 136) = v13;
  *(v0 + 144) = v14;
  qword_1EC644B88 = v0;
}

uint64_t static ClimateSummarizer.allClimateSummaryFetchSpecifications.getter()
{
  if (qword_1EC642160 != -1)
  {
    swift_once();
  }
}

void sub_1D183048C()
{
  qword_1EC644B90 = 0xD000000000000013;
  *algn_1EC644B98 = 0x80000001D1EBA460;
  qword_1EC644BA0 = &unk_1F4D622E8;
  unk_1EC644BA8 = MEMORY[0x1E69E7CC0];
  qword_1EC644BB0 = &unk_1F4D62310;
}

uint64_t sub_1D18304D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C58, &unk_1D1E77530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ClimateSummarizer.temperatureSensorsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642168 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EC644B98;
  v2 = qword_1EC644BA0;
  v3 = unk_1EC644BA8;
  v4 = qword_1EC644BB0;
  *a1 = qword_1EC644B90;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D18305E0()
{
  qword_1EC644BB8 = 0xD000000000000013;
  unk_1EC644BC0 = 0x80000001D1EBA3D0;
  qword_1EC644BC8 = &unk_1F4D62388;
  unk_1EC644BD0 = MEMORY[0x1E69E7CC0];
  qword_1EC644BD8 = &unk_1F4D623B0;
}

uint64_t static ClimateSummarizer.airQualitySensorsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642170 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EC644BC0;
  v2 = qword_1EC644BC8;
  v3 = unk_1EC644BD0;
  v4 = qword_1EC644BD8;
  *a1 = qword_1EC644BB8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D18306CC()
{
  qword_1EC644BE0 = 0xD000000000000010;
  *algn_1EC644BE8 = 0x80000001D1EBA440;
  qword_1EC644BF0 = &unk_1F4D62338;
  unk_1EC644BF8 = MEMORY[0x1E69E7CC0];
  qword_1EC644C00 = &unk_1F4D62360;
}

uint64_t static ClimateSummarizer.humiditySensorsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642178 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EC644BE8;
  v2 = qword_1EC644BF0;
  v3 = unk_1EC644BF8;
  v4 = qword_1EC644C00;
  *a1 = qword_1EC644BE0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D18307B8()
{
  qword_1EC644C08 = 0xD000000000000017;
  unk_1EC644C10 = 0x80000001D1EBA390;
  qword_1EC644C18 = &unk_1F4D623D8;
  unk_1EC644C20 = MEMORY[0x1E69E7CC0];
  qword_1EC644C28 = &unk_1F4D62400;
}

uint64_t static ClimateSummarizer.carbonMonoxideSensorsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642180 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = unk_1EC644C10;
  v2 = qword_1EC644C18;
  v3 = unk_1EC644C20;
  v4 = qword_1EC644C28;
  *a1 = qword_1EC644C08;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

void sub_1D18308A4()
{
  qword_1EC644C30 = 0xD000000000000016;
  *algn_1EC644C38 = 0x80000001D1EBA370;
  qword_1EC644C40 = &unk_1F4D62428;
  unk_1EC644C48 = MEMORY[0x1E69E7CC0];
  qword_1EC644C50 = &unk_1F4D62450;
}

uint64_t static ClimateSummarizer.carbonDioxideSensorsFetchSpecification.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC642188 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = *algn_1EC644C38;
  v2 = qword_1EC644C40;
  v3 = unk_1EC644C48;
  v4 = qword_1EC644C50;
  *a1 = qword_1EC644C30;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
}

HomeDataModel::ClimateSummarizer::TemperatureScale_optional __swiftcall ClimateSummarizer.TemperatureScale.init(rawValue:)(Swift::UInt rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

double _s13HomeDataModel17ClimateSummarizerO18roundedTemperature_16temperatureScaleS2d_AC0gI0OtFZ_0(_BYTE *a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  if (*a1)
  {
    if (*a1 == 1)
    {
      v6 = [objc_opt_self() celsius];
    }

    else
    {
      v6 = [objc_opt_self() fahrenheit];
    }

    v7 = v6;
  }

  else
  {
    sub_1D18311BC();
    sub_1D1E66ABC();
    sub_1D1E666FC();
    v7 = sub_1D1E6838C();
  }

  v8 = v7;
  v9 = objc_opt_self();
  v10 = [v9 fahrenheit];
  sub_1D18311BC();
  v11 = sub_1D1E684FC();

  if (v11)
  {
    v12 = 0.555555556;
  }

  else
  {
    v13 = [v9 celsius];
    sub_1D1E684FC();

    v12 = 0.5;
    v8 = v13;
  }

  return v12 * round(a2 / v12);
}

uint64_t _s13HomeDataModel17ClimateSummarizerO19humidityRangeString_17addPercentageSignSSSgSaySdG_SbtFZ_0(uint64_t a1, char a2)
{
  v4 = sub_1D1E66ADC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  v10 = v8 - 1;
  if (v10)
  {
    v11 = (a1 + 40);
    do
    {
      v12 = *v11++;
      v13 = v12;
      if (v12 < v9)
      {
        v9 = v13;
      }

      --v10;
    }

    while (v10);
  }

  result = sub_1D1745ACC(a1);
  if (v15)
  {
    return 0;
  }

  v16 = round(v9);
  if (v16 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = round(*&result);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_38;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v18 = v16;
  v19 = v17;
  v20 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v20 setNumberStyle_];
  [v20 setUsesSignificantDigits_];
  sub_1D1E66ACC();
  v21 = sub_1D1E66AAC();
  (*(v5 + 8))(v7, v4);
  [v20 setLocale_];

  if (v18 == v19)
  {
    if (a2)
    {
      v22 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
      [v22 setNumberStyle_];
      v23 = sub_1D1E680EC();
      v24 = [v22 stringFromNumber_];

      if (v24)
      {
        v25 = sub_1D1E6781C();

        return v25;
      }

      return 0;
    }

    v31 = sub_1D1E6821C();
    v32 = [v20 stringFromNumber_];

    if (!v32)
    {

      return 0;
    }

    v33 = sub_1D1E6781C();

    return v33;
  }

  else
  {
    v26 = sub_1D1E6821C();
    v27 = [v20 stringFromNumber_];

    if (v27)
    {
      v28 = sub_1D1E6781C();
      v30 = v29;
    }

    else
    {
      v48 = v18;
      v28 = sub_1D1E68FAC();
      v30 = v34;
    }

    v35 = sub_1D1E6821C();
    v36 = [v20 stringFromNumber_];

    if (v36)
    {
      v37 = sub_1D1E6781C();
      v39 = v38;
    }

    else
    {
      v48 = v19;
      v37 = sub_1D1E68FAC();
      v39 = v40;
    }

    if (a2)
    {
      v41 = 0xD000000000000025;
    }

    else
    {
      v41 = 0xD00000000000001BLL;
    }

    if (a2)
    {
      v42 = "HFNumberRangeFormatterRange";
    }

    else
    {
      v42 = "Air Quality Sensors";
    }

    static String.hfLocalized(_:)(v41, v42 | 0x8000000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1D1E73A90;
    v44 = MEMORY[0x1E69E6158];
    *(v43 + 56) = MEMORY[0x1E69E6158];
    v45 = sub_1D1757D20();
    *(v43 + 32) = v28;
    *(v43 + 40) = v30;
    *(v43 + 96) = v44;
    *(v43 + 104) = v45;
    *(v43 + 64) = v45;
    *(v43 + 72) = v37;
    *(v43 + 80) = v39;
    v46 = sub_1D1E6784C();

    return v46;
  }
}

uint64_t sub_1D1831068(uint64_t a1)
{
  v2 = type metadata accessor for IconTextValueStringDataHolder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s13HomeDataModel17ClimateSummarizerO15temperatureIconySSSaySdGFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0xD000000000000012;
  }

  if (v1 <= 3)
  {
    v2 = 0;
    v3 = 0.0;
LABEL_7:
    v6 = v1 - v2;
    v7 = (a1 + 8 * v2 + 32);
    do
    {
      v8 = *v7++;
      v3 = v3 + v8;
      --v6;
    }

    while (v6);
    goto LABEL_9;
  }

  v2 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  v4 = (a1 + 48);
  v3 = 0.0;
  v5 = v1 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v3 = v3 + *(v4 - 2) + *(v4 - 1) + *v4 + v4[1];
    v4 += 4;
    v5 -= 4;
  }

  while (v5);
  if (v1 != v2)
  {
    goto LABEL_7;
  }

LABEL_9:
  v9 = v3 / v1;
  if (v9 < 15.0)
  {
    return 0x656D6F6D72656874;
  }

  if (v9 < 21.0)
  {
    return 0xD000000000000012;
  }

  return 0xD000000000000010;
}

unint64_t sub_1D18311BC()
{
  result = qword_1EC644C78;
  if (!qword_1EC644C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC644C78);
  }

  return result;
}

unint64_t sub_1D1831208()
{
  result = qword_1EC644C80;
  if (!qword_1EC644C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644C60, &unk_1D1E77540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644C80);
  }

  return result;
}

uint64_t sub_1D183126C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = (a1 + 32);
    v4 = MEMORY[0x1E69E7CC0];
    do
    {
      v8 = *v3++;
      v7 = v8;
      if (v8)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D178D4BC(0, *(v4 + 16) + 1, 1);
        }

        v6 = *(v4 + 16);
        v5 = *(v4 + 24);
        if (v6 >= v5 >> 1)
        {
          sub_1D178D4BC((v5 > 1), v6 + 1, 1);
        }

        *(v4 + 16) = v6 + 1;
        *(v4 + 8 * v6 + 32) = v7;
      }

      --v1;
    }

    while (v1);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v4 + 16);
  if (!v9)
  {

    return 0;
  }

  sub_1D178D49C(0, v9, 0);
  v10 = 0;
  v11 = *(v2 + 16);
  do
  {
    v12 = *(v4 + 8 * v10 + 32);
    v13 = *(v2 + 24);
    if (v11 >= v13 >> 1)
    {
      sub_1D178D49C((v13 > 1), v11 + 1, 1);
    }

    ++v10;
    *(v2 + 16) = v11 + 1;
    *(v2 + 8 * v11++ + 32) = v12;
  }

  while (v9 != v10);

  v14 = *(v2 + 16);
  if (!v14)
  {
    v16 = 0.0;
    goto LABEL_26;
  }

  if (v14 <= 3)
  {
    v15 = 0;
    v16 = 0.0;
LABEL_24:
    v20 = v14 - v15;
    v21 = (v2 + 8 * v15 + 32);
    do
    {
      v22 = *v21++;
      v16 = v16 + v22;
      --v20;
    }

    while (v20);
    goto LABEL_26;
  }

  v15 = v14 & 0x7FFFFFFFFFFFFFFCLL;
  v18 = (v2 + 48);
  v16 = 0.0;
  v19 = v14 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v16 = v16 + *(v18 - 2) + *(v18 - 1) + *v18 + v18[1];
    v18 += 4;
    v19 -= 4;
  }

  while (v19);
  if (v14 != v15)
  {
    goto LABEL_24;
  }

LABEL_26:

  v23 = round(fmax(fmin(v16 / v9, 5.0), 1.0));
  if (v23 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (v23 < 9.22337204e18)
  {
    return v23;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18314D4()
{
  result = qword_1EC644CA0;
  if (!qword_1EC644CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644CA0);
  }

  return result;
}

BOOL static GaugeDataHolder.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2])
  {
    return a1[1] == a2[1];
  }

  return 0;
}

uint64_t sub_1D183158C()
{
  if (*v0)
  {
    return 0x6E615265756C6176;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1D18315C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E615265756C6176 && a2 == 0xEA00000000006567)
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

uint64_t sub_1D18316A8(uint64_t a1)
{
  v2 = sub_1D18318E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18316E4(uint64_t a1)
{
  v2 = sub_1D18318E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}