id sub_1BD8023E4()
{
  result = [*v0 uniqueID];
  if (result)
  {
    v2 = result;
    v3 = sub_1BE052434();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1BD802444()
{
  v0 = sub_1BE04BD74();
  v114 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v94 = &v94 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v108 = &v94 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v94 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v94 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v94 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v94 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v105 = &v94 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v94 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v109 = &v94 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v110 = &v94 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v112 = &v94 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v94 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v99 = &v94 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v104 = &v94 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v106 = &v94 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v111 = &v94 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v97 = &v94 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v96 = &v94 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v94 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v94 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v95 = &v94 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v98 = &v94 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v94 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v94 - v54;
  v56 = sub_1BE04C164();
  v57 = *(v56 - 8);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v60 = &v94 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[2](v60, v113, v56, v58);
  LODWORD(v61) = (v57[11])(v60, v56);
  if (v61 == *MEMORY[0x1E69B81B0])
  {
    v57 = v114;
    (v114[13])(v27, *MEMORY[0x1E69B80D8], v0);
    v61 = PKPassKitBundle();
    if (v61)
    {
      v62 = v61;
      v63 = sub_1BE04B6F4();

      (v57[1])(v27, v0);
      return v63;
    }

    __break(1u);
LABEL_75:
    if (v61 == *MEMORY[0x1E69B8230])
    {
      (*(v27 + 13))(v56, *MEMORY[0x1E69B80D8], v113);
      result = PKPassKitBundle();
      if (result)
      {
        v86 = result;
        v79 = v56;
        goto LABEL_53;
      }

      goto LABEL_108;
    }

LABEL_79:
    if (v61 == *MEMORY[0x1E69B8248])
    {
      (*(v27 + 13))(v60, *MEMORY[0x1E69B80D8], v113);
      result = PKPassKitBundle();
      if (result)
      {
        v86 = result;
        v79 = v60;
        goto LABEL_53;
      }

      goto LABEL_109;
    }

    goto LABEL_83;
  }

  v113 = v0;
  v27 = v114;
  if (v61 == *MEMORY[0x1E69B8198])
  {
    v64 = v113;
    (v114[13])(v10, *MEMORY[0x1E69B80D8], v113);
    v61 = PKPassKitBundle();
    if (v61)
    {
      v65 = v61;
      v63 = sub_1BE04B6F4();

      v66 = *(v27 + 1);
      v67 = v10;
LABEL_7:
      v68 = v64;
LABEL_16:
      v66(v67, v68);
      return v63;
    }

    __break(1u);
    goto LABEL_79;
  }

  if (v61 != *MEMORY[0x1E69B8218])
  {
    if (v61 == *MEMORY[0x1E69B81C0])
    {
      v69 = v113;
      (v114[13])(v52, *MEMORY[0x1E69B80D8], v113);
      v61 = PKPassKitBundle();
      if (!v61)
      {
        __break(1u);
        goto LABEL_87;
      }

      v71 = v61;
      goto LABEL_14;
    }

    if (v61 == *MEMORY[0x1E69B81A0])
    {
      v73 = v112;
      v64 = v113;
      (v114[13])(v112, *MEMORY[0x1E69B80D8], v113);
      result = PKPassKitBundle();
      if (result)
      {
        v74 = result;
LABEL_36:
        v63 = sub_1BE04B6F4();

        v66 = *(v27 + 1);
        v67 = v73;
        goto LABEL_7;
      }

      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (v61 == *MEMORY[0x1E69B8258])
    {
      v73 = v111;
      v64 = v113;
      (v114[13])(v111, *MEMORY[0x1E69B80D8], v113);
      result = PKPassKitBundle();
      if (result)
      {
        v74 = result;
        goto LABEL_36;
      }

      goto LABEL_92;
    }

    if (v61 == *MEMORY[0x1E69B81C8])
    {
      v73 = v110;
      v64 = v113;
      (v114[13])(v110, *MEMORY[0x1E69B80D8], v113);
      result = PKPassKitBundle();
      if (result)
      {
        v74 = result;
        goto LABEL_36;
      }

      goto LABEL_93;
    }

    if (v61 == *MEMORY[0x1E69B81A8])
    {
      v73 = v109;
      v64 = v113;
      (v114[13])(v109, *MEMORY[0x1E69B80D8], v113);
      result = PKPassKitBundle();
      if (result)
      {
        v74 = result;
        goto LABEL_36;
      }

LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    if (v61 == *MEMORY[0x1E69B8200])
    {
      goto LABEL_31;
    }

    if (v61 == *MEMORY[0x1E69B81D0])
    {
      v73 = v107;
      v64 = v113;
      (v114[13])(v107, *MEMORY[0x1E69B80D8], v113);
      result = PKPassKitBundle();
      if (result)
      {
        v74 = result;
        goto LABEL_36;
      }

      goto LABEL_96;
    }

    if (v61 == *MEMORY[0x1E69B8208])
    {
      v73 = v105;
      v64 = v113;
      (v114[13])(v105, *MEMORY[0x1E69B80D8], v113);
      result = PKPassKitBundle();
      if (result)
      {
        v74 = result;
        goto LABEL_36;
      }

      goto LABEL_97;
    }

    if (v61 == *MEMORY[0x1E69B8220])
    {
      v69 = v113;
      (v114[13])(v106, *MEMORY[0x1E69B80D8], v113);
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v71 = result;
      v52 = v106;
LABEL_14:
      v63 = sub_1BE04B6F4();

      v66 = *(v27 + 1);
      v67 = v52;
      goto LABEL_15;
    }

    if (v61 == *MEMORY[0x1E69B81E0])
    {
      v75 = v114;
      v76 = v113;
      (v114[13])(v104, *MEMORY[0x1E69B80D8], v113);
      result = PKPassKitBundle();
      if (result)
      {
        v77 = result;
        v78 = v104;
        v63 = sub_1BE04B6F4();

        v75[1](v78, v76);
        return v63;
      }

      goto LABEL_99;
    }

    if (v61 == *MEMORY[0x1E69B8250] || v61 == *MEMORY[0x1E69B8238])
    {
      v79 = v99;
      (v114[13])();
      result = PKPassKitBundle();
      if (!result)
      {
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v86 = result;
    }

    else
    {
      v79 = v45;
      v111 = v60;
      v112 = v56;
      v80 = v42;
      v82 = v96;
      v81 = v97;
      v83 = v100;
      v56 = v101;
      v60 = v102;
      v42 = v103;
      if (v61 == *MEMORY[0x1E69B8240])
      {
        (v114[13])(v98, *MEMORY[0x1E69B80D8], v113);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v84 = result;
        v85 = v98;
LABEL_57:
        v63 = sub_1BE04B6F4();

        v66 = *(v27 + 1);
        v67 = v85;
        goto LABEL_58;
      }

      if (v61 == *MEMORY[0x1E69B81F0])
      {
        (v114[13])(v95, *MEMORY[0x1E69B80D8], v113);
        result = PKPassKitBundle();
        if (!result)
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v84 = result;
        v85 = v95;
        goto LABEL_57;
      }

      if (v61 != *MEMORY[0x1E69B8210])
      {
        if (v61 == *MEMORY[0x1E69B81D8])
        {
          (v114[13])(v80, *MEMORY[0x1E69B80D8], v113);
          result = PKPassKitBundle();
          if (result)
          {
            v87 = result;
            v63 = sub_1BE04B6F4();

            v66 = *(v27 + 1);
            v67 = v80;
            goto LABEL_58;
          }

          goto LABEL_104;
        }

        if (v61 == *MEMORY[0x1E69B81E8])
        {
          (v114[13])(v96, *MEMORY[0x1E69B80D8], v113);
          result = PKPassKitBundle();
          if (result)
          {
            v88 = result;
            v63 = sub_1BE04B6F4();

            v66 = *(v27 + 1);
            v67 = v82;
            goto LABEL_58;
          }

          goto LABEL_105;
        }

        if (v61 == *MEMORY[0x1E69B81F8])
        {
          (v114[13])(v97, *MEMORY[0x1E69B80D8], v113);
          result = PKPassKitBundle();
          if (result)
          {
            v89 = result;
            v63 = sub_1BE04B6F4();

            v66 = *(v27 + 1);
            v67 = v81;
            goto LABEL_58;
          }

          goto LABEL_106;
        }

        if (v61 == *MEMORY[0x1E69B8190])
        {
          (v114[13])(v100, *MEMORY[0x1E69B80D8], v113);
          result = PKPassKitBundle();
          if (result)
          {
            v90 = result;
            v63 = sub_1BE04B6F4();

            v66 = *(v27 + 1);
            v67 = v83;
            goto LABEL_58;
          }

          goto LABEL_107;
        }

        goto LABEL_75;
      }

      (v114[13])(v79, *MEMORY[0x1E69B80D8], v113);
      result = PKPassKitBundle();
      if (!result)
      {
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
        goto LABEL_111;
      }

      v86 = result;
    }

LABEL_53:
    v63 = sub_1BE04B6F4();

    v66 = *(v27 + 1);
    v67 = v79;
LABEL_58:
    v68 = v113;
    goto LABEL_16;
  }

  v69 = v113;
  (v114[13])(v55, *MEMORY[0x1E69B80D8], v113);
  v61 = PKPassKitBundle();
  if (v61)
  {
    v70 = v61;
    v63 = sub_1BE04B6F4();

    v66 = *(v27 + 1);
    v67 = v55;
LABEL_15:
    v68 = v69;
    goto LABEL_16;
  }

  __break(1u);
LABEL_83:
  if (v61 == *MEMORY[0x1E69B81B8])
  {
    (*(v27 + 13))(v42, *MEMORY[0x1E69B80D8], v113);
    result = PKPassKitBundle();
    if (result)
    {
      v91 = result;
      v63 = sub_1BE04B6F4();

      v66 = *(v27 + 1);
      v67 = v42;
      goto LABEL_58;
    }

    goto LABEL_110;
  }

LABEL_87:
  if (v61 == *MEMORY[0x1E69B8228] || v61 == *MEMORY[0x1E69B8188])
  {
LABEL_31:
    v73 = v108;
    v64 = v113;
    (*(v27 + 13))(v108, *MEMORY[0x1E69B80D8], v113);
    result = PKPassKitBundle();
    if (result)
    {
      v74 = result;
      goto LABEL_36;
    }

    goto LABEL_95;
  }

  (*(v27 + 13))(v94, *MEMORY[0x1E69B80D8], v113);
  result = PKPassKitBundle();
  if (result)
  {
    v92 = result;
    v93 = v94;
    v63 = sub_1BE04B6F4();

    (*(v27 + 1))(v93, v113);
    (v57[1])(v111, v112);
    return v63;
  }

LABEL_111:
  __break(1u);
  return result;
}

void sub_1BD8036F8(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = sub_1BE04AF64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = *(*v1 + 16);
  if (v14)
  {
    v38 = *(v9 + 24);
    v15 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = *(v10 + 72);
    v17 = (v6 + 48);
    v34 = v6;
    v36 = (v6 + 32);
    v37 = v16;
    v18 = MEMORY[0x1E69E7CC0];
    v19 = &unk_1EBD39970;
    v35 = v5;
    do
    {
      sub_1BD809974(v15, v12, type metadata accessor for SEStorageUsageGroup.PassEntry);
      sub_1BD0DE19C(&v12[v38], v4, v19, &unk_1BE0B9F80);
      sub_1BD8099DC(v12, type metadata accessor for SEStorageUsageGroup.PassEntry);
      if ((*v17)(v4, 1, v5) == 1)
      {
        sub_1BD0DE53C(v4, v19, &unk_1BE0B9F80);
      }

      else
      {
        v20 = v19;
        v21 = *v36;
        (*v36)(v39, v4, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1BD1D9350(0, v18[2] + 1, 1, v18);
        }

        v23 = v18[2];
        v22 = v18[3];
        if (v23 >= v22 >> 1)
        {
          v18 = sub_1BD1D9350((v22 > 1), v23 + 1, 1, v18);
        }

        v18[2] = v23 + 1;
        v24 = v18 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v23;
        v5 = v35;
        v21(v24, v39, v35);
        v19 = v20;
      }

      v15 += v37;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1BD5DD258(v18, v33);
  v18, v25, v26, v27, v28, v29, v30, v31;
}

BOOL sub_1BD803A44(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_1BD808FF4(v7, v8);
}

void sub_1BD803AD4(uint64_t a1@<X8>)
{
  v79 = a1;
  v82 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v3 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v78 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v78 - v11;
  v13 = sub_1BE04AF64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v80 = &v78 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v78 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v89 = &v78 - v21;
  v22 = type metadata accessor for SEStorageUsageGroup(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v92 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v1 + *(type metadata accessor for SEStorageUsageCategory(0) + 20));
  v88 = *(v25 + 16);
  if (v88)
  {
    v26 = 0;
    v87 = v25 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v86 = *(v23 + 72);
    v101 = (v14 + 48);
    v102 = (v14 + 32);
    v95 = v14 + 16;
    v93 = v14 + 8;
    v83 = (v14 + 56);
    v84 = v12;
    v90 = MEMORY[0x1E69E7CC0];
    v97 = v3;
    v85 = v9;
    v100 = v14;
    while (1)
    {
      v91 = v26;
      v27 = v92;
      sub_1BD809974(v87 + v86 * v26, v92, type metadata accessor for SEStorageUsageGroup);
      v28 = *v27;
      v29 = *(*v27 + 16);
      if (v29)
      {
        v99 = *(v82 + 24);
        v30 = v28 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
        v31 = *(v81 + 72);
        v32 = MEMORY[0x1E69E7CC0];
        do
        {
          sub_1BD809974(v30, v3, type metadata accessor for SEStorageUsageGroup.PassEntry);
          sub_1BD0DE19C(&v99[v3], v6, &unk_1EBD39970, &unk_1BE0B9F80);
          sub_1BD8099DC(v3, type metadata accessor for SEStorageUsageGroup.PassEntry);
          if ((*v101)(v6, 1, v13) == 1)
          {
            sub_1BD0DE53C(v6, &unk_1EBD39970, &unk_1BE0B9F80);
          }

          else
          {
            v33 = *v102;
            (*v102)(v98, v6, v13);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = sub_1BD1D9350(0, *(v32 + 2) + 1, 1, v32);
            }

            v35 = *(v32 + 2);
            v34 = *(v32 + 3);
            if (v35 >= v34 >> 1)
            {
              v32 = sub_1BD1D9350((v34 > 1), v35 + 1, 1, v32);
            }

            *(v32 + 2) = v35 + 1;
            v33(&v32[((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v35], v98, v13);
            v3 = v97;
          }

          v30 += v31;
          --v29;
        }

        while (v29);
      }

      else
      {
        v32 = MEMORY[0x1E69E7CC0];
      }

      v36 = *(v32 + 2);
      if (v36)
      {
        v37 = *(v100 + 16);
        v38 = v96;
        v99 = &v32[(*(v100 + 80) + 32) & ~*(v100 + 80)];
        v94 = v37;
        (v37)(v96);
        v39 = v80;
        if (v36 != 1)
        {
          v65 = 1;
          while (1)
          {
            v66 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              break;
            }

            v67 = v100;
            v94(v39, &v99[*(v100 + 72) * v65], v13);
            sub_1BD805124(&qword_1EBD525D0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
            v68 = sub_1BE0522F4();
            v69 = *(v67 + 8);
            if (v68)
            {
              v69(v38, v13);
              (*v102)(v38, v39, v13);
            }

            else
            {
              v69(v39, v13);
            }

            ++v65;
            v38 = v96;
            if (v66 == v36)
            {
              goto LABEL_18;
            }
          }

          __break(1u);
          return;
        }

LABEL_18:
        v40 = v38;
        v41 = v85;
        (*v102)(v85, v40, v13);
        (*v83)(v41, 0, 1, v13);
        v32, v42, v43, v44, v45, v46, v47, v48;
      }

      else
      {
        v41 = v85;
        (*v83)(v85, 1, 1, v13);
        v32, v49, v50, v51, v52, v53, v54, v55;
      }

      v56 = v84;
      sub_1BD1CBBEC(v41, v84);
      sub_1BD8099DC(v92, type metadata accessor for SEStorageUsageGroup);
      v57 = (*v101)(v56, 1, v13);
      v3 = v97;
      if (v57 == 1)
      {
        sub_1BD0DE53C(v56, &unk_1EBD39970, &unk_1BE0B9F80);
      }

      else
      {
        v58 = *v102;
        (*v102)(v89, v56, v13);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v60 = v100;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v90 = sub_1BD1D9350(0, *(v90 + 2) + 1, 1, v90);
        }

        v62 = *(v90 + 2);
        v61 = *(v90 + 3);
        if (v62 >= v61 >> 1)
        {
          v90 = sub_1BD1D9350((v61 > 1), v62 + 1, 1, v90);
        }

        v63 = v89;
        v64 = v90;
        *(v90 + 2) = v62 + 1;
        v58(&v64[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v62], v63, v13);
      }

      v26 = v91 + 1;
      if (v91 + 1 == v88)
      {
        goto LABEL_33;
      }
    }
  }

  v90 = MEMORY[0x1E69E7CC0];
LABEL_33:
  v70 = v90;
  sub_1BD5DD258(v90, v79);
  v70, v71, v72, v73, v74, v75, v76, v77;
}

uint64_t sub_1BD804328()
{
  v1 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SEStorageUsageGroup(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for SEStorageUsageCategory(0);
  v10 = *(v0 + *(result + 20));
  v20 = *(v10 + 16);
  if (v20)
  {
    v11 = 0;
    v12 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v18 = v10;
    v19 = v6;
    v17 = v12;
    while (2)
    {
      if (v11 >= *(v10 + 16))
      {
LABEL_13:
        __break(1u);
        return result;
      }

      result = sub_1BD809974(v12 + *(v6 + 72) * v11, v8, type metadata accessor for SEStorageUsageGroup);
      v13 = 0;
      ++v11;
      v14 = *v8;
      v15 = *(*v8 + 16);
      while (v15 != v13)
      {
        if (v13 >= *(v14 + 16))
        {
          __break(1u);
          goto LABEL_13;
        }

        sub_1BD809974(v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13++, v4, type metadata accessor for SEStorageUsageGroup.PassEntry);
        v16 = v4[*(v1 + 32)];
        result = sub_1BD8099DC(v4, type metadata accessor for SEStorageUsageGroup.PassEntry);
        if ((v16 & 1) == 0)
        {
          sub_1BD8099DC(v8, type metadata accessor for SEStorageUsageGroup);
          return 0;
        }
      }

      result = sub_1BD8099DC(v8, type metadata accessor for SEStorageUsageGroup);
      v6 = v19;
      v12 = v17;
      v10 = v18;
      if (v11 != v20)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t sub_1BD804594(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04C164();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD809974(v2, v10, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v11 = (*(v5 + 48))(v10, 3, v4);
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = 3;
    }

    goto LABEL_8;
  }

  if (v11)
  {
    v12 = 0;
LABEL_8:
    MEMORY[0x1BFB40DA0](v12);
    goto LABEL_9;
  }

  (*(v5 + 32))(v7, v10, v4);
  MEMORY[0x1BFB40DA0](1);
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260], MEMORY[0x1E69B8268]);
  sub_1BE052294();
  (*(v5 + 8))(v7, v4);
LABEL_9:
  v13 = type metadata accessor for SEStorageUsageCategory(0);
  return sub_1BD3D6D0C(a1, *(v2 + *(v13 + 20)));
}

uint64_t sub_1BD8047A0()
{
  v1 = v0;
  v2 = sub_1BE04C164();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE053D04();
  sub_1BD809974(v1, v8, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v9 = (*(v3 + 48))(v8, 3, v2);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    goto LABEL_8;
  }

  if (v9)
  {
    v10 = 0;
LABEL_8:
    MEMORY[0x1BFB40DA0](v10);
    goto LABEL_9;
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x1BFB40DA0](1);
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260], MEMORY[0x1E69B8268]);
  sub_1BE052294();
  (*(v3 + 8))(v5, v2);
LABEL_9:
  v11 = type metadata accessor for SEStorageUsageCategory(0);
  sub_1BD3D6D0C(v14, *(v1 + *(v11 + 20)));
  return sub_1BE053D64();
}

uint64_t sub_1BD8049C4(uint64_t a1)
{
  v2 = sub_1BE04C164();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD809974(v1, v8, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v9 = (*(v3 + 48))(v8, 3, v2);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }
  }

  else
  {
    if (!v9)
    {
      (*(v3 + 32))(v5, v8, v2);
      MEMORY[0x1BFB40DA0](1);
      sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260], MEMORY[0x1E69B8268]);
      sub_1BE052294();
      return (*(v3 + 8))(v5, v2);
    }

    v11 = 0;
  }

  return MEMORY[0x1BFB40DA0](v11);
}

uint64_t sub_1BD804BB0()
{
  v1 = v0;
  v2 = sub_1BE04C164();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE053D04();
  sub_1BD809974(v1, v8, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v9 = (*(v3 + 48))(v8, 3, v2);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 3;
    }

    goto LABEL_8;
  }

  if (v9)
  {
    v10 = 0;
LABEL_8:
    MEMORY[0x1BFB40DA0](v10);
    return sub_1BE053D64();
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x1BFB40DA0](1);
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260], MEMORY[0x1E69B8268]);
  sub_1BE052294();
  (*(v3 + 8))(v5, v2);
  return sub_1BE053D64();
}

uint64_t sub_1BD804DBC@<X0>(void *a1@<X8>)
{
  type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  result = sub_1BE053974();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1BD804E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1BD809060(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1BD3FF494(v7, v8);
}

uint64_t sub_1BD804E8C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1BE04C164();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE053D04();
  sub_1BD809974(v4, v11, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v12 = (*(v6 + 48))(v11, 3, v5);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    goto LABEL_8;
  }

  if (v12)
  {
    v13 = 0;
LABEL_8:
    MEMORY[0x1BFB40DA0](v13);
    goto LABEL_9;
  }

  (*(v6 + 32))(v8, v11, v5);
  MEMORY[0x1BFB40DA0](1);
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260], MEMORY[0x1E69B8268]);
  sub_1BE052294();
  (*(v6 + 8))(v8, v5);
LABEL_9:
  sub_1BD3D6D0C(v16, *(v4 + *(a2 + 20)));
  return sub_1BE053D64();
}

uint64_t sub_1BD805124(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD8051B4(uint64_t a1)
{
  v2 = sub_1BE04AF64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  sub_1BE053084();
  v9 = *(v1 + 8);
  MEMORY[0x1BFB40DA0](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v12 = *v11;
      sub_1BE048C84();
      sub_1BE052524();
      v12, v13, v14, v15, v16, v17, v18, v19;
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  v20 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  sub_1BD0DE19C(v1 + *(v20 + 24), v8, &unk_1EBD39970, &unk_1BE0B9F80);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1BE053D24();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1BE053D24();
    sub_1BD805124(&qword_1EBD52550, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1BE052294();
    (*(v3 + 8))(v5, v2);
  }

  v21 = *(v1 + *(v20 + 28));
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  MEMORY[0x1BFB40DD0](*&v21);
  return sub_1BE053D24();
}

uint64_t sub_1BD805434(uint64_t a1)
{
  sub_1BD3D6EDC(a1, *v1);
  v2 = type metadata accessor for SEStorageUsageGroup(0);
  sub_1BE04C164();
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260], MEMORY[0x1E69B8268]);
  sub_1BE052294();
  v3 = *(v1 + *(v2 + 24));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1BFB40DD0](*&v3);
  v4 = *(v1 + *(v2 + 28));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1BFB40DD0](*&v4);
}

uint64_t sub_1BD805514()
{
  sub_1BE053D04();
  sub_1BD3D6EDC(v5, *v0);
  v1 = type metadata accessor for SEStorageUsageGroup(0);
  sub_1BE04C164();
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260], MEMORY[0x1E69B8268]);
  sub_1BE052294();
  v2 = *(v0 + *(v1 + 24));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1BFB40DD0](*&v2);
  v3 = *(v0 + *(v1 + 28));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1BFB40DD0](*&v3);
  return sub_1BE053D64();
}

void sub_1BD80560C(uint64_t *a1@<X8>)
{
  v3 = [*v1 uniqueID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BE052434();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD805670()
{
  sub_1BE053D04();
  sub_1BD8051B4(v1);
  return sub_1BE053D64();
}

uint64_t sub_1BD8056CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1BE053D04();
  a4(v6);
  return sub_1BE053D64();
}

uint64_t sub_1BD805710@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BE04C154();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1BD80574C(uint64_t a1, uint64_t a2)
{
  sub_1BE053D04();
  sub_1BD3D6EDC(v7, *v2);
  sub_1BE04C164();
  sub_1BD805124(&qword_1EBD3A348, MEMORY[0x1E69B8260], MEMORY[0x1E69B8268]);
  sub_1BE052294();
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1BFB40DD0](*&v4);
  v5 = *(v2 + *(a2 + 28));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x1BFB40DD0](*&v5);
  return sub_1BE053D64();
}

__n128 sub_1BD805880@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1BE04C164();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD809974(v2, v10, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v11 = (*(v5 + 48))(v10, 3, v4);
  if (v11 > 1)
  {
    if (v11 != 2)
    {
      v53.n128_u8[0] = 1;
      LOBYTE(v107) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C20, &qword_1BE0FB588);
      sub_1BD809A3C();
      sub_1BE04F9A4();
      v105 = v81;
      v106 = v82;
      LOBYTE(v107) = v83;
      v101 = v77;
      v102 = v78;
      v104 = v80;
      v103 = v79;
      sub_1BD809AE0(&v101);
      v99 = v111;
      v100[0] = v112[0];
      *(v100 + 10) = *(v112 + 10);
      v95 = v107;
      v96 = v108;
      v98 = v110;
      v97 = v109;
      v91 = v103;
      v92 = v104;
      v94 = v106;
      v93 = v105;
      v90 = v102;
      v89 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C40, &qword_1BE0FB598);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C48, &qword_1BE0FB5A0);
      sub_1BD809AEC();
      sub_1BD80A2F8();
      sub_1BE04F9A4();
      goto LABEL_9;
    }

    v12 = sub_1BE051CD4();
    v14 = v13;
    sub_1BD808F68(&v101);
    v15 = v102;
    v27 = v101;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v28.n128_u64[0] = v12;
    v28.n128_u64[1] = v14;
    v29 = v27;
    v30 = v15;
    v103 = v15;
    v104 = v31;
    v105 = v32;
    v106 = v33;
    v101 = v28;
    v102 = v27;
    v40.n128_u8[0] = 0;
    LOBYTE(v107) = 0;
    sub_1BD0DE19C(&v28, &v89, &qword_1EBD54C20, &qword_1BE0FB588);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C20, &qword_1BE0FB588);
    sub_1BD809A3C();
    sub_1BE04F9A4();
    v105 = v57;
    v106 = v58;
    LOBYTE(v107) = v59;
    v101 = v53;
    v102 = v54;
    v104 = v56;
    v103 = v55;
    sub_1BD809AE0(&v101);
    v87 = v111;
    v88[0] = v112[0];
    *(v88 + 10) = *(v112 + 10);
    v83 = v107;
    v84 = v108;
    v85 = v109;
    v86 = v110;
    v79 = v103;
    v80 = v104;
    v81 = v105;
    v82 = v106;
    v77 = v101;
    v78 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C40, &qword_1BE0FB598);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C48, &qword_1BE0FB5A0);
    sub_1BD809AEC();
    sub_1BD80A2F8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(&v28, &qword_1EBD54C20, &qword_1BE0FB588);
    v75 = v99;
    v76[0] = v100[0];
    v16 = *(v100 + 10);
    goto LABEL_7;
  }

  if (v11)
  {
    v17 = sub_1BE051CD4();
    v19 = v18;
    sub_1BD808F68(&v101);
    v20 = v102;
    v27 = v101;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v40.n128_u64[0] = v17;
    v40.n128_u64[1] = v19;
    v41 = v27;
    v42 = v20;
    v57 = v44;
    v58 = v45;
    v55 = v20;
    v56 = v43;
    v53 = v40;
    v54 = v27;
    sub_1BD80A398(&v53);
    v111 = v63;
    v112[0] = v64[0];
    *(v112 + 9) = *(v64 + 9);
    v107 = v59;
    v108 = v60;
    v110 = v62;
    v109 = v61;
    v103 = v55;
    v104 = v56;
    v106 = v58;
    v105 = v57;
    v102 = v54;
    v101 = v53;
    sub_1BD0DE19C(&v40, &v89, &qword_1EBD54C20, &qword_1BE0FB588);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C20, &qword_1BE0FB588);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C60, &qword_1BE0FB5A8);
    sub_1BD809A3C();
    sub_1BD809B78();
    sub_1BE04F9A4();
    v111 = v38;
    v112[0] = v39[0];
    *(v112 + 9) = *(v39 + 9);
    v107 = v34;
    v108 = v35;
    v110 = v37;
    v109 = v36;
    v103 = v30;
    v104 = v31;
    v106 = v33;
    v105 = v32;
    v102 = v29;
    v101 = v28;
    sub_1BD80A390(&v101);
    v87 = v111;
    v88[0] = v112[0];
    *(v88 + 10) = *(v112 + 10);
    v83 = v107;
    v84 = v108;
    v85 = v109;
    v86 = v110;
    v79 = v103;
    v80 = v104;
    v81 = v105;
    v82 = v106;
    v77 = v101;
    v78 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C40, &qword_1BE0FB598);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C48, &qword_1BE0FB5A0);
    sub_1BD809AEC();
    sub_1BD80A2F8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(&v40, &qword_1EBD54C20, &qword_1BE0FB588);
    v75 = v99;
    v76[0] = v100[0];
    v16 = *(v100 + 10);
LABEL_7:
    *(v76 + 10) = v16;
    v71 = v95;
    v72 = v96;
    v73 = v97;
    v74 = v98;
    v67 = v91;
    v68 = v92;
    v69 = v93;
    v70 = v94;
    v65 = v89;
    v66 = v90;
    goto LABEL_9;
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_1BD806388(v7, &v101);
  sub_1BE051CD4();
  sub_1BE04E5E4();
  v50 = v111;
  v51 = v112[0];
  v52 = *&v112[1];
  v46 = v107;
  v47 = v108;
  v48 = v109;
  v49 = v110;
  v42 = v103;
  v43 = v104;
  v44 = v105;
  v45 = v106;
  v40 = v101;
  v41 = v102;
  v63 = v111;
  v64[0] = v112[0];
  *&v64[1] = *&v112[1];
  v59 = v107;
  v60 = v108;
  v61 = v109;
  v62 = v110;
  v55 = v103;
  v56 = v104;
  v57 = v105;
  v58 = v106;
  v53 = v101;
  v54 = v102;
  sub_1BD80A384(&v53);
  v111 = v63;
  v112[0] = v64[0];
  *(v112 + 9) = *(v64 + 9);
  v107 = v59;
  v108 = v60;
  v110 = v62;
  v109 = v61;
  v103 = v55;
  v104 = v56;
  v106 = v58;
  v105 = v57;
  v102 = v54;
  v101 = v53;
  sub_1BD0DE19C(&v40, &v89, &qword_1EBD54C60, &qword_1BE0FB5A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C20, &qword_1BE0FB588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C60, &qword_1BE0FB5A8);
  sub_1BD809A3C();
  sub_1BD809B78();
  sub_1BE04F9A4();
  v111 = v38;
  v112[0] = v39[0];
  *(v112 + 9) = *(v39 + 9);
  v107 = v34;
  v108 = v35;
  v110 = v37;
  v109 = v36;
  v103 = v30;
  v104 = v31;
  v106 = v33;
  v105 = v32;
  v102 = v29;
  v101 = v28;
  sub_1BD80A390(&v101);
  v87 = v111;
  v88[0] = v112[0];
  *(v88 + 10) = *(v112 + 10);
  v83 = v107;
  v84 = v108;
  v85 = v109;
  v86 = v110;
  v79 = v103;
  v80 = v104;
  v81 = v105;
  v82 = v106;
  v77 = v101;
  v78 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C40, &qword_1BE0FB598);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C48, &qword_1BE0FB5A0);
  sub_1BD809AEC();
  sub_1BD80A2F8();
  sub_1BE04F9A4();
  sub_1BD0DE53C(&v40, &qword_1EBD54C60, &qword_1BE0FB5A8);
  v75 = v99;
  v76[0] = v100[0];
  *(v76 + 10) = *(v100 + 10);
  v71 = v95;
  v72 = v96;
  v73 = v97;
  v74 = v98;
  v67 = v91;
  v68 = v92;
  v69 = v93;
  v70 = v94;
  v65 = v89;
  v66 = v90;
  (*(v5 + 8))(v7, v4);
LABEL_9:
  v21 = v76[0];
  *(a1 + 160) = v75;
  *(a1 + 176) = v21;
  *(a1 + 186) = *(v76 + 10);
  v22 = v72;
  *(a1 + 96) = v71;
  *(a1 + 112) = v22;
  v23 = v74;
  *(a1 + 128) = v73;
  *(a1 + 144) = v23;
  v24 = v68;
  *(a1 + 32) = v67;
  *(a1 + 48) = v24;
  v25 = v70;
  *(a1 + 64) = v69;
  *(a1 + 80) = v25;
  result = v66;
  *a1 = v65;
  *(a1 + 16) = result;
  return result;
}

void sub_1BD806388(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v6 = sub_1BE051584();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v214 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE04C164();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v214 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x1E69B81B0])
  {
    v16 = sub_1BE052404();
    v17 = PKUIImageNamed(v16);

    if (v17)
    {
      v18 = sub_1BE051544();
      (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
      v19 = sub_1BE0515E4();
      v18, v20, v21, v22, v23, v24, v25, v26;
      (*(v7 + 8))(v9, v6);
      *(v263 + 8) = xmmword_1BE0CB9B0;
      *&v263[0] = v19;
      *(&v263[1] + 1) = 0;
      v263[2] = 0uLL;
      LOBYTE(v263[3]) = 1;
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38, &qword_1BE0FB590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
      sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38, &qword_1BE0FB590);
      sub_1BD223C50();
      sub_1BE04F9A4();
      LOBYTE(v226) = v279[2];
      LOBYTE(v224[0]) = 0;
      LOWORD(v279[2]) = LOBYTE(v279[2]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0, &unk_1BE0FB5D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CC0, &qword_1BE0FB5E0);
      sub_1BD809E58();
      sub_1BD809EFC();
      sub_1BE04F9A4();
      v278 = v255[0];
      v279[0] = v255[1];
      v279[1] = v256;
      LOWORD(v279[2]) = v257;
      LOBYTE(v236[0]) = 0;
      BYTE2(v279[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CA0, &qword_1BE0FB5C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CD0, &qword_1BE0FB5E8);
      sub_1BD809DCC();
      sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &qword_1BE0FB5E8, sub_1BD809EFC);
      sub_1BE04F9A4();
      v278 = v270;
      v279[0] = v271;
      v279[1] = v272[0];
      *(&v279[1] + 15) = *(v272 + 15);
LABEL_4:
      sub_1BD80A3D4(&v278);
LABEL_5:
      v251 = v281;
      v252 = v282;
      v253 = v283[0];
      v254 = v283[1];
      v247 = v279[1];
      v248 = v279[2];
      v249 = v279[3];
      v250 = v280;
      v245 = v278;
      v246 = v279[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C90, &qword_1BE0FB5C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CE0, &qword_1BE0FB5F0);
      sub_1BD809D14();
      sub_1BD809FA8();
      sub_1BE04F9A4();
      v34 = v19;
LABEL_6:
      v34, v27, v28, v29, v30, v31, v32, v33;
      v290 = v266;
      v291 = v267;
      v292 = v268;
      v293 = v269;
      v286 = v263[2];
      v287 = v263[3];
      v288 = v264;
      v289 = v265;
      v284 = v263[0];
      v285 = v263[1];
LABEL_19:
      v75 = v291;
      *(a3 + 96) = v290;
      *(a3 + 112) = v75;
      *(a3 + 128) = v292;
      *(a3 + 144) = v293;
      v76 = v287;
      *(a3 + 32) = v286;
      *(a3 + 48) = v76;
      v77 = v289;
      *(a3 + 64) = v288;
      *(a3 + 80) = v77;
      v78 = v285;
      *a3 = v284;
      *(a3 + 16) = v78;
      return;
    }

    __break(1u);
    goto LABEL_65;
  }

  v217 = a3;
  if (v15 == *MEMORY[0x1E69B8198])
  {
    v35 = sub_1BE051CD4();
    v37 = v36;
    sub_1BD808F68(&v278);
    v39 = *(&v278 + 1);
    v38 = v278;
    v41 = *(&v279[0] + 1);
    v40 = *&v279[0];
    *&v226 = v35;
    *(&v226 + 1) = v37;
    v227 = v278;
    v228 = v279[0];
    sub_1BD6434BC(&v226);
    v281 = v232;
    v282 = v233;
    v283[0] = v234;
    LOBYTE(v283[1]) = v235;
    v279[1] = v228;
    v279[2] = v229;
    v279[3] = v230;
    v280 = v231;
    v278 = v226;
    v279[0] = v227;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D10, &qword_1BE0FB608);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38, &qword_1BE0FB590);
    sub_1BD80A164();
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38, &qword_1BE0FB590);
    sub_1BE04F9A4();
    v241 = v251;
    v242 = v252;
    v243 = v253;
    LOBYTE(v244) = v254;
    v237 = v247;
    v238 = v248;
    v239 = v249;
    v240 = v250;
    v236[0] = v245;
    v236[1] = v246;
    sub_1BD80A3B8(v236);
LABEL_9:
    v281 = v241;
    v282 = v242;
    v283[0] = v243;
    LOWORD(v283[1]) = v244;
    v279[1] = v237;
    v279[2] = v238;
    v279[3] = v239;
    v280 = v240;
    v278 = v236[0];
    v279[0] = v236[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0, &unk_1BE0FB5D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D00, &qword_1BE0FB600);
    sub_1BD809E58();
    sub_1BD80A0C0();
    sub_1BE04F9A4();
    v275 = v266;
    v276 = v267;
    v277[0] = v268;
    LOWORD(v277[1]) = v269;
    v272[0] = v263[2];
    v272[1] = v263[3];
    v273 = v264;
    v274 = v265;
    v270 = v263[0];
    v271 = v263[1];
    sub_1BD80A3C4(&v270);
    v281 = v275;
    v282 = v276;
    v283[0] = v277[0];
    *(v283 + 15) = *(v277 + 15);
    v279[1] = v272[0];
    v279[2] = v272[1];
    v279[3] = v273;
    v280 = v274;
    v278 = v270;
    v279[0] = v271;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CF0, &qword_1BE0FB5F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D30, &qword_1BE0FB618);
    sub_1BD80A034();
    sub_1BD80A25C();
    sub_1BE04F9A4();
    v281 = v260;
    v282 = v261;
    v283[0] = *v262;
    *(v283 + 15) = *&v262[15];
    v279[1] = v256;
    v279[2] = v257;
    v279[3] = v258;
    v280 = v259;
    v278 = v255[0];
    v279[0] = v255[1];
    sub_1BD80A3AC(&v278);
LABEL_16:
    v251 = v281;
    v252 = v282;
    v253 = v283[0];
    v254 = v283[1];
    v247 = v279[1];
    v248 = v279[2];
    v249 = v279[3];
    v250 = v280;
    v245 = v278;
    v246 = v279[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C90, &qword_1BE0FB5C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CE0, &qword_1BE0FB5F0);
    sub_1BD809D14();
    sub_1BD809FA8();
    sub_1BE04F9A4();
    v41, v46, v47, v48, v49, v50, v51, v52;
    v40, v53, v54, v55, v56, v57, v58, v59;
    v39, v60, v61, v62, v63, v64, v65, v66;
    v74 = v38;
LABEL_17:
    v74, v67, v68, v69, v70, v71, v72, v73;
LABEL_18:
    v290 = v266;
    v291 = v267;
    v292 = v268;
    v293 = v269;
    v286 = v263[2];
    v287 = v263[3];
    v288 = v264;
    v289 = v265;
    v284 = v263[0];
    v285 = v263[1];
    a3 = v217;
    goto LABEL_19;
  }

  if (v15 == *MEMORY[0x1E69B8218] || v15 == *MEMORY[0x1E69B81C0])
  {
    goto LABEL_15;
  }

  if (v15 == *MEMORY[0x1E69B81A0])
  {
    v79 = sub_1BE052404();
    v80 = PKUIImageNamed(v79);

    if (!v80)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v81 = sub_1BE051544();
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v82 = sub_1BE0515E4();
    v81, v83, v84, v85, v86, v87, v88, v89;
    (*(v7 + 8))(v9, v6);
    v263[0] = v82;
    LOWORD(v263[1]) = 1;
    BYTE2(v263[1]) = 0;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
    sub_1BD223C50();
    sub_1BE04F9A4();
    LOBYTE(v224[0]) = BYTE2(v279[0]);
    LOBYTE(v222[0]) = 1;
    *(v279 + 3) = v236[0];
    *(&v279[1] + 1) = *(v236 + 14);
    BYTE1(v279[2]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0, &unk_1BE0FB5D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CC0, &qword_1BE0FB5E0);
    sub_1BD809E58();
    sub_1BD809EFC();
    sub_1BE04F9A4();
    v278 = v255[0];
    v279[0] = v255[1];
    v279[1] = v256;
    LOWORD(v279[2]) = v257;
    LOBYTE(v226) = 0;
    BYTE2(v279[2]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CA0, &qword_1BE0FB5C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CD0, &qword_1BE0FB5E8);
    sub_1BD809DCC();
    sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &qword_1BE0FB5E8, sub_1BD809EFC);
    sub_1BE04F9A4();
    v278 = v270;
    v279[0] = v271;
    v279[1] = v272[0];
    *(&v279[1] + 15) = *(v272 + 15);
    goto LABEL_23;
  }

  if (v15 == *MEMORY[0x1E69B8258])
  {
    goto LABEL_15;
  }

  if (v15 == *MEMORY[0x1E69B81C8])
  {
    v90 = sub_1BE052404();
    v91 = PKUIImageNamed(v90);

    a3 = v217;
    if (v91)
    {
      v92 = sub_1BE051544();
      (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
      v19 = sub_1BE0515E4();
      v92, v93, v94, v95, v96, v97, v98, v99;
      (*(v7 + 8))(v9, v6);
      v263[0] = v19;
      LOWORD(v263[1]) = 1;
      BYTE2(v263[1]) = 1;
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
      sub_1BD223C50();
      sub_1BE04F9A4();
      LOBYTE(v224[0]) = BYTE2(v279[0]);
      LOBYTE(v222[0]) = 1;
      *(v279 + 3) = v236[0];
      *(&v279[1] + 1) = *(v236 + 14);
      BYTE1(v279[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0, &unk_1BE0FB5D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CC0, &qword_1BE0FB5E0);
      sub_1BD809E58();
      sub_1BD809EFC();
      sub_1BE04F9A4();
      v278 = v255[0];
      v279[0] = v255[1];
      v279[1] = v256;
      LOWORD(v279[2]) = v257;
      LOBYTE(v226) = 0;
      BYTE2(v279[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CA0, &qword_1BE0FB5C8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CD0, &qword_1BE0FB5E8);
      sub_1BD809DCC();
      sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &qword_1BE0FB5E8, sub_1BD809EFC);
      sub_1BE04F9A4();
      v278 = v270;
      v279[0] = v271;
      v279[1] = v272[0];
      *(&v279[1] + 15) = *(v272 + 15);
      goto LABEL_4;
    }

    goto LABEL_66;
  }

  a3 = v217;
  if (v15 == *MEMORY[0x1E69B81A8])
  {
    v100 = sub_1BE052404();
    v101 = PKUIImageNamed(v100);

    if (!v101)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v102 = sub_1BE051544();
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v19 = sub_1BE0515E4();
    v102, v103, v104, v105, v106, v107, v108, v109;
    (*(v7 + 8))(v9, v6);
    v263[0] = v19;
    LOWORD(v263[1]) = 1;
    BYTE2(v263[1]) = 0;
    goto LABEL_31;
  }

  if (v15 == *MEMORY[0x1E69B8200])
  {
LABEL_34:
    v110 = sub_1BE051CD4();
    v112 = v111;
    sub_1BD808F68(&v278);
    v113 = v278;
    v114 = v279[0];
    *&v263[0] = v110;
    *(&v263[0] + 1) = v112;
    v263[1] = v278;
    v263[2] = v279[0];
    LOBYTE(v263[3]) = 0;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38, &qword_1BE0FB590);
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38, &qword_1BE0FB590);
    sub_1BE04F9A4();
    v270 = v278;
    v271 = v279[0];
    v272[0] = v279[1];
    LOBYTE(v272[1]) = v279[2];
    sub_1BD80A3A0(&v270);
    v281 = v275;
    v282 = v276;
    v283[0] = v277[0];
    *(v283 + 15) = *(v277 + 15);
    v279[1] = v272[0];
    v279[2] = v272[1];
    v279[3] = v273;
    v280 = v274;
    v278 = v270;
    v279[0] = v271;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CF0, &qword_1BE0FB5F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D30, &qword_1BE0FB618);
    sub_1BD80A034();
    sub_1BD80A25C();
    sub_1BE04F9A4();
    v281 = v260;
    v282 = v261;
    v283[0] = *v262;
    *(v283 + 15) = *&v262[15];
    v279[1] = v256;
    v279[2] = v257;
    v279[3] = v258;
    v280 = v259;
    v278 = v255[0];
    v279[0] = v255[1];
    sub_1BD80A3AC(&v278);
    v251 = v281;
    v252 = v282;
    v253 = v283[0];
    v254 = v283[1];
    v247 = v279[1];
    v248 = v279[2];
    v249 = v279[3];
    v250 = v280;
    v245 = v278;
    v246 = v279[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C90, &qword_1BE0FB5C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CE0, &qword_1BE0FB5F0);
    sub_1BD809D14();
    sub_1BD809FA8();
    sub_1BE04F9A4();
    *(&v114 + 1), v115, v116, v117, v118, v119, v120, v121;
    v114, v122, v123, v124, v125, v126, v127, v128;
    *(&v113 + 1), v129, v130, v131, v132, v133, v134, v135;
    v34 = v113;
    goto LABEL_6;
  }

  if (v15 == *MEMORY[0x1E69B81D0])
  {
    v136 = sub_1BE052404();
    v137 = PKUIImageNamed(v136);

    if (!v137)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v138 = sub_1BE051544();
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v19 = sub_1BE0515E4();
    v138, v139, v140, v141, v142, v143, v144, v145;
    (*(v7 + 8))(v9, v6);
    v263[0] = v19;
    LOWORD(v263[1]) = 1;
    BYTE2(v263[1]) = 1;
LABEL_31:
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
    sub_1BD223C50();
    sub_1BE04F9A4();
    v263[0] = v278;
    BYTE2(v263[1]) = BYTE2(v279[0]) != 0;
    LOWORD(v263[1]) = v279[0];
    BYTE3(v263[1]) = 0;
    goto LABEL_32;
  }

  if (v15 == *MEMORY[0x1E69B8208])
  {
    v146 = sub_1BE052404();
    v147 = PKUIImageNamed(v146);

    if (!v147)
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v148 = sub_1BE051544();
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v19 = sub_1BE0515E4();
    v148, v149, v150, v151, v152, v153, v154, v155;
    (*(v7 + 8))(v9, v6);
    v263[0] = v19;
    LOWORD(v263[1]) = 1;
    BYTE2(v263[1]) = 0;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
    sub_1BD223C50();
    sub_1BE04F9A4();
    v263[0] = v278;
    BYTE2(v263[1]) = BYTE2(v279[0]) != 0;
    LOWORD(v263[1]) = v279[0];
    BYTE3(v263[1]) = 1;
LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CC0, &qword_1BE0FB5E0);
    sub_1BD809EFC();
    sub_1BE04F9A4();
    LOBYTE(v236[0]) = BYTE3(v279[0]);
    LOBYTE(v226) = 1;
    *(v279 + 4) = v255[0];
    *(&v279[1] + 2) = *(v255 + 14);
    BYTE2(v279[2]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CA0, &qword_1BE0FB5C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CD0, &qword_1BE0FB5E8);
    sub_1BD809DCC();
    sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &qword_1BE0FB5E8, sub_1BD809EFC);
    sub_1BE04F9A4();
    v278 = v270;
    v279[0] = v271;
    v279[1] = v272[0];
    *(&v279[1] + 15) = *(v272 + 15);
    goto LABEL_4;
  }

  if (v15 == *MEMORY[0x1E69B8220] || v15 == *MEMORY[0x1E69B81E0] || v15 == *MEMORY[0x1E69B8250] || v15 == *MEMORY[0x1E69B8238] || v15 == *MEMORY[0x1E69B8240])
  {
    goto LABEL_15;
  }

  if (v15 == *MEMORY[0x1E69B81F0])
  {
    v156 = sub_1BE052404();
    v157 = PKUIImageNamed(v156);

    a3 = v217;
    if (v157)
    {
      v158 = sub_1BE051544();
      (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
      v19 = sub_1BE0515E4();
      v158, v159, v160, v161, v162, v163, v164, v165;
      (*(v7 + 8))(v9, v6);
      *(v263 + 8) = xmmword_1BE0CB9B0;
      *&v263[0] = v19;
      *(&v263[1] + 1) = 0;
      v263[2] = 0uLL;
      LOBYTE(v263[3]) = 1;
      sub_1BE048964();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38, &qword_1BE0FB590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
      sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38, &qword_1BE0FB590);
      sub_1BD223C50();
      sub_1BE04F9A4();
      v236[0] = v278;
      v236[1] = v279[0];
      v237 = v279[1];
      LOBYTE(v238) = v279[2];
      sub_1BD80A3CC(v236);
      v281 = v241;
      v282 = v242;
      v283[0] = v243;
      LOWORD(v283[1]) = v244;
      v279[1] = v237;
      v279[2] = v238;
      v279[3] = v239;
      v280 = v240;
      v278 = v236[0];
      v279[0] = v236[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0, &unk_1BE0FB5D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D00, &qword_1BE0FB600);
      sub_1BD809E58();
      sub_1BD80A0C0();
      sub_1BE04F9A4();
      v275 = v266;
      v276 = v267;
      v277[0] = v268;
      LOWORD(v277[1]) = v269;
      v272[0] = v263[2];
      v272[1] = v263[3];
      v273 = v264;
      v274 = v265;
      v270 = v263[0];
      v271 = v263[1];
      sub_1BD80A3C4(&v270);
      v281 = v275;
      v282 = v276;
      v283[0] = v277[0];
      *(v283 + 15) = *(v277 + 15);
      v279[1] = v272[0];
      v279[2] = v272[1];
      v279[3] = v273;
      v280 = v274;
      v278 = v270;
      v279[0] = v271;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CF0, &qword_1BE0FB5F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D30, &qword_1BE0FB618);
      sub_1BD80A034();
      sub_1BD80A25C();
      sub_1BE04F9A4();
      v281 = v260;
      v282 = v261;
      v283[0] = *v262;
      *(v283 + 15) = *&v262[15];
      v279[1] = v256;
      v279[2] = v257;
      v279[3] = v258;
      v280 = v259;
      v278 = v255[0];
      v279[0] = v255[1];
      sub_1BD80A3AC(&v278);
      goto LABEL_5;
    }

    goto LABEL_70;
  }

  if (v15 == *MEMORY[0x1E69B8210])
  {
    v166 = sub_1BE051CD4();
    v168 = v167;
    sub_1BD808CF4(&v278);
    v220 = v279[1];
    v221[0] = v279[2];
    *(v221 + 9) = *(&v279[2] + 9);
    v218 = v278;
    v219 = v279[0];
    v222[2] = v279[1];
    v223[0] = v279[2];
    *(v223 + 9) = *(&v279[2] + 9);
    v222[0] = v278;
    v222[1] = v279[0];
    sub_1BD0DE19C(&v218, v263, &qword_1EBD54D40, &qword_1BE0FB620);
    sub_1BD0DE53C(v222, &qword_1EBD54D40, &qword_1BE0FB620);
    v279[1] = v220;
    v279[2] = v221[0];
    *(&v279[2] + 9) = *(v221 + 9);
    v279[0] = v219;
    v278 = v218;
    sub_1BE051CD4();
    sub_1BE04E5E4();
    *(&v263[2] + 7) = v296;
    *(&v263[1] + 7) = v295;
    *(v263 + 7) = v294;
    *&v224[0] = v166;
    *(&v224[0] + 1) = v168;
    v224[3] = v279[1];
    v225[0] = v279[2];
    *(v225 + 9) = *(&v279[2] + 9);
    v224[1] = v278;
    v224[2] = v279[0];
    *(&v225[4] + 1) = *(&v296 + 1);
    *(&v225[3] + 9) = v263[2];
    *(&v225[2] + 9) = v263[1];
    *(&v225[1] + 9) = v263[0];
    v228 = v279[0];
    v229 = v279[1];
    v226 = v224[0];
    v227 = v278;
    v233 = v225[3];
    v234 = v225[4];
    v231 = v225[1];
    v232 = v225[2];
    v230 = v225[0];
    sub_1BD6434D8(&v226);
    v281 = v232;
    v282 = v233;
    v283[0] = v234;
    LOBYTE(v283[1]) = v235;
    v279[1] = v228;
    v279[2] = v229;
    v279[3] = v230;
    v280 = v231;
    v278 = v226;
    v279[0] = v227;
    sub_1BD0DE19C(v224, v263, &qword_1EBD54D10, &qword_1BE0FB608);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D10, &qword_1BE0FB608);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38, &qword_1BE0FB590);
    sub_1BD80A164();
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38, &qword_1BE0FB590);
    sub_1BE04F9A4();
    v241 = v251;
    v242 = v252;
    v243 = v253;
    LOBYTE(v244) = v254;
    v237 = v247;
    v238 = v248;
    v239 = v249;
    v240 = v250;
    v236[0] = v245;
    v236[1] = v246;
    sub_1BD80A3B8(v236);
    v281 = v241;
    v282 = v242;
    v283[0] = v243;
    LOWORD(v283[1]) = v244;
    v279[1] = v237;
    v279[2] = v238;
    v279[3] = v239;
    v280 = v240;
    v278 = v236[0];
    v279[0] = v236[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0, &unk_1BE0FB5D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D00, &qword_1BE0FB600);
    sub_1BD809E58();
    sub_1BD80A0C0();
    sub_1BE04F9A4();
    v275 = v266;
    v276 = v267;
    v277[0] = v268;
    LOWORD(v277[1]) = v269;
    v272[0] = v263[2];
    v272[1] = v263[3];
    v273 = v264;
    v274 = v265;
    v270 = v263[0];
    v271 = v263[1];
    sub_1BD80A3C4(&v270);
    v281 = v275;
    v282 = v276;
    v283[0] = v277[0];
    *(v283 + 15) = *(v277 + 15);
    v279[1] = v272[0];
    v279[2] = v272[1];
    v279[3] = v273;
    v280 = v274;
    v278 = v270;
    v279[0] = v271;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CF0, &qword_1BE0FB5F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D30, &qword_1BE0FB618);
    sub_1BD80A034();
    sub_1BD80A25C();
    sub_1BE04F9A4();
    v281 = v260;
    v282 = v261;
    v283[0] = *v262;
    *(v283 + 15) = *&v262[15];
    v279[1] = v256;
    v279[2] = v257;
    v279[3] = v258;
    v280 = v259;
    v278 = v255[0];
    v279[0] = v255[1];
    sub_1BD80A3AC(&v278);
    v251 = v281;
    v252 = v282;
    v253 = v283[0];
    v254 = v283[1];
    v247 = v279[1];
    v248 = v279[2];
    v249 = v279[3];
    v250 = v280;
    v245 = v278;
    v246 = v279[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C90, &qword_1BE0FB5C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CE0, &qword_1BE0FB5F0);
    sub_1BD809D14();
    sub_1BD809FA8();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v224, &qword_1EBD54D10, &qword_1BE0FB608);
    goto LABEL_18;
  }

  if (v15 == *MEMORY[0x1E69B81D8])
  {
    goto LABEL_15;
  }

  if (v15 == *MEMORY[0x1E69B81E8])
  {
    v169 = sub_1BE051CD4();
    v171 = v170;
    sub_1BD808F68(&v278);
    v39 = *(&v278 + 1);
    v38 = v278;
    v41 = *(&v279[0] + 1);
    v40 = *&v279[0];
    *&v263[0] = v169;
    *(&v263[0] + 1) = v171;
    v263[1] = v278;
    v263[2] = v279[0];
    LOBYTE(v263[3]) = 0;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38, &qword_1BE0FB590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38, &qword_1BE0FB590);
    sub_1BD223C50();
    sub_1BE04F9A4();
    v236[0] = v278;
    v236[1] = v279[0];
    v237 = v279[1];
    LOBYTE(v238) = v279[2];
    sub_1BD80A3CC(v236);
    goto LABEL_9;
  }

  if (v15 == *MEMORY[0x1E69B81F8])
  {
LABEL_15:
    v43 = sub_1BE051CD4();
    v45 = v44;
    sub_1BD808F68(&v278);
    v39 = *(&v278 + 1);
    v38 = v278;
    v41 = *(&v279[0] + 1);
    v40 = *&v279[0];
    *&v263[0] = v43;
    *(&v263[0] + 1) = v45;
    v263[1] = v278;
    v263[2] = v279[0];
    LOBYTE(v263[3]) = 0;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38, &qword_1BE0FB590);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38, &qword_1BE0FB590);
    sub_1BD223C50();
    sub_1BE04F9A4();
    LOBYTE(v226) = v279[2];
    LOBYTE(v224[0]) = 0;
    LOWORD(v279[2]) = LOBYTE(v279[2]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CB0, &unk_1BE0FB5D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CC0, &qword_1BE0FB5E0);
    sub_1BD809E58();
    sub_1BD809EFC();
    sub_1BE04F9A4();
    v278 = v255[0];
    v279[0] = v255[1];
    v279[1] = v256;
    LOWORD(v279[2]) = v257;
    LOBYTE(v236[0]) = 0;
    BYTE2(v279[2]) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CA0, &qword_1BE0FB5C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CD0, &qword_1BE0FB5E8);
    sub_1BD809DCC();
    sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &qword_1BE0FB5E8, sub_1BD809EFC);
    sub_1BE04F9A4();
    v278 = v270;
    v279[0] = v271;
    v279[1] = v272[0];
    *(&v279[1] + 15) = *(v272 + 15);
    sub_1BD80A3D4(&v278);
    goto LABEL_16;
  }

  if (v15 != *MEMORY[0x1E69B8190])
  {
    if (v15 != *MEMORY[0x1E69B8230] && v15 != *MEMORY[0x1E69B8248] && v15 != *MEMORY[0x1E69B81B8])
    {
      a3 = v217;
      if (v15 != *MEMORY[0x1E69B8228] && v15 != *MEMORY[0x1E69B8188])
      {
        v182 = sub_1BE051CD4();
        v184 = v183;
        sub_1BD808F68(&v278);
        v185 = v279[0];
        *&v263[0] = v182;
        *(&v263[0] + 1) = v184;
        v215 = *(&v278 + 1);
        v263[1] = v278;
        v216 = v278;
        v263[2] = v279[0];
        LOBYTE(v263[3]) = 1;
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE048964();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C38, &qword_1BE0FB590);
        sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38, &qword_1BE0FB590);
        sub_1BE04F9A4();
        v270 = v278;
        v271 = v279[0];
        v272[0] = v279[1];
        LOBYTE(v272[1]) = v279[2];
        sub_1BD80A3A0(&v270);
        v281 = v275;
        v282 = v276;
        v283[0] = v277[0];
        *(v283 + 15) = *(v277 + 15);
        v279[1] = v272[0];
        v279[2] = v272[1];
        v279[3] = v273;
        v280 = v274;
        v278 = v270;
        v279[0] = v271;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CF0, &qword_1BE0FB5F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D30, &qword_1BE0FB618);
        sub_1BD80A034();
        sub_1BD80A25C();
        sub_1BE04F9A4();
        v281 = v260;
        v282 = v261;
        v283[0] = *v262;
        *(v283 + 15) = *&v262[15];
        v279[1] = v256;
        v279[2] = v257;
        v279[3] = v258;
        v280 = v259;
        v278 = v255[0];
        v279[0] = v255[1];
        sub_1BD80A3AC(&v278);
        v251 = v281;
        v252 = v282;
        v253 = v283[0];
        v254 = v283[1];
        v247 = v279[1];
        v248 = v279[2];
        v249 = v279[3];
        v250 = v280;
        v245 = v278;
        v246 = v279[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C90, &qword_1BE0FB5C0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CE0, &qword_1BE0FB5F0);
        sub_1BD809D14();
        sub_1BD809FA8();
        a3 = v217;
        sub_1BE04F9A4();
        *(&v185 + 1), v186, v187, v188, v189, v190, v191, v192;
        v185, v193, v194, v195, v196, v197, v198, v199;
        v215, v200, v201, v202, v203, v204, v205, v206;
        v216, v207, v208, v209, v210, v211, v212, v213;
        v290 = v266;
        v291 = v267;
        v292 = v268;
        v293 = v269;
        v286 = v263[2];
        v287 = v263[3];
        v288 = v264;
        v289 = v265;
        v284 = v263[0];
        v285 = v263[1];
        (*(v11 + 8))(v14, v10);
        goto LABEL_19;
      }

      goto LABEL_34;
    }

    goto LABEL_15;
  }

  v172 = sub_1BE052404();
  v173 = PKUIImageNamed(v172);

  if (v173)
  {
    v174 = sub_1BE051544();
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v82 = sub_1BE0515E4();
    v174, v175, v176, v177, v178, v179, v180, v181;
    (*(v7 + 8))(v9, v6);
    v263[0] = v82;
    LOWORD(v263[1]) = 1;
    BYTE2(v263[1]) = 1;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E280, &qword_1BE0C30B0);
    sub_1BD223C50();
    sub_1BE04F9A4();
    v263[0] = v278;
    BYTE2(v263[1]) = BYTE2(v279[0]) != 0;
    LOWORD(v263[1]) = v279[0];
    BYTE3(v263[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CC0, &qword_1BE0FB5E0);
    sub_1BD809EFC();
    sub_1BE04F9A4();
    LOBYTE(v236[0]) = BYTE3(v279[0]);
    LOBYTE(v226) = 1;
    *(v279 + 4) = v255[0];
    *(&v279[1] + 2) = *(v255 + 14);
    BYTE2(v279[2]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CA0, &qword_1BE0FB5C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CD0, &qword_1BE0FB5E8);
    sub_1BD809DCC();
    sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &qword_1BE0FB5E8, sub_1BD809EFC);
    sub_1BE04F9A4();
    v278 = v270;
    v279[0] = v271;
    v279[1] = v272[0];
    *(&v279[1] + 15) = *(v272 + 15);
LABEL_23:
    sub_1BD80A3D4(&v278);
    v251 = v281;
    v252 = v282;
    v253 = v283[0];
    v254 = v283[1];
    v247 = v279[1];
    v248 = v279[2];
    v249 = v279[3];
    v250 = v280;
    v245 = v278;
    v246 = v279[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54C90, &qword_1BE0FB5C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54CE0, &qword_1BE0FB5F0);
    sub_1BD809D14();
    sub_1BD809FA8();
    sub_1BE04F9A4();
    v74 = v82;
    goto LABEL_17;
  }

LABEL_71:
  __break(1u);
}

void sub_1BD808CF4(uint64_t a1@<X8>)
{
  v2 = sub_1BE051584();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BE051424();
  v7 = sub_1BE052404();
  v8 = PKUIImageNamed(v7);

  if (v8)
  {
    v9 = sub_1BE051544();
    (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
    v10 = sub_1BE0515E4();
    v9, v11, v12, v13, v14, v15, v16, v17;
    (*(v3 + 8))(v5, v2);
    v18 = sub_1BE0501D4();
    sub_1BE04E1F4();
    v54 = 1;
    v50 = 0;
    v34 = v10;
    LOWORD(v35) = 1;
    *(&v35 + 2) = v52;
    WORD3(v35) = v53;
    BYTE8(v35) = v18;
    *(&v35 + 9) = *v51;
    HIDWORD(v35) = *&v51[3];
    *&v36 = v19;
    *(&v36 + 1) = v20;
    *&v37 = v21;
    *(&v37 + 1) = v22;
    v38 = 0;
    *a1 = v6;
    v23 = v36;
    v24 = v37;
    *(a1 + 72) = 0;
    *(a1 + 56) = v24;
    *(a1 + 40) = v23;
    v25 = v34;
    *(a1 + 24) = v35;
    *(a1 + 8) = v25;
    v39[0] = v10;
    v39[1] = 0;
    v40 = 1;
    v42 = v53;
    v41 = v52;
    v43 = v18;
    *&v44[3] = *&v51[3];
    *v44 = *v51;
    v45 = v19;
    v46 = v20;
    v47 = v21;
    v48 = v22;
    v49 = 0;
    sub_1BE048964();
    sub_1BD0DE19C(&v34, v33, &qword_1EBD54D48, &qword_1BE0FB628);
    sub_1BD0DE53C(v39, &qword_1EBD54D48, &qword_1BE0FB628);
    v6, v26, v27, v28, v29, v30, v31, v32;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD808F68@<X0>(uint64_t *a3@<X8>)
{
  v4 = [objc_opt_self() systemGrayColor];
  v5 = sub_1BE0511C4();
  sub_1BE048C84();
  v6 = sub_1BE051574();
  v7 = sub_1BE051424();
  result = swift_getKeyPath();
  *a3 = v5;
  a3[1] = v6;
  a3[2] = result;
  a3[3] = v7;
  return result;
}

uint64_t sub_1BD809060(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE04C164();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A350, &qword_1BE0FB580);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - v12;
  v15 = *(v14 + 56);
  sub_1BD809974(a1, &v52 - v12, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  sub_1BD809974(a2, &v13[v15], type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  v16 = *(v5 + 48);
  v17 = v16(v13, 3, v4);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (v16(&v13[v15], 3, v4) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v16(&v13[v15], 3, v4) != 3)
    {
      goto LABEL_11;
    }
  }

  else if (v17)
  {
    if (v16(&v13[v15], 3, v4) != 1)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_1BD809974(v13, v10, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
    if (v16(&v13[v15], 3, v4))
    {
      (*(v5 + 8))(v10, v4);
LABEL_11:
      sub_1BD0DE53C(v13, &qword_1EBD3A350, &qword_1BE0FB580);
      return 0;
    }

    (*(v5 + 32))(v7, &v13[v15], v4);
    sub_1BD805124(&qword_1EBD3A358, MEMORY[0x1E69B8260], MEMORY[0x1E69B8270]);
    sub_1BE0526E4();
    sub_1BE0526E4();
    v19 = v55;
    v20 = v53;
    if (v54 == v52 && v55 == v53)
    {
      v21 = *(v5 + 8);
      v21(v7, v4);
      v19, v22, v23, v24, v25, v26, v27, v28;
      v20, v29, v30, v31, v32, v33, v34, v35;
      v21(v10, v4);
    }

    else
    {
      v36 = sub_1BE053B84();
      v37 = *(v5 + 8);
      v37(v7, v4);
      v19, v38, v39, v40, v41, v42, v43, v44;
      v20, v45, v46, v47, v48, v49, v50, v51;
      v37(v10, v4);
      if ((v36 & 1) == 0)
      {
        sub_1BD8099DC(v13, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
        return 0;
      }
    }
  }

  sub_1BD8099DC(v13, type metadata accessor for SEStorageUsageCategory.SEStorageUsageCategoryType);
  return 1;
}

BOOL sub_1BD80946C(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1BD3FF77C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SEStorageUsageGroup(0);
  sub_1BE04C164();
  sub_1BD805124(&qword_1EBD3A358, MEMORY[0x1E69B8260], MEMORY[0x1E69B8270]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  if (v36 == v34 && v37 == v35)
  {
    v37, v5, v34, v6, v7, v8, v9, v10;
    v35, v11, v12, v13, v14, v15, v16, v17;
  }

  else
  {
    v18 = sub_1BE053B84();
    v37, v19, v20, v21, v22, v23, v24, v25;
    v35, v26, v27, v28, v29, v30, v31, v32;
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)))
  {
    return *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28));
  }

  return 0;
}

uint64_t sub_1BD8095C0(void *a1, void *a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3A750, &unk_1BE0D3540);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  sub_1BD0E5E8C(0, &qword_1EBD3E3F0, 0x1E69E58C0);
  if ((sub_1BE053074() & 1) == 0 || (sub_1BD3FFD98(a1[1], a2[1]) & 1) == 0)
  {
    goto LABEL_12;
  }

  v14 = v5;
  v25 = type metadata accessor for SEStorageUsageGroup.PassEntry(0);
  v15 = v25[6];
  v16 = *(v11 + 48);
  sub_1BD0DE19C(a1 + v15, v13, &unk_1EBD39970, &unk_1BE0B9F80);
  v17 = a2 + v15;
  v18 = v14;
  sub_1BD0DE19C(v17, &v13[v16], &unk_1EBD39970, &unk_1BE0B9F80);
  v19 = *(v14 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v16], 1, v4) == 1)
    {
      sub_1BD0DE53C(v13, &unk_1EBD39970, &unk_1BE0B9F80);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_1BD0DE19C(v13, v10, &unk_1EBD39970, &unk_1BE0B9F80);
  if (v19(&v13[v16], 1, v4) == 1)
  {
    (*(v14 + 8))(v10, v4);
LABEL_8:
    sub_1BD0DE53C(v13, &qword_1EBD3A750, &unk_1BE0D3540);
LABEL_12:
    v22 = 0;
    return v22 & 1;
  }

  (*(v14 + 32))(v7, &v13[v16], v4);
  sub_1BD805124(&qword_1EBD3E460, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v20 = sub_1BE052334();
  v21 = *(v18 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_1BD0DE53C(v13, &unk_1EBD39970, &unk_1BE0B9F80);
  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (*(a1 + v25[7]) != *(a2 + v25[7]))
  {
    goto LABEL_12;
  }

  v22 = *(a1 + v25[8]) ^ *(a2 + v25[8]) ^ 1;
  return v22 & 1;
}

uint64_t sub_1BD809974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD8099DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD809A3C()
{
  result = qword_1EBD54C28;
  if (!qword_1EBD54C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C20, &qword_1BE0FB588);
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38, &qword_1BE0FB590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C28);
  }

  return result;
}

unint64_t sub_1BD809AEC()
{
  result = qword_1EBD54C50;
  if (!qword_1EBD54C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C40, &qword_1BE0FB598);
    sub_1BD809A3C();
    sub_1BD809B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C50);
  }

  return result;
}

unint64_t sub_1BD809B78()
{
  result = qword_1EBD54C58;
  if (!qword_1EBD54C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C60, &qword_1BE0FB5A8);
    sub_1BD809C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C58);
  }

  return result;
}

unint64_t sub_1BD809C04()
{
  result = qword_1EBD54C68;
  if (!qword_1EBD54C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C70, &qword_1BE0FB5B0);
    sub_1BD809C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C68);
  }

  return result;
}

unint64_t sub_1BD809C88()
{
  result = qword_1EBD54C78;
  if (!qword_1EBD54C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C80, &qword_1BE0FB5B8);
    sub_1BD809D14();
    sub_1BD809FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C78);
  }

  return result;
}

unint64_t sub_1BD809D14()
{
  result = qword_1EBD54C88;
  if (!qword_1EBD54C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C90, &qword_1BE0FB5C0);
    sub_1BD809DCC();
    sub_1BD809F2C(&qword_1EBD54CC8, &qword_1EBD54CD0, &qword_1BE0FB5E8, sub_1BD809EFC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C88);
  }

  return result;
}

unint64_t sub_1BD809DCC()
{
  result = qword_1EBD54C98;
  if (!qword_1EBD54C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54CA0, &qword_1BE0FB5C8);
    sub_1BD809E58();
    sub_1BD809EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54C98);
  }

  return result;
}

unint64_t sub_1BD809E58()
{
  result = qword_1EBD54CA8;
  if (!qword_1EBD54CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54CB0, &unk_1BE0FB5D0);
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38, &qword_1BE0FB590);
    sub_1BD223C50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54CA8);
  }

  return result;
}

uint64_t sub_1BD809F2C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD809FA8()
{
  result = qword_1EBD54CD8;
  if (!qword_1EBD54CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54CE0, &qword_1BE0FB5F0);
    sub_1BD80A034();
    sub_1BD80A25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54CD8);
  }

  return result;
}

unint64_t sub_1BD80A034()
{
  result = qword_1EBD54CE8;
  if (!qword_1EBD54CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54CF0, &qword_1BE0FB5F8);
    sub_1BD809E58();
    sub_1BD80A0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54CE8);
  }

  return result;
}

unint64_t sub_1BD80A0C0()
{
  result = qword_1EBD54CF8;
  if (!qword_1EBD54CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54D00, &qword_1BE0FB600);
    sub_1BD80A164();
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38, &qword_1BE0FB590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54CF8);
  }

  return result;
}

unint64_t sub_1BD80A164()
{
  result = qword_1EBD54D08;
  if (!qword_1EBD54D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54D10, &qword_1BE0FB608);
    sub_1BD80A208(&qword_1EBD54D18, &qword_1EBD54D20, &qword_1BE0FB610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54D08);
  }

  return result;
}

uint64_t sub_1BD80A208(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1BD80A25C()
{
  result = qword_1EBD54D28;
  if (!qword_1EBD54D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54D30, &qword_1BE0FB618);
    sub_1BD80A208(&qword_1EBD54C30, &qword_1EBD54C38, &qword_1BE0FB590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54D28);
  }

  return result;
}

unint64_t sub_1BD80A2F8()
{
  result = qword_1EBD54D38;
  if (!qword_1EBD54D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54C48, &qword_1BE0FB5A0);
    sub_1BD809A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54D38);
  }

  return result;
}

uint64_t type metadata accessor for ExternalAuthorizationModel(uint64_t a1)
{
  result = qword_1EBD54D60;
  if (!qword_1EBD54D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD80A428(uint64_t a1)
{
  sub_1BD0E4578(319, &qword_1EBD54D78, &qword_1EBD54D80, &qword_1BE0FB680);
  if (v1 <= 0x3F)
  {
    sub_1BD0E4578(319, &qword_1EBD54D88, &unk_1EBD54D90, qword_1BE0FB688);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

id sub_1BD80A550(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = [v2 paymentRequest];
  if (result)
  {
    v4 = result;
    v5 = [result paymentContentItems];

    if (v5)
    {
      sub_1BD0E5E8C(0, &qword_1EBD54DB0, 0x1E69B8BB8);
      v6 = sub_1BE052744();
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    v50 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54D80, &qword_1BE0FB680);
    sub_1BE04D874();
    swift_endAccess();
    result = [v2 paymentRequest];
    if (result)
    {
      v7 = result;
      v8 = [result paymentSummaryItems];

      sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
      v9 = sub_1BE052744();

      swift_beginAccess();
      v50 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54D90, qword_1BE0FB688);
      sub_1BE04D874();
      swift_endAccess();
      v11 = *a1;
      v10 = *(a1 + 8);
      v49 = *(a1 + 24);
      v50 = v10;
      v12 = *(a1 + 40);
      v13 = v2;
      v14 = v11;
      sub_1BD0DE19C(&v50, v47, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE19C(&v49, v47, &qword_1EBD40150, &qword_1BE0C12A0);
      sub_1BE048964();
      v15 = sub_1BD46A578(a1);

      sub_1BD0DE53C(&v50, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE53C(&v49, &qword_1EBD40150, &qword_1BE0C12A0);
      v12, v16, v17, v18, v19, v20, v21, v22;

      v23 = swift_allocObject();
      swift_weakInit();
      v47[4] = sub_1BD80AE14;
      v48 = v23;
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 1107296256;
      v47[2] = sub_1BD126964;
      v47[3] = &block_descriptor_187;
      v24 = _Block_copy(v47);
      v25 = v48;
      sub_1BE048964();
      v25, v26, v27, v28, v29, v30, v31, v32;
      [v13 setUpdateHandler_];
      _Block_release(v24);

      sub_1BD0DE53C(&v50, &qword_1EBD3D490, &unk_1BE0D42B0);
      sub_1BD0DE53C(&v49, &qword_1EBD40150, &qword_1BE0C12A0);
      v15, v33, v34, v35, v36, v37, v38, v39;
      v12, v40, v41, v42, v43, v44, v45, v46;

      return v15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1BD80A8C0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD80A918();
    v2, v3, v4, v5, v6, v7, v8, v9;
  }
}

void sub_1BD80A918()
{
  v2 = *(v0 + qword_1EBDAAD68 + 24);
  v1 = *(v0 + qword_1EBDAAD68 + 32);
  v3 = v2;
  v4 = v1;
  sub_1BD2B1238(v4, v2, &v18);
  v5 = v19;
  if (v19)
  {
    v6 = v18;
    sub_1BD1C2B14();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v8 = v21;
    *(v7 + 32) = v20;
    *(v7 + 48) = v8;
  }

  sub_1BE04C8F4();
  v9 = [v4 paymentRequest];
  if (!v9)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  v11 = [v9 paymentContentItems];

  if (v11)
  {
    sub_1BD0E5E8C(0, &qword_1EBD54DB0, 0x1E69B8BB8);
    sub_1BE052744();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  v12 = [v4 paymentRequest];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 paymentSummaryItems];

  sub_1BD0E5E8C(0, &qword_1EBD3D4A0, 0x1E69B8E90);
  sub_1BE052744();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8C4();
  v15 = [v4 paymentRequest];
  if (!v15)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = [v15 localizedNavigationTitle];

  if (v17)
  {
    sub_1BE052434();
  }

  sub_1BE04C8D4();
}

uint64_t sub_1BD80ABB0()
{
  v1 = qword_1EBD54D50;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DA0, &qword_1BE0FB6A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_1EBD54D58;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DA8, &unk_1BE0FB6B0);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_1BD80AC70()
{
  v0 = sub_1BE04C954();
  v1 = qword_1EBD36020;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD40140, &unk_1BE0D42A0);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *&v0[qword_1EBDAAD68];
  v4 = *&v0[qword_1EBDAAD68 + 24];
  v5 = *&v0[qword_1EBDAAD68 + 32];
  *&v0[qword_1EBDAAD68 + 40], v6, v7, v8, v9, v10, v11, v12;

  swift_unknownObjectRelease();
  v13 = qword_1EBD54D50;
  sub_1BE048964();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DA0, &qword_1BE0FB6A8);
  (*(*(v14 - 8) + 8))(&v0[v13], v14);
  v15 = qword_1EBD54D58;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DA8, &unk_1BE0FB6B0);
  (*(*(v16 - 8) + 8))(&v0[v15], v16);
  v0, v17, v18, v19, v20, v21, v22, v23;

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FinanceKitTransactionDetailView(uint64_t a1)
{
  result = qword_1EBD54DB8;
  if (!qword_1EBD54DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD80AE90(uint64_t a1)
{
  sub_1BD80B008(319, &qword_1EBD54DC8, _s9ViewModelCMa_1, MEMORY[0x1E6981790]);
  if (v1 <= 0x3F)
  {
    sub_1BD80AFA4(319);
    if (v2 <= 0x3F)
    {
      sub_1BD80B008(319, &qword_1EBD3AB88, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1BD49DA08(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD80AFA4(uint64_t a1)
{
  if (!qword_1EBD54DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DD8, &qword_1BE0FB770);
    v1 = sub_1BE0516D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBD54DD0);
    }
  }
}

void sub_1BD80B008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BD80B098@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  return sub_1BD0DE19C(v3 + v12, a2, &qword_1EBD461C0, &qword_1BE0D66D0);
}

uint64_t sub_1BD80B170(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0, &qword_1BE0D66D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  sub_1BD0DE19C(a1, &v17[-v5], &qword_1EBD461C0, &qword_1BE0D66D0);
  v7 = *a2;
  KeyPath = swift_getKeyPath();
  v18 = v7;
  v19 = v6;
  v20 = v7;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B584();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  return sub_1BD0DE53C(v6, &qword_1EBD461C0, &qword_1BE0D66D0);
}

uint64_t sub_1BD80B2C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel);
  return sub_1BE048964();
}

void sub_1BD80B374(uint64_t *a1, uint64_t *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B584();
  KeyPath, v3, v4, v5, v6, v7, v8, v9;
}

void sub_1BD80B440(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__actualExcludedFromSpendingSummaryValue);
}

uint64_t sub_1BD80B518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE048F54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TransactionContext(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DD8, &qword_1BE0FB770);
  sub_1BE051694();
  *(a3 + 16) = v21;
  v13 = type metadata accessor for FinanceKitTransactionDetailView(0);
  v14 = *(v13 + 24);
  *(a3 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  swift_storeEnumTagMultiPayload();
  v15 = (a3 + *(v13 + 28));
  type metadata accessor for NavigationController();
  sub_1BD813BE0(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
  *v15 = sub_1BE04EEC4();
  v15[1] = v16;
  sub_1BD813E10(a1, v12, type metadata accessor for TransactionContext);
  (*(v7 + 16))(v9, a2, v6);
  _s9ViewModelCMa_1(0);
  swift_allocObject();
  v20 = sub_1BD438F70(v12, v9);
  sub_1BE051694();
  (*(v7 + 8))(a2, v6);
  result = sub_1BD813618(a1, type metadata accessor for TransactionContext);
  v18 = *(&v21 + 1);
  *a3 = v21;
  *(a3 + 8) = v18;
  return result;
}

uint64_t sub_1BD80B7AC@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = type metadata accessor for FinanceKitTransactionDetailView(0);
  v75 = *(v2 - 8);
  v79 = *(v75 + 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v74 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE04F434();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BE04F5B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DE0, &qword_1BE0FB840);
  v66 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DE8, &qword_1BE0FB848);
  v14 = *(v13 - 8);
  v71 = v13;
  v72 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v66 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DF0, &qword_1BE0FB850);
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v66 - v16;
  v80 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54DF8, &qword_1BE0FB858);
  sub_1BD812FF0();
  sub_1BE0504E4();
  sub_1BE04F594();
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E18, &qword_1BE0FB868) + 36);
  (*(v7 + 16))(&v12[v17], v9, v6);
  v18 = *(v7 + 56);
  v18(&v12[v17], 0, 1, v6);
  KeyPath = swift_getKeyPath();
  v20 = &v12[*(v10 + 36)];
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39580, &qword_1BE0D8820) + 28);
  (*(v7 + 32))(v20 + v21, v9, v6);
  v18(v20 + v21, 0, 1, v6);
  *v20 = KeyPath;
  v23 = v68;
  v22 = v69;
  v24 = v70;
  (*(v69 + 104))(v68, *MEMORY[0x1E697C438], v70);
  v25 = sub_1BD8130A0();
  v26 = v67;
  v27 = v66;
  sub_1BE050E84();
  (*(v22 + 8))(v23, v24);
  sub_1BD0DE53C(v12, &qword_1EBD54DE0, &qword_1BE0FB840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD0, &unk_1BE0E9000);
  sub_1BE04EE44();
  v28 = swift_allocObject();
  v28[1] = xmmword_1BE0B69E0;
  sub_1BE04EE34();
  v81 = v27;
  v82 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v77;
  v31 = v71;
  MEMORY[0x1BFB3DCA0](0, v28, v71, OpaqueTypeConformance2);
  v28, v32, v33, v34, v35, v36, v37, v38;
  (*(v72 + 1))(v26, v31);
  v72 = type metadata accessor for FinanceKitTransactionDetailView;
  v39 = v78;
  v40 = v74;
  sub_1BD813E10(v78, v74, type metadata accessor for FinanceKitTransactionDetailView);
  v41 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v42 = swift_allocObject();
  v75 = type metadata accessor for FinanceKitTransactionDetailView;
  sub_1BD8139C8(v40, v42 + v41, type metadata accessor for FinanceKitTransactionDetailView);
  v43 = &v30[*(v73 + 36)];
  sub_1BE04E7B4();
  sub_1BE0528B4();
  *v43 = &unk_1BE0FB8C0;
  *(v43 + 1) = v42;
  v84 = *(v39 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E40, &qword_1BE0FB8C8);
  sub_1BE0516C4();
  v44 = v81;
  v45 = v82;
  v46 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E48, &qword_1BE0FB8D0);
  sub_1BD813308();
  sub_1BD813444();
  sub_1BD813498();
  v47 = v76;
  v48 = v77;
  sub_1BE050F74();
  v45, v49, v50, v51, v52, v53, v54, v55;
  v44, v56, v57, v58, v59, v60, v61, v62;

  sub_1BD0B9B98(v48);
  sub_1BD813E10(v78, v40, v72);
  v63 = swift_allocObject();
  sub_1BD8139C8(v40, v63 + v41, v75);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E68, &qword_1BE0FB8D8);
  v65 = (v47 + *(result + 36));
  *v65 = sub_1BD813524;
  v65[1] = v63;
  v65[2] = 0;
  v65[3] = 0;
  return result;
}

uint64_t sub_1BD80BF38@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E10, &qword_1BE0FB860);
  v168 = *(v3 - 8);
  v169 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v159 = &v138 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E78, &qword_1BE0FB920);
  v157 = *(v5 - 8);
  v158 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v144 = &v138 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E80, &qword_1BE0FB928);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v176 = &v138 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v167 = &v138 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E88, &qword_1BE0FB930);
  v154 = *(v11 - 8);
  v155 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v143 = &v138 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E90, &qword_1BE0FB938);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v175 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v174 = &v138 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E98, &qword_1BE0FB940);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v166 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v173 = &v138 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EA0, &qword_1BE0FB948);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v165 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v172 = &v138 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EA8, &unk_1BE0FB950);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v164 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v171 = &v138 - v28;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47660, &qword_1BE0DA390);
  MEMORY[0x1EEE9AC00](v153);
  v30 = &v138 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EB0, &unk_1BE0FB960);
  v162 = *(v31 - 8);
  v163 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v161 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v160 = &v138 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0, &qword_1BE0D66D0);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v138 - v36;
  v38 = _s23TransactionDetailsModelVMa(0);
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v138 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1[1];
  v151 = *a1;
  v152 = a1;
  v192[0] = v151;
  v150 = v42;
  v192[1] = v42;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70, &unk_1BE0FB8E0);
  sub_1BE0516A4();
  v43 = v191[0];
  KeyPath = swift_getKeyPath();
  v192[0] = v43;
  v148 = sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v45, v46, v47, v48, v49, v50, v51;
  v52 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v43 + v52, v37, &qword_1EBD461C0, &qword_1BE0D66D0);
  v43, v53, v54, v55, v56, v57, v58, v59;
  if ((*(v39 + 48))(v37, 1, v38) == 1)
  {
    sub_1BD0DE53C(v37, &qword_1EBD461C0, &qword_1BE0D66D0);
    return (*(v168 + 56))(v170, 1, 1, v169);
  }

  else
  {
    sub_1BD8139C8(v37, v41, _s23TransactionDetailsModelVMa);
    v61 = sub_1BE04F504();
    LOBYTE(v177) = 1;
    v156 = v41;
    sub_1BD811208(v41, v189);
    memcpy(v191, v189, 0x101uLL);
    memcpy(v192, v189, 0x101uLL);
    sub_1BD0DE19C(v191, &v181, &qword_1EBD47670, &qword_1BE0DA3A0);
    sub_1BD0DE53C(v192, &qword_1EBD47670, &qword_1BE0DA3A0);
    memcpy(&v190[7], v191, 0x101uLL);
    v62 = v177;
    v63 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47678, &unk_1BE0FB970) + 36)];
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0, &qword_1BE0B6C50) + 28);
    v65 = sub_1BE0505C4();
    (*(*(v65 - 8) + 56))(v63 + v64, 1, 1, v65);
    *v63 = swift_getKeyPath();
    *v30 = v61;
    *(v30 + 1) = 0;
    v30[16] = v62;
    memcpy(v30 + 17, v190, 0x108uLL);
    LOBYTE(v61) = sub_1BE0501E4();
    sub_1BE04E1F4();
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47680, &qword_1BE0FB9B0) + 36)];
    *v74 = v61;
    *(v74 + 1) = v67;
    *(v74 + 2) = v69;
    *(v74 + 3) = v71;
    *(v74 + 4) = v73;
    v74[40] = 0;
    LOBYTE(v61) = sub_1BE0501F4();
    v75 = sub_1BE04E1F4();
    v76 = &v30[v153[9]];
    *v76 = v61;
    *(v76 + 1) = v77;
    *(v76 + 2) = v78;
    *(v76 + 3) = v79;
    *(v76 + 4) = v80;
    v76[40] = 0;
    MEMORY[0x1EEE9AC00](v75);
    *(&v138 - 2) = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EB8, &qword_1BE0FB9B8);
    sub_1BD813544(&qword_1EBD47690, &qword_1EBD47660, &qword_1BE0DA390, sub_1BD4A02FC);
    sub_1BD0DE4F4(&qword_1EBD54EC0, &qword_1EBD54EB8, &qword_1BE0FB9B8, MEMORY[0x1E6981F48]);
    v81 = v160;
    sub_1BE051A24();
    sub_1BD80CF1C(v171);
    v189[0] = v151;
    v189[1] = v150;
    sub_1BE0516A4();
    v82 = v181;
    v83 = swift_getKeyPath();
    v189[0] = v82;
    sub_1BE04B594();
    v83, v84, v85, v86, v87, v88, v89, v90;
    v91 = *(v82 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__offersViewModel);
    sub_1BE048964();
    v82, v92, v93, v94, v95, v96, v97, v98;
    v99 = v156;
    if (v91)
    {
      sub_1BD5C3924(v189);
      v100 = v189[0];
      v150 = v189[2];
      v151 = v189[1];
      v148 = v189[4];
      v149 = v189[3];
      v146 = v189[6];
      v147 = v189[5];
      v145 = v189[7];
      v101 = v167;
      v102 = v174;
    }

    else
    {
      v150 = 0;
      v151 = 0;
      v148 = 0;
      v149 = 0;
      v146 = 0;
      v147 = 0;
      v145 = 0;
      v101 = v167;
      v102 = v174;
      v100 = 1;
    }

    sub_1BD80D318(v172);
    sub_1BD80D898(v99, v173);
    sub_1BD80DCE8(&v181);
    v141 = v183;
    v142 = v181;
    v139 = v182;
    v140 = v184;
    v184 = &type metadata for BankConnectFeatureFlags;
    v185 = sub_1BD1671B0();
    LOBYTE(v181) = 4;
    v103 = sub_1BE04C584();
    __swift_destroy_boxed_opaque_existential_0(&v181, v104, v105, v106, v107, v108, v109, v110);
    if (v103)
    {
      v111 = v143;
      sub_1BD80E120(v143);
      sub_1BD0DE204(v111, v102, &qword_1EBD54E88, &qword_1BE0FB930);
      v112 = 0;
    }

    else
    {
      v112 = 1;
    }

    v153 = v100;
    v113 = 1;
    (*(v154 + 56))(v102, v112, 1, v155);
    if (os_variant_has_internal_ui())
    {
      v114 = v144;
      sub_1BD80E820(v144);
      sub_1BD0DE204(v114, v101, &qword_1EBD54E78, &qword_1BE0FB920);
      v113 = 0;
    }

    (*(v157 + 56))(v101, v113, 1, v158);
    v115 = v161;
    v116 = *(v162 + 16);
    v117 = v163;
    v116(v161, v81, v163);
    v118 = v164;
    sub_1BD0DE19C(v171, v164, &qword_1EBD54EA8, &unk_1BE0FB950);
    v119 = v165;
    sub_1BD0DE19C(v172, v165, &qword_1EBD54EA0, &qword_1BE0FB948);
    v120 = v166;
    sub_1BD0DE19C(v173, v166, &qword_1EBD54E98, &qword_1BE0FB940);
    sub_1BD0DE19C(v174, v175, &qword_1EBD54E90, &qword_1BE0FB938);
    sub_1BD0DE19C(v101, v176, &qword_1EBD54E80, &qword_1BE0FB928);
    v121 = v159;
    v116(v159, v115, v117);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EC8, &qword_1BE0FB9F0);
    sub_1BD0DE19C(v118, v121 + v122[12], &qword_1EBD54EA8, &unk_1BE0FB950);
    v123 = (v121 + v122[16]);
    *&v177 = v153;
    *(&v177 + 1) = v151;
    *&v178 = v150;
    *(&v178 + 1) = v149;
    *&v179 = v148;
    *(&v179 + 1) = v147;
    *&v180 = v146;
    *(&v180 + 1) = v145;
    v124 = v178;
    *v123 = v177;
    v123[1] = v124;
    v125 = v180;
    v123[2] = v179;
    v123[3] = v125;
    sub_1BD0DE19C(v119, v121 + v122[20], &qword_1EBD54EA0, &qword_1BE0FB948);
    sub_1BD0DE19C(v120, v121 + v122[24], &qword_1EBD54E98, &qword_1BE0FB940);
    v126 = (v121 + v122[28]);
    v128 = v141;
    v127 = v142;
    v130 = v139;
    v129 = v140;
    *v126 = v142;
    v126[1] = v130;
    v126[2] = v128;
    v126[3] = v129;
    sub_1BD0DE19C(v175, v121 + v122[32], &qword_1EBD54E90, &qword_1BE0FB938);
    sub_1BD0DE19C(v176, v121 + v122[36], &qword_1EBD54E80, &qword_1BE0FB928);
    sub_1BD0DE19C(&v177, &v181, &qword_1EBD54ED0, &qword_1BE0FB9F8);
    sub_1BD8135C8(v127);
    sub_1BD0DE53C(v167, &qword_1EBD54E80, &qword_1BE0FB928);
    sub_1BD0DE53C(v174, &qword_1EBD54E90, &qword_1BE0FB938);
    sub_1BD0DE53C(v173, &qword_1EBD54E98, &qword_1BE0FB940);
    sub_1BD0DE53C(v172, &qword_1EBD54EA0, &qword_1BE0FB948);
    sub_1BD0DE53C(v171, &qword_1EBD54EA8, &unk_1BE0FB950);
    v131 = v163;
    v132 = *(v162 + 8);
    v132(v160, v163);
    sub_1BD813618(v156, _s23TransactionDetailsModelVMa);
    sub_1BD0DE53C(v176, &qword_1EBD54E80, &qword_1BE0FB928);
    sub_1BD0DE53C(v175, &qword_1EBD54E90, &qword_1BE0FB938);
    sub_1BD813678(v127, v130, v128, v129, v133, v134, v135, v136);
    sub_1BD0DE53C(v166, &qword_1EBD54E98, &qword_1BE0FB940);
    sub_1BD0DE53C(v165, &qword_1EBD54EA0, &qword_1BE0FB948);
    v181 = v153;
    v182 = v151;
    v183 = v150;
    v184 = v149;
    v185 = v148;
    v186 = v147;
    v187 = v146;
    v188 = v145;
    sub_1BD0DE53C(&v181, &qword_1EBD54ED0, &qword_1BE0FB9F8);
    sub_1BD0DE53C(v164, &qword_1EBD54EA8, &unk_1BE0FB950);
    v132(v161, v131);
    v137 = v170;
    sub_1BD0DE204(v121, v170, &qword_1EBD54E10, &qword_1BE0FB860);
    return (*(v168 + 56))(v137, 0, 1, v169);
  }
}

uint64_t sub_1BD80CF1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F38, &qword_1BE0FBAA0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0, &qword_1BE0D66D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = _s23TransactionDetailsModelVMa(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 1);
  v39 = *v1;
  v40 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70, &unk_1BE0FB8E0);
  sub_1BE0516A4();
  v14 = v41;
  KeyPath = swift_getKeyPath();
  v39 = v14;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v16, v17, v18, v19, v20, v21, v22;
  v23 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v14 + v23, v8, &qword_1EBD461C0, &qword_1BE0D66D0);
  v14, v24, v25, v26, v27, v28, v29, v30;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD461C0, &qword_1BE0D66D0);
  }

  else
  {
    v31 = sub_1BD8139C8(v8, v12, _s23TransactionDetailsModelVMa);
    if (*&v12[*(v9 + 44)])
    {
      MEMORY[0x1EEE9AC00](v31);
      *(&v37 - 4) = v32;
      *(&v37 - 3) = v12;
      *(&v37 - 2) = v2;
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F40, &unk_1BE0FBAA8);
      sub_1BD813B24();
      v34 = v37;
      sub_1BE051A44();

      v35 = v38;
      (*(v4 + 32))(v38, v34, v3);
      (*(v4 + 56))(v35, 0, 1, v3);
      return sub_1BD813618(v12, _s23TransactionDetailsModelVMa);
    }

    sub_1BD813618(v12, _s23TransactionDetailsModelVMa);
  }

  return (*(v4 + 56))(v38, 1, 1, v3);
}

uint64_t sub_1BD80D318@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = sub_1BE04BD74();
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F08, &unk_1BE0FBA58);
  v5 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0, &qword_1BE0D66D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v58 - v8;
  v10 = _s23TransactionDetailsModelVMa(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[1];
  v65 = *v1;
  v66 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70, &unk_1BE0FB8E0);
  sub_1BE0516A4();
  v15 = v69;
  KeyPath = swift_getKeyPath();
  v65 = v15;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v24 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v15 + v24, v9, &qword_1EBD461C0, &qword_1BE0D66D0);
  v15, v25, v26, v27, v28, v29, v30, v31;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BD0DE53C(v9, &qword_1EBD461C0, &qword_1BE0D66D0);
  }

  else
  {
    v32 = sub_1BD8139C8(v9, v13, _s23TransactionDetailsModelVMa);
    if (*(*(v13 + 2) + 16))
    {
      v58[2] = v58;
      v33 = MEMORY[0x1EEE9AC00](v32);
      v58[1] = &v58[-4];
      v58[-2] = v34;
      v58[-1] = v2;
      v36 = v59;
      v35 = v60;
      v37 = v61;
      (*(v60 + 104))(v59, *MEMORY[0x1E69B80D8], v61, v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1BE0B69E0;
      v39 = &v13[*(v10 + 56)];
      v41 = *v39;
      v40 = *(v39 + 1);
      *(v38 + 56) = MEMORY[0x1E69E6158];
      *(v38 + 64) = sub_1BD110550();
      *(v38 + 32) = v41;
      *(v38 + 40) = v40;
      sub_1BE048C84();
      v42 = sub_1BE04B714();
      v44 = v43;
      v38, v43, v45, v46, v47, v48, v49, v50;
      (*(v35 + 8))(v36, v37);
      v65 = v42;
      v66 = v44;
      sub_1BD0DDEBC();
      v65 = sub_1BE0506C4();
      v66 = v51;
      v67 = v52 & 1;
      v68 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F10, qword_1BE0FBA68);
      sub_1BD813898();
      v54 = v62;
      sub_1BE051A54();
      v56 = v63;
      v55 = v64;
      (*(v5 + 32))(v64, v54, v63);
      (*(v5 + 56))(v55, 0, 1, v56);
      return sub_1BD813618(v13, _s23TransactionDetailsModelVMa);
    }

    sub_1BD813618(v13, _s23TransactionDetailsModelVMa);
  }

  return (*(v5 + 56))(v64, 1, 1, v63);
}

uint64_t sub_1BD80D898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a1;
  v66 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EE0, &qword_1BE0FBA08);
  v3 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v62 - v6;
  v8 = type metadata accessor for TransactionContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v12 = v2[1];
  v63 = v2;
  v68 = v13;
  v69 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70, &unk_1BE0FB8E0);
  sub_1BE0516A4();
  v14 = v67;
  if (PKBankConnectTransactionRecategorisationEnabled())
  {
    sub_1BD0DE19C(v14 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v7, &qword_1EBD3F790, &qword_1BE0D6710);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_1BD8139C8(v7, v11, type metadata accessor for TransactionContext);
      v29 = sub_1BE049134();
      v14, v30, v31, v32, v33, v34, v35, v36;
      sub_1BD813618(v11, type metadata accessor for TransactionContext);
      goto LABEL_7;
    }

    v14, v22, v23, v24, v25, v26, v27, v28;
    sub_1BD0DE53C(v7, &qword_1EBD3F790, &qword_1BE0D6710);
  }

  else
  {
    v14, v15, v16, v17, v18, v19, v20, v21;
  }

  v29 = 0;
LABEL_7:
  v68 = v13;
  v69 = v12;
  sub_1BE0516A4();
  v37 = v67;
  KeyPath = swift_getKeyPath();
  v68 = v37;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v39, v40, v41, v42, v43, v44, v45;
  v46 = v37[OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__actualExcludedFromSpendingSummaryValue];
  v37, v47, v48, v49, v50, v51, v52, v53;
  if ((v29 & 1) != 0 || v46 != 2)
  {
    MEMORY[0x1EEE9AC00](v54);
    *(&v62 - 32) = v29 & 1;
    v58 = v63;
    *(&v62 - 3) = v62;
    *(&v62 - 16) = v46;
    *(&v62 - 1) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EE8, &unk_1BE0FBA38);
    sub_1BD0DE4F4(&qword_1EBD54EF0, &qword_1EBD54EE8, &unk_1BE0FBA38, MEMORY[0x1E6981F48]);
    v59 = v64;
    sub_1BE051A44();
    v56 = v66;
    v60 = v59;
    v57 = v65;
    (*(v3 + 32))(v66, v60, v65);
    v55 = 0;
  }

  else
  {
    v55 = 1;
    v57 = v65;
    v56 = v66;
  }

  return (*(v3 + 56))(v56, v55, 1, v57);
}

uint64_t sub_1BD80DCE8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for FinanceKitTransactionDetailView(0);
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0, &qword_1BE0D66D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - v11;
  v13 = *v1;
  v14 = v1[1];
  v58 = *v1;
  v59 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70, &unk_1BE0FB8E0);
  sub_1BE0516A4();
  v15 = v56;
  KeyPath = swift_getKeyPath();
  v58 = v15;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  v24 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v15 + v24, v12, &qword_1EBD461C0, &qword_1BE0D66D0);
  v15, v25, v26, v27, v28, v29, v30, v31;
  v32 = _s23TransactionDetailsModelVMa(0);
  if ((*(*(v32 - 8) + 48))(v12, 1, v32))
  {
    result = sub_1BD0DE53C(v12, &qword_1EBD461C0, &qword_1BE0D66D0);
LABEL_5:
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v45 = 0;
    goto LABEL_6;
  }

  v34 = v53;
  v35 = v12[*(v32 + 68)];
  result = sub_1BD0DE53C(v12, &qword_1EBD461C0, &qword_1BE0D66D0);
  if (v35 != 1)
  {
    goto LABEL_5;
  }

  v56 = v13;
  v57 = v14;
  sub_1BE0516A4();
  v36 = v55;
  sub_1BD0DE19C(v55 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v9, &qword_1EBD3F790, &qword_1BE0D6710);
  v36, v37, v38, v39, v40, v41, v42, v43;
  sub_1BD813E10(v2, v34, type metadata accessor for FinanceKitTransactionDetailView);
  v44 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v45 = swift_allocObject();
  sub_1BD8139C8(v34, v45 + v44, type metadata accessor for FinanceKitTransactionDetailView);
  v46 = v51;
  sub_1BD0DE19C(v9, v51, &qword_1EBD3F790, &qword_1BE0D6710);
  type metadata accessor for FinanceKitTransactionReportProblemView.ViewModel(0);
  swift_allocObject();
  v55 = sub_1BD9A0BCC(v46);
  sub_1BE051694();
  result = sub_1BD0DE53C(v9, &qword_1EBD3F790, &qword_1BE0D6710);
  v47 = v56;
  v48 = v57;
  v49 = sub_1BD813750;
LABEL_6:
  v50 = v54;
  *v54 = v47;
  v50[1] = v48;
  v50[2] = v49;
  v50[3] = v45;
  return result;
}

uint64_t sub_1BD80E120@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = type metadata accessor for FinanceKitTransactionDetailView(0);
  v70 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v71 = v3;
  v73 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FinanceKitTransactionFoundInMailView(0);
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v74 = (&v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46160, &qword_1BE0FBA00);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v69 - v7;
  v9 = sub_1BE049D24();
  v10 = *(v9 - 8);
  v76 = v9;
  v77 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v75 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0, &qword_1BE0D66D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v69 - v15;
  v17 = _s23TransactionDetailsModelVMa(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v1;
  v22 = v1[1];
  v72 = v1;
  v84 = v21;
  v85 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70, &unk_1BE0FB8E0);
  sub_1BE0516A4();
  v23 = v82;
  KeyPath = swift_getKeyPath();
  v84 = v23;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v25, v26, v27, v28, v29, v30, v31;
  v32 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  sub_1BD0DE19C(v23 + v32, v16, &qword_1EBD461C0, &qword_1BE0D66D0);
  v23, v33, v34, v35, v36, v37, v38, v39;
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v40 = &qword_1EBD461C0;
    v41 = &qword_1BE0D66D0;
    v42 = v16;
  }

  else
  {
    sub_1BD8139C8(v16, v20, _s23TransactionDetailsModelVMa);
    sub_1BD0DE19C(&v20[*(v17 + 76)], v8, &qword_1EBD46160, &qword_1BE0FBA00);
    v43 = v76;
    if ((*(v77 + 48))(v8, 1, v76) != 1)
    {
      v47 = v77;
      v48 = v75;
      (*(v77 + 32))(v75, v8, v43);
      v49 = v69;
      (*(v47 + 16))(v69, v48, v43);
      type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel(0);
      swift_allocObject();
      v50 = sub_1BD9B25B8(v49);
      v51 = v73;
      sub_1BD813E10(v72, v73, type metadata accessor for FinanceKitTransactionDetailView);
      v52 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v53 = swift_allocObject();
      sub_1BD8139C8(v51, v53 + v52, type metadata accessor for FinanceKitTransactionDetailView);
      v54 = [objc_allocWithZone(MEMORY[0x1E69B8558]) initWithAppType_];
      v55 = v74;
      *v74 = v54;
      v56 = v79;
      sub_1BD813BE0(&qword_1EBD54ED8, type metadata accessor for FinanceKitTransactionFoundInMailView.ViewModel, &unk_1BE10A5F0);
      v57 = v54;
      sub_1BE048964();
      sub_1BE051A94();
      v58 = (v55 + *(v56 + 28));
      *v58 = sub_1BD8136C4;
      v58[1] = v53;
      objc_allocWithZone(type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver(0));
      sub_1BE048964();
      v81 = sub_1BD9B4024(v57, sub_1BD8136C4, v53);
      sub_1BE051694();
      v50, v59, v60, v61, v62, v63, v64, v65;
      (*(v77 + 8))(v75, v43);
      sub_1BD813618(v20, _s23TransactionDetailsModelVMa);
      v66 = v83;
      *(v55 + 8) = v82;
      *(v55 + 16) = v66;
      v67 = v80;
      sub_1BD8139C8(v55, v80, type metadata accessor for FinanceKitTransactionFoundInMailView);
      v46 = v56;
      v45 = v67;
      v44 = 0;
      return (*(v78 + 56))(v45, v44, 1, v46);
    }

    sub_1BD813618(v20, _s23TransactionDetailsModelVMa);
    v40 = &qword_1EBD46160;
    v41 = &qword_1BE0FBA00;
    v42 = v8;
  }

  sub_1BD0DE53C(v42, v40, v41);
  v44 = 1;
  v46 = v79;
  v45 = v80;
  return (*(v78 + 56))(v45, v44, 1, v46);
}

uint64_t sub_1BD80E820@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v36 = type metadata accessor for FinanceKitTransactionDebugView(0);
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BE049A94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - v9;
  v11 = sub_1BE04AFE4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = v1[1];
  v38 = *v1;
  v39 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70, &unk_1BE0FB8E0);
  sub_1BE0516A4();
  v19 = v37;
  sub_1BD0DE19C(v37 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v10, &qword_1EBD3F790, &qword_1BE0D6710);
  v19, v20, v21, v22, v23, v24, v25, v26;
  v27 = type metadata accessor for TransactionContext(0);
  if ((*(*(v27 - 8) + 48))(v10, 1, v27) == 1)
  {
    sub_1BD0DE53C(v10, &qword_1EBD3F790, &qword_1BE0D6710);
    v28 = 1;
    v29 = v35;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_1BD813618(v10, type metadata accessor for TransactionContext);
    sub_1BE049A14();
    (*(v5 + 8))(v7, v4);
    v30 = *(v12 + 32);
    v30(v17, v14, v11);
    v31 = v34;
    v30(v34, v17, v11);
    v32 = v35;
    sub_1BD8139C8(v31, v35, type metadata accessor for FinanceKitTransactionDebugView);
    v28 = 0;
    v29 = v32;
  }

  return (*(v2 + 56))(v29, v28, 1, v36);
}

uint64_t sub_1BD80EBE0(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_1BE0528A4();
  v1[7] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD80EC7C, v3, v2);
}

uint64_t sub_1BD80EC7C()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70, &unk_1BE0FB8E0);
  sub_1BE0516A4();
  v0[10] = v0[4];
  v0[11] = sub_1BE052894();
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1BD80ED58;

  return sub_1BD439EEC();
}

uint64_t sub_1BD80ED58()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v5 = sub_1BE052844();

    return MEMORY[0x1EEE6DFA0](sub_1BD80F080, v5, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 104) = v6;
    *v6 = v3;
    v6[1] = sub_1BD80EEFC;

    return sub_1BD43A918();
  }
}

uint64_t sub_1BD80EEFC()
{

  if (v0)
  {

    v1 = sub_1BE052844();
    v3 = v2;
    v4 = sub_1BD813F88;
  }

  else
  {
    v1 = sub_1BE052844();
    v3 = v5;
    v4 = sub_1BD80F0EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v1, v3);
}

uint64_t sub_1BD80F080(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 88);
  *(v8 + 80), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;
  v17 = *(v8 + 64);
  v18 = *(v8 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1BD813F8C, v17, v18);
}

uint64_t sub_1BD80F0EC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 80);
  *(v8 + 88), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;
  v17 = *(v8 + 64);
  v18 = *(v8 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1BD5B5274, v17, v18);
}

id sub_1BD80F158@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v3 = sub_1BE04EC54();
  v4 = sub_1BE0501D4();
  *a2 = v6;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;

  return v6;
}

uint64_t sub_1BD80F1B0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD461C0, &qword_1BE0D66D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v113 = v100 - v3;
  v112 = sub_1BE049904();
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v109 = v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v110 = v100 - v6;
  v105 = sub_1BE049834();
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v8 = v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_1BE04AF64();
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v10 = v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790, &qword_1BE0D6710);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v100 - v12;
  v14 = sub_1BE049A94();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v100 - v19;
  v103 = a1;
  v21 = a1[1];
  v107 = *a1;
  v114 = v107;
  v106 = v21;
  v115 = v21;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70, &unk_1BE0FB8E0);
  sub_1BE0516A4();
  v22 = v116;
  sub_1BD0DE19C(v116 + OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel_transactionContext, v13, &qword_1EBD3F790, &qword_1BE0D6710);
  v22, v23, v24, v25, v26, v27, v28, v29;
  v30 = type metadata accessor for TransactionContext(0);
  if ((*(*(v30 - 8) + 48))(v13, 1, v30) == 1)
  {
    return sub_1BD0DE53C(v13, &qword_1EBD3F790, &qword_1BE0D6710);
  }

  (*(v15 + 16))(v17, v13, v14);
  sub_1BD813618(v13, type metadata accessor for TransactionContext);
  (*(v15 + 32))(v20, v17, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0BA740;
  v33 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v100[1] = inited + 32;
  v34 = sub_1BE052434();
  v35 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v34;
  *(inited + 48) = v36;
  v37 = *v35;
  *(inited + 56) = *v35;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v38;
  v39 = *MEMORY[0x1E69BB358];
  *(inited + 80) = *MEMORY[0x1E69BB358];
  v40 = v33;
  v41 = v37;
  v42 = v39;
  sub_1BE049974();
  v43 = sub_1BD80FBD4();
  v45 = v44;
  (*(v101 + 8))(v10, v102);
  *(inited + 88) = v43;
  *(inited + 96) = v45;
  v46 = *MEMORY[0x1E69BB380];
  *(inited + 104) = *MEMORY[0x1E69BB380];
  v47 = v46;
  sub_1BE049984();
  v49 = sub_1BD80FD84(v8, v48);
  v51 = v50;
  (*(v104 + 8))(v8, v105);
  *(inited + 112) = v49;
  *(inited + 120) = v51;
  v52 = *MEMORY[0x1E69BB370];
  *(inited + 128) = *MEMORY[0x1E69BB370];
  v53 = v52;
  v54 = v110;
  sub_1BE049A34();
  v55 = v111;
  v56 = v109;
  v57 = v112;
  (*(v111 + 16))(v109, v54, v112);
  v58 = (*(v55 + 88))(v56, v57);
  v59 = v57;
  v60 = v55;
  v61 = v54;
  if (v58 == *MEMORY[0x1E6967960])
  {
    v62 = 0xEA00000000006465;
    v63 = 0x7A69726F68747561;
  }

  else if (v58 == *MEMORY[0x1E6967968])
  {
    v62 = 0xE400000000000000;
    v63 = 1869440365;
  }

  else if (v58 == *MEMORY[0x1E6967978])
  {
    v62 = 0xE700000000000000;
    v63 = 0x676E69646E6570;
  }

  else if (v58 == *MEMORY[0x1E6967970])
  {
    v62 = 0xE600000000000000;
    v63 = 0x64656B6F6F62;
  }

  else
  {
    if (v58 != *MEMORY[0x1E6967980])
    {
      result = sub_1BE053994();
      __break(1u);
      return result;
    }

    v62 = 0xE800000000000000;
    v63 = 0x64657463656A6572;
  }

  v64 = *MEMORY[0x1E69BB6F8];
  (*(v60 + 8))(v61, v59);
  *(inited + 136) = v63;
  *(inited + 144) = v62;
  v65 = *MEMORY[0x1E69BB360];
  *(inited + 152) = *MEMORY[0x1E69BB360];
  v114 = v107;
  v115 = v106;
  v66 = v65;
  sub_1BE0516A4();
  v67 = v116;
  KeyPath = swift_getKeyPath();
  v114 = v67;
  sub_1BD813BE0(&qword_1EBD461C8, _s9ViewModelCMa_1, &unk_1BE0D66B4);
  sub_1BE04B594();
  KeyPath, v69, v70, v71, v72, v73, v74, v75;
  v76 = OBJC_IVAR____TtCV9PassKitUI31FinanceKitTransactionDetailView9ViewModel__transactionDetails;
  swift_beginAccess();
  v77 = v113;
  sub_1BD0DE19C(v67 + v76, v113, &qword_1EBD461C0, &qword_1BE0D66D0);
  v67, v78, v79, v80, v81, v82, v83, v84;
  v85 = _s23TransactionDetailsModelVMa(0);
  if ((*(*(v85 - 8) + 48))(v77, 1, v85))
  {
    sub_1BD0DE53C(v77, &qword_1EBD461C0, &qword_1BE0D66D0);
  }

  else
  {
    v88 = *(v77 + *(v85 + 44));
    v89 = v88;
    sub_1BD0DE53C(v77, &qword_1EBD461C0, &qword_1BE0D66D0);
    if (v88)
    {

      v86 = 0xE400000000000000;
      v87 = 1702195828;
      goto LABEL_18;
    }
  }

  v86 = 0xE500000000000000;
  v87 = 0x65736C6166;
LABEL_18:
  v90 = objc_opt_self();
  *(inited + 160) = v87;
  *(inited + 168) = v86;
  v91 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD813BE0(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v92 = sub_1BE052224();
  v91, v93, v94, v95, v96, v97, v98, v99;
  [v90 subject:v64 sendEvent:v92];

  return (*(v15 + 8))(v20, v14);
}

uint64_t sub_1BD80FBD4()
{
  v0 = sub_1BE04AF64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = sub_1BE04AE64();
  v8 = PKDateIgnoringTimeWithTimeZone();

  if (!v8)
  {
    return 6369134;
  }

  sub_1BE04AEE4();

  (*(v1 + 32))(v6, v3, v0);
  result = PKPaymentDateFormatter();
  if (result)
  {
    v10 = result;
    v11 = sub_1BE04AE64();
    v12 = [v10 stringFromDate_];

    v13 = sub_1BE052434();
    (*(v1 + 8))(v6, v0);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD80FD84(uint64_t a1, double a2)
{
  v3 = sub_1BE049834();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69678B8])
  {
    return 0x6E776F6E6B6E75;
  }

  if (v8 == *MEMORY[0x1E6967850])
  {
    return 0x656D7473756A6461;
  }

  if (v8 == *MEMORY[0x1E6967888])
  {
    return 7173217;
  }

  if (v8 == *MEMORY[0x1E6967860])
  {
    return 0x6D7961506C6C6962;
  }

  if (v8 == *MEMORY[0x1E69678A0])
  {
    return 0x6B63656863;
  }

  if (v8 == *MEMORY[0x1E69678B0])
  {
    return 0x7469736F706564;
  }

  v10 = v8;
  result = 0x6544746365726964;
  if (v10 != *MEMORY[0x1E6967878])
  {
    if (v10 == *MEMORY[0x1E69678C0])
    {
      return 0x646E656469766964;
    }

    else if (v10 == *MEMORY[0x1E6967890])
    {
      return 6645094;
    }

    else if (v10 == *MEMORY[0x1E69678C8])
    {
      return 0x7473657265746E69;
    }

    else if (v10 == *MEMORY[0x1E6967870])
    {
      return 0x53664F746E696F70;
    }

    else if (v10 == *MEMORY[0x1E69678D0])
    {
      return 0x726566736E617274;
    }

    else if (v10 == *MEMORY[0x1E6967858])
    {
      return 0x7761726468746977;
    }

    else if (v10 == *MEMORY[0x1E6967880])
    {
      return 0x676E69646E617473;
    }

    else if (v10 != *MEMORY[0x1E6967868])
    {
      if (v10 == *MEMORY[0x1E6967898])
      {
        return 1851879276;
      }

      else if (v10 == *MEMORY[0x1E69678A8])
      {
        return 0x646E75666572;
      }

      else
      {
        result = sub_1BE053994();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1BD8101A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCA0, &qword_1BE0BD3E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_1BE0493F4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1BE04F7C4();
  LOBYTE(v54) = 1;
  sub_1BD8107B8(v69);
  *&v68[7] = v69[0];
  *&v68[23] = v69[1];
  *&v68[39] = v69[2];
  *&v68[55] = v69[3];
  v30 = v54;
  v10 = _s23TransactionDetailsModelVMa(0);
  sub_1BD0DE19C(a1 + *(v10 + 48), v5, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BD0DE53C(v5, &qword_1EBD3BCA0, &qword_1BE0BD3E0);
    v28 = 0;
    v29 = 0;
    v19 = 0;
    v20 = 0;
    v11 = 0;
    v26 = 0;
    v27 = 0;
    v24 = 0;
    v25 = 0;
    v22 = 0;
    v23 = 0;
    v12 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v29 = sub_1BE04F504();
    LOBYTE(v62[0]) = 1;
    sub_1BD810A60(v9, a1, &v49);
    *&v52[16] = *&v50[16];
    *&v52[32] = *&v50[32];
    *&v52[48] = *&v50[48];
    v51 = v49;
    *v52 = *v50;
    v56 = *&v50[16];
    v57 = *&v50[32];
    v58 = *&v50[48];
    v55 = *v50;
    v54 = v49;
    sub_1BD0DE19C(&v51, v42, &qword_1EBD3E1F0, &qword_1BE0C3060);
    sub_1BD0DE53C(&v54, &qword_1EBD3E1F0, &qword_1BE0C3060);
    v11 = *(&v51 + 1);
    v27 = *&v52[8];
    v28 = *v52;
    v25 = *&v52[24];
    v26 = *&v52[16];
    v23 = *&v52[40];
    v24 = *&v52[32];
    v22 = *&v52[48];
    v19 = *&v52[56];
    v20 = v51;
    v12 = LOBYTE(v62[0]);
    (*(v7 + 8))(v9, v6);
  }

  v13 = sub_1BE04F504();
  LOBYTE(v49) = 1;
  sub_1BD810E04(a1, &v54);
  v36 = v56;
  v37 = v57;
  v34 = v54;
  v35 = v55;
  v39[2] = v56;
  v39[3] = v57;
  v39[4] = v58;
  v39[1] = v55;
  v38 = v58;
  v39[0] = v54;
  sub_1BD0DE19C(&v34, &v51, &qword_1EBD3E1F0, &qword_1BE0C3060);
  sub_1BD0DE53C(v39, &qword_1EBD3E1F0, &qword_1BE0C3060);
  *&v33[23] = v35;
  *&v33[39] = v36;
  *&v33[55] = v37;
  *&v33[71] = v38;
  *&v33[7] = v34;
  v14 = v49;
  v40[0] = v31;
  v40[1] = 0;
  v41[0] = v30;
  *&v41[1] = *v68;
  *&v41[64] = *&v68[63];
  *&v41[49] = *&v68[48];
  *&v41[33] = *&v68[32];
  *&v41[17] = *&v68[16];
  *v32 = v31;
  *&v32[16] = *v41;
  *&v32[80] = *&v41[64];
  *&v32[48] = *&v41[32];
  *&v32[64] = *&v41[48];
  *&v32[32] = *&v41[16];
  v42[0] = v29;
  v42[1] = 0;
  v18 = v12;
  *&v43 = v12;
  v16 = v19;
  v15 = v20;
  *(&v43 + 1) = v20;
  *&v44 = v11;
  *(&v44 + 1) = v28;
  *&v45 = v27;
  *(&v45 + 1) = v26;
  *&v46 = v25;
  *(&v46 + 1) = v24;
  *&v47 = v23;
  *(&v47 + 1) = v22;
  v48 = v19;
  *&v32[120] = v44;
  *&v32[104] = v43;
  *&v32[88] = v29;
  *&v32[184] = v19;
  *&v32[168] = v47;
  *&v32[152] = v46;
  *&v32[136] = v45;
  v49 = v13;
  v50[0] = v14;
  *&v50[1] = *v33;
  *&v50[17] = *&v33[16];
  *&v50[80] = *(&v38 + 1);
  *&v50[65] = *&v33[64];
  *&v50[49] = *&v33[48];
  *&v50[33] = *&v33[32];
  *&v32[192] = v13;
  *&v32[208] = *v50;
  *&v32[288] = *&v50[80];
  *&v32[256] = *&v50[48];
  *&v32[272] = *&v50[64];
  *&v32[224] = *&v50[16];
  *&v32[240] = *&v50[32];
  memcpy(v21, v32, 0x128uLL);
  *&v52[33] = *&v33[32];
  *&v52[49] = *&v33[48];
  *v53 = *&v33[64];
  *&v52[1] = *v33;
  v51 = v13;
  v52[0] = v14;
  *&v53[15] = *&v33[79];
  *&v52[17] = *&v33[16];
  sub_1BD0DE19C(v40, &v54, &qword_1EBD3B890, &unk_1BE0C2FD0);
  sub_1BD0DE19C(v42, &v54, &qword_1EBD54F58, &unk_1BE0FBAB8);
  sub_1BD0DE19C(&v49, &v54, &unk_1EBD4D3D0, &qword_1BE0DA410);
  sub_1BD0DE53C(&v51, &unk_1EBD4D3D0, &qword_1BE0DA410);
  v54 = v29;
  *&v55 = v18;
  *(&v55 + 1) = v15;
  *&v56 = v11;
  *(&v56 + 1) = v28;
  *&v57 = v27;
  *(&v57 + 1) = v26;
  *&v58 = v25;
  *(&v58 + 1) = v24;
  v59 = v23;
  v60 = v22;
  v61 = v16;
  sub_1BD0DE53C(&v54, &qword_1EBD54F58, &unk_1BE0FBAB8);
  v62[0] = v31;
  v62[1] = 0;
  v63 = v30;
  v65 = *&v68[16];
  v66 = *&v68[32];
  *v67 = *&v68[48];
  *&v67[15] = *&v68[63];
  v64 = *v68;
  return sub_1BD0DE53C(v62, &qword_1EBD3B890, &unk_1BE0C2FD0);
}

void sub_1BD8107B8(uint64_t a2@<X8>)
{
  _s23TransactionDetailsModelVMa(0);
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v3 = sub_1BE0506C4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1BE0505D4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  sub_1BD0DDF10(v3, v5, (v7 & 1), v15, v17, v18, v19, v20);
  v9, v21, v22, v23, v24, v25, v26, v27;
  v28 = sub_1BE0502A4();
  v29 = sub_1BE0505F4();
  v128 = v30;
  v129 = v29;
  v127 = v31;
  v130 = v32;
  v28, v30, v31, v32, v33, v34, v35, v36;
  sub_1BD0DDF10(v10, v12, (v14 & 1), v37, v38, v39, v40, v41);
  v16, v42, v43, v44, v45, v46, v47, v48;
  sub_1BE048C84();
  v49 = sub_1BE0506C4();
  v51 = v50;
  LOBYTE(v3) = v52;
  v54 = v53;
  v55 = sub_1BE0502A4();
  v56 = sub_1BE0505F4();
  v58 = v57;
  LOBYTE(v10) = v59;
  v61 = v60;
  v55, v57, v59, v60, v62, v63, v64, v65;
  sub_1BD0DDF10(v49, v51, (v3 & 1), v66, v67, v68, v69, v70);
  v54, v71, v72, v73, v74, v75, v76, v77;
  v78 = [objc_opt_self() secondaryLabelColor];
  v131 = sub_1BE0511C4();
  v79 = sub_1BE050574();
  v81 = v80;
  LOBYTE(v49) = v82;
  v84 = v83;
  sub_1BD0DDF10(v56, v58, (v10 & 1), v83, v85, v86, v87, v88);
  v131, v89, v90, v91, v92, v93, v94, v95;
  v61, v96, v97, v98, v99, v100, v101, v102;
  *a2 = v129;
  *(a2 + 8) = v128;
  *(a2 + 16) = v127 & 1;
  *(a2 + 24) = v130;
  *(a2 + 32) = v79;
  *(a2 + 40) = v81;
  *(a2 + 48) = v49 & 1;
  *(a2 + 56) = v84;
  sub_1BD0D7F18(v129, v128, v127 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v79, v81, v49 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v79, v81, (v49 & 1), v103, v104, v105, v106, v107);
  v84, v108, v109, v110, v111, v112, v113, v114;
  sub_1BD0DDF10(v129, v128, (v127 & 1), v115, v116, v117, v118, v119);
  v130, v120, v121, v122, v123, v124, v125, v126;
}

void sub_1BD810A60(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a2;
  v112 = a1;
  v113 = sub_1BE04B0F4();
  v110 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v5 = &v105[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1BE04BD74();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v105[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 104))(v10, *MEMORY[0x1E69B80B0], v6, v8);
  v11 = PKPassKitBundle();
  if (v11)
  {
    v12 = v11;
    v13 = sub_1BE04B6F4();
    v15 = v14;

    (*(v7 + 8))(v10, v6);
    v117 = v13;
    v118 = v15;
    sub_1BD0DDEBC();
    v16 = sub_1BE0506C4();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = sub_1BE0502A4();
    v24 = sub_1BE0505F4();
    v107 = v25;
    v108 = v24;
    v106 = v26;
    v109 = v27;
    v23, v25, v26, v27, v28, v29, v30, v31;
    sub_1BD0DDF10(v16, v18, (v20 & 1), v32, v33, v34, v35, v36);
    v22, v37, v38, v39, v40, v41, v42, v43;
    _s23TransactionDetailsModelVMa(0);
    sub_1BE04B054();
    v44 = sub_1BE0493D4();
    v46 = v45;
    (*(v110 + 8))(v5, v113);
    v117 = v44;
    v118 = v46;
    v47 = sub_1BE0506C4();
    v49 = v48;
    LOBYTE(v22) = v50;
    v52 = v51;
    v53 = sub_1BE0502A4();
    v54 = sub_1BE0505F4();
    v56 = v55;
    LOBYTE(v13) = v57;
    v59 = v58;
    v53, v55, v57, v58, v60, v61, v62, v63;
    sub_1BD0DDF10(v47, v49, (v22 & 1), v64, v65, v66, v67, v68);
    v52, v69, v70, v71, v72, v73, v74, v75;
    v76 = v106 & 1;
    LOBYTE(v117) = v106 & 1;
    v116 = v106 & 1;
    v115 = 1;
    v114 = v13 & 1;
    v78 = v107;
    v77 = v108;
    *a3 = v108;
    *(a3 + 8) = v78;
    *(a3 + 16) = v76;
    v79 = v109;
    *(a3 + 24) = v109;
    *(a3 + 32) = 0;
    *(a3 + 40) = 1;
    *(a3 + 48) = v54;
    *(a3 + 56) = v56;
    *(a3 + 64) = v13 & 1;
    *(a3 + 72) = v59;
    v80 = v77;
    sub_1BD0D7F18(v77, v78, v76);
    sub_1BE048C84();
    sub_1BD0D7F18(v54, v56, v13 & 1);
    sub_1BE048C84();
    sub_1BD0DDF10(v54, v56, (v13 & 1), v81, v82, v83, v84, v85);
    v59, v86, v87, v88, v89, v90, v91, v92;
    sub_1BD0DDF10(v80, v78, v117, v93, v94, v95, v96, v97);
    v79, v98, v99, v100, v101, v102, v103, v104;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD810E04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v147 = a1;
  v148 = sub_1BE04B0F4();
  v146 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v4 = v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04BD74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69B80D8], v5, v7);
  v10 = PKPassKitBundle();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1BE04B6F4();
    v14 = v13;

    (*(v6 + 8))(v9, v5);
    v152 = v12;
    v153 = v14;
    v141[1] = sub_1BD0DDEBC();
    v15 = sub_1BE0506C4();
    v17 = v16;
    LOBYTE(v11) = v18;
    v20 = v19;
    v21 = sub_1BE0505D4();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    sub_1BD0DDF10(v15, v17, (v11 & 1), v26, v28, v29, v30, v31);
    v20, v32, v33, v34, v35, v36, v37, v38;
    v39 = sub_1BE0502A4();
    v40 = sub_1BE0505F4();
    v143 = v41;
    v144 = v40;
    v142 = v42;
    v145 = v43;
    v39, v41, v42, v43, v44, v45, v46, v47;
    sub_1BD0DDF10(v21, v23, (v25 & 1), v48, v49, v50, v51, v52);
    v27, v53, v54, v55, v56, v57, v58, v59;
    _s23TransactionDetailsModelVMa(0);
    sub_1BE04B054();
    v60 = sub_1BE0493D4();
    v62 = v61;
    (*(v146 + 8))(v4, v148);
    v152 = v60;
    v153 = v62;
    v63 = sub_1BE0506C4();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v70 = sub_1BE0505D4();
    v72 = v71;
    LOBYTE(v15) = v73;
    v75 = v74;
    sub_1BD0DDF10(v63, v65, (v67 & 1), v74, v76, v77, v78, v79);
    v69, v80, v81, v82, v83, v84, v85, v86;
    v87 = sub_1BE0502A4();
    v88 = sub_1BE0505F4();
    v90 = v89;
    LOBYTE(v11) = v91;
    v93 = v92;
    v87, v89, v91, v92, v94, v95, v96, v97;
    sub_1BD0DDF10(v70, v72, (v15 & 1), v98, v99, v100, v101, v102);
    v75, v103, v104, v105, v106, v107, v108, v109;
    v110 = v142 & 1;
    LOBYTE(v152) = v142 & 1;
    v151 = v142 & 1;
    v150 = 1;
    v111 = (v11 & 1);
    v149 = v11 & 1;
    v112 = v11 & 1;
    v114 = v143;
    v113 = v144;
    *a2 = v144;
    *(a2 + 8) = v114;
    *(a2 + 16) = v110;
    v115 = v145;
    *(a2 + 24) = v145;
    *(a2 + 32) = 0;
    *(a2 + 40) = 1;
    *(a2 + 48) = v88;
    *(a2 + 56) = v90;
    *(a2 + 64) = v112;
    *(a2 + 72) = v93;
    v116 = v113;
    sub_1BD0D7F18(v113, v114, v110);
    sub_1BE048C84();
    sub_1BD0D7F18(v88, v90, v111);
    sub_1BE048C84();
    sub_1BD0DDF10(v88, v90, v111, v117, v118, v119, v120, v121);
    v93, v122, v123, v124, v125, v126, v127, v128;
    sub_1BD0DDF10(v116, v114, v152, v129, v130, v131, v132, v133);
    v115, v134, v135, v136, v137, v138, v139, v140;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD811208@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04F7B4();
  v25[0] = 1;
  sub_1BD81156C(a1, &v45);
  v39 = *&v46[144];
  v40 = *&v46[160];
  v41 = *&v46[176];
  v35 = *&v46[80];
  v36 = *&v46[96];
  v37 = *&v46[112];
  v38 = *&v46[128];
  v31 = *&v46[16];
  v32 = *&v46[32];
  v33 = *&v46[48];
  v34 = *&v46[64];
  v29 = v45;
  v30 = *v46;
  v42[10] = *&v46[144];
  v42[11] = *&v46[160];
  v42[12] = *&v46[176];
  v42[6] = *&v46[80];
  v42[7] = *&v46[96];
  v42[9] = *&v46[128];
  v42[8] = *&v46[112];
  v42[2] = *&v46[16];
  v42[3] = *&v46[32];
  v42[4] = *&v46[48];
  v42[5] = *&v46[64];
  v42[0] = v45;
  v42[1] = *v46;
  sub_1BD0DE19C(&v29, &v43, &qword_1EBD476C8, &qword_1BE0DA418);
  sub_1BD0DE53C(v42, &qword_1EBD476C8, &qword_1BE0DA418);
  *&v28[151] = v38;
  *&v28[167] = v39;
  *&v28[183] = v40;
  *&v28[199] = v41;
  *&v28[87] = v34;
  *&v28[103] = v35;
  *&v28[119] = v36;
  *&v28[135] = v37;
  *&v28[23] = v30;
  *&v28[39] = v31;
  *&v28[55] = v32;
  *&v28[71] = v33;
  *&v28[7] = v29;
  v43 = v4;
  v44[0] = 1;
  v5 = *&v28[144];
  *&v44[161] = *&v28[160];
  v6 = *&v28[160];
  *&v44[177] = *&v28[176];
  v7 = *&v28[176];
  *&v44[193] = *&v28[192];
  *&v44[208] = *(&v41 + 1);
  v8 = *&v28[80];
  *&v44[97] = *&v28[96];
  v9 = *&v28[96];
  *&v44[113] = *&v28[112];
  v10 = *&v28[112];
  *&v44[129] = *&v28[128];
  v11 = *&v28[128];
  *&v44[145] = *&v28[144];
  v12 = *&v28[16];
  *&v44[33] = *&v28[32];
  v13 = *&v28[32];
  *&v44[49] = *&v28[48];
  v14 = *&v28[48];
  *&v44[65] = *&v28[64];
  v15 = *&v28[64];
  *&v44[81] = *&v28[80];
  *&v44[1] = *v28;
  v16 = *v28;
  *&v44[17] = *&v28[16];
  *&v26[183] = *&v44[160];
  *&v26[199] = *&v44[176];
  *&v26[215] = *&v44[192];
  *&v26[231] = *(&v41 + 1);
  *&v26[119] = *&v44[96];
  *&v26[135] = *&v44[112];
  *&v26[151] = *&v44[128];
  *&v26[167] = *&v44[144];
  *&v26[55] = *&v44[32];
  *&v26[71] = *&v44[48];
  *&v26[87] = *&v44[64];
  *&v26[103] = *&v44[80];
  *&v26[7] = v4;
  *&v26[23] = *v44;
  *&v26[39] = *&v44[16];
  v17 = *&v26[160];
  *(a2 + 185) = *&v26[176];
  v18 = *&v26[208];
  *(a2 + 201) = *&v26[192];
  *(a2 + 217) = v18;
  *(a2 + 232) = *&v26[223];
  v19 = *&v26[96];
  *(a2 + 121) = *&v26[112];
  v20 = *&v26[144];
  *(a2 + 137) = *&v26[128];
  *(a2 + 153) = v20;
  *(a2 + 169) = v17;
  v21 = *&v26[32];
  *(a2 + 57) = *&v26[48];
  v22 = *&v26[80];
  *(a2 + 73) = *&v26[64];
  *(a2 + 89) = v22;
  *(a2 + 105) = v19;
  v23 = *&v26[16];
  *(a2 + 9) = *v26;
  *(a2 + 25) = v23;
  *(a2 + 41) = v21;
  *&v46[161] = v6;
  *&v46[177] = v7;
  *v47 = *&v28[192];
  *&v46[97] = v9;
  *&v46[113] = v10;
  *&v46[129] = v11;
  *&v46[145] = v5;
  *&v46[33] = v13;
  *&v46[49] = v14;
  *&v46[65] = v15;
  *&v46[81] = v8;
  *&v46[1] = v16;
  v27 = 1;
  v25[232] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 248) = 0;
  *(a2 + 256) = 1;
  v45 = v4;
  v46[0] = 1;
  *&v47[15] = *&v28[207];
  *&v46[17] = v12;
  sub_1BD0DE19C(&v43, v25, &qword_1EBD476D0, &qword_1BE0DA420);
  return sub_1BD0DE53C(&v45, &qword_1EBD476D0, &qword_1BE0DA420);
}

id sub_1BD81156C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BE04B0F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = _s23TransactionDetailsModelVMa(0);
  sub_1BE04B054();
  v8 = sub_1BE0493D4();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v232 = v8;
  v233 = v10;
  v11 = sub_1BD0DDEBC();
  v12 = sub_1BE0506C4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  result = PKRoundedSystemFontOfSizeAndWeight(64.0, *MEMORY[0x1E69DB980]);
  if (result)
  {
    v20 = sub_1BE050484();
    v213 = sub_1BE0505F4();
    v214 = v21;
    v219 = v22;
    v24 = v23;
    v20, v22, v23, v21, v25, v26, v27, v28;
    sub_1BD0DDF10(v12, v14, (v16 & 1), v29, v30, v31, v32, v33);
    v18, v34, v35, v36, v37, v38, v39, v40;
    KeyPath = swift_getKeyPath();
    v212 = swift_getKeyPath();
    v215 = v24 & 1;
    v254 = v24 & 1;
    v252 = 0;
    v216 = sub_1BE0501D4();
    sub_1BE04E1F4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v255 = 0;
    v217 = sub_1BE051464();
    v49 = &a1[*(v220 + 36)];
    v50 = v49[1];
    v232 = *v49;
    v233 = v50;
    sub_1BE048C84();
    v51 = sub_1BE0506C4();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = sub_1BE0502A4();
    v59 = sub_1BE0505F4();
    v205 = a1;
    v206 = v11;
    v61 = v60;
    v63 = v62;
    v208 = v64;
    v58, v60, v62, v64, v65, v66, v67, v68;
    sub_1BD0DDF10(v51, v53, (v55 & 1), v69, v70, v71, v72, v73);
    v57, v74, v75, v76, v77, v78, v79, v80;
    v81 = sub_1BE051494();
    v232 = v81;
    v82 = v208;
    v83 = sub_1BE050574();
    v209 = v84;
    v210 = v83;
    v207 = v85;
    v211 = v86;
    sub_1BD0DDF10(v59, v61, (v63 & 1), v86, v87, v88, v89, v90);
    v81, v91, v92, v93, v94, v95, v96, v97;
    v82, v98, v99, v100, v101, v102, v103, v104;
    v208 = swift_getKeyPath();
    v105 = &v205[*(v220 + 40)];
    v106 = v105[1];
    v232 = *v105;
    v233 = v106;
    sub_1BE048C84();
    v107 = sub_1BE0506C4();
    v109 = v108;
    LOBYTE(v59) = v110;
    v112 = v111;
    v113 = sub_1BE0502A4();
    v114 = sub_1BE0505F4();
    v116 = v115;
    LOBYTE(v58) = v117;
    v206 = v118;
    v113, v115, v117, v118, v119, v120, v121, v122;
    sub_1BD0DDF10(v107, v109, (v59 & 1), v123, v124, v125, v126, v127);
    v112, v128, v129, v130, v131, v132, v133, v134;
    v135 = sub_1BE051494();
    v232 = v135;
    v136 = v206;
    v137 = sub_1BE050574();
    v205 = v137;
    v139 = v138;
    LOBYTE(v59) = v140;
    v220 = v141;
    sub_1BD0DDF10(v114, v116, (v58 & 1), v141, v142, v143, v144, v145);
    v135, v146, v147, v148, v149, v150, v151, v152;
    v136, v153, v154, v155, v156, v157, v158, v159;
    LOBYTE(v136) = v207 & 1;
    v223 = v207 & 1;
    *&v224 = v213;
    *(&v224 + 1) = v219;
    LOBYTE(v225) = v215;
    *(&v225 + 1) = *v253;
    DWORD1(v225) = *&v253[3];
    *(&v225 + 1) = v214;
    *&v226 = KeyPath;
    *(&v226 + 1) = 0x3FE0000000000000;
    *&v227 = v212;
    *(&v227 + 1) = 1;
    LOBYTE(v228) = 0;
    DWORD1(v228) = *&v257[3];
    *(&v228 + 1) = *v257;
    BYTE8(v228) = v216;
    HIDWORD(v228) = *&v256[3];
    *(&v228 + 9) = *v256;
    *&v229 = v42;
    *(&v229 + 1) = v44;
    *&v230 = v46;
    *(&v230 + 1) = v48;
    LOBYTE(v231) = 0;
    DWORD1(v231) = *(v258 + 3);
    *(&v231 + 1) = v258[0];
    *(&v231 + 1) = v217;
    v222 = v207 & 1;
    v160 = (v59 & 1);
    v221 = v59 & 1;
    v161 = v228;
    v162 = v229;
    v163 = v231;
    *(a2 + 96) = v230;
    *(a2 + 112) = v163;
    *(a2 + 64) = v161;
    *(a2 + 80) = v162;
    v164 = v224;
    v165 = v225;
    v166 = v227;
    *(a2 + 32) = v226;
    *(a2 + 48) = v166;
    *a2 = v164;
    *(a2 + 16) = v165;
    v168 = v209;
    v167 = v210;
    *(a2 + 128) = v210;
    *(a2 + 136) = v168;
    *(a2 + 144) = v136;
    v169 = v211;
    v170 = v208;
    *(a2 + 152) = v211;
    *(a2 + 160) = v170;
    *(a2 + 168) = 1;
    *(a2 + 176) = v137;
    *(a2 + 184) = v139;
    *(a2 + 192) = v160;
    v171 = v220;
    *(a2 + 200) = v220;
    sub_1BD0DE19C(&v224, &v232, &qword_1EBD476D8, &qword_1BE0DA4B8);
    sub_1BD0D7F18(v167, v168, v136);
    sub_1BE048C84();
    sub_1BE048964();
    v172 = v205;
    sub_1BD0D7F18(v205, v139, v160);
    sub_1BE048C84();
    sub_1BD0DDF10(v172, v139, v160, v173, v174, v175, v176, v177);
    v171, v178, v179, v180, v181, v182, v183, v184;
    sub_1BD0DDF10(v167, v168, v223, v185, v186, v187, v188, v189);
    v170, v190, v191, v192, v193, v194, v195, v196;
    v169, v197, v198, v199, v200, v201, v202, v203;
    v232 = v213;
    v233 = v219;
    v234 = v215;
    *v235 = *v253;
    *&v235[3] = *&v253[3];
    v236 = v214;
    v237 = KeyPath;
    v238 = 0x3FE0000000000000;
    v239 = v212;
    v240 = 1;
    v241 = 0;
    *v242 = *v257;
    *&v242[3] = *&v257[3];
    v243 = v216;
    *&v244[3] = *&v256[3];
    *v244 = *v256;
    v245 = v42;
    v246 = v44;
    v247 = v46;
    v248 = v48;
    v249 = 0;
    *v250 = v258[0];
    *&v250[3] = *(v258 + 3);
    v251 = v217;
    return sub_1BD0DE53C(&v232, &qword_1EBD476D8, &qword_1BE0DA4B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD811BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinanceKitTransactionDetailView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v10[1] = a1;
  swift_getKeyPath();
  sub_1BD813E10(a2, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitTransactionDetailView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1BD8139C8(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for FinanceKitTransactionDetailView);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F20, &qword_1BE0FBA98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  sub_1BD0DE4F4(&qword_1EBD54F28, &qword_1EBD54F20, &qword_1BE0FBA98, MEMORY[0x1E69E6338]);
  sub_1BD813BE0(&qword_1EBD54F30, _s23TransactionDetailsModelV6ActionVMa, &unk_1BE0D663C);
  sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
  return sub_1BE0519C4();
}

uint64_t sub_1BD811E20(void *a1, uint64_t a2)
{
  v4 = _s23TransactionDetailsModelV6ActionVMa(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FinanceKitTransactionDetailView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = a1[1];
  v16[0] = *a1;
  v16[1] = v11;
  sub_1BD813E10(a2, v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinanceKitTransactionDetailView);
  sub_1BD813E10(a1, v7, _s23TransactionDetailsModelV6ActionVMa);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1BD8139C8(v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12, type metadata accessor for FinanceKitTransactionDetailView);
  sub_1BD8139C8(v7, v14 + v13, _s23TransactionDetailsModelV6ActionVMa);
  sub_1BD0DDEBC();
  sub_1BE048C84();
  return sub_1BE051744();
}

void sub_1BD812050(uint64_t a1, uint64_t a2)
{
  sub_1BD8120BC();
  _s23TransactionDetailsModelV6ActionVMa(0);
  v2 = sub_1BE04A9C4();
  PKOpenURL();
}

void sub_1BD8120BC()
{
  v0 = sub_1BE052434();
  v2 = v1;
  v3 = objc_opt_self();
  v4 = *MEMORY[0x1E69BB6F8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D1E0, &unk_1BE0B9A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE0B98D0;
  v6 = *MEMORY[0x1E69BA680];
  *(inited + 32) = *MEMORY[0x1E69BA680];
  v7 = sub_1BE052434();
  v8 = MEMORY[0x1E69BABE8];
  *(inited + 40) = v7;
  *(inited + 48) = v9;
  v10 = *v8;
  *(inited + 56) = *v8;
  *(inited + 64) = sub_1BE052434();
  *(inited + 72) = v11;
  v12 = *MEMORY[0x1E69BA440];
  *(inited + 80) = *MEMORY[0x1E69BA440];
  *(inited + 88) = v0;
  *(inited + 96) = v2;
  v13 = v6;
  v14 = v10;
  v15 = v12;
  v16 = sub_1BD1AAF50(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F590, &qword_1BE0C0E20);
  swift_arrayDestroy();
  type metadata accessor for PKAnalyticsKey(0);
  sub_1BD813BE0(&qword_1EBD35F00, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
  v17 = sub_1BE052224();
  v16, v18, v19, v20, v21, v22, v23, v24;
  [v3 subject:v4 sendEvent:v17];
}

uint64_t sub_1BD812284@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for FinanceKitTransactionDetailView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = _s23TransactionDetailsModelVMa(0);
  v12 = (a2 + *(v11 + 36));
  v14 = *v12;
  v13 = v12[1];
  v15 = *(v11 + 60);
  v16 = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
  sub_1BD0DE19C(a2 + v15, a4 + *(v16 + 24), &qword_1EBD3F7C0, &unk_1BE0D6570);
  *a4 = a1;
  a4[1] = v14;
  a4[2] = v13;
  sub_1BD813E10(a3, &v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for FinanceKitTransactionDetailView);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_1BD8139C8(&v34[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17, type metadata accessor for FinanceKitTransactionDetailView);
  v19 = type metadata accessor for FinanceKitTransactionMapView(0);
  v20 = (a4 + *(v19 + 20));
  *v20 = sub_1BD813D74;
  v20[1] = v18;
  v21 = a4 + *(v19 + 24);
  v34[15] = 0;
  sub_1BE048C84();
  v22 = a1;
  sub_1BE051694();
  v23 = v35;
  *v21 = v34[16];
  *(v21 + 1) = v23;
  LOBYTE(a1) = sub_1BE0501D4();
  sub_1BE04E1F4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F40, &unk_1BE0FBAA8);
  v33 = a4 + *(result + 36);
  *v33 = a1;
  *(v33 + 1) = v25;
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v33[40] = 0;
  return result;
}

void sub_1BD8124B0(void *a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for FinanceKitTransactionDetailView(0) + 28));
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      type metadata accessor for NavigationController();
      sub_1BD813BE0(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
      sub_1BE048964();
      v5 = v4;
      sub_1BE04D804();
      v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFD8, &qword_1BE0E7E70));
      sub_1BE048964();
      v7 = a1;
      v8 = sub_1BE04F894();
      if ([v5 _pk_settings_useStateDrivenNavigation])
      {
        [v5 _pk_settings_pushViewController_];
      }

      else
      {
        [v5 pushViewController:v8 animated:1];
      }

      v3, v9, v10, v11, v12, v13, v14, v15;
    }
  }

  else
  {
    type metadata accessor for NavigationController();
    sub_1BD813BE0(&qword_1EBD38DA8, type metadata accessor for NavigationController, &unk_1BE0E3D88);
    sub_1BE04EEB4();
    __break(1u);
  }
}

void sub_1BD812658(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70, &unk_1BE0FB8E0);
  sub_1BE0516A4();
  sub_1BD43D5E0();
  v8, v1, v2, v3, v4, v5, v6, v7;
}

double sub_1BD8126B4(void *a1, uint64_t a2)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E40, &qword_1BE0FB8C8);
  sub_1BE0516B4();
  return result;
}

void sub_1BD81270C(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v95 = a4;
  v100 = a3;
  v88 = a2;
  LODWORD(v99) = a1;
  v104 = a5;
  v5 = type metadata accessor for FinanceKitTransactionDetailView(0);
  v93 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v94 = v6;
  v97 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04BD74();
  v91 = *(v7 - 8);
  v92 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D58, &unk_1BE0F98B0);
  v101 = *(v9 - 8);
  v102 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v96 = &v81 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54EF8, &qword_1BE0FBA48);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v103 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v81 - v14;
  v98 = sub_1BE049B04();
  v16 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v89 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v81 - v19;
  v21 = sub_1BE04AFE4();
  MEMORY[0x1EEE9AC00](v21);
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v22);
  v28 = &v81 - v27;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if (v99)
  {
    v32 = v23;
    v33 = v24;
    v87 = v24;
    v84 = v25;
    v34 = _s23TransactionDetailsModelVMa(0);
    v35 = v34[13];
    v82 = *(v33 + 16);
    v36 = v20;
    v37 = v88;
    v85 = v32;
    v82(v28, v88 + v35, v32);
    v38 = (v37 + v34[9]);
    v39 = v38[1];
    v86 = *v38;
    v83 = v39;
    v40 = v34[18];
    v99 = v15;
    v41 = *(v16 + 16);
    v42 = v37 + v40;
    v43 = v36;
    v41(v36, v42, v98);
    v44 = objc_allocWithZone(MEMORY[0x1E695DEE0]);
    sub_1BE048C84();
    v31 = [v44 init];
    v45 = v84;
    v82(v84, v28, v32);
    v46 = v89;
    v47 = v98;
    v41(v89, v43, v98);
    v15 = v99;
    _s9ViewModelCMa_4(0);
    swift_allocObject();
    v107 = sub_1BD7DB734(v45, v86, v83, v46);
    sub_1BE051694();
    (*(v16 + 8))(v43, v47);
    (*(v87 + 8))(v28, v85);
    v29 = v105;
    v30 = v106;
    sub_1BE048964();
    v48 = v31;
    sub_1BE048964();
  }

  v49 = v100;
  if (v100 == 2)
  {
    v50 = 1;
    v52 = v101;
    v51 = v102;
  }

  else
  {
    v54 = v90;
    v53 = v91;
    v55 = v92;
    (*(v91 + 104))(v90, *MEMORY[0x1E69B8040], v92, v26);
    v56 = sub_1BE04B714();
    v58 = v57;
    (*(v53 + 8))(v54, v55);
    v107 = v56;
    v108 = v58;
    sub_1BE0528A4();
    v59 = sub_1BE052894();
    v60 = swift_allocObject();
    v61 = v15;
    v62 = MEMORY[0x1E69E85E0];
    *(v60 + 16) = v59;
    *(v60 + 24) = v62;
    *(v60 + 32) = v49 & 1;
    v63 = v97;
    sub_1BD813E10(v95, v97, type metadata accessor for FinanceKitTransactionDetailView);
    v64 = sub_1BE052894();
    v65 = (*(v93 + 80) + 32) & ~*(v93 + 80);
    v66 = swift_allocObject();
    *(v66 + 16) = v64;
    *(v66 + 24) = v62;
    v15 = v61;
    sub_1BD8139C8(v63, v66 + v65, type metadata accessor for FinanceKitTransactionDetailView);
    sub_1BE051934();
    sub_1BD0DDEBC();
    v67 = v96;
    sub_1BE051834();
    v52 = v101;
    v51 = v102;
    (*(v101 + 32))(v61, v67, v102);
    v50 = 0;
  }

  (*(v52 + 56))(v15, v50, 1, v51, v26);
  v68 = v103;
  sub_1BD0DE19C(v15, v103, &qword_1EBD54EF8, &qword_1BE0FBA48);
  v69 = v104;
  *v104 = v29;
  v69[1] = v30;
  v69[2] = v31;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54F00, &qword_1BE0FBA50);
  sub_1BD0DE19C(v68, v69 + *(v70 + 48), &qword_1EBD54EF8, &qword_1BE0FBA48);
  sub_1BD81377C(v29, v30, v31);
  sub_1BD8137C8(v29, v30, v31, v71, v72, v73, v74, v75);
  sub_1BD0DE53C(v15, &qword_1EBD54EF8, &qword_1BE0FBA48);
  sub_1BD0DE53C(v68, &qword_1EBD54EF8, &qword_1BE0FBA48);
  sub_1BD8137C8(v29, v30, v31, v76, v77, v78, v79, v80);
}

void sub_1BD812F18(unsigned __int8 *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54E70, &unk_1BE0FB8E0);
  sub_1BE0516A4();
  sub_1BD4403E4(v4);
  v12, v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_1BD812F80@<X0>(uint64_t *a1@<X8>)
{
  sub_1BE053D04();
  sub_1BE053084();
  sub_1BE053D64();
  result = sub_1BE053B24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BD812FF0()
{
  result = qword_1EBD54E00;
  if (!qword_1EBD54E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DF8, &qword_1BE0FB858);
    sub_1BD0DE4F4(&qword_1EBD54E08, &qword_1EBD54E10, &qword_1BE0FB860, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54E00);
  }

  return result;
}

unint64_t sub_1BD8130A0()
{
  result = qword_1EBD54E20;
  if (!qword_1EBD54E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DE0, &qword_1BE0FB840);
    sub_1BD813158();
    sub_1BD0DE4F4(&qword_1EBD395B8, &qword_1EBD39580, &qword_1BE0D8820, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54E20);
  }

  return result;
}

unint64_t sub_1BD813158()
{
  result = qword_1EBD54E28;
  if (!qword_1EBD54E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54E18, &qword_1BE0FB868);
    sub_1BD0DE4F4(&qword_1EBD54E30, &qword_1EBD54E38, &qword_1BE0FB8A8, MEMORY[0x1E697CD20]);
    sub_1BD0DE4F4(&qword_1EBD395A8, &qword_1EBD395B0, &unk_1BE0DFEE0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54E28);
  }

  return result;
}

uint64_t sub_1BD81323C()
{
  v2 = *(type metadata accessor for FinanceKitTransactionDetailView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD80EBE0(v0 + v3);
}

unint64_t sub_1BD813308()
{
  result = qword_1EBD54E50;
  if (!qword_1EBD54E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DF0, &qword_1BE0FB850);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DE8, &qword_1BE0FB848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DE0, &qword_1BE0FB840);
    sub_1BD8130A0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BD813BE0(&qword_1EBD37148, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54E50);
  }

  return result;
}

unint64_t sub_1BD813444()
{
  result = qword_1EBD54E58;
  if (!qword_1EBD54E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54E58);
  }

  return result;
}

unint64_t sub_1BD813498()
{
  result = qword_1EBD54E60;
  if (!qword_1EBD54E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54E48, &qword_1BE0FB8D0);
    sub_1BD372964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54E60);
  }

  return result;
}

uint64_t sub_1BD813544(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD8135C8(uint64_t result)
{
  if (result)
  {
    sub_1BE048964();
    sub_1BE048964();

    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD813618(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1BD813678(void *a1, char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    a1, a2, a3, a4, a5, a6, a7, a8;
    a4, v10, v11, v12, v13, v14, v15, v16;

    a2, v17, v18, v19, v20, v21, v22, v23;
  }
}

uint64_t sub_1BD8136DC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FinanceKitTransactionDetailView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1BD81377C(uint64_t result, uint64_t a2, void *a3)
{
  if (result)
  {
    sub_1BE048964();
    v4 = a3;

    return sub_1BE048964();
  }

  return result;
}

void sub_1BD8137C8(void *a1, char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  if (a1)
  {
    a1, a2, a3, a4, a5, a6, a7, a8;

    a2, v10, v11, v12, v13, v14, v15, v16;
  }
}

void sub_1BD81381C(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for FinanceKitTransactionDetailView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  sub_1BD812F18(a1, v4, v5, v6);
}

unint64_t sub_1BD813898()
{
  result = qword_1EBD54F18;
  if (!qword_1EBD54F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54F10, qword_1BE0FBA68);
    sub_1BD0DE4F4(&qword_1EBD3FBA0, &unk_1EBD3DF80, &qword_1BE0BB860, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54F18);
  }

  return result;
}

uint64_t sub_1BD813948(void *a1)
{
  v3 = *(type metadata accessor for FinanceKitTransactionDetailView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD811E20(a1, v4);
}

uint64_t sub_1BD8139C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1BD813A30()
{
  v1 = *(type metadata accessor for FinanceKitTransactionDetailView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(_s23TransactionDetailsModelV6ActionVMa(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  sub_1BD812050(v0 + v2, v5);
}

unint64_t sub_1BD813B24()
{
  result = qword_1EBD54F48;
  if (!qword_1EBD54F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54F40, &unk_1BE0FBAA8);
    sub_1BD813BE0(&qword_1EBD54F50, type metadata accessor for FinanceKitTransactionMapView, &unk_1BE113E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54F48);
  }

  return result;
}

uint64_t sub_1BD813BE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_98()
{
  v1 = type metadata accessor for FinanceKitTransactionDetailView(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  *v2, v3, v4, v5, v6, v7, v8, v9;
  v2[1], v10, v11, v12, v13, v14, v15, v16;

  v2[3], v17, v18, v19, v20, v21, v22, v23;
  v24 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA20, &qword_1BE0C6AD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_1BE04E664();
    (*(*(v32 - 8) + 8))(v2 + v24, v32);
  }

  else
  {
    *(v2 + v24), v25, v26, v27, v28, v29, v30, v31;
  }

  *(v2 + *(v1 + 28)), v33, v34, v35, v36, v37, v38, v39;

  return swift_deallocObject();
}

uint64_t sub_1BD813D8C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for FinanceKitTransactionDetailView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1BD813E10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BD813E78()
{
  result = qword_1EBD54F60;
  if (!qword_1EBD54F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54E68, &qword_1BE0FB8D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54DF0, &qword_1BE0FB850);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54E48, &qword_1BE0FB8D0);
    sub_1BD813308();
    sub_1BD813444();
    sub_1BD813498();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54F60);
  }

  return result;
}

id sub_1BD813F90()
{
  sub_1BD81679C();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProvisioningUICoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD81412C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v109 - v9;
  v11 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer;
  v12 = *&v1[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
  if (v12 && (sub_1BE048964(), v13 = sub_1BE04C0C4(), v12, v14, v15, v16, v17, v18, v19, v20, (v13 & 1) != 0))
  {
    sub_1BE04D0D4();
    v21 = v2;
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C54();

    if (os_log_type_enabled(v22, v23))
    {
      v112 = v5;
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v114 = v25;
      *v24 = 136315138;
      v26 = *&v2[v11];
      if (v26)
      {
        sub_1BE048964();
        v27 = sub_1BE04C0A4();
        v29 = v28;
        v26, v28, v30, v31, v32, v33, v34, v35;
      }

      else
      {
        v27 = 0;
        v29 = 0xE000000000000000;
      }

      v94 = sub_1BD123690(v27, v29, &v114);
      v29, v95, v96, v97, v98, v99, v100, v101;
      *(v24 + 4) = v94;
      _os_log_impl(&dword_1BD026000, v22, v23, "[%s] Attempted to reset coordinator while is it running. Ignoring.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25, v102, v103, v104, v105, v106, v107, v108);
      MEMORY[0x1BFB45F20](v25, -1, -1);
      MEMORY[0x1BFB45F20](v24, -1, -1);

      (*(v112 + 8))(v7, v4);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    if (a1)
    {
      v36 = *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration];
      *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = a1;
      sub_1BE048964();
      v36, v37, v38, v39, v40, v41, v42, v43;
    }

    if (*&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] || *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] || *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] || *&v2[v11])
    {
      v113 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex;
      sub_1BE04D0D4();
      v44 = v2;
      v45 = sub_1BE04D204();
      v46 = sub_1BE052C54();

      if (os_log_type_enabled(v45, v46))
      {
        v111 = v4;
        v112 = v5;
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = v11;
        v50 = v48;
        v114 = v48;
        *v47 = 136315138;
        v110 = v49;
        v51 = *&v2[v49];
        if (v51)
        {
          sub_1BE048964();
          v52 = sub_1BE04C0A4();
          v54 = v53;
          v51, v53, v55, v56, v57, v58, v59, v60;
        }

        else
        {
          v52 = 0;
          v54 = 0xE000000000000000;
        }

        v61 = sub_1BD123690(v52, v54, &v114);
        v54, v62, v63, v64, v65, v66, v67, v68;
        *(v47 + 4) = v61;
        _os_log_impl(&dword_1BD026000, v45, v46, "[%s] Resetting provisioning coordinator", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v50, v69, v70, v71, v72, v73, v74, v75);
        MEMORY[0x1BFB45F20](v50, -1, -1);
        MEMORY[0x1BFB45F20](v47, -1, -1);

        (*(v112 + 8))(v10, v111);
        v11 = v110;
      }

      else
      {

        (*(v5 + 8))(v10, v4);
      }

      *&v2[v113] = 0;
      v76 = *&v44[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
      *&v44[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;

      v77 = *&v44[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError];
      *&v44[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;

      v85 = *&v2[v11];
      if (v85)
      {
        sub_1BE048964();
        sub_1BE04C024();
        v85, v86, v87, v88, v89, v90, v91, v92;
        v93 = *&v2[v11];
      }

      else
      {
        v93 = 0;
      }

      *&v2[v11] = 0;
      v93, v78, v79, v80, v81, v82, v83, v84;
    }
  }
}

void sub_1BD8145A8(void *a1)
{
  v2 = v1;
  v4 = sub_1BE04B944();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BE04C384();
  v107 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v106 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE04D214();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
  *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = a1;
  v14 = a1;

  v15 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer;
  if (!*&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer])
  {
    v16 = sub_1BD8155AC();
    v17 = *&v2[v15];
    *&v2[v15] = v16;
    v17, v18, v19, v20, v21, v22, v23, v24;
  }

  v25 = *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError];
  *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;

  v110 = *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context];
  Strong = swift_unknownObjectWeakLoadStrong();
  v108 = v7;
  v109 = v6;
  if (Strong)
  {
    v27 = Strong;
    v28 = [Strong view];

    if (!v28)
    {
LABEL_21:
      __break(1u);
      return;
    }

    v29 = [v28 window];

    if (v29)
    {
      v30 = [v29 windowScene];

      if (v30)
      {
        v31 = [v30 _sceneIdentifier];

        sub_1BE052434();
      }
    }
  }

  sub_1BE04BB44();
  sub_1BE04D0D4();
  v32 = v2;
  v33 = sub_1BE04D204();
  v34 = sub_1BE052C54();

  if (!os_log_type_enabled(v33, v34))
  {

    (*(v10 + 8))(v12, v9);
    v47 = *&v2[v15];
    if (!v47)
    {
      return;
    }

    goto LABEL_12;
  }

  v102 = v4;
  v104 = v10;
  v105 = v9;
  v35 = swift_slowAlloc();
  v36 = swift_slowAlloc();
  v111 = v36;
  *v35 = 136315650;
  v103 = v15;
  v37 = *&v2[v15];
  if (v37)
  {
    sub_1BE048964();
    v38 = sub_1BE04C0A4();
    v40 = v39;
    v37, v39, v41, v42, v43, v44, v45, v46;
  }

  else
  {
    v38 = 0;
    v40 = 0xE000000000000000;
  }

  v55 = sub_1BD123690(v38, v40, &v111);
  v40, v56, v57, v58, v59, v60, v61, v62;
  *(v35 + 4) = v55;
  *(v35 + 12) = 2080;
  v63 = *&v32[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration];
  v64 = *&v32[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v65 = sub_1BE04C3A4();
  v63, v66, v67, v68, v69, v70, v71, v72;
  if ((v64 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v64 >= v65[2])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  (*(v107 + 16))(v106, v65 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v64, v108);
  v65, v73, v74, v75, v76, v77, v78, v79;
  v80 = sub_1BE0524A4();
  v82 = v81;
  v83 = sub_1BD123690(v80, v81, &v111);
  v82, v84, v85, v86, v87, v88, v89, v90;
  *(v35 + 14) = v83;
  *(v35 + 22) = 2080;
  sub_1BE04BB94();
  v91 = sub_1BE0524A4();
  v93 = v92;
  v94 = sub_1BD123690(v91, v92, &v111);
  v93, v95, v96, v97, v98, v99, v100, v101;
  *(v35 + 24) = v94;
  _os_log_impl(&dword_1BD026000, v33, v34, "[%s] Continuing provisioning credential: %s to %s", v35, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1BFB45F20](v36, -1, -1);
  MEMORY[0x1BFB45F20](v35, -1, -1);

  (*(v104 + 8))(v12, v105);
  v47 = *&v2[v103];
  if (v47)
  {
LABEL_12:
    sub_1BE048964();
    sub_1BE04C094();
    v47, v48, v49, v50, v51, v52, v53, v54;
  }
}

void sub_1BD814B5C(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v105 = a2;
  v104 = a1;
  v8 = sub_1BE04D214();
  v102 = *(v8 - 8);
  v103 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04C384();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = 0;
  v107 = 0xE000000000000000;
  v15 = *&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration];
  v16 = *&v4[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v17 = sub_1BE04C3A4();
  v15, v18, v19, v20, v21, v22, v23, v24;
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v16 >= v17[2])
  {
LABEL_11:
    __break(1u);
    return;
  }

  v100 = a3;
  v101 = a4;
  (*(v12 + 16))(v14, v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v16, v11);
  v17, v25, v26, v27, v28, v29, v30, v31;
  sub_1BE053974();
  (*(v12 + 8))(v14, v11);
  v32 = v106;
  v33 = v107;
  sub_1BE04D0D4();
  v34 = v5;
  sub_1BE048C84();
  v35 = sub_1BE04D204();
  v36 = sub_1BE052C54();
  v33, v37, v38, v39, v40, v41, v42, v43;

  if (os_log_type_enabled(v35, v36))
  {
    v99 = v32;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v106 = v45;
    *v44 = 136315394;
    v46 = *&v34[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
    if (v46)
    {
      sub_1BE048964();
      v47 = sub_1BE04C0A4();
      v49 = v48;
      v46, v48, v50, v51, v52, v53, v54, v55;
    }

    else
    {
      v47 = 0;
      v49 = 0xE000000000000000;
    }

    v63 = sub_1BD123690(v47, v49, &v106);
    v49, v64, v65, v66, v67, v68, v69, v70;
    *(v44 + 4) = v63;
    *(v44 + 12) = 2080;
    v71 = sub_1BD123690(v99, v33, &v106);
    v33, v72, v73, v74, v75, v76, v77, v78;
    *(v44 + 14) = v71;
    _os_log_impl(&dword_1BD026000, v35, v36, "[%s] Preflighting provisioning credential: %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB45F20](v45, -1, -1);
    MEMORY[0x1BFB45F20](v44, -1, -1);

    (*(v102 + 8))(v10, v103);
  }

  else
  {

    v33, v56, v57, v58, v59, v60, v61, v62;
    (*(v102 + 8))(v10, v103);
  }

  v79 = *&v34[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
  v80 = v104;
  *&v34[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = v104;
  v81 = v80;

  v82 = sub_1BD8155AC();
  v83 = *&v34[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
  *&v34[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = v82;
  sub_1BE048964();
  v83, v84, v85, v86, v87, v88, v89, v90;
  LOBYTE(v106) = v105;
  sub_1BE04C0D4();
  v82, v91, v92, v93, v94, v95, v96, v97;
}

void sub_1BD814F6C()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v5 = v0;
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();

  if (os_log_type_enabled(v6, v7))
  {
    v63 = v1;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v64 = v9;
    *v8 = 136315138;
    v10 = *&v5[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
    if (v10)
    {
      sub_1BE048964();
      v11 = sub_1BE04C0A4();
      v13 = v12;
      v10, v12, v14, v15, v16, v17, v18, v19;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v20 = sub_1BD123690(v11, v13, &v64);
    v13, v21, v22, v23, v24, v25, v26, v27;
    *(v8 + 4) = v20;
    _os_log_impl(&dword_1BD026000, v6, v7, "[%s] Canceling flow", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9, v28, v29, v30, v31, v32, v33, v34);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);

    (*(v2 + 8))(v4, v63);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v35 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer;
  v36 = *&v5[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
  if (v36)
  {
    sub_1BE048964();
    sub_1BE04C024();
    v37 = *&v5[v35];
    *&v5[v35] = 0;
    v37, v38, v39, v40, v41, v42, v43, v44;
    v45 = &v5[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v53 = *(v45 + 1);
      ObjectType = swift_getObjectType();
      v65 = 4;
      (*(*(v53 + 8) + 8))(&v65, 0, ObjectType);
      v36, v55, v56, v57, v58, v59, v60, v61;
      swift_unknownObjectRelease();
    }

    else
    {
      v36, v46, v47, v48, v49, v50, v51, v52;
    }
  }
}

void sub_1BD81521C()
{
  v1 = sub_1BE04D214();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v5 = v0;
  v6 = sub_1BE04D204();
  v7 = sub_1BE052C54();

  if (os_log_type_enabled(v6, v7))
  {
    v45 = v1;
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v46 = v9;
    *v8 = 136315138;
    v10 = *&v5[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
    if (v10)
    {
      sub_1BE048964();
      v11 = sub_1BE04C0A4();
      v13 = v12;
      v10, v12, v14, v15, v16, v17, v18, v19;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v20 = sub_1BD123690(v11, v13, &v46);
    v13, v21, v22, v23, v24, v25, v26, v27;
    *(v8 + 4) = v20;
    _os_log_impl(&dword_1BD026000, v6, v7, "[%s] Terminating flow", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9, v28, v29, v30, v31, v32, v33, v34);
    MEMORY[0x1BFB45F20](v9, -1, -1);
    MEMORY[0x1BFB45F20](v8, -1, -1);

    (*(v2 + 8))(v4, v45);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  sub_1BD81679C();
  v35 = *&v5[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
  if (v35)
  {
    [v35 reportProvisioningCompleteWithSuccess_];
  }

  v36 = *&v5[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError];
  if (v36)
  {
    v37 = *&v5[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError];
  }

  else
  {
    v37 = [objc_opt_self() errorWithCommonType:1 severity:5];
  }

  v38 = &v5[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(v38 + 1);
    ObjectType = swift_getObjectType();
    v41 = *(v39 + 8);
    v42 = v36;
    v43 = v37;
    v41(v5, v37, 1, ObjectType, v39);
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = v36;
  }
}

uint64_t sub_1BD8155AC()
{
  v1 = v0;
  v2 = sub_1BE04C384();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  }

  v8 = *(v1 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements);
  v9 = v6;
  if (v8 != 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v18 = sub_1BD1D8324(0, 1, 1, MEMORY[0x1E69E7CC0], v10, v11, v12, v13);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  v21 = (v20 + 1);
  if (v20 >= v19 >> 1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    *(v18 + 2) = v21;
    v18[v20 + 32] = 10;
LABEL_8:
    if (*(v1 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms) == 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1BD1D8324(0, *(v18 + 2) + 1, 1, v18, v22, v23, v24, v25);
      }

      v27 = *(v18 + 2);
      v26 = *(v18 + 3);
      if (v27 >= v26 >> 1)
      {
        v18 = sub_1BD1D8324((v26 > 1), v27 + 1, 1, v18, v22, v23, v24, v25);
      }

      *(v18 + 2) = v27 + 1;
      v18[v27 + 32] = 15;
    }

    v20 = *(v1 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context);
    v28 = *(v1 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration);
    v29 = *(v1 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex);
    sub_1BE048964();
    v21 = sub_1BE04C3A4();
    v28, v30, v31, v32, v33, v34, v35, v36;
    if ((v29 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_18;
    }

    v19 = v21[2];
    if (v29 < v19)
    {
      break;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    v18 = sub_1BD1D8324((v19 > 1), v21, 1, v18, v14, v15, v16, v17);
  }

  (*(v3 + 16))(v5, v21 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v29, v2);
  v21, v37, v38, v39, v40, v41, v42, v43;
  sub_1BD82B4EC(&unk_1EBD55190, v44, type metadata accessor for ProvisioningUICoordinator, &unk_1BE0FBC1C);
  v45 = sub_1BE04BF34();
  v18, v46, v47, v48, v49, v50, v51, v52;
  (*(v3 + 8))(v5, v2);
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = v7;
  v55 = v7;
  sub_1BE04C054();
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  *(v57 + 24) = v55;
  v58 = v55;
  sub_1BE04C074();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE04C0B4();
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  sub_1BE04C044();
  v59, v60, v61, v62, v63, v64, v65, v66;
  v67 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE048964();
  sub_1BE04C064();
  v67, v68, v69, v70, v71, v72, v73, v74;

  return v45;
}

void sub_1BD815A48(unsigned __int8 *a1, int a2, uint64_t a3, void *a4)
{
  v7 = sub_1BE04D214();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    LODWORD(v125) = a2;
    sub_1BE04D0D4();
    v14 = v13;
    v15 = sub_1BE04D204();
    v16 = sub_1BE052C54();

    if (os_log_type_enabled(v15, v16))
    {
      v123 = a4;
      v17 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v126[0] = v122;
      *v17 = 136315650;
      v124 = v14;
      v18 = *&v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
      if (v18)
      {
        sub_1BE048964();
        v19 = sub_1BE04C0A4();
        v21 = v20;
        v18, v20, v22, v23, v24, v25, v26, v27;
      }

      else
      {
        v19 = 0;
        v21 = 0xE000000000000000;
      }

      v28 = sub_1BD123690(v19, v21, v126);
      v21, v29, v30, v31, v32, v33, v34, v35;
      *(v17 + 4) = v28;
      *(v17 + 12) = 2080;
      v36 = sub_1BE04B734();
      v38 = v37;
      v39 = sub_1BD123690(v36, v37, v126);
      v38, v40, v41, v42, v43, v44, v45, v46;
      *(v17 + 14) = v39;
      *(v17 + 22) = 2080;
      if (v125)
      {
        v47 = 7562585;
      }

      else
      {
        v47 = 28494;
      }

      if (v125)
      {
        v48 = 0xE300000000000000;
      }

      else
      {
        v48 = 0xE200000000000000;
      }

      v49 = sub_1BD123690(v47, v48, v126);
      v48, v50, v51, v52, v53, v54, v55, v56;
      *(v17 + 24) = v49;
      _os_log_impl(&dword_1BD026000, v15, v16, "[%s] Transitioning to Step %s isRunning: %s", v17, 0x20u);
      v57 = v122;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v57, -1, -1);
      MEMORY[0x1BFB45F20](v17, -1, -1);

      (*(v8 + 8))(v10, v7);
      v14 = v124;
      a4 = v123;
    }

    else
    {

      (*(v8 + 8))(v10, v7);
    }

    v58 = &v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
    v59 = swift_unknownObjectWeakLoadStrong();
    v60 = v125;
    if (v59)
    {
      v61 = *(v58 + 1);
      ObjectType = swift_getObjectType();
      sub_1BD88BA18(v11, v126);
      (*(*(v61 + 8) + 8))(v126, v60 & 1, ObjectType);
      swift_unknownObjectRelease();
    }

    if (sub_1BE04B724())
    {
      v63 = *&v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
      if (v63)
      {
        v64 = v63;
        sub_1BE04B734();
        v66 = v65;
        v67 = sub_1BE052404();
        v66, v68, v69, v70, v71, v72, v73, v74;
        [v64 reportProvisioningStep:v67 finishedWithStatus:0];
LABEL_46:

        v14 = v67;
      }
    }

    else
    {
      if ((sub_1BE04B764() & 1) == 0 || (v60 & 1) == 0)
      {
        if ((sub_1BE04B754() & 1) == 0)
        {
          goto LABEL_47;
        }

        if ((v60 & 1) == 0)
        {
          goto LABEL_47;
        }

        v96 = *&v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
        if (!v96)
        {
          goto LABEL_47;
        }

        v64 = v96;
        sub_1BE04B734();
        v98 = v97;
        v67 = sub_1BE052404();
        v98, v99, v100, v101, v102, v103, v104, v105;
        [v64 reportProvisioningStepStart_];
        goto LABEL_46;
      }

      v75 = *&v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
      if (v75)
      {
        v76 = v75;
        sub_1BE04B734();
        v78 = v77;
        v64 = sub_1BE052404();
        v78, v79, v80, v81, v82, v83, v84, v85;
        v86 = a4;
        if (a4)
        {
          v125 = v76;
          v124 = v14;
          v87 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v88 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v127 = 0u;
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v89 = [v86 paymentSetupFields];
          v90 = [v89 countByEnumeratingWithState:&v127 objects:v126 count:16];
          if (v90)
          {
            v91 = v90;
            v92 = *v128;
            do
            {
              for (i = 0; i != v91; ++i)
              {
                if (*v128 != v92)
                {
                  objc_enumerationMutation(v89);
                }

                v94 = *(*(&v127 + 1) + 8 * i);
                if (([v94 isHidden] & 1) == 0)
                {
                  v95 = [v94 identifier];
                  [v87 addObject:v95];
                  if ([v94 source] == 2)
                  {
                    [v88 addObject:v95];
                  }
                }
              }

              v91 = [v89 countByEnumeratingWithState:&v127 objects:v126 count:16];
            }

            while (v91);
          }

          v106 = objc_alloc_init(MEMORY[0x1E695DF90]);
          if ([v87 count])
          {
            v107 = [v87 componentsJoinedByString:{@", "}];
            [v106 setObject:v107 forKeyedSubscript:*MEMORY[0x1E69BB1C0]];
          }

          v108 = [v88 count];
          v14 = v124;
          if (v108)
          {
            v109 = [v88 componentsJoinedByString:{@", "}];
            [v106 setObject:v109 forKeyedSubscript:*MEMORY[0x1E69BB1B8]];
          }

          v110 = [v106 copy];

          v76 = v125;
        }

        else
        {
          v110 = 0;
        }

        v111 = v110;
        if (!v111)
        {
          __break(1u);
          return;
        }

        v112 = v111;
        type metadata accessor for PKAnalyticsKey(0);
        sub_1BD82B4EC(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
        v113 = sub_1BE052244();

        v67 = sub_1BE052224();
        v113, v114, v115, v116, v117, v118, v119, v120;
        [v76 reportProvisioningStepStart:v64 context:v67];

        v14 = v76;
        goto LABEL_46;
      }
    }

LABEL_47:
  }
}

void sub_1BD816158(unsigned __int8 *a1, char a2, uint64_t a3, void *a4)
{
  if (sub_1BE04B764())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = *(Strong + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter);
      v8 = Strong;
      v9 = v7;

      if (v7)
      {
        sub_1BE04B734();
        v11 = v10;
        v12 = sub_1BE052404();
        v11, v13, v14, v15, v16, v17, v18, v19;
        v20 = a4;
        if (a4)
        {
          v58 = v9;
          v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v57 = v20;
          v23 = [v20 paymentSetupFields];
          v24 = [v23 countByEnumeratingWithState:&v60 objects:v59 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v61;
            do
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v61 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                v28 = *(*(&v60 + 1) + 8 * i);
                if (([v28 isHidden] & 1) == 0)
                {
                  v29 = [v28 identifier];
                  [v21 addObject:v29];
                  if ([v28 source] == 2)
                  {
                    [v22 addObject:v29];
                  }
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v60 objects:v59 count:16];
            }

            while (v25);
          }

          v43 = objc_alloc_init(MEMORY[0x1E695DF90]);
          if ([v21 count])
          {
            v44 = [v21 componentsJoinedByString:{@", "}];
            [v43 setObject:v44 forKeyedSubscript:*MEMORY[0x1E69BB1C0]];
          }

          v9 = v58;
          if ([v22 count])
          {
            v45 = [v22 componentsJoinedByString:{@", "}];
            [v43 setObject:v45 forKeyedSubscript:*MEMORY[0x1E69BB1B8]];
          }

          v46 = [v43 copy];

          v20 = v57;
        }

        else
        {
          v46 = 0;
        }

        v47 = v46;
        if (!v47)
        {
          __break(1u);
          return;
        }

        v48 = v47;
        type metadata accessor for PKAnalyticsKey(0);
        sub_1BD82B4EC(&qword_1EBD35F00, 255, type metadata accessor for PKAnalyticsKey, &unk_1BE0B3A90);
        v49 = sub_1BE052244();

        v35 = sub_1BE052224();
        v49, v50, v51, v52, v53, v54, v55, v56;
        [v9 reportProvisioningStep:v12 finishedWithStatus:a2 & 1 context:v35];

        goto LABEL_27;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = *(v30 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter);
      v32 = v30;
      v12 = v31;

      if (v31)
      {
        sub_1BE04B734();
        v34 = v33;
        v35 = sub_1BE052404();
        v34, v36, v37, v38, v39, v40, v41, v42;
        [v12 reportProvisioningStep:v35 finishedWithStatus:a2 & 1];
LABEL_27:
      }
    }
  }
}

void sub_1BD816528(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1BD816CFC(v4, a2);
  }
}

void sub_1BD816598(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD817368(Strong);
  }
}

void (*sub_1BD8165EC(uint64_t a1))()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = PKEdgeInsetsMake;
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 1;
    v5 = [objc_opt_self() sharedApplication];
    v6 = swift_allocObject();
    v6[3] = 0;
    v6[4] = 0;
    v6[2] = v4;
    aBlock[4] = sub_1BD82B55C;
    v19 = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_322;
    v7 = _Block_copy(aBlock);
    v8 = v19;
    sub_1BE048964();
    v8, v9, v10, v11, v12, v13, v14, v15;
    v16 = [v5 beginBackgroundTaskWithExpirationHandler_];

    _Block_release(v7);
    swift_beginAccess();
    *(v4 + 16) = v16;
    *(v4 + 24) = 0;
    return sub_1BD82B568;
  }

  return v2;
}

void sub_1BD81679C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer);
  if (v1)
  {
    v2 = v0;
    *(v0 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer) = 0;
    v3 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle;
    v4 = *(v0 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle);
    if (v4)
    {
      v5 = v4;
      sub_1BE04C1A4();

      v4 = *(v2 + v3);
    }

    *(v2 + v3) = 0;

    v13 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion;
    v14 = *(v2 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion);
    if (v14)
    {
      sub_1BE048964();
      sub_1BE04C244();
      v14, v15, v16, v17, v18, v19, v20, v21;
      v22 = *(v2 + v13);
    }

    else
    {
      v22 = 0;
    }

    *(v2 + v13) = 0;
    v22, v6, v7, v8, v9, v10, v11, v12;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 1;
    v24 = [objc_opt_self() sharedApplication];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v1;
    v58[4] = sub_1BD82B4C8;
    v59 = v25;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 1107296256;
    v58[2] = sub_1BD126964;
    v58[3] = &block_descriptor_295;
    v26 = _Block_copy(v58);
    v27 = v59;
    sub_1BE048964();
    sub_1BE048964();
    v27, v28, v29, v30, v31, v32, v33, v34;
    v35 = [v24 beginBackgroundTaskWithExpirationHandler_];
    _Block_release(v26);

    swift_beginAccess();
    *(v23 + 16) = v35;
    *(v23 + 24) = 0;
    v36 = swift_allocObject();
    v36[2] = v23;
    v36[3] = v1;
    sub_1BE048964();
    sub_1BE048964();
    sub_1BE04C024();
    v1, v37, v38, v39, v40, v41, v42, v43;
    v23, v44, v45, v46, v47, v48, v49, v50;
    v36, v51, v52, v53, v54, v55, v56, v57;
  }
}

uint64_t sub_1BD8169F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE051F54();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE051FA4();
  v7 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v10 = sub_1BE052D54();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1BD82B600;
  v25 = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_304;
  v12 = _Block_copy(aBlock);
  v13 = v25;
  sub_1BE048964();
  sub_1BE048964();
  v13, v14, v15, v16, v17, v18, v19, v20;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v23 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v22);
}

void sub_1BD816CFC(unsigned int a1, void *a2)
{
  v81 = a1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE051F54();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE051FA4();
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v80 = v13;
    v16 = *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError];
    *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = a2;
    v82 = a2;

    if ([v82 severity] == 1)
    {
      v17 = v82;
    }

    else
    {
      v79 = v9;
      v33 = v2;
      v34 = *&v2[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
      if (v34)
      {
        sub_1BE04B734();
        v36 = v35;
        v37 = sub_1BE052404();
        v36, v38, v39, v40, v41, v42, v43, v44;
        v45 = v82;
        v46 = sub_1BE04A844();

        [v34 reportProvisioningStep:v37 finishedWithStatus:0 error:v46];
      }

      sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
      v47 = sub_1BE052D54();
      v48 = swift_allocObject();
      v49 = v82;
      *(v48 + 16) = v33;
      *(v48 + 24) = v49;
      aBlock[4] = sub_1BD82B4C0;
      v84 = v48;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BD126964;
      aBlock[3] = &block_descriptor_286;
      v50 = _Block_copy(aBlock);
      v51 = v84;
      v82 = v82;
      v52 = v33;
      v51, v53, v54, v55, v56, v57, v58, v59;
      sub_1BE051F74();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
      sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
      sub_1BE053664();
      MEMORY[0x1BFB3FDF0](0, v15, v11, v50);
      _Block_release(v50);

      (*(v79 + 8))(v11, v8);
      (*(v80 + 8))(v15, v12);
    }
  }

  else
  {
    v82 = v5;
    sub_1BE04D0D4();
    v18 = v2;
    v19 = sub_1BE04D204();
    v20 = sub_1BE052C54();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock[0] = v22;
      *v21 = 136315394;
      v23 = *&v18[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
      if (v23)
      {
        sub_1BE048964();
        v24 = sub_1BE04C0A4();
        v26 = v25;
        v23, v25, v27, v28, v29, v30, v31, v32;
      }

      else
      {
        v24 = 0;
        v26 = 0xE000000000000000;
      }

      v60 = sub_1BD123690(v24, v26, aBlock);
      v26, v61, v62, v63, v64, v65, v66, v67;
      *(v21 + 4) = v60;
      *(v21 + 12) = 2080;
      v68 = sub_1BE04B734();
      v70 = v69;
      v71 = sub_1BD123690(v68, v69, aBlock);
      v70, v72, v73, v74, v75, v76, v77, v78;
      *(v21 + 14) = v71;
      _os_log_impl(&dword_1BD026000, v19, v20, "[%s] Step (%s) failed with nil error", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v22, -1, -1);
      MEMORY[0x1BFB45F20](v21, -1, -1);
    }

    (*(v82 + 1))(v7, v4);
  }
}

uint64_t sub_1BD8172D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 16))(a2, ObjectType);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1BD817368(void *a1)
{
  v2 = sub_1BE051F54();
  v162 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v160 = &v154 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_1BE051FA4();
  v159 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v157 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_1BE051FC4();
  v156 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v154 = &v154 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v155 = &v154 - v7;
  v8 = sub_1BE04D214();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v164 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v154 - v12;
  sub_1BE04D0D4();
  v14 = a1;
  v15 = sub_1BE04D204();
  v16 = sub_1BE052C54();

  v17 = os_log_type_enabled(v15, v16);
  v165 = v9;
  v158 = v2;
  if (v17)
  {
    v18 = v8;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v19 = 136315138;
    v21 = *&v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
    if (v21)
    {
      sub_1BE048964();
      v22 = sub_1BE04C0A4();
      v24 = v23;
      v21, v23, v25, v26, v27, v28, v29, v30;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v32 = sub_1BD123690(v22, v24, aBlock);
    v24, v33, v34, v35, v36, v37, v38, v39;
    *(v19 + 4) = v32;
    _os_log_impl(&dword_1BD026000, v15, v16, "[%s] Coordinator did complete", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20, v40, v41, v42, v43, v44, v45, v46);
    MEMORY[0x1BFB45F20](v20, -1, -1);
    MEMORY[0x1BFB45F20](v19, -1, -1);

    v31 = *(v165 + 8);
    v8 = v18;
    v31(v13, v18);
  }

  else
  {

    v31 = *(v9 + 8);
    v31(v13, v8);
  }

  v47 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer;
  v48 = *&v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
  if (v48)
  {
    sub_1BE048964();
    v49 = sub_1BE04C0C4();
    v48, v50, v51, v52, v53, v54, v55, v56;
    v57 = (v49 >> 8) & 1;
  }

  else
  {
    v57 = 0;
  }

  sub_1BD81679C();
  v58 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex;
  v59 = *&v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
  v60 = *&v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration];
  sub_1BE048964();
  v61 = sub_1BE04C3A4();
  v60, v62, v63, v64, v65, v66, v67, v68;
  v69 = v61[2];
  v61, v70, v71, v72, v73, v74, v75, v76;
  if (v59 < v69 - 1)
  {
    v77 = *&v14[v58];
    v78 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      __break(1u);
    }

    else
    {
      *&v14[v58] = v78;
      v79 = v164;
      sub_1BE04D0D4();
      v80 = v14;
      v81 = sub_1BE04D204();
      v82 = sub_1BE052C54();

      if (os_log_type_enabled(v81, v82))
      {
        v163 = v8;
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        aBlock[0] = v84;
        *v83 = 136315394;
        v85 = *&v14[v47];
        if (v85)
        {
          sub_1BE048964();
          v86 = sub_1BE04C0A4();
          v88 = v87;
          v85, v87, v89, v90, v91, v92, v93, v94;
        }

        else
        {
          v86 = 0;
          v88 = 0xE000000000000000;
        }

        v136 = sub_1BD123690(v86, v88, aBlock);
        v88, v137, v138, v139, v140, v141, v142, v143;
        *(v83 + 4) = v136;
        *(v83 + 12) = 2048;
        *(v83 + 14) = v78;
        _os_log_impl(&dword_1BD026000, v81, v82, "[%s] Coordinator completed provisioning and moving on to credential at index %ld", v83, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v84, v144, v145, v146, v147, v148, v149, v150);
        MEMORY[0x1BFB45F20](v84, -1, -1);
        MEMORY[0x1BFB45F20](v83, -1, -1);

        v107 = v164;
        v108 = v163;
      }

      else
      {

        v107 = v79;
        v108 = v8;
      }

      v31(v107, v108);
      v151 = *&v80[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
      if (v151)
      {
        v152 = *&v80[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
      }

      else
      {
        v152 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
        v151 = 0;
      }

      v153 = v151;
      sub_1BD8145A8(v152);
    }

    return;
  }

  v95 = &v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v96 = *(v95 + 1);
    ObjectType = swift_getObjectType();
    LOBYTE(aBlock[0]) = 12;
    (*(*(v96 + 8) + 8))(aBlock, 0, ObjectType);
    swift_unknownObjectRelease();
  }

  v98 = *&v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses];
  if (v98)
  {
    v99 = *&v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
    if (v99)
    {
      v100 = v98;
      v101 = sub_1BE04BC84();
      [v99 setProvisionedPass_];

      [v99 reportProvisioningCompleteWithSuccess_];
      if (v57)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v117 = v98;
      if (v57)
      {
LABEL_20:
        v102 = &v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v103 = *(v102 + 1);
          v104 = swift_getObjectType();
          v105 = *(v103 + 8);
          v106 = v98;
          v105(v14, v98, 0, v104, v103);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }
    }

    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v164 = sub_1BE052D54();
    v118 = v154;
    sub_1BE051FB4();
    v119 = v155;
    sub_1BE051FF4();
    v165 = *(v156 + 8);
    (v165)(v118, v163);
    v120 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v121 = swift_allocObject();
    *(v121 + 16) = v120;
    *(v121 + 24) = v98;
    aBlock[4] = sub_1BD82B5FC;
    v167 = v121;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_333_0;
    v122 = _Block_copy(aBlock);
    v123 = v167;
    v124 = v98;
    v123, v125, v126, v127, v128, v129, v130, v131;
    v132 = v157;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    v133 = v160;
    v134 = v158;
    sub_1BE053664();
    v135 = v164;
    MEMORY[0x1BFB3FD90](v119, v132, v133, v122);
    _Block_release(v122);

    (*(v162 + 8))(v133, v134);
    (*(v159 + 8))(v132, v161);
    (v165)(v119, v163);
    return;
  }

  v109 = *&v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
  if (v109)
  {
    [v109 reportProvisioningCompleteWithSuccess_];
  }

  v110 = [objc_opt_self() errorWithSeverity_];
  v111 = sub_1BE052404();
  [v110 addInternalDebugDescription_];

  v112 = &v14[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v113 = *(v112 + 1);
    v114 = swift_getObjectType();
    v115 = *(v113 + 8);
    v116 = v110;
    v115(v14, v110, 1, v114, v113);
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1BD817DF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 8))(v4, a2, 0, ObjectType, v6);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1BD817EA8(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    v4 = *(a1 + 16);
    v5 = *MEMORY[0x1E69DDBE8];
    if (v4 != *MEMORY[0x1E69DDBE8])
    {
      v6 = [objc_opt_self() sharedApplication];
      [v6 endBackgroundTask_];

      v7 = swift_beginAccess();
      *(a1 + 16) = v5;
      *(a1 + 24) = 0;
      if (a2)
      {
        a2(v7);
      }
    }
  }
}

uint64_t sub_1BD817F7C(void *a1)
{
  v2 = sub_1BE051F54();
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE051FA4();
  v5 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v8 = sub_1BE052D54();
  aBlock[4] = sub_1BD82B570;
  v22 = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_325;
  v9 = _Block_copy(aBlock);
  v10 = v22;
  sub_1BE048964();
  v10, v11, v12, v13, v14, v15, v16, v17;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v7, v4, v9);
  _Block_release(v9);

  (*(v20 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v19);
}

void sub_1BD8182B4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v212 = a4;
  v210 = a3;
  v206 = a2;
  v9 = sub_1BE04D214();
  v213 = *(v9 - 8);
  v214 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v203 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v203 - v13;
  v215 = sub_1BE04C384();
  v15 = *(v215 - 1);
  MEMORY[0x1EEE9AC00](v215);
  v17 = &v203 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration;
  v18 = *&v5[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration];
  v19 = *&v5[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex];
  sub_1BE048964();
  v20 = sub_1BE04C3A4();
  v18, v21, v22, v23, v24, v25, v26, v27;
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v19 >= *(v20 + 2))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v28 = *(v15 + 80);
  v208 = v28;
  v209 = (v28 + 32) & ~v28;
  v207 = *(v15 + 72);
  v29 = v215;
  (*(v15 + 16))(v17, &v20[v209 + v207 * v19], v215);
  v20, v30, v31, v32, v33, v34, v35, v36;
  v37 = sub_1BE04C324();
  (*(v15 + 8))(v17, v29);
  if (v37)
  {
    v38 = *&v6[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects];
    v39 = sub_1BE048C84();
    v41 = sub_1BD9F46CC(v39, a1, v40);
    v41, v42, v43, v44, v45, v46, v47, v48;
    v38, v49, v50, v51, v52, v53, v54, v55;
    sub_1BE04D0D4();
    v56 = v6;
    v57 = a1;
    v58 = sub_1BE04D204();
    v59 = sub_1BE052C54();

    v60 = os_log_type_enabled(v58, v59);
    v204 = a5;
    v205 = v57;
    if (!v60)
    {

      goto LABEL_14;
    }

    v61 = swift_slowAlloc();
    v203 = swift_slowAlloc();
    v217 = v203;
    *v61 = 136315394;
    v62 = *&v56[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
    if (v62)
    {
      sub_1BE048964();
      v63 = sub_1BE04C0A4();
      v65 = v64;
      v62, v64, v66, v67, v68, v69, v70, v71;
    }

    else
    {
      v63 = 0;
      v65 = 0xE000000000000000;
    }

    v87 = sub_1BD123690(v63, v65, &v217);
    v65, v88, v89, v90, v91, v92, v93, v94;
    *(v61 + 4) = v87;
    *(v61 + 12) = 2080;
    v95 = v205;
    v96 = [v205 paymentSetupFields];

    if (v96)
    {
      v97 = sub_1BD0E5E8C(0, &qword_1EBD4E6C0, 0x1E69B8DD0);
      v98 = sub_1BE052744();

      v99 = MEMORY[0x1BFB3F7F0](v98, v97);
      v101 = v100;
      v98, v100, v102, v103, v104, v105, v106, v107;
      v108 = sub_1BD123690(v99, v101, &v217);
      v101, v109, v110, v111, v112, v113, v114, v115;
      *(v61 + 14) = v108;
      _os_log_impl(&dword_1BD026000, v58, v59, "[%s] Showing secondary fields: %s", v61, 0x16u);
      v116 = v203;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v116, -1, -1);
      MEMORY[0x1BFB45F20](v61, -1, -1);

LABEL_14:
      (*(v213 + 8))(v14, v214);
      v117 = *&v56[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
      v118 = v210;
      if (v117)
      {
        sub_1BE048964();
        v119 = sub_1BE04C034();
        v117, v120, v121, v122, v123, v124, v125, v126;
        if (v118)
        {
LABEL_16:
          v127 = v118;
          goto LABEL_20;
        }
      }

      else
      {
        v119 = [objc_allocWithZone(MEMORY[0x1E69B91F0]) init];
        if (v118)
        {
          goto LABEL_16;
        }
      }

      v128 = [v119 productIdentifier];
      if (!v128)
      {
        v131 = 0;
        goto LABEL_21;
      }

      v129 = v128;
      sub_1BE052434();
      v127 = v130;

LABEL_20:
      sub_1BE048C84();
      v131 = sub_1BE052404();
      v127, v132, v133, v134, v135, v136, v137, v138;
LABEL_21:
      [v119 setProductIdentifier_];

      v139 = v211;
      v140 = *&v6[v211];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290, &qword_1BE0CC120);
      v141 = v209;
      v142 = swift_allocObject();
      *(v142 + 16) = xmmword_1BE0B69E0;
      *(v142 + v141) = v119;
      (*(v15 + 104))(v142 + v141, *MEMORY[0x1E69B8290], v215);
      sub_1BE048964();
      v215 = v119;
      sub_1BE04C3B4();
      v140, v143, v144, v145, v146, v147, v148, v149;
      v150 = *&v56[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context];
      v151 = *&v6[v139];
      v152 = *&v56[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter];
      v153 = type metadata accessor for ProvisioningUICoordinator();
      v154 = objc_allocWithZone(v153);
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_manualEntryDelegate + 8] = 0;
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      v155 = &v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer];
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = 0;
      swift_unknownObjectWeakInit();
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_credentialIndex] = 0;
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_cameraCaptureObjects] = MEMORY[0x1E69E7CC0];
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer] = 0;
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel] = 0;
      v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 0;
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisioningError] = 0;
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_provisionedPasses] = 0;
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_passcodeAssertion] = 0;
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle] = 0;
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context] = v150;
      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_configuration] = v151;
      swift_unknownObjectWeakAssign();
      *(v155 + 1) = 0;
      swift_unknownObjectWeakAssign();
      v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_previouslyAcceptedTerms] = 0;
      swift_retain_n();
      sub_1BE048964();
      v156 = v152;
      if (!v152)
      {
        v156 = sub_1BE04BBB4();
      }

      *&v154[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_reporter] = v156;
      v216.receiver = v154;
      v216.super_class = v153;
      v157 = v152;
      v158 = objc_msgSendSuper2(&v216, sel_init);
      v151, v159, v160, v161, v162, v163, v164, v165;
      v166 = &v56[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate];
      swift_unknownObjectWeakLoadStrong();
      *&v158[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_delegate + 8] = *(v166 + 1);
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      v158[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_skipRequirements] = 1;
      v167 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v168 = swift_allocObject();
      v170 = v204;
      v169 = v205;
      v168[2] = v167;
      v168[3] = v169;
      v171 = v212;
      v168[4] = v158;
      v168[5] = v171;
      v168[6] = v170;
      v172 = v169;
      sub_1BE048964();
      v173 = v158;
      sub_1BD0D44B8(v171, v170);
      sub_1BD814B5C(v172, 4, sub_1BD82B478, v168);

      v167, v174, v175, v176, v177, v178, v179, v180;
      v168, v181, v182, v183, v184, v185, v186, v187;
      return;
    }

LABEL_31:
    __break(1u);
    return;
  }

  sub_1BE04D0D4();
  v72 = v6;
  v73 = sub_1BE04D204();
  v74 = sub_1BE052C54();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v217 = v76;
    *v75 = 136315138;
    v77 = *&v72[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
    if (v77)
    {
      sub_1BE048964();
      v78 = sub_1BE04C0A4();
      v80 = v79;
      v77, v79, v81, v82, v83, v84, v85, v86;
    }

    else
    {
      v78 = 0;
      v80 = 0xE000000000000000;
    }

    v188 = sub_1BD123690(v78, v80, &v217);
    v80, v189, v190, v191, v192, v193, v194, v195;
    *(v75 + 4) = v188;
    _os_log_impl(&dword_1BD026000, v73, v74, "[%s] Tried to show secondary fields for non manual entry crednetial. That is not right..", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v76, v196, v197, v198, v199, v200, v201, v202);
    MEMORY[0x1BFB45F20](v76, -1, -1);
    MEMORY[0x1BFB45F20](v75, -1, -1);
  }

  (*(v213 + 8))(v11, v214);
}

void sub_1BD818C1C(uint64_t a1, uint64_t a2, void *a3, char *a4, void (*a5)(void), uint64_t a6)
{
  v90 = a6;
  v91 = a4;
  v95 = a3;
  v96 = a5;
  v6 = sub_1BE04BAC4();
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v92 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v89 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04B8D4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v84 - v16;
  v18 = sub_1BE04B944();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v88 = Strong;
    v84 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context;
    sub_1BE04BB94();
    sub_1BE04B924();
    v23 = *(v19 + 8);
    v86 = v19 + 8;
    v87 = v18;
    v85 = v23;
    v23(v21, v18);
    (*(v12 + 104))(v14, *MEMORY[0x1E69B7F80], v11);
    sub_1BD82B4EC(&qword_1EBD55170, 255, MEMORY[0x1E69B7F90], MEMORY[0x1E69B7F98]);
    v24 = sub_1BE052334();
    v25 = *(v12 + 8);
    v25(v14, v11);
    v25(v17, v11);
    v26 = v95;
    if ((v24 & 1) == 0)
    {
      v27 = v89;
      (*(v89 + 104))(v10, *MEMORY[0x1E69B80D8], v8);
      sub_1BE04B714();
      v29 = v28;
      (*(v27 + 8))(v10, v8);
      v30 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v31 = sub_1BE052404();
      v29, v32, v33, v34, v35, v36, v37, v38;
      v39 = [v30 initWithString_];

      v40 = objc_allocWithZone(MEMORY[0x1E69B8E28]);
      v41 = sub_1BE052404();
      v42 = [v40 initWithIdentifier:v41 body:v39];

      [v42 setPosition_];
      [v42 setAlingment_];
      [v42 setFontScale_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50, &unk_1BE0C74D0);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1BE0B69E0;
      *(v43 + 56) = sub_1BD0E5E8C(0, &unk_1EBD55180, 0x1E69B8E28);
      *(v43 + 32) = v42;
      v44 = v42;
      v45 = sub_1BE052724();
      v43, v46, v47, v48, v49, v50, v51, v52;
      [v26 updateWithPaymentSetupFields_];
    }

    v53 = v88;
    v54 = *&v88[v84];
    v55 = type metadata accessor for ProvisioningManualEntryViewController();
    v56 = objc_allocWithZone(v55);
    *&v56[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator] = 0;
    v56[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showTapToProvisionButton] = 0;
    v56[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_showCameraCaptureButton] = 0;
    *&v56[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_provisioningContext] = v54;
    v56[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_isSecondaryEntry] = 1;
    *&v56[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_delegate + 8] = 0;
    swift_unknownObjectUnownedInit();
    sub_1BE052434();
    v58 = v57;
    swift_retain_n();
    v59 = sub_1BE04BB74();
    v58, v60, v61, v62, v63, v64, v65, v66;
    *&v56[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_reporter] = v59;
    sub_1BE04BB94();
    v67 = sub_1BE04B8E4();
    v85(v21, v87);
    v68 = v92;
    sub_1BE04BC34();
    v69 = sub_1BE04B9A4();
    (*(v93 + 8))(v68, v94);
    v97.receiver = v56;
    v97.super_class = v55;
    v70 = objc_msgSendSuper2(&v97, sel_initWithWebService_context_setupDelegate_setupFieldsModel_, v67, v69, 0, v26);

    v78 = v96;
    if (v70)
    {
      v54, v71, v72, v73, v74, v75, v76, v77;
      v79 = *&v70[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator];
      v80 = v91;
      *&v70[OBJC_IVAR____TtC9PassKitUI37ProvisioningManualEntryViewController_coordinator] = v91;

      swift_unknownObjectWeakAssign();
      *&v80[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_renderer + 8] = &off_1F3BB39D0;
      swift_unknownObjectWeakAssign();
      v81 = swift_unknownObjectWeakLoadStrong();
      v82 = v80;
      v83 = [v81 navigationController];

      [v83 pushViewController:v70 animated:1];
      if (v78)
      {
        v78();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1BD81938C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v95 = a4;
  v93 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v94 = &v86 - v8;
  v9 = sub_1BE04BAC4();
  v91 = *(v9 - 8);
  v92 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BE04D214();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04D0D4();
  v16 = v4;
  v17 = sub_1BE04D204();
  v18 = sub_1BE052C54();

  if (os_log_type_enabled(v17, v18))
  {
    v87 = v12;
    v88 = a1;
    v90 = a3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    aBlock = v20;
    *v19 = 136315394;
    v89 = v16;
    v21 = *&v16[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
    if (v21)
    {
      sub_1BE048964();
      v22 = sub_1BE04C0A4();
      v24 = v23;
      v21, v23, v25, v26, v27, v28, v29, v30;
    }

    else
    {
      v22 = 0;
      v24 = 0xE000000000000000;
    }

    v32 = sub_1BD123690(v22, v24, &aBlock);
    v24, v33, v34, v35, v36, v37, v38, v39;
    *(v19 + 4) = v32;
    *(v19 + 12) = 2048;
    v40 = v88;
    *(v19 + 14) = v88;
    _os_log_impl(&dword_1BD026000, v17, v18, "[%s] Showing eligibility issue with reason: %ld", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v20, v41, v42, v43, v44, v45, v46, v47);
    MEMORY[0x1BFB45F20](v20, -1, -1);
    v48 = v19;
    a1 = v40;
    MEMORY[0x1BFB45F20](v48, -1, -1);

    (*(v13 + 8))(v15, v87);
    v31 = v95;
    a3 = v90;
  }

  else
  {

    (*(v13 + 8))(v15, v12);
    v31 = v95;
  }

  sub_1BE04BC34();
  v49 = sub_1BE04B9A4();
  (*(v91 + 8))(v11, v92);
  v50 = [objc_allocWithZone(PKPaymentCardIneligibleViewController) initWithReason:a1 context:v49];
  v51 = v94;
  sub_1BD38F438(v93, v94);
  v52 = sub_1BE04AA64();
  v53 = *(v52 - 8);
  v54 = 0;
  if ((*(v53 + 48))(v51, 1, v52) != 1)
  {
    v54 = sub_1BE04A9C4();
    (*(v53 + 8))(v51, v52);
  }

  [v50 setLearnMoreURL_];

  v55 = sub_1BE04BBD4();
  [v50 setProvisioningController_];

  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v100 = sub_1BD82AFF0;
  v101 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v97 = 1107296256;
  v98 = sub_1BD198918;
  v99 = &block_descriptor_135_1;
  v57 = _Block_copy(&aBlock);
  v101, v58, v59, v60, v61, v62, v63, v64;
  [v50 setLearnMorePresentationHandler_];
  _Block_release(v57);
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v100 = sub_1BD82AFF8;
  v101 = v65;
  aBlock = MEMORY[0x1E69E9820];
  v97 = 1107296256;
  v98 = sub_1BD126964;
  v99 = &block_descriptor_139;
  v66 = _Block_copy(&aBlock);
  v101, v67, v68, v69, v70, v71, v72, v73;
  [v50 setTerminateFlowHandler_];
  _Block_release(v66);
  v74 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v75 = swift_allocObject();
  v75[2] = v74;
  v75[3] = v50;
  v75[4] = a3;
  v75[5] = v31;
  v100 = sub_1BD82B000;
  v101 = v75;
  aBlock = MEMORY[0x1E69E9820];
  v97 = 1107296256;
  v98 = sub_1BD715170;
  v99 = &block_descriptor_146_2;
  v76 = _Block_copy(&aBlock);
  v77 = v101;
  v78 = v50;
  sub_1BE048964();
  v77, v79, v80, v81, v82, v83, v84, v85;
  [v78 preflightWithCompletion_];
  _Block_release(v76);
}

void sub_1BD8199D8(void *a1, uint64_t a2)
{
  v3 = sub_1BE04BAC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1BE04BC34();
    v9 = sub_1BE04B9A4();
    (*(v4 + 8))(v6, v3);
    PKPaymentSetupApplyContextAppearance(v9, a1);
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      [v10 presentViewController:a1 animated:1 completion:0];
    }
  }
}

void sub_1BD819B2C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1BD81521C();
  }
}

void sub_1BD819B80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      v10 = a1;
      if (v9)
      {
        [v9 presentViewController:v10 animated:1 completion:0];
      }

      a5();
    }

    else
    {
      v10 = Strong;
    }
  }
}

void sub_1BD819C44(uint64_t a1, void (*a2)(char *), char **a3)
{
  v4 = v3;
  v196 = a1;
  v197 = a2;
  v6 = sub_1BE04C534();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v194 = &v190 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v193 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v192 = &v190 - v9;
  v10 = sub_1BE04D214();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v190 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer);
  if (v14)
  {
    sub_1BE048964();
    v198 = sub_1BE04C0A4();
    v16 = v15;
    v14, v15, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    v198 = 0;
    v16 = 0xE000000000000000;
  }

  sub_1BE04D0D4();
  sub_1BE048C84();
  v23 = sub_1BE04D204();
  v24 = sub_1BE052C54();
  v16, v25, v26, v27, v28, v29, v30, v31;
  v32 = os_log_type_enabled(v23, v24);
  v199 = v16;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v191 = v7;
    v34 = v6;
    v35 = v33;
    v36 = swift_slowAlloc();
    v37 = v16;
    v38 = a3;
    v39 = v36;
    aBlock[0] = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1BD123690(v198, v37, aBlock);
    _os_log_impl(&dword_1BD026000, v23, v24, "[%s] Showing T&C acceptance UI", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39, v40, v41, v42, v43, v44, v45, v46);
    v47 = v39;
    a3 = v38;
    MEMORY[0x1BFB45F20](v47, -1, -1);
    v48 = v35;
    v6 = v34;
    v7 = v191;
    MEMORY[0x1BFB45F20](v48, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  v57 = v197;
  if (!Strong)
  {
    v199, v50, v51, v52, v53, v54, v55, v56;
    v79 = v194;
    (*(v7 + 104))(v194, *MEMORY[0x1E69B8308], v6);
    v80 = v192;
    sub_1BE04BF54();
    (*(v7 + 8))(v79, v6);
    v57(v80);
    (*(v193 + 8))(v80, v195);
    return;
  }

  v58 = Strong;
  v59 = *(v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_context);
  sub_1BE048964();
  sub_1BD4FB068();
  v61 = v60;
  v59, v62, v63, v64, v65, v66, v67, v68;
  v69 = *(v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter);
  *(v4 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter) = v61;
  v70 = v61;

  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v72 = swift_allocObject();
  v74 = v198;
  v73 = v199;
  v72[2] = v71;
  v72[3] = v74;
  v72[4] = v73;
  v72[5] = v57;
  v72[6] = a3;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_1BE048964();
  v75 = [v58 parentViewController];
  if (v75)
  {
  }

  else
  {
    v81 = [v58 view];
    if (!v81)
    {
LABEL_21:
      a3, v82, v83, v84, v85, v86, v87, v88;
      v73, v176, v177, v178, v179, v180, v181, v182;
      v71, v183, v184, v185, v186, v187, v188, v189;
      __break(1u);
      return;
    }

    v89 = v81;
    v90 = [v81 window];

    v91 = [v90 rootViewController];
    if (!v91 || (sub_1BD0E5E8C(0, &qword_1EBD43450, 0x1E69DD258), v92 = a3, v93 = v58, v94 = sub_1BE053074(), v93, a3 = v92, v73 = v199, v91, (v94 & 1) == 0))
    {
      sub_1BD81A458(0, 0, v71, v74, v73, v57, a3);

      v71, v95, v96, v97, v98, v99, v100, v101;
      swift_bridgeObjectRelease_n();
      a3, v102, v103, v104, v105, v106, v107, v108;
      v72, v109, v110, v111, v112, v113, v114, v115;
      return;
    }
  }

  [v58 resignFirstResponder];
  a3 = &selRef_hoursOfDay;
  v76 = [objc_allocWithZone(PKPortraitNavigationController) init];
  [v76 setModalInPresentation_];
  v77 = [objc_allocWithZone(MEMORY[0x1E69C7048]) init];
  if (sub_1BE04BAB4())
  {
    v78 = [objc_allocWithZone(MEMORY[0x1E698F570]) init];
  }

  else
  {
    v78 = [objc_opt_self() defaultStyle];
  }

  v73 = v78;
  [v77 setStyle_];
  [v77 setDelegate_];
  [v77 setNavigationController_];
  v116 = [v77 loader];
  if (!v116)
  {
    v190, v117, v118, v119, v120, v121, v122, v123;
    v199, v162, v163, v164, v165, v166, v167, v168;
    v71, v169, v170, v171, v172, v173, v174, v175;
    __break(1u);
    goto LABEL_21;
  }

  v124 = v116;
  [v116 setAllowNonSecureHTTP_];

  v125 = *&v70[OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController];
  *&v70[OBJC_IVAR___PKProvisioningTermsPresenter_termsUIController] = v77;
  v126 = v77;

  v127 = sub_1BE04A9C4();
  v128 = swift_allocObject();
  v128[2] = sub_1BD82AE44;
  v128[3] = v72;
  v128[4] = v58;
  v128[5] = v76;
  v128[6] = v126;
  aBlock[4] = sub_1BD82AE5C;
  v201 = v128;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD3CC8C0;
  aBlock[3] = &block_descriptor_81_2;
  v129 = _Block_copy(aBlock);
  v130 = v201;
  v131 = v126;
  v132 = v58;
  sub_1BE048964();
  v133 = v76;
  v130, v134, v135, v136, v137, v138, v139, v140;
  [v131 loadURL:v127 postBody:0 completion:v129];
  _Block_release(v129);

  v71, v141, v142, v143, v144, v145, v146, v147;
  swift_bridgeObjectRelease_n();
  v190, v148, v149, v150, v151, v152, v153, v154;
  v72, v155, v156, v157, v158, v159, v160, v161;
}

char *sub_1BD81A458(int a1, void *a2, uint64_t a3, void *a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v67 = a2;
  v68 = a7;
  v63 = a4;
  v66 = a1;
  v9 = sub_1BE04C534();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD41D70, &qword_1BE0CC150);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - v14;
  v16 = sub_1BE04D214();
  v65 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v60 = v10;
    v61 = v15;
    v62 = v13;
    v21 = *&result[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter];
    *&result[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_termsPresenter] = 0;

    sub_1BE04D0D4();
    sub_1BE048C84();
    v22 = sub_1BE04D204();
    v23 = sub_1BE052C54();
    a5, v24, v25, v26, v27, v28, v29, v30;
    if (os_log_type_enabled(v22, v23))
    {
      v31 = swift_slowAlloc();
      v59 = a6;
      v32 = v31;
      v58 = swift_slowAlloc();
      v69 = v58;
      *v32 = 136315394;
      *(v32 + 4) = sub_1BD123690(v63, a5, &v69);
      *(v32 + 12) = 2080;
      v63 = v16;
      v33 = v66;
      if (v66)
      {
        v34 = 7562585;
      }

      else
      {
        v34 = 28494;
      }

      if (v66)
      {
        v35 = 0xE300000000000000;
      }

      else
      {
        v35 = 0xE200000000000000;
      }

      v36 = v9;
      v37 = v20;
      v38 = v12;
      v39 = sub_1BD123690(v34, v35, &v69);
      v35, v40, v41, v42, v43, v44, v45, v46;
      *(v32 + 14) = v39;
      v12 = v38;
      v20 = v37;
      v9 = v36;
      _os_log_impl(&dword_1BD026000, v22, v23, "[%s] T&C accepted %s", v32, 0x16u);
      v47 = v58;
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v47, -1, -1);
      v48 = v32;
      a6 = v59;
      MEMORY[0x1BFB45F20](v48, -1, -1);

      (*(v65 + 8))(v18, v63);
    }

    else
    {

      (*(v65 + 8))(v18, v16);
      v33 = v66;
    }

    v50 = v61;
    v49 = v62;
    v51 = v67;
    if (v33)
    {
      v52 = v60;
      v53 = v64;
      (*(v60 + 104))(v64, *MEMORY[0x1E69B8308], v9);
      sub_1BE04BF54();
      (*(v52 + 8))(v53, v9);
    }

    else
    {
      if (v67)
      {
        v54 = v67;
        v55 = sub_1BE04A844();
        v56 = [objc_opt_self() errorWithUnderlyingError:v55 defaultSeverity:1];

        *v50 = v56;
        (*(v49 + 104))(v50, *MEMORY[0x1E69B8168], v12);
        a6(v50);

        return (*(v49 + 8))(v50, v12);
      }

      *v50 = [objc_opt_self() userCancelError];
      (*(v49 + 104))(v50, *MEMORY[0x1E69B8168], v12);
    }

    a6(v50);

    return (*(v49 + 8))(v50, v12);
  }

  return result;
}

uint64_t sub_1BD81A968(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  v111 = a7;
  v112 = a8;
  v109 = a5;
  v110 = a6;
  v106 = a4;
  v108 = a1;
  v97 = sub_1BE04D214();
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BE051F54();
  v104 = *(v13 - 8);
  v105 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1BE051FA4();
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v100 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BE04CFF4();
  v99 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1BE04CFC4();
  v19 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE04CFE4();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04B694();
  v26 = sub_1BE04CFD4();
  sub_1BE04D004();
  v98 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a3, v27, v28, v29, v30, v31, v32, v33;
    v34 = v99;
    if ((*(v99 + 88))(v18, v16) == *MEMORY[0x1E69E93E8])
    {
      v35 = "[Error] Interval already ended";
    }

    else
    {
      (*(v34 + 8))(v18, v16);
      v35 = "";
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v26, v98, v37, "provisioning:getSecureElementSnapshot", v35, v36, 2u);
    MEMORY[0x1BFB45F20](v36, -1, -1);
  }

  (*(v19 + 8))(v21, v107);
  (*(v23 + 8))(v25, v22);
  v38 = v108;
  if (v108)
  {
    sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
    v39 = v38;
    v40 = sub_1BE052D54();
    v41 = swift_allocObject();
    v41[2] = a9;
    v41[3] = a10;
    v42 = v109;
    v43 = v110;
    v41[4] = v39;
    v41[5] = v43;
    v41[6] = v106;
    v41[7] = v42;
    v44 = v111;
    v45 = v112;
    v41[8] = a11;
    v41[9] = v44;
    v41[10] = v45;
    aBlock[4] = sub_1BD82AE80;
    v114 = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BD126964;
    aBlock[3] = &block_descriptor_96_4;
    v46 = _Block_copy(aBlock);
    v47 = v114;
    v111 = v39;
    sub_1BE048964();
    v48 = a10;
    sub_1BE048C84();
    sub_1BE048C84();
    v49 = a11;
    sub_1BE048964();
    v47, v50, v51, v52, v53, v54, v55, v56;
    v57 = v100;
    sub_1BE051F74();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
    sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
    v58 = v102;
    v59 = v105;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v57, v58, v46);
    _Block_release(v46);

    (*(v104 + 8))(v58, v59);
    return (*(v101 + 8))(v57, v103);
  }

  else
  {
    v61 = v95;
    sub_1BE04D0D4();
    v62 = v110;
    sub_1BE048C84();
    v63 = v109;
    sub_1BE048C84();
    v64 = sub_1BE04D204();
    v65 = sub_1BE052C54();
    v62, v66, v67, v68, v69, v70, v71, v72;
    v63, v73, v74, v75, v76, v77, v78, v79;
    if (os_log_type_enabled(v64, v65))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      aBlock[0] = v81;
      *v80 = 136315394;
      *(v80 + 4) = sub_1BD123690(v106, v63, aBlock);
      *(v80 + 12) = 2080;
      v82 = MEMORY[0x1BFB3F7F0](v62, MEMORY[0x1E69E6158]);
      v84 = v83;
      v85 = sub_1BD123690(v82, v83, aBlock);
      v84, v86, v87, v88, v89, v90, v91, v92;
      *(v80 + 14) = v85;
      _os_log_impl(&dword_1BD026000, v64, v65, "[%s] Failed to generate snapshot for %s", v80, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB45F20](v81, -1, -1);
      MEMORY[0x1BFB45F20](v80, -1, -1);
    }

    (*(v96 + 8))(v61, v97);
    v93 = PKDynamicSEAllocationFakeFullSE();
    return (v111)(v93);
  }
}

void sub_1BD81B184(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v213 = a8;
  v216 = a7;
  v210 = a3;
  v211 = a6;
  v205 = a5;
  v221 = a4;
  v203 = sub_1BE04CFF4();
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203);
  v201 = &v200 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE04B944();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_1BE04CFC4();
  v207 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v217 = &v200 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v200 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v200 - v19;
  v219 = sub_1BE04CFE4();
  v222 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v218 = &v200 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v200 - v23;
  v25 = sub_1BE04D214();
  v214 = *(v25 - 8);
  v215 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v200 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v200 - v29;
  v31 = sub_1BE04BB34();
  v212 = a2;
  v206 = v13;
  if (v32)
  {
    v33 = v32;
    v208 = v31;
    goto LABEL_3;
  }

  v105 = [a2 view];
  if (v105)
  {
    v106 = v105;
    v107 = [v105 window];

    if (v107)
    {
      v33 = [v107 windowScene];

      if (v33)
      {
        v108 = [v33 _sceneIdentifier];

        v208 = sub_1BE052434();
        v33 = v109;
      }

      else
      {
        v208 = 0;
      }
    }

    else
    {
      v208 = 0;
      v33 = 0;
    }

LABEL_3:
    v209 = a9;
    v34 = objc_allocWithZone(sub_1BE04C1E4());
    sub_1BE048C84();
    sub_1BE048964();
    v35 = v210;
    v210 = sub_1BE04C1B4();
    if (sub_1BE04C1D4())
    {
      if (v33)
      {
        sub_1BE04D0D4();
        v43 = v211;
        sub_1BE048C84();
        v44 = sub_1BE04D204();
        v45 = sub_1BE052C54();
        v43, v46, v47, v48, v49, v50, v51, v52;
        if (os_log_type_enabled(v44, v45))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v223[0] = v54;
          *v53 = 136315138;
          v55 = v205;
          *(v53 + 4) = sub_1BD123690(v205, v43, v223);
          _os_log_impl(&dword_1BD026000, v44, v45, "[%s] Showing SES SE clean up sheet", v53, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v54, v56, v57, v58, v59, v60, v61, v62);
          MEMORY[0x1BFB45F20](v54, -1, -1);
          MEMORY[0x1BFB45F20](v53, -1, -1);

          (*(v214 + 8))(v30, v215);
          v63 = v210;
          v64 = v216;
        }

        else
        {

          (*(v214 + 8))(v30, v215);
          v63 = v210;
          v64 = v216;
          v55 = v205;
        }

        v171 = *(v64 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle);
        *(v64 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle) = v63;
        v172 = v63;

        v173 = v212;
        v174 = [v212 navigationController];
        if (v174)
        {
          v175 = v174;
          [v174 overrideUserInterfaceStyle];
        }

        else
        {
          [v173 overrideUserInterfaceStyle];
        }

        v176 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v177 = swift_allocObject();
        v177[2] = v176;
        v177[3] = v55;
        v178 = v213;
        v177[4] = v43;
        v177[5] = v178;
        v177[6] = v209;
        sub_1BE048C84();
        sub_1BE048964();
        sub_1BE048964();
        sub_1BE04C1C4();
        v33, v179, v180, v181, v182, v183, v184, v185;
        v176, v186, v187, v188, v189, v190, v191, v192;
        v177, v193, v194, v195, v196, v197, v198, v199;
LABEL_31:

        return;
      }
    }

    else
    {
      v33, v36, v37, v38, v39, v40, v41, v42;
    }

    sub_1BE04B694();
    sub_1BE04CFB4();
    v65 = sub_1BE04CFD4();
    v66 = sub_1BE052E34();
    if (sub_1BE053494())
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      v68 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v65, v66, v68, "provisioning:prepareSEStorageCleanupController", "", v67, 2u);
      MEMORY[0x1BFB45F20](v67, -1, -1);
    }

    v69 = v207;
    v70 = v220;
    (*(v207 + 16))(v17, v20, v220);
    sub_1BE04D024();
    swift_allocObject();
    v208 = sub_1BE04D014();
    v207 = *(v69 + 8);
    (v207)(v20, v70);
    v71 = *(v222 + 8);
    v222 += 8;
    v204 = v71;
    v71(v24, v219);
    sub_1BE04D0D4();
    v72 = v211;
    sub_1BE048C84();
    v73 = sub_1BE04D204();
    v74 = sub_1BE052C54();
    v72, v75, v76, v77, v78, v79, v80, v81;
    v82 = os_log_type_enabled(v73, v74);
    v83 = v206;
    if (v82)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v223[0] = v85;
      *v84 = 136315138;
      *(v84 + 4) = sub_1BD123690(v205, v72, v223);
      _os_log_impl(&dword_1BD026000, v73, v74, "[%s] Showing Wallet SE clean up sheet", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v85, v86, v87, v88, v89, v90, v91, v92);
      MEMORY[0x1BFB45F20](v85, -1, -1);
      MEMORY[0x1BFB45F20](v84, -1, -1);
    }

    (*(v214 + 8))(v27, v215);
    v93 = v216;
    v94 = v217;
    sub_1BE04BB94();
    v95 = *(v93 + OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer);
    if (v95)
    {
      sub_1BE048964();
      v96 = sub_1BE04C0A4();
      v98 = v97;
      v95, v97, v99, v100, v101, v102, v103, v104;
    }

    else
    {
      v96 = 0;
      v98 = 0xE000000000000000;
    }

    type metadata accessor for SEStorageCleanupController(0);
    swift_allocObject();
    v110 = v221;
    sub_1BE048C84();
    v111 = sub_1BD5DD994(v83, v35, v110, v96, v98);
    sub_1BD82B4EC(&qword_1EBD550E0, 255, type metadata accessor for SEStorageCleanupController, &unk_1BE0E6D38);
    sub_1BE048964();
    v112 = sub_1BE04E954();
    v114 = v113;
    v223[0] = v112;
    v223[1] = v113;
    v115 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD550E8, &unk_1BE0FBCD0));
    sub_1BE048964();
    v116 = sub_1BE04F894();
    v117 = swift_allocObject();
    v119 = v212;
    v118 = v213;
    *(v117 + 2) = v212;
    *(v117 + 3) = v118;
    *(v117 + 4) = v209;
    v120 = &v111[OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion];
    v121 = *&v111[OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion];
    v122 = *&v111[OBJC_IVAR____TtC9PassKitUI26SEStorageCleanupController_completion + 8];
    *v120 = sub_1BD82AEB8;
    v120[1] = v117;
    sub_1BE048964();
    v123 = v119;
    sub_1BD0D4744(v121, v122, v124, v125, v126, v127, v128, v129);
    sub_1BE04B694();
    v130 = sub_1BE04CFD4();
    v131 = v208;
    sub_1BE04D004();
    v132 = sub_1BE052E24();
    if (sub_1BE053494())
    {
      sub_1BE048964();
      v133 = v201;
      sub_1BE04D034();
      v134 = v131;
      v135 = v133;
      v134, v136, v137, v138, v139, v140, v141, v142;
      v143 = v202;
      v144 = v133;
      v145 = v203;
      if ((*(v202 + 88))(v144, v203) == *MEMORY[0x1E69E93E8])
      {
        v146 = "[Error] Interval already ended";
      }

      else
      {
        (*(v143 + 8))(v135, v145);
        v146 = "";
      }

      v147 = swift_slowAlloc();
      *v147 = 0;
      v148 = v217;
      v149 = sub_1BE04CFA4();
      _os_signpost_emit_with_name_impl(&dword_1BD026000, v130, v132, v149, "provisioning:prepareSEStorageCleanupController", v146, v147, 2u);
      MEMORY[0x1BFB45F20](v147, -1, -1);
      v94 = v148;
      v131 = v208;
    }

    (v207)(v94, v220);
    v204(v218, v219);
    [v123 presentViewController:v116 animated:1 completion:0];
    v131, v150, v151, v152, v153, v154, v155, v156;
    v111, v157, v158, v159, v160, v161, v162, v163;
    v114, v164, v165, v166, v167, v168, v169, v170;

    v63 = v210;
    goto LABEL_31;
  }

  __break(1u);
}

uint64_t sub_1BD81BD5C(int a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v32 = a4;
  v33 = a1;
  v10 = sub_1BE051F54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BE051FA4();
  v14 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0E5E8C(0, &qword_1EBD35E90, 0x1E69E9610);
  v35 = sub_1BE052D54();
  v17 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = a2;
  *(v19 + 32) = v32;
  *(v19 + 40) = a5;
  *(v19 + 48) = v34;
  *(v19 + 56) = a7;
  *(v19 + 64) = v33;
  aBlock[4] = sub_1BD82AF38;
  v38 = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_110_2;
  v20 = _Block_copy(aBlock);
  v21 = v38;
  v22 = a2;
  sub_1BE048C84();
  sub_1BE048964();
  v21, v23, v24, v25, v26, v27, v28, v29;
  sub_1BE051F74();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1BD82B4EC(&qword_1EBD366B0, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0, &unk_1BE0B8FF0);
  sub_1BD0DE4F4(&qword_1EBD35F20, &unk_1EBD387F0, &unk_1BE0B8FF0, MEMORY[0x1E69E6328]);
  sub_1BE053664();
  v30 = v35;
  MEMORY[0x1BFB3FDF0](0, v16, v13, v20);
  _Block_release(v20);

  (*(v11 + 8))(v13, v10);
  return (*(v14 + 8))(v16, v36);
}

void sub_1BD81C0DC(uint64_t a1, void *a2, void *a3, void *a4, void (*a5)(void), id *a6, char a7)
{
  v13 = sub_1BE04D214();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    if (a2)
    {
      v51 = a3;
      v19 = a2;
      sub_1BE04D0D4();
      v20 = a2;
      sub_1BE048C84();
      v21 = sub_1BE04D204();
      v22 = sub_1BE052C54();
      a4, v23, v24, v25, v26, v27, v28, v29;

      if (os_log_type_enabled(v21, v22))
      {
        v30 = swift_slowAlloc();
        v49[1] = a6;
        v31 = v30;
        v32 = swift_slowAlloc();
        v50 = a5;
        v33 = v32;
        v49[0] = swift_slowAlloc();
        v52 = v49[0];
        *v31 = 136315394;
        *(v31 + 4) = sub_1BD123690(v51, a4, &v52);
        *(v31 + 12) = 2112;
        v34 = a2;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v31 + 14) = v35;
        *v33 = v35;
        _os_log_impl(&dword_1BD026000, v21, v22, "[%s] Failed to present snapshot sheet with error: %@", v31, 0x16u);
        sub_1BD0DE53C(v33, &unk_1EBD3E590, &unk_1BE0B7E50);
        v36 = v33;
        a5 = v50;
        MEMORY[0x1BFB45F20](v36, -1, -1);
        v37 = v49[0];
        __swift_destroy_boxed_opaque_existential_0(v49[0], v38, v39, v40, v41, v42, v43, v44);
        MEMORY[0x1BFB45F20](v37, -1, -1);
        MEMORY[0x1BFB45F20](v31, -1, -1);
      }

      (*(v14 + 8))(v16, v13);
      a5(0);
    }

    else
    {
      a5(a7 & 1);
    }

    v45 = OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle;
    v46 = *&v18[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_seStorageHandle];
    if (v46)
    {
      v47 = v46;
      sub_1BE04C1A4();

      v48 = *&v18[v45];
    }

    else
    {
      v48 = 0;
    }

    *&v18[v45] = 0;
  }
}

void sub_1BD81C3AC(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04D214();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BAC4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    if (sub_1BE053704())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v13 = *&v1[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
    if (!v13)
    {
      goto LABEL_7;
    }

    v14 = [v13 paymentSetupFieldWithIdentifier_];
    if (!v14)
    {
      goto LABEL_25;
    }

    v15 = v14;
    v16 = [v14 displayString];

    if (v16)
    {
      sub_1BE052434();
      v18 = v17;
    }

    else
    {
LABEL_7:
      v18 = 0;
    }

    sub_1BE04BC34();
    v19 = sub_1BE04B9A4();
    (*(v9 + 8))(v12, v8);
    v20 = objc_allocWithZone(PKPaymentSetupDisambiguationViewController);
    sub_1BD0E5E8C(0, &qword_1EBD38568, 0x1E69B8E48);
    v21 = sub_1BE052724();
    v22 = [v20 initWithProducts:v21 context:v19];

    if (v22)
    {
      if (v18)
      {
        v23 = sub_1BE052404();
        v18, v24, v25, v26, v27, v28, v29, v30;
      }

      else
      {
        v23 = 0;
      }

      [v22 setEnteredCardNumber_];

      [v22 setDelegate_];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v32 = Strong;
        v33 = [Strong navigationController];

        if (v33)
        {
          [v33 pushViewController:v22 animated:1];
        }
      }

      return;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  sub_1BE04D0D4();
  v34 = v1;
  v35 = sub_1BE04D204();
  v36 = sub_1BE052C34();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v65 = v38;
    *v37 = 136315138;
    v39 = *&v34[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
    if (v39)
    {
      sub_1BE048964();
      v40 = sub_1BE04C0A4();
      v42 = v41;
      v39, v41, v43, v44, v45, v46, v47, v48;
    }

    else
    {
      v40 = 0;
      v42 = 0xE000000000000000;
    }

    v49 = sub_1BD123690(v40, v42, &v65);
    v42, v50, v51, v52, v53, v54, v55, v56;
    *(v37 + 4) = v49;
    _os_log_impl(&dword_1BD026000, v35, v36, "[%s] Attempted to present products disambiguation for empty products array", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38, v57, v58, v59, v60, v61, v62, v63);
    MEMORY[0x1BFB45F20](v38, -1, -1);
    MEMORY[0x1BFB45F20](v37, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
}

void sub_1BD81C7FC(void *a1)
{
  v3 = sub_1BE04D214();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_fieldsModel];
  if (v7)
  {
    v58 = v7;
    v8 = [a1 requiredFields];
    v9 = [v58 secondaryEntryFieldsModelWithPaymentSetupFields_];

    if (v9)
    {
      v10 = [a1 configuration];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 productIdentifier];

        if (v12)
        {
          v13 = sub_1BE052434();
          v15 = v14;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        sub_1BD8182B4(v9, v13, v15, 0, 0);

        v15, v32, v33, v34, v35, v36, v37, v38;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v31 = v58;
    }
  }

  else
  {
    sub_1BE04D0D4();
    v16 = v1;
    v17 = sub_1BE04D204();
    v18 = sub_1BE052C34();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 136315138;
      v58 = v16;
      v59 = v20;
      v21 = *&v16[OBJC_IVAR____TtC9PassKitUI25ProvisioningUICoordinator_composer];
      if (v21)
      {
        sub_1BE048964();
        v22 = sub_1BE04C0A4();
        v24 = v23;
        v21, v23, v25, v26, v27, v28, v29, v30;
      }

      else
      {
        v22 = 0;
        v24 = 0xE000000000000000;
      }

      v39 = sub_1BD123690(v22, v24, &v59);
      v24, v40, v41, v42, v43, v44, v45, v46;
      *(v19 + 4) = v39;
      _os_log_impl(&dword_1BD026000, v17, v18, "[%s] Failed to disambiguate provisioning because missing fields model", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20, v47, v48, v49, v50, v51, v52, v53);
      MEMORY[0x1BFB45F20](v20, -1, -1);
      MEMORY[0x1BFB45F20](v19, -1, -1);

      (*(v4 + 8))(v6, v3);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v55 = Strong;
      v56 = [Strong navigationController];

      if (v56)
      {
        v57 = [v56 popViewControllerAnimated_];
      }
    }
  }
}