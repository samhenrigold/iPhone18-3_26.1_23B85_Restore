void OfflineFeedManifest.init(_:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_219BDBD24();
  v4 = type metadata accessor for OfflineFeedManifest(0);
  sub_219BDBD24();
  *(a2 + *(v4 + 24)) = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_170;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v95 = v4;
  v96 = a2;
  v98 = a1;
  v99 = v5;
  if (v5)
  {
    v4 = 0;
    v6 = a1 & 0xC000000000000001;
    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = MEMORY[0x277D84F90];
    do
    {
      if (v6)
      {
        v9 = MEMORY[0x21CECE0F0](v4, a1);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_25:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v7 + 16))
        {
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
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
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
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          v5 = sub_219BF7214();
          goto LABEL_3;
        }

        v9 = *(a1 + 8 * v4 + 32);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_25;
        }
      }

      v11 = v9;
      v12 = [v11 assetURLs];
      sub_219BDB954();
      a1 = sub_219BF5924();

      v13 = *(a1 + 16);
      a2 = v8[2];
      v14 = a2 + v13;
      if (__OFADD__(a2, v13))
      {
        goto LABEL_141;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v14 <= v8[3] >> 1)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (a2 <= v14)
        {
          v16 = a2 + v13;
        }

        else
        {
          v16 = a2;
        }

        v8 = sub_218737B64(isUniquelyReferenced_nonNull_native, v16, 1, v8, &unk_280E8C1A0, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
        if (!*(a1 + 16))
        {
LABEL_5:

          a1 = v98;
          if (v13)
          {
            goto LABEL_142;
          }

          goto LABEL_6;
        }
      }

      if ((v8[3] >> 1) - v8[2] < v13)
      {
        goto LABEL_158;
      }

      swift_arrayInitWithCopy();

      a1 = v98;
      if (v13)
      {
        v17 = v8[2];
        v18 = __OFADD__(v17, v13);
        v19 = v17 + v13;
        if (v18)
        {
          goto LABEL_164;
        }

        v8[2] = v19;
      }

LABEL_6:
      ++v4;
      v5 = v99;
    }

    while (v10 != v99);
  }

  sub_2186EBBE0(0);
  v20 = sub_219BDB954();
  sub_2186EC7E8(&qword_280E8F6C0, sub_2186EBBE0, MEMORY[0x277D83970]);
  v97 = v20;
  sub_2186EC7E8(&unk_280EE9D30, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  a2 = sub_219BF56E4();

  *(v96 + v95[7]) = a2;
  if (!v5)
  {
    goto LABEL_49;
  }

  v4 = 0;
  v21 = a1 & 0xC000000000000001;
  v22 = a1 & 0xFFFFFFFFFFFFFF8;
  v23 = MEMORY[0x277D84F90];
  a1 = MEMORY[0x277CC9318];
  while (v21)
  {
    v24 = MEMORY[0x21CECE0F0](v4, v98);
    v25 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_48;
    }

LABEL_33:
    v26 = v24;
    v27 = [v26 assetWrappingKeyIDs];
    a2 = sub_219BF5924();

    v28 = *(a2 + 16);
    v29 = *(v23 + 2);
    v30 = v29 + v28;
    if (__OFADD__(v29, v28))
    {
      goto LABEL_144;
    }

    v31 = swift_isUniquelyReferenced_nonNull_native();
    if (v31 && v30 <= *(v23 + 3) >> 1)
    {
      if (!*(a2 + 16))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (v29 <= v30)
      {
        v32 = v29 + v28;
      }

      else
      {
        v32 = v29;
      }

      v23 = sub_2191F95C4(v31, v32, 1, v23);
      if (!*(a2 + 16))
      {
LABEL_28:

        if (v28)
        {
          goto LABEL_145;
        }

        goto LABEL_29;
      }
    }

    if ((*(v23 + 3) >> 1) - *(v23 + 2) < v28)
    {
      goto LABEL_159;
    }

    swift_arrayInitWithCopy();

    if (v28)
    {
      v33 = *(v23 + 2);
      v18 = __OFADD__(v33, v28);
      v34 = v33 + v28;
      if (v18)
      {
        goto LABEL_165;
      }

      *(v23 + 2) = v34;
    }

LABEL_29:
    ++v4;
    if (v25 == v99)
    {
      goto LABEL_49;
    }
  }

  if (v4 >= *(v22 + 16))
  {
    goto LABEL_143;
  }

  v24 = *(v98 + 8 * v4 + 32);
  v25 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_33;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v35 = MEMORY[0x277CC9318];
  sub_2186D0CEC(0, &qword_280E8F6A8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  sub_2191FC7DC(&qword_280E8F690, &qword_280E8F6A8, v35);
  sub_2191FC840();
  v36 = v99;
  a2 = sub_219BF56E4();

  *(v96 + v95[8]) = a2;
  a1 = MEMORY[0x277D84F90];
  if (v99)
  {
    v4 = 0;
    v37 = v98;
    v38 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v98 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x21CECE0F0](v4, v37);
        v40 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v4 >= *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_146;
        }

        v39 = *(v37 + 8 * v4 + 32);
        v40 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_70:
          __break(1u);
          break;
        }
      }

      v41 = v39;
      v42 = [v41 recordIDs];
      a2 = sub_219BF5924();

      v43 = *(a2 + 16);
      v44 = *(v38 + 2);
      v45 = v44 + v43;
      if (__OFADD__(v44, v43))
      {
        goto LABEL_147;
      }

      v46 = swift_isUniquelyReferenced_nonNull_native();
      if (!v46 || v45 > *(v38 + 3) >> 1)
      {
        if (v44 <= v45)
        {
          v47 = v44 + v43;
        }

        else
        {
          v47 = v44;
        }

        v38 = sub_218840D24(v46, v47, 1, v38);
      }

      v37 = v98;
      if (*(a2 + 16))
      {
        if ((*(v38 + 3) >> 1) - *(v38 + 2) < v43)
        {
          goto LABEL_160;
        }

        swift_arrayInitWithCopy();

        if (v43)
        {
          v48 = *(v38 + 2);
          v18 = __OFADD__(v48, v43);
          v49 = v48 + v43;
          if (v18)
          {
            goto LABEL_166;
          }

          *(v38 + 2) = v49;
        }
      }

      else
      {

        if (v43)
        {
          goto LABEL_148;
        }
      }

      ++v4;
      v36 = v99;
      if (v40 == v99)
      {
        goto LABEL_72;
      }
    }
  }

  v37 = v98;
LABEL_72:
  v50 = MEMORY[0x277D837D0];
  sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v50);
  v51 = 0;
  a2 = sub_219BF56E4();

  v53 = v95;
  v52 = v96;
  *(v96 + v95[9]) = a2;
  if (!v36)
  {
    v79 = sub_219BF56E4();

    *(v96 + v95[10]) = v79;
    goto LABEL_117;
  }

  v4 = 0;
  v54 = v37 & 0xC000000000000001;
  v55 = v37 & 0xFFFFFFFFFFFFFF8;
  a1 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v54)
    {
      v56 = MEMORY[0x21CECE0F0](v4, v37);
      v57 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      goto LABEL_79;
    }

    if (v4 >= *(v55 + 16))
    {
      goto LABEL_149;
    }

    v56 = *(v37 + 8 * v4 + 32);
    v57 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
LABEL_79:
      v58 = v51;
      v59 = v56;
      v60 = [v59 avAssetIDs];
      a2 = sub_219BF5924();

      v61 = *(a2 + 16);
      v62 = *(a1 + 16);
      v63 = v62 + v61;
      if (__OFADD__(v62, v61))
      {
        goto LABEL_150;
      }

      v64 = swift_isUniquelyReferenced_nonNull_native();
      if (!v64 || v63 > *(a1 + 24) >> 1)
      {
        if (v62 <= v63)
        {
          v65 = v62 + v61;
        }

        else
        {
          v65 = v62;
        }

        a1 = sub_218840D24(v64, v65, 1, a1);
      }

      v37 = v98;
      v51 = v58;
      if (*(a2 + 16))
      {
        if ((*(a1 + 24) >> 1) - *(a1 + 16) < v61)
        {
          goto LABEL_161;
        }

        swift_arrayInitWithCopy();

        if (v61)
        {
          v66 = *(a1 + 16);
          v18 = __OFADD__(v66, v61);
          v67 = v66 + v61;
          if (v18)
          {
            goto LABEL_167;
          }

          *(a1 + 16) = v67;
        }
      }

      else
      {

        if (v61)
        {
          goto LABEL_151;
        }
      }

      ++v4;
      if (v57 == v99)
      {
        goto LABEL_94;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_94:
  a2 = sub_219BF56E4();

  v4 = 0;
  *(v96 + v95[10]) = a2;
  a1 = MEMORY[0x277D84F90];
  while (2)
  {
    if (v54)
    {
      v68 = MEMORY[0x21CECE0F0](v4, v37);
      v69 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      goto LABEL_100;
    }

    if (v4 >= *(v55 + 16))
    {
      goto LABEL_152;
    }

    v68 = *(v37 + 8 * v4 + 32);
    v69 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
LABEL_100:
      v70 = v68;
      v71 = [v70 avAssetKeyIDs];
      a2 = sub_219BF5924();

      v72 = *(a2 + 16);
      v73 = *(a1 + 16);
      v74 = v73 + v72;
      if (__OFADD__(v73, v72))
      {
        goto LABEL_153;
      }

      v75 = swift_isUniquelyReferenced_nonNull_native();
      if (!v75 || v74 > *(a1 + 24) >> 1)
      {
        if (v73 <= v74)
        {
          v76 = v73 + v72;
        }

        else
        {
          v76 = v73;
        }

        a1 = sub_218840D24(v75, v76, 1, a1);
      }

      v37 = v98;
      if (*(a2 + 16))
      {
        if ((*(a1 + 24) >> 1) - *(a1 + 16) < v72)
        {
          goto LABEL_162;
        }

        swift_arrayInitWithCopy();

        if (v72)
        {
          v77 = *(a1 + 16);
          v18 = __OFADD__(v77, v72);
          v78 = v77 + v72;
          if (v18)
          {
            goto LABEL_168;
          }

          *(a1 + 16) = v78;
        }
      }

      else
      {

        if (v72)
        {
          goto LABEL_154;
        }
      }

      ++v4;
      if (v69 == v99)
      {
        goto LABEL_115;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_115:
  v53 = v95;
  v52 = v96;
  v36 = v99;
LABEL_117:
  a2 = sub_219BF56E4();

  *(v52 + v53[11]) = a2;
  if (v36)
  {
    v4 = 0;
    v80 = v37 & 0xC000000000000001;
    v81 = v37 & 0xFFFFFFFFFFFFFF8;
    a1 = v97 - 8;
    v82 = MEMORY[0x277D84F90];
    do
    {
      if (v80)
      {
        v83 = MEMORY[0x21CECE0F0](v4, v37);
        v84 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_138;
        }
      }

      else
      {
        if (v4 >= *(v81 + 16))
        {
          goto LABEL_155;
        }

        v83 = *(v37 + 8 * v4 + 32);
        v84 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_138:
          __break(1u);
          break;
        }
      }

      v85 = v83;
      v86 = [v85 avAssetKeyURIs];
      v87 = sub_219BF5924();

      a2 = *(v87 + 16);
      v88 = v82[2];
      v89 = v88 + a2;
      if (__OFADD__(v88, a2))
      {
        goto LABEL_156;
      }

      v90 = swift_isUniquelyReferenced_nonNull_native();
      if (!v90 || v89 > v82[3] >> 1)
      {
        if (v88 <= v89)
        {
          v91 = v88 + a2;
        }

        else
        {
          v91 = v88;
        }

        v82 = sub_218737B64(v90, v91, 1, v82, &unk_280E8C1A0, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
      }

      v37 = v98;
      if (*(v87 + 16))
      {
        if ((v82[3] >> 1) - v82[2] < a2)
        {
          goto LABEL_163;
        }

        swift_arrayInitWithCopy();

        if (a2)
        {
          v92 = v82[2];
          v18 = __OFADD__(v92, a2);
          v93 = v92 + a2;
          if (v18)
          {
            goto LABEL_169;
          }

          v82[2] = v93;
        }
      }

      else
      {

        if (a2)
        {
          goto LABEL_157;
        }
      }

      ++v4;
    }

    while (v84 != v99);
  }

  v94 = sub_219BF56E4();

  *(v96 + v95[12]) = v94;
}

uint64_t sub_2191F1D64()
{
  v0 = sub_219BDBD34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for OfflineFeedManifest(0);
  __swift_allocate_value_buffer(v7, qword_280ED0C30);
  v8 = __swift_project_value_buffer(v7, qword_280ED0C30);
  sub_219BDBBB4();
  sub_219BDBBB4();
  v9 = *(v1 + 32);
  v9(v8, v6, v0);
  result = (v9)(v8 + v7[5], v3, v0);
  v11 = MEMORY[0x277D84F90];
  *(v8 + v7[6]) = MEMORY[0x277D84F90];
  *(v8 + v7[7]) = v11;
  *(v8 + v7[8]) = v11;
  *(v8 + v7[9]) = v11;
  *(v8 + v7[10]) = v11;
  *(v8 + v7[11]) = v11;
  *(v8 + v7[12]) = v11;
  return result;
}

uint64_t static OfflineFeedManifest.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280ED0C20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OfflineFeedManifest(0);
  v3 = __swift_project_value_buffer(v2, qword_280ED0C30);
  return sub_218753520(v3, a1, type metadata accessor for OfflineFeedManifest);
}

uint64_t OfflineFeedManifest.Group.groupIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for OfflineFeedManifest.Group(0) + 24));

  return v1;
}

uint64_t OfflineFeedManifest.Group.kindIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for OfflineFeedManifest.Group(0) + 28));

  return v1;
}

void OfflineFeedManifest.Group.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  sub_2186DD9FC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = v47 - v6;
  v56 = sub_219BDBD34();
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v51 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v47 - v9;
  sub_218752C3C(0, &qword_27CC17220, sub_2191FC894, &type metadata for OfflineFeedManifest.Group.CodingKeys, MEMORY[0x277D844C8]);
  v12 = v11;
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v47 - v13;
  v15 = type metadata accessor for OfflineFeedManifest.Group(0);
  MEMORY[0x28223BE20](v15);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v58 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_2191FC894();
  v19 = v57;
  sub_219BF7B34();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    v48 = v15;
    v49 = v10;
    v57 = v17;
    LOBYTE(v60) = 0;
    sub_2186EC7E8(&unk_280EE9C70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v20 = v55;
    v21 = v56;
    v22 = v14;
    sub_219BF76E4();
    v23 = v12;
    v24 = v53;
    v47[0] = *(v53 + 48);
    v47[1] = v53 + 48;
    if ((v47[0])(v20, 1, v21) == 1)
    {
      v25 = v20;
      __swift_project_boxed_opaque_existential_1(v58, v58[3]);
      v26 = sub_219BF7B24();
      sub_2191F2C38(v26, v49);

      v29 = (v47[0])(v20, 1, v21);
      v22 = v14;
      v28 = v52;
      if (v29 != 1)
      {
        sub_2191F6698(v25, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }

      v24 = v53;
      v27 = v49;
    }

    else
    {
      v27 = v49;
      (*(v24 + 32))(v49, v20, v21);
      v28 = v52;
    }

    v30 = *(v24 + 32);
    v30(v57, v27, v21);
    LOBYTE(v60) = 1;
    sub_219BF76E4();
    v55 = v22;
    v31 = v23;
    if ((v47[0])(v28, 1, v21) == 1)
    {
      __swift_project_boxed_opaque_existential_1(v58, v58[3]);
      v32 = sub_219BF7B24();
      sub_2191F2C38(v32, v51);

      v43 = v52;
      if ((v47[0])(v52, 1, v21) != 1)
      {
        sub_2191F6698(v43, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }

      v33 = v51;
    }

    else
    {
      v33 = v51;
      v30(v51, v28, v21);
    }

    v34 = v48;
    v35 = v57;
    v30(&v57[v48[5]], v33, v21);
    LOBYTE(v60) = 2;
    v36 = v55;
    v37 = sub_219BF7694();
    if (v38)
    {
      v39 = v37;
    }

    else
    {
      v39 = 0;
    }

    v40 = 0xE000000000000000;
    if (v38)
    {
      v40 = v38;
    }

    v41 = &v35[v34[6]];
    *v41 = v39;
    v41[1] = v40;
    LOBYTE(v60) = 3;
    v42 = sub_219BF7694();
    v44 = &v35[v34[7]];
    *v44 = v42;
    v44[1] = v45;
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v59 = 4;
    sub_218753310(&qword_280E8EDD0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_219BF7734();
    *&v35[v34[8]] = v60;
    v59 = 5;
    sub_219BF7734();
    *&v35[v34[9]] = v60;
    v59 = 6;
    sub_219BF7734();
    *&v35[v34[10]] = v60;
    v59 = 7;
    sub_219BF7734();
    *&v35[v34[11]] = v60;
    v59 = 8;
    sub_219BF7734();
    (*(v54 + 8))(v36, v31);
    v46 = v57;
    *&v57[v48[12]] = v60;
    sub_218753520(v46, v50, type metadata accessor for OfflineFeedManifest.Group);
    __swift_destroy_boxed_opaque_existential_1(v58);
    sub_218753588(v46, type metadata accessor for OfflineFeedManifest.Group);
  }
}

uint64_t sub_2191F2C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2186DD9FC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - v5;
  if (qword_280E8D468 != -1)
  {
    swift_once();
  }

  v7 = sub_219BF74C4();
  v8 = __swift_project_value_buffer(v7, qword_280F616C0);
  if (*(a1 + 16) && (v12 = sub_218751790(v8), (v9 & 1) != 0))
  {
    sub_2186D1230(*(a1 + 56) + 32 * v12, v21);
    sub_218751558(v21, v22);
    sub_2186D1230(v22, v21);
    v13 = sub_219BDBD34();
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v22);
      v14 = *(v13 - 8);
      (*(v14 + 56))(v6, 0, 1, v13);
      return (*(v14 + 32))(a2, v6, v13);
    }

    else
    {
      (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
      sub_2191F6698(v6, &qword_280EE9C40, MEMORY[0x277CC9578]);
      sub_2191FD490(0, v17, v18, v19);
      sub_2186EC7E8(&qword_27CC17500, sub_2191FD490, &unk_219C65AC8);
      swift_allocError();
      *v20 = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v22);
    }
  }

  else
  {
    sub_2191FD490(0, v9, v10, v11);
    sub_2186EC7E8(&qword_27CC17500, sub_2191FD490, &unk_219C65AC8);
    swift_allocError();
    *v16 = 0;
    return swift_willThrow();
  }
}

uint64_t OfflineFeedManifest.Group.encode(to:)(void *a1)
{
  v3 = v1;
  sub_218752C3C(0, &qword_27CC17230, sub_2191FC894, &type metadata for OfflineFeedManifest.Group.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191FC894();
  sub_219BF7B44();
  LOBYTE(v12) = 0;
  sub_219BDBD34();
  sub_2186EC7E8(&qword_280EE9CA0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for OfflineFeedManifest.Group(0);
    LOBYTE(v12) = 1;
    sub_219BF7834();
    LOBYTE(v12) = 2;
    sub_219BF77F4();
    v12 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186D0CEC(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    sub_21897A7C0();
    sub_219BF7834();
    *&v12 = *(v3 + v10[8]);
    v13 = 4;
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218753310(&unk_280E8EE00, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_219BF7834();
    *&v12 = *(v3 + v10[9]);
    v13 = 5;
    sub_219BF7834();
    *&v12 = *(v3 + v10[10]);
    v13 = 6;
    sub_219BF7834();
    *&v12 = *(v3 + v10[11]);
    v13 = 7;
    sub_219BF7834();
    *&v12 = *(v3 + v10[12]);
    v13 = 8;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2191F337C(unsigned __int8 a1)
{
  v1 = 0x4164657461657263;
  v2 = 0x4449656C7A7A7570;
  v3 = 0x7472416F69647561;
  if (a1 != 7)
  {
    v3 = 0x4449657069636572;
  }

  if (a1 != 6)
  {
    v2 = v3;
  }

  v4 = 0x49656C6369747261;
  if (a1 != 4)
  {
    v4 = 0x7344496575737369;
  }

  if (a1 <= 5u)
  {
    v2 = v4;
  }

  v5 = 0x65644970756F7267;
  if (a1 != 2)
  {
    v5 = 0x6E656449646E696BLL;
  }

  if (a1)
  {
    v1 = 0x446873696C627570;
  }

  if (a1 > 1u)
  {
    v1 = v5;
  }

  if (a1 <= 3u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2191F3508@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2191FD08C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2191F3538@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2191F337C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2191F3580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2191FD08C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2191F35A8(uint64_t a1)
{
  v2 = sub_2191FC894();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2191F35E4(uint64_t a1)
{
  v2 = sub_2191FC894();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s7NewsUI219OfflineFeedManifestV5GroupV9createdAt10Foundation4DateVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BDBD34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2191F36D8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_219BDBD34();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double OfflineFeedManifest.groups.getter()
{
  type metadata accessor for OfflineFeedManifest(0);

  return result;
}

double OfflineFeedManifest.assetURLs.getter()
{
  type metadata accessor for OfflineFeedManifest(0);

  return result;
}

double sub_2191F37DC(void (*a1)(void))
{
  a1(0);

  return result;
}

double sub_2191F3830(void (*a1)(void))
{
  a1(0);

  return result;
}

double sub_2191F3884(void (*a1)(void))
{
  a1(0);

  return result;
}

double sub_2191F38D8(void (*a1)(void))
{
  a1(0);

  return result;
}

double sub_2191F392C(void (*a1)(void))
{
  a1(0);

  return result;
}

id OfflineFeedManifest.contentManifest.getter()
{
  type metadata accessor for OfflineFeedManifest(0);
  v0 = objc_allocWithZone(MEMORY[0x277D30F10]);
  sub_219BDB954();
  v1 = sub_219BF5904();
  v2 = sub_219BF5904();
  v3 = sub_219BF5904();
  v4 = sub_219BF5904();
  v5 = sub_219BF5904();
  v6 = [v0 initWithAssetURLs:v1 assetWrappingKeyIDs:v2 recordIDs:v3 avAssetIDs:v4 avAssetKeyIDs:v5];

  return v6;
}

void OfflineFeedManifest.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OfflineFeedManifest(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v146 = v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v147 = v141 - v8;
  MEMORY[0x28223BE20](v9);
  v148 = v141 - v10;
  MEMORY[0x28223BE20](v11);
  v149 = v141 - v12;
  MEMORY[0x28223BE20](v13);
  v150 = v141 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v141 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v141 - v19;
  sub_219BDBD24();
  sub_219BDBD24();
  v21 = *(a1 + 16);
  v144 = v4;
  v145 = a2;
  v22 = *(v4 + 24);
  v152 = v21;
  v142 = v5;
  v143 = a1;
  if (!v21)
  {
    v38 = MEMORY[0x277D84F90];
    *(a2 + v22) = MEMORY[0x277D84F90];
LABEL_35:
    v154 = v38;
    sub_2186EBBE0(0);
    v50 = v49;
    v51 = sub_219BDB954();
    v52 = sub_2186EC7E8(&qword_280E8F6C0, sub_2186EBBE0, MEMORY[0x277D83970]);
    v53 = sub_2186EC7E8(&unk_280EE9D30, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    v141[2] = v52;
    v141[3] = v50;
    v153 = v51;
    v141[1] = v53;
    v54 = sub_219BF56E4();
    v151 = 0;

    v55 = v144;
    *(v145 + v144[7]) = v54;
    v56 = v152;
    if (v152)
    {
      v57 = v55[8];
      v58 = v143 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
      v59 = *(v142 + 72);
      v60 = MEMORY[0x277D84F90];
      while (1)
      {
        v61 = v150;
        sub_218753520(v58, v150, type metadata accessor for OfflineFeedManifest);
        v62 = *(v61 + v57);

        sub_218753588(v61, type metadata accessor for OfflineFeedManifest);
        v63 = *(v62 + 16);
        v64 = *(v60 + 2);
        v65 = v64 + v63;
        if (__OFADD__(v64, v63))
        {
          goto LABEL_129;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v65 <= *(v60 + 3) >> 1)
        {
          if (!*(v62 + 16))
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v64 <= v65)
          {
            v67 = v64 + v63;
          }

          else
          {
            v67 = v64;
          }

          v60 = sub_2191F95C4(isUniquelyReferenced_nonNull_native, v67, 1, v60);
          if (!*(v62 + 16))
          {
LABEL_37:

            if (v63)
            {
              goto LABEL_130;
            }

            goto LABEL_38;
          }
        }

        if ((*(v60 + 3) >> 1) - *(v60 + 2) < v63)
        {
          goto LABEL_141;
        }

        swift_arrayInitWithCopy();

        if (v63)
        {
          v68 = *(v60 + 2);
          v34 = __OFADD__(v68, v63);
          v69 = v68 + v63;
          if (v34)
          {
            goto LABEL_148;
          }

          *(v60 + 2) = v69;
        }

LABEL_38:
        v58 += v59;
        if (!--v56)
        {
          goto LABEL_53;
        }
      }
    }

    v60 = MEMORY[0x277D84F90];
LABEL_53:
    v154 = v60;
    v70 = MEMORY[0x277CC9318];
    sub_2186D0CEC(0, &qword_280E8F6A8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    sub_2191FC7DC(&qword_280E8F690, &qword_280E8F6A8, v70);
    sub_2191FC840();
    v71 = v151;
    v72 = sub_219BF56E4();
    v151 = v71;

    v73 = v144;
    *(v145 + v144[8]) = v72;
    v74 = MEMORY[0x277D84F90];
    v75 = v152;
    if (v152)
    {
      v76 = v73[9];
      v77 = v143 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
      v78 = *(v142 + 72);
      v79 = MEMORY[0x277D84F90];
      while (1)
      {
        v80 = v149;
        sub_218753520(v77, v149, type metadata accessor for OfflineFeedManifest);
        v81 = *(v80 + v76);

        sub_218753588(v80, type metadata accessor for OfflineFeedManifest);
        v82 = *(v81 + 16);
        v83 = *(v79 + 2);
        v84 = v83 + v82;
        if (__OFADD__(v83, v82))
        {
          goto LABEL_131;
        }

        v85 = swift_isUniquelyReferenced_nonNull_native();
        if (v85 && v84 <= *(v79 + 3) >> 1)
        {
          if (!*(v81 + 16))
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v83 <= v84)
          {
            v86 = v83 + v82;
          }

          else
          {
            v86 = v83;
          }

          v79 = sub_218840D24(v85, v86, 1, v79);
          if (!*(v81 + 16))
          {
LABEL_55:

            if (v82)
            {
              goto LABEL_132;
            }

            goto LABEL_56;
          }
        }

        if ((*(v79 + 3) >> 1) - *(v79 + 2) < v82)
        {
          goto LABEL_142;
        }

        swift_arrayInitWithCopy();

        if (v82)
        {
          v87 = *(v79 + 2);
          v34 = __OFADD__(v87, v82);
          v88 = v87 + v82;
          if (v34)
          {
            goto LABEL_149;
          }

          *(v79 + 2) = v88;
        }

LABEL_56:
        v77 += v78;
        if (!--v75)
        {
          goto LABEL_71;
        }
      }
    }

    v79 = MEMORY[0x277D84F90];
LABEL_71:
    v154 = v79;
    v89 = MEMORY[0x277D837D0];
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v91 = v90;
    v92 = sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v89);
    v93 = v151;
    v94 = sub_219BF56E4();

    v96 = v144;
    v95 = v145;
    *(v145 + v144[9]) = v94;
    v97 = v152;
    if (v152)
    {
      v149 = v93;
      v150 = v92;
      v151 = v91;
      v98 = v96[10];
      v99 = v143 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
      v100 = *(v142 + 72);
      v101 = MEMORY[0x277D84F90];
      v102 = v99;
      while (1)
      {
        v103 = v148;
        sub_218753520(v102, v148, type metadata accessor for OfflineFeedManifest);
        v104 = *(v103 + v98);

        sub_218753588(v103, type metadata accessor for OfflineFeedManifest);
        v105 = *(v104 + 16);
        v106 = *(v101 + 2);
        v107 = v106 + v105;
        if (__OFADD__(v106, v105))
        {
          goto LABEL_133;
        }

        v108 = swift_isUniquelyReferenced_nonNull_native();
        if (v108 && v107 <= *(v101 + 3) >> 1)
        {
          if (*(v104 + 16))
          {
            goto LABEL_84;
          }
        }

        else
        {
          if (v106 <= v107)
          {
            v109 = v106 + v105;
          }

          else
          {
            v109 = v106;
          }

          v101 = sub_218840D24(v108, v109, 1, v101);
          if (*(v104 + 16))
          {
LABEL_84:
            if ((*(v101 + 3) >> 1) - *(v101 + 2) < v105)
            {
              goto LABEL_143;
            }

            swift_arrayInitWithCopy();

            if (v105)
            {
              v110 = *(v101 + 2);
              v34 = __OFADD__(v110, v105);
              v111 = v110 + v105;
              if (v34)
              {
                goto LABEL_150;
              }

              *(v101 + 2) = v111;
            }

            goto LABEL_74;
          }
        }

        if (v105)
        {
          goto LABEL_134;
        }

LABEL_74:
        v102 += v100;
        if (!--v97)
        {
          v154 = v101;
          v93 = v149;
          v112 = sub_219BF56E4();

          v113 = v144;
          *(v145 + v144[10]) = v112;
          v114 = v113[11];
          v74 = MEMORY[0x277D84F90];
          v115 = v152;
          while (1)
          {
            v116 = v147;
            sub_218753520(v99, v147, type metadata accessor for OfflineFeedManifest);
            v117 = *(v116 + v114);

            sub_218753588(v116, type metadata accessor for OfflineFeedManifest);
            v118 = *(v117 + 16);
            v119 = *(v74 + 2);
            v120 = v119 + v118;
            if (__OFADD__(v119, v118))
            {
              goto LABEL_135;
            }

            v121 = swift_isUniquelyReferenced_nonNull_native();
            if (v121 && v120 <= *(v74 + 3) >> 1)
            {
              if (*(v117 + 16))
              {
                goto LABEL_100;
              }
            }

            else
            {
              if (v119 <= v120)
              {
                v122 = v119 + v118;
              }

              else
              {
                v122 = v119;
              }

              v74 = sub_218840D24(v121, v122, 1, v74);
              if (*(v117 + 16))
              {
LABEL_100:
                if ((*(v74 + 3) >> 1) - *(v74 + 2) < v118)
                {
                  goto LABEL_144;
                }

                swift_arrayInitWithCopy();

                if (v118)
                {
                  v123 = *(v74 + 2);
                  v34 = __OFADD__(v123, v118);
                  v124 = v123 + v118;
                  if (v34)
                  {
                    goto LABEL_151;
                  }

                  *(v74 + 2) = v124;
                }

                goto LABEL_90;
              }
            }

            if (v118)
            {
              goto LABEL_136;
            }

LABEL_90:
            v99 += v100;
            if (!--v115)
            {
              v96 = v144;
              v95 = v145;
              v97 = v152;
              goto LABEL_106;
            }
          }
        }
      }
    }

    v154 = v74;
    v125 = sub_219BF56E4();

    *(v95 + v96[10]) = v125;
LABEL_106:
    v154 = v74;
    v126 = sub_219BF56E4();
    v151 = v93;

    *(v95 + v96[11]) = v126;
    if (!v97)
    {
      v130 = MEMORY[0x277D84F90];
LABEL_124:

      v154 = v130;
      v140 = sub_219BF56E4();

      *(v145 + v144[12]) = v140;
      return;
    }

    v127 = v96[12];
    v128 = v143 + ((*(v142 + 80) + 32) & ~*(v142 + 80));
    v129 = *(v142 + 72);
    v130 = MEMORY[0x277D84F90];
    while (1)
    {
      v131 = v146;
      sub_218753520(v128, v146, type metadata accessor for OfflineFeedManifest);
      v132 = *(v131 + v127);

      sub_218753588(v131, type metadata accessor for OfflineFeedManifest);
      v133 = *(v132 + 16);
      v134 = *(v130 + 2);
      v135 = v134 + v133;
      if (__OFADD__(v134, v133))
      {
        goto LABEL_137;
      }

      v136 = swift_isUniquelyReferenced_nonNull_native();
      if (v136 && v135 <= *(v130 + 3) >> 1)
      {
        if (!*(v132 + 16))
        {
          goto LABEL_108;
        }
      }

      else
      {
        if (v134 <= v135)
        {
          v137 = v134 + v133;
        }

        else
        {
          v137 = v134;
        }

        v130 = sub_218737B64(v136, v137, 1, v130, &unk_280E8C1A0, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
        if (!*(v132 + 16))
        {
LABEL_108:

          if (v133)
          {
            goto LABEL_138;
          }

          goto LABEL_109;
        }
      }

      if ((*(v130 + 3) >> 1) - *(v130 + 2) < v133)
      {
        goto LABEL_145;
      }

      swift_arrayInitWithCopy();

      if (v133)
      {
        v138 = *(v130 + 2);
        v34 = __OFADD__(v138, v133);
        v139 = v138 + v133;
        if (v34)
        {
          goto LABEL_152;
        }

        *(v130 + 2) = v139;
      }

LABEL_109:
      v128 += v129;
      if (!--v152)
      {
        goto LABEL_124;
      }
    }
  }

  v151 = v22;
  v23 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v153 = *(v5 + 72);
  v24 = MEMORY[0x277D84F90];
  v25 = v23;
  while (1)
  {
    sub_218753520(v25, v20, type metadata accessor for OfflineFeedManifest);
    v26 = *&v20[v151];

    sub_218753588(v20, type metadata accessor for OfflineFeedManifest);
    v27 = *(v26 + 16);
    v28 = v24[2];
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      break;
    }

    v30 = swift_isUniquelyReferenced_nonNull_native();
    if (v30 && v29 <= v24[3] >> 1)
    {
      if (*(v26 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v28 <= v29)
      {
        v31 = v28 + v27;
      }

      else
      {
        v31 = v28;
      }

      v24 = sub_218737B64(v30, v31, 1, v24, &qword_280E8BB60, type metadata accessor for OfflineFeedManifest.Group, type metadata accessor for OfflineFeedManifest.Group);
      if (*(v26 + 16))
      {
LABEL_14:
        v32 = (v24[3] >> 1) - v24[2];
        type metadata accessor for OfflineFeedManifest.Group(0);
        if (v32 < v27)
        {
          goto LABEL_139;
        }

        swift_arrayInitWithCopy();

        if (v27)
        {
          v33 = v24[2];
          v34 = __OFADD__(v33, v27);
          v35 = v33 + v27;
          if (v34)
          {
            goto LABEL_146;
          }

          v24[2] = v35;
        }

        goto LABEL_4;
      }
    }

    if (v27)
    {
      goto LABEL_126;
    }

LABEL_4:
    v25 += v153;
    if (!--v21)
    {
      v36 = v144;
      *(v145 + v144[6]) = v24;
      v37 = v36[7];
      v38 = MEMORY[0x277D84F90];
      v39 = v152;
      while (1)
      {
        sub_218753520(v23, v17, type metadata accessor for OfflineFeedManifest);
        v40 = *&v17[v37];

        sub_218753588(v17, type metadata accessor for OfflineFeedManifest);
        v41 = *(v40 + 16);
        v42 = *(v38 + 2);
        v43 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          goto LABEL_127;
        }

        v44 = swift_isUniquelyReferenced_nonNull_native();
        if (v44 && v43 <= *(v38 + 3) >> 1)
        {
          if (!*(v40 + 16))
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v42 <= v43)
          {
            v45 = v42 + v41;
          }

          else
          {
            v45 = v42;
          }

          v38 = sub_218737B64(v44, v45, 1, v38, &unk_280E8C1A0, MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
          if (!*(v40 + 16))
          {
LABEL_19:

            if (v41)
            {
              goto LABEL_128;
            }

            goto LABEL_20;
          }
        }

        v46 = (*(v38 + 3) >> 1) - *(v38 + 2);
        sub_219BDB954();
        if (v46 < v41)
        {
          goto LABEL_140;
        }

        swift_arrayInitWithCopy();

        if (v41)
        {
          v47 = *(v38 + 2);
          v34 = __OFADD__(v47, v41);
          v48 = v47 + v41;
          if (v34)
          {
            goto LABEL_147;
          }

          *(v38 + 2) = v48;
        }

LABEL_20:
        v23 += v153;
        if (!--v39)
        {
          goto LABEL_35;
        }
      }
    }
  }

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
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

uint64_t OfflineFeedManifest.merging(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_219BDBD34();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v61 - v8;
  sub_2186DD9FC(0, &qword_27CC17238, type metadata accessor for OfflineFeedManifest.Group, MEMORY[0x277D84220]);
  MEMORY[0x28223BE20](v9 - 8);
  v78 = (&v61 - v10);
  v11 = type metadata accessor for OfflineFeedManifest.Group(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OfflineFeedManifest(0);
  v70 = a2;
  v71 = v15;
  v16 = *(v15 + 24);
  v69 = v2;
  v17 = *(v2 + v16);
  v76 = a1;
  v18 = *(a1 + v16);
  v80 = *(v18 + 16);
  if (!v80)
  {

    goto LABEL_27;
  }

  v77 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v79 = (v18 + v77);
  v19 = *(v12 + 72);

  v20 = 0;
  while (2)
  {
    sub_218753520(v79 + v19 * v20, v14, type metadata accessor for OfflineFeedManifest.Group);
    v21 = v17[2];
    if (!v21)
    {
      goto LABEL_7;
    }

    v22 = 0;
    v23 = -1;
    v24 = v77;
    while (1)
    {
      v25 = *(v11 + 28);
      v26 = &v14[v25];
      v27 = *&v14[v25 + 8];
      v28 = (v17 + v24 + v25 + 8);
      v29 = *v28;
      if (v27)
      {
        break;
      }

      if (!v29)
      {
        goto LABEL_19;
      }

LABEL_11:
      ++v22;
      v24 += v19;
      --v23;
      if (v21 == v22)
      {
        goto LABEL_7;
      }
    }

    if (!v29)
    {
      goto LABEL_11;
    }

    v30 = *v26 == *(v28 - 1) && v27 == v29;
    if (!v30 && (sub_219BF78F4() & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2194ABA74(v17);
      v17 = result;
    }

    v32 = v17[2];
    if (v32 <= v22)
    {
      __break(1u);
    }

    else
    {
      v33 = v17 + v24;
      sub_218753588(v33, type metadata accessor for OfflineFeedManifest.Group);
      if (v19 > 0 || v33 >= v33 + v19 + v19 * (v32 + v23))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v19)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v17[2] = v32 - 1;
      sub_218753520(v14, v78, type metadata accessor for OfflineFeedManifest.Group);
      v82 = v17;
      if (v32 > v17[3] >> 1)
      {
        v17 = sub_218737B64(1, v32, 1, v17, &qword_280E8BB60, type metadata accessor for OfflineFeedManifest.Group, type metadata accessor for OfflineFeedManifest.Group);
        v82 = v17;
      }

      sub_2194AB7B0(v22, v22, 1, v78);
LABEL_7:
      v20 = (v20 + 1);
      sub_218753588(v14, type metadata accessor for OfflineFeedManifest.Group);
      if (v20 != v80)
      {
        continue;
      }

LABEL_27:
      sub_2186EC7E8(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v34 = v75;
      v35 = v76;
      v36 = v69;
      v37 = sub_219BF5334();
      v38 = *(v74 + 16);
      if (v37)
      {
        v39 = v35;
      }

      else
      {
        v39 = v36;
      }

      v38(v72, v39, v34);
      v40 = *(v71 + 20);
      v41 = v36 + v40;
      v42 = v35 + v40;
      if (sub_219BF5334())
      {
        v43 = v42;
      }

      else
      {
        v43 = v41;
      }

      v38(v73, v43, v34);
      v44 = v71;
      v81 = *(v36 + *(v71 + 28));

      v80 = MEMORY[0x277CC9260];
      v79 = MEMORY[0x277CC9260];
      v78 = MEMORY[0x277CC9260];
      sub_21872D364(v45, &unk_280E8C1A0, MEMORY[0x277CC9260], MEMORY[0x277CC9260], MEMORY[0x277CC9260]);
      sub_2186EBBE0(0);
      v68 = v46;
      v67 = sub_219BDB954();
      v66 = sub_2186EC7E8(&qword_280E8F6C0, sub_2186EBBE0, MEMORY[0x277D83970]);
      v65 = sub_2186EC7E8(&unk_280EE9D30, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v77 = sub_219BF56E4();

      v47 = v44;
      v81 = *(v36 + v44[8]);

      sub_2191EEF10(v48);
      v49 = MEMORY[0x277CC9318];
      v50 = MEMORY[0x277D83940];
      sub_2186D0CEC(0, &qword_280E8F6A8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
      sub_2191FC7DC(&qword_280E8F690, &qword_280E8F6A8, v49);
      sub_2191FC840();
      v64 = sub_219BF56E4();

      v81 = *(v36 + v44[9]);

      sub_2191ED3E8(v51);
      v52 = MEMORY[0x277D837D0];
      sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], v50);
      sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v52);
      v63 = sub_219BF56E4();

      v81 = *(v36 + v47[10]);

      sub_2191ED3E8(v53);
      v62 = sub_219BF56E4();

      v81 = *(v36 + v47[11]);

      sub_2191ED3E8(v54);
      v61 = sub_219BF56E4();

      v81 = *(v36 + v47[12]);

      sub_21872D364(v55, &unk_280E8C1A0, v80, v79, v78);
      v56 = sub_219BF56E4();

      v57 = v75;
      v58 = *(v74 + 32);
      v59 = v70;
      v58(v70, v72, v75);
      result = (v58)(v59 + v47[5], v73, v57);
      *(v59 + v47[6]) = v17;
      *(v59 + v47[7]) = v77;
      v60 = v63;
      *(v59 + v47[8]) = v64;
      *(v59 + v47[9]) = v60;
      *(v59 + v47[10]) = v62;
      *(v59 + v47[11]) = v61;
      *(v59 + v47[12]) = v56;
    }

    return result;
  }
}

uint64_t OfflineFeedManifest.encode(to:)(void *a1)
{
  v3 = v1;
  sub_218752C3C(0, &qword_280E8C630, sub_218752CA4, &type metadata for OfflineFeedManifest.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218752CA4();
  sub_219BF7B44();
  LOBYTE(v16) = 0;
  sub_219BDBD34();
  sub_2186EC7E8(&qword_280EE9CA0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for OfflineFeedManifest(0);
    LOBYTE(v16) = 1;
    sub_219BF7834();
    v16 = *(v3 + v10[6]);
    v15 = 2;
    sub_2186EBA94(0);
    sub_218752FB0(&unk_280E8F288, sub_2186EBA94, sub_2191FCA2C, MEMORY[0x277D83948]);
    sub_219BF7834();
    v16 = *(v3 + v10[7]);
    v15 = 3;
    sub_2186EBBE0(0);
    sub_218752FB0(&qword_280E8F6C8, sub_2186EBBE0, sub_2191FCA60, MEMORY[0x277D83948]);
    sub_219BF7834();
    v16 = *(v3 + v10[8]);
    v15 = 4;
    sub_2186D0CEC(0, &qword_280E8F6A8, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
    sub_218753120(&unk_280E8F698, sub_218744514, MEMORY[0x277D83948]);
    sub_219BF7834();
    v16 = *(v3 + v10[9]);
    v15 = 5;
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v12 = v11;
    v14[1] = sub_218753310(&unk_280E8EE00, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    v14[2] = v12;
    sub_219BF7834();
    v16 = *(v3 + v10[10]);
    v15 = 6;
    sub_219BF7834();
    v16 = *(v3 + v10[11]);
    v15 = 7;
    sub_219BF7834();
    v16 = *(v3 + v10[12]);
    v15 = 8;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2191F58F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v5 = *v3;
  sub_219BF7AA4();
  a3(v7, v5);
  return sub_219BF7AE4();
}

uint64_t sub_2191F5960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_219BF7AA4();
  a4(v8, v6);
  return sub_219BF7AE4();
}

unint64_t sub_2191F59AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2191FD0D8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2191F59DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_218752DC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2191F5A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2191FD0D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2191F5A30(uint64_t a1)
{
  v2 = sub_218752CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2191F5A6C(uint64_t a1)
{
  v2 = sub_218752CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

void static OfflineFeedManifest.+ infix(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2186DD9FC(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v6 = *(type metadata accessor for OfflineFeedManifest(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = v9 + v8;
  sub_218753520(a1, v10, type metadata accessor for OfflineFeedManifest);
  sub_218753520(a2, v10 + v7, type metadata accessor for OfflineFeedManifest);

  OfflineFeedManifest.init(_:)(v9, a3);
}

uint64_t static OfflineFeedManifest.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OfflineFeedManifest(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OfflineFeedManifest.init(_:)(a2, v9);
  sub_2186DD9FC(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v10 = *(v7 + 72);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  v13 = v12 + v11;
  sub_218753520(a1, v13, type metadata accessor for OfflineFeedManifest);
  sub_218753520(v9, v13 + v10, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(v12, a3);
  return sub_218753588(v9, type metadata accessor for OfflineFeedManifest);
}

void static OfflineFeedManifest.+ infix(_:_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2186DD9FC(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v4 = *(type metadata accessor for OfflineFeedManifest(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_218753520(a1, v6 + v5, type metadata accessor for OfflineFeedManifest);

  sub_21872D364(v7, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, type metadata accessor for OfflineFeedManifest, type metadata accessor for OfflineFeedManifest);

  OfflineFeedManifest.init(_:)(v6, a2);
}

uint64_t static OfflineFeedManifest.+= infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfflineFeedManifest(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187544D0(a1, v7, type metadata accessor for OfflineFeedManifest);
  sub_2186DD9FC(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v8 = *(v5 + 72);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  v11 = v10 + v9;
  sub_218753520(v7, v11, type metadata accessor for OfflineFeedManifest);
  sub_218753520(a2, v11 + v8, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(v10, a1);
  return sub_218753588(v7, type metadata accessor for OfflineFeedManifest);
}

uint64_t static OfflineFeedManifest.+= infix(_:_:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for OfflineFeedManifest(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  sub_2187544D0(a1, &v16 - v9, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(a2, v7);
  sub_2186DD9FC(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v11 = *(v5 + 72);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09EC0;
  v14 = v13 + v12;
  sub_218753520(v10, v14, type metadata accessor for OfflineFeedManifest);
  sub_218753520(v7, v14 + v11, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(v13, a1);
  sub_218753588(v7, type metadata accessor for OfflineFeedManifest);
  return sub_218753588(v10, type metadata accessor for OfflineFeedManifest);
}

uint64_t OfflineFeedManifest.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_218C71780(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C655B0;
  *(inited + 32) = 0x7370756F7267;
  *(inited + 40) = 0xE600000000000000;
  v4 = type metadata accessor for OfflineFeedManifest(0);
  v5 = MEMORY[0x277D83B88];
  *(inited + 48) = *(*(v1 + v4[6]) + 16);
  *(inited + 72) = v5;
  strcpy((inited + 80), "rootArticleIDs");
  *(inited + 95) = -18;
  OfflineFeedManifest.rootArticleIDs.getter();
  v7 = *(v6 + 16);

  *(inited + 96) = v7;
  *(inited + 120) = v5;
  strcpy((inited + 128), "rootIssueIDs");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  OfflineFeedManifest.rootIssueIDs.getter();
  v9 = *(v8 + 16);

  *(inited + 144) = v9;
  *(inited + 168) = v5;
  strcpy((inited + 176), "rootPuzzleIDs");
  *(inited + 190) = -4864;
  OfflineFeedManifest.rootPuzzleIDs.getter();
  v11 = *(v10 + 16);

  *(inited + 192) = v11;
  *(inited + 216) = v5;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x8000000219D10B30;
  OfflineFeedManifest.rootAudioArticleIDs.getter();
  v13 = *(v12 + 16);

  *(inited + 240) = v13;
  *(inited + 264) = v5;
  *(inited + 272) = 0x4C52557465737361;
  *(inited + 280) = 0xE900000000000073;
  *(inited + 288) = *(*(v1 + v4[7]) + 16);
  *(inited + 312) = v5;
  *(inited + 320) = 0xD000000000000013;
  *(inited + 328) = 0x8000000219CD7E10;
  *(inited + 336) = *(*(v1 + v4[8]) + 16);
  *(inited + 360) = v5;
  *(inited + 368) = 0x444964726F636572;
  *(inited + 376) = 0xE900000000000073;
  *(inited + 384) = *(*(v1 + v4[9]) + 16);
  *(inited + 408) = v5;
  *(inited + 416) = 0x4974657373417661;
  *(inited + 424) = 0xEA00000000007344;
  *(inited + 432) = *(*(v1 + v4[10]) + 16);
  *(inited + 456) = v5;
  strcpy((inited + 464), "avAssetKeyIDs");
  *(inited + 478) = -4864;
  *(inited + 480) = *(*(v1 + v4[11]) + 16);
  *(inited + 504) = v5;
  strcpy((inited + 512), "avAssetKeyURIs");
  *(inited + 527) = -18;
  v14 = *(*(v1 + v4[12]) + 16);
  *(inited + 552) = v5;
  *(inited + 528) = v14;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218C3F13C(0, &qword_280E8F6E0, MEMORY[0x277D84F70] + 8);
  swift_arrayDestroy();
  sub_2186DD9FC(0, &qword_280EE7A10, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CC20]);
  a1[3] = v15;
  a1[4] = sub_2191FCB90();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2191F65AC(uint64_t a1)
{
  sub_2186EC7E8(&qword_27CC174D0, type metadata accessor for OfflineFeedManifest, &protocol conformance descriptor for OfflineFeedManifest);

  return sub_219BE2324();
}

uint64_t sub_2191F6618(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186DD9FC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2191F6698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186DD9FC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_2191F67A4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &qword_280E8B588, sub_218788800, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_218788800();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191F68F0(void *result, int64_t a2, char a3, void *a4)
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

  sub_2191FD808(0);
  sub_2191FD898(0, &qword_27CC0FAE0, sub_218972EAC, sub_218972F00, &type metadata for SportsFavorite);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
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
  sub_2191FD898(0, &qword_27CC0FAE0, sub_218972EAC, sub_218972F00, &type metadata for SportsFavorite);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_2191F6B60(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186DD9FC(0, &unk_280E8B650, sub_218C82728, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

char *sub_2191F6CE4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8BB68, &type metadata for EditorialAttributes, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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

void *sub_2191F6ED4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2191FD23C(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_218C3F13C(0, &qword_280E8F700, MEMORY[0x277D83B88]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191F7194(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &qword_27CC172C0, sub_2191FD124, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2191FD124(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F72E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8B660, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_2191F7528(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size_0(v15);
    v17 = v16 - 32;
    if (v16 < 32)
    {
      v17 = v16 - 17;
    }

    v15[2] = v13;
    v15[3] = 2 * (v17 >> 4);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[2 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 16 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2186C709C(0, a6, a7, 0);
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_2191F7698(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC17480, &type metadata for PuzzleSettingsGroup, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F7890(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_27CC17270, MEMORY[0x277D849A8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_2191F7A28(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_218C3DA24(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2186CF8E0(0, &qword_27CC0DB40, &qword_27CC110D0, MEMORY[0x277D6DBE8], MEMORY[0x277D83D88]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191F7BD4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &unk_280E8B770, sub_218B6A62C, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_218B6A62C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191F7D78(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &unk_280E8B630, sub_218BADDF4, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_218BADDF4(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F7FC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8B590, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F8128(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8BAE8, &type metadata for MagazineFeedPoolIssue, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F82C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC172E0, &type metadata for FeedDescriptorReference, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191F86BC(void *result, int64_t a2, char a3, void *a4)
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

  sub_2191FD778(0);
  sub_2191FD898(0, &qword_280E90E40, sub_2189699BC, sub_218969A10, &type metadata for ContinuePlayingPuzzle);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
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
  sub_2191FD898(0, &qword_280E90E40, sub_2189699BC, sub_218969A10, &type metadata for ContinuePlayingPuzzle);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_2191F8960(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_27CC172F8, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 344);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[344 * v8])
    {
      memmove(v12, v13, 344 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F8B4C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191F8C94(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191F8DEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC17370, &type metadata for SearchResultItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 536);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[536 * v8])
    {
      memmove(v12, v13, 536 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F902C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_280E8BA00, &type metadata for SportsTopicClusteringService.SportsFeedTagFeedCluster, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F9198(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_280E8BB90, &type metadata for SportsTopicCluster, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F9394(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191F95C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_27CC17518, MEMORY[0x277CC9318], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F9844(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC17508, &type metadata for RecipeCatalogFilterDurationItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F9AA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8BCB0, &type metadata for IssueModel, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191F9C88(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 48);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[48 * v10])
    {
      memmove(v14, v15, 48 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191F9E70(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC0F2B0, &type metadata for FollowingTabGroupCompletionCoordinator, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191F9FF8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &qword_27CC0F558, sub_218C3F0C0, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_218C3F0C0(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191FA158(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_218C3FC70(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FA44C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191FA5D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_280E8BBE0, &type metadata for FeedLocalHeadline, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FA710(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8BA88, &type metadata for FollowingViewController.ActionModel, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FA8B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC0F408, &type metadata for MagazineGridModel.ItemModel, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[120 * v8])
    {
      memmove(v12, v13, 120 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191FAB28(void *result, int64_t a2, char a3, void *a4)
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

  sub_2191FD5EC(0);
  sub_2191FD158(0, &qword_280E91D70, &qword_280E8E810, 0x277D312B0, MEMORY[0x277D31FA8]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
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
  sub_2191FD158(0, &qword_280E91D70, &qword_280E8E810, 0x277D312B0, MEMORY[0x277D31FA8]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_2191FAEE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC17600, &type metadata for NewFollowTodayFeedGroupEmitterCursor.TagHeadlines, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FB00C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC173B0, &type metadata for MagazineGridModelActionMenuGroup, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191FB130(void *result, int64_t a2, char a3, void *a4)
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

  sub_2191FD928(0);
  sub_218752C3C(0, &qword_27CC162E8, sub_218DB6840, &type metadata for MagazineCategoriesPickerModel, MEMORY[0x277D6D3F0]);
  v11 = *(*(v10 - 8) + 72);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v13);
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
  sub_218752C3C(0, &qword_27CC162E8, sub_218DB6840, &type metadata for MagazineCategoriesPickerModel, MEMORY[0x277D6D3F0]);
  v16 = *(v15 - 8);
  if (v5)
  {
    if (v13 < a4 || (v17 = (*(v16 + 80) + 32) & ~*(v16 + 80), v13 + v17 >= a4 + v17 + *(v16 + 72) * v8))
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

char *sub_2191FB36C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC173B8, &type metadata for MyMagazinesLayoutSectionDescriptor.Supplement, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 80 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_2191FB578(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC0FAB8, &type metadata for ContinuePlayingPuzzle, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FB6D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186DD9FC(0, &qword_27CC174A0, type metadata accessor for NDDownloadOptions, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2191FB7FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC17458, &type metadata for TagHighlightsService.MockHighlightHeadline, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191FB950(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_2191FD6A4(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size_0(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 24);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[3 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 24 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2191FD6FC(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

char *sub_2191FBAB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC0F910, &type metadata for UserNotification.PuzzleStreakData.PuzzleStreak, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FBBF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_27CC17470, &type metadata for SubscriberAdSegment, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FBD5C(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191FBE80(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_27CC0F2D0, &type metadata for RecipeCatalogFilterSection, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191FBFB8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &qword_27CC174D8, sub_2191FD3E4, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2191FD3E4(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2191FC138(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_2186DD9FC(0, &unk_280E8B760, sub_218736660, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_218736660(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FC2AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &qword_280E8B9B8, &type metadata for HighlightsTagFeedGroupSection, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FC3E4(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_2191FC570(char *result, int64_t a2, char a3, char *a4)
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
    sub_2186D0CEC(0, &unk_280E8BD10, &type metadata for MagazineFeedPoolFeedItem, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2191FC6A8(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_2186D0CEC(0, a5, a6, MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_2191FC7DC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2186D0CEC(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2191FC840()
{
  result = qword_280EE9CD8;
  if (!qword_280EE9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE9CD8);
  }

  return result;
}

unint64_t sub_2191FC894()
{
  result = qword_27CC17228;
  if (!qword_27CC17228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17228);
  }

  return result;
}

uint64_t _s7NewsUI219OfflineFeedManifestV5GroupV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_219BDBC94() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OfflineFeedManifest.Group(0);
  if ((sub_219BDBC94() & 1) == 0)
  {
    return 0;
  }

  v5 = v4[6];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[7];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (sub_219BF78F4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if ((sub_219417FCC(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0 || (sub_219417FCC(*(a1 + v4[9]), *(a2 + v4[9])) & 1) == 0 || (sub_219417FCC(*(a1 + v4[10]), *(a2 + v4[10])) & 1) == 0 || (sub_219417FCC(*(a1 + v4[11]), *(a2 + v4[11])) & 1) == 0)
  {
    return 0;
  }

  v16 = v4[12];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);

  return sub_219417FCC(v17, v18);
}

uint64_t _s7NewsUI219OfflineFeedManifestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_219BDBC94() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OfflineFeedManifest(0);
  if ((sub_219BDBC94() & 1) == 0 || (sub_219419860(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0 || (sub_219419D18(*(a1 + v4[7]), *(a2 + v4[7])) & 1) == 0 || (sub_219419F58(*(a1 + v4[8]), *(a2 + v4[8])) & 1) == 0 || (sub_219417FCC(*(a1 + v4[9]), *(a2 + v4[9])) & 1) == 0 || (sub_219417FCC(*(a1 + v4[10]), *(a2 + v4[10])) & 1) == 0 || (sub_219417FCC(*(a1 + v4[11]), *(a2 + v4[11])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[12];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_219419D18(v6, v7);
}

unint64_t sub_2191FCB90()
{
  result = qword_280EE7A18;
  if (!qword_280EE7A18)
  {
    sub_2186DD9FC(255, &qword_280EE7A10, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7A18);
  }

  return result;
}

unint64_t sub_2191FCCAC()
{
  result = qword_27CC17248;
  if (!qword_27CC17248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17248);
  }

  return result;
}

unint64_t sub_2191FCD04()
{
  result = qword_27CC17250;
  if (!qword_27CC17250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17250);
  }

  return result;
}

unint64_t sub_2191FCD5C()
{
  result = qword_27CC17258;
  if (!qword_27CC17258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17258);
  }

  return result;
}

unint64_t sub_2191FCDB4()
{
  result = qword_27CC17260;
  if (!qword_27CC17260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17260);
  }

  return result;
}

void sub_2191FCE08(uint64_t a1)
{
  if (!qword_27CC17280)
  {
    sub_2186C709C(255, &unk_27CC17288, MEMORY[0x277D6CD68], 0);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC17280);
    }
  }
}

uint64_t sub_2191FCE74(void x0_0, uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_219BF7214();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_218861260(result, 1);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_219BF4044();
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2191FCF78(void x0_0, uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 >> 1;
  v7 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    if (!(*v4 >> 62))
    {
      v8 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = __OFADD__(v8, v7);
      result = v8 + v7;
      if (!v9)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  v14 = sub_219BF7214();
  v9 = __OFADD__(v14, v7);
  result = v14 + v7;
  if (v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_218861260(result, 1);
  v11 = *v4;
  if (v6 == v5)
  {
    if (v7 <= 0)
    {
LABEL_11:
      *v4 = v11;
      return result;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
  result = swift_arrayInitWithCopy();
  if (v7 <= 0)
  {
    goto LABEL_11;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v7);
  v13 = v12 + v7;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_2191FD08C(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2191FD0D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

void sub_2191FD158(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C6148(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2191FD23C(uint64_t a1)
{
  if (!qword_280E8B6B8)
  {
    sub_218C3F13C(255, &qword_280E8F700, MEMORY[0x277D83B88]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8B6B8);
    }
  }
}

void sub_2191FD2A4(uint64_t a1)
{
  if (!qword_27CC17328)
  {
    sub_2186C709C(255, &unk_27CC17330, MEMORY[0x277D31838], 0);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC17328);
    }
  }
}

uint64_t sub_2191FD344(uint64_t a1)
{
  sub_2191FD9B8(0, &qword_27CC173D0, sub_218B7E0BC, sub_2191FD310, MEMORY[0x277D84310]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2191FD3E4(uint64_t a1)
{
  if (!qword_27CC174E0)
  {
    sub_2186D6710(255, &qword_280E8E130, &protocolRef_FCPuzzleTypeProviding);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC174E0);
    }
  }
}

void sub_2191FD490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27CC174F8)
  {
    v4 = _s6ErrorsOMa_0(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27CC174F8);
    }
  }
}

void sub_2191FD540(uint64_t a1)
{
  if (!qword_280EE5BD0)
  {
    sub_2191FD9B8(255, &qword_280EE5BB0, type metadata accessor for MagazineFeedModel, sub_2191FD208, MEMORY[0x277D6D3F0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE5BD0);
    }
  }
}

void sub_2191FD5EC(uint64_t a1)
{
  if (!qword_280E8B8F8)
  {
    sub_2191FD158(255, &qword_280E91D70, &qword_280E8E810, 0x277D312B0, MEMORY[0x277D31FA8]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8B8F8);
    }
  }
}

void sub_2191FD6A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2191FD6FC(255, a3, a4);
    v5 = sub_219BF78A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2191FD6FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_2186D6710(255, &qword_280E8E680, &protocolRef_FCTagProviding);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2191FD778(uint64_t a1)
{
  if (!qword_27CC0FAA8)
  {
    sub_2191FD898(255, &qword_280E90E40, sub_2189699BC, sub_218969A10, &type metadata for ContinuePlayingPuzzle);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0FAA8);
    }
  }
}

void sub_2191FD808(uint64_t a1)
{
  if (!qword_27CC0FAD8)
  {
    sub_2191FD898(255, &qword_27CC0FAE0, sub_218972EAC, sub_218972F00, &type metadata for SportsFavorite);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0FAD8);
    }
  }
}

void sub_2191FD898(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_219BF0854();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2191FD928(uint64_t a1)
{
  if (!qword_27CC17640)
  {
    sub_218752C3C(255, &qword_27CC162E8, sub_218DB6840, &type metadata for MagazineCategoriesPickerModel, MEMORY[0x277D6D3F0]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC17640);
    }
  }
}

void sub_2191FD9B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_2191FDA70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a1;
  v3 = sub_219BE15B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BDCD34();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE9C04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9934();
  v14 = (*(v11 + 88))(v13, v10);
  if (v14 == *MEMORY[0x277D6E830])
  {
    v15 = *MEMORY[0x277D2D868];
    v16 = sub_219BDF074();
    return (*(*(v16 - 8) + 104))(a2, v15, v16);
  }

  else if (v14 == *MEMORY[0x277D6E840] || v14 == *MEMORY[0x277D6E848] || v14 == *MEMORY[0x277D6E838])
  {
    sub_219BDD184();
    sub_2192009BC(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
    sub_219BDD0A4();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    (*(v4 + 104))(v6, *MEMORY[0x277D2F548], v3);
    sub_219BDD094();
    (*(v4 + 8))(v6, v3);
    v20 = sub_219BDCD14();

    (*(v7 + 8))(v9, v24);
    v21 = sub_219BDF074();
    if (v20)
    {
      v22 = MEMORY[0x277D2D820];
    }

    else
    {
      v22 = MEMORY[0x277D2D810];
    }

    return (*(*(v21 - 8) + 104))(a2, *v22, v21);
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_2191FDEB4(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_219BDBD34();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE1574();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE9C04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = sub_219BDF244();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE17A4();
  sub_219200A90(&qword_280EE7F30, MEMORY[0x277D2F910], MEMORY[0x277D2F908]);
  memset(v37, 0, sizeof(v37));
  v36 = a1;
  sub_219BDCCE4();
  sub_2192007A4(v37, sub_21880702C);
  sub_219BE8F44();
  (*(v10 + 32))(v12, v15, v9);
  v19 = (*(v10 + 88))(v12, v9);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D2F428], v30);
  }

  else
  {
    v20 = *(v6 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v8, *MEMORY[0x277D2F420], v30);
    }

    else
    {
      v20(v8, *MEMORY[0x277D2F430], v30);
      (*(v10 + 8))(v12, v9);
    }
  }

  sub_219BDF234();
  sub_2192009BC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v21 = sub_219BDCD44();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x277CEAD18], v21);
  sub_219200A90(&qword_280EE8810, MEMORY[0x277D2D9A8], MEMORY[0x277D2D9A0]);
  v25 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v18, v25);
  sub_219BDF524();
  sub_219BE8F64();
  sub_219200A90(&qword_280EE8760, MEMORY[0x277D2DB18], MEMORY[0x277D2DB00]);
  sub_219BDCC64();
  v26 = v35;
  v27 = *(v34 + 8);
  v27(v5, v35);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v27)(v5, v26);
}

uint64_t sub_2191FE4DC(uint64_t a1)
{
  sub_218985EAC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40500(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192008C8(0, &qword_27CC17688, MEMORY[0x277D6DA48]);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v12 + 8))(v14, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {

    sub_218EA89D8(0);
    v19 = &v9[*(v20 + 48)];
    return sub_2192007A4(v19, type metadata accessor for SharedWithYouFeedGapLocation);
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218EA8964(0);
    v17 = *(v16 + 48);
    v18 = sub_219BF1584();
    (*(*(v18 - 8) + 8))(&v9[v17], v18);
    v19 = v9;
    return sub_2192007A4(v19, type metadata accessor for SharedWithYouFeedGapLocation);
  }

  (*(v4 + 32))(v6, v9, v3);
  sub_219BF07D4();
  sub_2191FE7C8(a1, v22[1]);

  return (*(v4 + 8))(v6, v3);
}

double sub_2191FE7C8(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = a1;
  sub_2192008C8(0, &qword_27CC17688, MEMORY[0x277D6DA48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v17 - v8;
  v10 = v2[8];
  v17[1] = v2[9];
  __swift_project_boxed_opaque_existential_1(v2 + 5, v10);
  v11 = [*(a2 + 16) identifier];
  sub_219BF5414();

  v12 = sub_219BF4774();

  (*(v6 + 16))(v9, v19, v5);
  v13 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  (*(v6 + 32))(v14 + v13, v9, v5);
  v15 = v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v15 = v2;
  *(v15 + 8) = v12 & 1;

  sub_219BDD154();

  return result;
}

uint64_t sub_2191FE9CC()
{
  v0 = sub_219BDD0A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40500(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218EA8964(0);
      v9 = *(v8 + 48);
      v10 = sub_219BF1584();
      (*(*(v10 - 8) + 8))(&v6[v9], v10);
      v11 = type metadata accessor for SharedWithYouFeedGapLocation;
    }

    else
    {
      *v3 = 0x656E696C64616568;
      v3[1] = 0xE800000000000000;
      (*(v1 + 104))(v3, *MEMORY[0x277CEAE48], v0);
      sub_219BDD204();
      (*(v1 + 8))(v3, v0);
      v11 = type metadata accessor for SharedWithYouFeedModel;
    }

    v13 = v11;
    v14 = v6;
  }

  else
  {

    sub_218EA89D8(0);
    v13 = type metadata accessor for SharedWithYouFeedGapLocation;
    v14 = &v6[*(v12 + 48)];
  }

  return sub_2192007A4(v14, v13);
}

uint64_t sub_2191FEC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v148 = a5;
  v160 = a4;
  v165 = a3;
  v175 = a1;
  v131 = sub_219BDBD34();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_2192009BC(0, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v128 = &v113 - v9;
  v156 = sub_219BDF754();
  v163 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v119 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BE0444();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192009BC(0, &unk_27CC12F60, sub_218C40500, v7);
  MEMORY[0x28223BE20](v12 - 8);
  v121 = &v113 - v13;
  sub_218C40500(0);
  v162 = v14;
  v161 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v150 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192008C8(0, &qword_27CC104F8, MEMORY[0x277D6EC60]);
  v153 = v16;
  v152 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v149 = &v113 - v17;
  sub_218F93AE4(0);
  MEMORY[0x28223BE20](v18 - 8);
  v151 = &v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192008C8(0, &qword_27CC17660, MEMORY[0x277D6D710]);
  v155 = v20;
  v154 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v132 = &v113 - v21;
  v127 = sub_219BE09E4();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_219BDF104();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192009BC(0, &qword_280EE8330, MEMORY[0x277D2E738], v7);
  MEMORY[0x28223BE20](v24 - 8);
  v145 = &v113 - v25;
  v147 = sub_219BE0724();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v120 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_219BE1774();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v113 = &v113 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_219BDF8A4();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BEFBD4();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_219BDF1A4();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_219BDFCE4();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_219BE0D44();
  v159 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v157 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_219BDF0E4();
  v172 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v34 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = *(a2 + 16);
  ObjectType = swift_getObjectType();
  sub_219BF67F4();
  sub_2192009BC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v171 = v35;
  v36 = sub_219BDCD44();
  v37 = *(v36 - 8);
  v38 = *(v37 + 80);
  v39 = (v38 + 32) & ~v38;
  v173 = v39 + *(v37 + 72);
  v40 = swift_allocObject();
  v177 = xmmword_219C09BA0;
  *(v40 + 16) = xmmword_219C09BA0;
  v41 = *MEMORY[0x277CEAD18];
  v42 = *(v37 + 104);
  v42(v40 + v39, v41, v36);
  v174 = "thYouFeedTracker.swift";
  sub_219200A90(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  v43 = v170;
  sub_219BDCCC4();

  (*(v172 + 8))(v34, v43);
  v44 = v157;
  sub_219BF6834();
  v168 = v38;
  v45 = swift_allocObject();
  *(v45 + 16) = v177;
  v169 = v39;
  v170 = v36;
  v167 = v41;
  v172 = v37 + 104;
  v166 = v42;
  v42(v45 + v39, v41, v36);
  sub_219200A90(&qword_280EE8190, MEMORY[0x277D2ECA0], MEMORY[0x277D2EC98]);
  v46 = v158;
  sub_219BDCCC4();

  (*(v159 + 8))(v44, v46);
  sub_2192008C8(0, &qword_27CC17688, MEMORY[0x277D6DA48]);
  v48 = v47;
  v49 = sub_219200A90(&qword_27CC17690, type metadata accessor for SharedWithYouFeedModel, "A&\\h\"");
  v159 = v48;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v158 = v49;
  v51 = v133;
  sub_219BDFCD4();
  v52 = swift_allocObject();
  *(v52 + 16) = v177;
  v53 = v169;
  v54 = v166;
  v166(v52 + v169, v167, v170);
  sub_219200A90(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v55 = v135;
  sub_219BDCCC4();

  (*(v134 + 8))(v51, v55);
  v56 = v137;
  v57 = v136;
  v58 = v138;
  (*(v137 + 104))(v136, *MEMORY[0x277D329E0], v138);
  v59 = v139;
  sub_219BE02C4();
  (*(v56 + 8))(v57, v58);
  v60 = swift_allocObject();
  *(v60 + 16) = v177;
  v61 = v60 + v53;
  v62 = v167;
  v63 = v170;
  v54(v61, v167, v170);
  sub_219200A90(&unk_280EE8850, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v64 = v141;
  sub_219BDCCC4();

  (*(v140 + 8))(v59, v64);
  v65 = v142;
  sub_219BDF894();
  v66 = swift_allocObject();
  *(v66 + 16) = v177;
  v54(v66 + v169, v62, v63);
  sub_219200A90(&qword_280EE8640, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v67 = v144;
  sub_219BDCCC4();

  (*(v143 + 8))(v65, v67);
  v68 = [v176 scoreProfile];
  v69 = v163;
  v70 = v162;
  v71 = v161;
  v72 = v147;
  v73 = v146;
  if (v68)
  {
    v74 = v68;
    if ([v68 hasShadowScores])
    {
      [v74 shadowTabiScore];
      [v74 shadowAgedPersonalizationScore];
      v75 = v113;
      sub_219BE1764();
      v76 = swift_allocObject();
      *(v76 + 16) = v177;
      v166(v76 + v169, v167, v170);
      sub_219200A90(&unk_280EE7F40, MEMORY[0x277D2F8F0], MEMORY[0x277D2F8E8]);
      v77 = v70;
      v78 = v115;
      sub_219BDCCC4();

      v79 = v75;
      v69 = v163;
      v80 = v78;
      v70 = v77;
      (*(v114 + 8))(v79, v80);
    }

    else
    {
    }
  }

  v81 = v145;
  sub_219BF6824();
  if ((*(v73 + 48))(v81, 1, v72) == 1)
  {
    sub_219200A20(v81, &qword_280EE8330, MEMORY[0x277D2E738]);
  }

  else
  {
    v82 = v120;
    (*(v73 + 32))(v120, v81, v72);
    v83 = swift_allocObject();
    *(v83 + 16) = v177;
    v166(v83 + v169, v167, v170);
    sub_219200A90(&unk_27CC0DC50, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    (*(v73 + 8))(v82, v72);
  }

  v84 = [v176 sourceChannel];
  if (v84)
  {
    v160 = *(v160 + 32);
    v85 = v122;
    v157 = v84;
    sub_219BE01F4();
    v86 = swift_allocObject();
    *(v86 + 16) = v177;
    v88 = v169;
    v87 = v170;
    v89 = v167;
    v166(v86 + v169, v167, v170);
    sub_219200A90(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v90 = v124;
    sub_219BDCCC4();
    v71 = v161;

    (*(v123 + 8))(v85, v90);
    v91 = v125;
    sub_219BE01E4();
    v69 = v163;
    v92 = swift_allocObject();
    *(v92 + 16) = v177;
    v166(v92 + v88, v89, v87);
    sub_219200A90(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v93 = v127;
    v70 = v162;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v126 + 8))(v91, v93);
  }

  v94 = v149;
  sub_219BE7594();
  v95 = v150;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v71 + 8))(v95, v70);
  v96 = v151;
  v97 = v153;
  sub_219BEB244();
  v98 = v96;

  (*(v152 + 8))(v94, v97);
  v99 = v154;
  v100 = v155;
  if ((*(v154 + 48))(v98, 1, v155) != 1)
  {
    (*(v99 + 32))(v132, v98, v100);
    v102 = v121;
    sub_219BE7564();
    (*(v71 + 56))(v102, 0, 1, v70);
    v103 = sub_219BE6A34();
    result = sub_219200A20(v102, &unk_27CC12F60, sub_218C40500);
    v101 = v156;
    if (v103 >= 0xFFFFFFFF80000000)
    {
      if (v103 <= 0x7FFFFFFF)
      {
        v104 = v116;
        sub_219BE0434();
        v105 = swift_allocObject();
        *(v105 + 16) = v177;
        v166(v105 + v169, v167, v170);
        sub_219200A90(&unk_280EE8400, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
        v106 = v118;
        sub_219BDCCC4();

        (*(v117 + 8))(v104, v106);
        (*(v99 + 8))(v132, v100);
        goto LABEL_17;
      }

LABEL_24:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_2192007A4(v98, sub_218F93AE4);
  v101 = v156;
LABEL_17:
  v107 = v128;
  sub_219BF6804();
  if ((*(v69 + 48))(v107, 1, v101) == 1)
  {
    sub_219200A20(v107, &unk_280EE8690, MEMORY[0x277D2DD28]);
  }

  else
  {
    v108 = v119;
    (*(v69 + 32))(v119, v107, v101);
    v109 = swift_allocObject();
    *(v109 + 16) = v177;
    v166(v109 + v169, v167, v170);
    sub_219200A90(&unk_280EE86A0, MEMORY[0x277D2DD28], MEMORY[0x277D2DD20]);
    sub_219BDCCC4();

    (*(v69 + 8))(v108, v101);
  }

  sub_219BE0834();
  v110 = v129;
  sub_219BE75A4();
  sub_219200A90(&qword_280EE82C0, MEMORY[0x277D2E858], MEMORY[0x277D2E840]);
  sub_219BDCC64();
  v111 = *(v130 + 8);
  v112 = v131;
  v111(v110, v131);
  sub_219BE7574();
  v178[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v178);
  swift_unknownObjectRetain();
  sub_219BDF4C4();
  sub_219BDCC84();
  v111(v110, v112);
  return sub_2192007A4(v178, sub_21880702C);
}

uint64_t sub_2192007A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219200804(uint64_t a1)
{
  sub_2192008C8(0, &qword_27CC17688, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_2191FEC08(a1, v6, v1 + v5, v8, v9);
}

void sub_2192008C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SharedWithYouFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for SharedWithYouFeedModel(255);
    v8[2] = sub_219200A90(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
    v8[3] = sub_219200A90(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2192009BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219200A20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2192009BC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219200A90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_219200B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 16);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v12[4] = sub_219201348;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218C1CBB4;
  v12[3] = &block_descriptor_105;
  v11 = _Block_copy(v12);

  [v9 fetchConfigurationIfNeededWithCompletion_];
  _Block_release(v11);
}

void sub_219200C08(void *a1, void *a2, void (*a3)(void *), uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v56 = a6;
  v57 = a5;
  v58 = sub_219BE9884();
  v55 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v54 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE7D04();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE7D14();
  v14 = *(v13 - 8);
  v64 = v13;
  v65 = v14;
  *&v15 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if ([a1 respondsToSelector_])
    {
      v53 = [swift_unknownObjectRetain() launchPresentationConfig];
      v18 = [v53 presentationOperations];
      sub_2192013A8();
      v19 = sub_219BF5924();

      if (v19 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
      {
        v63 = v12;
        v52 = a1;
        if (i < 1)
        {
          __break(1u);
          return;
        }

        v21 = 0;
        v22 = v19 & 0xC000000000000001;
        v59 = v65 + 32;
        v23 = MEMORY[0x277D84F90];
        v24 = &selRef_filteredReasons;
        v61 = i;
        v62 = v19;
        v60 = v19 & 0xC000000000000001;
        while (1)
        {
          if (v22)
          {
            v25 = MEMORY[0x21CECE0F0](v21, v19);
          }

          else
          {
            v25 = *(v19 + 8 * v21 + 32);
          }

          v12 = v25;
          v26 = [v25 v24[272]];
          if (!v26)
          {
            goto LABEL_8;
          }

          v27 = v26;
          v73 = sub_219BF5414();
          v29 = v28;

          v30 = [v12 operationUID];
          if (v30)
          {
            break;
          }

LABEL_8:

LABEL_9:
          if (i == ++v21)
          {

            a1 = v52;
            goto LABEL_42;
          }
        }

        v72 = v29;
        v31 = v30;
        v32 = sub_219BF5414();
        v71 = v33;

        v34 = [v12 requiredAppLaunchCount];
        v35 = [v12 maxPrecedingSameSessionPresentations];
        a1 = v35;
        if (v35)
        {
          v70 = [v35 integerValue];
        }

        else
        {
          v70 = 0;
        }

        v36 = [v12 maxPresentationAttempts];
        v37 = v36;
        if (v36)
        {
          v69 = [v36 integerValue];
        }

        else
        {
          v69 = 0;
        }

        v19 = [v12 endsPresentationSession];
        if (([v12 suppressOnLaunchConditions] & 0x8000000000000000) == 0)
        {
          v66 = v34;
          v67 = v32;
          v68 = v23;
          v38 = v17;
          sub_219BE7CF4();
          [v12 ignoreAfterSuccessfulPresentation];
          v39 = [v12 maxRetries];
          v40 = v39;
          if (v39)
          {
            [v39 integerValue];
          }

          v17 = v38;
          sub_219BE7CA4();
          v23 = v68;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_2191FA334(0, v23[2] + 1, 1, v23);
          }

          v19 = v62;
          v22 = v60;
          v24 = &selRef_filteredReasons;
          v42 = v23[2];
          v41 = v23[3];
          if (v42 >= v41 >> 1)
          {
            v23 = sub_2191FA334((v41 > 1), v42 + 1, 1, v23);
          }

          v23[2] = v42 + 1;
          (*(v65 + 32))(v23 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v42, v17, v64);
          i = v61;
          goto LABEL_9;
        }

        __break(1u);
LABEL_40:
        ;
      }

LABEL_42:
      if ([a1 respondsToSelector_])
      {
        v48 = [a1 paidBundleConfig];
        [v48 appLaunchUpsellNewSessionBackgroundTimeInterval];
      }

      v49 = v53;
      [v53 configVersion];
      [v49 presentationRequirementTimeout];
      v50 = v54;
      sub_219BE9864();
      v57(v50);
      swift_unknownObjectRelease();

      (*(v55 + 8))(v50, v58);
    }

    else
    {
      sub_219201354();
      v45 = swift_allocError();
      *v46 = 1;
      swift_unknownObjectRetain();
      a3(v45);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (a2)
    {
      v43 = a2;
      v44 = a2;
    }

    else
    {
      sub_219201354();
      v44 = swift_allocError();
      a2 = v44;
      *v47 = 0;
    }

    a3(v44);
  }
}

unint64_t sub_219201354()
{
  result = qword_27CC17698;
  if (!qword_27CC17698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17698);
  }

  return result;
}

unint64_t sub_2192013A8()
{
  result = qword_280E8DF30;
  if (!qword_280E8DF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DF30);
  }

  return result;
}

unint64_t sub_219201408()
{
  result = qword_27CC176A8;
  if (!qword_27CC176A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC176A8);
  }

  return result;
}

uint64_t OfflineStatusBannerModule.createViewController()()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  type metadata accessor for LegacyOfflineStatusBannerViewController();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    sub_2192016F4(&qword_27CC176B0, type metadata accessor for LegacyOfflineStatusBannerViewController, &unk_219C124E0);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OfflineStatusBannerModule.createOfflineBannerCoordinator()()
{
  v0 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v0);
  sub_2192016F4(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
  sub_218709BC4(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
  sub_218711654();

  sub_219BF7164();
  sub_218709BC4(0, &qword_280EE7228, type metadata accessor for OfflineStatusBannerCoordinator, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_21920168C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  type metadata accessor for OfflineStatusBannerCoordinator(0);
  result = sub_219BE1E24();
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192016F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21920175C()
{
  v0 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v0);
  sub_2192016F4(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
  sub_218709BC4(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
  sub_218711654();

  sub_219BF7164();
  sub_218709BC4(0, &qword_280EE7228, type metadata accessor for OfflineStatusBannerCoordinator, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_219BE2D14();
}

void sub_219201950(uint64_t a1)
{
  if (!qword_280E92220)
  {
    type metadata accessor for SportsBracketTagFeedGroupConfigData(255);
    sub_219205680(&unk_280E9C6E0, type metadata accessor for SportsBracketTagFeedGroupConfigData, &unk_219C7EC4C);
    sub_219205680(&qword_280E9C6F0, type metadata accessor for SportsBracketTagFeedGroupConfigData, &unk_219C7EC24);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92220);
    }
  }
}

uint64_t type metadata accessor for SportsBracketTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA4970;
  if (!qword_280EA4970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219201A7C(uint64_t a1)
{
  sub_219201950(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SportsBracketTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510, MEMORY[0x277D33778], 1);
      if (v3 <= 0x3F)
      {
        sub_2186C709C(319, &unk_280E90250, MEMORY[0x277D33C48], 0);
        if (v4 <= 0x3F)
        {
          sub_2186C709C(319, qword_280EBA370, &protocol descriptor for SportsFavoritesServiceType, 1);
          if (v5 <= 0x3F)
          {
            sub_2186C709C(319, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
            if (v6 <= 0x3F)
            {
              sub_2186C709C(319, &qword_280E8FD40, MEMORY[0x277D34618], 1);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_219201BF0(uint64_t a1)
{
  v3 = type metadata accessor for SportsBracketTagFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v26 = type metadata accessor for SportsBracketTagFeedGroupEmitter;
  sub_2192056C8(v1, v6, type metadata accessor for SportsBracketTagFeedGroupEmitter);
  v7 = *(v4 + 80);
  v25 = (v7 + 16) & ~v7;
  v28 = v25 + v5;
  v8 = (v25 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_2192026D4(v6, v9 + ((v7 + 16) & ~v7));
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BE3054();

  v11 = v27;
  sub_2192056C8(v27, v6, type metadata accessor for SportsBracketTagFeedGroupEmitter);
  v12 = swift_allocObject();
  v13 = v25;
  sub_2192026D4(v6, v12 + v25);
  *(v12 + v8) = a1;

  v14 = sub_219BE2E54();
  sub_219202A48(0);
  sub_219BE2F64();

  v15 = v11;
  v16 = v11;
  v17 = v26;
  sub_2192056C8(v15, v6, v26);
  v18 = swift_allocObject();
  sub_2192026D4(v6, v18 + v13);
  *(v18 + v8) = a1;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_219203B9C;
  *(v19 + 24) = v18;

  v20 = sub_219BE2E54();
  sub_218A59C84(0);
  sub_219BE2F74();

  sub_2192056C8(v16, v6, v17);
  v21 = swift_allocObject();
  sub_2192026D4(v6, v21 + v13);
  v22 = sub_219BE2E54();
  v23 = sub_219BE3064();

  return v23;
}

uint64_t sub_219201F64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_219201950(0);
  v6 = v5;
  v7 = swift_allocBox();
  result = (*(*(v6 - 8) + 16))(v8, v2 + *(a1 + 20), v6);
  *a2 = v7 | 0x4000000000000004;
  return result;
}

uint64_t sub_219201FF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  a2[3] = type metadata accessor for SportsBracketTagFeedGroupKnobs(0);
  a2[4] = sub_219205680(qword_280EAB258, type metadata accessor for SportsBracketTagFeedGroupKnobs, &unk_219C6F498);
  a2[5] = sub_219205680(&qword_27CC17700, type metadata accessor for SportsBracketTagFeedGroupKnobs, &unk_219C6F470);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2192056C8(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsBracketTagFeedGroupKnobs);
}

uint64_t sub_219202140@<X0>(uint64_t *a2@<X8>)
{
  sub_2186E49E0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219201950(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A426AC(inited + 32);
  sub_2186E49E0(0, &qword_27CC17708, type metadata accessor for SportsBracketTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_219205730();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2192022B8(uint64_t a1)
{
  sub_219205680(&unk_27CC176C8, type metadata accessor for SportsBracketTagFeedGroupEmitter, &unk_219C65E1C);

  return sub_219BE2324();
}

uint64_t sub_2192024C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SportsBracketTagFeedGroupEmitter(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v15 = a2;
  v16 = a3;
  sub_219BF43B4();
  sub_219BE3204();
  sub_2192056C8(a2, &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SportsBracketTagFeedGroupEmitter);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_2192026D4(&v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  *(v9 + ((v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  v10 = sub_219BE2E54();
  sub_2186E49E0(0, &unk_280E8EE50, MEMORY[0x277D34610], MEMORY[0x277D83940]);
  sub_219BE2F64();

  v11 = sub_219BE2E54();
  v12 = sub_219BE2F74();

  return v12;
}

uint64_t sub_2192026D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsBracketTagFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219202738(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsBracketTagFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2192024C0(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_2192027D0(unint64_t *a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  if (!(*a1 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    v9 = sub_219BEEDD4();
    sub_219205680(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D323C8], v9);
    swift_willThrow();
    return;
  }

  if (!sub_219BF7214())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x21CECE0F0](0, v6, a2);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  sub_219202AB0(a4, v7);
  if (v4)
  {
  }

  else
  {
    *(swift_allocObject() + 16) = v6;

    v8 = sub_219BE2E54();
    sub_219202A48(0);
    sub_219BE2F74();
  }
}

void sub_2192029B0(unint64_t *a1)
{
  v3 = *(type metadata accessor for SportsBracketTagFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_2192027D0(a1, v5, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_219202A48(uint64_t a1)
{
  if (!qword_27CC176E8)
  {
    sub_219BF1904();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC176E8);
    }
  }
}

uint64_t sub_219202AB0(uint64_t a1, uint64_t a2)
{
  v108 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_2186E49E0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v106 = &v78 - v5;
  sub_2186E49E0(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v94 = &v78 - v7;
  sub_2186E49E0(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v78 - v9;
  v10 = sub_219BF2AB4();
  v104 = *(v10 - 8);
  v105 = v10;
  MEMORY[0x28223BE20](v10);
  v103 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E49E0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v78 - v13;
  v14 = sub_219BF2034();
  v101 = *(v14 - 8);
  v102 = v14;
  MEMORY[0x28223BE20](v14);
  v100 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for SportsBracketTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v87);
  v111 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BF3E84();
  v107 = *(v81 - 8);
  v17 = v107;
  MEMORY[0x28223BE20](v81);
  v80 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E49E0(0, &unk_280E8FEF0, MEMORY[0x277D34350], v3);
  MEMORY[0x28223BE20](v19 - 8);
  v86 = (&v78 - v20);
  v85 = sub_219BF3484();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = (&v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218CCFB5C(0);
  v23 = v22;
  v96 = *(v22 - 8);
  v24 = v96;
  MEMORY[0x28223BE20](v22);
  v26 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v110 = &v78 - v28;
  v29 = sub_219BF4EB4();
  v97 = *(v29 - 8);
  v98 = v29;
  MEMORY[0x28223BE20](v29);
  v31 = &v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = a1;
  sub_219BEF0B4();
  v32 = *(v115 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v33 = [v32 backingTag];

  v92 = v33;
  v34 = [v33 asSports];
  sub_219BF4E94();
  sub_219BF4BA4();
  v95 = v31;
  v113 = v31;
  sub_219BF4394();
  v35 = v112;
  sub_219BE32B4();
  v89 = v35;
  v36 = *(v24 + 8);
  v91 = v24 + 8;
  v90 = v36;
  v36(v26, v23);
  v37 = MEMORY[0x277D84560];
  sub_2186E49E0(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v38 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v79 = *(v17 + 72);
  v112 = swift_allocObject();
  v82 = xmmword_219C09BA0;
  *(v112 + 16) = xmmword_219C09BA0;
  sub_2186E49E0(0, &unk_280E8B7A0, MEMORY[0x277D34138], v37);
  v39 = sub_219BF3C84();
  v40 = *(v39 - 8);
  v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = v82;
  v43 = swift_allocObject();
  v44 = *(v96 + 16);
  v96 = v23;
  v44(v26, v110, v23);
  sub_219BF4BF4();
  swift_allocObject();
  *(v43 + 16) = sub_219BF4BB4();
  v45 = v83;
  *v83 = v43;
  v46 = v38;
  (*(v84 + 104))(v45, *MEMORY[0x277D33DF8], v85);
  sub_219BF1AC4();
  (*(v40 + 104))(v42 + v41, *MEMORY[0x277D34130], v39);
  v47 = v112;
  v48 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v48);
  sub_218F0BB90(v48);
  v49 = v86;
  sub_219BF3E74();
  sub_219BF4BC4();
  v50 = sub_219BF41B4();
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_219205364(v49);
  }

  else
  {
    sub_219BF41A4();
    (*(v51 + 8))(v49, v50);
    v52 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v52);
    sub_218F0BB90(v52);
    v53 = v80;
    sub_219BF3E74();
    v55 = *(v47 + 2);
    v54 = *(v47 + 3);
    v56 = v47;
    if (v55 >= v54 >> 1)
    {
      v56 = sub_2191F6E6C((v54 > 1), v55 + 1, 1, v47);
    }

    v112 = v56;
    *(v56 + 2) = v55 + 1;
    (*(v107 + 32))(&v56[v46 + v55 * v79], v53, v81);
  }

  v57 = type metadata accessor for SportsBracketTagFeedGroupEmitter(0);
  v58 = (v109 + *(v57 + 28));
  v59 = v58[3];
  v107 = v58[4];
  v108 = v59;
  v86 = __swift_project_boxed_opaque_existential_1(v58, v59);
  sub_219201950(0);
  sub_219BEDD14();
  v87 = *(v87 + 20);
  v60 = sub_219BEC004();
  (*(*(v60 - 8) + 56))(v88, 1, 1, v60);
  sub_219A95188(v48);
  sub_219A95188(v48);
  sub_219A951A0(v48);
  sub_219A951B8(v48);
  sub_219A952CC(v48);
  sub_219A952E4(v48);
  sub_219A953F8(v48);
  v61 = v100;
  sub_219BF2024();
  v62 = *(v57 + 24);
  sub_2189AD5C8(0);
  v64 = v63;
  v65 = *(v63 - 8);
  v66 = v93;
  (*(v65 + 16))(v93, v109 + v62, v63);
  (*(v65 + 56))(v66, 0, 1, v64);
  sub_219BEF0B4();
  v67 = *(v115 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v68 = sub_219BF35D4();
  (*(*(v68 - 8) + 56))(v94, 1, 1, v68);
  LOBYTE(v114) = 19;
  sub_2192053F0(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v69 = *(v114 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v70 = sub_219BF2774();
  (*(*(v70 - 8) + 56))(v106, 1, 1, v70);
  v71 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v71 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v72 = v103;
  sub_219BF2A84();
  v73 = v87;
  v74 = v111;
  v75 = sub_219BF2194();
  swift_unknownObjectRelease();
  (*(v104 + 8))(v72, v105);
  (*(v101 + 8))(v61, v102);
  v90(v110, v96);
  v76 = sub_219BF1934();
  (*(*(v76 - 8) + 8))(&v74[v73], v76);
  (*(v97 + 8))(v95, v98);
  return v75;
}

double sub_219203A4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_219202A48(0);
  v7 = *(v6 + 48);
  v8 = sub_219BF1904();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  *(a3 + v7) = a2;

  return result;
}

uint64_t sub_219203AE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = sub_219ADB314(a2);
  if (v7)
  {
    v8 = v7;
    sub_218ACC140(0);
    v10 = (a4 + *(v9 + 48));
    sub_219203C50(a1, a3, a4);
    v10[3] = &type metadata for SportsBracketTagFeedGroupEmitterCursor;
    *v10 = v8;
  }

  else
  {
    sub_219203C50(a1, a3, a4);
  }

  sub_218A59C84(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219203B9C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for SportsBracketTagFeedGroupEmitter(0) - 8);
  v8 = *(v3 + ((*(v7 + 64) + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_219203AE0(a1, a2, v8, a3);
}

uint64_t sub_219203C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v25 = a3;
  sub_2186E49E0(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v24 = v21 - v5;
  v6 = sub_219BEF554();
  MEMORY[0x28223BE20](v6 - 8);
  v21[1] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = sub_219BF1904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BED8D4();
  v13 = *(v22 - 8);
  v14 = MEMORY[0x28223BE20](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9, v14);
  type metadata accessor for SportsBracketTagFeedGroupEmitter(0);
  sub_219201950(0);
  v17 = sub_219BEDCB4();
  v21[2] = v18;
  v21[3] = v17;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v19 = sub_219BEE5D4();
  (*(*(v19 - 8) + 56))(v24, 1, 1, v19);
  sub_219BED854();
  (*(v13 + 32))(v25, v16, v22);
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219204004(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_219202A48(0);
  return v3(a1, *(a1 + *(v4 + 48)));
}

uint64_t sub_219204064(uint64_t a1, uint64_t *a2)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup(0);
  sub_219205680(&qword_280EDE9C0, type metadata accessor for TagFeedGroup, &unk_219C8E808);
  return sub_219BEF194();
}

uint64_t sub_2192041C0()
{
  v1 = sub_219BF4CF4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_219BF43B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BEF0B4();
  v6 = *(v22 + 16);

  v7 = *(v6 + 32);

  v8 = [v7 backingTag];

  v9 = [v8 asSports];
  swift_unknownObjectRelease();
  if (v9)
  {
    v21[1] = v0;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v10 = qword_280F61708;
    sub_2186F20D4(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    v22 = 0;
    v23 = 0xE000000000000000;
    v24 = v9;
    sub_2186D85DC();
    sub_219BF7484();
    v13 = v22;
    v12 = v23;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_2186FC3BC();
    *(v11 + 32) = v13;
    *(v11 + 40) = v12;
    v14 = sub_219BF6214();
    sub_219BE5314("Sports brackets fetching for backing tag=%{public}@", 51, 2, &dword_2186C1000, v10, v14, v11);

    sub_219BDC8D4();
    sub_219BDC8B4();
    sub_219BDC6B4();
    sub_219BDC8A4();

    if (v22 == 1)
    {
      v15 = sub_219BF6214();
      sub_219BE5314("Sports brackets fetching debug setting 'useAllFetchForStandingsAndBrackets' enabled; using ALL request", 102, 2, &dword_2186C1000, v10, v15, MEMORY[0x277D84F90]);
      swift_unknownObjectRetain();
      sub_219BF4CE4();
      sub_219BF49F4();
      swift_allocObject();
      *v5 = sub_219BF49D4();
      v16 = MEMORY[0x277D343F0];
    }

    else
    {
      sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_219C146A0;
      *(v19 + 32) = v9;
      swift_unknownObjectRetain();
      sub_219BF4CE4();
      sub_219BF4CA4();
      v16 = MEMORY[0x277D34400];
    }

    (*(v3 + 104))(v5, *v16, v2);
    sub_2186E49E0(0, &qword_27CC176F8, MEMORY[0x277D34408], MEMORY[0x277D6CF30]);
    swift_allocObject();
    v17 = sub_219BE3014();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = sub_219BEEDD4();
    sub_219205680(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D323A0], v17);
    swift_willThrow();
  }

  return v17;
}

uint64_t sub_219204680(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v25 = a2;
  v4 = sub_219BF0BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SportsBracketTagFeedGroupEmitter(0);
  type metadata accessor for SportsBracketTagFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  v8 = *(v5 + 8);
  v8(v7, v4);
  v9 = v26;
  sub_219BEF134();
  sub_219BEF524();
  v8(v7, v4);
  v10 = v26;
  sub_219BEF0B4();
  v11 = *(v26 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = v25;
  v14 = *(sub_219BF43A4() + 16);

  v15 = MEMORY[0x277D83B88];
  v16 = MEMORY[0x277D83C10];
  *(v12 + 56) = MEMORY[0x277D83B88];
  *(v12 + 64) = v16;
  *(v12 + 32) = v14;
  *(v12 + 96) = v15;
  *(v12 + 104) = v16;
  *(v12 + 72) = v9;
  *(v12 + 136) = v15;
  *(v12 + 144) = v16;
  *(v12 + 112) = v10;
  sub_219BF6214();
  sub_219BE5314("Sports brackets will fetch brackets for %ld tags with min=%ld and max=%ld brackets", v25, v26, v27);

  MEMORY[0x28223BE20](v17);
  *(&v25 - 2) = v3;
  *(&v25 - 1) = v13;
  sub_219205570(0);
  sub_219BE3204();
  v18 = swift_allocObject();
  v18[2] = v11;
  v18[3] = v10;
  v18[4] = v9;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_2192055E0;
  *(v19 + 24) = v18;
  v20 = v11;
  v21 = sub_219BE2E54();
  sub_2186E49E0(0, &unk_280E8EE50, MEMORY[0x277D34610], MEMORY[0x277D83940]);
  sub_219BE2F74();

  v22 = sub_219BE2E54();
  v23 = sub_219BE2FD4();

  return v23;
}

uint64_t sub_219204A40(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BF4684();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SportsBracketTagFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((a1 + *(v7 + 44)), *(a1 + *(v7 + 44) + 24));
  (*(v4 + 104))(v6, *MEMORY[0x277D34490], v3);
  sub_219BF4C14();
  (*(v4 + 8))(v6, v3);
  swift_getObjectType();
  sub_219BF2F74();
  v8 = sub_219BE31C4();

  return v8;
}

uint64_t sub_219204BCC(uint64_t a1, uint64_t a2, int64_t a3, unint64_t a4, int64_t a5)
{
  v6 = v5;
  v11 = sub_219BF41E4();
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v44 = qword_280F61708;
  sub_2186F20D4(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  v42 = a5;
  v43 = a1;
  if (v11 >> 62)
  {
    v13 = sub_219BF7214();
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D83C10];
  *(v12 + 56) = MEMORY[0x277D83B88];
  *(v12 + 64) = v14;
  *(v12 + 32) = v13;
  v15 = [objc_msgSend(a3 backingTag];
  swift_unknownObjectRelease();
  v16 = sub_219BF5414();
  v18 = v17;

  *(v12 + 96) = MEMORY[0x277D837D0];
  *(v12 + 104) = sub_2186FC3BC();
  *(v12 + 72) = v16;
  *(v12 + 80) = v18;
  v19 = sub_219BF6214();
  sub_219BE5314("Sports brackets found %ld bracket groups for tag %{public}@", 59, 2, &dword_2186C1000, v44, v19, v12);

  MEMORY[0x28223BE20](v20);
  v41[2] = v43;
  v41[3] = a3;
  v21 = sub_218DDFEC4(sub_219205664, v41, v11);

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09BA0;
  v23 = v21 >> 62;
  if (v21 >> 62)
  {
    v24 = sub_219BF7214();
  }

  else
  {
    v24 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v22 + 56) = MEMORY[0x277D83B88];
  *(v22 + 64) = MEMORY[0x277D83C10];
  *(v22 + 32) = v24;
  sub_219BF6214();
  sub_219BE5314("Sports brackets configured %ld brackets", v42);

  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v23)
  {
    if ((v21 & 0x8000000000000000) != 0)
    {
      v6 = v21;
    }

    else
    {
      v6 = v21 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = sub_219BF7214();
    if (sub_219BF7214() < 0)
    {
      goto LABEL_54;
    }

    if (v11 >= a4)
    {
      v27 = a4;
    }

    else
    {
      v27 = v11;
    }

    if (v11 < 0)
    {
      v27 = a4;
    }

    if (a4)
    {
      a3 = v27;
    }

    else
    {
      a3 = 0;
    }

    v25 = sub_219BF7214();
  }

  else
  {
    v25 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25 >= a4)
    {
      v26 = a4;
    }

    else
    {
      v26 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a4)
    {
      a3 = v26;
    }

    else
    {
      a3 = 0;
    }
  }

  if (v25 < a3)
  {
    goto LABEL_52;
  }

  if ((v21 & 0xC000000000000001) != 0 && a3)
  {
    sub_219BF4BF4();

    v28 = 0;
    do
    {
      v29 = v28 + 1;
      sub_219BF7334();
      v28 = v29;
    }

    while (a3 != v29);
  }

  else
  {
  }

  if (v23)
  {
    a4 = sub_219BF7564();
    v11 = v30;
    v6 = v31;
    a3 = v32;
  }

  else
  {
    v6 = 0;
    a4 = v21 & 0xFFFFFFFFFFFFFF8;
    v11 = (v21 & 0xFFFFFFFFFFFFFF8) + 32;
    a3 = (2 * a3) | 1;
  }

  v33 = (a3 >> 1) - v6;
  v34 = v42;
  if (__OFSUB__(a3 >> 1, v6))
  {
    goto LABEL_53;
  }

  if (v33 < v42)
  {
    v35 = sub_219BEEDD4();
    sub_219205680(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    *v36 = v34;
    v36[1] = v33;
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D32400], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    return v35;
  }

  if ((a3 & 1) == 0)
  {
LABEL_42:
    sub_218B67334(a4, v11, v6, a3);
    v35 = v37;
    swift_unknownObjectRelease();
    return v35;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v38 = swift_dynamicCastClass();
  if (!v38)
  {
    swift_unknownObjectRelease();
    v38 = MEMORY[0x277D84F90];
  }

  v39 = *(v38 + 16);

  if (v39 != v33)
  {
LABEL_55:
    swift_unknownObjectRelease_n();
    goto LABEL_42;
  }

  v35 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v35)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return v35;
}

uint64_t sub_2192050F8@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v7 = sub_219BF6394();
  v8 = [a2 alternativeFeedDescriptor];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 feedConfiguration];
  }

  else
  {
    v10 = [a2 feedConfiguration];
  }

  v11 = sub_218CCD9A4(v7, v6, 0x72427374726F7073, 0xED000074656B6361, v10);
  result = swift_unknownObjectRelease();
  *a3 = v11;
  return result;
}

double sub_2192051D4(uint64_t a1)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61708;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186C709C(0, &qword_280E8B580, MEMORY[0x277D84948], 1);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Sports brackets failed to fetch brackets, error=%{public}@", 58, 2, &dword_2186C1000, v1, v2, v3);

  return result;
}

uint64_t sub_219205320@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BF4384();
  *a1 = result;
  return result;
}

uint64_t sub_219205364(uint64_t a1)
{
  sub_2186E49E0(0, &unk_280E8FEF0, MEMORY[0x277D34350], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2192053F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig(255);
    v7 = sub_219205680(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_219205570(uint64_t a1)
{
  if (!qword_280E900E0)
  {
    sub_219BF3824();
    sub_219BF4264();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E900E0);
    }
  }
}

uint64_t sub_219205600@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  sub_219205570(0);
  result = v6(a1, a1 + *(v7 + 48));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_219205680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2192056C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_219205730()
{
  result = qword_27CC17710;
  if (!qword_27CC17710)
  {
    sub_2186E49E0(255, &qword_27CC17708, type metadata accessor for SportsBracketTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17710);
  }

  return result;
}

uint64_t sub_2192057B8(uint64_t a1)
{
  sub_218ED5B50(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF2894();
  MEMORY[0x28223BE20](v5 - 8);
  sub_219BDEDF4();
  v16 = &type metadata for ContinueReadingThumbnailLayoutAttributes;
  v17 = sub_2192059D4();
  v6 = objc_opt_self();
  v7 = [v6 mainScreen];
  [v7 scale];

  v8 = [v6 mainScreen];
  v9 = [v8 traitCollection];

  sub_219BF2884();
  v10 = sub_219BE5AD4();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v11 = sub_219BF3B04();
  v12 = sub_219BDEE04();
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

unint64_t sub_2192059D4()
{
  result = qword_280E96598[0];
  if (!qword_280E96598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E96598);
  }

  return result;
}

uint64_t type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E96498;
  if (!qword_280E96498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219205A9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_219BEF554();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v40);
  v38 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BF1934();
  v36 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D15B24(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21920656C(0, &qword_280E8C728, MEMORY[0x277D844C8]);
  v44 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192064B4();
  v15 = v14;
  v16 = v45;
  sub_219BF7B34();
  if (!v16)
  {
    v45 = v12;
    v35 = v7;
    v17 = v40;
    v18 = v41;
    v20 = v42;
    v19 = v43;
    v50 = 2;
    v21 = v15;
    v22 = sub_219BF76A4();
    v49 = 4;
    v34 = sub_219BF76A4();
    v48 = 3;
    sub_2192065D0(&unk_280E91390, MEMORY[0x277D32648], MEMORY[0x277D32658]);
    sub_219BF76E4();
    v47 = 5;
    v33 = sub_219BF76A4();
    v46 = 1;
    sub_2192065D0(&qword_280E90808, MEMORY[0x277D33478], MEMORY[0x277D33488]);
    sub_219BF7734();
    v45[1](v21, v44);
    v24 = v38;
    *v38 = 3;
    v25 = v22;
    v26 = v17;
    v24[v17[6]] = v25 & 1;
    v24[v17[8]] = (v34 == 2) | v34 & 1;
    v27 = *(v18 + 48);
    v28 = v27(v10, 1, v20);
    v29 = v10;
    if (v28 == 1)
    {
      v45 = v10;
      v30 = v37;
      (*(v18 + 104))(v37, *MEMORY[0x277D32630], v20);
      v31 = v19;
      if (v27(v45, 1, v20) != 1)
      {
        sub_218D15BD0(v45);
      }
    }

    else
    {
      v30 = v37;
      (*(v18 + 32))(v37, v29, v20);
      v31 = v19;
    }

    v32 = v38;
    (*(v18 + 32))(&v38[v26[7]], v30, v20);
    *(v32 + v26[9]) = v33 & 1;
    (*(v36 + 32))(v32 + v26[5], v35, v39);
    sub_219206508(v32, v31);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219206044(void *a1)
{
  v3 = v1;
  sub_21920656C(0, &qword_280E8C1D0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192064B4();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_2192065D0(&qword_280E90810, MEMORY[0x277D33478], MEMORY[0x277D33480]);
    sub_219BF7834();
    v11[12] = 2;
    sub_219BF7804();
    v11[11] = 3;
    sub_219BEF554();
    sub_2192065D0(&qword_280E913A0, MEMORY[0x277D32648], MEMORY[0x277D32650]);
    sub_219BF7834();
    v11[10] = 4;
    sub_219BF7804();
    v11[9] = 5;
    sub_219BF7804();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_219206320()
{
  v1 = *v0;
  v2 = 1684957547;
  v3 = 0xD00000000000001BLL;
  if (v1 == 4)
  {
    v3 = 0xD000000000000017;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000016;
  }

  v4 = 0x746E65746E6F63;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2192063E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219206730(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21920640C(uint64_t a1)
{
  v2 = sub_2192064B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219206448(uint64_t a1)
{
  v2 = sub_2192064B4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2192064B4()
{
  result = qword_280E964D0;
  if (!qword_280E964D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E964D0);
  }

  return result;
}

uint64_t sub_219206508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturedIssueMagazineFeedGroupConfigData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21920656C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2192064B4();
    v7 = a3(a1, &type metadata for FeaturedIssueMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2192065D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21920662C()
{
  result = qword_27CC17720;
  if (!qword_27CC17720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17720);
  }

  return result;
}

unint64_t sub_219206684()
{
  result = qword_280E964C0;
  if (!qword_280E964C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E964C0);
  }

  return result;
}

unint64_t sub_2192066DC()
{
  result = qword_280E964C8;
  if (!qword_280E964C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E964C8);
  }

  return result;
}

uint64_t sub_219206730(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684957547 && a2 == 0xE400000000000000;
  if (v3 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CD77A0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CD77C0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CD7500 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD9420 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}