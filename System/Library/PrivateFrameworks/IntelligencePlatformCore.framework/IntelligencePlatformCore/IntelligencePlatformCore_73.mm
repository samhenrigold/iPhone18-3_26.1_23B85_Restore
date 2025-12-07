uint64_t Resolver.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1C456902C(&unk_1EC0B7610, &unk_1C4F17610);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-v10];
  v12 = sub_1C456902C(&qword_1EC0C2A90, &unk_1C4F16D30);
  v13 = sub_1C43FBD18(v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23[-v14];
  v16 = *a3;
  v17 = type metadata accessor for Resolver(0);
  *(a4 + v17[6]) = 4;
  sub_1C4425F30();
  sub_1C4471AF0(a1, a4);
  sub_1C44201A8();
  sub_1C4471AF0(a2, a4 + v18);
  *(a4 + v17[7]) = v16;
  v19 = sub_1C4EF9E48();
  sub_1C440BAA8(v11, 1, 1, v19);
  sub_1C4EFF1A8();
  sub_1C441A3AC();
  sub_1C447EB38(a2, v20);
  sub_1C447EB38(a1, type metadata accessor for PhaseStores);
  v21 = sub_1C4EFF1C8();
  sub_1C440BAA8(v15, 0, 1, v21);
  return sub_1C4482F3C(v15, a4 + v17[8]);
}

uint64_t sub_1C4AE0FC8(uint64_t a1)
{
  v2 = type metadata accessor for Source(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  if (qword_1EDDFDCF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (qword_1EDDFF3C8 && (v8 = (*(off_1EDDFF3D0 + 1))(), (v10 = (*(v9 + 40))(a1, v8, v9)) != 0))
  {
    v11 = v10;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    sub_1C4471AF0(a1, v7);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25 = v16;
      *v15 = 136315394;
      sub_1C44E3714(v7, v4);
      v17 = *v4;
      v18 = v4[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C447EB38(v4, type metadata accessor for Source);
      v19 = sub_1C441D828(v17, v18, &v25);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2048;
      *(v15 + 14) = *(v11 + 16);

      _os_log_impl(&dword_1C43F8000, v13, v14, "InternalPlugin: Resolver: loadEntityClasses: %s has %ld classes", v15, 0x16u);
      sub_1C440962C(v16);
      MEMORY[0x1C6942830](v16, -1, -1);
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    else
    {

      sub_1C447EB38(v7, type metadata accessor for Source);
    }
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1C4F00978();
    sub_1C442B738(v20, qword_1EDDFECB8);
    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C43F8000, v21, v22, "InternalPlugin: Resolver: loadEntityClasses: failed to load plugin", v23, 2u);
      MEMORY[0x1C6942830](v23, -1, -1);
    }

    return 0;
  }

  return v11;
}

void sub_1C4AE1388(uint64_t a1, uint64_t *a2, uint64_t a3, float *a4)
{
  v29 = a3;
  v7 = type metadata accessor for EntityMatch(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  if (!*(v11 + 16) || (sub_1C44E3664(), (v13 & 1) == 0))
  {
LABEL_32:
    sub_1C4F024A8();
    __break(1u);
    return;
  }

  v14 = *(*(v11 + 56) + 8 * v12);
  v15 = *(v14 + 16);
  if (v15)
  {
    v28 = v4;
    v16 = v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = 0;
    v39 = a4;
    v30 = v16;
    v31 = v8;
    while (v17 < *(v14 + 16))
    {
      sub_1C4471AF0(v16 + *(v8 + 72) * v17, v10);
      if (sub_1C4EFEFF8())
      {
        v18 = *&v10[*(v7 + 40)];
        if (v18)
        {
          if (*(v18 + 16) && (v19 = sub_1C445FAA8(0x6E65727275437369, 0xED00007265735574), (v20 & 1) != 0))
          {
            v21 = (*(v18 + 56) + 16 * v19);
            v22 = *v21;
            v18 = v21[1];
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          }

          else
          {
            v22 = 0;
            v18 = 0;
          }
        }

        else
        {
          v22 = 0;
        }

        strcpy(v32, "isCurrentUser");
        v32[7] = -4864;
        v33 = 1702195828;
        v34 = 0xE400000000000000;
        v36 = 0;
        v37 = 0;
        v35 = 0;
        v38 = 1;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C44E3634(v32);
        if (v18)
        {
          if (v22 == 1702195828 && v18 == 0xE400000000000000)
          {

LABEL_29:

            v27 = v29;
            sub_1C4420C3C(v29, &qword_1EC0BB248, &qword_1C4F1E7C8);
            sub_1C44E3714(v10, v27);
            sub_1C440BAA8(v27, 0, 1, v7);
            return;
          }

          v24 = sub_1C4F02938();

          if (v24)
          {
            goto LABEL_29;
          }
        }

        else
        {
        }

        v25 = *&v10[*(v7 + 28)];
        if (*v39 >= v25)
        {
          sub_1C447EB38(v10, type metadata accessor for EntityMatch);
        }

        else
        {
          *v39 = v25;
          v26 = v29;
          sub_1C4420C3C(v29, &qword_1EC0BB248, &qword_1C4F1E7C8);
          sub_1C44E3714(v10, v26);
          sub_1C440BAA8(v26, 0, 1, v7);
        }

        v16 = v30;
        v8 = v31;
      }

      else
      {
        sub_1C447EB38(v10, type metadata accessor for EntityMatch);
      }

      if (v15 == ++v17)
      {

        return;
      }
    }

    __break(1u);
    goto LABEL_32;
  }
}

void sub_1C4AE178C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1C456902C(&qword_1EC0B91E8, &qword_1C4F0ECF0);
  v5 = (type metadata accessor for EntityMatch(0) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0D130;
  v8 = v7 + v6;
  v9 = sub_1C4EFD548();
  (*(*(v9 - 8) + 16))(v8, a3, v9);
  v10 = v5[7];
  v11 = sub_1C4EFF0C8();
  v12 = *(*(v11 - 8) + 16);
  v12(v8 + v10, a1, v11);
  v12(v8 + v5[8], a3 + v5[8], v11);
  v13 = *(a3 + v5[10]);
  v14 = *(a3 + v5[11]);
  v15 = *(a3 + v5[12]);
  *(v8 + v5[9]) = *(a3 + v5[9]);
  *(v8 + v5[10]) = v13;
  *(v8 + v5[11]) = v14;
  *(v8 + v5[12]) = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  swift_isUniquelyReferenced_nonNull_native();
  v17 = *a2;
  sub_1C4661954();
  *a2 = v17;
}

uint64_t sub_1C4AE1974(uint64_t a1)
{
  result = sub_1C4AE2EAC(&qword_1EDDF0A58, type metadata accessor for Resolver, &protocol conformance descriptor for Resolver);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AE19CC(uint64_t a1)
{
  result = sub_1C4AE2EAC(&qword_1EDDF0A68, type metadata accessor for Resolver, &protocol conformance descriptor for Resolver);
  *(a1 + 8) = result;
  return result;
}

void sub_1C4AE1A4C(uint64_t a1)
{
  type metadata accessor for PhaseStores(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Source(319);
    if (v2 <= 0x3F)
    {
      sub_1C4682388(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C4AE1B00(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1C4F02828();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C4EFF0C8();
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1C4EFF0C8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C4AE1EEC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C4AE1C30(0, v2, 1, a1);
  }
}

void sub_1C4AE1C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1C4EFF0C8();
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v31 - v11;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
    while (2)
    {
      v36 = v19;
      v37 = a3;
      v34 = v21;
      v35 = v20;
      v22 = v19;
      do
      {
        v23 = v44;
        v24 = v42;
        (v42)(v44, v21, v8, v14);
        v25 = v45;
        v24(v45, v22, v8);
        sub_1C4AE2EAC(&unk_1EDDFA1B0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9828]);
        v26 = sub_1C4F01068();
        v27 = *v18;
        (*v18)(v25, v8);
        v27(v23, v8);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (!v40)
        {
          __break(1u);
          return;
        }

        v28 = *v39;
        v29 = v41;
        (*v39)(v41, v21, v8);
        swift_arrayInitWithTakeFrontToBack();
        v28(v22, v29, v8);
        v22 += v38;
        v21 += v38;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v37 + 1;
      v19 = &v36[v32];
      v20 = v35 - 1;
      v21 = v34 + v32;
      if (v37 + 1 != v33)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C4AE1EEC(unint64_t *a1, uint64_t a2, char **a3, unint64_t a4)
{
  v5 = v4;
  v123 = a1;
  v8 = sub_1C4EFF0C8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v10);
  v136 = &v120 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v142 = &v120 - v13;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v141 = &v120 - v17;
  v133 = v9;
  v134 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v143 = *v123;
    if (!v143)
    {
      goto LABEL_141;
    }

    a4 = v5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v112 = v20 + 16;
      v113 = *(v20 + 2);
      while (v113 >= 2)
      {
        if (!*v134)
        {
          goto LABEL_138;
        }

        v114 = a4;
        v115 = v20;
        v116 = &v20[16 * v113];
        v117 = *v116;
        a4 = &v112[2 * v113];
        v118 = *(a4 + 8);
        sub_1C4AE2920(&(*v134)[v9[9] * *v116], &(*v134)[v9[9] * *a4], &(*v134)[v9[9] * v118], v143);
        v9 = v114;
        if (v114)
        {
          break;
        }

        if (v118 < v117)
        {
          goto LABEL_126;
        }

        if (v113 - 2 >= *v112)
        {
          goto LABEL_127;
        }

        *v116 = v117;
        *(v116 + 1) = v118;
        v119 = *v112 - v113;
        if (*v112 < v113)
        {
          goto LABEL_128;
        }

        v113 = *v112 - 1;
        sub_1C461950C((a4 + 16), v119, a4);
        *v112 = v113;
        a4 = 0;
        v9 = v133;
        v20 = v115;
      }

LABEL_109:

      return;
    }

LABEL_135:
    v20 = sub_1C46194F4();
    goto LABEL_101;
  }

  v121 = a4;
  v19 = 0;
  v139 = (v9 + 1);
  v140 = v9 + 2;
  v138 = (v9 + 4);
  v20 = MEMORY[0x1E69E7CC0];
  v126 = v15;
  v143 = v8;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v125 = v19;
    if (v19 + 1 < v18)
    {
      v127 = v5;
      v122 = v20;
      v23 = v19;
      v24 = *v134;
      v25 = v9[9];
      a4 = &(*v134)[v25 * v22];
      v26 = v9[2];
      v132 = v19 + 1;
      v27 = v141;
      v135 = v18;
      v26(v141, a4, v8, v16);
      v28 = &v24[v25 * v23];
      v29 = v8;
      v30 = v142;
      v130 = v26;
      (v26)(v142, v28, v29);
      v129 = sub_1C4AE2EAC(&unk_1EDDFA1B0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9828]);
      LODWORD(v131) = sub_1C4F01068();
      v31 = v9[1];
      (v31)(v30, v29);
      v32 = v27;
      v22 = v132;
      v128 = v31;
      (v31)(v32, v29);
      v33 = v135;
      v34 = (v125 + 2);
      v137 = v25;
      v35 = &v24[v25 * (v125 + 2)];
      while (1)
      {
        v9 = v34;
        v36 = v22 + 1;
        if (v36 >= v33)
        {
          break;
        }

        v37 = v141;
        v38 = v143;
        v39 = v130;
        (v130)(v141, v35, v143);
        v40 = v36;
        v41 = v142;
        v39(v142, a4, v38);
        v42 = sub_1C4F01068() & 1;
        v43 = v41;
        v22 = v40;
        v44 = v128;
        (v128)(v43, v38);
        (v44)(v37, v38);
        v33 = v135;
        v35 += v137;
        a4 += v137;
        v34 = (v9 + 1);
        if ((v131 & 1) != v42)
        {
          goto LABEL_9;
        }
      }

      v22 = v33;
LABEL_9:
      if (v131)
      {
        v21 = v125;
        if (v22 < v125)
        {
          goto LABEL_132;
        }

        if (v125 >= v22)
        {
          v9 = v133;
          v20 = v122;
          v8 = v143;
          v5 = v127;
        }

        else
        {
          if (v33 >= v9)
          {
            v45 = v9;
          }

          else
          {
            v45 = v33;
          }

          v46 = v137 * (v45 - 1);
          v47 = v137 * v45;
          v48 = v125 * v137;
          v49 = v22;
          v50 = v125;
          v5 = v127;
          do
          {
            if (v50 != --v49)
            {
              v127 = v5;
              v51 = *v134;
              if (!*v134)
              {
                goto LABEL_139;
              }

              a4 = &v51[v48];
              v52 = v143;
              v135 = *v138;
              (v135)(v126, &v51[v48], v143);
              v53 = v48 < v46 || a4 >= &v51[v47];
              if (v53)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != v46)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              (v135)(&v51[v46], v126, v52);
              v5 = v127;
              v21 = v125;
            }

            ++v50;
            v46 -= v137;
            v47 -= v137;
            v48 += v137;
          }

          while (v50 < v49);
          v9 = v133;
          v20 = v122;
          v8 = v143;
        }
      }

      else
      {
        v9 = v133;
        v20 = v122;
        v8 = v143;
        v5 = v127;
        v21 = v125;
      }
    }

    v54 = v134[1];
    if (v22 < v54)
    {
      if (__OFSUB__(v22, v21))
      {
        goto LABEL_131;
      }

      if (v22 - v21 < v121)
      {
        break;
      }
    }

LABEL_47:
    if (v22 < v21)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458A358();
      v20 = v110;
    }

    v70 = *(v20 + 2);
    a4 = v70 + 1;
    if (v70 >= *(v20 + 3) >> 1)
    {
      sub_1C458A358();
      v20 = v111;
    }

    *(v20 + 2) = a4;
    v71 = v20 + 32;
    v72 = &v20[16 * v70 + 32];
    *v72 = v21;
    *(v72 + 1) = v22;
    v137 = *v123;
    if (!v137)
    {
      goto LABEL_140;
    }

    v132 = v22;
    if (v70)
    {
      while (1)
      {
        v73 = a4 - 1;
        v74 = &v71[16 * a4 - 16];
        v75 = &v20[16 * a4];
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v76 = *(v20 + 4);
          v77 = *(v20 + 5);
          v86 = __OFSUB__(v77, v76);
          v78 = v77 - v76;
          v79 = v86;
LABEL_67:
          if (v79)
          {
            goto LABEL_117;
          }

          v91 = *v75;
          v90 = *(v75 + 1);
          v92 = __OFSUB__(v90, v91);
          v93 = v90 - v91;
          v94 = v92;
          if (v92)
          {
            goto LABEL_120;
          }

          v95 = *(v74 + 1);
          v96 = v95 - *v74;
          if (__OFSUB__(v95, *v74))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v93, v96))
          {
            goto LABEL_125;
          }

          if (v93 + v96 >= v78)
          {
            if (v78 < v96)
            {
              v73 = a4 - 2;
            }

            goto LABEL_89;
          }

          goto LABEL_82;
        }

        if (a4 < 2)
        {
          goto LABEL_119;
        }

        v98 = *v75;
        v97 = *(v75 + 1);
        v86 = __OFSUB__(v97, v98);
        v93 = v97 - v98;
        v94 = v86;
LABEL_82:
        if (v94)
        {
          goto LABEL_122;
        }

        v100 = *v74;
        v99 = *(v74 + 1);
        v86 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v86)
        {
          goto LABEL_124;
        }

        if (v101 < v93)
        {
          goto LABEL_96;
        }

LABEL_89:
        if (v73 - 1 >= a4)
        {
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
          goto LABEL_134;
        }

        if (!*v134)
        {
          goto LABEL_137;
        }

        v105 = v20;
        v106 = &v71[16 * v73 - 16];
        a4 = *v106;
        v107 = &v71[16 * v73];
        v108 = *(v107 + 1);
        sub_1C4AE2920(&(*v134)[v9[9] * *v106], &(*v134)[v9[9] * *v107], &(*v134)[v9[9] * v108], v137);
        if (v5)
        {
          goto LABEL_109;
        }

        if (v108 < a4)
        {
          goto LABEL_112;
        }

        v9 = *(v105 + 2);
        if (v73 > v9)
        {
          goto LABEL_113;
        }

        *v106 = a4;
        v106[1] = v108;
        if (v73 >= v9)
        {
          goto LABEL_114;
        }

        a4 = v9 - 1;
        sub_1C461950C(v107 + 16, v9 - v73 - 1, &v71[16 * v73]);
        v20 = v105;
        *(v105 + 2) = v9 - 1;
        v109 = v9 > 2;
        v9 = v133;
        if (!v109)
        {
          goto LABEL_96;
        }
      }

      v80 = &v71[16 * a4];
      v81 = *(v80 - 8);
      v82 = *(v80 - 7);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_115;
      }

      v85 = *(v80 - 6);
      v84 = *(v80 - 5);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_116;
      }

      v87 = *(v75 + 1);
      v88 = v87 - *v75;
      if (__OFSUB__(v87, *v75))
      {
        goto LABEL_118;
      }

      v86 = __OFADD__(v78, v88);
      v89 = v78 + v88;
      if (v86)
      {
        goto LABEL_121;
      }

      if (v89 >= v83)
      {
        v103 = *v74;
        v102 = *(v74 + 1);
        v86 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v86)
        {
          goto LABEL_129;
        }

        if (v78 < v104)
        {
          v73 = a4 - 2;
        }

        goto LABEL_89;
      }

      goto LABEL_67;
    }

LABEL_96:
    v18 = v134[1];
    v19 = v132;
    v8 = v143;
    if (v132 >= v18)
    {
      goto LABEL_99;
    }
  }

  v55 = (v21 + v121);
  if (__OFADD__(v21, v121))
  {
    goto LABEL_133;
  }

  if (v55 >= v54)
  {
    v55 = v134[1];
  }

  if (v55 < v21)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v22 == v55)
  {
    goto LABEL_47;
  }

  v122 = v20;
  v127 = v5;
  v128 = v55;
  v56 = *v134;
  v57 = v9[9];
  v137 = v9[2];
  v58 = &v56[v57 * (v22 - 1)];
  v59 = -v57;
  v60 = (v21 - v22);
  v135 = v56;
  v124 = v57;
  a4 = &v56[v22 * v57];
LABEL_40:
  v131 = v58;
  v132 = v22;
  v129 = a4;
  v130 = v60;
  v61 = v58;
  while (1)
  {
    v62 = v141;
    v63 = v137;
    (v137)(v141, a4, v8);
    v64 = v142;
    v63(v142, v61, v143);
    sub_1C4AE2EAC(&unk_1EDDFA1B0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9828]);
    v65 = sub_1C4F01068();
    v66 = *v139;
    v67 = v64;
    v8 = v143;
    (*v139)(v67, v143);
    v66(v62, v8);
    if ((v65 & 1) == 0)
    {
LABEL_45:
      v22 = v132 + 1;
      v58 = &v131[v124];
      v60 = v130 - 1;
      a4 = v129 + v124;
      if ((v132 + 1) == v128)
      {
        v22 = v128;
        v5 = v127;
        v9 = v133;
        v20 = v122;
        v21 = v125;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v135)
    {
      break;
    }

    v68 = *v138;
    v69 = v136;
    (*v138)(v136, a4, v8);
    swift_arrayInitWithTakeFrontToBack();
    v68(v61, v69, v8);
    v61 += v59;
    a4 += v59;
    v53 = __CFADD__(v60++, 1);
    if (v53)
    {
      goto LABEL_45;
    }
  }

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
}

void sub_1C4AE2920(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v62 = a4;
  v7 = sub_1C4EFF0C8();
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v50 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v14)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v17 = (a2 - a1) / v13;
  v65 = a1;
  v64 = v62;
  v57 = (v10 + 8);
  v58 = (v10 + 16);
  v18 = v13;
  v19 = v15 / v13;
  if (v17 >= v15 / v13)
  {
    v34 = v62;
    sub_1C44E7364(a2, v15 / v13, v62);
    v35 = v34 + v19 * v18;
    v36 = -v18;
    v37 = v35;
    v53 = -v18;
    v54 = a1;
LABEL_36:
    v55 = a2;
    v56 = a2 + v36;
    v38 = a3;
    v51 = v37;
    while (1)
    {
      if (v35 <= v62)
      {
        v65 = a2;
        v63 = v37;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v52 = v37;
      v61 = v38 + v36;
      v39 = v35 + v36;
      v40 = v35;
      v41 = v59;
      v42 = *v58;
      (*v58)(v59, v39, v7);
      v43 = v60;
      v42(v60, v56, v7);
      sub_1C4AE2EAC(&unk_1EDDFA1B0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9828]);
      LOBYTE(v42) = sub_1C4F01068();
      v44 = *v57;
      (*v57)(v43, v7);
      v44(v41, v7);
      if (v42)
      {
        v35 = v40;
        a3 = v61;
        if (v38 < v55 || v61 >= v55)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v52;
          v36 = v53;
          a1 = v54;
        }

        else
        {
          v48 = v52;
          v36 = v53;
          v37 = v52;
          v14 = v38 == v55;
          v49 = v56;
          a2 = v56;
          a1 = v54;
          if (!v14)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v49;
            v37 = v48;
          }
        }

        goto LABEL_36;
      }

      v45 = v61;
      if (v38 < v40 || v61 >= v40)
      {
        swift_arrayInitWithTakeFrontToBack();
        v38 = v45;
        v35 = v39;
        v37 = v39;
        a1 = v54;
        a2 = v55;
        v36 = v53;
      }

      else
      {
        v37 = v39;
        v14 = v40 == v38;
        v38 = v61;
        v35 = v39;
        a1 = v54;
        a2 = v55;
        v36 = v53;
        if (!v14)
        {
          swift_arrayInitWithTakeBackToFront();
          v38 = v45;
          v35 = v39;
          v37 = v39;
        }
      }
    }

    v65 = a2;
    v63 = v51;
  }

  else
  {
    v20 = v62;
    sub_1C44E7364(a1, (a2 - a1) / v13, v62);
    v56 = v20 + v17 * v18;
    v63 = v56;
    v21 = v18;
    v61 = a3;
    while (v62 < v56 && a2 < a3)
    {
      v23 = a1;
      v24 = v59;
      v25 = *v58;
      (*v58)(v59, a2, v7);
      v26 = a2;
      v27 = v60;
      v25(v60, v62, v7);
      sub_1C4AE2EAC(&unk_1EDDFA1B0, MEMORY[0x1E69A9810], MEMORY[0x1E69A9828]);
      v28 = sub_1C4F01068();
      v29 = *v57;
      (*v57)(v27, v7);
      v29(v24, v7);
      if (v28)
      {
        a2 = v26 + v21;
        v30 = v23;
        if (v23 < v26 || v23 >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v61;
        }

        else
        {
          a3 = v61;
          if (v23 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        v32 = v62 + v21;
        v30 = v23;
        if (v23 < v62 || v23 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v26;
          a3 = v61;
        }

        else
        {
          a3 = v61;
          a2 = v26;
          if (v23 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v64 = v32;
        v62 = v32;
      }

      a1 = v30 + v21;
      v65 = a1;
    }
  }

LABEL_58:
  sub_1C4BEB414(&v65, &v64, &v63);
}

uint64_t sub_1C4AE2EAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ResolverKeyValueStore.__allocating_init(config:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ResolverKeyValueStore.init(config:)(a1);
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ResolverKeyValueStore.promoteStore()()
{
  v0._object = 0x80000001C4FB0C10;
  v0._countAndFlagsBits = 0xD000000000000017;
  KeyValueStore.copyAllKeyValues(to:clearCurrentDomain:clearNewDomain:)(v0, 1, 1);
}

void *ResolverKeyValueStore.init(config:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - v9;
  sub_1C44098F0(a1, v14 - v9);
  type metadata accessor for KeyValueStore(0);
  swift_allocObject();
  v11 = KeyValueStore.init(config:domain:)(v10, 0xD000000000000017, 0x80000001C4FB0C10);
  if (v2)
  {
    sub_1C4467948(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 24) = v11;
    sub_1C44098F0(a1, v7);
    swift_allocObject();
    v12 = KeyValueStore.init(config:domain:)(v7, 0xD000000000000023, 0x80000001C4FB0FB0);
    sub_1C4467948(a1);
    *(v3 + 16) = v12;
  }

  return v3;
}

uint64_t ResolverKeyValueStore.deinit()
{

  return v0;
}

uint64_t ResolverKeyValueStore.__deallocating_deinit()
{
  ResolverKeyValueStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AE3260(uint64_t a1, void (*a2)(uint64_t (*)(), void *))
{
  v4 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v5 + 8))(v7, v4);
  if (!v2)
  {
    sub_1C4BC76D8();
    v18 = v9;
    v11 = v10;
    type metadata accessor for EscapeBlockMonitor();
    v12 = swift_allocObject();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v12;
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = v18;
    v16[5] = v11;

    a2(sub_1C4AE5484, v16);

    swift_setDeallocating();
    return sub_1C49E1628();
  }

  return result;
}

uint64_t sub_1C4AE34A0(uint64_t a1, void (*a2)(uint64_t (*)(), void *))
{
  v4 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v5 + 8))(v7, v4);
  if (!v2)
  {
    sub_1C4BC77A4();
    v18 = v9;
    v11 = v10;
    type metadata accessor for EscapeBlockMonitor();
    v12 = swift_allocObject();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v12;
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = v18;
    v16[5] = v11;

    a2(sub_1C4AE52C8, v16);

    swift_setDeallocating();
    return sub_1C49E1628();
  }

  return result;
}

uint64_t sub_1C4AE36E0(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10)
{
  v30 = a8;
  v31 = a3;
  v32 = a2;
  v15 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v28 - v17;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v16 + 8))(v18, v15);
  if (!v10)
  {
    v28[1] = a9;
    v29 = a10;
    v20 = v30(a4, a5, a6, a7);
    v22 = v21;
    type metadata accessor for EscapeBlockMonitor();
    v23 = swift_allocObject();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v23;
    sub_1C43FBDBC();
    v25 = swift_allocObject();
    swift_weakInit();
    sub_1C43FBDBC();
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    v27[2] = v25;
    v27[3] = v26;
    v27[4] = v20;
    v27[5] = v22;

    v32(v29, v27);

    swift_setDeallocating();
    return sub_1C49E1628();
  }

  return result;
}

uint64_t sub_1C4AE3928(uint64_t a1, void (*a2)(uint64_t (*)(), void *))
{
  v4 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v5 + 8))(v7, v4);
  if (!v2)
  {
    sub_1C4BC7950();
    v18 = v9;
    v11 = v10;
    type metadata accessor for EscapeBlockMonitor();
    v12 = swift_allocObject();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v12;
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = v18;
    v16[5] = v11;

    a2(sub_1C4AE5484, v16);

    swift_setDeallocating();
    return sub_1C49E1628();
  }

  return result;
}

uint64_t sub_1C4AE3B68(uint64_t a1, void (*a2)(uint64_t (*)(), void *))
{
  v4 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v5 + 8))(v7, v4);
  if (!v2)
  {
    sub_1C4BC7950();
    v18 = v9;
    v11 = v10;
    type metadata accessor for EscapeBlockMonitor();
    v12 = swift_allocObject();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v12;
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = v18;
    v16[5] = v11;

    a2(sub_1C4AE5484, v16);

    swift_setDeallocating();
    return sub_1C49E1628();
  }

  return result;
}

uint64_t sub_1C4AE3DA8(uint64_t a1, void (*a2)(uint64_t (*)(), void *))
{
  v4 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  sub_1C4EFBD08();
  result = (*(v5 + 8))(v7, v4);
  if (!v2)
  {
    sub_1C4BC7A14();
    v18 = v9;
    v11 = v10;
    type metadata accessor for EscapeBlockMonitor();
    v12 = swift_allocObject();
    sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C4F0FCC0;
    *(inited + 32) = v12;
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v16[4] = v18;
    v16[5] = v11;

    a2(sub_1C4AE5484, v16);

    swift_setDeallocating();
    return sub_1C49E1628();
  }

  return result;
}

uint64_t sub_1C4AE3FF0(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2, sizeof(__dst));
  v6[2] = __dst;
  v6[3] = a1;
  v6[4] = a2;

  sub_1C446C37C(sub_1C4AE53C8, v6);
}

uint64_t sub_1C4AE407C(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2, sizeof(__dst));
  v6[2] = __dst;
  v6[3] = a1;
  v6[4] = a2;

  sub_1C446C37C(sub_1C4AE52AC, v6);
}

uint64_t sub_1C4AE4108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v9[2] = v10;
  v9[3] = a1;
  v9[4] = a2;

  sub_1C446C37C(a7, v9);
}

uint64_t sub_1C4AE4164(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;

  sub_1C446C37C(sub_1C4AE5410, v3);
}

uint64_t sub_1C4AE41C8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 32);
  v3 = *(v2 + 16);
  v6[0] = *v2;
  v6[1] = v3;
  v5[2] = v6;
  v5[3] = a1;
  v5[4] = a2;

  sub_1C446C37C(sub_1C4AE53AC, v5);
}

uint64_t sub_1C4AE4238(uint64_t a1, uint64_t a2)
{
  v3[3] = a1;
  v3[4] = a2;

  sub_1C446C37C(sub_1C4AE53E4, v3);
}

uint64_t sub_1C4AE4448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F02248();

  strcpy(v17, "INSERT INTO ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  v5 = (*(a3 + 8))(a1, a3);
  MEMORY[0x1C6940010](v5);

  MEMORY[0x1C6940010](0x205345554C415620, 0xE900000000000028);
  v6 = *((*(a3 + 24))(a1, a3) + 16);
  if (v6)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v6, 0);
    v7 = *(v16 + 16);
    v8 = 16 * v7;
    do
    {
      v9 = *(v16 + 24);
      v10 = v7 + 1;
      if (v7 >= v9 >> 1)
      {
        sub_1C44CD9C0(v9 > 1, v7 + 1, 1);
      }

      *(v16 + 16) = v10;
      v11 = v16 + v8;
      *(v11 + 32) = 63;
      *(v11 + 40) = 0xE100000000000000;
      v8 += 16;
      v7 = v10;
      --v6;
    }

    while (v6);
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
  v12 = sub_1C4F01048();
  v14 = v13;

  MEMORY[0x1C6940010](v12, v14);

  MEMORY[0x1C6940010](41, 0xE100000000000000);
  return v17[0];
}

uint64_t sub_1C4AE49C4(uint64_t a1, void (*a2)(uint64_t (*)(), void *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C4AE4448(a4, a2, a6);
  v8 = sub_1C4EFBE98();
  if (v6)
  {
  }

  v10 = v8;

  type metadata accessor for EscapeBlockMonitor();
  v11 = swift_allocObject();
  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0FCC0;
  *(inited + 32) = v11;
  sub_1C43FBDBC();
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1C43FBDBC();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = v14;
  v15[4] = v10;

  a2(sub_1C4AE5180, v15);

  swift_setDeallocating();
  return sub_1C49E1628();
}

uint64_t sub_1C4AE4B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-v5];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1C4811948(a1);
      sub_1C4EFB788();
      sub_1C4EFC0A8();
      sub_1C4AE5118(v6);
    }
  }

  if (qword_1EDDFECD0 != -1)
  {
    swift_once();
  }

  v8 = sub_1C4F00978();
  sub_1C442B738(v8, qword_1EDE2DF70);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CE8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v16[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1C441D828(0xD000000000000106, 0x80000001C4FB10B0, v16);
    _os_log_impl(&dword_1C43F8000, v9, v10, "%s", v11, 0xCu);
    sub_1C440962C(v12);
    MEMORY[0x1C6942830](v12, -1, -1);
    MEMORY[0x1C6942830](v11, -1, -1);
  }

  sub_1C450B034();
  swift_allocError();
  *v13 = 0;
  *(v13 + 8) = 0xE000000000000000;
  *(v13 + 16) = 0xD000000000000106;
  *(v13 + 24) = 0x80000001C4FB10B0;
  v14 = v16[1];
  *(v13 + 32) = v16[0];
  *(v13 + 48) = v14;
  *(v13 + 64) = 9;
  return swift_willThrow();
}

uint64_t sub_1C4AE4F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_1EDDFFAF0 != -1)
  {
    swift_once();
  }

  v12 = sub_1C4F00978();
  sub_1C442B738(v12, qword_1EDE2E088);
  v13 = sub_1C4F00968();
  v14 = sub_1C4F01CC8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1C43F8000, v13, v14, "RowUpdatableDatabaseTable: insert with callback", v15, 2u);
    MEMORY[0x1C6942830](v15, -1, -1);
  }

  (*(a5 + 16))(a3, a5);

  MEMORY[0x1EEE9AC00](v16);
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = v6;
  v18[6] = a1;
  v18[7] = a2;
  sub_1C446C37C(sub_1C4AE519C, v18);
}

uint64_t sub_1C4AE5118(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4AE5378(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(), void *))
{
  v3 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a2 + 32);
  return sub_1C4AE4F18(a1, v5, a3);
}

uint64_t sub_1C4AE543C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t RTAddress.rtSubPremises.getter()
{
  if (!sub_1C4AE58A4(v0))
  {
    return 0;
  }

  sub_1C4813140();
  v2 = v1;

  return v2;
}

void sub_1C4AE5508()
{
  v1 = [v0 identifier];
  sub_1C4EF9D18();
}

uint64_t sub_1C4AE58A4(void *a1)
{
  v1 = [a1 subPremises];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C4AE5A08();
  v3 = sub_1C4F01678();

  return v3;
}

unint64_t sub_1C4AE5A08()
{
  result = qword_1EC0BDAE8;
  if (!qword_1EC0BDAE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0BDAE8);
  }

  return result;
}

uint64_t RTLocationOfInterestType.description.getter(uint64_t a1)
{
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1802661751;
  switch(a1)
  {
    case -1:
      sub_1C441A3C4();
      break;
    case 0:
      v6 = 1701670760;
      break;
    case 1:
      return v6;
    case 2:
      v6 = 0x6C6F6F686373;
      break;
    case 3:
      v6 = 7174503;
      break;
    default:
      sub_1C4F00148();
      v6 = v5;
      v7 = sub_1C4F00968();
      v8 = sub_1C4F01CE8();
      os_log_type_enabled(v7, v8);
      sub_1C441A3C4();
      if (v9)
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v16 = a1;
        v17 = v11;
        *v10 = 136315138;
        type metadata accessor for RTLocationOfInterestType(0);
        v12 = sub_1C4F01198();
        v14 = sub_1C441D828(v12, v13, &v17);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_1C43F8000, v7, v8, "RTLocationOfInterestType has unexpected case: %s", v10, 0xCu);
        sub_1C440962C(v11);
        MEMORY[0x1C6942830](v11, -1, -1);
        MEMORY[0x1C6942830](v10, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      break;
  }

  return v6;
}

uint64_t sub_1C4AE5DA0@<X0>(SEL *a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = [v5 *a1];
  result = sub_1C4461BB8(0, a2, a3);
  a5[3] = result;
  a5[4] = a4;
  *a5 = v10;
  return result;
}

uint64_t RTLocationOfInterest.rtVisits.getter()
{
  v1 = [v0 visits];
  sub_1C4461BB8(0, &qword_1EC0BDAE0, 0x1E6999060);
  sub_1C4F01678();

  sub_1C4813290();
  v3 = v2;

  return v3;
}

unint64_t RTLocationOfInterestVisit.rtLocation.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 location];
  result = sub_1C4AE6128();
  a1[3] = result;
  a1[4] = &protocol witness table for RTLocation;
  *a1 = v3;
  return result;
}

unint64_t sub_1C4AE6128()
{
  result = qword_1EDDF05B0;
  if (!qword_1EDDF05B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDF05B0);
  }

  return result;
}

void sub_1C4AE6250(SEL *a1, void (*a2)(void))
{
  v4 = [v2 *a1];
  a2();
}

unint64_t RTMapItem.rtAddress.getter@<X0>(void *a1@<X8>)
{
  v3 = [v1 address];
  result = sub_1C4AE63B8();
  a1[3] = result;
  a1[4] = &protocol witness table for RTAddress;
  *a1 = v3;
  return result;
}

unint64_t sub_1C4AE63B8()
{
  result = qword_1EDDF0358;
  if (!qword_1EDDF0358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDF0358);
  }

  return result;
}

id RTPlaceInference.rtMapItem.getter@<X0>(void *a1@<X8>)
{
  result = [v1 mapItem];
  v4 = result;
  if (result)
  {
    result = sub_1C4AE6540();
    v5 = &protocol witness table for RTMapItem;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

unint64_t sub_1C4AE6540()
{
  result = qword_1EDDF0350;
  if (!qword_1EDDF0350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDF0350);
  }

  return result;
}

uint64_t sub_1C4AE662C@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 loiIdentifier];
  if (v3)
  {
    v4 = v3;
    sub_1C4EF9D18();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C4EF9D38();

  return sub_1C440BAA8(a1, v5, 1, v6);
}

uint64_t RTPlaceInferenceUserSpecificPlaceType.description.getter(uint64_t a1)
{
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1802661751;
  switch(a1)
  {
    case 0:
      sub_1C441A3C4();
      break;
    case 1:
      v6 = 1701670760;
      break;
    case 2:
      return v6;
    case 3:
      v6 = 0x6C6F6F686373;
      break;
    case 4:
      v6 = 7174503;
      break;
    default:
      sub_1C4F00148();
      v6 = v5;
      v7 = sub_1C4F00968();
      v8 = sub_1C4F01CE8();
      os_log_type_enabled(v7, v8);
      sub_1C441A3C4();
      if (v9)
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v16 = a1;
        v17 = v11;
        *v10 = 136315138;
        type metadata accessor for RTPlaceInferenceUserSpecificPlaceType(0);
        v12 = sub_1C4F01198();
        v14 = sub_1C441D828(v12, v13, &v17);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_1C43F8000, v7, v8, "RTPlaceInferenceUserSpecificPlaceType has unexpected case: %s", v10, 0xCu);
        sub_1C440962C(v11);
        MEMORY[0x1C6942830](v11, -1, -1);
        MEMORY[0x1C6942830](v10, -1, -1);
      }

      (*(v3 + 8))(v5, v2);
      break;
  }

  return v6;
}

uint64_t sub_1C4AE6944(void *a1)
{
  v1 = [a1 preferredName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C4F01138();

  return v3;
}

id RTVisit.rtLocation.getter@<X0>(void *a1@<X8>)
{
  result = [v1 location];
  v4 = result;
  if (result)
  {
    result = sub_1C4461BB8(0, &qword_1EDDF05B0, 0x1E6999050);
    v5 = &protocol witness table for RTLocation;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

id RTVisit.inferredLocation.getter@<X0>(void *a1@<X8>)
{
  result = [v1 placeInference];
  v4 = result;
  if (result)
  {
    result = sub_1C4461BB8(0, &qword_1EDDF0448, 0x1E6999070);
    v5 = &protocol witness table for RTPlaceInference;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

uint64_t sub_1C4AE6B94(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 2);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal____lazy_storage___featureNames) = 0;
  *(v3 + 16) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = *(a1 + 24);
  sub_1C463F300(a2, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal_config);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal_store) = a3;
  return v3;
}

uint64_t sub_1C4AE6C00()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal____lazy_storage___featureNames;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal____lazy_storage___featureNames))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal____lazy_storage___featureNames);
  }

  else
  {
    sub_1C448DE08();
    v2 = v3;
    *(v0 + v1) = v3;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v2;
}

uint64_t sub_1C4AE6C6C()
{
  v151 = type metadata accessor for GraphTriple(0);
  sub_1C43FCDF8();
  v133 = v1;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&qword_1EC0BAA00, &unk_1C4F17400);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v139 = v116 - v6;
  v7 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v143 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBFDC();
  v137 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v136 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v145 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v17 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v116 - v19;
  v138 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v142 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v141 = v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v116 - v25;
  v27 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  v149 = v31;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBF38();
  v129 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = v116 - v35;
  v134 = v0;
  v135 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal_store);
  sub_1C486DFC0();
  sub_1C4868198();

  if (sub_1C44157D4(v26, 1, v27) == 1)
  {
    return sub_1C4420C3C(v26, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  v146 = *(v29 + 32);
  v147 = v29 + 32;
  v146(v36, v26, v27);
  sub_1C456902C(&qword_1EC0B8EC8, &unk_1C4F0E950);
  v38 = *(v29 + 72);
  v39 = *(v29 + 80);
  v130 = v29;
  v40 = (v39 + 32) & ~v39;
  v154 = v38;
  v41 = swift_allocObject();
  v131 = xmmword_1C4F0D130;
  *(v41 + 16) = xmmword_1C4F0D130;
  v42 = *(v29 + 16);
  v148 = v40;
  v150 = v27;
  v152 = v42;
  v153 = v29 + 16;
  v42(v41 + v40, v36, v27);
  sub_1C4D51ABC();
  v128 = v43;
  v44 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  v45 = *(sub_1C4EFEEF8() - 8);
  v46 = *(v45 + 80);
  v47 = (v46 + 32) & ~v46;
  v121 = *(v45 + 72);
  v120 = v46;
  v123 = v44;
  v48 = swift_allocObject();
  sub_1C44322E0(v48);
  v122 = v47;
  sub_1C4EFED68();
  sub_1C4D504A4();
  v127 = v49;
  v140 = v20;
  v50 = *MEMORY[0x1E69A95C0];
  v51 = v143;
  v132 = v36;
  v52 = v7;
  v54 = v143 + 104;
  v53 = *(v143 + 104);
  sub_1C43FC2F4();
  v53();
  v55 = v17;
  sub_1C43FC2F4();
  v53();
  sub_1C43FC2F4();
  v53();
  v56 = v136;
  sub_1C43FC2F4();
  v53();
  v57 = v137;
  v125 = v50;
  sub_1C43FC2F4();
  v126 = v54;
  v124 = v53;
  v53();
  v58 = v145;
  sub_1C4EFDCD8();

  v59 = *(v51 + 8);
  v59(v57, v52);
  v59(v56, v52);
  v59(v58, v52);
  v128 = v55;
  v59(v55, v52);
  v127 = v59;
  v59(v140, v52);
  v60 = sub_1C4EFF8F8();
  v61 = v139;
  v119 = v60;
  sub_1C440BAA8(v139, 1, 1, v60);
  v62 = v141;
  v63 = sub_1C498DB80();
  sub_1C4420C3C(v61, &qword_1EC0BAA00, &unk_1C4F17400);
  v64 = *(v142 + 8);
  v142 += 8;
  v118 = v64;
  v64(v62, v138);
  v65 = *(v63 + 16);
  v66 = v52;
  v143 = v51 + 8;
  if (v65)
  {
    v117 = v52;
    v155[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v65, 0);
    v67 = v155[0];
    v68 = (*(v133 + 80) + 32) & ~*(v133 + 80);
    v116[1] = v63;
    v69 = v63 + v68;
    v70 = *(v133 + 72);
    do
    {
      sub_1C449EE28(v69, v4, type metadata accessor for GraphTriple);
      v71 = &v4[v151[8]];
      v73 = *v71;
      v72 = *(v71 + 1);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C449F17C(v4, type metadata accessor for GraphTriple);
      v155[0] = v67;
      v75 = *(v67 + 16);
      v74 = *(v67 + 24);
      if (v75 >= v74 >> 1)
      {
        sub_1C44CD9C0(v74 > 1, v75 + 1, 1);
        v67 = v155[0];
      }

      *(v67 + 16) = v75 + 1;
      v76 = v67 + 16 * v75;
      *(v76 + 32) = v73;
      *(v76 + 40) = v72;
      v69 += v70;
      --v65;
    }

    while (v65);

    v77 = v132;
    v66 = v117;
  }

  else
  {

    v67 = MEMORY[0x1E69E7CC0];
    v77 = v132;
  }

  v78 = v128;
  if (*(v67 + 16))
  {
    v79 = swift_allocObject();
    sub_1C44322E0(v79);
    sub_1C4EFED68();
    sub_1C4D504A4();
    v151 = v80;
    *&v131 = sub_1C4499940();
    sub_1C440AA08();
    v81 = v124;
    v124();
    sub_1C440AA08();
    v81();
    sub_1C440AA08();
    v81();
    v82 = v136;
    sub_1C440AA08();
    v81();
    v83 = v78;
    v84 = v137;
    sub_1C440AA08();
    v81();
    v85 = v83;
    v86 = v141;
    v87 = v145;
    sub_1C4EFDCD8();

    v88 = v127;
    v127(v84, v66);
    v88(v82, v66);
    v88(v87, v66);
    v88(v85, v66);
    v88(v140, v66);
    v89 = v139;
    sub_1C440BAA8(v139, 1, 1, v119);
    v90 = sub_1C498DB80();
    sub_1C4420C3C(v89, &qword_1EC0BAA00, &unk_1C4F17400);
    v118(v86, v138);
    v91 = *(v90 + 2);
    if (v91)
    {
      v151 = v4;
      v155[0] = MEMORY[0x1E69E7CC0];
      sub_1C459D178();
      v92 = v155[0];
      v93 = *(v133 + 80);
      v145 = v90;
      v94 = &v90[(v93 + 32) & ~v93];
      v95 = *(v133 + 72);
      v96 = v150;
      v97 = v129;
      do
      {
        v98 = v151;
        sub_1C449EE28(v94, v151, type metadata accessor for GraphTriple);
        v152(v97, v98, v96);
        sub_1C449F17C(v98, type metadata accessor for GraphTriple);
        v155[0] = v92;
        v99 = *(v92 + 16);
        v90 = (v99 + 1);
        if (v99 >= *(v92 + 24) >> 1)
        {
          sub_1C459D178();
          v92 = v155[0];
        }

        *(v92 + 16) = v90;
        v146(v148 + v92 + v99 * v154, v97, v96);
        v94 += v95;
        --v91;
      }

      while (v91);

      sub_1C4406DE0();
      v100 = v92;
    }

    else
    {

      v100 = MEMORY[0x1E69E7CC0];
      v96 = v150;
      sub_1C4406DE0();
    }

    v155[0] = MEMORY[0x10];
    v155[1] = MEMORY[0x18];
    v155[2] = MEMORY[0x20];
    v155[3] = MEMORY[0x28];
    v155[4] = MEMORY[0x30];
    v101 = *(v100 + 16);
    if (v101)
    {
      v156 = MEMORY[0x1E69E7CC0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C459D810();
      v102 = v156;
      v151 = objc_opt_self();
      v91 = v148 + v100;
      v147 = v100;
      v148 = (v90 + 8);
      do
      {
        v103 = v149;
        v152(v149, v91, v96);
        v104 = sub_1C4EFF048();
        v106 = v105;
        v90 = [v151 featureValueWithInt64_];
        (*v148)(v103, v96);
        v156 = v102;
        v107 = *(v102 + 16);
        if (v107 >= *(v102 + 24) >> 1)
        {
          sub_1C459D810();
          v102 = v156;
        }

        *(v102 + 16) = v107 + 1;
        v108 = v102 + 40 * v107;
        strcpy((v108 + 32), "sameEmployer");
        *(v108 + 45) = 0;
        *(v108 + 46) = -5120;
        *(v108 + 48) = v104;
        *(v108 + 56) = v106;
        *(v108 + 64) = v90;
        v91 += v154;
        --v101;
        v96 = v150;
      }

      while (v101);

      sub_1C4406DE0();
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    v109 = v144;
    sub_1C47D32C8();
    if (v109)
    {

      return (*(v90 + 1))(v132, v96);
    }

    else
    {

      if (qword_1EDDFECD0 != -1)
      {
        swift_once();
      }

      v110 = sub_1C4F00978();
      sub_1C442B738(v110, qword_1EDE2DF70);

      v111 = sub_1C4F00968();
      v112 = sub_1C4F01CB8();

      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = v90;
        v115 = swift_slowAlloc();
        v155[0] = v115;
        *v113 = 136315138;
        *(v113 + 4) = sub_1C441D828(*&v91[OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal_config], *&v91[OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal_config + 8], v155);
        _os_log_impl(&dword_1C43F8000, v111, v112, "SignalView %s: wrote features", v113, 0xCu);
        sub_1C440962C(v115);
        MEMORY[0x1C6942830](v115, -1, -1);
        MEMORY[0x1C6942830](v113, -1, -1);

        return v114[1](v132, v150);
      }

      else
      {

        return (*(v90 + 1))(v132, v150);
      }
    }
  }

  else
  {
    (*(v130 + 8))(v77, v150);
  }
}

uint64_t sub_1C4AE7BD8()
{

  sub_1C449F17C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore18SameEmployerSignal_config, _s10ViewConfigVMa);

  return v0;
}

uint64_t sub_1C4AE7C60()
{
  sub_1C4AE7BD8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SameEmployerSignal(uint64_t a1)
{
  result = qword_1EC0C3218;
  if (!qword_1EC0C3218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AE7D0C(uint64_t a1)
{
  result = _s10ViewConfigVMa(319);
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

uint64_t sub_1C4AE7DC0()
{
  sub_1C4AE6C6C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Daemon.confstr(_:)(uint64_t a1)
{
  sub_1C4EF9578();
  swift_allocObject();
  v4 = 0x40000000000;
  v5 = sub_1C4EF9548();
  sub_1C4AE87A0(&v4, 0);
  v5 |= 0x4000000000000000uLL;
  v2 = sub_1C4AE8354(&v4, a1);
  sub_1C4434000(v4, v5);
  return v2;
}

uint64_t sub_1C4AE7F3C@<X0>(char *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  result = confstr(a2, a1, 0x400uLL);
  if (result >= 1 && a1)
  {
    result = sub_1C4F01338();
    *a3 = result;
    a3[1] = v6;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t static Daemon.enterSandbox(identifier:macOSProfile:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4EFCE28();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = sub_1C4F00978();
  sub_1C43FCDF8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  sub_1C4F011C8();
  v20 = _set_user_dir_suffix();

  if (!v20)
  {
    sub_1C4F00148();
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CD8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C43F8000, v29, v30, "Sandbox: _set_user_dir_suffix returned nil", v31, 2u);
      MEMORY[0x1C6942830](v31, -1, -1);
    }

    (*(v13 + 8))(v16, v11);
    (*(v4 + 104))(v7, *MEMORY[0x1E69A9220], v2);
    goto LABEL_13;
  }

  v21 = static Daemon.confstr(_:)(65537);
  if (!v22 || (String.realpath.getter(v21, v22), v24 = v23, , !v24))
  {
    sub_1C4F00148();
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CD8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1C43F8000, v26, v27, "Sandbox: confstr(_CS_DARWIN_USER_TEMP_DIR) failed", v28, 2u);
      MEMORY[0x1C6942830](v28, -1, -1);
    }

    (*(v13 + 8))(v19, v11);
    (*(v4 + 104))(v10, *MEMORY[0x1E69A9218], v2);
LABEL_13:
    result = sub_1C4F000B8();
    __break(1u);
    return result;
  }
}

uint64_t String.realpath.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F011C8();
  v3 = realpath_DARWIN_EXTSN((v2 + 32), 0);

  if (!v3)
  {
    return 0;
  }

  v4 = sub_1C4F01338();
  MEMORY[0x1C6942830](v3, -1, -1);
  return v4;
}

uint64_t sub_1C4AE8354(uint64_t *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  v5 = v2;
  v6 = a2;
  switch(v3 >> 62)
  {
    case 1uLL:
      v12 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C4434000(v4, v3);
      *a1 = xmmword_1C4F4FDA0;
      sub_1C4434000(0, 0xC000000000000000);
      v13 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v4)
      {
        goto LABEL_23;
      }

      if (sub_1C4EF9538() && __OFSUB__(v4, sub_1C4EF9568()))
      {
        goto LABEL_24;
      }

      sub_1C4EF9578();
      swift_allocObject();
      v14 = sub_1C4EF9518();

      v12 = v14;
LABEL_16:
      if (v13 < v4)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v5 = sub_1C4AE86F4(v4, v4 >> 32, v12, v6);

      v11 = v12 | 0x4000000000000000;
      if (v2)
      {
        *a1 = v4;
        goto LABEL_19;
      }

      *a1 = v4;
      a1[1] = v11;
      break;
    case 2uLL:

      sub_1C4434000(v4, v3);
      v18 = v4;
      v19 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1C4F4FDA0;
      sub_1C4434000(0, 0xC000000000000000);
      sub_1C4EF9918();
      v9 = v19;
      v10 = sub_1C4AE86F4(*(v18 + 16), *(v18 + 24), v19, v6);
      if (v2)
      {
        v11 = v19 | 0x8000000000000000;
        *a1 = v18;
LABEL_19:
        a1[1] = v11;
      }

      else
      {
        v5 = v10;
        *a1 = v18;
        a1[1] = v9 | 0x8000000000000000;
      }

      break;
    case 3uLL:
      memset(v17, 0, 15);
      sub_1C4AE7F3C(v17, a2, &v18);
      if (!v2)
      {
        return v18;
      }

      return v5;
    default:
      v5 = v4 >> 40;
      v16 = a2;
      sub_1C4434000(v4, v3);
      *v17 = v4;
      *&v17[8] = v3;
      v17[10] = BYTE2(v3);
      v17[11] = BYTE3(v3);
      v17[12] = BYTE4(v3);
      v17[13] = BYTE5(v3);
      v17[14] = BYTE6(v3);
      sub_1C4AE7F3C(v17, v16, &v18);
      if (!v2)
      {
        v5 = v18;
      }

      v8 = *&v17[8] | ((*&v17[12] | (v17[14] << 16)) << 32);
      *a1 = *v17;
      a1[1] = v8;
      return v5;
  }

  return v5;
}

uint64_t sub_1C4AE86F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = sub_1C4EF9538();
  if (!result)
  {
    goto LABEL_9;
  }

  v9 = result;
  result = sub_1C4EF9568();
  v10 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1C4EF9558();
  result = sub_1C4AE7F3C((v9 + v10), a4, &v11);
  if (!v4)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1C4AE87A0(int *a1, int a2)
{
  result = sub_1C4EF9958();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1C4EF9538();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1C4EF9568();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_1C4EF9558();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

uint64_t sub_1C4AE8848(uint64_t a1)
{
  v2 = type metadata accessor for ScheduledTasks.AutonamingMetricsLoggingRunner(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v45[-v5 - 8];
  v7 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45[-v9 - 8];
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v11 = sub_1C4F00978();
  sub_1C43FCEE8(v11, qword_1EDE2DE10);
  v12 = sub_1C4F00968();
  v13 = sub_1C4F01CF8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = sub_1C43FCED0();
    *v14 = 0;
    _os_log_impl(&dword_1C43F8000, v12, v13, "IntelligencePlatformTasks: registering all tasks.", v14, 2u);
    sub_1C43FBE2C();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C43FCEE8(v7, qword_1EDE2DD70);
  sub_1C4431194(a1, v10, type metadata accessor for Configuration);
  v15 = type metadata accessor for Configuration(0);
  v16 = sub_1C440BAA8(v10, 0, 1, v15);
  sub_1C445FE5C(v16, v45);
  sub_1C45A6EE0(v10, v12);
  swift_endAccess();
  type metadata accessor for SimpleScheduledTask();
  sub_1C44149FC();
  v17 = swift_allocObject();
  sub_1C4AF186C(0xD000000000000027, 0x80000001C4FB1580, v17, &type metadata for ScheduledTasks.AssetRegistryOverrideStoreWeeklyCleanupRunner, &off_1F43FAFC0, v18, v19, v20);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v21 = swift_allocObject();
  sub_1C4AF186C(0xD00000000000001BLL, 0x80000001C4FB15B0, v21, &type metadata for ScheduledTasks.GlobalKnowledgeTwoHourPruneRunner, &off_1F43FAFE0, v22, v23, v24);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v25 = swift_allocObject();
  sub_1C4AF186C(0xD00000000000001FLL, 0x80000001C4FB15D0, v25, &type metadata for ScheduledTasks.EventAndFeedbackDailyProcessingRunner, &off_1F43FB000, v26, v27, v28);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v29 = swift_allocObject();
  sub_1C4AF186C(0xD00000000000001ALL, 0x80000001C4FB15F0, v29, &type metadata for ScheduledTasks.EventStreamsDataCollectionRunner, &off_1F43FB020, v30, v31, v32);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v33 = swift_allocObject();
  sub_1C4AF186C(0xD00000000000001ALL, 0x80000001C4FB1610, v33, &type metadata for ScheduledTasks.LongitudinalDataCollectionRunner, &off_1F43FB040, v34, v35, v36);
  sub_1C4A4CFA8();

  sub_1C4431194(a1, v6 + *(v2 + 20), type metadata accessor for Configuration);
  sub_1C43FBDF0();
  *v6 = 0xD000000000000018;
  v6[1] = v37;
  sub_1C44149FC();
  swift_allocObject();
  v38 = sub_1C4402B58();
  sub_1C4431194(v38, v39, v40);
  v41 = sub_1C4404050();
  sub_1C4AF1794(v41, v42);
  sub_1C44542C0(v6, type metadata accessor for ScheduledTasks.AutonamingMetricsLoggingRunner);
  sub_1C4A4CFA8();
}

uint64_t sub_1C4AE8C60()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v38[-v2 - 8];
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDE2DE10);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (sub_1C43FDD64(v6))
  {
    v7 = sub_1C43FCED0();
    sub_1C4402BFC(v7);
    sub_1C440A5A8();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    sub_1C43FFD4C();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C43FCEE8(v0, qword_1EDE2DD70);
  sub_1C4400C28();
  v13 = sub_1C4402B58();
  sub_1C4431194(v13, v14, v15);
  v16 = type metadata accessor for Configuration(0);
  v17 = sub_1C440BAA8(v3, 0, 1, v16);
  sub_1C445FE5C(v17, v38);
  v18 = sub_1C4404050();
  sub_1C45A6EE0(v18, v19);
  swift_endAccess();
  sub_1C4A4D33C();
  type metadata accessor for SimpleScheduledBackgroundTask();
  sub_1C44149FC();
  v20 = swift_allocObject();
  sub_1C4AF19AC(0x657069506C6C7546, 0xEC000000656E696CLL, v20, &type metadata for ScheduledTasks.FullPipelineRunner, &off_1F43FB080, v21, v22, v23);
  sub_1C4AEAAD0();

  sub_1C44149FC();
  v24 = swift_allocObject();
  sub_1C4AF19AC(0xD000000000000011, 0x80000001C4FB14F0, v24, &type metadata for ScheduledTasks.FastpassPipelineRunner, &off_1F43FB098, v25, v26, v27);
  sub_1C4AEAAD0();

  type metadata accessor for ScheduledTasks.AutonamingMessagesPipelineRunner();
  sub_1C44042C4();
  v28 = swift_allocObject();
  sub_1C43FBDF0();
  *(v29 + 16) = 0xD00000000000001ALL;
  *(v29 + 24) = v30;
  type metadata accessor for SimpleScheduledTask();
  sub_1C44149FC();
  v31 = swift_allocObject();
  sub_1C4AF18EC(v28, v31, type metadata accessor for ScheduledTasks.AutonamingMessagesPipelineRunner, &off_1F43FA668);
  sub_1C4A4CFA8();

  type metadata accessor for ScheduledTasks.AutonamingMessagesAggregationAccuracyRunner();
  sub_1C44042C4();
  v32 = swift_allocObject();
  sub_1C43FBDF0();
  *(v33 + 16) = 0xD000000000000025;
  *(v33 + 24) = v34;
  sub_1C44149FC();
  v35 = swift_allocObject();
  sub_1C4AF18EC(v32, v35, type metadata accessor for ScheduledTasks.AutonamingMessagesAggregationAccuracyRunner, &off_1F43FA630);
  sub_1C4A4CFA8();
}

uint64_t sub_1C4AE8F50()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C43FC688(v1);

  return v4();
}

uint64_t sub_1C4AE8FD8()
{
  v1[5] = v0;
  v1[6] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE9078, 0, 0);
}

uint64_t sub_1C4AE9078()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C440E41C(*(v0 + 48), qword_1EDE2DD70);
  v1 = sub_1C43FBC98();
  sub_1C4466EEC(v1, v2);
  v3 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v3);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v7 = sub_1C44024C0(v6);
    *v7 = v8;
    v9 = sub_1C440FAFC(v7);

    return sub_1C4A4D5EC(v9);
  }

  return result;
}

uint64_t sub_1C4AE9144()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 56);
    sub_1C441A3D8();
    sub_1C44542C0(v10, v11);

    sub_1C43FC1B0();

    return v12();
  }
}

uint64_t sub_1C4AE9270()
{
  v1[5] = v0;
  v1[6] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE9310, 0, 0);
}

uint64_t sub_1C4AE9310()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C440E41C(*(v0 + 48), qword_1EDE2DD70);
  v1 = sub_1C43FBC98();
  sub_1C4466EEC(v1, v2);
  v3 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v3);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v7 = sub_1C44024C0(v6);
    *v7 = v8;
    v9 = sub_1C440FAFC(v7);

    return sub_1C4A4D9C8(v9);
  }

  return result;
}

uint64_t sub_1C4AE93DC()
{
  v1[5] = v0;
  v1[6] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE947C, 0, 0);
}

uint64_t sub_1C4AE947C()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C440E41C(*(v0 + 48), qword_1EDE2DD70);
  v1 = sub_1C43FBC98();
  sub_1C4466EEC(v1, v2);
  v3 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v3);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v7 = sub_1C44024C0(v6);
    *v7 = v8;
    v9 = sub_1C440FAFC(v7);

    return sub_1C4A4DC4C(v9);
  }

  return result;
}

uint64_t sub_1C4AE9548()
{
  v1[5] = v0;
  v1[6] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE95E8, 0, 0);
}

uint64_t sub_1C4AE95E8()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C440E41C(*(v0 + 48), qword_1EDE2DD70);
  v1 = sub_1C43FBC98();
  sub_1C4466EEC(v1, v2);
  v3 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v3);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v7 = sub_1C44024C0(v6);
    *v7 = v8;
    v9 = sub_1C440FAFC(v7);

    return sub_1C4A4DDCC(v9);
  }

  return result;
}

uint64_t sub_1C4AE96B4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 56);
    sub_1C441A3D8();
    sub_1C44542C0(v10, v11);

    sub_1C43FC1B0();

    return v12();
  }
}

uint64_t sub_1C4AE97E0()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 56);
  sub_1C441A3D8();
  sub_1C44542C0(v1, v2);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4AE984C()
{
  v1[5] = v0;
  v1[6] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE98EC, 0, 0);
}

uint64_t sub_1C4AE98EC()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C440E41C(*(v0 + 48), qword_1EDE2DD70);
  v1 = sub_1C43FBC98();
  sub_1C4466EEC(v1, v2);
  v3 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v3);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v7 = sub_1C44024C0(v6);
    *v7 = v8;
    v9 = sub_1C440FAFC(v7);

    return sub_1C4A4E00C(v9);
  }

  return result;
}

uint64_t sub_1C4AE99B8(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE9A58, 0, 0);
}

uint64_t sub_1C4AE9A58()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C440E41C(*(v0 + 56), qword_1EDE2DD70);
  v1 = sub_1C43FBC98();
  sub_1C4466EEC(v1, v2);
  v3 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v3);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v7 = sub_1C444B284(v6);
    *v7 = v8;
    v9 = sub_1C43FDD4C(v7);

    return sub_1C4AEADE8(v9);
  }

  return result;
}

uint64_t sub_1C4AE9B24()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 64);
    sub_1C441A3D8();
    sub_1C44542C0(v10, v11);

    sub_1C43FC1B0();

    return v12();
  }
}

uint64_t sub_1C4AE9C50()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 64);
  sub_1C441A3D8();
  sub_1C44542C0(v1, v2);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4AE9CBC(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE9D5C, 0, 0);
}

uint64_t sub_1C4AE9D5C()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C440E41C(*(v0 + 56), qword_1EDE2DD70);
  v1 = sub_1C43FBC98();
  sub_1C4466EEC(v1, v2);
  v3 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v3);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v7 = sub_1C444B284(v6);
    *v7 = v8;
    v9 = sub_1C43FDD4C(v7);

    return sub_1C4AEB110(v9);
  }

  return result;
}

uint64_t sub_1C4AE9E28()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 64);
    sub_1C441A3D8();
    sub_1C44542C0(v10, v11);

    sub_1C43FC1B0();

    return v12();
  }
}

uint64_t sub_1C4AE9F54(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AE9FF4, 0, 0);
}

uint64_t sub_1C4AE9FF4()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C440E41C(*(v0 + 56), qword_1EDE2DD70);
  v1 = sub_1C43FBC98();
  sub_1C4466EEC(v1, v2);
  v3 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v3);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v7 = sub_1C444B284(v6);
    *v7 = v8;
    v9 = sub_1C43FDD4C(v7);

    return sub_1C4AEB3E0(v9);
  }

  return result;
}

uint64_t sub_1C4AEA0C0(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEA160, 0, 0);
}

uint64_t sub_1C4AEA160()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C440E41C(*(v0 + 56), qword_1EDE2DD70);
  v1 = sub_1C43FBC98();
  sub_1C4466EEC(v1, v2);
  v3 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v3);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v7 = sub_1C444B284(v6);
    *v7 = v8;
    v9 = sub_1C43FDD4C(v7);

    return sub_1C4AEB5B0(v9);
  }

  return result;
}

uint64_t sub_1C4AEA22C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEA2CC, 0, 0);
}

uint64_t sub_1C4AEA2CC()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C440E41C(*(v0 + 56), qword_1EDE2DD70);
  v1 = sub_1C43FBC98();
  sub_1C4466EEC(v1, v2);
  v3 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v3);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v7 = sub_1C444B284(v6);
    *v7 = v8;
    v9 = sub_1C43FDD4C(v7);

    return sub_1C4AEB780(v9);
  }

  return result;
}

uint64_t sub_1C4AEA398(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEA438, 0, 0);
}

uint64_t sub_1C4AEA438()
{
  sub_1C43FBCD4();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C440E41C(*(v0 + 56), qword_1EDE2DD70);
  v1 = sub_1C43FBC98();
  sub_1C4466EEC(v1, v2);
  v3 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v3);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v6 = swift_task_alloc();
    v7 = sub_1C444B284(v6);
    *v7 = v8;
    v9 = sub_1C43FDD4C(v7);

    return sub_1C4AEB950(v9);
  }

  return result;
}

uint64_t sub_1C4AEA508()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C43FC688(v1);

  return v4();
}

uint64_t sub_1C4AEA590()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C43FC688(v1);

  return v4();
}

uint64_t sub_1C4AEA618()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C43FC688(v1);

  return v4();
}

uint64_t sub_1C4AEA6A0()
{
  sub_1C43FBCD4();
  v0 = sub_1C440A014();
  v1 = sub_1C43FC218(v0);
  *v1 = v2;
  sub_1C43FC688(v1);

  return v4();
}

uint64_t sub_1C4AEA728()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2DD70);
  v1 = sub_1C43FBC98();
  v3 = sub_1C442B738(v1, v2);
  v4 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(v3, 1, 1, v4);
}

uint64_t sub_1C4AEA7A0()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v46[-v2 - 8];
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v4 = sub_1C4F00978();
  sub_1C43FCEE8(v4, qword_1EDE2DE10);
  v5 = sub_1C4F00968();
  v6 = sub_1C4F01CF8();
  if (sub_1C43FDD64(v6))
  {
    v7 = sub_1C43FCED0();
    sub_1C4402BFC(v7);
    sub_1C440A5A8();
    _os_log_impl(v8, v9, v10, v11, v12, 2u);
    sub_1C43FFD4C();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C43FCEE8(v0, qword_1EDE2DD70);
  sub_1C4400C28();
  v13 = sub_1C4404C28();
  sub_1C4431194(v13, v14, v15);
  v16 = type metadata accessor for Configuration(0);
  v17 = sub_1C440BAA8(v3, 0, 1, v16);
  sub_1C445FE5C(v17, v46);
  v18 = sub_1C43FBC98();
  sub_1C45A6EE0(v18, v19);
  swift_endAccess();
  type metadata accessor for SimpleScheduledTask();
  sub_1C44149FC();
  v20 = swift_allocObject();
  sub_1C4AF186C(0x6C69614477656956, 0xE900000000000079, v20, &type metadata for ScheduledTasks.ViewDailyRunner, &off_1F43FB0B0, v21, v22, v23);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v24 = swift_allocObject();
  sub_1C4AF186C(0xD000000000000017, 0x80000001C4FB14B0, v24, &type metadata for ScheduledTasks.ViewDailyWithNetworkingRunner, &off_1F43FB0D0, v25, v26, v27);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v28 = swift_allocObject();
  sub_1C4AF186C(0x6B65655777656956, 0xEA0000000000796CLL, v28, &type metadata for ScheduledTasks.ViewWeeklyRunner, &off_1F43FB0F0, v29, v30, v31);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v32 = swift_allocObject();
  sub_1C4AF186C(0x7265764577656956, 0xEF7372756F483279, v32, &type metadata for ScheduledTasks.ViewEvery2HoursRunner, &off_1F43FB110, v33, v34, v35);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v36 = swift_allocObject();
  sub_1C4AF186C(0x7265764577656956, 0xEF7372756F483479, v36, &type metadata for ScheduledTasks.ViewEvery4HoursRunner, &off_1F43FB130, v37, v38, v39);
  sub_1C4A4CFA8();

  sub_1C44149FC();
  v40 = swift_allocObject();
  sub_1C4AF186C(0xD000000000000017, 0x80000001C4FB14D0, v40, &type metadata for ScheduledTasks.ResetDisabledViewsDailyRunner, &off_1F43FB150, v41, v42, v43);
  sub_1C4A4CFA8();
}

void sub_1C4AEAAD0()
{
  v1 = v0;
  sub_1C4409678((v0 + 16), *(v0 + 40));
  v2 = sub_1C4402B58();
  v4 = v3(v2);
  v6 = v5;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v7 = sub_1C4F00978();
  v8 = sub_1C442B738(v7, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CF8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = sub_1C43FD084();
    v12 = sub_1C43FFD34();
    v34[0] = v12;
    *v11 = 136315138;
    v13 = sub_1C4404C28();
    *(v11 + 4) = sub_1C441D828(v13, v14, v15);
    sub_1C4417FB0(&dword_1C43F8000, v16, v10, "ScheduledTask: %s: Registering");
    sub_1C440962C(v12);
    sub_1C43FBE2C();
    sub_1C43FFD18();
  }

  v17 = [objc_opt_self() sharedScheduler];
  sub_1C43FBDF0();
  v18 = sub_1C4404C28();
  MEMORY[0x1C6940010](v18);
  v19 = sub_1C4F01108();

  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = v6;
  v20[4] = v1;
  v34[4] = sub_1C4AF1A34;
  v34[5] = v20;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 1107296256;
  v34[2] = sub_1C4440590;
  v34[3] = &unk_1F43FA6C8;
  v21 = _Block_copy(v34);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  [v17 registerForTaskWithIdentifier:v19 usingQueue:0 launchHandler:v21];
  _Block_release(v21);

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();

  if (os_log_type_enabled(v22, v23))
  {
    sub_1C43FD084();
    v24 = sub_1C440E550();
    v34[0] = v24;
    *v8 = 136315138;
    v25 = sub_1C4404C28();
    v28 = sub_1C441D828(v25, v26, v27);

    *(v8 + 4) = v28;
    sub_1C4404B90();
    _os_log_impl(v29, v30, v31, v32, v33, 0xCu);
    sub_1C440962C(v24);
    sub_1C43FFD4C();
    sub_1C43FEA20();
  }

  else
  {
  }
}

uint64_t sub_1C4AEAE08()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C43FC688(v2);
  v4 = sub_1C4403684(2u);

  return sub_1C4427590(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C4AEAF08()
{
  sub_1C43FBCD4();
  sub_1C43FDB88();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4AEB008()
{
  sub_1C43FBCD4();

  sub_1C43FC1B0();

  return v0();
}

uint64_t sub_1C4AEB060()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AE99B8(v2, v3);
}

uint64_t sub_1C4AEB130()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C43FC688(v2);
  v4 = sub_1C4403684(3u);

  return sub_1C4427590(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C4AEB230()
{
  sub_1C43FBCD4();
  sub_1C43FDB88();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4AEB330()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AE9CBC(v2, v3);
}

uint64_t sub_1C4AEB400()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C43FC688(v2);
  v4 = sub_1C4403684(4u);

  return sub_1C4427590(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C4AEB500()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AE9F54(v2, v3);
}

uint64_t sub_1C4AEB5D0()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C43FC688(v2);
  v4 = sub_1C4403684(6u);

  return sub_1C4427590(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C4AEB6D0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AEA0C0(v2, v3);
}

uint64_t sub_1C4AEB7A0()
{
  sub_1C43FCF70();
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  *(v0 + 24) = sub_1C4415590();
  sub_1C440AF8C();
  v1 = swift_task_alloc();
  v2 = sub_1C4414DF4(v1);
  *v2 = v3;
  sub_1C43FC688(v2);
  v4 = sub_1C4403684(5u);

  return sub_1C4427590(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C4AEB8A0()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AEA22C(v2, v3);
}

uint64_t sub_1C4AEB970()
{
  v20 = v0;
  if (qword_1EDDF9710 != -1)
  {
    sub_1C440AD44(&qword_1EDDF9710);
  }

  v1 = sub_1C4415590();
  v0[3] = v1;
  v2 = *(v1 + 16);
  v0[4] = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_1C4AEBFE8;
  *(v3 + 24) = 0;
  *(v3 + 32) = v2;

  v4 = sub_1C49A5770(sub_1C498DB0C, v3);
  v0[5] = v4;

  if (qword_1EDDFD018 != -1)
  {
    swift_once();
  }

  v5 = sub_1C4F00978();
  sub_1C43FCEE8(v5, qword_1EDE2DDF8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();
  if (os_log_type_enabled(v6, v7))
  {
    swift_slowAlloc();
    v8 = sub_1C440E550();
    v19 = v8;
    *v3 = 134218242;
    *(v3 + 4) = *(v4 + 16);

    *(v3 + 12) = 2080;
    v9 = MEMORY[0x1C6940380](v4, MEMORY[0x1E69E6158]);
    v11 = sub_1C441D828(v9, v10, &v19);

    *(v3 + 14) = v11;
    sub_1C4404B90();
    _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    sub_1C440962C(v8);
    sub_1C43FFD18();
    sub_1C43FEA20();
  }

  else
  {
  }

  v17 = swift_task_alloc();
  v0[6] = v17;
  *v17 = v0;
  sub_1C43FC688(v17);

  return sub_1C4CE0544(v4, 0x4000);
}

uint64_t sub_1C4AEBC24()
{
  sub_1C43FCF70();
  sub_1C43FDB88();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    *(v3 + 80) = 3;
    v10 = (v3 + 80);
    v11 = swift_task_alloc();
    *(v10 - 2) = v11;
    *v11 = v5;
    v11[1] = sub_1C4AEBDB4;

    return sub_1C4427590(0x10000, 0x8000, 0, 0, 1, v10);
  }
}

uint64_t sub_1C4AEBDB4()
{
  sub_1C43FBCD4();
  sub_1C43FDB88();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (!v0)
  {
  }

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4AEBEB4()
{
  sub_1C43FBCD4();

  sub_1C43FC1B0();

  return v0();
}

uint64_t sub_1C4AEBF14()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4AEBF84()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4AEBFE8@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C4BB9AC8(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C4AEC014()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AEA398(v2, v3);
}

uint64_t sub_1C4AEC0C4()
{
  *(v0 + 104) = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEC160, 0, 0);
}

uint64_t sub_1C4AEC160()
{
  sub_1C43FCF70();
  *(v0 + 16) = 2;
  sub_1C43FBDF0();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xD000000000000010;
  *(v0 + 40) = v1;
  *(v0 + 48) = xmmword_1C4F4FDC0;
  *(v0 + 64) = vdupq_n_s64(0x3BuLL);
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  v2 = *(v0 + 112);
  v3 = sub_1C442B738(*(v0 + 104), qword_1EDE2DD70);
  sub_1C440D164(v3, v0 + 80);
  v4 = sub_1C4404C28();
  sub_1C4466EEC(v4, v5);
  v6 = type metadata accessor for Configuration(0);
  result = sub_1C440175C(v2, 1, v6);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = sub_1C4AEC29C;
    v10 = *(v0 + 112);

    return sub_1C47C0D20(v10);
  }

  return result;
}

uint64_t sub_1C4AEC29C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 128) = v0;

  sub_1C4AF1D68(v3 + 16);
  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = *(v3 + 112);
    sub_1C441A3D8();
    sub_1C44542C0(v10, v11);

    sub_1C43FC1B0();

    return v12();
  }
}

uint64_t sub_1C4AEC3D0()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 112);
  sub_1C441A3D8();
  sub_1C44542C0(v1, v2);

  sub_1C43FBDA0();

  return v3();
}

uint64_t sub_1C4AEC43C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4AEC0C4();
}

uint64_t sub_1C4AEC4D4()
{
  v0[5] = type metadata accessor for LongitudinalDataCollectionTask(0);
  v0[6] = swift_task_alloc();
  v0[7] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEC5AC, 0, 0);
}

uint64_t sub_1C4AEC5AC()
{
  sub_1C43FCF70();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  v2 = v1[9];
  v3 = sub_1C43FCEE8(v1[7], qword_1EDE2DD70);
  sub_1C43FC600(v3);
  sub_1C4466EEC(v0, v2);
  v4 = type metadata accessor for Configuration(0);
  result = sub_1C440175C(v2, 1, v4);
  if (v6)
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = (v1[9] + *(v4 + 20));
  v9 = *v7;
  v8 = v7[1];
  if (qword_1EDDDBEF8 != -1)
  {
    swift_once();
  }

  if ((xmmword_1EDDDBF00 & ~v9) != 0)
  {
    sub_1C44542C0(v1[9], type metadata accessor for Configuration);
  }

  else
  {
    v10 = *(&xmmword_1EDDDBF00 + 1) & ~v8;
    sub_1C441A3D8();
    sub_1C44542C0(v11, v12);
    if (!v10)
    {
      v13 = v1[8];
      sub_1C4466EEC(v0, v13);
      result = sub_1C440175C(v13, 1, v4);
      if (!v6)
      {
        v14 = v1[5];
        v15 = v1[6];
        sub_1C4426D84();
        sub_1C4AF1DBC(v16, v15, v17);
        v18 = v15 + v14[5];
        *v18 = 2;
        *(v18 + 8) = 0;
        v19 = (v15 + v14[6]);
        *v19 = 0xD00000000000001ALL;
        v19[1] = 0x80000001C4FB1610;
        *(v15 + v14[7]) = 1;
        *(v15 + v14[8]) = 23;
        *(v15 + v14[9]) = 59;
        *(v15 + v14[10]) = 59;
        v20 = swift_task_alloc();
        v1[10] = v20;
        *v20 = v1;
        v20[1] = sub_1C4AEC818;

        return sub_1C4A27BF8();
      }

LABEL_17:
      __break(1u);
      return result;
    }
  }

  sub_1C43FC1B0();

  return v21();
}

uint64_t sub_1C4AEC818()
{
  sub_1C43FCF70();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_1C43FBDAC();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1C44542C0(v6, type metadata accessor for LongitudinalDataCollectionTask);
  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    sub_1C43FC1B0();

    return v12();
  }
}

uint64_t sub_1C4AEC984()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4AEC9F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4AEC4D4();
}

uint64_t sub_1C4AECA8C()
{
  *(v1 + 16) = v0;
  type metadata accessor for Configuration(0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AECB1C, 0, 0);
}

uint64_t sub_1C4AECB1C()
{
  sub_1C43FCF70();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for ScheduledTasks.AutonamingMetricsLoggingRunner(0);
  sub_1C4400C28();
  sub_1C4431194(v2 + v3, v1, v4);
  type metadata accessor for AutonamingFeedbackCAEventLogger(0);
  v5 = swift_allocObject();
  sub_1C456902C(&qword_1EC0B97D8, &qword_1C4F0F958);
  sub_1C45B1E90();
  *(v5 + 16) = sub_1C4F00F28();
  sub_1C4426D84();
  sub_1C4AF1DBC(v1, v5 + v6, v7);
  sub_1C45AD814();
  swift_setDeallocating();
  sub_1C45AF6DC();

  sub_1C43FC1B0();

  return v8();
}

uint64_t sub_1C4AECC1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4AECA8C();
}

uint64_t sub_1C4AECCA8(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v2[15] = type metadata accessor for Pipeline.StatusStore(0);
  v2[16] = swift_task_alloc();
  v2[17] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AECD84, 0, 0);
}

uint64_t sub_1C4AECD84()
{
  v55 = v0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v1 = sub_1C4F00978();
  v0[20] = sub_1C442B738(v1, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = sub_1C43FD084();
    v7 = sub_1C43FFD34();
    v54[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1C441D828(v5, v4, v54);
    sub_1C4417FB0(&dword_1C43F8000, v8, v3, "ConstructionSystemTasks: %s: starting pipeline run.");
    sub_1C440962C(v7);
    sub_1C43FBE2C();
    sub_1C43FFD18();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  v9 = sub_1C442B738(v0[17], qword_1EDE2DD70);
  sub_1C43FC600(v9);
  v10 = sub_1C4404050();
  sub_1C4466EEC(v10, v11);
  v12 = type metadata accessor for Configuration(0);
  v13 = sub_1C440EF74();
  result = sub_1C440175C(v13, v14, v12);
  if (v16)
  {
    __break(1u);
    return result;
  }

  if (qword_1EDDF0AB0 != -1)
  {
    sub_1C4402D88(&qword_1EDDF0AB0);
  }

  v17 = sub_1C4468E90();
  v0[21] = v17;
  v19 = v0[15];
  v18 = v0[16];
  sub_1C441A3D8();
  sub_1C44542C0(v20, v21);
  sub_1C4400C28();
  sub_1C4431194(v17 + v22, v18, v23);
  *(v18 + *(v19 + 20)) = 1;
  LOBYTE(v19) = Pipeline.StatusStore.isLongRunningPipelineActivated()();
  sub_1C44542C0(v18, type metadata accessor for Pipeline.StatusStore);
  if (v19)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CF8();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = v0[13];
      v26 = v0[14];
      v28 = sub_1C43FD084();
      v29 = sub_1C43FFD34();
      v54[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1C441D828(v27, v26, v54);
      _os_log_impl(&dword_1C43F8000, v24, v25, "ConstructionSystemTasks: Need for long running exception activity. Exiting %s", v28, 0xCu);
      sub_1C440962C(v29);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    if (qword_1EDDFC178 != -1)
    {
      swift_once();
    }

    v30 = v0[18];
    v31 = sub_1C442B738(v0[17], qword_1EDE2DD88);
    sub_1C440D164(v31, (v0 + 5));
    v32 = sub_1C4404050();
    sub_1C4466EEC(v32, v33);
    v34 = sub_1C440EF74();
    v36 = sub_1C44157D4(v34, v35, v12);
    sub_1C4420C3C(v30, &unk_1EC0B9610, &unk_1C4F0F2E0);
    if (v36 == 1)
    {
      sub_1C446D0DC();
      v37 = swift_allocError();
      *v38 = 0xD000000000000037;
      *(v38 + 8) = 0x80000001C4FB1670;
      *(v38 + 16) = 2;
      swift_willThrow();
      v39 = v37;
      v40 = sub_1C4F00968();
      v41 = sub_1C4F01CD8();

      if (!os_log_type_enabled(v40, v41))
      {

        goto LABEL_24;
      }

      v42 = sub_1C43FD084();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = v37;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      sub_1C4402B48();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      sub_1C4420C3C(v43, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FFD18();
      sub_1C43FE9D4();
    }

    else
    {
      type metadata accessor for OneShotSingletons();
      v52 = sub_1C442ECD4();
      sub_1C446703C(v52);
      sub_1C4467260();
    }

LABEL_24:

    sub_1C43FC1B0();

    return v53();
  }

  v51 = swift_task_alloc();
  v0[22] = v51;
  *v51 = v0;
  sub_1C43FC688(v51);

  return sub_1C4ABFCBC(2);
}

uint64_t sub_1C4AED44C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4AED544()
{
  sub_1C43FBCD4();

  sub_1C43FC1B0();

  return v0();
}

uint64_t sub_1C4AED5B8()
{
  sub_1C43FEAEC();

  v1 = *(v0 + 184);
  *(v0 + 88) = v1;
  v2 = (v0 + 88);
  v3 = v1;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    *(v0 + 96) = v1;
    v13 = v1;
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 64);
      v15 = *(v0 + 72);
      v16 = *(v0 + 80);
      v17 = v16 == 2 && v14 == 3;
      if (v17 && !v15)
      {

        v2 = (v0 + 96);
        goto LABEL_3;
      }

      sub_1C4AF1E18(v14, v15, v16);
    }

    sub_1C43FBDA0();
    goto LABEL_13;
  }

LABEL_3:
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CF8();
  if (sub_1C4402B64(v5))
  {
    v6 = sub_1C43FCED0();
    sub_1C43FBD24(v6);
    sub_1C4402B48();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    sub_1C43FE9D4();
  }

  sub_1C43FC1B0();
LABEL_13:

  return v12();
}

uint64_t sub_1C4AED770()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C442F080;

  return sub_1C4AECCA8(v2, v3);
}

uint64_t sub_1C4AED82C()
{
  *(v0 + 40) = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  *(v0 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AED8C8, 0, 0);
}

uint64_t sub_1C4AED8C8()
{
  sub_1C43FCF70();
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v1 = sub_1C4F00978();
  sub_1C43FCEE8(v1, qword_1EDE2DE10);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    v4 = sub_1C43FCED0();
    sub_1C43FBD24(v4);
    sub_1C4402B48();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    sub_1C43FE9D4();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C440E41C(*(v0 + 40), qword_1EDE2DD70);
  v10 = sub_1C43FBC98();
  sub_1C4466EEC(v10, v11);
  v12 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v12);
  if (v14)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF0AB0 != -1)
    {
      sub_1C4402D88(&qword_1EDDF0AB0);
    }

    *(v0 + 56) = sub_1C4468E90();
    sub_1C441A3D8();
    sub_1C44542C0(v15, v16);
    v17 = swift_task_alloc();
    v18 = sub_1C44024C0(v17);
    *v18 = v19;
    sub_1C43FC688(v18);

    return sub_1C4470C88(2);
  }

  return result;
}

uint64_t sub_1C4AEDA98()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v3 = v2;
  sub_1C44001F0();
  *v4 = v3;
  v5 = *v1;
  sub_1C43FBDAC();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1C43FEAF8();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_1C43FC1B0();

    return v10();
  }
}

uint64_t sub_1C4AEDBBC()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4AEDC20(uint64_t a1, uint64_t a2, const char *a3)
{
  v6 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20[-v8 - 8];
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v10 = sub_1C4F00978();
  sub_1C43FCEE8(v10, qword_1EDE2DE10);
  v11 = sub_1C4F00968();
  v12 = sub_1C4F01CF8();
  if (sub_1C43FDD64(v12))
  {
    v13 = sub_1C43FCED0();
    sub_1C4402BFC(v13);
    _os_log_impl(&dword_1C43F8000, v11, v3, a3, v4, 2u);
    sub_1C43FFD4C();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  v14 = sub_1C43FCEE8(v6, qword_1EDE2DD70);
  sub_1C440D164(v14, v20);
  sub_1C4466EEC(v11, v9);
  v15 = type metadata accessor for Configuration(0);
  result = sub_1C440175C(v9, 1, v15);
  if (v17)
  {
    __break(1u);
  }

  else
  {
    if (qword_1EDDF0AB0 != -1)
    {
      sub_1C4402D88(&qword_1EDDF0AB0);
    }

    sub_1C4468E90();
    sub_1C441A3D8();
    sub_1C44542C0(v9, v18);
    sub_1C4ABF738();
  }

  return result;
}

uint64_t sub_1C4AEDDF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4AED82C();
}

uint64_t sub_1C4AEDEB0()
{
  v0[23] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEDF58, 0, 0);
}

uint64_t sub_1C4AEDF58()
{
  sub_1C4404D98();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  v1 = sub_1C442B738(v0[23], qword_1EDE2DD70);
  sub_1C440D164(v1, (v0 + 20));
  v2 = sub_1C43FBC98();
  sub_1C4466EEC(v2, v3);
  v4 = type metadata accessor for Configuration(0);
  v5 = sub_1C440EF74();
  result = sub_1C440175C(v5, v6, v4);
  if (v8)
  {
    __break(1u);
    goto LABEL_30;
  }

  v9 = *(v0[25] + *(v4 + 20));
  if (qword_1EDDFFAB8 != -1)
  {
    sub_1C440BEF4(&qword_1EDDFFAB8);
    v9 = v36;
  }

  v10 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFEBF8, v9), xmmword_1EDDFEBF8));
  v11 = v10.i8[0] & v10.i8[4];
  sub_1C441A3D8();
  sub_1C44542C0(v12, v13);
  if ((v11 & 1) == 0 || (sub_1C442ECD4(), v14 = sub_1C4F01108(), v15 = sub_1C44C1028(v14), v14, !v15))
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v28 = sub_1C4F00978();
    sub_1C43FCEE8(v28, qword_1EDDFECB8);
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CF8();
    if (!sub_1C4402B64(v30))
    {
      goto LABEL_22;
    }

    v31 = "ConstructionSystemTasks: AutonamingMessagesInferenceTask: feature flag is not enabled.";
    goto LABEL_21;
  }

  type metadata accessor for AutonamingMessagesModelHandler();
  if (sub_1C45C3790())
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v16 = sub_1C4F00978();
    sub_1C43FCEE8(v16, qword_1EDDFECB8);
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();
    if (sub_1C43FDD64(v18))
    {
      v19 = sub_1C43FCED0();
      sub_1C4402BFC(v19);
      sub_1C440A5A8();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      sub_1C43FFD4C();
    }

    v25 = v0[24];

    sub_1C4466EEC(v1, v25);
    result = sub_1C440175C(v25, 1, v4);
    if (!v8)
    {
      v26 = v0[24];
      type metadata accessor for AutonamingMessagesUpdateHandler();
      v0[26] = swift_initStackObject();
      v0[27] = AutonamingMessagesUpdateHandler.init(config:)(v26);
      v27 = swift_task_alloc();
      v0[28] = v27;
      *v27 = v0;
      sub_1C43FC688(v27);

      return sub_1C45CDEF0();
    }

LABEL_30:
    __break(1u);
    return result;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v34 = sub_1C4F00978();
  sub_1C43FCEE8(v34, qword_1EDDFECB8);
  v29 = sub_1C4F00968();
  v35 = sub_1C4F01CD8();
  if (sub_1C4402B64(v35))
  {
    v31 = "ConstructionSystemTasks: AutonamingMessagesInferenceTask: unavailable - GenerativeModels unavailable on current system.";
LABEL_21:
    v32 = sub_1C43FCED0();
    *v32 = 0;
    _os_log_impl(&dword_1C43F8000, v29, v1, v31, v32, 2u);
    sub_1C43FEA20();
  }

LABEL_22:

  sub_1C43FC1B0();

  return v33();
}

uint64_t sub_1C4AEE2D0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4AEE3D4()
{
  sub_1C43FCF70();
  sub_1C4F01968();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4AEE478()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4AEDEB0();
}

uint64_t sub_1C4AEE508()
{
  v0[5] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEE5B0, 0, 0);
}

uint64_t sub_1C4AEE5B0()
{
  sub_1C4404D98();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  sub_1C440E41C(v1[5], qword_1EDE2DD70);
  v2 = sub_1C43FBC98();
  sub_1C4466EEC(v2, v3);
  v4 = type metadata accessor for Configuration(0);
  v5 = sub_1C440EF74();
  result = sub_1C440175C(v5, v6, v4);
  if (v8)
  {
    __break(1u);
    goto LABEL_24;
  }

  v9 = *(v1[7] + *(v4 + 20));
  if (qword_1EDDFFAB8 != -1)
  {
    sub_1C440BEF4(&qword_1EDDFFAB8);
    v9 = v40;
  }

  v10 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFEBF8, v9), xmmword_1EDDFEBF8));
  v11 = v10.i8[0] & v10.i8[4];
  sub_1C441A3D8();
  sub_1C44542C0(v12, v13);
  if (v11)
  {
    sub_1C442ECD4();
    v14 = sub_1C4F01108();
    v15 = sub_1C44C1028(v14);

    if (v15)
    {
      if (qword_1EDDFECB0 != -1)
      {
        sub_1C43FFB88(&qword_1EDDFECB0);
      }

      v16 = sub_1C4F00978();
      sub_1C43FCEE8(v16, qword_1EDDFECB8);
      v17 = sub_1C4F00968();
      v18 = sub_1C4F01CF8();
      if (sub_1C43FDD64(v18))
      {
        v19 = sub_1C43FCED0();
        sub_1C4402BFC(v19);
        sub_1C440A5A8();
        _os_log_impl(v20, v21, v22, v23, v24, 2u);
        sub_1C43FFD4C();
      }

      v25 = v1[6];

      sub_1C4466EEC(v0, v25);
      result = sub_1C440175C(v25, 1, v4);
      if (!v8)
      {
        v26 = v1[6];
        type metadata accessor for AutonamingMessagesAggregationHandler();
        swift_allocObject();
        v1[8] = AutonamingMessagesAggregationHandler.init(config:)(v26);
        v27 = swift_task_alloc();
        v28 = sub_1C444B284(v27);
        *v28 = v29;
        sub_1C43FC688(v28);

        return sub_1C45B4458();
      }

LABEL_24:
      __break(1u);
      return result;
    }
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v30 = sub_1C4F00978();
  sub_1C43FCEE8(v30, qword_1EDDFECB8);
  v31 = sub_1C4F00968();
  v32 = sub_1C4F01CF8();
  if (sub_1C4402B64(v32))
  {
    v33 = sub_1C43FCED0();
    sub_1C43FBD24(v33);
    sub_1C4402B48();
    _os_log_impl(v34, v35, v36, v37, v38, 2u);
    sub_1C43FE9D4();
  }

  sub_1C43FC1B0();

  return v39();
}

uint64_t sub_1C4AEE8AC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4AEE9B0()
{
  sub_1C43FCF70();
  sub_1C4F01968();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C4AEEA54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4AEE508();
}

uint64_t sub_1C4AEEAE4()
{
  v0[5] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEEBA4, 0, 0);
}

uint64_t sub_1C4AEEFC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4AEEAE4();
}

uint64_t sub_1C4AEF05C()
{
  v0[8] = type metadata accessor for Configuration(0);
  v0[9] = swift_task_alloc();
  v0[10] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEF128, 0, 0);
}

uint64_t sub_1C4AEF128()
{
  sub_1C43FEAEC();
  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  v1 = v0[8];
  v2 = sub_1C442B738(v0[10], qword_1EDE2DD70);
  sub_1C43FC600(v2);
  v3 = sub_1C4404050();
  sub_1C4466EEC(v3, v4);
  v5 = sub_1C440EF74();
  result = sub_1C440175C(v5, v6, v1);
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[11];
    v10 = v0[9];
    type metadata accessor for AssetRegistryFullServer();
    sub_1C4400C28();
    sub_1C4431194(v9, v10, v11);
    sub_1C4EF9348();
    swift_allocObject();
    v12 = sub_1C4EF9338();
    v13 = sub_1C4473C20(v10, v12);
    sub_1C441A3D8();
    sub_1C44542C0(v14, v15);
    type metadata accessor for AssetRegistryOverrideStoreCleanupTask();
    *(swift_initStackObject() + 16) = v13;
    sub_1C45A3350();

    sub_1C43FC1B0();

    return v16();
  }

  return result;
}

uint64_t sub_1C4AEF380()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4AEF05C();
}

uint64_t sub_1C4AEF418()
{
  v1 = sub_1C4EF9CD8();
  v0[5] = v1;
  v0[6] = *(v1 - 8);
  v0[7] = swift_task_alloc();
  v0[8] = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  v0[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AEF510, 0, 0);
}

uint64_t sub_1C4AEF510()
{
  sub_1C4404D98();
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (os_log_type_enabled(v2, v3))
  {
    *sub_1C43FCED0() = 0;
    sub_1C4404B90();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_1C43FEA20();
  }

  if (qword_1EDDFBCB0 != -1)
  {
    sub_1C44079A0(&qword_1EDDFBCB0);
  }

  v9 = sub_1C442B738(v0[8], qword_1EDE2DD70);
  sub_1C43FC600(v9);
  v10 = sub_1C4404050();
  sub_1C4466EEC(v10, v11);
  v12 = type metadata accessor for Configuration(0);
  result = sub_1C43FD9F0(v12);
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v15 = v0[9];
    type metadata accessor for GlobalKnowledgeStore(0);
    sub_1C48300AC(v15);
    v17 = v0[6];
    v16 = v0[7];
    v18 = v0[5];
    sub_1C4EF9CC8();
    sub_1C4EF9C58();
    v20 = v19;
    (*(v17 + 8))(v16, v18);
    sub_1C49F1BE0(v20);

    v21 = sub_1C4F00968();
    v22 = sub_1C4F01CF8();
    if (sub_1C4402B64(v22))
    {
      v23 = sub_1C43FCED0();
      sub_1C43FBD24(v23);
      sub_1C4402B48();
      _os_log_impl(v24, v25, v26, v27, v28, 2u);
      sub_1C43FE9D4();
    }

    sub_1C43FC1B0();

    return v29();
  }

  return result;
}

uint64_t sub_1C4AEF740()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C442F080;

  return sub_1C4AEF418();
}

uint64_t sub_1C4AEF7D8()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  return result;
}

uint64_t sub_1C4AEF7EC()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AEF870()
{
  sub_1C4AEF848();

  return swift_deallocClassInstance();
}

void sub_1C4AEF8EC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  if (qword_1EDDFBCB0 != -1)
  {
    swift_once();
  }

  v11 = sub_1C442B738(v8, qword_1EDE2DD70);
  swift_beginAccess();
  sub_1C4466EEC(v11, v10);
  v12 = type metadata accessor for Configuration(0);
  if (sub_1C44157D4(v10, 1, v12) == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = &v10[*(v12 + 20)];
    v14 = *v13;
    v15 = *(v13 + 1);
    sub_1C44542C0(v10, type metadata accessor for Configuration);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v14) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v15) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v25 = sub_1C4F00978();
      sub_1C442B738(v25, qword_1EDE2DE10);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v26 = sub_1C4F00968();
      v27 = sub_1C4F01CF8();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        aBlock[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1C441D828(a2, a3, aBlock);
        _os_log_impl(&dword_1C43F8000, v26, v27, "ScheduledTask: %s: registered as a no-op.", v28, 0xCu);
        sub_1C440962C(v29);
        MEMORY[0x1C6942830](v29, -1, -1);
        MEMORY[0x1C6942830](v28, -1, -1);
      }
    }

    else
    {
      aBlock[4] = sub_1C4AF1A40;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C4833DD0;
      aBlock[3] = &unk_1F43FA6F0;
      v17 = _Block_copy(aBlock);

      [a1 setExpirationHandler_];
      _Block_release(v17);
      v18 = *(a4 + 56);
      MEMORY[0x1EEE9AC00](v19);
      *(&v35 - 2) = a1;
      os_unfair_lock_lock(v18 + 6);
      sub_1C4AF1A48(&v18[4]);
      os_unfair_lock_unlock(v18 + 6);
      sub_1C442E860(a4 + 16, aBlock);
      sub_1C456902C(&qword_1EC0C3230, &qword_1C4F50198);
      sub_1C456902C(&qword_1EC0C3238, &unk_1C4F501A0);
      if (swift_dynamicCast())
      {
        sub_1C441D670(v38, v37);
        if (qword_1EDDFD028 != -1)
        {
          swift_once();
        }

        v20 = sub_1C4F00978();
        sub_1C442B738(v20, qword_1EDE2DE10);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v21 = sub_1C4F00968();
        v22 = sub_1C4F01CF8();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v36 = v24;
          *v23 = 136315138;
          *(v23 + 4) = sub_1C441D828(a2, a3, &v36);
          _os_log_impl(&dword_1C43F8000, v21, v22, "SimpleScheduledBackgroundTask: %s: task state set, calling async runner", v23, 0xCu);
          sub_1C440962C(v24);
          MEMORY[0x1C6942830](v24, -1, -1);
          MEMORY[0x1C6942830](v23, -1, -1);
        }

        sub_1C4AF00F0(v37);
        sub_1C440962C(v37);
      }

      else
      {
        if (qword_1EDDFD028 != -1)
        {
          swift_once();
        }

        v30 = sub_1C4F00978();
        sub_1C442B738(v30, qword_1EDE2DE10);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v31 = sub_1C4F00968();
        v32 = sub_1C4F01CB8();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *&v38[0] = v34;
          *v33 = 136315138;
          *(v33 + 4) = sub_1C441D828(a2, a3, v38);
          _os_log_impl(&dword_1C43F8000, v31, v32, "SimpleScheduledBackgroundTask: %s: has no runner", v33, 0xCu);
          sub_1C440962C(v34);
          MEMORY[0x1C6942830](v34, -1, -1);
          MEMORY[0x1C6942830](v33, -1, -1);
        }
      }

      sub_1C440962C(aBlock);
    }
  }
}

void sub_1C4AEFF1C(uint64_t a1)
{
  v1 = *(a1 + 56);
  os_unfair_lock_lock((v1 + 24));
  sub_1C4AF1B8C((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1C4AEFF78(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v3 + 32) = 1;
  if (*(v3 + 24))
  {

    sub_1C4F01918();
  }

  sub_1C442E860(a2 + 16, v9);
  sub_1C456902C(&qword_1EC0C3230, &qword_1C4F50198);
  sub_1C456902C(&qword_1EC0C3240, &unk_1C4F47090);
  if (swift_dynamicCast())
  {
    sub_1C441D670(v7, v10);
    v4 = v11;
    v5 = v12;
    sub_1C4409678(v10, v11);
    (*(v5 + 8))(v4, v5);
    return sub_1C440962C(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    return sub_1C4420C3C(v7, &unk_1EC0C1C60, qword_1C4F501C0);
  }
}

id sub_1C4AF00B4(uint64_t a1, void *a2)
{
  v3 = *(*a1 + 16);
  *(*a1 + 16) = a2;

  return a2;
}

uint64_t sub_1C4AF00F0(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v3 = a1[4];
  sub_1C4409678(a1, v4);
  (*(*(v3 + 8) + 8))(v4);
  v5 = *(v2 + 56);
  os_unfair_lock_lock((v5 + 24));
  sub_1C4AF1A64((v5 + 16));
  os_unfair_lock_unlock((v5 + 24));
}

void sub_1C4AF01BC(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1C456902C(&qword_1EC0BC660, &qword_1C4F29150);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  v15 = *a1;
  if (*(v15 + 32) == 1)
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v16 = sub_1C4F00978();
    sub_1C442B738(v16, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v17 = sub_1C4F00968();
    v18 = sub_1C4F01CF8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v25[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1C441D828(a2, a3, v25);
      _os_log_impl(&dword_1C43F8000, v17, v18, "SimpleScheduledBackgroundTask: %s: state was set to be expired before the task was launched.", v19, 0xCu);
      sub_1C440962C(v20);
      MEMORY[0x1C6942830](v20, -1, -1);
      MEMORY[0x1C6942830](v19, -1, -1);
    }

    sub_1C4AF0458(a2, a3, v15);
  }

  else
  {
    *(v15 + 32) = 0;
    sub_1C4F01898();
    v21 = sub_1C4F018C8();
    sub_1C440BAA8(v14, 0, 1, v21);
    sub_1C442E860(a4, v25);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    sub_1C441D670(v25, (v22 + 4));
    v22[9] = a2;
    v22[10] = a3;
    v22[11] = a5;
    v22[12] = a6;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    v23 = sub_1C4CDA340(0, 0, v14, &unk_1C4F501B8, v22);
    sub_1C4420C3C(v14, &qword_1EC0BC660, &qword_1C4F29150);
    *(v15 + 24) = v23;
  }
}

void sub_1C4AF0458(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  if (v5)
  {
    v21[0] = 0;
    if ([v5 setTaskExpiredWithRetryAfter:v21 error:300.0])
    {
      v7 = v21[0];
    }

    else
    {
      v8 = v21[0];
      v9 = sub_1C4EF97A8();

      swift_willThrow();
      if (qword_1EDDFD028 != -1)
      {
        sub_1C43FE9B4(&qword_1EDDFD028);
      }

      v10 = sub_1C4F00978();
      sub_1C43FCEE8(v10, qword_1EDE2DE10);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v11 = v9;
      v12 = sub_1C4F00968();
      v13 = sub_1C4F01CD8();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v21[0] = swift_slowAlloc();
        *v14 = 136315394;
        *(v14 + 4) = sub_1C441D828(a1, a2, v21);
        *(v14 + 12) = 2080;
        v15 = v9;
        sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
        v16 = sub_1C4F01198();
        v18 = sub_1C441D828(v16, v17, v21);

        *(v14 + 14) = v18;
        _os_log_impl(&dword_1C43F8000, v12, v13, "SimpleScheduledBackgroundTask: %s: Setting task to completed with error: %s", v14, 0x16u);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        sub_1C43FFD18();
      }

      v19 = *(a3 + 16);
      if (v19)
      {
        v20 = v19;
        [v20 setTaskCompleted];
      }

      else
      {
      }
    }
  }

  *(a3 + 32) = 0;
}

uint64_t sub_1C4AF06AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C4AF06D4, 0, 0);
}

uint64_t sub_1C4AF06D4()
{
  sub_1C43FEAEC();
  v1 = *(v0 + 24);
  v2 = v1[4];
  sub_1C4409678(v1, v1[3]);
  sub_1C441CD2C(v2);
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = sub_1C44024C0(v4);
  *v5 = v6;
  sub_1C43FC688(v5);
  v7 = sub_1C4402B58();

  return v9(v7);
}

uint64_t sub_1C4AF07DC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FEB84();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C4AF08D4()
{
  sub_1C4404D98();
  v1 = v0[9];
  v2 = v0[6];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v2[7];
  os_unfair_lock_lock((v5 + 24));
  sub_1C4AF0BD0((v5 + 16), 1, v4, v3, v2);
  os_unfair_lock_unlock((v5 + 24));
  if (!v1)
  {
    sub_1C43FBDA0();

    v6();
  }
}

uint64_t sub_1C4AF0998()
{
  v26 = v0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v1 = *(v0 + 72);
  v2 = sub_1C4F00978();
  sub_1C43FCEE8(v2, qword_1EDE2DE10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v3 = v1;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CD8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_1C441D828(v8, v7, v25);
    *(v9 + 12) = 2080;
    *(v0 + 16) = v6;
    v10 = v6;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v11 = sub_1C4F01198();
    v13 = sub_1C441D828(v11, v12, v25);

    *(v9 + 14) = v13;
    sub_1C4402B48();
    _os_log_impl(v14, v15, v16, v17, v18, 0x16u);
    swift_arrayDestroy();
    sub_1C43FEA20();
    sub_1C43FE9D4();
  }

  v19 = *(v0 + 56);
  v24 = *(v0 + 32);
  v20 = *(*(v0 + 48) + 56);
  v21 = swift_task_alloc();
  *(v21 + 16) = v24;
  *(v21 + 32) = v19;
  os_unfair_lock_lock((v20 + 24));
  sub_1C4AF1B58((v20 + 16));
  os_unfair_lock_unlock((v20 + 24));

  sub_1C43FBDA0();

  return v22();
}

void sub_1C4AF0BD0(uint64_t *a1, char a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = *a1;
  if (a2)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      [v7 setTaskCompleted];
    }
  }

  else if (*(v6 + 32) == 1)
  {
    sub_1C4AF0458(a3, a4, v6);
    return;
  }

  v8 = a5[5];
  v9 = a5[6];
  sub_1C4409678(a5 + 2, v8);
  (*(v9 + 16))(v6, v8, v9);
}

xpc_activity_state_t sub_1C4AF0C80(uint64_t a1, uint64_t a2, xpc_activity_state_t *a3)
{
  *(*a1 + 24) = a2;
  swift_unknownObjectRelease();
  v4 = swift_unknownObjectRetain();
  result = xpc_activity_get_state(v4);
  *a3 = result;
  return result;
}

void sub_1C4AF0D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), char *a6, const char *a7, ...)
{
  sub_1C43FFB44();
  if (v11(v7, 3))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v12 = sub_1C4F00978();
    sub_1C43FCEE8(v12, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v43 = sub_1C4F00968();
    a5();
    v13 = sub_1C440F210();
    if (sub_1C441DE30(v13, v14, v15, v16, v17, v18, v19, v20, v43))
    {
      v21 = sub_1C43FD084();
      sub_1C43FFD34();
      sub_1C440D1D4();
      *v21 = 136315138;
      v22 = sub_1C4404C28();
      *(v21 + 4) = sub_1C441D828(v22, v23, v24);
      sub_1C443F744();
      _os_log_impl(v25, v26, v27, a6, v21, 0xCu);
      sub_1C440962C(a5);
      sub_1C43FFD4C();
LABEL_10:
      sub_1C43FBE2C();

      return;
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v28 = sub_1C4F00978();
    sub_1C43FCEE8(v28, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v45 = sub_1C4F00968();
    sub_1C4F01CD8();
    v29 = sub_1C440F210();
    if (sub_1C441DE30(v29, v30, v31, v32, v33, v34, v35, v36, v45))
    {
      sub_1C43FD084();
      sub_1C440E550();
      sub_1C440D1D4();
      *a6 = 136315138;
      v37 = sub_1C4404C28();
      *(a6 + 4) = sub_1C441D828(v37, v38, v39);
      sub_1C443F744();
      _os_log_impl(v40, v41, v42, a7, a6, 0xCu);
      sub_1C440962C(a5);
      sub_1C43FFD4C();
      goto LABEL_10;
    }
  }
}

BOOL sub_1C4AF0F58@<W0>(xpc_activity_t activity@<X1>, _BYTE *a2@<X8>)
{
  result = xpc_activity_should_defer(activity);
  *a2 = result;
  return result;
}

void sub_1C4AF0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, const char *a7, ...)
{
  sub_1C43FFB44();
  if (v12(v7, v11))
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v13 = sub_1C4F00978();
    sub_1C43FCEE8(v13, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v44 = sub_1C4F00968();
    sub_1C4F01CF8();
    v14 = sub_1C440F210();
    if (sub_1C441DE30(v14, v15, v16, v17, v18, v19, v20, v21, v44))
    {
      v22 = sub_1C43FD084();
      sub_1C43FFD34();
      sub_1C440D1D4();
      *v22 = 136315138;
      v23 = sub_1C4404C28();
      *(v22 + 4) = sub_1C441D828(v23, v24, v25);
      sub_1C443F744();
      _os_log_impl(v26, v27, v28, a6, v22, 0xCu);
      sub_1C440962C(v8);
      sub_1C43FFD4C();
LABEL_10:
      sub_1C43FBE2C();

      return;
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v29 = sub_1C4F00978();
    sub_1C43FCEE8(v29, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v46 = sub_1C4F00968();
    sub_1C4F01CD8();
    v30 = sub_1C440F210();
    if (sub_1C441DE30(v30, v31, v32, v33, v34, v35, v36, v37, v46))
    {
      sub_1C43FD084();
      sub_1C440E550();
      sub_1C440D1D4();
      *a6 = 136315138;
      v38 = sub_1C4404C28();
      *(a6 + 4) = sub_1C441D828(v38, v39, v40);
      sub_1C443F744();
      _os_log_impl(v41, v42, v43, a7, a6, 0xCu);
      sub_1C440962C(v8);
      sub_1C43FFD4C();
      goto LABEL_10;
    }
  }
}

void sub_1C4AF1190()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock((v1 + 24));
  sub_1C4AF1990((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1C4AF11E8(void *a1, void *a2)
{
  v3 = a2[5];
  v4 = a2[6];
  sub_1C4409678(a2 + 2, v3);
  return (*(v4 + 16))(*a1, v3, v4);
}

uint64_t sub_1C4AF1254()
{
  sub_1C440962C((v0 + 16));

  sub_1C44149FC();

  return swift_deallocClassInstance();
}

void sub_1C4AF12B4()
{
  v1 = *(v0 + 56);
  os_unfair_lock_lock(v1 + 6);
  sub_1C4AF1744(&v1[4]);

  os_unfair_lock_unlock(v1 + 6);
}

void sub_1C4AF130C(uint64_t a1, void *a2)
{
  if (!*(*a1 + 24))
  {
    __break(1u);
LABEL_10:
    os_unfair_lock_unlock((v3 + 24));
    __break(1u);
    return;
  }

  if (*(*a1 + 16) == 1)
  {
    v5 = swift_unknownObjectRetain();
    if (!xpc_activity_copy_criteria(v5) || (swift_getObjectType(), v6 = sub_1C4A4E438(), swift_unknownObjectRelease(), v6))
    {
      v7 = a2[11];
      v8 = a2[12];
      sub_1C4409678(a2 + 8, v7);
      v3 = (*(v8 + 16))(v7, v8);
      MEMORY[0x1EEE9AC00](v3);
      os_unfair_lock_lock(v9 + 6);
      sub_1C4AF1760((v3 + 16));
      if (!v2)
      {
        os_unfair_lock_unlock((v3 + 24));
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_10;
    }

    swift_unknownObjectRelease();
  }
}

void sub_1C4AF143C(uint64_t a1, _xpc_activity_s *a2)
{
  sub_1C4409678((v2 + 16), *(v2 + 40));
  v5 = sub_1C4402B58();
  v6(v5);
  if (*(a1 + 16) == 1)
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v7 = sub_1C4F00978();
    sub_1C43FCEE8(v7, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v39 = sub_1C4F00968();
    sub_1C4F01CB8();
    v8 = sub_1C440F210();
    if (sub_1C441DE30(v8, v9, v10, v11, v12, v13, v14, v15, v39))
    {
      v16 = sub_1C43FD084();
      v41 = sub_1C43FFD34();
      *v16 = 136315138;
      v17 = sub_1C4404C28();
      v20 = sub_1C441D828(v17, v18, v19);

      *(v16 + 4) = v20;
      sub_1C443F744();
      _os_log_impl(v21, v22, v23, v24, v16, 0xCu);
      sub_1C440962C(v41);
      sub_1C43FEA20();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      sub_1C43FE9B4(&qword_1EDDFD028);
    }

    v25 = sub_1C4F00978();
    sub_1C43FCEE8(v25, qword_1EDE2DE10);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CB8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = sub_1C43FD084();
      v42 = sub_1C43FFD34();
      *v28 = 136315138;
      v29 = sub_1C4404C28();
      v32 = sub_1C441D828(v29, v30, v31);

      *(v28 + 4) = v32;
      sub_1C440A5A8();
      _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      sub_1C440962C(v42);
      sub_1C43FFD18();
      sub_1C43FFD4C();
    }

    else
    {
    }

    sub_1C4A4E2C4();
    xpc_activity_set_criteria(a2, v38);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1C4AF16BC()
{
  sub_1C440962C((v0 + 16));

  sub_1C440962C((v0 + 64));
  return v0;
}

uint64_t sub_1C4AF16EC()
{
  sub_1C4AF16BC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4AF1794(uint64_t a1, uint64_t a2)
{
  v8[3] = type metadata accessor for ScheduledTasks.AutonamingMetricsLoggingRunner(0);
  v8[4] = &off_1F43FB060;
  v4 = sub_1C4422F90(v8);
  sub_1C4AF1DBC(a1, v4, type metadata accessor for ScheduledTasks.AutonamingMetricsLoggingRunner);
  sub_1C442E860(v8, a2 + 16);
  type metadata accessor for ScheduledRunnerState();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  *(v5 + 40) = 0;
  sub_1C456902C(&qword_1EC0C1C70, &qword_1C4F470B0);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = v5;
  sub_1C440962C(v8);
  *(a2 + 56) = v6;
  return a2;
}

uint64_t sub_1C4AF186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C4434200(a1, a2, a3, a4, a5, a6, a7, a8, v13, v14[0], v14[1], v14[2], v14[3], v14[4]);
  type metadata accessor for ScheduledRunnerState();
  v10 = swift_allocObject();
  sub_1C4423C90(v10);
  sub_1C456902C(&qword_1EC0C1C70, &qword_1C4F470B0);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  *(v11 + 16) = v9;
  sub_1C440962C(v14);
  *(v8 + 56) = v11;
  return v8;
}

uint64_t sub_1C4AF18EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C43FFB44();
  v11[3] = v7(0);
  v11[4] = a4;
  v11[0] = v5;
  sub_1C442E860(v11, v4 + 16);
  type metadata accessor for ScheduledRunnerState();
  v8 = swift_allocObject();
  sub_1C4423C90(v8);
  sub_1C456902C(&qword_1EC0C1C70, &qword_1C4F470B0);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = a4;
  sub_1C440962C(v11);
  *(v4 + 56) = v9;
  return v4;
}

uint64_t sub_1C4AF19AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C4434200(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13[0], v13[1], v13[2], v13[3], v13[4]);
  type metadata accessor for BackgroundTaskScheduledRunnerState();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  sub_1C456902C(&qword_1EC0C3228, &qword_1C4F50190);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = v9;
  sub_1C440962C(v13);
  *(v8 + 56) = v10;
  return v8;
}

uint64_t sub_1C4AF1A88()
{
  sub_1C4404D98();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[12];
  v9 = swift_task_alloc();
  v10 = sub_1C43FC218(v9);
  *v10 = v11;
  v10[1] = sub_1C442E8C4;

  return sub_1C4AF06AC(v2, v3, v4, (v0 + 4), v5, v6, v7, v8);
}

uint64_t type metadata accessor for ScheduledTasks.AutonamingMetricsLoggingRunner(uint64_t a1)
{
  result = qword_1EDDE9528;
  if (!qword_1EDDE9528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AF1C6C(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4AF1DBC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

uint64_t sub_1C4AF1E18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_1C4AF1E6C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for Fuser(0);
  sub_1C43FBD18(v5);
  *(v3 + 32) = swift_task_alloc();
  v6 = type metadata accessor for Linker(0);
  sub_1C43FBD18(v6);
  *(v3 + 40) = swift_task_alloc();
  v7 = type metadata accessor for Source(0);
  *(v3 + 48) = v7;
  sub_1C43FBD18(v7);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();
  v8 = type metadata accessor for PhaseStores(0);
  sub_1C43FBD18(v8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();
  v9 = type metadata accessor for ScreenTimeSourceIngestor(0);
  *(v3 + 88) = v9;
  sub_1C43FBD18(v9);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 129) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1C4AF1FD0, 0, 0);
}

uint64_t sub_1C4AF1FD0()
{
  sub_1C441A3F0();
  sub_1C4471B4C(v1, v2, v3);
  if (qword_1EDDFD340 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 129);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);
  v8 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 64);
  v14 = *(v0 + 56);
  v15 = *(v0 + 72);
  v10 = *(v0 + 16);
  v11 = sub_1C442B738(*(v0 + 48), qword_1EDDFD348);
  *(v0 + 112) = v11;
  sub_1C4471B4C(v11, v5 + *(v7 + 20), type metadata accessor for Source);
  *(v5 + *(v7 + 24)) = v4;
  sub_1C4471B4C(v10, v8, type metadata accessor for PhaseStores);
  sub_1C4471B4C(v11, v9, type metadata accessor for Source);
  sub_1C4471B4C(v5, v6, type metadata accessor for ScreenTimeSourceIngestor);
  sub_1C4471B4C(v11, v14, type metadata accessor for Source);
  sub_1C4471B4C(v10, v15, type metadata accessor for PhaseStores);
  *(v0 + 128) = v4;
  v12 = swift_task_alloc();
  *(v0 + 120) = v12;
  *v12 = v0;
  v12[1] = sub_1C4AF21AC;

  return Linker.init(source:stores:pipelineType:)();
}

uint64_t sub_1C4AF21AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1C4AF22A8, 0, 0);
}

uint64_t sub_1C4AF22A8()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v22 = v0[8];
  v23 = v0[10];
  v5 = v0[4];
  v24 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  sub_1C4471B4C(v0[14], v0[7], type metadata accessor for Source);
  sub_1C441A3F0();
  sub_1C4471B4C(v7, v4, v8);
  Fuser.init(source:stores:pipelineType:)();
  sub_1C44855BC(v7, type metadata accessor for PhaseStores);
  sub_1C44855BC(v1, type metadata accessor for ScreenTimeSourceIngestor);
  v9 = (v6 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_sourceIngestor + 24) = v2;
  v9[4] = sub_1C4AF2590();
  v10 = sub_1C4422F90(v9);
  sub_1C4AF25E8(v3, v10, type metadata accessor for ScreenTimeSourceIngestor);
  sub_1C441FDB8();
  sub_1C4AF25E8(v22, v11, v12);
  sub_1C441FDB8();
  sub_1C4AF25E8(v23, v13, v14);
  sub_1C441FDB8();
  sub_1C4AF25E8(v24, v15, v16);
  sub_1C441FDB8();
  sub_1C4AF25E8(v5, v17, v18);
  *(v6 + OBJC_IVAR____TtC24IntelligencePlatformCore13PipelinePhase_pipelineType) = 1;

  v19 = v0[1];
  v20 = v0[3];

  return v19(v20);
}

uint64_t type metadata accessor for ScreenTimePhase(uint64_t a1)
{
  result = qword_1EDDE75B8;
  if (!qword_1EDDE75B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C4AF2590()
{
  result = qword_1EDDE1930;
  if (!qword_1EDDE1930)
  {
    type metadata accessor for ScreenTimeSourceIngestor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE1930);
  }

  return result;
}

uint64_t sub_1C4AF25E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for ScreenTimeSourceIngestor(uint64_t a1)
{
  result = qword_1EDDE1910;
  if (!qword_1EDDE1910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AF26BC()
{
  sub_1C43FBCD4();
  v1[4] = v0;
  v2 = sub_1C4EFC4E8();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C4AF2778, 0, 0);
}

uint64_t sub_1C4AF2778()
{
  sub_1C4EFC508();
  if (MEMORY[0x1C693B1E0]())
  {
    v0[2] = 0;
    v0[3] = 0;
    sub_1C4EFC4D8();
    v1 = swift_task_alloc();
    v0[8] = v1;
    *v1 = v0;
    v1[1] = sub_1C4AF2950;

    return MEMORY[0x1EEDC05F8]();
  }

  else
  {
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDE2DE10);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CF8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1C43F8000, v3, v4, "DeviceActivityAuthorization returns not authorized. ScreenTime ingest is blocked.", v5, 2u);
      MEMORY[0x1C6942830](v5, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();

    sub_1C43FBDA0();

    return v7();
  }
}

uint64_t sub_1C4AF2950()
{
  sub_1C43FBCD4();
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1C4AF2B90;
  }

  else
  {
    v2 = sub_1C4AF2A60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C4AF2A60()
{
  *(v0 + 80) = 0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  type metadata accessor for PhaseStores(0);
  v4 = swift_task_alloc();
  v4[2] = v2;
  v4[3] = v0 + 16;
  v4[4] = v0 + 24;
  v4[5] = v3;
  v4[6] = v0 + 80;
  v5 = sub_1C441A408();
  GraphStore.tripleInsertingTransaction(transactionBody:)(v5, v6);

  if (!v1)
  {
    sub_1C4EF9AE8();
    sub_1C46465D0();
  }

  v7 = sub_1C44064DC();
  v8(v7);
  sub_1C442D260();

  sub_1C43FBDA0();

  return v9();
}

uint64_t sub_1C4AF2B90()
{
  v13 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v12[0] = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v1, 0xD00000000000003CLL, 0x80000001C4FB1710, v2, v12);

  *(v0 + 80) = 0;
  v3 = *(v0 + 56);
  v4 = *(v0 + 32);
  type metadata accessor for PhaseStores(0);
  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v0 + 16;
  v5[4] = v0 + 24;
  v5[5] = v4;
  v5[6] = v0 + 80;
  v6 = sub_1C441A408();
  GraphStore.tripleInsertingTransaction(transactionBody:)(v6, v7);

  sub_1C4EF9AE8();
  sub_1C46465D0();
  v8 = sub_1C44064DC();
  v9(v8);
  sub_1C442D260();

  sub_1C43FBDA0();

  return v10();
}

uint64_t sub_1C4AF2D00(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C44311F0(a1, v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = *(a1 + *(type metadata accessor for ScreenTimeSourceIngestor(0) + 24));
  Pipeline.StatusStore.currentSessionId()();
  sub_1C44BCBEC(v9, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v11 = sub_1C4F01108();

  *(inited + 48) = v11;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C4AF2F88(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, _BYTE *a7@<X6>, _BYTE *a8@<X8>)
{
  v9 = v8;
  v154 = a7;
  v151 = a6;
  v161 = a5;
  v168 = a4;
  v165 = a1;
  v166 = a2;
  v153 = a8;
  v11 = type metadata accessor for EntityTriple(0);
  v157 = *(v11 - 8);
  v158 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C4EFC3D8();
  v170 = *(v14 - 8);
  v171 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v160 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C456902C(&qword_1EC0C3248, &qword_1C4F50838);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v162 = &v115 - v17;
  v169 = sub_1C456902C(&qword_1EC0C3250, &unk_1C4F50840);
  v164 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v167 = &v115 - v18;
  v148 = sub_1C4EFC458();
  v163 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v159 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v142 = &v115 - v21;
  v152 = sub_1C4EFC478();
  v149 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v156 = &v115 - v24;
  v147 = sub_1C4EFC538();
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v26 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1C4EFC558();
  v145 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v115 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1C4EFC438();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1C4EFC4A8();
  if (!v8)
  {
    v143 = v31;
    v137 = v33;
    v141 = v34;
    v139 = v30;
    v138 = v26;
    v155 = v29;
    v133 = v27;
    v144 = a3;
    if (qword_1EDDFECB0 == -1)
    {
      goto LABEL_8;
    }

    while (1)
    {
      swift_once();
LABEL_8:
      v40 = sub_1C4F00978();
      v41 = sub_1C442B738(v40, qword_1EDDFECB8);
      v42 = v141;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v130 = v41;
      v43 = sub_1C4F00968();
      v44 = sub_1C4F01CC8();

      v45 = os_log_type_enabled(v43, v44);
      v46 = v168;
      if (v45)
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v172 = v48;
        *v47 = 136380675;
        sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
        v49 = sub_1C4F00EE8();
        v51 = sub_1C441D828(v49, v50, &v172);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_1C43F8000, v43, v44, "Device user map: %{private}s", v47, 0xCu);
        sub_1C440962C(v48);
        MEMORY[0x1C6942830](v48, -1, -1);
        v46 = v168;
        MEMORY[0x1C6942830](v47, -1, -1);
      }

      v54 = v162;
      v53 = v163;
      v55 = v138;
      v56 = v139;
      v57 = v164;
      v58 = 0;
      v59 = v42 + 64;
      v60 = 1 << *(v42 + 32);
      v61 = -1;
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      v62 = v61 & *(v42 + 64);
      v63 = (v60 + 63) >> 6;
      v135 = (v143 + 8);
      v176 = *MEMORY[0x1E69667D8];
      v134 = (v146 + 104);
      v129 = v149 + 16;
      v140 = (v149 + 8);
      v163 = (v170 + 8);
      v164 = (v170 + 32);
      v127 = (v57 + 1);
      v128 = (v53 + 1);
      v132 = (v145 + 8);
      *&v52 = 136315138;
      v123 = v52;
      v64 = v42;
      v65 = v137;
      v122 = v59;
      v121 = v63;
      if (v62)
      {
        while (1)
        {
          v66 = v58;
LABEL_17:
          v67 = v62;
          v125 = v66;
          v68 = __clz(__rbit64(v62)) | (v66 << 6);
          v69 = *(v64 + 56);
          v70 = (*(v64 + 48) + 16 * v68);
          v71 = v70[1];
          v136 = *v70;
          v72 = *(v69 + 8 * v68);
          v145 = v71;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v146 = v72;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EFC4C8();
          sub_1C4EFC418();
          v74 = v73;
          (*v135)(v65, v56);
          if (v74)
          {
          }

          v75 = (v67 - 1) & v67;
          v76 = v146;
          v77 = *(v146 + 16);
          if (v77)
          {
            break;
          }

          v62 = v75;
LABEL_45:
          v58 = v125;
          v64 = v141;
          v59 = v122;
          v63 = v121;
          if (!v62)
          {
            goto LABEL_14;
          }
        }

        v78 = 0;
        v116 = v75;
        v120 = v77;
        v119 = v146 + 32;
        while (v78 < *(v76 + 16))
        {
          v124 = v78;
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          sub_1C4EF94A8();
          (*v134)(v55, v176, v147);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v79 = v155;
          sub_1C4EFC548();
          v80 = sub_1C4EFC4B8();
          v81 = v80;
          v82 = *(v80 + 16);
          if (v82)
          {
            v83 = 0;
            v84 = v149;
            v85 = v80 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
            v86 = v156;
            v126 = v80;
            v118 = v82;
            v117 = v85;
            while (2)
            {
              if (v83 >= *(v81 + 16))
              {
                goto LABEL_53;
              }

              v87 = *(v84 + 72);
              v143 = v83;
              v88 = *(v84 + 16);
              v89 = v152;
              v88(v86, v85 + v87 * v83, v152);
              v88(v150, v86, v89);
              v90 = sub_1C4F00968();
              v91 = sub_1C4F01CC8();
              if (os_log_type_enabled(v90, v91))
              {
                v92 = swift_slowAlloc();
                v93 = swift_slowAlloc();
                *&v172 = v93;
                *v92 = v123;
                v94 = v150;
                sub_1C4EFC468();
                v95 = sub_1C4F01198();
                v97 = v96;
                v131 = *v140;
                v131(v94, v152);
                v98 = sub_1C441D828(v95, v97, &v172);
                v54 = v162;

                *(v92 + 4) = v98;
                _os_log_impl(&dword_1C43F8000, v90, v91, "Device activity data: %s", v92, 0xCu);
                sub_1C440962C(v93);
                MEMORY[0x1C6942830](v93, -1, -1);
                v46 = v168;
                MEMORY[0x1C6942830](v92, -1, -1);
              }

              else
              {

                v131 = *v140;
                v131(v150, v89);
              }

              v99 = v159;
              v100 = v160;
              ++v143;
              sub_1C4EFC468();
              v101 = v167;
              sub_1C4EFC3E8();
              v102 = v161;
              while (1)
              {
                sub_1C4EFC488();
                v103 = v171;
                if (sub_1C44157D4(v54, 1, v171) == 1)
                {
                  break;
                }

                (*v164)(v100, v54, v103);
                if (__OFADD__(*v46, 1))
                {
                  __break(1u);
LABEL_50:
                  __break(1u);
                  goto LABEL_51;
                }

                ++*v46;
                v104 = sub_1C46BE844(v99, 0);
                v170 = 0;
                v105 = v104[2];
                if (v105)
                {
                  v175 = MEMORY[0x1E69E7CC0];
                  sub_1C459DD58();
                  v106 = v175;
                  v107 = v158;
                  v108 = v104 + ((*(v157 + 80) + 32) & ~*(v157 + 80));
                  v109 = *(v157 + 72);
                  do
                  {
                    sub_1C44311F0(v108, v13, type metadata accessor for EntityTriple);
                    v175 = v106;
                    v110 = *(v106 + 16);
                    if (v110 >= *(v106 + 24) >> 1)
                    {
                      sub_1C459DD58();
                      v107 = v158;
                      v106 = v175;
                    }

                    v173 = v107;
                    v174 = sub_1C4AF4494(&qword_1EDDF8D78, type metadata accessor for EntityTriple, &protocol conformance descriptor for EntityTriple);
                    v111 = sub_1C4422F90(&v172);
                    sub_1C44311F0(v13, v111, type metadata accessor for EntityTriple);
                    *(v106 + 16) = v110 + 1;
                    sub_1C441D670(&v172, v106 + 40 * v110 + 32);
                    sub_1C44BCBEC(v13, type metadata accessor for EntityTriple);
                    v108 += v109;
                    --v105;
                  }

                  while (v105);

                  v100 = v160;
                  v112 = v161;
                  v99 = v159;
                  v54 = v162;
                }

                else
                {
                  v112 = v102;

                  v106 = MEMORY[0x1E69E7CC0];
                }

                v113 = v170;
                v165(v106);
                v9 = v113;
                v101 = v167;
                if (v113)
                {

                  (*v163)(v100, v171);
                  (*v127)(v101, v169);
                  (*v128)(v99, v148);
                  v131(v156, v152);
                  (*v132)(v155, v133);
                  goto LABEL_2;
                }

                (*v163)(v100, v171);

                if (__OFADD__(*v112, 1))
                {
                  goto LABEL_50;
                }

                v102 = v112;
                ++*v112;
                v46 = v168;
              }

              (*v127)(v101, v169);
              (*v128)(v99, v148);
              v86 = v156;
              v131(v156, v152);
              v83 = v143;
              v79 = v155;
              v84 = v149;
              v55 = v138;
              v65 = v137;
              v81 = v126;
              v85 = v117;
              if (v143 != v118)
              {
                continue;
              }

              break;
            }
          }

          v76 = v146;
          v114 = v124 + 1;
          (*v132)(v79, v133);
          v78 = v114;
          v56 = v139;
          if (v114 == v120)
          {

            v62 = v116;
            goto LABEL_45;
          }
        }
      }

      else
      {
LABEL_14:
        while (1)
        {
          v66 = v58 + 1;
          if (__OFADD__(v58, 1))
          {
            break;
          }

          if (v66 >= v63)
          {

LABEL_4:
            v39 = v154;
            goto LABEL_6;
          }

          v62 = *(v59 + 8 * v66);
          ++v58;
          if (v62)
          {
            goto LABEL_17;
          }
        }

LABEL_51:
        __break(1u);
      }

      __break(1u);
LABEL_53:
      __break(1u);
    }
  }

LABEL_2:
  *&v172 = v9;
  v35 = v9;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  if (swift_dynamicCast())
  {

    v36 = v175;
    sub_1C465B58C();
    v37 = swift_allocError();
    *v38 = v36;
    v177 = 1;
    static Transformers.reportError(error:context:config:pipelineType:)(v37, 0x69546E6565726353, 0xEA0000000000656DLL, v151, &v177);

    goto LABEL_4;
  }

  LOBYTE(v172) = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v9, 0x69546E6565726353, 0xEA0000000000656DLL, v151, &v172);

  v39 = v154;
  *v154 = 1;
LABEL_6:
  *v153 = *v39;
}

uint64_t sub_1C4AF4270()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return sub_1C4AF26BC();
}

uint64_t sub_1C4AF4368(uint64_t a1)
{
  result = sub_1C4AF4494(qword_1EDDE1938, type metadata accessor for ScreenTimeSourceIngestor, &unk_1C4F5079C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AF43C0(uint64_t a1)
{
  result = sub_1C4AF4494(&qword_1EDDE1920, type metadata accessor for ScreenTimeSourceIngestor, &unk_1C4F507C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AF4418(uint64_t a1)
{
  result = sub_1C4AF4494(&qword_1EDDE1928, type metadata accessor for ScreenTimeSourceIngestor, &unk_1C4F507E0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C4AF4494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4AF44F4()
{

  sub_1C47D23E8();
  v1 = v0;

  return v1;
}

uint64_t sub_1C4AF457C()
{
  memcpy(__dst, v0, sizeof(__dst));

  sub_1C47D23E8();
  v2 = v1;

  return v2;
}

uint64_t sub_1C4AF460C()
{
  sub_1C44201E4();
  memcpy(__dst, v0, sizeof(__dst));

  sub_1C47D23E8();
  sub_1C4403374();
  return sub_1C440E410();
}

uint64_t sub_1C4AF4688()
{
  memcpy(__dst, v0, sizeof(__dst));

  sub_1C47D23E8();
  v2 = v1;

  return v2;
}

uint64_t sub_1C4AF4718()
{

  sub_1C47D23E8();
  v1 = v0;

  return v1;
}

uint64_t sub_1C4AF4790()
{

  sub_1C47D23E8();
  v1 = v0;

  return v1;
}

uint64_t sub_1C4AF4814()
{

  sub_1C47D23E8();
  v1 = v0;

  return v1;
}

uint64_t sub_1C4AF488C()
{

  sub_1C47D23E8();
  sub_1C4403374();
  return sub_1C440E410();
}

uint64_t sub_1C4AF4904()
{

  sub_1C47D23E8();
  v1 = v0;

  return v1;
}

uint64_t sub_1C4AF497C()
{
  memcpy(__dst, v0, sizeof(__dst));

  sub_1C47D23E8();
  v2 = v1;

  return v2;
}

uint64_t sub_1C4AF4A14()
{

  sub_1C47D23E8();
  v1 = v0;

  return v1;
}

uint64_t sub_1C4AF4A8C()
{

  sub_1C47D23E8();
  v1 = v0;

  return v1;
}

uint64_t sub_1C4AF4B10()
{

  sub_1C47D23E8();
  v1 = v0;

  return v1;
}

uint64_t sub_1C4AF4B98()
{
  memcpy(__dst, v0, sizeof(__dst));

  sub_1C47D23E8();
  v2 = v1;

  return v2;
}

uint64_t sub_1C4AF4C30()
{
  memcpy(__dst, v0, sizeof(__dst));

  sub_1C47D23E8();
  v2 = v1;

  return v2;
}

uint64_t sub_1C4AF4CC8()
{

  sub_1C47D23E8();
  sub_1C4403374();
  return sub_1C440E410();
}

uint64_t sub_1C4AF4D28()
{
  sub_1C44201E4();
  sub_1C43FF518(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return sub_1C4AF460C();
}

uint64_t sub_1C4AF4D60()
{
  sub_1C44201E4();
  sub_1C43FF518(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return sub_1C4AF497C();
}

uint64_t sub_1C4AF4E90()
{
  sub_1C44201E4();
  sub_1C43FF518(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return sub_1C4AF4688();
}

uint64_t sub_1C4AF4EC8()
{
  sub_1C44201E4();
  sub_1C43FF518(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return sub_1C4AF4C30();
}

uint64_t sub_1C4AF4F10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v24[0] = 0;
  *(&v24[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v24, "SELECT * FROM ");
  HIBYTE(v24[0]) = -18;
  v8 = *(a2 + 8);
  v22 = *a2;
  v23 = v8;
  MEMORY[0x1C6940010]();
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_1C4EFB758();
  v9 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v24, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DF70);
    v27 = *(a2 + 24);
    v26 = *(a2 + 32);
    v11 = v23;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4AF994C(&v27, v24);
    sub_1C448DB48(&v26, v24);
    v12 = v2;
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();

    sub_1C4423A0C(&v27, &qword_1EC0BB018, qword_1C4F50870);
    sub_1C4471348(&v26);

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v24[0] = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_1C441D828(v22, v11, v24);
      *(v15 + 12) = 2112;
      v18 = v2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v19;
      *v16 = v19;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Error when reading from table %s: %@", v15, 0x16u);
      sub_1C4423A0C(v16, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v16, -1, -1);
      sub_1C440962C(v17);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v20 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v24, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v9;
}

uint64_t sub_1C4AF52EC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v25[0] = 0;
  *(&v25[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v25, "SELECT * FROM ");
  HIBYTE(v25[0]) = -18;
  v8 = a2[1];
  v24 = *a2;
  v27 = v8;
  MEMORY[0x1C6940010]();
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1C4EFB758();
  v9 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DF70);
    sub_1C4AF9A80(a2, v25);
    v11 = v2;
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v25[0] = v16;
      *v14 = 136315394;
      v17 = v27;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9ADC(a2);
      v18 = sub_1C441D828(v24, v17, v25);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2112;
      v19 = v2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&dword_1C43F8000, v12, v13, "Error when reading from table %s: %@", v14, 0x16u);
      sub_1C4423A0C(v15, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v15, -1, -1);
      sub_1C440962C(v16);
      MEMORY[0x1C6942830](v16, -1, -1);
      MEMORY[0x1C6942830](v14, -1, -1);
    }

    else
    {

      sub_1C4AF9ADC(a2);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v21 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v9;
}

uint64_t sub_1C4AF569C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v25[0] = 0;
  *(&v25[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v25, "SELECT * FROM ");
  HIBYTE(v25[0]) = -18;
  v8 = *(a2 + 16);
  v24 = *(a2 + 8);
  v27 = v8;
  MEMORY[0x1C6940010]();
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1C4EFB758();
  v9 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DF70);
    sub_1C46A9810(a2, v25);
    v11 = v2;
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v25[0] = v16;
      *v14 = 136315394;
      v17 = v27;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF99F4(a2);
      v18 = sub_1C441D828(v24, v17, v25);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2112;
      v19 = v2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&dword_1C43F8000, v12, v13, "Error when reading from table %s: %@", v14, 0x16u);
      sub_1C4423A0C(v15, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v15, -1, -1);
      sub_1C440962C(v16);
      MEMORY[0x1C6942830](v16, -1, -1);
      MEMORY[0x1C6942830](v14, -1, -1);
    }

    else
    {

      sub_1C4AF99F4(a2);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v21 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v9;
}

uint64_t sub_1C4AF5A4C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v25[0] = 0;
  *(&v25[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v25, "SELECT * FROM ");
  HIBYTE(v25[0]) = -18;
  v8 = a2[1];
  v24 = *a2;
  v27 = v8;
  MEMORY[0x1C6940010]();
  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1C4EFB758();
  v9 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DF70);
    sub_1C4A4CA50(a2, v25);
    v11 = v2;
    v12 = sub_1C4F00968();
    v13 = sub_1C4F01CD8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v25[0] = v16;
      *v14 = 136315394;
      v17 = v27;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9888(a2);
      v18 = sub_1C441D828(v24, v17, v25);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2112;
      v19 = v2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v20;
      *v15 = v20;
      _os_log_impl(&dword_1C43F8000, v12, v13, "Error when reading from table %s: %@", v14, 0x16u);
      sub_1C4423A0C(v15, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v15, -1, -1);
      sub_1C440962C(v16);
      MEMORY[0x1C6942830](v16, -1, -1);
      MEMORY[0x1C6942830](v14, -1, -1);
    }

    else
    {

      sub_1C4AF9888(a2);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v21 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v9;
}

uint64_t sub_1C4AF5DFC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v25[7] = a4;
  sub_1C4EFB768();
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4400C40();
  sub_1C4F02248();

  sub_1C441A424();
  v25[0] = v8;
  v25[1] = v9;
  MEMORY[0x1C6940010](a2, a3);
  sub_1C4408F48();
  sub_1C4EFBC18();
  if (v4)
  {

    v10 = sub_1C4411080();
    v11(v10);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC(&qword_1EDDFECD0);
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v13 = v4;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_1C441D828(a2, a3, v25);
      *(v16 + 12) = 2112;
      v19 = v4;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v20;
      *v17 = v20;
      _os_log_impl(&dword_1C43F8000, v14, v15, "Error when reading from table %s: %@", v16, 0x16u);
      sub_1C4423A0C(v17, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBE2C();
      sub_1C440962C(v18);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    sub_1C47DCC80();
    swift_allocError();
    *v21 = v4;
    swift_willThrow();
  }

  else
  {

    v22 = sub_1C4411080();
    v23(v22);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return sub_1C440E410();
}

uint64_t sub_1C4AF6124(uint64_t a1, void *a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v22[0] = 0;
  *(&v22[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v22, "SELECT * FROM ");
  HIBYTE(v22[0]) = -18;
  MEMORY[0x1C6940010](*a2, a2[1]);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_1C4EFB758();
  v8 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v22, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDE2DF70);
    sub_1C4AF9BE8(a2, v22);
    v10 = v2;
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CD8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v13 = 136315394;
      v16 = v22[0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9C44(v22);
      v17 = sub_1C441D828(v16, *(&v16 + 1), &v24);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2112;
      v18 = v2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v19;
      *v14 = v19;
      _os_log_impl(&dword_1C43F8000, v11, v12, "Error when reading from table %s: %@", v13, 0x16u);
      sub_1C4423A0C(v14, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v14, -1, -1);
      sub_1C440962C(v15);
      MEMORY[0x1C6942830](v15, -1, -1);
      MEMORY[0x1C6942830](v13, -1, -1);
    }

    else
    {

      sub_1C4AF9C44(v22);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v20 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v22, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v8;
}

uint64_t sub_1C4AF64CC(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v24[0] = 0;
  *(&v24[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v24, "SELECT * FROM ");
  HIBYTE(v24[0]) = -18;
  v8 = a2[1];
  v22 = *a2;
  v23 = v8;
  MEMORY[0x1C6940010]();
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_1C4EFB758();
  v9 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v24, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v10 = sub_1C4F00978();
    sub_1C442B738(v10, qword_1EDE2DF70);
    v26 = a2[4];
    v11 = v23;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4AF994C(&v26, v24);
    v12 = v2;
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CD8();

    sub_1C4423A0C(&v26, &qword_1EC0BB018, qword_1C4F50870);

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v24[0] = v17;
      *v15 = 136315394;
      *(v15 + 4) = sub_1C441D828(v22, v11, v24);
      *(v15 + 12) = 2112;
      v18 = v2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v19;
      *v16 = v19;
      _os_log_impl(&dword_1C43F8000, v13, v14, "Error when reading from table %s: %@", v15, 0x16u);
      sub_1C4423A0C(v16, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v16, -1, -1);
      sub_1C440962C(v17);
      MEMORY[0x1C6942830](v17, -1, -1);
      MEMORY[0x1C6942830](v15, -1, -1);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v20 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v24, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v9;
}

uint64_t sub_1C4AF688C(uint64_t a1, void *a2)
{
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v22[0] = 0;
  *(&v22[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v22, "SELECT * FROM ");
  HIBYTE(v22[0]) = -18;
  MEMORY[0x1C6940010](*a2, a2[1]);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  sub_1C4EFB758();
  v8 = sub_1C4EFBC18();
  if (v2)
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v22, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v9 = sub_1C4F00978();
    sub_1C442B738(v9, qword_1EDE2DF70);
    sub_1C4707E5C(a2, v22);
    v10 = v2;
    v11 = sub_1C4F00968();
    v12 = sub_1C4F01CD8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v13 = 136315394;
      v16 = v22[0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4707ED4(v22);
      v17 = sub_1C441D828(v16, *(&v16 + 1), &v24);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2112;
      v18 = v2;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v19;
      *v14 = v19;
      _os_log_impl(&dword_1C43F8000, v11, v12, "Error when reading from table %s: %@", v13, 0x16u);
      sub_1C4423A0C(v14, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v14, -1, -1);
      sub_1C440962C(v15);
      MEMORY[0x1C6942830](v15, -1, -1);
      MEMORY[0x1C6942830](v13, -1, -1);
    }

    else
    {

      sub_1C4707ED4(v22);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v20 = v2;
    swift_willThrow();
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    sub_1C4423A0C(v22, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v8;
}

uint64_t sub_1C4AF6C78(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v25[0] = 0;
  *(&v25[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v25, "SELECT * FROM ");
  HIBYTE(v25[0]) = -18;
  MEMORY[0x1C6940010](*a2, a2[1]);
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v27 = a3;
  v10 = sub_1C4F02858();
  MEMORY[0x1C6940010](v10);

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1C4EFB758();
  v11 = sub_1C4EFBC18();
  if (v3)
  {

    (*(v7 + 8))(v9, v6);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DF70);
    sub_1C4AF9BE8(a2, v25);
    v13 = v3;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v16 = 136315394;
      v19 = v25[0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9C44(v25);
      v20 = sub_1C441D828(v19, *(&v19 + 1), &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2112;
      v21 = v3;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v22;
      *v17 = v22;
      _os_log_impl(&dword_1C43F8000, v14, v15, "Error when reading from table %s: %@", v16, 0x16u);
      sub_1C4423A0C(v17, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v17, -1, -1);
      sub_1C440962C(v18);
      MEMORY[0x1C6942830](v18, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    else
    {

      sub_1C4AF9C44(v25);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v23 = v3;
    swift_willThrow();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v11;
}

uint64_t sub_1C4AF706C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v28[0] = 0;
  *(&v28[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v28, "SELECT * FROM ");
  HIBYTE(v28[0]) = -18;
  v10 = *(a2 + 16);
  v26 = *(a2 + 8);
  v27 = v10;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v30 = a3;
  v11 = sub_1C4F02858();
  MEMORY[0x1C6940010](v11);

  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_1C4EFB758();
  v12 = sub_1C4EFBC18();
  if (v3)
  {

    (*(v7 + 8))(v9, v6);
    sub_1C4423A0C(v28, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    sub_1C46A9810(a2, v28);
    v14 = v3;
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v28[0] = v19;
      *v17 = 136315394;
      v20 = v27;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF99F4(a2);
      v21 = sub_1C441D828(v26, v20, v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2112;
      v22 = v3;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Error when reading from table %s: %@", v17, 0x16u);
      sub_1C4423A0C(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v18, -1, -1);
      sub_1C440962C(v19);
      MEMORY[0x1C6942830](v19, -1, -1);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    else
    {

      sub_1C4AF99F4(a2);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v24 = v3;
    swift_willThrow();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    sub_1C4423A0C(v28, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v12;
}

uint64_t sub_1C4AF7464(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v25[0] = 0;
  *(&v25[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v25, "SELECT * FROM ");
  HIBYTE(v25[0]) = -18;
  MEMORY[0x1C6940010](*a2, a2[1]);
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v27 = a3;
  v10 = sub_1C4F02858();
  MEMORY[0x1C6940010](v10);

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1C4EFB758();
  v11 = sub_1C4EFBC18();
  if (v3)
  {

    (*(v7 + 8))(v9, v6);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDE2DF70);
    sub_1C4707E5C(a2, v25);
    v13 = v3;
    v14 = sub_1C4F00968();
    v15 = sub_1C4F01CD8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v16 = 136315394;
      v19 = v25[0];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4707ED4(v25);
      v20 = sub_1C441D828(v19, *(&v19 + 1), &v27);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2112;
      v21 = v3;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v22;
      *v17 = v22;
      _os_log_impl(&dword_1C43F8000, v14, v15, "Error when reading from table %s: %@", v16, 0x16u);
      sub_1C4423A0C(v17, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v17, -1, -1);
      sub_1C440962C(v18);
      MEMORY[0x1C6942830](v18, -1, -1);
      MEMORY[0x1C6942830](v16, -1, -1);
    }

    else
    {

      sub_1C4707ED4(v25);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v23 = v3;
    swift_willThrow();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v11;
}

uint64_t sub_1C4AF789C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v25[0] = 0;
  *(&v25[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v25, "SELECT * FROM ");
  HIBYTE(v25[0]) = -18;
  v9 = a2[1];
  v24[0] = *a2;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v27 = a3;
  v10 = sub_1C4F02858();
  MEMORY[0x1C6940010](v10);

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1C4EFB758();
  v11 = v24[1];
  v12 = sub_1C4EFBC18();
  if (v11)
  {

    (*(v6 + 8))(v8, v5);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    v28 = a2[4];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4AF994C(&v28, v25);
    v14 = v11;
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    sub_1C4423A0C(&v28, &qword_1EC0BB018, qword_1C4F50870);

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v25[0] = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_1C441D828(v24[0], v9, v25);
      *(v17 + 12) = 2112;
      v20 = v11;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Error when reading from table %s: %@", v17, 0x16u);
      sub_1C4423A0C(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v18, -1, -1);
      sub_1C440962C(v19);
      MEMORY[0x1C6942830](v19, -1, -1);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v22 = v11;
    swift_willThrow();
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v12;
}

uint64_t sub_1C4AF7CA8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C4EFB768();
  sub_1C4412DFC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4400C40();
  sub_1C4F02248();

  sub_1C441A424();
  v33[0] = v10;
  v33[1] = v11;
  v31 = a2;
  v12 = a2;
  v13 = a3;
  MEMORY[0x1C6940010](v12, a3);
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v33[7] = a6;
  v14 = sub_1C4F02858();
  MEMORY[0x1C6940010](v14);

  sub_1C4408F48();
  v15 = sub_1C4EFBC18();
  if (v32)
  {

    v16 = sub_1C4411080();
    v17(v16);
    sub_1C4423A0C(v33, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      sub_1C44066DC(&qword_1EDDFECD0);
    }

    v18 = sub_1C4F00978();
    sub_1C442B738(v18, qword_1EDE2DF70);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v19 = v32;
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CD8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v22 = 136315394;
      *(v22 + 4) = sub_1C441D828(v31, v13, v33);
      *(v22 + 12) = 2112;
      v25 = v32;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v26;
      *v23 = v26;
      _os_log_impl(&dword_1C43F8000, v20, v21, "Error when reading from table %s: %@", v22, 0x16u);
      sub_1C4423A0C(v23, &qword_1EC0BDA00, &qword_1C4F10D30);
      sub_1C43FBE2C();
      sub_1C440962C(v24);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    sub_1C47DCC80();
    swift_allocError();
    *v27 = v32;
    swift_willThrow();
  }

  else
  {

    v28 = sub_1C4411080();
    v29(v28);
    sub_1C4423A0C(v33, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v15;
}

uint64_t sub_1C4AF8020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v25[0] = 0;
  *(&v25[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v25, "SELECT * FROM ");
  HIBYTE(v25[0]) = -18;
  v9 = *(a2 + 8);
  v24[0] = *a2;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v27 = a3;
  v10 = sub_1C4F02858();
  MEMORY[0x1C6940010](v10);

  v26 = 0;
  memset(v25, 0, sizeof(v25));
  sub_1C4EFB758();
  v11 = v24[1];
  v12 = sub_1C4EFBC18();
  if (v11)
  {

    (*(v6 + 8))(v8, v5);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    v29 = *(a2 + 24);
    v28 = *(a2 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4AF994C(&v29, v25);
    sub_1C448DB48(&v28, v25);
    v14 = v11;
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    sub_1C4423A0C(&v29, &qword_1EC0BB018, qword_1C4F50870);
    sub_1C4471348(&v28);

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v25[0] = v19;
      *v17 = 136315394;
      *(v17 + 4) = sub_1C441D828(v24[0], v9, v25);
      *(v17 + 12) = 2112;
      v20 = v11;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Error when reading from table %s: %@", v17, 0x16u);
      sub_1C4423A0C(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v18, -1, -1);
      sub_1C440962C(v19);
      MEMORY[0x1C6942830](v19, -1, -1);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v22 = v11;
    swift_willThrow();
  }

  else
  {

    (*(v6 + 8))(v8, v5);
    sub_1C4423A0C(v25, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v12;
}

uint64_t sub_1C4AF8448(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v28[0] = 0;
  *(&v28[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v28, "SELECT * FROM ");
  HIBYTE(v28[0]) = -18;
  v10 = a2[1];
  v26 = *a2;
  v27 = v10;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v30 = a3;
  v11 = sub_1C4F02858();
  MEMORY[0x1C6940010](v11);

  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_1C4EFB758();
  v12 = sub_1C4EFBC18();
  if (v3)
  {

    (*(v7 + 8))(v9, v6);
    sub_1C4423A0C(v28, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    sub_1C4AF9A80(a2, v28);
    v14 = v3;
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v28[0] = v19;
      *v17 = 136315394;
      v20 = v27;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9ADC(a2);
      v21 = sub_1C441D828(v26, v20, v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2112;
      v22 = v3;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Error when reading from table %s: %@", v17, 0x16u);
      sub_1C4423A0C(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v18, -1, -1);
      sub_1C440962C(v19);
      MEMORY[0x1C6942830](v19, -1, -1);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    else
    {

      sub_1C4AF9ADC(a2);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v24 = v3;
    swift_willThrow();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    sub_1C4423A0C(v28, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v12;
}

uint64_t sub_1C4AF8840(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1C4EFB768();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v28[0] = 0;
  *(&v28[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v28, "SELECT * FROM ");
  HIBYTE(v28[0]) = -18;
  v10 = a2[1];
  v26 = *a2;
  v27 = v10;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0x2054494D494C20, 0xE700000000000000);
  v30 = a3;
  v11 = sub_1C4F02858();
  MEMORY[0x1C6940010](v11);

  v29 = 0;
  memset(v28, 0, sizeof(v28));
  sub_1C4EFB758();
  v12 = sub_1C4EFBC18();
  if (v3)
  {

    (*(v7 + 8))(v9, v6);
    sub_1C4423A0C(v28, &unk_1EC0BC770, &qword_1C4F10DC0);
    if (qword_1EDDFECD0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C4F00978();
    sub_1C442B738(v13, qword_1EDE2DF70);
    sub_1C4A4CA50(a2, v28);
    v14 = v3;
    v15 = sub_1C4F00968();
    v16 = sub_1C4F01CD8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v28[0] = v19;
      *v17 = 136315394;
      v20 = v27;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4AF9888(a2);
      v21 = sub_1C441D828(v26, v20, v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2112;
      v22 = v3;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v23;
      *v18 = v23;
      _os_log_impl(&dword_1C43F8000, v15, v16, "Error when reading from table %s: %@", v17, 0x16u);
      sub_1C4423A0C(v18, &qword_1EC0BDA00, &qword_1C4F10D30);
      MEMORY[0x1C6942830](v18, -1, -1);
      sub_1C440962C(v19);
      MEMORY[0x1C6942830](v19, -1, -1);
      MEMORY[0x1C6942830](v17, -1, -1);
    }

    else
    {

      sub_1C4AF9888(a2);
    }

    sub_1C47DCC80();
    swift_allocError();
    *v24 = v3;
    swift_willThrow();
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    sub_1C4423A0C(v28, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  return v12;
}

uint64_t sub_1C4AF8C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v8 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    v27 = a4;
    v28 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v9, 0);
    v10 = v29;
    v11 = *(v29 + 16);
    v12 = 16 * v11;
    do
    {
      v29 = v10;
      v13 = *(v10 + 24);
      v14 = v11 + 1;
      if (v11 >= v13 >> 1)
      {
        sub_1C44CD9C0(v13 > 1, v11 + 1, 1);
        v10 = v29;
      }

      *(v10 + 16) = v14;
      v15 = v10 + v12;
      *(v15 + 32) = 63;
      *(v15 + 40) = 0xE100000000000000;
      v12 += 16;
      v11 = v14;
      --v9;
    }

    while (v9);
    v6 = v27;
    v8 = v28;
  }

  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4AF93B0(&qword_1EDDFCED0, MEMORY[0x1E69E6310]);
  v16 = sub_1C4F01048();
  v18 = v17;

  sub_1C4F02248();

  sub_1C441A424();
  v29 = v19;
  v30 = v20;
  v21 = (*(a5 + 8))(a2, a5);
  MEMORY[0x1C6940010](v21);

  MEMORY[0x1C6940010](0x20455245485720, 0xE700000000000000);
  v22 = (*(v6 + 8))(a2, v6);
  MEMORY[0x1C6940010](v22);

  MEMORY[0x1C6940010](0x28206E6920, 0xE500000000000000);
  MEMORY[0x1C6940010](v16, v18);

  MEMORY[0x1C6940010](41, 0xE100000000000000);
  (*(a5 + 16))(a2, a5);

  MEMORY[0x1EEE9AC00](v23);
  v26[2] = v29;
  v26[3] = v30;
  v26[4] = v8;
  v24 = sub_1C49A52FC(sub_1C4AF9390, v26);

  return v24;
}

uint64_t sub_1C4AF8EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v46 = sub_1C4EFF0C8();
  v9 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C4EFB768();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v32 = v12;
    v33 = v5;
    v34 = v11;
    v35 = a5;
    *&v44[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v14, 0);
    v15 = *&v44[0];
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v18 = a4 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v40 = *(v16 + 56);
    v41 = v17;
    v42 = v16;
    v19 = (v16 - 8);
    do
    {
      v20 = v43;
      v21 = v46;
      v41(v43, v18, v46);
      v22 = sub_1C4EFF068();
      v24 = v23;
      (*v19)(v20, v21);
      *&v44[0] = v15;
      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1C44CD9C0(v25 > 1, v26 + 1, 1);
        v15 = *&v44[0];
      }

      *(v15 + 16) = v26 + 1;
      v27 = v15 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
      v18 += v40;
      --v14;
    }

    while (v14);
    v11 = v34;
    a5 = v35;
    v12 = v32;
    v6 = v33;
  }

  sub_1C4EFBC58();
  *&v44[0] = v15;
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4AF93B0(&qword_1EDDFCEC0, MEMORY[0x1E69E6328]);
  v28 = v36;
  sub_1C4EFB798();
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v29 = sub_1C4EFBC18();
  if (v6)
  {
    sub_1C4423A0C(v44, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v12 + 8))(v28, v11);
  }

  else
  {
    v31 = v29;
    sub_1C4423A0C(v44, &unk_1EC0BC770, &qword_1C4F10DC0);
    result = (*(v12 + 8))(v28, v11);
    *a5 = v31;
  }

  return result;
}

uint64_t sub_1C4AF9248()
{
  sub_1C44201E4();
  memcpy(v2, v0, sizeof(v2));
  return sub_1C4AF457C();
}

uint64_t sub_1C4AF9288()
{
  sub_1C44201E4();
  memcpy(v2, v0, sizeof(v2));
  return sub_1C4AF4B98();
}

uint64_t sub_1C4AF93B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&unk_1EC0B9620, &unk_1C4F0E870);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C4AF9400@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = a2[2];
  result = sub_1C4AF4F10(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF9448@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(v7, a2, sizeof(v7));
  result = sub_1C4AF52EC(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF94A4@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_1C4AF569C(a1, __dst);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF9500@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_1C4AF5A4C(a1, __dst);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF955C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4AF6124(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF9588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = *(a2 + 32);
  result = sub_1C4AF64CC(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF95D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C4AF688C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C4AF95FC()
{
  sub_1C440FB14();
  result = sub_1C4AF5DFC(v2, v3, v4, v5);
  if (!v1)
  {
    *v0 = result;
  }

  return result;
}

uint64_t sub_1C4AF9628@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C4AF6C78(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF9654@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_1C4AF706C(a1, __dst, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF96B8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1C4AF7464(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF96E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  v9 = *(a2 + 32);
  result = sub_1C4AF789C(a1, v8, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF972C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  v8[2] = a2[2];
  result = sub_1C4AF8020(a1, v8, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF9774@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  memcpy(v9, a2, sizeof(v9));
  result = sub_1C4AF8448(a1, v9, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF97D8@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  result = sub_1C4AF8840(a1, __dst, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C4AF983C()
{
  sub_1C440FB14();
  result = sub_1C4AF7CA8(v2, v3, v4, v5, v6, v7);
  if (!v1)
  {
    *v0 = result;
  }

  return result;
}

uint64_t sub_1C4AF994C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB018, qword_1C4F50870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AF9D00(__int16 a1)
{
  v1 = a1;
  v2 = HIBYTE(a1);
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0xD000000000000025;
  *(inited + 40) = 0x80000001C4F9B1D0;
  v4 = objc_opt_self();
  *(inited + 48) = [v4 featureValueWithInt64_];
  *(inited + 56) = 0xD000000000000019;
  *(inited + 64) = 0x80000001C4F9B200;
  *(inited + 72) = [v4 featureValueWithInt64_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C4AF9E08(__int16 a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_1C4AF9D00(a1);
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
          v17 = sub_1C445FAA8(0xD00000000000001DLL, 0x80000001C4F9B1B0);
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

uint64_t sub_1C4AFA02C@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a3;
  v12 = a3 >> 8;
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v13 + 32))(a6, a1);
  result = type metadata accessor for SemanticLocationEvent(0);
  *(a6 + *(result + 20)) = a2;
  v15 = a6 + *(result + 24);
  *v15 = v8;
  *(v15 + 1) = v12;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  return result;
}

uint64_t sub_1C4AFA0E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C4AFA110@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for SemanticLocationEvent(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v34 = a3;
    v18 = sub_1C4EF9CD8();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v15, a2, v18);
    v15[*(v12 + 20)] = [v17 starting];
    v33 = sub_1C4AFA9EC([v17 userSpecificPlaceType]);
    v32 = sub_1C4AFAABC([v17 placeType]);
    v20 = [v17 loiIdentifier];
    if (v20)
    {
      v21 = v20;
      sub_1C4EF9D18();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v25 = sub_1C4EF9D38();
    sub_1C440BAA8(v3, v22, 1, v25);
    sub_1C4631F8C(v3, v11);
    if (sub_1C44157D4(v11, 1, v25) == 1)
    {
      (*(v19 + 8))(a2, v18);

      sub_1C4420C3C(v11, &qword_1EC0B9DC8, &unk_1C4F124A0);
      v26 = 0;
      v27 = 0;
    }

    else
    {
      v26 = sub_1C4EF9CF8();
      v27 = v28;

      (*(v19 + 8))(a2, v18);
      (*(*(v25 - 8) + 8))(v11, v25);
    }

    v29 = &v15[*(v12 + 24)];
    v30 = v32;
    *v29 = v33;
    v29[1] = v30;
    *(v29 + 1) = v26;
    *(v29 + 2) = v27;
    v31 = v34;
    sub_1C4AFA6A4(v15, v34);
    return sub_1C440BAA8(v31, 0, 1, v12);
  }

  else
  {

    sub_1C4EF9CD8();
    sub_1C43FBCE0();
    (*(v23 + 8))(a2);

    return sub_1C440BAA8(a3, 1, 1, v12);
  }
}

void sub_1C4AFA498(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v8 = sub_1C456902C(&qword_1EC0BF988, &qword_1C4F3B500);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FC0C8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  v13 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v14 = [v13 Semantic];
  swift_unknownObjectRelease();
  sub_1C46745FC();

  if (!v1)
  {
    sub_1C445FFF0(v12, v2, &qword_1EC0BF988, &qword_1C4F3B500);
    sub_1C445FFF0(a1, v7, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C4939C98();
    sub_1C4420C3C(v12, &qword_1EC0BF988, &qword_1C4F3B500);
  }
}

uint64_t type metadata accessor for SemanticLocationEvent(uint64_t a1)
{
  result = qword_1EDDE32F0;
  if (!qword_1EDDE32F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4AFA6A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SemanticLocationEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4AFA730(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C4AFA7C4()
{
  result = qword_1EC0C3258;
  if (!qword_1EC0C3258)
  {
    sub_1C4572308(&qword_1EC0BF998, &unk_1C4F3B510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C3258);
  }

  return result;
}

void sub_1C4AFA844(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BF998, &unk_1C4F3B510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v8 - v6;
  sub_1C4AFA498(a1);
  if (!v2)
  {
    sub_1C4AFA918(v7, a2);
  }
}

uint64_t sub_1C4AFA918(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF998, &unk_1C4F3B510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4AFA988()
{
  result = qword_1EDDDC480;
  if (!qword_1EDDDC480)
  {
    sub_1C4572308(&qword_1EC0C3260, &unk_1C4F50A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC480);
  }

  return result;
}

uint64_t sub_1C4AFA9EC(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 5)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDDFECB8);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CE8();
    if (sub_1C43FD0E8(v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      v5[1] = v1;
      sub_1C440B1D4();
      _os_log_impl(v6, v7, v8, v9, v10, 8u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    return 0;
  }

  return v1;
}

uint64_t sub_1C4AFAABC(uint64_t a1)
{
  v1 = a1;
  if (a1 >= 4)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDDFECB8);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CE8();
    if (sub_1C43FD0E8(v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67109120;
      v5[1] = v1;
      sub_1C440B1D4();
      _os_log_impl(v6, v7, v8, v9, v10, 8u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    return 0;
  }

  return v1;
}

uint64_t sub_1C4AFAB8C(uint64_t a1)
{
  v2 = a1;
  v3 = [BiomeLibrary() Location];
  swift_unknownObjectRelease();
  v4 = [v3 Semantic];
  swift_unknownObjectRelease();
  *(v1 + 16) = v4;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t sub_1C4AFAC80()
{
  v12 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 2, 0);
  v0 = 0;
  v1 = 0;
  v2 = v12;
  v3 = *(v12 + 16);
  v4 = 16 * v3;
  do
  {
    v5 = v0;
    if (*(&unk_1F43D28E8 + v1 + 32))
    {
      v6 = 0xD000000000000018;
    }

    else
    {
      v6 = 0x79745F6563616C70;
    }

    if (*(&unk_1F43D28E8 + v1 + 32))
    {
      v7 = 0x80000001C4F91770;
    }

    else
    {
      v7 = 0xEA00000000006570;
    }

    v13 = v2;
    v8 = *(v2 + 24);
    v9 = v3 + 1;
    if (v3 >= v8 >> 1)
    {
      sub_1C44CD9C0(v8 > 1, v3 + 1, 1);
      v2 = v13;
    }

    *(v2 + 16) = v9;
    v10 = v2 + v4;
    *(v10 + 32) = v6;
    *(v10 + 40) = v7;
    v4 += 16;
    v0 = 1;
    v3 = v9;
    v1 = 1u;
  }

  while ((v5 & 1) == 0);

  return sub_1C4499940();
}

uint64_t sub_1C4AFADB8(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  sub_1C4AFAE10(v1, a1, &v5);
  objc_autoreleasePoolPop(v3);
  return v5;
}

uint64_t sub_1C4AFAE10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &aBlock - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = *(a1 + 16);
  v14 = sub_1C4EF9CD8();
  sub_1C440BAA8(v11, 1, 1, v14);
  (*(*(v14 - 8) + 16))(v8, a2, v14);
  sub_1C440BAA8(v8, 0, 1, v14);
  v15 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v16 = sub_1C457A86C(v11, v8, 1, 1, 0);
  v17 = [v13 publisherWithOptions_];

  v30 = sub_1C4AFB170;
  v31 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C45AF9C8;
  v29 = &unk_1F43FB398;
  v18 = _Block_copy(&aBlock);
  v19 = [v17 filterWithIsIncluded_];
  _Block_release(v18);
  v30 = nullsub_1;
  v31 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C44405F8;
  v29 = &unk_1F43FB3C0;
  v20 = _Block_copy(&aBlock);
  v30 = sub_1C4AFC2A8;
  v31 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1C4440590;
  v29 = &unk_1F43FB3E8;
  v21 = _Block_copy(&aBlock);

  v22 = [v19 sinkWithCompletion:v20 receiveInput:v21];

  _Block_release(v21);
  _Block_release(v20);

  swift_beginAccess();
  v23 = *(v12 + 16);
  *a3 = v23;
  v24 = v23;
}

BOOL sub_1C4AFB170(void *a1)
{
  v1 = [a1 eventBody];
  result = 0;
  if (v1)
  {
    v2 = v1;
    v3 = [v1 starting];

    if (v3)
    {
      return 1;
    }
  }

  return result;
}

void sub_1C4AFB1CC(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Exception: Unable to parse eventBody from latest event in semantic location stream", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C4AFB304(void *a1)
{
  v2 = sub_1C4AFAABC([a1 placeType]);
  v3 = sub_1C4AFA9EC([a1 userSpecificPlaceType]);
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  sub_1C44201F0(inited, xmmword_1C4F0CE60);
  v5 = objc_opt_self();
  sub_1C4400C68([v5 featureValueWithInt64_], "user_specific_place_type");
  inited[4].n128_u64[1] = [v5 v6];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

uint64_t sub_1C4AFB404(uint64_t a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  sub_1C44201F0(inited, xmmword_1C4F0CE60);
  v3 = objc_opt_self();
  sub_1C4400C68([v3 featureValueWithInt64_], "user_specific_place_type");
  inited[4].n128_u64[1] = [v3 v4];
  sub_1C4577DBC();
  v5 = sub_1C4F00F28();
  v6 = sub_1C4AFADB8(a1);
  if (v6)
  {
    v7 = v6;

    v5 = sub_1C4AFB304(v7);
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);
    v7 = sub_1C4F00968();
    v9 = sub_1C4F01CF8();
    if (sub_1C43FD0E8(v9))
    {
      *swift_slowAlloc() = 0;
      sub_1C440B1D4();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }
  }

  return v5;
}

void sub_1C4AFB594(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v34 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v32 = v14;
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v29 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    v36 = v17;
    sub_1C459D0A8();
    v20 = v36;
    v19 = v37;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v30 = *(v21 + 56);
    v31 = v22;
    do
    {
      v31(v12, v23, v34);
      v31(v20, v12, v34);
      v24 = sub_1C4AFB404(v12);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v25 = v4;
      sub_1C4AFC2B0(v24, a1);

      sub_1C465CF34();
      v27 = v26;
      v20 = v36;

      (*(v21 - 8))(v12, v34);
      *(v36 + *(v33 + 20)) = v27;
      v28 = *(v37 + 16);
      if (v28 >= *(v37 + 24) >> 1)
      {
        sub_1C459D0A8();
        v20 = v36;
      }

      *(v37 + 16) = v28 + 1;
      sub_1C4586A54(v20, v37 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
      v23 += v30;
      --v18;
      v4 = v25;
    }

    while (v18);
    a3 = v29;
  }

  *a3 = v19;
}