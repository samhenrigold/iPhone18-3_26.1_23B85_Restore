uint64_t sub_1D1DC6A44(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = a4;
  v56 = type metadata accessor for StaticHome(0);
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
          sub_1D1DC9148(v40, v54, type metadata accessor for StaticHome);
          v42 = v55;
          sub_1D1DC9148(v36, v55, type metadata accessor for StaticHome);
          v43 = *(v56 + 20);
          v44 = *(v41 + v43);
          v45 = *(v41 + v43 + 8);
          v46 = (v42 + v43);
          v47 = v44 == *v46 && v45 == v46[1];
          v48 = v47 ? 0 : sub_1D1E6904C();
          v33 = v38;
          a3 = v37 + v38;
          sub_1D1DC91B0(v55, type metadata accessor for StaticHome);
          sub_1D1DC91B0(v54, type metadata accessor for StaticHome);
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
        sub_1D1DC9148(a2, v16, type metadata accessor for StaticHome);
        sub_1D1DC9148(v57, v13, type metadata accessor for StaticHome);
        v25 = *(v56 + 20);
        v26 = *&v16[v25];
        v27 = *&v16[v25 + 8];
        v28 = &v13[v25];
        if (v26 == *v28 && v27 == *(v28 + 1))
        {
          break;
        }

        v30 = sub_1D1E6904C();
        sub_1D1DC91B0(v13, type metadata accessor for StaticHome);
        sub_1D1DC91B0(v16, type metadata accessor for StaticHome);
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

      sub_1D1DC91B0(v13, type metadata accessor for StaticHome);
      sub_1D1DC91B0(v16, type metadata accessor for StaticHome);
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
  sub_1D1DC727C(&v60, &v59, &v58, type metadata accessor for StaticHome);
  return 1;
}

uint64_t sub_1D1DC700C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1D1DC727C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1D1DC7364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WidgetDataModel.Error(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD68, &qword_1D1EB0818);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1D1DC9148(a1, &v20 - v13, type metadata accessor for WidgetDataModel.Error);
  sub_1D1DC9148(a2, &v14[v15], type metadata accessor for WidgetDataModel.Error);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D1DC9148(v14, v10, type metadata accessor for WidgetDataModel.Error);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v17 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1D1DC91B0(v14, type metadata accessor for WidgetDataModel.Error);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D1741A30(v14, &qword_1EC64FD68, &qword_1D1EB0818);
    v17 = 0;
    return v17 & 1;
  }

  sub_1D1DC91B0(v14, type metadata accessor for WidgetDataModel.Error);
  v17 = 1;
  return v17 & 1;
}

uint64_t _s13HomeDataModel23WidgetSnapshotModeratorC5ErrorO2eeoiySbAE_AEtFZ_0(char *a1, char *a2)
{
  v34 = a1;
  v35 = a2;
  v2 = sub_1D1E66A7C();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for WidgetSnapshotModerator.Error(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD88, &qword_1D1EB0888);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v32 - v17;
  v19 = *(v16 + 56);
  sub_1D1DC9148(v34, &v32 - v17, type metadata accessor for WidgetSnapshotModerator.Error);
  sub_1D1DC9148(v35, &v18[v19], type metadata accessor for WidgetSnapshotModerator.Error);
  v20 = *(v6 + 48);
  v21 = v20(v18, 4, v5);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (v20(&v18[v19], 4, v5) != 2)
      {
        goto LABEL_15;
      }
    }

    else if (v21 == 3)
    {
      if (v20(&v18[v19], 4, v5) != 3)
      {
        goto LABEL_15;
      }
    }

    else if (v20(&v18[v19], 4, v5) != 4)
    {
      goto LABEL_15;
    }

LABEL_14:
    sub_1D1DC91B0(v18, type metadata accessor for WidgetSnapshotModerator.Error);
    return 1;
  }

  v34 = v4;
  v35 = v8;
  v23 = v32;
  v22 = v33;
  if (!v21)
  {
    sub_1D1DC9148(v18, v14, type metadata accessor for WidgetSnapshotModerator.Error);
    if (v20(&v18[v19], 4, v5))
    {
      sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
      goto LABEL_15;
    }

    v25 = *(v9 + 48);
    sub_1D1778308(v14, v11);
    sub_1D1778308(&v18[v19], &v11[v25]);
    v26 = v23;
    v27 = *(v23 + 48);
    if (v27(v11, 1, v22) == 1)
    {
      if (v27(&v11[v25], 1, v22) == 1)
      {
        sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
        goto LABEL_14;
      }
    }

    else
    {
      v28 = v35;
      sub_1D1741C08(v11, v35, &qword_1EC642590, qword_1D1E71260);
      if (v27(&v11[v25], 1, v22) != 1)
      {
        v29 = v34;
        (*(v26 + 32))(v34, &v11[v25], v22);
        sub_1D1DC9C14(&qword_1EE07D170, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v30 = sub_1D1E6775C();
        v31 = *(v26 + 8);
        v31(v29, v22);
        v31(v28, v22);
        sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
        if (v30)
        {
          goto LABEL_14;
        }

LABEL_23:
        sub_1D1DC91B0(v18, type metadata accessor for WidgetSnapshotModerator.Error);
        return 0;
      }

      (*(v26 + 8))(v28, v22);
    }

    sub_1D1741A30(v11, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_23;
  }

  if (v20(&v18[v19], 4, v5) == 1)
  {
    goto LABEL_14;
  }

LABEL_15:
  sub_1D1741A30(v18, &qword_1EC64FD88, &qword_1D1EB0888);
  return 0;
}

uint64_t sub_1D1DC7BE0(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v23 = a4;
  v22 = a1;
  v21 = sub_1D1E66A7C();
  v7 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticHome(0);
  v11 = *(v10 - 8);
  result = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return 0;
  }

  else
  {
    v20[1] = v4;
    v16 = (v7 + 8);
    if (a2 <= v15)
    {
      v17 = a3 >> 1;
    }

    else
    {
      v17 = a2;
    }

    while (v17 != a2)
    {
      sub_1D1DC9148(v22 + *(v11 + 72) * a2, v14, type metadata accessor for StaticHome);
      v18 = [v23 uniqueIdentifier];
      sub_1D1E66A5C();

      v19 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      (*v16)(v9, v21);
      result = sub_1D1DC91B0(v14, type metadata accessor for StaticHome);
      if (v19)
      {
        return a2;
      }

      if (v15 == ++a2)
      {
        return 0;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1D1DC7E10(uint64_t a1, uint64_t *a2, void *a3)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v50 - v8;
  v58 = type metadata accessor for StaticEndpoint(0);
  v9 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v50 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticMatterDevice(0);
  v65 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + 64;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v56 = (v9 + 48);
  v53 = (v9 + 56);

  v18 = 0;
  v54 = MEMORY[0x1E69E7CC0];
  v55 = a2;
  v60 = a1;
  v57 = v11;
LABEL_4:
  v19 = v68;
  while (v16)
  {
LABEL_14:
    v24 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_1D1DC9148(*(a1 + 56) + *(v65 + 72) * (v24 | (v18 << 6)), v19, type metadata accessor for StaticMatterDevice);
    v25 = *a2;
    if (*(*a2 + 16))
    {
      v26 = sub_1D17420B0(*(v19 + *(v11 + 20)));
      if (v27)
      {
        v28 = (*(v25 + 56) + 16 * v26);
        v29 = *v28;
        v52 = v28[1];
        v30 = v63;
        v31 = *(v19 + *(v11 + 56));
        v32 = MEMORY[0x1EEE9AC00](v29);
        *(&v50 - 2) = v19;
        v62 = v32;
        swift_unknownObjectRetain();

        v33 = v64;
        sub_1D1746B78(sub_1D18076C8, v31, v30);
        v64 = v33;

        v34 = *v56;
        v35 = v58;
        v36 = (*v56)(v30, 1, v58);
        v61 = v34;
        if (v36 == 1)
        {

          v21 = v59;
          sub_1D1771D7C(v37, v59);

          v38 = v63;
          if (v34(v63, 1, v35) != 1)
          {
            sub_1D1741A30(v38, &qword_1EC644780, &qword_1D1E91AA0);
          }
        }

        else
        {
          v20 = v30;
          v21 = v59;
          sub_1D1DCF39C(v20, v59, type metadata accessor for StaticEndpoint);
          (*v53)(v21, 0, 1, v35);
        }

        v22 = v61(v21, 1, v35);
        a1 = v60;
        if (v22 != 1)
        {
          v39 = v50;
          sub_1D1DCF39C(v21, v50, type metadata accessor for StaticEndpoint);
          v40 = [v51 matterControllerID];
          v61 = sub_1D1E6781C();
          v42 = v41;

          sub_1D1DD75D0(v62, v52, v61, v42, v39, v66);

          swift_unknownObjectRelease();
          sub_1D1DC91B0(v39, type metadata accessor for StaticEndpoint);
          sub_1D1DC91B0(v68, type metadata accessor for StaticMatterDevice);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a2 = v55;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v54 = sub_1D177E7E0(0, *(v54 + 2) + 1, 1, v54);
          }

          v45 = *(v54 + 2);
          v44 = *(v54 + 3);
          v11 = v57;
          if (v45 >= v44 >> 1)
          {
            v54 = sub_1D177E7E0((v44 > 1), v45 + 1, 1, v54);
          }

          v46 = v54;
          *(v54 + 2) = v45 + 1;
          v47 = &v46[40 * v45];
          v48 = v66[0];
          v49 = v66[1];
          *(v47 + 8) = v67;
          *(v47 + 2) = v48;
          *(v47 + 3) = v49;
          a1 = v60;
          goto LABEL_4;
        }

        swift_unknownObjectRelease();
        sub_1D1741A30(v21, &qword_1EC644780, &qword_1D1E91AA0);
        a2 = v55;
        v11 = v57;
      }
    }

    v19 = v68;
    sub_1D1DC91B0(v68, type metadata accessor for StaticMatterDevice);
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= v17)
    {

      return;
    }

    v16 = *(v13 + 8 * v23);
    ++v18;
    if (v16)
    {
      v18 = v23;
      goto LABEL_14;
    }
  }

  __break(1u);
}

unint64_t sub_1D1DC83E4(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v28)
  {
    v5 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x1E69E7CC0];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = i;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v5, v30);
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v5);
      }

      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        break;
      }

      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v9 = v3;
      sub_1D1DB7124(&v40, a2, &selRef_actionSets, &qword_1EE07B680, 0x1E696CAF0, &v39);
      if (v3)
      {
        goto LABEL_40;
      }

      v10 = v39;
      v7 = (v39 >> 62);
      if (v39 >> 62)
      {
        v11 = sub_1D1E6873C();
      }

      else
      {
        v11 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v6 >> 62;
      if (v6 >> 62)
      {
        v27 = sub_1D1E6873C();
        v14 = v27 + v11;
        if (__OFADD__(v27, v11))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v6;
        }
      }

      else
      {
        v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          v15 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_1D1E6873C();
        goto LABEL_21;
      }

      if (v12)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v7)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        if (((v17 >> 1) - v16) < v11)
        {
          goto LABEL_44;
        }

        v37 = v6;
        v20 = v15 + 8 * v16 + 32;
        v31 = v15;
        if (v7)
        {
          if (v18 < 1)
          {
            goto LABEL_46;
          }

          sub_1D17D8EA8(&qword_1EC64FD80, &qword_1EC64FD78, &unk_1D1EB0860, MEMORY[0x1E69E6340]);
          for (j = 0; j != v18; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD78, &unk_1D1EB0860);
            v22 = sub_1D1790CDC(v38, j, v10);
            v24 = *v23;
            (v22)(v38, 0);
            *(v20 + 8 * j) = v24;
          }
        }

        else
        {
          sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
          swift_arrayInitWithCopy();
        }

        v3 = v9;
        v6 = v37;
        if (v11 >= 1)
        {
          v25 = *(v31 + 16);
          v8 = __OFADD__(v25, v11);
          v26 = v25 + v11;
          if (v8)
          {
            goto LABEL_45;
          }

          *(v31 + 16) = v26;
        }
      }

      else
      {

        if (v11 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v5 == v32)
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
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_1D1E6873C();
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D1DC8780(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v28)
  {
    v5 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x1E69E7CC0];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = i;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v5, v30);
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v5);
      }

      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        break;
      }

      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v9 = v3;
      sub_1D1DB7124(&v40, a2, &selRef_characteristics, &qword_1EE079CD0, 0x1E696CB38, &v39);
      if (v3)
      {
        goto LABEL_40;
      }

      v10 = v39;
      v7 = (v39 >> 62);
      if (v39 >> 62)
      {
        v11 = sub_1D1E6873C();
      }

      else
      {
        v11 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v6 >> 62;
      if (v6 >> 62)
      {
        v27 = sub_1D1E6873C();
        v14 = v27 + v11;
        if (__OFADD__(v27, v11))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v6;
        }
      }

      else
      {
        v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          v15 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_1D1E6873C();
        goto LABEL_21;
      }

      if (v12)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v7)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        if (((v17 >> 1) - v16) < v11)
        {
          goto LABEL_44;
        }

        v37 = v6;
        v20 = v15 + 8 * v16 + 32;
        v31 = v15;
        if (v7)
        {
          if (v18 < 1)
          {
            goto LABEL_46;
          }

          sub_1D17D8EA8(&qword_1EC649B78, &qword_1EC649B80, &unk_1D1E95B60, MEMORY[0x1E69E6340]);
          for (j = 0; j != v18; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B80, &unk_1D1E95B60);
            v22 = sub_1D1790CDC(v38, j, v10);
            v24 = *v23;
            (v22)(v38, 0);
            *(v20 + 8 * j) = v24;
          }
        }

        else
        {
          sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
          swift_arrayInitWithCopy();
        }

        v3 = v9;
        v6 = v37;
        if (v11 >= 1)
        {
          v25 = *(v31 + 16);
          v8 = __OFADD__(v25, v11);
          v26 = v25 + v11;
          if (v8)
          {
            goto LABEL_45;
          }

          *(v31 + 16) = v26;
        }
      }

      else
      {

        if (v11 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v5 == v32)
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
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_1D1E6873C();
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D1DC8BA4(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, SEL *a3, unint64_t *a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v6 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v6)
  {
    v7 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v8 = MEMORY[0x1E69E7CC0];
    v31 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = v6;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v7, v31);
      }

      else
      {
        if (v7 >= *(v34 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v7);
      }

      v9 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        break;
      }

      v11 = [isUniquelyReferenced_nonNull_bridgeObject *a3];
      sub_1D1741B10(0, a4, a5);
      v12 = sub_1D1E67C1C();

      v13 = a6(v12, a2);

      v14 = v13 >> 62;
      if (v13 >> 62)
      {
        v15 = sub_1D1E6873C();
      }

      else
      {
        v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v16 = v8 >> 62;
      if (v8 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v17 = isUniquelyReferenced_nonNull_bridgeObject + v15;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = isUniquelyReferenced_nonNull_bridgeObject + v15;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v15))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v16)
        {
          v18 = v8 & 0xFFFFFFFFFFFFFF8;
          if (v17 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_1D1E6873C();
        goto LABEL_20;
      }

      if (v16)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v8 = isUniquelyReferenced_nonNull_bridgeObject;
      v18 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v43 = v8;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v14)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v21 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v20 >> 1) - v19) < v15)
          {
            goto LABEL_42;
          }

          v22 = v18 + 8 * v19 + 32;
          v41 = v15;
          if (v14)
          {
            if (v21 < 1)
            {
              goto LABEL_44;
            }

            sub_1D17D8EA8(&qword_1EC649B78, &qword_1EC649B80, &unk_1D1E95B60, MEMORY[0x1E69E6340]);
            for (i = 0; i != v21; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B80, &unk_1D1E95B60);
              v24 = sub_1D1790CDC(v42, i, v13);
              v26 = *v25;
              (v24)(v42, 0);
              *(v22 + 8 * i) = v26;
            }
          }

          else
          {
            sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
            swift_arrayInitWithCopy();
          }

          v8 = v43;
          if (v41 >= 1)
          {
            v27 = *(v18 + 16);
            v10 = __OFADD__(v27, v41);
            v28 = v27 + v41;
            if (v10)
            {
              goto LABEL_43;
            }

            *(v18 + 16) = v28;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
          goto LABEL_25;
        }
      }

      v8 = v43;
      if (v15 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      if (v7 == v32)
      {
        return v8;
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
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v6 = sub_1D1E6873C();
    isUniquelyReferenced_nonNull_bridgeObject = v29;
  }

  return MEMORY[0x1E69E7CC0];
}

id sub_1D1DC8F84(uint64_t a1)
{
  if (qword_1EC642300 != -1)
  {
    swift_once();
  }

  v2 = objc_allocWithZone(MEMORY[0x1E696CC08]);

  v3 = [v2 initWithOptions:a1 cachePolicy:0];
  [v3 setDiscretionary_];
  [v3 setInactiveUpdatingLevel_];
  v4 = HomeState._Client.createHomeManagerIfNecessary(configuration:)(v3);

  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  qword_1EE07AE40 = 3;
  swift_beginAccess();
  if (!qword_1EE07AE00)
  {
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v5 = qword_1EE07DC60;
    v6 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
    swift_beginAccess();
    v7 = *(v5 + v6);
    *(v5 + v6) = v4;
    v8 = v4;
  }

  return v4;
}

uint64_t sub_1D1DC9148(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1DC91B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id _s13HomeDataModel06WidgetbC0C11homeManagerSo06HMHomeF0CSgvg_0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = sub_1D1E6781C();
  v4 = v3;

  if (v2 == 0xD000000000000015 && 0x80000001D1EC9E10 == v4)
  {
  }

  else
  {
    v6 = sub_1D1E6904C();

    if ((v6 & 1) == 0)
    {
LABEL_7:
      if (qword_1EC642300 != -1)
      {
        swift_once();
      }

      v7 = off_1EC649B88;
      swift_getKeyPath();
      sub_1D1DC9C14(&qword_1EC649B98, 255, type metadata accessor for HomeState._Client, &protocol conformance descriptor for HomeState._Client);

      sub_1D1E66CAC();

      v8 = v7[2];
      v9 = v8;

      if (!v8)
      {
        if (qword_1EC6424B8 != -1)
        {
          swift_once();
        }

        os_unfair_lock_lock(&dword_1EC64F958);
        v10 = qword_1EC64F960;
        os_unfair_lock_unlock(&dword_1EC64F958);
        return sub_1D1DC8F84(v10);
      }

      return v8;
    }
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EE0813C8);
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6833C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D16EC000, v12, v13, "Attempting to use WidgetDataModel in Springboard, this is not supported", v14, 2u);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE07DC60;
  v16 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v8 = *(v15 + v16);
  v17 = v8;
  return v8;
}

unint64_t sub_1D1DC9524()
{
  result = qword_1EC64F970;
  if (!qword_1EC64F970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F970);
  }

  return result;
}

uint64_t sub_1D1DC9578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28 = a5;
  v29 = a2;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticHome(0);
  v12 = *(v11 - 8);
  result = MEMORY[0x1EEE9AC00](v11 - 8);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v15 >> 1;
  v19 = v14;
  if (v15 >> 1 != v14)
  {
    v24 = a1;
    v25 = v14;
    v26 = v15;
    v27 = v5;
    v20 = (v8 + 8);
    v19 = v14;
    if (v14 <= v18)
    {
      v21 = v15 >> 1;
    }

    else
    {
      v21 = v14;
    }

    while (1)
    {
      if (v21 == v19)
      {
        __break(1u);
        goto LABEL_15;
      }

      sub_1D1DC9148(v29 + *(v12 + 72) * v19, v17, type metadata accessor for StaticHome);
      v22 = [v28 uniqueIdentifier];
      sub_1D1E66A5C();

      LOBYTE(v22) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      (*v20)(v10, v7);
      result = sub_1D1DC91B0(v17, type metadata accessor for StaticHome);
      if ((v22 & 1) == 0)
      {
        break;
      }

      if (v18 == ++v19)
      {
        v19 = v18;
        break;
      }
    }

    v14 = v25;
    a1 = v24;
    if (v19 >= v25)
    {
      goto LABEL_10;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_10:
  if (v18 < v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v18 < v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    return a1;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D1DC97E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD90, &qword_1D1EB0890);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1DC9524();
  sub_1D1E692FC();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1D1E68D2C();
    v10 = 1;
    sub_1D1E68D2C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1D1DC9A1C()
{
  result = qword_1EC64F9A8;
  if (!qword_1EC64F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9A8);
  }

  return result;
}

unint64_t sub_1D1DC9A70()
{
  result = qword_1EC64F9B0;
  if (!qword_1EC64F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9B0);
  }

  return result;
}

unint64_t sub_1D1DC9AC4()
{
  result = qword_1EC64F9B8;
  if (!qword_1EC64F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9B8);
  }

  return result;
}

unint64_t sub_1D1DC9B18()
{
  result = qword_1EC64F9C0;
  if (!qword_1EC64F9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9C0);
  }

  return result;
}

unint64_t sub_1D1DC9B6C()
{
  result = qword_1EC64F9C8;
  if (!qword_1EC64F9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9C8);
  }

  return result;
}

unint64_t sub_1D1DC9BC0()
{
  result = qword_1EC64F9D0;
  if (!qword_1EC64F9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9D0);
  }

  return result;
}

uint64_t sub_1D1DC9C14(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1DC9C74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticHome(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1DC9D80()
{
  result = qword_1EC64F9F0;
  if (!qword_1EC64F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F9F0);
  }

  return result;
}

void sub_1D1DC9E70(uint64_t a1)
{
  sub_1D177868C(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1D1E66FDC();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t sub_1D1DC9F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = *(*(a2 + 16) - 8) + 8;
  v7 = v6;
  v8 = *(v5 + 64) + a1;
  if (!*(v5 + 84))
  {
    ++v8;
  }

  v9 = (v8 + *(v6 + 72)) & ~*(v6 + 72);
  (*v6)(v9);
  v10 = (*(v7 + 56) + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = sub_1D1E66FDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 8);
  v14 = (v10 + *(v12 + 80) + 4) & ~*(v12 + 80);

  return v13(v14, v11);
}

void *sub_1D1DCA0EC(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = *(*(a3 + 16) - 8);
  v15 = v14 + 32;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (a1 + v17) & ~v16;
  v19 = (a2 + v17) & ~v16;
  (*(v14 + 32))(v18, v19);
  v20 = *(v15 + 32) + 3;
  v21 = ((v20 + v18) & 0xFFFFFFFFFFFFFFFCLL);
  v22 = ((v20 + v19) & 0xFFFFFFFFFFFFFFFCLL);
  *v21 = *v22;
  v23 = sub_1D1E66FDC();
  v24 = *(v23 - 8);
  (*(v24 + 32))((v21 + *(v24 + 80) + 4) & ~*(v24 + 80), (v22 + *(v24 + 80) + 4) & ~*(v24 + 80), v23);
  return a1;
}

void *sub_1D1DCA2C0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = *(*(a3 + 16) - 8);
  v16 = v15 + 40;
  v17 = *(v15 + 80);
  v18 = v14 + v17;
  v19 = (a1 + v18) & ~v17;
  v20 = (a2 + v18) & ~v17;
  (*(v15 + 40))(v19, v20);
  v21 = *(v16 + 24) + 3;
  v22 = ((v21 + v19) & 0xFFFFFFFFFFFFFFFCLL);
  v23 = ((v21 + v20) & 0xFFFFFFFFFFFFFFFCLL);
  *v22 = *v23;
  v24 = sub_1D1E66FDC();
  v25 = *(v24 - 8);
  (*(v25 + 40))((v22 + *(v25 + 80) + 4) & ~*(v25 + 80), (v23 + *(v25 + 80) + 4) & ~*(v25 + 80), v24);
  return a1;
}

uint64_t sub_1D1DCA510(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v37 = v6;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v36 = *(a3 + 16);
  v10 = *(v36 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(sub_1D1E66FDC() - 8);
  v14 = v13;
  if (*(v13 + 84) <= v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = *(v13 + 84);
  }

  v16 = *(v10 + 80);
  v17 = *(v13 + 80);
  v18 = *(v13 + 64);
  if (v8)
  {
    v19 = *(v7 + 64);
  }

  else
  {
    v19 = *(v7 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v19 + v16;
  v21 = *(v10 + 64) + 3;
  v22 = v17 + 4;
  if (a2 <= v15)
  {
    goto LABEL_37;
  }

  v23 = ((v22 + ((v21 + (v20 & ~v16)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v17) + v18;
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v26 = ((a2 - v15 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v26))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v26 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_36;
      }

      goto LABEL_23;
    }

    if (v26 < 2)
    {
LABEL_36:
      if (v15)
      {
LABEL_37:
        if (v9 == v15)
        {
          v30 = (*(v7 + 48))(a1, v8, v37);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v32 = (a1 + v20) & ~v16;
          if (v11 == v15)
          {
            v33 = *(v10 + 48);

            return v33(v32, v11, v36);
          }

          else
          {
            v34 = *(v14 + 48);
            v35 = (v22 + ((v21 + v32) & 0xFFFFFFFFFFFFFFFCLL)) & ~v17;

            return v34(v35);
          }
        }
      }

      return 0;
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_36;
  }

LABEL_23:
  v27 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v27 = 0;
  }

  if (v23)
  {
    if (v23 <= 3)
    {
      v28 = v23;
    }

    else
    {
      v28 = 4;
    }

    if (v28 > 2)
    {
      if (v28 == 3)
      {
        v29 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v29 = *a1;
      }
    }

    else if (v28 == 1)
    {
      v29 = *a1;
    }

    else
    {
      v29 = *a1;
    }
  }

  else
  {
    v29 = 0;
  }

  return v15 + (v29 | v27) + 1;
}

void sub_1D1DCA860(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v37 = v7;
  v38 = v6;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v36 = *(a4 + 16);
  v10 = *(v36 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = 0;
  v14 = *(sub_1D1E66FDC() - 8);
  v15 = v14;
  v16 = *(v7 + 64);
  if (*(v14 + 84) <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = *(v14 + 84);
  }

  if (!v8)
  {
    ++v16;
  }

  v18 = *(v10 + 80);
  v19 = v16 + v18;
  v20 = (v16 + v18) & ~v18;
  v21 = *(v10 + 64) + 3;
  v22 = *(v14 + 80);
  v23 = ((v22 + 4 + ((v21 + v20) & 0xFFFFFFFFFFFFFFFCLL)) & ~v22) + *(v14 + 64);
  if (a3 > v17)
  {
    if (v23 <= 3)
    {
      v24 = ((a3 - v17 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v24))
      {
        v13 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v13 = v25;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  v26 = a2;
  if (v17 < a2)
  {
    v27 = ~v17 + a2;
    if (v23 < 4)
    {
      v28 = (v27 >> (8 * v23)) + 1;
      if (v23)
      {
        v30 = v27 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v30;
            if (v13 > 1)
            {
LABEL_56:
              if (v13 == 2)
              {
                *&a1[v23] = v28;
              }

              else
              {
                *&a1[v23] = v28;
              }

              return;
            }
          }

          else
          {
            *a1 = v27;
            if (v13 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *a1 = v30;
        a1[2] = BYTE2(v30);
      }

      if (v13 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v27;
      v28 = 1;
      if (v13 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v13)
    {
      a1[v23] = v28;
    }

    return;
  }

  v29 = a1;
  if (v13 <= 1)
  {
    if (v13)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (v13 == 2)
  {
    *&a1[v23] = 0;
    goto LABEL_38;
  }

  *&a1[v23] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v9 == v17)
  {
    v31 = v38;
    v32 = *(v37 + 56);
    v26 = a2 + 1;
    v33 = v8;
LABEL_43:

    v32(v29, v26, v33, v31);
    return;
  }

  v29 = (&a1[v19] & ~v18);
  if (v11 == v17)
  {
    v32 = *(v10 + 56);
    v33 = v11;
    v31 = v36;
    goto LABEL_43;
  }

  v34 = *(v15 + 56);
  v35 = (v22 + 4 + (&v29[v21] & 0xFFFFFFFFFFFFFFFCLL)) & ~v22;

  v34(v35);
}

void sub_1D1DCAC1C(uint64_t a1)
{
  sub_1D177868C(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1D1E66FDC();
      if (v3 <= 0x3F)
      {
        swift_initStructMetadata();
      }
    }
  }
}

uint64_t sub_1D1DCAD4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1, 1, v4))
  {
    (*(v5 + 8))(a1, v4);
  }

  v6 = a1 + *(v5 + 64);
  if (!*(v5 + 84))
  {
    ++v6;
  }

  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15;

  v8 = *(*(a2 + 16) - 8);
  v9 = v8 + 8;
  v10 = ((((v7 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 8) & ~*(v8 + 80);
  (*(v8 + 8))(v10);
  v11 = (*(v9 + 56) + v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = sub_1D1E66FDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v15 = (v11 + *(v13 + 80) + 5) & ~*(v13 + 80);

  return v14(v15, v12);
}

void *sub_1D1DCAEE0(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(v7 + 84);
    v9 = *(v7 + 64);
    if (v8)
    {
      v10 = v9;
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    v12 = *(v7 + 56);
    v11 = v7 + 56;
    v12(a1, 0, 1, v6);
    v8 = *(v11 + 28);
    v9 = *(v11 + 8);
  }

  if (v8)
  {
    v13 = v9;
  }

  else
  {
    v13 = v9 + 1;
  }

  v14 = v13 + 7;
  v15 = ((a1 + v14) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((a2 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v15 = *v16;
  v17 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = *(*(a3 + 16) - 8);
  v22 = v21 + 32;
  v23 = *(v21 + 80);
  v24 = (v19 + v23 + 8) & ~v23;
  v25 = (v20 + v23 + 8) & ~v23;
  (*(v21 + 32))(v24, v25);
  v26 = *(v22 + 32) + 3;
  v27 = (v26 + v24) & 0xFFFFFFFFFFFFFFFCLL;
  v28 = (v26 + v25) & 0xFFFFFFFFFFFFFFFCLL;
  *v27 = *v28;
  *(v27 + 4) = *(v28 + 4);
  v29 = sub_1D1E66FDC();
  v30 = *(v29 - 8);
  (*(v30 + 32))((*(v30 + 80) + 5 + v27) & ~*(v30 + 80), (*(v30 + 80) + 5 + v28) & ~*(v30 + 80), v29);
  return a1;
}

void *sub_1D1DCB0F8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      goto LABEL_12;
    }

    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_12;
    }

    (*(v7 + 8))(a1, v6);
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
  }

  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = v12 + 1;
  }

  memcpy(a1, a2, v13);
LABEL_12:
  if (*(v7 + 84))
  {
    v14 = *(v7 + 64);
  }

  else
  {
    v14 = *(v7 + 64) + 1;
  }

  v15 = v14 + 7;
  v16 = ((a1 + v15) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((a2 + v15) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;

  v18 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;

  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;

  v22 = *(*(a3 + 16) - 8);
  v23 = v22 + 40;
  v24 = *(v22 + 80);
  v25 = (v20 + v24 + 8) & ~v24;
  v26 = (v21 + v24 + 8) & ~v24;
  (*(v22 + 40))(v25, v26);
  v27 = *(v23 + 24) + 3;
  v28 = (v27 + v25) & 0xFFFFFFFFFFFFFFFCLL;
  v29 = (v27 + v26) & 0xFFFFFFFFFFFFFFFCLL;
  *v28 = *v29;
  *(v28 + 4) = *(v29 + 4);
  v30 = sub_1D1E66FDC();
  v31 = *(v30 - 8);
  (*(v31 + 40))((*(v31 + 80) + 5 + v28) & ~*(v31 + 80), (*(v31 + 80) + 5 + v29) & ~*(v31 + 80), v30);
  return a1;
}

uint64_t sub_1D1DCB3A4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v39 = v6;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v38 = *(a3 + 16);
  v10 = *(v38 - 8);
  v11 = *(v10 + 84);
  if (v9 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v9;
  }

  v13 = sub_1D1E66FDC();
  v14 = *(v13 - 8);
  v15 = *(v10 + 80);
  v16 = *(v14 + 80);
  if (v12 <= *(v14 + 84))
  {
    v17 = *(v14 + 84);
  }

  else
  {
    v17 = v12;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  if (v8)
  {
    v19 = *(v7 + 64);
  }

  else
  {
    v19 = *(v7 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v20 = v15 + 8;
  v21 = *(v10 + 64) + 3;
  v22 = v16 + 5;
  if (a2 > v18)
  {
    v23 = ((v22 + ((v21 + ((v20 + ((((((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v16) + *(*(v13 - 8) + 64);
    v24 = 8 * v23;
    if (v23 > 3)
    {
      goto LABEL_19;
    }

    v26 = ((a2 - v18 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v26))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v26 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v26 >= 2)
    {
LABEL_19:
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_39;
      }

LABEL_26:
      v27 = (v25 - 1) << v24;
      if (v23 > 3)
      {
        v27 = 0;
      }

      if (v23)
      {
        if (v23 <= 3)
        {
          v28 = v23;
        }

        else
        {
          v28 = 4;
        }

        if (v28 > 2)
        {
          if (v28 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v29 = *a1;
          }
        }

        else if (v28 == 1)
        {
          v29 = *a1;
        }

        else
        {
          v29 = *a1;
        }
      }

      else
      {
        v29 = 0;
      }

      return v18 + (v29 | v27) + 1;
    }
  }

LABEL_39:
  if (v9 == v18)
  {
    if (v8 < 2)
    {
      return 0;
    }

    v33 = (*(v7 + 48))(a1, v8, v39);
    if (v33 >= 2)
    {
      return v33 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v31 = ((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((v17 & 0x80000000) != 0)
    {
      v34 = (v20 + ((((v31 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
      if (v11 == v18)
      {
        v35 = *(v10 + 48);

        return v35(v34, v11, v38);
      }

      else
      {
        v36 = *(v14 + 48);
        v37 = (v22 + ((v21 + v34) & 0xFFFFFFFFFFFFFFFCLL)) & ~v16;

        return v36(v37);
      }
    }

    else
    {
      v32 = *v31;
      if (*v31 >= 0xFFFFFFFF)
      {
        LODWORD(v32) = -1;
      }

      return (v32 + 1);
    }
  }
}

void sub_1D1DCB758(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v38 = v7;
  v39 = v6;
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v37 = *(a4 + 16);
  v10 = *(v37 - 8);
  v11 = *(v10 + 84);
  if (v9 <= v11)
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v9;
  }

  v13 = 0;
  v14 = *(sub_1D1E66FDC() - 8);
  v15 = *(v10 + 80);
  v16 = *(v10 + 64);
  v17 = *(v14 + 80);
  if (v12 <= *(v14 + 84))
  {
    v18 = *(v14 + 84);
  }

  else
  {
    v18 = v12;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v8)
  {
    v20 = *(v7 + 64);
  }

  else
  {
    v20 = *(v7 + 64) + 1;
  }

  v21 = v16 + 3;
  v22 = ((v17 + 5 + ((v16 + 3 + ((v15 + 8 + ((((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v17) + *(v14 + 64);
  if (a3 > v19)
  {
    if (v22 <= 3)
    {
      v23 = ((a3 - v19 + ~(-1 << (8 * v22))) >> (8 * v22)) + 1;
      if (HIWORD(v23))
      {
        v13 = 4;
      }

      else
      {
        if (v23 < 0x100)
        {
          v24 = 1;
        }

        else
        {
          v24 = 2;
        }

        if (v23 >= 2)
        {
          v13 = v24;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  v25 = a2;
  if (v19 < a2)
  {
    v26 = ~v19 + a2;
    if (v22 >= 4)
    {
      bzero(a1, v22);
      *a1 = v26;
      v27 = 1;
      if (v13 > 1)
      {
        goto LABEL_30;
      }

      goto LABEL_59;
    }

    v27 = (v26 >> (8 * v22)) + 1;
    if (v22)
    {
      v29 = v26 & ~(-1 << (8 * v22));
      bzero(a1, v22);
      if (v22 != 3)
      {
        if (v22 == 2)
        {
          *a1 = v29;
          if (v13 > 1)
          {
            goto LABEL_30;
          }
        }

        else
        {
          *a1 = v26;
          if (v13 > 1)
          {
LABEL_30:
            if (v13 == 2)
            {
              *&a1[v22] = v27;
            }

            else
            {
              *&a1[v22] = v27;
            }

            return;
          }
        }

LABEL_59:
        if (v13)
        {
          a1[v22] = v27;
        }

        return;
      }

      *a1 = v29;
      a1[2] = BYTE2(v29);
    }

    if (v13 > 1)
    {
      goto LABEL_30;
    }

    goto LABEL_59;
  }

  v28 = a1;
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v22] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    *&a1[v22] = 0;
  }

  else if (v13)
  {
    a1[v22] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_44;
  }

  if (!a2)
  {
    return;
  }

LABEL_44:
  if (v9 == v19)
  {
    v30 = v39;
    v31 = *(v38 + 56);
    v25 = a2 + 1;
    v32 = v8;
LABEL_46:

    v31(v28, v25, v32, v30);
    return;
  }

  v33 = (&a1[v20 + 7] & 0xFFFFFFFFFFFFFFF8);
  if ((v18 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v34 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v34 = a2 - 1;
    }

    *v33 = v34;
    return;
  }

  v28 = ((v15 + 8 + ((((v33 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  if (v11 == v19)
  {
    v31 = *(v10 + 56);
    v32 = v11;
    v30 = v37;
    goto LABEL_46;
  }

  v35 = *(v14 + 56);
  v36 = (v17 + 5 + (&v28[v21] & 0xFFFFFFFFFFFFFFFCLL)) & ~v17;

  v35(v36);
}

uint64_t sub_1D1DCBB6C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1D1E66FDC();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1DCBC54(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  v7 = (*(v5 + 56) + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = sub_1D1E66FDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v11 = (v7 + *(v9 + 80) + 4) & ~*(v9 + 80);

  return v10(v11, v8);
}

void *sub_1D1DCBD28(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 8) & ~v6;
  v8 = (a2 + v6 + 8) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 3;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = sub_1D1E66FDC();
  v13 = *(v12 - 8);
  (*(v13 + 32))((v10 + *(v13 + 80) + 4) & ~*(v13 + 80), (v11 + *(v13 + 80) + 4) & ~*(v13 + 80), v12);
  return a1;
}

void *sub_1D1DCBE14(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;
  (*(v6 + 40))(v9, v10);
  v11 = *(v7 + 24) + 3;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  v14 = sub_1D1E66FDC();
  v15 = *(v14 - 8);
  (*(v15 + 40))((v12 + *(v15 + 80) + 4) & ~*(v15 + 80), (v13 + *(v15 + 80) + 4) & ~*(v15 + 80), v14);
  return a1;
}

uint64_t sub_1D1DCBF10(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1D1E66FDC();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(v6 + 64) + 3;
  v15 = v11 + 4;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v16 = ((v15 + ((v14 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v11) + *(*(v8 - 8) + 64);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      if ((v12 & 0x80000000) != 0)
      {
        v25 = (a1 + v10 + 8) & ~v10;
        if (v7 == v13)
        {
          v26 = *(v6 + 48);

          return v26(v25, v7, v5);
        }

        else
        {
          v27 = *(v9 + 48);
          v28 = (v15 + ((v14 + v25) & 0xFFFFFFFFFFFFFFFCLL)) & ~v11;

          return v27(v28);
        }
      }

      else
      {
        v24 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v21) + 1;
}

void sub_1D1DCC1C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = sub_1D1E66FDC();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = v13 + 3;
  v18 = ((v14 + 4 + ((v13 + 3 + ((v12 + 8) & ~v12)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v14) + *(*(v10 - 8) + 64);
  if (a3 <= v16)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v16 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
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

  if (v16 < a2)
  {
    v20 = ~v16 + a2;
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
LABEL_54:
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
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
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

      goto LABEL_34;
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

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v26 = &a1[v12 + 8] & ~v12;
    if (v9 == v16)
    {
      v27 = *(v30 + 56);

      v27(v26, a2, v9, v7);
    }

    else
    {
      v28 = *(v11 + 56);
      v29 = (v14 + 4 + ((v17 + v26) & 0xFFFFFFFFFFFFFFFCLL)) & ~v14;

      v28(v29, a2);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v25 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v25 = (a2 - 1);
    }

    *a1 = v25;
  }
}

void sub_1D1DCC51C(uint64_t a1)
{
  sub_1D177868C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D1DCC650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for WidgetRefresh(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for WidgetDetailUpdate(319, v4, v5, v7);
    if (v10 <= 0x3F)
    {
      result = type metadata accessor for WidgetWriteRequests(319, v4, v5, v9);
      if (v11 <= 0x3F)
      {
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D1DCC774(unsigned __int16 *a1, uint64_t a2)
{
  v27 = sub_1D1E66A7C();
  v4 = *(v27 - 8);
  if (*(v4 + 84))
  {
    v5 = *(v4 + 64);
  }

  else
  {
    v5 = *(v4 + 64) + 1;
  }

  v30 = *(a2 + 16);
  v6 = *(v30 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64) + 3;
  v9 = sub_1D1E66FDC();
  v10 = *(*(v9 - 8) + 80);
  v11 = *(*(v9 - 8) + 64);
  v12 = ((v10 + 4 + ((v8 + ((v5 + v7) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v10) + v11;
  v13 = ((v10 + 4 + ((v8 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v10) + v11;
  v14 = ((v10 + ((v8 + ((v7 + 8 + ((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v10) + v11;
  if (v14 <= v12)
  {
    v14 = v12;
  }

  if (v13 > v14)
  {
    v14 = v13;
  }

  v15 = *(a1 + v14);
  v16 = v15 - 3;
  if (v15 >= 3)
  {
    if (v14 <= 3)
    {
      v17 = v14;
    }

    else
    {
      v17 = 4;
    }

    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v18 = *a1;
        if (v14 >= 4)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v17 == 3)
        {
          v18 = *a1 | (*(a1 + 2) << 16);
          if (v14 < 4)
          {
            goto LABEL_23;
          }

LABEL_21:
          v15 = v18 + 3;
          goto LABEL_24;
        }

        v18 = *a1;
        if (v14 >= 4)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v15 = (v18 | (v16 << (8 * v14))) + 3;
      goto LABEL_24;
    }

    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = *a1;
    if (v14 < 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

LABEL_24:
  v19 = ~v7;
  v28 = v9;
  v29 = *(v9 - 8);
  if (v15 == 2)
  {

    v20 = a1 + v7 + 8;
    v21 = 4;
LABEL_30:
    v22 = v30;
    goto LABEL_34;
  }

  if (v15 == 1)
  {
    if (!(*(v4 + 48))(a1, 1, v27))
    {
      (*(v4 + 8))(a1, v27);
    }

    v20 = v7 + 8 + ((((((a1 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    v21 = 5;
    goto LABEL_30;
  }

  v23 = (*(v4 + 48))(a1, 1, v27);
  v22 = v30;
  if (!v23)
  {
    (*(v4 + 8))(a1, v27);
    v22 = v30;
  }

  v20 = a1 + v5 + v7;
  v21 = 4;
LABEL_34:
  v24 = v20 & v19;
  (*(v6 + 8))(v20 & v19, v22);
  v25 = *(v29 + 8);

  return v25((((v8 + v24) & 0xFFFFFFFFFFFFFFFCLL) + v21 + v10) & ~v10, v28);
}

void *sub_1D1DCCB20(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v46 = sub_1D1E66A7C();
  v5 = *(v46 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v47 = *(a3 + 16);
  v7 = *(v47 - 8);
  v8 = *(v7 + 80);
  v45 = v6 + v8;
  v9 = *(v7 + 64) + 3;
  v10 = sub_1D1E66FDC();
  v11 = *(*(v10 - 8) + 80);
  v12 = *(*(v10 - 8) + 64);
  v13 = ((v11 + 4 + ((v9 + ((v6 + v8) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v11) + v12;
  v14 = v8 + 8;
  v15 = ((v11 + 4 + ((v9 + ((v8 + 8) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v11) + v12;
  v16 = ((v11 + ((v9 + ((v8 + 8 + ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v8)) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v11) + v12;
  if (v16 <= v13)
  {
    v16 = v13;
  }

  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = *(a2 + v17);
  v19 = v18 - 3;
  if (v18 >= 3)
  {
    if (v17 <= 3)
    {
      v20 = v17;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        v21 = *a2;
        if (v17 >= 4)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v20 == 3)
        {
          v21 = *a2 | (*(a2 + 2) << 16);
          if (v17 < 4)
          {
            goto LABEL_24;
          }

LABEL_22:
          v18 = v21 + 3;
          goto LABEL_25;
        }

        v21 = *a2;
        if (v17 >= 4)
        {
          goto LABEL_22;
        }
      }

LABEL_24:
      v18 = (v21 | (v19 << (8 * v17))) + 3;
      goto LABEL_25;
    }

    if (!v20)
    {
      goto LABEL_25;
    }

    v21 = *a2;
    if (v17 < 4)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_25:
  v22 = ~v8;
  v48 = *(v10 - 8);
  v49 = v10;
  if (v18 == 2)
  {
    v23 = a1;
    *a1 = *a2;
    (*(v7 + 32))((a1 + v8 + 8) & v22, (a2 + v8 + 8) & v22, v47);
    v24 = ((v9 + ((a1 + v8 + 8) & v22)) & 0xFFFFFFFFFFFFFFFCLL);
    v25 = ((v9 + ((a2 + v8 + 8) & v22)) & 0xFFFFFFFFFFFFFFFCLL);
    v27 = *v25;
    v26 = v25 + 1;
    *v24 = v27;
    v28 = v24 + 1;
    v29 = 2;
  }

  else if (v18 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v46))
    {
      v23 = a1;
      memcpy(a1, a2, v6);
    }

    else
    {
      (*(v5 + 32))(a1, a2, v46);
      (*(v5 + 56))(a1, 0, 1, v46);
      v23 = a1;
    }

    v30 = ((v23 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v31 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v30 = *v31;
    v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v32 = *v33;
    v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v34 = *v35;
    v36 = (v34 + v14) & v22;
    v37 = (v35 + v14) & v22;
    (*(v7 + 32))(v36, v37, v47);
    v38 = (v9 + v36) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = (v9 + v37) & 0xFFFFFFFFFFFFFFFCLL;
    *v38 = *v39;
    *(v38 + 4) = *(v39 + 4);
    v28 = (v38 + 5);
    v26 = (v39 + 5);
    v29 = 1;
  }

  else
  {
    if ((*(v5 + 48))(a2, 1, v46))
    {
      v23 = a1;
      memcpy(a1, a2, v6);
    }

    else
    {
      (*(v5 + 32))(a1, a2, v46);
      (*(v5 + 56))(a1, 0, 1, v46);
      v23 = a1;
    }

    v40 = (a2 + v45) & v22;
    (*(v7 + 32))((v23 + v45) & v22, v40, v47);
    v29 = 0;
    v41 = ((v9 + ((v23 + v45) & v22)) & 0xFFFFFFFFFFFFFFFCLL);
    v42 = ((v9 + v40) & 0xFFFFFFFFFFFFFFFCLL);
    v43 = *v42;
    v26 = v42 + 1;
    *v41 = v43;
    v28 = v41 + 1;
  }

  (*(v48 + 32))((v28 + v11) & ~v11, (v26 + v11) & ~v11, v49);
  *(v23 + v17) = v29;
  return v23;
}

unsigned __int8 *sub_1D1DCD020(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = sub_1D1E66A7C();
    v7 = *(v6 - 8);
    v58 = v7;
    if (*(v7 + 84))
    {
      v8 = *(v7 + 64);
    }

    else
    {
      v8 = *(v7 + 64) + 1;
    }

    v62 = *(a3 + 16);
    v9 = *(v62 - 8);
    v10 = *(v9 + 80);
    v55 = v8 + v10;
    v11 = *(v9 + 64) + 3;
    v12 = sub_1D1E66FDC();
    v60 = *(v12 - 8);
    v13 = *(v60 + 80);
    v14 = *(v60 + 64);
    v15 = ((v13 + 4 + ((v11 + ((v8 + v10) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v13) + v14;
    v16 = ((v13 + 4 + ((v11 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v13) + v14;
    __n = v8;
    v54 = v10 + 8;
    v17 = ((v13 + ((v11 + ((v10 + 8 + ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v13) + v14;
    if (v17 <= v15)
    {
      v17 = v15;
    }

    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    v19 = a1[v18];
    v20 = v19 - 3;
    if (v19 < 3)
    {
LABEL_26:
      v61 = ~v10;
      v59 = ~v13;
      v56 = v6;
      v23 = v12;
      if (v19 == 2)
      {

        v24 = &a1[v10 + 8];
      }

      else
      {
        if (v19 == 1)
        {
          if (!(*(v58 + 48))(a1, 1, v6))
          {
            (*(v58 + 8))(a1, v6);
          }

          v24 = (v54 + (((((&a1[__n + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));
          v25 = 5;
LABEL_36:
          v26 = v24 & v61;
          (*(v9 + 8))(v24 & v61, v62);
          (*(v60 + 8))((((v11 + v26) & 0xFFFFFFFFFFFFFFFCLL) + v25 + v13) & v59, v23);
          v27 = a2[v18];
          v28 = v27 - 3;
          if (v27 < 3)
          {
            goto LABEL_50;
          }

          if (v18 <= 3)
          {
            v29 = v18;
          }

          else
          {
            v29 = 4;
          }

          if (v29 <= 1)
          {
            if (!v29)
            {
              goto LABEL_50;
            }

            v30 = *a2;
            if (v18 < 4)
            {
LABEL_61:
              v49 = v30 | (v28 << (8 * v18));
              v27 = v49 + 3;
              if (v49 == -1)
              {
                goto LABEL_62;
              }

              goto LABEL_51;
            }
          }

          else if (v29 == 2)
          {
            v30 = *a2;
            if (v18 < 4)
            {
              goto LABEL_61;
            }
          }

          else if (v29 == 3)
          {
            v30 = *a2 | (a2[2] << 16);
            if (v18 < 4)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v30 = *a2;
            if (v18 < 4)
            {
              goto LABEL_61;
            }
          }

          v27 = v30 + 3;
LABEL_50:
          if (v27 == 2)
          {
LABEL_62:
            *a1 = *a2;
            (*(v9 + 32))(&a1[v10 + 8] & v61, &a2[v10 + 8] & v61, v62);
            v50 = ((v11 + (&a1[v10 + 8] & v61)) & 0xFFFFFFFFFFFFFFFCLL);
            v51 = ((v11 + (&a2[v10 + 8] & v61)) & 0xFFFFFFFFFFFFFFFCLL);
            v52 = *v51;
            v43 = v51 + 1;
            *v50 = v52;
            v42 = v50 + 1;
            v44 = 2;
LABEL_63:
            (*(v60 + 32))((v42 + v13) & v59, (v43 + v13) & v59, v23);
            a1[v18] = v44;
            return a1;
          }

LABEL_51:
          if (v27 == 1)
          {
            if ((*(v58 + 48))(a2, 1, v56))
            {
              v31 = __n;
              memcpy(a1, a2, __n);
            }

            else
            {
              (*(v58 + 32))(a1, a2, v56);
              (*(v58 + 56))(a1, 0, 1, v56);
              v31 = __n;
            }

            v32 = (&a1[v31 + 7] & 0xFFFFFFFFFFFFFFF8);
            v33 = (&a2[v31 + 7] & 0xFFFFFFFFFFFFFFF8);
            *v32 = *v33;
            v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
            v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
            *v34 = *v35;
            v36 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
            v37 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
            *v36 = *v37;
            v38 = (v36 + v54) & v61;
            v39 = (v37 + v54) & v61;
            (*(v9 + 32))(v38, v39, v62);
            v40 = (v11 + v38) & 0xFFFFFFFFFFFFFFFCLL;
            v41 = (v11 + v39) & 0xFFFFFFFFFFFFFFFCLL;
            *v40 = *v41;
            *(v40 + 4) = *(v41 + 4);
            v42 = (v40 + 5);
            v43 = (v41 + 5);
            v44 = 1;
          }

          else
          {
            if ((*(v58 + 48))(a2, 1, v56))
            {
              memcpy(a1, a2, __n);
            }

            else
            {
              (*(v58 + 32))(a1, a2, v56);
              (*(v58 + 56))(a1, 0, 1, v56);
            }

            v45 = &a2[v55] & v61;
            (*(v9 + 32))(&a1[v55] & v61, v45, v62);
            v44 = 0;
            v46 = ((v11 + (&a1[v55] & v61)) & 0xFFFFFFFFFFFFFFFCLL);
            v47 = ((v11 + v45) & 0xFFFFFFFFFFFFFFFCLL);
            v48 = *v47;
            v43 = v47 + 1;
            *v46 = v48;
            v42 = v46 + 1;
          }

          goto LABEL_63;
        }

        if (!(*(v58 + 48))(a1, 1, v6))
        {
          (*(v58 + 8))(a1, v6);
        }

        v24 = &a1[v55];
      }

      v25 = 4;
      goto LABEL_36;
    }

    if (v18 <= 3)
    {
      v21 = v18;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v22 = *a1;
        if (v18 >= 4)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v21 == 3)
        {
          v22 = *a1 | (a1[2] << 16);
          if (v18 < 4)
          {
            goto LABEL_25;
          }

LABEL_23:
          v19 = v22 + 3;
          goto LABEL_26;
        }

        v22 = *a1;
        if (v18 >= 4)
        {
          goto LABEL_23;
        }
      }

LABEL_25:
      v19 = (v22 | (v20 << (8 * v18))) + 3;
      goto LABEL_26;
    }

    if (!v21)
    {
      goto LABEL_26;
    }

    v22 = *a1;
    if (v18 < 4)
    {
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  return a1;
}

uint64_t sub_1D1DCD70C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1D1E66A7C() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1D1E66FDC() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 64);
  v15 = v11 + 3;
  v16 = ((v13 + 4 + ((v11 + 3 + ((v10 + 8) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v13) + v14;
  if (v7)
  {
    v17 = v8;
  }

  else
  {
    v17 = v8 + 1;
  }

  v18 = ((v13 + 4 + ((v15 + ((v17 + v10) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v13) + v14;
  v19 = ((((v15 + ((v10 + 8 + ((((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL) + v13 + 5) & ~v13) + v14;
  if (v19 <= v18)
  {
    v19 = v18;
  }

  if (v16 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_31;
  }

  v21 = v20 + 1;
  v22 = 8 * (v20 + 1);
  if ((v20 + 1) <= 3)
  {
    v25 = ((a2 + ~(-1 << v22) - 253) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v25 < 2)
    {
LABEL_31:
      v27 = *(a1 + v20);
      if (v27 >= 3)
      {
        return (v27 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_31;
  }

LABEL_20:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 > 3)
    {
      LODWORD(v21) = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        LODWORD(v21) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v21) = *a1;
      }
    }

    else if (v21 == 1)
    {
      LODWORD(v21) = *a1;
    }

    else
    {
      LODWORD(v21) = *a1;
    }
  }

  return (v21 | v26) + 254;
}

void sub_1D1DCD99C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1D1E66A7C() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(sub_1D1E66FDC() - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 64);
  v17 = v13 + 3;
  v18 = ((v15 + 4 + ((v13 + 3 + ((v12 + 8) & ~v12)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v15) + v16;
  if (v9)
  {
    v19 = v10;
  }

  else
  {
    v19 = v10 + 1;
  }

  v20 = ((v15 + 4 + ((v17 + ((v19 + v12) & ~v12)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v15) + v16;
  v21 = ((((v17 + ((v12 + 8 + ((((((v19 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v12)) & 0xFFFFFFFFFFFFFFFCLL) + v15 + 5) & ~v15) + v16;
  if (v21 <= v20)
  {
    v21 = v20;
  }

  if (v18 > v21)
  {
    v21 = v18;
  }

  v22 = v21 + 1;
  if (a3 < 0xFE)
  {
    v23 = 0;
  }

  else if (v22 <= 3)
  {
    v26 = ((a3 + ~(-1 << (8 * v22)) - 253) >> (8 * v22)) + 1;
    if (HIWORD(v26))
    {
      v23 = 4;
    }

    else
    {
      if (v26 < 0x100)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v26 >= 2)
      {
        v23 = v27;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 1;
  }

  if (a2 > 0xFD)
  {
    v24 = a2 - 254;
    if (v22 >= 4)
    {
      bzero(a1, v21 + 1);
      *a1 = v24;
      v25 = 1;
      if (v23 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v25 = (v24 >> (8 * v22)) + 1;
    if (v21 != -1)
    {
      v28 = v24 & ~(-1 << (8 * v22));
      bzero(a1, v22);
      if (v22 != 3)
      {
        if (v22 == 2)
        {
          *a1 = v28;
          if (v23 > 1)
          {
LABEL_44:
            if (v23 == 2)
            {
              *&a1[v22] = v25;
            }

            else
            {
              *&a1[v22] = v25;
            }

            return;
          }
        }

        else
        {
          *a1 = v24;
          if (v23 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v23)
        {
          a1[v22] = v25;
        }

        return;
      }

      *a1 = v28;
      a1[2] = BYTE2(v28);
    }

    if (v23 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v23 <= 1)
  {
    if (v23)
    {
      a1[v22] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      a1[v21] = -a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v23 == 2)
  {
    *&a1[v22] = 0;
    goto LABEL_29;
  }

  *&a1[v22] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

uint64_t sub_1D1DCDCAC(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *(sub_1D1E66A7C() - 8);
  if (*(v4 + 84))
  {
    v5 = *(v4 + 64);
  }

  else
  {
    v5 = *(v4 + 64) + 1;
  }

  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64) + 3;
  v9 = *(sub_1D1E66FDC() - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = ((v10 + 4 + ((v8 + ((v5 + v7) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v10) + v11;
  v13 = ((v10 + 4 + ((v8 + ((v7 + 8) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL)) & ~v10) + v11;
  v14 = ((((v8 + ((v7 + 8 + ((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v7)) & 0xFFFFFFFFFFFFFFFCLL) + v10 + 5) & ~v10) + v11;
  if (v14 <= v12)
  {
    v14 = v12;
  }

  if (v13 > v14)
  {
    v14 = v13;
  }

  result = *(a1 + v14);
  if (result >= 3)
  {
    if (v14 <= 3)
    {
      v16 = v14;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 1)
    {
      if (v16 == 2)
      {
        v17 = *a1;
        if (v14 >= 4)
        {
          return (v17 + 3);
        }
      }

      else
      {
        if (v16 == 3)
        {
          v17 = *a1 | (*(a1 + 2) << 16);
          if (v14 < 4)
          {
            return (v17 | ((result - 3) << (8 * v14))) + 3;
          }

          return (v17 + 3);
        }

        v17 = *a1;
        if (v14 >= 4)
        {
          return (v17 + 3);
        }
      }

      return (v17 | ((result - 3) << (8 * v14))) + 3;
    }

    if (!v16)
    {
      return result;
    }

    v17 = *a1;
    if (v14 < 4)
    {
      return (v17 | ((result - 3) << (8 * v14))) + 3;
    }

    return (v17 + 3);
  }

  return result;
}

void sub_1D1DCDED8(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1D1E66A7C() - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 80);
  v10 = ~v9;
  v11 = *(v8 + 64) + 3;
  v12 = (v11 + ((v7 + v9) & ~v9)) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(sub_1D1E66FDC() - 8);
  v14 = *(v13 + 80);
  v15 = ~v14;
  v16 = v14 + 4;
  v17 = *(v13 + 64);
  v18 = ((v14 + 4 + v12) & ~v14) + v17;
  if (a2 > 2)
  {
    v21 = ((((v11 + ((v9 + 8 + ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v10)) & 0xFFFFFFFFFFFFFFFCLL) + v14 + 5) & v15) + v17;
    if (v21 > v18)
    {
      v18 = v21;
    }

    v22 = ((v16 + ((v11 + ((v9 + 8) & v10)) & 0xFFFFFFFFFFFFFFFCLL)) & v15) + v17;
    if (v22 <= v18)
    {
      v22 = v18;
    }

    v23 = a2 - 3;
    if (v22 < 4)
    {
      a1[v22] = (v23 >> (8 * v22)) + 3;
      if (!v22)
      {
        return;
      }

      v23 &= ~(-1 << (8 * v22));
    }

    else
    {
      a1[v22] = 3;
    }

    if (v22 >= 4)
    {
      v24 = 4;
    }

    else
    {
      v24 = v22;
    }

    bzero(a1, v22);
    if (v24 > 2)
    {
      if (v24 == 3)
      {
        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      else
      {
        *a1 = v23;
      }
    }

    else if (v24 == 1)
    {
      *a1 = v23;
    }

    else
    {
      *a1 = v23;
    }
  }

  else
  {
    v19 = ((v16 + ((v11 + ((v9 + 8) & v10)) & 0xFFFFFFFFFFFFFFFCLL)) & v15) + v17;
    v20 = ((((v11 + ((v9 + 8 + ((((((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v10)) & 0xFFFFFFFFFFFFFFFCLL) + v14 + 5) & v15) + v17;
    if (v20 <= v18)
    {
      v20 = ((v14 + 4 + v12) & ~v14) + v17;
    }

    if (v19 > v20)
    {
      v20 = v19;
    }

    a1[v20] = a2;
  }
}

uint64_t sub_1D1DCE1EC(uint64_t a1)
{
  result = sub_1D1DCE854();
  if (v2 <= 0x3F)
  {
    result = sub_1D1E66A7C();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1D1DCE28C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1D1E66A7C() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) + *(v8 + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        if (v7 == v14)
        {
          v24 = *(v6 + 48);

          return v24((a1 + v10 + 40) & ~v10);
        }

        else
        {
          v25 = *(v8 + 48);

          return v25((((a1 + v10 + 40) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      else
      {
        v23 = *(a1 + 3);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = ((v11 + ((v10 + 40) & ~v10) + v12) & ~v12) + *(v8 + 64);
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

void sub_1D1DCE514(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1D1E66A7C() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + ((v12 + 40) & ~v12) + v14) & ~v14) + *(v10 + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    if (v9 == v16)
    {
      v24 = *(v8 + 56);

      v24((a1 + v12 + 40) & ~v12, a2);
    }

    else
    {
      v25 = *(v10 + 56);

      v25((((a1 + v12 + 40) & ~v12) + v13 + v14) & ~v14, a2, v11);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 4) = 0u;
    *(a1 + 12) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = (a2 - 1);
  }
}

unint64_t sub_1D1DCE854()
{
  result = qword_1EC64FC90;
  if (!qword_1EC64FC90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC64FC90);
  }

  return result;
}

uint64_t sub_1D1DCE8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v5 = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v5;
}

unint64_t sub_1D1DCE9D0()
{
  result = qword_1EC64FCA8;
  if (!qword_1EC64FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCA8);
  }

  return result;
}

unint64_t sub_1D1DCEA28()
{
  result = qword_1EC64FCB0;
  if (!qword_1EC64FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCB0);
  }

  return result;
}

unint64_t sub_1D1DCEA80()
{
  result = qword_1EC64FCB8;
  if (!qword_1EC64FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCB8);
  }

  return result;
}

unint64_t sub_1D1DCEB40()
{
  result = qword_1EC64FCC8;
  if (!qword_1EC64FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCC8);
  }

  return result;
}

unint64_t sub_1D1DCEB98()
{
  result = qword_1EC64FCD0;
  if (!qword_1EC64FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCD0);
  }

  return result;
}

unint64_t sub_1D1DCEBF0()
{
  result = qword_1EC64FCD8;
  if (!qword_1EC64FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCD8);
  }

  return result;
}

unint64_t sub_1D1DCEC48()
{
  result = qword_1EC64FCE0;
  if (!qword_1EC64FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCE0);
  }

  return result;
}

unint64_t sub_1D1DCECA0()
{
  result = qword_1EC64FCE8;
  if (!qword_1EC64FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCE8);
  }

  return result;
}

unint64_t sub_1D1DCECF8()
{
  result = qword_1EC64FCF0;
  if (!qword_1EC64FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCF0);
  }

  return result;
}

unint64_t sub_1D1DCED50()
{
  result = qword_1EC64FCF8;
  if (!qword_1EC64FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FCF8);
  }

  return result;
}

unint64_t sub_1D1DCEDA8()
{
  result = qword_1EC64FD00;
  if (!qword_1EC64FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD00);
  }

  return result;
}

unint64_t sub_1D1DCEE00()
{
  result = qword_1EC64FD08;
  if (!qword_1EC64FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD08);
  }

  return result;
}

unint64_t sub_1D1DCEE58()
{
  result = qword_1EC64FD10;
  if (!qword_1EC64FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD10);
  }

  return result;
}

unint64_t sub_1D1DCEEB0()
{
  result = qword_1EC64FD18;
  if (!qword_1EC64FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD18);
  }

  return result;
}

unint64_t sub_1D1DCEF08()
{
  result = qword_1EC64FD20;
  if (!qword_1EC64FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD20);
  }

  return result;
}

unint64_t sub_1D1DCEF60()
{
  result = qword_1EC64FD28;
  if (!qword_1EC64FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD28);
  }

  return result;
}

unint64_t sub_1D1DCEFB8()
{
  result = qword_1EC64FD30;
  if (!qword_1EC64FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD30);
  }

  return result;
}

uint64_t sub_1D1DCF00C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656D6F486F6ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC9D30 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x48676E697373696DLL && a2 == 0xEB00000000656D6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5464696C61766E69 && a2 == 0xEB00000000657079 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

unint64_t sub_1D1DCF1D0()
{
  result = qword_1EC64FD50;
  if (!qword_1EC64FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD50);
  }

  return result;
}

unint64_t sub_1D1DCF224()
{
  result = qword_1EC64FD58;
  if (!qword_1EC64FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD58);
  }

  return result;
}

unint64_t sub_1D1DCF278()
{
  result = qword_1EC64FD60;
  if (!qword_1EC64FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD60);
  }

  return result;
}

uint64_t sub_1D1DCF39C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1DCF4D4()
{
  result = qword_1EC64FD98;
  if (!qword_1EC64FD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FD98);
  }

  return result;
}

unint64_t sub_1D1DCF52C()
{
  result = qword_1EC64FDA0;
  if (!qword_1EC64FDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDA0);
  }

  return result;
}

unint64_t sub_1D1DCF584()
{
  result = qword_1EC64FDA8;
  if (!qword_1EC64FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDA8);
  }

  return result;
}

unint64_t sub_1D1DCF5DC()
{
  result = qword_1EC64FDB0;
  if (!qword_1EC64FDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDB0);
  }

  return result;
}

unint64_t sub_1D1DCF634()
{
  result = qword_1EC64FDB8;
  if (!qword_1EC64FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDB8);
  }

  return result;
}

unint64_t sub_1D1DCF68C()
{
  result = qword_1EC64FDC0;
  if (!qword_1EC64FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDC0);
  }

  return result;
}

unint64_t sub_1D1DCF6E4()
{
  result = qword_1EC64FDC8;
  if (!qword_1EC64FDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDC8);
  }

  return result;
}

unint64_t sub_1D1DCF73C()
{
  result = qword_1EC64FDD0;
  if (!qword_1EC64FDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FDD0);
  }

  return result;
}

uint64_t sub_1D1DCF7D4(const char *a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr), uint64_t a6)
{
  v23 = a5;
  v22 = a6;
  v25 = a2;
  v26 = a1;
  v9 = sub_1D1E66FDC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D1E66FFC();
  v14 = sub_1D1E683EC();
  result = sub_1D1E6855C();
  if ((result & 1) == 0)
  {

    goto LABEL_11;
  }

  v21 = a3;
  v20[1] = v6;
  if (a3)
  {
    if (!(v26 >> 32))
    {
      if ((v26 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v26 >> 16 <= 0x10)
      {
        v16 = &v28;
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v26)
  {
    __break(1u);
    goto LABEL_16;
  }

  v16 = v26;
LABEL_10:
  v17 = swift_slowAlloc();
  *v17 = 0;
  v18 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v13, v14, v18, v16, "", v17, 2u);
  MEMORY[0x1D3893640](v17, -1, -1);

LABEL_11:
  (*(v10 + 16))(v12, a4, v9);
  sub_1D1E6705C();
  swift_allocObject();
  sub_1D1E6704C();
  v19 = v24;
  v23(&v27);
  if (v19)
  {
    sub_1D1760838();
  }

  else
  {
    sub_1D1760838();

    return v27;
  }
}

void sub_1D1DCFA28(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      __swift_project_boxed_opaque_existential_1(v3, v3[3]);
      sub_1D1E65EDC();
      v4 = sub_1D1E677EC();

      v3 += 5;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1D1DCFAD0()
{
  v0 = sub_1D1E66FDC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC0];
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6701C();
  v5 = __swift_project_value_buffer(v4, qword_1EC6BE2B8);
  MEMORY[0x1EEE9AC00](v5);
  *(&v10 - 2) = &v11;
  sub_1D1E66FCC();
  v6 = sub_1D1DCF7D4("IFObjectHasher.GenerateHash.AppIntentIDs", 40, 2, v3, sub_1D1DD049C, (&v10 - 4));
  v8 = v7;
  result = (*(v1 + 8))(v3, v0);
  qword_1EC64FDD8 = v6;
  unk_1EC64FDE0 = v8;
  return result;
}

double sub_1D1DCFC90()
{
  if (qword_1EC6424B0 != -1)
  {
    swift_once();
  }

  qword_1EC64FDE8 = qword_1EC6BE2D0;
  unk_1EC64FDF0 = *algn_1EC6BE2D8;

  return result;
}

uint64_t sub_1D1DCFD24(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t static WidgetManagerIdentity.singleControl<A>(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66FDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE00, &qword_1D1EB0B80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 56) = a2;
  *(inited + 64) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);
  v17 = inited;
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6701C();
  v13 = __swift_project_value_buffer(v12, qword_1EC6BE2B8);
  MEMORY[0x1EEE9AC00](v13);
  *&v16[-16] = &v17;
  sub_1D1E66FCC();
  v14 = sub_1D1DCF7D4("IFObjectHasher.GenerateHash.AppIntentIDs", 40, 2, v9, sub_1D1DD0470, &v16[-32]);
  (*(v7 + 8))(v9, v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE08, &qword_1D1EB0B88);
  swift_arrayDestroy();
  return v14;
}

INIntent_optional __swiftcall AppIntent.asINIntent()()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 - 8);
  (MEMORY[0x1EEE9AC00])();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741B10(0, &qword_1EC64FE10, 0x1E696E730);
  (*(v5 + 16))(v7, v2, v4);
  v8 = sub_1D1DA9170(v7, v4, v3);
  result.value.super.isa = v8;
  result.is_nil = v9;
  return result;
}

id AppIntent.indexingHash.getter()
{
  v0 = AppIntent.asINIntent()();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 _indexingHash];
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EE0813C8);
    v1 = sub_1D1E6707C();
    v4 = sub_1D1E6833C();
    if (os_log_type_enabled(v1, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D16EC000, v1, v4, "widgetManagerIdentifier: Failed to convert intent to INAppIntent", v5, 2u);
      MEMORY[0x1D3893640](v5, -1, -1);
    }

    v2 = 0;
  }

  return v2;
}

uint64_t WidgetConfigurationIntent<>.accessoriesAndScenesAsConfigured.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741B10(0, &qword_1EC64FE10, 0x1E696E730);
  (*(v5 + 16))(v7, v2, a1);
  v8 = sub_1D1DA9170(v7, a1, *(*(a2 + 8) + 8));
  if (v8)
  {
    v9 = v8;
    v10 = sub_1D1DA953C();
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v11 = sub_1D1E6709C();
    __swift_project_value_buffer(v11, qword_1EE0813C8);
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6833C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D16EC000, v12, v13, "widgetManagerIdentifier: Failed to convert intent to INAppIntent", v14, 2u);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    return 0;
  }

  return v10;
}

void sub_1D1DD03D0(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x1E69AA8A0]) init];
  sub_1D1DCFA28(v3);
  [v4 finalize];
  v5 = sub_1D1E68FAC();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

uint64_t WidgetDataModelConfiguration.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t WidgetDataModelBundle<A>(configuration:content:)(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  if (qword_1EC6424B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC64F958);
  qword_1EC64F960 = v3;
  os_unfair_lock_unlock(&dword_1EC64F958);
  return a2();
}

unint64_t sub_1D1DD05E4()
{
  result = qword_1EC64FE18;
  if (!qword_1EC64FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FE18);
  }

  return result;
}

uint64_t sub_1D1DD0648(uint64_t a1, double a2)
{
  *(v3 + 72) = v2;
  *(v3 + 64) = a2;
  *(v3 + 56) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD06F8, v2, 0);
}

uint64_t sub_1D1DD06F8()
{
  v44 = v0;
  v1 = *(v0 + 72);
  v2 = *(v1 + 112);
  *(v0 + 96) = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v3 = v0;
    v3[1] = sub_1D1DD0D78;
    v5 = MEMORY[0x1E69E7288];
    v6 = v0 + 153;
    v7 = v2;
LABEL_24:

    return MEMORY[0x1EEE6DA10](v6, v7, &type metadata for WidgetHomeDataSync.DataSyncState, v4, v5);
  }

  if ([*(v0 + 56) dataSyncState] != 1 || ((v8 = objc_msgSend(*(v0 + 56), sel_homes), sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98), v9 = sub_1D1E67C1C(), v8, v9 >> 62) ? (v10 = sub_1D1E6873C()) : (v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v10))
  {
    v17 = [*(v0 + 56) delegate];
    *(v0 + 120) = v17;
    if (v17)
    {
      v18 = v17;
      v19 = qword_1EE07A0A0;
      swift_unknownObjectRetain();
      if (v19 != -1)
      {
        swift_once();
      }

      v20 = sub_1D1E6709C();
      __swift_project_value_buffer(v20, qword_1EE0813E0);
      swift_unknownObjectRetain();
      v21 = sub_1D1E6707C();
      v22 = sub_1D1E6832C();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v43 = v24;
        *v23 = 136315138;
        *(v0 + 48) = v18;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FE50, &qword_1D1EB0F88);
        v25 = sub_1D1E678BC();
        v27 = sub_1D1B1312C(v25, v26, &v43);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_1D16EC000, v21, v22, "performDataSync(homeManager:) overriding existing delegate until first sync: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1D3893640](v24, -1, -1);
        MEMORY[0x1D3893640](v23, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
    v30 = *(v0 + 64);
    v31 = *(v0 + 56);
    sub_1D1E67E3C();
    v32 = sub_1D1E67E7C();
    v33 = *(v32 - 8);
    (*(v33 + 56))(v28, 0, 1, v32);
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    *(v34 + 24) = v30;
    sub_1D1A08410(v28, v29);
    LODWORD(v29) = (*(v33 + 48))(v29, 1, v32);
    v35 = v31;
    v36 = *(v0 + 80);
    if (v29 == 1)
    {
      sub_1D1741A30(*(v0 + 80), &unk_1EC6442C0, &qword_1D1E741A0);
    }

    else
    {
      sub_1D1E67E6C();
      (*(v33 + 8))(v36, v32);
    }

    v37 = *(v0 + 88);
    type metadata accessor for SerialWidgetExecutor();
    inited = swift_initStaticObject();
    v40 = sub_1D1DD5060(&unk_1EE07A728, v39, type metadata accessor for SerialWidgetExecutor, &unk_1D1EB0EB4);
    *(v0 + 16) = 6;
    *(v0 + 24) = 0;
    *(v0 + 32) = inited;
    *(v0 + 40) = v40;
    swift_unknownObjectRetain();
    v41 = swift_task_create();
    *(v0 + 128) = v41;
    sub_1D1741A30(v37, &unk_1EC6442C0, &qword_1D1E741A0);
    *(v1 + 112) = v41;

    v42 = swift_task_alloc();
    *(v0 + 136) = v42;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v42 = v0;
    v42[1] = sub_1D1DD0F20;
    v5 = MEMORY[0x1E69E7288];
    v6 = v0 + 152;
    v7 = v41;
    goto LABEL_24;
  }

  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EE0813E0);
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6835C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D16EC000, v12, v13, "performDataSync(homeManager:) HMHomeManager already in good state with homes", v14, 2u);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  v15 = *(v0 + 8);

  return v15(2);
}

uint64_t sub_1D1DD0D78()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_1D1DD11A8;
  }

  else
  {
    v4 = sub_1D1DD0EA4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1DD0EA4()
{

  v1 = *(v0 + 153);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1DD0F20()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_1D1DD121C;
  }

  else
  {
    v4 = sub_1D1DD104C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1DD104C()
{
  v1 = *(v0 + 152);
  if (v1 != 2)
  {
    if (qword_1EE07A0A0 != -1)
    {
      swift_once();
    }

    v2 = sub_1D1E6709C();
    __swift_project_value_buffer(v2, qword_1EE0813E0);
    v3 = sub_1D1E6707C();
    v4 = sub_1D1E6833C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D16EC000, v3, v4, "performDataSync(homeManager:) did not complete", v5, 2u);
      MEMORY[0x1D3893640](v5, -1, -1);
    }
  }

  sub_1D1DD433C(*(v0 + 72), *(v0 + 56), *(v0 + 120));

  swift_unknownObjectRelease();

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_1D1DD11A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DD121C()
{
  sub_1D1DD433C(*(v0 + 72), *(v0 + 56), *(v0 + 120));

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DD12AC(uint64_t a1, double a2)
{
  *(v3 + 64) = v2;
  *(v3 + 56) = a2;
  *(v3 + 48) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD135C, v2, 0);
}

uint64_t sub_1D1DD135C(uint64_t a1)
{
  v2 = v1[8];
  v3 = *(v2 + 120);
  v4 = MEMORY[0x1E69E7CA8];
  if (v3)
  {
    goto LABEL_6;
  }

  v6 = v1[9];
  v5 = v1[10];
  v7 = v1[7];
  v8 = v1[6];
  sub_1D1E67E3C();
  v9 = sub_1D1E67E7C();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v5, 0, 1, v9);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v7;
  sub_1D1A08410(v5, v6);
  LODWORD(v6) = (*(v10 + 48))(v6, 1, v9);
  v12 = v8;
  v13 = v1[9];
  if (v6 == 1)
  {
    sub_1D1741A30(v1[9], &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v10 + 8))(v13, v9);
  }

  v14 = v1[10];
  type metadata accessor for SerialWidgetExecutor();
  inited = swift_initStaticObject();
  v17 = sub_1D1DD5060(&unk_1EE07A728, v16, type metadata accessor for SerialWidgetExecutor, &unk_1D1EB0EB4);
  v1[2] = 6;
  v1[3] = 0;
  v1[4] = inited;
  v1[5] = v17;

  v18 = swift_task_create();
  sub_1D1741A30(v14, &unk_1EC6442C0, &qword_1D1E741A0);

  *(v2 + 120) = v18;

  v3 = *(v2 + 120);
  if (v3)
  {
LABEL_6:
    v1[11] = v3;

    v19 = swift_task_alloc();
    v1[12] = v19;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v19 = v1;
    v19[1] = sub_1D1DD168C;
    v21 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v20, v3, v4 + 8, v20, v21);
  }

  else
  {
    *(v1[8] + 120) = 0;

    v22 = v1[1];

    return v22();
  }
}

uint64_t sub_1D1DD168C()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);

    v4 = sub_1D1DD1840;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 64);
    v4 = sub_1D1DD17B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1D1DD17B4()
{

  *(*(v0 + 64) + 120) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DD1840()
{
  *(*(v0 + 64) + 120) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DD18C0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD196C, v2, 0);
}

uint64_t sub_1D1DD196C(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v2 + 128);
  if (v3)
  {
    goto LABEL_6;
  }

  v5 = *(v1 + 80);
  v4 = *(v1 + 88);
  v21 = *(v1 + 56);
  sub_1D1E67E3C();
  v6 = sub_1D1E67E7C();
  v7 = *(v6 - 8);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = v21;
  sub_1D1A08410(v4, v5);
  LODWORD(v5) = (*(v7 + 48))(v5, 1, v6);
  swift_unknownObjectRetain();
  v9 = *(v1 + 80);
  if (v5 == 1)
  {
    sub_1D1741A30(*(v1 + 80), &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
    sub_1D1E67E6C();
    (*(v7 + 8))(v9, v6);
  }

  v10 = *(v1 + 88);
  type metadata accessor for SerialWidgetExecutor();
  inited = swift_initStaticObject();
  v13 = sub_1D1DD5060(&unk_1EE07A728, v12, type metadata accessor for SerialWidgetExecutor, &unk_1D1EB0EB4);
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_1D1EB0F28;
  *(v14 + 24) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE40, &qword_1D1EB0F40);
  *(v1 + 16) = 6;
  *(v1 + 24) = 0;
  *(v1 + 32) = inited;
  *(v1 + 40) = v13;
  v15 = swift_task_create();
  sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);

  *(v2 + 128) = v15;

  v3 = *(v2 + 128);
  if (v3)
  {
LABEL_6:
    *(v1 + 96) = v3;

    v16 = swift_task_alloc();
    *(v1 + 104) = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE40, &qword_1D1EB0F40);
    *v16 = v1;
    v16[1] = sub_1D1DD1CD0;

    return MEMORY[0x1EEE6DA40](v1 + 48, v3, v17);
  }

  else
  {
    *(*(v1 + 72) + 128) = 0;

    v18 = *(v1 + 8);
    v19 = MEMORY[0x1E69E7CC0];

    return v18(v19);
  }
}

uint64_t sub_1D1DD1CD0()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D1DD1DFC, v1, 0);
}

uint64_t sub_1D1DD1DFC()
{
  v1 = v0[6];
  *(v0[9] + 128) = 0;

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1D1DD1E88()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EE0813E0);
  __swift_project_value_buffer(v0, qword_1EE0813E0);
  return sub_1D1E6708C();
}

uint64_t sub_1D1DD1F18()
{
  v0 = sub_1D1E6845C();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1D1E683AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E6753C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1D1741B10(0, &qword_1EE079CA0, 0x1E69E9620);
  sub_1D1E6752C();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v1);
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1D1DD5060(&qword_1EE079CA8, 255, MEMORY[0x1E69E8120], MEMORY[0x1E69E8128]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FE30, &qword_1D1E92AC8);
  sub_1D17D8EA8(&qword_1EE079E20, &unk_1EC64FE30, &qword_1D1E92AC8, MEMORY[0x1E69E6328]);
  sub_1D1E6868C();
  result = sub_1D1E6846C();
  qword_1EE0813B8 = result;
  return result;
}

uint64_t sub_1D1DD2190(uint64_t a1)
{
  v3 = sub_1D1E674FC();
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D1E6753C();
  v13 = *(v6 - 8);
  v14 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  if (qword_1EE079CC0 != -1)
  {
    swift_once();
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v1;
  aBlock[4] = sub_1D1DD5040;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1845F94;
  aBlock[3] = &block_descriptor_62;
  v11 = _Block_copy(aBlock);

  sub_1D1E6751C();
  v16 = MEMORY[0x1E69E7CC0];
  sub_1D1DD5060(&qword_1EE07A040, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648EA0, &unk_1D1EB0F00);
  sub_1D17D8EA8(&qword_1EE079E30, &qword_1EC648EA0, &unk_1D1EB0F00, MEMORY[0x1E69E6328]);
  sub_1D1E6868C();
  MEMORY[0x1D38919F0](0, v8, v5, v11);
  _Block_release(v11);
  (*(v15 + 8))(v5, v3);
  (*(v13 + 8))(v8, v14);
}

uint64_t sub_1D1DD24C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1D1DD5060(&unk_1EE07A728, v2, type metadata accessor for SerialWidgetExecutor, &unk_1D1EB0EB4);
  return swift_job_run_on_task_executor();
}

uint64_t sub_1D1DD254C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_1D1DD5060(&unk_1EE07A738, a2, type metadata accessor for SerialWidgetExecutor, &unk_1D1EB0E1C);

  return a4(a1, v6, v7);
}

uint64_t sub_1D1DD2608()
{
  if (qword_1EE079CC0 != -1)
  {
    swift_once();
  }

  return sub_1D1E6847C();
}

uint64_t sub_1D1DD273C(uint64_t a1, uint64_t a2)
{
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1D1DD27EC;
  v5[3] = &block_descriptor_16_1;
  v3 = _Block_copy(v5);

  [v2 fetchPredictionsWithCompletion_];
  _Block_release(v3);
}

uint64_t sub_1D1DD27EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
  v3 = sub_1D1E67C1C();

  v2(v3);
}

id HMHomeManagerDataSyncState.description.getter(uint64_t a1)
{
  result = HMHomeManagerDataSyncStateToString();
  if (result)
  {
    v2 = result;
    v3 = sub_1D1E6781C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D1DD28C4()
{
  result = HMHomeManagerDataSyncStateToString();
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

uint64_t sub_1D1DD2940()
{
  type metadata accessor for WidgetHomeDataSync();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  qword_1EE081460 = v0;
  return result;
}

uint64_t sub_1D1DD2984()
{
  v1 = 0x676E69636E7973;
  if (*v0 != 1)
  {
    v1 = 0x64656873696E6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701602409;
  }
}

uint64_t sub_1D1DD29D8(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE68, &qword_1D1EB0F98);
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE70, &qword_1D1EB0FA0);
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE78, &qword_1D1EB0FA8);
  *(v3 + 96) = v6;
  *(v3 + 104) = *(v6 - 8);
  *(v3 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD2B84, 0, 0);
}

uint64_t sub_1D1DD2B84()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[5];
  v9 = v0[4];
  v15 = v0[3];
  *v6 = 1;
  (*(v7 + 104))(v6, *MEMORY[0x1E69E8788], v8);
  sub_1D1E6804C();
  (*(v7 + 8))(v6, v8);
  type metadata accessor for HDMHomeManagerDataSyncProxy();
  (*(v5 + 16))(v3, v2, v4);
  v10 = sub_1D1DA0E98(v3);
  v0[15] = v10;
  [v15 setDelegate_];
  v11 = swift_task_alloc();
  v0[16] = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v1;
  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_1D1DD2D64;
  v13 = v0[2];

  return MEMORY[0x1EEE6DD58](v13, &type metadata for WidgetHomeDataSync.DataSyncState, &type metadata for WidgetHomeDataSync.DataSyncState, 0, 0, &unk_1D1EB0FB8, v11, &type metadata for WidgetHomeDataSync.DataSyncState);
}

uint64_t sub_1D1DD2D64()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1D1DD2F70;
  }

  else
  {
    v2 = sub_1D1DD2E94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1DD2E94()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1DD2F70()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1DD304C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE78, &qword_1D1EB0FA8);
  *(v4 + 48) = v5;
  v6 = *(v5 - 8);
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 + 64);
  *(v4 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v4 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD3160, 0, 0);
}

uint64_t sub_1D1DD3160()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[4];
  v7 = sub_1D1E67E7C();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v6;
  sub_1D1A02004(v1, &unk_1D1EB0FC8, v9);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v8(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v5, v4);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v2, v4);
  sub_1D1A02004(v1, &unk_1D1EB0FD8, v11);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v12 = swift_task_alloc();
  v0[11] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FE80, &qword_1D1EB0FE0);
  *v12 = v0;
  v12[1] = sub_1D1DD33B0;

  return MEMORY[0x1EEE6DAC8](v0 + 13, 0, 0, v13);
}

uint64_t sub_1D1DD33B0()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D1DD36C0;
  }

  else
  {
    v2 = sub_1D1DD34C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1DD34C4()
{
  v1 = *(v0 + 104);
  if (v1 == 3)
  {
    if (qword_1EE07A0A0 != -1)
    {
      swift_once();
    }

    v2 = sub_1D1E6709C();
    __swift_project_value_buffer(v2, qword_1EE0813E0);
    v3 = sub_1D1E6707C();
    v4 = sub_1D1E6833C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D16EC000, v3, v4, "performDataSync(homeManager:) no result from task group", v5, 2u);
      MEMORY[0x1D3893640](v5, -1, -1);
    }

    sub_1D1DA1910();
    swift_allocError();
    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    sub_1D1E67FFC();

    v6 = *(v0 + 8);
  }

  else
  {
    **(v0 + 16) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    sub_1D1E67FFC();

    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_1D1DD36C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DD3770(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1D1E68A4C();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD3830, 0, 0);
}

uint64_t sub_1D1DD3830()
{
  v1 = sub_1D1E693AC();
  v3 = v2;
  sub_1D1E6912C();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1D1DD390C;

  return sub_1D1A01910(v1, v3, 0, 0, 1);
}

uint64_t sub_1D1DD390C()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1D1A03B0C;
  }

  else
  {
    v5 = sub_1D1DD3A7C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1DD3A7C()
{
  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE0813E0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6833C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D16EC000, v2, v3, "performDataSync(homeManager:) timed out after %fs", v5, 0xCu);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  sub_1D1DA1910();
  swift_allocError();
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D1DD3BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE78, &qword_1D1EB0FA8);
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE90, &qword_1D1EB0FE8);
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD3D0C, 0, 0);
}

uint64_t sub_1D1DD3D0C()
{
  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  v0[10] = __swift_project_value_buffer(v1, qword_1EE0813E0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "performDataSync(homeManager:) starting data sync", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  (*(v6 + 16))(v5, v8, v7);
  sub_1D17D8EA8(&qword_1EC64FE98, &qword_1EC64FE78, &qword_1D1EB0FA8, MEMORY[0x1E69E87D0]);
  sub_1D1E6801C();
  v9 = sub_1D17D8EA8(&qword_1EC64FEA0, &qword_1EC64FE90, &qword_1D1EB0FE8, MEMORY[0x1E69E87C0]);
  v10 = swift_task_alloc();
  v0[11] = v10;
  *v10 = v0;
  v10[1] = sub_1D1DD3F18;
  v11 = v0[7];

  return MEMORY[0x1EEE6D8C8](v0 + 13, v11, v9);
}

uint64_t sub_1D1DD3F18()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    (*(v2[8] + 8))(v2[9], v2[7]);
    v3 = sub_1D1DD42CC;
  }

  else
  {
    v3 = sub_1D1DD4044;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1DD4044()
{
  v18 = v0;
  v1 = *(v0 + 104);
  if ((v1 & 0xFE) == 2)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    if (v1 == 3)
    {
      v2 = 0;
    }

    else
    {
      v2 = v1;
    }

    v3 = sub_1D1E6707C();
    v4 = sub_1D1E6835C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v17 = v6;
      *v5 = 136315138;
      v7 = 0xE700000000000000;
      v8 = 0x676E69636E7973;
      if (v2 != 1)
      {
        v8 = 0x64656873696E6966;
        v7 = 0xE800000000000000;
      }

      if (v2)
      {
        v9 = v8;
      }

      else
      {
        v9 = 1701602409;
      }

      if (v2)
      {
        v10 = v7;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      v11 = sub_1D1B1312C(v9, v10, &v17);

      *(v5 + 4) = v11;
      _os_log_impl(&dword_1D16EC000, v3, v4, "performDataSync(homeManager:) first data sync completed with state: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1D3893640](v6, -1, -1);
      MEMORY[0x1D3893640](v5, -1, -1);
    }

    **(v0 + 16) = v2;

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = sub_1D17D8EA8(&qword_1EC64FEA0, &qword_1EC64FE90, &qword_1D1EB0FE8, MEMORY[0x1E69E87C0]);
    v15 = swift_task_alloc();
    *(v0 + 88) = v15;
    *v15 = v0;
    v15[1] = sub_1D1DD3F18;
    v16 = *(v0 + 56);

    return MEMORY[0x1EEE6D8C8](v0 + 104, v16, v14);
  }
}

uint64_t sub_1D1DD42CC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D1DD433C(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 112) = 0;

  [a2 setDelegate_];
  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EE0813E0);
  swift_unknownObjectRetain();
  oslog = sub_1D1E6707C();
  v6 = sub_1D1E6832C();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE60, &qword_1D1EB0F90);
    v9 = sub_1D1E678BC();
    v11 = sub_1D1B1312C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1D16EC000, oslog, v6, "performDataSync(homeManager:) resetting HMHomeManager's delegate to: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D1DD4508(double a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 16) = a3;
  v4 = sub_1D1E669FC();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD45D8, 0, 0);
}

uint64_t sub_1D1DD45D8()
{
  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  v0[8] = __swift_project_value_buffer(v1, qword_1EE0813E0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "refresh(homeManager:timeout:) starting refresh", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D1E6690C();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D1DD4750;
  v6 = v0[7];

  return sub_1D18BEEB4(v6);
}

uint64_t sub_1D1DD4750()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  (*(v2[5] + 8))(v2[7], v2[4]);
  if (v0)
  {
    v3 = sub_1D1DD49A0;
  }

  else
  {
    v3 = sub_1D1DD48B8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1DD48B8(uint64_t a1)
{
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "refresh(homeManager:timeout:) finished successfully", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1D1DD49A0()
{
  v1 = *(v0 + 80);
  v2 = v1;
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 80);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D16EC000, v3, v4, "refresh(homeManager:timeout:) failed to refresh %@", v6, 0xCu);
    sub_1D1741A30(v7, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D1DD4B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1DD4B2C, 0, 0);
}

uint64_t sub_1D1DD4B2C()
{
  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE0813E0);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "fetchPredictions(controller:) fetching user predictions", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v10 = *(v0 + 24);

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *(v5 + 16) = v10;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE40, &qword_1D1EB0F40);
  *v6 = v0;
  v6[1] = sub_1D1AE793C;
  v8 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v8, 0, 0, 0xD00000000000001DLL, 0x80000001D1EC9F00, sub_1D1DD520C, v5, v7);
}

void sub_1D1DD4CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE48, &qword_1D1EB0F48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  ObjectType = swift_getObjectType();
  (*(v6 + 16))(v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v8, v5);
  (*(a3 + 8))(sub_1D1DD5214, v11, ObjectType, a3);

  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EE0813E0);
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D16EC000, v13, v14, "fetchPredictions(controller:) finished fetching user predictions", v15, 2u);
    MEMORY[0x1D3893640](v15, -1, -1);
  }
}

uint64_t sub_1D1DD4F1C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE48, &qword_1D1EB0F48);
  return sub_1D1E67D6C();
}

uint64_t sub_1D1DD4F6C()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1D1DD4FEC()
{
  result = qword_1EC64FE20;
  if (!qword_1EC64FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FE20);
  }

  return result;
}

uint64_t block_copy_helper_62(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1DD5060(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1DD50A8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4BFC;

  return sub_1D1DD4B08(a1, v5, v4);
}

uint64_t sub_1D1DD5154(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D17C9354(a1, v4);
}

uint64_t sub_1D1DD5214(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE48, &qword_1D1EB0F48);

  return sub_1D1DD4F1C(a1);
}

uint64_t sub_1D1DD5290(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1DD4508(v5, a1, v4);
}

uint64_t sub_1D1DD5340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1DD29D8(a1, v4, v5);
}

uint64_t sub_1D1DD53F0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1DD304C(a1, a2, v7, v6);
}

uint64_t sub_1D1DD54A8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4CF0;

  return sub_1D1DD3770(v2);
}

uint64_t sub_1D1DD5564(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE78, &qword_1D1EB0FA8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1DD3BD8(a1, v6, v7, v1 + v5);
}

unint64_t sub_1D1DD5674()
{
  result = qword_1EC64FEA8;
  if (!qword_1EC64FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FEA8);
  }

  return result;
}

void WidgetRefreshOptions.coverages.getter()
{
  if ((*v0 & 0x61) != 0)
  {
    if (qword_1EE07CD90 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_1D179B6E8(&unk_1F4D666B8);
    swift_arrayDestroy();
  }
}

uint64_t WidgetRefreshOptions.matterSnapshotFilter.getter@<X0>(uint64_t a1@<X8>)
{
  if ((*v1 & 0x1000001) != 0)
  {
    result = sub_1D179C134(&unk_1F4D666E8);
    v4 = 2;
  }

  else
  {
    result = 0;
    v4 = 3;
  }

  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

void WidgetRefreshOptions.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v1;
  }

  v5 = v1;
  while (v4 != v5)
  {
    v6 = dword_1F4D5F4A8[v5 + 8];
    if ((v6 & ~v3) == 0)
    {
      if (v6 > 31)
      {
        if (v6 > 4095)
        {
          if (v6 == 4096)
          {
            v7 = 0x6465725072657375;
            v8 = 0xEF736E6F69746369;
LABEL_28:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v2 = sub_1D177CF00(0, *(v2 + 2) + 1, 1, v2);
            }

            v10 = *(v2 + 2);
            v9 = *(v2 + 3);
            if (v10 >= v9 >> 1)
            {
              v2 = sub_1D177CF00((v9 > 1), v10 + 1, 1, v2);
            }

            v1 = v5 + 1;
            *(v2 + 2) = v10 + 1;
            v11 = &v2[16 * v10];
            *(v11 + 4) = v7;
            *(v11 + 5) = v8;
            if (v5 == 7)
            {
LABEL_33:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
              sub_1D17B3684();
              sub_1D1E6770C();

              return;
            }

            goto LABEL_2;
          }

          if (v6 == 0x1000000)
          {
            v7 = 0x636156746F626F72;
            v8 = 0xEC000000736D7575;
            goto LABEL_28;
          }
        }

        else
        {
          if (v6 == 32)
          {
            v8 = 0xE700000000000000;
            v7 = 0x736172656D6163;
            goto LABEL_28;
          }

          if (v6 == 64)
          {
            v7 = 0x6E6F43616964656DLL;
            v8 = 0xED0000736C6F7274;
            goto LABEL_28;
          }
        }
      }

      else if (v6 > 3)
      {
        if (v6 == 4)
        {
          v7 = 0x536574616D696C63;
          v8 = 0xEE0073726F736E65;
          goto LABEL_28;
        }

        if (v6 == 16)
        {
          v8 = 0xEA00000000007374;
          v7 = 0x65536E6F69746361;
          goto LABEL_28;
        }
      }

      else
      {
        if (v6 == 1)
        {
          v8 = 0xE300000000000000;
          v7 = 7105633;
          goto LABEL_28;
        }

        if (v6 == 2)
        {
          v7 = 0x726F737365636361;
          v8 = 0xEB00000000736569;
          goto LABEL_28;
        }
      }
    }

    if (++v5 == 8)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
}

unint64_t sub_1D1DD5B3C()
{
  result = qword_1EC64FEB0;
  if (!qword_1EC64FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FEB0);
  }

  return result;
}

unint64_t sub_1D1DD5B94()
{
  result = qword_1EC64FEB8;
  if (!qword_1EC64FEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FEB8);
  }

  return result;
}

unint64_t sub_1D1DD5BE8()
{
  result = qword_1EC64FEC0;
  if (!qword_1EC64FEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FEC0);
  }

  return result;
}

unint64_t sub_1D1DD5C40()
{
  result = qword_1EC64FEC8;
  if (!qword_1EC64FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64FEC8);
  }

  return result;
}

uint64_t sub_1D1DD5D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticMatterDevice(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17419CC(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  if (swift_dynamicCast())
  {
    sub_1D1DD7568(v7, a2, type metadata accessor for StaticMatterDevice);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  (*(v5 + 56))(a2, v8, 1, v4);
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

void *StateSnapshot.widgetCharacteristics(of:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    v3 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D1DD61C8(v2, &v29);
      if (v30)
      {
        sub_1D16EEE20(&v29, v32);
        sub_1D16EEE20(v32, &v29);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v3 = sub_1D177F2B8(0, v3[2] + 1, 1, v3);
          v33 = v3;
        }

        v6 = v3[2];
        v5 = v3[3];
        if (v6 >= v5 >> 1)
        {
          v3 = sub_1D177F2B8((v5 > 1), v6 + 1, 1, v3);
          v33 = v3;
        }

        v7 = v30;
        v8 = v31;
        v9 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
        MEMORY[0x1EEE9AC00](v9);
        v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v12 + 16))(v11);
        sub_1D1D20B74(v6, v11, &v33, v7, v8);
        __swift_destroy_boxed_opaque_existential_1(&v29);
      }

      else
      {
        sub_1D1741A30(&v29, &qword_1EC643668, &qword_1D1E71D60);
      }

      v2 += 40;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v13 = v3[2];
  if (!v13)
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_31:

    return v16;
  }

  v14 = 0;
  v15 = (v3 + 4);
  v16 = MEMORY[0x1E69E7CC0];
  while (v14 < v3[2])
  {
    sub_1D17419CC(v15, v32);
    sub_1D1DD67CC(v32, &v29);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v17 = v29;
    v18 = *(v29 + 16);
    v19 = v16[2];
    v20 = v19 + v18;
    if (__OFADD__(v19, v18))
    {
      goto LABEL_33;
    }

    v21 = swift_isUniquelyReferenced_nonNull_native();
    if (v21 && v20 <= v16[3] >> 1)
    {
      if (*(v17 + 16))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v19 <= v20)
      {
        v22 = v19 + v18;
      }

      else
      {
        v22 = v19;
      }

      v16 = sub_1D17800B4(v21, v22, 1, v16);
      if (*(v17 + 16))
      {
LABEL_26:
        v23 = (v16[3] >> 1) - v16[2];
        type metadata accessor for StaticCharacteristic(0);
        if (v23 < v18)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v18)
        {
          v24 = v16[2];
          v25 = __OFADD__(v24, v18);
          v26 = v24 + v18;
          if (v25)
          {
            goto LABEL_36;
          }

          v16[2] = v26;
        }

        goto LABEL_15;
      }
    }

    if (v18)
    {
      goto LABEL_34;
    }

LABEL_15:
    ++v14;
    v15 += 40;
    if (v13 == v14)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);

  __swift_destroy_boxed_opaque_existential_1(v32);

  __break(1u);
  return result;
}

uint64_t sub_1D1DD61C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC40, &unk_1D1EAADA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v37 - v5;
  v6 = type metadata accessor for StaticServiceGroup(0);
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for StaticService(0);
  v43 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for StaticAccessory(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17419CC(a1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1D17419CC(a1, a2);
  }

  v20 = v44;
  sub_1D17419CC(v44 + 16, v45);
  v21 = swift_dynamicCast();
  (*(v17 + 56))(v15, v21 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1D1741A30(v15, &qword_1EC6436C8, &unk_1D1E97C40);
    sub_1D17419CC(v20 + 16, v45);
    v22 = swift_dynamicCast();
    v23 = v43;
    (*(v43 + 56))(v10, v22 ^ 1u, 1, v11);
    if ((*(v23 + 48))(v10, 1, v11) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC6436F0, &qword_1D1E99BC0);
      sub_1D17419CC(v20 + 16, v45);
      v25 = v41;
      v24 = v42;
      v26 = swift_dynamicCast();
      v27 = v40;
      (*(v40 + 56))(v24, v26 ^ 1u, 1, v25);
      if ((*(v27 + 48))(v24, 1, v25) == 1)
      {

        result = sub_1D1741A30(v24, &qword_1EC64CC40, &unk_1D1EAADA0);
        *a2 = 0u;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0;
        return result;
      }

      v29 = type metadata accessor for StaticServiceGroup;
      v36 = v24;
      v32 = v38;
      sub_1D1DD7568(v36, v38, type metadata accessor for StaticServiceGroup);
      *(a2 + 24) = v25;
      v33 = &qword_1EC64BA10;
      v34 = type metadata accessor for StaticServiceGroup;
      v35 = &protocol conformance descriptor for StaticServiceGroup;
    }

    else
    {
      v29 = type metadata accessor for StaticService;
      v32 = v39;
      sub_1D1DD7568(v10, v39, type metadata accessor for StaticService);
      *(a2 + 24) = v11;
      v33 = &qword_1EC646AF0;
      v34 = type metadata accessor for StaticService;
      v35 = &protocol conformance descriptor for StaticService;
    }

    *(a2 + 32) = sub_1D1DD7520(v33, v34, v35);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    v31 = v32;
  }

  else
  {
    v29 = type metadata accessor for StaticAccessory;
    sub_1D1DD7568(v15, v19, type metadata accessor for StaticAccessory);
    *(a2 + 24) = v16;
    *(a2 + 32) = sub_1D1DD7520(&qword_1EC64BA18, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    v31 = v19;
  }

  sub_1D1DD7568(v31, boxed_opaque_existential_1, v29);
}

uint64_t sub_1D1DD67CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v99 = a2;
  v90 = type metadata accessor for StaticMediaProfile(0);
  v3 = MEMORY[0x1EEE9AC00](v90);
  v88 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v88 - v5;
  v92 = type metadata accessor for StaticMediaSystem(0);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for StaticServiceGroup(0);
  v7 = MEMORY[0x1EEE9AC00](v97);
  v93 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v94 = &v88 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v88 - v11;
  v12 = type metadata accessor for StaticService(0);
  v98 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v100 = (&v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v88 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v95 = &v88 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v88 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v88 - v23;
  v25 = type metadata accessor for StaticAccessory(0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v88 - v29;
  sub_1D17419CC(a1, v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  if (swift_dynamicCast())
  {
    v31 = sub_1D1DD7568(v30, v28, type metadata accessor for StaticAccessory);
    MEMORY[0x1EEE9AC00](v31);
    *(&v88 - 2) = v28;
    v33 = sub_1D17868B8(sub_1D1820ECC, (&v88 - 4), v32);
    v101 = MEMORY[0x1E69E7CC0];
    v34 = v33[2];
    if (v34)
    {
      v97 = v28;
      v35 = *(v12 + 104);
      v36 = *(v98 + 80);
      v100 = v33;
      v37 = v33 + ((v36 + 32) & ~v36);
      v38 = *(v98 + 72);
      do
      {
        sub_1D1DD74B8(v37, v24, type metadata accessor for StaticService);
        v103 = v24[v35];
        v39 = ServiceKind.requiredCharacteristicKinds.getter();
        MEMORY[0x1EEE9AC00](v39);
        *(&v88 - 2) = v24;
        v40 = sub_1D178A0E8(sub_1D1DD78C4, (&v88 - 4), v39);

        sub_1D1DD7458(v24, type metadata accessor for StaticService);
        sub_1D17A6418(v40);
        v37 += v38;
        --v34;
      }

      while (v34);

      v41 = v101;
      v42 = v99;
      v28 = v97;
    }

    else
    {

      v41 = MEMORY[0x1E69E7CC0];
      v42 = v99;
    }

    v45 = type metadata accessor for StaticAccessory;
    goto LABEL_14;
  }

  v43 = v12;
  if (swift_dynamicCast())
  {
    v28 = v95;
    sub_1D1DD7568(v22, v95, type metadata accessor for StaticService);
    LOBYTE(v101) = v28[*(v12 + 104)];
    v44 = ServiceKind.requiredCharacteristicKinds.getter();
    MEMORY[0x1EEE9AC00](v44);
    *(&v88 - 2) = v28;
    v41 = sub_1D178A0E8(sub_1D1DD743C, (&v88 - 4), v44);

    v42 = v99;
    v45 = type metadata accessor for StaticService;
LABEL_14:
    v61 = v45;
    v62 = v28;
LABEL_15:
    sub_1D1DD7458(v62, v61);
LABEL_16:
    result = __swift_destroy_boxed_opaque_existential_1(v102);
    *v42 = v41;
    return result;
  }

  v46 = v96;
  v47 = v97;
  if (!swift_dynamicCast())
  {
    v63 = v91;
    if (swift_dynamicCast())
    {
      sub_1D1DD7458(v63, type metadata accessor for StaticMediaSystem);
    }

    else
    {
      v64 = v89;
      v65 = v90;
      if (swift_dynamicCast())
      {
        v66 = v64;
        v67 = v88;
        sub_1D1DD7568(v66, v88, type metadata accessor for StaticMediaProfile);
        v68 = *(v67 + *(v65 + 68));
        v69 = v68[2];
        v70 = MEMORY[0x1E69E7CC0];
        if (v69)
        {
          v97 = v43;
          v71 = sub_1D18042C8(v69, 0);
          v72 = sub_1D1804A58(&v101, v71 + ((*(v98 + 80) + 32) & ~*(v98 + 80)), v69, v68);
          v73 = v101;

          result = sub_1D1716918(v73);
          if (v72 != v69)
          {
            goto LABEL_39;
          }

          v42 = v99;
          v74 = v100;
          v43 = v97;
          v70 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v71 = MEMORY[0x1E69E7CC0];
          v42 = v99;
          v74 = v100;
        }

        v101 = v70;
        v82 = v71[2];
        if (v82)
        {
          v83 = *(v43 + 104);
          v84 = v71 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
          v85 = *(v98 + 72);
          do
          {
            sub_1D1DD74B8(v84, v74, type metadata accessor for StaticService);
            v103 = *(v74 + v83);
            v86 = ServiceKind.requiredCharacteristicKinds.getter();
            MEMORY[0x1EEE9AC00](v86);
            *(&v88 - 2) = v100;
            v87 = sub_1D178A0E8(sub_1D1DD78C4, (&v88 - 4), v86);

            v74 = v100;
            sub_1D1DD7458(v100, type metadata accessor for StaticService);
            sub_1D17A6418(v87);
            v84 += v85;
            --v82;
          }

          while (v82);

          v41 = v101;
          v42 = v99;
        }

        else
        {

          v41 = MEMORY[0x1E69E7CC0];
        }

        v61 = type metadata accessor for StaticMediaProfile;
        v62 = v88;
        goto LABEL_15;
      }
    }

    v41 = MEMORY[0x1E69E7CC0];
    v42 = v99;
    goto LABEL_16;
  }

  v48 = v46;
  v49 = v94;
  sub_1D1DD7568(v48, v94, type metadata accessor for StaticServiceGroup);
  v50 = v49;
  v51 = v93;
  sub_1D1DD74B8(v50, v93, type metadata accessor for StaticServiceGroup);
  v52 = *(v51 + *(v47 + 56));
  v53 = v52[2];
  v54 = MEMORY[0x1E69E7CC0];
  if (!v53)
  {
    v60 = MEMORY[0x1E69E7CC0];
    v42 = v99;
    goto LABEL_25;
  }

  v97 = v43;
  v55 = sub_1D18042C8(v53, 0);
  v56 = (*(v98 + 80) + 32) & ~*(v98 + 80);
  v100 = v55;
  v57 = sub_1D1804A58(&v101, v55 + v56, v53, v52);
  v58 = v101;

  result = sub_1D1716918(v58);
  if (v57 == v53)
  {
    v42 = v99;
    v60 = v100;
    v43 = v97;
    v54 = MEMORY[0x1E69E7CC0];
LABEL_25:
    sub_1D1DD7458(v93, type metadata accessor for StaticServiceGroup);
    v101 = v54;
    v75 = *(v60 + 16);
    if (v75)
    {
      v76 = *(v43 + 104);
      v77 = *(v98 + 80);
      v100 = v60;
      v78 = v60 + ((v77 + 32) & ~v77);
      v79 = *(v98 + 72);
      do
      {
        sub_1D1DD74B8(v78, v17, type metadata accessor for StaticService);
        v103 = v17[v76];
        v80 = ServiceKind.requiredCharacteristicKinds.getter();
        MEMORY[0x1EEE9AC00](v80);
        *(&v88 - 2) = v17;
        v81 = sub_1D178A0E8(sub_1D1DD78C4, (&v88 - 4), v80);

        sub_1D1DD7458(v17, type metadata accessor for StaticService);
        sub_1D17A6418(v81);
        v78 += v79;
        --v75;
      }

      while (v75);

      v41 = v101;
      v42 = v99;
    }

    else
    {

      v41 = MEMORY[0x1E69E7CC0];
    }

    v61 = type metadata accessor for StaticServiceGroup;
    v62 = v94;
    goto LABEL_15;
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_1D1DD729C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for StaticService(0) + 128));
  if (*(v5 + 16))
  {
    v6 = *a1;

    v7 = sub_1D171D140(v6);
    if (v8)
    {
      v9 = v7;
      v10 = *(v5 + 56);
      v11 = type metadata accessor for StaticCharacteristic(0);
      v12 = *(v11 - 8);
      sub_1D1DD74B8(v10 + *(v12 + 72) * v9, a3, type metadata accessor for StaticCharacteristic);
      (*(v12 + 56))(a3, 0, 1, v11);
    }

    else
    {
      v15 = type metadata accessor for StaticCharacteristic(0);
      (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
    }
  }

  else
  {
    v13 = type metadata accessor for StaticCharacteristic(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_1D1DD7458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1DD74B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1DD7520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1DD7568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1D1DD75D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  StaticEndpoint.primaryCluster.getter(v37);
  v12 = v38;
  if (v38)
  {
    v13 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v14 = (*(v13 + 32))(v12, v13);
    v15 = __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v15 = sub_1D1741A30(v37, &qword_1EC646BC8, &qword_1D1E82230);
    v14 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v15);
  v33[2] = a5;
  v16 = sub_1D1892D24(sub_1D1A4565C, v33, v14);

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v17 = sub_1D1E6709C();
  __swift_project_value_buffer(v17, qword_1EE0813C8);
  swift_unknownObjectRetain();

  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6835C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v34 = a3;
    v22 = v21;
    v36[0] = v21;
    *v20 = 136315394;
    v37[0] = a1;
    v37[1] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A370, &qword_1D1EAF8F0);
    v23 = sub_1D1E678BC();
    v35 = a4;
    v24 = a2;
    v26 = sub_1D1B1312C(v23, v25, v36);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = sub_1D1A53944();
    v28 = MEMORY[0x1D3891260](v16, v27);
    v30 = sub_1D1B1312C(v28, v29, v36);

    *(v20 + 14) = v30;
    a2 = v24;
    a4 = v35;
    _os_log_impl(&dword_1D16EC000, v18, v19, "buildRelevantAttributeDescriptors: for %s found %s", v20, 0x16u);
    swift_arrayDestroy();
    v31 = v22;
    a3 = v34;
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v20, -1, -1);
  }

  *a6 = a3;
  a6[1] = a4;
  a6[2] = a1;
  a6[3] = a2;
  a6[4] = v16;
  swift_unknownObjectRetain();

  return result;
}

uint64_t sub_1D1DD78DC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v26 - v5;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v26 = v1;
  v36 = MEMORY[0x1E69E7CC0];
  v28 = v4;
  sub_1D178D784(0, v6, 0);
  v7 = v36;
  v8 = v28 + 56;
  result = sub_1D1E6869C();
  v10 = result;
  v11 = v28;
  v12 = 0;
  v27 = v28 + 64;
  v29 = v6;
  v30 = v8;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v11 + 32))
  {
    v15 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v34 = *(v11 + 36);
    v16 = v31;
    sub_1D1741C08(*(v11 + 48) + *(v32 + 72) * v10, v31, &qword_1EC643018, &qword_1D1E9AC00);
    v35 = *(v16 + *(v33 + 40));
    result = sub_1D1741A30(v16, &qword_1EC643018, &qword_1D1E9AC00);
    v36 = v7;
    v18 = *(v7 + 16);
    v17 = *(v7 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_1D178D784((v17 > 1), v18 + 1, 1);
      v7 = v36;
    }

    *(v7 + 16) = v18 + 1;
    *(v7 + 8 * v18 + 32) = v35;
    v13 = 1 << *(v11 + 32);
    if (v10 >= v13)
    {
      goto LABEL_22;
    }

    v8 = v30;
    v19 = *(v30 + 8 * v15);
    if ((v19 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(v11 + 36))
    {
      goto LABEL_24;
    }

    v20 = v19 & (-2 << (v10 & 0x3F));
    if (v20)
    {
      v13 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
      v14 = v29;
    }

    else
    {
      v21 = v15 << 6;
      v22 = v15 + 1;
      v23 = (v27 + 8 * v15);
      v14 = v29;
      while (v22 < (v13 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1D18A2E20(v10, v34, 0);
          v11 = v28;
          v13 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1D18A2E20(v10, v34, 0);
      v11 = v28;
    }

LABEL_4:
    ++v12;
    v10 = v13;
    if (v12 == v14)
    {
      return v7;
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

uint64_t sub_1D1DD7BEC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v31 - v4;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v38 = v8;
  v31 = v1;
  v45 = MEMORY[0x1E69E7CC0];
  sub_1D178CEFC(0, v9, 0);
  v10 = v45;
  v11 = a1 + 56;
  result = sub_1D1E6869C();
  v13 = v6;
  v14 = result;
  v15 = 0;
  v39 = v13;
  v36 = v13 + 32;
  v37 = (v13 + 16);
  v32 = a1 + 64;
  v33 = v9;
  v34 = a1 + 56;
  v35 = a1;
  while ((v14 & 0x8000000000000000) == 0 && v14 < 1 << *(a1 + 32))
  {
    v17 = v14 >> 6;
    if ((*(v11 + 8 * (v14 >> 6)) & (1 << v14)) == 0)
    {
      goto LABEL_21;
    }

    v18 = *(a1 + 36);
    v43 = v15;
    v44 = v18;
    v19 = v40;
    v20 = v5;
    sub_1D1741C08(*(a1 + 48) + *(v41 + 72) * v14, v40, &qword_1EC643010, &qword_1D1E90E20);
    v21 = v38;
    (*v37)(v38, v19 + *(v42 + 40), v5);
    sub_1D1741A30(v19, &qword_1EC643010, &qword_1D1E90E20);
    v45 = v10;
    v22 = *(v10 + 16);
    v23 = *(v10 + 24);
    if (v22 >= v23 >> 1)
    {
      sub_1D178CEFC((v23 > 1), v22 + 1, 1);
      v10 = v45;
    }

    *(v10 + 16) = v22 + 1;
    result = (*(v39 + 32))(v10 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v22, v21, v20);
    a1 = v35;
    v16 = 1 << *(v35 + 32);
    if (v14 >= v16)
    {
      goto LABEL_22;
    }

    v5 = v20;
    v11 = v34;
    v24 = *(v34 + 8 * v17);
    if ((v24 & (1 << v14)) == 0)
    {
      goto LABEL_23;
    }

    if (v44 != *(v35 + 36))
    {
      goto LABEL_24;
    }

    v25 = v24 & (-2 << (v14 & 0x3F));
    if (v25)
    {
      v16 = __clz(__rbit64(v25)) | v14 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = v17 << 6;
      v27 = v17 + 1;
      v28 = (v32 + 8 * v17);
      while (v27 < (v16 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_1D18A2E20(v14, v44, 0);
          v16 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_1D18A2E20(v14, v44, 0);
    }

LABEL_4:
    v15 = v43 + 1;
    v14 = v16;
    if (v43 + 1 == v33)
    {
      return v10;
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

uint64_t sub_1D1DD7FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = a6;
  v7[16] = v6;
  v7[13] = a3;
  v7[14] = a5;
  v7[11] = a1;
  v7[12] = a2;
  v7[17] = *(a5 - 8);
  v7[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7[19] = swift_task_alloc();
  v7[20] = type metadata accessor for WidgetDetailUpdate(0, a5, a6, v10);
  v7[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DD8104, v6, 0);
}

uint64_t sub_1D1DD8104()
{
  v29 = v0;
  v26 = v0[18];
  v27 = v0[21];
  v1 = v0[16];
  v24 = v0[19];
  v25 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v23 = v0[13];
  swift_beginAccess();
  v5 = v1[16];
  v6 = swift_task_alloc();
  v6[2] = v2;
  v6[3] = v3;
  v6[4] = v4;

  v7 = sub_1D1B52D1C(sub_1D1DDBE10, v6, v5);

  v8 = sub_1D1DD7BEC(v7);

  swift_beginAccess();
  v9 = v1[17];
  v10 = swift_task_alloc();
  v10[2] = v2;
  v10[3] = v3;
  v10[4] = v4;

  v11 = sub_1D1B52D1C(sub_1D1DDBDEC, v10, v9);

  v12 = sub_1D1DD7BEC(v11);

  swift_beginAccess();
  v13 = v1[18];
  v14 = swift_task_alloc();
  v14[2] = v2;
  v14[3] = v3;
  v14[4] = v4;

  v15 = sub_1D1B525A0(sub_1D1DDBE10, v14, v13);

  v16 = sub_1D1DD78DC(v15);

  sub_1D1741C08(v23, v24, &qword_1EC642590, qword_1D1E71260);
  (*(v25 + 16))(v26, v4, v2);
  v28[0] = dword_1F4D666B0;
  WidgetDetailUpdate.init(homeID:characteristics:actionSets:matterDevices:configuration:isMonitoring:filtered:)(v24, v8, v12, v16, v26, 0, v28, v2, v27, v3);
  v17 = swift_task_alloc();
  v0[22] = v17;
  *v17 = v0;
  v17[1] = sub_1D1DD83B8;
  v18 = v0[21];
  v19 = v0[15];
  v20 = v0[14];
  v21 = v0[11];

  return sub_1D1DBC3B8(v21, v18, v20, v19);
}

uint64_t sub_1D1DD83B8()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v3 = v2[16];

    return MEMORY[0x1EEE6DFA0](sub_1D1DD85C4, v3, 0);
  }

  else
  {
    v5 = v2[20];
    v4 = v2[21];
    v6 = v2[17];
    v7 = v2[14];
    sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);

    (*(v6 + 8))(v4 + *(v5 + 48), v7);
    v8 = *(v5 + 60);
    v9 = sub_1D1E66FDC();
    (*(*(v9 - 8) + 8))(v4 + v8, v9);

    v10 = v2[1];

    return v10();
  }
}

uint64_t sub_1D1DD85C4()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[17];
  v4 = v0[14];
  sub_1D1741A30(v1, &qword_1EC642590, qword_1D1E71260);

  (*(v3 + 8))(v1 + *(v2 + 48), v4);
  v5 = *(v2 + 60);
  v6 = sub_1D1E66FDC();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D1DD86EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 8))(a3, a4);
  v9 = v8;
  v11 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  if (v7 == (*(v10 + 8))(v11, v10) && v9 == v12)
  {
  }

  else
  {
    v14 = sub_1D1E6904C();

    v15 = 0;
    if ((v14 & 1) == 0)
    {
      return v15 & 1;
    }
  }

  v16 = (*(a4 + 16))(a3, a4);
  v18 = v17;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  if (v16 == (*(v20 + 16))(v19, v20) && v18 == v21)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1D1E6904C();
  }

  return v15 & 1;
}

uint64_t WidgetDataModel.toggle<A>(configuration:homeID:targetID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[82] = v5;
  v6[81] = a5;
  v6[80] = a4;
  v6[79] = a3;
  v6[78] = a2;
  v6[77] = a1;
  v7 = sub_1D1E66A7C();
  v6[83] = v7;
  v6[84] = *(v7 - 8);
  v6[85] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC40, &unk_1D1EAADA0);
  v6[86] = swift_task_alloc();
  v8 = type metadata accessor for StaticServiceGroup(0);
  v6[87] = v8;
  v6[88] = *(v8 - 8);
  v6[89] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70);
  v6[90] = swift_task_alloc();
  v9 = type metadata accessor for StaticActionSet(0);
  v6[91] = v9;
  v6[92] = *(v9 - 8);
  v6[93] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v6[94] = swift_task_alloc();
  v6[95] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v10 = type metadata accessor for StaticService(0);
  v6[98] = v10;
  v6[99] = *(v10 - 8);
  v6[100] = swift_task_alloc();
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();
  v6[104] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v6[105] = swift_task_alloc();
  v11 = type metadata accessor for StaticAccessory(0);
  v6[106] = v11;
  v6[107] = *(v11 - 8);
  v6[108] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6[109] = swift_task_alloc();
  v6[110] = swift_task_alloc();
  type metadata accessor for StateSnapshot(0);
  v6[111] = swift_task_alloc();
  v6[112] = swift_task_alloc();
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  v6[113] = qword_1EE07B4E0;
  v12 = swift_task_alloc();
  v6[114] = v12;
  *v12 = v6;
  v12[1] = sub_1D1DD8D1C;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DD8D1C(uint64_t a1)
{
  v2 = *(*v1 + 904);
  *(*v1 + 920) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1DD8E34, v2, 0);
}

uint64_t sub_1D1DD8E34()
{
  v1 = v0[110];
  v2 = v0[84];
  v3 = v0[83];
  v4 = v0[78];
  v5 = *(v2 + 16);
  v0[116] = v5;
  v0[117] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 56);
  v0[118] = v6;
  v0[119] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 0, 1, v3);
  v7 = swift_task_alloc();
  v0[120] = v7;
  *v7 = v0;
  v7[1] = sub_1D1DD8F54;
  v8 = v0[112];
  v9 = v0[110];
  v10 = v0[81];
  v11 = v0[80];
  v12 = v0[77];

  return sub_1D1DD7FC4(v8, v12, v9, 0, v11, v10);
}

uint64_t sub_1D1DD8F54()
{
  v2 = *v1;
  v3 = *(*v1 + 880);
  *(*v1 + 968) = v0;

  sub_1D1741A30(v3, &qword_1EC642590, qword_1D1E71260);

  v4 = *(v2 + 904);
  if (v0)
  {
    v5 = sub_1D1DDB7C4;
  }

  else
  {
    v5 = sub_1D1DD90D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1D1DD90D0()
{
  v137 = v0;
  StateSnapshot.tileInfo(for:)(*(v0 + 632), (v0 + 56));
  if (!*(v0 + 80))
  {
    sub_1D1741A30(v0 + 56, &qword_1EC643668, &qword_1D1E71D60);
    if (qword_1EE07A098 != -1)
    {
LABEL_64:
      swift_once();
    }

    v12 = *(v0 + 928);
    v13 = *(v0 + 680);
    v14 = *(v0 + 664);
    v15 = *(v0 + 632);
    v16 = sub_1D1E6709C();
    __swift_project_value_buffer(v16, qword_1EE0813C8);
    v12(v13, v15, v14);
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6833C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 896);
    v21 = *(v0 + 680);
    v22 = *(v0 + 672);
    v23 = *(v0 + 664);
    if (v19)
    {
      v133 = *(v0 + 896);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v136[0] = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v136);
      *(v24 + 12) = 2080;
      sub_1D1886B8C();
      v26 = sub_1D1E68FAC();
      v28 = v27;
      (*(v22 + 8))(v21, v23);
      v29 = sub_1D1B1312C(v26, v28, v136);

      *(v24 + 14) = v29;
      _os_log_impl(&dword_1D16EC000, v17, v18, "%s - tile info not found for id %s cannot be toggled", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v25, -1, -1);
      MEMORY[0x1D3893640](v24, -1, -1);

      v30 = v133;
    }

    else
    {

      (*(v22 + 8))(v21, v23);
      v30 = v20;
    }

    sub_1D1DDBD8C(v30, type metadata accessor for StateSnapshot);
    goto LABEL_25;
  }

  sub_1D16EEE20((v0 + 56), v0 + 16);
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  if (((*(v2 + 168))(v1, v2) & 1) == 0)
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v31 = sub_1D1E6709C();
    __swift_project_value_buffer(v31, qword_1EE0813C8);
    sub_1D17419CC(v0 + 16, v0 + 96);
    v32 = sub_1D1E6707C();
    v33 = sub_1D1E6835C();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 896);
    if (v34)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v136[0] = v37;
      *v36 = 136315394;
      *(v36 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v136);
      *(v36 + 12) = 2080;
      sub_1D17419CC(v0 + 96, v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
      v38 = sub_1D1E678BC();
      v40 = v39;
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      v41 = sub_1D1B1312C(v38, v40, v136);

      *(v36 + 14) = v41;
      _os_log_impl(&dword_1D16EC000, v32, v33, "%s - tile %s cannot be toggled", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v37, -1, -1);
      MEMORY[0x1D3893640](v36, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    }

    sub_1D1DDBD8C(v35, type metadata accessor for StateSnapshot);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_25:
    v135 = 1;
LABEL_26:

    v75 = *(v0 + 8);

    return v75(v135);
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EE0813C8);
  sub_1D17419CC(v0 + 16, v0 + 176);
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v136[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v136);
    *(v6 + 12) = 2080;
    sub_1D17419CC(v0 + 176, v0 + 376);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    v8 = sub_1D1E678BC();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
    v11 = sub_1D1B1312C(v8, v10, v136);

    *(v6 + 14) = v11;
    _os_log_impl(&dword_1D16EC000, v4, v5, "%s - tileInfo is %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  }

  v42 = *(v0 + 856);
  v43 = *(v0 + 848);
  v44 = *(v0 + 840);
  v45 = *(v0 + 648);
  v46 = *(v0 + 640);
  v131 = (*(v45 + 8))(v46, v45);
  v132 = v47;
  v130 = (*(v45 + 16))(v46, v45);
  v134 = v48;
  v49 = *(v0 + 40);
  v50 = *(v0 + 48);
  v51 = __swift_project_boxed_opaque_existential_1((v0 + 16), v49);
  Description = v49[-1].Description;
  v53 = swift_task_alloc();
  Description[2](v53, v51, v49);
  AnyTileInfoBearer.init<A>(_:)(v53, v49, v50, v136);

  v54 = v136[0];
  *(v0 + 976) = v136[0];
  sub_1D17419CC((v54 + 2), v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  v55 = swift_dynamicCast();
  (*(v42 + 56))(v44, v55 ^ 1u, 1, v43);
  if ((*(v42 + 48))(v44, 1, v43) != 1)
  {
    sub_1D1DDBD24(*(v0 + 840), *(v0 + 864), type metadata accessor for StaticAccessory);
    v77 = sub_1D1E6707C();
    v78 = sub_1D1E6835C();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v136[0] = v80;
      *v79 = 136315138;
      *(v79 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v136);
      _os_log_impl(&dword_1D16EC000, v77, v78, "%s - is accessory", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x1D3893640](v80, -1, -1);
      MEMORY[0x1D3893640](v79, -1, -1);
    }

    v81 = *(v0 + 792);
    v82 = *(v0 + 784);
    v83 = *(v0 + 776);
    StaticAccessory.primaryStaticService.getter(v83);
    if ((*(v81 + 48))(v83, 1, v82) == 1)
    {
      sub_1D1741A30(*(v0 + 776), &qword_1EC6436F0, &qword_1D1E99BC0);
      StaticAccessory.visibleStaticServices.getter();
      v85 = v84;
      v86 = *(v84 + 16);
      if (!v86)
      {
LABEL_37:

        v89 = sub_1D1E6707C();
        v90 = sub_1D1E6835C();
        v91 = os_log_type_enabled(v89, v90);
        v72 = *(v0 + 896);
        v92 = *(v0 + 864);
        if (v91)
        {
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v136[0] = v94;
          *v93 = 136315138;
          *(v93 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v136);
          _os_log_impl(&dword_1D16EC000, v89, v90, "%s - no possible services to toggle", v93, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v94);
          MEMORY[0x1D3893640](v94, -1, -1);
          MEMORY[0x1D3893640](v93, -1, -1);
        }

        sub_1D1DDBD8C(v92, type metadata accessor for StaticAccessory);
        goto LABEL_40;
      }

      v87 = 0;
      v88 = *(v0 + 792);
      while (1)
      {
        if (v87 >= *(v85 + 16))
        {
          __break(1u);
          goto LABEL_64;
        }

        sub_1D18DC660(v85 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v87, *(v0 + 816));
        if (StaticService.canBeToggled.getter())
        {
          break;
        }

        ++v87;
        sub_1D1DDBD8C(*(v0 + 816), type metadata accessor for StaticService);
        if (v86 == v87)
        {
          goto LABEL_37;
        }
      }

      v110 = *(v0 + 824);
      v111 = *(v0 + 816);
      v112 = *(v0 + 808);

      sub_1D1DDBD24(v111, v110, type metadata accessor for StaticService);
      sub_1D18DC660(v110, v112);
      v113 = sub_1D1E6707C();
      v114 = sub_1D1E6835C();
      v115 = os_log_type_enabled(v113, v114);
      v116 = *(v0 + 808);
      if (v115)
      {
        v117 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v136[0] = v118;
        *v117 = 136315394;
        *(v117 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v136);
        *(v117 + 12) = 2080;
        v119 = StaticService.description.getter();
        v121 = v120;
        sub_1D1DDBD8C(v116, type metadata accessor for StaticService);
        v122 = sub_1D1B1312C(v119, v121, v136);

        *(v117 + 14) = v122;
        _os_log_impl(&dword_1D16EC000, v113, v114, "%s - service found: %s", v117, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v118, -1, -1);
        MEMORY[0x1D3893640](v117, -1, -1);
      }

      else
      {

        sub_1D1DDBD8C(v116, type metadata accessor for StaticService);
      }

      *(v0 + 600) = 1030;
      *(v0 + 512) = v131;
      *(v0 + 520) = v132;
      *(v0 + 528) = v130;
      *(v0 + 536) = v134;
      v129 = swift_task_alloc();
      *(v0 + 992) = v129;
      *v129 = v0;
      v129[1] = sub_1D1DDA920;
      v102 = *(v0 + 760);
      v103 = (v0 + 600);
      v104 = (v0 + 512);
    }

    else
    {
      sub_1D1DDBD24(*(v0 + 776), *(v0 + 832), type metadata accessor for StaticService);
      *(v0 + 608) = 1030;
      *(v0 + 544) = v131;
      *(v0 + 552) = v132;
      *(v0 + 560) = v130;
      *(v0 + 568) = v134;
      v101 = swift_task_alloc();
      *(v0 + 984) = v101;
      *v101 = v0;
      v101[1] = sub_1D1DDA6B4;
      v102 = *(v0 + 760);
      v103 = (v0 + 608);
      v104 = (v0 + 544);
    }

    goto LABEL_59;
  }

  v56 = *(v0 + 736);
  v57 = *(v0 + 728);
  v58 = *(v0 + 720);
  sub_1D1741A30(*(v0 + 840), &qword_1EC6436C8, &unk_1D1E97C40);
  sub_1D17419CC((v54 + 2), v0 + 256);
  v59 = swift_dynamicCast();
  (*(v56 + 56))(v58, v59 ^ 1u, 1, v57);
  if ((*(v56 + 48))(v58, 1, v57) != 1)
  {
    sub_1D1DDBD24(*(v0 + 720), *(v0 + 744), type metadata accessor for StaticActionSet);
    v95 = sub_1D1E6707C();
    v96 = sub_1D1E6835C();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v136[0] = v98;
      *v97 = 136315138;
      *(v97 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v136);
      _os_log_impl(&dword_1D16EC000, v95, v96, "%s - is actionSet", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v98);
      MEMORY[0x1D3893640](v98, -1, -1);
      MEMORY[0x1D3893640](v97, -1, -1);
    }

    *(v0 + 480) = v131;
    *(v0 + 488) = v132;
    *(v0 + 496) = v130;
    *(v0 + 504) = v134;
    *(v0 + 592) = 1028;
    v99 = swift_task_alloc();
    *(v0 + 1000) = v99;
    *v99 = v0;
    v99[1] = sub_1D1DDAB8C;
    v100 = *(v0 + 752);

    return StaticActionSet.toggle(options:context:)(v100, (v0 + 592), (v0 + 480));
  }

  v60 = *(v0 + 792);
  v61 = *(v0 + 784);
  v62 = *(v0 + 768);
  sub_1D1741A30(*(v0 + 720), &qword_1EC643718, &qword_1D1E71E70);
  sub_1D17419CC((v54 + 2), v0 + 296);
  v63 = swift_dynamicCast();
  (*(v60 + 56))(v62, v63 ^ 1u, 1, v61);
  if ((*(v60 + 48))(v62, 1, v61) != 1)
  {
    sub_1D1DDBD24(*(v0 + 768), *(v0 + 800), type metadata accessor for StaticService);
    v105 = sub_1D1E6707C();
    v106 = sub_1D1E6835C();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v136[0] = v108;
      *v107 = 136315138;
      *(v107 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v136);
      _os_log_impl(&dword_1D16EC000, v105, v106, "%s - is service", v107, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v108);
      MEMORY[0x1D3893640](v108, -1, -1);
      MEMORY[0x1D3893640](v107, -1, -1);
    }

    *(v0 + 584) = 1030;
    *(v0 + 448) = v131;
    *(v0 + 456) = v132;
    *(v0 + 464) = v130;
    *(v0 + 472) = v134;
    v109 = swift_task_alloc();
    *(v0 + 1016) = v109;
    *v109 = v0;
    v109[1] = sub_1D1DDADC4;
    v102 = *(v0 + 760);
    v103 = (v0 + 584);
    v104 = (v0 + 448);
LABEL_59:

    return StaticService.toggle(options:context:)(v102, v103, v104);
  }

  v64 = *(v0 + 704);
  v65 = *(v0 + 696);
  v66 = *(v0 + 688);
  sub_1D1741A30(*(v0 + 768), &qword_1EC6436F0, &qword_1D1E99BC0);
  sub_1D17419CC((v54 + 2), v0 + 336);
  v67 = swift_dynamicCast();
  (*(v64 + 56))(v66, v67 ^ 1u, 1, v65);
  if ((*(v64 + 48))(v66, 1, v65) == 1)
  {
    v68 = *(v0 + 688);

    sub_1D1741A30(v68, &qword_1EC64CC40, &unk_1D1EAADA0);
    v69 = sub_1D1E6707C();
    v70 = sub_1D1E6835C();
    v71 = os_log_type_enabled(v69, v70);
    v72 = *(v0 + 896);
    if (v71)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v136[0] = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v136);
      _os_log_impl(&dword_1D16EC000, v69, v70, "%s - is unknown", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      MEMORY[0x1D3893640](v74, -1, -1);
      MEMORY[0x1D3893640](v73, -1, -1);
    }

    else
    {
    }

LABEL_40:
    sub_1D1DDBD8C(v72, type metadata accessor for StateSnapshot);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v135 = 0;
    goto LABEL_26;
  }

  sub_1D1DDBD24(*(v0 + 688), *(v0 + 712), type metadata accessor for StaticServiceGroup);
  v123 = sub_1D1E6707C();
  v124 = sub_1D1E6835C();
  if (os_log_type_enabled(v123, v124))
  {
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v136[0] = v126;
    *v125 = 136315138;
    *(v125 + 4) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC9F20, v136);
    _os_log_impl(&dword_1D16EC000, v123, v124, "%s - is serviceGroup", v125, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v126);
    MEMORY[0x1D3893640](v126, -1, -1);
    MEMORY[0x1D3893640](v125, -1, -1);
  }

  *(v0 + 576) = 1030;
  *(v0 + 416) = v131;
  *(v0 + 424) = v132;
  *(v0 + 432) = v130;
  *(v0 + 440) = v134;
  v127 = swift_task_alloc();
  *(v0 + 1024) = v127;
  *v127 = v0;
  v127[1] = sub_1D1DDB010;
  v128 = *(v0 + 760);

  return StaticServiceGroup.toggle(options:context:)(v128, (v0 + 576), (v0 + 416));
}

uint64_t sub_1D1DDA6B4()
{
  v1 = *v0;
  v2 = *(*v0 + 904);
  v3 = *(*v0 + 760);

  sub_1D1DDBCDC(*(v1 + 544), *(v1 + 552));
  sub_1D1741A30(v3, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D1DDA850, v2, 0);
}

uint64_t sub_1D1DDA850()
{
  v1 = v0[108];
  sub_1D1DDBD8C(v0[104], type metadata accessor for StaticService);
  sub_1D1DDBD8C(v1, type metadata accessor for StaticAccessory);
  v2 = swift_task_alloc();
  v0[129] = v2;
  *v2 = v0;
  v2[1] = sub_1D1DDB25C;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DDA920()
{
  v1 = *v0;
  v2 = *(*v0 + 904);
  v3 = *(*v0 + 760);

  sub_1D1DDBCDC(*(v1 + 512), *(v1 + 520));
  sub_1D1741A30(v3, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D1DDAABC, v2, 0);
}

uint64_t sub_1D1DDAABC()
{
  v1 = v0[108];
  sub_1D1DDBD8C(v0[103], type metadata accessor for StaticService);
  sub_1D1DDBD8C(v1, type metadata accessor for StaticAccessory);
  v2 = swift_task_alloc();
  v0[129] = v2;
  *v2 = v0;
  v2[1] = sub_1D1DDB25C;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DDAB8C()
{
  v2 = *v1;
  v2[126] = v0;

  sub_1D1DDBCDC(v2[60], v2[61]);
  if (v0)
  {
    v3 = v2[113];
    v4 = sub_1D1DDB94C;
  }

  else
  {
    v5 = v2[113];
    sub_1D1741A30(v2[94], &unk_1EC649E30, &unk_1D1E91250);
    v4 = sub_1D1DDAD14;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1DDAD14()
{
  sub_1D1DDBD8C(*(v0 + 744), type metadata accessor for StaticActionSet);
  v1 = swift_task_alloc();
  *(v0 + 1032) = v1;
  *v1 = v0;
  v1[1] = sub_1D1DDB25C;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DDADC4()
{
  v1 = *v0;
  v2 = *(*v0 + 904);
  v3 = *(*v0 + 760);

  sub_1D1DDBCDC(*(v1 + 448), *(v1 + 456));
  sub_1D1741A30(v3, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D1DDAF60, v2, 0);
}

uint64_t sub_1D1DDAF60()
{
  sub_1D1DDBD8C(*(v0 + 800), type metadata accessor for StaticService);
  v1 = swift_task_alloc();
  *(v0 + 1032) = v1;
  *v1 = v0;
  v1[1] = sub_1D1DDB25C;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DDB010()
{
  v1 = *v0;
  v2 = *(*v0 + 904);
  v3 = *(*v0 + 760);

  sub_1D1DDBCDC(*(v1 + 416), *(v1 + 424));
  sub_1D1741A30(v3, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D1DDB1AC, v2, 0);
}

uint64_t sub_1D1DDB1AC()
{
  sub_1D1DDBD8C(*(v0 + 712), type metadata accessor for StaticServiceGroup);
  v1 = swift_task_alloc();
  *(v0 + 1032) = v1;
  *v1 = v0;
  v1[1] = sub_1D1DDB25C;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DDB25C(uint64_t a1)
{
  v2 = *(*v1 + 904);
  *(*v1 + 1040) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1DDB374, v2, 0);
}

uint64_t sub_1D1DDB374()
{
  v1 = *(v0 + 944);
  v2 = *(v0 + 872);
  v3 = *(v0 + 664);
  (*(v0 + 928))(v2, *(v0 + 624), v3);
  v1(v2, 0, 1, v3);
  v4 = swift_task_alloc();
  *(v0 + 1048) = v4;
  *v4 = v0;
  v4[1] = sub_1D1DDB464;
  v5 = *(v0 + 888);
  v6 = *(v0 + 872);
  v7 = *(v0 + 648);
  v8 = *(v0 + 640);
  v9 = *(v0 + 616);

  return sub_1D1DD7FC4(v5, v9, v6, 0, v8, v7);
}

uint64_t sub_1D1DDB464()
{
  v2 = *v1;
  v2[132] = v0;

  v3 = v2[113];
  if (v0)
  {
    sub_1D1741A30(v2[109], &qword_1EC642590, qword_1D1E71260);

    v4 = sub_1D1DDBB24;
  }

  else
  {
    v5 = v2[111];
    v6 = v2[109];

    sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
    sub_1D1DDBD8C(v5, type metadata accessor for StateSnapshot);
    v4 = sub_1D1DDB614;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1DDB614()
{
  v1 = v0[112];

  sub_1D1DDBD8C(v1, type metadata accessor for StateSnapshot);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2(1);
}

uint64_t sub_1D1DDB7C4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1D1DDB94C()
{
  v1 = v0[112];
  v2 = v0[93];

  sub_1D1DDBD8C(v2, type metadata accessor for StaticActionSet);
  sub_1D1DDBD8C(v1, type metadata accessor for StateSnapshot);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_1D1DDBB24()
{
  v1 = v0[112];

  sub_1D1DDBD8C(v1, type metadata accessor for StateSnapshot);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2(0);
}

uint64_t sub_1D1DDBCDC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1D1DDBD24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1DDBD8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D1DDBE2C()
{
  result = [objc_allocWithZone(type metadata accessor for AccessoryControlTransitionModel(0)) init];
  qword_1EC64FED0 = result;
  return result;
}

id AccessoryControlTransitionModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static AccessoryControlTransitionModel.shared.getter()
{
  if (qword_1EC6424D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64FED0;

  return v1;
}

uint64_t sub_1D1DDBEFC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1D1741C08(a1, &v14 - v9, &qword_1EC6436F0, &qword_1D1E99BC0);
  v11 = *a2;
  v12 = *a5;
  swift_beginAccess();
  sub_1D1DDC1AC(v10, v11 + v12);
  return swift_endAccess();
}

uint64_t sub_1D1DDBFE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1D1741C08(v2 + v4, a2, &qword_1EC6436F0, &qword_1D1E99BC0);
}

uint64_t sub_1D1DDC044(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  sub_1D18DC660(a1, &v13 - v6);
  v8 = type metadata accessor for StaticService(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_oldAccessoryControlsBearer;
  swift_beginAccess();
  sub_1D1DDC1AC(v7, v2 + v10);
  swift_endAccess();
  sub_1D18DC660(a2, v7);
  v9(v7, 0, 1, v8);
  v11 = OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_newAccessoryControlsBearer;
  swift_beginAccess();
  sub_1D1DDC1AC(v7, v2 + v11);
  return swift_endAccess();
}

uint64_t sub_1D1DDC1AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1DDC21C(uint64_t a1)
{
  v95 = a1;
  v2 = sub_1D1E66A7C();
  v92 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v75 = &v71[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v4 = MEMORY[0x1EEE9AC00](v94);
  v89 = &v71[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v71[-v6];
  v8 = type metadata accessor for StaticService(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v71[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v71[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v77 = &v71[-v16];
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v71[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v76 = &v71[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v91 = &v71[-v23];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v88 = &v71[-v25];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v74 = &v71[-v27];
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v71[-v29];
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v71[-v31];
  v33 = OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_oldAccessoryControlsBearer;
  swift_beginAccess();
  v90 = v1;
  v73 = v33;
  sub_1D1741C08(v1 + v33, v18, &qword_1EC6436F0, &qword_1D1E99BC0);
  v78 = v9;
  v34 = *(v9 + 48);
  v93 = v8;
  v82 = v9 + 48;
  v81 = v34;
  v35 = v34(v18, 1, v8);
  v87 = v11;
  if (v35)
  {
    sub_1D1741A30(v18, &qword_1EC6436F0, &qword_1D1E99BC0);
    v36 = v92;
    v37 = *(v92 + 56);
    v38 = (v92 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v37(v32, 1, 1, v2);
    v39 = *(v36 + 16);
    v40 = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    sub_1D18DC660(v18, v11);
    sub_1D1741A30(v18, &qword_1EC6436F0, &qword_1D1E99BC0);
    v36 = v92;
    v39 = *(v92 + 16);
    v40 = (v92 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v39(v32, v11, v2);
    sub_1D1797870(v11);
    v37 = *(v36 + 56);
    v38 = (v36 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v37(v32, 0, 1, v2);
  }

  v83 = v39;
  v79 = v40;
  v39(v30, v95, v2);
  v85 = v37;
  v37(v30, 0, 1, v2);
  v41 = *(v94 + 48);
  sub_1D1741C08(v32, v7, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v30, &v7[v41], &qword_1EC642590, qword_1D1E71260);
  v42 = *(v36 + 48);
  v43 = v42(v7, 1, v2);
  v84 = v38;
  v80 = v42;
  if (v43 != 1)
  {
    v48 = v74;
    sub_1D1741C08(v7, v74, &qword_1EC642590, qword_1D1E71260);
    if (v42(&v7[v41], 1, v2) != 1)
    {
      v49 = v75;
      (*(v36 + 32))(v75, &v7[v41], v2);
      sub_1D1797998();
      v50 = v36;
      v72 = sub_1D1E6775C();
      v51 = v48;
      v52 = *(v50 + 8);
      v52(v49, v2);
      sub_1D1741A30(v30, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v32, &qword_1EC642590, qword_1D1E71260);
      v52(v51, v2);
      sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
      v44 = v90;
      v45 = v87;
      v46 = v88;
      v47 = v86;
      if ((v72 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    sub_1D1741A30(v30, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v32, &qword_1EC642590, qword_1D1E71260);
    (*(v36 + 8))(v48, v2);
LABEL_9:
    sub_1D1741A30(v7, &qword_1EC642980, &unk_1D1E6E6E0);
    v44 = v90;
    v45 = v87;
    v46 = v88;
    v47 = v86;
    goto LABEL_12;
  }

  sub_1D1741A30(v30, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v32, &qword_1EC642590, qword_1D1E71260);
  if (v42(&v7[v41], 1, v2) != 1)
  {
    goto LABEL_9;
  }

  sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
  v44 = v90;
  v45 = v87;
  v46 = v88;
  v47 = v86;
LABEL_11:
  v53 = v77;
  (*(v78 + 56))(v77, 1, 1, v93);
  v54 = v73;
  swift_beginAccess();
  sub_1D1DDC1AC(v53, v44 + v54);
  swift_endAccess();
LABEL_12:
  v55 = OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_newAccessoryControlsBearer;
  swift_beginAccess();
  sub_1D1741C08(v44 + v55, v47, &qword_1EC6436F0, &qword_1D1E99BC0);
  v56 = v81(v47, 1, v93);
  v57 = v91;
  if (v56)
  {
    sub_1D1741A30(v47, &qword_1EC6436F0, &qword_1D1E99BC0);
    v58 = 1;
    v59 = v83;
  }

  else
  {
    sub_1D18DC660(v47, v45);
    sub_1D1741A30(v47, &qword_1EC6436F0, &qword_1D1E99BC0);
    v59 = v83;
    v83(v46, v45, v2);
    sub_1D1797870(v45);
    v58 = 0;
  }

  v60 = v85;
  v85(v46, v58, 1, v2);
  v59(v57, v95, v2);
  v60(v57, 0, 1, v2);
  v61 = *(v94 + 48);
  v62 = v89;
  sub_1D1741C08(v46, v89, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v57, &v62[v61], &qword_1EC642590, qword_1D1E71260);
  v63 = v80;
  if (v80(v62, 1, v2) != 1)
  {
    v64 = v76;
    sub_1D1741C08(v62, v76, &qword_1EC642590, qword_1D1E71260);
    if (v63(&v62[v61], 1, v2) != 1)
    {
      v66 = v92;
      v67 = v75;
      (*(v92 + 32))(v75, &v62[v61], v2);
      sub_1D1797998();
      v68 = sub_1D1E6775C();
      v69 = *(v66 + 8);
      v69(v67, v2);
      sub_1D1741A30(v91, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v46, &qword_1EC642590, qword_1D1E71260);
      v69(v76, v2);
      result = sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
      if ((v68 & 1) == 0)
      {
        return result;
      }

      goto LABEL_22;
    }

    sub_1D1741A30(v91, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v46, &qword_1EC642590, qword_1D1E71260);
    (*(v92 + 8))(v64, v2);
    return sub_1D1741A30(v62, &qword_1EC642980, &unk_1D1E6E6E0);
  }

  v95 = v55;
  sub_1D1741A30(v57, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v46, &qword_1EC642590, qword_1D1E71260);
  if (v63(&v62[v61], 1, v2) != 1)
  {
    return sub_1D1741A30(v62, &qword_1EC642980, &unk_1D1E6E6E0);
  }

  sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
  v55 = v95;
LABEL_22:
  v70 = v77;
  (*(v78 + 56))(v77, 1, 1, v93);
  swift_beginAccess();
  sub_1D1DDC1AC(v70, v44 + v55);
  return swift_endAccess();
}

id AccessoryControlTransitionModel.init()()
{
  v1 = OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_oldAccessoryControlsBearer;
  v2 = type metadata accessor for StaticService(0);
  v3 = *(*(v2 - 8) + 56);
  v3(&v0[v1], 1, 1, v2);
  v3(&v0[OBJC_IVAR____TtC13HomeDataModel31AccessoryControlTransitionModel_newAccessoryControlsBearer], 1, 1, v2);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AccessoryControlTransitionModel(0);
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t type metadata accessor for AccessoryControlTransitionModel(uint64_t a1)
{
  result = qword_1EC64FED8;
  if (!qword_1EC64FED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id AccessoryControlTransitionModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryControlTransitionModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_1D1741C08(v4 + v5, a3, &qword_1EC6436F0, &qword_1D1E99BC0);
}

void sub_1D1DDD090(uint64_t a1)
{
  sub_1D1DDD208(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D1DDD208(uint64_t a1)
{
  if (!qword_1EC64FEE8)
  {
    type metadata accessor for StaticService(255);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC64FEE8);
    }
  }
}