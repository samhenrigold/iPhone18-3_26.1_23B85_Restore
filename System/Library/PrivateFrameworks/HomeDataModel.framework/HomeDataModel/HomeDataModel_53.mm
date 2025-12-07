uint64_t sub_1D1B87440(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v170 = a7;
  v163 = a5;
  v149 = a4;
  v152 = a3;
  v167 = a9;
  v13 = type metadata accessor for StaticMatterDevice(0);
  v147 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v150 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v146 = &v146 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v148 = &v146 - v18;
  v19 = type metadata accessor for StaticServiceGroup(0);
  v156 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v168 = &v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v155 = &v146 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v166 = &v146 - v24;
  v25 = type metadata accessor for StaticService(0);
  v158 = *(v25 - 8);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v171 = &v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v157 = &v146 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v169 = &v146 - v30;
  v162 = type metadata accessor for StaticAccessory(0);
  v160 = *(v162 - 8);
  v31 = MEMORY[0x1EEE9AC00](v162);
  v164 = &v146 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v159 = &v146 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v172 = &v146 - v35;
  v36 = sub_1D1E66A7C();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v151 = &v146 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v173 = &v146 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v178 = &v146 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v176 = &v146 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v185 = &v146 - v46;
  v47 = a1 + 56;
  v48 = 1 << *(a1 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(a1 + 56);
  v51 = (v48 + 63) >> 6;
  v184 = v45 + 16;
  v179 = v45;
  v181 = a1;
  v182 = (v45 + 8);

  v52 = 0;
  v174 = a6;
  v175 = a2;
  v177 = v36;
  v165 = v51;
  v153 = a8;
  v154 = v47;
  while (v50)
  {
LABEL_12:
    v55 = *(v181 + 48);
    v180 = *(v179 + 72);
    v183 = *(v179 + 16);
    v183(v185, v55 + v180 * (__clz(__rbit64(v50)) | (v52 << 6)), v36);
    if (*(a2 + 16))
    {
      v56 = sub_1D1742188();
      if (v57)
      {
        v58 = *(a2 + 56);
        v59 = *(v160 + 72);
        v60 = v159;
        sub_1D1B89120(v58 + v59 * v56, v159, type metadata accessor for StaticAccessory);
        v61 = v172;
        sub_1D1B89F40(v60, v172, type metadata accessor for StaticAccessory);
        if (*(v61 + *(v162 + 148)) == 1 && (v62 = v61 + *(v162 + 144), (*(v62 + 8) & 1) == 0) && *(v152 + 16) && (v63 = sub_1D17420B0(*v62), (v64 & 1) != 0))
        {
          v65 = *(v152 + 56);
          v161 = *(v147 + 72);
          v66 = v146;
          sub_1D1B89120(v65 + v161 * v63, v146, type metadata accessor for StaticMatterDevice);
          v67 = v66;
          v68 = v148;
          sub_1D1B89F40(v67, v148, type metadata accessor for StaticMatterDevice);
          v183(v151, v172, v36);
          sub_1D1B89120(v68, v150, type metadata accessor for StaticMatterDevice);
          v69 = v149;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = *v69;
          v186 = v71;
          v72 = sub_1D1742188();
          v74 = v71[2];
          v75 = (v73 & 1) == 0;
          v76 = __OFADD__(v74, v75);
          v77 = v74 + v75;
          if (v76)
          {
            goto LABEL_73;
          }

          v78 = v73;
          if (v71[3] >= v77)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v144 = v72;
              sub_1D1736F7C();
              v72 = v144;
            }
          }

          else
          {
            sub_1D1725208(v77, isUniquelyReferenced_nonNull_native);
            v72 = sub_1D1742188();
            if ((v78 & 1) != (v79 & 1))
            {
              goto LABEL_75;
            }
          }

          v36 = v177;
          v138 = v186;
          if (v78)
          {
            sub_1D1B89FA8(v150, v186[7] + v72 * v161, type metadata accessor for StaticMatterDevice);
          }

          else
          {
            v186[(v72 >> 6) + 8] |= 1 << v72;
            v139 = v72;
            v183((v138[6] + v72 * v180), v151, v36);
            sub_1D1B89F40(v150, v138[7] + v139 * v161, type metadata accessor for StaticMatterDevice);
            v140 = v138[2];
            v76 = __OFADD__(v140, 1);
            v141 = v140 + 1;
            if (v76)
            {
              goto LABEL_74;
            }

            v138[2] = v141;
          }

          a6 = v174;
          a2 = v175;
          (*v182)(v151, v36);
          *v149 = v138;
          sub_1D1B89188(v148, type metadata accessor for StaticMatterDevice);
        }

        else
        {
          v161 = v59;
          v183(v173, v61, v36);
          sub_1D1B89120(v61, v164, type metadata accessor for StaticAccessory);
          v80 = v163;
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v82 = *v80;
          v186 = v82;
          v83 = sub_1D1742188();
          v85 = v82[2];
          v86 = (v84 & 1) == 0;
          v76 = __OFADD__(v85, v86);
          v87 = v85 + v86;
          if (v76)
          {
            goto LABEL_69;
          }

          v88 = v84;
          if (v82[3] >= v87)
          {
            if ((v81 & 1) == 0)
            {
              v143 = v83;
              sub_1D17362B8();
              v83 = v143;
            }
          }

          else
          {
            sub_1D1723F74(v87, v81);
            v83 = sub_1D1742188();
            if ((v88 & 1) != (v89 & 1))
            {
              goto LABEL_75;
            }
          }

          v36 = v177;
          v90 = v161;
          v91 = v186;
          if (v88)
          {
            sub_1D1B89FA8(v164, v186[7] + v83 * v161, type metadata accessor for StaticAccessory);
          }

          else
          {
            v186[(v83 >> 6) + 8] |= 1 << v83;
            v92 = v83;
            v183((v91[6] + v83 * v180), v173, v36);
            sub_1D1B89F40(v164, v91[7] + v92 * v90, type metadata accessor for StaticAccessory);
            v93 = v91[2];
            v76 = __OFADD__(v93, 1);
            v94 = v93 + 1;
            if (v76)
            {
              goto LABEL_72;
            }

            v91[2] = v94;
          }

          (*v182)(v173, v36);
          *v163 = v91;
          a6 = v174;
          a2 = v175;
        }

        sub_1D1B89188(v172, type metadata accessor for StaticAccessory);
      }
    }

    if (*(a6 + 16))
    {
      v95 = sub_1D1742188();
      if (v96)
      {
        v97 = *(v158 + 72);
        v98 = *(a6 + 56) + v97 * v95;
        v99 = v157;
        sub_1D1B89120(v98, v157, type metadata accessor for StaticService);
        v100 = v99;
        v101 = v169;
        sub_1D1B89F40(v100, v169, type metadata accessor for StaticService);
        v183(v178, v101, v36);
        sub_1D1B89120(v101, v171, type metadata accessor for StaticService);
        v102 = v170;
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v104 = *v102;
        v186 = v104;
        v105 = sub_1D1742188();
        v107 = v104[2];
        v108 = (v106 & 1) == 0;
        v76 = __OFADD__(v107, v108);
        v109 = v107 + v108;
        if (v76)
        {
          goto LABEL_67;
        }

        v110 = v106;
        if (v104[3] >= v109)
        {
          if ((v103 & 1) == 0)
          {
            v142 = v105;
            sub_1D1735934();
            v105 = v142;
          }
        }

        else
        {
          sub_1D1723194(v109, v103);
          v105 = sub_1D1742188();
          if ((v110 & 1) != (v111 & 1))
          {
            goto LABEL_75;
          }
        }

        v36 = v177;
        v51 = v165;
        v112 = v186;
        if (v110)
        {
          sub_1D1B89FA8(v171, v186[7] + v105 * v97, type metadata accessor for StaticService);
        }

        else
        {
          v186[(v105 >> 6) + 8] |= 1 << v105;
          v113 = v105;
          v183((v112[6] + v105 * v180), v178, v36);
          sub_1D1B89F40(v171, v112[7] + v113 * v97, type metadata accessor for StaticService);
          v114 = v112[2];
          v76 = __OFADD__(v114, 1);
          v115 = v114 + 1;
          if (v76)
          {
            goto LABEL_70;
          }

          v112[2] = v115;
        }

        (*v182)(v178, v36);
        v116 = v169;
        *v170 = v112;
        sub_1D1B89188(v116, type metadata accessor for StaticService);
        a6 = v174;
        a2 = v175;
      }
    }

    if (*(a8 + 16))
    {
      v117 = sub_1D1742188();
      if (v118)
      {
        v119 = *(a8 + 56);
        v120 = *(v156 + 72);
        v121 = v155;
        sub_1D1B89120(v119 + v120 * v117, v155, type metadata accessor for StaticServiceGroup);
        v122 = v121;
        v123 = v166;
        sub_1D1B89F40(v122, v166, type metadata accessor for StaticServiceGroup);
        v183(v176, v123, v36);
        sub_1D1B89120(v123, v168, type metadata accessor for StaticServiceGroup);
        v124 = v167;
        v125 = swift_isUniquelyReferenced_nonNull_native();
        v126 = *v124;
        v186 = v126;
        v128 = sub_1D1742188();
        v129 = v126[2];
        v130 = (v127 & 1) == 0;
        v131 = v129 + v130;
        if (__OFADD__(v129, v130))
        {
          goto LABEL_68;
        }

        v132 = v127;
        if (v126[3] >= v131)
        {
          v51 = v165;
          if ((v125 & 1) == 0)
          {
            sub_1D17352DC();
          }
        }

        else
        {
          sub_1D1722854(v131, v125);
          v133 = sub_1D1742188();
          v51 = v165;
          if ((v132 & 1) != (v134 & 1))
          {
            goto LABEL_75;
          }

          v128 = v133;
        }

        a2 = v175;
        v47 = v154;
        v135 = v186;
        if (v132)
        {
          sub_1D1B89FA8(v168, v186[7] + v128 * v120, type metadata accessor for StaticServiceGroup);
          v36 = v177;
        }

        else
        {
          v186[(v128 >> 6) + 8] |= 1 << v128;
          v36 = v177;
          v183((v135[6] + v128 * v180), v176, v177);
          sub_1D1B89F40(v168, v135[7] + v128 * v120, type metadata accessor for StaticServiceGroup);
          v136 = v135[2];
          v76 = __OFADD__(v136, 1);
          v137 = v136 + 1;
          if (v76)
          {
            goto LABEL_71;
          }

          v135[2] = v137;
        }

        (*v182)(v176, v36);
        v53 = v166;
        *v167 = v135;
        sub_1D1B89188(v53, type metadata accessor for StaticServiceGroup);
        a8 = v153;
        a6 = v174;
      }
    }

    v50 &= v50 - 1;
    (*v182)(v185, v36);
  }

  while (1)
  {
    v54 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v54 >= v51)
    {
    }

    v50 = *(v47 + 8 * v54);
    ++v52;
    if (v50)
    {
      v52 = v54;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1B88440(void *a1)
{
  a1[1] = sub_1D1B891E8(&qword_1EC64B9B0, type metadata accessor for StaticCameraProfile, &protocol conformance descriptor for StaticCameraProfile);
  a1[2] = sub_1D1B891E8(&qword_1EC64B9B8, type metadata accessor for StaticCameraProfile, &protocol conformance descriptor for StaticCameraProfile);
  a1[3] = sub_1D1B891E8(&qword_1EC64B9C0, type metadata accessor for StaticCameraProfile, &protocol conformance descriptor for StaticCameraProfile);
  a1[4] = sub_1D1B891E8(&qword_1EC64B9C8, type metadata accessor for StaticCameraProfile, &protocol conformance descriptor for StaticCameraProfile);
  a1[5] = sub_1D1B891E8(&qword_1EC643520, type metadata accessor for StaticCameraProfile, &protocol conformance descriptor for StaticCameraProfile);
  result = sub_1D1B891E8(&qword_1EC64B9D0, type metadata accessor for StaticCameraProfile, &protocol conformance descriptor for StaticCameraProfile);
  a1[6] = result;
  return result;
}

unint64_t sub_1D1B88568()
{
  result = qword_1EC64B9D8;
  if (!qword_1EC64B9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B9D8);
  }

  return result;
}

void sub_1D1B885E4(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1791340(319);
    if (v2 <= 0x3F)
    {
      sub_1D17786E4();
      if (v3 <= 0x3F)
      {
        sub_1D1B88758(319, &qword_1EE07D290, type metadata accessor for StaticCameraSnapshotControl);
        if (v4 <= 0x3F)
        {
          sub_1D1B88758(319, &qword_1EE07D300, type metadata accessor for StaticCameraStreamControl);
          if (v5 <= 0x3F)
          {
            sub_1D1B88758(319, &qword_1EE07B880, type metadata accessor for StaticCameraRecordingEventManager);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D1B88758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1E685AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticCameraProfile.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StaticCameraProfile.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1B88920()
{
  result = qword_1EC64B9E0;
  if (!qword_1EC64B9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B9E0);
  }

  return result;
}

unint64_t sub_1D1B88978()
{
  result = qword_1EC64B9E8;
  if (!qword_1EC64B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B9E8);
  }

  return result;
}

unint64_t sub_1D1B889D0()
{
  result = qword_1EC64B9F0;
  if (!qword_1EC64B9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B9F0);
  }

  return result;
}

unint64_t sub_1D1B88A28()
{
  result = qword_1EC64B9F8;
  if (!qword_1EC64B9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64B9F8);
  }

  return result;
}

unint64_t sub_1D1B88A80()
{
  result = qword_1EC64BA00;
  if (!qword_1EC64BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA00);
  }

  return result;
}

unint64_t sub_1D1B88AD8()
{
  result = qword_1EC64BA08;
  if (!qword_1EC64BA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA08);
  }

  return result;
}

uint64_t sub_1D1B88B2C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7364496D6F6F72 && a2 == 0xE700000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC5D60 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC5D80 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6168636165527369 && a2 == 0xEB00000000656C62 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC5DA0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746F687370616E73 && a2 == 0xEF6C6F72746E6F43 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F436D6165727473 && a2 == 0xED00006C6F72746ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DC0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69726F7661467369 && a2 == 0xEA00000000006574 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5DE0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC5E00 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1D1B88FA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F737365636361 && a2 == 0xEB00000000736569;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4765636976726573 && a2 == 0xED00007370756F72 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654472657474616DLL && a2 == 0xED00007365636976)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1B89120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B89188(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1B891E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1B89270(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v44 = a2;
  v45 = a1;
  v6 = type metadata accessor for StaticAccessory(0);
  v49 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  MEMORY[0x1EEE9AC00](v57);
  v63 = &v43 - v9;
  v50 = type metadata accessor for StaticService(0);
  v56 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v62);
  v61 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0;
  v59 = a3;
  v18 = a3[8];
  v17 = a3 + 8;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v46 = (v19 + 63) >> 6;
  v47 = 0;
  v51 = v13 + 16;
  v52 = a4;
  v53 = v13;
  v54 = v8;
  v58 = (v13 + 8);
  v55 = v6;
  while (v21)
  {
    v22 = __clz(__rbit64(v21));
    v60 = (v21 - 1) & v21;
LABEL_12:
    v25 = v22 | (v15 << 6);
    v26 = v59;
    v27 = *(v53 + 16);
    v29 = v61;
    v28 = v62;
    v27(v61, v59[6] + *(v53 + 72) * v25, v62);
    v30 = v26[7];
    v31 = *(v56 + 72);
    v48 = v25;
    sub_1D1B89120(v30 + v31 * v25, v11, type metadata accessor for StaticService);
    v32 = v11;
    v33 = v63;
    v27(v63, v29, v28);
    v34 = v33 + *(v57 + 48);
    v11 = v32;
    sub_1D1B89120(v32, v34, type metadata accessor for StaticService);
    v35 = v52;
    v37 = v54;
    v36 = v55;
    if (!*(v52 + 16))
    {
      goto LABEL_20;
    }

    v38 = sub_1D1742188();
    if ((v39 & 1) == 0)
    {
      goto LABEL_20;
    }

    sub_1D1B89120(*(v35 + 56) + *(v49 + 72) * v38, v37, type metadata accessor for StaticAccessory);
    if ((*(v37 + v36[19]) & 1) != 0 || (*(v37 + v36[27]) & 1) == 0)
    {
      sub_1D1B89188(v37, type metadata accessor for StaticAccessory);
LABEL_20:
      sub_1D1741A30(v63, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1B89188(v32, type metadata accessor for StaticService);
      result = (*v58)(v61, v62);
      v21 = v60;
LABEL_21:
      *(v45 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      if (__OFADD__(v47++, 1))
      {
        __break(1u);
        return sub_1D188B1C8(v45, v44, v47, v59);
      }
    }

    else
    {
      v40 = StaticAccessory.hasVisibleServices(minCount:)(2);
      sub_1D1741A30(v63, &qword_1EC642DB0, &unk_1D1E6F360);
      if (v40)
      {
        sub_1D1B89188(v37, type metadata accessor for StaticAccessory);
        sub_1D1B89188(v32, type metadata accessor for StaticService);
        result = (*v58)(v61, v62);
        v21 = v60;
      }

      else
      {
        v41 = *(v37 + v36[37]);
        sub_1D1B89188(v37, type metadata accessor for StaticAccessory);
        sub_1D1B89188(v32, type metadata accessor for StaticService);
        result = (*v58)(v61, v62);
        v21 = v60;
        if ((v41 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v46)
    {
      return sub_1D188B1C8(v45, v44, v47, v59);
    }

    v24 = v17[v15];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v60 = (v24 - 1) & v24;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B897EC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v43[0] = a2;
  v45 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  MEMORY[0x1EEE9AC00](v53);
  v63 = v43 - v6;
  v7 = type metadata accessor for StaticService(0);
  v52 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v43 - v11;
  v60 = sub_1D1E66A7C();
  result = MEMORY[0x1EEE9AC00](v60);
  v59 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a3;
  v55 = 0;
  v16 = 0;
  v17 = *(a3 + 64);
  v44 = a3 + 64;
  v18 = 1 << *(a3 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v48 = v14 + 16;
  v61 = a4;
  v50 = v14;
  v46 = (v14 + 8);
  v49 = v21;
  v51 = v12;
  v47 = a4 + 7;
  while (v20)
  {
    v22 = __clz(__rbit64(v20));
    v58 = (v20 - 1) & v20;
LABEL_13:
    v25 = v22 | (v16 << 6);
    v26 = v54;
    v27 = v54[6] + *(v50 + 72) * v25;
    v57 = *(v50 + 16);
    v28 = v59;
    v29 = v60;
    v57(v59, v27, v60);
    v30 = v26[7];
    v31 = *(v52 + 72);
    v56 = v25;
    sub_1D1B89120(v30 + v31 * v25, v12, type metadata accessor for StaticService);
    v32 = v12;
    v33 = v63;
    v57(v63, v28, v29);
    v34 = *(v53 + 48);
    sub_1D1B89120(v32, v33 + v34, type metadata accessor for StaticService);
    v35 = v47;
    if (v61[2] && (v36 = v61, sub_1D1E6920C(), StaticService.hash(into:)(v62), v37 = sub_1D1E6926C(), v38 = -1 << *(v36 + 32), v39 = v37 & ~v38, ((*(v35 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
    {
      v40 = ~v38;
      while (1)
      {
        sub_1D1B89120(v61[6] + v39 * v31, v10, type metadata accessor for StaticService);
        v41 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v10, &v63[v34]);
        sub_1D1B89188(v10, type metadata accessor for StaticService);
        if (v41)
        {
          break;
        }

        v39 = (v39 + 1) & v40;
        if (((*(v35 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      sub_1D1741A30(v63, &qword_1EC642DB0, &unk_1D1E6F360);
      v12 = v51;
      sub_1D1B89188(v51, type metadata accessor for StaticService);
      result = (*v46)(v59, v60);
      v21 = v49;
      v20 = v58;
    }

    else
    {
LABEL_18:
      sub_1D1741A30(v63, &qword_1EC642DB0, &unk_1D1E6F360);
      v12 = v51;
      sub_1D1B89188(v51, type metadata accessor for StaticService);
      result = (*v46)(v59, v60);
      *(v45 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
      v42 = __OFADD__(v55++, 1);
      v21 = v49;
      v20 = v58;
      if (v42)
      {
        __break(1u);
        return sub_1D188B1C8(v45, v43[0], v55, v54);
      }
    }
  }

  v23 = v16;
  while (1)
  {
    v16 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v16 >= v21)
    {
      return sub_1D188B1C8(v45, v43[0], v55, v54);
    }

    v24 = *(v44 + 8 * v16);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v58 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1B89D30(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v17[1] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;
  v13 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_1D1B85C30(v16, v11, a1, a2, a4);
      MEMORY[0x1D3893640](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      return v14;
    }
  }

  MEMORY[0x1EEE9AC00](v13);
  bzero(v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v12);

  v14 = a3(v17 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0), v11, a1, a2);

  if (v4)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v14;
}

uint64_t sub_1D1B89F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B89FA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t StaticCameraProfile.AccessMode.description.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6120746365746564;
  v4 = 0x6D6165727473;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 6710895;
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

unint64_t StaticCameraProfile.AccessMode.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1D1B8A104()
{
  result = qword_1EC64BA40;
  if (!qword_1EC64BA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BA48, &qword_1D1E9B690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA40);
  }

  return result;
}

unint64_t sub_1D1B8A178()
{
  result = qword_1EC64BA50;
  if (!qword_1EC64BA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA50);
  }

  return result;
}

unint64_t sub_1D1B8A28C()
{
  result = qword_1EC64BA58;
  if (!qword_1EC64BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA58);
  }

  return result;
}

uint64_t StaticCameraProfile.lowBatteryLevel(in:)(uint64_t a1)
{
  v2 = type metadata accessor for StaticCameraProfile(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17[-v7];
  v9 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 40));
  if (!*(v9 + 16))
  {
    return 0;
  }

  v10 = sub_1D1742188();
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  sub_1D1B8A814(*(v9 + 56) + *(v3 + 72) * v10, v5, type metadata accessor for StaticCameraProfile);
  v12 = *&v5[*(v2 + 36)];

  v13 = sub_1D1B8A87C(v5, type metadata accessor for StaticCameraProfile);
  MEMORY[0x1EEE9AC00](v13);
  *&v17[-16] = a1;
  sub_1D17479B4(sub_1D1B8A7D4, v12, v8);

  MEMORY[0x1EEE9AC00](v14);
  *&v17[-16] = a1;
  v15 = sub_1D17BE894(sub_1D1B8A7F4);
  sub_1D1835548(v8);
  return v15;
}

BOOL sub_1D1B8A51C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StaticService(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = sub_1D1742188();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_1D1B8A814(*(v7 + 56) + *(v4 + 72) * v8, v6, type metadata accessor for StaticService);
  v14 = *&v6[*(v3 + 128)];
  HIBYTE(v13) = 11;
  v15 = StaticCharacteristicsBag.int(for:)((&v13 + 7));
  value = v15.value;
  is_nil = v15.is_nil;
  sub_1D1B8A87C(v6, type metadata accessor for StaticService);
  return !is_nil && value < 26;
}

uint64_t sub_1D1B8A674@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for StateSnapshot(0);
  v9 = *(a1 + *(result + 60));
  if (*(v9 + 16) && (result = sub_1D1742188(), (v10 & 1) != 0))
  {
    sub_1D1B8A814(*(v9 + 56) + *(v5 + 72) * result, v7, type metadata accessor for StaticService);
    v13 = *&v7[*(v4 + 128)];
    v12 = 11;
    v14 = StaticCharacteristicsBag.int(for:)(&v12);
    *a2 = v14.value;
    *(a2 + 8) = v14.is_nil;
    return sub_1D1B8A87C(v7, type metadata accessor for StaticService);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 1;
  }

  return result;
}

uint64_t sub_1D1B8A814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1B8A87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t StaticCameraProfile.CameraMode.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticCameraProfile.currentMode.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for StaticCameraProfile(0);
  sub_1D1741C08(v1 + *(v6 + 52), v5, &qword_1EC64B8E0, &qword_1D1E9B038);
  v7 = type metadata accessor for StaticCameraStreamControl(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    result = sub_1D1741A30(v5, &qword_1EC64B8E0, &qword_1D1E9B038);
    v9 = 1;
  }

  else
  {
    v10 = v5[*(v7 + 20)];
    result = sub_1D1B8BD24(v5, type metadata accessor for StaticCameraStreamControl);
    v9 = v10 != 2;
  }

  *a1 = v9;
  return result;
}

uint64_t StaticCameraProfile.cameraSource.getter()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B8ABD4, 0, 0);
}

uint64_t sub_1D1B8ABD4()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = type metadata accessor for StaticCameraProfile(0);
  v4 = *(v3 + 52);
  sub_1D1741C08(v2 + v4, v1, &qword_1EC64B8E0, &qword_1D1E9B038);
  v5 = type metadata accessor for StaticCameraStreamControl(0);
  v6 = *(*(v5 - 8) + 48);
  v7 = v6(v1, 1, v5);
  v8 = v0[5];
  if (v7 == 1)
  {
    sub_1D1741A30(v8, &qword_1EC64B8E0, &qword_1D1E9B038);
LABEL_6:
    v14 = v0[3];
    sub_1D1741C08(v0[2] + *(v3 + 48), v14, &qword_1EC64B8D8, &qword_1D1E9B030);
    v15 = type metadata accessor for StaticCameraSnapshotControl(0);
    if ((*(*(v15 - 8) + 48))(v14, 1, v15) == 1)
    {
      v11 = v0[3];
      v12 = &qword_1EC64B8D8;
      v13 = &qword_1D1E9B030;
      goto LABEL_8;
    }

    v18 = swift_task_alloc();
    v0[8] = v18;
    *v18 = v0;
    v18[1] = sub_1D1B8B0C8;
    v19 = v0[3];
    goto LABEL_13;
  }

  v9 = *(v8 + *(v5 + 20));
  sub_1D1B8BD24(v8, type metadata accessor for StaticCameraStreamControl);
  if (v9 != 2)
  {
    goto LABEL_6;
  }

  v10 = v0[4];
  sub_1D1741C08(v2 + v4, v10, &qword_1EC64B8E0, &qword_1D1E9B038);
  if (v6(v10, 1, v5) == 1)
  {
    v11 = v0[4];
    v12 = &qword_1EC64B8E0;
    v13 = &qword_1D1E9B038;
LABEL_8:
    sub_1D1741A30(v11, v12, v13);

    v16 = v0[1];

    return v16(0);
  }

  v20 = swift_task_alloc();
  v0[6] = v20;
  *v20 = v0;
  v20[1] = sub_1D1B8AEE4;
  v19 = v0[4];
LABEL_13:

  return sub_1D1E506F8(v19);
}

uint64_t sub_1D1B8AEE4(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8AFE4, 0, 0);
}

uint64_t sub_1D1B8AFE4()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = [v1 streamControl];

  v4 = [v3 cameraStream];
  sub_1D1B8BD24(v2, type metadata accessor for StaticCameraStreamControl);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1D1B8B0C8(uint64_t a1)
{
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8B1C8, 0, 0);
}

uint64_t sub_1D1B8B1C8()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = [v1 snapshotControl];

  v4 = [v3 mostRecentSnapshot];
  sub_1D1B8BD24(v2, type metadata accessor for StaticCameraSnapshotControl);

  v5 = v0[1];

  return v5(v4);
}

uint64_t StaticCameraProfile.takeSnapshot()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8D8, &qword_1D1E9B030);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B8B348, 0, 0);
}

uint64_t sub_1D1B8B348()
{
  v1 = v0[2];
  v2 = type metadata accessor for StaticCameraProfile(0);
  if (*(v1 + v2[10]) != 1 || *(v1 + v2[11]) < 3u)
  {
LABEL_5:

    v5 = v0[1];

    return v5();
  }

  v3 = v0[3];
  sub_1D1741C08(v1 + v2[12], v3, &qword_1EC64B8D8, &qword_1D1E9B030);
  v4 = type metadata accessor for StaticCameraSnapshotControl(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_1D1741A30(v0[3], &qword_1EC64B8D8, &qword_1D1E9B030);
    goto LABEL_5;
  }

  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1D1B8B4C0;

  return StaticCameraSnapshotControl.takeSnapshot()();
}

uint64_t sub_1D1B8B4C0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  sub_1D1B8BD24(v1, type metadata accessor for StaticCameraSnapshotControl);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t StaticCameraProfile.startStreaming()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B8B688, 0, 0);
}

uint64_t sub_1D1B8B688()
{
  v1 = v0[2];
  v2 = type metadata accessor for StaticCameraProfile(0);
  if (*(v1 + *(v2 + 40)) != 1 || *(v1 + *(v2 + 44)) < 3u || (v3 = v2, sub_1D1B8B80C()))
  {
LABEL_6:

    v6 = v0[1];

    return v6();
  }

  v4 = v0[3];
  sub_1D1741C08(v0[2] + *(v3 + 52), v4, &qword_1EC64B8E0, &qword_1D1E9B038);
  v5 = type metadata accessor for StaticCameraStreamControl(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    sub_1D1741A30(v0[3], &qword_1EC64B8E0, &qword_1D1E9B038);
    goto LABEL_6;
  }

  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_1D1B8BDEC;

  return StaticCameraStreamControl.startStream()();
}

BOOL sub_1D1B8B80C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for StaticCameraProfile(0) + 52);
  sub_1D1741C08(v0 + v7, v6, &qword_1EC64B8E0, &qword_1D1E9B038);
  v8 = type metadata accessor for StaticCameraStreamControl(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) == 1)
  {
    sub_1D1741A30(v6, &qword_1EC64B8E0, &qword_1D1E9B038);
  }

  else
  {
    v10 = v6[*(v8 + 20)];
    sub_1D1B8BD24(v6, type metadata accessor for StaticCameraStreamControl);
    if (v10 == 2)
    {
      return 1;
    }
  }

  sub_1D1741C08(v0 + v7, v4, &qword_1EC64B8E0, &qword_1D1E9B038);
  if (v9(v4, 1, v8) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC64B8E0, &qword_1D1E9B038);
    return 0;
  }

  else
  {
    v12 = v4[*(v8 + 20)];
    sub_1D1B8BD24(v4, type metadata accessor for StaticCameraStreamControl);
    return v12 == 1;
  }
}

uint64_t StaticCameraProfile.stopStreaming()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B8BA98, 0, 0);
}

uint64_t sub_1D1B8BA98()
{
  if (!sub_1D1B8B80C())
  {
LABEL_4:

    v5 = v0[1];

    return v5();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for StaticCameraProfile(0);
  sub_1D1741C08(v1 + *(v3 + 52), v2, &qword_1EC64B8E0, &qword_1D1E9B038);
  v4 = type metadata accessor for StaticCameraStreamControl(0);
  if ((*(*(v4 - 8) + 48))(v2, 1, v4) == 1)
  {
    sub_1D1741A30(v0[3], &qword_1EC64B8E0, &qword_1D1E9B038);
    goto LABEL_4;
  }

  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1D1B8BBF8;

  return StaticCameraStreamControl.stopStream()();
}

uint64_t sub_1D1B8BBF8()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  sub_1D1B8BD24(v1, type metadata accessor for StaticCameraStreamControl);

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1D1B8BD24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1B8BD88()
{
  result = qword_1EC64BA60;
  if (!qword_1EC64BA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA60);
  }

  return result;
}

uint64_t _s13HomeDataModel19StaticCameraProfileV12statusString4with22associatedMatterDeviceSSSgAA13StatusStringsV7OptionsV_AA0dkL0VSgtF_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v12 - v2;
  v4 = type metadata accessor for StaticCameraProfile(0);
  sub_1D1B8BFC4(v0 + v4[13], v3);
  v5 = type metadata accessor for StaticCameraStreamControl(0);
  if ((*(*(v5 - 8) + 48))(v3, 1, v5) == 1)
  {
    sub_1D1B8C034(v3);
  }

  else
  {
    v6 = v3[*(v5 + 20)];
    sub_1D1B8C09C(v3);
    if (v6 == 2)
    {
      return 1702259020;
    }
  }

  v8 = *(v0 + v4[11]);
  if (v8 <= 2)
  {
    if (*(v0 + v4[11]))
    {
      if (v8 == 1)
      {
        v9 = 0xE300000000000000;
        v10 = 6710895;
      }

      else
      {
        v9 = 0xEF79746976697463;
        v10 = 0x6120746365746564;
      }
    }

    else
    {
      v9 = 0xE400000000000000;
      v10 = 1701736302;
    }

    v12[0] = v10;
    v12[1] = v9;
    sub_1D17D8EF0();
    v11 = sub_1D1E685EC();

    return v11;
  }

  else if (*(v0 + v4[10]))
  {
    return 0;
  }

  else
  {
    return 0x6F70736552206F4ELL;
  }
}

uint64_t sub_1D1B8BFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B8C034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B8E0, &qword_1D1E9B038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1B8C09C(uint64_t a1)
{
  v2 = type metadata accessor for StaticCameraStreamControl(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StaticCameraRecordingEventManager.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D1B8C170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D1E6904C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1B8C1F0(uint64_t a1)
{
  v2 = sub_1D1B8C3E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B8C22C(uint64_t a1)
{
  v2 = sub_1D1B8C3E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCameraRecordingEventManager.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA68, &qword_1D1E9B8A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8C3E0();
  sub_1D1E6930C();
  sub_1D1E66A7C();
  sub_1D1B8CA54(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D1B8C3E0()
{
  result = qword_1EC64BA70;
  if (!qword_1EC64BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA70);
  }

  return result;
}

uint64_t StaticCameraRecordingEventManager.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1B8CA54(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_1D1E676EC();
}

uint64_t StaticCameraRecordingEventManager.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B8CA54(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t StaticCameraRecordingEventManager.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1D1E66A7C();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA78, &qword_1D1E9B8A8);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for StaticCameraRecordingEventManager(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8C3E0();
  sub_1D1E692FC();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1D1B8CA54(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1D1E68D7C();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1D1B8C9A8(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1B8C7CC()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B8CA54(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B8C854(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1B8CA54(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_1D1E676EC();
}

uint64_t sub_1D1B8C8D8(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B8CA54(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t type metadata accessor for StaticCameraRecordingEventManager(uint64_t a1)
{
  result = qword_1EE07B888;
  if (!qword_1EE07B888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1B8C9A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraRecordingEventManager(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B8CA54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1B8CAFC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BA68, &qword_1D1E9B8A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8C3E0();
  sub_1D1E6930C();
  sub_1D1E66A7C();
  sub_1D1B8CA54(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1D1B8CCB0()
{
  result = qword_1EC64BA88;
  if (!qword_1EC64BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA88);
  }

  return result;
}

unint64_t sub_1D1B8CD08()
{
  result = qword_1EC64BA90;
  if (!qword_1EC64BA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA90);
  }

  return result;
}

unint64_t sub_1D1B8CD60()
{
  result = qword_1EC64BA98;
  if (!qword_1EC64BA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BA98);
  }

  return result;
}

uint64_t sub_1D1B8CDB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for StaticCameraSnapshotControl(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v12 = [a1 snapshotControl];
  if (v12 && (v13 = v12, v14 = [v12 mostRecentSnapshot], v13, v14))
  {
    v15 = [v14 captureDate];

    sub_1D1E669BC();
    v16 = 0;
    a1 = v15;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_1D1E669FC();
  (*(*(v17 - 8) + 56))(v6, v16, 1, v17);
  sub_1D19A376C(v6, &v10[*(v7 + 20)]);
  sub_1D1B8F014(v10, a2);
  return (*(v8 + 56))(a2, 0, 1, v7);
}

uint64_t StaticCameraSnapshotControl.mostRecentSnapshot.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1B8D084;

  return sub_1D1E506F8(v0);
}

uint64_t sub_1D1B8D084(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8D184, 0, 0);
}

uint64_t sub_1D1B8D184()
{
  v1 = *(v0 + 24);
  v2 = [v1 snapshotControl];

  v3 = [v2 mostRecentSnapshot];
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t StaticCameraSnapshotControl.takeSnapshot()()
{
  v1[2] = v0;
  type metadata accessor for StaticCameraSnapshotControl(0);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1D1B8D308;

  return sub_1D1E506F8(v0);
}

uint64_t sub_1D1B8D308(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8D408, 0, 0);
}

uint64_t sub_1D1B8D408()
{
  v32 = v0;
  v1 = v0[6];
  v2 = [v1 snapshotControl];

  if (v2)
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v4 = v0[2];
    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F3F8);
    sub_1D1B8EC64(v4, v3);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[4];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136315138;
      sub_1D1E66A7C();
      sub_1D1B8EFCC(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v12 = sub_1D1E68FAC();
      v14 = v13;
      sub_1D1B8ECC8(v9);
      v15 = sub_1D1B1312C(v12, v14, &v31);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1D16EC000, v6, v7, "[%s] Taking snapshot", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    else
    {

      sub_1D1B8ECC8(v9);
    }

    [v2 takeSnapshot];
  }

  else
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v16 = v0[2];
    v17 = v0[3];
    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EC64F3F8);
    sub_1D1B8EC64(v16, v17);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6833C();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[3];
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136315138;
      sub_1D1E66A7C();
      sub_1D1B8EFCC(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v25 = sub_1D1E68FAC();
      v27 = v26;
      sub_1D1B8ECC8(v22);
      v28 = sub_1D1B1312C(v25, v27, &v31);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1D16EC000, v19, v20, "[%s] Tried to take a snapshot but HMCameraSnapshotControl is nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    else
    {

      sub_1D1B8ECC8(v22);
    }
  }

  v29 = v0[1];

  return v29();
}

uint64_t StaticCameraSnapshotControl.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticCameraSnapshotControl.mostRecentCaptureDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticCameraSnapshotControl(0) + 20);

  return sub_1D174A548(v3, a1);
}

uint64_t sub_1D1B8D890()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D1B8D8C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5E40 == a2)
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

uint64_t sub_1D1B8D9A0(uint64_t a1)
{
  v2 = sub_1D1B8ED24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B8D9DC(uint64_t a1)
{
  v2 = sub_1D1B8ED24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCameraSnapshotControl.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BAA0, &qword_1D1E9BB08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8ED24();
  sub_1D1E6930C();
  v8[15] = 0;
  sub_1D1E66A7C();
  sub_1D1B8EFCC(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v1)
  {
    type metadata accessor for StaticCameraSnapshotControl(0);
    v8[14] = 1;
    sub_1D1E669FC();
    sub_1D1B8EFCC(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68E5C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t StaticCameraSnapshotControl.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D1E66A7C();
  sub_1D1B8EFCC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v9 = type metadata accessor for StaticCameraSnapshotControl(0);
  sub_1D174A548(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1D1E6922C();
  sub_1D1B8EFCC(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t StaticCameraSnapshotControl.hashValue.getter()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B8EFCC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v8 = type metadata accessor for StaticCameraSnapshotControl(0);
  sub_1D174A548(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D1E6922C();
    sub_1D1B8EFCC(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1D1E6926C();
}

uint64_t StaticCameraSnapshotControl.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v28 = sub_1D1E66A7C();
  v24 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BAB0, &qword_1D1E9BB10);
  v9 = *(v8 - 8);
  v26 = v8;
  v27 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for StaticCameraSnapshotControl(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B8ED24();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v12;
  v22 = v14;
  v15 = v24;
  v30 = 0;
  sub_1D1B8EFCC(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v16 = v25;
  v17 = v26;
  v18 = v28;
  sub_1D1E68D7C();
  (*(v15 + 32))(v22, v16, v18);
  sub_1D1E669FC();
  v29 = 1;
  sub_1D1B8EFCC(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E68CBC();
  (*(v27 + 8))(v11, v17);
  v19 = v22;
  sub_1D19A376C(v6, &v22[*(v21 + 20)]);
  sub_1D1B8EC64(v19, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1B8ECC8(v19);
}

uint64_t sub_1D1B8E468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D1E66A7C();
  sub_1D1B8EFCC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D174A548(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_1D1E6922C();
  sub_1D1B8EFCC(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D1B8E690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B8EFCC(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D174A548(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D1E6922C();
    sub_1D1B8EFCC(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel27StaticCameraSnapshotControlV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for StaticCameraSnapshotControl(0) + 20);
  v15 = *(v11 + 48);
  sub_1D174A548(a1 + v14, v13);
  sub_1D174A548(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1D174A548(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1D1741A30(v13, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1D1B8EFCC(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v18 = sub_1D1E6775C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
  return (v18 & 1) != 0;
}

uint64_t type metadata accessor for StaticCameraSnapshotControl(uint64_t a1)
{
  result = qword_1EE07D298;
  if (!qword_1EE07D298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1B8EC64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraSnapshotControl(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B8ECC8(uint64_t a1)
{
  v2 = type metadata accessor for StaticCameraSnapshotControl(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D1B8ED24()
{
  result = qword_1EC64BAA8;
  if (!qword_1EC64BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAA8);
  }

  return result;
}

void sub_1D1B8EE30(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D17B77BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D1B8EEC8()
{
  result = qword_1EC64BAC0;
  if (!qword_1EC64BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAC0);
  }

  return result;
}

unint64_t sub_1D1B8EF20()
{
  result = qword_1EC64BAC8;
  if (!qword_1EC64BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAC8);
  }

  return result;
}

unint64_t sub_1D1B8EF78()
{
  result = qword_1EC64BAD0;
  if (!qword_1EC64BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAD0);
  }

  return result;
}

uint64_t sub_1D1B8EFCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1B8F014(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraSnapshotControl(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B8F078@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticCameraStreamControl(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v9 = [a1 streamControl];
  if (v9)
  {
    v10 = v9;
    v11 = [v10 streamState];

    if (v11 >= 5)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }
  }

  else
  {

    v12 = 0;
  }

  v7[*(v4 + 20)] = v12;
  sub_1D1B92AC8(v7, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t static StaticCameraStreamControl.test(state:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1D1E66A6C();
  result = type metadata accessor for StaticCameraStreamControl(0);
  *(a2 + *(result + 20)) = v3;
  return result;
}

uint64_t type metadata accessor for StaticCameraStreamControl(uint64_t a1)
{
  result = qword_1EE07D308;
  if (!qword_1EE07D308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticCameraStreamControl.cameraStream.getter()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D1B8F308;

  return sub_1D1E506F8(v0);
}

uint64_t sub_1D1B8F308(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8F408, 0, 0);
}

uint64_t sub_1D1B8F408()
{
  v1 = *(v0 + 24);
  v2 = [v1 streamControl];

  v3 = [v2 cameraStream];
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t StaticCameraStreamControl.startStream()()
{
  v1[2] = v0;
  type metadata accessor for StaticCameraStreamControl(0);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1D1B8F58C;

  return sub_1D1E506F8(v0);
}

uint64_t sub_1D1B8F58C(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8F68C, 0, 0);
}

uint64_t sub_1D1B8F68C()
{
  v32 = v0;
  v1 = v0[6];
  v2 = [v1 streamControl];

  if (v2)
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v4 = v0[2];
    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F3F8);
    sub_1D1B91D80(v4, v3);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[4];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136315138;
      sub_1D1E66A7C();
      sub_1D1B92120(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v12 = sub_1D1E68FAC();
      v14 = v13;
      sub_1D1B8C09C(v9);
      v15 = sub_1D1B1312C(v12, v14, &v31);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1D16EC000, v6, v7, "[%s] Starting live stream", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    else
    {

      sub_1D1B8C09C(v9);
    }

    [v2 startStream];
  }

  else
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v16 = v0[2];
    v17 = v0[3];
    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EC64F3F8);
    sub_1D1B91D80(v16, v17);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6833C();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[3];
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136315138;
      sub_1D1E66A7C();
      sub_1D1B92120(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v25 = sub_1D1E68FAC();
      v27 = v26;
      sub_1D1B8C09C(v22);
      v28 = sub_1D1B1312C(v25, v27, &v31);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1D16EC000, v19, v20, "[%s] Tried to start a live stream but HMCameraStreamControl is nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    else
    {

      sub_1D1B8C09C(v22);
    }
  }

  v29 = v0[1];

  return v29();
}

uint64_t StaticCameraStreamControl.stopStream()()
{
  v1[2] = v0;
  type metadata accessor for StaticCameraStreamControl(0);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1D1B8FB48;

  return sub_1D1E506F8(v0);
}

uint64_t sub_1D1B8FB48(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B8FC48, 0, 0);
}

uint64_t sub_1D1B8FC48()
{
  v32 = v0;
  v1 = v0[6];
  v2 = [v1 streamControl];

  if (v2)
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v4 = v0[2];
    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F3F8);
    sub_1D1B91D80(v4, v3);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[4];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v31 = v11;
      *v10 = 136315138;
      sub_1D1E66A7C();
      sub_1D1B92120(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v12 = sub_1D1E68FAC();
      v14 = v13;
      sub_1D1B8C09C(v9);
      v15 = sub_1D1B1312C(v12, v14, &v31);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1D16EC000, v6, v7, "[%s] Stopping live stream", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    else
    {

      sub_1D1B8C09C(v9);
    }

    [v2 stopStream];
  }

  else
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v16 = v0[2];
    v17 = v0[3];
    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EC64F3F8);
    sub_1D1B91D80(v16, v17);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6833C();
    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[3];
    if (v21)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136315138;
      sub_1D1E66A7C();
      sub_1D1B92120(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v25 = sub_1D1E68FAC();
      v27 = v26;
      sub_1D1B8C09C(v22);
      v28 = sub_1D1B1312C(v25, v27, &v31);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1D16EC000, v19, v20, "[%s] Tried to stop a live stream but HMCameraStreamControl is nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1D3893640](v24, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    else
    {

      sub_1D1B8C09C(v22);
    }
  }

  v29 = v0[1];

  return v29();
}

uint64_t StaticCameraStreamControl.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticCameraStreamControl.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticCameraStreamControl(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

BOOL static StaticCameraStreamControl.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticCameraStreamControl(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1D1B90120()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1D1B9014C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
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

uint64_t sub_1D1B9021C(uint64_t a1)
{
  v2 = sub_1D1B91DE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90258(uint64_t a1)
{
  v2 = sub_1D1B91DE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCameraStreamControl.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BAD8, &qword_1D1E9BD68);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B91DE4();
  sub_1D1E6930C();
  v10[15] = 0;
  sub_1D1E66A7C();
  sub_1D1B92120(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for StaticCameraStreamControl(0) + 20));
    v10[13] = 1;
    sub_1D1B91E38();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticCameraStreamControl.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1B92120(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for StaticCameraStreamControl(0);
  return MEMORY[0x1D3892850](*(v1 + *(v2 + 20)));
}

uint64_t StaticCameraStreamControl.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B92120(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for StaticCameraStreamControl(0);
  MEMORY[0x1D3892850](*(v0 + *(v1 + 20)));
  return sub_1D1E6926C();
}

uint64_t StaticCameraStreamControl.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_1D1E66A7C();
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BAF0, &qword_1D1E9BD70);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for StaticCameraStreamControl(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B91DE4();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_1D1B92120(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v15 = v27;
  v16 = v25;
  sub_1D1E68D7C();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_1D1B91E8C();
  sub_1D1E68D7C();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v29;
  sub_1D1B91D80(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1B8C09C(v18);
}

uint64_t sub_1D1B90948(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B92120(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v1 + *(a1 + 20)));
  return sub_1D1E6926C();
}

uint64_t sub_1D1B909EC(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D1B92120(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  return MEMORY[0x1D3892850](*(v2 + *(a2 + 20)));
}

uint64_t sub_1D1B90A78(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B92120(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v2 + *(a2 + 20)));
  return sub_1D1E6926C();
}

uint64_t StaticCameraStreamControl.StreamState.description.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6E696D6165727473;
  v4 = 0x676E6970706F7473;
  if (v1 != 3)
  {
    v4 = 0x6572747320746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E697472617473;
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

uint64_t sub_1D1B90BEC()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x6E696D6165727473;
  v4 = 0x676E6970706F7473;
  if (v1 != 3)
  {
    v4 = 0x6165727453746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E697472617473;
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

uint64_t sub_1D1B90C8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1B9290C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1B90CB4(uint64_t a1)
{
  v2 = sub_1D1B91EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90CF0(uint64_t a1)
{
  v2 = sub_1D1B91EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B90D2C(uint64_t a1)
{
  v2 = sub_1D1B92084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90D68(uint64_t a1)
{
  v2 = sub_1D1B92084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B90DA4(uint64_t a1)
{
  v2 = sub_1D1B91F34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90DE0(uint64_t a1)
{
  v2 = sub_1D1B91F34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B90E1C(uint64_t a1)
{
  v2 = sub_1D1B92030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90E58(uint64_t a1)
{
  v2 = sub_1D1B92030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B90E94(uint64_t a1)
{
  v2 = sub_1D1B91F88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90ED0(uint64_t a1)
{
  v2 = sub_1D1B91F88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1B90F0C(uint64_t a1)
{
  v2 = sub_1D1B91FDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B90F48(uint64_t a1)
{
  v2 = sub_1D1B91FDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCameraStreamControl.StreamState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB00, &qword_1D1E9BD78);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB08, &qword_1D1E9BD80);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB10, &qword_1D1E9BD88);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB18, &qword_1D1E9BD90);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB20, &qword_1D1E9BD98);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB28, &qword_1D1E9BDA0);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  sub_1D1B91EE0();
  sub_1D1E6930C();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      sub_1D1B92030();
      v31 = v45;
      sub_1D1E68DFC();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      sub_1D1B92084();
      v31 = v45;
      sub_1D1E68DFC();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      sub_1D1B91FDC();
      v22 = v33;
      v23 = v45;
      sub_1D1E68DFC();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      sub_1D1B91F88();
      v22 = v36;
      v23 = v45;
      sub_1D1E68DFC();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      sub_1D1B91F34();
      v22 = v39;
      v23 = v45;
      sub_1D1E68DFC();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

uint64_t StaticCameraStreamControl.StreamState.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticCameraStreamControl.StreamState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB60, &qword_1D1E9BDA8);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB68, &qword_1D1E9BDB0);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB70, &qword_1D1E9BDB8);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB78, &qword_1D1E9BDC0);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB80, &qword_1D1E9BDC8);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BB88, &unk_1D1E9BDD0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D1B91EE0();
  v19 = v61;
  sub_1D1E692FC();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = sub_1D1E68DDC();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = sub_1D18085CC();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = sub_1D1E688EC();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
    *v34 = &type metadata for StaticCameraStreamControl.StreamState;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      sub_1D1B92030();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      sub_1D1E68C4C();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      sub_1D1B92084();
      v37 = v46;
      sub_1D1E68C4C();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    sub_1D1B91FDC();
    v38 = v24;
    v39 = v46;
    sub_1D1E68C4C();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    sub_1D1B91F34();
    v41 = v56;
    v42 = v46;
    sub_1D1E68C4C();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v67 = 3;
  sub_1D1B91F88();
  v31 = v46;
  sub_1D1E68C4C();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t sub_1D1B91D80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraStreamControl(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1B91DE4()
{
  result = qword_1EC64BAE0;
  if (!qword_1EC64BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAE0);
  }

  return result;
}

unint64_t sub_1D1B91E38()
{
  result = qword_1EC64BAE8;
  if (!qword_1EC64BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAE8);
  }

  return result;
}

unint64_t sub_1D1B91E8C()
{
  result = qword_1EC64BAF8;
  if (!qword_1EC64BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BAF8);
  }

  return result;
}

unint64_t sub_1D1B91EE0()
{
  result = qword_1EC64BB30;
  if (!qword_1EC64BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB30);
  }

  return result;
}

unint64_t sub_1D1B91F34()
{
  result = qword_1EC64BB38;
  if (!qword_1EC64BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB38);
  }

  return result;
}

unint64_t sub_1D1B91F88()
{
  result = qword_1EC64BB40;
  if (!qword_1EC64BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB40);
  }

  return result;
}

unint64_t sub_1D1B91FDC()
{
  result = qword_1EC64BB48;
  if (!qword_1EC64BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB48);
  }

  return result;
}

unint64_t sub_1D1B92030()
{
  result = qword_1EC64BB50;
  if (!qword_1EC64BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB50);
  }

  return result;
}

unint64_t sub_1D1B92084()
{
  result = qword_1EC64BB58;
  if (!qword_1EC64BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB58);
  }

  return result;
}

uint64_t sub_1D1B92120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1B921B4()
{
  result = qword_1EC64BB98;
  if (!qword_1EC64BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BB98);
  }

  return result;
}

unint64_t sub_1D1B9220C()
{
  result = qword_1EC64BBA0;
  if (!qword_1EC64BBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BBA8, &qword_1D1E9BF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBA0);
  }

  return result;
}

uint64_t sub_1D1B92298(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D1B92390()
{
  result = qword_1EC64BBB0;
  if (!qword_1EC64BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBB0);
  }

  return result;
}

unint64_t sub_1D1B923E8()
{
  result = qword_1EC64BBB8;
  if (!qword_1EC64BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBB8);
  }

  return result;
}

unint64_t sub_1D1B92440()
{
  result = qword_1EC64BBC0;
  if (!qword_1EC64BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBC0);
  }

  return result;
}

unint64_t sub_1D1B92498()
{
  result = qword_1EC64BBC8;
  if (!qword_1EC64BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBC8);
  }

  return result;
}

unint64_t sub_1D1B924F0()
{
  result = qword_1EC64BBD0;
  if (!qword_1EC64BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBD0);
  }

  return result;
}

unint64_t sub_1D1B92548()
{
  result = qword_1EC64BBD8;
  if (!qword_1EC64BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBD8);
  }

  return result;
}

unint64_t sub_1D1B925A0()
{
  result = qword_1EC64BBE0;
  if (!qword_1EC64BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBE0);
  }

  return result;
}

unint64_t sub_1D1B925F8()
{
  result = qword_1EC64BBE8;
  if (!qword_1EC64BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBE8);
  }

  return result;
}

unint64_t sub_1D1B92650()
{
  result = qword_1EC64BBF0;
  if (!qword_1EC64BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBF0);
  }

  return result;
}

unint64_t sub_1D1B926A8()
{
  result = qword_1EC64BBF8;
  if (!qword_1EC64BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BBF8);
  }

  return result;
}

unint64_t sub_1D1B92700()
{
  result = qword_1EC64BC00;
  if (!qword_1EC64BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC00);
  }

  return result;
}

unint64_t sub_1D1B92758()
{
  result = qword_1EC64BC08;
  if (!qword_1EC64BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC08);
  }

  return result;
}

unint64_t sub_1D1B927B0()
{
  result = qword_1EC64BC10;
  if (!qword_1EC64BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC10);
  }

  return result;
}

unint64_t sub_1D1B92808()
{
  result = qword_1EC64BC18;
  if (!qword_1EC64BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC18);
  }

  return result;
}

unint64_t sub_1D1B92860()
{
  result = qword_1EC64BC20;
  if (!qword_1EC64BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC20);
  }

  return result;
}

unint64_t sub_1D1B928B8()
{
  result = qword_1EC64BC28;
  if (!qword_1EC64BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC28);
  }

  return result;
}

uint64_t sub_1D1B9290C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E697472617473 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xE900000000000067 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E6970706F7473 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6165727453746F6ELL && a2 == 0xEC000000676E696DLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D1B92AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraStreamControl(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B92B34()
{
  *(v1 + 16) = v0;
  v2 = *(type metadata accessor for StaticLightProfile(0) + 28);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_1D1B92BF0;

  return sub_1D1B9A370(v0 + v2);
}

uint64_t sub_1D1B92BF0(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B92CF0, 0, 0);
}

uint64_t sub_1D1B92CF0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = [*(v0 + 32) profiles];

    sub_1D1741B10(0, &qword_1EC6497D0, 0x1E696CAD0);
    v4 = sub_1D1E67C1C();

    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    v6 = sub_1D174A6C4(sub_1D1B9E00C, v5, v4);

    if (v6)
    {
      objc_opt_self();
      v7 = swift_dynamicCastObjCClass();
      if (v7)
      {
        goto LABEL_6;
      }
    }
  }

  v7 = 0;
LABEL_6:
  v8 = *(v0 + 8);

  return v8(v7);
}

void sub_1D1B92E20(unint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = sub_1D1E66A7C();
  v3 = *(v21 - 8);
  v4 = MEMORY[0x1EEE9AC00](v21);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v10 = 0;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = a1 & 0xC000000000000001;
    v11 = v3 + 1;
    while (1)
    {
      if (v19)
      {
        v12 = MEMORY[0x1D3891EF0](v10, a1);
      }

      else
      {
        if (v10 >= *(v18 + 16))
        {
          goto LABEL_12;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v3 = v12;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = i;
      v15 = a1;
      v16 = [v12 uniqueIdentifier];
      sub_1D1E66A5C();

      a1 = v15;
      i = v14;
      swift_beginAccess();
      sub_1D1762CB8(v8, v6);
      swift_endAccess();
      (*v11)(v8, v21);

      ++v10;
      if (v13 == v14)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_1D1B93024(unint64_t a1, void *a2, uint64_t *a3)
{
  v42 = a3;
  v5 = sub_1D1E66A7C();
  v37 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v49 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v52 = &v36[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36[-v10];
  if (a1 >> 62)
  {
LABEL_25:
    v12 = sub_1D1E6873C();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (v12)
  {
    v13 = 0;
    v44 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = a1 & 0xC000000000000001;
    v43 = a1 + 32;
    v51 = (v37 + 8);
    v48 = v37 + 16;
    v14 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v40 = a1;
    v41 = a2;
    v39 = v11;
    v38 = v12;
    do
    {
      if (v45)
      {
        v21 = MEMORY[0x1D3891EF0](v13, a1);
        v22 = __OFADD__(v13++, 1);
        if (v22)
        {
LABEL_22:
          __break(1u);
          return;
        }
      }

      else
      {
        if (v13 >= *(v44 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v21 = *(v43 + 8 * v13);
        v22 = __OFADD__(v13++, 1);
        if (v22)
        {
          goto LABEL_22;
        }
      }

      v23 = v14[61];
      v47 = v21;
      v24 = [v21 v23];
      sub_1D1E66A5C();

      swift_beginAccess();
      if (*(*a2 + 16) && (sub_1D1742188(), (v25 & 1) != 0))
      {
        swift_endAccess();
        (*v51)(v11, v5);
      }

      else
      {
        v46 = v13;
        swift_endAccess();
        v50 = *v51;
        v50(v11, v5);
        v26 = *v42;

        v27 = [v47 v14[61]];
        sub_1D1E66A5C();

        if (*(v26 + 16) && (sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v28 = sub_1D1E676DC(), v29 = -1 << *(v26 + 32), v30 = v28 & ~v29, ((*(v26 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
        {
          v31 = ~v29;
          v32 = *(v37 + 72);
          v33 = *(v37 + 16);
          while (1)
          {
            v34 = v49;
            v33(v49, *(v26 + 48) + v32 * v30, v5);
            sub_1D1B9DF5C(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            v35 = sub_1D1E6775C();
            v50(v34, v5);
            if (v35)
            {
              break;
            }

            v30 = (v30 + 1) & v31;
            if (((*(v26 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v50(v52, v5);

          a1 = v40;
          a2 = v41;
          v11 = v39;
          v12 = v38;
          v13 = v46;
          v14 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        }

        else
        {
LABEL_5:

          v15 = v50;
          v50(v52, v5);
          v14 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
          v16 = v47;
          v17 = [v47 uniqueIdentifier];
          v18 = v49;
          sub_1D1E66A5C();

          type metadata accessor for HMError(0);
          v54 = 8;
          sub_1D1CD8538(MEMORY[0x1E69E7CC0]);
          sub_1D1B9DF5C(&qword_1EC6428A0, type metadata accessor for HMError, &unk_1D1E6E3FC);
          sub_1D1E6654C();
          v19 = v55;
          a2 = v41;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v53 = *a2;
          *a2 = 0x8000000000000000;
          sub_1D17562C8(v19, v18, isUniquelyReferenced_nonNull_native);
          v15(v18, v5);
          *a2 = v53;
          swift_endAccess();

          v11 = v39;
          a1 = v40;
          v12 = v38;
          v13 = v46;
        }
      }
    }

    while (v13 != v12);
  }
}

unint64_t sub_1D1B935C0(unint64_t result, void *a2, uint64_t *a3)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D3891EF0](i, v3);
        }

        else
        {
          if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_12;
          }

          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v9 = v4;
        v10 = [v6 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v11 = sub_1D1E67C1C();

        v4 = v9;
        sub_1D1B93024(v11, a2, a3);

        if (v8 == v9)
        {
          return result;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_1D1E6873C();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t static StaticLightProfile.fetchSettings(for:lightProfiles:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1B9BD98(a1, a2, a3, a4 & 1);
}

uint64_t StaticLightProfile.isNaturalLightEnabled.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticLightProfile(0) + 24));
  v2 = *v1;
  v3 = v1[1];
  if (v3 == 2)
  {
    LOBYTE(v3) = v2;
  }

  return v3 & 1;
}

uint64_t StaticLightProfile.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WritableProfileValue.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_1D1E685AC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  (*(v7 + 16))(&v13 - v8, v2 + *(a1 + 52), v6);
  v10 = *(v5 - 8);
  v11 = *(v10 + 48);
  if (v11(v9, 1, v5) != 1)
  {
    return (*(v10 + 32))(a2, v9, v5);
  }

  (*(v10 + 16))(a2, v2, v5);
  result = (v11)(v9, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t StaticLightProfile.accessoryId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticLightProfile(0) + 28);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

BOOL static WritableProfileValue.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a4;
  v37 = a5;
  v38 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E685AC();
  v40 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v35 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = &v31 - v16;
  v18 = *(a6 + 8);
  v39 = a1;
  v34 = v18;
  if ((sub_1D1E6775C() & 1) == 0)
  {
    return 0;
  }

  v32 = v11;
  v33 = v14;
  v41[0] = a3;
  v41[1] = v36;
  v41[2] = v37;
  v41[3] = a6;
  v19 = *(type metadata accessor for WritableProfileValue(0, v41) + 52);
  v37 = TupleTypeMetadata2;
  v20 = *(TupleTypeMetadata2 + 48);
  v21 = *(v40 + 16);
  v21(v17, v39 + v19, v12);
  v22 = a2 + v19;
  v23 = v38;
  v21(&v17[v20], v22, v12);
  v24 = *(v23 + 48);
  if (v24(v17, 1, a3) == 1)
  {
    if (v24(&v17[v20], 1, a3) == 1)
    {
      (*(v40 + 8))(v17, v12);
      return 1;
    }

    goto LABEL_7;
  }

  v25 = v33;
  v21(v33, v17, v12);
  if (v24(&v17[v20], 1, a3) == 1)
  {
    (*(v23 + 8))(v25, a3);
LABEL_7:
    (*(v35 + 8))(v17, v37);
    return 0;
  }

  v27 = v32;
  (*(v23 + 32))(v32, &v17[v20], a3);
  v28 = v25;
  v29 = sub_1D1E6775C();
  v30 = *(v23 + 8);
  v30(v27, a3);
  v30(v28, a3);
  (*(v40 + 8))(v17, v12);
  return (v29 & 1) != 0;
}

unint64_t sub_1D1B93E90()
{
  v1 = 25705;
  v2 = 0x726F737365636361;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_1D1B93F0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1B9C798(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1B93F34(uint64_t a1)
{
  v2 = sub_1D1B9C588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B93F70(uint64_t a1)
{
  v2 = sub_1D1B9C588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticLightProfile.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BC30, &qword_1D1E9C600);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B9C588();
  sub_1D1E6930C();
  v19 = 0;
  sub_1D1E66A7C();
  sub_1D1B9DF5C(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticLightProfile(0);
    v18 = 1;
    sub_1D1E68EDC();
    v10 = (v3 + *(v9 + 24));
    v11 = *v10;
    LOBYTE(v10) = v10[1];
    v16 = v11;
    v17 = v10;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BC40, &qword_1D1E9C608);
    sub_1D1B9C5DC(&qword_1EC64BC48, &protocol conformance descriptor for WritableProfileValue<A>);
    sub_1D1E68F1C();
    v14 = 3;
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticLightProfile.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for StaticLightProfile(0);
  sub_1D1E6922C();
  v3 = *(v1 + *(v2 + 24) + 1);
  sub_1D1E6922C();
  if (v3 != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E676EC();
}

uint64_t StaticLightProfile.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for StaticLightProfile(0);
  sub_1D1E6922C();
  v2 = *(v0 + *(v1 + 24) + 1);
  sub_1D1E6922C();
  if (v2 != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t StaticLightProfile.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1D1E66A7C();
  v32 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v28 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BC50, &qword_1D1E9C610);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for StaticLightProfile(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B9C588();
  v34 = v10;
  v14 = v37;
  sub_1D1E692FC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v6;
  v37 = a1;
  v15 = v32;
  v43 = 0;
  v16 = sub_1D1B9DF5C(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v17 = v33;
  v18 = v34;
  sub_1D1E68D7C();
  v19 = v17;
  v20 = *(v15 + 32);
  v20(v13, v19, v3);
  v42 = 1;
  v21 = sub_1D1E68D3C();
  v29 = v20;
  v33 = v16;
  v22 = v11;
  v13[*(v11 + 20)] = v21 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BC40, &qword_1D1E9C608);
  v39 = 2;
  sub_1D1B9C5DC(&qword_1EC64BC58, &protocol conformance descriptor for WritableProfileValue<A>);
  sub_1D1E68D7C();
  v23 = v35;
  v24 = v41;
  v25 = &v13[*(v11 + 24)];
  *v25 = v40;
  v25[1] = v24;
  v38 = 3;
  v26 = v30;
  sub_1D1E68D7C();
  (*(v23 + 8))(v18, v36);
  v29(&v13[*(v22 + 28)], v26, v3);
  sub_1D1B9DFA4(v13, v31, type metadata accessor for StaticLightProfile);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return sub_1D1B9D0C4(v13, type metadata accessor for StaticLightProfile);
}

uint64_t sub_1D1B948CC(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E6922C();
  v4 = *(v2 + *(a2 + 24) + 1);
  sub_1D1E6922C();
  if (v4 != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1B94A04(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - v11;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1B9DFA4(a1, v15, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      sub_1D1B9D0C4(v15, type metadata accessor for StateSnapshot.UpdateType);
      return a3;
    }

    v17 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48)];
    v18 = [a2 uniqueIdentifier];
    sub_1D1E66A5C();

    if (*(v17 + 16) && (v19 = sub_1D1742188(), (v20 & 1) != 0))
    {
      v21 = *(*(v17 + 56) + v19);
      v22 = *(v7 + 8);
      v22(v12, v6);

      if ((v21 & 0x80000000) == 0)
      {
        a3 = v21 & 1;
        v22(v15, v6);
        return a3;
      }
    }

    else
    {

      v22 = *(v7 + 8);
      v22(v12, v6);
    }

    v22(v15, v6);
    return a3;
  }

  v23 = *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48)];
  v24 = [a2 uniqueIdentifier];
  sub_1D1E66A5C();

  LOBYTE(v24) = sub_1D1719534(v10, v23);

  v25 = *(v7 + 8);
  v25(v10, v6);
  v25(v15, v6);
  if (v24)
  {
    return 2;
  }

  else
  {
    return a3;
  }
}

uint64_t sub_1D1B94D10(id *a1, uint64_t a2)
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

uint64_t static StaticLightProfile.setNaturalLight(_:lightProfiles:waitForWriteRequestCompletion:timeout:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  *(v6 + 394) = a6;
  *(v6 + 120) = a3;
  *(v6 + 128) = a5;
  *(v6 + 393) = a4;
  *(v6 + 392) = a2;
  *(v6 + 112) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v6 + 152) = swift_task_alloc();
  v7 = type metadata accessor for StateSnapshot(0);
  *(v6 + 160) = v7;
  *(v6 + 168) = *(v7 - 8);
  *(v6 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  *(v6 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B94F8C, 0, 0);
}

uint64_t sub_1D1B94F8C()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  if (sub_1D1E6827C())
  {
    (*(*(v0 + 168) + 56))(*(v0 + 112), 1, 1, *(v0 + 160));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 192) = v3;
    *v3 = v0;
    v3[1] = sub_1D1B950D8;

    return sub_1D1E387D4();
  }
}

uint64_t sub_1D1B950D8(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B951D8, 0, 0);
}

uint64_t sub_1D1B951D8()
{
  v1 = *(v0 + 200);
  if (!v1)
  {
LABEL_4:
    (*(*(v0 + 168) + 56))(*(v0 + 112), 1, 1, *(v0 + 160));

    v5 = *(v0 + 8);

    return v5();
  }

  v2 = *(v0 + 184);
  __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  sub_1D1E6829C();
  v3 = type metadata accessor for StaticLightProfile(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 184);

    sub_1D1741A30(v4, &qword_1EC6430E8, &unk_1D1E71440);
    goto LABEL_4;
  }

  v7 = swift_task_alloc();
  *(v0 + 208) = v7;
  *v7 = v0;
  v7[1] = sub_1D1B95388;

  return sub_1D1B92B34();
}

uint64_t sub_1D1B95388(uint64_t a1)
{
  *(*v1 + 216) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B95488, 0, 0);
}

uint64_t sub_1D1B95488()
{
  v1 = *(v0 + 216);
  sub_1D1B9D0C4(*(v0 + 184), type metadata accessor for StaticLightProfile);
  if (v1 && (v2 = *(v0 + 216), v3 = [v2 accessory], v2, v3) && (v4 = objc_msgSend(v3, sel_home), *(v0 + 224) = v4, v3, v4))
  {
    v5 = *(v0 + 392);
    __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
    *(swift_task_alloc() + 16) = v5;
    v6 = sub_1D1E67AEC();

    if (v6)
    {
      v7 = *(v0 + 393);
      __swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
      *(v0 + 104) = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
      *(swift_task_alloc() + 16) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C0, &qword_1D1E974E0);
      sub_1D1E67A9C();

      *(v0 + 232) = *(v0 + 96);
      if (v7 == 1)
      {
        v8 = *(v0 + 394);
        v9 = swift_task_alloc();
        *(v0 + 240) = v9;
        *v9 = v0;
        v9[1] = sub_1D1B95840;
        v10 = *(v0 + 120);
        v11 = *(v0 + 128);
        v12 = *(v0 + 392);

        return sub_1D1B9CB3C(v12, v10, v11, v8 & 1);
      }

      else
      {
        v16 = *(v0 + 200);
        sub_1D17419CC(*(v0 + 120), v0 + 16);
        sub_1D17419CC(v0 + 16, v0 + 56);
        v17 = swift_allocObject();
        *(v0 + 256) = v17;
        *(v17 + 16) = v5;
        sub_1D16EEE20((v0 + 16), v17 + 24);
        *(v17 + 64) = v4;
        *(v17 + 72) = v16;
        *(v0 + 264) = sub_1D1E67E1C();
        v18 = v4;
        v19 = v16;
        *(v0 + 272) = sub_1D1E67E0C();
        v21 = sub_1D1E67D4C();
        *(v0 + 280) = v21;
        *(v0 + 288) = v20;

        return MEMORY[0x1EEE6DFA0](sub_1D1B95A00, v21, v20);
      }
    }

    v14 = *(v0 + 200);
  }

  else
  {
    v14 = *(v0 + 200);
  }

  (*(*(v0 + 168) + 56))(*(v0 + 112), 1, 1, *(v0 + 160));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D1B95840()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1D1B95954;
  }

  else
  {
    v2 = sub_1D1B9E034;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1B95954()
{
  v1 = v0[28];
  v2 = v0[25];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1B95A00()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 environment];

  v3 = sub_1D1E675FC();
  if (*(v3 + 16) && (sub_1D171D2F0(0xD00000000000001BLL, 0x80000001D1EC0D30), (v4 & 1) != 0))
  {

    v5 = swift_task_alloc();
    *(v0 + 336) = v5;
    *v5 = v0;
    v5[1] = sub_1D1B963C4;
    v6 = *(v0 + 392);

    return sub_1D1B9CB3C(v6, v0 + 56, 0, 1);
  }

  else
  {
    v8 = *(v0 + 256);
    v9 = *(v0 + 136);

    v10 = sub_1D1E67E7C();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);

    v11 = sub_1D1E67E0C();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = &unk_1D1E9C670;
    v12[5] = v8;
    sub_1D17C6EF0(0, 0, v9, &unk_1D1E9C678, v12);

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));

    return MEMORY[0x1EEE6DFA0](sub_1D1B961A0, 0, 0);
  }
}

uint64_t sub_1D1B95C80()
{

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1B95D18, 0, 0);
}

uint64_t sub_1D1B95D18(uint64_t a1)
{
  *(v1 + 312) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B95DA4, v3, v2);
}

uint64_t sub_1D1B95DA4()
{

  *(v0 + 320) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1B95E18, 0, 0);
}

uint64_t sub_1D1B95E18()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[19];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
  v5 = [v1 uniqueIdentifier];
  sub_1D1E66A5C();

  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
  v8 = sub_1D1E66A7C();
  v10 = sub_1D18CE91C(sub_1D18CFDFC, 0, v6, v8, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v9);
  v11 = sub_1D17841EC(v10);

  *(v3 + v4) = v11;
  swift_storeEnumTagMultiPayload();
  v12 = swift_task_alloc();
  v0[41] = v12;
  *v12 = v0;
  v12[1] = sub_1D1B95FB0;
  v13 = v0[28];
  v14 = v0[22];
  v15 = v0[19];

  return sub_1D1E5A250(v14, v15, v2, v13, 0);
}

uint64_t sub_1D1B95FB0()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 152);

  sub_1D1B9D0C4(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1B9D0C4(v1, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1B9610C, 0, 0);
}

uint64_t sub_1D1B96124()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1D1B961A0, 0, 0);
}

uint64_t sub_1D1B961A0()
{
  v13 = v0;
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE07B5D8);

  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    sub_1D1E66A7C();
    sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v6 = sub_1D1E6760C();
    v8 = sub_1D1B1312C(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1D16EC000, v2, v3, "start override profile write %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D3893640](v5, -1, -1);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  *(v0 + 352) = sub_1D1E67E1C();
  *(v0 + 360) = sub_1D1E67E0C();
  v10 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B96604, v10, v9);
}

uint64_t sub_1D1B963C4()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1D1B9656C;
  }

  else
  {
    v2 = sub_1D1B964D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1B964D8(uint64_t a1)
{
  v1[37] = v1[43];
  v1[38] = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B95C80, v3, v2);
}

uint64_t sub_1D1B9656C()
{
  *(v0 + 296) = 0;
  *(v0 + 304) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B95C80, v2, v1);
}

uint64_t sub_1D1B96604()
{

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1B9669C, 0, 0);
}

uint64_t sub_1D1B9669C(uint64_t a1)
{
  *(v1 + 368) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B96728, v3, v2);
}

uint64_t sub_1D1B96728()
{

  *(v0 + 376) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1B9679C, 0, 0);
}

uint64_t sub_1D1B9679C()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[19];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
  v6 = [v1 uniqueIdentifier];
  sub_1D1E66A5C();

  *(v4 + v5) = v2;
  swift_storeEnumTagMultiPayload();
  v7 = swift_task_alloc();
  v0[48] = v7;
  *v7 = v0;
  v7[1] = sub_1D1B968B4;
  v8 = v0[28];
  v9 = v0[19];
  v10 = v0[14];

  return sub_1D1E5A250(v10, v9, v3, v8, 0);
}

uint64_t sub_1D1B968B4()
{
  v1 = *(*v0 + 152);

  sub_1D1B9D0C4(v1, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1B969E0, 0, 0);
}

uint64_t sub_1D1B969E0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 112);

  (*(v3 + 56))(v4, 0, 1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D1B96AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v4[5] = type metadata accessor for StateSnapshot.UpdateType(0);
  v4[6] = swift_task_alloc();
  type metadata accessor for StateSnapshot(0);
  v4[7] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v4;
  v7[1] = sub_1D1B96BC4;

  return sub_1D1B9CB3C(a1, a2, 0, 1);
}

uint64_t sub_1D1B96BC4()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D1B96D78;
  }

  else
  {
    v2 = sub_1D1B96CD8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1B96CD8()
{
  v0[10] = v0[9];
  v0[11] = sub_1D1E67E1C();
  v0[12] = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B96E1C, v2, v1);
}

uint64_t sub_1D1B96D78()
{
  *(v0 + 80) = 0;
  *(v0 + 88) = sub_1D1E67E1C();
  *(v0 + 96) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B96E1C, v2, v1);
}

uint64_t sub_1D1B96E1C()
{

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1B96EB4, 0, 0);
}

uint64_t sub_1D1B96EB4(uint64_t a1)
{
  *(v1 + 104) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B96F40, v3, v2);
}

uint64_t sub_1D1B96F40()
{

  *(v0 + 112) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1B96FB4, 0, 0);
}

uint64_t sub_1D1B96FB4()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
  v5 = [v2 uniqueIdentifier];
  sub_1D1E66A5C();

  v6 = v3[3];
  v7 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v6);
  v8 = sub_1D1E66A7C();
  v10 = sub_1D18CE91C(sub_1D18CFDFC, 0, v6, v8, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v9);
  v11 = sub_1D17841EC(v10);

  *(v1 + v4) = v11;
  swift_storeEnumTagMultiPayload();
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = sub_1D1B97138;
  v14 = v0[6];
  v13 = v0[7];
  v16 = v0[3];
  v15 = v0[4];

  return sub_1D1E5A250(v13, v14, v15, v16, 0);
}

uint64_t sub_1D1B97138()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);

  sub_1D1B9D0C4(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1B9D0C4(v1, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1B97294, 0, 0);
}

uint64_t sub_1D1B97294()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B972FC(uint64_t a1, char a2)
{
  *(v2 + 160) = a2;
  *(v2 + 144) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1B97320, 0, 0);
}

uint64_t sub_1D1B97320()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D1A77D2C;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_47;
  *(v0 + 112) = v3;
  [v2 setNaturalLightingEnabled:v1 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1B97464()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1AF6168;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9E0, &unk_1D1E9CBB0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_82;
  v0[14] = v2;
  [v1 fetchSettingsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1B97580(void *a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA00, &qword_1D1E97570);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - v12;
  v14 = *(type metadata accessor for StaticLightProfile(0) + 28);
  if (*(*a1 + 16) && (sub_1D1742188(), (v15 & 1) != 0))
  {
    v30 = *(v5 + 16);
    v31 = a2;
    v30(v10, a2 + v14, v4);
    v16 = sub_1D1C77360(v32);
    if (*v17)
    {
      v29 = v16;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA08, &qword_1D1E97578);
      v19 = *(v18 + 48);
      v30(v8, v31, v4);
      v20 = sub_1D1762CB8(&v13[v19], v8);
      (v29)(v32, 0);
      (*(v5 + 8))(v10, v4);
      *v13 = v20 & 1;
      (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
    }

    else
    {
      (v16)(v32, 0);
      (*(v5 + 8))(v10, v4);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA08, &qword_1D1E97578);
      (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
    }

    return sub_1D1741A30(v13, &qword_1EC64AA00, &qword_1D1E97570);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v21 = a2;
    v22 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D1E739C0;
    (*(v5 + 16))(v23 + v22, v21, v4);
    v24 = sub_1D179BE14(v23);
    swift_setDeallocating();
    (*(v5 + 8))(v23 + v22, v4);
    swift_deallocClassInstance();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = *a1;
    result = sub_1D1756288(v24, v21 + v14, isUniquelyReferenced_nonNull_native);
    *a1 = v32[0];
  }

  return result;
}

uint64_t sub_1D1B9793C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 162) = v13;
  *(v8 + 128) = v12;
  *(v8 + 112) = v11;
  *(v8 + 96) = a7;
  *(v8 + 104) = a8;
  *(v8 + 161) = a5;
  *(v8 + 80) = a4;
  *(v8 + 88) = a6;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v8 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B97A00, 0, 0);
}

uint64_t sub_1D1B97A00()
{
  v1 = *(v0 + 136);
  v27 = *(v0 + 162);
  v3 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = *(v0 + 161);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);
  v8 = sub_1D1E67E7C();
  v26 = *(v0 + 88);
  v24 = *(*(v8 - 8) + 56);
  v25 = v8;
  v24(v1, 1, 1);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v7;
  *(v9 + 40) = v6;
  *(v9 + 48) = v5;
  *(v9 + 56) = v26;
  *(v9 + 72) = v4;
  *(v9 + 80) = v3;
  *(v9 + 88) = v2;

  sub_1D1A01DDC(v1, &unk_1D1E9CB28, v9);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  if ((v27 & 1) == 0)
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EE07B5D8);
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6835C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 128);
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v13;
      _os_log_impl(&dword_1D16EC000, v11, v12, "performing natural lighting requests with timeout: %f", v14, 0xCu);
      MEMORY[0x1D3893640](v14, -1, -1);
    }

    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v18 = *(v0 + 112);
    v17 = *(v0 + 120);
    v19 = *(v0 + 88);

    (v24)(v15, 1, 1, v25);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v16;
    v20[5] = v19;
    v20[6] = v17;
    v20[7] = v18;

    sub_1D1A01DDC(v15, &unk_1D1E9CB48, v20);
    sub_1D1741A30(v15, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v21 = swift_task_alloc();
  *(v0 + 144) = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648E28, &unk_1D1E9CB30);
  *v21 = v0;
  v21[1] = sub_1D1B97D48;

  return MEMORY[0x1EEE6DAC8](v0 + 160, 0, 0, v22);
}

uint64_t sub_1D1B97D48()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1D1AF6F00;
  }

  else
  {
    v2 = sub_1D1B97E5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1B97E5C()
{
  v16 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  sub_1D1E67FFC();
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE07B5D8);

  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v15 = v5;
    *v4 = 136315138;
    swift_beginAccess();
    sub_1D1E66A7C();
    sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

    v6 = sub_1D1E6760C();
    v8 = v7;

    v9 = sub_1D1B1312C(v6, v8, &v15);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1D16EC000, v2, v3, "natural lighting requests has completed with result: %s, cancelling timeout", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1D3893640](v5, -1, -1);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v10 = *(v0 + 120);
  swift_beginAccess();
  v11 = *(v10 + 16);
  if (*(v11 + 16))
  {
    sub_1D1AFA694();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D1B98138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v14;
  *(v8 + 64) = v13;
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 200) = a6;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  v9 = sub_1D1E6702C();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  v10 = sub_1D1E66FDC();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B98288, 0, 0);
}

uint64_t sub_1D1B98288()
{
  if (qword_1EE07AE48 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6701C();
  *(v0 + 152) = __swift_project_value_buffer(v1, qword_1EE07AE50);
  sub_1D1E66FCC();
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  v4 = sub_1D1E6855C();
  if ((v4 & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = *(v0 + 32);
  if (*(v0 + 200))
  {
LABEL_7:
    if (v12 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v12 & 0xFFFFF800) == 0xD800)
      {
LABEL_17:
        __break(1u);
        return MEMORY[0x1EEE6DBF8](v4, v5, v6, v7, v8, v9, v10, v11);
      }

      if (v12 >> 16 <= 0x10)
      {
        v12 = (v0 + 24);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  if (!v12)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v13 = swift_slowAlloc();
  *v13 = 0;
  v14 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v14, v12, "", v13, 2u);
  MEMORY[0x1D3893640](v13, -1, -1);
LABEL_12:

  v15 = *(v0 + 144);
  v16 = *(v0 + 112);
  v17 = *(v0 + 120);
  v18 = *(v0 + 80);
  v19 = *(v0 + 200);
  v21 = *(v0 + 32);
  v20 = *(v0 + 40);
  v25 = *(v0 + 64);
  v26 = *(v0 + 48);
  (*(v17 + 16))(*(v0 + 136), v15, v16);
  sub_1D1E6705C();
  swift_allocObject();
  *(v0 + 160) = sub_1D1E6704C();
  v22 = *(v17 + 8);
  *(v0 + 168) = v22;
  *(v0 + 176) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v15, v16);
  v23 = swift_task_alloc();
  *(v0 + 184) = v23;
  *(v23 + 16) = v26;
  *(v23 + 32) = v25;
  *(v23 + 48) = v21;
  *(v23 + 56) = v20;
  *(v23 + 64) = v19;
  *(v23 + 72) = v18;
  v4 = swift_task_alloc();
  *(v0 + 192) = v4;
  *v4 = v0;
  *(v4 + 8) = sub_1D1AF736C;
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v9 = &unk_1D1E9CB58;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = 0;
  v8 = 0;
  v10 = v23;
  v11 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D1B98540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v11;
  *(v8 + 120) = a8;
  *(v8 + 128) = v12;
  *(v8 + 104) = a6;
  *(v8 + 112) = a7;
  *(v8 + 88) = a4;
  *(v8 + 96) = a5;
  *(v8 + 72) = a2;
  *(v8 + 80) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B98604, 0, 0);
}

uint64_t sub_1D1B98604()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    result = sub_1D1E6873C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_18:

    v21 = *(v0 + 8);

    return v21();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v24 = **(v0 + 72);
    v25 = result;
    v23 = v1 & 0xC000000000000001;
    v22 = *(v0 + 80) + 32;
    while (1)
    {
      v32 = v3;
      if (v23)
      {
        v6 = MEMORY[0x1D3891EF0](v3, *(v0 + 80));
      }

      else
      {
        v6 = *(v22 + 8 * v3);
      }

      v7 = *(v0 + 144);
      v29 = *(v0 + 136);
      v30 = v6;
      v28 = *(v0 + 152);
      v8 = *(v0 + 128);
      v9 = *(v0 + 104);
      v26 = *(v0 + 112);
      v27 = *(v0 + 120);
      v10 = *(v0 + 88);
      v11 = *(v0 + 96);
      v12 = sub_1D1E67E7C();
      v13 = *(v12 - 8);
      (*(v13 + 56))(v7, 1, 1, v12);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      *(v14 + 48) = v30;
      *(v14 + 56) = v9;
      *(v14 + 64) = v26;
      *(v14 + 72) = v27;
      *(v14 + 80) = v28;
      *(v14 + 88) = v8;
      sub_1D1741C08(v7, v29, &unk_1EC6442C0, &qword_1D1E741A0);
      LODWORD(v9) = (*(v13 + 48))(v29, 1, v12);

      v31 = v30;

      v16 = *(v0 + 136);
      if (v9 == 1)
      {
        sub_1D1741A30(*(v0 + 136), &unk_1EC6442C0, &qword_1D1E741A0);
        if (!*v15)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D1E67E6C();
        (*(v13 + 8))(v16, v12);
        if (!*v15)
        {
LABEL_14:
          v17 = 0;
          v19 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_1D1E67D4C();
      v19 = v18;
      swift_unknownObjectRelease();
LABEL_15:
      v20 = swift_allocObject();
      *(v20 + 16) = &unk_1D1E9CB68;
      *(v20 + 24) = v14;

      if (v19 | v17)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v17;
        *(v0 + 40) = v19;
      }

      else
      {
        v4 = 0;
      }

      v3 = v32 + 1;
      v5 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v24;
      swift_task_create();

      sub_1D1741A30(v5, &unk_1EC6442C0, &qword_1D1E741A0);
      if (v25 == v32 + 1)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1B989BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = v14;
  *(v8 + 48) = v16;
  *(v8 + 72) = v15;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v8 + 56) = v10;
  *v10 = v8;
  v10[1] = sub_1D1B98AD4;

  return v12(a6);
}

uint64_t sub_1D1B98AD4()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D1B98CB0;
  }

  else
  {
    v2 = sub_1D1B98BE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1B98BE8()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v3 = sub_1D1E67C1C();

  sub_1D1B92E20(v3, v1 + 16);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1B98CB0()
{
  v23 = v0;
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07B5D8);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v7 = 136315394;
    v10 = sub_1D1E6888C();
    v12 = sub_1D1B1312C(v10, v11, &v22);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Error performing natural light block with name: %s error: %@", v7, 0x16u);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v15 = *(v0 + 64);
  v16 = *(v0 + 48);
  v17 = [*(v0 + 16) services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v18 = sub_1D1E67C1C();

  v19 = v15;
  sub_1D1B9ACDC(v18, (v16 + 16), v15);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D1B98F38(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 48) = a5;
  *(v7 + 40) = a1;
  v8 = sub_1D1E68A4C();
  *(v7 + 72) = v8;
  *(v7 + 80) = *(v8 - 8);
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B99000, 0, 0);
}

uint64_t sub_1D1B99000()
{
  v1 = sub_1D1E693AC();
  v3 = v2;
  sub_1D1E6912C();
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  *v4 = v0;
  v4[1] = sub_1D1B990DC;

  return sub_1D1A01910(v1, v3, 0, 0, 1);
}

uint64_t sub_1D1B990DC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v3 = sub_1D1AF8520;
  }

  else
  {
    v3 = sub_1D1B99244;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1B99244()
{
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE07B5D8);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "natural lighting requests timeout has been hit", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  sub_1D1B935C0(v7, (v6 + 16), (v5 + 16));
  swift_beginAccess();
  v8 = *(v6 + 16);
  sub_1D1AFA694();
  swift_allocError();
  *v9 = v8;
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t StaticLightProfile.copyReplacing(id:isNaturalLightSupported:isNaturalLightEnabled:accessoryId:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v36 = a4;
  v38 = a3;
  v39 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  v15 = sub_1D1E66A7C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v37 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - v19;
  sub_1D1741C08(a1, v14, &qword_1EC642590, qword_1D1E71260);
  v21 = *(v16 + 48);
  v22 = v21(v14, 1, v15);
  v40 = v6;
  if (v22 == 1)
  {
    (*(v16 + 16))(v20, v6, v15);
    if (v21(v14, 1, v15) != 1)
    {
      sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v16 + 32))(v20, v14, v15);
  }

  v23 = v39;
  if (v39 == 2)
  {
    v24 = type metadata accessor for StaticLightProfile(0);
    v25 = v40;
    v23 = *(v40 + *(v24 + 20));
    v26 = v38;
  }

  else
  {
    v26 = v38;
    v25 = v40;
  }

  if (v26 == 2)
  {
    v27 = (v25 + *(type metadata accessor for StaticLightProfile(0) + 24));
    v28 = *v27;
    v29 = v27[1];
    if (v29 == 2)
    {
      v26 = v28;
    }

    else
    {
      v26 = v29;
    }
  }

  v30 = v37;
  sub_1D1741C08(v36, v12, &qword_1EC642590, qword_1D1E71260);
  if (v21(v12, 1, v15) == 1)
  {
    v31 = type metadata accessor for StaticLightProfile(0);
    (*(v16 + 16))(v30, v40 + *(v31 + 28), v15);
    if (v21(v12, 1, v15) != 1)
    {
      sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
    }
  }

  else
  {
    (*(v16 + 32))(v30, v12, v15);
  }

  v32 = *(v16 + 32);
  v32(a5, v20, v15);
  v33 = type metadata accessor for StaticLightProfile(0);
  *(a5 + v33[5]) = v23 & 1;
  v34 = (a5 + v33[6]);
  *v34 = v26 & 1;
  v34[1] = 2;
  return (v32)(a5 + v33[7], v30, v15);
}

uint64_t WritableProfileValue.overrideValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1D1E685AC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D1B99838(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656469727265766FLL && a2 == 0xED000065756C6156)
  {

    return 1;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1D1B99940(char a1)
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a1 & 1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B99988(char a1)
{
  if (a1)
  {
    return 0x656469727265766FLL;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1D1B99A08(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1B99918(v3, *v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B99A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1B99838(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1B99A9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D1B48FA0();
  *a1 = result;
  return result;
}

uint64_t sub_1D1B99AD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D1B99B24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t WritableProfileValue.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v10[0] = *(a2 + 32);
  v10[1] = v3;
  v11[0] = v3;
  v11[1] = v10[0];
  type metadata accessor for WritableProfileValue.CodingKeys(255, v11);
  swift_getWitnessTable();
  v4 = sub_1D1E68F7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1E6930C();
  LOBYTE(v11[0]) = 0;
  v8 = v12;
  sub_1D1E68F1C();
  if (!v8)
  {
    LOBYTE(v11[0]) = 1;
    sub_1D1E68E5C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t WritableProfileValue.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1D1E676EC();
  sub_1D1E685AC();
  return sub_1D1E685BC();
}

uint64_t WritableProfileValue.hashValue.getter(uint64_t a1)
{
  sub_1D1E6920C();
  WritableProfileValue.hash(into:)(v3, a1);
  return sub_1D1E6926C();
}

uint64_t WritableProfileValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v11 = sub_1D1E685AC();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v39 = &v31 - v13;
  v38 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  type metadata accessor for WritableProfileValue.CodingKeys(255, &v45);
  swift_getWitnessTable();
  v44 = sub_1D1E68DEC();
  v37 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v16 = &v31 - v15;
  v40 = a2;
  v45 = a2;
  v46 = a3;
  v43 = a3;
  v47 = a4;
  v48 = a5;
  v17 = type metadata accessor for WritableProfileValue(0, &v45);
  v36 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v41 = v16;
  v20 = v49;
  sub_1D1E692FC();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v36;
  v22 = v37;
  v49 = v17;
  v23 = v38;
  v24 = v39;
  LOBYTE(v45) = 0;
  v25 = v40;
  v26 = v41;
  sub_1D1E68D7C();
  v27 = *(v23 + 32);
  v32 = v19;
  v27(v19, v42, v25);
  LOBYTE(v45) = 1;
  sub_1D1E68CBC();
  (*(v22 + 8))(v26, v44);
  v28 = v49;
  v29 = v32;
  (*(v33 + 32))(&v32[*(v49 + 52)], v24, v34);
  (*(v21 + 16))(v35, v29, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v21 + 8))(v29, v28);
}

uint64_t sub_1D1B9A234(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  WritableProfileValue.hash(into:)(v4, a2);
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel18StaticLightProfileV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticLightProfile(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = a2 + v5;
  if (*(a1 + v5) != *(a2 + v5))
  {
    return 0;
  }

  v8 = *(a1 + v5 + 1);
  v9 = *(v6 + 1);
  if (v8 == 2)
  {
    if (v9 == 2)
    {
      goto LABEL_10;
    }

    return 0;
  }

  if (v9 == 2 || ((v8 ^ v9) & 1) != 0)
  {
    return 0;
  }

LABEL_10:

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D1B9A370(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B9A43C, 0, 0);
}

uint64_t sub_1D1B9A43C()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[10] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1B9A52C;
    v4 = 0;
  }

  else
  {
    v0[12] = sub_1D1E67E1C();
    v0[13] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1B9AA10;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1B9A52C()
{
  v43 = v0;
  v2 = v0;
  v3 = v0[10];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v42 = sub_1D1749970(v6);
    sub_1D1747DDC(&v42);

    v7 = v42;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[8];
  v9 = v0[6];
  v10 = v0[5];
  v11 = *(v0[7] + 16);
  v11(v0[9], v10, v9);
  v11(v8, v10, v9);
  v40 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v41 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = v7 & 0xC000000000000001;
  v39 = v7 + 32;
  while (v12 != v13)
  {
    if (v14)
    {
      v1 = v7;
      v15 = MEMORY[0x1D3891EF0](v13, v7);
    }

    else
    {
      if (v13 >= *(v41 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v15 = *(v7 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v2;
    v18 = v2[8];
    v19 = [v15 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v20 = sub_1D1E67C1C();

    v21 = swift_task_alloc();
    *(v21 + 16) = v18;
    v22 = sub_1D174A6C4(sub_1D1749C64, v21, v20);

    if (v22)
    {
      v12 = v13;
      v7 = v1;
      v2 = v17;
      break;
    }

    v23 = __OFADD__(v13++, 1);
    v7 = v1;
    v2 = v17;
    if (v23)
    {
      goto LABEL_30;
    }
  }

  if (!v40)
  {
    if (v12 != *(v41 + 16))
    {
      goto LABEL_19;
    }

LABEL_25:
    v1 = *(v2[7] + 8);
    v1(v2[9], v2[6]);
    v32 = 0;
    goto LABEL_26;
  }

  if (v12 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v14)
  {
    v24 = MEMORY[0x1D3891EF0](v12, v7);
  }

  else
  {
    if (v12 >= *(v41 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v24 = *(v39 + 8 * v12);
  }

  v25 = v24;
  v26 = v2[9];
  v28 = v2[6];
  v27 = v2[7];
  v29 = [v24 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v30 = sub_1D1E67C1C();

  v31 = swift_task_alloc();
  *(v31 + 16) = v26;
  v32 = sub_1D174A6C4(sub_1D1778988, v31, v30);

  v1 = *(v27 + 8);
  v1(v26, v28);

  if (!v32)
  {
LABEL_34:
    v35 = (v1)(v2[8], v2[6]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v35, v36, v37);
  }

LABEL_26:
  v2[11] = v32;
  v33 = v2[8];
  v34 = v2[6];

  v1(v33, v34);
  v35 = sub_1D1B9A998;
  v36 = 0;
  v37 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

uint64_t sub_1D1B9A998()
{

  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1B9AA10()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1B9AAA8, 0, 0);
}

uint64_t sub_1D1B9AAA8(uint64_t a1)
{
  *(v1 + 112) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B9AB34, v3, v2);
}

uint64_t sub_1D1B9AB34()
{

  *(v0 + 120) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1B9ABA8, 0, 0);
}

uint64_t sub_1D1B9ABA8(uint64_t a1)
{
  *(v1 + 128) = sub_1D1E66A2C();
  *(v1 + 136) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1B9AC40, v3, v2);
}

uint64_t sub_1D1B9AC40()
{
  v1 = v0[16];
  v2 = v0[15];

  v3 = [v2 accessoryFor_];

  v4 = v0[1];

  return v4(v3);
}

void sub_1D1B9ACDC(unint64_t a1, uint64_t *a2, unint64_t a3)
{
  v37 = sub_1D1E66A7C();
  v31 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = (v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
LABEL_27:
    v8 = sub_1D1E6873C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v35 = a1 & 0xFFFFFFFFFFFFFF8;
      v36 = a1 & 0xC000000000000001;
      v30[2] = v31 + 16;
      v33 = (v31 + 8);
      v34 = a1;
      v32 = v8;
      do
      {
        if (v36)
        {
          v12 = MEMORY[0x1D3891EF0](v9, a1);
          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v9 >= *(v35 + 16))
          {
            goto LABEL_24;
          }

          v12 = *(a1 + 8 * v9 + 32);
          v13 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
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
        }

        v38 = v13;
        v14 = v12;
        v15 = [v12 uniqueIdentifier];
        sub_1D1E66A5C();

        swift_beginAccess();
        v16 = a3;
        v17 = a3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *a2;
        a1 = v39;
        v19 = a2;
        *a2 = 0x8000000000000000;
        a2 = v7;
        a3 = sub_1D1742188();
        v21 = *(a1 + 16);
        v22 = (v20 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_25;
        }

        v24 = v20;
        if (*(a1 + 24) >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            a1 = v39;
            if (v20)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1D173C4C0();
            a1 = v39;
            if (v24)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1D172E458(v23, isUniquelyReferenced_nonNull_native);
          v25 = sub_1D1742188();
          if ((v24 & 1) != (v26 & 1))
          {
            sub_1D1E690FC();
            __break(1u);
            return;
          }

          a3 = v25;
          a1 = v39;
          if (v24)
          {
LABEL_4:
            v10 = *(a1 + 56);
            v11 = *(v10 + 8 * a3);
            *(v10 + 8 * a3) = v16;
            a3 = v16;

            v7 = a2;
            goto LABEL_5;
          }
        }

        *(a1 + 8 * (a3 >> 6) + 64) |= 1 << a3;
        v7 = a2;
        (*(v31 + 16))(*(a1 + 48) + *(v31 + 72) * a3, a2, v37);
        *(*(a1 + 56) + 8 * a3) = v16;
        v27 = *(a1 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_26;
        }

        a3 = v16;
        *(a1 + 16) = v29;
LABEL_5:
        (*v33)(v7, v37);
        a2 = v19;
        *v19 = a1;
        swift_endAccess();

        ++v9;
        a1 = v34;
      }

      while (v38 != v32);
    }
  }
}

uint64_t sub_1D1B9B02C(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_1D1E66A7C();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9E8, &qword_1D1E97560);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1B9B148, 0, 0);
}

uint64_t sub_1D1B9B148()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 48), *(*(v0 + 48) + 24));
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F0, &unk_1D1E9CB80);
  sub_1D1E67A9C();
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + 16);
  *(v0 + 112) = v1;
  v2 = *(v1 + 32);
  *(v0 + 160) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -(-1 << v2));
  }

  v5 = v3 & *(v1 + 64);
  if (v5)
  {
    v6 = 0;
LABEL_8:
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = *(v0 + 56);
    v12 = *(v0 + 64);
    v13 = (v5 - 1) & v5;
    v14 = __clz(__rbit64(v5)) | (v6 << 6);
    (*(v12 + 16))(v9, *(v1 + 48) + *(v12 + 72) * v14, v11);
    v15 = *(*(v1 + 56) + 8 * v14);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    v17 = *(v16 + 48);
    (*(v12 + 32))(v10, v9, v11);
    *(v10 + v17) = v15;
    (*(*(v16 - 8) + 56))(v10, 0, 1, v16);

    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = ((63 - v4) >> 6) - 1;
    while (v8 != v7)
    {
      v6 = v7 + 1;
      v5 = *(v1 + 72 + 8 * v7++);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v27 = *(v0 + 96);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    v13 = 0;
  }

  *(v0 + 120) = v13;
  *(v0 + 128) = v8;
  v18 = *(v0 + 104);
  sub_1D1B9DEEC(*(v0 + 96), v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {

    v20 = *(v0 + 32);

    v21 = *(v0 + 8);

    return v21(v20);
  }

  else
  {
    v23 = *(v0 + 80);
    v24 = *(v0 + 64);
    *(v0 + 136) = *(*(v0 + 104) + *(v19 + 48));
    (*(v24 + 32))(v23);
    v25 = swift_task_alloc();
    *(v0 + 144) = v25;
    *v25 = v0;
    v25[1] = sub_1D1B9B52C;
    v26 = *(v0 + 80);

    return sub_1D1B9A370(v26);
  }
}

uint64_t sub_1D1B9B52C(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B9B62C, 0, 0);
}

uint64_t sub_1D1B9B62C()
{
  v1 = *(v0 + 152);
  if (!v1)
  {
    v26 = *(v0 + 80);
    v27 = *(v0 + 56);
    v28 = *(v0 + 64);

    (*(v28 + 8))(v26, v27);
    v29 = MEMORY[0x1E69E7CC0];
LABEL_42:

    v52 = *(v0 + 8);

    return v52(v29);
  }

  v59 = *(v0 + 152);
  v2 = [v1 profiles];
  sub_1D1741B10(0, &qword_1EC6497D0, 0x1E696CAD0);
  v3 = sub_1D1E67C1C();

  *(v0 + 40) = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  v65 = v3 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v5 = 0;
    v64 = v3 & 0xC000000000000001;
    v61 = v3 + 32;
    v69 = *(v0 + 136);
    v68 = v69 + 56;
    v60 = MEMORY[0x1E69E7CC0];
    v62 = i;
    v63 = v3;
    while (v64)
    {
      v10 = MEMORY[0x1D3891EF0](v5, v3);
      v11 = __OFADD__(v5, 1);
      v12 = v5 + 1;
      if (v11)
      {
        goto LABEL_25;
      }

LABEL_10:
      v66 = v10;
      v67 = v12;
      v13 = [v10 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v69 + 16) && (sub_1D1B9DF5C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v14 = sub_1D1E676DC(), v15 = -1 << *(v69 + 32), v16 = v14 & ~v15, ((*(v68 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
      {
        v17 = ~v15;
        v18 = *(v0 + 64);
        v19 = *(v18 + 72);
        v20 = *(v18 + 16);
        while (1)
        {
          v21 = *(v0 + 88);
          v22 = *(v0 + 64);
          v23 = *(v0 + 56);
          v20(v21, *(v69 + 48) + v16 * v19, v23);
          sub_1D1B9DF5C(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v24 = sub_1D1E6775C();
          v25 = *(v22 + 8);
          v25(v21, v23);
          if (v24)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v68 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v25(*(v0 + 72), *(v0 + 56));
        objc_opt_self();
        v9 = v62;
        v3 = v63;
        v5 = v67;
        if (swift_dynamicCastObjCClass())
        {
          MEMORY[0x1D3891220]();
          if (*((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D1E67C5C();
          }

          sub_1D1E67CAC();
          v60 = *(v0 + 40);
        }

        else
        {
        }
      }

      else
      {
LABEL_5:
        v7 = *(v0 + 64);
        v6 = *(v0 + 72);
        v8 = *(v0 + 56);

        (*(v7 + 8))(v6, v8);
        v9 = v62;
        v3 = v63;
        v5 = v67;
      }

      if (v5 == v9)
      {
        goto LABEL_29;
      }
    }

    if (v5 >= *(v65 + 16))
    {
      goto LABEL_26;
    }

    v10 = *(v61 + 8 * v5);
    v11 = __OFADD__(v5, 1);
    v12 = v5 + 1;
    if (!v11)
    {
      goto LABEL_10;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v65 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_29:
  v30 = *(v0 + 80);
  v32 = *(v0 + 56);
  v31 = *(v0 + 64);

  sub_1D17A4BE0(v60);

  result = (*(v31 + 8))(v30, v32);
  v34 = *(v0 + 120);
  v35 = *(v0 + 128);
  if (v34)
  {
    v36 = *(v0 + 112);
LABEL_39:
    v41 = *(v0 + 88);
    v42 = *(v0 + 96);
    v43 = *(v0 + 56);
    v44 = *(v0 + 64);
    v45 = (v34 - 1) & v34;
    v46 = __clz(__rbit64(v34)) | (v35 << 6);
    (*(v44 + 16))(v41, *(v36 + 48) + *(v44 + 72) * v46, v43);
    v47 = *(*(v36 + 56) + 8 * v46);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    v49 = *(v48 + 48);
    (*(v44 + 32))(v42, v41, v43);
    *(v42 + v49) = v47;
    (*(*(v48 - 8) + 56))(v42, 0, 1, v48);

    v39 = v35;
LABEL_40:
    *(v0 + 120) = v45;
    *(v0 + 128) = v39;
    v50 = *(v0 + 104);
    sub_1D1B9DEEC(*(v0 + 96), v50);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {

      v29 = *(v0 + 32);
      goto LABEL_42;
    }

    v53 = *(v0 + 80);
    v54 = *(v0 + 64);
    *(v0 + 136) = *(*(v0 + 104) + *(v51 + 48));
    (*(v54 + 32))(v53);
    v55 = swift_task_alloc();
    *(v0 + 144) = v55;
    *v55 = v0;
    v55[1] = sub_1D1B9B52C;
    v56 = *(v0 + 80);

    return sub_1D1B9A370(v56);
  }

  else
  {
    v37 = ((1 << *(v0 + 160)) + 63) >> 6;
    if (v37 <= (v35 + 1))
    {
      v38 = v35 + 1;
    }

    else
    {
      v38 = ((1 << *(v0 + 160)) + 63) >> 6;
    }

    v39 = v38 - 1;
    while (1)
    {
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v40 >= v37)
      {
        v57 = *(v0 + 96);
        v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
        (*(*(v58 - 8) + 56))(v57, 1, 1, v58);
        v45 = 0;
        goto LABEL_40;
      }

      v36 = *(v0 + 112);
      v34 = *(v36 + 8 * v40 + 64);
      ++v35;
      if (v34)
      {
        v35 = v40;
        goto LABEL_39;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1B9BD98(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 128) = a4;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  v6 = swift_task_alloc();
  *(v4 + 72) = v6;
  *v6 = v4;
  v6[1] = sub_1D1B9BE34;

  return sub_1D1B9B02C(a2);
}

uint64_t sub_1D1B9BE34(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B9BF34, 0, 0);
}

uint64_t sub_1D1B9BF34()
{
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07B5D8);
  sub_1D17419CC(v1, v0 + 16);
  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6835C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v25 = v6;
    *v5 = 136446210;
    v7 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
    v8 = *(v7 - 8);
    swift_task_alloc();
    (*(v8 + 16))();
    type metadata accessor for StaticLightProfile(0);
    sub_1D1B9DF5C(&qword_1EC64A9D0, type metadata accessor for StaticLightProfile, &protocol conformance descriptor for StaticLightProfile);
    sub_1D1E6820C();

    v9 = sub_1D1E6817C();
    v11 = v10;

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v12 = sub_1D1B1312C(v9, v11, &v25);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_1D16EC000, v3, v4, "start light profile read %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1D3893640](v6, -1, -1);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v13 = *(v0 + 80);
  v14 = *(v0 + 128);
  v15 = *(v0 + 64);
  v16 = swift_allocObject();
  *(v0 + 88) = v16;
  *(v16 + 16) = sub_1D18DAFB0(MEMORY[0x1E69E7CC0]);
  v17 = swift_allocObject();
  *(v0 + 96) = v17;
  *(v17 + 16) = MEMORY[0x1E69E7CD0];
  v18 = swift_task_alloc();
  *(v0 + 104) = v18;
  *(v18 + 16) = "LightProfileFetch";
  *(v18 + 24) = 17;
  *(v18 + 32) = 2;
  *(v18 + 40) = v13;
  *(v18 + 48) = &unk_1D1E9CBA0;
  *(v18 + 56) = 0;
  *(v18 + 64) = v17;
  *(v18 + 72) = v16;
  *(v18 + 80) = v15;
  *(v18 + 88) = v14 & 1;
  v19 = swift_task_alloc();
  *(v0 + 112) = v19;
  *v19 = v0;
  v19[1] = sub_1D1B9C308;
  v20 = MEMORY[0x1E69E7CA8] + 8;
  v21 = MEMORY[0x1E69E7CA8] + 8;
  v22 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v19, v20, v21, 0, 0, &unk_1D1E9CBA8, v18, v22);
}

uint64_t sub_1D1B9C308()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D1B9C49C;
  }

  else
  {

    v2 = sub_1D1B9C430;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1B9C430()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B9C49C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for StaticLightProfile(uint64_t a1)
{
  result = qword_1EE07A8A8;
  if (!qword_1EE07A8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1B9C588()
{
  result = qword_1EC64BC38;
  if (!qword_1EC64BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BC38);
  }

  return result;
}

uint64_t sub_1D1B9C5DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BC40, &qword_1D1E9C608);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1B9C62C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1B96AA4(v2, v0 + 24, v3, v4);
}

uint64_t sub_1D1B9C6D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return sub_1D1E32D28(a1, v4, v5, v6);
}

uint64_t sub_1D1B9C798(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC5E60 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC5E80 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000644979)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

BOOL sub_1D1B9C908(void *a1, void *a2)
{
  v3 = [a1 settings];
  LOBYTE(v4) = [v3 supportedFeatures];

  v5 = [a2 residentDevices];
  sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
  v6 = sub_1D1E67C1C();

  v16 = MEMORY[0x1E69E7CC0];
  if (v6 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v15 = v4;
    v8 = 0;
    v9 = &selRef_addZoneWithName_completionHandler_;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D3891EF0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v4 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ([v10 isEnabled] && (objc_msgSend(v11, v9[46]) & 0x4000) != 0)
      {
        sub_1D1E6896C();
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
        v9 = &selRef_addZoneWithName_completionHandler_;
      }

      else
      {
      }

      ++v8;
      if (v4 == i)
      {
        LOBYTE(v4) = v15;
        v12 = v16;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v12 = MEMORY[0x1E69E7CC0];
LABEL_19:

  if (v4)
  {
    if (v12 < 0 || (v12 & 0x4000000000000000) != 0)
    {
      v14 = sub_1D1E6873C();
    }

    else
    {
      v14 = *(v12 + 16);
    }

    return v14 != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1D1B9CB3C(char a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 89) = a4;
  *(v4 + 16) = a3;
  *(v4 + 88) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_1D1B9CBDC;

  return sub_1D1B9B02C(a2);
}

uint64_t sub_1D1B9CBDC(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1B9CCDC, 0, 0);
}

uint64_t sub_1D1B9CCDC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 89);
  v3 = *(v0 + 16);
  v4 = *(v0 + 88);
  v5 = swift_allocObject();
  *(v0 + 40) = v5;
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v0 + 48) = v6;
  *(v6 + 16) = sub_1D18DAFB0(MEMORY[0x1E69E7CC0]);
  v7 = swift_allocObject();
  *(v0 + 56) = v7;
  *(v7 + 16) = MEMORY[0x1E69E7CD0];
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *(v8 + 16) = "LightProfileSetNaturalLightEnabled";
  *(v8 + 24) = 34;
  *(v8 + 32) = 2;
  *(v8 + 40) = v1;
  *(v8 + 48) = &unk_1D1E9CB08;
  *(v8 + 56) = v5;
  *(v8 + 64) = v7;
  *(v8 + 72) = v6;
  *(v8 + 80) = v3;
  *(v8 + 88) = v2 & 1;
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1D1B9CE90;
  v10 = MEMORY[0x1E69E7CA8] + 8;
  v11 = MEMORY[0x1E69E7CA8] + 8;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v9, v10, v11, 0, 0, &unk_1D1E9CB18, v8, v12);
}

uint64_t sub_1D1B9CE90()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D1B9D030;
  }

  else
  {

    v2 = sub_1D1B9CFB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1B9CFB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B9D030()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1B9D0C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D1B9D210(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1B9D2A0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1B9D2A0()
{
  if (!qword_1EC64BC68[0])
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E6370];
    v4[1] = MEMORY[0x1E69E6390];
    v4[2] = MEMORY[0x1E69E6378];
    v4[3] = MEMORY[0x1E69E6380];
    v2 = type metadata accessor for WritableProfileValue(0, v4);
    if (!v3)
    {
      atomic_store(v2, qword_1EC64BC68);
    }
  }
}

uint64_t sub_1D1B9D31C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1D1E685AC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1B9D3A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5)
  {
    v7 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v9 = v7 + ((v6 + *(v4 + 80)) & ~*(v4 + 80));
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

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

  return v5 + (v9 | v13) + 1;
}

char *sub_1D1B9D500(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = (v7 + *(v5 + 80)) & ~*(v5 + 80);
  if (!v6)
  {
    ++v7;
  }

  v9 = v7 + v8;
  v10 = a3 >= v6;
  v11 = a3 - v6;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
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
          v12 = v17;
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

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_41:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_30;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
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
  v20 = *(v5 + 56);

  return v20();
}

unint64_t sub_1D1B9D734()
{
  result = qword_1EC64BD70;
  if (!qword_1EC64BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BD70);
  }

  return result;
}

unint64_t sub_1D1B9D7E0()
{
  result = qword_1EC64BD78;
  if (!qword_1EC64BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BD78);
  }

  return result;
}

unint64_t sub_1D1B9D838()
{
  result = qword_1EC64BD80;
  if (!qword_1EC64BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BD80);
  }

  return result;
}

uint64_t sub_1D1B9D88C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D1B972FC(a1, v4);
}

uint64_t sub_1D1B9D928(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  v8 = *(v2 + 48);
  v9 = *(v2 + 56);
  v10 = *(v2 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1B9793C(a1, a2, v5, v6, v10, v7, v8, v9);
}

uint64_t sub_1D1B9DA34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1B98138(a1, v4, v5, v6, v7, v10, v8, v9);
}

uint64_t sub_1D1B9DB34(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = *(v1 + 7);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1B98F38(v6, a1, v4, v5, v7, v8, v9);
}

uint64_t sub_1D1B9DC0C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1B98540(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D1B9DD04(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1B989BC(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1B9DE08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return sub_1D1B2258C(a1, v4);
}

uint64_t sub_1D1B9DEEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9E8, &qword_1D1E97560);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1B9DF5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1B9DFA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static StaticProfileBag.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D184CF18(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D184D5B4(v2, v3);
}

unint64_t sub_1D1B9E0BC()
{
  if (*v0)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_1D1B9E0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001DLL && 0x80000001D1EC5EA0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001D1EC5EC0 == a2)
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

uint64_t sub_1D1B9E1DC(uint64_t a1)
{
  v2 = sub_1D1B9E42C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1B9E218(uint64_t a1)
{
  v2 = sub_1D1B9E42C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticProfileBag.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BD88, &qword_1D1E9CBC0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B9E42C();

  sub_1D1E6930C();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BD98, &qword_1D1E9CBC8);
  sub_1D1B9E480();
  sub_1D1E68F1C();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BDB0, &qword_1D1E9CBD0);
    sub_1D1B9E56C();
    sub_1D1E68F1C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D1B9E42C()
{
  result = qword_1EC64BD90;
  if (!qword_1EC64BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BD90);
  }

  return result;
}

unint64_t sub_1D1B9E480()
{
  result = qword_1EC64BDA0;
  if (!qword_1EC64BDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BD98, &qword_1D1E9CBC8);
    sub_1D1BA2264(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D1BA2264(&qword_1EC64BDA8, type metadata accessor for StaticLightProfile, &protocol conformance descriptor for StaticLightProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BDA0);
  }

  return result;
}

unint64_t sub_1D1B9E56C()
{
  result = qword_1EC64BDB8;
  if (!qword_1EC64BDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BDB0, &qword_1D1E9CBD0);
    sub_1D1BA2264(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D1BA2264(&qword_1EC64BDC0, type metadata accessor for StaticTelevisionProfile, &protocol conformance descriptor for StaticTelevisionProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BDB8);
  }

  return result;
}

uint64_t StaticProfileBag.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1D18582DC(a1, v3);

  return sub_1D1857C7C(a1, v4);
}

uint64_t StaticProfileBag.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  sub_1D18582DC(v4, v1);
  sub_1D1857C7C(v4, v2);
  return sub_1D1E6926C();
}

uint64_t StaticProfileBag.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BDC8, &unk_1D1E9CBD8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1B9E42C();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BD98, &qword_1D1E9CBC8);
  v13 = 0;
  sub_1D1BA208C();
  sub_1D1E68D7C();
  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BDB0, &qword_1D1E9CBD0);
  v13 = 1;
  sub_1D1BA2178();
  sub_1D1E68D7C();
  (*(v6 + 8))(v8, v5);
  v10 = v14;
  *a2 = v9;
  a2[1] = v10;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1B9E91C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1D184CF18(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1D184D5B4(v2, v3);
}

uint64_t sub_1D1B9E978()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D1E6920C();
  sub_1D18582DC(v4, v1);
  sub_1D1857C7C(v4, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B9E9CC(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1D18582DC(a1, v3);

  return sub_1D1857C7C(a1, v4);
}

uint64_t sub_1D1B9EA0C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1D1E6920C();
  sub_1D18582DC(v5, v2);
  sub_1D1857C7C(v5, v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1B9EA8C(uint64_t a1, void **a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v66 = a8;
  v63 = a6;
  v64 = a7;
  v62 = a4;
  v70 = a1;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v72 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for StaticLightProfile(0);
  v65 = *(v73 - 8);
  v13 = MEMORY[0x1EEE9AC00](v73);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = v60 - v16;
  v17 = sub_1D1E66A7C();
  v61 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v68 = v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v60 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v67 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v60 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v71 = v60 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v74 = v60 - v30;
  v31 = *a2;
  v32 = [v31 services];
  sub_1D17DAA94();
  v33 = sub_1D1E67C1C();

  v77 = a3;
  v76 = &v77;
  LOBYTE(a3) = sub_1D18B8754(sub_1D1BA2F80, v75, v33);

  if (a3)
  {
    v35 = v62;
    v60[1] = v8;
    if (v62)
    {
      v36 = [v31 uniqueIdentifier];
      sub_1D1E66A5C();

      v37 = v65;
      if (v35[2] && (v38 = sub_1D1742188(), (v39 & 1) != 0))
      {
        sub_1D1BA2FA0(v35[7] + *(v37 + 72) * v38, v74, type metadata accessor for StaticLightProfile);
        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      v41 = v73;
      (*(v61 + 8))(v21, v17);
    }

    else
    {
      v40 = 1;
      v41 = v73;
      v37 = v65;
    }

    v42 = *(v37 + 56);
    v43 = v74;
    v65 = v37 + 56;
    v62 = v42;
    (v42)(v74, v40, 1, v41);
    v44 = v72;
    sub_1D1BA2FA0(v63, v72, type metadata accessor for StateSnapshot.UpdateType);
    v45 = v43;
    v46 = v71;
    sub_1D1741C08(v45, v71, &qword_1EC6430E8, &unk_1D1E71440);
    v47 = [v31 uniqueIdentifier];
    sub_1D1E66A5C();

    v48 = [v64 uniqueIdentifier];
    sub_1D1E66A5C();

    v49 = sub_1D1B9C908(v31, v66);
    if (v49)
    {
      sub_1D1741C08(v46, v27, &qword_1EC6430E8, &unk_1D1E71440);
      if ((*(v37 + 48))(v27, 1, v41) == 1)
      {
        sub_1D1741A30(v27, &qword_1EC6430E8, &unk_1D1E71440);
        v50 = 2;
      }

      else
      {
        v50 = v27[*(v41 + 24) + 1];
        sub_1D1BA3008(v27, type metadata accessor for StaticLightProfile);
      }

      v53 = v72;
      v52 = sub_1D1B94A04(v72, v31, v50);
      v54 = [v31 settings];
      v51 = [v54 isNaturalLightingEnabled];

      sub_1D1741A30(v71, &qword_1EC6430E8, &unk_1D1E71440);
      sub_1D1BA3008(v53, type metadata accessor for StateSnapshot.UpdateType);
      v41 = v73;
    }

    else
    {
      sub_1D1741A30(v46, &qword_1EC6430E8, &unk_1D1E71440);
      sub_1D1BA3008(v44, type metadata accessor for StateSnapshot.UpdateType);
      v51 = 0;
      v52 = 2;
    }

    v55 = &v15[*(v41 + 24)];
    *v55 = v51;
    v55[1] = v52;
    v15[*(v41 + 20)] = v49;
    v56 = v69;
    sub_1D1BA2EB4(v15, v69, type metadata accessor for StaticLightProfile);
    v57 = [v31 uniqueIdentifier];
    v58 = v68;
    sub_1D1E66A5C();

    v59 = v67;
    sub_1D1BA2FA0(v56, v67, type metadata accessor for StaticLightProfile);
    (v62)(v59, 0, 1, v41);
    sub_1D1B0EF74(v59, v58);
    sub_1D1BA3008(v56, type metadata accessor for StaticLightProfile);
    return sub_1D1741A30(v74, &qword_1EC6430E8, &unk_1D1E71440);
  }

  return result;
}

uint64_t sub_1D1B9F16C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v138 = a1;
  v118 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v119 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v116 = &v109 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v123 = &v109 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v109 - v10;
  v122 = type metadata accessor for StaticLightProfile(0);
  v133 = *(v122 - 8);
  v11 = MEMORY[0x1EEE9AC00](v122 - 8);
  v137 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v120 = &v109 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v114 = &v109 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v146 = &v109 - v17;
  v18 = sub_1D1E66A7C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v113 = &v109 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v121 = &v109 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v124 = &v109 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v142 = &v109 - v29;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
  v30 = MEMORY[0x1EEE9AC00](v131);
  v130 = &v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v144 = &v109 - v32;
  v33 = *v2;
  v117 = v2[1];

  v34 = sub_1D18DB57C(MEMORY[0x1E69E7CC0]);
  v35 = v33 + 64;
  v36 = 1 << *(v33 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & *(v33 + 64);
  v39 = (v36 + 63) >> 6;
  v136 = v19 + 32;
  v143 = v19 + 8;
  v112 = (v19 + 56);
  v132 = v19;
  v111 = (v19 + 48);
  v134 = v33;

  v40 = 0;
  v127 = v39;
  v128 = v33 + 64;
  v125 = v22;
  v129 = v19 + 16;
  while (v38)
  {
    v141 = v34;
    v41 = v40;
LABEL_13:
    v139 = (v38 - 1) & v38;
    v42 = __clz(__rbit64(v38)) | (v41 << 6);
    v43 = v134;
    v44 = *(v134 + 48);
    v45 = v132;
    v135 = *(v132 + 72);
    v46 = v144;
    v145 = *(v132 + 16);
    v145(v144, v44 + v135 * v42, v18);
    v47 = *(v43 + 56);
    v140 = *(v133 + 72);
    v48 = v131;
    sub_1D1BA2FA0(v47 + v140 * v42, v46 + *(v131 + 48), type metadata accessor for StaticLightProfile);
    v49 = v130;
    sub_1D1741C08(v46, v130, &qword_1EC645578, &qword_1D1E79B20);
    v50 = *(v48 + 48);
    v51 = v142;
    v126 = *(v45 + 32);
    v126(v142, v49, v18);
    sub_1D1BA3008(v49 + v50, type metadata accessor for StaticLightProfile);
    sub_1D1741C08(v46, v49, &qword_1EC645578, &qword_1D1E79B20);
    v52 = v146;
    sub_1D1BA2EB4(v49 + *(v48 + 48), v146, type metadata accessor for StaticLightProfile);
    v53 = *(v45 + 8);
    v53(v49, v18);
    if (!*(v138 + 16) || (v54 = sub_1D1742188(), (v55 & 1) == 0) || *(*(v138 + 56) + v54) < 0)
    {
      v64 = v125;
      v65 = v145;
      v145(v125, v51, v18);
      sub_1D1BA2FA0(v52, v137, type metadata accessor for StaticLightProfile);
      v66 = v141;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v147 = v66;
      v68 = sub_1D1742188();
      v70 = v66[2];
      v71 = (v69 & 1) == 0;
      v72 = __OFADD__(v70, v71);
      v73 = v70 + v71;
      if (v72)
      {
        goto LABEL_47;
      }

      v74 = v69;
      if (v66[3] < v73)
      {
        sub_1D1730674(v73, isUniquelyReferenced_nonNull_native);
        v68 = sub_1D1742188();
        if ((v74 & 1) != (v75 & 1))
        {
          goto LABEL_51;
        }

        goto LABEL_24;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_24:
        v76 = v146;
        v34 = v147;
        if (v74)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v105 = v68;
        sub_1D173D494();
        v68 = v105;
        v65 = v145;
        v76 = v146;
        v34 = v147;
        if (v74)
        {
LABEL_4:
          sub_1D1BA2F1C(v137, v34[7] + v68 * v140);
          v53(v64, v18);
          sub_1D1BA3008(v76, type metadata accessor for StaticLightProfile);
          v53(v142, v18);
LABEL_5:
          sub_1D1741A30(v144, &qword_1EC645578, &qword_1D1E79B20);
          goto LABEL_6;
        }
      }

      v34[(v68 >> 6) + 8] |= 1 << v68;
      v77 = v68;
      v65(v34[6] + v68 * v135, v64, v18);
      sub_1D1BA2EB4(v137, v34[7] + v77 * v140, type metadata accessor for StaticLightProfile);
      v53(v64, v18);
      sub_1D1BA3008(v76, type metadata accessor for StaticLightProfile);
      v53(v142, v18);
      sub_1D1741A30(v144, &qword_1EC645578, &qword_1D1E79B20);
      v78 = v34[2];
      v72 = __OFADD__(v78, 1);
      v79 = v78 + 1;
      if (v72)
      {
        goto LABEL_48;
      }

      goto LABEL_26;
    }

    v110 = *(*(v138 + 56) + v54);
    v109 = v53;
    v56 = v145;
    v145(v124, v51, v18);
    v57 = *v112;
    v58 = v115;
    (*v112)(v115, 1, 1, v18);
    v57(v123, 1, 1, v18);
    v59 = v116;
    sub_1D1741A90(v58, v116, &qword_1EC642590, qword_1D1E71260);
    v60 = *v111;
    if ((*v111)(v59, 1, v18) == 1)
    {
      v56(v121, v146, v18);
      v61 = v60(v59, 1, v18);
      v62 = v141;
      v63 = v126;
      if (v61 != 1)
      {
        sub_1D1741A30(v59, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      v63 = v126;
      v126(v121, v59, v18);
      v62 = v141;
    }

    v80 = v122;
    v81 = v146;
    LODWORD(v141) = *(v146 + *(v122 + 20));
    v82 = v119;
    sub_1D1741A90(v123, v119, &qword_1EC642590, qword_1D1E71260);
    if (v60(v82, 1, v18) == 1)
    {
      v83 = v81 + *(v80 + 28);
      v84 = v113;
      v145(v113, v83, v18);
      if (v60(v82, 1, v18) != 1)
      {
        sub_1D1741A30(v119, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      v84 = v113;
      v63(v113, v82, v18);
    }

    v85 = v114;
    v63(v114, v121, v18);
    v86 = v122;
    *(v85 + *(v122 + 20)) = v141;
    v87 = (v85 + *(v86 + 24));
    *v87 = v110 & 1;
    v87[1] = 2;
    v63((v85 + *(v86 + 28)), v84, v18);
    sub_1D1BA2EB4(v85, v120, type metadata accessor for StaticLightProfile);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v147 = v62;
    v90 = sub_1D1742188();
    v91 = v62[2];
    v92 = (v89 & 1) == 0;
    v93 = v91 + v92;
    if (__OFADD__(v91, v92))
    {
      goto LABEL_49;
    }

    v94 = v89;
    if (v62[3] >= v93)
    {
      v97 = v145;
      if ((v88 & 1) == 0)
      {
        sub_1D173D494();
      }
    }

    else
    {
      sub_1D1730674(v93, v88);
      v95 = sub_1D1742188();
      v97 = v145;
      if ((v94 & 1) != (v96 & 1))
      {
        goto LABEL_51;
      }

      v90 = v95;
    }

    v98 = v146;
    v34 = v147;
    v99 = v142;
    if (v94)
    {
      sub_1D1BA2F1C(v120, v147[7] + v90 * v140);
      v100 = v109;
      v109(v124, v18);
      sub_1D1BA3008(v98, type metadata accessor for StaticLightProfile);
      v100(v99, v18);
      goto LABEL_5;
    }

    v147[(v90 >> 6) + 8] |= 1 << v90;
    v101 = v124;
    v97(v34[6] + v90 * v135, v124, v18);
    sub_1D1BA2EB4(v120, v34[7] + v90 * v140, type metadata accessor for StaticLightProfile);
    v102 = v101;
    v103 = v109;
    v109(v102, v18);
    sub_1D1BA3008(v98, type metadata accessor for StaticLightProfile);
    v103(v99, v18);
    sub_1D1741A30(v144, &qword_1EC645578, &qword_1D1E79B20);
    v104 = v34[2];
    v72 = __OFADD__(v104, 1);
    v79 = v104 + 1;
    if (v72)
    {
      goto LABEL_50;
    }

LABEL_26:
    v34[2] = v79;
LABEL_6:
    v40 = v41;
    v39 = v127;
    v35 = v128;
    v38 = v139;
  }

  while (1)
  {
    v41 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v41 >= v39)
    {

      v107 = v118;
      v108 = v117;
      *v118 = v34;
      v107[1] = v108;
      return result;
    }

    v38 = *(v35 + 8 * v41);
    ++v40;
    if (v38)
    {
      v141 = v34;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

void StaticProfileBag.isNaturalLightSupported.getter()
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
  v1 = MEMORY[0x1EEE9AC00](v27);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v25 = &v25 - v3;
  v4 = *v0 + 64;
  v5 = 1 << *(*v0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v0 + 64);
  v8 = (v5 + 63) >> 6;
  v28 = *v0;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
    v13 = v28;
    v14 = *(v28 + 48);
    v15 = sub_1D1E66A7C();
    v16 = *(v15 - 8);
    v17 = v25;
    (*(v16 + 16))(v25, v14 + *(v16 + 72) * v12, v15);
    v18 = *(v13 + 56);
    v19 = (type metadata accessor for StaticLightProfile(0) - 8);
    v20 = v18 + *(*v19 + 72) * v12;
    v21 = v27;
    sub_1D1BA2FA0(v20, &v17[*(v27 + 48)], type metadata accessor for StaticLightProfile);
    v22 = v17;
    v23 = v26;
    sub_1D1741A90(v22, v26, &qword_1EC645578, &qword_1D1E79B20);
    v24 = v23 + *(v21 + 48);
    LODWORD(v19) = *(v24 + v19[7]);
    sub_1D1BA3008(v24, type metadata accessor for StaticLightProfile);
    (*(v16 + 8))(v23, v15);
    if (v19 == 1)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_11;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void StaticProfileBag.isNaturalLightEnabled.getter()
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
  v1 = MEMORY[0x1EEE9AC00](v31);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v29 = &v29 - v3;
  v4 = *v0 + 64;
  v5 = 1 << *(*v0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v0 + 64);
  v8 = (v5 + 63) >> 6;
  v32 = *v0;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
    v13 = v32;
    v14 = *(v32 + 48);
    v15 = sub_1D1E66A7C();
    v16 = *(v15 - 8);
    v17 = v29;
    (*(v16 + 16))(v29, v14 + *(v16 + 72) * v12, v15);
    v18 = *(v13 + 56);
    v19 = (type metadata accessor for StaticLightProfile(0) - 8);
    v20 = v18 + *(*v19 + 72) * v12;
    v21 = v31;
    sub_1D1BA2FA0(v20, &v17[*(v31 + 48)], type metadata accessor for StaticLightProfile);
    v22 = v17;
    v23 = v30;
    sub_1D1741A90(v22, v30, &qword_1EC645578, &qword_1D1E79B20);
    v24 = v23 + *(v21 + 48);
    v25 = (v24 + v19[8]);
    v26 = *v25;
    v27 = v25[1];
    if (v27 == 2)
    {
      v28 = v26;
    }

    else
    {
      v28 = v27;
    }

    sub_1D1BA3008(v24, type metadata accessor for StaticLightProfile);
    (*(v16 + 8))(v23, v15);
    if (v28)
    {
LABEL_14:

      return;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      goto LABEL_14;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t StaticProfileBag.setNaturalLight(_:)(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  v4 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v4;
  return MEMORY[0x1EEE6DFA0](sub_1D1BA041C, 0, 0);
}

uint64_t sub_1D1BA041C()
{
  v1 = *(v0 + 64);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BDF0, &qword_1D1E9CBF0);
  *(v0 + 48) = sub_1D1BA22AC();
  *(v0 + 16) = v1;

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1D1BA0508;
  v3 = *(v0 + 88);
  v4 = *(v0 + 56);

  return static StaticLightProfile.setNaturalLight(_:lightProfiles:waitForWriteRequestCompletion:timeout:)(v4, v3, v0 + 16, 0, 0, 1);
}

uint64_t sub_1D1BA0508()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1BA0644, 0, 0);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_1D1BA0644()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void StaticProfileBag.mediaSourceDisplayOrder.getter()
{
  v1 = type metadata accessor for StaticTelevisionProfile(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE00, &qword_1D1E9CBF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = *(v0 + 8);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_8:
      sub_1D1BA2FA0(*(v11 + 56) + *(v2 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v7, type metadata accessor for StaticTelevisionProfile);
      sub_1D1BA2EB4(v7, v5, type metadata accessor for StaticTelevisionProfile);
      if (*(*&v5[*(v1 + 20)] + 16))
      {
        break;
      }

      v14 &= v14 - 1;
      sub_1D1BA3008(v5, type metadata accessor for StaticTelevisionProfile);
      v16 = v17;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    sub_1D1BA2EB4(v5, v10, type metadata accessor for StaticTelevisionProfile);
    (*(v2 + 56))(v10, 0, 1, v1);
LABEL_12:

    if ((*(v2 + 48))(v10, 1, v1) == 1)
    {
      sub_1D1741A30(v10, &qword_1EC64BE00, &qword_1D1E9CBF8);
    }

    else
    {

      sub_1D1BA3008(v10, type metadata accessor for StaticTelevisionProfile);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        (*(v2 + 56))(v10, 1, 1, v1);
        goto LABEL_12;
      }

      v14 = *(v11 + 64 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t static StaticProfileBag.ValueUpdate.== infix(_:_:)(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

uint64_t sub_1D1BA09E0(uint64_t a1)
{
  v2 = sub_1D1BA2310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA0A1C(uint64_t a1)
{
  v2 = sub_1D1BA2310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA0A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001D1EC5EF0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D1E6904C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D1BA0B08(uint64_t a1)
{
  v2 = sub_1D1BA23B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA0B44(uint64_t a1)
{
  v2 = sub_1D1BA23B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA0BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x457265776F507369 && a2 == 0xEE0064656C62616ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D1E6904C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1BA0C34(uint64_t a1)
{
  v2 = sub_1D1BA2364();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA0C70(uint64_t a1)
{
  v2 = sub_1D1BA2364();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticProfileBag.ValueUpdate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE08, &qword_1D1E9CC00);
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v16 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE10, &qword_1D1E9CC08);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE18, &qword_1D1E9CC10);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BA2310();
  sub_1D1E6930C();
  if (v12 < 0)
  {
    v22 = 1;
    sub_1D1BA2364();
    v7 = v16;
    sub_1D1E68DFC();
    v13 = v18;
    sub_1D1E68EDC();
    v14 = v17;
  }

  else
  {
    v21 = 0;
    sub_1D1BA23B8();
    sub_1D1E68DFC();
    v13 = v20;
    sub_1D1E68EDC();
    v14 = v19;
  }

  (*(v14 + 8))(v7, v13);
  return (*(v9 + 8))(v11, v8);
}

uint64_t StaticProfileBag.ValueUpdate.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1 >> 7);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t StaticProfileBag.ValueUpdate.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v31 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE38, &qword_1D1E9CC18);
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE40, &qword_1D1E9CC20);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE48, &unk_1D1E9CC28);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D1BA2310();
  v13 = v32;
  sub_1D1E692FC();
  if (!v13)
  {
    v32 = v9;
    v14 = sub_1D1E68DDC();
    v15 = (2 * *(v14 + 16)) | 1;
    v34 = v14;
    v35 = v14 + 32;
    v36 = 0;
    v37 = v15;
    v16 = sub_1D18085D0();
    if (v16 == 2 || v36 != v37 >> 1)
    {
      v21 = sub_1D1E688EC();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v23 = &type metadata for StaticProfileBag.ValueUpdate;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v32 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v16)
    {
      v38 = 1;
      sub_1D1BA2364();
      sub_1D1E68C4C();
      v18 = v31;
      v17 = v32;
      v19 = v28;
      v20 = sub_1D1E68D3C();
      (*(v30 + 8))(v4, v19);
      (*(v17 + 8))(v11, v8);
      swift_unknownObjectRelease();
      *v18 = v20 & 1 | 0x80;
    }

    else
    {
      v38 = 0;
      sub_1D1BA23B8();
      sub_1D1E68C4C();
      v26 = v31;
      v25 = v32;
      v27 = sub_1D1E68D3C();
      (*(v29 + 8))(v7, v5);
      (*(v25 + 8))(v11, v8);
      swift_unknownObjectRelease();
      *v26 = v27 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v33);
}

uint64_t sub_1D1BA151C(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 ^ v2 ^ 1;
  v5 = v3 >= 0;
  if (v3 < 0)
  {
    v6 = v3 ^ v2 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  if (!v5)
  {
    v4 = 0;
  }

  if (v2 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  return v7 & 1;
}

uint64_t sub_1D1BA158C(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v2 >> 7);
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1BA160C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F7250746867696CLL && a2 == 0xEC000000656C6966;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F7250616964656DLL && a2 == 0xEC000000656C6966)
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

uint64_t sub_1D1BA16EC(uint64_t a1)
{
  v2 = sub_1D1BA240C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA1728(uint64_t a1)
{
  v2 = sub_1D1BA240C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA1764(uint64_t a1)
{
  v2 = sub_1D1BA24B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA17A0(uint64_t a1)
{
  v2 = sub_1D1BA24B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1BA17DC(uint64_t a1)
{
  v2 = sub_1D1BA2460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1BA1818(uint64_t a1)
{
  v2 = sub_1D1BA2460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticProfileBag.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE50, &qword_1D1E9CC38);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE58, &qword_1D1E9CC40);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE60, &qword_1D1E9CC48);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BA240C();
  sub_1D1E6930C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D1BA2460();
    v14 = v18;
    sub_1D1E68DFC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D1BA24B4();
    sub_1D1E68DFC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t StaticProfileBag.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticProfileBag.Kind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE80, &qword_1D1E9CC50);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE88, &qword_1D1E9CC58);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64BE90, &qword_1D1E9CC60);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1BA240C();
  v12 = v31;
  sub_1D1E692FC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D1E68DDC();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D18085D0();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D1E688EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v22 = &type metadata for StaticProfileBag.Kind;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D1BA2460();
        sub_1D1E68C4C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D1BA24B4();
        sub_1D1E68C4C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_1D1BA208C()
{
  result = qword_1EC64BDD0;
  if (!qword_1EC64BDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64BD98, &qword_1D1E9CBC8);
    sub_1D1BA2264(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1D1BA2264(&qword_1EC64BDD8, type metadata accessor for StaticLightProfile, &protocol conformance descriptor for StaticLightProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64BDD0);
  }

  return result;
}