BOOL sub_1D1C5EF5C(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if ((*(a2 + *(type metadata accessor for TileInfoBearerCollection(0) + 36)) & 8) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5 == 1)
  {
    return 1;
  }

  if (v5 != 2)
  {
    return v5 == 3 && v3 == 1;
  }

  return (v3 >> 8) & 1;
}

uint64_t sub_1D1C5EFE0()
{
  v102 = type metadata accessor for StaticActionSet(0);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v90 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v101 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticUserActionPrediction(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1D1E66A7C();
  v7 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v99 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC00, &unk_1D1EA1FA0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v120 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v119 = &v90 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v114 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v113 = &v90 - v16;
  v17 = type metadata accessor for BoxedTileInfoBearer(0);
  v112 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v90 - v21;
  v115 = type metadata accessor for StaticService(0);
  v105 = *(v115 - 8);
  v23 = MEMORY[0x1EEE9AC00](v115);
  v111 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v96 = &v90 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v107 = (&v90 - v27);
  if ((*(v0 + *(type metadata accessor for TileInfoBearerCollection(0) + 36)) & 0x20) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v91 = v7;
  v92 = v5;
  v108 = v22;
  v93 = type metadata accessor for StateSnapshot(0);
  v28 = *(v93 + 60);
  v94 = v0;
  v29 = *(v0 + v28);
  v30 = *(v29 + 64);
  v106 = (v29 + 64);
  v31 = 1 << *(v29 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & v30;
  v104 = ((v31 + 63) >> 6);
  v98 = v29;

  v34 = 0;
  v95 = MEMORY[0x1E69E7CC0];
  v110 = v4;
  v109 = v17;
  v116 = v20;
  while (v33)
  {
LABEL_12:
    v36 = *(v98 + 56);
    v97 = *(v105 + 72);
    sub_1D1C66B60(v36 + v97 * (__clz(__rbit64(v33)) | (v34 << 6)), v107, type metadata accessor for StaticService);
    if (qword_1EE07AB30 != -1)
    {
      swift_once();
    }

    v33 &= v33 - 1;
    v37 = off_1EE07AB38;
    if (*(off_1EE07AB38 + 2) && (v38 = *(v107 + *(v115 + 104)), sub_1D1E6920C(), v122[0] = v38, ServiceKind.rawValue.getter(), sub_1D1E678EC(), , v39 = sub_1D1E6926C(), v40 = -1 << v37[32], v41 = v39 & ~v40, v118 = v37 + 56, ((*&v37[((v41 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v41) & 1) != 0))
    {
      v117 = ~v40;
      while (1)
      {
        v42 = "takeSnaphotsWhenBusy";
        switch(*(*(v37 + 6) + v41))
        {
          case 1:
            v43 = "0000003E-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 2:
            v43 = "00000270-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 3:
            v43 = "000000BB-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 4:
            v43 = "0000008D-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 5:
            v43 = "00000096-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 6:
            v43 = "00000042-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 7:
            v43 = "00000110-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 8:
            v43 = "00000204-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 9:
            v43 = "00000097-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0xA:
            v43 = "0000007F-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0xB:
            v43 = "00000080-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0xC:
            v43 = "00000129-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0xD:
            v43 = "00000237-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0xE:
            v43 = "00000081-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0xF:
            v43 = "00000121-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x10:
            v43 = "00000040-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x11:
            v43 = "000000D7-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x12:
            v43 = "000000BA-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x13:
            v43 = "00000041-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x14:
            v43 = "000000BC-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x15:
            v43 = "000000BD-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x16:
            v43 = "00000082-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x17:
            v43 = "000000D9-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x18:
            v43 = "000000CF-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x19:
            v43 = "000000CC-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x1A:
            v43 = "00000083-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x1B:
            v43 = "00000084-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x1C:
            v43 = "00000043-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x1D:
            v43 = "00000044-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x1E:
            v43 = "00000045-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x1F:
            v43 = "00000112-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x20:
            v43 = "00000085-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x21:
            v43 = "00000086-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x22:
            v43 = "00000047-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x23:
            v43 = "0000007E-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x24:
            v43 = "000000B9-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x25:
            v43 = "00000087-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x26:
            v43 = "00000113-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x27:
            v43 = "00000088-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x28:
            v43 = "00000089-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x29:
            v43 = "00000049-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x2A:
            v43 = "00000125-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x2B:
            v43 = "00000122-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x2C:
            v43 = "000000D8-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x2D:
            v43 = "0000008A-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x2E:
            v43 = "0000004A-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x2F:
            v43 = "000000D0-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x30:
            v43 = "000000B7-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x31:
            v43 = "0000020A-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x32:
            v43 = "0000020F-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x33:
            v43 = "0000008B-0000-1000-8000-0026BB765291";
            goto LABEL_70;
          case 0x34:
            v43 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_70:
            v42 = v43 - 32;
            break;
          default:
            break;
        }

        v44 = v42 | 0x8000000000000000;
        v45 = "takeSnaphotsWhenBusy";
        switch(v38)
        {
          case 1:
            v46 = "0000003E-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 2:
            v46 = "00000270-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 3:
            v46 = "000000BB-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 4:
            v46 = "0000008D-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 5:
            v46 = "00000096-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 6:
            v46 = "00000042-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 7:
            v46 = "00000110-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 8:
            v46 = "00000204-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 9:
            v46 = "00000097-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 10:
            v46 = "0000007F-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 11:
            v46 = "00000080-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 12:
            v46 = "00000129-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 13:
            v46 = "00000237-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 14:
            v46 = "00000081-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 15:
            v46 = "00000121-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 16:
            v46 = "00000040-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 17:
            v46 = "000000D7-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 18:
            v46 = "000000BA-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 19:
            v46 = "00000041-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 20:
            v46 = "000000BC-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 21:
            v46 = "000000BD-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 22:
            v46 = "00000082-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 23:
            v46 = "000000D9-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 24:
            v46 = "000000CF-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 25:
            v46 = "000000CC-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 26:
            v46 = "00000083-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 27:
            v46 = "00000084-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 28:
            v46 = "00000043-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 29:
            v46 = "00000044-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 30:
            v46 = "00000045-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 31:
            v46 = "00000112-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 32:
            v46 = "00000085-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 33:
            v46 = "00000086-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 34:
            v46 = "00000047-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 35:
            v46 = "0000007E-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 36:
            v46 = "000000B9-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 37:
            v46 = "00000087-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 38:
            v46 = "00000113-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 39:
            v46 = "00000088-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 40:
            v46 = "00000089-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 41:
            v46 = "00000049-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 42:
            v46 = "00000125-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 43:
            v46 = "00000122-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 44:
            v46 = "000000D8-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 45:
            v46 = "0000008A-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 46:
            v46 = "0000004A-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 47:
            v46 = "000000D0-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 48:
            v46 = "000000B7-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 49:
            v46 = "0000020A-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 50:
            v46 = "0000020F-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 51:
            v46 = "0000008B-0000-1000-8000-0026BB765291";
            goto LABEL_124;
          case 52:
            v46 = "0000008C-0000-1000-8000-0026BB765291";
LABEL_124:
            v45 = v46 - 32;
            break;
          default:
            break;
        }

        if (v44 == (v45 | 0x8000000000000000))
        {
          break;
        }

        v47 = sub_1D1E6904C();

        if (v47)
        {
          goto LABEL_130;
        }

        v41 = (v41 + 1) & v117;
        if (((*&v118[(v41 >> 3) & 0xFFFFFFFFFFFFFF8] >> v41) & 1) == 0)
        {
          goto LABEL_6;
        }
      }

LABEL_130:
      sub_1D1C72E80(v107, v96, type metadata accessor for StaticService);
      v48 = v95;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v48;
      v123 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D17915E0(0, *(v48 + 16) + 1, 1);
        v50 = v123;
      }

      v52 = *(v50 + 16);
      v51 = *(v50 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1D17915E0(v51 > 1, v52 + 1, 1);
        v50 = v123;
      }

      *(v50 + 16) = v52 + 1;
      v53 = *(v105 + 80);
      v95 = v50;
      sub_1D1C72E80(v96, v50 + ((v53 + 32) & ~v53) + v52 * v97, type metadata accessor for StaticService);
    }

    else
    {
LABEL_6:
      sub_1D1C72E20(v107, type metadata accessor for StaticService);
    }
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v35 >= v104)
    {
      break;
    }

    v33 = v106[v35];
    ++v34;
    if (v33)
    {
      v34 = v35;
      goto LABEL_12;
    }
  }

  MEMORY[0x1EEE9AC00](v54);
  v55 = v94;
  *(&v90 - 2) = v94;
  v56 = sub_1D1796660(sub_1D1C75218, (&v90 - 4), v95);
  v57 = v55 + *(v93 + 20);
  v58 = *(v57 + *(type metadata accessor for StaticHome(0) + 60));
  v126[0] = v56;

  sub_1D1C72CFC(v126, v58);

  v59 = v126[0];
  v60 = *(v126[0] + 16);
  if (!v60)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v125 = MEMORY[0x1E69E7CC0];
  sub_1D178CD64(0, v60, 0);
  v61 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v96 = v59;
  v62 = v59 + v61;
  v107 = (v91 + 56);
  v63 = v125;
  v118 = (v92 + 56);
  v106 = (v91 + 48);
  v105 = *(v105 + 72);
  v98 = v91 + 32;
  v97 = (v91 + 16);
  v104 = (v92 + 48);
  v64 = v110;
  do
  {
    v65 = v111;
    sub_1D1C66B60(v62, v111, type metadata accessor for StaticService);
    v126[3] = v115;
    v126[4] = sub_1D1C75134(&qword_1EC646AF0, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v126);
    sub_1D1C72E80(v65, boxed_opaque_existential_1, type metadata accessor for StaticService);
    sub_1D17419CC(v126, &v123);
    v67 = v113;
    v68 = v121;
    (*v107)(v113, 1, 1, v121);
    v69 = v64;
    v117 = *v118;
    (v117)(v119, 1, 1, v64);
    v70 = v114;
    sub_1D1741A90(v67, v114, &qword_1EC642590, qword_1D1E71260);
    if ((*v106)(v70, 1, v68) == 1)
    {
      sub_1D1741A30(v70, &qword_1EC642590, qword_1D1E71260);
      v71 = __swift_project_boxed_opaque_existential_1(&v123, v124);
      v72 = v116;
      (*v97)(v116, v71, v121);
    }

    else
    {
      v73 = v63;
      v74 = v121;
      v75 = *v98;
      v76 = v99;
      (*v98)(v99, v70, v121);
      v72 = v116;
      v75(v116, v76, v74);
      v63 = v73;
    }

    v77 = v109;
    sub_1D17419CC(&v123, v72 + *(v109 + 20));
    v78 = v120;
    sub_1D1741A90(v119, v120, &qword_1EC64CC00, &unk_1D1EA1FA0);
    if ((*v104)(v78, 1, v69) == 1)
    {
      sub_1D1741A30(v120, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D17419CC(&v123, v122);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
      if (swift_dynamicCast())
      {
        sub_1D1C72E20(v103, type metadata accessor for StaticActionSet);
        v79 = 1;
      }

      else
      {
        v83 = __swift_project_boxed_opaque_existential_1(&v123, v124);
        if (*(v83 + *(v115 + 92)))
        {
          v79 = 2;
        }

        else
        {
          v79 = 3;
        }
      }

      v84 = v101;
      v64 = v110;
      (v117)(v101, v79, 3, v110);
      v72 = v116;
      sub_1D1C72E80(v84, &v116[*(v77 + 24)], type metadata accessor for BoxedTileInfoBearer.TileSort);
    }

    else
    {
      v80 = v100;
      sub_1D1C72E80(v120, v100, type metadata accessor for StaticUserActionPrediction);
      v81 = *(v77 + 24);
      sub_1D1C72E80(v80, v72 + v81, type metadata accessor for StaticUserActionPrediction);
      v82 = v72 + v81;
      v64 = v110;
      (v117)(v82, 0, 3, v110);
    }

    v85 = v72;
    v86 = v108;
    sub_1D1C72E80(v85, v108, type metadata accessor for BoxedTileInfoBearer);
    __swift_destroy_boxed_opaque_existential_1(&v123);
    __swift_destroy_boxed_opaque_existential_1(v126);
    v125 = v63;
    v88 = *(v63 + 16);
    v87 = *(v63 + 24);
    if (v88 >= v87 >> 1)
    {
      sub_1D178CD64((v87 > 1), v88 + 1, 1);
      v63 = v125;
    }

    *(v63 + 16) = v88 + 1;
    sub_1D1C72E80(v86, v63 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v88, type metadata accessor for BoxedTileInfoBearer);
    v62 += v105;
    --v60;
  }

  while (v60);

  return v63;
}

uint64_t sub_1D1C603E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for TileInfoBearerCollection(0) + 52));
  v4 = type metadata accessor for StaticService(0);
  return sub_1D171951C(*(a1 + *(v4 + 104)), v3) & 1;
}

void sub_1D1C60440()
{
  v1 = type metadata accessor for StaticActionSet(0);
  v31 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v26 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - v7;
  v29 = type metadata accessor for StateSnapshot(0);
  v30 = v0;
  v9 = *(v0 + *(v29 + 36));
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v16 = v14;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v18 = *(v31 + 72);
    sub_1D1C66B60(*(v9 + 56) + v18 * (v17 | (v14 << 6)), v6, type metadata accessor for StaticActionSet);
    sub_1D1C72E80(v6, v8, type metadata accessor for StaticActionSet);
    if (v8[*(v1 + 32)])
    {
      sub_1D1C72E20(v8, type metadata accessor for StaticActionSet);
    }

    else
    {
      sub_1D1C72E80(v8, v28, type metadata accessor for StaticActionSet);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D178CE74(0, *(v15 + 16) + 1, 1);
        v15 = v32;
      }

      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v26 = *(v15 + 16);
        v27 = v21 + 1;
        sub_1D178CE74((v20 > 1), v21 + 1, 1);
        v21 = v26;
        v22 = v27;
        v15 = v32;
      }

      *(v15 + 16) = v22;
      sub_1D1C72E80(v28, v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + v21 * v18, type metadata accessor for StaticActionSet);
    }
  }

  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      v23 = v30 + *(v29 + 20);
      v24 = *(v23 + *(type metadata accessor for StaticHome(0) + 56));
      v32 = v15;

      sub_1D1C74B00(&v32, v24);

      v25 = sub_1D1C58000(v32);

      sub_1D1C58920(v25);
      return;
    }

    v12 = *(v9 + 64 + 8 * v14);
    ++v16;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1D1C607AC@<X0>(unsigned __int8 *a1@<X0>, void (*a2)(char *, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v448 = a3;
  v446 = a2;
  v454 = a1;
  v429 = type metadata accessor for StaticServiceGroup(0);
  v423 = *(v429 - 8);
  v3 = MEMORY[0x1EEE9AC00](v429);
  v424 = &v364 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v435 = &v364 - v5;
  v428 = type metadata accessor for StaticMediaSystem(0);
  v418 = *(v428 - 8);
  v6 = MEMORY[0x1EEE9AC00](v428);
  v419 = &v364 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v434 = &v364 - v8;
  v437 = type metadata accessor for StaticActionSet(0);
  v443 = *(v437 - 8);
  v9 = MEMORY[0x1EEE9AC00](v437);
  v426 = &v364 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v417 = &v364 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v442 = &v364 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v445 = &v364 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v425 = &v364 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v399 = &v364 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v374 = &v364 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v367 = &v364 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v389 = &v364 - v25;
  v26 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v411 = &v364 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v416 = &v364 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v410 = &v364 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v392 = &v364 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v375 = &v364 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v366 = &v364 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v386 = &v364 - v39;
  v40 = type metadata accessor for StaticUserActionPrediction(0);
  v444 = *(v40 - 8);
  v41 = MEMORY[0x1EEE9AC00](v40);
  v409 = &v364 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v420 = &v364 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v408 = &v364 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v391 = &v364 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v373 = &v364 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v365 = &v364 - v52;
  MEMORY[0x1EEE9AC00](v51);
  v385 = &v364 - v53;
  v436 = sub_1D1E66A7C();
  v438 = *(v436 - 8);
  v54 = MEMORY[0x1EEE9AC00](v436);
  v407 = &v364 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v441 = &v364 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v406 = &v364 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v390 = &v364 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v372 = &v364 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v364 = &v364 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v394 = &v364 - v67;
  MEMORY[0x1EEE9AC00](v66);
  v384 = &v364 - v68;
  v449 = type metadata accessor for BoxedTileInfoBearer(0);
  v447 = *(v449 - 8);
  v69 = MEMORY[0x1EEE9AC00](v449);
  v422 = &v364 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1EEE9AC00](v69);
  v440 = &v364 - v72;
  v73 = MEMORY[0x1EEE9AC00](v71);
  v421 = &v364 - v74;
  v75 = MEMORY[0x1EEE9AC00](v73);
  v404 = &v364 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v379 = &v364 - v78;
  v79 = MEMORY[0x1EEE9AC00](v77);
  v376 = &v364 - v80;
  MEMORY[0x1EEE9AC00](v79);
  v393 = &v364 - v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC00, &unk_1D1EA1FA0);
  v83 = MEMORY[0x1EEE9AC00](v82 - 8);
  v415 = &v364 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x1EEE9AC00](v83);
  v433 = &v364 - v86;
  v87 = MEMORY[0x1EEE9AC00](v85);
  v89 = &v364 - v88;
  v90 = MEMORY[0x1EEE9AC00](v87);
  v92 = &v364 - v91;
  v93 = MEMORY[0x1EEE9AC00](v90);
  v414 = &v364 - v94;
  v95 = MEMORY[0x1EEE9AC00](v93);
  v430 = &v364 - v96;
  v97 = MEMORY[0x1EEE9AC00](v95);
  v401 = &v364 - v98;
  v99 = MEMORY[0x1EEE9AC00](v97);
  v403 = &v364 - v100;
  v101 = MEMORY[0x1EEE9AC00](v99);
  v378 = &v364 - v102;
  v103 = MEMORY[0x1EEE9AC00](v101);
  v381 = &v364 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v370 = &v364 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v371 = &v364 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v388 = &v364 - v110;
  MEMORY[0x1EEE9AC00](v109);
  v427 = &v364 - v111;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v113 = MEMORY[0x1EEE9AC00](v112 - 8);
  v413 = &v364 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = MEMORY[0x1EEE9AC00](v113);
  v432 = &v364 - v116;
  v117 = MEMORY[0x1EEE9AC00](v115);
  v119 = &v364 - v118;
  v120 = MEMORY[0x1EEE9AC00](v117);
  v122 = &v364 - v121;
  v123 = MEMORY[0x1EEE9AC00](v120);
  v412 = &v364 - v124;
  v125 = MEMORY[0x1EEE9AC00](v123);
  v431 = &v364 - v126;
  v127 = MEMORY[0x1EEE9AC00](v125);
  v400 = &v364 - v128;
  v129 = MEMORY[0x1EEE9AC00](v127);
  v405 = &v364 - v130;
  v131 = MEMORY[0x1EEE9AC00](v129);
  v377 = &v364 - v132;
  v133 = MEMORY[0x1EEE9AC00](v131);
  v380 = &v364 - v134;
  v135 = MEMORY[0x1EEE9AC00](v133);
  v368 = &v364 - v136;
  v137 = MEMORY[0x1EEE9AC00](v135);
  v369 = &v364 - v138;
  v139 = MEMORY[0x1EEE9AC00](v137);
  v382 = &v364 - v140;
  v141 = MEMORY[0x1EEE9AC00](v139);
  v402 = &v364 - v142;
  v143 = MEMORY[0x1EEE9AC00](v141);
  v387 = &v364 - v144;
  MEMORY[0x1EEE9AC00](v143);
  v396 = &v364 - v145;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v146 - 8);
  v148 = &v364 - v147;
  v398 = type metadata accessor for StaticService(0);
  v397 = *(v398 - 8);
  v149 = MEMORY[0x1EEE9AC00](v398);
  v151 = &v364 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = MEMORY[0x1EEE9AC00](v149);
  v383 = &v364 - v153;
  MEMORY[0x1EEE9AC00](v152);
  v395 = &v364 - v154;
  v155 = type metadata accessor for StaticAccessory(0);
  v156 = *(v155 - 8);
  v157 = MEMORY[0x1EEE9AC00](v155);
  v159 = &v364 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = MEMORY[0x1EEE9AC00](v157);
  v439 = v40;
  v162 = v454[*(v40 + 28)];
  if (v162 <= 1)
  {
    v177 = v119;
    v435 = v122;
    v434 = v89;
    v178 = v92;
    v179 = v441;
    v180 = v442;
    v181 = v443;
    v182 = v440;
    v183 = v445;
    v164 = v449;
    if (!v162)
    {
      return (*(v447 + 56))(v448, 1, 1, v164);
    }

    v184 = *(v446 + *(type metadata accessor for StateSnapshot(0) + 36));
    if (!*(v184 + 16))
    {
      return (*(v447 + 56))(v448, 1, 1, v164);
    }

    v185 = sub_1D1742188();
    if ((v186 & 1) == 0)
    {
      return (*(v447 + 56))(v448, 1, 1, v164);
    }

    sub_1D1C66B60(*(v184 + 56) + *(v181 + 9) * v185, v180, type metadata accessor for StaticActionSet);
    sub_1D1C72E80(v180, v183, type metadata accessor for StaticActionSet);
    v452 = v437;
    v453 = sub_1D1C75134(&qword_1EC64C000, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
    v443 = __swift_allocate_boxed_opaque_existential_1(&v451);
    sub_1D1C66B60(v183, v443, type metadata accessor for StaticActionSet);
    v187 = v438;
    v188 = v435;
    v189 = v436;
    (*(v438 + 56))(v435, 1, 1, v436);
    v190 = v178;
    sub_1D1C66B60(v454, v178, type metadata accessor for StaticUserActionPrediction);
    v191 = *(v444 + 56);
    v454 = (v444 + 56);
    v446 = v191;
    v191(v178, 0, 1, v439);
    sub_1D1741C08(v188, v177, &qword_1EC642590, qword_1D1E71260);
    if ((*(v187 + 48))(v177, 1, v189) == 1)
    {
      sub_1D1741A30(v177, &qword_1EC642590, qword_1D1E71260);
      v192 = v182;
      (*(v187 + 16))(v182, v443, v189);
    }

    else
    {
      v245 = *(v187 + 32);
      v245(v179, v177, v189);
      v192 = v182;
      v190 = v178;
      v245(v182, v179, v189);
    }

    v246 = v416;
    v247 = v449;
    sub_1D17419CC(&v451, v192 + *(v449 + 20));
    v248 = v434;
    sub_1D1741C08(v190, v434, &qword_1EC64CC00, &unk_1D1EA1FA0);
    v249 = v439;
    v250 = (*(v444 + 48))(v248, 1, v439);
    v251 = v417;
    v252 = v420;
    if (v250 == 1)
    {
      sub_1D1741A30(v248, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D17419CC(&v451, v450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
      v253 = v437;
      if (swift_dynamicCast())
      {
        sub_1D1741A30(v190, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D1741A30(v435, &qword_1EC642590, qword_1D1E71260);
        sub_1D1C72E20(v445, type metadata accessor for StaticActionSet);
        sub_1D1C72E20(v251, type metadata accessor for StaticActionSet);
        v254 = 1;
      }

      else
      {
        v267 = *(v443 + *(v253 + 48));
        sub_1D1741A30(v190, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D1741A30(v435, &qword_1EC642590, qword_1D1E71260);
        sub_1D1C72E20(v445, type metadata accessor for StaticActionSet);
        if (v267)
        {
          v254 = 2;
        }

        else
        {
          v254 = 3;
        }
      }

      v446(v246, v254, 3, v249);
      v256 = v449;
      sub_1D1C72E80(v246, v192 + *(v449 + 24), type metadata accessor for BoxedTileInfoBearer.TileSort);
    }

    else
    {
      sub_1D1741A30(v190, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v435, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v445, type metadata accessor for StaticActionSet);
      sub_1D1C72E80(v248, v252, type metadata accessor for StaticUserActionPrediction);
      v255 = *(v247 + 24);
      sub_1D1C72E80(v252, v192 + v255, type metadata accessor for StaticUserActionPrediction);
      v446((v192 + v255), 0, 3, v249);
      v256 = v247;
    }

    v268 = v448;
    sub_1D1C72E80(v192, v448, type metadata accessor for BoxedTileInfoBearer);
    __swift_destroy_boxed_opaque_existential_1(&v451);
    return (*(v447 + 56))(v268, 0, 1, v256);
  }

  if (v162 != 2)
  {
    if (v162 == 3)
    {
      v163 = *(v446 + *(type metadata accessor for StateSnapshot(0) + 56));
      v164 = v449;
      if (*(v163 + 16))
      {
        v165 = sub_1D1742188();
        if (v166)
        {
          v167 = v424;
          sub_1D1C66B60(*(v163 + 56) + *(v423 + 72) * v165, v424, type metadata accessor for StaticServiceGroup);
          v168 = v435;
          sub_1D1C72E80(v167, v435, type metadata accessor for StaticServiceGroup);
          v452 = v429;
          v453 = sub_1D1C75134(&qword_1EC64BA10, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
          v169 = __swift_allocate_boxed_opaque_existential_1(&v451);
          sub_1D1C66B60(v168, v169, type metadata accessor for StaticServiceGroup);
          v170 = v438;
          v171 = v432;
          v172 = v436;
          (*(v438 + 56))(v432, 1, 1, v436);
          v173 = v433;
          sub_1D1C66B60(v454, v433, type metadata accessor for StaticUserActionPrediction);
          v174 = v439;
          v454 = *(v444 + 56);
          (v454)(v173, 0, 1, v439);
          v175 = v413;
          sub_1D1741C08(v171, v413, &qword_1EC642590, qword_1D1E71260);
          if ((*(v170 + 48))(v175, 1, v172) == 1)
          {
            sub_1D1741A30(v175, &qword_1EC642590, qword_1D1E71260);
            v176 = v422;
            (*(v170 + 16))(v422, v169, v172);
          }

          else
          {
            v227 = *(v170 + 32);
            v228 = v407;
            v227(v407, v175, v172);
            v176 = v422;
            v227(v422, v228, v172);
          }

          v215 = v449;
          sub_1D17419CC(&v451, &v176[*(v449 + 20)]);
          v229 = v433;
          v230 = v415;
          sub_1D1741C08(v433, v415, &qword_1EC64CC00, &unk_1D1EA1FA0);
          v231 = (*(v444 + 48))(v230, 1, v174);
          v232 = v426;
          if (v231 == 1)
          {
            sub_1D1741A30(v230, &qword_1EC64CC00, &unk_1D1EA1FA0);
            sub_1D17419CC(&v451, v450);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
            if (swift_dynamicCast())
            {
              sub_1D1741A30(v229, &qword_1EC64CC00, &unk_1D1EA1FA0);
              sub_1D1741A30(v432, &qword_1EC642590, qword_1D1E71260);
              sub_1D1C72E20(v435, type metadata accessor for StaticServiceGroup);
              sub_1D1C72E20(v232, type metadata accessor for StaticActionSet);
              v233 = 1;
            }

            else
            {
              v261 = *(v169 + *(v429 + 44));
              sub_1D1741A30(v229, &qword_1EC64CC00, &unk_1D1EA1FA0);
              sub_1D1741A30(v432, &qword_1EC642590, qword_1D1E71260);
              sub_1D1C72E20(v435, type metadata accessor for StaticServiceGroup);
              if (v261)
              {
                v233 = 2;
              }

              else
              {
                v233 = 3;
              }
            }

            v262 = v411;
            (v454)(v411, v233, 3, v174);
            v215 = v449;
            sub_1D1C72E80(v262, &v176[*(v449 + 24)], type metadata accessor for BoxedTileInfoBearer.TileSort);
          }

          else
          {
            sub_1D1741A30(v229, &qword_1EC64CC00, &unk_1D1EA1FA0);
            sub_1D1741A30(v432, &qword_1EC642590, qword_1D1E71260);
            sub_1D1C72E20(v435, type metadata accessor for StaticServiceGroup);
            v241 = v409;
            sub_1D1C72E80(v230, v409, type metadata accessor for StaticUserActionPrediction);
            v242 = *(v215 + 24);
            sub_1D1C72E80(v241, &v176[v242], type metadata accessor for StaticUserActionPrediction);
            (v454)(&v176[v242], 0, 3, v174);
          }

          v263 = v176;
LABEL_58:
          v266 = v448;
          sub_1D1C72E80(v263, v448, type metadata accessor for BoxedTileInfoBearer);
          __swift_destroy_boxed_opaque_existential_1(&v451);
          return (*(v447 + 56))(v266, 0, 1, v215);
        }
      }
    }

    else
    {
      v212 = *(v446 + *(type metadata accessor for StateSnapshot(0) + 44));
      v164 = v449;
      if (*(v212 + 16))
      {
        v213 = sub_1D1742188();
        if (v214)
        {
          v215 = v164;
          v216 = v419;
          sub_1D1C66B60(*(v212 + 56) + *(v418 + 72) * v213, v419, type metadata accessor for StaticMediaSystem);
          v217 = v434;
          sub_1D1C72E80(v216, v434, type metadata accessor for StaticMediaSystem);
          v452 = v428;
          v453 = sub_1D1C75134(&qword_1EC64BFE8, type metadata accessor for StaticMediaSystem, &protocol conformance descriptor for StaticMediaSystem);
          v218 = __swift_allocate_boxed_opaque_existential_1(&v451);
          sub_1D1C66B60(v217, v218, type metadata accessor for StaticMediaSystem);
          v219 = v438;
          v220 = v431;
          v221 = v436;
          (*(v438 + 56))(v431, 1, 1, v436);
          v222 = v430;
          sub_1D1C66B60(v454, v430, type metadata accessor for StaticUserActionPrediction);
          v223 = v439;
          v454 = *(v444 + 56);
          (v454)(v222, 0, 1, v439);
          v224 = v412;
          sub_1D1741C08(v220, v412, &qword_1EC642590, qword_1D1E71260);
          if ((*(v219 + 48))(v224, 1, v221) == 1)
          {
            sub_1D1741A30(v224, &qword_1EC642590, qword_1D1E71260);
            v225 = v421;
            (*(v219 + 16))(v421, v218, v221);
          }

          else
          {
            v234 = *(v219 + 32);
            v235 = v406;
            v234(v406, v224, v221);
            v225 = v421;
            v236 = v235;
            v222 = v430;
            v234(v421, v236, v221);
          }

          sub_1D17419CC(&v451, &v225[*(v215 + 20)]);
          v237 = v414;
          sub_1D1741C08(v222, v414, &qword_1EC64CC00, &unk_1D1EA1FA0);
          v238 = (*(v444 + 48))(v237, 1, v223);
          v239 = v425;
          if (v238 == 1)
          {
            sub_1D1741A30(v237, &qword_1EC64CC00, &unk_1D1EA1FA0);
            sub_1D17419CC(&v451, v450);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
            if (swift_dynamicCast())
            {
              sub_1D1741A30(v222, &qword_1EC64CC00, &unk_1D1EA1FA0);
              sub_1D1741A30(v431, &qword_1EC642590, qword_1D1E71260);
              sub_1D1C72E20(v434, type metadata accessor for StaticMediaSystem);
              sub_1D1C72E20(v239, type metadata accessor for StaticActionSet);
              v240 = 1;
            }

            else
            {
              v264 = *(v218 + *(v428 + 40));
              sub_1D1741A30(v222, &qword_1EC64CC00, &unk_1D1EA1FA0);
              sub_1D1741A30(v431, &qword_1EC642590, qword_1D1E71260);
              sub_1D1C72E20(v434, type metadata accessor for StaticMediaSystem);
              if (v264)
              {
                v240 = 2;
              }

              else
              {
                v240 = 3;
              }
            }

            v265 = v410;
            (v454)(v410, v240, 3, v223);
            sub_1D1C72E80(v265, &v225[*(v215 + 24)], type metadata accessor for BoxedTileInfoBearer.TileSort);
          }

          else
          {
            sub_1D1741A30(v222, &qword_1EC64CC00, &unk_1D1EA1FA0);
            sub_1D1741A30(v431, &qword_1EC642590, qword_1D1E71260);
            sub_1D1C72E20(v434, type metadata accessor for StaticMediaSystem);
            v243 = v408;
            sub_1D1C72E80(v237, v408, type metadata accessor for StaticUserActionPrediction);
            v244 = *(v215 + 24);
            sub_1D1C72E80(v243, &v225[v244], type metadata accessor for StaticUserActionPrediction);
            (v454)(&v225[v244], 0, 3, v223);
          }

          v263 = v225;
          goto LABEL_58;
        }
      }
    }

    return (*(v447 + 56))(v448, 1, 1, v164);
  }

  v443 = v160;
  v445 = &v364 - v161;
  v193 = type metadata accessor for StateSnapshot(0);
  v194 = *(v446 + *(v193 + 32));
  if (!*(v194 + 16))
  {
    return (*(v447 + 56))(v448, 1, 1, v449);
  }

  v195 = v193;
  v196 = sub_1D1742188();
  if ((v197 & 1) == 0)
  {
    return (*(v447 + 56))(v448, 1, 1, v449);
  }

  sub_1D1C66B60(*(v194 + 56) + *(v156 + 72) * v196, v159, type metadata accessor for StaticAccessory);
  v198 = v445;
  sub_1D1C72E80(v159, v445, type metadata accessor for StaticAccessory);
  v199 = v198 + v443[23];
  v200 = *(v199 + 8);
  if (v200 <= 2)
  {
    v201 = v438;
    v202 = v427;
    if (v200 >= 2)
    {
      v203 = *v199;
      if (v203 & 0x100) == 0 && (v203)
      {
        goto LABEL_19;
      }
    }

LABEL_46:
    v257 = v448;
    v258 = *(v447 + 56);
    v259 = 1;
    goto LABEL_47;
  }

  v201 = v438;
  v202 = v427;
  if (v200 == 3)
  {
    goto LABEL_46;
  }

LABEL_19:
  StaticAccessory.staticServicesExcludingComponents.getter();
  v205 = *(v204 + 16);

  if (v205 != 1)
  {
    goto LABEL_22;
  }

  StaticAccessory.primaryStaticService.getter(v148);
  v206 = v398;
  if ((*(v397 + 48))(v148, 1, v398) == 1)
  {
    sub_1D1741A30(v148, &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_22:
    v207 = v402;
    sub_1D1741C08(&v454[*(v439 + 24)], v402, &qword_1EC642590, qword_1D1E71260);
    v208 = *(v201 + 48);
    v209 = v436;
    v210 = v208(v207, 1, v436);
    v442 = (v201 + 48);
    if (v210 == 1)
    {
      v211 = v208;
      sub_1D1741A30(v207, &qword_1EC642590, qword_1D1E71260);
LABEL_75:
      v279 = v439;
LABEL_76:
      v452 = v443;
      v453 = sub_1D1C75134(&qword_1EC64BA18, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v280 = __swift_allocate_boxed_opaque_existential_1(&v451);
      sub_1D1C66B60(v445, v280, type metadata accessor for StaticAccessory);
      v281 = v405;
      (*(v201 + 56))(v405, 1, 1, v209);
      v282 = v403;
      sub_1D1C66B60(v454, v403, type metadata accessor for StaticUserActionPrediction);
      v283 = v279;
      v454 = *(v444 + 56);
      (v454)(v282, 0, 1, v279);
      v284 = v400;
      sub_1D1741C08(v281, v400, &qword_1EC642590, qword_1D1E71260);
      if (v211(v284, 1, v209) == 1)
      {
        sub_1D1741A30(v284, &qword_1EC642590, qword_1D1E71260);
        v285 = v404;
        (*(v201 + 16))(v404, v280, v209);
      }

      else
      {
        v286 = *(v201 + 32);
        v287 = v390;
        v286(v390, v284, v209);
        v285 = v404;
        v288 = v287;
        v282 = v403;
        v286(v404, v288, v209);
      }

      v289 = v399;
      v290 = v449;
      sub_1D17419CC(&v451, v285 + *(v449 + 20));
      v291 = v401;
      sub_1D1741C08(v282, v401, &qword_1EC64CC00, &unk_1D1EA1FA0);
      if ((*(v444 + 48))(v291, 1, v283) == 1)
      {
        sub_1D1741A30(v291, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D17419CC(&v451, v450);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        if (swift_dynamicCast())
        {
          sub_1D1741A30(v282, &qword_1EC64CC00, &unk_1D1EA1FA0);
          sub_1D1741A30(v405, &qword_1EC642590, qword_1D1E71260);
          sub_1D1C72E20(v289, type metadata accessor for StaticActionSet);
          v292 = 1;
        }

        else
        {
          v309 = *(v280 + v443[16]);
          sub_1D1741A30(v282, &qword_1EC64CC00, &unk_1D1EA1FA0);
          sub_1D1741A30(v405, &qword_1EC642590, qword_1D1E71260);
          if (v309)
          {
            v292 = 2;
          }

          else
          {
            v292 = 3;
          }
        }

        v310 = v392;
        (v454)(v392, v292, 3, v283);
        sub_1D1C72E80(v310, v285 + *(v290 + 24), type metadata accessor for BoxedTileInfoBearer.TileSort);
      }

      else
      {
        sub_1D1741A30(v282, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D1741A30(v405, &qword_1EC642590, qword_1D1E71260);
        v293 = v391;
        sub_1D1C72E80(v291, v391, type metadata accessor for StaticUserActionPrediction);
        v294 = *(v290 + 24);
        v295 = v293;
        v285 = v404;
        sub_1D1C72E80(v295, &v404[v294], type metadata accessor for StaticUserActionPrediction);
        (v454)(v285 + v294, 0, 3, v283);
      }

      v311 = v448;
      sub_1D1C72E80(v285, v448, type metadata accessor for BoxedTileInfoBearer);
      __swift_destroy_boxed_opaque_existential_1(&v451);
      v258 = *(v447 + 56);
      v257 = v311;
      v259 = 0;
      v260 = v290;
      goto LABEL_90;
    }

    v269 = v394;
    v441 = *(v201 + 32);
    (v441)(v394, v207, v209);
    v270 = *(v446 + *(v195 + 60));
    if (!*(v270 + 16) || (v271 = sub_1D1742188(), (v272 & 1) == 0))
    {
      v211 = v208;
      v201 = v438;
      (*(v438 + 8))(v269, v209);
      goto LABEL_75;
    }

    sub_1D1C66B60(*(v270 + 56) + *(v397 + 72) * v271, v151, type metadata accessor for StaticService);
    v273 = v383;
    sub_1D1C72E80(v151, v383, type metadata accessor for StaticService);
    v274 = v439;
    if (qword_1EC642398 != -1)
    {
      swift_once();
    }

    v275 = v398;
    v276 = *(v398 + 104);
    v277 = sub_1D171951C(*(v273 + v276), qword_1EC6BE1B0);
    v278 = v382;
    if ((v277 & 1) == 0)
    {
      goto LABEL_73;
    }

    sub_1D1741C08(v273 + v275[29], v382, &qword_1EC642590, qword_1D1E71260);
    v209 = v436;
    if (v208(v278, 1, v436) != 1)
    {
      v211 = v208;
      sub_1D1C72E20(v273, type metadata accessor for StaticService);
      v201 = v438;
      (*(v438 + 8))(v394, v209);
      sub_1D1741A30(v278, &qword_1EC642590, qword_1D1E71260);
      goto LABEL_103;
    }

    sub_1D1741A30(v278, &qword_1EC642590, qword_1D1E71260);
    if (qword_1EE07AB30 != -1)
    {
      swift_once();
    }

    if (sub_1D171951C(*(v273 + v276), off_1EE07AB38))
    {
LABEL_73:
      v211 = v208;
      sub_1D1C72E20(v273, type metadata accessor for StaticService);
      v201 = v438;
      v209 = v436;
      (*(v438 + 8))(v394, v436);
LABEL_103:
      v279 = v274;
      goto LABEL_76;
    }

    v440 = v208;
    if (*(v445 + v443[19]) & 1) != 0 || (StaticAccessory.staticServicesExcludingComponents.getter(), v275 = v398, v327 = *(v326 + 16), , v327 < 2) || (*(v446 + *(type metadata accessor for TileInfoBearerCollection(0) + 32)))
    {
      v452 = v275;
      v453 = sub_1D1C75134(&qword_1EC646AF0, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v328 = __swift_allocate_boxed_opaque_existential_1(&v451);
      sub_1D1C66B60(v273, v328, type metadata accessor for StaticService);
      v329 = v380;
      v330 = v436;
      (*(v438 + 56))(v380, 1, 1, v436);
      v331 = v381;
      sub_1D1C66B60(v454, v381, type metadata accessor for StaticUserActionPrediction);
      v454 = *(v444 + 56);
      (v454)(v331, 0, 1, v274);
      v332 = v329;
      v333 = v377;
      sub_1D1741C08(v332, v377, &qword_1EC642590, qword_1D1E71260);
      if ((v440)(v333, 1, v330) == 1)
      {
        sub_1D1741A30(v333, &qword_1EC642590, qword_1D1E71260);
        v334 = v379;
        (*(v438 + 16))(v379, v328, v330);
      }

      else
      {
        v335 = v372;
        v336 = v441;
        (v441)(v372, v333, v330);
        v334 = v379;
        v336(v379, v335, v330);
      }

      v337 = v449;
      sub_1D17419CC(&v451, v334 + *(v449 + 20));
      v338 = v378;
      sub_1D1741C08(v381, v378, &qword_1EC64CC00, &unk_1D1EA1FA0);
      if ((*(v444 + 48))(v338, 1, v274) == 1)
      {
        sub_1D1741A30(v338, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D17419CC(&v451, v450);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        v339 = v374;
        if (swift_dynamicCast())
        {
          sub_1D1741A30(v381, &qword_1EC64CC00, &unk_1D1EA1FA0);
          sub_1D1741A30(v380, &qword_1EC642590, qword_1D1E71260);
          sub_1D1C72E20(v273, type metadata accessor for StaticService);
          (*(v438 + 8))(v394, v436);
          sub_1D1C72E20(v339, type metadata accessor for StaticActionSet);
          v340 = 1;
        }

        else
        {
          v343 = *(v328 + *(v398 + 92));
          sub_1D1741A30(v381, &qword_1EC64CC00, &unk_1D1EA1FA0);
          sub_1D1741A30(v380, &qword_1EC642590, qword_1D1E71260);
          sub_1D1C72E20(v273, type metadata accessor for StaticService);
          (*(v438 + 8))(v394, v436);
          if (v343)
          {
            v340 = 2;
          }

          else
          {
            v340 = 3;
          }
        }

        v344 = v375;
        (v454)(v375, v340, 3, v439);
        v337 = v449;
        v334 = v379;
        sub_1D1C72E80(v344, &v379[*(v449 + 24)], type metadata accessor for BoxedTileInfoBearer.TileSort);
      }

      else
      {
        sub_1D1741A30(v381, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D1741A30(v380, &qword_1EC642590, qword_1D1E71260);
        sub_1D1C72E20(v273, type metadata accessor for StaticService);
        (*(v438 + 8))(v394, v436);
        v341 = v373;
        sub_1D1C72E80(v338, v373, type metadata accessor for StaticUserActionPrediction);
        v342 = *(v337 + 24);
        sub_1D1C72E80(v341, v334 + v342, type metadata accessor for StaticUserActionPrediction);
        (v454)(v334 + v342, 0, 3, v274);
      }

      v345 = v448;
      sub_1D1C72E80(v334, v448, type metadata accessor for BoxedTileInfoBearer);
      __swift_destroy_boxed_opaque_existential_1(&v451);
      (*(v447 + 56))(v345, 0, 1, v337);
      return sub_1D1C72E20(v445, type metadata accessor for StaticAccessory);
    }

    v452 = v443;
    v453 = sub_1D1C75134(&qword_1EC64BA18, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    v346 = __swift_allocate_boxed_opaque_existential_1(&v451);
    sub_1D1C66B60(v445, v346, type metadata accessor for StaticAccessory);
    v347 = v369;
    v348 = v274;
    v349 = v436;
    (*(v438 + 56))(v369, 1, 1, v436);
    v350 = v371;
    sub_1D1C66B60(v454, v371, type metadata accessor for StaticUserActionPrediction);
    v351 = *(v444 + 56);
    v351(v350, 0, 1, v348);
    v352 = v368;
    sub_1D1741C08(v347, v368, &qword_1EC642590, qword_1D1E71260);
    if ((v440)(v352, 1, v349) == 1)
    {
      sub_1D1741A30(v368, &qword_1EC642590, qword_1D1E71260);
      (*(v438 + 16))(v376, v346, v436);
    }

    else
    {
      v353 = v364;
      v354 = v436;
      v355 = v441;
      (v441)(v364, v368, v436);
      v355(v376, v353, v354);
    }

    sub_1D17419CC(&v451, v376 + *(v449 + 20));
    v356 = v370;
    sub_1D1741C08(v371, v370, &qword_1EC64CC00, &unk_1D1EA1FA0);
    if ((*(v444 + 48))(v356, 1, v439) == 1)
    {
      sub_1D1741A30(v370, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D17419CC(&v451, v450);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
      if (swift_dynamicCast())
      {
        sub_1D1741A30(v371, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D1741A30(v369, &qword_1EC642590, qword_1D1E71260);
        sub_1D1C72E20(v383, type metadata accessor for StaticService);
        (*(v438 + 8))(v394, v436);
        sub_1D1C72E20(v367, type metadata accessor for StaticActionSet);
        v357 = 1;
      }

      else
      {
        v361 = *(v346 + v443[16]);
        sub_1D1741A30(v371, &qword_1EC64CC00, &unk_1D1EA1FA0);
        sub_1D1741A30(v369, &qword_1EC642590, qword_1D1E71260);
        sub_1D1C72E20(v383, type metadata accessor for StaticService);
        (*(v438 + 8))(v394, v436);
        if (v361)
        {
          v357 = 2;
        }

        else
        {
          v357 = 3;
        }
      }

      v362 = v366;
      v351(v366, v357, 3, v439);
      sub_1D1C72E80(v362, v376 + *(v449 + 24), type metadata accessor for BoxedTileInfoBearer.TileSort);
    }

    else
    {
      sub_1D1741A30(v371, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v369, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v383, type metadata accessor for StaticService);
      (*(v438 + 8))(v394, v436);
      v358 = v365;
      sub_1D1C72E80(v370, v365, type metadata accessor for StaticUserActionPrediction);
      v359 = *(v449 + 24);
      v360 = v376;
      sub_1D1C72E80(v358, v376 + v359, type metadata accessor for StaticUserActionPrediction);
      v351(v360 + v359, 0, 3, v439);
    }

    v363 = v448;
    sub_1D1C72E80(v376, v448, type metadata accessor for BoxedTileInfoBearer);
    __swift_destroy_boxed_opaque_existential_1(&v451);
    v258 = *(v447 + 56);
    v257 = v363;
    v259 = 0;
LABEL_47:
    v260 = v449;
LABEL_90:
    v258(v257, v259, 1, v260);
    return sub_1D1C72E20(v445, type metadata accessor for StaticAccessory);
  }

  v296 = v395;
  sub_1D1C72E80(v148, v395, type metadata accessor for StaticService);
  v452 = v206;
  v453 = sub_1D1C75134(&qword_1EC646AF0, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  v297 = __swift_allocate_boxed_opaque_existential_1(&v451);
  sub_1D1C66B60(v296, v297, type metadata accessor for StaticService);
  v298 = v396;
  v299 = v436;
  (*(v201 + 56))(v396, 1, 1, v436);
  sub_1D1C66B60(v454, v202, type metadata accessor for StaticUserActionPrediction);
  v300 = (v444 + 56);
  v301 = *(v444 + 56);
  v302 = v202;
  v303 = v439;
  (v301)(v302, 0, 1, v439);
  v304 = v298;
  v305 = v387;
  sub_1D1741C08(v304, v387, &qword_1EC642590, qword_1D1E71260);
  v306 = (*(v201 + 48))(v305, 1, v299);
  v454 = v301;
  v446 = v300;
  v443 = v297;
  v307 = v303;
  if (v306 == 1)
  {
    sub_1D1741A30(v305, &qword_1EC642590, qword_1D1E71260);
    v308 = v393;
    (*(v201 + 16))(v393, v297, v299);
  }

  else
  {
    v312 = *(v201 + 32);
    v313 = v384;
    v312(v384, v305, v299);
    v308 = v393;
    v312(v393, v313, v299);
  }

  v314 = v449;
  sub_1D17419CC(&v451, v308 + *(v449 + 20));
  v315 = v427;
  v316 = v388;
  sub_1D1741C08(v427, v388, &qword_1EC64CC00, &unk_1D1EA1FA0);
  v317 = v307;
  v318 = (*(v444 + 48))(v316, 1, v307);
  v319 = v389;
  if (v318 == 1)
  {
    sub_1D1741A30(v316, &qword_1EC64CC00, &unk_1D1EA1FA0);
    sub_1D17419CC(&v451, v450);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    if (swift_dynamicCast())
    {
      sub_1D1741A30(v427, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v396, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v395, type metadata accessor for StaticService);
      sub_1D1C72E20(v319, type metadata accessor for StaticActionSet);
      v320 = 1;
    }

    else
    {
      v323 = *(v443 + *(v398 + 92));
      sub_1D1741A30(v427, &qword_1EC64CC00, &unk_1D1EA1FA0);
      sub_1D1741A30(v396, &qword_1EC642590, qword_1D1E71260);
      sub_1D1C72E20(v395, type metadata accessor for StaticService);
      if (v323)
      {
        v320 = 2;
      }

      else
      {
        v320 = 3;
      }
    }

    v324 = v386;
    (v454)(v386, v320, 3, v317);
    v308 = v393;
    sub_1D1C72E80(v324, &v393[*(v314 + 24)], type metadata accessor for BoxedTileInfoBearer.TileSort);
  }

  else
  {
    sub_1D1741A30(v315, &qword_1EC64CC00, &unk_1D1EA1FA0);
    sub_1D1741A30(v396, &qword_1EC642590, qword_1D1E71260);
    sub_1D1C72E20(v395, type metadata accessor for StaticService);
    v321 = v385;
    sub_1D1C72E80(v316, v385, type metadata accessor for StaticUserActionPrediction);
    v322 = *(v314 + 24);
    sub_1D1C72E80(v321, v308 + v322, type metadata accessor for StaticUserActionPrediction);
    (v454)(v308 + v322, 0, 3, v307);
  }

  v325 = v448;
  sub_1D1C72E80(v308, v448, type metadata accessor for BoxedTileInfoBearer);
  __swift_destroy_boxed_opaque_existential_1(&v451);
  (*(v447 + 56))(v325, 0, 1, v314);
  return sub_1D1C72E20(v445, type metadata accessor for StaticAccessory);
}

uint64_t sub_1D1C6406C()
{
  v364 = type metadata accessor for StaticAccessory(0);
  v368 = *(v364 - 8);
  v1 = MEMORY[0x1EEE9AC00](v364);
  v370 = &v355 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v380 = &v355 - v3;
  v4 = type metadata accessor for StaticService(0);
  v375 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v355 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v367 = type metadata accessor for StaticServiceGroup(0);
  v371 = *(v367 - 8);
  MEMORY[0x1EEE9AC00](v367);
  v393 = &v355 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v386 = type metadata accessor for BoxedTileInfoBearer(0);
  v8 = *(v386 - 8);
  v9 = MEMORY[0x1EEE9AC00](v386);
  v385 = &v355 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v377 = &v355 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v379 = &v355 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v384 = &v355 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v378 = &v355 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v383 = &v355 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v382 = &v355 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v390 = &v355 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v389 = &v355 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v388 = &v355 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v381 = &v355 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v355 - v31;
  v33 = sub_1D1E66A7C();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v392 = &v355 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v394 = &v355 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v355 = &v355 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v43 = &v355 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v45 = &v355 - v44;
  v357 = type metadata accessor for StateSnapshot(0);

  v47 = sub_1D17821C0(v46);
  v398 = v0;
  v48 = 0;
  v49 = sub_1D1B51F30(sub_1D1C750D4, v397, v47);
  v360 = 0;
  v358 = sub_1D1C5ADDC(v49);
  v369 = v50;
  v51 = sub_1D1C5CC2C();
  v363 = v0;
  v361 = sub_1D1C5EFE0();
  v52 = *(v51 + 16);
  v391 = v32;
  v362 = v8;
  v396 = v34;
  v356 = v51;
  if (v52)
  {
    v48 = v32;
    v402 = MEMORY[0x1E69E7CC0];
    v395 = v52;
    sub_1D178CEFC(0, v52, 0);
    v53 = v402;
    v54 = v8;
    v55 = v51 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v387 = *(v54 + 72);
    v376 = v34 + 32;
    do
    {
      sub_1D1C66B60(v55, v48, type metadata accessor for BoxedTileInfoBearer);
      __swift_project_boxed_opaque_existential_1((v48 + *(v386 + 20)), *(v48 + *(v386 + 20) + 24));
      sub_1D1E6886C();
      sub_1D1C72E20(v48, type metadata accessor for BoxedTileInfoBearer);
      v402 = v53;
      v57 = *(v53 + 16);
      v56 = *(v53 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1D178CEFC((v56 > 1), v57 + 1, 1);
        v53 = v402;
      }

      *(v53 + 16) = v57 + 1;
      (*(v396 + 32))(v53 + ((*(v396 + 80) + 32) & ~*(v396 + 80)) + *(v396 + 72) * v57, v45, v33);
      v55 += v387;
      --v395;
      v48 = v391;
    }

    while (v395);
    v359 = v53;
  }

  else
  {
    v359 = MEMORY[0x1E69E7CC0];
  }

  v58 = v369;
  v366 = *(v369 + 16);
  if (v366)
  {
    v59 = 0;
    v365 = v369 + ((*(v371 + 80) + 32) & ~*(v371 + 80));
    v60 = MEMORY[0x1E69E7CC0];
    v61 = (v396 + 16);
    v395 = v396 + 32;
    while (1)
    {
      if (v59 >= *(v58 + 16))
      {
        goto LABEL_228;
      }

      v387 = v60;
      v62 = *(v371 + 72);
      v376 = v59;
      v63 = v393;
      sub_1D1C66B60(v365 + v62 * v59, v393, type metadata accessor for StaticServiceGroup);
      v64 = *(v63 + *(v367 + 56));
      v65 = v64[2];
      if (v65)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643258, &qword_1D1E716B0);
        v66 = *(v375 + 72);
        v48 = (*(v375 + 80) + 32) & ~*(v375 + 80);
        v67 = swift_allocObject();
        v68 = _swift_stdlib_malloc_size(v67);
        if (!v66)
        {
          goto LABEL_231;
        }

        if (v68 - v48 == 0x8000000000000000 && v66 == -1)
        {
          goto LABEL_235;
        }

        v67[2] = v65;
        v67[3] = 2 * ((v68 - v48) / v66);
        v70 = v67;
        v48 = sub_1D1804A58(&v402, v67 + v48, v65, v64);
        v71 = v402;
        v374 = v404;
        v373 = v405;
        v372 = v406;

        sub_1D1716918(v71);
        if (v48 != v65)
        {
          goto LABEL_232;
        }
      }

      else
      {
        v70 = MEMORY[0x1E69E7CC0];
      }

      sub_1D1C72E20(v393, type metadata accessor for StaticServiceGroup);
      v72 = v70[2];
      if (v72)
      {
        v402 = MEMORY[0x1E69E7CC0];
        sub_1D178CEFC(0, v72, 0);
        v73 = v402;
        v74 = (*(v375 + 80) + 32) & ~*(v375 + 80);
        v374 = v70;
        v75 = v70 + v74;
        v76 = *(v375 + 72);
        do
        {
          sub_1D1C66B60(v75, v6, type metadata accessor for StaticService);
          (*v61)(v43, v6, v33);
          sub_1D1C72E20(v6, type metadata accessor for StaticService);
          v402 = v73;
          v78 = *(v73 + 16);
          v77 = *(v73 + 24);
          if (v78 >= v77 >> 1)
          {
            sub_1D178CEFC((v77 > 1), v78 + 1, 1);
            v73 = v402;
          }

          *(v73 + 16) = v78 + 1;
          (*(v396 + 32))(v73 + ((*(v396 + 80) + 32) & ~*(v396 + 80)) + *(v396 + 72) * v78, v43, v33);
          v75 += v76;
          --v72;
        }

        while (v72);
      }

      else
      {

        v73 = MEMORY[0x1E69E7CC0];
      }

      v48 = *(v73 + 16);
      v60 = v387;
      v79 = v387[2];
      v80 = v79 + v48;
      if (__OFADD__(v79, v48))
      {
        goto LABEL_229;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v80 <= v60[3] >> 1)
      {
        if (!*(v73 + 16))
        {
          goto LABEL_10;
        }
      }

      else
      {
        if (v79 <= v80)
        {
          v82 = v79 + v48;
        }

        else
        {
          v82 = v79;
        }

        v60 = sub_1D177D0AC(isUniquelyReferenced_nonNull_native, v82, 1, v60);
        if (!*(v73 + 16))
        {
LABEL_10:

          v58 = v369;
          if (v48)
          {
            goto LABEL_230;
          }

          goto LABEL_11;
        }
      }

      if ((v60[3] >> 1) - v60[2] < v48)
      {
        goto LABEL_233;
      }

      swift_arrayInitWithCopy();

      v58 = v369;
      if (v48)
      {
        v83 = v60[2];
        v84 = __OFADD__(v83, v48);
        v85 = v83 + v48;
        if (v84)
        {
          goto LABEL_234;
        }

        v60[2] = v85;
      }

LABEL_11:
      v59 = v376 + 1;
      if (v376 + 1 == v366)
      {
        goto LABEL_43;
      }
    }
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_43:
  v402 = v359;
  sub_1D17A3840(v60);
  v86 = v402;
  v87 = v361;
  v88 = *(v361 + 16);
  v89 = MEMORY[0x1E69E7CC0];
  if (v88)
  {
    v393 = v402;
    v402 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v88, 0);
    v89 = v402;
    v90 = v87 + ((*(v362 + 80) + 32) & ~*(v362 + 80));
    v395 = *(v362 + 72);
    v91 = v355;
    v92 = v391;
    do
    {
      sub_1D1C66B60(v90, v92, type metadata accessor for BoxedTileInfoBearer);
      __swift_project_boxed_opaque_existential_1((v92 + *(v386 + 20)), *(v92 + *(v386 + 20) + 24));
      sub_1D1E6886C();
      sub_1D1C72E20(v92, type metadata accessor for BoxedTileInfoBearer);
      v402 = v89;
      v94 = *(v89 + 16);
      v93 = *(v89 + 24);
      if (v94 >= v93 >> 1)
      {
        sub_1D178CEFC((v93 > 1), v94 + 1, 1);
        v89 = v402;
      }

      *(v89 + 16) = v94 + 1;
      (*(v396 + 32))(v89 + ((*(v396 + 80) + 32) & ~*(v396 + 80)) + *(v396 + 72) * v94, v91, v33);
      v90 += v395;
      --v88;
    }

    while (v88);
    v86 = v393;
  }

  v402 = v86;
  sub_1D17A3840(v89);
  v95 = sub_1D17841EC(v402);

  v96 = v363;
  v97 = sub_1D1C5B538();
  MEMORY[0x1EEE9AC00](v97);
  *(&v355 - 2) = v96;
  v98 = v360;
  v100 = sub_1D1B51BF8(sub_1D1C750F4, (&v355 - 4), v99);
  MEMORY[0x1EEE9AC00](v100);
  *(&v355 - 2) = v96;
  v102 = sub_1D18667F4(sub_1D1C75114, (&v355 - 4), v101);
  v103 = v102;
  v365 = v98;
  v104 = MEMORY[0x1E69E7CC0];
  v367 = *(v102 + 16);
  if (v367)
  {
    v48 = 0;
    v395 = v396 + 16;
    v393 = v95 + 56;
    v105 = (v396 + 8);
    v366 = v102;
    while (v48 < *(v103 + 16))
    {
      v375 = v104;
      v107 = *(v368 + 72);
      v372 = (*(v368 + 80) + 32) & ~*(v368 + 80);
      v373 = v48;
      v371 = v107;
      sub_1D1C66B60(v103 + v372 + v107 * v48, v380, type metadata accessor for StaticAccessory);
      if (*(v95 + 16) && (v108 = *(v380 + *(v364 + 84)), (v374 = *(v108 + 16)) != 0))
      {
        v109 = 0;
        v376 = v108 + ((*(v396 + 80) + 32) & ~*(v396 + 80));
        v110 = *(v396 + 72);
        v111 = *(v396 + 16);
        while (1)
        {
          v387 = v109;
          v111(v394, v376 + v110 * v109, v33);
          if (*(v95 + 16))
          {
            sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
            v112 = sub_1D1E676DC();
            v113 = -1 << *(v95 + 32);
            v114 = v112 & ~v113;
            if ((*(v393 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114))
            {
              break;
            }
          }

LABEL_57:
          v109 = (v387 + 1);
          (*v105)(v394, v33);
          if (v109 == v374)
          {
            goto LABEL_64;
          }
        }

        v115 = ~v113;
        while (1)
        {
          v116 = v95;
          v117 = *(v95 + 48) + v114 * v110;
          v118 = v392;
          v111(v392, v117, v33);
          sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v119 = sub_1D1E6775C();
          v120 = *v105;
          (*v105)(v118, v33);
          if (v119)
          {
            break;
          }

          v114 = (v114 + 1) & v115;
          v95 = v116;
          if (((*(v393 + ((v114 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v114) & 1) == 0)
          {
            goto LABEL_57;
          }
        }

        v120(v394, v33);
        sub_1D1C72E20(v380, type metadata accessor for StaticAccessory);
        v104 = v375;
        v95 = v116;
        v103 = v366;
        v106 = v373;
      }

      else
      {
LABEL_64:
        sub_1D1C72E80(v380, v370, type metadata accessor for StaticAccessory);
        v104 = v375;
        v121 = swift_isUniquelyReferenced_nonNull_native();
        v402 = v104;
        if ((v121 & 1) == 0)
        {
          sub_1D178CEB8(0, *(v104 + 16) + 1, 1);
          v104 = v402;
        }

        v103 = v366;
        v106 = v373;
        v122 = v372;
        v124 = *(v104 + 16);
        v123 = *(v104 + 24);
        if (v124 >= v123 >> 1)
        {
          sub_1D178CEB8((v123 > 1), v124 + 1, 1);
          v104 = v402;
        }

        *(v104 + 16) = v124 + 1;
        sub_1D1C72E80(v370, v104 + v122 + v124 * v371, type metadata accessor for StaticAccessory);
      }

      v48 = v106 + 1;
      if (v48 == v367)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
    goto LABEL_236;
  }

LABEL_69:
  v375 = v104;

  v400 = 0;
  v401 = MEMORY[0x1E69E7CC0];
  v395 = type metadata accessor for TileInfoBearerCollection(0);
  v396 = *&v363[*(v395 + 36)];
  if ((v396 & 0x40) != 0)
  {
    sub_1D1C60440();
    v394 = v125;
    v127 = v126;
    v128 = *(v126 + 16);
    v129 = v381;
    if (v128)
    {
      v130 = 0;
      v131 = *(v362 + 72);
      v132 = (*(v362 + 80) + 32) & ~*(v362 + 80);
      do
      {
        sub_1D1C66B60(v127 + v132 + v131 * v130, v129, type metadata accessor for BoxedTileInfoBearer);
        v134 = v400;
        v135 = v401 + v132;
        v136 = *(v401 + 16);
        if (v400)
        {

          sub_1D1C6E730(v129, v135, v136, (v134 + 16), v134 + 32);
          v138 = v137;
          v133 = v139;

          if ((v138 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v140 = v391;
          if (v136)
          {
            do
            {
              sub_1D1C66B60(v135, v140, type metadata accessor for BoxedTileInfoBearer);
              v141 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
              sub_1D1C72E20(v140, type metadata accessor for BoxedTileInfoBearer);
              if (v141)
              {
                goto LABEL_74;
              }

              v135 += v131;
            }

            while (--v136);
          }

          v133 = 0;
        }

        sub_1D1C6D608(v381, v133);
LABEL_74:
        ++v130;
        v129 = v381;
        sub_1D1C72E20(v381, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v130 != v128);
    }
  }

  v142 = sub_1D1C74C24(v369);
  sub_1D1C58920(v142);
  v394 = v143;
  v145 = v144;
  v146 = *(v144 + 16);
  v147 = v388;
  if (v146)
  {
    v148 = 0;
    v149 = *(v362 + 72);
    v150 = (*(v362 + 80) + 32) & ~*(v362 + 80);
    do
    {
      sub_1D1C66B60(v145 + v150 + v149 * v148, v147, type metadata accessor for BoxedTileInfoBearer);
      v152 = v400;
      v153 = v401 + v150;
      v154 = *(v401 + 16);
      if (v400)
      {

        sub_1D1C6E730(v147, v153, v154, (v152 + 16), v152 + 32);
        v156 = v155;
        v151 = v157;

        if ((v156 & 1) == 0)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v158 = v391;
        if (v154)
        {
          do
          {
            sub_1D1C66B60(v153, v158, type metadata accessor for BoxedTileInfoBearer);
            v159 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
            sub_1D1C72E20(v158, type metadata accessor for BoxedTileInfoBearer);
            if (v159)
            {
              goto LABEL_87;
            }

            v153 += v149;
          }

          while (--v154);
        }

        v151 = 0;
      }

      sub_1D1C6D608(v388, v151);
LABEL_87:
      ++v148;
      v147 = v388;
      sub_1D1C72E20(v388, type metadata accessor for BoxedTileInfoBearer);
    }

    while (v148 != v146);
  }

  sub_1D1C58920(v356);
  v394 = v160;
  v162 = v161;
  v163 = *(v161 + 16);
  v164 = v389;
  if (v163)
  {
    v165 = 0;
    v166 = *(v362 + 72);
    v167 = (*(v362 + 80) + 32) & ~*(v362 + 80);
    do
    {
      sub_1D1C66B60(v162 + v167 + v166 * v165, v164, type metadata accessor for BoxedTileInfoBearer);
      v169 = v400;
      v170 = v401 + v167;
      v171 = *(v401 + 16);
      if (v400)
      {

        sub_1D1C6E730(v164, v170, v171, (v169 + 16), v169 + 32);
        v173 = v172;
        v168 = v174;

        if ((v173 & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v175 = v391;
        if (v171)
        {
          do
          {
            sub_1D1C66B60(v170, v175, type metadata accessor for BoxedTileInfoBearer);
            v176 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
            sub_1D1C72E20(v175, type metadata accessor for BoxedTileInfoBearer);
            if (v176)
            {
              goto LABEL_99;
            }

            v170 += v166;
          }

          while (--v171);
        }

        v168 = 0;
      }

      sub_1D1C6D608(v389, v168);
LABEL_99:
      ++v165;
      v164 = v389;
      sub_1D1C72E20(v389, type metadata accessor for BoxedTileInfoBearer);
    }

    while (v165 != v163);
  }

  v177 = sub_1D1C586D8(v375);

  sub_1D1C58920(v177);
  v394 = v178;
  v180 = v179;
  v181 = *(v179 + 16);
  v182 = v390;
  if (v181)
  {
    v183 = 0;
    v184 = *(v362 + 72);
    v185 = (*(v362 + 80) + 32) & ~*(v362 + 80);
    do
    {
      sub_1D1C66B60(v180 + v185 + v184 * v183, v182, type metadata accessor for BoxedTileInfoBearer);
      v187 = v400;
      v188 = v401 + v185;
      v189 = *(v401 + 16);
      if (v400)
      {

        sub_1D1C6E730(v182, v188, v189, (v187 + 16), v187 + 32);
        v191 = v190;
        v186 = v192;

        if ((v191 & 1) == 0)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v193 = v391;
        if (v189)
        {
          do
          {
            sub_1D1C66B60(v188, v193, type metadata accessor for BoxedTileInfoBearer);
            v194 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
            sub_1D1C72E20(v193, type metadata accessor for BoxedTileInfoBearer);
            if (v194)
            {
              goto LABEL_111;
            }

            v188 += v184;
          }

          while (--v189);
        }

        v186 = 0;
      }

      sub_1D1C6D608(v390, v186);
LABEL_111:
      ++v183;
      v182 = v390;
      sub_1D1C72E20(v390, type metadata accessor for BoxedTileInfoBearer);
    }

    while (v183 != v181);
  }

  if ((~v396 & 0xC) == 0)
  {
    v196 = *&v363[*(v357 + 44)];
    MEMORY[0x1EEE9AC00](v195);
    *(&v355 - 2) = v197;

    v198 = v365;
    v199 = sub_1D18664B0(sub_1D1C751B8, (&v355 - 4), v196);
    v365 = v198;
    v200 = sub_1D1C57DB8(v199);

    sub_1D1C58920(v200);
    v394 = v201;
    v203 = v202;
    v204 = *(v202 + 16);
    v205 = v382;
    if (v204)
    {
      v206 = 0;
      v207 = *(v362 + 72);
      v208 = (*(v362 + 80) + 32) & ~*(v362 + 80);
      do
      {
        sub_1D1C66B60(v203 + v208 + v207 * v206, v205, type metadata accessor for BoxedTileInfoBearer);
        v210 = v400;
        v211 = v401 + v208;
        v212 = *(v401 + 16);
        if (v400)
        {

          sub_1D1C6E730(v205, v211, v212, (v210 + 16), v210 + 32);
          v214 = v213;
          v209 = v215;

          if ((v214 & 1) == 0)
          {
            goto LABEL_124;
          }
        }

        else
        {
          v216 = v391;
          if (v212)
          {
            do
            {
              sub_1D1C66B60(v211, v216, type metadata accessor for BoxedTileInfoBearer);
              v217 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
              sub_1D1C72E20(v216, type metadata accessor for BoxedTileInfoBearer);
              if (v217)
              {
                goto LABEL_124;
              }

              v211 += v207;
            }

            while (--v212);
          }

          v209 = 0;
        }

        sub_1D1C6D608(v382, v209);
LABEL_124:
        ++v206;
        v205 = v382;
        sub_1D1C72E20(v382, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v206 != v204);
    }

    v218 = sub_1D1C5DDD0();
    v219 = sub_1D1C58490(v218);

    sub_1D1C58920(v219);
    v394 = v220;
    v222 = v221;
    v223 = *(v221 + 16);
    v224 = v383;
    if (v223)
    {
      v225 = 0;
      v226 = *(v362 + 72);
      v227 = (*(v362 + 80) + 32) & ~*(v362 + 80);
      do
      {
        sub_1D1C66B60(v222 + v227 + v226 * v225, v224, type metadata accessor for BoxedTileInfoBearer);
        v229 = v400;
        v230 = v401 + v227;
        v231 = *(v401 + 16);
        if (v400)
        {

          sub_1D1C6E730(v224, v230, v231, (v229 + 16), v229 + 32);
          v233 = v232;
          v228 = v234;

          if ((v233 & 1) == 0)
          {
            goto LABEL_136;
          }
        }

        else
        {
          v235 = v391;
          if (v231)
          {
            do
            {
              sub_1D1C66B60(v230, v235, type metadata accessor for BoxedTileInfoBearer);
              v236 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
              sub_1D1C72E20(v235, type metadata accessor for BoxedTileInfoBearer);
              if (v236)
              {
                goto LABEL_136;
              }

              v230 += v226;
            }

            while (--v231);
          }

          v228 = 0;
        }

        sub_1D1C6D608(v383, v228);
LABEL_136:
        ++v225;
        v224 = v383;
        sub_1D1C72E20(v383, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v225 != v223);
    }
  }

  v237 = v363;
  v238 = v378;
  if ((~v396 & 0x84) == 0)
  {
    sub_1D1C5DB58();
    v394 = v239;
    v241 = v240;
    v242 = *(v240 + 16);
    if (v242)
    {
      v243 = 0;
      v244 = *(v362 + 72);
      v245 = (*(v362 + 80) + 32) & ~*(v362 + 80);
      do
      {
        sub_1D1C66B60(v241 + v245 + v244 * v243, v238, type metadata accessor for BoxedTileInfoBearer);
        v246 = v400;
        v247 = v401 + v245;
        v248 = *(v401 + 16);
        if (v400)
        {

          sub_1D1C6E730(v238, v247, v248, (v246 + 16), v246 + 32);
          v250 = v249;
          v248 = v251;

          if ((v250 & 1) == 0)
          {
            goto LABEL_152;
          }
        }

        else if (v248)
        {
          v252 = v391;
          while (1)
          {
            sub_1D1C66B60(v247, v252, type metadata accessor for BoxedTileInfoBearer);
            v253 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
            sub_1D1C72E20(v252, type metadata accessor for BoxedTileInfoBearer);
            if (v253)
            {
              break;
            }

            v247 += v244;
            if (!--v248)
            {
              goto LABEL_148;
            }
          }

LABEL_152:
          v238 = v378;
          goto LABEL_149;
        }

LABEL_148:
        v238 = v378;
        sub_1D1C6D608(v378, v248);
LABEL_149:
        ++v243;
        sub_1D1C72E20(v238, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v243 != v242);
    }

    v237 = v363;
  }

  v254 = v361;
  if ((~v396 & 0x14) != 0)
  {
    v276 = v379;
  }

  else
  {
    v255 = *&v237[*(v395 + 20)];
    MEMORY[0x1EEE9AC00](v361);
    *(&v355 - 2) = v237;

    v256 = v365;
    v257 = sub_1D186645C(sub_1D1C75198, (&v355 - 4), v255);
    v365 = v256;
    v258 = sub_1D1C58248(v257);

    sub_1D1C58920(v258);
    v394 = v259;
    v261 = v260;
    v262 = *(v260 + 16);
    v263 = v384;
    if (v262)
    {
      v264 = 0;
      v265 = *(v362 + 72);
      v266 = (*(v362 + 80) + 32) & ~*(v362 + 80);
      do
      {
        sub_1D1C66B60(v261 + v266 + v265 * v264, v263, type metadata accessor for BoxedTileInfoBearer);
        v268 = v400;
        v269 = v401 + v266;
        v270 = *(v401 + 16);
        if (v400)
        {

          sub_1D1C6E730(v263, v269, v270, (v268 + 16), v268 + 32);
          v272 = v271;
          v267 = v273;

          if ((v272 & 1) == 0)
          {
            goto LABEL_164;
          }
        }

        else
        {
          v274 = v391;
          if (v270)
          {
            do
            {
              sub_1D1C66B60(v269, v274, type metadata accessor for BoxedTileInfoBearer);
              v275 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
              sub_1D1C72E20(v274, type metadata accessor for BoxedTileInfoBearer);
              if (v275)
              {
                goto LABEL_164;
              }

              v269 += v265;
            }

            while (--v270);
          }

          v267 = 0;
        }

        sub_1D1C6D608(v384, v267);
LABEL_164:
        ++v264;
        v263 = v384;
        sub_1D1C72E20(v384, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v264 != v262);
    }

    v276 = v379;
    v254 = v361;
  }

  v277 = v362;
  if ((v396 & 0x20) == 0)
  {

    goto LABEL_189;
  }

  sub_1D1C58920(v254);
  v396 = v279;
  v281 = v280;
  v282 = *(v280 + 16);
  if (v282)
  {
    v283 = 0;
    v284 = *(v277 + 72);
    v285 = (*(v277 + 80) + 32) & ~*(v277 + 80);
    do
    {
      sub_1D1C66B60(v281 + v285 + v284 * v283, v276, type metadata accessor for BoxedTileInfoBearer);
      v286 = v400;
      v287 = v401 + v285;
      v288 = *(v401 + 16);
      if (v400)
      {

        sub_1D1C6E730(v276, v287, v288, (v286 + 16), v286 + 32);
        v290 = v289;
        v288 = v291;

        if ((v290 & 1) == 0)
        {
          goto LABEL_182;
        }
      }

      else if (v288)
      {
        v292 = v391;
        while (1)
        {
          sub_1D1C66B60(v287, v292, type metadata accessor for BoxedTileInfoBearer);
          v293 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
          sub_1D1C72E20(v292, type metadata accessor for BoxedTileInfoBearer);
          if (v293)
          {
            break;
          }

          v287 += v284;
          if (!--v288)
          {
            goto LABEL_178;
          }
        }

LABEL_182:
        v276 = v379;
        goto LABEL_179;
      }

LABEL_178:
      v276 = v379;
      sub_1D1C6D608(v379, v288);
LABEL_179:
      ++v283;
      sub_1D1C72E20(v276, type metadata accessor for BoxedTileInfoBearer);
    }

    while (v283 != v282);
  }

LABEL_189:
  v294 = v363;
  if (v363[*(v395 + 48)] == 1)
  {
    sub_1D1C5A148();
    v296 = sub_1D1C74E6C(v295);
    sub_1D1C58920(v296);
    v396 = v297;
    v299 = v298;

    v300 = *(v299 + 16);
    if (v300)
    {
      v301 = 0;
      v302 = *(v362 + 72);
      v303 = (*(v362 + 80) + 32) & ~*(v362 + 80);
      v304 = v377;
      do
      {
        sub_1D1C66B60(v299 + v303 + v302 * v301, v304, type metadata accessor for BoxedTileInfoBearer);
        v305 = v400;
        v306 = v401 + v303;
        v307 = *(v401 + 16);
        if (v400)
        {

          sub_1D1C6E730(v304, v306, v307, (v305 + 16), v305 + 32);
          v309 = v308;
          v307 = v310;

          if ((v309 & 1) == 0)
          {
            goto LABEL_196;
          }
        }

        else if (v307)
        {
          v311 = v391;
          while (1)
          {
            sub_1D1C66B60(v306, v311, type metadata accessor for BoxedTileInfoBearer);
            v312 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
            sub_1D1C72E20(v311, type metadata accessor for BoxedTileInfoBearer);
            if (v312)
            {
              break;
            }

            v306 += v302;
            if (!--v307)
            {
              goto LABEL_192;
            }
          }

LABEL_196:
          v304 = v377;
          goto LABEL_193;
        }

LABEL_192:
        v304 = v377;
        sub_1D1C6D608(v377, v307);
LABEL_193:
        ++v301;
        sub_1D1C72E20(v304, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v301 != v300);
    }

    v294 = v363;
  }

  if (v294[*(v395 + 40)])
  {
    MEMORY[0x1EEE9AC00](v278);
    *(&v355 - 2) = v294;
    v313 = v365;
    v315 = sub_1D178659C(sub_1D1C7517C, (&v355 - 4), v314);
    v365 = v313;
    sub_1D1C58920(v315);
    v317 = v316;
    v319 = v318;
    v320 = v400;
    v321 = v401;

    v396 = v320;
    v322 = sub_1D1C66734(v320, v321, v317, v319);
    v324 = v323;
    v402 = v322;
    v403 = v323;
    v325 = *(v321 + 16);
    v395 = v322;

    v394 = v324;

    v326 = v385;
    if (v325)
    {
      v327 = 0;
      v328 = *(v362 + 72);
      v329 = (*(v362 + 80) + 32) & ~*(v362 + 80);
      do
      {
        sub_1D1C66B60(v321 + v329 + v328 * v327, v326, type metadata accessor for BoxedTileInfoBearer);
        v331 = v402;
        v332 = v403 + v329;
        v333 = *(v403 + 16);
        if (v402)
        {

          sub_1D1C6E730(v326, v332, v333, (v331 + 16), v331 + 32);
          v335 = v334;
          v330 = v336;

          if ((v335 & 1) == 0)
          {
            goto LABEL_208;
          }
        }

        else
        {
          if (v333)
          {
            do
            {
              v337 = v391;
              sub_1D1C66B60(v332, v391, type metadata accessor for BoxedTileInfoBearer);
              v338 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
              sub_1D1C72E20(v337, type metadata accessor for BoxedTileInfoBearer);
              if (v338)
              {
                goto LABEL_208;
              }

              v332 += v328;
            }

            while (--v333);
          }

          v330 = 0;
        }

        sub_1D1C6D608(v385, v330);
LABEL_208:
        ++v327;
        v326 = v385;
        sub_1D1C72E20(v385, type metadata accessor for BoxedTileInfoBearer);
      }

      while (v327 != v325);
    }

    v339 = v403;
    v400 = v402;
    v401 = v403;
  }

  else
  {
    v339 = v401;
  }

  v402 = v339;

  v48 = v365;
  sub_1D1C66BC8(&v402);
  if (v48)
  {
LABEL_236:

    __break(1u);
    return result;
  }

  v340 = v402;
  v341 = *(v402 + 16);
  if (v341)
  {
    v399 = MEMORY[0x1E69E7CC0];
    sub_1D178CF40(0, v341, 0);
    v342 = v399;
    v343 = v340 + ((*(v362 + 80) + 32) & ~*(v362 + 80));
    v344 = *(v362 + 72);
    do
    {
      v345 = v391;
      sub_1D1C66B60(v343, v391, type metadata accessor for BoxedTileInfoBearer);
      sub_1D17419CC(v345 + *(v386 + 20), &v402);
      sub_1D1C72E20(v345, type metadata accessor for BoxedTileInfoBearer);
      v399 = v342;
      v347 = *(v342 + 16);
      v346 = *(v342 + 24);
      if (v347 >= v346 >> 1)
      {
        sub_1D178CF40((v346 > 1), v347 + 1, 1);
      }

      v348 = v405;
      v349 = v406;
      v350 = __swift_mutable_project_boxed_opaque_existential_1(&v402, v405);
      MEMORY[0x1EEE9AC00](v350);
      v352 = &v355 - ((v351 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v353 + 16))(v352);
      sub_1D1D20ADC(v347, v352, &v399, v348, v349);
      __swift_destroy_boxed_opaque_existential_1(&v402);
      v342 = v399;
      v343 += v344;
      --v341;
    }

    while (v341);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v342;
}

uint64_t sub_1D1C66734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BoxedTileInfoBearer(0) - 8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v15 = &v26 - v14;
  v30 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  v16 = *(a4 + 16);
  if (!v16)
  {

    return 0;
  }

  v17 = 0;
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v28 = a4 + v18;
  v29 = v13;
  v26 = a3;
  v27 = a2 + v18;
  while (v17 < v16)
  {
    v19 = *(v13 + 72);
    sub_1D1C66B60(v28 + v19 * v17, v15, type metadata accessor for BoxedTileInfoBearer);
    v20 = a2;
    v21 = *(a2 + 16);
    if (a1)
    {

      sub_1D1C6E730(v15, v27, v21, (a1 + 16), a1 + 32);
      v23 = v22;

      if (v23)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v24 = v27;
      if (!v21)
      {
        goto LABEL_4;
      }

      while (1)
      {
        sub_1D1C66B60(v24, v11, type metadata accessor for BoxedTileInfoBearer);
        v25 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        sub_1D1C72E20(v11, type metadata accessor for BoxedTileInfoBearer);
        if (v25)
        {
          break;
        }

        v24 += v19;
        if (!--v21)
        {
          goto LABEL_4;
        }
      }
    }

    sub_1D1C6F794(v15);
LABEL_4:
    ++v17;
    result = sub_1D1C72E20(v15, type metadata accessor for BoxedTileInfoBearer);
    v16 = *(a4 + 16);
    a2 = v20;
    v13 = v29;
    if (v17 == v16)
    {

      return v30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C669BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1D1C6406C();
  result = sub_1D1C72E20(v1, type metadata accessor for TileInfoBearerCollection);
  *a1 = v3;
  a1[1] = 0;
  return result;
}

void *sub_1D1C66A0C()
{
  v1 = sub_1D1C27794(v0);
  sub_1D1C72E20(v0, type metadata accessor for TileInfoBearerCollection);
  return v1;
}

uint64_t sub_1D1C66A58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1D1C6406C();
  result = sub_1D1C72E20(v3, type metadata accessor for TileInfoBearerCollection);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_11;
  }

  if (!a3)
  {
LABEL_11:
    *a1 = v7;
    a1[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = v7 + 32;
      while (v10 < *(v7 + 16))
      {
        result = sub_1D17419CC(v11, a2);
        if (a3 - 1 == v10)
        {
          goto LABEL_11;
        }

        a2 += 40;
        ++v10;
        v11 += 40;
        if (v9 == v10)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    a3 = v9;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1D1C66B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C66BC8(uint64_t *a1)
{
  v2 = *(type metadata accessor for BoxedTileInfoBearer(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0BFF4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1C66C70(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1C66C70(uint64_t *a1)
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
        type metadata accessor for BoxedTileInfoBearer(0);
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for BoxedTileInfoBearer(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1C67D34(v8, v9, a1, v4);
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
    return sub_1D1C66D9C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1C66D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v169 = a1;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v129 = &v127[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v132 = &v127[-v11];
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v136);
  v155 = &v127[-v12];
  v13 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v148 = &v127[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v147 = &v127[-v17];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v145 = &v127[-v19];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v149 = &v127[-v21];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v157 = &v127[-v23];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v156 = &v127[-v25];
  v26 = MEMORY[0x1EEE9AC00](v24);
  v154 = &v127[-v27];
  MEMORY[0x1EEE9AC00](v26);
  v158 = &v127[-v28];
  v163 = type metadata accessor for StaticUserActionPrediction(0);
  v29 = *(v163 - 8);
  v30 = MEMORY[0x1EEE9AC00](v163);
  v139 = &v127[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v127[-v33];
  v35 = MEMORY[0x1EEE9AC00](v32);
  v144 = &v127[-v36];
  MEMORY[0x1EEE9AC00](v35);
  v146 = &v127[-v37];
  v161 = type metadata accessor for BoxedTileInfoBearer(0);
  v38 = MEMORY[0x1EEE9AC00](v161);
  v152 = &v127[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v127[-v41];
  result = MEMORY[0x1EEE9AC00](v40);
  v164 = &v127[-v45];
  v138 = a2;
  if (a3 != a2)
  {
    v46 = *a4;
    v47 = *(v44 + 72);
    v48 = (v29 + 48);
    v134 = (v8 + 48);
    v128 = (v8 + 32);
    v131 = (v8 + 8);
    v49 = v46 + v47 * (a3 - 1);
    v150 = -v47;
    v151 = v46;
    v50 = v169 - a3;
    v137 = v47;
    v51 = v46 + v47 * a3;
    v153 = (v29 + 48);
    v135 = v7;
    v133 = v34;
LABEL_5:
    v143 = a3;
    v140 = v51;
    v169 = v51;
    v141 = v50;
    v52 = v50;
    v142 = v49;
    while (1)
    {
      v160 = v52;
      v53 = v34;
      v54 = v164;
      sub_1D1C66B60(v169, v164, type metadata accessor for BoxedTileInfoBearer);
      v159 = v49;
      sub_1D1C66B60(v49, v42, type metadata accessor for BoxedTileInfoBearer);
      v55 = *(v161 + 24);
      v56 = v158;
      sub_1D1C66B60(&v54[v55], v158, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v57 = *v48;
      v58 = v163;
      v59 = (*v48)(v56, 3, v163);
      v60 = v56;
      v62 = v154;
      v61 = v155;
      v162 = v55;
      if (v59)
      {
        goto LABEL_9;
      }

      v63 = v146;
      sub_1D1C72E80(v158, v146, type metadata accessor for StaticUserActionPrediction);
      sub_1D1C66B60(&v42[v55], v62, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v64 = v57;
      if (v57(v62, 3, v58))
      {
        break;
      }

      v89 = v62;
      v90 = v144;
      sub_1D1C72E80(v89, v144, type metadata accessor for StaticUserActionPrediction);
      v91 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v92 = v90;
      v73 = v163;
      v69 = v53;
      if ((v91 & 1) == 0 || *&v63[*(v163 + 20)] != *&v92[*(v163 + 20)])
      {
        goto LABEL_35;
      }

      v93 = *(v163 + 24);
      v94 = *(v136 + 48);
      v95 = &v63[v93];
      v96 = v92;
      sub_1D1741C08(v95, v61, &qword_1EC642590, qword_1D1E71260);
      v97 = v94;
      sub_1D1741C08(&v96[v93], v61 + v94, &qword_1EC642590, qword_1D1E71260);
      v98 = *v134;
      v99 = v61;
      v100 = v61;
      v101 = v135;
      if ((*v134)(v99, 1, v135) == 1)
      {
        v102 = v98(v100 + v97, 1, v101);
        v73 = v163;
        v63 = v146;
        if (v102 != 1)
        {
          goto LABEL_34;
        }

        sub_1D1741A30(v100, &qword_1EC642590, qword_1D1E71260);
        v92 = v144;
        v69 = v133;
      }

      else
      {
        v103 = v132;
        sub_1D1741C08(v100, v132, &qword_1EC642590, qword_1D1E71260);
        if (v98(v100 + v97, 1, v101) == 1)
        {
          (*v131)(v103, v101);
          v73 = v163;
          v63 = v146;
LABEL_34:
          sub_1D1741A30(v100, &qword_1EC642980, &unk_1D1E6E6E0);
          v92 = v144;
          v69 = v133;
LABEL_35:
          sub_1D1C72E20(v92, type metadata accessor for StaticUserActionPrediction);
          sub_1D1C72E20(v63, type metadata accessor for StaticUserActionPrediction);
          goto LABEL_36;
        }

        v121 = v100 + v97;
        v122 = v129;
        (*v128)(v129, v121, v101);
        sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v130 = sub_1D1E6775C();
        v123 = *v131;
        (*v131)(v122, v101);
        v123(v103, v101);
        sub_1D1741A30(v100, &qword_1EC642590, qword_1D1E71260);
        v73 = v163;
        v92 = v144;
        v63 = v146;
        v69 = v133;
        if ((v130 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v124 = *(v73 + 28);
      v125 = v63[v124];
      v126 = v92[v124];
      sub_1D1C72E20(v92, type metadata accessor for StaticUserActionPrediction);
      v73 = v163;
      sub_1D1C72E20(v63, type metadata accessor for StaticUserActionPrediction);
      if (v125 == v126)
      {
LABEL_26:
        v34 = v69;
        v75 = v161;
        v76 = v164;
        v77 = &v164[*(v161 + 20)];
        v78 = v77[3];
        v79 = v77[4];
        __swift_project_boxed_opaque_existential_1(v77, v78);
        v167 = (*(v79 + 56))(v78, v79);
        v168 = v80;
        v81 = &v42[*(v75 + 20)];
        v83 = v81[3];
        v82 = v81[4];
        __swift_project_boxed_opaque_existential_1(v81, v83);
        v165 = (*(v82 + 56))(v83, v82);
        v166 = v84;
        sub_1D17D8EF0();
        v85 = sub_1D1E6860C();

        v86 = v85 == -1;
        v88 = v159;
        v87 = v160;
        goto LABEL_54;
      }

LABEL_36:
      v104 = v42;
      v105 = v164;
      v106 = v64;
      v107 = v162;
      v108 = v149;
      sub_1D1C66B60(&v164[v162], v149, type metadata accessor for BoxedTileInfoBearer.TileSort);
      if (!v106(v108, 3, v73))
      {
        sub_1D1C72E80(v149, v69, type metadata accessor for StaticUserActionPrediction);
        v108 = v145;
        sub_1D1C66B60(&v104[v107], v145, type metadata accessor for BoxedTileInfoBearer.TileSort);
        if (!v106(v108, 3, v73))
        {
          v118 = v139;
          sub_1D1C72E80(v108, v139, type metadata accessor for StaticUserActionPrediction);
          v119 = *(v69 + *(v73 + 20));
          v34 = v69;
          sub_1D1C72E20(v69, type metadata accessor for StaticUserActionPrediction);
          v120 = *&v118[*(v73 + 20)];
          sub_1D1C72E20(v118, type metadata accessor for StaticUserActionPrediction);
          v86 = v120 < v119;
          v76 = v164;
          v88 = v159;
          v87 = v160;
          v42 = v104;
          goto LABEL_54;
        }

        sub_1D1C72E20(v69, type metadata accessor for StaticUserActionPrediction);
        v105 = v164;
        v107 = v162;
      }

      sub_1D1C72E20(v108, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v109 = v147;
      sub_1D1C66B60(&v105[v107], v147, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v110 = v106(v109, 3, v73);
      if (v110 > 1)
      {
        v87 = v160;
        if (v110 == 2)
        {
          v111 = 3;
        }

        else
        {
          v111 = 4;
        }
      }

      else
      {
        v87 = v160;
        if (v110)
        {
          v111 = 2;
        }

        else
        {
          sub_1D1C72E20(v147, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v111 = 1;
        }
      }

      v34 = v69;
      v112 = v148;
      sub_1D1C66B60(&v104[v162], v148, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v113 = v106(v112, 3, v163);
      if (v113 > 1)
      {
        v88 = v159;
        if (v113 == 2)
        {
          v114 = 3;
        }

        else
        {
          v114 = 4;
        }
      }

      else
      {
        v88 = v159;
        if (v113)
        {
          v114 = 2;
        }

        else
        {
          sub_1D1C72E20(v148, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v114 = 1;
        }
      }

      v42 = v104;
      v86 = v111 < v114;
      v76 = v164;
LABEL_54:
      sub_1D1C72E20(v42, type metadata accessor for BoxedTileInfoBearer);
      result = sub_1D1C72E20(v76, type metadata accessor for BoxedTileInfoBearer);
      v48 = v153;
      if (!v86)
      {
        goto LABEL_4;
      }

      if (!v151)
      {
        __break(1u);
        return result;
      }

      v115 = v169;
      v116 = v152;
      sub_1D1C72E80(v169, v152, type metadata accessor for BoxedTileInfoBearer);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1C72E80(v116, v88, type metadata accessor for BoxedTileInfoBearer);
      v49 = v88 + v150;
      v169 = v115 + v150;
      v117 = __CFADD__(v87, 1);
      v52 = v87 + 1;
      if (v117)
      {
LABEL_4:
        a3 = v143 + 1;
        v49 = v142 + v137;
        v50 = v141 - 1;
        v51 = v140 + v137;
        if (v143 + 1 == v138)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    sub_1D1C72E20(v63, type metadata accessor for StaticUserActionPrediction);
    v60 = v62;
    v58 = v163;
    v54 = v164;
    v55 = v162;
LABEL_9:
    sub_1D1C72E20(v60, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v65 = v156;
    sub_1D1C66B60(&v54[v55], v156, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v66 = v58;
    v67 = v57;
    v68 = v57(v65, 3, v66);
    if (v68 > 1)
    {
      v69 = v53;
      if (v68 == 2)
      {
        v70 = 3;
      }

      else
      {
        v70 = 4;
      }
    }

    else
    {
      v69 = v53;
      if (v68)
      {
        v70 = 2;
      }

      else
      {
        sub_1D1C72E20(v156, type metadata accessor for BoxedTileInfoBearer.TileSort);
        v70 = 1;
      }
    }

    v71 = v157;
    sub_1D1C66B60(&v42[v55], v157, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v72 = v71;
    v73 = v163;
    v64 = v67;
    v74 = v67(v72, 3, v163);
    if (v74 > 1)
    {
      if (v74 == 2)
      {
        if (v70 == 3)
        {
          goto LABEL_26;
        }
      }

      else if (v70 == 4)
      {
        goto LABEL_26;
      }
    }

    else if (v74)
    {
      if (v70 == 2)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_1D1C72E20(v157, type metadata accessor for BoxedTileInfoBearer.TileSort);
      if (v70 == 1)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_36;
  }

  return result;
}

uint64_t sub_1D1C67D34(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v292 = a1;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v296 = &v283 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v283 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v283 - v14;
  v302 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v16 = MEMORY[0x1EEE9AC00](v302);
  v336 = &v283 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v286 = &v283 - v18;
  v19 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v330 = &v283 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v329 = &v283 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v322 = &v283 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v332 = &v283 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v339 = &v283 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v338 = &v283 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v337 = &v283 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v340 = &v283 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v307 = &v283 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v306 = &v283 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v298 = &v283 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v311 = &v283 - v43;
  v44 = MEMORY[0x1EEE9AC00](v42);
  v316 = &v283 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v315 = &v283 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v299 = &v283 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v318 = &v283 - v50;
  v345 = type metadata accessor for StaticUserActionPrediction(0);
  v51 = *(v345 - 1);
  v52 = MEMORY[0x1EEE9AC00](v345);
  v308 = &v283 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v321 = &v283 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v319 = &v283 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v331 = &v283 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v289 = &v283 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v297 = &v283 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v295 = &v283 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v326 = &v283 - v66;
  v341 = type metadata accessor for BoxedTileInfoBearer(0);
  v317 = *(v341 - 8);
  v67 = MEMORY[0x1EEE9AC00](v341);
  v304 = &v283 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = MEMORY[0x1EEE9AC00](v67);
  v335 = &v283 - v70;
  v71 = MEMORY[0x1EEE9AC00](v69);
  v72 = MEMORY[0x1EEE9AC00](v71);
  v328 = &v283 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v75 = MEMORY[0x1EEE9AC00](v74);
  v323 = &v283 - v76;
  v77 = MEMORY[0x1EEE9AC00](v75);
  v288 = &v283 - v78;
  result = MEMORY[0x1EEE9AC00](v77);
  v287 = &v283 - v82;
  v320 = a3;
  v83 = a3[1];
  if (v83 < 1)
  {
    v85 = MEMORY[0x1E69E7CC0];
    v89 = v4;
LABEL_206:
    v83 = *v292;
    if (!*v292)
    {
      goto LABEL_245;
    }

    v8 = v85;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v8;
LABEL_209:
      v350 = result;
      v8 = *(result + 16);
      if (v8 >= 2)
      {
        while (*v320)
        {
          v279 = *(result + 16 * v8);
          v280 = result;
          v281 = *(result + 16 * (v8 - 1) + 40);
          sub_1D1C6ADA4(*v320 + *(v317 + 72) * v279, (*v320 + *(v317 + 72) * *(result + 16 * (v8 - 1) + 32)), *v320 + *(v317 + 72) * v281, v83);
          if (v89)
          {
          }

          if (v281 < v279)
          {
            goto LABEL_232;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v280 = sub_1D1E0BE44(v280);
          }

          if (v8 - 2 >= *(v280 + 2))
          {
            goto LABEL_233;
          }

          v282 = &v280[16 * v8];
          *v282 = v279;
          *(v282 + 1) = v281;
          v350 = v280;
          sub_1D1E0BDB8(v8 - 1);
          result = v350;
          v8 = *(v350 + 16);
          if (v8 <= 1)
          {
          }
        }

        goto LABEL_243;
      }
    }

LABEL_239:
    result = sub_1D1E0BE44(v8);
    goto LABEL_209;
  }

  v344 = v80;
  v293 = v13;
  v301 = v7;
  v285 = a4;
  v84 = 0;
  v343 = (v51 + 48);
  v300 = (v8 + 48);
  v290 = (v8 + 32);
  v294 = (v8 + 8);
  v85 = MEMORY[0x1E69E7CC0];
  v284 = v15;
  v86 = v326;
  v87 = v341;
  v88 = v328;
  v327 = v81;
  v89 = v4;
LABEL_5:
  v90 = v84;
  v305 = v85;
  if (v84 + 1 >= v83)
  {
    v83 = v84 + 1;
    goto LABEL_78;
  }

  v91 = v84;
  v92 = *v320;
  v334 = v92;
  v93 = *(v317 + 72);
  v342 = v92 + v93 * (v84 + 1);
  v94 = v287;
  sub_1D1C66B60(v342, v287, type metadata accessor for BoxedTileInfoBearer);
  v95 = v92 + v93 * v91;
  v96 = v288;
  sub_1D1C66B60(v95, v288, type metadata accessor for BoxedTileInfoBearer);
  LODWORD(v314) = sub_1D1C70258(v94, v96);
  v8 = type metadata accessor for BoxedTileInfoBearer;
  sub_1D1C72E20(v96, type metadata accessor for BoxedTileInfoBearer);
  sub_1D1C72E20(v94, type metadata accessor for BoxedTileInfoBearer);
  v291 = v91;
  v97 = v91 + 2;
  v98 = v327;
  v333 = v93;
  result = v334 + v93 * v97;
  v99 = v323;
  v325 = v83;
  while (v83 != v97)
  {
    v324 = v89;
    v334 = result;
    sub_1D1C66B60(result, v99, type metadata accessor for BoxedTileInfoBearer);
    sub_1D1C66B60(v342, v98, type metadata accessor for BoxedTileInfoBearer);
    v102 = *(v341 + 24);
    v103 = v318;
    sub_1D1C66B60(v99 + v102, v318, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v104 = v99;
    v105 = *v343;
    if ((*v343)(v103, 3, v345))
    {
      goto LABEL_15;
    }

    sub_1D1C72E80(v318, v86, type metadata accessor for StaticUserActionPrediction);
    v103 = v299;
    sub_1D1C66B60(v327 + v102, v299, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (v105(v103, 3, v345))
    {
      sub_1D1C72E20(v86, type metadata accessor for StaticUserActionPrediction);
      v104 = v323;
LABEL_15:
      sub_1D1C72E20(v103, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v106 = v315;
      sub_1D1C66B60(&v104[v102], v315, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v107 = v105(v106, 3, v345);
      if (v107 > 1)
      {
        v108 = v327;
        if (v107 == 2)
        {
          v109 = 3;
        }

        else
        {
          v109 = 4;
        }
      }

      else
      {
        v108 = v327;
        if (v107)
        {
          v109 = 2;
        }

        else
        {
          sub_1D1C72E20(v315, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v109 = 1;
        }
      }

      v110 = v108 + v102;
      v111 = v316;
      sub_1D1C66B60(v110, v316, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v112 = v105(v111, 3, v345);
      if (v112 > 1)
      {
        v86 = v326;
        if (v112 == 2)
        {
          if (v109 == 3)
          {
            goto LABEL_32;
          }
        }

        else if (v109 == 4)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v86 = v326;
        if (v112)
        {
          if (v109 == 2)
          {
            goto LABEL_32;
          }
        }

        else
        {
          sub_1D1C72E20(v316, type metadata accessor for BoxedTileInfoBearer.TileSort);
          if (v109 == 1)
          {
            goto LABEL_32;
          }
        }
      }

      goto LABEL_43;
    }

    v125 = v103;
    v126 = v295;
    sub_1D1C72E80(v125, v295, type metadata accessor for StaticUserActionPrediction);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(v86 + v345[5]) != *(v126 + v345[5]))
    {
      goto LABEL_42;
    }

    v127 = v86;
    v128 = v345[6];
    v129 = *(v302 + 48);
    v130 = v286;
    sub_1D1741C08(v127 + v128, v286, &qword_1EC642590, qword_1D1E71260);
    v313 = v129;
    sub_1D1741C08(v126 + v128, v130 + v129, &qword_1EC642590, qword_1D1E71260);
    v131 = *v300;
    v132 = v301;
    if ((*v300)(v130, 1, v301) == 1)
    {
      if (v131(v130 + v313, 1, v132) != 1)
      {
        goto LABEL_41;
      }

      sub_1D1741A30(v130, &qword_1EC642590, qword_1D1E71260);
      v126 = v295;
      v88 = v328;
    }

    else
    {
      sub_1D1741C08(v130, v284, &qword_1EC642590, qword_1D1E71260);
      if (v131(v130 + v313, 1, v132) == 1)
      {
        (*v294)(v284, v132);
LABEL_41:
        sub_1D1741A30(v130, &qword_1EC642980, &unk_1D1E6E6E0);
        v126 = v295;
        v86 = v326;
        v88 = v328;
LABEL_42:
        sub_1D1C72E20(v126, type metadata accessor for StaticUserActionPrediction);
        sub_1D1C72E20(v86, type metadata accessor for StaticUserActionPrediction);
        goto LABEL_43;
      }

      v146 = v296;
      (*v290)(v296, v130 + v313, v132);
      sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v147 = v284;
      LODWORD(v313) = sub_1D1E6775C();
      v148 = *v294;
      (*v294)(v146, v132);
      v148(v147, v132);
      sub_1D1741A30(v130, &qword_1EC642590, qword_1D1E71260);
      v126 = v295;
      v86 = v326;
      v88 = v328;
      if ((v313 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v149 = v345[7];
    v150 = *(v326 + v149);
    v151 = *(v126 + v149);
    sub_1D1C72E20(v126, type metadata accessor for StaticUserActionPrediction);
    sub_1D1C72E20(v326, type metadata accessor for StaticUserActionPrediction);
    v152 = v150 == v151;
    v86 = v326;
    if (v152)
    {
LABEL_32:
      v113 = v341;
      v114 = v323;
      v115 = &v323[*(v341 + 20)];
      v117 = *(v115 + 3);
      v116 = *(v115 + 4);
      __swift_project_boxed_opaque_existential_1(v115, v117);
      v348 = (*(v116 + 56))(v117, v116);
      v349 = v118;
      v119 = v327;
      v120 = (v327 + *(v113 + 20));
      v122 = v120[3];
      v121 = v120[4];
      __swift_project_boxed_opaque_existential_1(v120, v122);
      v346 = (*(v121 + 56))(v122, v121);
      v347 = v123;
      sub_1D17D8EF0();
      v124 = sub_1D1E6860C();
      v99 = v114;
      v98 = v119;

      v101 = v124 == -1;
      goto LABEL_33;
    }

LABEL_43:
    v133 = v323;
    v134 = v311;
    sub_1D1C66B60(&v323[v102], v311, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (v105(v134, 3, v345))
    {
      goto LABEL_46;
    }

    v135 = v297;
    sub_1D1C72E80(v311, v297, type metadata accessor for StaticUserActionPrediction);
    v98 = v327;
    v134 = v298;
    sub_1D1C66B60(v327 + v102, v298, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (v105(v134, 3, v345))
    {
      sub_1D1C72E20(v135, type metadata accessor for StaticUserActionPrediction);
      v86 = v326;
      v133 = v323;
LABEL_46:
      sub_1D1C72E20(v134, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v136 = v306;
      sub_1D1C66B60(&v133[v102], v306, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v137 = v105(v136, 3, v345);
      if (v137 > 1)
      {
        v83 = v325;
        if (v137 == 2)
        {
          v138 = 3;
        }

        else
        {
          v138 = 4;
        }
      }

      else
      {
        v83 = v325;
        if (v137)
        {
          v138 = 2;
        }

        else
        {
          sub_1D1C72E20(v306, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v138 = 1;
        }
      }

      v89 = v324;
      v98 = v327;
      v139 = v327 + v102;
      v140 = v307;
      sub_1D1C66B60(v139, v307, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v141 = v105(v140, 3, v345);
      if (v141 > 1)
      {
        v99 = v323;
        if (v141 == 2)
        {
          v100 = 3;
        }

        else
        {
          v100 = 4;
        }
      }

      else
      {
        v99 = v323;
        if (v141)
        {
          v100 = 2;
        }

        else
        {
          sub_1D1C72E20(v307, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v100 = 1;
        }
      }

      v101 = v138 < v100;
      goto LABEL_10;
    }

    v142 = v289;
    sub_1D1C72E80(v134, v289, type metadata accessor for StaticUserActionPrediction);
    v143 = v345;
    v144 = *(v135 + v345[5]);
    sub_1D1C72E20(v135, type metadata accessor for StaticUserActionPrediction);
    v145 = *(v142 + v143[5]);
    sub_1D1C72E20(v142, type metadata accessor for StaticUserActionPrediction);
    v101 = v145 < v144;
    v86 = v326;
    v99 = v323;
LABEL_33:
    v83 = v325;
    v89 = v324;
LABEL_10:
    v8 = type metadata accessor for BoxedTileInfoBearer;
    sub_1D1C72E20(v98, type metadata accessor for BoxedTileInfoBearer);
    sub_1D1C72E20(v99, type metadata accessor for BoxedTileInfoBearer);
    ++v97;
    result = v334 + v333;
    v342 += v333;
    if ((v314 & 1) != v101)
    {
      v83 = v97 - 1;
      break;
    }
  }

  v87 = v341;
  v90 = v291;
  if (v314)
  {
    if (v83 < v291)
    {
      goto LABEL_236;
    }

    if (v291 < v83)
    {
      v324 = v89;
      v153 = v333 * (v83 - 1);
      v154 = v83 * v333;
      v325 = v83;
      v155 = v83;
      v156 = v291;
      v157 = v291 * v333;
      do
      {
        if (v156 != --v155)
        {
          v158 = *v320;
          if (!*v320)
          {
            goto LABEL_242;
          }

          v8 = v158 + v157;
          sub_1D1C72E80(v158 + v157, v304, type metadata accessor for BoxedTileInfoBearer);
          if (v157 < v153 || v8 >= v158 + v154)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v157 != v153)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1D1C72E80(v304, v158 + v153, type metadata accessor for BoxedTileInfoBearer);
        }

        ++v156;
        v153 -= v333;
        v154 -= v333;
        v157 += v333;
      }

      while (v156 < v155);
      v89 = v324;
      v87 = v341;
      v83 = v325;
      v90 = v291;
    }
  }

LABEL_78:
  v159 = v320[1];
  if (v83 >= v159)
  {
    goto LABEL_87;
  }

  if (__OFSUB__(v83, v90))
  {
    goto LABEL_235;
  }

  if (v83 - v90 >= v285)
  {
LABEL_87:
    v161 = v83;
    if (v83 < v90)
    {
      goto LABEL_234;
    }

    goto LABEL_88;
  }

  if (__OFADD__(v90, v285))
  {
    goto LABEL_237;
  }

  if (v90 + v285 >= v159)
  {
    v160 = v320[1];
  }

  else
  {
    v160 = v90 + v285;
  }

  if (v160 < v90)
  {
LABEL_238:
    __break(1u);
    goto LABEL_239;
  }

  if (v83 == v160)
  {
    goto LABEL_87;
  }

  v324 = v89;
  v209 = *v320;
  v210 = *(v317 + 72);
  v211 = *v320 + v210 * (v83 - 1);
  v333 = -v210;
  v291 = v90;
  v212 = v90 - v83;
  v303 = v210;
  v334 = v209;
  v213 = v209 + v83 * v210;
  v309 = v160;
  while (2)
  {
    v325 = v83;
    v312 = v213;
    v214 = v213;
    v313 = v212;
    v215 = v212;
    v314 = v211;
    v216 = v211;
    v217 = v337;
LABEL_143:
    v342 = v215;
    sub_1D1C66B60(v214, v88, type metadata accessor for BoxedTileInfoBearer);
    sub_1D1C66B60(v216, v344, type metadata accessor for BoxedTileInfoBearer);
    v218 = *(v87 + 24);
    v219 = v340;
    sub_1D1C66B60(v88 + v218, v340, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v220 = *v343;
    v221 = (*v343)(v219, 3, v345);
    v222 = v219;
    v223 = v336;
    if (v221)
    {
LABEL_146:
      sub_1D1C72E20(v222, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v226 = v338;
      sub_1D1C66B60(v88 + v218, v338, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v227 = v220(v226, 3, v345);
      if (v227 > 1)
      {
        v229 = v344;
        if (v227 == 2)
        {
          v228 = 3;
        }

        else
        {
          v228 = 4;
        }
      }

      else
      {
        if (v227)
        {
          v228 = 2;
        }

        else
        {
          sub_1D1C72E20(v338, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v228 = 1;
        }

        v229 = v344;
      }

      v230 = v339;
      sub_1D1C66B60(v229 + v218, v339, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v231 = v220(v230, 3, v345);
      if (v231 > 1)
      {
        if (v231 == 2)
        {
          if (v228 != 3)
          {
            goto LABEL_174;
          }
        }

        else if (v228 != 4)
        {
          goto LABEL_174;
        }
      }

      else if (v231)
      {
        if (v228 != 2)
        {
          goto LABEL_174;
        }
      }

      else
      {
        sub_1D1C72E20(v339, type metadata accessor for BoxedTileInfoBearer.TileSort);
        if (v228 != 1)
        {
          goto LABEL_174;
        }
      }

      goto LABEL_164;
    }

    v224 = v88;
    v225 = v331;
    sub_1D1C72E80(v340, v331, type metadata accessor for StaticUserActionPrediction);
    sub_1D1C66B60(v344 + v218, v217, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (v220(v217, 3, v345))
    {
      sub_1D1C72E20(v225, type metadata accessor for StaticUserActionPrediction);
      v222 = v217;
      v88 = v224;
      goto LABEL_146;
    }

    v245 = v319;
    sub_1D1C72E80(v217, v319, type metadata accessor for StaticUserActionPrediction);
    v246 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v247 = v245;
    v248 = v331;
    v88 = v224;
    if ((v246 & 1) == 0 || *(v331 + v345[5]) != *(v247 + v345[5]))
    {
      goto LABEL_173;
    }

    v249 = v345[6];
    v250 = *(v302 + 48);
    v251 = v247;
    sub_1D1741C08(v331 + v249, v223, &qword_1EC642590, qword_1D1E71260);
    v310 = v250;
    sub_1D1741C08(v251 + v249, v223 + v250, &qword_1EC642590, qword_1D1E71260);
    v252 = *v300;
    v253 = v223;
    v254 = v223;
    v255 = v301;
    if ((*v300)(v253, 1, v301) == 1)
    {
      if (v252(v254 + v310, 1, v255) == 1)
      {
        sub_1D1741A30(v254, &qword_1EC642590, qword_1D1E71260);
        v247 = v319;
        v248 = v331;
        v88 = v328;
        goto LABEL_200;
      }

LABEL_172:
      sub_1D1741A30(v254, &qword_1EC642980, &unk_1D1E6E6E0);
      v247 = v319;
      v248 = v331;
      v88 = v328;
      goto LABEL_173;
    }

    v256 = v293;
    sub_1D1741C08(v254, v293, &qword_1EC642590, qword_1D1E71260);
    if (v252(v254 + v310, 1, v255) == 1)
    {
      (*v294)(v256, v255);
      goto LABEL_172;
    }

    (*v290)(v296, v254 + v310, v255);
    sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    LODWORD(v310) = sub_1D1E6775C();
    v275 = *v294;
    (*v294)(v296, v255);
    v275(v256, v255);
    sub_1D1741A30(v254, &qword_1EC642590, qword_1D1E71260);
    v247 = v319;
    v248 = v331;
    v88 = v328;
    if ((v310 & 1) == 0)
    {
LABEL_173:
      sub_1D1C72E20(v247, type metadata accessor for StaticUserActionPrediction);
      sub_1D1C72E20(v248, type metadata accessor for StaticUserActionPrediction);
      goto LABEL_174;
    }

LABEL_200:
    v276 = v345[7];
    v277 = *(v248 + v276);
    v278 = *(v247 + v276);
    sub_1D1C72E20(v247, type metadata accessor for StaticUserActionPrediction);
    sub_1D1C72E20(v331, type metadata accessor for StaticUserActionPrediction);
    if (v277 == v278)
    {
LABEL_164:
      v232 = v341;
      v233 = (v88 + *(v341 + 20));
      v235 = v233[3];
      v234 = v233[4];
      __swift_project_boxed_opaque_existential_1(v233, v235);
      v348 = (*(v234 + 56))(v235, v234);
      v349 = v236;
      v237 = v344;
      v238 = (v344 + *(v232 + 20));
      v240 = v238[3];
      v239 = v238[4];
      __swift_project_boxed_opaque_existential_1(v238, v240);
      v346 = (*(v239 + 56))(v240, v239);
      v347 = v241;
      sub_1D17D8EF0();
      v242 = sub_1D1E6860C();

      v243 = v237;
      v88 = v328;
      v244 = v242 == -1;
      goto LABEL_193;
    }

LABEL_174:
    v257 = v332;
    sub_1D1C66B60(v88 + v218, v332, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v258 = v88;
    if (v220(v257, 3, v345))
    {
      goto LABEL_177;
    }

    v259 = v321;
    sub_1D1C72E80(v332, v321, type metadata accessor for StaticUserActionPrediction);
    v257 = v322;
    sub_1D1C66B60(v344 + v218, v322, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (v220(v257, 3, v345))
    {
      sub_1D1C72E20(v259, type metadata accessor for StaticUserActionPrediction);
      v258 = v88;
LABEL_177:
      sub_1D1C72E20(v257, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v260 = v329;
      sub_1D1C66B60(v258 + v218, v329, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v261 = v220(v260, 3, v345);
      if (v261 > 1)
      {
        v263 = v344;
        if (v261 == 2)
        {
          v262 = 3;
        }

        else
        {
          v262 = 4;
        }
      }

      else
      {
        if (v261)
        {
          v262 = 2;
        }

        else
        {
          sub_1D1C72E20(v329, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v262 = 1;
        }

        v263 = v344;
      }

      v88 = v258;
      v264 = v263 + v218;
      v265 = v330;
      sub_1D1C66B60(v264, v330, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v266 = v220(v265, 3, v345);
      if (v266 > 1)
      {
        if (v266 == 2)
        {
          v267 = 3;
        }

        else
        {
          v267 = 4;
        }
      }

      else if (v266)
      {
        v267 = 2;
      }

      else
      {
        sub_1D1C72E20(v330, type metadata accessor for BoxedTileInfoBearer.TileSort);
        v267 = 1;
      }

      v243 = v344;
      v244 = v262 < v267;
    }

    else
    {
      v271 = v308;
      sub_1D1C72E80(v257, v308, type metadata accessor for StaticUserActionPrediction);
      v272 = v345;
      v273 = *(v259 + v345[5]);
      sub_1D1C72E20(v259, type metadata accessor for StaticUserActionPrediction);
      v274 = *(v271 + v272[5]);
      sub_1D1C72E20(v271, type metadata accessor for StaticUserActionPrediction);
      v244 = v274 < v273;
      v243 = v344;
    }

LABEL_193:
    v8 = type metadata accessor for BoxedTileInfoBearer;
    sub_1D1C72E20(v243, type metadata accessor for BoxedTileInfoBearer);
    result = sub_1D1C72E20(v88, type metadata accessor for BoxedTileInfoBearer);
    if (!v244)
    {
      v87 = v341;
LABEL_141:
      v83 = v325 + 1;
      v211 = v314 + v303;
      v212 = v313 - 1;
      v213 = v312 + v303;
      v161 = v309;
      if (v325 + 1 != v309)
      {
        continue;
      }

      v89 = v324;
      v90 = v291;
      if (v309 < v291)
      {
        goto LABEL_234;
      }

LABEL_88:
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v85 = v305;
      }

      else
      {
        result = sub_1D177D070(0, *(v305 + 2) + 1, 1, v305);
        v85 = result;
      }

      v163 = *(v85 + 2);
      v162 = *(v85 + 3);
      v8 = v163 + 1;
      if (v163 >= v162 >> 1)
      {
        result = sub_1D177D070((v162 > 1), v163 + 1, 1, v85);
        v85 = result;
      }

      *(v85 + 2) = v8;
      v164 = &v85[16 * v163];
      *(v164 + 4) = v90;
      *(v164 + 5) = v161;
      v165 = *v292;
      if (!*v292)
      {
        goto LABEL_244;
      }

      v309 = v161;
      if (!v163)
      {
        v86 = v326;
LABEL_4:
        v83 = v320[1];
        v84 = v309;
        if (v309 >= v83)
        {
          goto LABEL_206;
        }

        goto LABEL_5;
      }

      v86 = v326;
      while (1)
      {
        v166 = v8 - 1;
        if (v8 >= 4)
        {
          break;
        }

        if (v8 == 3)
        {
          v167 = *(v85 + 4);
          v168 = *(v85 + 5);
          v177 = __OFSUB__(v168, v167);
          v169 = v168 - v167;
          v170 = v177;
LABEL_108:
          if (v170)
          {
            goto LABEL_223;
          }

          v183 = &v85[16 * v8];
          v185 = *v183;
          v184 = *(v183 + 1);
          v186 = __OFSUB__(v184, v185);
          v187 = v184 - v185;
          v188 = v186;
          if (v186)
          {
            goto LABEL_226;
          }

          v189 = &v85[16 * v166 + 32];
          v191 = *v189;
          v190 = *(v189 + 1);
          v177 = __OFSUB__(v190, v191);
          v192 = v190 - v191;
          if (v177)
          {
            goto LABEL_229;
          }

          if (__OFADD__(v187, v192))
          {
            goto LABEL_230;
          }

          if (v187 + v192 >= v169)
          {
            if (v169 < v192)
            {
              v166 = v8 - 2;
            }

            goto LABEL_129;
          }

          goto LABEL_122;
        }

        v193 = &v85[16 * v8];
        v195 = *v193;
        v194 = *(v193 + 1);
        v177 = __OFSUB__(v194, v195);
        v187 = v194 - v195;
        v188 = v177;
LABEL_122:
        if (v188)
        {
          goto LABEL_225;
        }

        v196 = &v85[16 * v166];
        v198 = *(v196 + 4);
        v197 = *(v196 + 5);
        v177 = __OFSUB__(v197, v198);
        v199 = v197 - v198;
        if (v177)
        {
          goto LABEL_228;
        }

        if (v199 < v187)
        {
          goto LABEL_4;
        }

LABEL_129:
        v204 = v166 - 1;
        if (v166 - 1 >= v8)
        {
          __break(1u);
LABEL_219:
          __break(1u);
LABEL_220:
          __break(1u);
LABEL_221:
          __break(1u);
LABEL_222:
          __break(1u);
LABEL_223:
          __break(1u);
LABEL_224:
          __break(1u);
LABEL_225:
          __break(1u);
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          __break(1u);
LABEL_229:
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:
          __break(1u);
LABEL_232:
          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
          goto LABEL_238;
        }

        if (!*v320)
        {
          goto LABEL_241;
        }

        v205 = v85;
        v8 = *&v85[16 * v204 + 32];
        v206 = *&v85[16 * v166 + 40];
        sub_1D1C6ADA4(*v320 + *(v317 + 72) * v8, (*v320 + *(v317 + 72) * *&v85[16 * v166 + 32]), *v320 + *(v317 + 72) * v206, v165);
        if (v89)
        {
        }

        if (v206 < v8)
        {
          goto LABEL_219;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v207 = v205;
        }

        else
        {
          v207 = sub_1D1E0BE44(v205);
        }

        if (v204 >= *(v207 + 2))
        {
          goto LABEL_220;
        }

        v208 = &v207[16 * v204];
        *(v208 + 4) = v8;
        *(v208 + 5) = v206;
        v350 = v207;
        result = sub_1D1E0BDB8(v166);
        v85 = v350;
        v8 = *(v350 + 16);
        v86 = v326;
        v87 = v341;
        if (v8 <= 1)
        {
          goto LABEL_4;
        }
      }

      v171 = &v85[16 * v8 + 32];
      v172 = *(v171 - 64);
      v173 = *(v171 - 56);
      v177 = __OFSUB__(v173, v172);
      v174 = v173 - v172;
      if (v177)
      {
        goto LABEL_221;
      }

      v176 = *(v171 - 48);
      v175 = *(v171 - 40);
      v177 = __OFSUB__(v175, v176);
      v169 = v175 - v176;
      v170 = v177;
      if (v177)
      {
        goto LABEL_222;
      }

      v178 = &v85[16 * v8];
      v180 = *v178;
      v179 = *(v178 + 1);
      v177 = __OFSUB__(v179, v180);
      v181 = v179 - v180;
      if (v177)
      {
        goto LABEL_224;
      }

      v177 = __OFADD__(v169, v181);
      v182 = v169 + v181;
      if (v177)
      {
        goto LABEL_227;
      }

      if (v182 >= v174)
      {
        v200 = &v85[16 * v166 + 32];
        v202 = *v200;
        v201 = *(v200 + 1);
        v177 = __OFSUB__(v201, v202);
        v203 = v201 - v202;
        if (v177)
        {
          goto LABEL_231;
        }

        if (v169 < v203)
        {
          v166 = v8 - 2;
        }

        goto LABEL_129;
      }

      goto LABEL_108;
    }

    break;
  }

  v87 = v341;
  v268 = v342;
  v217 = v337;
  if (v334)
  {
    v8 = type metadata accessor for BoxedTileInfoBearer;
    v269 = v335;
    sub_1D1C72E80(v214, v335, type metadata accessor for BoxedTileInfoBearer);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1C72E80(v269, v216, type metadata accessor for BoxedTileInfoBearer);
    v216 += v333;
    v214 += v333;
    v270 = __CFADD__(v268, 1);
    v215 = v268 + 1;
    if (v270)
    {
      goto LABEL_141;
    }

    goto LABEL_143;
  }

  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
  return result;
}

uint64_t sub_1D1C6A11C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a5;
  v61 = type metadata accessor for StaticActionSet(0);
  v11 = MEMORY[0x1EEE9AC00](v61);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v52 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v52 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_64;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_65;
  }

  v25 = (a2 - a1) / v23;
  v66 = a1;
  v65 = a4;
  v60 = v23;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    v59 = v19;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v27;
    if (v27 >= 1)
    {
      v38 = -v60;
      v39 = a4 + v27;
      v40 = v14;
      v56 = a4;
      v57 = a1;
      v55 = -v60;
      do
      {
        v41 = a1;
        v53 = v37;
        v42 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= v41)
          {
            v66 = a2;
            v64 = v53;
            goto LABEL_62;
          }

          v44 = a3;
          v54 = v37;
          v60 = v39;
          v45 = v39 + v38;
          sub_1D1C66B60(v39 + v38, v40, type metadata accessor for StaticActionSet);
          v46 = v6;
          v47 = v40;
          v48 = v59;
          sub_1D1C66B60(v42, v59, type metadata accessor for StaticActionSet);
          v49 = sub_1D1D0CC54(v47, v48, v62);
          if (v46)
          {
            sub_1D1C72E20(v48, type metadata accessor for StaticActionSet);
            sub_1D1C72E20(v47, type metadata accessor for StaticActionSet);
            v66 = v58;
            v64 = v54;
            goto LABEL_62;
          }

          v50 = v49;
          v63 = 0;
          v51 = v44 + v38;
          sub_1D1C72E20(v48, type metadata accessor for StaticActionSet);
          sub_1D1C72E20(v47, type metadata accessor for StaticActionSet);
          v40 = v47;
          if (v50)
          {
            break;
          }

          v37 = v45;
          a3 = v44 + v38;
          if (v44 < v60 || v51 >= v60)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v45;
            v6 = v63;
          }

          else
          {
            v6 = v63;
            if (v44 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
              v37 = v45;
            }
          }

          v39 = v37;
          v41 = v57;
          v43 = v45 > v56;
          v38 = v55;
          a2 = v58;
          if (!v43)
          {
            goto LABEL_58;
          }
        }

        a3 = v44 + v38;
        if (v44 < v58 || v51 >= v58)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v63;
          v38 = v55;
        }

        else
        {
          a2 = v42;
          v6 = v63;
          v38 = v55;
          if (v44 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v60;
        v37 = v54;
      }

      while (v60 > v56);
    }

LABEL_58:
    v66 = a2;
    v64 = v37;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v26;
    v64 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v29 = v60;
      v58 = v21;
      while (1)
      {
        v30 = a3;
        sub_1D1C66B60(a2, v21, type metadata accessor for StaticActionSet);
        sub_1D1C66B60(a4, v17, type metadata accessor for StaticActionSet);
        v31 = sub_1D1D0CC54(v21, v17, v62);
        if (v6)
        {
          break;
        }

        v32 = v31;
        v63 = 0;
        v33 = v17;
        v34 = a4;
        v35 = v33;
        sub_1D1C72E20(v33, type metadata accessor for StaticActionSet);
        sub_1D1C72E20(v21, type metadata accessor for StaticActionSet);
        if (v32)
        {
          v36 = a2 + v29;
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v36;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v36;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v34 + v29;
        }

        v17 = v35;
        v29 = v60;
        a1 += v60;
        v66 = a1;
        v21 = v58;
        v6 = v63;
        if (a4 >= v59 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1C72E20(v17, type metadata accessor for StaticActionSet);
      sub_1D1C72E20(v21, type metadata accessor for StaticActionSet);
    }
  }

LABEL_62:
  sub_1D1DC7114(&v66, &v65, &v64);

  return 1;
}

uint64_t sub_1D1C6A760(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v62 = a5;
  v61 = type metadata accessor for StaticService(0);
  v11 = MEMORY[0x1EEE9AC00](v61);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v52 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v52 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_64;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_65;
  }

  v25 = (a2 - a1) / v23;
  v66 = a1;
  v65 = a4;
  v60 = v23;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    v59 = v19;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v27;
    if (v27 >= 1)
    {
      v38 = -v60;
      v39 = a4 + v27;
      v40 = v14;
      v56 = a4;
      v57 = a1;
      v55 = -v60;
      do
      {
        v41 = a1;
        v53 = v37;
        v42 = a2 + v38;
        v58 = a2;
        while (1)
        {
          if (a2 <= v41)
          {
            v66 = a2;
            v64 = v53;
            goto LABEL_62;
          }

          v44 = a3;
          v54 = v37;
          v60 = v39;
          v45 = v39 + v38;
          sub_1D1C66B60(v39 + v38, v40, type metadata accessor for StaticService);
          v46 = v6;
          v47 = v40;
          v48 = v59;
          sub_1D1C66B60(v42, v59, type metadata accessor for StaticService);
          v49 = sub_1D1D0D384(v47, v48, v62);
          if (v46)
          {
            sub_1D1C72E20(v48, type metadata accessor for StaticService);
            sub_1D1C72E20(v47, type metadata accessor for StaticService);
            v66 = v58;
            v64 = v54;
            goto LABEL_62;
          }

          v50 = v49;
          v63 = 0;
          v51 = v44 + v38;
          sub_1D1C72E20(v48, type metadata accessor for StaticService);
          sub_1D1C72E20(v47, type metadata accessor for StaticService);
          v40 = v47;
          if (v50)
          {
            break;
          }

          v37 = v45;
          a3 = v44 + v38;
          if (v44 < v60 || v51 >= v60)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v45;
            v6 = v63;
          }

          else
          {
            v6 = v63;
            if (v44 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
              v37 = v45;
            }
          }

          v39 = v37;
          v41 = v57;
          v43 = v45 > v56;
          v38 = v55;
          a2 = v58;
          if (!v43)
          {
            goto LABEL_58;
          }
        }

        a3 = v44 + v38;
        if (v44 < v58 || v51 >= v58)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v63;
          v38 = v55;
        }

        else
        {
          a2 = v42;
          v6 = v63;
          v38 = v55;
          if (v44 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v60;
        v37 = v54;
      }

      while (v60 > v56);
    }

LABEL_58:
    v66 = a2;
    v64 = v37;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v26;
    v64 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v29 = v60;
      v58 = v21;
      while (1)
      {
        v30 = a3;
        sub_1D1C66B60(a2, v21, type metadata accessor for StaticService);
        sub_1D1C66B60(a4, v17, type metadata accessor for StaticService);
        v31 = sub_1D1D0D384(v21, v17, v62);
        if (v6)
        {
          break;
        }

        v32 = v31;
        v63 = 0;
        v33 = v17;
        v34 = a4;
        v35 = v33;
        sub_1D1C72E20(v33, type metadata accessor for StaticService);
        sub_1D1C72E20(v21, type metadata accessor for StaticService);
        if (v32)
        {
          v36 = a2 + v29;
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v36;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v36;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = v34 + v29;
        }

        v17 = v35;
        v29 = v60;
        a1 += v60;
        v66 = a1;
        v21 = v58;
        v6 = v63;
        if (a4 >= v59 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1C72E20(v17, type metadata accessor for StaticService);
      sub_1D1C72E20(v21, type metadata accessor for StaticService);
    }
  }

LABEL_62:
  sub_1D1DC712C(&v66, &v65, &v64);

  return 1;
}

uint64_t sub_1D1C6ADA4(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v237 = a3;
  v7 = sub_1D1E66A7C();
  v240 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v204 = &v203 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v205 = &v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v207 = &v203 - v12;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v13 = MEMORY[0x1EEE9AC00](v209);
  v227 = &v203 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v234 = &v203 - v15;
  v16 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v218 = &v203 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v217 = &v203 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v212 = &v203 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v221 = &v203 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v226 = (&v203 - v26);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v225 = (&v203 - v28);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v222 = (&v203 - v30);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v229 = &v203 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v224 = (&v203 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v223 = &v203 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v214 = &v203 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v228 = &v203 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v236 = &v203 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v235 = &v203 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v231 = &v203 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v239 = &v203 - v47;
  v48 = type metadata accessor for StaticUserActionPrediction(0);
  v49 = *(v48 - 1);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v206 = &v203 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x1EEE9AC00](v50);
  v211 = &v203 - v53;
  v54 = MEMORY[0x1EEE9AC00](v52);
  v213 = &v203 - v55;
  v56 = MEMORY[0x1EEE9AC00](v54);
  v220 = &v203 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v210 = &v203 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v230 = &v203 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v215 = &v203 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v219 = &v203 - v64;
  v242 = type metadata accessor for BoxedTileInfoBearer(0);
  v65 = MEMORY[0x1EEE9AC00](v242);
  v66 = MEMORY[0x1EEE9AC00](v65);
  v233 = &v203 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v70 = &v203 - v69;
  result = MEMORY[0x1EEE9AC00](v68);
  v74 = &v203 - v73;
  v238 = *(v75 + 72);
  if (!v238)
  {
    __break(1u);
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  if (&a2[-a1] == 0x8000000000000000 && v238 == -1)
  {
    goto LABEL_167;
  }

  v76 = v237 - a2;
  if (v237 - a2 != 0x8000000000000000 || v238 != -1)
  {
    v208 = v7;
    v77 = &a2[-a1] / v238;
    v249 = a1;
    v248 = a4;
    if (v77 < v76 / v238)
    {
      v78 = v77 * v238;
      if (a4 < a1 || a1 + v78 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v233 = &a4[v78];
      v247 = &a4[v78];
      v81 = v78 < 1;
      v82 = v234;
      if (!v81 && a2 < v237)
      {
        v83 = (v49 + 48);
        v226 = (v240 + 48);
        v222 = (v240 + 32);
        v225 = (v240 + 8);
        v232 = v48;
        v216 = v70;
        while (1)
        {
          v240 = a2;
          sub_1D1C66B60(a2, v74, type metadata accessor for BoxedTileInfoBearer);
          v241 = a4;
          sub_1D1C66B60(a4, v70, type metadata accessor for BoxedTileInfoBearer);
          v84 = *(v242 + 24);
          v85 = v239;
          sub_1D1C66B60(&v74[v84], v239, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v86 = *v83;
          v87 = (*v83)(v85, 3, v48);
          v88 = v85;
          v89 = v231;
          if (v87)
          {
            goto LABEL_22;
          }

          v229 = a1;
          v90 = v219;
          sub_1D1C72E80(v239, v219, type metadata accessor for StaticUserActionPrediction);
          sub_1D1C66B60(&v70[v84], v89, type metadata accessor for BoxedTileInfoBearer.TileSort);
          if (v86(v89, 3, v48))
          {
            break;
          }

          v108 = v89;
          v109 = v215;
          sub_1D1C72E80(v108, v215, type metadata accessor for StaticUserActionPrediction);
          if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *&v90[v232[5]] != *(v109 + v232[5]))
          {
            goto LABEL_49;
          }

          v110 = *(v209 + 48);
          v111 = &v90[v232[6]];
          v112 = v232[6];
          sub_1D1741C08(v111, v82, &qword_1EC642590, qword_1D1E71260);
          v227 = v110;
          sub_1D1741C08(v215 + v112, v82 + v110, &qword_1EC642590, qword_1D1E71260);
          v113 = *v226;
          v114 = v82;
          v115 = v82;
          v116 = v208;
          if ((*v226)(v114, 1, v208) == 1)
          {
            v117 = v113(v115 + v227, 1, v116);
            v109 = v215;
            if (v117 != 1)
            {
              goto LABEL_48;
            }

            sub_1D1741A30(v115, &qword_1EC642590, qword_1D1E71260);
            v90 = v219;
          }

          else
          {
            sub_1D1741C08(v115, v207, &qword_1EC642590, qword_1D1E71260);
            if (v113(v115 + v227, 1, v116) == 1)
            {
              (*v225)(v207, v116);
              v109 = v215;
LABEL_48:
              sub_1D1741A30(v115, &qword_1EC642980, &unk_1D1E6E6E0);
              v90 = v219;
LABEL_49:
              sub_1D1C72E20(v109, type metadata accessor for StaticUserActionPrediction);
              sub_1D1C72E20(v90, type metadata accessor for StaticUserActionPrediction);
              v96 = v230;
              v48 = v232;
              v70 = v216;
              a1 = v229;
              goto LABEL_50;
            }

            v131 = v204;
            (*v222)(v204, v115 + v227, v116);
            sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            LODWORD(v227) = sub_1D1E6775C();
            v132 = *v225;
            (*v225)(v131, v116);
            v132(v207, v116);
            sub_1D1741A30(v115, &qword_1EC642590, qword_1D1E71260);
            v109 = v215;
            v90 = v219;
            if ((v227 & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          v48 = v232;
          v133 = v232[7];
          v134 = v90[v133];
          v135 = *(v109 + v133);
          sub_1D1C72E20(v109, type metadata accessor for StaticUserActionPrediction);
          sub_1D1C72E20(v90, type metadata accessor for StaticUserActionPrediction);
          v136 = v134 == v135;
          v96 = v230;
          v70 = v216;
          a1 = v229;
          if (v136)
          {
LABEL_39:
            v97 = v242;
            v98 = &v74[*(v242 + 20)];
            v100 = *(v98 + 3);
            v99 = *(v98 + 4);
            __swift_project_boxed_opaque_existential_1(v98, v100);
            v245 = (*(v99 + 56))(v100, v99);
            v246 = v101;
            v102 = &v70[*(v97 + 20)];
            v104 = *(v102 + 3);
            v103 = *(v102 + 4);
            __swift_project_boxed_opaque_existential_1(v102, v104);
            v243 = (*(v103 + 56))(v104, v103);
            v244 = v105;
            sub_1D17D8EF0();
            v106 = sub_1D1E6860C();

            v107 = v106 == -1;
            goto LABEL_40;
          }

LABEL_50:
          v118 = v228;
          sub_1D1C66B60(&v74[v84], v228, type metadata accessor for BoxedTileInfoBearer.TileSort);
          if (v86(v118, 3, v48))
          {
            goto LABEL_53;
          }

          sub_1D1C72E80(v228, v96, type metadata accessor for StaticUserActionPrediction);
          v118 = v214;
          sub_1D1C66B60(&v70[v84], v214, type metadata accessor for BoxedTileInfoBearer.TileSort);
          if (v86(v118, 3, v48))
          {
            sub_1D1C72E20(v96, type metadata accessor for StaticUserActionPrediction);
LABEL_53:
            sub_1D1C72E20(v118, type metadata accessor for BoxedTileInfoBearer.TileSort);
            v119 = v223;
            sub_1D1C66B60(&v74[v84], v223, type metadata accessor for BoxedTileInfoBearer.TileSort);
            v120 = v86(v119, 3, v48);
            if (v120 > 1)
            {
              if (v120 == 2)
              {
                v121 = 3;
              }

              else
              {
                v121 = 4;
              }
            }

            else if (v120)
            {
              v121 = 2;
            }

            else
            {
              sub_1D1C72E20(v223, type metadata accessor for BoxedTileInfoBearer.TileSort);
              v121 = 1;
            }

            v122 = v224;
            sub_1D1C66B60(&v70[v84], v224, type metadata accessor for BoxedTileInfoBearer.TileSort);
            v123 = v86(v122, 3, v48);
            if (v123 > 1)
            {
              a2 = v240;
              a4 = v241;
              if (v123 == 2)
              {
                v124 = 3;
              }

              else
              {
                v124 = 4;
              }
            }

            else
            {
              a2 = v240;
              a4 = v241;
              if (v123)
              {
                v124 = 2;
              }

              else
              {
                sub_1D1C72E20(v224, type metadata accessor for BoxedTileInfoBearer.TileSort);
                v124 = 1;
              }
            }

            v107 = v121 < v124;
            goto LABEL_68;
          }

          v127 = v96;
          v128 = v210;
          sub_1D1C72E80(v118, v210, type metadata accessor for StaticUserActionPrediction);
          v129 = *(v127 + v48[5]);
          sub_1D1C72E20(v127, type metadata accessor for StaticUserActionPrediction);
          v130 = *(v128 + v48[5]);
          sub_1D1C72E20(v128, type metadata accessor for StaticUserActionPrediction);
          v107 = v130 < v129;
LABEL_40:
          a2 = v240;
          a4 = v241;
LABEL_68:
          sub_1D1C72E20(v70, type metadata accessor for BoxedTileInfoBearer);
          sub_1D1C72E20(v74, type metadata accessor for BoxedTileInfoBearer);
          if (v107)
          {
            v125 = v238;
            if (a1 < a2 || a1 >= &a2[v238])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v125;
          }

          else
          {
            v125 = v238;
            v126 = &a4[v238];
            if (a1 < a4 || a1 >= v126)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v248 = v126;
            a4 += v125;
          }

          a1 += v125;
          v249 = a1;
          v82 = v234;
          if (a4 >= v233 || a2 >= v237)
          {
            goto LABEL_165;
          }
        }

        sub_1D1C72E20(v90, type metadata accessor for StaticUserActionPrediction);
        v88 = v89;
        v48 = v232;
        v70 = v216;
        a1 = v229;
LABEL_22:
        sub_1D1C72E20(v88, type metadata accessor for BoxedTileInfoBearer.TileSort);
        v91 = v235;
        sub_1D1C66B60(&v74[v84], v235, type metadata accessor for BoxedTileInfoBearer.TileSort);
        v92 = v86(v91, 3, v48);
        if (v92 > 1)
        {
          if (v92 == 2)
          {
            v93 = 3;
          }

          else
          {
            v93 = 4;
          }
        }

        else if (v92)
        {
          v93 = 2;
        }

        else
        {
          sub_1D1C72E20(v235, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v93 = 1;
        }

        v94 = v236;
        sub_1D1C66B60(&v70[v84], v236, type metadata accessor for BoxedTileInfoBearer.TileSort);
        v95 = v86(v94, 3, v48);
        if (v95 > 1)
        {
          v96 = v230;
          if (v95 == 2)
          {
            if (v93 == 3)
            {
              goto LABEL_39;
            }
          }

          else if (v93 == 4)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v96 = v230;
          if (v95)
          {
            if (v93 == 2)
            {
              goto LABEL_39;
            }
          }

          else
          {
            sub_1D1C72E20(v236, type metadata accessor for BoxedTileInfoBearer.TileSort);
            if (v93 == 1)
            {
              goto LABEL_39;
            }
          }
        }

        goto LABEL_50;
      }

      goto LABEL_165;
    }

    v79 = v76 / v238 * v238;
    v239 = v72;
    if (a4 < a2 || &a2[v79] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v80 = v237;
    }

    else
    {
      v80 = v237;
      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v137 = &a4[v79];
    if (v79 < 1)
    {
LABEL_164:
      v249 = a2;
      v247 = v137;
LABEL_165:
      sub_1D1DC7144(&v249, &v248, &v247);
      return 1;
    }

    v241 = a4;
    v138 = -v238;
    v238 = v49 + 48;
    v224 = (v240 + 48);
    v216 = (v240 + 32);
    v219 = (v240 + 8);
    v139 = &a4[v79];
    v140 = v222;
    v141 = v233;
    v232 = v48;
    v237 = v138;
LABEL_91:
    v228 = v137;
    v142 = a2;
    a2 += v138;
    v240 = a2;
    v231 = v142;
    while (1)
    {
      if (v142 <= a1)
      {
        v249 = v142;
        v247 = v228;
        goto LABEL_165;
      }

      v235 = v139;
      v236 = v80;
      v230 = v137;
      v234 = (v139 + v138);
      sub_1D1C66B60(v139 + v138, v141, type metadata accessor for BoxedTileInfoBearer);
      sub_1D1C66B60(a2, v239, type metadata accessor for BoxedTileInfoBearer);
      v143 = *(v242 + 24);
      v144 = v229;
      sub_1D1C66B60(v141 + v143, v229, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v145 = *v238;
      v146 = (*v238)(v144, 3, v48);
      v147 = v144;
      v148 = v227;
      if (v146)
      {
        goto LABEL_99;
      }

      v149 = v220;
      sub_1D1C72E80(v229, v220, type metadata accessor for StaticUserActionPrediction);
      sub_1D1C66B60(v239 + v143, v140, type metadata accessor for BoxedTileInfoBearer.TileSort);
      if (v145(v140, 3, v48))
      {
        break;
      }

      v172 = v213;
      sub_1D1C72E80(v140, v213, type metadata accessor for StaticUserActionPrediction);
      v173 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v174 = v172;
      v175 = v220;
      a2 = v240;
      if ((v173 & 1) == 0 || *(v220 + v48[5]) != *(v172 + v48[5]))
      {
        goto LABEL_126;
      }

      v176 = v48[6];
      v177 = *(v209 + 48);
      sub_1D1741C08(v220 + v176, v148, &qword_1EC642590, qword_1D1E71260);
      v223 = v177;
      sub_1D1741C08(v213 + v176, v148 + v177, &qword_1EC642590, qword_1D1E71260);
      v178 = *v224;
      v179 = v148;
      v180 = v208;
      if ((*v224)(v179, 1, v208) == 1)
      {
        v181 = v178(v227 + v223, 1, v180);
        a2 = v240;
        v175 = v220;
        if (v181 != 1)
        {
          goto LABEL_125;
        }

        sub_1D1741A30(v227, &qword_1EC642590, qword_1D1E71260);
        v174 = v213;
      }

      else
      {
        v182 = v227;
        sub_1D1741C08(v227, v205, &qword_1EC642590, qword_1D1E71260);
        if (v178(v182 + v223, 1, v180) == 1)
        {
          (*v219)(v205, v180);
          a2 = v240;
          v175 = v220;
LABEL_125:
          sub_1D1741A30(v227, &qword_1EC642980, &unk_1D1E6E6E0);
          v174 = v213;
LABEL_126:
          sub_1D1C72E20(v174, type metadata accessor for StaticUserActionPrediction);
          sub_1D1C72E20(v175, type metadata accessor for StaticUserActionPrediction);
          v141 = v233;
          goto LABEL_127;
        }

        v198 = v204;
        (*v216)(v204, v227 + v223, v180);
        sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        LODWORD(v223) = sub_1D1E6775C();
        v199 = *v219;
        (*v219)(v198, v180);
        v199(v205, v180);
        sub_1D1741A30(v227, &qword_1EC642590, qword_1D1E71260);
        a2 = v240;
        v174 = v213;
        v175 = v220;
        if ((v223 & 1) == 0)
        {
          goto LABEL_126;
        }
      }

      v200 = v48[7];
      v201 = *(v175 + v200);
      v202 = *(v174 + v200);
      sub_1D1C72E20(v174, type metadata accessor for StaticUserActionPrediction);
      sub_1D1C72E20(v175, type metadata accessor for StaticUserActionPrediction);
      v136 = v201 == v202;
      a2 = v240;
      v141 = v233;
      if (v136)
      {
LABEL_116:
        v155 = v140;
        v156 = v242;
        v157 = (v141 + *(v242 + 20));
        v159 = v157[3];
        v158 = v157[4];
        __swift_project_boxed_opaque_existential_1(v157, v159);
        v245 = (*(v158 + 56))(v159, v158);
        v246 = v160;
        v161 = v239;
        v162 = (v239 + *(v156 + 20));
        v164 = v162[3];
        v163 = v162[4];
        __swift_project_boxed_opaque_existential_1(v162, v164);
        v165 = v164;
        a2 = v240;
        v243 = (*(v163 + 56))(v165, v163);
        v244 = v166;
        sub_1D17D8EF0();
        v167 = sub_1D1E6860C();

        v168 = v161;
        v141 = v233;
        v169 = v167 == -1;
LABEL_117:
        v171 = v236;
        v170 = v237;
        goto LABEL_147;
      }

LABEL_127:
      v183 = v221;
      sub_1D1C66B60(v141 + v143, v221, type metadata accessor for BoxedTileInfoBearer.TileSort);
      if (!v145(v183, 3, v48))
      {
        v184 = v211;
        sub_1D1C72E80(v221, v211, type metadata accessor for StaticUserActionPrediction);
        v183 = v212;
        sub_1D1C66B60(v239 + v143, v212, type metadata accessor for BoxedTileInfoBearer.TileSort);
        if (!v145(v183, 3, v48))
        {
          v194 = v48;
          v155 = v140;
          v195 = v206;
          sub_1D1C72E80(v183, v206, type metadata accessor for StaticUserActionPrediction);
          v196 = *(v184 + v194[5]);
          sub_1D1C72E20(v184, type metadata accessor for StaticUserActionPrediction);
          v197 = *(v195 + v194[5]);
          sub_1D1C72E20(v195, type metadata accessor for StaticUserActionPrediction);
          v169 = v197 < v196;
          v168 = v239;
          v141 = v233;
          goto LABEL_117;
        }

        sub_1D1C72E20(v184, type metadata accessor for StaticUserActionPrediction);
        v141 = v233;
      }

      sub_1D1C72E20(v183, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v185 = v217;
      sub_1D1C66B60(v141 + v143, v217, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v186 = v145(v185, 3, v48);
      if (v186 > 1)
      {
        if (v186 == 2)
        {
          v187 = 3;
        }

        else
        {
          v187 = 4;
        }
      }

      else if (v186)
      {
        v187 = 2;
      }

      else
      {
        sub_1D1C72E20(v217, type metadata accessor for BoxedTileInfoBearer.TileSort);
        v187 = 1;
      }

      v188 = v239 + v143;
      v189 = v218;
      sub_1D1C66B60(v188, v218, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v190 = v145(v189, 3, v48);
      if (v190 > 1)
      {
        v171 = v236;
        v170 = v237;
        if (v190 == 2)
        {
          v191 = 3;
        }

        else
        {
          v191 = 4;
        }

        v168 = v239;
      }

      else
      {
        if (v190)
        {
          v191 = 2;
        }

        else
        {
          sub_1D1C72E20(v218, type metadata accessor for BoxedTileInfoBearer.TileSort);
          v191 = 1;
        }

        v168 = v239;
        v171 = v236;
        v170 = v237;
      }

      v155 = v140;
      v169 = v187 < v191;
LABEL_147:
      v80 = v171 + v170;
      v192 = v171;
      sub_1D1C72E20(v168, type metadata accessor for BoxedTileInfoBearer);
      sub_1D1C72E20(v141, type metadata accessor for BoxedTileInfoBearer);
      if (v169)
      {
        if (v192 < v231 || v80 >= v231)
        {
          swift_arrayInitWithTakeFrontToBack();
          v137 = v230;
          v140 = v155;
        }

        else
        {
          v136 = v192 == v231;
          v137 = v230;
          v140 = v155;
          if (!v136)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v139 = v235;
        v138 = v237;
        v48 = v232;
        if (v235 <= v241)
        {
          goto LABEL_164;
        }

        goto LABEL_91;
      }

      v193 = v234;
      v137 = v234;
      if (v192 < v235 || v80 >= v235)
      {
        swift_arrayInitWithTakeFrontToBack();
        v140 = v155;
      }

      else
      {
        v136 = v192 == v235;
        v140 = v155;
        if (!v136)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v139 = v137;
      v138 = v237;
      v142 = v231;
      v48 = v232;
      if (v193 <= v241)
      {
        a2 = v231;
        goto LABEL_164;
      }
    }

    sub_1D1C72E20(v149, type metadata accessor for StaticUserActionPrediction);
    v147 = v140;
    a2 = v240;
LABEL_99:
    sub_1D1C72E20(v147, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v150 = v225;
    sub_1D1C66B60(v141 + v143, v225, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v151 = v145(v150, 3, v48);
    if (v151 > 1)
    {
      if (v151 == 2)
      {
        v152 = 3;
      }

      else
      {
        v152 = 4;
      }
    }

    else if (v151)
    {
      v152 = 2;
    }

    else
    {
      sub_1D1C72E20(v225, type metadata accessor for BoxedTileInfoBearer.TileSort);
      v152 = 1;
    }

    v153 = v226;
    sub_1D1C66B60(v239 + v143, v226, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v154 = v145(v153, 3, v48);
    if (v154 > 1)
    {
      v140 = v222;
      v141 = v233;
      if (v154 == 2)
      {
        if (v152 == 3)
        {
          goto LABEL_116;
        }
      }

      else if (v152 == 4)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v140 = v222;
      v141 = v233;
      if (v154)
      {
        if (v152 == 2)
        {
          goto LABEL_116;
        }
      }

      else
      {
        sub_1D1C72E20(v226, type metadata accessor for BoxedTileInfoBearer.TileSort);
        if (v152 == 1)
        {
          goto LABEL_116;
        }
      }
    }

    goto LABEL_127;
  }

LABEL_168:
  __break(1u);
  return result;
}

unint64_t *sub_1D1C6CBAC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_1D1C7039C(v9, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_1D1C6CC64(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a8)(unint64_t, uint64_t))
{
  v14 = *(a2 + 16);
  if (a4)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3;
  }

  v16 = MEMORY[0x1D3890550](*(a2 + 16));
  if (v16 <= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = v17;
  }

  if (v18 > 4)
  {
    v20 = MEMORY[0x1D3890560]();
    v21 = *(a6(0) - 8);
    a7(a2 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v14, v20 + 16, v20 + 32);
    *a1 = v22;
    return v20;
  }

  else if (v14 >= 2)
  {
    v23 = *(a6(0) - 8);
    v24 = a8(a2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)), v14);
    result = 0;
    *a1 = v24;
  }

  else
  {
    result = 0;
    *a1 = v14;
  }

  return result;
}

void *sub_1D1C6CDDC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for BoxedTileInfoBearer(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v29 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v31 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CD64(0, a2 & ~(a2 >> 63), 0);
  v15 = v31;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v27 = a2;
    v28 = v2;
    v16 = 0;
    v17 = *(v6 + 72);
    v26 = a1;
    do
    {
      a2 = v16;
      v30 = v16 + 1;
      sub_1D1C66B60(a1 + v17 * v16, v13, type metadata accessor for BoxedTileInfoBearer);
      v18 = *(v15 + 16) + 1;
      v19 = v15;
      while (--v18)
      {
        v20 = v19 + v17;
        sub_1D1C66B60(v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v11, type metadata accessor for BoxedTileInfoBearer);
        v21 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        sub_1D1C72E20(v11, type metadata accessor for BoxedTileInfoBearer);
        v19 = v20;
        if (v21)
        {
          sub_1D1C72E20(v13, type metadata accessor for BoxedTileInfoBearer);
          goto LABEL_11;
        }
      }

      v22 = v29;
      sub_1D1C66B60(v13, v29, type metadata accessor for BoxedTileInfoBearer);
      v31 = v15;
      v24 = *(v15 + 16);
      v23 = *(v15 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1D178CD64((v23 > 1), v24 + 1, 1);
        v15 = v31;
      }

      sub_1D1C72E20(v13, type metadata accessor for BoxedTileInfoBearer);
      *(v15 + 16) = v24 + 1;
      sub_1D1C72E80(v22, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v24 * v17, type metadata accessor for BoxedTileInfoBearer);
      a1 = v26;
      a2 = v27;
      v16 = v30;
    }

    while (v30 != v27);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C6D0B4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v26 = MEMORY[0x1E69E7CC0];
  result = sub_1D17915E0(0, a2 & ~(a2 >> 63), 0);
  v13 = v26;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v24 = a1;
    v25 = v2;
    v14 = 0;
    v15 = *(v6 + 72);
    v23 = a2;
    do
    {
      a2 = v14++;
      sub_1D1C66B60(a1 + v15 * a2, v11, type metadata accessor for StaticService);
      v16 = *(v13 + 16) + 1;
      v17 = v13;
      while (--v16)
      {
        v18 = v17 + v15;
        v19 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v11, v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
        v17 = v18;
        if (v19)
        {
          sub_1D1C72E20(v11, type metadata accessor for StaticService);
          goto LABEL_11;
        }
      }

      sub_1D1C66B60(v11, v9, type metadata accessor for StaticService);
      v26 = v13;
      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1D17915E0(v20 > 1, v21 + 1, 1);
        v13 = v26;
      }

      sub_1D1C72E20(v11, type metadata accessor for StaticService);
      *(v13 + 16) = v21 + 1;
      sub_1D1C72E80(v9, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v21 * v15, type metadata accessor for StaticService);
      a2 = v23;
      a1 = v24;
    }

    while (v14 != v23);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void *sub_1D1C6D31C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v26 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - v9;
  v33 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CEFC(0, a2 & ~(a2 >> 63), 0);
  v12 = v33;
  if (!a2)
  {
LABEL_11:

    return a2;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v24 = a2;
    v25 = v2;
    v13 = 0;
    v29 = (v6 + 8);
    v22[1] = v6 + 32;
    v23 = a1;
    v14 = *(v6 + 16);
    v15 = *(v6 + 72);
    v30 = v14;
    v31 = v6 + 16;
    do
    {
      v27 = v13;
      v28 = v13 + 1;
      v14(v10, (a1 + v15 * v13), v5);
      v16 = *(v12 + 16) + 1;
      v32 = v12;
      while (--v16)
      {
        sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v12 += v15;
        if (sub_1D1E6775C())
        {
          (*v29)(v10, v5);
          a2 = v27;
          goto LABEL_11;
        }
      }

      v17 = v26;
      v30(v26, v10, v5);
      v33 = v32;
      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D178CEFC((v18 > 1), v19 + 1, 1);
        v17 = v26;
      }

      (*(v6 + 8))(v10, v5);
      v20 = v33;
      *(v33 + 16) = v19 + 1;
      v21 = v17;
      v12 = v20;
      (*(v6 + 32))(v20 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v19 * v15, v21, v5);
      a1 = v23;
      a2 = v24;
      v13 = v28;
      v14 = v30;
    }

    while (v28 != v24);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C6D608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BoxedTileInfoBearer(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C66B60(a1, v7, type metadata accessor for BoxedTileInfoBearer);
  v8 = v2 + 1;
  v9 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D178CD64(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1D178CD64((v11 > 1), v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = sub_1D1C72E80(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, type metadata accessor for BoxedTileInfoBearer);
  v2[1] = v9;
  v14 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (MEMORY[0x1D3890530](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v2;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_1D1E66F0C();

        *v2 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_1D1E66EBC();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1D1C6DD04(sub_1D1C6DE3C);
}

uint64_t sub_1D1C6D858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C66B60(a1, v7, type metadata accessor for StaticService);
  v8 = v2 + 1;
  v9 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D17915E0(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1D17915E0(v11 > 1, v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = sub_1D1C72E80(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, type metadata accessor for StaticService);
  v2[1] = v9;
  v14 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (MEMORY[0x1D3890530](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v2;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_1D1E66F0C();

        *v2 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_1D1E66EBC();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1D1C6DD04(sub_1D1C6DED8);
}

uint64_t sub_1D1C6DAA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = v2 + 1;
  v9 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D178CEFC(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1D178CEFC((v11 > 1), v12 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v7, v4);
  v2[1] = v9;
  v14 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    if (MEMORY[0x1D3890530](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v2;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_1D1E66F0C();

        *v2 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_1D1E66EBC();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1D1C6DD04(sub_1D1C6DFC4);
}

uint64_t sub_1D1C6DD04(void (*a1)(uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v4 = *(v3 + 24) & 0x3FLL;
  }

  else
  {
    v4 = 0;
  }

  v5 = v1[1];
  v6 = *(v5 + 16);
  if (v4 || v6 >= 0x10)
  {
    v8 = MEMORY[0x1D3890550](v6);
    if (v4 <= v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    v7 = sub_1D1C6DDB4(v5, v9, 0, v4, a1);
  }

  else
  {
    v7 = 0;
  }

  *v1 = v7;
  return result;
}

uint64_t sub_1D1C6DDB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x1D3890550](v8, a2);
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = MEMORY[0x1D3890560](v10, a4);
    a5(a1, v12 + 16, v12 + 32);
    return v12;
  }

  return result;
}

uint64_t sub_1D1C6E14C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v24 = a1;
  v7 = type metadata accessor for BoxedTileInfoBearer(0) - 8;
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a2;
  if (a2)
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v13 = *(v9 + 72);
      while (1)
      {
        sub_1D1C66B60(v24 + v13 * v12, v11, type metadata accessor for BoxedTileInfoBearer);
        sub_1D1E6920C();
        sub_1D1E66A7C();
        sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1D1E676EC();
        result = sub_1D1E6926C();
        v14 = 1 << *a3;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          break;
        }

        v17 = v16 & result;
        v18 = sub_1D1E66EAC();
        v20 = v19;
        v22 = v21;
        sub_1D1C72E20(v11, type metadata accessor for BoxedTileInfoBearer);
        v25 = a3;
        v26 = a4;
        v27 = v17;
        v28 = v18;
        v29 = v20;
        v30 = v22;
        v31 = 0;
        while (v28)
        {
          sub_1D1E66EEC();
        }

        result = sub_1D1E66EDC();
        if (++v12 == v32)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C6E360(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a4;
  v30 = a1;
  v6 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  if (a2)
  {
    if ((v38 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v8 + 16);
      v12 = v8 + 16;
      v26 = *(v12 + 56);
      v27 = v13;
      v28 = v12;
      v25 = (v12 - 8);
      v13(v10, v30, v6);
      while (1)
      {
        sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        result = sub_1D1E676DC();
        v14 = 1 << *a3;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v15)
        {
          break;
        }

        v17 = v16 & result;
        v18 = v29;
        v19 = sub_1D1E66EAC();
        v21 = v20;
        v23 = v22;
        (*v25)(v10, v6);
        v31 = a3;
        v32 = v18;
        v33 = v17;
        v34 = v19;
        v35 = v21;
        v36 = v23;
        v37 = 0;
        while (v34)
        {
          sub_1D1E66EEC();
        }

        result = sub_1D1E66EDC();
        if (++v11 == v38)
        {
          return result;
        }

        v27(v10, v30 + v26 * v11, v6);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C6E578(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), void (*a7)(void *), uint64_t (*a8)(void))
{
  v28 = a8;
  v30 = a6;
  v31 = a7;
  v29 = a1;
  v11 = a5(0) - 8;
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v37 = a2;
  if (a2)
  {
    if ((v37 & 0x8000000000000000) == 0)
    {
      v16 = 0;
      v17 = *(v13 + 72);
      while (1)
      {
        sub_1D1C66B60(v29 + v17 * v16, v15, v30);
        sub_1D1E6920C();
        v31(v32);
        result = sub_1D1E6926C();
        v18 = 1 << *a3;
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v19)
        {
          break;
        }

        v21 = v20 & result;
        v22 = sub_1D1E66EAC();
        v24 = v23;
        v26 = v25;
        sub_1D1C72E20(v15, v28);
        v32[0] = a3;
        v32[1] = a4;
        v32[2] = v21;
        v33 = v22;
        v34 = v24;
        v35 = v26;
        v36 = 0;
        while (v33)
        {
          sub_1D1E66EEC();
        }

        result = sub_1D1E66EDC();
        if (++v16 == v37)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1C6E730(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = type metadata accessor for BoxedTileInfoBearer(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  result = sub_1D1E6926C();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = sub_1D1E66EAC();
    *&v27 = a4;
    *(&v27 + 1) = a5;
    *&v28 = v16;
    *(&v28 + 1) = v17;
    *&v29 = v18;
    *(&v29 + 1) = v19;
    v30 = 0;
    v20 = sub_1D1E66ECC();
    if ((v21 & 1) == 0)
    {
      v22 = *(v9 + 72);
      do
      {
        sub_1D1C66B60(a2 + v22 * v20, v11, type metadata accessor for BoxedTileInfoBearer);
        v23 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        sub_1D1C72E20(v11, type metadata accessor for BoxedTileInfoBearer);
        if (v23)
        {
          break;
        }

        sub_1D1E66EEC();
        v25[1] = v27;
        v25[2] = v28;
        v25[3] = v29;
        v26 = v30;
        v20 = sub_1D1E66ECC();
      }

      while ((v24 & 1) == 0);
    }

    return v20;
  }

  return result;
}

uint64_t sub_1D1C6E948(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = type metadata accessor for StaticService(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  StaticService.hash(into:)(v27);
  result = sub_1D1E6926C();
  v14 = 1 << *a4;
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v17 = v16 & result;
    v18 = sub_1D1E66EAC();
    *&v29 = a4;
    *(&v29 + 1) = a5;
    *&v30 = v17;
    *(&v30 + 1) = v18;
    *&v31 = v19;
    *(&v31 + 1) = v20;
    v32 = 0;
    v21 = sub_1D1E66ECC();
    if ((v22 & 1) == 0)
    {
      v23 = *(v10 + 72);
      do
      {
        sub_1D1C66B60(a2 + v23 * v21, v12, type metadata accessor for StaticService);
        v24 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v12, a1);
        sub_1D1C72E20(v12, type metadata accessor for StaticService);
        if (v24)
        {
          break;
        }

        sub_1D1E66EEC();
        v27[0] = v29;
        v27[1] = v30;
        v27[2] = v31;
        v28 = v32;
        v21 = sub_1D1E66ECC();
      }

      while ((v25 & 1) == 0);
    }

    return v21;
  }

  return result;
}

uint64_t sub_1D1C6EB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v29 = a2;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v28[1] = a1;
  result = sub_1D1E676DC();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = sub_1D1E66EAC();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v37 = 0;
    v20 = sub_1D1E66ECC();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v22 = v24;
      v25 = *(v23 + 56);
      do
      {
        v22(v11, v29 + v25 * v20, v8);
        sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v26 = sub_1D1E6775C();
        (*(v23 - 8))(v11, v8);
        if (v26)
        {
          break;
        }

        sub_1D1E66EEC();
        v30 = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v20 = sub_1D1E66ECC();
      }

      while ((v27 & 1) == 0);
    }

    return v20;
  }

  return result;
}

uint64_t sub_1D1C6ED68(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v34 = a4;
  v7 = type metadata accessor for BoxedTileInfoBearer(0);
  v35 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v30 - v12;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v14 = 0;
    v32 = a2;
    v31 = a3;
    v33 = a1;
    while (1)
    {
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v36 = v14 + 1;
      v15 = *(v35 + 72);
      v46 = v14;
      v16 = a1 + v15 * v14;
      sub_1D1C66B60(v16, v13, type metadata accessor for BoxedTileInfoBearer);
      sub_1D1E6920C();
      sub_1D1E66A7C();
      sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      result = sub_1D1E6926C();
      v17 = 1 << *a3;
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v18)
      {
        goto LABEL_15;
      }

      v20 = v19 & result;
      v21 = v34;
      v22 = sub_1D1E66EAC();
      v24 = v23;
      v37 = v25;
      sub_1D1C72E20(v13, type metadata accessor for BoxedTileInfoBearer);
      *&v38 = a3;
      *(&v38 + 1) = v21;
      a1 = v33;
      *&v39 = v20;
      *(&v39 + 1) = v22;
      *&v40 = v24;
      *(&v40 + 1) = v37;
      v41 = 0;
      v45 = 0;
      v42 = v38;
      v43 = v39;
      v44 = v40;
      v26 = sub_1D1E66ECC();
      if ((v27 & 1) == 0)
      {
        break;
      }

LABEL_4:
      result = sub_1D1E66EDC();
      v14 = v36;
      a3 = v31;
      if (v36 == v32)
      {
        return 1;
      }
    }

    while (1)
    {
      sub_1D1C66B60(a1 + v26 * v15, v13, type metadata accessor for BoxedTileInfoBearer);
      sub_1D1C66B60(v16, v10, type metadata accessor for BoxedTileInfoBearer);
      v28 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D1C72E20(v10, type metadata accessor for BoxedTileInfoBearer);
      sub_1D1C72E20(v13, type metadata accessor for BoxedTileInfoBearer);
      if (v28)
      {
        return 0;
      }

      sub_1D1E66EEC();
      v42 = v38;
      v43 = v39;
      v44 = v40;
      v45 = v41;
      v26 = sub_1D1E66ECC();
      if (v29)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1D1C6F0D8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v33 = a4;
  v7 = type metadata accessor for StaticService(0);
  v34 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v29 - v12;
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v31 = a2;
    v30 = a3;
    v32 = a1;
    while (!__OFADD__(v14, 1))
    {
      v35 = v14 + 1;
      v15 = *(v34 + 72);
      v16 = a1 + v15 * v14;
      sub_1D1C66B60(v16, v13, type metadata accessor for StaticService);
      sub_1D1E6920C();
      StaticService.hash(into:)(v37);
      result = sub_1D1E6926C();
      v17 = 1 << *a3;
      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v18)
      {
        goto LABEL_15;
      }

      v20 = v19 & result;
      v46 = v14;
      v21 = v33;
      v36 = sub_1D1E66EAC();
      v23 = v22;
      v25 = v24;
      sub_1D1C72E20(v13, type metadata accessor for StaticService);
      *&v38 = a3;
      *(&v38 + 1) = v21;
      *&v39 = v20;
      *(&v39 + 1) = v36;
      *&v40 = v23;
      *(&v40 + 1) = v25;
      a1 = v32;
      v41 = 0;
      v45 = 0;
      v42 = v38;
      v43 = v39;
      v44 = v40;
      while (1)
      {
        v26 = sub_1D1E66ECC();
        if (v27)
        {
          break;
        }

        sub_1D1C66B60(a1 + v26 * v15, v13, type metadata accessor for StaticService);
        sub_1D1C66B60(v16, v10, type metadata accessor for StaticService);
        v28 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v13, v10);
        sub_1D1C72E20(v10, type metadata accessor for StaticService);
        sub_1D1C72E20(v13, type metadata accessor for StaticService);
        if (v28)
        {
          return 0;
        }

        sub_1D1E66EEC();
        v42 = v38;
        v43 = v39;
        v44 = v40;
        v45 = v41;
      }

      result = sub_1D1E66EDC();
      v14 = v35;
      a3 = v30;
      if (v35 == v31)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1C6F3F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v34 = a4;
  v42 = a1;
  v7 = sub_1D1E66A7C();
  v35 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - v12;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v31 = v4;
    v14 = 0;
    v15 = (v35 + 8);
    v33 = a2;
    v32 = a3;
    while (1)
    {
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v36 = v14 + 1;
      v16 = *(v35 + 72);
      v41 = v14;
      v52 = v16;
      v17 = *(v35 + 16);
      v43 = v42 + v16 * v14;
      v17(v13);
      sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v18 = 1 << *a3;
      v19 = __OFSUB__(v18, 1);
      v20 = v18 - 1;
      if (v19)
      {
        goto LABEL_15;
      }

      v40 = v20 & result;
      v21 = v34;
      v22 = sub_1D1E66EAC();
      v38 = v23;
      v39 = v22;
      v37 = v24;
      v25 = *v15;
      (*v15)(v13, v7);
      *&v44 = a3;
      *(&v44 + 1) = v21;
      *&v45 = v40;
      *(&v45 + 1) = v39;
      *&v46 = v38;
      *(&v46 + 1) = v37;
      v47 = 0;
      v51 = 0;
      v48 = v44;
      v49 = v45;
      v50 = v46;
      v26 = sub_1D1E66ECC();
      v27 = v42;
      if ((v28 & 1) == 0)
      {
        break;
      }

LABEL_4:
      result = sub_1D1E66EDC();
      v14 = v36;
      a3 = v32;
      if (v36 == v33)
      {
        return 1;
      }
    }

    while (1)
    {
      (v17)(v13, v27 + v26 * v52, v7);
      (v17)(v10, v43, v7);
      sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v29 = sub_1D1E6775C();
      v25(v10, v7);
      v25(v13, v7);
      if (v29)
      {
        return 0;
      }

      sub_1D1E66EEC();
      v48 = v44;
      v49 = v45;
      v50 = v46;
      v51 = v47;
      v26 = sub_1D1E66ECC();
      if (v30)
      {
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t sub_1D1C6F794(uint64_t a1)
{
  v3 = type metadata accessor for BoxedTileInfoBearer(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C66B60(a1, v6, type metadata accessor for BoxedTileInfoBearer);
  v8 = v1 + 1;
  v7 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v1[1] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D178CD64(0, *(v7 + 16) + 1, 1);
    v7 = *v8;
  }

  v11 = *(v7 + 16);
  v10 = *(v7 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_1D178CD64((v10 > 1), v11 + 1, 1);
    v7 = *v8;
  }

  *(v7 + 16) = v11 + 1;
  result = sub_1D1C72E80(v6, v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, type metadata accessor for BoxedTileInfoBearer);
  v1[1] = v7;
  v13 = *v1;
  if (!*v1)
  {
    if (v11 < 0xF)
    {
      return result;
    }

    return sub_1D1C6DD04(sub_1D1C6DE3C);
  }

  swift_beginAccess();
  if (MEMORY[0x1D3890530](*(v13 + 16) & 0x3FLL) <= v11)
  {
    return sub_1D1C6DD04(sub_1D1C6DE3C);
  }

  result = swift_isUniquelyReferenced_native();
  v14 = *v1;
  if ((result & 1) == 0)
  {
    if (!v14)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v15 = sub_1D1E66F0C();

    *v1 = v15;
    v14 = v15;
  }

  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C75134(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  sub_1D1E676EC();
  result = sub_1D1E6926C();
  v16 = 1 << *(v14 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = v18 & result;
  v20 = sub_1D1E66EAC();
  v23[0] = v14 + 16;
  v23[1] = v14 + 32;
  v23[2] = v19;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = 0;
  while (v24)
  {
    sub_1D1E66EEC();
  }

  sub_1D1E66EDC();
}

BOOL sub_1D1C6FA8C(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v30 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v30 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v15 = type metadata accessor for StaticUserActionPrediction(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v30 - v20;
  sub_1D1C66B60(a1, v14, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v22 = *(v16 + 48);
  if (v22(v14, 3, v15))
  {
    v12 = v14;
    v23 = v31;
  }

  else
  {
    sub_1D1C72E80(v14, v21, type metadata accessor for StaticUserActionPrediction);
    v23 = v31;
    sub_1D1C66B60(v31, v12, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (!v22(v12, 3, v15))
    {
      sub_1D1C72E80(v12, v19, type metadata accessor for StaticUserActionPrediction);
      v28 = _s13HomeDataModel26StaticUserActionPredictionV2eeoiySbAC_ACtFZ_0(v21, v19);
      sub_1D1C72E20(v19, type metadata accessor for StaticUserActionPrediction);
      sub_1D1C72E20(v21, type metadata accessor for StaticUserActionPrediction);
      return v28;
    }

    sub_1D1C72E20(v21, type metadata accessor for StaticUserActionPrediction);
  }

  sub_1D1C72E20(v12, type metadata accessor for BoxedTileInfoBearer.TileSort);
  sub_1D1C66B60(a1, v9, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v24 = v22(v9, 3, v15);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = 3;
    }

    else
    {
      v25 = 4;
    }
  }

  else if (v24)
  {
    v25 = 2;
  }

  else
  {
    sub_1D1C72E20(v9, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v25 = 1;
  }

  sub_1D1C66B60(v23, v6, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v26 = v22(v6, 3, v15);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }
  }

  else if (v26)
  {
    v27 = 2;
  }

  else
  {
    sub_1D1C72E20(v6, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v27 = 1;
  }

  return v25 == v27;
}

BOOL sub_1D1C6FE6C(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v3 = type metadata accessor for BoxedTileInfoBearer.TileSort(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v31 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = type metadata accessor for StaticUserActionPrediction(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  sub_1D1C66B60(a1, v14, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v22 = *(v16 + 48);
  if (v22(v14, 3, v15))
  {
    v12 = v14;
    v23 = v32;
  }

  else
  {
    sub_1D1C72E80(v14, v21, type metadata accessor for StaticUserActionPrediction);
    v23 = v32;
    sub_1D1C66B60(v32, v12, type metadata accessor for BoxedTileInfoBearer.TileSort);
    if (!v22(v12, 3, v15))
    {
      sub_1D1C72E80(v12, v19, type metadata accessor for StaticUserActionPrediction);
      v29 = *&v21[*(v15 + 20)];
      sub_1D1C72E20(v21, type metadata accessor for StaticUserActionPrediction);
      v30 = *&v19[*(v15 + 20)];
      sub_1D1C72E20(v19, type metadata accessor for StaticUserActionPrediction);
      return v30 < v29;
    }

    sub_1D1C72E20(v21, type metadata accessor for StaticUserActionPrediction);
  }

  sub_1D1C72E20(v12, type metadata accessor for BoxedTileInfoBearer.TileSort);
  sub_1D1C66B60(a1, v9, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v24 = v22(v9, 3, v15);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      v25 = 3;
    }

    else
    {
      v25 = 4;
    }
  }

  else if (v24)
  {
    v25 = 2;
  }

  else
  {
    sub_1D1C72E20(v9, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v25 = 1;
  }

  sub_1D1C66B60(v23, v6, type metadata accessor for BoxedTileInfoBearer.TileSort);
  v26 = v22(v6, 3, v15);
  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v27 = 3;
    }

    else
    {
      v27 = 4;
    }
  }

  else if (v26)
  {
    v27 = 2;
  }

  else
  {
    sub_1D1C72E20(v6, type metadata accessor for BoxedTileInfoBearer.TileSort);
    v27 = 1;
  }

  return v25 < v27;
}

BOOL sub_1D1C70258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BoxedTileInfoBearer(0);
  v5 = *(v4 + 24);
  if (sub_1D1C6FA8C(a1 + v5, a2 + v5))
  {
    v6 = (a1 + *(v4 + 20));
    v7 = v6[3];
    v8 = v6[4];
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v8 + 56))(v7, v8);
    v9 = (a2 + *(v4 + 20));
    v10 = v9[3];
    v11 = v9[4];
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v11 + 56))(v10, v11);
    sub_1D17D8EF0();
    v12 = sub_1D1E6860C();

    return v12 == -1;
  }

  else
  {

    return sub_1D1C6FE6C(a1 + v5, a2 + v5);
  }
}

uint64_t sub_1D1C7039C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a2;
  v40 = a1;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticService(0);
  v45 = *(v12 - 8);
  result = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = *(a3 + 56);
  v42 = a3 + 56;
  v43 = 0;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v41 = (v18 + 63) >> 6;
  v49 = v9 + 16;
  v46 = v9;
  v48 = (v9 + 8);
  v38 = a5;
  v39 = a3;
  v37 = a4;
  while (v20)
  {
    v23 = __clz(__rbit64(v20));
    v47 = (v20 - 1) & v20;
LABEL_12:
    v26 = v23 | (v16 << 6);
    v27 = *(a3 + 48);
    v28 = *(v45 + 72);
    v44 = v26;
    sub_1D1C66B60(v27 + v28 * v26, v15, type metadata accessor for StaticService);
    v29 = a5 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v30 = v15;
    v31 = *(a5 + 16);
    if (a4)
    {

      sub_1D1C6EB18(v30, v29, v31, (a4 + 16), a4 + 32);
      v22 = v21;

      result = sub_1D1C72E20(v30, type metadata accessor for StaticService);
      v15 = v30;
      v20 = v47;
      if (v22)
      {
LABEL_18:
        *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
        if (__OFADD__(v43++, 1))
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      if (!v31)
      {
LABEL_17:
        v15 = v30;
        result = sub_1D1C72E20(v30, type metadata accessor for StaticService);
        a5 = v38;
        a3 = v39;
        a4 = v37;
        v20 = v47;
        goto LABEL_18;
      }

      v32 = *(v46 + 72);
      v33 = *(v46 + 16);
      while (1)
      {
        v33(v11, v29, v8);
        sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v34 = sub_1D1E6775C();
        (*v48)(v11, v8);
        if (v34)
        {
          break;
        }

        v29 += v32;
        if (!--v31)
        {
          goto LABEL_17;
        }
      }

      v15 = v30;
      result = sub_1D1C72E20(v30, type metadata accessor for StaticService);
      a5 = v38;
      a3 = v39;
      a4 = v37;
      v20 = v47;
    }
  }

  v24 = v16;
  while (1)
  {
    v16 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v16 >= v41)
    {

      return sub_1D19E0ED0(v40, v36, v43, a3);
    }

    v25 = *(v42 + 8 * v16);
    ++v24;
    if (v25)
    {
      v23 = __clz(__rbit64(v25));
      v47 = (v25 - 1) & v25;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D1C70794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = *MEMORY[0x1E69E9840];
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticService(0);
  v53 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v58 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v13) = *(a1 + 32);
  v14 = v13 & 0x3F;
  v15 = ((1 << v13) + 63) >> 6;
  v16 = 8 * v15;

  v54 = a3;

  if (v14 > 0xD)
  {
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v41 = swift_slowAlloc();

      v42 = v54;

      v39 = sub_1D1C6CBAC(v41, v15, a1, a2, v42);

      MEMORY[0x1D3893640](v41, -1, -1);

      return v39;
    }
  }

  v44 = v15;
  v45 = v4;
  v43[1] = v43;
  MEMORY[0x1EEE9AC00](v17);
  v48 = v43 - ((v16 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v48, v16);
  v18 = 0;
  v15 = 0;
  v19 = *(a1 + 56);
  v50 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v49 = (v20 + 63) >> 6;
  v57 = v9 + 16;
  v4 = (v9 + 8);
  v46 = a1;
  v47 = a2;
  v55 = v9;
  while (2)
  {
    v51 = v18;
    while (1)
    {
      while (1)
      {
        if (!v22)
        {
          v24 = v15;
          v16 = v58;
          while (1)
          {
            v15 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v15 >= v49)
            {
              goto LABEL_26;
            }

            v25 = *(v50 + 8 * v15);
            ++v24;
            if (v25)
            {
              v56 = (v25 - 1) & v25;
              v23 = __clz(__rbit64(v25)) | (v15 << 6);
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v56 = (v22 - 1) & v22;
        v23 = __clz(__rbit64(v22)) | (v15 << 6);
        v16 = v58;
LABEL_13:
        v26 = *(a1 + 48);
        v27 = *(v53 + 72);
        v52 = v23;
        sub_1D1C66B60(v26 + v27 * v23, v16, type metadata accessor for StaticService);
        v28 = v54 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
        v29 = a1;
        v30 = v16;
        v31 = *(v54 + 16);
        if (!a2)
        {
          break;
        }

        sub_1D1C6EB18(v30, v28, v31, (a2 + 16), a2 + 32);
        v33 = v32;

        sub_1D1C72E20(v30, type metadata accessor for StaticService);
        v9 = v55;
        v22 = v56;
        a1 = v29;
        if (v33)
        {
          goto LABEL_23;
        }
      }

      if (!v31)
      {
        break;
      }

      v34 = *(v55 + 72);
      v35 = *(v55 + 16);
      while (1)
      {
        v35(v11, v28, v8);
        sub_1D1C75134(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v36 = sub_1D1E6775C();
        (*v4)(v11, v8);
        if (v36)
        {
          break;
        }

        v28 += v34;
        if (!--v31)
        {
          goto LABEL_22;
        }
      }

      sub_1D1C72E20(v58, type metadata accessor for StaticService);
      a1 = v46;
      a2 = v47;
      v9 = v55;
      v22 = v56;
    }

LABEL_22:
    sub_1D1C72E20(v58, type metadata accessor for StaticService);
    a1 = v46;
    a2 = v47;
    v9 = v55;
    v22 = v56;
LABEL_23:
    v37 = v51;
    *&v48[(v52 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v52;
    v38 = __OFADD__(v37, 1);
    v18 = v37 + 1;
    if (!v38)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_26:
  v39 = sub_1D19E0ED0(v48, v44, v51, a1);

  return v39;
}

uint64_t sub_1D1C70CDC(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v216 = a1;
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v229 = &v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v228 = &v210 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v213 = &v210 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v212 = &v210 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v233 = &v210 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v234 = &v210 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v218 = &v210 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v210 - v26;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v28 = MEMORY[0x1EEE9AC00](v242);
  v239 = &v210 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v210 - v30;
  v249 = type metadata accessor for StaticService(0);
  v231 = *(v249 - 8);
  v32 = MEMORY[0x1EEE9AC00](v249);
  v223 = &v210 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v247 = &v210 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v210 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v250 = &v210 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v238 = &v210 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v237 = &v210 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v45);
  v232 = a3;
  v48 = a3[1];
  v244 = a5;
  if (v48 < 1)
  {
    swift_bridgeObjectRetain_n();
    v219 = MEMORY[0x1E69E7CC0];
LABEL_148:
    v250 = *v216;
    if (!v250)
    {
      goto LABEL_187;
    }

    swift_bridgeObjectRetain_n();
    v10 = v219;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_150:
      v255 = v10;
      v200 = *(v10 + 16);
      if (v200 >= 2)
      {
        do
        {
          v201 = *v232;
          if (!*v232)
          {
            goto LABEL_185;
          }

          v202 = *(v10 + 16 * v200);
          v203 = *(v10 + 16 * (v200 - 1) + 40);
          v204 = *(v231 + 72);
          v205 = v201 + v204 * v202;
          v206 = v201 + v204 * *(v10 + 16 * (v200 - 1) + 32);
          v207 = v201 + v204 * v203;
          v208 = v244;

          sub_1D1C6A760(v205, v206, v207, v250, v208);
          if (v6)
          {
            break;
          }

          if (v203 < v202)
          {
            goto LABEL_174;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v200 - 2 >= *(v10 + 16))
          {
            goto LABEL_175;
          }

          v209 = (v10 + 16 * v200);
          *v209 = v202;
          v209[1] = v203;
          v255 = v10;
          sub_1D1E0BDB8(v200 - 1);
          v10 = v255;
          v200 = *(v255 + 16);
        }

        while (v200 > 1);
      }

      return swift_bridgeObjectRelease_n();
    }

LABEL_181:
    v10 = sub_1D1E0BE44(v10);
    goto LABEL_150;
  }

  v210 = &v210 - v46;
  v211 = v47;
  v240 = (v11 + 48);
  v230 = (v11 + 32);
  v236 = (v11 + 8);
  swift_bridgeObjectRetain_n();
  v219 = MEMORY[0x1E69E7CC0];
  v215 = a4;
  v241 = v10;
  v217 = v27;
  v49 = v239;
  v221 = v31;
  v243 = v38;
  v50 = 0;
LABEL_4:
  if (v50 + 1 >= v48)
  {
    v61 = v50 + 1;
    goto LABEL_49;
  }

  v235 = v48;
  v51 = *v232;
  v52 = *(v231 + 72);
  v53 = *v232 + v52 * (v50 + 1);
  v54 = v50;
  v55 = v210;
  sub_1D1C66B60(v53, v210, type metadata accessor for StaticService);
  v245 = v51;
  v56 = v51 + v52 * v54;
  v57 = v211;
  sub_1D1C66B60(v56, v211, type metadata accessor for StaticService);
  LODWORD(v248) = sub_1D1D0D384(v55, v57, v244);
  if (v6)
  {
    sub_1D1C72E20(v57, type metadata accessor for StaticService);
    sub_1D1C72E20(v55, type metadata accessor for StaticService);
    swift_bridgeObjectRelease_n();
  }

  v220 = 0;
  sub_1D1C72E20(v57, type metadata accessor for StaticService);
  sub_1D1C72E20(v55, type metadata accessor for StaticService);
  v214 = v54;
  v58 = v54 + 2;
  v246 = v52;
  v10 = v244;
  v59 = v245 + v52 * v58;
  while (1)
  {
    v61 = v235;
    if (v235 == v58)
    {
      break;
    }

    v62 = v237;
    sub_1D1C66B60(v59, v237, type metadata accessor for StaticService);
    v63 = v238;
    sub_1D1C66B60(v53, v238, type metadata accessor for StaticService);
    v64 = sub_1D18E4158(v62, v10);
    LOBYTE(v62) = v65;
    v66 = sub_1D18E4158(v63, v10);
    if (v62)
    {
      if ((v67 & 1) == 0)
      {
        v60 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      if (v67)
      {
        v60 = 1;
        goto LABEL_8;
      }

      if (v64 != v66)
      {
        v60 = v64 < v66;
        goto LABEL_8;
      }
    }

    v68 = *(v249 + 56);
    v69 = *(v242 + 48);
    v70 = v221;
    sub_1D1741C08(v237 + v68, v221, &qword_1EC642570, &qword_1D1E6C6A0);
    v245 = v69;
    sub_1D1741C08(v238 + v68, v70 + v69, &qword_1EC642570, &qword_1D1E6C6A0);
    v71 = v241;
    v72 = *v240;
    if ((*v240)(v70, 1, v241) == 1)
    {
      if (v72(v70 + v245, 1, v71) == 1)
      {
        goto LABEL_23;
      }

      sub_1D1741A30(v70 + v245, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v70, &qword_1EC642570, &qword_1D1E6C6A0);
      v60 = 0;
      v49 = v239;
    }

    else
    {
      v73 = v217;
      sub_1D1741C08(v70, v217, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v72(v70 + v245, 1, v71) == 1)
      {
        (*v236)(v73, v71);
        sub_1D1741A30(v70 + v245, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v70, &qword_1EC642570, &qword_1D1E6C6A0);
        v60 = 1;
        v49 = v239;
        v10 = v244;
      }

      else
      {
        sub_1D1741C08(v70 + v245, v218, &qword_1EC642570, &qword_1D1E6C6A0);
        v74 = *v230;
        v75 = v212;
        (*v230)(v212, v73, v71);
        v76 = v213;
        v74(v213, v218, v71);
        sub_1D1C75134(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        if (sub_1D1E6775C())
        {
          v77 = *v236;
          (*v236)(v76, v71);
          v77(v75, v71);
LABEL_23:
          sub_1D1741A30(v70, &qword_1EC642AC0, &qword_1D1E6E810);
          v78 = *(v249 + 20);
          v79 = (v237 + v78);
          v81 = *(v237 + v78);
          v80 = *(v237 + v78 + 8);
          v82 = (v238 + v78);
          v84 = *v82;
          v83 = v82[1];
          if (*v79 == *v82 && v80 == v83 || (sub_1D1E6904C() & 1) != 0)
          {
            v85 = sub_1D1E66A1C();
            v87 = v86;
            v88 = sub_1D1E66A1C();
            v49 = v239;
            if (v85 == v88 && v87 == v89)
            {

              v60 = 0;
            }

            else
            {
              v60 = sub_1D1E6904C();
            }

            v10 = v244;
          }

          else
          {
            v253 = v81;
            v254 = v80;
            v251 = v84;
            v252 = v83;
            sub_1D17D8EF0();
            v60 = sub_1D1E685FC() == -1;
            v10 = v244;
            v49 = v239;
          }

          goto LABEL_8;
        }

        v60 = sub_1D1E6696C();
        v90 = v76;
        v91 = v75;
        v92 = *v236;
        (*v236)(v90, v71);
        v92(v91, v71);
        v10 = v244;
        sub_1D1741A30(v70 + v245, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v70, &qword_1EC642570, &qword_1D1E6C6A0);
        v49 = v239;
      }
    }

LABEL_8:
    sub_1D1C72E20(v238, type metadata accessor for StaticService);
    sub_1D1C72E20(v237, type metadata accessor for StaticService);
    ++v58;
    v59 += v246;
    v53 += v246;
    if ((v248 ^ v60))
    {
      v61 = v58 - 1;
      break;
    }
  }

  v6 = v220;
  a4 = v215;
  v50 = v214;
  if ((v248 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v61 < v214)
  {
    goto LABEL_180;
  }

  if (v214 < v61)
  {
    v93 = v61;
    v10 = v246;
    v94 = v246 * (v61 - 1);
    v95 = v61 * v246;
    v235 = v61;
    v96 = v214;
    v97 = v214 * v246;
    do
    {
      if (v96 != --v93)
      {
        v98 = *v232;
        if (!*v232)
        {
          goto LABEL_184;
        }

        sub_1D1C72E80(v98 + v97, v223, type metadata accessor for StaticService);
        if (v97 < v94 || v98 + v97 >= (v98 + v95))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v97 != v94)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1D1C72E80(v223, v98 + v94, type metadata accessor for StaticService);
        v6 = v220;
      }

      ++v96;
      v94 -= v10;
      v95 -= v10;
      v97 += v10;
    }

    while (v96 < v93);
    a4 = v215;
    v61 = v235;
    v50 = v214;
  }

LABEL_49:
  v99 = v232[1];
  if (v61 >= v99)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v61, v50))
  {
    goto LABEL_177;
  }

  if (v61 - v50 >= a4)
  {
LABEL_58:
    v101 = v61;
    goto LABEL_59;
  }

  if (__OFADD__(v50, a4))
  {
    goto LABEL_178;
  }

  if (v50 + a4 >= v99)
  {
    v100 = v232[1];
  }

  else
  {
    v100 = v50 + a4;
  }

  if (v100 < v50)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v61 == v100)
  {
    goto LABEL_58;
  }

  v220 = v6;
  v157 = *v232;
  v158 = *(v231 + 72);
  v159 = *v232 + v158 * (v61 - 1);
  v245 = -v158;
  v214 = v50;
  v160 = v50 - v61;
  v246 = v157;
  v222 = v158;
  v161 = v157 + v61 * v158;
  v162 = v243;
  v10 = v244;
  v224 = v100;
  while (2)
  {
    v235 = v61;
    v225 = v161;
    v226 = v160;
    v163 = v160;
    v227 = v159;
    v164 = v159;
LABEL_113:
    v165 = v250;
    sub_1D1C66B60(v161, v250, type metadata accessor for StaticService);
    sub_1D1C66B60(v164, v162, type metadata accessor for StaticService);
    v166 = sub_1D18E4158(v165, v10);
    LOBYTE(v165) = v167;
    v168 = sub_1D18E4158(v162, v10);
    if ((v165 & 1) == 0)
    {
      if (v169)
      {
        goto LABEL_123;
      }

      if (v166 == v168)
      {
        goto LABEL_118;
      }

      v193 = v166 < v168;
      goto LABEL_138;
    }

    if ((v169 & 1) == 0)
    {
      goto LABEL_110;
    }

LABEL_118:
    v248 = v163;
    v170 = *(v249 + 56);
    v171 = *(v242 + 48);
    sub_1D1741C08(v250 + v170, v49, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741C08(v162 + v170, v49 + v171, &qword_1EC642570, &qword_1D1E6C6A0);
    v172 = v241;
    v173 = *v240;
    if ((*v240)(v49, 1, v241) == 1)
    {
      if (v173(v49 + v171, 1, v172) == 1)
      {
        goto LABEL_126;
      }

      sub_1D1741A30(v49 + v171, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_110:
      sub_1D1C72E20(v162, type metadata accessor for StaticService);
      sub_1D1C72E20(v250, type metadata accessor for StaticService);
LABEL_111:
      v61 = v235 + 1;
      v159 = v227 + v222;
      v160 = v226 - 1;
      v161 = v225 + v222;
      v101 = v224;
      if (v235 + 1 != v224)
      {
        continue;
      }

      v6 = v220;
      v50 = v214;
LABEL_59:
      v102 = v219;
      if (v101 < v50)
      {
        goto LABEL_176;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v224 = v101;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v102 = sub_1D177D070(0, *(v102 + 2) + 1, 1, v102);
      }

      v105 = *(v102 + 2);
      v104 = *(v102 + 3);
      v106 = v105 + 1;
      v10 = v244;
      if (v105 >= v104 >> 1)
      {
        v102 = sub_1D177D070((v104 > 1), v105 + 1, 1, v102);
      }

      *(v102 + 2) = v106;
      v107 = &v102[16 * v105];
      v108 = v224;
      *(v107 + 4) = v50;
      *(v107 + 5) = v108;
      v248 = *v216;
      if (!v248)
      {
        goto LABEL_186;
      }

      if (v105)
      {
        while (2)
        {
          v109 = v106 - 1;
          if (v106 >= 4)
          {
            v114 = &v102[16 * v106 + 32];
            v115 = *(v114 - 64);
            v116 = *(v114 - 56);
            v120 = __OFSUB__(v116, v115);
            v117 = v116 - v115;
            if (v120)
            {
              goto LABEL_163;
            }

            v119 = *(v114 - 48);
            v118 = *(v114 - 40);
            v120 = __OFSUB__(v118, v119);
            v112 = v118 - v119;
            v113 = v120;
            if (v120)
            {
              goto LABEL_164;
            }

            v121 = &v102[16 * v106];
            v123 = *v121;
            v122 = *(v121 + 1);
            v120 = __OFSUB__(v122, v123);
            v124 = v122 - v123;
            if (v120)
            {
              goto LABEL_166;
            }

            v120 = __OFADD__(v112, v124);
            v125 = v112 + v124;
            if (v120)
            {
              goto LABEL_169;
            }

            if (v125 >= v117)
            {
              v143 = &v102[16 * v109 + 32];
              v145 = *v143;
              v144 = *(v143 + 1);
              v120 = __OFSUB__(v144, v145);
              v146 = v144 - v145;
              if (v120)
              {
                goto LABEL_173;
              }

              if (v112 < v146)
              {
                v109 = v106 - 2;
              }
            }

            else
            {
LABEL_79:
              if (v113)
              {
                goto LABEL_165;
              }

              v126 = &v102[16 * v106];
              v128 = *v126;
              v127 = *(v126 + 1);
              v129 = __OFSUB__(v127, v128);
              v130 = v127 - v128;
              v131 = v129;
              if (v129)
              {
                goto LABEL_168;
              }

              v132 = &v102[16 * v109 + 32];
              v134 = *v132;
              v133 = *(v132 + 1);
              v120 = __OFSUB__(v133, v134);
              v135 = v133 - v134;
              if (v120)
              {
                goto LABEL_171;
              }

              if (__OFADD__(v130, v135))
              {
                goto LABEL_172;
              }

              if (v130 + v135 < v112)
              {
                goto LABEL_93;
              }

              if (v112 < v135)
              {
                v109 = v106 - 2;
              }
            }
          }

          else
          {
            if (v106 == 3)
            {
              v110 = *(v102 + 4);
              v111 = *(v102 + 5);
              v120 = __OFSUB__(v111, v110);
              v112 = v111 - v110;
              v113 = v120;
              goto LABEL_79;
            }

            v136 = &v102[16 * v106];
            v138 = *v136;
            v137 = *(v136 + 1);
            v120 = __OFSUB__(v137, v138);
            v130 = v137 - v138;
            v131 = v120;
LABEL_93:
            if (v131)
            {
              goto LABEL_167;
            }

            v139 = &v102[16 * v109];
            v141 = *(v139 + 4);
            v140 = *(v139 + 5);
            v120 = __OFSUB__(v140, v141);
            v142 = v140 - v141;
            if (v120)
            {
              goto LABEL_170;
            }

            if (v142 < v130)
            {
              break;
            }
          }

          v147 = v109 - 1;
          if (v109 - 1 >= v106)
          {
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
            goto LABEL_179;
          }

          v148 = *v232;
          if (!*v232)
          {
            goto LABEL_183;
          }

          v10 = v102;
          v149 = *&v102[16 * v147 + 32];
          v150 = *&v102[16 * v109 + 40];
          v151 = *(v231 + 72);
          v152 = v148 + v151 * v149;
          v153 = v148 + v151 * *&v102[16 * v109 + 32];
          v154 = v148 + v151 * v150;
          v155 = v244;

          sub_1D1C6A760(v152, v153, v154, v248, v155);
          if (v6)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v150 < v149)
          {
            goto LABEL_161;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v147 >= *(v10 + 16))
          {
            goto LABEL_162;
          }

          v156 = v10 + 16 * v147;
          *(v156 + 32) = v149;
          *(v156 + 40) = v150;
          v255 = v10;
          sub_1D1E0BDB8(v109);
          v102 = v255;
          v106 = *(v255 + 16);
          v49 = v239;
          if (v106 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v219 = v102;
      v48 = v232[1];
      v50 = v224;
      a4 = v215;
      if (v224 >= v48)
      {
        goto LABEL_148;
      }

      goto LABEL_4;
    }

    break;
  }

  v174 = v10;
  v175 = v234;
  sub_1D1741C08(v49, v234, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v173(v49 + v171, 1, v172) != 1)
  {
    sub_1D1741C08(v49 + v171, v233, &qword_1EC642570, &qword_1D1E6C6A0);
    v176 = *v230;
    v177 = v228;
    (*v230)(v228, v175, v172);
    v178 = v229;
    v176(v229, v233, v172);
    sub_1D1C75134(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if (sub_1D1E6775C())
    {
      v179 = *v236;
      (*v236)(v178, v172);
      v179(v177, v172);
      v162 = v243;
LABEL_126:
      sub_1D1741A30(v49, &qword_1EC642AC0, &qword_1D1E6E810);
      v180 = *(v249 + 20);
      v181 = (v250 + v180);
      v182 = *(v250 + v180);
      v183 = *(v250 + v180 + 8);
      v184 = (v162 + v180);
      v185 = *v184;
      v186 = v184[1];
      v187 = *v181 == *v184 && v183 == v186;
      if (v187 || (sub_1D1E6904C() & 1) != 0)
      {
        v188 = sub_1D1E66A1C();
        v190 = v189;
        v162 = v243;
        v191 = sub_1D1E66A1C();
        v163 = v248;
        if (v188 == v191 && v190 == v192)
        {

          v10 = v244;
          v49 = v239;
          goto LABEL_110;
        }

        v193 = sub_1D1E6904C();

        v10 = v244;
        v49 = v239;
        goto LABEL_138;
      }

      v253 = v182;
      v254 = v183;
      v251 = v185;
      v252 = v186;
      sub_1D17D8EF0();
      v193 = sub_1D1E685FC() == -1;
      v162 = v243;
      v10 = v244;
      v49 = v239;
    }

    else
    {
      v193 = sub_1D1E6696C();
      v194 = v178;
      v195 = v177;
      v196 = *v236;
      (*v236)(v194, v172);
      v196(v195, v172);
      v10 = v244;
      sub_1D1741A30(v49 + v171, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
      v162 = v243;
    }

    v163 = v248;
LABEL_138:
    sub_1D1C72E20(v162, type metadata accessor for StaticService);
    sub_1D1C72E20(v250, type metadata accessor for StaticService);
    if ((v193 & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_139;
  }

  (*v236)(v175, v172);
  sub_1D1741A30(v49 + v171, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
  v10 = v174;
  v162 = v243;
  v163 = v248;
LABEL_123:
  sub_1D1C72E20(v162, type metadata accessor for StaticService);
  sub_1D1C72E20(v250, type metadata accessor for StaticService);
LABEL_139:
  if (v246)
  {
    v197 = v247;
    sub_1D1C72E80(v161, v247, type metadata accessor for StaticService);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1C72E80(v197, v164, type metadata accessor for StaticService);
    v164 += v245;
    v161 += v245;
    if (__CFADD__(v163++, 1))
    {
      goto LABEL_111;
    }

    goto LABEL_113;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_183:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_184:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_185:

  __break(1u);
LABEL_186:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_187:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1D1C72460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v90 = a5;
  v87 = a1;
  v91 = sub_1D1E669FC();
  v8 = *(v91 - 8);
  v9 = MEMORY[0x1EEE9AC00](v91 - 8);
  v76 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v70 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v74 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v70 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v85);
  v17 = &v70 - v16;
  v92 = type metadata accessor for StaticService(0);
  v18 = MEMORY[0x1EEE9AC00](v92);
  v88 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v97 = &v70 - v21;
  result = MEMORY[0x1EEE9AC00](v20);
  v25 = &v70 - v24;
  v72 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v27 = *(v23 + 72);
    v28 = (v8 + 48);
    v73 = (v8 + 32);
    v81 = (v8 + 8);
    v29 = v26 + v27 * (a3 - 1);
    v86 = -v27;
    v30 = v87 - a3;
    v87 = v26;
    v71 = v27;
    v31 = v26 + v27 * a3;
    v83 = v17;
    v84 = &v70 - v24;
    v89 = v28;
LABEL_6:
    v79 = v29;
    v80 = a3;
    v77 = v31;
    v78 = v30;
    while (1)
    {
      sub_1D1C66B60(v31, v25, type metadata accessor for StaticService);
      v32 = v97;
      sub_1D1C66B60(v29, v97, type metadata accessor for StaticService);
      v33 = v90;
      v34 = sub_1D18E4158(v25, v90);
      v36 = v35;
      v37 = sub_1D18E4158(v32, v33);
      if (v36)
      {
        v39 = v89;
        if ((v38 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v39 = v89;
        if (v38)
        {
          goto LABEL_17;
        }

        if (v34 != v37)
        {
          v65 = v34 < v37;
          goto LABEL_31;
        }
      }

      v40 = *(v92 + 56);
      v41 = *(v85 + 48);
      sub_1D1741C08(&v25[v40], v17, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741C08(v97 + v40, &v17[v41], &qword_1EC642570, &qword_1D1E6C6A0);
      v42 = *v39;
      v43 = v91;
      if ((*v39)(v17, 1, v91) == 1)
      {
        if (v42(&v17[v41], 1, v43) != 1)
        {
          sub_1D1741A30(&v17[v41], &qword_1EC642570, &qword_1D1E6C6A0);
          sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
          v25 = v84;
LABEL_4:
          sub_1D1C72E20(v97, type metadata accessor for StaticService);
          result = sub_1D1C72E20(v25, type metadata accessor for StaticService);
LABEL_5:
          a3 = v80 + 1;
          v29 = v79 + v71;
          v30 = v78 - 1;
          v31 = v77 + v71;
          if (v80 + 1 == v72)
          {
            return result;
          }

          goto LABEL_6;
        }

        goto LABEL_20;
      }

      v44 = v82;
      sub_1D1741C08(v17, v82, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v42(&v17[v41], 1, v43) == 1)
      {
        (*v81)(v44, v43);
        sub_1D1741A30(&v17[v41], &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
        v25 = v84;
LABEL_17:
        sub_1D1C72E20(v97, type metadata accessor for StaticService);
        result = sub_1D1C72E20(v25, type metadata accessor for StaticService);
        goto LABEL_32;
      }

      v45 = v74;
      sub_1D1741C08(&v17[v41], v74, &qword_1EC642570, &qword_1D1E6C6A0);
      v46 = *v73;
      v47 = v75;
      (*v73)(v75, v44, v91);
      v48 = v47;
      v49 = v91;
      v50 = v76;
      v51 = v45;
      v52 = v48;
      v46(v76, v51, v91);
      sub_1D1C75134(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      if (sub_1D1E6775C())
      {
        v53 = *v81;
        (*v81)(v50, v49);
        v53(v52, v49);
        v17 = v83;
LABEL_20:
        sub_1D1741A30(v17, &qword_1EC642AC0, &qword_1D1E6E810);
        v54 = *(v92 + 20);
        v25 = v84;
        v55 = *&v84[v54];
        v56 = *&v84[v54 + 8];
        v57 = (v97 + v54);
        v59 = *v57;
        v58 = v57[1];
        v60 = v55 == *v57 && v56 == v58;
        if (v60 || (sub_1D1E6904C() & 1) != 0)
        {
          v61 = sub_1D1E66A1C();
          v63 = v62;
          if (v61 == sub_1D1E66A1C() && v63 == v64)
          {

            v17 = v83;
            goto LABEL_4;
          }

          v65 = sub_1D1E6904C();

          v17 = v83;
        }

        else
        {
          v95 = v55;
          v96 = v56;
          v93 = v59;
          v94 = v58;
          sub_1D17D8EF0();
          v65 = sub_1D1E685FC() == -1;
          v17 = v83;
        }

        goto LABEL_31;
      }

      v65 = sub_1D1E6696C();
      v66 = *v81;
      (*v81)(v50, v91);
      v66(v52, v91);
      v67 = v83;
      sub_1D1741A30(&v83[v41], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v67, &qword_1EC642570, &qword_1D1E6C6A0);
      v17 = v67;
      v25 = v84;
LABEL_31:
      sub_1D1C72E20(v97, type metadata accessor for StaticService);
      result = sub_1D1C72E20(v25, type metadata accessor for StaticService);
      if ((v65 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_32:
      if (!v87)
      {
        __break(1u);
        return result;
      }

      v68 = v88;
      sub_1D1C72E80(v31, v88, type metadata accessor for StaticService);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1C72E80(v68, v29, type metadata accessor for StaticService);
      v29 += v86;
      v31 += v86;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D1C72CFC(uint64_t *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticService(0) - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_1D1E0BFE0(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_1D1C74950(v8, a2, type metadata accessor for StaticService, sub_1D1C70CDC, sub_1D1C72460);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1D1C72E20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1C72E80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1C72EEC()
{
  result = qword_1EC64CBB0;
  if (!qword_1EC64CBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CBB0);
  }

  return result;
}

unint64_t sub_1D1C72F44()
{
  result = qword_1EC64CBB8;
  if (!qword_1EC64CBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CBB8);
  }

  return result;
}

unint64_t sub_1D1C72F9C()
{
  result = qword_1EC64CBC0;
  if (!qword_1EC64CBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CBC0);
  }

  return result;
}

unint64_t sub_1D1C72FF4()
{
  result = qword_1EC64CBC8;
  if (!qword_1EC64CBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CBC8);
  }

  return result;
}

unint64_t sub_1D1C7304C()
{
  result = qword_1EC64CBD0;
  if (!qword_1EC64CBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64CBD8, &qword_1D1EA1ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64CBD0);
  }

  return result;
}

void sub_1D1C730D8(uint64_t a1)
{
  type metadata accessor for StateSnapshot(319);
  if (v1 <= 0x3F)
  {
    sub_1D1A313D8(319);
    if (v2 <= 0x3F)
    {
      sub_1D1C73218(319);
      if (v3 <= 0x3F)
      {
        sub_1D1C73270(319, &qword_1EC64CBF8, sub_1D1785814, &type metadata for ServiceKind);
        if (v4 <= 0x3F)
        {
          sub_1D1C73270(319, &qword_1EE07B6B8, sub_1D1785A60, &type metadata for MatterDeviceType);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}