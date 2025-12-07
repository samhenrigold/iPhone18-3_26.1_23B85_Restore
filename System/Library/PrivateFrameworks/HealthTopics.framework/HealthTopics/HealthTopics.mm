id HKTableFormatter.init(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_251F32144();
  v9 = [v7 initWithColumnTitles_];

  v30 = v6;
  v10 = v9;

  sub_251F21590(&v30);

  v11 = *(v30 + 16);
  if (v11)
  {
    v12 = v2[6];
    v29 = &v5[v2[5]];
    v27 = &v5[v12];
    v13 = &v5[v2[7]];
    v14 = *(v3 + 80);
    v25[1] = v30;
    v15 = v30 + ((v14 + 32) & ~v14);
    v28 = *(v3 + 72);
    v26 = xmmword_251F32B80;
    do
    {
      sub_251F21638(v15, v5);
      sub_251F22BC8(0, &qword_27F4C0D80, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v16 = v10;
      v17 = swift_allocObject();
      *(v17 + 16) = v26;
      *(v17 + 32) = sub_251F31FF4();
      *(v17 + 40) = v18;
      v19 = *(v29 + 1);
      *(v17 + 48) = *v29;
      *(v17 + 56) = v19;
      v20 = *(v27 + 1);
      *(v17 + 64) = *v27;
      *(v17 + 72) = v20;
      v21 = *v13;
      v22 = *(v13 + 1);

      sub_251F2169C(v5);
      *(v17 + 80) = v21;
      *(v17 + 88) = v22;
      v23 = sub_251F32144();
      v10 = v16;

      [v16 appendRow_];

      v15 += v28;
      --v11;
    }

    while (v11);
  }

  else
  {
  }

  return v10;
}

uint64_t sub_251F21590(uint64_t *a1)
{
  v2 = *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_251F285D8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_251F216F8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_251F21638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251F2169C(uint64_t a1)
{
  v2 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251F216F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_251F322A4();
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
        type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
        v6 = sub_251F32154();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_251F21A94(v8, v9, a1, v4);
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
    return sub_251F21824(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251F21824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v8 = MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v37 = *a4;
    v31 = v17;
    v21 = v37 + v17 * a3;
LABEL_6:
    v35 = v18;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    v22 = v18;
    while (1)
    {
      sub_251F21638(v21, v16);
      sub_251F21638(v22, v12);
      v23 = sub_251F31FF4();
      v25 = v24;
      if (v23 == sub_251F31FF4() && v25 == v26)
      {

        sub_251F2169C(v12);
        result = sub_251F2169C(v16);
LABEL_5:
        a3 = v36 + 1;
        v18 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_6;
      }

      v27 = sub_251F322D4();

      sub_251F2169C(v12);
      result = sub_251F2169C(v16);
      if ((v27 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = v38;
      sub_251F22AE4(v21, v38);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_251F22AE4(v28, v22);
      v22 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_251F21A94(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v126 = a1;
  v139 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v8 = *(v139 - 8);
  v9 = MEMORY[0x28223BE20](v139);
  v131 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v138 = &v119 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v141 = &v119 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v140 = &v119 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v137 = &v119 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v136 = &v119 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v125 = &v119 - v22;
  result = MEMORY[0x28223BE20](v21);
  v124 = &v119 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_104:
    v29 = *v126;
    if (!*v126)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_106:
      v142 = v27;
      v115 = *(v27 + 2);
      if (v115 >= 2)
      {
        while (*a3)
        {
          v116 = *&v27[16 * v115];
          v117 = *&v27[16 * v115 + 24];
          sub_251F22464(*a3 + *(v8 + 72) * v116, *a3 + *(v8 + 72) * *&v27[16 * v115 + 16], *a3 + *(v8 + 72) * v117, v29);
          if (v5)
          {
          }

          if (v117 < v116)
          {
            goto LABEL_129;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_251F284B0(v27);
          }

          if (v115 - 2 >= *(v27 + 2))
          {
            goto LABEL_130;
          }

          v118 = &v27[16 * v115];
          *v118 = v116;
          *(v118 + 1) = v117;
          v142 = v27;
          result = sub_251F28424(v115 - 1);
          v27 = v142;
          v115 = *(v142 + 2);
          if (v115 <= 1)
          {
          }
        }

        goto LABEL_140;
      }
    }

LABEL_136:
    result = sub_251F284B0(v27);
    v27 = result;
    goto LABEL_106;
  }

  v120 = a4;
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v128 = a3;
  v121 = v8;
  while (1)
  {
    v28 = v26;
    v29 = v26 + 1;
    if (v26 + 1 < v25)
    {
      v132 = v25;
      v30 = v26;
      v31 = *a3;
      v32 = *(v8 + 72);
      v33 = (v26 + 1);
      sub_251F21638(v31 + v32 * v29, v124);
      v127 = v30;
      v134 = v32;
      sub_251F21638(v31 + v32 * v30, v125);
      v29 = sub_251F31FF4();
      v35 = v34;
      v36 = sub_251F31FF4();
      v123 = v5;
      if (v29 == v36 && v35 == v37)
      {
        LODWORD(v133) = 0;
      }

      else
      {
        LODWORD(v133) = sub_251F322D4();
      }

      v122 = v27;

      sub_251F2169C(v125);
      result = sub_251F2169C(v124);
      v38 = (v127 + 2);
      v39 = v134 * (v127 + 2);
      v40 = v31 + v39;
      v41 = v33;
      v42 = v134 * v33;
      v43 = v31 + v134 * v33;
      do
      {
        v8 = v38;
        a3 = v41;
        v5 = v42;
        v27 = v39;
        if (v38 >= v132)
        {
          break;
        }

        v135 = v38;
        sub_251F21638(v40, v136);
        sub_251F21638(v43, v137);
        v44 = sub_251F31FF4();
        v46 = v45;
        if (v44 == sub_251F31FF4() && v46 == v47)
        {
          v29 = 0;
        }

        else
        {
          v29 = sub_251F322D4();
        }

        sub_251F2169C(v137);
        result = sub_251F2169C(v136);
        v8 = v135;
        v38 = (v135 + 1);
        v40 += v134;
        v43 += v134;
        v41 = (a3 + 1);
        v42 = v5 + v134;
        v39 = &v27[v134];
      }

      while (((v133 ^ v29) & 1) == 0);
      if (v133)
      {
        v28 = v127;
        if (v8 < v127)
        {
          goto LABEL_133;
        }

        if (v127 < v8)
        {
          v48 = v127 * v134;
          v49 = v127;
          do
          {
            if (v49 != a3)
            {
              v51 = *v128;
              if (!*v128)
              {
                goto LABEL_139;
              }

              sub_251F22AE4(v51 + v48, v131);
              if (v48 < v5 || v51 + v48 >= &v27[v51])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != v5)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_251F22AE4(v131, v51 + v5);
            }

            v49 = (v49 + 1);
            v5 -= v134;
            v27 -= v134;
            v48 += v134;
            v50 = v49 < a3;
            a3 = (a3 - 1);
          }

          while (v50);
        }

        v29 = v8;
        v27 = v122;
        v5 = v123;
        a3 = v128;
      }

      else
      {
        v29 = v8;
        v27 = v122;
        v5 = v123;
        v28 = v127;
        a3 = v128;
      }

      v8 = v121;
    }

    v52 = a3[1];
    if (v29 < v52)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_132;
      }

      if (v29 - v28 < v120)
      {
        break;
      }
    }

LABEL_53:
    if (v29 < v28)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251F26FC0(0, *(v27 + 2) + 1, 1, v27);
      v27 = result;
    }

    v70 = *(v27 + 2);
    v69 = *(v27 + 3);
    v71 = v70 + 1;
    if (v70 >= v69 >> 1)
    {
      result = sub_251F26FC0((v69 > 1), v70 + 1, 1, v27);
      v27 = result;
    }

    *(v27 + 2) = v71;
    v72 = &v27[16 * v70];
    *(v72 + 4) = v28;
    *(v72 + 5) = v29;
    v73 = *v126;
    if (!*v126)
    {
      goto LABEL_141;
    }

    v135 = v29;
    if (v70)
    {
      while (1)
      {
        v29 = v71 - 1;
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v74 = *(v27 + 4);
          v75 = *(v27 + 5);
          v84 = __OFSUB__(v75, v74);
          v76 = v75 - v74;
          v77 = v84;
LABEL_73:
          if (v77)
          {
            goto LABEL_120;
          }

          v90 = &v27[16 * v71];
          v92 = *v90;
          v91 = *(v90 + 1);
          v93 = __OFSUB__(v91, v92);
          v94 = v91 - v92;
          v95 = v93;
          if (v93)
          {
            goto LABEL_123;
          }

          v96 = &v27[16 * v29 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v84 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v84)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v94, v99))
          {
            goto LABEL_127;
          }

          if (v94 + v99 >= v76)
          {
            if (v76 < v99)
            {
              v29 = v71 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v100 = &v27[16 * v71];
        v102 = *v100;
        v101 = *(v100 + 1);
        v84 = __OFSUB__(v101, v102);
        v94 = v101 - v102;
        v95 = v84;
LABEL_87:
        if (v95)
        {
          goto LABEL_122;
        }

        v103 = &v27[16 * v29];
        v105 = *(v103 + 4);
        v104 = *(v103 + 5);
        v84 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v84)
        {
          goto LABEL_125;
        }

        if (v106 < v94)
        {
          goto LABEL_3;
        }

LABEL_94:
        v111 = v29 - 1;
        if (v29 - 1 >= v71)
        {
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
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v112 = *&v27[16 * v111 + 32];
        v113 = *&v27[16 * v29 + 40];
        sub_251F22464(*a3 + *(v8 + 72) * v112, *a3 + *(v8 + 72) * *&v27[16 * v29 + 32], *a3 + *(v8 + 72) * v113, v73);
        if (v5)
        {
        }

        if (v113 < v112)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_251F284B0(v27);
        }

        if (v111 >= *(v27 + 2))
        {
          goto LABEL_117;
        }

        v114 = &v27[16 * v111];
        *(v114 + 4) = v112;
        *(v114 + 5) = v113;
        v142 = v27;
        result = sub_251F28424(v29);
        v27 = v142;
        v71 = *(v142 + 2);
        if (v71 <= 1)
        {
          goto LABEL_3;
        }
      }

      v78 = &v27[16 * v71 + 32];
      v79 = *(v78 - 64);
      v80 = *(v78 - 56);
      v84 = __OFSUB__(v80, v79);
      v81 = v80 - v79;
      if (v84)
      {
        goto LABEL_118;
      }

      v83 = *(v78 - 48);
      v82 = *(v78 - 40);
      v84 = __OFSUB__(v82, v83);
      v76 = v82 - v83;
      v77 = v84;
      if (v84)
      {
        goto LABEL_119;
      }

      v85 = &v27[16 * v71];
      v87 = *v85;
      v86 = *(v85 + 1);
      v84 = __OFSUB__(v86, v87);
      v88 = v86 - v87;
      if (v84)
      {
        goto LABEL_121;
      }

      v84 = __OFADD__(v76, v88);
      v89 = v76 + v88;
      if (v84)
      {
        goto LABEL_124;
      }

      if (v89 >= v81)
      {
        v107 = &v27[16 * v29 + 32];
        v109 = *v107;
        v108 = *(v107 + 1);
        v84 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v84)
        {
          goto LABEL_128;
        }

        if (v76 < v110)
        {
          v29 = v71 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v25 = a3[1];
    v26 = v135;
    if (v135 >= v25)
    {
      goto LABEL_104;
    }
  }

  v53 = v28 + v120;
  if (__OFADD__(v28, v120))
  {
    goto LABEL_134;
  }

  if (v53 >= v52)
  {
    v53 = a3[1];
  }

  if (v53 < v28)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v29 == v53)
  {
    goto LABEL_53;
  }

  v122 = v27;
  v123 = v5;
  v54 = *a3;
  v55 = *(v8 + 72);
  v56 = *a3 + v55 * (v29 - 1);
  v57 = v28;
  v58 = -v55;
  v127 = v57;
  v59 = v57 - v29;
  v129 = v55;
  v130 = v53;
  v60 = v54 + v29 * v55;
LABEL_44:
  v134 = v56;
  v135 = v29;
  v132 = v60;
  v133 = v59;
  v61 = v56;
  while (1)
  {
    sub_251F21638(v60, v140);
    sub_251F21638(v61, v141);
    v62 = sub_251F31FF4();
    v64 = v63;
    if (v62 == sub_251F31FF4() && v64 == v65)
    {

      sub_251F2169C(v141);
      sub_251F2169C(v140);
LABEL_43:
      v29 = v135 + 1;
      v56 = v134 + v129;
      v59 = v133 - 1;
      v60 = v132 + v129;
      if (v135 + 1 == v130)
      {
        v29 = v130;
        v27 = v122;
        v5 = v123;
        v28 = v127;
        a3 = v128;
        v8 = v121;
        goto LABEL_53;
      }

      goto LABEL_44;
    }

    v66 = sub_251F322D4();

    sub_251F2169C(v141);
    result = sub_251F2169C(v140);
    if ((v66 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v54)
    {
      break;
    }

    v67 = v138;
    sub_251F22AE4(v60, v138);
    swift_arrayInitWithTakeFrontToBack();
    sub_251F22AE4(v67, v61);
    v61 += v58;
    v60 += v58;
    if (__CFADD__(v59++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_251F22464(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v8 = MEMORY[0x28223BE20](v53);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v47 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v55 = &v47 - v13;
  result = MEMORY[0x28223BE20](v12);
  v54 = &v47 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_66;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_67;
  }

  v19 = (a2 - a1) / v17;
  v58 = a1;
  v57 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = a4 + v21;
    if (v21 >= 1)
    {
      v33 = -v17;
      v34 = a4 + v21;
      v50 = a4;
      do
      {
        v48 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v37 = v32;
        v54 = v35;
        v55 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v58 = v35;
            v32 = v48;
            goto LABEL_63;
          }

          v38 = a3;
          v49 = v37;
          v39 = v34 + v33;
          sub_251F21638(v34 + v33, v51);
          sub_251F21638(v36, v52);
          v40 = sub_251F31FF4();
          v42 = v41;
          if (v40 == sub_251F31FF4() && v42 == v43)
          {
            v44 = 0;
          }

          else
          {
            v44 = sub_251F322D4();
          }

          a3 = v38 + v33;
          sub_251F2169C(v52);
          sub_251F2169C(v51);
          if (v44)
          {
            break;
          }

          v37 = v34 + v33;
          v45 = v50;
          if (v38 < v34 || a3 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v55;
          }

          else
          {
            v36 = v55;
            if (v38 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v34 += v33;
          v35 = v54;
          if (v39 <= v45)
          {
            v32 = v39;
            v58 = v54;
            goto LABEL_63;
          }
        }

        v46 = v50;
        if (v38 < v54 || a3 >= v54)
        {
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a2 = v55;
          if (v38 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v32 = v49;
      }

      while (v34 > v46);
    }

    v58 = a2;
LABEL_63:
    v56 = v32;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v20;
    v56 = a4 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      do
      {
        v23 = a3;
        v24 = v17;
        v25 = a2;
        sub_251F21638(a2, v54);
        sub_251F21638(a4, v55);
        v26 = sub_251F31FF4();
        v28 = v27;
        if (v26 == sub_251F31FF4() && v28 == v29)
        {

          sub_251F2169C(v55);
          sub_251F2169C(v54);
        }

        else
        {
          v30 = sub_251F322D4();

          sub_251F2169C(v55);
          sub_251F2169C(v54);
          if (v30)
          {
            v17 = v24;
            a2 = v25 + v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
              a3 = v23;
            }

            else
            {
              a3 = v23;
              if (a1 != v25)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            goto LABEL_34;
          }
        }

        v17 = v24;
        v31 = a4 + v24;
        a2 = v25;
        if (a1 < a4 || a1 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v23;
        }

        else
        {
          a3 = v23;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v57 = v31;
        a4 = v31;
LABEL_34:
        a1 += v17;
        v58 = a1;
      }

      while (a4 < v52 && a2 < a3);
    }
  }

  sub_251F22A00(&v58, &v57, &v56);
  return 1;
}

uint64_t sub_251F22A00(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_251F22AE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251F22B58(uint64_t a1, int a2)
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

uint64_t sub_251F22B78(uint64_t result, int a2, int a3)
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

void sub_251F22BC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251F22C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6369706F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251F322D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251F22D24(uint64_t a1)
{
  v2 = sub_251F22F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F22D60(uint64_t a1)
{
  v2 = sub_251F22F48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TopicRegistryListRequest.encode(to:)(void *a1)
{
  sub_251F24DA4(0, &qword_27F4C0D90, sub_251F22F48, &type metadata for TopicRegistryListRequest.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F22F48();
  sub_251F32344();
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA0, MEMORY[0x277D12628], MEMORY[0x277D12630]);
  sub_251F32294();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_251F22F48()
{
  result = qword_27F4C0D98;
  if (!qword_27F4C0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0D98);
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

uint64_t TopicRegistryListRequest.hash(into:)(uint64_t a1)
{
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA8, MEMORY[0x277D12628], MEMORY[0x277D12638]);

  return sub_251F320C4();
}

uint64_t sub_251F23064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TopicRegistryListRequest.hashValue.getter()
{
  sub_251F322F4();
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA8, MEMORY[0x277D12628], MEMORY[0x277D12638]);
  sub_251F320C4();
  return sub_251F32314();
}

uint64_t TopicRegistryListRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_251F32014();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v19 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F24DA4(0, &qword_27F4C0DB0, sub_251F22F48, &type metadata for TopicRegistryListRequest.CodingKeys, MEMORY[0x277D844C8]);
  v6 = v5;
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TopicRegistryListRequest(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F22F48();
  v12 = v20;
  sub_251F32334();
  if (!v12)
  {
    v13 = v17;
    v14 = v18;
    sub_251F23064(&qword_27F4C0DB8, MEMORY[0x277D12628], MEMORY[0x277D12640]);
    sub_251F32274();
    (*(v13 + 8))(v8, v6);
    (*(v14 + 32))(v11, v19, v3);
    sub_251F23828(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s12HealthTopics24TopicRegistryListRequestV5topic0aB4Core0C0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_251F32014();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_251F23480(void *a1)
{
  sub_251F24DA4(0, &qword_27F4C0D90, sub_251F22F48, &type metadata for TopicRegistryListRequest.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F22F48();
  sub_251F32344();
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA0, MEMORY[0x277D12628], MEMORY[0x277D12630]);
  sub_251F32294();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_251F2362C()
{
  sub_251F322F4();
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA8, MEMORY[0x277D12628], MEMORY[0x277D12638]);
  sub_251F320C4();
  return sub_251F32314();
}

uint64_t sub_251F236B4(uint64_t a1)
{
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA8, MEMORY[0x277D12628], MEMORY[0x277D12638]);

  return sub_251F320C4();
}

uint64_t sub_251F23738(uint64_t a1)
{
  sub_251F322F4();
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA8, MEMORY[0x277D12628], MEMORY[0x277D12638]);
  sub_251F320C4();
  return sub_251F32314();
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_251F23828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRegistryListRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TopicRegistryListResponse.TopicRegistryEntryResponse.topicRequestType.getter()
{
  v1 = *(v0 + *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) + 20));

  return v1;
}

uint64_t sub_251F238F0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TopicRegistryListResponse.TopicRegistryEntryResponse.topicResponseType.getter()
{
  v1 = *(v0 + *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) + 24));

  return v1;
}

uint64_t TopicRegistryListResponse.TopicRegistryEntryResponse.topicEvaluatorType.getter()
{
  v1 = *(v0 + *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) + 28));

  return v1;
}

int *TopicRegistryListResponse.TopicRegistryEntryResponse.init(topic:topicRequestType:topicResponseType:topicEvaluatorType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_251F32014();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v18 = (a8 + result[5]);
  *v18 = a2;
  v18[1] = a3;
  v19 = (a8 + result[6]);
  *v19 = a4;
  v19[1] = a5;
  v20 = (a8 + result[7]);
  *v20 = a6;
  v20[1] = a7;
  return result;
}

uint64_t static TopicRegistryListResponse.TopicRegistryEntryResponse.< infix(_:_:)(uint64_t a1)
{
  v1 = sub_251F31FF4();
  v3 = v2;
  if (v1 == sub_251F31FF4() && v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_251F322D4();
  }

  return v5 & 1;
}

uint64_t sub_251F23B08()
{
  v1 = *v0;
  sub_251F322F4();
  MEMORY[0x2530929F0](v1);
  return sub_251F32314();
}

uint64_t sub_251F23B7C(uint64_t a1)
{
  v2 = *v1;
  sub_251F322F4();
  MEMORY[0x2530929F0](v2);
  return sub_251F32314();
}

unint64_t sub_251F23BC0()
{
  v1 = 0x6369706F74;
  v2 = 0xD000000000000012;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_251F23C44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_251F25A68(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_251F23C78(uint64_t a1)
{
  v2 = sub_251F24CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F23CB4(uint64_t a1)
{
  v2 = sub_251F24CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TopicRegistryListResponse.TopicRegistryEntryResponse.encode(to:)(void *a1)
{
  sub_251F24DA4(0, &qword_27F4C0DC0, sub_251F24CA4, &type metadata for TopicRegistryListResponse.TopicRegistryEntryResponse.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F24CA4();
  sub_251F32344();
  v13 = 0;
  sub_251F32014();
  sub_251F23064(&qword_27F4C0DA0, MEMORY[0x277D12628], MEMORY[0x277D12630]);
  sub_251F32294();
  if (!v1)
  {
    type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
    v12 = 1;
    sub_251F32284();
    v11 = 2;
    sub_251F32284();
    v10 = 3;
    sub_251F32284();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TopicRegistryListResponse.TopicRegistryEntryResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_251F32014();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F24DA4(0, &qword_27F4C0DD0, sub_251F24CA4, &type metadata for TopicRegistryListResponse.TopicRegistryEntryResponse.CodingKeys, MEMORY[0x277D844C8]);
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F24CA4();
  v34 = v7;
  v11 = v35;
  sub_251F32334();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = a1;
  v13 = v10;
  v14 = v30;
  v39 = 0;
  sub_251F23064(&qword_27F4C0DB8, MEMORY[0x277D12628], MEMORY[0x277D12640]);
  v15 = v31;
  sub_251F32274();
  (*(v14 + 32))(v10, v15, v3);
  v38 = 1;
  v16 = sub_251F32264();
  v17 = &v10[v8[5]];
  *v17 = v16;
  v17[1] = v18;
  v37 = 2;
  v19 = sub_251F32264();
  v20 = v12;
  v21 = (v13 + v8[6]);
  *v21 = v19;
  v21[1] = v22;
  v36 = 3;
  v23 = sub_251F32264();
  v25 = v24;
  (*(v32 + 8))(v34, v33);
  v26 = (v13 + v8[7]);
  *v26 = v23;
  v26[1] = v25;
  sub_251F21638(v13, v29);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return sub_251F2169C(v13);
}

uint64_t sub_251F24384(uint64_t a1)
{
  v1 = sub_251F31FF4();
  v3 = v2;
  if (v1 == sub_251F31FF4() && v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_251F322D4();
  }

  return v5 & 1;
}

uint64_t sub_251F24410(uint64_t a1)
{
  v1 = sub_251F31FF4();
  v3 = v2;
  if (v1 == sub_251F31FF4() && v3 == v4)
  {

    v5 = 1;
  }

  else
  {
    v6 = sub_251F322D4();

    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_251F244B0(uint64_t a1)
{
  v1 = sub_251F31FF4();
  v3 = v2;
  if (v1 == sub_251F31FF4() && v3 == v4)
  {

    v5 = 1;
  }

  else
  {
    v6 = sub_251F322D4();

    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_251F24550(uint64_t a1)
{
  v1 = sub_251F31FF4();
  v3 = v2;
  if (v1 == sub_251F31FF4() && v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_251F322D4();
  }

  return v5 & 1;
}

uint64_t sub_251F24620()
{
  sub_251F322F4();
  MEMORY[0x2530929F0](0);
  return sub_251F32314();
}

uint64_t sub_251F24664(uint64_t a1)
{
  sub_251F322F4();
  MEMORY[0x2530929F0](0);
  return sub_251F32314();
}

uint64_t sub_251F246BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251F322D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251F24744(uint64_t a1)
{
  v2 = sub_251F24CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251F24780(uint64_t a1)
{
  v2 = sub_251F24CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TopicRegistryListResponse.encode(to:)(void *a1)
{
  sub_251F24DA4(0, &qword_27F4C0DD8, sub_251F24CF8, &type metadata for TopicRegistryListResponse.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F24CF8();

  sub_251F32344();
  v10[3] = v8;
  sub_251F24D4C(0);
  sub_251F24E0C(&qword_27F4C0DF0, &qword_27F4C0DF8, &protocol conformance descriptor for TopicRegistryListResponse.TopicRegistryEntryResponse, MEMORY[0x277D83948]);
  sub_251F32294();

  return (*(v5 + 8))(v7, v4);
}

uint64_t TopicRegistryListResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  sub_251F24DA4(0, &qword_27F4C0E00, sub_251F24CF8, &type metadata for TopicRegistryListResponse.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251F24CF8();
  sub_251F32334();
  if (!v2)
  {
    v9 = v12;
    sub_251F24D4C(0);
    sub_251F24E0C(&qword_27F4C0E08, &qword_27F4C0E10, &protocol conformance descriptor for TopicRegistryListResponse.TopicRegistryEntryResponse, MEMORY[0x277D83978]);
    sub_251F32274();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t _s12HealthTopics25TopicRegistryListResponseV0cd5EntryF0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s12HealthTopics24TopicRegistryListRequestV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_251F322D4() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v11 == *v13 && v12 == v13[1];
  if (!v14 && (sub_251F322D4() & 1) == 0)
  {
    return 0;
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  if (v16 == *v18 && v17 == v18[1])
  {
    return 1;
  }

  return sub_251F322D4();
}

unint64_t sub_251F24CA4()
{
  result = qword_27F4C0DC8;
  if (!qword_27F4C0DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0DC8);
  }

  return result;
}

unint64_t sub_251F24CF8()
{
  result = qword_27F4C0DE0;
  if (!qword_27F4C0DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0DE0);
  }

  return result;
}

void sub_251F24D4C(uint64_t a1)
{
  if (!qword_27F4C0DE8)
  {
    type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(255);
    v1 = sub_251F32164();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4C0DE8);
    }
  }
}

void sub_251F24DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_251F24E0C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_251F24D4C(255);
    sub_251F23064(a2, type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251F24F78()
{
  result = qword_27F4C0E30;
  if (!qword_27F4C0E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E30);
  }

  return result;
}

unint64_t sub_251F24FD0()
{
  result = qword_27F4C0E38;
  if (!qword_27F4C0E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E38);
  }

  return result;
}

uint64_t sub_251F250C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251F32014();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_251F25148(uint64_t a1, uint64_t a2)
{
  v4 = sub_251F32014();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_251F251B8(uint64_t a1)
{
  result = sub_251F32014();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_251F25230(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_251F25278(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251F252D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251F32014();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_251F253AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251F32014();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251F25468(uint64_t a1)
{
  result = sub_251F32014();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TopicRegistryListResponse.TopicRegistryEntryResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TopicRegistryListResponse.TopicRegistryEntryResponse.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_251F25670(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_251F256C4(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_251F25754()
{
  result = qword_27F4C0E70;
  if (!qword_27F4C0E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E70);
  }

  return result;
}

unint64_t sub_251F257AC()
{
  result = qword_27F4C0E78;
  if (!qword_27F4C0E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E78);
  }

  return result;
}

unint64_t sub_251F25804()
{
  result = qword_27F4C0E80;
  if (!qword_27F4C0E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E80);
  }

  return result;
}

unint64_t sub_251F2585C()
{
  result = qword_27F4C0E88;
  if (!qword_27F4C0E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E88);
  }

  return result;
}

unint64_t sub_251F258B4()
{
  result = qword_27F4C0E90;
  if (!qword_27F4C0E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E90);
  }

  return result;
}

unint64_t sub_251F2590C()
{
  result = qword_27F4C0E98;
  if (!qword_27F4C0E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0E98);
  }

  return result;
}

unint64_t sub_251F25964()
{
  result = qword_27F4C0EA0;
  if (!qword_27F4C0EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0EA0);
  }

  return result;
}

unint64_t sub_251F259BC()
{
  result = qword_27F4C0EA8;
  if (!qword_27F4C0EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0EA8);
  }

  return result;
}

unint64_t sub_251F25A14()
{
  result = qword_27F4C0EB0;
  if (!qword_27F4C0EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0EB0);
  }

  return result;
}

uint64_t sub_251F25A68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6369706F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_251F322D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000251F335D0 == a2 || (sub_251F322D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000251F335F0 == a2 || (sub_251F322D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000251F33610 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_251F322D4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

BOOL sub_251F25BF0(uint64_t *a1, void *a2)
{
  v4 = *a2 == *a1 && a2[1] == a1[1];
  if (v4 || (sub_251F322D4()) && (a2[2] == a1[2] ? (v5 = a2[3] == a1[3]) : (v5 = 0), (v5 || (sub_251F322D4()) && (a2[4] == a1[4] && a2[5] == a1[5] || (sub_251F322D4())) && a2[6] == a1[6] && a2[7] == a1[7])
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_251F322D4();
  }

  return (v6 & 1) == 0;
}

BOOL sub_251F25CF8(void *a1, uint64_t *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_251F322D4()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_251F322D4()) && (a1[4] == a2[4] && a1[5] == a2[5] || (sub_251F322D4())) && a1[6] == a2[6] && a1[7] == a2[7])
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_251F322D4();
  }

  return (v6 & 1) == 0;
}

uint64_t sub_251F25E00(uint64_t *a1, void *a2)
{
  v4 = *a2 == *a1 && a2[1] == a1[1];
  if (v4 || (sub_251F322D4() & 1) != 0)
  {
    v5 = a2[2] == a1[2] && a2[3] == a1[3];
    if (v5 || (sub_251F322D4()) && (a2[4] == a1[4] && a2[5] == a1[5] || (sub_251F322D4()) && a2[6] == a1[6] && a2[7] == a1[7])
    {
      return 0;
    }
  }

  return sub_251F322D4();
}

void *HKTableFormatter.init(_:)(uint64_t a1)
{
  v137 = sub_251F31E74();
  v2 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v136 = &v113 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_251F31EB4();
  v4 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_251F32014();
  v6 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v132 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251F31F04();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v130 = (&v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v140 = &v113 - v12;
  v152 = sub_251F31F74();
  v13 = *(v152 - 8);
  v14 = MEMORY[0x28223BE20](v152);
  v153 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v119 = &v113 - v16;
  sub_251F28B10(0, &qword_27F4C0EB8, sub_251F26B98, MEMORY[0x277D83D88]);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v141 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v139 = &v113 - v20;
  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = sub_251F32144();
  v23 = [v21 initWithColumnTitles_];

  v117 = v23;
  v24.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  v25 = 0;
  v121 = a1;
  v28 = *(a1 + 64);
  v27 = a1 + 64;
  v26 = v28;
  v29 = 1 << *(v27 - 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v26;
  v114 = (v29 + 63) >> 6;
  v118 = v13 + 16;
  v142 = (v13 + 32);
  v128 = (v9 + 16);
  v127 = (v9 + 88);
  v126 = *MEMORY[0x277D125B8];
  v116 = *MEMORY[0x277D125B0];
  v138 = (v9 + 8);
  v115 = (v9 + 96);
  v125 = (v6 + 8);
  v124 = (v4 + 8);
  v123 = (v2 + 8);
  v154 = MEMORY[0x277D84F90];
  v120 = v13;
  v122 = (v13 + 8);
  v131 = v8;
  v129 = v27;
  if ((v30 & v26) == 0)
  {
LABEL_5:
    if (v114 <= v25 + 1)
    {
      v35 = v25 + 1;
    }

    else
    {
      v35 = v114;
    }

    v36 = v35 - 1;
    v34 = v140;
    v37 = v141;
    while (1)
    {
      v33 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v33 >= v114)
      {
        sub_251F26B98(0);
        v46 = v89;
        (*(*(v89 - 8) + 56))(v37, 1, 1, v89);
        v31 = 0;
        v25 = v36;
        goto LABEL_14;
      }

      v31 = *(v27 + 8 * v33);
      ++v25;
      if (v31)
      {
        v32 = v8;
        v25 = v33;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_37:
    v154 = sub_251F287E8(v154);
    goto LABEL_32;
  }

  while (1)
  {
    v32 = v8;
    v33 = v25;
    v34 = v140;
LABEL_13:
    v38 = __clz(__rbit64(v31));
    v31 &= v31 - 1;
    v39 = v38 | (v33 << 6);
    v40 = v121;
    v41 = v120;
    v42 = v119;
    v43 = v152;
    (*(v120 + 16))(v119, *(v121 + 48) + *(v120 + 72) * v39, v152, v24);
    v44 = *(*(v40 + 56) + 8 * v39);
    sub_251F26B98(0);
    v46 = v45;
    v47 = *(v45 + 48);
    v48 = *(v41 + 32);
    v37 = v141;
    v48(v141, v42, v43);
    *(v37 + v47) = v44;
    (*(*(v46 - 8) + 56))(v37, 0, 1, v46);

    v8 = v32;
LABEL_14:
    v49 = v139;
    sub_251F26C0C(v37, v139);
    sub_251F26B98(0);
    v50 = (*(*(v46 - 8) + 48))(v49, 1, v46);
    v51 = v138;
    if (v50 == 1)
    {
      break;
    }

    (*v142)(v153, v49, v152);
    sub_251F31F14();
    v52 = v130;
    (*v128)(v130, v34, v8);
    v53 = (*v127)(v52, v8);
    if (v53 == v126)
    {
      (*v51)(v34, v8);
      (*v115)(v52, v8);
      v54 = *v52;
      v55 = v52[1];
    }

    else
    {
      v56 = v53;
      v57 = *v51;
      (*v51)(v34, v8);
      if (v56 == v116)
      {
        v55 = 0xE700000000000000;
        v54 = 0x6468746C616568;
      }

      else
      {
        v57(v52, v8);
        v55 = 0xE700000000000000;
        v54 = 0x6E776F6E6B6E75;
      }
    }

    v151 = v54;
    v58 = v132;
    sub_251F31EF4();
    v59 = sub_251F31FF4();
    v149 = v60;
    v150 = v59;
    (*v125)(v58, v133);
    sub_251F31F24();
    v61 = v156;
    __swift_project_boxed_opaque_existential_1(v155, v156);
    v157 = v61;
    swift_getMetatypeMetadata();
    v62 = sub_251F32114();
    v147 = v63;
    v148 = v62;
    v64 = v134;
    sub_251F31F64();
    v146 = sub_251F31E84();
    *&v145 = v65;
    (*v124)(v64, v135);
    v66 = sub_251F31F44();
    v68 = 7104878;
    if (v67)
    {
      v68 = v66;
    }

    v144 = v68;
    v69 = 0xE300000000000000;
    if (v67)
    {
      v69 = v67;
    }

    v143 = v69;
    sub_251F31EE4();
    v70 = v136;
    sub_251F31E54();
    v71 = sub_251F31E64();
    (*v123)(v70, v137);
    v72 = HKDiagnosticStringFromDate();

    v73 = sub_251F320F4();
    v75 = v74;

    sub_251F31EE4();
    v76 = HKDiagnosticStringFromDuration();
    v77 = sub_251F320F4();
    v79 = v78;

    __swift_destroy_boxed_opaque_existential_1(v155);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v154 = sub_251F270E8(0, *(v154 + 2) + 1, 1, v154);
    }

    v81 = *(v154 + 2);
    v80 = *(v154 + 3);
    if (v81 >= v80 >> 1)
    {
      v154 = sub_251F270E8((v80 > 1), v81 + 1, 1, v154);
    }

    (*v122)(v153, v152);
    v82 = v154;
    *(v154 + 2) = v81 + 1;
    v83 = &v82[112 * v81];
    v84 = v150;
    *(v83 + 4) = v151;
    *(v83 + 5) = v55;
    v85 = v148;
    v86 = v149;
    *(v83 + 6) = v84;
    *(v83 + 7) = v86;
    *(v83 + 8) = v85;
    v87 = v146;
    *(v83 + 9) = v147;
    *(v83 + 10) = v87;
    v88 = v144;
    *(v83 + 11) = v145;
    *(v83 + 12) = v88;
    *(v83 + 13) = v143;
    *(v83 + 14) = v73;
    *(v83 + 15) = v75;
    *(v83 + 16) = v77;
    *(v83 + 17) = v79;
    v8 = v131;
    v27 = v129;
    if (!v31)
    {
      goto LABEL_5;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_32:
  v90 = v117;
  v91 = v154;
  v92 = *(v154 + 2);
  v155[0] = (v154 + 32);
  v155[1] = v92;
  sub_251F27214(v155);
  v93 = *(v91 + 2);
  if (v93)
  {
    sub_251F28A68(0, &qword_27F4C0D80, MEMORY[0x277D837D0]);
    v146 = v94;
    v95 = v154 + 136;
    v145 = xmmword_251F331F0;
    do
    {
      v153 = v93;
      v96 = *(v95 - 13);
      v97 = *(v95 - 12);
      v98 = *(v95 - 11);
      v99 = *(v95 - 10);
      v100 = *(v95 - 8);
      v151 = *(v95 - 9);
      v152 = v98;
      v101 = *(v95 - 7);
      v102 = *(v95 - 6);
      v103 = *(v95 - 4);
      v149 = *(v95 - 5);
      v150 = v101;
      v104 = *(v95 - 3);
      v105 = *(v95 - 2);
      v106 = *v95;
      v147 = *(v95 - 1);
      v148 = v104;
      v107 = swift_allocObject();
      *(v107 + 16) = v145;
      *(v107 + 32) = v96;
      *(v107 + 40) = v97;
      v90 = v117;
      v108 = v151;
      *(v107 + 48) = v152;
      *(v107 + 56) = v99;
      *(v107 + 64) = v108;
      *(v107 + 72) = v100;
      v109 = v149;
      *(v107 + 80) = v150;
      *(v107 + 88) = v102;
      *(v107 + 96) = v109;
      *(v107 + 104) = v103;
      v110 = v147;
      *(v107 + 112) = v148;
      *(v107 + 120) = v105;
      *(v107 + 128) = v110;
      *(v107 + 136) = v106;

      v111 = sub_251F32144();

      [v90 appendRow_];

      v95 += 112;
      v93 = v153 - 1;
    }

    while (v153 != 1);
  }

  return v90;
}

void sub_251F26B98(uint64_t a1)
{
  if (!qword_27F4C0EC0)
  {
    sub_251F31F74();
    sub_251F31F34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4C0EC0);
    }
  }
}

uint64_t sub_251F26C0C(uint64_t a1, uint64_t a2)
{
  sub_251F28B10(0, &qword_27F4C0EB8, sub_251F26B98, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251F26CA0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v13 = a1[5];
  v14 = a1[4];
  v11 = a1[7];
  v12 = a1[6];
  v4 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v6 = a2[5];
  v9 = a2[7];
  v10 = a2[6];
  if (*a1 == *a2 && a1[1] == a2[1] || (sub_251F322D4()) && (v2 == v4 && v3 == v5 || (sub_251F322D4()) && (v14 == v7 && v13 == v6 || (sub_251F322D4()) && v12 == v10 && v11 == v9)
  {
    return 0;
  }

  return sub_251F322D4();
}

BOOL sub_251F26E20(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_251F25BF0(v13, v14);
}

BOOL sub_251F26E88(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_251F25CF8(v13, v14);
}

uint64_t sub_251F26EF0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_251F25E00(v13, v14) & 1;
}

uint64_t sub_251F26F58(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_251F2892C(v13, v14) & 1;
}

char *sub_251F26FC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_251F28B10(0, &qword_27F4C0ED8, sub_251F28AB8, MEMORY[0x277D84560]);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_251F270E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_251F28A68(0, &qword_27F4C0ED0, &_s18RequestRegistryRowVN);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_251F27214(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_251F322A4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_251F32154();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_251F27564(v7, v8, a1, v4);
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
    return sub_251F2730C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251F2730C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 112 * a3 - 112;
    v5 = result - a3;
LABEL_5:
    v20 = v4;
    v21 = a3;
    v19 = v5;
    v6 = v5;
    while (1)
    {
      if ((v39 = v6, v7 = (v4 + 112), v8 = *(v4 + 136), v30 = *(v4 + 144), v31 = *(v4 + 128), v25 = *(v4 + 168), v26 = *(v4 + 160), v10 = *(v4 + 16), v9 = *(v4 + 24), v28 = *(v4 + 32), v29 = *(v4 + 152), v27 = *(v4 + 40), v23 = *(v4 + 56), v24 = *(v4 + 48), *(v4 + 112) == *v4) && *(v4 + 120) == *(v4 + 8) || (sub_251F322D4()) && (v31 == v10 && v8 == v9 || (sub_251F322D4()) && (v30 == v28 && v29 == v27 || (sub_251F322D4()))
      {
        result = v26;
        v11 = v39;
        if (v26 == v24 && v25 == v23 || (result = sub_251F322D4(), (result & 1) == 0))
        {
LABEL_4:
          a3 = v21 + 1;
          v4 = v20 + 112;
          v5 = v19 - 1;
          if (v21 + 1 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else
      {
        result = sub_251F322D4();
        v11 = v39;
        if ((result & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v22)
      {
        break;
      }

      v36 = *(v4 + 176);
      v37 = *(v4 + 192);
      v38 = *(v4 + 208);
      v32 = *v7;
      v33 = *(v4 + 128);
      v34 = *(v4 + 144);
      v35 = *(v4 + 160);
      v12 = *(v4 + 16);
      *v7 = *v4;
      *(v4 + 128) = v12;
      v13 = *(v4 + 32);
      v14 = *(v4 + 48);
      v15 = *(v4 + 64);
      v16 = *(v4 + 96);
      *(v4 + 192) = *(v4 + 80);
      *(v4 + 208) = v16;
      *(v4 + 64) = v36;
      *(v4 + 80) = v37;
      *(v4 + 96) = v38;
      *v4 = v32;
      *(v4 + 16) = v33;
      *(v4 + 32) = v34;
      *(v4 + 48) = v35;
      v4 -= 112;
      v7[3] = v14;
      v7[4] = v15;
      v7[2] = v13;
      v17 = __CFADD__(v11, 1);
      v6 = v11 + 1;
      if (v17)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_251F27564(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v107 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_117:
    v8 = *v107;
    if (!*v107)
    {
      goto LABEL_156;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_150:
      result = sub_251F284B0(v7);
      v7 = result;
    }

    v152 = v7;
    v98 = *(v7 + 16);
    if (v98 >= 2)
    {
      while (*a3)
      {
        v99 = v7;
        v7 = *(v7 + 16 * v98);
        v100 = v99;
        v101 = *&v99[16 * v98 + 24];
        sub_251F27ED0((*a3 + 112 * v7), (*a3 + 112 * *&v99[16 * v98 + 16]), (*a3 + 112 * v101), v8);
        if (v4)
        {
        }

        if (v101 < v7)
        {
          goto LABEL_143;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_251F284B0(v100);
        }

        if (v98 - 2 >= *(v100 + 2))
        {
          goto LABEL_144;
        }

        v102 = &v100[16 * v98];
        *v102 = v7;
        v102[1] = v101;
        v152 = v100;
        result = sub_251F28424(v98 - 1);
        v7 = v152;
        v98 = *(v152 + 16);
        if (v98 <= 1)
        {
        }
      }

      goto LABEL_154;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v8 = 112;
  while (1)
  {
    v9 = v6;
    v10 = v6 + 1;
    if (v6 + 1 < v5)
    {
      v11 = *a3;
      v12 = (*a3 + 112 * v10);
      v13 = v12[5];
      v150[4] = v12[4];
      v150[5] = v13;
      v150[6] = v12[6];
      v14 = v12[1];
      v150[0] = *v12;
      v150[1] = v14;
      v15 = v12[3];
      v150[2] = v12[2];
      v150[3] = v15;
      v16 = (v11 + 112 * v9);
      v17 = v16[1];
      v151[0] = *v16;
      v151[1] = v17;
      v18 = v16[2];
      v19 = v16[3];
      v20 = v16[6];
      v151[5] = v16[5];
      v151[6] = v20;
      v21 = v16[4];
      v151[3] = v19;
      v151[4] = v21;
      v151[2] = v18;
      result = sub_251F284C4(v150, v151);
      v118 = result;
      if (v4)
      {
      }

      v10 = v9 + 2;
      if (v9 + 2 < v5)
      {
        v105 = v7;
        v103 = v9;
        v22 = (v11 + 112 * v9 + 144);
        v116 = v5;
        while (1)
        {
          v112 = v10;
          v24 = v22[12];
          v23 = v22[13];
          v132 = v22[15];
          v134 = v22[14];
          v124 = v22[17];
          v126 = v22[16];
          v25 = *(v22 - 2);
          v26 = *(v22 - 1);
          v128 = v22[1];
          v130 = *v22;
          v120 = v22[3];
          v122 = v22[2];
          if ((v22[10] != *(v22 - 4) || v22[11] != *(v22 - 3)) && (sub_251F322D4() & 1) == 0)
          {
            break;
          }

          if ((v24 != v25 || v23 != v26) && (sub_251F322D4() & 1) == 0)
          {
            break;
          }

          v8 = 112;
          v27 = v116;
          if ((v134 != v130 || v132 != v128) && (sub_251F322D4() & 1) == 0)
          {
            result = sub_251F322D4();
            v10 = v112;
LABEL_9:
            if ((v118 ^ result))
            {
              goto LABEL_27;
            }

            goto LABEL_10;
          }

          result = v126;
          v10 = v112;
          if (v126 != v122 || v124 != v120)
          {
            result = sub_251F322D4();
            goto LABEL_9;
          }

          if (v118)
          {
            v7 = v105;
            v9 = v103;
            if (v112 < v103)
            {
              goto LABEL_147;
            }

            goto LABEL_30;
          }

LABEL_10:
          ++v10;
          v22 += 14;
          if (v27 == v10)
          {
            v10 = v27;
LABEL_27:
            v7 = v105;
            v9 = v103;
            goto LABEL_28;
          }
        }

        result = sub_251F322D4();
        v8 = 112;
        v10 = v112;
        v27 = v116;
        goto LABEL_9;
      }

LABEL_28:
      if (v118)
      {
        if (v10 < v9)
        {
          goto LABEL_147;
        }

LABEL_30:
        if (v9 < v10)
        {
          v28 = v9;
          v29 = v7;
          v30 = 112 * v10 - 112;
          v31 = 112 * v28;
          v32 = v10;
          v33 = v28;
          v34 = v28;
          do
          {
            if (v34 != --v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_153;
              }

              v36 = (v35 + v30);
              v144 = *(v35 + v31 + 64);
              v146 = *(v35 + v31 + 80);
              v148 = *(v35 + v31 + 96);
              v136 = *(v35 + v31);
              v138 = *(v35 + v31 + 16);
              v140 = *(v35 + v31 + 32);
              v142 = *(v35 + v31 + 48);
              result = memmove((v35 + v31), (v35 + v30), 0x70uLL);
              v36[4] = v144;
              v36[5] = v146;
              v36[6] = v148;
              *v36 = v136;
              v36[1] = v138;
              v36[2] = v140;
              v36[3] = v142;
            }

            ++v34;
            v30 -= 112;
            v31 += 112;
          }

          while (v34 < v32);
          v7 = v29;
          v8 = 112;
          v9 = v33;
        }
      }
    }

    v37 = a3[1];
    if (v10 < v37)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_146;
      }

      if (v10 - v9 < a4)
      {
        v38 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_148;
        }

        if (v38 >= v37)
        {
          v38 = a3[1];
        }

        if (v38 < v9)
        {
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        if (v10 != v38)
        {
          break;
        }
      }
    }

LABEL_64:
    if (v10 < v9)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251F26FC0(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v52 = *(v7 + 16);
    v51 = *(v7 + 24);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      result = sub_251F26FC0((v51 > 1), v52 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v53;
    v54 = v7 + 16 * v52;
    *(v54 + 32) = v9;
    *(v54 + 40) = v10;
    v55 = *v107;
    if (!*v107)
    {
      goto LABEL_155;
    }

    v114 = v10;
    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v7 + 32);
          v58 = *(v7 + 40);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_84:
          if (v60)
          {
            goto LABEL_134;
          }

          v73 = (v7 + 16 * v53);
          v75 = *v73;
          v74 = v73[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_137;
          }

          v79 = (v7 + 32 + 16 * v56);
          v81 = *v79;
          v80 = v79[1];
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_140;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_141;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_105;
          }

          goto LABEL_98;
        }

        v83 = (v7 + 16 * v53);
        v85 = *v83;
        v84 = v83[1];
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_98:
        if (v78)
        {
          goto LABEL_136;
        }

        v86 = v7 + 16 * v56;
        v88 = *(v86 + 32);
        v87 = *(v86 + 40);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_139;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_105:
        v94 = v56 - 1;
        if (v56 - 1 >= v53)
        {
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }

        if (!*a3)
        {
          goto LABEL_152;
        }

        v95 = *(v7 + 32 + 16 * v94);
        v96 = *(v7 + 32 + 16 * v56 + 8);
        sub_251F27ED0((*a3 + 112 * v95), (*a3 + 112 * *(v7 + 32 + 16 * v56)), (*a3 + 112 * v96), v55);
        if (v4)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_130;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_251F284B0(v7);
        }

        if (v94 >= *(v7 + 16))
        {
          goto LABEL_131;
        }

        v97 = v7 + 16 * v94;
        *(v97 + 32) = v95;
        *(v97 + 40) = v96;
        v152 = v7;
        result = sub_251F28424(v56);
        v7 = v152;
        v53 = *(v152 + 16);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = v7 + 32 + 16 * v53;
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_132;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_133;
      }

      v68 = (v7 + 16 * v53);
      v70 = *v68;
      v69 = v68[1];
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_135;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_138;
      }

      if (v72 >= v64)
      {
        v90 = (v7 + 32 + 16 * v56);
        v92 = *v90;
        v91 = v90[1];
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_142;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_105;
      }

      goto LABEL_84;
    }

LABEL_3:
    v6 = v114;
    v5 = a3[1];
    if (v114 >= v5)
    {
      goto LABEL_117;
    }
  }

  v115 = *a3;
  v39 = *a3 + 112 * v10 - 112;
  v104 = v9;
  v40 = v9 - v10;
  v108 = v38;
LABEL_47:
  v113 = v10;
  v109 = v40;
  v110 = v39;
  v41 = v40;
  while (1)
  {
    v42 = (v39 + 112);
    v133 = *(v39 + 128);
    v135 = v41;
    v43 = *(v39 + 136);
    v129 = *(v39 + 152);
    v131 = *(v39 + 144);
    v121 = *(v39 + 168);
    v123 = *(v39 + 160);
    v45 = *(v39 + 16);
    v44 = *(v39 + 24);
    v125 = *(v39 + 40);
    v127 = *(v39 + 32);
    v117 = *(v39 + 56);
    v119 = *(v39 + 48);
    if (*(v39 + 112) == *v39 && *(v39 + 120) == *(v39 + 8) || (sub_251F322D4()) && (v133 == v45 && v43 == v44 || (sub_251F322D4()) && (v131 == v127 && v129 == v125 || (sub_251F322D4()) && v123 == v119 && v121 == v117 || (result = sub_251F322D4(), (result & 1) == 0))
    {
LABEL_46:
      v10 = v113 + 1;
      v39 = v110 + 112;
      v40 = v109 - 1;
      if (v113 + 1 != v108)
      {
        goto LABEL_47;
      }

      v10 = v108;
      v8 = 112;
      v9 = v104;
      goto LABEL_64;
    }

    if (!v115)
    {
      break;
    }

    v145 = *(v39 + 176);
    v147 = *(v39 + 192);
    v149 = *(v39 + 208);
    v137 = *v42;
    v139 = *(v39 + 128);
    v141 = *(v39 + 144);
    v143 = *(v39 + 160);
    v46 = *(v39 + 16);
    *v42 = *v39;
    *(v39 + 128) = v46;
    v47 = *(v39 + 32);
    v48 = *(v39 + 48);
    v49 = *(v39 + 64);
    v50 = *(v39 + 96);
    *(v39 + 192) = *(v39 + 80);
    *(v39 + 208) = v50;
    *(v39 + 64) = v145;
    *(v39 + 80) = v147;
    *(v39 + 96) = v149;
    *v39 = v137;
    *(v39 + 16) = v139;
    *(v39 + 32) = v141;
    *(v39 + 48) = v143;
    v39 -= 112;
    v42[3] = v48;
    v42[4] = v49;
    v42[2] = v47;
    v41 = v135 + 1;
    if (v135 == -1)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
  return result;
}

uint64_t sub_251F27ED0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 112;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 112;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[112 * v9] <= a4)
    {
      memmove(a4, __dst, 112 * v9);
    }

    v12 = &v4[112 * v9];
    if (v8 < 112 || v6 >= v5)
    {
      v31 = v7;
      goto LABEL_66;
    }

    v58 = v5;
    v39 = &v4[112 * v9];
    while (1)
    {
      v57 = v7;
      v13 = *(v6 + 2);
      v14 = *(v6 + 3);
      v53 = *(v6 + 5);
      v55 = *(v6 + 4);
      v45 = *(v6 + 7);
      v47 = *(v6 + 6);
      v15 = *v4;
      v16 = *(v4 + 1);
      v17 = v4;
      v18 = *(v4 + 2);
      v19 = *(v4 + 3);
      v49 = *(v17 + 5);
      __srca = *(v17 + 4);
      v43 = *(v17 + 6);
      v60 = v17;
      v41 = *(v17 + 7);
      if (*v6 == v15 && *(v6 + 1) == v16 || (sub_251F322D4()) && (v13 == v18 && v14 == v19 || (sub_251F322D4()))
      {
        v20 = v57;
        v21 = v58;
        if (v55 == __srca && v53 == v49 || (sub_251F322D4() & 1) != 0)
        {
          v4 = v60;
          if (v47 == v43 && v45 == v41 || (sub_251F322D4() & 1) == 0)
          {
LABEL_20:
            v22 = v4;
            v23 = v20 == v4;
            v4 += 112;
            if (v23)
            {
              goto LABEL_22;
            }

LABEL_21:
            memmove(v20, v22, 0x70uLL);
            goto LABEL_22;
          }
        }

        else
        {
          v4 = v60;
          if ((sub_251F322D4() & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        v4 = v60;
        v20 = v57;
        v21 = v58;
        if ((sub_251F322D4() & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v22 = v6;
      v23 = v20 == v6;
      v6 += 112;
      if (!v23)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 = v20 + 112;
      v12 = v39;
      if (v4 >= v39 || v6 >= v21)
      {
        v31 = v7;
        goto LABEL_66;
      }
    }
  }

  if (a4 != __src || &__src[112 * v11] <= a4)
  {
    memmove(a4, __src, 112 * v11);
  }

  v12 = &v4[112 * v11];
  if (v10 < 112 || v6 <= v7)
  {
    v31 = v6;
    goto LABEL_66;
  }

  v61 = v4;
  do
  {
    v24 = 0;
    v25 = v12;
    v35 = v6 - 112;
    v59 = v5;
    v36 = v12;
    while (1)
    {
      v26 = &v25[v24];
      __srcb = &v25[v24 - 112];
      v54 = *&v25[v24 - 96];
      v56 = *&v25[v24 - 88];
      v48 = *&v25[v24 - 72];
      v50 = *&v25[v24 - 80];
      v40 = *&v25[v24 - 56];
      v42 = *&v25[v24 - 64];
      v27 = *(v6 - 12);
      v28 = *(v6 - 11);
      v44 = *(v6 - 9);
      v46 = *(v6 - 10);
      v37 = *(v6 - 7);
      v38 = *(v6 - 8);
      if ((*__srcb != *(v6 - 14) || *&v25[v24 - 104] != *(v6 - 13)) && (sub_251F322D4() & 1) == 0 || (v54 != v27 || v56 != v28) && (sub_251F322D4() & 1) == 0)
      {
        v4 = v61;
        v29 = v59;
        if (sub_251F322D4())
        {
          goto LABEL_57;
        }

        goto LABEL_55;
      }

      v29 = v59;
      if (v50 == v46 && v48 == v44)
      {
        break;
      }

      if (sub_251F322D4())
      {
        break;
      }

      v4 = v61;
      if (sub_251F322D4())
      {
        goto LABEL_57;
      }

LABEL_55:
      if (&v29[v24] != v26)
      {
        memmove(&v29[v24 - 112], __srcb, 0x70uLL);
      }

      v24 -= 112;
      v25 = v36;
      v12 = &v36[v24];
      if (&v36[v24] <= v4)
      {
        v31 = v6;
        goto LABEL_66;
      }
    }

    v4 = v61;
    if (v42 == v38 && v40 == v37 || (sub_251F322D4() & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_57:
    v30 = &v29[v24];
    v5 = &v29[v24 - 112];
    v31 = v6 - 112;
    if (v30 != v6)
    {
      memmove(v5, v35, 0x70uLL);
    }

    v12 = &v36[v24];
    if (&v36[v24] <= v4)
    {
      break;
    }

    v6 -= 112;
  }

  while (v35 > v7);
  v12 = &v36[v24];
LABEL_66:
  v32 = ((v12 - v4) * 0x4924924924924925) >> 64;
  v33 = (v32 >> 5) + (v32 >> 63);
  if (v31 != v4 || v31 >= &v4[112 * v33])
  {
    memmove(v31, v4, 112 * v33);
  }

  return 1;
}

uint64_t sub_251F28424(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_251F284B0(v3);
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

uint64_t sub_251F284C4(void *a1, uint64_t *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_251F322D4()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_251F322D4()) && (a1[4] == a2[4] && a1[5] == a2[5] || (sub_251F322D4())) && a1[6] == a2[6] && a1[7] == a2[7])
  {
    return 0;
  }

  else
  {
    return sub_251F322D4() & 1;
  }
}

void *sub_251F285EC(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_251F28B10(0, &qword_27F4C0EE8, type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse, MEMORY[0x277D84560]);
  v10 = *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for TopicRegistryListResponse.TopicRegistryEntryResponse(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_251F28820(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_251F28868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_251F288D8()
{
  result = qword_27F4C0EC8;
  if (!qword_27F4C0EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C0EC8);
  }

  return result;
}

uint64_t sub_251F2892C(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251F322D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_251F322D4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_251F322D4() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_251F322D4() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_251F322D4() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_251F322D4() & 1) == 0)
  {
    return 0;
  }

  if (a1[12] == a2[12] && a1[13] == a2[13])
  {
    return 1;
  }

  return sub_251F322D4();
}

void sub_251F28A68(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_251F322C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251F28AB8()
{
  if (!qword_27F4C0EE0)
  {
    v0 = sub_251F32174();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C0EE0);
    }
  }
}

void sub_251F28B10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void *HealthTopicStore.__allocating_init(healthStore:)(void *a1)
{
  swift_allocObject();
  v2 = sub_251F305E0(a1);

  return v2;
}

void *HealthTopicStore.init(healthStore:)(void *a1)
{
  v2 = sub_251F305E0(a1);

  return v2;
}

void HealthTopicStore.fetchResponse<A>(for:handler:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v47 = a2;
  v48 = a3;
  v44 = *v7;
  v12 = sub_251F31F74();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_251F32054();
  v45 = *(v16 - 8);
  v46 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52[3] = a4;
  v52[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  v20 = *(*(a4 - 8) + 16);
  v50 = a1;
  v20(boxed_opaque_existential_1, a1, a4);
  sub_251F31F54();
  sub_251F32034();
  v21 = *(v13 + 16);
  v49 = a6;
  v21(v15, a6, v12);

  v22 = sub_251F32044();
  v23 = sub_251F32194();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v43 = a4;
    v25 = v24;
    v42 = swift_slowAlloc();
    v52[0] = v42;
    *v25 = 136446466;
    v51 = v7;

    v26 = sub_251F32104();
    v28 = sub_251F2F100(v26, v27, v52);
    v44 = a5;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0], MEMORY[0x277D125E8]);
    v30 = sub_251F322B4();
    v32 = v31;
    (*(v13 + 8))(v15, v12);
    v33 = sub_251F2F100(v30, v32, v52);
    a5 = v44;

    *(v25 + 14) = v33;
    _os_log_impl(&dword_251F20000, v22, v23, "%{public}s: start request for %{public}s", v25, 0x16u);
    v34 = v42;
    swift_arrayDestroy();
    MEMORY[0x253092F70](v34, -1, -1);
    v35 = v25;
    a4 = v43;
    MEMORY[0x253092F70](v35, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v36 = (*(v45 + 8))(v18, v46);
  v37 = v7[4];
  MEMORY[0x28223BE20](v36);
  *(&v42 - 8) = a4;
  *(&v42 - 7) = a5;
  v39 = v49;
  v38 = v50;
  *(&v42 - 6) = v49;
  *(&v42 - 5) = v7;
  v41 = v47;
  v40 = v48;
  *(&v42 - 4) = v38;
  *(&v42 - 3) = v41;
  *(&v42 - 2) = v40;
  os_unfair_lock_lock(v37 + 10);
  sub_251F306E0(&v37[4]);
  os_unfair_lock_unlock(v37 + 10);
  sub_251F30708(v39, v38, a4, a5);
}

uint64_t sub_251F29024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a4;
  v27 = a8;
  v29 = a5;
  v30 = a6;
  v28 = a3;
  v31 = a1;
  v10 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_251F31F74();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v20 = *(v14 + 16);
  v20(&v25 - v18, a2, v13);
  (*(v10 + 16))(v12, v26, a7);
  v20(v17, a2, v13);
  v21 = v27;
  v32[3] = type metadata accessor for HealthTopicStore.ConcretePendingRequest(0, a7, v27, v22);
  v32[4] = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  sub_251F29264(v28, v12, v17, v29, v30, a7, v21, boxed_opaque_existential_1);

  return sub_251F2934C(v32, v19);
}

uint64_t sub_251F29264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  v14 = type metadata accessor for HealthTopicStore.ConcretePendingRequest(0, a6, a7, a4);
  (*(*(a6 - 8) + 32))(&a8[v14[9]], a2, a6);
  v15 = v14[10];
  v16 = sub_251F31F74();
  result = (*(*(v16 - 8) + 32))(&a8[v15], a3, v16);
  v18 = &a8[v14[11]];
  *v18 = a4;
  *(v18 + 1) = a5;
  return result;
}

uint64_t sub_251F2934C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_251F30F24(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_251F2FF08(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_251F31F74();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_251F30FAC(a1, &qword_27F4C0F00, &qword_27F4C0F08, &protocol descriptor for HealthTopicStore.PendingRequest);
    sub_251F2F690(a2, v9);
    v7 = sub_251F31F74();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_251F30FAC(v9, &qword_27F4C0F00, &qword_27F4C0F08, &protocol descriptor for HealthTopicStore.PendingRequest);
  }

  return result;
}

void *sub_251F29480(uint64_t a1, void *a2)
{
  v3 = v2;
  v68[1] = *v2;
  v71 = sub_251F31F74();
  v70 = *(v71 - 8);
  v6 = MEMORY[0x28223BE20](v71);
  v8 = v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v68 - v9;
  v73 = sub_251F32054();
  v72 = *(v73 - 8);
  v11 = MEMORY[0x28223BE20](v73);
  v69 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v68 - v13;
  v15 = sub_251F32094();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = *(v3[3] + OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider);
  if (!result)
  {
    goto LABEL_14;
  }

  *v18 = [result clientQueue];
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v20 = sub_251F320A4();
  result = (*(v16 + 8))(v18, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v21 = v3[4];
    MEMORY[0x28223BE20](result);
    LOBYTE(v68[-2]) = 1;
    v68[-1] = a1;
    v22 = a2;
    os_unfair_lock_lock((v21 + 40));
    sub_251F31E08((v21 + 16), &v75);
    os_unfair_lock_unlock((v21 + 40));
    if (v76)
    {
      sub_251F30F24(&v75, v77);
      sub_251F32034();
      v23 = v70;
      v24 = v71;
      (*(v70 + 16))(v10, a1, v71);
      v25 = a2;

      v26 = sub_251F32044();
      v27 = sub_251F32184();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        *&v75 = v69;
        *v28 = 136446722;
        v74 = v3;

        v29 = sub_251F32104();
        v31 = sub_251F2F100(v29, v30, &v75);

        *(v28 + 4) = v31;
        *(v28 + 12) = 2082;
        sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0], MEMORY[0x277D125E8]);
        v32 = sub_251F322B4();
        v34 = v33;
        (*(v23 + 8))(v10, v24);
        v35 = sub_251F2F100(v32, v34, &v75);

        *(v28 + 14) = v35;
        *(v28 + 22) = 2082;
        ErrorValue = swift_getErrorValue();
        MEMORY[0x28223BE20](ErrorValue);
        v38 = a2;
        (*(v39 + 16))(v68 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
        v40 = sub_251F32104();
        v42 = sub_251F2F100(v40, v41, &v75);

        *(v28 + 24) = v42;
        a2 = v38;
        _os_log_impl(&dword_251F20000, v26, v27, "%{public}s: error for token %{public}s: %{public}s", v28, 0x20u);
        v43 = v69;
        swift_arrayDestroy();
        MEMORY[0x253092F70](v43, -1, -1);
        MEMORY[0x253092F70](v28, -1, -1);
      }

      else
      {

        (*(v23 + 8))(v10, v24);
      }

      (*(v72 + 8))(v14, v73);
      v66 = v78;
      v67 = v79;
      __swift_project_boxed_opaque_existential_1(v77, v78);
      sub_251F2C6D8(a2, v66, v67);

      return __swift_destroy_boxed_opaque_existential_1(v77);
    }

    else
    {
      sub_251F30FAC(&v75, &qword_27F4C0F00, &qword_27F4C0F08, &protocol descriptor for HealthTopicStore.PendingRequest);
      v44 = v69;
      sub_251F32034();
      v45 = v70;
      v46 = v71;
      (*(v70 + 16))(v8, a1, v71);
      v47 = a2;

      v48 = sub_251F32044();
      v49 = sub_251F32194();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v68[0] = swift_slowAlloc();
        v77[0] = v68[0];
        *v50 = 136446722;
        *&v75 = v3;

        v51 = sub_251F32104();
        v53 = sub_251F2F100(v51, v52, v77);

        *(v50 + 4) = v53;
        *(v50 + 12) = 2082;
        sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0], MEMORY[0x277D125E8]);
        v54 = sub_251F322B4();
        v56 = v55;
        (*(v45 + 8))(v8, v46);
        v57 = sub_251F2F100(v54, v56, v77);

        *(v50 + 14) = v57;
        *(v50 + 22) = 2082;
        v58 = swift_getErrorValue();
        MEMORY[0x28223BE20](v58);
        v60 = a2;
        (*(v61 + 16))(v68 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
        v62 = sub_251F32104();
        v64 = sub_251F2F100(v62, v63, v77);

        *(v50 + 24) = v64;
        _os_log_impl(&dword_251F20000, v48, v49, "%{public}s: no pendingRequest for token %{public}s, dropping error: %{public}s", v50, 0x20u);
        v65 = v68[0];
        swift_arrayDestroy();
        MEMORY[0x253092F70](v65, -1, -1);
        MEMORY[0x253092F70](v50, -1, -1);

        return (*(v72 + 8))(v69, v73);
      }

      else
      {

        (*(v45 + 8))(v8, v46);
        return (*(v72 + 8))(v44, v73);
      }
    }
  }

  return result;
}

void sub_251F29E1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[4] = a4;
  v9[5] = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_251F29EEC;
  v9[3] = &block_descriptor_95;
  v8 = _Block_copy(v9);

  [a1 remote:a2 executeWithRequest:a3 token:v8 with:?];
  _Block_release(v8);
}

void sub_251F29EEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_251F29F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider);
  if (v5)
  {
    ObjectType = swift_getObjectType();
    v11 = swift_allocObject();
    v11[2] = a1;
    v11[3] = a2;
    v11[4] = ObjectType;
    v20 = sub_251F31374;
    v21 = v11;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_251F2DA50;
    v19 = &block_descriptor_66;
    v12 = _Block_copy(&v16);
    v13 = v5;

    v14 = swift_allocObject();
    *(v14 + 16) = a3;
    *(v14 + 24) = a4;
    v20 = sub_251F31380;
    v21 = v14;
    v16 = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_251F2DAC0;
    v19 = &block_descriptor_72;
    v15 = _Block_copy(&v16);

    [v13 fetchProxyWithHandler:v12 errorHandler:v15];
    _Block_release(v15);
    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t HealthTopicStore.cancel(token:)(uint64_t a1)
{
  v3 = sub_251F31F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  (*(v4 + 32))(v8 + v7, v6, v3);

  HealthTopicStore.cancel(token:completion:)(a1, sub_251F30B78, v8);
}

uint64_t sub_251F2A25C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251F31F74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_251F32054();
  v11 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v15 = a1;
    sub_251F32034();
    (*(v7 + 16))(v9, a3, v6);
    v16 = a1;

    v17 = sub_251F32044();
    v18 = sub_251F32184();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v38 = v10;
      v20 = v19;
      v37 = swift_slowAlloc();
      v39 = a2;
      v40 = v37;
      *v20 = 136446722;
      type metadata accessor for HealthTopicStore();
      v36 = v18;

      v21 = sub_251F32104();
      v23 = sub_251F2F100(v21, v22, &v40);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2082;
      sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0], MEMORY[0x277D125E8]);
      v24 = sub_251F322B4();
      v26 = v25;
      (*(v7 + 8))(v9, v6);
      v27 = sub_251F2F100(v24, v26, &v40);

      *(v20 + 14) = v27;
      *(v20 + 22) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v30 + 16))(&v35[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v31 = sub_251F32104();
      v33 = sub_251F2F100(v31, v32, &v40);

      *(v20 + 24) = v33;
      _os_log_impl(&dword_251F20000, v17, v36, "%{public}s: unable to cancel request for token %{public}s, error: %{public}s", v20, 0x20u);
      v34 = v37;
      swift_arrayDestroy();
      MEMORY[0x253092F70](v34, -1, -1);
      MEMORY[0x253092F70](v20, -1, -1);

      return (*(v11 + 8))(v14, v38);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

void HealthTopicStore.cancel(token:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v86 = *v4;
  v89 = sub_251F31F74();
  v94 = *(v89 - 8);
  v8 = MEMORY[0x28223BE20](v89);
  v88 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v87 = &v78 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v78 - v12;
  v14 = sub_251F32054();
  v91 = *(v14 - 8);
  v92 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v78 - v18;
  v82 = v4[3];
  v20 = *(v82 + OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider);
  if (v20)
  {
    v98 = a2;
    v99 = a3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251F29EEC;
    v97 = &block_descriptor;
    v21 = _Block_copy(aBlock);
    v22 = v20;

    v23 = [v22 clientQueueErrorHandlerWithCompletion_];
    _Block_release(v21);

    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v25 = v4[4];
    MEMORY[0x28223BE20](v24);
    *(&v78 - 16) = 1;
    v93 = a1;
    *(&v78 - 1) = a1;
    v90 = v23;
    _Block_copy(v23);
    os_unfair_lock_lock((v25 + 40));
    sub_251F30BD4((v25 + 16), aBlock);
    os_unfair_lock_unlock((v25 + 40));
    v26 = v97;
    sub_251F30FAC(aBlock, &qword_27F4C0F00, &qword_27F4C0F08, &protocol descriptor for HealthTopicStore.PendingRequest);
    v27 = v94;
    if (v26)
    {
      v85 = 0;
      v81 = v17;
      v83 = v24;
      sub_251F32034();
      v28 = v89;
      v84 = *(v27 + 16);
      v84(v13, v93, v89);

      v29 = sub_251F32044();
      v30 = sub_251F32194();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        aBlock[0] = v79;
        *v31 = 136446466;
        v95 = v4;

        v32 = sub_251F32104();
        v34 = sub_251F2F100(v32, v33, aBlock);

        *(v31 + 4) = v34;
        *(v31 + 12) = 2082;
        sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0], MEMORY[0x277D125E8]);
        v35 = sub_251F322B4();
        v37 = v36;
        v80 = *(v94 + 8);
        v80(v13, v28);
        v38 = sub_251F2F100(v35, v37, aBlock);

        *(v31 + 14) = v38;
        _os_log_impl(&dword_251F20000, v29, v30, "%{public}s: cancel request for %{public}s", v31, 0x16u);
        v39 = v79;
        swift_arrayDestroy();
        MEMORY[0x253092F70](v39, -1, -1);
        MEMORY[0x253092F70](v31, -1, -1);
      }

      else
      {

        v80 = *(v27 + 8);
        v80(v13, v28);
      }

      v41 = *(v91 + 8);
      v41(v19, v92);
      v42 = v28;
      v43 = v93;
      v44 = v84;
      v84(v87, v93, v28);
      v45 = objc_allocWithZone(sub_251F31FD4());
      v46 = v85;
      v47 = sub_251F31FE4();
      v48 = v88;
      if (v46)
      {
        v49 = v81;
        sub_251F32034();
        v44(v48, v43, v42);

        v50 = v46;
        v51 = sub_251F32044();
        v52 = sub_251F32184();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = v48;
          v54 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          aBlock[0] = v93;
          *v54 = 136446722;
          v95 = v4;

          v55 = sub_251F32104();
          v57 = sub_251F2F100(v55, v56, aBlock);

          *(v54 + 4) = v57;
          *(v54 + 12) = 2082;
          sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0], MEMORY[0x277D125E8]);
          v58 = sub_251F322B4();
          v60 = v59;
          v80(v53, v42);
          v61 = sub_251F2F100(v58, v60, aBlock);

          *(v54 + 14) = v61;
          *(v54 + 22) = 2082;
          ErrorValue = swift_getErrorValue();
          MEMORY[0x28223BE20](ErrorValue);
          (*(v64 + 16))(&v78 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
          v65 = sub_251F32104();
          v67 = sub_251F2F100(v65, v66, aBlock);

          *(v54 + 24) = v67;
          _os_log_impl(&dword_251F20000, v51, v52, "%{public}s: unable to securely encode %{public}s, error: %{public}s", v54, 0x20u);
          v68 = v93;
          swift_arrayDestroy();
          MEMORY[0x253092F70](v68, -1, -1);
          MEMORY[0x253092F70](v54, -1, -1);

          v69 = v81;
        }

        else
        {

          v80(v48, v42);
          v69 = v49;
        }

        v41(v69, v92);
        v75 = v46;
        v76 = sub_251F31E44();
        v77 = v90;
        (v90)[2](v90, v76);

        _Block_release(v77);
      }

      else
      {
        v70 = v47;
        _Block_release(v90);
        v71 = swift_allocObject();
        v71[2] = v70;
        v71[3] = sub_251F30BCC;
        v72 = v83;
        v71[4] = v83;
        v73 = swift_allocObject();
        *(v73 + 16) = sub_251F30BCC;
        *(v73 + 24) = v72;
        swift_retain_n();
        v74 = v70;
        sub_251F29F58(sub_251F30C34, v71, sub_251F30C40, v73);
      }
    }

    else
    {
      v40 = v90;
      v90[2](v90, 0);

      _Block_release(v40);
    }
  }

  else
  {
    __break(1u);
    _Block_release(v90);
    __break(1u);
  }
}

void sub_251F2B0B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[4] = a3;
  v7[5] = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_251F29EEC;
  v7[3] = &block_descriptor_75;
  v6 = _Block_copy(v7);

  [a1 remote:a2 cancelWithToken:v6 with:?];
  _Block_release(v6);
}

BOOL HealthTopicStore.hasPendingRequest(for:)()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 40));
  sub_251F31E08((v1 + 16), v4);
  os_unfair_lock_unlock((v1 + 40));
  v2 = v5 != 0;
  sub_251F30FAC(v4, &qword_27F4C0F00, &qword_27F4C0F08, &protocol descriptor for HealthTopicStore.PendingRequest);
  return v2;
}

uint64_t (*HealthTopicStore.reconnectionHandler.getter())()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = sub_251F30CA0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  sub_251F30C68(v2, v3);
  os_unfair_lock_unlock((v1 + 40));
  if (!v2)
  {
    return 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  return sub_251F30C78;
}

uint64_t (*sub_251F2B2D8@<X0>(uint64_t (**a1)()@<X8>))()
{
  result = HealthTopicStore.reconnectionHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 2) = v4;
    *(result + 3) = v5;
    v6 = sub_251F31E20;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_251F2B348(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    a1 = swift_allocObject();
    v5 = a1;
    a1[2] = v4;
    a1[3] = v3;
    v6 = sub_251F31DDC;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(*a2 + 32);
  MEMORY[0x28223BE20](a1);
  sub_251F30C68(v4, v3);
  os_unfair_lock_lock(v7 + 10);
  sub_251F31D94(&v7[4]);
  os_unfair_lock_unlock(v7 + 10);
  return sub_251F30CE0(v6, v5);
}

uint64_t HealthTopicStore.reconnectionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);
  os_unfair_lock_lock(v5 + 10);
  sub_251F30CC8(&v5[4]);
  os_unfair_lock_unlock(v5 + 10);
  return sub_251F30CE0(a1, a2);
}

uint64_t (*HealthTopicStore.reconnectionHandler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 32);
  a1[2] = v3;
  os_unfair_lock_lock((v3 + 40));
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_251F31E20;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  sub_251F30C68(v4, v5);
  os_unfair_lock_unlock((v3 + 40));
  if (v4)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v9 = sub_251F31DDC;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a1 = v9;
  a1[1] = v8;
  return sub_251F2B584;
}

uint64_t sub_251F2B584(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_251F30C68(v2, v3);
    os_unfair_lock_lock(v4 + 10);
    sub_251F31D94(&v4[4]);
    os_unfair_lock_unlock(v4 + 10);
    sub_251F30CE0(v2, v3);
  }

  else
  {
    os_unfair_lock_lock(v4 + 10);
    sub_251F31D94(&v4[4]);
    os_unfair_lock_unlock(v4 + 10);
  }

  return sub_251F30CE0(v2, v3);
}

void *sub_251F2B648(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  v55 = a1;
  v53 = *v3;
  v7 = sub_251F32054();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = &v51 - v10;
  v11 = sub_251F31F74();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v51 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = sub_251F32094();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = *(v4[3] + OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider);
  if (!result)
  {
    goto LABEL_12;
  }

  *v20 = [result clientQueue];
  (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
  v22 = sub_251F320A4();
  result = (*(v18 + 8))(v20, v17);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v23 = sub_251F31FC4();
  v24 = v4[4];
  MEMORY[0x28223BE20](v23);
  *(&v51 - 16) = a2 & 1;
  *(&v51 - 1) = v16;
  os_unfair_lock_lock((v24 + 40));
  sub_251F31E08((v24 + 16), &v59);
  os_unfair_lock_unlock((v24 + 40));
  v25 = *(v12 + 8);
  v25(v16, v11);
  if (v60)
  {
    sub_251F30F24(&v59, v61);
    v26 = v54;
    sub_251F32034();

    v27 = a3;
    v28 = sub_251F32044();
    v29 = sub_251F32194();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v59 = v52;
      *v30 = 136446466;
      v58 = v4;

      v31 = sub_251F32104();
      v33 = sub_251F2F100(v31, v32, &v59);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      v34 = v51;
      sub_251F31FC4();
      sub_251F30E84(&qword_27F4C0EF0, MEMORY[0x277D125D0], MEMORY[0x277D125E8]);
      v35 = sub_251F322B4();
      v37 = v36;
      v25(v34, v11);
      v38 = sub_251F2F100(v35, v37, &v59);

      *(v30 + 14) = v38;
      _os_log_impl(&dword_251F20000, v28, v29, "%{public}s: deliver reponse for %{public}s", v30, 0x16u);
      v39 = v52;
      swift_arrayDestroy();
      MEMORY[0x253092F70](v39, -1, -1);
      MEMORY[0x253092F70](v30, -1, -1);
    }

    (*(v56 + 8))(v26, v57);
    v40 = v55;
    v41 = v62;
    v42 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    sub_251F2BCB0(v40, v41, v42);
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  else
  {
    sub_251F30FAC(&v59, &qword_27F4C0F00, &qword_27F4C0F08, &protocol descriptor for HealthTopicStore.PendingRequest);
    v43 = v52;
    sub_251F32034();

    v44 = sub_251F32044();
    v45 = sub_251F32194();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v61[0] = v47;
      *v46 = 136446210;
      *&v59 = v4;

      v48 = sub_251F32104();
      v50 = sub_251F2F100(v48, v49, v61);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_251F20000, v44, v45, "%{public}s: no pendingRequest, dropping response", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x253092F70](v47, -1, -1);
      MEMORY[0x253092F70](v46, -1, -1);
    }

    return (*(v56 + 8))(v43, v57);
  }
}

uint64_t sub_251F2BCB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v30[6] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32 = v30 - v7;
  v8 = sub_251F32054();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v42 = (v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedTypeWitness();
  v43 = a2;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_251F31060(255, &qword_27F4C0F98, MEMORY[0x277D84948]);
  v11 = sub_251F32324();
  v39 = *(v11 - 8);
  v40 = v11;
  MEMORY[0x28223BE20](v11);
  v37 = v30 - v12;
  v13 = swift_checkMetadataState();
  v38 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v30 - v14;
  v16 = sub_251F31F74();
  v35 = *(v16 - 8);
  v36 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v17);
  v21 = v30 - v20;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_251F31FB4();
  v22 = v43;
  sub_251F2E8F8(v21, v43, a3);
  v23 = (*(a3 + 48))(v22, a3);
  v41 = v24;
  v42 = v23;
  v25 = (*(a3 + 24))(v22, a3);
  (*(a3 + 40))(v22, a3);
  (*(a3 + 32))(v22, a3);
  v26 = v31;
  v27 = v37;
  (*(v31 + 16))(v37, v21, AssociatedTypeWitness);
  v28 = v40;
  swift_storeEnumTagMultiPayload();
  v42(v25, v19, v15, v27);

  (*(v39 + 8))(v27, v28);
  (*(v38 + 8))(v15, v13);
  (*(v35 + 8))(v19, v36);
  return (*(v26 + 8))(v21, AssociatedTypeWitness);
}

uint64_t sub_251F2C6D8(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_251F31060(255, &qword_27F4C0F98, MEMORY[0x277D84948]);
  v20 = sub_251F32324();
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = (&v18 - v5);
  v21 = swift_checkMetadataState();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v18 - v8;
  v19 = sub_251F31F74();
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (*(a3 + 48))(a2, a3);
  v13 = (*(a3 + 24))(a2, a3);
  (*(a3 + 40))(a2, a3);
  (*(a3 + 32))(a2, a3);
  v14 = v23;
  *v6 = v23;
  v15 = v20;
  swift_storeEnumTagMultiPayload();
  v16 = v14;
  v18(v13, v12, v9, v6);

  (*(v22 + 8))(v6, v15);
  (*(v7 + 8))(v9, v21);
  return (*(v10 + 8))(v12, v19);
}

double sub_251F2CA40@<D0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  if ((a2 & 1) == 0)
  {
    if (*(v5 + 16))
    {
      v15 = sub_251F2F774(a3);
      if (v16)
      {
        sub_251F310DC(*(v5 + 56) + 40 * v15, a4);
        return result;
      }
    }

    goto LABEL_9;
  }

  v7 = sub_251F2F774(a3);
  if ((v8 & 1) == 0)
  {
LABEL_9:
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a1;
  v17 = *a1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_251F30368();
    v11 = v17;
  }

  v12 = *(v11 + 48);
  v13 = sub_251F31F74();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  sub_251F30F24((*(v11 + 56) + 40 * v9), a4);
  sub_251F2FBE4(v9, v11);
  *a1 = v11;
  return result;
}

uint64_t sub_251F2CB60()
{
  v1 = v0;
  v2 = sub_251F32054();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  os_unfair_lock_lock((v6 + 40));
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    *(v9 + 24) = v8;
    v10 = sub_251F31E20;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  sub_251F30C68(v7, v8);
  os_unfair_lock_unlock((v6 + 40));
  if (v7)
  {
    v11 = sub_251F30C68(v10, v9);
    (v10)(v11);
    sub_251F30CE0(v10, v9);
    sub_251F30CE0(v10, v9);
  }

  os_unfair_lock_lock((v6 + 40));
  v12 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 40));
  sub_251F32034();
  swift_bridgeObjectRetain_n();

  v13 = sub_251F32044();
  v14 = sub_251F32194();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v1;
    v35[0] = v16;
    *v15 = 136446466;

    v17 = sub_251F32104();
    v19 = sub_251F2F100(v17, v18, v35);
    v33 = v2;
    v20 = v19;

    *(v15 + 4) = v20;
    *(v15 + 12) = 2048;
    v21 = *(v12 + 16);

    *(v15 + 14) = v21;

    _os_log_impl(&dword_251F20000, v13, v14, "%{public}s: re-run %ld pendingRequets after automatic proxy reconnection", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x253092F70](v16, -1, -1);
    MEMORY[0x253092F70](v15, -1, -1);

    result = (*(v3 + 8))(v5, v33);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    result = (*(v3 + 8))(v5, v2);
  }

  v23 = 0;
  v24 = 1 << *(v12 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v12 + 64);
  for (i = (v24 + 63) >> 6; v26; result = __swift_destroy_boxed_opaque_existential_1(v35))
  {
    v28 = v23;
LABEL_17:
    v29 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    sub_251F310DC(*(v12 + 56) + 40 * (v29 | (v28 << 6)), v35);
    v30 = v36;
    v31 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    sub_251F2CF1C(v1, v30, v31);
  }

  while (1)
  {
    v28 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v28 >= i)
    {
    }

    v26 = *(v12 + 64 + 8 * v28);
    ++v23;
    if (v26)
    {
      v23 = v28;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251F2CF1C(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v15[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v15 - v7;
  v9 = sub_251F31F74();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3[5](a2, a3);
  a3[4](a2, a3);
  a3[6](a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_251F30708(v12, v8, AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return (*(v10 + 8))(v12, v9);
}

void sub_251F2D140()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 40));
  sub_251F310BC((v1 + 16));
  os_unfair_lock_unlock((v1 + 40));
}

uint64_t sub_251F2D198(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_251F31F74();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  (*(a4 + 40))(a3, a4);
  v15 = *a1;
  if (*(*a1 + 16) && (v16 = sub_251F2F774(v14), (v17 & 1) != 0))
  {
    sub_251F310DC(*(v15 + 56) + 40 * v16, &v20);
    sub_251F30FAC(&v20, &qword_27F4C0F00, &qword_27F4C0F08, &protocol descriptor for HealthTopicStore.PendingRequest);
    (*(v9 + 16))(v12, v14, v8);
    *(&v21 + 1) = a3;
    v22 = a4;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
    sub_251F2934C(&v20, v12);
    return (*(v9 + 8))(v14, v8);
  }

  else
  {
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    (*(v9 + 8))(v14, v8);
    return sub_251F30FAC(&v20, &qword_27F4C0F00, &qword_27F4C0F08, &protocol descriptor for HealthTopicStore.PendingRequest);
  }
}

uint64_t sub_251F2D408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_251F31F74();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251F2D47C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));

  return v2;
}

void sub_251F2D4B4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_251F31EB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_weakInit();
  *&v2[OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider] = 0;
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v23, sel_init);
  v10 = a1;
  sub_251F31EC4();
  sub_251F31EA4();
  v11 = objc_allocWithZone(MEMORY[0x277CCDAA0]);
  v12 = sub_251F320E4();

  v13 = sub_251F31E94();
  v14 = [v11 initWithHealthStore:v10 taskIdentifier:v12 exportedObject:v9 taskUUID:v13];

  (*(v6 + 8))(v8, v5);
  v15 = OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider;
  v16 = *&v9[OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider];
  *&v9[OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider] = v14;
  v17 = v14;

  [v17 setShouldRetryOnInterruption_];
  v18 = *&v9[v15];
  if (v18)
  {
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_251F316D4;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251F2D7D8;
    aBlock[3] = &block_descriptor_101;
    v20 = _Block_copy(aBlock);
    v21 = v18;

    [v21 setAutomaticProxyReconnectionHandler_];
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

void sub_251F2D764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_weakLoadStrong())
    {
      sub_251F2CB60();
    }
  }
}

uint64_t sub_251F2D7D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  v6 = a2;
  swift_unknownObjectRetain();
  v5(v6, v8);

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_251F2D868(void *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_251F313A8(a1, &v13);
  sub_251F31404();
  if (swift_dynamicCast())
  {
    a2(v12[1]);
    return swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_251F321F4();

    v13 = 91;
    v14 = 0xE100000000000000;
    v7 = sub_251F32374();
    MEMORY[0x253092810](v7);

    MEMORY[0x253092810](0xD00000000000001FLL, 0x8000000251F337D0);
    v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    MEMORY[0x28223BE20](v8);
    (*(v10 + 16))(v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = sub_251F32104();
    MEMORY[0x253092810](v11);

    result = sub_251F32224();
    __break(1u);
  }

  return result;
}

uint64_t sub_251F2DA50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void sub_251F2DAC0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_251F2DB28(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_251F31E44();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void *sub_251F2DB8C(void *a1, char a2, void *a3)
{
  v7 = sub_251F32064();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = sub_251F32084();
  v11 = *(v21[0] - 8);
  MEMORY[0x28223BE20](v21[0]);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v3[OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider];
  if (result)
  {
    v15 = [result clientQueue];
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = a1;
    *(v16 + 32) = a2 & 1;
    *(v16 + 40) = a3;
    aBlock[4] = sub_251F30F84;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251F2DF14;
    aBlock[3] = &block_descriptor_43;
    v17 = _Block_copy(aBlock);
    v18 = v3;
    v19 = a1;
    v20 = a3;
    sub_251F32074();
    v21[1] = MEMORY[0x277D84F90];
    sub_251F30E84(&qword_27F4C0F80, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_251F30ECC(0);
    sub_251F30E84(&qword_27F4C0F90, sub_251F30ECC, MEMORY[0x277D83970]);
    sub_251F321C4();
    MEMORY[0x253092890](0, v13, v10, v17);
    _Block_release(v17);

    (*(v8 + 8))(v10, v7);
    (*(v11 + 8))(v13, v21[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_251F2DE94(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_251F2B648(a2, a3 & 1, a4);
  }

  return result;
}

uint64_t sub_251F2DF14(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_251F2DFDC(void *a1, void *a2)
{
  v5 = sub_251F32064();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = sub_251F32084();
  v9 = *(v19[0] - 8);
  MEMORY[0x28223BE20](v19[0]);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *&v2[OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider];
  if (result)
  {
    v13 = [result clientQueue];
    v14 = swift_allocObject();
    v14[2] = v2;
    v14[3] = a1;
    v14[4] = a2;
    aBlock[4] = sub_251F30E78;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251F2DF14;
    aBlock[3] = &block_descriptor_36;
    v15 = _Block_copy(aBlock);
    v16 = v2;
    v17 = a1;
    v18 = a2;
    sub_251F32074();
    v19[1] = MEMORY[0x277D84F90];
    sub_251F30E84(&qword_27F4C0F80, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_251F30ECC(0);
    sub_251F30E84(&qword_27F4C0F90, sub_251F30ECC, MEMORY[0x277D83970]);
    sub_251F321C4();
    MEMORY[0x253092890](0, v11, v8, v15);
    _Block_release(v15);

    (*(v6 + 8))(v8, v5);
    (*(v9 + 8))(v11, v19[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_251F2E2DC(uint64_t a1, void *a2)
{
  v3 = sub_251F31F74();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_251F32094();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    result = *(result[3] + OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider);
    if (result)
    {
      *v10 = [result clientQueue];
      (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
      v12 = sub_251F320A4();
      result = (*(v8 + 8))(v10, v7);
      if (v12)
      {
        sub_251F31FC4();
        sub_251F29480(v6, a2);
        (*(v4 + 8))(v6, v3);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id sub_251F2E570(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];

  return v3;
}

id sub_251F2E5F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthTopicStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_251F2E6F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a2;
  v12[5] = a3;

  HealthTopicStore.fetchResponse<A>(for:handler:)(a1, sub_251F31304, v12, a4, a5, a6);
}

uint64_t sub_251F2E7AC(uint64_t a1)
{
  v3 = sub_251F31F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  (*(v4 + 16))(v6, a1, v3);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, v6, v3);

  HealthTopicStore.cancel(token:completion:)(a1, sub_251F31E04, v9);
}

uint64_t sub_251F2E8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for HealthTopicStore.ConcretePendingRequest(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v46 = &v38 - v12;
  v13 = sub_251F321B4();
  v43 = *(v13 - 8);
  v44 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v47 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v19 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v19);
  (*(v21 + 16))(&v38 - v20, a1, v19);
  sub_251F31060(0, &qword_27F4C0FA0, MEMORY[0x277D125F8]);
  if (swift_dynamicCast())
  {
    v39 = v11;
    v40 = v10;
    v41 = a2;
    v42 = v3;
    sub_251F30F24(&v48, v51);
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    v22 = swift_getAssociatedTypeWitness();
    v23 = sub_251F321B4();
    v38 = &v38;
    v24 = *(v23 - 8);
    MEMORY[0x28223BE20](v23);
    v26 = &v38 - v25;
    sub_251F31F84();
    v27 = *(v22 - 8);
    if ((*(v27 + 48))(v26, 1, v22) == 1)
    {
      (*(v24 + 8))(v26, v23);
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
    }

    else
    {
      *(&v49 + 1) = v22;
      v50 = swift_getAssociatedConformanceWitness();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
      (*(v27 + 32))(boxed_opaque_existential_1, v26, v22);
    }

    sub_251F31008(0, &qword_27F4C0FB0, &qword_27F4C0FB8, MEMORY[0x277D12578]);
    v30 = swift_dynamicCast();
    v31 = v47;
    v32 = *(v47 + 56);
    v33 = v41;
    v35 = v39;
    v34 = v40;
    if (v30)
    {
      v32(v16, 0, 1, AssociatedTypeWitness);
      (*(v31 + 32))(v18, v16, AssociatedTypeWitness);
      v36 = v45;
      (*(v45 + 24))(v33, v45);
      v37 = v46;
      sub_251F2EF1C(v18, v33, v36, v46);
      swift_getWitnessTable();
      sub_251F2D140();

      (*(v35 + 8))(v37, v34);
      (*(v31 + 8))(v18, AssociatedTypeWitness);
    }

    else
    {
      v32(v16, 1, 1, AssociatedTypeWitness);
      (*(v43 + 8))(v16, v44);
    }

    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
    return sub_251F30FAC(&v48, &qword_27F4C0FA8, &qword_27F4C0FA0, MEMORY[0x277D125F8]);
  }
}

uint64_t sub_251F2EF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_251F31F74();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v21 - v13;
  v15 = (*(a3 + 24))(a2, a3);
  (*(v12 + 16))(v14, a1, AssociatedTypeWitness);
  (*(a3 + 40))(a2, a3);
  v16 = (*(a3 + 48))(a2, a3);
  v18 = v17;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_251F29264(v15, v14, v10, v16, v18, AssociatedTypeWitness, AssociatedConformanceWitness, a4);
}

unint64_t sub_251F2F100(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251F2F1CC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_251F313A8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_251F2F1CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_251F2F2D8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_251F32214();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_251F2F2D8(uint64_t a1, unint64_t a2)
{
  v3 = sub_251F2F324(a1, a2);
  sub_251F2F454(&unk_28642E970);
  return v3;
}

void *sub_251F2F324(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_251F2F540(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_251F32214();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_251F32134();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251F2F540(v10, 0);
        result = sub_251F321E4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_251F2F454(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_251F2F5A8(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_251F2F540(uint64_t a1, uint64_t a2)
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

  sub_251F31468();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251F2F5A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_251F31468();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double sub_251F2F690@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_251F2F774(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_251F30368();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_251F31F74();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_251F30F24((*(v9 + 56) + 40 * v7), a2);
    sub_251F2FBE4(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

unint64_t sub_251F2F774(uint64_t a1)
{
  sub_251F31F74();
  sub_251F30E84(&qword_27F4C0FC8, MEMORY[0x277D125D0], MEMORY[0x277D125D8]);
  v2 = sub_251F320B4();

  return sub_251F301A8(a1, v2);
}

uint64_t sub_251F2F80C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_251F31F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_251F31140(0);
  v38 = v4;
  result = sub_251F32244();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_251F30F24((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_251F310DC(*(v9 + 56) + 40 * v23, v43);
      }

      sub_251F30E84(&qword_27F4C0FC8, MEMORY[0x277D125D0], MEMORY[0x277D125D8]);
      result = sub_251F320B4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_251F30F24(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_251F2FBE4(int64_t a1, uint64_t a2)
{
  v42 = sub_251F31F74();
  v4 = *(v42 - 8);
  result = MEMORY[0x28223BE20](v42);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v43 = v6;
    v12 = sub_251F321D4();
    v13 = v42;
    v6 = v43;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v39 = (v12 + 1) & v11;
    v40 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v41;
      v21 = v14;
      v22 = v15;
      v40(v41, *(v6 + 48) + v17 * v10, v13);
      sub_251F30E84(&qword_27F4C0FC8, MEMORY[0x277D125D0], MEMORY[0x277D125D8]);
      v23 = sub_251F320B4();
      result = (*v37)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v6 = v43;
          v27 = *(v43 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v43;
            v17 = v18;
            v14 = v21;
            v8 = v38;
          }

          else
          {
            v8 = v38;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v43;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 40 * a1;
          v30 = (v28 + 40 * v10);
          if (a1 != v10 || v29 >= v30 + 40)
          {
            v31 = *v30;
            v32 = v30[1];
            *(v29 + 32) = *(v30 + 4);
            *v29 = v31;
            *(v29 + 16) = v32;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v38;
      v17 = v18;
      v6 = v43;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(v6 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v35;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_251F2FF08(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_251F31F74();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_251F2F774(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_251F30368();
      goto LABEL_7;
    }

    sub_251F2F80C(v17, a3 & 1);
    v23 = sub_251F2F774(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_251F300E4(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_251F322E4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 40 * v14);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return sub_251F30F24(a1, v21);
}

uint64_t sub_251F300E4(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_251F31F74();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_251F30F24(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_251F301A8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_251F31F74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_251F30E84(&qword_27F4C0FD0, MEMORY[0x277D125D0], MEMORY[0x277D125E0]);
      v15 = sub_251F320D4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_251F30368()
{
  v1 = v0;
  v29 = sub_251F31F74();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F31140(0);
  v3 = *v0;
  v4 = sub_251F32234();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_251F310DC(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_251F30F24(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_21;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void *sub_251F305E0(void *a1)
{
  v2 = v1;
  v2[2] = a1;
  v4 = objc_allocWithZone(type metadata accessor for HealthTopicStore.HealthTopicStoreProxy());
  sub_251F2D4B4(a1);
  v2[3] = v5;
  sub_251F3163C(0);
  v6 = swift_allocObject();
  *(v6 + 40) = 0;
  v7 = MEMORY[0x277D84F98];
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = v7;
  v2[4] = v6;
  swift_weakAssign();
  return v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_251F30708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v35 = a2;
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251F31F74();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = *(v4 + 24);
  v16 = *(v10 + 16);
  v34 = a1;
  v32 = v16;
  v16(&v31 - v13, a1, v9);
  v17 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  (*(v10 + 32))(v18 + v17, v14, v9);
  v31 = v15;
  v19 = *(v15 + OBJC_IVAR____TtCC12HealthTopics16HealthTopicStoreP33_BB24626011902959971089C4FF0BF64621HealthTopicStoreProxy_proxyProvider);
  if (v19)
  {
    aBlock[4] = sub_251F3157C;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_251F29EEC;
    aBlock[3] = &block_descriptor_81;
    v20 = _Block_copy(aBlock);

    v21 = v19;

    v22 = [v21 clientQueueErrorHandlerWithCompletion_];

    _Block_release(v20);

    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    sub_251F31F94();
    (*(v6 + 16))(v8, v35, v36);
    _Block_copy(v22);
    v24 = sub_251F31FA4();
    v32(v33, v34, v9);
    v25 = objc_allocWithZone(sub_251F31FD4());
    v26 = sub_251F31FE4();
    _Block_release(v22);
    v27 = swift_allocObject();
    v27[2] = v24;
    v27[3] = v26;
    v27[4] = sub_251F31E24;
    v27[5] = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_251F31E24;
    *(v28 + 24) = v23;
    swift_retain_n();
    v29 = v26;
    v30 = v24;
    sub_251F29F58(sub_251F31630, v27, sub_251F31E00, v28);
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251F30B94()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251F30BF4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251F30C68(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_251F30CE0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Iegh_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_251F30D98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_251F30DE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_251F30E30()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251F30E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251F30ECC(uint64_t a1)
{
  if (!qword_27F4C0F88)
  {
    sub_251F32064();
    v1 = sub_251F32164();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4C0F88);
    }
  }
}

uint64_t sub_251F30F24(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_251F30F3C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251F30FAC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_251F31008(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_251F31008(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_251F31060(255, a3, a4);
    v5 = sub_251F321B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251F31060(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251F310DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_251F31140(uint64_t a1)
{
  if (!qword_27F4C0FC0)
  {
    sub_251F31F74();
    sub_251F31060(255, &qword_27F4C0F08, &protocol descriptor for HealthTopicStore.PendingRequest);
    sub_251F30E84(&qword_27F4C0FC8, MEMORY[0x277D125D0], MEMORY[0x277D125D8]);
    v1 = sub_251F32254();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4C0FC0);
    }
  }
}

uint64_t sub_251F311FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  sub_251F30C68(v4, v3);
  result = sub_251F30CE0(v5, v6);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251F31258(void *a1)
{
  v3 = *(sub_251F31F74() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_251F2A25C(a1, v4, v5);
}

uint64_t sub_251F312CC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251F31304(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_251F3133C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_251F313A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_251F31404()
{
  result = qword_27F4C0FD8;
  if (!qword_27F4C0FD8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4C0FD8);
  }

  return result;
}

void sub_251F31468()
{
  if (!qword_27F4C0FE0)
  {
    v0 = sub_251F322C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C0FE0);
    }
  }
}

uint64_t objectdestroyTm()
{
  v1 = sub_251F31F74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_251F315E8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_251F3163C(uint64_t a1)
{
  if (!qword_27F4C0FE8[0])
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_251F32204();
    if (!v2)
    {
      atomic_store(v1, qword_27F4C0FE8);
    }
  }
}

uint64_t sub_251F3169C()
{
  MEMORY[0x253092FC0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251F316DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_251F3171C(uint64_t a1)
{
  type metadata accessor for HealthTopicStore();
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_251F31F74();
    if (v3 <= 0x3F)
    {
      result = sub_251F31CEC();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_251F317C8(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_251F31F74();
  v9 = *(v8 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((*(*(v8 - 8) + 64) + ((v11 + v12 + ((v10 + 8) & ~v10)) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v14 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v14 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if ((v13 & 0x80000000) != 0)
  {
    v25 = (a1 + v10 + 8) & ~v10;
    if (v7 == v14)
    {
      v26 = *(v6 + 48);

      return v26(v25, v7, v5);
    }

    else
    {
      v27 = *(v9 + 48);
      v28 = (v25 + v11 + v12) & ~v12;

      return v27(v28);
    }
  }

  else
  {
    v24 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }
}

void sub_251F31A34(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = sub_251F31F74();
  v11 = *(v10 - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((*(*(v10 - 8) + 64) + ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(*(v10 - 8) + 64) + ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v15 & 0x80000000) != 0)
        {
          v25 = (a1 + v12 + 8) & ~v12;
          if (v9 == v16)
          {
            v26 = *(v29 + 56);

            v26(v25, a2, v9, v7);
          }

          else
          {
            v27 = *(v11 + 56);
            v28 = (v25 + v13 + v14) & ~v14;

            v27(v28, a2);
          }
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = (a2 - 1);
          }

          *a1 = v24;
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (((*(*(v10 - 8) + 64) + ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((*(*(v10 - 8) + 64) + ((v13 + v14 + ((v12 + 8) & ~v12)) & ~v14) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

unint64_t sub_251F31CEC()
{
  result = qword_27F4C1070;
  if (!qword_27F4C1070)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27F4C1070);
  }

  return result;
}