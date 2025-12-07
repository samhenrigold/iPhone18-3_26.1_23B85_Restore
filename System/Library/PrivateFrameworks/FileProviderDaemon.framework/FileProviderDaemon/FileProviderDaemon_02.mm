uint64_t sub_1CEFF67F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1CEFF6864(_TtC18FileProviderDaemon8FSTester *a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (!a1)
  {
    return 0;
  }

  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_21:
    a1, a2, a3, a4, a5, a6, a7, a8;
    v12 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
      return v12;
    }

    goto LABEL_22;
  }

LABEL_20:
  v9 = sub_1CF9E7818();
  if (!v9)
  {
    goto LABEL_21;
  }

LABEL_4:
  v37 = MEMORY[0x1E69E7CC0];
  result = sub_1CF680B0C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = v37;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1D3869C30](v11, a1);
      }

      else
      {
        v13 = *(&a1[1].super.isa + v11);
      }

      v14 = v13;
      v15 = [v13 label];
      v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v18 = v17;

      v19 = [v14 color];
      if ((v19 & 0x80000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v19 > 0xFF)
      {
        goto LABEL_19;
      }

      if (!v19)
      {
        LOBYTE(v19) = 1;
      }

      v28 = *(v37 + 16);
      v27 = *(v37 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1CF680B0C((v27 > 1), v28 + 1, 1);
      }

      ++v11;
      *(v37 + 16) = v28 + 1;
      v29 = v37 + 24 * v28;
      *(v29 + 32) = v16;
      *(v29 + 40) = v18;
      *(v29 + 48) = v19;
    }

    while (v9 != v11);
    a1, v20, v21, v22, v23, v24, v25, v26;
    if (*(v37 + 16))
    {
      return v12;
    }

LABEL_22:
    v12, v30, v31, v32, v33, v34, v35, v36;
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1CEFF6A20@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*result - 1 < 2)
  {
    goto LABEL_5;
  }

  result = [v2 isUploaded];
  if (!result)
  {
    goto LABEL_5;
  }

  result = [v2 isExcludedFromSync];
  if (result)
  {
    goto LABEL_5;
  }

  result = [v2 capabilities];
  if ((result & 0x40) == 0)
  {
    goto LABEL_5;
  }

  sub_1CF06C190(v4);
  v6[12] = v4[12];
  v7 = v4[13];
  v8 = v4[14];
  v9 = v5;
  v6[8] = v4[8];
  v6[9] = v4[9];
  v6[10] = v4[10];
  v6[11] = v4[11];
  v6[4] = v4[4];
  v6[5] = v4[5];
  v6[6] = v4[6];
  v6[7] = v4[7];
  v6[0] = v4[0];
  v6[1] = v4[1];
  v6[2] = v4[2];
  v6[3] = v4[3];
  result = get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v6);
  if (result == 1)
  {
    goto LABEL_7;
  }

  result = sub_1CEFCCC44(v4, &qword_1EC4BECF0, &unk_1CF9FEEB0);
  if (v7 != 3 && v7 != 1002)
  {
    if (v7 == 500)
    {
LABEL_5:
      *a2 = 0;
      return result;
    }

LABEL_7:
    *a2 = 4;
    return result;
  }

  *a2 = 5;
  return result;
}

uint64_t sub_1CEFF6B78(uint64_t *a1, id obj)
{
  v3 = *a1;
  v9 = 0;
  v4 = objc_sync_enter(obj);
  if (v4)
  {
    MEMORY[0x1EEE9AC00](v4);
    v8 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CEFF6CDC(obj, v3, &v9);
  v5 = objc_sync_exit(obj);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v5);
    v8 = obj;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v7, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return v9;
}

uint64_t sub_1CEFF6CDC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = OBJC_IVAR____TtC18FileProviderDaemon20FPDDomainFPFSBackend_runningEnumerator;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v47 = v5;
  while (v9)
  {
LABEL_12:
    sub_1CEFF6FC0(*(v5 + 56) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))), v50);
    sub_1CEFF701C(v50, v49);
    if (!swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_5;
    }

    type metadata accessor for FPFSEnumerator(0);
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      swift_unknownObjectRelease();
LABEL_5:
      result = sub_1CEFF70F4(v49);
      goto LABEL_6;
    }

    v15 = v14;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;
    if (!*(v15 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8))
    {
      v48 = 0xE600000000000000;
      LODWORD(v51) = *(v15 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
      goto LABEL_18;
    }

    if (*(v15 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID + 8) == 1)
    {
      v48 = 0xE700000000000000;
      v51 = *(v15 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID);
LABEL_18:
      v18 = sub_1CF9E7F98();
      v20 = v19;
      MEMORY[0x1D3868CC0](v18);
      v20, v21, v22, v23, v24, v25, v26, v27;
      MEMORY[0x1D3868CC0](41, 0xE100000000000000);
      v28 = v48;
      goto LABEL_22;
    }

    if (*(v15 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_vfsItemID))
    {
      v28 = 0xE500000000000000;
    }

    else
    {
      v28 = 0xE400000000000000;
    }

LABEL_22:
    sub_1CEFE4E68();
    v29 = sub_1CF9E7698();
    v17, v30, v31, v32, v33, v34, v35, v36;
    v28, v37, v38, v39, v40, v41, v42, v43;
    sub_1CEFF70F4(v49);
    if (v29)
    {
      v44 = *(v15 + OBJC_IVAR____TtC18FileProviderDaemon14FPFSEnumerator_presenterEnumerator);
      result = swift_unknownObjectRelease();
      v45 = v44 == 1;
      v5 = v47;
      if (v45)
      {

        *a3 = 1;
        return result;
      }
    }

    else
    {
      result = swift_unknownObjectRelease();
      v5 = v47;
    }

LABEL_6:
    v9 &= v9 - 1;
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
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for FPFSEnumerator(uint64_t a1)
{
  result = qword_1EDEA7C48;
  if (!qword_1EDEA7C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CEFF70C4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4800, &unk_1CF9FB4A0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1CEFF7124(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CEFF7134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v41 = a5;
  v42 = a1;
  v44 = a3;
  v43 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_1CF9E6068();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEFCCBDC(a4, v14, &unk_1EC4BED20, &unk_1CFA00700);
  v19 = *(v16 + 48);
  if (v19(v14, 1, v15) == 1)
  {
    v20 = a7;
    sub_1CF9E6048();
    if (v19(v14, 1, v15) != 1)
    {
      sub_1CEFCCC44(v14, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
  }

  (*(v16 + 16))(a8, v18, v15);
  v21 = type metadata accessor for Signpost(0);
  *(a8 + *(v21 + 20)) = a7;
  v22 = a8 + *(v21 + 24);
  v24 = v42;
  v23 = v43;
  *v22 = v42;
  *(v22 + 8) = v23;
  v25 = v44;
  *(v22 + 16) = v44;
  if (a6)
  {
    v40 = a7;

    v26 = v23;
    v27 = sub_1CF9E7468();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v28 = v24;
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1CF9FA450;
    *(v29 + 56) = MEMORY[0x1E69E6158];
    *(v29 + 64) = sub_1CEFD51C4();
    *(v29 + 32) = v41;
    *(v29 + 40) = a6;
    sub_1CF9E6028(v27, &dword_1CEFC7000, v40, v28, v26, v25, a8, "%s", 2);
    v29, v30, v31, v32, v33, v34, v35, v36;
  }

  else
  {
    v37 = a7;
    sub_1CF9E7468();
    sub_1CF9E6038();
  }

  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_1CEFF7450(uint64_t a1)
{
  v1 = *(a1 + 464);
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

id sub_1CEFF74D0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69674A8]);
  v3 = sub_1CF9E6D28();
  v4 = sub_1CF9E6D28();
  v5 = [v2 initWithKeys:v3 values:v4];

  return v5;
}

uint64_t sub_1CEFF7560(int *a1, unsigned int a2, void *a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  v62 = *(v65 + 84);
  if (v62)
  {
    v3 = v62 - 1;
  }

  else
  {
    v3 = 0;
  }

  v64 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = *(v64 + 84);
  v49 = swift_getAssociatedTypeWitness();
  v63 = *(v49 - 8);
  v5 = *(v63 + 84);
  v48 = v5;
  if (v4 > v5)
  {
    v5 = v4;
  }

  v51 = v5;
  if (v5 <= 0x7FFFFFFE)
  {
    v5 = 2147483646;
  }

  v54 = v5;
  v55 = v4;
  v6 = v5 - 1;
  if (v3 > v6)
  {
    v6 = v3;
  }

  v57 = v3;
  v58 = v6;
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = v6;
  }

  v61 = *(swift_getAssociatedTypeWitness() - 8);
  v67 = *(v61 + 84);
  if (v67)
  {
    v8 = v67 - 1;
  }

  else
  {
    v8 = 0;
  }

  v47 = swift_getAssociatedTypeWitness();
  v60 = *(v47 - 8);
  v9 = *(v60 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = v10;
  v50 = v9;
  if (v9 <= *(v10 + 84))
  {
    v12 = *(v10 + 84);
  }

  else
  {
    v12 = v9;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v53 = v8;
  if (v8 <= v13 - 1)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = v8;
  }

  if (v14 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = v14;
  }

  v56 = v7;
  if (v15 <= v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = *(v63 + 80);
  v18 = *(v64 + 64);
  v19 = *(v10 + 80);
  v20 = *(v60 + 64);
  if (v62)
  {
    v21 = *(v65 + 64);
  }

  else
  {
    v21 = *(v65 + 64) + 1;
  }

  if (v67)
  {
    v22 = *(v61 + 64);
  }

  else
  {
    v22 = *(v61 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = *(v64 + 80) & 0xF8 | v17 | 7;
  v24 = v18 + 7;
  v25 = *(v60 + 80) & 0xF8 | v19 | 7;
  v26 = v25 | *(v61 + 80) & 0xF8;
  v27 = ((((((((v23 + ((((v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v23) + ((((*(v63 + 64) + ((v17 + 8 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 50) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v26 + 8;
  v28 = v22 + 7;
  v29 = ((((((((v25 + 9 + (((v28 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v25) + ((((*(v10 + 64) + ((v19 + 8 + ((v20 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v19) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 50) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 < a2)
  {
    v30 = ((((((v29 + (v27 & ~v26) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
    v31 = v30 & 0xFFFFFFF8;
    if ((v30 & 0xFFFFFFF8) != 0)
    {
      v32 = 2;
    }

    else
    {
      v32 = a2 - v16 + 1;
    }

    if (v32 >= 0x10000)
    {
      v33 = 4;
    }

    else
    {
      v33 = 2;
    }

    if (v32 < 0x100)
    {
      v33 = 1;
    }

    if (v32 >= 2)
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    if (v34 > 1)
    {
      if (v34 == 2)
      {
        v35 = *(a1 + v30);
        if (v35)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v35 = *(a1 + v30);
        if (v35)
        {
          goto LABEL_55;
        }
      }
    }

    else if (v34)
    {
      v35 = *(a1 + v30);
      if (v35)
      {
LABEL_55:
        v36 = v35 - 1;
        if (v31)
        {
          v36 = 0;
          v37 = *a1;
        }

        else
        {
          v37 = 0;
        }

        return v16 + (v37 | v36) + 1;
      }
    }
  }

  if (v58 == v16)
  {
    if (v57 == v56)
    {
      if (v62 >= 2)
      {
        v38 = (*(v65 + 48))(a1, v62, AssociatedTypeWitness);
        goto LABEL_90;
      }

      return 0;
    }

    v41 = (((((a1 + v21 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v23 + 9) & ~v23;
    if (v55 == v54)
    {
      v38 = (*(v64 + 48))(v41);
      goto LABEL_90;
    }

    v44 = ((v24 + v41) & 0xFFFFFFFFFFFFFFF8);
    if (v51 <= 0x7FFFFFFE)
    {
      v45 = *v44;
LABEL_83:
      if (v45 >= 0xFFFFFFFF)
      {
        LODWORD(v45) = -1;
      }

      if ((v45 + 1) >= 2)
      {
        v38 = v45;
      }

      else
      {
        v38 = 0;
      }

      goto LABEL_90;
    }

    v38 = (*(v63 + 48))((v44 + v17 + 8) & ~v17, v48, v49);
    goto LABEL_90;
  }

  v39 = (a1 + v27) & ~v26;
  if (v14 == v16)
  {
    if (v53 == v15)
    {
      if (v67 < 2)
      {
        return 0;
      }

      v38 = (*(v61 + 48))(v39);
    }

    else
    {
      v43 = (v25 + 9 + ((((v28 + v39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v25;
      if (v50 == v13)
      {
        v38 = (*(v60 + 48))(v43, v50, v47);
      }

      else
      {
        v46 = ((v20 + 7 + v43) & 0xFFFFFFFFFFFFFFF8);
        if (v12 <= 0x7FFFFFFE)
        {
          v45 = *v46;
          goto LABEL_83;
        }

        v38 = (*(v11 + 48))((v46 + v19 + 8) & ~v19);
      }
    }

LABEL_90:
    if (v38 >= 2)
    {
      return v38 - 1;
    }

    else
    {
      return 0;
    }
  }

  v42 = *(((v29 + v39) & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v42 >= 0xFFFFFFFF)
  {
    LODWORD(v42) = -1;
  }

  return (v42 + 1);
}

void sub_1CEFF7CA4(unsigned int *a1, unsigned int a2, unsigned int a3, void *a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  v70 = v78;
  v71 = AssociatedTypeWitness;
  v86 = *(v78 + 84);
  if (v86)
  {
    v5 = v86 - 1;
  }

  else
  {
    v5 = 0;
  }

  v66 = swift_getAssociatedTypeWitness();
  v74 = *(v66 - 8);
  v84 = v74;
  v6 = *(v74 + 84);
  v64 = swift_getAssociatedTypeWitness();
  v77 = *(v64 - 8);
  v7 = *(v77 + 84);
  v63 = v7;
  if (v6 > v7)
  {
    v7 = v6;
  }

  v65 = v7;
  if (v7 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  v68 = v6;
  v69 = v7;
  v8 = v7 - 1;
  if (v5 > v8)
  {
    v8 = v5;
  }

  v72 = v5;
  v73 = v8;
  if (v8 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  v87 = v8;
  v67 = swift_getAssociatedTypeWitness();
  v80 = *(v67 - 8);
  v85 = *(v80 + 84);
  if (v85)
  {
    v9 = v85 - 1;
  }

  else
  {
    v9 = 0;
  }

  v62 = swift_getAssociatedTypeWitness();
  v76 = *(v62 - 8);
  v10 = *(v76 + 84);
  v11 = 0;
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = v12;
  v14 = *(v78 + 64);
  v15 = v74;
  v75 = v10;
  if (v10 <= *(v12 + 84))
  {
    v16 = *(v12 + 84);
  }

  else
  {
    v16 = v10;
  }

  if (v16 <= 0x7FFFFFFE)
  {
    v17 = 2147483646;
  }

  else
  {
    v17 = v16;
  }

  v79 = v9;
  if (v9 <= v17 - 1)
  {
    v18 = v17 - 1;
  }

  else
  {
    v18 = v9;
  }

  if (v18 <= 0x7FFFFFFE)
  {
    v19 = 2147483646;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v77 + 80);
  v21 = *(v15 + 64);
  v22 = *(v12 + 80);
  v23 = *(v76 + 64);
  v24 = *(v12 + 64);
  if (v19 <= v87)
  {
    v25 = v87;
  }

  else
  {
    v25 = v19;
  }

  if (v25 <= 0x7FFFFFFF)
  {
    v26 = 0x7FFFFFFF;
  }

  else
  {
    v26 = v25;
  }

  if (v86)
  {
    v27 = v14;
  }

  else
  {
    v27 = v14 + 1;
  }

  v28 = *(v84 + 80) & 0xF8 | v20 | 7;
  v29 = v21 + 7;
  v30 = ((((*(v77 + 64) + ((v20 + 8 + ((v21 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v31 = *(v76 + 80) & 0xF8 | v22 | 7;
  v32 = v31 | *(v80 + 80) & 0xF8;
  v33 = ((((((((v28 + ((((v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v28) + v30 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v32 + 8;
  if (v85)
  {
    v34 = *(v80 + 64);
  }

  else
  {
    v34 = *(v80 + 64) + 1;
  }

  v35 = v23 + 7;
  v36 = ((((v24 + ((v22 + 8 + ((v23 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v22) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v37 = v34 + 7;
  v38 = (((v34 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = v31 + 9;
  v40 = ((((((((v31 + 9 + v38) & ~v31) + v36 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v41 = ((((((v40 + (v33 & ~v32) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v26 < a3)
  {
    if (((((((v40 + (v33 & ~v32) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v42 = a3 - v26 + 1;
    }

    else
    {
      v42 = 2;
    }

    if (v42 >= 0x10000)
    {
      v43 = 4;
    }

    else
    {
      v43 = 2;
    }

    if (v42 < 0x100)
    {
      v43 = 1;
    }

    if (v42 >= 2)
    {
      v11 = v43;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v26)
  {
    if (((((((v40 + (v33 & ~v32) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v44 = a2 - v26;
    }

    else
    {
      v44 = 1;
    }

    if (((((((v40 + (v33 & ~v32) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v45 = ~v26 + a2;
      bzero(a1, ((((((v40 + (v33 & ~v32) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v45;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v41) = v44;
      }

      else
      {
        *(a1 + v41) = v44;
      }
    }

    else if (v11)
    {
      *(a1 + v41) = v44;
    }

    return;
  }

  if (v11 > 1)
  {
    v46 = a1;
    if (v11 != 2)
    {
      *(a1 + v41) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_69;
    }

    *(a1 + v41) = 0;
  }

  else
  {
    v46 = a1;
    if (v11)
    {
      *(a1 + v41) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_69;
    }
  }

  if (!a2)
  {
    return;
  }

LABEL_69:
  if (v73 == v26)
  {
    v47 = ~v28;
    if (v87 < a2)
    {
      v48 = (((((v30 + ((((((v27 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + v28 + 9) & v47) + 34) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
      if (v48 != -8)
      {
        bzero(v46, (v48 + 8));
        *v46 = ~v87 + a2;
      }

      return;
    }

    if (v72 == v87)
    {
      v53 = v71;
      v54 = *(v70 + 56);
      v55 = a2 + 1;
      v56 = v46;
      v57 = v86;
LABEL_100:

      v54(v56, v55, v57, v53);
      return;
    }

    v49 = ((((((v46 + v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v28 + 9) & v47);
    v52 = a2 - v69;
    if (a2 < v69)
    {
      v55 = a2 + 1;
      v57 = v68;
      if (v68 == v69)
      {
        v54 = *(v84 + 56);
        v56 = (((((v46 + v27 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v28 + 9) & v47;
        v53 = v66;
        goto LABEL_100;
      }

      v60 = ((v49 + v29) & 0xFFFFFFFFFFFFFFF8);
      if (v65 > 0x7FFFFFFE)
      {
        v54 = *(v77 + 56);
        v56 = (v60 + v20 + 8) & ~v20;
        v57 = v63;
        v53 = v64;
        goto LABEL_100;
      }

LABEL_106:
      if (a2 > 0x7FFFFFFD)
      {
        *v60 = 0;
        *v60 = a2 - 2147483646;
      }

      else
      {
        *v60 = v55;
      }

      return;
    }

    if (!v30)
    {
      return;
    }

    goto LABEL_95;
  }

  v49 = ((v46 + v33) & ~v32);
  if (v18 != v26)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v58 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v58 = a2 - 1;
    }

    *(((v49 + v40) & 0xFFFFFFFFFFFFFFF8) + 8) = v58;
    return;
  }

  v50 = ~v31;
  if (v19 < a2)
  {
    v51 = (((((v36 + ((v39 + (((v37 & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & v50) + 34) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8;
    v30 = (v51 + 8);
    if (v51 == -8)
    {
      return;
    }

    v52 = ~v19 + a2;
LABEL_95:
    v59 = v49;
    goto LABEL_96;
  }

  if (v79 == v19)
  {
    v54 = *(v80 + 56);
    v55 = a2 + 1;
    v56 = (v46 + v33) & ~v32;
    v57 = v85;
    v53 = v67;
    goto LABEL_100;
  }

  v49 = ((v39 + ((((v49 + v37) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & v50);
  v52 = a2 - v17;
  if (a2 >= v17)
  {
    if (!v36)
    {
      return;
    }

    v59 = v49;
    v30 = v36;
LABEL_96:
    bzero(v59, v30);
    *v49 = v52;
    return;
  }

  v55 = a2 + 1;
  if (v75 == v17)
  {
    v54 = *(v76 + 56);
    v56 = v49;
    v57 = v75;
    v53 = v62;
    goto LABEL_100;
  }

  v60 = ((v49 + v35) & 0xFFFFFFFFFFFFFFF8);
  if (v16 <= 0x7FFFFFFE)
  {
    goto LABEL_106;
  }

  v61 = *(v13 + 56);

  v61((v60 + v22 + 8) & ~v22, v55);
}

uint64_t sub_1CEFF8538(uint64_t result, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5, unsigned __int8 a6)
{
  if (result <= 500)
  {
    if (result <= 2)
    {
      if ((result - 1) < 2)
      {
        return result;
      }

      if (result)
      {
        goto LABEL_76;
      }

      goto LABEL_29;
    }

    if (result == 3)
    {
      goto LABEL_57;
    }

    if (result == 500)
    {
      goto LABEL_22;
    }

LABEL_76:

    return sub_1CF67DFC4(a4);
  }

  if (result > 1000)
  {
    if ((result - 1002) < 2)
    {
      goto LABEL_13;
    }

    if (result == 1001)
    {
      goto LABEL_25;
    }

    goto LABEL_76;
  }

  v6 = a5;
  v7 = a4;
  if (result != 501)
  {
    if (result == 502)
    {
      return result;
    }

    v8 = result == 1000;
LABEL_6:
    LOBYTE(a4) = v7;
    a5 = v6;
    if (!v8)
    {
      goto LABEL_76;
    }

LABEL_13:
    if ((a5 & 1) == 0)
    {
LABEL_14:
      if ((result - 1000) >= 3)
      {
        v9 = 502;
      }

      else
      {
        v9 = result - 999;
      }

      return sub_1CF67DF08(a4, v9);
    }

    return 500;
  }

  v10 = a2;
  v11 = a6;
  v12 = a3;
  v13 = fpfs_supports_indexAllRemoteItems();
  a3 = v12;
  a6 = v11;
  a2 = v10;
  a4 = v7;
  a5 = v6;
  if (v13)
  {
LABEL_29:
    if (a3)
    {
LABEL_30:
      if (qword_1EDEAB628 != -1)
      {
        v22 = a4;
        swift_once();
        LOBYTE(a4) = v22;
      }

      if ((dword_1EDEBBA40 - 1) < 2)
      {
        if ((a4 - 1) < 3u)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {
        v14 = 1;
        if ((a4 & 0xFE) != 2)
        {
          v14 = 2;
        }

        if (dword_1EDEBBA40 == 9)
        {
          v14 = 1;
        }

        if (dword_1EDEBBA40 == 3)
        {
          return 1;
        }

        else
        {
          return v14;
        }
      }
    }

    if (a2 > 500)
    {
      if (a2 <= 1000)
      {
        v6 = a5;
        v7 = a4;
        if (a2 != 501)
        {
          if (a2 != 502)
          {
            result = a2;
            v8 = a2 == 1000;
            goto LABEL_6;
          }

          return a2;
        }

        v16 = a6;
        v17 = fpfs_supports_indexAllRemoteItems();
        a4 = v7;
        if (v17)
        {
          goto LABEL_30;
        }

        a6 = v16;
        a5 = v6;
        a2 = 0;
        a3 = 1;
        goto LABEL_72;
      }

      if ((a2 - 1002) < 2)
      {
        result = a2;
        if ((a5 & 1) == 0)
        {
          goto LABEL_14;
        }

        return 500;
      }

      if (a2 != 1001)
      {
        goto LABEL_76;
      }

LABEL_25:
      if (a5)
      {
        return 500;
      }

      else
      {
        return 2;
      }
    }

    if (a2 <= 2)
    {
      if ((a2 - 1) >= 2)
      {
        if (a2)
        {
          goto LABEL_76;
        }

        goto LABEL_30;
      }

      return a2;
    }

    if (a2 != 3)
    {
      if (a2 != 500)
      {
        goto LABEL_76;
      }

LABEL_22:
      if (a5)
      {
        return 500;
      }

      goto LABEL_30;
    }

LABEL_57:
    if ((a4 | 2) == 3)
    {
      return 3;
    }

    if (qword_1EDEAB628 != -1)
    {
      v23 = a4;
      swift_once();
      LOBYTE(a4) = v23;
    }

    v15 = 1;
    if (a4 != 2)
    {
      v15 = 2;
    }

    if ((dword_1EDEBBA40 - 1) <= 1)
    {
      return v15;
    }

    else
    {
      return 3;
    }
  }

LABEL_72:
  if (a3)
  {
    if ((a6 & 1) == 0 && (a5 & 1) == 0)
    {
      return 501;
    }

    goto LABEL_76;
  }

  v18 = a5;
  v19 = a6;
  v20 = sub_1CEFF8538(a2, 0, 1, a4, a5 & 1, a6 & 1);
  v21 = 501;
  if ((v19 | v18))
  {
    v21 = v20;
  }

  if (v20 == 3)
  {
    return 3;
  }

  else
  {
    return v21;
  }
}

id sub_1CEFF889C()
{
  v1 = [v0 itemID];
  v2 = [v1 identifier];

  return v2;
}

uint64_t sub_1CEFF88F4(uint64_t a1)
{
  if (qword_1EDEA3498 != -1)
  {
    swift_once();
  }

  v1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v3 = v2;
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v5;
  if (v1 == v4 && v3 == v5)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

uint64_t sub_1CEFF89C0(uint64_t a1)
{
  if (qword_1EDEA34B0 != -1)
  {
    swift_once();
  }

  v1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v3 = v2;
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v5;
  if (v1 == v4 && v3 == v5)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
  }

  v3, v5, v6, v7, v8, v9, v10, v11;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

void sub_1CEFF8A84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2778, &unk_1CFA12990);
    v3 = sub_1CF9E7908();
    v4 = 0;
    v5 = v3 + 56;
    v64 = v1;
    v65 = a1 + 32;
    v6 = v1;
    do
    {
      v21 = *(v65 + 8 * v4);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v23 = v22;
      sub_1CF9E81D8();
      v66 = v21;
      sub_1CF9E69C8();
      v24 = sub_1CF9E8228();
      v23, v25, v26, v27, v28, v29, v30, v31;
      v32 = -1 << *(v3 + 32);
      v33 = v24 & ~v32;
      v34 = v33 >> 6;
      v35 = *(v5 + 8 * (v33 >> 6));
      v36 = 1 << v33;
      if (((1 << v33) & v35) == 0)
      {
        goto LABEL_15;
      }

      v37 = ~v32;
      do
      {
        v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v40 = v39;
        v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v43 = v38;
        v44 = v41;
        if (v43 == v42 && v40 == v41)
        {

          v40, v7, v8, v9, v10, v11, v12, v13;
          v44, v14, v15, v16, v17, v18, v19, v20;
LABEL_4:
          v6 = v64;
          goto LABEL_5;
        }

        v46 = sub_1CF9E8048();
        v40, v47, v48, v49, v50, v51, v52, v53;
        v44, v54, v55, v56, v57, v58, v59, v60;
        if (v46)
        {

          goto LABEL_4;
        }

        v33 = (v33 + 1) & v37;
        v34 = v33 >> 6;
        v35 = *(v5 + 8 * (v33 >> 6));
        v36 = 1 << v33;
      }

      while (((1 << v33) & v35) != 0);
      v6 = v64;
LABEL_15:
      *(v5 + 8 * v34) = v36 | v35;
      *(*(v3 + 48) + 8 * v33) = v66;
      v61 = *(v3 + 16);
      v62 = __OFADD__(v61, 1);
      v63 = v61 + 1;
      if (v62)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v63;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

__n128 sub_1CEFF8C90@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6[88] = 1;
  v6[80] = 1;
  v7 = a1;
  v8.n128_u16[0] = 601;
  v8.n128_u64[1] = 0;
  LOWORD(v9) = 513;
  *(&v9 + 1) = a2;
  *v10 = 0;
  *&v10[8] = 601;
  *&v10[16] = 0;
  *&v10[24] = 513;
  v11[0] = a1;
  v11[1] = 0;
  v12 = 601;
  v13 = 0;
  v14 = 513;
  v15 = a2;
  v16 = 0;
  v17 = 601;
  v18 = 0;
  v19 = 513;
  sub_1CEFF8D38(&v7, v6);
  sub_1CEFF8D94(v11);
  v4 = *v10;
  *(a3 + 32) = v9;
  *(a3 + 48) = v4;
  *(a3 + 58) = *&v10[10];
  result = v8;
  *a3 = v7;
  *(a3 + 16) = result;
  return result;
}

uint64_t sub_1CEFF8E18(void *a1)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    goto LABEL_5;
  }

  if (*(v1 + 8) != 1)
  {
    v2 = (v2 != 0) << 63;
    goto LABEL_7;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    v2 = -v2;
  }

LABEL_7:
  v3 = [a1 bindLongParameter_];
  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  return v4;
}

uint64_t sub_1CEFF8EA0(uint64_t a1)
{
  v3 = sub_1CF9E5CF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  sub_1CEFF95C8(a1, &v37);
  if (!v38)
  {
    sub_1CEFCCC44(&v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v12 = [v1 bindObjectParameter_];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return v11;
  }

  sub_1CEFE9EB8(&v37, v39);
  sub_1CEFD1104(v39, &v37);
  if (swift_dynamicCast())
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1CF9E5C98();
    v10 = [v1 bindDoubleParameter_];
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    (*(v4 + 8))(v6, v3);
LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v39);
    __swift_destroy_boxed_opaque_existential_1(&v37);
    return v11;
  }

  if (swift_dynamicCast())
  {
    v13 = [v1 bindDoubleParameter_];
LABEL_27:
    v14 = v13;
    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v13 = [v1 bindBooleanParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    v13 = [v1 bindCharParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    v13 = [v1 bindUnsignedCharParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    v13 = [v1 bindShortParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    v13 = [v1 bindUnsignedShortParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    v13 = [v1 bindIntegerParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    v13 = [v1 bindUnsignedIntegerParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
LABEL_22:
    v13 = [v1 bindLongParameter_];
    goto LABEL_27;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
LABEL_26:
    v13 = [v1 bindUnsignedLongParameter_];
    goto LABEL_27;
  }

  v16 = v1;
  if (swift_dynamicCast())
  {
    v17 = v35;
    v18 = v36;
    v19 = sub_1CF9E5B48();
    v20 = [v16 bindObjectParameter_];

    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CEFE4714(v17, v18);

    goto LABEL_28;
  }

  if (swift_dynamicCast())
  {
    v21 = v35;
    v22 = v36;
    sub_1CEFE42D4(v35, v36);
    v23 = sub_1CF9E5B48();
    sub_1CEFE4714(v21, v22);
    v24 = [v16 bindObjectParameter_];

    v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    sub_1CEFE4714(v21, v22);
    goto LABEL_28;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    type metadata accessor for NSFileProviderItemIdentifier(0);
    if (!swift_dynamicCast())
    {
      if (!swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v39);
        __swift_destroy_boxed_opaque_existential_1(&v37);
        return 0;
      }

      v25 = v36;
      v26 = sub_1CF9E6888();
      v25, v27, v28, v29, v30, v31, v32, v33;
      v34 = [v16 bindStringParameter_];

      v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      goto LABEL_28;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v37);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CEFF95C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEFF9674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 888))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 464);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1CEFF96D0(void *a1)
{
  v2 = [a1 providerID];
  v3 = [v2 fp_isiCloudDriveIdentifier];

  if (!v3)
  {
    return 0;
  }

  v4 = [a1 parentFormerIdentifier];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v8 = v7;
  v9 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v11 = v10;
  if (v6 == v9 && v8 == v10)
  {

    v8, v50, v51, v52, v53, v54, v55, v56;
    v11, v57, v58, v59, v60, v61, v62, v63;
    return 0;
  }

  v13 = sub_1CF9E8048();

  v8, v14, v15, v16, v17, v18, v19, v20;
  v11, v21, v22, v23, v24, v25, v26, v27;
  if (v13)
  {
    return 0;
  }

LABEL_8:
  if ([a1 isContainer])
  {
    v28 = [a1 parentItemIdentifier];
    if (qword_1EDEA34B0 != -1)
    {
      swift_once();
    }

    v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v31 = v30;
    v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v34 = v33;
    if (v29 == v32 && v31 == v33)
    {

      v31, v35, v36, v37, v38, v39, v40, v41;
      v49 = v34;
LABEL_21:
      v49, v42, v43, v44, v45, v46, v47, v48;
      return 1;
    }

    v65 = sub_1CF9E8048();

    v31, v66, v67, v68, v69, v70, v71, v72;
    v34, v73, v74, v75, v76, v77, v78, v79;
    if (v65)
    {
      return 1;
    }
  }

  v80 = [a1 filename];
  v81 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v83 = v82;

  if (v81 == 0x746E656D75636F44 && v83 == 0xE900000000000073)
  {
    v49 = 0xE900000000000073;
    goto LABEL_21;
  }

  v84 = sub_1CF9E8048();
  v83, v85, v86, v87, v88, v89, v90, v91;
  return v84 & 1;
}

uint64_t sub_1CEFF9944(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_1CEFF9990(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_1CEFF99E0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1CEFF9A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1CF9E57E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1CEFF9AE4(void *a1, void *a2, uint64_t a3, void *a4, void (*a5)(void, void), uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1CFA00250;
    *(v12 + 32) = a1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1CEFFA3CC;
    *(v13 + 24) = v11;
    v14 = swift_allocObject();
    v15 = a4;
    v14[2] = sub_1CEFFA3C4;
    v14[3] = v13;
    v14[4] = v12;
    v16 = swift_allocObject();
    v16[2] = v12;
    v16[3] = 16;
    v16[4] = sub_1CEFFA3C4;
    v16[5] = v13;
    v17 = a1;
    swift_retain_n();
    v18 = v17;

    v19 = v15;
    v20 = a2;

    sub_1CEFD4024("decorate(_:options:completionHandler:)", 38, 2, sub_1CF9274EC, v14, sub_1CEFF9D84, v16);
  }

  else
  {

    v21 = a4;
    v22 = a2;
    sub_1CEFFA4F4(0, a2, v21, a5, a6);
  }
}

uint64_t sub_1CEFF9D14()
{

  return swift_deallocObject();
}

uint64_t sub_1CEFF9D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1CF8F0DF0;
  *(v12 + 24) = v10;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  sub_1CF7AAF88("decorate(_:options:completionHandler:)", 38, 2, 2, sub_1CF8F6DD8, v12, sub_1CF8F6DAC, v11);
}

uint64_t objectdestroy_71Tm()
{
  v1 = sub_1CF9E6118();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t objectdestroy_71Tm_0(void (*a1)(void))
{

  a1(*(v1 + 32));

  return swift_deallocObject();
}

void *sub_1CEFFA068(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1CEFFA19C(void *a1, int64_t a2, char a3)
{
  result = sub_1CEFFA068(a1, a2, a3, *v3, &unk_1EC4C4730, &unk_1CFA16880, &unk_1EC4BFC10, &qword_1CF9FE510);
  *v3 = result;
  return result;
}

void sub_1CEFFA1DC(void *a1@<X8>)
{
  if (*(v2 + 32) == 1)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  v6 = *(v2 + 8);
  v7 = *(*v2 + 16);
  if (v6 == v7)
  {
    goto LABEL_8;
  }

  if (v6 >= v7)
  {
    __break(1u);
  }

  else
  {
    v8 = *v2 + 16 * v6;
    v1 = *(v8 + 32);
    v3 = *(v8 + 40);
    v4 = *(v8 + 41);
    *(v2 + 8) = v6 + 1;
    v5 = *(v2 + 16);
    if (!(v5 >> 62))
    {
      v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  v15 = a1;
  v9 = sub_1CF9E7818();
  a1 = v15;
LABEL_7:
  v10 = *(v2 + 24);
  if (v10 == v9)
  {
LABEL_8:
    *(v2 + 32) = 1;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    return;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
    v11 = a1;
    sub_1CEFD0988(v1, v3, v4);
    v13 = MEMORY[0x1D3869C30](v10, v5);
    v14 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = a1;
  if (v10 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v5 + 8 * v10 + 32);
    sub_1CEFD0988(v1, v3, v4);
    v13 = v12;
    v14 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
LABEL_13:
      *(v2 + 24) = v14;
      *v11 = v1;
      *(v11 + 8) = v3;
      *(v11 + 9) = v4;
      v11[2] = v13;
      return;
    }

    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1CEFFA334(char a1, unsigned __int16 a2, char a3)
{
  if ((*MEMORY[0x1E6967238] & 0xFFFFFFFFFFFFFFD3) != 0)
  {
    result = *MEMORY[0x1E6967238] | 0x2CLL;
    if (a1)
    {
      if ((~a2 & 0x140) != 0)
      {
        goto LABEL_17;
      }
    }

    else if ((a2 & 0x100) == 0)
    {
LABEL_17:
      if ((a2 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_16:
    result |= 1uLL;
    goto LABEL_17;
  }

  if (a1)
  {
    if ((~a2 & 0x140) != 0)
    {
      if ((a2 & 0x80) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      result = 44;
LABEL_18:
      result |= 2uLL;
LABEL_19:
      if ((a3 & 1) == 0)
      {
        return result;
      }

      return result | 0x10;
    }

LABEL_15:
    result = 44;
    goto LABEL_16;
  }

  if ((a2 & 0x100) != 0)
  {
    goto LABEL_15;
  }

  if ((a2 & 0x80) != 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  result = 44;
  if (a3)
  {
    return result | 0x10;
  }

  return result;
}

void sub_1CEFFA3D8(unint64_t a1, void (*a2)(void))
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = a1;
  v5 = sub_1CF9E7818();
  a1 = v4;
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v3 = MEMORY[0x1D3869C30](0, a1);
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v3 = *(a1 + 32);
LABEL_6:
  v6 = v3;
  a2();
}

void sub_1CEFFA4F4(void *a1, uint64_t a2, void *a3, void (*a4)(void, void), uint64_t a5)
{
  v10 = sub_1CF9E6118();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_getErrorValue();
    v13 = Error.prettyDescription.getter(v48, v49);
  }

  else
  {
    sub_1CEFD57E0(0, &unk_1EDEA3410, 0x1E696AEC0);
    v13 = sub_1CF9E7598();
  }

  v14 = v13;
  v15 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v16 = a1;
  v17 = v14;
  v18 = a3;
  v19 = a1;
  v20 = v18;
  v21 = sub_1CF9E6108();
  v22 = sub_1CF9E7298();

  v23 = os_log_type_enabled(v21, v22);
  v47 = v19;
  if (v23)
  {
    v42 = a2;
    v43 = a5;
    v44 = a4;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v50 = v41;
    *v24 = 138412802;
    *(v24 + 4) = v20;
    *v25 = v20;
    *(v24 + 12) = 2080;
    v26 = v20;
    if (v19)
    {
      v27 = [v16 description];
      v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v30 = v29;
    }

    else
    {
      v30 = 0xE500000000000000;
      v28 = 0x3E6C696E3CLL;
    }

    v31 = sub_1CEFD0DF0(v28, v30, &v50);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v24 + 14) = v31;
    *(v24 + 22) = 2112;
    *(v24 + 24) = v17;
    v25[1] = v17;
    v39 = v17;
    _os_log_impl(&dword_1CEFC7000, v21, v22, "result of fetch id for %@: %s, %@", v24, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE350, &unk_1CF9FC3B0);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v25, -1, -1);
    v40 = v41;
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1D386CDC0](v40, -1, -1);
    MEMORY[0x1D386CDC0](v24, -1, -1);

    (*(v45 + 8))(v12, v46);
    a4 = v44;
    a2 = v42;
  }

  else
  {

    (*(v45 + 8))(v12, v46);
  }

  a4(v47, a2);
}

uint64_t sub_1CEFFA838()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong session];

    v4 = v0[3];
    [v3 unregisterLifetimeExtensionForObject_];

    swift_unknownObjectRelease();
  }

  return swift_deallocClassInstance();
}

void sub_1CEFFAEB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  __fp_pop_log();
  _Unwind_Resume(a1);
}

id sub_1CEFFAF68(void *a1)
{
  v91 = a1;
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v89 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CF9E7388();
  v87 = *(v3 - 8);
  v88 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v86 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CF9E7318();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v84 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v82 - v9;
  v83 = sub_1CF9E6448();
  v11 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v82 - v15;
  v85 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_queue;
  v82 = sub_1CEFD57E0(0, &qword_1EDEAED70, 0x1E69E9610);
  sub_1CF9E63F8();
  v94 = MEMORY[0x1E69E7CC0];
  sub_1CEFD5B1C(&qword_1EDEAED80, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF500, &unk_1CF9FE770);
  sub_1CEFCCCEC(&qword_1EDEAEDA0, &unk_1EC4BF500, &unk_1CF9FE770, MEMORY[0x1E69E6328]);
  sub_1CF9E77B8();
  v17 = v83;
  (*(v11 + 16))(v13, v16, v83);
  (*(v6 + 16))(v84, v10, v5);
  (*(v87 + 104))(v86, *MEMORY[0x1E69E8098], v88);
  v18 = sub_1CF9E73B8();
  (*(v6 + 8))(v10, v5);
  (*(v11 + 8))(v16, v17);
  v19 = v90;
  *&v90[v85] = v18;
  v20 = v91;
  v21 = v91;
  v22 = v89;
  sub_1CEFFB72C(v20, v89);
  sub_1CEFFC48C(v22, v19 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, type metadata accessor for LocalDomain);
  v96.receiver = v19;
  v96.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v96, sel_init);
  sub_1CEFFC55C();
  sub_1CEFFC714();
  if ((fpfs_set_vfs_ignore_permissions_iopolicy() & 0x80000000) != 0)
  {
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_1CF9E7948();
    v24 = MEMORY[0x1D3868CC0](0xD000000000000032, 0x80000001CFA3F890);
    v93 = MEMORY[0x1D38683F0](v24);
    v25 = sub_1CF9E7F98();
    v27 = v26;
    MEMORY[0x1D3868CC0](v25);
    v27, v28, v29, v30, v31, v32, v33, v34;
    v35 = v94;
    v36 = v95;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v37 = qword_1EDEBB5A0;
    v38 = sub_1CF9E72B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1CF9FA450;
    *(v39 + 56) = MEMORY[0x1E69E6158];
    *(v39 + 64) = sub_1CEFD51C4();
    *(v39 + 32) = v35;
    *(v39 + 40) = v36;
    sub_1CF9E6018("[CRIT] %@", 9, 2, &dword_1CEFC7000, v37, v38, v39);
    v39, v40, v41, v42, v43, v44, v45, v46;
  }

  v47 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v48 = sub_1CF9E6888();
  v49 = [v47 initWithSuiteName_];

  if (v49 && (v50 = sub_1CF9E6888(), v51 = [v49 BOOLForKey_], v49, v50, (v51 & 1) != 0) && (fpfs_set_vfs_parent_mtime_iopolicy() & 0x80000000) != 0)
  {
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_1CF9E7948();
    v95, v53, v54, v55, v56, v57, v58, v59;
    v94 = 0xD00000000000002CLL;
    v95 = 0x80000001CFA3F860;
    v93 = MEMORY[0x1D38683F0]();
    v60 = sub_1CF9E7F98();
    v62 = v61;
    MEMORY[0x1D3868CC0](v60);
    v62, v63, v64, v65, v66, v67, v68, v69;
    v70 = v94;
    v71 = v95;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v72 = qword_1EDEBB5A0;
    v73 = sub_1CF9E72B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_1CF9FA450;
    *(v74 + 56) = MEMORY[0x1E69E6158];
    *(v74 + 64) = sub_1CEFD51C4();
    *(v74 + 32) = v70;
    *(v74 + 40) = v71;
    sub_1CF9E6018("[CRIT] %@", 9, 2, &dword_1CEFC7000, v72, v73, v74);

    v74, v75, v76, v77, v78, v79, v80, v81;
  }

  else
  {
  }

  return v23;
}

uint64_t type metadata accessor for LocalDomain(uint64_t a1)
{
  result = qword_1EDEAA2F8;
  if (!qword_1EDEAA2F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CEFFB72C@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v43 - v9;
  v11 = [objc_opt_self() legacyDefaultManager];
  v12 = [v11 documentStorageURL];
  sub_1CF9E59D8();

  sub_1CEFFBA1C(v10);
  v14 = v5 + 8;
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (a1)
  {
    a1 = a1;
    v15 = [a1 identifier];
    v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v18 = v17;

    *(a2 + 16) = v16;
    *(a2 + 24) = v18;
    v19 = [a1 displayName];
    v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v22 = v21;

    *(a2 + 32) = v20;
    *(a2 + 40) = v22;
    v23 = [a1 pathRelativeToDocumentStorage];
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v43[1] = v14;
    v24 = v4;
    v25 = v13;
    v26 = v11;
    v28 = v27;

    v29 = type metadata accessor for LocalDomain(0);
    sub_1CF9E5958();
    v30 = v28;
    v11 = v26;
    v13 = v25;
    v4 = v24;
    v30, v31, v32, v33, v34, v35, v36, v37;

    *(a2 + *(v29 + 36)) = 0;
  }

  else
  {
    *(a2 + 16) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    *(a2 + 24) = v38;
    *(a2 + 32) = 0x6C75616665645F5FLL;
    *(a2 + 40) = 0xEB000000005F5F74;
    v29 = type metadata accessor for LocalDomain(0);
    (*(v5 + 16))(a2 + *(v29 + 32), v10, v4);
    *(a2 + *(v29 + 36)) = 1;
  }

  type metadata accessor for LocalDomain(0);
  v39 = sub_1CEFFBB54(a2 + *(v29 + 32));
  v41 = v40;

  result = (v13)(v10, v4);
  *a2 = v41;
  *(a2 + 8) = v39;
  return result;
}

void sub_1CEFFBA1C(uint64_t a1@<X8>)
{
  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 102);
  }

  sub_1CF9E5A18();
  v4 = v3;
  v5 = sub_1CF9E6AE8();
  v4, v6, v7, v8, v9, v10, v11, v12;
  if (v5)
  {
    v13 = sub_1CF9E5A18();
    v15 = v14;
    MEMORY[0x1D3868CC0](v13);
    v15, v16, v17, v18, v19, v20, v21, v22;
    sub_1CF9E58C8();

    0xE800000000000000, v23, v24, v25, v26, v27, v28, v29;
  }

  else
  {
    v30 = sub_1CF9E5A58();
    v31 = *(*(v30 - 8) + 16);

    v31(a1, v1, v30);
  }
}

uint64_t sub_1CEFFBB54(uint64_t a1)
{
  v145 = *MEMORY[0x1E69E9840];
  v134 = sub_1CF9E53C8();
  v2 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v133 = &v128 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CF9E6118();
  v130 = *(v4 - 8);
  v131 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v129 = &v128 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = a1;
  sub_1CF9E5A18();
  v7 = v6;
  v138 = objc_opt_self();
  v8 = 0;
  v135 = "can't clear trash info for ";
  v132 = (v2 + 8);
  memset(&v142[1], 0, sizeof(stat));
  v137 = "tainer.monitor.";
  v136 = 9939394;
  v140 = xmmword_1CF9FA450;
  while (1)
  {
    v9 = v8;
    v10 = [v138 defaultManager];
    v11 = sub_1CF9E5928();
    *&v142[0].st_dev = 0;
    v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v142];

    if (v12)
    {
      v13 = *&v142[0].st_dev;
    }

    else
    {
      v14 = *&v142[0].st_dev;
      v15 = sub_1CF9E57F8();

      swift_willThrow();
      *&v142[0].st_dev = 0;
      v142[0].st_ino = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000001DLL, v135 | 0x8000000000000000);
      v16 = sub_1CF9E6888();
      v17 = [v16 fp_prettyPath];

      v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v20 = v19;

      MEMORY[0x1D3868CC0](v18, v20);
      v20, v21, v22, v23, v24, v25, v26, v27;
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v143 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      sub_1CF9E7B58();
      v28 = *&v142[0].st_dev;
      st_ino = v142[0].st_ino;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v30 = qword_1EDEBB5A0;
      v31 = sub_1CF9E72B8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v32 = swift_allocObject();
      *(v32 + 16) = v140;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = sub_1CEFD51C4();
      *(v32 + 32) = v28;
      *(v32 + 40) = st_ino;
      sub_1CF9E6018("[CRIT] %@", 9, 2, &dword_1CEFC7000, v30, v31, v32);
      v32, v33, v34, v35, v36, v37, v38, v39;
    }

    v142[0] = v142[1];
    v40 = sub_1CF9E6978();
    v41 = lstat((v40 + 32), v142);

    if ((v41 & 0x80000000) == 0)
    {
      v7, v43, v44, v45, v46, v47, v48, v49;
      return v142[0].st_dev;
    }

    if (!MEMORY[0x1D38683F0](v42))
    {
      break;
    }

    if (MEMORY[0x1D38683F0]() == v136)
    {
      v50 = [objc_opt_self() fp:2 errorForDataProtectionClass:?];
    }

    else
    {
      MEMORY[0x1D38683F0]();
      v51 = sub_1CF9E6138();
      if ((v51 & 0x100000000) != 0)
      {
        LODWORD(v143) = 22;
      }

      else
      {
        LODWORD(v143) = v51;
      }

      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF00E824(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
      v53 = v133;
      v52 = v134;
      sub_1CF9E57D8();
      v50 = sub_1CF9E53A8();
      (*v132)(v53, v52);
    }

    swift_willThrow();
    v143 = 0;
    v144 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000020, v137 | 0x8000000000000000);
    v54 = sub_1CF9E6888();
    v55 = [v54 fp_prettyPath];

    v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v58 = v57;

    MEMORY[0x1D3868CC0](v56, v58);
    v58, v59, v60, v61, v62, v63, v64, v65;
    MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
    v141 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E7B58();
    v66 = v143;
    v67 = v144;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v68 = qword_1EDEBB5A0;
    v69 = sub_1CF9E72B8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v70 = swift_allocObject();
    *(v70 + 16) = v140;
    *(v70 + 56) = MEMORY[0x1E69E6158];
    *(v70 + 64) = sub_1CEFD51C4();
    *(v70 + 32) = v66;
    *(v70 + 40) = v67;
    sub_1CF9E6018("[CRIT] %@", 9, 2, &dword_1CEFC7000, v68, v69, v70);
    v70, v71, v72, v73, v74, v75, v76, v77;

    v8 = 1;
    if (v9)
    {
      v7, v78, v79, v80, v81, v82, v83, v84;
      return 0;
    }
  }

  v143 = 0;
  v144 = 0xE000000000000000;
  sub_1CF9E7948();
  v144, v86, v87, v88, v89, v90, v91, v92;
  v143 = 0xD00000000000001ALL;
  v144 = 0x80000001CFA2DF30;
  LODWORD(v141) = v41;
  v93 = sub_1CF9E7F98();
  v95 = v94;
  MEMORY[0x1D3868CC0](v93);
  v95, v96, v97, v98, v99, v100, v101, v102;
  MEMORY[0x1D3868CC0](0xD000000000000015, 0x80000001CFA2DF50);
  v103 = v143;
  v104 = v144;
  v105 = fpfs_current_or_default_log();
  sub_1CF9E6128();

  v106 = sub_1CF9E6108();
  v107 = sub_1CF9E72B8();
  v104, v108, v109, v110, v111, v112, v113, v114;
  if (os_log_type_enabled(v106, v107))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v143 = v116;
    *v115 = 136315650;
    v117 = sub_1CF9E7988();
    v119 = v118;
    v120 = sub_1CEFD0DF0(v117, v118, &v143);
    v119, v121, v122, v123, v124, v125, v126, v127;
    *(v115 + 4) = v120;
    *(v115 + 12) = 2048;
    *(v115 + 14) = 315;
    *(v115 + 22) = 2080;
    *(v115 + 24) = sub_1CEFD0DF0(v103, v104, &v143);
    _os_log_impl(&dword_1CEFC7000, v106, v107, "[ASSERT] ‼️  %s:%lu: %s", v115, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v116, -1, -1);
    MEMORY[0x1D386CDC0](v115, -1, -1);
  }

  (*(v130 + 8))(v129, v131);
  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CEFFC48C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFFC4F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CEFFC55C()
{
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDEBB5A0;
  v1 = sub_1CF9E7288();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CF9FA450;
  *(v2 + 56) = MEMORY[0x1E69E6158];
  *(v2 + 64) = sub_1CEFD51C4();
  *(v2 + 32) = 0xD00000000000002DLL;
  *(v2 + 40) = 0x80000001CFA3F910;
  sub_1CF9E6018("[INFO] %@", 9, 2, &dword_1CEFC7000, v0, v1, v2);
  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = [objc_opt_self() legacyDefaultManager];
  v11 = *MEMORY[0x1E6967298];
  v13[4] = nullsub_1;
  v13[5] = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1CF00A468;
  v13[3] = &block_descriptor_376;
  v12 = _Block_copy(v13);
  [v10 signalEnumeratorForContainerItemIdentifier:v11 completionHandler:v12];
  _Block_release(v12);
}

void sub_1CEFFC714()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_1CF9E6888();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      type metadata accessor for LocalItem(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      InstanceMethod = class_getInstanceMethod(ObjCClassFromMetadata, sel_isUploadedTestingImpl);
      if (!InstanceMethod)
      {
        __break(1u);
        goto LABEL_13;
      }

      v7 = InstanceMethod;
      Implementation = method_getImplementation(InstanceMethod);
      TypeEncoding = method_getTypeEncoding(v7);
      class_addMethod(ObjCClassFromMetadata, sel_isUploaded, Implementation, TypeEncoding);
    }
  }

  v10 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v11 = sub_1CF9E6888();
  v12 = [v10 initWithSuiteName_];

  if (!v12)
  {
    return;
  }

  v13 = sub_1CF9E6888();
  v14 = [v12 BOOLForKey_];

  if (!v14)
  {
    return;
  }

  type metadata accessor for LocalItem(0);
  v15 = swift_getObjCClassFromMetadata();
  v16 = class_getInstanceMethod(v15, sel_isDownloadedTestingImpl);
  if (!v16)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = method_getImplementation(v16);
  v19 = method_getTypeEncoding(v17);

  class_addMethod(v15, sel_isDownloaded, v18, v19);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1CEFFCAE4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  v9 = a5(v7);

  return v9;
}

void sub_1CEFFCBA8(void *a1)
{
  sub_1CF9E7948();
  0xE000000000000000, v2, v3, v4, v5, v6, v7, v8;
  v49[0] = 0xD000000000000010;
  v49[1] = 0x80000001CFA3F5C0;
  v47 = a1;
  v9 = NSFileProviderItemIdentifier.description.getter(a1);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBB5A0;
  v21 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1CF9FA440;
  v50 = v19;
  sub_1CEFFD0A8();
  v23 = sub_1CF9E7718();
  v46 = v19;
  v25 = v24;
  v26 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1CEFD51C4();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  *(v22 + 96) = v26;
  *(v22 + 104) = v27;
  *(v22 + 64) = v27;
  *(v22 + 72) = 0xD000000000000010;
  *(v22 + 80) = 0x80000001CFA3F5C0;
  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v20, v21, v22);
  v22, v28, v29, v30, v31, v32, v33, v34;
  sub_1CEFFD0FC(v47, v48, v49);
  v35 = sub_1CF9E7298();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1CF9FA450;
  v50 = v46;
  v37 = sub_1CF9E7718();
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = v27;
  *(v36 + 32) = v37;
  *(v36 + 40) = v38;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v20, v35, v36);
  v36, v39, v40, v41, v42, v43, v44, v45;
}

uint64_t sub_1CEFFCE80()
{
  v7 = 0;
  if (qword_1EDEA8510 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDEA8518;
  v1 = swift_allocObject();
  *(v1 + 16) = &v7;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1CEFFD084;
  *(v2 + 24) = v1;
  aBlock[4] = sub_1CEFFD054;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_26;
  v3 = _Block_copy(aBlock);

  dispatch_sync(v0, v3);
  _Block_release(v3);
  LOBYTE(v0) = swift_isEscapingClosureAtFileLocation();

  if (v0)
  {
    __break(1u);
  }

  else
  {
    v5 = v7;

    return v5;
  }

  return result;
}

void sub_1CEFFD084()
{
  v1 = qword_1EDEA7CB8;
  **(v0 + 16) = qword_1EDEA7CB8;
  if (v1 == -1)
  {
    __break(1u);
  }

  else
  {
    qword_1EDEA7CB8 = v1 + 1;
  }
}

unint64_t sub_1CEFFD0A8()
{
  result = qword_1EDEAB4F0;
  if (!qword_1EDEAB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB4F0);
  }

  return result;
}

void sub_1CEFFD0FC(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CEFFD30C(a2 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v8, type metadata accessor for LocalDomain);
  v9 = sub_1CEFFD444(a1, v8);
  if (v9)
  {
    v10 = v9;
    v34 = 0x20646E756F66;
    v35 = 0xE600000000000000;
    v11 = [v9 description];
    v12 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v14 = v13;

    MEMORY[0x1D3868CC0](v12, v14);
    v14, v15, v16, v17, v18, v19, v20, v21;
    v22 = v34;
    v23 = v35;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDEBB5A0;
    v25 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1CF9FA450;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1CEFD51C4();
    *(v26 + 32) = v22;
    *(v26 + 40) = v23;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v24, v25, v26);
    v26, v27, v28, v29, v30, v31, v32, v33;
    *a3 = v10;
  }

  else if (FPItemNotFoundError())
  {
    swift_willThrow();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CEFFD30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFFD374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEFFD3DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1CEFFD444(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v37 - v8;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11F0, &unk_1CFA084F0);
  MEMORY[0x1EEE9AC00](v42);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v37 - v15;
  v16 = sub_1CF9E5A58();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  sub_1CEFFD89C(a2, 1u, a1, v9);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v23 - 8) + 48))(v9, 1, v23) == 1)
  {
    sub_1CF000630(a2, type metadata accessor for LocalDomain);

    sub_1CEFCCC44(v9, &qword_1EC4BF5F8, &qword_1CFA01DB8);
  }

  else
  {
    v24 = *(v23 + 48);
    v39 = a2;
    v40 = v6;
    v38 = v19;
    v25 = v42;
    v26 = *(v42 + 48);
    v41 = a1;
    v27 = *(v17 + 32);
    v27(v11, v9, v16);
    sub_1CEFE55D0(&v9[v24], &v11[v26], &unk_1EC4BEC00, &unk_1CF9FCB60);
    v28 = *(v25 + 48);
    v27(v22, v11, v16);
    v29 = v44;
    sub_1CEFE55D0(&v11[v28], v44, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v30 = v38;
    (*(v17 + 16))(v38, v22, v16);
    v31 = v39;
    v32 = v40;
    sub_1CF001614(v39, v40, type metadata accessor for LocalDomain);
    v33 = v43;
    sub_1CEFCCBDC(v29, v43, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v34 = objc_allocWithZone(type metadata accessor for LocalItem(0));
    v35 = sub_1CF001704(v30, v32, v33);

    sub_1CF000630(v31, type metadata accessor for LocalDomain);
    sub_1CEFCCC44(v29, &unk_1EC4BEC00, &unk_1CF9FCB60);
    (*(v17 + 8))(v22, v16);
    result = v35;
    if (v35)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_1CEFFD89C@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v312 = a2;
  v320 = a4;
  v331 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for VFSItem(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v314 = &v306 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v307 = (&v306 - v10);
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v318 = &v306 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v313 = &v306 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v315 = &v306 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v309 = &v306 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v311 = (&v306 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v306 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v316 = &v306 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v308 = (&v306 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v310 = &v306 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v306 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v306 - v35;
  v319 = a1;
  v325 = sub_1CEFFEB98();
  v321 = v12;
  v322 = v11;
  v37 = v36;
  v38 = v36;
  v39 = v6;
  v40 = v7;
  v317 = *(v12 + 56);
  v317(v38, 1, 1, v11);
  v41 = *(v7 + 7);
  v324 = v24;
  v41(v24, 1, 1, v39);
  v323 = a3;
  v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v44 = v43;
  v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v52 = v45;
  if (v42 == v46 && v44 == v45)
  {
    v44, v45, v46, v47, v48, v49, v50, v51;
    v52, v53, v54, v55, v56, v57, v58, v59;
LABEL_5:
    sub_1CEFCCC44(v37, &unk_1EC4BE310, qword_1CF9FCBE0);
    v75 = type metadata accessor for LocalDomain(0);
    v76 = v321;
    v77 = v322;
    (*(v321 + 16))(v37, v319 + *(v75 + 32), v322);
    v317(v37, 0, 1, v77);
    v78 = v324;
LABEL_6:
    v79 = v318;
    goto LABEL_7;
  }

  v60 = sub_1CF9E8048();
  v44, v61, v62, v63, v64, v65, v66, v67;
  v52, v68, v69, v70, v71, v72, v73, v74;
  if (v60)
  {
    goto LABEL_5;
  }

  v81 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v83 = v82;
  v85 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v91 = v84;
  if (v81 == v85 && v83 == v84)
  {
    v83, v84, v85, v86, v87, v88, v89, v90;
    v91, v92, v93, v94, v95, v96, v97, v98;
  }

  else
  {
    v132 = sub_1CF9E8048();
    v83, v133, v134, v135, v136, v137, v138, v139;
    v91, v140, v141, v142, v143, v144, v145, v146;
    if ((v132 & 1) == 0)
    {
      v233 = v323;
      v234 = sub_1CF7E2BAC(v323);
      if (v235)
      {
        v236 = sub_1CF7E2CEC(v233);
        if ((v236 & 0x100000000) != 0)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v254 = v253;
          v255 = sub_1CF9E6AE8();
          v254, v256, v257, v258, v259, v260, v261, v262;
          v78 = v324;
          v76 = v321;
          v77 = v322;
          v79 = v318;
          if (v255)
          {
            v313 = v40;
            v263 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v265 = v264;
            v266 = sub_1CF4F5F14(1uLL, v263, v264);
            v268 = v267;
            v270 = v269;
            v272 = v271;
            v265, v267, v269, v271, v273, v274, v275, v276;
            v277 = MEMORY[0x1D3868C10](v266, v268, v270, v272);
            v279 = v278;
            v272, v278, v280, v281, v282, v283, v284, v285;
            v286 = type metadata accessor for LocalContainerMonitor(0);
            v287 = v286;
            if (qword_1EDEA56B8 != -1)
            {
              v286 = swift_once();
            }

            MEMORY[0x1EEE9AC00](v286);
            v288 = v319;
            *(&v306 - 2) = v287;
            *(&v306 - 1) = v288;
            v289 = sub_1CF9E7398();
            v290 = v326;
            MEMORY[0x1EEE9AC00](v289);
            *(&v306 - 4) = v290;
            *(&v306 - 3) = v277;
            *(&v306 - 2) = v279;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF640, qword_1CFA01DD8);
            sub_1CF9E7398();
            v279, v291, v292, v293, v294, v295, v296, v297;
            v298 = v326;
            if (v326)
            {
              v299 = [v326 documentsURL];

              v300 = v308;
              sub_1CF9E59D8();

              sub_1CEFCCC44(v37, &unk_1EC4BE310, qword_1CF9FCBE0);
              v301 = 0;
              v78 = v324;
              v76 = v321;
              v79 = v318;
              v40 = v313;
            }

            else
            {
              sub_1CEFCCC44(v37, &unk_1EC4BE310, qword_1CF9FCBE0);

              v301 = 1;
              v78 = v324;
              v76 = v321;
              v79 = v318;
              v40 = v313;
              v300 = v308;
            }

            v77 = v322;
            v317(v300, v301, 1, v322);
            sub_1CF007D78(v300, v37);
          }
        }

        else
        {
          v237 = v236;
          type metadata accessor for LocalFileProvider(0);
          sub_1CF313858(v237, &v326);
          v238 = v326;
          v239 = v327;
          v313 = v7;
          v241 = v328;
          v240 = v329;
          v242 = v330;
          v308 = v330;
          type metadata accessor for VFSFileTree(0);
          v326 = v238;
          v327 = v239;
          v328 = v241;
          v329 = v240;
          v330 = v242;
          v243 = v311;
          sub_1CF7DFDE0(v237, &v326, v325, v312, 0, v311);
          v244 = v241;
          v40 = v313;
          sub_1CF1E6520(v238, v239, v244, v240, v308, v245, v246, v247);
          v78 = v324;
          sub_1CF7E2E40(v243, v324);
          v248 = v309;
          sub_1CEFCCBDC(v78, v309, &unk_1EC4BEC00, &unk_1CF9FCB60);
          v249 = *(v40 + 6);
          if (v249(v248, 1, v39) == 1)
          {
            sub_1CEFCCC44(v248, &unk_1EC4BEC00, &unk_1CF9FCB60);
          }

          else
          {
            v302 = v248;
            v303 = v307;
            sub_1CF5634F4(v302, v307);
            sub_1CF0082A0(v303, v319);
            sub_1CF574A68(v303);
          }

          v77 = v322;
          v304 = v310;
          v305 = v249(v78, 1, v39);
          v79 = v318;
          if (v305)
          {
            sub_1CEFCCC44(v37, &unk_1EC4BE310, qword_1CF9FCBE0);
            v317(v304, 1, 1, v77);
          }

          else
          {
            sub_1CF25116C(v304);
            sub_1CEFCCC44(v37, &unk_1EC4BE310, qword_1CF9FCBE0);
          }

          v76 = v321;
          sub_1CF007D78(v304, v37);
        }
      }

      else
      {
        v250 = v234;
        type metadata accessor for VFSFileTree(0);
        v251 = v311;
        sub_1CF7DD394(v250, v325, v312, 0, v311);
        v78 = v324;
        sub_1CF7E2E40(v251, v324);
        v252 = (*(v40 + 6))(v78, 1, v39);
        v79 = v318;
        if (v252)
        {
          sub_1CEFCCC44(v37, &unk_1EC4BE310, qword_1CF9FCBE0);
          v317(v33, 1, 1, v322);
        }

        else
        {
          sub_1CF25116C(v33);
          sub_1CEFCCC44(v37, &unk_1EC4BE310, qword_1CF9FCBE0);
        }

        v76 = v321;
        sub_1CF007D78(v33, v37);
        v77 = v322;
      }

LABEL_7:
      if (sub_1CF0012A0())
      {
        v80 = v315;
        sub_1CEFCCBDC(v78, v315, &unk_1EC4BEC00, &unk_1CF9FCB60);
        if ((*(v40 + 6))(v80, 1, v39) == 1)
        {
          sub_1CEFCCC44(v80, &unk_1EC4BEC00, &unk_1CF9FCB60);
        }

        else
        {
          v99 = v78;
          v100 = v314;
          sub_1CF5634F4(v80, v314);
          if (*(v100 + *(v39 + 40)))
          {
            v326 = 0;
            v327 = 0xE000000000000000;
            sub_1CF9E7948();
            v327, v101, v102, v103, v104, v105, v106, v107;
            v326 = 0xD000000000000018;
            v327 = 0x80000001CFA5B460;
            v108 = sub_1CF255338();
            v110 = v109;
            MEMORY[0x1D3868CC0](v108);
            v110, v111, v112, v113, v114, v115, v116, v117;
            v118 = v326;
            v119 = v327;
            if (qword_1EDEA3408 != -1)
            {
              swift_once();
            }

            v120 = qword_1EDEBB5A0;
            v121 = sub_1CF9E7298();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
            v122 = swift_allocObject();
            *(v122 + 16) = xmmword_1CF9FA450;
            *(v122 + 56) = MEMORY[0x1E69E6158];
            *(v122 + 64) = sub_1CEFD51C4();
            *(v122 + 32) = v118;
            *(v122 + 40) = v119;
            sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v120, v121, v122);

            v122, v123, v124, v125, v126, v127, v128, v129;
            sub_1CF574A68(v100);
            sub_1CEFCCC44(v37, &unk_1EC4BE310, qword_1CF9FCBE0);
            v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
            (*(*(v130 - 8) + 56))(v320, 1, 1, v130);
            v131 = v99;
            return sub_1CEFCCC44(v131, &unk_1EC4BEC00, &unk_1CF9FCB60);
          }

          sub_1CF574A68(v100);
          v78 = v99;
        }
      }

      v154 = v316;
      sub_1CEFCCBDC(v37, v316, &unk_1EC4BE310, qword_1CF9FCBE0);
      if ((*(v76 + 48))(v154, 1, v77) == 1)
      {
        sub_1CEFCCC44(v154, &unk_1EC4BE310, qword_1CF9FCBE0);
        v155 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v156 = sub_1CF9E6888();
        v153 = [v155 initWithDomain:v156 code:-1005 userInfo:0];

        swift_willThrow();

        goto LABEL_26;
      }

      v188 = *(v76 + 32);
      v188(v79, v154, v77);
      v326 = 0;
      v327 = 0xE000000000000000;
      sub_1CF9E7948();
      v327, v189, v190, v191, v192, v193, v194, v195;
      v326 = 0x6465766C6F736572;
      v327 = 0xE900000000000020;
      v196 = NSFileProviderItemIdentifier.description.getter(v323);
      v198 = v197;
      MEMORY[0x1D3868CC0](v196);
      v198, v199, v200, v201, v202, v203, v204, v205;
      MEMORY[0x1D3868CC0](0x22206F7420, 0xE500000000000000);
      v206 = sub_1CF9E5A18();
      v208 = v207;
      MEMORY[0x1D3868CC0](v206);
      v208, v209, v210, v211, v212, v213, v214, v215;
      MEMORY[0x1D3868CC0](34, 0xE100000000000000);
      v216 = v326;
      v217 = v327;
      v218 = v79;
      if (qword_1EDEA3408 != -1)
      {
        swift_once();
      }

      v219 = qword_1EDEBB5A0;
      v220 = sub_1CF9E7298();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
      v221 = swift_allocObject();
      *(v221 + 16) = xmmword_1CF9FA450;
      *(v221 + 56) = MEMORY[0x1E69E6158];
      *(v221 + 64) = sub_1CEFD51C4();
      *(v221 + 32) = v216;
      *(v221 + 40) = v217;
      sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v219, v220, v221);
      v221, v222, v223, v224, v225, v226, v227, v228;

      sub_1CEFCCC44(v37, &unk_1EC4BE310, qword_1CF9FCBE0);
      v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
      v230 = *(v229 + 48);
      v231 = v320;
      v188(v320, v218, v77);
      v232 = v324;
      sub_1CEFCCBDC(v324, &v231[v230], &unk_1EC4BEC00, &unk_1CF9FCB60);
      (*(*(v229 - 8) + 56))(v231, 0, 1, v229);
      v131 = v232;
      return sub_1CEFCCC44(v131, &unk_1EC4BEC00, &unk_1CF9FCB60);
    }
  }

  type metadata accessor for LocalDomain(0);
  if (qword_1EDEAEE10 != -1)
  {
    swift_once();
  }

  v147 = v313;
  sub_1CF9E5958();
  v148 = [objc_opt_self() defaultManager];
  v149 = sub_1CF9E5928();
  v326 = 0;
  v150 = [v148 createDirectoryAtURL:v149 withIntermediateDirectories:1 attributes:0 error:&v326];

  v77 = v322;
  if (v150)
  {
    v151 = v326;
    sub_1CEFCCC44(v37, &unk_1EC4BE310, qword_1CF9FCBE0);
    v76 = v321;
    (*(v321 + 32))(v37, v147, v77);
    v317(v37, 0, 1, v77);
    v78 = v324;
    goto LABEL_6;
  }

  v152 = v326;
  v153 = sub_1CF9E57F8();

  swift_willThrow();

  (*(v321 + 8))(v147, v77);
  v78 = v324;
LABEL_26:
  sub_1CEFCCC44(v37, &unk_1EC4BE310, qword_1CF9FCBE0);
  sub_1CEFCCC44(v78, &unk_1EC4BEC00, &unk_1CF9FCB60);
  v326 = 0;
  v327 = 0xE000000000000000;
  sub_1CF9E7948();
  v327, v157, v158, v159, v160, v161, v162, v163;
  v326 = 0xD000000000000012;
  v327 = 0x80000001CFA5B440;
  v164 = NSFileProviderItemIdentifier.description.getter(v323);
  v166 = v165;
  MEMORY[0x1D3868CC0](v164);
  v166, v167, v168, v169, v170, v171, v172, v173;
  v174 = v326;
  v175 = v327;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v176 = qword_1EDEBB5A0;
  v177 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v178 = swift_allocObject();
  *(v178 + 16) = xmmword_1CF9FA450;
  *(v178 + 56) = MEMORY[0x1E69E6158];
  *(v178 + 64) = sub_1CEFD51C4();
  *(v178 + 32) = v174;
  *(v178 + 40) = v175;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v176, v177, v178);
  v178, v179, v180, v181, v182, v183, v184, v185;

  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  return (*(*(v186 - 8) + 56))(v320, 1, 1, v186);
}

uint64_t sub_1CEFFEB98()
{
  v1 = v0;
  v2 = sub_1CF9E5868();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v34 - v5;
  v41 = sub_1CF9E5A58();
  v6 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v46 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = *(type metadata accessor for LocalDomain(0) + 32);
  if (qword_1EDEAEE10 != -1)
  {
    swift_once();
  }

  sub_1CF9E5958();
  v12 = *MEMORY[0x1E6967578];
  v13 = *(MEMORY[0x1E6967578] + 16);
  v44 = *(MEMORY[0x1E6967578] + 17);
  LODWORD(v45) = v13;
  v43 = *(MEMORY[0x1E6967578] + 18);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE798, &qword_1CF9FE660);
  v15 = swift_allocObject();
  v47 = xmmword_1CF9FA450;
  *(v15 + 16) = xmmword_1CF9FA450;
  v16 = *v1;
  *(v15 + 32) = *v1;
  v40 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
  v17 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v18 = swift_allocObject();
  v19 = v11;
  v20 = v18;
  *(v18 + 16) = v47;
  v42 = v6;
  v21 = *(v6 + 16);
  v39 = v17;
  v22 = v18 + v17;
  v23 = v41;
  v21(v22, v1 + v19, v41);
  _Block_copy(v12);
  v24 = sub_1CEFFF0B4();
  v48 = v20;
  sub_1CF000FB8(v24);
  v25 = v48;
  v26 = v46;
  *&v47 = v10;
  v21(v46, v10, v23);
  type metadata accessor for VFSLookupScope(0);
  v27 = swift_allocObject();
  *(v27 + 40) = 0;
  *(v27 + 48) = 1;
  *(v27 + 96) = sub_1CF001108(MEMORY[0x1E69E7CC0]);
  *(v27 + 16) = v40;
  if (*(v15 + 16))
  {
    v28 = v16;
  }

  else
  {
    v28 = 0;
  }

  *(v27 + 24) = v28;
  *(v27 + 32) = v15;
  *(v27 + 40) = 0;
  *(v27 + 48) = 1;
  *(v27 + 56) = 0;
  *(v27 + 64) = sub_1CF4F6888;
  *(v27 + 72) = v14;
  *(v27 + 80) = *(MEMORY[0x1E6967578] + 8);
  v29 = v44;
  *(v27 + 88) = v45;
  *(v27 + 89) = v29;
  *(v27 + 90) = v43;
  v30 = *(v25 + 16);
  v45 = v14;

  if (v30)
  {
    v21(v27 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL, (v25 + v39), v23);
    v31 = v42;
  }

  else
  {
    v32 = v42;
    (*(v42 + 56))(v35, 1, 1, v23);
    (*(v37 + 104))(v36, *MEMORY[0x1E6968F70], v38);
    sub_1CF9E5A38();
    v31 = v32;
  }

  (*(v31 + 8))(v47, v23);
  *(v27 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs) = v25;
  (*(v31 + 32))(v27 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v26, v23);
  *(v27 + 49) = 0;
  return v27;
}

uint64_t sub_1CEFFF07C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

unint64_t *sub_1CEFFF0B4()
{
  v40 = type metadata accessor for LocalContainer(0);
  v1 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v3 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalContainerSnapshot(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalContainerMonitor(0);
  v12 = v11;
  if (qword_1EDEA56B8 != -1)
  {
    v11 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v11);
  v38[-2] = v12;
  v38[-1] = v0;
  sub_1CF9E7398();
  v13 = v41;
  sub_1CEFFF6AC(v10);

  v14 = *&v10[*(v8 + 32)];

  sub_1CF000CD0(v10, type metadata accessor for LocalContainerSnapshot);
  v22 = *v14->tree;
  if (v22)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1CF000F0C(0, v22, 0);
    v23 = v41;
    v24 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v38[0] = v14;
    v25 = v14 + v24;
    v26 = *(v1 + 72);
    v38[1] = (v5 + 32);
    v39 = v26;
    do
    {
      sub_1CF000F50(v25, v3, type metadata accessor for LocalContainer);
      (*(v5 + 16))(v7, &v3[*(v40 + 28)], v4);
      sub_1CF000CD0(v3, type metadata accessor for LocalContainer);
      v41 = v23;
      v27 = v4;
      v29 = v23[2];
      v28 = v23[3];
      if (v29 >= v28 >> 1)
      {
        sub_1CF000F0C((v28 > 1), v29 + 1, 1);
        v23 = v41;
      }

      v23[2] = v29 + 1;
      (*(v5 + 32))(v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v29, v7, v27);
      v25 += v39;
      --v22;
      v4 = v27;
    }

    while (v22);
    v38[0], v30, v31, v32, v33, v34, v35, v36;
  }

  else
  {
    v14, v15, v16, v17, v18, v19, v20, v21;
    return MEMORY[0x1E69E7CC0];
  }

  return v23;
}

char *sub_1CEFFF4C4@<X0>(uint64_t a1@<X1>, char **a2@<X8>)
{
  v4 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEA56D0 != -1)
  {
    swift_once();
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  swift_beginAccess();
  v9 = off_1EDEA56E0;
  if (*(off_1EDEA56E0 + 2) && (v10 = sub_1CEFE4328(v8, v7), (v11 & 1) != 0))
  {
    v12 = *(v9[7] + 8 * v10);
    swift_endAccess();
    *a2 = v12;
    return v12;
  }

  else
  {
    swift_endAccess();
    sub_1CEFFD374(a1, v6, type metadata accessor for LocalDomain);
    v14 = objc_allocWithZone(type metadata accessor for LocalContainerMonitor(0));
    v15 = sub_1CF4EE4F4(v6);
    swift_beginAccess();

    v16 = v15;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = off_1EDEA56E0;
    off_1EDEA56E0 = 0x8000000000000000;
    sub_1CF1D2600(v16, v8, v7, isUniquelyReferenced_nonNull_native);
    v7, v18, v19, v20, v21, v22, v23, v24;
    off_1EDEA56E0 = v25;
    result = swift_endAccess();
    *a2 = v16;
  }

  return result;
}

uint64_t sub_1CEFFF6AC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - v6;
  v8 = type metadata accessor for LocalContainer(0);
  v65 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v59 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v59 - v17;
  v19 = sub_1CF9E5D98();
  v62 = *(v19 - 8);
  v63 = v19;
  (*(v62 + 56))(v18, 1, 1);
  v71 = MEMORY[0x1E69E7CC0];
  v20 = *&v1[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
  v21 = swift_allocObject();
  v21[2] = v18;
  v21[3] = v1;
  v21[4] = &v71;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1CEFFFD54;
  *(v22 + 24) = v21;
  v61 = v21;
  aBlock[4] = sub_1CEFFD054;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_21;
  v23 = _Block_copy(aBlock);
  v24 = v1;

  dispatch_sync(v20, v23);
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v67 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_domain;
    v68 = v24;
    sub_1CEFFD374(v24 + OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_domain, v7, type metadata accessor for LocalDomain);
    sub_1CF000318(v7, v12);
    v20 = sub_1CF0008CC(0, 1, 1, MEMORY[0x1E69E7CC0]);
    isEscapingClosureAtFileLocation = v20[2].isa;
    isa = v20[3].isa;
    v24 = (isEscapingClosureAtFileLocation + 1);
    v23 = v7;
    v59 = v15;
    v60 = v18;
    if (isEscapingClosureAtFileLocation < isa >> 1)
    {
      goto LABEL_3;
    }
  }

  v20 = sub_1CF0008CC((isa > 1), v24, 1, v20);
LABEL_3:
  v20[2].isa = v24;
  v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
  v27 = *(v65 + 72);
  sub_1CF0008F4(v12, v20 + v66 + v27 * isEscapingClosureAtFileLocation, type metadata accessor for LocalContainer);
  v28 = v71;
  if (v71 >> 62)
  {
    v29 = sub_1CF9E7818();
    if (!v29)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v29 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v29)
    {
      goto LABEL_14;
    }
  }

  if (v29 < 1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v30 = v23;
  v65 = a1;

  v31 = 0;
  do
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x1D3869C30](v31, v28);
    }

    else
    {
      v32 = *(&v28[1].super.isa + v31);
    }

    v33 = v32;
    sub_1CEFFD374(v68 + v67, v30, type metadata accessor for LocalDomain);
    v34 = v33;
    sub_1CF00095C(v34, v30, v69);
    v36 = v20[2].isa;
    v35 = v20[3].isa;
    if (v36 >= v35 >> 1)
    {
      v20 = sub_1CF0008CC((v35 > 1), v36 + 1, 1, v20);
    }

    ++v31;

    v20[2].isa = (v36 + 1);
    sub_1CF0008F4(v69, v20 + v66 + v36 * v27, type metadata accessor for LocalContainer);
  }

  while (v29 != v31);
  v28, v37, v38, v39, v40, v41, v42, v43;
  a1 = v65;
LABEL_14:
  v44 = v64;
  sub_1CEFFD374(v68 + v67, v64, type metadata accessor for LocalDomain);
  v46 = v59;
  v45 = v60;
  sub_1CEFCCBDC(v60, v59, &unk_1EC4BEDE0, qword_1CF9FA390);
  v48 = v62;
  v47 = v63;
  if ((*(v62 + 48))(v46, 1, v63) == 1)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 168);
  }

  v49 = type metadata accessor for LocalContainerSnapshot(0);
  *(a1 + *(v49 + 20)) = 0;
  *(a1 + *(v49 + 24)) = 0;
  if (!v20[2].isa)
  {
    goto LABEL_23;
  }

  v50 = v49;
  sub_1CF0008F4(v44, a1, type metadata accessor for LocalDomain);
  (*(v48 + 32))(a1 + *(v50 + 28), v46, v47);
  *(a1 + *(v50 + 32)) = v20;
  v71, v51, v52, v53, v54, v55, v56, v57;
  sub_1CEFCCC44(v45, &unk_1EC4BEDE0, qword_1CF9FA390);
}

uint64_t sub_1CEFFFD0C()
{

  return swift_deallocObject();
}

uint64_t sub_1CEFFFD60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-v5];
  v7 = OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_version;
  swift_beginAccess();
  v8 = sub_1CF9E5D98();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6, a2 + v7, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  sub_1CEFFFEB8(v6, a1);
  swift_beginAccess();

  return sub_1CEFFFF28(v10);
}

uint64_t sub_1CEFFFEB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDE0, qword_1CF9FA390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CEFFFF28(uint64_t a1)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!(*v1 >> 62))
  {
    v6 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v16 = sub_1CF9E7818();
  v7 = __OFADD__(v16, v5);
  result = v16 + v5;
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_1CF1F9400(result, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v9 = *(v3 + 0x10);
  v10 = (*(v3 + 0x18) >> 1) - v9;
  result = sub_1CF0001C4(&v34, (v3 + 8 * v9 + 32), v10, v4);
  if (result < v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  if (result >= 1)
  {
    v14 = *(v3 + 16);
    v7 = __OFADD__(v14, result);
    v15 = v14 + result;
    if (v7)
    {
      __break(1u);
LABEL_16:
      v19 = (v12 + 64) >> 6;
      while (1)
      {
        v20 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_38;
        }

        if (v20 >= v19)
        {
          goto LABEL_8;
        }

        v21 = *(v11 + 8 * v20);
        ++v3;
        if (v21)
        {
          v17 = (v21 - 1) & v21;
          v18 = __clz(__rbit64(v21)) | (v20 << 6);
          v3 = v20;
          goto LABEL_21;
        }
      }
    }

    *(v3 + 16) = v15;
  }

  result = v34;
  if (v13 != v10)
  {
LABEL_8:
    result = sub_1CEFCB59C(result);
    *v1 = v2;
    return result;
  }

LABEL_13:
  v4 = *(v3 + 16);
  v11 = v35;
  v12 = v36;
  v3 = v37;
  v33 = v35;
  if (!v38)
  {
    goto LABEL_16;
  }

  v17 = (v38 - 1) & v38;
  v18 = __clz(__rbit64(v38)) | (v37 << 6);
  v19 = (v36 + 64) >> 6;
LABEL_21:
  v22 = result;
  v23 = *(*(result + 56) + 8 * v18);
  v24 = v23;
  v25 = v23;
  v26 = v33;
  while (1)
  {
LABEL_23:
    if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v32 = v25;
      sub_1CF9E6D88();
      v25 = v32;
      v26 = v33;
    }

    v2 = *v1;
    v27 = *v1 & 0xFFFFFFFFFFFFFF8;
    v28 = *(v27 + 0x18) >> 1;
    if (v4 < v28)
    {
      break;
    }

    *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4;
  }

  while (1)
  {
    *(v27 + 32 + 8 * v4++) = v25;
    if (!v17)
    {
      break;
    }

    result = v22;
LABEL_33:
    v31 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = *(*(result + 56) + ((v3 << 9) | (8 * v31)));
    v26 = v33;
    if (v4 == v28)
    {
      v4 = v28;
      *(v27 + 16) = v28;
      goto LABEL_23;
    }
  }

  v29 = v3;
  result = v22;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v19)
    {
      *(v27 + 16) = v4;
      goto LABEL_8;
    }

    v17 = *(v26 + 8 * v30);
    ++v29;
    if (v17)
    {
      v3 = v30;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_1CF0001C4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1CF000318@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LocalDomain(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *MEMORY[0x1E6967258];
  (*(v9 + 16))(v12, a1 + *(v5 + 40), v8, v10);
  sub_1CEFFD374(a1, v7, type metadata accessor for LocalDomain);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v15 = v14;
  v16 = sub_1CF9E6AE8();
  v15, v17, v18, v19, v20, v21, v22, v23;
  if ((v16 & 1) == 0)
  {
    v24 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v26 = v25;
    v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v34 = v24;
    v35 = v27;
    if (v34 == v28 && v26 == v27)
    {
      v26, v27, v28, v29, v30, v31, v32, v33;
      v35, v52, v53, v54, v55, v56, v57, v58;
    }

    else
    {
      v37 = sub_1CF9E8048();
      v26, v38, v39, v40, v41, v42, v43, v44;
      v35, v45, v46, v47, v48, v49, v50, v51;
      if ((v37 & 1) == 0)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 30);
      }
    }
  }

  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 31);
  }

  *a2 = v13;
  v59 = type metadata accessor for LocalContainer(0);
  a2[1] = 0;
  a2[2] = 0;
  sub_1CEFFD374(v7, a2 + v59[6], type metadata accessor for LocalDomain);
  v60 = v59[7];
  v61 = v13;
  sub_1CEFFBA1C(a2 + v60);
  sub_1CF0005D0(a1, type metadata accessor for LocalDomain);
  sub_1CF0005D0(v7, type metadata accessor for LocalDomain);
  result = (*(v9 + 8))(v12, v8);
  *(a2 + v59[8]) = 1;
  return result;
}

uint64_t sub_1CF0005D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF000630(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF000690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF0006F0(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, char a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  *v17->tree = v12;
  *v17->tester = 2 * ((result - v16) / v15);
LABEL_19:
  v20 = a7(0);
  v25 = *(v20 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = a4 + v26;
  if (v9)
  {
    if (v17 < a4 || v17 + v26 >= &v27[*(v25 + 72) * v12])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    *a4->tree = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v27, v19, v20, v21, v22, v23, v24;
  return v17;
}

uint64_t sub_1CF0008F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF00095C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1CF9E5A58();
  v9 = *(v87 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v87).n128_u64[0];
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 bundleID];
  v14 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v16 = v15;

  v89 = 35;
  v90 = 0xE100000000000000;
  MEMORY[0x1D3868CC0](v14, v16);
  v16, v17, v18, v19, v20, v21, v22, v23;
  v24 = v90;
  v25 = sub_1CF9E6888();
  v24, v26, v27, v28, v29, v30, v31, v32;
  v33 = [a1 displayName];
  v34 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v85 = v35;
  v86 = v34;

  v36 = [a1 documentsURL];
  sub_1CF9E59D8();

  v88 = a2;
  sub_1CEFFD374(a2, v8, type metadata accessor for LocalDomain);
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v38 = v37;
  LOBYTE(v14) = sub_1CF9E6AE8();
  v38, v39, v40, v41, v42, v43, v44, v45;
  if ((v14 & 1) == 0)
  {
    v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v48 = v47;
    v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v56 = v49;
    if (v46 == v50 && v48 == v49)
    {
      v48, v49, v50, v51, v52, v53, v54, v55;
      v56, v57, v58, v59, v60, v61, v62, v63;
    }

    else
    {
      v64 = sub_1CF9E8048();
      v48, v65, v66, v67, v68, v69, v70, v71;
      v56, v72, v73, v74, v75, v76, v77, v78;
      if ((v64 & 1) == 0)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 30);
      }
    }
  }

  if ((sub_1CF9E5848() & 1) == 0)
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalContainer.swift", 100, 2, 31);
  }

  v79 = v85;
  v80 = v86;
  *a3 = v25;
  a3[1] = v80;
  a3[2] = v79;
  v81 = type metadata accessor for LocalContainer(0);
  sub_1CEFFD374(v8, a3 + v81[6], type metadata accessor for LocalDomain);
  v82 = v81[7];
  v83 = v25;
  sub_1CEFFBA1C(a3 + v82);

  sub_1CF0005D0(v88, type metadata accessor for LocalDomain);
  sub_1CF0005D0(v8, type metadata accessor for LocalDomain);
  result = (*(v9 + 8))(v12, v87);
  *(a3 + v81[8]) = 1;
  return result;
}

uint64_t sub_1CF000CD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1CF000D30(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1CF000F0C(void *a1, int64_t a2, char a3)
{
  result = sub_1CF000D30(a1, a2, a3, *v3, &unk_1EC4BF290, &unk_1CFA006C0, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

uint64_t sub_1CF000F50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1CF000FB8(_TtC18FileProviderDaemon8FSTester *result)
{
  v2 = *result->tree;
  v3 = *v1;
  v4 = *(*v1)->tree;
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *v3->tester >> 1)
  {
    if (*result->tree)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_1CF0006F0(isUniquelyReferenced_nonNull_native, v26, 1, v3, &unk_1EC4BF290, &unk_1CFA006C0, MEMORY[0x1E6968FB0]);
  if (!*result->tree)
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = (*v3->tester >> 1) - *v3->tree;
  sub_1CF9E5A58();
  if (v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();
  result, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *v3->tree;
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *v3->tree = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_1CF001108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B28, &unk_1CFA079C0);
  v3 = sub_1CF9E7BE8();
  v4 = *(a1 + 32);
  LOBYTE(v5) = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  v10 = sub_1CF7BF2C0(v4, v5);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = v10;
  result = v8;
  v14 = (a1 + 120);
  while (1)
  {
    *(v3 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v15 = v3[6] + 16 * v12;
    *v15 = v4;
    *(v15 + 8) = v5;
    v16 = v3[7] + 32 * v12;
    *v16 = v6;
    *(v16 + 8) = v7;
    *(v16 + 16) = v9;
    *(v16 + 24) = result;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = v14 + 6;
    v4 = *(v14 - 5);
    v5 = *(v14 - 32);
    v6 = *(v14 - 3);
    v7 = *(v14 - 16);
    v9 = *(v14 - 1);
    v21 = *v14;

    v12 = sub_1CF7BF2C0(v4, v5);
    v14 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for VFSLookupScope(uint64_t a1)
{
  result = qword_1EDEAF0C8;
  if (!qword_1EDEAF0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF0012A0()
{
  v0 = sub_1CF9E5A58();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() legacyDefaultManager];
  v5 = [v4 documentStorageURL];

  sub_1CF9E59D8();
  v6 = sub_1CF9E58E8();
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  if (v6 == 0xD000000000000015 && 0x80000001CFA50000 == v8)
  {
    v8, v9, v10, 0x80000001CFA50000, v11, v12, v13, v14;
  }

  else
  {
    v16 = sub_1CF9E8048();
    v8, v17, v18, v19, v20, v21, v22, v23;
    if ((v16 & 1) == 0)
    {
      return 1;
    }
  }

  v25 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v26 = sub_1CF9E6888();
  v27 = [v25 initWithSuiteName_];

  if (!v27)
  {
    return 0;
  }

  v28 = sub_1CF9E6888();
  v29 = [v27 BOOLForKey_];

  return v29;
}

uint64_t VFSLookupScope.__deallocating_deinit(uint64_t a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  *(v8 + 32), a2, a3, a4, a5, a6, a7, a8;
  sub_1CF2B9AAC(v8 + 64);
  *(v8 + 96), v9, v10, v11, v12, v13, v14, v15;
  v16 = OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_mainRootURL;
  v17 = sub_1CF9E5A58();
  v18 = *(*(v17 - 8) + 8);
  v18(v8 + v16, v17);
  *(v8 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_rootURLs), v19, v20, v21, v22, v23, v24, v25;
  v18(v8 + OBJC_IVAR____TtC18FileProviderDaemon14VFSLookupScope_trashURL, v17);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF0015AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF001614(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF00167C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_1CF001704(uint64_t a1, uint64_t *a2, char *a3)
{
  v602 = a3;
  v604 = a2;
  v605 = a1;
  v637 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v582 = &v565 - v5;
  v589 = sub_1CF9E6938();
  v584 = *(v589 - 8);
  MEMORY[0x1EEE9AC00](v589);
  v583 = &v565 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1180, &unk_1CFA18170);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v575 = &v565 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v576 = &v565 - v10;
  v572 = type metadata accessor for FSDirectoryEnumerator(0);
  MEMORY[0x1EEE9AC00](v572);
  v590 = (&v565 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1CF9E5A58();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v574 = &v565 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v571 = &v565 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v599 = &v565 - v18;
  v19 = type metadata accessor for LocalContainer(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v595 = (&v565 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v598 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v598);
  v597 = &v565 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v586 = &v565 - v23;
  v24 = sub_1CF9E5FF8();
  v587 = *(v24 - 8);
  v588 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v573 = &v565 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v578 = &v565 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v577 = &v565 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v593 = &v565 - v31;
  v594 = type metadata accessor for VFSItem(0);
  v592 = *(v594 - 8);
  MEMORY[0x1EEE9AC00](v594);
  v596 = &v565 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1188, &unk_1CFA084B0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v565 - v34;
  v36 = type metadata accessor for LocalItemContext(0);
  v37 = *(v36 - 8);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v565 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v585 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileID;
  *&v3[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileID] = 0;
  v3[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isUploadedTestingImpl] = 1;
  v3[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isDownloadedTestingImpl] = 1;
  v41 = v13;
  v42 = v13 + 56;
  v43 = *(v13 + 56);
  v600 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL;
  v44 = v12;
  v580 = v43;
  v581 = v42;
  (v43)(&v3[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileURL], 1, 1, v12, v38);
  v3[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fp_isUbiquitous] = 0;
  v606 = v3;
  v607 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem____lazy_storage___containerItem;
  *&v3[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem____lazy_storage___containerItem] = 1;
  v45 = v604;
  v46 = v605;
  sub_1CF00409C(v604, v35);
  v47 = *(v37 + 48);
  v591 = v36;
  if (v47(v35, 1, v36) == 1)
  {
    sub_1CEFCCC44(v602, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CF000630(v45, type metadata accessor for LocalDomain);
    (*(v41 + 8))(v46, v44);
    v48 = &qword_1EC4C1188;
    v49 = &unk_1CFA084B0;
    v50 = v35;
LABEL_3:
    sub_1CEFCCC44(v50, v48, v49);
LABEL_6:
    v63 = v606;
    sub_1CEFCCC44(&v606[v600], &unk_1EC4BE310, qword_1CF9FCBE0);
    sub_1CF00D644(*&v607[v63]);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v579 = v41;
  v603 = v44;
  sub_1CF005114(v35, v40, type metadata accessor for LocalItemContext);
  v51 = v46;
  v52 = sub_1CF9E58E8();
  v54 = v53;
  v55 = sub_1CF4C4044(0x726569727261622ELL, 0xE90000000000002DLL, v52, v53);
  v54, v56, v57, v58, v59, v60, v61, v62;
  if (v55)
  {
    sub_1CEFCCC44(v602, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CF000630(v604, type metadata accessor for LocalDomain);
    (*(v579 + 8))(v46, v603);
    sub_1CF000630(v40, type metadata accessor for LocalItemContext);
    goto LABEL_6;
  }

  v65 = v593;
  v66 = v602;
  v67 = v604;
  sub_1CF00517C(v602, v46, v604, v593);
  v68 = v594;
  if ((*(v592 + 48))(v65, 1, v594) == 1)
  {
    sub_1CEFCCC44(v66, &unk_1EC4BEC00, &unk_1CF9FCB60);
    sub_1CF000630(v67, type metadata accessor for LocalDomain);
    (*(v579 + 8))(v46, v603);
    sub_1CF000630(v40, type metadata accessor for LocalItemContext);
    v50 = v65;
    v48 = &unk_1EC4BEC00;
    v49 = &unk_1CF9FCB60;
    goto LABEL_3;
  }

  sub_1CF005114(v65, v596, type metadata accessor for VFSItem);
  if ((sub_1CF9E5848() & 1) == 0)
  {
    goto LABEL_248;
  }

  v69 = objc_autoreleasePoolPush();
  v70 = v586;
  sub_1CF007DE8(v51, v586);
  v607 = 0;
  objc_autoreleasePoolPop(v69);
  v72 = v587;
  v71 = v588;
  v73 = (*(v587 + 48))(v70, 1, v588);
  v74 = v597;
  if (v73 == 1)
  {
    sub_1CEFCCC44(v70, &unk_1EC4C50C0, &unk_1CFA084A0);
    v75 = v596;
    v76 = *(v596 + 40);
    v625 = *(v596 + 32);
    v626 = v76;

    v77 = v578;
    sub_1CEFE6798(v578);
    v626, v78, v79, v80, v81, v82, v83, v84;
    (*(v72 + 32))(&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_contentType], v77, v71);
  }

  else
  {
    v85 = *(v72 + 32);
    v86 = v577;
    v85(v577, v70, v71);
    v85(&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_contentType], v86, v71);
    v75 = v596;
  }

  sub_1CF0082A0(v75, v604);
  sub_1CF001614(v75 + *(v68 + 28), v74, type metadata accessor for ItemMetadata);
  LODWORD(v593) = *v74;
  v87 = v75;
  if (v593 == 1)
  {
    v88 = 0;
    LODWORD(v577) = 0;
  }

  else
  {
    LODWORD(v577) = v74[v598[28]];
    v88 = v577 ^ 1;
  }

  LODWORD(v592) = *(v74 + 5);
  v89 = sub_1CF9E6248();
  v90 = sub_1CF9E6228();
  v570 = sub_1CF9E6238();
  v91 = v595;
  sub_1CF001614(v40, v595, type metadata accessor for LocalContainer);
  v92 = (v87 + *(v68 + 36));
  v93 = *v92;
  *&v606[v585] = *v92;
  v94 = v40[v591[5]];
  v95 = MEMORY[0x1E6967258];
  LODWORD(v594) = v40[v591[8]];
  v586 = v40;
  v568 = v88;
  v569 = v94;
  v566 = v92;
  v567 = v93;
  if (v594 != 1)
  {
    if (v40[v591[9]] == 1)
    {
      v104 = *MEMORY[0x1E6967280];
      v105 = v606;
      *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier] = *MEMORY[0x1E6967280];
      *&v105[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier] = v104;
      v106 = &v105[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename];
      *v106 = 0x68736172542ELL;
      v106[1] = 0xE600000000000000;
      v107 = v104;
      LODWORD(v585) = 0;
      goto LABEL_65;
    }

    v108 = *v596;
    v109 = *(v596 + 8);
    v110 = MEMORY[0x1E69E6158];
    if (v94)
    {
      LODWORD(v565) = v90;
      v111 = v89;
      if (v109)
      {
        if (v109 != 1)
        {
          if (v108)
          {
            v140 = *MEMORY[0x1E6967280];
          }

          else
          {
            v140 = *MEMORY[0x1E6967258];
          }

          v132 = v140;
          goto LABEL_48;
        }

        v625 = 1029990758;
        v626 = 0xE400000000000000;
        v613 = v108;
      }

      else
      {
        v625 = 1029990756;
        v626 = 0xE400000000000000;
        LODWORD(v613) = v108;
      }

      v121 = sub_1CF9E7F98();
      v123 = v122;
      MEMORY[0x1D3868CC0](v121);
      v123, v124, v125, v126, v127, v128, v129, v130;
      v131 = v626;
      v132 = sub_1CF9E6888();
      v131, v133, v134, v135, v136, v137, v138, v139;
LABEL_48:
      v181 = v606;
      *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier] = v132;
      v182 = MEMORY[0x1E6967280];
LABEL_52:
      v183 = *v182;
      *&v181[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier] = *v182;
      v184 = *(v596 + 40);
      v625 = *(v596 + 32);
      v626 = v184;
      v613 = 47;
      v614 = 0xE100000000000000;
      v611 = 58;
      v612 = 0xE100000000000000;
      v185 = sub_1CEFE4E68();
      v186 = v183;
      v563 = v185;
      v564 = v185;
      *&v562 = v110;
      *(&v562 + 1) = v185;
      v187 = sub_1CF9E7668();
      LODWORD(v585) = 0;
      v188 = &v181[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename];
      *v188 = v187;
      v188[1] = v189;
      v89 = v111;
      v90 = v565;
      goto LABEL_65;
    }

    if (v40[v591[10]])
    {
      LODWORD(v565) = v90;
      v111 = v89;
      if (v109)
      {
        if (v109 != 1)
        {
          if (v108)
          {
            v179 = *MEMORY[0x1E6967280];
          }

          else
          {
            v179 = *MEMORY[0x1E6967258];
          }

          v152 = v179;
          goto LABEL_51;
        }

        v625 = 1029990758;
        v626 = 0xE400000000000000;
        v613 = v108;
      }

      else
      {
        v625 = 1029990756;
        v626 = 0xE400000000000000;
        LODWORD(v613) = v108;
      }

      v141 = sub_1CF9E7F98();
      v143 = v142;
      MEMORY[0x1D3868CC0](v141);
      v143, v144, v145, v146, v147, v148, v149, v150;
      v151 = v626;
      v152 = sub_1CF9E6888();
      v151, v153, v154, v155, v156, v157, v158, v159;
LABEL_51:
      v181 = v606;
      *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier] = v152;
      v182 = v595;
      goto LABEL_52;
    }

    if (*(v596 + 8))
    {
      if (v109 != 1)
      {
        v120 = v89;
        if (v108)
        {
          v180 = *MEMORY[0x1E6967280];
        }

        else
        {
          v180 = *MEMORY[0x1E6967258];
        }

        v171 = v180;
LABEL_55:
        *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier] = v171;
        v190 = v596;
        v191 = *(v596 + 16);
        if (*(v596 + 24))
        {
          if (*(v596 + 24) != 1)
          {
            if (v191)
            {
              v211 = *MEMORY[0x1E6967280];
            }

            else
            {
              v211 = *v95;
            }

            v203 = v211;
            goto LABEL_64;
          }

          v625 = 1029990758;
          v626 = 0xE400000000000000;
          v613 = v191;
        }

        else
        {
          v625 = 1029990756;
          v626 = 0xE400000000000000;
          LODWORD(v613) = v191;
        }

        v192 = sub_1CF9E7F98();
        v194 = v193;
        MEMORY[0x1D3868CC0](v192);
        v194, v195, v196, v197, v198, v199, v200, v201;
        v202 = v626;
        v203 = sub_1CF9E6888();
        v202, v204, v205, v206, v207, v208, v209, v210;
LABEL_64:
        v89 = v120;
        v212 = v606;
        *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier] = v203;
        v213 = *(v190 + 40);
        v625 = *(v190 + 32);
        v626 = v213;
        v613 = 47;
        v614 = 0xE100000000000000;
        v611 = 58;
        v612 = 0xE100000000000000;
        v563 = sub_1CEFE4E68();
        v564 = v563;
        *(&v562 + 1) = v563;
        *&v562 = MEMORY[0x1E69E6158];
        v214 = sub_1CF9E7668();
        LODWORD(v585) = 0;
        v215 = &v212[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename];
        *v215 = v214;
        v215[1] = v216;
        goto LABEL_65;
      }

      v120 = v89;
      v625 = 1029990758;
      v626 = 0xE400000000000000;
      v613 = v108;
    }

    else
    {
      v120 = v89;
      v625 = 1029990756;
      v626 = 0xE400000000000000;
      LODWORD(v613) = v108;
    }

    v160 = sub_1CF9E7F98();
    v162 = v161;
    MEMORY[0x1D3868CC0](v160);
    v162, v163, v164, v165, v166, v167, v168, v169;
    v170 = v626;
    v171 = sub_1CF9E6888();
    v170, v172, v173, v174, v175, v176, v177, v178;
    goto LABEL_55;
  }

  v96 = v90;
  v97 = *(v91 + 16);
  if (v97)
  {
    v98 = *v91;
    v99 = v606;
    *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier] = *v91;
    v100 = *v95;
    *&v99[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier] = *v95;
    v101 = &v99[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename];
    *v101 = *(v91 + 8);
    v101[1] = v97;

    v102 = v98;
    v103 = v100;
    LODWORD(v585) = 1;
  }

  else
  {
    v112 = *MEMORY[0x1E6967258];
    v113 = v606;
    *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier] = *MEMORY[0x1E6967258];
    *&v113[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier] = v112;
    v114 = *(v596 + 40);
    v625 = *(v596 + 32);
    v626 = v114;
    v613 = 47;
    v614 = 0xE100000000000000;
    v611 = 58;
    v612 = 0xE100000000000000;
    v115 = sub_1CEFE4E68();
    v116 = v112;
    v563 = v115;
    v564 = v115;
    *&v562 = MEMORY[0x1E69E6158];
    *(&v562 + 1) = v115;
    v117 = sub_1CF9E7668();
    LODWORD(v585) = 0;
    v118 = &v113[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_filename];
    *v118 = v117;
    v118[1] = v119;
  }

  v90 = v96;
LABEL_65:
  v570 = (v90 | v89 | v570) & v592;
  v217 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v218 = sub_1CF9E6888();
  v219 = [v217 initWithSuiteName_];

  if (!v219 || (v220 = sub_1CF9E6888(), v221 = [v219 BOOLForKey_], v219, v220, !v221))
  {
    v229 = v606;
    v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isExcludedFromSync] = 0;
    v230 = &v229[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_symlinkTargetPath];
    *v230 = 0;
    v230[1] = 0;
    if (v570)
    {
      v225 = 3;
    }

    else
    {
      v225 = 1;
    }

    goto LABEL_90;
  }

  v222 = *&v597[v598[33]];
  v565 = "[DEBUG] ┏%@ %@";
  if (v222)
  {
    v223 = &unk_1EDEBB000;
    if (*(v222 + 16))
    {
      sub_1CEFE4328(0xD00000000000002DLL, 0x80000001CFA50CA0);
      if (v224)
      {
        v225 = 1;
      }

      else
      {
        v225 = 65;
      }

      if (*(v222 + 16))
      {
        sub_1CEFE4328(0xD000000000000031, 0x80000001CFA50CD0);
        if (v226)
        {
          v227 = 1;
          v228 = v587;
          goto LABEL_82;
        }
      }
    }

    else
    {
      v225 = 65;
    }

    v228 = v587;
  }

  else
  {
    v225 = 65;
    v228 = v587;
    v223 = &unk_1EDEBB000;
  }

  v227 = 0;
LABEL_82:
  v231 = v606;
  v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isExcludedFromSync] = v227;
  v232 = &v231[v223[208]];
  v233 = v578;
  v234 = v228;
  v235 = v588;
  (*(v228 + 16))(v578, v232, v588);
  v236 = v573;
  sub_1CF9E5F18();
  v237 = sub_1CF9E5FB8();
  v238 = *(v234 + 8);
  v238(v236, v235);
  v238(v233, v235);
  if (v237)
  {
    v239 = swift_slowAlloc();
    bzero(v239, 0x401uLL);
    sub_1CF9E5A18();
    v241 = v240;
    v242 = sub_1CF9E6978();
    v241, v243, v244, v245, v246, v247, v248, v249;
    v250 = readlink((v242 + 32), v239, 0x401uLL);

    if (v250 < 0)
    {
      v255 = &v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_symlinkTargetPath];
      *v255 = 0;
      v255[1] = 0;
    }

    else
    {
      *(v239 + v250) = 0;
      v251 = sub_1CF9E6878();
      v252 = &v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_symlinkTargetPath];
      *v252 = v251;
      v252[1] = v253;
    }

    MEMORY[0x1D386CDC0](v239, -1, -1);
  }

  else
  {
    v254 = &v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_symlinkTargetPath];
    *v254 = 0;
    v254[1] = 0;
  }

  if (v570)
  {
    v225 |= 2uLL;
  }

LABEL_90:
  v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fp_isContainer] = v585;
  v256 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v258 = v257;
  v260 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v266 = v259;
  if (v256 == v260 && v258 == v259)
  {
LABEL_92:
    v258, v259, v260, v261, v262, v263, v264, v265;
    v266, v267, v268, v269, v270, v271, v272, v273;
    goto LABEL_98;
  }

  v274 = sub_1CF9E8048();
  v258, v275, v276, v277, v278, v279, v280, v281;
  v266, v282, v283, v284, v285, v286, v287, v288;
  if ((v274 & 1) == 0)
  {
    v289 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v258 = v290;
    v260 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v266 = v259;
    if (v289 != v260 || v258 != v259)
    {
      v291 = sub_1CF9E8048();
      v258, v292, v293, v294, v295, v296, v297, v298;
      v266, v299, v300, v301, v302, v303, v304, v305;
      if (!(v585 & 1 | ((~v225 & 0x3C) == 0) | v291 & 1))
      {
        v225 |= 0x3CuLL;
      }

      goto LABEL_98;
    }

    goto LABEL_92;
  }

LABEL_98:
  v306 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v307 = sub_1CF9E6888();
  v308 = [v306 initWithSuiteName_];

  if (v308 && (v309 = sub_1CF9E6888(), v310 = [v308 BOOLForKey_], v308, v309, v310))
  {
    v311 = v597;
    v312 = *&v597[v598[33]];
    if (v312)
    {
      if (*(v312 + 16))
      {
        sub_1CEFE4328(0xD000000000000029, 0x80000001CFA50C70);
        if (v313)
        {
          v225 &= 0xFFFFFFFFFFFFFFF1;
        }
      }
    }
  }

  else
  {
    v311 = v597;
  }

  *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_capabilities] = v225;
  if (!v594)
  {
    v315 = v598;
    if (v593 != 1)
    {
      goto LABEL_125;
    }

    if (sub_1CF0088DC() & 1) != 0 && (v316 = *&v311[*(v315 + 33)]) != 0 && *(v316 + 16) && (sub_1CEFE4328(0xD000000000000032, 0x80000001CFA50C30), (v317))
    {
      *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_childItemCount] = 0;
    }

    else
    {
      v334 = swift_allocObject();
      v335 = v334;
      if ((v311[8] & 1) != 0 || (v336 = *(v311 + 1), *(v334 + 16) = v336, v336 <= 0x63))
      {
        *(v334 + 16) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
        v337 = v579;
        v338 = (*(v579 + 80) + 32) & ~*(v579 + 80);
        v587 = *(v579 + 72);
        v339 = swift_allocObject();
        *(v339 + 16) = xmmword_1CF9FA450;
        v340 = v339 + v338;
        v341 = *(v337 + 16);
        v599 = v337 + 16;
        v588 = v341;
        v341(v339 + v338, v605, v603);
        v342 = v572;
        v343 = v590;
        sub_1CF001614(v604, v590 + *(v572 + 20), type metadata accessor for LocalDomain);
        v344 = (v343 + v342[9]);
        *v344 = 0;
        v344[1] = 0;
        *v343 = v339;
        *(v343 + v342[6]) = 0;
        *(v343 + v342[7]) = 0;
        *(v343 + v342[8]) = 100;
        v625 = 0;
        LOBYTE(v613) = 1;
        v345 = *(v339 + 16);

        v585 = v345;
        if (v345)
        {
          v346 = 0;
          v347 = (v337 + 8);
          v348 = v571;
          while (1)
          {
            if (v346 >= *(v339 + 16))
            {
              __break(1u);
            }

            v588(v348, v340, v603);
            if ((v613 & 1) == 0)
            {
              break;
            }

            objc_autoreleasePoolPop(objc_autoreleasePoolPush());
            v349 = objc_autoreleasePoolPush();
            MEMORY[0x1EEE9AC00](v349);
            *(&v565 - 8) = v348;
            *(&v565 - 7) = &v625;
            *&v561 = v590;
            *(&v561 + 1) = &v613;
            *&v562 = 7;
            *(&v562 + 1) = sub_1CF4F5FC4;
            v350 = v335;
            v563 = v335;
            LOBYTE(v564) = 1;
            v351 = v607;
            sub_1CF9E59B8();
            v607 = v351;
            if (v351)
            {
              objc_autoreleasePoolPop(v349);
              (*v347)(v348, v603);
              __break(1u);
LABEL_248:
              sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 80);
            }

            ++v346;
            objc_autoreleasePoolPop(v349);
            (*v347)(v348, v603);
            v340 += v587;
            v335 = v350;
            if (v585 == v346)
            {
              goto LABEL_139;
            }
          }

          (*v347)(v348, v603);
        }

LABEL_139:
        sub_1CF000630(v590, type metadata accessor for FSDirectoryEnumerator);

        v311 = v597;
        v315 = v598;
      }

      swift_beginAccess();
      *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_childItemCount] = sub_1CF9E8258();
    }

    if (v577)
    {
      goto LABEL_142;
    }

    goto LABEL_146;
  }

  if (v311[8])
  {
    v314 = 0;
    goto LABEL_127;
  }

  v318 = 0;
  v319 = 0;
  LODWORD(v588) = *(v311 + 1);
  v320 = (v579 + 8);
  v311 = MEMORY[0x1E69E6370];
  do
  {
    LODWORD(v590) = v318;
    if (v319 == 2)
    {
LABEL_126:
      swift_arrayDestroy();
      v314 = sub_1CF9E8258();
      v311 = v597;
LABEL_127:
      v315 = v598;
      v333 = v593 != 1;
      *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_childItemCount] = v314;
      if ((v333 | v577))
      {
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    v321 = (&unk_1F4BED6E0 + 16 * v319++ + 40);
    while (1)
    {
      v322 = *v321;

      v323 = v599;
      sub_1CF9E5958();
      v322, v324, v325, v326, v327, v328, v329, v330;
      v331 = sub_1CF9E5848();
      if ((v331 & 1) == 0)
      {
        goto LABEL_246;
      }

      v315 = &v565;
      MEMORY[0x1EEE9AC00](v331);
      LODWORD(v563) = 4;
      v332 = v607;
      sub_1CF9E59B8();
      v607 = v332;
      if (!v332)
      {
        break;
      }

      (*v320)(v323, v603);
      v607 = 0;
LABEL_119:
      v321 += 2;
      if (++v319 == 3)
      {
        goto LABEL_126;
      }
    }

    (*v320)(v323, v603);
    if ((v625 & 1) == 0)
    {
      goto LABEL_119;
    }

    v318 = v590 + 1;
  }

  while (v590 != -1);
  __break(1u);
LABEL_125:
  *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_childItemCount] = 0;
LABEL_142:
  if (sub_1CF0088DC() & 1) != 0 && (v352 = *&v311[*(v315 + 33)]) != 0 && *(v352 + 16) && (sub_1CEFE4328(0xD000000000000030, 0x80000001CFA50BF0), (v353))
  {
LABEL_146:
    v354 = 0;
  }

  else
  {
    v354 = sub_1CF9E81A8();
  }

  v355 = v311;
  v356 = v606;
  *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_documentSize] = v354;
  v357 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_creationDate;
  v358 = *(v315 + 7);
  v359 = sub_1CF9E5CF8();
  v360 = *(v359 - 8);
  v361 = *(v360 + 16);
  v361(&v356[v357], &v355[v358], v359);
  v362 = *(v360 + 56);
  v362(&v356[v357], 0, 1, v359);
  v363 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_contentModificationDate;
  v361(&v356[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_contentModificationDate], &v355[v598[8]], v359);
  v364 = v598;
  v362(&v356[v363], 0, 1, v359);
  sub_1CEFCCBDC(&v355[v364[30]], &v356[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_lastUsedDate], &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v365 = *&v355[v364[31]];
  if (v365)
  {
    v366 = sub_1CF6601AC(v365);
    sub_1CEFD57E0(0, &unk_1EC4C1190, 0x1E6967428);
    v367 = sub_1CF9E6D28();
    v366, v368, v369, v370, v371, v372, v373, v374;
    v375 = FPGetTagsDataForTags();

    v376 = sub_1CF9E5B88();
    v378 = v377;

    v355 = v597;
  }

  else
  {
    v376 = 0;
    v378 = 0xF000000000000000;
  }

  v379 = &v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_tagData];
  *v379 = v376;
  v379[1] = v378;
  if (v355[v364[32] + 8])
  {
    v380 = 0;
  }

  else
  {
    v380 = sub_1CF9E8268();
  }

  v381 = v569;
  *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_favoriteRank] = v380;
  v382 = &v355[v364[35]];
  if (v382[8])
  {
    v383 = 0;
    v384 = 0;
  }

  else
  {
    v383 = *v382;
    v384 = *(v382 + 1);
  }

  v385 = v586;
  v386 = v591;
  v387 = v606;
  v388 = &v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_typeAndCreator];
  *v388 = v383;
  v388[1] = v384;
  v387[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isTrashed] = v381;
  v387[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isAncestorInTrash] = *(v385 + v386[6]);
  if (sub_1CF0088DC())
  {
    v389 = sub_1CF9E5748();
    v390 = *(*(v389 - 8) + 56);
    v391 = v575;
    v390(v575, 1, 1, v389);
    v563 = v391;
    v561 = 0u;
    v562 = 0u;
    v392 = v576;
    sub_1CF9E5718();
    v390(v392, 0, 1, v389);
    sub_1CEFE55D0(v392, &v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_mostRecentEditorNameComponents], &qword_1EC4C1180, &unk_1CFA18170);
    if (!v594)
    {
      goto LABEL_159;
    }

LABEL_164:
    v439 = v583;
    sub_1CF9E6928();
    v440 = sub_1CF9E68C8();
    v442 = v441;
    v443 = *(v584 + 8);
    v444 = v589;
    v443(v439, v589);
    if (v442 >> 60 != 15)
    {
      sub_1CF9E6918();
      v445 = sub_1CF9E68C8();
      v446 = v439;
      v448 = v447;
      v443(v446, v444);
      if (v448 >> 60 != 15)
      {
        v449 = objc_allocWithZone(MEMORY[0x1E69674E8]);
        v450 = sub_1CF9E5B48();
        v451 = sub_1CF9E5B48();
        v452 = [v449 initWithContentVersion:v450 metadataVersion:v451];

        sub_1CEFE48D8(v445, v448);
        sub_1CEFE48D8(v440, v442);
        v453 = v606;
        *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemVersion] = v452;
        goto LABEL_169;
      }

LABEL_245:
      __break(1u);
LABEL_246:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 67);
    }

LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  v437 = OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_mostRecentEditorNameComponents;
  v438 = sub_1CF9E5748();
  (*(*(v438 - 8) + 56))(&v606[v437], 1, 1, v438);
  if (v594)
  {
    goto LABEL_164;
  }

LABEL_159:
  LODWORD(v588) = sub_1CF0088DC();
  v393 = v567;
  v394 = *(v566 + 2);
  v395 = v566[2];
  v396 = *(v566 + 24);
  v397 = v596;
  v398 = *(v596 + 16);
  v399 = *(v596 + 24);
  v401 = *(v596 + 32);
  v400 = *(v596 + 40);
  LOBYTE(v613) = v396;
  v625 = v567;
  LODWORD(v626) = v394;
  v627 = v395;
  v628 = v396;
  v629 = 0;
  v630 = v398;
  v631 = v399;
  v632 = v401;
  v633 = v400;
  v634 = 0;
  v635 = 0;
  v636 = 0;

  sub_1CEFCCC44(&v625, &unk_1EC4BE330, &unk_1CF9FF010);
  LODWORD(v591) = v394;
  sub_1CF25174C(v393, v394, v395, v396);
  v403 = v402;
  v404 = v583;
  sub_1CF9E6928();
  v599 = sub_1CF9E68C8();
  v406 = v405;
  v403, v405, v407, v408, v409, v410, v411, v412;
  v590 = *(v584 + 8);
  (v590)(v404, v589);
  v594 = v406;
  if (v406 >> 60 == 15)
  {
    __break(1u);
    goto LABEL_243;
  }

  v413 = *(v397 + 16);
  v415 = *(v397 + 32);
  v414 = *(v397 + 40);
  LOBYTE(v609) = v396;
  v613 = v393;
  LODWORD(v614) = v591;
  v615 = v395;
  v616 = v396;
  v617 = 0;
  v618 = v413;
  v619 = *(v397 + 24);
  v416 = v619;
  v620 = v415;
  v621 = v414;
  v623 = 0;
  v624 = 0;
  v622 = 0;
  swift_bridgeObjectRetain_n();
  sub_1CEFCCC44(&v613, &unk_1EC4BE330, &unk_1CF9FF010);
  sub_1CF4F507C(v413, v416, v415);
  v418 = v417;
  v414, v417, v419, v420, v421, v422, v423, v424;
  sub_1CF9E6918();
  v425 = sub_1CF9E68C8();
  v427 = v426;
  v418, v426, v428, v429, v430, v431, v432, v433;
  (v590)(v404, v589);
  if (v427 >> 60 == 15)
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  v434 = sub_1CF9E5B48();
  v435 = sub_1CF9E5B48();
  if (v588)
  {
    v436 = sub_1CF9E6888();
  }

  else
  {
    v436 = 0;
  }

  v454 = [objc_allocWithZone(MEMORY[0x1E69674E8]) initWithContentVersion:v434 metadataVersion:v435 lastEditorDeviceName:v436];

  sub_1CEFE48D8(v425, v427);
  sub_1CEFE48D8(v599, v594);
  v453 = v606;
  *&v606[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemVersion] = v454;
LABEL_169:
  v455 = v582;
  sub_1CEFFBA1C(v582);
  v456 = v603;
  v580(v455, 0, 1, v603);
  v457 = v600;
  swift_beginAccess();
  sub_1CEFDA9E0(v455, &v453[v457], &unk_1EC4BE310, qword_1CF9FCBE0);
  swift_endAccess();
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v459 = v458;
  v460 = sub_1CF9E6AE8();
  v459, v461, v462, v463, v464, v465, v466, v467;
  v468 = 0;
  v469 = 0;
  v470 = v604;
  if (v460)
  {
    v471 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v473 = v472;
    v474 = sub_1CF4F5F14(1uLL, v471, v472);
    v476 = v475;
    v478 = v477;
    v480 = v479;
    v473, v475, v477, v479, v481, v482, v483, v484;
    v468 = MEMORY[0x1D3868C10](v474, v476, v478, v480);
    v469 = v485;
    v480, v485, v486, v487, v488, v489, v490, v491;
  }

  v492 = &v453[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fp_spotlightSubDomainIdentifier];
  *v492 = v468;
  v492[1] = v469;
  v493 = v597;
  v494 = v596;
  if (v597[v598[10]] != 1)
  {
    v497 = *(v596 + 40);
    v625 = *(v596 + 32);
    v626 = v497;
    v613 = 47;
    v614 = 0xE100000000000000;
    v609 = 58;
    v610 = 0xE100000000000000;
    v563 = sub_1CEFE4E68();
    v564 = v563;
    *&v562 = MEMORY[0x1E69E6158];
    *(&v562 + 1) = v563;
    v498 = sub_1CF9E7668();
    v500 = v499;
    v501 = sub_1CEFE7394(v498, v499);
    v503 = v502;
    v500, v502, v504, v505, v506, v507, v508, v509;
    v495 = v605;
    if (v503)
    {
      if (v501 == 46 && v503 == 0xE100000000000000)
      {
        0xE100000000000000, v510, v511, v512, v513, v514, v515, v516;
        v493 = v597;
        v496 = v592;
        if ((v592 & 0x40) == 0)
        {
          if ((v592 & 0x100) == 0)
          {
            if ((v592 & 0x80) == 0)
            {
              goto LABEL_195;
            }

            goto LABEL_182;
          }

          goto LABEL_190;
        }

        if ((v592 & 0x100) != 0)
        {
          goto LABEL_207;
        }

        if ((v592 & 0x80) != 0)
        {
          goto LABEL_209;
        }

LABEL_206:
        v517 = 1;
        goto LABEL_222;
      }

      v518 = sub_1CF9E8048();
      v503, v519, v520, v521, v522, v523, v524, v525;
      v493 = v597;
      v496 = v592;
      if ((v592 & 0x40) == 0)
      {
        if ((v592 & 0x100) == 0)
        {
          if ((v592 & 0x80) != 0)
          {
            v517 = 0;
            goto LABEL_221;
          }

          if (v518)
          {
            goto LABEL_195;
          }

LABEL_217:
          v517 = 0;
          if (*(v493 + v598[13]))
          {
            goto LABEL_224;
          }

          goto LABEL_225;
        }

        goto LABEL_211;
      }

      if ((v592 & 0x100) == 0)
      {
        if ((v592 & 0x80) != 0)
        {
          v517 = 1;
          goto LABEL_221;
        }

        if (v518)
        {
          goto LABEL_206;
        }

LABEL_202:
        v517 = 1;
        if (*(v493 + v598[13]))
        {
          goto LABEL_224;
        }

        goto LABEL_225;
      }
    }

    else
    {
      v496 = v592;
      if ((v592 & 0x40) == 0)
      {
        v493 = v597;
        if ((v592 & 0x100) == 0)
        {
          if ((v592 & 0x80) != 0)
          {
            v517 = 4;
            goto LABEL_223;
          }

          goto LABEL_217;
        }

        v518 = 0;
LABEL_211:
        v517 = 2;
        if ((v496 & 0x80) == 0)
        {
LABEL_215:
          if (v518)
          {
            goto LABEL_222;
          }

          goto LABEL_223;
        }

LABEL_221:
        v517 |= 4uLL;
        if (v518)
        {
          goto LABEL_222;
        }

        goto LABEL_223;
      }

      v493 = v597;
      if ((v592 & 0x100) == 0)
      {
        if ((v592 & 0x80) != 0)
        {
          v517 = 5;
          goto LABEL_223;
        }

        goto LABEL_202;
      }

      v518 = 0;
    }

    v517 = 3;
    if ((v496 & 0x80) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_221;
  }

  v495 = v605;
  v496 = v592;
  if ((v592 & 0x40) != 0)
  {
    if ((v592 & 0x100) == 0)
    {
      if ((v592 & 0x80) == 0)
      {
        goto LABEL_206;
      }

LABEL_209:
      v517 = 5;
      goto LABEL_222;
    }

LABEL_207:
    v518 = 1;
    v517 = 3;
    if ((v496 & 0x80) == 0)
    {
      goto LABEL_215;
    }

    goto LABEL_221;
  }

  if ((v592 & 0x100) != 0)
  {
LABEL_190:
    v518 = 1;
    goto LABEL_211;
  }

  if ((v592 & 0x80) == 0)
  {
LABEL_195:
    v517 = 8;
    goto LABEL_223;
  }

LABEL_182:
  v517 = 4;
LABEL_222:
  v517 |= 8uLL;
LABEL_223:
  if (*(v493 + v598[13]) == 1)
  {
LABEL_224:
    v517 |= 0x10uLL;
  }

LABEL_225:
  *&v453[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_fileSystemFlags] = v517;
  v526 = sub_1CF0089A8();
  if (v526)
  {
    v534 = sub_1CF008FD8(v526, v527, v528, v529, v530, v531, v532, v533);
  }

  else
  {
    v534 = MEMORY[0x1E69E7CC0];
  }

  *&v453[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_conflictingVersions] = v534;
  v535 = *(v493 + v598[33]);
  if (v535)
  {
    sub_1CF4F5130(v535);
    v537 = v536;
  }

  else
  {
    v538 = MEMORY[0x1E69E7CC0];
    v537 = sub_1CF009068(MEMORY[0x1E69E7CC0]);
    v538, v539, v540, v541, v542, v543, v544, v545;
  }

  v546 = v593 == 1;
  *&v453[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_extendedAttributes] = v537;
  sub_1CF001614(v470, &v453[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_domain], type metadata accessor for LocalDomain);
  v453[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isFolder] = v546;
  v453[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isPackage] = v577;
  v453[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isRegularItem] = v568;
  sub_1CF009180();
  if (v547)
  {
    v548 = v579;
    v549 = v574;
    (*(v579 + 16))(v574, v495, v456);
    v550 = sub_1CF9E5928();
    v551 = [objc_opt_self() documentAttributesForFileAtURL_];

    (*(v548 + 8))(v549, v456);
    if (v551)
    {
      v625 = 0;
      v552 = [v551 dataRepresentationWithError_];
      v553 = v625;
      if (v552)
      {
        v554 = sub_1CF9E5B88();
        v556 = v555;
      }

      else
      {
        v557 = v553;
        v558 = sub_1CF9E57F8();

        swift_willThrow();
        v554 = 0;
        v556 = 0xF000000000000000;
      }

      v493 = v597;
    }

    else
    {
      v554 = 0;
      v556 = 0xF000000000000000;
    }

    v494 = v596;
  }

  else
  {
    v554 = 0;
    v556 = 0xF000000000000000;
  }

  sub_1CF000630(v586, type metadata accessor for LocalItemContext);
  sub_1CF000630(v595, type metadata accessor for LocalContainer);
  v559 = &v453[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_originatorInfo];
  *v559 = v554;
  v559[1] = v556;
  sub_1CF000630(v493, type metadata accessor for ItemMetadata);
  sub_1CF000630(v494, type metadata accessor for VFSItem);
  v608.receiver = v453;
  v608.super_class = ObjectType;
  v560 = objc_msgSendSuper2(&v608, sel_init);
  sub_1CEFCCC44(v602, &unk_1EC4BEC00, &unk_1CF9FCB60);
  sub_1CF000630(v470, type metadata accessor for LocalDomain);
  (*(v579 + 8))(v495, v456);
  return v560;
}

uint64_t type metadata accessor for FSDirectoryEnumerator(uint64_t a1)
{
  result = qword_1EDEA5808;
  if (!qword_1EDEA5808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CF00409C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a2;
  v136 = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5A58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1110, &qword_1CFA08100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v133 - v8);
  v10 = type metadata accessor for LocalContainer(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v133 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1CF9E5848())
  {
    sub_1CF0047A0(a1, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1CF7E2A3C(v9);
LABEL_24:
      v96 = type metadata accessor for LocalItemContext(0);
      return (*(*(v96 - 8) + 56))(v133, 1, 1, v96);
    }

    sub_1CF004DCC(v9, v13);
    v43 = sub_1CF9E5898();
    v44 = *v43->tree;
    v43, v45, v46, v47, v48, v49, v50, v51;
    sub_1CEFFBA1C(v6);
    v52 = sub_1CF9E5898();
    (*(v4 + 8))(v6, v3);
    v60 = *v52->tree;
    v61 = v60 == v44;
    if (v13[*(v10 + 32)])
    {
      v62 = v60 == v44 + 1;
      v63 = v60 - v44;
      if (v60 > v44)
      {
        v64 = v60 == v44 + 1;
        v65 = v52 + 16 * v44;
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v68 = v67 == 0x786F626E49 && v66 == 0xE500000000000000;
        if (v68 || (sub_1CF9E8048() & 1) != 0)
        {

          sub_1CF008240(v13, type metadata accessor for LocalContainer);
          v66, v76, v77, v78, v79, v80, v81, v82;
LABEL_23:
          v52, v83, v84, v85, v86, v87, v88, v89;
          goto LABEL_24;
        }

        v97 = v67 == 0x68736172542ELL && v66 == 0xE600000000000000;
        if (v97 || (sub_1CF9E8048() & 1) != 0)
        {
          v52, v69, v70, v71, v72, v73, v74, v75;
          v90 = v63 == 1;
          v93 = v63 == 2;
          v91 = v63 != 2;
          v92 = v63 > 2;
          v62 = v64;
          goto LABEL_21;
        }

        v98 = (v65 + 40);
        v99 = v63 + 1;
        v62 = v64;
        while (--v99)
        {
          v100 = v98 + 2;
          v101 = *v98;

          v102 = sub_1CF9E6AE8();
          v101, v103, v104, v105, v106, v107, v108, v109;
          v98 = v100;
          if (v102)
          {
            v52, v110, v111, v112, v113, v114, v115, v116;
            v90 = 0;
            v92 = 0;
            v93 = 0;
            v91 = 1;
            goto LABEL_21;
          }
        }

        LOBYTE(v134) = 0;
        sub_1CF9E5A18();
        v118 = v117;
        sub_1CF9E6978();
        v118, v119, v120, v121, v122, v123, v124, v125;
        LODWORD(v118) = fpfs_pkg_is_package_item();

        v91 = (v118 >= 0) & v134;
        v52, v126, v127, v128, v129, v130, v131, v132;
        v90 = 0;
LABEL_20:
        v92 = 0;
        v93 = 0;
LABEL_21:
        v94 = v133;
        sub_1CF004DCC(v13, v133);
        v95 = type metadata accessor for LocalItemContext(0);
        *(v94 + v95[5]) = v93;
        *(v94 + v95[6]) = v92;
        *(v94 + v95[7]) = v91;
        *(v94 + v95[8]) = v61;
        *(v94 + v95[9]) = v90;
        *(v94 + v95[10]) = v62;
        return (*(*(v95 - 1) + 56))(v94, 0, 1, v95);
      }
    }

    else
    {
      if (v60 != v44)
      {
        sub_1CF008240(v13, type metadata accessor for LocalContainer);
        goto LABEL_23;
      }

      v62 = 0;
      v61 = 1;
    }

    v52, v53, v54, v55, v56, v57, v58, v59;
    v90 = 0;
    v91 = 0;
    goto LABEL_20;
  }

  v134 = 0;
  v135 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000033, 0x80000001CFA5B3D0);
  v14 = sub_1CF9E5928();
  v15 = [v14 fp_shortDescription];

  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;

  MEMORY[0x1D3868CC0](v16, v18);
  v18, v19, v20, v21, v22, v23, v24, v25;
  v26 = v134;
  v27 = v135;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v28 = qword_1EDEBB5A0;
  v29 = sub_1CF9E72A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1CF9FA450;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1CEFD51C4();
  *(v30 + 32) = v26;
  *(v30 + 40) = v27;
  sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v28, v29, v30);
  v30, v31, v32, v33, v34, v35, v36, v37;
  v38 = type metadata accessor for LocalItemContext(0);
  v39 = *(*(v38 - 8) + 56);
  v40 = v38;
  v41 = v133;

  return v39(v41, 1, 1, v40);
}

uint64_t sub_1CF0047A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1CF9E5848() & 1) == 0)
  {
LABEL_8:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 236);
  }

  sub_1CEFFBA1C(v10);
  v11 = sub_1CF9E5A18();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  sub_1CF9E5A18();
  v15 = v14;
  v16 = sub_1CF9E6AE8();
  v15, v17, v18, v19, v20, v21, v22, v23;
  if (v16)
  {
    v13, v24, v25, v26, v27, v28, v29, v30;
    sub_1CF004C30(a1, v6);
    sub_1CF000318(v6, a2);
    v31 = type metadata accessor for LocalContainer(0);
    return (*(*(v31 - 8) + 56))(a2, 0, 1, v31);
  }

  v33 = type metadata accessor for LocalContainer(0);
  (*(*(v33 - 8) + 56))(a2, 1, 1, v33);
  v34 = type metadata accessor for LocalContainerMonitor(0);
  v35 = v34;
  if (qword_1EDEA56B8 != -1)
  {
    v34 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v34);
  *(&v50 - 2) = v35;
  *(&v50 - 1) = a1;
  v36 = sub_1CF9E7398();
  v37 = aBlock[0];
  MEMORY[0x1EEE9AC00](v36);
  *(&v50 - 4) = v11;
  *(&v50 - 3) = v13;
  *(&v50 - 2) = a2;
  *(&v50 - 1) = a1;
  v38 = *&v37[OBJC_IVAR____TtC18FileProviderDaemon21LocalContainerMonitor_queue];
  v39 = swift_allocObject();
  v39[2] = v37;
  v39[3] = sub_1CF326300;
  v39[4] = &v50 - 6;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1CF32630C;
  *(v40 + 24) = v39;
  aBlock[4] = sub_1CEFFD054;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFFD02C;
  aBlock[3] = &block_descriptor_9_2;
  v41 = _Block_copy(aBlock);
  v42 = v37;

  dispatch_sync(v38, v41);
  _Block_release(v41);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  v13, v43, v44, v45, v46, v47, v48, v49;

  if (v38)
  {
    __break(1u);
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_1CF004BF4()
{

  return swift_deallocObject();
}

uint64_t sub_1CF004C30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalDomain(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1CF004CA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for LocalDomain(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1CF9E5A58();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1CF004DCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF004E44(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocalDomain(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1CF9E5A58();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1CF004F7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocalContainer(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1CF005048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalContainer(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1CF005114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1CF00517C(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v128 = a3;
  v7 = sub_1CF9E53C8();
  v126 = *(v7 - 8);
  v127 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v125 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v121 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v121 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v121 - v19;
  v21 = type metadata accessor for VFSItem(0);
  v130 = *(v21 - 8);
  v22 = *(v130 + 48);
  if (v22(a1, 1, v21) != 1)
  {
    sub_1CEFCCBDC(a1, v14, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if (v22(v14, 1, v21) != 1)
    {
      sub_1CF005114(v14, a4, type metadata accessor for VFSItem);
      (*(v130 + 56))(a4, 0, 1, v21);
      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  v129 = v21;
  v23 = sub_1CF9E5928();
  v24 = [v23 fp_checkSandboxFileMetadataRead];

  if (v24)
  {
    v25 = a2;
    v124 = a4;
    v26 = sub_1CF0012A0();
    v27 = *(v130 + 56);
    v130 += 56;
    v122 = v27;
    v28 = (v27)(v20, 1, 1, v129);
    v123 = &v121;
    v131 = 0;
    MEMORY[0x1EEE9AC00](v28);
    *(&v121 - 6) = v25;
    *(&v121 - 5) = &v131;
    *(&v121 - 32) = v26 & 1;
    v29 = v128;
    *(&v121 - 3) = v20;
    *(&v121 - 2) = v29;
    v30 = sub_1CF9E5848();
    if ((v30 & 1) == 0)
    {
      goto LABEL_27;
    }

    MEMORY[0x1EEE9AC00](v30);
    *(&v121 - 2) = sub_1CF006540;
    *(&v121 - 1) = (&v121 - 8);
    sub_1CF9E59B8();
    v33 = v131;
    if (v131)
    {
      swift_willThrow();
      v34 = v33;
      v35 = v124;

      sub_1CEFCCC44(v20, &unk_1EC4BEC00, &unk_1CF9FCB60);
      v133 = v33;
      v36 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
      v37 = v127;
      if (swift_dynamicCast())
      {

        (*(v126 + 32))(v125, v11, v37);
        v131 = 0;
        v132 = 0xE000000000000000;
        sub_1CF9E7948();
        v132, v38, v39, v40, v41, v42, v43, v44;
        v131 = 0xD000000000000019;
        v132 = 0x80000001CFA50D50;
        v45 = sub_1CF9E5A18();
        v47 = v46;
        MEMORY[0x1D3868CC0](v45);
        v47, v48, v49, v50, v51, v52, v53, v54;
        v56 = v131;
        v55 = v132;
        v57 = sub_1CF008708(&unk_1F4BED6B8);
        sub_1CF00BC08(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
        sub_1CF9E57A8();
        v58 = sub_1CF9E6148();
        v59 = sub_1CF008830(v58, v57);
        v57, v60, v61, v62, v63, v64, v65, v66;
        if (v59)
        {
          v67 = v122;
          if (qword_1EDEA3408 != -1)
          {
            swift_once();
          }

          v68 = qword_1EDEBB5A0;
          v69 = sub_1CF9E7298();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v70 = swift_allocObject();
          *(v70 + 16) = xmmword_1CF9FA440;
          *(v70 + 56) = MEMORY[0x1E69E6158];
          *(v70 + 64) = sub_1CEFD51C4();
          *(v70 + 32) = v56;
          *(v70 + 40) = v55;
          v71 = v125;
          sub_1CF9E57A8();
          v72 = sub_1CF9E6148();
          v73 = MEMORY[0x1E69E7358];
          *(v70 + 96) = MEMORY[0x1E69E72F0];
          *(v70 + 104) = v73;
          *(v70 + 72) = v72;
          sub_1CF9E6018("[DEBUG] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v68, v69, v70);
        }

        else
        {
          v67 = v122;
          if (qword_1EDEA3408 != -1)
          {
            swift_once();
          }

          v114 = qword_1EDEBB5A0;
          v115 = sub_1CF9E72A8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
          v70 = swift_allocObject();
          *(v70 + 16) = xmmword_1CF9FA440;
          *(v70 + 56) = MEMORY[0x1E69E6158];
          *(v70 + 64) = sub_1CEFD51C4();
          *(v70 + 32) = v56;
          *(v70 + 40) = v55;
          v71 = v125;
          sub_1CF9E57A8();
          v116 = sub_1CF9E6148();
          v117 = MEMORY[0x1E69E7358];
          *(v70 + 96) = MEMORY[0x1E69E72F0];
          *(v70 + 104) = v117;
          *(v70 + 72) = v116;
          sub_1CF9E6018("[ERROR] %@ %{errno}d", 20, 2, &dword_1CEFC7000, v114, v115, v70);
        }

        v70, v74, v75, v76, v77, v78, v79, v80;
        (*(v126 + 8))(v71, v37);
        v67(v35, 1, 1, v129);
      }

      else
      {

        v131 = 0;
        v132 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0xD000000000000016, 0x80000001CFA50D30);
        sub_1CF9E5A18();
        v82 = v81;
        v83 = sub_1CF9E6888();
        v82, v84, v85, v86, v87, v88, v89, v90;
        v91 = [v83 fp_prettyPath];

        v92 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v94 = v93;

        MEMORY[0x1D3868CC0](v92, v94);
        v94, v95, v96, v97, v98, v99, v100, v101;
        MEMORY[0x1D3868CC0](0x2064656C69616620, 0xED00002068746977);
        v133 = v33;
        sub_1CF9E7B58();
        v102 = v131;
        v103 = v132;
        if (qword_1EDEA3408 != -1)
        {
          swift_once();
        }

        v104 = qword_1EDEBB5A0;
        v105 = sub_1CF9E72A8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
        v106 = swift_allocObject();
        *(v106 + 16) = xmmword_1CF9FA450;
        *(v106 + 56) = MEMORY[0x1E69E6158];
        *(v106 + 64) = sub_1CEFD51C4();
        *(v106 + 32) = v102;
        *(v106 + 40) = v103;
        sub_1CF9E6018("[ERROR] %@", 10, 2, &dword_1CEFC7000, v104, v105, v106);
        v106, v107, v108, v109, v110, v111, v112, v113;

        v122(v35, 1, 1, v129);
      }

      return;
    }

    sub_1CEFCCBDC(v20, v17, &unk_1EC4BEC00, &unk_1CF9FCB60);
    v118 = v129;
    v119 = v22(v17, 1, v129);
    v120 = v124;
    if (v119 != 1)
    {
      sub_1CF005114(v17, v124, type metadata accessor for VFSItem);
      v122(v120, 0, 1, v118);
      sub_1CEFCCC44(v20, &unk_1EC4BEC00, &unk_1CF9FCB60);
      return;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/extension/URL+LocalStorageAdditions.swift", 121, 2, 24);
  }

  v31 = v129;
  v32 = *(v130 + 56);

  v32(a4, 1, 1, v31);
}

uint64_t sub_1CF005BA8@<X0>(unint64_t a1@<X3>, _DWORD *a2@<X8>)
{
  result = sub_1CEFE1894(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1CF005C0C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v10[4] = sub_1CF005DC8;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1CF005DF8;
  v10[3] = &block_descriptor_47;
  v8 = _Block_copy(v10);

  LODWORD(a2) = fpfs_open();
  _Block_release(v8);
  *a4 = a2;
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF005F04(unsigned int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v32 = a6;
  v34 = a5;
  v33 = a4;
  v35 = a1;
  v40 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for LocalDomain(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = sub_1CF9E5A58();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CF006550();
  v30 = v9;
  v31 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15)
  {
    MEMORY[0x1EEE9AC00](v15);
    *(&v29 - 4) = v35;
    sub_1CEFE1894(sub_1CF4F6080);
  }

  v16 = *(MEMORY[0x1E6967578] + 16);
  v17 = *(MEMORY[0x1E6967578] + 17);
  v18 = *(MEMORY[0x1E6967578] + 18);
  aBlock[7] = *MEMORY[0x1E6967578];
  aBlock[8] = *(MEMORY[0x1E6967578] + 8);
  v37 = v16;
  v38 = v17;
  v39 = v18;
  (*(v12 + 16))(&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v11);
  sub_1CF001614(v32, v31, type metadata accessor for LocalDomain);
  v19 = (*(v12 + 80) + 17) & ~*(v12 + 80);
  v20 = (v13 + v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v32 = a3;
  v21 = (v20 + 11) & 0xFFFFFFFFFFFFFFF8;
  v22 = v35;
  v23 = (*(v30 + 80) + v21 + 8) & ~*(v30 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v33 & 1;
  (*(v12 + 32))(v24 + v19, v14, v11);
  *(v24 + v20) = v22;
  *(v24 + v21) = v34;
  sub_1CF005114(v31, v24 + v23, type metadata accessor for LocalDomain);
  *(v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1CF0066EC;
  *(v25 + 24) = v24;
  aBlock[4] = sub_1CEFDB240;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEFDB270;
  aBlock[3] = &block_descriptor_22;
  v26 = _Block_copy(aBlock);

  v27 = fpfs_fgetfileattrs();
  _Block_release(v26);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
  }

  return v27;
}

uint64_t sub_1CF006318()
{
  v1 = sub_1CF9E5A58();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 17) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8;
  v5 = (type metadata accessor for LocalDomain(0) - 8);
  v6 = (v4 + *(*v5 + 80) + 8) & ~*(*v5 + 80);
  v7 = *(v2 + 8);
  v7(v0 + v3, v1);
  *(v0 + v6 + 24), v8, v9, v10, v11, v12, v13, v14;
  *(v0 + v6 + 40), v15, v16, v17, v18, v19, v20, v21;
  v7(v0 + v6 + v5[10], v1);

  return swift_deallocObject();
}

uint64_t sub_1CF0065A8(uint64_t *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1CF9E5928();
  v3 = *a1;
  v10 = 0;
  v11[0] = 0;
  v4 = [v2 getResourceValue:v11 forKey:v3 error:&v10];
  v5 = v11[0];
  v6 = v10;
  if (!v4)
  {
    v8 = v6;
    swift_unknownObjectRetain();
    sub_1CF9E57F8();

    swift_willThrow();
    swift_unknownObjectRelease();

    return v8 & 1;
  }

  if (!v5)
  {

LABEL_8:
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  swift_unknownObjectRetain_n();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {

    swift_unknownObjectRelease_n();
    goto LABEL_8;
  }

  LOBYTE(v8) = [v7 BOOLValue];
  swift_unknownObjectRelease_n();

  return v8 & 1;
}

uint64_t sub_1CF0066EC(uint64_t *a1)
{
  v3 = *(sub_1CF9E5A58() - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  type metadata accessor for LocalDomain(0);
  v6 = *(v1 + v5);
  v7 = *(v1 + 16);
  v8 = *(v1 + ((v5 + 11) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CF006814(a1, v7, v1 + v4, v6, v8);
}

uint64_t sub_1CF006814(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC00, &unk_1CF9FCB60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v67 - v9;
  if ((a2 & 1) == 0 || (sub_1CF9E5A18(), v12 = v11, v13 = sub_1CF9E6888(), v12, v14, v15, v16, v17, v18, v19, v20, LODWORD(v12) = [v13 fpfs:*(a1 + 10) == 1 isSafeSaveTempFile:?], v13, !v12))
  {
    if (*(a1 + 4))
    {
LABEL_7:
      v61 = sub_1CF9E5A18();
      v63 = v62;
      v64 = sub_1CEFFEB98();
      sub_1CF006B90(a1, v61, v63, v64, v10);
      v65 = type metadata accessor for VFSItem(0);
      (*(*(v65 - 8) + 56))(v10, 0, 1, v65);
      sub_1CEFDA9E0(v10, a5, &unk_1EC4BEC00, &unk_1CF9FCB60);
      return 0;
    }

    v70[0] = 0;
    if (fpfs_should_be_tracked())
    {
      return 0xFFFFFFFFLL;
    }

    v66 = 0;
    LODWORD(v68) = 0;
    if (v70[0] == 1)
    {
      if (fpfs_track_document())
      {
        return 0xFFFFFFFFLL;
      }

      v66 = v68;
    }

    *(a1 + 4) = v66;
    goto LABEL_7;
  }

  v68 = 0;
  v69 = 0xE000000000000000;
  sub_1CF9E7948();
  v69, v21, v22, v23, v24, v25, v26, v27;
  v68 = 0xD000000000000011;
  v69 = 0x80000001CFA50D70;
  v28 = sub_1CF9E5A18();
  v30 = v29;
  MEMORY[0x1D3868CC0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](0xD000000000000019, 0x80000001CFA50D90);
  v38 = fpfs_tempfile_pattern_t.description.getter(*(a1 + 65));
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  MEMORY[0x1D3868CC0](41, 0xE100000000000000);
  v48 = v68;
  v49 = v69;
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDEBB5A0;
  v51 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1CF9FA450;
  *(v52 + 56) = MEMORY[0x1E69E6158];
  *(v52 + 64) = sub_1CEFD51C4();
  *(v52 + 32) = v48;
  *(v52 + 40) = v49;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v50, v51, v52);
  v52, v53, v54, v55, v56, v57, v58, v59;
  MEMORY[0x1D3868400](2);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1CF006B90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _TtC18FileProviderDaemon8FSTester *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v330 = a4;
  v317 = a5;
  v318 = a3;
  v308 = a2;
  v313 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  v315 = *(v313 - 8);
  MEMORY[0x1EEE9AC00](v313);
  v314 = &v292 - v6;
  v7 = sub_1CF9E53C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v292 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE358, &qword_1CF9FD978);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v292 - v12;
  v14 = type metadata accessor for ItemMetadata(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v312 = &v292 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v316 = &v292 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v310 = (&v292 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v292 - v22;
  v24 = *(a1 + 27);
  v329[10] = *(a1 + 25);
  v329[11] = v24;
  v25 = *(a1 + 31);
  v329[12] = *(a1 + 29);
  v329[13] = v25;
  v26 = *(a1 + 19);
  v329[6] = *(a1 + 17);
  v329[7] = v26;
  v27 = *(a1 + 23);
  v329[8] = *(a1 + 21);
  v329[9] = v27;
  v28 = *(a1 + 11);
  v329[2] = *(a1 + 9);
  v329[3] = v28;
  v29 = *(a1 + 15);
  v329[4] = *(a1 + 13);
  v329[5] = v29;
  v30 = *(a1 + 7);
  v329[0] = *(a1 + 5);
  v329[1] = v30;
  sub_1CEFE2F88(v329, v13);
  v31 = *(v15 + 48);
  v311 = v14;
  if (v31(v13, 1, v14) == 1)
  {
    v318, v32, v33, v34, v35, v36, v37, v38;
    sub_1CEFCCC44(v13, &qword_1EC4BE358, &qword_1CF9FD978);
    LODWORD(v327[0]) = 45;
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF25529C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
    sub_1CF9E57D8();
    sub_1CF9E53A8();
    (*(v8 + 8))(v10, v7);
    swift_willThrow();
  }

  v40 = v318;
  sub_1CEFE4874(v13, v23);
  if (*v23 - 1 < 2)
  {
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_67;
    }

    v300 = 1;
    v304 = v48;
LABEL_8:
    v305 = v48;
    v293 = a1[1];
    v49 = *(a1 + 5);
    if (a1[3])
    {
      v50 = sub_1CF9E6A58();
      v52 = v51;
      *&v327[0] = v50;
      *(&v327[0] + 1) = v51;
      v319 = 58;
      v320 = 0xE100000000000000;
      v323 = 47;
      v324 = 0xE100000000000000;
      sub_1CEFE4E68();
      v53 = sub_1CF9E7668();
      v55 = v54;
      v52, v54, v56, v57, v58, v59, v60, v61;
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    0, v41, v42, v43, v44, v45, v46, v47;
    v62 = v310;
    sub_1CF0015AC(v23, v310, type metadata accessor for ItemMetadata);
    isa_low = LOBYTE(v62->super.isa);
    if (isa_low == 1)
    {
      v64 = 0;
      v65 = 0;
      v66 = 1;
    }

    else
    {
      v65 = 0;
      v64 = 0;
      v66 = 1;
      if (isa_low != 2 && !*(&v62->super.isa + v311[20]))
      {
        if (*(&v62->super.isa + v311[28]))
        {
          v64 = 0;
        }

        else
        {
          v66 = 0;
          v64 = *(&v62->super.isa + v311[26]);
        }

        v65 = v49;
      }
    }

    v301 = v65;
    v302 = v66;
    v303 = v64;
    sub_1CF007B38(v62, type metadata accessor for ItemMetadata);
    if (v55)
    {
      v299 = *(a1 + 4);
      *&v327[0] = v53;
      *(&v327[0] + 1) = v55;
      v306 = v55;
      v319 = 47;
      v320 = 0xE100000000000000;
      v323 = 58;
      v324 = 0xE100000000000000;
      sub_1CEFE4E68();
      v67 = sub_1CF9E7668();
      v310 = v68;
      v307 = v23;
      sub_1CF0015AC(v23, v316, type metadata accessor for ItemMetadata);
      v69 = v317;
      if ((a1[26] & 0x80000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v70 = *(a1 + 65);
        v297 = *(a1 + 52);
        v298 = v70;
        if (v40)
        {

          v71 = v314;
          sub_1CF9E58C8();
          swift_bridgeObjectRelease_n();
          v72 = 0;
        }

        else
        {
          v72 = 1;
          v71 = v314;
        }

        v73 = v315;
        v74 = sub_1CF9E5A58();
        (*(*(v74 - 8) + 56))(v71, v72, 1, v74);
        sub_1CEFE528C(v327);
        v296 = type metadata accessor for VFSItem(0);
        v75 = *(v296 + 48);
        v76 = *(v73 + 56);
        v315 = v73 + 56;
        v318 = v75;
        v295 = v76;
        v76(v75 + v69, 1, 1, v313);
        v77 = v310;
        v319 = v67;
        v320 = v310;
        v323 = 58;
        v324 = 0xE100000000000000;
        v325 = 47;
        v326 = 0xE100000000000000;
        v308 = sub_1CF9E7668();
        v79 = v78;
        v294 = v67;
        v319 = v67;
        v320 = v77;
        v323 = 58;
        v324 = 0xE100000000000000;
        v325 = 47;
        v326 = 0xE100000000000000;
        v319 = sub_1CF9E7668();
        v320 = v80;
        v81 = v309;
        sub_1CEFE52D8(0x70756B6F6F6CLL, 0xE600000000000000, &v319);
        if (v81)
        {
          v306, v82, v83, v84, v85, v86, v87, v88;

          v77, v89, v90, v91, v92, v93, v94, v95;
          v79, v96, v97, v98, v99, v100, v101, v102;
          v320, v103, v104, v105, v106, v107, v108, v109;
          sub_1CEFCCC44(v314, &unk_1EC4BE310, qword_1CF9FCBE0);
          sub_1CF007B38(v316, type metadata accessor for ItemMetadata);
          sub_1CF007B38(v307, type metadata accessor for ItemMetadata);
          return sub_1CEFCCC44(v318 + v317, &unk_1EC4BED30, &unk_1CFA00710);
        }

        v110 = v308;
        v309 = v79;
        v320, v82, v83, v84, v85, v86, v87, v88;
        sub_1CF0015AC(v316, v312, type metadata accessor for ItemMetadata);
        v118 = v330;
        if (v305 == *(v330 + 24))
        {
          v40 = v317;
          if (v304 != v305 || (v300 & 1) == 0)
          {
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSItem.swift", 119, 2, 290);
          }

          v67 = v110;
          *v317 = 0;
          LOBYTE(v8) = 2;
          v40->_anon_8[0] = 2;
          *v40->tree = 0;
          v119 = 24;
          goto LABEL_33;
        }

        swift_beginAccess();
        v121 = *(v118 + 96);
        v40 = v317;
        LOBYTE(v8) = v300;
        v67 = v110;
        if (*v121->tree)
        {
          v122 = sub_1CF7BF2C0(v304, v300);
          if (v111)
          {
            v123 = v122;

            v309, v124, v125, v126, v127, v128, v129, v130;
            v131 = *v121[1].tester + 32 * v123;
            v132 = *v131;
            LOBYTE(v123) = *(v131 + 8);
            v67 = *(v131 + 16);
            v309 = *(v131 + 24);

            v121, v133, v134, v135, v136, v137, v138, v139;
            v40->super.isa = v304;
            v40->_anon_8[0] = v8;
            v119 = 24;
            LOBYTE(v8) = v123;
            *v40->tree = v132;
LABEL_33:
            v140 = v311;
            goto LABEL_34;
          }
        }

        v184 = v293;
        if (*(v118 + 24) != v293)
        {
          v140 = v311;
          if ((*(v118 + 48) & 1) != 0 || *(v118 + 40) != v293)
          {
            v40->super.isa = v304;
            v40->_anon_8[0] = v8;
            LOBYTE(v8) = 1;
            v119 = 24;
            *v40->tree = v184;
          }

          else
          {
            v40->super.isa = v304;
            v40->_anon_8[0] = v8;
            *v40->tree = 1;
            LOBYTE(v8) = 2;
            v119 = 24;
          }

LABEL_34:
          *(&v40->super.isa + v119) = v8;
          v141 = v312 + v140[14];
          if (!*(v141 + 8))
          {
            v306, v111, v112, v113, v114, v115, v116, v117;
            v310, v176, v177, v178, v179, v180, v181, v182;
            sub_1CF007B38(v316, type metadata accessor for ItemMetadata);
            sub_1CF007B38(v307, type metadata accessor for ItemMetadata);
            v183 = v309;
LABEL_61:
            v272 = v299;
            v273 = v299 == 0;
            v274 = v317;
            *(v317 + 4) = v67;
            *(v274 + 5) = v183;
            v275 = v296;
            v276 = &v274[*(v296 + 36)];
            *v276 = v305;
            *(v276 + 2) = v301;
            *(v276 + 2) = v303;
            v276[24] = v302;
            v277 = v312;
            sub_1CF0015AC(v312, &v274[v275[7]], type metadata accessor for ItemMetadata);
            v278 = v318;
            sub_1CEFCCC44(v318 + v274, &unk_1EC4BED30, &unk_1CFA00710);
            sub_1CF007D78(v314, v278 + v274);
            v295(v278 + v274, 0, 1, v313);
            LODWORD(v278) = *(v330 + 16);

            *&v274[v275[13]] = v278;
            v279 = &v274[v275[14]];
            *v279 = v272;
            v279[4] = v273;
            v280 = &v274[v275[11]];
            *v280 = v297;
            v280[4] = 0;
            v281 = &v274[v275[8]];
            v282 = v327[13];
            v283 = v327[14];
            v284 = v327[11];
            *(v281 + 12) = v327[12];
            *(v281 + 13) = v282;
            *(v281 + 14) = v283;
            v285 = v327[9];
            v286 = v327[10];
            v287 = v327[7];
            *(v281 + 8) = v327[8];
            *(v281 + 9) = v285;
            *(v281 + 10) = v286;
            *(v281 + 11) = v284;
            v288 = v327[5];
            v289 = v327[6];
            v290 = v327[3];
            *(v281 + 4) = v327[4];
            *(v281 + 5) = v288;
            *(v281 + 30) = v328;
            *(v281 + 6) = v289;
            *(v281 + 7) = v287;
            v291 = v327[1];
            *v281 = v327[0];
            *(v281 + 1) = v291;
            *(v281 + 2) = v327[2];
            *(v281 + 3) = v290;
            *&v274[v275[10]] = v298;
            v120 = v277;
            return sub_1CF007B38(v120, type metadata accessor for ItemMetadata);
          }

          v308 = v67;
          v142 = v310;
          sub_1CF51B588(&v319);
          v143 = v319;
          v144 = v320;
          v145 = v322;
          v311 = v321;
          v142, v146, v147, v148, v149, v150, v151, v152;
          sub_1CF51B588(&v319);
          v159 = v320;
          v160 = v321;
          v161 = v322;
          if (v143 == v319 && v144 == v320)
          {
            v144, v153, v319, v154, v155, v156, v157, v158;
            v159, v162, v163, v164, v165, v166, v167, v168;
          }

          else
          {
            v186 = sub_1CF9E8048();
            v144, v187, v188, v189, v190, v191, v192, v193;
            v159, v194, v195, v196, v197, v198, v199, v200;
            if ((v186 & 1) == 0)
            {
              v306, v169, v170, v171, v172, v173, v174, v175;
              v161, v229, v230, v231, v232, v233, v234, v235;
              v145, v236, v237, v238, v239, v240, v241, v242;
              sub_1CF007B38(v316, type metadata accessor for ItemMetadata);
              sub_1CF007B38(v307, type metadata accessor for ItemMetadata);
              v67 = v308;
              v183 = v309;
              goto LABEL_60;
            }
          }

          v67 = v308;
          v183 = v309;
          if (v145)
          {
            if (v161)
            {
              if (v311 == v160 && v145 == v161)
              {
                v306, v169, v170, v171, v172, v173, v174, v175;
                v145, v201, v202, v203, v204, v205, v206, v207;
                v161, v208, v209, v210, v211, v212, v213, v214;
                sub_1CF007B38(v316, type metadata accessor for ItemMetadata);
                sub_1CF007B38(v307, type metadata accessor for ItemMetadata);
                goto LABEL_61;
              }

              v250 = sub_1CF9E8048();
              v306, v251, v252, v253, v254, v255, v256, v257;
              v145, v258, v259, v260, v261, v262, v263, v264;
              v161, v265, v266, v267, v268, v269, v270, v271;
              sub_1CF007B38(v316, type metadata accessor for ItemMetadata);
              sub_1CF007B38(v307, type metadata accessor for ItemMetadata);
              if (v250)
              {
                goto LABEL_61;
              }
            }

            else
            {
              v306, v169, v170, v171, v172, v173, v174, v175;
              v145, v243, v244, v245, v246, v247, v248, v249;
              sub_1CF007B38(v316, type metadata accessor for ItemMetadata);
              sub_1CF007B38(v307, type metadata accessor for ItemMetadata);
            }
          }

          else
          {
            v306, v169, v170, v171, v172, v173, v174, v175;
            sub_1CF007B38(v316, type metadata accessor for ItemMetadata);
            sub_1CF007B38(v307, type metadata accessor for ItemMetadata);
            if (!v161)
            {
              goto LABEL_61;
            }

            v161, v215, v216, v217, v218, v219, v220, v221;
          }

LABEL_60:
          *(v141 + 8), v222, v223, v224, v225, v226, v227, v228;
          *v141 = 0;
          *(v141 + 8) = 0;
          goto LABEL_61;
        }

        v140 = v311;
        if (qword_1EDEAEE10 == -1)
        {
LABEL_41:
          v113 = *(&xmmword_1EDEBBE48 + 1);
          v112 = xmmword_1EDEBBE48;
          v111 = v310;
          if (__PAIR128__(v310, v294) == xmmword_1EDEBBE48 || (v185 = sub_1CF9E8048(), v140 = v311, (v185 & 1) != 0))
          {
            v40->super.isa = 1;
            LOBYTE(v8) = 2;
            v40->_anon_8[0] = 2;
            *v40->tree = 1;
            v119 = 24;
          }

          else
          {
            *v40->tree = 0;
            v40->tester[0] = 2;
            v40->super.isa = v304;
            v119 = 8;
          }

          goto LABEL_34;
        }
      }

      swift_once();
      v140 = v311;
      goto LABEL_41;
    }

    __break(1u);
LABEL_67:
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/tree/VFSItem.swift", 119, 2, 359);
  }

  if (*(a1 + 4))
  {
    v304 = *(a1 + 4);
    v300 = 0;
    v48 = *a1;
    goto LABEL_8;
  }

  v40, v41, v42, v43, v44, v45, v46, v47;
  LODWORD(v327[0]) = 22;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF25529C(&qword_1EDEAECF0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
  sub_1CF9E57D8();
  sub_1CF9E53A8();
  (*(v8 + 8))(v10, v7);
  swift_willThrow();

  v120 = v23;
  return sub_1CF007B38(v120, type metadata accessor for ItemMetadata);
}

uint64_t sub_1CF007B38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF007B98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF007BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF007C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF007CB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF007D18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF007D78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF007DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1CF9E5648();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CF9E5A58();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4700, &qword_1CFA00810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  v13 = *MEMORY[0x1E695DAA0];
  *(inited + 32) = *MEMORY[0x1E695DAA0];
  v14 = v13;
  sub_1CEFF8A84(inited);
  v16 = v15;
  swift_setDeallocating();
  sub_1CF008240(inited + 32, type metadata accessor for URLResourceKey);
  sub_1CF9E58A8();
  v16, v17, v18, v19, v20, v21, v22, v23;
  if (v2)
  {

    v24 = sub_1CF9E5FF8();
    (*(*(v24 - 8) + 56))(v29, 1, 1, v24);
  }

  else
  {
    sub_1CF9E55E8();
    (*(v27 + 8))(v6, v28);
  }

  sub_1CF9E5998();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1CF008180(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF0081E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CF008240(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unsigned int *sub_1CF0082A0(unsigned int *result, uint64_t *a2)
{
  if (!*(result + 8))
  {
    v2 = result;
    v3 = *result;
    if (*result)
    {
      v5 = type metadata accessor for VFSItem(0);
      v6 = v2 + *(v5 + 36);
      v7 = *v6;
      v8 = (v2 + *(v5 + 56));
      v9 = *v8;
      v10 = *(v8 + 4);
      v11 = *(v6 + 2);
      result = swift_bridgeObjectRelease_n();
      if ((v10 & 1) == 0)
      {
        if (v9)
        {
          if (qword_1EC4BCD10 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          os_unfair_lock_lock(&dword_1EC4BF380);
          swift_endAccess();
          0, v12, v13, v14, v15, v16, v17, v18;
          v20 = *(v2 + 4);
          v19 = *(v2 + 5);

          0, v21, v22, v23, v24, v25, v26, v27;
          v28 = *(v2 + 2);
          v29 = *(v2 + 24);
          if (v29 != 1)
          {
            if (v29 == 2 && !v28)
            {
              v28 = *a2;
            }

            else
            {
              v28 = 0;
            }
          }

          v30 = qword_1EC4BF350;
          v31 = unk_1EC4BF358;
          v32 = v9 | (v11 << 32);
          v33 = qword_1EC4BF360;
          v34 = qword_1EC4BF368;
          v35 = qword_1EC4BF370;
          v36 = qword_1EC4BF378;
          qword_1EC4BF350 = v3;
          unk_1EC4BF358 = v7;
          qword_1EC4BF360 = v28;
          qword_1EC4BF368 = v32;
          qword_1EC4BF370 = v20;
          qword_1EC4BF378 = v19;

          sub_1CF3260EC(v30, v31, v33, v34, v35, v36, v37, v38);
          v19, v39, v40, v41, v42, v43, v44, v45;
          swift_beginAccess();
          os_unfair_lock_unlock(&dword_1EC4BF380);
          return swift_endAccess();
        }
      }
    }
  }

  return result;
}

void sub_1CF00856C(const char *a1@<X0>, int a2@<W1>, BOOL *a3@<X8>)
{
  v6 = sub_1CF9E53C8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF008708(&unk_1F4BEF378);
  v18 = access(a1, a2);
  if ((v18 & 0x80000000) == 0 || !MEMORY[0x1D38683F0]())
  {
    v10, v11, v12, v13, v14, v15, v16, v17;
LABEL_3:
    *a3 = v18 == 0;
    return;
  }

  v19 = MEMORY[0x1D38683F0]();
  v20 = sub_1CF008830(v19, v10);
  v10, v21, v22, v23, v24, v25, v26, v27;
  if (v20)
  {
    goto LABEL_3;
  }

  MEMORY[0x1D38683F0]();
  v28 = sub_1CF9E6138();
  if ((v28 & 0x100000000) != 0)
  {
    v29 = 22;
  }

  else
  {
    v29 = v28;
  }

  v30[3] = v29;
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF198A44();
  sub_1CF9E57D8();
  sub_1CF9E53A8();
  (*(v7 + 8))(v9, v6);
  swift_willThrow();
}

unint64_t sub_1CF008708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2770, &qword_1CFA12988);
    v3 = sub_1CF9E7908();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x1D386A440](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

BOOL sub_1CF008830(unsigned int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = MEMORY[0x1D386A440](*(a2 + 40), a1, 4);
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

id sub_1CF0088DC()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1CF9E6888();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1CF9E6888();
  v4 = [v2 BOOLForKey_];

  return v4;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF0089A8()
{
  v64 = sub_1CF9E6938();
  v1 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + *(type metadata accessor for ItemMetadata(0) + 132));
  if (!v4)
  {
    return sub_1CF008E44(MEMORY[0x1E69E7CC0]);
  }

  if (!*(v4 + 16))
  {
    return sub_1CF008E44(MEMORY[0x1E69E7CC0]);
  }

  v5 = sub_1CEFE4328(0xD000000000000015, 0x80000001CFA3F550);
  if ((v6 & 1) == 0)
  {
    return sub_1CF008E44(MEMORY[0x1E69E7CC0]);
  }

  v7 = (*(v4 + 56) + 16 * v5);
  v8 = *v7;
  v9 = v7[1];
  sub_1CF9E5408();
  swift_allocObject();
  sub_1CEFE42D4(v8, v9);
  sub_1CF9E53F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF630, &unk_1CF9FEEC0);
  sub_1CF1E1118();
  sub_1CF9E53E8();

  v56 = v9;
  v57 = v8;
  result = v66;
  v61 = *(v66 + 16);
  if (!v61)
  {
    v17 = MEMORY[0x1E69E7CC8];
LABEL_15:
    result, v10, v11, v12, v13, v14, v15, v16;
    sub_1CEFE4714(v57, v56);
    return v17;
  }

  v19 = 0;
  v20 = (v66 + 32);
  v21 = (v1 + 8);
  v17 = MEMORY[0x1E69E7CC8];
  v60 = v3;
  v59 = v66;
  v58 = (v1 + 8);
  while (v19 < *result->tree)
  {
    v63 = v17;
    v22 = *v20;
    v23 = v20[1];
    v24 = v20[3];
    *&v67[16] = v20[2];
    v68 = v24;
    v66 = v22;
    *v67 = v23;
    v65[4] = *v20;
    sub_1CEFCCBDC(&v66, v65, &unk_1EC4BF250, &unk_1CFA01B50);
    FPItemVersionData.description.getter();
    v26 = v25;
    sub_1CF9E6928();
    v27 = sub_1CF9E68C8();
    v29 = v28;
    v26, v28, v30, v31, v32, v33, v34, v35;
    v36 = *v21;
    result = (*v21)(v3, v64);
    if (v29 >> 60 == 15)
    {
      goto LABEL_17;
    }

    v65[0] = *&v67[8];
    FPItemVersionData.description.getter();
    v38 = v37;
    sub_1CF9E6918();
    v39 = v3;
    v40 = sub_1CF9E68C8();
    v42 = v41;
    v38, v41, v43, v44, v45, v46, v47, v48;
    result = v36(v39, v64);
    if (v42 >> 60 == 15)
    {
      goto LABEL_18;
    }

    v49 = objc_allocWithZone(MEMORY[0x1E69674E8]);
    sub_1CEFF05F4(v27, v29);
    sub_1CEFF05F4(v40, v42);
    v50 = sub_1CF9E5B48();
    v51 = sub_1CF9E5B48();
    v62 = [v49 initWithContentVersion:v50 metadataVersion:v51];

    sub_1CEFE48D8(v40, v42);
    sub_1CEFE48D8(v27, v29);
    sub_1CEFCCBDC(&v66, v65, &unk_1EC4BF250, &unk_1CFA01B50);
    v52 = v63;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v65[0] = v52;
    v54 = v62;
    sub_1CF1D2448(&v66, v62, isUniquelyReferenced_nonNull_native);
    ++v19;
    sub_1CEFCCC44(&v66, &unk_1EC4BF250, &unk_1CFA01B50);
    sub_1CEFE48D8(v40, v42);
    sub_1CEFE48D8(v27, v29);

    v17 = *&v65[0];
    v20 += 4;
    v3 = v60;
    result = v59;
    v21 = v58;
    if (v61 == v19)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_1CF008E44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B38, &qword_1CFA079D0);
  v3 = sub_1CF9E7BE8();

  v4 = *(a1 + 48);
  *v22 = *(a1 + 32);
  *&v22[16] = v4;
  v5 = *(a1 + 80);
  *&v22[32] = *(a1 + 64);
  *&v22[48] = v5;
  *&v22[64] = *(a1 + 96);
  v6 = *v22;
  sub_1CEFCCBDC(v22, v21, &qword_1EC4C0B40, &qword_1CFA079D8);
  result = sub_1CF7BF928(v6);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = a1 + 104;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v6;
    v10 = (v3[7] + (result << 6));
    v11 = *&v22[8];
    v12 = *&v22[24];
    v13 = *&v22[56];
    v10[2] = *&v22[40];
    v10[3] = v13;
    *v10 = v11;
    v10[1] = v12;
    v14 = v3[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      break;
    }

    v3[2] = v16;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v17 = v9 + 72;
    v18 = *(v9 + 16);
    *v22 = *v9;
    *&v22[16] = v18;
    v19 = *(v9 + 48);
    *&v22[32] = *(v9 + 32);
    *&v22[48] = v19;
    *&v22[64] = *(v9 + 64);
    v6 = *v22;
    sub_1CEFCCBDC(v22, v21, &qword_1EC4C0B40, &qword_1CFA079D8);
    result = sub_1CF7BF928(v6);
    v9 = v17;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CF008FD8(_TtC18FileProviderDaemon8FSTester *a1, const char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v8 = a1;
  v9 = *a1->tree;
  if (!v9)
  {
    goto LABEL_4;
  }

  v10 = sub_1CF1FDB18();
  v8 = sub_1CF1FDA94();
  sub_1CEFCB59C(v12);
  if (v8 != v9)
  {
    __break(1u);
LABEL_4:
    v8, a2, a3, a4, a5, a6, a7, a8;
    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}

unint64_t sub_1CF009068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B30, &qword_1CFA084C0);
    v3 = sub_1CF9E7BE8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_1CEFE42D4(v7, v8);
      result = sub_1CEFE4328(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void sub_1CF009180()
{
  v1 = *(v0 + *(type metadata accessor for ItemMetadata(0) + 132));
  if (v1 && *(v1 + 16))
  {
    v2 = 1 << *(v1 + 32);
    v3 = -1;
    if (v2 < 64)
    {
      v3 = ~(-1 << v2);
    }

    v4 = v3 & *(v1 + 64);
    v5 = (v2 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v6 = 0;
    while (v4)
    {
      v7 = v6;
LABEL_12:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = *(*(v1 + 48) + ((v7 << 10) | (16 * v8)) + 8);

      v10 = sub_1CF9E6AE8();
      v9, v11, v12, v13, v14, v15, v16, v17;
      if (v10)
      {
LABEL_15:

        v1, v18, v19, v20, v21, v22, v23, v24;
        return;
      }
    }

    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= v5)
      {
        goto LABEL_15;
      }

      v4 = *(v1 + 64 + 8 * v7);
      ++v6;
      if (v4)
      {
        v6 = v7;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1CF009330()
{
  v1 = v0;
  v115 = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v109 - v3;
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v113 = 0;
  v114 = 0xE000000000000000;
  if (v0[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_isTrashed] == 1)
  {
    MEMORY[0x1D3868CC0](0x6465687361727420, 0xE800000000000000);
  }

  sub_1CEFCCBDC(&v0[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_lastUsedDate], v4, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CEFCCC44(v4, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    goto LABEL_9;
  }

  (*(v6 + 32))(v8, v4, v5);
  v110 = 0x3A64756C20;
  v111 = 0xE500000000000000;
  sub_1CF9E5C98();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  if (v9 >= 9.22337204e18)
  {
    goto LABEL_14;
  }

  v112 = v9;
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = v111;
  MEMORY[0x1D3868CC0](v110, v111);
  v20, v21, v22, v23, v24, v25, v26, v27;
  (*(v6 + 8))(v8, v5);
LABEL_9:
  v28 = *&v0[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_favoriteRank];
  if (v28)
  {
    v110 = 0x7469726F76616620;
    v111 = 0xEA00000000003A65;
    v29 = v28;
    v112 = [v29 unsignedLongLongValue];
    v30 = sub_1CF9E7F98();
    v32 = v31;
    MEMORY[0x1D3868CC0](v30);
    v32, v33, v34, v35, v36, v37, v38, v39;
    v40 = v111;
    MEMORY[0x1D3868CC0](v110, v111);

    v40, v41, v42, v43, v44, v45, v46, v47;
  }

  v110 = 0;
  v111 = 0xE000000000000000;
  v112 = v0;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](60, 0xE100000000000000);
  v48 = sub_1CF9E82E8();
  v50 = v49;
  MEMORY[0x1D3868CC0](v48);
  v50, v51, v52, v53, v54, v55, v56, v57;
  MEMORY[0x1D3868CC0](58, 0xE100000000000000);
  v109[1] = &v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11B0, &qword_1CFA084D0);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](8736, 0xE200000000000000);
  v58 = sub_1CF9E6888();
  v59 = [v58 fp_obfuscatedFilename];

  v60 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v62 = v61;

  MEMORY[0x1D3868CC0](v60, v62);
  v62, v63, v64, v65, v66, v67, v68, v69;
  MEMORY[0x1D3868CC0](0x3A64692022, 0xE500000000000000);
  v70 = NSFileProviderItemIdentifier.description.getter(*&v1[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_itemIdentifier]);
  v72 = v71;
  MEMORY[0x1D3868CC0](v70);
  v72, v73, v74, v75, v76, v77, v78, v79;
  MEMORY[0x1D3868CC0](0x3A64697020, 0xE500000000000000);
  v80 = NSFileProviderItemIdentifier.description.getter(*&v1[OBJC_IVAR____TtC18FileProviderDaemon9LocalItem_parentItemIdentifier]);
  v82 = v81;
  MEMORY[0x1D3868CC0](v80);
  v82, v83, v84, v85, v86, v87, v88, v89;
  MEMORY[0x1D3868CC0](0x3A69747520, 0xE500000000000000);
  sub_1CF9E5FF8();
  sub_1CF00BC08(&qword_1EC4C11B8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8480]);
  v90 = sub_1CF9E7F98();
  v92 = v91;
  MEMORY[0x1D3868CC0](v90);
  v92, v93, v94, v95, v96, v97, v98, v99;
  v100 = v114;
  MEMORY[0x1D3868CC0](v113, v114);
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v100, v101, v102, v103, v104, v105, v106, v107;
  return v110;
}

void sub_1CF009B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1CF00A468(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_1CF00A5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1CF00A614(void *a1)
{
  sub_1CF9E7948();
  0xE000000000000000, v2, v3, v4, v5, v6, v7, v8;
  v49[0] = 0xD000000000000019;
  v49[1] = 0x80000001CFA3F800;
  v47 = a1;
  v9 = NSFileProviderItemIdentifier.description.getter(a1);
  v11 = v10;
  MEMORY[0x1D3868CC0](v9);
  v11, v12, v13, v14, v15, v16, v17, v18;
  v19 = sub_1CEFFCE80();
  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBB5A0;
  v21 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1CF9FA440;
  v50 = v19;
  sub_1CEFFD0A8();
  v23 = sub_1CF9E7718();
  v46 = v19;
  v25 = v24;
  v26 = MEMORY[0x1E69E6158];
  *(v22 + 56) = MEMORY[0x1E69E6158];
  v27 = sub_1CEFD51C4();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  *(v22 + 96) = v26;
  *(v22 + 104) = v27;
  *(v22 + 64) = v27;
  *(v22 + 72) = 0xD000000000000019;
  *(v22 + 80) = 0x80000001CFA3F800;
  sub_1CF9E6018("[DEBUG] ┏%@ %@", 16, 0, &dword_1CEFC7000, v20, v21, v22);
  v22, v28, v29, v30, v31, v32, v33, v34;
  sub_1CF00AADC(v47, v48, v49);
  v35 = sub_1CF9E7298();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1CF9FA450;
  v50 = v46;
  v37 = sub_1CF9E7718();
  *(v36 + 56) = MEMORY[0x1E69E6158];
  *(v36 + 64) = v27;
  *(v36 + 32) = v37;
  *(v36 + 40) = v38;
  sub_1CF9E6018("[DEBUG] ┗%@", 13, 0, &dword_1CEFC7000, v20, v35, v36);
  v36, v39, v40, v41, v42, v43, v44, v45;
}

void sub_1CF00AADC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v121 = a3;
  v122 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF5F8, &qword_1CFA01DB8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v117 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v117 - v8;
  v10 = sub_1CF9E5A58();
  v120 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v17;
  v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v20;
  if (v16 == v19 && v18 == v20)
  {
    goto LABEL_8;
  }

  v29 = sub_1CF9E8048();
  v18, v30, v31, v32, v33, v34, v35, v36;
  v27, v37, v38, v39, v40, v41, v42, v43;
  if (v29)
  {
    goto LABEL_9;
  }

  v44 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v45;
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v20;
  if (v44 == v21 && v18 == v20)
  {
    goto LABEL_8;
  }

  v59 = sub_1CF9E8048();
  v18, v60, v61, v62, v63, v64, v65, v66;
  v27, v67, v68, v69, v70, v71, v72, v73;
  if (v59)
  {
    goto LABEL_9;
  }

  v74 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v75;
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v20;
  if (v74 == v21 && v18 == v20)
  {
    goto LABEL_8;
  }

  v76 = sub_1CF9E8048();
  v18, v77, v78, v79, v80, v81, v82, v83;
  v27, v84, v85, v86, v87, v88, v89, v90;
  if (v76)
  {
    goto LABEL_9;
  }

  v91 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v18 = v92;
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v27 = v20;
  if (v91 == v21 && v18 == v20)
  {
LABEL_8:
    v18, v20, v21, v22, v23, v24, v25, v26;
    v27, v46, v47, v48, v49, v50, v51, v52;
    goto LABEL_9;
  }

  v93 = sub_1CF9E8048();
  v18, v94, v95, v96, v97, v98, v99, v100;
  v27, v101, v102, v103, v104, v105, v106, v107;
  if (v93)
  {
LABEL_9:
    sub_1CEFFD30C(v122 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain, v15, type metadata accessor for LocalDomain);
    v53 = objc_allocWithZone(type metadata accessor for LocalRootEnumerator(0));
    v54 = a1;
    v55 = sub_1CF00B20C(v54, v15);

    v56 = *&v55[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator];
    v57 = *&v56[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_notifier];
    if (v57)
    {
      *(*(v57 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader) + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = &off_1F4C06F90;
      swift_unknownObjectWeakAssign();
      v58 = v56;
      sub_1CF01C124();
    }

LABEL_11:
    *v121 = v55;
    return;
  }

  v108 = OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain;
  sub_1CEFFD89C((v122 + OBJC_IVAR____TtC18FileProviderDaemon17LocalFileProvider_localDomain), 1u, a1, v6);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF600, &unk_1CFA01DC0);
  if ((*(*(v109 - 8) + 48))(v6, 1, v109) == 1)
  {
    sub_1CEFCCC44(v6, &qword_1EC4BF5F8, &qword_1CFA01DB8);
    (*(v120 + 56))(v9, 1, 1, v10);
  }

  else
  {
    v119 = v108;
    v110 = *(v109 + 48);
    v111 = v120;
    v118 = *(v120 + 32);
    v118(v9, v6, v10);
    (*(v111 + 56))(v9, 0, 1, v10);
    v112 = &v6[v110];
    v113 = v111;
    sub_1CEFCCC44(v112, &unk_1EC4BEC00, &unk_1CF9FCB60);
    if ((*(v111 + 48))(v9, 1, v10) != 1)
    {
      v118(v12, v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF290, &unk_1CFA006C0);
      v114 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_1CF9FA450;
      (*(v113 + 16))(v115 + v114, v12, v10);
      sub_1CEFFD30C(v122 + v119, v15, type metadata accessor for LocalDomain);
      objc_allocWithZone(type metadata accessor for LocalFileEnumerator(0));
      v55 = sub_1CF00F410(a1, v115, v15);
      v116 = *&v55[OBJC_IVAR____TtC18FileProviderDaemon19LocalFileEnumerator_notifier];
      if (v116)
      {
        *(*(v116 + OBJC_IVAR____TtC18FileProviderDaemon17FSChangesNotifier_reader) + OBJC_IVAR____TtC18FileProviderDaemon13FSEventReader_delegate + 8) = &off_1F4C06F90;
        swift_unknownObjectWeakAssign();
        sub_1CF01C124();
      }

      (*(v113 + 8))(v12, v10);
      goto LABEL_11;
    }
  }

  sub_1CEFCCC44(v9, &unk_1EC4BE310, qword_1CF9FCBE0);
  if (FPItemNotFoundError())
  {
    swift_willThrow();
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for LocalRootEnumerator(uint64_t a1)
{
  result = qword_1EDEA5EB0;
  if (!qword_1EDEA5EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1CF00B20C(void *a1, _TtC18FileProviderDaemon8FSTester *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for LocalDomain(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v234 = &v231 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for LocalContainer(0);
  v239 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v242 = &v231 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = sub_1CF9E5A58();
  v244 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241);
  v240 = &v231 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v232 = &v231 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v233 = &v231 - v14;
  v15 = type metadata accessor for LocalContainerSnapshot(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v231 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v20 = v19;
  v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v29 = v22;
  v30 = v18 == v21 && v20 == v22;
  v235 = ObjectType;
  if (v30)
  {
    v20, v22, v23, v24, v25, v26, v27, v28;
    v29, v65, v66, v67, v68, v69, v70, v71;
  }

  else
  {
    v31 = sub_1CF9E8048();
    v20, v32, v33, v34, v35, v36, v37, v38;
    v29, v39, v40, v41, v42, v43, v44, v45;
    if ((v31 & 1) == 0)
    {
      v46 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v48 = v47;
      v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v56 = v46;
      v57 = v49;
      if (v56 == v50 && v48 == v49)
      {
        goto LABEL_8;
      }

      v199 = sub_1CF9E8048();
      v48, v200, v201, v202, v203, v204, v205, v206;
      v57, v207, v208, v209, v210, v211, v212, v213;
      if (v199)
      {
        goto LABEL_10;
      }

      v214 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v48 = v215;
      v50 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v57 = v49;
      if (v214 == v50 && v48 == v49)
      {
LABEL_8:
        v48, v49, v50, v51, v52, v53, v54, v55;
        v57, v58, v59, v60, v61, v62, v63, v64;
      }

      else
      {
        v216 = sub_1CF9E8048();
        v48, v217, v218, v219, v220, v221, v222, v223;
        v57, v224, v225, v226, v227, v228, v229, v230;
        if ((v216 & 1) == 0)
        {
          sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/os-plugins/LocalStorage/LocalRootEnumerator.swift", 105, 2, 21);
        }
      }
    }
  }

LABEL_10:
  *&v3[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_rootID] = a1;
  sub_1CF00BE10(a2, &v3[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_domain], type metadata accessor for LocalDomain);
  v72 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v74 = v73;
  v75 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v77 = v76;
  if (v72 == v75 && v74 == v76)
  {
    v78 = a1;
    v74, v79, v80, v81, v82, v83, v84, v85;
    v77, v86, v87, v88, v89, v90, v91, v92;
LABEL_14:
    sub_1CF00BF00(a2, v17);
    goto LABEL_18;
  }

  v93 = sub_1CF9E8048();
  v94 = a1;
  v74, v95, v96, v97, v98, v99, v100, v101;
  v77, v102, v103, v104, v105, v106, v107, v108;
  if (v93)
  {
    goto LABEL_14;
  }

  v109 = type metadata accessor for LocalContainerMonitor(0);
  v110 = v109;
  if (qword_1EDEA56B8 != -1)
  {
    v109 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v109);
  *(&v231 - 2) = v110;
  *(&v231 - 1) = a2;
  sub_1CF9E7398();
  v111 = v247;
  sub_1CEFFF6AC(v17);

LABEL_18:
  sub_1CF00F1D4(v17, &v3[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_containerSnapshot], type metadata accessor for LocalContainerSnapshot);
  v238 = v3;
  v112 = &v3[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_containerSnapshot];
  swift_beginAccess();
  v113 = *&v112[*(v15 + 32)];
  v114 = *v113->tree;
  v115 = MEMORY[0x1E69E7CC0];
  v236 = a1;
  v237 = a2;
  if (v114)
  {
    v246 = MEMORY[0x1E69E7CC0];

    sub_1CF000F0C(0, v114, 0);
    v116 = v246;
    v117 = *(v239 + 80);
    v231 = v113;
    v118 = v113 + ((v117 + 32) & ~v117);
    v119 = *(v239 + 72);
    v120 = (v244 + 16);
    v121 = v241;
    v122 = v233;
    do
    {
      v123 = v242;
      sub_1CF00BE10(v118, v242, type metadata accessor for LocalContainer);
      (*v120)(v122, v123 + *(v243 + 28), v121);
      sub_1CF00F2A4(v123, type metadata accessor for LocalContainer);
      v246 = v116;
      v125 = *v116->tree;
      v124 = *v116->tester;
      if (v125 >= v124 >> 1)
      {
        sub_1CF000F0C((v124 > 1), v125 + 1, 1);
        v121 = v241;
        v116 = v246;
      }

      *v116->tree = v125 + 1;
      (*(v244 + 32))(v116 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v125, v122, v121);
      v118 += v119;
      --v114;
    }

    while (v114);
    v231, v126, v127, v128, v129, v130, v131, v132;
    a1 = v236;
    a2 = v237;
    v115 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v116 = MEMORY[0x1E69E7CC0];
  }

  v133 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v135 = v134;
  v136 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v144 = v137;
  if (v133 == v136 && v135 == v137)
  {
    v135, v137, v138, v139, v140, v141, v142, v143;
    v144, v170, v171, v172, v173, v174, v175, v176;
    v168 = v238;
  }

  else
  {
    v146 = sub_1CF9E8048();
    v135, v147, v148, v149, v150, v151, v152, v153;
    v144, v154, v155, v156, v157, v158, v159, v160;
    v168 = v238;
    if ((v146 & 1) == 0)
    {
      v169 = v116;
      goto LABEL_39;
    }
  }

  v177 = *v116->tree;
  if (v177)
  {
    v246 = v115;
    sub_1CF000F0C(0, v177, 0);
    v169 = v246;
    v178 = *(v244 + 16);
    v242 = (*(v244 + 80) + 32) & ~*(v244 + 80);
    v243 = v178;
    v179 = v116 + v242;
    v239 = *(v244 + 72);
    v180 = (v244 + 8);
    v244 += 16;
    v181 = (v244 + 16);
    v182 = v241;
    v183 = v232;
    do
    {
      v184 = v240;
      (v243)(v240, v179, v182);
      sub_1CF9E5958();
      v182 = v241;
      (*v180)(v184, v241);
      v246 = v169;
      v186 = *(v169 + 16);
      v185 = *(v169 + 24);
      if (v186 >= v185 >> 1)
      {
        sub_1CF000F0C((v185 > 1), v186 + 1, 1);
        v182 = v241;
        v169 = v246;
      }

      *(v169 + 16) = v186 + 1;
      v187 = v239;
      (*v181)(v169 + v242 + v186 * v239, v183, v182);
      v179 += v187;
      --v177;
    }

    while (v177);
    v116, v188, v189, v190, v191, v192, v193, v194;
    a2 = v237;
    v168 = v238;
    a1 = v236;
  }

  else
  {
    v116, v161, v162, v163, v164, v165, v166, v167;
    v169 = MEMORY[0x1E69E7CC0];
  }

LABEL_39:
  v195 = v234;
  sub_1CF00BE10(a2, v234, type metadata accessor for LocalDomain);
  v196 = objc_allocWithZone(type metadata accessor for LocalFileEnumerator(0));
  *&v168[OBJC_IVAR____TtC18FileProviderDaemon19LocalRootEnumerator_fileEnumerator] = sub_1CF00F410(a1, v169, v195);
  v245.receiver = v168;
  v245.super_class = v235;
  v197 = objc_msgSendSuper2(&v245, sel_init);
  sub_1CF00F2A4(a2, type metadata accessor for LocalDomain);
  return v197;
}

uint64_t sub_1CF00BB30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00BB78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00BBC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00BC08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00BC50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00BC98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00BCE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00BD28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00BD70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00BDB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CF00BE10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF00BE78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1CF00BF00(uint64_t a1@<X0>, void *a2@<X8>)
{
  v97 = a2;
  v104 = *MEMORY[0x1E69E9840];
  v3 = sub_1CF9E5248();
  v93 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v88 - v7;
  v9 = sub_1CF9E5268();
  v99 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v88 - v15;
  v17 = sub_1CF9E5A58();
  v94 = *(v17 - 8);
  v95 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = a1;
  sub_1CF00C970(a1, v19);
  if (sub_1CF00CC24())
  {
    v20 = sub_1CF9E5A78();
    v22 = v21;
    v102 = 0;
    v103 = 0xE000000000000000;
    v23 = v20;
    sub_1CF9E7948();
    v103, v24, v25, v26, v27, v28, v29, v30;
    v102 = 0x2064616572;
    v103 = 0xE500000000000000;
    v92 = v23;
    v31 = sub_1CF9E5AB8();
    v33 = v32;
    MEMORY[0x1D3868CC0](v31);
    v33, v34, v35, v36, v37, v38, v39, v40;
    MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA50550);
    MEMORY[0x1D3868CC0](*(v96 + 32), *(v96 + 40));
    MEMORY[0x1D3868CC0](0x6E69616D6F642022, 0xE800000000000000);
    v89 = v103;
    v90 = v102;
    v91 = v22;
    if (qword_1EDEA3408 != -1)
    {
      swift_once();
    }

    v41 = qword_1EDEBB5A0;
    v42 = sub_1CF9E7298();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1CF9FA450;
    *(v43 + 56) = MEMORY[0x1E69E6158];
    *(v43 + 64) = sub_1CEFD51C4();
    v44 = v89;
    *(v43 + 32) = v90;
    *(v43 + 40) = v44;
    sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v41, v42, v43);
    v43, v45, v46, v47, v48, v49, v50, v51;
    sub_1CF9E5688();
    swift_allocObject();
    sub_1CF9E5678();
    type metadata accessor for LocalContainerSnapshot(0);
    sub_1CF00CC8C(&qword_1EDEA54F8, type metadata accessor for LocalContainerSnapshot, &unk_1CFA08088);
    v52 = v91;
    sub_1CF9E5668();
    v53 = v52;
    v54 = v92;
    (*(v94 + 8))(v19, v95);

    sub_1CEFE4714(v54, v53);
    return;
  }

  v55 = [objc_opt_self() defaultManager];
  v56 = sub_1CF9E5928();
  v102 = 0;
  v57 = [v55 removeItemAtURL:v56 error:&v102];

  if (v57)
  {
    v58 = v102;
  }

  else
  {
    v59 = v102;
    v60 = sub_1CF9E57F8();

    swift_willThrow();
  }

  sub_1CF9E5118();
  sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
  sub_1CF00CC8C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  sub_1CF9E57D8();
  v61 = sub_1CF9E50D8();
  (*(v99 + 8))(v16, v9);
  swift_willThrow();
  v102 = v61;
  v62 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  if (!swift_dynamicCast())
  {
LABEL_16:

    v102 = 0;
    v103 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000010, 0x80000001CFA50500);
    v78 = sub_1CF9E5A18();
    v80 = v79;
    MEMORY[0x1D3868CC0](v78);
    v80, v81, v82, v83, v84, v85, v86, v87;
    MEMORY[0x1D3868CC0](0x2064656C69616620, 0xED00002068746977);
    v101 = v61;
    sub_1CF9E7B58();
    sub_1CF9E7B68();
    __break(1u);
    return;
  }

  (*(v99 + 32))(v98, v13, v9);
  sub_1CF00CC8C(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
  sub_1CF9E57A8();
  sub_1CF9E5118();
  sub_1CF00CC8C(&unk_1EC4C1140, MEMORY[0x1E6967E70], MEMORY[0x1E6967E88]);
  sub_1CF9E6C28();
  sub_1CF9E6C28();
  v63 = *(v93 + 8);
  v63(v5, v3);
  v63(v8, v3);
  if (v101 != v100)
  {
    (*(v99 + 8))(v98, v9);
    goto LABEL_16;
  }

  if (qword_1EDEA3408 != -1)
  {
    swift_once();
  }

  v64 = qword_1EDEBB5A0;
  v65 = sub_1CF9E7298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1070, &qword_1CF9FF080);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1CF9FA450;
  *(v66 + 56) = MEMORY[0x1E69E6158];
  *(v66 + 64) = sub_1CEFD51C4();
  *(v66 + 32) = 0xD00000000000002BLL;
  *(v66 + 40) = 0x80000001CFA50520;
  sub_1CF9E6018("[DEBUG] %@", 10, 2, &dword_1CEFC7000, v64, v65, v66);
  v66, v67, v68, v69, v70, v71, v72, v73;
  v74 = type metadata accessor for LocalContainerMonitor(0);
  if (qword_1EDEA56B8 != -1)
  {
    v74 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v74);
  sub_1CF9E7398();
  v75 = v101;
  v76 = v97;
  sub_1CEFFF6AC(v97);

  v77 = type metadata accessor for LocalContainerSnapshot(0);
  *(v76 + *(v77 + 20)) = 1;
  *(v76 + *(v77 + 24)) = 1;
  sub_1CF4EC9F0();
  (*(v99 + 8))(v98, v9);
  (*(v94 + 8))(v19, v95);
}