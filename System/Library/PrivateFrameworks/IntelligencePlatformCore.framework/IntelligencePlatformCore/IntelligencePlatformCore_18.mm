char *sub_1C45A1EE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B8FF0, &qword_1C4F0EAD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

void *sub_1C45A1FE8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1C456902C(&qword_1EC0B8FF8, &qword_1C4F0EAE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C456902C(&qword_1EC0B9000, &qword_1C4F0EAE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C45A2144(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C456902C(&qword_1EC0B8948, &qword_1C4F0DD50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[72 * v8] <= v12)
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C45A225C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_1C4599A2C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

unint64_t sub_1C45A2288()
{
  result = qword_1EDDFCEB0;
  if (!qword_1EDDFCEB0)
  {
    sub_1C4572308(&qword_1EC0B8EB8, &unk_1C4F0E920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCEB0);
  }

  return result;
}

unint64_t sub_1C45A2304()
{
  result = qword_1EDDDBED0;
  if (!qword_1EDDDBED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBED0);
  }

  return result;
}

uint64_t sub_1C45A23B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:
    case 2:
    case 4:
    case 7:
    case 9:
    case 10:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
      goto LABEL_2;
    case 1:

      goto LABEL_2;
    case 12:

LABEL_2:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C45A2458()
{
  result = qword_1EC0B8EF0;
  if (!qword_1EC0B8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B8EF0);
  }

  return result;
}

uint64_t sub_1C45A24AC(uint64_t a1, char a2)
{
  if ((a2 & 0xFE) == 2)
  {
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C45A24C0(uint64_t a1, char a2)
{
  if ((a2 & 0xFE) == 2)
  {
  }

  return result;
}

unint64_t sub_1C45A24D4()
{
  result = qword_1EDDE8118;
  if (!qword_1EDDE8118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8118);
  }

  return result;
}

unint64_t sub_1C45A2528()
{
  result = qword_1EDDE3FE0;
  if (!qword_1EDDE3FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE3FE0);
  }

  return result;
}

void (*sub_1C45A257C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)(uint64_t, uint64_t)@<X8>))(uint64_t, uint64_t)
{
  result = sub_1C4599A58(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void (*sub_1C45A25A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)(uint64_t, uint64_t)@<X8>))(uint64_t, uint64_t)
{
  result = sub_1C4599AAC(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

void (*sub_1C45A25D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)(char *, uint64_t)@<X8>))(char *, uint64_t)
{
  result = sub_1C4599B00(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
  }

  return result;
}

unint64_t sub_1C45A2620()
{
  result = qword_1EC0B90B0;
  if (!qword_1EC0B90B0)
  {
    sub_1C4572308(&qword_1EC0B90A8, &qword_1C4F0EBD0);
    sub_1C45A26A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B90B0);
  }

  return result;
}

unint64_t sub_1C45A26A4()
{
  result = qword_1EC0B90B8;
  if (!qword_1EC0B90B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B90B8);
  }

  return result;
}

unint64_t sub_1C45A2714()
{
  result = qword_1EC0B90E0;
  if (!qword_1EC0B90E0)
  {
    sub_1C4572308(&qword_1EC0B90D8, &qword_1C4F0EBF0);
    sub_1C4470054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B90E0);
  }

  return result;
}

unint64_t sub_1C45A27BC()
{
  result = qword_1EC0B9128;
  if (!qword_1EC0B9128)
  {
    sub_1C4572308(&qword_1EC0B9120, &qword_1C4F3DD40);
    sub_1C444C16C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9128);
  }

  return result;
}

unint64_t sub_1C45A2840()
{
  result = qword_1EDDFCE90;
  if (!qword_1EDDFCE90)
  {
    sub_1C4572308(&qword_1EC0B9178, &qword_1C4F11B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCE90);
  }

  return result;
}

unint64_t sub_1C45A28BC()
{
  result = qword_1EDDF0620;
  if (!qword_1EDDF0620)
  {
    sub_1C4572308(&qword_1EC0B9180, &unk_1C4F0EC80);
    sub_1C45A2940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0620);
  }

  return result;
}

unint64_t sub_1C45A2940()
{
  result = qword_1EDDF05D0;
  if (!qword_1EDDF05D0)
  {
    sub_1C4572308(&qword_1EC0B9188, &unk_1C4F3DD60);
    sub_1C45A29C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF05D0);
  }

  return result;
}

unint64_t sub_1C45A29C4()
{
  result = qword_1EDDF8270;
  if (!qword_1EDDF8270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF8270);
  }

  return result;
}

unint64_t sub_1C45A2A18()
{
  result = qword_1EDDFEA58;
  if (!qword_1EDDFEA58)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEA58);
  }

  return result;
}

unint64_t sub_1C45A2A94()
{
  result = qword_1EDDFA568;
  if (!qword_1EDDFA568)
  {
    sub_1C4572308(&qword_1EC0B9208, &qword_1C4F0ED20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA568);
  }

  return result;
}

unint64_t sub_1C45A2B10()
{
  result = qword_1EDDF0628;
  if (!qword_1EDDF0628)
  {
    sub_1C4572308(&qword_1EC0B9228, &unk_1C4F3DD70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0628);
  }

  return result;
}

unint64_t sub_1C45A2BB0()
{
  result = qword_1EDDF06C0;
  if (!qword_1EDDF06C0)
  {
    sub_1C4572308(&qword_1EC0B9230, &unk_1C4F0ED50);
    sub_1C44C8A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF06C0);
  }

  return result;
}

uint64_t sub_1C45A2C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1C4599B3C(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

unint64_t sub_1C45A2C7C()
{
  result = qword_1EDDF0690;
  if (!qword_1EDDF0690)
  {
    sub_1C4572308(&qword_1EC0B9238, &qword_1C4F3DD90);
    sub_1C45A2D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0690);
  }

  return result;
}

unint64_t sub_1C45A2D00()
{
  result = qword_1EDDF7B68;
  if (!qword_1EDDF7B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF7B68);
  }

  return result;
}

unint64_t sub_1C45A2D54()
{
  result = qword_1EDDDBB00;
  if (!qword_1EDDDBB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDDBB00);
  }

  return result;
}

unint64_t sub_1C45A2DB4()
{
  result = qword_1EC0B9418;
  if (!qword_1EC0B9418)
  {
    sub_1C4572308(&qword_1EC0B9410, &qword_1C4F3DDA0);
    sub_1C45A2E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9418);
  }

  return result;
}

unint64_t sub_1C45A2E38()
{
  result = qword_1EC0B9420;
  if (!qword_1EC0B9420)
  {
    sub_1C4572308(&qword_1EC0B9428, &unk_1C4F0EFB0);
    sub_1C45A2EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9420);
  }

  return result;
}

unint64_t sub_1C45A2EC4()
{
  result = qword_1EDDDBD80;
  if (!qword_1EDDDBD80)
  {
    sub_1C4572308(&qword_1EC0C6370, &qword_1C4F0E1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBD80);
  }

  return result;
}

unint64_t sub_1C45A2F48()
{
  result = qword_1EDDF9D90[0];
  if (!qword_1EDDF9D90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF9D90);
  }

  return result;
}

unint64_t sub_1C45A2FC0()
{
  result = qword_1EC0B9448;
  if (!qword_1EC0B9448)
  {
    sub_1C4572308(&qword_1EC0B9440, &unk_1C4F0EFD0);
    sub_1C450220C(&qword_1EDDEFFD8, MEMORY[0x1E69A91A8], MEMORY[0x1E69A91B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9448);
  }

  return result;
}

unint64_t sub_1C45A3074()
{
  result = qword_1EDDDBC08;
  if (!qword_1EDDDBC08)
  {
    sub_1C4572308(&qword_1EC0B9478, &qword_1C4F0F010);
    sub_1C45A2A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDBC08);
  }

  return result;
}

unint64_t sub_1C45A3114()
{
  result = qword_1EC0B9488;
  if (!qword_1EC0B9488)
  {
    sub_1C4572308(&qword_1EC0B9480, &qword_1C4F0F018);
    sub_1C45A3198();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9488);
  }

  return result;
}

unint64_t sub_1C45A3198()
{
  result = qword_1EC0B9490;
  if (!qword_1EC0B9490)
  {
    sub_1C4572308(&qword_1EC0B9498, &qword_1C4F0F020);
    sub_1C45A2A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9490);
  }

  return result;
}

uint64_t AssetRegistryOverrideStoreCleanupTask.__allocating_init(config:)(uint64_t a1)
{
  v3 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  type metadata accessor for AssetRegistryFullServer();
  sub_1C44098F0(a1, v6);
  sub_1C4EF9348();
  swift_allocObject();
  v7 = sub_1C4EF9338();
  v8 = sub_1C4473C20(v6, v7);
  result = sub_1C4467948(a1);
  if (!v1)
  {
    type metadata accessor for AssetRegistryOverrideStoreCleanupTask();
    result = swift_allocObject();
    *(result + 16) = v8;
  }

  return result;
}

void sub_1C45A3350()
{
  v94 = sub_1C4EFF9E8();
  sub_1C43FCDF8();
  v102 = v2;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v93 = v5 - v4;
  v96 = sub_1C4EFF918();
  sub_1C43FCDF8();
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = sub_1C456902C(&qword_1EC0B8E90, &unk_1C4F0F0A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v73 - v12;
  v14 = sub_1C4EFCDD8();
  sub_1C43FCDF8();
  v99 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v73 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v73 - v23;
  v25 = *(v0 + 16);

  AssetRegistryOverrideStore.allOverridesIds()();
  if (v1)
  {
LABEL_2:

    return;
  }

  v89 = v26;
  v90 = v13;
  v100 = v25;
  v86 = v18;
  v87 = v10;
  v82 = v21;
  v95 = v24;
  v98 = v14;

  sub_1C4F01968();
  v28 = 0;
  v29 = v89;
  v30 = v89 + 64;
  v31 = 1 << *(v89 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(v89 + 64);
  v34 = (v31 + 63) >> 6;
  v84 = (v99 + 32);
  v83 = v101 + 8;
  v78 = v102 + 88;
  v77 = *MEMORY[0x1E69A9A80];
  v76 = *MEMORY[0x1E69A9A78];
  v79 = v102 + 8;
  v85 = (v99 + 8);
  *&v27 = 136315394;
  v75 = v27;
  v35 = v98;
  v36 = v95;
  v37 = v90;
  v74 = v89 + 64;
  v73 = v34;
  if (v33)
  {
LABEL_7:
    v38 = v28;
LABEL_11:
    v81 = (v33 - 1) & v33;
    v39 = __clz(__rbit64(v33)) | (v38 << 6);
    v40 = (*(v29 + 48) + 16 * v39);
    v41 = *(*(v29 + 56) + 8 * v39);
    v42 = v40[1];
    v101 = *v40;
    v102 = v42;
    v43 = v41 + 56;
    v44 = 1 << *(v41 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & *(v41 + 56);
    v47 = (v44 + 63) >> 6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v97 = v41;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v48 = 0;
    v91 = v47;
    v92 = v41 + 56;
    while (1)
    {
      while (1)
      {
        if (!v46)
        {
          while (1)
          {
            v49 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              __break(1u);
              goto LABEL_38;
            }

            if (v49 >= v47)
            {
              break;
            }

            v46 = *(v43 + 8 * v49);
            ++v48;
            if (v46)
            {
              goto LABEL_20;
            }
          }

          v28 = v38;
          v29 = v89;
          v30 = v74;
          v34 = v73;
          v33 = v81;
          if (!v81)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        v49 = v48;
LABEL_20:
        v50 = (*(v97 + 48) + ((v49 << 10) | (16 * __clz(__rbit64(v46)))));
        v51 = *v50;
        v52 = v50[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        v99 = v51;
        AssetRegistryOverrideStore.fetchAssetEntry(for:in:)(v51, v52, v101);
        v46 &= v46 - 1;

        if (sub_1C44157D4(v37, 1, v35) == 1)
        {
          break;
        }

        v88 = *v84;
        (v88)(v36, v37, v35);
        sub_1C4EFF908();
        v63 = v86;
        sub_1C4596464();
        v80 = 0;
        v64 = sub_1C43FFC9C();
        v65(v64);
        v37 = v82;
        (v88)(v82, v63, v98);
        v66 = sub_1C4EFCDA8();
        v36 = v95;
        if (sub_1C4EFCDA8() >= v66)
        {

          v35 = v98;
          v68 = v80;
        }

        else
        {

          v67 = v80;
          sub_1C4599140(v99, v52, v101);
          v68 = v67;
          if (v67)
          {
LABEL_38:

            v71 = *v85;
            v72 = v98;
            (*v85)(v37, v98);
            v71(v36, v72);
            return;
          }

          v35 = v98;
        }

        sub_1C4F01968();
        if (v68)
        {

          v70 = *v85;
          (*v85)(v37, v35);
          v70(v36, v35);
          return;
        }

        v69 = *v85;
        (*v85)(v37, v35);
        v69(v36, v35);
        v48 = v49;
        v37 = v90;
LABEL_33:
        v47 = v91;
        v43 = v92;
      }

      sub_1C4597278(v37);
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v53 = sub_1C4F00978();
      sub_1C442B738(v53, qword_1EDDFECB8);
      v54 = v102;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v55 = sub_1C4F00968();
      v56 = sub_1C4F01CD8();

      v88 = v55;
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v103 = v80;
        *v57 = v75;
        v58 = sub_1C441D828(v99, v52, &v103);

        *(v57 + 4) = v58;
        v37 = v90;
        *(v57 + 12) = 2080;
        *(v57 + 14) = sub_1C441D828(v101, v54, &v103);
        v59 = v56;
        v60 = v88;
        v61 = v80;
        swift_arrayDestroy();
        MEMORY[0x1C6942830](v61, -1, -1);
        v62 = v57;
        v35 = v98;
        MEMORY[0x1C6942830](v62, -1, -1);

        v48 = v49;
        v36 = v95;
        goto LABEL_33;
      }

      v48 = v49;
      v36 = v95;
      v47 = v91;
      v43 = v92;
      v35 = v98;
    }
  }

LABEL_8:
  while (1)
  {
    v38 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v38 >= v34)
    {
      goto LABEL_2;
    }

    v33 = *(v30 + 8 * v38);
    ++v28;
    if (v33)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t AssetRegistryOverrideStoreCleanupTask.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C45A3E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C456902C(&qword_1EC0B8E80, &unk_1C4F0F2F0);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C440A514();
  sub_1C4EFCDD8();
  sub_1C4EFF9E8();
  sub_1C4411760(&qword_1EDDEFFD8, v9, v10, MEMORY[0x1E69A91B8]);
  sub_1C4411760(&unk_1EDDEFFE0, v11, v12, MEMORY[0x1E69A91B0]);
  sub_1C45A4C04(&qword_1EDDEFF58, 255, MEMORY[0x1E69A9A90], MEMORY[0x1E69A9A88]);
  sub_1C4EFF368();
  sub_1C4EFF358();
  return (*(v7 + 8))(v4, v5);
}

uint64_t sub_1C45A4048()
{

  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore35AssetRegistryRemoteBackendInProcess_remoteOptions;
  sub_1C4EFF948();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1C45A40B8()
{
  sub_1C45A4048();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45A4134@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69A9B98];
  sub_1C4EFFD78();
  sub_1C43FBCE0();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t *sub_1C45A41A0(uint64_t a1)
{
  v5 = sub_1C4EFF948();
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = type metadata accessor for Configuration(0);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v12 = sub_1C43FFCB0();
  type metadata accessor for AssetRegistryRemoteBackendInProcess(v12);
  sub_1C44098F0(a1, v3);
  sub_1C4EFF6A8();
  sub_1C4EFF698();
  v13 = sub_1C4473AD0(v3, v9);
  if (v2)
  {
    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v13;
    sub_1C4467948(a1);
    *(v1 + 16) = v14;
  }

  return v1;
}

uint64_t sub_1C45A4318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v28 = a6;
  v12 = sub_1C456902C(&qword_1EC0B9630, &unk_1C4F0F250);
  sub_1C43FCDF8();
  v27 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C440A514();
  v16 = *(v15 + 16);

  v17 = sub_1C45962F0();
  if (v6)
  {
  }

  v25[1] = v25;
  MEMORY[0x1EEE9AC00](v17);
  v25[0] = v24;
  v24[2] = v19;
  v24[3] = a3;
  v24[4] = a4;
  v24[5] = v16;
  v24[6] = a1;
  v24[7] = a2;
  v24[8] = v26;
  sub_1C4EFCE08();
  sub_1C4EFFB38();
  sub_1C4411760(&unk_1EC0B9640, v20, v21, MEMORY[0x1E69A91D8]);
  sub_1C4411760(&qword_1EC0B94F0, v22, v23, MEMORY[0x1E69A91D0]);
  sub_1C45A4C04(&qword_1EC0B9650, 255, MEMORY[0x1E69A9AF8], MEMORY[0x1E69A9AF0]);
  sub_1C4EFF368();

  sub_1C4EFF358();
  return (*(v27 + 8))(v7, v12);
}

uint64_t sub_1C45A4580()
{

  return swift_deallocClassInstance();
}

uint64_t static AssetRegistry.CreateBackend.withRemoteBackendInProcess(config:)(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C44098F0(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C4409954(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1C44098F0(a1, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  sub_1C4409954(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  type metadata accessor for AssetRegistryRemoteBackendInProcess(0);
  type metadata accessor for AssetRegistryRemoteWritableBackendInProcess();
  sub_1C45A4C04(&qword_1EDDFD468, 255, type metadata accessor for AssetRegistryRemoteBackendInProcess, &unk_1C4F0F21C);
  sub_1C45A4C04(&qword_1EDDDC220, v8, type metadata accessor for AssetRegistryRemoteWritableBackendInProcess, &unk_1C4F0F1EC);
  return sub_1C4EFDEF8();
}

uint64_t sub_1C45A47E8@<X0>(uint64_t a2@<X1>, uint64_t *x8_0@<X8>)
{
  v6 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v6);
  return sub_1C45A4C4C(a2, v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80)), x8_0);
}

uint64_t *sub_1C45A4868@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Configuration(0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C44098F0(a1, v8 - v7);
  type metadata accessor for AssetRegistryRemoteWritableBackendInProcess();
  v10 = swift_allocObject();
  result = sub_1C45A41A0(v9);
  if (!v2)
  {
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1C45A4908()
{
  v1 = *(type metadata accessor for Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1C4EF98F8();
  sub_1C43FBCE0();
  (*(v5 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t *sub_1C45A49CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v3);
  return sub_1C45A4868(v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), a1);
}

uint64_t sub_1C45A4A60(uint64_t a1)
{
  result = sub_1C4EFF948();
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

uint64_t sub_1C45A4C04(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C45A4C4C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v8 = sub_1C4EFF948();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = type metadata accessor for Configuration(0);
  v16 = sub_1C43FBD18(v15);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v17 = sub_1C43FFCB0();
  type metadata accessor for AssetRegistryRemoteBackendInProcess(v17);
  sub_1C44098F0(a2, v4);
  (*(v10 + 16))(v14, a1, v8);
  result = sub_1C4473AD0(v4, v14);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C45A4D80@<X0>(uint64_t *a1@<X8>)
{
  sub_1C456902C(&qword_1EC0B94F8, &unk_1C4F0F260);
  result = sub_1C4F00048();
  *a1 = result;
  return result;
}

uint64_t sub_1C45A4DEC()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CE78);
  v1 = sub_1C442B738(v0, qword_1EDE2CE78);
  v2 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C45A4E68(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DCD8);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_1C43FCED0();
    *v8 = 0;
    _os_log_impl(&dword_1C43F8000, v6, v7, "AssetRegistryXPC: starting...", v8, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDE7320 != -1)
  {
    sub_1C441F394(&qword_1EDDE7320);
  }

  v9 = sub_1C442B738(v2, qword_1EDE2CE78);
  sub_1C44098F0(a1, v4);
  v10 = type metadata accessor for Configuration(0);
  sub_1C440BAA8(v4, 0, 1, v10);
  swift_beginAccess();
  sub_1C45A6EE0(v4, v9);
  swift_endAccess();
  sub_1C45A6F50();
  v11 = sub_1C4F01138();
  v13 = sub_1C49AA56C(v11, v12);
  v14 = qword_1EDE2CE68;
  qword_1EDE2CE68 = v13;
  v15 = v13;

  if (v15)
  {
    qword_1EDE2CE70 = [objc_allocWithZone(type metadata accessor for AssetRegistryXPC.Delegate()) init];
    v16 = qword_1EDE2CE70;
    swift_unknownObjectRelease();
    [v15 setDelegate:v16];

    [v15 resume];
  }

  else
  {
    v15 = sub_1C4F00968();
    v17 = sub_1C4F01CE8();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = sub_1C43FCED0();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v17, "Failed to create AssetRegistryXPC service", v18, 2u);
      sub_1C43FBE2C();
    }
  }
}

id sub_1C45A5110(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_jsonEncoder;
  sub_1C4EF93D8();
  swift_allocObject();
  *&v2[v6] = sub_1C4EF93C8();
  *&v2[OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_assetRegistryServer] = a1;
  *&v2[OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_jsonDecoder] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1C45A51B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a3;
  v32 = a4;
  v29 = a1;
  v30 = a2;
  v34 = sub_1C456902C(&qword_1EC0B8E80, &unk_1C4F0F2F0);
  sub_1C43FCDF8();
  v33 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4411778(v10, v28[0]);
  v11 = sub_1C4EFF948();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_autoreleasePoolPush();
  v18 = *(v6 + OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_jsonDecoder);
  sub_1C45A70FC(&unk_1EC0B9670, MEMORY[0x1E69A9A30], MEMORY[0x1E69A9A38]);
  sub_1C4EF9328();
  if (v7)
  {
    objc_autoreleasePoolPop(v17);
  }

  else
  {
    v28[1] = v13;
    objc_autoreleasePoolPop(v17);
    v28[0] = v28;
    MEMORY[0x1EEE9AC00](v19);
    v28[-6] = v20;
    v21 = v30;
    v28[-5] = v29;
    v28[-4] = v21;
    v22 = v32;
    v28[-3] = v31;
    v28[-2] = v22;
    v28[-1] = v16;
    v32 = sub_1C4EFCDD8();
    sub_1C4EFF9E8();
    v23 = MEMORY[0x1E69A91A8];
    sub_1C45A70FC(&qword_1EDDEFFD8, MEMORY[0x1E69A91A8], MEMORY[0x1E69A91B8]);
    sub_1C45A70FC(&unk_1EDDEFFE0, v23, MEMORY[0x1E69A91B0]);
    sub_1C45A70FC(&qword_1EDDEFF58, MEMORY[0x1E69A9A90], MEMORY[0x1E69A9A88]);
    sub_1C4EFF368();
    sub_1C45A7048();
    v18 = sub_1C4EFFF28();
    v25 = sub_1C44065C8();
    v26(v25);
    sub_1C4412C24();
    v27(v16, v11);
  }

  return v18;
}

id AssetRegistryXPC.BaseServer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1C45A56A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = objc_allocWithZone(type metadata accessor for AssetRegistryXPC.BaseServer());

  *&v3[OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC6Server_baseServer] = sub_1C45A5110(a1, a3);
  *&v3[OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC6Server_entitlementInfo] = a2;
  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

void sub_1C45A575C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v9[2] = a8;
  AssetRegistryXPC.BaseServer.assetEntryResultData(for:in:remoteOptionsData:completion:)(a1, a2, a3, a4, a5, a6, sub_1C45A6ED8, v9);
  _Block_release(a8);
}

uint64_t sub_1C45A58E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = v6;
  v35 = a4;
  v36 = a2;
  v33 = a3;
  v34 = a1;
  v38 = sub_1C456902C(&qword_1EC0B9630, &unk_1C4F0F250);
  sub_1C43FCDF8();
  v37 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C4411778(v13, v32[0]);
  v14 = sub_1C4EFCE18();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v8 + OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC6Server_baseServer);
  sub_1C44344B8(a5, a6);
  sub_1C45A70FC(&qword_1EC0B9638, MEMORY[0x1E69A91F8], MEMORY[0x1E69A91F0]);

  v21 = v14;
  v22 = sub_1C4EFFF38();
  if (!v7)
  {
    v32[0] = v32;
    v32[1] = v16;
    v23 = *(v20 + OBJC_IVAR____TtCC24IntelligencePlatformCore16AssetRegistryXPC10BaseServer_assetRegistryServer);
    MEMORY[0x1EEE9AC00](v22);
    v32[-8] = v24;
    v25 = v34;
    v26 = v35;
    v32[-7] = v33;
    v32[-6] = v26;
    v32[-5] = v23;
    v32[-4] = v25;
    v32[-3] = v36;
    v32[-2] = v19;
    v36 = sub_1C4EFCE08();
    v35 = sub_1C4EFFB38();
    v27 = MEMORY[0x1E69A91C8];
    sub_1C45A70FC(&unk_1EC0B9640, MEMORY[0x1E69A91C8], MEMORY[0x1E69A91D8]);
    sub_1C45A70FC(&qword_1EC0B94F0, v27, MEMORY[0x1E69A91D0]);
    sub_1C45A70FC(&qword_1EC0B9650, MEMORY[0x1E69A9AF8], MEMORY[0x1E69A9AF0]);

    sub_1C4EFF368();

    sub_1C45A6F94();

    v21 = sub_1C4EFFF28();
    v29 = sub_1C44065C8();
    v30(v29);

    sub_1C4412C24();
    v31(v19, v14);
  }

  return v21;
}

void sub_1C45A5CB0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CF8();

  if (os_log_type_enabled(v17, v18))
  {
    v26 = a8;
    v19 = swift_slowAlloc();
    v28[0] = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_1C441D828(a1, a2, v28);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1C441D828(a3, a4, v28);
    _os_log_impl(&dword_1C43F8000, v17, v18, a9, v19, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    a8 = v26;
    sub_1C43FBE2C();
  }

  v20 = a10(a1, a2, a3, a4, a5, a6);
  v22 = v21;
  sub_1C44344B8(v20, v21);
  v23 = sub_1C4EF9A38();
  (*(a8 + 16))(a8, v23, 0);

  sub_1C4434000(v20, v22);
  sub_1C4434000(v20, v22);
  sub_1C440A528();

  _Block_release(v24);
}

uint64_t sub_1C45A6078(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void, void, void), uint64_t a8, const char *a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v15 = sub_1C4F00978();
  sub_1C442B738(v15, qword_1EDE2DCD8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();

  if (os_log_type_enabled(v16, v17))
  {
    v26 = a7;
    v18 = swift_slowAlloc();
    v29[0] = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_1C441D828(a1, a2, v29);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1C441D828(a3, a4, v29);
    _os_log_impl(&dword_1C43F8000, v16, v17, a9, v18, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    a7 = v26;
    sub_1C43FBE2C();
  }

  v19 = a10(a1, a2, a3, a4, a5, a6);
  v21 = v20;
  sub_1C44344B8(v19, v20);
  a7(v19, v21, 0);
  sub_1C4434000(v19, v21);
  sub_1C440A528();

  return sub_1C4434000(v22, v23);
}

uint64_t sub_1C45A641C(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *aBlock, const char *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9)
{
  v11 = _Block_copy(aBlock);
  v12 = sub_1C4F01138();
  v14 = v13;
  v15 = sub_1C4F01138();
  v17 = v16;
  v18 = a5;
  v19 = a1;
  v20 = sub_1C4EF9A68();
  v22 = v21;

  _Block_copy(v11);
  sub_1C45A5CB0(v12, v14, v15, v17, v20, v22, v19, v11, a7, a8);
  _Block_release(v11);
  sub_1C4434000(v20, v22);
}

uint64_t sub_1C45A65C0(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v41 - v7;
  if (qword_1EDDE7320 != -1)
  {
    sub_1C441F394(&qword_1EDDE7320);
  }

  v9 = sub_1C442B738(v3, qword_1EDE2CE78);
  swift_beginAccess();
  sub_1C4466EEC(v9, v8);
  v10 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v8, 1, v10);
  if (result != 1)
  {
    v12 = &v8[*(v10 + 20)];
    v13 = *v12;
    v14 = *(v12 + 1);
    sub_1C4467948(v8);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v13) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v14) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v21 = sub_1C4F00978();
      sub_1C442B738(v21, qword_1EDE2DCD8);
      v22 = sub_1C4F00968();
      v23 = sub_1C4F01CF8();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = sub_1C43FCED0();
        *v24 = 0;
        _os_log_impl(&dword_1C43F8000, v22, v23, "AssetRegistryXPC: service is in no-op mode.", v24, 2u);
        sub_1C43FBE2C();
      }
    }

    else
    {
      v16 = sub_1C4F01138();
      v18 = sub_1C446874C(v16, v17);

      if (v18)
      {
        v19 = sub_1C4F01108();
        v20 = [a2 valueForEntitlement_];

        if (v20)
        {
          sub_1C4F02078();
          swift_unknownObjectRelease();
        }

        else
        {
          v46 = 0u;
          v47 = 0u;
        }

        aBlock = v46;
        v43 = v47;
        if (*(&v47 + 1))
        {
          sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
          if (swift_dynamicCast())
          {
            v25 = v41[1];
            if (qword_1EDDFA678 != -1)
            {
              sub_1C43FFCC0(&qword_1EDDFA678);
            }

            v26 = sub_1C4F00978();
            sub_1C442B738(v26, qword_1EDE2DCD8);
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v27 = sub_1C4F00968();
            v28 = sub_1C4F01CF8();

            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              v41[0] = swift_slowAlloc();
              *&aBlock = v41[0];
              *v29 = 136315138;
              v30 = MEMORY[0x1C6940380](v25, MEMORY[0x1E69E6158]);
              v32 = sub_1C441D828(v30, v31, &aBlock);

              *(v29 + 4) = v32;
              _os_log_impl(&dword_1C43F8000, v27, v28, "ViewXPC.Delegate: overrideAllowedDomainIds: %s", v29, 0xCu);
              sub_1C440962C(v41[0]);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            v33 = sub_1C4499940();
LABEL_28:
            sub_1C4EF9348();
            swift_allocObject();
            v34 = sub_1C4EF9338();
            sub_1C4466EEC(v9, v5);
            result = sub_1C44157D4(v5, 1, v10);
            if (result != 1)
            {
              type metadata accessor for AssetRegistryFullServer();

              sub_1C4473C20(v5, v34);
              v35 = [objc_opt_self() interfaceWithProtocol_];
              sub_1C43FD04C(v35, sel_setExportedInterface_);

              v36 = objc_allocWithZone(type metadata accessor for AssetRegistryXPC.Server());

              v38 = sub_1C45A56A0(v37, v33, v34);
              sub_1C43FD04C(v38, sel_setExportedObject_);

              v44 = sub_1C45A6C18;
              v45 = 0;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              *&v43 = sub_1C4833DD0;
              *(&v43 + 1) = &unk_1F43E12F8;
              v39 = _Block_copy(&aBlock);
              sub_1C43FD04C(v39, sel_setInterruptionHandler_);
              _Block_release(v39);
              v44 = sub_1C45A6C38;
              v45 = 0;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              *&v43 = sub_1C4833DD0;
              *(&v43 + 1) = &unk_1F43E1320;
              v40 = _Block_copy(&aBlock);
              sub_1C43FD04C(v40, sel_setInvalidationHandler_);
              _Block_release(v40);
              [a2 resume];

              return 1;
            }

            goto LABEL_32;
          }
        }

        else
        {
          sub_1C4448244(&aBlock);
        }

        v33 = MEMORY[0x1E69E7CD0];
        goto LABEL_28;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_1C45A6C58(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v4 = sub_1C4F00978();
  sub_1C442B738(v4, qword_1EDE2DCD8);
  oslog = sub_1C4F00968();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = sub_1C43FCED0();
    *v6 = 0;
    _os_log_impl(&dword_1C43F8000, oslog, v5, a2, v6, 2u);
    sub_1C43FBE2C();
  }
}

id _s24IntelligencePlatformCore16AssetRegistryXPCC10BaseServerCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C45A6EE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C45A6F50()
{
  result = qword_1EDDFA520;
  if (!qword_1EDDFA520)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDFA520);
  }

  return result;
}

unint64_t sub_1C45A6F94()
{
  result = qword_1EC0B9658;
  if (!qword_1EC0B9658)
  {
    sub_1C4572308(&qword_1EC0B9630, &unk_1C4F0F250);
    sub_1C45A70FC(&unk_1EC0B9660, MEMORY[0x1E69A91C8], MEMORY[0x1E69A91C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9658);
  }

  return result;
}

unint64_t sub_1C45A7048()
{
  result = qword_1EC0B9680;
  if (!qword_1EC0B9680)
  {
    sub_1C4572308(&qword_1EC0B8E80, &unk_1C4F0F2F0);
    sub_1C45A70FC(qword_1EC0B9688, MEMORY[0x1E69A91A8], MEMORY[0x1E69A91A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9680);
  }

  return result;
}

uint64_t sub_1C45A70FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C45A7164()
{
  sub_1C43FBCD4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *(v2 + 32);
  v1[6] = *(v2 + 16);
  v1[7] = swift_getAssociatedTypeWitness();
  v4 = sub_1C4F01F48();
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C45A7254()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 56);
  *(v0 + 128) = v2;
  if (*(v1 + v2) == 1)
  {
    sub_1C440F228();
    swift_getAssociatedTypeWitness();
    sub_1C4402120();
    swift_getAssociatedConformanceWitness();
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 88) = v3;
    *v3 = v4;
    v3[1] = sub_1C45A73E4;
  }

  else
  {
    sub_1C43FD064();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1C440A544(AssociatedTypeWitness, v6, v7, v8, MEMORY[0x1E69E8728]);
    swift_task_alloc();
    sub_1C43FBE70();
    *(v0 + 96) = v9;
    *v9 = v10;
    v9[1] = sub_1C45A74F0;
  }

  sub_1C44258D4();

  return MEMORY[0x1EEE6D8C8](v11);
}

uint64_t sub_1C45A73E4()
{
  sub_1C43FCF70();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C45A74F0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C45A75EC()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 80);
  v2 = sub_1C44157D4(v1, 1, *(v0 + 56));
  v3 = *(v0 + 128);
  if (v2 != 1)
  {
    v8 = *(v0 + 64);
    v9 = *(v0 + 72);
    v10 = *(v0 + 16);
    *(*(v0 + 32) + v3) = 0;
    (*(v9 + 32))(v10, v1, v8);

    sub_1C43FBDA0();
    sub_1C44258D4();

    __asm { BRAA            X1, X16 }
  }

  *(*(v0 + 32) + v3) = 1;
  sub_1C440F228();
  swift_getAssociatedTypeWitness();
  sub_1C4402120();
  swift_getAssociatedConformanceWitness();
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 112) = v4;
  *v4 = v5;
  v4[1] = sub_1C45A776C;
  sub_1C44258D4();

  return MEMORY[0x1EEE6D8C8](v6);
}

uint64_t sub_1C45A776C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 120) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C45A7868()
{
  sub_1C43FBCD4();
  (*(v0[9] + 8))(v0[10], v0[8]);

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C45A78DC()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C45A7938()
{
  sub_1C43FBCD4();
  (*(v0[9] + 8))(v0[10], v0[8]);

  sub_1C43FBDA0();

  return v1();
}

uint64_t sub_1C45A79AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  swift_getAssociatedTypeWitness();
  sub_1C43FCE50();
  (*(v16 + 32))(a8, a1);
  v21[0] = a4;
  v21[1] = a5;
  v21[2] = a6;
  v21[3] = a7;
  v17 = type metadata accessor for AppendedAsyncSequence.AppendedAsyncIterator(0, v21);
  v18 = *(v17 + 52);
  swift_getAssociatedTypeWitness();
  sub_1C43FCE50();
  result = (*(v19 + 32))(a8 + v18, a2);
  *(a8 + *(v17 + 56)) = a3;
  return result;
}

uint64_t sub_1C45A7AC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C45A7164();
}

uint64_t sub_1C45A7B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1C45AB45C;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1C45A7C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v34 = a2;
  v5 = *(a1 + 24);
  sub_1C43FCE64();
  v33 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v32 = *(v11 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FBD18(AssociatedTypeWitness);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = *(a1 + 16);
  sub_1C43FCE64();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = *(a1 + 32);
  v24 = swift_getAssociatedTypeWitness();
  sub_1C43FBD18(v24);
  sub_1C43FBC68();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v31 - v27;
  (*(v18 + 16))(v22, v3, v16, v26);
  sub_1C4F019A8();
  (*(v33 + 16))(v10, v3 + *(a1 + 52), v5);
  v29 = v32;
  sub_1C4F019A8();
  return sub_1C45A79AC(v28, v15, 0, v16, v5, v23, v29, v34);
}

uint64_t AnyAsyncSequence.AsyncIterator.next()()
{
  sub_1C43FCF70();
  v3 = v2;
  v7 = (*v0 + **v0);
  swift_task_alloc();
  sub_1C43FBE70();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1C442E8C4;

  return v7(v3);
}

uint64_t sub_1C45A7F8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return AnyAsyncSequence.AsyncIterator.next()();
}

uint64_t sub_1C45A8024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1C45A80F8;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1C45A80F8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C45A823C()
{
  AnyAsyncSequence.makeAsyncIterator()();
}

uint64_t sub_1C45A8268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C45A82BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C45A8310(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C45A8380(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return sub_1C44157D4(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return sub_1C44157D4(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1C45A84BC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C45A86D8(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C45A8758(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 84);
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_20:

    return sub_1C44157D4(a1, v6, AssociatedTypeWitness);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v6)
      {
        goto LABEL_20;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return v6 + (v7 | v11) + 1;
}

void sub_1C45A88E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  v10 = 8 * v9;
  if (a3 <= v8)
  {
    v11 = 0;
  }

  else if (v9 <= 3)
  {
    v14 = ((a3 - v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
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
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (v8 >= a2)
  {
    switch(v11)
    {
      case 1:
        a1[v9] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v9] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(a1, a2, v8, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    v12 = ~v8 + a2;
    if (v9 < 4)
    {
      v13 = (v12 >> v10) + 1;
      if (v9)
      {
        v16 = v12 & ~(-1 << v10);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v9 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v12;
      v13 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v9] = v13;
        break;
      case 2:
        *&a1[v9] = v13;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v9] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C45A8B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1C43FCE64();
  v8 = v7;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v8 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v12);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  result = (*(v8 + 32))(v14 + v13, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *a3 = sub_1C45A95AC;
  a3[1] = v14;
  return result;
}

void *sub_1C45A8C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v11 = swift_allocBox();
  (*(v8 + 16))(v10, a1, a2);
  sub_1C4F019A8();
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = v11;
  *a4 = &unk_1C4F0F530;
  a4[1] = result;
  return result;
}

uint64_t sub_1C45A8D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a1;
  v4[8] = swift_getAssociatedTypeWitness();
  v4[9] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C45A8E24, 0, 0);
}

uint64_t sub_1C45A8E24()
{
  sub_1C43FCF70();
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 80) = v1;
  *v1 = v2;
  v1[1] = sub_1C45A8F00;
  v3 = *(v0 + 40);

  return MEMORY[0x1EEE6D8C8](v3);
}

uint64_t sub_1C45A8F00()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_endAccess();
    sub_1C43FBDA0();

    return v10();
  }
}

uint64_t sub_1C45A9020()
{
  sub_1C43FBCD4();
  swift_endAccess();
  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C45A907C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1C43FEAF8();
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1C45A90AC()
{
  sub_1C43FEAEC();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C4F01FA8();
  sub_1C43FBDA0();
  sub_1C44258D4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C45A9168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  v3 = sub_1C4402120();

  return v4(v3);
}

uint64_t sub_1C45A91EC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C445229C;

  return sub_1C45A907C(a1, a2);
}

uint64_t sub_1C45A9294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1C45A9360;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v12);
}

uint64_t sub_1C45A9360()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C45A9464(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v4 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FBD18(AssociatedTypeWitness);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  sub_1C440F228();
  v9();
  sub_1C4F01478();
  return sub_1C45A9168(v8, v1, v4);
}

uint64_t sub_1C45A95E8()
{
  sub_1C43FCF70();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  sub_1C43FBE70();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1C442E8C4;

  return sub_1C45A8D88(v3, v6, v4, v5);
}

uint64_t sub_1C45A9694(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1C45A970C(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1C44157D4(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1C44157D4(result, v5, v4);
}

void sub_1C45A9810(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C45A99C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C45A9A54(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_1C44157D4(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1C45A9C1C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
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
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          sub_1C440BAA8(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C45A9EF8()
{
  sub_1C43FBCD4();
  v1[4] = v2;
  v1[5] = v0;
  v1[6] = *(v2 + 24);
  v1[7] = *(v2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[8] = AssociatedTypeWitness;
  v4 = sub_1C4F01F48();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = *(AssociatedTypeWitness - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C45AA040()
{
  sub_1C43FEAEC();
  v1 = v0[5];
  v2 = sub_1C4F00E98();
  v0[2] = v2;
  v3 = *v1;
  v0[15] = *v1;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!v3)
    {

      sub_1C44258D4();

      __asm { BRAA            X2, X16 }
    }

    v0[16] = 1;
    sub_1C43FD064();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1C440A544(AssociatedTypeWitness, v5, v6, v7, MEMORY[0x1E69E8728]);
    swift_task_alloc();
    sub_1C43FBE70();
    v0[17] = v8;
    *v8 = v9;
    sub_1C442C3A4(v8);
    sub_1C44258D4();
  }

  return MEMORY[0x1EEE6D8C8](v2);
}

uint64_t sub_1C45AA184()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C45AA280()
{
  sub_1C43FEAEC();
  v1 = v0[11];
  v2 = v0[8];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    (*(v0[10] + 8))(v1, v0[9]);
    v0[3] = v0[2];
    sub_1C4F017A8();
    swift_getWitnessTable();
    if (sub_1C4F01BD8())
    {
    }

LABEL_5:

    sub_1C44258D4();

    __asm { BRAA            X2, X16 }
  }

  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  sub_1C440F228();
  v6();
  (*(v5 + 16))(v4, v3, v2);
  sub_1C4F017A8();
  sub_1C4F01768();
  v7 = (*(v5 + 8))(v3, v2);
  v8 = v0[16];
  if (v8 == v0[15])
  {
    goto LABEL_5;
  }

  v0[16] = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1C43FD064();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1C440A544(AssociatedTypeWitness, v12, v13, v14, MEMORY[0x1E69E8728]);
    swift_task_alloc();
    sub_1C43FBE70();
    v0[17] = v15;
    *v15 = v16;
    sub_1C442C3A4(v15);
    sub_1C44258D4();
  }

  return MEMORY[0x1EEE6D8C8](v7);
}

uint64_t sub_1C45AA4B8()
{
  sub_1C43FCF70();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C45AA53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v7 = *(type metadata accessor for BatchedAsyncSequence.AsyncIterator(0, a3, a4, a4) + 36);
  sub_1C43FD064();
  swift_getAssociatedTypeWitness();
  sub_1C43FCE50();
  v9 = *(v8 + 32);

  return v9(&a5[v7], a2);
}

uint64_t sub_1C45AA5DC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C45AA674;

  return sub_1C45A9EF8();
}

uint64_t sub_1C45AA674()
{
  sub_1C43FCF70();
  v3 = v2;
  sub_1C43FBDE4();
  v5 = v4;
  sub_1C43FBE64();
  *v6 = v5;
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1C45AA770@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 + 16);
  sub_1C43FCE64();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v8 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FBD18(AssociatedTypeWitness);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  v13 = *(v2 + *(a1 + 36));
  sub_1C440F228();
  v14();
  sub_1C4F019A8();
  return sub_1C45AA53C(v13, v12, v5, v8, a2);
}

uint64_t sub_1C45AA8C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_1C4402120();

  return v4(v3);
}

uint64_t sub_1C45AA958(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C45AA9E8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
LABEL_20:

    return sub_1C44157D4((a1 + v8 + 8) & ~v8, v7, AssociatedTypeWitness);
  }

  v9 = ((v8 + 8) & ~v8) + *(*(AssociatedTypeWitness - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((a2 - v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_19:
      if (v7)
      {
        goto LABEL_20;
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v7 + (v9 | v13) + 1;
}

void sub_1C45AAB94(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = ((v10 + 8) & ~v10) + *(v8 + 64);
  v12 = 8 * v11;
  if (a3 <= v9)
  {
    v13 = 0;
  }

  else if (v11 <= 3)
  {
    v16 = ((a3 - v9 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v16))
    {
      v13 = 4;
    }

    else
    {
      if (v16 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v16 >= 2)
      {
        v13 = v17;
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

  if (v9 >= a2)
  {
    switch(v13)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          sub_1C440BAA8(&a1[v10 + 8] & ~v10, a2, v9, AssociatedTypeWitness);
        }

        break;
    }
  }

  else
  {
    v14 = ~v9 + a2;
    if (v11 < 4)
    {
      v15 = (v14 >> v12) + 1;
      if (v11)
      {
        v18 = v14 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v18;
          a1[2] = BYTE2(v18);
        }

        else if (v11 == 2)
        {
          *a1 = v18;
        }

        else
        {
          *a1 = v14;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v14;
      v15 = 1;
    }

    switch(v13)
    {
      case 1:
        a1[v11] = v15;
        break;
      case 2:
        *&a1[v11] = v15;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v11] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C45AADE4(void *a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C45AAEA0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0xFE)
  {
    v11 = 254;
  }

  v12 = *(v9 + 80);
  v13 = *(*(v8 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v14 = v8;
  v15 = *(v6 + 64) + v12;
  if (a2 > v11)
  {
    v16 = v13 + (v15 & ~v12) + 1;
    v17 = 8 * v16;
    if (v16 > 3)
    {
      goto LABEL_9;
    }

    v19 = ((a2 - v11 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v19 >= 2)
    {
LABEL_9:
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_26;
      }

LABEL_16:
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

        switch(v21)
        {
          case 2:
            v22 = *a1;
            break;
          case 3:
            v22 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v22 = *a1;
            break;
          default:
            v22 = *a1;
            break;
        }
      }

      else
      {
        v22 = 0;
      }

      v26 = v11 + (v22 | v20);
      return (v26 + 1);
    }
  }

LABEL_26:
  if (v7 != v11)
  {
    v23 = ((a1 + v15) & ~v12);
    if (v10 == v11)
    {
      goto LABEL_29;
    }

    v25 = *(v23 + v13);
    if (v25 < 2)
    {
      return 0;
    }

    v26 = (v25 + 2147483646) & 0x7FFFFFFF;
    return (v26 + 1);
  }

  v23 = a1;
  v10 = v7;
  v14 = AssociatedTypeWitness;
LABEL_29:

  return sub_1C44157D4(v23, v10, v14);
}

void sub_1C45AB144(_BYTE *a1, uint64_t a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  v14 = *(v11 + 80);
  v15 = *(v8 + 64) + v14;
  v16 = *(*(v10 - 8) + 64);
  v17 = v16 + (v15 & ~v14) + 1;
  v18 = 8 * v17;
  if (a3 <= v13)
  {
    v19 = 0;
  }

  else if (v17 <= 3)
  {
    v23 = ((a3 - v13 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v23))
    {
      v19 = 4;
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
        v19 = v24;
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

  if (v13 >= a2)
  {
    v22 = ~v14;
    switch(v19)
    {
      case 1:
        a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        return;
      case 2:
        *&a1[v17] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        return;
      case 3:
LABEL_47:
        __break(1u);
        return;
      case 4:
        *&a1[v17] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (!a2)
        {
          return;
        }

LABEL_29:
        if (v9 == v13)
        {
          v26 = a1;
          v27 = a2;
          v12 = v9;
          v10 = AssociatedTypeWitness;
        }

        else
        {
          v26 = (&a1[v15] & v22);
          if (v12 != v13)
          {
            v26[v16] = a2 + 1;
            return;
          }

          v27 = a2;
        }

        sub_1C440BAA8(v26, v27, v12, v10);
        break;
    }
  }

  else
  {
    v20 = ~v13 + a2;
    if (v17 < 4)
    {
      v21 = (v20 >> v18) + 1;
      if (v16 + (v15 & ~v14) != -1)
      {
        v25 = v20 & ~(-1 << v18);
        bzero(a1, v17);
        if (v17 == 3)
        {
          *a1 = v25;
          a1[2] = BYTE2(v25);
        }

        else if (v17 == 2)
        {
          *a1 = v25;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        a1[v17] = v21;
        break;
      case 2:
        *&a1[v17] = v21;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v17] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C45AB46C()
{
  sub_1C4404078();
  v2 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  v3 = [objc_allocWithZone(MEMORY[0x1E69B8A58]) init];
  v4 = swift_allocObject();
  *(v4 + 72) = sub_1C4461BB8(0, &unk_1EDDF0560, 0x1E69B8A58);
  *(v4 + 80) = &off_1F43F72C0;
  *(v4 + 16) = 2;
  *(v4 + 24) = &unk_1F43D2238;
  *(v4 + 32) = &unk_1F43D2288;
  *(v4 + 104) = 0x302E302E31;
  *(v4 + 112) = 0xE500000000000000;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  *(v4 + 88) = v0;
  *(v4 + 96) = v1;
  return v4;
}

uint64_t sub_1C45AB548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v6 = sub_1C4EFFA08();
  v5[27] = v6;
  sub_1C43FCF7C(v6);
  v5[28] = v7;
  v5[29] = sub_1C43FBE7C();
  v8 = sub_1C4EF9CD8();
  v5[30] = v8;
  sub_1C43FCF7C(v8);
  v5[31] = v9;
  v5[32] = sub_1C43FBE7C();
  v10 = sub_1C4EFE1C8();
  v5[33] = v10;
  sub_1C43FCF7C(v10);
  v5[34] = v11;
  v5[35] = sub_1C43FE604();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v12 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C43FBD18(v12);
  v5[38] = sub_1C43FBE7C();
  v13 = type metadata accessor for LOIBasedSegment(0);
  v5[39] = v13;
  sub_1C43FBD18(v13);
  v5[40] = sub_1C43FBE7C();
  v14 = sub_1C4F00978();
  v5[41] = v14;
  sub_1C43FCF7C(v14);
  v5[42] = v15;
  v5[43] = sub_1C43FE604();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  v16 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C45AB75C(uint64_t a1)
{
  sub_1C4F00198();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1C4402B48();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_1C43FE9D4();
  }

  v9 = *(v1 + 336);
  v10 = *(v1 + 192);

  v11 = *(v9 + 8);
  v12 = sub_1C4402B58();
  v11(v12);
  sub_1C442E860(v10, v1 + 16);
  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  if (!swift_dynamicCast())
  {
    v30 = *(v1 + 304);
    v31 = *(v1 + 176);
    v32 = sub_1C440A564();
    sub_1C440BAA8(v32, v33, v34, v35);
    sub_1C4420C3C(v30, &qword_1EC0B9790, &unk_1C4F0F7C0);
    goto LABEL_12;
  }

  v13 = *(v1 + 312);
  sub_1C43FBD94();
  sub_1C440BAA8(v14, v15, v16, v13);
  sub_1C45AD680();
  sub_1C45AD5C0();
  v17 = *(v1 + 80);
  sub_1C4420C3C(v1 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!v17)
  {
    sub_1C4F00198();
    v36 = sub_1C4F00968();
    v37 = sub_1C4F01CF8();
    if (sub_1C4402B64(v37))
    {
      *swift_slowAlloc() = 0;
      sub_1C4402B48();
      _os_log_impl(v38, v39, v40, v41, v42, 2u);
      sub_1C43FE9D4();
    }

    v43 = *(v1 + 352);
    v44 = *(v1 + 328);
    v45 = *(v1 + 320);
    v31 = *(v1 + 176);

    (v11)(v43, v44);
    sub_1C4419068();
    sub_1C45AD6DC(v45, v46);
LABEL_12:
    v47 = type metadata accessor for InferredActivitySegment(0);
    sub_1C440BAA8(v31, 1, 1, v47);
    sub_1C4412C30();

    sub_1C43FEA3C();

    __asm { BRAA            X1, X16 }
  }

  v18 = *(v1 + 312);
  v20 = *(v1 + 200);
  v19 = *(v1 + 208);
  v21 = *(v1 + 184);
  sub_1C442E860(v21, v1 + 96);
  sub_1C442E860(v20, v1 + 136);
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  sub_1C441D670((v1 + 96), v22 + 24);
  sub_1C441D670((v1 + 136), v22 + 64);

  sub_1C4EFE1B8();
  sub_1C4409678(v21, v21[3]);
  v23 = sub_1C4402B58();
  v24(v23);
  *(v1 + 376) = *(v18 + 20);
  v25 = swift_task_alloc();
  *(v1 + 368) = v25;
  *v25 = v1;
  v25[1] = sub_1C45ABB54;
  sub_1C43FEA3C();

  return sub_1C45AC5E4(v26, v27);
}

uint64_t sub_1C45ABB54(char a1)
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  *(*v1 + 380) = a1;

  (*(v3 + 8))(v2, v4);
  v5 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C45ABCAC()
{
  v1 = *(v0 + 380);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v48 = *(v0 + 216);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;

  sub_1C4EFE1B8();
  sub_1C456902C(&qword_1EC0B97A8, &unk_1C4F0F7E0);
  v6 = sub_1C4EFE178();
  sub_1C43FCF7C(v6);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0CE60;
  sub_1C4EFE1A8();
  sub_1C4EFE1A8();
  *v2 = v7;
  (*(v3 + 104))(v2, *MEMORY[0x1E69A9AA0], v48);
  sub_1C4EFE198();
  sub_1C4EFE188();
  v9 = v8;
  sub_1C4F00198();
  v10 = sub_1C4F00968();
  v11 = sub_1C4F01CF8();
  if (sub_1C4402B64(v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v9;
    sub_1C4402B48();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_1C43FE9D4();
  }

  v19 = *(v0 + 288);
  v18 = *(v0 + 296);
  v21 = *(v0 + 272);
  v20 = *(v0 + 280);
  v22 = *(v0 + 264);

  v23 = sub_1C4402B58();
  v24(v23);
  v25 = *(v21 + 8);
  v25(v20, v22);
  v25(v19, v22);
  v25(v18, v22);
  if (v9 >= 0.6)
  {
    v32 = *(v0 + 376);
    v33 = *(v0 + 320);
    v34 = *(v0 + 240);
    v35 = *(v0 + 208);
    v36 = *(v0 + 176);
    v37 = *(*(v0 + 248) + 16);
    v37(v36, v33, v34);
    v38 = type metadata accessor for InferredActivitySegment(0);
    v37(v36 + v38[5], v33 + v32, v34);
    sub_1C4419068();
    sub_1C45AD6DC(v33, v39);
    v40 = *(v35 + 104);
    v41 = *(v35 + 112);
    *(v36 + v38[6]) = *(v35 + 16);
    *(v36 + v38[7]) = v9;
    v42 = (v36 + v38[8]);
    *v42 = v40;
    v42[1] = v41;
    sub_1C43FBD94();
    sub_1C440BAA8(v43, v44, v45, v38);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4419068();
    sub_1C45AD6DC(v26, v27);
    type metadata accessor for InferredActivitySegment(0);
    v28 = sub_1C440A564();
    sub_1C440BAA8(v28, v29, v30, v31);
  }

  sub_1C4412C30();

  v46 = *(v0 + 8);

  return v46();
}

void sub_1C45AC074(uint64_t a1, void *a2, void *a3)
{
  v54 = a3;
  v5 = sub_1C4F00978();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v47 - v8;
  v9 = sub_1C4EF9CD8();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = *(a1 + 40);
  v49 = a1;
  v16 = *(a1 + 88);
  type metadata accessor for EventsFoundInAppsSignal();
  inited = swift_initStackObject();
  inited[2] = v16;
  inited[3] = v15;
  v18 = a2[3];
  v19 = a2[4];
  sub_1C4409678(a2, v18);
  v20 = *(v19 + 8);
  v21 = v15;

  v20(v18, v19);
  v22 = v54[3];
  v23 = v54[4];
  sub_1C4409678(v54, v22);
  (*(v23 + 16))(v22, v23);
  v54 = inited;
  sub_1C479CBF4(v14, v11);
  v24 = v53;
  v25 = *(v52 + 8);
  v25(v11, v53);
  v25(v14, v24);
  v26 = sub_1C44F9274(0xD00000000000001DLL);

  if (v26)
  {
    v27 = [v26 dictionaryValue];

    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v28 = sub_1C4F00ED8();

    v29 = 0;
    LODWORD(v53) = 0;
    v30 = *(v49 + 24);
    v31 = *(v30 + 16);
    v32 = v30 + 40;
    v52 = v30 + 40;
LABEL_3:
    v33 = (v32 + 16 * v29);
    while (v31 != v29)
    {
      if (v29 >= *(v30 + 16))
      {
        __break(1u);
        return;
      }

      v34 = *v33;
      v55 = *(v33 - 1);
      v56 = v34;
      swift_bridgeObjectRetain_n();
      sub_1C4F02198();
      if (*(v28 + 16))
      {
        sub_1C457AA70(v57);
        v36 = v35;

        sub_1C457E804(v57);
        if (v36)
        {
          ++v29;
          LODWORD(v53) = 1;
          v32 = v52;
          goto LABEL_3;
        }
      }

      else
      {
        sub_1C457E804(v57);
      }

      v33 += 2;
      ++v29;
    }

    v37 = 0.0;
    if (v53)
    {
      v38._object = 0x80000001C4F8AC10;
      v38._countAndFlagsBits = 0xD000000000000014;
      v37 = ConfidenceService.confidence(source:signalType:)(v38, 0);
    }

    v39 = v48;
    sub_1C4F00198();
    v40 = sub_1C4F00968();
    v41 = sub_1C4F01CF8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = v37;
      _os_log_impl(&dword_1C43F8000, v40, v41, "attendingEventConfidenceDueToFiA = %f", v42, 0xCu);
      MEMORY[0x1C6942830](v42, -1, -1);
    }

    (*(v50 + 8))(v39, v51);
  }

  else
  {
    v43 = v47;
    sub_1C4F00198();
    v44 = sub_1C4F00968();
    v45 = sub_1C4F01CF8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134217984;
      *(v46 + 4) = 0;
      _os_log_impl(&dword_1C43F8000, v44, v45, "attendingEventConfidenceDueToFiA = %f", v46, 0xCu);
      MEMORY[0x1C6942830](v46, -1, -1);
    }

    (*(v50 + 8))(v43, v51);
  }
}

uint64_t sub_1C45AC5E4(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = sub_1C4F00978();
  v3[36] = v4;
  sub_1C43FCF7C(v4);
  v3[37] = v5;
  v3[38] = sub_1C43FBE7C();
  v6 = sub_1C456902C(&qword_1EC0B97B0, &qword_1C4F30780);
  sub_1C43FBD18(v6);
  v3[39] = sub_1C43FBE7C();
  v7 = sub_1C456902C(&qword_1EC0B97B8, &unk_1C4F0F7F0);
  v3[40] = v7;
  sub_1C43FBD18(v7);
  v3[41] = sub_1C43FBE7C();
  v8 = type metadata accessor for WalletPassContent(0);
  v3[42] = v8;
  sub_1C43FBD18(v8);
  v3[43] = sub_1C43FE604();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v9);
  v3[46] = sub_1C43FE604();
  v3[47] = swift_task_alloc();
  v10 = sub_1C4EF9CD8();
  v3[48] = v10;
  sub_1C43FCF7C(v10);
  v3[49] = v11;
  v3[50] = sub_1C43FBE7C();
  v12 = sub_1C456902C(&qword_1EC0B97C0, &qword_1C4F0F800);
  sub_1C43FBD18(v12);
  v3[51] = sub_1C43FBE7C();
  v13 = sub_1C456902C(&qword_1EC0B84B0, qword_1C4F0CDE0);
  v3[52] = v13;
  sub_1C43FBD18(v13);
  v3[53] = sub_1C43FE604();
  v3[54] = swift_task_alloc();
  v14 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v3[55] = v14;
  sub_1C43FBD18(v14);
  v3[56] = sub_1C43FBE7C();
  v15 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C45AC844()
{
  v1 = v0[35];
  sub_1C442E860(v1 + 48, (v0 + 16));
  v2 = *(v1 + 88);
  v3 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);

  v4 = [v3 init];
  type metadata accessor for PassKitSignal();
  inited = swift_initStackObject();
  v0[57] = inited;
  v6 = v0[19];
  v7 = v0[20];
  v8 = sub_1C4418280((v0 + 16), v6);
  v9 = *(v6 - 8);
  v10 = sub_1C43FBE7C();
  (*(v9 + 16))(v10, v8, v6);
  v0[58] = sub_1C4A873E0(v10, v4, v2, inited, v6, v7);
  sub_1C440962C(v0 + 16);

  sub_1C4575ED0();
  v11 = sub_1C4F01088();
  if (v11)
  {
    v29 = v0[56];
    v30 = v0[55];
    v14 = v0[53];
    v15 = v0[54];
    v16 = v0[52];
    v18 = v0[48];
    v17 = v0[49];
    v19 = v0[33];
    v20 = v0[34];
    v21 = v17[2];
    v0[59] = v21;
    v0[60] = (v17 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v15, v19, v18);
    v21(v15 + *(v16 + 48), v20, v18);
    sub_1C45AD5C0();
    v28 = *(v16 + 48);
    v22 = v17[4];
    v0[61] = v22;
    v0[62] = (v17 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v22(v29, v14, v18);
    v23 = v17[1];
    v0[63] = v23;
    v0[64] = (v17 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v14 + v28, v18);
    sub_1C4508DB8();
    v22(v29 + *(v30 + 36), v14 + *(v16 + 48), v18);
    v23(v14, v18);
    sub_1C4A85140(v29, v0 + 31);
    sub_1C4420C3C(v0[56], &qword_1EC0B84B8, &unk_1C4F0D4F0);
    v24 = v0[31];
    v25 = v0[32];
    v0[65] = v24;
    v0[66] = *(v24 + 16);
    v0[67] = v25;
    sub_1C43FCE74();
    sub_1C440405C();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C45ACD38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 536);
  if (v4 < *(v3 + 528))
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v5 = *(v3 + 520);
      if (v4 < *(v5 + 16))
      {
        v7 = *(v3 + 376);
        v6 = *(v3 + 384);
        sub_1C442E860(v5 + 40 * v4 + 32, v3 + 168);
        v8 = v4 + 1;
        v9 = *(v3 + 192);
        v10 = *(v3 + 200);
        sub_1C4409678((v3 + 168), v9);
        (*(v10 + 8))(v9, v10);
        if (sub_1C44157D4(v7, 1, v6) == 1)
        {
          v11 = *(v3 + 320);
          sub_1C4420C3C(*(v3 + 376), &unk_1EC0B84E0, qword_1C4F0D2D0);
          v12 = sub_1C440A564();
          v15 = v11;
        }

        else
        {
          v16 = *(v3 + 472);
          v18 = *(v3 + 400);
          v17 = *(v3 + 408);
          v19 = *(v3 + 384);
          v20 = *(v3 + 360);
          v21 = *(v3 + 368);
          v47 = *(v3 + 336);
          v22 = *(v3 + 320);
          (*(v3 + 488))(v18, *(v3 + 376), v19);
          v16(v17, v18, v19);
          v16(v17 + *(v22 + 28), v18, v19);
          sub_1C442E860(v3 + 168, v3 + 208);
          sub_1C440BAA8(v20, 1, 1, v19);
          sub_1C44085D0();
          v23 = sub_1C43FD074();
          v24(v23);
          sub_1C45AD734(v21, v20);
          sub_1C44085D0();
          v25 = sub_1C43FD074();
          v27 = v26(v25);
          if (v27 == 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = 2;
          }

          if (!v27)
          {
            v28 = 0;
          }

          *(v20 + *(v47 + 20)) = v28;
          sub_1C44085D0();
          v29 = sub_1C43FD074();
          v31 = v30(v29);
          v32 = (v20 + *(v47 + 24));
          *v32 = v31;
          v32[1] = v33;
          sub_1C4409678((v3 + 208), *(v3 + 232));
          v34 = sub_1C4402B58();
          v36 = v35(v34);
          v37 = 9;
          if (v36 < 9)
          {
            v37 = v36;
          }

          v38 = *(v3 + 504);
          v39 = *(v3 + 408);
          v40 = *(v3 + 360);
          v41 = *(v3 + 320);
          v42 = *(v41 + 32);
          *(v40 + *(*(v3 + 336) + 28)) = v37;
          sub_1C45AD61C(v40, v39 + v42);
          sub_1C440962C((v3 + 208));
          sub_1C43FFCE0();
          sub_1C45AD6DC(v40, v43);
          v44 = sub_1C4402B58();
          v38(v44);
          sub_1C43FBD94();
          v15 = v41;
        }

        sub_1C440BAA8(v12, v13, v14, v15);
        sub_1C440962C((v3 + 168));
        goto LABEL_16;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  sub_1C440BAA8(*(v3 + 408), 1, 1, *(v3 + 320));
  v8 = *(v3 + 536);
LABEL_16:
  *(v3 + 544) = v8;
  sub_1C43FCE74();
  sub_1C43FEA3C();

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1C45AD020()
{
  v1 = v0[40];
  if (sub_1C44157D4(v0[51], 1, v1) == 1)
  {
    goto LABEL_10;
  }

  v2 = v0[43];
  v3 = v0[41];
  sub_1C4508DB8();
  sub_1C45AD61C(v3 + *(v1 + 32), v2);
  sub_1C4420C3C(v3, &qword_1EC0B97B8, &unk_1C4F0F7F0);
  if (swift_dynamicCast())
  {
    v4 = v0[44];
    v5 = v0[42];
    sub_1C43FBD94();
    sub_1C440BAA8(v6, v7, v8, v5);
    sub_1C45AD680();
    v9 = v0[44];
    if (*(v4 + *(v5 + 20)))
    {
      sub_1C45AD6DC(v9, type metadata accessor for WalletPassContent);
      goto LABEL_6;
    }

    v19 = *(v9 + *(v0[42] + 28));
    sub_1C43FFCE0();
    sub_1C45AD6DC(v20, v21);
    if ((v19 & 0xFE) == 2)
    {
LABEL_10:

      sub_1C4404B50(v0[56]);

      sub_1C440405C();

      __asm { BRAA            X2, X16 }
    }
  }

  else
  {
    v10 = v0[39];
    v11 = sub_1C440A564();
    sub_1C440BAA8(v11, v12, v13, v14);
    sub_1C4420C3C(v10, &qword_1EC0B97B0, &qword_1C4F30780);
  }

LABEL_6:
  v0[67] = v0[68];
  sub_1C43FCE74();
  sub_1C440405C();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

double sub_1C45AD2A8(char a1)
{
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0.0;
  if (a1)
  {
    v7._countAndFlagsBits = 0x74694B73736150;
    v8.value._countAndFlagsBits = 0x726568746FLL;
    v7._object = 0xE700000000000000;
    v8.value._object = 0xE500000000000000;
    v6 = ConfidenceService.confidence(source:signalType:)(v7, v8);
  }

  sub_1C4F00198();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = v6;
    _os_log_impl(&dword_1C43F8000, v9, v10, "eventConfidenceDueToBoardingPass = %f", v11, 0xCu);
    MEMORY[0x1C6942830](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_1C45AD438()
{

  sub_1C440962C((v0 + 48));

  return v0;
}

uint64_t sub_1C45AD488()
{
  sub_1C45AD438();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45AD4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C44A7DA0;

  return sub_1C45AB548(a1, a2, a3, a4);
}

uint64_t sub_1C45AD5C0()
{
  sub_1C4404078();
  sub_1C456902C(v2, v3);
  sub_1C43FBCE0();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C45AD61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WalletPassContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45AD680()
{
  sub_1C4404078();
  v2(0);
  sub_1C43FBCE0();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C45AD6DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C45AD734(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C45AD7A4(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1C45AD7B4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C45AD7A4(*a1);
  *a2 = result;
  return result;
}

void sub_1C45AD814()
{
  v1 = *v0;
  v2 = objc_autoreleasePoolPush();
  sub_1C45AD894(v0, v1);

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_1C45AD894(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4F00978();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [BiomeLibrary() Photos];
  swift_unknownObjectRelease();
  v6 = [v5 AutonamingSuggestions];
  swift_unknownObjectRelease();
  v7 = [v6 Feedback];
  swift_unknownObjectRelease();
  v58 = v7;
  v8 = sub_1C45ADF4C(v7);
  v61 = v9;
  v10 = sub_1C45AE3B8(v9);
  v62 = v8;
  sub_1C45AE578(v8, v10);
  swift_beginAccess();
  v11 = *(a1 + 16);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  if (v14)
  {
    while (1)
    {
      v18 = v17;
LABEL_9:
      v19 = __clz(__rbit64(v14)) | (v18 << 6);
      v20 = *(*(v11 + 56) + 8 * v19);
      v14 &= v14 - 1;
      LOBYTE(v65[0]) = *(*(v11 + 48) + v19);
      v65[1] = v20;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v21 = v64;
      sub_1C45AE66C(v65, a1);
      v64 = v21;

      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v11 + 64 + 8 * v18);
    ++v17;
    if (v14)
    {
      v17 = v18;
      goto LABEL_9;
    }
  }

  if (!v10)
  {

    v44 = MEMORY[0x1E69E7CC8];
    v28 = v63;
LABEL_42:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    swift_isUniquelyReferenced_nonNull_native();
    v65[0] = v44;
    sub_1C44684D4();
    sub_1C4F00288();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F00268();

    sub_1C4F00138();
    v50 = sub_1C4F00968();
    v51 = sub_1C4F01CC8();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v65[0] = v53;
      *v52 = 136315395;
      *(v52 + 4) = sub_1C441D828(0xD00000000000001ALL, 0x80000001C4F8AC80, v65);
      *(v52 + 12) = 2081;
      sub_1C4468200();

      v54 = sub_1C4F00EE8();
      v56 = v55;

      v57 = sub_1C441D828(v54, v56, v65);

      *(v52 + 14) = v57;
      _os_log_impl(&dword_1C43F8000, v50, v51, "Autonaming service sent CA event:%s, payload: %{private}s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v53, -1, -1);
      MEMORY[0x1C6942830](v52, -1, -1);
    }

    (*(v59 + 8))(v28, v60);
  }

  v22 = 0;
  v23 = 0;
  v24 = 1 << *(v10 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v10 + 64);
  v27 = (v24 + 63) >> 6;
  v28 = v63;
  while (v26)
  {
    v29 = v22;
LABEL_21:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = *(*(v10 + 56) + ((v29 << 9) | (8 * v30)));
    v32 = __OFADD__(v23, v31);
    v23 += v31;
    if (v32)
    {
      __break(1u);
LABEL_24:

      v33 = 0;
      v34 = 0;
      v35 = 1 << *(v62 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(v62 + 64);
      v38 = (v35 + 63) >> 6;
      do
      {
        if (!v37)
        {
          while (1)
          {
            v39 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_47;
            }

            if (v39 >= v38)
            {
              goto LABEL_36;
            }

            v37 = *(v62 + 64 + 8 * v39);
            ++v33;
            if (v37)
            {
              v33 = v39;
              goto LABEL_33;
            }
          }
        }

        v39 = v33;
LABEL_33:
        v40 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        v41 = *(*(v62 + 56) + ((v39 << 11) | (32 * v40)) + 24);
        v32 = __OFADD__(v34, v41);
        v34 += v41;
      }

      while (!v32);
      __break(1u);
LABEL_36:

      v32 = __OFADD__(v23, v34);
      v42 = v23 + v34;
      if (v32)
      {
        goto LABEL_48;
      }

      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v43 = MEMORY[0x1E69E7CC8];
      swift_isUniquelyReferenced_nonNull_native();
      v65[0] = v43;
      sub_1C44684D4();
      v44 = v65[0];
      result = sub_1C45AF51C();
      if (v45)
      {
        goto LABEL_42;
      }

      v46 = v23 + result;
      if (!__OFADD__(v23, result))
      {
        if (v46 >= 1)
        {
          v47 = v23 / v46;
          v48 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          *&v49 = v47;
          [v48 initWithFloat_];
          swift_isUniquelyReferenced_nonNull_native();
          v65[0] = v44;
          sub_1C44684D4();
          v44 = v65[0];
        }

        goto LABEL_42;
      }

      goto LABEL_49;
    }
  }

  while (1)
  {
    v29 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v29 >= v27)
    {
      goto LABEL_24;
    }

    v26 = *(v10 + 64 + 8 * v29);
    ++v22;
    if (v26)
    {
      v22 = v29;
      goto LABEL_21;
    }
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1C45ADF4C(void *a1)
{
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C43FBD08();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v9 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  sub_1C43FBDBC();
  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x1E69E7CD0];
  sub_1C43FBDBC();
  v17 = swift_allocObject();
  *(v17 + 16) = MEMORY[0x1E69E7CC8];
  v18 = objc_autoreleasePoolPush();
  sub_1C4EF9C38();
  (*(v11 + 16))(v8, v15, v9);
  sub_1C440BAA8(v8, 0, 1, v9);
  sub_1C440BAA8(v5, 1, 1, v9);
  v19 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v20 = sub_1C457A86C(v8, v5, 0, 0, 0);
  v21 = [a1 publisherWithOptions_];

  (*(v11 + 8))(v15, v9);
  objc_autoreleasePoolPop(v18);
  sub_1C43FBDBC();
  v22 = swift_allocObject();
  *(v22 + 16) = MEMORY[0x1E69E7CD0];
  v36 = sub_1C45AF984;
  v37 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1C45AF9C8;
  v35 = &unk_1F43E17A8;
  v23 = _Block_copy(&aBlock);
  v24 = [v21 filterWithIsIncluded_];
  _Block_release(v23);
  v36 = nullsub_1;
  v37 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1C44405F8;
  v35 = &unk_1F43E17D0;
  v25 = _Block_copy(&aBlock);
  v26 = swift_allocObject();
  v26[2] = v17;
  v26[3] = v16;
  v26[4] = v22;
  v36 = sub_1C45B1F90;
  v37 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1C4440590;
  v35 = &unk_1F43E1820;
  v27 = _Block_copy(&aBlock);

  v28 = [v24 sinkWithCompletion:v25 receiveInput:v27];

  _Block_release(v27);
  _Block_release(v25);

  swift_beginAccess();
  v29 = *(v17 + 16);
  swift_beginAccess();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v29;
}

uint64_t sub_1C45AE3B8(uint64_t a1)
{
  sub_1C4F00978();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  v3 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4411790(OBJC_IVAR____TtC24IntelligencePlatformCore31AutonamingFeedbackCAEventLogger_config);
  type metadata accessor for GraphStore(0);
  swift_allocObject();
  GraphStore.init(config:)(v6);
  v7 = sub_1C45B00A4(a1);

  return v7;
}

uint64_t sub_1C45AE578(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 64;
  sub_1C43FD030();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
  if (v8)
  {
    while (1)
    {
      v13 = v12;
LABEL_7:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = v14 | (v13 << 6);
      LOBYTE(v14) = *(*(a1 + 48) + v15);
      v16 = (*(a1 + 56) + 32 * v15);
      v18[0] = v14;
      v17 = v16[1];
      v19 = *v16;
      v20 = v17;
      result = sub_1C45AFDF4(v18, a2, v2);
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= v10)
    {
      break;
    }

    v8 = *(v5 + 8 * v13);
    ++v12;
    if (v8)
    {
      v12 = v13;
      goto LABEL_7;
    }
  }
}

uint64_t sub_1C45AE66C(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_1C4F00978();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  sub_1C4F00288();
  sub_1C4F00268();
  sub_1C4F00138();

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CC8();

  if (os_log_type_enabled(v8, v9))
  {
    v20[0] = v4;
    v20[1] = v2;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315651;
    *(v10 + 4) = sub_1C441D828(0xD00000000000001ALL, 0x80000001C4F8AC80, &v22);
    *(v10 + 12) = 2081;
    swift_beginAccess();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0B97D8, &qword_1C4F0F958);
    sub_1C45B1E90();
    v12 = sub_1C4F00EE8();
    v14 = v13;

    v15 = sub_1C441D828(v12, v14, &v22);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2080;
    v16 = 0xE700000000000000;
    v17 = 0x74696B656D6F68;
    switch(v21)
    {
      case 1:
        v16 = 0x80000001C4F8ACE0;
        v17 = 0xD000000000000011;
        break;
      case 2:
        break;
      case 3:
        v16 = 0xE800000000000000;
        v17 = 0x736567617373656DLL;
        break;
      default:
        v16 = 0x80000001C4F8AD00;
        v17 = 0xD000000000000012;
        break;
    }

    v19 = sub_1C441D828(v17, v16, &v22);

    *(v10 + 24) = v19;
    _os_log_impl(&dword_1C43F8000, v8, v9, "Autonaming service sent CA event:%s, payload:%{private}s, source:%s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1C6942830](v11, -1, -1);
    MEMORY[0x1C6942830](v10, -1, -1);

    return (*(v5 + 8))(v7, v20[0]);
  }

  else
  {

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1C45AE9E8(uint64_t a1, void *a2)
{
  v4 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  v9 = 0;
  v32 = a1;
  v33 = *(a1 + 16);
  v11 = (v10 + 16);
  v28 = v10;
  v29 = a2;
  v31 = (v10 + 8);
  while (1)
  {
    if (v33 == v9)
    {
    }

    v12 = *(type metadata accessor for GraphTriple(0) - 8);
    v13 = *v11;
    (*v11)(v8, v32 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9, v4);
    if (*(*a2 + 16))
    {
      sub_1C44E3664();
      if (v14)
      {
        goto LABEL_14;
      }
    }

    v30 = v13;
    v35 = v9;
    v34 = objc_autoreleasePoolPush();
    v15 = GraphStore.loadGraphTriples(subject:)();
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *a2;
    v36 = *a2;
    v17 = v8;
    sub_1C44E3664();
    if (__OFADD__(*(v16 + 16), (v19 & 1) == 0))
    {
      break;
    }

    v20 = v18;
    v21 = v19;
    sub_1C456902C(&qword_1EC0B97D0, &qword_1C4F0F940);
    if (sub_1C4F02458())
    {
      sub_1C44E3664();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_18;
      }

      v20 = v22;
    }

    if (v21)
    {
      *(v36[7] + 8 * v20) = v15;
    }

    else
    {
      v36[(v20 >> 6) + 8] |= 1 << v20;
      v30(v36[6] + *(v28 + 72) * v20, v17, v4);
      *(v36[7] + 8 * v20) = v15;
      v24 = v36[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v36[2] = v26;
    }

    a2 = v29;
    *v29 = v36;
    objc_autoreleasePoolPop(v34);
    v9 = v35;
    v8 = v17;
LABEL_14:
    (*v31)(v8, v4);
    ++v9;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C45AECD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v5 = sub_1C4EFEEF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v30 = *(a1 + 16);
  v27 = (v6 + 16);
  v28 = a1;
  v26 = (v6 + 8);
  while (v9 != v30)
  {
    v10 = type metadata accessor for GraphTriple(0);
    v11 = v10[7];
    v31 = v28 + ((*(*(v10 - 1) + 80) + 32) & ~*(*(v10 - 1) + 80)) + *(*(v10 - 1) + 72) * v9;
    v12 = v31 + v11;
    if (sub_1C4EFED18())
    {
      v12 = v31 + v10[5];
    }

    v36 = v9 + 1;
    (*v27)(v8, v12, v5);
    v13 = 0;
    v14 = *(a2 + 16);
    while (v14 != v13)
    {
      v15 = v13 + 1;
      sub_1C45B1F48(&qword_1EDDFCCB0, MEMORY[0x1E69A9748], MEMORY[0x1E69A9768]);
      v16 = sub_1C4F010B8();
      v13 = v15;
      if (v16)
      {
        v17 = (v31 + v10[11]);
        v18 = *v17;
        v19 = v17[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v20 = objc_autoreleasePoolPush();
        v34 = v18;
        v35 = v19;
        v32 = 30;
        v33 = 0xE100000000000000;
        sub_1C4415EA8();
        v21 = sub_1C4F01FC8();

        objc_autoreleasePoolPop(v20);
        v22 = v29;
        sub_1C45AF490(v21, v25);
        v29 = v22;

        break;
      }
    }

    (*v26)(v8, v5);
    v9 = v36;
  }
}

uint64_t sub_1C45AEFB4(uint64_t a1, void *a2, uint64_t a3)
{
  v20 = a3;
  v19 = a2;
  v18 = sub_1C456902C(&qword_1EC0B97C8, &unk_1C4F0F930);
  MEMORY[0x1EEE9AC00](v18);
  v6 = &v18 - v5;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(a1 + 48);
    v17 = sub_1C4EFF0C8();
    (*(*(v17 - 8) + 16))(v6, v16 + *(*(v17 - 8) + 72) * v15, v17);
    *&v6[*(v18 + 48)] = *(*(a1 + 56) + 8 * v15);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45B03B4(v6, v19, v20);
    result = sub_1C4420C3C(v6, &qword_1EC0B97C8, &unk_1C4F0F930);
    if (v3)
    {
LABEL_11:
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_11;
    }

    v9 = *(a1 + 64 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45AF180(uint64_t a1, void *a2)
{
  v37 = a2;
  v40 = sub_1C456902C(&qword_1EC0B97F0, qword_1C4F0F970);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v36 - v5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v41 = a1;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
  v38 = a1 + 64;
  if (v9)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      do
      {
LABEL_8:
        v14 = __clz(__rbit64(v9)) | (v12 << 6);
        v15 = v41;
        v16 = *(v41 + 48);
        v17 = sub_1C4EFF8A8();
        v18 = *(v17 - 8);
        v19 = v42;
        (*(v18 + 16))(v42, v16 + *(v18 + 72) * v14, v17);
        v20 = *(*(v15 + 56) + 8 * v14);
        v21 = v39;
        *(v19 + *(v40 + 48)) = v20;
        sub_1C446C964(v19, v21, &qword_1EC0B97F0, qword_1C4F0F970);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C45B189C();
        v23 = v22;
        v25 = v24;
        v27 = v26;
        (*(v18 + 8))(v21, v17);
        if (v25)
        {
          v28 = v23;
          v29 = v37;
          v30 = *v37;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v29 = v30;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C458AF3C();
            v30 = v34;
            *v37 = v34;
          }

          v32 = *(v30 + 16);
          if (v32 >= *(v30 + 24) >> 1)
          {
            sub_1C458AF3C();
            v30 = v35;
            *v37 = v35;
          }

          *(v30 + 16) = v32 + 1;
          v33 = v30 + 24 * v32;
          *(v33 + 32) = v28;
          *(v33 + 40) = v25;
          *(v33 + 48) = v27;
          *(v33 + 49) = HIBYTE(v27) & 1;
        }

        v9 &= v9 - 1;
        result = sub_1C4420C3C(v42, &qword_1EC0B97F0, qword_1C4F0F970);
        v6 = v38;
      }

      while (v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45AF51C()
{
  sub_1C4F00978();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C43FBCC4();
  v1 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C43FBCC4();
  v4 = v3 - v2;
  sub_1C4411790(OBJC_IVAR____TtC24IntelligencePlatformCore31AutonamingFeedbackCAEventLogger_config);
  type metadata accessor for GraphStore(0);
  swift_allocObject();
  GraphStore.init(config:)(v4);
  sub_1C45B0110();
  v6 = v5;

  return v6;
}

uint64_t sub_1C45AF6DC()
{

  sub_1C449F0D0(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore31AutonamingFeedbackCAEventLogger_config, type metadata accessor for Configuration);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AutonamingFeedbackCAEventLogger(uint64_t a1)
{
  result = qword_1EDDDED00;
  if (!qword_1EDDDED00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C45AF7B0(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

_BYTE *storeEnumTagSinglePayload for AutonamingFeedbackCAEventSource(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C45AF930()
{
  result = qword_1EDDDEC20;
  if (!qword_1EDDDEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDEC20);
  }

  return result;
}

BOOL sub_1C45AF984(void *a1)
{
  v1 = [a1 eventBody];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_1C45AF9C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_1C45AFA20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 eventBody];
  if (!v6)
  {
    return;
  }

  v44 = v6;
  v7 = sub_1C45B1F9C(v6, &selRef_feedbackId);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_1C45B1F9C(v44, &selRef_visualId);
    if (!v12)
    {

      goto LABEL_11;
    }

    v13 = v11;
    v14 = v12;
    v15 = sub_1C45AFD34();
    if (v15 == 4 || (v16 = v15, v17 = sub_1C45AFDA0(), v17 == 2))
    {

LABEL_11:

      return;
    }

    v34 = v13;
    HIDWORD(v38) = v17;
    swift_beginAccess();
    HIDWORD(v42) = v16;
    sub_1C465C06C();
    v18 = v60;
    swift_endAccess();
    if (v61)
    {
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v19 = v59;
    }

    v40 = v19;
    if (v61)
    {
      v20 = 0;
    }

    else
    {
      v20 = v58;
    }

    if (v61)
    {
      v21 = 0;
    }

    else
    {
      v21 = v57;
    }

    v36 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v22 = *(a3 + 16);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v23 = sub_1C4499AD0(v9, v10, v22);

      if (v23)
      {

LABEL_28:

        if ((v38 & 0x100000000) != 0)
        {
          if (!__OFADD__(v18, 1))
          {
            goto LABEL_33;
          }

          __break(1u);
        }

        if (!__OFADD__(v40, 1))
        {
LABEL_33:
          swift_beginAccess();
          swift_isUniquelyReferenced_nonNull_native();
          v52 = *(a2 + 16);
          sub_1C46606B8();
          *(a2 + 16) = v52;
          swift_endAccess();

          return;
        }

LABEL_37:
        __break(1u);
        return;
      }

      if (!__OFADD__(v20, 1))
      {
        swift_beginAccess();
        sub_1C44869B4(&v52, v34, v14, v24, v25, v26, v27, v28, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
        swift_endAccess();

        swift_beginAccess();
        sub_1C44869B4(&v52, v9, v10, v29, v30, v31, v32, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64);
        swift_endAccess();
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_37;
  }
}

uint64_t sub_1C45AFD34()
{
  if (sub_1C442B92C() == 7)
  {
    return 0;
  }

  if (sub_1C442B92C() == 8)
  {
    return 1;
  }

  if (sub_1C442B92C() == 3)
  {
    return 2;
  }

  if (sub_1C442B92C() == 2)
  {
    return 3;
  }

  return 4;
}

uint64_t sub_1C45AFDA0()
{
  if ([v0 feedbackType] == 1)
  {
    return 0;
  }

  if ([v0 feedbackType] == 2)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_1C45AFDF4(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = *a1;
  v4 = a1[2];
  v5 = a1[3];
  v10 = a1[4];
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44684D4();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44684D4();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44684D4();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44684D4();
  if (a2 && (v6 = sub_1C465C0D4(v12, a2), (v7 & 1) == 0))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44684D4();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  swift_isUniquelyReferenced_nonNull_native();
  sub_1C44684D4();
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a3 + 16);
  sub_1C46607A8();
  *(a3 + 16) = v13;
  return swift_endAccess();
}

uint64_t sub_1C45B00A4(uint64_t a1)
{
  v2 = sub_1C45B030C();
  v4 = MEMORY[0x1E69E7CC8];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45AEFB4(v2, &v4, a1);

  return v4;
}

void sub_1C45B0110()
{
  sub_1C43FBD3C();
  v0 = sub_1C456902C(&qword_1EC0B97C8, &unk_1C4F0F930);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20 - v2;

  v4 = sub_1C4505B00(sub_1C45B12F8, 0);

  v21 = MEMORY[0x1E69E7CC8];

  sub_1C45AE9E8(v4, &v21);

  v5 = v21;
  v6 = v21 + 64;
  sub_1C43FD030();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v12 = 0;
  v13 = 0;
  if (v9)
  {
LABEL_6:
    while (1)
    {
      v15 = __clz(__rbit64(v9)) | (v12 << 6);
      v16 = *(v5 + 48);
      sub_1C4EFF0C8();
      sub_1C43FBCE0();
      (*(v17 + 16))(v3, v16 + *(v17 + 72) * v15);
      *&v3[*(v0 + 48)] = *(*(v5 + 56) + 8 * v15);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C45B1594();
      if ((v18 & 1) == 0 && __OFADD__(v13++, 1))
      {
        break;
      }

      v9 &= v9 - 1;
      sub_1C4420C3C(v3, &qword_1EC0B97C8, &unk_1C4F0F930);
      if (!v9)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        sub_1C43FE9F0();
        return;
      }

      v9 = *(v6 + 8 * v14);
      ++v12;
      if (v9)
      {
        v12 = v14;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C45B030C()
{

  v0 = sub_1C4505B00(sub_1C45B1068, 0);

  v2 = MEMORY[0x1E69E7CC8];

  sub_1C45AE9E8(v0, &v2);

  return v2;
}

uint64_t sub_1C45B03B4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = sub_1C456902C(&qword_1EC0B97C8, &unk_1C4F0F930);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v54 - v8;
  sub_1C446C964(a1, v54 - v8, &qword_1EC0B97C8, &unk_1C4F0F930);
  v10 = sub_1C4EFF0C8();
  (*(*(v10 - 8) + 8))(v9, v10);
  v56 = sub_1C45B08F8();
  v12 = v11;
  sub_1C45B0ACC();
  v14 = v13;

  v62 = *(v14 + 16);
  if (!v62)
  {
LABEL_43:
  }

  v54[1] = v3;
  v15 = 0;
  v60 = a2;
  v61 = v14 + 32;
  v67 = a3 + 56;
  v58 = v14;
  v59 = a3;
  v57 = v12;
  while (v15 < *(v14 + 16))
  {
    v16 = (v61 + 24 * v15);
    v17 = v16[1];
    v18 = *(v16 + 16);
    if (*(v16 + 17))
    {
      v19 = *a2;
      v20 = *(*a2 + 16);
      if (v20)
      {
        v21 = sub_1C457AC14(v18);
        if (v22)
        {
          v20 = *(*(v19 + 56) + 8 * v21);
        }

        else
        {
          v20 = 0;
        }
      }

      v34 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_48;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      v63 = *a2;
      v35 = v63;
      *a2 = 0x8000000000000000;
      v36 = sub_1C457AC14(v18);
      if (__OFADD__(v35[2], (v37 & 1) == 0))
      {
        goto LABEL_49;
      }

      v38 = v36;
      v39 = v37;
      sub_1C456902C(&qword_1EC0B97E0, &qword_1C4F0F960);
      if (sub_1C4F02458())
      {
        v40 = sub_1C457AC14(v18);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_54;
        }

        v38 = v40;
      }

      a2 = v60;

      v42 = v63;
      if ((v39 & 1) == 0)
      {
        v63[(v38 >> 6) + 8] |= 1 << v38;
        *(v42[6] + v38) = v18;
        *(v42[7] + 8 * v38) = v34;
        v43 = v42[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_52;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v23 = *v16;
      v63 = v56;
      v64 = v12;
      v65 = v23;
      v66 = v17;
      sub_1C4415EA8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (sub_1C4F02048())
      {
        if (*(a3 + 16))
        {
          v55 = v18;
          sub_1C4F02AF8();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4F01298();
          v24 = sub_1C4F02B68();
          v25 = ~(-1 << *(a3 + 32));
          while (1)
          {
            v26 = v24 & v25;
            if (((*(v67 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
            {
              break;
            }

            v27 = (*(a3 + 48) + 16 * v26);
            if (*v27 != v23 || v27[1] != v17)
            {
              v29 = sub_1C4F02938();
              v24 = v26 + 1;
              if ((v29 & 1) == 0)
              {
                continue;
              }
            }

            v18 = v55;
            goto LABEL_18;
          }

          swift_bridgeObjectRelease_n();
        }

        else
        {
        }

        goto LABEL_42;
      }

LABEL_18:
      v30 = *a2;
      v31 = *(*a2 + 16);
      if (v31)
      {
        v32 = sub_1C457AC14(v18);
        if (v33)
        {
          v31 = *(*(v30 + 56) + 8 * v32);
        }

        else
        {
          v31 = 0;
        }
      }

      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_50;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v63 = *a2;
      v46 = v63;
      *a2 = 0x8000000000000000;
      v47 = sub_1C457AC14(v18);
      if (__OFADD__(v46[2], (v48 & 1) == 0))
      {
        goto LABEL_51;
      }

      v38 = v47;
      v49 = v48;
      sub_1C456902C(&qword_1EC0B97E0, &qword_1C4F0F960);
      if (sub_1C4F02458())
      {
        v50 = sub_1C457AC14(v18);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_54;
        }

        v38 = v50;
      }

      a2 = v60;

      v42 = v63;
      if ((v49 & 1) == 0)
      {
        v63[(v38 >> 6) + 8] |= 1 << v38;
        *(v42[6] + v38) = v18;
        *(v42[7] + 8 * v38) = v34;
        v52 = v42[2];
        v44 = __OFADD__(v52, 1);
        v45 = v52 + 1;
        if (v44)
        {
          goto LABEL_53;
        }

LABEL_40:
        v42[2] = v45;
        goto LABEL_41;
      }
    }

    *(v42[7] + 8 * v38) = v34;
LABEL_41:
    *a2 = v42;

    v14 = v58;
    a3 = v59;
    v12 = v57;
LABEL_42:
    if (++v15 == v62)
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
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
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C45B08F8()
{
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C43FBE94();
  sub_1C4EFEEF8();
  *(swift_allocObject() + 16) = xmmword_1C4F0F820;
  sub_1C4EFEBF8();
  sub_1C4EFE338();
  sub_1C4EFE348();
  sub_1C4EFE2C8();
  sub_1C4EFEE68();
  sub_1C4EFE328();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v0 = sub_1C43FBC98();
  sub_1C45AECD4(v0, v1, v2);
  swift_setDeallocating();
  sub_1C49E1540();
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50, MEMORY[0x1E69E6508]);
  sub_1C4415EA8();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C4F01568();
  swift_bridgeObjectRelease_n();

  return v3;
}

void sub_1C45B0ACC()
{
  sub_1C43FBD3C();
  sub_1C43FBE94();
  v1 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v64 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v53 - v8;
  v10 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v58 = v15 - v14;
  v62 = type metadata accessor for GraphTriple(0);
  sub_1C44057B8();
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v65 = &v53 - v20;
  v21 = *(v0 + 16);
  if (!v21)
  {
    v24 = MEMORY[0x1E69E7CC8];
LABEL_30:
    v68 = MEMORY[0x1E69E7CC0];
    sub_1C45AF180(v24, &v68);

    sub_1C43FE9F0();
    return;
  }

  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = v0 + v22;
  v61 = *(v19 + 72);
  v56 = v22;
  v57 = v12 + 8;
  v63 = (v3 + 16);
  v24 = MEMORY[0x1E69E7CC8];
  v53 = v3;
  v54 = (v3 + 8);
  v55 = v10;
  while (1)
  {
    sub_1C44065DC();
    sub_1C44308A8(v23, v65);
    sub_1C4EFE968();
    sub_1C441F3B4();
    sub_1C45B1F48(&off_1EDDFCCA8, v25, MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v68 == v66 && v69 == v67)
    {
      v31 = sub_1C44085EC();
      v32(v31);
    }

    else
    {
      v27 = sub_1C43FBEC0(v68, v69, v66);
      v28 = sub_1C44085EC();
      v29(v28);

      if ((v27 & 1) == 0)
      {
        sub_1C4419080();
        sub_1C449F0D0(v65, v30);
        goto LABEL_27;
      }
    }

    v33 = *v63;
    (*v63)(v9, v65 + *(v62 + 24), v1);
    if (v24[2] && (sub_1C457AC78(), (v35 & 1) != 0))
    {
      v36 = *(v24[7] + 8 * v34);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v36 = MEMORY[0x1E69E7CC0];
    }

    sub_1C44065DC();
    sub_1C44308A8(v65, v60);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C44F1730(0, *(v36 + 16) + 1, 1, v36);
      v36 = v51;
    }

    v38 = *(v36 + 16);
    v37 = *(v36 + 24);
    v59 = v21;
    if (v38 >= v37 >> 1)
    {
      sub_1C44F1730(v37 > 1, v38 + 1, 1, v36);
      v36 = v52;
    }

    *(v36 + 16) = v38 + 1;
    sub_1C45B1EE4(v60, v36 + v56 + v38 * v61);
    v39 = v33;
    v33(v64, v9, v1);
    swift_isUniquelyReferenced_nonNull_native();
    v68 = v24;
    sub_1C457AC78();
    if (__OFADD__(v24[2], (v41 & 1) == 0))
    {
      break;
    }

    v42 = v40;
    v43 = v41;
    sub_1C456902C(&qword_1EC0B97E8, &qword_1C4F0F968);
    if (sub_1C4F02458())
    {
      sub_1C457AC78();
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_33;
      }

      v42 = v44;
    }

    v24 = v68;
    if (v43)
    {
      *(v68[7] + 8 * v42) = v36;
    }

    else
    {
      v68[(v42 >> 6) + 8] |= 1 << v42;
      v39((v24[6] + *(v53 + 72) * v42), v64, v1);
      *(v24[7] + 8 * v42) = v36;
      v46 = v24[2];
      v47 = __OFADD__(v46, 1);
      v48 = v46 + 1;
      if (v47)
      {
        goto LABEL_32;
      }

      v24[2] = v48;
    }

    v49 = *v54;
    (*v54)(v64, v1);
    v49(v9, v1);
    sub_1C4419080();
    sub_1C449F0D0(v65, v50);
    v21 = v59;
LABEL_27:
    v23 += v61;
    if (!--v21)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_1C4F029F8();
  __break(1u);
}

uint64_t sub_1C45B1068@<X0>(uint64_t *a2@<X8>)
{
  v13 = a2;
  v3 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-1] - v5;
  type metadata accessor for GraphTriple(0);
  v11[3] = &type metadata for FusedTripleColumn;
  v11[4] = sub_1C45021B8();
  LOBYTE(v11[0]) = 1;
  v10[3] = sub_1C4EFEEF8();
  v10[4] = sub_1C45B1F48(&unk_1EDDFA1D8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9690]);
  sub_1C4422F90(v10);
  sub_1C4EFE968();
  v12[3] = sub_1C4EFB298();
  v12[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v12);
  sub_1C4EFBB28();
  sub_1C4420C3C(v10, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v11);
  sub_1C45B1F48(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v12);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
  sub_1C45B1F48(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v7 = sub_1C4EFAFE8();
  result = (*(v4 + 8))(v6, v3);
  if (!v2)
  {
    *v13 = v7;
  }

  return result;
}

uint64_t sub_1C45B12F8@<X0>(uint64_t *a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0C0800, &qword_1C4F0F948);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-1] - v6;
  type metadata accessor for GraphTriple(0);
  v16[3] = &type metadata for FusedTripleColumn;
  v16[4] = sub_1C45021B8();
  LOBYTE(v16[0]) = 4;
  if (qword_1EDDFD0A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Source(0);
  v9 = sub_1C442B738(v8, qword_1EDDFD0B0);
  v10 = *v9;
  v11 = v9[1];
  v15[3] = MEMORY[0x1E69E6158];
  v15[4] = MEMORY[0x1E69A0130];
  v15[0] = v10;
  v15[1] = v11;
  v17[3] = sub_1C4EFB298();
  v17[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v17);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBB28();
  sub_1C4420C3C(v15, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v16);
  sub_1C45B1F48(&qword_1EDDFE210, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  sub_1C4EFAE28();
  sub_1C440962C(v17);
  sub_1C4401CBC(&qword_1EDDFE870, &unk_1EC0C0800, &qword_1C4F0F948, MEMORY[0x1E699FF60]);
  sub_1C45B1F48(&qword_1EDDFE208, type metadata accessor for GraphTriple, &protocol conformance descriptor for GraphTriple);
  v12 = sub_1C4EFAFE8();
  result = (*(v5 + 8))(v7, v4);
  if (!v2)
  {
    *a2 = v12;
  }

  return result;
}

void sub_1C45B1594()
{
  sub_1C43FBD3C();
  sub_1C43FBE94();
  v1 = sub_1C4EFEEF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v5 = v4 - v3;
  v30 = type metadata accessor for GraphTriple(0);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v10 = *(v2 + 72);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0F830;
  v13 = v12 + v11;
  sub_1C4EFEBF8();
  sub_1C4EFE338();
  sub_1C4EFE348();
  sub_1C4EFE2C8();
  sub_1C4EFEE68();
  sub_1C4EFE328();
  sub_1C4EFE5F8();
  v28 = *(v0 + 16);
  if (v28)
  {
    v14 = 0;
    v29 = (v2 + 16);
    do
    {
      sub_1C44065DC();
      sub_1C44308A8(v15, v9);
      v16 = v9 + *(v30 + 28);
      if (sub_1C4EFED18())
      {
        v16 = v9 + *(v30 + 20);
      }

      ++v14;
      (*v29)(v5, v16, v1);
      sub_1C441F3B4();
      sub_1C45B1F48(&qword_1EDDFCCB0, v17, MEMORY[0x1E69A9768]);
      v18 = 8;
      v19 = v13;
      while (--v18)
      {
        v20 = v19 + v10;
        v21 = sub_1C4F010B8();
        v19 = v20;
        if (v21)
        {
          sub_1C4419080();
          sub_1C449F0D0(v9, v25);
          v26 = sub_1C440F234();
          v27(v26);

          goto LABEL_11;
        }
      }

      sub_1C4419080();
      sub_1C449F0D0(v9, v22);
      v23 = sub_1C440F234();
      v24(v23);
    }

    while (v14 != v28);
  }

LABEL_11:
  sub_1C43FE9F0();
}

void sub_1C45B189C()
{
  sub_1C43FBD3C();
  v1 = v0;
  v2 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v49 - v13;
  v63 = type metadata accessor for GraphTriple(0);
  sub_1C44057B8();
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v1 + 16);
  if (!v18)
  {
LABEL_60:

    goto LABEL_61;
  }

  v54 = 0;
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v51 = v1;
  v20 = v1 + v19;
  v60 = *(v15 + 72);
  v61 = (v4 + 8);
  v56 = 0;
  v57 = 0x80000001C4F8ADA0;
  v52 = 0x80000001C4F8ADC0;
  v53 = 0;
  v49 = 0x80000001C4F8AE00;
  v50 = 0x80000001C4F8ADE0;
  v59 = 4;
  v55 = v8;
  v58 = v11;
  do
  {
    sub_1C44065DC();
    sub_1C44308A8(v20, v17);
    sub_1C4EFE838();
    sub_1C441F3B4();
    sub_1C45B1F48(&off_1EDDFCCA8, v21, MEMORY[0x1E69A9770]);
    sub_1C4412C5C();
    sub_1C43FBEA0();
    if (v66 == v64 && v67 == v65)
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_1C43FBEC0(v66, v67, v64);
    }

    v24 = *v61;
    (*v61)(v62, v2);

    if (v23)
    {
      sub_1C4402B80();
      v27 = *v25;
      v26 = v25[1];
      sub_1C44108E4();
      v29 = v27 == v28 - 9 && v57 == v26;
      if (v29 || (sub_1C440DE0C(), (sub_1C4F02938() & 1) != 0))
      {
        v30 = 3;
LABEL_16:
        v59 = v30;
        goto LABEL_37;
      }

      sub_1C44108E4();
      v44 = v27 == v43 - 1 && v52 == v26;
      if (v44 || (sub_1C440DE0C(), (sub_1C4F02938() & 1) != 0))
      {
        v30 = 1;
        goto LABEL_16;
      }

      sub_1C44108E4();
      if (v27 != v45 || v50 != v26)
      {
        sub_1C440DE0C();
        if ((sub_1C4F02938() & 1) == 0)
        {
          sub_1C44108E4();
          v48 = v27 == v47 && v49 == v26;
          if (v48 || (sub_1C440DE0C(), (sub_1C4F02938() & 1) != 0))
          {
            v30 = 2;
          }

          else
          {
            v30 = 4;
          }

          goto LABEL_16;
        }
      }

      v59 = 0;
      goto LABEL_37;
    }

    sub_1C4EFE5F8();
    sub_1C4412C5C();
    sub_1C43FBEA0();
    if (v66 == v64 && v67 == v65)
    {
      sub_1C44330E4();
      v24();

LABEL_24:
      sub_1C4402B80();
      v35 = *v33;
      v34 = v33[1];
      v36 = v35 & 0xFFFFFFFFFFFFLL;
      if ((v34 & 0x2000000000000000) != 0)
      {
        v37 = HIBYTE(v34) & 0xF;
      }

      else
      {
        v37 = v36;
      }

      if (v37)
      {
        v54 = 1;
        goto LABEL_37;
      }

      goto LABEL_29;
    }

    v32 = sub_1C43FBEC0(v66, v67, v64);
    sub_1C44330E4();
    v24();

    if (v32)
    {
      goto LABEL_24;
    }

LABEL_29:
    sub_1C4EFE828();
    sub_1C4412C5C();
    sub_1C4F01578();
    if (v66 == v64 && v67 == v65)
    {
      sub_1C44330E4();
      v24();

LABEL_36:

      sub_1C4402B80();
      v41 = v40[1];
      v53 = *v40;
      v56 = v41;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      goto LABEL_37;
    }

    v39 = sub_1C43FBEC0(v66, v67, v64);
    sub_1C44330E4();
    v24();

    if (v39)
    {
      goto LABEL_36;
    }

LABEL_37:
    sub_1C4419080();
    sub_1C449F0D0(v17, v42);
    v20 += v60;
    --v18;
  }

  while (v18);

  if (v56 && v59 == 4)
  {
    goto LABEL_60;
  }

LABEL_61:
  sub_1C43FE9F0();
}

uint64_t sub_1C45B1DD0(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a6 != a3)
    {
      return 0;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  v9 = sub_1C4F02938();
  result = 0;
  if ((v9 & 1) != 0 && a6 == a3)
  {
    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  return result;
}

uint64_t sub_1C45B1E50(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1C45B1DD0(*a1, *(a1 + 8), v2 | *(a1 + 16), *a2, *(a2 + 8), v3 | *(a2 + 16));
}

unint64_t sub_1C45B1E90()
{
  result = qword_1EDDDEC30;
  if (!qword_1EDDDEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDEC30);
  }

  return result;
}

uint64_t sub_1C45B1EE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GraphTriple(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45B1F48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C45B1F9C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_1C4F01138();
  }

  return sub_1C43FBC98();
}

__n128 sub_1C45B2008(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C45B201C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C45B205C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t AutonamingMessagesAggregationHandler.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  AutonamingMessagesAggregationHandler.init(config:)(a1);
  return v2;
}

void *AutonamingMessagesAggregationHandler.init(config:)(uint64_t a1)
{
  sub_1C45BC174(v8);
  memcpy(v1 + 2, v8, 0x70uLL);
  v1[16] = 3;
  v1[17] = 0x3FE999999999999ALL;
  v1[18] = 9;
  v3 = [BiomeLibrary() Autonaming];
  swift_unknownObjectRelease();
  v4 = [v3 Messages];
  swift_unknownObjectRelease();
  v5 = [v4 AccuracyFedStats];
  swift_unknownObjectRelease();
  v6 = [v5 source];

  sub_1C4467948(a1);
  v1[19] = v6;
  return v1;
}

uint64_t sub_1C45B221C(uint64_t a1)
{
  v2 = v1[14];
  v3 = [BiomeLibrary() Autonaming];
  swift_unknownObjectRelease();
  v4 = [v3 Messages];
  swift_unknownObjectRelease();
  v5 = [v4 Inferences];
  swift_unknownObjectRelease();
  v6 = sub_1C4F01108();
  v20 = [v5 publisherWithUseCase_];

  sub_1C43FBDBC();
  v19 = swift_allocObject();
  sub_1C456902C(&qword_1EC0B97F8, &unk_1C4F3FA10);
  *(v19 + 16) = sub_1C440F248();
  sub_1C43FBDBC();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1C440F248();
  sub_1C43FBDBC();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1C4F00F28();
  v1[6] = sub_1C45B25C4;
  v1[7] = 0;
  v9 = MEMORY[0x1E69E9820];
  v1[2] = MEMORY[0x1E69E9820];
  v1[3] = 1107296256;
  v1[4] = sub_1C44405F8;
  v1[5] = &unk_1F43E19A8;
  v18 = _Block_copy(v1 + 2);
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v19;
  v10[4] = v7;
  v10[5] = v8;
  v1[6] = sub_1C45B4C58;
  v1[7] = v10;
  v1[2] = v9;
  v1[3] = 1107296256;
  v1[4] = sub_1C45AF9C8;
  v1[5] = &unk_1F43E19F8;
  v11 = _Block_copy(v1 + 2);

  v12 = [v20 sinkWithCompletion:v18 shouldContinue:v11];

  _Block_release(v11);
  _Block_release(v18);

  swift_beginAccess();
  v13 = *(v19 + 16);
  swift_beginAccess();
  v14 = *(v7 + 16);
  swift_beginAccess();
  v15 = *(v8 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v16 = v1[1];

  return v16(v13, v14, v15);
}

void sub_1C45B25C4(void *a1)
{
  v2 = [a1 state];
  if (!v2)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v11 = sub_1C4F01CF8();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v12 = "Autonaming Aggregation Analytics: Finished looking through the AutonamingInferences Biome stream";
LABEL_16:
    _os_log_impl(&dword_1C43F8000, oslog, v11, v12, v6, 2u);
LABEL_19:
    MEMORY[0x1C6942830](v6, -1, -1);
    goto LABEL_20;
  }

  if (v2 != 1)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v11 = sub_1C4F01CD8();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_20;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v12 = "Autonaming Aggregation Analytics: Error: unexpected completion state for looking through the AutonamingInferences Biome stream.";
    goto LABEL_16;
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = a1;
  oslog = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = [v4 error];
    if (v8)
    {
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    *(v6 + 4) = v8;
    *v7 = v9;
    _os_log_impl(&dword_1C43F8000, oslog, v5, "Autonaming Aggregation Analytics: Error: failed looking through the AutonamingInferences Biome stream: %@", v6, 0xCu);
    sub_1C45B4B90(v7);
    MEMORY[0x1C6942830](v7, -1, -1);
    goto LABEL_19;
  }

LABEL_20:
}

uint64_t sub_1C45B2864(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)@<X0>(uint64_t *@<X8>), uint64_t a5)
{
  v9 = sub_1C4F01948();
  if (v9)
  {
LABEL_2:
    v10 = 0;
    v11 = 0;
LABEL_116:
    sub_1C44239FC(v10, 0);
    sub_1C44239FC(v11, 0);
    return (v9 & 1) == 0;
  }

  v12 = [a1 eventBody];
  if (!v12)
  {
LABEL_84:
    a4 = 0;
    v10 = 0;
    v11 = 0;
LABEL_115:
    sub_1C44239FC(a4, 0);
    goto LABEL_116;
  }

  v13 = v12;
  v14 = sub_1C45B4BF8(v12, &selRef_modelVersion);
  if (!v15)
  {
    goto LABEL_71;
  }

  v16 = sub_1C44CF75C(1, v14, v15);
  v17 = MEMORY[0x1C693FEF0](v16);
  v19 = v18;

  v20 = HIBYTE(v19) & 0xF;
  v21 = v17 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v22 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    goto LABEL_71;
  }

  if ((v19 & 0x1000000000000000) != 0)
  {
    LOBYTE(v120) = 0;
    v25 = sub_1C4AA1330();
    v43 = v111;
    goto LABEL_67;
  }

  if ((v19 & 0x2000000000000000) == 0)
  {
    if ((v17 & 0x1000000000000000) == 0)
    {
      goto LABEL_120;
    }

    for (i = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32); ; i = sub_1C4F022F8())
    {
      v24 = *i;
      if (v24 == 43)
      {
        if (v21 < 1)
        {
          goto LABEL_129;
        }

        v20 = v21 - 1;
        if (v21 == 1)
        {
          goto LABEL_65;
        }

        v25 = 0;
        if (i)
        {
          v32 = i + 1;
          while (1)
          {
            v33 = *v32 - 48;
            if (v33 > 9)
            {
              goto LABEL_65;
            }

            v34 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              goto LABEL_65;
            }

            v25 = v34 + v33;
            if (__OFADD__(v34, v33))
            {
              goto LABEL_65;
            }

            ++v32;
            if (!--v20)
            {
              goto LABEL_66;
            }
          }
        }
      }

      else if (v24 == 45)
      {
        if (v21 < 1)
        {
          goto LABEL_127;
        }

        v20 = v21 - 1;
        if (v21 == 1)
        {
          goto LABEL_65;
        }

        v25 = 0;
        if (i)
        {
          v26 = i + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              break;
            }

            v25 = v28 - v27;
            if (__OFSUB__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v20)
            {
              goto LABEL_66;
            }
          }

LABEL_65:
          v25 = 0;
          LOBYTE(v20) = 1;
          goto LABEL_66;
        }
      }

      else
      {
        if (!v21)
        {
          goto LABEL_65;
        }

        v25 = 0;
        if (i)
        {
          do
          {
            v38 = *i - 48;
            if (v38 > 9)
            {
              goto LABEL_65;
            }

            v39 = 10 * v25;
            if ((v25 * 10) >> 64 != (10 * v25) >> 63)
            {
              goto LABEL_65;
            }

            v25 = v39 + v38;
            if (__OFADD__(v39, v38))
            {
              goto LABEL_65;
            }

            ++i;
          }

          while (--v21);
        }
      }

      LOBYTE(v20) = 0;
LABEL_66:
      LOBYTE(v120) = v20;
      v43 = v20;
LABEL_67:

      if ((v43 & 1) == 0 && v25 <= 8)
      {

        goto LABEL_2;
      }

LABEL_71:
      v119 = sub_1C45B4BF8(v13, &selRef_photosPersonIdentifier);
      v45 = v44;
      sub_1C45B4BF8(v13, &selRef_inferredName);
      v47 = v46;
      v116 = sub_1C45B4BF8(v13, &selRef_inferredContactIdentifier);
      if (!v45)
      {

        goto LABEL_84;
      }

      v117 = v48;
      v118 = a5;
      if (v47)
      {
        v112 = sub_1C4F00FF8();
        v114 = v49;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

        swift_beginAccess();
        swift_isUniquelyReferenced_nonNull_native();
        v120 = *(a3 + 16);
        v50 = v120;
        *(a3 + 16) = 0x8000000000000000;
        v51 = sub_1C445FAA8(v119, v45);
        if (__OFADD__(*(v50 + 16), (v52 & 1) == 0))
        {
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
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        v53 = v51;
        v54 = v52;
        sub_1C456902C(&qword_1EC0B9808, &qword_1C4F0FAE8);
        v55 = sub_1C4F02458();
        v56 = v120;
        if (v55)
        {
          v57 = sub_1C445FAA8(v119, v45);
          if ((v54 & 1) != (v58 & 1))
          {
            goto LABEL_131;
          }

          v53 = v57;
        }

        *(a3 + 16) = v56;
        if ((v54 & 1) == 0)
        {
          sub_1C451067C(&v120);
          sub_1C44686DC(v53, v119, v45, v120, v56);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        v59 = *(v56 + 56);
        swift_isUniquelyReferenced_nonNull_native();
        v120 = *(v59 + 8 * v53);
        v60 = v120;
        *(v59 + 8 * v53) = 0x8000000000000000;
        v61 = sub_1C445FAA8(v112, v114);
        if (__OFADD__(*(v60 + 16), (v62 & 1) == 0))
        {
          goto LABEL_122;
        }

        v63 = v61;
        v64 = v62;
        sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
        if (sub_1C4F02458())
        {
          v65 = sub_1C445FAA8(v112, v114);
          v67 = v117;
          if ((v64 & 1) != (v66 & 1))
          {
            goto LABEL_131;
          }

          v63 = v65;
        }

        else
        {
          v67 = v117;
        }

        *(v59 + 8 * v53) = v120;

        v68 = *(v59 + 8 * v53);
        if ((v64 & 1) == 0)
        {
          sub_1C44686AC(v63, v112, v114, 0, v68);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        v69 = *(v68 + 56);
        v70 = *(v69 + 8 * v63);
        v71 = __OFADD__(v70, 1);
        v72 = v70 + 1;
        a5 = v118;
        if (v71)
        {
          goto LABEL_124;
        }

        *(v69 + 8 * v63) = v72;
        swift_endAccess();

        v115 = sub_1C457EB40;
        v113 = sub_1C45B4C68;
        if (!v67)
        {
LABEL_86:
          a4 = 0;
          v10 = 0;
          goto LABEL_107;
        }
      }

      else
      {
        v113 = 0;
        v115 = 0;
        if (!v48)
        {
          goto LABEL_86;
        }
      }

      swift_beginAccess();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      swift_isUniquelyReferenced_nonNull_native();
      v120 = *(a4 + 2);
      v73 = v120;
      *(a4 + 2) = 0x8000000000000000;
      v74 = sub_1C445FAA8(v119, v45);
      if (__OFADD__(*(v73 + 16), (v75 & 1) == 0))
      {
        goto LABEL_123;
      }

      v76 = v74;
      v77 = v75;
      sub_1C456902C(&qword_1EC0B9808, &qword_1C4F0FAE8);
      v78 = sub_1C4F02458();
      v79 = v120;
      if (v78)
      {
        v80 = sub_1C445FAA8(v119, v45);
        if ((v77 & 1) != (v81 & 1))
        {
          goto LABEL_131;
        }

        v76 = v80;
      }

      *(a4 + 2) = v79;
      if ((v77 & 1) == 0)
      {
        sub_1C451067C(&v120);
        sub_1C44686DC(v76, v119, v45, v120, v79);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v82 = *(v79 + 56);
      swift_isUniquelyReferenced_nonNull_native();
      v120 = *(v82 + 8 * v76);
      v83 = v120;
      *(v82 + 8 * v76) = 0x8000000000000000;
      v84 = sub_1C445FAA8(v116, v117);
      if (__OFADD__(*(v83 + 16), (v85 & 1) == 0))
      {
        goto LABEL_125;
      }

      v86 = v84;
      v87 = v85;
      sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
      v88 = sub_1C4F02458();
      v89 = v120;
      if (v88)
      {
        v90 = v117;
        v91 = sub_1C445FAA8(v116, v117);
        if ((v87 & 1) != (v92 & 1))
        {
          goto LABEL_131;
        }

        v86 = v91;
      }

      else
      {
        v90 = v117;
      }

      *(v82 + 8 * v76) = v89;

      v93 = *(v82 + 8 * v76);
      if ((v87 & 1) == 0)
      {
        sub_1C44686AC(v86, v116, v90, 0, *(v82 + 8 * v76));
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      v94 = *(v93 + 56);
      v95 = *(v94 + 8 * v86);
      v71 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v71)
      {
        goto LABEL_126;
      }

      *(v94 + 8 * v86) = v96;
      swift_endAccess();

      v10 = sub_1C457EB40;
      a4 = sub_1C45B4C68;
      a5 = v118;
LABEL_107:
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v120 = *(a5 + 16);
      v97 = v120;
      *(a5 + 16) = 0x8000000000000000;
      v98 = sub_1C445FAA8(v119, v45);
      v100 = *(v97 + 16);
      v101 = (v99 & 1) == 0;
      a3 = v100 + v101;
      if (__OFADD__(v100, v101))
      {
        __break(1u);
      }

      else
      {
        v102 = v98;
        a5 = v99;
        sub_1C456902C(&qword_1EC0B9800, &qword_1C4F0FAE0);
        v103 = sub_1C4F02458();
        v104 = v120;
        if (v103)
        {
          v105 = sub_1C445FAA8(v119, v45);
          if ((a5 & 1) != (v106 & 1))
          {
            goto LABEL_131;
          }

          v102 = v105;
        }

        *(v118 + 16) = v104;
        if ((a5 & 1) == 0)
        {
          sub_1C44686AC(v102, v119, v45, 0, v104);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        }

        v107 = *(v104 + 56);
        v108 = *(v107 + 8 * v102);
        v71 = __OFADD__(v108, 1);
        v109 = v108 + 1;
        if (!v71)
        {
          *(v107 + 8 * v102) = v109;
          swift_endAccess();

          sub_1C44239FC(v113, 0);
          sub_1C44239FC(v115, 0);
          v11 = sub_1C457EB40;
          goto LABEL_115;
        }
      }

      __break(1u);
LABEL_120:
      ;
    }
  }

  v121[0] = v17;
  v121[1] = v19 & 0xFFFFFFFFFFFFFFLL;
  if (v17 != 43)
  {
    if (v17 != 45)
    {
      if (v20)
      {
        v25 = 0;
        v40 = v121;
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            break;
          }

          v42 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            break;
          }

          v25 = v42 + v41;
          if (__OFADD__(v42, v41))
          {
            break;
          }

          ++v40;
          if (!--v20)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    if (v20)
    {
      if (--v20)
      {
        v25 = 0;
        v29 = v121 + 1;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v25;
          if ((v25 * 10) >> 64 != (10 * v25) >> 63)
          {
            break;
          }

          v25 = v31 - v30;
          if (__OFSUB__(v31, v30))
          {
            break;
          }

          ++v29;
          if (!--v20)
          {
            goto LABEL_66;
          }
        }
      }

      goto LABEL_65;
    }

    goto LABEL_128;
  }

  if (v20)
  {
    if (--v20)
    {
      v25 = 0;
      v35 = v121 + 1;
      while (1)
      {
        v36 = *v35 - 48;
        if (v36 > 9)
        {
          break;
        }

        v37 = 10 * v25;
        if ((v25 * 10) >> 64 != (10 * v25) >> 63)
        {
          break;
        }

        v25 = v37 + v36;
        if (__OFADD__(v37, v36))
        {
          break;
        }

        ++v35;
        if (!--v20)
        {
          goto LABEL_66;
        }
      }
    }

    goto LABEL_65;
  }

LABEL_130:
  __break(1u);
LABEL_131:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C45B3248(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (v5)
  {
LABEL_9:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = v12 | (v10 << 6);
    v14 = *(*(a1 + 56) + 8 * v13);
    if (v8 < v14)
    {
      v9 = *(*(a1 + 48) + 16 * v13);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      v8 = v14;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45B3378(uint64_t a1, unint64_t a2)
{
  v57[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C4EF98F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4461BB8(0, &qword_1EDDFCE78, 0x1E69789A8);
  v7 = [objc_opt_self() systemPhotoLibraryURL];
  sub_1C4EF98C8();

  v8 = sub_1C44B90E0(v6);
  v57[0] = 0;
  if (![v8 openAndWaitWithUpgrade:0 error:v57])
  {
    v17 = v57[0];
    v18 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDDFECB8);
    v20 = v18;
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CD8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = sub_1C43FD084();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = v18;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      sub_1C44065F4(&dword_1C43F8000, v27, v28, "Photo library could not open successfully due to %@, returning nil for unknown ground truth");
      sub_1C45B4B90(v24);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    return 0;
  }

  v9 = v57[0];
  v10 = [v8 librarySpecificFetchOptions];
  v11 = objc_opt_self();
  sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C4F0D130;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v13 = sub_1C4F01658();

  v14 = [v11 fetchPersonsWithLocalIdentifiers:v13 options:v10];

  v15 = [v14 fetchedObjects];
  if (v15)
  {
    sub_1C4461BB8(0, &qword_1EC0C2A80, 0x1E6978980);
    v16 = sub_1C4F01678();
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1C4428DA0(v16) != 1 || !sub_1C4428DA0(v16))
  {

    return 0;
  }

  sub_1C4431590(0, (v16 & 0xC000000000000001) == 0, v16);
  if ((v16 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x1C6940F90](0, v16);
  }

  else
  {
    v29 = *(v16 + 32);
  }

  v30 = v29;

  v31 = sub_1C47851D4(v30);
  v56 = v10;
  if (!v32)
  {
    goto LABEL_23;
  }

  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {

LABEL_23:
    v34 = 0;
    v36 = 0;
    goto LABEL_24;
  }

  v34 = sub_1C4F00FF8();
  v36 = v35;

LABEL_24:
  v38 = sub_1C45C0104(v30);
  v40 = v39;
  if (v39)
  {
    v41 = v38;
    v42 = HIBYTE(v39) & 0xF;
    if ((v39 & 0x2000000000000000) == 0)
    {
      v42 = v38 & 0xFFFFFFFFFFFFLL;
    }

    if (!v42)
    {

      v41 = 0;
      v40 = 0;
    }
  }

  else
  {
    v41 = 0;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v43 = sub_1C4F00978();
  sub_1C442B738(v43, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v44 = sub_1C4F00968();
  v45 = sub_1C4F01CC8();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v55 = v30;
    v47 = v46;
    v54 = swift_slowAlloc();
    v57[0] = v54;
    *v47 = 136315650;
    *(v47 + 4) = sub_1C441D828(a1, a2, v57);
    *(v47 + 12) = 2080;
    if (v36)
    {
      v48 = v34;
    }

    else
    {
      v48 = 7104878;
    }

    if (v36)
    {
      v49 = v36;
    }

    else
    {
      v49 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v50 = sub_1C441D828(v48, v49, v57);

    *(v47 + 14) = v50;
    *(v47 + 22) = 2080;
    if (v40)
    {
      v51 = v41;
    }

    else
    {
      v51 = 7104878;
    }

    if (v40)
    {
      v52 = v40;
    }

    else
    {
      v52 = 0xE300000000000000;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v53 = sub_1C441D828(v51, v52, v57);

    *(v47 + 24) = v53;
    _os_log_impl(&dword_1C43F8000, v44, v45, "AutonamingMessagesAggregationHandler: Aggregation Analytics: For person id %s, found ground truth name %s and contact %s", v47, 0x20u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  else
  {
  }

  return v34;
}

id sub_1C45B39C4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1C45B3248(a3);
  v11 = v10;
  v13 = v12;
  v14 = sub_1C45B3248(a4);
  v16 = v15;
  v18 = v17;
  v19 = a5;
  v20 = a5 * 0.8;
  v138 = v13;
  if (v13 >= 3 && v20 < v13)
  {
    v135 = v9;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v22 = v11;
  }

  else
  {
    v135 = 0;
    v22 = 0;
  }

  if (v18 >= 3 && v20 < v18)
  {
    if (v16)
    {
      v134 = a5;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v24 = v16;
      goto LABEL_16;
    }
  }

  else
  {
    v14 = 0;
  }

  if (v22)
  {
    v134 = a5;
    v24 = 0;
LABEL_16:
    v136 = a1;
    v137 = a2;
    sub_1C45B3378(a1, a2);
    v27 = v26;
    v29 = v28;
    if (v24)
    {
      if (v18 >= v13)
      {
        v139 = v25;

        if (qword_1EDDFECB0 != -1)
        {
          sub_1C43FFB88(&qword_1EDDFECB0);
        }

        v54 = sub_1C4F00978();
        v55 = sub_1C442B738(v54, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v56 = sub_1C4F00968();
        v57 = sub_1C4F01CC8();

        if (os_log_type_enabled(v56, v57))
        {
          v135 = v55;
          v58 = swift_slowAlloc();
          v140 = swift_slowAlloc();
          *v58 = 136315906;
          *(v58 + 4) = sub_1C441D828(v136, v137, &v140);
          *(v58 + 12) = 2080;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v59 = sub_1C441D828(v14, v24, &v140);

          *(v58 + 14) = v59;
          *(v58 + 22) = 2048;
          *(v58 + 24) = v18;

          *(v58 + 32) = 2048;
          *(v58 + 34) = v134;
          _os_log_impl(&dword_1C43F8000, v56, v57, "AutonamingMessagesAggregationHandler: Person id %s, found most occurring inference contact %s with count %ld over %ld inferences.", v58, 0x2Au);
          swift_arrayDestroy();
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        if (v29)
        {
          if (v139 == v14 && v29 == v24)
          {
          }

          else
          {
            v76 = sub_1C4F02938();

            if ((v76 & 1) == 0)
            {
              v30 = v137;
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v77 = sub_1C4F00968();
              sub_1C4F01CC8();
              sub_1C43FEB14();
              if (sub_1C43FD09C())
              {
                sub_1C43FD084();
                sub_1C44117BC();
                sub_1C4402BB0();
                *(v14 + 4) = sub_1C43FFCF8(4.8149e-34, v78, v79, v80, v81, v82, v83, v84, v85, v132, v133, v134, v135, v136, v137);
                sub_1C44057CC();
                _os_log_impl(v86, v87, v88, v89, v90, 0xCu);
                sub_1C440A574();
                sub_1C43FE9D4();
              }

              v53 = 2;
              goto LABEL_68;
            }
          }

          v30 = v137;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v118 = sub_1C4F00968();
          sub_1C4F01CC8();
          sub_1C43FEB14();
          if (sub_1C43FD09C())
          {
            sub_1C43FD084();
            sub_1C44117BC();
            sub_1C4402BB0();
            *(v14 + 4) = sub_1C43FFCF8(4.8149e-34, v119, v120, v121, v122, v123, v124, v125, v126, v132, v133, v134, v135, v136, v137);
            sub_1C44057CC();
            _os_log_impl(v127, v128, v129, v130, v131, 0xCu);
            sub_1C440A574();
            sub_1C43FE9D4();
          }

          v53 = 1;
          goto LABEL_68;
        }

        v53 = 0;
        v30 = v137;
LABEL_68:
        v105 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        v106 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
        objc_allocWithZone(MEMORY[0x1E698EB40]);
        v107 = v105;
        v108 = v106;
        v109 = sub_1C45BFEB0(0, 0, 0, 0, v105, v106, v53);
        if (qword_1EDDFECB0 != -1)
        {
          sub_1C43FFB88(&qword_1EDDFECB0);
        }

        v110 = sub_1C4F00978();
        sub_1C442B738(v110, qword_1EDDFECB8);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v60 = v109;
        v111 = sub_1C4F00968();
        v112 = sub_1C4F01CC8();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v140 = v115;
          *v113 = 136315394;
          *(v113 + 4) = sub_1C441D828(v136, v30, &v140);
          *(v113 + 12) = 2112;
          *(v113 + 14) = v60;
          *v114 = v60;
          v116 = v60;
          _os_log_impl(&dword_1C43F8000, v111, v112, "AutonamingMessagesAggregationHandler: Person id %s, preparing AccuracyFedStats event %@", v113, 0x16u);
          sub_1C45B4B90(v114);
          sub_1C43FBE2C();
          sub_1C440962C(v115);
          sub_1C43FBE2C();
          sub_1C43FBE2C();
        }

        else
        {
        }

        return v60;
      }
    }

    else
    {
    }

    v30 = a2;
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v31 = sub_1C4F00978();
    v32 = sub_1C442B738(v31, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    swift_bridgeObjectRetain_n();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v33 = sub_1C4F00968();
    v34 = sub_1C4F01CC8();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      *v35 = 136315906;
      *(v35 + 4) = sub_1C441D828(v136, a2, &v140);
      *(v35 + 12) = 2080;
      if (v22)
      {
        v36 = v135;
      }

      else
      {
        v36 = 7104878;
      }

      if (v22)
      {
        v37 = v22;
      }

      else
      {
        v37 = 0xE300000000000000;
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v38 = sub_1C441D828(v36, v37, &v140);

      *(v35 + 14) = v38;
      v30 = v137;
      *(v35 + 22) = 2048;

      *(v35 + 24) = v138;

      *(v35 + 32) = 2048;
      *(v35 + 34) = v134;
      _os_log_impl(&dword_1C43F8000, v33, v34, "AutonamingMessagesAggregationHandler: Person id %s, found most occurring inference name %s with count %ld over %ld inferences.", v35, 0x2Au);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();

      if (v27)
      {
LABEL_30:
        v39 = sub_1C4F00FF8();
        v41 = v40;

        if (v22)
        {
          if (v39 == v135 && v22 == v41)
          {

LABEL_64:
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v91 = sub_1C4F00968();
            sub_1C4F01CC8();
            sub_1C43FEB14();
            if (sub_1C43FD09C())
            {
              sub_1C43FD084();
              sub_1C44117BC();
              sub_1C4402BB0();
              *(v41 + 4) = sub_1C43FFCF8(4.8149e-34, v92, v93, v94, v95, v96, v97, v98, v99, v132, v32, v134, v135, v136, v137);
              sub_1C44057CC();
              _os_log_impl(v100, v101, v102, v103, v104, 0xCu);
              sub_1C440A574();
              sub_1C43FE9D4();
            }

            v53 = 1;
            goto LABEL_67;
          }

          v43 = sub_1C4F02938();

          if (v43)
          {
            goto LABEL_64;
          }
        }

        else
        {
        }

        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v61 = sub_1C4F00968();
        sub_1C4F01CC8();
        sub_1C43FEB14();
        if (sub_1C43FD09C())
        {
          sub_1C43FD084();
          sub_1C44117BC();
          sub_1C4402BB0();
          *(v41 + 4) = sub_1C43FFCF8(4.8149e-34, v62, v63, v64, v65, v66, v67, v68, v69, v132, v32, v134, v135, v136, v137);
          sub_1C44057CC();
          _os_log_impl(v70, v71, v72, v73, v74, 0xCu);
          sub_1C440A574();
          sub_1C43FE9D4();
        }

        v53 = 2;
        goto LABEL_67;
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
      if (v27)
      {
        goto LABEL_30;
      }
    }

    v53 = 0;
LABEL_67:
    v18 = v138;
    goto LABEL_68;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v44 = sub_1C4F00978();
  sub_1C442B738(v44, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v45 = sub_1C4F00968();
  sub_1C4F01CC8();

  if (sub_1C43FD09C())
  {
    swift_slowAlloc();
    v46 = a5;
    v47 = sub_1C44117BC();
    v140 = v47;
    *v14 = 136315906;
    *(v14 + 4) = sub_1C441D828(a1, a2, &v140);
    *(v14 + 12) = 2048;

    *(v14 + 14) = v13;

    *(v14 + 22) = 2048;

    *(v14 + 24) = v18;

    *(v14 + 32) = 2048;
    *(v14 + 34) = v46;
    sub_1C44057CC();
    _os_log_impl(v48, v49, v50, v51, v52, 0x2Au);
    sub_1C440962C(v47);
    sub_1C43FBE2C();
    sub_1C43FE9D4();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  return 0;
}

uint64_t sub_1C45B446C()
{
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v1 = sub_1C4F00978();
  *(v0 + 24) = sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CC8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C43F8000, v2, v3, "AutonamingMessagesAggregationHandler: Starting writeAggregationAccuracyEvents", v4, 2u);
    sub_1C43FE9D4();
  }

  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_1C45B45A0;

  return sub_1C45B2208();
}

uint64_t sub_1C45B45A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;

  return MEMORY[0x1EEE6DFA0](sub_1C45B46A4, 0, 0);
}

void sub_1C45B46A4()
{
  v1 = v0;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = sub_1C45A322C();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = sub_1C45A322C();
  v4 = sub_1C44999E0(v3, v2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1C43FD084();
    *v7 = 134217984;
    *(v7 + 4) = *(v4 + 16);

    sub_1C44065F4(&dword_1C43F8000, v8, v9, "AutonamingMessagesAggregationHandler: Found %ld identifiers to run aggregation on");
    sub_1C43FBE2C();
  }

  else
  {
  }

  v10 = 0;
  v38 = v0[6];
  v39 = v0[7];
  v36 = v0[2];
  v37 = v0[5];
  v11 = -1;
  v12 = -1 << *(v4 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v4 + 56);
  v14 = (63 - v12) >> 6;
  while (v13)
  {
LABEL_12:
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (sub_1C4F01948())
    {

LABEL_28:
      v35 = v1[1];

      v35();
      return;
    }

    if (*(v37 + 16) && (v16 = sub_1C440DE18(), v18 = sub_1C445FAA8(v16, v17), (v19 & 1) != 0))
    {
      v20 = *(*(v37 + 56) + 8 * v18);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v20 = sub_1C4F00F28();
    }

    if (*(v38 + 16) && (v21 = sub_1C440DE18(), v23 = sub_1C445FAA8(v21, v22), (v24 & 1) != 0))
    {
      v25 = *(*(v38 + 56) + 8 * v23);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v25 = sub_1C4F00F28();
    }

    if (*(v39 + 16))
    {
      v26 = sub_1C440DE18();
      sub_1C445FAA8(v26, v27);
    }

    v13 &= v13 - 1;
    v28 = sub_1C440DE18();
    v31 = sub_1C45B39C4(v28, v29, v20, v25, v30);

    v1 = v0;
    if (v31)
    {
      v32 = sub_1C4F00968();
      v33 = sub_1C4F01CC8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_1C43F8000, v32, v33, "AutonamingMessagesAggregationHandler: Sending aggregation accuracy event", v34, 2u);
        v1 = v0;
        sub_1C43FBE2C();
      }

      [*(v36 + 152) sendEvent_];
    }
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      goto LABEL_28;
    }

    v13 = *(v4 + 56 + 8 * v15);
    ++v10;
    if (v13)
    {
      v10 = v15;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t AutonamingMessagesAggregationHandler.deinit()
{

  return v0;
}

uint64_t AutonamingMessagesAggregationHandler.__deallocating_deinit()
{
  AutonamingMessagesAggregationHandler.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45B4B90(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BDA00, &qword_1C4F10D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C45B4BF8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1C4F01138();

  return v4;
}

void sub_1C45B4C74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark) = 0;
  sub_1C44098F0(a1, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_config);
  v14 = *(a2 + 72);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingBiomeBookmarkKeyValueStoreKey) = v14;
  v13 = *(a2 + 88);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingSpotlightBookmarkKeyValueStoreKey) = v13;
  sub_1C448DB48(&v14, v12);
  sub_1C448DB48(&v13, v12);
  v9 = sub_1C4F01108();
  sub_1C45B6AAC(a2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_biomeUseCase) = v9;
  sub_1C44098F0(a1, v8);
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_kvStore) = KeyValueStore.init(config:domain:)(v8, 0xD000000000000012, 0x80000001C4F8AFF0);
  v10 = sub_1C45B6040();
  sub_1C4467948(a1);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark) = v10;
  swift_unknownObjectRelease();
  sub_1C43FE9F0();
}

uint64_t sub_1C45B4F10(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  return sub_1C45B52F0();
}

uint64_t sub_1C45B4F58()
{
  if (!*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_kvStore))
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v14 = sub_1C4F00978();
    sub_1C43FCEE8(v14, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v8, v15))
    {
      v16 = sub_1C43FD084();
      v38 = sub_1C43FFD34();
      *v16 = 136315138;
      v17 = sub_1C43FD024();
      *(v16 + 4) = sub_1C441D828(v17, v18, v19);
      sub_1C43FD0B4();
      _os_log_impl(v20, v21, v22, v23, v16, 0xCu);
      sub_1C440962C(v38);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    goto LABEL_13;
  }

  v1 = v0;

  v2 = KeyValueStore.keys()();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C44CE068();

  if (!v3)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v24 = sub_1C4F00978();
    sub_1C43FCEE8(v24, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CC8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = sub_1C43FD084();
      v39 = sub_1C43FFD34();
      *v27 = 136315138;
      v28 = sub_1C43FD024();
      *(v27 + 4) = sub_1C441D828(v28, v29, v30);
      sub_1C43FD0B4();
      _os_log_impl(v31, v32, v33, v34, v27, 0xCu);
      sub_1C440962C(v39);
      sub_1C43FFD18();
      sub_1C43FBE2C();
    }

    return 0;
  }

  v4._countAndFlagsBits = sub_1C43FD024();
  v5 = KeyValueStore.delete(key:)(v4);
  if (v6)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v7 = sub_1C4F00978();
    sub_1C43FCEE8(v7, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CD8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = sub_1C43FD084();
      v37 = sub_1C43FFD34();
      *v10 = 136315138;
      v11 = sub_1C43FD024();
      *(v10 + 4) = sub_1C441D828(v11, v12, v13);
      _os_log_impl(&dword_1C43F8000, v8, v9, "Unable to reset bookmark with key %s for AutonamingMessagesBookmarker: calling deletion of key failed", v10, 0xCu);
      sub_1C440962C(v37);
      sub_1C43FBE2C();
      sub_1C43FFD18();
    }

LABEL_13:
    return 0;
  }

  v36 = v5;

  if (!v36)
  {
    return 0;
  }

  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_bookmark) = 0;
  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_1C45B52F0()
{
  v0 = swift_unknownObjectRetain();
  v1 = sub_1C45B5334(v0);
  swift_unknownObjectRelease();
  return v1 & 1;
}

uint64_t sub_1C45B5334(uint64_t a1)
{
  if (a1)
  {
    v16[3] = swift_getObjectType();
    v16[0] = a1;
    swift_unknownObjectRetain();
    v2 = sub_1C4404084();
    v5 = sub_1C45B5650(v2, v3, v4);
    sub_1C440962C(v16);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v6 = sub_1C4F00978();
    sub_1C43FCEE8(v6, qword_1EDDFECB8);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CC8();
    if (sub_1C43FCEA4(v8))
    {
      v9 = sub_1C43FCED0();
      sub_1C43FBD24(v9);
      sub_1C44057CC();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      sub_1C43FE9D4();
    }

    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1C45B5424()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v26 - v2;
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C43FE99C();
  sub_1C4467FE0(v8, v9);
  if (sub_1C44157D4(v3, 1, v4) == 1)
  {
    sub_1C44686E4(v3);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v10 = sub_1C4F00978();
    sub_1C43FCEE8(v10, qword_1EDDFECB8);
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CC8();
    if (sub_1C43FCEA4(v12))
    {
      v13 = sub_1C43FCED0();
      sub_1C43FBD24(v13);
      sub_1C44057CC();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      sub_1C43FE9D4();
    }

    v19 = 0;
  }

  else
  {
    v20 = sub_1C4404084();
    v21(v20);
    v22 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingSpotlightBookmarkKeyValueStoreKey);
    v23 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingSpotlightBookmarkKeyValueStoreKey + 8);
    v26[3] = v4;
    v24 = sub_1C4422F90(v26);
    (*(v5 + 16))(v24, v7, v4);
    v19 = sub_1C45B5650(v22, v23, v26);
    (*(v5 + 8))(v7, v4);
    sub_1C440962C(v26);
  }

  return v19 & 1;
}

uint64_t sub_1C45B5650(uint64_t a1, unint64_t a2, void *a3)
{
  v34[1] = *MEMORY[0x1E69E9840];
  if (*(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_kvStore))
  {
    v7 = objc_opt_self();
    sub_1C4409678(a3, a3[3]);

    v34[0] = 0;
    v8 = [v7 archivedDataWithRootObject:sub_1C4F02918() requiringSecureCoding:1 error:v34];
    swift_unknownObjectRelease();
    v9 = v34[0];
    if (v8)
    {
      v10 = sub_1C4EF9A68();
      v12 = v11;

      sub_1C495BF40();

      sub_1C4434000(v10, v12);
      return 1;
    }

    v23 = v9;
    v24 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v25 = sub_1C4F00978();
    sub_1C43FCEE8(v25, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = v24;
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CD8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v29 = 136315394;
      *(v29 + 4) = sub_1C441D828(a1, a2, v34);
      *(v29 + 12) = 2080;
      swift_getErrorValue();
      v30 = sub_1C4F02A38();
      v32 = sub_1C441D828(v30, v31, v34);

      *(v29 + 14) = v32;
      _os_log_impl(&dword_1C43F8000, v27, v28, "Failed to store spotlight bookmark: unable to archive bookmark for key %s as a data object: %s", v29, 0x16u);
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v13 = sub_1C4F00978();
    sub_1C43FCEE8(v13, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CC8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = sub_1C43FD084();
      v17 = sub_1C43FFD34();
      v34[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1C441D828(a1, a2, v34);
      sub_1C44057CC();
      _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
      sub_1C440962C(v17);
      sub_1C43FBE2C();
      sub_1C43FE9D4();
    }
  }

  return 0;
}

void sub_1C45B5B90(uint64_t a1, unint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_kvStore))
  {

    v4 = KeyValueStore.keys()();
    MEMORY[0x1EEE9AC00](v4);
    v5 = sub_1C44CE068();

    if (v5)
    {
      sub_1C43FE99C();
      sub_1C4598D88();
      if (a2 >> 60 != 15)
      {

        goto LABEL_19;
      }

      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88(&qword_1EDDFECB0);
      }

      v29 = sub_1C4F00978();
      sub_1C43FCEE8(v29, qword_1EDDFECB8);
      v19 = sub_1C4F00968();
      v30 = sub_1C4F01CC8();
      if (os_log_type_enabled(v19, v30))
      {
        v31 = sub_1C43FCED0();
        *v31 = 0;
        _os_log_impl(&dword_1C43F8000, v19, v30, "Unable to decode bookmark from keyValue store, as fetch returned nil", v31, 2u);
        sub_1C43FBE2C();
        v32 = sub_1C4404084();
        sub_1C441DFEC(v32, v33);
      }
    }

    else
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88(&qword_1EDDFECB0);
      }

      v18 = sub_1C4F00978();
      sub_1C43FCEE8(v18, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = sub_1C4F00968();
      v20 = sub_1C4F01CC8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = sub_1C43FD084();
        v35 = sub_1C43FFD34();
        *v21 = 136315138;
        v22 = sub_1C43FE99C();
        *(v21 + 4) = sub_1C441D828(v22, v23, v24);
        sub_1C43FD0B4();
        _os_log_impl(v25, v26, v27, v28, v21, 0xCu);
        sub_1C440962C(v35);
        sub_1C43FFD18();
        sub_1C43FBE2C();
      }
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v6 = sub_1C4F00978();
    sub_1C43FCEE8(v6, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CC8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = sub_1C43FD084();
      v34 = sub_1C43FFD34();
      *v9 = 136315138;
      v10 = sub_1C43FE99C();
      *(v9 + 4) = sub_1C441D828(v10, v11, v12);
      sub_1C44057CC();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      sub_1C440962C(v34);
      sub_1C43FBE2C();
      sub_1C43FE9D4();
    }
  }

LABEL_19:
  sub_1C4404084();
  sub_1C43FE9F0();
}

void *sub_1C45B6040()
{
  sub_1C45B5B90(*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingBiomeBookmarkKeyValueStoreKey), *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingBiomeBookmarkKeyValueStoreKey + 8));
  if (v1 >> 60 == 15)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v2 = sub_1C4F00978();
    sub_1C43FCEE8(v2, qword_1EDDFECB8);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CB8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = sub_1C43FCED0();
      *v5 = 0;
      sub_1C43FD0B4();
      _os_log_impl(v6, v7, v8, v9, v5, 2u);
      sub_1C43FBE2C();
      v10 = sub_1C43FD024();
      sub_1C441DFEC(v10, v11);
    }

    return 0;
  }

  else
  {
    sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
    sub_1C4461BB8(0, &qword_1EC0B9818, 0x1E698F0B8);
    v20 = sub_1C4F01D38();
    v12 = qword_1EDDFECB0;
    v13 = v20;
    if (v12 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v14 = sub_1C4F00978();
    sub_1C43FCEE8(v14, qword_1EDDFECB8);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CC8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_1C43FCED0();
      *v17 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Unarchived the Biome bookmark successfully from the KeyValueStore object", v17, 2u);
      sub_1C43FFD18();
    }

    v18 = sub_1C43FD024();
    sub_1C441DFEC(v18, v19);
  }

  return v20;
}

void sub_1C45B6350(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - v10;
  sub_1C45B5B90(*(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingSpotlightBookmarkKeyValueStoreKey), *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_autonamingSpotlightBookmarkKeyValueStoreKey + 8));
  v13 = v12;
  v15 = v14;
  if (v14 >> 60 == 15)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v16 = sub_1C4F00978();
    sub_1C43FCEE8(v16, qword_1EDDFECB8);
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CB8();
    if (sub_1C43FCEA4(v18))
    {
      v19 = sub_1C43FCED0();
      sub_1C43FBD24(v19);
      sub_1C44057CC();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      sub_1C43FE9D4();
      sub_1C441DFEC(v13, v15);
    }

    sub_1C4EF9CD8();
    sub_1C43FCF64();
    sub_1C43FE9F0();

    sub_1C440BAA8(v25, v26, v27, v28);
  }

  else
  {
    sub_1C4EF9CD8();
    sub_1C43FCF64();
    v50 = v30;
    sub_1C440BAA8(v31, v32, v33, v30);
    sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
    sub_1C4461BB8(0, &unk_1EDDDB878, 0x1E695DF00);
    v34 = sub_1C4F01D38();
    sub_1C44686E4(v11);
    v35 = 1;
    if (v34)
    {
      sub_1C43FCF64();
      v36 = v50;
      sub_1C440BAA8(v37, v38, v39, v50);
      sub_1C45B6A54();
      sub_1C4F025C8();

      if (sub_1C44157D4(v5, 1, v36) != 1)
      {
        (*(*(v36 - 8) + 32))(v8, v5, v36);
        v35 = 0;
      }
    }

    else
    {
      v36 = v50;
    }

    sub_1C440BAA8(v8, v35, 1, v36);
    sub_1C45B69E4(v8, v11);
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v40 = sub_1C4F00978();
    sub_1C43FCEE8(v40, qword_1EDDFECB8);
    v41 = sub_1C4F00968();
    v42 = sub_1C4F01CC8();
    if (sub_1C43FCEA4(v42))
    {
      v43 = sub_1C43FCED0();
      sub_1C43FBD24(v43);
      sub_1C44057CC();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
      sub_1C43FE9D4();
    }

    sub_1C441DFEC(v13, v15);

    sub_1C45B69E4(v11, a1);
    sub_1C43FE9F0();
  }
}

uint64_t sub_1C45B6808()
{
  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore28AutonamingMessagesBookmarker_config);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1C45B6888()
{
  sub_1C45B6808();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AutonamingMessagesBookmarker(uint64_t a1)
{
  result = qword_1EDDE00C8;
  if (!qword_1EDDE00C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C45B6934(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
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

uint64_t sub_1C45B69E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C45B6A54()
{
  result = qword_1EC0B9810;
  if (!qword_1EC0B9810)
  {
    sub_1C4EF9CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9810);
  }

  return result;
}

uint64_t sub_1C45B6B00()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    v2 = v0;
    memcpy(__dst, (v0 + 56), sizeof(__dst));
    type metadata accessor for AutonamingMessagesProcessHandler();
    swift_allocObject();
    sub_1C45BC048(__dst, &v4);
    v1 = sub_1C45C62B8(__dst);
    *(v2 + 176) = v1;
  }

  return v1;
}

void *sub_1C45B6BA0(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for Configuration(0);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v11 = v10 - v9;
  v2[22] = 0;
  memcpy(v2 + 7, a2, 0x70uLL);
  type metadata accessor for AutonamingMessagesModelHandler();
  swift_allocObject();
  sub_1C45BC048(a2, v33);
  v2[6] = sub_1C45C36EC();
  v12 = [BiomeLibrary() Autonaming];
  sub_1C4433BBC();
  v13 = [v3 Messages];
  swift_unknownObjectRelease();
  v14 = [v13 Inferences];
  sub_1C4433BBC();
  v15 = [v3 source];

  v4[2] = v15;
  v16 = [BiomeLibrary() Autonaming];
  sub_1C4433BBC();
  v17 = [v3 Messages];
  swift_unknownObjectRelease();
  v18 = [v17 Inferences];
  sub_1C4433BBC();
  v19 = [v3 pruner];

  v4[3] = v19;
  v20 = sub_1C43FBEF8();
  sub_1C44098F0(v20, v21);
  type metadata accessor for AutonamingMessagesBookmarker(0);
  swift_allocObject();
  sub_1C45BC048(a2, v33);
  sub_1C45B4C74(v11, a2);
  v4[4] = v22;
  v23 = [BiomeLibrary() Autonaming];
  swift_unknownObjectRelease();
  v24 = [v23 Messages];
  swift_unknownObjectRelease();
  v25 = [v24 MessageIds];
  swift_unknownObjectRelease();
  v26 = sub_1C4F01108();
  sub_1C45B6AAC(a2);
  v27 = [v25 publisherWithUseCase_];

  v4[5] = v27;
  v28 = [BiomeLibrary() Autonaming];
  swift_unknownObjectRelease();
  v29 = [v28 Messages];
  swift_unknownObjectRelease();
  v30 = [v29 AccuracyFedStats];
  swift_unknownObjectRelease();
  v31 = [v30 source];

  sub_1C4467948(a1);
  v4[21] = v31;
  return v4;
}