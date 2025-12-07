uint64_t sub_1D185ACDC(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v3 = type metadata accessor for ActionEndpoint(0);
  v40 = *(v3 - 1);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B0, &qword_1D1E79B60);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v38 - v12;
  v13 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 64);
  v17 = (v14 + 63) >> 6;
  v41 = a2;

  v19 = 0;
  v44 = v11;
  v45 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v25 = *(*(v41 + 48) + 2 * v24);
      v26 = v39;
      sub_1D186155C(*(v41 + 56) + *(v40 + 72) * v24, v39, type metadata accessor for ActionEndpoint);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B8, &qword_1D1E79B68);
      v28 = *(v27 + 48);
      v29 = v44;
      *v44 = v25;
      v11 = v29;
      sub_1D18614F4(v26, &v29[v28], type metadata accessor for ActionEndpoint);
      (*(*(v27 - 8) + 56))(v11, 0, 1, v27);
      v22 = v20;
LABEL_13:
      v30 = v43;
      sub_1D1741A90(v11, v43, &qword_1EC6455B0, &qword_1D1E79B60);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B8, &qword_1D1E79B68);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
      {
        break;
      }

      sub_1D18614F4(v30 + *(v31 + 48), v6, type metadata accessor for ActionEndpoint);
      v32 = *(v42 + 48);
      v46[2] = *(v42 + 32);
      v46[3] = v32;
      v47 = *(v42 + 64);
      v33 = *(v42 + 16);
      v46[0] = *v42;
      v46[1] = v33;
      sub_1D1E6923C();
      sub_1D1E66A7C();
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      sub_1D176D4E8(v46, *&v6[v3[5]]);
      sub_1D1E678EC();
      sub_1D1E6922C();
      v34 = v22;
      v35 = &v6[v3[8]];
      v11 = v44;
      sub_1D1E676EC();
      v36 = type metadata accessor for EndpointPath(0);
      MEMORY[0x1D3892890](*&v35[*(v36 + 20)]);
      sub_1D1E6923C();
      MatterTileMetadata.hash(into:)(v46);
      MEMORY[0x1D3892850](*&v6[v3[10]]);
      sub_1D176DB8C(v46, *&v6[v3[11]]);
      sub_1D185BAEC(v46, *&v6[v3[12]]);
      StaticClusterGroups.hash(into:)(v46);
      sub_1D176E508(v46, *&v6[v3[14]]);
      sub_1D18615C4(v6, type metadata accessor for ActionEndpoint);
      result = sub_1D1E6926C();
      v19 = v34;
      v45 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v45);
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B8, &qword_1D1E79B68);
        (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185B23C(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v63 = v54 - v4;
  v62 = type metadata accessor for StaticMediaSystemComponent(0);
  v57 = *(v62 - 8);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v69 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = v54 - v7;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v61 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = v54 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645550, &qword_1D1E79AF0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v65 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v54 - v16;
  v18 = *(a2 + 64);
  v66 = a2 + 64;
  v19 = 1 << *(a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v54[0] = (v19 + 63) >> 6;
  v54[1] = v9 + 16;
  v22 = (v9 + 32);
  v60 = (v9 + 8);
  v55 = v9;
  v59 = (v9 + 48);
  v58 = a2;

  v24 = 0;
  v25 = 0;
  v68 = v17;
  v72 = (v9 + 32);
  for (i = v8; ; v8 = i)
  {
    v71 = v24;
    if (!v21)
    {
      break;
    }

    v27 = v25;
LABEL_16:
    v30 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v31 = v30 | (v27 << 6);
    v32 = v58;
    v33 = v55;
    v34 = v67;
    (*(v55 + 16))(v67, *(v58 + 48) + *(v55 + 72) * v31, v8);
    v35 = v56;
    sub_1D186155C(*(v32 + 56) + *(v57 + 72) * v31, v56, type metadata accessor for StaticMediaSystemComponent);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645558, &unk_1D1E79AF8);
    v37 = *(v36 + 48);
    v38 = *(v33 + 32);
    v39 = v65;
    v40 = v34;
    v22 = v72;
    v38(v65, v40, v8);
    sub_1D18614F4(v35, v39 + v37, type metadata accessor for StaticMediaSystemComponent);
    (*(*(v36 - 8) + 56))(v39, 0, 1, v36);
    v17 = v68;
LABEL_17:
    sub_1D1741A90(v39, v17, &qword_1EC645550, &qword_1D1E79AF0);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645558, &unk_1D1E79AF8);
    if ((*(*(v41 - 8) + 48))(v17, 1, v41) == 1)
    {

      return MEMORY[0x1D3892850](v71);
    }

    v42 = *(v41 + 48);
    v43 = *v22;
    v44 = v61;
    v45 = i;
    (*v22)(v61, v17, i);
    v46 = v69;
    sub_1D18614F4(&v17[v42], v69, type metadata accessor for StaticMediaSystemComponent);
    v47 = *(v64 + 48);
    v73[2] = *(v64 + 32);
    v73[3] = v47;
    v74 = *(v64 + 64);
    v48 = *(v64 + 16);
    v73[0] = *v64;
    v73[1] = v48;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    v49 = *v60;
    (*v60)(v44, v45);
    sub_1D1E676EC();
    v50 = v46;
    v51 = v62;
    StaticMediaProfile.hash(into:)(v73);
    MEMORY[0x1D3892850](*(v50 + v51[6]));
    sub_1D176D4E8(v73, *(v50 + v51[7]));
    v52 = v63;
    sub_1D17783E0(v50 + v51[8], v63);
    if ((*v59)(v52, 1, v45) == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v26 = v67;
      v43(v67, v52, v45);
      sub_1D1E6922C();
      sub_1D1E676EC();
      v49(v26, v45);
    }

    sub_1D18615C4(v69, type metadata accessor for StaticMediaSystemComponent);
    result = sub_1D1E6926C();
    v22 = v72;
    v24 = result ^ v71;
    v17 = v68;
  }

  if (v54[0] <= v25 + 1)
  {
    v28 = v25 + 1;
  }

  else
  {
    v28 = v54[0];
  }

  v29 = v28 - 1;
  while (1)
  {
    v27 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v27 >= v54[0])
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645558, &unk_1D1E79AF8);
      v39 = v65;
      (*(*(v53 - 8) + 56))(v65, 1, 1, v53);
      v21 = 0;
      v25 = v29;
      goto LABEL_17;
    }

    v21 = *(v66 + 8 * v27);
    ++v25;
    if (v21)
    {
      v25 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185B98C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v6)) | (v11 << 6)));
    v6 &= v6 - 1;

    sub_1D1E678EC();

    if (v12 == 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v12;
    }

    MEMORY[0x1D3892890](*&v13);
    result = sub_1D1E6926C();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1D3892850](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185BAEC(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = type metadata accessor for StaticCluster(0);
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C0, &qword_1D1E79B70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - v9;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v35 = a2;

  v17 = 0;
  v38 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v22 = v21 | (v18 << 6);
      v23 = *(*(v35 + 48) + v22);
      sub_1D186155C(*(v35 + 56) + *(v34 + 72) * v22, v5, type metadata accessor for StaticCluster);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C8, &qword_1D1E79B78);
      v25 = *(v24 + 48);
      v26 = v37;
      *v37 = v23;
      sub_1D18614F4(v5, &v26[v25], type metadata accessor for StaticCluster);
      (*(*(v24 - 8) + 56))(v26, 0, 1, v24);
      v20 = v18;
      v27 = v26;
LABEL_13:
      sub_1D1741A90(v27, v10, &qword_1EC6455C0, &qword_1D1E79B70);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C8, &qword_1D1E79B78);
      if ((*(*(v28 - 8) + 48))(v10, 1, v28) == 1)
      {
        break;
      }

      sub_1D18614F4(&v10[*(v28 + 48)], v5, type metadata accessor for StaticCluster);
      v29 = *(v36 + 48);
      v39[2] = *(v36 + 32);
      v39[3] = v29;
      v40 = *(v36 + 64);
      v30 = *(v36 + 16);
      v39[0] = *v36;
      v39[1] = v30;
      sub_1D1E6924C();
      StaticCluster.hash(into:)(v39);
      sub_1D18615C4(v5, type metadata accessor for StaticCluster);
      result = sub_1D1E6926C();
      v17 = v20;
      v38 ^= result;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v38);
  }

  else
  {
LABEL_5:
    if (v15 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    else
    {
      v19 = v15;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C8, &qword_1D1E79B78);
        v32 = v37;
        (*(*(v31 - 8) + 56))(v37, 1, 1, v31);
        v27 = v32;
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v11 + 8 * v18);
      ++v17;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185BEF0(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  for (i = 0; v6; v9 ^= result)
  {
    v11 = i;
LABEL_9:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v6)) | (v11 << 6)));
    v6 &= v6 - 1;

    v13 = v12;
    sub_1D1E678EC();

    sub_1D1E6850C();

    result = sub_1D1E6926C();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1D3892850](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++i;
    if (v6)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185C048(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v67 = type metadata accessor for StaticResident(0);
  v56 = *(v67 - 8);
  v3 = MEMORY[0x1EEE9AC00](v67);
  v58 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v55 = v51 - v5;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v60 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E0, &qword_1D1E79A78);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v51 - v15;
  v17 = *(a2 + 64);
  v63 = a2 + 64;
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v51[0] = (v18 + 63) >> 6;
  v51[1] = v7 + 16;
  v64 = (v7 + 32);
  v54 = v7;
  v59 = (v7 + 8);
  v57 = a2;

  v22 = 0;
  v23 = 0;
  v52 = v14;
  v65 = v16;
  v61 = v6;
  while (1)
  {
    v66 = v22;
    if (!v20)
    {
      break;
    }

    v25 = v23;
LABEL_17:
    v28 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v29 = v28 | (v25 << 6);
    v30 = v57;
    v31 = v54;
    v32 = v53;
    (*(v54 + 16))(v53, *(v57 + 48) + *(v54 + 72) * v29, v6);
    v33 = v55;
    sub_1D186155C(*(v30 + 56) + *(v56 + 72) * v29, v55, type metadata accessor for StaticResident);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E8, &qword_1D1E79A80);
    v35 = *(v34 + 48);
    v36 = *(v31 + 32);
    v37 = v52;
    v36(v52, v32, v6);
    v38 = v33;
    v14 = v37;
    sub_1D18614F4(v38, &v37[v35], type metadata accessor for StaticResident);
    (*(*(v34 - 8) + 56))(v37, 0, 1, v34);
    v16 = v65;
LABEL_18:
    sub_1D1741A90(v14, v16, &qword_1EC6454E0, &qword_1D1E79A78);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E8, &qword_1D1E79A80);
    if ((*(*(v39 - 8) + 48))(v16, 1, v39) == 1)
    {

      return MEMORY[0x1D3892850](v66);
    }

    v40 = *(v39 + 48);
    v41 = v60;
    (*v64)(v60, v16, v6);
    v42 = v58;
    sub_1D18614F4(&v16[v40], v58, type metadata accessor for StaticResident);
    v43 = *(v62 + 48);
    v68[2] = *(v62 + 32);
    v68[3] = v43;
    v69 = *(v62 + 64);
    v44 = *(v62 + 16);
    v68[0] = *v62;
    v68[1] = v44;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*v59)(v41, v6);
    sub_1D1E676EC();
    v45 = v67;
    sub_1D1E678EC();
    if (*(v42 + *(v45 + 24) + 8))
    {
      sub_1D1E6922C();
      sub_1D1E678EC();
    }

    else
    {
      sub_1D1E6922C();
    }

    v46 = v67;
    sub_1D1771CBC();
    sub_1D1771CBC();
    v47 = v42 + *(v46 + 36);
    v48 = *v47;
    v49 = *(v47 + 8);
    if (v49 > 1)
    {
      v16 = v65;
      if (v49 != 2)
      {
        if (v48 > 1)
        {
          if (v48 == 2)
          {
            v24 = 2;
          }

          else
          {
            v24 = 6;
          }
        }

        else
        {
          v24 = v48 != 0;
        }

        goto LABEL_5;
      }

      MEMORY[0x1D3892850](5);
      sub_1D1E6922C();
      sub_1D1E6922C();
    }

    else
    {
      v16 = v65;
      if (v49)
      {
        MEMORY[0x1D3892850](4);
        v24 = v48;
LABEL_5:
        MEMORY[0x1D3892850](v24);
        goto LABEL_6;
      }

      MEMORY[0x1D3892850](3);
      sub_1D1E6922C();
      if (v48)
      {
        sub_1D176D4E8(v68, v48);
      }
    }

LABEL_6:
    v6 = v61;
    sub_1D1E676EC();
    sub_1D18615C4(v42, type metadata accessor for StaticResident);
    result = sub_1D1E6926C();
    v22 = result ^ v66;
  }

  if (v51[0] <= v23 + 1)
  {
    v26 = v23 + 1;
  }

  else
  {
    v26 = v51[0];
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v51[0])
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E8, &qword_1D1E79A80);
      (*(*(v50 - 8) + 56))(v14, 1, 1, v50);
      v20 = 0;
      v23 = v27;
      goto LABEL_18;
    }

    v20 = *(v63 + 8 * v25);
    ++v23;
    if (v20)
    {
      v23 = v25;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185C7AC(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v68 = type metadata accessor for StaticHH2Update(0);
  v57 = *(v68 - 1);
  v3 = MEMORY[0x1EEE9AC00](v68);
  v69 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v58 = v53 - v5;
  v66 = sub_1D1E66A7C();
  v6 = *(v66 - 8);
  v7 = MEMORY[0x1EEE9AC00](v66);
  v61 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v55 = v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F0, &qword_1D1E79A88);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v53 - v14;
  v16 = *(a2 + 64);
  v63 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v53[0] = (v17 + 63) >> 6;
  v53[1] = v6 + 16;
  v65 = (v6 + 32);
  v56 = v6;
  v59 = a2;
  v60 = (v6 + 8);

  v21 = 0;
  v22 = 0;
  v54 = v13;
  v64 = v15;
  while (1)
  {
    v67 = v21;
    if (!v19)
    {
      break;
    }

    v25 = v22;
LABEL_19:
    v28 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v29 = v28 | (v25 << 6);
    v30 = v59;
    v31 = v56;
    v32 = v55;
    v33 = v66;
    (*(v56 + 16))(v55, *(v59 + 48) + *(v56 + 72) * v29, v66);
    v34 = v58;
    sub_1D186155C(*(v30 + 56) + *(v57 + 72) * v29, v58, type metadata accessor for StaticHH2Update);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F8, &qword_1D1E79A90);
    v36 = *(v35 + 48);
    v37 = *(v31 + 32);
    v38 = v54;
    v37(v54, v32, v33);
    v39 = v34;
    v13 = v38;
    sub_1D18614F4(v39, &v38[v36], type metadata accessor for StaticHH2Update);
    (*(*(v35 - 8) + 56))(v38, 0, 1, v35);
    v15 = v64;
LABEL_20:
    sub_1D1741A90(v13, v15, &qword_1EC6454F0, &qword_1D1E79A88);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F8, &qword_1D1E79A90);
    if ((*(*(v40 - 8) + 48))(v15, 1, v40) == 1)
    {

      return MEMORY[0x1D3892850](v67);
    }

    v41 = *(v40 + 48);
    v42 = v66;
    v43 = v61;
    (*v65)(v61, v15, v66);
    v44 = v69;
    sub_1D18614F4(&v15[v41], v69, type metadata accessor for StaticHH2Update);
    v45 = *(v62 + 48);
    v72 = *(v62 + 32);
    v73 = v45;
    v74 = *(v62 + 64);
    v46 = *(v62 + 16);
    v70 = *v62;
    v71 = v46;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*v60)(v43, v42);
    sub_1D1E676EC();
    v47 = *(v44 + v68[5]);
    if ((v47 - 2) >= 6u)
    {
      MEMORY[0x1D3892850](5);
      v48 = v47 & 1;
    }

    else
    {
      v48 = qword_1D1E79C38[(v47 - 2)];
    }

    MEMORY[0x1D3892850](v48);
    v49 = *(v69 + v68[6] + 8);
    if (!v49)
    {
      v50 = 0;
      goto LABEL_28;
    }

    if (v49 == 1)
    {
      v50 = 2;
LABEL_28:
      MEMORY[0x1D3892850](v50);
      goto LABEL_30;
    }

    MEMORY[0x1D3892850](1);
    v15 = v64;
    sub_1D1E678EC();
LABEL_30:
    v51 = (v69 + v68[7]);
    if (*(v51 + 8) == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v23 = *v51;
      sub_1D1E6922C();
      if ((v23 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      MEMORY[0x1D3892890](v24);
    }

    sub_1D18615C4(v69, type metadata accessor for StaticHH2Update);
    result = sub_1D1E6926C();
    v21 = result ^ v67;
  }

  if (v53[0] <= v22 + 1)
  {
    v26 = v22 + 1;
  }

  else
  {
    v26 = v53[0];
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v25 >= v53[0])
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F8, &qword_1D1E79A90);
      (*(*(v52 - 8) + 56))(v13, 1, 1, v52);
      v19 = 0;
      v22 = v27;
      goto LABEL_20;
    }

    v19 = *(v63 + 8 * v25);
    ++v22;
    if (v19)
    {
      v22 = v25;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185CE7C(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v48 = type metadata accessor for StaticUser(0);
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D1E66A7C();
  v5 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645500, &qword_1D1E79A98);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v39 - v11;
  v12 = *(a2 + 64);
  v41 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v40 = (v13 + 63) >> 6;
  v42 = v5 + 16;
  v53 = (v5 + 32);
  v44 = v5;
  v46 = a2;
  v47 = (v5 + 8);

  v17 = 0;
  v43 = v10;
  v54 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
LABEL_12:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v18 << 6);
      v23 = v46;
      v24 = v44;
      v26 = v51;
      v25 = v52;
      (*(v44 + 16))(v52, *(v46 + 48) + *(v44 + 72) * v22, v51);
      sub_1D186155C(*(v23 + 56) + *(v45 + 72) * v22, v4, type metadata accessor for StaticUser);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645508, &qword_1D1E79AA0);
      v28 = *(v27 + 48);
      v29 = *(v24 + 32);
      v10 = v43;
      v29(v43, v25, v26);
      sub_1D18614F4(v4, &v10[v28], type metadata accessor for StaticUser);
      (*(*(v27 - 8) + 56))(v10, 0, 1, v27);
      v20 = v18;
LABEL_13:
      v30 = v49;
      sub_1D1741A90(v10, v49, &qword_1EC645500, &qword_1D1E79A98);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645508, &qword_1D1E79AA0);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
      {
        break;
      }

      v32 = *(v31 + 48);
      v33 = v52;
      v34 = v51;
      (*v53)(v52, v30, v51);
      sub_1D18614F4(v30 + v32, v4, type metadata accessor for StaticUser);
      v35 = *(v50 + 48);
      v57 = *(v50 + 32);
      v58 = v35;
      v59 = *(v50 + 64);
      v36 = *(v50 + 16);
      v55 = *v50;
      v56 = v36;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v47)(v33, v34);
      sub_1D1E676EC();
      v37 = v48;
      sub_1D1E678EC();
      sub_1D1E676EC();
      MEMORY[0x1D3892850](v4[*(v37 + 28)]);
      MEMORY[0x1D3892850](v4[*(v37 + 32)]);
      sub_1D18615C4(v4, type metadata accessor for StaticUser);
      result = sub_1D1E6926C();
      v17 = v20;
      v54 ^= result;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v54);
  }

  else
  {
LABEL_5:
    if (v40 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    else
    {
      v19 = v40;
    }

    v20 = v19 - 1;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v40)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645508, &qword_1D1E79AA0);
        (*(*(v38 - 8) + 56))(v10, 1, 1, v38);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v41 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185D454(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = type metadata accessor for StaticRoom(0);
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D1E66A7C();
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645510, &qword_1D1E79AA8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = *(a2 + 64);
  v45 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v44 = (v14 + 63) >> 6;
  v46 = v5 + 16;
  v55 = (v5 + 32);
  v49 = v5;
  v51 = a2;
  v52 = (v5 + 8);

  v18 = 0;
  v47 = v12;
  v48 = v10;
  v58 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v51;
      v25 = v49;
      v26 = v54;
      v27 = v56;
      (*(v49 + 16))(v54, *(v51 + 48) + *(v49 + 72) * v23, v56);
      v28 = v57;
      sub_1D186155C(*(v24 + 56) + *(v50 + 72) * v23, v57, type metadata accessor for StaticRoom);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
      v30 = *(v29 + 48);
      v31 = *(v25 + 32);
      v32 = v48;
      v31(v48, v26, v27);
      v33 = v28;
      v10 = v32;
      sub_1D18614F4(v33, &v32[v30], type metadata accessor for StaticRoom);
      (*(*(v29 - 8) + 56))(v32, 0, 1, v29);
      v21 = v19;
      v12 = v47;
LABEL_13:
      sub_1D1741A90(v10, v12, &qword_1EC645510, &qword_1D1E79AA8);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
      if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v34 + 48);
      v36 = v54;
      v37 = v56;
      (*v55)(v54, v12, v56);
      v38 = &v12[v35];
      v39 = v57;
      sub_1D18614F4(v38, v57, type metadata accessor for StaticRoom);
      v40 = *(v53 + 48);
      v59[2] = *(v53 + 32);
      v59[3] = v40;
      v60 = *(v53 + 64);
      v41 = *(v53 + 16);
      v59[0] = *v53;
      v59[1] = v41;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v52)(v36, v37);
      StaticRoom.hash(into:)(v59);
      sub_1D18615C4(v39, type metadata accessor for StaticRoom);
      result = sub_1D1E6926C();
      v18 = v21;
      v58 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v58);
  }

  else
  {
LABEL_5:
    if (v44 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v44;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v44)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
        (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v45 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185D9D0(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = type metadata accessor for StaticMediaProfile(0);
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D1E66A7C();
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645460, &unk_1D1E799F0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = *(a2 + 64);
  v45 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v44 = (v14 + 63) >> 6;
  v46 = v5 + 16;
  v55 = (v5 + 32);
  v49 = v5;
  v51 = a2;
  v52 = (v5 + 8);

  v18 = 0;
  v47 = v12;
  v48 = v10;
  v58 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v51;
      v25 = v49;
      v26 = v54;
      v27 = v56;
      (*(v49 + 16))(v54, *(v51 + 48) + *(v49 + 72) * v23, v56);
      v28 = v57;
      sub_1D186155C(*(v24 + 56) + *(v50 + 72) * v23, v57, type metadata accessor for StaticMediaProfile);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
      v30 = *(v29 + 48);
      v31 = *(v25 + 32);
      v32 = v48;
      v31(v48, v26, v27);
      v33 = v28;
      v10 = v32;
      sub_1D18614F4(v33, &v32[v30], type metadata accessor for StaticMediaProfile);
      (*(*(v29 - 8) + 56))(v32, 0, 1, v29);
      v21 = v19;
      v12 = v47;
LABEL_13:
      sub_1D1741A90(v10, v12, &qword_1EC645460, &unk_1D1E799F0);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
      if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v34 + 48);
      v36 = v54;
      v37 = v56;
      (*v55)(v54, v12, v56);
      v38 = &v12[v35];
      v39 = v57;
      sub_1D18614F4(v38, v57, type metadata accessor for StaticMediaProfile);
      v40 = *(v53 + 48);
      v59[2] = *(v53 + 32);
      v59[3] = v40;
      v60 = *(v53 + 64);
      v41 = *(v53 + 16);
      v59[0] = *v53;
      v59[1] = v41;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v52)(v36, v37);
      StaticMediaProfile.hash(into:)(v59);
      sub_1D18615C4(v39, type metadata accessor for StaticMediaProfile);
      result = sub_1D1E6926C();
      v18 = v21;
      v58 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v58);
  }

  else
  {
LABEL_5:
    if (v44 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v44;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v44)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
        (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v45 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185DF4C(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = type metadata accessor for StaticMediaSystem(0);
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D1E66A7C();
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645470, &qword_1D1E79A00);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = *(a2 + 64);
  v45 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v44 = (v14 + 63) >> 6;
  v46 = v5 + 16;
  v55 = (v5 + 32);
  v49 = v5;
  v51 = a2;
  v52 = (v5 + 8);

  v18 = 0;
  v47 = v12;
  v48 = v10;
  v58 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v51;
      v25 = v49;
      v26 = v54;
      v27 = v56;
      (*(v49 + 16))(v54, *(v51 + 48) + *(v49 + 72) * v23, v56);
      v28 = v57;
      sub_1D186155C(*(v24 + 56) + *(v50 + 72) * v23, v57, type metadata accessor for StaticMediaSystem);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
      v30 = *(v29 + 48);
      v31 = *(v25 + 32);
      v32 = v48;
      v31(v48, v26, v27);
      v33 = v28;
      v10 = v32;
      sub_1D18614F4(v33, &v32[v30], type metadata accessor for StaticMediaSystem);
      (*(*(v29 - 8) + 56))(v32, 0, 1, v29);
      v21 = v19;
      v12 = v47;
LABEL_13:
      sub_1D1741A90(v10, v12, &qword_1EC645470, &qword_1D1E79A00);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
      if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v34 + 48);
      v36 = v54;
      v37 = v56;
      (*v55)(v54, v12, v56);
      v38 = &v12[v35];
      v39 = v57;
      sub_1D18614F4(v38, v57, type metadata accessor for StaticMediaSystem);
      v40 = *(v53 + 48);
      v59[2] = *(v53 + 32);
      v59[3] = v40;
      v60 = *(v53 + 64);
      v41 = *(v53 + 16);
      v59[0] = *v53;
      v59[1] = v41;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v52)(v36, v37);
      StaticMediaSystem.hash(into:)(v59);
      sub_1D18615C4(v39, type metadata accessor for StaticMediaSystem);
      result = sub_1D1E6926C();
      v18 = v21;
      v58 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v58);
  }

  else
  {
LABEL_5:
    if (v44 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v44;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v44)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
        (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v45 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185E4C8(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = type metadata accessor for StaticCameraProfile(0);
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D1E66A7C();
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645480, &unk_1D1E79A10);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = *(a2 + 64);
  v45 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v44 = (v14 + 63) >> 6;
  v46 = v5 + 16;
  v55 = (v5 + 32);
  v49 = v5;
  v51 = a2;
  v52 = (v5 + 8);

  v18 = 0;
  v47 = v12;
  v48 = v10;
  v58 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v51;
      v25 = v49;
      v26 = v54;
      v27 = v56;
      (*(v49 + 16))(v54, *(v51 + 48) + *(v49 + 72) * v23, v56);
      v28 = v57;
      sub_1D186155C(*(v24 + 56) + *(v50 + 72) * v23, v57, type metadata accessor for StaticCameraProfile);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645488, &qword_1D1EA2FA0);
      v30 = *(v29 + 48);
      v31 = *(v25 + 32);
      v32 = v48;
      v31(v48, v26, v27);
      v33 = v28;
      v10 = v32;
      sub_1D18614F4(v33, &v32[v30], type metadata accessor for StaticCameraProfile);
      (*(*(v29 - 8) + 56))(v32, 0, 1, v29);
      v21 = v19;
      v12 = v47;
LABEL_13:
      sub_1D1741A90(v10, v12, &qword_1EC645480, &unk_1D1E79A10);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645488, &qword_1D1EA2FA0);
      if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v34 + 48);
      v36 = v54;
      v37 = v56;
      (*v55)(v54, v12, v56);
      v38 = &v12[v35];
      v39 = v57;
      sub_1D18614F4(v38, v57, type metadata accessor for StaticCameraProfile);
      v40 = *(v53 + 48);
      v59[2] = *(v53 + 32);
      v59[3] = v40;
      v60 = *(v53 + 64);
      v41 = *(v53 + 16);
      v59[0] = *v53;
      v59[1] = v41;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v52)(v36, v37);
      StaticCameraProfile.hash(into:)(v59);
      sub_1D18615C4(v39, type metadata accessor for StaticCameraProfile);
      result = sub_1D1E6926C();
      v18 = v21;
      v58 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v58);
  }

  else
  {
LABEL_5:
    if (v44 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v44;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v44)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645488, &qword_1D1EA2FA0);
        (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v45 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185EA44(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = type metadata accessor for StaticActionSet(0);
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D1E66A7C();
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645490, &qword_1D1E79A20);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = *(a2 + 64);
  v45 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v44 = (v14 + 63) >> 6;
  v46 = v5 + 16;
  v55 = (v5 + 32);
  v49 = v5;
  v51 = a2;
  v52 = (v5 + 8);

  v18 = 0;
  v47 = v12;
  v48 = v10;
  v58 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v51;
      v25 = v49;
      v26 = v54;
      v27 = v56;
      (*(v49 + 16))(v54, *(v51 + 48) + *(v49 + 72) * v23, v56);
      v28 = v57;
      sub_1D186155C(*(v24 + 56) + *(v50 + 72) * v23, v57, type metadata accessor for StaticActionSet);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645498, &qword_1D1E79A28);
      v30 = *(v29 + 48);
      v31 = *(v25 + 32);
      v32 = v48;
      v31(v48, v26, v27);
      v33 = v28;
      v10 = v32;
      sub_1D18614F4(v33, &v32[v30], type metadata accessor for StaticActionSet);
      (*(*(v29 - 8) + 56))(v32, 0, 1, v29);
      v21 = v19;
      v12 = v47;
LABEL_13:
      sub_1D1741A90(v10, v12, &qword_1EC645490, &qword_1D1E79A20);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645498, &qword_1D1E79A28);
      if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v34 + 48);
      v36 = v54;
      v37 = v56;
      (*v55)(v54, v12, v56);
      v38 = &v12[v35];
      v39 = v57;
      sub_1D18614F4(v38, v57, type metadata accessor for StaticActionSet);
      v40 = *(v53 + 48);
      v59[2] = *(v53 + 32);
      v59[3] = v40;
      v60 = *(v53 + 64);
      v41 = *(v53 + 16);
      v59[0] = *v53;
      v59[1] = v41;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v52)(v36, v37);
      StaticActionSet.hash(into:)(v59);
      sub_1D18615C4(v39, type metadata accessor for StaticActionSet);
      result = sub_1D1E6926C();
      v18 = v21;
      v58 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v58);
  }

  else
  {
LABEL_5:
    if (v44 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v44;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v44)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645498, &qword_1D1E79A28);
        (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v45 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185EFC0(uint64_t a1, uint64_t a2)
{
  v65 = a1;
  v64 = type metadata accessor for StaticZone(0);
  v60 = *(v64 - 8);
  v3 = MEMORY[0x1EEE9AC00](v64);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v54 - v6;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645520, &qword_1D1E79AB8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v54 - v19;
  v21 = *(a2 + 64);
  v66 = a2 + 64;
  v22 = 1 << *(a2 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v55 = (v22 + 63) >> 6;
  v74 = v8 + 16;
  v67 = v8;
  v68 = (v8 + 32);
  v25 = (v8 + 8);
  v61 = a2;

  v27 = 0;
  v28 = 0;
  v69 = v20;
  v57 = (v8 + 8);
  v73 = v5;
  v62 = v18;
  v56 = v11;
  while (v24)
  {
    v71 = v28;
    v29 = v28;
LABEL_15:
    v72 = (v24 - 1) & v24;
    v32 = __clz(__rbit64(v24)) | (v29 << 6);
    v33 = v61;
    v34 = v67;
    v35 = v58;
    (*(v67 + 16))(v58, *(v61 + 48) + *(v67 + 72) * v32, v7);
    v36 = v59;
    sub_1D186155C(*(v33 + 56) + *(v60 + 72) * v32, v59, type metadata accessor for StaticZone);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645528, &qword_1D1E79AC0);
    v38 = *(v37 + 48);
    (*(v34 + 32))(v18, v35, v7);
    sub_1D18614F4(v36, &v18[v38], type metadata accessor for StaticZone);
    (*(*(v37 - 8) + 56))(v18, 0, 1, v37);
    v20 = v69;
    v25 = v57;
    v11 = v56;
LABEL_16:
    sub_1D1741A90(v18, v20, &qword_1EC645520, &qword_1D1E79AB8);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645528, &qword_1D1E79AC0);
    if ((*(*(v39 - 8) + 48))(v20, 1, v39) == 1)
    {

      return MEMORY[0x1D3892850](v27);
    }

    v70 = v27;
    v40 = *(v39 + 48);
    v41 = v63;
    (*v68)(v63, v20, v7);
    v42 = v73;
    sub_1D18614F4(&v20[v40], v73, type metadata accessor for StaticZone);
    v43 = *(v65 + 48);
    v78 = *(v65 + 32);
    v79 = v43;
    v80 = *(v65 + 64);
    v44 = *(v65 + 16);
    v76 = *v65;
    v77 = v44;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    v75 = *v25;
    v75(v41, v7);
    sub_1D1E676EC();
    v45 = v64;
    sub_1D1E678EC();
    v46 = *(v42 + *(v45 + 24));
    MEMORY[0x1D3892850](*(v46 + 16));
    v47 = *(v46 + 16);
    v48 = v11;
    v49 = v25;
    if (v47)
    {
      v50 = v46 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
      v51 = *(v67 + 72);
      v52 = *(v67 + 16);
      do
      {
        v52(v48, v50, v7);
        sub_1D1E676EC();
        v75(v48, v7);
        v50 += v51;
        --v47;
      }

      while (v47);
    }

    sub_1D18615C4(v73, type metadata accessor for StaticZone);
    result = sub_1D1E6926C();
    v20 = v69;
    v27 = result ^ v70;
    v18 = v62;
    v25 = v49;
    v11 = v48;
    v28 = v71;
    v24 = v72;
  }

  if (v55 <= v28 + 1)
  {
    v30 = v28 + 1;
  }

  else
  {
    v30 = v55;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v55)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645528, &qword_1D1E79AC0);
      (*(*(v53 - 8) + 56))(v18, 1, 1, v53);
      v71 = v31;
      v72 = 0;
      goto LABEL_16;
    }

    v24 = *(v66 + 8 * v29);
    ++v28;
    if (v24)
    {
      v71 = v29;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185F6BC(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v47 = sub_1D1E66A7C();
  v3 = *(v47 - 8);
  v4 = MEMORY[0x1EEE9AC00](v47);
  v44 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C8, &qword_1D1E79A60);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  v13 = *(a2 + 64);
  v36 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v37 = v3 + 16;
  v46 = (v3 + 32);
  v41 = v3;
  v42 = a2;
  v43 = (v3 + 8);

  v19 = 0;
  v38 = v12;
  v39 = v10;
  v48 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v41;
      v26 = v42;
      (*(v41 + 16))(v40, *(v42 + 48) + *(v41 + 72) * v24, v47);
      LOBYTE(v26) = *(*(v26 + 56) + v24);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454D0, &qword_1D1E79A68);
      v28 = *(v27 + 48);
      v10 = v39;
      (*(v25 + 32))();
      v10[v28] = v26;
      (*(*(v27 - 8) + 56))(v10, 0, 1, v27);
      v22 = v20;
      v12 = v38;
LABEL_13:
      sub_1D1741A90(v10, v12, &qword_1EC6454C8, &qword_1D1E79A60);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454D0, &qword_1D1E79A68);
      if ((*(*(v29 - 8) + 48))(v12, 1, v29) == 1)
      {
        break;
      }

      v30 = v47;
      v31 = v44;
      (*v46)(v44, v12, v47);
      v32 = *(v45 + 48);
      v51 = *(v45 + 32);
      v52 = v32;
      v53 = *(v45 + 64);
      v33 = *(v45 + 16);
      v49 = *v45;
      v50 = v33;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v43)(v31, v30);
      sub_1D1E6922C();
      result = sub_1D1E6926C();
      v19 = v22;
      v48 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v48);
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454D0, &qword_1D1E79A68);
        (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v36 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185FB54(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_11:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = *(*(a2 + 48) + 8 * v11);
    v13 = *(a2 + 56) + 24 * v11;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    v17 = v12;
    sub_1D1741830(v14, v15, v16);
    if (!v17)
    {
LABEL_27:

      return MEMORY[0x1D3892850](v8);
    }

    sub_1D1E6850C();

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        MEMORY[0x1D3892850](3);
        sub_1D1E678EC();
        v19 = v14;
        v20 = v15;
        v21 = 3;
        goto LABEL_23;
      }

      if (v16 == 4)
      {
        MEMORY[0x1D3892850](4);
        sub_1D1E668CC();
        v19 = v14;
        v20 = v15;
        v21 = 4;
LABEL_23:
        sub_1D1778940(v19, v20, v21);
        goto LABEL_5;
      }

      v22 = 5;
      goto LABEL_26;
    }

    if (!v16)
    {
      MEMORY[0x1D3892850](0);
      sub_1D1E6922C();
      goto LABEL_5;
    }

    if (v16 != 1)
    {
      MEMORY[0x1D3892850](2);
      v22 = v14;
LABEL_26:
      MEMORY[0x1D3892850](v22);
      goto LABEL_5;
    }

    MEMORY[0x1D3892850](1);
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v18 = v14;
    }

    else
    {
      v18 = 0;
    }

    MEMORY[0x1D3892890](v18);
LABEL_5:
    v5 &= v5 - 1;
    result = sub_1D1E6926C();
    v8 ^= result;
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
      goto LABEL_27;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185FD68(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v22 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v8 << 6);
      v11 = *(*(a2 + 48) + 8 * v10);
      v12 = *(a2 + 56) + 32 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = v11;
      sub_1D17418FC(v13, v14, v15, v16);
      if (!v17)
      {
LABEL_27:

        return MEMORY[0x1D3892850](v22);
      }

      sub_1D1E6850C();

      if (v16 <= 1)
      {
        break;
      }

      if (v16 != 2)
      {
        if (v15 | v14 | v13)
        {
          if (v13 == 1 && (v15 | v14) == 0)
          {
            v19 = 4;
          }

          else
          {
            v19 = 5;
          }
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_16;
      }

      MEMORY[0x1D3892850](3);
      MEMORY[0x1D3892850](v13);
      sub_1D1E678EC();
      sub_1D1757A60(v13, v14, v15, 2);
LABEL_17:
      v5 &= v5 - 1;
      result = sub_1D1E6926C();
      v22 ^= result;
      if (!v5)
      {
        goto LABEL_4;
      }
    }

    if (v16)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    MEMORY[0x1D3892850](v18);
    v19 = v13 & 1;
LABEL_16:
    MEMORY[0x1D3892850](v19);
    goto LABEL_17;
  }

LABEL_4:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      goto LABEL_27;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185FF70(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v49 = sub_1D1E66A7C();
  v3 = *(v49 - 8);
  v4 = MEMORY[0x1EEE9AC00](v49);
  v46 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454A8, &qword_1D1E79A40);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - v11;
  v13 = *(a2 + 64);
  v38 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v39 = v3 + 16;
  v48 = (v3 + 32);
  v43 = v3;
  v44 = a2;
  v45 = (v3 + 8);

  v19 = 0;
  v40 = v12;
  v41 = v10;
  v50 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = v23 | (v20 << 6);
      v25 = v43;
      v26 = v44;
      (*(v43 + 16))(v42, *(v44 + 48) + *(v43 + 72) * v24, v49);
      LOBYTE(v26) = *(*(v26 + 56) + v24);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B0, &qword_1D1E79A48);
      v28 = *(v27 + 48);
      v10 = v41;
      (*(v25 + 32))();
      v10[v28] = v26;
      (*(*(v27 - 8) + 56))(v10, 0, 1, v27);
      v22 = v20;
      v12 = v40;
LABEL_13:
      sub_1D1741A90(v10, v12, &qword_1EC6454A8, &qword_1D1E79A40);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B0, &qword_1D1E79A48);
      if ((*(*(v29 - 8) + 48))(v12, 1, v29) == 1)
      {
        break;
      }

      v30 = *(v29 + 48);
      v31 = v49;
      v32 = v46;
      (*v48)(v46, v12, v49);
      v33 = v12[v30];
      v34 = *(v47 + 48);
      v53 = *(v47 + 32);
      v54 = v34;
      v55 = *(v47 + 64);
      v35 = *(v47 + 16);
      v51 = *v47;
      v52 = v35;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v45)(v32, v31);
      MEMORY[0x1D3892850](v33 >> 7);
      sub_1D1E6922C();
      result = sub_1D1E6926C();
      v19 = v22;
      v50 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v50);
  }

  else
  {
LABEL_5:
    if (v17 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v17;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B0, &qword_1D1E79A48);
        (*(*(v36 - 8) + 56))(v10, 1, 1, v36);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v38 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1860410(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
LABEL_11:
    v13 = __clz(__rbit64(v6)) | (v10 << 6);
    v14 = *(*(a2 + 48) + 8 * v13);
    v15 = *(*(a2 + 56) + 2 * v13);
    v16 = v14;
    if (!v14)
    {
LABEL_16:

      return MEMORY[0x1D3892850](v9);
    }

    v17 = v16;
    sub_1D1E6850C();

    if (v15 >> 14)
    {
      if (v15 >> 14 == 1)
      {
        v11 = v15;
        MEMORY[0x1D3892850](2);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = v15 >> 8;
      MEMORY[0x1D3892850](1);
      sub_1D1E6922C();
    }

    v6 &= v6 - 1;
    MEMORY[0x1D3892850](v11);
    result = sub_1D1E6926C();
    v9 ^= result;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {
      goto LABEL_16;
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D186058C(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v3 = sub_1D1E66A7C();
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = v4 + 16;
  v27 = v4;
  v13 = (v4 + 8);
  v39 = a2;

  v15 = 0;
  v16 = 0;
  v34 = "17-A590-755E1AAC02AE";
  v35 = "00-8000-0026BB765291";
  v32 = "60-AD68-D91053B75F44";
  v33 = "73-8FBD-0E8978A33403";
  v31 = "7E-BE63-1D00B1500545";
  v30 = "73-A058-C5E64BC487B2";
  v29 = "CE-986D-63B28F62C9E3";
  v28 = "13-AA62-01754F256DD5";
  v36 = v11;
  v37 = a2 + 64;
  while (v10)
  {
LABEL_10:

    if (!v43)
    {
LABEL_15:

      return MEMORY[0x1D3892850](v15);
    }

    v42 = v15;
    v40 = v16;
    v41 = (v10 - 1) & v10;
    v18 = *(v38 + 48);
    v46 = *(v38 + 32);
    v47 = v18;
    v48 = *(v38 + 64);
    v19 = *(v38 + 16);
    v44 = *v38;
    v45 = v19;
    sub_1D1E678EC();

    v20 = v43;
    MEMORY[0x1D3892850](*(v43 + 16));
    v21 = *(v20 + 16);
    v22 = v12;
    if (v21)
    {
      v23 = v43 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
      v24 = *(v27 + 72);
      v25 = *(v27 + 16);
      do
      {
        v25(v6, v23, v3);
        sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1D1E676EC();
        (*v13)(v6, v3);
        v23 += v24;
        --v21;
      }

      while (v21);
    }

    result = sub_1D1E6926C();
    v15 = result ^ v42;
    v11 = v36;
    v7 = v37;
    v12 = v22;
    v16 = v40;
    v10 = v41;
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v11)
    {
      goto LABEL_15;
    }

    v10 = *(v7 + 8 * v17);
    ++v16;
    if (v10)
    {
      v16 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s13HomeDataModel20CoordinationSnapshotV10UpdateTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v83 = v4;
  v84 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v79 = &v76 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v78 = &v76 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v76 - v12;
  updated = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  v14 = MEMORY[0x1EEE9AC00](updated);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v82 = &v76 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v81 = &v76 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v76 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v76 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = (&v76 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v31 = (&v76 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455D0, &qword_1D1E79B80);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = (&v76 + *(v33 + 56) - v34);
  v36 = a1;
  v37 = &v76 - v34;
  sub_1D186155C(v36, &v76 - v34, type metadata accessor for CoordinationSnapshot.UpdateType);
  sub_1D186155C(a2, v35, type metadata accessor for CoordinationSnapshot.UpdateType);
  v85 = v37;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D186155C(v85, v29, type metadata accessor for CoordinationSnapshot.UpdateType);
        v39 = *v29;
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1D186155C(v85, v31, type metadata accessor for CoordinationSnapshot.UpdateType);
        v39 = *v31;
        if (swift_getEnumCaseMultiPayload())
        {
LABEL_5:

LABEL_34:
          sub_1D1741A30(v85, &qword_1EC6455D0, &qword_1D1E79B80);
LABEL_35:
          v57 = 0;
          return v57 & 1;
        }
      }

      v57 = sub_1D17796E4(v39, *v35);

      goto LABEL_27;
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_1D186155C(v85, v23, type metadata accessor for CoordinationSnapshot.UpdateType);
      v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
      v65 = *&v23[v64];
      v66 = swift_getEnumCaseMultiPayload();
      v68 = v83;
      v67 = v84;
      if (v66 != 3)
      {

        (*(v67 + 8))(v23, v68);
        goto LABEL_34;
      }

      v69 = *(v35 + v64);
      v70 = v78;
      (*(v84 + 32))(v78, v35, v83);
      v71 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v72 = *(v67 + 8);
      v72(v23, v68);
      if (v71)
      {
        v57 = sub_1D17798F8(v65, v69);

        v72(v70, v68);
        goto LABEL_27;
      }

      v72(v70, v68);
LABEL_40:

      sub_1D18615C4(v85, type metadata accessor for CoordinationSnapshot.UpdateType);
      goto LABEL_35;
    }

    sub_1D186155C(v85, v26, type metadata accessor for CoordinationSnapshot.UpdateType);
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48);
    v49 = *&v26[v48];
    v50 = swift_getEnumCaseMultiPayload();
    v52 = v83;
    v51 = v84;
    if (v50 != 2)
    {

      (*(v51 + 8))(v26, v52);
      goto LABEL_34;
    }

    v53 = *(v35 + v48);
    v54 = v77;
    (*(v84 + 32))(v77, v35, v83);
    v55 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v56 = *(v51 + 8);
    v56(v26, v52);
    if (v55)
    {
      v57 = sub_1D17798F8(v49, v53);

      v58 = v54;
      v59 = v52;
LABEL_23:
      v56(v58, v59);
LABEL_27:
      sub_1D18615C4(v85, type metadata accessor for CoordinationSnapshot.UpdateType);
      return v57 & 1;
    }

    v73 = v54;
    v74 = v52;
LABEL_38:
    v56(v73, v74);
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v40 = v81;
      sub_1D186155C(v85, v81, type metadata accessor for CoordinationSnapshot.UpdateType);
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
      v42 = *(v40 + v41);
      v43 = swift_getEnumCaseMultiPayload();
      v45 = v83;
      v44 = v84;
      if (v43 == 4)
      {
        v46 = *(v35 + v41);
        v47 = v79;
        (*(v84 + 32))(v79, v35, v83);
LABEL_21:
        v63 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v56 = *(v44 + 8);
        v56(v40, v45);
        if (v63)
        {
          v57 = sub_1D1779BD4(v42, v46);

          v58 = v47;
          v59 = v45;
          goto LABEL_23;
        }

        v73 = v47;
        v74 = v45;
        goto LABEL_38;
      }
    }

    else
    {
      v40 = v82;
      sub_1D186155C(v85, v82, type metadata accessor for CoordinationSnapshot.UpdateType);
      v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48);
      v42 = *(v40 + v61);
      v62 = swift_getEnumCaseMultiPayload();
      v45 = v83;
      v44 = v84;
      if (v62 == 5)
      {
        v46 = *(v35 + v61);
        v47 = v80;
        (*(v84 + 32))(v80, v35, v83);
        goto LABEL_21;
      }
    }

    (*(v44 + 8))(v40, v45);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_1D186155C(v85, v16, type metadata accessor for CoordinationSnapshot.UpdateType);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_34;
    }

    v60 = *v16 ^ *v35;
    sub_1D18615C4(v85, type metadata accessor for CoordinationSnapshot.UpdateType);
    v57 = v60 ^ 1;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      goto LABEL_34;
    }

    sub_1D18615C4(v85, type metadata accessor for CoordinationSnapshot.UpdateType);
    v57 = 1;
  }

  return v57 & 1;
}

unint64_t sub_1D186119C()
{
  result = qword_1EC6453F8;
  if (!qword_1EC6453F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6453F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetManager(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for WidgetManager(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D1861284(uint64_t a1)
{
  sub_1D1861350(319);
  if (v1 <= 0x3F)
  {
    sub_1D18613A8(319, &unk_1EE07B240, &qword_1EC645400, &qword_1D1E79970);
    if (v2 <= 0x3F)
    {
      sub_1D18613A8(319, &qword_1EE07B238, &qword_1EC645408, &qword_1D1E79978);
      if (v3 <= 0x3F)
      {
        sub_1D186142C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D1861350(uint64_t a1)
{
  if (!qword_1EE07B750)
  {
    sub_1D1E66A7C();
    v1 = sub_1D1E67D1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B750);
    }
  }
}

void sub_1D18613A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1D1E66A7C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D186142C()
{
  result = qword_1EE07B6F8;
  if (!qword_1EE07B6F8)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EE07B6F8);
  }

  return result;
}

uint64_t sub_1D186145C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t sub_1D1861470(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t sub_1D1861484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D18614CC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1D18614E0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1D18614F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D186155C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D18615C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void MTAlarm.alarmRepeatSchedule.getter(void *a1@<X8>)
{
  v3 = [v1 repeatSchedule];
  type metadata accessor for MTAlarmRepeatSchedule(0);
  a1[3] = v4;
  a1[4] = &protocol witness table for MTAlarmRepeatSchedule;
  *a1 = v3;
}

double MTAlarm.mutableCopy()@<D0>(uint64_t a1@<X8>)
{
  v3.super_class = MEMORY[0x1E69B1FD8];
  objc_msgSendSuper2(&v3, sel_mutableCopy);
  sub_1D1E6866C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E8, &unk_1D1E79C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D186172C()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D1E6781C();

  return v3;
}

void sub_1D18617B8()
{
  v1 = [*v0 alarmID];
  sub_1D1E66A5C();
}

uint64_t sub_1D1861818()
{
  v1 = [*v0 description];
  v2 = sub_1D1E6781C();

  return v2;
}

void sub_1D1861870(void *a1@<X8>)
{
  v3 = [*v1 repeatSchedule];
  type metadata accessor for MTAlarmRepeatSchedule(0);
  a1[3] = v4;
  a1[4] = &protocol witness table for MTAlarmRepeatSchedule;
  *a1 = v3;
}

double sub_1D18618BC@<D0>(uint64_t a1@<X8>)
{
  v4.receiver = *v1;
  v4.super_class = MEMORY[0x1E69B1FD8];
  objc_msgSendSuper2(&v4, sel_mutableCopy);
  sub_1D1E6866C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E8, &unk_1D1E79C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

id (*sub_1D1861970(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 hour];
  return sub_1D18619C4;
}

id (*sub_1D18619EC(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 minute];
  return sub_1D1861A40;
}

void sub_1D1861A54(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_1D1E677EC();
  }

  else
  {
    v4 = 0;
  }

  [v3 setTitle_];
}

uint64_t (*sub_1D1861AC4(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1D1861B80(v2);
  return sub_1D1861B38;
}

void sub_1D1861B38(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_1D1861B80(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = [v1 title];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D1E6781C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1D1861C08;
}

void sub_1D1861C08(uint64_t *a1, char a2)
{
  v3 = a1[1];
  if (a2)
  {
    if (v3)
    {

      v4 = sub_1D1E677EC();
    }

    else
    {
      v4 = 0;
    }

    [a1[2] setTitle_];
  }

  else if (v3)
  {
    v4 = sub_1D1E677EC();

    [a1[2] setTitle_];
  }

  else
  {
    v4 = 0;
    [a1[2] setTitle_];
  }
}

id (*sub_1D1861CF4(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  *a1 = *v1;
  *(a1 + 8) = [v3 isEnabled];
  return sub_1D1861D48;
}

uint64_t sub_1D1861D6C(uint64_t a1)
{
  result = sub_1D174A5B8(&qword_1EC6455F0, &qword_1EC6455F8, 0x1E69B1FD8, MEMORY[0x1E69E81B8]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D1861DC0(uint64_t a1)
{
  result = sub_1D174A5B8(&qword_1EC645600, &qword_1EC645608, 0x1E69B1FE8, &protocol conformance descriptor for MTAlarm);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1861F7C()
{

  v1 = OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MockAlarm(uint64_t a1)
{
  result = qword_1EC645610;
  if (!qword_1EC645610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D186207C(uint64_t a1)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D186213C(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 32) = a1;
  return result;
}

uint64_t sub_1D18621D4(uint64_t a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 40) = a1;
  return result;
}

uint64_t sub_1D186226C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
}

uint64_t sub_1D1862318(char a1)
{
  v3 = *v1;
  result = swift_beginAccess();
  *(v3 + 72) = a1;
  return result;
}

uint64_t sub_1D18623B0()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D1E6920C();
  (*(v2 + 16))(v4, v5 + OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID, v1);
  sub_1D1862A44(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  (*(v2 + 8))(v4, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D18624F4(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, *v1 + OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID, v2);
  sub_1D1862A44(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D186262C(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  (*(v3 + 16))(v5, *v1 + OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID, v2);
  sub_1D1862A44(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  (*(v3 + 8))(v5, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D186277C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t sub_1D18627BC()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 40);
}

uint64_t sub_1D18627FC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);

  return v2;
}

uint64_t sub_1D186284C()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 72);
}

uint64_t sub_1D186288C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID;
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1D1862908()
{
  v1 = *(*v0 + 16);

  return v1;
}

void sub_1D186293C(void *a1@<X8>)
{
  v2 = *(*v1 + 64);
  a1[3] = &type metadata for MockAlarmRepeatSchedule;
  a1[4] = &off_1F4D6BA40;
  *a1 = v2;
}

uint64_t sub_1D1862960@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for MockAlarm(0);
  a1[4] = sub_1D1862A44(&qword_1EC645638, type metadata accessor for MockAlarm, &unk_1D1E79E74);
  *a1 = v3;
}

uint64_t sub_1D18629EC(uint64_t a1)
{
  result = sub_1D1862A44(&qword_1EC645620, type metadata accessor for MockAlarm, &unk_1D1E79E34);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D1862A44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1862AD4(uint64_t a1)
{
  result = sub_1D1862A44(&qword_1EC645630, type metadata accessor for MockAlarm, &unk_1D1E79E18);
  *(a1 + 8) = result;
  return result;
}

BOOL sub_1D1862B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21[-v9];
  v11 = *(v5 + 16);
  v11(&v21[-v9], a1 + OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID, v4);
  v11(v8, a2 + OBJC_IVAR____TtC13HomeDataModel9MockAlarm_alarmID, v4);
  v12 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v14 = *(a1 + 32);
  swift_beginAccess();
  if (v14 != *(a2 + 32))
  {
    return 0;
  }

  swift_beginAccess();
  v15 = *(a1 + 40);
  swift_beginAccess();
  if (v15 != *(a2 + 40))
  {
    return 0;
  }

  swift_beginAccess();
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  swift_beginAccess();
  v18 = *(a2 + 56);
  if (v17)
  {
    if (!v18 || (v16 != *(a2 + 48) || v17 != v18) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  swift_beginAccess();
  v19 = *(a1 + 72);
  swift_beginAccess();
  if (v19 == *(a2 + 72))
  {
    return *(a1 + 64) == *(a2 + 64);
  }

  return 0;
}

unint64_t sub_1D1862DD0()
{
  result = qword_1EC645640;
  if (!qword_1EC645640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645640);
  }

  return result;
}

id sub_1D1862E44(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1741B10(0, &qword_1EC6455F8, 0x1E69B1FD8);
  swift_dynamicCast();
  v8 = v12;
  v9 = [v4 *a4];

  return v9;
}

id sub_1D1862F64()
{
  v1 = [*v0 alarms];

  return v1;
}

id sub_1D1862F9C(char a1)
{
  v2 = [*v1 alarmsIncludingSleepAlarm_];

  return v2;
}

id sub_1D1863060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v7 = *v5;
  v8 = sub_1D1E677EC();
  v9 = [v7 *a5];

  return v9;
}

id sub_1D18630B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D1866368;
  v11[3] = &block_descriptor_6;
  v8 = _Block_copy(v11);

  v9 = [v7 addObserverForName:a1 queue:a2 usingBlock:v8];
  _Block_release(v8);

  return v9;
}

id sub_1D18631AC(uint64_t a1)
{
  v2 = *v1;
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v3 = sub_1D1E67BFC();
  v4 = [v2 alarmsForAccessories_];

  return v4;
}

id sub_1D1863220(uint64_t a1)
{
  v2 = [*v1 alarmsForAccessory_];

  return v2;
}

uint64_t sub_1D1863280@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  swift_getObjectType();
  v7 = sub_1D1864C1C(a1, a2, v3);

  result = swift_unknownObjectRelease();
  *a3 = v7;
  return result;
}

uint64_t sub_1D18633F8()
{
  v1 = [*(v0 + 24) keyEnumerator];
  v2 = [v1 allObjects];

  v3 = sub_1D1E67C1C();
  if (*(v3 + 16))
  {
    sub_1D1741970(v3 + 32, v6);

    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    if (swift_dynamicCast())
    {
      return v5;
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

id sub_1D18634E0(unint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD18]) init];
  v4 = result;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v11 = [objc_opt_self() futureWithResult_];

    return v11;
  }

  result = sub_1D1E6873C();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = *(v1 + 24);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3891EF0](v6, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      ++v6;
      v10 = [v7 objectForKey_];
      [v4 setObject:v10 forKey:v9];
    }

    while (v5 != v6);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

id sub_1D1863624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_1D18633F8();
  if (v5)
  {
    v6 = v5;
    v7 = *(v3 + 40);
    if (*(v7 + 16) && (v8 = sub_1D174218C(), (v9 & 1) != 0))
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      MEMORY[0x1EEE9AC00](v8);

      sub_1D174767C(sub_1D18651CC, v10, &v23);

      if (*(&v24 + 1))
      {
        sub_1D18650EC(&v23);
        sub_1D1865178();
        v11 = swift_allocError();
        *v12 = 0xD000000000000010;
        v12[1] = 0x80000001D1EBB1D0;
        v13 = sub_1D1E6655C();
        v14 = [objc_opt_self() futureWithError_];

        return v14;
      }
    }

    else
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
    }

    sub_1D18650EC(&v23);
    v15 = *(v4 + 24);
    v16 = v6;
    v17 = [v15 objectForKey_];
    if (!v17)
    {
      sub_1D1741B10(0, &qword_1EC645668, 0x1E695DEC8);
      v17 = MEMORY[0x1D3891AD0](MEMORY[0x1E69E7CC0]);
    }

    v18 = [v17 arrayByAddingObject_];
    result = swift_unknownObjectRelease();
    if (v18)
    {
      [v15 setObject:v18 forKey:v16];

      v20 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v14 = [objc_opt_self() futureWithResult_];

      return v14;
    }

    __break(1u);
  }

  else
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v22 = [objc_opt_self() futureWithResult_];

    return v22;
  }

  return result;
}

id sub_1D1863904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D18633F8();
  if (v8)
  {
    v9 = v8;
    v10 = *(v3 + 40);
    if (*(v10 + 16) && (v11 = sub_1D174218C(), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      MEMORY[0x1EEE9AC00](v11);
      v29 = a2;
      v30 = a3;
      v31 = a1;

      sub_1D174767C(sub_1D186523C, v13, &v32);

      if (*(&v33 + 1))
      {
        sub_1D18650EC(&v32);
        sub_1D1865178();
        v14 = swift_allocError();
        *v15 = 0xD000000000000013;
        v15[1] = 0x80000001D1EBB1B0;
        v16 = sub_1D1E6655C();
        v17 = [objc_opt_self() futureWithError_];

        return v17;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

    sub_1D18650EC(&v32);
    v19 = *(v4 + 24);
    v20 = v9;
    v21 = [v19 objectForKey_];
    if (v21)
    {
      v29 = a2;
      v30 = a3;
      v31 = a1;
      v22 = MEMORY[0x1EEE9AC00](v21);
      sub_1D1866B14(sub_1D1865220, &v28);
      v23 = sub_1D1E67BFC();

      [v19 setObject:v23 forKey:v20];
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v25 = [objc_opt_self() futureWithResult_];

    return v25;
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v27 = [objc_opt_self() futureWithResult_];

    return v27;
  }
}

id sub_1D1863BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D18633F8();
  if (v8)
  {
    v9 = v8;
    v10 = *(v3 + 40);
    if (*(v10 + 16) && (v11 = sub_1D174218C(), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      MEMORY[0x1EEE9AC00](v11);
      v29 = a2;
      v30 = a3;
      v31 = a1;

      sub_1D174767C(sub_1D186523C, v13, &v32);

      if (*(&v33 + 1))
      {
        sub_1D18650EC(&v32);
        sub_1D1865178();
        v14 = swift_allocError();
        *v15 = 0xD000000000000013;
        v15[1] = 0x80000001D1EBB190;
        v16 = sub_1D1E6655C();
        v17 = [objc_opt_self() futureWithError_];

        return v17;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

    sub_1D18650EC(&v32);
    v19 = *(v4 + 24);
    v20 = v9;
    v21 = [v19 objectForKey_];
    if (v21)
    {
      v29 = a2;
      v30 = a3;
      v31 = a1;
      v22 = MEMORY[0x1EEE9AC00](v21);
      sub_1D1866B14(sub_1D1865154, &v28);
      v23 = sub_1D1E67BFC();

      [v19 setObject:v23 forKey:v20];
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v25 = [objc_opt_self() futureWithResult_];

    return v25;
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v27 = [objc_opt_self() futureWithResult_];

    return v27;
  }
}

uint64_t sub_1D1863EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D17419CC(v6, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
  swift_dynamicCast();
  v9 = sub_1D1E6775C();
  (*(v5 + 8))(v8, a3);
  return v9 & 1;
}

BOOL sub_1D1864014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-1] - v11;
  sub_1D1741970(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
  swift_dynamicCast();
  v14 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v13 + 56))(v14, v13);
  (*(a4 + 56))(v17, a4);
  sub_1D1797998();
  LOBYTE(v13) = sub_1D1E6775C();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return (v13 & 1) == 0;
}

unint64_t sub_1D18641FC()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1D1E6884C();

  v17 = 0xD00000000000001FLL;
  v18 = 0x80000001D1EBB170;
  v6 = sub_1D18633F8();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 uniqueIdentifier];

    sub_1D1E66A5C();
    v9 = sub_1D1E66A1C();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = 0xE100000000000000;
    v9 = 63;
  }

  MEMORY[0x1D3890F70](v9, v11);

  MEMORY[0x1D3890F70](0x746144656B616620, 0xEA00000000003A61);
  v12 = [*(v1 + 24) description];
  v13 = sub_1D1E6781C();
  v15 = v14;

  MEMORY[0x1D3890F70](v13, v15);

  return v17;
}

uint64_t sub_1D18643D4()
{

  return swift_deallocClassInstance();
}

id sub_1D1864440()
{
  v1 = [*(*v0 + 24) objectEnumerator];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 allObjects];

    sub_1D1E67C1C();
  }

  v4 = sub_1D1E67BFC();

  v5 = [objc_opt_self() futureWithResult_];

  return v5;
}

id sub_1D1864580()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
  v1 = [objc_opt_self() futureWithResult_];

  return v1;
}

uint64_t sub_1D1864614(uint64_t a1)
{
  type metadata accessor for MockObserver(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = *v1;
    swift_beginAccess();
    swift_unknownObjectRetain();
    v5 = sub_1D1864E5C((v4 + 32), v3);
    result = swift_unknownObjectRelease();
    v6 = *(v4 + 32);
    if (v6 >> 62)
    {
      result = sub_1D1E6873C();
      v7 = result;
      if (result >= v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 >= v5)
      {
LABEL_4:
        sub_1D1CBFB68(v5, v7);
        return swift_endAccess();
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1D1864734(uint64_t a1)
{
  v2 = [*(*v1 + 24) objectForKey_];
  if (!v2)
  {
    sub_1D1741B10(0, &qword_1EC645668, 0x1E695DEC8);
    v2 = MEMORY[0x1D3891AD0](MEMORY[0x1E69E7CC0]);
  }

  v3 = [objc_opt_self() futureWithResult_];

  return v3;
}

uint64_t sub_1D18647DC@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  type metadata accessor for MockAlarmManager();
  swift_allocObject();
  v5 = sub_1D1864C6C(a1);

  result = swift_unknownObjectRelease();
  *a3 = v5;
  return result;
}

id sub_1D186486C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockObserver(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MockObserver(uint64_t a1)
{
  result = qword_1EC645650;
  if (!qword_1EC645650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1864978(uint64_t a1)
{
  result = sub_1D1E66A7C();
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

unint64_t sub_1D1864A28()
{
  result = qword_1EC645660;
  if (!qword_1EC645660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645660);
  }

  return result;
}

uint64_t sub_1D1864A7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D1E6873C();
  }

  return sub_1D1E688CC();
}

unint64_t sub_1D1864B08(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_1D1E6873C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D3891EF0](v5, a1);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
    v8 = sub_1D1E684FC();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_1D1864C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v5 initForAccessory:a1 withConnectionProvider:a2];
}

void *sub_1D1864C6C(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v2[4] = MEMORY[0x1E69E7CC0];
  v2[5] = sub_1D18D9328(v4);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD18]) init];
  v2[3] = v5;
  sub_1D1741B10(0, &qword_1EC645668, 0x1E695DEC8);
  v6 = v5;
  v7 = MEMORY[0x1D3891AD0](v4);
  [v6 setObject:v7 forKey:a1];

  return v2;
}

id sub_1D1864D34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MockObserver(0);
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC13HomeDataModel12MockObserver_block];
  *v8 = 0;
  v8[1] = 0;
  sub_1D1E66A6C();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;

  sub_1D17169C0(v9, v10);
  v14.receiver = v7;
  v14.super_class = v6;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  swift_beginAccess();
  v12 = v11;
  MEMORY[0x1D3891220]();
  if (*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D1E67C5C();
  }

  sub_1D1E67CAC();
  swift_endAccess();
  return v12;
}

unint64_t sub_1D1864E5C(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_1D1864B08(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return sub_1D1E6873C();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v9 = &qword_1EE07B260;
  v25 = a1;
  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == sub_1D1E6873C())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D3891EF0](v8, v4);
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v4 + 8 * v8 + 32);
LABEL_15:
    v12 = v11;
    sub_1D1741B10(0, v9, 0x1E69E58C0);
    v13 = sub_1D1E684FC();

    if ((v13 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1D3891EF0](v7, v4);
          v15 = MEMORY[0x1D3891EF0](v8, v4);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v16)
          {
            goto LABEL_45;
          }

          if (v8 >= v16)
          {
            goto LABEL_46;
          }

          v17 = *(v4 + 32 + 8 * v8);
          v14 = *(v4 + 32 + 8 * v7);
          v15 = v17;
        }

        v18 = v15;
        v19 = v9;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_1D1864A7C(v4);
          v20 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v20) = 0;
        }

        v21 = v4 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

        if ((v4 & 0x8000000000000000) != 0 || v20)
        {
          v4 = sub_1D1864A7C(v4);
          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v21 + 16))
        {
          goto LABEL_43;
        }

        v9 = v19;
        v23 = v21 + 8 * v8;
        v24 = *(v23 + 32);
        *(v23 + 32) = v14;

        *v25 = v4;
      }

      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v8++, 1);
    if (v10)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
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
  return sub_1D1E6873C();
}

uint64_t sub_1D18650EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645670, &qword_1D1E7B950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D1865178()
{
  result = qword_1EC645678;
  if (!qword_1EC645678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645678);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id MTTimer.update<A>(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [v3 timerByUpdatingWithState_];

  return v4;
}

void MTTimer.timerState.getter(void *a1@<X8>)
{
  v3 = [v1 state];
  type metadata accessor for MTTimerState(0);
  a1[3] = v4;
  a1[4] = &protocol witness table for MTTimerState;
  *a1 = v3;
}

void MTTimer.toggle()(uint64_t *a1@<X8>)
{
  if ([v1 state] == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  type metadata accessor for MTTimerState(0);
  a1[3] = v4;
  a1[4] = &protocol witness table for MTTimerState;
  *a1 = v3;
}

void sub_1D1865380(void *a1@<X8>)
{
  v3 = [*v1 state];
  type metadata accessor for MTTimerState(0);
  a1[3] = v4;
  a1[4] = &protocol witness table for MTTimerState;
  *a1 = v3;
}

void sub_1D18653F0()
{
  v1 = [*v0 timerID];
  sub_1D1E66A5C();
}

void sub_1D1865474(uint64_t *a1@<X8>)
{
  if ([*v1 state] == 2)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  type metadata accessor for MTTimerState(0);
  a1[3] = v4;
  a1[4] = &protocol witness table for MTTimerState;
  *a1 = v3;
}

id sub_1D18654C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = MTTimer.update<A>(state:)(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1D18654F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v3 + 24);
  v11 = (*(a3 + 8))(a2, a3);
  sub_1D1E66A6C();
  type metadata accessor for MockTimer(0);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v10;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  *(v12 + 48) = v11;
  *(v12 + 56) = 0;
  (*(v7 + 16))(v12 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID, v9, v6);
  *(v12 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_currentTimer) = 0;
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EBB280);
  sub_1D1E6811C();
  MEMORY[0x1D3890F70](0x696E69616D657220, 0xEB000000003A676ELL);
  sub_1D1E6811C();
  v13 = v17;
  v14 = v18;
  (*(v7 + 8))(v9, v6);
  v15 = (v12 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_description);
  *v15 = v13;
  v15[1] = v14;
  return swift_dynamicCastClassUnconditional();
}

uint64_t sub_1D1865744()
{

  v1 = OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1865814()
{
  v1 = *(*v0 + 32);

  return v1;
}

void sub_1D1865848(void *a1@<X8>)
{
  v2 = *(*v1 + 48);
  a1[3] = &type metadata for MockTimerState;
  a1[4] = &off_1F4D6BDA8;
  *a1 = v2;
}

uint64_t sub_1D1865878@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID;
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1D18658F4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_description);

  return v1;
}

void sub_1D1865948(uint64_t *a1@<X8>)
{
  v2 = 2;
  if (*(*v1 + 48) == 2)
  {
    v2 = 3;
  }

  a1[3] = &type metadata for MockTimerState;
  a1[4] = &off_1F4D6BDA8;
  *a1 = v2;
}

uint64_t sub_1D1865978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1D18654F4(a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_1D18659A4()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D1E6920C();
  (*(v2 + 16))(v4, v5 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID, v1);
  sub_1D18660B4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  (*(v2 + 8))(v4, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1865AE8(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, *v1 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID, v2);
  sub_1D18660B4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D1865C20(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  (*(v3 + 16))(v5, *v1 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID, v2);
  sub_1D18660B4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  (*(v3 + 8))(v5, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1865D7C(uint64_t a1)
{
  result = sub_1D18660B4(&qword_1EC645680, sub_1D1865DD4, MEMORY[0x1E69E81B8]);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D1865DD4()
{
  result = qword_1EC645688;
  if (!qword_1EC645688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC645688);
  }

  return result;
}

uint64_t type metadata accessor for MockTimer(uint64_t a1)
{
  result = qword_1EC645690;
  if (!qword_1EC645690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1865F50(uint64_t a1)
{
  result = sub_1D1E66A7C();
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

uint64_t sub_1D186605C(uint64_t a1)
{
  result = sub_1D18660B4(&qword_1EC6456A8, type metadata accessor for MockTimer, &unk_1D1E7A1F8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D18660B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D18660FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - v9;
  v11 = *(v5 + 16);
  v11(&v18 - v9, a1 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID, v4);
  v11(v8, a2 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_timerID, v4);
  v12 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v13 = *(v5 + 8);
  v13(v8, v4);
  v13(v10, v4);
  if ((v12 & 1) == 0 || *(a1 + 24) != *(a2 + 24) || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_13;
  }

  v14 = *(a1 + 40);
  v15 = *(a2 + 40);
  if (v14)
  {
    if (!v15 || (*(a1 + 32) != *(a2 + 32) || v14 != v15) && (sub_1D1E6904C() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v15)
  {
    goto LABEL_13;
  }

  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    v16 = *(a1 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_currentTimer) ^ *(a2 + OBJC_IVAR____TtC13HomeDataModel9MockTimer_currentTimer) ^ 1;
    return v16 & 1;
  }

LABEL_13:
  v16 = 0;
  return v16 & 1;
}

unint64_t sub_1D1866314()
{
  result = qword_1EC6456B0;
  if (!qword_1EC6456B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6456B0);
  }

  return result;
}

uint64_t sub_1D1866368(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D1E6604C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1D1E6602C();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D1866504(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), void (*a6)(BOOL, uint64_t, uint64_t))
{
  v38 = a6;
  v42 = a1;
  v43 = a2;
  v9 = a4(0);
  v44 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v41 = &v36 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = 0;
  v45 = a3;
  v20 = *(a3 + 64);
  v19 = a3 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v40 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v17;
    if (!v23)
    {
      break;
    }

LABEL_8:
    v26 = *(v44 + 72);
    v27 = v41;
    sub_1D1868934(*(v45 + 56) + v26 * (__clz(__rbit64(v23)) | (v17 << 6)), v41, a5);
    sub_1D186899C(v27, v16, a5);
    v28 = v42(v16);
    if (v6)
    {
      sub_1D1868A04(v16, a5);
      v35 = v40;

      return v35;
    }

    v23 &= v23 - 1;
    if (v28)
    {
      sub_1D186899C(v16, v39, a5);
      v29 = v40;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38(0, *(v29 + 16) + 1, 1);
        v29 = v46;
      }

      v32 = *(v29 + 16);
      v31 = *(v29 + 24);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        v40 = v32 + 1;
        v37 = v32;
        v38(v31 > 1, v32 + 1, 1);
        v33 = v40;
        v32 = v37;
        v29 = v46;
      }

      *(v29 + 16) = v33;
      v34 = *(v44 + 80);
      v40 = v29;
      result = sub_1D186899C(v39, v29 + ((v34 + 32) & ~v34) + v32 * v26, a5);
    }

    else
    {
      result = sub_1D1868A04(v16, a5);
    }
  }

  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v24)
    {

      return v40;
    }

    v23 = *(v19 + 8 * v17);
    ++v25;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18667F4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v36 = a1;
  v37 = a2;
  v5 = type metadata accessor for StaticAccessory(0);
  v38 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v32 - v12;
  v14 = 0;
  v39 = a3;
  v17 = *(a3 + 56);
  v16 = a3 + 56;
  v15 = v17;
  v18 = 1 << *(v16 - 24);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v15;
  v21 = (v18 + 63) >> 6;
  v35 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v22 = v14;
    if (!v20)
    {
      break;
    }

LABEL_8:
    v23 = *(v38 + 72);
    sub_1D1868934(*(v39 + 48) + v23 * (__clz(__rbit64(v20)) | (v14 << 6)), v10, type metadata accessor for StaticAccessory);
    sub_1D186899C(v10, v13, type metadata accessor for StaticAccessory);
    v24 = v36(v13);
    if (v3)
    {
      sub_1D1868A04(v13, type metadata accessor for StaticAccessory);
      v31 = v35;

      return v31;
    }

    v20 &= v20 - 1;
    if (v24)
    {
      sub_1D186899C(v13, v34, type metadata accessor for StaticAccessory);
      v25 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D178CEB8(0, *(v25 + 16) + 1, 1);
        v25 = v40;
      }

      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        v35 = v28 + 1;
        v33 = v28;
        sub_1D178CEB8((v27 > 1), v28 + 1, 1);
        v29 = v35;
        v28 = v33;
        v25 = v40;
      }

      *(v25 + 16) = v29;
      v30 = *(v38 + 80);
      v35 = v25;
      result = sub_1D186899C(v34, v25 + ((v30 + 32) & ~v30) + v28 * v23, type metadata accessor for StaticAccessory);
    }

    else
    {
      result = sub_1D1868A04(v13, type metadata accessor for StaticAccessory);
    }
  }

  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v21)
    {

      return v35;
    }

    v20 = *(v16 + 8 * v14);
    ++v22;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1866B14(uint64_t (*a1)(_OWORD *), uint64_t a2)
{
  v6 = sub_1D1E666DC();
  v15[0] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E684AC();

  sub_1D18688B0(&qword_1EC6456C8, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  sub_1D1E685CC();
  if (v17)
  {
    v9 = MEMORY[0x1E69E7CC0];
    v15[1] = a2;
    while (1)
    {
      sub_1D1742194(&v16, v18);
      v10 = a1(v18);
      if (v3)
      {
        break;
      }

      if (v10)
      {
        sub_1D1742194(v18, &v16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178CFF0(0, *(v9 + 16) + 1, 1);
          v9 = v19;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D178CFF0((v12 > 1), v13 + 1, 1);
          v9 = v19;
        }

        *(v9 + 16) = v13 + 1;
        sub_1D1742194(&v16, (v9 + 32 * v13 + 32));
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v18);
      }

      sub_1D1E685CC();
      if (!v17)
      {
        goto LABEL_13;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v18);
    (*(v15[0] + 8))(v8, v6);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_13:
    (*(v15[0] + 8))(v8, v6);
    sub_1D1741A30(&v16, &qword_1EC649700, &qword_1D1E6E910);
  }

  return v9;
}

id sub_1D1866DAC(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1741B10(0, &qword_1EC645688, 0x1E69B1FF0);
  swift_dynamicCast();
  v8 = v12;
  v9 = [v4 *a4];

  return v9;
}

Swift::String __swiftcall COTimerManager.description()()
{
  v7.super_class = MEMORY[0x1E6997488];
  v0 = objc_msgSendSuper2(&v7, sel_description);
  v1 = sub_1D1E6781C();
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

id sub_1D1866F38()
{
  v1 = [*v0 timers];

  return v1;
}

id sub_1D1866FDC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1D1E677EC();
  v5 = [v3 dismissTimerWithIdentifier_];

  return v5;
}

id sub_1D186702C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D1866368;
  v11[3] = &block_descriptor_7;
  v8 = _Block_copy(v11);

  v9 = [v7 addObserverForName:a1 queue:a2 usingBlock:v8];
  _Block_release(v8);

  return v9;
}

uint64_t sub_1D186710C(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  [v2 removeObserver_];

  return swift_unknownObjectRelease();
}

id sub_1D186716C(uint64_t a1)
{
  v2 = *v1;
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v3 = sub_1D1E67BFC();
  v4 = [v2 timersForAccessories_];

  return v4;
}

id sub_1D18671E0(uint64_t a1)
{
  v2 = [*v1 timersForAccessory_];

  return v2;
}

id sub_1D186730C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = sub_1D18633F8();
  if (v5)
  {
    v6 = v5;
    v7 = *(v3 + 40);
    if (*(v7 + 16) && (v8 = sub_1D174218C(), (v9 & 1) != 0))
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      MEMORY[0x1EEE9AC00](v8);

      sub_1D174767C(sub_1D18688F8, v10, &v23);

      if (*(&v24 + 1))
      {
        sub_1D1741A30(&v23, &qword_1EC6456C0, &unk_1D1E7A3F0);
        sub_1D1865178();
        v11 = swift_allocError();
        *v12 = 0xD000000000000010;
        v12[1] = 0x80000001D1EBB1D0;
        v13 = sub_1D1E6655C();
        v14 = [objc_opt_self() futureWithError_];

        return v14;
      }
    }

    else
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
    }

    sub_1D1741A30(&v23, &qword_1EC6456C0, &unk_1D1E7A3F0);
    v15 = *(v4 + 24);
    v16 = v6;
    v17 = [v15 objectForKey_];
    if (!v17)
    {
      sub_1D1741B10(0, &qword_1EC645668, 0x1E695DEC8);
      v17 = MEMORY[0x1D3891AD0](MEMORY[0x1E69E7CC0]);
    }

    v18 = [v17 arrayByAddingObject_];
    result = swift_unknownObjectRelease();
    if (v18)
    {
      [v15 setObject:v18 forKey:v16];

      v20 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
      v14 = [objc_opt_self() futureWithResult_];

      return v14;
    }

    __break(1u);
  }

  else
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v22 = [objc_opt_self() futureWithResult_];

    return v22;
  }

  return result;
}

id sub_1D186760C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D18633F8();
  if (v8)
  {
    v9 = v8;
    v10 = *(v3 + 40);
    if (*(v10 + 16) && (v11 = sub_1D174218C(), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      MEMORY[0x1EEE9AC00](v11);
      v29 = a2;
      v30 = a3;
      v31 = a1;

      sub_1D174767C(sub_1D1868A80, v13, &v32);

      if (*(&v33 + 1))
      {
        sub_1D1741A30(&v32, &qword_1EC6456C0, &unk_1D1E7A3F0);
        sub_1D1865178();
        v14 = swift_allocError();
        *v15 = 0xD000000000000013;
        v15[1] = 0x80000001D1EBB1B0;
        v16 = sub_1D1E6655C();
        v17 = [objc_opt_self() futureWithError_];

        return v17;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

    sub_1D1741A30(&v32, &qword_1EC6456C0, &unk_1D1E7A3F0);
    v19 = *(v4 + 24);
    v20 = v9;
    v21 = [v19 objectForKey_];
    if (v21)
    {
      v29 = a2;
      v30 = a3;
      v31 = a1;
      v22 = MEMORY[0x1EEE9AC00](v21);
      sub_1D1866B14(sub_1D1868A64, &v28);
      v23 = sub_1D1E67BFC();

      [v19 setObject:v23 forKey:v20];
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v25 = [objc_opt_self() futureWithResult_];

    return v25;
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v27 = [objc_opt_self() futureWithResult_];

    return v27;
  }
}

id sub_1D1867924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1D18633F8();
  if (v8)
  {
    v9 = v8;
    v10 = *(v3 + 40);
    if (*(v10 + 16) && (v11 = sub_1D174218C(), (v12 & 1) != 0))
    {
      v13 = *(*(v10 + 56) + 8 * v11);
      MEMORY[0x1EEE9AC00](v11);
      v29 = a2;
      v30 = a3;
      v31 = a1;

      sub_1D174767C(sub_1D1868A80, v13, &v32);

      if (*(&v33 + 1))
      {
        sub_1D1741A30(&v32, &qword_1EC6456C0, &unk_1D1E7A3F0);
        sub_1D1865178();
        v14 = swift_allocError();
        *v15 = 0xD000000000000013;
        v15[1] = 0x80000001D1EBB190;
        v16 = sub_1D1E6655C();
        v17 = [objc_opt_self() futureWithError_];

        return v17;
      }
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
    }

    sub_1D1741A30(&v32, &qword_1EC6456C0, &unk_1D1E7A3F0);
    v19 = *(v4 + 24);
    v20 = v9;
    v21 = [v19 objectForKey_];
    if (v21)
    {
      v29 = a2;
      v30 = a3;
      v31 = a1;
      v22 = MEMORY[0x1EEE9AC00](v21);
      sub_1D1866B14(sub_1D186888C, &v28);
      v23 = sub_1D1E67BFC();

      [v19 setObject:v23 forKey:v20];
    }

    v24 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v25 = [objc_opt_self() futureWithResult_];

    return v25;
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v27 = [objc_opt_self() futureWithResult_];

    return v27;
  }
}

uint64_t sub_1D1867C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1D17419CC(v6, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
  swift_dynamicCast();
  v9 = sub_1D1E6775C();
  (*(v5 + 8))(v8, a3);
  return v9 & 1;
}

BOOL sub_1D1867D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a3;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-1] - v11;
  sub_1D1741970(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
  swift_dynamicCast();
  v14 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v13 + 64))(v14, v13);
  (*(a4 + 64))(v17, a4);
  sub_1D18688B0(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  LOBYTE(v13) = sub_1D1E6775C();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return (v13 & 1) == 0;
}

void sub_1D1867F74(uint64_t a1)
{
  sub_1D1741970(a1, v7);
  type metadata accessor for MockObserver(0);
  if (swift_dynamicCast())
  {
    swift_beginAccess();
    v2 = v6;
    v3 = sub_1D18685FC((v1 + 32), v2);

    v4 = *(v1 + 32);
    if (v4 >> 62)
    {
      v5 = sub_1D1E6873C();
      if (v5 >= v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 >= v3)
      {
LABEL_4:
        sub_1D1CBFB68(v3, v5);
        swift_endAccess();

        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1D1868060()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1D1E6884C();

  v17 = 0xD00000000000001FLL;
  v18 = 0x80000001D1EBB2D0;
  v6 = sub_1D18633F8();
  if (v6)
  {
    v7 = v6;
    v8 = [v6 uniqueIdentifier];

    sub_1D1E66A5C();
    v9 = sub_1D1E66A1C();
    v11 = v10;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = 0xE100000000000000;
    v9 = 63;
  }

  MEMORY[0x1D3890F70](v9, v11);

  MEMORY[0x1D3890F70](0x746144656B616620, 0xEA00000000003A61);
  v12 = [*(v1 + 24) description];
  v13 = sub_1D1E6781C();
  v15 = v14;

  MEMORY[0x1D3890F70](v13, v15);

  return v17;
}

unint64_t sub_1D1868270()
{
  result = qword_1EC6456B8;
  if (!qword_1EC6456B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6456B8);
  }

  return result;
}

uint64_t sub_1D18683A4@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  type metadata accessor for MockTimerManager();
  swift_allocObject();
  v5 = sub_1D1868404(a1);

  result = swift_unknownObjectRelease();
  *a3 = v5;
  return result;
}

void *sub_1D1868404(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v2[4] = MEMORY[0x1E69E7CC0];
  v2[5] = sub_1D18D9350(v4);
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD18]) init];
  v2[3] = v5;
  sub_1D1741B10(0, &qword_1EC645668, 0x1E695DEC8);
  v6 = v5;
  v7 = MEMORY[0x1D3891AD0](v4);
  [v6 setObject:v7 forKey:a1];

  return v2;
}

id sub_1D18684CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MockObserver(0);
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC13HomeDataModel12MockObserver_block];
  *v8 = 0;
  v8[1] = 0;
  sub_1D1E66A6C();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;

  sub_1D17169C0(v9, v10);
  v14.receiver = v7;
  v14.super_class = v6;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  swift_beginAccess();
  v12 = v11;
  MEMORY[0x1D3891220]();
  if (*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D1E67C5C();
  }

  sub_1D1E67CAC();
  swift_endAccess();
  return v12;
}

unint64_t sub_1D18685FC(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_1D1864B08(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return sub_1D1E6873C();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v9 = &qword_1EE07B260;
  v25 = a1;
  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == sub_1D1E6873C())
      {
        return v7;
      }
    }

    else if (v8 == *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v7;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1D3891EF0](v8, v4);
      goto LABEL_15;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_40;
    }

    v11 = *(v4 + 8 * v8 + 32);
LABEL_15:
    v12 = v11;
    sub_1D1741B10(0, v9, 0x1E69E58C0);
    v13 = sub_1D1E684FC();

    if ((v13 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1D3891EF0](v7, v4);
          v15 = MEMORY[0x1D3891EF0](v8, v4);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }

          v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v7 >= v16)
          {
            goto LABEL_45;
          }

          if (v8 >= v16)
          {
            goto LABEL_46;
          }

          v17 = *(v4 + 32 + 8 * v8);
          v14 = *(v4 + 32 + 8 * v7);
          v15 = v17;
        }

        v18 = v15;
        v19 = v9;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
        {
          v4 = sub_1D186521C();
          v20 = (v4 >> 62) & 1;
        }

        else
        {
          LODWORD(v20) = 0;
        }

        v21 = v4 & 0xFFFFFFFFFFFFFF8;
        v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20);
        *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v18;

        if ((v4 & 0x8000000000000000) != 0 || v20)
        {
          v4 = sub_1D186521C();
          v21 = v4 & 0xFFFFFFFFFFFFFF8;
          if ((v8 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v7;
          }
        }

        else if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v8 >= *(v21 + 16))
        {
          goto LABEL_43;
        }

        v9 = v19;
        v23 = v21 + 8 * v8;
        v24 = *(v23 + 32);
        *(v23 + 32) = v14;

        *v25 = v4;
      }

      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        goto LABEL_42;
      }
    }

    v10 = __OFADD__(v8++, 1);
    if (v10)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
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
  return sub_1D1E6873C();
}

uint64_t sub_1D18688B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1868934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D186899C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1868A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StaticAlarm.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t StaticAlarm.repeatSchedule.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
}

uint64_t StaticAlarm.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticAlarm(0) + 36);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for StaticAlarm(uint64_t a1)
{
  result = qword_1EE07ADC8;
  if (!qword_1EE07ADC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticAlarm.parentContainerUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticAlarm(0) + 40);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

_DWORD *static StaticAlarm.RepeatSchedule.== infix(_:_:)(_DWORD *result, _DWORD *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return (result[2] == a2[2]);
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return (result[2] == a2[2]);
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D1868CB0()
{
  v1 = *v0;
  v2 = 1920298856;
  v3 = 25705;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x6353746165706572;
  if (v1 != 3)
  {
    v4 = 0x656C62616E457369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574756E696DLL;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1868D84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D186DE70(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1868DAC(uint64_t a1)
{
  v2 = sub_1D186CBF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1868DE8(uint64_t a1)
{
  v2 = sub_1D186CBF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticAlarm.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6456D0, &qword_1D1E7A410);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D186CBF4();
  sub_1D1E6930C();
  LOBYTE(v11) = 0;
  sub_1D1E68EFC();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_1D1E68EFC();
    LOBYTE(v11) = 2;
    sub_1D1E68E0C();
    v9 = *(v3 + 40);
    v11 = *(v3 + 32);
    v12 = v9;
    v13 = 3;
    sub_1D186CC48();

    sub_1D1E68F1C();

    LOBYTE(v11) = 4;
    sub_1D1E68EDC();
    type metadata accessor for StaticAlarm(0);
    LOBYTE(v11) = 5;
    sub_1D1E66A7C();
    sub_1D186D318(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D1E68F1C();
    LOBYTE(v11) = 6;
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticAlarm.hash(into:)(uint64_t a1)
{
  MEMORY[0x1D3892850](*v1);
  MEMORY[0x1D3892850](v1[1]);
  if (v1[3])
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  v2 = v1[4];
  MEMORY[0x1D3892850](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1D3892850](v5);
      --v3;
    }

    while (v3);
  }

  sub_1D1E6924C();
  sub_1D1E6922C();
  type metadata accessor for StaticAlarm(0);
  sub_1D1E66A7C();
  sub_1D186D318(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E676EC();
}

uint64_t StaticAlarm.hashValue.getter()
{
  sub_1D1E6920C();
  StaticAlarm.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticAlarm.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1D1E66A7C();
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6456E8, &qword_1D1E7A418);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  v12 = type metadata accessor for StaticAlarm(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D186CBF4();
  v16 = v11;
  v17 = v38;
  sub_1D1E692FC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v18 = v8;
  v38 = v6;
  v19 = v35;
  v20 = v36;
  v21 = v33;
  v22 = v34;
  LOBYTE(v40) = 0;
  *v14 = sub_1D1E68D5C();
  LOBYTE(v40) = 1;
  *(v14 + 1) = sub_1D1E68D5C();
  LOBYTE(v40) = 2;
  *(v14 + 2) = sub_1D1E68C6C();
  *(v14 + 3) = v23;
  v42 = 3;
  sub_1D186CC9C();
  sub_1D1E68D7C();
  v24 = v41;
  *(v14 + 4) = v40;
  *(v14 + 10) = v24;
  LOBYTE(v40) = 4;
  v32 = 0;
  v14[44] = sub_1D1E68D3C() & 1;
  LOBYTE(v40) = 5;
  v31[1] = sub_1D186D318(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D1E68D7C();
  v25 = *(v12 + 36);
  v26 = *(v21 + 32);
  v32 = v14;
  v27 = v18;
  v28 = v26;
  v26(&v14[v25], v27, v22);
  LOBYTE(v40) = 6;
  sub_1D1E68D7C();
  (*(v20 + 8))(v16, v37);
  v29 = v32;
  v28(&v32[*(v12 + 40)], v38, v22);
  sub_1D186CCF0(v29, v19);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_1D186CD54(v29);
}

uint64_t sub_1D1869798()
{
  sub_1D1E6920C();
  StaticAlarm.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D18697DC(uint64_t a1)
{
  sub_1D1E6920C();
  StaticAlarm.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1869848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_1D18698BC(void *a1, void *a2)
{
  v3 = __OFSUB__(*a1, *a2);
  v2 = (*a1 - *a2) < 0;
  if (*a1 == *a2)
  {
    v4 = a1[1];
    v5 = a2[1];
    v3 = __OFSUB__(v4, v5);
    v2 = v4 - v5 < 0;
    if (v4 == v5)
    {
      JUMPOUT(0x1D3890070);
    }
  }

  return v2 != v3;
}

BOOL static StaticAlarm.< infix(_:_:)(void *a1, void *a2)
{
  v3 = *a1 < *a2;
  if (*a1 == *a2)
  {
    v4 = a1[1];
    v5 = a2[1];
    v3 = v4 < v5;
    if (v4 == v5)
    {
      type metadata accessor for StaticAlarm(0);

      JUMPOUT(0x1D3890070);
    }
  }

  return v3;
}

BOOL sub_1D1869964(void *a1, void *a2, uint64_t a3)
{
  v3 = *a2 < *a1;
  if (*a2 == *a1 && (v4 = a2[1], v5 = a1[1], v3 = v4 < v5, v4 == v5))
  {
    v6 = MEMORY[0x1D3890070](a2 + *(a3 + 36), a1 + *(a3 + 36));
  }

  else
  {
    v6 = v3;
  }

  return (v6 & 1) == 0;
}

BOOL sub_1D18699C0(void *a1, void *a2, uint64_t a3)
{
  v3 = *a1 < *a2;
  if (*a1 == *a2 && (v4 = a1[1], v5 = a2[1], v3 = v4 < v5, v4 == v5))
  {
    v6 = MEMORY[0x1D3890070](a1 + *(a3 + 36), a2 + *(a3 + 36));
  }

  else
  {
    v6 = v3;
  }

  return (v6 & 1) == 0;
}

BOOL sub_1D1869A18(void *a1, void *a2)
{
  v3 = __OFSUB__(*a2, *a1);
  v2 = (*a2 - *a1) < 0;
  if (*a2 == *a1)
  {
    v4 = a2[1];
    v5 = a1[1];
    v3 = __OFSUB__(v4, v5);
    v2 = v4 - v5 < 0;
    if (v4 == v5)
    {
      JUMPOUT(0x1D3890070);
    }
  }

  return v2 != v3;
}

uint64_t sub_1D1869A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = (*(a4 + 24))(a3, a4);
  *(a5 + 8) = (*(a4 + 32))(a3, a4);
  *(a5 + 16) = (*(a4 + 40))(a3, a4);
  *(a5 + 24) = v10;
  (*(a4 + 72))(v18, a3, a4);
  sub_1D1869C10(v18, &v19);
  v11 = v20;
  *(a5 + 32) = v19;
  *(a5 + 40) = v11;
  *(a5 + 44) = (*(a4 + 48))(a3, a4) & 1;
  v12 = *(a4 + 56);
  v13 = type metadata accessor for StaticAlarm(0);
  v12(a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  v14 = *(v13 + 40);
  v15 = sub_1D1E66A7C();
  v16 = *(*(v15 - 8) + 32);

  return v16(a5 + v14, a2, v15);
}

uint64_t sub_1D1869C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D186E308(a1, &v37);
  if (!v38)
  {
    sub_1D186E378(a1);
    result = sub_1D186E378(&v37);
    LODWORD(v5) = 0;
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_46;
  }

  sub_1D16EEE20(&v37, v39);
  v5 = v40;
  v6 = v41;
  v7 = __swift_project_boxed_opaque_existential_1(v39, v40);
  v8 = (*(v6 + 1))(v5, v6);
  v9 = HIDWORD(v8);
  if (HIDWORD(v8))
  {
    __break(1u);
LABEL_48:
    v6 = sub_1D177DC90((v9 > 1), v7, 1, v6);
    goto LABEL_5;
  }

  LODWORD(v5) = v8;
  v10 = v40;
  v11 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if (((*(v11 + 2))(1, v10, v11) & 1) == 0)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v6 = sub_1D177DC90(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = *(v6 + 2);
  v9 = *(v6 + 3);
  v7 = (v2 + 1);
  if (v2 >= v9 >> 1)
  {
    goto LABEL_48;
  }

LABEL_5:
  *(v6 + 2) = v7;
  v6[v2 + 32] = 0;
LABEL_8:
  v13 = v40;
  v14 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if ((*(v14 + 2))(2, v13, v14))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D177DC90(0, *(v6 + 2) + 1, 1, v6);
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      v6 = sub_1D177DC90((v15 > 1), v16 + 1, 1, v6);
    }

    *(v6 + 2) = v16 + 1;
    v6[v16 + 32] = 1;
  }

  v17 = v40;
  v18 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if ((*(v18 + 2))(4, v17, v18))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D177DC90(0, *(v6 + 2) + 1, 1, v6);
    }

    v20 = *(v6 + 2);
    v19 = *(v6 + 3);
    if (v20 >= v19 >> 1)
    {
      v6 = sub_1D177DC90((v19 > 1), v20 + 1, 1, v6);
    }

    *(v6 + 2) = v20 + 1;
    v6[v20 + 32] = 2;
  }

  v21 = v40;
  v22 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if ((*(v22 + 2))(8, v21, v22))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D177DC90(0, *(v6 + 2) + 1, 1, v6);
    }

    v24 = *(v6 + 2);
    v23 = *(v6 + 3);
    if (v24 >= v23 >> 1)
    {
      v6 = sub_1D177DC90((v23 > 1), v24 + 1, 1, v6);
    }

    *(v6 + 2) = v24 + 1;
    v6[v24 + 32] = 3;
  }

  v25 = v40;
  v26 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if ((*(v26 + 2))(16, v25, v26))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D177DC90(0, *(v6 + 2) + 1, 1, v6);
    }

    v28 = *(v6 + 2);
    v27 = *(v6 + 3);
    if (v28 >= v27 >> 1)
    {
      v6 = sub_1D177DC90((v27 > 1), v28 + 1, 1, v6);
    }

    *(v6 + 2) = v28 + 1;
    v6[v28 + 32] = 4;
  }

  v29 = v40;
  v30 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if ((*(v30 + 2))(32, v29, v30))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D177DC90(0, *(v6 + 2) + 1, 1, v6);
    }

    v32 = *(v6 + 2);
    v31 = *(v6 + 3);
    if (v32 >= v31 >> 1)
    {
      v6 = sub_1D177DC90((v31 > 1), v32 + 1, 1, v6);
    }

    *(v6 + 2) = v32 + 1;
    v6[v32 + 32] = 5;
  }

  v33 = v40;
  v34 = v41;
  __swift_project_boxed_opaque_existential_1(v39, v40);
  if ((*(v34 + 2))(64, v33, v34))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D177DC90(0, *(v6 + 2) + 1, 1, v6);
    }

    v36 = *(v6 + 2);
    v35 = *(v6 + 3);
    if (v36 >= v35 >> 1)
    {
      v6 = sub_1D177DC90((v35 > 1), v36 + 1, 1, v6);
    }

    sub_1D186E378(a1);
    *(v6 + 2) = v36 + 1;
    v6[v36 + 32] = 6;
  }

  else
  {
    sub_1D186E378(a1);
  }

  result = __swift_destroy_boxed_opaque_existential_1(v39);
LABEL_46:
  *a2 = v6;
  *(a2 + 8) = v5;
  return result;
}

uint64_t StaticAlarm.time.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v22 = sub_1D1E669FC();
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D1E66BBC();
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D1E662EC();
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66B4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643938, &qword_1D1E7A420);
  v8 = sub_1D1E66BAC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D1E7A400;
  v13 = *(v9 + 104);
  v13(v12 + v11, *MEMORY[0x1E6969A88], v8);
  v13(v12 + v11 + v10, *MEMORY[0x1E6969A58], v8);
  v13(v12 + v11 + 2 * v10, *MEMORY[0x1E6969AB0], v8);
  v13(v12 + v11 + 3 * v10, *MEMORY[0x1E6969A30], v8);
  v13(v12 + v11 + 4 * v10, *MEMORY[0x1E6969A78], v8);
  v13(v12 + v11 + 5 * v10, *MEMORY[0x1E6969A68], v8);
  sub_1D179C3D0(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D1E66B1C();

  (*(v20 + 8))(v2, v22);
  v14 = v18;
  v15 = *(v17 + 8);
  v15(v5, v18);
  sub_1D1E6625C();
  sub_1D1E6628C();
  sub_1D1E66B4C();
  sub_1D1E66B5C();
  v15(v5, v14);
  return (*(v19 + 8))(v7, v21);
}

uint64_t sub_1D186A59C()
{
  v1 = 0x7961646E6F6DLL;
  v2 = *v0;
  v3 = 0x7961647275746173;
  if (v2 != 5)
  {
    v3 = 0x7961646E7573;
  }

  v4 = 0x7961647372756874;
  if (v2 != 3)
  {
    v4 = 0x796164697266;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616473657574;
  if (v2 != 1)
  {
    v5 = 0x616473656E646577;
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

uint64_t sub_1D186A668@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D186E0C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D186A690(uint64_t a1)
{
  v2 = sub_1D186CDB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A6CC(uint64_t a1)
{
  v2 = sub_1D186CDB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A708(uint64_t a1)
{
  v2 = sub_1D186CEAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A744(uint64_t a1)
{
  v2 = sub_1D186CEAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A780(uint64_t a1)
{
  v2 = sub_1D186CFFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A7BC(uint64_t a1)
{
  v2 = sub_1D186CFFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A7F8(uint64_t a1)
{
  v2 = sub_1D186CE58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A834(uint64_t a1)
{
  v2 = sub_1D186CE58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A870(uint64_t a1)
{
  v2 = sub_1D186CE04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A8AC(uint64_t a1)
{
  v2 = sub_1D186CE04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A8E8(uint64_t a1)
{
  v2 = sub_1D186CF00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A924(uint64_t a1)
{
  v2 = sub_1D186CF00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A960(uint64_t a1)
{
  v2 = sub_1D186CFA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186A99C(uint64_t a1)
{
  v2 = sub_1D186CFA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D186A9D8(uint64_t a1)
{
  v2 = sub_1D186CF54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186AA14(uint64_t a1)
{
  v2 = sub_1D186CF54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticAlarm.RepeatSchedule.Day.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6456F8, &qword_1D1E7A428);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645700, &qword_1D1E7A430);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645708, &qword_1D1E7A438);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645710, &qword_1D1E7A440);
  v41 = *(v10 - 8);
  v42 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645718, &qword_1D1E7A448);
  v55 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v54 = &v38 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645720, &qword_1D1E7A450);
  v53 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v38 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645728, &qword_1D1E7A458);
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645730, &qword_1D1E7A460);
  v18 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v20 = &v38 - v19;
  v21 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D186CDB0();
  v56 = v20;
  sub_1D1E6930C();
  v22 = (v18 + 8);
  if (v21 <= 2)
  {
    v28 = v52;
    v29 = v53;
    v30 = v54;
    v31 = v55;
    if (v21)
    {
      if (v21 == 1)
      {
        v59 = 1;
        sub_1D186CFA8();
        v33 = v56;
        v32 = v57;
        sub_1D1E68DFC();
        (*(v29 + 8))(v14, v38);
      }

      else
      {
        v60 = 2;
        sub_1D186CF54();
        v37 = v30;
        v33 = v56;
        v32 = v57;
        sub_1D1E68DFC();
        (*(v31 + 8))(v37, v39);
      }

      return (*v22)(v33, v32);
    }

    else
    {
      v58 = 0;
      sub_1D186CFFC();
      v34 = v56;
      v35 = v57;
      sub_1D1E68DFC();
      (*(v28 + 8))(v17, v15);
      return (*v22)(v34, v35);
    }
  }

  else
  {
    if (v21 > 4)
    {
      if (v21 == 5)
      {
        v63 = 5;
        sub_1D186CE58();
        v23 = v46;
        v24 = v56;
        v25 = v57;
        sub_1D1E68DFC();
        v27 = v47;
        v26 = v48;
      }

      else
      {
        v64 = 6;
        sub_1D186CE04();
        v23 = v49;
        v24 = v56;
        v25 = v57;
        sub_1D1E68DFC();
        v27 = v50;
        v26 = v51;
      }
    }

    else if (v21 == 3)
    {
      v61 = 3;
      sub_1D186CF00();
      v23 = v40;
      v24 = v56;
      v25 = v57;
      sub_1D1E68DFC();
      v27 = v41;
      v26 = v42;
    }

    else
    {
      v62 = 4;
      sub_1D186CEAC();
      v23 = v43;
      v24 = v56;
      v25 = v57;
      sub_1D1E68DFC();
      v27 = v44;
      v26 = v45;
    }

    (*(v27 + 8))(v23, v26);
    return (*v22)(v24, v25);
  }
}

uint64_t StaticAlarm.RepeatSchedule.Day.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticAlarm.RepeatSchedule.Day.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645778, &qword_1D1E7A468);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645780, &qword_1D1E7A470);
  v58 = *(v5 - 8);
  v59 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645788, &qword_1D1E7A478);
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645790, &qword_1D1E7A480);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v47 - v10;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645798, &qword_1D1E7A488);
  v52 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v63 = &v47 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457A0, &qword_1D1E7A490);
  v50 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v13 = &v47 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457A8, &qword_1D1E7A498);
  v49 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457B0, &unk_1D1E7A4A0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  v21 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D186CDB0();
  v22 = v69;
  sub_1D1E692FC();
  if (!v22)
  {
    v23 = v16;
    v47 = v14;
    v48 = v13;
    v24 = v65;
    v25 = v66;
    v26 = v67;
    v69 = v18;
    v27 = sub_1D1E68DDC();
    v28 = (2 * *(v27 + 16)) | 1;
    v70 = v27;
    v71 = v27 + 32;
    v72 = 0;
    v73 = v28;
    v29 = sub_1D18085C4();
    v30 = v20;
    if (v29 != 7 && v72 == v73 >> 1)
    {
      v74 = v29;
      if (v29 > 2u)
      {
        if (v29 > 4u)
        {
          v33 = v64;
          v43 = v69;
          if (v29 == 5)
          {
            v75 = 5;
            sub_1D186CE58();
            v44 = v62;
            sub_1D1E68C4C();
            (*(v58 + 8))(v44, v59);
          }

          else
          {
            v75 = 6;
            sub_1D186CE04();
            sub_1D1E68C4C();
            (*(v60 + 8))(v26, v61);
          }

          (*(v43 + 8))(v30, v17);
          swift_unknownObjectRelease();
          v37 = v68;
        }

        else
        {
          v31 = v68;
          v32 = v69;
          v33 = v64;
          if (v29 == 3)
          {
            v75 = 3;
            sub_1D186CF00();
            sub_1D1E68C4C();
            (*(v54 + 8))(v24, v55);
          }

          else
          {
            v75 = 4;
            sub_1D186CEAC();
            sub_1D1E68C4C();
            (*(v56 + 8))(v25, v57);
          }

          (*(v32 + 8))(v30, v17);
          swift_unknownObjectRelease();
          v37 = v31;
        }

        goto LABEL_24;
      }

      if (v29)
      {
        if (v29 != 1)
        {
          v75 = 2;
          sub_1D186CF54();
          v46 = v63;
          sub_1D1E68C4C();
          v40 = *(v52 + 8);
          v41 = v46;
          v45 = v53;
          goto LABEL_19;
        }

        v75 = 1;
        sub_1D186CFA8();
        v39 = v48;
        sub_1D1E68C4C();
        v40 = *(v50 + 8);
        v41 = v39;
        v42 = &v77;
      }

      else
      {
        v75 = 0;
        sub_1D186CFFC();
        sub_1D1E68C4C();
        v40 = *(v49 + 8);
        v41 = v23;
        v42 = &v76;
      }

      v45 = *(v42 - 32);
LABEL_19:
      v40(v41, v45);
      (*(v69 + 8))(v30, v17);
      swift_unknownObjectRelease();
      v37 = v68;
      v33 = v64;
LABEL_24:
      *v33 = v74;
      return __swift_destroy_boxed_opaque_existential_1(v37);
    }

    v34 = sub_1D1E688EC();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
    *v36 = &type metadata for StaticAlarm.RepeatSchedule.Day;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v69 + 8))(v30, v17);
    swift_unknownObjectRelease();
  }

  v37 = v68;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

id StaticAlarm.RepeatSchedule.detailDescription.getter()
{
  result = DetailDateMaskToString();
  if (result)
  {
    v1 = result;
    v2 = sub_1D1E6781C();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D186BB98()
{
  if (*v0)
  {
    return 0x65756C6156776172;
  }

  else
  {
    return 1937334628;
  }
}

uint64_t sub_1D186BBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1937334628 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
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

uint64_t sub_1D186BCA8(uint64_t a1)
{
  v2 = sub_1D186D050();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186BCE4(uint64_t a1)
{
  v2 = sub_1D186D050();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticAlarm.RepeatSchedule.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457B8, &qword_1D1E7A4B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v8 = *v1;
  v10[2] = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D186D050();

  sub_1D1E6930C();
  v13 = v8;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457C8, &qword_1D1E7A4B8);
  sub_1D186D0F8(&qword_1EC6457D0, sub_1D186D0A4, MEMORY[0x1E69E6300]);
  sub_1D1E68F1C();

  if (!v2)
  {
    v11 = 1;
    sub_1D1E68F5C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StaticAlarm.RepeatSchedule.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x1D3892850](*(*v0 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1D3892850](v4);
      --v2;
    }

    while (v2);
  }

  return sub_1D1E6924C();
}

uint64_t StaticAlarm.RepeatSchedule.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x1D3892850](v4);
      --v2;
    }

    while (v2);
  }

  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t StaticAlarm.RepeatSchedule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457E0, &unk_1D1E7A4C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D186D050();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6457C8, &qword_1D1E7A4B8);
  v12[15] = 0;
  sub_1D186D0F8(&qword_1EC6457E8, sub_1D186D170, MEMORY[0x1E69E6330]);
  sub_1D1E68D7C();
  v9 = v13;
  v12[14] = 1;
  v10 = sub_1D1E68DBC();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D186C1FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1D177A25C(*a1, *a2) & (v2 == v3);
}

uint64_t sub_1D186C248(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x1D3892850](v5);
      --v3;
    }

    while (v3);
  }

  sub_1D1E6924C();
  return sub_1D1E6926C();
}

Swift::Void __swiftcall StaticAlarm.setEnable(_:)(Swift::Bool a1)
{
  v2 = type metadata accessor for StaticAlarm(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_1D1E67E7C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D186CCF0(v1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_1D186D1C4(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1D17C7504(0, 0, v7, &unk_1D1E7A4D8, v10);
}

uint64_t sub_1D186C48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D186C4AC, 0, 0);
}

uint64_t sub_1D186C4AC()
{
  *(v0 + 32) = sub_1D1E67E1C();
  *(v0 + 40) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D186C544, v2, v1);
}

uint64_t sub_1D186C544()
{

  if (qword_1EE07B1D8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D186C5DC, 0, 0);
}

uint64_t sub_1D186C5DC(uint64_t a1)
{
  *(v1 + 48) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D186C668, v3, v2);
}

uint64_t sub_1D186C668()
{
  v1 = v0[3];

  v2 = type metadata accessor for StaticAlarm(0);
  v3 = *(v2 + 36);
  v4 = *(v2 + 40);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1D186E3E4;
  v6 = v0[2];

  return CoordinationDataModel.toggleAlarm(staticAlarmID:parentContainerID:)(v6, v1 + v3, v1 + v4);
}

uint64_t StaticAlarm.delete()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D186C750, 0, 0);
}

uint64_t sub_1D186C750()
{
  *(v0 + 32) = sub_1D1E67E1C();
  *(v0 + 40) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D186C7E8, v2, v1);
}

uint64_t sub_1D186C7E8()
{

  if (qword_1EE07B1D8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D186C880, 0, 0);
}

uint64_t sub_1D186C880(uint64_t a1)
{
  *(v1 + 48) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D186C90C, v3, v2);
}

uint64_t sub_1D186C90C()
{
  v1 = v0[3];

  v2 = type metadata accessor for StaticAlarm(0);
  v3 = *(v2 + 36);
  v4 = *(v2 + 40);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1D186C9D4;
  v6 = v0[2];

  return CoordinationDataModel.deleteAlarm(_:parentContainerID:)(v6, v1 + v3, v1 + v4);
}

uint64_t sub_1D186C9D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _s13HomeDataModel11StaticAlarmV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v2 != v3)
    {
      v4 = a1;
      v5 = a2;
      v6 = sub_1D1E6904C();
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if ((v7 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  v10 = a1;
  v11 = a2;
  if ((sub_1D177A25C(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  if (v8 != v9)
  {
    return 0;
  }

  if (*(v10 + 44) != *(v11 + 44))
  {
    return 0;
  }

  type metadata accessor for StaticAlarm(0);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

unint64_t sub_1D186CBF4()
{
  result = qword_1EC6456D8;
  if (!qword_1EC6456D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6456D8);
  }

  return result;
}

unint64_t sub_1D186CC48()
{
  result = qword_1EC6456E0;
  if (!qword_1EC6456E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6456E0);
  }

  return result;
}

unint64_t sub_1D186CC9C()
{
  result = qword_1EC6456F0;
  if (!qword_1EC6456F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6456F0);
  }

  return result;
}

uint64_t sub_1D186CCF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticAlarm(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D186CD54(uint64_t a1)
{
  v2 = type metadata accessor for StaticAlarm(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D186CDB0()
{
  result = qword_1EC645738;
  if (!qword_1EC645738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645738);
  }

  return result;
}

unint64_t sub_1D186CE04()
{
  result = qword_1EC645740;
  if (!qword_1EC645740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645740);
  }

  return result;
}

unint64_t sub_1D186CE58()
{
  result = qword_1EC645748;
  if (!qword_1EC645748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645748);
  }

  return result;
}

unint64_t sub_1D186CEAC()
{
  result = qword_1EC645750;
  if (!qword_1EC645750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645750);
  }

  return result;
}

unint64_t sub_1D186CF00()
{
  result = qword_1EC645758;
  if (!qword_1EC645758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645758);
  }

  return result;
}

unint64_t sub_1D186CF54()
{
  result = qword_1EC645760;
  if (!qword_1EC645760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645760);
  }

  return result;
}

unint64_t sub_1D186CFA8()
{
  result = qword_1EC645768;
  if (!qword_1EC645768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645768);
  }

  return result;
}

unint64_t sub_1D186CFFC()
{
  result = qword_1EC645770;
  if (!qword_1EC645770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645770);
  }

  return result;
}

unint64_t sub_1D186D050()
{
  result = qword_1EC6457C0;
  if (!qword_1EC6457C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6457C0);
  }

  return result;
}

unint64_t sub_1D186D0A4()
{
  result = qword_1EC6457D8;
  if (!qword_1EC6457D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6457D8);
  }

  return result;
}

uint64_t sub_1D186D0F8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6457C8, &qword_1D1E7A4B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D186D170()
{
  result = qword_1EC6457F0;
  if (!qword_1EC6457F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6457F0);
  }

  return result;
}

uint64_t sub_1D186D1C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticAlarm(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D186D228(uint64_t a1)
{
  v4 = *(type metadata accessor for StaticAlarm(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D186C48C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D186D318(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D186D3AC()
{
  result = qword_1EC645800;
  if (!qword_1EC645800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645800);
  }

  return result;
}

unint64_t sub_1D186D404()
{
  result = qword_1EC645808;
  if (!qword_1EC645808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645808);
  }

  return result;
}

void sub_1D186D480(uint64_t a1)
{
  sub_1D17786E4();
  if (v1 <= 0x3F)
  {
    sub_1D1E66A7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1D186D540(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_1D186D588(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D186D68C()
{
  result = qword_1EC645810;
  if (!qword_1EC645810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645810);
  }

  return result;
}

unint64_t sub_1D186D6E4()
{
  result = qword_1EC645818;
  if (!qword_1EC645818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645818);
  }

  return result;
}

unint64_t sub_1D186D73C()
{
  result = qword_1EC645820;
  if (!qword_1EC645820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645820);
  }

  return result;
}

unint64_t sub_1D186D794()
{
  result = qword_1EC645828;
  if (!qword_1EC645828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645828);
  }

  return result;
}

unint64_t sub_1D186D7EC()
{
  result = qword_1EC645830;
  if (!qword_1EC645830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645830);
  }

  return result;
}

unint64_t sub_1D186D844()
{
  result = qword_1EC645838;
  if (!qword_1EC645838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645838);
  }

  return result;
}

unint64_t sub_1D186D89C()
{
  result = qword_1EC645840;
  if (!qword_1EC645840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645840);
  }

  return result;
}

unint64_t sub_1D186D8F4()
{
  result = qword_1EC645848;
  if (!qword_1EC645848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645848);
  }

  return result;
}

unint64_t sub_1D186D94C()
{
  result = qword_1EC645850;
  if (!qword_1EC645850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645850);
  }

  return result;
}

unint64_t sub_1D186D9A4()
{
  result = qword_1EC645858;
  if (!qword_1EC645858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645858);
  }

  return result;
}

unint64_t sub_1D186D9FC()
{
  result = qword_1EC645860;
  if (!qword_1EC645860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645860);
  }

  return result;
}

unint64_t sub_1D186DA54()
{
  result = qword_1EC645868;
  if (!qword_1EC645868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645868);
  }

  return result;
}

unint64_t sub_1D186DAAC()
{
  result = qword_1EC645870;
  if (!qword_1EC645870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645870);
  }

  return result;
}

unint64_t sub_1D186DB04()
{
  result = qword_1EC645878;
  if (!qword_1EC645878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645878);
  }

  return result;
}

unint64_t sub_1D186DB5C()
{
  result = qword_1EC645880;
  if (!qword_1EC645880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645880);
  }

  return result;
}

unint64_t sub_1D186DBB4()
{
  result = qword_1EC645888;
  if (!qword_1EC645888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645888);
  }

  return result;
}

unint64_t sub_1D186DC0C()
{
  result = qword_1EC645890;
  if (!qword_1EC645890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645890);
  }

  return result;
}

unint64_t sub_1D186DC64()
{
  result = qword_1EC645898;
  if (!qword_1EC645898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645898);
  }

  return result;
}

unint64_t sub_1D186DCBC()
{
  result = qword_1EC6458A0;
  if (!qword_1EC6458A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458A0);
  }

  return result;
}

unint64_t sub_1D186DD14()
{
  result = qword_1EC6458A8;
  if (!qword_1EC6458A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458A8);
  }

  return result;
}

unint64_t sub_1D186DD6C()
{
  result = qword_1EC6458B0;
  if (!qword_1EC6458B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458B0);
  }

  return result;
}

unint64_t sub_1D186DDC4()
{
  result = qword_1EC6458B8;
  if (!qword_1EC6458B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458B8);
  }

  return result;
}

unint64_t sub_1D186DE1C()
{
  result = qword_1EC6458C0;
  if (!qword_1EC6458C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458C0);
  }

  return result;
}

uint64_t sub_1D186DE70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6353746165706572 && a2 == 0xEE00656C75646568 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C62616E457369 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBB2F0 == a2)
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

uint64_t sub_1D186E0C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x7961646E6F6DLL && a2 == 0xE600000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79616473657574 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616473656E646577 && a2 == 0xE900000000000079 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7961647372756874 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796164697266 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7961647275746173 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7961646E7573 && a2 == 0xE600000000000000)
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

uint64_t sub_1D186E308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6458C8, &unk_1D1E7B090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D186E378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6458C8, &unk_1D1E7B090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id StaticCoordinationData.alarmError.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return sub_1D1741C70(v2);
}

id StaticCoordinationData.timerError.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = v2;
  return sub_1D1741C70(v2);
}

uint64_t sub_1D186E41C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v2 > 5)
  {
    sub_1D1741C70(*(v0 + 16));
  }

  else if (v2 == 2)
  {
    v3 = 1;
    goto LABEL_12;
  }

  sub_1D1741C70(v2);
  sub_1D1741C70(v2);
  sub_1D1741C70(v2);
  sub_1D1757B18(v2);
  sub_1D1757B18(2);
  v3 = 1;
  if (v2 == 3)
  {
LABEL_12:
    v1 = v2;
    goto LABEL_13;
  }

  if (v2 == 4)
  {
    v4 = 3;
    v1 = 4;
    v5 = 4;
    goto LABEL_8;
  }

  if (v2 != 5)
  {
    sub_1D1757B18(v2);
    sub_1D1757B18(3);
    sub_1D1757B18(v2);
    sub_1D1757B18(4);
    sub_1D1757B18(v2);
    sub_1D1757B18(5);
    if (v1 == 2)
    {
      v2 = 2;
      goto LABEL_13;
    }

    sub_1D1741C70(v1);
    sub_1D1741C70(v1);
    sub_1D1757B18(v1);
    sub_1D1757B18(2);
    if (v1 > 2)
    {
      switch(v1)
      {
        case 3:
          v2 = 3;
          goto LABEL_13;
        case 4:
          v4 = 3;
          v2 = 4;
          v5 = 4;
          goto LABEL_8;
        case 5:
          v2 = 5;
          sub_1D1757B18(5);
          sub_1D1757B18(3);
          v4 = 4;
          v5 = 5;
          goto LABEL_8;
      }

LABEL_27:
      v7 = v1;
      sub_1D1757B18(v1);
      sub_1D1757B18(3);
      v8 = v7;
      v3 = 0;
      v5 = 5;
      v4 = 4;
      v2 = v1;
      goto LABEL_8;
    }

    if (v1)
    {
      if (v1 != 1)
      {
        goto LABEL_27;
      }

      v2 = 1;
      sub_1D1757B18(1);
      sub_1D1757B18(3);
    }

    else
    {
      sub_1D1757B18(0);
      sub_1D1757B18(3);
      v2 = 0;
    }

    v3 = 0;
    v5 = 5;
    v4 = 4;
    goto LABEL_8;
  }

  sub_1D1757B18(5);
  sub_1D1757B18(3);
  v4 = 4;
  v1 = 5;
  v5 = 5;
LABEL_8:
  sub_1D1757B18(v2);
  sub_1D1757B18(v4);
  v2 = v1;
  v1 = v5;
LABEL_13:
  sub_1D1757B18(v2);
  sub_1D1757B18(v1);
  return v3;
}

uint64_t StaticCoordinationData.hash(into:)(uint64_t a1)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1D176FB98(a1, *v1);
  sub_1D176F8E4(a1, v3);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v6 = 3;
        break;
      case 4:
        v6 = 5;
        break;
      case 5:
        v6 = 6;
        break;
      default:
        goto LABEL_12;
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = 2;
        goto LABEL_20;
      }

LABEL_12:
      MEMORY[0x1D3892850](4);
      sub_1D1E6850C();
      if (v4 <= 2)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

LABEL_20:
  MEMORY[0x1D3892850](v6);
  if (v4 <= 2)
  {
LABEL_21:
    switch(v4)
    {
      case 0:
        v7 = 0;
        return MEMORY[0x1D3892850](v7);
      case 1:
        v7 = 1;
        return MEMORY[0x1D3892850](v7);
      case 2:
        v7 = 2;
        return MEMORY[0x1D3892850](v7);
    }

LABEL_26:
    MEMORY[0x1D3892850](4);
    return sub_1D1E6850C();
  }

LABEL_13:
  switch(v4)
  {
    case 3:
      v7 = 3;
      break;
    case 4:
      v7 = 5;
      return MEMORY[0x1D3892850](v7);
    case 5:
      v7 = 6;
      break;
    default:
      goto LABEL_26;
  }

  return MEMORY[0x1D3892850](v7);
}

uint64_t StaticCoordinationData.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1D1E6920C();
  sub_1D176FB98(v8, v1);
  sub_1D176F8E4(v8, v2);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = 3;
        break;
      case 4:
        v5 = 5;
        break;
      case 5:
        v5 = 6;
        break;
      default:
        goto LABEL_12;
    }
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        v5 = 2;
        goto LABEL_20;
      }

LABEL_12:
      MEMORY[0x1D3892850](4);
      sub_1D1E6850C();
      if (v3 <= 2)
      {
        goto LABEL_21;
      }

LABEL_13:
      switch(v3)
      {
        case 3:
          v6 = 3;
          break;
        case 4:
          v6 = 5;
          break;
        case 5:
          v6 = 6;
          break;
        default:
          goto LABEL_26;
      }

LABEL_29:
      MEMORY[0x1D3892850](v6);
      return sub_1D1E6926C();
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

LABEL_20:
  MEMORY[0x1D3892850](v5);
  if (v3 > 2)
  {
    goto LABEL_13;
  }

LABEL_21:
  switch(v3)
  {
    case 0:
      v6 = 0;
      goto LABEL_29;
    case 1:
      v6 = 1;
      goto LABEL_29;
    case 2:
      v6 = 2;
      goto LABEL_29;
  }

LABEL_26:
  MEMORY[0x1D3892850](4);
  sub_1D1E6850C();
  return sub_1D1E6926C();
}

uint64_t sub_1D186E93C(uint64_t a1)
{
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  sub_1D176FB98(a1, *v1);
  sub_1D176F8E4(a1, v3);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        v6 = 3;
        break;
      case 4:
        v6 = 5;
        break;
      case 5:
        v6 = 6;
        break;
      default:
        goto LABEL_12;
    }
  }

  else if (v5)
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = 2;
        goto LABEL_20;
      }

LABEL_12:
      MEMORY[0x1D3892850](4);
      sub_1D1E6850C();
      if (v4 <= 2)
      {
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

LABEL_20:
  MEMORY[0x1D3892850](v6);
  if (v4 <= 2)
  {
LABEL_21:
    switch(v4)
    {
      case 0:
        v7 = 0;
        return MEMORY[0x1D3892850](v7);
      case 1:
        v7 = 1;
        return MEMORY[0x1D3892850](v7);
      case 2:
        v7 = 2;
        return MEMORY[0x1D3892850](v7);
    }

LABEL_26:
    MEMORY[0x1D3892850](4);
    return sub_1D1E6850C();
  }

LABEL_13:
  switch(v4)
  {
    case 3:
      v7 = 3;
      break;
    case 4:
      v7 = 5;
      return MEMORY[0x1D3892850](v7);
    case 5:
      v7 = 6;
      break;
    default:
      goto LABEL_26;
  }

  return MEMORY[0x1D3892850](v7);
}

uint64_t sub_1D186EA90(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_1D1E6920C();
  StaticCoordinationData.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel018StaticCoordinationB0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if (sub_1D17798F8(*a1, *a2) & 1) != 0 && (sub_1D1779BD4(v2, v5) & 1) != 0 && (v11 = v7, v12 = v4, sub_1D1741C70(v4), sub_1D1741C70(v7), v8 = _s13HomeDataModel012CoordinationbC0C6ErrorsO2eeoiySbAE_AEtFZ_0(&v12, &v11), sub_1D1757B18(v11), sub_1D1757B18(v12), (v8))
  {
    v11 = v6;
    v12 = v3;
    sub_1D1741C70(v3);
    sub_1D1741C70(v6);
    v9 = _s13HomeDataModel012CoordinationbC0C6ErrorsO2eeoiySbAE_AEtFZ_0(&v12, &v11);
    sub_1D1757B18(v11);
    sub_1D1757B18(v12);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_1D186EBB8()
{
  result = qword_1EC6458D0;
  if (!qword_1EC6458D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel012CoordinationbC0C6ErrorsO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D186EC24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D186EC6C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t StaticTimer.creationTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticTimer(0) + 20);
  v4 = sub_1D1E669FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for StaticTimer(uint64_t a1)
{
  result = qword_1EE07AD20;
  if (!qword_1EE07AD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticTimer.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticTimer(0) + 28));

  return v1;
}

uint64_t StaticTimer.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticTimer(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t StaticTimer.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticTimer(0) + 40);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticTimer.parentContainerUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticTimer(0) + 44);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D186EF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for StaticTimer(0);
  v28 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(a5 + 80))(a4, a5))
  {
    v15 = sub_1D1E669FC();
    (*(*(v15 - 8) + 8))(a3, v15);
    v16 = sub_1D1E66A7C();
    (*(*(v16 - 8) + 8))(a2, v16);
    (*(*(a4 - 8) + 8))(a1, a4);
    v17 = *(v28 + 56);

    return v17(a6, 1, 1, v12);
  }

  else
  {
    *v14 = (*(a5 + 24))(a4, a5);
    v27 = a2;
    v19 = v12[5];
    v20 = sub_1D1E669FC();
    v21 = *(v20 - 8);
    (*(v21 + 16))(v14 + v19, a3, v20);
    *(v14 + v12[6]) = (*(a5 + 32))(a4, a5);
    v22 = (*(a5 + 40))(a4, a5);
    v23 = (v14 + v12[7]);
    *v23 = v22;
    v23[1] = v24;
    (*(a5 + 48))(v29, a4, a5);
    sub_1D186F330(v29, &v30);
    *(v14 + v12[8]) = v30;
    *(v14 + v12[9]) = (*(a5 + 56))(a4, a5) & 1;
    (*(a5 + 64))(a4, a5);
    (*(v21 + 8))(a3, v20);
    (*(*(a4 - 8) + 8))(a1, a4);
    v25 = v12[11];
    v26 = sub_1D1E66A7C();
    (*(*(v26 - 8) + 32))(v14 + v25, v27, v26);
    sub_1D187149C(v14, a6);
    return (*(v28 + 56))(a6, 0, 1, v12);
  }
}

uint64_t sub_1D186F330@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D1871500(a1, &v8);
  if (v9)
  {
    sub_1D16EEE20(&v8, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = (*(v5 + 8))(v4, v5);
    sub_1D1871570(a1);
    if (v6 != 2 && v6 != 3)
    {
      LOBYTE(v6) = v6 == 1;
    }

    result = __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_1D1871570(a1);
    result = sub_1D1871570(&v8);
    LOBYTE(v6) = 0;
  }

  *a2 = v6;
  return result;
}

BOOL static StaticTimer.< infix(_:_:)()
{
  v0 = StaticTimer.calculatedRemainingTime()();
  v1 = StaticTimer.calculatedRemainingTime()();
  if (v0 == v1)
  {
    type metadata accessor for StaticTimer(0);

    JUMPOUT(0x1D3890070);
  }

  return v0 < v1;
}

Swift::Double __swiftcall StaticTimer.calculatedRemainingTime()()
{
  v1 = type metadata accessor for StaticTimer(0);
  v2 = *(v0 + *(v1 + 32));
  if (v2 == 1)
  {
    return *(v0 + *(v1 + 24));
  }

  if (v2 == 2)
  {
    return *v0;
  }

  result = 0.0;
  if (v2 == 3)
  {
    v4 = *v0;
    sub_1D1E6697C();
    return v4 + v5;
  }

  return result;
}

unint64_t sub_1D186F508()
{
  v1 = *v0;
  v2 = 0x6E696E69616D6572;
  v3 = 25705;
  if (v1 != 6)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x6574617473;
  if (v1 != 4)
  {
    v4 = 0x676E697269467369;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461727564;
  if (v1 != 2)
  {
    v5 = 0x656C746974;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461657263;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D186F608@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D18711B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D186F630(uint64_t a1)
{
  v2 = sub_1D1870CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D186F66C(uint64_t a1)
{
  v2 = sub_1D1870CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticTimer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6458D8, &qword_1D1E7B1B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1870CF8();
  sub_1D1E6930C();
  v11[31] = 0;
  sub_1D1E68EEC();
  if (!v2)
  {
    v9 = type metadata accessor for StaticTimer(0);
    v11[30] = 1;
    sub_1D1E669FC();
    sub_1D1870EB4(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68F1C();
    v11[29] = 2;
    sub_1D1E68EEC();
    v11[28] = 3;
    sub_1D1E68E0C();
    v11[27] = *(v3 + *(v9 + 32));
    v11[26] = 4;
    sub_1D1870D4C();
    sub_1D1E68F1C();
    v11[25] = 5;
    sub_1D1E68EDC();
    v11[24] = 6;
    sub_1D1E66A7C();
    sub_1D1870EB4(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D1E68F1C();
    v11[15] = 7;
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticTimer.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1D3892890](*&v2);
  v3 = type metadata accessor for StaticTimer(0);
  sub_1D1E669FC();
  sub_1D1870EB4(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  v4 = *(v1 + v3[6]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1D3892890](*&v4);
  if (*(v1 + v3[7] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  MEMORY[0x1D3892850](*(v1 + v3[8]));
  sub_1D1E6922C();
  sub_1D1E66A7C();
  sub_1D1870EB4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E676EC();
}

uint64_t StaticTimer.hashValue.getter()
{
  sub_1D1E6920C();
  StaticTimer.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticTimer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1D1E66A7C();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v29 - v6;
  v7 = sub_1D1E669FC();
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6458F0, &qword_1D1E7B1C0);
  v37 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v29 - v10;
  v12 = type metadata accessor for StaticTimer(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1870CF8();
  v39 = v11;
  v15 = v41;
  sub_1D1E692FC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v37;
  v41 = v12;
  v50 = 0;
  sub_1D1E68D4C();
  v31 = v14;
  *v14 = v17;
  v49 = 1;
  sub_1D1870EB4(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E68D7C();
  (*(v36 + 32))(&v31[v41[5]], v9, v7);
  v48 = 2;
  sub_1D1E68D4C();
  v18 = v41;
  *&v31[v41[6]] = v19;
  v47 = 3;
  v20 = sub_1D1E68C6C();
  v30 = a1;
  v21 = &v31[v18[7]];
  *v21 = v20;
  v21[1] = v22;
  v45 = 4;
  sub_1D1870DA0();
  sub_1D1E68D7C();
  v31[v18[8]] = v46;
  v44 = 5;
  v31[v18[9]] = sub_1D1E68D3C() & 1;
  v43 = 6;
  v23 = sub_1D1870EB4(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v24 = v35;
  v30 = v23;
  sub_1D1E68D7C();
  v25 = *(v34 + 32);
  v25(&v31[v18[10]], v38, v24);
  v42 = 7;
  v26 = v33;
  sub_1D1E68D7C();
  (*(v16 + 8))(v39, v40);
  v27 = v31;
  v25(&v31[v41[11]], v26, v35);
  sub_1D1870DF4(v27, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1870E58(v27);
}

uint64_t sub_1D1870250()
{
  sub_1D1E6920C();
  StaticTimer.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1870294(uint64_t a1)
{
  sub_1D1E6920C();
  StaticTimer.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1870300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1D1E66A7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL sub_1D1870374()
{
  v0 = StaticTimer.calculatedRemainingTime()();
  v1 = StaticTimer.calculatedRemainingTime()();
  if (v0 == v1)
  {

    JUMPOUT(0x1D3890070);
  }

  return v0 < v1;
}

BOOL sub_1D18703FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = StaticTimer.calculatedRemainingTime()();
  v7 = StaticTimer.calculatedRemainingTime()();
  if (v6 == v7)
  {
    v8 = MEMORY[0x1D3890070](a2 + *(a3 + 40), a1 + *(a3 + 40));
  }

  else
  {
    v8 = v6 < v7;
  }

  return (v8 & 1) == 0;
}

BOOL sub_1D1870470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = StaticTimer.calculatedRemainingTime()();
  v7 = StaticTimer.calculatedRemainingTime()();
  if (v6 == v7)
  {
    v8 = MEMORY[0x1D3890070](a1 + *(a3 + 40), a2 + *(a3 + 40));
  }

  else
  {
    v8 = v6 < v7;
  }

  return (v8 & 1) == 0;
}

BOOL sub_1D18704E4()
{
  v0 = StaticTimer.calculatedRemainingTime()();
  v1 = StaticTimer.calculatedRemainingTime()();
  if (v0 == v1)
  {

    JUMPOUT(0x1D3890070);
  }

  return v0 < v1;
}

uint64_t StaticTimer.shouldBeVisible.getter()
{
  v1 = type metadata accessor for StaticTimer(0);
  v2 = *(v0 + *(v1 + 32));
  if ((v2 - 2) < 2)
  {
    return 1;
  }

  if (v2 == 1)
  {
    return *(v0 + *(v1 + 36));
  }

  return 0;
}

HomeDataModel::StaticTimer::State_optional __swiftcall StaticTimer.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t StaticTimer.toggleState()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D18706B0, 0, 0);
}

uint64_t sub_1D18706B0()
{
  *(v0 + 32) = sub_1D1E67E1C();
  *(v0 + 40) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1870748, v2, v1);
}

uint64_t sub_1D1870748()
{

  if (qword_1EE07B1D8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D18707E0, 0, 0);
}

uint64_t sub_1D18707E0(uint64_t a1)
{
  *(v1 + 48) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D187086C, v3, v2);
}

uint64_t sub_1D187086C()
{
  v1 = v0[3];

  v2 = type metadata accessor for StaticTimer(0);
  v3 = *(v2 + 40);
  v4 = *(v2 + 44);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1D186C9D4;
  v6 = v0[2];

  return CoordinationDataModel.toggleTimerState(staticTimerID:parentContainerID:)(v6, v1 + v3, v1 + v4);
}

uint64_t StaticTimer.delete()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1870954, 0, 0);
}

uint64_t sub_1D1870954()
{
  *(v0 + 32) = sub_1D1E67E1C();
  *(v0 + 40) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18709EC, v2, v1);
}

uint64_t sub_1D18709EC()
{

  if (qword_1EE07B1D8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1870A84, 0, 0);
}

uint64_t sub_1D1870A84(uint64_t a1)
{
  *(v1 + 48) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1870B10, v3, v2);
}

uint64_t sub_1D1870B10()
{
  v1 = v0[3];

  v2 = type metadata accessor for StaticTimer(0);
  v3 = *(v2 + 40);
  v4 = *(v2 + 44);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1D186E3E4;
  v6 = v0[2];

  return CoordinationDataModel.deleteTimer(staticTimerID:parentContainerID:)(v6, v1 + v3, v1 + v4);
}

uint64_t _s13HomeDataModel11StaticTimerV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticTimer(0);
  if ((sub_1D1E669AC() & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]) || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

unint64_t sub_1D1870CF8()
{
  result = qword_1EC6458E0;
  if (!qword_1EC6458E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458E0);
  }

  return result;
}

unint64_t sub_1D1870D4C()
{
  result = qword_1EC6458E8;
  if (!qword_1EC6458E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458E8);
  }

  return result;
}

unint64_t sub_1D1870DA0()
{
  result = qword_1EC6458F8;
  if (!qword_1EC6458F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6458F8);
  }

  return result;
}

uint64_t sub_1D1870DF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticTimer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1870E58(uint64_t a1)
{
  v2 = type metadata accessor for StaticTimer(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1870EB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1870F48()
{
  result = qword_1EC645908;
  if (!qword_1EC645908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645908);
  }

  return result;
}

void sub_1D1870FC4(uint64_t a1)
{
  sub_1D1E669FC();
  if (v1 <= 0x3F)
  {
    sub_1D17786E4();
    if (v2 <= 0x3F)
    {
      sub_1D1E66A7C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D18710AC()
{
  result = qword_1EC645910;
  if (!qword_1EC645910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645910);
  }

  return result;
}

unint64_t sub_1D1871104()
{
  result = qword_1EC645918;
  if (!qword_1EC645918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645918);
  }

  return result;
}

unint64_t sub_1D187115C()
{
  result = qword_1EC645920;
  if (!qword_1EC645920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645920);
  }

  return result;
}

uint64_t sub_1D18711B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696E69616D6572 && a2 == 0xED0000656D695467;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC000000656D6954 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E697269467369 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EBB2F0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1D1871448()
{
  result = qword_1EC645928;
  if (!qword_1EC645928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645928);
  }

  return result;
}

uint64_t sub_1D187149C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticTimer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1871500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC645930, &unk_1D1E7B580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1871570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC645930, &unk_1D1E7B580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D18715DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D1871640(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D1871688(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_1D18716F0(uint64_t a1)
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

id sub_1D187178C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v35 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v9);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = *(v3 + 48);
  v19 = *(v14 + 16);
  v19(&v34 - v20, v18 + *(*v18 + 88), v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459B8, &unk_1D1E7B690);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(&v39, v42);
    (*(v6 + 16))(v11, a1, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643170, &qword_1D1E7A060);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v36, &v39);
      v21 = v43;
      v22 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v23 = *(&v40 + 1);
      v24 = v41;
      v25 = __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
      v26 = (*(v22 + 24))(v25, v23, v24, v21, v22);
LABEL_9:
      v32 = v26;
      __swift_destroy_boxed_opaque_existential_1(&v39);
      __swift_destroy_boxed_opaque_existential_1(v42);
      return v32;
    }

    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_1D1741A30(&v36, &qword_1EC645670, &qword_1D1E7B950);
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1D1741A30(&v39, &qword_1EC6459C0, &qword_1D1E7B920);
  }

  v19(v17, v18 + *(*v18 + 88), v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6459C8, &qword_1D1E7B6A0);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(&v39, v42);
    (*(v6 + 16))(v35, a1, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643180, &unk_1D1E71CD0);
    if (swift_dynamicCast())
    {
      sub_1D16EEE20(&v36, &v39);
      v27 = v43;
      v28 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v29 = *(&v40 + 1);
      v30 = v41;
      v31 = __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
      v26 = (*(v28 + 16))(v31, v29, v30, v27, v28);
      goto LABEL_9;
    }

    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    sub_1D1741A30(&v36, &qword_1EC6456C0, &unk_1D1E7A3F0);
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_1D1741A30(&v39, &qword_1EC6459D0, &qword_1D1E7B6A8);
  }

  return [objc_allocWithZone(MEMORY[0x1E69B3780]) init];
}