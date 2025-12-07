uint64_t sub_1D1DAB598@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v54 = a8;
  v50 = a4;
  v51 = a7;
  v49 = a3;
  v11 = sub_1D1E677BC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D1E6658C();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1D1E677DC();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_1D1E6659C();
  v47 = *(v18 - 8);
  v48 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v56 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v43 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v55 = v43 - v24;
  v26 = *a1;
  v25 = a1[1];
  v57 = v26;
  v58 = v25;
  v52 = a5;
  v53 = a6;
  _s11RoomSectionVMa(0, a5, a6, v27);

  sub_1D1E676AC();

  if (v60)
  {
    v43[1] = v60;
    v43[0] = v61;
    if (v26 == 95 && v25 == 0xE100000000000000 || (sub_1D1E6904C() & 1) != 0)
    {
      sub_1D1E6776C();
      *v16 = _s25_doNotTouchThisDummyClassCMa();
      (*(v44 + 104))(v16, *MEMORY[0x1E6968E00], v45);
      sub_1D1E66ACC();
    }

    else
    {
      sub_1D1E677AC();
      sub_1D1E6779C();
      sub_1D1E6778C();
      sub_1D1E6779C();
      sub_1D1E677CC();
      *v16 = _s25_doNotTouchThisDummyClassCMa();
      (*(v44 + 104))(v16, *MEMORY[0x1E6968E00], v45);
      sub_1D1E66ACC();
    }

    v30 = v52;
    sub_1D1E665BC();
    v32 = v47;
    v31 = v48;
    v33 = v55;
    (*(v47 + 32))(v55, v23, v48);
    v34 = (*(v32 + 16))(v56, v33, v31);
    v52 = v43;
    v59 = v43[0];
    MEMORY[0x1EEE9AC00](v34);
    v35 = v53;
    v43[-6] = v30;
    v43[-5] = v35;
    v37 = v49;
    v36 = v50;
    v43[-4] = v51;
    v43[-3] = v37;
    v43[-2] = v36;

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC08, &qword_1D1EA7F78);
    v39 = sub_1D17D8EA8(qword_1EC64F8D0, &qword_1EC64DC08, &qword_1D1EA7F78, MEMORY[0x1E69E6340]);
    sub_1D18CE91C(sub_1D1DACF1C, &v43[-8], v38, v30, MEMORY[0x1E69E73E0], v39, MEMORY[0x1E69E7410], v40);
    swift_bridgeObjectRelease_n();

    v29 = v54;
    sub_1D1E65E9C();
    (*(v32 + 8))(v55, v31);
    v28 = 0;
  }

  else
  {
    v28 = 1;
    v29 = v54;
  }

  v41 = sub_1D1E65E7C();
  return (*(*(v41 - 8) + 56))(v29, v28, 1, v41);
}

uint64_t sub_1D1DABB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  v6(v5);
  return sub_1D1E65E6C();
}

uint64_t sub_1D1DABC54(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1E0C170(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D1DABCC0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D1DABCC0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        v5 = sub_1D1E67C8C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D1DABF78(v7, v8, a1, v4);
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
    return sub_1D1DABDC8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1DABDC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v23 = a3;
    v15 = v6;
    v16 = v5;
    while (1)
    {
      sub_1D17419CC(v5, &v20);
      sub_1D17419CC(v5 - 40, v17);
      v7 = v21;
      v8 = v22;
      __swift_project_boxed_opaque_existential_1(&v20, v21);
      (*(v8 + 56))(v7, v8);
      v10 = v18;
      v9 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      (*(v9 + 56))(v10, v9);
      sub_1D17D8EF0();
      v11 = sub_1D1E6860C();

      __swift_destroy_boxed_opaque_existential_1(v17);
      result = __swift_destroy_boxed_opaque_existential_1(&v20);
      if (v11 != -1)
      {
LABEL_4:
        a3 = v23 + 1;
        v5 = v16 + 40;
        v6 = v15 - 1;
        if (v23 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_1D16EEE20(v5, &v20);
      v12 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v12;
      *(v5 + 32) = *(v5 - 8);
      result = sub_1D16EEE20(&v20, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1DABF78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v105 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v9 + 1 >= v8)
      {
        v8 = v9 + 1;
      }

      else
      {
        v101 = v6;
        v103 = v10;
        v11 = *v7;
        sub_1D17419CC(*v7 + 40 * (v9 + 1), &v114);
        v12 = v11 + 40 * v9;
        sub_1D17419CC(v12, v111);
        v14 = v115;
        v13 = v116;
        __swift_project_boxed_opaque_existential_1(&v114, v115);
        (*(v13 + 56))(v14, v13);
        v16 = v112;
        v15 = v113;
        __swift_project_boxed_opaque_existential_1(v111, v112);
        (*(v15 + 56))(v16, v15);
        v5 = sub_1D17D8EF0();
        v109 = sub_1D1E6860C();

        __swift_destroy_boxed_opaque_existential_1(v111);
        result = __swift_destroy_boxed_opaque_existential_1(&v114);
        v17 = v9 + 2;
        v18 = v12 + 80;
        while (v8 != v17)
        {
          sub_1D17419CC(v18, &v114);
          sub_1D17419CC(v18 - 40, v111);
          v19 = v8;
          v21 = v115;
          v20 = v116;
          __swift_project_boxed_opaque_existential_1(&v114, v115);
          (*(v20 + 56))(v21, v20);
          v23 = v112;
          v22 = v113;
          __swift_project_boxed_opaque_existential_1(v111, v112);
          (*(v22 + 56))(v23, v22);
          v24 = sub_1D1E6860C();
          v8 = v19;

          __swift_destroy_boxed_opaque_existential_1(v111);
          result = __swift_destroy_boxed_opaque_existential_1(&v114);
          ++v17;
          v18 += 40;
          if ((v109 == -1) == (v24 != -1))
          {
            v8 = v17 - 1;
            break;
          }
        }

        v6 = v101;
        v10 = v103;
        v7 = a3;
        if (v109 == -1)
        {
          if (v8 < v9)
          {
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
            return result;
          }

          if (v9 < v8)
          {
            v25 = v8;
            v26 = 40 * v8 - 40;
            v5 = v25;
            v27 = v9;
            v28 = 40 * v9;
            do
            {
              if (v27 != --v25)
              {
                v34 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v29 = v34 + v28;
                v30 = v34 + v26;
                v31 = v28;
                sub_1D16EEE20((v34 + v28), &v114);
                v32 = *(v30 + 32);
                v33 = *(v30 + 16);
                *v29 = *v30;
                *(v29 + 16) = v33;
                *(v29 + 32) = v32;
                result = sub_1D16EEE20(&v114, v30);
                v28 = v31;
              }

              ++v27;
              v26 -= 40;
              v28 += 40;
            }

            while (v27 < v25);
            v7 = a3;
            v10 = v103;
            v8 = v5;
          }
        }
      }

      v35 = *(v7 + 8);
      if (v8 >= v35)
      {
        goto LABEL_28;
      }

      if (__OFSUB__(v8, v9))
      {
        goto LABEL_119;
      }

      if (v8 - v9 >= a4)
      {
        goto LABEL_28;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_120;
      }

      if (v9 + a4 >= v35)
      {
        v36 = *(v7 + 8);
      }

      else
      {
        v36 = v9 + a4;
      }

      if (v36 < v9)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (v8 == v36)
      {
LABEL_28:
        v37 = v8;
        if (v8 < v9)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v102 = v6;
        v104 = v10;
        v84 = *v7;
        v5 = *v7 + 40 * v8;
        v100 = v9;
        v85 = v9 - v8;
        v106 = v36;
        do
        {
          v108 = v5;
          v110 = v8;
          v86 = v85;
          do
          {
            sub_1D17419CC(v5, &v114);
            sub_1D17419CC(v5 - 40, v111);
            v87 = v115;
            v88 = v116;
            __swift_project_boxed_opaque_existential_1(&v114, v115);
            (*(v88 + 56))(v87, v88);
            v89 = v112;
            v90 = v113;
            __swift_project_boxed_opaque_existential_1(v111, v112);
            (*(v90 + 56))(v89, v90);
            sub_1D17D8EF0();
            v91 = sub_1D1E6860C();

            __swift_destroy_boxed_opaque_existential_1(v111);
            result = __swift_destroy_boxed_opaque_existential_1(&v114);
            if (v91 != -1)
            {
              break;
            }

            if (!v84)
            {
              goto LABEL_124;
            }

            sub_1D16EEE20(v5, &v114);
            v92 = *(v5 - 24);
            *v5 = *(v5 - 40);
            *(v5 + 16) = v92;
            *(v5 + 32) = *(v5 - 8);
            sub_1D16EEE20(&v114, v5 - 40);
            v5 -= 40;
          }

          while (!__CFADD__(v86++, 1));
          v8 = v110 + 1;
          v5 = v108 + 40;
          --v85;
          v37 = v106;
        }

        while (v110 + 1 != v106);
        v6 = v102;
        v10 = v104;
        v7 = a3;
        v9 = v100;
        if (v106 < v100)
        {
          goto LABEL_118;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D177D070(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v39 = *(v10 + 2);
      v38 = *(v10 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_1D177D070((v38 > 1), v39 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v40;
      v41 = &v10[16 * v39];
      *(v41 + 4) = v9;
      *(v41 + 5) = v37;
      v5 = *v105;
      if (!*v105)
      {
        goto LABEL_128;
      }

      v9 = v37;
      if (v39)
      {
        while (1)
        {
          v42 = v40 - 1;
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v43 = *(v10 + 4);
            v44 = *(v10 + 5);
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_48:
            if (v46)
            {
              goto LABEL_107;
            }

            v59 = &v10[16 * v40];
            v61 = *v59;
            v60 = *(v59 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_110;
            }

            v65 = &v10[16 * v42 + 32];
            v67 = *v65;
            v66 = *(v65 + 1);
            v53 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v53)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v63, v68))
            {
              goto LABEL_114;
            }

            if (v63 + v68 >= v45)
            {
              if (v45 < v68)
              {
                v42 = v40 - 2;
              }

              goto LABEL_69;
            }

            goto LABEL_62;
          }

          v69 = &v10[16 * v40];
          v71 = *v69;
          v70 = *(v69 + 1);
          v53 = __OFSUB__(v70, v71);
          v63 = v70 - v71;
          v64 = v53;
LABEL_62:
          if (v64)
          {
            goto LABEL_109;
          }

          v72 = &v10[16 * v42];
          v74 = *(v72 + 4);
          v73 = *(v72 + 5);
          v53 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v53)
          {
            goto LABEL_112;
          }

          if (v75 < v63)
          {
            goto LABEL_3;
          }

LABEL_69:
          v80 = v42 - 1;
          if (v42 - 1 >= v40)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
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
            goto LABEL_121;
          }

          if (!*v7)
          {
            goto LABEL_125;
          }

          v81 = *&v10[16 * v80 + 32];
          v82 = *&v10[16 * v42 + 40];
          sub_1D1DAC82C((*v7 + 40 * v81), (*v7 + 40 * *&v10[16 * v42 + 32]), *v7 + 40 * v82, v5);
          if (v6)
          {
          }

          if (v82 < v81)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v80 >= *(v10 + 2))
          {
            goto LABEL_104;
          }

          v83 = &v10[16 * v80];
          *(v83 + 4) = v81;
          *(v83 + 5) = v82;
          v117 = v10;
          result = sub_1D1E0BDB8(v42);
          v10 = v117;
          v40 = *(v117 + 16);
          if (v40 <= 1)
          {
            goto LABEL_3;
          }
        }

        v47 = &v10[16 * v40 + 32];
        v48 = *(v47 - 64);
        v49 = *(v47 - 56);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_105;
        }

        v52 = *(v47 - 48);
        v51 = *(v47 - 40);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_106;
        }

        v54 = &v10[16 * v40];
        v56 = *v54;
        v55 = *(v54 + 1);
        v53 = __OFSUB__(v55, v56);
        v57 = v55 - v56;
        if (v53)
        {
          goto LABEL_108;
        }

        v53 = __OFADD__(v45, v57);
        v58 = v45 + v57;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v58 >= v50)
        {
          v76 = &v10[16 * v42 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v53 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v53)
          {
            goto LABEL_115;
          }

          if (v45 < v79)
          {
            v42 = v40 - 2;
          }

          goto LABEL_69;
        }

        goto LABEL_48;
      }

LABEL_3:
      v8 = *(v7 + 8);
      if (v9 >= v8)
      {
        goto LABEL_90;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_90:
  v5 = v10;
  v10 = *v105;
  if (!*v105)
  {
    goto LABEL_129;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_122:
    result = sub_1D1E0BE44(v5);
    v5 = result;
  }

  v94 = v6;
  v117 = v5;
  v95 = *(v5 + 16);
  if (v95 >= 2)
  {
    while (1)
    {
      v96 = *v7;
      if (!*v7)
      {
        goto LABEL_126;
      }

      v6 = v95 - 1;
      v97 = *(v5 + 16 * v95);
      v7 = *(v5 + 16 * (v95 - 1) + 40);
      sub_1D1DAC82C((v96 + 40 * v97), (v96 + 40 * *(v5 + 16 * (v95 - 1) + 32)), v96 + 40 * v7, v10);
      if (v94)
      {
      }

      if (v7 < v97)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1D1E0BE44(v5);
      }

      if (v95 - 2 >= *(v5 + 16))
      {
        goto LABEL_117;
      }

      v98 = (v5 + 16 * v95);
      *v98 = v97;
      v98[1] = v7;
      v117 = v5;
      result = sub_1D1E0BDB8(v6);
      v5 = v117;
      v95 = *(v117 + 16);
      v7 = a3;
      if (v95 <= 1)
      {
      }
    }
  }
}

uint64_t sub_1D1DAC82C(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a2;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 40;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 40;
  if (v8 >= v10)
  {
    if (a4 != a2 || &a2[40 * v10] <= a4)
    {
      v25 = a3;
      memmove(a4, a2, 40 * v10);
      a3 = v25;
    }

    v12 = &v4[40 * v10];
    if (v9 < 40 || v5 <= v6)
    {
      v45 = v5;
    }

    else
    {
      v26 = v5;
      v48 = v6;
      do
      {
        __dst = v26;
        v27 = (v26 - 40);
        v28 = (v12 - 40);
        v29 = a3 - 40;
        v56 = v26 - 40;
        while (1)
        {
          v32 = v4;
          v33 = v28 + 40;
          v34 = v29;
          v35 = (v29 + 40);
          sub_1D17419CC(v28, v53);
          sub_1D17419CC(v27, v50);
          v36 = v54;
          v37 = v55;
          __swift_project_boxed_opaque_existential_1(v53, v54);
          (*(v37 + 56))(v36, v37);
          v39 = v51;
          v38 = v52;
          __swift_project_boxed_opaque_existential_1(v50, v51);
          (*(v38 + 56))(v39, v38);
          sub_1D17D8EF0();
          v40 = sub_1D1E6860C();

          __swift_destroy_boxed_opaque_existential_1(v50);
          __swift_destroy_boxed_opaque_existential_1(v53);
          if (v40 == -1)
          {
            break;
          }

          v4 = v32;
          if (v35 != v33)
          {
            v41 = *v28;
            v42 = *(v28 + 16);
            *(v34 + 32) = *(v28 + 32);
            *v34 = v41;
            *(v34 + 16) = v42;
          }

          v30 = v28 - 40;
          v29 = v34 - 40;
          v31 = v28 > v32;
          v28 -= 40;
          v27 = v56;
          if (!v31)
          {
            v12 = (v30 + 40);
            v45 = __dst;
            goto LABEL_35;
          }
        }

        v4 = v32;
        v45 = v56;
        a3 = v34;
        if (v35 != __dst)
        {
          v43 = *v56;
          v44 = *(v56 + 1);
          *(v34 + 32) = *(v56 + 4);
          *v34 = v43;
          *(v34 + 16) = v44;
        }

        v12 = (v28 + 40);
        if (v33 <= v32)
        {
          break;
        }

        v26 = v45;
      }

      while (v45 > v48);
      v12 = (v28 + 40);
    }
  }

  else
  {
    if (a4 != __src || &__src[40 * v8] <= a4)
    {
      v11 = a3;
      memmove(a4, __src, 40 * v8);
      a3 = v11;
    }

    v12 = &v4[40 * v8];
    if (v7 >= 40 && v5 < a3)
    {
      while (1)
      {
        v13 = a3;
        v14 = v12;
        sub_1D17419CC(v5, v53);
        sub_1D17419CC(v4, v50);
        v15 = v4;
        v16 = v5;
        v17 = v54;
        v18 = v55;
        __swift_project_boxed_opaque_existential_1(v53, v54);
        (*(v18 + 56))(v17, v18);
        v20 = v51;
        v19 = v52;
        __swift_project_boxed_opaque_existential_1(v50, v51);
        (*(v19 + 56))(v20, v19);
        sub_1D17D8EF0();
        v21 = sub_1D1E6860C();

        __swift_destroy_boxed_opaque_existential_1(v50);
        __swift_destroy_boxed_opaque_existential_1(v53);
        if (v21 != -1)
        {
          break;
        }

        v22 = v16;
        v5 = v16 + 40;
        v4 = v15;
        if (v6 != v16)
        {
          goto LABEL_9;
        }

LABEL_10:
        v6 += 40;
        v12 = v14;
        if (v4 < v14)
        {
          a3 = v13;
          if (v5 < v13)
          {
            continue;
          }
        }

        v45 = v6;
        goto LABEL_35;
      }

      v22 = v15;
      v4 = v15 + 40;
      v5 = v16;
      if (v6 == v15)
      {
        goto LABEL_10;
      }

LABEL_9:
      v23 = *v22;
      v24 = *(v22 + 1);
      *(v6 + 4) = *(v22 + 4);
      *v6 = v23;
      *(v6 + 1) = v24;
      goto LABEL_10;
    }

    v45 = v6;
  }

LABEL_35:
  v46 = (v12 - v4) / 40;
  if (v45 != v4 || v45 >= &v4[40 * v46])
  {
    memmove(v45, v4, 40 * v46);
  }

  return 1;
}

uint64_t sub_1D1DACC90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1D1DACD44@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 16);

  return result;
}

uint64_t sub_1D1DACD64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticActionSet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1DACDC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticActionSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1DACE2C(uint64_t a1)
{
  v2 = type metadata accessor for StaticActionSet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D1DACE88()
{
  result = qword_1EC64C000;
  if (!qword_1EC64C000)
  {
    type metadata accessor for StaticActionSet(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64C000);
  }

  return result;
}

uint64_t sub_1D1DACEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1DACF64(uint64_t a1)
{
  v35 = sub_1D1E66A7C();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v5, 0);
    v38 = v39;
    v7 = a1 + 64;
    result = sub_1D1E6869C();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 72;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_1D1E66A1C();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1D178CD24((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1D1716920(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1D1716920(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
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
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1DAD26C(uint64_t a1)
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
          result = sub_1D1716920(v10, v34, 0);
          v11 = v28;
          v13 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1D1716920(v10, v34, 0);
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

uint64_t WidgetWriteRequests.init(requests:configuration:filtered:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v9 = *a3;
  *a6 = a1;
  v10 = type metadata accessor for WidgetWriteRequests(0, a4, a5, a4);
  v14 = *(a4 - 8);
  (*(v14 + 16))(&a6[*(v10 + 36)], a2, a4);
  *&a6[*(v10 + 40)] = v9;
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6701C();
  __swift_project_value_buffer(v11, qword_1EC6BE2B8);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  v12 = *(v14 + 8);

  return v12(a2, a4);
}

uint64_t WidgetDataModel.snapshotOf<A>(updateType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_1D1DAD78C;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DAD78C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[7] = a1;

  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v3;
  v4[1] = sub_1D1DAD918;
  v5 = v2[5];
  v6 = v2[4];
  v7 = v2[3];
  v8 = v2[2];

  return WidgetSnapshotModerator.updateState<A>(updateType:timeout:)(v8, v7, v6, v5, 20.0);
}

uint64_t sub_1D1DAD918()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WidgetDataModel.snapshotModerator.getter()
{
  *(v1 + 16) = v0;
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE07B4E0;
  *(v1 + 24) = qword_1EE07B4E0;

  return MEMORY[0x1EEE6DFA0](sub_1D1DADAC4, v2, 0);
}

uint64_t sub_1D1DADAC4()
{
  if (*(v0[2] + 16))
  {
    v5 = v0[1];

    return v5(v1);
  }

  else
  {
    if (qword_1EC6424B8 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC64F958);
    v0[4] = qword_1EC64F960;
    os_unfair_lock_unlock(&dword_1EC64F958);
    sub_1D1E67E1C();
    v0[5] = sub_1D1E67E0C();
    v4 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1DADBFC, v4, v3);
  }
}

uint64_t sub_1D1DADBFC()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = sub_1D1DC8F84(v1);

  return MEMORY[0x1EEE6DFA0](sub_1D1DADC74, v2, 0);
}

uint64_t sub_1D1DADC74()
{
  v1 = v0[6];
  v2 = v0[2];
  type metadata accessor for WidgetSnapshotModerator(0);
  v3 = swift_allocObject();
  sub_1D1DB1098(v1);
  *(v2 + 16) = v3;

  v4 = v0[1];

  return v4(v3);
}

void WidgetSnapshotModerator.staticMatterDevice(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v37 = a2;
  v3 = type metadata accessor for StaticMatterDevice(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for MatterStateSnapshot(0);
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v41 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v2 + 120);
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 64);
  v19 = (v16 + 63) >> 6;
  v44 = (v4 + 56);
  v45 = v14;
  v47 = v4;
  v39 = (v4 + 48);

  v20 = 0;
  v49 = v3;
  v38 = v15;
  v40 = v11;
  v21 = v46;
  if (!v18)
  {
LABEL_6:
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_28;
      }

      if (v22 >= v19)
      {

        (*v44)(v37, 1, 1, v3);
        return;
      }

      v18 = *(v15 + 8 * v22);
      ++v20;
      if (v18)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
    v22 = v20;
LABEL_9:
    v23 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v24 = v41;
    sub_1D1DC9148(*(v45 + 56) + *(v42 + 72) * (v23 | (v22 << 6)), v41, type metadata accessor for MatterStateSnapshot);
    v25 = *(v24 + *(v43 + 24));

    sub_1D1DC91B0(v24, type metadata accessor for MatterStateSnapshot);
    v26 = 1 << *(v25 + 32);
    v27 = v26 < 64 ? ~(-1 << v26) : -1;
    v28 = v27 & *(v25 + 64);
    v29 = (v26 + 63) >> 6;

    v30 = 0;
    if (!v28)
    {
      break;
    }

    while (1)
    {
      v31 = v30;
LABEL_17:
      sub_1D1DC9148(*(v25 + 56) + *(v47 + 72) * (__clz(__rbit64(v28)) | (v31 << 6)), v21, type metadata accessor for StaticMatterDevice);
      sub_1D1DCF39C(v21, v7, type metadata accessor for StaticMatterDevice);
      if (*&v7[*(v49 + 20)] == v48)
      {
        break;
      }

      v28 &= v28 - 1;
      sub_1D1DC91B0(v7, type metadata accessor for StaticMatterDevice);
      v30 = v31;
      if (!v28)
      {
        goto LABEL_14;
      }
    }

    v33 = v40;
    sub_1D1DCF39C(v7, v40, type metadata accessor for StaticMatterDevice);
    v32 = *v44;
    v34 = v33;
    v35 = 0;
LABEL_21:
    v3 = v49;
    v32(v34, v35, 1, v49);

    if ((*v39)(v33, 1, v3) != 1)
    {

      v36 = v37;
      sub_1D1DCF39C(v33, v37, type metadata accessor for StaticMatterDevice);
      v32(v36, 0, 1, v3);
      return;
    }

    sub_1D1741A30(v33, &qword_1EC643650, &qword_1D1E71D40);
    v20 = v22;
    v15 = v38;
    if (!v18)
    {
      goto LABEL_6;
    }
  }

LABEL_14:
  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v31 >= v29)
    {

      v32 = *v44;
      v33 = v40;
      v34 = v40;
      v35 = 1;
      goto LABEL_21;
    }

    v28 = *(v25 + 64 + 8 * v31);
    ++v30;
    if (v28)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1D1DAE22C()
{
  type metadata accessor for WidgetActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1EE07B4E0 = v0;
  return result;
}

uint64_t static WidgetActor.shared.getter()
{
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }
}

uint64_t static WidgetActor.run<A>(resultType:body:)(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1D17C4BFC;

  return v7(a1);
}

uint64_t WidgetActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1DAE418()
{
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D1DAE474()
{
  v0 = type metadata accessor for WidgetActor();

  return MEMORY[0x1EEE6DBF0](v0);
}

uint64_t static BasicIdentity.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_1D1E6904C(), result = 0, (v12 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1D1E6904C();
    }
  }

  return result;
}

uint64_t sub_1D1DAE5D0()
{
  if (*v0)
  {
    return 0x694B746567646977;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D1DAE614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001D1EC9000 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x694B746567646977 && a2 == 0xEA0000000000646ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D1E6904C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D1DAE704(uint64_t a1)
{
  v2 = sub_1D1DC9524();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAE740(uint64_t a1)
{
  v2 = sub_1D1DC9524();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BasicIdentity.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F968, &unk_1D1EAFB18);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1DC9524();
  sub_1D1E6930C();
  v14 = 0;
  sub_1D1E68ECC();
  if (!v5)
  {
    v13 = 1;
    sub_1D1E68ECC();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t BasicIdentity.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D1E678EC();

  return sub_1D1E678EC();
}

uint64_t BasicIdentity.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t BasicIdentity.init(from:)(void *a1)
{
  result = sub_1D1DC97E8(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1D1DAE9FC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1D1E6904C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1D1E6904C();
    }
  }

  return result;
}

uint64_t sub_1D1DAEAA0()
{
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1DAEB08(uint64_t a1)
{
  sub_1D1E678EC();

  return sub_1D1E678EC();
}

uint64_t sub_1D1DAEB58(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E678EC();
  sub_1D1E678EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1DAEBBC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D1DC97E8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1D1DAEC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a3;
  sub_1D1778308(a1, a7);
  v14 = type metadata accessor for WidgetRefresh(0, a5, a6, v13);
  (*(*(a5 - 8) + 32))(a7 + v14[9], a2, a5);
  *(a7 + v14[10]) = v12;
  v15 = v14[11];
  v16 = sub_1D1E66FDC();
  v17 = *(*(v16 - 8) + 32);

  return v17(a7 + v15, a4, v16);
}

uint64_t WidgetRefresh.init(homeID:configuration:filtered:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a3;
  sub_1D1741C08(a1, a6, &qword_1EC642590, qword_1D1E71260);
  v13 = type metadata accessor for WidgetRefresh(0, a4, a5, v12);
  v14 = *(a4 - 8);
  (*(v14 + 16))(a6 + *(v13 + 36), a2, a4);
  *(a6 + *(v13 + 40)) = v11;
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v15 = sub_1D1E6701C();
  __swift_project_value_buffer(v15, qword_1EC6BE2B8);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  (*(v14 + 8))(a2, a4);
  return sub_1D1741A30(a1, &qword_1EC642590, qword_1D1E71260);
}

uint64_t WidgetDetailUpdate.init(homeID:characteristics:actionSets:matterDevices:configuration:isMonitoring:filtered:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, int *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = *a7;
  sub_1D1741C08(a1, a9, &qword_1EC642590, qword_1D1E71260);
  v20 = type metadata accessor for WidgetDetailUpdate(0, a8, a10, v19);
  *(a9 + v20[9]) = a2;
  *(a9 + v20[10]) = a3;
  *(a9 + v20[11]) = a4;
  v21 = *(a8 - 8);
  (*(v21 + 16))(a9 + v20[12], a5, a8);
  *(a9 + v20[14]) = a6;
  *(a9 + v20[13]) = v18;
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6701C();
  __swift_project_value_buffer(v22, qword_1EC6BE2B8);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  (*(v21 + 8))(a5, a8);
  return sub_1D1741A30(a1, &qword_1EC642590, qword_1D1E71260);
}

uint64_t sub_1D1DAF094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v19 = a2;
  v18 = sub_1D1E66FDC();
  v5 = *(v18 - 8);
  v6 = MEMORY[0x1EEE9AC00](v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v17 - v14;
  sub_1D1741C08(v3, &v17 - v14, &qword_1EC642590, qword_1D1E71260);
  (*(v10 + 16))(v12, v3 + *(a1 + 48), v9);
  v20 = *(v3 + *(a1 + 52));
  (*(v5 + 16))(v8, v3 + *(a1 + 60), v18);
  return sub_1D1DAEC50(v15, v12, &v20, v8, v9, *(a1 + 24), v19);
}

uint64_t sub_1D1DAF2E0(void *a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[5] = *a1;
  sub_1D1E67E1C();
  v3[6] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1DAF380, v5, v4);
}

uint64_t sub_1D1DAF380()
{
  v1 = v0[4];
  v2 = v0[3];
  v0[2] = v0[5];
  v3 = *v1;
  v4 = (*(*(v2 + 24) + 16))(*(v2 + 16));
  v6 = v5;
  v0[9] = v5;
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1D1DAF468;

  return WidgetManager.perform(_:forKind:)(v3, v4, v6);
}

uint64_t sub_1D1DAF468()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D1DAF584;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D1A0DFC4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1DAF584()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D1DAF600()
{
  v1 = *v0;
  v2 = 0x73656D6F486F6ELL;
  v3 = 0x48676E697373696DLL;
  v4 = 0x5464696C61766E69;
  if (v1 != 3)
  {
    v4 = 0x74756F656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1DAF6A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1DCF00C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1DAF6D0(uint64_t a1)
{
  v2 = sub_1D1DC9A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAF70C(uint64_t a1)
{
  v2 = sub_1D1DC9A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DAF748(uint64_t a1)
{
  v2 = sub_1D1DC9AC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAF784(uint64_t a1)
{
  v2 = sub_1D1DC9AC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DAF7C0(uint64_t a1)
{
  v2 = sub_1D1DC9B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAF7FC(uint64_t a1)
{
  v2 = sub_1D1DC9B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DAF838(uint64_t a1)
{
  v2 = sub_1D1DC9BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAF874(uint64_t a1)
{
  v2 = sub_1D1DC9BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DAF8B0(uint64_t a1)
{
  v2 = sub_1D1DC9B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAF8EC(uint64_t a1)
{
  v2 = sub_1D1DC9B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DAF928(uint64_t a1)
{
  v2 = sub_1D1DC9A70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DAF964(uint64_t a1)
{
  v2 = sub_1D1DC9A70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WidgetSnapshotModerator.Error.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F978, &qword_1D1EAFB28);
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F980, &qword_1D1EAFB30);
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v33 - v5;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F988, &qword_1D1EAFB38);
  v36 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F990, &qword_1D1EAFB40);
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v33 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F998, &qword_1D1EAFB48);
  v43 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for WidgetSnapshotModerator.Error(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F9A0, &unk_1D1EAFB50);
  v48 = *(v18 - 8);
  v49 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1DC9A1C();
  sub_1D1E6930C();
  sub_1D1DC9148(v47, v17, type metadata accessor for WidgetSnapshotModerator.Error);
  v21 = (*(v8 + 48))(v17, 4, v7);
  if (v21 <= 1)
  {
    v26 = v43;
    v27 = v12;
    v29 = v45;
    v28 = v46;
    if (!v21)
    {
      v30 = v44;
      sub_1D1778308(v17, v44);
      v52 = 2;
      sub_1D1DC9B18();
      v31 = v49;
      sub_1D1E68DFC();
      sub_1D1E66A7C();
      sub_1D1DC9C14(&qword_1EE07B258, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      sub_1D1E68E5C();
      (*(v36 + 8))(v29, v28);
      sub_1D1741A30(v30, &qword_1EC642590, qword_1D1E71260);
      return (*(v48 + 8))(v20, v31);
    }

    v50 = 0;
    sub_1D1DC9BC0();
    v23 = v49;
    sub_1D1E68DFC();
    (*(v26 + 8))(v14, v27);
  }

  else
  {
    if (v21 == 2)
    {
      v51 = 1;
      sub_1D1DC9B6C();
      v22 = v33;
      v23 = v49;
      sub_1D1E68DFC();
      v25 = v34;
      v24 = v35;
    }

    else if (v21 == 3)
    {
      v53 = 3;
      sub_1D1DC9AC4();
      v22 = v37;
      v23 = v49;
      sub_1D1E68DFC();
      v25 = v38;
      v24 = v39;
    }

    else
    {
      v54 = 4;
      sub_1D1DC9A70();
      v22 = v40;
      v23 = v49;
      sub_1D1E68DFC();
      v25 = v41;
      v24 = v42;
    }

    (*(v25 + 8))(v22, v24);
  }

  return (*(v48 + 8))(v20, v23);
}

uint64_t WidgetSnapshotModerator.Error.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for WidgetSnapshotModerator.Error(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1DC9148(v1, v15, type metadata accessor for WidgetSnapshotModerator.Error);
  v16 = (*(v7 + 48))(v15, 4, v6);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = 1;
    }

    else if (v16 == 3)
    {
      v17 = 3;
    }

    else
    {
      v17 = 4;
    }

    return MEMORY[0x1D3892850](v17);
  }

  if (v16)
  {
    v17 = 0;
    return MEMORY[0x1D3892850](v17);
  }

  sub_1D1778308(v15, v12);
  MEMORY[0x1D3892850](2);
  sub_1D1741C08(v12, v10, &qword_1EC642590, qword_1D1E71260);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v10, v2);
    sub_1D1E6922C();
    sub_1D1DC9C14(qword_1EE07DD78, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
}

uint64_t WidgetSnapshotModerator.Error.hashValue.getter()
{
  sub_1D1E6920C();
  WidgetSnapshotModerator.Error.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1DB0400()
{
  sub_1D1E6920C();
  WidgetSnapshotModerator.Error.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1DB0444(uint64_t a1)
{
  sub_1D1E6920C();
  WidgetSnapshotModerator.Error.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1DB049C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v13 = *(*(v8 - 8) + 16);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = type metadata accessor for WidgetDetailUpdate(0, v8, v7, v6);
      v10 = 48;
      goto LABEL_7;
    }

    v9 = type metadata accessor for WidgetWriteRequests(0, v8, v7, v6);
  }

  else
  {
    v9 = type metadata accessor for WidgetRefresh(0, v8, v7, v6);
  }

  v10 = 36;
LABEL_7:
  v11 = v2 + *(v9 + v10);

  return v13(a2, v11, v8);
}

uint64_t sub_1D1DB0568(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = (*(v9 + 8))(v8, v9);
  v12 = v11;
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  if (v10 == (*(v14 + 8))(v13, v14) && v12 == v15)
  {
  }

  else
  {
    v17 = sub_1D1E6904C();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 16))(v18, v19);
  v22 = v21;
  v23 = a2[3];
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v23);
  if (v20 == (*(v24 + 16))(v23, v24) && v22 == v25)
  {
  }

  else
  {
    v27 = sub_1D1E6904C();

    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  type metadata accessor for WidgetSnapshotModerator.MonitorEntry(0, a3, a4, v28);
  if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
  {
    return sub_1D1E6775C() & 1;
  }

  return 0;
}

uint64_t sub_1D1DB0778(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 8))(v3, v4);
  sub_1D1E678EC();

  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  (*(v6 + 16))(v5, v6);
  sub_1D1E678EC();

  sub_1D1E66A7C();
  sub_1D1DC9C14(qword_1EE07DD78, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E676EC();
}

uint64_t sub_1D1DB08C0(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1DB0778(v3, a1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1DB0910(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1DB0778(v4, a2);
  return sub_1D1E6926C();
}

double WidgetSnapshotModerator.stateSnapshots.getter()
{
  swift_beginAccess();

  return result;
}

double WidgetSnapshotModerator.matterStateSnapshots.getter()
{
  swift_beginAccess();

  return result;
}

void *WidgetSnapshotModerator.staticMatterDevices(in:)()
{
  v1 = type metadata accessor for MatterStateSnapshot(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - v6;
  swift_beginAccess();
  v8 = *(v0 + 120);
  if (*(v8 + 16) && (v9 = sub_1D1742188(), (v10 & 1) != 0))
  {
    sub_1D1DC9148(*(v8 + 56) + *(v2 + 72) * v9, v7, type metadata accessor for MatterStateSnapshot);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  (*(v2 + 56))(v7, v11, 1, v1);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_1D1741A30(v7, &unk_1EC64F390, &qword_1D1E92B10);
    swift_endAccess();
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D1DC9148(v7, v4, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v7, &unk_1EC64F390, &qword_1D1E92B10);
  swift_endAccess();
  v13 = *&v4[*(v1 + 24)];

  sub_1D1DC91B0(v4, type metadata accessor for MatterStateSnapshot);
  v14 = v13[2];
  if (!v14)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v15 = sub_1D180441C(v13[2], 0);
  v16 = *(type metadata accessor for StaticMatterDevice(0) - 8);
  v17 = sub_1D18062D4(&v19, v15 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v14, v13);
  result = sub_1D1716918(v19);
  if (v17 == v14)
  {
    return v15;
  }

  __break(1u);
  return result;
}

double WidgetSnapshotModerator.homes.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t WidgetSnapshotModerator.recommendedHome.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_recommendedHome;
  swift_beginAccess();
  return sub_1D1741C08(v1 + v3, a1, &qword_1EC642590, qword_1D1E71260);
}

uint64_t sub_1D1DB0D74(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66FDC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  v31 = a1;
  v15 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  swift_beginAccess();
  v16 = *(v2 + 168);
  if (*(v16 + 16) && (v17 = sub_1D1742188(), (v18 & 1) != 0))
  {
    v19 = (*(v16 + 56) + 16 * v17);
    v21 = *v19;
    v20 = v19[1];
    swift_endAccess();
    v22 = *(v9 + 8);
    swift_unknownObjectRetain();
    v22(v14, v8);
    v23 = v31;
  }

  else
  {
    swift_endAccess();
    (*(v9 + 8))(v14, v8);
    if (qword_1EC642488 != -1)
    {
      swift_once();
    }

    v24 = sub_1D1E6701C();
    v25 = __swift_project_value_buffer(v24, qword_1EC6BE2B8);
    v23 = v31;
    v26 = v31;
    sub_1D1E66FCC();
    v21 = sub_1D17605FC("predictionController", 20, 2, v7, v25, v26);

    (*(v5 + 8))(v7, v4);
    if (v21)
    {
      v20 = &off_1F4D86A10;
    }

    else
    {
      v20 = 0;
    }
  }

  v27 = [v23 uniqueIdentifier];
  sub_1D1E66A5C();

  swift_beginAccess();
  v28 = swift_unknownObjectRetain();
  sub_1D1B0E1C8(v28, v20, v12);
  swift_endAccess();
  return v21;
}

char *sub_1D1DB1098(void *a1)
{
  swift_defaultActor_initialize();
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 14) = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);
  v4 = sub_1D18D72DC(v3);
  v5 = MEMORY[0x1E69E7CD0];
  *(v1 + 15) = v4;
  *(v1 + 16) = v5;
  *(v1 + 17) = v5;
  *(v1 + 18) = v5;
  *(v1 + 19) = sub_1D18D74F8(v3);
  *(v1 + 20) = sub_1D18D765C(v3);
  *(v1 + 21) = sub_1D18D7878(v3);
  v6 = OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_recommendedHome;
  v7 = sub_1D1E66A7C();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v1[OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_firstSyncHappened] = 0;
  *&v1[OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager] = a1;
  v8 = [a1 widgetManager];
  *&v1[OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager] = v8;
  return v1;
}

uint64_t sub_1D1DB11A0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 72) = a2;
  *(v4 + 80) = v3;
  *(v4 + 168) = a3;
  *(v4 + 64) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  *(v4 + 88) = v5;
  *(v4 + 96) = *(v5 - 8);
  *(v4 + 104) = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  *(v4 + 112) = v6;
  *(v4 + 120) = *(v6 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DB12DC, v3, 0);
}

uint64_t sub_1D1DB12DC()
{
  v43 = v0;
  v1 = *(v0 + 80);
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_firstSyncHappened) != 1 || (swift_beginAccess(), !*(*(v1 + 160) + 16)))
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
      v15 = swift_slowAlloc();
      v42 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1D1B1312C(0xD000000000000019, 0x80000001D1EC9DF0, &v42);
      _os_log_impl(&dword_1D16EC000, v12, v13, "%s Unable to return StaticHome, because snapshot has not been built.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    v16 = *(v0 + 88);
    v17 = *(v0 + 96);
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
    swift_allocError();
    (*(v17 + 56))(v18, 1, 4, v16);
    goto LABEL_11;
  }

  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 168);
  v5 = *(v0 + 72);
  v6 = *(v3 + 48);
  if (v6(v5, 1, v2) == 1 && (v4 & 1) == 0)
  {
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v10 = v9;
    (*(v3 + 56))(v9, 1, 1, v2);
    (*(v8 + 56))(v10, 0, 4, v7);
LABEL_11:
    swift_willThrow();
    goto LABEL_12;
  }

  v21 = *(v0 + 104);
  sub_1D1741C08(v5, v21, &qword_1EC642590, qword_1D1E71260);
  if (v6(v21, 1, v2) != 1)
  {
    v23 = *(*(v0 + 120) + 32);
    v23(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    v24 = *(v0 + 80);
    v23(*(v0 + 136), *(v0 + 128), *(v0 + 112));
    swift_beginAccess();
    v25 = *(v24 + 160);
    if (*(v25 + 16))
    {
      v26 = sub_1D1742188();
      if (v27)
      {
        v28 = v26;
        v29 = *(v0 + 136);
        v30 = *(v0 + 112);
        v31 = *(v0 + 120);
        v32 = *(v0 + 64);
        v33 = *(v25 + 56);
        v34 = type metadata accessor for StaticHome(0);
        sub_1D1DC9148(v33 + *(*(v34 - 8) + 72) * v28, v32, type metadata accessor for StaticHome);
        swift_endAccess();
        (*(v31 + 8))(v29, v30);

        v19 = *(v0 + 8);
        goto LABEL_13;
      }
    }

    v35 = *(v0 + 136);
    v36 = *(v0 + 112);
    v37 = *(v0 + 120);
    v38 = *(v0 + 88);
    v39 = *(v0 + 96);
    swift_endAccess();
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v41 = v40;
    (*(v37 + 16))(v40, v35, v36);
    (*(v37 + 56))(v41, 0, 1, v36);
    (*(v39 + 56))(v41, 0, 4, v38);
    swift_willThrow();
    (*(v37 + 8))(v35, v36);
LABEL_12:

    v19 = *(v0 + 8);
LABEL_13:

    return v19();
  }

  sub_1D1741A30(*(v0 + 104), &qword_1EC642590, qword_1D1E71260);
  v22 = swift_task_alloc();
  *(v0 + 144) = v22;
  *v22 = v0;
  v22[1] = sub_1D1DB18E0;

  return sub_1D1DB1D48();
}

uint64_t sub_1D1DB18E0(uint64_t a1)
{
  v4 = *v2;
  v4[19] = v1;

  v5 = v4[10];
  if (v1)
  {
    v6 = sub_1D1DB1CC8;
  }

  else
  {
    v4[20] = a1;
    v6 = sub_1D1DB1A1C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1DB1A1C()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = [v1 uniqueIdentifier];

  sub_1D1E66A5C();
  v4 = v0[10];
  (*(v2 + 32))(v0[17], v0[16], v0[14]);
  swift_beginAccess();
  v5 = *(v4 + 160);
  if (*(v5 + 16) && (v6 = sub_1D1742188(), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = v0[17];
    v10 = v0[14];
    v11 = v0[15];
    v12 = v0[8];
    v13 = *(v5 + 56);
    v14 = type metadata accessor for StaticHome(0);
    sub_1D1DC9148(v13 + *(*(v14 - 8) + 72) * v8, v12, type metadata accessor for StaticHome);
    swift_endAccess();
    (*(v11 + 8))(v9, v10);

    v15 = v0[1];
  }

  else
  {
    v16 = v0[17];
    v17 = v0[14];
    v18 = v0[15];
    v19 = v0[11];
    v20 = v0[12];
    swift_endAccess();
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v22 = v21;
    (*(v18 + 16))(v21, v16, v17);
    (*(v18 + 56))(v22, 0, 1, v17);
    (*(v20 + 56))(v22, 0, 4, v19);
    swift_willThrow();
    (*(v18 + 8))(v16, v17);

    v15 = v0[1];
  }

  return v15();
}

uint64_t sub_1D1DB1CC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DB1D48()
{
  v1[2] = v0;
  v2 = sub_1D1E66A7C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[10] = v4;
  *v4 = v1;
  v4[1] = sub_1D1DB1EAC;

  return WidgetSnapshotModerator.updateHomes(timeout:)(20.0);
}

uint64_t sub_1D1DB1EAC()
{
  v2 = *v1;
  v2[11] = v0;

  if (v0)
  {

    v3 = v2[1];

    return v3();
  }

  else
  {
    v5 = v2[2];

    return MEMORY[0x1EEE6DFA0](sub_1D1DB2008, v5, 0);
  }
}

uint64_t sub_1D1DB2008()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager);
  v0[12] = v1;
  v2 = [v1 homes];
  v0[13] = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v3 = sub_1D1E67C1C();

  if (v3 >> 62)
  {
    v4 = sub_1D1E6873C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    if (qword_1EE07B038 != -1)
    {
      swift_once();
    }

    v5 = qword_1EE081458;
    v0[14] = qword_1EE081458;

    return MEMORY[0x1EEE6DFA0](sub_1D1DB22C4, v5, 0);
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v6 = sub_1D1E6709C();
    __swift_project_value_buffer(v6, qword_1EE0813C8);
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D16EC000, v7, v8, "recommendedHome() HMHomeManager returned 0 homes", v9, 2u);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    v10 = v0[6];
    v11 = v0[7];

    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
    swift_allocError();
    (*(v11 + 56))(v12, 1, 4, v10);
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1D1DB22C4()
{
  v1 = *(v0 + 16);
  *(v0 + 128) = sub_1D1DB55F4() & 1;

  return MEMORY[0x1EEE6DFA0](sub_1D1DB2338, v1, 0);
}

uint64_t sub_1D1DB2338()
{
  if (*(v0 + 128) == 1)
  {
    v1 = [*(v0 + 96) currentHome];
  }

  else
  {
    v1 = 0;
  }

  *(v0 + 120) = v1;
  v2 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D1DB23C8, v2, 0);
}

uint64_t sub_1D1DB23C8()
{
  v1 = *(v0[14] + 120);
  v2 = sub_1D1E677EC();
  v3 = [v1 stringForKey_];

  if (v3)
  {
    sub_1D1E6781C();

    sub_1D1E66A0C();
  }

  else
  {
    (*(v0[4] + 56))(v0[9], 1, 1, v0[3]);
  }

  v4 = v0[2];

  return MEMORY[0x1EEE6DFA0](sub_1D1DB24D4, v4, 0);
}

void sub_1D1DB24D4()
{
  v37 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1D1741C08(*(v0 + 72), v1, &qword_1EC642590, qword_1D1E71260);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1D1741A30(*(v0 + 72), &qword_1EC642590, qword_1D1E71260);
  }

  else
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 72);
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);
    (*(v7 + 32))(v6, *(v0 + 64), v8);
    v9 = [v4 homes];
    v10 = sub_1D1E67C1C();

    v11 = swift_task_alloc();
    *(v11 + 16) = v6;
    v12 = sub_1D174A6C4(sub_1D1DCF2CC, v11, v10);

    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    (*(v7 + 8))(v6, v8);
    if (v12)
    {
      v13 = *(v0 + 120);
      if (!v13)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  v12 = [*(v0 + 96) currentHome];
  v13 = *(v0 + 120);
  if (!v13)
  {
LABEL_7:
    if (v12)
    {
      v14 = v12;
LABEL_15:
      v19 = v12;
      v13 = 0;
      goto LABEL_16;
    }

    v15 = [*(v0 + 96) homes];
    v16 = sub_1D1E67C1C();
    v17 = v16;
    if (v16 >> 62)
    {
      if (sub_1D1E6873C())
      {
LABEL_11:

        if ((v17 & 0xC000000000000001) == 0)
        {
          if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v18 = *(v17 + 32);
          goto LABEL_14;
        }

LABEL_32:
        v18 = MEMORY[0x1D3891EF0](0, v17);
LABEL_14:
        v14 = v18;

        goto LABEL_15;
      }
    }

    else if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_5:
  v14 = v13;
LABEL_16:
  v20 = qword_1EE07A098;
  v21 = v13;
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_1D1E6709C();
  __swift_project_value_buffer(v22, qword_1EE0813C8);
  v23 = v14;
  v24 = sub_1D1E6707C();
  v25 = sub_1D1E6835C();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = *(v0 + 128);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36 = v29;
    *v27 = 136315394;
    if (v26)
    {
      v30 = 0x64656C62616E65;
    }

    else
    {
      v30 = 0x64656C6261736964;
    }

    v35 = v12;
    if (v26)
    {
      v31 = 0xE700000000000000;
    }

    else
    {
      v31 = 0xE800000000000000;
    }

    v32 = sub_1D1B1312C(v30, v31, &v36);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2112;
    *(v27 + 14) = v23;
    *v28 = v23;
    v33 = v23;
    _os_log_impl(&dword_1D16EC000, v24, v25, "recommendedHome() HomeSensing:%s, Home:%@", v27, 0x16u);
    sub_1D1741A30(v28, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1D3893640](v29, -1, -1);
    MEMORY[0x1D3893640](v27, -1, -1);
  }

  else
  {
  }

  v34 = *(v0 + 8);

  v34(v23);
}

uint64_t WidgetSnapshotModerator.queueForNextUpdate<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for StateSnapshot.UpdateType(0);
  v4[7] = swift_task_alloc();
  v4[8] = sub_1D1E67E1C();
  v4[9] = sub_1D1E67E0C();
  v6 = sub_1D1E67D4C();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1DB2A18, v6, v5);
}

uint64_t sub_1D1DB2A18()
{
  v15 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v0[12] = (*(v1 + 8))(v2, v1);
  v0[13] = v4;
  v0[14] = (*(v1 + 16))(v2, v1);
  v0[15] = v5;
  (*(*(v2 - 8) + 8))(v3, v2);
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  v0[16] = __swift_project_value_buffer(v6, qword_1EE0813C8);
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EC6770, &v14);
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s Informing HomeKit it should send a timeline refresh", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v0[17] = *(v0[5] + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
  v0[18] = sub_1D1E67E0C();
  v12 = sub_1D1E67D4C();
  v0[19] = v12;
  v0[20] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D1DB2C50, v12, v11);
}

uint64_t sub_1D1DB2C50(uint64_t a1)
{
  v2 = *(v1 + 136);
  v4 = *(v1 + 112);
  v3 = *(v1 + 120);
  v13 = *(v1 + 96);
  v5 = sub_1D1E67E0C();
  *(v1 + 168) = v5;
  v6 = swift_task_alloc();
  *(v1 + 176) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 16) = v2;
  *(v6 + 24) = v7;
  *(v6 + 32) = v13;
  *(v6 + 48) = v4;
  *(v6 + 56) = v3;
  v8 = swift_task_alloc();
  *(v1 + 184) = v8;
  *v8 = v1;
  v8[1] = sub_1D1DB2D84;
  v10 = *(v1 + 48);
  v9 = *(v1 + 56);
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v9, v5, v11, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1DC9C5C, v6, v10);
}

uint64_t sub_1D1DB2D84()
{
  v2 = *v1;
  (*v1)[24] = v0;

  if (v0)
  {
    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_1D1DB2FBC;
  }

  else
  {
    sub_1D1DC91B0(v2[7], type metadata accessor for StateSnapshot.UpdateType);

    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_1D1DB2EF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1DB2EF0()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1DB2F54, v1, v2);
}

uint64_t sub_1D1DB2F54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DB2FBC()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1DB3054, v1, v2);
}

uint64_t sub_1D1DB3054()
{
  v15 = v0;
  v1 = *(v0 + 192);

  v2 = v1;
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6833C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 192);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315394;
    *(v7 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EC6770, &v14);
    *(v7 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1D16EC000, v3, v4, "%s Unable to execute monitorAndFetchState call, will not try again. reason=%@", v7, 0x16u);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D1DB3224(uint64_t a1, uint64_t *a2)
{
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = swift_task_alloc();
  v6 = type metadata accessor for MatterStateSnapshot(0);
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v3 + 168) = v7;
  *(v3 + 176) = v8;
  *(v3 + 184) = *(a2 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1D1DB33A8, v2, 0);
}

uint64_t sub_1D1DB33A8()
{
  v64 = v0;
  if (![*(*(v0 + 96) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager) hasOptedToHH2])
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 88);
    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EE0813C8);
    v16 = v14;
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6833C();

    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_28;
    }

    v19 = *(v0 + 88);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v19;
    *v21 = v19;
    v22 = v19;
    v23 = "updateMatterDeviceCache(from:filter:) HH1 support not available, skipping update for %@";
    goto LABEL_27;
  }

  v1 = HMHome.matterAccessories.getter();
  if (v1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {

    if (!i)
    {
      break;
    }

    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EE0813C8);
    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D16EC000, v4, v5, "updateMatterDeviceCache(from:filter:) will update MatterStateSnapshot", v6, 2u);
      MEMORY[0x1D3893640](v6, -1, -1);
    }

    v7 = *(v0 + 88);
    v8 = *(v0 + 96);

    v9 = [v7 uniqueIdentifier];
    sub_1D1E66A5C();

    swift_beginAccess();
    v10 = *(v8 + 120);
    if (*(v10 + 16) && (v11 = sub_1D1742188(), (v12 & 1) != 0))
    {
      sub_1D1DC9148(*(v10 + 56) + *(*(v0 + 160) + 72) * v11, *(v0 + 112), type metadata accessor for MatterStateSnapshot);
      v13 = 0;
    }

    else
    {
      v13 = 1;
    }

    v24 = *(v0 + 176);
    v58 = *(v0 + 168);
    v59 = *(v0 + 152);
    v25 = *(v0 + 136);
    v26 = *(v0 + 144);
    v27 = *(v0 + 120);
    v28 = *(v0 + 128);
    v29 = *(v0 + 112);
    v30 = *(v0 + 88);
    v31 = *(*(v0 + 160) + 56);
    v60 = *(v0 + 104);
    v32 = *(v0 + 184);
    v31(v29, v13, 1);
    swift_endAccess();
    (*(v28 + 8))(v26, v27);
    v33 = v24;
    v57 = sub_1D1A2B978(v29, 0, 0, 4, v30, v24, v32);
    v34 = [v30 matterControllerID];
    v35 = sub_1D1E6781C();
    v37 = v36;

    v38 = [v30 uniqueIdentifier];
    sub_1D1E66A5C();

    *&v62[0] = v33;
    BYTE8(v62[0]) = v32;
    sub_1D1A28CB8(v35, v37, v25, v57, v62, v58);
    sub_1D1741A30(v29, &unk_1EC64F390, &qword_1D1E92B10);
    v39 = [v30 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1DC9148(v58, v60, type metadata accessor for MatterStateSnapshot);
    (v31)(v60, 0, 1, v59);
    swift_beginAccess();
    sub_1D1B0E5E8(v60, v25);
    swift_endAccess();
    v40 = *(v58 + *(v59 + 24));

    v41 = sub_1D1DB3B00(v30, v40);

    v42 = MEMORY[0x1E69E7CC8];
    v61 = MEMORY[0x1E69E7CC8];
    v43 = *(v41 + 16);
    if (!v43)
    {
LABEL_22:
      v48 = *(v0 + 168);
      v49 = *(v0 + 96);

      sub_1D1DC91B0(v48, type metadata accessor for MatterStateSnapshot);
      swift_beginAccess();
      *(v49 + 152) = v42;

      goto LABEL_29;
    }

    v44 = 0;
    v45 = (v41 + 64);
    while (v44 < *(v41 + 16))
    {
      v46 = *v45;
      v47 = *(v45 - 3);
      *&v62[0] = *(v45 - 4);
      *(&v62[0] + 1) = v47;
      v62[1] = *(v45 - 1);
      v63 = v46;

      swift_unknownObjectRetain();

      sub_1D1DB3DE8(&v61, v62);

      swift_unknownObjectRelease();

      ++v44;
      v45 += 5;
      if (v43 == v44)
      {
        v42 = v61;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_33:
    ;
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v50 = *(v0 + 88);
  v51 = sub_1D1E6709C();
  __swift_project_value_buffer(v51, qword_1EE0813C8);
  v52 = v50;
  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6835C();

  if (os_log_type_enabled(v17, v18))
  {
    v53 = *(v0 + 88);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v53;
    *v21 = v53;
    v54 = v53;
    v23 = "updateMatterDeviceCache(from:filter:) No native Matter accessories found on %@, skipping update";
LABEL_27:
    _os_log_impl(&dword_1D16EC000, v17, v18, v23, v20, 0xCu);
    sub_1D1741A30(v21, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v21, -1, -1);
    MEMORY[0x1D3893640](v20, -1, -1);
  }

LABEL_28:

LABEL_29:

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_1D1DB3B00(void *a1, uint64_t a2)
{
  v2 = HMHome.matterAccessories.getter();
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_34:
    v5 = sub_1D1E6873C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = MEMORY[0x1E69E7CC8];
      while (1)
      {
LABEL_4:
        v8 = v6;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1D3891EF0](v8, v3);
          }

          else
          {
            if (v8 >= *(v4 + 16))
            {
              goto LABEL_33;
            }

            v9 = *(v3 + 8 * v8 + 32);
          }

          v10 = v9;
          v6 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v11 = sub_1D1E682DC();
          if ((v12 & 1) == 0)
          {
            v13 = v11;
            v14 = HMAccessory.matterDevice.getter();
            if (v14)
            {
              v42 = v15;
              v43 = v14;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v46 = v7;
              v19 = sub_1D17420B0(v13);
              v21 = v7[2];
              v22 = (v20 & 1) == 0;
              v23 = __OFADD__(v21, v22);
              v24 = v21 + v22;
              if (v23)
              {
                __break(1u);
              }

              else
              {
                if (v7[3] < v24)
                {
                  v25 = v20;
                  sub_1D172BA84(v24, isUniquelyReferenced_nonNull_native);
                  v19 = sub_1D17420B0(v13);
                  if ((v25 & 1) == (v26 & 1))
                  {
                    v27 = v25;
                    goto LABEL_19;
                  }

LABEL_39:
                  result = sub_1D1E690FC();
                  __break(1u);
                  return result;
                }

                v28 = v42;
                v29 = v43;
                if (isUniquelyReferenced_nonNull_native)
                {
                  v7 = v46;
                  if (v20)
                  {
                    goto LABEL_29;
                  }
                }

                else
                {
                  v36 = v19;
                  v37 = v20;
                  sub_1D173AC34();
                  v27 = v37;
                  v19 = v36;
LABEL_19:
                  v28 = v42;
                  v29 = v43;
                  v7 = v46;
                  if (v27)
                  {
LABEL_29:
                    v35 = (v7[7] + 16 * v19);
                    *v35 = v29;
                    v35[1] = v28;

                    swift_unknownObjectRelease();
                    if (v6 != v5)
                    {
                      goto LABEL_4;
                    }

                    goto LABEL_36;
                  }
                }

                v7[(v19 >> 6) + 8] |= 1 << v19;
                *(v7[6] + 8 * v19) = v13;
                v30 = (v7[7] + 16 * v19);
                *v30 = v29;
                v30[1] = v28;

                v31 = v7[2];
                v23 = __OFADD__(v31, 1);
                v32 = v31 + 1;
                if (!v23)
                {
                  v7[2] = v32;
                  if (v6 != v5)
                  {
                    goto LABEL_4;
                  }

                  goto LABEL_36;
                }
              }

              __break(1u);
              goto LABEL_39;
            }

            v16 = sub_1D17420B0(v13);
            if (v17)
            {
              break;
            }
          }

          ++v8;
          if (v6 == v5)
          {
            goto LABEL_36;
          }
        }

        v33 = v16;
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v46 = v7;
        if (!v34)
        {
          sub_1D173AC34();
          v7 = v46;
        }

        swift_unknownObjectRelease();
        sub_1D1751784(v33, v7);

        if (v6 == v5)
        {
          goto LABEL_36;
        }
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC8];
LABEL_36:

  v46 = v7;
  v38 = a1;
  sub_1D1DC7E10(a2, &v46, v38);
  v40 = v39;

  return v40;
}

unint64_t sub_1D1DB3DE8(void *a1, __int128 *a2)
{
  v3 = a2[1];
  v22 = *a2;
  v23 = v3;
  v24 = *(a2 + 4);
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EE0813C8);
  v25 = v22;
  v5 = *(&v23 + 1);
  v26 = v24;
  sub_1D1DCF2EC(&v25, v21);
  swift_unknownObjectRetain();
  sub_1D1741C08(&v26, v21, &qword_1EC64FD70, &unk_1D1EB0830);
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6835C();
  sub_1D1DCF348(&v25);
  swift_unknownObjectRelease();
  sub_1D1741A30(&v26, &qword_1EC64FD70, &unk_1D1EB0830);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20 = v18;
    *v8 = 136315138;
    sub_1D1DCF2EC(&v25, v21);
    swift_unknownObjectRetain();
    v19 = v5;
    sub_1D1741C08(&v26, v21, &qword_1EC64FD70, &unk_1D1EB0830);
    v9 = WidgetManager.AttributeDescriptor.description.getter();
    v10 = a1;
    v12 = v11;
    sub_1D1DCF348(&v25);
    swift_unknownObjectRelease();
    sub_1D1741A30(&v26, &qword_1EC64FD70, &unk_1D1EB0830);
    v13 = sub_1D1B1312C(v9, v12, &v20);
    a1 = v10;

    *(v8 + 4) = v13;
    v5 = v19;
    _os_log_impl(&dword_1D16EC000, v6, v7, "updateMatterDeviceCache(from:filter:) AttributeDescriptor: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1D3893640](v18, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  ObjectType = swift_getObjectType();
  v15 = (*(v5 + 8))(ObjectType, v5);
  sub_1D1DCF2EC(&v25, v21);
  swift_unknownObjectRetain();
  sub_1D1741C08(&v26, v21, &qword_1EC64FD70, &unk_1D1EB0830);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = *a1;
  result = sub_1D17572C8(&v22, v15, isUniquelyReferenced_nonNull_native);
  *a1 = v21[0];
  return result;
}

uint64_t WidgetSnapshotModerator.updateHomes(timeout:)(double a1)
{
  *(v2 + 112) = v1;
  *(v2 + 104) = a1;
  v3 = sub_1D1E66A7C();
  *(v2 + 120) = v3;
  *(v2 + 128) = *(v3 - 8);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = *(type metadata accessor for StaticHome(0) - 8);
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  *(v2 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DB41F0, v1, 0);
}

uint64_t sub_1D1DB41F0()
{
  v1 = *(*(v0 + 14) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager);
  *(v0 + 22) = v1;
  if ([v1 dataSyncState] == 1)
  {
    if (qword_1EE07B1C0 != -1)
    {
      swift_once();
    }

    v2 = swift_task_alloc();
    *(v0 + 25) = v2;
    *v2 = v0;
    v2[1] = sub_1D1DB46E0;
    v3 = *(v0 + 22);
    v4 = v0[13];

    return sub_1D1DD12AC(v3, v4);
  }

  else
  {
    if (qword_1EE07B1C0 != -1)
    {
      swift_once();
    }

    v6 = swift_task_alloc();
    *(v0 + 23) = v6;
    *v6 = v0;
    v6[1] = sub_1D1DB4388;

    return sub_1D1DD0648(v1, 20.0);
  }
}

uint64_t sub_1D1DB4388()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_1D1DB511C;
  }

  else
  {
    v4 = sub_1D1DB44B4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1DB44B4()
{
  v15 = v0;
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE0813C8);

  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6833C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 22);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    *(v0 + 12) = [v4 dataSyncState];
    type metadata accessor for HMHomeManagerDataSyncState(0);
    v7 = sub_1D1E678BC();
    v9 = sub_1D1B1312C(v7, v8, &v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D16EC000, v2, v3, "updateHomes(timeout:) called when HMHomeManager.dataSyncState = %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D3893640](v6, -1, -1);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  if (qword_1EE07B1C0 != -1)
  {
    swift_once();
  }

  v10 = swift_task_alloc();
  *(v0 + 25) = v10;
  *v10 = v0;
  v10[1] = sub_1D1DB46E0;
  v11 = *(v0 + 22);
  v12 = v0[13];

  return sub_1D1DD12AC(v11, v12);
}

uint64_t sub_1D1DB46E0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_1D1DB5388;
  }

  else
  {
    v4 = sub_1D1DB480C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1DB480C()
{
  v70 = v0;
  v3 = [*(v0 + 176) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v4 = sub_1D1E67C1C();

  if (v4 >> 62)
  {
    v5 = sub_1D1E6873C();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  v69 = MEMORY[0x1E69E7CC0];
  sub_1D178D050(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v6 = 0;
  v7 = *(v0 + 144);
  v8 = v69;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1D3891EF0](v6, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v6 + 32);
    }

    sub_1D1CEBBBC(v9, *(v0 + 176), *(v0 + 160));
    v69 = v8;
    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1D178D050((v10 > 1), v11 + 1, 1);
      v8 = v69;
    }

    v12 = *(v0 + 160);
    ++v6;
    *(v8 + 16) = v11 + 1;
    sub_1D1DCF39C(v12, v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, type metadata accessor for StaticHome);
  }

  while (v5 != v6);

LABEL_14:
  v68 = v0;
  v64 = *(v8 + 16);
  if (!v64)
  {
    v1 = MEMORY[0x1E69E7CC8];
LABEL_29:
    v2 = v68;
    v0 = v68[14];

    v5 = OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_firstSyncHappened;
    if (*(v0 + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_firstSyncHappened))
    {
      swift_beginAccess();

      v36 = sub_1D18533F0(v35, v1);

      if (v36)
      {

        goto LABEL_37;
      }
    }

    if (qword_1EE07A098 == -1)
    {
LABEL_33:
      v37 = sub_1D1E6709C();
      __swift_project_value_buffer(v37, qword_1EE0813C8);

      v38 = sub_1D1E6707C();
      v39 = sub_1D1E6835C();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = v1;
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v69 = v42;
        *v41 = 136446210;

        v44 = sub_1D1DACF64(v43);

        *(v2 + 88) = v44;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
        v65 = v5;
        v67 = v0;
        v2 = v68;
        sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640, MEMORY[0x1E69E6310]);
        v45 = sub_1D1E6770C();
        v47 = v46;

        v48 = sub_1D1B1312C(v45, v47, &v69);
        v5 = v65;
        v0 = v67;

        *(v41 + 4) = v48;
        _os_log_impl(&dword_1D16EC000, v38, v39, "updateHomes(timeout:) found homes [%{public}s]", v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v42);
        MEMORY[0x1D3893640](v42, -1, -1);
        v49 = v41;
        v1 = v40;
        MEMORY[0x1D3893640](v49, -1, -1);
      }

      v50 = *(v2 + 112);
      if (!*(v1 + 2))
      {

        v52 = sub_1D18D765C(MEMORY[0x1E69E7CC0]);
        swift_beginAccess();
        *(v50 + 160) = v52;

        v53 = sub_1D1E6707C();
        v54 = sub_1D1E6833C();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_1D16EC000, v53, v54, "updateHomes(timeout:) refresh returned 0 homes", v55, 2u);
          MEMORY[0x1D3893640](v55, -1, -1);
        }

        type metadata accessor for WidgetSnapshotModerator.Error(0);
        sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
        swift_allocError();
        v57 = v56;
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
        (*(*(v58 - 8) + 56))(v57, 1, 4, v58);
        swift_willThrow();

        v51 = *(v2 + 8);
        goto LABEL_41;
      }

      swift_beginAccess();
      *(v50 + 160) = v1;

      *(v0 + v5) = 1;
LABEL_37:

      v51 = *(v2 + 8);
LABEL_41:

      return v51();
    }

LABEL_51:
    swift_once();
    goto LABEL_33;
  }

  v2 = 0;
  v13 = *(v0 + 128);
  v63 = *(v0 + 144);
  v62 = v8 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
  v66 = (v13 + 16);
  v60 = v13;
  v61 = (v13 + 8);
  v1 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v2 >= *(v8 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v14 = v68[21];
    v5 = v68[19];
    v15 = v68[17];
    v16 = v68[15];
    v17 = *(v63 + 72);
    v0 = v1;
    v1 = type metadata accessor for StaticHome;
    sub_1D1DC9148(v62 + v17 * v2, v14, type metadata accessor for StaticHome);
    v18 = *v66;
    (*v66)(v15, v14, v16);
    sub_1D1DC9148(v14, v5, type metadata accessor for StaticHome);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = v0;
    v20 = sub_1D1742188();
    v22 = *(v0 + 16);
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_48;
    }

    v5 = v21;
    if (*(v0 + 24) < v25)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = v20;
      sub_1D1734518();
      v20 = v34;
      v0 = v69;
    }

LABEL_25:
    v27 = v68[21];
    v28 = v68[19];
    v29 = v68[17];
    v30 = v68[15];
    if (v5)
    {
      v1 = v0;
      sub_1D1DC9C74(v68[19], *(v0 + 56) + v20 * v17);
      (*v61)(v29, v30);
      sub_1D1DC91B0(v27, type metadata accessor for StaticHome);
    }

    else
    {
      *(v0 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v5 = v20;
      v18(*(v0 + 48) + *(v60 + 72) * v20, v29, v30);
      v31 = v28;
      v1 = v0;
      sub_1D1DCF39C(v31, *(v0 + 56) + v5 * v17, type metadata accessor for StaticHome);
      (*(v60 + 8))(v29, v30);
      sub_1D1DC91B0(v27, type metadata accessor for StaticHome);
      v32 = *(v0 + 16);
      v24 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v24)
      {
        goto LABEL_49;
      }

      *(v0 + 16) = v33;
    }

    if (v64 == ++v2)
    {
      goto LABEL_29;
    }
  }

  sub_1D1721458(v25, isUniquelyReferenced_nonNull_native);
  v20 = sub_1D1742188();
  if ((v5 & 1) == (v26 & 1))
  {
    v0 = v69;
    goto LABEL_25;
  }

  return sub_1D1E690FC();
}

uint64_t sub_1D1DB511C()
{
  v1 = *(v0 + 192);
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE0813C8);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D16EC000, v4, v5, "updateHomes(timeout:) failed to refresh HomeKit data: %@", v6, 0xCu);
    sub_1D1741A30(v7, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  type metadata accessor for WidgetSnapshotModerator.Error(0);
  sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
  swift_allocError();
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v12 - 8) + 56))(v11, 4, 4, v12);
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D1DB5388()
{
  v1 = *(v0 + 208);
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE0813C8);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D16EC000, v4, v5, "updateHomes(timeout:) failed to refresh HomeKit data: %@", v6, 0xCu);
    sub_1D1741A30(v7, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  type metadata accessor for WidgetSnapshotModerator.Error(0);
  sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
  swift_allocError();
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v12 - 8) + 56))(v11, 4, 4, v12);
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D1DB55F4()
{
  v1 = *(v0 + 112);
  v2 = sub_1D1E677EC();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_1D1741A30(v9, &qword_1EC649700, &qword_1D1E6E910);
  }

  return 1;
}

uint64_t sub_1D1DB5710(id *a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_1D1DB581C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 264) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 64) = sub_1D1E67E1C();
  *(v7 + 72) = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  *(v7 + 80) = v9;
  *(v7 + 88) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1DB58C4, v9, v8);
}

uint64_t sub_1D1DB58C4()
{
  v37 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 32);
  v3 = [*(*(v0 + 56) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v4 = sub_1D1E67C1C();

  *(v0 + 96) = sub_1D1DC8BA4(v4, v2, &selRef_accessories, &qword_1EE07B690, 0x1E696CAC8, sub_1D1DC8B1C);

  if (v1 == 1)
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EE0813C8);

    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1D1B1312C(0xD000000000000033, 0x80000001D1EC6710, v36);
      *(v9 + 12) = 2080;
      v11 = sub_1D1E66A7C();
      v12 = MEMORY[0x1D3891260](v8, v11);
      v14 = sub_1D1B1312C(v12, v13, v36);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1D16EC000, v6, v7, "%s Monitoring characteristics: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    v15 = *(v0 + 56);
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    *(v0 + 104) = (*(v16 + 8))(v17, v16);
    *(v0 + 112) = v18;
    *(v0 + 120) = (*(v16 + 16))(v17, v16);
    *(v0 + 128) = v19;
    *(v0 + 136) = *(v15 + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
    *(v0 + 144) = sub_1D1E67E0C();
    v20 = sub_1D1E67D4C();
    v22 = v21;
    *(v0 + 152) = v20;
    *(v0 + 160) = v21;
    v23 = sub_1D1DB5D9C;
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v24 = sub_1D1E6709C();
    __swift_project_value_buffer(v24, qword_1EE0813C8);

    v25 = sub_1D1E6707C();
    v26 = sub_1D1E6835C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 32);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_1D1B1312C(0xD000000000000033, 0x80000001D1EC6710, v36);
      *(v28 + 12) = 2080;
      v30 = sub_1D1E66A7C();
      v31 = MEMORY[0x1D3891260](v27, v30);
      v33 = sub_1D1B1312C(v31, v32, v36);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_1D16EC000, v25, v26, "%s Fetching characteristics: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v29, -1, -1);
      MEMORY[0x1D3893640](v28, -1, -1);
    }

    *(v0 + 200) = *(*(v0 + 56) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
    *(v0 + 208) = sub_1D1E67E0C();
    v20 = sub_1D1E67D4C();
    v22 = v34;
    *(v0 + 216) = v20;
    *(v0 + 224) = v34;
    v23 = sub_1D1DB6140;
  }

  return MEMORY[0x1EEE6DFA0](v23, v20, v22);
}

uint64_t sub_1D1DB5D9C(uint64_t a1)
{
  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  v13 = *(v1 + 112);
  v5 = *(v1 + 96);
  v4 = *(v1 + 104);
  v6 = sub_1D1E67E0C();
  *(v1 + 168) = v6;
  v7 = swift_task_alloc();
  *(v1 + 176) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v13;
  *(v7 + 56) = v3;
  v8 = swift_task_alloc();
  *(v1 + 184) = v8;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v8 = v1;
  v8[1] = sub_1D1DB5ED8;
  v10 = *(v1 + 16);
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v10, v6, v11, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1DCF7A8, v7, updated);
}

uint64_t sub_1D1DB5ED8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_1D1DB6094;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_1D1DB6030;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1DB6030()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1DCF7D0, v1, v2);
}

uint64_t sub_1D1DB6094()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1DCF794, v1, v2);
}

uint64_t sub_1D1DB6140(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[12];
  v4 = sub_1D1E67E0C();
  v1[29] = v4;
  v5 = swift_task_alloc();
  v1[30] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  v1[31] = v6;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v6 = v1;
  v6[1] = sub_1D1DB625C;
  v8 = v1[2];
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v8, v4, v9, 0xD000000000000010, 0x80000001D1EC9900, sub_1D1DA6A9C, v5, updated);
}

uint64_t sub_1D1DB625C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_1D1DB63F8;
  }

  else
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_1D1DB6394;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1DB6394()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1DCF7D0, v1, v2);
}

uint64_t sub_1D1DB63F8()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1DCF798, v1, v2);
}

uint64_t sub_1D1DB6484(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 264) = a4;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 64) = sub_1D1E67E1C();
  *(v7 + 72) = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  *(v7 + 80) = v9;
  *(v7 + 88) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1DB652C, v9, v8);
}

uint64_t sub_1D1DB652C()
{
  v37 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 32);
  v3 = [*(*(v0 + 56) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v4 = sub_1D1E67C1C();

  *(v0 + 96) = sub_1D1DC83E4(v4, v2);

  if (v1 == 1)
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EE0813C8);

    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 32);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v36[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EC66A0, v36);
      *(v9 + 12) = 2080;
      v11 = sub_1D1E66A7C();
      v12 = MEMORY[0x1D3891260](v8, v11);
      v14 = sub_1D1B1312C(v12, v13, v36);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1D16EC000, v6, v7, "%s Monitoring actionSets: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    v15 = *(v0 + 56);
    v17 = *(v0 + 40);
    v16 = *(v0 + 48);
    *(v0 + 104) = (*(v16 + 8))(v17, v16);
    *(v0 + 112) = v18;
    *(v0 + 120) = (*(v16 + 16))(v17, v16);
    *(v0 + 128) = v19;
    *(v0 + 136) = *(v15 + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
    *(v0 + 144) = sub_1D1E67E0C();
    v20 = sub_1D1E67D4C();
    v22 = v21;
    *(v0 + 152) = v20;
    *(v0 + 160) = v21;
    v23 = sub_1D1DB69D8;
  }

  else
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v24 = sub_1D1E6709C();
    __swift_project_value_buffer(v24, qword_1EE0813C8);

    v25 = sub_1D1E6707C();
    v26 = sub_1D1E6835C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 32);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EC66A0, v36);
      *(v28 + 12) = 2080;
      v30 = sub_1D1E66A7C();
      v31 = MEMORY[0x1D3891260](v27, v30);
      v33 = sub_1D1B1312C(v31, v32, v36);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_1D16EC000, v25, v26, "%s Fetching actionSets: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v29, -1, -1);
      MEMORY[0x1D3893640](v28, -1, -1);
    }

    *(v0 + 200) = *(*(v0 + 56) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager);
    *(v0 + 208) = sub_1D1E67E0C();
    v20 = sub_1D1E67D4C();
    v22 = v34;
    *(v0 + 216) = v20;
    *(v0 + 224) = v34;
    v23 = sub_1D1DB6D7C;
  }

  return MEMORY[0x1EEE6DFA0](v23, v20, v22);
}

uint64_t sub_1D1DB69D8(uint64_t a1)
{
  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  v13 = *(v1 + 112);
  v5 = *(v1 + 96);
  v4 = *(v1 + 104);
  v6 = sub_1D1E67E0C();
  *(v1 + 168) = v6;
  v7 = swift_task_alloc();
  *(v1 + 176) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v13;
  *(v7 + 56) = v3;
  v8 = swift_task_alloc();
  *(v1 + 184) = v8;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v8 = v1;
  v8[1] = sub_1D1DB6B14;
  v10 = *(v1 + 16);
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v10, v6, v11, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1DCF44C, v7, updated);
}

uint64_t sub_1D1DB6B14()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_1D1DB6C6C;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_1D1DB6030;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1DB6C6C()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1DB6D18, v1, v2);
}

uint64_t sub_1D1DB6D18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DB6D7C(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[12];
  v4 = sub_1D1E67E0C();
  v1[29] = v4;
  v5 = swift_task_alloc();
  v1[30] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  v6 = swift_task_alloc();
  v1[31] = v6;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v6 = v1;
  v6[1] = sub_1D1DB6E98;
  v8 = v1[2];
  v9 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v8, v4, v9, 0xD000000000000010, 0x80000001D1EC9900, sub_1D1DA82FC, v5, updated);
}

uint64_t sub_1D1DB6E98()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_1D1DB7034;
  }

  else
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_1D1DB6FD0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1DB6FD0()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1DA5900, v1, v2);
}

uint64_t sub_1D1DB7034()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1DB70C0, v1, v2);
}

uint64_t sub_1D1DB70C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DB7124@<X0>(id *a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X2>, unint64_t *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v32 = a6;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [*a1 *a3];
  sub_1D1741B10(0, a4, a5);
  v16 = sub_1D1E67C1C();

  v17 = v16;
  v39 = MEMORY[0x1E69E7CC0];
  if (v16 >> 62)
  {
LABEL_18:
    v28 = v17;
    v18 = sub_1D1E6873C();
    v17 = v28;
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_3:
      v19 = 0;
      v36 = v17 & 0xFFFFFFFFFFFFFF8;
      v37 = v17 & 0xC000000000000001;
      v31 = v17;
      v33 = v17 + 32;
      v34 = (v12 + 8);
      v35 = v18;
      while (1)
      {
        if (v37)
        {
          v20 = MEMORY[0x1D3891EF0](v19, v31);
          v21 = __OFADD__(v19++, 1);
          if (v21)
          {
LABEL_15:
            __break(1u);
LABEL_16:
            v27 = v39;
            goto LABEL_20;
          }
        }

        else
        {
          if (v19 >= *(v36 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v20 = *(v33 + 8 * v19);
          v21 = __OFADD__(v19++, 1);
          if (v21)
          {
            goto LABEL_15;
          }
        }

        v38 = v20;
        v22 = [v20 uniqueIdentifier];
        sub_1D1E66A5C();

        v23 = 0;
        v24 = *(a2 + 16);
        do
        {
          if (v24 == v23)
          {
            (*v34)(v14, v11);

            goto LABEL_5;
          }

          v25 = v23 + 1;
          sub_1D1DC9C14(&qword_1EE07D170, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v26 = sub_1D1E6775C();
          v23 = v25;
        }

        while ((v26 & 1) == 0);
        (*v34)(v14, v11);
        sub_1D1E6896C();
        sub_1D1E689AC();
        sub_1D1E689BC();
        v17 = sub_1D1E6897C();
LABEL_5:
        if (v19 == v35)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_20:

  *v32 = v27;
  return result;
}

uint64_t WidgetSnapshotModerator.fetchMatterDevices<A>(home:configuration:isMonitoring:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = v7;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 376) = a4;
  *(v8 + 96) = a2;
  *(v8 + 104) = a3;
  *(v8 + 88) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  *(v8 + 144) = swift_task_alloc();
  v10 = sub_1D1E66FDC();
  *(v8 + 152) = v10;
  *(v8 + 160) = *(v10 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = *(a6 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  v11 = sub_1D1E66A7C();
  *(v8 + 224) = v11;
  *(v8 + 232) = *(v11 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v12 = type metadata accessor for MatterStateSnapshot(0);
  *(v8 + 256) = v12;
  *(v8 + 264) = *(v12 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DB7694, v7, 0);
}

uint64_t sub_1D1DB7694()
{
  v168 = v0;
  v1 = *(v0 + 136);
  v2 = [*(v0 + 96) uniqueIdentifier];
  sub_1D1E66A5C();

  swift_beginAccess();
  v3 = *(v1 + 120);
  if (*(v3 + 16) && (v4 = sub_1D1742188(), (v5 & 1) != 0))
  {
    v7 = *(v0 + 272);
    v6 = *(v0 + 280);
    v8 = *(v0 + 248);
    v9 = *(v0 + 224);
    v10 = *(v0 + 232);
    v11 = *(v0 + 112);
    sub_1D1DC9148(*(v3 + 56) + *(*(v0 + 264) + 72) * v4, v7, type metadata accessor for MatterStateSnapshot);
    sub_1D1DCF39C(v7, v6, type metadata accessor for MatterStateSnapshot);
    swift_endAccess();
    v12 = *(v10 + 8);
    *(v0 + 288) = v12;
    *(v0 + 296) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v158 = v12;
    v12(v8, v9);
    v13 = swift_task_alloc();
    *(v13 + 16) = v6;
    v14 = sub_1D1788858(sub_1D1BFA988, v13, v11);

    v15 = v14[2];

    if (v15)
    {
      if (*(v0 + 376) == 1)
      {
        v16 = *(v0 + 112);
        v17 = *(v16 + 16);
        if (v17)
        {
          v18 = *(v0 + 136);
          v19 = (v16 + 32);
          v20 = MEMORY[0x1E69E7CC0];
          do
          {
            v22 = *v19++;
            v21 = v22;
            swift_beginAccess();
            v23 = *(v18 + 152);
            if (*(v23 + 16) && (v24 = sub_1D17420B0(v21), (v25 & 1) != 0))
            {
              v26 = *(v23 + 56) + 40 * v24;
              v28 = *v26;
              v27 = *(v26 + 8);
              v162 = *(v26 + 16);
              v29 = *(v26 + 32);
              v30 = v0;
              swift_endAccess();

              swift_unknownObjectRetain();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = sub_1D177E7E0(0, *(v20 + 2) + 1, 1, v20);
              }

              v32 = *(v20 + 2);
              v31 = *(v20 + 3);
              if (v32 >= v31 >> 1)
              {
                v20 = sub_1D177E7E0((v31 > 1), v32 + 1, 1, v20);
              }

              *(v20 + 2) = v32 + 1;
              v33 = &v20[40 * v32];
              *(v33 + 4) = v28;
              *(v33 + 5) = v27;
              *(v33 + 3) = v162;
              *(v33 + 8) = v29;
              v0 = v30;
            }

            else
            {
              swift_endAccess();
            }

            --v17;
          }

          while (v17);
        }

        else
        {
          v20 = MEMORY[0x1E69E7CC0];
        }

        *(v0 + 304) = v20;
        if (qword_1EE07A098 != -1)
        {
          swift_once();
        }

        v115 = *(v0 + 216);
        v116 = *(v0 + 184);
        v117 = *(v0 + 120);
        v119 = *(v0 + 96);
        v118 = *(v0 + 104);
        v120 = sub_1D1E6709C();
        *(v0 + 312) = __swift_project_value_buffer(v120, qword_1EE0813C8);
        v121 = *(v116 + 16);
        *(v0 + 320) = v121;
        *(v0 + 328) = (v116 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v121(v115, v118, v117);
        v122 = v119;

        v123 = sub_1D1E6707C();
        v124 = sub_1D1E6835C();

        if (os_log_type_enabled(v123, v124))
        {
          v125 = *(v0 + 240);
          v165 = v124;
          v126 = *(v0 + 216);
          v127 = *(v0 + 184);
          v129 = *(v0 + 120);
          v128 = *(v0 + 128);
          v150 = *(v0 + 224);
          v154 = *(v0 + 112);
          v149 = *(v0 + 96);
          v130 = swift_slowAlloc();
          v157 = swift_slowAlloc();
          v166 = v157;
          *v130 = 136315906;
          *(v130 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v166);
          *(v130 + 12) = 2080;
          v131 = (*(v128 + 8))(v129, v128);
          v133 = v132;
          v134 = *(v127 + 8);
          v134(v126, v129);
          v135 = sub_1D1B1312C(v131, v133, &v166);

          *(v130 + 14) = v135;
          *(v130 + 22) = 2080;
          v136 = [v149 uniqueIdentifier];
          sub_1D1E66A5C();

          sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v137 = sub_1D1E68FAC();
          v139 = v138;
          v158(v125, v150);
          v140 = sub_1D1B1312C(v137, v139, &v166);

          *(v130 + 24) = v140;
          *(v130 + 32) = 2080;
          v141 = MEMORY[0x1D3891260](v154, MEMORY[0x1E69E76D8]);
          v143 = sub_1D1B1312C(v141, v142, &v166);

          *(v130 + 34) = v143;
          _os_log_impl(&dword_1D16EC000, v123, v165, "%s W:{%s} HM:{%s} Sending Native Matter Monitor command [%s]", v130, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v157, -1, -1);
          MEMORY[0x1D3893640](v130, -1, -1);
        }

        else
        {
          v144 = *(v0 + 216);
          v145 = *(v0 + 184);
          v146 = *(v0 + 120);

          v134 = *(v145 + 8);
          v134(v144, v146);
        }

        *(v0 + 336) = v134;
        if (qword_1EC642488 != -1)
        {
          swift_once();
        }

        v147 = sub_1D1E6701C();
        *(v0 + 344) = __swift_project_value_buffer(v147, qword_1EC6BE2B8);
        sub_1D1E66FCC();

        return MEMORY[0x1EEE6DFA0](sub_1D1DB8620, 0, 0);
      }

      v93 = *(v0 + 280);
      v95 = *(v0 + 256);
      v94 = *(v0 + 264);
      v148 = *(v0 + 240);
      v96 = *(v0 + 144);
      v161 = v93;
      v97 = *(v0 + 96);
      v153 = v95;
      v156 = *(v0 + 88);

      v99 = sub_1D1785204(v98);

      v100 = v97;

      v102 = sub_1D1785204(v101);

      sub_1D1DC9148(v93, v96, type metadata accessor for MatterStateSnapshot);
      v103 = *(v94 + 56);
      v103(v96, 0, 1, v95);
      v104 = sub_1D1A2B978(v96, v99, v97, 2, v100, v102, 1);

      v105 = [v100 matterControllerID];
      v106 = sub_1D1E6781C();
      v108 = v107;

      v109 = [v100 uniqueIdentifier];
      sub_1D1E66A5C();

      v166 = v102;
      v167 = 1;
      sub_1D1A28CB8(v106, v108, v148, v104, &v166, v156);
      sub_1D1741A30(v96, &unk_1EC64F390, &qword_1D1E92B10);
      v110 = [v100 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1DC9148(v156, v96, type metadata accessor for MatterStateSnapshot);
      v103(v96, 0, 1, v153);
      swift_beginAccess();
      sub_1D1B0E5E8(v96, v148);
      swift_endAccess();
      sub_1D1DC91B0(v161, type metadata accessor for MatterStateSnapshot);
    }

    else
    {
      if (qword_1EE07A098 != -1)
      {
        swift_once();
      }

      v69 = *(v0 + 200);
      v70 = *(v0 + 184);
      v71 = *(v0 + 120);
      v73 = *(v0 + 96);
      v72 = *(v0 + 104);
      v74 = sub_1D1E6709C();
      __swift_project_value_buffer(v74, qword_1EE0813C8);
      (*(v70 + 16))(v69, v72, v71);
      v75 = v73;
      v76 = sub_1D1E6707C();
      v77 = sub_1D1E6833C();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = *(v0 + 240);
        v79 = *(v0 + 200);
        v80 = *(v0 + 184);
        v81 = *(v0 + 120);
        v82 = *(v0 + 128);
        v152 = *(v0 + 96);
        v155 = *(v0 + 224);
        v83 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v166 = v164;
        *v83 = 136315650;
        *(v83 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v166);
        *(v83 + 12) = 2080;
        v84 = (*(v82 + 8))(v81, v82);
        v86 = v85;
        (*(v80 + 8))(v79, v81);
        v87 = sub_1D1B1312C(v84, v86, &v166);

        *(v83 + 14) = v87;
        *(v83 + 22) = 2080;
        v88 = [v152 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v89 = sub_1D1E68FAC();
        v91 = v90;
        v158(v78, v155);
        v92 = sub_1D1B1312C(v89, v91, &v166);

        *(v83 + 24) = v92;
        _os_log_impl(&dword_1D16EC000, v76, v77, "%s W:{%s} HM:{%s} 0 matching devices", v83, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v164, -1, -1);
        MEMORY[0x1D3893640](v83, -1, -1);
      }

      else
      {
        v111 = *(v0 + 200);
        v112 = *(v0 + 184);
        v113 = *(v0 + 120);

        (*(v112 + 8))(v111, v113);
      }

      v114 = *(v0 + 280);
      sub_1D1DC9148(v114, *(v0 + 88), type metadata accessor for MatterStateSnapshot);
      sub_1D1DC91B0(v114, type metadata accessor for MatterStateSnapshot);
    }
  }

  else
  {
    v34 = *(v0 + 248);
    v35 = *(v0 + 224);
    v36 = *(v0 + 232);
    swift_endAccess();
    v37 = *(v36 + 8);
    v37(v34, v35);
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 184);
    v38 = *(v0 + 192);
    v40 = *(v0 + 120);
    v42 = *(v0 + 96);
    v41 = *(v0 + 104);
    v43 = sub_1D1E6709C();
    __swift_project_value_buffer(v43, qword_1EE0813C8);
    (*(v39 + 16))(v38, v41, v40);
    v44 = v42;
    v45 = sub_1D1E6707C();
    v46 = sub_1D1E6833C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 240);
      v159 = *(v0 + 224);
      v160 = v37;
      v49 = *(v0 + 184);
      v48 = *(v0 + 192);
      v50 = *(v0 + 120);
      v51 = *(v0 + 128);
      v151 = *(v0 + 96);
      v52 = swift_slowAlloc();
      v163 = swift_slowAlloc();
      v166 = v163;
      *v52 = 136315650;
      *(v52 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v166);
      *(v52 + 12) = 2080;
      v53 = (*(v51 + 8))(v50, v51);
      v55 = v54;
      (*(v49 + 8))(v48, v50);
      v56 = sub_1D1B1312C(v53, v55, &v166);

      *(v52 + 14) = v56;
      *(v52 + 22) = 2080;
      v57 = [v151 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v58 = sub_1D1E68FAC();
      v60 = v59;
      v160(v47, v159);
      v61 = sub_1D1B1312C(v58, v60, &v166);

      *(v52 + 24) = v61;
      _os_log_impl(&dword_1D16EC000, v45, v46, "%s W:{%s} HM:{%s} failed to find MatterStateSnapshot", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v163, -1, -1);
      MEMORY[0x1D3893640](v52, -1, -1);
    }

    else
    {
      v63 = *(v0 + 184);
      v62 = *(v0 + 192);
      v64 = *(v0 + 120);

      (*(v63 + 8))(v62, v64);
    }

    if (qword_1EE07D498 != -1)
    {
      swift_once();
    }

    v65 = *(v0 + 88);
    v66 = __swift_project_value_buffer(*(v0 + 256), qword_1EE07D4A0);
    sub_1D1DC9148(v66, v65, type metadata accessor for MatterStateSnapshot);
  }

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_1D1DB8620(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v5, "Widget.Monitor.Matter", "", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v7 = v1[21];
  v6 = v1[22];
  v8 = v1[19];
  v9 = v1[20];

  (*(v9 + 16))(v7, v6, v8);
  sub_1D1E6705C();
  swift_allocObject();
  v1[44] = sub_1D1E6704C();
  v10 = swift_task_alloc();
  v1[45] = v10;
  *v10 = v1;
  v10[1] = sub_1D1DB8798;
  v11 = v1[38];
  v13 = v1[16];
  v12 = v1[17];
  v14 = v1[15];
  v15 = v1[13];

  return sub_1D1DB9230(v10, v12, v11, v15, v14, v13);
}

uint64_t sub_1D1DB8798()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_1D1DB8F20;
  }

  else
  {
    v2 = sub_1D1DB88AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1DB88AC()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  sub_1D1760838();

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1DB8970, v4, 0);
}

uint64_t sub_1D1DB8970()
{
  v58 = v0;
  v1 = *(v0 + 96);
  (*(v0 + 320))(*(v0 + 208), *(v0 + 104), *(v0 + 120));
  v2 = v1;

  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 336);
  if (v5)
  {
    v49 = *(v0 + 288);
    v7 = *(v0 + 240);
    v55 = v4;
    v8 = *(v0 + 208);
    v10 = *(v0 + 120);
    v9 = *(v0 + 128);
    v52 = *(v0 + 112);
    v46 = *(v0 + 96);
    v48 = *(v0 + 224);
    v11 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v56 = v53;
    *v11 = 136315906;
    *(v11 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC6640, &v56);
    *(v11 + 12) = 2080;
    v12 = (*(v9 + 8))(v10, v9);
    v14 = v13;
    v6(v8, v10);
    v15 = sub_1D1B1312C(v12, v14, &v56);

    *(v11 + 14) = v15;
    *(v11 + 22) = 2080;
    v16 = [v46 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v17 = sub_1D1E68FAC();
    v19 = v18;
    v49(v7, v48);
    v20 = sub_1D1B1312C(v17, v19, &v56);

    *(v11 + 24) = v20;
    *(v11 + 32) = 2080;
    v21 = MEMORY[0x1D3891260](v52, MEMORY[0x1E69E76D8]);
    v23 = sub_1D1B1312C(v21, v22, &v56);

    *(v11 + 34) = v23;
    _os_log_impl(&dword_1D16EC000, v3, v55, "%s W:{%s} HM:{%s} Native Matter Monitor command succeeded [%s]", v11, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v53, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  else
  {
    v24 = *(v0 + 208);
    v25 = *(v0 + 120);

    v6(v24, v25);
  }

  v26 = *(v0 + 280);
  v28 = *(v0 + 256);
  v27 = *(v0 + 264);
  v47 = *(v0 + 240);
  v29 = *(v0 + 144);
  v54 = v26;
  v30 = *(v0 + 96);
  v50 = v28;
  v51 = *(v0 + 88);

  v32 = sub_1D1785204(v31);

  v33 = v30;

  v35 = sub_1D1785204(v34);

  sub_1D1DC9148(v26, v29, type metadata accessor for MatterStateSnapshot);
  v36 = *(v27 + 56);
  v36(v29, 0, 1, v28);
  v45 = sub_1D1A2B978(v29, v32, v30, 2, v33, v35, 1);

  v37 = [v33 matterControllerID];
  v38 = sub_1D1E6781C();
  v40 = v39;

  v41 = [v33 uniqueIdentifier];
  sub_1D1E66A5C();

  v56 = v35;
  v57 = 1;
  sub_1D1A28CB8(v38, v40, v47, v45, &v56, v51);
  sub_1D1741A30(v29, &unk_1EC64F390, &qword_1D1E92B10);
  v42 = [v33 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1DC9148(v51, v29, type metadata accessor for MatterStateSnapshot);
  v36(v29, 0, 1, v50);
  swift_beginAccess();
  sub_1D1B0E5E8(v29, v47);
  swift_endAccess();
  sub_1D1DC91B0(v54, type metadata accessor for MatterStateSnapshot);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_1D1DB8F20()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  sub_1D1760838();

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1DB8FE4, v4, 0);
}

uint64_t sub_1D1DB8FE4(__n128 a1)
{
  sub_1D1DC91B0(*(v1 + 280), type metadata accessor for MatterStateSnapshot);

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1D1DB90F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + *(type metadata accessor for MatterStateSnapshot(0) + 24));
  if (*(v5 + 16) && (v6 = sub_1D17420B0(*a1), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for StaticMatterDevice(0);
    v11 = *(v10 - 8);
    sub_1D1DC9148(v9 + *(v11 + 72) * v8, a3, type metadata accessor for StaticMatterDevice);
    return (*(v11 + 56))(a3, 0, 1, v10);
  }

  else
  {
    v13 = type metadata accessor for StaticMatterDevice(0);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }
}

uint64_t sub_1D1DB9230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1DB9258, 0, 0);
}

uint64_t sub_1D1DB9258()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = (*(v1 + 8))(v2, v1);
  v5 = v4;
  v0[7] = v4;
  v6 = (*(v1 + 16))(v2, v1);
  v8 = v7;
  v0[8] = v7;
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_1D1DB9378;
  v10 = v0[3];

  return WidgetManager.monitorState(for:widgetIdentifier:kind:)(v10, v3, v5, v6, v8);
}

uint64_t sub_1D1DB9378()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1DB94C0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D1DB94C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DB952C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = type metadata accessor for StateSnapshot.UpdateType(0);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = sub_1D1E66FDC();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v8 = type metadata accessor for StateSnapshot(0);
  v5[28] = v8;
  v5[29] = *(v8 - 8);
  v5[30] = swift_task_alloc();
  type metadata accessor for StaticHome(0);
  v5[31] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DB9808, v4, 0);
}

uint64_t sub_1D1DB9808()
{
  v31 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  v7 = *(v0 + 64);
  sub_1D1741C08(v7, v2, &qword_1EC642590, qword_1D1E71260);
  v28 = *(v7 + *(type metadata accessor for WidgetRefresh(0, v6, v5, v8) + 40));
  *(v0 + 52) = v28;
  sub_1D1741C08(v2, v1, &qword_1EC642590, qword_1D1E71260);
  v9 = (*(v4 + 48))(v1, 1, v3);
  v10 = *(v0 + 272);
  if (v9 == 1)
  {
    sub_1D1741A30(*(v0 + 272), &qword_1EC642590, qword_1D1E71260);
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  else
  {
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    v12 = sub_1D1E66A1C();
    v11 = v15;
    (*(v14 + 8))(v10, v13);
  }

  *(v0 + 288) = v12;
  *(v0 + 296) = v11;
  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v16 = sub_1D1E6709C();
  *(v0 + 304) = __swift_project_value_buffer(v16, qword_1EE0813C8);

  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6835C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1D1B1312C(v12, v11, &v29);
    *(v19 + 12) = 2080;
    v30 = v28;
    WidgetRefreshOptions.description.getter();
    v23 = sub_1D1B1312C(v21, v22, &v29);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1D16EC000, v17, v18, "updateMinimalState(homeID:filtered:) HM:{%s} F:{%s}", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v20, -1, -1);
    MEMORY[0x1D3893640](v19, -1, -1);
  }

  v24 = swift_task_alloc();
  *(v0 + 312) = v24;
  *v24 = v0;
  v24[1] = sub_1D1DB9B00;
  v25 = *(v0 + 280);
  v26 = *(v0 + 248);

  return sub_1D1DB11A0(v26, v25, 1);
}

uint64_t sub_1D1DB9B00()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);

    v4 = sub_1D1DBBA50;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 88);
    v4 = sub_1D1DB9C28;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1D1DB9C28()
{
  v25 = v0;
  v1 = v0[31];
  v2 = *(v0[11] + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager);
  v0[41] = v2;
  v3 = [v2 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v4 = sub_1D1E67C1C();

  v5 = swift_task_alloc();
  *(v5 + 16) = v1;
  v6 = sub_1D174A6C4(sub_1D1BFA878, v5, v4);
  v0[42] = v6;

  sub_1D1DC91B0(v1, type metadata accessor for StaticHome);
  if (v6)
  {

    if (qword_1EC642488 != -1)
    {
      swift_once();
    }

    v7 = sub_1D1E6701C();
    v0[43] = __swift_project_value_buffer(v7, qword_1EC6BE2B8);
    v8 = v6;

    sub_1D1E66FCC();

    return MEMORY[0x1EEE6DFA0](sub_1D1DBA074, 0, 0);
  }

  else
  {

    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6833C();

    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[37];
    if (v11)
    {
      v13 = v0[36];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      v16 = sub_1D1B1312C(v13, v12, &v24);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1D16EC000, v9, v10, "updateMinimalState(homeID:filtered:) HM:{%s} failed to find home", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    else
    {
    }

    v17 = v0[35];
    v18 = v0[32];
    v19 = v0[33];
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v21 = v20;
    sub_1D1741C08(v17, v20, &qword_1EC642590, qword_1D1E71260);
    (*(v19 + 56))(v21, 0, 4, v18);
    swift_willThrow();
    sub_1D1741A30(v0[35], &qword_1EC642590, qword_1D1E71260);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1D1DBA074(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v5, "Widget.FirstSnapshot", "", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v7 = v1[41];
  v6 = v1[42];
  v9 = v1[26];
  v8 = v1[27];
  v11 = v1[21];
  v10 = v1[22];
  v12 = v1[20];
  v18 = v1[11];

  v13 = *(v10 + 16);
  v1[44] = v13;
  v1[45] = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v9, v8, v11);
  v1[46] = sub_1D1E6705C();
  swift_allocObject();
  v1[47] = sub_1D1E6704C();
  *v12 = v6;
  swift_storeEnumTagMultiPayload();
  v14 = v6;
  v15 = v7;
  v16 = [v14 uniqueIdentifier];
  sub_1D1E66A5C();

  return MEMORY[0x1EEE6DFA0](sub_1D1DBA22C, v18, 0);
}

uint64_t sub_1D1DBA22C()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16) && (v3 = sub_1D1742188(), (v4 & 1) != 0))
  {
    sub_1D1DC9148(*(v2 + 56) + *(v0[29] + 72) * v3, v0[13], type metadata accessor for StateSnapshot);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v0[28];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[15];
  v10 = v0[13];
  v11 = *(v0[29] + 56);
  v0[48] = v11;
  v11(v10, v5, 1, v6);
  swift_endAccess();
  v12 = *(v9 + 8);
  v0[49] = v12;
  v0[50] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v7, v8);

  return MEMORY[0x1EEE6DFA0](sub_1D1DBA350, 0, 0);
}

uint64_t sub_1D1DBA350()
{
  if ((*(v0 + 52) & 0x61) != 0)
  {
    if (qword_1EE07CD90 != -1)
    {
      swift_once();
    }

    v1 = qword_1EE07CD98;
  }

  else
  {
    v1 = sub_1D179B6E8(&unk_1F4D5FF60);
    swift_arrayDestroy();
  }

  v2 = *(v0 + 328);
  v3 = *(v0 + 240);
  v4 = *(v0 + 176);
  v11 = *(v0 + 168);
  v12 = *(v0 + 216);
  v5 = *(v0 + 160);
  v6 = *(v0 + 104);
  v10 = *(v0 + 88);
  v7 = *(v0 + 336);
  StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(v5, v2, v7, v6, v1, v3);
  sub_1D1760838();

  v8 = *(v4 + 8);
  *(v0 + 408) = v8;
  *(v0 + 416) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v12, v11);

  return MEMORY[0x1EEE6DFA0](sub_1D1DBA4F0, v10, 0);
}

uint64_t sub_1D1DBA4F0()
{
  v58 = v0;
  v1 = *(v0 + 336);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 392);
    v5 = *(v0 + 336);
    v6 = *(v0 + 128);
    v7 = *(v0 + 112);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v57 = v9;
    *v8 = 136315138;
    v10 = [v5 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1D1E68FAC();
    v13 = v12;
    v4(v6, v7);
    v14 = sub_1D1B1312C(v11, v13, &v57);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1D16EC000, v2, v3, "updateMinimalState(homeID:filtered:) HM:{%s} generated snapshot", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v15 = *(v0 + 52);
  if ((v15 & 0x1000001) != 0)
  {
    v16 = *(v0 + 336);
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6835C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 392);
      v20 = *(v0 + 336);
      v21 = *(v0 + 128);
      v22 = *(v0 + 112);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v57 = v24;
      *v23 = 136315138;
      v25 = [v20 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v26 = sub_1D1E68FAC();
      v28 = v27;
      v19(v21, v22);
      v29 = sub_1D1B1312C(v26, v28, &v57);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_1D16EC000, v17, v18, "updateMinimalState(homeID:filtered:) HM:{%s} includes Matter update", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    v30 = *(v0 + 336);

    sub_1D1E66FCC();

    return MEMORY[0x1EEE6DFA0](sub_1D1DBAC18, 0, 0);
  }

  else if ((v15 & 0x1000) != 0 && (v31 = sub_1D1DB0D74(*(v0 + 336)), (*(v0 + 440) = v31) != 0))
  {
    v33 = v31;
    v34 = v32;
    v35 = *(v0 + 336);
    v36 = sub_1D1E6707C();
    v37 = sub_1D1E6835C();

    if (os_log_type_enabled(v36, v37))
    {
      v56 = *(v0 + 392);
      v38 = *(v0 + 336);
      v39 = *(v0 + 128);
      v40 = *(v0 + 112);
      v41 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v57 = v55;
      *v41 = 136315138;
      v42 = [v38 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v43 = sub_1D1E68FAC();
      v45 = v44;
      v56(v39, v40);
      v46 = sub_1D1B1312C(v43, v45, &v57);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1D16EC000, v36, v37, "updateMinimalState(homeID:filtered:) HM:{%s} includes predictions", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x1D3893640](v55, -1, -1);
      MEMORY[0x1D3893640](v41, -1, -1);
    }

    swift_unknownObjectRetain();
    sub_1D1E66FCC();
    v47 = swift_task_alloc();
    *(v0 + 448) = v47;
    *v47 = v0;
    v47[1] = sub_1D1DBB36C;
    v48 = *(v0 + 344);
    v49 = *(v0 + 192);

    return sub_1D17601BC("Widget.FetchPredictions", 23, 2, v49, v48, v33, v34);
  }

  else
  {
    v50 = *(v0 + 336);
    v51 = *(v0 + 240);
    v52 = *(v0 + 56);
    sub_1D1741A30(*(v0 + 280), &qword_1EC642590, qword_1D1E71260);

    sub_1D1DC9148(v51, v52, type metadata accessor for StateSnapshot);
    sub_1D1DC91B0(*(v0 + 240), type metadata accessor for StateSnapshot);

    v53 = *(v0 + 8);

    return v53();
  }
}

uint64_t sub_1D1DBAC18(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v5, "Widget.BuildMatterDeviceCache", "", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = *(v1 + 352);
  v7 = *(v1 + 336);
  v9 = *(v1 + 200);
  v8 = *(v1 + 208);
  v10 = *(v1 + 168);

  v6(v8, v9, v10);
  swift_allocObject();
  *(v1 + 424) = sub_1D1E6704C();
  *(v1 + 40) = sub_1D179C134(&unk_1F4D600A8);
  *(v1 + 48) = 2;
  v11 = swift_task_alloc();
  *(v1 + 432) = v11;
  *v11 = v1;
  v11[1] = sub_1D1DBADAC;

  return sub_1D1DB3224(v7, (v1 + 40));
}

uint64_t sub_1D1DBADAC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1DBAEC4, 0, 0);
}

uint64_t sub_1D1DBAEC4()
{
  v1 = v0[51];
  v2 = v0[42];
  v3 = v0[25];
  v4 = v0[21];
  v5 = v0[11];
  sub_1D1760838();

  v1(v3, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D1DBAF8C, v5, 0);
}

uint64_t sub_1D1DBAF8C()
{
  v28 = v0;
  if ((*(v0 + 52) & 0x1001) != 0 && (v1 = sub_1D1DB0D74(*(v0 + 336)), (*(v0 + 440) = v1) != 0))
  {
    v3 = v1;
    v4 = v2;
    v5 = *(v0 + 336);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();

    if (os_log_type_enabled(v6, v7))
    {
      v26 = *(v0 + 392);
      v8 = *(v0 + 336);
      v9 = *(v0 + 128);
      v10 = *(v0 + 112);
      v11 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v11 = 136315138;
      v12 = [v8 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v13 = sub_1D1E68FAC();
      v15 = v14;
      v26(v9, v10);
      v16 = sub_1D1B1312C(v13, v15, &v27);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1D16EC000, v6, v7, "updateMinimalState(homeID:filtered:) HM:{%s} includes predictions", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D3893640](v25, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    swift_unknownObjectRetain();
    sub_1D1E66FCC();
    v17 = swift_task_alloc();
    *(v0 + 448) = v17;
    *v17 = v0;
    v17[1] = sub_1D1DBB36C;
    v18 = *(v0 + 344);
    v19 = *(v0 + 192);

    return sub_1D17601BC("Widget.FetchPredictions", 23, 2, v19, v18, v3, v4);
  }

  else
  {
    v21 = *(v0 + 336);
    v22 = *(v0 + 240);
    v23 = *(v0 + 56);
    sub_1D1741A30(*(v0 + 280), &qword_1EC642590, qword_1D1E71260);

    sub_1D1DC9148(v22, v23, type metadata accessor for StateSnapshot);
    sub_1D1DC91B0(*(v0 + 240), type metadata accessor for StateSnapshot);

    v24 = *(v0 + 8);

    return v24();
  }
}

void sub_1D1DBB36C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 456) = a1;

  if (v1)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = v3[51];
    v5 = v3[24];
    v6 = v3[21];
    v7 = v3[11];
    swift_unknownObjectRelease();
    v4(v5, v6);

    MEMORY[0x1EEE6DFA0](sub_1D1DBB4EC, v7, 0);
  }
}

uint64_t sub_1D1DBB4EC()
{
  v48 = v0;
  v1 = *(v0 + 336);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 392);
    v5 = *(v0 + 336);
    v6 = *(v0 + 128);
    v7 = *(v0 + 112);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v47 = v9;
    *v8 = 136315138;
    v10 = [v5 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1D1E68FAC();
    v13 = v12;
    v4(v6, v7);
    v14 = sub_1D1B1312C(v11, v13, &v47);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1D16EC000, v2, v3, "updateMinimalState(homeID:filtered:) HM:{%s} predictions fetched", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  sub_1D1E66FCC();
  v15 = sub_1D1E66FFC();
  v16 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v15, v16, v18, "Widget.MergedPredictionsSnapshot", "", v17, 2u);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  v19 = *(v0 + 352);
  v20 = v15;
  v21 = *(v0 + 52);
  v40 = *(v0 + 456);
  v41 = *(v0 + 240);
  v44 = *(v0 + 224);
  v46 = *(v0 + 384);
  v22 = *(v0 + 208);
  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = *(v0 + 152);
  v26 = *(v0 + 96);

  v19(v22, v23, v24);
  swift_allocObject();
  sub_1D1E6704C();
  *v25 = v40;
  swift_storeEnumTagMultiPayload();
  sub_1D1DC9148(v41, v26, type metadata accessor for StateSnapshot);
  v46(v26, 0, 1, v44);
  v27 = *(v0 + 328);
  if ((v21 & 0x61) != 0)
  {
    v28 = qword_1EE07CD90;
    v29 = v27;

    if (v28 != -1)
    {
      swift_once();
    }

    v30 = qword_1EE07CD98;
  }

  else
  {
    v31 = v27;

    v30 = sub_1D179B6E8(&unk_1F4D65098);
    swift_arrayDestroy();
  }

  v43 = *(v0 + 408);
  v32 = *(v0 + 328);
  v45 = *(v0 + 280);
  v42 = *(v0 + 184);
  v33 = *(v0 + 168);
  v34 = *(v0 + 152);
  v35 = *(v0 + 96);
  v36 = *(v0 + 56);
  v37 = *(v0 + 336);
  StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(v34, v32, v37, v35, v30, v36);
  sub_1D1760838();

  swift_unknownObjectRelease();

  v43(v42, v33);
  sub_1D1741A30(v45, &qword_1EC642590, qword_1D1E71260);
  sub_1D1DC91B0(*(v0 + 240), type metadata accessor for StateSnapshot);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1D1DBBA50()
{
  sub_1D1741A30(*(v0 + 280), &qword_1EC642590, qword_1D1E71260);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DBBB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v5[12] = updated;
  v5[13] = *(updated - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  sub_1D1E67E1C();
  v5[16] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();
  v5[17] = v8;
  v5[18] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D1DBBC98, v8, v7);
}

uint64_t sub_1D1DBBC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 64);
  v6 = type metadata accessor for WidgetDetailUpdate(0, *(v4 + 72), *(v4 + 80), a4);
  *(v4 + 152) = v6;
  v7 = v6[12];
  *(v4 + 192) = v7;
  v8 = *(v5 + v6[9]);
  v9 = *(v5 + v6[14]);
  *(v4 + 196) = v9;
  v10 = swift_task_alloc();
  *(v4 + 160) = v10;
  *v10 = v4;
  v10[1] = sub_1D1DBBD80;
  v11 = *(v4 + 120);
  v12 = *(v4 + 80);
  v13 = *(v4 + 72);

  return sub_1D1DB581C(v11, v5 + v7, v8, v9, v13, v12);
}

uint64_t sub_1D1DBBD80()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1D1DBC2B4;
  }

  else
  {
    v5 = sub_1D1DBBEBC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D1DBBEBC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 64);
  v3 = *(v2 + *(*(v0 + 152) + 40));
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *v4 = v0;
  v4[1] = sub_1D1DBBF80;
  v5 = *(v0 + 196);
  v6 = *(v0 + 112);
  v7 = *(v0 + 80);
  v8 = *(v0 + 72);

  return sub_1D1DB6484(v6, v2 + v1, v3, v5, v8, v7);
}

uint64_t sub_1D1DBBF80()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1D1DBC328;
  }

  else
  {
    v5 = sub_1D1DBC0BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D1DBC0BC()
{
  v1 = v0[15];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[7];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643160, &qword_1D1E71F50);
  v5 = *(v3 + 72);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D1E6F900;
  v8 = (v7 + v6);
  *v8 = v4;
  swift_storeEnumTagMultiPayload();
  sub_1D1DC9148(v1, v8 + v5, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1DC9148(v2, v8 + 2 * v5, type metadata accessor for StateSnapshot.UpdateType);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73FA0;
  *(inited + 32) = v4;
  v10 = v4;
  v11 = sub_1D1ABB498(v7, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_1D1DC91B0(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1DC91B0(v1, type metadata accessor for StateSnapshot.UpdateType);

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_1D1DBC2B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DBC328()
{
  v1 = *(v0 + 120);

  sub_1D1DC91B0(v1, type metadata accessor for StateSnapshot.UpdateType);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1DBC3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v5[25] = swift_task_alloc();
  v9 = sub_1D1E66FDC();
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = type metadata accessor for WidgetRefresh(0, a3, a4, v10);
  v5[31] = swift_task_alloc();
  v11 = type metadata accessor for StateSnapshot(0);
  v5[32] = v11;
  v5[33] = *(v11 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v12 = sub_1D1E66A7C();
  v5[37] = v12;
  v5[38] = *(v12 - 8);
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  type metadata accessor for StaticHome(0);
  v13 = swift_task_alloc();
  v5[45] = v13;
  v14 = swift_task_alloc();
  v5[46] = v14;
  *v14 = v5;
  v14[1] = sub_1D1DBC6BC;

  return sub_1D1DB11A0(v13, a2, 1);
}

uint64_t sub_1D1DBC6BC()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 192);
  if (v0)
  {
    v4 = sub_1D1DBE380;
  }

  else
  {
    v4 = sub_1D1DBC7E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1DBC7E8()
{
  v75 = v0;
  v1 = *(v0 + 360);
  v2 = [*(*(v0 + 192) + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager) homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v3 = sub_1D1E67C1C();

  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  v5 = sub_1D174A6C4(sub_1D1BFAA84, v4, v3);
  *(v0 + 384) = v5;

  sub_1D1DC91B0(v1, type metadata accessor for StaticHome);
  if (v5)
  {
    v6 = *(v0 + 192);
    v7 = [v5 uniqueIdentifier];
    sub_1D1E66A5C();

    swift_beginAccess();
    v8 = *(v6 + 112);
    if (*(v8 + 16) && (v9 = sub_1D1742188(), (v10 & 1) != 0))
    {
      sub_1D1DC9148(*(v8 + 56) + *(*(v0 + 264) + 72) * v9, *(v0 + 352), type metadata accessor for StateSnapshot);
      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = *(v0 + 352);
    v13 = *(v0 + 328);
    v14 = *(v0 + 296);
    v15 = *(v0 + 304);
    v16 = *(v0 + 256);
    v17 = *(v0 + 264);
    v18 = *(v17 + 56);
    *(v0 + 392) = v18;
    v18(v12, v11, 1, v16);
    swift_endAccess();
    v19 = *(v15 + 8);
    *(v0 + 400) = v19;
    *(v0 + 408) = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v19(v13, v14);
    v20 = *(v17 + 48);
    if (v20(v12, 1, v16) == 1)
    {
      v22 = *(v0 + 248);
      v23 = type metadata accessor for WidgetDetailUpdate(0, *(v0 + 176), *(v0 + 184), v21);
      sub_1D1DAF094(v23, v22);
      v24 = swift_task_alloc();
      *(v0 + 416) = v24;
      *v24 = v0;
      v24[1] = sub_1D1DBD048;
      v25 = *(v0 + 280);
      v26 = *(v0 + 248);
      v27 = *(v0 + 184);
      v28 = *(v0 + 176);

      return sub_1D1DB952C(v25, v26, v28, v27);
    }

    else
    {
      v35 = *(v0 + 344);
      v36 = *(v0 + 256);
      sub_1D1741C08(*(v0 + 352), v35, &unk_1EC649E30, &unk_1D1E91250);
      v37 = v20(v35, 1, v36);
      if (v37 == 1)
      {
        __break(1u);
      }

      else
      {
        sub_1D1DCF39C(*(v0 + 344), *(v0 + 280), type metadata accessor for StateSnapshot);
        v41 = *(v0 + 176);
        v40 = *(v0 + 184);
        v42 = *(v0 + 168);
        sub_1D1DCF39C(*(v0 + 280), *(v0 + 288), type metadata accessor for StateSnapshot);
        v44 = type metadata accessor for WidgetDetailUpdate(0, v41, v40, v43);
        *(v0 + 432) = v44;
        v45 = *(v42 + *(v44 + 56));
        *(v0 + 496) = v45;
        if (v45 == 1)
        {
          v46 = *(v0 + 384);
          v47 = *(v0 + 184);
          v49 = *(v0 + 168);
          v48 = *(v0 + 176);
          v50 = *(v49 + *(v44 + 36));
          v73 = v44;
          v51 = swift_task_alloc();
          v51[2] = v48;
          v51[3] = v47;
          v51[4] = v49;
          v51[5] = v46;
          v52 = sub_1D1892678(sub_1D1DCF7B8, v51, v50);

          swift_beginAccess();
          sub_1D1951664(v52);
          swift_endAccess();

          v53 = *(v49 + *(v73 + 40));
          v54 = swift_task_alloc();
          v54[2] = v48;
          v54[3] = v47;
          v54[4] = v49;
          v54[5] = v46;
          v55 = sub_1D1892678(sub_1D1DCF428, v54, v53);

          swift_beginAccess();
          sub_1D1951664(v55);
          swift_endAccess();
        }

        if (qword_1EE07A098 != -1)
        {
          swift_once();
        }

        v56 = *(v0 + 384);
        v57 = sub_1D1E6709C();
        *(v0 + 440) = __swift_project_value_buffer(v57, qword_1EE0813C8);
        v58 = v56;
        v59 = sub_1D1E6707C();
        v60 = sub_1D1E6835C();

        if (os_log_type_enabled(v59, v60))
        {
          v61 = *(v0 + 400);
          v62 = *(v0 + 384);
          v63 = *(v0 + 320);
          v64 = *(v0 + 296);
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v74 = v66;
          *v65 = 136315138;
          v67 = [v62 uniqueIdentifier];
          sub_1D1E66A5C();

          sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v68 = sub_1D1E68FAC();
          v70 = v69;
          v61(v63, v64);
          v71 = sub_1D1B1312C(v68, v70, &v74);

          *(v65 + 4) = v71;
          _os_log_impl(&dword_1D16EC000, v59, v60, "updateDetailedState(detailed:) HM:{%s} prepared snapshot", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v66);
          MEMORY[0x1D3893640](v66, -1, -1);
          MEMORY[0x1D3893640](v65, -1, -1);
        }

        if (qword_1EC642488 != -1)
        {
          swift_once();
        }

        v72 = sub_1D1E6701C();
        *(v0 + 448) = __swift_project_value_buffer(v72, qword_1EC6BE2B8);
        sub_1D1E66FCC();
        v37 = sub_1D1DBD5C8;
        v38 = 0;
        v39 = 0;
      }

      return MEMORY[0x1EEE6DFA0](v37, v38, v39);
    }
  }

  else
  {
    v30 = *(v0 + 168);
    type metadata accessor for WidgetSnapshotModerator.Error(0);
    sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
    swift_allocError();
    v32 = v31;
    sub_1D1741C08(v30, v31, &qword_1EC642590, qword_1D1E71260);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    (*(*(v33 - 8) + 56))(v32, 0, 4, v33);
    swift_willThrow();

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_1D1DBD048()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = v2[24];
    v4 = sub_1D1DBE49C;
  }

  else
  {
    v6 = v2[30];
    v5 = v2[31];
    v7 = v2[26];
    v8 = v2[27];
    v9 = v2[24];
    v10 = v2[22];
    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    (*(*(v10 - 8) + 8))(v5 + *(v6 + 36), v10);
    (*(v8 + 8))(v5 + *(v6 + 44), v7);
    v4 = sub_1D1DBD1EC;
    v3 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1DBD1EC()
{
  v37 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);
  sub_1D1DCF39C(*(v0 + 280), *(v0 + 288), type metadata accessor for StateSnapshot);
  v5 = type metadata accessor for WidgetDetailUpdate(0, v1, v2, v4);
  *(v0 + 432) = v5;
  v6 = *(v3 + *(v5 + 56));
  *(v0 + 496) = v6;
  if (v6 == 1)
  {
    v7 = *(v0 + 384);
    v8 = *(v0 + 184);
    v9 = *(v0 + 168);
    v10 = *(v0 + 176);
    v11 = *(v9 + *(v5 + 36));
    v35 = v5;
    v12 = swift_task_alloc();
    v12[2] = v10;
    v12[3] = v8;
    v12[4] = v9;
    v12[5] = v7;
    v13 = sub_1D1892678(sub_1D1DCF7B8, v12, v11);

    swift_beginAccess();
    sub_1D1951664(v13);
    swift_endAccess();

    v14 = *(v9 + *(v35 + 40));
    v15 = swift_task_alloc();
    v15[2] = v10;
    v15[3] = v8;
    v15[4] = v9;
    v15[5] = v7;
    v16 = sub_1D1892678(sub_1D1DCF428, v15, v14);

    swift_beginAccess();
    sub_1D1951664(v16);
    swift_endAccess();
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 384);
  v18 = sub_1D1E6709C();
  *(v0 + 440) = __swift_project_value_buffer(v18, qword_1EE0813C8);
  v19 = v17;
  v20 = sub_1D1E6707C();
  v21 = sub_1D1E6835C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 400);
    v23 = *(v0 + 384);
    v24 = *(v0 + 320);
    v25 = *(v0 + 296);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136315138;
    v28 = [v23 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v29 = sub_1D1E68FAC();
    v31 = v30;
    v22(v24, v25);
    v32 = sub_1D1B1312C(v29, v31, &v36);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1D16EC000, v20, v21, "updateDetailedState(detailed:) HM:{%s} prepared snapshot", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1D3893640](v27, -1, -1);
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v33 = sub_1D1E6701C();
  *(v0 + 448) = __swift_project_value_buffer(v33, qword_1EC6BE2B8);
  sub_1D1E66FCC();

  return MEMORY[0x1EEE6DFA0](sub_1D1DBD5C8, 0, 0);
}

uint64_t sub_1D1DBD5C8(uint64_t a1)
{
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v5, "Widget.MergedSnapshotUpdate", "", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v1[48];
  v8 = v1[28];
  v7 = v1[29];
  v9 = v1[26];
  v10 = v1[27];

  (*(v10 + 16))(v8, v7, v9);
  sub_1D1E6705C();
  swift_allocObject();
  v1[57] = sub_1D1E6704C();
  v11 = swift_task_alloc();
  v1[58] = v11;
  *v11 = v1;
  v11[1] = sub_1D1DBD74C;
  v12 = v1[36];
  v13 = v1[34];
  v15 = v1[23];
  v14 = v1[24];
  v16 = v1[21];
  v17 = v1[22];

  return sub_1D1DBE8F0(v13, v14, v6, v16, v12, v17, v15);
}

uint64_t sub_1D1DBD74C()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_1D1DBDE44;
  }

  else
  {
    v2 = sub_1D1DBD860;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1DBD860()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[24];
  sub_1D1760838();

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1DBD918, v4, 0);
}

uint64_t sub_1D1DBD918()
{
  v48 = v0;
  v1 = *(v0 + 384);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  v4 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 400);
    v6 = *(v0 + 384);
    v7 = *(v0 + 320);
    v8 = *(v0 + 296);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47 = v10;
    *v9 = 136315138;
    v11 = [v6 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1DC9C14(&qword_1EE07B250, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v12 = sub_1D1E68FAC();
    v14 = v13;
    v5(v7, v8);
    v15 = sub_1D1B1312C(v12, v14, &v47);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1D16EC000, v2, v3, "updateDetailedState(detailed:) HM:{%s} updated snapshot", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v16 = v10;
    v4 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    MEMORY[0x1D3893640](v16, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v46 = *(v0 + 432);
  v17 = *(v0 + 392);
  v18 = *(v0 + 336);
  v19 = *(v0 + 320);
  v20 = *(v0 + 272);
  v21 = *(v0 + 256);
  v22 = *(v0 + 168);
  v23 = [*(v0 + 384) v4[61]];
  sub_1D1E66A5C();

  sub_1D1DC9148(v20, v18, type metadata accessor for StateSnapshot);
  v17(v18, 0, 1, v21);
  swift_beginAccess();
  sub_1D1B0D344(v18, v19);
  swift_endAccess();
  if ((*(v22 + *(v46 + 52)) & 0x1000001) != 0)
  {
    if (*(v0 + 496) == 1)
    {
      v24 = *(v0 + 384);
      v25 = *(v0 + 168);
      v26 = *(v25 + *(*(v0 + 432) + 44));
      v27 = swift_task_alloc();
      *(v27 + 16) = *(v0 + 176);
      *(v27 + 32) = v25;
      *(v27 + 40) = v24;
      v28 = sub_1D1892878(sub_1D1DCF404, v27, v26);

      swift_beginAccess();
      sub_1D195168C(v28);
      swift_endAccess();
    }

    v29 = *(v0 + 432);
    v30 = *(v0 + 384);
    v31 = *(v0 + 168);
    v32 = [v30 uniqueIdentifier];
    sub_1D1E66A5C();

    v33 = *(v29 + 48);
    v34 = *(v31 + *(v29 + 44));
    v35 = swift_task_alloc();
    *(v0 + 480) = v35;
    *v35 = v0;
    v35[1] = sub_1D1DBE05C;
    v36 = *(v0 + 496);
    v37 = *(v0 + 200);
    v38 = *(v0 + 176);
    v39 = *(v0 + 184);

    return WidgetSnapshotModerator.fetchMatterDevices<A>(home:configuration:isMonitoring:_:)(v37, v30, v31 + v33, v36, v34, v38, v39);
  }

  else
  {
    v41 = *(v0 + 352);
    v42 = *(v0 + 288);
    v43 = *(v0 + 272);
    v44 = *(v0 + 160);

    sub_1D1741A30(v41, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1DCF39C(v43, v44, type metadata accessor for StateSnapshot);
    sub_1D1DC91B0(v42, type metadata accessor for StateSnapshot);

    v45 = *(v0 + 8);

    return v45();
  }
}

uint64_t sub_1D1DBDE44()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[24];
  sub_1D1760838();

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1DBDEFC, v4, 0);
}

uint64_t sub_1D1DBDEFC()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);

  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1DC91B0(v2, type metadata accessor for StateSnapshot);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1DBE05C()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);
    (*(v2 + 400))(*(v2 + 312), *(v2 + 296));
    v4 = sub_1D1DBE650;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 192);
    v4 = sub_1D1DBE18C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1D1DBE18C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 200);
  v3 = type metadata accessor for MatterStateSnapshot(0);
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  swift_beginAccess();
  sub_1D1B0E5E8(v2, v1);
  swift_endAccess();
  v4 = *(v0 + 352);
  v5 = *(v0 + 288);
  v6 = *(v0 + 272);
  v7 = *(v0 + 160);

  sub_1D1741A30(v4, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1DCF39C(v6, v7, type metadata accessor for StateSnapshot);
  sub_1D1DC91B0(v5, type metadata accessor for StateSnapshot);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D1DBE380()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DBE49C()
{
  v1 = *(v0 + 352);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 176);

  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1741A30(v2, &qword_1EC642590, qword_1D1E71260);
  (*(*(v6 - 8) + 8))(v2 + *(v3 + 36), v6);
  (*(v5 + 8))(v2 + *(v3 + 44), v4);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1D1DBE650()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);

  sub_1D1DC91B0(v3, type metadata accessor for StateSnapshot);
  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1DC91B0(v2, type metadata accessor for StateSnapshot);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1DBE7C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = *(type metadata accessor for WidgetDetailUpdate(0, a4, a5, a4) + 48);
  *(a6 + 3) = a4;
  *(a6 + 4) = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2 + v12, a4);
  v14 = [a3 uniqueIdentifier];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643010, &qword_1D1E90E20);
  sub_1D1E66A5C();

  v16 = *(v15 + 40);
  v17 = sub_1D1E66A7C();
  return (*(*(v17 - 8) + 16))(&a6[v16], a1, v17);
}

uint64_t sub_1D1DBE8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = *(type metadata accessor for StateSnapshot.UpdateType(0) - 8);
  v7[10] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[11] = v12;
  *v12 = v7;
  v12[1] = sub_1D1DBEA1C;

  return sub_1D1DBBB90(a3, a4, a6, a7);
}

uint64_t sub_1D1DBEA1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1DBEB6C, 0, 0);
  }
}

uint64_t sub_1D1DBEB6C(__n128 a1)
{
  v2 = v1[12];
  sub_1D1DC9148(v1[6], v1[2], type metadata accessor for StateSnapshot);
  v26 = v2;
  v27 = *(v2 + 16);
  if (!v27)
  {
    goto LABEL_8;
  }

  v3 = v1[13];
  v4 = v1[9];
  v5 = v1[10];
  v7 = v1[7];
  v6 = v1[8];
  v9 = v1[4];
  v8 = v1[5];
  v11 = v1[2];
  v10 = v1[3];
  v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v28 = *(v4 + 72);
  sub_1D1DC9148(v1[12] + v12, v5, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1DBEDD4(v11, v5, v10, v9, v8, v7, v6);
  if (v3)
  {
    v13 = v1[10];
    v14 = v1[2];

    sub_1D1DC91B0(v13, type metadata accessor for StateSnapshot.UpdateType);
    return sub_1D1DC91B0(v14, type metadata accessor for StateSnapshot);
  }

  result = sub_1D1DC91B0(v1[10], type metadata accessor for StateSnapshot.UpdateType);
  v16 = v28;
  if (v27 == 1)
  {
LABEL_8:

    v25 = v1[1];

    return v25();
  }

  else
  {
    v17 = v28 + v12;
    v18 = 1;
    while (v18 < *(v26 + 16))
    {
      v19 = v1[10];
      v20 = v1[7];
      v29 = v1[8];
      v22 = v1[4];
      v21 = v1[5];
      v24 = v1[2];
      v23 = v1[3];
      sub_1D1DC9148(v1[12] + v17, v19, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1DBEDD4(v24, v19, v23, v22, v21, v20, v29);
      ++v18;
      result = sub_1D1DC91B0(v1[10], type metadata accessor for StateSnapshot.UpdateType);
      v17 += v16;
      if (v27 == v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1DBEDD4(char **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - v15;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1DC9148(a2, v19, type metadata accessor for StateSnapshot.UpdateType);
  v20 = *(a3 + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_homeManager);
  sub_1D1DCF39C(a1, v16, type metadata accessor for StateSnapshot);
  v21 = type metadata accessor for StateSnapshot(0);
  (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
  if ((*(a5 + *(type metadata accessor for WidgetDetailUpdate(0, a6, a7, v22) + 52)) & 0x61) != 0)
  {
    v23 = qword_1EE07CD90;
    v24 = v20;
    if (v23 != -1)
    {
      swift_once();
    }

    v25 = qword_1EE07CD98;
  }

  else
  {
    v26 = v20;
    v25 = sub_1D179B6E8(&unk_1F4D66710);
    swift_arrayDestroy();
  }

  return StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)(v19, v20, a4, v16, v25, a1);
}

void sub_1D1DBF00C(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  v12 = *(type metadata accessor for WidgetDetailUpdate(0, a4, a5, a4) + 48);
  a6[3] = a4;
  a6[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a2 + v12, a4);
  v14 = [a3 uniqueIdentifier];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643018, &qword_1D1E9AC00);
  sub_1D1E66A5C();

  *(a6 + *(v15 + 40)) = v11;
}

uint64_t sub_1D1DBF100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v5[10] = *(a3 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for WidgetDetailUpdate(0, a3, a4, v8);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v9 = sub_1D1E66A7C();
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DBF2E4, v4, 0);
}

uint64_t sub_1D1DBF2E4()
{
  v26 = v0;
  v1 = **(v0 + 48);
  *(v0 + 192) = v1;
  v25 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
LABEL_42:
    v2 = sub_1D1E6873C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 200) = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
    v3 = MEMORY[0x1E69E7CC0];
    goto LABEL_28;
  }

  v0 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = v0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D3891EF0](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v0 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7 || (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
      {
        v8 = [v7 actionSet];
        v9 = [v8 home];
      }

      else
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (!v11)
        {
          type metadata accessor for MatterExecuteRequest();
          swift_dynamicCastClass();
LABEL_21:

          goto LABEL_14;
        }

        v12 = [v11 characteristic];
        v13 = [v12 service];

        if (!v13)
        {
          goto LABEL_21;
        }

        v8 = [v13 accessory];

        if (!v8)
        {
          goto LABEL_21;
        }

        v9 = [v8 home];
      }

      v10 = v9;

      if (v10)
      {
        break;
      }

LABEL_14:
      ++v4;
      if (v0 == v2)
      {
        goto LABEL_28;
      }
    }

    MEMORY[0x1D3891220]();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D1E67C5C();
    }

    sub_1D1E67CAC();
    v3 = v25;
  }

  while (v0 != v2);
LABEL_28:
  v14 = sub_1D1785278(v3);
  v24[26] = v14;

  if ((v14 & 0xC000000000000001) != 0)
  {
    if (sub_1D1E6873C() < 2)
    {
      goto LABEL_37;
    }
  }

  else if (*(v14 + 16) < 2)
  {
    goto LABEL_37;
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v15 = sub_1D1E6709C();
  __swift_project_value_buffer(v15, qword_1EE0813C8);
  v16 = sub_1D1E6707C();
  v17 = sub_1D1E6833C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1D1B1312C(0xD000000000000019, 0x80000001D1EC6750, &v25);
    _os_log_impl(&dword_1D16EC000, v16, v17, "%s Write requested with accessories from multiple homes. This is undefined behavior.", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v18, -1, -1);
  }

LABEL_37:
  v20 = swift_task_alloc();
  v24[27] = v20;
  *v20 = v24;
  v20[1] = sub_1D1DBF754;
  v21 = v24[23];
  v22 = v24[9];

  return sub_1D1DC07C0(v21, v14, v22);
}

uint64_t sub_1D1DBF754()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 72);

  if (v0)
  {
    v4 = sub_1D1DC0438;
  }

  else
  {
    v4 = sub_1D1DBF89C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

id sub_1D1DBF89C()
{
  if (v0[24] >> 62)
  {
    result = sub_1D1E6873C();
    if (result)
    {
LABEL_3:
      v2 = 0;
      v3 = v0[20];
      v4 = (v3 + 48);
      v47 = v3;
      v49 = (v3 + 32);
      v51 = (v3 + 56);
      v5 = MEMORY[0x1E69E7CC0];
      v53 = result;
      while (1)
      {
        v6 = v0[24];
        if ((v6 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1D3891EF0](v2);
        }

        else
        {
          if (v2 >= *(v0[25] + 16))
          {
            goto LABEL_48;
          }

          result = *(v6 + 8 * v2 + 32);
        }

        v7 = result;
        v8 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          break;
        }

        objc_opt_self();
        v9 = swift_dynamicCastObjCClass();
        if (v9 || (objc_opt_self(), (v9 = swift_dynamicCastObjCClass()) != 0))
        {
          v10 = [v9 actionSet];
          v11 = [v10 uniqueIdentifier];

          sub_1D1E66A5C();
          v12 = 0;
        }

        else
        {
          v12 = 1;
        }

        v14 = v0[18];
        v13 = v0[19];
        v15 = v0[17];

        (*v51)(v15, v12, 1, v13);
        sub_1D1778308(v15, v14);
        if ((*v4)(v14, 1, v13) == 1)
        {
          result = sub_1D1741A30(v0[18], &qword_1EC642590, qword_1D1E71260);
        }

        else
        {
          v16 = *v49;
          (*v49)(v0[22], v0[18], v0[19]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1D177D0AC(0, *(v5 + 2) + 1, 1, v5);
          }

          v18 = *(v5 + 2);
          v17 = *(v5 + 3);
          if (v18 >= v17 >> 1)
          {
            v5 = sub_1D177D0AC((v17 > 1), v18 + 1, 1, v5);
          }

          v19 = v0[22];
          v20 = v0[19];
          *(v5 + 2) = v18 + 1;
          result = v16(&v5[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v18], v19, v20);
        }

        ++v2;
        if (v8 == v53)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }
  }

  else
  {
    result = *(v0[25] + 16);
    if (result)
    {
      goto LABEL_3;
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v0[29] = v5;
  if (v0[24] >> 62)
  {
    result = sub_1D1E6873C();
    v21 = result;
    if (result)
    {
LABEL_25:
      v22 = 0;
      v23 = v0[20];
      v52 = (v23 + 48);
      v54 = (v23 + 56);
      v48 = v23;
      v50 = (v23 + 32);
      v24 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v25 = v0[24];
        if ((v25 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x1D3891EF0](v22);
        }

        else
        {
          if (v22 >= *(v0[25] + 16))
          {
            goto LABEL_50;
          }

          result = *(v25 + 8 * v22 + 32);
        }

        v26 = result;
        v27 = (v22 + 1);
        if (__OFADD__(v22, 1))
        {
          break;
        }

        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (v28)
        {
          v29 = [v28 characteristic];
          v30 = [v29 uniqueIdentifier];

          sub_1D1E66A5C();
          v31 = 0;
        }

        else
        {
          v31 = 1;
        }

        v32 = v0[19];
        v33 = v0[15];
        v34 = v0[16];

        (*v54)(v33, v31, 1, v32);
        sub_1D1778308(v33, v34);
        if ((*v52)(v34, 1, v32) == 1)
        {
          result = sub_1D1741A30(v0[16], &qword_1EC642590, qword_1D1E71260);
        }

        else
        {
          v35 = *v50;
          (*v50)(v0[21], v0[16], v0[19]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1D177D0AC(0, *(v24 + 2) + 1, 1, v24);
          }

          v37 = *(v24 + 2);
          v36 = *(v24 + 3);
          if (v37 >= v36 >> 1)
          {
            v24 = sub_1D177D0AC((v36 > 1), v37 + 1, 1, v24);
          }

          v38 = v0[21];
          v39 = v0[19];
          *(v24 + 2) = v37 + 1;
          result = v35(&v24[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v37], v38, v39);
        }

        ++v22;
        if (v27 == v21)
        {
          goto LABEL_44;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }
  }

  else
  {
    v21 = *(v0[25] + 16);
    if (v21)
    {
      goto LABEL_25;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_44:
  v0[30] = v24;
  v40 = v0[8];
  v41 = v0[9];
  v42 = v0[7];
  v43 = OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_widgetManager;
  v44 = swift_task_alloc();
  v0[31] = v44;
  v46 = type metadata accessor for WidgetWriteRequests(0, v42, v40, v45);
  v0[32] = v46;
  *v44 = v0;
  v44[1] = sub_1D1DBFE40;

  return sub_1D1DAF2E0((v41 + v43), v46);
}

uint64_t sub_1D1DBFE40()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);

    v4 = sub_1D1DC0520;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 72);
    v4 = sub_1D1DBFF70;
  }

  return MEMORY[0x1EEE6DFA0](v4, v5, 0);
}

uint64_t sub_1D1DBFF70()
{
  v26 = v0;
  v23 = v0[29];
  v24 = v0[30];
  v1 = v0[20];
  v18 = v0[19];
  v19 = v0[23];
  v2 = v0[14];
  v21 = v0[32];
  v22 = v0[13];
  v3 = v0[10];
  v20 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v7 = v0[6];
  v6 = v0[7];
  swift_beginAccess();
  v8 = *(v4 + 144);
  v9 = swift_task_alloc();
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v7;

  v10 = sub_1D1B525A0(sub_1D1DCF47C, v9, v8);

  v11 = sub_1D1DAD26C(v10);

  (*(v1 + 16))(v2, v19, v18);
  (*(v1 + 56))(v2, 0, 1, v18);
  (*(v3 + 16))(v20, v7 + *(v21 + 36), v6);
  v25[0] = *(v7 + *(v21 + 40));
  WidgetDetailUpdate.init(homeID:characteristics:actionSets:matterDevices:configuration:isMonitoring:filtered:)(v2, v24, v23, v11, v20, 1, v25, v6, v22, v5);
  v12 = swift_task_alloc();
  v0[34] = v12;
  *v12 = v0;
  v12[1] = sub_1D1DC016C;
  v13 = v0[13];
  v14 = v0[8];
  v15 = v0[7];
  v16 = v0[5];

  return sub_1D1DBC3B8(v16, v13, v15, v14);
}

uint64_t sub_1D1DC016C()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = v2[9];
    v4 = sub_1D1DC0620;
  }

  else
  {
    v6 = v2[12];
    v5 = v2[13];
    v7 = v2[9];
    v8 = v2[10];
    v9 = v2[7];
    sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);

    (*(v8 + 8))(v5 + *(v6 + 48), v9);
    v10 = *(v6 + 60);
    v11 = sub_1D1E66FDC();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
    v4 = sub_1D1DC0338;
    v3 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1DC0338()
{
  (*(v0[20] + 8))(v0[23], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D1DC0438()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DC0520()
{
  (*(v0[20] + 8))(v0[23], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D1DC0620()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
  (*(v0[20] + 8))(v0[23], v0[19]);
  sub_1D1741A30(v1, &qword_1EC642590, qword_1D1E71260);

  (*(v3 + 8))(v1 + *(v2 + 48), v4);
  v5 = *(v2 + 60);
  v6 = sub_1D1E66FDC();
  (*(*(v6 - 8) + 8))(v1 + v5, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D1DC07C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v5 = sub_1D1E66A7C();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1DC0888, a3, 0);
}

uint64_t sub_1D1DC0888()
{
  v1 = sub_1D17721CC(v0[3]);
  if (v1)
  {
    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[5];
    v5 = v0[2];
    v6 = v1;
    v7 = [v1 uniqueIdentifier];

    sub_1D1E66A5C();
    (*(v3 + 32))(v5, v2, v4);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_1D1DC09D0;

    return sub_1D1DB1D48();
  }
}

uint64_t sub_1D1DC09D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v4 + 32);
    *(v4 + 72) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D1DC0B24, v8, 0);
  }
}

uint64_t sub_1D1DC0B24()
{
  v1 = *(v0 + 72);
  v2 = [v1 uniqueIdentifier];

  sub_1D1E66A5C();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1DC0BC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WidgetWriteRequests(0, a3, a4, a4);
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

uint64_t WidgetSnapshotModerator.updateState<A>(updateType:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6[6] = a4;
  v6[7] = v5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v6[8] = *(a3 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for WidgetSnapshotModerator.Error(0);
  v6[11] = swift_task_alloc();
  type metadata accessor for StateSnapshot(0);
  v6[12] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[13] = v8;
  *v8 = v6;
  v8[1] = sub_1D1DC0ED4;

  return WidgetSnapshotModerator.updateHomes(timeout:)(a5);
}

uint64_t sub_1D1DC0ED4()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1D1DC1710;
  }

  else
  {
    v4 = sub_1D1DC1000;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1DC1000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = type metadata accessor for WidgetSnapshotModerator.UpdateType(0, v4[5], v4[6], a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v6 = swift_task_alloc();
      v4[18] = v6;
      *v6 = v4;
      v6[1] = sub_1D1DC14B8;
      v7 = v4[12];
      v8 = v4[6];
      v9 = v4[4];
      v10 = v4[5];

      return sub_1D1DBC3B8(v7, v9, v10, v8);
    }

    else
    {
      v17 = swift_task_alloc();
      v4[20] = v17;
      *v17 = v4;
      v17[1] = sub_1D1DC15E4;
      v18 = v4[12];
      v19 = v4[6];
      v20 = v4[4];
      v21 = v4[5];

      return sub_1D1DBF100(v18, v20, v21, v19);
    }
  }

  else
  {
    v12 = swift_task_alloc();
    v4[16] = v12;
    *v12 = v4;
    v12[1] = sub_1D1DC11B0;
    v13 = v4[12];
    v14 = v4[6];
    v15 = v4[4];
    v16 = v4[5];

    return sub_1D1DB952C(v13, v15, v16, v14);
  }
}

uint64_t sub_1D1DC11B0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1D1DC1DC0;
  }

  else
  {
    v4 = sub_1D1DC12DC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1DC12DC()
{
  sub_1D1DCF39C(v0[12], v0[3], type metadata accessor for StateSnapshot);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v0[4], &qword_1EC642590, qword_1D1E71260);
      v7 = type metadata accessor for WidgetDetailUpdate(0, v3, v4, v6);

      (*(v2 + 8))(v5 + *(v7 + 48), v3);
      v8 = *(v7 + 60);
      goto LABEL_7;
    }

    v10 = type metadata accessor for WidgetWriteRequests(0, v3, v4, v11);
  }

  else
  {
    sub_1D1741A30(v0[4], &qword_1EC642590, qword_1D1E71260);
    v10 = type metadata accessor for WidgetRefresh(0, v3, v4, v9);
  }

  v12 = v10;
  (*(v2 + 8))(v5 + *(v10 + 36), v3);
  v8 = *(v12 + 44);
LABEL_7:
  v13 = sub_1D1E66FDC();
  (*(*(v13 - 8) + 8))(v5 + v8, v13);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D1DC14B8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1D1DC1F90;
  }

  else
  {
    v4 = sub_1D1DCF7A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1DC15E4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 56);
  if (v0)
  {
    v4 = sub_1D1DC2160;
  }

  else
  {
    v4 = sub_1D1DCF7A4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1DC1710()
{
  v1 = *(v0 + 112);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 88);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    *(v0 + 176) = v4;
    v5 = *(v4 - 8);
    *(v0 + 184) = v5;
    if ((*(v5 + 48))(v3, 4, v4) == 4)
    {
      v6 = *(v0 + 72);
      v8 = *(v0 + 40);
      v7 = *(v0 + 48);

      updated = type metadata accessor for WidgetSnapshotModerator.UpdateType(0, v8, v7, v9);
      sub_1D1DB049C(updated, v6);
      v11 = swift_task_alloc();
      *(v0 + 192) = v11;
      *v11 = v0;
      v11[1] = sub_1D1DC1A5C;
      v12 = *(v0 + 72);
      v13 = *(v0 + 48);
      v14 = *(v0 + 40);

      return WidgetSnapshotModerator.queueForNextUpdate<A>(configuration:)(v12, v14, v13);
    }

    sub_1D1DC91B0(v3, type metadata accessor for WidgetSnapshotModerator.Error);
  }

  v16 = *(v0 + 40);
  v17 = *(v0 + 48);
  v18 = *(v0 + 32);
  type metadata accessor for WidgetSnapshotModerator.UpdateType(0, v16, v17, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = *(v0 + 64);
  if (!EnumCaseMultiPayload)
  {
    sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
    v26 = type metadata accessor for WidgetRefresh(0, v16, v17, v25);
LABEL_12:
    v28 = v26;
    (*(v21 + 8))(v18 + *(v26 + 36), v16);
    v24 = *(v28 + 44);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {

    v26 = type metadata accessor for WidgetWriteRequests(0, v16, v17, v27);
    goto LABEL_12;
  }

  sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
  v23 = type metadata accessor for WidgetDetailUpdate(0, v16, v17, v22);

  (*(v21 + 8))(v18 + *(v23 + 48), v16);
  v24 = *(v23 + 60);
LABEL_13:
  v29 = sub_1D1E66FDC();
  (*(*(v29 - 8) + 8))(v18 + v24, v29);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1D1DC1A5C()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D1DC1B6C, v1, 0);
}

uint64_t sub_1D1DC1B6C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  sub_1D1DC9C14(&qword_1EC64C7B0, 255, type metadata accessor for WidgetSnapshotModerator.Error, &protocol conformance descriptor for WidgetSnapshotModerator.Error);
  swift_allocError();
  (*(v2 + 56))(v3, 4, 4, v1);
  swift_willThrow();

  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 32);
  type metadata accessor for WidgetSnapshotModerator.UpdateType(0, v4, v5, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v0 + 64);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
      v11 = type metadata accessor for WidgetDetailUpdate(0, v4, v5, v10);

      (*(v9 + 8))(v6 + *(v11 + 48), v4);
      v12 = *(v11 + 60);
      goto LABEL_7;
    }

    v14 = type metadata accessor for WidgetWriteRequests(0, v4, v5, v15);
  }

  else
  {
    sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
    v14 = type metadata accessor for WidgetRefresh(0, v4, v5, v13);
  }

  v16 = v14;
  (*(v9 + 8))(v6 + *(v14 + 36), v4);
  v12 = *(v16 + 44);
LABEL_7:
  v17 = sub_1D1E66FDC();
  (*(*(v17 - 8) + 8))(v6 + v12, v17);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D1DC1DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[5];
  v6 = v4[6];
  v7 = v4[4];
  type metadata accessor for WidgetSnapshotModerator.UpdateType(0, v5, v6, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = v4[8];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
      v11 = type metadata accessor for WidgetDetailUpdate(0, v5, v6, v10);

      (*(v9 + 8))(v7 + *(v11 + 48), v5);
      v12 = *(v11 + 60);
      goto LABEL_7;
    }

    v14 = type metadata accessor for WidgetWriteRequests(0, v5, v6, v15);
  }

  else
  {
    sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
    v14 = type metadata accessor for WidgetRefresh(0, v5, v6, v13);
  }

  v16 = v14;
  (*(v9 + 8))(v7 + *(v14 + 36), v5);
  v12 = *(v16 + 44);
LABEL_7:
  v17 = sub_1D1E66FDC();
  (*(*(v17 - 8) + 8))(v7 + v12, v17);

  v18 = v4[1];

  return v18();
}

uint64_t sub_1D1DC1F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[5];
  v6 = v4[6];
  v7 = v4[4];
  type metadata accessor for WidgetSnapshotModerator.UpdateType(0, v5, v6, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = v4[8];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
      v11 = type metadata accessor for WidgetDetailUpdate(0, v5, v6, v10);

      (*(v9 + 8))(v7 + *(v11 + 48), v5);
      v12 = *(v11 + 60);
      goto LABEL_7;
    }

    v14 = type metadata accessor for WidgetWriteRequests(0, v5, v6, v15);
  }

  else
  {
    sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
    v14 = type metadata accessor for WidgetRefresh(0, v5, v6, v13);
  }

  v16 = v14;
  (*(v9 + 8))(v7 + *(v14 + 36), v5);
  v12 = *(v16 + 44);
LABEL_7:
  v17 = sub_1D1E66FDC();
  (*(*(v17 - 8) + 8))(v7 + v12, v17);

  v18 = v4[1];

  return v18();
}

uint64_t sub_1D1DC2160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[5];
  v6 = v4[6];
  v7 = v4[4];
  type metadata accessor for WidgetSnapshotModerator.UpdateType(0, v5, v6, a4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = v4[8];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
      v11 = type metadata accessor for WidgetDetailUpdate(0, v5, v6, v10);

      (*(v9 + 8))(v7 + *(v11 + 48), v5);
      v12 = *(v11 + 60);
      goto LABEL_7;
    }

    v14 = type metadata accessor for WidgetWriteRequests(0, v5, v6, v15);
  }

  else
  {
    sub_1D1741A30(v7, &qword_1EC642590, qword_1D1E71260);
    v14 = type metadata accessor for WidgetRefresh(0, v5, v6, v13);
  }

  v16 = v14;
  (*(v9 + 8))(v7 + *(v14 + 36), v5);
  v12 = *(v16 + 44);
LABEL_7:
  v17 = sub_1D1E66FDC();
  (*(*(v17 - 8) + 8))(v7 + v12, v17);

  v18 = v4[1];

  return v18();
}

uint64_t WidgetSnapshotModerator.deinit()
{

  sub_1D1741A30(v0 + OBJC_IVAR____TtC13HomeDataModel23WidgetSnapshotModerator_recommendedHome, &qword_1EC642590, qword_1D1E71260);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t WidgetSnapshotModerator.__deallocating_deinit()
{
  WidgetSnapshotModerator.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1DC23FC()
{
  type metadata accessor for HomeAppSettings();
  v0 = swift_allocObject();
  result = sub_1D1DC2478();
  qword_1EE081458 = v0;
  return result;
}

uint64_t sub_1D1DC2438()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1DC2478()
{
  swift_defaultActor_initialize();
  v1 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v2 = sub_1D1E677EC();
  v3 = [v1 initWithSuiteName_];

  if (!v3)
  {
    v3 = [objc_opt_self() standardUserDefaults];
  }

  *(v0 + 112) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v5 = sub_1D1E677EC();
  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    v6 = [objc_opt_self() standardUserDefaults];
  }

  *(v0 + 120) = v6;
  return v0;
}

uint64_t sub_1D1DC2594(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD38, &qword_1D1EB0800);
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v25 = &v21 - v3;
  v4 = sub_1D1E66A7C();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD40, &qword_1D1EB0808);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for WidgetDataModel.Error(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FD48, &qword_1D1EB0810);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1DCF1D0();
  v16 = v28;
  sub_1D1E6930C();
  sub_1D1DC9148(v29, v11, type metadata accessor for WidgetDataModel.Error);
  if ((*(v16 + 48))(v11, 1, v4) == 1)
  {
    v30 = 0;
    sub_1D1DCF278();
    sub_1D1E68DFC();
    (*(v22 + 8))(v8, v23);
  }

  else
  {
    v18 = v24;
    (*(v16 + 32))(v24, v11, v4);
    v31 = 1;
    sub_1D1DCF224();
    v19 = v25;
    sub_1D1E68DFC();
    sub_1D1DC9C14(&qword_1EE07B258, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v20 = v27;
    sub_1D1E68F1C();
    (*(v26 + 8))(v19, v20);
    (*(v16 + 8))(v18, v4);
  }

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1D1DC2A08()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WidgetDataModel.Error(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1DC9148(v1, v8, type metadata accessor for WidgetDataModel.Error);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1D3892850](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1D3892850](1);
    sub_1D1DC9C14(qword_1EE07DD78, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1DC2BF8()
{
  if (*v0)
  {
    return 0x48676E697373696DLL;
  }

  else
  {
    return 0x73656D6F486F6ELL;
  }
}

uint64_t sub_1D1DC2C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656D6F486F6ELL && a2 == 0xE700000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x48676E697373696DLL && a2 == 0xEB00000000656D6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D1DC2D1C(uint64_t a1)
{
  v2 = sub_1D1DCF1D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DC2D58(uint64_t a1)
{
  v2 = sub_1D1DCF1D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DC2D94(uint64_t a1)
{
  v2 = sub_1D1DCF224();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DC2DD0(uint64_t a1)
{
  v2 = sub_1D1DCF224();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DC2E0C(uint64_t a1)
{
  v2 = sub_1D1DCF278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1DC2E48(uint64_t a1)
{
  v2 = sub_1D1DCF278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1DC2E88(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1DC9148(v1, v8, type metadata accessor for WidgetDataModel.Error);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x1D3892850](0);
  }

  (*(v3 + 32))(v6, v8, v2);
  MEMORY[0x1D3892850](1);
  sub_1D1DC9C14(qword_1EE07DD78, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D1DC3058(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1DC9148(v2, v9, type metadata accessor for WidgetDataModel.Error);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    MEMORY[0x1D3892850](0);
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    MEMORY[0x1D3892850](1);
    sub_1D1DC9C14(qword_1EE07DD78, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v4 + 8))(v7, v3);
  }

  return sub_1D1E6926C();
}

uint64_t static WidgetDataModel.options.getter()
{
  if (qword_1EC6424B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC64F958);
  v0 = qword_1EC64F960;
  os_unfair_lock_unlock(&dword_1EC64F958);
  return v0;
}

void sub_1D1DC32F0(uint64_t *a1@<X8>)
{
  if (qword_1EC6424B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC64F958);
  v2 = qword_1EC64F960;
  os_unfair_lock_unlock(&dword_1EC64F958);
  *a1 = v2;
}

void sub_1D1DC3368(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EC6424B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC64F958);
  qword_1EC64F960 = v1;

  os_unfair_lock_unlock(&dword_1EC64F958);
}

void static WidgetDataModel.options.setter(uint64_t a1)
{
  if (qword_1EC6424B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC64F958);
  qword_1EC64F960 = a1;

  os_unfair_lock_unlock(&dword_1EC64F958);
}

void (*static WidgetDataModel.options.modify(uint64_t *a1))(uint64_t *a1)
{
  if (qword_1EC6424B8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC64F958);
  v2 = qword_1EC64F960;
  os_unfair_lock_unlock(&dword_1EC64F958);
  *a1 = v2;
  return sub_1D1DC34EC;
}

void sub_1D1DC34EC(uint64_t *a1)
{
  v1 = *a1;
  os_unfair_lock_lock(&dword_1EC64F958);
  qword_1EC64F960 = v1;

  os_unfair_lock_unlock(&dword_1EC64F958);
}

uint64_t WidgetDataModel.queueForNextUpdate<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_1D1DC3608;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DC3608(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[6] = a1;

  v4 = swift_task_alloc();
  v2[7] = v4;
  *v4 = v3;
  v4[1] = sub_1D1DC377C;
  v5 = v2[4];
  v6 = v2[3];
  v7 = v2[2];

  return WidgetSnapshotModerator.queueForNextUpdate<A>(configuration:)(v7, v6, v5);
}

uint64_t sub_1D1DC377C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t WidgetDataModel.home(_:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = *(type metadata accessor for StaticHome(0) - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  v3[21] = qword_1EE07B4E0;
  v5 = swift_task_alloc();
  v3[22] = v5;
  *v5 = v3;
  v5[1] = sub_1D1DC3A78;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DC3A78(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 184) = a1;

  v3 = swift_task_alloc();
  *(v2 + 192) = v3;
  *v3 = v5;
  v3[1] = sub_1D1DC3BAC;

  return WidgetSnapshotModerator.updateHomes(timeout:)(20.0);
}

uint64_t sub_1D1DC3BAC()
{
  v2 = *(*v1 + 168);
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_1D1DC49E4;
  }

  else
  {

    v3 = sub_1D1DC3CE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1D1DC3CE8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  sub_1D1741C08(v0[9], v3, &qword_1EC642590, qword_1D1E71260);
  v4 = *(v2 + 48);
  v0[26] = v4;
  v0[27] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v3, 1, v1) == 1)
  {
    sub_1D1741A30(v0[15], &qword_1EC642590, qword_1D1E71260);
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v6 = sub_1D1DC41D4;
  }

  else
  {
    (*(v0[17] + 32))(v0[20], v0[15], v0[16]);
    v5 = swift_task_alloc();
    v0[28] = v5;
    *v5 = v0;
    v6 = sub_1D1DC3E48;
  }

  v5[1] = v6;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DC3E48(uint64_t a1)
{
  *(*v1 + 232) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1DC3F4C, a1, 0);
}

uint64_t sub_1D1DC3F4C()
{
  v1 = v0[29];
  v2 = v0[21];
  swift_beginAccess();
  v0[30] = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D1DC3FD8, v2, 0);
}

uint64_t sub_1D1DC3FD8()
{
  v1 = v0[30];

  if (*(v1 + 16) && (v2 = sub_1D1742188(), (v3 & 1) != 0))
  {
    sub_1D1DC9148(*(v0[30] + 56) + *(v0[11] + 72) * v2, v0[13], type metadata accessor for StaticHome);
    v4 = v0[13];
    v5 = v0[8];
    (*(v0[17] + 8))(v0[20], v0[16]);

    sub_1D1DCF39C(v4, v5, type metadata accessor for StaticHome);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[20];
    v9 = v0[16];
    v10 = v0[17];

    (*(v10 + 8))(v8, v9);
    v11 = swift_task_alloc();
    v0[31] = v11;
    *v11 = v0;
    v11[1] = sub_1D1DC41D4;

    return WidgetDataModel.snapshotModerator.getter();
  }
}

uint64_t sub_1D1DC41D4(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 256) = a1;

  v3 = swift_task_alloc();
  *(v2 + 264) = v3;
  *v3 = v5;
  v3[1] = sub_1D1DC4304;

  return sub_1D1DB1D48();
}

uint64_t sub_1D1DC4304(uint64_t a1)
{
  v3 = *v2;
  v3[34] = a1;
  v3[35] = v1;

  if (v1)
  {
    v4 = v3[21];

    return MEMORY[0x1EEE6DFA0](sub_1D1DC4AA4, v4, 0);
  }

  else
  {

    v5 = swift_task_alloc();
    v3[36] = v5;
    *v5 = v3;
    v5[1] = sub_1D1DC4478;

    return WidgetDataModel.snapshotModerator.getter();
  }
}

uint64_t sub_1D1DC4478(uint64_t a1)
{
  *(*v1 + 296) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1DC457C, a1, 0);
}

uint64_t sub_1D1DC457C()
{
  v1 = v0[37];
  v2 = v0[21];
  swift_beginAccess();
  v0[38] = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D1DC4608, v2, 0);
}

uint64_t sub_1D1DC4608()
{
  v1 = v0[38];
  v2 = v0[34];

  v3 = [v2 uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16) && (v4 = sub_1D1742188(), (v5 & 1) != 0))
  {
    v6 = v0[34];
    sub_1D1DC9148(*(v0[38] + 56) + *(v0[11] + 72) * v4, v0[12], type metadata accessor for StaticHome);

    v7 = v0[12];
    v8 = v0[8];
    (*(v0[17] + 8))(v0[19], v0[16]);

    sub_1D1DCF39C(v7, v8, type metadata accessor for StaticHome);

    v9 = v0[1];
  }

  else
  {
    v10 = v0[26];
    v11 = v0[19];
    v12 = v0[16];
    v13 = v0[17];
    v14 = v0[14];
    v15 = v0[9];

    v16 = *(v13 + 8);
    v16(v11, v12);
    sub_1D1741C08(v15, v14, &qword_1EC642590, qword_1D1E71260);
    v17 = v10(v14, 1, v12);
    v18 = v0[34];
    if (v17 == 1)
    {
      v19 = v0[16];
      v20 = v0[17];
      sub_1D1741A30(v0[14], &qword_1EC642590, qword_1D1E71260);
      type metadata accessor for WidgetDataModel.Error(0);
      sub_1D1DC9C14(&qword_1EC64F9D8, 255, type metadata accessor for WidgetDataModel.Error, &unk_1D1EB058C);
      swift_allocError();
      (*(v20 + 56))(v21, 1, 1, v19);
      swift_willThrow();
    }

    else
    {
      v23 = v0[17];
      v22 = v0[18];
      v24 = v0[16];
      (*(v23 + 32))(v22, v0[14], v24);
      type metadata accessor for WidgetDataModel.Error(0);
      sub_1D1DC9C14(&qword_1EC64F9D8, 255, type metadata accessor for WidgetDataModel.Error, &unk_1D1EB058C);
      swift_allocError();
      v26 = v25;
      (*(v23 + 16))(v25, v22, v24);
      (*(v23 + 56))(v26, 0, 1, v24);
      swift_willThrow();

      v16(v22, v24);
    }

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_1D1DC49E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DC4AA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t WidgetDataModel.orderedHomes.getter()
{
  v1[9] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F9E0, &unk_1D1EAFBD0);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = *(type metadata accessor for StaticHome(0) - 8);
  v1[14] = swift_task_alloc();
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  v1[15] = qword_1EE07B4E0;
  v3 = swift_task_alloc();
  v1[16] = v3;
  *v3 = v1;
  v3[1] = sub_1D1DC4CF0;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D1DC4CF0(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 136) = a1;

  v3 = swift_task_alloc();
  *(v2 + 144) = v3;
  *v3 = v5;
  v3[1] = sub_1D1DC4E24;

  return WidgetSnapshotModerator.updateHomes(timeout:)(20.0);
}

uint64_t sub_1D1DC4E24()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {
    v3 = v2[15];

    return MEMORY[0x1EEE6DFA0](sub_1D1DC5798, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[20] = v4;
    *v4 = v2;
    v4[1] = sub_1D1DC4F98;

    return WidgetDataModel.snapshotModerator.getter();
  }
}

uint64_t sub_1D1DC4F98(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1DC509C, a1, 0);
}

uint64_t sub_1D1DC509C()
{
  v1 = v0[21];
  v2 = v0[15];
  swift_beginAccess();
  v0[22] = *(v1 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D1DC5128, v2, 0);
}

uint64_t sub_1D1DC5128()
{
  v22 = v0;
  v1 = v0[22];

  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2 && (v4 = v0[22], v5 = v0[13], v3 = sub_1D180437C(v2, 0), v6 = sub_1D1804AF4(&v21, v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v2, v4), v7 = v21, , result = sub_1D1716918(v7), v6 != v2))
  {
    __break(1u);
  }

  else
  {
    v9 = v0[19];
    v21 = v3;
    sub_1D1DC5B34(&v21);
    if (v9)
    {
    }

    else
    {

      v10 = v21;
      v11 = v21[2];
      if (v11)
      {
        v12 = v0[13];
        v21 = MEMORY[0x1E69E7CC0];
        sub_1D178D050(0, v11, 0);
        v13 = v21;
        v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
        v15 = v10 + v14;
        v16 = *(v12 + 72);
        do
        {
          sub_1D1DC9148(v15, v0[14], type metadata accessor for StaticHome);
          v21 = v13;
          v18 = *(v13 + 16);
          v17 = *(v13 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_1D178D050((v17 > 1), v18 + 1, 1);
            v13 = v21;
          }

          v19 = v0[14];
          *(v13 + 16) = v18 + 1;
          sub_1D1DCF39C(v19, v13 + v14 + v18 * v16, type metadata accessor for StaticHome);
          v15 += v16;
          --v11;
        }

        while (v11);
      }

      else
      {

        v13 = MEMORY[0x1E69E7CC0];
      }

      v0[23] = v13;
      v0[7] = v13;
      v20 = swift_task_alloc();
      v0[24] = v20;
      *v20 = v0;
      v20[1] = sub_1D1DC53B4;

      return WidgetDataModel.snapshotModerator.getter();
    }
  }

  return result;
}

uint64_t sub_1D1DC53B4(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 200) = a1;

  v3 = swift_task_alloc();
  *(v2 + 208) = v3;
  *v3 = v5;
  v3[1] = sub_1D1DC54E4;

  return sub_1D1DB1D48();
}

uint64_t sub_1D1DC54E4(uint64_t a1)
{
  v4 = *v2;
  v4[27] = v1;

  v5 = v4[15];
  if (v1)
  {

    v6 = sub_1D1DC5814;
  }

  else
  {

    v4[28] = a1;
    v6 = sub_1D1DC5650;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D1DC5650()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 224);
  sub_1D1DC588C(v1, v5);
  *(v0 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCE8, &qword_1D1EA2668);
  sub_1D17D8EA8(&qword_1EE079E48, &qword_1EC64CCE8, &qword_1D1EA2668, MEMORY[0x1E69E6318]);
  sub_1D1E6773C();

  (*(v3 + 8))(v2, v4);
  v6 = *(v0 + 56);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1D1DC5798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DC5814()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1D1DC588C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 16);
  v6 = *(type metadata accessor for StaticHome(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v24 = (2 * v5) | 1;
  v23 = a2;
  v8 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v23;

    v10 = sub_1D1DC7BE0(a1 + v7, v8, v24, v9);
    if (v2)
    {

      goto LABEL_17;
    }

    v12 = v10;
    v13 = v11;

    if (v13)
    {

LABEL_16:
      sub_1D1E693BC();
LABEL_17:

      return;
    }

    if (v5 < v12)
    {
      break;
    }

    if (v12 < 0)
    {
      goto LABEL_19;
    }

    v14 = v5;
    v15 = v9;
    v16 = v7;
    sub_1D1DC9578(a1, a1 + v7, v12, v24, v15);
    v18 = v17;

    swift_unknownObjectRelease();
    v19 = v18 >> 1;
    if (v19 < v12)
    {
      goto LABEL_20;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = sub_1D177D070(0, *(v25 + 2) + 1, 1, v25);
    }

    v21 = *(v25 + 2);
    v20 = *(v25 + 3);
    if (v21 >= v20 >> 1)
    {
      v25 = sub_1D177D070((v20 > 1), v21 + 1, 1, v25);
    }

    *(v25 + 2) = v21 + 1;
    v22 = &v25[16 * v21];
    *(v22 + 4) = v12;
    *(v22 + 5) = v19;
    if (v19 >= v14)
    {
      goto LABEL_16;
    }

    v5 = v14;
    v8 = v19 + 1;
    v7 = v16;
    if (v14 < (v19 + 1))
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t WidgetDataModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D1DC5B34(uint64_t *a1)
{
  v2 = *(type metadata accessor for StaticHome(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0C01C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1DC5BDC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1DC5BDC(uint64_t *a1)
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
        type metadata accessor for StaticHome(0);
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for StaticHome(0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1D1DC5FB0(v8, v9, a1, v4);
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
    return sub_1D1DC5D08(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1DC5D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for StaticHome(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v39 = v18;
    v33 = v19;
    v23 = v18 + v19 * a3;
LABEL_6:
    v37 = v20;
    v38 = a3;
    v35 = v23;
    v36 = v22;
    while (1)
    {
      sub_1D1DC9148(v23, v17, type metadata accessor for StaticHome);
      sub_1D1DC9148(v20, v13, type metadata accessor for StaticHome);
      v24 = *(v8 + 20);
      v25 = *&v17[v24];
      v26 = *&v17[v24 + 8];
      v27 = &v13[v24];
      if (v25 == *v27 && v26 == *(v27 + 1))
      {
        sub_1D1DC91B0(v13, type metadata accessor for StaticHome);
        result = sub_1D1DC91B0(v17, type metadata accessor for StaticHome);
LABEL_5:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v22 = v36 - 1;
        v23 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_1D1E6904C();
      sub_1D1DC91B0(v13, type metadata accessor for StaticHome);
      result = sub_1D1DC91B0(v17, type metadata accessor for StaticHome);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v30 = v40;
      sub_1D1DCF39C(v23, v40, type metadata accessor for StaticHome);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1DCF39C(v30, v20, type metadata accessor for StaticHome);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1DC5FB0(uint64_t (**a1)(uint64_t a1), uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v132 = a1;
  v8 = type metadata accessor for StaticHome(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v137 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v144 = &v125 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v145 = &v125 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v143 = &v125 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v142 = (&v125 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v131 = &v125 - v22;
  result = MEMORY[0x1EEE9AC00](v21);
  v130 = &v125 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v29 = *v132;
    if (!*v132)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_143:
      result = sub_1D1E0BE44(v28);
      v28 = result;
    }

    v148 = v28;
    v120 = *(v28 + 16);
    if (v120 >= 2)
    {
      while (*a3)
      {
        v121 = *(v28 + 16 * v120);
        v122 = v28;
        v123 = *(v28 + 16 * (v120 - 1) + 32);
        v28 = *(v28 + 16 * (v120 - 1) + 40);
        sub_1D1DC6A44(*a3 + *(v9 + 72) * v121, *a3 + *(v9 + 72) * v123, *a3 + *(v9 + 72) * v28, v29);
        if (v5)
        {
        }

        if (v28 < v121)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_1D1E0BE44(v122);
        }

        if (v120 - 2 >= *(v122 + 2))
        {
          goto LABEL_137;
        }

        v124 = &v122[16 * v120];
        *v124 = v121;
        *(v124 + 1) = v28;
        v148 = v122;
        result = sub_1D1E0BDB8(v120 - 1);
        v28 = v148;
        v120 = *(v148 + 16);
        if (v120 <= 1)
        {
        }
      }

      goto LABEL_147;
    }
  }

  v146 = v24;
  v126 = a4;
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  v134 = a3;
  v127 = v9;
  v147 = v8;
  while (1)
  {
    v29 = v27 + 1;
    if (v27 + 1 >= v26)
    {
      goto LABEL_37;
    }

    v138 = v26;
    a3 = *a3;
    v30 = *(v9 + 72);
    v140 = v27 + 1;
    v31 = v130;
    sub_1D1DC9148(a3 + v30 * v29, v130, type metadata accessor for StaticHome);
    v133 = v27;
    v141 = v30;
    v29 = v131;
    sub_1D1DC9148(a3 + v30 * v27, v131, type metadata accessor for StaticHome);
    v32 = *(v8 + 20);
    v33 = *(v31 + v32);
    v34 = *(v31 + v32 + 8);
    v35 = (v29 + v32);
    v36 = v33 == *v35 && v34 == v35[1];
    v129 = v5;
    LODWORD(v139) = v36 ? 0 : sub_1D1E6904C();
    v128 = v28;
    sub_1D1DC91B0(v131, type metadata accessor for StaticHome);
    result = sub_1D1DC91B0(v130, type metadata accessor for StaticHome);
    v37 = v133 + 2;
    v38 = v140;
    v39 = v141 * (v133 + 2);
    v40 = a3 + v39;
    v41 = v141 * v140;
    v42 = a3 + v141 * v140;
    do
    {
      v9 = v37;
      v28 = v38;
      v44 = v41;
      v5 = v39;
      if (v37 >= v138)
      {
        break;
      }

      a3 = v142;
      sub_1D1DC9148(v40, v142, type metadata accessor for StaticHome);
      v45 = v143;
      sub_1D1DC9148(v42, v143, type metadata accessor for StaticHome);
      v46 = *(v147 + 20);
      v47 = *(a3 + v46);
      v48 = *(a3 + v46 + 8);
      v49 = (v45 + v46);
      v50 = v47 == *v49 && v48 == v49[1];
      v43 = v50 ? 0 : sub_1D1E6904C();
      v29 = type metadata accessor for StaticHome;
      sub_1D1DC91B0(v143, type metadata accessor for StaticHome);
      result = sub_1D1DC91B0(v142, type metadata accessor for StaticHome);
      v37 = v9 + 1;
      v40 += v141;
      v42 += v141;
      v38 = v28 + 1;
      v41 = v44 + v141;
      v39 = v5 + v141;
    }

    while (((v139 ^ v43) & 1) == 0);
    if (v139)
    {
      v51 = v133;
      if (v9 < v133)
      {
        goto LABEL_140;
      }

      if (v133 >= v9)
      {
        v29 = v9;
        v28 = v128;
        v5 = v129;
        a3 = v134;
        v9 = v127;
        v8 = v147;
        v27 = v133;
        goto LABEL_37;
      }

      v52 = v133 * v141;
      v8 = v147;
      do
      {
        if (v51 != v28)
        {
          v54 = *v134;
          if (!*v134)
          {
            goto LABEL_146;
          }

          sub_1D1DCF39C(v54 + v52, v137, type metadata accessor for StaticHome);
          if (v52 < v44 || v54 + v52 >= (v54 + v5))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v52 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1D1DCF39C(v137, v54 + v44, type metadata accessor for StaticHome);
          v8 = v147;
        }

        ++v51;
        v44 -= v141;
        v5 -= v141;
        v52 += v141;
      }

      while (v51 < v28--);
      v29 = v9;
      v28 = v128;
      v5 = v129;
      a3 = v134;
      v9 = v127;
    }

    else
    {
      v29 = v9;
      v28 = v128;
      v5 = v129;
      a3 = v134;
      v9 = v127;
      v8 = v147;
    }

    v27 = v133;
LABEL_37:
    v55 = a3[1];
    if (v29 < v55)
    {
      if (__OFSUB__(v29, v27))
      {
        goto LABEL_139;
      }

      if (v29 - v27 < v126)
      {
        v56 = v27 + v126;
        if (__OFADD__(v27, v126))
        {
          goto LABEL_141;
        }

        if (v56 >= v55)
        {
          v56 = a3[1];
        }

        if (v56 < v27)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v29 != v56)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v29 < v27)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
    }

    v75 = *(v28 + 16);
    v74 = *(v28 + 24);
    v76 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      result = sub_1D177D070((v74 > 1), v75 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 16) = v76;
    v77 = v28 + 16 * v75;
    *(v77 + 32) = v27;
    *(v77 + 40) = v29;
    v140 = v29;
    v29 = *v132;
    if (!*v132)
    {
      goto LABEL_148;
    }

    if (v75)
    {
      while (1)
      {
        v78 = v76 - 1;
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v79 = *(v28 + 32);
          v80 = *(v28 + 40);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_80:
          if (v82)
          {
            goto LABEL_127;
          }

          v95 = (v28 + 16 * v76);
          v97 = *v95;
          v96 = v95[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_130;
          }

          v101 = (v28 + 32 + 16 * v78);
          v103 = *v101;
          v102 = v101[1];
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_134;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              v78 = v76 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v105 = (v28 + 16 * v76);
        v107 = *v105;
        v106 = v105[1];
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_94:
        if (v100)
        {
          goto LABEL_129;
        }

        v108 = v28 + 16 * v78;
        v110 = *(v108 + 32);
        v109 = *(v108 + 40);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_132;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_101:
        v116 = v78 - 1;
        if (v78 - 1 >= v76)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
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
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v117 = *(v28 + 32 + 16 * v116);
        v118 = *(v28 + 32 + 16 * v78 + 8);
        sub_1D1DC6A44(*a3 + *(v9 + 72) * v117, *a3 + *(v9 + 72) * *(v28 + 32 + 16 * v78), *a3 + *(v9 + 72) * v118, v29);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1D1E0BE44(v28);
        }

        if (v116 >= *(v28 + 16))
        {
          goto LABEL_124;
        }

        v119 = v28 + 16 * v116;
        *(v119 + 32) = v117;
        *(v119 + 40) = v118;
        v148 = v28;
        result = sub_1D1E0BDB8(v78);
        v28 = v148;
        v76 = *(v148 + 16);
        if (v76 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = v28 + 32 + 16 * v76;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_125;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_126;
      }

      v90 = (v28 + 16 * v76);
      v92 = *v90;
      v91 = v90[1];
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_128;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_131;
      }

      if (v94 >= v86)
      {
        v112 = (v28 + 32 + 16 * v78);
        v114 = *v112;
        v113 = v112[1];
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_135;
        }

        if (v81 < v115)
        {
          v78 = v76 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v26 = a3[1];
    v27 = v140;
    v8 = v147;
    if (v140 >= v26)
    {
      goto LABEL_111;
    }
  }

  v128 = v28;
  v129 = v5;
  v57 = *a3;
  v58 = *(v9 + 72);
  v59 = *a3 + v58 * (v29 - 1);
  v60 = -v58;
  v133 = v27;
  v61 = v27 - v29;
  v135 = v58;
  v136 = v56;
  v62 = v57 + v29 * v58;
  v63 = v145;
  while (2)
  {
    v139 = v61;
    v140 = v29;
    v138 = v62;
    v64 = v62;
    v141 = v59;
LABEL_49:
    v65 = v146;
    sub_1D1DC9148(v64, v146, type metadata accessor for StaticHome);
    sub_1D1DC9148(v59, v63, type metadata accessor for StaticHome);
    v66 = *(v8 + 20);
    v67 = *(v65 + v66);
    v68 = *(v65 + v66 + 8);
    v69 = (v63 + v66);
    if (v67 == *v69 && v68 == v69[1])
    {
      sub_1D1DC91B0(v63, type metadata accessor for StaticHome);
      sub_1D1DC91B0(v65, type metadata accessor for StaticHome);
LABEL_47:
      v29 = v140 + 1;
      v59 = v141 + v135;
      v61 = v139 - 1;
      v62 = (v138 + v135);
      if (v140 + 1 != v136)
      {
        continue;
      }

      v29 = v136;
      v28 = v128;
      v5 = v129;
      v27 = v133;
      a3 = v134;
      v9 = v127;
      goto LABEL_60;
    }

    break;
  }

  v71 = sub_1D1E6904C();
  sub_1D1DC91B0(v63, type metadata accessor for StaticHome);
  result = sub_1D1DC91B0(v65, type metadata accessor for StaticHome);
  if ((v71 & 1) == 0)
  {
    v8 = v147;
    goto LABEL_47;
  }

  v8 = v147;
  if (v57)
  {
    v72 = v144;
    sub_1D1DCF39C(v64, v144, type metadata accessor for StaticHome);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1DCF39C(v72, v59, type metadata accessor for StaticHome);
    v59 += v60;
    v64 += v60;
    v73 = __CFADD__(v61++, 1);
    v63 = v145;
    if (v73)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}