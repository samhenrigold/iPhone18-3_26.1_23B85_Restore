uint64_t sub_1D184782C(uint64_t a1, uint64_t a2)
{
  v130 = type metadata accessor for StaticTimer(0);
  v4 = *(v130 - 8);
  v5 = MEMORY[0x1EEE9AC00](v130);
  v133 = (v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v107 - v7);
  v131 = type metadata accessor for StaticAlarm(0);
  v9 = *(v131 - 8);
  v10 = MEMORY[0x1EEE9AC00](v131);
  v135 = v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v107 - v12;
  v137 = sub_1D1E66A7C();
  v14 = *(v137 - 8);
  v15 = MEMORY[0x1EEE9AC00](v137);
  v132 = v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v107 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455D8, &qword_1D1E79B88);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v107 - v23;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v121 = v4;
  v25 = 0;
  v26 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a1 + 64);
  v30 = (v27 + 63) >> 6;
  v128 = (v14 + 32);
  v119 = v8;
  v120 = (v14 + 8);
  v124 = v24;
  v125 = a2;
  v134 = v22;
  v109 = a1 + 64;
  v111 = a1;
  v110 = v14;
  v113 = v18;
  v122 = v13;
  v108 = v30;
  v107[1] = v14 + 16;
  v118 = v9;
  while (1)
  {
    if (!v29)
    {
      if (v30 <= v25 + 1)
      {
        v32 = v25 + 1;
      }

      else
      {
        v32 = v30;
      }

      v33 = v32 - 1;
      while (1)
      {
        v34 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v34 >= v30)
        {
          v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E0, &unk_1D1E79B90);
          (*(*(v98 - 8) + 56))(v22, 1, 1, v98);
          v117 = 0;
          v25 = v33;
          goto LABEL_17;
        }

        v35 = *(v26 + 8 * v34);
        ++v25;
        if (v35)
        {
          v117 = (v35 - 1) & v35;
          v31 = __clz(__rbit64(v35)) | (v34 << 6);
          v25 = v34;
          goto LABEL_16;
        }
      }

      __break(1u);
      __break(1u);
LABEL_128:
      sub_1D1741C70(v14);
      sub_1D1757B18(5);
      sub_1D1757B18(v14);

      v105 = 5;
      goto LABEL_131;
    }

    v117 = (v29 - 1) & v29;
    v31 = __clz(__rbit64(v29)) | (v25 << 6);
LABEL_16:
    v36 = v137;
    (*(v14 + 2))(v18, *(a1 + 48) + *(v14 + 9) * v31, v137);
    v37 = (*(a1 + 56) + 32 * v31);
    v38 = *v37;
    v39 = v37[1];
    v41 = v37[2];
    v40 = v37[3];
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E0, &unk_1D1E79B90);
    v43 = v14;
    v44 = v42;
    v45 = &v134[*(v42 + 48)];
    v43[4](v134, v18, v36);
    *v45 = v38;
    *(v45 + 1) = v39;
    *(v45 + 2) = v41;
    *(v45 + 3) = v40;
    v22 = v134;
    (*(*(v44 - 8) + 56))(v134, 0, 1, v44);

    sub_1D1741C70(v41);
    sub_1D1741C70(v40);
    v24 = v124;
    a2 = v125;
    v9 = v118;
LABEL_17:
    sub_1D1741A90(v22, v24, &qword_1EC6455D8, &qword_1D1E79B88);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E0, &unk_1D1E79B90);
    v47 = (*(*(v46 - 8) + 48))(v24, 1, v46) == 1;
    result = v47;
    if (v47)
    {
      return result;
    }

    v112 = v47;
    v49 = (v24 + *(v46 + 48));
    v50 = v132;
    v51 = v24;
    v52 = v137;
    (*v128)(v132, v51, v137);
    v53 = *v49;
    v136 = v49[1];
    v14 = v49[2];
    v54 = v49[3];
    v55 = sub_1D1742188();
    LOBYTE(v49) = v56;
    (*v120)(v50, v52);
    if ((v49 & 1) == 0)
    {

      goto LABEL_119;
    }

    v127 = v14;
    v57 = (*(a2 + 56) + 32 * v55);
    v58 = *v57;
    v59 = *(*v57 + 16);
    v60 = v53;
    if (v59 != *(v53 + 16))
    {

LABEL_118:
      v14 = v127;
LABEL_119:
      sub_1D1757B18(v14);
      sub_1D1757B18(v54);
      return 0;
    }

    v123 = v54;
    v61 = v57[1];
    v62 = v57[2];
    v63 = v57[3];
    v129 = v63;
    v138 = v58;
    v126 = v62;
    if (v59)
    {
      break;
    }

    sub_1D1741C70(v62);
    result = sub_1D1741C70(v63);
LABEL_47:
    v82 = *(v61 + 16);
    if (v82 != *(v136 + 16))
    {
LABEL_116:

      sub_1D1757B18(v126);
      sub_1D1757B18(v63);

LABEL_117:

      v54 = v123;
      goto LABEL_118;
    }

    if (v82 && v61 != v136)
    {
      v83 = 0;
      v84 = (*(v121 + 80) + 32) & ~*(v121 + 80);
      v116 = v61 + v84;
      v115 = v136 + v84;
      v114 = v61;
      v107[0] = v82;
      while (v83 < *(v61 + 16))
      {
        v85 = *(v121 + 72) * v83;
        v86 = v119;
        result = sub_1D186155C(v116 + v85, v119, type metadata accessor for StaticTimer);
        v63 = v129;
        if (v83 >= *(v136 + 16))
        {
          goto LABEL_138;
        }

        v87 = v9;
        v88 = v133;
        sub_1D186155C(v115 + v85, v133, type metadata accessor for StaticTimer);
        if (*v86 != *v88 || (v89 = v130, (sub_1D1E669AC() & 1) == 0) || *(v86 + v89[6]) != *(v88 + v89[6]))
        {
LABEL_115:
          sub_1D18615C4(v88, type metadata accessor for StaticTimer);
          sub_1D18615C4(v86, type metadata accessor for StaticTimer);
          goto LABEL_116;
        }

        v90 = v89[7];
        v91 = (v86 + v90);
        v92 = *(v86 + v90 + 8);
        v93 = (v88 + v90);
        v94 = v93[1];
        if (v92)
        {
          if (!v94)
          {
            goto LABEL_115;
          }

          if (*v91 != *v93 || v92 != v94)
          {
            v95 = sub_1D1E6904C();
            v88 = v133;
            if ((v95 & 1) == 0)
            {
              goto LABEL_115;
            }
          }
        }

        else if (v94)
        {
          goto LABEL_115;
        }

        if (*(v86 + v89[8]) != *(v88 + v89[8]) || *(v86 + v89[9]) != *(v88 + v89[9]) || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
        {
          goto LABEL_115;
        }

        v96 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        sub_1D18615C4(v88, type metadata accessor for StaticTimer);
        result = sub_1D18615C4(v86, type metadata accessor for StaticTimer);
        if ((v96 & 1) == 0)
        {
          goto LABEL_126;
        }

        ++v83;
        v61 = v114;
        v9 = v87;
        if (v107[0] == v83)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_137;
    }

LABEL_68:
    v97 = v126;
    v14 = v127;
    if (v126 > 2)
    {
      v24 = v129;
      v18 = v113;
      switch(v126)
      {
        case 3:
          if (v127 != 3)
          {
            sub_1D1741C70(v127);
            sub_1D1757B18(3);
            sub_1D1757B18(v14);

            v105 = 3;
            goto LABEL_131;
          }

          break;
        case 4:
          if (v127 != 4)
          {
            sub_1D1741C70(v127);
            sub_1D1757B18(4);
            sub_1D1757B18(v14);

            v105 = 4;
            goto LABEL_131;
          }

          break;
        case 5:
          if (v127 != 5)
          {
            goto LABEL_128;
          }

          break;
        default:
LABEL_84:
          if (v127 < 6)
          {
            sub_1D1741C70(v127);
            sub_1D1741C70(v97);
            sub_1D1757B18(v97);
            sub_1D1757B18(v14);

            v105 = v97;
            goto LABEL_131;
          }

          sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
          sub_1D1741C70(v14);
          sub_1D1741C70(v97);
          LODWORD(v129) = sub_1D1E684FC();
          v99 = v97;
          sub_1D1757B18(v97);
          sub_1D1757B18(v14);
          if ((v129 & 1) == 0)
          {

            v105 = v97;
            goto LABEL_131;
          }

          goto LABEL_91;
      }
    }

    else
    {
      v24 = v129;
      v18 = v113;
      if (v126)
      {
        if (v126 == 1)
        {
          if (v127 != 1)
          {
            sub_1D1741C70(v127);
            sub_1D1757B18(1);
            sub_1D1757B18(v14);

            v105 = 1;
            goto LABEL_131;
          }
        }

        else
        {
          if (v126 != 2)
          {
            goto LABEL_84;
          }

          if (v127 != 2)
          {
            sub_1D1741C70(v127);
            sub_1D1757B18(2);
            sub_1D1757B18(v14);

            v105 = 2;
LABEL_131:
            sub_1D1757B18(v105);
            sub_1D1757B18(v24);

            v54 = v123;
            goto LABEL_119;
          }
        }
      }

      else if (v127)
      {
        sub_1D1741C70(v127);
        sub_1D1757B18(0);
        sub_1D1757B18(v14);

        v105 = 0;
        goto LABEL_131;
      }
    }

    sub_1D1757B18(v126);
    v99 = v97;
    sub_1D1757B18(v97);
LABEL_91:
    v100 = v24;
    if (v24 > 2)
    {
      v103 = v99;
      if (v24 == 3)
      {
        v102 = v99;
        v22 = v134;
        if (v123 != 3)
        {
          v54 = v123;
          sub_1D1741C70(v123);
          sub_1D1757B18(3);
          sub_1D1757B18(v54);

          sub_1D1757B18(v102);
          v106 = 3;
          goto LABEL_133;
        }

        goto LABEL_112;
      }

      v22 = v134;
      if (v24 == 4)
      {
        v102 = v103;
        if (v123 != 4)
        {
          v54 = v123;
          sub_1D1741C70(v123);
          sub_1D1757B18(4);
          sub_1D1757B18(v54);

          sub_1D1757B18(v102);
          v106 = 4;
          goto LABEL_133;
        }

        goto LABEL_112;
      }

      if (v24 != 5)
      {
        goto LABEL_106;
      }

      v102 = v103;
      if (v123 != 5)
      {
        v54 = v123;
        sub_1D1741C70(v123);
        sub_1D1757B18(5);
        sub_1D1757B18(v54);

        sub_1D1757B18(v102);
        v106 = 5;
        goto LABEL_133;
      }

LABEL_112:
      sub_1D1757B18(v100);
      sub_1D1757B18(v100);

      sub_1D1757B18(v102);
      sub_1D1757B18(v100);

      sub_1D1757B18(v14);
      sub_1D1757B18(v100);
      v24 = v124;
      a2 = v125;
      a1 = v111;
      v14 = v110;
      v26 = v109;
      v30 = v108;
      v29 = v117;
    }

    else
    {
      v101 = v99;
      if (!v24)
      {
        v102 = v99;
        v22 = v134;
        if (v123)
        {
          v54 = v123;
          sub_1D1741C70(v123);
          sub_1D1757B18(0);
          sub_1D1757B18(v54);

          sub_1D1757B18(v102);
          v106 = 0;
          goto LABEL_133;
        }

        goto LABEL_112;
      }

      v22 = v134;
      if (v24 == 1)
      {
        v102 = v101;
        if (v123 != 1)
        {
          v54 = v123;
          sub_1D1741C70(v123);
          sub_1D1757B18(1);
          sub_1D1757B18(v54);

          sub_1D1757B18(v102);
          v106 = 1;
          goto LABEL_133;
        }

        goto LABEL_112;
      }

      if (v24 == 2)
      {
        v102 = v101;
        if (v123 != 2)
        {
          v54 = v123;
          sub_1D1741C70(v123);
          sub_1D1757B18(2);
          sub_1D1757B18(v54);

          sub_1D1757B18(v102);
          v106 = 2;
LABEL_133:
          sub_1D1757B18(v106);

          goto LABEL_119;
        }

        goto LABEL_112;
      }

LABEL_106:
      v104 = v123;
      if (v123 < 6)
      {
        sub_1D1741C70(v123);
        sub_1D1741C70(v24);
        sub_1D1757B18(v24);
        sub_1D1757B18(v104);

        sub_1D1757B18(v126);
        sub_1D1757B18(v24);

        v54 = v104;
        goto LABEL_119;
      }

      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      sub_1D1741C70(v104);
      sub_1D1741C70(v24);
      LODWORD(v129) = sub_1D1E684FC();
      sub_1D1757B18(v24);
      sub_1D1757B18(v104);

      sub_1D1757B18(v126);
      v22 = v134;
      sub_1D1757B18(v24);

      sub_1D1757B18(v14);
      sub_1D1757B18(v104);
      v24 = v124;
      a2 = v125;
      a1 = v111;
      v14 = v110;
      v26 = v109;
      v30 = v108;
      v29 = v117;
      result = v112;
      if ((v129 & 1) == 0)
      {
        return result;
      }
    }
  }

  v64 = *(v9 + 80);

  sub_1D1741C70(v62);
  result = sub_1D1741C70(v63);
  v65 = v138;
  v66 = v122;
  v67 = v135;
  if (v138 == v60)
  {
    goto LABEL_47;
  }

  v68 = 0;
  v69 = (v64 + 32) & ~v64;
  v116 = v138 + v69;
  v115 = v60 + v69;
  while (v68 < *(v65 + 16))
  {
    v70 = *(v9 + 72) * v68;
    result = sub_1D186155C(v116 + v70, v66, type metadata accessor for StaticAlarm);
    if (v68 >= *(v60 + 16))
    {
      goto LABEL_136;
    }

    sub_1D186155C(v115 + v70, v67, type metadata accessor for StaticAlarm);
    if (*v66 != *v67 || *(v66 + 8) != *(v67 + 8))
    {
      goto LABEL_114;
    }

    v71 = *(v66 + 24);
    v72 = *(v67 + 24);
    if (v71)
    {
      if (!v72 || (*(v66 + 16) != *(v67 + 16) || v71 != v72) && (sub_1D1E6904C() & 1) == 0)
      {
        goto LABEL_114;
      }
    }

    else if (v72)
    {
      goto LABEL_114;
    }

    v73 = *(v66 + 32);
    v74 = *(v67 + 32);
    v75 = *(v73 + 16);
    if (v75 != *(v74 + 16))
    {
      goto LABEL_114;
    }

    if (v75 && v73 != v74)
    {
      v76 = (v73 + 32);
      v77 = (v74 + 32);
      while (*v76 == *v77)
      {
        ++v76;
        ++v77;
        if (!--v75)
        {
          goto LABEL_40;
        }
      }

LABEL_114:
      sub_1D18615C4(v67, type metadata accessor for StaticAlarm);
      sub_1D18615C4(v66, type metadata accessor for StaticAlarm);
      goto LABEL_116;
    }

LABEL_40:
    if (*(v66 + 40) != *(v67 + 40) || *(v66 + 44) != *(v67 + 44) || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      goto LABEL_114;
    }

    v78 = v9;
    v79 = v66;
    v80 = v78;
    v81 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    sub_1D18615C4(v67, type metadata accessor for StaticAlarm);
    result = sub_1D18615C4(v79, type metadata accessor for StaticAlarm);
    if ((v81 & 1) == 0)
    {
LABEL_126:

      sub_1D1757B18(v126);
      sub_1D1757B18(v129);

      goto LABEL_117;
    }

    ++v68;
    v63 = v129;
    v65 = v138;
    v9 = v80;
    v66 = v122;
    v67 = v135;
    if (v68 == v59)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
  return result;
}

uint64_t sub_1D1848AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticAccessory(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v55 - v8;
  v70 = sub_1D1E66A7C();
  v62 = *(v70 - 8);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454A0, &unk_1D1E79A30);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v16;
  v60 = v7;
  v18 = 0;
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v57 = v62 + 16;
  v65 = &v55 - v15;
  v66 = (v62 + 32);
  v59 = (v62 + 8);
  v26 = &qword_1D1E77280;
  v55 = v20;
  v56 = v25;
  while (v24)
  {
    v67 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
    v33 = v58;
    v35 = v61;
    v34 = v62;
    v36 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v27, v70);
    v37 = v68;
    sub_1D186155C(*(v33 + 56) + *(v69 + 72) * v27, v68, type metadata accessor for StaticAccessory);
    v38 = &qword_1D1E77280;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v30 = v64;
    v41(v64, v35, v36);
    sub_1D18614F4(v37, v30 + v40, type metadata accessor for StaticAccessory);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
    v17 = v65;
    v25 = v56;
LABEL_17:
    sub_1D1741A90(v30, v17, &qword_1EC6454A0, &unk_1D1E79A30);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, v38);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v26 = v38;
    v45 = *(v42 + 48);
    v46 = v63;
    v47 = v70;
    (*v66)(v63, v17, v70);
    v48 = &v17[v45];
    v49 = v60;
    sub_1D18614F4(v48, v60, type metadata accessor for StaticAccessory);
    v50 = sub_1D1742188();
    LOBYTE(v45) = v51;
    (*v59)(v46, v47);
    if ((v45 & 1) == 0)
    {
      sub_1D18615C4(v49, type metadata accessor for StaticAccessory);
      return 0;
    }

    v52 = v68;
    sub_1D186155C(*(a2 + 56) + *(v69 + 72) * v50, v68, type metadata accessor for StaticAccessory);
    v53 = static StaticAccessory.== infix(_:_:)(v52, v49);
    sub_1D18615C4(v52, type metadata accessor for StaticAccessory);
    result = sub_1D18615C4(v49, type metadata accessor for StaticAccessory);
    v17 = v65;
    v24 = v67;
    if ((v53 & 1) == 0)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v30 = v64;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      v38 = v26;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, v26);
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
      v67 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v32 = *(v55 + 8 * v31);
    ++v18;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18490AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticService(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v55 - v8;
  v70 = sub_1D1E66A7C();
  v62 = *(v70 - 8);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v16;
  v60 = v7;
  v18 = 0;
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v57 = v62 + 16;
  v65 = &v55 - v15;
  v66 = (v62 + 32);
  v59 = (v62 + 8);
  v26 = &unk_1D1E6F360;
  v55 = v20;
  v56 = v25;
  while (v24)
  {
    v67 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
    v33 = v58;
    v35 = v61;
    v34 = v62;
    v36 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v27, v70);
    v37 = v68;
    sub_1D186155C(*(v33 + 56) + *(v69 + 72) * v27, v68, type metadata accessor for StaticService);
    v38 = &unk_1D1E6F360;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v30 = v64;
    v41(v64, v35, v36);
    sub_1D18614F4(v37, v30 + v40, type metadata accessor for StaticService);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
    v17 = v65;
    v25 = v56;
LABEL_17:
    sub_1D1741A90(v30, v17, &qword_1EC643C68, &unk_1D1E764C0);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, v38);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v26 = v38;
    v45 = *(v42 + 48);
    v46 = v63;
    v47 = v70;
    (*v66)(v63, v17, v70);
    v48 = &v17[v45];
    v49 = v60;
    sub_1D18614F4(v48, v60, type metadata accessor for StaticService);
    v50 = sub_1D1742188();
    LOBYTE(v45) = v51;
    (*v59)(v46, v47);
    if ((v45 & 1) == 0)
    {
      sub_1D18615C4(v49, type metadata accessor for StaticService);
      return 0;
    }

    v52 = v68;
    sub_1D186155C(*(a2 + 56) + *(v69 + 72) * v50, v68, type metadata accessor for StaticService);
    v53 = static StaticService.== infix(_:_:)(v52, v49);
    sub_1D18615C4(v52, type metadata accessor for StaticService);
    result = sub_1D18615C4(v49, type metadata accessor for StaticService);
    v17 = v65;
    v24 = v67;
    if ((v53 & 1) == 0)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v30 = v64;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      v38 = v26;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, v26);
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
      v67 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v32 = *(v55 + 8 * v31);
    ++v18;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1849684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticServiceGroup(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v55 - v8;
  v70 = sub_1D1E66A7C();
  v62 = *(v70 - 8);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645450, &qword_1D1E799E0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v16;
  v60 = v7;
  v18 = 0;
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v57 = v62 + 16;
  v65 = &v55 - v15;
  v66 = (v62 + 32);
  v59 = (v62 + 8);
  v26 = &qword_1D1E799E8;
  v55 = v20;
  v56 = v25;
  while (v24)
  {
    v67 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
    v33 = v58;
    v35 = v61;
    v34 = v62;
    v36 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v27, v70);
    v37 = v68;
    sub_1D186155C(*(v33 + 56) + *(v69 + 72) * v27, v68, type metadata accessor for StaticServiceGroup);
    v38 = &qword_1D1E799E8;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v30 = v64;
    v41(v64, v35, v36);
    sub_1D18614F4(v37, v30 + v40, type metadata accessor for StaticServiceGroup);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
    v17 = v65;
    v25 = v56;
LABEL_17:
    sub_1D1741A90(v30, v17, &qword_1EC645450, &qword_1D1E799E0);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, v38);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v26 = v38;
    v45 = *(v42 + 48);
    v46 = v63;
    v47 = v70;
    (*v66)(v63, v17, v70);
    v48 = &v17[v45];
    v49 = v60;
    sub_1D18614F4(v48, v60, type metadata accessor for StaticServiceGroup);
    v50 = sub_1D1742188();
    LOBYTE(v45) = v51;
    (*v59)(v46, v47);
    if ((v45 & 1) == 0)
    {
      sub_1D18615C4(v49, type metadata accessor for StaticServiceGroup);
      return 0;
    }

    v52 = v68;
    sub_1D186155C(*(a2 + 56) + *(v69 + 72) * v50, v68, type metadata accessor for StaticServiceGroup);
    v53 = static StaticServiceGroup.== infix(_:_:)(v52, v49);
    sub_1D18615C4(v52, type metadata accessor for StaticServiceGroup);
    result = sub_1D18615C4(v49, type metadata accessor for StaticServiceGroup);
    v17 = v65;
    v24 = v67;
    if ((v53 & 1) == 0)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v30 = v64;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      v38 = v26;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, v26);
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
      v67 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v32 = *(v55 + 8 * v31);
    ++v18;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1849C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMatterDevice(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v55 - v8;
  v70 = sub_1D1E66A7C();
  v62 = *(v70 - 8);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B8, &unk_1D1E79A50);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v16;
  v60 = v7;
  v18 = 0;
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v57 = v62 + 16;
  v65 = &v55 - v15;
  v66 = (v62 + 32);
  v59 = (v62 + 8);
  v26 = &qword_1D1E96BE0;
  v55 = v20;
  v56 = v25;
  while (v24)
  {
    v67 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
    v33 = v58;
    v35 = v61;
    v34 = v62;
    v36 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v27, v70);
    v37 = v68;
    sub_1D186155C(*(v33 + 56) + *(v69 + 72) * v27, v68, type metadata accessor for StaticMatterDevice);
    v38 = &qword_1D1E96BE0;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, &qword_1D1E96BE0);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v30 = v64;
    v41(v64, v35, v36);
    sub_1D18614F4(v37, v30 + v40, type metadata accessor for StaticMatterDevice);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
    v17 = v65;
    v25 = v56;
LABEL_17:
    sub_1D1741A90(v30, v17, &qword_1EC6454B8, &unk_1D1E79A50);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, v38);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v26 = v38;
    v45 = *(v42 + 48);
    v46 = v63;
    v47 = v70;
    (*v66)(v63, v17, v70);
    v48 = &v17[v45];
    v49 = v60;
    sub_1D18614F4(v48, v60, type metadata accessor for StaticMatterDevice);
    v50 = sub_1D1742188();
    LOBYTE(v45) = v51;
    (*v59)(v46, v47);
    if ((v45 & 1) == 0)
    {
      sub_1D18615C4(v49, type metadata accessor for StaticMatterDevice);
      return 0;
    }

    v52 = v68;
    sub_1D186155C(*(a2 + 56) + *(v69 + 72) * v50, v68, type metadata accessor for StaticMatterDevice);
    v53 = _s13HomeDataModel18StaticMatterDeviceV2eeoiySbAC_ACtFZ_0(v52, v49);
    sub_1D18615C4(v52, type metadata accessor for StaticMatterDevice);
    result = sub_1D18615C4(v49, type metadata accessor for StaticMatterDevice);
    v17 = v65;
    v24 = v67;
    if ((v53 & 1) == 0)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v30 = v64;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      v38 = v26;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, v26);
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
      v67 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v32 = *(v55 + 8 * v31);
    ++v18;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184A234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMatterDevice(0);
  v58 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645420, &unk_1D1E799B0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v51 - v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = a2;
  v54 = v7;
  v16 = 0;
  v52 = a1;
  v17 = *(a1 + 64);
  v51 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v22 = &qword_1EC645428;
  v23 = &qword_1D1E96C40;
  while (v20)
  {
    v56 = (v20 - 1) & v20;
    v24 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v30 = *(*(v52 + 48) + 8 * v24);
    v31 = v57;
    sub_1D186155C(*(v52 + 56) + *(v58 + 72) * v24, v57, type metadata accessor for StaticMatterDevice);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    v33 = *(v32 + 48);
    *v12 = v30;
    sub_1D18614F4(v31, v12 + v33, type metadata accessor for StaticMatterDevice);
    (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
    v27 = v54;
LABEL_17:
    sub_1D1741A90(v12, v15, &qword_1EC645420, &unk_1D1E799B0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    v35 = (*(*(v34 - 8) + 48))(v15, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return 1;
    }

    v37 = *(v34 + 48);
    v38 = *v15;
    sub_1D18614F4(v15 + v37, v27, type metadata accessor for StaticMatterDevice);
    v39 = v53;
    v40 = sub_1D17420B0(v38);
    if ((v41 & 1) == 0)
    {
      sub_1D18615C4(v27, type metadata accessor for StaticMatterDevice);
      return 0;
    }

    v42 = v36;
    v43 = *(v39 + 56) + *(v58 + 72) * v40;
    v44 = v23;
    v45 = v21;
    v46 = v22;
    v47 = v15;
    v48 = v57;
    sub_1D186155C(v43, v57, type metadata accessor for StaticMatterDevice);
    v55 = static StaticMatterDevice.== infix(_:_:)(v48, v27);
    v49 = v48;
    v15 = v47;
    v22 = v46;
    v21 = v45;
    v23 = v44;
    sub_1D18615C4(v49, type metadata accessor for StaticMatterDevice);
    result = sub_1D18615C4(v27, type metadata accessor for StaticMatterDevice);
    v20 = v56;
    if ((v55 & 1) == 0)
    {
      return v42;
    }
  }

  if (v21 <= v16 + 1)
  {
    v25 = v16 + 1;
  }

  else
  {
    v25 = v21;
  }

  v26 = v25 - 1;
  v27 = v54;
  while (1)
  {
    v28 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v28 >= v21)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
      (*(*(v50 - 8) + 56))(v12, 1, 1, v50);
      v56 = 0;
      v16 = v26;
      goto LABEL_17;
    }

    v29 = *(v51 + 8 * v28);
    ++v16;
    if (v29)
    {
      v56 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v16 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184A6D8(uint64_t a1, uint64_t a2)
{
  v62 = type metadata accessor for EndpointPath(0);
  v60 = *(v62 - 8);
  v4 = MEMORY[0x1EEE9AC00](v62);
  v63 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v64 = v48 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v53 = v48 - v8;
  v61 = sub_1D1E66A7C();
  v55 = *(v61 - 8);
  v9 = MEMORY[0x1EEE9AC00](v61);
  v56 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645590, &qword_1D1E79B38);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v57 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(v57 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v54 = v48 - v17;
  v18 = 0;
  v19 = *(v57 + 64);
  v48[0] = v57 + 64;
  v20 = 1 << *(v57 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v48[1] = v55 + 16;
  v49 = v15;
  v59 = (v55 + 32);
  v50 = v23;
  v51 = (v55 + 8);
  while (v22)
  {
    v58 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_16:
    v30 = v57;
    v31 = v55;
    (*(v55 + 16))(v52, *(v57 + 48) + *(v55 + 72) * v24, v61);
    v32 = v53;
    sub_1D186155C(*(v30 + 56) + *(v60 + 72) * v24, v53, type metadata accessor for EndpointPath);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645598, &qword_1D1E79B40);
    v34 = *(v33 + 48);
    v15 = v49;
    (*(v31 + 32))();
    sub_1D18614F4(v32, &v15[v34], type metadata accessor for EndpointPath);
    (*(*(v33 - 8) + 56))(v15, 0, 1, v33);
    v27 = v54;
LABEL_17:
    sub_1D1741A90(v15, v27, &qword_1EC645590, &qword_1D1E79B38);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645598, &qword_1D1E79B40);
    v36 = (*(*(v35 - 8) + 48))(v27, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v35 + 48);
    v39 = v56;
    v40 = v61;
    (*v59)(v56, v27, v61);
    sub_1D18614F4(v27 + v38, v64, type metadata accessor for EndpointPath);
    v41 = sub_1D1742188();
    v43 = v42;
    (*v51)(v39, v40);
    if ((v43 & 1) == 0)
    {
      goto LABEL_26;
    }

    sub_1D186155C(*(a2 + 56) + *(v60 + 72) * v41, v63, type metadata accessor for EndpointPath);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(v63 + *(v62 + 20)) != *(v64 + *(v62 + 20)))
    {
      sub_1D18615C4(v63, type metadata accessor for EndpointPath);
LABEL_26:
      sub_1D18615C4(v64, type metadata accessor for EndpointPath);
      return 0;
    }

    v44 = v62;
    v45 = *(v63 + *(v62 + 24));
    sub_1D18615C4(v63, type metadata accessor for EndpointPath);
    v46 = *(v64 + *(v44 + 24));
    result = sub_1D18615C4(v64, type metadata accessor for EndpointPath);
    v23 = v50;
    v22 = v58;
    if (v45 != v46)
    {
      return v37;
    }
  }

  if (v23 <= v18 + 1)
  {
    v25 = v18 + 1;
  }

  else
  {
    v25 = v23;
  }

  v26 = v25 - 1;
  v27 = v54;
  while (1)
  {
    v28 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645598, &qword_1D1E79B40);
      (*(*(v47 - 8) + 56))(v15, 1, 1, v47);
      v58 = 0;
      v18 = v26;
      goto LABEL_17;
    }

    v29 = *(v48[0] + 8 * v28);
    ++v18;
    if (v29)
    {
      v58 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v18 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1D184AD34(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return;
  }

  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v11 = (v8 - 1) & v8;
LABEL_13:
    v14 = v10 | (v4 << 6);
    v15 = *(*(v3 + 48) + 8 * v14);
    v16 = *(v3 + 56) + 16 * v14;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = v15;
    sub_1D1741AF8(v17, v18);
    if (!v19)
    {
      return;
    }

    v41 = v11;
    v20 = v17;
    v21 = sub_1D171D228(v19);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_68;
    }

    v24 = *(a2 + 56) + 16 * v21;
    v25 = *v24;
    v26 = *(v24 + 8);
    if (v26 <= 1)
    {
      v30 = *v24;
      if (*(v24 + 8))
      {
        sub_1D1757AE8(v30, 1u);
        if (v18 != 1)
        {
          goto LABEL_68;
        }

        v32 = v20;
        v33 = 1;
LABEL_36:
        sub_1D1757AE8(v32, v33);
        v35 = v25 == v20;
        v3 = a1;
        v8 = v41;
        if (!v35)
        {
          return;
        }
      }

      else
      {
        sub_1D1757AE8(v30, 0);
        if (v18)
        {
          goto LABEL_68;
        }

        sub_1D1757AE8(v20, 0);
        v31 = v25 ^ v20;
        v3 = a1;
        v8 = v41;
        if (v31)
        {
          return;
        }
      }
    }

    else
    {
      if (v26 == 2)
      {
        sub_1D1757AE8(*v24, 2u);
        if (v18 != 2)
        {
          goto LABEL_68;
        }

        v32 = v20;
        v33 = 2;
        goto LABEL_36;
      }

      if (v26 == 3)
      {
        if (v18 != 3)
        {
          goto LABEL_64;
        }

        v27 = *(v25 + 16);
        if (v27 != *(v20 + 16))
        {

          LOBYTE(v18) = 3;
          goto LABEL_67;
        }

        if (v27)
        {
          if (v25 != v20)
          {
            v36 = (v25 + 32);
            v37 = (v20 + 32);
            while (*v36 == *v37)
            {
              ++v36;
              ++v37;
              if (!--v27)
              {
                sub_1D1741AF8(v25, 3u);
                v28 = v25;
                v29 = 3;
                goto LABEL_41;
              }
            }

            LOBYTE(v18) = 3;
            sub_1D1741AF8(v25, 3u);
            goto LABEL_67;
          }

          v28 = v20;
          v29 = 3;
        }

        else
        {

          v29 = 3;
        }
      }

      else
      {
        if (v18 != 4)
        {
LABEL_64:

LABEL_67:
          sub_1D1757AE8(v25, v26);
LABEL_68:
          sub_1D1757AE8(v20, v18);
          return;
        }

        v34 = *(v25 + 16);
        if (v34 != *(v20 + 16))
        {

          LOBYTE(v18) = 4;
          goto LABEL_67;
        }

        if (v34)
        {
          if (v25 != v20)
          {
            v38 = (v20 + 52);
            v39 = (v25 + 52);
            while (*(v39 - 5) == *(v38 - 5) && *(v39 - 16) == *(v38 - 16))
            {
              if (*(v39 - 8))
              {
                if ((*(v38 - 8) & 1) == 0)
                {
                  break;
                }
              }

              else if ((*(v38 - 8) & 1) != 0 || *(v39 - 3) != *(v38 - 3))
              {
                break;
              }

              if (*v39)
              {
                if ((*v38 & 1) == 0)
                {
                  break;
                }
              }

              else if ((*v38 & 1) != 0 || *(v39 - 1) != *(v38 - 1))
              {
                break;
              }

              v38 += 24;
              v39 += 24;
              if (!--v34)
              {
                sub_1D1741AF8(v25, 4u);
                v28 = v25;
                goto LABEL_40;
              }
            }

            LOBYTE(v18) = 4;
            sub_1D1741AF8(v25, 4u);
            goto LABEL_67;
          }

          v28 = v20;
        }

        else
        {
        }

LABEL_40:
        v29 = 4;
      }

LABEL_41:
      sub_1D1757AE8(v28, v29);
      sub_1D1757AE8(v20, v26);
      v3 = a1;
      v8 = v41;
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v10 = __clz(__rbit64(v13));
      v11 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
  __break(1u);
  __break(1u);
}

uint64_t sub_1D184B120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticEndpoint(0);
  v58 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455A0, &unk_1D1E79B48);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v51 - v14);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = a2;
  v54 = v7;
  v16 = 0;
  v52 = a1;
  v17 = *(a1 + 64);
  v51 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v22 = &qword_1EC6448D0;
  v23 = &qword_1D1E76600;
  while (v20)
  {
    v56 = (v20 - 1) & v20;
    v24 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v30 = *(*(v52 + 48) + 2 * v24);
    v31 = v57;
    sub_1D186155C(*(v52 + 56) + *(v58 + 72) * v24, v57, type metadata accessor for StaticEndpoint);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    v33 = *(v32 + 48);
    *v12 = v30;
    sub_1D18614F4(v31, v12 + v33, type metadata accessor for StaticEndpoint);
    (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
    v27 = v54;
LABEL_17:
    sub_1D1741A90(v12, v15, &qword_1EC6455A0, &unk_1D1E79B48);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    v35 = (*(*(v34 - 8) + 48))(v15, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return 1;
    }

    v37 = *(v34 + 48);
    v38 = *v15;
    sub_1D18614F4(v15 + v37, v27, type metadata accessor for StaticEndpoint);
    v39 = v53;
    v40 = sub_1D171D15C(v38);
    if ((v41 & 1) == 0)
    {
      sub_1D18615C4(v27, type metadata accessor for StaticEndpoint);
      return 0;
    }

    v42 = v36;
    v43 = *(v39 + 56) + *(v58 + 72) * v40;
    v44 = v23;
    v45 = v21;
    v46 = v22;
    v47 = v15;
    v48 = v57;
    sub_1D186155C(v43, v57, type metadata accessor for StaticEndpoint);
    v55 = static StaticEndpoint.== infix(_:_:)(v48, v27);
    v49 = v48;
    v15 = v47;
    v22 = v46;
    v21 = v45;
    v23 = v44;
    sub_1D18615C4(v49, type metadata accessor for StaticEndpoint);
    result = sub_1D18615C4(v27, type metadata accessor for StaticEndpoint);
    v20 = v56;
    if ((v55 & 1) == 0)
    {
      return v42;
    }
  }

  if (v21 <= v16 + 1)
  {
    v25 = v16 + 1;
  }

  else
  {
    v25 = v21;
  }

  v26 = v25 - 1;
  v27 = v54;
  while (1)
  {
    v28 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v28 >= v21)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
      (*(*(v50 - 8) + 56))(v12, 1, 1, v50);
      v56 = 0;
      v16 = v26;
      goto LABEL_17;
    }

    v29 = *(v51 + 8 * v28);
    ++v16;
    if (v29)
    {
      v56 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v16 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184B5C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionService(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v55 - v8;
  v70 = sub_1D1E66A7C();
  v62 = *(v70 - 8);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645530, &qword_1D1E79AC8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v16;
  v60 = v7;
  v18 = 0;
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v57 = v62 + 16;
  v65 = &v55 - v15;
  v66 = (v62 + 32);
  v59 = (v62 + 8);
  v26 = &unk_1D1E79AD0;
  v55 = v20;
  v56 = v25;
  while (v24)
  {
    v67 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
    v33 = v58;
    v35 = v61;
    v34 = v62;
    v36 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v27, v70);
    v37 = v68;
    sub_1D186155C(*(v33 + 56) + *(v69 + 72) * v27, v68, type metadata accessor for ActionService);
    v38 = &unk_1D1E79AD0;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645538, &unk_1D1E79AD0);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v30 = v64;
    v41(v64, v35, v36);
    sub_1D18614F4(v37, v30 + v40, type metadata accessor for ActionService);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
    v17 = v65;
    v25 = v56;
LABEL_17:
    sub_1D1741A90(v30, v17, &qword_1EC645530, &qword_1D1E79AC8);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645538, v38);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v26 = v38;
    v45 = *(v42 + 48);
    v46 = v63;
    v47 = v70;
    (*v66)(v63, v17, v70);
    v48 = &v17[v45];
    v49 = v60;
    sub_1D18614F4(v48, v60, type metadata accessor for ActionService);
    v50 = sub_1D1742188();
    LOBYTE(v45) = v51;
    (*v59)(v46, v47);
    if ((v45 & 1) == 0)
    {
      sub_1D18615C4(v49, type metadata accessor for ActionService);
      return 0;
    }

    v52 = v68;
    sub_1D186155C(*(a2 + 56) + *(v69 + 72) * v50, v68, type metadata accessor for ActionService);
    v53 = static ActionService.== infix(_:_:)(v52, v49);
    sub_1D18615C4(v52, type metadata accessor for ActionService);
    result = sub_1D18615C4(v49, type metadata accessor for ActionService);
    v17 = v65;
    v24 = v67;
    if ((v53 & 1) == 0)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v30 = v64;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      v38 = v26;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645538, v26);
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
      v67 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v32 = *(v55 + 8 * v31);
    ++v18;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184BB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionEndpoint(0);
  v63 = *(v4 - 1);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v56 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B0, &qword_1D1E79B60);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v62 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v14);
  v61 = (&v56 - v17);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v59 = v12;
  v60 = a2;
  v18 = 0;
  v19 = *(a1 + 64);
  v57 = a1 + 64;
  v58 = a1;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v56 = (v20 + 63) >> 6;
  while (v22)
  {
    v23 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v24 = v23 | (v18 << 6);
LABEL_16:
    v29 = *(a1 + 56);
    v30 = *(*(a1 + 48) + 2 * v24);
    v31 = v59;
    sub_1D186155C(v29 + *(v63 + 72) * v24, v59, type metadata accessor for ActionEndpoint);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B8, &qword_1D1E79B68);
    v33 = *(v32 + 48);
    v34 = v62;
    *v62 = v30;
    v35 = v34;
    sub_1D18614F4(v31, v34 + v33, type metadata accessor for ActionEndpoint);
    (*(*(v32 - 8) + 56))(v35, 0, 1, v32);
LABEL_17:
    v36 = v35;
    v37 = v61;
    sub_1D1741A90(v36, v61, &qword_1EC6455B0, &qword_1D1E79B60);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B8, &qword_1D1E79B68);
    v39 = (*(*(v38 - 8) + 48))(v37, 1, v38);
    v40 = v39 == 1;
    if (v39 == 1)
    {
      return v40;
    }

    v41 = *(v38 + 48);
    v42 = *v37;
    sub_1D18614F4(v37 + v41, v10, type metadata accessor for ActionEndpoint);
    v43 = v60;
    v44 = sub_1D171D15C(v42);
    if ((v45 & 1) == 0)
    {
      goto LABEL_38;
    }

    sub_1D186155C(*(v43 + 56) + *(v63 + 72) * v44, v7, type metadata accessor for ActionEndpoint);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D17A6E98(*&v7[v4[5]], *&v10[v4[5]]) & 1) == 0 || ((v46 = v4[6], v47 = *&v7[v46], v48 = *&v7[v46 + 8], v49 = &v10[v46], v47 != *v49) || v48 != *(v49 + 1)) && (sub_1D1E6904C() & 1) == 0 || v7[v4[7]] != v10[v4[7]] || (v50 = v4[8], v51 = &v7[v50], v52 = &v10[v50], (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0) || (v53 = type metadata accessor for EndpointPath(0), *&v51[*(v53 + 20)] != *&v52[*(v53 + 20)]) || *&v51[*(v53 + 24)] != *&v52[*(v53 + 24)] || (static MatterTileMetadata.== infix(_:_:)(&v7[v4[9]], &v10[v4[9]]) & 1) == 0 || *&v7[v4[10]] != *&v10[v4[10]] || (sub_1D17A7F14(*&v7[v4[11]], *&v10[v4[11]]) & 1) == 0 || (sub_1D184C184(*&v7[v4[12]], *&v10[v4[12]]) & 1) == 0 || (static StaticClusterGroups.== infix(_:_:)(&v7[v4[13]], &v10[v4[13]]) & 1) == 0)
    {
      sub_1D18615C4(v7, type metadata accessor for ActionEndpoint);
LABEL_38:
      sub_1D18615C4(v10, type metadata accessor for ActionEndpoint);
      return 0;
    }

    v54 = sub_1D17A8098(*&v7[v4[14]], *&v10[v4[14]]);
    sub_1D18615C4(v7, type metadata accessor for ActionEndpoint);
    result = sub_1D18615C4(v10, type metadata accessor for ActionEndpoint);
    a1 = v58;
    if ((v54 & 1) == 0)
    {
      return v40;
    }
  }

  if (v56 <= v18 + 1)
  {
    v25 = v18 + 1;
  }

  else
  {
    v25 = v56;
  }

  v26 = v25 - 1;
  while (1)
  {
    v27 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v27 >= v56)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455B8, &qword_1D1E79B68);
      v35 = v62;
      (*(*(v55 - 8) + 56))(v62, 1, 1, v55);
      v22 = 0;
      v18 = v26;
      goto LABEL_17;
    }

    v28 = *(v57 + 8 * v27);
    ++v18;
    if (v28)
    {
      v22 = (v28 - 1) & v28;
      v24 = __clz(__rbit64(v28)) | (v27 << 6);
      v18 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184C184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCluster(0);
  v58 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455C0, &qword_1D1E79B70);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v51 - v14;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = a2;
  v54 = v7;
  v16 = 0;
  v52 = a1;
  v17 = *(a1 + 64);
  v51 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v22 = &qword_1EC6455C8;
  v23 = &qword_1D1E79B78;
  while (v20)
  {
    v56 = (v20 - 1) & v20;
    v24 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v30 = *(*(v52 + 48) + v24);
    v31 = v57;
    sub_1D186155C(*(v52 + 56) + *(v58 + 72) * v24, v57, type metadata accessor for StaticCluster);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    v33 = *(v32 + 48);
    *v12 = v30;
    sub_1D18614F4(v31, &v12[v33], type metadata accessor for StaticCluster);
    (*(*(v32 - 8) + 56))(v12, 0, 1, v32);
    v27 = v54;
LABEL_17:
    sub_1D1741A90(v12, v15, &qword_1EC6455C0, &qword_1D1E79B70);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    v35 = (*(*(v34 - 8) + 48))(v15, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return 1;
    }

    v37 = *(v34 + 48);
    v38 = *v15;
    sub_1D18614F4(&v15[v37], v27, type metadata accessor for StaticCluster);
    v39 = v53;
    v40 = sub_1D171D278(v38);
    if ((v41 & 1) == 0)
    {
      sub_1D18615C4(v27, type metadata accessor for StaticCluster);
      return 0;
    }

    v42 = v36;
    v43 = *(v39 + 56) + *(v58 + 72) * v40;
    v44 = v23;
    v45 = v21;
    v46 = v22;
    v47 = v15;
    v48 = v57;
    sub_1D186155C(v43, v57, type metadata accessor for StaticCluster);
    v55 = _s13HomeDataModel13StaticClusterO2eeoiySbAC_ACtFZ_0(v48, v27);
    v49 = v48;
    v15 = v47;
    v22 = v46;
    v21 = v45;
    v23 = v44;
    sub_1D18615C4(v49, type metadata accessor for StaticCluster);
    result = sub_1D18615C4(v27, type metadata accessor for StaticCluster);
    v20 = v56;
    if ((v55 & 1) == 0)
    {
      return v42;
    }
  }

  if (v21 <= v16 + 1)
  {
    v25 = v16 + 1;
  }

  else
  {
    v25 = v21;
  }

  v26 = v25 - 1;
  v27 = v54;
  while (1)
  {
    v28 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v28 >= v21)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
      (*(*(v50 - 8) + 56))(v12, 1, 1, v50);
      v56 = 0;
      v16 = v26;
      goto LABEL_17;
    }

    v29 = *(v51 + 8 * v28);
    ++v16;
    if (v29)
    {
      v56 = (v29 - 1) & v29;
      v24 = __clz(__rbit64(v29)) | (v28 << 6);
      v16 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184C628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v72 - v5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v84);
  v94 = &v72 - v7;
  v8 = type metadata accessor for StaticMediaSystemComponent(0);
  v93 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v72 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v72 - v15;
  v16 = sub_1D1E66A7C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v87 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v72 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645550, &qword_1D1E79AF0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v88 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v22);
  v26 = &v72 - v25;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v73 = v6;
  v27 = 0;
  v28 = *(a1 + 64);
  v72 = a1 + 64;
  v29 = 1 << *(a1 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & v28;
  v32 = (v29 + 63) >> 6;
  v92 = (v17 + 32);
  v85 = v11;
  v86 = (v17 + 8);
  v77 = v17 + 16;
  v78 = (v17 + 48);
  v90 = &v72 - v25;
  v74 = v32;
  v75 = a1;
  v79 = v8;
  v80 = v16;
  v76 = v17;
  v81 = a2;
  while (v31)
  {
    v89 = (v31 - 1) & v31;
    v33 = __clz(__rbit64(v31)) | (v27 << 6);
LABEL_17:
    v38 = v91;
    (*(v17 + 16))(v91, *(a1 + 48) + *(v17 + 72) * v33, v16);
    v39 = *(a1 + 56) + *(v93 + 72) * v33;
    v40 = v17;
    v41 = v83;
    sub_1D186155C(v39, v83, type metadata accessor for StaticMediaSystemComponent);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645558, &unk_1D1E79AF8);
    v43 = *(v42 + 48);
    v44 = *(v40 + 32);
    v45 = v88;
    v44(v88, v38, v16);
    sub_1D18614F4(v41, v45 + v43, type metadata accessor for StaticMediaSystemComponent);
    (*(*(v42 - 8) + 56))(v45, 0, 1, v42);
    v26 = v90;
LABEL_18:
    sub_1D1741A90(v45, v26, &qword_1EC645550, &qword_1D1E79AF0);
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645558, &unk_1D1E79AF8);
    v47 = 1;
    if ((*(*(v46 - 8) + 48))(v26, 1, v46) == 1)
    {
      return v47;
    }

    v48 = v80;
    v49 = *(v46 + 48);
    v50 = *v92;
    v51 = v87;
    (*v92)(v87, v26, v80);
    sub_1D18614F4(&v26[v49], v14, type metadata accessor for StaticMediaSystemComponent);
    v52 = v81;
    v53 = sub_1D1742188();
    LOBYTE(v49) = v54;
    v55 = *v86;
    v56 = v48;
    (*v86)(v51, v48);
    if ((v49 & 1) == 0)
    {
      goto LABEL_35;
    }

    v57 = *(v52 + 56) + *(v93 + 72) * v53;
    v58 = v85;
    sub_1D186155C(v57, v85, type metadata accessor for StaticMediaSystemComponent);
    v59 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v60 = v79;
    if ((v59 & 1) == 0 || (static StaticMediaProfile.== infix(_:_:)(v58 + v79[5], &v14[v79[5]]) & 1) == 0 || *(v58 + v60[6]) != *&v14[v60[6]] || (sub_1D17A6E98(*(v58 + v60[7]), *&v14[v60[7]]) & 1) == 0)
    {
      goto LABEL_34;
    }

    v82 = v55;
    v61 = v60[8];
    v62 = *(v84 + 48);
    v63 = v94;
    sub_1D17783E0(v58 + v61, v94);
    sub_1D17783E0(&v14[v61], v63 + v62);
    v64 = *v78;
    if ((*v78)(v63, 1, v48) == 1)
    {
      if (v64(v94 + v62, 1, v48) != 1)
      {
        goto LABEL_33;
      }

      sub_1D1741A30(v94, &qword_1EC642590, qword_1D1E71260);
      v17 = v76;
    }

    else
    {
      v65 = v94;
      v66 = v73;
      sub_1D17783E0(v94, v73);
      if (v64(v65 + v62, 1, v48) == 1)
      {
        v82(v66, v48);
        v58 = v85;
LABEL_33:
        sub_1D1741A30(v94, &qword_1EC642980, &unk_1D1E6E6E0);
LABEL_34:
        sub_1D18615C4(v58, type metadata accessor for StaticMediaSystemComponent);
LABEL_35:
        sub_1D18615C4(v14, type metadata accessor for StaticMediaSystemComponent);
        return 0;
      }

      v67 = v91;
      v50(v91, (v65 + v62), v48);
      sub_1D1861484(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v68 = sub_1D1E6775C();
      v69 = v82;
      v82(v67, v56);
      v69(v66, v56);
      sub_1D1741A30(v65, &qword_1EC642590, qword_1D1E71260);
      v58 = v85;
      v17 = v76;
      if ((v68 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    sub_1D18615C4(v58, type metadata accessor for StaticMediaSystemComponent);
    result = sub_1D18615C4(v14, type metadata accessor for StaticMediaSystemComponent);
    v32 = v74;
    a1 = v75;
    v16 = v56;
    v31 = v89;
    v26 = v90;
  }

  if (v32 <= v27 + 1)
  {
    v34 = v27 + 1;
  }

  else
  {
    v34 = v32;
  }

  v35 = v34 - 1;
  while (1)
  {
    v36 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v36 >= v32)
    {
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645558, &unk_1D1E79AF8);
      v71 = v88;
      (*(*(v70 - 8) + 56))(v88, 1, 1, v70);
      v89 = 0;
      v27 = v35;
      v45 = v71;
      goto LABEL_18;
    }

    v37 = *(v72 + 8 * v36);
    ++v27;
    if (v37)
    {
      v89 = (v37 - 1) & v37;
      v33 = __clz(__rbit64(v37)) | (v36 << 6);
      v27 = v36;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184CF18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticLightProfile(0);
  v74 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v59 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v68 = v59 - v11;
  v75 = sub_1D1E66A7C();
  v70 = *(v75 - 8);
  v12 = MEMORY[0x1EEE9AC00](v75);
  v69 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v67 = v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645570, &qword_1D1E79B18);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v72 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v16);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v66 = v59 - v19;
  v63 = v4;
  v20 = 0;
  v21 = *(a1 + 64);
  v59[0] = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v59[1] = v70 + 16;
  v60 = v10;
  v73 = (v70 + 32);
  v64 = (v70 + 8);
  v65 = a1;
  v61 = v25;
  v62 = v7;
  while (v24)
  {
    v71 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v20 << 6);
LABEL_18:
    v33 = v70;
    v34 = v67;
    v35 = v75;
    (*(v70 + 16))(v67, *(a1 + 48) + *(v70 + 72) * v27, v75);
    v36 = *(a1 + 56) + *(v74 + 72) * v27;
    v37 = v68;
    sub_1D186155C(v36, v68, type metadata accessor for StaticLightProfile);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
    v39 = *(v38 + 48);
    v40 = *(v33 + 32);
    v41 = v72;
    v40(v72, v34, v35);
    v42 = &v41[v39];
    v30 = v41;
    sub_1D18614F4(v37, v42, type metadata accessor for StaticLightProfile);
    (*(*(v38 - 8) + 56))(v41, 0, 1, v38);
    v10 = v60;
LABEL_19:
    v43 = v66;
    sub_1D1741A90(v30, v66, &qword_1EC645570, &qword_1D1E79B18);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
    v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
    v46 = v45 == 1;
    if (v45 == 1)
    {
      return v46;
    }

    a1 = v65;
    v47 = *(v44 + 48);
    v48 = v69;
    v49 = v75;
    (*v73)(v69, v43, v75);
    sub_1D18614F4(v43 + v47, v10, type metadata accessor for StaticLightProfile);
    v50 = sub_1D1742188();
    v52 = v51;
    (*v64)(v48, v49);
    if ((v52 & 1) == 0)
    {
      goto LABEL_31;
    }

    v53 = v62;
    sub_1D186155C(*(a2 + 56) + *(v74 + 72) * v50, v62, type metadata accessor for StaticLightProfile);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(v53 + *(v63 + 20)) != v10[*(v63 + 20)] || (v54 = *(v63 + 24), v55 = &v10[v54], *(v53 + v54) != v10[v54]))
    {
LABEL_30:
      sub_1D18615C4(v53, type metadata accessor for StaticLightProfile);
LABEL_31:
      sub_1D18615C4(v10, type metadata accessor for StaticLightProfile);
      return 0;
    }

    v56 = *(v53 + v54 + 1);
    v57 = v55[1];
    if (v56 == 2)
    {
      if (v57 != 2)
      {
        goto LABEL_30;
      }
    }

    else if (v57 == 2 || ((v56 ^ v57) & 1) != 0)
    {
      goto LABEL_30;
    }

    v26 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    sub_1D18615C4(v53, type metadata accessor for StaticLightProfile);
    result = sub_1D18615C4(v10, type metadata accessor for StaticLightProfile);
    v25 = v61;
    v24 = v71;
    if ((v26 & 1) == 0)
    {
      return v46;
    }
  }

  if (v25 <= v20 + 1)
  {
    v28 = v20 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v30 = v72;
  while (1)
  {
    v31 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
      (*(*(v58 - 8) + 56))(v30, 1, 1, v58);
      v71 = 0;
      v20 = v29;
      goto LABEL_19;
    }

    v32 = *(v59[0] + 8 * v31);
    ++v20;
    if (v32)
    {
      v71 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v20 = v31;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184D5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticTelevisionProfile(0);
  v5 = *(v4 - 8);
  v75 = v4;
  v76 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v71 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v73 = &v59 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v59 - v10;
  v77 = sub_1D1E66A7C();
  v12 = *(v77 - 8);
  v13 = MEMORY[0x1EEE9AC00](v77);
  v72 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645560, &qword_1D1E79B08);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v18);
  v23 = &v59 - v22;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v24 = 0;
  v25 = *(a1 + 64);
  v59 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v25;
  v29 = (v26 + 63) >> 6;
  v64 = a1;
  v65 = v12 + 16;
  v74 = (v12 + 32);
  v67 = (v12 + 8);
  v68 = a2;
  v60 = v29;
  v61 = v11;
  v62 = v16;
  v63 = v12;
  v66 = v20;
  while (v28)
  {
    v70 = (v28 - 1) & v28;
    v33 = __clz(__rbit64(v28)) | (v24 << 6);
LABEL_17:
    v38 = v77;
    (*(v12 + 16))(v16, *(a1 + 48) + *(v12 + 72) * v33, v77);
    sub_1D186155C(*(a1 + 56) + *(v76 + 72) * v33, v11, type metadata accessor for StaticTelevisionProfile);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645568, &qword_1D1E79B10);
    v40 = *(v39 + 48);
    (*(v12 + 32))(v20, v16, v38);
    sub_1D18614F4(v11, &v20[v40], type metadata accessor for StaticTelevisionProfile);
    (*(*(v39 - 8) + 56))(v20, 0, 1, v39);
LABEL_18:
    sub_1D1741A90(v20, v23, &qword_1EC645560, &qword_1D1E79B08);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645568, &qword_1D1E79B10);
    v42 = (*(*(v41 - 8) + 48))(v23, 1, v41) == 1;
    result = v42;
    if (v42)
    {
      return result;
    }

    v69 = v42;
    v43 = *(v41 + 48);
    v44 = v72;
    v45 = v77;
    (*v74)(v72, v23, v77);
    v46 = v73;
    sub_1D18614F4(&v23[v43], v73, type metadata accessor for StaticTelevisionProfile);
    v47 = v68;
    v48 = sub_1D1742188();
    LOBYTE(v43) = v49;
    (*v67)(v44, v45);
    if ((v43 & 1) == 0)
    {
      goto LABEL_31;
    }

    v50 = v71;
    sub_1D186155C(*(v47 + 56) + *(v76 + 72) * v48, v71, type metadata accessor for StaticTelevisionProfile);
    v51 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v20 = v66;
    if ((v51 & 1) == 0)
    {
      goto LABEL_30;
    }

    v52 = *(v75 + 20);
    v53 = *(v50 + v52);
    v54 = *(v46 + v52);
    v55 = *(v53 + 16);
    if (v55 != *(v54 + 16))
    {
      goto LABEL_30;
    }

    if (v55 && v53 != v54)
    {
      v56 = (v53 + 32);
      v57 = (v54 + 32);
      while (*v56 == *v57)
      {
        ++v56;
        ++v57;
        if (!--v55)
        {
          goto LABEL_6;
        }
      }

LABEL_30:
      sub_1D18615C4(v50, type metadata accessor for StaticTelevisionProfile);
LABEL_31:
      sub_1D18615C4(v46, type metadata accessor for StaticTelevisionProfile);
      return 0;
    }

LABEL_6:
    v30 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v31 = v50;
    v32 = v30;
    sub_1D18615C4(v31, type metadata accessor for StaticTelevisionProfile);
    sub_1D18615C4(v46, type metadata accessor for StaticTelevisionProfile);
    v12 = v63;
    a1 = v64;
    v11 = v61;
    v16 = v62;
    v29 = v60;
    v28 = v70;
    result = v69;
    if ((v32 & 1) == 0)
    {
      return result;
    }
  }

  if (v29 <= v24 + 1)
  {
    v34 = v24 + 1;
  }

  else
  {
    v34 = v29;
  }

  v35 = v34 - 1;
  while (1)
  {
    v36 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v36 >= v29)
    {
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645568, &qword_1D1E79B10);
      (*(*(v58 - 8) + 56))(v20, 1, 1, v58);
      v70 = 0;
      v24 = v35;
      goto LABEL_18;
    }

    v37 = *(v59 + 8 * v36);
    ++v24;
    if (v37)
    {
      v70 = (v37 - 1) & v37;
      v33 = __clz(__rbit64(v37)) | (v36 << 6);
      v24 = v36;
      goto LABEL_17;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1D184DC4C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1D171D2F0(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1D184DD88(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_1D171D2F0(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455A8, &qword_1D1E79B58);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_1D1E684FC();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

BOOL sub_1D184DF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = 0;
  v46 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v47 = (v8 + 63) >> 6;
  v48 = a1;
  while (v10)
  {
    v11 = __clz(__rbit64(v10));
    v12 = (v10 - 1) & v10;
LABEL_13:
    v16 = v11 | (v7 << 6);
    v17 = *(*(v6 + 48) + 8 * v16);
    v18 = *(v6 + 56) + 32 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = v17;
    v24 = v19;
    v25 = v19;
    v26 = v20;
    v27 = v20;
    v28 = v21;
    sub_1D17418FC(v25, v27, v21, v22);
    v29 = v23 == 0;
    if (!v23)
    {
      return v29;
    }

    v49 = v12;
    v30 = sub_1D171D368(v23);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      v37 = v24;
      v38 = v26;
      v39 = v28;
      goto LABEL_54;
    }

    v33 = *(a2 + 56) + 32 * v30;
    v10 = *v33;
    a1 = *(v33 + 8);
    v6 = *(v33 + 16);
    v4 = *(v33 + 24);
    v50[0] = *v33;
    v50[1] = a1;
    v50[2] = v6;
    v51 = v4;
    v14 = v24;
    v52 = v24;
    v53 = v26;
    a3 = v26;
    a4 = v28;
    v54 = v28;
    v55 = v22;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        if (v22 != 2)
        {
          v40 = a1;
          swift_bridgeObjectRetain_n();
          a1 = v40;
          v14 = v24;
          a3 = v26;
          a4 = v28;
          goto LABEL_53;
        }

        if (v10 != v24)
        {

          sub_1D1741A30(v50, &qword_1EC6454D8, &qword_1D1E79A70);
          return 0;
        }

        if (a1 == v26 && v6 == v28)
        {

          goto LABEL_46;
        }

        LOBYTE(v4) = sub_1D1E6904C();

        a1 = sub_1D1741A30(v50, &qword_1EC6454D8, &qword_1D1E79A70);
        v6 = v48;
        v10 = v49;
        if ((v4 & 1) == 0)
        {
          return v29;
        }
      }

      else
      {
        if (v6 | a1 | v10)
        {
          if (v10 == 1 && (v6 | a1) == 0)
          {
            v10 = 1;
            if (v22 != 3 || v24 != 1)
            {
              goto LABEL_53;
            }
          }

          else
          {
            v10 = 2;
            if (v22 != 3 || v24 != 2)
            {
              goto LABEL_53;
            }
          }

          if (v28 | v26)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v22 != 3)
          {
            goto LABEL_53;
          }

          if (v28 | v26 | v24)
          {
            goto LABEL_52;
          }
        }

LABEL_46:
        a1 = sub_1D1741A30(v50, &qword_1EC6454D8, &qword_1D1E79A70);
        v6 = v48;
        v10 = v49;
      }
    }

    else
    {
      if (v4)
      {
        if (v22 != 1)
        {
          goto LABEL_53;
        }
      }

      else if (v22)
      {
        goto LABEL_53;
      }

      a1 = sub_1D1741A30(v50, &qword_1EC6454D8, &qword_1D1E79A70);
      v35 = v10 ^ v24;
      v6 = v48;
      v10 = v49;
      if (v35)
      {
        return v29;
      }
    }
  }

  v13 = v7;
  v14 = v47;
  while (1)
  {
    v7 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v7 >= v47)
    {
      return 1;
    }

    v15 = *(v46 + 8 * v7);
    ++v13;
    if (v15)
    {
      v11 = __clz(__rbit64(v15));
      v12 = (v15 - 1) & v15;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_52:
  LOBYTE(v22) = 3;
LABEL_53:
  v41 = v14;
  v42 = a1;
  v43 = a3;
  v44 = a4;
  sub_1D17418FC(v14, a3, a4, v22);
  sub_1D1741A30(v50, &qword_1EC6454D8, &qword_1D1E79A70);
  sub_1D1757A60(v10, v42, v6, v4);
  v37 = v41;
  v38 = v43;
  v39 = v44;
LABEL_54:
  sub_1D1757A60(v37, v38, v39, v22);
  return 0;
}

BOOL sub_1D184E2A0(uint64_t a1, uint64_t a2)
{
  v67[3] = *MEMORY[0x1E69E9840];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v8)
        {
          v10 = __clz(__rbit64(v8));
          v65 = (v8 - 1) & v8;
          goto LABEL_13;
        }

        v11 = v4;
        do
        {
          v4 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
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
          }

          if (v4 >= v9)
          {
            return 1;
          }

          v12 = *(v5 + 8 * v4);
          ++v11;
        }

        while (!v12);
        v10 = __clz(__rbit64(v12));
        v65 = (v12 - 1) & v12;
LABEL_13:
        v13 = v10 | (v4 << 6);
        v14 = *(*(v3 + 48) + 8 * v13);
        v15 = *(v3 + 56) + 24 * v13;
        v16 = *v15;
        v17 = *(v15 + 8);
        v18 = *(v15 + 16);
        v19 = v14;
        sub_1D1741830(v16, v17, v18);
        result = v19 == 0;
        if (!v19)
        {
          return result;
        }

        v21 = sub_1D171D368(v19);
        v23 = v22;

        if ((v23 & 1) == 0)
        {
          goto LABEL_107;
        }

        v24 = *(v2 + 56) + 24 * v21;
        v26 = *v24;
        v25 = *(v24 + 8);
        v27 = *(v24 + 16);
        if (v27 <= 2)
        {
          break;
        }

        if (v27 == 3)
        {
          if (v18 != 3)
          {
            v60 = *(v24 + 8);

            goto LABEL_104;
          }

          if (v26 == v16 && v25 == v17)
          {

            sub_1D1778940(v16, v17, 3);
            v34 = v16;
            v35 = v17;
            v40 = 3;
            goto LABEL_83;
          }

          v37 = *(v24 + 8);
          v38 = sub_1D1E6904C();

          sub_1D1778940(v26, v37, 3);
          sub_1D1778940(v16, v17, 3);
          v3 = a1;
          v8 = v65;
          result = 0;
          if ((v38 & 1) == 0)
          {
            return result;
          }
        }

        else if (v27 == 4)
        {
          if (v18 != 4)
          {
            v60 = *(v24 + 8);
            sub_1D1741854(*v24, v25);
LABEL_104:
            v25 = v60;
            goto LABEL_106;
          }

          v29 = v25 >> 62;
          v30 = v17 >> 62;
          if (v25 >> 62 == 3)
          {
            v31 = *&v26 == 0.0 && v25 == 0xC000000000000000;
            v32 = 0;
            v33 = v31 && v17 >> 62 == 3;
            if (v33 && *&v16 == 0.0 && v17 == 0xC000000000000000)
            {
              sub_1D1741854(0, 0xC000000000000000);
              sub_1D1778940(0, 0xC000000000000000, 4);
              v34 = 0;
              v35 = 0xC000000000000000;
              goto LABEL_82;
            }
          }

          else if (v29 > 1)
          {
            if (v29 == 2)
            {
              v42 = *(v26 + 16);
              v41 = *(v26 + 24);
              v43 = __OFSUB__(v41, v42);
              v32 = v41 - v42;
              if (v43)
              {
                goto LABEL_113;
              }
            }

            else
            {
              v32 = 0;
            }
          }

          else if (v29)
          {
            LODWORD(v32) = HIDWORD(v26) - v26;
            if (__OFSUB__(HIDWORD(v26), v26))
            {
              goto LABEL_114;
            }

            v32 = v32;
          }

          else
          {
            v32 = BYTE6(v25);
          }

          if (v30 > 1)
          {
            if (v30 != 2)
            {
              if (v32)
              {
LABEL_105:
                v61 = v25;
                sub_1D1741854(v26, v25);
                v25 = v61;
                LOBYTE(v18) = 4;
                goto LABEL_106;
              }

LABEL_81:
              v50 = v25;
              sub_1D1741854(v26, v25);
              sub_1D1778940(v26, v50, 4);
              v34 = v16;
              v35 = v17;
LABEL_82:
              v40 = 4;
              goto LABEL_83;
            }

            v46 = *(v16 + 16);
            v45 = *(v16 + 24);
            v43 = __OFSUB__(v45, v46);
            v44 = v45 - v46;
            if (v43)
            {
              goto LABEL_112;
            }
          }

          else if (v30)
          {
            LODWORD(v44) = HIDWORD(v16) - v16;
            if (__OFSUB__(HIDWORD(v16), v16))
            {
              goto LABEL_111;
            }

            v44 = v44;
          }

          else
          {
            v44 = BYTE6(v17);
          }

          if (v32 != v44)
          {
            goto LABEL_105;
          }

          if (v32 < 1)
          {
            goto LABEL_81;
          }

          v63 = v2;
          if (v29 > 1)
          {
            if (v29 != 2)
            {
              memset(v67, 0, 14);
              v59 = v25;
              sub_1D1741830(v26, v25, 4);
              sub_1D1741830(v26, v59, 4);
              sub_1D1741830(v16, v17, 4);
              sub_1D199EDB4(v67, v16, v17, &v66);
              sub_1D1778940(v16, v17, 4);
              sub_1D1778940(v26, v59, 4);
              v48 = v26;
              v49 = v59;
              goto LABEL_98;
            }

            v51 = *(v26 + 16);
            v62 = *(v26 + 24);
            v52 = v25;
            sub_1D1741830(v26, v25, 4);
            sub_1D1741830(v26, v52, 4);
            sub_1D1741830(v16, v17, 4);
            v53 = v52;
            v54 = sub_1D1E6616C();
            if (v54)
            {
              v55 = sub_1D1E6619C();
              if (__OFSUB__(v51, v55))
              {
                goto LABEL_117;
              }

              v54 += v51 - v55;
            }

            if (__OFSUB__(v62, v51))
            {
              goto LABEL_116;
            }
          }

          else
          {
            if (!v29)
            {
              v67[0] = v26;
              LOWORD(v67[1]) = v25;
              BYTE2(v67[1]) = BYTE2(v25);
              BYTE3(v67[1]) = BYTE3(v25);
              BYTE4(v67[1]) = BYTE4(v25);
              BYTE5(v67[1]) = BYTE5(v25);
              v47 = v25;
              sub_1D1741830(v26, v25, 4);
              sub_1D1741830(v26, v47, 4);
              sub_1D1741830(v16, v17, 4);
              sub_1D199EDB4(v67, v16, v17, &v66);
              sub_1D1778940(v16, v17, 4);
              sub_1D1778940(v26, v47, 4);
              v48 = v26;
              v49 = v47;
LABEL_98:
              sub_1D1778940(v48, v49, 4);
              sub_1D1778940(v16, v17, 4);
              v58 = v66;
              v3 = a1;
              goto LABEL_99;
            }

            if (v26 >> 32 < v26)
            {
              goto LABEL_115;
            }

            v56 = v25;
            sub_1D1741830(v26, v25, 4);
            sub_1D1741830(v26, v56, 4);
            sub_1D1741830(v16, v17, 4);
            v54 = sub_1D1E6616C();
            if (v54)
            {
              v57 = sub_1D1E6619C();
              if (__OFSUB__(v26, v57))
              {
                goto LABEL_118;
              }

              v54 += v26 - v57;
            }

            v53 = v56;
          }

          sub_1D1E6618C();
          sub_1D199EDB4(v54, v16, v17, v67);
          sub_1D1778940(v16, v17, 4);
          sub_1D1778940(v26, v53, 4);
          sub_1D1778940(v26, v53, 4);
          sub_1D1778940(v16, v17, 4);
          v58 = v67[0];
          v2 = v63;
          v3 = a1;
LABEL_99:
          v8 = v65;
          result = 0;
          if ((v58 & 1) == 0)
          {
            return result;
          }
        }

        else
        {
          sub_1D1778940(*v24, v25, 5);
          if (v18 != 5 || (v17 | v16) != 0)
          {
            goto LABEL_107;
          }

          v34 = 0;
          v35 = 0;
          v40 = 5;
LABEL_83:
          sub_1D1778940(v34, v35, v40);
          v3 = a1;
          v8 = v65;
        }
      }

      if (*(v24 + 16))
      {
        break;
      }

      sub_1D1778940(*v24, v25, 0);
      if (v18)
      {
        goto LABEL_107;
      }

      sub_1D1778940(v16, v17, 0);
      v3 = a1;
      v8 = v65;
      result = 0;
      if ((v26 ^ v16))
      {
        return result;
      }
    }

    if (v27 == 1)
    {
      break;
    }

    sub_1D1778940(*v24, v25, 2);
    if (v18 != 2)
    {
      goto LABEL_107;
    }

    sub_1D1778940(v16, v17, 2);
    v28 = v26 == v16;
LABEL_47:
    v3 = a1;
    v8 = v65;
    result = 0;
    if (!v28)
    {
      return result;
    }
  }

  if (v18 == 1)
  {
    sub_1D1778940(*v24, v25, 1);
    sub_1D1778940(v16, v17, 1);
    v28 = *&v26 == *&v16;
    goto LABEL_47;
  }

LABEL_106:
  sub_1D1778940(v26, v25, v27);
LABEL_107:
  sub_1D1778940(v16, v17, v18);
  return 0;
}

uint64_t sub_1D184EAA0(uint64_t a1, uint64_t a2)
{
  v56 = sub_1D1E66A7C();
  v51 = *(v56 - 8);
  v4 = MEMORY[0x1EEE9AC00](v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C8, &qword_1D1E79A60);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v46 - v10;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = v11;
  v13 = 0;
  v47 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v46[0] = v15;
  v46[1] = v51 + 16;
  v53 = v46 - v10;
  v54 = (v51 + 32);
  v48 = (v51 + 8);
  while (v19)
  {
    v55 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_16:
    v26 = v47;
    v27 = v50;
    v28 = v51;
    v29 = v56;
    (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v21, v56);
    v30 = *(*(v26 + 56) + v21);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454D0, &qword_1D1E79A68);
    v32 = *(v31 + 48);
    v33 = *(v28 + 32);
    v34 = v49;
    v33(v49, v27, v29);
    *(v34 + v32) = v30;
    (*(*(v31 - 8) + 56))(v34, 0, 1, v31);
    v12 = v53;
LABEL_17:
    sub_1D1741A90(v34, v12, &qword_1EC6454C8, &qword_1D1E79A60);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454D0, &qword_1D1E79A68);
    v36 = (*(*(v35 - 8) + 48))(v12, 1, v35);
    v37 = v36 == 1;
    if (v36 != 1)
    {
      v38 = *(v35 + 48);
      v39 = v52;
      v40 = v56;
      (*v54)(v52, v12, v56);
      v41 = v12[v38];
      v42 = sub_1D1742188();
      LOBYTE(v38) = v43;
      result = (*v48)(v39, v40);
      if (v38)
      {
        v44 = v41 == *(*(a2 + 56) + v42);
        v12 = v53;
        v19 = v55;
        if (v44)
        {
          continue;
        }
      }
    }

    return v37;
  }

  if (v20 <= v13 + 1)
  {
    v22 = v13 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454D0, &qword_1D1E79A68);
      v34 = v49;
      (*(*(v45 - 8) + 56))(v49, 1, 1, v45);
      v55 = 0;
      v13 = v23;
      goto LABEL_17;
    }

    v25 = *(v46[0] + 8 * v24);
    ++v13;
    if (v25)
    {
      v55 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v13 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void sub_1D184EF00(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v23 = (v5 + 63) >> 6;
    while (v7)
    {
      v8 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v11 = v8 | (v4 << 6);
      v12 = *(*(a1 + 48) + 8 * v11);
      v13 = *(*(a1 + 56) + 2 * v11);
      v14 = v12;
      if (!v12)
      {
        return;
      }

      v15 = v14;
      v16 = sub_1D171D3B8(v14);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        return;
      }

      v19 = *(*(a2 + 56) + 2 * v16);
      if (v19 >> 14)
      {
        if (v19 >> 14 == 1)
        {
          v20 = (v19 ^ v13);
          if ((v13 & 0xC000) != 0x4000 || v20 != 0)
          {
            return;
          }
        }

        else if (v13 != 0x8000)
        {
          return;
        }
      }

      else
      {
        if (v13 >= 0x4000)
        {
          return;
        }

        v22 = v19 ^ v13;
        if (v22 > 0xFF || (v22 & 1) != 0)
        {
          return;
        }
      }
    }

    v9 = v4;
    while (1)
    {
      v4 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v4 >= v23)
      {
        return;
      }

      v10 = *(a1 + 64 + 8 * v4);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v7 = (v10 - 1) & v10;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D184F090(uint64_t a1, uint64_t a2)
{
  v56 = sub_1D1E66A7C();
  v50 = *(v56 - 8);
  v4 = MEMORY[0x1EEE9AC00](v56);
  v51 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454A8, &qword_1D1E79A40);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v52 = v46 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v13 = 0;
  v47 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v46[0] = v15;
  v46[1] = v50 + 16;
  v53 = v10;
  v54 = (v50 + 32);
  v48 = (v50 + 8);
  while (v19)
  {
    v55 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_18:
    v26 = v47;
    v27 = v49;
    v28 = v50;
    v29 = v56;
    (*(v50 + 16))(v49, *(v47 + 48) + *(v50 + 72) * v21, v56);
    v30 = *(*(v26 + 56) + v21);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B0, &qword_1D1E79A48);
    v32 = *(v31 + 48);
    v33 = *(v28 + 32);
    v10 = v53;
    v33(v53, v27, v29);
    v10[v32] = v30;
    (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
LABEL_19:
    v34 = v52;
    sub_1D1741A90(v10, v52, &qword_1EC6454A8, &qword_1D1E79A40);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B0, &qword_1D1E79A48);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v35 + 48);
    v39 = v51;
    v40 = v56;
    (*v54)(v51, v34, v56);
    v41 = *(v34 + v38);
    v42 = sub_1D1742188();
    LOBYTE(v38) = v43;
    result = (*v48)(v39, v40);
    if ((v38 & 1) == 0)
    {
      return v37;
    }

    v44 = *(*(a2 + 56) + v42);
    if (v44 < 0)
    {
      v10 = v53;
      if ((v41 & 0x80000000) == 0)
      {
        return v37;
      }
    }

    else
    {
      v10 = v53;
      if (v41 < 0)
      {
        return v37;
      }
    }

    v19 = v55;
    if ((v44 ^ v41))
    {
      return v37;
    }
  }

  if (v20 <= v13 + 1)
  {
    v22 = v13 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B0, &qword_1D1E79A48);
      (*(*(v45 - 8) + 56))(v10, 1, 1, v45);
      v55 = 0;
      v13 = v23;
      goto LABEL_19;
    }

    v25 = *(v46[0] + 8 * v24);
    ++v13;
    if (v25)
    {
      v55 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v13 = v24;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184F4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticActionSet(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v55 - v8;
  v70 = sub_1D1E66A7C();
  v62 = *(v70 - 8);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645490, &qword_1D1E79A20);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v16;
  v60 = v7;
  v18 = 0;
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v57 = v62 + 16;
  v65 = &v55 - v15;
  v66 = (v62 + 32);
  v59 = (v62 + 8);
  v26 = &qword_1D1E79A28;
  v55 = v20;
  v56 = v25;
  while (v24)
  {
    v67 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
    v33 = v58;
    v35 = v61;
    v34 = v62;
    v36 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v27, v70);
    v37 = v68;
    sub_1D186155C(*(v33 + 56) + *(v69 + 72) * v27, v68, type metadata accessor for StaticActionSet);
    v38 = &qword_1D1E79A28;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645498, &qword_1D1E79A28);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v30 = v64;
    v41(v64, v35, v36);
    sub_1D18614F4(v37, v30 + v40, type metadata accessor for StaticActionSet);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
    v17 = v65;
    v25 = v56;
LABEL_17:
    sub_1D1741A90(v30, v17, &qword_1EC645490, &qword_1D1E79A20);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645498, v38);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v26 = v38;
    v45 = *(v42 + 48);
    v46 = v63;
    v47 = v70;
    (*v66)(v63, v17, v70);
    v48 = &v17[v45];
    v49 = v60;
    sub_1D18614F4(v48, v60, type metadata accessor for StaticActionSet);
    v50 = sub_1D1742188();
    LOBYTE(v45) = v51;
    (*v59)(v46, v47);
    if ((v45 & 1) == 0)
    {
      sub_1D18615C4(v49, type metadata accessor for StaticActionSet);
      return 0;
    }

    v52 = v68;
    sub_1D186155C(*(a2 + 56) + *(v69 + 72) * v50, v68, type metadata accessor for StaticActionSet);
    v53 = static StaticActionSet.== infix(_:_:)(v52, v49);
    sub_1D18615C4(v52, type metadata accessor for StaticActionSet);
    result = sub_1D18615C4(v49, type metadata accessor for StaticActionSet);
    v17 = v65;
    v24 = v67;
    if ((v53 & 1) == 0)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v30 = v64;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      v38 = v26;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645498, v26);
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
      v67 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v32 = *(v55 + 8 * v31);
    ++v18;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D184FAD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCameraProfile(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v55 - v8;
  v70 = sub_1D1E66A7C();
  v62 = *(v70 - 8);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645480, &unk_1D1E79A10);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v16;
  v60 = v7;
  v18 = 0;
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v57 = v62 + 16;
  v65 = &v55 - v15;
  v66 = (v62 + 32);
  v59 = (v62 + 8);
  v26 = &qword_1D1EA2FA0;
  v55 = v20;
  v56 = v25;
  while (v24)
  {
    v67 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
    v33 = v58;
    v35 = v61;
    v34 = v62;
    v36 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v27, v70);
    v37 = v68;
    sub_1D186155C(*(v33 + 56) + *(v69 + 72) * v27, v68, type metadata accessor for StaticCameraProfile);
    v38 = &qword_1D1EA2FA0;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645488, &qword_1D1EA2FA0);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v30 = v64;
    v41(v64, v35, v36);
    sub_1D18614F4(v37, v30 + v40, type metadata accessor for StaticCameraProfile);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
    v17 = v65;
    v25 = v56;
LABEL_17:
    sub_1D1741A90(v30, v17, &qword_1EC645480, &unk_1D1E79A10);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645488, v38);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v26 = v38;
    v45 = *(v42 + 48);
    v46 = v63;
    v47 = v70;
    (*v66)(v63, v17, v70);
    v48 = &v17[v45];
    v49 = v60;
    sub_1D18614F4(v48, v60, type metadata accessor for StaticCameraProfile);
    v50 = sub_1D1742188();
    LOBYTE(v45) = v51;
    (*v59)(v46, v47);
    if ((v45 & 1) == 0)
    {
      sub_1D18615C4(v49, type metadata accessor for StaticCameraProfile);
      return 0;
    }

    v52 = v68;
    sub_1D186155C(*(a2 + 56) + *(v69 + 72) * v50, v68, type metadata accessor for StaticCameraProfile);
    v53 = static StaticCameraProfile.== infix(_:_:)(v52, v49);
    sub_1D18615C4(v52, type metadata accessor for StaticCameraProfile);
    result = sub_1D18615C4(v49, type metadata accessor for StaticCameraProfile);
    v17 = v65;
    v24 = v67;
    if ((v53 & 1) == 0)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v30 = v64;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      v38 = v26;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645488, v26);
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
      v67 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v32 = *(v55 + 8 * v31);
    ++v18;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18500AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMediaSystem(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v55 - v8;
  v70 = sub_1D1E66A7C();
  v62 = *(v70 - 8);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645470, &qword_1D1E79A00);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v16;
  v60 = v7;
  v18 = 0;
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v57 = v62 + 16;
  v65 = &v55 - v15;
  v66 = (v62 + 32);
  v59 = (v62 + 8);
  v26 = &qword_1D1E79A08;
  v55 = v20;
  v56 = v25;
  while (v24)
  {
    v67 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
    v33 = v58;
    v35 = v61;
    v34 = v62;
    v36 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v27, v70);
    v37 = v68;
    sub_1D186155C(*(v33 + 56) + *(v69 + 72) * v27, v68, type metadata accessor for StaticMediaSystem);
    v38 = &qword_1D1E79A08;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, &qword_1D1E79A08);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v30 = v64;
    v41(v64, v35, v36);
    sub_1D18614F4(v37, v30 + v40, type metadata accessor for StaticMediaSystem);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
    v17 = v65;
    v25 = v56;
LABEL_17:
    sub_1D1741A90(v30, v17, &qword_1EC645470, &qword_1D1E79A00);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, v38);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v26 = v38;
    v45 = *(v42 + 48);
    v46 = v63;
    v47 = v70;
    (*v66)(v63, v17, v70);
    v48 = &v17[v45];
    v49 = v60;
    sub_1D18614F4(v48, v60, type metadata accessor for StaticMediaSystem);
    v50 = sub_1D1742188();
    LOBYTE(v45) = v51;
    (*v59)(v46, v47);
    if ((v45 & 1) == 0)
    {
      sub_1D18615C4(v49, type metadata accessor for StaticMediaSystem);
      return 0;
    }

    v52 = v68;
    sub_1D186155C(*(a2 + 56) + *(v69 + 72) * v50, v68, type metadata accessor for StaticMediaSystem);
    v53 = static StaticMediaSystem.== infix(_:_:)(v52, v49);
    sub_1D18615C4(v52, type metadata accessor for StaticMediaSystem);
    result = sub_1D18615C4(v49, type metadata accessor for StaticMediaSystem);
    v17 = v65;
    v24 = v67;
    if ((v53 & 1) == 0)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v30 = v64;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      v38 = v26;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645478, v26);
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
      v67 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v32 = *(v55 + 8 * v31);
    ++v18;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1850684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMediaProfile(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v55 - v8;
  v70 = sub_1D1E66A7C();
  v62 = *(v70 - 8);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645460, &unk_1D1E799F0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v16;
  v60 = v7;
  v18 = 0;
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v57 = v62 + 16;
  v65 = &v55 - v15;
  v66 = (v62 + 32);
  v59 = (v62 + 8);
  v26 = &unk_1D1E995E0;
  v55 = v20;
  v56 = v25;
  while (v24)
  {
    v67 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
    v33 = v58;
    v35 = v61;
    v34 = v62;
    v36 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v27, v70);
    v37 = v68;
    sub_1D186155C(*(v33 + 56) + *(v69 + 72) * v27, v68, type metadata accessor for StaticMediaProfile);
    v38 = &unk_1D1E995E0;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, &unk_1D1E995E0);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v30 = v64;
    v41(v64, v35, v36);
    sub_1D18614F4(v37, v30 + v40, type metadata accessor for StaticMediaProfile);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
    v17 = v65;
    v25 = v56;
LABEL_17:
    sub_1D1741A90(v30, v17, &qword_1EC645460, &unk_1D1E799F0);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, v38);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v26 = v38;
    v45 = *(v42 + 48);
    v46 = v63;
    v47 = v70;
    (*v66)(v63, v17, v70);
    v48 = &v17[v45];
    v49 = v60;
    sub_1D18614F4(v48, v60, type metadata accessor for StaticMediaProfile);
    v50 = sub_1D1742188();
    LOBYTE(v45) = v51;
    (*v59)(v46, v47);
    if ((v45 & 1) == 0)
    {
      sub_1D18615C4(v49, type metadata accessor for StaticMediaProfile);
      return 0;
    }

    v52 = v68;
    sub_1D186155C(*(a2 + 56) + *(v69 + 72) * v50, v68, type metadata accessor for StaticMediaProfile);
    v53 = static StaticMediaProfile.== infix(_:_:)(v52, v49);
    sub_1D18615C4(v52, type metadata accessor for StaticMediaProfile);
    result = sub_1D18615C4(v49, type metadata accessor for StaticMediaProfile);
    v17 = v65;
    v24 = v67;
    if ((v53 & 1) == 0)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v30 = v64;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      v38 = v26;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645468, v26);
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
      v67 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v32 = *(v55 + 8 * v31);
    ++v18;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1850C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v44 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v42 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - v8;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v10 = 0;
  v11 = *(a1 + 64);
  v34 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v40 = (v44 + 8);
  v41 = v44 + 16;
  v35 = v15;
  v36 = a1;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v17 = (v14 - 1) & v14;
LABEL_14:
    v20 = v16 | (v10 << 6);
    v21 = *(*(a1 + 48) + v20);
    v22 = *(*(a1 + 56) + 8 * v20);

    if (!v22)
    {
      return 1;
    }

    v37 = v17;
    v23 = sub_1D171D408(v21);
    if ((v24 & 1) == 0 || (v43 = *(*(a2 + 56) + 8 * v23), v25 = *(v43 + 16), v25 != *(v22 + 16)))
    {
LABEL_27:

      return 0;
    }

    if (v25 && v43 != v22)
    {
      v33 = a2;
      v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v38 = v22 + v26;
      v39 = v43 + v26;

      v27 = 0;
      while (v27 < *(v43 + 16))
      {
        v28 = *(v44 + 72) * v27;
        v29 = *(v44 + 16);
        result = v29(v9, v39 + v28, v4);
        if (v27 >= *(v22 + 16))
        {
          goto LABEL_32;
        }

        v30 = v42;
        v29(v42, v38 + v28, v4);
        sub_1D1861484(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v31 = sub_1D1E6775C();
        v32 = *v40;
        (*v40)(v30, v4);
        result = v32(v9, v4);
        if ((v31 & 1) == 0)
        {

          goto LABEL_27;
        }

        if (v25 == ++v27)
        {

          a2 = v33;
          goto LABEL_6;
        }
      }

      goto LABEL_31;
    }

LABEL_6:

    v15 = v35;
    a1 = v36;
    v14 = v37;
  }

  v18 = v10;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      return 1;
    }

    v19 = *(v34 + 8 * v10);
    ++v18;
    if (v19)
    {
      v16 = __clz(__rbit64(v19));
      v17 = (v19 - 1) & v19;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D1850FD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticZone(0);
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v83 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v70 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v70 - v10;
  v12 = sub_1D1E66A7C();
  v91 = *(v12 - 8);
  v92 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v87 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v78 = &v70 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v70 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645520, &qword_1D1E79AB8);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v20);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v75 = &v70 - v24;
  v25 = 0;
  v26 = *(a1 + 64);
  v70 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v79 = (v91 + 32);
  v90 = (v91 + 8);
  v77 = v22;
  v71 = v30;
  v88 = v91 + 16;
  v89 = v18;
  v73 = a1;
  v74 = a2;
  v82 = v9;
  v72 = v11;
  while (v29)
  {
    v76 = (v29 - 1) & v29;
    v31 = __clz(__rbit64(v29)) | (v25 << 6);
LABEL_17:
    v36 = v91;
    v37 = v92;
    (*(v91 + 16))(v18, *(a1 + 48) + *(v91 + 72) * v31, v92);
    sub_1D186155C(*(a1 + 56) + *(v80 + 72) * v31, v11, type metadata accessor for StaticZone);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645528, &qword_1D1E79AC0);
    v39 = *(v38 + 48);
    v40 = *(v36 + 32);
    v22 = v77;
    v40(v77, v18, v37);
    sub_1D18614F4(v11, &v22[v39], type metadata accessor for StaticZone);
    (*(*(v38 - 8) + 56))(v22, 0, 1, v38);
LABEL_18:
    v41 = v75;
    sub_1D1741A90(v22, v75, &qword_1EC645520, &qword_1D1E79AB8);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645528, &qword_1D1E79AC0);
    v43 = 1;
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {
      return v43;
    }

    v44 = *(v42 + 48);
    v45 = v78;
    v46 = v92;
    (*v79)(v78, v41, v92);
    sub_1D18614F4(v41 + v44, v9, type metadata accessor for StaticZone);
    v47 = v74;
    v48 = sub_1D1742188();
    v50 = v49;
    v86 = *v90;
    v86(v45, v46);
    if ((v50 & 1) == 0)
    {
      goto LABEL_36;
    }

    sub_1D186155C(*(v47 + 56) + *(v80 + 72) * v48, v83, type metadata accessor for StaticZone);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || ((v51 = *(v81 + 20), v52 = (v83 + v51), result = *(v83 + v51), v53 = *(v83 + v51 + 8), v54 = &v82[v51], *v52 != *v54) || v53 != *(v54 + 1)) && (result = sub_1D1E6904C(), (result & 1) == 0) || (v55 = *(v81 + 24), v56 = *(v83 + v55), v57 = *&v82[v55], v58 = *(v56 + 16), v58 != *(v57 + 16)))
    {
LABEL_35:
      sub_1D18615C4(v83, type metadata accessor for StaticZone);
      v9 = v82;
LABEL_36:
      sub_1D18615C4(v9, type metadata accessor for StaticZone);
      return 0;
    }

    if (v58 && v56 != v57)
    {
      v59 = 0;
      v60 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v84 = v57 + v60;
      v85 = v56 + v60;
      while (v59 < *(v56 + 16))
      {
        v61 = v92;
        v62 = *(v91 + 72) * v59;
        v63 = *(v91 + 16);
        v64 = v89;
        result = v63(v89, v85 + v62, v92);
        if (v59 >= *(v57 + 16))
        {
          goto LABEL_41;
        }

        v65 = v84 + v62;
        v66 = v87;
        v63(v87, v65, v61);
        sub_1D1861484(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v67 = sub_1D1E6775C();
        v68 = v86;
        v86(v66, v61);
        result = v68(v64, v61);
        if ((v67 & 1) == 0)
        {
          goto LABEL_35;
        }

        if (v58 == ++v59)
        {
          goto LABEL_6;
        }
      }

      goto LABEL_40;
    }

LABEL_6:
    sub_1D18615C4(v83, type metadata accessor for StaticZone);
    v9 = v82;
    result = sub_1D18615C4(v82, type metadata accessor for StaticZone);
    v11 = v72;
    a1 = v73;
    v18 = v89;
    v29 = v76;
    v22 = v77;
    v30 = v71;
  }

  if (v30 <= v25 + 1)
  {
    v32 = v25 + 1;
  }

  else
  {
    v32 = v30;
  }

  v33 = v32 - 1;
  while (1)
  {
    v34 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v34 >= v30)
    {
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645528, &qword_1D1E79AC0);
      (*(*(v69 - 8) + 56))(v22, 1, 1, v69);
      v76 = 0;
      v25 = v33;
      goto LABEL_18;
    }

    v35 = *(v70 + 8 * v34);
    ++v25;
    if (v35)
    {
      v76 = (v35 - 1) & v35;
      v31 = __clz(__rbit64(v35)) | (v34 << 6);
      v25 = v34;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_1D18517B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticRoom(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v55 - v8;
  v70 = sub_1D1E66A7C();
  v62 = *(v70 - 8);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645510, &qword_1D1E79AA8);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v16;
  v60 = v7;
  v18 = 0;
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v57 = v62 + 16;
  v65 = &v55 - v15;
  v66 = (v62 + 32);
  v59 = (v62 + 8);
  v26 = &qword_1D1E79AB0;
  v55 = v20;
  v56 = v25;
  while (v24)
  {
    v67 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
    v33 = v58;
    v35 = v61;
    v34 = v62;
    v36 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v27, v70);
    v37 = v68;
    sub_1D186155C(*(v33 + 56) + *(v69 + 72) * v27, v68, type metadata accessor for StaticRoom);
    v38 = &qword_1D1E79AB0;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v30 = v64;
    v41(v64, v35, v36);
    sub_1D18614F4(v37, v30 + v40, type metadata accessor for StaticRoom);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
    v17 = v65;
    v25 = v56;
LABEL_17:
    sub_1D1741A90(v30, v17, &qword_1EC645510, &qword_1D1E79AA8);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, v38);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v26 = v38;
    v45 = *(v42 + 48);
    v46 = v63;
    v47 = v70;
    (*v66)(v63, v17, v70);
    v48 = &v17[v45];
    v49 = v60;
    sub_1D18614F4(v48, v60, type metadata accessor for StaticRoom);
    v50 = sub_1D1742188();
    LOBYTE(v45) = v51;
    (*v59)(v46, v47);
    if ((v45 & 1) == 0)
    {
      sub_1D18615C4(v49, type metadata accessor for StaticRoom);
      return 0;
    }

    v52 = v68;
    sub_1D186155C(*(a2 + 56) + *(v69 + 72) * v50, v68, type metadata accessor for StaticRoom);
    v53 = static StaticRoom.== infix(_:_:)(v52, v49);
    sub_1D18615C4(v52, type metadata accessor for StaticRoom);
    result = sub_1D18615C4(v49, type metadata accessor for StaticRoom);
    v17 = v65;
    v24 = v67;
    if ((v53 & 1) == 0)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v30 = v64;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      v38 = v26;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, v26);
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
      v67 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v32 = *(v55 + 8 * v31);
    ++v18;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1851D8C(uint64_t a1, uint64_t a2)
{
  v67 = type metadata accessor for StaticUser(0);
  v65 = *(v67 - 1);
  v4 = MEMORY[0x1EEE9AC00](v67);
  v68 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v69 = v53 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v59 = v53 - v8;
  v66 = sub_1D1E66A7C();
  v61 = *(v66 - 8);
  v9 = MEMORY[0x1EEE9AC00](v66);
  v60 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v58 = v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645500, &qword_1D1E79A98);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = v53 - v17;
  v64 = a1;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(v64 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v19 = 0;
  v20 = *(v64 + 64);
  v53[0] = v64 + 64;
  v21 = 1 << *(v64 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v53[1] = v61 + 16;
  v54 = v53 - v17;
  v63 = (v61 + 32);
  v56 = v24;
  v57 = (v61 + 8);
  v55 = v15;
  while (v23)
  {
    v62 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_16:
    v30 = v64;
    v31 = v61;
    (*(v61 + 16))(v58, *(v64 + 48) + *(v61 + 72) * v25, v66);
    v32 = v59;
    sub_1D186155C(*(v30 + 56) + *(v65 + 72) * v25, v59, type metadata accessor for StaticUser);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645508, &qword_1D1E79AA0);
    v34 = *(v33 + 48);
    v15 = v55;
    (*(v31 + 32))();
    sub_1D18614F4(v32, &v15[v34], type metadata accessor for StaticUser);
    (*(*(v33 - 8) + 56))(v15, 0, 1, v33);
    v18 = v54;
LABEL_17:
    sub_1D1741A90(v15, v18, &qword_1EC645500, &qword_1D1E79A98);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645508, &qword_1D1E79AA0);
    v36 = (*(*(v35 - 8) + 48))(v18, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v35 + 48);
    v39 = v60;
    v40 = v66;
    (*v63)(v60, v18, v66);
    sub_1D18614F4(&v18[v38], v69, type metadata accessor for StaticUser);
    v41 = sub_1D1742188();
    v43 = v42;
    (*v57)(v39, v40);
    if ((v43 & 1) == 0)
    {
      goto LABEL_30;
    }

    sub_1D186155C(*(a2 + 56) + *(v65 + 72) * v41, v68, type metadata accessor for StaticUser);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || ((v44 = v67[5], v45 = (v68 + v44), v46 = *(v68 + v44 + 8), v47 = (v69 + v44), *v45 != *v47) || v46 != v47[1]) && (sub_1D1E6904C() & 1) == 0 || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(v68 + v67[7]) != *(v69 + v67[7]))
    {
      sub_1D18615C4(v68, type metadata accessor for StaticUser);
LABEL_30:
      sub_1D18615C4(v69, type metadata accessor for StaticUser);
      return 0;
    }

    v48 = v67[8];
    v49 = *(v68 + v48);
    v50 = v69;
    v51 = *(v69 + v48);
    sub_1D18615C4(v68, type metadata accessor for StaticUser);
    result = sub_1D18615C4(v50, type metadata accessor for StaticUser);
    v24 = v56;
    v23 = v62;
    if (v49 != v51)
    {
      return v37;
    }
  }

  if (v24 <= v19 + 1)
  {
    v26 = v19 + 1;
  }

  else
  {
    v26 = v24;
  }

  v27 = v26 - 1;
  while (1)
  {
    v28 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v28 >= v24)
    {
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645508, &qword_1D1E79AA0);
      (*(*(v52 - 8) + 56))(v15, 1, 1, v52);
      v62 = 0;
      v19 = v27;
      goto LABEL_17;
    }

    v29 = *(v53[0] + 8 * v28);
    ++v19;
    if (v29)
    {
      v62 = (v29 - 1) & v29;
      v25 = __clz(__rbit64(v29)) | (v28 << 6);
      v19 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1852428(uint64_t a1, uint64_t a2)
{
  v87 = type metadata accessor for StaticHH2Update(0);
  v85 = *(v87 - 1);
  v4 = MEMORY[0x1EEE9AC00](v87);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v69 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v69 - v10;
  v86 = sub_1D1E66A7C();
  v81 = *(v86 - 8);
  v11 = MEMORY[0x1EEE9AC00](v86);
  v80 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F0, &qword_1D1E79A88);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v15);
  v20 = &v69 - v19;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v21 = 0;
  v75 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v69 = (v25 + 63) >> 6;
  v70 = v23;
  v73 = v81 + 16;
  v74 = v17;
  v84 = (v81 + 32);
  v76 = v6;
  v77 = (v81 + 8);
  v82 = &v69 - v19;
  v71 = v9;
  v72 = a2;
  while (v27)
  {
    v83 = (v27 - 1) & v27;
    v29 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_20:
    v34 = v75;
    v35 = v81;
    (*(v81 + 16))(v78, *(v75 + 48) + *(v81 + 72) * v29, v86);
    v36 = v79;
    sub_1D186155C(*(v34 + 56) + *(v85 + 72) * v29, v79, type metadata accessor for StaticHH2Update);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F8, &qword_1D1E79A90);
    v38 = *(v37 + 48);
    v17 = v74;
    (*(v35 + 32))();
    sub_1D18614F4(v36, &v17[v38], type metadata accessor for StaticHH2Update);
    (*(*(v37 - 8) + 56))(v17, 0, 1, v37);
    v9 = v71;
    a2 = v72;
    v20 = v82;
LABEL_21:
    sub_1D1741A90(v17, v20, &qword_1EC6454F0, &qword_1D1E79A88);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F8, &qword_1D1E79A90);
    v40 = (*(*(v39 - 8) + 48))(v20, 1, v39);
    v41 = v40 == 1;
    if (v40 == 1)
    {
      return v41;
    }

    v42 = *(v39 + 48);
    v43 = v80;
    v44 = v86;
    (*v84)(v80, v20, v86);
    sub_1D18614F4(&v20[v42], v9, type metadata accessor for StaticHH2Update);
    v45 = sub_1D1742188();
    v47 = v46;
    (*v77)(v43, v44);
    if ((v47 & 1) == 0)
    {
      goto LABEL_68;
    }

    sub_1D186155C(*(a2 + 56) + *(v85 + 72) * v45, v6, type metadata accessor for StaticHH2Update);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      goto LABEL_67;
    }

    v48 = v87[5];
    v49 = v6[v48];
    v50 = v9[v48];
    if (v49 > 4)
    {
      switch(v49)
      {
        case 5:
          if (v50 != 5)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
        case 6:
          if (v50 != 6)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
        case 7:
          if (v50 != 7)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
      }
    }

    else
    {
      switch(v49)
      {
        case 2:
          if (v50 != 2)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
        case 3:
          if (v50 != 3)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
        case 4:
          if (v50 != 4)
          {
            goto LABEL_67;
          }

          goto LABEL_46;
      }
    }

    if (v50 - 2) < 6 || ((v50 ^ v49))
    {
      goto LABEL_67;
    }

LABEL_46:
    v52 = v87[6];
    v53 = &v6[v52];
    v55 = *&v6[v52];
    v54 = *(v53 + 1);
    v56 = &v9[v52];
    v58 = *v56;
    v57 = *(v56 + 1);
    if (!v54)
    {
      if (v57)
      {
        sub_1D18614CC(*v56, *(v56 + 1));
        v54 = 0;
        goto LABEL_66;
      }

      sub_1D18614E0(v55, 0);
      v59 = v58;
      v60 = 0;
      goto LABEL_56;
    }

    if (v54 == 1)
    {
      if (v57 != 1)
      {
        sub_1D18614CC(*v56, *(v56 + 1));
        v54 = 1;
        goto LABEL_66;
      }

      sub_1D18614E0(v55, 1uLL);
      v59 = v58;
      v60 = 1;
      goto LABEL_56;
    }

    if (v57 < 2)
    {
      sub_1D18614CC(*v56, *(v56 + 1));
      sub_1D18614CC(v55, v54);
LABEL_66:
      sub_1D18614E0(v55, v54);
      sub_1D18614E0(v58, v57);
      v6 = v76;
LABEL_67:
      sub_1D18615C4(v6, type metadata accessor for StaticHH2Update);
LABEL_68:
      sub_1D18615C4(v9, type metadata accessor for StaticHH2Update);
      return 0;
    }

    if (v55 == v58 && v54 == v57)
    {
      sub_1D18614CC(v55, *(v53 + 1));
      sub_1D18614CC(v55, v54);
      sub_1D18614E0(v55, v54);
      v59 = v55;
      v60 = v54;
LABEL_56:
      sub_1D18614E0(v59, v60);
      v6 = v76;
      goto LABEL_57;
    }

    v68 = sub_1D1E6904C();
    sub_1D18614CC(v58, v57);
    sub_1D18614CC(v55, v54);
    sub_1D18614E0(v55, v54);
    sub_1D18614E0(v58, v57);
    v6 = v76;
    if ((v68 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_57:
    v61 = v87;
    v62 = &v6[v87[7]];
    v63 = *v62;
    v64 = v62[8];
    sub_1D18615C4(v6, type metadata accessor for StaticHH2Update);
    v65 = &v9[v61[7]];
    v66 = *v65;
    v67 = v65[8];
    result = sub_1D18615C4(v9, type metadata accessor for StaticHH2Update);
    if (v64)
    {
      v20 = v82;
      v27 = v83;
      if ((v67 & 1) == 0)
      {
        return v41;
      }
    }

    else
    {
      if (v63 == v66)
      {
        v28 = v67;
      }

      else
      {
        v28 = 1;
      }

      v20 = v82;
      v27 = v83;
      if (v28)
      {
        return v41;
      }
    }
  }

  if (v69 <= v21 + 1)
  {
    v30 = v21 + 1;
  }

  else
  {
    v30 = v69;
  }

  v31 = v30 - 1;
  while (1)
  {
    v32 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v32 >= v69)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454F8, &qword_1D1E79A90);
      (*(*(v51 - 8) + 56))(v17, 1, 1, v51);
      v83 = 0;
      v21 = v31;
      goto LABEL_21;
    }

    v33 = *(v70 + 8 * v32);
    ++v21;
    if (v33)
    {
      v83 = (v33 - 1) & v33;
      v29 = __clz(__rbit64(v33)) | (v32 << 6);
      v21 = v32;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1852C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResident(0);
  v5 = *(v4 - 8);
  v84 = v4;
  v85 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v68 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v68 - v12;
  v86 = sub_1D1E66A7C();
  v82 = *(v86 - 8);
  v13 = MEMORY[0x1EEE9AC00](v86);
  v80 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v78 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E0, &qword_1D1E79A78);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  result = MEMORY[0x1EEE9AC00](v17);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v76 = &v68 - v19;
  v77 = v20;
  v21 = 0;
  v22 = *(a1 + 64);
  v70 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v69 = (v23 + 63) >> 6;
  v73 = v82 + 16;
  v74 = a2;
  v83 = (v82 + 32);
  v75 = (v82 + 8);
  v71 = a1;
  v72 = v8;
  while (v25)
  {
    v81 = (v25 - 1) & v25;
    v26 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_16:
    v32 = v82;
    v33 = v78;
    v34 = v86;
    (*(v82 + 16))(v78, *(a1 + 48) + *(v82 + 72) * v26, v86);
    v35 = v79;
    sub_1D186155C(*(a1 + 56) + *(v85 + 72) * v26, v79, type metadata accessor for StaticResident);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E8, &qword_1D1E79A80);
    v37 = *(v36 + 48);
    v38 = *(v32 + 32);
    v29 = v77;
    v38(v77, v33, v34);
    sub_1D18614F4(v35, v29 + v37, type metadata accessor for StaticResident);
    (*(*(v36 - 8) + 56))(v29, 0, 1, v36);
    v8 = v72;
    a2 = v74;
LABEL_17:
    v39 = v29;
    v40 = v76;
    sub_1D1741A90(v39, v76, &qword_1EC6454E0, &qword_1D1E79A78);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E8, &qword_1D1E79A80);
    v42 = (*(*(v41 - 8) + 48))(v40, 1, v41);
    v43 = v42 == 1;
    if (v42 == 1)
    {
      return v43;
    }

    v44 = *(v41 + 48);
    v45 = v80;
    v46 = v86;
    (*v83)(v80, v40, v86);
    sub_1D18614F4(v40 + v44, v11, type metadata accessor for StaticResident);
    v47 = sub_1D1742188();
    v49 = v48;
    (*v75)(v45, v46);
    if ((v49 & 1) == 0)
    {
      goto LABEL_38;
    }

    sub_1D186155C(*(a2 + 56) + *(v85 + 72) * v47, v8, type metadata accessor for StaticResident);
    v50 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    v51 = v84;
    if ((v50 & 1) == 0 || ((v52 = *(v84 + 20), v53 = *&v8[v52], v54 = *&v8[v52 + 8], v55 = &v11[v52], v53 != *v55) || v54 != *(v55 + 1)) && (sub_1D1E6904C() & 1) == 0)
    {
LABEL_37:
      sub_1D18615C4(v8, type metadata accessor for StaticResident);
LABEL_38:
      sub_1D18615C4(v11, type metadata accessor for StaticResident);
      return 0;
    }

    v56 = *(v51 + 24);
    v57 = &v8[v56];
    v58 = *&v8[v56 + 8];
    v59 = &v11[v56];
    v60 = *(v59 + 1);
    if (v58)
    {
      if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_1D1E6904C() & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else if (v60)
    {
      goto LABEL_37;
    }

    if ((sub_1D17B30EC() & 1) == 0)
    {
      goto LABEL_37;
    }

    if ((sub_1D17B30EC() & 1) == 0)
    {
      goto LABEL_37;
    }

    v61 = *(v51 + 36);
    v62 = v8[v61 + 8];
    v89 = *&v8[v61];
    v90 = v62;
    v63 = &v11[v61];
    v65 = v63[8];
    v87 = *v63;
    v64 = v87;
    v88 = v65;
    sub_1D1771B4C(v89, v62);
    sub_1D1771B4C(v64, v65);
    LOBYTE(v64) = static StaticAccessory.SpecialMediaCategory.== infix(_:_:)(&v89, &v87);
    sub_1D1771B5C(v87, v88);
    sub_1D1771B5C(v89, v90);
    if ((v64 & 1) == 0)
    {
      goto LABEL_37;
    }

    v66 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    sub_1D18615C4(v8, type metadata accessor for StaticResident);
    result = sub_1D18615C4(v11, type metadata accessor for StaticResident);
    a1 = v71;
    v25 = v81;
    if ((v66 & 1) == 0)
    {
      return v43;
    }
  }

  if (v69 <= v21 + 1)
  {
    v27 = v21 + 1;
  }

  else
  {
    v27 = v69;
  }

  v28 = v27 - 1;
  v29 = v77;
  while (1)
  {
    v30 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v30 >= v69)
    {
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454E8, &qword_1D1E79A80);
      (*(*(v67 - 8) + 56))(v29, 1, 1, v67);
      v81 = 0;
      v21 = v28;
      goto LABEL_17;
    }

    v31 = *(v70 + 8 * v30);
    ++v21;
    if (v31)
    {
      v81 = (v31 - 1) & v31;
      v26 = __clz(__rbit64(v31)) | (v30 << 6);
      v21 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18533F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticHome(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v55 - v8;
  v70 = sub_1D1E66A7C();
  v62 = *(v70 - 8);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645440, &qword_1D1E799D0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v16;
  v60 = v7;
  v18 = 0;
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v57 = v62 + 16;
  v65 = &v55 - v15;
  v66 = (v62 + 32);
  v59 = (v62 + 8);
  v26 = &qword_1D1E799D8;
  v55 = v20;
  v56 = v25;
  while (v24)
  {
    v67 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
    v33 = v58;
    v35 = v61;
    v34 = v62;
    v36 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v27, v70);
    v37 = v68;
    sub_1D186155C(*(v33 + 56) + *(v69 + 72) * v27, v68, type metadata accessor for StaticHome);
    v38 = &qword_1D1E799D8;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645448, &qword_1D1E799D8);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v30 = v64;
    v41(v64, v35, v36);
    sub_1D18614F4(v37, v30 + v40, type metadata accessor for StaticHome);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
    v17 = v65;
    v25 = v56;
LABEL_17:
    sub_1D1741A90(v30, v17, &qword_1EC645440, &qword_1D1E799D0);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645448, v38);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v26 = v38;
    v45 = *(v42 + 48);
    v46 = v63;
    v47 = v70;
    (*v66)(v63, v17, v70);
    v48 = &v17[v45];
    v49 = v60;
    sub_1D18614F4(v48, v60, type metadata accessor for StaticHome);
    v50 = sub_1D1742188();
    LOBYTE(v45) = v51;
    (*v59)(v46, v47);
    if ((v45 & 1) == 0)
    {
      sub_1D18615C4(v49, type metadata accessor for StaticHome);
      return 0;
    }

    v52 = v68;
    sub_1D186155C(*(a2 + 56) + *(v69 + 72) * v50, v68, type metadata accessor for StaticHome);
    v53 = _s13HomeDataModel06StaticA0V2eeoiySbAC_ACtFZ_0(v52, v49);
    sub_1D18615C4(v52, type metadata accessor for StaticHome);
    result = sub_1D18615C4(v49, type metadata accessor for StaticHome);
    v17 = v65;
    v24 = v67;
    if (!v53)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v30 = v64;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      v38 = v26;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645448, v26);
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
      v67 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v32 = *(v55 + 8 * v31);
    ++v18;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18539C8(uint64_t a1, uint64_t a2)
{
  v56 = sub_1D1E66A7C();
  v51 = *(v56 - 8);
  v4 = MEMORY[0x1EEE9AC00](v56);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644288, &qword_1D1E755F8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v49 = v46 - v11;
  v12 = 0;
  v47 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v46[0] = v14;
  v46[1] = v51 + 16;
  v54 = (v51 + 32);
  v48 = (v51 + 8);
  while (v18)
  {
    v55 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
    v25 = v47;
    v26 = v50;
    v27 = v51;
    v28 = v56;
    (*(v51 + 16))(v50, *(v47 + 48) + *(v51 + 72) * v20, v56);
    v29 = *(*(v25 + 56) + 8 * v20);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
    v31 = *(v30 + 48);
    v32 = *(v27 + 32);
    v33 = v53;
    v32(v53, v26, v28);
    *(v33 + v31) = v29;
    (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
    v34 = v49;
    sub_1D1741A90(v33, v49, &qword_1EC644288, &qword_1D1E755F8);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = *(v35 + 48);
    v39 = v52;
    v40 = v56;
    (*v54)(v52, v34, v56);
    v41 = *(v34 + v38);
    sub_1D1742188();
    LOBYTE(v38) = v42;
    (*v48)(v39, v40);
    if ((v38 & 1) == 0)
    {

      return 0;
    }

    v44 = sub_1D1853E54(v43, v41);

    v18 = v55;
    if ((v44 & 1) == 0)
    {
      return v37;
    }
  }

  if (v19 <= v12 + 1)
  {
    v21 = v12 + 1;
  }

  else
  {
    v21 = v19;
  }

  v22 = v21 - 1;
  while (1)
  {
    v23 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v23 >= v19)
    {
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
      v33 = v53;
      (*(*(v45 - 8) + 56))(v53, 1, 1, v45);
      v55 = 0;
      v12 = v22;
      goto LABEL_17;
    }

    v24 = *(v46[0] + 8 * v23);
    ++v12;
    if (v24)
    {
      v55 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v12 = v23;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1853E54(uint64_t a1, uint64_t a2)
{
  v56 = sub_1D1E66A7C();
  v51 = *(v56 - 8);
  v4 = MEMORY[0x1EEE9AC00](v56);
  v52 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644280, &qword_1D1E755F0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v10;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v48 = a2;
  v49 = v11;
  v13 = 0;
  v46 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v44 = v15;
  v45 = v51 + 16;
  v53 = &v43 - v10;
  v54 = (v51 + 32);
  v47 = (v51 + 8);
  while (v19)
  {
    v55 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
    v22 = v49;
LABEL_16:
    v27 = v46;
    v28 = v50;
    v29 = v51;
    v30 = v56;
    (*(v51 + 16))(v50, *(v46 + 48) + *(v51 + 72) * v21, v56);
    v31 = *(*(v27 + 56) + 8 * v21);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
    v33 = *(v32 + 48);
    (*(v29 + 32))(v22, v28, v30);
    *(v22 + v33) = v31;
    (*(*(v32 - 8) + 56))(v22, 0, 1, v32);

    v12 = v53;
LABEL_17:
    sub_1D1741A90(v22, v12, &qword_1EC644280, &qword_1D1E755F0);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
    v35 = (*(*(v34 - 8) + 48))(v12, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = v52;
    v38 = v56;
    (*v54)(v52, v12, v56);
    sub_1D1742188();
    v40 = v39;
    (*v47)(v37, v38);
    if ((v40 & 1) == 0)
    {

      return 0;
    }

    type metadata accessor for CameraController(0);

    v41 = sub_1D1E684FC();

    v12 = v53;
    v19 = v55;
    if ((v41 & 1) == 0)
    {
      return v36;
    }
  }

  if (v20 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23 - 1;
  v22 = v49;
  while (1)
  {
    v25 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v25 >= v20)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
      (*(*(v42 - 8) + 56))(v22, 1, 1, v42);
      v55 = 0;
      v13 = v24;
      goto LABEL_17;
    }

    v26 = *(v44 + 8 * v25);
    ++v13;
    if (v26)
    {
      v55 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v13 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18542F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeState(0);
  v74 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v58 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v58 - v11;
  v75 = sub_1D1E66A7C();
  v68 = *(v75 - 8);
  v12 = MEMORY[0x1EEE9AC00](v75);
  v69 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v58 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645580, &qword_1D1E79B28);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v16);
  v70 = &v58 - v20;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v62 = v7;
  v63 = v4;
  v21 = 0;
  v61 = a1;
  v24 = *(a1 + 64);
  v23 = a1 + 64;
  v22 = v24;
  v25 = 1 << *(v23 - 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v22;
  v58 = (v25 + 63) >> 6;
  v59 = v23;
  v60 = v68 + 16;
  v73 = (v68 + 32);
  v64 = (v68 + 8);
  v65 = v10;
  v71 = v18;
  while (v27)
  {
    v72 = (v27 - 1) & v27;
    v28 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_16:
    v34 = v61;
    v35 = v68;
    v36 = v66;
    v37 = v75;
    (*(v68 + 16))(v66, *(v61 + 48) + *(v68 + 72) * v28, v75);
    v38 = v67;
    sub_1D186155C(*(v34 + 56) + *(v74 + 72) * v28, v67, type metadata accessor for HomeState);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645588, &qword_1D1E79B30);
    v40 = *(v39 + 48);
    v41 = *(v35 + 32);
    v18 = v71;
    v41(v71, v36, v37);
    sub_1D18614F4(v38, &v18[v40], type metadata accessor for HomeState);
    (*(*(v39 - 8) + 56))(v18, 0, 1, v39);
    v31 = v70;
LABEL_17:
    sub_1D1741A90(v18, v31, &qword_1EC645580, &qword_1D1E79B28);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645588, &qword_1D1E79B30);
    v43 = (*(*(v42 - 8) + 48))(v31, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v45 = *(v42 + 48);
    v46 = v69;
    v47 = v75;
    (*v73)(v69, v31, v75);
    v48 = v31 + v45;
    v49 = v65;
    sub_1D18614F4(v48, v65, type metadata accessor for HomeState);
    v50 = sub_1D1742188();
    v52 = v51;
    (*v64)(v46, v47);
    if ((v52 & 1) == 0)
    {
      goto LABEL_26;
    }

    v53 = v62;
    sub_1D186155C(*(a2 + 56) + *(v74 + 72) * v50, v62, type metadata accessor for HomeState);
    v54 = _s13HomeDataModel13StateSnapshotV2eeoiySbAC_ACtFZ_0(v53, v49);
    v55 = v63;
    if ((v54 & 1) == 0 || (sub_1D184A6D8(*(v53 + *(v63 + 20)), *(v49 + *(v63 + 20))) & 1) == 0)
    {
      sub_1D18615C4(v53, type metadata accessor for HomeState);
LABEL_26:
      sub_1D18615C4(v49, type metadata accessor for HomeState);
      return 0;
    }

    v56 = _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0((v53 + *(v55 + 24)), (v49 + *(v55 + 24)));
    sub_1D18615C4(v53, type metadata accessor for HomeState);
    result = sub_1D18615C4(v49, type metadata accessor for HomeState);
    v18 = v71;
    v27 = v72;
    if (!v56)
    {
      return v44;
    }
  }

  if (v58 <= v21 + 1)
  {
    v29 = v21 + 1;
  }

  else
  {
    v29 = v58;
  }

  v30 = v29 - 1;
  v31 = v70;
  while (1)
  {
    v32 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v32 >= v58)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645588, &qword_1D1E79B30);
      (*(*(v57 - 8) + 56))(v18, 1, 1, v57);
      v72 = 0;
      v21 = v30;
      goto LABEL_17;
    }

    v33 = *(v59 + 8 * v32);
    ++v21;
    if (v33)
    {
      v72 = (v33 - 1) & v33;
      v28 = __clz(__rbit64(v33)) | (v32 << 6);
      v21 = v32;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1854940(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapshot(0);
  v69 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v68 = (&v55 - v8);
  v70 = sub_1D1E66A7C();
  v62 = *(v70 - 8);
  v9 = MEMORY[0x1EEE9AC00](v70);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645430, &qword_1D1E799C0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v16;
  v60 = v7;
  v18 = 0;
  v58 = a1;
  v21 = *(a1 + 64);
  v20 = a1 + 64;
  v19 = v21;
  v22 = 1 << *(v20 - 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v57 = v62 + 16;
  v65 = &v55 - v15;
  v66 = (v62 + 32);
  v59 = (v62 + 8);
  v26 = &qword_1D1E799C8;
  v55 = v20;
  v56 = v25;
  while (v24)
  {
    v67 = (v24 - 1) & v24;
    v27 = __clz(__rbit64(v24)) | (v18 << 6);
LABEL_16:
    v33 = v58;
    v35 = v61;
    v34 = v62;
    v36 = v70;
    (*(v62 + 16))(v61, *(v58 + 48) + *(v62 + 72) * v27, v70);
    v37 = v68;
    sub_1D186155C(*(v33 + 56) + *(v69 + 72) * v27, v68, type metadata accessor for StateSnapshot);
    v38 = &qword_1D1E799C8;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, &qword_1D1E799C8);
    v40 = *(v39 + 48);
    v41 = *(v34 + 32);
    v30 = v64;
    v41(v64, v35, v36);
    sub_1D18614F4(v37, v30 + v40, type metadata accessor for StateSnapshot);
    (*(*(v39 - 8) + 56))(v30, 0, 1, v39);
    v17 = v65;
    v25 = v56;
LABEL_17:
    sub_1D1741A90(v30, v17, &qword_1EC645430, &qword_1D1E799C0);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, v38);
    v43 = (*(*(v42 - 8) + 48))(v17, 1, v42);
    v44 = v43 == 1;
    if (v43 == 1)
    {
      return v44;
    }

    v26 = v38;
    v45 = *(v42 + 48);
    v46 = v63;
    v47 = v70;
    (*v66)(v63, v17, v70);
    v48 = &v17[v45];
    v49 = v60;
    sub_1D18614F4(v48, v60, type metadata accessor for StateSnapshot);
    v50 = sub_1D1742188();
    LOBYTE(v45) = v51;
    (*v59)(v46, v47);
    if ((v45 & 1) == 0)
    {
      sub_1D18615C4(v49, type metadata accessor for StateSnapshot);
      return 0;
    }

    v52 = v68;
    sub_1D186155C(*(a2 + 56) + *(v69 + 72) * v50, v68, type metadata accessor for StateSnapshot);
    v53 = _s13HomeDataModel13StateSnapshotV2eeoiySbAC_ACtFZ_0(v52, v49);
    sub_1D18615C4(v52, type metadata accessor for StateSnapshot);
    result = sub_1D18615C4(v49, type metadata accessor for StateSnapshot);
    v17 = v65;
    v24 = v67;
    if ((v53 & 1) == 0)
    {
      return v44;
    }
  }

  if (v25 <= v18 + 1)
  {
    v28 = v18 + 1;
  }

  else
  {
    v28 = v25;
  }

  v29 = v28 - 1;
  v30 = v64;
  while (1)
  {
    v31 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v31 >= v25)
    {
      v38 = v26;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645438, v26);
      (*(*(v54 - 8) + 56))(v30, 1, 1, v54);
      v67 = 0;
      v18 = v29;
      goto LABEL_17;
    }

    v32 = *(v55 + 8 * v31);
    ++v18;
    if (v32)
    {
      v67 = (v32 - 1) & v32;
      v27 = __clz(__rbit64(v32)) | (v31 << 6);
      v18 = v31;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1854F18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterStateSnapshot(0);
  v80 = *(v4 - 1);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v64 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v64 - v11;
  v81 = sub_1D1E66A7C();
  v76 = *(v81 - 8);
  v12 = MEMORY[0x1EEE9AC00](v81);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v64 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645410, &unk_1D1E799A0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v17);
  v23 = &v64 - v21;
  if (a1 == a2)
  {
    return 1;
  }

  v24 = *(v22 + 16);
  v73 = a2;
  if (v24 != *(a2 + 16))
  {
    return 0;
  }

  v25 = 0;
  v26 = *(v22 + 64);
  v64 = v22 + 64;
  v27 = 1 << *(v22 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v30 = (v27 + 63) >> 6;
  v67 = v76 + 16;
  v68 = v19;
  v78 = &v64 - v21;
  v79 = (v76 + 32);
  v71 = v7;
  v72 = (v76 + 8);
  v69 = v14;
  v70 = v22;
  v65 = v30;
  v66 = v4;
  while (v29)
  {
    v32 = v10;
    v77 = (v29 - 1) & v29;
    v33 = __clz(__rbit64(v29)) | (v25 << 6);
LABEL_20:
    v38 = v76;
    v39 = v22;
    (*(v76 + 16))(v74, *(v22 + 48) + *(v76 + 72) * v33, v81);
    v40 = v75;
    sub_1D186155C(*(v39 + 56) + *(v80 + 72) * v33, v75, type metadata accessor for MatterStateSnapshot);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    v42 = *(v41 + 48);
    v19 = v68;
    (*(v38 + 32))();
    sub_1D18614F4(v40, &v19[v42], type metadata accessor for MatterStateSnapshot);
    (*(*(v41 - 8) + 56))(v19, 0, 1, v41);
    v10 = v32;
    v14 = v69;
    v23 = v78;
LABEL_21:
    sub_1D1741A90(v19, v23, &qword_1EC645410, &unk_1D1E799A0);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    v31 = 1;
    if ((*(*(v43 - 8) + 48))(v23, 1, v43) == 1)
    {
      return v31;
    }

    v44 = *(v43 + 48);
    v45 = v81;
    (*v79)(v14, v23, v81);
    sub_1D18614F4(&v23[v44], v10, type metadata accessor for MatterStateSnapshot);
    v46 = v73;
    v47 = sub_1D1742188();
    v49 = v48;
    (*v72)(v14, v45);
    if ((v49 & 1) == 0)
    {
      goto LABEL_51;
    }

    v50 = v71;
    sub_1D186155C(*(v46 + 56) + *(v80 + 72) * v47, v71, type metadata accessor for MatterStateSnapshot);
    if ((*v50 != *v10 || v50[1] != v10[1]) && (sub_1D1E6904C() & 1) == 0 || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D184A234(*(v50 + v4[6]), *(v10 + v4[6])) & 1) == 0 || (sub_1D184A6D8(*(v50 + v4[7]), *(v10 + v4[7])) & 1) == 0)
    {
      goto LABEL_50;
    }

    v51 = v70;
    v52 = v4[8];
    v53 = *(v50 + v52);
    v54 = *(v50 + v52 + 8);
    v55 = v10 + v52;
    v56 = *v55;
    v57 = v55[8];
    if (v54 == 255)
    {
      if (v57 != 255)
      {
LABEL_46:
        sub_1D186145C(v53, v54);
        sub_1D186145C(v56, v57);
        sub_1D1861470(v53, v54);
        v62 = v56;
        v63 = v57;
        goto LABEL_49;
      }

      LOBYTE(v54) = -1;
      sub_1D186145C(v53, 255);
      sub_1D186145C(v56, 255);
    }

    else
    {
      if (v57 == 255)
      {
        goto LABEL_46;
      }

      if (v54 <= 1)
      {
        if (!v54)
        {
          if (v55[8])
          {
            goto LABEL_47;
          }

          sub_1D186145C(v53, 0);
          sub_1D186145C(v56, 0);
          sub_1D186145C(v56, 0);
          sub_1D186145C(v53, 0);
          v58 = sub_1D17A6E98(v53, v56);
          sub_1D1861470(v56, 0);
          goto LABEL_8;
        }

        if (v57 != 1)
        {
LABEL_47:
          sub_1D186145C(v53, v54);
          sub_1D186145C(v56, v57);
          sub_1D186145C(v53, v54);

LABEL_48:
          v62 = v53;
          v63 = v54;
LABEL_49:
          sub_1D1861470(v62, v63);
LABEL_50:
          sub_1D18615C4(v50, type metadata accessor for MatterStateSnapshot);
LABEL_51:
          sub_1D18615C4(v10, type metadata accessor for MatterStateSnapshot);
          return 0;
        }

        LOBYTE(v58) = sub_1D17A7DC0(v53, *v55);
        sub_1D186145C(v53, 1);
        sub_1D186145C(v56, 1);
        v59 = v53;
        v60 = 1;
LABEL_7:
        sub_1D186145C(v59, v60);
LABEL_8:

        if ((v58 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_9;
      }

      if (v54 == 2)
      {
        if (v57 != 2)
        {
          goto LABEL_47;
        }

        LOBYTE(v58) = sub_1D17A7F14(v53, *v55);
        sub_1D186145C(v53, 2);
        sub_1D186145C(v56, 2);
        v59 = v53;
        v60 = 2;
        goto LABEL_7;
      }

      sub_1D186145C(v53, 3);
      if (v57 != 3 || v56)
      {
        sub_1D186145C(v56, v57);

        v62 = v53;
        v63 = 3;
        goto LABEL_49;
      }

      sub_1D186145C(0, 3);
    }

LABEL_9:
    sub_1D1861470(v53, v54);
    sub_1D18615C4(v50, type metadata accessor for MatterStateSnapshot);
    result = sub_1D18615C4(v10, type metadata accessor for MatterStateSnapshot);
    v22 = v51;
    v30 = v65;
    v4 = v66;
    v29 = v77;
    v23 = v78;
  }

  if (v30 <= v25 + 1)
  {
    v34 = v25 + 1;
  }

  else
  {
    v34 = v30;
  }

  v35 = v34 - 1;
  while (1)
  {
    v36 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v36 >= v30)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
      (*(*(v61 - 8) + 56))(v19, 1, 1, v61);
      v77 = 0;
      v25 = v35;
      goto LABEL_21;
    }

    v37 = *(v64 + 8 * v36);
    ++v25;
    if (v37)
    {
      v32 = v10;
      v77 = (v37 - 1) & v37;
      v33 = __clz(__rbit64(v37)) | (v36 << 6);
      v25 = v36;
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t CoordinationSnapshot.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1856F74(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1855824()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1856F74(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1855874(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  sub_1D1856F74(v4, v2);
  return sub_1D1E6926C();
}

uint64_t CoordinationSnapshot.UpdateType.description.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for CoordinationSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D186155C(v1, v8, type metadata accessor for CoordinationSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        return 7105601;
      }

      v17 = *v8;
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_1D1E6884C();
      if (v17)
      {
        v18 = 0x676E6973756170;
      }

      else
      {
        v18 = 0x676E696D75736572;
      }

      if (v17)
      {
        v19 = 0xE700000000000000;
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      MEMORY[0x1D3890F70](v18, v19);

      MEMORY[0x1D3890F70](0x206D616572747320, 0xEF73657461647075);
      return v30;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v13 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48)];
      (*(v3 + 32))(v5, v8, v2);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_1D1E6884C();

      v14 = 0x6120656C676E6953;
      v15 = 1836212588;
    }

    else
    {
      v13 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453E8, &qword_1D1E79860) + 48)];
      (*(v3 + 32))(v5, v8, v2);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_1D1E6884C();

      v14 = 0x7420656C676E6953;
      v15 = 1919249769;
    }

    v30 = v14;
    v31 = v15 | 0xEE00203A00000000;
    v24 = type metadata accessor for StaticTimer(0);
LABEL_25:
    v25 = MEMORY[0x1D3891260](v13, v24);
    v27 = v26;

    MEMORY[0x1D3890F70](v25, v27);

    MEMORY[0x1D3890F70](0x203A726F6620, 0xE600000000000000);
    sub_1D1861484(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v28 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v28);

    v23 = v30;
    (*(v3 + 8))(v5, v2);
    return v23;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48)];
      (*(v3 + 32))(v5, v8, v2);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_1D1E6884C();

      v16 = 0x3A6D72616C61;
    }

    else
    {
      v13 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6453F0, &qword_1D1E79868) + 48)];
      (*(v3 + 32))(v5, v8, v2);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_1D1E6884C();

      v16 = 0x3A72656D6974;
    }

    v30 = v16 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
    v31 = 0xE700000000000000;
    v24 = type metadata accessor for StaticAlarm(0);
    goto LABEL_25;
  }

  v10 = *v8;
  if (EnumCaseMultiPayload)
  {
    v11 = 0x6F4665766F6D6572;
    v12 = 0xEB00000000203A72;
  }

  else
  {
    v11 = 0x3A726F4661746164;
    v12 = 0xE900000000000020;
  }

  v30 = v11;
  v31 = v12;
  v20 = MEMORY[0x1D3891260](v10, v2);
  v22 = v21;

  MEMORY[0x1D3890F70](v20, v22);

  return v30;
}

unint64_t sub_1D1855DE0()
{
  result = sub_1D18D9138(MEMORY[0x1E69E7CC0]);
  qword_1EE081410 = result;
  return result;
}

uint64_t sub_1D1855E28(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
LABEL_6:
  if (v7)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_35;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_11:
      v13 = __clz(__rbit64(v7)) | (v11 << 6);
      v14 = *(*(a2 + 48) + 8 * v13);
      v15 = *(a2 + 56) + 16 * v13;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = v14;
      sub_1D1741AF8(v16, v17);
      if (!v18)
      {
LABEL_35:

        return MEMORY[0x1D3892850](v10);
      }

      sub_1D1E6850C();

      if (v17 <= 1)
      {
        if (!v17)
        {
          MEMORY[0x1D3892850](0);
          sub_1D1E6922C();
          goto LABEL_5;
        }

        v22 = 1;
        goto LABEL_23;
      }

      if (v17 == 2)
      {
        v22 = 2;
LABEL_23:
        MEMORY[0x1D3892850](v22);
        MEMORY[0x1D3892850](v16);
        goto LABEL_5;
      }

      if (v17 != 3)
      {
        MEMORY[0x1D3892850](4);
        MEMORY[0x1D3892850](*(v16 + 16));
        v23 = v16;
        v24 = *(v16 + 16);
        if (!v24)
        {
          sub_1D1757AE8(v23, 4u);
          goto LABEL_5;
        }

        v28 = v10;
        v29 = v8;
        v30 = a1;
        v32 = v23;
        v25 = (v23 + 52);
        while (2)
        {
          v26 = *(v25 - 8);
          v27 = *v25;
          sub_1D1E6924C();
          sub_1D1E6922C();
          if (v26 == 1)
          {
            sub_1D1E6922C();
            if (v27)
            {
LABEL_32:
              sub_1D1E6922C();
LABEL_27:
              v25 += 24;
              if (!--v24)
              {
                sub_1D1757AE8(v32, 4u);
                a1 = v30;
                v8 = v29;
                v10 = v28;
                goto LABEL_5;
              }

              continue;
            }
          }

          else
          {
            sub_1D1E6922C();
            sub_1D1E6924C();
            if (v27)
            {
              goto LABEL_32;
            }
          }

          break;
        }

        sub_1D1E6922C();
        sub_1D1E6924C();
        goto LABEL_27;
      }

      MEMORY[0x1D3892850](3);
      MEMORY[0x1D3892850](*(v16 + 16));
      v19 = v16;
      v20 = *(v16 + 16);
      if (v20)
      {
        v31 = v19;
        v21 = v19 + 32;
        do
        {
          v21 += 4;
          sub_1D1E6924C();
          --v20;
        }

        while (v20);
        v19 = v31;
      }

      sub_1D1757AE8(v19, 3u);
LABEL_5:
      v7 &= v7 - 1;
      result = sub_1D1E6926C();
      v10 ^= result;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18560F4(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  v26 = v8;
LABEL_6:
  if (v7)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {
      goto LABEL_35;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_11:
      v13 = *(a2 + 56) + 16 * (__clz(__rbit64(v7)) | (v11 << 6));
      v14 = *(v13 + 8);
      v27 = *v13;
      sub_1D1741AF8(*v13, *(v13 + 8));
      if (v14 == 255)
      {
LABEL_35:

        return MEMORY[0x1D3892850](v10);
      }

      sub_1D1E6924C();
      sub_1D1E6924C();
      if (v14 <= 1)
      {
        if (!v14)
        {
          MEMORY[0x1D3892850](0);
          sub_1D1E6922C();
          goto LABEL_5;
        }

        v18 = 1;
        goto LABEL_23;
      }

      if (v14 == 2)
      {
        v18 = 2;
LABEL_23:
        MEMORY[0x1D3892850](v18);
        MEMORY[0x1D3892850](v27);
        goto LABEL_5;
      }

      if (v14 != 3)
      {
        MEMORY[0x1D3892850](4);
        MEMORY[0x1D3892850](*(v27 + 16));
        v19 = *(v27 + 16);
        if (!v19)
        {
          sub_1D1757AE8(v27, 4u);
          goto LABEL_5;
        }

        v23 = v10;
        v24 = v4;
        v25 = a1;
        v20 = (v27 + 52);
        while (2)
        {
          v21 = *(v20 - 8);
          v22 = *v20;
          sub_1D1E6924C();
          sub_1D1E6922C();
          if (v21 == 1)
          {
            sub_1D1E6922C();
            if (v22)
            {
LABEL_32:
              sub_1D1E6922C();
LABEL_27:
              v20 += 24;
              if (!--v19)
              {
                sub_1D1757AE8(v27, 4u);
                a1 = v25;
                v10 = v23;
                v4 = v24;
                goto LABEL_5;
              }

              continue;
            }
          }

          else
          {
            sub_1D1E6922C();
            sub_1D1E6924C();
            if (v22)
            {
              goto LABEL_32;
            }
          }

          break;
        }

        sub_1D1E6922C();
        sub_1D1E6924C();
        goto LABEL_27;
      }

      MEMORY[0x1D3892850](3);
      MEMORY[0x1D3892850](*(v27 + 16));
      v15 = v27;
      v16 = *(v27 + 16);
      if (v16)
      {
        v17 = v27 + 32;
        do
        {
          v17 += 4;
          sub_1D1E6924C();
          --v16;
        }

        while (v16);
        v15 = v27;
      }

      sub_1D1757AE8(v15, 3u);
LABEL_5:
      v7 &= v7 - 1;
      result = sub_1D1E6926C();
      v10 ^= result;
      v8 = v26;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18563E0(uint64_t a1, uint64_t a2)
{
  v72 = a1;
  v73 = type metadata accessor for StaticCharacteristic(0);
  v66 = *(v73 - 8);
  v3 = MEMORY[0x1EEE9AC00](v73);
  v70 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645540, &unk_1D1E96BA0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v63 - v10;
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v64 = (v13 + 63) >> 6;
  v67 = a2;

  v17 = 0;
  v18 = 0;
  v68 = v9;
  v69 = v11;
  for (i = a2 + 64; ; v12 = i)
  {
    v74 = v17;
    if (!v15)
    {
      break;
    }

    v19 = v18;
LABEL_17:
    v22 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v23 = v22 | (v19 << 6);
    v24 = *(*(v67 + 48) + v23);
    v25 = v65;
    sub_1D186155C(*(v67 + 56) + *(v66 + 72) * v23, v65, type metadata accessor for StaticCharacteristic);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645548, &unk_1D1E79AE0);
    v27 = *(v26 + 48);
    *v9 = v24;
    sub_1D18614F4(v25, &v9[v27], type metadata accessor for StaticCharacteristic);
    (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
LABEL_18:
    sub_1D1741A90(v9, v11, &qword_1EC645540, &unk_1D1E96BA0);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645548, &unk_1D1E79AE0);
    if ((*(*(v28 - 8) + 48))(v11, 1, v28) == 1)
    {

      return MEMORY[0x1D3892850](v74);
    }

    v29 = *(v28 + 48);
    v30 = *v11;
    v31 = v70;
    sub_1D18614F4(&v11[v29], v70, type metadata accessor for StaticCharacteristic);
    v32 = *(v72 + 48);
    v77[2] = *(v72 + 32);
    v77[3] = v32;
    v78 = *(v72 + 64);
    v33 = *(v72 + 16);
    v77[0] = *v72;
    v77[1] = v33;
    LOBYTE(v75) = v30;
    CharacteristicKind.rawValue.getter();
    sub_1D1E678EC();

    sub_1D1E66A7C();
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    v34 = v73;
    LOBYTE(v75) = *(v31 + *(v73 + 20));
    CharacteristicKind.rawValue.getter();
    sub_1D1E678EC();

    v35 = v31 + *(v34 + 24);
    v36 = *(v35 + 16);
    v75 = *v35;
    v76 = v36;
    CharacteristicKind.Value.hash(into:)(v77);
    sub_1D1E669FC();
    sub_1D1861484(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    v37 = v31 + *(v34 + 32);
    v38 = *v37;
    if (*(v37 + 24) > 1u)
    {
      v40 = *(v37 + 8);
      v41 = *(v37 + 16);
      if (*(v37 + 24) == 2)
      {
        MEMORY[0x1D3892850](3);
        MEMORY[0x1D3892850](v38);
        sub_1D1E678EC();
        goto LABEL_27;
      }

      if (v41 | v40 | v38)
      {
        if (v38 != 1 || v41 | v40)
        {
          v42 = 5;
        }

        else
        {
          v42 = 4;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      if (*(v37 + 24))
      {
        v39 = 2;
      }

      else
      {
        v39 = 1;
      }

      MEMORY[0x1D3892850](v39);
      v42 = v38 & 1;
    }

    MEMORY[0x1D3892850](v42);
LABEL_27:
    v43 = v73;
    MEMORY[0x1D3892850](*(v31 + *(v73 + 36)));
    sub_1D1E676EC();
    v44 = (v31 + *(v43 + 44));
    v45 = v44[3];
    if (v45 >> 8 == 0xFFFFFFFF)
    {
      sub_1D1E6922C();
      v9 = v68;
LABEL_5:
      v11 = v69;
      goto LABEL_6;
    }

    v47 = *v44;
    v46 = v44[1];
    v48 = v44[2];
    v49 = v44[4];
    sub_1D1E6922C();
    v50 = v45 >> 62;
    if ((v45 >> 62) > 1)
    {
      v9 = v68;
      if (v50 == 2)
      {
        MEMORY[0x1D3892850](2);
        v55 = v47;
      }

      else
      {
        v55 = 3;
      }

      MEMORY[0x1D3892850](v55);
      goto LABEL_5;
    }

    if (v50)
    {
      MEMORY[0x1D3892850](1);
      if ((v47 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v52 = v47;
      }

      else
      {
        v52 = 0;
      }

      MEMORY[0x1D3892890](v52);
      if ((v46 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v53 = v46;
      }

      else
      {
        v53 = 0;
      }

      MEMORY[0x1D3892890](v53);
      if ((v48 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v54 = v48;
      }

      else
      {
        v54 = 0;
      }

      MEMORY[0x1D3892890](v54);
      if (v45 == 8)
      {
        sub_1D1E6922C();
        v9 = v68;
        v11 = v69;
        if (!v49)
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_1D1E6922C();
        v11 = v69;
        v9 = v68;
        sub_1D1E678EC();

        if (!v49)
        {
LABEL_70:
          sub_1D1E6922C();
          goto LABEL_6;
        }
      }

      sub_1D1E6922C();
      v59 = *(v49 + 16);
      MEMORY[0x1D3892850](v59);
      if (v59)
      {
        v60 = (v49 + 32);
        do
        {
          v61 = *v60++;
          v62 = v61;
          if (v61 == 0.0)
          {
            v62 = 0.0;
          }

          MEMORY[0x1D3892890](*&v62);
          --v59;
        }

        while (v59);
      }
    }

    else
    {
      MEMORY[0x1D3892850](0);
      MEMORY[0x1D3892850](v47);
      MEMORY[0x1D3892850](v46);
      MEMORY[0x1D3892850](v48);
      if (v45 == 8)
      {
        sub_1D1E6922C();
        v9 = v68;
        v11 = v69;
        if (!v49)
        {
          goto LABEL_70;
        }
      }

      else
      {
        sub_1D1E6922C();
        v11 = v69;
        v9 = v68;
        sub_1D1E678EC();

        if (!v49)
        {
          goto LABEL_70;
        }
      }

      sub_1D1E6922C();
      MEMORY[0x1D3892850](*(v49 + 16));
      v56 = *(v49 + 16);
      if (v56)
      {
        v57 = (v49 + 32);
        do
        {
          v58 = *v57++;
          MEMORY[0x1D3892850](v58);
          --v56;
        }

        while (v56);
      }
    }

LABEL_6:
    sub_1D18615C4(v31, type metadata accessor for StaticCharacteristic);
    result = sub_1D1E6926C();
    v17 = result ^ v74;
  }

  if (v64 <= v18 + 1)
  {
    v20 = v18 + 1;
  }

  else
  {
    v20 = v64;
  }

  v21 = v20 - 1;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v64)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645548, &unk_1D1E79AE0);
      (*(*(v51 - 8) + 56))(v9, 1, 1, v51);
      v15 = 0;
      v18 = v21;
      goto LABEL_18;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1856E34(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  for (i = 0; v7; v10 ^= result)
  {
    v12 = i;
LABEL_9:
    v13 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v7)) | (v12 << 6)));
    v7 &= v7 - 1;
    v14 = *(a1 + 48);
    v16[2] = *(a1 + 32);
    v16[3] = v14;
    v17 = *(a1 + 64);
    v15 = *(a1 + 16);
    v16[0] = *a1;
    v16[1] = v15;
    sub_1D1E6923C();

    sub_1D18560F4(v16, v13);

    result = sub_1D1E6926C();
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1D3892850](v10);
    }

    v7 = *(v4 + 8 * v12);
    ++i;
    if (v7)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1856F74(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v65 = sub_1D1E66A7C();
  v3 = *(v65 - 8);
  v4 = MEMORY[0x1EEE9AC00](v65);
  v59 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455D8, &qword_1D1E79B88);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v51 - v11;
  v12 = *(a2 + 64);
  v61 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v52 = (v13 + 63) >> 6;
  v53 = v3 + 16;
  v64 = (v3 + 32);
  v56 = v3;
  v57 = a2;
  v58 = (v3 + 8);

  v17 = 0;
  v18 = 0;
  v54 = v10;
  while (1)
  {
    v66 = v17;
    if (!v15)
    {
      break;
    }

    v21 = v18;
LABEL_16:
    v25 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v26 = v25 | (v21 << 6);
    v28 = v56;
    v27 = v57;
    v29 = v55;
    v30 = v65;
    (*(v56 + 16))(v55, *(v57 + 48) + *(v56 + 72) * v26, v65);
    v31 = (*(v27 + 56) + 32 * v26);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[3];
    v63 = v31[2];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E0, &unk_1D1E79B90);
    v36 = &v54[*(v35 + 48)];
    v37 = *(v28 + 32);
    v10 = v54;
    v37(v54, v29, v30);
    *v36 = v32;
    *(v36 + 1) = v33;
    v38 = v63;
    *(v36 + 2) = v63;
    *(v36 + 3) = v34;
    (*(*(v35 - 8) + 56))(v10, 0, 1, v35);

    sub_1D1741C70(v38);
    sub_1D1741C70(v34);
    v24 = v62;
LABEL_17:
    sub_1D1741A90(v10, v24, &qword_1EC6455D8, &qword_1D1E79B88);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E0, &unk_1D1E79B90);
    if ((*(*(v39 - 8) + 48))(v24, 1, v39) == 1)
    {

      return MEMORY[0x1D3892850](v66);
    }

    v40 = v24;
    v41 = (v24 + *(v39 + 48));
    v42 = v65;
    v43 = v59;
    (*v64)(v59, v40, v65);
    v44 = *v41;
    v45 = v41[1];
    v46 = v41[2];
    v19 = v41[3];
    v47 = *(v60 + 48);
    v67[2] = *(v60 + 32);
    v67[3] = v47;
    v68 = *(v60 + 64);
    v48 = *(v60 + 16);
    v67[0] = *v60;
    v67[1] = v48;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*v58)(v43, v42);

    sub_1D1741C70(v46);
    sub_1D1741C70(v19);
    sub_1D176FB98(v67, v44);

    sub_1D176F8E4(v67, v45);

    if (v46 > 2)
    {
      switch(v46)
      {
        case 3:
          v49 = 3;
          break;
        case 4:
          v49 = 5;
          break;
        case 5:
          v49 = 6;
          break;
        default:
LABEL_30:
          MEMORY[0x1D3892850](4);
          sub_1D1E6850C();
          sub_1D1757B18(v46);
          if (v19 <= 2)
          {
            goto LABEL_38;
          }

          goto LABEL_31;
      }
    }

    else if (v46)
    {
      if (v46 == 1)
      {
        v49 = 1;
      }

      else
      {
        if (v46 != 2)
        {
          goto LABEL_30;
        }

        v49 = 2;
      }
    }

    else
    {
      v49 = 0;
    }

    MEMORY[0x1D3892850](v49);
    if (v19 <= 2)
    {
LABEL_38:
      if (!v19)
      {
        MEMORY[0x1D3892850](0);

        v20 = 0;
        v19 = v46;
        goto LABEL_5;
      }

      if (v19 != 1)
      {
        if (v19 == 2)
        {
          MEMORY[0x1D3892850](2);

          v19 = v46;
          v20 = 2;
          goto LABEL_5;
        }

        goto LABEL_43;
      }

      MEMORY[0x1D3892850](1);

      v19 = v46;
      v20 = 1;
      goto LABEL_5;
    }

LABEL_31:
    if (v19 == 3)
    {
      MEMORY[0x1D3892850](3);

      v19 = v46;
      v20 = 3;
      goto LABEL_5;
    }

    if (v19 != 4)
    {
      if (v19 == 5)
      {
        MEMORY[0x1D3892850](6);

        v19 = v46;
        v20 = 5;
        goto LABEL_5;
      }

LABEL_43:
      MEMORY[0x1D3892850](4);
      v20 = v19;
      sub_1D1E6850C();

      sub_1D1757B18(v46);
      goto LABEL_5;
    }

    MEMORY[0x1D3892850](5);

    v19 = v46;
    v20 = 4;
LABEL_5:
    sub_1D1757B18(v19);
    sub_1D1757B18(v20);
    result = sub_1D1E6926C();
    v17 = result ^ v66;
  }

  if (v52 <= v18 + 1)
  {
    v22 = v18 + 1;
  }

  else
  {
    v22 = v52;
  }

  v23 = v22 - 1;
  v24 = v62;
  while (1)
  {
    v21 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v21 >= v52)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455E0, &unk_1D1E79B90);
      (*(*(v50 - 8) + 56))(v10, 1, 1, v50);
      v15 = 0;
      v18 = v23;
      goto LABEL_17;
    }

    v15 = *(v61 + 8 * v21);
    ++v18;
    if (v15)
    {
      v18 = v21;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for CoordinationSnapshot.UpdateType(uint64_t a1)
{
  result = qword_1EE07A7F8;
  if (!qword_1EE07A7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1857700(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = type metadata accessor for ActionService(0);
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D1E66A7C();
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645530, &qword_1D1E79AC8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = *(a2 + 64);
  v45 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v44 = (v14 + 63) >> 6;
  v46 = v5 + 16;
  v55 = (v5 + 32);
  v49 = v5;
  v51 = a2;
  v52 = (v5 + 8);

  v18 = 0;
  v47 = v12;
  v48 = v10;
  v58 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v51;
      v25 = v49;
      v26 = v54;
      v27 = v56;
      (*(v49 + 16))(v54, *(v51 + 48) + *(v49 + 72) * v23, v56);
      v28 = v57;
      sub_1D186155C(*(v24 + 56) + *(v50 + 72) * v23, v57, type metadata accessor for ActionService);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645538, &unk_1D1E79AD0);
      v30 = *(v29 + 48);
      v31 = *(v25 + 32);
      v32 = v48;
      v31(v48, v26, v27);
      v33 = v28;
      v10 = v32;
      sub_1D18614F4(v33, &v32[v30], type metadata accessor for ActionService);
      (*(*(v29 - 8) + 56))(v32, 0, 1, v29);
      v21 = v19;
      v12 = v47;
LABEL_13:
      sub_1D1741A90(v10, v12, &qword_1EC645530, &qword_1D1E79AC8);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645538, &unk_1D1E79AD0);
      if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v34 + 48);
      v36 = v54;
      v37 = v56;
      (*v55)(v54, v12, v56);
      v38 = &v12[v35];
      v39 = v57;
      sub_1D18614F4(v38, v57, type metadata accessor for ActionService);
      v40 = *(v53 + 48);
      v59[2] = *(v53 + 32);
      v59[3] = v40;
      v60 = *(v53 + 64);
      v41 = *(v53 + 16);
      v59[0] = *v53;
      v59[1] = v41;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v52)(v36, v37);
      ActionService.hash(into:)(v59);
      sub_1D18615C4(v39, type metadata accessor for ActionService);
      result = sub_1D1E6926C();
      v18 = v21;
      v58 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v58);
  }

  else
  {
LABEL_5:
    if (v44 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v44;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v44)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645538, &unk_1D1E79AD0);
        (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v45 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1857C7C(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v3 = type metadata accessor for StaticTelevisionProfile(0);
  v58 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v67 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v51 - v6;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645560, &qword_1D1E79B08);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v64 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v51 - v15;
  v17 = a2 + 64;
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a2 + 64);
  v51 = (v18 + 63) >> 6;
  v53 = v8 + 16;
  v65 = (v8 + 32);
  v56 = v8;
  v61 = (v8 + 8);
  v59 = a2;

  v22 = 0;
  v23 = 0;
  v66 = v16;
  v60 = v7;
  v52 = a2 + 64;
  v54 = v3;
  while (1)
  {
    v68 = v22;
    if (!v20)
    {
      break;
    }

    v25 = v23;
LABEL_15:
    v29 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v30 = v29 | (v25 << 6);
    v31 = v59;
    v32 = v56;
    v33 = v55;
    (*(v56 + 16))(v55, *(v59 + 48) + *(v56 + 72) * v30, v7);
    v34 = v57;
    sub_1D186155C(*(v31 + 56) + *(v58 + 72) * v30, v57, type metadata accessor for StaticTelevisionProfile);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645568, &qword_1D1E79B10);
    v36 = *(v35 + 48);
    v37 = *(v32 + 32);
    v28 = v64;
    v37(v64, v33, v7);
    sub_1D18614F4(v34, v28 + v36, type metadata accessor for StaticTelevisionProfile);
    (*(*(v35 - 8) + 56))(v28, 0, 1, v35);
    v3 = v54;
    v16 = v66;
    v17 = v52;
LABEL_16:
    sub_1D1741A90(v28, v16, &qword_1EC645560, &qword_1D1E79B08);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645568, &qword_1D1E79B10);
    if ((*(*(v38 - 8) + 48))(v16, 1, v38) == 1)
    {

      return MEMORY[0x1D3892850](v68);
    }

    v39 = *(v38 + 48);
    v40 = v62;
    v7 = v60;
    (*v65)(v62, v16, v60);
    v41 = &v16[v39];
    v42 = v67;
    sub_1D18614F4(v41, v67, type metadata accessor for StaticTelevisionProfile);
    v43 = *(v63 + 48);
    v71 = *(v63 + 32);
    v72 = v43;
    v73 = *(v63 + 64);
    v44 = *(v63 + 16);
    v69 = *v63;
    v70 = v44;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*v61)(v40, v7);
    sub_1D1E676EC();
    v45 = v3;
    v46 = *(v42 + *(v3 + 20));
    MEMORY[0x1D3892850](*(v46 + 16));
    v47 = *(v46 + 16);
    if (v47)
    {
      v48 = (v46 + 32);
      do
      {
        v49 = *v48++;
        MEMORY[0x1D3892850](v49);
        --v47;
      }

      while (v47);
    }

    v3 = v45;
    v24 = v67;
    sub_1D1E676EC();
    sub_1D18615C4(v24, type metadata accessor for StaticTelevisionProfile);
    result = sub_1D1E6926C();
    v22 = result ^ v68;
    v16 = v66;
  }

  if (v51 <= v23 + 1)
  {
    v26 = v23 + 1;
  }

  else
  {
    v26 = v51;
  }

  v27 = v26 - 1;
  v28 = v64;
  while (1)
  {
    v25 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v25 >= v51)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645568, &qword_1D1E79B10);
      (*(*(v50 - 8) + 56))(v28, 1, 1, v50);
      v20 = 0;
      v23 = v27;
      goto LABEL_16;
    }

    v20 = *(v17 + 8 * v25);
    ++v23;
    if (v20)
    {
      v23 = v25;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18582DC(uint64_t a1, uint64_t a2)
{
  v57 = a1;
  v60 = type metadata accessor for StaticLightProfile(0);
  v53 = *(v60 - 8);
  v3 = MEMORY[0x1EEE9AC00](v60);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v45 - v6;
  v62 = sub_1D1E66A7C();
  v7 = *(v62 - 8);
  v8 = MEMORY[0x1EEE9AC00](v62);
  v56 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645570, &qword_1D1E79B18);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - v15;
  v17 = a2 + 64;
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a2 + 64);
  v45 = (v18 + 63) >> 6;
  v47 = v7 + 16;
  v58 = (v7 + 32);
  v51 = v7;
  v54 = a2;
  v55 = (v7 + 8);

  v22 = 0;
  v23 = 0;
  v49 = v5;
  v48 = v14;
  v59 = v16;
  v46 = a2 + 64;
  while (1)
  {
    v61 = v22;
    if (!v20)
    {
      break;
    }

    v24 = v23;
LABEL_16:
    v27 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v28 = v27 | (v24 << 6);
    v29 = v54;
    v30 = v51;
    v31 = v50;
    v32 = v62;
    (*(v51 + 16))(v50, *(v54 + 48) + *(v51 + 72) * v28, v62);
    v33 = v52;
    sub_1D186155C(*(v29 + 56) + *(v53 + 72) * v28, v52, type metadata accessor for StaticLightProfile);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
    v35 = *(v34 + 48);
    v36 = *(v30 + 32);
    v14 = v48;
    v36(v48, v31, v32);
    sub_1D18614F4(v33, &v14[v35], type metadata accessor for StaticLightProfile);
    (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
    v5 = v49;
    v16 = v59;
    v17 = v46;
LABEL_17:
    sub_1D1741A90(v14, v16, &qword_1EC645570, &qword_1D1E79B18);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
    if ((*(*(v37 - 8) + 48))(v16, 1, v37) == 1)
    {

      return MEMORY[0x1D3892850](v61);
    }

    v38 = *(v37 + 48);
    v39 = v56;
    v40 = v62;
    (*v58)(v56, v16, v62);
    sub_1D18614F4(&v16[v38], v5, type metadata accessor for StaticLightProfile);
    v41 = *(v57 + 48);
    v65 = *(v57 + 32);
    v66 = v41;
    v67 = *(v57 + 64);
    v42 = *(v57 + 16);
    v63 = *v57;
    v64 = v42;
    sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*v55)(v39, v40);
    sub_1D1E676EC();
    v43 = v60;
    sub_1D1E6922C();
    LODWORD(v43) = v5[*(v43 + 24) + 1];
    sub_1D1E6922C();
    if (v43 != 2)
    {
      sub_1D1E6922C();
    }

    sub_1D1E6922C();
    sub_1D1E676EC();
    sub_1D18615C4(v5, type metadata accessor for StaticLightProfile);
    result = sub_1D1E6926C();
    v22 = result ^ v61;
    v16 = v59;
  }

  if (v45 <= v23 + 1)
  {
    v25 = v23 + 1;
  }

  else
  {
    v25 = v45;
  }

  v26 = v25 - 1;
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v45)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
      (*(*(v44 - 8) + 56))(v14, 1, 1, v44);
      v20 = 0;
      v23 = v26;
      goto LABEL_17;
    }

    v20 = *(v17 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D185893C(uint64_t a1, uint64_t a2)
{
  v49 = a1;
  v47 = type metadata accessor for EndpointPath(0);
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D1E66A7C();
  v4 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645590, &qword_1D1E79B38);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v39 - v10;
  v11 = *(a2 + 64);
  v40 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v39 = (v12 + 63) >> 6;
  v41 = v4 + 16;
  v53 = (v4 + 32);
  v43 = v4;
  v45 = a2;
  v46 = (v4 + 8);

  v16 = 0;
  v42 = v9;
  v54 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v17 << 6);
      v22 = v45;
      v23 = v43;
      v24 = v51;
      v25 = v52;
      (*(v43 + 16))(v52, *(v45 + 48) + *(v43 + 72) * v21, v51);
      v26 = v50;
      sub_1D186155C(*(v22 + 56) + *(v44 + 72) * v21, v50, type metadata accessor for EndpointPath);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645598, &qword_1D1E79B40);
      v28 = *(v27 + 48);
      v29 = *(v23 + 32);
      v9 = v42;
      v29(v42, v25, v24);
      sub_1D18614F4(v26, &v9[v28], type metadata accessor for EndpointPath);
      (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
      v19 = v17;
LABEL_13:
      v30 = v48;
      sub_1D1741A90(v9, v48, &qword_1EC645590, &qword_1D1E79B38);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645598, &qword_1D1E79B40);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
      {
        break;
      }

      v32 = *(v31 + 48);
      v33 = v52;
      v34 = v51;
      (*v53)(v52, v30, v51);
      v35 = v50;
      sub_1D18614F4(v30 + v32, v50, type metadata accessor for EndpointPath);
      v36 = *(v49 + 48);
      v57 = *(v49 + 32);
      v58 = v36;
      v59 = *(v49 + 64);
      v37 = *(v49 + 16);
      v55 = *v49;
      v56 = v37;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v46)(v33, v34);
      sub_1D1E676EC();
      MEMORY[0x1D3892890](*(v35 + *(v47 + 20)));
      sub_1D1E6923C();
      sub_1D18615C4(v35, type metadata accessor for EndpointPath);
      result = sub_1D1E6926C();
      v16 = v19;
      v54 ^= result;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v54);
  }

  else
  {
LABEL_5:
    if (v39 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v39;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v39)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645598, &qword_1D1E79B40);
        (*(*(v38 - 8) + 56))(v9, 1, 1, v38);
        v14 = 0;
        goto LABEL_13;
      }

      v14 = *(v40 + 8 * v17);
      ++v16;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1858EFC(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = type metadata accessor for StaticMatterDevice(0);
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D1E66A7C();
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B8, &unk_1D1E79A50);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = *(a2 + 64);
  v45 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v44 = (v14 + 63) >> 6;
  v46 = v5 + 16;
  v55 = (v5 + 32);
  v49 = v5;
  v51 = a2;
  v52 = (v5 + 8);

  v18 = 0;
  v47 = v12;
  v48 = v10;
  v58 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v51;
      v25 = v49;
      v26 = v54;
      v27 = v56;
      (*(v49 + 16))(v54, *(v51 + 48) + *(v49 + 72) * v23, v56);
      v28 = v57;
      sub_1D186155C(*(v24 + 56) + *(v50 + 72) * v23, v57, type metadata accessor for StaticMatterDevice);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, &qword_1D1E96BE0);
      v30 = *(v29 + 48);
      v31 = *(v25 + 32);
      v32 = v48;
      v31(v48, v26, v27);
      v33 = v28;
      v10 = v32;
      sub_1D18614F4(v33, &v32[v30], type metadata accessor for StaticMatterDevice);
      (*(*(v29 - 8) + 56))(v32, 0, 1, v29);
      v21 = v19;
      v12 = v47;
LABEL_13:
      sub_1D1741A90(v10, v12, &qword_1EC6454B8, &unk_1D1E79A50);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, &qword_1D1E96BE0);
      if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v34 + 48);
      v36 = v54;
      v37 = v56;
      (*v55)(v54, v12, v56);
      v38 = &v12[v35];
      v39 = v57;
      sub_1D18614F4(v38, v57, type metadata accessor for StaticMatterDevice);
      v40 = *(v53 + 48);
      v59[2] = *(v53 + 32);
      v59[3] = v40;
      v60 = *(v53 + 64);
      v41 = *(v53 + 16);
      v59[0] = *v53;
      v59[1] = v41;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v52)(v36, v37);
      StaticMatterDevice.hash(into:)(v59);
      sub_1D18615C4(v39, type metadata accessor for StaticMatterDevice);
      result = sub_1D1E6926C();
      v18 = v21;
      v58 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v58);
  }

  else
  {
LABEL_5:
    if (v44 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v44;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v44)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, &qword_1D1E96BE0);
        (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v45 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1859478(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = type metadata accessor for StaticServiceGroup(0);
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D1E66A7C();
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645450, &qword_1D1E799E0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = *(a2 + 64);
  v45 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v44 = (v14 + 63) >> 6;
  v46 = v5 + 16;
  v55 = (v5 + 32);
  v49 = v5;
  v51 = a2;
  v52 = (v5 + 8);

  v18 = 0;
  v47 = v12;
  v48 = v10;
  v58 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v51;
      v25 = v49;
      v26 = v54;
      v27 = v56;
      (*(v49 + 16))(v54, *(v51 + 48) + *(v49 + 72) * v23, v56);
      v28 = v57;
      sub_1D186155C(*(v24 + 56) + *(v50 + 72) * v23, v57, type metadata accessor for StaticServiceGroup);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
      v30 = *(v29 + 48);
      v31 = *(v25 + 32);
      v32 = v48;
      v31(v48, v26, v27);
      v33 = v28;
      v10 = v32;
      sub_1D18614F4(v33, &v32[v30], type metadata accessor for StaticServiceGroup);
      (*(*(v29 - 8) + 56))(v32, 0, 1, v29);
      v21 = v19;
      v12 = v47;
LABEL_13:
      sub_1D1741A90(v10, v12, &qword_1EC645450, &qword_1D1E799E0);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
      if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v34 + 48);
      v36 = v54;
      v37 = v56;
      (*v55)(v54, v12, v56);
      v38 = &v12[v35];
      v39 = v57;
      sub_1D18614F4(v38, v57, type metadata accessor for StaticServiceGroup);
      v40 = *(v53 + 48);
      v59[2] = *(v53 + 32);
      v59[3] = v40;
      v60 = *(v53 + 64);
      v41 = *(v53 + 16);
      v59[0] = *v53;
      v59[1] = v41;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v52)(v36, v37);
      StaticServiceGroup.hash(into:)(v59);
      sub_1D18615C4(v39, type metadata accessor for StaticServiceGroup);
      result = sub_1D1E6926C();
      v18 = v21;
      v58 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v58);
  }

  else
  {
LABEL_5:
    if (v44 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v44;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v44)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645458, &qword_1D1E799E8);
        (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v45 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D18599F4(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = type metadata accessor for StaticService(0);
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D1E66A7C();
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = *(a2 + 64);
  v45 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v44 = (v14 + 63) >> 6;
  v46 = v5 + 16;
  v55 = (v5 + 32);
  v49 = v5;
  v51 = a2;
  v52 = (v5 + 8);

  v18 = 0;
  v47 = v12;
  v48 = v10;
  v58 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v51;
      v25 = v49;
      v26 = v54;
      v27 = v56;
      (*(v49 + 16))(v54, *(v51 + 48) + *(v49 + 72) * v23, v56);
      v28 = v57;
      sub_1D186155C(*(v24 + 56) + *(v50 + 72) * v23, v57, type metadata accessor for StaticService);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
      v30 = *(v29 + 48);
      v31 = *(v25 + 32);
      v32 = v48;
      v31(v48, v26, v27);
      v33 = v28;
      v10 = v32;
      sub_1D18614F4(v33, &v32[v30], type metadata accessor for StaticService);
      (*(*(v29 - 8) + 56))(v32, 0, 1, v29);
      v21 = v19;
      v12 = v47;
LABEL_13:
      sub_1D1741A90(v10, v12, &qword_1EC643C68, &unk_1D1E764C0);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
      if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v34 + 48);
      v36 = v54;
      v37 = v56;
      (*v55)(v54, v12, v56);
      v38 = &v12[v35];
      v39 = v57;
      sub_1D18614F4(v38, v57, type metadata accessor for StaticService);
      v40 = *(v53 + 48);
      v59[2] = *(v53 + 32);
      v59[3] = v40;
      v60 = *(v53 + 64);
      v41 = *(v53 + 16);
      v59[0] = *v53;
      v59[1] = v41;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v52)(v36, v37);
      StaticService.hash(into:)(v59);
      sub_1D18615C4(v39, type metadata accessor for StaticService);
      result = sub_1D1E6926C();
      v18 = v21;
      v58 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v58);
  }

  else
  {
LABEL_5:
    if (v44 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v44;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v44)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
        (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v45 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1859F70(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = type metadata accessor for StaticAccessory(0);
  v50 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v57 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D1E66A7C();
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454A0, &unk_1D1E79A30);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v43 - v11;
  v13 = *(a2 + 64);
  v45 = a2 + 64;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v44 = (v14 + 63) >> 6;
  v46 = v5 + 16;
  v55 = (v5 + 32);
  v49 = v5;
  v51 = a2;
  v52 = (v5 + 8);

  v18 = 0;
  v47 = v12;
  v48 = v10;
  v58 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = v51;
      v25 = v49;
      v26 = v54;
      v27 = v56;
      (*(v49 + 16))(v54, *(v51 + 48) + *(v49 + 72) * v23, v56);
      v28 = v57;
      sub_1D186155C(*(v24 + 56) + *(v50 + 72) * v23, v57, type metadata accessor for StaticAccessory);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
      v30 = *(v29 + 48);
      v31 = *(v25 + 32);
      v32 = v48;
      v31(v48, v26, v27);
      v33 = v28;
      v10 = v32;
      sub_1D18614F4(v33, &v32[v30], type metadata accessor for StaticAccessory);
      (*(*(v29 - 8) + 56))(v32, 0, 1, v29);
      v21 = v19;
      v12 = v47;
LABEL_13:
      sub_1D1741A90(v10, v12, &qword_1EC6454A0, &unk_1D1E79A30);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
      if ((*(*(v34 - 8) + 48))(v12, 1, v34) == 1)
      {
        break;
      }

      v35 = *(v34 + 48);
      v36 = v54;
      v37 = v56;
      (*v55)(v54, v12, v56);
      v38 = &v12[v35];
      v39 = v57;
      sub_1D18614F4(v38, v57, type metadata accessor for StaticAccessory);
      v40 = *(v53 + 48);
      v59[2] = *(v53 + 32);
      v59[3] = v40;
      v60 = *(v53 + 64);
      v41 = *(v53 + 16);
      v59[0] = *v53;
      v59[1] = v41;
      sub_1D1861484(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v52)(v36, v37);
      StaticAccessory.hash(into:)(v59);
      sub_1D18615C4(v39, type metadata accessor for StaticAccessory);
      result = sub_1D1E6926C();
      v18 = v21;
      v58 ^= result;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v58);
  }

  else
  {
LABEL_5:
    if (v44 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v44;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v44)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
        (*(*(v42 - 8) + 56))(v10, 1, 1, v42);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v45 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185A4EC(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v3 = type metadata accessor for StaticMatterDevice(0);
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645420, &unk_1D1E799B0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v32 - v10);
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v35 = a2;

  v18 = 0;
  v33 = v9;
  v37 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = v22 | (v19 << 6);
      v24 = *(*(v35 + 48) + 8 * v23);
      sub_1D186155C(*(v35 + 56) + *(v34 + 72) * v23, v5, type metadata accessor for StaticMatterDevice);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
      v26 = *(v25 + 48);
      v9 = v33;
      *v33 = v24;
      sub_1D18614F4(v5, &v9[v26], type metadata accessor for StaticMatterDevice);
      (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
      v21 = v19;
LABEL_13:
      sub_1D1741A90(v9, v11, &qword_1EC645420, &unk_1D1E799B0);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
      if ((*(*(v27 - 8) + 48))(v11, 1, v27) == 1)
      {
        break;
      }

      v28 = *v11;
      sub_1D18614F4(v11 + *(v27 + 48), v5, type metadata accessor for StaticMatterDevice);
      v29 = *(v36 + 48);
      v38[2] = *(v36 + 32);
      v38[3] = v29;
      v39 = *(v36 + 64);
      v30 = *(v36 + 16);
      v38[0] = *v36;
      v38[1] = v30;
      MEMORY[0x1D3892890](v28);
      StaticMatterDevice.hash(into:)(v38);
      sub_1D18615C4(v5, type metadata accessor for StaticMatterDevice);
      result = sub_1D1E6926C();
      v18 = v21;
      v37 ^= result;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v37);
  }

  else
  {
LABEL_5:
    if (v16 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
        (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D185A8E4(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v3 = type metadata accessor for StaticEndpoint(0);
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6455A0, &unk_1D1E79B48);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v31 - v10;
  v12 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 64);
  v16 = (v13 + 63) >> 6;
  v34 = a2;

  v18 = 0;
  v32 = v9;
  v36 = 0;
  if (v15)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = v22 | (v19 << 6);
      v24 = *(*(v34 + 48) + 2 * v23);
      sub_1D186155C(*(v34 + 56) + *(v33 + 72) * v23, v5, type metadata accessor for StaticEndpoint);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
      v26 = *(v25 + 48);
      v9 = v32;
      *v32 = v24;
      sub_1D18614F4(v5, &v9[v26], type metadata accessor for StaticEndpoint);
      (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
      v21 = v19;
LABEL_13:
      sub_1D1741A90(v9, v11, &qword_1EC6455A0, &unk_1D1E79B48);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
      if ((*(*(v27 - 8) + 48))(v11, 1, v27) == 1)
      {
        break;
      }

      sub_1D18614F4(&v11[*(v27 + 48)], v5, type metadata accessor for StaticEndpoint);
      v28 = *(v35 + 48);
      v37[2] = *(v35 + 32);
      v37[3] = v28;
      v38 = *(v35 + 64);
      v29 = *(v35 + 16);
      v37[0] = *v35;
      v37[1] = v29;
      sub_1D1E6923C();
      StaticEndpoint.hash(into:)(v37);
      sub_1D18615C4(v5, type metadata accessor for StaticEndpoint);
      result = sub_1D1E6926C();
      v18 = v21;
      v36 ^= result;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x1D3892850](v36);
  }

  else
  {
LABEL_5:
    if (v16 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v16;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
        (*(*(v30 - 8) + 56))(v9, 1, 1, v30);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v12 + 8 * v19);
      ++v18;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}