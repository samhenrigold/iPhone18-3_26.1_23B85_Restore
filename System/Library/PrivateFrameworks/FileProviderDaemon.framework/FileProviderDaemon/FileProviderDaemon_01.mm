uint64_t sub_1CEFE429C(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 16), a2, a3, a4, a5, a6, a7, a8;

  return swift_deallocObject();
}

uint64_t sub_1CEFE42D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1CEFE4328(uint64_t a1, uint64_t a2)
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v4 = sub_1CF9E8228();

  return sub_1CEFE43A0(a1, a2, v4);
}

unint64_t sub_1CEFE43A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1CF9E8048())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1CEFE4458(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B30, &qword_1CFA084C0);
  v33 = v4;
  result = sub_1CF9E7BD8();
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_1CEFE42D4(v34, *(&v34 + 1));
      }

      sub_1CF9E81D8();
      sub_1CF9E69C8();
      result = sub_1CF9E8228();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1CEFE4714(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1CEFE4804(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEFE4874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEFE48D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CEFE4714(result, a2);
  }

  return result;
}

uint64_t sub_1CEFE4900(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1CF9E5CF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[7];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[14] + 8) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[30];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1CEFE4A4C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[7];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[14] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[30];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1CEFE4B90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4C60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4CC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4D98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4E00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CEFE4E68()
{
  result = qword_1EDEAEDE0;
  if (!qword_1EDEAEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAEDE0);
  }

  return result;
}

uint64_t sub_1CEFE4EBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4F24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE4FF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE505C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFE50C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1CEFE510C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEFE516C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEFE51CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEFE522C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1CEFE528C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  return result;
}

void sub_1CEFE52D8(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v6 = sub_1CF9E53C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a3;
  v11 = a3[1];
  if (!os_variant_has_internal_content())
  {
    return;
  }

  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1CF9E7948();
  v12 = v67;

  v12, v13, v14, v15, v16, v17, v18, v19;
  v66 = a1;
  v67 = a2;
  MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA3D450);
  v20 = v67;
  v21 = sub_1CF9E6AE8();
  v20, v22, v23, v24, v25, v26, v27, v28;
  if ((v21 & 1) == 0)
  {
    return;
  }

  v66 = 45;
  v67 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v29);
  *(&v66 - 2) = &v66;

  v33 = sub_1CF2A8918(0x7FFFFFFFFFFFFFFFLL, 1, sub_1CF2A93F0, (&v66 - 4), v10, v11, v32, v30, v31);
  v41 = *v33->tree;
  if (!v41)
  {
LABEL_13:
    v33, v34, v35, v36, v37, v38, v39, v40;
    return;
  }

  v42 = &v33[v41];
  v43 = *v42;
  v44 = v42[1];
  v46 = v42[2];
  v45 = v42[3];
  v47 = v33;

  v47, v48, v49, v50, v51, v52, v53, v54;
  if (!((v44 ^ v43) >> 14))
  {
    v33 = v45;
    goto LABEL_13;
  }

  v55 = sub_1CF2A8DE8(v43, v44, v46, v45, 10);
  if ((v55 & 0x10000000000) != 0)
  {
    sub_1CF4C4E64(v43, v44, v46, v45, 10);
  }

  v63 = v55;
  v45, v56, v57, v58, v59, v60, v61, v62;
  if ((v63 & 0x100000000) == 0)
  {
    v64 = sub_1CF9E6138();
    if ((v64 & 0x100000000) != 0)
    {
      v65 = 22;
    }

    else
    {
      v65 = v64;
    }

    LODWORD(v66) = v65;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF2A9448(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v7 + 8))(v9, v6);
    swift_willThrow();
  }
}

uint64_t sub_1CEFE55D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1CEFE5688(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ItemMetadata(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED30, &unk_1CFA00710);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1CEFE57B8()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_startDate;
  v2 = sub_1CF9E5CF8();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  sub_1CEFD9E84(v0 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate);

  return swift_deallocClassInstance();
}

uint64_t sub_1CEFE5888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1CEFE58F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B50, &unk_1CFA171B0);
  v3 = sub_1CF9E7BE8();
  v4 = *(a1 + 32);
  LOBYTE(v5) = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_1CF7BF2C0(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v18 = v6;
    return v3;
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v10 = v3[6] + 16 * result;
    *v10 = v4;
    *(v10 + 8) = v5;
    *(v3[7] + 8 * result) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 2);
    v5 = *(v9 - 8);
    v15 = *v9;
    v16 = v6;
    result = sub_1CF7BF2C0(v4, v5);
    v9 = v14;
    v6 = v15;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for FPFileTree(uint64_t a1)
{
  result = qword_1EDEAACD0;
  if (!qword_1EDEAACD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1CEFE5A60(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t *a5, uint64_t a6)
{
  v6 = a6;
  v208 = a3;
  v212 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v209 = &v208 - v11;
  v12 = sub_1CF9E5FF8();
  v210 = *(v12 - 8);
  v211 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v208 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  v16 = sub_1CEFE65E8(a4, v6);
  v18 = v17;
  v19 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) + 40);
  v218 = v16;
  v219 = v18;

  v213 = v14;
  sub_1CEFE6798(v14);
  v219, v20, v21, v22, v23, v24, v25, v26;
  v27 = *a4;
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v30 = v29;
  v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v38 = v31;
  if (v28 == v32 && v30 == v31)
  {
    v30, v31, v32, v33, v34, v35, v36, v37;
    v38, v39, v40, v41, v42, v43, v44, v45;
  }

  else
  {
    v51 = sub_1CF9E8048();
    v30, v52, v53, v54, v55, v56, v57, v58;
    v38, v59, v60, v61, v62, v63, v64, v65;
    if ((v51 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (qword_1EDEA4368 != -1)
  {
    swift_once();
  }

  v66 = qword_1EDEBB698;
  v67 = unk_1EDEBB6A0;
  if (v16 == qword_1EDEBB698 && v18 == unk_1EDEBB6A0 || (sub_1CF9E8048() & 1) != 0)
  {
    v18, v46, v66, v67, v47, v48, v49, v50;
    if (qword_1EDEAEE10 != -1)
    {
      swift_once();
    }

    v18 = *(&xmmword_1EDEBBE48 + 1);
  }

LABEL_15:
  v68 = objc_allocWithZone(MEMORY[0x1E6967388]);
  v69 = v27;
  v70 = sub_1CF9E6888();
  v18, v71, v72, v73, v74, v75, v76, v77;
  v78 = sub_1CF9E5F38();
  v79 = [v68 initWithProviderDomainID:a2 itemIdentifier:v212 parentItemIdentifier:v69 filename:v70 contentType:v78];

  if (v208)
  {
    v80 = [v208 nsDomain];
    v81 = [v80 spotlightDomainIdentifier];

    v82 = v209;
    if (!v81)
    {
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v84 = v83;
      v81 = sub_1CF9E6888();
      v84, v85, v86, v87, v88, v89, v90, v91;
    }
  }

  else
  {
    v81 = 0;
    v82 = v209;
  }

  [v79 setSpotlightDomainIdentifier_];

  if (qword_1EDEA3498 != -1)
  {
    swift_once();
  }

  v92 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v94 = v93;
  v96 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v102 = v92;
  v103 = v95;
  if (v102 == v96 && v94 == v95)
  {
    v94, v95, v96, v97, v98, v99, v100, v101;
    v103, v104, v105, v106, v107, v108, v109, v110;
  }

  else
  {
    v111 = sub_1CF9E8048();
    v94, v112, v113, v114, v115, v116, v117, v118;
    v103, v119, v120, v121, v122, v123, v124, v125;
    if ((v111 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v126 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v128 = v127;
  v130 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v136 = v129;
  if (v126 == v130 && v128 == v129)
  {
    v128, v129, v130, v131, v132, v133, v134, v135;
    v136, v137, v138, v139, v140, v141, v142, v143;
  }

  else
  {
    v144 = sub_1CF9E8048();
    v128, v145, v146, v147, v148, v149, v150, v151;
    v136, v152, v153, v154, v155, v156, v157, v158;
    if ((v144 & 1) == 0)
    {
      [v79 setTrashed_];
    }
  }

LABEL_30:
  v159 = type metadata accessor for ItemMetadata(0);
  if (*&v19[v159[14] + 8])
  {
    v160 = a4[2];
    v218 = a4[1];
    v219 = v160;
    v216 = 47;
    v217 = 0xE100000000000000;
    v214 = 58;
    v215 = 0xE100000000000000;
    sub_1CEFE4E68();
    sub_1CF9E7668();
    v162 = v161;
    v163 = sub_1CF9E6888();
    v162, v164, v165, v166, v167, v168, v169, v170;
    [v79 setFileSystemFilename_];
  }

  if ((v15 & 0x400000000000) != 0)
  {
    v171 = &v19[v159[35]];
    if (v171[8])
    {
      v172 = 0;
    }

    else
    {
      v172 = *v171;
    }

    [v79 setTypeAndCreator_];
    if ((v15 & 2) != 0)
    {
      if ((v15 & 1) == 0)
      {
LABEL_56:
        if ((v15 & 0x20) != 0)
        {
          goto LABEL_64;
        }

        goto LABEL_57;
      }
    }

    else if ((v15 & 1) == 0)
    {
      if ((v15 & 0x20) == 0)
      {
        if ((v15 & 0x40) == 0)
        {
          if ((v15 & 0x80) == 0)
          {
            if ((v15 & 0x400) == 0)
            {
              if ((v15 & 0x800) == 0)
              {
                if ((v15 & 0x3004) != 0)
                {
                  goto LABEL_78;
                }

                if ((v15 & 0x100) != 0)
                {
                  goto LABEL_102;
                }

                goto LABEL_130;
              }

              goto LABEL_76;
            }

            goto LABEL_75;
          }

          goto LABEL_71;
        }

        goto LABEL_67;
      }

      goto LABEL_64;
    }

LABEL_63:
    if ((v15 & 0x20) != 0)
    {
LABEL_64:
      sub_1CEFCCBDC(&v19[v159[30]], v82, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      v173 = sub_1CF9E5CF8();
      v174 = *(v173 - 8);
      v175 = 0;
      if ((*(v174 + 48))(v82, 1, v173) != 1)
      {
        v175 = sub_1CF9E5C48();
        (*(v174 + 8))(v82, v173);
      }

      [v79 setLastUsedDate_];

      if ((v15 & 0x40) != 0)
      {
        goto LABEL_67;
      }

LABEL_58:
      if ((v15 & 0x80) != 0)
      {
        goto LABEL_71;
      }

LABEL_59:
      if ((v15 & 0x400) != 0)
      {
        goto LABEL_75;
      }

      goto LABEL_60;
    }

LABEL_57:
    if ((v15 & 0x40) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_58;
  }

  if ((v15 & 2) != 0)
  {
    if ((v15 & 1) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_63;
  }

  if (v15)
  {
    goto LABEL_63;
  }

  if ((v15 & 0x20) != 0)
  {
    goto LABEL_64;
  }

  if ((v15 & 0x40) == 0)
  {
    if ((v15 & 0x80) == 0)
    {
      if ((v15 & 0x400) == 0)
      {
        if ((v15 & 0x800) == 0)
        {
          if ((v15 & 0x3004) != 0)
          {
            goto LABEL_78;
          }

          if ((v15 & 0x100) != 0)
          {
            goto LABEL_102;
          }

LABEL_130:
          if ((v15 & 8) != 0)
          {
            goto LABEL_108;
          }

          goto LABEL_106;
        }

        goto LABEL_76;
      }

LABEL_75:
      v187 = sub_1CF9E5C48();
      [v79 setCreationDate_];

      if ((v15 & 0x800) == 0)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    goto LABEL_71;
  }

LABEL_67:
  v176 = *&v19[v159[31]];
  if (v176)
  {
    v177 = sub_1CF6601AC(v176);
    sub_1CEFD57E0(0, &unk_1EC4C1190, 0x1E6967428);
    v178 = sub_1CF9E6D28();
    v177, v179, v180, v181, v182, v183, v184, v185;
  }

  else
  {
    v178 = 0;
  }

  [v79 setTags_];

  if ((v15 & 0x80) == 0)
  {
    goto LABEL_59;
  }

LABEL_71:
  if (v19[v159[32] + 8])
  {
    v186 = 0;
  }

  else
  {
    v186 = sub_1CF9E8268();
  }

  [v79 setFavoriteRank_];

  if ((v15 & 0x400) != 0)
  {
    goto LABEL_75;
  }

LABEL_60:
  if ((v15 & 0x800) != 0)
  {
LABEL_76:
    v188 = sub_1CF9E5C48();
    [v79 setContentModificationDate_];
  }

LABEL_77:
  if ((v15 & 0x3004) == 0)
  {
    goto LABEL_99;
  }

LABEL_78:
  v189 = *(v19 + 5);
  if ((v189 & 0x100) != 0)
  {
    if ((v189 & 0x80) == 0)
    {
      if ((v189 & 0x40) == 0)
      {
        if ((v19[v159[10]] & 1) == 0)
        {
          v190 = 2;
          if ((v19[v159[13]] & 1) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        }

        v190 = 2;
        goto LABEL_95;
      }

      v190 = 2;
      goto LABEL_93;
    }

    v190 = 6;
    if ((v189 & 0x40) == 0)
    {
LABEL_94:
      if (v19[v159[10]] != 1)
      {
        goto LABEL_96;
      }

      goto LABEL_95;
    }

LABEL_93:
    v190 |= 1uLL;
    goto LABEL_94;
  }

  if ((v189 & 0x80) != 0)
  {
    v190 = 4;
    if ((v189 & 0x40) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if ((v189 & 0x40) != 0)
  {
    v190 = 0;
    goto LABEL_93;
  }

  if ((v19[v159[10]] & 1) == 0)
  {
    v190 = 0;
    if ((v19[v159[13]] & 1) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_97;
  }

  v190 = 0;
LABEL_95:
  v190 |= 8uLL;
LABEL_96:
  if (v19[v159[13]] == 1)
  {
LABEL_97:
    v190 |= 0x10uLL;
  }

LABEL_98:
  [v79 setFileSystemFlags_];
LABEL_99:
  if ((v15 & 0x100) == 0)
  {
    if ((v15 & 8) != 0)
    {
      goto LABEL_108;
    }

LABEL_106:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_109;
  }

LABEL_102:
  v191 = v159[33];
  if (*&v19[v191])
  {
    v192 = *&v19[v191];
  }

  else
  {
    v192 = sub_1CF009068(MEMORY[0x1E69E7CC0]);
  }

  v193 = sub_1CF9E6618();
  v192, v194, v195, v196, v197, v198, v199, v200;
  [v79 setExtendedAttributes_];

  if ((v15 & 8) == 0)
  {
    goto LABEL_106;
  }

LABEL_108:
  v201 = sub_1CF9E81A8();
  [v79 setDocumentSize_];

  if ((v15 & 0x4000) == 0)
  {
    goto LABEL_111;
  }

LABEL_109:
  if ((v19[8] & 1) == 0)
  {
    v202 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
    [v79 setChildItemCount_];
  }

LABEL_111:
  v203 = v19[v159[20]];
  [v79 setDownloaded_];
  [v79 setMostRecentVersionDownloaded_];
  v204 = v19[v159[16]];
  [v79 setIgnoreRoot_];
  v205 = v19[v159[17]];
  if (v205 != 2)
  {
    v204 |= v205;
  }

  [v79 setExcludedFromSync_];
  [v79 setUbiquitous_];
  if (*&v19[v159[38] + 8])
  {
    v206 = sub_1CF9E6888();
  }

  else
  {
    v206 = 0;
  }

  [v79 setCollaborationIdentifier_];

  (*(v210 + 8))(v213, v211);
  return v79;
}

uint64_t sub_1CEFE65E8(uint64_t a1, char a2)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F8, &unk_1CF9FEFE0) + 40);
  v5 = (a1 + *(type metadata accessor for ItemMetadata(0) + 56) + v4);
  v6 = v5[1];
  if (!v6)
  {
    v7 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v7 = *v5;
  swift_bridgeObjectRetain_n();
  v8 = sub_1CF9E69D8();
  v6, v9, v10, v11, v12, v13, v14, v15;
  if (v8 < 1)
  {
    v6, v16, v17, v18, v19, v20, v21, v22;
    v7 = 0;
    v6 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    sub_1CEFE4E68();
    v7 = sub_1CF9E7668();
    v24 = v23;
    goto LABEL_11;
  }

  0, v16, v17, v18, v19, v20, v21, v22;
  if (a2)
  {
    goto LABEL_6;
  }

LABEL_8:
  if (v6)
  {

    v24 = v6;
  }

  else
  {
    v7 = *(a1 + 8);
    v24 = *(a1 + 16);
  }

LABEL_11:

  v25 = sub_1CF9E69D8();
  v24, v26, v27, v28, v29, v30, v31, v32;
  if (v25 <= 0)
  {
    v24, v33, v34, v35, v36, v37, v38, v39;
    v7 = 0x6E776F6E6B6E7528;
  }

  v6, v33, v34, v35, v36, v37, v38, v39;
  return v7;
}

uint64_t sub_1CEFE6798@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v130 = a2;
  v4 = sub_1CF9E5EE8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v122 = (&v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1CF9E5FF8();
  v7 = *(v6 - 8);
  v127 = v6;
  v128 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v119 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v111 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v126 = &v111 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v125 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v124 = &v111 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v121 = &v111 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v111 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v123 = &v111 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v129 = &v111 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v111 - v27;
  v29 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v111 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1CF9E6118();
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  v38 = &v111 - v37;
  v39 = *v2;
  v40 = v2[*(v29 + 112)];
  if (*v2)
  {
    if (!v2[*(v29 + 112)])
    {
      if (v39 == 1)
      {

        return sub_1CF9E5F98();
      }

      else if (v39 == 2)
      {

        return sub_1CF9E5F18();
      }

      else
      {

        return sub_1CF9E5FC8();
      }
    }

    v116 = v36;
    v117 = v35;
    v118 = v34;
    if (v39 <= 2)
    {
      v41 = fpfs_current_or_default_log();
      sub_1CF9E6128();
      sub_1CEFF4408(v2, v31);
      v42 = sub_1CF9E6108();
      v43 = sub_1CF9E72B8();
      if (os_log_type_enabled(v42, v43))
      {
        LODWORD(v114) = v43;
        v44 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v131[0] = v113;
        v115 = v44;
        LODWORD(v44->super.isa) = 136315138;
        v45 = 6516580;
        v46 = 0xE700000000000000;
        v47 = 0x6B6E696C6D7973;
        if (*v31 != 2)
        {
          v47 = 0x7361696C61;
          v46 = 0xE500000000000000;
        }

        if (*v31)
        {
          v45 = 7498084;
        }

        v48 = *v31 <= 1u;
        if (*v31 <= 1u)
        {
          v49 = v45;
        }

        else
        {
          v49 = v47;
        }

        v112 = v49;
        if (v48)
        {
          v50 = 0xE300000000000000;
        }

        else
        {
          v50 = v46;
        }

        sub_1CF06DA00(v31);
        v51 = sub_1CEFD0DF0(v112, v50, v131);
        v50, v52, v53, v54, v55, v56, v57, v58;
        v59 = v115;
        *(&v115->super.isa + 4) = v51;
        _os_log_impl(&dword_1CEFC7000, v42, v114, "Inconsistent kind %s for package", v59, 0xCu);
        v60 = v113;
        __swift_destroy_boxed_opaque_existential_1(v113);
        MEMORY[0x1D386CDC0](v60, -1, -1);
        MEMORY[0x1D386CDC0](v59, -1, -1);
      }

      else
      {

        sub_1CF06DA00(v31);
      }

      (*(v117 + 8))(v38, v118);
    }

    v40 = 1;
  }

  else
  {
    v116 = v36;
    v117 = v35;
    v118 = v34;
  }

  v62 = sub_1CF9E6888();
  v63 = [v62 pathExtension];

  v64 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v66 = v65;

  if (!v40)
  {
    v114 = v64;
    v115 = v66;
    v70 = v128;
    v71 = v128[7];
    v72 = v127;
    v71(v129, 1, 1, v127);
    v73 = &v3[*(v29 + 140)];
    if ((v73[8] & 1) == 0)
    {
      sub_1CF67B3C0(*v73);
      if (v74)
      {
        sub_1CF9E5ED8();
        sub_1CF9E5F68();
        v71(v21, 0, 1, v72);
        v75 = v123;
        sub_1CF9E5F58();
        v76 = v129;
        sub_1CEFCCC44(v129, &unk_1EC4C50C0, &unk_1CFA084A0);
        sub_1CF67A774(v75, v76);
        v77 = v121;
        sub_1CEFCCBDC(v76, v121, &unk_1EC4C50C0, &unk_1CFA084A0);
        if ((v70[6])(v77, 1, v72) == 1)
        {
          sub_1CEFCCC44(v77, &unk_1EC4C50C0, &unk_1CFA084A0);
        }

        else
        {
          v78 = v120;
          (v70[4])(v120, v77, v72);
          if (sub_1CF9E5FE8())
          {
            v79 = fpfs_current_or_default_log();
            v80 = v116;
            sub_1CF9E6128();
            v81 = v119;
            (v70[2])(v119, v78, v72);
            v116 = v80;
            v82 = sub_1CF9E6108();
            v83 = sub_1CF9E7288();
            if (os_log_type_enabled(v82, v83))
            {
              v84 = swift_slowAlloc();
              v122 = swift_slowAlloc();
              v131[0] = v122;
              *v84 = 136315138;
              sub_1CF67B770(&qword_1EC4C11B8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8480]);
              v85 = sub_1CF9E7F98();
              v87 = v86;
              v88 = v128[1];
              v88(v81, v72);
              v89 = sub_1CEFD0DF0(v85, v87, v131);
              v90 = v87;
              v70 = v128;
              v90, v91, v92, v93, v94, v95, v96, v97;
              *(v84 + 4) = v89;
              _os_log_impl(&dword_1CEFC7000, v82, v83, "Dynamic type %s was found for item - denying", v84, 0xCu);
              v98 = v122;
              __swift_destroy_boxed_opaque_existential_1(v122);
              MEMORY[0x1D386CDC0](v98, -1, -1);
              MEMORY[0x1D386CDC0](v84, -1, -1);

              (*(v117 + 8))(v116, v118);
              v88(v120, v72);
              v76 = v129;
            }

            else
            {

              v99 = v70[1];
              v99(v81, v72);
              (*(v117 + 8))(v116, v118);
              v99(v78, v72);
            }

            sub_1CEFCCC44(v76, &unk_1EC4C50C0, &unk_1CFA084A0);
            v71(v76, 1, 1, v72);
          }

          else
          {
            (v70[1])(v78, v72);
          }
        }
      }
    }

    v100 = v129;
    v101 = v124;
    sub_1CEFCCBDC(v129, v124, &unk_1EC4C50C0, &unk_1CFA084A0);
    v102 = v70[6];
    if (v102(v101, 1, v72) == 1)
    {
      sub_1CEFCCC44(v101, &unk_1EC4C50C0, &unk_1CFA084A0);
      sub_1CF9E5F68();
      v110 = v123;
      sub_1CF9E5F28();
      sub_1CEFCCC44(v100, &unk_1EC4C50C0, &unk_1CFA084A0);
      sub_1CF67A774(v110, v100);
    }

    else
    {
      v115, v103, v104, v105, v106, v107, v108, v109;
      sub_1CEFCCC44(v101, &unk_1EC4C50C0, &unk_1CFA084A0);
    }

    v28 = v125;
    sub_1CEFCCBDC(v100, v125, &unk_1EC4C50C0, &unk_1CFA084A0);
    if (v102(v28, 1, v72) != 1)
    {
      sub_1CEFCCC44(v100, &unk_1EC4C50C0, &unk_1CFA084A0);
      return (v70[4])(v130, v28, v72);
    }

    sub_1CF9E5F68();
    sub_1CEFCCC44(v100, &unk_1EC4C50C0, &unk_1CFA084A0);
    result = (v102)(v28, 1, v72);
    if (result == 1)
    {
      return result;
    }

    return sub_1CEFCCC44(v28, &unk_1EC4C50C0, &unk_1CFA084A0);
  }

  sub_1CF9E5FA8();
  sub_1CF9E5F28();
  v67 = v127;
  v68 = v128;
  v69 = v128[6];
  if (v69(v28, 1, v127) != 1)
  {
    return (v68[4])(v130, v28, v67);
  }

  sub_1CF9E5FA8();
  result = (v69)(v28, 1, v67);
  if (result != 1)
  {
    return sub_1CEFCCC44(v28, &unk_1EC4C50C0, &unk_1CFA084A0);
  }

  return result;
}

uint64_t sub_1CEFE7394(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1CF9E6B38();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1CEFE73DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B58, &unk_1CFA079F0);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      v7 = v6;
      result = sub_1CEFE863C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      *(v3[7] + 8 * result) = v5;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1CEFE74D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1CEFE7548(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
  v5 = v4;

  v6 = sub_1CF9E6888();
  v5, v7, v8, v9, v10, v11, v12, v13;

  return v6;
}

uint64_t NSFileProviderItemIdentifier.encode(_:)(void *a1, uint64_t a2)
{
  v3 = sub_1CF9E6938();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  sub_1CF9E6918();
  v9 = sub_1CF9E68C8();
  v11 = v10;
  v8, v10, v12, v13, v14, v15, v16, v17;
  result = (*(v4 + 8))(v6, v3);
  if (v11 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_1CF9E5B48();
    sub_1CEFE48D8(v9, v11);
    v20 = [a1 bindObjectParameter_];

    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    return v21;
  }

  return result;
}

uint64_t sub_1CEFE7794(uint64_t a1)
{
  if ([v1 isNullAtIndex_])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  if (swift_dynamicCastMetatype())
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
  }

  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  v4 = [v1 dataAtIndex_];
  v5 = sub_1CF9E5B88();
  v7 = v6;

  sub_1CEFE78D8();
  sub_1CF9E5668();
  sub_1CEFE4714(v5, v7);

  if (!v2)
  {
    return v9;
  }

  return result;
}

unint64_t sub_1CEFE78D8()
{
  result = qword_1EDEAB9A8;
  if (!qword_1EDEAB9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB9A8);
  }

  return result;
}

uint64_t sub_1CEFE792C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2270, &qword_1CFA107B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEFE7B7C();
  sub_1CF9E8298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  v9 = 0;
  sub_1CEFE7C14(&qword_1EDEAB660, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1CF9E7D88();
  v7 = v10;
  v9 = 1;
  sub_1CF9E7D88();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1CEFE7B50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CEFE792C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1CEFE7B7C()
{
  result = qword_1EDEAB9C0[0];
  if (!qword_1EDEAB9C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAB9C0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1CEFE7C14(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CEFE7C8C()
{
  if (*v0)
  {
    return 0x7365756C6176;
  }

  else
  {
    return 1937335659;
  }
}

uint64_t storeEnumTagSinglePayload for CodableClassCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CodableClassCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

void sub_1CEFE7E00(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [a1 stringAtIndex_];
  if (!v5)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v7 = v6;
    v5 = sub_1CF9E6888();
    v7, v8, v9, v10, v11, v12, v13, v14;
  }

  *a3 = v5;
}

uint64_t sub_1CEFE7E98(void *a1, uint64_t *a2)
{
  v2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v4 = v3;
  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1CF9E8048();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

void sub_1CEFE7F20(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, a3);

  swift_unknownObjectRelease();
}

void sub_1CEFE7FA8(void *a1, void *a2, uint64_t a3)
{
  v121 = a1;
  v5 = sub_1CF9E6118();
  v6 = *(v5 - 1);
  *&v7 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 executionTime];
  v11 = v10;
  [a2 preparationTime];
  v13 = v12;
  v120 = [a2 stmt];
  if (!sqlite3_sql(v120))
  {
    goto LABEL_26;
  }

  v14 = v11 + v13;
  v15 = sub_1CF9E6A58();
  v17 = v16;
  v18 = OBJC_IVAR____TtC18FileProviderDaemon27PQLConnectionWithStatistics_dbStatistics;
  swift_beginAccess();
  v26 = *(a3 + v18);
  if (v26)
  {
    if (*v26->tree)
    {

      v27 = sub_1CEFE4328(v15, v17);
      if (v28)
      {
        v35 = *(*v26[1].tester + 8 * v27);
        v26, v36, v37, v38, v39, v40, v41, v42;
        v43 = [v35 count];
        if (!__OFADD__(v43, 1))
        {
          [v35 setCount_];
          [v35 cumulatedTime];
          [v35 setCumulatedTime_];
          [v35 minTime];
          if (v14 < v45)
          {
            [v35 setMinTime_];
          }

          [v35 maxTime];
          if (v46 < v14)
          {
            [v35 setMaxTime_];
          }

          [v35 cumulatedTime];
          v48 = v47;
          v49 = [v35 count];
          v50 = (v14 - v48 / v49) * (v14 - v48 / v49);
          [v35 cumulatedSquareDiffFromMean];
          [v35 setCumulatedSquareDiffFromMean_];
LABEL_15:

          goto LABEL_16;
        }

        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      v26, v28, v29, v30, v31, v32, v33, v34;
    }

    v119 = v9;
    v52 = v6;
    v35 = [objc_allocWithZone(MEMORY[0x1E6967400]) initWithMinTime:1 maxTime:0 cumulatedTime:v11 + v13 cumulatedSquareDiffFromMean:v11 + v13 count:v11 + v13 queryPlan:0.0];
    v54 = sub_1CF32A48C(v123);
    if (*v53)
    {
      v55 = v53;

      v35 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = *v55;
      *v55 = 0x8000000000000000;
      sub_1CF1D25D4(v35, v15, v17, isUniquelyReferenced_nonNull_native);
      v17, v57, v58, v59, v60, v61, v62, v63;
      *v55 = v122;
    }

    (v54)(v123, 0);
    v6 = v52;
    v9 = v119;
    goto LABEL_15;
  }

LABEL_16:
  if (*(a3 + OBJC_IVAR____TtC18FileProviderDaemon27PQLConnectionWithStatistics_maxQueryExecutionTime) / 1000.0 >= v14 * 1000.0 || (sub_1CF9E6AE8() & 1) != 0 || (sub_1CF9E6AE8() & 1) != 0 || (sub_1CF9E6AE8() & 1) != 0 || (sub_1CF9E6AE8() & 1) != 0)
  {
    v17, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    v119 = v6;
    v118 = [a2 returnedRows];
    v64 = v120;
    v117 = sqlite3_column_count(v120);
    v116 = sqlite3_bind_parameter_count(v64);
    v65 = sqlite3_stmt_status(v64, 4, 0);
    v121 = [v121 changes];
    v66 = sqlite3_stmt_status(v64, 1, 0);
    v67 = sqlite3_stmt_status(v64, 2, 0);
    v68 = sqlite3_stmt_status(v64, 3, 0);
    v69 = fpfs_current_or_default_log();
    sub_1CF9E6128();

    v70 = sub_1CF9E6108();
    v71 = v9;
    v72 = sub_1CF9E7298();
    v17, v73, v74, v75, v76, v77, v78, v79;
    if (os_log_type_enabled(v70, v72))
    {
      v114 = v67;
      v115 = v68;
      v113 = v66;
      v120 = v5;
      v80 = v65;
      v81 = v116;
      v82 = v117;
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v123[0] = v84;
      *v83 = 136448514;
      v85 = sub_1CEFD0DF0(v15, v17, v123);
      v86 = v71;
      v87 = v85;
      v17, v88, v89, v90, v91, v92, v93, v94;
      *(v83 + 4) = v87;
      *(v83 + 12) = 2048;
      *(v83 + 14) = v81;
      *(v83 + 22) = 2048;
      *(v83 + 24) = v82;
      *(v83 + 32) = 2048;
      *(v83 + 34) = v118;
      *(v83 + 42) = 2048;
      *(v83 + 44) = v121;
      *(v83 + 52) = 2048;
      *(v83 + 54) = v80;
      *(v83 + 62) = 2048;
      *(v83 + 64) = v11;
      *(v83 + 72) = 2048;
      *(v83 + 74) = v13;
      *(v83 + 82) = 2048;
      *(v83 + 84) = v14;
      *(v83 + 92) = 2082;
      v95 = sub_1CF0457B0(v113, v114, v115);
      v97 = v96;
      v98 = sub_1CEFD0DF0(v95, v96, v123);
      v97, v99, v100, v101, v102, v103, v104, v105;
      *(v83 + 94) = v98;
      _os_log_impl(&dword_1CEFC7000, v70, v72, "🐢 Possible slow statement on %{public}s:\n  binds:    %ld\n  columns:  %ld\n  rows:     %ld\n  changes:  %ld\n  vm steps: %ld\n  execution time: %fs preparation time: %fs total time: %fs\n  warning: %{public}s", v83, 0x66u);
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v84, -1, -1);
      MEMORY[0x1D386CDC0](v83, -1, -1);

      (*(v119 + 1))(v86, v120);
    }

    else
    {

      v17, v106, v107, v108, v109, v110, v111, v112;
      (*(v119 + 1))(v71, v5);
    }
  }
}

void sub_1CEFE8644(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1CEFE863C(a2);
  v16 = *(v7 + 16);
  v17 = (v9 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v9;
  v21 = *(v7 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 < v19 || (a3 & 1) != 0)
    {
      sub_1CEFE8944(v19, a3 & 1);
      v8 = sub_1CEFE863C(a2);
      if ((v20 & 1) != (v9 & 1))
      {
LABEL_18:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = v8;
      sub_1CF7D26A8();
      v8 = v22;
    }
  }

  v23 = *v4;
  if (v20)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v8);
    *(v24 + 8 * v8) = a1;

    v25, v9, v10, v11, v12, v13, v14, v15;
    return;
  }

  v23[(v8 >> 6) + 8] |= 1 << v8;
  *(v23[6] + 8 * v8) = a2;
  *(v23[7] + 8 * v8) = a1;
  v26 = v23[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;

  v28 = a2;
}

unint64_t sub_1CEFE87B0(uint64_t a1)
{
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v3 = v2;
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v4 = sub_1CF9E8228();
  v3, v5, v6, v7, v8, v9, v10, v11;
  return sub_1CEFE8840(a1, v4);
}

unint64_t sub_1CEFE8840(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v8 = v7;
      v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v17 = v10;
      if (v6 == v9 && v8 == v10)
      {
        break;
      }

      v19 = sub_1CF9E8048();
      v8, v20, v21, v22, v23, v24, v25, v26;
      v17, v27, v28, v29, v30, v31, v32, v33;
      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    v8, v10, v11, v12, v13, v14, v15, v16;
    v17, v34, v35, v36, v37, v38, v39, v40;
  }

  return v4;
}

void sub_1CEFE8944(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B58, &unk_1CFA079F0);
  v44 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v42 = v2;
    v43 = v5;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v45 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v44 & 1) == 0)
      {

        v23 = v21;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v25 = v24;
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v26 = sub_1CF9E8228();
      v25, v27, v28, v29, v30, v31, v32, v33;
      v34 = -1 << *(v7 + 32);
      v35 = v26 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v43;
      v12 = v45;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        v45 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_1CEFE8C10(uint64_t a1, uint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
LABEL_54:
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEAE208 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v98 = sub_1CF9E82E8();
  v100 = v3;
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();
  v11 = off_1EDEAE210;
  if (*(off_1EDEAE210 + 2))
  {
    v12 = sub_1CEFE4328(v98, v100);
    v14 = v13;
    v100, v13, v15, v16, v17, v18, v19, v20;
    if (v14)
    {
      v21 = *(v11[7] + 16 * v12);
      swift_endAccess();
      swift_beginAccess();

      goto LABEL_52;
    }
  }

  else
  {
    v100, v4, v5, v6, v7, v8, v9, v10;
  }

  swift_endAccess();
  v22 = sub_1CEFE9C6C();
  v30 = v22;
  v31 = *v22->tree;
  if (v31)
  {
    v97 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v31, 0);
    v32 = 0;
    v33 = v97;
    while (1)
    {
      if (v32 >= *v30->tree)
      {
        __break(1u);
        goto LABEL_54;
      }

      v34 = *(&v30[1].super.isa + v32);
      v35 = (v34 >> 4) & 3;
      if (v35 > 1)
      {
        if (v35 != 2)
        {

          v52 = 0xD000000000000015;
          if (v34 != 53)
          {
            v52 = 0xD000000000000013;
          }

          v53 = 0x80000001CFA36880;
          if (v34 == 53)
          {
            v53 = 0x80000001CFA368A0;
          }

          v54 = 0xEB0000000065676ELL;
          v55 = 0xD000000000000020;
          if (v34 == 51)
          {
            v55 = 0x6168635F7473616CLL;
          }

          else
          {
            v54 = 0x80000001CFA368C0;
          }

          if (v34 <= 52)
          {
            v52 = v55;
            v53 = v54;
          }

          v56 = 0x6E6964696C6C6F63;
          if (v34 != 49)
          {
            v56 = 0x5F73695F6D657469;
          }

          v57 = 0xEC00000064695F67;
          if (v34 != 49)
          {
            v57 = 0xEF64656B636F6C66;
          }

          if (v34 == 48)
          {
            v56 = 1684957547;
            v57 = 0xE400000000000000;
          }

          if (v34 <= 50)
          {
            v50 = v56;
          }

          else
          {
            v50 = v52;
          }

          if (v34 <= 50)
          {
            v51 = v57;
          }

          else
          {
            v51 = v53;
          }

          goto LABEL_46;
        }

        v94 = 0x696C756465686373;
        v96 = 0xEB000000005F676ELL;
        if (v34)
        {
          v37 = 0x6D617473656D6974;
        }

        else
        {
          v37 = 0x797469726F697270;
        }

        if (v34)
        {
          v38 = 0xE900000000000070;
        }

        else
        {
          v38 = 0xE800000000000000;
        }

        MEMORY[0x1D3868CC0](v37, v38);
        v46 = v38;
      }

      else
      {
        if (v35)
        {
          v94 = 6254694;
          v96 = 0xE300000000000000;

          v36 = v34 & 0xCF;
        }

        else
        {
          v94 = 6255462;
          v96 = 0xE300000000000000;

          v36 = v34;
        }

        v47 = sub_1CF3575E8(v36);
        v49 = v48;
        MEMORY[0x1D3868CC0](v47);
        v46 = v49;
      }

      v46, v39, v40, v41, v42, v43, v44, v45;
      v50 = v94;
      v51 = v96;
LABEL_46:
      MEMORY[0x1D3868CC0](v50, v51);
      v51, v58, v59, v60, v61, v62, v63, v64;
      v73 = *(v97 + 16);
      v72 = *(v97 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_1CEFE95CC((v72 > 1), v73 + 1, 1);
      }

      ++v32;
      *(v97 + 16) = v73 + 1;
      v74 = v97 + 16 * v73;
      *(v74 + 32) = a1;
      *(v74 + 40) = a2;
      if (v31 == v32)
      {
        v30, v65, v66, v67, v68, v69, v70, v71;
        goto LABEL_51;
      }
    }
  }

  v22, v23, v24, v25, v26, v27, v28, v29;
  v33 = MEMORY[0x1E69E7CC0];
LABEL_51:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v21 = sub_1CF9E67D8();
  v76 = v75;
  v33, v75, v77, v78, v79, v80, v81, v82;
  v99 = sub_1CF9E82E8();
  v101 = v83;
  MEMORY[0x1D3868CC0](46, 0xE100000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v95 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v21, v76, v99, v101, isUniquelyReferenced_nonNull_native);
  v101, v85, v86, v87, v88, v89, v90, v91;
  off_1EDEAE210 = v95;
  swift_endAccess();
  swift_beginAccess();
LABEL_52:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v21;
}

uint64_t sub_1CEFE91F8(unint64_t a1, unint64_t a2)
{
  if (qword_1EDEAB730 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    swift_beginAccess();
    os_unfair_recursive_lock_lock_with_options();
    swift_endAccess();
    if (qword_1EDEAE208 != -1)
    {
      swift_once();
    }

    MEMORY[0x1D3868CC0](a1, a2);
    swift_beginAccess();
    v10 = off_1EDEAE210;
    if (*(off_1EDEAE210 + 2))
    {
      v11 = sub_1CEFE4328(0xD00000000000001ALL, 0x80000001CFA36860);
      v13 = v12;
      0x80000001CFA36860, v12, v14, v15, v16, v17, v18, v19;
      if (v13)
      {
        v20 = *(v10[7] + 16 * v11);
        swift_endAccess();
        swift_beginAccess();

        goto LABEL_17;
      }
    }

    else
    {
      0x80000001CFA36860, v3, v4, v5, v6, v7, v8, v9;
    }

    swift_endAccess();
    v21 = sub_1CEFF12E8();
    v29 = v21;
    v30 = *v21->tree;
    if (!v30)
    {
      break;
    }

    v71 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v30, 0);
    v31 = 0;
    v32 = v71;
    while (v31 < *v29->tree)
    {
      v33 = sub_1CEFF1E08(*(&v29[1].super.isa + v31));
      v35 = v34;

      MEMORY[0x1D3868CC0](v33, v35);
      v35, v36, v37, v38, v39, v40, v41, v42;
      v51 = *(v71 + 16);
      v50 = *(v71 + 24);
      if (v51 >= v50 >> 1)
      {
        sub_1CEFE95CC((v50 > 1), v51 + 1, 1);
      }

      ++v31;
      *(v71 + 16) = v51 + 1;
      v52 = v71 + 16 * v51;
      *(v52 + 32) = a1;
      *(v52 + 40) = a2;
      if (v30 == v31)
      {
        v29, v43, v44, v45, v46, v47, v48, v49;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  v21, v22, v23, v24, v25, v26, v27, v28;
  v32 = MEMORY[0x1E69E7CC0];
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v20 = sub_1CF9E67D8();
  v54 = v53;
  v32, v53, v55, v56, v57, v58, v59, v60;
  MEMORY[0x1D3868CC0](a1, a2);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = off_1EDEAE210;
  off_1EDEAE210 = 0x8000000000000000;
  sub_1CF1D19D0(v20, v54, 0xD00000000000001ALL, 0x80000001CFA36860, isUniquelyReferenced_nonNull_native);
  0x80000001CFA36860, v62, v63, v64, v65, v66, v67, v68;
  off_1EDEAE210 = v72;
  swift_endAccess();
  swift_beginAccess();
LABEL_17:
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v20;
}

char *sub_1CEFE95CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CEFE95EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CEFE95EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D0, &unk_1CF9FE760);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1CEFE96F8(unint64_t a1, __int16 a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v10 = sub_1CF9E6938();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x100) == 0)
  {
    v10 = a2;
    v40 = a3;
    v41 = a4;

    a4 = &v40;
    MEMORY[0x1D3868CC0](21318, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
    if (a2)
    {
      if (a2 == 1)
      {
        if ((a1 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_6;
        }
      }

      else
      {
        a1 = (a1 != 0) << 63;
      }
    }

    else
    {
      a1 = -a1;
    }

    v31 = [a5 bindLongParameter_];
    v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v30 = v32;

    goto LABEL_11;
  }

LABEL_6:
  v40 = a3;
  v41 = a4;

  MEMORY[0x1D3868CC0](20550, 0xE200000000000000);
  MEMORY[0x1D3868CC0](0x203D2064695FLL, 0xE600000000000000);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;
  sub_1CF9E6918();
  v16 = sub_1CF9E68C8();
  v18 = v17;
  v15, v17, v19, v20, v21, v22, v23, v24;
  result = (*(v11 + 8))(v13, v10);
  if (v18 >> 60 != 15)
  {
    v26 = sub_1CF9E5B48();
    sub_1CEFE48D8(v16, v18);
    v27 = [a5 bindObjectParameter_];

    v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v30 = v29;

LABEL_11:
    MEMORY[0x1D3868CC0](v28, v30);
    v30, v33, v34, v35, v36, v37, v38, v39;
    return v40;
  }

  __break(1u);
  return result;
}

unint64_t sub_1CEFE9968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B60, &qword_1CFA170F0);
    v3 = sub_1CF9E7BE8();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      memcpy(__dst, v4, 0x388uLL);
      v6 = __dst[0];
      v7 = LOBYTE(__dst[1]);
      v8 = BYTE1(__dst[1]);
      sub_1CEFCCBDC(__dst, v15, &qword_1EC4C0B68, &unk_1CFA07A00);
      result = sub_1CEFF4768(v6, v7 | (v8 << 8));
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 16 * result;
      *v11 = v6;
      *(v11 + 8) = v7;
      *(v11 + 9) = v8;
      result = memcpy((v3[7] + 888 * result), &__dst[2], 0x378uLL);
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_11;
      }

      v3[2] = v14;
      if (!i)
      {

        return v3;
      }

      v4 += 904;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1CEFE9AC4(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1CF9E5268();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 0x8000000000000000)
    {
      LOBYTE(v10) = 2;
      a1 = 1;
    }

    else if ((a1 & 0x8000000000000000) != 0)
    {
      a1 = -a1;
      v10 = HIDWORD(a1);
      if (HIDWORD(a1))
      {
        v11 = v7;
        sub_1CF9E51B8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        sub_1CF9E57D8();
        sub_1CF9E50D8();
        (*(v6 + 8))(v9, v11);
        swift_willThrow();
        return;
      }
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 2;
  }

  *a2 = a1;
  *(a2 + 8) = v10;
}

uint64_t sub_1CEFE9C6C()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFBC0, &unk_1CF9FCAC0);
  v0 = sub_1CF9E82E8();
  v2 = v1;
  swift_beginAccess();
  v10 = off_1EDEADD38;
  if (!*(off_1EDEADD38 + 2))
  {
    v2, v3, v4, v5, v6, v7, v8, v9;
    goto LABEL_9;
  }

  v11 = sub_1CEFE4328(v0, v2);
  v13 = v12;
  v2, v12, v14, v15, v16, v17, v18, v19;
  if ((v13 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    v20 = sub_1CF1CD93C();
    v21 = sub_1CF9E82E8();
    v23 = v22;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE188, &qword_1CFA03800);
    *&v27 = v20;
    swift_beginAccess();

    sub_1CF1C8750(&v27, v21, v23);
    swift_endAccess();
    goto LABEL_10;
  }

  sub_1CEFD1104(v10[7] + 32 * v11, &v27);
  swift_endAccess();
  sub_1CEFE9EB8(&v27, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE188, &qword_1CFA03800);
  swift_dynamicCast();
  v20 = v25;
LABEL_10:
  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v20;
}

_OWORD *sub_1CEFE9EB8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1CEFE9EC8(uint64_t a1@<X0>, id a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = [a2 columns];
  v7 = sub_1CEFEA134();
  v8 = MEMORY[0x1D38688F0](v6, &type metadata for ItemReconciliationSQLFields, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = 0;
  v10 = *(a1 + 16);
  v11 = a1 + 32;
  while (1)
  {
    if (v10 == v9)
    {
      sub_1CEFEC2AC(v8, a4);
LABEL_20:
      v8, v13, v14, v15, v16, v17, v18, v19;
      return;
    }

    if (__OFADD__(a3, v9))
    {
      break;
    }

    v12 = *(v11 + v9);
    sub_1CEFEA188(*(v11 + v9), a2, (a3 + v9), &v36);
    if (v4)
    {
      goto LABEL_20;
    }

    if (v37)
    {
      sub_1CEFE9EB8(&v36, v38);
      sub_1CEFD1104(v38, &v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v8;
      v22 = sub_1CEFEAD20(v12);
      v23 = *v8->tree;
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_23;
      }

      v26 = v21;
      if (*v8->tester >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v8 = v39;
          if (v21)
          {
            goto LABEL_15;
          }
        }

        else
        {
          sub_1CF7CF9F4();
          v8 = v39;
          if (v26)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        sub_1CF7C4798(v25, isUniquelyReferenced_nonNull_native);
        v27 = sub_1CEFEAD20(v12);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_25;
        }

        v22 = v27;
        v8 = v39;
        if (v26)
        {
LABEL_15:
          v29 = (*v8[1].tester + 32 * v22);
          __swift_destroy_boxed_opaque_existential_1(v29);
          sub_1CEFE9EB8(&v36, v29);
          __swift_destroy_boxed_opaque_existential_1(v38);
          goto LABEL_3;
        }
      }

      *(&v8[2].super.isa + (v22 >> 6)) |= 1 << v22;
      *(*v8[1].tree + v22) = v12;
      sub_1CEFE9EB8(&v36, (*v8[1].tester + 32 * v22));
      __swift_destroy_boxed_opaque_existential_1(v38);
      v30 = *v8->tree;
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_24;
      }

      *v8->tree = v32;
    }

    else
    {
      sub_1CEFCCC44(&v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    }

LABEL_3:
    if (++v9 == 0x80000000)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1CF9E8108();
  __break(1u);
}

unint64_t sub_1CEFEA134()
{
  result = qword_1EDEAC2C0[0];
  if (!qword_1EDEAC2C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDEAC2C0);
  }

  return result;
}

void sub_1CEFEA188(unsigned int a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1CF9E79E8();
  v10 = *(v9 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a1 >> 4) & 3;
  if (v15 <= 1)
  {
    if (v15)
    {
      sub_1CEFEBB94(a2, a1 & 0xCF, a3, a4);
    }

    else
    {
      sub_1CEFEA6F0(a2, a1, a3, a4);
    }

    return;
  }

  if (v15 == 2)
  {
    if (a1)
    {
      *(a4 + 24) = &type metadata for NSecTimestamp;
      v16 = [a2 longAtIndex_];
    }

    else
    {
      *(a4 + 24) = &type metadata for JobSchedulingPriority;
      v16 = [a2 unsignedLongAtIndex_];
    }

    *a4 = v16;
    return;
  }

  if (a1 > 0x32u)
  {
    if (a1 <= 0x34u)
    {
      if (a1 != 51)
      {
        v17 = [a2 BOOLAtIndex_];
        *(a4 + 24) = MEMORY[0x1E69E6370];
        *a4 = v17;
        return;
      }

      goto LABEL_21;
    }

    if (a1 != 53)
    {
LABEL_21:
      v21 = [a2 longAtIndex_];
      v22 = MEMORY[0x1E69E6530];
      goto LABEL_22;
    }

    if (([a2 isNullAtIndex_] & 1) == 0)
    {
      v21 = [a2 longAtIndex_];
      v22 = &type metadata for PolicyContentStatus;
LABEL_22:
      *(a4 + 24) = v22;
      *a4 = v21;
      return;
    }

LABEL_36:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  if (a1 == 48)
  {
    if (([a2 isNullAtIndex_] & 1) == 0)
    {
      sub_1CEFEC210(a3, &v34);
      if (v4)
      {
        return;
      }

      v23 = v34;
      if (v34 != 4)
      {
        *(a4 + 24) = &type metadata for FileItemKind;
        *a4 = v23;
        return;
      }
    }

    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  if (a1 != 49)
  {
    if ([a2 isNullAtIndex_])
    {
      *(a4 + 24) = &type metadata for SyncPausedStatus;
      *a4 = 0;
      return;
    }

    if (![a2 isNullAtIndex_])
    {
      v21 = [a2 longAtIndex_];
      v22 = &type metadata for SyncPausedStatus;
      goto LABEL_22;
    }

    goto LABEL_36;
  }

  v18 = v11;
  v19 = [a2 isNullAtIndex_];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE520, &qword_1CF9FEF10);
  *(a4 + 24) = v20;
  if (v19)
  {
    *a4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v33 = v20;
    v24 = sub_1CF1E071C(a3);
    if (v4)
    {
      __swift_deallocate_boxed_opaque_existential_0(a4);
      v35 = v4;
      v25 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      if (swift_dynamicCast())
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4730, &unk_1CFA16880);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1CF9FA450;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
        if ([a2 isNullAtIndex_])
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
        }

        type metadata accessor for NSFileProviderItemIdentifier(0);
        if (swift_dynamicCastMetatype())
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 262);
        }

        sub_1CF9E5688();
        swift_allocObject();
        sub_1CF9E5678();
        v26 = [a2 dataAtIndex_];
        v27 = sub_1CF9E5B88();
        v29 = v28;

        sub_1CEFCCCEC(&qword_1EC4BE528, &unk_1EC4BFC10, &qword_1CF9FE510, &unk_1CF9FEAD0);
        v30 = v32;
        sub_1CF9E5668();
        sub_1CEFE4714(v27, v29);

        *(a4 + 24) = v33;
        *a4 = v30;
        (*(v10 + 8))(v14, v18);
      }

      else
      {
      }
    }

    else
    {
      *a4 = v24;
    }
  }
}

void sub_1CEFEA6F0(id a1@<X1>, unsigned __int8 a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 >> 6) <= 1u)
  {
    if (!(a2 >> 6))
    {
      v8 = a3;
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_73;
      }

      if (a2 <= 2u)
      {
        v9 = v8;
        if (a2)
        {
          if (a2 == 1)
          {
            if ([a1 isNullAtIndex_])
            {
              goto LABEL_73;
            }

LABEL_50:
            v29 = [a1 unsignedIntAtIndex_];
            *(a4 + 24) = MEMORY[0x1E69E7668];
            *a4 = v29;
            return;
          }

          if (([a1 isNullAtIndex_] & 1) == 0)
          {
            v45 = [a1 dataAtIndex_];
            v12 = sub_1CF9E5B88();
            v14 = v46;

            v15 = MEMORY[0x1E6969080];
            goto LABEL_71;
          }

          goto LABEL_73;
        }

        goto LABEL_67;
      }

      if (a2 != 3 && a2 != 4)
      {
        if ([a1 isNullAtIndex_])
        {
          goto LABEL_73;
        }

        v18 = [a1 unsignedIntegerAtIndex_];
        v19 = MEMORY[0x1E69E6810];
        goto LABEL_76;
      }

      goto LABEL_42;
    }

    if ((a2 & 0x3F) == 0)
    {
      v18 = [a1 longAtIndex_];
      v19 = MEMORY[0x1E69E6530];
LABEL_76:
      *(a4 + 24) = v19;
      goto LABEL_77;
    }

    if ((a2 & 0x3F) == 1)
    {
      v16 = &type metadata for JobWaitCondition;
LABEL_45:
      *(a4 + 24) = v16;
      v18 = [a1 longAtIndex_];
LABEL_77:
      *a4 = v18;
      return;
    }

    if ([a1 isNullAtIndex_])
    {
      goto LABEL_73;
    }

    v21 = sub_1CF1DFFC4(a3);
    if (v4)
    {
      return;
    }

    v22 = v21;
    v23 = type metadata accessor for Continuation();
LABEL_57:
    *(a4 + 24) = v23;
    *a4 = v22;
    return;
  }

  if (a2 >> 6 != 3)
  {
    if (a2 > 0x83u)
    {
      if (a2 > 0x85u)
      {
        if (a2 != 134)
        {
          if ([a1 isNullAtIndex_])
          {
            goto LABEL_73;
          }

          v18 = [a1 longLongAtIndex_];
          if ((v18 & 0x8000000000000000) == 0)
          {
            goto LABEL_68;
          }

          __break(1u);
LABEL_67:
          v18 = [a1 unsignedLongLongAtIndex_];
LABEL_68:
          v19 = MEMORY[0x1E69E76D8];
          goto LABEL_76;
        }

        v27 = [a1 BOOLAtIndex_];
        v28 = MEMORY[0x1E69E6370];
      }

      else
      {
        if (a2 == 132)
        {
          *(a4 + 24) = &type metadata for ContentStatus;
          v17 = sub_1CEFEBAE8(a3);
          if (v4)
          {
            __swift_deallocate_boxed_opaque_existential_0(a4);
          }

          else
          {
            *a4 = v17;
          }

          return;
        }

        if ([a1 isNullAtIndex_])
        {
          goto LABEL_73;
        }

        v27 = sub_1CF1E0758(a3);
        if (v4)
        {
          return;
        }

        v28 = &type metadata for DiskImportStatus;
      }
    }

    else
    {
      if (a2 <= 0x81u)
      {
        if (a2 != 128)
        {
          v16 = &type metadata for DeletionStatus;
          goto LABEL_45;
        }

        goto LABEL_37;
      }

      if (a2 == 130)
      {
        v16 = &type metadata for Fields;
        goto LABEL_45;
      }

      if ([a1 isNullAtIndex_])
      {
        goto LABEL_73;
      }

      v27 = sub_1CEFEBAE8(a3);
      if (v4)
      {
        return;
      }

      v28 = &type metadata for MaterializationStatus;
    }

    *(a4 + 24) = v28;
    *a4 = v27;
    return;
  }

  if (a2 <= 0xC2u)
  {
    if (a2 == 192)
    {
      v8 = a3;
      if (([a1 isNullAtIndex_] & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_73;
    }

    if (a2 == 193)
    {
      v8 = a3;
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_73;
      }

LABEL_42:
      v18 = [a1 longLongAtIndex_];
      v19 = MEMORY[0x1E69E7360];
      goto LABEL_76;
    }

LABEL_37:
    v24 = a3;
    if ([a1 isNullAtIndex_])
    {
      goto LABEL_73;
    }

    sub_1CEFE9AC4([a1 longAtIndex_], &v49);
    if (!v4)
    {
      v25 = v49;
      v26 = v50;
      *(a4 + 24) = &type metadata for VFSItemID;
      *a4 = v25;
      *(a4 + 8) = v26;
    }

    return;
  }

  if (a2 > 0xC4u)
  {
    if (a2 != 197)
    {
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_73;
      }

      v41 = [a1 integerAtIndex_];
      if (!v41)
      {
        goto LABEL_73;
      }

      v22 = [objc_opt_self() domainVersionWithVersion_];
      v23 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
      goto LABEL_57;
    }

    if ([a1 isNullAtIndex_])
    {
      goto LABEL_73;
    }

    LODWORD(v48) = 0;
    v47 = 69;
    sub_1CF9E7B68();
    __break(1u);
    goto LABEL_37;
  }

  if (a2 == 195)
  {
    if (([a1 isNullAtIndex_] & 1) == 0)
    {
      v11 = [a1 stringAtIndex_];
      v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v14 = v13;

      v15 = &type metadata for Filename;
LABEL_71:
      *(a4 + 24) = v15;
      *a4 = v12;
      *(a4 + 8) = v14;
      return;
    }

LABEL_73:
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

  if ([a1 isNullAtIndex_])
  {
    goto LABEL_73;
  }

  v31 = sub_1CF1DFE74(a3);
  if (!v4)
  {
    v35 = v31;
    v36 = v32;
    v37 = v33;
    v38 = v34;
    *(a4 + 24) = &type metadata for VFSVersion;
    v39 = swift_allocObject();
    *a4 = v39;
    *(v39 + 16) = v35;
    *(v39 + 24) = v36;
    *(v39 + 32) = v37;
    *(v39 + 40) = v38 & 1;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1CEFEAD4C(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1CF9E81D8();
  a2(v8, a1);
  v5 = sub_1CF9E8228();

  return a3(a1, v5);
}

void sub_1CEFEADCC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a2 >> 4) & 3;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      MEMORY[0x1D386A470](4);
      if (v2)
      {
        v7 = 0xE900000000000070;
      }

      else
      {
        v7 = 0xE800000000000000;
      }

      sub_1CF9E69C8();

      v7, v8, v9, v10, v11, v12, v13, v14;
    }

    else
    {
      if (a2 <= 0x32u)
      {
        if (a2 == 48)
        {
          v15 = 2;
        }

        else if (a2 == 49)
        {
          v15 = 3;
        }

        else
        {
          v15 = 5;
        }
      }

      else if (a2 > 0x34u)
      {
        if (a2 == 53)
        {
          v15 = 8;
        }

        else
        {
          v15 = 9;
        }
      }

      else if (a2 == 51)
      {
        v15 = 6;
      }

      else
      {
        v15 = 7;
      }

      MEMORY[0x1D386A470](v15);
    }
  }

  else
  {
    if (v4)
    {
      MEMORY[0x1D386A470](1);
      v6 = v2 & 0xCF;
      v5 = a1;
    }

    else
    {
      MEMORY[0x1D386A470](0);
      v5 = a1;
      v6 = v2;
    }

    sub_1CEFEAF20(v5, v6);
  }
}

void sub_1CEFEAF20(uint64_t a1, unsigned __int8 a2)
{
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 == 3)
    {
      if (a2 <= 0xC2u)
      {
        if (a2 == 192)
        {
          v8 = 10;
        }

        else if (a2 == 193)
        {
          v8 = 11;
        }

        else
        {
          v8 = 12;
        }
      }

      else if (a2 > 0xC4u)
      {
        if (a2 == 197)
        {
          v8 = 15;
        }

        else
        {
          v8 = 16;
        }
      }

      else if (a2 == 195)
      {
        v8 = 13;
      }

      else
      {
        v8 = 14;
      }
    }

    else if (a2 > 0x83u)
    {
      if (a2 > 0x85u)
      {
        if (a2 == 134)
        {
          v8 = 6;
        }

        else
        {
          v8 = 9;
        }
      }

      else if (a2 == 132)
      {
        v8 = 4;
      }

      else
      {
        v8 = 5;
      }
    }

    else if (a2 > 0x81u)
    {
      if (a2 == 130)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = a2 != 128;
    }

    MEMORY[0x1D386A470](v8);
  }

  else
  {
    if (a2 >> 6)
    {
      MEMORY[0x1D386A470](8);
      if ((a2 & 0x3F) != 0)
      {
        if ((a2 & 0x3F) == 1)
        {
          v7 = 0x80000001CFA2C3F0;
        }

        else
        {
          v7 = 0x80000001CFA2C410;
        }
      }

      else
      {
        v7 = 0xE500000000000000;
      }
    }

    else
    {
      MEMORY[0x1D386A470](7);
      v3 = 0xE700000000000000;
      v4 = 0xE800000000000000;
      v5 = 0xE600000000000000;
      if (a2 != 4)
      {
        v5 = 0xE500000000000000;
      }

      if (a2 != 3)
      {
        v4 = v5;
      }

      v6 = 0xE900000000000074;
      if (a2 != 1)
      {
        v6 = 0xEC000000746E6574;
      }

      if (a2)
      {
        v3 = v6;
      }

      if (a2 <= 2u)
      {
        v7 = v3;
      }

      else
      {
        v7 = v4;
      }
    }

    sub_1CF9E69C8();

    v7, v9, v10, v11, v12, v13, v14, v15;
  }
}

unint64_t sub_1CEFEB194(unsigned __int8 a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if (((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return v10;
  }

  v12 = ~v9;
  v13 = 0x797469726F697270;
  v14 = a1 & 0x30;
  if (a1)
  {
    v13 = 0x6D617473656D6974;
  }

  v101 = v13;
  if (a1)
  {
    v15 = 0xE900000000000070;
  }

  else
  {
    v15 = 0xE800000000000000;
  }

  v16 = a1 & 0xCF;
  v99 = a1 & 0xCF;
  v17 = v16 == 198 && a1 > 0xBFu;
  v18 = v16 == 197 && a1 > 0xBFu;
  v96 = v18;
  v97 = v17;
  v19 = v16 == 196 && a1 > 0xBFu;
  v20 = v16 == 195 && a1 > 0xBFu;
  v94 = v20;
  v95 = v19;
  v21 = v16 == 194 && a1 > 0xBFu;
  v22 = v16 == 193 && a1 > 0xBFu;
  v92 = v22;
  v93 = v21;
  v23 = v16 == 192 && a1 > 0xBFu;
  v91 = v23;
  v100 = a1 & 0xC0;
  v98 = a1 & 0xF;
  while (1)
  {
    v24 = *(*(v8 + 48) + v10);
    v25 = (v24 >> 4) & 3;
    if (v25 <= 1)
    {
      break;
    }

    if (v25 == 2)
    {
      if (v14 == 32)
      {
        if (v24)
        {
          v31 = 0x6D617473656D6974;
        }

        else
        {
          v31 = 0x797469726F697270;
        }

        if (v24)
        {
          v32 = 0xE900000000000070;
        }

        else
        {
          v32 = 0xE800000000000000;
        }

        if (v31 == v101 && v32 == v15)
        {
          v32, a2, v101, a4, a5, a6, a7, a8;
          v89 = v15;
          goto LABEL_242;
        }

        v34 = sub_1CF9E8048();
        v32, v35, v36, v37, v38, v39, v40, v41;
        v15, v42, v43, v44, v45, v46, v47, v48;
        if (v34)
        {
          return v10;
        }
      }
    }

    else if (*(*(v8 + 48) + v10) <= 0x32u)
    {
      if (v24 == 48)
      {
        if (a1 == 48)
        {
          return v10;
        }
      }

      else if (v24 == 49)
      {
        if (a1 == 49)
        {
          return v10;
        }
      }

      else if (a1 == 50)
      {
        return v10;
      }
    }

    else if (*(*(v8 + 48) + v10) > 0x34u)
    {
      if (v24 == 53)
      {
        if (a1 == 53)
        {
          return v10;
        }
      }

      else if (a1 == 54)
      {
        return v10;
      }
    }

    else if (v24 == 51)
    {
      if (a1 == 51)
      {
        return v10;
      }
    }

    else if (a1 == 52)
    {
      return v10;
    }

LABEL_30:
    v10 = (v10 + 1) & v12;
    if (((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return v10;
    }
  }

  if (v25)
  {
    if (v14 != 16)
    {
      goto LABEL_30;
    }

    v26 = v24 & 0xFFFFFFCF;
    v27 = v24 >> 6;
    if (v24 >> 6 > 1)
    {
      if (v27 != 2)
      {
        v56 = v24 & 0xCF;
        if (v26 <= 0xC2u)
        {
          if (v56 == 192)
          {
            if (v91)
            {
              return v10;
            }
          }

          else if (v56 == 193)
          {
            if (v92)
            {
              return v10;
            }
          }

          else if (v93)
          {
            return v10;
          }
        }

        else if (v26 > 0xC4u)
        {
          if (v56 == 197)
          {
            if (v96)
            {
              return v10;
            }
          }

          else if (v97)
          {
            return v10;
          }
        }

        else if (v56 == 195)
        {
          if (v94)
          {
            return v10;
          }
        }

        else if (v95)
        {
          return v10;
        }

        goto LABEL_30;
      }

      if (v26 <= 131)
      {
        if (v26 <= 129)
        {
          if (v26 == 128)
          {
            v50 = v99;
            goto LABEL_119;
          }

          v60 = v99;
          goto LABEL_184;
        }

        if (v26 == 130)
        {
          v58 = v99;
          goto LABEL_157;
        }

        v62 = v99;
        goto LABEL_190;
      }

      if (v26 <= 133)
      {
        if (v26 == 132)
        {
          v57 = v99;
          goto LABEL_131;
        }

        v61 = v99;
        goto LABEL_187;
      }

      if (v26 == 134)
      {
        v59 = v99;
        goto LABEL_161;
      }

      v63 = v99;
LABEL_193:
      if (v63 == 135)
      {
        return v10;
      }

      goto LABEL_30;
    }

    if (!v27)
    {
      if (a1 >= 0x40u)
      {
        goto LABEL_30;
      }

      v28 = v24 & 0xCF;
      if (v26 > 2u)
      {
        if (v28 == 3)
        {
          v30 = 0xE800000000000000;
          v29 = 0x6E6F697461636F6CLL;
        }

        else if (v28 == 4)
        {
          v30 = 0xE600000000000000;
          v29 = 0x6874676E656CLL;
        }

        else
        {
          v30 = 0xE500000000000000;
          v29 = 0x7367616C66;
        }
      }

      else if (v28)
      {
        if (v28 == 1)
        {
          v29 = 0x6E756F635F6E6567;
          v30 = 0xE900000000000074;
        }

        else
        {
          v29 = 0x6E6F635F74736574;
          v30 = 0xEC000000746E6574;
        }
      }

      else
      {
        v30 = 0xE700000000000000;
        v29 = 0x64695F656C6966;
      }

      v64 = v99;
      if (v99 <= 2u)
      {
        if (v99)
        {
          goto LABEL_201;
        }

        goto LABEL_223;
      }

      if (v99 == 3)
      {
        v55 = 0xE800000000000000;
        v54 = 0x6E6F697461636F6CLL;
        if (v29 == 0x6E6F697461636F6CLL)
        {
          goto LABEL_236;
        }
      }

      else
      {
        if (v99 == 4)
        {
          v54 = 0x6874676E656CLL;
        }

        else
        {
          v54 = 0x7367616C66;
        }

        if (v99 == 4)
        {
          v55 = 0xE600000000000000;
        }

        else
        {
          v55 = 0xE500000000000000;
        }

        if (v29 == v54)
        {
          goto LABEL_236;
        }
      }

LABEL_237:
      v67 = sub_1CF9E8048();
      v30, v68, v69, v70, v71, v72, v73, v74;
      v55, v75, v76, v77, v78, v79, v80, v81;
      if (v67)
      {
        return v10;
      }

      goto LABEL_30;
    }

    if (v100 != 64)
    {
      goto LABEL_30;
    }

    v51 = v24 & 0xF;
    if (v51)
    {
      goto LABEL_95;
    }

    goto LABEL_112;
  }

  if (v14)
  {
    goto LABEL_30;
  }

  v49 = v24 >> 6;
  if (v24 >> 6 > 1)
  {
    if (v49 == 3)
    {
      if (*(*(v8 + 48) + v10) <= 0xC2u)
      {
        if (v24 == 192)
        {
          if (a1 == 192)
          {
            return v10;
          }
        }

        else if (v24 == 193)
        {
          if (a1 == 193)
          {
            return v10;
          }
        }

        else if (a1 == 194)
        {
          return v10;
        }
      }

      else if (*(*(v8 + 48) + v10) > 0xC4u)
      {
        if (v24 == 197)
        {
          if (a1 == 197)
          {
            return v10;
          }
        }

        else if (a1 == 198)
        {
          return v10;
        }
      }

      else if (v24 == 195)
      {
        if (a1 == 195)
        {
          return v10;
        }
      }

      else if (a1 == 196)
      {
        return v10;
      }

      goto LABEL_30;
    }

    if (*(*(v8 + 48) + v10) <= 0x83u)
    {
      if (*(*(v8 + 48) + v10) <= 0x81u)
      {
        if (v24 == 128)
        {
          v50 = a1;
LABEL_119:
          if (v50 == 128)
          {
            return v10;
          }

          goto LABEL_30;
        }

        v60 = a1;
LABEL_184:
        if (v60 == 129)
        {
          return v10;
        }

        goto LABEL_30;
      }

      if (v24 == 130)
      {
        v58 = a1;
LABEL_157:
        if (v58 == 130)
        {
          return v10;
        }

        goto LABEL_30;
      }

      v62 = a1;
LABEL_190:
      if (v62 == 131)
      {
        return v10;
      }

      goto LABEL_30;
    }

    if (*(*(v8 + 48) + v10) <= 0x85u)
    {
      if (v24 == 132)
      {
        v57 = a1;
LABEL_131:
        if (v57 == 132)
        {
          return v10;
        }

        goto LABEL_30;
      }

      v61 = a1;
LABEL_187:
      if (v61 == 133)
      {
        return v10;
      }

      goto LABEL_30;
    }

    if (v24 == 134)
    {
      v59 = a1;
LABEL_161:
      if (v59 == 134)
      {
        return v10;
      }

      goto LABEL_30;
    }

    v63 = a1;
    goto LABEL_193;
  }

  if (v49)
  {
    if (v100 != 64)
    {
      goto LABEL_30;
    }

    v51 = v24 & 0x3F;
    if (v51)
    {
LABEL_95:
      if (v51 == 1)
      {
        v52 = 0xD000000000000010;
        v30 = 0x80000001CFA2C3F0;
        v53 = v98;
        if (v98)
        {
          goto LABEL_97;
        }

LABEL_113:
        v55 = 0xE500000000000000;
        v54 = 0x6574617473;
        if (v52 != 0x6574617473)
        {
          goto LABEL_237;
        }

        goto LABEL_236;
      }

      v52 = 0xD000000000000012;
      v30 = 0x80000001CFA2C410;
      v53 = v98;
      if (!v98)
      {
        goto LABEL_113;
      }

LABEL_97:
      if (v53 == 1)
      {
        v54 = 0xD000000000000010;
      }

      else
      {
        v54 = 0xD000000000000012;
      }

      if (v53 == 1)
      {
        v55 = 0x80000001CFA2C3F0;
      }

      else
      {
        v55 = 0x80000001CFA2C410;
      }

      if (v52 == v54)
      {
        goto LABEL_236;
      }

      goto LABEL_237;
    }

LABEL_112:
    v30 = 0xE500000000000000;
    v52 = 0x6574617473;
    v53 = v98;
    if (!v98)
    {
      goto LABEL_113;
    }

    goto LABEL_97;
  }

  if (a1 >= 0x40u)
  {
    goto LABEL_30;
  }

  if (*(*(v8 + 48) + v10) > 2u)
  {
    if (v24 == 3)
    {
      v30 = 0xE800000000000000;
      v29 = 0x6E6F697461636F6CLL;
    }

    else if (v24 == 4)
    {
      v30 = 0xE600000000000000;
      v29 = 0x6874676E656CLL;
    }

    else
    {
      v30 = 0xE500000000000000;
      v29 = 0x7367616C66;
    }
  }

  else if (*(*(v8 + 48) + v10))
  {
    if (v24 == 1)
    {
      v29 = 0x6E756F635F6E6567;
      v30 = 0xE900000000000074;
    }

    else
    {
      v29 = 0x6E6F635F74736574;
      v30 = 0xEC000000746E6574;
    }
  }

  else
  {
    v30 = 0xE700000000000000;
    v29 = 0x64695F656C6966;
  }

  v64 = a1;
  if (a1 > 2u)
  {
    v65 = 0x6874676E656CLL;
    if (a1 != 4)
    {
      v65 = 0x7367616C66;
    }

    v66 = 0xE600000000000000;
    if (a1 != 4)
    {
      v66 = 0xE500000000000000;
    }

    if (a1 == 3)
    {
      v54 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v54 = v65;
    }

    if (a1 == 3)
    {
      v55 = 0xE800000000000000;
    }

    else
    {
      v55 = v66;
    }

    if (v29 == v54)
    {
      goto LABEL_236;
    }

    goto LABEL_237;
  }

  if (!a1)
  {
LABEL_223:
    v55 = 0xE700000000000000;
    v54 = 0x64695F656C6966;
    if (v29 == 0x64695F656C6966)
    {
      goto LABEL_236;
    }

    goto LABEL_237;
  }

LABEL_201:
  if (v64 != 1)
  {
    v54 = 0x6E6F635F74736574;
    v55 = 0xEC000000746E6574;
    if (v29 == 0x6E6F635F74736574)
    {
      goto LABEL_236;
    }

    goto LABEL_237;
  }

  v54 = 0x6E756F635F6E6567;
  v55 = 0xE900000000000074;
  if (v29 != 0x6E756F635F6E6567)
  {
    goto LABEL_237;
  }

LABEL_236:
  if (v30 != v55)
  {
    goto LABEL_237;
  }

  v30, a2, v54, a4, a5, a6, a7, a8;
  v89 = v55;
LABEL_242:
  v89, v82, v83, v84, v85, v86, v87, v88;
  return v10;
}

unint64_t sub_1CEFEBB18(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

id sub_1CEFEBB28(uint64_t a1)
{
  result = [v1 longAtIndex_];
  if (result > 4)
  {
    sub_1CF1DA5D8();
    swift_allocError();
    *v3 = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_1CEFEBB94(id a1@<X1>, unsigned __int8 a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 == 3)
    {
      if (a2 > 0xC2u)
      {
        if (a2 <= 0xC4u)
        {
          if (a2 == 195)
          {
            if ([a1 isNullAtIndex_])
            {
              goto LABEL_72;
            }

            v9 = [a1 stringAtIndex_];
            v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v12 = v11;

            v13 = &type metadata for Filename;
LABEL_70:
            *(a4 + 24) = v13;
            *a4 = v10;
            *(a4 + 8) = v12;
            return;
          }

          if ([a1 isNullAtIndex_])
          {
            goto LABEL_72;
          }

LABEL_51:
          v24 = [a1 dataAtIndex_];
          v10 = sub_1CF9E5B88();
          v12 = v25;

          v13 = &type metadata for FPItemVersionData;
          goto LABEL_70;
        }

        if (a2 == 197)
        {
          if ([a1 isNullAtIndex_])
          {
            goto LABEL_72;
          }

          goto LABEL_51;
        }

        if ([a1 isNullAtIndex_])
        {
          goto LABEL_72;
        }

        v26 = [a1 integerAtIndex_];
        if (!v26)
        {
          goto LABEL_72;
        }

        v20 = [objc_opt_self() domainVersionWithVersion_];
        v21 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
LABEL_76:
        *(a4 + 24) = v21;
        *a4 = v20;
        return;
      }

      if (a2 == 192)
      {
        goto LABEL_46;
      }

      if (a2 == 193)
      {
        if ([a1 isNullAtIndex_])
        {
          goto LABEL_72;
        }

LABEL_39:
        v17 = [a1 longLongAtIndex_];
        v18 = MEMORY[0x1E69E7360];
        goto LABEL_78;
      }

      v15 = a1;
      if ([v15 isNullAtIndex_])
      {
LABEL_49:

        goto LABEL_72;
      }

LABEL_73:
      v20 = [v15 stringAtIndex_];
      if (!v20)
      {
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v30 = v29;
        v20 = sub_1CF9E6888();
        v30, v31, v32, v33, v34, v35, v36, v37;
      }

      type metadata accessor for NSFileProviderItemIdentifier(0);
      goto LABEL_76;
    }

    if (a2 > 0x83u)
    {
      if (a2 > 0x85u)
      {
        if (a2 != 134)
        {
          if ([a1 isNullAtIndex_])
          {
            goto LABEL_72;
          }

          v17 = [a1 longLongAtIndex_];
          if ((v17 & 0x8000000000000000) == 0)
          {
            goto LABEL_67;
          }

          __break(1u);
LABEL_66:
          v17 = [a1 unsignedLongLongAtIndex_];
LABEL_67:
          v18 = MEMORY[0x1E69E76D8];
          goto LABEL_78;
        }

        v16 = [a1 BOOLAtIndex_];
        v22 = MEMORY[0x1E69E6370];
      }

      else
      {
        if (a2 == 132)
        {
          *(a4 + 24) = &type metadata for ContentStatus;
          v16 = sub_1CEFEBAE8(a3);
          if (v4)
          {
            __swift_deallocate_boxed_opaque_existential_0(a4);
            return;
          }

          goto LABEL_45;
        }

        if ([a1 isNullAtIndex_])
        {
          goto LABEL_72;
        }

        v16 = sub_1CF1E0758(a3);
        if (v4)
        {
          return;
        }

        v22 = &type metadata for DiskImportStatus;
      }
    }

    else
    {
      if (a2 <= 0x81u)
      {
        if (a2 != 128)
        {
          v14 = &type metadata for DeletionStatus;
          goto LABEL_56;
        }

        v15 = a1;
        if ([v15 isNullAtIndex_])
        {
          goto LABEL_49;
        }

        goto LABEL_73;
      }

      if (a2 == 130)
      {
        v14 = &type metadata for Fields;
        goto LABEL_56;
      }

      if ([a1 isNullAtIndex_])
      {
        goto LABEL_72;
      }

      v16 = sub_1CEFEBAE8(a3);
      if (v4)
      {
        return;
      }

      v22 = &type metadata for MaterializationStatus;
    }

    *(a4 + 24) = v22;
LABEL_45:
    *a4 = v16;
    return;
  }

  if (!(a2 >> 6))
  {
    if ([a1 isNullAtIndex_])
    {
      goto LABEL_72;
    }

    if (a2 <= 2u)
    {
      if (a2)
      {
        if (a2 == 1)
        {
LABEL_46:
          if (([a1 isNullAtIndex_] & 1) == 0)
          {
            v23 = [a1 unsignedIntAtIndex_];
            *(a4 + 24) = MEMORY[0x1E69E7668];
            *a4 = v23;
            return;
          }

          goto LABEL_72;
        }

        if (([a1 isNullAtIndex_] & 1) == 0)
        {
          v27 = [a1 dataAtIndex_];
          v10 = sub_1CF9E5B88();
          v12 = v28;

          v13 = MEMORY[0x1E6969080];
          goto LABEL_70;
        }

LABEL_72:
        *a4 = 0u;
        *(a4 + 16) = 0u;
        return;
      }

      goto LABEL_66;
    }

    if (a2 != 3 && a2 != 4)
    {
      if ([a1 isNullAtIndex_])
      {
        goto LABEL_72;
      }

      v17 = [a1 unsignedIntegerAtIndex_];
      v18 = MEMORY[0x1E69E6810];
      goto LABEL_78;
    }

    goto LABEL_39;
  }

  if ((a2 & 0x3F) == 0)
  {
    v17 = [a1 longAtIndex_];
    v18 = MEMORY[0x1E69E6530];
LABEL_78:
    *(a4 + 24) = v18;
    goto LABEL_79;
  }

  if ((a2 & 0x3F) != 1)
  {
    if ([a1 isNullAtIndex_])
    {
      goto LABEL_72;
    }

    v19 = sub_1CF1DFFC4(a3);
    if (v4)
    {
      return;
    }

    v20 = v19;
    v21 = type metadata accessor for Continuation();
    goto LABEL_76;
  }

  v14 = &type metadata for JobWaitCondition;
LABEL_56:
  *(a4 + 24) = v14;
  v17 = [a1 longAtIndex_];
LABEL_79:
  *a4 = v17;
}

void sub_1CEFEC1A8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1CEFEC210@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  result = [v3 longAtIndex_];
  if (result < 5 && ((0x17u >> result) & 1) != 0)
  {
    *a2 = 0x300020100uLL >> (8 * result);
  }

  else
  {
    sub_1CF1DA5D8();
    swift_allocError();
    *v6 = 0;
    return swift_willThrow();
  }

  return result;
}

void sub_1CEFEC2AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1CEFEC988(a1, sub_1CEFED334, 0, &v50);
  if (!v2)
  {
    v65 = sub_1CEFEF490(50, a1);
    v46 = v62;
    v47 = v63;
    v48 = v64;
    v49 = v65;
    v42 = v58;
    v43 = v59;
    v44 = v60;
    v45 = v61;
    v38 = v54;
    v39 = v55;
    v40 = v56;
    v41 = v57;
    v34 = v50;
    v35 = v51;
    v36 = v52;
    v37 = v53;
    sub_1CEFCCBDC(&v34, v31, &unk_1EC4BFE00, &unk_1CF9FEF00);
    sub_1CEFEF998(a1, sub_1CEFF0598, 0, v33);
    sub_1CEFF0814(48, a1, &v30);
    v5 = v30;
    v6 = sub_1CEFF0AD0(49, a1);
    v7 = sub_1CEFF0CDC(32, a1, sub_1CEFEAD20, sub_1CF357F60);
    v8 = sub_1CEFF0EE4(33, a1, sub_1CEFEAD20, sub_1CF357F60);
    v9 = sub_1CEFEF02C(51, a1, sub_1CEFEAD20, sub_1CF357F60);
    v29 = v5;
    v66 = sub_1CEFEF02C(54, a1, sub_1CEFEAD20, sub_1CF357F60);
    v10 = sub_1CEFEEA08(52, a1, sub_1CEFEAD20, sub_1CF357F60);
    v11 = sub_1CEFF10EC(53, a1);
    v31[12] = v62;
    v31[13] = v63;
    v31[14] = v64;
    v32 = v65;
    v31[8] = v58;
    v31[9] = v59;
    v31[10] = v60;
    v31[11] = v61;
    v31[4] = v54;
    v31[5] = v55;
    v31[6] = v56;
    v31[7] = v57;
    v31[0] = v50;
    v31[1] = v51;
    v31[2] = v52;
    v31[3] = v53;
    sub_1CEFCCC44(v31, &unk_1EC4BFE00, &unk_1CF9FEF00);
    v12 = v47;
    *(a2 + 192) = v46;
    *(a2 + 208) = v12;
    *(a2 + 224) = v48;
    v13 = v43;
    *(a2 + 128) = v42;
    *(a2 + 144) = v13;
    v14 = v45;
    *(a2 + 160) = v44;
    *(a2 + 176) = v14;
    v15 = v39;
    *(a2 + 64) = v38;
    *(a2 + 80) = v15;
    v16 = v41;
    *(a2 + 96) = v40;
    *(a2 + 112) = v16;
    v17 = v35;
    *a2 = v34;
    *(a2 + 16) = v17;
    v18 = v37;
    *(a2 + 32) = v36;
    *(a2 + 48) = v18;
    v19 = v33[10];
    v20 = v33[11];
    v21 = v33[8];
    *(a2 + 392) = v33[9];
    *(a2 + 408) = v19;
    v22 = v33[12];
    *(a2 + 424) = v20;
    *(a2 + 440) = v22;
    v23 = v33[6];
    v24 = v33[7];
    v25 = v33[4];
    *(a2 + 328) = v33[5];
    *(a2 + 344) = v23;
    *(a2 + 360) = v24;
    *(a2 + 376) = v21;
    v26 = v33[2];
    v27 = v33[3];
    v28 = v33[0];
    *(a2 + 264) = v33[1];
    *(a2 + 280) = v26;
    *(a2 + 296) = v27;
    *(a2 + 312) = v25;
    *(a2 + 240) = v49;
    *(a2 + 248) = v28;
    *(a2 + 456) = v29;
    *(a2 + 464) = v6;
    *(a2 + 472) = v7;
    *(a2 + 480) = v8;
    *(a2 + 488) = v9;
    *(a2 + 496) = v66;
    *(a2 + 504) = v10 & 1;
    *(a2 + 512) = v11;
  }
}

double sub_1CEFEC988@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOBYTE(v78) = -121;
  a2(&v72, &v78);
  v9 = sub_1CEFED344(v72, a1);
  if (v4)
  {
    return result;
  }

  v12 = v10;
  if (v10)
  {
    v13 = 0;
    v14 = 0;
    v85 = 0;
    v15 = 0;
  }

  else
  {
    v13 = v9;
    LOBYTE(v78) = -64;
    a2(&v72, &v78);
    v14 = sub_1CEFED4EC(v72, a1, sub_1CEFEAD20, sub_1CF357F60);
    LOBYTE(v78) = -63;
    a2(&v72, &v78);
    v19 = sub_1CEFED6F4(v72, a1);
    v15 = v20;
    v85 = v19;
  }

  LOBYTE(v72) = -62;
  a2(&v68, &v72);
  sub_1CEFED908(v68, a1, &v78);
  v66 = a4;
  v16 = BYTE8(v78);
  if (BYTE8(v78) == 255)
  {
    v17 = 0;
LABEL_10:
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    v78 = 0u;
    goto LABEL_11;
  }

  v63 = v78;
  LOBYTE(v72) = -61;
  a2(&v68, &v72);
  sub_1CEFEDAC0(v68, a1, sub_1CEFEAD20, sub_1CF357F60, &v78);
  v17 = *(&v78 + 1);
  if ((v12 & 1) != 0 || !*(&v78 + 1))
  {
    goto LABEL_10;
  }

  v18 = v78;
  *&v78 = v13;
  DWORD2(v78) = v14;
  *&v79 = v85;
  BYTE8(v79) = v15 & 1;
  *&v80 = 0;
  *(&v80 + 1) = v63;
  LOBYTE(v81) = v16;
  *(&v81 + 1) = v18;
  v82 = v17;
  v83 = 0uLL;

LABEL_11:
  v77 = 0;
  a2(&v76, &v77);
  sub_1CEFED344(v76, a1);
  if (v21)
  {
    v72 = 0uLL;
    *&v73 = 0;
    *(&v73 + 1) = 0xB000000000000000;
    v74 = 0u;
    v75 = 0u;
  }

  else
  {
    v69 = 2;
    a2(&v67, &v69);
    sub_1CF23D77C(v67, a1, sub_1CEFEAD20, sub_1CF357F60, &v68);
    v25 = *(&v68 + 1);
    v24 = v68;
    LOBYTE(v68) = 3;
    a2(&v69, &v68);
    v26 = sub_1CEFED6F4(v69, a1);
    if (v27)
    {
      v28 = 0;
      v85 = 0;
      v29 = 1;
    }

    else
    {
      v28 = v26;
      LOBYTE(v68) = 4;
      a2(&v69, &v68);
      v30 = sub_1CEFED6F4(v69, a1);
      if (v31)
      {
        v28 = 0;
        v32 = 0;
      }

      else
      {
        v32 = v30;
      }

      v85 = v32;
      v29 = (v31 & 1) != 0;
    }

    LOBYTE(v68) = 5;
    a2(&v69, &v68);
    v33 = sub_1CF23D568(v69, a1);
    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = v33;
    }

    v64 = v35;
    LOBYTE(v68) = 1;
    a2(&v69, &v68);
    v36 = sub_1CF23D344(v69, a1, sub_1CEFEAD20, sub_1CF357F60);
    v61 = v36;
    if ((v36 & 0x100000000) != 0)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36;
    }

    v60 = v37;
    if (v25 >> 60 == 15)
    {
      LOBYTE(v68) = 0;
      a2(&v69, &v68);
      v38 = sub_1CF23D13C(v69, a1, sub_1CEFEAD20, sub_1CF357F60);
      v24 = 0;
      v39 = HIDWORD(v61) & 1;
      v25 = 0xF000000000000000;
      v40 = v60;
    }

    else
    {
      v38 = 0;
      v40 = 0;
      LOBYTE(v39) = 1;
    }

    LOBYTE(v70) = v39;
    LOBYTE(v71) = v29;
    *&v72 = v38;
    DWORD2(v72) = v40;
    BYTE12(v72) = v39;
    *&v73 = v24;
    *(&v73 + 1) = v25;
    *&v74 = v28;
    *(&v74 + 1) = v85;
    LOBYTE(v75) = v29;
    *(&v75 + 1) = v64;
  }

  LOBYTE(v70) = 0x80;
  a2(&v71, &v70);
  sub_1CEFEDCE0(v71, a1, &v68);
  LOBYTE(v70) = -127;
  a2(&v71, &v70);
  v22 = sub_1CEFEDF38(v71, a1);
  LOBYTE(v71) = -126;
  a2(&v69, &v71);
  sub_1CEFEE134(v69, a1, sub_1CEFEAD20, sub_1CF357F60, &v70);
  v23 = v70;
  LOBYTE(v71) = -125;
  a2(&v69, &v71);
  LODWORD(v85) = sub_1CEFEE33C(v69, a1);
  LOBYTE(v71) = -124;
  a2(&v69, &v71);
  v41 = sub_1CEFEE600(v69, a1);
  LOBYTE(v71) = -123;
  a2(&v69, &v71);
  v65 = sub_1CEFEE7FC(v69, a1);
  LOBYTE(v71) = -122;
  a2(&v69, &v71);
  v62 = sub_1CEFEEA08(v69, a1, sub_1CEFEAD20, sub_1CF357F60);
  v84[0] = a1;
  v84[1] = a2;
  v84[2] = a3;
  v84[3] = sub_1CEFEF01C;
  v84[4] = 0;
  v58 = sub_1CEFEECC4(v84);
  v59 = v42;
  v44 = v43;
  LOBYTE(v71) = -58;
  a2(&v69, &v71);
  v45 = sub_1CEFEF234(v69, a1, sub_1CEFEAD20, sub_1CF357F60);
  v17, v46, v47, v48, v49, v50, v51, v52;
  v53 = v79;
  *(v66 + 72) = v80;
  v54 = v82;
  *(v66 + 88) = v81;
  *(v66 + 104) = v54;
  *(v66 + 120) = v83;
  *(v66 + 40) = v78;
  *(v66 + 56) = v53;
  v55 = v73;
  *(v66 + 168) = v72;
  *(v66 + 184) = v55;
  result = *&v74;
  v56 = v75;
  *(v66 + 200) = v74;
  v57 = BYTE8(v68);
  *v66 = v68;
  *(v66 + 8) = v57;
  *(v66 + 16) = v22;
  *(v66 + 24) = v23;
  *(v66 + 32) = v85;
  *(v66 + 136) = v41;
  *(v66 + 137) = v65;
  *(v66 + 138) = v62 & 1;
  *(v66 + 144) = v58;
  *(v66 + 152) = v59;
  *(v66 + 160) = v44;
  *(v66 + 216) = v56;
  *(v66 + 232) = v45;
  *(v66 + 240) = 0;
  return result;
}

uint64_t sub_1CEFED344(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = sub_1CEFEAD20(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_1CEFD1104(*(a2 + 56) + 32 * v4, v37);
  sub_1CEFE9EB8(v37, v38);
  sub_1CEFD1104(v38, v37);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFD1104(v38, v7);
    *&v37[0] = 0;
    *(&v37[0] + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    *(&v37[0] + 1), v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFD1104(v38, v37);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF357F60(v3);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD00000000000001DLL;
    *(v8 + 40) = 0x80000001CFA361C0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }
}

uint64_t sub_1CEFED4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v42);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
  }

  sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v39;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v42, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1CF9E7948();
    v41, v12, v13, v14, v15, v16, v17, v18;
    sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v19 = sub_1CF9E6948();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v29 = a4(a1);
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v11 + 32) = 0xD00000000000001DLL;
    *(v11 + 40) = 0x80000001CFA364D0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFED6F4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4F0, &unk_1CF9FEF40);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF357F60(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000026;
    *(v8 + 40) = 0x80000001CFA36240;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFED908@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = result, result = sub_1CEFEAD20(result), (v6 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * result, v38);
    sub_1CEFE9EB8(v38, v39);
    sub_1CEFD1104(v39, v38);
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1(v39);
      *a3 = v36;
      *(a3 + 8) = v37;
    }

    else
    {
      sub_1CF24CD3C();
      swift_allocError();
      v8 = v7;
      sub_1CEFD1104(v39, v7);
      *&v38[0] = 0;
      *(&v38[0] + 1) = 0xE000000000000000;
      sub_1CF9E7948();
      *(&v38[0] + 1), v9, v10, v11, v12, v13, v14, v15;
      sub_1CEFD1104(v39, v38);
      v16 = sub_1CF9E6948();
      v18 = v17;
      MEMORY[0x1D3868CC0](v16);
      v18, v19, v20, v21, v22, v23, v24, v25;
      MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
      v26 = sub_1CF357F60(v5);
      v28 = v27;
      MEMORY[0x1D3868CC0](v26);
      v28, v29, v30, v31, v32, v33, v34, v35;
      *(v8 + 32) = 0xD000000000000020;
      *(v8 + 40) = 0x80000001CFA36540;
      *(v8 + 48) = 4;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v39);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = -1;
  }

  return result;
}

uint64_t sub_1CEFEDAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, unint64_t *a5@<X8>)
{
  if (*(a2 + 16) && (v9 = a3(a1), (v10 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v9, v52);
  }

  else
  {
    memset(v52, 0, sizeof(v52));
  }

  sub_1CEFCCBDC(v52, &v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v52, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a5 = v48;
    a5[1] = v49;
  }

  else
  {
    0, v11, v12, v13, v14, v15, v16, v17;
    sub_1CF24CD3C();
    swift_allocError();
    v20 = v19;
    sub_1CEFCCBDC(v52, v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1CF9E7948();
    v51, v21, v22, v23, v24, v25, v26, v27;
    sub_1CEFCCBDC(v52, &v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v28 = sub_1CF9E6948();
    v30 = v29;
    MEMORY[0x1D3868CC0](v28);
    v30, v31, v32, v33, v34, v35, v36, v37;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v38 = a4(a1);
    v40 = v39;
    MEMORY[0x1D3868CC0](v38);
    v40, v41, v42, v43, v44, v45, v46, v47;
    *(v20 + 32) = 0xD00000000000001FLL;
    *(v20 + 40) = 0x80000001CFA364F0;
    *(v20 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v52, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1CEFEDCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CEFEAD20(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v42);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
  }

  sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9C8, &unk_1CFA12A40);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v38;
    *(a3 + 8) = v39;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v42, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1CF9E7948();
    v41, v11, v12, v13, v14, v15, v16, v17;
    sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v18 = sub_1CF9E6948();
    v20 = v19;
    MEMORY[0x1D3868CC0](v18);
    v20, v21, v22, v23, v24, v25, v26, v27;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v28 = sub_1CF357F60(v3);
    v30 = v29;
    MEMORY[0x1D3868CC0](v28);
    v30, v31, v32, v33, v34, v35, v36, v37;
    *(v10 + 32) = 0xD00000000000002ALL;
    *(v10 + 40) = 0x80000001CFA36510;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for VFSItemID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CEFEDF38(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF357F60(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000025;
    *(v8 + 40) = 0x80000001CFA363F0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFEE134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, unint64_t *a5@<X8>)
{
  if (*(a2 + 16) && (v9 = a3(a1), (v10 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v9, v44);
  }

  else
  {
    memset(v44, 0, sizeof(v44));
  }

  sub_1CEFCCBDC(v44, &v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v44, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a5 = v41;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v13 = v12;
    sub_1CEFCCBDC(v44, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1CF9E7948();
    v43, v14, v15, v16, v17, v18, v19, v20;
    sub_1CEFCCBDC(v44, &v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v21 = sub_1CF9E6948();
    v23 = v22;
    MEMORY[0x1D3868CC0](v21);
    v23, v24, v25, v26, v27, v28, v29, v30;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v31 = a4(a1);
    v33 = v32;
    MEMORY[0x1D3868CC0](v31);
    v33, v34, v35, v36, v37, v38, v39, v40;
    *(v13 + 32) = 0xD00000000000001DLL;
    *(v13 + 40) = 0x80000001CFA363D0;
    *(v13 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v44, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CEFEE33C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9B0, &unk_1CFA03A00);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF357F60(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000036;
    *(v8 + 40) = 0x80000001CFA36390;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t storeEnumTagSinglePayload for ExtentMap.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1CEFEE600(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF357F60(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000024;
    *(v8 + 40) = 0x80000001CFA36360;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFEE7FC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF357F60(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000031;
    *(v8 + 40) = 0x80000001CFA36320;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFEEA08(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v43);
  }

  else
  {
    memset(v43, 0, sizeof(v43));
  }

  sub_1CEFCCBDC(v43, &v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v43, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = v40;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v43, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1CF9E7948();
    v42, v12, v13, v14, v15, v16, v17, v18;
    sub_1CEFCCBDC(v43, &v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v19 = sub_1CF9E6948();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v29 = a4(a1);
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v11 + 32) = 0xD00000000000001BLL;
    *(v11 + 40) = 0x80000001CFA36020;
    *(v11 + 48) = 4;
    swift_willThrow();
    sub_1CEFCCC44(v43, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return v9 & 1;
}

uint64_t storeEnumTagSinglePayload for EvictionUrgency(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CEFEECC4(uint64_t *a1)
{
  HIBYTE(v9) = 0;
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  v4((&v9 + 6), &v9 + 7);
  v3((&v9 + 5), &v9 + 6);
  result = sub_1CEFEF02C(BYTE5(v9), v2, sub_1CEFEAD20, sub_1CF357F60);
  if (!v1)
  {
    if (result > 2)
    {
      if (result == 3)
      {
        sub_1CF1DA62C();
        return swift_allocError();
      }

      if (result != 4)
      {
        if (result == 5)
        {
          return 0;
        }

        goto LABEL_13;
      }

      return 1;
    }

    else
    {
      if (!result)
      {
        BYTE5(v8) = 1;
        v4((&v8 + 4), &v8 + 5);
        v3((&v8 + 3), &v8 + 4);
        v6 = sub_1CF23E024(BYTE3(v8), v2, sub_1CEFEAD20, sub_1CF357F60);
        BYTE2(v8) = 2;
        v4((&v8 + 1), &v8 + 2);
        v3(&v8, &v8 + 1);
        sub_1CF23DE0C(v8, v2, sub_1CEFEAD20, sub_1CF357F60);
        return v6;
      }

      if (result != 1)
      {
        if (result == 2)
        {
          BYTE4(v9) = 2;
          v4((&v9 + 3), &v9 + 4);
          v3((&v9 + 2), &v9 + 3);
          return sub_1CF23DE0C(BYTE2(v9), v2, sub_1CEFEAD20, sub_1CF357F60);
        }

LABEL_13:
        sub_1CF1DA5D8();
        swift_allocError();
        *v7 = 0;
        return swift_willThrow();
      }

      BYTE1(v9) = 2;
      v4(&v9, &v9 + 1);
      v3((&v8 + 6), &v9);
      return sub_1CF23DE0C(BYTE6(v8), v2, sub_1CEFEAD20, sub_1CF357F60);
    }
  }

  return result;
}

uint64_t sub_1CEFEF02C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v42);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
  }

  sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v39;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v42, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1CF9E7948();
    v41, v12, v13, v14, v15, v16, v17, v18;
    sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v19 = sub_1CF9E6948();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v29 = a4(a1);
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v11 + 32) = 0xD00000000000001ALL;
    *(v11 + 40) = 0x80000001CFA360B0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFEF234(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v52);
  }

  else
  {
    memset(v52, 0, sizeof(v52));
  }

  sub_1CEFCCBDC(v52, &v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v52, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v49;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v52, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1CF9E7948();
    v51, v12, v13, v14, v15, v16, v17, v18;
    v19 = sub_1CF9E82E8();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x20746F6720, 0xE500000000000000);
    sub_1CEFCCBDC(v52, &v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v29 = sub_1CF9E6948();
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v39 = a4(a1);
    v41 = v40;
    MEMORY[0x1D3868CC0](v39);
    v41, v42, v43, v44, v45, v46, v47, v48;
    *(v11 + 32) = 0xD000000000000012;
    *(v11 + 40) = 0x80000001CFA362A0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v52, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFEF490(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF357F60(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000027;
    *(v8 + 40) = 0x80000001CFA364A0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

unsigned int *sub_1CEFEF68C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v4 + 64);
  v8 = *(v6 + 80);
  if (v5 <= *(v6 + 84))
  {
    v9 = *(v6 + 84);
  }

  else
  {
    v9 = *(v4 + 84);
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = ((((*(v6 + 64) + ((v8 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((((*(v6 + 64) + ((v8 + ((v7 + 7) & 0xFFFFFFF8) + 8) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_20:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v11) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(result + v11) = 0;
      }

      else if (v14)
      {
        *(result + v11) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return result;
      }

LABEL_36:
      if (v5 == v10)
      {
        v19 = *(v4 + 56);

        return v19();
      }

      else
      {
        v20 = ((result + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
        if (v9 > 0x7FFFFFFE)
        {
          v21 = *(v6 + 56);

          return v21((v20 + v8 + 8) & ~v8);
        }

        else if (a2 > 0x7FFFFFFE)
        {
          *v20 = 0;
          *v20 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v20 = a2;
        }
      }

      return result;
    }
  }

  if (((((*(v6 + 64) + ((v8 + ((v7 + 7) & 0xFFFFFFF8) + 8) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((*(v6 + 64) + ((v8 + ((v7 + 7) & 0xFFFFFFF8) + 8) & ~v8) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    v18 = result;
    bzero(result, v11);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(result + v11) = v16;
    }

    else
    {
      *(result + v11) = v16;
    }
  }

  else if (v14)
  {
    *(result + v11) = v16;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon18JobSchedulingStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1CEFEF93C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 64))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 24) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_1CEFEF998@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOBYTE(v64) = -60;
  a2(&v76, &v64);
  sub_1CEFF0360(v76, a1, &v70);
  if (!v4)
  {
    v10 = v70;
    v75 = -59;
    a2(&v74, &v75);
    sub_1CEFF0360(v74, a1, &v76);
    v11 = 0;
    v12 = *(&v76 + 1);
    v78 = v76;
    v13 = xmmword_1CF9FD920;
    v14 = 0uLL;
    if (*(&v10 + 1) >> 60 != 15 && *(&v76 + 1) >> 60 != 15)
    {
      sub_1CEFF05F4(v10, *(&v10 + 1));
      v15 = v12;
      v16 = v78;
      sub_1CEFF05F4(v78, v15);
      *&v13 = 0;
      *(&v13 + 1) = v16;
      v12 = v15;
      v14 = v10;
      v11 = v15;
    }

    v70 = v14;
    v71 = v13;
    v72 = v11;
    v73 = 0uLL;
    v69 = 0;
    a2(&v68, &v69);
    sub_1CEFED344(v68, a1);
    if (v17)
    {
      v64 = 0uLL;
      *&v65 = 0;
      *(&v65 + 1) = 0xB000000000000000;
      v66 = 0u;
      v67 = 0u;
    }

    else
    {
      v61 = 2;
      a2(&v60, &v61);
      sub_1CF23D77C(v60, a1, sub_1CEFEAD20, sub_1CF357F60, &v62);
      v19 = *(&v62 + 1);
      v58 = v62;
      LOBYTE(v62) = 3;
      a2(&v61, &v62);
      v20 = sub_1CEFED6F4(v61, a1);
      v55 = v19;
      if (v21)
      {
        v51 = 0uLL;
        v22 = 1;
      }

      else
      {
        v23 = v20;
        LOBYTE(v62) = 4;
        a2(&v61, &v62);
        v24 = sub_1CEFED6F4(v61, a1);
        if (v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = v23;
        }

        if (v25)
        {
          v27 = 0;
        }

        else
        {
          v27 = v24;
        }

        *&v51 = v26;
        *(&v51 + 1) = v27;
        v22 = (v25 & 1) != 0;
      }

      v49 = v22;
      LOBYTE(v62) = 5;
      a2(&v61, &v62);
      v28 = sub_1CF23D568(v61, a1);
      if (v29)
      {
        v30 = 0;
      }

      else
      {
        v30 = v28;
      }

      LOBYTE(v62) = 1;
      a2(&v61, &v62);
      v31 = sub_1CF23D344(v61, a1, sub_1CEFEAD20, sub_1CF357F60);
      v56 = v30;
      if ((v31 & 0x100000000) != 0)
      {
        v32 = 0;
      }

      else
      {
        v32 = v31;
      }

      v33 = v55;
      if (v55 >> 60 == 15)
      {
        v59 = v31;
        LOBYTE(v62) = 0;
        a2(&v61, &v62);
        v34 = sub_1CF23D13C(v61, a1, sub_1CEFEAD20, sub_1CF357F60);
        v35 = 0;
        v36 = HIDWORD(v59) & 1;
        v33 = 0xF000000000000000;
        v37 = v32;
      }

      else
      {
        v34 = 0;
        v37 = 0;
        LOBYTE(v36) = 1;
        v35 = v58;
      }

      BYTE4(v63) = v36;
      LOBYTE(v63) = v49;
      *&v64 = v34;
      DWORD2(v64) = v37;
      BYTE12(v64) = v36;
      *&v65 = v35;
      *(&v65 + 1) = v33;
      v66 = v51;
      LOBYTE(v67) = v49;
      *(&v67 + 1) = v56;
    }

    LOBYTE(v62) = 0x80;
    a2((&v63 + 4), &v62);
    v57 = sub_1CEFF0608(BYTE4(v63), a1);
    LOBYTE(v62) = -127;
    a2((&v63 + 4), &v62);
    v54 = sub_1CEFEDF38(BYTE4(v63), a1);
    BYTE4(v63) = -126;
    a2(&v63, (&v63 + 4));
    sub_1CEFEE134(v63, a1, sub_1CEFEAD20, sub_1CF357F60, &v62);
    v18 = v62;
    BYTE4(v63) = -125;
    a2(&v63, (&v63 + 4));
    v53 = sub_1CEFEE33C(v63, a1);
    BYTE4(v63) = -124;
    a2(&v63, (&v63 + 4));
    v52 = sub_1CEFEE600(v63, a1);
    BYTE4(v63) = -123;
    a2(&v63, (&v63 + 4));
    v50 = sub_1CEFEE7FC(v63, a1);
    BYTE4(v63) = -122;
    a2(&v63, (&v63 + 4));
    v48 = sub_1CEFEEA08(v63, a1, sub_1CEFEAD20, sub_1CF357F60);
    v77[0] = a1;
    v77[1] = a2;
    v77[2] = a3;
    v77[3] = sub_1CEFEF01C;
    v77[4] = 0;
    v46 = sub_1CEFEECC4(v77);
    v47 = v38;
    v40 = v39;
    BYTE4(v63) = -58;
    a2(&v63, (&v63 + 4));
    v41 = sub_1CEFEF234(v63, a1, sub_1CEFEAD20, sub_1CF357F60);
    sub_1CEFE48D8(v78, v12);
    sub_1CEFE48D8(v10, *(&v10 + 1));
    v42 = v71;
    *(a4 + 32) = v70;
    *(a4 + 48) = v42;
    v43 = v73;
    *(a4 + 64) = v72;
    *(a4 + 80) = v43;
    *a4 = v57;
    *(a4 + 8) = v54;
    *(a4 + 16) = v18;
    *(a4 + 24) = v53;
    *(a4 + 96) = v52;
    *(a4 + 97) = v50;
    *(a4 + 98) = v48 & 1;
    *(a4 + 104) = v46;
    *(a4 + 112) = v47;
    *(a4 + 120) = v40;
    v44 = v65;
    *(a4 + 128) = v64;
    *(a4 + 144) = v44;
    result = *&v66;
    v45 = v67;
    *(a4 + 160) = v66;
    *(a4 + 176) = v45;
    *(a4 + 192) = v41;
    *(a4 + 200) = 0;
  }

  return result;
}

uint64_t sub_1CEFF0360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CEFEAD20(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v41);
  }

  else
  {
    memset(v41, 0, sizeof(v41));
  }

  sub_1CEFCCBDC(v41, &v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9C0, &qword_1CF9FEF78);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v38;
  }

  else
  {
    sub_1CEFF0584(0, 0xB000000000000000);
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v41, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1CF9E7948();
    v40, v11, v12, v13, v14, v15, v16, v17;
    sub_1CEFCCBDC(v41, &v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v18 = sub_1CF9E6948();
    v20 = v19;
    MEMORY[0x1D3868CC0](v18);
    v20, v21, v22, v23, v24, v25, v26, v27;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v28 = sub_1CF357F60(v3);
    v30 = v29;
    MEMORY[0x1D3868CC0](v28);
    v30, v31, v32, v33, v34, v35, v36, v37;
    *(v10 + 32) = 0xD000000000000032;
    *(v10 + 40) = 0x80000001CFA36460;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CEFF0584(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_1CEFE48D8(result, a2);
  }

  return result;
}

uint64_t sub_1CEFF05A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1CEFF05F4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CEFE42D4(result, a2);
  }

  return result;
}

uint64_t sub_1CEFF0608(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9B8, &qword_1CF9FEF70);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF357F60(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD00000000000003DLL;
    *(v8 + 40) = 0x80000001CFA36420;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF0814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CEFEAD20(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v41);
  }

  else
  {
    memset(v41, 0, sizeof(v41));
  }

  sub_1CEFCCBDC(v41, &v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE998, &qword_1CF9FEF18);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v38;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v41, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1CF9E7948();
    v40, v11, v12, v13, v14, v15, v16, v17;
    sub_1CEFCCBDC(v41, &v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v18 = sub_1CF9E6948();
    v20 = v19;
    MEMORY[0x1D3868CC0](v18);
    v20, v21, v22, v23, v24, v25, v26, v27;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v28 = sub_1CF357F60(v3);
    v30 = v29;
    MEMORY[0x1D3868CC0](v28);
    v30, v31, v32, v33, v34, v35, v36, v37;
    *(v10 + 32) = 0xD00000000000002DLL;
    *(v10 + 40) = 0x80000001CFA36190;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DocumentContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1CEFF0AD0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE520, &qword_1CF9FEF10);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF357F60(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000057;
    *(v8 + 40) = 0x80000001CFA36130;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF0CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v42);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
  }

  sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v39;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v42, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1CF9E7948();
    v41, v12, v13, v14, v15, v16, v17, v18;
    sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v19 = sub_1CF9E6948();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v29 = a4(a1);
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v11 + 32) = 0xD00000000000002CLL;
    *(v11 + 40) = 0x80000001CFA36100;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF0EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v42);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
  }

  sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v39;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v42, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1CF9E7948();
    v41, v12, v13, v14, v15, v16, v17, v18;
    sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v19 = sub_1CF9E6948();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v29 = a4(a1);
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v11 + 32) = 0xD000000000000024;
    *(v11 + 40) = 0x80000001CFA360D0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF10EC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF357F60(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD00000000000002ALL;
    *(v8 + 40) = 0x80000001CFA36080;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

void *sub_1CEFF12E8()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD000000000000019, 0x80000001CFA2ECA0), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE180, &unk_1CF9FCAB0);
    swift_dynamicCast();
    v3 = v5;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEAFC8;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE180, &unk_1CF9FCAB0);
    *&v7 = &unk_1F4BEAFC8;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0xD000000000000019, 0x80000001CFA2ECA0);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void sub_1CEFF14E0(uint64_t a1@<X0>, id a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = [a2 columns];
  v7 = sub_1CEFF1D18();
  v8 = MEMORY[0x1D38688F0](v6, &_s9SQLFieldsON_3, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = 0;
  v87 = *(a1 + 16);
  v85 = a1 + 32;
  v10 = 0x1FC859000;
  v11 = MEMORY[0x1E69E6158];
  while (2)
  {
    if (v87 == v9)
    {
      sub_1CEFF2A34(v8, a4);
      v8, v62, v63, v64, v65, v66, v67, v68;
      return;
    }

    v13 = (a3 + v9);
    if (__OFADD__(a3, v9))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      sub_1CF9E8108();
      __break(1u);
LABEL_59:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
    }

    v14 = *(v85 + v9++);
    switch(v14)
    {
      case 1:
      case 2:
      case 5:
      case 6:
      case 7:
      case 8:
      case 11:
      case 13:
      case 14:
      case 19:
        v15 = [a2 BOOLAtIndex_];
        *(&v91 + 1) = MEMORY[0x1E69E6370];
        LOBYTE(v90) = v15;
        goto LABEL_38;
      case 3:
      case 4:
        if ([a2 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        v22 = [a2 dataAtIndex_];
        v23 = sub_1CF9E5B88();
        v25 = v24;

        sub_1CF4C2898(v23, v25);
        if (!v84)
        {
          v27 = v26;
          sub_1CEFE4714(v23, v25);
          if (v27)
          {
            swift_getErrorValue();
            *(&v91 + 1) = v88;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v90);
            (*(*(v88 - 8) + 16))(boxed_opaque_existential_0);

LABEL_38:
            sub_1CEFE9EB8(&v90, v92);
            sub_1CEFD1104(v92, &v90);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v89 = v8;
            v49 = sub_1CEFF1D80(v14);
            v51 = *v8->tree;
            v52 = (v50 & 1) == 0;
            v53 = __OFADD__(v51, v52);
            v54 = v51 + v52;
            if (v53)
            {
              goto LABEL_56;
            }

            v55 = v50;
            if (*v8->tester >= v54)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v61 = v49;
                sub_1CF7CF9E0();
                v49 = v61;
              }
            }

            else
            {
              sub_1CF7C44E8(v54, isUniquelyReferenced_nonNull_native);
              v49 = sub_1CEFF1D80(v14);
              if ((v55 & 1) != (v56 & 1))
              {
                goto LABEL_58;
              }
            }

            v10 = 0x1FC859000uLL;
            if (v55)
            {
              v12 = (*v8[1].tester + 32 * v49);
              __swift_destroy_boxed_opaque_existential_1(v12);
              sub_1CEFE9EB8(&v90, v12);
              __swift_destroy_boxed_opaque_existential_1(v92);
            }

            else
            {
              *(&v8[2].super.isa + (v49 >> 6)) |= 1 << v49;
              *(*v8[1].tree + v49) = v14;
              sub_1CEFE9EB8(&v90, (*v8[1].tester + 32 * v49));
              __swift_destroy_boxed_opaque_existential_1(v92);
              v57 = *v8->tree;
              v53 = __OFADD__(v57, 1);
              v58 = v57 + 1;
              if (v53)
              {
                goto LABEL_57;
              }

              *v8->tree = v58;
            }

            v11 = MEMORY[0x1E69E6158];
          }

          else
          {
            v10 = 0x1FC859000;
LABEL_50:
            v90 = 0u;
            v91 = 0u;
            sub_1CEFCCC44(&v90, &unk_1EC4BEC50, &qword_1CF9FB4B0);
          }

          if (v9 == 0x80000000)
          {
            goto LABEL_55;
          }

          continue;
        }

        sub_1CEFE4714(v23, v25);
        v8, v76, v77, v78, v79, v80, v81, v82;
        return;
      case 9:
      case 10:
      case 12:
      case 15:
      case 16:
      case 17:
        if ([a2 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        v16 = [a2 stringAtIndex_];
        v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v19 = v18;

        *(&v91 + 1) = v11;
        goto LABEL_11;
      case 18:
        if ([a2 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        v59 = [a2 stringAtIndex_];
        v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v19 = v60;

        *(&v91 + 1) = &type metadata for Filename;
LABEL_11:
        *&v90 = v17;
        *(&v90 + 1) = v19;
        goto LABEL_38;
      case 20:
        if ([a2 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
        if ([a2 (v10 + 3104)])
        {
          goto LABEL_60;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_59;
        }

        sub_1CF9E5688();
        swift_allocObject();
        sub_1CF9E5678();
        v40 = [a2 dataAtIndex_];
        v36 = sub_1CF9E5B88();
        v38 = v41;

        sub_1CF1E11C8();
        goto LABEL_31;
      case 21:
        if ([a2 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        if ([a2 (v10 + 3104)])
        {
          goto LABEL_60;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_59;
        }

        sub_1CF9E5688();
        swift_allocObject();
        sub_1CF9E5678();
        v44 = [a2 dataAtIndex_];
        v45 = sub_1CF9E5B88();
        v47 = v46;

        sub_1CEFE78D8();
        sub_1CF9E5668();
        v42 = v45;
        v43 = v47;
        if (v84)
        {
          goto LABEL_52;
        }

        sub_1CEFE4714(v45, v47);

        *(&v91 + 1) = &type metadata for UserInfo;
        v90 = v89;
        goto LABEL_38;
      case 22:
      case 23:
        type metadata accessor for NSFileProviderContentPolicy(0);
        *(&v91 + 1) = v20;
        v21 = [a2 longAtIndex_];
        goto LABEL_26;
      case 24:
        if ([a2 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF630, &unk_1CF9FEEC0);
        if ([a2 (v10 + 3104)])
        {
          goto LABEL_60;
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_59;
        }

        sub_1CF9E5688();
        swift_allocObject();
        sub_1CF9E5678();
        v35 = [a2 dataAtIndex_];
        v36 = sub_1CF9E5B88();
        v38 = v37;

        sub_1CF1E1118();
LABEL_31:
        sub_1CF9E5668();
        v42 = v36;
        v43 = v38;
        if (v84)
        {
LABEL_52:
          sub_1CEFE4714(v42, v43);
          v8, v69, v70, v71, v72, v73, v74, v75;

          return;
        }

        sub_1CEFE4714(v36, v38);

        *(&v91 + 1) = v34;
        *&v90 = v89;
        goto LABEL_38;
      case 25:
        if ([a2 (v10 + 3104)])
        {
          goto LABEL_50;
        }

        if ([a2 (v10 + 3104)])
        {
LABEL_60:
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
        }

        if (swift_dynamicCastMetatype())
        {
          goto LABEL_59;
        }

        v29 = v11;
        v30 = [a2 stringAtIndex_];
        v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v33 = v32;

        *(&v91 + 1) = v29;
        *&v90 = v31;
        *(&v90 + 1) = v33;
        goto LABEL_38;
      default:
        type metadata accessor for NSFileProviderItemCapabilities(0);
        *(&v91 + 1) = v39;
        v21 = [a2 unsignedLongAtIndex_];
LABEL_26:
        *&v90 = v21;
        goto LABEL_38;
    }
  }
}

unint64_t sub_1CEFF1D18()
{
  result = qword_1EDEAC5A8;
  if (!qword_1EDEAC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAC5A8);
  }

  return result;
}

unint64_t sub_1CEFF1D80(uint64_t a1)
{
  v1 = a1;
  sub_1CF9E81D8();
  sub_1CEFF1E08(v1);
  v3 = v2;
  sub_1CF9E69C8();
  v3, v4, v5, v6, v7, v8, v9, v10;
  v11 = sub_1CF9E8228();

  return sub_1CEFF218C(v1, v11, v12, v13, v14, v15, v16, v17);
}

unint64_t sub_1CEFF1E08(char a1)
{
  result = 0x696C696261706163;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x616F6C70755F7369;
      break;
    case 3:
      result = 0x6E6964616F6C7075;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
    case 14:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x65726168735F7369;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
    case 25:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD000000000000024;
      break;
    case 11:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x61746E6F635F7369;
      break;
    case 15:
      result = 0xD00000000000001FLL;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0x5F79616C70736964;
      break;
    case 19:
      result = 0xD000000000000018;
      break;
    case 20:
      result = 0x6365645F6D657469;
      break;
    case 21:
      result = 0x666E695F72657375;
      break;
    case 22:
      result = 0x5F746E65746E6F63;
      break;
    case 23:
      result = 0xD000000000000018;
      break;
    case 24:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1CEFF218C(char a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v12 = ~v9;
    while (1)
    {
      v13 = 0xEC00000073656974;
      v14 = 0x696C696261706163;
      switch(*(*(v8 + 48) + v10))
      {
        case 1:
          v13 = 0xEC000000676E6964;
          goto LABEL_14;
        case 2:
          v13 = 0xEB00000000646564;
LABEL_14:
          v14 = 0x616F6C70755F7369;
          break;
        case 3:
          v14 = 0x6E6964616F6C7075;
          v13 = 0xEF726F7272655F67;
          break;
        case 4:
          v14 = 0xD000000000000011;
          v13 = 0x80000001CFA2C4F0;
          break;
        case 5:
          v14 = 0xD000000000000015;
          v13 = 0x80000001CFA2C510;
          break;
        case 6:
          v14 = 0x65726168735F7369;
          v13 = 0xE900000000000064;
          break;
        case 7:
          v14 = 0xD000000000000018;
          v13 = 0x80000001CFA2C530;
          break;
        case 8:
          v14 = 0xD000000000000019;
          v13 = 0x80000001CFA2C550;
          break;
        case 9:
          v14 = 0xD000000000000017;
          v13 = 0x80000001CFA2C570;
          break;
        case 0xA:
          v14 = 0xD000000000000024;
          v13 = 0x80000001CFA2C590;
          break;
        case 0xB:
          v14 = 0xD00000000000001BLL;
          v13 = 0x80000001CFA2C5C0;
          break;
        case 0xC:
          v14 = 0xD000000000000013;
          v13 = 0x80000001CFA2C5E0;
          break;
        case 0xD:
          v14 = 0x61746E6F635F7369;
          v13 = 0xEC00000072656E69;
          break;
        case 0xE:
          v14 = 0xD000000000000015;
          v13 = 0x80000001CFA2C610;
          break;
        case 0xF:
          v14 = 0xD00000000000001FLL;
          v13 = 0x80000001CFA2C630;
          break;
        case 0x10:
          v14 = 0xD00000000000001ALL;
          v13 = 0x80000001CFA2C650;
          break;
        case 0x11:
          v14 = 0xD000000000000016;
          v13 = 0x80000001CFA2C670;
          break;
        case 0x12:
          v14 = 0x5F79616C70736964;
          v13 = 0xEC000000656D616ELL;
          break;
        case 0x13:
          v14 = 0xD000000000000018;
          v13 = 0x80000001CFA2C6A0;
          break;
        case 0x14:
          v14 = 0x6365645F6D657469;
          v13 = 0xEF6E6F697461726FLL;
          break;
        case 0x15:
          v14 = 0x666E695F72657375;
          v13 = 0xE90000000000006FLL;
          break;
        case 0x16:
          v14 = 0x5F746E65746E6F63;
          v13 = 0xEE007963696C6F70;
          break;
        case 0x17:
          v14 = 0xD000000000000018;
          v13 = 0x80000001CFA2C6F0;
          break;
        case 0x18:
          v14 = 0xD000000000000014;
          v13 = 0x80000001CFA2C710;
          break;
        case 0x19:
          v14 = 0xD000000000000017;
          v13 = 0x80000001CFA2C730;
          break;
        default:
          break;
      }

      v15 = 0x696C696261706163;
      v16 = 0xEC00000073656974;
      switch(a1)
      {
        case 1:
          v16 = 0xEC000000676E6964;
          goto LABEL_49;
        case 2:
          v16 = 0xEB00000000646564;
LABEL_49:
          v15 = 0x616F6C70755F7369;
          if (v14 != 0x616F6C70755F7369)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 3:
          v15 = 0x6E6964616F6C7075;
          v16 = 0xEF726F7272655F67;
          if (v14 != 0x6E6964616F6C7075)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 4:
          v15 = 0xD000000000000011;
          v16 = 0x80000001CFA2C4F0;
          if (v14 != 0xD000000000000011)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 5:
          v15 = 0xD000000000000015;
          v16 = 0x80000001CFA2C510;
          if (v14 != 0xD000000000000015)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 6:
          v15 = 0x65726168735F7369;
          v16 = 0xE900000000000064;
          if (v14 != 0x65726168735F7369)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 7:
          v15 = 0xD000000000000018;
          v16 = 0x80000001CFA2C530;
          if (v14 != 0xD000000000000018)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 8:
          v15 = 0xD000000000000019;
          v16 = 0x80000001CFA2C550;
          if (v14 != 0xD000000000000019)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 9:
          v15 = 0xD000000000000017;
          v16 = 0x80000001CFA2C570;
          if (v14 != 0xD000000000000017)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 10:
          v15 = 0xD000000000000024;
          v16 = 0x80000001CFA2C590;
          if (v14 != 0xD000000000000024)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 11:
          v15 = 0xD00000000000001BLL;
          v16 = 0x80000001CFA2C5C0;
          if (v14 != 0xD00000000000001BLL)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 12:
          v15 = 0xD000000000000013;
          v16 = 0x80000001CFA2C5E0;
          if (v14 != 0xD000000000000013)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 13:
          v15 = 0x61746E6F635F7369;
          v17 = 1919250025;
          goto LABEL_69;
        case 14:
          v15 = 0xD000000000000015;
          v16 = 0x80000001CFA2C610;
          if (v14 != 0xD000000000000015)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 15:
          v15 = 0xD00000000000001FLL;
          v16 = 0x80000001CFA2C630;
          if (v14 != 0xD00000000000001FLL)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 16:
          v15 = 0xD00000000000001ALL;
          v16 = 0x80000001CFA2C650;
          if (v14 != 0xD00000000000001ALL)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 17:
          v15 = 0xD000000000000016;
          v16 = 0x80000001CFA2C670;
          if (v14 != 0xD000000000000016)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 18:
          v15 = 0x5F79616C70736964;
          v17 = 1701667182;
LABEL_69:
          v16 = (v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
          if (v14 != v15)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 19:
          v15 = 0xD000000000000018;
          v16 = 0x80000001CFA2C6A0;
          goto LABEL_78;
        case 20:
          v15 = 0x6365645F6D657469;
          v16 = 0xEF6E6F697461726FLL;
          if (v14 != 0x6365645F6D657469)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 21:
          v15 = 0x666E695F72657375;
          v16 = 0xE90000000000006FLL;
          if (v14 != 0x666E695F72657375)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 22:
          v15 = 0x5F746E65746E6F63;
          v16 = 0xEE007963696C6F70;
          if (v14 != 0x5F746E65746E6F63)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 23:
          v15 = 0xD000000000000018;
          v16 = 0x80000001CFA2C6F0;
          if (v14 != 0xD000000000000018)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 24:
          v15 = 0xD000000000000014;
          v16 = 0x80000001CFA2C710;
          if (v14 != 0xD000000000000014)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        case 25:
          v15 = 0xD000000000000017;
          v16 = 0x80000001CFA2C730;
          if (v14 != 0xD000000000000017)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        default:
LABEL_78:
          if (v14 != v15)
          {
            goto LABEL_80;
          }

LABEL_79:
          if (v13 == v16)
          {
            v13, a2, v15, a4, a5, a6, a7, a8;
            v16, v33, v34, v35, v36, v37, v38, v39;
            return v10;
          }

LABEL_80:
          v18 = sub_1CF9E8048();
          v13, v19, v20, v21, v22, v23, v24, v25;
          v16, v26, v27, v28, v29, v30, v31, v32;
          if (v18)
          {
            return v10;
          }

          v10 = (v10 + 1) & v12;
          if (((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
          {
            return v10;
          }

          break;
      }
    }
  }

  return v10;
}

void sub_1CEFF2A34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1CEFF3314(0, a1);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_1CEFEEA08(1, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v8 = sub_1CEFEEA08(2, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v9 = sub_1CEFF3514(3, a1);
    v10 = sub_1CEFF3514(4, a1);
    v11 = sub_1CEFEEA08(6, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v46 = sub_1CEFEEA08(7, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v45 = sub_1CEFEEA08(8, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v41 = sub_1CEFF3720(9, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v43 = v12;
    v40 = sub_1CEFF3720(10, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v42 = v13;
    v14 = sub_1CEFEEA08(11, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v38 = sub_1CEFF3720(12, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v39 = v15;
    v37 = sub_1CEFEEA08(13, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v36 = sub_1CEFEEA08(14, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v34 = sub_1CEFF3720(15, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v35 = v16;
    v32 = sub_1CEFF3720(16, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v33 = v17;
    v30 = sub_1CEFF3720(17, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v31 = v18;
    sub_1CEFF3938(18, a1, sub_1CEFF1D80, sub_1CEFF1E08, &v44);
    v19 = v44;
    v29 = sub_1CEFEEA08(19, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    v28 = sub_1CEFF3BA4(20, a1);
    v26 = sub_1CEFF3DB0(21, a1);
    v27 = v20;
    v25 = sub_1CEFF3FF8(22, a1);
    v24 = sub_1CEFF3FF8(23, a1);
    v23 = sub_1CEFF41F8(24, a1);
    v21 = sub_1CEFF3720(25, a1, sub_1CEFF1D80, sub_1CEFF1E08);
    *a2 = v6;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
    *(a2 + 40) = v41;
    *(a2 + 48) = v43;
    *(a2 + 8) = v7 & 1;
    *(a2 + 9) = v8 & 1;
    *(a2 + 32) = v11 & 1;
    *(a2 + 33) = v46 & 1;
    *(a2 + 34) = v45 & 1;
    *(a2 + 56) = v40;
    *(a2 + 64) = v42;
    *(a2 + 72) = v14 & 1;
    *(a2 + 80) = v38;
    *(a2 + 88) = v39;
    *(a2 + 96) = 0;
    *(a2 + 104) = v37 & 1;
    *(a2 + 105) = v36 & 1;
    *(a2 + 112) = v34;
    *(a2 + 120) = v35;
    *(a2 + 128) = v32;
    *(a2 + 136) = v33;
    *(a2 + 144) = v30;
    *(a2 + 152) = v31;
    *(a2 + 160) = v19;
    *(a2 + 176) = v29 & 1;
    *(a2 + 184) = v28;
    *(a2 + 192) = v26;
    *(a2 + 200) = v27;
    *(a2 + 208) = v25;
    *(a2 + 216) = v24;
    *(a2 + 224) = v23;
    *(a2 + 232) = v21;
    *(a2 + 240) = v22;
  }
}

uint64_t sub_1CEFF3314(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFF1D80(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  type metadata accessor for NSFileProviderItemCapabilities(0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CEFF1E08(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000035;
    *(v8 + 40) = 0x80000001CFA36040;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF3514(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFF1D80(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CEFF1E08(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000026;
    *(v8 + 40) = 0x80000001CFA35FF0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF3720(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v42);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
  }

  sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v39;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v42, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1CF9E7948();
    v41, v12, v13, v14, v15, v16, v17, v18;
    sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v19 = sub_1CF9E6948();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v29 = a4(a1);
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v11 + 32) = 0xD000000000000027;
    *(v11 + 40) = 0x80000001CFA35FC0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF3938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, __int128 *a5@<X8>)
{
  if (*(a2 + 16) && (v9 = a3(a1), (v10 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v9, v50);
  }

  else
  {
    memset(v50, 0, sizeof(v50));
  }

  sub_1CEFCCBDC(v50, &v48, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a5 = v47;
  }

  else
  {
    sub_1CF0BA850(0, 1, v11, v12, v13, v14, v15, v16);
    sub_1CF24CD3C();
    swift_allocError();
    v19 = v18;
    sub_1CEFCCBDC(v50, v18, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1CF9E7948();
    v49, v20, v21, v22, v23, v24, v25, v26;
    sub_1CEFCCBDC(v50, &v48, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v27 = sub_1CF9E6948();
    v29 = v28;
    MEMORY[0x1D3868CC0](v27);
    v29, v30, v31, v32, v33, v34, v35, v36;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v37 = a4(a1);
    v39 = v38;
    MEMORY[0x1D3868CC0](v37);
    v39, v40, v41, v42, v43, v44, v45, v46;
    *(v19 + 32) = 0xD000000000000029;
    *(v19 + 40) = 0x80000001CFA35F90;
    *(v19 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CEFF3B68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CEFF3BA4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFF1D80(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE558, &unk_1CF9FEEE0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CEFF1E08(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD00000000000002ELL;
    *(v8 + 40) = 0x80000001CFA35F60;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF3DB0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFF1D80(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE568, &qword_1CF9FDDD8);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CEFF1E08(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000029;
    *(v8 + 40) = 0x80000001CFA35F30;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF3FBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CEFF3FF8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFF1D80(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  type metadata accessor for NSFileProviderContentPolicy(0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CEFF1E08(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000032;
    *(v8 + 40) = 0x80000001CFA35EF0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF41F8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFF1D80(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE570, &unk_1CF9FEED0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CEFF1E08(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD00000000000005DLL;
    *(v8 + 40) = 0x80000001CFA35E90;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CEFF4408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon8UserInfoVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CEFF4484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 248) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 248) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon18ItemReconciliationVyAA7VFSItemVSo6FPItemCGSg(uint64_t a1)
{
  v1 = *(a1 + 464);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon0A11ItemVersionVyAA10VFSVersionVAA0d5StateE0VyAA9VFSItemIDOGGSg(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon15CapturedContentVSg(uint64_t a1)
{
  v1 = *(a1 + 24) >> 60;
  v2 = ((4 * v1) & 0xC) == 0;
  v3 = ((4 * v1) & 0xC | (v1 >> 2)) ^ 0xF;
  if (v2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

id sub_1CEFF45EC(void *a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CEFF4768(a2, a3 & 0x1FF);
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
      sub_1CF7CFA08();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1CEFF4C14(v16, a4 & 1);
    v11 = sub_1CEFF4768(a2, a3 & 0x1FF);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
      result = sub_1CF9E8108();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 888 * v11;

    return sub_1CF1D5618(a1, v22);
  }

  else
  {
    sub_1CEFF5390(v11, a2, a3 | (((a3 >> 8) & 1) << 8), a1, v21);

    return sub_1CEFD0988(a2, a3, BYTE1(a3) & 1);
  }
}

unint64_t sub_1CEFF4768(void *a1, __int16 a2)
{
  sub_1CF9E81D8();
  sub_1CEFF47E0(v6, a1, a2 & 0x1FF);
  v4 = sub_1CF9E8228();

  return sub_1CEFF48B4(a1, a2 & 0x1FF, v4);
}

void sub_1CEFF47E0(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    MEMORY[0x1D386A470](1);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v6 = v5;
    sub_1CF9E69C8();

    v6, v7, v8, v9, v10, v11, v12, v13;
  }

  else
  {
    v4 = a3;
    MEMORY[0x1D386A470](0);
    if (v4)
    {
      if (v4 == 1)
      {
        MEMORY[0x1D386A470](1);
        MEMORY[0x1D386A4A0](a2);
      }

      else
      {
        if (a2)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        MEMORY[0x1D386A470](v14);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
    }
  }
}

unint64_t sub_1CEFF48B4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if (((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return v6;
  }

  v8 = a1;
  v9 = ~v5;
  v10 = a2 == 2;
  v11 = a1 == 1 && a2 == 2;
  if (a1)
  {
    v10 = 0;
  }

  v59 = v10;
  v60 = v11;
  v12 = (a2 >> 8) & 1;
  v61 = v12;
  while (1)
  {
    v16 = *(v3 + 48) + 16 * v6;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 9);
    if ((v19 & 1) == 0)
    {
      break;
    }

    if ((a2 & 0x100) == 0)
    {
      goto LABEL_8;
    }

    v20 = v4;
    v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v22;
    v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v26 = v8;
    v27 = v25;
    if (v21 == v24 && v23 == v25)
    {
      sub_1CEFD0988(v17, v18, 1);
      sub_1CEFD0988(v26, a2, 1);
      v23, v44, v45, v46, v47, v48, v49, v50;
      v27, v51, v52, v53, v54, v55, v56, v57;
      sub_1CEFD0994(v26, a2, 1);
      goto LABEL_36;
    }

    v29 = sub_1CF9E8048();
    sub_1CEFD0988(v17, v18, 1);
    sub_1CEFD0988(v26, a2, 1);
    v23, v30, v31, v32, v33, v34, v35, v36;
    v27, v37, v38, v39, v40, v41, v42, v43;
    sub_1CEFD0994(v26, a2, 1);
    if (v29)
    {
      goto LABEL_36;
    }

    v8 = v26;
    sub_1CEFD0994(v17, v18, 1);
    v4 = v20;
    v9 = v62;
    v3 = v63;
    LOBYTE(v12) = v61;
LABEL_10:
    v6 = (v6 + 1) & v9;
    if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return v6;
    }
  }

  if ((a2 & 0x100) != 0)
  {
LABEL_8:
    sub_1CEFD0988(*v16, *(v16 + 8), *(v16 + 9));
    sub_1CEFD0988(v8, a2, v12);
    sub_1CEFD0994(v17, v18, v19);
    v13 = v8;
    v14 = a2;
    v15 = v12;
LABEL_9:
    sub_1CEFD0994(v13, v14, v15);
    goto LABEL_10;
  }

  if (!*(v16 + 8))
  {
    if (!a2 && v17 == v8)
    {
      sub_1CEFD0988(*v16, 0, 0);
      sub_1CEFD0988(v8, 0, 0);
      v18 = 0;
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (v18 == 1)
  {
    if (a2 == 1 && v17 == v8)
    {
      v18 = 1;
      sub_1CEFD0988(v8, 1, 0);
      sub_1CEFD0988(v8, 1, 0);
      v17 = v8;
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (v17)
  {
    if (v60)
    {
      v18 = 2;
      sub_1CEFD0988(1, 2, 0);
      sub_1CEFD0988(1, 2, 0);
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (!v59)
  {
LABEL_32:
    sub_1CEFD0988(v17, v18, 0);
    sub_1CEFD0988(v8, a2, 0);
    v13 = v17;
    v14 = v18;
    v15 = 0;
    goto LABEL_9;
  }

  v18 = 2;
  sub_1CEFD0988(0, 2, 0);
  sub_1CEFD0988(0, 2, 0);
  v17 = 0;
LABEL_36:
  sub_1CEFD0994(v17, v18, v19);
  return v6;
}

uint64_t sub_1CEFF4C14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B60, &qword_1CFA170F0);
  v53 = v4;
  result = sub_1CF9E7BD8();
  v7 = result;
  if (*(v5 + 16))
  {
    v50 = v2;
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
    v51 = (v10 + 63) >> 6;
    v52 = v5;
    v13 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 16 * v20;
      if (v53)
      {
        v72 = *v22;
        v71 = *(v22 + 8);
        v23 = *(v22 + 9);
        v24 = v21 + 888 * v20;
        memcpy(__src, v24, sizeof(__src));
        v60 = *(v24 + 520);
        v61 = *(v24 + 521);
        v63 = *(v24 + 528);
        v64 = *(v24 + 544);
        v62 = *(v24 + 552);
        v54 = *(v24 + 536);
        v55 = *(v24 + 568);
        v65 = *(v24 + 560);
        v66 = *(v24 + 576);
        v56 = *(v24 + 584);
        v57 = *(v24 + 600);
        v67 = *(v24 + 592);
        v68 = *(v24 + 608);
        v69 = *(v24 + 624);
        v58 = *(v24 + 616);
        v59 = *(v24 + 632);
        v70 = *(v24 + 633);
        v25 = *(v24 + 634);
        v85 = *(v24 + 832);
        v86 = *(v24 + 848);
        v87 = *(v24 + 864);
        v88 = *(v24 + 880);
        v81 = *(v24 + 768);
        v82 = *(v24 + 784);
        v83 = *(v24 + 800);
        v84 = *(v24 + 816);
        v77 = *(v24 + 704);
        v78 = *(v24 + 720);
        v79 = *(v24 + 736);
        v80 = *(v24 + 752);
        v73 = *(v24 + 640);
        v74 = *(v24 + 656);
        v75 = *(v24 + 672);
        v76 = *(v24 + 688);
      }

      else
      {
        v26 = *v22;
        v27 = *(v22 + 8);
        v28 = v7;
        v29 = v12;
        v30 = *(v22 + 9);
        memcpy(__dst, (v21 + 888 * v20), sizeof(__dst));
        v70 = __dst[633];
        v59 = __dst[632];
        v68 = *&__dst[608];
        v69 = *&__dst[624];
        v67 = *&__dst[592];
        v57 = __dst[600];
        v58 = __dst[616];
        v56 = __dst[584];
        v65 = *&__dst[560];
        v66 = *&__dst[576];
        v64 = *&__dst[544];
        v62 = __dst[552];
        v63 = *&__dst[528];
        v54 = __dst[536];
        v55 = __dst[568];
        v60 = __dst[520];
        v61 = __dst[521];
        v72 = v26;
        v71 = v27;
        v31 = v27;
        v23 = v30;
        v12 = v29;
        v7 = v28;
        v25 = __dst[634];
        sub_1CEFD0988(v26, v31, v23);
        sub_1CEFF4514(__dst, &v73);
        memcpy(__src, __dst, sizeof(__src));
        v85 = *&__dst[832];
        v86 = *&__dst[848];
        v87 = *&__dst[864];
        v88 = *&__dst[880];
        v81 = *&__dst[768];
        v82 = *&__dst[784];
        v83 = *&__dst[800];
        v84 = *&__dst[816];
        v77 = *&__dst[704];
        v78 = *&__dst[720];
        v79 = *&__dst[736];
        v80 = *&__dst[752];
        v73 = *&__dst[640];
        v74 = *&__dst[656];
        v75 = *&__dst[672];
        v76 = *&__dst[688];
      }

      sub_1CF9E81D8();
      if (v23)
      {
        MEMORY[0x1D386A470](1);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v33 = v32;
        sub_1CF9E69C8();
        v33, v34, v35, v36, v37, v38, v39, v40;
      }

      else
      {
        MEMORY[0x1D386A470](0);
        if (v71)
        {
          if (v71 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v72);
          }

          else
          {
            if (v72)
            {
              v41 = 3;
            }

            else
            {
              v41 = 2;
            }

            MEMORY[0x1D386A470](v41);
          }
        }

        else
        {
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }
      }

      result = sub_1CF9E8228();
      v42 = -1 << *(v7 + 32);
      v43 = result & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v13 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v13 + 8 * v44);
          if (v48 != -1)
          {
            v14 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v43) & ~*(v13 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *&__dst[197] = v85;
      *&__dst[213] = v86;
      *&__dst[229] = v87;
      *&__dst[245] = v88;
      *&__dst[133] = v81;
      *&__dst[149] = v82;
      *&__dst[165] = v83;
      *&__dst[181] = v84;
      *&__dst[69] = v77;
      *&__dst[85] = v78;
      *&__dst[101] = v79;
      *&__dst[117] = v80;
      *&__dst[5] = v73;
      *&__dst[21] = v74;
      *&__dst[37] = v75;
      *&__dst[53] = v76;
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v7 + 48) + 16 * v14;
      *v15 = v72;
      *(v15 + 8) = v71;
      *(v15 + 9) = v23;
      v16 = *(v7 + 56) + 888 * v14;
      result = memcpy(v16, __src, 0x208uLL);
      *(v16 + 520) = v60;
      *(v16 + 521) = v61;
      *(v16 + 528) = v63;
      *(v16 + 536) = v54;
      *(v16 + 544) = v64;
      *(v16 + 552) = v62;
      *(v16 + 560) = v65;
      *(v16 + 568) = v55;
      *(v16 + 576) = v66;
      *(v16 + 584) = v56;
      *(v16 + 592) = v67;
      *(v16 + 600) = v57;
      *(v16 + 608) = v68;
      *(v16 + 616) = v58;
      *(v16 + 624) = v69;
      *(v16 + 632) = v59;
      *(v16 + 633) = v70;
      *(v16 + 634) = v25;
      *(v16 + 827) = *&__dst[192];
      *(v16 + 843) = *&__dst[208];
      *(v16 + 859) = *&__dst[224];
      *(v16 + 872) = *&__dst[237];
      *(v16 + 763) = *&__dst[128];
      *(v16 + 779) = *&__dst[144];
      *(v16 + 795) = *&__dst[160];
      *(v16 + 811) = *&__dst[176];
      *(v16 + 699) = *&__dst[64];
      *(v16 + 715) = *&__dst[80];
      *(v16 + 731) = *&__dst[96];
      *(v16 + 747) = *&__dst[112];
      *(v16 + 635) = *__dst;
      *(v16 + 651) = *&__dst[16];
      *(v16 + 667) = *&__dst[32];
      *(v16 + 683) = *&__dst[48];
      ++*(v7 + 16);
      v5 = v52;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v8 >= v51)
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

    if ((v53 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_44;
    }

    v49 = 1 << *(v5 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v9, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v49;
    }

    *(v5 + 16) = 0;
  }

LABEL_44:
  *v3 = v7;
  return result;
}

void *sub_1CEFF5390(unint64_t a1, uint64_t a2, __int16 a3, void *__src, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = a5[6] + 16 * a1;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 9) = HIBYTE(a3) & 1;
  result = memcpy((a5[7] + 888 * a1), __src, 0x378uLL);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1CEFF5464(_TtC18FileProviderDaemon8FSTester *a1@<X0>, void *a2@<X8>, const char *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v10 = *a1->tree;
  if (v10)
  {
    v11 = 0;
    v12 = a1 + 1;
    do
    {
      isa = v12->super.isa;
      v12 = (v12 + 8);
      v13 = isa;
      if ((isa & ~v11) == 0)
      {
        v13 = 0;
      }

      v11 |= v13;
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  a1, a3, a4, a5, a6, a7, a8, a9;
  *a2 = v11;
}

void sub_1CEFF54BC(_BYTE *a1@<X8>)
{
  v2 = v1;
  v258 = a1;
  v238 = sub_1CF9E6118();
  v237 = *(v238 - 1);
  MEMORY[0x1EEE9AC00](v238);
  v240 = &v225 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CF9E5CF8();
  v5 = *v4[-1].tester;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v225 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v225 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v241 = &v225 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v225 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v244 = &v225 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v225 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v225 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v255 = &v225 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v225 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v250 = &v225 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v256 = &v225 - v32;
  v33 = sub_1CF9E5FF8();
  v248 = *(v33 - 8);
  v249 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v242 = &v225 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v36 = MEMORY[0x1EEE9AC00](v35).n128_u64[0];
  v239 = &v225 - v37;
  v38 = [v1 documentSize];
  if (!v38)
  {
    sub_1CEFD57E0(0, &qword_1EDEAED20, 0x1E696AD98);
    v38 = sub_1CF9E7548();
  }

  v252 = v4;
  v39 = v38;
  v243 = sub_1CF9E8198();

  v40 = fpfs_supports_vfs_ignore_permissions_iopolicy();
  v257 = v5;
  v254 = v20;
  v251 = v23;
  v246 = v10;
  v247 = v15;
  v245 = v7;
  if (v40)
  {
    v41 = ([v2 fileSystemFlags] << 7) & 0x100;
  }

  else
  {
    v41 = 292;
  }

  v42 = (32 * [v2 fileSystemFlags]) & 0x80;
  v253 = v42 & 0xFFFFFFBF | (([v2 &selRef_initWithPhotoLibraryURL_ + 7] & 1) << 6) | v41;
  v43 = [v2 itemID];
  v44 = [v43 identifier];

  v45 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v47 = v46;
  v48 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v50 = v49;
  if (v45 == v48 && v47 == v49)
  {
    goto LABEL_8;
  }

  v65 = sub_1CF9E8048();

  v47, v66, v67, v68, v69, v70, v71, v72;
  v50, v73, v74, v75, v76, v77, v78, v79;
  if (v65)
  {
    goto LABEL_10;
  }

  v86 = [v2 itemID];
  v44 = [v86 identifier];

  v87 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v47 = v88;
  v89 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v50 = v90;
  if (v87 == v89 && v47 == v90)
  {
LABEL_8:

    v47, v51, v52, v53, v54, v55, v56, v57;
    v50, v58, v59, v60, v61, v62, v63, v64;
LABEL_10:
    v80 = v254;
    goto LABEL_11;
  }

  v91 = sub_1CF9E8048();

  v47, v92, v93, v94, v95, v96, v97, v98;
  v50, v99, v100, v101, v102, v103, v104, v105;
  v80 = v254;
  if ((v91 & 1) == 0)
  {
    v81 = v250;
    v82 = v248;
    goto LABEL_13;
  }

LABEL_11:
  v81 = v250;
  v82 = v248;
  if (!v253)
  {
    v253 = v41 | 0x1C0;
  }

LABEL_13:
  v83 = [v2 isPackage];
  v84 = v249;
  if (v83)
  {
    v85 = 0;
  }

  else if ([v2 isFolder])
  {
    v85 = 1;
  }

  else
  {
    v106 = [v2 contentType];
    v107 = v239;
    sub_1CF9E5F48();

    v108 = v242;
    sub_1CF9E5F18();
    LOBYTE(v106) = sub_1CF9E5FB8();
    v109 = *(v82 + 8);
    v109(v108, v84);
    v109(v107, v84);
    if (v106)
    {
      v85 = 2;
    }

    else
    {
      v110 = [v2 contentType];
      sub_1CF9E5F48();

      sub_1CF9E5FC8();
      LOBYTE(v110) = sub_1CF9E5FB8();
      v109(v108, v84);
      v109(v107, v84);
      if (v110)
      {
        v85 = 3;
      }

      else
      {
        v85 = 0;
      }
    }

    v81 = v250;
    v80 = v254;
  }

  if (([v2 isPackage] & 1) == 0 && !objc_msgSend(v2, sel_isFolder))
  {
    goto LABEL_31;
  }

  v111 = [v2 childItemCount];
  if (v111)
  {

LABEL_31:
    v112 = [v2 childItemCount];
    if (v112)
    {
      v113 = v112;
      LODWORD(v248) = [v112 unsignedIntValue];

      LODWORD(v242) = 0;
    }

    else
    {
      LODWORD(v248) = 0;
      LODWORD(v242) = 1;
    }

    goto LABEL_35;
  }

  LODWORD(v242) = 0;
  LODWORD(v248) = 65533;
LABEL_35:
  v114 = v252;
  v115 = [v2 creationDate];
  if (v115)
  {
    v116 = v115;
    sub_1CF9E5CB8();

    v117 = 0;
  }

  else
  {
    v117 = 1;
  }

  v118 = v257;
  v119 = *(v257 + 56);
  v119(v81, v117, 1, v114);
  v120 = v81;
  v121 = v256;
  sub_1CEFF67F4(v120, v256);
  sub_1CEFCCBDC(v121, v28, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v122 = *(v118 + 48);
  v249 = v118 + 48;
  if (v122(v28, 1, v114) == 1)
  {
    sub_1CEFCCC44(v28, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    goto LABEL_48;
  }

  (*(v118 + 32))(v241, v28, v114);
  sub_1CF9E5C98();
  if ((*&v123 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_102;
  }

  if (v123 <= -9.22337204e18)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  if (v123 >= 9.22337204e18)
  {
LABEL_103:
    __break(1u);
    return;
  }

  if (fpfs_is_busy_date())
  {
    v250 = v122;
    v124 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v125 = v2;
    v126 = sub_1CF9E6108();
    v127 = sub_1CF9E7298();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      *v128 = 138543362;
      *(v128 + 4) = v125;
      *v129 = v125;
      v130 = v125;
      _os_log_impl(&dword_1CEFC7000, v126, v127, "🏗 Dropping busy date for remotely provided file %{public}@", v128, 0xCu);
      sub_1CEFCCC44(v129, &qword_1EC4BE350, &unk_1CF9FC3B0);
      MEMORY[0x1D386CDC0](v129, -1, -1);
      v131 = v128;
      v80 = v254;
      MEMORY[0x1D386CDC0](v131, -1, -1);
    }

    (*(v237 + 8))(v240, v238);
    (*(v257 + 8))(v241, v114);
    v132 = v256;
    sub_1CEFCCC44(v256, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v119(v132, 1, 1, v114);
    v122 = v250;
  }

  else
  {
    (*(v257 + 8))(v241, v114);
  }

LABEL_48:
  v133 = [v2 extendedAttributes];
  if (v133 && (v134 = v133, v135 = sub_1CF9E6638(), v134, v136 = *v135->tree, v135, v137, v138, v139, v140, v141, v142, v143, v136) && (v144 = [v2 extendedAttributes]) != 0)
  {
    v145 = v144;
    v241 = sub_1CF9E6638();
  }

  else
  {
    v241 = 0;
  }

  v146 = 0;
  if (v85 > 1)
  {
    if (v85 == 2)
    {
      v240 = 0;
LABEL_63:
      v160 = [v2 typeAndCreator];
      v161 = v252;
      if (v160)
      {
        v239 = [v2 typeAndCreator];
        LODWORD(v250) = 0;
        LODWORD(v237) = 0;
        v238 = 0;
      }

      else
      {
        LODWORD(v250) = 0;
        v239 = 0;
        v238 = 0;
        LODWORD(v237) = 1;
      }

      v236 = 1;
      goto LABEL_69;
    }
  }

  else
  {
    v146 = v85 != 0;
  }

  v147 = [v2 tags];
  if (v147)
  {
    v155 = v147;
    sub_1CEFD57E0(0, &unk_1EC4C1190, 0x1E6967428);
    v156 = sub_1CF9E6D48();
  }

  else
  {
    v156 = 0;
  }

  v240 = sub_1CEFF6864(v156, v148, v149, v150, v151, v152, v153, v154);
  if (!v146)
  {
    goto LABEL_63;
  }

  v157 = [v2 favoriteRank];
  if (v157)
  {
    v158 = v157;
    v238 = [v157 unsignedLongLongValue];

    v239 = 0;
    v236 = 0;
    LODWORD(v250) = 1;
    v159 = &v262;
  }

  else
  {
    v239 = 0;
    v238 = 0;
    LODWORD(v250) = 1;
    LODWORD(v237) = 1;
    v159 = &v261 + 4;
  }

  *(v159 - 64) = 1;
  v161 = v252;
LABEL_69:
  sub_1CEFCCBDC(v256, v255, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v162 = [v2 contentModificationDate];
  if (v162)
  {
    v163 = v251;
    v164 = v162;
    sub_1CF9E5CB8();

    v165 = 0;
  }

  else
  {
    v165 = 1;
    v163 = v251;
  }

  v166 = 1;
  v119(v163, v165, 1, v161);
  v229 = [v2 capabilities];
  v235 = [v2 fileSystemFlags];
  v234 = [v2 fileSystemFlags];
  v167 = [v2 lastUsedDate];
  v168 = v122;
  if (v167)
  {
    v169 = v167;
    sub_1CF9E5CB8();

    v166 = 0;
  }

  v170 = v243;
  v119(v80, v166, 1, v161);
  v171 = v85;
  v259 = v85;
  sub_1CEFF6A20(&v259, &v260);
  v172 = v260;
  v228 = [v2 isContentZoneRoot];
  v173 = [v2 isPackage];
  v174 = [v2 collaborationIdentifier];
  LODWORD(v243) = v172;
  if (v174)
  {
    v175 = v174;
    v227 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v252 = v176;
  }

  else
  {
    v227 = 0;
    v252 = 0;
  }

  v177 = v244;
  v178 = type metadata accessor for ItemMetadata(0);
  v179 = v258;
  v180 = &v258[v178[14]];
  *v180 = 0;
  v180[1] = 0;
  v233 = v180;
  v179[v178[17]] = 2;
  v244 = v178[23];
  v179[v244] = 6;
  v230 = v178[30];
  v119(&v179[v230], 1, 1, v161);
  v232 = &v179[v178[34]];
  v231 = xmmword_1CF9F4E20;
  *v232 = xmmword_1CF9F4E20;
  v181 = &v179[v178[38]];
  v182 = v250 | v173;
  *v181 = 0;
  v181[1] = 0;
  v226 = v181;
  if (fpfs_supports_vfs_ignore_permissions_iopolicy())
  {
    v183 = v253 | 0x40;
    if ((v182 & 1) == 0)
    {
      v183 = v253;
    }
  }

  else
  {
    v184 = v253 | (v253 >> 2) & 0x40 | 0x80;
    if ((v182 & 1) == 0)
    {
      LOWORD(v184) = v253;
    }

    v183 = (4 * v184) & 0x100 | v184;
  }

  v185 = v258;
  *v258 = v171;
  v185[v178[20]] = 0;
  v185[v178[28]] = v173;
  v185[v178[29]] = v173;
  *&v185[v178[26]] = v170;
  *&v185[v178[27]] = 0;
  v186 = (*v185 == 1) | v173;
  v187 = v248;
  if (!((*v185 == 1) | v173 & 1))
  {
    v187 = 0;
  }

  v188 = v242;
  *(v185 + 1) = v187;
  v185[8] = v188 & 1 | ((v186 & 1) == 0);
  v189 = &v185[v178[37]];
  *v189 = 0;
  v189[4] = 1;
  *(v185 + 5) = v183;
  sub_1CEFCCBDC(v255, v177, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if (v168(v177, 1, v161) == 1)
  {
    v190 = v246;
    sub_1CF9E5C88();
    v191 = v168(v177, 1, v161);
    v192 = v257;
    v193 = v247;
    if (v191 != 1)
    {
      sub_1CEFCCC44(v177, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    v192 = v257;
    v190 = v246;
    (*(v257 + 32))(v246, v177, v161);
    v193 = v247;
  }

  v194 = v229 & 0xE;
  v253 = v250 & v228;
  v195 = *(v192 + 32);
  v195(&v258[v178[7]], v190, v161);
  v196 = v251;
  sub_1CEFCCBDC(v251, v193, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v197 = v168(v193, 1, v161);
  v257 = v192 + 32;
  if (v197 == 1)
  {
    v198 = v245;
    sub_1CF9E5C88();
    sub_1CEFCCC44(v196, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v255, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v256, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    if (v168(v193, 1, v161) != 1)
    {
      sub_1CEFCCC44(v193, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    }
  }

  else
  {
    sub_1CEFCCC44(v196, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v255, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    sub_1CEFCCC44(v256, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v198 = v245;
    v195(v245, v193, v161);
  }

  v199 = v194 == 0;
  v200 = v178[31];
  v201 = v258;
  v202 = &v258[v178[32]];
  v203 = v178[33];
  v204 = &v258[v178[35]];
  v195(&v258[v178[8]], v198, v161);
  v201[v178[9]] = v199;
  v201[v178[10]] = (v235 & 8) != 0;
  v201[v178[13]] = (v234 & 0x10) != 0;
  *&v201[v178[19]] = 0;
  v201[v178[21]] = v243;
  v201[v178[15]] = v253;
  v201[v178[16]] = 0;
  v201[v178[11]] = 0;
  v201[v178[12]] = 0;
  v201[v178[18]] = 0;
  sub_1CEFE4804(v254, &v201[v230]);
  *&v201[v200] = v240;
  *v202 = v238;
  v202[8] = v236;
  *&v201[v203] = v241;
  v205 = v233;
  v233[1], v206, v207, v208, v209, v210, v211, v212;
  *v205 = 0;
  v205[1] = 0;
  v213 = v232;
  sub_1CEFE48D8(*v232, *(v232 + 1));
  *v213 = v231;
  *v204 = v239;
  v204[8] = v237;
  v201[v178[36]] = 0;
  if (v252)
  {
    if ((v252 & 0x2000000000000000) != 0)
    {
      v221 = (v252 >> 56) & 0xF;
    }

    else
    {
      v221 = v227 & 0xFFFFFFFFFFFFLL;
    }

    if (v221)
    {
      v222 = v226;
      v223 = v252;
      *v226 = v227;
      v222[1] = v223;
    }

    else
    {
      v252, v214, v215, v216, v217, v218, v219, v220;
    }
  }

  v224 = v258;
  v258[v178[24]] = 0;
  v224[v178[25]] = 0;
  v224[v178[22]] = 0;
  v224[v244] = 6;
}