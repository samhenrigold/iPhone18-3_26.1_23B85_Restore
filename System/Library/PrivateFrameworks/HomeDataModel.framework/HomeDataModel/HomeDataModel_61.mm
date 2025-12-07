uint64_t StaticServiceGroup.hasDetailAttentionMessages.getter()
{
  v27 = type metadata accessor for StaticHH2Update(0);
  MEMORY[0x1EEE9AC00](v27);
  v1 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for StaticSoftwareUpdate(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticService(0);
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = StaticServiceGroup.sortedStaticServices.getter();
  v14 = result;
  v31 = *(result + 16);
  if (!v31)
  {
LABEL_22:

    return 0;
  }

  v15 = 0;
  v26 = v1 + 8;
  v32 = (v7 + 48);
  v28 = v9;
  v29 = result;
  while (v15 < *(v14 + 16))
  {
    sub_1D1C53710(v14 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v15, v12, type metadata accessor for StaticService);
    sub_1D1741C08(&v12[*(v10 + 136)], v5, &qword_1EC644760, &unk_1D1E9E530);
    if ((*v32)(v5, 1, v6) == 1)
    {
      sub_1D1741A30(v5, &qword_1EC644760, &unk_1D1E9E530);
      goto LABEL_18;
    }

    sub_1D1C5381C(v5, v9, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1C53710(&v9[*(v6 + 20)], v33, type metadata accessor for StaticSoftwareUpdate.Kind);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_29;
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      sub_1D1C5381C(v33, v1, type metadata accessor for StaticHH2Update);
      if (!*&v26[*(v27 + 24)])
      {
        sub_1D1C53778(v1, type metadata accessor for StaticHH2Update);
        sub_1D1C53778(v9, type metadata accessor for StaticSoftwareUpdate);
        v14 = v29;
        goto LABEL_18;
      }

      v17 = v1[*(v27 + 20)];
      v18 = type metadata accessor for StaticHH2Update;
      v19 = v1;
      goto LABEL_13;
    }

    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48);
    v19 = v33;
    v17 = *(v33 + v20);
    v18 = type metadata accessor for StaticSoftwareUpdateMetadata;
LABEL_13:
    sub_1D1C53778(v19, v18);
    if (v17 > 4)
    {
      v14 = v29;
      if (v17 != 7)
      {
        if (v17 != 5)
        {
          if (v17 == 6)
          {
            v22 = "InstallingDescription";
            v23 = 0xD000000000000019;
LABEL_31:
            v24 = v28;
            static String.hfLocalized(_:)(v23, v22 | 0x8000000000000000);
            sub_1D1C53778(v24, type metadata accessor for StaticSoftwareUpdate);
            goto LABEL_32;
          }

LABEL_30:
          v22 = "StateDescriptionUpdateAvailable";
          v23 = 0xD000000000000025;
          goto LABEL_31;
        }

LABEL_29:
        static String.hfLocalized(_:)(0xD00000000000002FLL, 0x80000001D1EC7920);
        sub_1D1C53778(v28, type metadata accessor for StaticSoftwareUpdate);
        goto LABEL_32;
      }
    }

    else
    {
      v14 = v29;
      if (v17 != 2)
      {
        if (v17 != 3)
        {
          if (v17 == 4)
          {
            v22 = "HFSoftwareUpdateRequested";
            v23 = 0xD000000000000026;
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    v9 = v28;
    sub_1D1C53778(v28, type metadata accessor for StaticSoftwareUpdate);
LABEL_18:
    v21 = v12[*(v10 + 40)];
    if (v21 != 2 && (v21 & 1) != 0)
    {
      static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC63C0);
LABEL_32:
      sub_1D1C53778(v12, type metadata accessor for StaticService);

      return 1;
    }

    ++v15;
    result = sub_1D1C53778(v12, type metadata accessor for StaticService);
    if (v31 == v15)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

uint64_t StaticServiceGroup.statusIcon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = StaticServiceGroup.sortedStaticServices.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v28 = a1;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D178D47C(0, v7, 0);
    v8 = v30;
    v9 = *(v3 + 80);
    v27 = v6;
    v10 = v6 + ((v9 + 32) & ~v9);
    v29 = *(v3 + 72);
    do
    {
      sub_1D1C53710(v10, v5, type metadata accessor for StaticService);
      v11 = v5[v2[28]];
      if (v11 == 53)
      {
        v11 = v5[v2[26]];
      }

      v12 = v5[v2[27]];
      v13 = &v5[v2[25]];
      v14 = v13[1];
      if (v14)
      {
        v15 = *v13;

        v16._countAndFlagsBits = v15;
        v16._object = v14;
        IconSymbol.init(rawValue:)(v16);
        v17 = v34;
      }

      else
      {
        v17 = 92;
      }

      sub_1D1C53778(v5, type metadata accessor for StaticService);
      v30 = v8;
      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D178D47C((v18 > 1), v19 + 1, 1);
        v8 = v30;
      }

      *(v8 + 16) = v19 + 1;
      v20 = v8 + 32 * v19;
      *(v20 + 32) = v11 | (v12 << 8);
      *(v20 + 40) = 0;
      *(v20 + 41) = v17;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      v10 += v29;
      --v7;
    }

    while (v7);

    a1 = v28;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1D1C4715C(v8, &v30);

  v22 = v33;
  if (v33 == 1)
  {
    v23 = 0;
    v24 = 0;
    v22 = 0;
    LOBYTE(v25) = 92;
    v26 = 0x80;
  }

  else
  {
    v26 = v31;
    v24 = v32;
    v23 = v30;
    v25 = v31 >> 8;
  }

  *a1 = v23;
  *(a1 + 8) = v26;
  *(a1 + 9) = v25;
  *(a1 + 16) = v24;
  *(a1 + 24) = v22;
  return result;
}

uint64_t StaticServiceGroup.tileStatusStringIconSymbolSuffix.getter()
{
  v0 = type metadata accessor for StaticService(0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  result = StaticServiceGroup.sortedStaticServices.getter();
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    while (v10 < *(v8 + 16))
    {
      sub_1D1C53710(v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10, v4, type metadata accessor for StaticService);
      StaticService.tileStatusStringIconSymbolSuffix.getter();
      if (v11)
      {

        sub_1D1C5381C(v4, v6, type metadata accessor for StaticService);
        v12 = StaticService.tileStatusStringIconSymbolSuffix.getter();
        sub_1D1C53778(v6, type metadata accessor for StaticService);
        return v12;
      }

      ++v10;
      result = sub_1D1C53778(v4, type metadata accessor for StaticService);
      if (v9 == v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

uint64_t StaticServiceGroup.roomId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v11 = qword_1EE07DC60;
  swift_getKeyPath();
  v18[1] = v11;
  sub_1D1C53A0C(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v12 = v11 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  v13 = *(type metadata accessor for StateSnapshot(0) + 20);
  v14 = type metadata accessor for StaticHome(0);
  (*(v8 + 16))(v10, v12 + v13 + *(v14 + 28), v7);
  v15 = type metadata accessor for StaticServiceGroup(0);
  sub_1D17721A0(*(v2 + *(v15 + 36)), v6);
  v16 = *(v8 + 48);
  if (v16(v6, 1, v7) == 1)
  {
    (*(v8 + 32))(a1, v10, v7);
    result = v16(v6, 1, v7);
    if (result != 1)
    {
      return sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    return (*(v8 + 32))(a1, v6, v7);
  }

  return result;
}

uint64_t sub_1D1C4C990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a2;
  v5 = *(type metadata accessor for StaticService(0) - 8);
  v4[12] = v5;
  v4[13] = *(v5 + 64);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v4[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1C4CAD8, 0, 0);
}

void sub_1D1C4CAD8()
{
  v1 = *(v0 + 104);
  v34 = *(v0 + 96);
  v35 = *(v0 + 136);
  v2 = *(v0 + 80);
  v3 = *(v2 + *(type metadata accessor for StaticServiceGroup(0) + 56));
  v4 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);
  v8 = (63 - v6) >> 6;
  v31 = v1 + 7;
  v36 = v3;

  v9 = 0;
  v32 = v8;
  v33 = v4;
  while (v7)
  {
LABEL_10:
    v13 = *(v0 + 144);
    v14 = *(v0 + 128);
    v38 = *(v0 + 120);
    v39 = *(v0 + 112);
    v37 = *(v0 + 88);
    v15 = __clz(__rbit64(v7)) | (v9 << 6);
    v16 = *(v36 + 48);
    v17 = sub_1D1E66A7C();
    (*(*(v17 - 8) + 16))(v13, v16 + *(*(v17 - 8) + 72) * v15, v17);
    v18 = *(v35 + 48);
    sub_1D1C53710(*(v36 + 56) + *(v34 + 72) * v15, v13 + v18, type metadata accessor for StaticService);
    v19 = sub_1D1E67E7C();
    v20 = *(v19 - 8);
    (*(v20 + 56))(v14, 1, 1, v19);
    sub_1D1C53710(v13 + v18, v39, type metadata accessor for StaticService);
    v21 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    sub_1D1C5381C(v39, v22 + v21, type metadata accessor for StaticService);
    *(v22 + ((v31 + v21) & 0xFFFFFFFFFFFFFFF8)) = v37;
    sub_1D1741C08(v14, v38, &unk_1EC6442C0, &qword_1D1E741A0);
    LODWORD(v14) = (*(v20 + 48))(v38, 1, v19);
    v23 = v37;
    v24 = *(v0 + 120);
    if (v14 == 1)
    {
      sub_1D1741A30(*(v0 + 120), &unk_1EC6442C0, &qword_1D1E741A0);
    }

    else
    {
      sub_1D1E67E6C();
      (*(v20 + 8))(v24, v19);
    }

    v8 = v32;
    if (*(v22 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v25 = sub_1D1E67D4C();
      v27 = v26;
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v28 = **(v0 + 72);
    v29 = v27 | v25;
    if (v27 | v25)
    {
      v29 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v25;
      *(v0 + 40) = v27;
    }

    v7 &= v7 - 1;
    v10 = *(v0 + 144);
    v11 = *(v0 + 128);
    *(v0 + 48) = 1;
    *(v0 + 56) = v29;
    *(v0 + 64) = v28;
    swift_task_create();

    sub_1D1741A30(v11, &unk_1EC6442C0, &qword_1D1E741A0);
    sub_1D1741A30(v10, &qword_1EC642DB0, &unk_1D1E6F360);
    v4 = v33;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_10;
    }
  }

  v30 = *(v0 + 8);

  v30();
}

uint64_t sub_1D1C4CF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1D17C4BFC;

  return StaticService.set(room:)(a5);
}

uint64_t sub_1D1C4CFD8(void *a1, unsigned __int8 *a2, void *a3)
{
  v26 = a3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437B8, &unk_1D1E7E730);
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v22 - v7;
  v23 = *a2;
  v25 = a1;
  v9 = [a1 serviceGroups];
  sub_1D1741B10(0, &qword_1EE079CE0, 0x1E696CC48);
  v10 = sub_1D1E67C1C();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_14:

    v13 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A88, &qword_1D1E6E7D8);
      v20 = sub_1D1E68BCC();
LABEL_16:
      v28 = v20;
      sub_1D1C52974(v13, 1, &v28);

      return v28;
    }

LABEL_15:
    v20 = MEMORY[0x1E69E7CC8];
    goto LABEL_16;
  }

  v11 = sub_1D1E6873C();
  if (!v11)
  {
    goto LABEL_14;
  }

LABEL_3:
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D178D154(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v28;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1D3891EF0](v12, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = *(v24 + 48);
      v17 = [v14 uniqueIdentifier];
      sub_1D1E66A5C();

      v27 = v23;
      sub_1D1C4D2D8(v25, &v27, v15, v26, &v8[v16]);

      v28 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D178D154((v18 > 1), v19 + 1, 1);
        v13 = v28;
      }

      ++v12;
      *(v13 + 16) = v19 + 1;
      sub_1D1741A90(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, &qword_1EC6437B8, &unk_1D1E7E730);
    }

    while (v11 != v12);

    if (*(v13 + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1C4D2D8@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v166 = a1;
  v170 = a5;
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v168 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v173 = &v165 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v174 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v172 = &v165 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v165 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v194 = *(v20 - 8);
  v195 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v167 = &v165 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v165 - v23;
  v25 = type metadata accessor for StaticService(0);
  v196 = *(v25 - 8);
  v197 = v25;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v171 = &v165 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v191 = &v165 - v28;
  v199 = sub_1D1E66A7C();
  v179 = *(v199 - 8);
  v29 = MEMORY[0x1EEE9AC00](v199);
  v175 = &v165 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v33 = &v165 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v190 = (&v165 - v35);
  v36 = MEMORY[0x1EEE9AC00](v34);
  v189 = (&v165 - v37);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v188 = (&v165 - v39);
  MEMORY[0x1EEE9AC00](v38);
  v187 = &v165 - v40;
  v169 = *a2;
  v181 = a3;
  v41 = [a3 services];
  v180 = sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v42 = sub_1D1E67C1C();

  v200[0] = MEMORY[0x1E69E7CD0];
  if (v42 >> 62)
  {
    goto LABEL_102;
  }

  for (i = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v177 = v19;
    v178 = v8;
    v176 = v9;
    v198 = v33;
    if (i)
    {
      v44 = 0;
      v19 = v42 & 0xC000000000000001;
      v9 = v42 & 0xFFFFFFFFFFFFFF8;
      v183 = (v179 + 16);
      v184 = (v179 + 32);
      v182 = (v179 + 8);
      v192 = v24;
      v193 = a4;
      v185 = v42 & 0xFFFFFFFFFFFFFF8;
      v186 = v42 & 0xC000000000000001;
      while (1)
      {
        if (v19)
        {
          v46 = MEMORY[0x1D3891EF0](v44, v42);
        }

        else
        {
          if (v44 >= *(v9 + 16))
          {
            goto LABEL_95;
          }

          v46 = *(v42 + 8 * v44 + 32);
        }

        v8 = v46;
        v24 = (v44 + 1);
        if (__OFADD__(v44, 1))
        {
          break;
        }

        v47 = [v46 accessory];
        if (v47 && (v48 = v47, v49 = [v47 room], v48, v49))
        {
          v50 = [v49 uniqueIdentifier];

          v51 = v188;
          sub_1D1E66A5C();

          v33 = v187;
          v52 = v199;
          (*v184)(v187, v51, v199);
          v53 = i;
          v54 = v42;
          v55 = v190;
          (*v183)(v190, v33, v52);
          v56 = v189;
          v57 = v55;
          v42 = v54;
          i = v53;
          v19 = v186;
          sub_1D1762CB8(v189, v57);

          v8 = v182;
          v58 = *v182;
          v59 = v56;
          v9 = v185;
          (*v182)(v59, v52);
          v58(v33, v52);
        }

        else
        {
        }

        ++v44;
        v45 = v24 == i;
        v24 = v192;
        a4 = v193;
        if (v45)
        {
          v60 = v200[0];
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v60 = MEMORY[0x1E69E7CD0];
LABEL_17:
    v187 = v60;

    v19 = [v181 services];
    v61 = sub_1D1E67C1C();

    v62 = v61 >> 62 ? sub_1D1E6873C() : *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = MEMORY[0x1E69E7CC0];
    if (!v62)
    {
      break;
    }

    v9 = 0;
    v192 = v61 & 0xFFFFFFFFFFFFFF8;
    v193 = (v61 & 0xC000000000000001);
    v189 = (v196 + 56);
    v190 = (v179 + 8);
    v188 = (v196 + 48);
    while (1)
    {
      if (v193)
      {
        v63 = MEMORY[0x1D3891EF0](v9, v61);
      }

      else
      {
        if (v9 >= *(v192 + 16))
        {
          goto LABEL_97;
        }

        v63 = *(v61 + 8 * v9 + 32);
      }

      v33 = v63;
      v42 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v64 = [v63 uniqueIdentifier];
      sub_1D1E66A5C();

      if (a4[2] && (v65 = sub_1D1742188(), (v66 & 1) != 0))
      {
        sub_1D1C53710(a4[7] + *(v196 + 72) * v65, v24, type metadata accessor for StaticService);
        v67 = 0;
      }

      else
      {
        v67 = 1;
      }

      (*v190)(v198, v199);
      v68 = v67;
      v19 = v197;
      (*v189)(v24, v68, 1, v197);
      if ((*v188)(v24, 1, v19) == 1)
      {
        sub_1D1741A30(v24, &qword_1EC6436F0, &qword_1D1E99BC0);
      }

      else
      {
        sub_1D1C5381C(v24, v191, type metadata accessor for StaticService);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D177D048(0, *(v8 + 16) + 1, 1, v8);
        }

        v19 = *(v8 + 16);
        v69 = *(v8 + 24);
        v33 = v19 + 1;
        if (v19 >= v69 >> 1)
        {
          v8 = sub_1D177D048((v69 > 1), v19 + 1, 1, v8);
        }

        *(v8 + 16) = v33;
        sub_1D1C5381C(v191, v8 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v19, type metadata accessor for StaticService);
      }

      ++v9;
      if (v42 == v62)
      {
        goto LABEL_38;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
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
    ;
  }

LABEL_38:

  v70 = *(v8 + 16);
  if (v70)
  {
    v200[0] = MEMORY[0x1E69E7CC0];
    sub_1D178D2D8(0, v70, 0);
    v71 = v200[0];
    v72 = v8 + ((*(v196 + 80) + 32) & ~*(v196 + 80));
    v73 = *(v196 + 72);
    v74 = (v179 + 16);
    v75 = v167;
    do
    {
      v76 = *(v195 + 12);
      sub_1D1C53710(v72, v75 + v76, type metadata accessor for StaticService);
      (*v74)(v75, v75 + v76, v199);
      v200[0] = v71;
      v33 = *(v71 + 16);
      v77 = *(v71 + 24);
      if (v33 >= v77 >> 1)
      {
        sub_1D178D2D8((v77 > 1), v33 + 1, 1);
        v71 = v200[0];
      }

      *(v71 + 16) = v33 + 1;
      sub_1D1741A90(v75, v71 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v33, &qword_1EC6436E8, &unk_1D1E71E40);
      v72 += v73;
      --v70;
    }

    while (v70);

    if (*(v71 + 16))
    {
LABEL_44:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
      v78 = sub_1D1E68BCC();
      goto LABEL_47;
    }
  }

  else
  {

    v71 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      goto LABEL_44;
    }
  }

  v78 = MEMORY[0x1E69E7CC8];
LABEL_47:
  v200[0] = v78;
  sub_1D1C52570(v71, 1, v200);

  v192 = v200[0];
  a4 = [v181 services];
  v19 = sub_1D1E67C1C();

  if (v19 >> 62)
  {
    v9 = sub_1D1E6873C();
  }

  else
  {
    v9 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v9)
  {
    v42 = 0;
    v24 = (v19 & 0xC000000000000001);
    v198 = v19 & 0xFFFFFFFFFFFFFF8;
    v195 = "aAccessoryShowInHomeDashboard";
    v189 = (v176 + 48);
    v190 = (v176 + 56);
    v188 = (v176 + 32);
    v193 = MEMORY[0x1E69E7CC0];
    v194 = v19;
    v191 = v9;
    while (1)
    {
      if (v24)
      {
        v79 = MEMORY[0x1D3891EF0](v42, v19);
      }

      else
      {
        if (v42 >= *(v198 + 16))
        {
          goto LABEL_99;
        }

        v79 = *(v19 + 8 * v42 + 32);
      }

      v80 = v79;
      v33 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_98;
      }

      v8 = [v79 applicationData];
      v81 = sub_1D1E677EC();
      a4 = [v8 objectForKeyedSubscript_];

      if (a4 && (v201 = a4, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), (swift_dynamicCast() & 1) != 0))
      {
        v82 = v24;
        v83 = v200[0];
        v8 = v200[1];
        a4 = sub_1D1741B10(0, &qword_1EC645B90, 0x1E696ACD0);
        sub_1D1741B10(0, &qword_1EC645B98, 0x1E695DF00);
        v84 = sub_1D1E6836C();
        v85 = v84;
        if (v84)
        {
          v86 = v172;
          a4 = v178;
          (*v190)(v172, 1, 1, v178);
          sub_1D1C53A0C(&qword_1EC645BA0, MEMORY[0x1E6969530], MEMORY[0x1E6969568]);
          sub_1D1E68C1C();

          sub_1D174E7C4(v83, v8);
          if ((*v189)(v86, 1, a4) != 1)
          {
            v8 = *v188;
            v87 = v168;
            (*v188)(v168, v86, a4);
            (v8)(v173, v87, a4);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v9 = v191;
            v24 = v82;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v193 = sub_1D177FCDC(0, v193[2] + 1, 1, v193);
            }

            v19 = v194;
            v90 = v193[2];
            v89 = v193[3];
            a4 = (v90 + 1);
            if (v90 >= v89 >> 1)
            {
              v193 = sub_1D177FCDC((v89 > 1), v90 + 1, 1, v193);
            }

            v91 = v193;
            v193[2] = a4;
            (v8)(v91 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v90, v173, v178);
            goto LABEL_52;
          }

          v9 = v191;
        }

        else
        {

          sub_1D174E7C4(v83, v8);
        }

        v24 = v82;
        v19 = v194;
      }

      else
      {
      }

LABEL_52:
      ++v42;
      if (v33 == v9)
      {
        goto LABEL_72;
      }
    }
  }

  v193 = MEMORY[0x1E69E7CC0];
LABEL_72:

  v200[0] = v193;

  sub_1D1C4FA84(v200);

  v92 = v178;
  v93 = v176;
  if (*(v200[0] + 16))
  {
    v94 = v177;
    (*(v176 + 16))(v177, v200[0] + ((*(v176 + 80) + 32) & ~*(v176 + 80)), v178);
    v95 = 0;
  }

  else
  {
    v95 = 1;
    v94 = v177;
  }

  v96 = *(v93 + 56);
  v9 = v93 + 56;
  v96(v94, v95, 1, v92);
  v97 = [v181 services];
  v19 = sub_1D1E67C1C();

  v200[0] = MEMORY[0x1E69E7CC0];
  v42 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    v98 = sub_1D1E6873C();
    if (v98)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v98 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v98)
    {
LABEL_77:
      v24 = 0;
      a4 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v8 = v24;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v99 = MEMORY[0x1D3891EF0](v8, v19);
            v24 = (v8 + 1);
            if (__OFADD__(v8, 1))
            {
              goto LABEL_100;
            }
          }

          else
          {
            if (v8 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_101;
            }

            v99 = *(v19 + 8 * v8 + 32);
            v24 = (v8 + 1);
            if (__OFADD__(v8, 1))
            {
              goto LABEL_100;
            }
          }

          v100 = v99;
          v101 = [v100 accessory];
          if (v101)
          {
            break;
          }

LABEL_80:
          ++v8;
          if (v24 == v98)
          {
            goto LABEL_107;
          }
        }

        v33 = v101;
        v9 = [v101 room];

        if (!v9)
        {
          goto LABEL_80;
        }

        MEMORY[0x1D3891220]();
        if (*((v200[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v200[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D1E67C5C();
        }

        sub_1D1E67CAC();
        a4 = v200[0];
        if (v24 == v98)
        {
          goto LABEL_107;
        }
      }
    }
  }

  a4 = MEMORY[0x1E69E7CC0];
LABEL_107:

  v102 = sub_1D17843BC(a4);

  v103 = sub_1D1772684(v102);
  if (v103)
  {
    v104 = v103;
    v105 = v171;
    if ((v102 & 0xC000000000000001) != 0)
    {
      v106 = sub_1D1E6873C();
    }

    else
    {
      v106 = *(v102 + 16);
    }

    if (v106 == 1)
    {
      v107 = [v104 name];
      v108 = sub_1D1E6781C();
      v194 = v109;
      v195 = v108;
    }

    else
    {

      v194 = 0;
      v195 = 0;
    }
  }

  else
  {

    v194 = 0;
    v195 = 0;
    v105 = v171;
  }

  v110 = v181;
  v111 = [v181 uniqueIdentifier];
  sub_1D1E66A5C();

  v112 = [v110 name];
  v193 = sub_1D1E6781C();
  v191 = v113;

  v115 = sub_1D1781D38(v114);
  v116 = v115;
  v117 = v115 + 56;
  v118 = 1 << *(v115 + 32);
  v119 = -1;
  if (v118 < 64)
  {
    v119 = ~(-1 << v118);
  }

  v120 = v119 & *(v115 + 56);
  v121 = (v118 + 63) >> 6;

  v122 = 0;
LABEL_118:
  if (v120)
  {
    v123 = v122;
    goto LABEL_124;
  }

  while (1)
  {
    v123 = v122 + 1;
    if (__OFADD__(v122, 1))
    {
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    if (v123 >= v121)
    {
      break;
    }

    v120 = *(v117 + 8 * v123);
    ++v122;
    if (v120)
    {
      v122 = v123;
LABEL_124:
      v124 = __clz(__rbit64(v120));
      v120 &= v120 - 1;
      sub_1D1C53710(*(v116 + 48) + *(v196 + 72) * (v124 | (v123 << 6)), v105, type metadata accessor for StaticService);
      v125 = *(v105 + *(v197 + 32));
      sub_1D1C53778(v105, type metadata accessor for StaticService);
      if ((v125 & 1) == 0)
      {
        LODWORD(v197) = 0;
        goto LABEL_127;
      }

      goto LABEL_118;
    }
  }

  LODWORD(v197) = 1;
LABEL_127:

  sub_1D1741C08(v177, v174, &qword_1EC642570, &qword_1D1E6C6A0);
  if (!*(v187 + 2))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v126 = v179;
    v127 = (*(v179 + 80) + 32) & ~*(v179 + 80);
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_1D1E739C0;
    v129 = [v166 roomForEntireHome];
    v130 = [v129 uniqueIdentifier];

    sub_1D1E66A5C();
    v187 = sub_1D179BE14(v128);
    swift_setDeallocating();
    (*(v126 + 8))(v128 + v127, v199);
    swift_deallocClassInstance();
  }

  v131 = [v181 services];
  v116 = sub_1D1E67C1C();

  if (!(v116 >> 62))
  {
    v132 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v132)
    {
      goto LABEL_131;
    }

LABEL_148:
    LODWORD(v196) = 0;
    goto LABEL_149;
  }

LABEL_147:
  v132 = sub_1D1E6873C();
  if (!v132)
  {
    goto LABEL_148;
  }

LABEL_131:
  v133 = 0;
  v198 = v116 & 0xC000000000000001;
  while (v198)
  {
    v134 = MEMORY[0x1D3891EF0](v133, v116);
    v135 = v133 + 1;
    if (__OFADD__(v133, 1))
    {
      goto LABEL_143;
    }

LABEL_137:
    v136 = v134;
    v137 = [v136 applicationData];
    v138 = sub_1D1E677EC();
    v139 = [v137 objectForKeyedSubscript_];

    if (v139 && (v200[0] = v139, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900), (swift_dynamicCast() & 1) != 0))
    {
      v140 = v201;

      if (v140)
      {
        goto LABEL_144;
      }
    }

    else
    {
    }

    ++v133;
    if (v135 == v132)
    {
      goto LABEL_148;
    }
  }

  if (v133 >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_146;
  }

  v134 = *(v116 + 8 * v133 + 32);
  v135 = v133 + 1;
  if (!__OFADD__(v133, 1))
  {
    goto LABEL_137;
  }

LABEL_143:
  __break(1u);
LABEL_144:
  LODWORD(v196) = 1;
LABEL_149:

  v141 = [v181 services];
  v142 = sub_1D1E67C1C();

  v143 = v142 & 0xFFFFFFFFFFFFFF8;
  if (v142 >> 62)
  {
LABEL_181:
    v198 = sub_1D1E6873C();
  }

  else
  {
    v198 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v144 = 0;
  while (1)
  {
    v145 = v144;
    if (v198 == v144)
    {
      goto LABEL_163;
    }

    if ((v142 & 0xC000000000000001) != 0)
    {
      v146 = MEMORY[0x1D3891EF0](v144, v142);
      if (__OFADD__(v145, 1))
      {
LABEL_162:
        __break(1u);
LABEL_163:

        goto LABEL_165;
      }
    }

    else
    {
      if (v144 >= *(v143 + 16))
      {
LABEL_180:
        __break(1u);
        goto LABEL_181;
      }

      v146 = *(v142 + 8 * v144 + 32);
      if (__OFADD__(v145, 1))
      {
        goto LABEL_162;
      }
    }

    v147 = v146;
    v148 = [v147 applicationData];
    v149 = sub_1D1E677EC();
    v150 = [v148 objectForKeyedSubscript_];

    if (!v150)
    {
      break;
    }

    v200[0] = v150;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500E0, &unk_1D1E91900);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v151 = v201;

    v144 = v145 + 1;
    if (v151)
    {
      goto LABEL_163;
    }
  }

LABEL_165:
  v142 = [v181 services];
  v143 = sub_1D1E67C1C();

  if (v143 >> 62)
  {
    v152 = sub_1D1E6873C();
  }

  else
  {
    v152 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v153 = 0;
  while (1)
  {
    v154 = v153;
    if (v152 == v153)
    {
      break;
    }

    if ((v143 & 0xC000000000000001) != 0)
    {
      v155 = MEMORY[0x1D3891EF0](v153, v143);
      if (__OFADD__(v154, 1))
      {
LABEL_176:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v153 >= *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_180;
      }

      v155 = *(v143 + 8 * v153 + 32);
      if (__OFADD__(v154, 1))
      {
        goto LABEL_176;
      }
    }

    v142 = v155;
    v156 = HMService.contributesToHomeStatus.getter();

    v153 = v154 + 1;
    if (v156)
    {
      sub_1D1741A30(v177, &qword_1EC642570, &qword_1D1E6C6A0);

      goto LABEL_178;
    }
  }

  sub_1D1741A30(v177, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_178:
  v157 = v198 != v145;
  v158 = v170;
  (*(v179 + 32))(v170, v175, v199);
  v159 = type metadata accessor for StaticServiceGroup(0);
  v160 = (v158 + v159[5]);
  v161 = v191;
  *v160 = v193;
  v160[1] = v161;
  *(v158 + v159[6]) = v197;
  *(v158 + v159[7]) = v169;
  result = sub_1D1741A90(v174, v158 + v159[8], &qword_1EC642570, &qword_1D1E6C6A0);
  *(v158 + v159[9]) = v187;
  v163 = (v158 + v159[10]);
  v164 = v194;
  *v163 = v195;
  v163[1] = v164;
  *(v158 + v159[11]) = v196;
  *(v158 + v159[12]) = v157;
  *(v158 + v159[13]) = v152 != v154;
  *(v158 + v159[14]) = v192;
  return result;
}

Swift::Bool_optional __swiftcall StaticServiceGroup.BOOL(for:)(HomeDataModel::CharacteristicKind a1)
{
  v1 = a1;
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = StaticServiceGroup.sortedStaticServices.getter();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = *(v2 + 128);
    v11 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_1D1C53710(v11, v5, type metadata accessor for StaticService);
      v16 = *&v5[v10];
      HIBYTE(v15) = v6;
      v13 = sub_1D1CE4920(&v15 + 7);
      sub_1D1C53778(v5, type metadata accessor for StaticService);
      if (v13 != 2)
      {
        v9 |= v13;
      }

      v11 += v12;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = 0;
  }

  return (v9 & 1);
}

Swift::Int_optional __swiftcall StaticServiceGroup.int(for:)(HomeDataModel::CharacteristicKind a1)
{
  v1 = a1;
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(StaticServiceGroup.sortedStaticServices.getter() + 16);

  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = StaticServiceGroup.sortedStaticServices.getter();
  v9 = *(v8 + 16);
  if (!v9)
  {

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v10 = 0;
  v11 = *(v2 + 128);
  v12 = *(v3 + 80);
  v20[1] = v8;
  v13 = v8 + ((v12 + 32) & ~v12);
  v14 = *(v3 + 72);
  do
  {
    sub_1D1C53710(v13, v5, type metadata accessor for StaticService);
    v22 = *&v5[v11];
    v21 = v6;

    v23 = StaticCharacteristicsBag.int(for:)(&v21);
    value = v23.value;
    is_nil = v23.is_nil;
    sub_1D1C53778(v5, type metadata accessor for StaticService);

    if (is_nil)
    {
      v17 = 0;
    }

    else
    {
      v17 = value;
    }

    if (v10 <= v17)
    {
      v10 = v17;
    }

    v13 += v14;
    --v9;
  }

  while (v9);

LABEL_13:
  v18 = v7 == 0;
  v19 = v10;
  result.value = v19;
  result.is_nil = v18;
  return result;
}

Swift::Double_optional __swiftcall StaticServiceGroup.double(for:)(HomeDataModel::CharacteristicKind a1)
{
  v1 = a1;
  v2 = type metadata accessor for StaticCharacteristic(0);
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  v12 = *v1;
  v13 = *(StaticServiceGroup.sortedStaticServices.getter() + 16);

  if (!v13)
  {
    goto LABEL_9;
  }

  LOBYTE(v38) = v12;
  if (CharacteristicKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB4320 == v15)
  {
    goto LABEL_4;
  }

  v35 = v2;
  v16 = sub_1D1E6904C();

  if ((v16 & 1) == 0)
  {
    LOBYTE(v38) = v12;
    if (CharacteristicKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB4E30 == v21)
    {
LABEL_4:

      goto LABEL_6;
    }

    v22 = sub_1D1E6904C();

    if ((v22 & 1) == 0)
    {
      v23 = StaticServiceGroup.sortedStaticServices.getter();
      v24 = *(v23 + 16);
      if (!v24)
      {

        v20 = 0;
        goto LABEL_27;
      }

      v25 = *(v5 + 128);
      v26 = v23 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v27 = *(v6 + 72);
      v28 = 0.0;
      v29 = v36;
      while (1)
      {
        sub_1D1C53710(v26, v9, type metadata accessor for StaticService);
        v31 = *&v9[v25];
        if (!*(v31 + 16))
        {
          goto LABEL_23;
        }

        v32 = sub_1D171D140(v12);
        if ((v33 & 1) == 0)
        {
          goto LABEL_23;
        }

        sub_1D1C53710(*(v31 + 56) + *(v29 + 72) * v32, v4, type metadata accessor for StaticCharacteristic);
        v34 = &v4[*(v35 + 24)];
        if (v34[16] != 7)
        {
          break;
        }

        value = *v34;
        sub_1D1C53778(v4, type metadata accessor for StaticCharacteristic);
LABEL_16:
        sub_1D1C53778(v9, type metadata accessor for StaticService);
        if (v28 < value)
        {
          v28 = value;
        }

        v26 += v27;
        if (!--v24)
        {

          v20 = LOBYTE(v28);
          goto LABEL_27;
        }
      }

      sub_1D1C53778(v4, type metadata accessor for StaticCharacteristic);
LABEL_23:
      v38 = v31;
      v37 = v12;
      v39 = StaticCharacteristicsBag.int(for:)(&v37);
      value = 0.0;
      if (!v39.is_nil)
      {
        value = v39.value;
      }

      goto LABEL_16;
    }
  }

LABEL_6:
  v17 = StaticServiceGroup.sortedStaticServices.getter();
  if (!*(v17 + 16))
  {

LABEL_9:
    v20 = 0;
    goto LABEL_27;
  }

  sub_1D1C53710(v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v11, type metadata accessor for StaticService);

  v38 = *&v11[*(v5 + 128)];
  v37 = v12;
  sub_1D1CE53A4(&v37);
  v19 = v18;
  sub_1D1C53778(v11, type metadata accessor for StaticService);
  v20 = v19;
LABEL_27:
  result.value = v14;
  result.is_nil = v20;
  return result;
}

double StaticServiceGroup.copyReplacing(id:name:isReachable:homeNonResponsiveType:dateAdded:roomIds:roomName:isFavorite:shouldShowInDashboard:contributesToHomeStatus:staticServicesDictionary:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, uint64_t a14)
{
  v60 = a2;
  v61 = a8;
  v63 = a7;
  v56 = a6;
  v57 = a3;
  v65 = a4;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v55 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v55 - v24;
  v26 = sub_1D1E66A7C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *a5;
  v31 = v30;
  sub_1D1741C08(a1, v25, &qword_1EC642590, qword_1D1E71260);
  v32 = *(v27 + 48);
  if (v32(v25, 1, v31) == 1)
  {
    v33 = v29;
    (*(v27 + 16))(v29, v14, v31);
    if (v32(v25, 1, v31) != 1)
    {
      sub_1D1741A30(v25, &qword_1EC642590, qword_1D1E71260);
    }

    v34 = v57;
    if (v57)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v33 = v29;
    (*(v27 + 32))(v29, v25, v31);
    v34 = v57;
    if (v57)
    {
LABEL_5:
      v58 = v34;
      goto LABEL_8;
    }
  }

  v35 = (v14 + *(type metadata accessor for StaticServiceGroup(0) + 20));
  v36 = v35[1];
  v60 = *v35;
  v58 = v36;

LABEL_8:
  if (v65 == 2)
  {
    v65 = *(v14 + *(type metadata accessor for StaticServiceGroup(0) + 24));
  }

  v59 = v31;
  if (v64 == 3)
  {
    v64 = *(v14 + *(type metadata accessor for StaticServiceGroup(0) + 28));
  }

  sub_1D1741C08(v56, v21, &qword_1EC642570, &qword_1D1E6C6A0);
  v37 = sub_1D1E669FC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v21, 1, v37) == 1)
  {
    v40 = type metadata accessor for StaticServiceGroup(0);
    sub_1D1741C08(v14 + *(v40 + 32), v62, &qword_1EC642570, &qword_1D1E6C6A0);
    v41 = v39(v21, 1, v37);

    v42 = v33;
    if (v41 != 1)
    {
      sub_1D1741A30(v21, &qword_1EC642570, &qword_1D1E6C6A0);
    }
  }

  else
  {
    v43 = v62;
    (*(v38 + 32))(v62, v21, v37);
    (*(v38 + 56))(v43, 0, 1, v37);

    v42 = v33;
  }

  if (v63)
  {
    v57 = v63;
  }

  else
  {
    v57 = *(v14 + *(type metadata accessor for StaticServiceGroup(0) + 36));
  }

  v44 = a11;
  v45 = a10;
  if (!a10)
  {
    v46 = (v14 + *(type metadata accessor for StaticServiceGroup(0) + 40));
    v45 = v46[1];
    v61 = *v46;
  }

  v47 = a12;
  if (a11 == 2)
  {
    v44 = *(v14 + *(type metadata accessor for StaticServiceGroup(0) + 44));
  }

  v48 = a13;
  if (a12 == 2)
  {
    v47 = *(v14 + *(type metadata accessor for StaticServiceGroup(0) + 48));
  }

  if (a13 == 2)
  {
    v48 = *(v14 + *(type metadata accessor for StaticServiceGroup(0) + 52));
  }

  if (a14)
  {
    v49 = a14;
  }

  else
  {
    v49 = *(v14 + *(type metadata accessor for StaticServiceGroup(0) + 56));
  }

  (*(v27 + 32))(a9, v42, v59);
  v50 = type metadata accessor for StaticServiceGroup(0);
  v51 = (a9 + v50[5]);
  v52 = v58;
  *v51 = v60;
  v51[1] = v52;
  *(a9 + v50[6]) = v65 & 1;
  *(a9 + v50[7]) = v64;
  sub_1D1741A90(v62, a9 + v50[8], &qword_1EC642570, &qword_1D1E6C6A0);
  *(a9 + v50[9]) = v57;
  v53 = (a9 + v50[10]);
  *v53 = v61;
  v53[1] = v45;
  *(a9 + v50[11]) = v44 & 1;
  *(a9 + v50[12]) = v47 & 1;
  *(a9 + v50[13]) = v48 & 1;
  *(a9 + v50[14]) = v49;

  return result;
}

uint64_t sub_1D1C4F9D0(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0BFA4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1C4FB2C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1C4FA84(uint64_t *a1)
{
  v2 = *(sub_1D1E669FC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0C10C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1C4FC70(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1C4FB2C(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1C502B0(v8, v9, a1, v4);
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
    return sub_1D1C4FD9C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1C4FC70(uint64_t *a1)
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
        sub_1D1E669FC();
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1D1E669FC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1C50BF0(v8, v9, a1, v4);
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
    return sub_1D1C4FFEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1C4FD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_1D1741C08(v22, v16, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1741C08(v19, v12, &qword_1EC642DB0, &unk_1D1E6F360);
      v23 = MEMORY[0x1D3890070](v16, v12);
      sub_1D1741A30(v12, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1741A30(v16, &qword_1EC642DB0, &unk_1D1E6F360);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_1D1741A90(v22, v34, &qword_1EC642DB0, &unk_1D1E6F360);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1741A90(v24, v19, &qword_1EC642DB0, &unk_1D1E6F360);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C4FFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1D1E669FC();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v45 = &v31 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1D1C53A0C(&unk_1EC649E50, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v26 = sub_1D1E6771C();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C502B0(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v103 = a1;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v113 = *(v116 - 8);
  v9 = MEMORY[0x1EEE9AC00](v116);
  v107 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v115 = &v99 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v118 = &v99 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v117 = &v99 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_96:
    a4 = *v103;
    if (!*v103)
    {
      goto LABEL_136;
    }

    v4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_1D1E0BE44(v4);
    }

    v94 = v6;
    v119 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (1)
      {
        v95 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v6 = a3;
        a3 = *(result + 16 * v4);
        v96 = result;
        v97 = *(result + 16 * (v4 - 1) + 40);
        sub_1D1C51618(v95 + *(v113 + 72) * a3, v95 + *(v113 + 72) * *(result + 16 * (v4 - 1) + 32), v95 + *(v113 + 72) * v97, a4);
        if (v94)
        {
        }

        if (v97 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1D1E0BE44(v96);
        }

        if (v4 - 2 >= *(v96 + 2))
        {
          goto LABEL_124;
        }

        v98 = &v96[16 * v4];
        *v98 = a3;
        *(v98 + 1) = v97;
        v119 = v96;
        sub_1D1E0BDB8(v4 - 1);
        result = v119;
        v4 = *(v119 + 16);
        a3 = v6;
        if (v4 <= 1)
        {
        }
      }
    }
  }

  v100 = a4;
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v104 = a3;
  while (1)
  {
    v20 = v18;
    v108 = v19;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v102 = v6;
      v21 = v18;
      v22 = *a3;
      v23 = *(v113 + 72);
      a4 = *a3 + v23 * (v18 + 1);
      v24 = v117;
      sub_1D1741C08(a4, v117, &qword_1EC642DB0, &unk_1D1E6F360);
      v25 = v118;
      sub_1D1741C08(v22 + v23 * v21, v118, &qword_1EC642DB0, &unk_1D1E6F360);
      LODWORD(v112) = MEMORY[0x1D3890070](v24, v25);
      sub_1D1741A30(v25, &qword_1EC642DB0, &unk_1D1E6F360);
      result = sub_1D1741A30(v24, &qword_1EC642DB0, &unk_1D1E6F360);
      v101 = v21;
      v4 = v21 + 2;
      v114 = v23;
      v26 = v22 + v23 * (v21 + 2);
      while (v17 != v4)
      {
        v27 = v117;
        sub_1D1741C08(v26, v117, &qword_1EC642DB0, &unk_1D1E6F360);
        v28 = v118;
        sub_1D1741C08(a4, v118, &qword_1EC642DB0, &unk_1D1E6F360);
        v29 = v17;
        v30 = MEMORY[0x1D3890070](v27, v28) & 1;
        sub_1D1741A30(v28, &qword_1EC642DB0, &unk_1D1E6F360);
        result = sub_1D1741A30(v27, &qword_1EC642DB0, &unk_1D1E6F360);
        ++v4;
        v26 += v114;
        a4 += v114;
        v31 = (v112 & 1) == v30;
        v17 = v29;
        if (!v31)
        {
          v17 = v4 - 1;
          break;
        }
      }

      a3 = v104;
      v20 = v101;
      v6 = v102;
      if (v112)
      {
        if (v17 < v101)
        {
          goto LABEL_127;
        }

        if (v101 < v17)
        {
          v4 = v114 * (v17 - 1);
          v32 = v17 * v114;
          v33 = v17;
          v34 = v17;
          v35 = v101;
          a4 = v101 * v114;
          do
          {
            if (v35 != --v34)
            {
              v36 = *v104;
              if (!*v104)
              {
                goto LABEL_133;
              }

              sub_1D1741A90(v36 + a4, v107, &qword_1EC642DB0, &unk_1D1E6F360);
              if (a4 < v4 || v36 + a4 >= (v36 + v32))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D1741A90(v107, v36 + v4, &qword_1EC642DB0, &unk_1D1E6F360);
            }

            ++v35;
            v4 -= v114;
            v32 -= v114;
            a4 += v114;
          }

          while (v35 < v34);
          v20 = v101;
          v6 = v102;
          a3 = v104;
          v17 = v33;
        }
      }
    }

    v37 = a3[1];
    if (v17 < v37)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_126;
      }

      if (v17 - v20 < v100)
      {
        if (__OFADD__(v20, v100))
        {
          goto LABEL_128;
        }

        if (v20 + v100 >= v37)
        {
          v38 = a3[1];
        }

        else
        {
          v38 = v20 + v100;
        }

        if (v38 < v20)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v17 != v38)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v20)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = v108;
    }

    else
    {
      result = sub_1D1E0BE58(0, *(v108 + 2) + 1, 1, v108);
      v19 = result;
    }

    v4 = *(v19 + 2);
    v39 = *(v19 + 3);
    a4 = v4 + 1;
    if (v4 >= v39 >> 1)
    {
      result = sub_1D1E0BE58((v39 > 1), v4 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a4;
    v40 = &v19[16 * v4];
    *(v40 + 4) = v20;
    *(v40 + 5) = v18;
    v41 = *v103;
    if (!*v103)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      while (1)
      {
        v42 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v43 = *(v19 + 4);
          v44 = *(v19 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_52:
          if (v46)
          {
            goto LABEL_114;
          }

          v59 = &v19[16 * a4];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_117;
          }

          v65 = &v19[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_121;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v69 = &v19[16 * a4];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_66:
        if (v64)
        {
          goto LABEL_116;
        }

        v72 = &v19[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_119;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v42 - 1;
        if (v42 - 1 >= a4)
        {
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v80 = v19;
        a4 = *&v19[16 * v4 + 32];
        v81 = *&v19[16 * v42 + 40];
        sub_1D1C51618(*a3 + *(v113 + 72) * a4, *a3 + *(v113 + 72) * *&v19[16 * v42 + 32], *a3 + *(v113 + 72) * v81, v41);
        if (v6)
        {
        }

        if (v81 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v82 = v80;
        }

        else
        {
          v82 = sub_1D1E0BE44(v80);
        }

        if (v4 >= *(v82 + 2))
        {
          goto LABEL_111;
        }

        v83 = &v82[16 * v4];
        *(v83 + 4) = a4;
        *(v83 + 5) = v81;
        v119 = v82;
        v4 = &v119;
        result = sub_1D1E0BDB8(v42);
        v19 = v119;
        a4 = *(v119 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v19[16 * a4 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_112;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_113;
      }

      v54 = &v19[16 * a4];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_115;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_118;
      }

      if (v58 >= v50)
      {
        v76 = &v19[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_122;
        }

        if (v45 < v79)
        {
          v42 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = a3[1];
    if (v18 >= v17)
    {
      goto LABEL_96;
    }
  }

  v101 = v20;
  v102 = v6;
  v84 = *a3;
  v85 = *(v113 + 72);
  v86 = *a3 + v85 * (v17 - 1);
  v87 = -v85;
  v88 = v20 - v17;
  v105 = v85;
  v106 = v38;
  v114 = v84;
  a4 = v84 + v17 * v85;
LABEL_86:
  v111 = v86;
  v112 = v17;
  v109 = a4;
  v110 = v88;
  v89 = v86;
  while (1)
  {
    v4 = v117;
    sub_1D1741C08(a4, v117, &qword_1EC642DB0, &unk_1D1E6F360);
    v90 = v118;
    sub_1D1741C08(v89, v118, &qword_1EC642DB0, &unk_1D1E6F360);
    v91 = MEMORY[0x1D3890070](v4, v90);
    sub_1D1741A30(v90, &qword_1EC642DB0, &unk_1D1E6F360);
    result = sub_1D1741A30(v4, &qword_1EC642DB0, &unk_1D1E6F360);
    if ((v91 & 1) == 0)
    {
LABEL_85:
      v17 = v112 + 1;
      v18 = v106;
      v86 = v111 + v105;
      v88 = v110 - 1;
      a4 = v109 + v105;
      if (v112 + 1 != v106)
      {
        goto LABEL_86;
      }

      v20 = v101;
      v6 = v102;
      a3 = v104;
      if (v106 < v101)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v114)
    {
      break;
    }

    v92 = v115;
    sub_1D1741A90(a4, v115, &qword_1EC642DB0, &unk_1D1E6F360);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1741A90(v92, v89, &qword_1EC642DB0, &unk_1D1E6F360);
    v89 += v87;
    a4 += v87;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_1D1C50BF0(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v127 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v134 = &v119 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v140 = &v119 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_1D1E0BE44(v20);
      v20 = result;
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_1D1C51B1C(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D1E0BE44(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        result = sub_1D1E0BDB8(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x1E69E7CC0];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      v27(v140, v29, v26);
      v130 = sub_1D1C53A0C(&unk_1EC649E50, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      LODWORD(v133) = sub_1D1E6771C();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      result = (v31)(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_1D1E6771C() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        result = v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v133)(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v20 + 2) + 1, 1, v20);
      v20 = result;
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      result = sub_1D177D070((v53 > 1), v54 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_1D1C51B1C(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D1E0BE44(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        result = sub_1D1E0BDB8(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_1D1C53A0C(&unk_1EC649E50, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v109 = sub_1D1E6771C();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    result = v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_1D1C51618(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v8 = MEMORY[0x1EEE9AC00](v43);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_58;
          }

          v29 = a3;
          v37 = v23;
          a3 += v24;
          v30 = v25 + v24;
          v31 = v44;
          sub_1D1741C08(v30, v44, &qword_1EC642DB0, &unk_1D1E6F360);
          v32 = v27;
          v33 = v45;
          sub_1D1741C08(v32, v45, &qword_1EC642DB0, &unk_1D1E6F360);
          v34 = MEMORY[0x1D3890070](v31, v33);
          sub_1D1741A30(v33, &qword_1EC642DB0, &unk_1D1E6F360);
          sub_1D1741A30(v31, &qword_1EC642DB0, &unk_1D1E6F360);
          if (v34)
          {
            break;
          }

          v23 = v30;
          if (v29 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v42;
            a1 = v39;
          }

          else
          {
            v27 = v42;
            a1 = v39;
            if (v29 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_57;
          }
        }

        if (v29 < v41 || a3 >= v41)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (v29 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_57:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a3;
    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v13;
        v20 = v44;
        sub_1D1741C08(a2, v44, &qword_1EC642DB0, &unk_1D1E6F360);
        v21 = v45;
        sub_1D1741C08(a4, v45, &qword_1EC642DB0, &unk_1D1E6F360);
        v22 = MEMORY[0x1D3890070](v20, v21);
        sub_1D1741A30(v21, &qword_1EC642DB0, &unk_1D1E6F360);
        sub_1D1741A30(v20, &qword_1EC642DB0, &unk_1D1E6F360);
        v13 = v19;
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v19;
          a4 += v19;
        }

        a1 += v19;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v41);
    }
  }

LABEL_58:
  sub_1D1DC700C(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_1D1C51B1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = sub_1D1E669FC();
  v8 = *(v52 - 8);
  v9 = MEMORY[0x1EEE9AC00](v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          sub_1D1C53A0C(&unk_1EC649E50, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          LOBYTE(v35) = sub_1D1E6771C();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        (v46)(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        sub_1D1C53A0C(&unk_1EC649E50, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        LOBYTE(v22) = sub_1D1E6771C();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= &v44[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = &v44[a4];
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  sub_1D1DC71EC(&v55, &v54, &v53);
  return 1;
}

uint64_t _s13HomeDataModel18StaticServiceGroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_27;
  }

  v14 = type metadata accessor for StaticServiceGroup(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1D1E6904C() & 1) == 0 || *(a1 + v14[6]) != *(a2 + v14[6]) || *(a1 + v14[7]) != *(a2 + v14[7]))
  {
    goto LABEL_27;
  }

  v20 = v14[8];
  v21 = *(v11 + 48);
  sub_1D1741C08(a1 + v20, v13, &qword_1EC642570, &qword_1D1E6C6A0);
  v33 = v21;
  sub_1D1741C08(a2 + v20, &v13[v21], &qword_1EC642570, &qword_1D1E6C6A0);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    sub_1D1741C08(v13, v10, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v22(&v13[v33], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v33], v4);
      sub_1D1C53A0C(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v23 = sub_1D1E6775C();
      v24 = *(v5 + 8);
      v24(v7, v4);
      v24(v10, v4);
      sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
      if ((v23 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    (*(v5 + 8))(v10, v4);
LABEL_14:
    sub_1D1741A30(v13, &qword_1EC642AC0, &qword_1D1E6E810);
    goto LABEL_27;
  }

  if (v22(&v13[v33], 1, v4) != 1)
  {
    goto LABEL_14;
  }

  sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_16:
  if (sub_1D17A6E98(*(a1 + v14[9]), *(a2 + v14[9])))
  {
    v25 = v14[10];
    v26 = (a1 + v25);
    v27 = *(a1 + v25 + 8);
    v28 = (a2 + v25);
    v29 = v28[1];
    if (v27)
    {
      if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_1D1E6904C() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v29)
    {
      goto LABEL_27;
    }

    if (*(a1 + v14[11]) == *(a2 + v14[11]) && *(a1 + v14[12]) == *(a2 + v14[12]) && *(a1 + v14[13]) == *(a2 + v14[13]))
    {
      v30 = sub_1D18490AC(*(a1 + v14[14]), *(a2 + v14[14]));
      return v30 & 1;
    }
  }

LABEL_27:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1D1C52570(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = type metadata accessor for StaticService(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  result = MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v39 = *(result + 48);
    v15 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v38 = *(v12 + 72);
    v42 = (v37 + 32);
    v36 = (v37 + 8);
    while (1)
    {
      v43 = v14;
      v17 = v41;
      sub_1D1741C08(v15, v41, &qword_1EC6436E8, &unk_1D1E71E40);
      v18 = *v42;
      v19 = v8;
      (*v42)(v44, v17, v8);
      v20 = v7;
      sub_1D1C5381C(v17 + v39, v7, type metadata accessor for StaticService);
      v21 = *v45;
      v23 = sub_1D1742188();
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1735934();
        }
      }

      else
      {
        sub_1D1723194(v26, a2 & 1);
        v28 = sub_1D1742188();
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_17;
        }

        v23 = v28;
      }

      v30 = *v45;
      if (v27)
      {
        v8 = v19;
        (*v36)(v44, v19);
        v16 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1C53884(v20, v16, type metadata accessor for StaticService);
      }

      else
      {
        v30[(v23 >> 6) + 8] |= 1 << v23;
        v8 = v19;
        v18((v30[6] + *(v37 + 72) * v23), v44, v19);
        v31 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1C5381C(v20, v31, type metadata accessor for StaticService);
        v32 = v30[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_16;
        }

        v30[2] = v34;
      }

      v15 += v38;
      a2 = 1;
      v14 = v43 - 1;
      if (v43 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C52974(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = type metadata accessor for StaticServiceGroup(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437B8, &unk_1D1E7E730);
  result = MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v39 = *(result + 48);
    v15 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v38 = *(v12 + 72);
    v42 = (v37 + 32);
    v36 = (v37 + 8);
    while (1)
    {
      v43 = v14;
      v17 = v41;
      sub_1D1741C08(v15, v41, &qword_1EC6437B8, &unk_1D1E7E730);
      v18 = *v42;
      v19 = v8;
      (*v42)(v44, v17, v8);
      v20 = v7;
      sub_1D1C5381C(v17 + v39, v7, type metadata accessor for StaticServiceGroup);
      v21 = *v45;
      v23 = sub_1D1742188();
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D17352DC();
        }
      }

      else
      {
        sub_1D1722854(v26, a2 & 1);
        v28 = sub_1D1742188();
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_17;
        }

        v23 = v28;
      }

      v30 = *v45;
      if (v27)
      {
        v8 = v19;
        (*v36)(v44, v19);
        v16 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1C53884(v20, v16, type metadata accessor for StaticServiceGroup);
      }

      else
      {
        v30[(v23 >> 6) + 8] |= 1 << v23;
        v8 = v19;
        v18((v30[6] + *(v37 + 72) * v23), v44, v19);
        v31 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1C5381C(v20, v31, type metadata accessor for StaticServiceGroup);
        v32 = v30[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_16;
        }

        v30[2] = v34;
      }

      v15 += v38;
      a2 = 1;
      v14 = v43 - 1;
      if (v43 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D1C52DC4()
{
  result = qword_1EC64CB60;
  if (!qword_1EC64CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CB60);
  }

  return result;
}

uint64_t sub_1D1C52E18(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1C53A0C(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1C52F60(void *a1)
{
  a1[1] = sub_1D1C53A0C(&qword_1EC64CB78, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
  a1[2] = sub_1D1C53A0C(&qword_1EC64CB80, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
  a1[3] = sub_1D1C53A0C(&qword_1EC644748, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
  a1[4] = sub_1D1C53A0C(&qword_1EC6446E8, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
  a1[5] = sub_1D1C53A0C(&qword_1EC643518, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
  result = sub_1D1C53A0C(&qword_1EC64CB88, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
  a1[6] = result;
  return result;
}

uint64_t sub_1D1C53084(void *a1)
{
  a1[1] = sub_1D1C53A0C(&qword_1EC644748, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
  a1[2] = sub_1D1C53A0C(&qword_1EC6446E8, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
  a1[3] = sub_1D1C53A0C(&qword_1EC643518, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
  result = sub_1D1C53A0C(&qword_1EC64CB88, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
  a1[4] = result;
  return result;
}

void sub_1D1C53180(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D17B77BC(319);
    if (v2 <= 0x3F)
    {
      sub_1D1791340(319);
      if (v3 <= 0x3F)
      {
        sub_1D17786E4();
        if (v4 <= 0x3F)
        {
          sub_1D1BCA118(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1D1C53280()
{
  result = qword_1EC64CB90;
  if (!qword_1EC64CB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CB90);
  }

  return result;
}

unint64_t sub_1D1C532D8()
{
  result = qword_1EC64CB98;
  if (!qword_1EC64CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CB98);
  }

  return result;
}

unint64_t sub_1D1C53330()
{
  result = qword_1EC64CBA0;
  if (!qword_1EC64CBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CBA0);
  }

  return result;
}

uint64_t sub_1D1C53384(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC6270 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6564644165746164 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC6150 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC6190 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1D1C53710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C53778(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1C537D8(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_1D1820F58(result, a2);
  }

  return result;
}

uint64_t sub_1D1C5381C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C53884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C538EC(uint64_t a1)
{
  v4 = *(type metadata accessor for StaticService(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1C4CF38(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D1C53A0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t StaticServiceGroup.toggle(options:context:)(uint64_t a1, void *a2, _OWORD *a3)
{
  *(v4 + 960) = v3;
  *(v4 + 952) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  *(v4 + 968) = swift_task_alloc();
  v7 = type metadata accessor for StaticService(0);
  *(v4 + 976) = v7;
  *(v4 + 984) = *(v7 - 8);
  *(v4 + 992) = swift_task_alloc();
  *(v4 + 1000) = swift_task_alloc();
  *(v4 + 1008) = swift_task_alloc();
  *(v4 + 1016) = swift_task_alloc();
  *(v4 + 1024) = swift_task_alloc();
  *(v4 + 1032) = swift_task_alloc();
  *(v4 + 1040) = *a2;
  v8 = a3[1];
  *(v4 + 1048) = *a3;
  *(v4 + 1064) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1C53BD0, 0, 0);
}

uint64_t sub_1D1C53BD0()
{
  v131 = v0;
  v1 = StaticServiceGroup.sortedStaticServices.getter();
  if (!*(v1 + 16))
  {
    v22 = *(v0 + 952);

    goto LABEL_18;
  }

  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);
  v4 = *(*(v0 + 984) + 80);
  v5 = (v4 + 32) & ~v4;
  sub_1D1C3EB34(v1 + v5, v3, type metadata accessor for StaticService);

  sub_1D17978CC(v3, v2);
  v6 = StaticService.canBeToggled.getter();
  v7 = *(v0 + 1032);
  if (!v6)
  {
    v22 = *(v0 + 952);
    v23 = *(v0 + 1032);
LABEL_17:
    sub_1D1B43A7C(v23, type metadata accessor for StaticService);
    goto LABEL_18;
  }

  v8 = (v0 + 376);
  v9 = *(*(v0 + 976) + 104);
  LOBYTE(v129) = *(v7 + v9);
  ServiceKind.togglingCharacteristicKind.getter(&v130);
  v10 = v130;
  if (v130 != 174)
  {
    LOBYTE(v129) = v130;
    v11.value = StaticServiceGroup.BOOL(for:)(&v129).value;
    if (v11.value != 2)
    {
      v36 = *(v0 + 1040);
      *(v0 + 880) = MEMORY[0x1E69E6370];
      *(v0 + 856) = !v11.value;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1D1E739C0;
      *(v37 + 32) = v10;
      v117 = *(v0 + 1064);
      v127 = *(v0 + 1048);
      sub_1D1741970(v0 + 856, v37 + 40);
      v38 = sub_1D18DAC64(v37);
      *(v0 + 1080) = v38;
      swift_setDeallocating();
      sub_1D1741A30(v37 + 32, &qword_1EC646178, &unk_1D1E7E740);
      swift_deallocClassInstance();
      *(v0 + 936) = v36;
      *v8 = v127;
      *(v0 + 392) = v117;
      v39 = swift_task_alloc();
      *(v0 + 1088) = v39;
      *v39 = v0;
      v39[1] = sub_1D1C54D74;
      v40 = *(v0 + 952);
      v41 = (v0 + 936);
      v42 = v38;
      v43 = (v0 + 376);
      goto LABEL_43;
    }
  }

  v12 = *(v7 + v9);
  if (v12 <= 0x22)
  {
    if (v12 != 14)
    {
      if (v12 != 19)
      {
        if (v12 == 30)
        {
          v13 = *(v0 + 984);
          v14 = *(v0 + 976);
          result = StaticServiceGroup.sortedStaticServices.getter();
          v16 = result;
          v17 = 0;
          v18 = *(result + 16);
          v19 = result + v5;
          while (1)
          {
            if (v18 == v17)
            {
              v67 = *(v0 + 1040);
              v111 = *(v0 + 1064);
              v120 = *(v0 + 1048);

              *(v0 + 560) = MEMORY[0x1E69E6530];
              *(v0 + 536) = 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1D1E739C0;
              *(inited + 32) = -100;
              sub_1D1741970(v0 + 536, inited + 40);
              v55 = sub_1D18DAC64(inited);
              *(v0 + 1144) = v55;
              swift_setDeallocating();
              sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
              *(v0 + 944) = v67;
              *(v0 + 632) = v120;
              *(v0 + 648) = v111;
              v69 = swift_task_alloc();
              *(v0 + 1152) = v69;
              *v69 = v0;
              v69[1] = sub_1D1C551F4;
              v40 = *(v0 + 952);
              v41 = (v0 + 944);
              v43 = (v0 + 632);
              goto LABEL_42;
            }

            if (v17 >= *(v16 + 16))
            {
              break;
            }

            v20 = *(v0 + 1000);
            sub_1D1C3EB34(v19 + *(v13 + 72) * v17, v20, type metadata accessor for StaticService);
            v129 = *(v20 + *(v14 + 128));
            v130 = -100;
            v133 = StaticCharacteristicsBag.int(for:)(&v130);
            value = v133.value;
            if (v133.is_nil)
            {
              v73 = *(v0 + 1000);

              sub_1D1B43A7C(v73, type metadata accessor for StaticService);
              goto LABEL_58;
            }

            ++v17;
            result = sub_1D1B43A7C(*(v0 + 1000), type metadata accessor for StaticService);
            if (value != 1)
            {

LABEL_58:
              v74 = *(v0 + 1040);
              *(v0 + 464) = MEMORY[0x1E69E6530];
              *(v0 + 440) = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
              v113 = *(v0 + 1048);
              v122 = *(v0 + 1064);
              v75 = swift_initStackObject();
              *(v75 + 16) = xmmword_1D1E739C0;
              *(v75 + 32) = -100;
              sub_1D1741970(v0 + 440, v75 + 40);
              v76 = sub_1D18DAC64(v75);
              *(v0 + 1160) = v76;
              swift_setDeallocating();
              sub_1D1741A30(v75 + 32, &qword_1EC646178, &unk_1D1E7E740);
              *(v0 + 896) = v74;
              *(v0 + 504) = v113;
              *(v0 + 520) = v122;
              v77 = (v0 + 504);
              v78 = swift_task_alloc();
              *(v0 + 1168) = v78;
              *v78 = v0;
              v78[1] = sub_1D1C553E8;
              v40 = *(v0 + 952);
              v41 = (v0 + 896);
              goto LABEL_59;
            }
          }

          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          return result;
        }

        goto LABEL_46;
      }

      v57 = *(v0 + 984);
      v58 = *(v0 + 976);
      result = StaticServiceGroup.sortedStaticServices.getter();
      v59 = result;
      v60 = 0;
      v61 = *(result + 16);
      v62 = result + v5;
      while (1)
      {
        if (v61 == v60)
        {
          v70 = *(v0 + 1040);
          v112 = *(v0 + 1064);
          v121 = *(v0 + 1048);

          *(v0 + 752) = MEMORY[0x1E69E6530];
          *(v0 + 728) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
          v71 = swift_allocObject();
          *(v71 + 16) = xmmword_1D1E739C0;
          *(v71 + 32) = -107;
          sub_1D1741970(v0 + 728, v71 + 40);
          v55 = sub_1D18DAC64(v71);
          *(v0 + 1112) = v55;
          swift_setDeallocating();
          sub_1D1741A30(v71 + 32, &qword_1EC646178, &unk_1D1E7E740);
          swift_deallocClassInstance();
          *(v0 + 920) = v70;
          *(v0 + 760) = v121;
          *(v0 + 776) = v112;
          v72 = swift_task_alloc();
          *(v0 + 1120) = v72;
          *v72 = v0;
          v72[1] = sub_1D1C54FB4;
          v40 = *(v0 + 952);
          v41 = (v0 + 920);
          v43 = (v0 + 760);
          goto LABEL_42;
        }

        if (v60 >= *(v59 + 16))
        {
          goto LABEL_90;
        }

        v63 = *(v0 + 1008);
        sub_1D1C3EB34(v62 + *(v57 + 72) * v60, v63, type metadata accessor for StaticService);
        v129 = *(v63 + *(v58 + 128));
        v130 = -107;
        v135 = StaticCharacteristicsBag.int(for:)(&v130);
        v64 = v135.value;
        if (v135.is_nil)
        {
          break;
        }

        ++v60;
        result = sub_1D1B43A7C(*(v0 + 1008), type metadata accessor for StaticService);
        if (v64 != 1)
        {

          goto LABEL_61;
        }
      }

      v79 = *(v0 + 1008);

      sub_1D1B43A7C(v79, type metadata accessor for StaticService);
LABEL_61:
      v80 = *(v0 + 1040);
      *(v0 + 688) = MEMORY[0x1E69E6530];
      *(v0 + 664) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
      v114 = *(v0 + 1064);
      v123 = *(v0 + 1048);
      v81 = swift_initStackObject();
      *(v81 + 16) = xmmword_1D1E739C0;
      *(v81 + 32) = -107;
      sub_1D1741970(v0 + 664, v81 + 40);
      v55 = sub_1D18DAC64(v81);
      *(v0 + 1128) = v55;
      swift_setDeallocating();
      sub_1D1741A30(v81 + 32, &qword_1EC646178, &unk_1D1E7E740);
      *(v0 + 912) = v80;
      *(v0 + 696) = v123;
      *(v0 + 712) = v114;
      v82 = swift_task_alloc();
      *(v0 + 1136) = v82;
      *v82 = v0;
      v82[1] = sub_1D1C550D4;
      v40 = *(v0 + 952);
      v41 = (v0 + 912);
      v43 = (v0 + 696);
LABEL_42:
      v42 = v55;
      goto LABEL_43;
    }

    goto LABEL_22;
  }

  if (v12 - 51 >= 2)
  {
    if (v12 != 35)
    {
LABEL_46:
      v23 = *(v0 + 1032);
      v22 = *(v0 + 952);
      goto LABEL_17;
    }

    v118 = *(v0 + 976);
    v45 = *(*(v0 + 1032) + *(v118 + 128));
    if (!*(v45 + 16))
    {
      v65 = *(v0 + 968);
      v66 = type metadata accessor for StaticCharacteristic(0);
      (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
LABEL_64:
      v84 = *(v0 + 968);
      sub_1D1B43A7C(*(v0 + 1032), type metadata accessor for StaticService);
      sub_1D1741A30(v84, &qword_1EC643630, &qword_1D1E71D10);
      v22 = *(v0 + 952);
      goto LABEL_18;
    }

    v46 = sub_1D171D140(160);
    v47 = *(v0 + 968);
    if (v48)
    {
      v49 = v46;
      v50 = *(v45 + 56);
      v51 = type metadata accessor for StaticCharacteristic(0);
      v52 = *(v51 - 8);
      sub_1D1C3EB34(v50 + *(v52 + 72) * v49, v47, type metadata accessor for StaticCharacteristic);
      (*(v52 + 56))(v47, 0, 1, v51);
    }

    else
    {
      v51 = type metadata accessor for StaticCharacteristic(0);
      (*(*(v51 - 8) + 56))(v47, 1, 1, v51);
    }

    v83 = *(v0 + 968);

    type metadata accessor for StaticCharacteristic(0);
    if ((*(*(v51 - 8) + 48))(v83, 1, v51) == 1)
    {
      goto LABEL_64;
    }

    v126 = (v0 + 376);
    v85 = *(v0 + 968);
    v86 = (v85 + *(v51 + 44));
    v87 = *v86;
    v88 = v86[1];
    v89 = v86[2];
    v90 = v86[3];
    v91 = v86[4];
    sub_1D18F323C(*v86, v88, v89, v90, v91);
    sub_1D1B43A7C(v85, type metadata accessor for StaticCharacteristic);
    if (v90 >> 8 == 0xFFFFFFFF)
    {
      v92 = *(v0 + 1032);
LABEL_83:
      sub_1D1B43A7C(v92, type metadata accessor for StaticService);
      v22 = *(v0 + 952);
      goto LABEL_18;
    }

    if (v90 >> 62)
    {
      v103 = *(v0 + 1032);
      sub_1D18F3260(v87, v88, v89, v90, v91);
      v92 = v103;
      goto LABEL_83;
    }

    if (!v91)
    {
      if (v89 <= 1)
      {
        v93 = 1;
      }

      else
      {
        v93 = v89;
      }

      v91 = sub_1D1C279CC(v88, v87, v93);
    }

    v94 = v91[2];
    v95 = 4;
    while (v94)
    {
      v33 = v91[v95++];
      --v94;
      if (v33 != 3)
      {
        v96 = *(v0 + 984);

        result = StaticServiceGroup.sortedStaticServices.getter();
        v97 = result;
        v98 = 0;
        v99 = *(result + 16);
        v100 = result + v5;
        while (1)
        {
          if (v99 == v98)
          {
            goto LABEL_86;
          }

          if (v98 >= *(v97 + 16))
          {
            goto LABEL_91;
          }

          v101 = *(v0 + 992);
          sub_1D1C3EB34(v100 + *(v96 + 72) * v98, v101, type metadata accessor for StaticService);
          v129 = *(v101 + *(v118 + 128));
          v130 = -96;
          v136 = StaticCharacteristicsBag.int(for:)(&v130);
          v102 = v136.value;
          if (v136.is_nil)
          {
            break;
          }

          ++v98;
          result = sub_1D1B43A7C(*(v0 + 992), type metadata accessor for StaticService);
          if (v102 != 3)
          {

LABEL_88:
            v108 = *(v0 + 1040);
            *(v0 + 624) = MEMORY[0x1E69E6530];
            *(v0 + 600) = 3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
            v116 = *(v0 + 1048);
            v125 = *(v0 + 1064);
            v109 = swift_initStackObject();
            *(v109 + 16) = xmmword_1D1E739C0;
            *(v109 + 32) = -96;
            sub_1D1741970(v0 + 600, v109 + 40);
            v76 = sub_1D18DAC64(v109);
            *(v0 + 1192) = v76;
            swift_setDeallocating();
            sub_1D1741A30(v109 + 32, &qword_1EC646178, &unk_1D1E7E740);
            *(v0 + 904) = v108;
            *(v0 + 568) = v116;
            *(v0 + 584) = v125;
            v77 = (v0 + 568);
            v110 = swift_task_alloc();
            *(v0 + 1200) = v110;
            *v110 = v0;
            v110[1] = sub_1D1C55628;
            v40 = *(v0 + 952);
            v41 = (v0 + 904);
            goto LABEL_59;
          }
        }

        v107 = *(v0 + 992);

        sub_1D1B43A7C(v107, type metadata accessor for StaticService);
        goto LABEL_88;
      }
    }

    sub_1D1B43A7C(*(v0 + 1032), type metadata accessor for StaticService);

    v22 = *(v0 + 952);
LABEL_18:
    v24 = type metadata accessor for StateSnapshot(0);
    (*(*(v24 - 8) + 56))(v22, 1, 1, v24);

    v25 = *(v0 + 8);

    return v25();
  }

LABEL_22:
  v26 = StaticServiceGroup.sortedStaticServices.getter();
  v27 = v26;
  v28 = *(v26 + 16);
  if (!v28)
  {

    v44 = 100.0;
LABEL_41:
    v53 = *(v0 + 1040);
    *(v0 + 816) = MEMORY[0x1E69E63B0];
    *(v0 + 792) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1D1E739C0;
    *(v54 + 32) = -98;
    v119 = v8[43];
    v128 = v8[42];
    sub_1D1741970(v0 + 792, v54 + 40);
    v55 = sub_1D18DAC64(v54);
    *(v0 + 1096) = v55;
    swift_setDeallocating();
    sub_1D1741A30(v54 + 32, &qword_1EC646178, &unk_1D1E7E740);
    swift_deallocClassInstance();
    *(v0 + 928) = v53;
    v8[28] = v128;
    v8[29] = v119;
    v56 = swift_task_alloc();
    *(v0 + 1104) = v56;
    *v56 = v0;
    v56[1] = sub_1D1C54E94;
    v40 = *(v0 + 952);
    v41 = (v0 + 928);
    v43 = v8 + 28;
    goto LABEL_42;
  }

  v126 = (v0 + 376);
  v29 = 0;
  v30 = 0;
  v31 = *(v0 + 1016);
  v32 = *(*(v0 + 976) + 128);
  v33 = v26 + v5;
  v34 = *(*(v0 + 984) + 72);
  v35 = v28 - 1;
  do
  {
    sub_1D1C3EB34(v33, *(v0 + 1016), type metadata accessor for StaticService);
    v129 = *(v31 + v32);
    v130 = -98;
    v134 = StaticCharacteristicsBag.int(for:)(&v130);
    if (v134.is_nil)
    {
      if (v29 <= 0)
      {
        sub_1D1B43A7C(*(v0 + 1016), type metadata accessor for StaticService);
        if (v35 == v30)
        {

          v44 = 100.0;
LABEL_35:
          v8 = (v0 + 376);
          goto LABEL_41;
        }

        v29 = 0;
        goto LABEL_27;
      }
    }

    else if (v134.value > v29)
    {
      v29 = v134.value;
    }

    sub_1D1B43A7C(*(v0 + 1016), type metadata accessor for StaticService);
    if (v35 == v30)
    {

      v44 = 100.0;
      if (v29 > 0)
      {
        v44 = 0.0;
      }

      goto LABEL_35;
    }

LABEL_27:
    ++v30;
    v33 += v34;
  }

  while (v30 < *(v27 + 16));
  __break(1u);
LABEL_86:
  v104 = *(v0 + 1040);
  v115 = v126[42];
  v124 = v126[43];

  *(v0 + 496) = MEMORY[0x1E69E6530];
  *(v0 + 472) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
  v105 = swift_initStackObject();
  *(v105 + 16) = xmmword_1D1E739C0;
  *(v105 + 32) = -96;
  sub_1D1741970(v0 + 472, v105 + 40);
  v76 = sub_1D18DAC64(v105);
  *(v0 + 1176) = v76;
  swift_setDeallocating();
  sub_1D1741A30(v105 + 32, &qword_1EC646178, &unk_1D1E7E740);
  *(v0 + 888) = v104;
  v126[2] = v115;
  v126[3] = v124;
  v77 = v126 + 2;
  v106 = swift_task_alloc();
  *(v0 + 1184) = v106;
  *v106 = v0;
  v106[1] = sub_1D1C55508;
  v40 = *(v0 + 952);
  v41 = (v0 + 888);
LABEL_59:
  v42 = v76;
  v43 = v77;
LABEL_43:

  return StaticServiceGroup.set(for:options:context:)(v40, v42, v41, v43);
}

uint64_t sub_1D1C54D74()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 856));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t sub_1D1C54E94()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 792));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t sub_1D1C54FB4()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 728));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t sub_1D1C550D4()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 664));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t sub_1D1C551F4()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 536));

  return MEMORY[0x1EEE6DFA0](sub_1D1C55314, 0, 0);
}

uint64_t sub_1D1C55314()
{
  sub_1D1B43A7C(*(v0 + 1032), type metadata accessor for StaticService);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1C553E8()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 440));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t sub_1D1C55508()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 472));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t sub_1D1C55628()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_1((v1 + 600));

  return MEMORY[0x1EEE6DFA0](sub_1D1C5631C, 0, 0);
}

uint64_t StaticServiceGroup.set(_:for:options:context:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t *a4, _OWORD *a5)
{
  *(v6 + 128) = a1;
  *(v6 + 136) = a2;
  *(v6 + 208) = *a3;
  v7 = *a4;
  *(v6 + 144) = v5;
  *(v6 + 152) = v7;
  v8 = a5[1];
  *(v6 + 160) = *a5;
  *(v6 + 176) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1D1C55780, 0, 0);
}

uint64_t sub_1D1C55780()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 208);
  v3 = *(v0 + 136);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8A8, &qword_1D1E9ADD8);
  v9 = *(v0 + 176);
  v10 = *(v0 + 160);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  *(inited + 32) = v2;
  sub_1D1741970(v3, inited + 40);
  v5 = sub_1D18DAC64(inited);
  *(v0 + 192) = v5;
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &qword_1EC646178, &unk_1D1E7E740);
  *(v0 + 120) = v1;
  *(v0 + 104) = v9;
  *(v0 + 88) = v10;
  v6 = swift_task_alloc();
  *(v0 + 200) = v6;
  *v6 = v0;
  v6[1] = sub_1D1C3C0C0;
  v7 = *(v0 + 128);

  return StaticServiceGroup.set(for:options:context:)(v7, v5, (v0 + 120), (v0 + 88));
}

uint64_t StaticServiceGroup.set(for:options:context:)(uint64_t a1, uint64_t a2, uint64_t *a3, _OWORD *a4)
{
  *(v5 + 256) = a1;
  *(v5 + 264) = a2;
  v6 = *a3;
  *(v5 + 272) = v4;
  *(v5 + 280) = v6;
  v7 = a4[1];
  *(v5 + 288) = *a4;
  *(v5 + 304) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1D1C55900, 0, 0);
}

void sub_1D1C55900()
{
  v42 = v0;
  v1 = *(v0 + 264);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 264) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v39 = *(v0 + 264);

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC8];
  for (i = v3; ; v3 = i)
  {
    *(v0 + 320) = v10;
    if (!v7)
    {
      break;
    }

LABEL_11:
    v13 = __clz(__rbit64(v7)) | (v9 << 6);
    v14 = *(*(v39 + 48) + v13);
    sub_1D1741970(*(v39 + 56) + 32 * v13, v0 + 24);
    *(v0 + 16) = v14;
    sub_1D17DAA94();
    v15 = *(v0 + 48);
    v16 = __swift_project_boxed_opaque_existential_1((v0 + 24), v15);
    *(v0 + 144) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 120));
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v16, v15);
    v40 = *(v0 + 16);
    static HMService.convert(_:characteristicKind:)(v0 + 120, &v40, v0 + 88);
    sub_1D1741A30(v0 + 120, &qword_1EC645D58, &unk_1D1E7E530);
    if (*(v0 + 112))
    {
      sub_1D16EEE38((v0 + 88), (v0 + 56));
    }

    else
    {
      v18 = *(v0 + 48);
      v19 = __swift_project_boxed_opaque_existential_1((v0 + 24), v18);
      *(v0 + 80) = v18;
      v20 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      (*(*(v18 - 8) + 16))(v20, v19, v18);
      if (*(v0 + 112))
      {
        sub_1D1741A30(v0 + 88, &qword_1EC645D58, &unk_1D1E7E530);
      }
    }

    v21 = *(v0 + 16);
    v22 = *(v0 + 80);
    v23 = __swift_project_boxed_opaque_existential_1((v0 + 56), v22);
    *(v0 + 176) = v22;
    v24 = __swift_allocate_boxed_opaque_existential_1((v0 + 152));
    (*(*(v22 - 8) + 16))(v24, v23, v22);
    sub_1D16EEE38((v0 + 152), (v0 + 184));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v10;
    v27 = sub_1D171D140(v21);
    v28 = v10[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    v31 = v26;
    if (v10[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v26)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D173BB00();
        v10 = v41;
        if (v31)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D172D2A8(v30, isUniquelyReferenced_nonNull_native);
      v10 = v41;
      v32 = sub_1D171D140(v21);
      if ((v31 & 1) != (v33 & 1))
      {

        sub_1D1E690FC();
        return;
      }

      v27 = v32;
      if (v31)
      {
LABEL_4:
        v11 = (v10[7] + 32 * v27);
        __swift_destroy_boxed_opaque_existential_1(v11);
        sub_1D16EEE38((v0 + 184), v11);
        goto LABEL_5;
      }
    }

    v10[(v27 >> 6) + 8] |= 1 << v27;
    *(v10[6] + v27) = v21;
    sub_1D16EEE38((v0 + 184), (v10[7] + 32 * v27));
    v34 = v10[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_34;
    }

    v10[2] = v36;
LABEL_5:
    v7 &= v7 - 1;
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    sub_1D1741A30(v0 + 16, &qword_1EC64CB50, &unk_1D1EA1930);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v12);
    ++v9;
    if (v7)
    {
      v9 = v12;
      goto LABEL_11;
    }
  }

  v37 = swift_task_alloc();
  *(v0 + 328) = v37;
  *v37 = v0;
  v37[1] = sub_1D1C55D40;

  StaticServiceGroup.serviceGroup.getter();
}

uint64_t sub_1D1C55D40(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1C55E40, 0, 0);
}

uint64_t sub_1D1C55E40()
{
  v1 = *(v0 + 336);
  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = [v1 services];
    sub_1D17DAA94();
    v4 = sub_1D1E67C1C();
    *(v0 + 344) = v4;

    if ((v2 & 0x402) == 2)
    {
      v5 = swift_task_alloc();
      *(v0 + 360) = v5;
      *v5 = v0;
      v5[1] = sub_1D1C561E8;
      v6 = *(v0 + 320);
      v7 = *(v0 + 256);

      return sub_1D18CCB18(v7, v4, v6);
    }

    else
    {
      *(v0 + 248) = *(v0 + 280);
      v12 = *(v0 + 304);
      *(v0 + 216) = *(v0 + 288);
      *(v0 + 232) = v12;
      v13 = swift_task_alloc();
      *(v0 + 352) = v13;
      *v13 = v0;
      v13[1] = sub_1D1C56054;
      v14 = *(v0 + 320);
      v15 = *(v0 + 256);

      return sub_1D18CD90C(v15, v0 + 248, (v0 + 216), v4, v14);
    }
  }

  else
  {
    v9 = *(v0 + 256);
    v10 = type metadata accessor for StateSnapshot(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1D1C56054()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1C56188, 0, 0);
}

uint64_t sub_1D1C56188()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1C561E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1C56188, 0, 0);
}

uint64_t sub_1D1C56320()
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v1 = MEMORY[0x1EEE9AC00](v55);
  v54 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v53 = &v47 - v4;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v47 - v5;
  v6 = type metadata accessor for StaticServiceGroup(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C66B60(v0, v9, type metadata accessor for StaticServiceGroup);
  v10 = *(*&v9[*(v7 + 64)] + 16);
  if (v10)
  {
    v48 = v9;
    v60 = MEMORY[0x1E69E7CC0];

    sub_1D178CF80(0, v10, 0);
    v12 = v11;
    v13 = v60;
    v14 = v12 + 64;
    result = sub_1D1E6869C();
    v16 = result;
    v17 = 0;
    v49 = v12 + 72;
    v50 = v10;
    v51 = v12 + 64;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v12 + 32))
    {
      v19 = v16 >> 6;
      if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_23;
      }

      v56 = v17;
      v57 = *(v12 + 36);
      v58 = 1 << v16;
      v20 = v55;
      v21 = *(v55 + 48);
      v22 = *(v12 + 48);
      v23 = sub_1D1E66A7C();
      v24 = *(v23 - 8);
      v25 = v24;
      v26 = v22 + *(v24 + 72) * v16;
      v27 = *(v24 + 16);
      v59 = v13;
      v28 = v52;
      v27(v52, v26, v23);
      v29 = v12;
      v30 = *(v12 + 56);
      v31 = (type metadata accessor for StaticService(0) - 8);
      sub_1D1C66B60(v30 + *(*v31 + 72) * v16, &v28[v21], type metadata accessor for StaticService);
      v32 = v53;
      (*(v25 + 32))(v53, v28, v23);
      v33 = &v28[v21];
      v13 = v59;
      sub_1D1C72E80(v33, &v32[*(v20 + 48)], type metadata accessor for StaticService);
      v34 = v32;
      v35 = v54;
      sub_1D1741A90(v34, v54, &qword_1EC642DB0, &unk_1D1E6F360);
      v36 = v35 + *(v20 + 48);
      v37 = *(v36 + v31[28]);
      sub_1D1C72E20(v36, type metadata accessor for StaticService);
      result = (*(v25 + 8))(v35, v23);
      v60 = v13;
      v39 = *(v13 + 16);
      v38 = *(v13 + 24);
      if (v39 >= v38 >> 1)
      {
        result = sub_1D178CF80((v38 > 1), v39 + 1, 1);
        v13 = v60;
      }

      *(v13 + 16) = v39 + 1;
      *(v13 + v39 + 32) = v37;
      v18 = 1 << *(v29 + 32);
      if (v16 >= v18)
      {
        goto LABEL_24;
      }

      v14 = v51;
      v40 = *(v51 + 8 * v19);
      if ((v40 & v58) == 0)
      {
        goto LABEL_25;
      }

      v12 = v29;
      if (v57 != *(v29 + 36))
      {
        goto LABEL_26;
      }

      v41 = v40 & (-2 << (v16 & 0x3F));
      if (v41)
      {
        v18 = __clz(__rbit64(v41)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v42 = v19 << 6;
        v43 = v19 + 1;
        v44 = (v49 + 8 * v19);
        while (v43 < (v18 + 63) >> 6)
        {
          v46 = *v44++;
          v45 = v46;
          v42 += 64;
          ++v43;
          if (v46)
          {
            result = sub_1D1716920(v16, v57, 0);
            v18 = __clz(__rbit64(v45)) + v42;
            goto LABEL_4;
          }
        }

        result = sub_1D1716920(v16, v57, 0);
      }

LABEL_4:
      v17 = v56 + 1;
      v16 = v18;
      if (v56 + 1 == v50)
      {
        sub_1D1C72E20(v48, type metadata accessor for StaticServiceGroup);

        return v13;
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
  }

  else
  {
    sub_1D1C72E20(v9, type metadata accessor for StaticServiceGroup);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D1C56820()
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v1 = MEMORY[0x1EEE9AC00](v55);
  v54 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v53 = &v47 - v4;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v47 - v5;
  v6 = type metadata accessor for StaticAccessory(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C66B60(v0, v9, type metadata accessor for StaticAccessory);
  v10 = *(*&v9[*(v7 + 88)] + 16);
  if (v10)
  {
    v48 = v9;
    v60 = MEMORY[0x1E69E7CC0];

    sub_1D178CF80(0, v10, 0);
    v12 = v11;
    v13 = v60;
    v14 = v12 + 64;
    result = sub_1D1E6869C();
    v16 = result;
    v17 = 0;
    v49 = v12 + 72;
    v50 = v10;
    v51 = v12 + 64;
    while ((v16 & 0x8000000000000000) == 0 && v16 < 1 << *(v12 + 32))
    {
      v19 = v16 >> 6;
      if ((*(v14 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
      {
        goto LABEL_23;
      }

      v56 = v17;
      v57 = *(v12 + 36);
      v58 = 1 << v16;
      v20 = v55;
      v21 = *(v55 + 48);
      v22 = *(v12 + 48);
      v23 = sub_1D1E66A7C();
      v24 = *(v23 - 8);
      v25 = v24;
      v26 = v22 + *(v24 + 72) * v16;
      v27 = *(v24 + 16);
      v59 = v13;
      v28 = v52;
      v27(v52, v26, v23);
      v29 = v12;
      v30 = *(v12 + 56);
      v31 = (type metadata accessor for StaticService(0) - 8);
      sub_1D1C66B60(v30 + *(*v31 + 72) * v16, &v28[v21], type metadata accessor for StaticService);
      v32 = v53;
      (*(v25 + 32))(v53, v28, v23);
      v33 = &v28[v21];
      v13 = v59;
      sub_1D1C72E80(v33, &v32[*(v20 + 48)], type metadata accessor for StaticService);
      v34 = v32;
      v35 = v54;
      sub_1D1741A90(v34, v54, &qword_1EC642DB0, &unk_1D1E6F360);
      v36 = v35 + *(v20 + 48);
      v37 = *(v36 + v31[28]);
      sub_1D1C72E20(v36, type metadata accessor for StaticService);
      result = (*(v25 + 8))(v35, v23);
      v60 = v13;
      v39 = *(v13 + 16);
      v38 = *(v13 + 24);
      if (v39 >= v38 >> 1)
      {
        result = sub_1D178CF80((v38 > 1), v39 + 1, 1);
        v13 = v60;
      }

      *(v13 + 16) = v39 + 1;
      *(v13 + v39 + 32) = v37;
      v18 = 1 << *(v29 + 32);
      if (v16 >= v18)
      {
        goto LABEL_24;
      }

      v14 = v51;
      v40 = *(v51 + 8 * v19);
      if ((v40 & v58) == 0)
      {
        goto LABEL_25;
      }

      v12 = v29;
      if (v57 != *(v29 + 36))
      {
        goto LABEL_26;
      }

      v41 = v40 & (-2 << (v16 & 0x3F));
      if (v41)
      {
        v18 = __clz(__rbit64(v41)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v42 = v19 << 6;
        v43 = v19 + 1;
        v44 = (v49 + 8 * v19);
        while (v43 < (v18 + 63) >> 6)
        {
          v46 = *v44++;
          v45 = v46;
          v42 += 64;
          ++v43;
          if (v46)
          {
            result = sub_1D1716920(v16, v57, 0);
            v18 = __clz(__rbit64(v45)) + v42;
            goto LABEL_4;
          }
        }

        result = sub_1D1716920(v16, v57, 0);
      }

LABEL_4:
      v17 = v56 + 1;
      v16 = v18;
      if (v56 + 1 == v50)
      {
        sub_1D1C72E20(v48, type metadata accessor for StaticAccessory);

        return v13;
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
  }

  else
  {
    sub_1D1C72E20(v9, type metadata accessor for StaticAccessory);
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D1C56D20()
{
  v1 = v0;
  v2 = type metadata accessor for StaticUserActionPrediction(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1C66B60(v1, v8, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v9 = (*(v3 + 48))(v8, 3, v2);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    goto LABEL_8;
  }

  if (v9)
  {
    v10 = 1;
LABEL_8:
    MEMORY[0x1D3892850](v10);
    return sub_1D1E6926C();
  }

  sub_1D1C72E80(v8, v5, type metadata accessor for StaticUserActionPrediction);
  MEMORY[0x1D3892850](0);
  StaticUserActionPrediction.hash(into:)(v13);
  sub_1D1C72E20(v5, type metadata accessor for StaticUserActionPrediction);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C56F58(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticUserActionPrediction(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C66B60(v2, v10, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v11 = (*(v5 + 48))(v10, 3, v4);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }
  }

  else
  {
    if (!v11)
    {
      sub_1D1C72E80(v10, v8, type metadata accessor for StaticUserActionPrediction);
      MEMORY[0x1D3892850](0);
      StaticUserActionPrediction.hash(into:)(a1);
      return sub_1D1C72E20(v8, type metadata accessor for StaticUserActionPrediction);
    }

    v13 = 1;
  }

  return MEMORY[0x1D3892850](v13);
}

uint64_t sub_1D1C57104(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StaticUserActionPrediction(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1C66B60(v2, v9, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v10 = (*(v4 + 48))(v9, 3, v3);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    goto LABEL_8;
  }

  if (v10)
  {
    v11 = 1;
LABEL_8:
    MEMORY[0x1D3892850](v11);
    return sub_1D1E6926C();
  }

  sub_1D1C72E80(v9, v7, type metadata accessor for StaticUserActionPrediction);
  MEMORY[0x1D3892850](0);
  StaticUserActionPrediction.hash(into:)(v14);
  sub_1D1C72E20(v7, type metadata accessor for StaticUserActionPrediction);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C572DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = a1;
  v42 = type metadata accessor for StaticActionSet(0);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticUserActionPrediction(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for BoxedTileInfoBearer(0);
  MEMORY[0x1EEE9AC00](v47);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC00, &unk_1D1EA1FA0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v40 - v23;
  sub_1D17419CC(v50, v52);
  (*(v9 + 56))(v24, 1, 1, v8);
  v25 = *(v6 + 56);
  v48 = v5;
  v45 = v25;
  v46 = v6 + 56;
  v25(v18, 1, 1, v5);
  sub_1D1741C08(v24, v22, &qword_1EC642590, qword_1D1E71260);
  if ((*(v9 + 48))(v22, 1, v8) == 1)
  {
    sub_1D1741A30(v22, &qword_1EC642590, qword_1D1E71260);
    __swift_project_boxed_opaque_existential_1(v52, v53);
    sub_1D1E6886C();
  }

  else
  {
    v26 = *(v9 + 32);
    v27 = v40;
    v26(v40, v22, v8);
    v26(v12, v27, v8);
  }

  v28 = v12;
  v29 = v47;
  sub_1D17419CC(v52, v28 + *(v47 + 20));
  sub_1D1741C08(v18, v16, &qword_1EC64CC00, &unk_1D1EA1FA0);
  v30 = v48;
  if ((*(v6 + 48))(v16, 1, v48) == 1)
  {
    sub_1D1741A30(v16, &qword_1EC64CC00, &unk_1D1EA1FA0);
    sub_1D17419CC(v52, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    v31 = v43;
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v50);
      sub_1D1741A30(v18, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v31, type metadata accessor for StaticActionSet);
      v32 = 1;
    }

    else
    {
      v35 = v53;
      v36 = v54;
      __swift_project_boxed_opaque_existential_1(v52, v53);
      v37 = (*(v36 + 120))(v35, v36);
      __swift_destroy_boxed_opaque_existential_1(v50);
      sub_1D1741A30(v18, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
      if (v37)
      {
        v32 = 2;
      }

      else
      {
        v32 = 3;
      }
    }

    v38 = v44;
    v45(v44, v32, 3, v30);
    sub_1D1C72E80(v38, v28 + *(v29 + 24), type metadata accessor for BoxedTileInfoBearer.TileSort);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v50);
    sub_1D1741A30(v18, &qword_1EC64CC00, &unk_1D1EA1FA0);
    sub_1D1741A30(v24, &qword_1EC642590, qword_1D1E71260);
    v33 = v41;
    sub_1D1C72E80(v16, v41, type metadata accessor for StaticUserActionPrediction);
    v34 = *(v29 + 24);
    sub_1D1C72E80(v33, v28 + v34, type metadata accessor for StaticUserActionPrediction);
    v45((v28 + v34), 0, 3, v30);
  }

  sub_1D1C72E80(v28, v49, type metadata accessor for BoxedTileInfoBearer);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_1D1C57980()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C57A08(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_1D1E676EC();
}

uint64_t sub_1D1C57A8C(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1C57B70(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v6, 0);
    v7 = v19;
    v8 = type metadata accessor for StaticCameraProfile(0);
    v9 = a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
    v10 = *(*(v8 - 8) + 72);
    v11 = sub_1D1C75134(&qword_1EC64C010, type metadata accessor for StaticCameraProfile, &protocol conformance descriptor for StaticCameraProfile);
    do
    {
      v18[3] = v8;
      v18[4] = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      sub_1D1C66B60(v9, boxed_opaque_existential_1, type metadata accessor for StaticCameraProfile);
      sub_1D17419CC(v18, v17);
      sub_1D1C572DC(v17, v5);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v19 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D178CD64((v13 > 1), v14 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v14 + 1;
      sub_1D1C72E80(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, type metadata accessor for BoxedTileInfoBearer);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D1C57DB8(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v6, 0);
    v7 = v19;
    v8 = type metadata accessor for StaticMediaSystem(0);
    v9 = a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
    v10 = *(*(v8 - 8) + 72);
    v11 = sub_1D1C75134(&qword_1EC64BFE8, type metadata accessor for StaticMediaSystem, &protocol conformance descriptor for StaticMediaSystem);
    do
    {
      v18[3] = v8;
      v18[4] = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      sub_1D1C66B60(v9, boxed_opaque_existential_1, type metadata accessor for StaticMediaSystem);
      sub_1D17419CC(v18, v17);
      sub_1D1C572DC(v17, v5);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v19 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D178CD64((v13 > 1), v14 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v14 + 1;
      sub_1D1C72E80(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, type metadata accessor for BoxedTileInfoBearer);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D1C58000(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v6, 0);
    v7 = v19;
    v8 = type metadata accessor for StaticActionSet(0);
    v9 = a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
    v10 = *(*(v8 - 8) + 72);
    v11 = sub_1D1C75134(&qword_1EC64C000, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
    do
    {
      v18[3] = v8;
      v18[4] = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      sub_1D1C66B60(v9, boxed_opaque_existential_1, type metadata accessor for StaticActionSet);
      sub_1D17419CC(v18, v17);
      sub_1D1C572DC(v17, v5);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v19 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D178CD64((v13 > 1), v14 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v14 + 1;
      sub_1D1C72E80(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, type metadata accessor for BoxedTileInfoBearer);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D1C58248(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v6, 0);
    v7 = v19;
    v8 = type metadata accessor for StaticMatterDevice(0);
    v9 = a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
    v10 = *(*(v8 - 8) + 72);
    v11 = sub_1D1C75134(&qword_1EC649258, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
    do
    {
      v18[3] = v8;
      v18[4] = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      sub_1D1C66B60(v9, boxed_opaque_existential_1, type metadata accessor for StaticMatterDevice);
      sub_1D17419CC(v18, v17);
      sub_1D1C572DC(v17, v5);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v19 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D178CD64((v13 > 1), v14 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v14 + 1;
      sub_1D1C72E80(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, type metadata accessor for BoxedTileInfoBearer);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D1C58490(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v6, 0);
    v7 = v19;
    v8 = type metadata accessor for StaticMediaProfile(0);
    v9 = a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
    v10 = *(*(v8 - 8) + 72);
    v11 = sub_1D1C75134(&qword_1EC64BFD0, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
    do
    {
      v18[3] = v8;
      v18[4] = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      sub_1D1C66B60(v9, boxed_opaque_existential_1, type metadata accessor for StaticMediaProfile);
      sub_1D17419CC(v18, v17);
      sub_1D1C572DC(v17, v5);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v19 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D178CD64((v13 > 1), v14 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v14 + 1;
      sub_1D1C72E80(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, type metadata accessor for BoxedTileInfoBearer);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D1C586D8(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D178CD64(0, v6, 0);
    v7 = v19;
    v8 = type metadata accessor for StaticAccessory(0);
    v9 = a1 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80));
    v10 = *(*(v8 - 8) + 72);
    v11 = sub_1D1C75134(&qword_1EC64BA18, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    do
    {
      v18[3] = v8;
      v18[4] = v11;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
      sub_1D1C66B60(v9, boxed_opaque_existential_1, type metadata accessor for StaticAccessory);
      sub_1D17419CC(v18, v17);
      sub_1D1C572DC(v17, v5);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v19 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D178CD64((v13 > 1), v14 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v14 + 1;
      sub_1D1C72E80(v5, v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v14, type metadata accessor for BoxedTileInfoBearer);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void sub_1D1C58920(uint64_t a1)
{
  v2 = type metadata accessor for BoxedTileInfoBearer(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - v7;
  v9 = sub_1D1919A08();
  v10 = sub_1D1C6CC64(&v25, a1, 0, 1, v9, type metadata accessor for BoxedTileInfoBearer, sub_1D1C6ED68, sub_1D1C6CDDC);
  v11 = *(a1 + 16);
  v12 = v25;
  if (v25 != v11)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 >= v25)
    {
      v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v14 = a1 + v13;
      sub_1D19060CC(a1, a1 + v13, 0, (2 * v25) | 1);
      v26 = v10;
      v27 = v15;
      if (*(a1 + 16) >= v11)
      {
        v24[1] = v10;
        v24[2] = a1;
        v16 = *(v3 + 72);

        while (1)
        {
          sub_1D1C66B60(v14 + v16 * v12, v8, type metadata accessor for BoxedTileInfoBearer);
          v17 = v26;
          v18 = v27 + v13;
          v19 = *(v27 + 16);
          if (v26)
          {

            sub_1D1C6E730(v8, v18, v19, (v17 + 16), v17 + 32);
            v21 = v20;
            v19 = v22;

            if ((v21 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else if (v19)
          {
            do
            {
              sub_1D1C66B60(v18, v6, type metadata accessor for BoxedTileInfoBearer);
              v23 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
              sub_1D1C72E20(v6, type metadata accessor for BoxedTileInfoBearer);
              if (v23)
              {
                goto LABEL_7;
              }

              v18 += v16;
            }

            while (--v19);
          }

          sub_1D1C6D608(v8, v19);
LABEL_7:
          ++v12;
          sub_1D1C72E20(v8, type metadata accessor for BoxedTileInfoBearer);
          if (v12 == v11)
          {

            return;
          }
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

void sub_1D1C58BE8(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v24 - v7;
  v9 = sub_1D1919A08();
  v10 = sub_1D1C6CC64(&v25, a1, 0, 1, v9, type metadata accessor for StaticService, sub_1D1C6F0D8, sub_1D1C6D0B4);
  v11 = *(a1 + 16);
  v12 = v25;
  if (v25 != v11)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 >= v25)
    {
      v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v14 = a1 + v13;
      sub_1D19060F4(a1, a1 + v13, 0, (2 * v25) | 1);
      v26 = v10;
      v27 = v15;
      if (*(a1 + 16) >= v11)
      {
        v24[1] = v10;
        v24[2] = a1;
        v16 = *(v3 + 72);

        while (1)
        {
          sub_1D1C66B60(v14 + v16 * v12, v8, type metadata accessor for StaticService);
          v17 = v26;
          v18 = v27 + v13;
          v19 = *(v27 + 16);
          if (v26)
          {

            sub_1D1C6E948(v8, v18, v19, (v17 + 16), v17 + 32);
            v21 = v20;
            v19 = v22;

            if ((v21 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else if (v19)
          {
            do
            {
              sub_1D1C66B60(v18, v6, type metadata accessor for StaticService);
              v23 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v6, v8);
              sub_1D1C72E20(v6, type metadata accessor for StaticService);
              if (v23)
              {
                goto LABEL_7;
              }

              v18 += v16;
            }

            while (--v19);
          }

          sub_1D1C6D858(v8, v19);
LABEL_7:
          ++v12;
          sub_1D1C72E20(v8, type metadata accessor for StaticService);
          if (v12 == v11)
          {

            return;
          }
        }
      }

LABEL_19:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_19;
  }
}

void sub_1D1C58EB0(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v27 - v7;
  v9 = sub_1D1919A08();
  v10 = sub_1D1C6CC64(&v32, a1, 0, 1, v9, MEMORY[0x1E69695A8], sub_1D1C6F3F4, sub_1D1C6D31C);
  v11 = *(a1 + 16);
  v12 = v32;
  if (v32 != v11)
  {
    if ((v32 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 >= v32)
    {
      v30 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v29 = a1 + v30;
      sub_1D19062C0(a1, a1 + v30, 0, (2 * v32) | 1);
      v33 = v10;
      v34 = v13;
      if (*(a1 + 16) >= v11)
      {
        v27[1] = v10;
        v27[2] = a1;
        v16 = *(v3 + 16);
        v15 = v3 + 16;
        v14 = v16;
        v31 = *(v15 + 56);
        v17 = (v15 - 8);

        v28 = v11;
        while (1)
        {
          v19 = v15;
          v14(v8, v29 + v31 * v12, v2);
          v20 = v33;
          v21 = v34 + v30;
          v22 = *(v34 + 16);
          if (v33)
          {

            sub_1D1C6EB18(v8, v21, v22, (v20 + 16), v20 + 32);
            v24 = v23;
            v18 = v25;

            if ((v24 & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          else
          {
            if (v22)
            {
              do
              {
                v14(v6, v21, v2);
                sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
                v26 = sub_1D1E6775C();
                (*v17)(v6, v2);
                if (v26)
                {
                  goto LABEL_8;
                }

                v21 += v31;
              }

              while (--v22);
            }

            v18 = 0;
          }

          sub_1D1C6DAA8(v8, v18);
LABEL_8:
          ++v12;
          (*v17)(v8, v2);
          v15 = v19;
          if (v12 == v28)
          {

            return;
          }
        }
      }

LABEL_20:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_20;
  }
}

uint64_t sub_1D1C59224@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D173FE74();

  *a1 = v2;
  return result;
}

uint64_t TileInfoBearerCollection.init(from:nativeMatterDevices:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v44 = a1;
  v4 = type metadata accessor for StaticAccessory(0);
  v5 = *(v4 - 1);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v41 - v15;
  v16 = type metadata accessor for TileInfoBearerCollection(0);
  *(a3 + v16[8]) = 0;
  *(a3 + v16[9]) = 78;
  *(a3 + v16[10]) = 0;
  *(a3 + v16[11]) = 0;
  *(a3 + v16[12]) = 0;
  v17 = v16[13];
  if (qword_1EC6423A8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    *(a3 + v17) = qword_1EC64C9A8;
    v18 = v16[14];
    v19 = qword_1EC642270;

    if (v19 != -1)
    {
      swift_once();
    }

    *(a3 + v18) = qword_1EC648718;
    sub_1D1C66B60(v44, a3, type metadata accessor for StateSnapshot);
    v42 = a3;
    v43 = v16;
    *(a3 + v16[5]) = v48;
    type metadata accessor for StateSnapshot(0);

    v21 = sub_1D1781AF4(v20);
    v16 = v21;
    v17 = v21 + 56;
    v22 = 1 << *(v21 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    a3 = v23 & *(v21 + 56);
    v24 = (v22 + 63) >> 6;

    v25 = 0;
    if (a3)
    {
      break;
    }

LABEL_8:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        v27 = v41;
        (*(v5 + 56))(v41, 1, 1, v4);
        goto LABEL_15;
      }

      a3 = *(v17 + 8 * v26);
      ++v25;
      if (a3)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
  }

  while (1)
  {
    v26 = v25;
LABEL_11:
    sub_1D1C66B60(*(v16 + 6) + *(v5 + 72) * (__clz(__rbit64(a3)) | (v26 << 6)), v10, type metadata accessor for StaticAccessory);
    sub_1D1C72E80(v10, v8, type metadata accessor for StaticAccessory);
    if (v8[*(v4 + 15)] == 1)
    {
      break;
    }

    a3 &= a3 - 1;
    sub_1D1C72E20(v8, type metadata accessor for StaticAccessory);
    v25 = v26;
    if (!a3)
    {
      goto LABEL_8;
    }
  }

  v27 = v41;
  sub_1D1C72E80(v8, v41, type metadata accessor for StaticAccessory);
  (*(v5 + 56))(v27, 0, 1, v4);
LABEL_15:

  v8 = sub_1D179ACDC(&unk_1F4D66098);
  v28 = v42;
  v10 = &qword_1EC6436C8;
  v16 = &unk_1D1E97C40;
  sub_1D1741C08(v27, v42 + v43[6], &qword_1EC6436C8, &unk_1D1E97C40);
  sub_1D1741C08(v27, v14, &qword_1EC6436C8, &unk_1D1E97C40);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_1D1741A30(v27, &qword_1EC6436C8, &unk_1D1E97C40);

    sub_1D1C72E20(v44, type metadata accessor for StateSnapshot);
    result = sub_1D1741A30(v14, &qword_1EC6436C8, &unk_1D1E97C40);
    v17 = 0;
    goto LABEL_144;
  }

  v4 = v14;
  v5 = sub_1D1C56820();
  sub_1D1C72E20(v14, type metadata accessor for StaticAccessory);
  v47 = *(v5 + 16);
  if (v47)
  {
    v17 = 0;
    v30 = 0;
    v45 = v5;
    v46 = v5 + 32;
    v48 = v8 + 56;
    a3 = "takeSnaphotsWhenBusy";
    while (v30 < *(v5 + 16))
    {
      v31 = *(v8 + 2);
      if (v31)
      {
        v14 = *(v46 + v30);
        sub_1D1E6920C();
        v49 = v14;
        ServiceKind.rawValue.getter();
        sub_1D1E678EC();

        v4 = v50;
        v32 = sub_1D1E6926C();
        v33 = -1 << v8[32];
        v10 = v32 & ~v33;
        if ((*&v48[(v10 >> 3) & 0xFFFFFFFFFFFFFF8] >> v10))
        {
          v34 = ~v33;
          while (1)
          {
            v35 = "takeSnaphotsWhenBusy";
            switch(*(*(v8 + 6) + v10))
            {
              case 1:
                v36 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 2:
                v36 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 3:
                v36 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 4:
                v36 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 5:
                v36 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 6:
                v36 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 7:
                v36 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 8:
                v36 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 9:
                v36 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0xA:
                v36 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0xB:
                v36 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0xC:
                v36 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0xD:
                v36 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0xE:
                v36 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0xF:
                v36 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x10:
                v36 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x11:
                v36 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x12:
                v36 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x13:
                v36 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x14:
                v36 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x15:
                v36 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x16:
                v36 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x17:
                v36 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x18:
                v36 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x19:
                v36 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x1A:
                v36 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x1B:
                v36 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x1C:
                v36 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x1D:
                v36 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x1E:
                v36 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x1F:
                v36 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x20:
                v36 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x21:
                v36 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x22:
                v36 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x23:
                v36 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x24:
                v36 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x25:
                v36 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x26:
                v36 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x27:
                v36 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x28:
                v36 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x29:
                v36 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x2A:
                v36 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x2B:
                v36 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x2C:
                v36 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x2D:
                v36 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x2E:
                v36 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x2F:
                v36 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x30:
                v36 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x31:
                v36 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x32:
                v36 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x33:
                v36 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_76;
              case 0x34:
                v36 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_76:
                v35 = v36 - 32;
                break;
              default:
                break;
            }

            v4 = (v35 | 0x8000000000000000);
            v37 = "takeSnaphotsWhenBusy";
            switch(v14)
            {
              case 1:
                v38 = "0000003E-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 2:
                v38 = "00000270-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 3:
                v38 = "000000BB-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 4:
                v38 = "0000008D-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 5:
                v38 = "00000096-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 6:
                v38 = "00000042-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 7:
                v38 = "00000110-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 8:
                v38 = "00000204-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 9:
                v38 = "00000097-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 10:
                v38 = "0000007F-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 11:
                v38 = "00000080-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 12:
                v38 = "00000129-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 13:
                v38 = "00000237-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 14:
                v38 = "00000081-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 15:
                v38 = "00000121-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 16:
                v38 = "00000040-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 17:
                v38 = "000000D7-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 18:
                v38 = "000000BA-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 19:
                v38 = "00000041-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 20:
                v38 = "000000BC-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 21:
                v38 = "000000BD-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 22:
                v38 = "00000082-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 23:
                v38 = "000000D9-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 24:
                v38 = "000000CF-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 25:
                v38 = "000000CC-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 26:
                v38 = "00000083-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 27:
                v38 = "00000084-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 28:
                v38 = "00000043-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 29:
                v38 = "00000044-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 30:
                v38 = "00000045-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 31:
                v38 = "00000112-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 32:
                v38 = "00000085-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 33:
                v38 = "00000086-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 34:
                v38 = "00000047-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 35:
                v38 = "0000007E-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 36:
                v38 = "000000B9-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 37:
                v38 = "00000087-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 38:
                v38 = "00000113-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 39:
                v38 = "00000088-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 40:
                v38 = "00000089-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 41:
                v38 = "00000049-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 42:
                v38 = "00000125-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 43:
                v38 = "00000122-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 44:
                v38 = "000000D8-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 45:
                v38 = "0000008A-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 46:
                v38 = "0000004A-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 47:
                v38 = "000000D0-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 48:
                v38 = "000000B7-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 49:
                v38 = "0000020A-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 50:
                v38 = "0000020F-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 51:
                v38 = "0000008B-0000-1000-8000-0026BB765291";
                goto LABEL_130;
              case 52:
                v38 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_130:
                v37 = v38 - 32;
                break;
              default:
                break;
            }

            v16 = (v37 | 0x8000000000000000);
            if (v4 == (v37 | 0x8000000000000000))
            {
              break;
            }

            v39 = sub_1D1E6904C();

            if (v39)
            {
              goto LABEL_137;
            }

            v10 = (v10 + 1) & v34;
            if (((*&v48[(v10 >> 3) & 0xFFFFFFFFFFFFFF8] >> v10) & 1) == 0)
            {
              v31 = 0;
              goto LABEL_138;
            }
          }

LABEL_137:
          v31 = 1;
LABEL_138:
          v5 = v45;
        }

        else
        {
          v31 = 0;
        }
      }

      v40 = __OFADD__(v17, v31);
      v17 += v31;
      if (v40)
      {
        goto LABEL_148;
      }

      if (++v30 == v47)
      {

        v27 = v41;
        v28 = v42;
        goto LABEL_143;
      }
    }

    goto LABEL_147;
  }

  v17 = 0;
LABEL_143:
  sub_1D1741A30(v27, &qword_1EC6436C8, &unk_1D1E97C40);
  result = sub_1D1C72E20(v44, type metadata accessor for StateSnapshot);
LABEL_144:
  *(v28 + v43[7]) = v17;
  return result;
}

uint64_t TileInfoBearerCollection.matterDeviceTypes(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TileInfoBearerCollection(0) + 56);

  *(v2 + v5) = a1;
  return sub_1D1C72E80(v2, a2, type metadata accessor for TileInfoBearerCollection);
}

uint64_t TileInfoBearerCollection.serviceKinds(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TileInfoBearerCollection(0) + 52);

  *(v2 + v5) = a1;
  return sub_1D1C72E80(v2, a2, type metadata accessor for TileInfoBearerCollection);
}

void sub_1D1C5A148()
{
  v43 = type metadata accessor for StaticService(0);
  v47 = *(v43 - 8);
  v1 = MEMORY[0x1EEE9AC00](v43);
  v40 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v37 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for StaticAccessory(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TileInfoBearerCollection(0);
  sub_1D1741C08(v0 + *(v12 + 24), v7, &qword_1EC6436C8, &unk_1D1E97C40);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC6436C8, &unk_1D1E97C40);
    sub_1D1C58BE8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1D1C72E80(v7, v11, type metadata accessor for StaticAccessory);
    v13 = sub_1D179ACDC(&unk_1F4D5EE00);
    MEMORY[0x1EEE9AC00](v13);
    v38 = v11;
    *(&v37 - 2) = v11;
    v15 = sub_1D17868B8(sub_1D1820ECC, (&v37 - 4), v14);
    v16 = v15;
    v46 = v15[2];
    if (v46)
    {
      v17 = 0;
      v18 = v13 + 56;
      v39 = MEMORY[0x1E69E7CC0];
      v41 = v15;
      v42 = v4;
      while (v17 < v16[2])
      {
        v19 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v20 = *(v47 + 72);
        sub_1D1C66B60(v16 + v19 + v20 * v17, v4, type metadata accessor for StaticService);
        if (*(v13 + 16))
        {
          v44 = v20;
          v45 = v19;
          v21 = v4[*(v43 + 104)];
          sub_1D1E6920C();
          v48 = v21;
          ServiceKind.rawValue.getter();
          sub_1D1E678EC();

          v22 = sub_1D1E6926C();
          v23 = -1 << *(v13 + 32);
          v24 = v22 & ~v23;
          if ((*(v18 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
          {
            v25 = ~v23;
            while (1)
            {
              v26 = "takeSnaphotsWhenBusy";
              switch(*(*(v13 + 48) + v24))
              {
                case 1:
                  v27 = "0000003E-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 2:
                  v27 = "00000270-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 3:
                  v27 = "000000BB-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 4:
                  v27 = "0000008D-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 5:
                  v27 = "00000096-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 6:
                  v27 = "00000042-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 7:
                  v27 = "00000110-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 8:
                  v27 = "00000204-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 9:
                  v27 = "00000097-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0xA:
                  v27 = "0000007F-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0xB:
                  v27 = "00000080-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0xC:
                  v27 = "00000129-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0xD:
                  v27 = "00000237-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0xE:
                  v27 = "00000081-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0xF:
                  v27 = "00000121-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x10:
                  v27 = "00000040-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x11:
                  v27 = "000000D7-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x12:
                  v27 = "000000BA-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x13:
                  v27 = "00000041-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x14:
                  v27 = "000000BC-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x15:
                  v27 = "000000BD-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x16:
                  v27 = "00000082-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x17:
                  v27 = "000000D9-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x18:
                  v27 = "000000CF-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x19:
                  v27 = "000000CC-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x1A:
                  v27 = "00000083-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x1B:
                  v27 = "00000084-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x1C:
                  v27 = "00000043-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x1D:
                  v27 = "00000044-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x1E:
                  v27 = "00000045-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x1F:
                  v27 = "00000112-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x20:
                  v27 = "00000085-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x21:
                  v27 = "00000086-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x22:
                  v27 = "00000047-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x23:
                  v27 = "0000007E-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x24:
                  v27 = "000000B9-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x25:
                  v27 = "00000087-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x26:
                  v27 = "00000113-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x27:
                  v27 = "00000088-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x28:
                  v27 = "00000089-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x29:
                  v27 = "00000049-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x2A:
                  v27 = "00000125-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x2B:
                  v27 = "00000122-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x2C:
                  v27 = "000000D8-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x2D:
                  v27 = "0000008A-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x2E:
                  v27 = "0000004A-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x2F:
                  v27 = "000000D0-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x30:
                  v27 = "000000B7-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x31:
                  v27 = "0000020A-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x32:
                  v27 = "0000020F-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x33:
                  v27 = "0000008B-0000-1000-8000-0026BB765291";
                  goto LABEL_64;
                case 0x34:
                  v27 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_64:
                  v26 = v27 - 32;
                  break;
                default:
                  break;
              }

              v28 = v26 | 0x8000000000000000;
              v29 = "takeSnaphotsWhenBusy";
              switch(v21)
              {
                case 1:
                  v30 = "0000003E-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 2:
                  v30 = "00000270-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 3:
                  v30 = "000000BB-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 4:
                  v30 = "0000008D-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 5:
                  v30 = "00000096-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 6:
                  v30 = "00000042-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 7:
                  v30 = "00000110-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 8:
                  v30 = "00000204-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 9:
                  v30 = "00000097-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 10:
                  v30 = "0000007F-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 11:
                  v30 = "00000080-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 12:
                  v30 = "00000129-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 13:
                  v30 = "00000237-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 14:
                  v30 = "00000081-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 15:
                  v30 = "00000121-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 16:
                  v30 = "00000040-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 17:
                  v30 = "000000D7-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 18:
                  v30 = "000000BA-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 19:
                  v30 = "00000041-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 20:
                  v30 = "000000BC-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 21:
                  v30 = "000000BD-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 22:
                  v30 = "00000082-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 23:
                  v30 = "000000D9-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 24:
                  v30 = "000000CF-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 25:
                  v30 = "000000CC-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 26:
                  v30 = "00000083-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 27:
                  v30 = "00000084-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 28:
                  v30 = "00000043-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 29:
                  v30 = "00000044-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 30:
                  v30 = "00000045-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 31:
                  v30 = "00000112-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 32:
                  v30 = "00000085-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 33:
                  v30 = "00000086-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 34:
                  v30 = "00000047-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 35:
                  v30 = "0000007E-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 36:
                  v30 = "000000B9-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 37:
                  v30 = "00000087-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 38:
                  v30 = "00000113-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 39:
                  v30 = "00000088-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 40:
                  v30 = "00000089-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 41:
                  v30 = "00000049-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 42:
                  v30 = "00000125-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 43:
                  v30 = "00000122-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 44:
                  v30 = "000000D8-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 45:
                  v30 = "0000008A-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 46:
                  v30 = "0000004A-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 47:
                  v30 = "000000D0-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 48:
                  v30 = "000000B7-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 49:
                  v30 = "0000020A-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 50:
                  v30 = "0000020F-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 51:
                  v30 = "0000008B-0000-1000-8000-0026BB765291";
                  goto LABEL_118;
                case 52:
                  v30 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_118:
                  v29 = v30 - 32;
                  break;
                default:
                  break;
              }

              if (v28 == (v29 | 0x8000000000000000))
              {
                break;
              }

              v31 = sub_1D1E6904C();

              if (v31)
              {
                goto LABEL_124;
              }

              v24 = (v24 + 1) & v25;
              if (((*(v18 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
              {
                goto LABEL_122;
              }
            }

LABEL_124:
            v4 = v42;
            sub_1D1C72E80(v42, v40, type metadata accessor for StaticService);
            v32 = v39;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v49 = v32;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D17915E0(0, *(v32 + 16) + 1, 1);
              v32 = v49;
            }

            v34 = v44;
            v36 = *(v32 + 16);
            v35 = *(v32 + 24);
            if (v36 >= v35 >> 1)
            {
              sub_1D17915E0(v35 > 1, v36 + 1, 1);
              v32 = v49;
            }

            *(v32 + 16) = v36 + 1;
            v39 = v32;
            sub_1D1C72E80(v40, v32 + v45 + v36 * v34, type metadata accessor for StaticService);
          }

          else
          {
LABEL_122:
            v4 = v42;
            sub_1D1C72E20(v42, type metadata accessor for StaticService);
          }

          v16 = v41;
        }

        else
        {
          sub_1D1C72E20(v4, type metadata accessor for StaticService);
        }

        if (++v17 == v46)
        {
          goto LABEL_131;
        }
      }

      __break(1u);
    }

    else
    {
      v39 = MEMORY[0x1E69E7CC0];
LABEL_131:

      sub_1D1C58BE8(v39);
      sub_1D1C72E20(v38, type metadata accessor for StaticAccessory);
    }
  }
}

BOOL sub_1D1C5ABF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TileInfoBearerCollection(0);
  if ((*(a2 + *(v7 + 36)) & 6) == 2 && (StaticServiceGroup.canBeToggled.getter() & 1) == 0)
  {
    return 0;
  }

  if (*(a2 + *(v7 + 44)))
  {
    return 1;
  }

  sub_1D1C66B60(a1, v6, type metadata accessor for StaticServiceGroup);
  v9 = *&v6[*(v4 + 56)];
  v10 = v9[2];
  if (v10)
  {
    v11 = sub_1D18042C8(v9[2], 0);
    v12 = *(type metadata accessor for StaticService(0) - 8);
    v17 = sub_1D1804A58(&v16, v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v10, v9);
    v13 = v16;

    sub_1D1716918(v13);
    if (v17 != v10)
    {
      __break(1u);
      return 0;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  sub_1D1C72E20(v6, type metadata accessor for StaticServiceGroup);
  v14 = v11[2];

  return v14 != 0;
}

uint64_t sub_1D1C5ADDC(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = sub_1D1804340(a1[2], 0);
    v4 = *(type metadata accessor for StaticServiceGroup(0) - 8);
    v5 = sub_1D1804A18(&v11, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, a1);
    v6 = v11;

    sub_1D1716918(v6);
    if (v5 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v7 = sub_1D1919A08();
  v8 = sub_1D1C6DDB4(v3, 0, 1, v7, sub_1D1C6E060);
  v9 = v3[2];

  if (v9 <= 0xF)
  {

    return 0;
  }

  return v8;
}

void sub_1D1C5AF24()
{
  v1 = type metadata accessor for StaticService(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for StaticServiceGroup(0);
  v9 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v62 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StateSnapshot(0);

  v12 = sub_1D1781F7C(v11);
  v66 = v0;
  v13 = sub_1D1B51F30(sub_1D1C754EC, v65, v12);
  v49 = sub_1D1C5ADDC(v13);
  v53 = *(v14 + 16);
  if (!v53)
  {

    v16 = MEMORY[0x1E69E7CC0];
LABEL_37:

    sub_1D1C58EB0(v16);
    return;
  }

  v15 = 0;
  v52 = v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v63 = v6 + 32;
  v64 = (v6 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v60 = v2;
  v50 = v9;
  v51 = v14;
  while (v15 < *(v14 + 16))
  {
    v18 = *(v9 + 72);
    v61 = v15;
    v19 = v62;
    sub_1D1C66B60(v52 + v18 * v15, v62, type metadata accessor for StaticServiceGroup);
    v20 = *(v19 + *(v54 + 56));
    v21 = v20[2];
    if (v21)
    {
      v59 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643258, &qword_1D1E716B0);
      v22 = *(v2 + 72);
      v23 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v24 = swift_allocObject();
      v25 = _swift_stdlib_malloc_size(v24);
      if (!v22)
      {
        goto LABEL_41;
      }

      if (v25 - v23 == 0x8000000000000000 && v22 == -1)
      {
        goto LABEL_45;
      }

      v27 = v16;
      v28 = v8;
      v29 = v5;
      v30 = 2 * ((v25 - v23) / v22);
      v31 = v24;
      v24[2] = v21;
      v24[3] = v30;
      v32 = sub_1D1804A58(v67, v24 + v23, v21, v59);
      v33 = v67[0];
      v57 = v67[1];
      v58 = v32;
      v55 = v67[4];
      v56 = v67[3];

      sub_1D1716918(v33);
      if (v58 != v21)
      {
        goto LABEL_42;
      }

      v5 = v29;
      v8 = v28;
      v16 = v27;
      v2 = v60;
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    sub_1D1C72E20(v62, type metadata accessor for StaticServiceGroup);
    v34 = v31[2];
    if (v34)
    {
      v59 = v16;
      v67[0] = MEMORY[0x1E69E7CC0];
      sub_1D178CEFC(0, v34, 0);
      v35 = v67[0];
      v36 = *(v2 + 80);
      v58 = v31;
      v37 = v31 + ((v36 + 32) & ~v36);
      v38 = *(v2 + 72);
      do
      {
        sub_1D1C66B60(v37, v4, type metadata accessor for StaticService);
        (*v64)(v8, v4, v5);
        sub_1D1C72E20(v4, type metadata accessor for StaticService);
        v67[0] = v35;
        v40 = *(v35 + 16);
        v39 = *(v35 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1D178CEFC((v39 > 1), v40 + 1, 1);
          v35 = v67[0];
        }

        *(v35 + 16) = v40 + 1;
        (*(v6 + 32))(v35 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v40, v8, v5);
        v37 += v38;
        --v34;
      }

      while (v34);

      v16 = v59;
      v2 = v60;
    }

    else
    {

      v35 = MEMORY[0x1E69E7CC0];
    }

    v41 = *(v35 + 16);
    v42 = v16[2];
    v43 = v42 + v41;
    if (__OFADD__(v42, v41))
    {
      goto LABEL_39;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v43 <= v16[3] >> 1)
    {
      if (*(v35 + 16))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v42 <= v43)
      {
        v45 = v42 + v41;
      }

      else
      {
        v45 = v42;
      }

      v16 = sub_1D177D0AC(isUniquelyReferenced_nonNull_native, v45, 1, v16);
      if (*(v35 + 16))
      {
LABEL_31:
        if ((v16[3] >> 1) - v16[2] < v41)
        {
          goto LABEL_43;
        }

        swift_arrayInitWithCopy();

        v14 = v51;
        v17 = v61;
        if (v41)
        {
          v46 = v16[2];
          v47 = __OFADD__(v46, v41);
          v48 = v46 + v41;
          if (v47)
          {
            goto LABEL_44;
          }

          v16[2] = v48;
        }

        goto LABEL_4;
      }
    }

    v14 = v51;
    v17 = v61;
    if (v41)
    {
      goto LABEL_40;
    }

LABEL_4:
    v15 = v17 + 1;
    v9 = v50;
    if (v15 == v53)
    {

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_39:
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
}

uint64_t sub_1D1C5B538()
{
  v1 = v0;
  v169[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v156 = v140 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v159 = v140 - v5;
  v6 = type metadata accessor for StaticService(0);
  v162 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v164 = v140 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v140 - v9;
  v11 = type metadata accessor for StaticAccessory(0);
  v12 = *(v11 - 8);
  v157 = v11;
  v158 = v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v140[0] = v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v153 = v140 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v149 = v140 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v140 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v155 = v140 - v22;
  type metadata accessor for StateSnapshot(0);
  v142 = v1;

  v24 = sub_1D1781AF4(v23);
  v25 = *(v24 + 32);
  LODWORD(v1) = v25 & 0x3F;
  v26 = ((1 << v25) + 63) >> 6;
  v27 = 8 * v26;

  v161 = v6;
  v148 = v10;
  if (v1 > 0xD)
  {
    goto LABEL_144;
  }

  while (2)
  {
    v165 = v140;
    v166 = v26;
    MEMORY[0x1EEE9AC00](v28);
    v29 = v140 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v27);
    v167 = 0;
    v6 = 0;
    v30 = 1 << *(v24 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & *(v24 + 56);
    v10 = (v30 + 63) >> 6;
    v27 = v155;
    while (v32)
    {
      v33 = __clz(__rbit64(v32));
      v32 &= v32 - 1;
LABEL_12:
      v26 = v33 | (v6 << 6);
      sub_1D1C66B60(*(v24 + 48) + *(v158 + 72) * v26, v27, type metadata accessor for StaticAccessory);
      v36 = *(v27 + v157[15]);
      sub_1D1C72E20(v27, type metadata accessor for StaticAccessory);
      if ((v36 & 1) == 0)
      {
        *&v29[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
        v37 = __OFADD__(v167++, 1);
        if (v37)
        {
          __break(1u);
          goto LABEL_16;
        }
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        goto LABEL_138;
      }

      if (v6 >= v10)
      {
        break;
      }

      v35 = *(v24 + 56 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v32 = (v35 - 1) & v35;
        goto LABEL_12;
      }
    }

LABEL_16:
    v38 = sub_1D19E09A0(v29, v166, v167, v24);

    v152 = 0;
    v6 = v161;
    v10 = v148;
LABEL_17:
    v39 = *(v38 + 32);
    v40 = v39 & 0x3F;
    v26 = ((1 << v39) + 63) >> 6;
    v27 = 8 * v26;

    if (v40 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v128 = swift_slowAlloc();
        v129 = v26;
        v130 = v152;
        v53 = sub_1D1BCEE34(v128, v129, v38, sub_1D1BCD780, 0);
        v152 = v130;

        MEMORY[0x1D3893640](v128, -1, -1);
        goto LABEL_39;
      }
    }

    v166 = v140;
    v167 = v26;
    MEMORY[0x1EEE9AC00](v41);
    v24 = v140 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v24, v27);
    v27 = 0;
    v10 = 0;
    v42 = 1 << *(v38 + 32);
    v43 = -1;
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    v44 = v43 & *(v38 + 56);
    v6 = (v42 + 63) >> 6;
    while (v44)
    {
      v45 = __clz(__rbit64(v44));
      v44 &= v44 - 1;
LABEL_29:
      v26 = v45 | (v10 << 6);
      sub_1D1C66B60(*(v38 + 48) + *(v158 + 72) * v26, v21, type metadata accessor for StaticAccessory);
      if (*(v21 + v157[27]) == 1)
      {
        sub_1D1C72E20(v21, type metadata accessor for StaticAccessory);
LABEL_35:
        *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        v37 = __OFADD__(v27++, 1);
        if (v37)
        {
          __break(1u);
          goto LABEL_38;
        }
      }

      else
      {
        StaticAccessory.staticServicesExcludingComponents.getter();
        v49 = *(v48 + 16);

        if (v49 >= 2 && (StaticAccessory.visibleStaticServices.getter(), v51 = *(v50 + 16), , v51))
        {
          v52 = *(v21 + v157[19]);
          sub_1D1C72E20(v21, type metadata accessor for StaticAccessory);
          if ((v52 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          sub_1D1C72E20(v21, type metadata accessor for StaticAccessory);
        }
      }
    }

    v46 = v10;
    while (1)
    {
      v10 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_139;
      }

      if (v10 >= v6)
      {
        break;
      }

      v47 = *(v38 + 56 + 8 * v10);
      ++v46;
      if (v47)
      {
        v45 = __clz(__rbit64(v47));
        v44 = (v47 - 1) & v47;
        goto LABEL_29;
      }
    }

LABEL_38:
    v53 = sub_1D19E09A0(v24, v167, v27, v38);
    v6 = v161;
    v10 = v148;
LABEL_39:

    v54 = *(v53 + 32);
    v55 = v54 & 0x3F;
    v141 = ((1 << v54) + 63) >> 6;
    v56 = 8 * v141;

    v26 = v149;
    if (v55 > 0xD)
    {

      if (!swift_stdlib_isStackAllocationSafe())
      {
        v131 = swift_slowAlloc();
        v132 = v152;
        v21 = sub_1D1BCEE34(v131, v141, v53, sub_1D1BCE418, 0);
        v152 = v132;

        MEMORY[0x1D3893640](v131, -1, -1);
        goto LABEL_76;
      }
    }

    v140[1] = v140;
    MEMORY[0x1EEE9AC00](v57);
    v143 = v140 - ((v56 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v143, v56);
    v144 = 0;
    v58 = 0;
    v21 = v53 + 56;
    v59 = 1 << *(v53 + 32);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    v61 = v60 & *(v53 + 56);
    v24 = (v59 + 63) >> 6;
    v165 = 0x80000001D1EB3580;
    v147 = v53;
    v146 = v53 + 56;
    v145 = v24;
    while (1)
    {
LABEL_44:
      if (v61)
      {
        v62 = __clz(__rbit64(v61));
        v154 = (v61 - 1) & v61;
      }

      else
      {
        v63 = v58;
        do
        {
          v58 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            goto LABEL_140;
          }

          if (v58 >= v24)
          {
            goto LABEL_75;
          }

          v64 = *(v21 + 8 * v58);
          ++v63;
        }

        while (!v64);
        v62 = __clz(__rbit64(v64));
        v154 = (v64 - 1) & v64;
      }

      v65 = v62 | (v58 << 6);
      v66 = *(v53 + 48);
      v67 = *(v158 + 72);
      v151 = v65;
      sub_1D1C66B60(v66 + v67 * v65, v26, type metadata accessor for StaticAccessory);
      if (*(v26 + v157[26]) != 1)
      {
        break;
      }

      sub_1D1C72E20(v26, type metadata accessor for StaticAccessory);
      v61 = v154;
    }

    v150 = v58;
    v21 = v26;
    StaticAccessory.staticServicesExcludingComponents.getter();
    v26 = v68;
    v163 = *(v68 + 16);
    if (v163)
    {
      v69 = 0;
      v24 = MEMORY[0x1E69E7CC0];
      v160 = v68;
      while (1)
      {
        if (v69 >= *(v26 + 16))
        {
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

        v70 = (*(v162 + 80) + 32) & ~*(v162 + 80);
        v71 = *(v162 + 72);
        sub_1D1C66B60(v26 + v70 + v71 * v69, v10, type metadata accessor for StaticService);
        v168 = *(v10 + *(v6 + 104));
        if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v165 == v72)
        {
        }

        else
        {
          v21 = v72;
          v73 = sub_1D1E6904C();

          if ((v73 & 1) == 0)
          {
            sub_1D1C72E20(v10, type metadata accessor for StaticService);
            goto LABEL_55;
          }
        }

        v166 = v71;
        v167 = v70;
        v74 = v10 + *(v6 + 116);
        v75 = v159;
        v27 = &qword_1EC642590;
        sub_1D1741C08(v74, v159, &qword_1EC642590, qword_1D1E71260);
        v21 = sub_1D1E66A7C();
        v76 = *(*(v21 - 8) + 48);
        v77 = v76(v75, 1, v21);
        sub_1D1741A30(v75, &qword_1EC642590, qword_1D1E71260);
        if (v77 != 1)
        {
          goto LABEL_65;
        }

        v6 = v161;
        v78 = v156;
        sub_1D1741C08(v10 + *(v161 + 148), v156, &qword_1EC642590, qword_1D1E71260);
        if (v76(v78, 1, v21) != 1)
        {
          sub_1D1741A30(v78, &qword_1EC642590, qword_1D1E71260);
LABEL_65:
          sub_1D1C72E80(v10, v164, type metadata accessor for StaticService);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v169[0] = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v21 = v169;
            sub_1D17915E0(0, *(v24 + 16) + 1, 1);
            v24 = v169[0];
          }

          v26 = v160;
          v6 = v161;
          v27 = v166;
          v80 = v167;
          v82 = *(v24 + 16);
          v81 = *(v24 + 24);
          if (v82 >= v81 >> 1)
          {
            v21 = v169;
            sub_1D17915E0(v81 > 1, v82 + 1, 1);
            v24 = v169[0];
          }

          *(v24 + 16) = v82 + 1;
          sub_1D1C72E80(v164, v24 + v80 + v82 * v27, type metadata accessor for StaticService);
          goto LABEL_55;
        }

        sub_1D1C72E20(v10, type metadata accessor for StaticService);
        sub_1D1741A30(v78, &qword_1EC642590, qword_1D1E71260);
        v26 = v160;
LABEL_55:
        if (v163 == ++v69)
        {
          goto LABEL_71;
        }
      }
    }

    v24 = MEMORY[0x1E69E7CC0];
LABEL_71:

    v83 = *(v24 + 16);

    v26 = v149;
    sub_1D1C72E20(v149, type metadata accessor for StaticAccessory);
    v53 = v147;
    v21 = v146;
    v58 = v150;
    v24 = v145;
    v61 = v154;
    if (v83)
    {
      goto LABEL_44;
    }

    *&v143[(v151 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v151;
    v37 = __OFADD__(v144++, 1);
    if (!v37)
    {
      goto LABEL_44;
    }

    __break(1u);
LABEL_75:
    v21 = sub_1D19E09A0(v143, v141, v144, v53);
LABEL_76:

    v84 = *(v21 + 32);
    v85 = v84 & 0x3F;
    v86 = ((1 << v84) + 63) >> 6;
    v87 = 8 * v86;

    if (v85 > 0xD)
    {

      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_77;
      }

      v133 = swift_slowAlloc();
      v134 = v152;
      v98 = sub_1D1BCEE34(v133, v86, v21, sub_1D1BCD3DC, 0);
      v152 = v134;

      MEMORY[0x1D3893640](v133, -1, -1);
    }

    else
    {
LABEL_77:
      v166 = v140;
      v167 = v86;
      MEMORY[0x1EEE9AC00](v88);
      v26 = v140 - ((v87 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v26, v87);
      v89 = 0;
      v27 = 0;
      v24 = v21 + 56;
      v90 = 1 << *(v21 + 32);
      v91 = -1;
      if (v90 < 64)
      {
        v91 = ~(-1 << v90);
      }

      v10 = v91 & *(v21 + 56);
      v6 = (v90 + 63) >> 6;
      while (1)
      {
        if (v10)
        {
          v92 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
        }

        else
        {
          v93 = v27;
          do
          {
            v27 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              goto LABEL_141;
            }

            if (v27 >= v6)
            {
              goto LABEL_91;
            }

            v94 = *(v24 + 8 * v27);
            ++v93;
          }

          while (!v94);
          v92 = __clz(__rbit64(v94));
          v10 = (v94 - 1) & v94;
        }

        v95 = v92 | (v27 << 6);
        v96 = v155;
        sub_1D1C66B60(*(v21 + 48) + *(v158 + 72) * v95, v155, type metadata accessor for StaticAccessory);
        v97 = *(v96 + v157[37]);
        sub_1D1C72E20(v96, type metadata accessor for StaticAccessory);
        if ((v97 & 1) == 0)
        {
          *(v26 + ((v95 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v95;
          v37 = __OFADD__(v89++, 1);
          if (v37)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_91:
      v98 = sub_1D19E09A0(v26, v167, v89, v21);
    }

    v99 = *(v142 + *(type metadata accessor for TileInfoBearerCollection(0) + 36));
    if ((v99 & 8) == 0)
    {
      v100 = *(v98 + 32);
      v21 = v100 & 0x3F;
      v101 = ((1 << v100) + 63) >> 6;
      v102 = 8 * v101;

      if (v21 <= 0xD)
      {
        goto LABEL_94;
      }

      if (swift_stdlib_isStackAllocationSafe())
      {

LABEL_94:
        v166 = v140;
        v167 = v101;
        MEMORY[0x1EEE9AC00](v103);
        v26 = v140 - ((v102 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v26, v102);
        v104 = 0;
        v6 = 0;
        v105 = 1 << *(v98 + 32);
        v106 = -1;
        if (v105 < 64)
        {
          v106 = ~(-1 << v105);
        }

        v27 = v106 & *(v98 + 56);
        v10 = (v105 + 63) >> 6;
        while (v27)
        {
          v107 = __clz(__rbit64(v27));
          v27 &= v27 - 1;
LABEL_106:
          v24 = v107 | (v6 << 6);
          v21 = v153;
          sub_1D1C66B60(*(v98 + 48) + *(v158 + 72) * v24, v153, type metadata accessor for StaticAccessory);
          v110 = v21 + v157[23];
          v111 = *(v110 + 8);
          if (v111 <= 1)
          {
LABEL_98:
            sub_1D1C72E20(v153, type metadata accessor for StaticAccessory);
            continue;
          }

          if (v111 != 2)
          {
            if (v111 == 3)
            {
              goto LABEL_98;
            }

            sub_1D1C72E20(v153, type metadata accessor for StaticAccessory);
LABEL_112:
            *(v26 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
            v37 = __OFADD__(v104++, 1);
            if (v37)
            {
              __break(1u);
LABEL_115:
              v112 = sub_1D19E09A0(v26, v167, v104, v98);
              goto LABEL_116;
            }

            continue;
          }

          v21 = *v110;
          if ((*v110 & 1) == 0)
          {
            goto LABEL_98;
          }

          sub_1D1C72E20(v153, type metadata accessor for StaticAccessory);
          if ((v21 & 0x100) == 0)
          {
            goto LABEL_112;
          }
        }

        v108 = v6;
        while (1)
        {
          v6 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            break;
          }

          if (v6 >= v10)
          {
            goto LABEL_115;
          }

          v109 = *(v98 + 56 + 8 * v6);
          ++v108;
          if (v109)
          {
            v107 = __clz(__rbit64(v109));
            v27 = (v109 - 1) & v109;
            goto LABEL_106;
          }
        }

LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:

        if (swift_stdlib_isStackAllocationSafe())
        {

          continue;
        }

        v127 = swift_slowAlloc();
        v38 = sub_1D1BCEE34(v127, v26, v24, sub_1D1BCC3E4, 0);
        v152 = 0;

        MEMORY[0x1D3893640](v127, -1, -1);

        goto LABEL_17;
      }

      v135 = swift_slowAlloc();
      v136 = v101;
      v137 = v152;
      v112 = sub_1D1BCEE34(v135, v136, v98, sub_1D1BCDBB4, 0);
      v152 = v137;

      MEMORY[0x1D3893640](v135, -1, -1);
LABEL_116:

      v98 = v112;
    }

    break;
  }

  if ((v99 & 0x20) != 0)
  {
    return v98;
  }

  v113 = *(v98 + 32);
  v21 = v113 & 0x3F;
  v114 = ((1 << v113) + 63) >> 6;
  v26 = 8 * v114;

  if (v21 <= 0xD)
  {
    goto LABEL_119;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_119:
    v165 = v140;
    v166 = v114;
    MEMORY[0x1EEE9AC00](v115);
    v116 = v140 - ((v26 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v116, v26);
    v167 = 0;
    v10 = 0;
    v27 = v98 + 56;
    v117 = 1 << *(v98 + 32);
    v118 = -1;
    if (v117 < 64)
    {
      v118 = ~(-1 << v117);
    }

    v119 = v118 & *(v98 + 56);
    v6 = (v117 + 63) >> 6;
    v120 = v140[0];
    while (v119)
    {
      v121 = __clz(__rbit64(v119));
      v119 &= v119 - 1;
LABEL_129:
      v21 = v121 | (v10 << 6);
      sub_1D1C66B60(*(v98 + 48) + *(v158 + 72) * v21, v120, type metadata accessor for StaticAccessory);
      v26 = v152;
      v124 = sub_1D1BCC724(v120);
      v152 = v26;
      if (v26)
      {
        sub_1D1C72E20(v120, type metadata accessor for StaticAccessory);

        swift_willThrow();
        __break(1u);
        goto LABEL_164;
      }

      v24 = v124;
      sub_1D1C72E20(v120, type metadata accessor for StaticAccessory);
      if (v24)
      {
        *&v116[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
        v37 = __OFADD__(v167++, 1);
        if (v37)
        {
          __break(1u);
LABEL_134:
          v125 = sub_1D19E073C(v116, v166, v167, v98);
          goto LABEL_135;
        }
      }
    }

    v122 = v10;
    while (1)
    {
      v10 = v122 + 1;
      if (__OFADD__(v122, 1))
      {
        goto LABEL_143;
      }

      if (v10 >= v6)
      {
        goto LABEL_134;
      }

      v123 = *(v27 + 8 * v10);
      ++v122;
      if (v123)
      {
        v121 = __clz(__rbit64(v123));
        v119 = (v123 - 1) & v123;
        goto LABEL_129;
      }
    }
  }

  v116 = swift_slowAlloc();
  v138 = v152;
  v139 = sub_1D1BCEE08(v116, v114, v98, sub_1D1BCC724, 0);
  if (!v138)
  {
    v125 = v139;

    MEMORY[0x1D3893640](v116, -1, -1);
LABEL_135:

    return v125;
  }

LABEL_164:

  result = MEMORY[0x1D3893640](v116, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1D1C5CA00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TileInfoBearerCollection(0);
  v5 = *(a1 + *(type metadata accessor for StaticMatterDevice(0) + 32));
  if (*(v5 + 16))
  {
    v6 = sub_1D1A46E30(*(a2 + *(v4 + 56)), v5) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

BOOL sub_1D1C5CA74(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  if ((*(a2 + *(type metadata accessor for TileInfoBearerCollection(0) + 36)) & 6) == 2)
  {
    if (!StaticAccessory.hasVisibleServices(minCount:)(2))
    {
      StaticAccessory.primaryStaticService.getter(v5);
      v6 = type metadata accessor for StaticService(0);
      if ((*(*(v6 - 8) + 48))(v5, 1, v6) != 1)
      {
        v7 = StaticService.canBeToggled.getter();
        sub_1D1C72E20(v5, type metadata accessor for StaticService);
        return v7;
      }

      sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

BOOL sub_1D1C5CBC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + *(type metadata accessor for TileInfoBearerCollection(0) + 52));
  v3 = sub_1D1C56820();
  v4 = sub_1D1929F38(v3, v2);

  return (v4 & 1) == 0;
}

uint64_t sub_1D1C5CC2C()
{
  sub_1D1C5AF24();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for StateSnapshot(0);

  v7 = sub_1D1781D38(v6);

  v8 = sub_1D1C70794(v7, v2, v4);

  v30 = v0;
  v9 = sub_1D1B52268(sub_1D1C75238, v29, v8);
  v28 = v0;
  v10 = sub_1D1B52268(sub_1D1C75258, v27, v9);
  v26 = v0;
  v11 = sub_1D1B52268(sub_1D1C75278, v25, v10);
  v12 = v0 + *(v5 + 20);
  v13 = *(v12 + *(type metadata accessor for StaticHome(0) + 60));
  v14 = v11[2];
  if (!v14)
  {

    v15 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v31[0] = v15;

    sub_1D1D235D8(v31, v13);

    v19 = swift_bridgeObjectRelease_n();
    v20 = v31[0];
    MEMORY[0x1EEE9AC00](v19);
    v23[2] = v0;
    v21 = sub_1D18922DC(sub_1D1C752DC, v23, v20);

    return v21;
  }

  v23[4] = 0;
  v23[5] = v4;
  v23[6] = v2;
  v15 = sub_1D18042C8(v14, 0);
  v16 = *(type metadata accessor for StaticService(0) - 8);
  v24 = sub_1D1804A98(v31, v15 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v14, v11);
  v17 = v31[0];
  v18 = v31[4];

  sub_1D1716918(v17);
  if (v24 == v14)
  {
    goto LABEL_5;
  }

  __break(1u);
  swift_bridgeObjectRelease_n();

  __break(1u);
  return result;
}

BOOL sub_1D1C5CEE0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StaticAccessory(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - v8;
  v10 = *(a2 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (*(v10 + 16))
  {
    type metadata accessor for StaticService(0);
    v11 = sub_1D1742188();
    if (v12)
    {
      sub_1D1C66B60(*(v10 + 56) + *(v4 + 72) * v11, v7, type metadata accessor for StaticAccessory);
      sub_1D1C72E80(v7, v9, type metadata accessor for StaticAccessory);
      StaticAccessory.staticServicesExcludingComponents.getter();
      v14 = *(v13 + 16);

      if (v14 != 1 && v9[*(v3 + 76)] != 1)
      {
        StaticAccessory.visibleStaticServices.getter();
        v17 = v16;
        sub_1D1C72E20(v9, type metadata accessor for StaticAccessory);
        v18 = *(v17 + 16);

        return v18 == 0;
      }

      sub_1D1C72E20(v9, type metadata accessor for StaticAccessory);
    }
  }

  return 1;
}

uint64_t sub_1D1C5D0C0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643218, &qword_1D1E71670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E6F900;
  *(inited + 32) = !StaticService.isBridgedValveService.getter();
  if (qword_1EE07AB30 != -1)
  {
    swift_once();
  }

  v5 = off_1EE07AB38;
  v6 = *(type metadata accessor for StaticService(0) + 104);
  *(inited + 33) = (sub_1D171951C(*(a1 + v6), v5) & 1) == 0;
  v7 = type metadata accessor for TileInfoBearerCollection(0);
  v8 = sub_1D171951C(*(a1 + v6), *(a2 + *(v7 + 52)));
  *(inited + 34) = v8 & 1;
  if (*(inited + 32) == 1)
  {
    v9 = *(inited + 33) & v8;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D1C5D1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a3;
  v60 = type metadata accessor for StaticActionSet(0);
  MEMORY[0x1EEE9AC00](v60);
  v65 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticUserActionPrediction(0);
  v70 = *(v8 - 8);
  v71 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66A7C();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for BoxedTileInfoBearer(0);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC00, &unk_1D1EA1FA0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v64 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v69 = &v56 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v56 - v22;
  v23 = type metadata accessor for StaticAccessory(0);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v56 - v28;
  v30 = *(a2 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (!*(v30 + 16))
  {
    goto LABEL_7;
  }

  v58 = type metadata accessor for StaticService(0);
  v31 = sub_1D1742188();
  if ((v32 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1D1C66B60(*(v30 + 56) + *(v24 + 72) * v31, v27, type metadata accessor for StaticAccessory);
  sub_1D1C72E80(v27, v29, type metadata accessor for StaticAccessory);
  if (v29[*(v23 + 76)] & 1) != 0 || (StaticAccessory.staticServicesExcludingComponents.getter(), v34 = *(v33 + 16), , v34 < 2) || (*(a2 + *(type metadata accessor for TileInfoBearerCollection(0) + 32)))
  {
    sub_1D1C72E20(v29, type metadata accessor for StaticAccessory);
LABEL_7:
    v75 = type metadata accessor for StaticService(0);
    v76 = sub_1D1C75134(&qword_1EC646AF0, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
    sub_1D1C66B60(a1, boxed_opaque_existential_1, type metadata accessor for StaticService);
    return sub_1D1C572DC(v74, v72);
  }

  v75 = v58;
  v76 = sub_1D1C75134(&qword_1EC646AF0, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  v37 = __swift_allocate_boxed_opaque_existential_1(v74);
  sub_1D1C66B60(a1, v37, type metadata accessor for StaticService);
  v39 = v62;
  v38 = v63;
  v40 = *(v62 + 16);
  v41 = v68;
  v40(v68, v29, v63);
  (*(v39 + 56))(v41, 0, 1, v38);
  v57 = *(v70 + 56);
  v56 = v70 + 56;
  v57(v69, 1, 1, v71);
  sub_1D1741C08(v41, v21, &qword_1EC642590, qword_1D1E71260);
  if ((*(v39 + 48))(v21, 1, v38) == 1)
  {
    sub_1D1741A30(v21, &qword_1EC642590, qword_1D1E71260);
    v42 = v67;
    v40(v67, v37, v38);
    v43 = v42;
  }

  else
  {
    v44 = *(v39 + 32);
    v44(v12, v21, v38);
    v43 = v67;
    v44(v67, v12, v38);
  }

  v45 = v64;
  v46 = v66;
  sub_1D17419CC(v74, v43 + *(v66 + 20));
  v47 = v69;
  sub_1D1741C08(v69, v45, &qword_1EC64CC00, &unk_1D1EA1FA0);
  v48 = v71;
  v49 = (*(v70 + 48))(v45, 1, v71);
  v50 = v65;
  if (v49 == 1)
  {
    sub_1D1741A30(v45, &qword_1EC64CC00, &unk_1D1EA1FA0);
    sub_1D17419CC(v74, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    if (swift_dynamicCast())
    {
      sub_1D1741A30(v47, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v68, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v29, type metadata accessor for StaticAccessory);
      sub_1D1C72E20(v50, type metadata accessor for StaticActionSet);
      v51 = 1;
    }

    else
    {
      v54 = *(v37 + *(v58 + 92));
      sub_1D1741A30(v47, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v68, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v29, type metadata accessor for StaticAccessory);
      if (v54)
      {
        v51 = 2;
      }

      else
      {
        v51 = 3;
      }
    }

    v55 = v61;
    v57(v61, v51, 3, v48);
    sub_1D1C72E80(v55, v43 + *(v46 + 24), type metadata accessor for BoxedTileInfoBearer.TileSort);
  }

  else
  {
    sub_1D1741A30(v47, &qword_1EC64CC00, &unk_1D1EA1FA0);
    sub_1D1741A30(v68, &qword_1EC642590, qword_1D1E71260);
    sub_1D1C72E20(v29, type metadata accessor for StaticAccessory);
    v52 = v59;
    sub_1D1C72E80(v45, v59, type metadata accessor for StaticUserActionPrediction);
    v53 = *(v46 + 24);
    sub_1D1C72E80(v52, v43 + v53, type metadata accessor for StaticUserActionPrediction);
    v57(v43 + v53, 0, 3, v48);
  }

  sub_1D1C72E80(v43, v72, type metadata accessor for BoxedTileInfoBearer);
  return __swift_destroy_boxed_opaque_existential_1(v74);
}

void sub_1D1C5DB58()
{
  v1 = type metadata accessor for StaticHome(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + *(type metadata accessor for TileInfoBearerCollection(0) + 36)) & 0x80) != 0)
  {
    v5 = type metadata accessor for StateSnapshot(0);

    v7 = sub_1D1781428(v6);
    sub_1D1C66B60(v0 + *(v5 + 20), v3, type metadata accessor for StaticHome);
    v8 = *&v3[*(v1 + 64)];

    sub_1D1C72E20(v3, type metadata accessor for StaticHome);
    v9 = v7[2];
    if (v9)
    {
      v10 = sub_1D18042F0(v7[2], 0);
      v11 = *(type metadata accessor for StaticCameraProfile(0) - 8);
      v12 = sub_1D1804998(&v16, v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v9, v7);
      v13 = v16;

      sub_1D1716918(v13);
      if (v12 == v9)
      {
LABEL_9:
        v16 = v10;

        sub_1D1CB94F8(&v16, v8);

        swift_bridgeObjectRelease_n();
        v14 = sub_1D1C57B70(v16);

        sub_1D1C58920(v14);
        return;
      }

      __break(1u);
    }

    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v4 = MEMORY[0x1E69E7CC0];

  sub_1D1C58920(v4);
}

uint64_t sub_1D1C5DDD0()
{
  v2 = 0;
  v119[1] = *MEMORY[0x1E69E9840];
  v114 = sub_1D1E66A7C();
  v104 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v105 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AA8, &unk_1D1E9F9F0);
  MEMORY[0x1EEE9AC00](v108);
  v5 = &v89 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v89 - v7;
  v8 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v9 = *(v8 - 8);
  v116 = v8;
  v117 = v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v113 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v112 = (&v89 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v89 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v89 - v17;
  v18 = type metadata accessor for StaticMediaProfile(0);
  v109 = *(v18 - 8);
  v110 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v90 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v103 = &v89 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v97 = &v89 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v93 = &v89 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v96 = &v89 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v106 = &v89 - v29;
  v115 = type metadata accessor for StaticMediaSystem(0);
  v111 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v31 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for StateSnapshot(0);
  v94 = v0;

  v33 = sub_1D17818B0(v32);
  v34 = v33;
  v119[0] = MEMORY[0x1E69E7CC0];
  v35 = v33 + 56;
  v36 = 1 << *(v33 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v33 + 56);
  v39 = (v36 + 63) >> 6;

  v89 = 0;
  if (v38)
  {
    while (1)
    {
      v40 = v2;
LABEL_9:
      v41 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
      sub_1D1C66B60(*(v34 + 48) + v111[9] * (v41 | (v40 << 6)), v31, type metadata accessor for StaticMediaSystem);
      v1 = *(v31 + *(v115 + 96));

      sub_1D1C72E20(v31, type metadata accessor for StaticMediaSystem);
      v0 = v119;
      sub_1D17A317C(v1);
      if (!v38)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v40 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      goto LABEL_78;
    }

    if (v40 >= v39)
    {
      break;
    }

    v38 = *(v35 + 8 * v40);
    ++v2;
    if (v38)
    {
      v2 = v40;
      goto LABEL_9;
    }
  }

  v115 = v119[0];

  v0 = sub_1D178166C(v42);
  v43 = *(v0 + 32);
  v44 = v43 & 0x3F;
  v1 = ((1 << v43) + 63) >> 6;
  v31 = 8 * v1;

  v34 = v116;
  v2 = v106;
  if (v44 > 0xD)
  {
    goto LABEL_81;
  }

  while (1)
  {
    v101 = &v89;
    v102 = v1;
    MEMORY[0x1EEE9AC00](v45);
    v107 = &v89 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v107, v31);
    v111 = 0;
    v46 = 0;
    v31 = v0 + 56;
    v47 = 1 << *(v0 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v1 = v48 & *(v0 + 56);
    v49 = (v47 + 63) >> 6;
    while (v1)
    {
      v50 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
LABEL_22:
      v52 = v50 | (v46 << 6);
      sub_1D1C66B60(*(v0 + 48) + *(v109 + 72) * v52, v2, type metadata accessor for StaticMediaProfile);
      v34 = *(v2 + v110[13]);
      sub_1D1C72E20(v2, type metadata accessor for StaticMediaProfile);
      if ((v34 & 1) == 0)
      {
        *&v107[(v52 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v52;
        v54 = __OFADD__(v111, 1);
        v111 = (v111 + 1);
        if (v54)
        {
          __break(1u);
LABEL_26:
          v55 = sub_1D19E04D8(v107, v102, v111, v0);
          goto LABEL_27;
        }
      }
    }

    v51 = v46;
    v52 = v108;
    v34 = v116;
    while (1)
    {
      v46 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v46 >= v49)
      {
        goto LABEL_26;
      }

      v53 = *(v31 + 8 * v46);
      ++v51;
      if (v53)
      {
        v50 = __clz(__rbit64(v53));
        v1 = (v53 - 1) & v53;
        goto LABEL_22;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();
  v88 = v89;
  v55 = sub_1D1C05EFC(v31, v1, v0, sub_1D1BFECF8, 0);
  v89 = v88;

  MEMORY[0x1D3893640](v31, -1, -1);
  v52 = v108;
LABEL_27:

  v56 = 0;
  v57 = (v55 + 56);
  v58 = -1;
  v59 = -1 << *(v55 + 32);
  if (-v59 < 64)
  {
    v58 = ~(-1 << -v59);
  }

  v60 = v58 & *(v55 + 56);
  v91 = -1 << *(v55 + 32);
  v61 = (63 - v59) >> 6;
  v102 = (v117 + 48);
  v111 = (v104 + 1);
  v104 += 4;
  v92 = MEMORY[0x1E69E7CC0];
  v1 = v98;
  v2 = v97;
  v101 = (v55 + 56);
  v100 = v61;
  v95 = v55;
  if (v60)
  {
    while (1)
    {
LABEL_35:
      v106 = ((v60 - 1) & v60);
      v107 = v56;
      v64 = *(v55 + 48);
      v99 = *(v109 + 72);
      v65 = v103;
      sub_1D1C66B60(v64 + v99 * (__clz(__rbit64(v60)) | (v56 << 6)), v103, type metadata accessor for StaticMediaProfile);
      sub_1D1C72E80(v65, v2, type metadata accessor for StaticMediaProfile);
      v31 = &qword_1EC643C58;
      v0 = &unk_1D1E995D0;
      sub_1D1741C08(v2 + v110[18], v1, &qword_1EC643C58, &unk_1D1E995D0);
      if ((*v102)(v1, 1, v34) == 1)
      {
        sub_1D1741A30(v1, &qword_1EC643C58, &unk_1D1E995D0);
LABEL_64:
        v80 = v2;
        goto LABEL_65;
      }

      sub_1D1C72E80(v1, v118, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v2 = v115;
      v66 = *(v115 + 16);
      if (v66)
      {
        break;
      }

LABEL_55:
      sub_1D1C72E20(v118, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v2 = v97;
      v77 = v93;
      sub_1D1C72E80(v97, v93, type metadata accessor for StaticMediaProfile);
      v78 = v77;
      v0 = v96;
      sub_1D1C72E80(v78, v96, type metadata accessor for StaticMediaProfile);
      v79 = v0 + v110[23];
      v31 = *(v79 + 8);
      v1 = v98;
      v55 = v95;
      if (v31 != 255)
      {
        v0 = *v79;
        if ((*(v94 + *(type metadata accessor for TileInfoBearerCollection(0) + 36)) & 8) != 0)
        {
          switch(v31)
          {
            case 2:
              if ((v0 & 0x100) != 0)
              {
LABEL_69:
                sub_1D1C72E80(v96, v90, type metadata accessor for StaticMediaProfile);
                v81 = v92;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v83 = v81;
                v119[0] = v81;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v0 = v119;
                  sub_1D178CDEC(0, *(v81 + 16) + 1, 1);
                  v83 = v119[0];
                }

                v85 = *(v83 + 16);
                v84 = *(v83 + 24);
                v31 = v85 + 1;
                if (v85 >= v84 >> 1)
                {
                  v0 = v119;
                  sub_1D178CDEC((v84 > 1), v85 + 1, 1);
                  v83 = v119[0];
                }

                *(v83 + 16) = v31;
                v86 = *(v109 + 80);
                v92 = v83;
                sub_1D1C72E80(v90, v83 + ((v86 + 32) & ~v86) + v85 * v99, type metadata accessor for StaticMediaProfile);
                v34 = v116;
                goto LABEL_66;
              }

              break;
            case 3:
              if (v0 == 1)
              {
                goto LABEL_69;
              }

              break;
            case 1:
              goto LABEL_69;
          }
        }
      }

      v80 = v96;
LABEL_65:
      sub_1D1C72E20(v80, type metadata accessor for StaticMediaProfile);
LABEL_66:
      v57 = v101;
      v60 = v106;
      v56 = v107;
      v61 = v100;
      if (!v106)
      {
        goto LABEL_30;
      }
    }

    v1 = 0;
    while (1)
    {
      if (v1 >= *(v2 + 16))
      {
        goto LABEL_80;
      }

      sub_1D1C66B60(v2 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v1, v16, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v31 = &v5[*(v52 + 48)];
      sub_1D1C66B60(v16, v5, type metadata accessor for StaticAccessory.DeviceIdentifier);
      sub_1D1C66B60(v118, v31, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v0 = v113;
        sub_1D1C66B60(v5, v113, type metadata accessor for StaticAccessory.DeviceIdentifier);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          (*v111)(v0, v114);
          goto LABEL_40;
        }

        v67 = v105;
        v68 = v114;
        (*v104)(v105, v31, v114);
        v31 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v69 = v0;
        v0 = *v111;
        v70 = v67;
        v52 = v108;
        (*v111)(v70, v68);
        v71 = v69;
        v72 = v68;
        v2 = v115;
        v34 = v116;
        (v0)(v71, v72);
        sub_1D1C72E20(v5, type metadata accessor for StaticAccessory.DeviceIdentifier);
        if (v31)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v73 = v112;
        sub_1D1C66B60(v5, v112, type metadata accessor for StaticAccessory.DeviceIdentifier);
        v0 = *v73;
        v74 = v73[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v2 = v115;
          v34 = v116;
LABEL_40:
          sub_1D1741A30(v5, &qword_1EC642AA8, &unk_1D1E9F9F0);
          goto LABEL_41;
        }

        v75 = *v31;
        v31 = *(v31 + 8);
        if (v0 == v75 && v74 == v31)
        {

LABEL_62:
          sub_1D1C72E20(v5, type metadata accessor for StaticAccessory.DeviceIdentifier);
          v34 = v116;
LABEL_63:
          v31 = type metadata accessor for StaticAccessory.DeviceIdentifier;
          sub_1D1C72E20(v16, type metadata accessor for StaticAccessory.DeviceIdentifier);
          sub_1D1C72E20(v118, type metadata accessor for StaticAccessory.DeviceIdentifier);
          v1 = v98;
          v2 = v97;
          v55 = v95;
          goto LABEL_64;
        }

        v0 = sub_1D1E6904C();

        v2 = v115;
        if (v0)
        {
          goto LABEL_62;
        }

        sub_1D1C72E20(v5, type metadata accessor for StaticAccessory.DeviceIdentifier);
        v34 = v116;
      }

LABEL_41:
      ++v1;
      sub_1D1C72E20(v16, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (v66 == v1)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_30:
  v62 = v56;
  while (1)
  {
    v63 = (v62 + 1);
    if (__OFADD__(v62, 1))
    {
      goto LABEL_79;
    }

    if (v63 >= v61)
    {
      break;
    }

    v60 = v57[v63];
    ++v62;
    if (v60)
    {
      v56 = v63;
      goto LABEL_35;
    }
  }

  sub_1D1716918(v55);

  return v92;
}

void sub_1D1C5EC7C(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v2 = type metadata accessor for StaticMediaSystemComponent(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StaticMediaSystem(0);

  v6 = sub_1D1782784(v5);
  v7 = v6;
  v8 = v6 + 56;
  v9 = 1 << *(v6 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v6 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      sub_1D1C66B60(*(v7 + 48) + *(v32 + 72) * (v14 | (v13 << 6)), v4, type metadata accessor for StaticMediaSystemComponent);
      v15 = &v4[*(v2 + 20)];
      v16 = &v15[*(type metadata accessor for StaticMediaProfile(0) + 92)];
      v17 = *v16;
      v18 = v16[8];
      sub_1D18EB144(*v16, v16[8]);
      sub_1D1C72E20(v4, type metadata accessor for StaticMediaSystemComponent);
      if (v18 != 255)
      {
        break;
      }

      if (!v11)
      {
        goto LABEL_6;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1D177FA8C(0, *(v31 + 2) + 1, 1, v31);
    }

    v21 = *(v31 + 2);
    v20 = *(v31 + 3);
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v28 = *(v31 + 2);
      v29 = v21 + 1;
      v25 = sub_1D177FA8C((v20 > 1), v21 + 1, 1, v31);
      v21 = v28;
      v22 = v29;
      v31 = v25;
    }

    v23 = v31;
    *(v31 + 2) = v22;
    v24 = &v23[16 * v21];
    *(v24 + 4) = v17;
    v24[40] = v18;
  }

  while (v11);
LABEL_6:
  while (1)
  {
    v19 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v19 >= v12)
    {

      MEMORY[0x1EEE9AC00](v26);
      *(&v27 - 2) = v30;
      sub_1D18B609C(sub_1D1C751F8, (&v27 - 4), v31);

      return;
    }

    v11 = *(v8 + 8 * v19);
    ++v13;
    if (v11)
    {
      v13 = v19;
      goto LABEL_4;
    }
  }

  __break(1u);
}