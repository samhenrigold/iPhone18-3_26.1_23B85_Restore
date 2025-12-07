uint64_t sub_1C46B4074@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *x8_0@<X8>)
{
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  v10 = sub_1C465C1D4(a3, *(a2 + 64));
  if (v11 == 0xFF)
  {
    sub_1C46B6838(v8, v9);
    v12 = v8;
    v13 = v9;
  }

  else
  {
    v12 = v10;
    v13 = v11;
  }

  sub_1C46D43EC(v12, v13, x8_0);
  result = sub_1C46B6850(v12, v13);
  if (v5)
  {
    *a4 = v5;
  }

  return result;
}

uint64_t sub_1C46B412C()
{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  sub_1C46B6850(v1, v2);
  sub_1C440962C((v0 + 88));
  sub_1C46B5C54(v0 + qword_1EC151B98, type metadata accessor for BehaviorDigestTaskIdentifier);
  sub_1C46B6AD4(*(v0 + qword_1EC0BB058));

  return v0;
}

uint64_t sub_1C46B4220(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46B4294(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C46B42D4(uint64_t result, int a2, int a3)
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

uint64_t sub_1C46B432C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1C46B436C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C46B43CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C46B4414(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C46B4450(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C46B44A0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_1C46B4504()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442E8C4;

  return sub_1C46AD3AC();
}

void sub_1C46B4598(uint64_t a1, uint64_t a2)
{
  *&v128 = a2;
  v131 = sub_1C4EFDAF8();
  v2 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v4 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C46AA75C();
  v6 = v5;
  sub_1C456902C(&qword_1EC0BAB10, &qword_1C4F16C20);
  v7 = sub_1C4F02538();
  v8 = v7;
  v9 = 0;
  v10 = *(v6 + 64);
  v116 = v6 + 64;
  v11 = 1 << *(v6 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v130 = v2 + 16;
  v119 = v2;
  v129 = (v2 + 8);
  v125 = v7 + 64;
  v123 = v7;
  v118 = v6;
  v117 = v14;
  if ((v12 & v10) != 0)
  {
LABEL_4:
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    goto LABEL_10;
  }

LABEL_5:
  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v9 >= v14)
    {
      break;
    }

    v17 = *(v116 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
LABEL_10:
      v18 = v15 | (v9 << 6);
      v19 = (*(v6 + 48) + 16 * v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = *(*(v6 + 56) + 8 * v18);
      v23 = *(v22 + 16);
      if (v23)
      {
        v122 = *v19;
        v124 = v18;
        v126 = v13;
        v127 = v9;
        v133[0] = MEMORY[0x1E69E7CC0];
        *&v121 = v20;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44CD9C0(0, v23, 0);
        v24 = v22;
        v25 = v133[0];
        v26 = (*(v119 + 80) + 32) & ~*(v119 + 80);
        v120 = v24;
        v27 = v24 + v26;
        v132 = *(v119 + 72);
        v28 = *(v119 + 16);
        do
        {
          v29 = v131;
          v28(v4, v27, v131);
          v30 = sub_1C4EFDAE8();
          v32 = v31;
          (*v129)(v4, v29);
          v133[0] = v25;
          v34 = *(v25 + 16);
          v33 = *(v25 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_1C44CD9C0(v33 > 1, v34 + 1, 1);
            v25 = v133[0];
          }

          *(v25 + 16) = v34 + 1;
          v35 = v25 + 16 * v34;
          *(v35 + 32) = v30;
          *(v35 + 40) = v32;
          v27 += v132;
          --v23;
        }

        while (v23);

        v8 = v123;
        v6 = v118;
        v9 = v127;
        v14 = v117;
        v13 = v126;
        v18 = v124;
        v21 = v122;
        v36 = v121;
      }

      else
      {
        v36 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v25 = MEMORY[0x1E69E7CC0];
      }

      *(v125 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v37 = (v8[6] + 16 * v18);
      *v37 = v21;
      v37[1] = v36;
      *(v8[7] + 8 * v18) = v25;
      v38 = v8[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_83;
      }

      v8[2] = v40;
      if (v13)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  sub_1C456902C(&qword_1EC0B86C0, &unk_1C4F0D8A0);
  v41 = v128;
  v42 = sub_1C4F02538();
  v44 = 0;
  v47 = *(v41 + 64);
  v46 = v41 + 64;
  v45 = v47;
  v48 = 1 << *(v46 - 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & v45;
  v51 = (v48 + 63) >> 6;
  v124 = v42;
  v132 = v42 + 64;
  if ((v49 & v45) != 0)
  {
    do
    {
      v52 = __clz(__rbit64(v50));
      v50 &= v50 - 1;
LABEL_29:
      v57 = v52 | (v44 << 6);
      v58 = (*(v128 + 48) + 16 * v57);
      v60 = *v58;
      v59 = v58[1];
      sub_1C46B69E8(*(v128 + 56) + 56 * v57, v133);
      sub_1C46B69E8(v133, &v137);
      if (v138 && v138 != 1)
      {
        sub_1C460986C(&v137, &v134);
      }

      else
      {
        sub_1C441D670(&v137, &v134);
      }

      v61 = v135;
      v62 = v136;
      v63 = sub_1C4409678(&v134, v135);
      v140 = v61;
      v141 = *(v62 + 8);
      v64 = sub_1C4422F90(&v139);
      (*(*(v61 - 8) + 16))(v64, v63, v61);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C440962C(&v134);
      v65 = v140;
      v66 = v141;
      sub_1C4409678(&v139, v140);
      v67 = (*(v66 + 8))(v65, v66);
      sub_1C46B6A20(v133);
      sub_1C440962C(&v139);
      *(v132 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
      v68 = v124;
      v69 = (*(v124 + 48) + 16 * v57);
      *v69 = v60;
      v69[1] = v59;
      *(*(v68 + 56) + 8 * v57) = v67;
      v70 = *(v68 + 16);
      v39 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v39)
      {
        goto LABEL_84;
      }

      *(v68 + 16) = v71;
    }

    while (v50);
  }

  v53 = v44;
  v54 = v125;
  v55 = v124;
  while (1)
  {
    v44 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_80;
    }

    if (v44 >= v51)
    {
      break;
    }

    v56 = *(v46 + 8 * v44);
    ++v53;
    if (v56)
    {
      v52 = __clz(__rbit64(v56));
      v50 = (v56 - 1) & v56;
      goto LABEL_29;
    }
  }

  v72 = 0;
  v73 = v123;
  v74 = 1 << *(v123 + 32);
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  else
  {
    v75 = -1;
  }

  v76 = v75 & *(v123 + 64);
  v77 = (v74 + 63) >> 6;
  p_info = &OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache.info;
  *&v43 = 136315138;
  v121 = v43;
  *&v43 = 136315394;
  v128 = v43;
  v122 = v77;
  if (!v76)
  {
LABEL_41:
    while (1)
    {
      v79 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        goto LABEL_81;
      }

      if (v79 >= v77)
      {

        return;
      }

      v76 = *(v54 + 8 * v79);
      ++v72;
      if (v76)
      {
        goto LABEL_44;
      }
    }
  }

  while (2)
  {
    v79 = v72;
LABEL_44:
    v127 = (v76 - 1) & v76;
    v126 = v79;
    v80 = __clz(__rbit64(v76)) | (v79 << 6);
    v81 = *(v73 + 56);
    v82 = *(v73 + 48) + 16 * v80;
    v83 = *(v82 + 8);
    v129 = *v82;
    v84 = *(v81 + 8 * v80);
    v85 = *(v55 + 16);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if (!v85)
    {
      goto LABEL_68;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v86 = sub_1C445FAA8(v129, v83);
    if ((v87 & 1) == 0)
    {

LABEL_68:
      if (p_info[406] != -1)
      {
        swift_once();
      }

      v107 = sub_1C4F00978();
      sub_1C442B738(v107, qword_1EDDFECB8);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v108 = sub_1C4F00968();
      v109 = sub_1C4F01CE8();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = v83;
        v112 = swift_slowAlloc();
        v133[0] = v112;
        *v110 = v121;
        v113 = sub_1C441D828(v129, v111, v133);

        *(v110 + 4) = v113;
        _os_log_impl(&dword_1C43F8000, v108, v109, "HistoricalFeatureCollector: Signal %s not available. It will not be collected. Provide this signal in the HistoricalFeatureCollector initializer.", v110, 0xCu);
        sub_1C440962C(v112);
        MEMORY[0x1C6942830](v112, -1, -1);
        v114 = v110;
        p_info = (&OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache + 32);
        MEMORY[0x1C6942830](v114, -1, -1);
      }

      else
      {
      }

LABEL_74:
      v72 = v126;
LABEL_75:
      v77 = v122;
      v76 = v127;
      if (!v127)
      {
        goto LABEL_41;
      }

      continue;
    }

    break;
  }

  v132 = *(v84 + 16);
  if (!v132)
  {

    goto LABEL_74;
  }

  v88 = *(*(v55 + 56) + 8 * v86);
  v131 = v84 + 32;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v89 = 0;
  v130 = v84;
  while (v89 < *(v84 + 16))
  {
    v90 = (v131 + 16 * v89);
    v91 = *v90;
    v92 = v90[1];
    if (*(v88 + 16))
    {
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v93 = sub_1C4F02B68();
      v94 = ~(-1 << *(v88 + 32));
      while (1)
      {
        v95 = v93 & v94;
        if (((*(v88 + 56 + (((v93 & v94) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v93 & v94)) & 1) == 0)
        {
          break;
        }

        v96 = (*(v88 + 48) + 16 * v95);
        if (*v96 != v91 || v96[1] != v92)
        {
          v98 = sub_1C4F02938();
          v93 = v95 + 1;
          if ((v98 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_65;
      }
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    if (p_info[406] != -1)
    {
      swift_once();
    }

    v99 = sub_1C4F00978();
    sub_1C442B738(v99, qword_1EDDFECB8);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v100 = sub_1C4F00968();
    v101 = v83;
    v102 = sub_1C4F01CE8();

    if (os_log_type_enabled(v100, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v133[0] = v104;
      *v103 = v128;
      *(v103 + 4) = sub_1C441D828(v129, v101, v133);
      *(v103 + 12) = 2080;
      v105 = sub_1C441D828(v91, v92, v133);

      *(v103 + 14) = v105;
      _os_log_impl(&dword_1C43F8000, v100, v102, "HistoricalFeatureCollector: Signal %s does not provide feature %s. It will not be collected. Ensure that the signal provides this feature.", v103, 0x16u);
      swift_arrayDestroy();
      v106 = v104;
      p_info = (&OBJC_METACLASS____TtCC24IntelligencePlatformCore12ViewDatabase24ViewAccessStatementCache + 32);
      MEMORY[0x1C6942830](v106, -1, -1);
      MEMORY[0x1C6942830](v103, -1, -1);
    }

    else
    {
    }

    v83 = v101;
    v84 = v130;
LABEL_65:
    if (++v89 == v132)
    {

      v72 = v126;
      v73 = v123;
      v54 = v125;
      v55 = v124;
      goto LABEL_75;
    }
  }

LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

void sub_1C46B5104(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == 1)
  {
    sub_1C4868084(a2);
    if (v5)
    {
      if (*(a1 + 16))
      {
        sub_1C445FAA8(v4, v5);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else if (v3)
  {

    sub_1C46B63CC(a1, a2);
  }
}

void sub_1C46B51A0()
{
  sub_1C43FE96C();
  sub_1C441B34C(v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C442500C();
  v8(v7);
  if (!v0)
  {
    sub_1C43FE5F8();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1C44586A4(AssociatedConformanceWitness);
    (*(v5 + 8))(v1, AssociatedTypeWitness);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C46B5298()
{
  sub_1C43FBCD4();
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C442F080;

  return sub_1C46AEBAC();
}

uint64_t sub_1C46B5328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C46B53F4;

  return (sub_1C49827A0)(a1, a2, a3);
}

uint64_t sub_1C46B53F4()
{
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C43FBE64();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v7 = *(v5 + 8);

  return v7();
}

unint64_t sub_1C46B5508()
{
  result = qword_1EC0BB170;
  if (!qword_1EC0BB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB170);
  }

  return result;
}

void sub_1C46B555C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v10 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = v32 - v11;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 + 16);
  if (*(v16 + 16) && (v17 = sub_1C445FAA8(a1, a2), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    v20 = a3[3];
    v21 = a3[4];
    v35 = a1;
    v36 = v21;
    v37 = v20;
    v38 = a2;
    v22 = sub_1C4409678(a3, v20);
    v23 = *(a4 + 32);
    v24 = *(v23 + 16);
    if (v24)
    {
      v32[1] = v22;
      v34 = a5;
      v43 = MEMORY[0x1E69E7CC0];
      v33 = v19;
      swift_bridgeObjectRetain_n();
      sub_1C459D270();
      v25 = v43;
      v26 = v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v27 = *(v10 + 72);
      v39 = v13 + 32;
      v40 = v27;
      do
      {
        v28 = v41;
        sub_1C445FFA8(v26, v41, &qword_1EC0B84B8, &unk_1C4F0D4F0);
        (*(v13 + 16))(v15, v28 + *(v42 + 36), v12);
        sub_1C4420C3C(v28, &qword_1EC0B84B8, &unk_1C4F0D4F0);
        v43 = v25;
        v29 = *(v25 + 16);
        if (v29 >= *(v25 + 24) >> 1)
        {
          sub_1C459D270();
          v25 = v43;
        }

        *(v25 + 16) = v29 + 1;
        (*(v13 + 32))(v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v29, v15, v12);
        v26 += v40;
        --v24;
      }

      while (v24);
      v30 = v33;
      a5 = v34;
    }

    else
    {
      swift_bridgeObjectRetain_n();
      v30 = v19;
    }

    sub_1C46B5A58();

    v44(&v45, v31);

    *a5 = v30;
    *(a5 + 8) = v45;
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
  }
}

void sub_1C46B5A58()
{
  sub_1C43FE96C();
  sub_1C441B34C(v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C442500C();
  v8(v7);
  if (!v0)
  {
    sub_1C43FE5F8();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1C44586A4(AssociatedConformanceWitness);
    (*(v5 + 8))(v1, AssociatedTypeWitness);
  }

  sub_1C43FBC80();
}

double sub_1C46B5B50@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v10 = *v1;
  v11 = v3;
  v12 = *(v1 + 4);
  sub_1C46AC81C(v7);
  v13 = v10;
  sub_1C4420C3C(&v13, &qword_1EC0BB178, &qword_1C4F1E128);
  v14 = *(&v10 + 1);
  sub_1C4420C3C(&v14, &qword_1EC0BB180, &unk_1C4F1E130);
  v15 = v11;
  sub_1C4420C3C(&v15, &qword_1EC0BB188, &unk_1C4F32380);
  v16 = *(&v11 + 1);
  sub_1C4420C3C(&v16, &qword_1EC0BB188, &unk_1C4F32380);
  v17 = v12;
  sub_1C4420C3C(&v17, &qword_1EC0BB190, &qword_1C4F1E140);
  v4 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_1C46B5C54(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_1C46B5CAC(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v4 = sub_1C43FE5F8();
    v5 = sub_1C46B5EFC(v4);
    swift_bridgeObjectRelease_n();

    return v5;
  }

  return result;
}

_BYTE *sub_1C46B5D48(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v12 = sub_1C43FE5F8();
      v4 = sub_1C46B5CAC(v12, v13, v4, a2);
      v14 = sub_1C43FEDE8();
      MEMORY[0x1C6942830](v14);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  sub_1C4501018(0, v7, v15 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C43FE5F8();
  v10 = sub_1C46B5EFC(v9);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C46B6064(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  v17 = *v2;
  result = sub_1C4C62C14(a1, a2, v17);
  if (!v3)
  {
    v37 = a2;
    if (v19)
    {
      return *(v17 + 16);
    }

    else
    {
      v36 = a1;
      v34 = v4;
      v20 = result + 1;
      if (__OFADD__(result, 1))
      {
LABEL_27:
        __break(1u);
      }

      else
      {
        v21 = v17;
        v35 = v8;
        while (1)
        {
          v22 = *(v21 + 16);
          if (v20 == v22)
          {
            break;
          }

          if (v20 >= v22)
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v40 = result;
          v41 = v21;
          v23 = v10;
          v38 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v24 = v21 + v38;
          v25 = *(v8 + 72);
          v42 = v20;
          v39 = v25 * v20;
          sub_1C445FFA8(v21 + v38 + v25 * v20, v16, &qword_1EC0B89E8, &unk_1C4F3E630);
          v26 = v36(v16);
          sub_1C4420C3C(v16, &qword_1EC0B89E8, &unk_1C4F3E630);
          if (v26)
          {
            v8 = v35;
            v10 = v23;
            result = v40;
            v21 = v41;
            v27 = v42;
          }

          else
          {
            result = v40;
            v27 = v42;
            if (v42 == v40)
            {
              v8 = v35;
              v10 = v23;
              v21 = v41;
            }

            else
            {
              if ((v40 & 0x8000000000000000) != 0)
              {
                goto LABEL_23;
              }

              v28 = *(v41 + 16);
              if (v40 >= v28)
              {
                goto LABEL_24;
              }

              v29 = v25 * v40;
              result = sub_1C445FFA8(v24 + v29, v13, &qword_1EC0B89E8, &unk_1C4F3E630);
              if (v42 >= v28)
              {
                goto LABEL_25;
              }

              v30 = v24 + v39;
              v10 = v23;
              sub_1C445FFA8(v30, v23, &qword_1EC0B89E8, &unk_1C4F3E630);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C48347EC();
                v41 = v33;
              }

              v31 = v41;
              v32 = v41 + v38;
              result = sub_1C46B6894(v10, v41 + v38 + v29);
              if (v42 >= *(v31 + 16))
              {
                goto LABEL_26;
              }

              sub_1C46B6894(v13, v32 + v39);
              v27 = v42;
              v8 = v35;
              *v34 = v31;
              result = v40;
              v21 = v31;
            }

            ++result;
          }

          v20 = v27 + 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C46B63CC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x1E69E9840];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C4501018(0, v5, v6);
    v7 = sub_1C46B6558(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_1C46B6748(v9, v5, sub_1C46B67FC);
    MEMORY[0x1C6942830](v9, -1, -1);
  }

  return v7 & 1;
}

uint64_t sub_1C46B6558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v33 = a4 + 56;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = 0;
  v12 = 0;
  v30 = v9;
  v31 = v5;
  do
  {
    v28 = v11;
LABEL_6:
    while (2)
    {
      if (!v8)
      {
        while (1)
        {
          v13 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v13 >= v9)
          {
            v27 = 0;
            goto LABEL_25;
          }

          v8 = *(v5 + 8 * v13);
          ++v12;
          if (v8)
          {
            v12 = v13;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

LABEL_11:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = (*(a3 + 48) + ((v12 << 10) | (16 * v14)));
      v17 = *v15;
      v16 = v15[1];
      sub_1C4F02AF8();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4F01298();
      v18 = sub_1C4F02B68();
      v19 = ~(-1 << *(a4 + 32));
      do
      {
        v20 = v18 & v19;
        v21 = (v18 & v19) >> 6;
        v22 = 1 << (v18 & v19);
        if ((v22 & *(v33 + 8 * v21)) == 0)
        {

          v9 = v30;
          v5 = v31;
          goto LABEL_6;
        }

        v23 = (*(a4 + 48) + 16 * v20);
        if (*v23 == v17 && v23[1] == v16)
        {
          break;
        }

        v25 = sub_1C4F02938();
        v18 = v20 + 1;
      }

      while ((v25 & 1) == 0);

      v9 = v30;
      v26 = *(a1 + 8 * v21);
      *(a1 + 8 * v21) = v26 | v22;
      v5 = v31;
      if ((v26 & v22) != 0)
      {
        continue;
      }

      break;
    }

    v11 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_27;
    }
  }

  while (v11 != *(a4 + 16));
  v27 = 1;
LABEL_25:

  return v27;
}

void *sub_1C46B6748(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

uint64_t sub_1C46B67C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1C46B6558(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_1C46B6838(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1C46631DC(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1C46B6850(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1C46B6868(result, a2 & 1);
  }

  return result;
}

uint64_t sub_1C46B6868(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C46B6894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B89E8, &unk_1C4F3E630);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C46B6904()
{
  result = qword_1EC0BB1E0;
  if (!qword_1EC0BB1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB1E0);
  }

  return result;
}

uint64_t sub_1C46B6958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C46B69A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C43FBCA4(a1, a2, a3, a4);
  sub_1C43FCE50();
  v5 = sub_1C43FBC98();
  v6(v5);
  return v4;
}

uint64_t sub_1C46B6AD4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C46B6B80(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FCE50();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C46B6BD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1C46B6C50(uint64_t a1)
{
  type metadata accessor for Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_1C46B6CDC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C46B6CDC(uint64_t a1)
{
  if (!qword_1EC0BB208)
  {
    sub_1C4461BB8(255, &qword_1EDDDBB00, 0x1E69A9EA8);
    v1 = sub_1C4F017A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC0BB208);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for HistoricalFeatureCollector.Error(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C46B6DFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C46B6E38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C46B6E88(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_1C46B6EC4()
{
  result = qword_1EC0BB210;
  if (!qword_1EC0BB210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB210);
  }

  return result;
}

id sub_1C46B6F7C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = v0;
    sub_1C44F920C();
    v4 = sub_1C4637EC8();
    v5 = *(v0 + 16);
    *(v3 + 16) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

void *sub_1C46B6FDC(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  sub_1C4F02248();

  MEMORY[0x1C6940010](a1, a2);

  MEMORY[0x1C6940010](0x6669746E6564692ELL, 0xEB00000000726569);
  v2[3] = 0xD000000000000017;
  v2[4] = 0x80000001C4F920E0;
  return v2;
}

uint64_t sub_1C46B7098()
{
  v1 = v0;
  v2 = sub_1C4EF9D38();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C46B6F7C();
  v7 = sub_1C4F01108();
  v8 = [v6 stringForKey_];

  if (v8)
  {
    v9 = sub_1C4F01138();

    return v9;
  }

  else
  {
    sub_1C4EF9058();
    v11 = sub_1C4EF9CF8();
    (*(v3 + 8))(v5, v2);
    v12 = *(v1 + 16);
    v13 = sub_1C4F01108();
    v14 = sub_1C4F01108();
    [v12 setObject:v13 forKey:v14];

    return v11;
  }
}

void sub_1C46B7244()
{
  v0 = sub_1C46B6F7C();
  v1 = sub_1C4F01108();
  [v0 setURL:0 forKey:v1];
}

uint64_t sub_1C46B72D4()
{
  sub_1C46B72AC();

  return swift_deallocClassInstance();
}

uint64_t Date.dateComponentsJSONString(isAllDay:calendar:)(char a1)
{
  v2 = sub_1C4EF9648();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  if (a1)
  {
    if (qword_1EDDE6518 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1EDDF4920 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9EA8();

  v9 = sub_1C44CDAD4();
  (*(v4 + 8))(v8, v2);
  return v9;
}

uint64_t sub_1C46B7494()
{
  sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
  v0 = sub_1C4EF9F68();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F13950;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x1E6969AC0], v0);
  v6(v5 + v2, *MEMORY[0x1E6969A68], v0);
  v6(v5 + 2 * v2, *MEMORY[0x1E6969A78], v0);
  v6(v5 + 3 * v2, *MEMORY[0x1E6969A48], v0);
  result = (v6)(v5 + 4 * v2, *MEMORY[0x1E6969A58], v0);
  qword_1EDE2D420 = v4;
  return result;
}

void sub_1C46B760C()
{
  if (qword_1EDDF45A0 != -1)
  {
    sub_1C442C700(&qword_1EDDF45A0);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4597E5C();
  qword_1EDE2CDC0 = v0;
}

void sub_1C46B7658()
{
  if (qword_1EDDF45A0 != -1)
  {
    sub_1C442C700(&qword_1EDDF45A0);
  }

  sub_1C456902C(&unk_1EC0BAD80, qword_1C4F16920);
  v0 = sub_1C4EF9F68();
  sub_1C43FCDF8();
  v2 = v1;
  v4 = *(v3 + 72);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0C890;
  v7 = *(v2 + 104);
  v7(v6 + v5, *MEMORY[0x1E6969A88], v0);
  v7(v6 + v5 + v4, *MEMORY[0x1E6969A98], v0);
  v7(v6 + v5 + 2 * v4, *MEMORY[0x1E6969A00], v0);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3D34(v6);
  sub_1C4597E5C();
  qword_1EDE2D428 = v8;
}

uint64_t type metadata accessor for DateFetcher(uint64_t a1)
{
  result = qword_1EDDF9390;
  if (!qword_1EDDF9390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46B784C(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for DecayingHistogramState(uint64_t a1)
{
  result = qword_1EDDF3E98;
  if (!qword_1EDDF3E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C46B792C(uint64_t a1)
{
  sub_1C4461BB8(319, &qword_1EDDFA4B0, 0x1E69A4688);
  if (v1 <= 0x3F)
  {
    sub_1C45C2C2C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C46B79C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a1;
  sub_1C442C720();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = sub_1C4F01F48();
  sub_1C43FCDF8();
  v11 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  sub_1C440BAA8(&v18 - v13, 1, 1, AssociatedTypeWitness);
  v19 = a2;
  v15 = v21;
  sub_1C46B7D18(v14, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4, a5);
  if (v15)
  {
    (*(v11 + 8))(v14, v20);
  }

  else
  {
    v17 = v16;
    v21 = a5;
    (*(v11 + 8))(v14, v20);
    if (v17 != 0.0)
    {
      sub_1C46B7D18(v18, v19, a3 | ((HIDWORD(a3) & 1) << 32), a4, v21);
    }
  }
}

void sub_1C46B7B6C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a3;
  v20 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1C4F01F48();
  sub_1C43FCDF8();
  v11 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  sub_1C440BAA8(&v19 - v13, 1, 1, AssociatedTypeWitness);
  v23 = 1;
  v15 = v22;
  sub_1C46B7D18(a2, v14, 0x100000000, a4, a5);
  if (v15)
  {
    (*(v11 + 8))(v14, v9);
  }

  else
  {
    v17 = v16;
    v18 = v21;
    (*(v11 + 8))(v14, v9);
    if (v17 != 0.0)
    {
      sub_1C46B7D18(a2, v20, v18 | ((HIDWORD(v18) & 1) << 32), a4, a5);
    }
  }
}

void sub_1C46B7D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a3;
  v62 = a2;
  v64 = a1;
  v7 = type metadata accessor for DecayingHistogramState(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C442C720();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C4F01F48();
  sub_1C43FCDF8();
  v60 = v11;
  v61 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54[-v13];
  v63 = AssociatedTypeWitness;
  v57 = *(AssociatedTypeWitness - 8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v54[-v16];
  sub_1C442C720();
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_1C4F01F48();
  sub_1C43FCDF8();
  v20 = v19;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54[-v22];
  v24 = *(v17 - 8);
  sub_1C43FBC68();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v54[-v27];
  (*(v20 + 16))(v23, v64, v18, v26);
  if (sub_1C44157D4(v23, 1, v17) == 1)
  {
    v64 = a5;
    (*(v20 + 8))(v23, v18);
    v55 = 0xFFFF;
    v29 = v65;
  }

  else
  {
    (*(v24 + 32))(v28, v23, v17);
    v30 = v65;
    v31 = (*(a5 + 72))(v28, a4, a5);
    v29 = v30;
    if (v30)
    {
      (*(v24 + 8))(v28, v17);
      return;
    }

    v55 = v31;
    v64 = a5;
    (*(v24 + 8))(v28, v17);
  }

  v33 = v60;
  v32 = v61;
  (*(v60 + 16))(v14, v62, v61);
  v34 = v63;
  v35 = a4;
  if (sub_1C44157D4(v14, 1, v63) == 1)
  {
    (*(v33 + 8))(v14, v32);
    v36 = -1;
  }

  else
  {
    v37 = v57;
    v38 = v56;
    (*(v57 + 32))();
    v39 = (*(v64 + 80))(v38, v35, v64);
    if (v29)
    {
      (*(v37 + 8))(v38, v34);
      return;
    }

    v36 = v39;
    (*(v37 + 8))(v38, v34);
  }

  if ((v58 & 0x100000000) != 0)
  {
    v49 = v59;
    v50 = sub_1C440BB4C();
    v51(v50);
    v44 = *v49;
    sub_1C46B8D58(v49);
    [v44 lookupUnsmoothedA:v55 b:v36];
  }

  else
  {
    v40 = 1.0 / *&v58;
    v41 = v59;
    v42 = sub_1C440BB4C();
    v43(v42);
    v44 = *v41;
    sub_1C46B8D58(v41);
    v45 = sub_1C440BB4C();
    v47 = v46(v45);
    *&v48 = v40;
    [v44 lookupSmoothedWithBucketCount:v47 distanceScale:v55 a:v36 b:v48];
  }

  v52 = sub_1C440BB4C();
  sub_1C46B8274(v52, v53);
}

double sub_1C46B8274(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for DecayingHistogramState(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - v18;
  v20 = *(a2 + 48);
  v28 = a1;
  v29 = v2;
  v20(a1, a2, v17);
  sub_1C4467FE0(&v11[*(v9 + 28)], v7);
  sub_1C46B8D58(v11);
  if (sub_1C44157D4(v7, 1, v12) == 1)
  {
    sub_1C44686E4(v7);
    return 1.0;
  }

  else
  {
    (*(v13 + 32))(v19, v7, v12);
    v22 = v28;
    v23 = (*(a2 + 40))(v28, a2);
    v23();

    v24 = (*(a2 + 24))(v22, a2);
    sub_1C4EF9B78();
    v21 = 1.0;
    if (v25 > 0.0)
    {
      v21 = exp2(-v25 / v24);
    }

    v26 = *(v13 + 8);
    v26(v15, v12);
    v26(v19, v12);
  }

  return v21;
}

uint64_t sub_1C46B8530(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C46B8584(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6172676F74736968;
  }
}

uint64_t sub_1C46B85F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C46B8530(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C46B8620@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C46B8584(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C46B8654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C46B8530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C46B8688(uint64_t a1)
{
  v2 = sub_1C46B8DB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46B86C4(uint64_t a1)
{
  v2 = sub_1C46B8DB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C46B8700@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - v5;
  sub_1C456902C(&qword_1EC0BB220, &qword_1C4F1E4D8);
  sub_1C43FCDF8();
  v32 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v9 = type metadata accessor for DecayingHistogramState(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v12 + 28);
  v14 = sub_1C4EF9CD8();
  v34 = v11;
  v35 = v13;
  sub_1C440BAA8(v11 + v13, 1, 1, v14);
  v15 = a1[3];
  v33 = a1;
  sub_1C4409678(a1, v15);
  sub_1C46B8DB4();
  sub_1C4F02BC8();
  if (v2)
  {
    goto LABEL_3;
  }

  v16 = v6;
  v38 = 0;
  sub_1C444C16C();
  sub_1C4F026C8();
  v17 = v36;
  v18 = v37;
  sub_1C4461BB8(0, &qword_1EDDFCE70, 0x1E696ACD0);
  sub_1C4461BB8(0, &qword_1EDDFA4B0, 0x1E69A4688);
  v19 = sub_1C4F01D38();
  v29 = v17;
  v30 = v18;
  if (!v19)
  {
    sub_1C461B7AC();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();
    sub_1C4434000(v29, v30);
    v26 = sub_1C4400068();
    v27(v26);
LABEL_3:
    v20 = v34;
    sub_1C440962C(v33);
    return sub_1C44686E4(v20 + v35);
  }

  v22 = v34;
  *v34 = v19;
  LOBYTE(v36) = 1;
  sub_1C4498DE4(&unk_1EDDFCD60, MEMORY[0x1E6969558]);
  sub_1C4F02658();
  v23 = sub_1C4400068();
  v24(v23);
  sub_1C4434000(v29, v30);
  sub_1C45AD734(v16, v22 + v35);
  sub_1C46B8E08(v22, v31);
  sub_1C440962C(v33);
  return sub_1C46B8D58(v22);
}

uint64_t sub_1C46B8AB8(void *a1)
{
  v3 = v1;
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = sub_1C456902C(&qword_1EC0BB228, &qword_1C4F1E4E0);
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C46B8DB4();
  sub_1C4F02BF8();
  v11 = objc_opt_self();
  v12 = *v3;
  v21[0] = 0;
  v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v21];
  v14 = v21[0];
  if (v13)
  {
    v15 = sub_1C4EF9A68();
    v17 = v16;

    v21[0] = v15;
    v21[1] = v17;
    v20[7] = 0;
    sub_1C446E5F8();
    sub_1C4F027E8();
    if (!v2)
    {
      type metadata accessor for DecayingHistogramState(0);
      LOBYTE(v21[0]) = 1;
      sub_1C4EF9CD8();
      sub_1C4498DE4(&qword_1EDDFCD80, MEMORY[0x1E6969538]);
      sub_1C4F02778();
    }

    (*(v7 + 8))(v10, v5);
    return sub_1C4434000(v15, v17);
  }

  else
  {
    v19 = v14;
    sub_1C4EF97A8();

    swift_willThrow();
    return (*(v7 + 8))(v10, v5);
  }
}

uint64_t sub_1C46B8D58(uint64_t a1)
{
  v2 = type metadata accessor for DecayingHistogramState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C46B8DB4()
{
  result = qword_1EDDF3EC8[0];
  if (!qword_1EDDF3EC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDF3EC8);
  }

  return result;
}

uint64_t sub_1C46B8E08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DecayingHistogramState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for DecayingHistogramState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistogramError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C46B9028()
{
  result = qword_1EC0BB230;
  if (!qword_1EC0BB230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB230);
  }

  return result;
}

unint64_t sub_1C46B9080()
{
  result = qword_1EC0BB238;
  if (!qword_1EC0BB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB238);
  }

  return result;
}

unint64_t sub_1C46B90D8()
{
  result = qword_1EDDF3EB8;
  if (!qword_1EDDF3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF3EB8);
  }

  return result;
}

unint64_t sub_1C46B9130()
{
  result = qword_1EDDF3EC0;
  if (!qword_1EDDF3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF3EC0);
  }

  return result;
}

uint64_t type metadata accessor for Deduper(uint64_t a1)
{
  result = qword_1EDDDC078;
  if (!qword_1EDDDC078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Deduper.stageName.getter()
{
  result = sub_1C4416FB0();
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t Deduper.pipelineType.getter()
{
  result = sub_1C4416FB0();
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t Deduper.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for Deduper(0);
  *(a4 + v8[6]) = 3;
  sub_1C4400074();
  sub_1C44309B8(a1, a4);
  sub_1C4471E40(a2, a4 + v8[5]);
  result = sub_1C4471E40(a1, a4 + v8[7]);
  *(a4 + v8[8]) = v7;
  return result;
}

uint64_t Deduper.execute()()
{
  v1[3] = v0;
  v2 = sub_1C4EFD548();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46B9448, 0, 0);
}

uint64_t sub_1C46B9448()
{
  v19 = v0;
  v1 = v0[3];
  v2 = type metadata accessor for Deduper(0);
  v3 = v1 + *(v2 + 20);
  if (*(v3 + *(type metadata accessor for Source(0) + 28)) == 1)
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    _s24IntelligencePlatformCore15LocationMatcherV11entityClass0aB006EntityG0Vvg_0();
    sub_1C46B9684(v4);
    v7 = *(v5 + 8);
    v7(v4, v6);
    sub_1C4EFD4C8();
    sub_1C46B9684(v4);
    v7(v4, v6);
    sub_1C4EF9AE8();
    sub_1C43FBD94();
    sub_1C464C358();
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDE2DE10);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v0[2] = v2;
      sub_1C456902C(&qword_1EC0BA558, &qword_1C4F14288);
      v13 = sub_1C4F01198();
      v15 = sub_1C441D828(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1C43F8000, v9, v10, "<%s - Skipping because Deduping is disabled for this source>", v11, 0xCu);
      sub_1C440962C(v12);
      MEMORY[0x1C6942830](v12, -1, -1);
      MEMORY[0x1C6942830](v11, -1, -1);
    }
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1C46B9684(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Deduper(0);
  type metadata accessor for PhaseStores(0);
  v23 = *(v2 + *(v7 + 32));
  v8 = v23;
  v9 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v11 = *(v10 + 16);
  v11(v6, a1, v9);
  sub_1C43FBD94();
  sub_1C440BAA8(v12, v13, v14, v9);
  v15 = sub_1C44B0950();
  sub_1C4420C3C(v6, &qword_1EC0B8568, &unk_1C4F319B0);
  v16 = sub_1C46B9844(v15, 0.99);

  v22 = v8;
  v11(v6, a1, v9);
  sub_1C43FBD94();
  sub_1C440BAA8(v17, v18, v19, v9);
  sub_1C44ABA54(&v22, v6);
  sub_1C4420C3C(v6, &qword_1EC0B8568, &unk_1C4F319B0);
  sub_1C4B46D80(v16);
}

uint64_t sub_1C46B9844(uint64_t a1, float a2)
{
  v4 = 0;
  v106 = sub_1C456902C(&qword_1EC0BB240, "nG\v");
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v7);
  v103 = &v94 - v8;
  v115 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v114 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v94 - v15;
  v113 = type metadata accessor for EntityMatch(0);
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v94 - v24;
  v117 = sub_1C46BA4AC();
  v26 = *(a1 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  v96 = 0;
  v112 = v17;
  while (v26 != v4)
  {
    sub_1C4406A28();
    sub_1C44309B8(v28, v25);
    if (sub_1C4EFEFF8())
    {
      sub_1C44E383C(v25);
      ++v4;
    }

    else
    {
      sub_1C441937C();
      sub_1C4471E40(v25, v111);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v118 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C459DDD8();
        v27 = v118;
      }

      v30 = *(v27 + 16);
      v31 = v27;
      if (v30 >= *(v27 + 24) >> 1)
      {
        sub_1C459DDD8();
        v31 = v118;
      }

      ++v4;
      *(v31 + 16) = v30 + 1;
      v27 = v31;
      sub_1C441937C();
      sub_1C4471E40(v111, v32);
      v17 = v112;
    }
  }

  sub_1C44B2C94(v116, a2, v27);
  sub_1C44B35B4();
  v118 = v116[0];
  v119 = v116[1];
  v120 = v116[2];
  v33 = sub_1C44B3BBC(a2);
  v100 = *(v33 + 16);
  if (v100)
  {
    v34 = 0;
    v97 = v33;
    v99 = v33 + 32;
    v35 = v114 + 16;
    v36 = (v114 + 8);
    v37 = v110;
    v38 = v113;
    v107 = (v114 + 8);
    while (1)
    {
      v39 = *(v99 + 8 * v34);
      v111 = v34 + 1;
      sub_1C440BAA8(v37, 1, 1, v38);
      v40 = 1 << *(v39 + 32);
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v42 = v41 & *(v39 + 56);
      v43 = (v40 + 63) >> 6;
      result = swift_bridgeObjectRetain_n();
      v45 = 0;
      for (i = 0.0; v42; i = v55)
      {
LABEL_20:
        (*(v114 + 16))(v12, *(v39 + 48) + *(v114 + 72) * (__clz(__rbit64(v42)) | (v45 << 6)), v115);
        if (*(v117 + 16) && (sub_1C44E3664(), (v48 & 1) != 0))
        {
          v49 = v12;
          v50 = v35;
          sub_1C4406A28();
          v51 = v109;
          sub_1C44309B8(v52, v109);
          sub_1C441937C();
          v53 = v108;
          sub_1C4471E40(v51, v108);
          v54 = v113;
          v55 = *(v53 + *(v113 + 28));
          if (i >= v55)
          {
            sub_1C44E383C(v53);
            v55 = i;
          }

          else
          {
            v56 = v110;
            sub_1C4420C3C(v110, &qword_1EC0BB248, &qword_1C4F1E7C8);
            sub_1C441937C();
            sub_1C4471E40(v53, v56);
            sub_1C43FBD94();
            sub_1C440BAA8(v57, v58, v59, v54);
          }

          v35 = v50;
          v12 = v49;
          v36 = v107;
        }

        else
        {
          v55 = i;
        }

        v42 &= v42 - 1;
        result = (*v36)(v12, v115);
      }

      while (1)
      {
        v47 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          __break(1u);
          goto LABEL_59;
        }

        if (v47 >= v43)
        {
          break;
        }

        v42 = *(v39 + 56 + 8 * v47);
        ++v45;
        if (v42)
        {
          v45 = v47;
          goto LABEL_20;
        }
      }

      v37 = v110;
      v60 = v101;
      sub_1C46BAFF4(v110, v101);
      v38 = v113;
      if (sub_1C44157D4(v60, 1, v113) == 1)
      {

        sub_1C4420C3C(v60, &qword_1EC0BB248, &qword_1C4F1E7C8);
      }

      else
      {
        sub_1C441937C();
        v61 = v98;
        v62 = sub_1C4471E40(v60, v98);
        MEMORY[0x1EEE9AC00](v62);
        *(&v94 - 2) = &v117;
        *(&v94 - 1) = v61;
        v63 = v96;
        sub_1C4D37408();
        v96 = v63;

        sub_1C44E383C(v61);
      }

      v34 = v111;
      sub_1C4420C3C(v37, &qword_1EC0BB248, &qword_1C4F1E7C8);
      if (v34 == v100)
      {

        v17 = v112;
        goto LABEL_35;
      }
    }
  }

LABEL_35:
  v124 = *(&v118 + 1);
  v125 = v118;
  v122 = *(&v119 + 1);
  v123 = v119;
  v64 = *(v117 + 16);
  if (v64)
  {
    v121 = MEMORY[0x1E69E7CC0];
    v65 = v117;
    sub_1C459DDD8();
    v66 = v65;
    v113 = v121;
    result = sub_1C4703354();
    v69 = result;
    v70 = 0;
    v111 = v66 + 64;
    v101 = v114 + 16;
    v100 = v114 + 32;
    v99 = v114 + 8;
    v95 = v66 + 72;
    v97 = v64;
    v98 = v66;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v69 < 1 << *(v66 + 32))
      {
        v71 = v69 >> 6;
        if ((*(v111 + 8 * (v69 >> 6)) & (1 << v69)) == 0)
        {
          goto LABEL_60;
        }

        if (*(v66 + 36) != v67)
        {
          goto LABEL_61;
        }

        LODWORD(v107) = v68;
        v109 = v67;
        v108 = v70;
        v72 = v17;
        v73 = v115;
        v74 = v106;
        v75 = *(v106 + 48);
        v76 = v114;
        v77 = v103;
        (*(v114 + 16))(v103, *(v66 + 48) + *(v114 + 72) * v69, v115);
        v110 = *(v72 + 72);
        sub_1C4406A28();
        sub_1C44309B8(v78, &v77[v75]);
        v79 = v104;
        (*(v76 + 32))(v104, v77, v73);
        sub_1C4471E40(&v77[v75], v79 + *(v74 + 48));
        v80 = v105;
        sub_1C46BB064(v79, v105);
        v81 = v102;
        sub_1C4471E40(v80 + *(v74 + 48), v102);
        (*(v76 + 8))(v80, v73);
        v121 = v113;
        v82 = *(v113 + 16);
        if (v82 >= *(v113 + 24) >> 1)
        {
          sub_1C459DDD8();
          v113 = v121;
        }

        *(v113 + 16) = v82 + 1;
        v17 = v112;
        sub_1C441937C();
        result = sub_1C4471E40(v81, v83);
        v66 = v98;
        v84 = 1 << *(v98 + 32);
        if (v69 >= v84)
        {
          goto LABEL_62;
        }

        v85 = *(v111 + 8 * v71);
        if ((v85 & (1 << v69)) == 0)
        {
          goto LABEL_63;
        }

        if (*(v98 + 36) != v109)
        {
          goto LABEL_64;
        }

        v86 = v85 & (-2 << (v69 & 0x3F));
        if (v86)
        {
          v84 = __clz(__rbit64(v86)) | v69 & 0x7FFFFFFFFFFFFFC0;
          v87 = v97;
          v88 = v108;
        }

        else
        {
          v89 = v71 << 6;
          v90 = v71 + 1;
          v91 = (v95 + 8 * v71);
          v87 = v97;
          v88 = v108;
          while (v90 < (v84 + 63) >> 6)
          {
            v93 = *v91++;
            v92 = v93;
            v89 += 64;
            ++v90;
            if (v93)
            {
              result = sub_1C440951C(v69, v109, v107 & 1);
              v84 = __clz(__rbit64(v92)) + v89;
              goto LABEL_52;
            }
          }

          result = sub_1C440951C(v69, v109, v107 & 1);
        }

LABEL_52:
        v70 = v88 + 1;
        if (v70 == v87)
        {
          sub_1C4420C3C(&v125, &qword_1EC0BB250, &unk_1C4F1E7D0);
          sub_1C4420C3C(&v124, &qword_1EC0BB258, &unk_1C4F4F980);
          sub_1C4420C3C(&v123, &qword_1EC0BB260, &unk_1C4F1E7E0);
          sub_1C4420C3C(&v122, &qword_1EC0BB268, &unk_1C4F4F990);
          goto LABEL_57;
        }

        v68 = 0;
        v67 = *(v66 + 36);
        v69 = v84;
        if (v84 < 0)
        {
          break;
        }
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  else
  {
    sub_1C4420C3C(&v125, &qword_1EC0BB250, &unk_1C4F1E7D0);
    sub_1C4420C3C(&v124, &qword_1EC0BB258, &unk_1C4F4F980);
    sub_1C4420C3C(&v123, &qword_1EC0BB260, &unk_1C4F1E7E0);
    sub_1C4420C3C(&v122, &qword_1EC0BB268, &unk_1C4F4F990);
    v113 = MEMORY[0x1E69E7CC0];
LABEL_57:
    v121 = *(&v120 + 1);
    sub_1C4420C3C(&v121, &qword_1EC0BB270, qword_1C4F1E7F0);

    return v113;
  }

  return result;
}

uint64_t sub_1C46BA4AC()
{
  sub_1C43FBE94();
  v1 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EntityMatch(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v49 - v18;
  v20 = *(v0 + 16);
  if (!v20)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v21 = v6[6];
  v22 = v0 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v59 = *(v17 + 72);
  v57 = (v3 + 16);
  v23 = v3;
  v24 = MEMORY[0x1E69E7CC8];
  v51 = v23;
  v52 = v21;
  v53 = v6;
  v54 = (v23 + 8);
  v55 = &v49 - v18;
  v56 = v15;
  while (1)
  {
    sub_1C44309B8(v22, v19);
    if ((sub_1C4EFEFF8() & 1) == 0)
    {
      sub_1C44E383C(v19);
      goto LABEL_19;
    }

    sub_1C44309B8(v19, v15);
    v25 = v6[5];
    if (*(v24 + 16))
    {
      sub_1C44E3664();
      if (v26)
      {
        sub_1C4406A28();
        v27 = v50;
        sub_1C44309B8(v28, v50);
        sub_1C441937C();
        v29 = v27;
        v30 = v49;
        sub_1C4471E40(v29, v49);
        if (*&v19[v6[7]] >= *(v30 + v6[7]))
        {
          sub_1C44E383C(v30);
        }

        else
        {
          sub_1C44E383C(v15);
          sub_1C441937C();
          sub_1C4471E40(v30, v15);
        }
      }
    }

    v31 = v19;
    v32 = *v57;
    (*v57)(v58, &v31[v25], v1);
    sub_1C4406A28();
    v33 = v15;
    v34 = v8;
    sub_1C44309B8(v33, v8);
    swift_isUniquelyReferenced_nonNull_native();
    v60 = v24;
    sub_1C44E3664();
    if (__OFADD__(*(v24 + 16), (v36 & 1) == 0))
    {
      break;
    }

    v37 = v35;
    v38 = v36;
    sub_1C456902C(&qword_1EC0B8DB0, &qword_1C4F0E348);
    if (sub_1C4F02458())
    {
      sub_1C44E3664();
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_25;
      }

      v37 = v39;
    }

    v24 = v60;
    if (v38)
    {
      v41 = *(v60 + 56) + v37 * v59;
      v8 = v34;
      sub_1C46BB0F0(v34, v41);
      (*v54)(v58, v1);
      v15 = v56;
      sub_1C44E383C(v56);
      v19 = v55;
      sub_1C44E383C(v55);
    }

    else
    {
      *(v60 + 8 * (v37 >> 6) + 64) |= 1 << v37;
      v42 = v51;
      v43 = v58;
      v32((*(v24 + 48) + *(v51 + 72) * v37), v58, v1);
      sub_1C441937C();
      v8 = v34;
      sub_1C4471E40(v34, v44);
      (*(v42 + 8))(v43, v1);
      v15 = v56;
      sub_1C44E383C(v56);
      v19 = v55;
      sub_1C44E383C(v55);
      v45 = *(v24 + 16);
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_24;
      }

      *(v24 + 16) = v47;
    }

    v6 = v53;
LABEL_19:
    v22 += v59;
    if (!--v20)
    {
      return v24;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C46BA984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a3;
  v44 = a2;
  v4 = type metadata accessor for EntityMatch(0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1C4EFD548();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = sub_1C4EFF0C8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v41 = v14;
  v22 = *(v14 + 16);
  v43 = &v36 - v23;
  v22(v21);
  v24 = *(v46 + 16);
  v45 = v7;
  v25 = v7;
  v26 = v40;
  v24(v25, v40, v47);
  v39 = v19;
  (v22)(v19, a1, v13);
  v27 = v26 + v4[6];
  v42 = v16;
  (v22)(v16, v27, v13);
  v28 = *(v26 + v4[7]);
  v29 = *(v26 + v4[8]);
  v30 = *(v26 + v4[9]);
  v31 = v38;
  sub_1C465C5B0();
  if (sub_1C44157D4(v31, 1, v4))
  {
    sub_1C4420C3C(v31, &qword_1EC0BB248, &qword_1C4F1E7C8);
    v32 = 0;
  }

  else
  {
    v33 = v37;
    sub_1C44309B8(v31, v37);
    sub_1C4420C3C(v31, &qword_1EC0BB248, &qword_1C4F1E7C8);
    v32 = *(v33 + v4[10]);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C44E383C(v33);
  }

  (*(v46 + 32))(v12, v45, v47);
  v34 = *(v41 + 32);
  v34(&v12[v4[5]], v39, v13);
  v34(&v12[v4[6]], v42, v13);
  *&v12[v4[7]] = v28;
  *&v12[v4[8]] = v29;
  v12[v4[9]] = v30;
  *&v12[v4[10]] = v32;
  sub_1C440BAA8(v12, 0, 1, v4);
  return sub_1C4C809F8();
}

uint64_t sub_1C46BADC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return Deduper.execute()();
}

uint64_t sub_1C46BAE54(uint64_t a1)
{
  result = sub_1C46BAEDC(&qword_1EDDDC088, &protocol conformance descriptor for Deduper);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46BAE98(uint64_t a1)
{
  result = sub_1C46BAEDC(&qword_1EDDDC098, &protocol conformance descriptor for Deduper);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46BAEDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Deduper(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C46BAF48(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Source(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PhaseStores(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C46BAFF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB248, &qword_1C4F1E7C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46BB064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB240, "nG\v");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46BB0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityMatch(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46BB164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C4F00978();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB5F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C442C730();
  sub_1C4EFD9F8();
  sub_1C46BC6FC();
  sub_1C4EFB5D8();
  if (v3)
  {
    v11 = sub_1C43FC1C0();
    return v12(v11);
  }

  else
  {
    v14 = sub_1C43FC1C0();
    v15(v14);
    sub_1C4F00178();
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CB8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = sub_1C43FCED0();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v16, v17, "DefaultResolverInteractionsViewGenerator: finished database migration.", v18, 2u);
      sub_1C43FBE2C();
    }

    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t sub_1C46BB340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  return sub_1C446C37C(sub_1C46BC374, v5);
}

uint64_t sub_1C46BB38C(uint64_t a1)
{
  v3 = sub_1C4F00978();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v36 = v7;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  sub_1C4F00178();
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CB8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_1C43FCED0();
    *v16 = 0;
    _os_log_impl(&dword_1C43F8000, v14, v15, "DefaultResolverInteractionsViewGenerator: drop indexes.", v16, 2u);
    sub_1C43FBE2C();
  }

  v17 = *(v5 + 8);
  v17(v13, v3);
  result = sub_1C46BB670(a1);
  if (!v1)
  {
    v21 = v20;
    v34 = result;
    v35 = v19;
    sub_1C4F00178();
    v22 = sub_1C4F00968();
    v23 = sub_1C4F01CB8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = sub_1C43FCED0();
      v33 = a1;
      *v24 = 0;
      sub_1C4408858(&dword_1C43F8000, v25, v26, "DefaultResolverInteractionsViewGenerator: clear all tables.");
      a1 = v33;
      sub_1C43FBE2C();
    }

    v17(v10, v3);
    sub_1C448DE08();
    sub_1C46A9F14(v27);

    sub_1C4F00178();
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CB8();
    if (os_log_type_enabled(v28, v29))
    {
      *sub_1C43FCED0() = 0;
      sub_1C4408858(&dword_1C43F8000, v30, v31, "DefaultResolverInteractionsViewGenerator: restore indexes.");
      sub_1C43FBE2C();
    }

    v17(v36, v3);
    sub_1C46BBC64(a1, v34, v35, v21);
  }

  return result;
}

uint64_t sub_1C46BB670(uint64_t a1)
{
  v3 = v2;
  v5 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v68 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C4F00978();
  sub_1C43FCDF8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C442C730();
  sub_1C4F00178();
  v14 = sub_1C4F00968();
  v15 = sub_1C4F01CC8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = sub_1C43FCED0();
    v69 = v9;
    *v16 = 0;
    _os_log_impl(&dword_1C43F8000, v14, v15, "DefaultResolverInteractionsViewGenerator: DefaultResolverInteractionsDatabaseTable: dropping indexes", v16, 2u);
    v3 = v2;
    v9 = v69;
    sub_1C43FBE2C();
  }

  (*(v12 + 8))(v1, v10);
  v17 = sub_1C46A9F90(0, 0, 0x7865646E69, 0xE500000000000000);
  if (v3)
  {
    return v10;
  }

  v10 = v17;
  v71 = a1;
  v69 = v9;
  v66 = v5;
  v18 = v17 + 64;
  sub_1C43FD030();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v24 = 0;
  if (v21)
  {
    while (1)
    {
      v25 = v24;
LABEL_9:
      sub_1C43FD47C();
      v27 = *(*(v10 + 48) + v26);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4402EF8();
      sub_1C4EFBF58();
      if (v27)
      {

        goto LABEL_13;
      }

      v21 &= v21 - 1;

      v24 = v25;
      if (!v21)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v25 >= v23)
    {
      break;
    }

    v21 = *(v18 + 8 * v25);
    ++v24;
    if (v21)
    {
      goto LABEL_9;
    }
  }

  sub_1C4402EF8();
  v32 = sub_1C46A9F90(v28, v29, v30, v31);
  v33 = sub_1C46BC40C(v32);

  v34 = v33 + 64;
  sub_1C43FD030();
  v37 = v36 & v35;
  v39 = (v38 + 63) >> 6;

  v41 = 0;
  v67 = v33;
  if (v37)
  {
    while (1)
    {
      v42 = v41;
LABEL_19:
      sub_1C43FD47C();
      v44 = *(*(v33 + 6) + v43);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4402EF8();
      sub_1C4EFBF68();
      if (v44)
      {
        break;
      }

      v37 &= v37 - 1;

      v41 = v42;
      v33 = v67;
      if (!v37)
      {
        goto LABEL_16;
      }
    }

    return v10;
  }

  while (1)
  {
LABEL_16:
    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    }

    if (v42 >= v39)
    {
      break;
    }

    v37 = *&v34[8 * v42];
    ++v41;
    if (v37)
    {
      goto LABEL_19;
    }
  }

  v45 = sub_1C46A9F90(0, 0, 0x72656767697274, 0xE700000000000000);
  v46 = v45;
  v47 = v45 + 64;
  sub_1C43FD030();
  v50 = v49 & v48;
  v52 = (v51 + 63) >> 6;
  v68 += 8;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v53 = 0;
  v63 = v52;
  v64 = v47;
  v65 = result;
  if (!v50)
  {
LABEL_27:
    while (1)
    {
      v54 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_38;
      }

      if (v54 >= v52)
      {

        return v10;
      }

      v50 = *(v47 + 8 * v54);
      ++v53;
      if (v50)
      {
        goto LABEL_30;
      }
    }
  }

  while (1)
  {
    v54 = v53;
LABEL_30:
    v55 = (*(v46 + 48) + ((v54 << 10) | (16 * __clz(__rbit64(v50)))));
    v56 = *v55;
    v57 = v55[1];
    strcpy(v70, "DROP TRIGGER ");
    v70[7] = -4864;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    MEMORY[0x1C6940010](v56, v57);
    sub_1C4EFB758();
    sub_1C4402EF8();
    sub_1C4EFBFF8();
    if (v56)
    {
      break;
    }

    v50 &= v50 - 1;

    v58 = sub_1C440E088();
    result = v59(v58);
    v53 = v54;
    v47 = v64;
    v46 = v65;
    v52 = v63;
    if (!v50)
    {
      goto LABEL_27;
    }
  }

LABEL_36:

  v60 = sub_1C440E088();
  v61(v60);
LABEL_13:

  return v10;
}

uint64_t sub_1C46BBC64(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v74 = a4;
  v75 = a2;
  v76 = a3;
  v77 = a1;
  v80 = sub_1C4EFB768();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v70 = v8;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v9);
  v72 = &v69 - v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v69 - v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C4F00978();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C442C730();
  sub_1C4F00178();
  v15 = sub_1C4F00968();
  v16 = sub_1C4F01CC8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_1C43FCED0();
    *v17 = 0;
    _os_log_impl(&dword_1C43F8000, v15, v16, "DefaultResolverInteractionsViewGenerator: DefaultResolverInteractionsDatabaseTable: restoring indexes", v17, 2u);
    sub_1C43FBE2C();
  }

  v18 = sub_1C43FC1C0();
  v19(v18);
  v20 = v75 + 64;
  sub_1C43FD030();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v78 = v6 + 8;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v27 = 0;
  if (v23)
  {
    while (1)
    {
      v28 = v27;
LABEL_8:
      sub_1C441F748();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB758();
      sub_1C43FC1C0();
      sub_1C4EFBFF8();
      if (v4)
      {
        break;
      }

      v23 &= v23 - 1;

      v29 = sub_1C440008C();
      result = v30(v29, v80);
      v27 = v28;
      if (!v23)
      {
        goto LABEL_5;
      }
    }

    v64 = sub_1C440008C();
    return v65(v64, v80);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v28 >= v25)
      {
        break;
      }

      v23 = *(v20 + 8 * v28);
      ++v27;
      if (v23)
      {
        goto LABEL_8;
      }
    }

    v31 = v76 + 64;
    sub_1C43FD030();
    v34 = v33 & v32;
    v36 = (v35 + 63) >> 6;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v37 = 0;
    v38 = v4;
    if (!v34)
    {
      goto LABEL_13;
    }

    do
    {
      v39 = v37;
LABEL_16:
      sub_1C441F748();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFB758();
      sub_1C43FC1C0();
      sub_1C4EFBFF8();
      if (v4)
      {

        v66 = sub_1C440008C();
        return v67(v66, v80);
      }

      v34 &= v34 - 1;

      v40 = sub_1C440008C();
      result = v41(v40, v80);
      v37 = v39;
    }

    while (v34);
LABEL_13:
    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= v36)
      {

        v42 = (v74 + 64);
        sub_1C43FD030();
        v45 = v44 & v43;
        v47 = (v46 + 63) >> 6;
        result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v48 = 0;
        v71 = v31;
        if (!v45)
        {
LABEL_21:
          v50 = v72;
          while (1)
          {
            v49 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              goto LABEL_46;
            }

            if (v49 >= v47)
            {
              v75 = v38;

              v52 = 1 << *(v76 + 32);
              v53 = -1;
              if (v52 < 64)
              {
                v53 = ~(-1 << v52);
              }

              v54 = v53 & *(v76 + 64);
              v55 = (v52 + 63) >> 6;
              v74 = "DataCollectionMetadata.";
              result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              v56 = 0;
              if (v54)
              {
                while (1)
                {
                  v57 = v56;
LABEL_35:
                  v58 = (*(result + 48) + ((v57 << 10) | (16 * __clz(__rbit64(v54)))));
                  v59 = *v58;
                  v60 = v58[1];
                  v79[0] = 0;
                  v79[1] = 0xE000000000000000;
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                  sub_1C4F02248();

                  strcpy(v79, "INSERT INTO ");
                  BYTE5(v79[1]) = 0;
                  HIWORD(v79[1]) = -5120;
                  MEMORY[0x1C6940010](v59, v60);
                  MEMORY[0x1C6940010](40, 0xE100000000000000);
                  MEMORY[0x1C6940010](v59, v60);
                  MEMORY[0x1C6940010](0xD000000000000014, v74 | 0x8000000000000000);
                  v61 = v70;
                  sub_1C4EFB758();
                  sub_1C43FC1C0();
                  v62 = v75;
                  sub_1C4EFBFF8();
                  v75 = v62;
                  if (v62)
                  {
                    break;
                  }

                  v54 &= v54 - 1;
                  sub_1C440A8E0();
                  v63(v61, v80);

                  v56 = v57;
                  result = v76;
                  if (!v54)
                  {
                    goto LABEL_32;
                  }
                }

                sub_1C440A8E0();
                v68(v61, v80);
              }

LABEL_32:
              while (1)
              {
                v57 = v56 + 1;
                if (__OFADD__(v56, 1))
                {
                  goto LABEL_47;
                }

                if (v57 >= v55)
                {
                }

                v54 = *(v31 + 8 * v57);
                ++v56;
                if (v54)
                {
                  goto LABEL_35;
                }
              }
            }

            v45 = *&v42[8 * v49];
            ++v48;
            if (v45)
            {
              goto LABEL_25;
            }
          }
        }

        while (1)
        {
          v49 = v48;
          v50 = v72;
LABEL_25:
          sub_1C441F748();
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EFB758();
          sub_1C43FC1C0();
          sub_1C4EFBFF8();
          if (v38)
          {
            break;
          }

          v45 &= v45 - 1;

          sub_1C440A8E0();
          result = v51(v50, v80);
          v48 = v49;
          v31 = v71;
          if (!v45)
          {
            goto LABEL_21;
          }
        }

        sub_1C440A8E0();
        v66 = v50;
        return v67(v66, v80);
      }

      v34 = *(v31 + 8 * v39);
      ++v37;
      if (v34)
      {
        goto LABEL_16;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  return result;
}

void *sub_1C46BC394(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1C46BC570(v5, a2, a3);

    return v6;
  }

  return result;
}

void *sub_1C46BC40C(_BYTE *a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a1[32];
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1C46BC394(v8, v4, v2);
      MEMORY[0x1C6942830](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v4, v5);
  v6 = sub_1C46BC570(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t sub_1C46BC6FC()
{
  result = qword_1EDDFEDB0;
  if (!qword_1EDDFEDB0)
  {
    type metadata accessor for ErrorHandlingDatabasePool(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFEDB0);
  }

  return result;
}

uint64_t sub_1C46BC754()
{
  sub_1C43FBCD4();
  v1[16] = v2;
  v1[17] = v0;
  v1[15] = v3;
  type metadata accessor for PhaseStores(0);
  v1[18] = swift_task_alloc();
  v1[19] = type metadata accessor for Source(0);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C46BC824()
{
  v149 = v0;
  sub_1C441F770();
  sub_1C448CAE8(v1, v2, v3);
  if (qword_1EDDFED28 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 176);
  v5 = sub_1C442B738(*(v0 + 152), &unk_1EDDFD088);
  v6 = v5[1];
  v8 = *v4;
  v7 = v4[1];
  v9 = *v5 == v8 && v6 == v7;
  if (v9 || (sub_1C43FEC00(*v5, v6) & 1) != 0)
  {
    sub_1C4433298();
    sub_1C4419394();
    v10 = sub_1C43FBC98();
    sub_1C448CAE8(v10, v11, v12);
    *(v0 + 424) = 2;
    [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v13 = type metadata accessor for ContactsPersonPhase(0);
    *(v0 + 184) = v13;
    sub_1C44099C4(v13);
    v14 = swift_task_alloc();
    *(v0 + 192) = v14;
    *v14 = v0;
    sub_1C4408878(v14);
    sub_1C440F4D4(v15);
    sub_1C4410B00();

    return sub_1C44758E8(v16, v17, v18, v19);
  }

  if (qword_1EDDFD268 != -1)
  {
    swift_once();
  }

  v22 = sub_1C442B738(*(v0 + 152), &qword_1EDDFD270);
  v23 = sub_1C4406A40(v22);
  v25 = v9 && v24 == v7;
  if (v25 || (sub_1C43FEC00(v23, v24) & 1) != 0)
  {
    sub_1C4433298();
    sub_1C4419394();
    v26 = sub_1C43FBC98();
    sub_1C448CAE8(v26, v27, v28);
    *(v0 + 423) = 2;
    v29 = type metadata accessor for BMAppleMusicEventPhase(0);
    *(v0 + 208) = v29;
    sub_1C44099C4(v29);
    v30 = swift_task_alloc();
    *(v0 + 216) = v30;
    *v30 = v0;
    sub_1C4408878(v30);
    sub_1C440F4D4(v31);
    sub_1C4410B00();

    return sub_1C4656CD4(v32, v33);
  }

  if (qword_1EDDFED08 != -1)
  {
    swift_once();
  }

  v35 = sub_1C442B738(*(v0 + 152), qword_1EDDFED10);
  v36 = sub_1C4406A40(v35);
  v38 = v9 && v37 == v7;
  if (v38 || (sub_1C43FEC00(v36, v37) & 1) != 0)
  {
    sub_1C4433298();
    sub_1C4419394();
    v39 = sub_1C43FBC98();
    sub_1C448CAE8(v39, v40, v41);
    *(v0 + 422) = 2;
    v42 = type metadata accessor for LifeEventPhase(0);
    *(v0 + 232) = v42;
    sub_1C44099C4(v42);
    v43 = swift_task_alloc();
    *(v0 + 240) = v43;
    *v43 = v0;
    sub_1C4408878(v43);
    sub_1C440F4D4(v44);
    sub_1C4410B00();

    return sub_1C49C9C78(v45, v46);
  }

  if (qword_1EDDFED40 != -1)
  {
    swift_once();
  }

  v48 = sub_1C442B738(*(v0 + 152), qword_1EDDFD2A8);
  v49 = sub_1C4406A40(v48);
  v51 = v9 && v50 == v7;
  if (v51 || (sub_1C43FEC00(v49, v50) & 1) != 0)
  {
    sub_1C4433298();
    sub_1C4419394();
    v52 = sub_1C43FBC98();
    sub_1C448CAE8(v52, v53, v54);
    *(v0 + 421) = 2;
    v55 = type metadata accessor for FutureLifeEventPhase(0);
    *(v0 + 256) = v55;
    sub_1C44099C4(v55);
    v56 = swift_task_alloc();
    *(v0 + 264) = v56;
    *v56 = v0;
    sub_1C4408878(v56);
    sub_1C440F4D4(v57);
    sub_1C4410B00();

    return sub_1C4813E7C(v58, v59);
  }

  if (qword_1EDDFD288 != -1)
  {
    swift_once();
  }

  v61 = sub_1C442B738(*(v0 + 152), &qword_1EDDFD290);
  v62 = sub_1C4406A40(v61);
  v64 = v9 && v63 == v7;
  if (v64 || (sub_1C43FEC00(v62, v63) & 1) != 0)
  {
    sub_1C441C920();
    if (Configuration.isWalletOrderSourcesEnabled.getter())
    {
      sub_1C4419394();
      sub_1C448CAE8(v65, v66, v67);
      *(v0 + 420) = 2;
      v68 = type metadata accessor for WalletEmailOrderEventPhase(0);
      *(v0 + 280) = v68;
      sub_1C44099C4(v68);
      v69 = swift_task_alloc();
      *(v0 + 288) = v69;
      *v69 = v0;
      sub_1C4408878(v69);
      sub_1C440F4D4(v70);
      sub_1C4410B00();

      return sub_1C4D44064(v71, v72);
    }

LABEL_107:
    sub_1C442FCC4();
    sub_1C4412F1C();

    sub_1C43FC1B0();
    sub_1C4410B00();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1EDDFD1C8 != -1)
  {
    swift_once();
  }

  v74 = sub_1C442B738(*(v0 + 152), &qword_1EDDFD1D0);
  v75 = sub_1C4406A40(v74);
  v77 = v9 && v76 == v7;
  if (v77 || (sub_1C43FEC00(v75, v76) & 1) != 0)
  {
    sub_1C441C920();
    if ((Configuration.isWalletOrderSourcesEnabled.getter() & 1) == 0)
    {
      goto LABEL_107;
    }

    sub_1C4419394();
    sub_1C448CAE8(v78, v79, v80);
    *(v0 + 419) = 2;
    v81 = type metadata accessor for WalletTrackedOrderEventPhase(0);
    *(v0 + 304) = v81;
    sub_1C44099C4(v81);
    v82 = swift_task_alloc();
    *(v0 + 312) = v82;
    *v82 = v0;
    sub_1C4408878(v82);
    sub_1C440F4D4(v83);
    sub_1C4410B00();

    return sub_1C4D58F70(v84, v85);
  }

  else
  {
    if (qword_1EDDFD1A0 != -1)
    {
      swift_once();
    }

    v87 = sub_1C442B738(*(v0 + 152), &qword_1EDDFD1A8);
    v88 = sub_1C4406A40(v87);
    v90 = v9 && v89 == v7;
    if (v90 || (sub_1C43FEC00(v88, v89) & 1) != 0)
    {
      sub_1C441C920();
      if ((Configuration.isWalletOrderSourcesEnabled.getter() & 1) == 0)
      {
        goto LABEL_107;
      }

      sub_1C4419394();
      sub_1C448CAE8(v91, v92, v93);
      *(v0 + 418) = 2;
      v94 = type metadata accessor for WalletTransactionOrderEventPhase(0);
      *(v0 + 328) = v94;
      sub_1C44099C4(v94);
      v95 = swift_task_alloc();
      *(v0 + 336) = v95;
      *v95 = v0;
      sub_1C4408878(v95);
      sub_1C440F4D4(v96);
      sub_1C4410B00();

      return sub_1C4D5D318(v97, v98);
    }

    else
    {
      if (qword_1EDDFD1F0 != -1)
      {
        swift_once();
      }

      v100 = sub_1C442B738(*(v0 + 152), &qword_1EDDFD1F8);
      v101 = sub_1C4406A40(v100);
      v103 = v9 && v102 == v7;
      if (v103 || (sub_1C43FEC00(v101, v102) & 1) != 0)
      {
        sub_1C441C920();
        if ((Configuration.isWalletOrderSourcesEnabled.getter() & 1) == 0)
        {
          goto LABEL_107;
        }

        sub_1C4419394();
        sub_1C448CAE8(v104, v105, v106);
        *(v0 + 417) = 2;
        v107 = type metadata accessor for WalletClassicOrderEventPhase(0);
        *(v0 + 352) = v107;
        sub_1C44099C4(v107);
        v108 = swift_task_alloc();
        *(v0 + 360) = v108;
        *v108 = v0;
        sub_1C4408878(v108);
        sub_1C440F4D4(v109);
        sub_1C4410B00();

        return sub_1C4D3F768(v110, v111);
      }

      else
      {
        if (qword_1EDDFD178 != -1)
        {
          swift_once();
        }

        v113 = sub_1C442B738(*(v0 + 152), &qword_1EDDFD180);
        v114 = v113[1];
        v115 = *(v0 + 176);
        if (*v113 == v8 && v114 == v7)
        {
          sub_1C448D818(*(v0 + 176));
        }

        else
        {
          v117 = sub_1C43FEC00(*v113, v114);
          sub_1C448D818(v115);
          if ((v117 & 1) == 0)
          {
            if (qword_1EDDFDCF8 != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            if (qword_1EDDFF3C8)
            {
              (*(off_1EDDFF3D0 + 2))();
              v118 = swift_task_alloc();
              *(v0 + 400) = v118;
              *v118 = v0;
              v118[1] = sub_1C46BE208;
              sub_1C4410B00();

              __asm { BRAA            X5, X16 }
            }

            *(v0 + 88) = 0;
            *(v0 + 72) = 0u;
            *(v0 + 56) = 0u;
            sub_1C46BE56C(v0 + 56);
            if (qword_1EDDFD028 != -1)
            {
              sub_1C43FE9B4(&qword_1EDDFD028);
            }

            v130 = sub_1C4F00978();
            sub_1C442B738(v130, qword_1EDE2DE10);
            sub_1C441F770();
            v131 = sub_1C43FBC98();
            sub_1C448CAE8(v131, v132, v133);
            v134 = sub_1C4F00968();
            v135 = sub_1C4F01CF8();
            v136 = os_log_type_enabled(v134, v135);
            v137 = *(v0 + 168);
            if (v136)
            {
              v138 = *(v0 + 160);
              v139 = swift_slowAlloc();
              v140 = swift_slowAlloc();
              v148 = v140;
              *v139 = 136315138;
              sub_1C448B210(v137, v138);
              v141 = *v138;
              v142 = v138[1];
              _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
              sub_1C448D818(v138);
              v143 = sub_1C441D828(v141, v142, &v148);

              *(v139 + 4) = v143;
              sub_1C43FBD74(&dword_1C43F8000, v144, v145, "Delta Pipeline not setup for %s");
              sub_1C440962C(v140);
              sub_1C43FBE2C();
              sub_1C43FBE2C();
            }

            else
            {

              sub_1C448D818(v137);
            }

            goto LABEL_107;
          }
        }

        sub_1C4419394();
        sub_1C448CAE8(v121, v122, v123);
        *(v0 + 416) = 2;
        v124 = type metadata accessor for IPEntityTaggingPersonInferencePhase(0);
        *(v0 + 376) = v124;
        sub_1C44099C4(v124);
        v125 = swift_task_alloc();
        *(v0 + 384) = v125;
        *v125 = v0;
        sub_1C4408878(v125);
        sub_1C440F4D4(v126);
        sub_1C4410B00();

        return sub_1C499AA04(v127, v128);
      }
    }
  }
}

uint64_t sub_1C46BD440()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C46BD528()
{
  sub_1C43FCF70();
  sub_1C440E09C(*(v0 + 184));
  v1 = sub_1C46BE5D4(qword_1EDDE5548, type metadata accessor for ContactsPersonPhase);
  sub_1C442C74C(v1);

  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C46BD5C8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 224) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C46BD6B0()
{
  sub_1C43FCF70();
  sub_1C440E09C(*(v0 + 208));
  v1 = sub_1C46BE5D4(&qword_1EDDE3238, type metadata accessor for BMAppleMusicEventPhase);
  sub_1C442C74C(v1);

  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C46BD750()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 248) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C46BD838()
{
  sub_1C43FCF70();
  sub_1C440E09C(*(v0 + 232));
  v1 = sub_1C46BE5D4(qword_1EDDE9708, type metadata accessor for LifeEventPhase);
  sub_1C442C74C(v1);

  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C46BD8D8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 272) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C46BD9C0()
{
  sub_1C43FCF70();
  sub_1C440E09C(*(v0 + 256));
  v1 = sub_1C46BE5D4(qword_1EDDE4640, type metadata accessor for FutureLifeEventPhase);
  sub_1C442C74C(v1);

  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C46BDA60()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 296) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C46BDB48()
{
  sub_1C43FCF70();
  sub_1C440E09C(*(v0 + 280));
  v1 = sub_1C46BE5D4(&qword_1EC0BB298, type metadata accessor for WalletEmailOrderEventPhase);
  sub_1C442C74C(v1);

  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C46BDBE8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 320) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C46BDCD0()
{
  sub_1C43FCF70();
  sub_1C440E09C(*(v0 + 304));
  v1 = sub_1C46BE5D4(&qword_1EC0BB290, type metadata accessor for WalletTrackedOrderEventPhase);
  sub_1C442C74C(v1);

  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C46BDD70()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 344) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C46BDE58()
{
  sub_1C43FCF70();
  sub_1C440E09C(*(v0 + 328));
  v1 = sub_1C46BE5D4(&qword_1EC0BB288, type metadata accessor for WalletTransactionOrderEventPhase);
  sub_1C442C74C(v1);

  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C46BDEF8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 368) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C46BDFE0()
{
  sub_1C43FCF70();
  sub_1C440E09C(*(v0 + 352));
  v1 = sub_1C46BE5D4(&qword_1EC0BB280, type metadata accessor for WalletClassicOrderEventPhase);
  sub_1C442C74C(v1);

  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C46BE080()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 392) = v3;

  v4 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C46BE168()
{
  sub_1C43FCF70();
  sub_1C440E09C(*(v0 + 376));
  v1 = sub_1C46BE5D4(&qword_1EC0BB278, type metadata accessor for IPEntityTaggingPersonInferencePhase);
  sub_1C442C74C(v1);

  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C46BE208()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v2 = v1;
  *(v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_1C46BE4F0;
  }

  else
  {
    v3 = sub_1C46BE30C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C46BE30C()
{
  v21 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 120);
    sub_1C441D670((v0 + 56), v0 + 16);
    sub_1C441D670((v0 + 16), v1);
  }

  else
  {
    sub_1C46BE56C(v0 + 56);
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DE10);
    sub_1C441F770();
    v3 = sub_1C43FBC98();
    sub_1C448CAE8(v3, v4, v5);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 168);
    if (v8)
    {
      v10 = *(v0 + 160);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v20 = v12;
      *v11 = 136315138;
      sub_1C448B210(v9, v10);
      v13 = *v10;
      v14 = v10[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C448D818(v10);
      v15 = sub_1C441D828(v13, v14, &v20);

      *(v11 + 4) = v15;
      sub_1C43FBD74(&dword_1C43F8000, v16, v17, "Delta Pipeline not setup for %s");
      sub_1C440962C(v12);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {

      sub_1C448D818(v9);
    }

    sub_1C442FCC4();
  }

  sub_1C4412F1C();

  sub_1C43FC1B0();

  return v18();
}

uint64_t sub_1C46BE4F0()
{
  sub_1C43FCF70();
  sub_1C4412F1C();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C46BE56C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0C2ED0, qword_1C4F1E888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46BE5D4(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_1C46BE628(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C46BE644(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C46BE684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1C46BE6C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C46BE6F0(void *a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0C0760, &qword_1C4F170D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  String.sourceBasedOnPrefix.getter();
  if (sub_1C44157D4(v5, 1, v6) == 1)
  {
    sub_1C46A1238(v5);
    return 0;
  }

  sub_1C448B210(v5, v8);
  if (*v8 == *a2 && v8[1] == a2[1])
  {
    sub_1C448D818(v8);
  }

  else
  {
    v11 = sub_1C4F02938();
    sub_1C448D818(v8);
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void *sub_1C46BE844(uint64_t a1, int a2)
{
  LODWORD(v258) = a2;
  v263 = type metadata accessor for ScreenTimeStructs.Software(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FD2D8();
  v264 = v4;
  sub_1C43FBE44();
  sub_1C4EFC388();
  sub_1C43FCDF8();
  v266 = v5;
  v267 = v6;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v259 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v270 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v262 = &v231 - v12;
  sub_1C43FBE44();
  v245 = sub_1C4EFC3B8();
  sub_1C43FCDF8();
  v247 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v16 = sub_1C43FD2C8(v15);
  v242 = type metadata accessor for ScreenTimeStructs.AgentAffiliationRelationshipType(v16);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  v19 = sub_1C43FD2C8(v18);
  v241 = type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person(v19);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v21);
  *&v257 = sub_1C4EFC528();
  sub_1C43FCDF8();
  v256 = v22;
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FD2D8();
  v255 = v24;
  v25 = sub_1C456902C(&qword_1EC0BB2A0, &qword_1C4F1E970);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = sub_1C43FD2C8(&v231 - v26);
  v253 = type metadata accessor for ScreenTimeStructs.IdentifierRelationshipType(v27);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  v261 = v29;
  v30 = sub_1C456902C(&qword_1EC0BB2A8, &qword_1C4F1E978);
  MEMORY[0x1EEE9AC00](v30 - 8);
  sub_1C43FBD08();
  v33 = v31 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v231 - v35;
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v40);
  v250 = &v231 - v41;
  v42 = sub_1C456902C(&qword_1EC0BB2B0, &qword_1C4F7C900);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = sub_1C43FD2C8(&v231 - v43);
  v45 = type metadata accessor for ScreenTimeStructs.AddressRelationshipType(v44);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FD2D8();
  v260 = v47;
  v48 = sub_1C43FBE44();
  v265 = type metadata accessor for ScreenTimeStructs.Person(v48);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FD2D8();
  v272 = v50;
  sub_1C43FBE44();
  v51 = sub_1C4EFC438();
  sub_1C43FCDF8();
  v53 = v52;
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v231 - v60;
  MEMORY[0x1EEE9AC00](v62);
  sub_1C43FBF38();
  v268 = v63;
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v231 - v65;
  v277 = MEMORY[0x1E69E7CC0];
  v271 = a1;
  sub_1C4EFC448();
  sub_1C4EFC418();
  v68 = v67;
  v69 = *(v53 + 8);
  v269 = v51;
  v273 = v69;
  v274 = (v53 + 8);
  v69(v66, v51);
  if (!v68)
  {
    if (qword_1EDDFECB0 == -1)
    {
LABEL_7:
      v83 = sub_1C4F00978();
      sub_1C442B738(v83, qword_1EDDFECB8);
      v84 = sub_1C4F00968();
      v85 = sub_1C4F01CF8();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        _os_log_impl(&dword_1C43F8000, v84, v85, "DeviceActivityDate has no associated device ID", v86, 2u);
        MEMORY[0x1C6942830](v86, -1, -1);
      }

      return MEMORY[0x1E69E7CC0];
    }

LABEL_60:
    sub_1C44064A8();
    swift_once();
    goto LABEL_7;
  }

  if (qword_1EDDE92F0 != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for SourceIdPrefix(0);
  v71 = sub_1C442B738(v70, qword_1EDE2D020);
  String.base64EncodedSHA(withPrefix:)();
  v73 = v72;
  v75 = v74;

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v76 = v275;
  sub_1C4E7196C(v73, v75, v77, v78, v79, v80, v81, v82, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);
  v275 = v76;
  if (!v76)
  {
    v234 = v36;
    v232 = v71;
    v235 = v33;
    v236 = v73;
    v237 = v75;
    v240 = v70;
    sub_1C4EFEEF8();
    v87 = v260;
    sub_1C4425A54();
    *(v89 - 256) = v88;
    sub_1C440BAA8(v90, v91, v92, v88);
    sub_1C4EFD1D8();
    v93 = *(v45 + 24);
    if (qword_1EDDFD340 != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Source(0);
    sub_1C442B738(v94, qword_1EDDFD348);
    sub_1C442C770();
    v238 = v95;
    sub_1C448CB4C(v95, v87 + v93, v96);
    sub_1C4EFE518();
    v97 = (v87 + *(v45 + 32));
    v98 = v268;
    v233 = v45;
    v99 = v271;
    sub_1C4EFC448();
    v100 = sub_1C4EFC428();
    v102 = v101;
    v103 = v269;
    v104 = v273;
    v273(v98, v269);
    *v97 = v100;
    v97[1] = v102;
    v105 = v248;
    sub_1C448CB4C(v87, v248, type metadata accessor for ScreenTimeStructs.AddressRelationshipType);
    sub_1C440BAA8(v105, 0, 1, v233);
    v106 = v272;
    sub_1C4E723D8(v105);
    sub_1C4EFC448();
    sub_1C4408884();
    sub_1C4EFC3F8();
    v104(v61, v103);
    v107 = sub_1C4EF9788();
    sub_1C43FD490(v99);
    if (v108)
    {
      sub_1C46BFD7C(v99);
      v109 = 0;
      v104 = 0;
    }

    else
    {
      v109 = v99;
      sub_1C4EF9708();
      sub_1C43FC1CC();
      sub_1C4412F38();
      (*(v110 + 8))(v99, v107);
    }

    v111 = (v106 + v265[9]);

    *v111 = v109;
    v111[1] = v104;
    v112 = v249;
    sub_1C4EFC448();
    sub_1C440D298();
    v113 = sub_1C440F4E0();
    v114(v113);
    sub_1C43FD490(v104);
    v115 = v262;
    if (v108)
    {
      sub_1C46BFD7C(v104);
      v112 = 0;
      v116 = 0;
    }

    else
    {
      v116 = v104;
      sub_1C4EF9718();
      sub_1C440D158();
      sub_1C4412F38();
      v117 = sub_1C44000C4();
      v118(v117);
    }

    v119 = v265;
    v120 = (v106 + v265[17]);

    *v120 = v112;
    v120[1] = v116;
    sub_1C4408884();
    sub_1C4EFC448();
    sub_1C440D298();
    v121 = sub_1C440F4E0();
    v122(v121);
    sub_1C43FD490(v120);
    if (v108)
    {
      sub_1C46BFD7C(v120);
      v112 = 0;
      v123 = 0;
    }

    else
    {
      v123 = v120;
      sub_1C4EF9778();
      sub_1C440D158();
      sub_1C4412F38();
      v124 = sub_1C44000C4();
      v125(v124);
    }

    v126 = (v106 + v119[21]);

    *v126 = v112;
    v126[1] = v123;
    sub_1C4408884();
    sub_1C4EFC448();
    sub_1C440D298();
    v127 = sub_1C440F4E0();
    v128(v127);
    sub_1C43FD490(v126);
    if (v108)
    {
      sub_1C46BFD7C(v126);
      v112 = 0;
      v129 = 0;
    }

    else
    {
      v129 = v126;
      sub_1C4EF9728();
      sub_1C440D158();
      sub_1C4412F38();
      v130 = sub_1C44000C4();
      v131(v130);
    }

    v132 = (v106 + v119[15]);

    *v132 = v112;
    v132[1] = v129;
    sub_1C4408884();
    sub_1C4EFC448();
    sub_1C440D298();
    v133 = sub_1C440F4E0();
    v134(v133);
    sub_1C43FD490(v132);
    if (v108)
    {
      sub_1C46BFD7C(v132);
      v136 = 0;
    }

    else
    {
      sub_1C4EF9738();
      v136 = v135;
      sub_1C4412F38();
      v137 = sub_1C44000C4();
      v138(v137);
    }

    v139 = (v106 + v119[13]);

    v140 = v252;
    sub_1C4EFC448();
    v141 = v235;
    sub_1C4EFC3F8();
    v273(v140, v103);
    sub_1C43FD490(v141);
    if (v108)
    {
      sub_1C46BFD7C(v141);
      v142 = 0;
      v140 = 0;
    }

    else
    {
      v142 = v141;
      sub_1C4EF9748();
      sub_1C43FC1CC();
      sub_1C4412F38();
      (*(v143 + 8))(v141, v107);
    }

    v144 = v275;

    *v139 = v142;
    v139[1] = v140;
    v145 = v261;
    sub_1C4425A54();
    sub_1C440BAA8(v147, v148, v149, *(v146 - 256));
    v150 = v253;
    sub_1C4EFD258();
    sub_1C442C770();
    sub_1C448CB4C(v238, v145 + v151, v152);
    sub_1C4EFE558();
    v153 = (v145 + *(v150 + 32));
    sub_1C4EFE658();
    v154 = *(v150 + 40);
    v155 = v268;
    sub_1C4EFC448();
    sub_1C4EFC418();
    sub_1C440D158();
    v273(v155, v269);
    *v153 = v136;
    v153[1] = v155;
    *(v145 + v154) = xmmword_1C4F1E960;
    v156 = v254;
    sub_1C448CB4C(v145, v254, type metadata accessor for ScreenTimeStructs.IdentifierRelationshipType);
    sub_1C440BAA8(v156, 0, 1, v150);
    v157 = v272;
    sub_1C4E724E0(v156);
    if (v258)
    {
      v158 = (v157 + v265[11]);

      *v158 = xmmword_1C4F17530;
    }

    v159 = v268;
    sub_1C4EFC448();
    v71 = sub_1C4EFC408();
    v273(v159, v269);
    v160 = v256;
    v161 = v255;
    v162 = v257;
    (*(v256 + 104))(v255, *MEMORY[0x1E69667D0], v257);
    v163 = sub_1C4EFC518();
    (*(v160 + 8))(v161, v162);
    v164 = v270;
    if (v71 == v163)
    {
      String.base64EncodedSHA(withPrefix:)();
      v165 = v246;
      sub_1C4DDB44C();
      if (v144)
      {
LABEL_38:

        sub_1C440009C();
        sub_1C441F788();
        sub_1C4406A54();
        v184 = v157;
LABEL_39:
        sub_1C46BFDE4(v184, v183);
        return v71;
      }

      v166 = (v165 + *(v241 + 36));

      *v166 = xmmword_1C4F17530;
      v167 = v243;
      sub_1C4425A54();
      sub_1C440BAA8(v169, v170, v171, *(v168 - 256));
      v172 = v242;
      sub_1C4EFD318();
      sub_1C442C770();
      sub_1C448CB4C(v238, v167 + v173, v174);
      sub_1C4EFE808();
      v71 = (v167 + v172[8]);
      sub_1C4EFE878();
      v175 = (v167 + v172[10]);
      *v175 = 0;
      v175[1] = 0;
      sub_1C4EFE2A8();
      v176 = (v167 + v172[12]);
      *v176 = 0;
      v176[1] = 0;
      sub_1C4EFEB48();
      v177 = (v167 + v172[14]);
      *v177 = sub_1C4F01138();
      v177[1] = v178;
      *v71 = sub_1C4EFF048();
      v71[1] = v179;
      sub_1C46BFDE4(v167, type metadata accessor for ScreenTimeStructs.AgentAffiliationRelationshipType);
      sub_1C46BFDE4(v165, type metadata accessor for IPEntityTaggingPersonInferenceStructs.Person);
    }

    v180 = sub_1C4434F60();
    v182 = sub_1C4E725E8(v180, v237, v181);
    if (v144)
    {
      goto LABEL_38;
    }

    v186 = v182;

    sub_1C49D3614(v186);
    result = sub_1C4EFC3C8();
    v251 = result[2];
    if (!v251)
    {
LABEL_57:

      v71 = v277;
      sub_1C440009C();
      sub_1C441F788();
      sub_1C4406A54();
      sub_1C46BFDE4(v157, v230);
      return v71;
    }

    v188 = 0;
    v255 = result + ((*(v247 + 80) + 32) & ~*(v247 + 80));
    v254 = v247 + 16;
    v253 = v247 + 8;
    v189 = v266;
    v274 = (v267 + 8);
    *&v187 = 136315138;
    v257 = v187;
    v258 = v267 + 16;
    v252 = result;
    while (1)
    {
      if (v188 >= result[2])
      {
        __break(1u);
        return result;
      }

      v190 = v247;
      v191 = *(v247 + 72);
      v256 = v188;
      v192 = &v255[v191 * v188];
      v193 = v244;
      v194 = v245;
      (*(v247 + 16))(v244, v192, v245);
      sub_1C4EFC398();

      v195 = sub_1C4EFC3A8();
      (*(v190 + 8))(v193, v194);
      v265 = *(v195 + 16);
      if (v265)
      {
        break;
      }

LABEL_56:
      v188 = v256 + 1;

      v157 = v272;
      result = v252;
      if (v188 == v251)
      {
        goto LABEL_57;
      }
    }

    v196 = 0;
    v268 = v195 + ((*(v267 + 80) + 32) & ~*(v267 + 80));
    v269 = v195;
    while (v196 < *(v195 + 16))
    {
      v275 = 0;
      v197 = *(v267 + 72);
      v271 = v196;
      v198 = v268 + v197 * v196;
      v199 = *(v267 + 16);
      v199(v115, v198, v189);
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C44064A8();
        swift_once();
      }

      v200 = sub_1C4F00978();
      sub_1C442B738(v200, qword_1EDDFECB8);
      v199(v164, v115, v189);
      v201 = sub_1C4F00968();
      v202 = sub_1C4F01CC8();
      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        v276 = v204;
        *v203 = v257;
        v199(v259, v164, v189);
        v205 = sub_1C4F01198();
        v207 = v206;
        v273 = *v274;
        v273(v164, v189);
        v208 = sub_1C441D828(v205, v207, &v276);

        *(v203 + 4) = v208;
        v209 = v275;
        v210 = v264;
        _os_log_impl(&dword_1C43F8000, v201, v202, "Processing app activity: %s", v203, 0xCu);
        sub_1C440962C(v204);
        v211 = v204;
        v115 = v262;
        MEMORY[0x1C6942830](v211, -1, -1);
        MEMORY[0x1C6942830](v203, -1, -1);
      }

      else
      {

        v273 = *v274;
        v273(v164, v189);
        v210 = v264;
        v209 = v275;
      }

      sub_1C4EFC368();
      sub_1C440D158();
      v212 = v240;
      if (qword_1EDDE92F8 != -1)
      {
        swift_once();
      }

      sub_1C442B738(v212, qword_1EDE2D038);
      String.base64EncodedSHA(withPrefix:)();
      v214 = v213;
      v71 = v215;

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4E7351C(v214, v71, v216, v217, v218, v219, v220, v221, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);
      if (v209)
      {

        v273(v115, v266);

        sub_1C440009C();
        sub_1C441F788();
        sub_1C4406A54();
        v184 = v272;
        goto LABEL_39;
      }

      v222 = v115;
      sub_1C4EFC368();
      sub_1C43FC1CC();
      v223 = v263;
      v224 = v115;
      v225 = (v210 + *(v263 + 44));

      *v225 = v222;
      v225[1] = v212;
      sub_1C4EFC378();
      sub_1C43FC1CC();
      v226 = (v210 + *(v223 + 36));

      *v226 = v224;
      v226[1] = v212;
      v227 = sub_1C4434F60();
      v229 = sub_1C4E73DDC(v227, v71, v228);
      v196 = v271 + 1;

      sub_1C49D3614(v229);
      v189 = v266;
      v273(v224, v266);
      sub_1C440E0A8();
      v115 = v224;
      v195 = v269;
      v164 = v270;
      if (v265 == v196)
      {
        goto LABEL_56;
      }
    }

    __break(1u);
    goto LABEL_60;
  }

  return v71;
}

uint64_t sub_1C46BFD7C(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB2A8, &qword_1C4F1E978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46BFDE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C46BFE84(uint64_t a1)
{
  v1 = a1;
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x80000001C4F92140;
  sub_1C4577DBC();
  *(inited + 48) = sub_1C4A3B8F8(v1);
  return sub_1C4F00F28();
}

uint64_t sub_1C46BFF30@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1C4EF9CD8();
  sub_1C43FCE50();
  (*(v8 + 32))(a4, a1);
  result = type metadata accessor for DeviceAirplaneModeEvent(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

void sub_1C46BFFB4(uint64_t a1, char a2)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;
  v7 = sub_1C456902C(&qword_1EC0BB2C0, &qword_1C4F1EA08);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  v13 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v14 = [v13 Wireless];
  swift_unknownObjectRelease();
  v15 = [v14 AirplaneMode];
  swift_unknownObjectRelease();
  sub_1C46751DC();

  if (!v2)
  {
    sub_1C46C02F4(v12, v9, &qword_1EC0BB2C0, &qword_1C4F1EA08);
    sub_1C46C02F4(a1, v6, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C493A620();
    sub_1C46C0350(v12);
  }
}

void sub_1C46C01B0(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_1C456902C(&qword_1EC0BB2B8, &unk_1C4F1E9F8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v10 - v8;
  sub_1C46BFFB4(a1, a2);
  if (!v3)
  {
    sub_1C46C0284(v9, a3);
  }
}

uint64_t sub_1C46C0284(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB2B8, &unk_1C4F1E9F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46C02F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C456902C(a3, a4);
  sub_1C43FCE50();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C46C0350(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB2C0, &qword_1C4F1EA08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DeviceAirplaneModeEvent(uint64_t a1)
{
  result = qword_1EDDE2598;
  if (!qword_1EDDE2598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46C042C(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceBacklightContent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C46C0548(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C46C065C(uint64_t a1)
{
  v1 = a1;
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001C4F92160;
  sub_1C4577DBC();
  *(inited + 48) = sub_1C4A3B8F8(v1);
  return sub_1C4F00F28();
}

void sub_1C46C0708(uint64_t a1)
{
  v1 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v2 = [v1 Display];
  swift_unknownObjectRelease();
  v3 = [v2 Backlight];
  swift_unknownObjectRelease();
  sub_1C4581248();
}

uint64_t type metadata accessor for DeviceBacklightEvent(uint64_t a1)
{
  result = qword_1EDDE49B0;
  if (!qword_1EDDE49B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46C0864(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceBacklightContent(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C46C09BC()
{
  result = qword_1EDDDE920;
  if (!qword_1EDDDE920)
  {
    sub_1C4572308(&qword_1EC0BB2D8, "\\F\v");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE920);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceBluetoothDataProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C46C0B38(uint64_t a1)
{
  v1 = a1;
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001C4F92180;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x80000001C4F921A0;
  sub_1C4577DBC();
  *(inited + 72) = sub_1C4A3B8F8(v1);
  return sub_1C4F00F28();
}

uint64_t sub_1C46C0C24(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_1C46C0B38(a1);
  if (a3)
  {
    v11 = sub_1C45FB538();
    if (v11)
    {
      v12 = v11;
      v13 = sub_1C4EF9CD8();
      sub_1C440BAA8(v9, 1, 1, v13);
      v14 = sub_1C4886564(a2, a3, v9);
      v16 = v15;
      sub_1C45942C8(v12);
      sub_1C4420C3C(v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (v16)
      {
        sub_1C4577DBC();
        if (sub_1C4594E18(v14, v16))
        {
          swift_isUniquelyReferenced_nonNull_native();
          v23 = v10;
          sub_1C4660314();
          return v23;
        }

        else
        {
          v17 = sub_1C445FAA8(0xD000000000000010, 0x80000001C4F921C0);
          if (v18)
          {
            v19 = v17;
            swift_isUniquelyReferenced_nonNull_native();
            v23 = v10;
            sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
            sub_1C4F02458();
            v10 = v23;

            v20 = *(*(v10 + 56) + 8 * v19);
            sub_1C4F02478();
          }
        }
      }
    }
  }

  return v10;
}

uint64_t sub_1C46C0E48@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v12 + 32))(a6, a1);
  result = type metadata accessor for DeviceBluetoothEvent(0);
  *(a6 + *(result + 20)) = a2;
  v14 = a6 + *(result + 24);
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = a5;
  return result;
}

uint64_t sub_1C46C0EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C46C0F20(uint64_t a1, char a2)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = sub_1C456902C(&qword_1EC0BB2E8, &qword_1C4F1EBF8);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  v15 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v16 = [v15 Wireless];
  swift_unknownObjectRelease();
  v17 = [v16 Bluetooth];
  swift_unknownObjectRelease();
  sub_1C467485C();

  if (!v2)
  {
    sub_1C445FFF0(v14, v11, &qword_1EC0BB2E8, &qword_1C4F1EBF8);
    sub_1C445FFF0(a1, v7, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C4939E80();
    sub_1C4420C3C(v14, &qword_1EC0BB2E8, &qword_1C4F1EBF8);
  }
}

void sub_1C46C1124(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_1C456902C(&qword_1EC0BB2E0, &unk_1C4F1EBE8);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v11 - v9;
  sub_1C46C0F20(a1, a2);
  if (!v3)
  {
    sub_1C46C11F4(v10, a3);
  }
}

uint64_t sub_1C46C11F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB2E0, &unk_1C4F1EBE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DeviceBluetoothEvent(uint64_t a1)
{
  result = qword_1EDDE48E8;
  if (!qword_1EDDE48E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46C12D8(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C46C136C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C46C3994(a1, sub_1C46C3C50, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C46C13F0(uint64_t a1, uint64_t a2)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C46C144C(a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

void sub_1C46C144C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() userIsFirstBacklightOnAfterWakeup];
  if (!v11)
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDDFECB8);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = a2;
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Could not initialize userIsFirstBacklightOnAfterWakeup stream", v18, 2u);
      v19 = v18;
      a2 = v17;
      MEMORY[0x1C6942830](v19, -1, -1);
    }

    goto LABEL_29;
  }

  v12 = v11;
  sub_1C445FFF0(a1, v6, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = sub_1C44157D4(v6, 1, v7);
  v60 = v8;
  v61 = v7;
  if (v13 == 1)
  {
    sub_1C4EF9BE8();
    if (sub_1C44157D4(v6, 1, v7) != 1)
    {
      sub_1C44686E4(v6);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  sub_1C4461BB8(0, &unk_1EDDF0550, 0x1E6997968);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = sub_1C4EF9BF8();
  v22 = sub_1C4EF9BF8();
  v23 = [ObjCClassFromMetadata predicateForEventsWithStartOrEndInDateRangeWithFrom:v21 to:v22];

  if (v23)
  {
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    v24 = swift_allocObject();
    v59 = xmmword_1C4F0FCC0;
    *(v24 + 16) = xmmword_1C4F0FCC0;
    *(v24 + 32) = v12;
    v25 = swift_allocObject();
    *(v25 + 16) = v59;
    v26 = objc_opt_self();
    v27 = v12;
    v28 = [v26 startDateSortDescriptorAscending_];
    if (v28)
    {
      *(v25 + 32) = v28;
      *&v59 = v23;
      v29 = sub_1C46C1BB4(v23, v24, 0, 4, v25);
      [v29 setReadMetadata_];
      v30 = [objc_allocWithZone(MEMORY[0x1E69979A0]) init];
      v62[0] = 0;
      v31 = [v30 executeQuery:v29 error:v62];

      v32 = v62[0];
      if (v31)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v62[0] = 0;
          sub_1C4461BB8(0, &qword_1EDDF0368, 0x1E6997960);
          v33 = v32;
          v34 = v31;
          sub_1C4F01668();

          v35 = v62[0];
          if (v62[0])
          {

            (*(v60 + 8))(v10, v61);
LABEL_30:
            *a2 = v35;
            return;
          }
        }

        else
        {
          v50 = v32;
        }

        if (qword_1EDDFECB0 != -1)
        {
          swift_once();
        }

        v51 = sub_1C4F00978();
        sub_1C442B738(v51, qword_1EDDFECB8);
        v52 = sub_1C4F00968();
        v53 = sub_1C4F01CF8();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = v27;
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_1C43F8000, v52, v53, "Could not convert results to [_DKEvent] in MotionStateSignal", v55, 2u);
          v56 = v55;
          v27 = v54;
          MEMORY[0x1C6942830](v56, -1, -1);
        }
      }

      else
      {
        v36 = v62[0];
        v37 = sub_1C4EF97A8();

        swift_willThrow();
        if (qword_1EDDFECB0 != -1)
        {
          swift_once();
        }

        v38 = sub_1C4F00978();
        sub_1C442B738(v38, qword_1EDDFECB8);
        v39 = v37;
        v40 = sub_1C4F00968();
        v41 = sub_1C4F01CF8();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v58 = v27;
          v43 = v42;
          v57 = swift_slowAlloc();
          v62[0] = v57;
          *v43 = 136315138;
          swift_getErrorValue();
          v44 = sub_1C4F02A38();
          v46 = a2;
          v47 = sub_1C441D828(v44, v45, v62);

          *(v43 + 4) = v47;
          a2 = v46;
          _os_log_impl(&dword_1C43F8000, v40, v41, "Error executing CoreDuet query to fetch last event in Motion State stream - %s", v43, 0xCu);
          v48 = v57;
          sub_1C440962C(v57);
          MEMORY[0x1C6942830](v48, -1, -1);
          v49 = v43;
          v27 = v58;
          MEMORY[0x1C6942830](v49, -1, -1);
        }

        else
        {
        }
      }

      (*(v60 + 8))(v10, v61);
LABEL_29:
      v35 = MEMORY[0x1E69E7CC0];
      goto LABEL_30;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1C46C1BB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  sub_1C4461BB8(0, &unk_1EDDF0480, 0x1E6997970);
  v9 = sub_1C4F01658();

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C4461BB8(0, &unk_1EDDF0458, 0x1E696AEB0);
  v10 = sub_1C4F01658();

LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() eventQueryWithPredicate:a1 eventStreams:v9 offset:a3 limit:a4 sortDescriptors:v10];

  return v11;
}

uint64_t sub_1C46C1D28()
{
  v9 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 3, 0);
  v0 = 0;
  v1 = v9;
  do
  {
    if (byte_1F43D2870[v0 + 32] == 1)
    {
      v2 = "mins_since_last_backlight_on";
    }

    else
    {
      v2 = "mins_since_first_backlight_on";
    }

    if (byte_1F43D2870[v0 + 32])
    {
      v3 = 0xD00000000000001DLL;
    }

    else
    {
      v3 = 0xD00000000000001CLL;
    }

    if (byte_1F43D2870[v0 + 32])
    {
      v4 = v2;
    }

    else
    {
      v4 = "deviceDisplaySignal";
    }

    v10 = v1;
    v6 = *(v1 + 16);
    v5 = *(v1 + 24);
    if (v6 >= v5 >> 1)
    {
      sub_1C44CD9C0(v5 > 1, v6 + 1, 1);
      v1 = v10;
    }

    ++v0;
    *(v1 + 16) = v6 + 1;
    v7 = v1 + 16 * v6;
    *(v7 + 32) = v3;
    *(v7 + 40) = v4 | 0x8000000000000000;
  }

  while (v0 != 3);

  return sub_1C4499940();
}

void sub_1C46C1E5C()
{
  sub_1C43FEE04();
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = *(v0 + 24);
  v9 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v10 + 16))(v6, v2, v9);
  sub_1C440E0D0();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v12 = sub_1C43FD4B0();
  v13 = [v8 publisherWithOptions_];

  sub_1C44000D0();
  v22 = 1107296256;
  v23 = sub_1C45BC0BC;
  v24 = &unk_1F43E7DC0;
  v14 = _Block_copy(&v21);
  v15 = [v13 filterWithIsIncluded_];
  _Block_release(v14);

  v25 = nullsub_1;
  v26 = 0;
  v21 = MEMORY[0x1E69E9820];
  sub_1C440A8EC();
  v23 = v16;
  v24 = &unk_1F43E7DE8;
  v17 = _Block_copy(&v21);
  v25 = sub_1C46C3C94;
  v26 = v7;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C44405F8;
  v24 = &unk_1F43E7E10;
  v18 = _Block_copy(&v21);

  v19 = [v15 sinkWithCompletion:v17 receiveInput:v18];

  _Block_release(v18);
  _Block_release(v17);

  sub_1C440D2B4();
  v20 = *(v7 + 16);

  sub_1C44085C4();
  sub_1C4416FC8();
}

id sub_1C46C20FC(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 hasBacklightLevel];
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDDFECB8);
    v2 = sub_1C4F00968();
    v5 = sub_1C4F01CF8();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C43F8000, v2, v5, "mostRecentBacklightOnEvent: backlight event is nil", v6, 2u);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

void sub_1C46C220C()
{
  sub_1C43FEE04();
  v1 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  sub_1C46C1E5C();
  if (v8)
  {
    v9 = v8;
    [v8 timestamp];
    sub_1C4EF9AC8();
    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = 0xD00000000000001CLL;
    *(inited + 40) = 0x80000001C4F915D0;
    sub_1C4EF9B78();
    sub_1C442C788(v11 / 60.0);
    *(inited + 48) = [objc_opt_self() featureValueWithDouble_];
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    sub_1C4F00F28();

    (*(v3 + 8))(v7, v1);
    sub_1C44085C4();
    sub_1C4416FC8();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      sub_1C440BAE8(&dword_1C43F8000, v16, v17, "DeviceDisplaySignal: backlight event is nil");
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    sub_1C4416FC8();

    sub_1C4F00F28();
  }
}

void sub_1C46C249C(uint64_t a1)
{
  v3 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = *(v1 + 40);
  v31 = a1;
  v32 = v3;
  v29 = v9;
  v30 = v5;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    sub_1C440BAA8(&v28 - v11, 1, 1, v3);
    v14 = sub_1C46C13F0(v12, a1);
    sub_1C44686E4(v12);
  }

  v15 = sub_1C4428DA0(v14);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  for (i = 0; ; ++i)
  {
    if (v15 == i)
    {

      sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
      sub_1C4F00F28();
      return;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1C6940F90](i, v14);
    }

    else
    {
      if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v17 = *(v14 + 8 * i + 32);
    }

    v18 = v17;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v19 = [v17 value];
    if (!v19)
    {
      goto LABEL_19;
    }

    v20 = v19;
    v21 = [v19 integerValue];

    if (v21 == 1)
    {
      break;
    }
  }

  v22 = [v18 startDate];
  if (v22)
  {
    v23 = v22;

    v24 = v29;
    sub_1C4EF9C78();

    sub_1C4EF9B78();
    v26 = v25;
    (*(v30 + 8))(v24, v32);
    sub_1C442C788(v26 / 60.0);
    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    sub_1C4402F04(inited, "mins_since_first_backlight_on");
    *(inited + 48) = [objc_opt_self() featureValueWithDouble_];
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    sub_1C4F00F28();

    return;
  }

LABEL_20:
  __break(1u);
}

void sub_1C46C27F8()
{
  sub_1C43FEE04();
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = *(v0 + 32);
  v9 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v10 + 16))(v6, v2, v9);
  sub_1C440E0D0();
  v11 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v12 = sub_1C43FD4B0();
  v13 = [v8 publisherWithOptions_];

  sub_1C44000D0();
  v22 = 1107296256;
  v23 = sub_1C45BC0BC;
  v24 = &unk_1F43E7D20;
  v14 = _Block_copy(&v21);
  v15 = [v13 filterWithIsIncluded_];
  _Block_release(v14);

  v25 = nullsub_1;
  v26 = 0;
  v21 = MEMORY[0x1E69E9820];
  sub_1C440A8EC();
  v23 = v16;
  v24 = &unk_1F43E7D48;
  v17 = _Block_copy(&v21);
  v25 = sub_1C46C3CDC;
  v26 = v7;
  v21 = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1C44405F8;
  v24 = &unk_1F43E7D70;
  v18 = _Block_copy(&v21);

  v19 = [v15 sinkWithCompletion:v17 receiveInput:v18];

  _Block_release(v18);
  _Block_release(v17);

  sub_1C440D2B4();
  v20 = *(v7 + 16);

  sub_1C44085C4();
  sub_1C4416FC8();
}

uint64_t sub_1C46C2A98(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 starting];

    return v3 ^ 1;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "mostRecentScreenUnlockEvent: backlight event is nil", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    return 0;
  }
}

id sub_1C46C2BAC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_1C46C2C10()
{
  sub_1C43FEE04();
  v1 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBCC4();
  v7 = v6 - v5;
  sub_1C46C27F8();
  if (v8)
  {
    v9 = v8;
    [v8 timestamp];
    sub_1C4EF9AC8();
    sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    sub_1C4402F04(inited, "mins_since_last_screen_unlock");
    sub_1C4EF9B78();
    sub_1C442C788(v11 / 60.0);
    *(inited + 48) = [objc_opt_self() featureValueWithDouble_];
    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    sub_1C4F00F28();

    (*(v3 + 8))(v7, v1);
    sub_1C44085C4();
    sub_1C4416FC8();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      sub_1C440BAE8(&dword_1C43F8000, v16, v17, "DeviceDisplaySignal: screenLockEvent event is nil");
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
    sub_1C4416FC8();

    sub_1C4F00F28();
  }
}

void sub_1C46C2E90(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v36 = v12;
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = *(a2 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v32 = a3;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1C459D0A8();
    v17 = v40;
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v20 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v34 = *(v18 + 56);
    v35 = v19;
    v33 = (v18 - 8);
    do
    {
      v35(v10, v20, v38);
      v35(v15, v10, v38);
      sub_1C46C220C();
      v22 = v21;
      sub_1C46C2C10();
      v24 = v23;
      sub_1C46C249C(v10);
      v26 = v25;
      v27 = sub_1C46C136C(v24, v22);
      v28 = sub_1C46C136C(v26, v27);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C46C3580(v28, a1);

      sub_1C465CF34();
      v30 = v29;

      (*v33)(v10, v38);
      *(v15 + *(v37 + 20)) = v30;
      v31 = *(v40 + 16);
      if (v31 >= *(v40 + 24) >> 1)
      {
        sub_1C459D0A8();
      }

      *(v40 + 16) = v31 + 1;
      sub_1C4586A54(v15, v40 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31);
      v20 += v34;
      --v16;
    }

    while (v16);
    a3 = v32;
  }

  *a3 = v17;
}

uint64_t sub_1C46C316C()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9C88();
  sub_1C46C220C();
  v8 = v7;
  sub_1C46C2C10();
  v10 = v9;
  sub_1C46C249C(v6);
  v12 = v11;
  v13 = sub_1C46C136C(v10, v8);
  v14 = sub_1C46C136C(v12, v13);
  (*(v2 + 8))(v6, v0);
  return v14;
}

id sub_1C46C326C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  sub_1C4EF9C88();
  sub_1C46C220C();
  v12 = v11;
  sub_1C46C2C10();
  v14 = v13;
  sub_1C46C249C(v10);
  v16 = v15;
  v17 = sub_1C46C136C(v14, v12);
  sub_1C46C136C(v16, v17);
  (*(v6 + 8))(v10, v4);
  v18 = sub_1C44F9274(a1);

  if (!v18)
  {
    v19 = sub_1C46C1D28();
    v20 = sub_1C4499AD0(a1, a2, v19);

    if (v20)
    {
      return [objc_opt_self() featureValueWithDouble_];
    }

    else
    {
      return 0;
    }
  }

  return v18;
}

unint64_t sub_1C46C34E4(uint64_t a1)
{
  result = sub_1C46C350C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C46C350C()
{
  result = qword_1EC0BB300;
  if (!qword_1EC0BB300)
  {
    type metadata accessor for DeviceDisplaySignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB300);
  }

  return result;
}

_BYTE *sub_1C46C3580(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v16, v7, v4, a2);
      MEMORY[0x1C6942830](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2, v10, v11, v12, v13);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

__n128 sub_1C46C3744@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  v12 = *(a3 + 16);
  v13 = *a3;
  (*(v10 + 16))(a1, a2);
  sub_1C445FFF0(a3, v14, &qword_1EC0B9A20, &unk_1C4F10DF0);
  result = v13;
  *a4 = v13;
  *(a4 + 16) = v12;
  *(a4 + 32) = v8;
  *(a4 + 40) = v9;
  return result;
}

uint64_t sub_1C46C37F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C442E860(a4, a1);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return a2;
}

uint64_t sub_1C46C3838(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = a4;
  return a2;
}

uint64_t sub_1C46C3880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4EFEFB8();
  sub_1C43FBCE0();
  (*(v8 + 16))(a1, a3);
  return sub_1C442E860(a4, a2);
}

uint64_t sub_1C46C38F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return a2;
}

uint64_t sub_1C46C3940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C445FFF0(a4, a1, &qword_1EC0B9AE0, &qword_1C4F16C40);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return a2;
}

uint64_t sub_1C46C3994(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v61 = a5;
  sub_1C46C3564(a1, v56);
  v7 = v56[1];
  v8 = v58;
  v9 = v59;
  v49 = v60;
  v50 = v56[0];
  v46 = v57;
  v10 = (v57 + 64) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = a3;

  v48 = v7;
  if (v9)
  {
    while (1)
    {
      v51 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v50 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v50 + 56) + 8 * v13);
      v55[0] = *v14;
      v55[1] = v15;
      v55[2] = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = v16;
      v49(&v52, v55);

      v18 = v52;
      v19 = v53;
      v20 = v54;
      v21 = *v61;
      v29 = sub_1C445FAA8(v52, v53);
      v30 = v21[2];
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (v21[3] >= v32)
      {
        if ((v51 & 1) == 0)
        {
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          sub_1C4F02468();
        }
      }

      else
      {
        sub_1C46795D8(v32, v51 & 1, v23, v24, v25, v26, v27, v28, v45, v46, v47, SBYTE4(v47));
        v34 = sub_1C445FAA8(v18, v19);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_24;
        }

        v29 = v34;
      }

      v9 &= v9 - 1;
      v36 = *v61;
      if (v33)
      {
        v37 = *(v36[7] + 8 * v29);

        v38 = v36[7];
        v39 = *(v38 + 8 * v29);
        *(v38 + 8 * v29) = v37;
      }

      else
      {
        v36[(v29 >> 6) + 8] |= 1 << v29;
        v40 = (v36[6] + 16 * v29);
        *v40 = v18;
        v40[1] = v19;
        *(v36[7] + 8 * v29) = v20;
        v41 = v36[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_23;
        }

        v36[2] = v43;
      }

      a4 = 1;
      v8 = v11;
      v7 = v48;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1C449BB0C();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v51 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C46C3C50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C46C3838(&v6, *a1, *(a1 + 8), *(a1 + 16));
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1C46C3CE0(uint64_t a1)
{
  v3 = BiomeLibrary();
  *(v1 + 16) = v3;
  *(v1 + 40) = a1;
  v4 = [objc_msgSend(v3 Device)];
  swift_unknownObjectRelease();
  v5 = [v4 Backlight];
  swift_unknownObjectRelease();
  *(v1 + 24) = v5;
  v6 = [objc_msgSend(*(v1 + 16) Device)];
  swift_unknownObjectRelease();
  *(v1 + 32) = v6;
  return v1;
}

uint64_t sub_1C46C3DBC()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C46C3DF4()
{
  sub_1C46C3DBC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46C3E94()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  *(inited + 32) = 0x6C50656369766564;
  *(inited + 40) = 0xEF6E496465676775;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C46C3F54@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1C4EF9CD8();
  sub_1C43FCE50();
  (*(v8 + 32))(a4, a1);
  result = type metadata accessor for DevicePluggedInEvent(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

void sub_1C46C3FD8(uint64_t a1, char a2)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v16 - v5;
  v7 = sub_1C456902C(&qword_1EC0BB310, &qword_1C4F1EE08);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  v13 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v14 = [v13 Power];
  swift_unknownObjectRelease();
  v15 = [v14 PluggedIn];
  swift_unknownObjectRelease();
  sub_1C4674ABC();

  if (!v2)
  {
    sub_1C46C02F4(v12, v9, &qword_1EC0BB310, &qword_1C4F1EE08);
    sub_1C46C02F4(a1, v6, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C493A068();
    sub_1C46C4318(v12);
  }
}

void sub_1C46C41D4(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_1C456902C(&qword_1EC0BB308, &unk_1C4F1EDF8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v10 - v8;
  sub_1C46C3FD8(a1, a2);
  if (!v3)
  {
    sub_1C46C42A8(v9, a3);
  }
}

uint64_t sub_1C46C42A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB308, &unk_1C4F1EDF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46C4318(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB310, &qword_1C4F1EE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DevicePluggedInEvent(uint64_t a1)
{
  result = qword_1EDDE4820;
  if (!qword_1EDDE4820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46C43F4(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_1C46C4478(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C46C455C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C46C63CC(a1, sub_1C46C3C50, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C46C45E0(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v37 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v36 = a1;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v6)
    {

      return v1;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
  }

  while (!v5);
  v8 = v9;
LABEL_9:
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    v11 = (*(v36 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(v36 + 56) + 8 * v10);
    v15 = *(v1 + 16);
    if (*(v1 + 24) <= v15)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = v14;
      sub_1C46795D8(v15 + 1, 1, v18, v19, v20, v21, v22, v23, v34, v35, v36, SBYTE4(v36));
      v1 = v37;
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v16 = v14;
    }

    sub_1C4F02AF8();
    sub_1C4F01298();
    result = sub_1C4F02B68();
    v24 = v1 + 64;
    v25 = -1 << *(v1 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v1 + 64 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v1 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v1 + 48) + 16 * v28);
    *v33 = v12;
    v33[1] = v13;
    *(*(v1 + 56) + 8 * v28) = v14;
    ++*(v1 + 16);
    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v24 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_21;
    }
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C46C47FC(uint64_t a1)
{
  v2 = BiomeLibrary();
  *(v1 + 16) = v2;
  v3 = [objc_msgSend(v2 Device)];
  swift_unknownObjectRelease();
  v4 = [v3 LowPowerMode];
  swift_unknownObjectRelease();
  *(v1 + 24) = v4;
  v5 = [objc_msgSend(*(v1 + 16) Device)];
  swift_unknownObjectRelease();
  v6 = [v5 BatteryLevel];
  swift_unknownObjectRelease();
  *(v1 + 32) = v6;
  v7 = [objc_msgSend(*(v1 + 16) Device)];
  swift_unknownObjectRelease();
  v8 = [v7 PluggedIn];
  swift_unknownObjectRelease();
  *(v1 + 40) = v8;
  return v1;
}

uint64_t sub_1C46C49C0()
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 5, 0);
  v0 = 0;
  v1 = v16;
  v2 = 0x80000001C4F8FD30;
  v3 = 0x80000001C4F8FCD0;
  v4 = 0x80000001C4F8FD10;
  v5 = 0x80000001C4F8FCF0;
  do
  {
    v6 = 0xEE0065646F6D5F72;
    v7 = 0x65776F705F776F6CLL;
    switch(byte_1F43D27C0[v0 + 32])
    {
      case 1:
        v7 = 0xD000000000000012;
        v6 = v5;
        break;
      case 2:
        v7 = 0xD000000000000015;
        v6 = v4;
        break;
      case 3:
        v7 = 0xD000000000000011;
        v6 = v3;
        break;
      case 4:
        v7 = 0xD000000000000023;
        v6 = v2;
        break;
      default:
        break;
    }

    v17 = v1;
    v9 = *(v1 + 16);
    v8 = *(v1 + 24);
    if (v9 >= v8 >> 1)
    {
      v14 = v3;
      v15 = v2;
      v12 = v5;
      v13 = v4;
      sub_1C44CD9C0(v8 > 1, v9 + 1, 1);
      v5 = v12;
      v4 = v13;
      v3 = v14;
      v2 = v15;
      v1 = v17;
    }

    ++v0;
    *(v1 + 16) = v9 + 1;
    v10 = v1 + 16 * v9;
    *(v10 + 32) = v7;
    *(v10 + 40) = v6;
  }

  while (v0 != 5);

  return sub_1C4499940();
}

uint64_t sub_1C46C4B6C(uint64_t a1)
{
  if (sub_1C4663250(a1))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C43FBD24(v5);
    sub_1C440BAE8(&dword_1C43F8000, v6, v7, "Unable to fetch recent event from LowPower Stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C46C4C34(uint64_t a1)
{
  v1 = sub_1C46C4B6C(a1);
  if (v1)
  {
    v2 = v1;
    sub_1C456902C(&qword_1EC0BAAD8, &qword_1C4F16BE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    strcpy((inited + 32), "low_power_mode");
    *(inited + 47) = -18;
    sub_1C4577DBC();
    *(inited + 48) = sub_1C4A3B8F8([v2 starting]);
    sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
    v4 = sub_1C4F00F28();
    v5 = sub_1C467894C(v4);

    return v5;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v7 = sub_1C4F00978();
    sub_1C43FCEE8(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v9))
    {
      v10 = sub_1C43FCED0();
      sub_1C43FBD24(v10);
      sub_1C440BAE8(&dword_1C43F8000, v11, v12, "DevicePowerSignal: Low power mode event is nil");
      sub_1C43FE9D4();
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

uint64_t sub_1C46C4DE4(uint64_t a1)
{
  if (sub_1C4663250(a1))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C43FBD24(v5);
    sub_1C440BAE8(&dword_1C43F8000, v6, v7, "Unable to fetch recent event from BatteryLevelStream Stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C46C4EAC(uint64_t a1)
{
  v1 = sub_1C46C4DE4(a1);
  if (v1)
  {
    v2 = v1;
    sub_1C456902C(&qword_1EC0BAAD8, &qword_1C4F16BE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0CE60;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001C4F8FCF0;
    [v2 batteryPercentage];
    *(inited + 48) = [objc_opt_self() featureValueWithDouble_];
    *(inited + 56) = 0xD000000000000015;
    *(inited + 64) = 0x80000001C4F8FD10;
    sub_1C4577DBC();
    *(inited + 72) = sub_1C4A3B8F8([v2 fullyCharged]);
    sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
    v5 = sub_1C4F00F28();
    v6 = sub_1C467894C(v5);

    return v6;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v8 = sub_1C4F00978();
    sub_1C43FCEE8(v8, qword_1EDDFECB8);
    v9 = sub_1C4F00968();
    v10 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v10))
    {
      v11 = sub_1C43FCED0();
      sub_1C43FBD24(v11);
      sub_1C440BAE8(&dword_1C43F8000, v12, v13, "DevicePowerSignal: BatteryLevel event is nil");
      sub_1C43FE9D4();
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

uint64_t sub_1C46C50B4(uint64_t a1)
{
  if (sub_1C4663250(a1))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C43FBD24(v5);
    sub_1C440BAE8(&dword_1C43F8000, v6, v7, "Unable to fetch recent event from DevicePluggedIn Stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C46C517C(uint64_t a1)
{
  v3 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &aBlock - v15;
  v17 = *(v1 + 40);
  (*(v5 + 16))(&aBlock - v15, a1, v3, v14);
  sub_1C440BAA8(v16, 0, 1, v3);
  sub_1C440BAA8(v12, 1, 1, v3);
  v18 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v19 = sub_1C457A86C(v16, v12, 2, 0, 1);
  v20 = [v17 publisherWithOptions_];

  v36 = sub_1C46C5590;
  v37 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1C45AF9C8;
  v35 = &unk_1F43E7FD0;
  v21 = _Block_copy(&aBlock);
  v22 = [v20 filterWithIsIncluded_];
  _Block_release(v21);

  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v36 = nullsub_1;
  v37 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1C44405F8;
  v35 = &unk_1F43E8020;
  v24 = _Block_copy(&aBlock);
  v36 = sub_1C46C6688;
  v37 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1C4440590;
  v35 = &unk_1F43E8048;
  v25 = _Block_copy(&aBlock);

  v26 = [v22 sinkWithCompletion:v24 receiveInput:v25];
  _Block_release(v25);
  _Block_release(v24);

  swift_beginAccess();
  v27 = *(v23 + 16);
  if (v27)
  {
    v28 = v27;
    [v28 timestamp];
    sub_1C4EF9AC8();
    sub_1C4EF9B78();
    v30 = v29;

    (*(v5 + 8))(v9, v3);

    *&result = round(v30 / 60.0 * 100.0) / 100.0;
  }

  else
  {

    *&result = 0.0;
  }

  return result;
}

id sub_1C46C5590(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 starting];
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDDFECB8);
    v2 = sub_1C4F00968();
    v5 = sub_1C4F01CF8();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C43F8000, v2, v5, "timeSinceLastDeviceChargeStart: device plugged in event is nil", v6, 2u);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C46C56A0(uint64_t a1)
{
  v2 = sub_1C46C50B4(a1);
  if (v2)
  {
    v3 = v2;
    sub_1C4577DBC();
    v4 = sub_1C4F00F28();
    sub_1C4A3B8F8([v3 starting]);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4660314();
    v5 = sub_1C46C517C(a1);
    if (sub_1C4A3B944(v5, v6 & 1))
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C4660314();
    }

    else
    {
      v14 = sub_1C445FAA8(0xD000000000000023, 0x80000001C4F8FD30);
      if (v15)
      {
        v16 = v14;
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
        sub_1C4F02458();

        v17 = *(*(v4 + 56) + 8 * v16);
        sub_1C4F02478();
      }
    }

    v18 = sub_1C46C45E0(v4);

    return v18;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v7 = sub_1C4F00978();
    sub_1C43FCEE8(v7, qword_1EDDFECB8);
    v8 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (sub_1C43FCEA4(v9))
    {
      v10 = sub_1C43FCED0();
      sub_1C43FBD24(v10);
      sub_1C440BAE8(&dword_1C43F8000, v11, v12, "DevicePowerSignal: PluggedIn event is nil");
      sub_1C43FE9D4();
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

void sub_1C46C5954(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v33 = v12;
  v34 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = *(a2 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v29 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C459D0A8();
    v17 = v37;
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v20 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v31 = *(v18 + 56);
    v32 = v19;
    v30 = (v18 - 8);
    do
    {
      v32(v10, v20, v35);
      v32(v15, v10, v35);
      v21 = sub_1C46C4C34(v10);
      v22 = sub_1C46C4EAC(v10);
      v23 = sub_1C46C56A0(v10);
      v24 = sub_1C46C455C(v22, v21);
      v25 = sub_1C46C455C(v23, v24);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C46C6208(v25, a1);

      sub_1C465CF34();
      v27 = v26;

      (*v30)(v10, v35);
      *(v15 + *(v34 + 20)) = v27;
      v28 = *(v37 + 16);
      if (v28 >= *(v37 + 24) >> 1)
      {
        sub_1C459D0A8();
      }

      *(v37 + 16) = v28 + 1;
      sub_1C4586A54(v15, v37 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28);
      v20 += v31;
      --v16;
    }

    while (v16);
    a3 = v29;
  }

  *a3 = v17;
}

uint64_t sub_1C46C5C30(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = a1 == 0x65776F705F776F6CLL && a2 == 0xEE0065646F6D5F72;
  if (v11 || (sub_1C43FD4D8(0x65776F705F776F6CLL, 0xEE0065646F6D5F72) & 1) != 0)
  {
    sub_1C4EF9C88();
    sub_1C46C4C34(v10);
LABEL_7:
    (*(v6 + 8))(v10, v4);
    v12 = sub_1C44F9274(a1);

    return v12;
  }

  v14 = a1 == 0xD000000000000011 && 0x80000001C4F8FCD0 == a2;
  if (v14 || (sub_1C43FD4D8(0xD000000000000011, 0x80000001C4F8FCD0) & 1) != 0)
  {
    sub_1C4EF9C88();
    sub_1C46C56A0(v10);
    goto LABEL_7;
  }

  v15 = a1 == 0xD000000000000015 && 0x80000001C4F8FD10 == a2;
  if (v15 || (sub_1C43FD4D8(0xD000000000000015, 0x80000001C4F8FD10) & 1) != 0 || (a1 == 0xD000000000000012 ? (v16 = 0x80000001C4F8FCF0 == a2) : (v16 = 0), v16 || (sub_1C43FD4D8(0xD000000000000012, 0x80000001C4F8FCF0) & 1) != 0))
  {
    sub_1C4EF9C88();
    sub_1C46C4EAC(v10);
    goto LABEL_7;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v17 = sub_1C4F00978();
  sub_1C43FCEE8(v17, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v18 = sub_1C4F00968();
  v19 = sub_1C4F01CF8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_1C441D828(a1, a2, &v22);
    _os_log_impl(&dword_1C43F8000, v18, v19, "Feature with name %s doesn't exist", v20, 0xCu);
    sub_1C440962C(v21);
    MEMORY[0x1C6942830](v21, -1, -1);
    MEMORY[0x1C6942830](v20, -1, -1);
  }

  return 0;
}

uint64_t sub_1C46C5F80()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9C88();
  v7 = sub_1C46C4C34(v6);
  v8 = sub_1C46C4EAC(v6);
  v9 = sub_1C46C56A0(v6);
  v10 = sub_1C46C455C(v8, v7);
  v11 = sub_1C46C455C(v9, v10);
  (*(v2 + 8))(v6, v0);
  return v11;
}

id *sub_1C46C6080()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C46C60B8()
{
  sub_1C46C6080();

  return swift_deallocClassInstance();
}

unint64_t sub_1C46C618C(uint64_t a1)
{
  result = sub_1C46C61B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C46C61B4()
{
  result = qword_1EC0BB328;
  if (!qword_1EC0BB328)
  {
    type metadata accessor for DevicePowerSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB328);
  }

  return result;
}

_BYTE *sub_1C46C6208(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v16, v7, v4, a2);
      MEMORY[0x1C6942830](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2, v10, v11, v12, v13);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C46C63CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v61 = a5;
  sub_1C46C3CC4();
  v7 = v56;
  v8 = v58;
  v9 = v59;
  v49 = v60;
  v50 = v55[3];
  v46 = v57;
  v10 = (v57 + 64) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v47 = a3;

  v48 = v56;
  if (v59)
  {
    while (1)
    {
      v51 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v50 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v50 + 56) + 8 * v13);
      v55[0] = *v14;
      v55[1] = v15;
      v55[2] = v16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = v16;
      v49(&v52, v55);

      v18 = v52;
      v19 = v53;
      v20 = v54;
      v21 = *v61;
      v29 = sub_1C445FAA8(v52, v53);
      v30 = v21[2];
      v31 = (v22 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        break;
      }

      v33 = v22;
      if (v21[3] >= v32)
      {
        if ((v51 & 1) == 0)
        {
          sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
          sub_1C4F02468();
        }
      }

      else
      {
        sub_1C46795D8(v32, v51 & 1, v23, v24, v25, v26, v27, v28, v45, v46, v47, SBYTE4(v47));
        v34 = sub_1C445FAA8(v18, v19);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_24;
        }

        v29 = v34;
      }

      v9 &= v9 - 1;
      v36 = *v61;
      if (v33)
      {
        v37 = *(v36[7] + 8 * v29);

        v38 = v36[7];
        v39 = *(v38 + 8 * v29);
        *(v38 + 8 * v29) = v37;
      }

      else
      {
        v36[(v29 >> 6) + 8] |= 1 << v29;
        v40 = (v36[6] + 16 * v29);
        *v40 = v18;
        v40[1] = v19;
        *(v36[7] + 8 * v29) = v20;
        v41 = v36[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_23;
        }

        v36[2] = v43;
      }

      a4 = 1;
      v8 = v11;
      v7 = v48;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1C449BB0C();
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v51 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C46C66E8()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  strcpy((inited + 32), "deviceUnlocked");
  *(inited + 47) = -18;
  *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C46C67A8@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1C4EF9CD8();
  sub_1C43FCE50();
  (*(v8 + 32))(a4, a1);
  result = type metadata accessor for DeviceScreenLockEvent(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

void sub_1C46C682C(uint64_t a1, char a2)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  v7 = sub_1C456902C(&qword_1EC0BB338, &qword_1C4F1EFC8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  v13 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v14 = [v13 ScreenLocked];
  swift_unknownObjectRelease();
  sub_1C4674F7C();

  if (!v2)
  {
    sub_1C46C02F4(v12, v9, &qword_1EC0BB338, &qword_1C4F1EFC8);
    sub_1C46C02F4(a1, v6, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C493A438();
    sub_1C46C6B48(v12);
  }
}

void sub_1C46C6A04(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_1C456902C(&qword_1EC0BB330, &unk_1C4F1EFB8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v10 - v8;
  sub_1C46C682C(a1, a2);
  if (!v3)
  {
    sub_1C46C6AD8(v9, a3);
  }
}

uint64_t sub_1C46C6AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB330, &unk_1C4F1EFB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46C6B48(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB338, &qword_1C4F1EFC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for DeviceScreenLockEvent(uint64_t a1)
{
  result = qword_1EDDE3DB8;
  if (!qword_1EDDE3DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46C6C24(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_1C46C6CA8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceWiFiConnectedDataProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C46C6EA0()
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  sub_1C44193AC(inited, xmmword_1C4F0D130);
  inited[3].n128_u64[0] = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C46C6F3C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  sub_1C44193AC(inited, xmmword_1C4F0D130);
  inited[3].n128_u64[0] = [objc_opt_self() featureValueWithInt64_];
  sub_1C4577DBC();
  v9 = sub_1C4F00F28();
  if (a2)
  {
    v10 = sub_1C45FB538();
    if (v10)
    {
      v11 = v10;
      v12 = sub_1C4EF9CD8();
      sub_1C440BAA8(v7, 1, 1, v12);
      v13 = sub_1C4886564(a1, a2, v7);
      v15 = v14;
      sub_1C45942C8(v11);
      sub_1C4420C3C(v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (v15)
      {
        if (sub_1C4594E18(v13, v15))
        {
          swift_isUniquelyReferenced_nonNull_native();
          v21 = v9;
          sub_1C4660314();
          return v21;
        }

        else
        {
          v16 = sub_1C445FAA8(0x6469735369666977, 0xE800000000000000);
          if (v17)
          {
            v18 = v16;
            swift_isUniquelyReferenced_nonNull_native();
            v21 = v9;
            sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
            sub_1C4F02458();
            v9 = v21;

            v19 = *(*(v9 + 56) + 8 * v18);
            sub_1C4F02478();
          }
        }
      }
    }
  }

  return v9;
}

uint64_t sub_1C46C71C0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v10 + 32))(a5, a1);
  result = type metadata accessor for DeviceWiFiConnectedEvent(0);
  *(a5 + *(result + 20)) = a2;
  v12 = (a5 + *(result + 24));
  *v12 = a3;
  v12[1] = a4;
  return result;
}

uint64_t sub_1C46C725C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 24));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

void sub_1C46C727C(uint64_t a1, char a2)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = sub_1C456902C(&qword_1EC0BB358, &qword_1C4F1F0D8);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  v15 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v16 = [v15 Wireless];
  swift_unknownObjectRelease();
  v17 = [v16 WiFi];
  swift_unknownObjectRelease();
  sub_1C467543C();

  if (!v2)
  {
    sub_1C445FFF0(v14, v11, &qword_1EC0BB358, &qword_1C4F1F0D8);
    sub_1C445FFF0(a1, v7, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C493A808();
    sub_1C4420C3C(v14, &qword_1EC0BB358, &qword_1C4F1F0D8);
  }
}

void sub_1C46C7480(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_1C456902C(&qword_1EC0BB350, &unk_1C4F1F0C8);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v11 - v9;
  sub_1C46C727C(a1, a2);
  if (!v3)
  {
    sub_1C46C7550(v10, a3);
  }
}

uint64_t sub_1C46C7550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB350, &unk_1C4F1F0C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DeviceWiFiConnectedEvent(uint64_t a1)
{
  result = qword_1EDDE1B70;
  if (!qword_1EDDE1B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46C7634(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C46C76B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C46C770C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C46C776C(uint64_t a1)
{
  v2 = BiomeLibrary();
  *(v1 + 16) = v2;
  v3 = [v2 Device];
  v4 = [v3 Wireless];
  swift_unknownObjectRelease();
  v5 = [v4 AirplaneMode];
  sub_1C440D060();
  swift_unknownObjectRelease();
  *(v1 + 24) = v3;
  v6 = [*(v1 + 16) Device];
  v7 = [v6 Wireless];
  swift_unknownObjectRelease();
  v8 = [v7 Bluetooth];
  sub_1C440D060();
  swift_unknownObjectRelease();
  *(v1 + 32) = v6;
  v9 = [*(v1 + 16) Device];
  v10 = [v9 Wireless];
  swift_unknownObjectRelease();
  v11 = [v10 WiFi];
  sub_1C440D060();
  swift_unknownObjectRelease();
  *(v1 + 40) = v9;
  return v1;
}

uint64_t sub_1C46C7924()
{
  sub_1C44CD9C0(0, 4, 0);
  v0 = 0;
  sub_1C4408894();
  sub_1C440F51C();
  do
  {
    v6 = 0xED000065646F6D5FLL;
    v7 = 0x656E616C70726961;
    switch(byte_1F43D2898[v0 + 32])
    {
      case 1:
        break;
      case 2:
        v7 = v5;
        v6 = v4;
        break;
      case 3:
        v7 = v2 + 22;
        v6 = v3;
        break;
      default:
        v7 = 0xD000000000000012;
        v6 = 0x80000001C4F8FC90;
        break;
    }

    v13 = v1;
    v9 = *(v1 + 16);
    v8 = *(v1 + 24);
    if (v9 >= v8 >> 1)
    {
      v12 = v3;
      sub_1C44CD9C0(v8 > 1, v9 + 1, 1);
      sub_1C440F51C();
      sub_1C4408894();
      v3 = v12;
      v1 = v13;
      v2 = 0xD000000000000012;
    }

    ++v0;
    *(v1 + 16) = v9 + 1;
    v10 = v1 + 16 * v9;
    *(v10 + 32) = v7;
    *(v10 + 40) = v6;
  }

  while (v0 != 4);

  return sub_1C4499940();
}

uint64_t sub_1C46C7AB0(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C46C7B08(a1, v1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C46C7B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v49 = a3;
  v46 = a1;
  v47 = a2;
  v3 = sub_1C456902C(&unk_1EC0B9830, qword_1C4F0FC20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v41 - v4;
  v6 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v9 = sub_1C4EF9648();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1C4EF9F88();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v42 = &v41 - v23;
  v24 = swift_allocObject();
  v45 = v24;
  *(v24 + 16) = MEMORY[0x1E69E7CC0];
  v48 = (v24 + 16);
  sub_1C4EF9F58();
  sub_1C440BAA8(v8, 1, 1, v12);
  v25 = sub_1C4EFA018();
  sub_1C440BAA8(v5, 1, 1, v25);
  sub_1C4EF9618(v8, v5, 0, 1, 0, 1, 0, 1, 0, 1, -1, 0, 0);
  v26 = v42;
  sub_1C4EF9F18();
  (*(v43 + 8))(v11, v44);
  (*(v13 + 8))(v15, v12);
  v27 = v47;
  v28 = *(v47 + 32);
  sub_1C4467FE0(v26, v21);
  v29 = sub_1C4EF9CD8();
  sub_1C440BAA8(v18, 1, 1, v29);
  v30 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v31 = sub_1C457A86C(v21, v18, 0, 0, 0);
  v32 = [v28 publisherWithOptions_];

  v54 = sub_1C46C97C4;
  v55 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1C44405F8;
  v53 = &unk_1F43E8338;
  v33 = _Block_copy(&aBlock);

  v34 = swift_allocObject();
  v35 = v45;
  *(v34 + 16) = v27;
  *(v34 + 24) = v35;
  v54 = sub_1C46C97CC;
  v55 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v51 = 1107296256;
  v52 = sub_1C4440590;
  v53 = &unk_1F43E8388;
  v36 = _Block_copy(&aBlock);

  v37 = [v32 sinkWithCompletion:v33 receiveInput:v36];
  _Block_release(v36);
  _Block_release(v33);

  sub_1C44686E4(v26);
  v38 = v48;
  swift_beginAccess();
  v39 = *v38;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  *v49 = v39;
  return result;
}

void sub_1C46C80AC(void *a1, uint64_t a2)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);

    v6 = v4;
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315394;
      v10 = [*(a2 + 32) description];
      v11 = sub_1C4F01138();
      v13 = v12;

      v14 = sub_1C441D828(v11, v13, &v20);

      *(v8 + 4) = v14;
      *(v8 + 12) = 2080;
      v15 = v6;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v16 = sub_1C4F01198();
      v18 = sub_1C441D828(v16, v17, &v20);

      *(v8 + 14) = v18;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to fetch events from stream %s with error: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v9, -1, -1);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C46C82F4(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 eventBody])
  {
    v4 = swift_beginAccess();
    MEMORY[0x1C6940330](v4);
    sub_1C4427EF0();
    sub_1C4F01748();
    swift_endAccess();
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);

    oslog = sub_1C4F00968();
    v6 = sub_1C4F01CF8();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136315138;
      v9 = [*(a2 + 32) description];
      v10 = sub_1C4F01138();
      v12 = v11;

      v13 = sub_1C441D828(v10, v12, v15);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_1C43F8000, oslog, v6, "Unable to parse event body from read event in the stream %s", v7, 0xCu);
      sub_1C440962C(v8);
      MEMORY[0x1C6942830](v8, -1, -1);
      MEMORY[0x1C6942830](v7, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C46C8510(uint64_t a1)
{
  if (sub_1C4663250(a1))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C43FBD24(v5);
    sub_1C440BAE8(&dword_1C43F8000, v6, v7, "Unable to fetch recent event from AirplaneMode stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C46C85D8(uint64_t a1)
{
  if (sub_1C46C8510(a1))
  {
    v2 = sub_1C440D060();
    v3 = sub_1C46C7AB0(v2);
    if (v3)
    {
      v4 = v3;
      if ([v1 starting])
      {
        v5 = [v1 deviceType] == 21;
      }

      else
      {
        v5 = 0;
      }

      v18 = sub_1C4428DA0(v4);
      if (!v18)
      {

        v21 = MEMORY[0x1E69E7CC0];
LABEL_28:
        v27 = *(sub_1C4597C94(v21) + 16);

        sub_1C456902C(&qword_1EC0BAAD8, &qword_1C4F16BE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C4F0CE60;
        *(inited + 32) = 0xD000000000000012;
        *(inited + 40) = 0x80000001C4F8FC90;
        sub_1C4577DBC();
        *(inited + 48) = sub_1C4A3B8F8(v5);
        *(inited + 56) = 0xD000000000000028;
        *(inited + 64) = 0x80000001C4F923A0;
        *(inited + 72) = [objc_opt_self() featureValueWithInt64_];
        sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
        v29 = sub_1C4F00F28();
        v30 = sub_1C467894C(v29);

        return v30;
      }

      v19 = v18;
      v31 = v5;
      v32 = MEMORY[0x1E69E7CC0];
      sub_1C459D8D0(0, v18 & ~(v18 >> 63), 0);
      if ((v19 & 0x8000000000000000) == 0)
      {
        v20 = 0;
        v21 = v32;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x1C6940F90](v20, v4);
          }

          else
          {
            v22 = *(v4 + 8 * v20 + 32);
          }

          v23 = v22;
          v24 = [v22 productID];

          v26 = *(v32 + 16);
          v25 = *(v32 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_1C459D8D0((v25 > 1), v26 + 1, 1);
          }

          ++v20;
          *(v32 + 16) = v26 + 1;
          *(v32 + 4 * v26 + 32) = v24;
        }

        while (v19 != v20);

        v5 = v31;
        goto LABEL_28;
      }

      __break(1u);
    }

    else if (qword_1EDDFECB0 == -1)
    {
LABEL_13:
      v13 = sub_1C4F00978();
      sub_1C43FCEE8(v13, qword_1EDDFECB8);
      v14 = sub_1C4F00968();
      v15 = sub_1C4F01CF8();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = sub_1C43FCED0();
        *v16 = 0;
        _os_log_impl(&dword_1C43F8000, v14, v15, "DeviceWirelessSignal: Could not fetch bluetooth events for past one hour", v16, 2u);
        sub_1C43FBE2C();
      }

      sub_1C4577DBC();
      v17 = sub_1C4F00F28();

      return v17;
    }

    sub_1C43FFB88(&qword_1EDDFECB0);
    goto LABEL_13;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v6 = sub_1C4F00978();
  sub_1C43FCEE8(v6, qword_1EDDFECB8);
  v7 = sub_1C4F00968();
  v8 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v8))
  {
    v9 = sub_1C43FCED0();
    sub_1C43FBD24(v9);
    sub_1C440BAE8(&dword_1C43F8000, v10, v11, "DeviceWirelessSignal: Most Recent Bluetooth eventis nil");
    sub_1C43FE9D4();
  }

  sub_1C4577DBC();

  return sub_1C4F00F28();
}

uint64_t sub_1C46C89E4(uint64_t a1)
{
  if (sub_1C4663250(a1))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C43FBD24(v5);
    sub_1C440BAE8(&dword_1C43F8000, v6, v7, "Unable to fetch recent event from AirplaneMode stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C46C8AAC(uint64_t a1)
{
  if (sub_1C4663250(a1))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (sub_1C43FCEA4(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C43FBD24(v5);
    sub_1C440BAE8(&dword_1C43F8000, v6, v7, "Unable to fetch recent event from DeviceWiFi stream");
    sub_1C43FE9D4();
  }

  return 0;
}

uint64_t sub_1C46C8B74(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, const char *a5)
{
  v8 = a2(a1);
  if (v8)
  {
    v9 = v8;
    sub_1C456902C(&qword_1EC0BAAD8, &qword_1C4F16BE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0D130;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    sub_1C4577DBC();
    *(inited + 48) = sub_1C4A3B8F8([v9 starting]);
    sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
    v11 = sub_1C4F00F28();
    v12 = sub_1C467894C(v11);

    return v12;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v14 = sub_1C4F00978();
    sub_1C43FCEE8(v14, qword_1EDDFECB8);
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CF8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = sub_1C43FCED0();
      *v17 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v16, a5, v17, 2u);
      sub_1C43FBE2C();
    }

    sub_1C4577DBC();

    return sub_1C4F00F28();
  }
}

void sub_1C46C8D40(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v41 = v12;
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = *(a2 + 16);
  v17 = MEMORY[0x1E69E7CC0];
  if (v16)
  {
    v37 = a3;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C459D0A8();
    v17 = v45;
    v19 = *(v6 + 16);
    v18 = v6 + 16;
    v20 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v39 = (v18 - 8);
    v40 = v19;
    v38 = *(v18 + 56);
    do
    {
      v40(v10, v20, v43);
      v40(v15, v10, v43);
      sub_1C4406A6C();
      sub_1C44000F4();
      v25 = sub_1C46C8B74(v21, v22, v23, v24, "DeviceWirelessSignal: device wifi event is nil");
      v26 = sub_1C46C85D8(v10);
      sub_1C442C7A0();
      sub_1C440A900();
      v31 = sub_1C46C8B74(v27, v28, v29, v30, "DeviceWirelessSignal: airplaneMode event is nil");
      v32 = sub_1C46C455C(v26, v25);
      v33 = sub_1C46C455C(v31, v32);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C46C9600(v33, a1);

      sub_1C465CF34();
      v35 = v34;

      (*v39)(v10, v43);
      *(v15 + *(v42 + 20)) = v35;
      v36 = *(v45 + 16);
      if (v36 >= *(v45 + 24) >> 1)
      {
        sub_1C459D0A8();
      }

      *(v45 + 16) = v36 + 1;
      sub_1C4586A54(v15, v45 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v36);
      v20 += v38;
      --v16;
    }

    while (v16);
    a3 = v37;
  }

  *a3 = v17;
}