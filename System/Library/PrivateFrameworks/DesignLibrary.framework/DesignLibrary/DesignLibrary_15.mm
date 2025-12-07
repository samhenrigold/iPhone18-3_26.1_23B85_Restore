uint64_t sub_18AFAE728(float *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + *(a3 + 64));
  v5 = 0x210000000000;
  if (*(v3 + 32) == 0xC000000000000038)
  {
    v5 = 0x220000000000;
  }

  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v11 = v5;
  v12 = WORD2(v5);
  sub_18AF5E044(v4, &v11, v13, v6, v7, v8, v9, 1.0);
  return sub_18AFCD574();
}

void (*sub_18AFAE7B0(uint64_t **a1))(void *a1)
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
  v2[4] = GlassMaterialProvider.Resolved.animatableData.modify(v2);
  return sub_18AEE786C;
}

uint64_t GlassMaterialProvider.ResolvedStyleProvider.resolveForegroundStyle(level:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for GlassMaterialProvider.ResolvedStyleProvider(0);

  return sub_18AFA94B4(a1, a2, a3);
}

uint64_t sub_18AFAE8C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v29 = a2;
  v3 = sub_18AFCBB34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = sub_18AFCC474();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDA44();
  v14 = sub_18AFCC414();
  v17 = *(v11 + 8);
  v15 = v11 + 8;
  v16 = v17;
  v17(v13, v10);
  if (__OFADD__(v30, v14))
  {
    __break(1u);
    goto LABEL_25;
  }

  v30 += v14;
  sub_18AFCDA44();
  sub_18AFCC204();
  v16(v13, v10);
  (*(v4 + 104))(v6, *MEMORY[0x1E697DBA8], v3);
  sub_18AE88AD4(&qword_1ED56AD68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
  v18 = sub_18AFCDDF4();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  if ((v30 & 0x8000000000000000) != 0)
  {
    if (v18)
    {
LABEL_7:
      v20 = 1039516303;
LABEL_16:
      v2 = *&v20;
      goto LABEL_17;
    }

LABEL_15:
    v20 = 1056293519;
    goto LABEL_16;
  }

  if (v30 > 2)
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (v18)
  {
    if (v30 == 1)
    {
      v2 = 0.06;
    }

    else
    {
      v2 = 0.12;
    }

LABEL_17:
    v15 = v29;
    if (qword_1ED56A630 == -1)
    {
LABEL_18:
      v22 = &xmmword_1ED56C400;
      goto LABEL_23;
    }

LABEL_25:
    swift_once();
    goto LABEL_18;
  }

  if (!v30)
  {
    goto LABEL_15;
  }

  if (v30 != 1)
  {
LABEL_19:
    v21 = 1025758986;
    goto LABEL_20;
  }

  v21 = 1031127695;
LABEL_20:
  v2 = *&v21;
  v15 = v29;
  if (qword_1ED56A6E8 != -1)
  {
    swift_once();
  }

  v22 = &xmmword_1ED56C450;
LABEL_23:
  v23 = v22[3];
  v33 = v22[2];
  v34 = v23;
  v35 = *(v22 + 8);
  v24 = *v22;
  v32 = v22[1];
  v31 = v24;
  v25 = *(v22 + 19);
  v26 = *(v22 + 18);
  v38 = v33;
  v39 = v34;
  v40 = v35;
  v36 = v24;
  v37 = v32;
  v41 = v2 * v26;
  v42 = v25;
  sub_18AFCD564();
  v27 = sub_18AFCD584();
  return (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
}

uint64_t GlassMaterialProvider.ResolvedStyleProvider.resolveAdaptiveColor(_:in:)(float *a1, __n128 a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = v2 + *(type metadata accessor for GlassMaterialProvider.ResolvedStyleProvider(0) + 20);
  v8 = *v7;
  v11 = *(v7 + 4);
  v10 = v8;
  sub_18AF5E044(0, &v10, v12, v3, v4, v5, v6, 1.0);
  return sub_18AFCD574();
}

uint64_t GlassMaterialProvider.ResolvedStyleProvider.resolveAdaptiveColor(_:colorScheme:in:)(float *a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = v3 + *(type metadata accessor for GlassMaterialProvider.ResolvedStyleProvider(0) + 20);
  v9 = *v8;
  v12 = *(v8 + 4);
  v11 = v9;
  sub_18AF5E044(0, &v11, v13, v4, v5, v6, v7, 1.0);
  return sub_18AFCD574();
}

uint64_t GlassMaterialProvider.ResolvedStyleProvider.hash(into:)(uint64_t a1)
{
  sub_18AFCBB34();
  sub_18AE88AD4(&qword_1ED56AA48, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
  sub_18AFCDDA4();
  v2 = type metadata accessor for GlassMaterialProvider.ResolvedStyleProvider(0);
  v3 = (v1 + *(v2 + 20));
  v4 = *(v3 + 2);
  v5 = v4 >> 8;
  if (v4 >> 8 > 0x20)
  {
    if (v5 == 33)
    {
      v6 = 2;
      goto LABEL_13;
    }

    if (v5 == 34)
    {
      v6 = 4;
      goto LABEL_13;
    }

LABEL_8:
    v7 = *v3 | (*(v3 + 2) << 32);
    MEMORY[0x18CFED610](3);
    if ((v7 & 0x100000000) != 0)
    {
      sub_18AFCE2B4();
      if (v5 != 30)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_18AFCE2B4();
      sub_18AFCE2C4();
      if (v5 != 30)
      {
LABEL_10:
        sub_18AFCE2B4();
        v6 = v5;
        goto LABEL_13;
      }
    }

    sub_18AFCE2B4();
    return MEMORY[0x18CFED610](*(v1 + *(v2 + 24)));
  }

  if (v5 == 31)
  {
    v6 = 0;
    goto LABEL_13;
  }

  if (v5 != 32)
  {
    goto LABEL_8;
  }

  v6 = 1;
LABEL_13:
  MEMORY[0x18CFED610](v6);
  return MEMORY[0x18CFED610](*(v1 + *(v2 + 24)));
}

uint64_t sub_18AFAEFC4(uint64_t (*a1)(void *))
{
  sub_18AFCE294();
  a1(v3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFAF024(float *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = v3 + *(a3 + 20);
  v9 = *v8;
  v12 = *(v8 + 4);
  v11 = v9;
  sub_18AF5E044(0, &v11, v13, v4, v5, v6, v7, 1.0);
  return sub_18AFCD574();
}

uint64_t sub_18AFAF0AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_18AFCE294();
  a3(v5);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFAF110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_18AFCE294();
  a4(v6);
  return sub_18AFCE2E4();
}

void sub_18AFAF158(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v51 = _s17ResolvedCompositeV3KeyVMa(0);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v45 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B8, &qword_18AFDC700);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v45 - v11;
  v12 = *(a2 + 64);
  v47 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v46 = (v13 + 63) >> 6;
  v50 = a2;

  v58 = 0;
  v16 = 0;
  if (v15)
  {
    while (1)
    {
      v17 = v16;
      v18 = v53;
LABEL_12:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v17 << 6);
      v23 = v50;
      v24 = v48;
      sub_18AFAFA24(*(v50 + 48) + *(v49 + 72) * v22, v48, _s17ResolvedCompositeV3KeyVMa);
      v25 = *(*(v23 + 56) + 8 * v22);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
      v27 = *(v26 + 48);
      sub_18AF5EB60(v24, v9);
      *&v9[v27] = v25;
      (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
      v20 = v17;
LABEL_13:
      sub_18AE9A768(v9, v18, &qword_1EA99B7B8, &qword_18AFDC700);
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
      if ((*(*(v28 - 8) + 48))(v18, 1, v28) == 1)
      {
        break;
      }

      v29 = *(v28 + 48);
      sub_18AF5EB60(v18, v4);
      v30 = *(v18 + v29);
      v31 = *(v52 + 48);
      v59[2] = *(v52 + 32);
      v59[3] = v31;
      v60 = *(v52 + 64);
      v32 = *(v52 + 16);
      v59[0] = *v52;
      v59[1] = v32;
      v33 = *v4;
      v34 = *(v4 + 2) | (v4[12] << 32);
      v35 = v9;
      v36 = v4[13];
      v37 = v4[14];
      v57 = v20;
      v38 = *(v4 + 2);
      v39 = *(v4 + 3);
      v40 = v4[32];
      v54 = v4[33];
      v55 = v4[34];
      v56 = *(v4 + 5);
      sub_18AFB4928(v59, v33, v34);
      v41 = v36;
      v9 = v35;
      MEMORY[0x18CFED610](v41);
      MEMORY[0x18CFED610](v37);
      MEMORY[0x18CFED610](v38);
      MEMORY[0x18CFED610](v39);
      v42 = v58;
      MEMORY[0x18CFED610](v40);
      MEMORY[0x18CFED610](v54);
      MEMORY[0x18CFED610](v55);
      MEMORY[0x18CFED610](v56);
      sub_18AFCBB34();
      sub_18AE88AD4(&qword_1ED56AA48, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
      sub_18AFCDDA4();
      sub_18AF5EBC4(v4);
      if (v30 == 0.0)
      {
        v43 = 0.0;
      }

      else
      {
        v43 = v30;
      }

      MEMORY[0x18CFED640](*&v43);
      v58 = sub_18AFCE2E4() ^ v42;
      v16 = v57;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    MEMORY[0x18CFED610](v58);
  }

  else
  {
LABEL_5:
    if (v46 <= v16 + 1)
    {
      v19 = v16 + 1;
    }

    else
    {
      v19 = v46;
    }

    v20 = v19 - 1;
    v18 = v53;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v46)
      {
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
        (*(*(v44 - 8) + 56))(v9, 1, 1, v44);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v47 + 8 * v17);
      ++v16;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

BOOL _s13DesignLibrary21GlassMaterialProviderV013ResolvedStyleE0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_18AFCBB24() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GlassMaterialProvider.ResolvedStyleProvider(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5 + 4);
  v7 = *(a1 + v5);
  v8 = *(a2 + v5) | (*(a2 + v5 + 4) << 32);
  v9 = v6 >> 8;
  if (v6 >> 8 > 0x20)
  {
    if (v9 == 33)
    {
      if (BYTE5(v8) == 33)
      {
        return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
      }
    }

    else
    {
      if (v9 != 34)
      {
        goto LABEL_11;
      }

      if (BYTE5(v8) == 34)
      {
        return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
      }
    }

    return 0;
  }

  if (v9 == 31)
  {
    if (BYTE5(v8) == 31)
    {
      return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
    }

    return 0;
  }

  if (v9 != 32)
  {
LABEL_11:
    if (BYTE5(v8) - 31 < 4)
    {
      return 0;
    }

    v10 = v7 & 0xFFFF0000FFFFFFFFLL | (v6 << 32);
    v17 = v10;
    v18 = BYTE4(v10) & 1;
    v19 = BYTE1(v6);
    v14 = v8;
    v15 = BYTE4(v8) & 1;
    v16 = BYTE5(v8);
    v11 = v4;
    v12 = sub_18AF5DC58(&v17, &v14);
    v4 = v11;
    if (!v12)
    {
      return 0;
    }

    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  if (BYTE5(v8) != 32)
  {
    return 0;
  }

  return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
}

void sub_18AFAF840(uint64_t a1)
{
  if (!qword_1ED56AF28[0])
  {
    _s14CustomFillBaseCMa();
    v1 = sub_18AFCE074();
    if (!v2)
    {
      atomic_store(v1, qword_1ED56AF28);
    }
  }
}

void sub_18AFAF898(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18AFAF8E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_18AFAF930(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18AFAF9A0(uint64_t a1)
{
  result = sub_18AFCBB34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AFAFA24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_18AFAFAA8(uint64_t *a1, int a2)
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

uint64_t sub_18AFAFAF0(uint64_t result, int a2, int a3)
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

uint64_t _s17ResolvedCompositeV3KeyVMa(uint64_t a1)
{
  result = qword_1ED56AAE0;
  if (!qword_1ED56AAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AFAFBB4(uint64_t a1)
{
  result = sub_18AFCBB34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AFAFC30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a10, uint64_t a11)
{
  v143 = a7;
  v141 = a5;
  v142 = a6;
  LODWORD(v124) = a4;
  v145 = a3;
  v119 = a2;
  v144 = a1;
  v140 = a8;
  v149 = a11;
  v11 = sub_18AFCD424();
  v138 = *(v11 - 8);
  v139 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v133 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v112 - v14;
  v16 = sub_18AFCD2E4();
  v132 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v112 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v129 = &v112 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v130 = &v112 - v21;
  v127 = sub_18AFCC824();
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_18AFCC9A4();
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0, &unk_18AFDFE20);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v123 = &v112 - v25;
  v26 = sub_18AFCC5C4();
  v146 = *(v26 - 8);
  v147 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v122 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_18AFCBB34();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v121 = &v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0, &qword_18AFDAF70);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v112 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v112 - v35;
  v135 = sub_18AFCC474();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v38 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = _s11EnvironmentVMa(0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v136 = &v112 - v43;
  v150 = v38;
  sub_18AFCDA44();
  v44 = *(v29 + 56);
  v148 = v36;
  v44(v36, 1, 1, v28);
  sub_18AFB12E0(v149);
  v45 = v124;
  v120 = v46;
  v137 = v15;
  v131 = v16;
  if ((v124 & 0x100) != 0)
  {
    v144 = sub_18AFB0AE0();
    v145 = v48;
    v47 = v49;
  }

  else
  {
    v47 = v119;
  }

  v119 = v47 & 1;
  v118 = v45 & 1;
  v50 = v39[5];
  (*(v29 + 104))(&v41[v50], *MEMORY[0x1E697DBB8], v28);
  v51 = *MEMORY[0x1E697F600];
  v52 = *(v146 + 104);
  v115 = v39[6];
  v52(&v41[v115], v51, v147);
  v53 = &v41[v39[7]];
  *v53 = 0;
  *(v53 + 1) = 0;
  v53[16] = 1;
  v54 = v39[8];
  v55 = type metadata accessor for GlassMaterialProvider.ResolvedStyle(0);
  v56 = *(*(v55 - 8) + 56);
  v116 = v54;
  v56(&v41[v54], 1, 1, v55);
  v117 = v39[12];
  v41[v117] = 0;
  v124 = v39[21];
  v41[v124] = 0;
  sub_18AFCC244();
  *v41 = v57;
  sub_18AE7BA10(v148, v33);
  v58 = *(v29 + 48);
  v59 = v58(v33, 1, v28);
  v60 = v121;
  if (v59 == 1)
  {
    sub_18AFCC204();
    if (v58(v33, 1, v28) != 1)
    {
      sub_18AE7BA80(v33, &qword_1EA99B5F0, &qword_18AFDAF70);
    }
  }

  else
  {
    (*(v29 + 32))(v121, v33, v28);
  }

  v61 = &v41[v39[10]];
  v62 = &v41[v39[11]];
  (*(v29 + 40))(&v41[v50], v60, v28);
  v63 = v122;
  sub_18AFCC2F4();
  (*(v146 + 40))(&v41[v115], v63, v147);
  sub_18AFAB8BC();
  v64 = v123;
  sub_18AFCC484();
  sub_18AE90D7C(v64, &v41[v116]);
  *v61 = 0;
  v65 = 1;
  v61[4] = 1;
  v66 = v119;
  *v62 = v144;
  *(v62 + 1) = v66;
  *(v62 + 2) = v145;
  *(v62 + 12) = v118;
  sub_18AE7A260();
  sub_18AFCC484();
  v41[v117] = v152;
  if (v120)
  {
    sub_18AFCC974();
    v67 = v112;
    sub_18AFCC984();

    v68 = sub_18AFCC994();
    (*(v113 + 8))(v67, v114);
    v69 = sub_18AF76B64();
    v71 = v70;
    v73 = v72;
    v65 = v74;
  }

  else
  {
    v73 = 0;
    v69 = 0.0;
    v71 = 0;
  }

  v75 = &v41[v39[9]];
  v76 = v39[13];
  v77 = v39[14];
  v78 = v39[15];
  v79 = v39[16];
  v80 = v39[17];
  v82 = v39[19];
  v81 = v39[20];
  v145 = v39[18];
  v146 = v82;
  v147 = v81;
  *v75 = v69;
  *(v75 + 1) = v71;
  *(v75 + 2) = v73;
  v75[24] = v65 & 1;
  v41[v76] = sub_18AFCC274() & 1;
  v41[v77] = sub_18AFCC304() & 1;
  sub_18AFAB910();
  sub_18AFCC484();
  v41[v78] = v152;
  v83 = v125;
  sub_18AFCC454();
  v84 = sub_18AFCC814();
  (*(v126 + 8))(v83, v127);
  v85 = *(v84 + 16);

  v41[v79] = v85 != 0;
  v41[v80] = sub_18AFCC354() & 1;
  v41[v145] = sub_18AFCC334() & 1;
  v41[v146] = sub_18AFCC344() & 1;
  v41[v147] = sub_18AFCC424() & 1;
  v86 = v130;
  sub_18AFCC3D4();
  v87 = v132;
  v88 = v129;
  v89 = v131;
  (*(v132 + 16))(v129, v86, v131);
  v90 = v128;
  sub_18AFCD214();
  sub_18AFB46AC(&qword_1ED56A7A0, MEMORY[0x1E69818B0], MEMORY[0x1E69818B8]);
  LOBYTE(v85) = sub_18AFCDDF4();
  v91 = *(v87 + 8);
  v91(v90, v89);
  if (v85)
  {
    v91(v88, v89);
    v91(v86, v89);
    v92 = 1;
  }

  else
  {
    sub_18AFCD234();
    v93 = sub_18AFCDDF4();
    v91(v90, v89);
    v91(v88, v89);
    v91(v86, v89);
    if (v93)
    {
      v92 = 2;
    }

    else
    {
      v92 = 0;
    }
  }

  v95 = v138;
  v94 = v139;
  v147 = a10;
  v41[v124] = v92;
  v96 = v137;
  v97 = v150;
  sub_18AFCC3E4();
  v98 = v133;
  sub_18AFCD414();
  sub_18AFB46AC(&qword_1EA99BC80, MEMORY[0x1E69818D0], MEMORY[0x1E69818D8]);
  v99 = v98;
  v100 = sub_18AFCDDF4();
  v101 = *(v95 + 8);
  v101(v99, v94);
  if ((v100 & 1) == 0)
  {
    sub_18AFCD404();
    sub_18AFCDDF4();
    v97 = v150;
    v101(v99, v94);
  }

  v101(v96, v94);
  v41[v39[23]] = v100 & 1;
  sub_18AFAB964();
  sub_18AFCC484();
  v102 = v152;
  if (v152)
  {
    swift_getKeyPath();
    v151 = v102;
    sub_18AFB46AC(&qword_1ED56A728, _s6PocketV7StorageCMa, &unk_18AFE02DC);

    sub_18AFCB9B4();

    os_unfair_lock_lock((v102 + 16));
    v103 = *(v102 + 36);
    v104 = *(v102 + 40);
    os_unfair_lock_unlock((v102 + 16));

    sub_18AE7BA80(v148, &qword_1EA99B5F0, &qword_18AFDAF70);
    (*(v134 + 8))(v97, v135);

    v105 = 0x100000000;
    if (!v104)
    {
      v105 = 0;
    }

    v106 = v105 | v103;
  }

  else
  {
    sub_18AE7BA80(v148, &qword_1EA99B5F0, &qword_18AFDAF70);
    (*(v134 + 8))(v97, v135);
    v106 = 0;
  }

  v107 = &v41[v39[22]];
  v107[4] = BYTE4(v106);
  *v107 = v106;
  v107[5] = v102 == 0;
  v108 = v136;
  sub_18AFB457C(v41, v136, _s11EnvironmentVMa);
  v109 = v108 + v39[7];
  v110 = v142;
  *v109 = v141;
  *(v109 + 8) = v110;
  *(v109 + 16) = v143 & 1;
  sub_18AFB17F0(v108);
  return sub_18AFB45E4(v108, _s11EnvironmentVMa);
}

uint64_t sub_18AFB0AE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BD30, &unk_18AFE0830);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16[-v1];
  v3 = sub_18AFCD554();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  sub_18AFCDA54();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_18AE7BA80(v2, &qword_1EA99BD30, &unk_18AFE0830);
    v10 = sub_18AFCDA64();
    if (v11)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    sub_18AFCD534();
    v12 = v13;
    sub_18AFCD544();
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
  }

  return v12;
}

void sub_18AFB0CFC(double a1)
{
  v3 = _s17ResolvedCompositeV3KeyVMa(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0.0)
  {
    v7 = sub_18AFABA58(MEMORY[0x1E69E7CC0]);

    *v1 = v7;
    *(v1 + 2) = 0;
  }

  else
  {
    v34 = v6;
    v31 = v1;
    v8 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCC0, &unk_18AFE0030);
    v9 = sub_18AFCE204();
    v10 = v9;
    v11 = 0;
    v35 = v8;
    v12 = 1 << *(v8 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v8 + 64;
    v15 = v13 & *(v8 + 64);
    v16 = (v12 + 63) >> 6;
    v32 = v9 + 64;
    v33 = v9;
    if (v15)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_12:
        v20 = v17 | (v11 << 6);
        v22 = v34;
        v21 = v35;
        v23 = *(v4 + 72) * v20;
        sub_18AFB4644(*(v35 + 48) + v23, v34, _s17ResolvedCompositeV3KeyVMa);
        v24 = *(*(v21 + 56) + 8 * v20) * a1;
        v10 = v33;
        *(v32 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        sub_18AFB457C(v22, v10[6] + v23, _s17ResolvedCompositeV3KeyVMa);
        *(v10[7] + 8 * v20) = v24;
        v25 = v10[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          break;
        }

        v10[2] = v27;
        if (!v15)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v18 = v11;
      while (1)
      {
        v11 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v11 >= v16)
        {

          v28 = v31;
          *v31 = v10;
          v29 = a1;
          v28[2] = v28[2] * v29;
          v30 = sub_18AFB2EFC(v10);

          *v28 = v30;
          return;
        }

        v19 = *(v14 + 8 * v11);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v15 = (v19 - 1) & v19;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_18AFB0F84(uint64_t result, float a2)
{
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = (a2 * a2);
  v6 = v4 & *(result + 64);
  for (i = (v3 + 63) >> 6; v6; v5 = v5 + *(*(result + 56) + ((v8 << 9) | (8 * v9))) * *(*(result + 56) + ((v8 << 9) | (8 * v9))))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
      return result;
    }

    v6 = *(result + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18AFB1024()
{
  sub_18AFCE294();
  sub_18AFB4F38(v1);
  sub_18AFCBB34();
  sub_18AFB46AC(&qword_1ED56AA48, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
  sub_18AFCDDA4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB10E0(uint64_t a1)
{
  sub_18AFB4F38(a1);
  sub_18AFCBB34();
  sub_18AFB46AC(&qword_1ED56AA48, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
  return sub_18AFCDDA4();
}

uint64_t sub_18AFB1188(uint64_t a1)
{
  sub_18AFCE294();
  sub_18AFB4F38(v2);
  sub_18AFCBB34();
  sub_18AFB46AC(&qword_1ED56AA48, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
  sub_18AFCDDA4();
  return sub_18AFCE2E4();
}

unint64_t sub_18AFB128C()
{
  result = qword_1EA99BD20;
  if (!qword_1EA99BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD20);
  }

  return result;
}

void sub_18AFB12E0(uint64_t a1)
{
  v2 = _s17ResolvedCompositeV3KeyVMa(0);
  v43 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B8, &qword_18AFDC700);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - v10;
  v12 = *(a1 + 64);
  v40 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v44 = a1;

  v17 = 0;
  v41 = v4;
  v46 = v11;
  while (v15)
  {
    v18 = v17;
LABEL_13:
    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v23 = v22 | (v18 << 6);
    v24 = v44;
    v25 = v42;
    sub_18AFB4644(*(v44 + 48) + *(v43 + 72) * v23, v42, _s17ResolvedCompositeV3KeyVMa);
    v26 = *(*(v24 + 56) + 8 * v23);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
    v28 = *(v27 + 48);
    v21 = v45;
    sub_18AFB457C(v25, v45, _s17ResolvedCompositeV3KeyVMa);
    *(v21 + v28) = v26;
    (*(*(v27 - 8) + 56))(v21, 0, 1, v27);
    v4 = v41;
    v11 = v46;
LABEL_14:
    sub_18AFB450C(v21, v11);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
    if ((*(*(v29 - 8) + 48))(v11, 1, v29) == 1)
    {
LABEL_22:

      return;
    }

    sub_18AFB457C(v11, v4, _s17ResolvedCompositeV3KeyVMa);
    v30 = v4[12];
    if (v30 >> 6 == 2)
    {
      v31 = v18;
      v32 = *v4;
      v33 = *(v4 + 2) | (v4[12] << 32);
      v34 = *(*v4 + 80);
      v49 = *(*v4 + 64);
      v50 = v34;
      v51 = *(v32 + 96);
      v52 = *(v32 + 112);
      v35 = *(v32 + 32);
      v48[0] = *(v32 + 16);
      v48[1] = v35;
      v48[2] = *(v32 + 48);
      v36 = *(v32 + 32);
      v47[7] = *(v32 + 16);
      v47[8] = v36;
      v47[9] = *(v32 + 48);
      sub_18AE7E9D4(v32, v33);
      sub_18AF59FDC(v48, v47);
      if (sub_18AFB4854())
      {

        sub_18AF5A038(v48);
        sub_18AFB45E4(v4, _s17ResolvedCompositeV3KeyVMa);
        sub_18AE83FF0(v32, v33);
        return;
      }

      v47[0] = v49;
      v47[1] = v50;
      v47[2] = v51;
      v37 = sub_18AFB4854();
      sub_18AFB45E4(v4, _s17ResolvedCompositeV3KeyVMa);
      sub_18AF5A038(v48);
      sub_18AE83FF0(v32, v33);
      if (v37)
      {
        goto LABEL_22;
      }

      v17 = v31;
      v11 = v46;
    }

    else
    {
      if (!(v30 >> 6))
      {

        sub_18AFB45E4(v4, _s17ResolvedCompositeV3KeyVMa);
        return;
      }

      sub_18AFB45E4(v4, _s17ResolvedCompositeV3KeyVMa);
      v17 = v18;
    }
  }

  if (v16 <= v17 + 1)
  {
    v19 = v17 + 1;
  }

  else
  {
    v19 = v16;
  }

  v20 = v19 - 1;
  v21 = v45;
  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v16)
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
      (*(*(v38 - 8) + 56))(v21, 1, 1, v38);
      v15 = 0;
      v18 = v20;
      goto LABEL_14;
    }

    v15 = *(v40 + 8 * v18);
    ++v17;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_18AFB17F0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1).n128_u32[0];
  v132 = v2;
  v209 = v3;
  v5 = v4;
  v115 = v6;
  v7 = v342;
  v8 = sub_18AFCBB34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v140 = &v112 - v13;
  v14 = _s11EnvironmentVMa(0);
  MEMORY[0x1EEE9AC00](v14);
  v138 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v156 = &v112 - v17;
  v137 = _s17ResolvedCompositeV3KeyVMa(0);
  v131 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v19 = (&v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v130 = &v112 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B8, &qword_18AFDC700);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v144 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v143 = &v112 - v25;
  sub_18AF6A8C8(v342);
  v344 = 1;
  v345 = 1;
  v346 = 1;
  sub_18AF6A8EC(v347);
  *(&v359[5] + 8) = v342[5];
  *(&v359[6] + 8) = v342[6];
  *(&v359[7] + 8) = *v343;
  *(&v359[1] + 8) = v342[1];
  *(&v359[2] + 8) = v342[2];
  *(&v359[3] + 8) = v342[3];
  *(&v359[4] + 8) = v342[4];
  v347[272] = 1;
  *(&v359[8] + 5) = *&v343[13];
  *(v359 + 8) = v342[0];
  v204 = v344;
  v356 = 1;
  v203 = v345;
  v202 = v346;
  v352 = 1;
  memcpy(&v351[15], v347, 0x105uLL);
  v349 = 1;
  v201 = 1;
  v347[352] = 1;
  v347[336] = 1;
  v347[320] = 1;
  v347[304] = 1;
  v347[288] = 1;
  if (qword_1ED56A890 != -1)
  {
LABEL_63:
    swift_once();
  }

  memcpy(v241, &dword_1ED56C4C8, sizeof(v241));
  v157 = v209 & 0xFFFFFFFFFFFFFFF7;
  v26 = &v5[*(v14 + 44)];
  v27 = v26[25];
  v113 = v11;
  v141 = v5;
  v139 = v14;
  if (v27)
  {
    v28 = 48.0;
  }

  else if (v26[24])
  {
    if (*(v26 + 1))
    {
      v28 = 48.0;
    }

    else
    {
      v28 = *v26;
    }
  }

  else
  {
    v28 = *(v26 + 2);
  }

  v136 = *(v132 + 16);
  v29 = *(v132 + 64);
  v117 = v132 + 64;
  v30 = *(v132 + 32);
  v129 = 1;
  v31 = 1 << v30;
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v11 = v32 & v29;
  v5 = v353;
  v200 = v356;
  v199 = v352;
  v198 = v349;
  v196 = v7[528];
  v195 = v7[512];
  v194 = v7[496];
  v193 = v7[480];
  v192 = v7[464];
  v154 = v306;
  v155 = &v293;
  v152 = v320;
  v153 = v312;
  v150 = v325;
  v151 = v322;
  v148 = v333;
  v149 = v330;
  v146 = v337;
  v147 = v336;
  v145 = v338;
  v116 = (v31 + 63) >> 6;
  v135 = (v9 + 24);
  v134 = *MEMORY[0x1E697DBA8];
  v142 = (v9 + 104);
  v114 = v9;
  v133 = (v9 + 8);
  v127 = v257;
  v128 = &v244;
  v125 = v271;
  v126 = v263;
  v123 = v276;
  v124 = v273;
  v121 = v284;
  v122 = v281;
  v119 = v288;
  v120 = v287;
  v118 = v289;

  v197 = 0;
  LODWORD(v209) = 0;
  v207 = 0;
  v208 = 0;
  v9 = 0;
  v176 = 0u;
  v33 = 0;
  v34 = 0.0;
  v158 = 0u;
  v159 = 0u;
  v206 = 3;
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v164 = 0u;
  v169 = 0u;
  v170 = 0u;
  v172 = 0u;
  v173 = 0u;
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v177 = 0u;
  v178 = 0u;
  v174 = 0u;
  v175 = 0u;
  v171 = 0u;
  v185 = 0u;
  v186 = 0u;
  v179 = 0u;
  v180 = 0u;
  v187 = 0u;
  v188 = 0u;
  v190 = 0u;
  v191 = 0u;
  v189 = 0u;
  v205 = v8;
  v7 = v156;
  v210 = v19;
  while (1)
  {
    v292 = v33;
    v48 = v359[7];
    v49 = v155;
    *(v155 + 6) = v359[6];
    *(v49 + 7) = v48;
    *(v49 + 125) = *(&v359[7] + 13);
    v50 = v359[3];
    *(v49 + 2) = v359[2];
    *(v49 + 3) = v50;
    v51 = v359[5];
    *(v49 + 4) = v359[4];
    *(v49 + 5) = v51;
    v52 = v359[1];
    *v49 = v359[0];
    *(v49 + 1) = v52;
    *v294 = v358[0];
    *&v294[7] = *(v358 + 7);
    v295 = v191;
    v296 = v190;
    v297 = v189;
    v298 = v188;
    v299 = v197;
    v300 = v204;
    *v301 = v357[0];
    *&v301[3] = *(v357 + 3);
    v302 = v187;
    v303 = v186;
    v305 = v200;
    v53 = v153;
    v54 = v154;
    *(v154 + 7) = *(v355 + 7);
    *v54 = v355[0];
    v304 = v179;
    *&v306[15] = v185;
    v307 = v184;
    v308 = v182;
    v309 = v180;
    v310 = v177;
    v311 = v203;
    *(v53 + 7) = *(v354 + 7);
    *v53 = v354[0];
    *&v312[15] = v183;
    v313 = v181;
    v314 = v178;
    v315 = v175;
    v316 = v174;
    v317 = v173;
    v319 = v202;
    v55 = *v353;
    v56 = v152;
    *(v152 + 7) = *&v353[7];
    *v56 = v55;
    v318 = v171;
    *&v320[15] = v172;
    v320[31] = v199;
    memcpy(v321, v351, sizeof(v321));
    v57 = v150;
    v58 = v151;
    *v151 = v350[0];
    *(v58 + 7) = *(v350 + 7);
    *&v322[11] = v170;
    v323 = v169;
    v324 = v198;
    *v57 = v348[0];
    *(v57 + 7) = *(v348 + 7);
    *&v325[15] = v168;
    v326 = v167;
    v327 = v166;
    v59 = v165;
    v328 = v164;
    v329 = v201;
    v60 = v240[0];
    v61 = v149;
    *(v149 + 7) = *(v240 + 7);
    *v61 = v60;
    *&v330[15] = v59;
    v62 = v162;
    v331 = v163;
    v332 = v196;
    v63 = v147;
    v64 = v148;
    *(v148 + 7) = *(v239 + 7);
    *v64 = v239[0];
    *&v333[15] = v62;
    v65 = v160;
    v334 = v161;
    v335 = v195;
    *v63 = v238[0];
    *(v63 + 7) = *(v238 + 7);
    *&v336[15] = v65;
    v336[31] = v194;
    v66 = v237[0];
    v67 = v146;
    *(v146 + 7) = *(v237 + 7);
    *v67 = v66;
    *&v337[15] = v159;
    v337[31] = v193;
    v68 = v236[0];
    v69 = v145;
    *(v145 + 7) = *(v236 + 7);
    *v69 = v68;
    *&v338[15] = v176;
    v339 = v158;
    v340 = v192;
    if (!v11)
    {
      if (v116 <= v9 + 1)
      {
        v71 = v9 + 1;
      }

      else
      {
        v71 = v116;
      }

      v14 = v71 - 1;
      v72 = v210;
      v19 = &qword_1EA99B7C0;
      while (1)
      {
        v70 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v70 >= v116)
        {
          v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
          v93 = v144;
          (*(*(v92 - 8) + 56))(v144, 1, 1, v92);
          v11 = 0;
          v9 = v14;
          v80 = v93;
          goto LABEL_32;
        }

        v11 = *(v117 + 8 * v70);
        ++v9;
        if (v11)
        {
          v9 = v70;
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    v70 = v9;
LABEL_31:
    v73 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v74 = v73 | (v70 << 6);
    v75 = v132;
    v76 = v130;
    sub_18AFB4644(*(v132 + 48) + *(v131 + 72) * v74, v130, _s17ResolvedCompositeV3KeyVMa);
    v77 = *(*(v75 + 56) + 8 * v74);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
    v79 = *(v78 + 48);
    v80 = v144;
    sub_18AFB457C(v76, v144, _s17ResolvedCompositeV3KeyVMa);
    *(v80 + v79) = v77;
    (*(*(v78 - 8) + 56))(v80, 0, 1, v78);
    v8 = v205;
    v72 = v210;
LABEL_32:
    v81 = v143;
    sub_18AFB450C(v80, v143);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
    if ((*(*(v82 - 8) + 48))(v81, 1, v82) == 1)
    {
      break;
    }

    v83 = *(v81 + *(v82 + 48));
    sub_18AFB457C(v81, v72, _s17ResolvedCompositeV3KeyVMa);
    sub_18AFB4644(v141, v7, _s11EnvironmentVMa);
    v84 = v139;
    (*v135)(&v7[*(v139 + 20)], v72 + *(v137 + 20), v8);
    v85 = &v7[*(v84 + 40)];
    *v85 = v1;
    v85[4] = 0;
    v86 = *(v72 + 1);
    v233 = *v72;
    v234 = v86;
    v88 = *v72;
    v87 = *(v72 + 1);
    v235 = *(v72 + 2);
    v211[0] = v88;
    v211[1] = v87;
    v211[2] = *(v72 + 2);
    sub_18AFB4644(v7, v138, _s11EnvironmentVMa);
    sub_18AE90E8C(&v233, v219);
    v89 = sub_18AE7EA9C(v211);
    v90 = v140;
    (*v142)(v140, v134, v8, v89);
    sub_18AFB46AC(&qword_1ED56AD68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
    LOBYTE(v84) = sub_18AFCDDF4();
    (*v133)(v90, v8);
    if (v84)
    {
      v91 = -v83;
    }

    else
    {
      v91 = v83;
    }

    v207 |= *(&v234 + 1);
    v208 |= *(&v235 + 1);
    if (v136 == 1 && v83 == 1.0)
    {
      memcpy(v241, v242, sizeof(v241));
      v231 = v359[6];
      v232[0] = v359[7];
      v5 = v353;
      *(v232 + 13) = *(&v359[7] + 13);
      v227 = v359[2];
      v228 = v359[3];
      v230 = v359[5];
      v229 = v359[4];
      v226 = v359[1];
      v225 = v359[0];
      v224[0] = v358[0];
      *(v224 + 7) = *(v358 + 7);
      v223[0] = v357[0];
      *(v223 + 3) = *(v357 + 3);
      v222[0] = v355[0];
      *(v222 + 7) = *(v355 + 7);
      *(v221 + 7) = *(v354 + 7);
      v221[0] = v354[0];
      *(v220 + 7) = *&v353[7];
      v220[0] = *v353;
      memcpy(v219, v351, 0x114uLL);
      v129 = 0;
      v218[0] = v350[0];
      *(v218 + 7) = *(v350 + 7);
      v217[0] = v348[0];
      *(v217 + 7) = *(v348 + 7);
      v216[0] = v240[0];
      *(v216 + 7) = *(v240 + 7);
      *(v215 + 7) = *(v239 + 7);
      v215[0] = v239[0];
      *(v214 + 7) = *(v238 + 7);
      v214[0] = v238[0];
      *(v213 + 7) = *(v237 + 7);
      v213[0] = v237[0];
      *(v212 + 7) = *(v236 + 7);
      v212[0] = v236[0];
    }

    else
    {
      v35 = sub_18AF61350(v211);
      v35.n128_f64[0] = v83;
      sub_18AF605B4(v35);
      memcpy(v341, v211, 0x481uLL);
      sub_18AF69C60(&v292, v341, &v243);
      v33 = v243;
      v36 = v128[7];
      v231 = v128[6];
      v232[0] = v36;
      *(v232 + 13) = *(v128 + 125);
      v37 = v128[3];
      v227 = v128[2];
      v228 = v37;
      v38 = v128[4];
      v230 = v128[5];
      v229 = v38;
      v39 = *v128;
      v226 = v128[1];
      v225 = v39;
      v224[0] = *v245;
      *(v224 + 7) = *&v245[7];
      v190 = v247;
      v191 = v246;
      v188 = v249;
      v189 = v248;
      v197 = v250;
      v204 = v251;
      v223[0] = *v252;
      *(v223 + 3) = *&v252[3];
      v186 = v254;
      v187 = v253;
      v200 = v256;
      *(v222 + 7) = *(v127 + 7);
      v222[0] = *v127;
      v184 = v258;
      v185 = *&v257[15];
      v179 = v255;
      v180 = v260;
      v203 = v262;
      *(v221 + 7) = *(v126 + 7);
      v221[0] = *v126;
      v182 = v259;
      v183 = *&v263[15];
      v181 = v264;
      v177 = v261;
      v178 = v265;
      v174 = v267;
      v175 = v266;
      v202 = v270;
      v40 = *v125;
      *(v220 + 7) = *(v125 + 7);
      v220[0] = v40;
      v171 = v269;
      v172 = *&v271[15];
      v173 = v268;
      v199 = v271[31];
      memcpy(v219, v272, 0x114uLL);
      v218[0] = *v124;
      *(v218 + 7) = *(v124 + 7);
      v169 = v274;
      v170 = *&v273[11];
      v198 = v275;
      v217[0] = *v123;
      *(v217 + 7) = *(v123 + 7);
      v167 = v277;
      v168 = *&v276[15];
      v201 = v280;
      v41 = *v122;
      *(v216 + 7) = *(v122 + 7);
      v216[0] = v41;
      v165 = *&v281[15];
      v166 = v278;
      v163 = v282;
      v164 = v279;
      v196 = v283;
      *(v215 + 7) = *(v121 + 7);
      v215[0] = *v121;
      v161 = v285;
      v162 = *&v284[15];
      v195 = v286;
      *(v214 + 7) = *(v120 + 7);
      v214[0] = *v120;
      v194 = v287[31];
      v42 = *v119;
      *(v213 + 7) = *(v119 + 7);
      v213[0] = v42;
      v159 = *&v288[15];
      v160 = *&v287[15];
      v193 = v288[31];
      v43 = *v118;
      *(v212 + 7) = *(v118 + 7);
      v212[0] = v43;
      v176 = *&v289[15];
      v158 = v290;
      v192 = v291;
      v5 = v353;
    }

    v34 = v34 + v91;
    v44 = BYTE1(v235);
    if (BYTE1(v235) >= v206)
    {
      v45 = v206;
    }

    else
    {
      v45 = BYTE1(v235);
    }

    if (v206 != 3)
    {
      v44 = v45;
    }

    v206 = v44;
    v46 = BYTE2(v235);
    sub_18AFB45E4(v210, _s17ResolvedCompositeV3KeyVMa);
    v47 = v209;
    if (v46 > v209)
    {
      v47 = v46;
    }

    LODWORD(v209) = v47;
    v7 = v156;
    sub_18AFB45E4(v156, _s11EnvironmentVMa);
    v359[6] = v231;
    v359[7] = v232[0];
    *(&v359[7] + 13) = *(v232 + 13);
    v359[2] = v227;
    v359[3] = v228;
    v359[5] = v230;
    v359[4] = v229;
    v359[1] = v226;
    v359[0] = v225;
    v358[0] = v224[0];
    *(v358 + 7) = *(v224 + 7);
    v357[0] = v223[0];
    *(v357 + 3) = *(v223 + 3);
    v355[0] = v222[0];
    *(v355 + 7) = *(v222 + 7);
    *(v354 + 7) = *(v221 + 7);
    v354[0] = v221[0];
    *&v353[7] = *(v220 + 7);
    *v353 = v220[0];
    memcpy(v351, v219, sizeof(v351));
    v350[0] = v218[0];
    *(v350 + 7) = *(v218 + 7);
    v348[0] = v217[0];
    *(v348 + 7) = *(v217 + 7);
    v240[0] = v216[0];
    *(v240 + 7) = *(v216 + 7);
    *(v239 + 7) = *(v215 + 7);
    v239[0] = v215[0];
    *(v238 + 7) = *(v214 + 7);
    v238[0] = v214[0];
    v237[0] = v213[0];
    *(v237 + 7) = *(v213 + 7);
    v236[0] = v212[0];
    *(v236 + 7) = *(v212 + 7);
    v8 = v205;
  }

  if (v129)
  {
    sub_18AF61DAC(&v292);
  }

  *&v94 = 0;
  v95 = *&v241[264];
  if (v241[308])
  {
    v95 = 0.0;
  }

  v96 = fmin(v95, 0.0);
  v97 = *&v241[304];
  if (v241[308])
  {
    v97 = 0.0;
    v98 = -1;
  }

  else
  {
    *&v94 = *&v241[256];
    v98 = 0;
  }

  v99 = vdupq_n_s64(v98);
  v100 = vbicq_s8(*&v241[288], v99);
  v101 = vbicq_s8(*&v241[272], v99);
  *&v102.f64[0] = v94;
  v102.f64[1] = v96;
  v104 = v114;
  v103 = v115;
  v105 = v113;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v102), vceqzq_f64(v101))))) & 1) == 0 && *v100.i64 == 0.0 && *&v100.i64[1] == 0.0 && v97 == 0.0)
  {
    v106 = 1;
    v94 = 0uLL;
    v97 = 0.0;
    v101 = 0uLL;
    v100 = 0uLL;
  }

  else
  {
    v106 = 0;
    *(&v94 + 1) = v96;
  }

  *&v241[256] = v94;
  *&v241[272] = v101;
  *&v241[288] = v100;
  *&v241[304] = v97;
  v241[308] = v106;
  memcpy(v211, v241, 0x401uLL);
  v107 = MEMORY[0x1E697DBB8];
  if (v34 < 0.0)
  {
    v107 = MEMORY[0x1E697DBA8];
  }

  (*(v114 + 104))(v113, *v107, v8);
  if (v28 > 64.0)
  {
    v108 = v207 & 0xFFFFFFFFFFFFEFFFLL;
  }

  else
  {
    v108 = v207;
  }

  if (v206 == 3)
  {
    v109 = 0;
  }

  else
  {
    v109 = v206;
  }

  memcpy(v103, v211, 0x401uLL);
  v103[129] = v208;
  v103[130] = v108;
  v110 = _s14ResolvedRecipeVMa(0);
  result = (*(v104 + 32))(v103 + v110[7], v105, v8);
  *(v103 + v110[8]) = v109;
  *(v103 + v110[9]) = v209;
  return result;
}

uint64_t sub_18AFB2BEC()
{
  v1 = *v0;
  sub_18AFCE294();
  sub_18AFAF158(v3, v1);
  sub_18AFCE2C4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB2CA4(uint64_t a1)
{
  v2 = *v1;
  sub_18AFCE294();
  sub_18AFAF158(v4, v2);
  sub_18AFCE2C4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB2D1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  sub_18AF5CA0C(*a1, *a2);
  return v4 & (v2 == v3);
}

unint64_t sub_18AFB2D60@<X0>(uint64_t a1@<X8>)
{
  result = sub_18AFABA58(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_18AFB2DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void, float, float)@<X4>, uint64_t a4@<X8>)
{
  result = a3(*a1, *a2, *(a1 + 8), *(a2 + 8));
  *a4 = result;
  *(a4 + 8) = v6;
  return result;
}

void sub_18AFB2E3C(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, float, float))
{
  v6 = (a5)(*a1, *a2, a3, a4, a1[2], *(a2 + 8));
  v8 = v7;

  *a1 = v6;
  *(a1 + 2) = v8;
}

unint64_t sub_18AFB2EA8()
{
  result = qword_1EA99BD28;
  if (!qword_1EA99BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD28);
  }

  return result;
}

unint64_t *sub_18AFB2EFC(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_18AFB305C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_18AFB3154(v8, v4, v2);
  result = MEMORY[0x18CFEDD10](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_18AFB305C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    if (fabs(*(*(a3 + 56) + 8 * v10)) >= 0.0000000149011612)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_18AFB31CC(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_18AFB31CC(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_18AFB3154(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_18AFB305C(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_18AFB31CC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = _s17ResolvedCompositeV3KeyVMa(0);
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v35 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCC0, &unk_18AFE0030);
  result = sub_18AFCE224();
  v39 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v38 = v39 + 8;
  v36 = a2;
  v35 = a1;
  v37 = a4;
  while (v14)
  {
    v48 = a3;
    v16 = __clz(__rbit64(v14));
    v43 = (v14 - 1) & v14;
LABEL_16:
    v19 = v16 | (v15 << 6);
    v20 = v40;
    v21 = *(v41 + 72);
    v22 = a4[6] + v21 * v19;
    v46 = _s17ResolvedCompositeV3KeyVMa;
    v47 = v21;
    sub_18AFB4644(v22, v40, _s17ResolvedCompositeV3KeyVMa);
    v23 = *(a4[7] + 8 * v19);
    sub_18AFB457C(v20, v10, _s17ResolvedCompositeV3KeyVMa);
    v24 = v39;
    sub_18AFCE294();
    v25 = *v10;
    v26 = *(v10 + 2) | (v10[12] << 32);
    v27 = v10[13];
    v28 = v10[14];
    v29 = *(v10 + 2);
    v30 = *(v10 + 3);
    v31 = v10[32];
    v32 = v10[33];
    v44 = v10[34];
    v45 = *(v10 + 5);
    sub_18AFB4928(v49, v25, v26);
    MEMORY[0x18CFED610](v27);
    MEMORY[0x18CFED610](v28);
    MEMORY[0x18CFED610](v29);
    MEMORY[0x18CFED610](v30);
    MEMORY[0x18CFED610](v31);
    MEMORY[0x18CFED610](v32);
    MEMORY[0x18CFED610](v44);
    MEMORY[0x18CFED610](v45);
    sub_18AFCBB34();
    sub_18AFB46AC(&qword_1ED56AA48, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
    sub_18AFCDDA4();
    sub_18AFCE2E4();
    v33 = v38;
    v34 = sub_18AFCE104();
    *(v33 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    result = sub_18AFB457C(v10, v24[6] + v34 * v47, v46);
    *(v24[7] + 8 * v34) = v23;
    ++v24[2];
    a3 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
      goto LABEL_21;
    }

    a4 = v37;
    a2 = v36;
    a1 = v35;
    v14 = v43;
    if (v48 == 1)
    {
      return v39;
    }
  }

  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v39;
    }

    v18 = a1[v15];
    ++v17;
    if (v18)
    {
      v48 = a3;
      v16 = __clz(__rbit64(v18));
      v43 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_18AFB3590(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v19[0] = *a1;
  v19[1] = v2;
  v3 = a1[2];
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v18 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v19[2] = v3;
  v20[0] = v5;
  v7 = a2[2];
  v9 = *a2;
  v8 = a2[1];
  v20[1] = v6;
  v20[2] = v7;
  v13 = v9;
  v14 = v8;
  v15 = a2[2];
  sub_18AE90E8C(v19, v22);
  sub_18AE90E8C(v20, v22);
  v10 = sub_18AFB528C(&v16, &v13);
  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  sub_18AE920D8(v21);
  v22[0] = v16;
  v22[1] = v17;
  v22[2] = v18;
  sub_18AE920D8(v22);
  if (v10)
  {
    _s17ResolvedCompositeV3KeyVMa(0);
    v11 = sub_18AFCBB24();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t *sub_18AFB3680(void *a1, uint64_t a2)
{
  v74 = _s17ResolvedCompositeV3KeyVMa(0);
  v82 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v76 = &v73 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v73 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B8, &qword_18AFDC700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v73 - v17;
  v19 = *(a2 + 64);
  v75 = a2 + 64;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;

  v81 = a2;

  v24 = 0;
  v80 = v5;
  v77 = v18;
  v78 = v15;
  v83 = v10;
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v26 = v24;
LABEL_14:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v28 | (v26 << 6);
      v30 = v81;
      v31 = v79;
      sub_18AFB4644(*(v81 + 48) + *(v82 + 72) * v29, v79, _s17ResolvedCompositeV3KeyVMa);
      v32 = *(*(v30 + 56) + 8 * v29);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
      v34 = *(v33 + 48);
      v35 = v31;
      v15 = v78;
      sub_18AFB457C(v35, v78, _s17ResolvedCompositeV3KeyVMa);
      *&v15[v34] = v32;
      (*(*(v33 - 8) + 56))(v15, 0, 1, v33);
      v84 = v26;
      v5 = v80;
      v18 = v77;
LABEL_15:
      sub_18AFB450C(v15, v18);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
      v37 = (*(*(v36 - 8) + 48))(v18, 1, v36);
      v38 = v83;
      if (v37 == 1)
      {

        v71 = sub_18AFB2EFC(a1);

        return v71;
      }

      v39 = *&v18[*(v36 + 48)];
      sub_18AFB457C(v18, v83, _s17ResolvedCompositeV3KeyVMa);
      if (a1[2])
      {
        v40 = sub_18AECE178(v38);
        if (v41)
        {
          break;
        }
      }

      sub_18AFB4644(v38, v5, _s17ResolvedCompositeV3KeyVMa);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = a1;
      v54 = sub_18AECE178(v5);
      v56 = a1[2];
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        goto LABEL_42;
      }

      v60 = v55;
      if (a1[3] >= v59)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v70 = v54;
          sub_18AFC1170();
          v54 = v70;
        }
      }

      else
      {
        sub_18AFC0988(v59, isUniquelyReferenced_nonNull_native);
        v54 = sub_18AECE178(v5);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_46;
        }
      }

      v62 = -v39;
      a1 = v85;
      if ((v60 & 1) == 0)
      {
        v85[(v54 >> 6) + 8] |= 1 << v54;
        v63 = v54;
        sub_18AFB4644(v5, a1[6] + *(v82 + 72) * v54, _s17ResolvedCompositeV3KeyVMa);
        *(a1[7] + 8 * v63) = v62;
        sub_18AFB45E4(v5, _s17ResolvedCompositeV3KeyVMa);
        sub_18AFB45E4(v38, _s17ResolvedCompositeV3KeyVMa);
        v64 = a1[2];
        v58 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (v58)
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }

      *(v85[7] + 8 * v54) = v62;
      sub_18AFB45E4(v5, _s17ResolvedCompositeV3KeyVMa);
      v25 = v38;
LABEL_6:
      sub_18AFB45E4(v25, _s17ResolvedCompositeV3KeyVMa);
      v24 = v84;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    v42 = *(a1[7] + 8 * v40);
    v43 = v76;
    sub_18AFB4644(v38, v76, _s17ResolvedCompositeV3KeyVMa);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v85 = a1;
    v46 = sub_18AECE178(v43);
    v47 = a1[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_44;
    }

    v50 = v45;
    if (a1[3] >= v49)
    {
      if ((v44 & 1) == 0)
      {
        sub_18AFC1170();
      }
    }

    else
    {
      sub_18AFC0988(v49, v44);
      v51 = sub_18AECE178(v76);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_46;
      }

      v46 = v51;
    }

    v67 = v42 - v39;
    a1 = v85;
    if (v50)
    {
      *(v85[7] + 8 * v46) = v67;
      sub_18AFB45E4(v76, _s17ResolvedCompositeV3KeyVMa);
      v25 = v83;
      goto LABEL_6;
    }

    v85[(v46 >> 6) + 8] |= 1 << v46;
    v68 = v76;
    sub_18AFB4644(v76, a1[6] + *(v82 + 72) * v46, _s17ResolvedCompositeV3KeyVMa);
    *(a1[7] + 8 * v46) = v67;
    sub_18AFB45E4(v68, _s17ResolvedCompositeV3KeyVMa);
    sub_18AFB45E4(v83, _s17ResolvedCompositeV3KeyVMa);
    v69 = a1[2];
    v58 = __OFADD__(v69, 1);
    v65 = v69 + 1;
    if (v58)
    {
      goto LABEL_45;
    }

LABEL_38:
    a1[2] = v65;
    v24 = v84;
  }

  while (v22);
LABEL_8:
  if (v23 <= v24 + 1)
  {
    v27 = v24 + 1;
  }

  else
  {
    v27 = v23;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      v84 = v27 - 1;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
      (*(*(v66 - 8) + 56))(v15, 1, 1, v66);
      v22 = 0;
      goto LABEL_15;
    }

    v22 = *(v75 + 8 * v26);
    ++v24;
    if (v22)
    {
      goto LABEL_14;
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
  result = sub_18AFCE274();
  __break(1u);
  return result;
}

unint64_t *sub_18AFB3DC4(void *a1, uint64_t a2)
{
  v73 = _s17ResolvedCompositeV3KeyVMa(0);
  v81 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v72 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v72 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B8, &qword_18AFDC700);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - v17;
  v19 = *(a2 + 64);
  v74 = a2 + 64;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;

  v80 = a2;

  v24 = 0;
  v79 = v5;
  v76 = v18;
  v77 = v15;
  v82 = v10;
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v26 = v24;
LABEL_14:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v28 | (v26 << 6);
      v30 = v80;
      v31 = v78;
      sub_18AFB4644(*(v80 + 48) + *(v81 + 72) * v29, v78, _s17ResolvedCompositeV3KeyVMa);
      v32 = *(*(v30 + 56) + 8 * v29);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
      v34 = *(v33 + 48);
      v35 = v31;
      v15 = v77;
      sub_18AFB457C(v35, v77, _s17ResolvedCompositeV3KeyVMa);
      *&v15[v34] = v32;
      (*(*(v33 - 8) + 56))(v15, 0, 1, v33);
      v83 = v26;
      v5 = v79;
      v18 = v76;
LABEL_15:
      sub_18AFB450C(v15, v18);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
      v37 = (*(*(v36 - 8) + 48))(v18, 1, v36);
      v38 = v82;
      if (v37 == 1)
      {

        v70 = sub_18AFB2EFC(a1);

        return v70;
      }

      v39 = *&v18[*(v36 + 48)];
      sub_18AFB457C(v18, v82, _s17ResolvedCompositeV3KeyVMa);
      if (a1[2])
      {
        v40 = sub_18AECE178(v38);
        if (v41)
        {
          break;
        }
      }

      sub_18AFB4644(v38, v5, _s17ResolvedCompositeV3KeyVMa);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = a1;
      v54 = sub_18AECE178(v5);
      v56 = a1[2];
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        goto LABEL_43;
      }

      v60 = v55;
      if (a1[3] < v59)
      {
        sub_18AFC0988(v59, isUniquelyReferenced_nonNull_native);
        v54 = sub_18AECE178(v5);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_47;
        }

LABEL_27:
        a1 = v84;
        if ((v60 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_27;
      }

      v69 = v54;
      sub_18AFC1170();
      v54 = v69;
      a1 = v84;
      if ((v60 & 1) == 0)
      {
LABEL_28:
        a1[(v54 >> 6) + 8] |= 1 << v54;
        v62 = v54;
        sub_18AFB4644(v5, a1[6] + *(v81 + 72) * v54, _s17ResolvedCompositeV3KeyVMa);
        *(a1[7] + 8 * v62) = v39;
        sub_18AFB45E4(v5, _s17ResolvedCompositeV3KeyVMa);
        sub_18AFB45E4(v38, _s17ResolvedCompositeV3KeyVMa);
        v63 = a1[2];
        v58 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v58)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

LABEL_5:
      *(a1[7] + 8 * v54) = v39;
      sub_18AFB45E4(v5, _s17ResolvedCompositeV3KeyVMa);
      v25 = v38;
LABEL_6:
      sub_18AFB45E4(v25, _s17ResolvedCompositeV3KeyVMa);
      v24 = v83;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    v42 = *(a1[7] + 8 * v40);
    v43 = v75;
    sub_18AFB4644(v38, v75, _s17ResolvedCompositeV3KeyVMa);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v84 = a1;
    v46 = sub_18AECE178(v43);
    v47 = a1[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_45;
    }

    v50 = v45;
    if (a1[3] >= v49)
    {
      if ((v44 & 1) == 0)
      {
        sub_18AFC1170();
      }
    }

    else
    {
      sub_18AFC0988(v49, v44);
      v51 = sub_18AECE178(v75);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_47;
      }

      v46 = v51;
    }

    v66 = v39 + v42;
    a1 = v84;
    if (v50)
    {
      *(v84[7] + 8 * v46) = v66;
      sub_18AFB45E4(v75, _s17ResolvedCompositeV3KeyVMa);
      v25 = v82;
      goto LABEL_6;
    }

    v84[(v46 >> 6) + 8] |= 1 << v46;
    v67 = v75;
    sub_18AFB4644(v75, a1[6] + *(v81 + 72) * v46, _s17ResolvedCompositeV3KeyVMa);
    *(a1[7] + 8 * v46) = v66;
    sub_18AFB45E4(v67, _s17ResolvedCompositeV3KeyVMa);
    sub_18AFB45E4(v82, _s17ResolvedCompositeV3KeyVMa);
    v68 = a1[2];
    v58 = __OFADD__(v68, 1);
    v64 = v68 + 1;
    if (v58)
    {
      goto LABEL_46;
    }

LABEL_37:
    a1[2] = v64;
    v24 = v83;
  }

  while (v22);
LABEL_8:
  if (v23 <= v24 + 1)
  {
    v27 = v24 + 1;
  }

  else
  {
    v27 = v23;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      v83 = v27 - 1;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0, &qword_18AFE0640);
      (*(*(v65 - 8) + 56))(v15, 1, 1, v65);
      v22 = 0;
      goto LABEL_15;
    }

    v22 = *(v74 + 8 * v26);
    ++v24;
    if (v22)
    {
      goto LABEL_14;
    }
  }

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
  result = sub_18AFCE274();
  __break(1u);
  return result;
}

uint64_t sub_18AFB450C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B8, &qword_18AFDC700);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AFB457C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AFB45E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18AFB4644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AFB46AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_18AFB470C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FD && *(a1 + 13))
  {
    return (*a1 + 2045);
  }

  v3 = ((((*(a1 + 8) | (*(a1 + 12) << 32)) >> 29) >> 9) | (4 * (((*(a1 + 8) | (*(a1 + 12) << 32)) >> 29) & 0x1F0 | (*a1 >> 60)))) ^ 0x7FF;
  if (v3 >= 0x7FC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18AFB4778(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FC)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 2045;
    if (a3 >= 0x7FD)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FD)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1FF;
      *result = v3 << 60;
      *(result + 8) = 0;
      *(result + 12) = ((v3 - (a2 << 9)) >> 3) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_18AFB47DC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

uint64_t sub_18AFB47F8(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 8);
    v3 = (a2 << 38) | ((*(result + 12) & 1) << 32);
    *result &= 0xFFFFFFFFFFFFFFFuLL;
    *(result + 8) = v2;
    *(result + 12) = BYTE4(v3);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0;
    *(result + 12) = -64;
  }

  return result;
}

uint64_t sub_18AFB4854()
{
  v1 = v0[12] >> 6;
  if (v1)
  {
    if (v1 != 2)
    {
      v6 = 0;
      return v6 & 1;
    }

    v2 = *v0;
    v3 = *(*v0 + 80);
    v10 = *(*v0 + 64);
    v11 = v3;
    v12 = *(v2 + 96);
    v13 = *(v2 + 112);
    v4 = *(v2 + 32);
    v9[0] = *(v2 + 16);
    v9[1] = v4;
    v9[2] = *(v2 + 48);
    v5 = *(v2 + 32);
    v8[7] = *(v2 + 16);
    v8[8] = v5;
    v8[9] = *(v2 + 48);
    sub_18AF59FDC(v9, v8);
    if ((sub_18AFB4854() & 1) == 0)
    {
      v8[0] = v10;
      v8[1] = v11;
      v8[2] = v12;
      v6 = sub_18AFB4854();
      sub_18AF5A038(v9);
      return v6 & 1;
    }

    sub_18AF5A038(v9);
  }

  v6 = 1;
  return v6 & 1;
}

void sub_18AFB4928(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (a3 >> 38) & 3;
  if (((a3 >> 38) & 3) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(a2 + 80);
      v34 = *(a2 + 64);
      v35 = v7;
      v36 = *(a2 + 96);
      v37 = *(a2 + 112);
      v8 = *(a2 + 32);
      v31 = *(a2 + 16);
      v32 = v8;
      v33 = *(a2 + 48);
      MEMORY[0x18CFED610](23);
      v9 = v31;
      v10 = DWORD2(v31) | (BYTE12(v31) << 32);
      v11 = BYTE13(v31);
      v12 = BYTE14(v31);
      v13 = v32;
      v14 = v33;
      v15 = BYTE1(v33);
      v16 = BYTE2(v33);
      v20 = *(&v33 + 1);
      v21 = DWORD2(v34) | (BYTE12(v34) << 32);
      v22 = BYTE13(v34);
      v23 = v34;
      v24 = BYTE14(v34);
      v25 = v35;
      v26 = v36;
      v27 = BYTE1(v36);
      v28 = BYTE2(v36);
      v29 = *(&v36 + 1);
      v17 = v37;
      sub_18AF59FDC(&v31, v30);
      sub_18AFB4928(a1, v9, v10);
      MEMORY[0x18CFED610](v11);
      MEMORY[0x18CFED610](v12);
      MEMORY[0x18CFED610](v13);
      MEMORY[0x18CFED610](*(&v13 + 1));
      MEMORY[0x18CFED610](v14);
      MEMORY[0x18CFED610](v15);
      MEMORY[0x18CFED610](v16);
      MEMORY[0x18CFED610](v20);
      sub_18AFB4928(a1, v23, v21);
      MEMORY[0x18CFED610](v22);
      MEMORY[0x18CFED610](v24);
      MEMORY[0x18CFED610](v25);
      MEMORY[0x18CFED610](*(&v25 + 1));
      MEMORY[0x18CFED610](v26);
      MEMORY[0x18CFED610](v27);
      MEMORY[0x18CFED610](v28);
      MEMORY[0x18CFED610](v29);
      v18 = 0.0;
      if (v17 != 0.0)
      {
        v18 = v17;
      }

      MEMORY[0x18CFED640](*&v18);
      sub_18AF5A038(&v31);
      return;
    }

    switch(a2)
    {
      case 1:
        v19 = 1;
        break;
      case 2:
        v19 = 2;
        break;
      case 3:
        v19 = 3;
        break;
      case 4:
        v19 = 5;
        break;
      case 5:
        v19 = 6;
        break;
      case 6:
        v19 = 7;
        break;
      case 7:
        v19 = 8;
        break;
      case 8:
        v19 = 10;
        break;
      case 9:
        v19 = 11;
        break;
      case 10:
        v19 = 12;
        break;
      case 11:
        v19 = 13;
        break;
      case 12:
        v19 = 14;
        break;
      case 13:
        v19 = 15;
        break;
      case 14:
        v19 = 16;
        break;
      case 15:
        v19 = 17;
        break;
      case 16:
        v19 = 18;
        break;
      case 17:
        v19 = 19;
        break;
      case 18:
        v19 = 20;
        break;
      case 19:
        v19 = 21;
        break;
      case 20:
        v19 = 22;
        break;
      default:
        v19 = 0;
        break;
    }

LABEL_11:
    MEMORY[0x18CFED610](v19);
    return;
  }

  if (v5)
  {
    MEMORY[0x18CFED610](9);
    v19 = a2 & 1;
    goto LABEL_11;
  }

  v6 = a3 & 0xFFFFFFFFFFLL;
  MEMORY[0x18CFED610](4);
  if ((a2 & 0x100000000) != 0)
  {
    sub_18AFCE2B4();
    if ((v6 & 0x100000000) != 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_18AFCE2B4();
    sub_18AFCE2C4();
    if ((v6 & 0x100000000) != 0)
    {
LABEL_5:
      sub_18AFCE2B4();
      return;
    }
  }

  sub_18AFCE2B4();
  sub_18AFCE2C4();
}

uint64_t sub_18AFB4C58(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 13);
  v5 = *(v2 + 14);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 33);
  v10 = *(v2 + 34);
  v11 = *(v2 + 40);
  v12 = *(v2 + 56) | (*(v2 + 60) << 32);
  v16 = *(v2 + 61);
  v17 = *(v2 + 48);
  v18 = *(v2 + 62);
  v19 = *(v2 + 64);
  v20 = *(v2 + 72);
  v21 = *(v2 + 80);
  v22 = *(v2 + 81);
  v23 = *(v2 + 82);
  v24 = *(v2 + 88);
  v13 = *(v2 + 96);
  sub_18AFB4928(a1, *v2, *(v2 + 8) | (*(v2 + 12) << 32));
  MEMORY[0x18CFED610](v4);
  MEMORY[0x18CFED610](v5);
  MEMORY[0x18CFED610](v6);
  MEMORY[0x18CFED610](v7);
  MEMORY[0x18CFED610](v8);
  MEMORY[0x18CFED610](v9);
  MEMORY[0x18CFED610](v10);
  MEMORY[0x18CFED610](v11);
  sub_18AFB4928(a1, v17, v12);
  MEMORY[0x18CFED610](v16);
  MEMORY[0x18CFED610](v18);
  MEMORY[0x18CFED610](v19);
  MEMORY[0x18CFED610](v20);
  MEMORY[0x18CFED610](v21);
  MEMORY[0x18CFED610](v22);
  MEMORY[0x18CFED610](v23);
  MEMORY[0x18CFED610](v24);
  v14 = 0.0;
  if (v13 != 0.0)
  {
    v14 = v13;
  }

  return MEMORY[0x18CFED640](*&v14);
}

uint64_t sub_18AFB4DC8()
{
  v1 = *v0;
  v2 = *(v0 + 8) | (*(v0 + 12) << 32);
  sub_18AFCE294();
  sub_18AFB4928(v4, v1, v2);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB4E34(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8) | (*(v1 + 12) << 32);
  sub_18AFCE294();
  sub_18AFB4928(v5, v2, v3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB4EB4()
{
  sub_18AFCE294();
  sub_18AFB4C58(v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB4EF8(uint64_t a1)
{
  sub_18AFCE294();
  sub_18AFB4C58(v2);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB4F38(uint64_t a1)
{
  v2 = *(v1 + 13);
  v3 = *(v1 + 14);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v8 = *(v1 + 34);
  v9 = *(v1 + 40);
  sub_18AFB4928(a1, *v1, *(v1 + 8) | (*(v1 + 12) << 32));
  MEMORY[0x18CFED610](v2);
  MEMORY[0x18CFED610](v3);
  MEMORY[0x18CFED610](v4);
  MEMORY[0x18CFED610](v5);
  MEMORY[0x18CFED610](v6);
  MEMORY[0x18CFED610](v7);
  MEMORY[0x18CFED610](v8);
  return MEMORY[0x18CFED610](v9);
}

uint64_t sub_18AFB4FEC()
{
  sub_18AFCE294();
  sub_18AFB4F38(v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB5030(uint64_t a1)
{
  sub_18AFCE294();
  sub_18AFB4F38(v2);
  return sub_18AFCE2E4();
}

unint64_t sub_18AFB5074()
{
  result = qword_1EA99BD38;
  if (!qword_1EA99BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD38);
  }

  return result;
}

unint64_t sub_18AFB50CC()
{
  result = qword_1EA99BD40;
  if (!qword_1EA99BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD40);
  }

  return result;
}

BOOL sub_18AFB5120(double *a1, double *a2)
{
  v2 = *(a1 + 1);
  v32[0] = *a1;
  v32[1] = v2;
  v3 = *(a1 + 3);
  v5 = *a1;
  v4 = *(a1 + 1);
  v32[2] = *(a1 + 2);
  v33 = v3;
  v6 = *(a1 + 5);
  v7 = *(a1 + 2);
  v34 = *(a1 + 4);
  v35 = v6;
  v8 = *(a2 + 1);
  v36[0] = *a2;
  v36[1] = v8;
  v9 = *(a2 + 3);
  v11 = *a2;
  v10 = *(a2 + 1);
  v36[2] = *(a2 + 2);
  v37 = v9;
  v12 = *(a2 + 5);
  v13 = *(a2 + 2);
  v38 = *(a2 + 4);
  v39 = v12;
  v29 = v5;
  v30 = v4;
  v31 = v7;
  v14 = a1[12];
  v26 = v11;
  v27 = v10;
  v15 = a2[12];
  v28 = v13;
  sub_18AE90E8C(v32, v41);
  sub_18AE90E8C(v36, v41);
  v16 = sub_18AFB528C(&v29, &v26);
  v40[0] = v26;
  v40[1] = v27;
  v40[2] = v28;
  sub_18AE920D8(v40);
  v41[0] = v29;
  v41[1] = v30;
  v41[2] = v31;
  sub_18AE920D8(v41);
  if (v16 && (v23 = v33, v24 = v34, v25 = v35, v20 = v37, v21 = v38, v22 = v39, sub_18AE90E8C(&v33, v19), sub_18AE90E8C(&v37, v19), v17 = sub_18AFB528C(&v23, &v20), v26 = v20, v27 = v21, v28 = v22, sub_18AE920D8(&v26), v29 = v23, v30 = v24, v31 = v25, sub_18AE920D8(&v29), v17))
  {
    return v14 == v15;
  }

  else
  {
    return 0;
  }
}

BOOL sub_18AFB528C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 13);
  v3 = *(a1 + 14);
  v4 = *(a1 + 16);
  v20 = *(a1 + 24);
  v18 = *(a1 + 33);
  v19 = *(a1 + 32);
  v17 = *(a1 + 34);
  v16 = *(a1 + 40);
  v5 = *(a2 + 13);
  v6 = *(a2 + 14);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v15 = *(a2 + 33);
  v10 = *(a2 + 34);
  v11 = *(a2 + 40);
  v12 = sub_18AE93094(*a1, *(a1 + 8) | (*(a1 + 12) << 32), *a2, *(a2 + 8) | (*(a2 + 12) << 32));
  result = 0;
  if ((v12 & 1) != 0 && v2 == v5 && v3 == v6 && v4 == v8 && v20 == v7 && v19 == v9)
  {
    v14 = v16 == v11;
    if (v17 != v10)
    {
      v14 = 0;
    }

    return v18 == v15 && v14;
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_18AFB53D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FD && *(a1 + 104))
  {
    return (*a1 + 2045);
  }

  v3 = ((((*(a1 + 8) | (*(a1 + 12) << 32)) >> 29) >> 9) | (4 * (((*(a1 + 8) | (*(a1 + 12) << 32)) >> 29) & 0x1F0 | (*a1 >> 60)))) ^ 0x7FF;
  if (v3 >= 0x7FC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18AFB5440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FC)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2045;
    if (a3 >= 0x7FD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1FF;
      *result = v3 << 60;
      *(result + 8) = 0;
      *(result + 12) = ((v3 - (a2 << 9)) >> 3) & 0xFE;
    }
  }

  return result;
}

unint64_t sub_18AFB54DC()
{
  result = qword_1EA99BD48;
  if (!qword_1EA99BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD48);
  }

  return result;
}

unint64_t sub_18AFB5534()
{
  result = qword_1EA99BD50;
  if (!qword_1EA99BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD50);
  }

  return result;
}

unint64_t sub_18AFB558C()
{
  result = qword_1EA99BD58;
  if (!qword_1EA99BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD58);
  }

  return result;
}

unint64_t sub_18AFB55F0()
{
  result = qword_1EA99BD60;
  if (!qword_1EA99BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD60);
  }

  return result;
}

void sub_18AFB5644()
{
  if ((*(v0 + 1032) & 0x5F) != 0)
  {
    v1 = *(v0 + 308);
    v2 = vdup_n_s32(v1);
    v3.i64[0] = v2.u32[0];
    v3.i64[1] = v2.u32[1];
    v4 = vandq_s8(*(v0 + 288), vcgezq_s64(vshlq_n_s64(v3, 0x3FuLL)));
    v5 = 0.0;
    if ((v1 & 1) == 0)
    {
      v5 = *(v0 + 304);
    }

    if (*v4.i64 == 0.0 && *&v4.i64[1] == 0.0 && v5 == 0.0)
    {
      v6 = 1;
      v4 = 0uLL;
      v5 = 0.0;
    }

    else
    {
      v6 = 0;
    }

    v7 = 0uLL;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = v4;
    *(v0 + 304) = v5;
    *(v0 + 308) = v6;
    v8 = *(v0 + 497);
    if (v8 == 2)
    {
      LOBYTE(v8) = 0;
      v9 = 1;
      LOBYTE(v70[0]) = 1;
      LOBYTE(v106[0]) = 1;
      LOBYTE(v128[0]) = 1;
      v10 = 0;
      v11 = 0uLL;
      v12 = 0;
      v13 = 1;
      v14 = 1;
      v15 = 0uLL;
      v16 = 0uLL;
    }

    else
    {
      v13 = *(v0 + 476);
      v15 = *(v0 + 460);
      v9 = *(v0 + 456);
      v16 = *(v0 + 440);
      v10 = *(v0 + 432);
      v11 = *(v0 + 416);
      v12 = *(v0 + 408);
      v14 = *(v0 + 496);
      v7 = *(v0 + 480);
      v96 = *(v0 + 459);
      v95 = *(v0 + 457);
      v94 = *(v0 + 479);
      v93 = *(v0 + 477);
    }

    v128[0] = 0;
    v128[1] = 0;
    v128[2] = v12;
    v129 = v11;
    v130 = v10;
    v131 = v16;
    v132 = v9;
    v133 = v95;
    v134 = v96;
    v135 = v15;
    v136 = v13;
    v138 = v94;
    v137 = v93;
    v139 = v7;
    v140 = v14;
    v141 = v8;
    sub_18AF6B1A4(v128);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    v19 = *(v0 + 56);
    v20 = *(v0 + 64);
    v21 = *(v0 + 72);
    v22 = *(v0 + 80);
    v23 = *(v0 + 84);
    v24 = *(v0 + 88);
    v25 = *(v0 + 92);
    v26 = *(v0 + 100);
    v27 = *(v0 + 108);
    v68 = *(v0 + 109);
    v69 = *(v0 + 111);
    v28 = *(v0 + 112);
    v29 = *(v0 + 120);
    v30 = *(v0 + 128);
    v66 = *(v0 + 129);
    v67 = *(v0 + 131);
    v31 = *(v0 + 132);
    v32 = *(v0 + 140);
    v33 = *(v0 + 148);
    v64 = *(v0 + 149);
    v65 = *(v0 + 151);
    v34 = *(v0 + 152);
    v35 = *(v0 + 156);
    v36 = *(v0 + 160);
    v37 = *(v0 + 168);
    v53 = *(v0 + 32);
    v54 = *(v0 + 24);
    *v70 = v54;
    *&v70[1] = v53;
    *&v70[2] = v17;
    *&v70[3] = v18;
    *&v70[4] = v19;
    *&v70[5] = v20;
    *&v70[6] = v21;
    v55 = v22;
    v71 = v22;
    v72 = v23;
    v73 = v24;
    v56 = v25;
    v74 = v25;
    v75 = v26;
    v76 = v27;
    v78 = *(v0 + 111);
    v77 = *(v0 + 109);
    v79 = v28;
    v80 = v29;
    v81 = v30;
    v83 = *(v0 + 131);
    v82 = *(v0 + 129);
    v84 = v31;
    v85 = v32;
    v86 = v33;
    v87 = *(v0 + 149);
    v88 = *(v0 + 151);
    v89 = v34;
    v57 = v35;
    v90 = v35;
    v91 = v36;
    v92 = v37;
    if (sub_18AF4FB80(v70) == 1)
    {
      v38 = 0;
      v26 = 0;
      v28 = 0;
      v29 = 0;
      v31 = 0;
      v32 = 0;
      v39 = 0;
      v40 = 0.0;
      v41 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
      v27 = 1;
      LOBYTE(v106[0]) = 1;
      LOBYTE(v100) = 1;
      LOBYTE(v97[0]) = 1;
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
      v23 = 0;
      v24 = 0;
      v30 = 1;
      v33 = 1;
      v34 = 0;
    }

    else
    {
      v62 = v68;
      v63 = v69;
      v60 = v66;
      v61 = v67;
      v58 = v64;
      v59 = v65;
      v38 = v56;
      v39 = v55;
      v41 = v53;
      v40 = v54;
    }

    v106[0] = v40;
    v106[1] = v41;
    v106[2] = v17;
    v106[3] = v18;
    v106[4] = v19;
    v106[5] = v20;
    v106[6] = v21;
    v107 = v39;
    v108 = v23;
    v109 = v24;
    v110 = v38;
    v111 = v26;
    v112 = v27;
    v113 = v62;
    v114 = v63;
    v115 = v28;
    v116 = v29;
    v117 = v30;
    v118 = v60;
    v119 = v61;
    v120 = v31;
    v121 = v32;
    v122 = v33;
    v123 = v58;
    v124 = v59;
    v125 = v34;
    v126 = v57;
    v127 = 0;
    sub_18AF6B53C(v106);
    v42 = *(v0 + 176);
    v43 = *(v0 + 248);
    if (v43)
    {
      v42 = 0.0;
    }

    v100 = v42;
    v101 = 0u;
    v102 = 0u;
    v103 = 0;
    v104 = vandq_s8(*(v0 + 224), vcgezq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v43)), 0x1FuLL)));
    v105 = vand_s8(*(v0 + 240), vcgez_s32(vshl_n_s32(vdup_n_s32(v43), 0x1FuLL)));
    sub_18AF6B27C(&v100);
    if (*(v0 + 248))
    {
      v44 = 0;
      v45 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
    }

    else
    {
      v47 = *(v0 + 176);
      v45 = *(v0 + 192);
      v46 = *(v0 + 208);
      v44 = *(v0 + 244);
    }

    v97[0] = v47;
    v97[1] = v45;
    __asm { FMOV            V2.4S, #1.0 }

    v97[2] = v46;
    v97[3] = _Q2;
    v98 = 1065353216;
    v99 = v44;
    sub_18AF6B27C(v97);
  }
}

uint64_t sub_18AFB5AFC()
{
  v1 = *(v0 + 104);
  v78[4] = *(v0 + 88);
  v78[5] = v1;
  v2 = *(v0 + 136);
  v78[6] = *(v0 + 120);
  v78[7] = v2;
  v3 = *(v0 + 40);
  v78[0] = *(v0 + 24);
  v78[1] = v3;
  v4 = *(v0 + 72);
  v78[2] = *(v0 + 56);
  v78[3] = v4;
  v5 = *(v0 + 152);
  v6 = *(v0 + 156);
  *(v80 + 5) = *(v0 + 161);
  v80[0] = v6;
  v79 = v5;
  if (sub_18AF4FB80(v78) == 1 || v5 == 0.0)
  {
    v7 = *(v0 + 1032);
    if ((v7 & 0x2001) != 0)
    {
      *(v0 + 1032) = v7 & 0xFFFFFFFFFFFFDFFELL;
    }
  }

  if ((*(v0 + 248) & 1) != 0 || *(v0 + 244) == 0.0 || *(v0 + 176) == 0.0)
  {
    v8 = *(v0 + 1032);
    if ((v8 & 2) != 0)
    {
      *(v0 + 1032) = v8 & 0xFFFFFFFFFFFFFFFDLL;
    }
  }

  if ((*(v0 + 385) & 1) != 0 || *(v0 + 312) == 0.0)
  {
    v9 = *(v0 + 1032);
    if ((v9 & 4) != 0)
    {
      *(v0 + 1032) = v9 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  if (*(v0 + 308))
  {
    goto LABEL_25;
  }

  v10 = *(v0 + 280) == 0.0;
  if (*(v0 + 272) == 0.0)
  {
    v10 = 1;
  }

  if (*(v0 + 304) == 0.0)
  {
    v10 = 1;
  }

  v11 = *(v0 + 256) == 0.0 || *(v0 + 264) == 0.0;
  if (v11 && v10)
  {
LABEL_25:
    v12 = *(v0 + 1032);
    if ((v12 & 0x18) != 0)
    {
      *(v0 + 1032) = v12 & 0xFFFFFFFFFFFFFFE7;
    }
  }

  if (*(v0 + 497) == 2 || *(v0 + 416) == 0.0 || *(v0 + 392) == 0.0 || *(v0 + 400) == 0.0)
  {
    v13 = *(v0 + 1032);
    if ((v13 & 0x40) != 0)
    {
      *(v0 + 1032) = v13 & 0xFFFFFFFFFFFFFFBFLL;
    }
  }

  v14 = *(v0 + 520);
  v15 = *(v0 + 524);
  v16 = *(v0 + 544);
  v17 = *(v0 + 548);
  v18 = *(v0 + 568);
  v19 = *(v0 + 584);
  v20 = *(v0 + 604);
  v48 = *(v0 + 607);
  v47 = *(v0 + 605);
  v21 = *(v0 + 624);
  v52 = *(v0 + 627);
  v51 = *(v0 + 625);
  v22 = *(v0 + 644);
  v23 = *(v0 + 645);
  v56 = *(v0 + 647);
  v55 = v23;
  v24 = *(v0 + 664);
  v25 = *(v0 + 668);
  v26 = *(v0 + 688);
  v27 = *(v0 + 704);
  v28 = *(v0 + 724);
  v66 = *(v0 + 725);
  v67 = *(v0 + 727);
  v29 = *(v0 + 744);
  v70 = *(v0 + 745);
  v71 = *(v0 + 747);
  v30 = *(v0 + 764);
  v31 = *(v0 + 765);
  v75 = *(v0 + 767);
  v74 = v31;
  v32 = *(v0 + 768);
  LOBYTE(v31) = *(v0 + 776);
  v37[0] = v14;
  v37[1] = v15;
  v38 = *(v0 + 528);
  v39 = v16;
  v40 = v17;
  v41 = *(v0 + 552);
  v33 = *(v0 + 576);
  v42 = v18;
  v43 = v33;
  v44 = v19;
  v45 = *(v0 + 588);
  v46 = v20;
  v49 = *(v0 + 608);
  v50 = v21;
  v53 = *(v0 + 628);
  v54 = v22;
  v57 = *(v0 + 648);
  v58 = v24;
  v59 = v25;
  v60 = *(v0 + 672);
  v34 = *(v0 + 696);
  v61 = v26;
  v62 = v34;
  v63 = v27;
  v64 = *(v0 + 708);
  v65 = v28;
  v68 = *(v0 + 728);
  v69 = v29;
  v72 = *(v0 + 748);
  v73 = v30;
  v76 = v32;
  v77 = v31;
  result = sub_18AF4FB9C(v37);
  if (result == 1 || v16 == 0.0 && v24 == 0.0)
  {
    v36 = *(v0 + 1032);
    if ((v36 & 0x200) != 0)
    {
      *(v0 + 1032) = v36 & 0xFFFFFFFFFFFFFDFFLL;
    }
  }

  return result;
}

uint64_t _s14ResolvedRecipeVMa(uint64_t a1)
{
  result = qword_1ED56A880;
  if (!qword_1ED56A880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AFB5EB4(uint64_t a1)
{
  result = sub_18AFCBB34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t EnvironmentValues.glassMaterialContainerStyle.getter()
{
  sub_18AFAB8BC();

  return sub_18AFCC484();
}

uint64_t EnvironmentValues.glassMaterialForeground.getter()
{
  sub_18AFAB910();
  sub_18AFCC484();
  return v1;
}

uint64_t sub_18AFB5FE8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = _s11EnvironmentVMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v48 - v15;
  v17 = *a3;
  v18 = *v5;
  v19 = *a1;
  v20 = *(a1 + 9);
  if (*v5 == 0xC000000000000000 && v19 == 0xC000000000000000)
  {
    if ((v5[5] & 0x40) != 0 || *(v5 + 9) == 10)
    {
      v34 = *(a1 + 8);
      sub_18AE7B0A4(a2, v48 - v15, _s11EnvironmentVMa);
      if (!v34)
      {
        v34 = v16[*(v11 + 84)];
      }

      sub_18AF6EE98(v16);
      if (v34 == 1)
      {
        v35 = 0x1000000000000;
      }

      else
      {
        v35 = (v34 == 2) << 49;
      }

      v36 = a1[5];
      v37 = *(a1 + 48);
      v38 = type metadata accessor for GlassMaterialProvider.Configuration(0);
      v39 = *(v38 + 48);
      v40 = *(a1 + *(v38 + 44));
      if (v40 == 3)
      {
        v40 = 0;
      }

      v41 = v40 << 8;
      if ((((v20 - 1) < 3) & (v36 >> 6)) != 0)
      {
        v42 = 512;
      }

      else
      {
        v42 = v41;
      }

      if (*(a1 + v39) > 1u)
      {
        if (*(a1 + v39) == 2)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }
      }

      else if (*(a1 + v39))
      {
        v43 = 0;
      }

      else
      {
        v43 = 2 * (v36 & 1);
      }

      *&v49[0] = v36;
      result = sub_18AF58948(18, 0xC000000000uLL, a4, v49, v43);
      v46 = v43;
      v47 = v42 | v37;
      *a5 = 18;
      *(a5 + 8) = v35 | (v20 << 40) | 0xC000000000;
      *(a5 + 16) = v36;
      goto LABEL_57;
    }
  }

  else
  {
    v22 = v19 >> 62 == 3;
    v23 = __ROR8__(v19 + 0x4000000000000000, 3);
    if (!v22 || v23 > 0x12)
    {
      goto LABEL_17;
    }

    if (((1 << v23) & 0x5E818) != 0)
    {
      goto LABEL_52;
    }

    if (v23)
    {
      if (v23 != 1 || (v18 >> 62 != 3 || v18 != 0xC000000000000010 && (v18 != 0xC000000000000008 || v20 != 3)) && v20 != 8)
      {
        goto LABEL_17;
      }

LABEL_52:
      v48[1] = v17;
      result = sub_18AE834E4(a2, a4, v49);
      v45 = v49[1];
      *a5 = v49[0];
      *(a5 + 16) = v45;
      *(a5 + 32) = v49[2];
      return result;
    }
  }

  if (v20 == 7)
  {
    goto LABEL_52;
  }

LABEL_17:
  v25 = *(a1 + 8);
  sub_18AE7B0A4(a2, v13, _s11EnvironmentVMa);
  if (!v25)
  {
    v25 = v13[*(v11 + 84)];
  }

  sub_18AF6EE98(v13);
  if (v25 == 1)
  {
    v26 = 0x1000000000000;
  }

  else
  {
    v26 = (v25 == 2) << 49;
  }

  v27 = *(a1 + 48);
  v28 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v29 = *(v28 + 48);
  v30 = *(a1 + *(v28 + 44));
  if (v30 == 3)
  {
    v30 = 0;
  }

  v31 = v30 << 8;
  if ((((v20 - 1) < 3) & (v17 >> 6)) != 0)
  {
    v32 = 512;
  }

  else
  {
    v32 = v31;
  }

  if (*(a1 + v29) > 1u)
  {
    if (*(a1 + v29) == 2)
    {
      v33 = 1;
    }

    else
    {
      v33 = 2;
    }
  }

  else if (*(a1 + v29))
  {
    v33 = 0;
  }

  else
  {
    v33 = 2 * (v17 & 1);
  }

  *&v49[0] = v17;
  result = sub_18AF58948(5, 0xC000000000uLL, a4, v49, v33);
  v46 = v33;
  v47 = v32 | v27;
  *a5 = 5;
  *(a5 + 8) = v26 | (v20 << 40) | 0xC000000000;
  *(a5 + 16) = v17;
LABEL_57:
  *(a5 + 24) = a4;
  *(a5 + 32) = v47 | (v46 << 16);
  *(a5 + 40) = result;
  return result;
}

uint64_t (*EnvironmentValues.glassMaterialForeground.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_18AFAB910();
  sub_18AFCC484();
  *(a1 + 16) = *(a1 + 17);
  return sub_18AFB63FC;
}

uint64_t sub_18AFB6434@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GlassMaterialProvider.ResolvedStyle(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_18AFB64A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AE96860();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_18AFB6504(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0, &unk_18AFDFE20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_18AE966BC(a1, &v9 - v6);
  sub_18AE966BC(v7, v4);
  sub_18AFAB8BC();
  sub_18AFCC494();
  return sub_18AE967D4(v7);
}

void (*EnvironmentValues.glassMaterialContainerStyle.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0, &unk_18AFDFE20) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_18AFAB8BC();
  sub_18AFCC484();
  return sub_18AFB66F8;
}

void sub_18AFB66F8(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_18AE966BC((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_18AE966BC(v3[2], v3[1]);
    sub_18AFCC494();
    sub_18AE967D4(v6);
  }

  else
  {
    sub_18AFCC494();
  }

  sub_18AE967D4(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t GlassMaterialProvider.ResolvedStyle.hashValue.getter()
{
  sub_18AFCE294();
  GlassMaterialProvider.Configuration.hash(into:)(v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB6838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AFB68A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_18AFB68E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18AFB6938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ClearGlassMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v3 = type metadata accessor for GlassMaterialProvider(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  if (qword_1ED56A750 != -1)
  {
    v15 = v7;
    swift_once();
    v7 = v15;
  }

  v11 = __swift_project_value_buffer(v7, qword_1ED56A758);
  sub_18AE7BDB0(v11, v9);
  v12 = 2;
  if (!v10)
  {
    v12 = 0;
  }

  *(v9 + 5) = *(v9 + 5) & 0xFFFFFFFFFFFFFFFDLL | v12;
  sub_18AE7BDB0(v9, v5);
  v13 = GlassMaterialProvider.resolveLayers(in:)(a1);
  sub_18AE8BFB4(v5, type metadata accessor for GlassMaterialProvider);
  sub_18AE8BFB4(v9, type metadata accessor for GlassMaterialProvider.Configuration);
  return v13;
}

uint64_t _s13DesignLibrary26ClearGlassMaterialProviderV13ConfigurationV9hashValueSivg_0()
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB6C08(uint64_t a1)
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

unint64_t sub_18AFB6C50()
{
  result = qword_1EA99BD68;
  if (!qword_1EA99BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD68);
  }

  return result;
}

unint64_t sub_18AFB6CA8()
{
  result = qword_1EA99BD70;
  if (!qword_1EA99BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD70);
  }

  return result;
}

unint64_t sub_18AFB6D00()
{
  result = qword_1EA99BD78;
  if (!qword_1EA99BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD78);
  }

  return result;
}

uint64_t sub_18AFB6D98@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v2 = sub_18AFCD704();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_18AFCDA04();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18AFCD9D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = *v1;
  (*(v8 + 104))(v10, *MEMORY[0x1E6981C50], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698, &qword_18AFDB760);
  sub_18AFCD774();
  v11 = swift_allocObject();
  v13 = xmmword_18AFD8390;
  *(v11 + 16) = xmmword_18AFD8390;
  sub_18AFCD9E4();
  *v5 = 0;
  (*(v3 + 104))(v5, *MEMORY[0x1E6981BB8], v2);
  sub_18AFCD784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690, &qword_18AFDBDB0);
  sub_18AFCD6C4();
  *(swift_allocObject() + 16) = v13;
  sub_18AFCD6A4();
  sub_18AFCD874();

  return (*(v8 + 8))(v10, v7);
}

uint64_t OptimizedRegularGlassMaterialProvider.resolveLayers(in:)()
{
  v1 = sub_18AFCDA04();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708, &qword_18AFE0360);
  sub_18AFCDA34();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18AFD8390;
  v8[3] = v5;
  sub_18AFB6D98(v4);
  sub_18AFCD5F4();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t OptimizedRegularGlassMaterialProvider.hashValue.getter()
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB732C()
{
  v1 = sub_18AFCDA04();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708, &qword_18AFE0360);
  sub_18AFCDA34();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18AFD8390;
  v8[3] = v5;
  sub_18AFB6D98(v4);
  sub_18AFCD5F4();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_18AFB74A8()
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB7540(uint64_t a1)
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  return sub_18AFCE2E4();
}

unint64_t sub_18AFB759C()
{
  result = qword_1EA99BD80;
  if (!qword_1EA99BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD80);
  }

  return result;
}

unint64_t sub_18AFB75F4()
{
  result = qword_1EA99BD88;
  if (!qword_1EA99BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OptimizedRegularGlassMaterialProvider(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OptimizedRegularGlassMaterialProvider(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t UIKitPlatformGlassDefinition.__deallocating_deinit()
{
  _s13DesignLibrary28UIKitPlatformGlassDefinitionCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_18AFB7738@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_18AFCD244();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  (*(v5 + 16))(&v18 - v10, a1, v4, v9);
  sub_18AFCD224();
  sub_18AE8C130(&qword_1EA99BDB8, MEMORY[0x1E6981890], MEMORY[0x1E6981898]);
  v12 = sub_18AFCDDF4();
  v13 = *(v5 + 8);
  v13(v7, v4);
  if (v12)
  {
    v13(v11, v4);
    v14 = 1;
  }

  else
  {
    sub_18AFCD214();
    v15 = sub_18AFCDDF4();
    v13(v7, v4);
    if (v15)
    {
      v13(v11, v4);
      v14 = 2;
    }

    else
    {
      sub_18AFCD234();
      v16 = sub_18AFCDDF4();
      v13(v7, v4);
      v13(v11, v4);
      if (v16)
      {
        v14 = 3;
      }

      else
      {
        v14 = 1;
      }
    }
  }

  result = (v13)(a1, v4);
  *a2 = v14;
  return result;
}

double RegularGlassMaterialProvider.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *&result = 2;
  *(a1 + 8) = xmmword_18AFE1250;
  *(a1 + 24) = 1;
  return result;
}

double RegularGlassMaterialProvider.init(configuration:)@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 1) = v2;
  *&result = 2;
  *(a2 + 8) = xmmword_18AFE1250;
  *(a2 + 24) = 1;
  return result;
}

__n128 RegularGlassMaterialProvider.init(configuration:size:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  v4 = a2[1].n128_u8[0];
  *a3 = *a1;
  *(a3 + 1) = v3;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  return result;
}

BOOL static RegularGlassMaterialProvider.SizeVariant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (*&v2 | *&v3)
    {
      if (*&v2 ^ 1 | *&v3)
      {
        if (*(a2 + 16) && __PAIR128__(v4, *&v5) >= 2)
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(*&v5 ^ 1 | v4))
      {
        return 1;
      }
    }

    else
    {
      v7 = *&v5 | v4;
      if (*(a2 + 16))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  return v3 == *(a2 + 8) && v2 == v5;
}

uint64_t RegularGlassMaterialProvider.SizeVariant.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    if (*&v1 | v2)
    {
      if (*&v1 ^ 1 | v2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x18CFED610](v3);
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);
    MEMORY[0x18CFED610](3);

    return sub_18AF4AF54(v4, v5);
  }
}

uint64_t RegularGlassMaterialProvider.SizeVariant.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18AFCE294();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      if (*&v1 ^ 1 | *&v2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v1, v2);
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AFB7C00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18AFCE294();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      if (*&v1 ^ 1 | *&v2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v1, v2);
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AFB7CB4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    if (*&v1 | v2)
    {
      if (*&v1 ^ 1 | v2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x18CFED610](v3);
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);
    MEMORY[0x18CFED610](3);

    return sub_18AF4AF54(v4, v5);
  }
}

uint64_t sub_18AFB7D5C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_18AFCE294();
  if (v4 == 1)
  {
    if (*&v2 | *&v3)
    {
      if (*&v2 ^ 1 | *&v3)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x18CFED610](v5);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v2, v3);
  }

  return sub_18AFCE2E4();
}

BOOL sub_18AFB7E0C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (*&v2 | *&v3)
    {
      if (*&v2 ^ 1 | *&v3)
      {
        if (*(a2 + 16) && __PAIR128__(v4, *&v5) >= 2)
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(*&v5 ^ 1 | v4))
      {
        return 1;
      }
    }

    else
    {
      v7 = *&v5 | v4;
      if (*(a2 + 16))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  return v3 == *(a2 + 8) && v2 == v5;
}

double RegularGlassMaterialProvider.Configuration.hash(into:)()
{
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return result;
}

uint64_t RegularGlassMaterialProvider.Configuration.hashValue.getter()
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB7FD0()
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

double sub_18AFB8030()
{
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return result;
}

uint64_t sub_18AFB8070(uint64_t a1)
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t RegularGlassMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v3 = type metadata accessor for GlassMaterialProvider(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = v1[1];
  v12 = *(v1 + 1);
  v13 = *(v1 + 2);
  v14 = v1[24];
  if (qword_1ED56AA10 != -1)
  {
    v19 = v7;
    swift_once();
    v7 = v19;
  }

  if (v14)
  {
    v13 = 0;
  }

  v15 = __swift_project_value_buffer(v7, qword_1ED56AA18);
  sub_18AE7BDB0(v15, v9);
  v16 = 2;
  if (!v10)
  {
    v16 = 0;
  }

  *(v9 + 5) = *(v9 + 5) & 0xFFFFFFFFFFFFFFFCLL | v16 | v11;
  *(v9 + 2) = v12;
  *(v9 + 3) = v13;
  v9[32] = v14;
  sub_18AE7BDB0(v9, v5);
  v17 = GlassMaterialProvider.resolveLayers(in:)(a1);
  sub_18AE8BFB4(v5, type metadata accessor for GlassMaterialProvider);
  sub_18AE8BFB4(v9, type metadata accessor for GlassMaterialProvider.Configuration);
  return v17;
}

uint64_t RegularGlassMaterialProvider.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      if (*&v1 ^ 1 | *&v2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);

    return sub_18AF4AF54(v1, v2);
  }
}

uint64_t RegularGlassMaterialProvider.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      if (*&v1 ^ 1 | *&v2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v1, v2);
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AFB8468(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  if (v4 == 1)
  {
    if (*&v2 | *&v3)
    {
      if (*&v2 ^ 1 | *&v3)
      {
        v5 = 2;
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x18CFED610](v5);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v2, v3);
  }

  return sub_18AFCE2E4();
}

uint64_t _s13DesignLibrary28RegularGlassMaterialProviderV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0)
  {
    v4 = a1[1];
    v5 = a1[2];
    v7 = a2[1];
    v6 = a2[2];
    if (*(a1 + 24) == 1)
    {
      if (*&v4 | *&v5)
      {
        if (*&v4 ^ 1 | *&v5)
        {
          if (*(a2 + 24) && __PAIR128__(*&v6, *&v7) >= 2)
          {
            return 1;
          }
        }

        else if (*(a2 + 24) && !(*&v7 ^ 1 | *&v6))
        {
          return 1;
        }
      }

      else if (*(a2 + 24) && !(*&v7 | *&v6))
      {
        return 1;
      }
    }

    else if ((a2[3] & 1) == 0 && v4 == v7 && v5 == v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_18AFB8604()
{
  result = qword_1EA99BDD8;
  if (!qword_1EA99BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BDD8);
  }

  return result;
}

unint64_t sub_18AFB865C()
{
  result = qword_1EA99BDE0;
  if (!qword_1EA99BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BDE0);
  }

  return result;
}

unint64_t sub_18AFB86B4()
{
  result = qword_1ED56A440;
  if (!qword_1ED56A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A440);
  }

  return result;
}

unint64_t sub_18AFB870C()
{
  result = qword_1ED56A448;
  if (!qword_1ED56A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A448);
  }

  return result;
}

uint64_t sub_18AFB8760(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18AFB87B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RegularGlassMaterialProvider.Configuration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for RegularGlassMaterialProvider.Configuration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t TVThickMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v2 = sub_18AFCDBC4();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18AFCCCF4();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_18AFCDA34();
  v48 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18AFCBB34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = sub_18AFCC474();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690, &qword_18AFDBDB0);
  sub_18AFCD6C4();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18AFD8390;
  sub_18AFCD664();
  v42 = a1;
  sub_18AFCDA44();
  sub_18AFCC204();
  v20 = *(v14 + 8);
  v21 = v18;
  v22 = v7;
  v20(v21, v13);
  v23 = (*(v8 + 88))(v12, v7);
  if (v23 == *MEMORY[0x1E697DBB8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708, &qword_18AFE0360);
    v24 = v48;
    v41 = *(v48 + 72);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18AFCEB10;
    LODWORD(v40) = *MEMORY[0x1E69814D8];
    v42 = v19;
    v26 = v49;
    v50 = *(v50 + 104);
    v27 = v51;
    (v50)(v49);
    sub_18AFCCDE4();
    v28 = v43;
    sub_18AFCD604();
    v29 = v45;
    v30 = v46;
    v31 = v47;
    (*(v46 + 104))(v45, *MEMORY[0x1E6981DB8], v47);
    sub_18AFCDA24();
    (*(v30 + 8))(v29, v31);
    (*(v24 + 8))(v28, v44);
    (v50)(v26, v40, v27);
LABEL_5:
    sub_18AFCCDE4();
    sub_18AFCDA14();

    return v25;
  }

  v32 = v49;
  v33 = v50;
  if (v23 == *MEMORY[0x1E697DBA8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708, &qword_18AFE0360);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18AFCEB10;
    v34 = *MEMORY[0x1E69814D8];
    v35 = *(v33 + 104);
    v36 = v51;
    v35(v32, v34, v51);
    sub_18AFCCDE4();
    sub_18AFCD604();
    v35(v32, v34, v36);
    goto LABEL_5;
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  sub_18AFCE134();
  MEMORY[0x18CFED1C0](0xD000000000000015, 0x800000018AFE4D60);
  v38 = v40;
  sub_18AFCDA44();
  v39 = v41;
  sub_18AFCC204();
  v20(v38, v13);
  sub_18AFCE1C4();
  (*(v8 + 8))(v39, v22);
  result = sub_18AFCE1E4();
  __break(1u);
  return result;
}

uint64_t TVRegularMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v46 = a1;
  v43 = sub_18AFCDBC4();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18AFCCCF4();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_18AFCDA34();
  v45 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18AFCBB34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = sub_18AFCC474();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690, &qword_18AFDBDB0);
  sub_18AFCD6C4();
  v17 = swift_allocObject();
  v38 = xmmword_18AFCEB10;
  *(v17 + 16) = xmmword_18AFCEB10;
  sub_18AFCD664();
  sub_18AFCD634();
  sub_18AFCDA44();
  sub_18AFCC204();
  v18 = *(v12 + 8);
  v18(v16, v11);
  v37 = v6;
  v19 = (*(v6 + 88))(v10, v5);
  if (v19 == *MEMORY[0x1E697DBB8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708, &qword_18AFE0360);
    v20 = v45;
    v46 = *(v45 + 72);
    v21 = swift_allocObject();
    *(v21 + 16) = v38;
    *&v38 = v17;
    LODWORD(v37) = *MEMORY[0x1E69814D8];
    v22 = v44;
    v23 = v48;
    v47 = *(v47 + 104);
    (v47)(v44);
    sub_18AFCCDE4();
    v24 = v39;
    sub_18AFCD604();
    v26 = v41;
    v25 = v42;
    v27 = v43;
    (*(v41 + 104))(v42, *MEMORY[0x1E6981DB8], v43);
    sub_18AFCDA24();
    (*(v26 + 8))(v25, v27);
    (*(v20 + 8))(v24, v40);
    (v47)(v22, v37, v23);
LABEL_5:
    sub_18AFCCDE4();
    sub_18AFCDA14();

    return v21;
  }

  v28 = v44;
  v30 = v47;
  v29 = v48;
  if (v19 == *MEMORY[0x1E697DBA8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708, &qword_18AFE0360);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_18AFD8390;
    (*(v30 + 104))(v28, *MEMORY[0x1E69814D8], v29);
    goto LABEL_5;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  sub_18AFCE134();
  MEMORY[0x18CFED1C0](0xD000000000000015, 0x800000018AFE4D60);
  v32 = v35;
  sub_18AFCDA44();
  v33 = v36;
  sub_18AFCC204();
  v18(v32, v11);
  sub_18AFCE1C4();
  (*(v37 + 8))(v33, v5);
  result = sub_18AFCE1E4();
  __break(1u);
  return result;
}

uint64_t TVThinMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v2 = sub_18AFCDBC4();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18AFCCCF4();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_18AFCDA34();
  v6 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFCBB34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  sub_18AFCDA44();
  sub_18AFCC204();
  v20 = *(v15 + 8);
  v20(v19, v14);
  v40 = v9;
  v41 = v8;
  v21 = (*(v9 + 88))(v13, v8);
  v22 = &loc_18AFCE000;
  if (v21 == *MEMORY[0x1E697DBB8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708, &qword_18AFE0360);
    v41 = *(v6 + 72);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_18AFCEB10;
    LODWORD(v40) = *MEMORY[0x1E69814D8];
    v24 = v47;
    v48 = *(v48 + 104);
    v25 = v49;
    (v48)(v47);
    sub_18AFCCDE4();
    v26 = v42;
    sub_18AFCD604();
    v28 = v44;
    v27 = v45;
    v29 = v46;
    (*(v45 + 104))(v44, *MEMORY[0x1E6981DB8], v46);
    sub_18AFCDA24();
    v30 = v29;
    v22 = &loc_18AFCE000;
    (*(v27 + 8))(v28, v30);
    (*(v6 + 8))(v26, v43);
    (v48)(v24, v40, v25);
    sub_18AFCCDE4();
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690, &qword_18AFDBDB0);
    sub_18AFCD6C4();
    *(swift_allocObject() + 16) = v22[177];
    sub_18AFCD664();
    sub_18AFCD634();
    sub_18AFCDA14();

    return v23;
  }

  v46 = a1;
  v32 = v48;
  v31 = v49;
  if (v21 == *MEMORY[0x1E697DBA8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708, &qword_18AFE0360);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_18AFD8390;
    (*(v32 + 104))(v47, *MEMORY[0x1E69814D8], v31);
    sub_18AFCCDE4();
    goto LABEL_5;
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  sub_18AFCE134();
  MEMORY[0x18CFED1C0](0xD000000000000015, 0x800000018AFE4D60);
  v34 = v38;
  sub_18AFCDA44();
  v35 = v39;
  sub_18AFCC204();
  v20(v34, v14);
  v36 = v41;
  sub_18AFCE1C4();
  (*(v40 + 8))(v35, v36);
  result = sub_18AFCE1E4();
  __break(1u);
  return result;
}

uint64_t TVUltraThinMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v45 = a1;
  v44 = sub_18AFCDBC4();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18AFCCCF4();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_18AFCDA34();
  v47 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18AFCBB34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = sub_18AFCC474();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690, &qword_18AFDBDB0);
  sub_18AFCD6C4();
  v17 = swift_allocObject();
  v39 = xmmword_18AFCEB10;
  *(v17 + 16) = xmmword_18AFCEB10;
  sub_18AFCD664();
  sub_18AFCD634();
  sub_18AFCDA44();
  sub_18AFCC204();
  v18 = *(v12 + 8);
  v18(v16, v11);
  v37 = v6;
  v38 = v5;
  v19 = (*(v6 + 88))(v10, v5);
  if (v19 == *MEMORY[0x1E697DBB8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708, &qword_18AFE0360);
    v20 = v47;
    v45 = *(v47 + 72);
    v21 = swift_allocObject();
    *(v21 + 16) = v39;
    *&v39 = v17;
    LODWORD(v38) = *MEMORY[0x1E69814D8];
    v22 = v46;
    v23 = v49;
    v48 = *(v48 + 104);
    (v48)(v46);
    sub_18AFCCDE4();
    v24 = v40;
    sub_18AFCD604();
    v25 = v42;
    v26 = v43;
    v27 = v44;
    (*(v42 + 104))(v43, *MEMORY[0x1E6981DB8], v44);
    sub_18AFCDA24();
    (*(v25 + 8))(v26, v27);
    (*(v20 + 8))(v24, v41);
    (v48)(v22, v38, v23);
LABEL_5:
    sub_18AFCCDE4();
    sub_18AFCDA14();

    return v21;
  }

  v28 = v46;
  v30 = v48;
  v29 = v49;
  if (v19 == *MEMORY[0x1E697DBA8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708, &qword_18AFE0360);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_18AFD8390;
    (*(v30 + 104))(v28, *MEMORY[0x1E69814D8], v29);
    goto LABEL_5;
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  sub_18AFCE134();
  MEMORY[0x18CFED1C0](0xD000000000000015, 0x800000018AFE4D60);
  v32 = v35;
  sub_18AFCDA44();
  v33 = v36;
  sub_18AFCC204();
  v18(v32, v11);
  v34 = v38;
  sub_18AFCE1C4();
  (*(v37 + 8))(v33, v34);
  result = sub_18AFCE1E4();
  __break(1u);
  return result;
}

uint64_t TVFocusMaterialProvider.resolveLayers(in:)()
{
  v18 = sub_18AFCDBC4();
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18AFCCCF4();
  v3 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18AFCDA34();
  v6 = *(v17 - 8);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708, &qword_18AFE0360);
  v19 = *(v6 + 72);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_18AFCEB10;
  v10 = *MEMORY[0x1E69814D8];
  v11 = *(v3 + 104);
  v15 = v3 + 104;
  v12 = v16;
  v11(v5, v10, v16);
  sub_18AFCCDE4();
  sub_18AFCD604();
  v13 = v18;
  (*(v0 + 104))(v2, *MEMORY[0x1E6981DB8], v18);
  sub_18AFCDA24();
  (*(v0 + 8))(v2, v13);
  (*(v7 + 8))(v9, v17);
  v11(v5, v10, v12);
  sub_18AFCCDE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690, &qword_18AFDBDB0);
  sub_18AFCD6C4();
  *(swift_allocObject() + 16) = xmmword_18AFD8390;
  sub_18AFCD634();
  sub_18AFCDA14();

  return v20;
}

uint64_t TVGlassMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED56AA10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v6 = __swift_project_value_buffer(v5, qword_1ED56AA18);
  sub_18AE7BDB0(v6, v4);
  v7 = GlassMaterialProvider.resolveLayers(in:)(a1);
  sub_18AFBAC74(v4);
  return v7;
}

uint64_t sub_18AFBAC74(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AFBACDC(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED56AA10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v6 = __swift_project_value_buffer(v5, qword_1ED56AA18);
  sub_18AE7BDB0(v6, v4);
  v7 = GlassMaterialProvider.resolveLayers(in:)(a1);
  sub_18AFBAC74(v4);
  return v7;
}

double GlassEdgeMaterialProvider.Configuration.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 8.0;
  *a1 = xmmword_18AFDEFE0;
  return result;
}

uint64_t static GlassEdgeMaterialProvider.Configuration.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return sub_18AFCCCB4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AFBAE44(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return sub_18AFCCCB4();
  }

  else
  {
    return 0;
  }
}

__n128 GlassEdgeMaterialProvider.init(configuration:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double GlassEdgeMaterialProvider.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 8.0;
  *a1 = xmmword_18AFDEFE0;
  return result;
}

uint64_t GlassEdgeMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA997908 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v6 = __swift_project_value_buffer(v5, qword_1EA99B560);
  sub_18AE7BDB0(v6, v4);
  sub_18AE8E22C(*v6, &v10);
  *(v4 + 5) = v10;
  *(v4 + 1) = xmmword_18AFD8B80;
  v4[32] = 1;
  v7 = GlassMaterialProvider.resolveLayers(in:)(a1);
  sub_18AFBAC74(v4);
  return v7;
}

uint64_t _s13DesignLibrary25GlassEdgeMaterialProviderV13ConfigurationV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x18CFED640](*&v2);

  return sub_18AFCCCC4();
}

uint64_t _s13DesignLibrary25GlassEdgeMaterialProviderV13ConfigurationV9hashValueSivg_0()
{
  v1 = *v0;
  sub_18AFCE294();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x18CFED640](*&v2);
  sub_18AFCCCC4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFBB098(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA997908 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v6 = __swift_project_value_buffer(v5, qword_1EA99B560);
  sub_18AE7BDB0(v6, v4);
  sub_18AE8E22C(*v6, &v10);
  *(v4 + 5) = v10;
  *(v4 + 1) = xmmword_18AFD8B80;
  v4[32] = 1;
  v7 = GlassMaterialProvider.resolveLayers(in:)(a1);
  sub_18AFBAC74(v4);
  return v7;
}

uint64_t sub_18AFBB19C(uint64_t a1)
{
  v2 = *v1;
  sub_18AFCE294();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x18CFED640](*&v3);
  sub_18AFCCCC4();
  return sub_18AFCE2E4();
}

unint64_t sub_18AFBB204()
{
  result = qword_1EA99BDE8;
  if (!qword_1EA99BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BDE8);
  }

  return result;
}

unint64_t sub_18AFBB25C()
{
  result = qword_1EA99BDF0;
  if (!qword_1EA99BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BDF0);
  }

  return result;
}

unint64_t sub_18AFBB2B4()
{
  result = qword_1EA99BDF8;
  if (!qword_1EA99BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BDF8);
  }

  return result;
}

unint64_t sub_18AFBB30C()
{
  result = qword_1EA99BE00;
  if (!qword_1EA99BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE00);
  }

  return result;
}

unint64_t sub_18AFBB364()
{
  result = qword_1EA99BE08;
  if (!qword_1EA99BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE08);
  }

  return result;
}

unint64_t sub_18AFBB3BC()
{
  result = qword_1EA99BE10;
  if (!qword_1EA99BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE10);
  }

  return result;
}

unint64_t sub_18AFBB414()
{
  result = qword_1EA99BE18;
  if (!qword_1EA99BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE18);
  }

  return result;
}

unint64_t sub_18AFBB46C()
{
  result = qword_1EA99BE20;
  if (!qword_1EA99BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE20);
  }

  return result;
}

unint64_t sub_18AFBB4C4()
{
  result = qword_1EA99BE28;
  if (!qword_1EA99BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE28);
  }

  return result;
}

unint64_t sub_18AFBB51C()
{
  result = qword_1EA99BE30;
  if (!qword_1EA99BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE30);
  }

  return result;
}

unint64_t sub_18AFBB574()
{
  result = qword_1EA99BE38;
  if (!qword_1EA99BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE38);
  }

  return result;
}

unint64_t sub_18AFBB5CC()
{
  result = qword_1EA99BE40;
  if (!qword_1EA99BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE40);
  }

  return result;
}

unint64_t sub_18AFBB624()
{
  result = qword_1EA99BE48;
  if (!qword_1EA99BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE48);
  }

  return result;
}

unint64_t sub_18AFBB67C()
{
  result = qword_1EA99BE50;
  if (!qword_1EA99BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE50);
  }

  return result;
}

unint64_t sub_18AFBB6D4()
{
  result = qword_1EA99BE58;
  if (!qword_1EA99BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE58);
  }

  return result;
}

void sub_18AFBB83C(_DWORD *a1@<X8>, uint64_t a2@<X0>)
{
  sub_18AFBB8C0(a2);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
}

unint64_t sub_18AFBB86C()
{
  result = qword_1EA99BE60;
  if (!qword_1EA99BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE60);
  }

  return result;
}

void sub_18AFBB8C0(uint64_t a1)
{
  v1 = sub_18AFCCCF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AEB4960();
  sub_18AFCC484();
  if (!v5[1] && !sub_18AFCC1C4())
  {
    sub_18AFCCCD4();
  }

  sub_18AFCCDC4();

  (*(v2 + 104))(v4, *MEMORY[0x1E69814D8], v1);
  sub_18AFCCDE4();
}

uint64_t sub_18AFBBA64(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 infoDictionary];

  if (v7)
  {
    v8 = sub_18AFCDD84();

    if (*(v8 + 16) && (v9 = sub_18AECE354(a1, a2), (v10 & 1) != 0))
    {
      sub_18AE9B098(*(v8 + 56) + 32 * v9, v13);

      if (swift_dynamicCast())
      {
        a3 = v12;
      }
    }

    else
    {
    }
  }

  return a3 & 1;
}

uint64_t sub_18AFBBB7C@<X0>(uint64_t a1@<X8>)
{
  sub_18AFCC224();
  sub_18AEB23EC();
  sub_18AFCC484();
  result = type metadata accessor for ResolvedButtonBorderShape(0);
  *(a1 + *(result + 20)) = v4;
  return result;
}

uint64_t ButtonBorderShape.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFBBC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AFBBE7C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.buttonBorderShape.modify(void *a1))()
{
  *a1 = v1;
  a1[1] = sub_18AEB23EC();
  sub_18AFCC484();
  return sub_18AFBE4B0;
}

uint64_t EnvironmentValues.designLibraryButtonBorderShape.getter()
{
  sub_18AEB23EC();

  return sub_18AFCC484();
}

uint64_t (*EnvironmentValues.designLibraryButtonBorderShape.modify(void *a1))()
{
  *a1 = v1;
  a1[1] = sub_18AEB23EC();
  sub_18AFCC484();
  return sub_18AFBBE3C;
}

unint64_t sub_18AFBBE7C()
{
  result = qword_1EA99BE68;
  if (!qword_1EA99BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE68);
  }

  return result;
}

double sub_18AFBBF8C@<D0>(uint64_t a1@<X8>)
{
  v7 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v55 = (&v51 - v11);
  v12 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_18AFCBB54();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - v23;
  v25 = *(v5 + *(type metadata accessor for ResolvedButtonBorderShape(0) + 20));
  if (v25 > 1)
  {
    if (v25 != 2)
    {
      (*(v16 + 16))(v18, v5, v15);
      v38 = (*(v16 + 88))(v18, v15);
      v39 = 4.0;
      if (v38 != *MEMORY[0x1E697DC08])
      {
        v39 = 5.0;
        if (v38 != *MEMORY[0x1E697DC20])
        {
          v39 = 6.0;
          if (v38 != *MEMORY[0x1E697DC28])
          {
            v39 = 7.0;
            if (v38 != *MEMORY[0x1E697DC10])
            {
              v39 = 9.0;
              if (v38 != *MEMORY[0x1E697DC00])
              {
                (*(v16 + 8))(v18, v15);
                v39 = 6.0;
              }
            }
          }
        }
      }

      v40 = *(v7 + 20);
      v41 = *MEMORY[0x1E697F468];
      v42 = sub_18AFCC534();
      (*(*(v42 - 8) + 104))(v9 + v40, v41, v42);
      *v9 = v39;
      v9[1] = v39;
      sub_18AFCC154();
      v56 = v58;
      v57 = v59;
      v32 = v60;
      v36 = MEMORY[0x1E697EAF0];
      v37 = v9;
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if (v25)
  {
LABEL_7:
    v33 = *MEMORY[0x1E697F468];
    v34 = sub_18AFCC534();
    (*(*(v34 - 8) + 104))(v14, v33, v34);
    sub_18AFCD494();
    v56 = v58;
    v57 = v59;
    v32 = v60;
    v35 = MEMORY[0x1E6981998];
LABEL_8:
    v36 = v35;
    v37 = v14;
LABEL_16:
    sub_18AEDC368(v37, v36);
    goto LABEL_17;
  }

  *&v56 = v7;
  v54 = a1;
  v26 = *(v16 + 104);
  v53 = *MEMORY[0x1E697DC10];
  *&v57 = v26;
  v26(v24);
  v27 = sub_18AFCBB44();
  v28 = *(v16 + 8);
  v28(v24, v15);
  if ((v27 & 1) == 0)
  {
    v52 = *MEMORY[0x1E697DC00];
    (v57)(v24);
    v29 = sub_18AFCBB44();
    v28(v24, v15);
    if ((v29 & 1) == 0)
    {
      (*(v16 + 16))(v21, v5, v15);
      v45 = (*(v16 + 88))(v21, v15);
      v46 = 4.0;
      a1 = v54;
      v47 = v56;
      if (v45 != *MEMORY[0x1E697DC08])
      {
        v46 = 5.0;
        if (v45 != *MEMORY[0x1E697DC20])
        {
          v46 = 6.0;
          if (v45 != *MEMORY[0x1E697DC28])
          {
            v46 = 7.0;
            if (v45 != v53)
            {
              v46 = 9.0;
              if (v45 != v52)
              {
                v28(v21, v15);
                v46 = 6.0;
              }
            }
          }
        }
      }

      v48 = *(v47 + 20);
      v49 = *MEMORY[0x1E697F468];
      v50 = sub_18AFCC534();
      v14 = v55;
      (*(*(v50 - 8) + 104))(v55 + v48, v49, v50);
      *v14 = v46;
      v14[1] = v46;
      sub_18AFCC154();
      v56 = v58;
      v57 = v59;
      v32 = v60;
      v35 = MEMORY[0x1E697EAF0];
      goto LABEL_8;
    }
  }

  v30 = *MEMORY[0x1E697F468];
  v31 = sub_18AFCC534();
  (*(*(v31 - 8) + 104))(v14, v30, v31);
  sub_18AFCD494();
  v56 = v58;
  v57 = v59;
  v32 = v60;
  sub_18AEDC368(v14, MEMORY[0x1E6981998]);
  a1 = v54;
LABEL_17:
  result = *&v56;
  v44 = v57;
  *a1 = v56;
  *(a1 + 16) = v44;
  *(a1 + 32) = v32;
  return result;
}

double sub_18AFBC650@<D0>(uint64_t a1@<X8>)
{
  sub_18AFBBF8C(v8);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_18AFBC694(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AFBC71C;
}

uint64_t sub_18AFBC720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFBC954(&qword_1EA998BB0, type metadata accessor for ResolvedButtonBorderShape, &unk_18AFE1DA8);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_18AFBC7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFBC954(&qword_1EA998BB0, type metadata accessor for ResolvedButtonBorderShape, &unk_18AFE1DA8);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_18AFBC848(uint64_t a1)
{
  v2 = sub_18AFBC954(&qword_1EA998BB0, type metadata accessor for ResolvedButtonBorderShape, &unk_18AFE1DA8);

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_18AFBC954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18AFBCA04()
{
  result = qword_1EA99BEA0;
  if (!qword_1EA99BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BEA0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFCBB54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18AFCBB54();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_18AFBCC58(uint64_t a1)
{
  result = sub_18AFCBB54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AFBCCCC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AFBCD44(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_18AFBCE48(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
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

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

double sub_18AFBCFE4@<D0>(uint64_t a1@<X8>)
{
  v7 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCBB54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v41 - v21);
  v23 = *(v5 + *(type metadata accessor for ResolvedTextFieldBorderShape(0) + 20));
  if (v23 <= 1)
  {
    if (!v23)
    {
      (*(v11 + 16))(v16, v5, v10);
      v24 = (*(v11 + 88))(v16, v10);
      v25 = 4.0;
      if (v24 != *MEMORY[0x1E697DC08])
      {
        v25 = 5.0;
        if (v24 != *MEMORY[0x1E697DC20])
        {
          v25 = 6.0;
          if (v24 != *MEMORY[0x1E697DC28])
          {
            v25 = 7.0;
            if (v24 != *MEMORY[0x1E697DC10])
            {
              v25 = 9.0;
              if (v24 != *MEMORY[0x1E697DC00])
              {
                (*(v11 + 8))(v16, v10);
                v25 = 6.0;
              }
            }
          }
        }
      }

      v26 = *(v17 + 20);
      v27 = *MEMORY[0x1E697F468];
      v28 = sub_18AFCC534();
      (*(*(v28 - 8) + 104))(v22 + v26, v27, v28);
      *v22 = v25;
      v22[1] = v25;
      sub_18AFCC154();
      v41 = v43;
      v42 = v44;
      v29 = v45;
      v30 = MEMORY[0x1E697EAF0];
      v31 = v22;
      goto LABEL_19;
    }

LABEL_11:
    v32 = *MEMORY[0x1E697F468];
    v33 = sub_18AFCC534();
    (*(*(v33 - 8) + 104))(v9, v32, v33);
    sub_18AFCD494();
    v41 = v43;
    v42 = v44;
    v29 = v45;
    v30 = MEMORY[0x1E6981998];
    v31 = v9;
    goto LABEL_19;
  }

  if (v23 == 2)
  {
    goto LABEL_11;
  }

  (*(v11 + 16))(v13, v5, v10);
  v34 = (*(v11 + 88))(v13, v10);
  v35 = 4.0;
  if (v34 != *MEMORY[0x1E697DC08])
  {
    v35 = 5.0;
    if (v34 != *MEMORY[0x1E697DC20])
    {
      v35 = 6.0;
      if (v34 != *MEMORY[0x1E697DC28])
      {
        v35 = 7.0;
        if (v34 != *MEMORY[0x1E697DC10])
        {
          v35 = 9.0;
          if (v34 != *MEMORY[0x1E697DC00])
          {
            (*(v11 + 8))(v13, v10);
            v35 = 6.0;
          }
        }
      }
    }
  }

  v36 = *(v17 + 20);
  v37 = *MEMORY[0x1E697F468];
  v38 = sub_18AFCC534();
  (*(*(v38 - 8) + 104))(v19 + v36, v37, v38);
  *v19 = v35;
  v19[1] = v35;
  sub_18AFCC154();
  v41 = v43;
  v42 = v44;
  v29 = v45;
  v30 = MEMORY[0x1E697EAF0];
  v31 = v19;
LABEL_19:
  sub_18AEDC368(v31, v30);
  result = *&v41;
  v40 = v42;
  *a1 = v41;
  *(a1 + 16) = v40;
  *(a1 + 32) = v29;
  return result;
}

double sub_18AFBD554@<D0>(uint64_t a1@<X8>)
{
  sub_18AFBCFE4(v8);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_18AFBD598(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AFBE4B4;
}

uint64_t sub_18AFBD620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFBC954(&qword_1EA99B4E8, type metadata accessor for ResolvedTextFieldBorderShape, &unk_18AFE2238);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_18AFBD6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFBC954(&qword_1EA99B4E8, type metadata accessor for ResolvedTextFieldBorderShape, &unk_18AFE2238);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_18AFBD748(uint64_t a1)
{
  v2 = sub_18AFBC954(&qword_1EA99B4E8, type metadata accessor for ResolvedTextFieldBorderShape, &unk_18AFE2238);

  return MEMORY[0x1EEDE4410](a1, v2);
}

double sub_18AFBD7C4@<D0>(uint64_t a1@<X8>)
{
  v7 = sub_18AFCBB54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v5 + *(type metadata accessor for ResolvedSearchFieldBorderShape(0) + 20)) > 2u)
  {
    (*(v8 + 16))(v10, v5, v7);
    v22 = (*(v8 + 88))(v10, v7);
    v23 = 4.0;
    if (v22 != *MEMORY[0x1E697DC08])
    {
      v23 = 5.0;
      if (v22 != *MEMORY[0x1E697DC20])
      {
        v23 = 6.0;
        if (v22 != *MEMORY[0x1E697DC28])
        {
          v23 = 7.0;
          if (v22 != *MEMORY[0x1E697DC10])
          {
            v23 = 9.0;
            if (v22 != *MEMORY[0x1E697DC00])
            {
              (*(v8 + 8))(v10, v7);
              v23 = 6.0;
            }
          }
        }
      }
    }

    v24 = *(v11 + 20);
    v25 = *MEMORY[0x1E697F468];
    v26 = sub_18AFCC534();
    (*(*(v26 - 8) + 104))(v13 + v24, v25, v26);
    *v13 = v23;
    v13[1] = v23;
    sub_18AFCC154();
    v29 = v31;
    v30 = v32;
    v19 = v33;
    v20 = MEMORY[0x1E697EAF0];
    v21 = v13;
  }

  else
  {
    v17 = *MEMORY[0x1E697F468];
    v18 = sub_18AFCC534();
    (*(*(v18 - 8) + 104))(v16, v17, v18);
    sub_18AFCD494();
    v29 = v31;
    v30 = v32;
    v19 = v33;
    v20 = MEMORY[0x1E6981998];
    v21 = v16;
  }

  sub_18AEDC368(v21, v20);
  result = *&v29;
  v28 = v30;
  *a1 = v29;
  *(a1 + 16) = v28;
  *(a1 + 32) = v19;
  return result;
}

uint64_t sub_18AFBDB80@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, uint64_t a3@<X8>, double a4@<D0>, uint64_t (*a5)(void)@<X2>)
{
  v8 = v5;
  sub_18AFBE430(v8, a3, a5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  *(a3 + *(result + 36)) = a4;
  return result;
}

double sub_18AFBDBDC@<D0>(uint64_t a1@<X8>)
{
  sub_18AFBD7C4(v8);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_18AFBDC20(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AFBE4B4;
}

uint64_t sub_18AFBDCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFBC954(&qword_1EA99B180, type metadata accessor for ResolvedSearchFieldBorderShape, &unk_18AFE2288);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_18AFBDD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFBC954(&qword_1EA99B180, type metadata accessor for ResolvedSearchFieldBorderShape, &unk_18AFE2288);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_18AFBDDD0(uint64_t a1)
{
  v2 = sub_18AFBC954(&qword_1EA99B180, type metadata accessor for ResolvedSearchFieldBorderShape, &unk_18AFE2288);

  return MEMORY[0x1EEDE4410](a1, v2);
}

double sub_18AFBDE4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v8 = *(v6 + *(a1 + 36));
  CGRectInset(*&a3, v8, v8);
  sub_18AFCD024();
  result = *&v10;
  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  return result;
}

double sub_18AFBDEB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  (*(*(a1 - 8) + 16))(a2, v4, a1);
  v8 = *(a1 + 36);
  result = *(a2 + v8) + a3;
  *(a2 + v8) = result;
  return result;
}

double sub_18AFBDF28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_18AFBDE4C(a1, v6, a3);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

void (*sub_18AFBDF6C(uint64_t *a1))(void *)
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
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AFBE4B4;
}

uint64_t sub_18AFBDFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4440](a1, a2, a3, WitnessTable);
}

uint64_t sub_18AFBE070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, WitnessTable);
}

uint64_t sub_18AFBE0EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4410](a1, WitnessTable);
}

uint64_t sub_18AFBE430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_18AFBE4C0(float *a1, float a2, float a3, float a4, float a5)
{
  v5 = sub_18AFCCCF4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCCE24();
  sub_18AFCCE54();
  sub_18AFCCE34();
  (*(v6 + 104))(v8, *MEMORY[0x1E69814D8], v5);
  sub_18AFCCDE4();
}

__n128 sub_18AFBE6B4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>)
{
  v10 = a1;
  if (a4 == 1.0 && (a3 == 0.0 ? (v12 = a5 == 1.0) : (v12 = 0), v12 && (sub_18AFCCCB4() & 1) != 0))
  {
    v13 = v6[3];
    v42 = v6[2];
    v43 = v13;
    v44 = v6[4];
    v14 = v6[1];
    v40 = *v6;
    v41 = v14;
  }

  else
  {
    if (v10)
    {
      if (qword_1ED56AB30 != -1)
      {
        swift_once();
      }

      v37 = xmmword_1ED56C970;
      v38 = unk_1ED56C980;
      v39 = xmmword_1ED56C990;
      v35 = xmmword_1ED56C950;
      v36 = unk_1ED56C960;
      sub_18AFCBCB4(v20);
      sub_18AFBFA34(v21, a3, a4);
      if (a5 == 1.0)
      {
        v18[2] = v21[2];
        v18[3] = v21[3];
        v18[4] = v21[4];
        v18[0] = v21[0];
        v18[1] = v21[1];
      }

      else
      {
        v24 = 0;
        v23 = 0;
        v22 = 1065353216;
        v25 = 0;
        v27 = 0;
        v26 = a5;
        v28 = 0.5 - (a5 * 0.5);
        v29 = 0;
        v30 = a5;
        v31 = 0;
        v32 = v28;
        v33 = xmmword_18AFDC160;
        v34 = 0;
        sub_18AFCBCB4(v18);
      }

      if (qword_1ED56AB28 != -1)
      {
        swift_once();
      }
    }

    else
    {
      if (qword_1ED56AB30 != -1)
      {
        swift_once();
      }

      v37 = xmmword_1ED56C970;
      v38 = unk_1ED56C980;
      v39 = xmmword_1ED56C990;
      v35 = xmmword_1ED56C950;
      v36 = unk_1ED56C960;
      sub_18AFCBCB4(v19);
      if (a5 == 1.0)
      {
        v17[2] = v19[2];
        v17[3] = v19[3];
        v17[4] = v19[4];
        v17[0] = v19[0];
        v17[1] = v19[1];
      }

      else
      {
        v24 = 0;
        v23 = 0;
        v22 = 1065353216;
        v25 = 0;
        v27 = 0;
        v26 = a5;
        v28 = 0.5 - (a5 * 0.5);
        v29 = 0;
        v30 = a5;
        v31 = 0;
        v32 = v28;
        v33 = xmmword_18AFDC160;
        v34 = 0;
        sub_18AFCBCB4(v17);
      }

      sub_18AFBFA34(v20, a3, a4);
      if (qword_1ED56AB28 != -1)
      {
        swift_once();
      }
    }

    v21[7] = xmmword_1ED56C920;
    v21[8] = unk_1ED56C930;
    v21[9] = xmmword_1ED56C940;
    v21[5] = xmmword_1ED56C900;
    v21[6] = *algn_1ED56C910;
    sub_18AFCBCB4(&v40);
  }

  v15 = v43;
  a2[2] = v42;
  a2[3] = v15;
  a2[4] = v44;
  result = v41;
  *a2 = v40;
  a2[1] = result;
  return result;
}

void _ColorMatrix.YCC.init(black:white:saturation:hue:)(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
}

__n128 sub_18AFBEA34@<Q0>(uint64_t a1@<X8>, float a5@<S3>)
{
  sub_18AFCCE24();
  v7 = 1.0 - a5;
  v9 = ((1.0 - a5) * v8) + a5;
  if (v9 >= 0.0039062)
  {
    v10 = 1.0 / v9;
  }

  else
  {
    v10 = 9999.0;
  }

  v19 = v10;
  sub_18AFCCE54();
  v12 = (v7 * v11) + a5;
  if (v12 >= 0.0039062)
  {
    v13 = 1.0 / v12;
  }

  else
  {
    v13 = 9999.0;
  }

  sub_18AFCCE34();
  v15 = (v7 * v14) + a5;
  v16 = 1.0 / v15;
  v21 = v19;
  v22 = 0;
  v23 = 0;
  if (v15 < 0.0039062)
  {
    v16 = 9999.0;
  }

  v24 = 1.0 - v19;
  v25 = 0;
  v26 = v13;
  v27 = 0;
  v28 = 1.0 - v13;
  v29 = 0;
  v30 = v16;
  v31 = 0;
  v32 = 1.0 - v16;
  v33 = xmmword_18AFDC160;
  v34 = 0;
  sub_18AFCBCB4(v20);
  v17 = v20[3];
  *(a1 + 32) = v20[2];
  *(a1 + 48) = v17;
  *(a1 + 64) = v20[4];
  result = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = result;
  return result;
}

__n128 _ColorMatrix.YCC.colorMatrix.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v16 = 0x3F80000000000000;
  v19 = 0x3F80000000000000;
  v15 = 0;
  v14 = 0;
  v18 = 0;
  v17 = 0;
  v21 = 0;
  v20 = 0;
  v13 = 1065353216;
  v22 = 0;
  v23 = 1065353216;
  v6 = sub_18AFBE6B4(1, v11, v3, v4, v5);
  v6.n128_u32[0] = 730643660;
  LODWORD(v7) = 953267991;
  sub_18AE8C368(v12, v6.n128_f64[0], v7, v8);
  v9 = v12[3];
  *(a1 + 32) = v12[2];
  *(a1 + 48) = v9;
  *(a1 + 64) = v12[4];
  result = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t _ColorMatrix.YCC.hash(into:)(uint64_t a1)
{
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();

  return sub_18AFCCCC4();
}

uint64_t _ColorMatrix.YCC.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4[9] = *v0;
  v5 = v1;
  v6 = v2;
  sub_18AFCE294();
  _ColorMatrix.YCC.hash(into:)(v4);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFBEE14()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v4[9] = *v0;
  v5 = v1;
  v6 = v2;
  sub_18AFCE294();
  _ColorMatrix.YCC.hash(into:)(v4);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFBEE74(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5[9] = *v1;
  v6 = v2;
  v7 = v3;
  sub_18AFCE294();
  _ColorMatrix.YCC.hash(into:)(v5);
  return sub_18AFCE2E4();
}

__n128 _ColorMatrix.apply(ycc:)@<Q0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v17 = 0x3F80000000000000;
  v20 = 0x3F80000000000000;
  v16 = 0;
  v15 = 0;
  v19 = 0;
  v18 = 0;
  v22 = 0;
  v21 = 0;
  v14 = 1065353216;
  v23 = 0;
  v24 = 1065353216;
  v6 = sub_18AFBE6B4(1, v11, v3, v4, v5);
  v6.n128_u32[0] = 730643660;
  LODWORD(v7) = 953267991;
  sub_18AE8C368(v12, v6.n128_f64[0], v7, v8);
  sub_18AFCBCB4(v13);
  v9 = v13[3];
  *(a2 + 32) = v13[2];
  *(a2 + 48) = v9;
  *(a2 + 64) = v13[4];
  result = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = result;
  return result;
}

__n128 _ColorMatrix.Fill.colorMatrix.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 20);
  v11 = 1065353216;
  v13 = 0;
  v12 = 0;
  v14 = 0x3F80000000000000;
  v16 = 0;
  v15 = 0;
  v17 = 0x3F80000000000000;
  v19 = 0;
  v18 = 0;
  v20 = 0;
  v21 = 1065353216;
  v4 = *(v1 + 12);
  if (v3)
  {
    if (v3 == 1)
    {
      v5 = sub_18AFBEA34(v22, *&v4);
    }

    else
    {
      v5 = sub_18AE8C178(v22, *&v4);
    }
  }

  else
  {
    v5 = sub_18AE97674(v22, v4);
  }

  v5.n128_u32[0] = 730643660;
  LODWORD(v6) = 953267991;
  sub_18AE8C368(v10, v5.n128_f64[0], v6, v7);
  v8 = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = v8;
  *(a1 + 64) = v10[4];
  result = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t _ColorMatrix.Fill.hash(into:)(uint64_t a1)
{
  if (*(v1 + 20))
  {
    if (*(v1 + 20) == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x18CFED610](v2);
  return sub_18AFCCF14();
}

uint64_t _ColorMatrix.Fill.hashValue.getter()
{
  v1 = *(v0 + 20);
  sub_18AFCE294();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x18CFED610](v2);
  sub_18AFCCF14();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFBF1E8()
{
  v1 = *(v0 + 20);
  sub_18AFCE294();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x18CFED610](v2);
  sub_18AFCCF14();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFBF298(uint64_t a1)
{
  if (*(v1 + 20))
  {
    if (*(v1 + 20) == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x18CFED610](v2);
  return sub_18AFCCF14();
}

uint64_t sub_18AFBF330(uint64_t a1)
{
  v2 = *(v1 + 20);
  sub_18AFCE294();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x18CFED610](v3);
  sub_18AFCCF14();
  return sub_18AFCE2E4();
}

__n128 _ColorMatrix.apply(fill:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 20);
  v15 = 0x3F80000000000000;
  v18 = 0x3F80000000000000;
  v14 = 0;
  v13 = 0;
  v17 = 0;
  v16 = 0;
  v20 = 0;
  v19 = 0;
  v12 = 1065353216;
  v21 = 0;
  v22 = 1065353216;
  v4 = *(a1 + 12);
  if (v3)
  {
    if (v3 == 1)
    {
      v5 = sub_18AFBEA34(v23, *&v4);
    }

    else
    {
      v5 = sub_18AE8C178(v23, *&v4);
    }
  }

  else
  {
    v5 = sub_18AE97674(v23, v4);
  }

  v5.n128_u32[0] = 730643660;
  LODWORD(v6) = 953267991;
  sub_18AE8C368(v10, v5.n128_f64[0], v6, v7);
  sub_18AFCBCB4(v11);
  v8 = v11[3];
  *(a2 + 32) = v11[2];
  *(a2 + 48) = v8;
  *(a2 + 64) = v11[4];
  result = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = result;
  return result;
}

__n128 _ColorMatrix.apply(fills:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0.0078125;
    v6 = (a1 + 52);
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v11 = 1065353216;
    v15 = 1065353216;
    v16 = 0;
    v17 = 0.0078125;
    do
    {
      v44 = v11;
      v45 = v12;
      v46 = v13;
      v47 = *&v5;
      v48 = v14;
      v49 = v15;
      v50 = v16;
      v51 = *&v17;
      *&v22 = v11;
      *(&v22 + 1) = v12;
      v104 = v22;
      *&v22 = v5;
      *(&v22 + 1) = v13;
      v106 = v22;
      v105 = v7;
      v107 = v8;
      *&v22 = v14;
      *(&v22 + 1) = v15;
      v108 = v22;
      *&v22 = v16;
      *(&v22 + 1) = v17;
      v110 = v22;
      v109 = v9;
      v111 = v10;
      v23 = *v6;
      v53 = *(v6 - 2);
      sub_18AFCCE24();
      if (v23)
      {
        if (v23 == 1)
        {
          v25 = 1.0 - v53;
          v26 = ((1.0 - v53) * v24) + v53;
          if (v26 >= 0.0039062)
          {
            v27 = 1.0 / v26;
          }

          else
          {
            v27 = 9999.0;
          }

          v52 = v27;
          sub_18AFCCE54();
          v29 = (v25 * v28) + v53;
          if (v29 >= 0.0039062)
          {
            v30 = 1.0 / v29;
          }

          else
          {
            v30 = 9999.0;
          }

          sub_18AFCCE34();
          v32 = (v25 * v31) + v53;
          v90 = v52;
          v91 = 0;
          v92 = 0;
          v93 = 1.0 - v52;
          v94 = 0;
          if (v32 >= 0.0039062)
          {
            v33 = 1.0 / v32;
          }

          else
          {
            v33 = 9999.0;
          }

          v96 = 0;
          v95 = v30;
          v97 = 1.0 - v30;
          v98 = 0;
          v99 = v33;
          v100 = 0;
          v101 = 1.0 - v33;
          v102 = xmmword_18AFDC160;
          v103 = 0;
          sub_18AFCBCB4(v56);
          v11 = v56[0];
          v12 = v56[1];
          v5 = v58;
          v13 = v59;
          v7 = v57;
          v8 = v60;
          v14 = v61;
          v15 = v62;
          v16 = v64;
          v17 = v65;
          v9 = v63;
          v10 = v66;
        }

        else
        {
          v34 = v24 * v53;
          if (v34 <= 0.99609)
          {
            v35 = v34;
          }

          else
          {
            v35 = 0.99609;
          }

          sub_18AFCCE54();
          v37 = v36 * v53;
          if (v37 <= 0.99609)
          {
            v38 = v37;
          }

          else
          {
            v38 = 0.99609;
          }

          sub_18AFCCE34();
          v40 = v39 * v53;
          if (v40 > 0.99609)
          {
            v40 = 0.99609;
          }

          v114 = 0;
          v113 = 0;
          v115 = 0;
          v112 = (v35 / (1.0 - v35)) + 1.0;
          v116 = (v38 / (1.0 - v38)) + 1.0;
          v118 = 0;
          v117 = 0;
          v119 = 0;
          v120 = (v40 / (1.0 - v40)) + 1.0;
          v122 = 0;
          v121 = 0;
          v123 = 0;
          v124 = 1065353216;
          sub_18AFCBCB4(v67);
          v11 = v67[0];
          v12 = v67[1];
          v5 = v69;
          v13 = v70;
          v7 = v68;
          v8 = v71;
          v14 = v72;
          v15 = v73;
          v16 = v75;
          v17 = v76;
          v9 = v74;
          v10 = v77;
        }
      }

      else
      {
        v43 = v24;
        sub_18AFCCE54();
        v19 = v18;
        sub_18AFCCE34();
        v20.f32[0] = v53 * 0.0;
        v21 = vdup_lane_s32(COERCE_UNSIGNED_INT(v53 * 0.0), 0);
        v11 = vadd_f32(v21, vmul_n_f32(v44, 1.0 - v53));
        v12 = vadd_f32(v21, vmul_n_f32(v45, 1.0 - v53));
        v7 = (v7 * (1.0 - v53)) + (v43 * v53);
        v5 = COERCE_DOUBLE(vadd_f32(v21, vmul_n_f32(v47, 1.0 - v53)));
        v13 = vadd_f32(v21, vmul_n_f32(v46, 1.0 - v53));
        v8 = (v8 * (1.0 - v53)) + (v19 * v53);
        v14 = vadd_f32(v21, vmul_n_f32(v48, 1.0 - v53));
        v15 = vadd_f32(v21, vmul_n_f32(v49, 1.0 - v53));
        v9 = (v9 * (1.0 - v53)) + (*&a3 * v53);
        v16 = vadd_f32(v21, vmul_n_f32(v50, 1.0 - v53));
        v10 = (v53 * 0.0) + (v10 * (1.0 - v53));
        v20.f32[1] = v53;
        v17 = COERCE_DOUBLE(vadd_f32(vmul_n_f32(v51, 1.0 - v53), v20));
      }

      v6 += 6;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0.0078125;
    v12 = 0;
    v7 = 0.0;
    v11 = 1065353216;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v13 = 0;
    v14 = 0;
    v15 = 1065353216;
    v16 = 0;
    v17 = 0.0078125;
  }

  v78 = v11;
  v79 = v12;
  v81 = v5;
  v82 = v13;
  v80 = v7;
  v83 = v8;
  v84 = v14;
  v85 = v15;
  v87 = v16;
  v88 = v17;
  v86 = v9;
  v89 = v10;
  LODWORD(a3) = 730643660;
  LODWORD(v17) = 953267991;
  sub_18AE8C368(v54, a3, v17, v5);
  sub_18AFCBCB4(v55);
  v41 = v55[3];
  *(a2 + 32) = v55[2];
  *(a2 + 48) = v41;
  *(a2 + 64) = v55[4];
  result = v55[1];
  *a2 = v55[0];
  *(a2 + 16) = result;
  return result;
}

double sub_18AFBF9BC()
{
  xmmword_1ED56C400 = xmmword_18AFDC130;
  *algn_1ED56C410 = xmmword_18AFE2370;
  xmmword_1ED56C420 = xmmword_18AFDC140;
  unk_1ED56C430 = xmmword_18AFE2370;
  result = 0.0;
  xmmword_1ED56C440 = xmmword_18AFDC150;
  return result;
}

double sub_18AFBF9F4()
{
  xmmword_1ED56C450 = xmmword_18AFDC130;
  unk_1ED56C460 = xmmword_18AFE2380;
  xmmword_1ED56C470 = xmmword_18AFE2390;
  unk_1ED56C480 = xmmword_18AFE23A0;
  result = 0.0;
  xmmword_1ED56C490 = xmmword_18AFDC150;
  return result;
}

__n128 sub_18AFBFA34@<Q0>(__n128 *a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  if (a4 == 1.0 && a3 == 0.0)
  {
    v6 = v4[3];
    v12 = v4[2];
    v13 = v6;
    v14 = v4[4];
    v7 = v4[1];
    v10 = *v4;
    v11 = v7;
  }

  else
  {
    sub_18AFCBCB4(&v10);
  }

  v8 = v13;
  a2[2] = v12;
  a2[3] = v8;
  a2[4] = v14;
  result = v11;
  *a2 = v10;
  a2[1] = result;
  return result;
}

float32x4_t sub_18AFBFB14(float32x4_t *a1)
{
  v2 = vaddq_f32(a1[1], v1[1]);
  *v1 = vaddq_f32(*a1, *v1);
  v1[1] = v2;
  v3 = vaddq_f32(a1[3], v1[3]);
  v1[2] = vaddq_f32(a1[2], v1[2]);
  v1[3] = v3;
  result = vaddq_f32(a1[4], v1[4]);
  v1[4] = result;
  return result;
}

float32x4_t sub_18AFBFB50(double a1)
{
  v2 = a1;
  v3 = vmulq_n_f32(v1[1], v2);
  *v1 = vmulq_n_f32(*v1, v2);
  v1[1] = v3;
  v4 = vmulq_n_f32(v1[3], v2);
  v1[2] = vmulq_n_f32(v1[2], v2);
  v1[3] = v4;
  result = vmulq_n_f32(v1[4], v2);
  v1[4] = result;
  return result;
}

uint64_t _s7SwiftUI12_ColorMatrixV13DesignLibraryE3YCCV2eeoiySbAF_AFtFZ_0(float *a1, float *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    return sub_18AFCCCB4();
  }

  else
  {
    return 0;
  }
}

uint64_t _s7SwiftUI12_ColorMatrixV13DesignLibraryE4FillO2eeoiySbAF_AFtFZ_0(int *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v7 = *a2;
  v6 = a2[1];
  v8 = *(a2 + 4);
  v9 = *(a2 + 20);
  if (!*(a1 + 20))
  {
    v12 = *a1;
    v13 = v2;
    v14 = v4;
    v15 = v3;
    v16 = v5;
    if (!v9)
    {
      goto LABEL_4;
    }

LABEL_6:
    v10 = 0;
    return v10 & 1;
  }

  if (*(a1 + 20) != 1)
  {
    v12 = *a1;
    v13 = v2;
    v14 = v4;
    v15 = v3;
    v16 = v5;
    if (v9 == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  v12 = *a1;
  v13 = v2;
  v14 = v4;
  v15 = v3;
  v16 = v5;
  if (v9 != 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v17[0] = v7;
  v17[1] = v6;
  v18 = v8;
  v10 = MEMORY[0x18CFEC270](&v12, v17);
  return v10 & 1;
}

unint64_t sub_18AFBFC68()
{
  result = qword_1EA99BFB8;
  if (!qword_1EA99BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BFB8);
  }

  return result;
}

unint64_t sub_18AFBFCC0()
{
  result = qword_1EA99BFC0;
  if (!qword_1EA99BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BFC0);
  }

  return result;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t _s4FillOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 21))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 20);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s4FillOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t StylePlacement.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

double View.style<A>(_:for:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a7;
  v21 = a5;
  v22 = a6;
  v11 = sub_18AFCE074();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  v16 = *a2;
  swift_getKeyPath();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  v19 = v22;
  *(v18 + 4) = v21;
  *(v18 + 5) = v19;
  (*(v12 + 32))(&v18[v17], v15, v11);
  v18[v17 + v13] = v16;
  sub_18AFCCB74();

  return result;
}

uint64_t EnvironmentValues.componentStyles.getter()
{
  sub_18AECEF04();
  sub_18AFCC484();
  return v1;
}

uint64_t sub_18AFC00A4(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a3;
  v10 = sub_18AFCE074();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25[-v12];
  v14 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25[-v20];
  (*(v11 + 16))(v13, a2, v10, v19);
  if ((*(v14 + 48))(v13, 1, a5) == 1)
  {
    return (*(v11 + 8))(v13, v10);
  }

  (*(v14 + 32))(v21, v13, a5);
  (*(v14 + 16))(v17, v21, a5);
  v23 = sub_18AFCBCD4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *a1;
  sub_18AFC1024(v23, v26, isUniquelyReferenced_nonNull_native);
  *a1 = v27;
  return (*(v14 + 8))(v21, a5);
}

uint64_t sub_18AFC02FC(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(sub_18AFCE074() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));
  v9 = *(v8 + *(v7 + 64));

  return sub_18AFC00A4(a1, v8, v9, v3, v4, v5, v6);
}

void *sub_18AFC03B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AFABF4C(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

void (*EnvironmentValues.componentStyles.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_18AECEF04();
  sub_18AFCC484();
  return sub_18AFC044C;
}

void sub_18AFC044C(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_18AFCC494();
  }

  else
  {
    sub_18AFCC494();
  }
}

unint64_t sub_18AFC04E4()
{
  result = qword_1EA997890;
  if (!qword_1EA997890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997890);
  }

  return result;
}

unint64_t sub_18AFC0548()
{
  result = qword_1EA99BFD0;
  if (!qword_1EA99BFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99BFC8, &qword_18AFE25A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BFD0);
  }

  return result;
}

unint64_t sub_18AFC05D0()
{
  result = qword_1EA99BFD8[0];
  if (!qword_1EA99BFD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA99BFD8);
  }

  return result;
}

void sub_18AFC0624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v42 = sub_18AFCCED4();
  v5 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A0, &qword_18AFE0020);
  v40 = v4;
  v8 = sub_18AFCE214();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v37 = (v5 + 16);
    v38 = v7;
    v39 = v5;
    v16 = (v5 + 32);
    v17 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v39 + 72);
      v26 = v23 + v25 * v22;
      if (v40)
      {
        (*v16)(v41, v26, v42);
      }

      else
      {
        (*v37)(v41, v26, v42);
      }

      sub_18AFCE294();
      MEMORY[0x18CFED610](v24);
      v27 = sub_18AFCE2E4();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v24;
      (*v16)((*(v9 + 56) + v25 * v18), v41, v42);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v7 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_18AFC0988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = _s17ResolvedCompositeV3KeyVMa(0);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCC0, &unk_18AFE0030);
  v51 = v4;
  v9 = sub_18AFCE214();
  v10 = v9;
  if (*(v8 + 16))
  {
    v44 = v3;
    v11 = 0;
    v12 = *(v8 + 64);
    v45 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    v47 = v9;
    v48 = v8;
    v46 = v16;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v20 = (v15 - 1) & v15;
LABEL_15:
      v23 = v19 | (v11 << 6);
      v24 = *(v8 + 48);
      v52 = *(v49 + 72);
      v53 = v20;
      v25 = v24 + v52 * v23;
      if (v51)
      {
        sub_18AF5EB60(v25, v7);
      }

      else
      {
        sub_18AF5EAFC(v25, v7);
      }

      v26 = *(*(v8 + 56) + 8 * v23);
      sub_18AFCE294();
      v27 = *v7;
      v28 = *(v7 + 2) | (v7[12] << 32);
      v29 = v7[13];
      v30 = v7[14];
      v32 = *(v7 + 2);
      v31 = *(v7 + 3);
      v33 = v7[32];
      v34 = v7[33];
      v54 = v7[34];
      v55 = *(v7 + 5);
      sub_18AFB4928(v56, v27, v28);
      MEMORY[0x18CFED610](v29);
      MEMORY[0x18CFED610](v30);
      MEMORY[0x18CFED610](v32);
      MEMORY[0x18CFED610](v31);
      MEMORY[0x18CFED610](v33);
      MEMORY[0x18CFED610](v34);
      MEMORY[0x18CFED610](v54);
      MEMORY[0x18CFED610](v55);
      sub_18AFCBB34();
      sub_18AFC14E0();
      sub_18AFCDDA4();
      v35 = sub_18AFCE2E4();
      v10 = v47;
      v36 = -1 << *(v47 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v17 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v8 = v48;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v17 + 8 * v38);
          if (v42 != -1)
          {
            v18 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v37) & ~*(v17 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v8 = v48;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_18AF5EB60(v7, v10[6] + v52 * v18);
      *(v10[7] + 8 * v18) = v26;
      ++v10[2];
      v16 = v46;
      v15 = v53;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v45[v11];
      ++v21;
      if (v22)
      {
        v19 = __clz(__rbit64(v22));
        v20 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v8 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v45, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v45 = -1 << v43;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_18AFC0D94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCA8, &unk_18AFE0010);
  v31 = v4;
  v6 = sub_18AFCE214();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_18AFCE294();
      MEMORY[0x18CFED610](v20);
      v22 = sub_18AFCE2E4();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_18AFC1024(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_18AECE2E8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_18AFC0D94(v14, a3 & 1);
      v9 = sub_18AECE2E8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_18AFCE274();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_18AFC1384();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

void sub_18AFC1170()
{
  v1 = v0;
  v2 = _s17ResolvedCompositeV3KeyVMa(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCC0, &unk_18AFE0030);
  v6 = *v0;
  v7 = sub_18AFCE204();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    v9 = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_18AF5EAFC(*(v6 + 48) + v22, v5);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_18AF5EB60(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_18AFC1384()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCA8, &unk_18AFE0010);
  v2 = *v0;
  v3 = sub_18AFCE204();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

unint64_t sub_18AFC14E0()
{
  result = qword_1ED56AA48;
  if (!qword_1ED56AA48)
  {
    sub_18AFCBB34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56AA48);
  }

  return result;
}

uint64_t sub_18AFC1538(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AFC15B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
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

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_18AFC1724(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

double sub_18AFC1968@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v6 + *(a1 + 36)) == 1)
  {
    sub_18AFCD024();
  }

  else
  {
    sub_18AFCC9F4();
  }

  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  return result;
}

double sub_18AFC19DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18AFC1968(a1, v9);
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v10;
  return result;
}

void (*sub_18AFC1A20(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AEE786C;
}

uint64_t sub_18AFC1AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4440](a1, a2, a3, WitnessTable);
}

uint64_t sub_18AFC1B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, WitnessTable);
}

uint64_t sub_18AFC1BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4410](a1, WitnessTable);
}

uint64_t sub_18AFC1C3C()
{
  sub_18AEB4960();
  sub_18AFCC484();
  result = v1;
  if (!v1)
  {
    result = sub_18AFCC1C4();
    if (!result)
    {
      return sub_18AFCCCD4();
    }
  }

  return result;
}

uint64_t sub_18AFC1C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AFC1CFC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_18AFC1CFC()
{
  result = qword_1EA99C060;
  if (!qword_1EA99C060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998708, qword_18AFD6070);
    sub_18AFC1D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C060);
  }

  return result;
}

unint64_t sub_18AFC1D80()
{
  result = qword_1EA99C068;
  if (!qword_1EA99C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C068);
  }

  return result;
}

uint64_t EnvironmentValues.controlContext.getter()
{
  sub_18AEB10A8();

  return sub_18AFCC484();
}

uint64_t sub_18AFC1EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AFC204C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.controlContext.modify(uint64_t a1))()
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_18AEB10A8();
  sub_18AFCC484();
  return sub_18AFC1F64;
}

unint64_t sub_18AFC1FA0()
{
  result = qword_1EA99C070;
  if (!qword_1EA99C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C070);
  }

  return result;
}

unint64_t sub_18AFC1FF8()
{
  result = qword_1EA99C078;
  if (!qword_1EA99C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C078);
  }

  return result;
}

unint64_t sub_18AFC204C()
{
  result = qword_1EA99C080;
  if (!qword_1EA99C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C080);
  }

  return result;
}

unint64_t sub_18AFC20A4()
{
  result = qword_1EA99C088;
  if (!qword_1EA99C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C088);
  }

  return result;
}

uint64_t ControlStateValue.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

void sub_18AFC21F0(uint64_t a1@<X8>)
{
  v3 = CTFontCopyAttribute(v1, *MEMORY[0x1E6965900]);
  if (!v3)
  {
    goto LABEL_8;
  }

  v75[0] = v3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99C090, &unk_18AFE2B30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_8:
    v7 = 1;
    LOBYTE(v75[0]) = 1;
    LOBYTE(v79) = 1;
    v80 = 1;
    goto LABEL_9;
  }

  v4 = v79;
  v5 = CTFontCopyVariation(v1);
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v75[0] = 0;
      sub_18AE9ADC0();
      sub_18AE9AE0C();
      sub_18AFCDD74();
    }
  }

  v16 = sub_18AFABC3C(MEMORY[0x1E69E7CC0]);
  v7 = 1;
  LOBYTE(v75[0]) = 1;
  LOBYTE(v79) = 1;
  v76 = 1;
  v80 = 1;
  v78 = 1;
  v77 = 1;
  v17 = v4[2];
  if (v17)
  {
    v18 = *MEMORY[0x1E6965910];
    v62 = *MEMORY[0x1E6965908];
    v60 = *MEMORY[0x1E6965920];
    v58 = v16 & 0xC000000000000001;
    v59 = *MEMORY[0x1E6965918];
    v61 = v16;
    v19 = 0uLL;
    v20 = 4;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    while (1)
    {
      v26 = v4[v20];
      if (*(v26 + 16))
      {
        v67 = v25;
        v69 = v24;
        v71 = v23;
        v73 = v22;
        v63 = v21;
        v65 = v19;

        v27 = sub_18AE9AE8C(v18);
        if ((v28 & 1) == 0)
        {
          goto LABEL_14;
        }

        sub_18AE9B098(*(v26 + 56) + 32 * v27, v75);
        sub_18AE9ADC0();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_14;
        }

        v29 = v79;
        v30 = [v79 unsignedIntValue];

        if (!*(v26 + 16) || (v31 = sub_18AE9AE8C(v62), (v32 & 1) == 0))
        {
LABEL_34:

          v21 = v63;
          v19 = v65;
LABEL_35:
          v22 = v73;
          v24 = v69;
          v23 = v71;
          v25 = v67;
          goto LABEL_16;
        }

        sub_18AE9B098(*(v26 + 56) + 32 * v31, v75);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_14;
        }

        v33 = v79;
        [v79 doubleValue];
        v57 = v34;

        if (!*(v26 + 16))
        {
          goto LABEL_34;
        }

        v35 = sub_18AE9AE8C(v60);
        if ((v36 & 1) == 0)
        {
          goto LABEL_34;
        }

        sub_18AE9B098(*(v26 + 56) + 32 * v35, v75);
        if (swift_dynamicCast())
        {
          v37 = v79;
          [v79 doubleValue];
          v56 = v38;

          if (!*(v26 + 16))
          {
            goto LABEL_34;
          }

          v39 = sub_18AE9AE8C(v59);
          if ((v40 & 1) == 0)
          {
            goto LABEL_34;
          }

          sub_18AE9B098(*(v26 + 56) + 32 * v39, v75);

          if (swift_dynamicCast())
          {
            v41 = v79;
            [v79 doubleValue];
            v54 = v42;

            if (v30 > 1936486003)
            {
              switch(v30)
              {
                case 0x736C6E74:
                  v43 = 2;
                  goto LABEL_44;
                case 0x77676874:
                  v55 = 0;
LABEL_45:
                  v44 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
                  v45 = v44;
                  if (v58)
                  {
                    v46 = sub_18AFCE1D4();
                    if (v46)
                    {
                      v79 = v46;
                      swift_dynamicCast();
                      v47 = v75[0];
                      goto LABEL_51;
                    }

LABEL_53:
                    v47 = v45;
                    v53 = v57;
                    v51 = v55;
LABEL_54:

                    *&v50 = v53;
                  }

                  else
                  {
                    if (!*(v61 + 16))
                    {
                      goto LABEL_53;
                    }

                    v48 = sub_18AE9B0F4(v44);
                    if ((v49 & 1) == 0)
                    {
                      goto LABEL_53;
                    }

                    v47 = *(*(v61 + 56) + 8 * v48);
LABEL_51:

                    *&v50 = v57;
                    v51 = v55;
                    if (v47)
                    {
                      [v47 doubleValue];
                      v53 = v52;
                      goto LABEL_54;
                    }
                  }

                  if (v51 != 5)
                  {
                    v22 = v73;
                    v24 = v69;
                    v23 = v71;
                    v25 = v67;
                    if (v51 == 1)
                    {
                      *&v23 = v56;
                      *(&v50 + 1) = v57;
                      *(&v23 + 1) = v54;
                      v78 = 0;
                      v22 = v50;
                      v21 = v63;
                      v19 = v65;
                    }

                    else
                    {
                      v21 = v63;
                      v19 = v65;
                      if (!v51)
                      {
                        *&v25 = v56;
                        *(&v50 + 1) = v57;
                        *(&v25 + 1) = v54;
                        v80 = 0;
                        v24 = v50;
                      }
                    }

                    goto LABEL_16;
                  }

                  *&v21 = v56;
                  *(&v50 + 1) = v57;
                  *(&v21 + 1) = v54;
                  v77 = 0;
                  v19 = v50;
                  goto LABEL_35;
                case 0x77647468:
                  v43 = 1;
                  goto LABEL_44;
              }
            }

            else
            {
              switch(v30)
              {
                case 0x48474854:
                  v43 = 5;
LABEL_44:
                  v55 = v43;
                  goto LABEL_45;
                case 0x6974616C:
                  v43 = 4;
                  goto LABEL_44;
                case 0x6F70737A:
                  v43 = 3;
                  goto LABEL_44;
              }
            }
          }
        }

        else
        {
LABEL_14:
        }

        v21 = v63;
        v19 = v65;
        v22 = v73;
        v24 = v69;
        v23 = v71;
        v25 = v67;
      }

LABEL_16:
      ++v20;
      if (!--v17)
      {
        v64 = v21;
        v66 = v19;
        v74 = v22;
        v70 = v24;
        v72 = v23;
        v68 = v25;
        swift_unknownObjectRelease();

        v15 = v68;
        v14 = v70;
        v13 = v72;
        v12 = v74;
        v11 = v64;
        v8 = v66;
        v7 = v80;
        v9 = v78;
        v10 = v77;
        goto LABEL_10;
      }
    }
  }

  swift_unknownObjectRelease();

LABEL_9:
  v8 = 0uLL;
  v9 = 1;
  v10 = 1;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
LABEL_10:
  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v7;
  *(a1 + 40) = v12;
  *(a1 + 56) = v13;
  *(a1 + 72) = v9;
  *(a1 + 80) = v8;
  *(a1 + 96) = v11;
  *(a1 + 112) = v10;
}

uint64_t EnvironmentValues.designIdiom.getter()
{
  sub_18AE7A260();

  return sub_18AFCC484();
}

uint64_t DesignIdiom.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

uint64_t (*EnvironmentValues.designIdiom.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_18AE7A260();
  sub_18AFCC484();
  return sub_18AFC298C;
}

uint64_t getEnumTagSinglePayload for DesignIdiom(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DesignIdiom(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18AFC2B18@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a4;
  v34 = a2;
  v30 = a1;
  v31 = a3;
  v37 = a7;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58, &qword_18AFDA3C0);
  sub_18AFC3004(&qword_1EA998B60, MEMORY[0x1E697DDC8]);
  v15 = sub_18AFCBDC4();
  v32 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  v21 = sub_18AFCC624();
  v36 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v29 - v22;
  if (v34 & 1) != 0 || (v33)
  {
    sub_18AEADA5C();
    sub_18AEADA5C();
    v44 = sub_18AFC3004(&qword_1EA998B88, MEMORY[0x1E697DDD0]);
    v45 = a6;
    swift_getWitnessTable();
    sub_18AEB5360(v11, v15, a5);
    v24 = *(v9 + 8);
    v24(v11, a5);
    v24(v14, a5);
  }

  else
  {
    v25 = swift_allocObject();
    v25[2] = a5;
    v25[3] = a6;
    v26 = v31;
    v25[4] = v30;
    v25[5] = v26;
    MEMORY[0x1EEE9AC00](v25);
    *(&v29 - 4) = a5;
    *(&v29 - 3) = a6;
    *(&v29 - 2) = v35;
    sub_18AFC313C(sub_18AFC3130, (&v29 - 6), v17);

    v38 = sub_18AFC3004(&qword_1EA998B88, MEMORY[0x1E697DDD0]);
    v39 = a6;
    swift_getWitnessTable();
    sub_18AEADA5C();
    v27 = *(v32 + 8);
    v27(v17, v15);
    sub_18AEADA5C();
    sub_18AEB5268(v17, v15);
    v27(v17, v15);
    v27(v20, v15);
  }

  v42 = sub_18AFC3004(&qword_1EA998B88, MEMORY[0x1E697DDD0]);
  v43 = a6;
  WitnessTable = swift_getWitnessTable();
  v41 = a6;
  swift_getWitnessTable();
  sub_18AEADA5C();
  return (*(v36 + 8))(v23, v21);
}

uint64_t sub_18AFC3004(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58, &qword_18AFDA3C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18AFC3054(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AEADA5C();
  sub_18AEADA5C();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_18AFC313C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_18AFC31B4();
  return sub_18AFC3A04(a1, a2, &type metadata for BaselineLayout, v7, v9, v8, a3);
}

unint64_t sub_18AFC31B4()
{
  result = qword_1EA99C098;
  if (!qword_1EA99C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C098);
  }

  return result;
}

uint64_t sub_18AFC3218(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0, &qword_18AFE2E40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-v4];
  v6 = sub_18AFCBD64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18AFC3BAC(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_18AF0A900(v5);
  }

  (*(v7 + 32))(v9, v5, v6);
  v11[8] = a2 & 1;
  v11[0] = 0;
  sub_18AFCBD44();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_18AFC33FC(uint64_t a1, char a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v13 = sub_18AFCBF34();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0, &qword_18AFE2E40);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v32[-v18];
  v20 = sub_18AFCBD64();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v32[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18AFC3BAC(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    return sub_18AF0A900(v19);
  }

  (*(v21 + 32))(v23, v19, v20);
  v25 = a2 & 1;
  v32[40] = v25;
  v32[32] = 0;
  sub_18AFCBD34();
  v26 = sub_18AFCC4C4();
  MEMORY[0x18CFEB280](v26);
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  if (v27)
  {
    CGRectGetMinX(*&v28);
    v33.origin.x = a3;
    v33.origin.y = a4;
    v33.size.width = a5;
    v33.size.height = a6;
    CGRectGetMinY(v33);
    sub_18AFCDC54();
    v32[24] = v25;
    v32[16] = 0;
  }

  else
  {
    CGRectGetMinX(*&v28);
    v34.origin.x = a3;
    v34.origin.y = a4;
    v34.size.width = a5;
    v34.size.height = a6;
    CGRectGetMinY(v34);
    sub_18AFCDC54();
    v32[8] = v25;
    v32[0] = 0;
  }

  sub_18AFCBD54();
  (*(v14 + 8))(v16, v13);
  return (*(v21 + 8))(v23, v20);
}

void (*sub_18AFC377C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AEE786C;
}

unint64_t sub_18AFC3808()
{
  result = qword_1EA99C0A0;
  if (!qword_1EA99C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C0A0);
  }

  return result;
}

void sub_18AFC385C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<D0>, double a6@<D1>, uint64_t a7@<X8>)
{
  if (a1)
  {
    v14 = sub_18AFCC8B4();
  }

  else
  {
    v14 = sub_18AFCC844();
  }

  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = a6;
  *(v16 + 48) = v15;
  *(v16 + 49) = a2 & 1;
  MEMORY[0x1EEE9AC00](v16);
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = v7;
  sub_18AFC5870(sub_18AFC3D14, v17, a7);
}

void sub_18AFC3944(double a1@<D0>, double a2@<D1>, uint64_t a3@<X0>, char a4@<W1>, uint64_t a5@<X2>, uint64_t a6@<X3>, uint64_t a7@<X8>)
{
  v14 = MEMORY[0x18CFEBC30](a3);
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  *(v15 + 48) = v14;
  *(v15 + 49) = a4;
  v16[2] = a5;
  v16[3] = a6;
  v17 = v7;
  sub_18AFC5870(sub_18AFC5AA8, v16, a7);
}

uint64_t sub_18AFC3A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18AFCBBE4();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_18AFCBBF4();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_18AFCBDD4();
}

uint64_t sub_18AFC3BAC@<X0>(uint64_t a1@<X8>)
{
  sub_18AFCBE84();
  sub_18AF0A8A8(v3);
  sub_18AFCDFC4();
  sub_18AFCDFE4();
  if (v11[4] == v11[0])
  {
    v4 = sub_18AFCBD64();
    return (*(*(v4 - 8) + 56))(a1, 1, 1, v4);
  }

  else
  {
    v6 = sub_18AFCE004();
    v8 = v7;
    v9 = sub_18AFCBD64();
    v10 = *(v9 - 8);
    (*(v10 + 16))(a1, v8, v9);
    v6(v11, 0);
    return (*(v10 + 56))(a1, 0, 1, v9);
  }
}

unint64_t sub_18AFC3D34()
{
  result = qword_1EA99C0A8;
  if (!qword_1EA99C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C0A8);
  }

  return result;
}

uint64_t sub_18AFC3D88(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AEADA5C();
  sub_18AEADA5C();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_18AFC3E64(uint64_t a1)
{
  v1 = a1;
  if (sub_18AFCC884() == a1 || sub_18AFCC8A4() == v1 || sub_18AFCC844() == v1)
  {
    return 0;
  }

  if (sub_18AFCC864() == v1 || sub_18AFCC874() == v1 || sub_18AFCC8B4() == v1)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_18AFC3EF8(uint64_t a1)
{
  v1 = a1;
  if (sub_18AFCC884() == a1 || sub_18AFCC8A4() == v1 || sub_18AFCC844() == v1)
  {
    return 1;
  }

  if (sub_18AFCC864() == v1 || sub_18AFCC874() == v1)
  {
    return 0;
  }

  return 2 * (sub_18AFCC8B4() != v1);
}

void sub_18AFC3F8C(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, double a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, double *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v10 = a7;
  v115 = a6;
  v116 = a4;
  v117 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0, &qword_18AFE2E40);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v104 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v114 = &v104 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v104 - v26;
  v28 = sub_18AFC3E64(v10 & 0x1FF);
  if (v28 == 2 || (v29 = v28, sub_18AFC3EF8(v10 & 0x1FF) == 2))
  {
    sub_18AFC596C(v117, v19);
    v30 = sub_18AFCBD64();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v19, 1, v30) == 1)
    {
      sub_18AF0A900(v19);
      v32 = 0.0;
      v33 = 0.0;
    }

    else
    {
      LOBYTE(v118[0]) = a3 & 1;
      v119 = a5 & 1;
      sub_18AFCBD44();
      v32 = v34;
      v33 = v35;
      (*(v31 + 8))(v19, v30);
    }

    v36 = sub_18AFC59DC(v10, 0.0);
    goto LABEL_7;
  }

  v40 = sub_18AFC59DC(v10, a10);
  v112 = v41;
  v113 = v42;
  v44 = v43;
  v45 = sub_18AFC59DC(v10, a9);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = sub_18AFCC834();
  v53 = sub_18AFCC834();
  v111 = a2;
  if (v52 == v53)
  {
    v54 = a3;
  }

  else
  {
    a2 = v116;
    v54 = a5;
  }

  v55 = sub_18AFCC834();
  if (v55 == sub_18AFCC834())
  {
    v108 = a2;
    v107 = 0.0;
    v106 = 1;
  }

  else
  {
    v107 = a2;
    v106 = v54;
    LOBYTE(v54) = 1;
    v108 = 0.0;
  }

  sub_18AFC596C(v117, v27);
  v56 = sub_18AFCBD64();
  v57 = *(v56 - 8);
  v58 = *(v57 + 48);
  v110 = v57 + 48;
  v109 = v58;
  v59 = v58(v27, 1, v56);
  v105 = v57;
  if (v59 == 1)
  {
    sub_18AF0A900(v27);
    v60 = 0.0;
    v61 = 0.0;
  }

  else
  {
    LOBYTE(v118[0]) = v106 & 1;
    v119 = v54 & 1;
    sub_18AFCBD44();
    v60 = v62;
    v61 = v63;
    (*(v57 + 8))(v27, v56);
  }

  v64 = v111;
  v65 = sub_18AFCC834();
  v66 = sub_18AFCC834();
  if (v65 == v66)
  {
    v67 = a3;
  }

  else
  {
    v67 = a5;
  }

  if (v67)
  {
    v68 = 0.0;
    sub_18AFC596C(v117, v22);
    if (v109(v22, 1, v56) == 1)
    {
      sub_18AF0A900(v22);
      v69 = 0.0;
    }

    else
    {
      LOBYTE(v118[0]) = a3 & 1;
      v119 = a5 & 1;
      sub_18AFCBD44();
      v68 = v88;
      v69 = v89;
      (*(v105 + 8))(v22, v56);
    }

    v36 = v40;
    v37 = v112;
    v39 = v113;
    v38 = v44;
    v90 = 0.0 - v44;
    if (v68 - (0.0 - v112) - (0.0 - v113) < 0.0)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v68 - (0.0 - v112) - (0.0 - v113);
    }

    v91 = v69 - (0.0 - v40);
LABEL_48:
    v92 = v91 - v90;
    if (v92 < 0.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v92;
    }

    goto LABEL_7;
  }

  v111 = v51;
  v70 = v49;
  v71 = v47;
  v72 = v45;
  if (v65 == v66)
  {
    v73 = v64;
  }

  else
  {
    v73 = v116;
  }

  v74 = v73;
  v75 = sub_18AFCC834();
  if (v75 == sub_18AFCC834())
  {
    v76 = v60;
  }

  else
  {
    v76 = v61;
  }

  v77 = v40 + v44;
  v78 = v112;
  v79 = v113;
  if ((v29 & 1) == 0)
  {
    v77 = v112 + v113;
  }

  if (v77 + v76 <= v74)
  {
    v86 = v40;
    v87 = v44;
    v84 = a3 & 1;
    LOBYTE(v118[0]) = a3 & 1;
    v85 = a5 & 1;
    v119 = a5 & 1;
    goto LABEL_52;
  }

  v80 = sub_18AFCC834();
  if (v80 == sub_18AFCC834())
  {
    v81 = v60;
  }

  else
  {
    v81 = v61;
  }

  if (v29)
  {
    v82 = v72 + v70;
  }

  else
  {
    v82 = v71 + v111;
  }

  v83 = v82 + v81;
  if (v83 <= v74)
  {
    v93 = sub_18AFCC834();
    if (v93 == sub_18AFCC834())
    {
      v94 = v60;
    }

    else
    {
      v94 = v61;
    }

    v36 = sub_18AFC59DC(v10, (v74 - v94) * 0.5);
    v90 = 0.0 - v38;
    if (v60 - (0.0 - v37) - (0.0 - v39) < 0.0)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v60 - (0.0 - v37) - (0.0 - v39);
    }

    v91 = v61 - (0.0 - v36);
    goto LABEL_48;
  }

  if ((v115 & 1) != 0 && (v10 & 0x100) != 0 && v83 > 2.0)
  {
    v84 = a3 & 1;
    LOBYTE(v118[0]) = a3 & 1;
    v85 = a5 & 1;
    v119 = a5 & 1;
    v86 = v40;
    v78 = v112;
    v79 = v113;
    v87 = v44;
LABEL_52:
    sub_18AFC4760(v84, v85, v117, v118, v86, v78, v87, v79);
    v32 = v118[0];
    v33 = v118[1];
    v36 = v118[2];
    v37 = v118[3];
    v38 = v118[4];
    v39 = v118[5];
    goto LABEL_7;
  }

  v95 = v114;
  v96 = v105;
  v97 = v109;
  sub_18AFC596C(v117, v114);
  v98 = v97(v95, 1, v56);
  v99 = v111;
  if (v98 == 1)
  {
    sub_18AF0A900(v95);
    v100 = 0.0;
    v101 = 0.0;
  }

  else
  {
    LOBYTE(v118[0]) = a3 & 1;
    v119 = a5 & 1;
    sub_18AFCBD44();
    v100 = v102;
    v101 = v103;
    (*(v96 + 8))(v95, v56);
  }

  if (v100 - (0.0 - v71) - (0.0 - v99) < 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v100 - (0.0 - v71) - (0.0 - v99);
  }

  if (v101 - (0.0 - v72) - (0.0 - v70) < 0.0)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v101 - (0.0 - v72) - (0.0 - v70);
  }

  v36 = v72;
  v37 = v71;
  v38 = v70;
  v39 = v99;
LABEL_7:
  *a8 = v32;
  a8[1] = v33;
  a8[2] = v36;
  a8[3] = v37;
  a8[4] = v38;
  a8[5] = v39;
}

uint64_t sub_18AFC4760@<X0>(char a2@<W1>, char a3@<W3>, uint64_t a4@<X4>, double *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0, &qword_18AFE2E40);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v29[-v18];
  v20 = 0.0;
  sub_18AFC596C(a4, &v29[-v18]);
  v21 = sub_18AFCBD64();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    result = sub_18AF0A900(v19);
    v24 = 0.0;
  }

  else
  {
    v29[8] = a2 & 1;
    v29[0] = a3 & 1;
    sub_18AFCBD44();
    v20 = v25;
    v24 = v26;
    result = (*(v22 + 8))(v19, v21);
  }

  v27 = 0.0;
  v28 = v20 - (0.0 - a7) - (0.0 - a9);
  if (v28 < 0.0)
  {
    v28 = 0.0;
  }

  if (v24 - (0.0 - a6) - (0.0 - a8) >= 0.0)
  {
    v27 = v24 - (0.0 - a6) - (0.0 - a8);
  }

  *a5 = v28;
  a5[1] = v27;
  a5[2] = a6;
  a5[3] = a7;
  a5[4] = a8;
  a5[5] = a9;
  return result;
}

uint64_t sub_18AFC4964(uint64_t a1, char a2, uint64_t a3, char a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, uint64_t a11, uint64_t a12, int a13)
{
  LODWORD(v34) = a13;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0, &qword_18AFE2E40);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v35[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v35[-1] - v27;
  v29 = sub_18AFCBD64();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v35[-1] - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFC3BAC(v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    return sub_18AF0A900(v28);
  }

  (*(v30 + 32))(v32, v28, v29);
  (*(v30 + 16))(v25, v32, v29);
  (*(v30 + 56))(v25, 0, 1, v29);
  LOBYTE(v35[0]) = a2 & 1;
  v36 = a4 & 1;
  sub_18AFC3F8C(v25, *&a1, a2 & 1, *&a3, a4 & 1, 1, LOWORD(v34) & 0x1FF, v35, a9, a10);
  v34 = v35[4];
  sub_18AF0A900(v25);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  CGRectGetMinX(v37);
  v38.origin.x = a5;
  v38.origin.y = a6;
  v38.size.width = a7;
  v38.size.height = a8;
  CGRectGetMinY(v38);
  sub_18AFCDC54();
  LOBYTE(v35[0]) = a2 & 1;
  v36 = a4 & 1;
  sub_18AFCBD54();
  return (*(v30 + 8))(v32, v29);
}

uint64_t sub_18AFC4C9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, uint64_t a12, uint64_t a13, int a14)
{
  v44 = a14;
  v45 = a5;
  v46 = a1;
  v23 = sub_18AFCBF34();
  v47 = *(v23 - 8);
  v48 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0, &qword_18AFE2E40);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v44 - v30;
  v32 = sub_18AFCBD64();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFC3BAC(v31);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_18AF0A900(v31);
    *&result = 0.0;
  }

  else
  {
    (*(v33 + 32))(v35, v31, v32);
    (*(v33 + 16))(v28, v35, v32);
    (*(v33 + 56))(v28, 0, 1, v32);
    LOBYTE(v49[0]) = a3 & 1;
    v37 = v45;
    v50 = v45 & 1;
    sub_18AFC3F8C(v28, *&a2, a3 & 1, *&a4, v45 & 1, 1, v44 & 0x1FF, v49, a10, a11);
    v38 = v49[2];
    sub_18AF0A900(v28);
    LOBYTE(v49[0]) = a3 & 1;
    v50 = v37 & 1;
    sub_18AFCBD34();
    v39 = MEMORY[0x18CFEB280](v46);
    if (v40)
    {
      v41 = v39;
      (*(v47 + 8))(v25, v48);
      (*(v33 + 8))(v35, v32);
      return v41;
    }

    else
    {
      v42 = *&v39;
      v51.origin.x = a6;
      v51.origin.y = a7;
      v51.size.width = a8;
      v51.size.height = a9;
      MinY = CGRectGetMinY(v51);
      (*(v47 + 8))(v25, v48);
      (*(v33 + 8))(v35, v32);
      *&result = v38 + MinY + v42;
    }
  }

  return result;
}

uint64_t sub_18AFC5094(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, uint64_t a12, uint64_t a13, int a14)
{
  v44 = a14;
  v45 = a5;
  v46 = a1;
  v23 = sub_18AFCBF34();
  v47 = *(v23 - 8);
  v48 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0, &qword_18AFE2E40);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v44 - v30;
  v32 = sub_18AFCBD64();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFC3BAC(v31);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_18AF0A900(v31);
    *&result = 0.0;
  }

  else
  {
    (*(v33 + 32))(v35, v31, v32);
    (*(v33 + 16))(v28, v35, v32);
    (*(v33 + 56))(v28, 0, 1, v32);
    LOBYTE(v49[0]) = a3 & 1;
    v37 = v45;
    v50 = v45 & 1;
    sub_18AFC3F8C(v28, *&a2, a3 & 1, *&a4, v45 & 1, 1, v44 & 0x1FF, v49, a10, a11);
    v38 = v49[3];
    sub_18AF0A900(v28);
    LOBYTE(v49[0]) = a3 & 1;
    v50 = v37 & 1;
    sub_18AFCBD34();
    v39 = MEMORY[0x18CFEB290](v46);
    if (v40)
    {
      v41 = v39;
      (*(v47 + 8))(v25, v48);
      (*(v33 + 8))(v35, v32);
      return v41;
    }

    else
    {
      v42 = *&v39;
      v51.origin.x = a6;
      v51.origin.y = a7;
      v51.size.width = a8;
      v51.size.height = a9;
      MinX = CGRectGetMinX(v51);
      (*(v47 + 8))(v25, v48);
      (*(v33 + 8))(v35, v32);
      *&result = v38 + MinX + v42;
    }
  }

  return result;
}

double sub_18AFC548C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0, &qword_18AFE2E40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = *v4;
  v13 = *(v4 + 8);
  v14 = *(v4 + 16);
  v15 = *(v4 + 17);
  sub_18AFC3BAC(&v19 - v10);
  LOBYTE(v20) = a2 & 1;
  v21 = a4 & 1;
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  sub_18AFC3F8C(v11, *&a1, a2 & 1, *&a3, a4 & 1, 0, v16 | v14, &v20, v12, v13);
  v17 = v20;
  sub_18AF0A900(v11);
  return v17;
}

uint64_t sub_18AFC55A8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v11 = a2 & 1;
  v12 = a4 & 1;
  if (*(v10 + 17))
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  return sub_18AFC4964(a1, v11, a3, v12, a7, a8, a9, a10, *v10, *(v10 + 8), a5, a6, v13 | *(v10 + 16));
}

uint64_t sub_18AFC564C(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(uint64_t, uint64_t, __n128, __n128, __n128, __n128, __n128, __n128))
{
  a5.n128_u64[0] = *v16;
  a6.n128_u64[0] = v16[1];
  return a16(a7, a8, a1, a2, a3, a4, a5, a6);
}

void (*sub_18AFC56A4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AEE786C;
}

uint64_t sub_18AFC572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12(v9);
  sub_18AEADA5C();
  v13 = *(v5 + 8);
  v13(v7, a4);
  sub_18AEADA5C();
  return (v13)(v11, a4);
}

uint64_t sub_18AFC5870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_18AFC3D34();
  return sub_18AFC3A04(a1, a2, &type metadata for FlexiblePaddingLayout, v7, v9, v8, a3);
}

unint64_t sub_18AFC5918()
{
  result = qword_1EA99C0B0[0];
  if (!qword_1EA99C0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA99C0B0);
  }

  return result;
}

uint64_t sub_18AFC596C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0, &qword_18AFE2E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_18AFC59DC(unsigned int a1, double a2)
{
  v3 = sub_18AFCC864();
  sub_18AFCC894();
  if (sub_18AFCC894() == v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  sub_18AFCC884();
  sub_18AFCC894();
  sub_18AFCC894();
  sub_18AFCC874();
  sub_18AFCC894();
  sub_18AFCC894();
  sub_18AFCC8A4();
  sub_18AFCC894();
  sub_18AFCC894();
  return v4;
}

double sub_18AFC5B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_18AFCD104();
  type metadata accessor for CGRect(0);
  sub_18AFCCB54();

  return result;
}

double sub_18AFC5BC0@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return result;
}

uint64_t sub_18AFC5BC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v18[1] = a4;
  type metadata accessor for GeometryMarker(255, a1, a2, a3);
  swift_getWitnessTable();
  v6 = sub_18AFCC694();
  type metadata accessor for CGRect(255);
  sub_18AFCC714();
  v7 = sub_18AFCC044();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v18 - v12;
  WitnessTable = swift_getWitnessTable();
  sub_18AFC5B08(a1, v6, a1, WitnessTable, a2);
  v15 = swift_getWitnessTable();
  v18[2] = WitnessTable;
  v18[3] = v15;
  swift_getWitnessTable();
  sub_18AEADA5C();
  v16 = *(v8 + 8);
  v16(v10, v7);
  sub_18AEADA5C();
  return (v16)(v13, v7);
}

uint64_t GlassGroupContext.multiSegmentInSidebar.getter()
{
  v1 = v0[2];
  if (*v0 == 1)
  {
    v1 &= v0[1] ^ 1;
  }

  return v1 & 1;
}

uint64_t EnvironmentValues.glassGroupContext.getter()
{
  sub_18AEC8720();

  return sub_18AFCC484();
}

DesignLibrary::GlassGroupContext __swiftcall GlassGroupContext.init(isFirstItemInGroup:isLastItemInGroup:inGlassSidebar:)(Swift::Bool isFirstItemInGroup, Swift::Bool isLastItemInGroup, Swift::Bool inGlassSidebar)
{
  *v3 = isFirstItemInGroup;
  v3[1] = isLastItemInGroup;
  v3[2] = inGlassSidebar;
  result.isFirstItemInGroup = isFirstItemInGroup;
  return result;
}

DesignLibrary::GlassGroupContext __swiftcall GlassGroupContext.init(isFirstItemInGroup:isLastItemInGroup:)(Swift::Bool isFirstItemInGroup, Swift::Bool isLastItemInGroup)
{
  *v2 = isFirstItemInGroup;
  v2[1] = isLastItemInGroup;
  v2[2] = 0;
  result.isFirstItemInGroup = isFirstItemInGroup;
  return result;
}

double GlassGroupContext.hash(into:)()
{
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return result;
}

uint64_t GlassGroupContext.hashValue.getter()
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

double sub_18AFC60AC()
{
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return result;
}

uint64_t sub_18AFC60F8(uint64_t a1)
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC6170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AFC6280();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.glassGroupContext.modify(void *a1))()
{
  *a1 = v1;
  a1[1] = sub_18AEC8720();
  sub_18AFCC484();
  return sub_18AFC6234;
}

uint64_t sub_18AFC6234(_BYTE *a1)
{
  v1 = a1[16];
  v2 = a1[18];
  a1[20] = a1[17];
  a1[21] = v2;
  a1[19] = v1;
  return sub_18AFCC494();
}

unint64_t sub_18AFC6280()
{
  result = qword_1EA99C138;
  if (!qword_1EA99C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C138);
  }

  return result;
}

uint64_t InteractionState.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC6390()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18AFCE294();
  sub_18AF4AF54(v1, v2);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC63FC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_18AFCE294();
  sub_18AF4AF54(v2, v3);
  return sub_18AFCE2E4();
}

unint64_t sub_18AFC647C()
{
  result = qword_1EA99C140;
  if (!qword_1EA99C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C140);
  }

  return result;
}

uint64_t sub_18AFC64D0()
{
  v0 = sub_18AFCBB54();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18AFCC224();
  sub_18AEB2440();
  sub_18AFCC484();
  return sub_18AFC6568(v2, v4[15]);
}

uint64_t sub_18AFC6568(uint64_t a1, char a2)
{
  v4 = sub_18AFCBB54();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 88))(a1, v4);
  if (v6 == *MEMORY[0x1E697DC08])
  {
    if (a2)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  else if (v6 == *MEMORY[0x1E697DC20])
  {
    if (a2)
    {
      return 6;
    }

    else
    {
      return 1;
    }
  }

  else if (v6 == *MEMORY[0x1E697DC28])
  {
    if (a2)
    {
      return 7;
    }

    else
    {
      return 2;
    }
  }

  else if (v6 == *MEMORY[0x1E697DC10])
  {
    return 3;
  }

  else if (v6 == *MEMORY[0x1E697DC00])
  {
    return 4;
  }

  else
  {
    (*(v5 + 8))(a1, v4);
    return 2;
  }
}

uint64_t EnvironmentValues.wantsPreSolariumMetrics.getter()
{
  sub_18AEB2440();
  sub_18AFCC484();
  return v1;
}

uint64_t (*EnvironmentValues.wantsPreSolariumMetrics.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_18AEB2440();
  sub_18AFCC484();
  *(a1 + 16) = *(a1 + 17);
  return sub_18AFC67A4;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18AFC6808(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AFC6828(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

void sub_18AFC6874()
{
  if (*(v0 + 8) == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    v1 = *v0;
    sub_18AFCE2B4();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x18CFED640](v2);
  }

  if (*(v0 + 24) == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    v3 = v0[2];
    sub_18AFCE2B4();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFED640](v4);
  }

  if (*(v0 + 40) == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    v5 = v0[4];
    sub_18AFCE2B4();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x18CFED640](v6);
  }

  if (*(v0 + 56) == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    v7 = v0[6];
    sub_18AFCE2B4();
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x18CFED640](v8);
  }
}

uint64_t sub_18AFC6960()
{
  sub_18AFCE294();
  sub_18AFC6874();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC69A4(uint64_t a1)
{
  sub_18AFCE294();
  sub_18AFC6874();
  return sub_18AFCE2E4();
}

BOOL sub_18AFC69E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_18AFC6A94(v5, v7);
}

unint64_t sub_18AFC6A40()
{
  result = qword_1EA99C148;
  if (!qword_1EA99C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C148);
  }

  return result;
}

BOOL sub_18AFC6A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
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

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 56);
  if ((*(a1 + 56) & 1) == 0)
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }

  return (*(a2 + 56) & 1) != 0;
}

uint64_t sub_18AFC6B40@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a4@<X8>)
{
  v7 = sub_18AFCC864();
  sub_18AFCC894();
  v8 = sub_18AFCC894();
  if (v8 == v7)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  v22 = v9;
  v10 = (v8 != v7) | a2;
  v11 = sub_18AFCC884();
  sub_18AFCC894();
  v12 = sub_18AFCC894();
  if (v12 == v11)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  v14 = (v12 != v11) | a2;
  v15 = sub_18AFCC874();
  sub_18AFCC894();
  v16 = sub_18AFCC894();
  if (v16 == v15)
  {
    v17 = a1;
  }

  else
  {
    v17 = 0;
  }

  v18 = (v16 != v15) | a2;
  v19 = sub_18AFCC8A4();
  sub_18AFCC894();
  result = sub_18AFCC894();
  *a4 = v22;
  if (result == v19)
  {
    v21 = a1;
  }

  else
  {
    v21 = 0;
  }

  *(a4 + 8) = v10 & 1;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14 & 1;
  *(a4 + 32) = v17;
  *(a4 + 40) = v18 & 1;
  *(a4 + 48) = v21;
  *(a4 + 56) = (result != v19) | a2 & 1;
  return result;
}

uint64_t sub_18AFC6C88@<X0>(uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v11 = sub_18AFCC864();
  sub_18AFCC894();
  v12 = sub_18AFCC894();
  v13 = v12 != v11;
  if (v12 == v11)
  {
    v14 = a3;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = sub_18AFCC884();
  sub_18AFCC894();
  v16 = sub_18AFCC894();
  v17 = v16 != v15;
  if (v16 == v15)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = sub_18AFCC874();
  sub_18AFCC894();
  v20 = sub_18AFCC894();
  v21 = v20 != v19;
  if (v20 == v19)
  {
    v22 = a5;
  }

  else
  {
    v22 = 0.0;
  }

  v23 = sub_18AFCC8A4();
  sub_18AFCC894();
  result = sub_18AFCC894();
  v25 = a6;
  if (result != v23)
  {
    v25 = 0.0;
  }

  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 24) = v17;
  *(a2 + 32) = v22;
  *(a2 + 40) = v21;
  *(a2 + 48) = v25;
  *(a2 + 56) = result != v23;
  return result;
}

uint64_t RelativePosition.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

unint64_t sub_18AFC6E5C()
{
  result = qword_1EA99C150;
  if (!qword_1EA99C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C150);
  }

  return result;
}

uint64_t sub_18AFC6F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_18AFC72C8(&qword_1EA99C160, 255, type metadata accessor for _ImpossibleExecutor, &unk_18AFE332C);

  return a4(a1, v6, v7);
}

uint64_t sub_18AFC70D4()
{
  type metadata accessor for _ImpossibleActor();
  result = swift_allocObject();
  qword_1EA9B0080 = result;
  return result;
}

uint64_t sub_18AFC716C()
{
  type metadata accessor for _ImpossibleExecutor();
  swift_initStaticObject();
  sub_18AFC72C8(&qword_1EA99C168, 255, type metadata accessor for _ImpossibleExecutor, &unk_18AFE3364);
  return sub_18AFCDF34();
}

double sub_18AFC71E8()
{
  if (qword_1EA997940 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_18AFC7244(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for _ImpossibleActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_18AFC72C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_18AFC7314()
{
  v1 = v0;
  v2 = sub_18AFCC474();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScaledPadding(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99C180, &qword_18AFE33F8);
  sub_18AFCBC24();
  v7 = v38;
  v8 = sub_18AFCC864();
  sub_18AFCC894();
  v9 = 0.0;
  if (sub_18AFCC894() == v8)
  {
    v10 = v1 + *(v6 + 28);
    if (*(v10 + 8))
    {
      v11 = *v1;
      if (*(v1 + 32) == 1)
      {
        v9 = *v1;
      }

      else
      {
        v12 = *(v1 + 8);
        v36 = *(v1 + 16);
        v37 = v12;
        v13 = *(v1 + 24);

        sub_18AFCE024();
        v14 = sub_18AFCC7D4();
        sub_18AFCBA64();

        sub_18AFCC464();
        swift_getAtKeyPath();
        v15 = sub_18AFC7FD8(v11, v37, v36, v13, 0);
        (*(v3 + 8))(v5, v2, v15);
        v9 = v38;
      }
    }

    else
    {
      v9 = *v10;
    }
  }

  v16 = sub_18AFCC884();
  sub_18AFCC894();
  if (sub_18AFCC894() == v16 && (*(v1 + *(v6 + 28) + 24) & 1) != 0)
  {
    v17 = *(v1 + 8);
    if (*(v1 + 32) != 1)
    {
      v18 = *v1;
      v19 = *(v1 + 16);
      v36 = *(v1 + 24);
      v37 = v19;

      sub_18AFCE024();
      v20 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      v21 = sub_18AFC7FD8(v18, v17, v37, v36, 0);
      (*(v3 + 8))(v5, v2, v21);
    }
  }

  v22 = sub_18AFCC874();
  sub_18AFCC894();
  if (sub_18AFCC894() == v22 && (*(v1 + *(v6 + 28) + 40) & 1) != 0)
  {
    v23 = *(v1 + 16);
    if (*(v1 + 32) != 1)
    {
      v25 = *v1;
      v24 = *(v1 + 8);
      v36 = *(v1 + 24);
      v37 = v24;

      sub_18AFCE024();
      v26 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      v27 = sub_18AFC7FD8(v25, v37, v23, v36, 0);
      (*(v3 + 8))(v5, v2, v27);
    }
  }

  v28 = sub_18AFCC8A4();
  sub_18AFCC894();
  if (sub_18AFCC894() == v28 && (*(v1 + *(v6 + 28) + 56) & 1) != 0)
  {
    v29 = *(v1 + 24);
    if (*(v1 + 32) != 1)
    {
      v30 = *v1;
      v31 = *(v1 + 8);
      v32 = *(v1 + 16);

      sub_18AFCE024();
      v33 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      v34 = sub_18AFC7FD8(v30, v31, v32, v29, 0);
      (*(v3 + 8))(v5, v2, v34);
    }
  }

  return ((v7 + -100.0) * 0.005 + 1.0) * v9;
}

uint64_t sub_18AFC783C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18AFC7314();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_18AFCC854();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99C1A8, &qword_18AFE3460);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99C1B0, &qword_18AFE3468);
  v14 = a2 + *(result + 36);
  *v14 = v11;
  *(v14 + 8) = v4;
  *(v14 + 16) = v6;
  *(v14 + 24) = v8;
  *(v14 + 32) = v10;
  *(v14 + 40) = 0;
  return result;
}

uint64_t View.scaledPadding(_:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = type metadata accessor for ScaledPadding(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  v14[32] = 0;
  *v14 = KeyPath;
  *(v14 + 1) = 0;
  *&v19[0] = 0x4059000000000000;
  sub_18AFC7D44();
  sub_18AFCBC14();
  v14[*(v12 + 24)] = sub_18AFCC854();
  sub_18AFCC854();
  sub_18AFC6C88(v19, a3, a4, a5, a6);
  v16 = &v14[*(v12 + 28)];
  v17 = v19[1];
  *v16 = v19[0];
  *(v16 + 1) = v17;
  *(v16 + 2) = v20[0];
  *(v16 + 41) = *(v20 + 9);
  MEMORY[0x18CFEBFA0](v14, a1, v12, a2);
  return sub_18AFC7D98(v14);
}

uint64_t type metadata accessor for ScaledPadding(uint64_t a1)
{
  result = qword_1EA99C188;
  if (!qword_1EA99C188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t View.scaledPadding(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ScaledPadding(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v12[32] = 0;
  *v12 = KeyPath;
  *(v12 + 1) = 0;
  *&v17[0] = 0x4059000000000000;
  sub_18AFC7D44();
  sub_18AFCBC14();
  v12[*(v10 + 24)] = a1;
  sub_18AFC6B40(a2, a3 & 1, v17);
  v14 = &v12[*(v10 + 28)];
  v15 = v17[1];
  *v14 = v17[0];
  *(v14 + 1) = v15;
  *(v14 + 2) = v18[0];
  *(v14 + 41) = *(v18 + 9);
  MEMORY[0x18CFEBFA0](v12, a4, v10, a5);
  return sub_18AFC7D98(v12);
}

uint64_t View.scaledPadding(_:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for ScaledPadding(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFCC854();
  KeyPath = swift_getKeyPath();
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  v8[32] = 0;
  *v8 = KeyPath;
  *(v8 + 1) = 0;
  *&v14[0] = 0x4059000000000000;
  sub_18AFC7D44();
  sub_18AFCBC14();
  v8[*(v6 + 24)] = v9;
  sub_18AFC6B40(*&a3, 0, v14);
  v11 = &v8[*(v6 + 28)];
  v12 = v14[1];
  *v11 = v14[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v15[0];
  *(v11 + 41) = *(v15 + 9);
  MEMORY[0x18CFEBFA0](v8, a1, v6, a2);
  return sub_18AFC7D98(v8);
}

unint64_t sub_18AFC7D44()
{
  result = qword_1EA99C170;
  if (!qword_1EA99C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C170);
  }

  return result;
}

uint64_t sub_18AFC7D98(uint64_t a1)
{
  v2 = type metadata accessor for ScaledPadding(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18AFC7DF4()
{
  result = qword_1EA99C178;
  if (!qword_1EA99C178)
  {
    type metadata accessor for ScaledPadding(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C178);
  }

  return result;
}

void sub_18AFC7E74(uint64_t a1)
{
  sub_18AFC7F10();
  if (v1 <= 0x3F)
  {
    sub_18AFC7F60(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18AFC7F10()
{
  if (!qword_1EA99C198)
  {
    v0 = sub_18AFCBB64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA99C198);
    }
  }
}

void sub_18AFC7F60(uint64_t a1)
{
  if (!qword_1EA99C1A0)
  {
    sub_18AFC7D44();
    v1 = sub_18AFCBC34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA99C1A0);
    }
  }
}

double sub_18AFC7FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_18AFC7FE4()
{
  result = qword_1EA99C1B8;
  if (!qword_1EA99C1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99C1B0, &qword_18AFE3468);
    sub_18AFC8070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C1B8);
  }

  return result;
}

unint64_t sub_18AFC8070()
{
  result = qword_1EA99C1C0[0];
  if (!qword_1EA99C1C0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99C1A8, &qword_18AFE3460);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA99C1C0);
  }

  return result;
}

void sub_18AFC8100(uint64_t *a2@<X8>)
{
  sub_18AFCCDB4();
  sub_18AFCCF24();

  v3 = sub_18AFCCF34();

  *a2 = v3;
}

double sub_18AFC8160()
{
  *&result = 1054280253;
  xmmword_1ED56C4A0 = xmmword_18AFE34F0;
  return result;
}

double sub_18AFC8174()
{
  *&result = 1054280253;
  xmmword_1EA9B0060 = xmmword_18AFE3500;
  return result;
}

uint64_t sub_18AFC8188(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
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

uint64_t sub_18AFC8250(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  v10 = a3[4];
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(*(a3[2] - 8) + 64);
  v14 = *(v7 + 80);
  v15 = *(v11 + 80);
  if (v9 <= v12)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[3] - 8) + 64) + 7;
  v19 = v15 + 41;
  v20 = a2 - v17;
  if (a2 <= v17)
  {
    goto LABEL_34;
  }

  v21 = ((v19 + ((v18 + ((v13 + v14 + 1) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + *(*(v10 - 8) + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v25 = ((v20 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v25 < 2)
    {
LABEL_34:
      if (v6 == v17)
      {
        v29 = *(v5 + 48);

        return v29();
      }

      else
      {
        v30 = (a1 + v13 + v14 + 1) & ~v14;
        if (v8 == v17)
        {
          v31 = *(v7 + 48);

          return v31(v30);
        }

        else
        {
          v32 = (v18 + v30) & 0xFFFFFFFFFFFFFFF8;
          if ((v16 & 0x80000000) != 0)
          {
            v34 = *(v11 + 48);

            return v34((v19 + v32) & ~v15, v12, v10);
          }

          else
          {
            v33 = *(v32 + 24);
            if (v33 >= 0xFFFFFFFF)
            {
              LODWORD(v33) = -1;
            }

            return (v33 + 1);
          }
        }
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_34;
  }

LABEL_21:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v27 = ((v19 + ((v18 + ((v13 + v14 + 1) & ~v14)) & 0xFFFFFFF8)) & ~v15) + *(*(v10 - 8) + 64);
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v28 = *a1;
      }
    }

    else if (v27 == 1)
    {
      v28 = *a1;
    }

    else
    {
      v28 = *a1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v17 + (v28 | v26) + 1;
}

char *sub_18AFC8548(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = *(a4[3] - 8);
  v8 = *(v7 + 84);
  v9 = *(a4[4] - 8);
  if (v6 <= v8)
  {
    v10 = *(v7 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(*(a4[2] - 8) + 64);
  v12 = *(v7 + 80);
  v13 = *(*(a4[3] - 8) + 64);
  v14 = *(v9 + 80);
  if (v10 <= *(v9 + 84))
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = v10;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = v13 + 7;
  v18 = ((v14 + 41 + ((v13 + 7 + ((v11 + v12 + 1) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v9 + 64);
  v19 = a3 >= v16;
  v20 = a3 - v16;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v25 < 2)
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v16 < a2)
  {
    v22 = ~v16 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v26 = v22 & ~(-1 << (8 * v18));
        v27 = result;
        bzero(result, v18);
        result = v27;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v27 = v26;
            if (v21 > 1)
            {
LABEL_56:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v27 = v22;
            if (v21 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *v27 = v26;
        v27[2] = BYTE2(v26);
      }

      if (v21 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *&result[v18] = 0;
LABEL_36:
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!v21)
  {
    goto LABEL_36;
  }

  result[v18] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_37:
  if (v6 == v16)
  {
    v28 = *(v5 + 56);

    return v28();
  }

  else
  {
    result = (&result[v11 + 1 + v12] & ~v12);
    if (v8 == v16)
    {
      v29 = *(v7 + 56);

      return v29(result);
    }

    else
    {
      v30 = &result[v17] & 0xFFFFFFFFFFFFFFF8;
      if ((v15 & 0x80000000) != 0)
      {
        v31 = *(v9 + 56);

        return v31((v14 + 41 + v30) & ~v14);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *(v30 + 8) = 0u;
        *(v30 + 24) = 0u;
        *v30 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(v30 + 24) = a2 - 1;
      }
    }
  }

  return result;
}

unint64_t sub_18AFC8934()
{
  result = qword_1EA99C248;
  if (!qword_1EA99C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C248);
  }

  return result;
}

uint64_t sub_18AFC8988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  v15 = a3;
  v16 = a2;
  sub_18AFCBB94();
  sub_18AFC8D90(a1, v16, v20, v15, a4, a5, a6, a7, x8_0, a8);
  return sub_18AEFC884(v20);
}

uint64_t sub_18AFC8A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v24, v23, v19);
  (*(v15 + 16))(v17, a1, a5);

  return sub_18AFC965C(v21, v17, a2, v28, v25, a4, a5, MEMORY[0x1E6981E70], a8, a6, a7, MEMORY[0x1E6981E60]);
}

uint64_t sub_18AFC8C2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v24[0] = a7;
  v24[1] = a8;
  v24[2] = a10;
  v25 = a11;
  v26 = a12;
  v20 = type metadata accessor for PositionStrokeShapeView(0, v24);
  *(a9 + v20[17]) = a2;
  (*(*(a8 - 8) + 32))(a9 + v20[18], a3, a8);
  v21 = a9 + v20[19];
  v22 = *(a4 + 16);
  *v21 = *a4;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a4 + 32);
  *(a9 + v20[20]) = a5;
  return (*(*(a10 - 8) + 32))(a9 + v20[21], a6, a10);
}

double sub_18AFC8D90@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v32 = a8;
  v33 = a3;
  v34 = a4;
  v31 = a2;
  v28 = a1;
  v30 = a9;
  v14 = *(a5 - 8);
  v29 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = &v27 - v23;
  sub_18AFCDBE4();
  (*(v18 + 16))(v21, v28, a6);
  (*(v14 + 16))(v16, v10, a5);
  *(&v26 + 1) = v32;
  *&v26 = v29;
  sub_18AFC8C2C(v24, v31, v21, v33, v34, v16, AssociatedTypeWitness, a6, v30, a5, v26, *(a7 + 8));

  return result;
}

uint64_t sub_18AFC8FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v45 - v8;
  v9 = *(a1 + 24);
  v58 = v5;
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(a1 + 48);
  v62 = AssociatedTypeWitness;
  v63 = v9;
  v54 = v9;
  v64 = MEMORY[0x1E6981E70];
  v65 = v10;
  v45 = v10;
  v52 = v11;
  v66 = v11;
  v67 = MEMORY[0x1E6981E60];
  v12 = sub_18AFCC064();
  v56 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = *(a1 + 32);
  v46 = *(a1 + 56);
  v16 = sub_18AFCC5F4();
  v50 = v12;
  v48 = v16;
  v47 = sub_18AFCC044();
  v57 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v53 = &v45 - v19;
  v20 = (v3 + *(a1 + 76));
  v21 = *v20;
  v22 = v3;
  v23 = v51;
  v24 = v58;
  sub_18AFCC004();
  v25 = *(a1 + 72);
  v26 = v20[3];
  v27 = v20[4];
  v29 = v20[1];
  v28 = v20[2];
  v62 = v21;
  v63 = v29;
  v64 = v28;
  v65 = v26;
  v66 = v27;
  v30 = *(v22 + *(a1 + 80));
  v31 = v54;
  v32 = v52;
  sub_18AFC8A44(v22 + v25, &v62, v30, AssociatedTypeWitness, v54, v45, v52, v14);
  v33 = (*(v55 + 8))(v23, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v33);
  *&v34 = v6;
  *(&v34 + 1) = v31;
  *&v35 = v15;
  *(&v35 + 1) = v24;
  *(&v45 - 4) = v34;
  *(&v45 - 3) = v35;
  v36 = v46;
  *(&v45 - 4) = v32;
  *(&v45 - 3) = v36;
  *(&v45 - 2) = v22;
  sub_18AFCDB44();
  v37 = v50;
  WitnessTable = swift_getWitnessTable();
  v39 = v49;
  sub_18AFCCA64();
  (*(v56 + 8))(v14, v37);
  v40 = swift_getWitnessTable();
  v60 = WitnessTable;
  v61 = v40;
  v41 = v47;
  swift_getWitnessTable();
  v42 = v53;
  sub_18AEADA5C();
  v43 = *(v57 + 8);
  v43(v39, v41);
  sub_18AEADA5C();
  return (v43)(v42, v41);
}

uint64_t sub_18AFC94B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = v8;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v11;
  v15[4] = v12;
  v15[5] = v13;
  type metadata accessor for PositionStrokeShapeView(0, v15);
  sub_18AEADA5C();
  sub_18AEADA5C();
  return (*(v5 + 8))(v7, a4);
}

uint64_t sub_18AFC965C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a5;
  v42 = a4;
  v37 = a3;
  v38 = a8;
  v40 = a2;
  v47 = a9;
  v48 = a1;
  v33[1] = a10;
  v41 = *(a8 - 8);
  v45 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v39 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_18AFCC5F4();
  MEMORY[0x1EEE9AC00](v46);
  v43 = v33 - v15;
  v36 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a6 - 8);
  v19 = v34;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18AFCBDB4();
  MEMORY[0x1EEE9AC00](v23);
  WitnessTable = swift_getWitnessTable();
  v49 = v23;
  v50 = a7;
  v51 = WitnessTable;
  v52 = a11;
  v35 = sub_18AFCBB14();
  v25 = MEMORY[0x1EEE9AC00](v35);
  v26 = *(v19 + 16);
  v33[0] = a6;
  v26(v22, v48, a6, v25);
  sub_18AFCBDA4();
  v27 = v36;
  v28 = v40;
  (*(v36 + 16))(v18, v40, a7);
  sub_18AFCBB04();
  v29 = v41;
  v30 = v38;
  v31 = v44;
  (*(v41 + 16))(v39, v44, v38);
  sub_18AFCDB44();
  (*(v29 + 8))(v31, v30);
  (*(v27 + 8))(v28, a7);
  (*(v34 + 8))(v48, v33[0]);
  sub_18AFCC5E4();
  return sub_18AFCC034();
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_18AFC9A9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 20))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_18AFC9AE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_18AFC9B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, unsigned int a5@<S0>, unsigned int a6@<S1>)
{
  v12 = sub_18AFCC474();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a3 & 1) == 0)
  {
    sub_18AFCE024();
    v16 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    j__swift_release(a2);
    (*(v13 + 8))(v15, v12);
    a2 = v22[0];
  }

  if (!a2)
  {
    a2 = sub_18AFCCCD4();
  }

  KeyPath = swift_getKeyPath();
  v22[0] = __PAIR64__(a6, a5);
  v22[1] = a2;
  sub_18AFC9EF8();
  v18 = sub_18AFCBCD4();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99C258, &qword_18AFE3750);
  (*(*(v19 - 8) + 16))(a4, a1, v19);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99C260, &qword_18AFE3758);
  v21 = (a4 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v18;
  return result;
}

void sub_18AFC9D74(_DWORD *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  sub_18AFCCDC4();
  v10 = sub_18AE978B4(v6, v7, v8, v9);
  if (v4 > v12)
  {
    v12 = v4;
  }

  if (v5 < v12)
  {
    v12 = v5;
  }

  sub_18AE97AA0(v10, v11, v12, v13);
  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v17;
}

uint64_t sub_18AFC9DC8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18AFCE294();
  sub_18AF4AFA4(v1, v2);
  sub_18AFCCD54();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC9E2C(uint64_t a1)
{
  sub_18AF4AFA4(*v1, v1[1]);

  return sub_18AFCCD54();
}

uint64_t sub_18AFC9E70(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_18AFCE294();
  sub_18AF4AFA4(v2, v3);
  sub_18AFCCD54();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC9ED0(float *a1, float *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_18AFCCD04();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_18AFC9EF8()
{
  result = qword_1EA99C250;
  if (!qword_1EA99C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C250);
  }

  return result;
}

uint64_t sub_18AFC9F4C(uint64_t a1, int a2)
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

uint64_t sub_18AFC9F94(uint64_t result, int a2, int a3)
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

unint64_t sub_18AFC9FE0()
{
  result = qword_1EA99C268;
  if (!qword_1EA99C268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99C260, &qword_18AFE3758);
    sub_18AE95F54(&qword_1EA99C270, &qword_1EA99C258, &qword_18AFE3750, MEMORY[0x1E697FDF8]);
    sub_18AE95F54(&qword_1EA99C278, &qword_1EA99C280, &qword_18AFE37A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C268);
  }

  return result;
}

unint64_t sub_18AFCA0C8()
{
  result = qword_1EA99C288;
  if (!qword_1EA99C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C288);
  }

  return result;
}

double sub_18AFCA11C@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = a2 & 1;
  v14 = a4 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  *(v15 + 32) = a1;
  *(v15 + 40) = v13;
  *(v15 + 48) = a3;
  *(v15 + 56) = v14;
  v17[2] = a5;
  v17[3] = a6;
  v18 = v7;
  sub_18AFCA2C4(sub_18AFCA2B8, v17, a7);

  return result;
}

uint64_t sub_18AFCA1DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AEADA5C();
  sub_18AEADA5C();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_18AFCA2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_18AFCA35C();
  return sub_18AFC3A04(a1, a2, &type metadata for UnitPositionLayout, v7, v9, v8, a3);
}

unint64_t sub_18AFCA35C()
{
  result = qword_1EA99C290;
  if (!qword_1EA99C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C290);
  }

  return result;
}

uint64_t sub_18AFCA3D0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16[3] = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0, &qword_18AFE2E40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v16 - v11;
  sub_18AFC3BAC(v16 - v11);
  v13 = sub_18AFCBD64();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_18AF0A900(v12);
  }

  v18 = a2 & 1;
  v17 = a4 & 1;
  sub_18AFCBD44();
  return (*(v14 + 8))(v12, v13);
}

void (*sub_18AFCA5F4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AFBE4B4;
}

uint64_t sub_18AFCA67C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0, &qword_18AFE2E40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  sub_18AFC3BAC(&v12[-v7]);
  v9 = sub_18AFCBD64();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_18AF0A900(v8);
  }

  v12[8] = a2 & 1;
  v12[0] = a4 & 1;
  sub_18AFCBD44();
  return (*(v10 + 8))(v8, v9);
}

void (*sub_18AFCA890(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AFBC71C;
}

unint64_t sub_18AFCA91C()
{
  result = qword_1EA99C298;
  if (!qword_1EA99C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C298);
  }

  return result;
}

unint64_t sub_18AFCA974()
{
  result = qword_1EA99C2A0;
  if (!qword_1EA99C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C2A0);
  }

  return result;
}

uint64_t sub_18AFCA9C8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10)
{
  v14 = sub_18AFCBD64();
  v23 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCBE84();
  sub_18AF0A8A8(v17);
  sub_18AFCDFC4();
  sub_18AFCDFE4();
  result = sub_18AFCDFD4();
  if (result)
  {
    v26.origin.x = a1;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    CGRectGetWidth(v26);
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    CGRectGetHeight(v27);
    sub_18AFCDFC4();
    sub_18AFCDFE4();
    v19 = v24;
    result = v25;
    if (v24 < v25)
    {
      __break(1u);
    }

    else
    {
      if (v25 == v24)
      {
        return result;
      }

      if (v25 < v24)
      {
        v20 = (v23 + 8);
        do
        {
          v21 = result + 1;
          sub_18AFCBE94();
          sub_18AFCDD04();
          LOBYTE(v25) = 0;
          LOBYTE(v24) = 0;
          sub_18AFCBD54();
          (*v20)(v16, v14);
          result = v21;
        }

        while (v19 != v21);
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18AFCAC34(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_18AFCBD64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCBE84();
  sub_18AF0A8A8(v14);
  sub_18AFCDFC4();
  sub_18AFCDFE4();
  result = sub_18AFCDFD4();
  if (result)
  {
    v16 = *(v4 + 40);
    v30 = *(v4 + 32);
    v31 = *v4;
    v17 = *(v4 + 8);
    v18 = 0.5;
    v29 = *(v5 + 16);
    v19 = *(v5 + 24);
    if (v19)
    {
      v20 = 0.5;
    }

    else
    {
      v20 = v16;
    }

    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    v28[2] = CGRectGetWidth(v34);
    v21 = v31;
    if (v17)
    {
      v21 = 1.0;
    }

    else
    {
      v18 = v30;
    }

    *&v28[1] = v21;
    v30 = a1;
    v31 = a3;
    v35.origin.x = a1;
    v22 = a2;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    Height = CGRectGetHeight(v35);
    if (!v19)
    {
      Height = v29 * Height;
    }

    v29 = Height;
    if (v18 == 1.0)
    {
      v24 = v30;
      v36.size.width = v31;
      v36.origin.x = v30;
      v36.origin.y = v22;
      v36.size.height = a4;
      CGRectGetWidth(v36);
    }

    else
    {
      v24 = v30;
    }

    if (v20 == 1.0)
    {
      v37.origin.x = v24;
      v37.origin.y = v22;
      v37.size.width = v31;
      v37.size.height = a4;
      CGRectGetHeight(v37);
    }

    sub_18AFCDFC4();
    sub_18AFCDFE4();
    v25 = v32;
    result = v33;
    if (v32 < v33)
    {
      __break(1u);
    }

    else
    {
      if (v33 == v32)
      {
        return result;
      }

      if (v33 < v32)
      {
        v26 = (v11 + 8);
        do
        {
          v27 = result + 1;
          sub_18AFCBE94();
          LOBYTE(v33) = 0;
          LOBYTE(v32) = 0;
          sub_18AFCBD54();
          (*v26)(v13, v10);
          result = v27;
        }

        while (v25 != v27);
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_18AFCAF30(uint64_t a1, uint64_t a2)
{
  v3 = sub_18AFCDE04();
  v4 = [v2 arrayForKey_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_18AFCDEA4();

  v6 = sub_18AFCB134(v5);

  if (!v6)
  {
    return 0;
  }

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v7 = sub_18AFCE1F4();
  if (!v7)
  {
LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_5:
  v21 = MEMORY[0x1E69E7CC0];
  result = sub_18AFABA38(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v21;
    if ((v6 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        MEMORY[0x18CFED4B0](i, v6);
        sub_18AFCDF94();
        v12 = v11;
        swift_unknownObjectRelease();
        v14 = *(v21 + 16);
        v13 = *(v21 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_18AFABA38((v13 > 1), v14 + 1, 1);
        }

        *(v21 + 16) = v14 + 1;
        *(v21 + 4 * v14 + 32) = v12;
      }
    }

    else
    {
      v15 = (v6 + 32);
      do
      {
        v16 = *v15;
        sub_18AFCDF94();
        v18 = v17;

        v20 = *(v21 + 16);
        v19 = *(v21 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_18AFABA38((v19 > 1), v20 + 1, 1);
        }

        *(v21 + 16) = v20 + 1;
        *(v21 + 4 * v20 + 32) = v18;
        ++v15;
        --v7;
      }

      while (v7);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_18AFCB134(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_18AFCE194();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_18AE9B098(i, v5);
    sub_18AE9ADC0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_18AFCE174();
    sub_18AFCE1A4();
    sub_18AFCE1B4();
    sub_18AFCE184();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id sub_18AFCB244()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EA99C2A8 = result;
  return result;
}

uint64_t sub_18AFCB29C()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B0088);
  __swift_project_value_buffer(v0, qword_1EA9B0088);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB344()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B00A0);
  __swift_project_value_buffer(v0, qword_1EA9B00A0);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB3EC()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B00B8);
  __swift_project_value_buffer(v0, qword_1EA9B00B8);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB494()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B00D0);
  __swift_project_value_buffer(v0, qword_1EA9B00D0);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB53C()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B00E8);
  __swift_project_value_buffer(v0, qword_1EA9B00E8);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB5E4()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B0100);
  __swift_project_value_buffer(v0, qword_1EA9B0100);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB68C()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B0118);
  __swift_project_value_buffer(v0, qword_1EA9B0118);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB734()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B0130);
  __swift_project_value_buffer(v0, qword_1EA9B0130);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB7DC()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B0148);
  __swift_project_value_buffer(v0, qword_1EA9B0148);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB88C()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B0160);
  __swift_project_value_buffer(v0, qword_1EA9B0160);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}