uint64_t static ExtensionsObserver.lookupExtension(by:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CE125DC;

  return sub_21CE14C78(a1, a2);
}

uint64_t sub_21CE125DC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21CE126D8(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_21CDE40C8(0, &unk_27CE40208, 0x277CC5DD8);
  **(*(v2 + 64) + 40) = sub_21CE6CD40();

  return MEMORY[0x282200948](v2);
}

uint64_t static ExtensionsObserver.lookupExtensions(by:)(uint64_t a1)
{
  v24 = a1;
  v1 = objc_opt_self();
  v2 = objc_opt_self();
  v3 = sub_21CE6CC20();
  v4 = [v2 extensionPointIdentifierQuery_];

  v5 = [v1 executeQuery_];
  sub_21CDE40C8(0, &unk_27CE40208, 0x277CC5DD8);
  v6 = sub_21CE6CD40();

  v27 = MEMORY[0x277D84F90];
  if (!(v6 >> 62))
  {
    v25 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_20:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v25 = v6 & 0xFFFFFFFFFFFFFF8;
  v7 = sub_21CE6D360();
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_3:
  v8 = 0;
  v23 = v6 & 0xC000000000000001;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v22 = v9;
    v10 = v8;
    while (1)
    {
      if (v23)
      {
        v11 = MEMORY[0x21CF1B2A0](v10, v6);
      }

      else
      {
        if (v10 >= *(v25 + 16))
        {
          goto LABEL_18;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v13 = v6;
      v14 = [v11 bundleIdentifier];
      v15 = sub_21CE6CC50();
      v17 = v16;

      v26[0] = v15;
      v26[1] = v17;
      MEMORY[0x28223BE20](v18);
      v21[2] = v26;
      LOBYTE(v14) = sub_21CE12C30(sub_21CE150CC, v21, v24);

      if (v14)
      {
        break;
      }

      ++v10;
      v6 = v13;
      if (v8 == v7)
      {
        v9 = v22;
        goto LABEL_21;
      }
    }

    type metadata accessor for SettingsExtension();
    v19 = swift_allocObject();
    sub_21CE1424C(v12, v19);
    MEMORY[0x21CF1AD00]();
    v6 = v13;
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21CE6CD60();
    }

    sub_21CE6CD80();
    v9 = v27;
  }

  while (v8 != v7);
LABEL_21:

  return v9;
}

uint64_t ExtensionsObserver.deinit()
{
  v1 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401C8, &qword_21CE717A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensionsLookup;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E0, &qword_21CE71800);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ExtensionsObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensions;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401C8, &qword_21CE717A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8Settings18ExtensionsObserver__extensionsLookup;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401E0, &qword_21CE71800);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21CE12BF0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ExtensionsObserver(0);
  result = sub_21CE6BE50();
  *a2 = result;
  return result;
}

uint64_t sub_21CE12C30(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_21CE12CDC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE402F0, &qword_21CE6F600);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_21CE12D60(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40700, &qword_21CE71908);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_21CE12E24(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21CE12E10(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21CE12EA0(v6);
  return sub_21CE6D300();
}

uint64_t sub_21CE12EA0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21CE6D3D0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SettingsExtension();
        v6 = sub_21CE6CD70();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_21CE13124(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_21CE12FA4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21CE12FA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v18 = *a4;
    v4 = (*a4 + 8 * a3 - 8);
    v5 = result - a3;
LABEL_5:
    v17 = a3;
    v6 = *(v18 + 8 * a3);
    v15 = v5;
    v16 = v4;
    while (1)
    {
      v7 = *v4;
      v8 = *(v6 + 16);

      v9 = [v8 localizedName];
      sub_21CE6CC50();

      v10 = [*(v7 + 16) localizedName];
      sub_21CE6CC50();

      sub_21CE1570C();
      v11 = sub_21CE6D170();

      if (v11 != -1)
      {
LABEL_4:
        a3 = v17 + 1;
        v4 = v16 + 1;
        v5 = v15 - 1;
        if (v17 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v18)
      {
        break;
      }

      v12 = *v4;
      v6 = v4[1];
      *v4 = v6;
      v4[1] = v12;
      --v4;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21CE13124(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_92:
    v9 = *v7;
    if (!*v7)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_94;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v108 = result;
  while (1)
  {
    v11 = v9;
    if ((v9 + 1) >= v8)
    {
      v8 = (v9 + 1);
      goto LABEL_22;
    }

    v12 = *v6;
    v9 = *(*v6 + 8 * (v9 + 1));
    v117 = v9;
    v115 = *(v12 + 8 * v11);

    v111 = sub_21CE10D7C(&v117, &v115);
    if (v5)
    {
    }

    v103 = v10;

    v13 = (v11 + 2);
    v106 = v11;
    v113 = 8 * v11;
    v14 = v12 + 8 * v11 + 16;
    while (v8 != v13)
    {
      v15 = v8;
      v16 = *(v14 - 8);
      v10 = *v14;
      v17 = *(*v14 + 16);

      v18 = [v17 localizedName];
      v19 = sub_21CE6CC50();
      v9 = v20;

      v117 = v19;
      v118 = v9;
      v21 = [*(v16 + 16) localizedName];
      v22 = sub_21CE6CC50();
      v24 = v23;

      v115 = v22;
      v116 = v24;
      sub_21CE1570C();
      v25 = sub_21CE6D170();

      v8 = v15;

      ++v13;
      v14 += 8;
      if (((v111 ^ (v25 != -1)) & 1) == 0)
      {
        v8 = (v13 - 1);
        break;
      }
    }

    v5 = 0;
    v6 = a3;
    v7 = v108;
    if (!v111)
    {
      v10 = v103;
LABEL_20:
      v11 = v106;
      goto LABEL_22;
    }

    v26 = v106;
    if (v8 < v106)
    {
      goto LABEL_125;
    }

    if (v106 < v8)
    {
      v27 = 8 * v8 - 8;
      v28 = v8;
      v10 = v103;
      do
      {
        if (v26 != --v28)
        {
          v29 = *a3;
          if (!*a3)
          {
            goto LABEL_129;
          }

          v30 = *(v29 + v113);
          *(v29 + v113) = *(v29 + v27);
          *(v29 + v27) = v30;
        }

        ++v26;
        v27 -= 8;
        v113 += 8;
      }

      while (v26 < v28);
      goto LABEL_20;
    }

    v10 = v103;
    v11 = v106;
LABEL_22:
    v31 = v6[1];
    if (v8 < v31)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_122;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_123;
        }

        if (v11 + a4 >= v31)
        {
          v9 = v6[1];
        }

        else
        {
          v9 = (v11 + a4);
        }

        if (v9 < v11)
        {
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          result = sub_21CE13D64(v10);
          v10 = result;
LABEL_94:
          v119 = v10;
          v96 = *(v10 + 2);
          if (v96 >= 2)
          {
            while (*v6)
            {
              v97 = v10;
              v10 = (v96 - 1);
              v98 = *&v97[16 * v96];
              v99 = *&v97[16 * v96 + 24];
              sub_21CE138CC((*v6 + 8 * v98), (*v6 + 8 * *&v97[16 * v96 + 16]), (*v6 + 8 * v99), v9);
              if (v5)
              {
              }

              if (v99 < v98)
              {
                goto LABEL_119;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v97 = sub_21CE13D64(v97);
              }

              if (v96 - 2 >= *(v97 + 2))
              {
                goto LABEL_120;
              }

              v100 = &v97[16 * v96];
              *v100 = v98;
              *(v100 + 1) = v99;
              v119 = v97;
              result = sub_21CE13CD8(v96 - 1);
              v10 = v119;
              v96 = *(v119 + 2);
              if (v96 <= 1)
              {
              }
            }

            goto LABEL_130;
          }
        }

        if (v8 != v9)
        {
          break;
        }
      }
    }

    v9 = v8;
    if (v8 < v11)
    {
      goto LABEL_121;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21CDF2890(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v33 = *(v10 + 2);
    v32 = *(v10 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_21CDF2890((v32 > 1), v33 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v34;
    v35 = &v10[16 * v33];
    *(v35 + 4) = v11;
    *(v35 + 5) = v9;
    v36 = *v7;
    if (!v36)
    {
      goto LABEL_131;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v10 + 4);
          v39 = *(v10 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_51:
          if (v41)
          {
            goto LABEL_110;
          }

          v54 = &v10[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_113;
          }

          v60 = &v10[16 * v37 + 32];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_117;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v64 = &v10[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_65:
        if (v59)
        {
          goto LABEL_112;
        }

        v67 = &v10[16 * v37];
        v69 = *(v67 + 4);
        v68 = *(v67 + 5);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_115;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_72:
        v75 = v37 - 1;
        if (v37 - 1 >= v34)
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
          goto LABEL_124;
        }

        if (!*v6)
        {
          goto LABEL_128;
        }

        v76 = *&v10[16 * v75 + 32];
        v77 = *&v10[16 * v37 + 40];
        sub_21CE138CC((*v6 + 8 * v76), (*v6 + 8 * *&v10[16 * v37 + 32]), (*v6 + 8 * v77), v36);
        if (v5)
        {
        }

        if (v77 < v76)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_21CE13D64(v10);
        }

        if (v75 >= *(v10 + 2))
        {
          goto LABEL_107;
        }

        v78 = &v10[16 * v75];
        *(v78 + 4) = v76;
        *(v78 + 5) = v77;
        v119 = v10;
        result = sub_21CE13CD8(v37);
        v10 = v119;
        v34 = *(v119 + 2);
        if (v34 <= 1)
        {
          goto LABEL_3;
        }
      }

      v42 = &v10[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_108;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_109;
      }

      v49 = &v10[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_111;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_114;
      }

      if (v53 >= v45)
      {
        v71 = &v10[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_118;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v8 = v6[1];
    v7 = v108;
    if (v9 >= v8)
    {
      goto LABEL_92;
    }
  }

  v104 = v10;
  v105 = v5;
  v79 = *v6;
  v80 = (*v6 + 8 * v8 - 8);
  v107 = v11;
  v81 = (v11 - v8);
  v109 = v9;
LABEL_83:
  v112 = v80;
  v114 = v8;
  v82 = *(v79 + 8 * v8);
  v110 = v81;
  while (1)
  {
    v83 = *v80;
    v84 = *(v82 + 16);

    v85 = [v84 localizedName];
    v86 = sub_21CE6CC50();
    v88 = v87;

    v117 = v86;
    v118 = v88;
    v89 = [*(v83 + 16) localizedName];
    v90 = sub_21CE6CC50();
    v92 = v91;

    v115 = v90;
    v116 = v92;
    sub_21CE1570C();
    v93 = sub_21CE6D170();

    if (v93 != -1)
    {
LABEL_82:
      v8 = v114 + 1;
      v80 = v112 + 1;
      v9 = v109;
      v81 = v110 - 1;
      if ((v114 + 1) != v109)
      {
        goto LABEL_83;
      }

      v10 = v104;
      v5 = v105;
      v6 = a3;
      v11 = v107;
      v7 = v108;
      if (v109 < v107)
      {
        goto LABEL_121;
      }

      goto LABEL_32;
    }

    if (!v79)
    {
      break;
    }

    v94 = *v80;
    v82 = v80[1];
    *v80 = v82;
    v80[1] = v94;
    --v80;
    if (__CFADD__(v81++, 1))
    {
      goto LABEL_82;
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

uint64_t sub_21CE138CC(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = a3;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v15 = __dst;
    if (__dst != a2 || &a2[8 * v12] <= __dst)
    {
      memmove(__dst, a2, 8 * v12);
      v5 = a2;
    }

    v42 = &v15[8 * v12];
    if (v10 < 8 || v5 <= v6)
    {
      v37 = v5;
    }

    else
    {
      __srca = v15;
      do
      {
        v39 = v5;
        v26 = v5 - 8;
        v27 = v4 - 8;
        v28 = v42;
        v40 = v5 - 8;
        while (1)
        {
          v29 = v27;
          v30 = v27 + 8;
          v31 = *(v28 - 1);
          v28 -= 8;
          v32 = *v26;
          v33 = *(v31 + 16);

          v34 = [v33 localizedName];
          sub_21CE6CC50();

          v35 = [*(v32 + 16) localizedName];
          sub_21CE6CC50();

          sub_21CE1570C();
          v36 = sub_21CE6D170();

          if (v36 == -1)
          {
            break;
          }

          if (v30 != v42)
          {
            *v29 = *v28;
          }

          v27 = v29 - 8;
          v42 = v28;
          v26 = v40;
          if (v28 <= __srca)
          {
            v42 = v28;
            v37 = v39;
            v15 = __srca;
            goto LABEL_39;
          }
        }

        v24 = v30 == v39;
        v37 = v40;
        v4 = v29;
        if (!v24)
        {
          *v29 = *v40;
        }

        v15 = __srca;
        if (v42 <= __srca)
        {
          break;
        }

        v5 = v40;
      }

      while (v40 > v6);
    }
  }

  else
  {
    if (__dst != __src || &__src[8 * v9] <= __dst)
    {
      v13 = __dst;
      memmove(__dst, __src, 8 * v9);
      v5 = a2;
      __dst = v13;
    }

    v42 = &__dst[8 * v9];
    v15 = __dst;
    if (v7 >= 8 && v5 < v4)
    {
      while (1)
      {
        v16 = v4;
        v17 = *v15;
        v18 = *(*v5 + 16);
        v19 = v5;

        v20 = [v18 localizedName];
        sub_21CE6CC50();

        v21 = [*(v17 + 16) localizedName];
        sub_21CE6CC50();

        sub_21CE1570C();
        v22 = sub_21CE6D170();

        if (v22 != -1)
        {
          break;
        }

        v23 = v19;
        v5 = v19 + 8;
        if (v6 != v19)
        {
          goto LABEL_13;
        }

LABEL_14:
        v6 += 8;
        if (v15 < v42)
        {
          v4 = v16;
          if (v5 < v16)
          {
            continue;
          }
        }

        goto LABEL_35;
      }

      v23 = v15;
      v24 = v6 == v15;
      v15 += 8;
      v5 = v19;
      if (v24)
      {
        goto LABEL_14;
      }

LABEL_13:
      *v6 = *v23;
      goto LABEL_14;
    }

LABEL_35:
    v37 = v6;
  }

LABEL_39:
  if (v37 != v15 || v37 >= &v15[(v42 - v15 + (v42 - v15 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v37, v15, 8 * ((v42 - v15) / 8));
  }

  return 1;
}

uint64_t sub_21CE13CD8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21CE13D64(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_21CE13D78(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_21CE6D360();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_21CE12D60(v3, 0);
  sub_21CE13E0C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_21CE13E0C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21CE6D360();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21CE6D360();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21CE15760(&unk_27CE402E0, &qword_27CE401F8, &qword_21CE71818);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F8, &qword_21CE71818);
            v9 = sub_21CE1413C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SettingsExtension();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21CE13F9C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_21CE6D360();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_21CE6D360();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_21CE15760(&qword_27CE40308, &qword_27CE40300, &unk_21CE71920);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40300, &unk_21CE71920);
            v9 = sub_21CE141C4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_21CDE40C8(0, &unk_281211A88, 0x277CC34B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_21CE1413C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CF1B2A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_21CE141BC;
  }

  __break(1u);
  return result;
}

void (*sub_21CE141C4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CF1B2A0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21CE14244;
  }

  __break(1u);
  return result;
}

id sub_21CE1424C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v52 - v5;
  v7 = sub_21CE6BA60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 16) = a1;
  v11 = a1;
  if (![v11 respondsToSelector_])
  {
    goto LABEL_12;
  }

  v12 = sub_21CE6BB50();
  v13 = [swift_unknownObjectRetain() performSelector_];
  result = v11;
  if (v13)
  {
    swift_unknownObjectRetain();
    v54[0] = v13;
    if (swift_dynamicCast())
    {

      (*(v8 + 56))(v6, 0, 1, v7);
      (*(v8 + 32))(v10, v6, v7);
      v15 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v16 = sub_21CE6B9B0();
      v17 = [v15 initWithURL_];

      *(a2 + 24) = v17;
      if (!v17)
      {
        if (qword_27CE3FA30 != -1)
        {
          swift_once();
        }

        v54[0] = 0;
        v54[1] = 0xE000000000000000;
        sub_21CE6D290();

        v54[0] = 0xD000000000000011;
        v54[1] = 0x800000021CE76980;
        sub_21CE157B4();
        v18 = sub_21CE6D3E0();
        MEMORY[0x21CF1ACB0](v18);

        MEMORY[0x21CF1ACB0](33, 0xE100000000000000);
        v20 = v54[0];
        v19 = v54[1];
        if (qword_27CE3FA38 != -1)
        {
          swift_once();
        }

        v21 = sub_21CE6BDA0();
        __swift_project_value_buffer(v21, qword_27CE412C0);

        v22 = sub_21CE6BD80();
        v23 = sub_21CE6CF10();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v54[0] = v53;
          *v24 = 136446978;
          v25 = sub_21CE6D2B0();
          v27 = sub_21CDF2CC8(v25, v26, v54);
          v52 = v20;
          v28 = v27;

          *(v24 + 4) = v28;
          *(v24 + 12) = 2048;
          *(v24 + 14) = 81;
          *(v24 + 22) = 2082;
          v29 = sub_21CE6D2B0();
          v31 = sub_21CDF2CC8(v29, v30, v54);

          *(v24 + 24) = v31;
          *(v24 + 32) = 2082;
          v32 = sub_21CDF2CC8(v52, v19, v54);

          *(v24 + 34) = v32;
          _os_log_impl(&dword_21CDE1000, v22, v23, "%{public}s:%ld %{public}s %{public}s", v24, 0x2Au);
          v33 = v53;
          swift_arrayDestroy();
          MEMORY[0x21CF1BD50](v33, -1, -1);
          MEMORY[0x21CF1BD50](v24, -1, -1);
        }

        else
        {
        }
      }

      (*(v8 + 8))(v10, v7);
      return a2;
    }

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_21CDE5494(v6, &unk_27CE40310, &qword_21CE71470);
LABEL_12:
    *(a2 + 24) = 0;
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    v54[0] = 0;
    v54[1] = 0xE000000000000000;
    sub_21CE6D290();

    strcpy(v54, "No bundle for ");
    HIBYTE(v54[1]) = -18;
    v34 = [v11 bundleIdentifier];
    v35 = sub_21CE6CC50();
    v37 = v36;

    MEMORY[0x21CF1ACB0](v35, v37);

    MEMORY[0x21CF1ACB0](33, 0xE100000000000000);
    v39 = v54[0];
    v38 = v54[1];
    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v40 = sub_21CE6BDA0();
    __swift_project_value_buffer(v40, qword_27CE412C0);

    v41 = sub_21CE6BD80();
    v42 = sub_21CE6CF10();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54[0] = v44;
      *v43 = 136446978;
      v45 = sub_21CE6D2B0();
      v47 = sub_21CDF2CC8(v45, v46, v54);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2048;
      *(v43 + 14) = 85;
      *(v43 + 22) = 2082;
      v48 = sub_21CE6D2B0();
      v50 = sub_21CDF2CC8(v48, v49, v54);

      *(v43 + 24) = v50;
      *(v43 + 32) = 2082;
      v51 = sub_21CDF2CC8(v39, v38, v54);

      *(v43 + 34) = v51;
      _os_log_impl(&dword_21CDE1000, v41, v42, "%{public}s:%ld %{public}s %{public}s", v43, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v44, -1, -1);
      MEMORY[0x21CF1BD50](v43, -1, -1);
    }

    else
    {
    }

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_21CE149BC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_21CE14AB0;

  return v5(v2 + 32);
}

uint64_t sub_21CE14AB0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_21CE14BC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21CDE7A00;

  return sub_21CE112AC(a1, v4, v5, v6);
}

uint64_t sub_21CE14C78(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_21CE14C98, 0, 0);
}

uint64_t sub_21CE14C98()
{
  v1 = objc_opt_self();
  v2 = objc_opt_self();
  v3 = sub_21CE6CC20();
  v4 = [v2 extensionPointIdentifierQuery_];
  v0[21] = v4;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_21CE14E24;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40320, &qword_21CE71930);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21CE126D8;
  v0[13] = &block_descriptor_1;
  v0[14] = v5;
  [v1 executeQuery:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CE14E24()
{

  return MEMORY[0x2822009F8](sub_21CE14F04, 0, 0);
}

uint64_t sub_21CE14F04()
{
  v1 = *(v0 + 144);

  if (v1 >> 62)
  {
LABEL_20:
    v2 = sub_21CE6D360();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v18 = v1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x21CF1B2A0](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            type metadata accessor for SettingsExtension();
            v14 = swift_allocObject();
            v15 = sub_21CE1424C(v19, v14);
            goto LABEL_22;
          }
        }

        else
        {
          if (v3 >= *(v18 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v4 = *(v1 + 8 * v3 + 32);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_16;
          }
        }

        v6 = *(v0 + 152);
        v7 = *(v0 + 160);
        v19 = v4;
        v8 = [v4 bundleIdentifier];
        v9 = sub_21CE6CC50();
        v11 = v10;

        if (v9 == v6 && v11 == v7)
        {
          goto LABEL_17;
        }

        v13 = sub_21CE6D400();

        if (v13)
        {
          goto LABEL_18;
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  v15 = 0;
LABEL_22:
  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t sub_21CE150CC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21CE6D400() & 1;
  }
}

void sub_21CE15158(uint64_t a1)
{
  sub_21CE15538(319, &qword_27CE40228, &qword_27CE401F8, &qword_21CE71818, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_21CE15538(319, &qword_27CE40230, &qword_27CE40200, &qword_21CE71820, MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21CE1547C(uint64_t a1)
{
  sub_21CE15538(319, &qword_27CE402B8, &qword_27CE401F8, &qword_21CE71818, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21CE15538(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21CE1559C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CDE7888;

  return sub_21CE149BC(a1, v4);
}

uint64_t sub_21CE15654(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21CDE7A00;

  return sub_21CE149BC(a1, v4);
}

unint64_t sub_21CE1570C()
{
  result = qword_281213350[0];
  if (!qword_281213350[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281213350);
  }

  return result;
}

uint64_t sub_21CE15760(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CE157B4()
{
  result = qword_2812132B0;
  if (!qword_2812132B0)
  {
    sub_21CE6BA60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812132B0);
  }

  return result;
}

uint64_t static NavigationManager.shared.getter()
{
  type metadata accessor for NavigationManager();

  return swift_initStaticObject();
}

uint64_t NavigationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t NavigationToken.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings15NavigationToken_title);

  return v1;
}

uint64_t NavigationToken.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings15NavigationToken_subtitle);

  return v1;
}

void *NavigationToken.navigationPath.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath);
  v2 = v1;
  return v1;
}

void *NavigationToken.iconData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings15NavigationToken_iconData);
  v2 = v1;
  return v1;
}

uint64_t NavigationToken.iconUTType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings15NavigationToken_iconUTType);

  return v1;
}

void sub_21CE15A24(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8Settings15NavigationToken_title + 8))
  {
    v3 = sub_21CE6CC20();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_21CE6CC20();
  [a1 encodeObject:v3 forKey:v4];
  swift_unknownObjectRelease();

  if (*(v1 + OBJC_IVAR____TtC8Settings15NavigationToken_subtitle + 8))
  {
    v5 = sub_21CE6CC20();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_21CE6CC20();
  [a1 encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v8 = sub_21CE6CC20();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath);
  v10 = sub_21CE6CC20();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR____TtC8Settings15NavigationToken_iconData);
  v12 = sub_21CE6CC20();
  [a1 encodeObject:v11 forKey:v12];

  if (*(v1 + OBJC_IVAR____TtC8Settings15NavigationToken_iconUTType + 8))
  {
    v13 = sub_21CE6CC20();
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_21CE6CC20();
  [a1 encodeObject:v13 forKey:v14];
  swift_unknownObjectRelease();

  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v16 = sub_21CE6CC20();
  [a1 encodeObject:v15 forKey:v16];
}

id NavigationToken.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE16568();

  return v4;
}

id NavigationToken.init(coder:)(void *a1)
{
  v2 = sub_21CE16568();

  return v2;
}

id NavigationToken.__allocating_init(title:subtitle:hasPushedContent:navigationPath:iconData:iconUTType:root:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v12 = v11;
  v21 = objc_allocWithZone(v12);
  v22 = &v21[OBJC_IVAR____TtC8Settings15NavigationToken_title];
  *v22 = a1;
  v22[1] = a2;
  v23 = &v21[OBJC_IVAR____TtC8Settings15NavigationToken_subtitle];
  *v23 = a3;
  v23[1] = a4;
  v21[OBJC_IVAR____TtC8Settings15NavigationToken_hasPushedContent] = a5;
  *&v21[OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath] = a6;
  v24 = a6;
  if (a8 >> 60 == 15)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_21CE6BA70();
  }

  *&v21[OBJC_IVAR____TtC8Settings15NavigationToken_iconData] = v25;
  v26 = &v21[OBJC_IVAR____TtC8Settings15NavigationToken_iconUTType];
  *v26 = a9;
  v26[1] = a10;
  v21[OBJC_IVAR____TtC8Settings15NavigationToken_isRoot] = a11 & 1;
  v29.receiver = v21;
  v29.super_class = v12;
  v27 = objc_msgSendSuper2(&v29, sel_init);
  sub_21CE16800(a7, a8);

  return v27;
}

id NavigationToken.init(title:subtitle:hasPushedContent:navigationPath:iconData:iconUTType:root:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v14 = &v11[OBJC_IVAR____TtC8Settings15NavigationToken_title];
  *v14 = a1;
  v14[1] = a2;
  v15 = &v11[OBJC_IVAR____TtC8Settings15NavigationToken_subtitle];
  *v15 = a3;
  v15[1] = a4;
  v11[OBJC_IVAR____TtC8Settings15NavigationToken_hasPushedContent] = a5;
  *&v11[OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath] = a6;
  v16 = a6;
  if (a8 >> 60 == 15)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_21CE6BA70();
  }

  *&v11[OBJC_IVAR____TtC8Settings15NavigationToken_iconData] = v17;
  v18 = &v11[OBJC_IVAR____TtC8Settings15NavigationToken_iconUTType];
  *v18 = a9;
  v18[1] = a10;
  v11[OBJC_IVAR____TtC8Settings15NavigationToken_isRoot] = a11 & 1;
  v21.receiver = v11;
  v21.super_class = type metadata accessor for NavigationToken();
  v19 = objc_msgSendSuper2(&v21, sel_init);
  sub_21CE16800(a7, a8);

  return v19;
}

id SettingsNavigationPath.init(coder:)(void *a1)
{
  v2 = v1;
  sub_21CDE40C8(0, &qword_27CE40388, 0x277CBEA90);
  v4 = sub_21CE6D0F0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CE6BA90();
    v8 = v7;

    sub_21CDF32E8(v6, v8);
    v22.receiver = v2;
    v22.super_class = type metadata accessor for SettingsNavigationPath();
    v9 = objc_msgSendSuper2(&v22, sel_init);
  }

  else
  {
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v10 = sub_21CE6BDA0();
    __swift_project_value_buffer(v10, qword_27CE412C0);
    v11 = sub_21CE6BD80();
    v12 = sub_21CE6CF10();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 136446978;
      v15 = sub_21CE6D2B0();
      v17 = sub_21CDF2CC8(v15, v16, &v23);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2048;
      *(v13 + 14) = 196;
      *(v13 + 22) = 2082;
      v18 = sub_21CE6D2B0();
      v20 = sub_21CDF2CC8(v18, v19, &v23);

      *(v13 + 24) = v20;
      *(v13 + 32) = 2082;
      *(v13 + 34) = sub_21CDF2CC8(0xD000000000000017, 0x800000021CE76A20, &v23);
      _os_log_impl(&dword_21CDE1000, v11, v12, "%{public}s:%ld %{public}s %{public}s", v13, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v14, -1, -1);
      MEMORY[0x21CF1BD50](v13, -1, -1);
    }

    type metadata accessor for SettingsNavigationPath();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v9;
}

id SettingsNavigationPath.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_21CE1652C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21CE16568()
{
  v1 = v0;
  sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
  v2 = sub_21CE6D0F0();
  if (v2)
  {
    v3 = v2;
    v4 = sub_21CE6CC50();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = &v0[OBJC_IVAR____TtC8Settings15NavigationToken_title];
  *v7 = v4;
  v7[1] = v6;
  v8 = sub_21CE6D0F0();
  if (v8)
  {
    v9 = v8;
    v10 = sub_21CE6CC50();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = &v0[OBJC_IVAR____TtC8Settings15NavigationToken_subtitle];
  *v13 = v10;
  v13[1] = v12;
  sub_21CDE40C8(0, &unk_27CE403F0, 0x277CCABB0);
  v14 = sub_21CE6D0F0();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 BOOLValue];
  }

  else
  {
    v16 = 0;
  }

  v0[OBJC_IVAR____TtC8Settings15NavigationToken_hasPushedContent] = v16;
  type metadata accessor for SettingsNavigationPath();
  *&v0[OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath] = sub_21CE6D0F0();
  sub_21CDE40C8(0, &qword_27CE40388, 0x277CBEA90);
  *&v0[OBJC_IVAR____TtC8Settings15NavigationToken_iconData] = sub_21CE6D0F0();
  v17 = sub_21CE6D0F0();
  if (v17)
  {
    v18 = v17;
    v19 = sub_21CE6CC50();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = &v0[OBJC_IVAR____TtC8Settings15NavigationToken_iconUTType];
  *v22 = v19;
  v22[1] = v21;
  v23 = sub_21CE6D0F0();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 BOOLValue];
  }

  else
  {
    v25 = 0;
  }

  v1[OBJC_IVAR____TtC8Settings15NavigationToken_isRoot] = v25;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for NavigationToken();
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t sub_21CE16800(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21CDF32E8(result, a2);
  }

  return result;
}

uint64_t AvailabilityType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x726576656ELL;
    }

    if (a1 == 3)
    {
      return 0x6F697469646E6F63;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6D72657465646E75;
    }

    if (a1 == 1)
    {
      return 0x6C62616C69617661;
    }
  }

  result = sub_21CE6D410();
  __break(1u);
  return result;
}

uint64_t sub_21CE16A48()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

uint64_t sub_21CE16ABC(uint64_t a1)
{
  v2 = *v1;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v2);
  return sub_21CE6D4E0();
}

unint64_t sub_21CE16B00@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21CE16C04(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_21CE16B34(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 1)
  {
    if (!v2)
    {
      return 0x6D72657465646E75;
    }

    if (v2 == 1)
    {
      return 0x6C62616C69617661;
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    return 0x726576656ELL;
  }

  if (v2 != 3)
  {
LABEL_11:
    result = sub_21CE6D410();
    __break(1u);
    return result;
  }

  return 0x6F697469646E6F63;
}

unint64_t sub_21CE16C04(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_21CE16C18()
{
  result = qword_27CE40400;
  if (!qword_27CE40400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40400);
  }

  return result;
}

id SettingsExtension.__allocating_init(_:)(void *a1)
{
  ObjectType = swift_getObjectType();

  return sub_21CE176C4(a1, v1, ObjectType);
}

uint64_t sub_21CE16CD4(SEL *a1)
{
  v2 = [*(v1 + 16) *a1];
  v3 = sub_21CE6CC50();

  return v3;
}

unint64_t SettingsExtension.SettingsAttributes.description.getter()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v2 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000019;
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

uint64_t SettingsExtension.SettingsAttributes.hashValue.getter()
{
  v1 = *v0;
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](v1);
  return sub_21CE6D4E0();
}

unint64_t sub_21CE16E74()
{
  v1 = 0xD000000000000010;
  v2 = *v0;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v2 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000019;
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

unint64_t sub_21CE16F3C()
{
  v1 = [*(v0 + 16) attributes];
  v2 = sub_21CE6CB60();

  if (*(v2 + 16) && (v3 = sub_21CE66850(0xD00000000000001BLL, 0x800000021CE76DB0), (v4 & 1) != 0))
  {
    sub_21CDE66C8(*(v2 + 56) + 32 * v3, v7);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE3FD98, &qword_21CE71CC0);
    if (swift_dynamicCast())
    {
      return v6;
    }
  }

  else
  {
  }

  return sub_21CDFA548(MEMORY[0x277D84F90]);
}

void *SettingsExtension.bundle.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id SettingsExtension.icon.getter()
{
  v1 = [*(v0 + 16) icon];

  return v1;
}

id SettingsExtension.init(_:)(void *a1)
{
  swift_getObjectType();

  return sub_21CE17714(a1, v1);
}

uint64_t static SettingsExtension.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 16) bundleIdentifier];
  v4 = sub_21CE6CC50();
  v6 = v5;

  v7 = [*(a2 + 16) bundleIdentifier];
  v8 = sub_21CE6CC50();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21CE6D400();
  }

  return v12 & 1;
}

uint64_t SettingsExtension.description.getter()
{
  v1 = *(v0 + 16);
  v2 = [v1 localizedName];
  v3 = sub_21CE6CC50();

  v9 = v3;
  MEMORY[0x21CF1ACB0](10272, 0xE200000000000000);
  v4 = [v1 bundleIdentifier];
  v5 = sub_21CE6CC50();
  v7 = v6;

  MEMORY[0x21CF1ACB0](v5, v7);

  MEMORY[0x21CF1ACB0](10537, 0xE200000000000000);
  return v9;
}

uint64_t SettingsExtension.attribute<A>(forKey:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = sub_21CE16F3C();
  v7 = 0xD000000000000019;
  v8 = "providesSidebarItems";
  v9 = "managesSearchTerms";
  v10 = 0xD000000000000013;
  v11 = "presentsInSidebar";
  v12 = 0xD000000000000012;
  if (v5 != 4)
  {
    v12 = 0xD000000000000011;
    v11 = "sSidebarHostProtocol_>16";
  }

  if (v5 != 3)
  {
    v10 = v12;
    v9 = v11;
  }

  v13 = "hasPersonalities";
  v14 = 0xD000000000000014;
  if (v5 != 1)
  {
    v14 = 0xD000000000000010;
    v13 = "searchTermsFileName";
  }

  if (v5)
  {
    v7 = v14;
    v8 = v13;
  }

  if (v5 <= 2)
  {
    v15 = v7;
  }

  else
  {
    v15 = v10;
  }

  if (v5 <= 2)
  {
    v16 = v8;
  }

  else
  {
    v16 = v9;
  }

  if (!*(v6 + 16))
  {

    goto LABEL_19;
  }

  v17 = sub_21CE66850(v15, v16 | 0x8000000000000000);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_19:

    memset(v22, 0, sizeof(v22));
    goto LABEL_20;
  }

  sub_21CDE66C8(*(v6 + 56) + 32 * v17, v22);

LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40410, &qword_21CE71B10);
  v20 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v20 ^ 1u, 1, a2);
}

uint64_t SettingsExtension.attribute<A>(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_21CE16F3C();
  if (*(v8 + 16) && (v9 = sub_21CE66850(a1, a2), (v10 & 1) != 0))
  {
    sub_21CDE66C8(*(v8 + 56) + 32 * v9, v13);
  }

  else
  {

    memset(v13, 0, sizeof(v13));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40410, &qword_21CE71B10);
  v11 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v11 ^ 1u, 1, a3);
}

uint64_t SettingsExtension.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SettingsExtension.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_21CE17578(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) bundleIdentifier];
  v4 = sub_21CE6CC50();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_21CE175D4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) bundleIdentifier];
  v4 = sub_21CE6CC50();
  v6 = v5;

  v7 = [*(v2 + 16) bundleIdentifier];
  v8 = sub_21CE6CC50();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_21CE6D400();
  }

  return v12 & 1;
}

id sub_21CE176C4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();

  return sub_21CE17714(a1, v4);
}

id sub_21CE17714(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v51 - v5;
  v7 = sub_21CE6BA60();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 16) = a1;
  swift_unknownObjectRetain();
  if (![a1 respondsToSelector_])
  {
    goto LABEL_12;
  }

  v11 = sub_21CE6BB50();
  v12 = [swift_unknownObjectRetain() performSelector_];
  result = a1;
  if (v12)
  {
    swift_unknownObjectRetain();
    v53[0] = v12;
    if (swift_dynamicCast())
    {
      swift_unknownObjectRelease();
      (*(v8 + 56))(v6, 0, 1, v7);
      (*(v8 + 32))(v10, v6, v7);
      v14 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v15 = sub_21CE6B9B0();
      v16 = [v14 initWithURL_];

      *(a2 + 24) = v16;
      if (!v16)
      {
        if (qword_27CE3FA30 != -1)
        {
          swift_once();
        }

        v53[0] = 0;
        v53[1] = 0xE000000000000000;
        sub_21CE6D290();

        v53[0] = 0xD000000000000011;
        v53[1] = 0x800000021CE76980;
        sub_21CE157B4();
        v17 = sub_21CE6D3E0();
        MEMORY[0x21CF1ACB0](v17);

        MEMORY[0x21CF1ACB0](33, 0xE100000000000000);
        v19 = v53[0];
        v18 = v53[1];
        if (qword_27CE3FA38 != -1)
        {
          swift_once();
        }

        v20 = sub_21CE6BDA0();
        __swift_project_value_buffer(v20, qword_27CE412C0);

        v21 = sub_21CE6BD80();
        v22 = sub_21CE6CF10();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v53[0] = v52;
          *v23 = 136446978;
          v24 = sub_21CE6D2B0();
          v26 = sub_21CDF2CC8(v24, v25, v53);
          v51 = v19;
          v27 = v26;

          *(v23 + 4) = v27;
          *(v23 + 12) = 2048;
          *(v23 + 14) = 81;
          *(v23 + 22) = 2082;
          v28 = sub_21CE6D2B0();
          v30 = sub_21CDF2CC8(v28, v29, v53);

          *(v23 + 24) = v30;
          *(v23 + 32) = 2082;
          v31 = sub_21CDF2CC8(v51, v18, v53);

          *(v23 + 34) = v31;
          _os_log_impl(&dword_21CDE1000, v21, v22, "%{public}s:%ld %{public}s %{public}s", v23, 0x2Au);
          v32 = v52;
          swift_arrayDestroy();
          MEMORY[0x21CF1BD50](v32, -1, -1);
          MEMORY[0x21CF1BD50](v23, -1, -1);
        }

        else
        {
        }
      }

      (*(v8 + 8))(v10, v7);
      return a2;
    }

    (*(v8 + 56))(v6, 1, 1, v7);
    sub_21CE0EAF8(v6);
LABEL_12:
    *(a2 + 24) = 0;
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    v53[0] = 0;
    v53[1] = 0xE000000000000000;
    sub_21CE6D290();

    strcpy(v53, "No bundle for ");
    HIBYTE(v53[1]) = -18;
    v33 = [a1 bundleIdentifier];
    v34 = sub_21CE6CC50();
    v36 = v35;

    MEMORY[0x21CF1ACB0](v34, v36);

    swift_unknownObjectRelease();
    MEMORY[0x21CF1ACB0](33, 0xE100000000000000);
    v38 = v53[0];
    v37 = v53[1];
    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v39 = sub_21CE6BDA0();
    __swift_project_value_buffer(v39, qword_27CE412C0);

    v40 = sub_21CE6BD80();
    v41 = sub_21CE6CF10();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v53[0] = v43;
      *v42 = 136446978;
      v44 = sub_21CE6D2B0();
      v46 = sub_21CDF2CC8(v44, v45, v53);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2048;
      *(v42 + 14) = 85;
      *(v42 + 22) = 2082;
      v47 = sub_21CE6D2B0();
      v49 = sub_21CDF2CC8(v47, v48, v53);

      *(v42 + 24) = v49;
      *(v42 + 32) = 2082;
      v50 = sub_21CDF2CC8(v38, v37, v53);

      *(v42 + 34) = v50;
      _os_log_impl(&dword_21CDE1000, v40, v41, "%{public}s:%ld %{public}s %{public}s", v42, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v43, -1, -1);
      MEMORY[0x21CF1BD50](v42, -1, -1);
    }

    else
    {
    }

    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_21CE17E80()
{
  result = qword_27CE40418;
  if (!qword_27CE40418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40418);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsExtension.SettingsAttributes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsExtension.SettingsAttributes(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_21CE18088(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id InitializationParameters.__allocating_init(itemIdentifier:anchor:navigationPath:contentWidth:role:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v17 = objc_allocWithZone(v9);
  v17[OBJC_IVAR____TtC8Settings24InitializationParameters____lazy_storage___isDefault] = 2;
  v18 = &v17[OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier];
  *v18 = a1;
  v18[1] = a2;
  v19 = &v17[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor];
  *v19 = a3;
  v19[1] = a4;
  v20 = a5;
  if (a5)
  {
    v21 = *&a5[OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath];
    v22 = v21;
  }

  else
  {
    v21 = 0;
  }

  *&v17[OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath] = v21;
  v23 = &v17[OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth];
  *v23 = a6;
  v23[8] = a7 & 1;
  v24 = &v17[OBJC_IVAR____TtC8Settings24InitializationParameters_role];
  *v24 = a8;
  v24[1] = a9;
  v48.receiver = v17;
  v48.super_class = v9;
  v25 = objc_msgSendSuper2(&v48, sel_init, a8);
  v26 = qword_27CE3FA30;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = [v27 description];
  v29 = sub_21CE6CC50();
  v31 = v30;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v32 = sub_21CE6BDA0();
  __swift_project_value_buffer(v32, qword_27CE412C0);

  v33 = sub_21CE6BD80();
  v34 = sub_21CE6CF30();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = v20;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v35 = 136447235;
    v38 = sub_21CE6D2B0();
    v40 = sub_21CDF2CC8(v38, v39, &v47);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2048;
    *(v35 + 14) = 33;
    *(v35 + 22) = 2082;
    v41 = sub_21CE6D2B0();
    v43 = sub_21CDF2CC8(v41, v42, &v47);

    *(v35 + 24) = v43;
    *(v35 + 32) = 2160;
    *(v35 + 34) = 1752392040;
    *(v35 + 42) = 2081;
    v44 = sub_21CDF2CC8(v29, v31, &v47);

    *(v35 + 44) = v44;
    _os_log_impl(&dword_21CDE1000, v33, v34, "%{public}s:%ld %{public}s %{private,mask.hash}s", v35, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v37, -1, -1);
    MEMORY[0x21CF1BD50](v35, -1, -1);
  }

  else
  {
  }

  return v27;
}

id InitializationParameters.init(itemIdentifier:anchor:navigationPath:contentWidth:role:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v9[OBJC_IVAR____TtC8Settings24InitializationParameters____lazy_storage___isDefault] = 2;
  v14 = &v9[OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier];
  *v14 = a1;
  v14[1] = a2;
  v15 = &v9[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor];
  *v15 = a3;
  v15[1] = a4;
  if (a5)
  {
    v16 = *&a5[OBJC_IVAR____TtC8Settings15NavigationToken_navigationPath];
    v17 = v16;
  }

  else
  {
    v16 = 0;
  }

  *&v9[OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath] = v16;
  v18 = &v9[OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth];
  *v18 = a6;
  v18[8] = a7 & 1;
  v19 = &v9[OBJC_IVAR____TtC8Settings24InitializationParameters_role];
  *v19 = a8;
  v19[1] = a9;
  v41.receiver = v9;
  v41.super_class = type metadata accessor for InitializationParameters();
  v20 = objc_msgSendSuper2(&v41, sel_init);
  v21 = qword_27CE3FA30;
  v22 = v20;
  if (v21 != -1)
  {
    swift_once();
  }

  v23 = [v22 description];
  v24 = sub_21CE6CC50();
  v26 = v25;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v27 = sub_21CE6BDA0();
  __swift_project_value_buffer(v27, qword_27CE412C0);

  v28 = sub_21CE6BD80();
  v29 = sub_21CE6CF30();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v40 = v31;
    *v30 = 136447235;
    v32 = sub_21CE6D2B0();
    v34 = sub_21CDF2CC8(v32, v33, &v40);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2048;
    *(v30 + 14) = 33;
    *(v30 + 22) = 2082;
    v35 = sub_21CE6D2B0();
    v37 = sub_21CDF2CC8(v35, v36, &v40);

    *(v30 + 24) = v37;
    *(v30 + 32) = 2160;
    *(v30 + 34) = 1752392040;
    *(v30 + 42) = 2081;
    v38 = sub_21CDF2CC8(v24, v26, &v40);

    *(v30 + 44) = v38;
    _os_log_impl(&dword_21CDE1000, v28, v29, "%{public}s:%ld %{public}s %{private,mask.hash}s", v30, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v31, -1, -1);
    MEMORY[0x21CF1BD50](v30, -1, -1);
  }

  else
  {
  }

  return v22;
}

void sub_21CE1878C(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier + 8))
  {
    v3 = sub_21CE6CC20();
    v4 = sub_21CE6CC20();
    [a1 encodeObject:v3 forKey:v4];
  }

  if (*(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_anchor + 8))
  {
    v5 = sub_21CE6CC20();
    v6 = sub_21CE6CC20();
    [a1 encodeObject:v5 forKey:v6];
  }

  if (*(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_role + 8))
  {
    v7 = sub_21CE6CC20();
    v8 = sub_21CE6CC20();
    [a1 encodeObject:v7 forKey:v8];
  }

  v9 = *(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath);
  v10 = sub_21CE6CC20();
  [a1 encodeObject:v9 forKey:v10];

  if (*(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth + 8))
  {
    v12 = 0.0;
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth);
    v12 = v11;
  }

  v14 = sub_21CE6CC20();
  *&v13 = v12;
  [a1 encodeFloat:v14 forKey:v13];
}

id InitializationParameters.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_21CE1F1D0(a1);

  return v4;
}

id InitializationParameters.init(coder:)(void *a1)
{
  v2 = sub_21CE1F1D0(a1);

  return v2;
}

uint64_t sub_21CE18AA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters____lazy_storage___isDefault);
  if (v1 == 2)
  {
    LOBYTE(v1) = !*(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier + 8) && !*(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_anchor + 8) && !*(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath) && *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_role + 8) == 0;
    *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters____lazy_storage___isDefault) = v1;
  }

  return v1 & 1;
}

uint64_t (*sub_21CE18B30(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = sub_21CE18AA8() & 1;
  return sub_21CE18B7C;
}

uint64_t sub_21CE18BFC()
{
  if (sub_21CE18AA8())
  {
    sub_21CE6D290();
    MEMORY[0x21CF1ACB0](0xD000000000000031, 0x800000021CE76EE0);
    v1 = &qword_27CE40458;
    v2 = &unk_21CE71CE0;
  }

  else
  {
    sub_21CE6D290();
    MEMORY[0x21CF1ACB0](0xD00000000000001ALL, 0x800000021CE76EA0);
    v3 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier + 8);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier);
    }

    else
    {
      v4 = 0;
    }

    if (v3)
    {
      v5 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier + 8);
    }

    else
    {
      v5 = 0xE000000000000000;
    }

    MEMORY[0x21CF1ACB0](v4, v5);

    MEMORY[0x21CF1ACB0](8236, 0xE200000000000000);
    v6 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_anchor + 8);
    if (v6)
    {
      v7 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_anchor);
    }

    else
    {
      v7 = 0;
    }

    if (v6)
    {
      v8 = *(v0 + OBJC_IVAR____TtC8Settings24InitializationParameters_anchor + 8);
    }

    else
    {
      v8 = 0xE000000000000000;
    }

    MEMORY[0x21CF1ACB0](v7, v8);

    MEMORY[0x21CF1ACB0](0xD000000000000010, 0x800000021CE76EC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40458, &unk_21CE71CE0);
    v9 = sub_21CE6CC80();
    MEMORY[0x21CF1ACB0](v9);

    MEMORY[0x21CF1ACB0](0x3A656C6F7220, 0xE600000000000000);

    v1 = &qword_27CE40460;
    v2 = &qword_21CE72620;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v10 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v10);

  return 0;
}

uint64_t sub_21CE18F34()
{
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](0);
  return sub_21CE6D4E0();
}

uint64_t sub_21CE18FA0(uint64_t a1)
{
  sub_21CE6D4B0();
  MEMORY[0x21CF1B4A0](0);
  return sub_21CE6D4E0();
}

id sub_21CE19040()
{
  v1 = OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy____lazy_storage___privateListener;
  v2 = *(v0 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy____lazy_storage___privateListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy____lazy_storage___privateListener);
  }

  else
  {
    v4 = [objc_opt_self() anonymousListener];
    [v4 setDelegate_];
    [v4 resume];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_21CE190E0(void *a1)
{
  v3 = v1;
  v86 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE401F0, &qword_21CE71300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v80 - v5;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  aBlock = 0;
  v90 = 0xE000000000000000;
  sub_21CE6D290();
  v7 = *&v1[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier];
  v8 = *&v1[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier + 8];

  aBlock = v7;
  v90 = v8;
  MEMORY[0x21CF1ACB0](0x7463656E6E6F6320, 0xED0000203A6E6F69);
  v9 = OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connections;
  swift_beginAccess();
  v87 = v9;
  v10 = sub_21CDE40C8(0, &qword_27CE40490, 0x277CCAE80);

  v83 = v10;
  v12 = MEMORY[0x21CF1AD30](v11, v10);
  v14 = v13;

  MEMORY[0x21CF1ACB0](v12, v14);

  v15 = v90;
  v84 = aBlock;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v16 = sub_21CE6BDA0();
  v17 = __swift_project_value_buffer(v16, qword_27CE412C0);

  v18 = sub_21CE6BD80();
  v19 = sub_21CE6CF30();

  v20 = os_log_type_enabled(v18, v19);
  v82 = v6;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v85 = v17;
    v22 = v21;
    v23 = swift_slowAlloc();
    v81 = v7;
    v24 = v23;
    aBlock = v23;
    *v22 = 136446978;
    v25 = sub_21CE6D2B0();
    v27 = sub_21CDF2CC8(v25, v26, &aBlock);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2048;
    *(v22 + 14) = 129;
    *(v22 + 22) = 2082;
    v28 = sub_21CE6D2B0();
    v30 = sub_21CDF2CC8(v28, v29, &aBlock);

    *(v22 + 24) = v30;
    *(v22 + 32) = 2082;
    v6 = sub_21CDF2CC8(v84, v15, &aBlock);

    *(v22 + 34) = v6;
    _os_log_impl(&dword_21CDE1000, v18, v19, "%{public}s:%ld %{public}s %{public}s", v22, 0x2Au);
    swift_arrayDestroy();
    v31 = v24;
    v7 = v81;
    MEMORY[0x21CF1BD50](v31, -1, -1);
    v32 = v22;
    v17 = v85;
    MEMORY[0x21CF1BD50](v32, -1, -1);
  }

  else
  {
  }

  v33 = v87;
  v34 = *&v3[v87];
  if (v34 >> 62)
  {
    v35 = sub_21CE6D360();
    if (!v35)
    {
LABEL_16:
      v42 = sub_21CE1A94C(v86);
      v85 = v17;
      v43 = v42;
      v44 = swift_allocObject();
      *(v44 + 16) = v3;
      *(v44 + 24) = v43;
      v93 = sub_21CE2150C;
      v94 = v44;
      aBlock = MEMORY[0x277D85DD0];
      v2 = 1107296256;
      v90 = 1107296256;
      v91 = sub_21CE27C50;
      v92 = &block_descriptor_78;
      v45 = _Block_copy(&aBlock);
      v46 = v43;
      v84 = v3;
      v47 = v46;

      [v47 setInvalidationHandler_];
      _Block_release(v45);

      swift_beginAccess();
      v6 = v47;
      MEMORY[0x21CF1AD00]();
      if (*((*&v3[v33] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*&v3[v33] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_17;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
      goto LABEL_16;
    }
  }

  v36 = v35 - 1;
  if (__OFSUB__(v35, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  if ((v34 & 0xC000000000000001) != 0)
  {
LABEL_30:

    v37 = MEMORY[0x21CF1B2A0](v36, v34);

    goto LABEL_15;
  }

  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v36 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = *(v34 + 8 * v36 + 32);
LABEL_15:
    v38 = swift_allocObject();
    *(v38 + 16) = v3;
    *(v38 + 24) = v37;
    v93 = sub_21CE21504;
    v94 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v90 = 1107296256;
    v91 = sub_21CE27C50;
    v92 = &block_descriptor_72;
    v39 = _Block_copy(&aBlock);
    v40 = v3;
    v41 = v37;

    [v41 setInvalidationHandler_];
    _Block_release(v39);

    goto LABEL_16;
  }

  __break(1u);
LABEL_33:
  sub_21CE6CD60();
LABEL_17:
  sub_21CE6CD80();
  swift_endAccess();
  [v6 resume];
  v93 = sub_21CE1A43C;
  v94 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v90 = v2;
  v91 = sub_21CE18088;
  v92 = &block_descriptor_81;
  v48 = _Block_copy(&aBlock);
  v86 = v6;
  v49 = [v6 remoteObjectProxyWithErrorHandler_];
  _Block_release(v48);
  sub_21CE6D190();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE404C8, &qword_21CE71D10);
  if (swift_dynamicCast())
  {
    v50 = v88;
  }

  else
  {
    v50 = 0;
  }

  aBlock = 0;
  v90 = 0xE000000000000000;
  sub_21CE6D290();

  aBlock = v7;
  v90 = v8;
  MEMORY[0x21CF1ACB0](0x7463656E6E6F6320, 0xED0000203A6E6F69);

  v52 = MEMORY[0x21CF1AD30](v51, v83);
  v54 = v53;

  MEMORY[0x21CF1ACB0](v52, v54);

  MEMORY[0x21CF1ACB0](0xD000000000000010, 0x800000021CE77480);
  v88 = v50;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40718, &qword_21CE72200);
  v55 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v55);

  v57 = aBlock;
  v56 = v90;

  v58 = sub_21CE6BD80();
  v59 = sub_21CE6CF30();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    aBlock = v61;
    *v60 = 136446978;
    v62 = sub_21CE6D2B0();
    v64 = sub_21CDF2CC8(v62, v63, &aBlock);

    *(v60 + 4) = v64;
    *(v60 + 12) = 2048;
    *(v60 + 14) = 162;
    *(v60 + 22) = 2082;
    v65 = sub_21CE6D2B0();
    v67 = sub_21CDF2CC8(v65, v66, &aBlock);

    *(v60 + 24) = v67;
    *(v60 + 32) = 2082;
    v68 = sub_21CDF2CC8(v57, v56, &aBlock);

    *(v60 + 34) = v68;
    _os_log_impl(&dword_21CDE1000, v58, v59, "%{public}s:%ld %{public}s %{public}s", v60, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v61, -1, -1);
    MEMORY[0x21CF1BD50](v60, -1, -1);
  }

  else
  {
  }

  v69 = v82;
  v70 = v84;
  v71 = sub_21CE6CE20();
  (*(*(v71 - 8) + 56))(v69, 1, 1, v71);
  v72 = swift_allocObject();
  v72[2] = 0;
  v72[3] = 0;
  v72[4] = v50;
  v72[5] = v70;
  v73 = v70;
  swift_unknownObjectRetain();
  sub_21CE12224(0, 0, v69, &unk_21CE72210, v72);

  v74 = &v73[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_completion];
  v75 = *&v73[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_completion];
  if (v75)
  {
    v76 = v74[1];

    v75(v50);

    swift_unknownObjectRelease();
    sub_21CDEEA58(v75, v76);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v77 = *v74;
  v78 = v74[1];
  *v74 = 0;
  v74[1] = 0;
  return sub_21CDEEA58(v77, v78);
}

void sub_21CE19CC4(uint64_t a1, void *a2)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v29 = 0;
  v30 = 0xE000000000000000;
  sub_21CE6D290();
  v5 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier + 8);

  v29 = v5;
  v30 = v4;
  MEMORY[0x21CF1ACB0](0xD000000000000019, 0x800000021CE774A0);
  v6 = [a2 description];
  v7 = sub_21CE6CC50();
  v9 = v8;

  MEMORY[0x21CF1ACB0](v7, v9);

  v11 = v29;
  v10 = v30;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v12 = sub_21CE6BDA0();
  __swift_project_value_buffer(v12, qword_27CE412C0);

  v13 = sub_21CE6BD80();
  v14 = sub_21CE6CF30();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136446978;
    v17 = sub_21CE6D2B0();
    v19 = sub_21CDF2CC8(v17, v18, &v29);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = 133;
    *(v15 + 22) = 2082;
    v20 = sub_21CE6D2B0();
    v22 = sub_21CDF2CC8(v20, v21, &v29);

    *(v15 + 24) = v22;
    *(v15 + 32) = 2082;
    v23 = sub_21CDF2CC8(v11, v10, &v29);

    *(v15 + 34) = v23;
    _os_log_impl(&dword_21CDE1000, v13, v14, "%{public}s:%ld %{public}s %{public}s", v15, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v16, -1, -1);
    MEMORY[0x21CF1BD50](v15, -1, -1);
  }

  else
  {
  }

  v24 = OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connections;
  swift_beginAccess();
  v25 = a2;
  v26 = sub_21CE1F974((a1 + v24), v25);

  v27 = *(a1 + v24);
  if (v27 >> 62)
  {
    v28 = sub_21CE6D360();
    if (v28 >= v26)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28 >= v26)
    {
LABEL_10:
      sub_21CE315A0(v26, v28);
      swift_endAccess();
      return;
    }
  }

  __break(1u);
}

void sub_21CE1A028(uint64_t a1, void *a2)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_21CE6D290();
  v5 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier);
  v4 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier + 8);

  v32 = v5;
  v33 = v4;
  MEMORY[0x21CF1ACB0](0xD000000000000019, 0x800000021CE774A0);
  v34 = a2;
  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40708, &unk_21CE721F0);
  v7 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v7);

  v8 = v5;
  v9 = v33;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v10 = sub_21CE6BDA0();
  __swift_project_value_buffer(v10, qword_27CE412C0);

  v11 = sub_21CE6BD80();
  v12 = sub_21CE6CF30();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136446978;
    v15 = sub_21CE6D2B0();
    v31 = v8;
    v17 = sub_21CDF2CC8(v15, v16, &v32);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2048;
    *(v13 + 14) = 141;
    *(v13 + 22) = 2082;
    v18 = sub_21CE6D2B0();
    v20 = sub_21CDF2CC8(v18, v19, &v32);

    *(v13 + 24) = v20;
    *(v13 + 32) = 2082;
    v21 = sub_21CDF2CC8(v31, v9, &v32);

    *(v13 + 34) = v21;
    _os_log_impl(&dword_21CDE1000, v11, v12, "%{public}s:%ld %{public}s %{public}s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v14, -1, -1);
    MEMORY[0x21CF1BD50](v13, -1, -1);
  }

  else
  {
  }

  v22 = OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connections;
  swift_beginAccess();
  v23 = v6;
  v24 = sub_21CE1FC04((a1 + v22), a2);

  v25 = *(a1 + v22);
  if (!(v25 >> 62))
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26 >= v24)
    {
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return;
  }

  v26 = sub_21CE6D360();
  if (v26 < v24)
  {
    goto LABEL_19;
  }

LABEL_10:
  sub_21CE315A0(v24, v26);
  swift_endAccess();
  v27 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_host);
  if ([v27 respondsToSelector_])
  {
    v28 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connectionError);
    if (v28)
    {
      v32 = *(a1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connectionError);
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
      sub_21CDE40C8(0, &unk_2812119D0, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v30 = v34;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    [v27 didEndHosting_];
  }
}

uint64_t sub_21CE1A450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21CE1A474, 0, 0);
}

uint64_t sub_21CE1A474()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = sub_21CE19040();
    v3 = [v2 endpoint];

    [v1 handshakeWithEndPoint_];
  }

  **(v0 + 16) = v1 == 0;
  v4 = *(v0 + 8);

  return v4();
}

void sub_21CE1A52C(void *a1)
{
  v2 = v1;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  sub_21CE6D290();
  v4 = *(v1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier);
  v5 = *(v1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier + 8);

  v30 = v4;
  v31 = v5;
  MEMORY[0x21CF1ACB0](0xD00000000000001ALL, 0x800000021CE77420);
  v6 = OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connections;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    if (!sub_21CE6D360())
    {
      goto LABEL_8;
    }
  }

  else if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {

    MEMORY[0x21CF1B2A0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v8 = *(v7 + 32);
  }

LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40708, &unk_21CE721F0);
  v9 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v9);

  v10 = v31;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v11 = sub_21CE6BDA0();
  __swift_project_value_buffer(v11, qword_27CE412C0);

  v12 = sub_21CE6BD80();
  v13 = sub_21CE6CF30();

  if (os_log_type_enabled(v12, v13))
  {
    v28 = v30;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136446978;
    v16 = sub_21CE6D2B0();
    v18 = sub_21CDF2CC8(v16, v17, &v30);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2048;
    *(v14 + 14) = 173;
    v29 = v6;
    v19 = a1;
    *(v14 + 22) = 2082;
    v20 = sub_21CE6D2B0();
    v22 = sub_21CDF2CC8(v20, v21, &v30);

    *(v14 + 24) = v22;
    *(v14 + 32) = 2082;
    v23 = sub_21CDF2CC8(v28, v10, &v30);

    *(v14 + 34) = v23;
    a1 = v19;
    v6 = v29;
    _os_log_impl(&dword_21CDE1000, v12, v13, "%{public}s:%ld %{public}s %{public}s", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v15, -1, -1);
    MEMORY[0x21CF1BD50](v14, -1, -1);
  }

  else
  {
  }

  v24 = *(v2 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connectionError);
  *(v2 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connectionError) = a1;
  v25 = a1;

  v26 = *(v2 + v6);
  if (!(v26 >> 62))
  {
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_21:
    v27 = 0;
    goto LABEL_22;
  }

  if (!sub_21CE6D360())
  {
    goto LABEL_21;
  }

LABEL_15:
  if ((v26 & 0xC000000000000001) != 0)
  {

    v27 = MEMORY[0x21CF1B2A0](0, v26);

    goto LABEL_22;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v26 + 32);
LABEL_22:
    [v27 invalidate];

    return;
  }

LABEL_26:
  __break(1u);
}

id sub_21CE1A94C(void *a1)
{
  v69 = *MEMORY[0x277D85DE8];
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v67 = 0;
  v68 = 0xE000000000000000;
  sub_21CE6D290();
  MEMORY[0x21CF1ACB0](*(v1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier), *(v1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier + 8));
  MEMORY[0x21CF1ACB0](0xD000000000000011, 0x800000021CE77290);
  v65 = *(v1 + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_host);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406B8, &unk_21CE721B8);
  sub_21CE6D340();
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v3 = sub_21CE6BDA0();
  __swift_project_value_buffer(v3, qword_27CE412C0);

  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v67 = v7;
    *v6 = 136446978;
    v8 = sub_21CE6D2B0();
    v63 = a1;
    v10 = sub_21CDF2CC8(v8, v9, &v67);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = 180;
    *(v6 + 22) = 2082;
    v11 = sub_21CE6D2B0();
    v13 = sub_21CDF2CC8(v11, v12, &v67);

    *(v6 + 24) = v13;
    *(v6 + 32) = 2082;
    v14 = sub_21CDF2CC8(0, 0xE000000000000000, &v67);

    *(v6 + 34) = v14;
    a1 = v63;
    _os_log_impl(&dword_21CDE1000, v4, v5, "%{public}s:%ld %{public}s %{public}s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v7, -1, -1);
    MEMORY[0x21CF1BD50](v6, -1, -1);
  }

  else
  {
  }

  v67 = 0;
  v15 = [a1 makeXPCConnectionWithError_];
  if (v15)
  {
    v16 = v67;
    v17 = v15;
    v18 = [v17 description];
    v19 = sub_21CE6CC50();
    v21 = v20;
    v64 = v17;

    v22 = sub_21CE6BD80();
    v23 = sub_21CE6CEF0();

    v62 = v15;
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v67 = v25;
      *v24 = 136315906;
      v26 = sub_21CE6D2B0();
      v28 = sub_21CDF2CC8(v26, v27, &v67);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2048;
      *(v24 + 14) = 184;
      *(v24 + 22) = 2080;
      v29 = sub_21CE6D2B0();
      v31 = sub_21CDF2CC8(v29, v30, &v67);

      *(v24 + 24) = v31;
      *(v24 + 32) = 2080;
      v32 = sub_21CDF2CC8(v19, v21, &v67);

      *(v24 + 34) = v32;
      _os_log_impl(&dword_21CDE1000, v22, v23, "%s:%ld %s %s", v24, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v25, -1, -1);
      MEMORY[0x21CF1BD50](v24, -1, -1);
    }

    else
    {
    }

    [v64 setExportedObject_];
    v61 = objc_opt_self();
    v48 = [v61 interfaceWithProtocol_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406D0, &qword_21CE721C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v50 = swift_initStackObject();
    *(v50 + 16) = xmmword_21CE71CD0;
    *(v50 + 32) = sub_21CDE40C8(0, &unk_27CE40B30, 0x277CBEA60);
    *(v50 + 40) = type metadata accessor for TitlebarConfiguration();
    v60 = sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
    *(v50 + 48) = v60;
    *(inited + 32) = v50;
    sub_21CE1EF90(inited, sel_updateTitlebarWithConfig_, 0);
    swift_setDeallocating();
    sub_21CDE5494(inited + 32, &qword_27CE406D8, &qword_21CE721D0);
    v51 = MEMORY[0x277D84F90];
    sub_21CE1EF90(MEMORY[0x277D84F90], sel_updateTitlebarWithConfig_, 1);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_21CE702B0;
    *(v53 + 32) = sub_21CDE40C8(0, &unk_27CE406E0, 0x277CCA898);
    *(v52 + 32) = v53;
    sub_21CE1EF90(v52, sel_navigationSubtitleDidChange_, 0);
    swift_setDeallocating();
    sub_21CDE5494(v52 + 32, &qword_27CE406D8, &qword_21CE721D0);
    sub_21CE1EF90(v51, sel_navigationSubtitleDidChange_, 1);
    v54 = swift_initStackObject();
    *(v54 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v55 = swift_initStackObject();
    *(v55 + 16) = xmmword_21CE6F420;
    *(v55 + 32) = type metadata accessor for NavigationToken();
    *(v55 + 40) = type metadata accessor for SettingsNavigationPath();
    *(v54 + 32) = v55;
    sub_21CE1EF90(v54, sel_navigationStackDidChange_, 0);
    swift_setDeallocating();
    sub_21CDE5494(v54 + 32, &qword_27CE406D8, &qword_21CE721D0);
    sub_21CE1EF90(v51, sel_navigationStackDidChange_, 1);
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_21CE6F420;
    *(v57 + 32) = v60;
    *(v57 + 40) = sub_21CDE40C8(0, &qword_27CE40388, 0x277CBEA90);
    *(v56 + 32) = v57;
    sub_21CE1EF90(v56, sel_updateAccessoryViewForExtensionIdentifier_sceneName_with_, 0);
    swift_setDeallocating();
    sub_21CDE5494(v56 + 32, &qword_27CE406D8, &qword_21CE721D0);
    sub_21CE1EF90(v51, sel_updateAccessoryViewForExtensionIdentifier_sceneName_with_, 1);
    [v64 setExportedInterface_];
    v58 = [v61 interfaceWithProtocol_];
    [v64 setRemoteObjectInterface_];

    return v62;
  }

  else
  {
    v33 = v67;
    v34 = sub_21CE6B910();

    swift_willThrow();
    v67 = 0;
    v68 = 0xE000000000000000;
    sub_21CE6D290();
    MEMORY[0x21CF1ACB0](0xD000000000000021, 0x800000021CE772D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
    sub_21CE6D340();
    MEMORY[0x21CF1ACB0](39, 0xE100000000000000);
    v36 = v67;
    v35 = v68;

    v37 = sub_21CE6BD80();
    v38 = sub_21CE6CF10();

    if (os_log_type_enabled(v37, v38))
    {
      v66 = v36;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v67 = v40;
      *v39 = 136446978;
      v41 = sub_21CE6D2B0();
      v43 = sub_21CDF2CC8(v41, v42, &v67);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2048;
      *(v39 + 14) = 209;
      *(v39 + 22) = 2082;
      v44 = sub_21CE6D2B0();
      v46 = sub_21CDF2CC8(v44, v45, &v67);

      *(v39 + 24) = v46;
      *(v39 + 32) = 2082;
      v47 = sub_21CDF2CC8(v66, v35, &v67);

      *(v39 + 34) = v47;
      v15 = 0;
      _os_log_impl(&dword_21CDE1000, v37, v38, "%{public}s:%ld %{public}s %{public}s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v40, -1, -1);
      MEMORY[0x21CF1BD50](v39, -1, -1);
    }

    else
    {
    }

    sub_21CE214A0();
    swift_allocError();
    swift_willThrow();
  }

  return v15;
}

id sub_21CE1B4E8()
{
  result = [objc_allocWithZone(type metadata accessor for SettingsExtensionHostViewController()) init];
  qword_27CE40420 = result;
  return result;
}

id SettingsExtensionHostViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SettingsExtensionHostViewController.shared.getter()
{
  if (qword_27CE3F9D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CE40420;

  return v0;
}

void static SettingsExtensionHostViewController.shared.setter(uint64_t a1)
{
  if (qword_27CE3F9D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE40420;
  qword_27CE40420 = a1;
}

uint64_t (*static SettingsExtensionHostViewController.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CE3F9D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_21CE1B6D8@<X0>(void *a1@<X8>)
{
  if (qword_27CE3F9D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CE40420;
  *a1 = qword_27CE40420;

  return v2;
}

void sub_21CE1B764(id *a1)
{
  v1 = qword_27CE3F9D0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CE40420;
  qword_27CE40420 = v2;
}

char *SettingsExtensionHostViewController.init()()
{
  *&v0[OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_extensionProxies] = MEMORY[0x277D84F98];
  v1 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  *&v0[OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_viewController] = v1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for SettingsExtensionHostViewController();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  [*&v2[OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_viewController] setDelegate_];
  return v2;
}

void sub_21CE1B920(void *a1)
{
  v2 = v1;
  v4 = sub_21CE6BCD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40478, &qword_21CE71CF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v51 - v9;
  sub_21CE6D0A0();
  v11 = sub_21CE6D090();
  if ((*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    sub_21CDE5494(v10, &qword_27CE40478, &qword_21CE71CF0);
LABEL_13:
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v40 = sub_21CE6BDA0();
    __swift_project_value_buffer(v40, qword_27CE412C0);
    v41 = sub_21CE6BD80();
    v42 = sub_21CE6CF10();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52 = v44;
      *v43 = 136446978;
      v45 = sub_21CE6D2B0();
      v47 = sub_21CDF2CC8(v45, v46, &v52);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2048;
      *(v43 + 14) = 232;
      *(v43 + 22) = 2082;
      v48 = sub_21CE6D2B0();
      v50 = sub_21CDF2CC8(v48, v49, &v52);

      *(v43 + 24) = v50;
      *(v43 + 32) = 2082;
      *(v43 + 34) = sub_21CDF2CC8(0xD000000000000013, 0x800000021CE76F50, &v52);
      _os_log_impl(&dword_21CDE1000, v41, v42, "%{public}s:%ld %{public}s %{public}s", v43, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v44, -1, -1);
      MEMORY[0x21CF1BD50](v43, -1, -1);
    }

    return;
  }

  sub_21CE6D070();
  sub_21CDE5494(v10, &qword_27CE40478, &qword_21CE71CF0);
  v12 = sub_21CE6BCC0();
  v14 = v13;
  (*(v5 + 8))(v7, v4);
  v15 = OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_extensionProxies;
  swift_beginAccess();
  v16 = *(v2 + v15);
  if (!*(v16 + 16))
  {
LABEL_12:

    goto LABEL_13;
  }

  v17 = sub_21CE66850(v12, v14);
  if ((v18 & 1) == 0)
  {

    goto LABEL_12;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v52 = v12;
  v53 = v14;
  MEMORY[0x21CF1ACB0](32, 0xE100000000000000);
  v20 = [a1 description];
  v21 = sub_21CE6CC50();
  v23 = v22;

  MEMORY[0x21CF1ACB0](v21, v23);

  v24 = v52;
  v25 = v53;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v26 = sub_21CE6BDA0();
  __swift_project_value_buffer(v26, qword_27CE412C0);

  v27 = sub_21CE6BD80();
  v28 = sub_21CE6CF30();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v51 = v19;
    v30 = v29;
    v31 = swift_slowAlloc();
    v52 = v31;
    *v30 = 136446978;
    v32 = sub_21CE6D2B0();
    v34 = sub_21CDF2CC8(v32, v33, &v52);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2048;
    *(v30 + 14) = 236;
    *(v30 + 22) = 2082;
    v35 = sub_21CE6D2B0();
    v37 = sub_21CDF2CC8(v35, v36, &v52);

    *(v30 + 24) = v37;
    *(v30 + 32) = 2082;
    v38 = sub_21CDF2CC8(v24, v25, &v52);

    *(v30 + 34) = v38;
    _os_log_impl(&dword_21CDE1000, v27, v28, "%{public}s:%ld %{public}s %{public}s", v30, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v31, -1, -1);
    v39 = v30;
    v19 = v51;
    MEMORY[0x21CF1BD50](v39, -1, -1);
  }

  else
  {
  }

  sub_21CE190E0(*(v2 + OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_viewController));
}

void sub_21CE1BFE0(void *a1, id a2, void *a3)
{
  v4 = v3;
  v7 = [a2 extensionIdentity];
  v8 = [v7 bundleIdentifier];

  v9 = sub_21CE6CC50();
  v11 = v10;

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v66[0] = v9;
  v66[1] = v11;

  MEMORY[0x21CF1ACB0](32, 0xE100000000000000);
  v12 = [a1 description];
  v13 = sub_21CE6CC50();
  v15 = v14;

  MEMORY[0x21CF1ACB0](v13, v15);

  MEMORY[0x21CF1ACB0](0x203A726F72726520, 0xE800000000000000);
  v65[0] = a3;
  v16 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40480, &unk_21CE71CF8);
  v17 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v17);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v18 = sub_21CE6BDA0();
  __swift_project_value_buffer(v18, qword_27CE412C0);

  v19 = sub_21CE6BD80();
  v20 = sub_21CE6CF30();

  v63 = a3;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v66[0] = v22;
    *v21 = 136446978;
    v23 = sub_21CE6D2B0();
    v62 = v4;
    v25 = sub_21CDF2CC8(v23, v24, v66);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2048;
    *(v21 + 14) = 244;
    *(v21 + 22) = 2082;
    v26 = sub_21CE6D2B0();
    v28 = sub_21CDF2CC8(v26, v27, v66);

    *(v21 + 24) = v28;
    v4 = v62;
    *(v21 + 32) = 2082;
    v29 = sub_21CDF2CC8(v9, v11, v66);

    *(v21 + 34) = v29;
    _os_log_impl(&dword_21CDE1000, v19, v20, "%{public}s:%ld %{public}s %{public}s", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v22, -1, -1);
    MEMORY[0x21CF1BD50](v21, -1, -1);
  }

  else
  {
  }

  v30 = OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_extensionProxies;
  swift_beginAccess();
  v31 = *(v4 + v30);
  if (*(v31 + 16) && (, v32 = sub_21CE66850(v9, v11), v34 = v33, , (v34 & 1) != 0))
  {
    v35 = *(*(v31 + 56) + 8 * v32);

    swift_beginAccess();
    v36 = sub_21CDE40C8(0, &qword_27CE40490, 0x277CCAE80);

    v38 = MEMORY[0x21CF1AD30](v37, v36);
    v40 = v39;

    v41 = sub_21CE6BD80();
    v42 = sub_21CE6CF30();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v64 = v44;
      *v43 = 136446978;
      v45 = sub_21CE6D2B0();
      v47 = sub_21CDF2CC8(v45, v46, &v64);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2048;
      *(v43 + 14) = 251;
      *(v43 + 22) = 2082;
      v48 = sub_21CE6D2B0();
      v50 = sub_21CDF2CC8(v48, v49, &v64);

      *(v43 + 24) = v50;
      *(v43 + 32) = 2082;
      v51 = sub_21CDF2CC8(v38, v40, &v64);

      *(v43 + 34) = v51;
      _os_log_impl(&dword_21CDE1000, v41, v42, "%{public}s:%ld %{public}s %{public}s", v43, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v44, -1, -1);
      MEMORY[0x21CF1BD50](v43, -1, -1);
    }

    else
    {
    }

    sub_21CE1A52C(v63);
  }

  else
  {

    v52 = sub_21CE6BD80();
    v53 = sub_21CE6CF10();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v65[0] = v55;
      *v54 = 136446978;
      v56 = sub_21CE6D2B0();
      v58 = sub_21CDF2CC8(v56, v57, v65);

      *(v54 + 4) = v58;
      *(v54 + 12) = 2048;
      *(v54 + 14) = 247;
      *(v54 + 22) = 2082;
      v59 = sub_21CE6D2B0();
      v61 = sub_21CDF2CC8(v59, v60, v65);

      *(v54 + 24) = v61;
      *(v54 + 32) = 2082;
      *(v54 + 34) = sub_21CDF2CC8(0xD000000000000013, 0x800000021CE76F50, v65);
      _os_log_impl(&dword_21CDE1000, v52, v53, "%{public}s:%ld %{public}s %{public}s", v54, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v55, -1, -1);
      MEMORY[0x21CF1BD50](v54, -1, -1);
    }
  }
}

uint64_t sub_21CE1C7F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40478, &qword_21CE71CF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v3 = sub_21CE6BDA0();
  __swift_project_value_buffer(v3, qword_27CE412C0);
  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF30();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446978;
    v8 = sub_21CE6D2B0();
    v10 = sub_21CDF2CC8(v8, v9, &v17);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = 268;
    *(v6 + 22) = 2082;
    v11 = sub_21CE6D2B0();
    v13 = sub_21CDF2CC8(v11, v12, &v17);

    *(v6 + 24) = v13;
    *(v6 + 32) = 2082;
    *(v6 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v17);
    _os_log_impl(&dword_21CDE1000, v4, v5, "%{public}s:%ld %{public}s %{public}s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v7, -1, -1);
    MEMORY[0x21CF1BD50](v6, -1, -1);
  }

  v14 = sub_21CE6D090();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  return sub_21CE6D0B0();
}

uint64_t sub_21CE1CA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v68 = a4;
  v69 = a5;
  v70 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40478, &qword_21CE71CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = &v66 - v10;
  v11 = sub_21CE6BBE0();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_21CE6BCD0();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_21CE6D090();
  v71 = *(v13 - 8);
  v72 = v13;
  MEMORY[0x28223BE20](v13);
  v74 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = [v15 bundleIdentifier];
  v17 = sub_21CE6CC50();
  v19 = v18;

  v20 = OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_extensionProxies;
  swift_beginAccess();
  v21 = *(v6 + v20);
  if (!*(v21 + 16))
  {

LABEL_6:
    v27 = [v15 bundleIdentifier];
    v28 = sub_21CE6CC50();
    v30 = v29;

    v31 = type metadata accessor for SettingsExtensionHostViewController.SettingsExtensionProxy();
    v32 = objc_allocWithZone(v31);
    v26 = &qword_27CE40000;
    v33 = &v32[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_completion];
    *v33 = 0;
    *(v33 + 1) = 0;
    *&v32[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy____lazy_storage___privateListener] = 0;
    *&v32[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connections] = MEMORY[0x277D84F90];
    *&v32[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_connectionError] = 0;
    *&v32[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_host] = a2;
    v34 = &v32[OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_hostIdentifier];
    *v34 = v28;
    v34[1] = v30;
    v77.receiver = v32;
    v77.super_class = v31;
    swift_unknownObjectRetain();
    v25 = objc_msgSendSuper2(&v77, sel_init);
    v35 = [v15 bundleIdentifier];
    v36 = sub_21CE6CC50();
    v38 = v37;

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = *(v6 + v20);
    *(v6 + v20) = 0x8000000000000000;
    sub_21CE06568(v25, v36, v38, isUniquelyReferenced_nonNull_native);

    *(v6 + v20) = v75;
    swift_endAccess();
    goto LABEL_7;
  }

  v67 = v15;

  v22 = sub_21CE66850(v17, v19);
  v24 = v23;

  if ((v24 & 1) == 0)
  {

    v15 = v67;
    goto LABEL_6;
  }

  v25 = *(*(v21 + 56) + 8 * v22);

  v15 = v67;
  v26 = &qword_27CE40000;
LABEL_7:
  v40 = &v25[v26[147]];
  v41 = *v40;
  v42 = v40[1];
  v43 = v69;
  *v40 = v68;
  v40[1] = v43;

  sub_21CDEEA58(v41, v42);
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  swift_unknownObjectRetain();
  sub_21CE6BCE0();
  if (v70 && *(v70 + OBJC_IVAR____TtC8Settings24InitializationParameters_role + 8))
  {

    sub_21CE6BBF0();
  }

  else
  {
    sub_21CE6BBD0();
  }

  sub_21CE6D080();
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v44 = [v15 bundleIdentifier];
  v45 = sub_21CE6CC50();
  v47 = v46;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v48 = sub_21CE6BDA0();
  __swift_project_value_buffer(v48, qword_27CE412C0);

  v49 = sub_21CE6BD80();
  v50 = sub_21CE6CF30();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v70 = v45;
    v53 = v52;
    v76[0] = v52;
    *v51 = 136447235;
    v54 = sub_21CE6D2B0();
    v56 = sub_21CDF2CC8(v54, v55, v76);

    *(v51 + 4) = v56;
    *(v51 + 12) = 2048;
    *(v51 + 14) = 298;
    *(v51 + 22) = 2082;
    v57 = sub_21CE6D2B0();
    v59 = sub_21CDF2CC8(v57, v58, v76);

    *(v51 + 24) = v59;
    *(v51 + 32) = 2160;
    *(v51 + 34) = 1752392040;
    *(v51 + 42) = 2081;
    v60 = sub_21CDF2CC8(v70, v47, v76);

    *(v51 + 44) = v60;
    _os_log_impl(&dword_21CDE1000, v49, v50, "%{public}s:%ld %{public}s %{private,mask.hash}s", v51, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v53, -1, -1);
    MEMORY[0x21CF1BD50](v51, -1, -1);
  }

  else
  {
  }

  v62 = v71;
  v61 = v72;
  v63 = v73;
  v64 = v74;
  (*(v71 + 16))(v73, v74, v72);
  (*(v62 + 56))(v63, 0, 1, v61);
  sub_21CE6D0B0();

  return (*(v62 + 8))(v64, v61);
}

id sub_21CE1D1B4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id SettingsExtensionHostView.body.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

id sub_21CE1D254@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

void sub_21CE1D260(void *a1@<X8>)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(*v1 + 16);

  v6 = v4;
  v7 = [v5 bundleIdentifier];
  v8 = sub_21CE6CC50();
  v10 = v9;

  *a1 = v3;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
}

id SettingsExtensionView.init(_:delegate:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;

  v10 = sub_21CE20568(v9, 0, a3, a4);
  v12 = v11;
  v19 = v13;
  v15 = v14;
  a5[1] = v10;
  a5[2] = v11;
  a5[3] = v13;
  a5[4] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE404C0, &qword_21CE71D08);
  v16 = swift_allocObject();
  *(v16 + 64) = 1;
  *(v16 + 16) = v10;
  *(v16 + 24) = v12;
  *(v16 + 32) = v19;
  *(v16 + 40) = v15;
  *(v16 + 48) = a2;
  *(v16 + 56) = 0;
  a5[5] = v16;
  v17 = v15;

  return v19;
}

uint64_t SettingsExtensionAccessoryView.init(extensionIdentifier:sceneName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a1;
  v7[3] = a3;
  v7[8] = sub_21CE6CDE0();
  v7[9] = sub_21CE6CDD0();
  v10 = swift_task_alloc();
  v7[10] = v10;
  *v10 = v7;
  v10[1] = sub_21CE1D4BC;

  return sub_21CE14C78(a2, a3);
}

uint64_t sub_21CE1D4BC(uint64_t a1)
{
  *(*v1 + 88) = a1;

  v3 = sub_21CE6CDB0();

  return MEMORY[0x2822009F8](sub_21CE1D624, v3, v2);
}

uint64_t sub_21CE1D624()
{
  v1 = v0[11];

  if (v1)
  {
    v2 = v0[11];
    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[2];

    v6 = sub_21CE6CC20();

    v7 = sub_21CE20568(v2, v6, v3, v4);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE404D0, &qword_21CE71D28);
    v14 = swift_allocObject();
    *(v14 + 64) = 1;
    *(v14 + 16) = v7;
    *(v14 + 24) = v9;
    *(v14 + 32) = v11;
    *(v14 + 40) = v13;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    *v5 = v2;
    v15 = v13;

    v16 = v11;
  }

  else
  {
    v17 = v0[2];

    v7 = 0;
    v9 = 0;
    v11 = 0;
    v13 = 0;
    v14 = 0;
    *v17 = 0;
  }

  v18 = v0[2];
  v18[1] = v7;
  v18[2] = v9;
  v18[3] = v11;
  v18[4] = v13;
  v18[5] = v14;
  v19 = v0[1];

  return v19();
}

id SettingsExtensionAccessoryView.init(extension:sceneName:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if (a3)
  {

    v10 = sub_21CE6CC20();
  }

  else
  {

    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v12 = sub_21CE20568(a1, v10, sub_21CE207C0, v11);
  v14 = v13;
  v21 = v15;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE404D0, &qword_21CE71D28);
  v18 = swift_allocObject();
  *(v18 + 64) = 1;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v21;
  *(v18 + 40) = v17;
  *(v18 + 48) = 0;
  *(v18 + 56) = 1;
  *a6 = a1;
  a6[1] = v12;
  a6[2] = v14;
  a6[3] = v21;
  a6[4] = v17;
  a6[5] = v18;
  v19 = v17;

  return v21;
}

uint64_t SettingsExtensionAccessoryView.init(extension:sceneName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_21CE6CDE0();
  v4[6] = sub_21CE6CDD0();
  v6 = sub_21CE6CDB0();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_21CE1D96C, v6, v5);
}

uint64_t sub_21CE1D96C()
{
  if (v0[5])
  {

    v1 = sub_21CE6CC20();
  }

  else
  {

    v1 = 0;
  }

  v0[9] = v1;
  v2 = swift_task_alloc();
  v0[10] = v2;
  *v2 = v0;
  v2[1] = sub_21CE1DA58;
  v3 = v0[3];

  return sub_21CE207F4(v3, v1);
}

uint64_t sub_21CE1DA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 72);
  v6[11] = a1;
  v6[12] = a2;
  v6[13] = a3;
  v6[14] = a4;

  v8 = v5[8];
  v9 = v5[7];

  return MEMORY[0x2822009F8](sub_21CE1DBA4, v9, v8);
}

uint64_t sub_21CE1DBA4()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v6 = v0[2];
  v5 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE404D0, &qword_21CE71D28);
  v7 = swift_allocObject();
  *(v7 + 64) = 1;
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v2;
  *(v7 + 40) = v1;
  *(v7 + 48) = 0;
  *(v7 + 56) = 1;
  *v6 = v5;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v7;
  v11 = v0[1];

  v8 = v2;
  v9 = v1;

  return v11();
}

id SettingsExtensionAccessoryView.body.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v6 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v6;
  a1[3] = v3;
  v4 = v3;

  return v6;
}

id sub_21CE1DD18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  result = sub_21CE1DEA4(a1);
  if (result)
  {
    v8 = result;
    aBlock[4] = sub_21CE1EC94;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21CE18088;
    aBlock[3] = a2;
    v9 = _Block_copy(aBlock);
    v10 = [v8 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_21CE6D190();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    if (swift_dynamicCast())
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_21CE1DE3C@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  v6 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v6;
  a1[3] = v3;
  v4 = v3;

  return v6;
}

id sub_21CE1DEA4(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_21CE1DF08(v1, a1);
    v4 = *(v1 + 64);
    *(v1 + 64) = v3;
    v5 = v3;
    sub_21CE21490(v4);
  }

  sub_21CE214F4(v2);
  return v3;
}

id sub_21CE1DF08(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  v6 = v4;
  v7 = sub_21CE22F90();

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v8 = [v7 description];
  v9 = sub_21CE6CC50();
  v11 = v10;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v12 = sub_21CE6BDA0();
  __swift_project_value_buffer(v12, qword_27CE412C0);

  v13 = sub_21CE6BD80();
  v14 = sub_21CE6CF30();

  v62 = v7;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446978;
    v17 = sub_21CE6D2B0();
    v19 = sub_21CDF2CC8(v17, v18, aBlock);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = 456;
    *(v15 + 22) = 2082;
    v20 = sub_21CE6D2B0();
    v22 = sub_21CDF2CC8(v20, v21, aBlock);

    *(v15 + 24) = v22;
    *(v15 + 32) = 2082;
    v23 = sub_21CDF2CC8(v9, v11, aBlock);

    *(v15 + 34) = v23;
    _os_log_impl(&dword_21CDE1000, v13, v14, "%{public}s:%ld %{public}s %{public}s", v15, 0x2Au);
    swift_arrayDestroy();
    v24 = v16;
    v7 = v62;
    MEMORY[0x21CF1BD50](v24, -1, -1);
    MEMORY[0x21CF1BD50](v15, -1, -1);
  }

  else
  {
  }

  [v7 setExportedObject_];
  v25 = *(a1 + 56);
  v26 = sub_21CE6BD80();
  v27 = sub_21CE6CEF0();
  v28 = os_log_type_enabled(v26, v27);
  if (v25 == 1)
  {
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315906;
      v31 = sub_21CE6D2B0();
      v33 = sub_21CDF2CC8(v31, v32, aBlock);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2048;
      *(v29 + 14) = 461;
      *(v29 + 22) = 2080;
      v34 = sub_21CE6D2B0();
      v36 = sub_21CDF2CC8(v34, v35, aBlock);

      *(v29 + 24) = v36;
      *(v29 + 32) = 2080;
      *(v29 + 34) = sub_21CDF2CC8(0x726F737365636341, 0xE900000000000079, aBlock);
      _os_log_impl(&dword_21CDE1000, v26, v27, "%s:%ld %s %s", v29, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v30, -1, -1);
      MEMORY[0x21CF1BD50](v29, -1, -1);
    }

    v37 = a2;
    v38 = [objc_opt_self() interfaceWithProtocol_];
    [v7 setRemoteObjectInterface_];
  }

  else
  {
    if (v28)
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v39 = 136315906;
      v41 = sub_21CE6D2B0();
      v43 = sub_21CDF2CC8(v41, v42, aBlock);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2048;
      *(v39 + 14) = 465;
      *(v39 + 22) = 2080;
      v44 = sub_21CE6D2B0();
      v46 = sub_21CDF2CC8(v44, v45, aBlock);

      *(v39 + 24) = v46;
      *(v39 + 32) = 2080;
      *(v39 + 34) = sub_21CDF2CC8(0xD000000000000014, 0x800000021CE77370, aBlock);
      _os_log_impl(&dword_21CDE1000, v26, v27, "%s:%ld %s %s", v39, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v40, -1, -1);
      MEMORY[0x21CF1BD50](v39, -1, -1);
    }

    v61 = objc_opt_self();
    v47 = [v61 interfaceWithProtocol_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406D0, &qword_21CE721C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v49 = swift_initStackObject();
    *(v49 + 16) = xmmword_21CE71CD0;
    *(v49 + 32) = sub_21CDE40C8(0, &unk_27CE40B30, 0x277CBEA60);
    *(v49 + 40) = type metadata accessor for TitlebarConfiguration();
    v50 = sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
    *(v49 + 48) = v50;
    *(inited + 32) = v49;
    sub_21CE1EF90(inited, sel_updateTitlebarWithConfig_, 0);
    swift_setDeallocating();
    sub_21CDE5494(inited + 32, &qword_27CE406D8, &qword_21CE721D0);
    v51 = MEMORY[0x277D84F90];
    sub_21CE1EF90(MEMORY[0x277D84F90], sel_updateTitlebarWithConfig_, 1);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v53 = swift_initStackObject();
    *(v53 + 16) = xmmword_21CE702B0;
    *(v53 + 32) = sub_21CDE40C8(0, &unk_27CE406E0, 0x277CCA898);
    *(v52 + 32) = v53;
    sub_21CE1EF90(v52, sel_navigationSubtitleDidChange_, 0);
    swift_setDeallocating();
    sub_21CDE5494(v52 + 32, &qword_27CE406D8, &qword_21CE721D0);
    sub_21CE1EF90(v51, sel_navigationSubtitleDidChange_, 1);
    v54 = swift_initStackObject();
    *(v54 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v55 = swift_initStackObject();
    *(v55 + 16) = xmmword_21CE6F420;
    *(v55 + 32) = type metadata accessor for NavigationToken();
    *(v55 + 40) = type metadata accessor for SettingsNavigationPath();
    *(v54 + 32) = v55;
    sub_21CE1EF90(v54, sel_navigationStackDidChange_, 0);
    swift_setDeallocating();
    sub_21CDE5494(v54 + 32, &qword_27CE406D8, &qword_21CE721D0);
    sub_21CE1EF90(v51, sel_navigationStackDidChange_, 1);
    v56 = swift_initStackObject();
    *(v56 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_21CE6F420;
    *(v57 + 32) = v50;
    *(v57 + 40) = sub_21CDE40C8(0, &qword_27CE40388, 0x277CBEA90);
    *(v56 + 32) = v57;
    sub_21CE1EF90(v56, sel_updateAccessoryViewForExtensionIdentifier_sceneName_with_, 0);
    swift_setDeallocating();
    sub_21CDE5494(v56 + 32, &qword_27CE406D8, &qword_21CE721D0);
    sub_21CE1EF90(v51, sel_updateAccessoryViewForExtensionIdentifier_sceneName_with_, 1);
    v7 = v62;
    [v62 setExportedInterface_];
    v58 = [v61 interfaceWithProtocol_];
    [v62 setRemoteObjectInterface_];

    v37 = a2;
  }

  aBlock[4] = sub_21CE1EA80;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CE27C50;
  aBlock[3] = v37;
  v59 = _Block_copy(aBlock);
  [v7 setInvalidationHandler_];
  _Block_release(v59);
  [v7 resume];
  return v7;
}

void sub_21CE1EA80()
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6BDA0();
  __swift_project_value_buffer(v0, qword_27CE412C0);
  oslog = sub_21CE6BD80();
  v1 = sub_21CE6CF30();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v11 = v3;
    *v2 = 136446978;
    v4 = sub_21CE6D2B0();
    v6 = sub_21CDF2CC8(v4, v5, &v11);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2048;
    *(v2 + 14) = 488;
    *(v2 + 22) = 2082;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, &v11);

    *(v2 + 24) = v9;
    *(v2 + 32) = 2082;
    *(v2 + 34) = sub_21CDF2CC8(0xD000000000000017, 0x800000021CE77390, &v11);
    _os_log_impl(&dword_21CDE1000, oslog, v1, "%{public}s:%ld %{public}s %{public}s", v2, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v3, -1, -1);
    MEMORY[0x21CF1BD50](v2, -1, -1);
  }
}

void sub_21CE1ECA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  swift_getErrorValue();
  v5 = sub_21CE6D450();
  v7 = v6;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  __swift_project_value_buffer(v8, qword_27CE412C0);

  v9 = sub_21CE6BD80();
  v10 = sub_21CE6CF10();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446978;
    v13 = sub_21CE6D2B0();
    v15 = sub_21CDF2CC8(v13, v14, &v20);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a2;
    *(v11 + 22) = 2082;
    v16 = sub_21CE6D2B0();
    v18 = sub_21CDF2CC8(v16, v17, &v20);

    *(v11 + 24) = v18;
    *(v11 + 32) = 2082;
    v19 = sub_21CDF2CC8(v5, v7, &v20);

    *(v11 + 34) = v19;
    _os_log_impl(&dword_21CDE1000, v9, v10, "%{public}s:%ld %{public}s %{public}s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v12, -1, -1);
    MEMORY[0x21CF1BD50](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21CE1EF04()
{
  v1 = *(v0 + 40);

  swift_unknownObjectRelease();
  sub_21CE21490(*(v0 + 64));
  return v0;
}

uint64_t sub_21CE1EF5C()
{
  sub_21CE1EF04();

  return swift_deallocClassInstance();
}

void sub_21CE1EF90(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 32);
    v4 = objc_allocWithZone(MEMORY[0x277CBEB58]);

    v5 = [v4 init];
    v6 = *(v3 + 16);
    if (v6)
    {
      v7 = v3 + 32;
      do
      {
        v7 += 8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406F0, &qword_21CE721D8);
        [v5 addObject_];
        swift_unknownObjectRelease();
        --v6;
      }

      while (v6);
    }

    v5;
    sub_21CE6CE90();
    __break(1u);
  }
}

uint64_t sub_21CE1F134()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406F0, &qword_21CE721D8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27CE406F8;
    v3 = &unk_21CE721E0;
  }

  else
  {
    v2 = &qword_27CE40700;
    v3 = &qword_21CE71908;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

id sub_21CE1F1D0(void *a1)
{
  v2 = v1;
  v2[OBJC_IVAR____TtC8Settings24InitializationParameters____lazy_storage___isDefault] = 2;
  sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
  v4 = sub_21CE6D0F0();
  if (v4)
  {
    v5 = v4;
    v6 = sub_21CE6CC50();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = &v2[OBJC_IVAR____TtC8Settings24InitializationParameters_itemIdentifier];
  *v9 = v6;
  v9[1] = v8;
  v10 = sub_21CE6D0F0();
  if (v10)
  {
    v11 = v10;
    v12 = sub_21CE6CC50();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = &v2[OBJC_IVAR____TtC8Settings24InitializationParameters_anchor];
  *v15 = v12;
  v15[1] = v14;
  type metadata accessor for SettingsNavigationPath();
  *&v2[OBJC_IVAR____TtC8Settings24InitializationParameters_navigationPath] = sub_21CE6D0F0();
  v16 = sub_21CE6D0F0();
  if (v16)
  {
    v17 = v16;
    v18 = sub_21CE6CC50();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = &v2[OBJC_IVAR____TtC8Settings24InitializationParameters_role];
  *v21 = v18;
  v21[1] = v20;
  v22 = sub_21CE6CC20();
  [a1 decodeFloatForKey_];
  v24 = v23;

  v25 = OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth;
  if (v24 == 0.0)
  {
    *&v2[OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth] = 0;
  }

  else
  {
    *&v2[OBJC_IVAR____TtC8Settings24InitializationParameters_contentWidth] = v24;
  }

  v2[v25 + 8] = v24 == 0.0;
  v27.receiver = v2;
  v27.super_class = type metadata accessor for InitializationParameters();
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t sub_21CE1F428(void *a1)
{
  [a1 setExportedObject_];
  v3 = [objc_opt_self() interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406D0, &qword_21CE721C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CE702B0;
  sub_21CE1F134();
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_21CE6F420;
  v6 = sub_21CDE40C8(0, &unk_27CE40B30, 0x277CBEA60);
  *(v5 + 32) = v6;
  v7 = type metadata accessor for SettingsNavigationPath();
  *(v5 + 40) = v7;
  *(inited + 32) = v5;
  v8 = MEMORY[0x277D84F90];
  sub_21CE1EF90(MEMORY[0x277D84F90], sel_requestNavigationPathsFromHistory_, 0);
  sub_21CE1EF90(inited, sel_requestNavigationPathsFromHistory_, 1);
  swift_setDeallocating();
  sub_21CDE5494(inited + 32, &qword_27CE406D8, &qword_21CE721D0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_21CE702B0;
  sub_21CE1F134();
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_21CE6F420;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v9 + 32) = v10;
  sub_21CE1EF90(v9, sel_removeNavigationWithPaths_, 0);
  swift_setDeallocating();
  sub_21CDE5494(v9 + 32, &qword_27CE406D8, &qword_21CE721D0);
  sub_21CE1EF90(v8, sel_removeNavigationWithPaths_, 1);
  [a1 setExportedInterface_];
  [a1 resume];
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v11 = a1;
  v12 = [v11 description];
  v13 = sub_21CE6CC50();
  v15 = v14;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v16 = sub_21CE6BDA0();
  __swift_project_value_buffer(v16, qword_27CE412C0);

  v17 = sub_21CE6BD80();
  v18 = sub_21CE6CEF0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315906;
    v21 = sub_21CE6D2B0();
    v23 = sub_21CDF2CC8(v21, v22, &v29);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    *(v19 + 14) = 102;
    *(v19 + 22) = 2080;
    v24 = sub_21CE6D2B0();
    v26 = sub_21CDF2CC8(v24, v25, &v29);

    *(v19 + 24) = v26;
    *(v19 + 32) = 2080;
    v27 = sub_21CDF2CC8(v13, v15, &v29);

    *(v19 + 34) = v27;
    _os_log_impl(&dword_21CDE1000, v17, v18, "%s:%ld %s %s", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v20, -1, -1);
    MEMORY[0x21CF1BD50](v19, -1, -1);
  }

  else
  {
  }

  return 1;
}

unint64_t sub_21CE1F860(unint64_t a1, uint64_t a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_21CE6D360();
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
      v6 = MEMORY[0x21CF1B2A0](v5, a1);
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
    sub_21CDE40C8(0, qword_281211808, 0x277D82BB8);
    v8 = sub_21CE6D110();

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

unint64_t sub_21CE1F974(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  result = sub_21CE1F860(*a1, a2);
  v7 = result;
  if (v2)
  {
    return v7;
  }

  if (v6)
  {
    if (v4 >> 62)
    {
      return sub_21CE6D360();
    }

    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v9 = qword_281211808;
  v25 = a1;
  while (1)
  {
    if (v4 >> 62)
    {
      if (v8 == sub_21CE6D360())
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
      v11 = MEMORY[0x21CF1B2A0](v8, v4);
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
    sub_21CDE40C8(0, v9, 0x277D82BB8);
    v13 = sub_21CE6D110();

    if ((v13 & 1) == 0)
    {
      if (v7 != v8)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x21CF1B2A0](v7, v4);
          v15 = MEMORY[0x21CF1B2A0](v8, v4);
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
          v4 = sub_21CE25A68(v4);
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
          v4 = sub_21CE25A68(v4);
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
  return sub_21CE6D360();
}

unint64_t sub_21CE1FC04(unint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v25 = *a1 >> 62;
  if (v25)
  {
    goto LABEL_63;
  }

  v27 = v3 & 0xFFFFFFFFFFFFFF8;
  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = 0;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CF1B2A0](v5, v3);
      if (a2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v5 >= *(v27 + 16))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v27 = v3 & 0xFFFFFFFFFFFFFF8;
        v4 = sub_21CE6D360();
        goto LABEL_3;
      }

      v7 = *(v3 + 8 * v5 + 32);
      if (a2)
      {
LABEL_10:
        sub_21CDE40C8(0, &qword_27CE40490, 0x277CCAE80);
        v8 = v7;
        v9 = a2;
        v10 = sub_21CE6D110();

        if (v10)
        {
          a2 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
            goto LABEL_20;
          }

          while (1)
          {
            if (v3 >> 62)
            {
              if (a2 == sub_21CE6D360())
              {
                return v5;
              }
            }

            else if (a2 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              return v5;
            }

            if ((v3 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x21CF1B2A0](a2, v3);
            }

            else
            {
              if ((a2 & 0x8000000000000000) != 0)
              {
                goto LABEL_55;
              }

              if (a2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_56;
              }

              v14 = *(v3 + 8 * a2 + 32);
            }

            v15 = v14;
            v16 = v9;
            v17 = v15;
            v18 = sub_21CE6D110();

            if ((v18 & 1) == 0)
            {
              if (v5 != a2)
              {
                if ((v3 & 0xC000000000000001) != 0)
                {
                  v4 = MEMORY[0x21CF1B2A0](v5, v3);
                  v19 = MEMORY[0x21CF1B2A0](a2, v3);
                }

                else
                {
                  if ((v5 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_60;
                  }

                  v20 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v5 >= v20)
                  {
                    goto LABEL_61;
                  }

                  if (a2 >= v20)
                  {
                    goto LABEL_62;
                  }

                  v21 = *(v3 + 32 + 8 * a2);
                  v4 = *(v3 + 32 + 8 * v5);
                  v19 = v21;
                }

                v22 = v19;
                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
                {
                  v3 = sub_21CE25A68(v3);
                  v23 = (v3 >> 62) & 1;
                }

                else
                {
                  LODWORD(v23) = 0;
                }

                v8 = (v3 & 0xFFFFFFFFFFFFFF8);
                v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
                *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v22;

                if ((v3 & 0x8000000000000000) != 0 || v23)
                {
                  v3 = sub_21CE25A68(v3);
                  v8 = (v3 & 0xFFFFFFFFFFFFFF8);
                  if ((a2 & 0x8000000000000000) != 0)
                  {
LABEL_51:
                    __break(1u);
                    return sub_21CE6D360();
                  }
                }

                else if ((a2 & 0x8000000000000000) != 0)
                {
                  goto LABEL_51;
                }

                if (a2 >= v8[2])
                {
                  goto LABEL_59;
                }

LABEL_20:
                v12 = &v8[a2];
                v13 = v12[4];
                v12[4] = v4;

                *a1 = v3;
              }

              v6 = __OFADD__(v5++, 1);
              if (v6)
              {
                goto LABEL_58;
              }
            }

            v6 = __OFADD__(a2++, 1);
            if (v6)
            {
              goto LABEL_57;
            }
          }
        }

        goto LABEL_5;
      }
    }

LABEL_5:
    v6 = __OFADD__(v5++, 1);
    if (v6)
    {
      goto LABEL_54;
    }
  }

  if (v25)
  {
    return sub_21CE6D360();
  }

  return *(v27 + 16);
}

void sub_21CE1FF38()
{
  v1 = v0;
  v2 = sub_21CE6BCD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40478, &qword_21CE71CF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41[-v7];
  sub_21CE6D0A0();
  v9 = sub_21CE6D090();
  if ((*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    sub_21CDE5494(v8, &qword_27CE40478, &qword_21CE71CF0);
LABEL_13:
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v30 = sub_21CE6BDA0();
    __swift_project_value_buffer(v30, qword_27CE412C0);
    v17 = sub_21CE6BD80();
    v31 = sub_21CE6CF10();
    if (os_log_type_enabled(v17, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v32 = 136446978;
      v34 = sub_21CE6D2B0();
      v36 = sub_21CDF2CC8(v34, v35, &v42);

      *(v32 + 4) = v36;
      *(v32 + 12) = 2048;
      *(v32 + 14) = 258;
      *(v32 + 22) = 2082;
      v37 = sub_21CE6D2B0();
      v39 = sub_21CDF2CC8(v37, v38, &v42);

      *(v32 + 24) = v39;
      *(v32 + 32) = 2082;
      *(v32 + 34) = sub_21CDF2CC8(0xD000000000000013, 0x800000021CE76F50, &v42);
      _os_log_impl(&dword_21CDE1000, v17, v31, "%{public}s:%ld %{public}s %{public}s", v32, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v33, -1, -1);
      MEMORY[0x21CF1BD50](v32, -1, -1);
    }

    goto LABEL_19;
  }

  sub_21CE6D070();
  sub_21CDE5494(v8, &qword_27CE40478, &qword_21CE71CF0);
  v10 = sub_21CE6BCC0();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  v13 = OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_extensionProxies;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (!*(v14 + 16))
  {
LABEL_12:

    goto LABEL_13;
  }

  v15 = sub_21CE66850(v10, v12);
  if ((v16 & 1) == 0)
  {

    goto LABEL_12;
  }

  v17 = *(*(v14 + 56) + 8 * v15);

  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v18 = sub_21CE6BDA0();
  __swift_project_value_buffer(v18, qword_27CE412C0);

  v19 = sub_21CE6BD80();
  v20 = sub_21CE6CF30();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v42 = v22;
    *v21 = 136446978;
    v23 = sub_21CE6D2B0();
    v25 = sub_21CDF2CC8(v23, v24, &v42);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2048;
    *(v21 + 14) = 262;
    *(v21 + 22) = 2082;
    v26 = sub_21CE6D2B0();
    v28 = sub_21CDF2CC8(v26, v27, &v42);

    *(v21 + 24) = v28;
    *(v21 + 32) = 2082;
    v29 = sub_21CDF2CC8(v10, v12, &v42);

    *(v21 + 34) = v29;
    _os_log_impl(&dword_21CDE1000, v19, v20, "%{public}s:%ld %{public}s %{public}s", v21, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v22, -1, -1);
    MEMORY[0x21CF1BD50](v21, -1, -1);
  }

  else
  {
  }

  v40 = *(&v17->isa + OBJC_IVAR____TtCC8Settings35SettingsExtensionHostViewControllerP33_66DE5C0BC5107F4CC3560F98A88F046722SettingsExtensionProxy_host);
  if ([v40 respondsToSelector_])
  {
    [v40 didBeginHosting];
  }

LABEL_19:
}

uint64_t sub_21CE20568(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  __swift_project_value_buffer(v8, qword_27CE412C0);
  v9 = sub_21CE6BD80();
  v10 = sub_21CE6CEF0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315906;
    v13 = sub_21CE6D2B0();
    v15 = sub_21CDF2CC8(v13, v14, &v21);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = 332;
    *(v11 + 22) = 2080;
    v16 = sub_21CE6D2B0();
    v18 = sub_21CDF2CC8(v16, v17, &v21);

    *(v11 + 24) = v18;
    *(v11 + 32) = 2080;
    *(v11 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v21);
    _os_log_impl(&dword_21CDE1000, v9, v10, "%s:%ld %s %s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v12, -1, -1);
    MEMORY[0x21CF1BD50](v11, -1, -1);
  }

  objc_allocWithZone(type metadata accessor for SettingsHostViewControllerRepresentable.MutableState());

  v19 = swift_unknownObjectRetain();
  sub_21CE21E1C(v19, a2, a3, a4);
  return a1;
}

uint64_t sub_21CE207C0(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t sub_21CE207F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_21CE6CDE0();
  v2[5] = sub_21CE6CDD0();
  v4 = sub_21CE6CDB0();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_21CE20890, v4, v3);
}

uint64_t sub_21CE20890()
{
  v17 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v1 = sub_21CE6BDA0();
  __swift_project_value_buffer(v1, qword_27CE412C0);
  v2 = sub_21CE6BD80();
  v3 = sub_21CE6CEF0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315906;
    v6 = sub_21CE6D2B0();
    v8 = sub_21CDF2CC8(v6, v7, &v16);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    *(v4 + 14) = 340;
    *(v4 + 22) = 2080;
    v9 = sub_21CE6D2B0();
    v11 = sub_21CDF2CC8(v9, v10, &v16);

    *(v4 + 24) = v11;
    *(v4 + 32) = 2080;
    *(v4 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v16);
    _os_log_impl(&dword_21CDE1000, v2, v3, "%s:%ld %s %s", v4, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v5, -1, -1);
    MEMORY[0x21CF1BD50](v4, -1, -1);
  }

  v12 = *(v0 + 24);

  *(v0 + 64) = sub_21CE6CDD0();
  v14 = sub_21CE6CDB0();
  *(v0 + 72) = v14;
  *(v0 + 80) = v13;

  return MEMORY[0x2822009F8](sub_21CE20AFC, v14, v13);
}

uint64_t sub_21CE20AFC()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);
  v0[11] = v2;
  objc_allocWithZone(type metadata accessor for SettingsHostViewControllerRepresentable.MutableState());
  v3 = v1;
  swift_unknownObjectRetain();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_21CE20BC8;
  v5 = v0[3];

  return sub_21CE2277C(v2, v5);
}

uint64_t sub_21CE20BC8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 104) = a1;

  swift_unknownObjectRelease();
  v4 = *(v2 + 80);
  v5 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_21CE20D2C, v5, v4);
}

uint64_t sub_21CE20D2C()
{
  v1 = v0[3];

  v2 = v0[6];
  v3 = v0[7];

  return MEMORY[0x2822009F8](sub_21CE20D98, v2, v3);
}

uint64_t sub_21CE20D98()
{

  v1 = v0[1];
  v2 = v0[13];
  v3 = v0[2];

  return v1(v3, v3, v2, 0);
}

unint64_t sub_21CE20E24(uint64_t a1)
{
  result = sub_21CE20E4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21CE20E4C()
{
  result = qword_27CE404E0;
  if (!qword_27CE404E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE404E0);
  }

  return result;
}

unint64_t sub_21CE20EF0()
{
  result = qword_27CE404E8;
  if (!qword_27CE404E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE404E8);
  }

  return result;
}

uint64_t sub_21CE21198(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_21CE211F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_21CE21328()
{
  result = qword_27CE406A8;
  if (!qword_27CE406A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE406A8);
  }

  return result;
}

unint64_t sub_21CE2137C()
{
  result = qword_27CE406B0;
  if (!qword_27CE406B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE406B0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21CE213DC(uint64_t *a1, int a2)
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

uint64_t sub_21CE21424(uint64_t result, int a2, int a3)
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

void sub_21CE21490(id a1)
{
  if (a1 != 1)
  {
  }
}

unint64_t sub_21CE214A0()
{
  result = qword_27CE406C8;
  if (!qword_27CE406C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE406C8);
  }

  return result;
}

id sub_21CE214F4(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_21CE21514(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21CDE7A00;

  return sub_21CE1A450(a1, v4, v5, v7, v6);
}

unint64_t sub_21CE215EC()
{
  result = qword_27CE40720;
  if (!qword_27CE40720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE40728, qword_21CE72220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40720);
  }

  return result;
}

unint64_t sub_21CE21654()
{
  result = qword_27CE40730;
  if (!qword_27CE40730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40730);
  }

  return result;
}

id sub_21CE216F4()
{
  v0 = sub_21CE235AC();

  return v0;
}

uint64_t sub_21CE21768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE22600();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21CE217CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE22600();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21CE21830(uint64_t a1)
{
  sub_21CE22600();
  sub_21CE6C520();
  __break(1u);
}

id sub_21CE21858()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40478, &qword_21CE71CF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v40 - v3;
  v5 = sub_21CE6BBE0();
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CE6D090();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CE6BCD0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v48 = &v40 - v16;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v50 = 0x203A656C6F72;
  v51 = 0xE600000000000000;
  v49 = *(v0 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role);
  v45 = v49;
  v46 = v15;
  v17 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v18 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v18);

  v19 = v51;
  v44 = v50;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v20 = sub_21CE6BDA0();
  __swift_project_value_buffer(v20, qword_27CE412C0);

  v21 = sub_21CE6BD80();
  v22 = sub_21CE6CEF0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v41 = v7;
    v24 = v23;
    v25 = swift_slowAlloc();
    v43 = v1;
    v40 = v25;
    v50 = v25;
    *v24 = 136315906;
    v26 = sub_21CE6D2B0();
    v42 = v4;
    v28 = v12;
    v29 = v10;
    v30 = sub_21CDF2CC8(v26, v27, &v50);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2048;
    *(v24 + 14) = 66;
    *(v24 + 22) = 2080;
    v31 = sub_21CE6D2B0();
    v33 = sub_21CDF2CC8(v31, v32, &v50);

    *(v24 + 24) = v33;
    v10 = v29;
    v12 = v28;
    *(v24 + 32) = 2080;
    v34 = sub_21CDF2CC8(v44, v19, &v50);

    *(v24 + 34) = v34;
    v4 = v42;
    _os_log_impl(&dword_21CDE1000, v21, v22, "%s:%ld %s %s", v24, 0x2Au);
    v35 = v40;
    swift_arrayDestroy();
    v1 = v43;
    MEMORY[0x21CF1BD50](v35, -1, -1);
    v36 = v24;
    v7 = v41;
    MEMORY[0x21CF1BD50](v36, -1, -1);
  }

  else
  {
  }

  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  swift_unknownObjectRetain();
  v37 = v48;
  sub_21CE6BCE0();
  (*(v12 + 16))(v46, v37, v11);
  if (v45)
  {
    sub_21CE6CC50();
    sub_21CE6BBF0();
  }

  else
  {
    sub_21CE6BBD0();
  }

  sub_21CE6D080();
  v38 = [objc_allocWithZone(MEMORY[0x277CC5E70]) init];
  (*(v8 + 16))(v4, v10, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  sub_21CE6D0B0();
  [v38 setDelegate_];
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v37, v11);
  return v38;
}

char *sub_21CE21E1C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = &qword_27CE40000;
  *&v4[OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController] = 0;
  v10 = &v4[OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion];
  *v10 = 0;
  v10[1] = 0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v40[0] = 0x203A656C6F72;
  v40[1] = 0xE600000000000000;
  v39 = a2;
  v36 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v11 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v11);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v12 = sub_21CE6BDA0();
  __swift_project_value_buffer(v12, qword_27CE412C0);

  v13 = sub_21CE6BD80();
  v14 = sub_21CE6CF30();

  if (os_log_type_enabled(v13, v14))
  {
    v34 = a2;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v40[0] = v16;
    *v15 = 136446978;
    v17 = sub_21CE6D2B0();
    v35 = a1;
    v19 = sub_21CDF2CC8(v17, v18, v40);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2048;
    *(v15 + 14) = 101;
    *(v15 + 22) = 2082;
    v20 = sub_21CE6D2B0();
    v22 = sub_21CDF2CC8(v20, v21, v40);

    *(v15 + 24) = v22;
    a1 = v35;
    *(v15 + 32) = 2082;
    v23 = sub_21CDF2CC8(0x203A656C6F72, 0xE600000000000000, v40);

    *(v15 + 34) = v23;
    _os_log_impl(&dword_21CDE1000, v13, v14, "%{public}s:%ld %{public}s %{public}s", v15, 0x2Au);
    swift_arrayDestroy();
    v24 = v16;
    v9 = &qword_27CE40000;
    MEMORY[0x21CF1BD50](v24, -1, -1);
    v25 = v15;
    a2 = v34;
    MEMORY[0x21CF1BD50](v25, -1, -1);
  }

  else
  {
  }

  *&v5[OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_ext] = a1;
  v26 = *v10;
  v27 = v10[1];
  *v10 = a3;
  v10[1] = a4;
  swift_unknownObjectRetain();

  sub_21CDEEA58(v26, v27);
  *&v5[OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role] = a2;
  v38.receiver = v5;
  v38.super_class = type metadata accessor for SettingsHostViewControllerRepresentable.MutableState();
  v28 = v36;
  v29 = objc_msgSendSuper2(&v38, sel_init);
  v30 = sub_21CE21858();
  swift_unknownObjectRelease();

  v31 = v9[233];
  v32 = *&v29[v31];
  *&v29[v31] = v30;

  return v29;
}

void sub_21CE22194(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40790, &qword_21CE72498);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  (*(v5 + 16))(&v15 - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  v10 = (a2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  v11 = *(a2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  v12 = *(a2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion + 8);
  *v10 = sub_21CE24878;
  v10[1] = v9;
  sub_21CDEEA58(v11, v12);
  v13 = sub_21CE21858();
  v14 = *(a2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController);
  *(a2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController) = v13;
}

id sub_21CE22514()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SettingsHostViewControllerRepresentable.MutableState();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21CE22600()
{
  result = qword_27CE40760;
  if (!qword_27CE40760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40760);
  }

  return result;
}

id sub_21CE22654()
{
  v0 = sub_21CE22CF4();

  return v0;
}

uint64_t sub_21CE2268C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE249B4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_21CE226F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21CE249B4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_21CE22754(uint64_t a1)
{
  sub_21CE249B4();
  sub_21CE6C520();
  __break(1u);
}

uint64_t sub_21CE2277C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_21CE227A0, 0, 0);
}

uint64_t sub_21CE227A0()
{
  v33 = v0;
  super_class = v0[3].super_class;
  *(super_class + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController) = 0;
  v2 = (super_class + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  *v2 = 0;
  v2[1] = 0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  receiver = v0[3].receiver;
  v31 = 0x203A656C6F72;
  v32 = 0xE600000000000000;
  v0[2].receiver = receiver;
  v4 = receiver;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v5 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v5);

  v7 = v31;
  v6 = v32;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  __swift_project_value_buffer(v8, qword_27CE412C0);

  v9 = sub_21CE6BD80();
  v10 = sub_21CE6CF30();

  if (os_log_type_enabled(v9, v10))
  {
    v30 = v4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136446978;
    v13 = sub_21CE6D2B0();
    v15 = sub_21CDF2CC8(v13, v14, &v31);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = 113;
    *(v11 + 22) = 2082;
    v16 = sub_21CE6D2B0();
    v18 = sub_21CDF2CC8(v16, v17, &v31);

    *(v11 + 24) = v18;
    *(v11 + 32) = 2082;
    v19 = sub_21CDF2CC8(v7, v6, &v31);

    *(v11 + 34) = v19;
    _os_log_impl(&dword_21CDE1000, v9, v10, "%{public}s:%ld %{public}s %{public}s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v12, -1, -1);
    v20 = v11;
    v4 = v30;
    MEMORY[0x21CF1BD50](v20, -1, -1);
  }

  else
  {
  }

  v21 = v0[3].receiver;
  v22 = v0[3].super_class;
  *(v22 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_ext) = v0[2].super_class;
  *(v22 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role) = v21;
  v23 = type metadata accessor for SettingsHostViewControllerRepresentable.MutableState();
  v0[1].receiver = v22;
  v0[1].super_class = v23;
  v24 = v4;
  swift_unknownObjectRetain();
  v25 = objc_msgSendSuper2(v0 + 1, sel_init);
  v0[4].receiver = v25;
  v26 = swift_task_alloc();
  v0[4].super_class = v26;
  *(v26 + 16) = v25;
  v27 = v25;
  v28 = swift_task_alloc();
  v0[5].receiver = v28;
  *v28 = v0;
  v28[1] = sub_21CE22B78;

  return MEMORY[0x2822007B8]();
}

uint64_t sub_21CE22B78()
{

  return MEMORY[0x2822009F8](sub_21CE22C90, 0, 0);
}

uint64_t sub_21CE22C90()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_21CE22CF4()
{
  v1 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v2 = OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController;
  v22 = *(v0 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController);
  v3 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40788, &qword_21CE72488);
  v4 = sub_21CE6CC80();
  v6 = v5;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v7 = sub_21CE6BDA0();
  __swift_project_value_buffer(v7, qword_27CE412C0);

  v8 = sub_21CE6BD80();
  v9 = sub_21CE6CEF0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315906;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, &v22);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2048;
    *(v10 + 14) = 86;
    *(v10 + 22) = 2080;
    v15 = sub_21CE6D2B0();
    v17 = sub_21CDF2CC8(v15, v16, &v22);

    *(v10 + 24) = v17;
    *(v10 + 32) = 2080;
    v18 = sub_21CDF2CC8(v4, v6, &v22);

    *(v10 + 34) = v18;
    _os_log_impl(&dword_21CDE1000, v8, v9, "%s:%ld %s %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v11, -1, -1);
    MEMORY[0x21CF1BD50](v10, -1, -1);

    result = *(v1 + v2);
    if (result)
    {
      return result;
    }
  }

  else
  {

    result = *(v1 + v2);
    if (result)
    {
      return result;
    }
  }

  v20 = sub_21CE21858();
  v21 = *(v1 + v2);
  *(v1 + v2) = v20;

  result = *(v1 + v2);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_21CE22F90()
{
  v48 = *MEMORY[0x277D85DE8];
  v46 = 0;
  v0 = [sub_21CE22CF4() makeXPCConnectionWithError_];
  if (v0)
  {
    v1 = qword_27CE3FA30;
    v2 = v46;
    if (v1 != -1)
    {
      swift_once();
    }

    v3 = [v0 description];
    v4 = sub_21CE6CC50();
    v6 = v5;

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v7 = sub_21CE6BDA0();
    __swift_project_value_buffer(v7, qword_27CE412C0);

    v8 = sub_21CE6BD80();
    v9 = sub_21CE6CF30();

    if (os_log_type_enabled(v8, v9))
    {
      v45 = v0;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v46 = v11;
      *v10 = 136446978;
      v12 = sub_21CE6D2B0();
      v14 = v4;
      v15 = sub_21CDF2CC8(v12, v13, &v46);

      *(v10 + 4) = v15;
      *(v10 + 12) = 2048;
      *(v10 + 14) = 198;
      *(v10 + 22) = 2082;
      v16 = sub_21CE6D2B0();
      v18 = sub_21CDF2CC8(v16, v17, &v46);

      *(v10 + 24) = v18;
      *(v10 + 32) = 2082;
      v19 = sub_21CDF2CC8(v14, v6, &v46);

      *(v10 + 34) = v19;
      _os_log_impl(&dword_21CDE1000, v8, v9, "%{public}s:%ld %{public}s %{public}s", v10, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v11, -1, -1);
      v20 = v10;
      v0 = v45;
      MEMORY[0x21CF1BD50](v20, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v21 = v46;
    v22 = sub_21CE6B910();

    swift_willThrow();
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    v46 = 0;
    v47 = 0xE000000000000000;
    sub_21CE6D290();
    MEMORY[0x21CF1ACB0](0xD00000000000001ELL, 0x800000021CE776F0);
    v23 = sub_21CE22CF4();
    v24 = [v23 description];
    v25 = sub_21CE6CC50();
    v27 = v26;

    MEMORY[0x21CF1ACB0](v25, v27);

    MEMORY[0x21CF1ACB0](0x2720726F72726520, 0xE800000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
    sub_21CE6D340();
    MEMORY[0x21CF1ACB0](39, 0xE100000000000000);
    v28 = v46;
    v29 = v47;
    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v30 = sub_21CE6BDA0();
    __swift_project_value_buffer(v30, qword_27CE412C0);

    v31 = sub_21CE6BD80();
    v32 = sub_21CE6CF10();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v44 = v22;
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136446978;
      v35 = sub_21CE6D2B0();
      v37 = sub_21CDF2CC8(v35, v36, &v46);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2048;
      *(v33 + 14) = 201;
      *(v33 + 22) = 2082;
      v38 = sub_21CE6D2B0();
      v40 = sub_21CDF2CC8(v38, v39, &v46);

      *(v33 + 24) = v40;
      *(v33 + 32) = 2082;
      v41 = sub_21CDF2CC8(v28, v29, &v46);

      *(v33 + 34) = v41;
      _os_log_impl(&dword_21CDE1000, v31, v32, "%{public}s:%ld %{public}s %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v34, -1, -1);
      v42 = v33;
      v0 = 0;
      MEMORY[0x21CF1BD50](v42, -1, -1);
    }

    else
    {
    }

    sub_21CE2481C();
    swift_allocError();
    swift_willThrow();
  }

  return v0;
}

uint64_t sub_21CE235AC()
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6BDA0();
  __swift_project_value_buffer(v0, qword_27CE412C0);
  v1 = sub_21CE6BD80();
  v2 = sub_21CE6CF00();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v12[0] = v4;
    *v3 = 136315906;
    v5 = sub_21CE6D2B0();
    v7 = sub_21CDF2CC8(v5, v6, v12);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2048;
    *(v3 + 14) = 43;
    *(v3 + 22) = 2080;
    v8 = sub_21CE6D2B0();
    v10 = sub_21CDF2CC8(v8, v9, v12);

    *(v3 + 24) = v10;
    *(v3 + 32) = 2080;
    *(v3 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v12);
    _os_log_impl(&dword_21CDE1000, v1, v2, "%s:%ld %s %s", v3, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v4, -1, -1);
    MEMORY[0x21CF1BD50](v3, -1, -1);
  }

  if (qword_27CE3F9D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return *(qword_27CE40420 + OBJC_IVAR____TtC8Settings35SettingsExtensionHostViewController_viewController);
}

void sub_21CE23800()
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v0 = sub_21CE6BDA0();
  __swift_project_value_buffer(v0, qword_27CE412C0);
  oslog = sub_21CE6BD80();
  v1 = sub_21CE6CF00();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v11 = v3;
    *v2 = 136315906;
    v4 = sub_21CE6D2B0();
    v6 = sub_21CDF2CC8(v4, v5, &v11);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2048;
    *(v2 + 14) = 48;
    *(v2 + 22) = 2080;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, &v11);

    *(v2 + 24) = v9;
    *(v2 + 32) = 2080;
    *(v2 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, &v11);
    _os_log_impl(&dword_21CDE1000, oslog, v1, "%s:%ld %s %s", v2, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v3, -1, -1);
    MEMORY[0x21CF1BD50](v2, -1, -1);
  }
}

void sub_21CE239FC()
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v15[0] = 0x203A656C6F72;
  v15[1] = 0xE600000000000000;
  v1 = *(v0 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v2 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v2);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v3 = sub_21CE6BDA0();
  __swift_project_value_buffer(v3, qword_27CE412C0);

  v4 = sub_21CE6BD80();
  v5 = sub_21CE6CF30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136446978;
    v8 = sub_21CE6D2B0();
    v10 = sub_21CDF2CC8(v8, v9, v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2048;
    *(v6 + 14) = 127;
    *(v6 + 22) = 2082;
    v11 = sub_21CE6D2B0();
    v13 = sub_21CDF2CC8(v11, v12, v15);

    *(v6 + 24) = v13;
    *(v6 + 32) = 2082;
    v14 = sub_21CDF2CC8(0x203A656C6F72, 0xE600000000000000, v15);

    *(v6 + 34) = v14;
    _os_log_impl(&dword_21CDE1000, v4, v5, "%{public}s:%ld %{public}s %{public}s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v7, -1, -1);
    MEMORY[0x21CF1BD50](v6, -1, -1);
  }

  else
  {
  }
}

void sub_21CE23C84()
{
  v1 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v17[0] = 0x203A656C6F72;
  v17[1] = 0xE600000000000000;
  v2 = *(v0 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v3 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v3);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v4 = sub_21CE6BDA0();
  __swift_project_value_buffer(v4, qword_27CE412C0);

  v5 = sub_21CE6BD80();
  v6 = sub_21CE6CF30();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136446978;
    v9 = sub_21CE6D2B0();
    v11 = sub_21CDF2CC8(v9, v10, v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = 134;
    *(v7 + 22) = 2082;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, v17);

    *(v7 + 24) = v14;
    *(v7 + 32) = 2082;
    v15 = sub_21CDF2CC8(0x203A656C6F72, 0xE600000000000000, v17);

    *(v7 + 34) = v15;
    _os_log_impl(&dword_21CDE1000, v5, v6, "%{public}s:%ld %{public}s %{public}s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v8, -1, -1);
    MEMORY[0x21CF1BD50](v7, -1, -1);
  }

  else
  {
  }

  v16 = *(v1 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController);
  *(v1 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController) = 0;
}

void sub_21CE23F24(void *a1)
{
  v2 = v1;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v49 = 0x203A656C6F72;
  v50 = 0xE600000000000000;
  v4 = *(v1 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v5 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v5);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v6 = sub_21CE6BDA0();
  __swift_project_value_buffer(v6, qword_27CE412C0);

  v7 = sub_21CE6BD80();
  v8 = sub_21CE6CF30();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v49 = v10;
    *v9 = 136446978;
    v11 = sub_21CE6D2B0();
    v47 = a1;
    v13 = sub_21CDF2CC8(v11, v12, &v49);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    *(v9 + 14) = 140;
    *(v9 + 22) = 2082;
    v14 = sub_21CE6D2B0();
    v16 = sub_21CDF2CC8(v14, v15, &v49);

    *(v9 + 24) = v16;
    v2 = v1;
    *(v9 + 32) = 2082;
    v17 = sub_21CDF2CC8(0x203A656C6F72, 0xE600000000000000, &v49);

    *(v9 + 34) = v17;
    a1 = v47;
    _os_log_impl(&dword_21CDE1000, v7, v8, "%{public}s:%ld %{public}s %{public}s", v9, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v10, -1, -1);
    MEMORY[0x21CF1BD50](v9, -1, -1);

    if (v47)
    {
      goto LABEL_7;
    }

LABEL_10:
    v21 = sub_21CE6BD80();
    v32 = sub_21CE6CF10();
    if (os_log_type_enabled(v21, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v49 = v34;
      *v33 = 136446978;
      v35 = sub_21CE6D2B0();
      v37 = sub_21CDF2CC8(v35, v36, &v49);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2048;
      *(v33 + 14) = 142;
      *(v33 + 22) = 2082;
      v38 = sub_21CE6D2B0();
      v40 = sub_21CDF2CC8(v38, v39, &v49);

      *(v33 + 24) = v40;
      *(v33 + 32) = 2082;
      *(v33 + 34) = sub_21CDF2CC8(0x64656C696146, 0xE600000000000000, &v49);
      _os_log_impl(&dword_21CDE1000, v21, v32, "%{public}s:%ld %{public}s %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v34, -1, -1);
      MEMORY[0x21CF1BD50](v33, -1, -1);
    }

    goto LABEL_12;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v49 = 0;
  v50 = 0xE000000000000000;
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CE6D340();
  v20 = v49;
  v19 = v50;

  v21 = sub_21CE6BD80();
  v22 = sub_21CE6CF10();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v49 = v24;
    *v23 = 136446978;
    v25 = sub_21CE6D2B0();
    v48 = a1;
    v27 = sub_21CDF2CC8(v25, v26, &v49);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2048;
    *(v23 + 14) = 142;
    *(v23 + 22) = 2082;
    v28 = sub_21CE6D2B0();
    v30 = sub_21CDF2CC8(v28, v29, &v49);

    *(v23 + 24) = v30;
    *(v23 + 32) = 2082;
    v31 = sub_21CDF2CC8(v20, v19, &v49);

    *(v23 + 34) = v31;
    _os_log_impl(&dword_21CDE1000, v21, v22, "%{public}s:%ld %{public}s %{public}s", v23, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v24, -1, -1);
    MEMORY[0x21CF1BD50](v23, -1, -1);

LABEL_12:
    goto LABEL_14;
  }

LABEL_14:
  v41 = (v2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  v42 = *(v2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  if (v42)
  {
    v43 = v41[1];

    v42(0);
    sub_21CDEEA58(v42, v43);
    v44 = *v41;
  }

  else
  {
    v44 = 0;
  }

  v45 = v41[1];
  *v41 = 0;
  v41[1] = 0;
  sub_21CDEEA58(v44, v45);
  v46 = *(v2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController);
  *(v2 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState__hostViewController) = 0;
}

uint64_t sub_21CE24540()
{
  v1 = v0;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v22[0] = 0x203A656C6F72;
  v22[1] = 0xE600000000000000;
  v2 = *(v0 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_role);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40770, &unk_21CE72478);
  v3 = sub_21CE6CC80();
  MEMORY[0x21CF1ACB0](v3);

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v4 = sub_21CE6BDA0();
  __swift_project_value_buffer(v4, qword_27CE412C0);

  v5 = sub_21CE6BD80();
  v6 = sub_21CE6CF30();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22[0] = v8;
    *v7 = 136446978;
    v9 = sub_21CE6D2B0();
    v11 = sub_21CDF2CC8(v9, v10, v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = 152;
    *(v7 + 22) = 2082;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, v22);

    *(v7 + 24) = v14;
    *(v7 + 32) = 2082;
    v15 = sub_21CDF2CC8(0x203A656C6F72, 0xE600000000000000, v22);

    *(v7 + 34) = v15;
    _os_log_impl(&dword_21CDE1000, v5, v6, "%{public}s:%ld %{public}s %{public}s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v8, -1, -1);
    MEMORY[0x21CF1BD50](v7, -1, -1);
  }

  else
  {
  }

  v16 = (v1 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  v17 = *(v1 + OBJC_IVAR____TtCV8Settings39SettingsHostViewControllerRepresentableP33_660F061974F96B10B28E661239591CBA12MutableState_completion);
  if (v17)
  {
    v18 = v16[1];

    v17(1);
    sub_21CDEEA58(v17, v18);
    v19 = *v16;
  }

  else
  {
    v19 = 0;
  }

  v20 = v16[1];
  *v16 = 0;
  v16[1] = 0;
  return sub_21CDEEA58(v19, v20);
}

unint64_t sub_21CE2481C()
{
  result = qword_27CE40780;
  if (!qword_27CE40780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40780);
  }

  return result;
}

unint64_t sub_21CE24908()
{
  result = qword_27CE40798;
  if (!qword_27CE40798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE40798);
  }

  return result;
}

unint64_t sub_21CE24960()
{
  result = qword_27CE407A0;
  if (!qword_27CE407A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE407A0);
  }

  return result;
}

unint64_t sub_21CE249B4()
{
  result = qword_27CE407A8;
  if (!qword_27CE407A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE407A8);
  }

  return result;
}

uint64_t SettingsSearchItem.description.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8Settings18SettingsSearchItem_payload);
  if (*(v2 + 16) && (v3 = sub_21CE66850(0x6E41686372616573, 0xEC000000726F6863), (v4 & 1) != 0) && (v5 = (*(v2 + 56) + 16 * v3), (v6 = v5[1]) != 0))
  {
    v7 = *v5;
  }

  else
  {

    v6 = 0xEB000000003E726FLL;
    v7 = 0x68636E61206F6E3CLL;
  }

  v8 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_title;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (*(v9 + 16) && (v10 = sub_21CE66850(28261, 0xE200000000000000), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 16 * v10);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v12 = 0x6C746974206F6E3CLL;
  }

  MEMORY[0x21CF1ACB0](10272, 0xE200000000000000);
  MEMORY[0x21CF1ACB0](v7, v6);

  MEMORY[0x21CF1ACB0](41, 0xE100000000000000);
  return v12;
}

uint64_t SettingsSearchItem.anchor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Settings18SettingsSearchItem_payload);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = sub_21CE66850(0x6E41686372616573, 0xEC000000726F6863);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = *(*(v1 + 56) + 16 * v2);

  return v4;
}

Swift::Void __swiftcall SettingsSearchItem.encode(with:)(NSCoder with)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  swift_beginAccess();

  v4 = sub_21CE6CB50();

  v5 = sub_21CE6CC20();
  [v3 encodeObject:v4 forKey:v5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40460, &qword_21CE72620);
  v6 = sub_21CE6CB50();
  v7 = sub_21CE6CC20();
  [v3 encodeObject:v6 forKey:v7];

  v8 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords;
  swift_beginAccess();
  if (*(v1 + v8))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE407D0, &qword_21CE6F610);
    v9 = sub_21CE6CD30();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_21CE6CC20();
  [v3 encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  v11 = [v3 encodedData];
  v12 = sub_21CE6BA90();
  v14 = v13;

  v15 = sub_21CE6BA70();
  sub_21CDF32E8(v12, v14);
  v16 = sub_21CE6CC20();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
}

id SettingsSearchItem.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords;
  *&v1[OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords] = 0;
  sub_21CE25A1C();
  v6 = sub_21CE6D0F0();
  if (!v6)
  {

    goto LABEL_6;
  }

  v7 = v6;
  v8 = sub_21CE6BA90();
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
  v12 = sub_21CE25AF4(v8, v10);
  sub_21CDF32E8(v8, v10);
  if (!v12)
  {

LABEL_4:
LABEL_6:

    swift_deallocPartialClassInstance();
    return 0;
  }

  v14 = sub_21CE6CC20();
  v15 = [v12 decodeObjectForKey_];

  if (v15)
  {
    sub_21CE6D190();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {

    sub_21CDE5494(&v26, &qword_27CE40410, &qword_21CE71B10);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE407D0, &qword_21CE6F610);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_4;
  }

  *&v2[OBJC_IVAR____TtC8Settings18SettingsSearchItem_title] = v23;
  v16 = sub_21CE6CC20();
  v17 = [v12 decodeObjectForKey_];

  if (v17)
  {
    sub_21CE6D190();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {

    sub_21CDE5494(&v26, &qword_27CE40410, &qword_21CE71B10);
LABEL_25:

    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE407D8, &qword_21CE72628);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_25;
  }

  *&v2[OBJC_IVAR____TtC8Settings18SettingsSearchItem_payload] = v23;
  v18 = sub_21CE6CC20();
  v19 = [v12 decodeObjectForKey_];

  if (v19)
  {
    sub_21CE6D190();
    swift_unknownObjectRelease();
  }

  else
  {

    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (*(&v25 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE407E0, &qword_21CE72630);
    if (swift_dynamicCast())
    {
      v20 = v23;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    sub_21CDE5494(&v26, &qword_27CE40410, &qword_21CE71B10);
    v20 = 0;
  }

  swift_beginAccess();
  *&v2[v5] = v20;

  v22.receiver = v2;
  v22.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v22, sel_init);

  return v21;
}

id SettingsSearchItem.init(title:searchAnchor:keywords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords;
  *&v4[OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords] = 0;
  *&v4[OBJC_IVAR____TtC8Settings18SettingsSearchItem_title] = a1;
  swift_beginAccess();
  *&v4[v10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE407E8, &qword_21CE72638);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CE702B0;
  *(inited + 32) = 0x6E41686372616573;
  v12 = inited + 32;
  *(inited + 40) = 0xEC000000726F6863;
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  v13 = sub_21CDFA688(inited);
  swift_setDeallocating();
  sub_21CDE5494(v12, &unk_27CE407F0, &qword_21CE72640);
  *&v4[OBJC_IVAR____TtC8Settings18SettingsSearchItem_payload] = v13;
  v15.receiver = v4;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

char *SettingsSearchItem.__allocating_init(title:localization:searchAnchor:keywords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = sub_21CE25BB4(a1, a2, a3, a4, a5, a6, a7);

  return v16;
}

char *SettingsSearchItem.init(title:localization:searchAnchor:keywords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = sub_21CE25BB4(a1, a2, a3, a4, a5, a6, a7);

  return v7;
}

Swift::Void __swiftcall SettingsSearchItem.setLocalized(title:forLocalization:)(Swift::String title, Swift::String forLocalization)
{
  object = forLocalization._object;
  countAndFlagsBits = forLocalization._countAndFlagsBits;
  v5 = title._object;
  v6 = title._countAndFlagsBits;
  v7 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_title;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  *(v2 + v7) = 0x8000000000000000;
  sub_21CE066E0(v6, v5, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);

  *(v2 + v7) = v9;
  swift_endAccess();
}

Swift::Void __swiftcall SettingsSearchItem.setLocalized(keyword:atIndex:forLocalization:)(Swift::String keyword, Swift::Int atIndex, Swift::String forLocalization)
{
  v4 = v3;
  object = forLocalization._object;
  countAndFlagsBits = forLocalization._countAndFlagsBits;
  v8 = keyword._object;
  v9 = keyword._countAndFlagsBits;
  v10 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords;
  swift_beginAccess();
  v11 = *(v4 + v10);
  if (v11)
  {
    if (atIndex < 0)
    {
      return;
    }
  }

  else
  {
    if (atIndex)
    {
      return;
    }

    v11 = MEMORY[0x277D84F90];
    *(v4 + v10) = MEMORY[0x277D84F90];
  }

  if (*(v11 + 16) > atIndex)
  {
    swift_beginAccess();
    v12 = *(v4 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v10) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_21CE25ACC(v12);
      *(v4 + v10) = v12;
    }

    if (v12[2] <= atIndex)
    {
      __break(1u);
    }

    else
    {
      v14 = &v12[atIndex];

      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = v14[4];
      v14[4] = 0x8000000000000000;
      sub_21CE066E0(v9, v8, countAndFlagsBits, object, v15);

      v14[4] = v16;
      *(v4 + v10) = v12;
      swift_endAccess();
    }
  }
}

id SettingsSearchItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SettingsSearchItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21CE25A1C()
{
  result = qword_27CE40388;
  if (!qword_27CE40388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE40388);
  }

  return result;
}

uint64_t sub_21CE25A68(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_21CE6D360();
  }

  return sub_21CE6D2D0();
}

id sub_21CE25AF4(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = sub_21CE6BA70();
  v8[0] = 0;
  v4 = [v2 initForReadingFromData:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_21CE6B910();

    swift_willThrow();
  }

  return v4;
}

char *sub_21CE25BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v15 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords;
  *&v7[OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords] = 0;
  *&v7[OBJC_IVAR____TtC8Settings18SettingsSearchItem_title] = MEMORY[0x277D84F98];
  swift_beginAccess();
  *&v7[v15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE407E8, &qword_21CE72638);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21CE702B0;
  *(inited + 32) = 0x6E41686372616573;
  v17 = inited + 32;
  *(inited + 40) = 0xEC000000726F6863;
  *(inited + 48) = a5;
  *(inited + 56) = a6;
  v18 = sub_21CDFA688(inited);
  swift_setDeallocating();
  sub_21CDE5494(v17, &unk_27CE407F0, &qword_21CE72640);
  *&v7[OBJC_IVAR____TtC8Settings18SettingsSearchItem_payload] = v18;
  v49.receiver = v7;
  v49.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v49, sel_init);
  v20 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_title;
  swift_beginAccess();
  v21 = v19;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *&v19[v20];
  *&v19[v20] = 0x8000000000000000;
  sub_21CE066E0(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

  *&v19[v20] = v48;
  swift_endAccess();

  if (!a7)
  {

    return v21;
  }

  v23 = OBJC_IVAR____TtC8Settings18SettingsSearchItem_keywords;
  swift_beginAccess();
  v47 = v23;
  *&v21[v23] = MEMORY[0x277D84F90];

  v24 = *(a7 + 16);
  if (!v24)
  {
LABEL_16:

    return v21;
  }

  v25 = (a7 + 40);
  while (1)
  {
    v26 = *(v25 - 1);
    v27 = *v25;
    swift_beginAccess();
    if (!*&v21[v47])
    {

      goto LABEL_5;
    }

    v28 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40800, &qword_21CE734F0);
    v29 = sub_21CE6D390();
    swift_bridgeObjectRetain_n();

    v30 = a3;
    v31 = sub_21CE66850(a3, a4);
    v33 = v32;

    if (v33)
    {
      break;
    }

    v29[(v31 >> 6) + 8] |= 1 << v31;
    v35 = (v29[6] + 16 * v31);
    *v35 = v30;
    v35[1] = a4;
    v36 = (v29[7] + 16 * v31);
    *v36 = v26;
    v36[1] = v27;
    v37 = v29[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_19;
    }

    v40 = a4;
    v41 = v30;
    v29[2] = v39;
    v42 = *&v28[v47];
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v28[v47] = v42;
    if ((v43 & 1) == 0)
    {
      v42 = sub_21CDF2994(0, v42[2] + 1, 1, v42);
      *&v28[v47] = v42;
    }

    v45 = v42[2];
    v44 = v42[3];
    if (v45 >= v44 >> 1)
    {
      v42 = sub_21CDF2994((v44 > 1), v45 + 1, 1, v42);
    }

    v42[2] = v45 + 1;
    v42[v45 + 4] = v29;
    v21 = v28;
    *&v28[v47] = v42;
    a3 = v41;
    a4 = v40;
LABEL_5:
    swift_endAccess();

    v25 += 2;
    if (!--v24)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void sub_21CE2600C(uint64_t a1)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_27CE412C0);
  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CF30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446978;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = 35;
    *(v5 + 22) = 2082;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, &v14);

    *(v5 + 24) = v12;
    *(v5 + 32) = 2082;
    *(v5 + 34) = sub_21CDF2CC8(0xD000000000000017, 0x800000021CE77390, &v14);
    _os_log_impl(&dword_21CDE1000, v3, v4, "%{public}s:%ld %{public}s %{public}s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v6, -1, -1);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  v13 = *(a1 + 32);
  *(a1 + 32) = 0;
}

void sub_21CE26234(uint64_t a1)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v13[1] = 0xE000000000000000;
  MEMORY[0x21CF1ACB0](0x203A726F727245, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406C0, &qword_21CE70E30);
  sub_21CE6D340();
  MEMORY[0x21CF1ACB0](46, 0xE100000000000000);
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v1 = sub_21CE6BDA0();
  __swift_project_value_buffer(v1, qword_27CE412C0);

  v2 = sub_21CE6BD80();
  v3 = sub_21CE6CF10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13[0] = v5;
    *v4 = 136446978;
    v6 = sub_21CE6D2B0();
    v8 = sub_21CDF2CC8(v6, v7, v13);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    *(v4 + 14) = 47;
    *(v4 + 22) = 2082;
    v9 = sub_21CE6D2B0();
    v11 = sub_21CDF2CC8(v9, v10, v13);

    *(v4 + 24) = v11;
    *(v4 + 32) = 2082;
    v12 = sub_21CDF2CC8(0, 0xE000000000000000, v13);

    *(v4 + 34) = v12;
    _os_log_impl(&dword_21CDE1000, v2, v3, "%{public}s:%ld %{public}s %{public}s", v4, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v5, -1, -1);
    MEMORY[0x21CF1BD50](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21CE265BC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_21CE26604(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

void *SettingsService.__allocating_init(_:delegate:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[4] = 0;
  result[5] = 0;
  result[2] = a1;
  result[3] = a2;
  return result;
}

void *SettingsService.init(_:delegate:)(uint64_t a1, uint64_t a2)
{
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  return v2;
}

uint64_t sub_21CE26708(void (*a1)(uint64_t a1), uint64_t a2)
{
  result = sub_21CE27460();
  if (result)
  {
    v5 = result;
    v15 = sub_21CE26234;
    v16 = 0;
    v11 = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_21CE18088;
    v14 = &block_descriptor_3;
    v6 = _Block_copy(&v11);
    v7 = v5;
    v8 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v6);

    sub_21CE6D190();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40810, &qword_21CE72690);
    result = swift_dynamicCast();
    if (result)
    {
      v9 = v11;
      if ([v11 respondsToSelector_])
      {
        v15 = a1;
        v16 = a2;
        v11 = MEMORY[0x277D85DD0];
        v12 = 1107296256;
        v13 = sub_21CE268E0;
        v14 = &block_descriptor_3;
        v10 = _Block_copy(&v11);

        [v9 getSidebarItems_];
        swift_unknownObjectRelease();
        _Block_release(v10);
      }

      else
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_21CE2692C(void (*a1)(uint64_t a1), uint64_t a2)
{
  result = sub_21CE27460();
  if (result)
  {
    v5 = result;
    v15 = sub_21CE26234;
    v16 = 0;
    v11 = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_21CE18088;
    v14 = &block_descriptor_6;
    v6 = _Block_copy(&v11);
    v7 = v5;
    v8 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v6);

    sub_21CE6D190();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40810, &qword_21CE72690);
    result = swift_dynamicCast();
    if (result)
    {
      v9 = v11;
      if ([v11 respondsToSelector_])
      {
        v15 = a1;
        v16 = a2;
        v11 = MEMORY[0x277D85DD0];
        v12 = 1107296256;
        v13 = sub_21CE26B04;
        v14 = &block_descriptor_9;
        v10 = _Block_copy(&v11);

        [v9 isAvailable_];
        swift_unknownObjectRelease();
        _Block_release(v10);
      }

      else
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_21CE26B04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_21CE26B8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t a1), uint64_t a5)
{
  result = sub_21CE27460();
  if (result)
  {
    v8 = result;
    v20 = sub_21CE26234;
    v21 = 0;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_21CE18088;
    v19 = &block_descriptor_12;
    v9 = _Block_copy(&v16);
    v10 = v8;
    v11 = [v10 remoteObjectProxyWithErrorHandler_];
    _Block_release(v9);

    sub_21CE6D190();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40810, &qword_21CE72690);
    result = swift_dynamicCast();
    if (result)
    {
      v12 = v16;
      if ([v16 respondsToSelector_])
      {
        v13 = sub_21CE6CC20();
        v14 = sub_21CE6CD30();
        v20 = a4;
        v21 = a5;
        v16 = MEMORY[0x277D85DD0];
        v17 = 1107296256;
        v18 = sub_21CE26DAC;
        v19 = &block_descriptor_15;
        v15 = _Block_copy(&v16);

        [v12 filterSearchAnchorsForSidebarItem:v13 suggestedAnchors:v14 reply:v15];
        swift_unknownObjectRelease();
        _Block_release(v15);
      }

      else
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_21CE26DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_21CE6CD40();

  v2(v3);
}

uint64_t sub_21CE26F00(void (*a1)(uint64_t a1), uint64_t a2)
{
  result = sub_21CE27460();
  if (result)
  {
    v5 = result;
    v15 = sub_21CE26234;
    v16 = 0;
    v11 = MEMORY[0x277D85DD0];
    v12 = 1107296256;
    v13 = sub_21CE18088;
    v14 = &block_descriptor_18;
    v6 = _Block_copy(&v11);
    v7 = v5;
    v8 = [v7 remoteObjectProxyWithErrorHandler_];
    _Block_release(v6);

    sub_21CE6D190();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40810, &qword_21CE72690);
    result = swift_dynamicCast();
    if (result)
    {
      v9 = v11;
      if ([v11 respondsToSelector_])
      {
        v15 = a1;
        v16 = a2;
        v11 = MEMORY[0x277D85DD0];
        v12 = 1107296256;
        v13 = sub_21CE270D8;
        v14 = &block_descriptor_21;
        v10 = _Block_copy(&v11);

        [v9 getSidebarSections_];
        swift_unknownObjectRelease();
        _Block_release(v10);
      }

      else
      {
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_21CE270F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 32);
  a3(0);
  v4 = sub_21CE6CD40();

  v3(v4);
}

uint64_t sub_21CE2719C(uint64_t a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  a6(a5, v9);
}

uint64_t sub_21CE27234(uint64_t a1)
{
  result = sub_21CE27460();
  if (result)
  {
    v3 = result;
    v8[4] = sub_21CE26234;
    v8[5] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_21CE18088;
    v8[3] = &block_descriptor_24;
    v4 = _Block_copy(v8);
    v5 = v3;
    v6 = [v5 remoteObjectProxyWithErrorHandler_];
    _Block_release(v4);

    sub_21CE6D190();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40810, &qword_21CE72690);
    result = swift_dynamicCast();
    if (result)
    {
      v7 = v8[0];
      if ([v8[0] respondsToSelector_])
      {
        [v7 openURL_];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t SettingsService.deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t SettingsService.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21CE27460()
{
  aBlock[73] = *MEMORY[0x277D85DE8];
  result = v0[4];
  if (!result)
  {
    v2 = v0;
    v3 = *(v0[2] + 16);
    aBlock[0] = 0;
    v4 = [v3 makeXPCConnectionWithError_];
    if (v4)
    {
      v5 = aBlock[0];
    }

    else
    {
      v6 = aBlock[0];
      v7 = sub_21CE6B910();

      swift_willThrow();
    }

    v8 = v2[4];
    v2[4] = v4;

    v37 = objc_opt_self();
    v9 = [v37 interfaceWithProtocol_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406D0, &qword_21CE721C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v11 = swift_initStackObject();
    *(v11 + 16) = xmmword_21CE6F420;
    v12 = sub_21CDE40C8(0, &unk_27CE40B30, 0x277CBEA60);
    *(v11 + 32) = v12;
    v13 = type metadata accessor for SidebarItem();
    *(v11 + 40) = v13;
    *(inited + 32) = v11;
    v14 = MEMORY[0x277D84F90];
    sub_21CE1EF90(MEMORY[0x277D84F90], sel_getSidebarItems_, 0);
    sub_21CE1EF90(inited, sel_getSidebarItems_, 1);
    swift_setDeallocating();
    sub_21CE27B98(inited + 32);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_21CE71CD0;
    *(v16 + 32) = v12;
    *(v16 + 40) = type metadata accessor for SidebarSection();
    *(v16 + 48) = v13;
    v35 = v13;
    *(v15 + 32) = v16;
    sub_21CE1EF90(v14, sel_getSidebarSections_, 0);
    sub_21CE1EF90(v15, sel_getSidebarSections_, 1);
    swift_setDeallocating();
    sub_21CE27B98(v15 + 32);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_21CE6F420;
    *(v18 + 32) = v12;
    v19 = sub_21CDE40C8(0, &qword_27CE40110, 0x277CCACA8);
    *(v18 + 40) = v19;
    *(v17 + 32) = v18;
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_21CE6F420;
    *(v21 + 32) = v12;
    *(v21 + 40) = v19;
    *(v20 + 32) = v21;
    sub_21CE1EF90(v17, sel_filterSearchAnchorsForSidebarItem_suggestedAnchors_reply_, 0);
    swift_setDeallocating();
    sub_21CE27B98(v17 + 32);
    sub_21CE1EF90(v20, sel_filterSearchAnchorsForSidebarItem_suggestedAnchors_reply_, 1);
    swift_setDeallocating();
    sub_21CE27B98(v20 + 32);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_21CE702B0;
    *(v23 + 32) = sub_21CDE40C8(0, &qword_27CE40118, 0x277CBEBC0);
    *(v22 + 32) = v23;
    sub_21CE1EF90(v22, sel_openURL_, 0);
    swift_setDeallocating();
    sub_21CE27B98(v22 + 32);
    sub_21CE1EF90(MEMORY[0x277D84F90], sel_openURL_, 1);
    v24 = v2[4];
    if (v24)
    {
      [v24 setRemoteObjectInterface_];
    }

    v25 = [v37 interfaceWithProtocol_];
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_21CE702B0;
    sub_21CE1F134();
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_21CE6F420;
    *(v27 + 32) = v12;
    *(v27 + 40) = v36;
    *(v26 + 32) = v27;
    sub_21CE1EF90(v26, sel_updateSidebarWithItems_, 0);
    swift_setDeallocating();
    sub_21CE27B98(v26 + 32);
    sub_21CE1EF90(MEMORY[0x277D84F90], sel_updateSidebarWithItems_, 1);
    v28 = v2[4];
    if (v28 && ([v28 setExportedObject_], (v29 = v2[4]) != 0) && (objc_msgSend(v29, sel_setExportedInterface_, v25), (v30 = v2[4]) != 0))
    {
      aBlock[4] = sub_21CE27C00;
      aBlock[5] = v2;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21CE27C50;
      aBlock[3] = &block_descriptor_43;
      v31 = _Block_copy(aBlock);
      v32 = v30;

      [v32 setInvalidationHandler_];
      _Block_release(v31);

      v33 = v2[4];
    }

    else
    {
      v33 = 0;
    }

    v34 = v33;
    [v34 resume];

    return v2[4];
  }

  return result;
}

uint64_t sub_21CE27B98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE406D8, &qword_21CE721D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CE27C50(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_21CE27CC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_21CE6CD30();
  (*(a2 + 16))(a2, v3);
}

void sub_21CE27D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  v4 = sub_21CE6CD30();
  (*(a2 + 16))(a2, v4);
}

uint64_t sub_21CE27DF8(id a1)
{
  v2 = v1;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  v4 = [a1 description];
  v5 = sub_21CE6CC50();
  v7 = v6;

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v8 = sub_21CE6BDA0();
  __swift_project_value_buffer(v8, qword_27CE412C0);

  v9 = sub_21CE6BD80();
  v10 = sub_21CE6CF30();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446978;
    v13 = sub_21CE6D2B0();
    v15 = sub_21CDF2CC8(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2048;
    *(v11 + 14) = 24;
    *(v11 + 22) = 2082;
    v16 = sub_21CE6D2B0();
    v18 = sub_21CDF2CC8(v16, v17, &v22);

    *(v11 + 24) = v18;
    *(v11 + 32) = 2082;
    v19 = sub_21CDF2CC8(v5, v7, &v22);

    *(v11 + 34) = v19;
    _os_log_impl(&dword_21CDE1000, v9, v10, "%{public}s:%ld %{public}s %{public}s", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v12, -1, -1);
    MEMORY[0x21CF1BD50](v11, -1, -1);
  }

  else
  {
  }

  v20 = *(v2 + 16);
  result = [v20 respondsToSelector_];
  if (result)
  {

    return [v20 openURL_];
  }

  return result;
}

uint64_t sub_21CE2814C(uint64_t a1, int a2, void *aBlock, void (*a4)(uint64_t, void *))
{
  v5 = _Block_copy(aBlock);
  _Block_copy(v5);

  a4(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

uint64_t sub_21CE28284()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21CE282BC()
{
  v1 = *(v0 + 16);
  aBlock[4] = sub_21CE283C4;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21CE18088;
  aBlock[3] = &block_descriptor_23;
  v2 = _Block_copy(aBlock);
  v3 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);
  sub_21CE6D190();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE40818, &unk_21CE727C0);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_21CE283C4(uint64_t a1)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  swift_getErrorValue();
  v1 = sub_21CE6D450();
  v3 = v2;
  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v4 = sub_21CE6BDA0();
  __swift_project_value_buffer(v4, qword_27CE412C0);

  v5 = sub_21CE6BD80();
  v6 = sub_21CE6CF10();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446978;
    v9 = sub_21CE6D2B0();
    v11 = sub_21CDF2CC8(v9, v10, &v16);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = 66;
    *(v7 + 22) = 2082;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, &v16);

    *(v7 + 24) = v14;
    *(v7 + 32) = 2082;
    v15 = sub_21CDF2CC8(v1, v3, &v16);

    *(v7 + 34) = v15;
    _os_log_impl(&dword_21CDE1000, v5, v6, "%{public}s:%ld %{public}s %{public}s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v8, -1, -1);
    MEMORY[0x21CF1BD50](v7, -1, -1);
  }

  else
  {
  }
}

Swift::Bool __swiftcall SettingsServiceScene.shouldAccept(connection:)(NSXPCConnection connection)
{
  v3 = *v1;
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v4 = sub_21CE6BDA0();
  __swift_project_value_buffer(v4, qword_27CE412C0);
  v5 = sub_21CE6BD80();
  v6 = sub_21CE6CF30();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23[0] = v8;
    *v7 = 136446978;
    v9 = sub_21CE6D2B0();
    v11 = sub_21CDF2CC8(v9, v10, v23);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    *(v7 + 14) = 94;
    *(v7 + 22) = 2082;
    v12 = sub_21CE6D2B0();
    v14 = sub_21CDF2CC8(v12, v13, v23);

    *(v7 + 24) = v14;
    *(v7 + 32) = 2082;
    *(v7 + 34) = sub_21CDF2CC8(0, 0xE000000000000000, v23);
    _os_log_impl(&dword_21CDE1000, v5, v6, "%{public}s:%ld %{public}s %{public}s", v7, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v8, -1, -1);
    MEMORY[0x21CF1BD50](v7, -1, -1);
  }

  [(objc_class *)connection.super.isa setExportedObject:v3];
  v15 = objc_opt_self();
  v16 = [v15 interfaceWithProtocol_];
  [(objc_class *)connection.super.isa setExportedInterface:v16];

  v17 = [v15 interfaceWithProtocol_];
  [(objc_class *)connection.super.isa setRemoteObjectInterface:v17];

  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  v23[4] = sub_21CE28D24;
  v23[5] = v18;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_21CE27C50;
  v23[3] = &block_descriptor_4;
  v19 = _Block_copy(v23);
  swift_unknownObjectRetain();

  [(objc_class *)connection.super.isa setInvalidationHandler:v19];
  _Block_release(v19);
  [(objc_class *)connection.super.isa resume];
  type metadata accessor for SettingsServiceScene.RemoteObject();
  v20 = swift_allocObject();
  v20[2].super.isa = connection.super.isa;
  v21 = connection.super.isa;
  [v3 setServiceHost_];

  return 1;
}

id sub_21CE28A94(void *a1)
{
  if (qword_27CE3FA30 != -1)
  {
    swift_once();
  }

  if (qword_27CE3FA38 != -1)
  {
    swift_once();
  }

  v2 = sub_21CE6BDA0();
  __swift_project_value_buffer(v2, qword_27CE412C0);
  v3 = sub_21CE6BD80();
  v4 = sub_21CE6CF30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446978;
    v7 = sub_21CE6D2B0();
    v9 = sub_21CDF2CC8(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = 101;
    *(v5 + 22) = 2082;
    v10 = sub_21CE6D2B0();
    v12 = sub_21CDF2CC8(v10, v11, &v14);

    *(v5 + 24) = v12;
    *(v5 + 32) = 2082;
    *(v5 + 34) = sub_21CDF2CC8(0xD000000000000017, 0x800000021CE77390, &v14);
    _os_log_impl(&dword_21CDE1000, v3, v4, "%{public}s:%ld %{public}s %{public}s", v5, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x21CF1BD50](v6, -1, -1);
    MEMORY[0x21CF1BD50](v5, -1, -1);
  }

  return [a1 setServiceHost_];
}

uint64_t SettingsServiceScene.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SettingsServiceScene.SettingsServiceProtocolDispatch();
  result = swift_allocObject();
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

void sub_21CE28D84(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 16);
  if ([v5 respondsToSelector_])
  {
    aBlock[4] = sub_21CE29494;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21CE268E0;
    aBlock[3] = &block_descriptor_47;
    v6 = _Block_copy(aBlock);
    _Block_copy(a2);
    swift_unknownObjectRetain();

    [v5 getSidebarItems_];
    _Block_release(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    _Block_copy(a2);
    type metadata accessor for SidebarItem();
    v7 = sub_21CE6CD30();
    (a2)[2](a2, v7);
  }
}

void sub_21CE28F18(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 16);
  if ([v5 respondsToSelector_])
  {
    aBlock[4] = sub_21CE29464;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21CE270D8;
    aBlock[3] = &block_descriptor_41;
    v6 = _Block_copy(aBlock);
    _Block_copy(a2);
    swift_unknownObjectRetain();

    [v5 getSidebarSections_];
    _Block_release(v6);

    swift_unknownObjectRelease();
  }

  else
  {
    _Block_copy(a2);
    type metadata accessor for SidebarSection();
    v7 = sub_21CE6CD30();
    (a2)[2](a2, v7);
  }
}

uint64_t sub_21CE290AC(uint64_t a1, void (**a2)(void, void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + 16);
  if ([v5 respondsToSelector_])
  {
    v8[4] = sub_21CE29450;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_21CE26B04;
    v8[3] = &block_descriptor_35;
    v6 = _Block_copy(v8);
    _Block_copy(a2);
    swift_unknownObjectRetain();

    [v5 isAvailable_];
    _Block_release(v6);

    return swift_unknownObjectRelease();
  }

  else
  {
    _Block_copy(a2);
    a2[2](a2, 1);
  }
}

void sub_21CE2921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a5;
  v8 = *(a4 + 16);
  v9 = [v8 respondsToSelector_];
  _Block_copy(a5);
  if (v9)
  {
    swift_unknownObjectRetain();
    v10 = sub_21CE6CC20();
    v11 = sub_21CE6CD30();
    aBlock[4] = sub_21CE293F0;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21CE26DAC;
    aBlock[3] = &block_descriptor_29;
    v12 = _Block_copy(aBlock);

    [v8 filterSearchAnchorsForSidebarItem:v10 suggestedAnchors:v11 reply:v12];
    _Block_release(v12);

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = sub_21CE6CD30();
    (a5)[2](a5, v13);
  }
}

void sub_21CE293F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_21CE6CD30();
  (*(v2 + 16))(v2, v3);
}

uint64_t sub_21CE294EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE40310, &qword_21CE71470);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = sub_21CE64BE8();
  if (v12)
  {
    v13 = v12;
    if (a2)
    {
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_21CE6D290();

      v14 = [v13 bundleIdentifier];
      v15 = sub_21CE6CC50();
      v17 = v16;

      MEMORY[0x21CF1ACB0](v15, v17);

      MEMORY[0x21CF1ACB0](63, 0xE100000000000000);
      MEMORY[0x21CF1ACB0](a1, a2);
      sub_21CE6BA40();

      v18 = sub_21CE6BA60();
      v19 = *(v18 - 8);
      result = (*(v19 + 48))(v11, 1, v18);
      if (result != 1)
      {

        (*(v19 + 32))(a3, v11, v18);
        return (*(v19 + 56))(a3, 0, 1, v18);
      }

      __break(1u);
    }

    else
    {
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_21CE6D290();

      v34 = [v13 bundleIdentifier];
      v35 = sub_21CE6CC50();
      v37 = v36;

      MEMORY[0x21CF1ACB0](v35, v37);

      sub_21CE6BA40();

      v38 = sub_21CE6BA60();
      v39 = *(v38 - 8);
      result = (*(v39 + 48))(v9, 1, v38);
      if (result != 1)
      {

        (*(v39 + 32))(a3, v9, v38);
        return (*(v39 + 56))(a3, 0, 1, v38);
      }
    }

    __break(1u);
  }

  else
  {
    if (qword_27CE3FA30 != -1)
    {
      swift_once();
    }

    if (qword_27CE3FA38 != -1)
    {
      swift_once();
    }

    v21 = sub_21CE6BDA0();
    __swift_project_value_buffer(v21, qword_27CE412C0);
    v22 = sub_21CE6BD80();
    v23 = sub_21CE6CF10();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136446978;
      v26 = sub_21CE6D2B0();
      v28 = sub_21CDF2CC8(v26, v27, &v40);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2048;
      *(v24 + 14) = 26;
      *(v24 + 22) = 2082;
      v29 = sub_21CE6D2B0();
      v31 = sub_21CDF2CC8(v29, v30, &v40);

      *(v24 + 24) = v31;
      *(v24 + 32) = 2082;
      *(v24 + 34) = sub_21CDF2CC8(0xD000000000000019, 0x800000021CE77AC0, &v40);
      _os_log_impl(&dword_21CDE1000, v22, v23, "%{public}s:%ld %{public}s %{public}s", v24, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x21CF1BD50](v25, -1, -1);
      MEMORY[0x21CF1BD50](v24, -1, -1);
    }

    v32 = sub_21CE6BA60();
    v33 = *(*(v32 - 8) + 56);

    return v33(a3, 1, 1, v32);
  }

  return result;
}

uint64_t SettingsUndoAction.init(_:url:undoAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v23 = a3;
  v24 = a4;
  v8 = sub_21CE6B960();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v22 = sub_21CE6CC70();
  v12 = v11;
  v13 = type metadata accessor for SettingsUndoAction(0);
  v14 = *(v13 + 20);
  v15 = sub_21CE6BA60();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&a5[v14], a2, v15);
  sub_21CE6B4A0();
  (*(v16 + 8))(a2, v15);
  result = (*(v9 + 8))(a1, v8);
  v18 = v23;
  *a5 = v22;
  *(a5 + 1) = v12;
  v19 = &a5[*(v13 + 28)];
  v20 = v24;
  *v19 = v18;
  v19[1] = v20;
  return result;
}

uint64_t SettingsUndoAction.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SettingsUndoAction.deepLink.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsUndoAction(0) + 20);
  v4 = sub_21CE6BA60();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}