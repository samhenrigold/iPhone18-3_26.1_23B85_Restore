uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI5BeatsV2eeoiySbAM_AMtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  result = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (!v3)
  {
    if (v5)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = *(v3 + 16);
  if (v6 != *(v5 + 16))
  {
    return 0;
  }

  if (v6)
  {
    v7 = v3 == v5;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_14:
    if (result)
    {
      if (v4 && (sub_22F17AD98(result, v4) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  v8 = (v3 + 32);
  v9 = (v5 + 32);
  while (v6)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hi10TimeSeriesL0V2eeoiySbAM_AMtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 28);
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = *(a1 + 40);
  v7 = *(a1 + 44);
  v8 = *(a1 + 45);
  v9 = *(a1 + 48);
  v10 = *(a1 + 52);
  v11 = *(a1 + 56);
  v12 = *(a1 + 60);
  v13 = *(a1 + 64);
  v14 = *(a1 + 68);
  v15 = *(a1 + 69);
  v17 = a2[3];
  v16 = a2[4];
  v18 = *(a2 + 44);
  v19 = *(a2 + 10);
  v20 = *(a2 + 45);
  v22 = a2[6];
  v21 = a2[7];
  v23 = *(a2 + 68);
  v24 = *(a2 + 16);
  v25 = *(a2 + 69);
  if (*(a1 + 21))
  {
    if ((*(a2 + 21) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if (*(a2 + 21))
    {
      goto LABEL_42;
    }

    v27 = *(a1 + 16);
    v29 = *a2;
    v28 = a2[1];
    v30 = *(a2 + 20);
    v31 = *(a2 + 4);
    v32 = *(a1 + 20);
    if (*(a1 + 4))
    {
      if ((v29 & 0x100000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v26 = 0;
      if ((v29 & 0x100000000) != 0 || *a1 != *&v29)
      {
        return v26 & 1;
      }
    }

    if (*(a1 + 12))
    {
      if ((v28 & 0x100000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v26 = 0;
      if ((v28 & 0x100000000) != 0 || *(a1 + 8) != *&v28)
      {
        return v26 & 1;
      }
    }

    v33 = v31 | (v30 << 32);
    if (v32)
    {
      if ((v33 & 0x100000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v26 = 0;
      if ((v33 & 0x100000000) != 0 || v27 != *&v31)
      {
        return v26 & 1;
      }
    }
  }

  if ((v8 & 1) == 0)
  {
    if ((v20 & 1) == 0)
    {
      if (v3)
      {
        if ((v17 & 0x100000000) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v26 = 0;
        if ((v17 & 0x100000000) != 0 || v2 != *&v17)
        {
          return v26 & 1;
        }
      }

      if (v5)
      {
        if ((v16 & 0x100000000) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v26 = 0;
        if ((v16 & 0x100000000) != 0 || v4 != *&v16)
        {
          return v26 & 1;
        }
      }

      v34 = v19 | (v18 << 32);
      if (v7)
      {
        v35 = v34 & 0x100000000;
        if ((v35 == 0) | v15 & 1)
        {
          v26 = BYTE4(v35) & v25;
          return v26 & 1;
        }
      }

      else
      {
        v36 = HIDWORD(v34) & 1;
        if (v6 != *&v19)
        {
          LODWORD(v36) = 1;
        }

        if ((v36 | v15))
        {
          v26 = (v36 ^ 1) & v25;
          return v26 & 1;
        }
      }

      goto LABEL_41;
    }

LABEL_42:
    v26 = 0;
    return v26 & 1;
  }

  if (v15 & 1 | ((v20 & 1) == 0))
  {
    v26 = v20 & v25;
    return v26 & 1;
  }

LABEL_41:
  if (v25)
  {
    goto LABEL_42;
  }

  if (v10)
  {
    if ((v22 & 0x100000000) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v26 = 0;
    if ((v22 & 0x100000000) != 0 || v9 != *&v22)
    {
      return v26 & 1;
    }
  }

  if (v12)
  {
    if ((v21 & 0x100000000) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v26 = 0;
    if ((v21 & 0x100000000) != 0 || v11 != *&v21)
    {
      return v26 & 1;
    }
  }

  v38 = v24 | (v23 << 32);
  if (v14)
  {
    if ((v38 & 0x100000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_59:
    v26 = 1;
    return v26 & 1;
  }

  v26 = 0;
  if ((v38 & 0x100000000) == 0 && v13 == *&v38)
  {
    goto LABEL_59;
  }

  return v26 & 1;
}

BOOL sub_22F1880D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12);
  v4 = *(a2 + 20);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
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

  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((*(a1 + 20) & 1) == 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 20) & 1) != 0;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v160[2] = *(a1 + 32);
  v160[3] = v4;
  v5 = *(a1 + 80);
  v160[4] = *(a1 + 64);
  v160[5] = v5;
  v6 = *(a1 + 16);
  v160[0] = *a1;
  v160[1] = v6;
  v7 = *(a1 + 96);
  v133 = *(a1 + 100);
  v8 = *(a1 + 104);
  v132 = *(a1 + 108);
  v9 = *(a1 + 112);
  v126 = *(a1 + 116);
  v10 = *(a1 + 117);
  v11 = *(a1 + 120);
  v128 = *(a1 + 124);
  v12 = *(a1 + 128);
  v123 = *(a1 + 132);
  v13 = *(a1 + 136);
  v118 = *(a1 + 140);
  v135 = *(a1 + 141);
  v14 = *(a1 + 144);
  v120 = *(a1 + 148);
  v15 = *(a1 + 152);
  v115 = *(a1 + 156);
  v16 = *(a1 + 160);
  v111 = *(a1 + 164);
  v130 = *(a1 + 165);
  v17 = *(a1 + 168);
  v18 = *(a1 + 172);
  v19 = *(a1 + 176);
  v20 = *(a1 + 180);
  v21 = *(a1 + 184);
  v22 = *(a1 + 188);
  v23 = *(a1 + 189);
  v24 = *(a1 + 262);
  v25 = *(a1 + 264);
  v26 = *(a1 + 268);
  v27 = *(a1 + 272);
  v28 = *(a1 + 276);
  v29 = *(a1 + 280);
  v30 = *(a1 + 284);
  v31 = *(a1 + 285);
  v33 = *(a1 + 288);
  v32 = *(a1 + 296);
  v34 = *(a1 + 320);
  v161 = *(a1 + 304);
  v162 = v34;
  v163 = *(a1 + 336);
  v164 = *(a1 + 352);
  v35 = *(a1 + 353);
  v36 = *(a2 + 48);
  v165[2] = *(a2 + 32);
  v165[3] = v36;
  v37 = *(a2 + 80);
  v165[4] = *(a2 + 64);
  v165[5] = v37;
  v38 = *(a2 + 16);
  v165[0] = *a2;
  v165[1] = v38;
  v39 = *(a2 + 96);
  v131 = *(a2 + 104);
  v125 = *(a2 + 116);
  v124 = *(a2 + 112);
  v169 = *(a2 + 352);
  v40 = *(a2 + 117);
  v41 = *(a2 + 320);
  v166 = *(a2 + 304);
  v167 = v41;
  v168 = *(a2 + 336);
  v127 = *(a2 + 120);
  v122 = *(a2 + 128);
  v117 = *(a2 + 140);
  v116 = *(a2 + 136);
  v134 = *(a2 + 141);
  v119 = *(a2 + 144);
  v114 = *(a2 + 152);
  v110 = *(a2 + 164);
  v109 = *(a2 + 160);
  v129 = *(a2 + 165);
  v112 = *(a2 + 168);
  v108 = *(a2 + 176);
  v107 = *(a2 + 188);
  v106 = *(a2 + 184);
  v121 = *(a2 + 189);
  v113 = *(a2 + 262);
  v43 = *(a2 + 264);
  v42 = *(a2 + 272);
  v44 = *(a2 + 284);
  v45 = *(a2 + 280);
  v46 = *(a2 + 285);
  v48 = *(a2 + 288);
  v47 = *(a2 + 296);
  v49 = *(a2 + 353);
  v50 = v160[0];
  v51 = v165[0];
  if (*(&v160[0] + 1) == 2)
  {
    if (*(&v165[0] + 1) == 2)
    {
      v103 = v23;
      v104 = v18;
      v98 = v19;
      v99 = v16;
      v100 = *(a2 + 285);
      v105 = v17;
      v101 = v43;
      v96 = v31;
      v97 = v20;
      v90 = v42;
      v94 = v22;
      v83 = *(a2 + 280);
      v84 = v44;
      v95 = v21;
      v102 = v24;
      v91 = v26;
      v86 = v25;
      v88 = v35;
      v89 = v28;
      v81 = v29;
      v82 = v27;
      v85 = v30;
      v92 = *(a2 + 288);
      v87 = *(a2 + 353);
      *&v93 = v33;
      *(&v93 + 1) = v32;
      *&v149 = *&v160[0];
      *(&v149 + 1) = 2;
      v52 = *(a1 + 64);
      *v152 = *(a1 + 48);
      *&v152[16] = v52;
      v153 = *(a1 + 80);
      v53 = *(a1 + 32);
      v150 = *(a1 + 16);
      v151 = v53;
      sub_22F13BA9C(v160, &v144, &qword_27DAB1970, &qword_22F7731A8);
      sub_22F13BA9C(v165, &v144, &qword_27DAB1970, &qword_22F7731A8);
      sub_22F120ADC(&v149, &qword_27DAB1970, &qword_22F7731A8);
      goto LABEL_11;
    }

    sub_22F13BA9C(v160, &v149, &qword_27DAB1970, &qword_22F7731A8);
    sub_22F13BA9C(v165, &v149, &qword_27DAB1970, &qword_22F7731A8);
LABEL_7:
    v149 = v50;
    v56 = *(a1 + 64);
    *v152 = *(a1 + 48);
    *&v152[16] = v56;
    v153 = *(a1 + 80);
    v57 = *(a1 + 32);
    v150 = *(a1 + 16);
    v151 = v57;
    v154 = v51;
    v58 = *(a2 + 80);
    v158 = *(a2 + 64);
    v159 = v58;
    v59 = *(a2 + 48);
    v156 = *(a2 + 32);
    v157 = v59;
    v155 = *(a2 + 16);
    sub_22F120ADC(&v149, &qword_27DAB1D80, &qword_22F777140);
    return 0;
  }

  v149 = v160[0];
  v54 = *(a1 + 64);
  *v152 = *(a1 + 48);
  *&v152[16] = v54;
  v153 = *(a1 + 80);
  v55 = *(a1 + 32);
  v150 = *(a1 + 16);
  v151 = v55;
  v146 = v55;
  *v147 = *v152;
  *&v147[16] = v54;
  v148 = v153;
  v144 = v160[0];
  v145 = v150;
  if (*(&v165[0] + 1) == 2)
  {
    v140 = v151;
    v141 = *v152;
    v142 = *&v152[16];
    v143 = v153;
    v138 = v149;
    v139 = v150;
    sub_22F13BA9C(v160, v137, &qword_27DAB1970, &qword_22F7731A8);
    sub_22F13BA9C(v165, v137, &qword_27DAB1970, &qword_22F7731A8);
    sub_22F13BA9C(&v149, v137, &qword_27DAB1970, &qword_22F7731A8);
    sub_22F189FAC(&v138);
    goto LABEL_7;
  }

  v103 = v23;
  v104 = v18;
  v98 = v19;
  v99 = v16;
  v100 = v46;
  v105 = v17;
  v101 = v43;
  v96 = v31;
  v97 = v20;
  v90 = v42;
  v94 = v22;
  v83 = v45;
  v84 = v44;
  v95 = v21;
  v102 = v24;
  v91 = v26;
  v86 = v25;
  v88 = v35;
  v89 = v28;
  v81 = v29;
  v82 = v27;
  v85 = v30;
  *&v92 = v48;
  *(&v92 + 1) = v47;
  v87 = v49;
  *&v93 = v33;
  *(&v93 + 1) = v32;
  v62 = *(a2 + 64);
  v141 = *(a2 + 48);
  v142 = v62;
  v143 = *(a2 + 80);
  v63 = *(a2 + 32);
  v139 = *(a2 + 16);
  v140 = v63;
  v138 = v165[0];
  sub_22F13BA9C(v160, v137, &qword_27DAB1970, &qword_22F7731A8);
  sub_22F13BA9C(v165, v137, &qword_27DAB1970, &qword_22F7731A8);
  sub_22F13BA9C(&v149, v137, &qword_27DAB1970, &qword_22F7731A8);
  v64 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyV2eeoiySbAM_AMtFZ_0(&v144, &v138);
  v136[2] = v140;
  v136[3] = v141;
  v136[4] = v142;
  v136[5] = v143;
  v136[0] = v138;
  v136[1] = v139;
  sub_22F189FAC(v136);
  v137[2] = v146;
  v137[3] = *v147;
  v137[4] = *&v147[16];
  v137[5] = v148;
  v137[0] = v144;
  v137[1] = v145;
  sub_22F189FAC(v137);
  v138 = v50;
  v65 = *(a1 + 64);
  v141 = *(a1 + 48);
  v142 = v65;
  v143 = *(a1 + 80);
  v66 = *(a1 + 32);
  v139 = *(a1 + 16);
  v140 = v66;
  sub_22F120ADC(&v138, &qword_27DAB1970, &qword_22F7731A8);
  if (!v64)
  {
    return 0;
  }

LABEL_11:
  if (v10)
  {
    if ((v40 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v40)
    {
      return 0;
    }

    if (v133)
    {
      if ((v39 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v39 & 0x100000000) != 0 || v7 != *&v39)
      {
        return v60;
      }
    }

    if (v132)
    {
      if ((v131 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v131 & 0x100000000) != 0 || v8 != *&v131)
      {
        return v60;
      }
    }

    v69 = v124 | (v125 << 32);
    if (v126)
    {
      if ((v69 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v69 & 0x100000000) != 0 || v9 != *&v124)
      {
        return v60;
      }
    }
  }

  if (v135)
  {
    if ((v134 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v134)
    {
      return 0;
    }

    if (v128)
    {
      if ((v127 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v127 & 0x100000000) != 0 || v11 != *&v127)
      {
        return v60;
      }
    }

    if (v123)
    {
      if ((v122 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v122 & 0x100000000) != 0 || v12 != *&v122)
      {
        return v60;
      }
    }

    v70 = v116 | (v117 << 32);
    if (v118)
    {
      if ((v70 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v70 & 0x100000000) != 0 || v13 != *&v116)
      {
        return v60;
      }
    }
  }

  if (v130)
  {
    if ((v129 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v129)
    {
      return 0;
    }

    if (v120)
    {
      if ((v119 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v119 & 0x100000000) != 0 || v14 != *&v119)
      {
        return v60;
      }
    }

    if (v115)
    {
      if ((v114 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v114 & 0x100000000) != 0 || v15 != *&v114)
      {
        return v60;
      }
    }

    v71 = v109 | (v110 << 32);
    if (v111)
    {
      if ((v71 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v71 & 0x100000000) != 0 || v99 != *&v109)
      {
        return v60;
      }
    }
  }

  if (v103)
  {
    if ((v121 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v121)
    {
      return 0;
    }

    if (v104)
    {
      if ((v112 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v112 & 0x100000000) != 0 || v105 != *&v112)
      {
        return v60;
      }
    }

    if (v97)
    {
      if ((v108 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v108 & 0x100000000) != 0 || v98 != *&v108)
      {
        return v60;
      }
    }

    v78 = v106 | (v107 << 32);
    if (v94)
    {
      if ((v78 & 0x100000000) == 0)
      {
        return 0;
      }
    }

    else
    {
      v60 = 0;
      if ((v78 & 0x100000000) != 0 || v95 != *&v106)
      {
        return v60;
      }
    }
  }

  if (v102)
  {
    v67 = v101;
    v68 = v100;
    if ((v113 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v72 = *(a1 + 240);
    v151 = *(a1 + 224);
    *v152 = v72;
    *&v152[14] = *(a1 + 254);
    v73 = *(a1 + 208);
    v149 = *(a1 + 192);
    v150 = v73;
    v152[22] = v102;
    v67 = v101;
    v68 = v100;
    if (v113)
    {
      return 0;
    }

    v74 = *(a2 + 240);
    v146 = *(a2 + 224);
    *v147 = v74;
    *&v147[14] = *(a2 + 254);
    v75 = *(a2 + 208);
    v144 = *(a2 + 192);
    v145 = v75;
    if ((_s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hi10TimeSeriesL0V2eeoiySbAM_AMtFZ_0(&v149, &v144) & 1) == 0)
    {
      return 0;
    }
  }

  if (v96)
  {
    if ((v68 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_78;
  }

  if (v68)
  {
    return 0;
  }

  if (v91)
  {
    if ((v67 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    v60 = 0;
    if ((v67 & 0x100000000) != 0 || v86 != *&v67)
    {
      return v60;
    }
  }

  if (v89)
  {
    if ((v90 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    v60 = 0;
    if ((v90 & 0x100000000) != 0 || v82 != *&v90)
    {
      return v60;
    }
  }

  v80 = v83 | (v84 << 32);
  if (v85)
  {
    if ((v80 & 0x100000000) == 0)
    {
      return 0;
    }

    goto LABEL_78;
  }

  v60 = 0;
  if ((v80 & 0x100000000) == 0 && v81 == *&v83)
  {
LABEL_78:
    if (v93 == 1)
    {
      v76 = *(&v93 + 1);
      sub_22F18A470(1, *(&v93 + 1));
      v77 = v92;
      if (v92 == 1)
      {
        sub_22F18A470(1, *(&v92 + 1));
        sub_22F18A50C(1, *(&v93 + 1));
LABEL_111:
        if (v88)
        {
          return v87;
        }

        v149 = v161;
        v150 = v162;
        v151 = v163;
        v152[0] = v164;
        v152[1] = v88;
        if ((v87 & 1) == 0)
        {
          v144 = v166;
          v145 = v167;
          v146 = v168;
          v147[0] = v169;
          return _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3BPMV2eeoiySbAM_AMtFZ_0(&v149, &v144);
        }

        return 0;
      }

      sub_22F18A470(v92, *(&v92 + 1));
      goto LABEL_109;
    }

    v149 = v93;
    v76 = *(&v93 + 1);
    v77 = v92;
    if (v92 == 1)
    {
      sub_22F18A470(v93, *(&v93 + 1));
      sub_22F18A470(1, *(&v92 + 1));
      sub_22F18A470(v93, *(&v93 + 1));

LABEL_109:
      sub_22F18A50C(v93, v76);
      sub_22F18A50C(v77, *(&v92 + 1));
      return 0;
    }

    v144 = v92;
    v79 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI5BeatsV2eeoiySbAM_AMtFZ_0(&v149, &v144);
    sub_22F18A470(v93, *(&v93 + 1));
    sub_22F18A470(v92, *(&v92 + 1));
    sub_22F18A470(v93, *(&v93 + 1));

    sub_22F18A50C(v93, *(&v93 + 1));
    if (v79)
    {
      goto LABEL_111;
    }

    return 0;
  }

  return v60;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV2eeoiySbAI_AItFZ_0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  memcpy(__dst, v3, 0x162uLL);
  memcpy(v15, v2, 0x162uLL);
  memcpy(__src, v4, 0x162uLL);
  memcpy(&__src[360], v2, 0x162uLL);
  memcpy(v16, v4, 0x162uLL);
  if (sub_22F19193C(v16) != 1)
  {
    memcpy(v12, v4, 0x162uLL);
    memcpy(v10, v4, 0x162uLL);
    memcpy(v11, v2, 0x162uLL);
    if (sub_22F19193C(v11) != 1)
    {
      memcpy(v9, v2, 0x162uLL);
      sub_22F13BA9C(__dst, v8, &qword_27DAB19B0, &qword_22F7731C0);
      sub_22F13BA9C(v15, v8, &qword_27DAB19B0, &qword_22F7731C0);
      sub_22F13BA9C(v12, v8, &qword_27DAB19B0, &qword_22F7731C0);
      v5 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV2eeoiySbAK_AKtFZ_0(v10, v9);
      memcpy(v7, v9, 0x162uLL);
      sub_22F18A780(v7);
      memcpy(v8, v10, 0x162uLL);
      sub_22F18A780(v8);
      memcpy(v9, v4, 0x162uLL);
      sub_22F120ADC(v9, &qword_27DAB19B0, &qword_22F7731C0);
      return v5;
    }

    memcpy(v9, v4, 0x162uLL);
    sub_22F13BA9C(__dst, v8, &qword_27DAB19B0, &qword_22F7731C0);
    sub_22F13BA9C(v15, v8, &qword_27DAB19B0, &qword_22F7731C0);
    sub_22F13BA9C(v12, v8, &qword_27DAB19B0, &qword_22F7731C0);
    sub_22F18A780(v9);
    goto LABEL_7;
  }

  memcpy(v11, v2, 0x162uLL);
  if (sub_22F19193C(v11) != 1)
  {
    sub_22F13BA9C(__dst, v12, &qword_27DAB19B0, &qword_22F7731C0);
    sub_22F13BA9C(v15, v12, &qword_27DAB19B0, &qword_22F7731C0);
LABEL_7:
    memcpy(v11, __src, 0x2CAuLL);
    sub_22F120ADC(v11, &qword_27DAB1D78, &qword_22F777138);
    return 0;
  }

  memcpy(v12, v4, 0x162uLL);
  sub_22F13BA9C(__dst, v10, &qword_27DAB19B0, &qword_22F7731C0);
  sub_22F13BA9C(v15, v10, &qword_27DAB19B0, &qword_22F7731C0);
  sub_22F120ADC(v12, &qword_27DAB19B0, &qword_22F7731C0);
  return 1;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV26FlexMLAnalysisRelationshipV0hI4DataV0hI10AttributesV9ExitPointV2eeoiySbAM_AMtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  if ((sub_22F17AA10(*(a1 + 8), *(a2 + 8)) & 1) == 0 || v5 != v4)
  {
    return 0;
  }

  return sub_22F17AA10(v2, v3);
}

uint64_t _s11PhotosGraph14FlexMLAnalysisV11VisualTempoV2eeoiySbAE_AEtFZ_0(uint64_t result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    if (*(result + 12))
    {
      if ((*(a2 + 12) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(result + 8) == *(a2 + 2))
      {
        v8 = *(a2 + 12);
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        return 0;
      }
    }

    return 1;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV26FlexMLAnalysisRelationshipV0hI4DataV0hI10AttributesV2eeoiySbAK_AKtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 28);
  v4 = *(a1 + 6);
  v5 = a1[4];
  v6 = *(a1 + 44);
  v7 = *(a1 + 10);
  v8 = a1[6];
  v9 = a1[7];
  v11 = a1[8];
  v10 = a1[9];
  v12 = *a2;
  v13 = *(a2 + 16);
  v14 = *(a2 + 28);
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 44);
  v18 = *(a2 + 40);
  v19 = *(a2 + 48);
  v20 = *(a2 + 56);
  v22 = *(a2 + 64);
  v21 = *(a2 + 72);
  if (*a1)
  {
    v23 = *(a2 + 12);
    v24 = *(a2 + 8);
    v25 = *(a1 + 2);
    v26 = *(a1 + 12);
    v57 = *a1;
    v59 = v26;
    v58 = v25;
    if (!v12)
    {

LABEL_17:

      return 0;
    }

    v50 = v7;
    v51 = v6;
    v48 = v18;
    v49 = v17;
    v52 = v16;
    v53 = v5;
    v46 = v19;
    v47 = v8;
    v44 = v20;
    v45 = v9;
    v40 = v22;
    v41 = v11;
    v42 = v21;
    v43 = v10;
    v27 = v24 | (v23 << 32);
    v54 = v12;
    v55 = v27;
    v56 = BYTE4(v27) & 1;
    v28 = _s11PhotosGraph14FlexMLAnalysisV11VisualTempoV2eeoiySbAE_AEtFZ_0(&v57, &v54);
    swift_bridgeObjectRetain_n();

    if ((v28 & 1) == 0)
    {
      return 0;
    }

    if (v2)
    {
      goto LABEL_5;
    }

LABEL_15:
    if (!v13)
    {

      v30 = v53;
      if (v53)
      {
        goto LABEL_8;
      }

LABEL_20:
      if (!v52)
      {

        goto LABEL_22;
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  if (v12)
  {
    goto LABEL_16;
  }

  v50 = *(a1 + 10);
  v51 = *(a1 + 44);
  v48 = *(a2 + 40);
  v49 = *(a2 + 44);
  v52 = *(a2 + 32);
  v53 = a1[4];
  v46 = *(a2 + 48);
  v47 = a1[6];
  v44 = *(a2 + 56);
  v45 = a1[7];
  v40 = *(a2 + 64);
  v41 = a1[8];
  v42 = *(a2 + 72);
  v43 = a1[9];

  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v57 = v2;
  v58 = v4;
  v59 = (v4 | (v3 << 32)) >> 32;
  if (!v13)
  {
    goto LABEL_16;
  }

  v54 = v13;
  v55 = v15;
  v56 = ((v15 | (v14 << 32)) >> 32) & 1;
  v29 = _s11PhotosGraph14FlexMLAnalysisV11VisualTempoV2eeoiySbAE_AEtFZ_0(&v57, &v54);
  swift_bridgeObjectRetain_n();

  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = v53;
  if (!v53)
  {
    goto LABEL_20;
  }

LABEL_8:
  v57 = v30;
  v58 = v50;
  v59 = (v50 | (v51 << 32)) >> 32;
  if (!v52)
  {
    goto LABEL_16;
  }

  v54 = v52;
  v55 = v48;
  v56 = ((v48 | (v49 << 32)) >> 32) & 1;
  v31 = _s11PhotosGraph14FlexMLAnalysisV11VisualTempoV2eeoiySbAE_AEtFZ_0(&v57, &v54);
  swift_bridgeObjectRetain_n();

  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if (v47)
  {
    if (!v46 || (sub_22F17A8E4(v47, v46) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v46)
  {
    return 0;
  }

  if (v45)
  {
    if (!v44 || (sub_22F17B318(v45, v44) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  if (v41)
  {
    v33 = v40;
    if (v40)
    {
      if (sub_22F17AA10(v41, v40))
      {
        v34 = sub_22F17AA10(v43, v42);
        sub_22F13BB74(v41, v43);
        sub_22F13BB74(v40, v42);
        sub_22F13BB74(v41, v43);
        sub_22F18B0F4(v40, v42);

        sub_22F18B0F4(v41, v43);
        return (v34 & 1) != 0;
      }

      sub_22F13BB74(v41, v43);
      sub_22F13BB74(v40, v42);
      sub_22F13BB74(v41, v43);
      sub_22F18B0F4(v40, v42);

      v38 = v41;
      v39 = v43;
LABEL_43:
      sub_22F18B0F4(v38, v39);
      return 0;
    }

    v36 = v43;
    v35 = v41;
    sub_22F13BB74(v41, v43);
    v37 = v42;
    sub_22F13BB74(0, v42);
    sub_22F13BB74(v41, v43);

LABEL_41:
    sub_22F18B0F4(v35, v36);
    v38 = v33;
    v39 = v37;
    goto LABEL_43;
  }

  v35 = 0;
  v36 = v43;
  sub_22F13BB74(0, v43);
  v33 = v40;
  if (v40)
  {
    v37 = v42;
    sub_22F13BB74(v40, v42);
    goto LABEL_41;
  }

  sub_22F13BB74(0, v42);
  sub_22F18B0F4(0, v43);
  return 1;
}

BOOL _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV26FlexMLAnalysisRelationshipV0hI4DataV2eeoiySbAI_AItFZ_0(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 48);
  v34[2] = *(a1 + 32);
  v34[3] = v4;
  v5 = *(a1 + 64);
  v6 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v6;
  v7 = a2[3];
  v35[2] = a2[2];
  v35[3] = v7;
  v35[4] = a2[4];
  v8 = *a2;
  v35[1] = a2[1];
  v34[4] = v5;
  v35[0] = v8;
  v9 = *&v34[0];
  v10 = v8;
  if (*&v34[0] == 1)
  {
    if (v8 == 1)
    {
      v11 = 1;
      *&v27[24] = *(a1 + 24);
      *&v27[40] = *(a1 + 40);
      *&v27[56] = *(a1 + 56);
      v12 = *(a1 + 72);
      *v27 = 1;
      *&v27[72] = v12;
      *&v27[8] = *(a1 + 8);
      sub_22F13BA9C(v34, &v22, &qword_27DAB1AC0, &qword_22F773278);
      sub_22F13BA9C(v35, &v22, &qword_27DAB1AC0, &qword_22F773278);
      v13 = v27;
LABEL_9:
      sub_22F120ADC(v13, &qword_27DAB1AC0, &qword_22F773278);
      return v11;
    }

    sub_22F13BA9C(v34, v27, &qword_27DAB1AC0, &qword_22F773278);
    sub_22F13BA9C(v35, v27, &qword_27DAB1AC0, &qword_22F773278);
  }

  else
  {
    *&v27[8] = *(a1 + 8);
    *&v27[24] = *(a1 + 24);
    *&v27[40] = *(a1 + 40);
    *&v27[56] = *(a1 + 56);
    v14 = *(a1 + 72);
    *v27 = *&v34[0];
    *&v27[72] = v14;
    v24 = *&v27[32];
    v25 = *&v27[48];
    v26 = *&v27[64];
    v22 = *v27;
    v23 = *&v27[16];
    if (v8 != 1)
    {
      *&v21[24] = *(a2 + 24);
      *&v21[40] = *(a2 + 40);
      *&v21[56] = *(a2 + 56);
      v16 = *(a2 + 9);
      *&v21[8] = *(a2 + 8);
      *&v21[72] = v16;
      *v21 = v8;
      sub_22F13BA9C(v34, v20, &qword_27DAB1AC0, &qword_22F773278);
      sub_22F13BA9C(v35, v20, &qword_27DAB1AC0, &qword_22F773278);
      sub_22F13BA9C(v27, v20, &qword_27DAB1AC0, &qword_22F773278);
      v11 = _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV26FlexMLAnalysisRelationshipV0hI4DataV0hI10AttributesV2eeoiySbAK_AKtFZ_0(&v22, v21);
      v19[2] = *&v21[32];
      v19[3] = *&v21[48];
      v19[4] = *&v21[64];
      v19[0] = *v21;
      v19[1] = *&v21[16];
      sub_22F18B46C(v19);
      v20[2] = v24;
      v20[3] = v25;
      v20[4] = v26;
      v20[0] = v22;
      v20[1] = v23;
      sub_22F18B46C(v20);
      *&v21[24] = *(a1 + 24);
      *&v21[40] = *(a1 + 40);
      *&v21[56] = *(a1 + 56);
      v17 = *(a1 + 72);
      *v21 = v9;
      *&v21[72] = v17;
      *&v21[8] = *(a1 + 8);
      v13 = v21;
      goto LABEL_9;
    }

    *&v21[32] = *&v27[32];
    *&v21[48] = *&v27[48];
    *&v21[64] = *&v27[64];
    *v21 = *v27;
    *&v21[16] = *&v27[16];
    sub_22F13BA9C(v34, v20, &qword_27DAB1AC0, &qword_22F773278);
    sub_22F13BA9C(v35, v20, &qword_27DAB1AC0, &qword_22F773278);
    sub_22F13BA9C(v27, v20, &qword_27DAB1AC0, &qword_22F773278);
    sub_22F18B46C(v21);
  }

  *&v27[24] = *(a1 + 24);
  *&v27[40] = *(a1 + 40);
  *&v27[56] = *(a1 + 56);
  v15 = *(a1 + 72);
  *v27 = v9;
  *&v27[72] = v15;
  v28 = v10;
  *&v27[8] = *(a1 + 8);
  v30 = *(a2 + 24);
  v31 = *(a2 + 40);
  v32 = *(a2 + 56);
  v33 = *(a2 + 9);
  v29 = *(a2 + 8);
  sub_22F120ADC(v27, &qword_27DAB1D70, &qword_22F777130);
  return 0;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV6LyricsV0H4DataV2eeoiySbAI_AItFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  if (v3 != 1)
  {
    if (v5 == 1)
    {
      sub_22F189A6C(*a1, v3);
      sub_22F189A6C(v4, 1);
      sub_22F189A6C(v2, v3);

LABEL_7:
      sub_22F189B28(v2, v3);
      v7 = v4;
      v8 = v5;
LABEL_19:
      sub_22F189B28(v7, v8);
      return 0;
    }

    if (v3)
    {
      if (v5)
      {
        if (v2 == v4 && v3 == v5)
        {
          sub_22F189A6C(*a1, v3);
          sub_22F189A6C(v2, v3);
          sub_22F189A6C(v2, v3);
          v9 = v2;
          v10 = v3;
LABEL_15:
          sub_22F189B28(v9, v10);
LABEL_22:

          sub_22F189B28(v2, v3);
          return 1;
        }

        v13 = sub_22F742040();
        sub_22F189A6C(v2, v3);
        sub_22F189A6C(v4, v5);
        sub_22F189A6C(v2, v3);
        sub_22F189B28(v4, v5);
        if (v13)
        {
          goto LABEL_22;
        }

LABEL_18:

        v7 = v2;
        v8 = v3;
        goto LABEL_19;
      }

      sub_22F189A6C(*a1, v3);
      v11 = v3;
    }

    else
    {
      sub_22F189A6C(*a1, 0);
      v11 = 0;
      if (!v5)
      {
        sub_22F189A6C(v4, 0);
        sub_22F189A6C(v2, 0);
        v9 = v4;
        v10 = 0;
        goto LABEL_15;
      }
    }

    sub_22F189A6C(v4, v5);
    sub_22F189A6C(v2, v11);
    sub_22F189B28(v4, v5);
    goto LABEL_18;
  }

  sub_22F189A6C(*a1, 1);
  if (v5 != 1)
  {
    sub_22F189A6C(v4, v5);
    goto LABEL_7;
  }

  v6 = 1;
  sub_22F189A6C(v4, 1);
  sub_22F189B28(v2, 1);
  return v6;
}

double sub_22F189A6C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_22F189A80()
{
  result = qword_27DAB1840;
  if (!qword_27DAB1840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1840);
  }

  return result;
}

unint64_t sub_22F189AD4()
{
  result = qword_27DAB1848;
  if (!qword_27DAB1848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1848);
  }

  return result;
}

uint64_t sub_22F189B28(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_22F189B3C()
{
  result = qword_27DAB1858;
  if (!qword_27DAB1858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1858);
  }

  return result;
}

unint64_t sub_22F189B90()
{
  result = qword_27DAB1868;
  if (!qword_27DAB1868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1868);
  }

  return result;
}

unint64_t sub_22F189BE4()
{
  result = qword_27DAB1878;
  if (!qword_27DAB1878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1870, &qword_22F773118);
    sub_22F189C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1878);
  }

  return result;
}

unint64_t sub_22F189C68()
{
  result = qword_27DAB1880;
  if (!qword_27DAB1880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1880);
  }

  return result;
}

unint64_t sub_22F189CBC()
{
  result = qword_27DAB1890;
  if (!qword_27DAB1890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1870, &qword_22F773118);
    sub_22F189D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1890);
  }

  return result;
}

unint64_t sub_22F189D40()
{
  result = qword_27DAB1898;
  if (!qword_27DAB1898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1898);
  }

  return result;
}

unint64_t sub_22F189D94()
{
  result = qword_27DAB18A8;
  if (!qword_27DAB18A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB18A8);
  }

  return result;
}

double sub_22F189DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_22F189E30()
{
  result = qword_27DAB18C0;
  if (!qword_27DAB18C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB18C0);
  }

  return result;
}

unint64_t sub_22F189E84()
{
  result = qword_27DAB18C8;
  if (!qword_27DAB18C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB18C8);
  }

  return result;
}

void sub_22F189ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_22F189F20()
{
  result = qword_27DAB18D8;
  if (!qword_27DAB18D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB18D8);
  }

  return result;
}

unint64_t sub_22F189FDC()
{
  result = qword_27DAB18E8;
  if (!qword_27DAB18E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB18E8);
  }

  return result;
}

unint64_t sub_22F18A030()
{
  result = qword_2810AAC60;
  if (!qword_2810AAC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC60);
  }

  return result;
}

unint64_t sub_22F18A084()
{
  result = qword_2810AAC40;
  if (!qword_2810AAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC40);
  }

  return result;
}

unint64_t sub_22F18A0D8()
{
  result = qword_27DAB1910;
  if (!qword_27DAB1910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1910);
  }

  return result;
}

unint64_t sub_22F18A12C()
{
  result = qword_2810AAC48;
  if (!qword_2810AAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC48);
  }

  return result;
}

unint64_t sub_22F18A180()
{
  result = qword_27DAB1928;
  if (!qword_27DAB1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1928);
  }

  return result;
}

unint64_t sub_22F18A1D4()
{
  result = qword_27DAB1938;
  if (!qword_27DAB1938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1930, &qword_22F773180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1938);
  }

  return result;
}

unint64_t sub_22F18A250()
{
  result = qword_27DAB1948;
  if (!qword_27DAB1948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1930, &qword_22F773180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1948);
  }

  return result;
}

unint64_t sub_22F18A2CC()
{
  result = qword_27DAB1958;
  if (!qword_27DAB1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1958);
  }

  return result;
}

unint64_t sub_22F18A320()
{
  result = qword_2810AAC18;
  if (!qword_2810AAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC18);
  }

  return result;
}

unint64_t sub_22F18A374()
{
  result = qword_27DAB1978;
  if (!qword_27DAB1978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1978);
  }

  return result;
}

unint64_t sub_22F18A3C8()
{
  result = qword_27DAB1980;
  if (!qword_27DAB1980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1980);
  }

  return result;
}

unint64_t sub_22F18A41C()
{
  result = qword_27DAB1988;
  if (!qword_27DAB1988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1988);
  }

  return result;
}

double sub_22F18A470(uint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
  }

  return result;
}

unint64_t sub_22F18A4B8()
{
  result = qword_27DAB1990;
  if (!qword_27DAB1990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1990);
  }

  return result;
}

uint64_t sub_22F18A50C(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_22F18A550()
{
  result = qword_27DAB1998;
  if (!qword_27DAB1998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1998);
  }

  return result;
}

unint64_t sub_22F18A5A4()
{
  result = qword_2810AAC70;
  if (!qword_2810AAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC70);
  }

  return result;
}

unint64_t sub_22F18A5F8()
{
  result = qword_2810AAC20;
  if (!qword_2810AAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC20);
  }

  return result;
}

unint64_t sub_22F18A64C()
{
  result = qword_2810AAC28;
  if (!qword_2810AAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC28);
  }

  return result;
}

unint64_t sub_22F18A6A0()
{
  result = qword_2810AAC68;
  if (!qword_2810AAC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC68);
  }

  return result;
}

unint64_t sub_22F18A6F4()
{
  result = qword_2810AAC78;
  if (!qword_2810AAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC78);
  }

  return result;
}

unint64_t sub_22F18A7B0()
{
  result = qword_2810AABF8;
  if (!qword_2810AABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABF8);
  }

  return result;
}

unint64_t sub_22F18A804()
{
  result = qword_27DAB19B8;
  if (!qword_27DAB19B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB19B8);
  }

  return result;
}

unint64_t sub_22F18A858()
{
  result = qword_2810AAC00;
  if (!qword_2810AAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC00);
  }

  return result;
}

unint64_t sub_22F18A8AC()
{
  result = qword_2810AABD8;
  if (!qword_2810AABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABD8);
  }

  return result;
}

unint64_t sub_22F18A900()
{
  result = qword_27DAB19D8;
  if (!qword_27DAB19D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB19D0, &qword_22F7731D8);
    sub_22F18A984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB19D8);
  }

  return result;
}

unint64_t sub_22F18A984()
{
  result = qword_27DAB19E0;
  if (!qword_27DAB19E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB19E0);
  }

  return result;
}

unint64_t sub_22F18A9D8()
{
  result = qword_2810A9340;
  if (!qword_2810A9340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB19D0, &qword_22F7731D8);
    sub_22F18AA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9340);
  }

  return result;
}

unint64_t sub_22F18AA5C()
{
  result = qword_2810AABE0;
  if (!qword_2810AABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABE0);
  }

  return result;
}

unint64_t sub_22F18AAB0()
{
  result = qword_2810AAB20;
  if (!qword_2810AAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB20);
  }

  return result;
}

unint64_t sub_22F18AB04()
{
  result = qword_2810A92C0;
  if (!qword_2810A92C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB19F8, &qword_22F7731F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92C0);
  }

  return result;
}

unint64_t sub_22F18AB80()
{
  result = qword_2810A92B0;
  if (!qword_2810A92B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB19F8, &qword_22F7731F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92B0);
  }

  return result;
}

unint64_t sub_22F18ABFC()
{
  result = qword_2810AAB40;
  if (!qword_2810AAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB40);
  }

  return result;
}

unint64_t sub_22F18AC50()
{
  result = qword_2810AAB60;
  if (!qword_2810AAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB60);
  }

  return result;
}

unint64_t sub_22F18ACA4()
{
  result = qword_2810AAB00;
  if (!qword_2810AAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB00);
  }

  return result;
}

unint64_t sub_22F18ACF8()
{
  result = qword_2810AABA0;
  if (!qword_2810AABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABA0);
  }

  return result;
}

unint64_t sub_22F18AD4C()
{
  result = qword_2810AAB80;
  if (!qword_2810AAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB80);
  }

  return result;
}

unint64_t sub_22F18ADA0()
{
  result = qword_2810AABB8;
  if (!qword_2810AABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABB8);
  }

  return result;
}

unint64_t sub_22F18ADF4()
{
  result = qword_27DAB1A60;
  if (!qword_27DAB1A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1A60);
  }

  return result;
}

unint64_t sub_22F18AE48()
{
  result = qword_27DAB1A68;
  if (!qword_27DAB1A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1A68);
  }

  return result;
}

unint64_t sub_22F18AE9C()
{
  result = qword_27DAB1A70;
  if (!qword_27DAB1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1A70);
  }

  return result;
}

unint64_t sub_22F18AEF0()
{
  result = qword_27DAB1A80;
  if (!qword_27DAB1A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1A78, &qword_22F773258);
    sub_22F18AF74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1A80);
  }

  return result;
}

unint64_t sub_22F18AF74()
{
  result = qword_27DAB1A88;
  if (!qword_27DAB1A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1A88);
  }

  return result;
}

unint64_t sub_22F18AFC8()
{
  result = qword_27DAB1A98;
  if (!qword_27DAB1A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1A90, &qword_22F773260);
    sub_22F18B04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1A98);
  }

  return result;
}

unint64_t sub_22F18B04C()
{
  result = qword_27DAB1AA0;
  if (!qword_27DAB1AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1AA0);
  }

  return result;
}

unint64_t sub_22F18B0A0()
{
  result = qword_27DAB1AA8;
  if (!qword_27DAB1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1AA8);
  }

  return result;
}

uint64_t sub_22F18B0F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_22F18B134()
{
  result = qword_2810AAB08;
  if (!qword_2810AAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB08);
  }

  return result;
}

unint64_t sub_22F18B188()
{
  result = qword_2810AAB28;
  if (!qword_2810AAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB28);
  }

  return result;
}

unint64_t sub_22F18B1DC()
{
  result = qword_2810AAB48;
  if (!qword_2810AAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB48);
  }

  return result;
}

unint64_t sub_22F18B230()
{
  result = qword_2810A9330;
  if (!qword_2810A9330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1A78, &qword_22F773258);
    sub_22F18B2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9330);
  }

  return result;
}

unint64_t sub_22F18B2B4()
{
  result = qword_2810AAAE8;
  if (!qword_2810AAAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAE8);
  }

  return result;
}

unint64_t sub_22F18B308()
{
  result = qword_2810A9338;
  if (!qword_2810A9338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1A90, &qword_22F773260);
    sub_22F18B38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9338);
  }

  return result;
}

unint64_t sub_22F18B38C()
{
  result = qword_2810AAB88;
  if (!qword_2810AAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB88);
  }

  return result;
}

unint64_t sub_22F18B3E0()
{
  result = qword_2810AAB68;
  if (!qword_2810AAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB68);
  }

  return result;
}

unint64_t sub_22F18B49C()
{
  result = qword_2810AAAD8;
  if (!qword_2810AAAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAD8);
  }

  return result;
}

unint64_t sub_22F18B4F0()
{
  result = qword_27DAB1AC8;
  if (!qword_27DAB1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1AC8);
  }

  return result;
}

unint64_t sub_22F18B544()
{
  result = qword_2810AAAE0;
  if (!qword_2810AAAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAE0);
  }

  return result;
}

unint64_t sub_22F18B598()
{
  result = qword_2810AAAB8;
  if (!qword_2810AAAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAB8);
  }

  return result;
}

unint64_t sub_22F18B5EC()
{
  result = qword_27DAB1AE8;
  if (!qword_27DAB1AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1AE0, &qword_22F773290);
    sub_22F18B670();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1AE8);
  }

  return result;
}

unint64_t sub_22F18B670()
{
  result = qword_27DAB1AF0;
  if (!qword_27DAB1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1AF0);
  }

  return result;
}

unint64_t sub_22F18B6C4()
{
  result = qword_2810A9328;
  if (!qword_2810A9328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1AE0, &qword_22F773290);
    sub_22F18B748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9328);
  }

  return result;
}

unint64_t sub_22F18B748()
{
  result = qword_2810AAAC0;
  if (!qword_2810AAAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAC0);
  }

  return result;
}

unint64_t sub_22F18B79C()
{
  result = qword_27DAB1B08;
  if (!qword_27DAB1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B08);
  }

  return result;
}

uint64_t _s11PhotosGraph19MusicKitCatalogSongV13RelationshipsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  if (!v3)
  {
    if (!v8)
    {

      if (v5 == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!v8)
  {
LABEL_14:

    return 0;
  }

  if ((sub_22F17ADF4(v3, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v5 == 1)
  {
LABEL_5:
    sub_22F1007AC(1);
    if (v7 == 1)
    {
      v5 = 1;
      sub_22F1007AC(1);
      goto LABEL_7;
    }

    sub_22F1007AC(v7);
LABEL_19:
    sub_22F1007BC(v5);
    v12 = v7;
LABEL_56:
    sub_22F1007BC(v12);
    return 0;
  }

LABEL_16:
  if (v7 == 1)
  {
    sub_22F1007AC(v5);
    sub_22F1007AC(1);
    sub_22F1007AC(v5);

    goto LABEL_19;
  }

  if (v5)
  {
    if (v7)
    {
      sub_22F1007AC(v5);
      sub_22F1007AC(v7);
      sub_22F1007AC(v5);
      sub_22F1007AC(v7);
      v13 = sub_22F17A460(v5, v7);
      sub_22F1007BC(v7);
      sub_22F1007BC(v7);
      if (v13)
      {

        goto LABEL_7;
      }

LABEL_36:

      v12 = v5;
      goto LABEL_56;
    }

    sub_22F1007AC(v5);
    v14 = v5;
LABEL_35:
    sub_22F1007AC(v7);
    sub_22F1007AC(v14);
    sub_22F1007BC(v7);
    goto LABEL_36;
  }

  sub_22F1007AC(0);
  v14 = 0;
  if (v7)
  {
    goto LABEL_35;
  }

  sub_22F1007AC(0);
  sub_22F1007AC(0);
  sub_22F1007BC(0);

LABEL_7:
  sub_22F1007BC(v5);
  if (v4 == 1)
  {
    sub_22F1007AC(1);
    if (v10 == 1)
    {
      v4 = 1;
      sub_22F1007AC(1);
      goto LABEL_10;
    }

    sub_22F1007AC(v10);
    goto LABEL_29;
  }

  if (v10 == 1)
  {
    sub_22F1007AC(v4);
    sub_22F1007AC(1);
    sub_22F1007AC(v4);

LABEL_29:
    sub_22F1007BC(v4);
    v12 = v10;
    goto LABEL_56;
  }

  if (v4)
  {
    if (v10)
    {
      sub_22F1007AC(v4);
      sub_22F1007AC(v10);
      sub_22F1007AC(v4);
      sub_22F1007AC(v10);
      v15 = sub_22F17AA6C(v4, v10);
      sub_22F1007BC(v10);
      sub_22F1007BC(v10);
      if (v15)
      {

        goto LABEL_10;
      }

LABEL_49:

      v12 = v4;
      goto LABEL_56;
    }

    sub_22F1007AC(v4);
    v16 = v4;
LABEL_48:
    sub_22F1007AC(v10);
    sub_22F1007AC(v16);
    sub_22F1007BC(v10);
    goto LABEL_49;
  }

  sub_22F1007AC(0);
  v16 = 0;
  if (v10)
  {
    goto LABEL_48;
  }

  sub_22F1007AC(0);
  sub_22F1007AC(0);
  sub_22F1007BC(0);

LABEL_10:
  sub_22F1007BC(v4);
  if (v6 != 1)
  {
    if (v9 == 1)
    {
      sub_22F1007AC(v6);
      sub_22F1007AC(1);
      sub_22F1007AC(v6);

LABEL_42:
      sub_22F1007BC(v6);
      v12 = v9;
      goto LABEL_56;
    }

    if (v6)
    {
      if (v9)
      {
        sub_22F1007AC(v6);
        sub_22F1007AC(v9);
        sub_22F1007AC(v6);
        sub_22F1007AC(v9);
        v17 = sub_22F17A530(v6, v9);
        sub_22F1007BC(v9);
        sub_22F1007BC(v9);
        if ((v17 & 1) == 0)
        {
          goto LABEL_55;
        }

LABEL_52:

        sub_22F1007BC(v6);
        return 1;
      }

      sub_22F1007AC(v6);
      v18 = v6;
    }

    else
    {
      sub_22F1007AC(0);
      v18 = 0;
      if (!v9)
      {
        sub_22F1007AC(0);
        sub_22F1007AC(0);
        sub_22F1007BC(0);
        goto LABEL_52;
      }
    }

    sub_22F1007AC(v9);
    sub_22F1007AC(v18);
    sub_22F1007BC(v9);
LABEL_55:

    v12 = v6;
    goto LABEL_56;
  }

  sub_22F1007AC(1);
  if (v9 != 1)
  {
    sub_22F1007AC(v9);
    goto LABEL_42;
  }

  v11 = 1;
  sub_22F1007AC(1);
  sub_22F1007BC(1);
  return v11;
}

unint64_t sub_22F18BC24()
{
  result = qword_2810AAC98;
  if (!qword_2810AAC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC98);
  }

  return result;
}

unint64_t sub_22F18BC78()
{
  result = qword_27DAB1B20;
  if (!qword_27DAB1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B20);
  }

  return result;
}

unint64_t sub_22F18BCCC()
{
  result = qword_27DAB1B28;
  if (!qword_27DAB1B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B28);
  }

  return result;
}

unint64_t sub_22F18BD20()
{
  result = qword_27DAB1B30;
  if (!qword_27DAB1B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B30);
  }

  return result;
}

unint64_t sub_22F18BD74()
{
  result = qword_27DAB1B38;
  if (!qword_27DAB1B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B38);
  }

  return result;
}

unint64_t sub_22F18BDC8()
{
  result = qword_2810AAC80;
  if (!qword_2810AAC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC80);
  }

  return result;
}

unint64_t sub_22F18BE1C()
{
  result = qword_2810AAA98;
  if (!qword_2810AAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAA98);
  }

  return result;
}

unint64_t sub_22F18BE70()
{
  result = qword_2810AABC0;
  if (!qword_2810AABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABC0);
  }

  return result;
}

unint64_t sub_22F18BEC4()
{
  result = qword_2810AAAA0;
  if (!qword_2810AAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAA0);
  }

  return result;
}

unint64_t sub_22F18BF18()
{
  result = qword_27DAB1B50;
  if (!qword_27DAB1B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B50);
  }

  return result;
}

unint64_t sub_22F18BFD4()
{
  result = qword_2810AAD70;
  if (!qword_2810AAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD70);
  }

  return result;
}

unint64_t sub_22F18C028()
{
  result = qword_27DAB1B70;
  if (!qword_27DAB1B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1B68, &qword_22F7732D8);
    sub_22F18C0AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B70);
  }

  return result;
}

unint64_t sub_22F18C0AC()
{
  result = qword_27DAB1B78;
  if (!qword_27DAB1B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B78);
  }

  return result;
}

unint64_t sub_22F18C100()
{
  result = qword_2810A9358;
  if (!qword_2810A9358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1B68, &qword_22F7732D8);
    sub_22F18C184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9358);
  }

  return result;
}

unint64_t sub_22F18C184()
{
  result = qword_2810AAD78;
  if (!qword_2810AAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD78);
  }

  return result;
}

uint64_t sub_22F18C1D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {

    sub_22F1007AC(a2);
    sub_22F1007AC(a3);

    return sub_22F1007AC(a4);
  }

  return result;
}

unint64_t sub_22F18C23C()
{
  result = qword_2810AACB0;
  if (!qword_2810AACB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACB0);
  }

  return result;
}

unint64_t sub_22F18C290()
{
  result = qword_27DAB1B98;
  if (!qword_27DAB1B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1B98);
  }

  return result;
}

unint64_t sub_22F18C2E4()
{
  result = qword_27DAB1BA0;
  if (!qword_27DAB1BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BA0);
  }

  return result;
}

uint64_t sub_22F18C338(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 1)
  {

    sub_22F1007BC(a2);
    sub_22F1007BC(a3);

    return sub_22F1007BC(a4);
  }

  return result;
}

unint64_t sub_22F18C39C()
{
  result = qword_27DAB1BA8;
  if (!qword_27DAB1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BA8);
  }

  return result;
}

unint64_t sub_22F18C3F0()
{
  result = qword_2810AACB8;
  if (!qword_2810AACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACB8);
  }

  return result;
}

unint64_t sub_22F18C444()
{
  result = qword_2810AAA90;
  if (!qword_2810AAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAA90);
  }

  return result;
}

unint64_t sub_22F18C498()
{
  result = qword_2810AAD58;
  if (!qword_2810AAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD58);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV10AttributesV10PlayParamsVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV10AttributesVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F18C598(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 296))
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

uint64_t sub_22F18C5E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 296) = 1;
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

    *(result + 296) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_22F18C6C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22F18C71C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_22F18C7BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F18C804(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22F18C888(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22F18C8E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_22F18C950(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_22F18C9AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaestroSongs(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MaestroSongs(uint64_t result, int a2, int a3)
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

uint64_t sub_22F18CAC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_22F18CB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22F18CB84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22F18CBE0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesV0hI3KeyVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV13RelationshipsV25AudioAnalysisRelationshipV0hI4DataV0hI10AttributesVSg(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22F18CCA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 354))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 288);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 2;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_22F18CD0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 354) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 354) = 0;
    }

    if (a2)
    {
      *(result + 288) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_22F18CDD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 354))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 288);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_22F18CE40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 354) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 354) = 0;
    }

    if (a2)
    {
      *(result + 288) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_22F18CF1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 96))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_22F18CF84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22F18CFFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22F18D058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
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

__n128 __swift_memcpy70_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22F18D104(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 70))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F18D124(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
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

  *(result + 70) = v3;
  return result;
}

uint64_t sub_22F18D188(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_22F18D1E4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22F18D260(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F18D280(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph19MusicKitCatalogSongV13RelationshipsV26FlexMLAnalysisRelationshipV0hI4DataV0hI10AttributesV11VideoEventsVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_22F18D310(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 80))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_22F18D378(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_22F18D3EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
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

uint64_t sub_22F18D448(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
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

uint64_t sub_22F18D4F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 13))
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

uint64_t sub_22F18D53C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 13) = 1;
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

    *(result + 13) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22F18D590(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_22F18D5D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22F18D628(uint64_t *a1, int a2)
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

uint64_t sub_22F18D670(uint64_t result, int a2, int a3)
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

uint64_t sub_22F18D6E0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_22F18D73C(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22F18D7C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_22F18D808(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicKitCatalogSong.MusicKitTesseractMetadata.MusicKitTesseractDailyDetails.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicKitCatalogSong.MusicKitTesseractMetadata.MusicKitTesseractDailyDetails.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MusicKitCatalogSong.Relationships.FlexMLAnalysisRelationship.FlexMLAnalysisData.FlexMLAnalysisAttributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MusicKitCatalogSong.Relationships.AudioAnalysisRelationship.AudioAnalysisData.AudioAnalysisAttributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MusicKitCatalogSong.Attributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicKitCatalogSong.Attributes.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F18DF80()
{
  result = qword_27DAB1BB8;
  if (!qword_27DAB1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BB8);
  }

  return result;
}

unint64_t sub_22F18DFD8()
{
  result = qword_27DAB1BC0;
  if (!qword_27DAB1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BC0);
  }

  return result;
}

unint64_t sub_22F18E030()
{
  result = qword_27DAB1BC8;
  if (!qword_27DAB1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BC8);
  }

  return result;
}

unint64_t sub_22F18E088()
{
  result = qword_27DAB1BD0;
  if (!qword_27DAB1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BD0);
  }

  return result;
}

unint64_t sub_22F18E0E0()
{
  result = qword_27DAB1BD8;
  if (!qword_27DAB1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BD8);
  }

  return result;
}

unint64_t sub_22F18E138()
{
  result = qword_27DAB1BE0;
  if (!qword_27DAB1BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BE0);
  }

  return result;
}

unint64_t sub_22F18E190()
{
  result = qword_27DAB1BE8;
  if (!qword_27DAB1BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BE8);
  }

  return result;
}

unint64_t sub_22F18E1E8()
{
  result = qword_27DAB1BF0;
  if (!qword_27DAB1BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BF0);
  }

  return result;
}

unint64_t sub_22F18E240()
{
  result = qword_27DAB1BF8;
  if (!qword_27DAB1BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1BF8);
  }

  return result;
}

unint64_t sub_22F18E298()
{
  result = qword_27DAB1C00;
  if (!qword_27DAB1C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C00);
  }

  return result;
}

unint64_t sub_22F18E2F0()
{
  result = qword_27DAB1C08;
  if (!qword_27DAB1C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C08);
  }

  return result;
}

unint64_t sub_22F18E348()
{
  result = qword_27DAB1C10;
  if (!qword_27DAB1C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C10);
  }

  return result;
}

unint64_t sub_22F18E3A0()
{
  result = qword_27DAB1C18;
  if (!qword_27DAB1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C18);
  }

  return result;
}

unint64_t sub_22F18E3F8()
{
  result = qword_27DAB1C20;
  if (!qword_27DAB1C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C20);
  }

  return result;
}

unint64_t sub_22F18E450()
{
  result = qword_27DAB1C28;
  if (!qword_27DAB1C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C28);
  }

  return result;
}

unint64_t sub_22F18E4A8()
{
  result = qword_27DAB1C30;
  if (!qword_27DAB1C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C30);
  }

  return result;
}

unint64_t sub_22F18E500()
{
  result = qword_27DAB1C38;
  if (!qword_27DAB1C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C38);
  }

  return result;
}

unint64_t sub_22F18E558()
{
  result = qword_27DAB1C40;
  if (!qword_27DAB1C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C40);
  }

  return result;
}

unint64_t sub_22F18E5B0()
{
  result = qword_27DAB1C48;
  if (!qword_27DAB1C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C48);
  }

  return result;
}

unint64_t sub_22F18E608()
{
  result = qword_27DAB1C50;
  if (!qword_27DAB1C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C50);
  }

  return result;
}

unint64_t sub_22F18E660()
{
  result = qword_27DAB1C58;
  if (!qword_27DAB1C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C58);
  }

  return result;
}

unint64_t sub_22F18E6B8()
{
  result = qword_27DAB1C60;
  if (!qword_27DAB1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C60);
  }

  return result;
}

unint64_t sub_22F18E710()
{
  result = qword_27DAB1C68;
  if (!qword_27DAB1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C68);
  }

  return result;
}

unint64_t sub_22F18E768()
{
  result = qword_27DAB1C70;
  if (!qword_27DAB1C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C70);
  }

  return result;
}

unint64_t sub_22F18E7C0()
{
  result = qword_27DAB1C78;
  if (!qword_27DAB1C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C78);
  }

  return result;
}

unint64_t sub_22F18E818()
{
  result = qword_27DAB1C80;
  if (!qword_27DAB1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C80);
  }

  return result;
}

unint64_t sub_22F18E870()
{
  result = qword_27DAB1C88;
  if (!qword_27DAB1C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C88);
  }

  return result;
}

unint64_t sub_22F18E8C8()
{
  result = qword_27DAB1C90;
  if (!qword_27DAB1C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C90);
  }

  return result;
}

unint64_t sub_22F18E920()
{
  result = qword_27DAB1C98;
  if (!qword_27DAB1C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1C98);
  }

  return result;
}

unint64_t sub_22F18E978()
{
  result = qword_27DAB1CA0;
  if (!qword_27DAB1CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CA0);
  }

  return result;
}

unint64_t sub_22F18E9D0()
{
  result = qword_27DAB1CA8;
  if (!qword_27DAB1CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CA8);
  }

  return result;
}

unint64_t sub_22F18EA28()
{
  result = qword_27DAB1CB0;
  if (!qword_27DAB1CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CB0);
  }

  return result;
}

unint64_t sub_22F18EA80()
{
  result = qword_27DAB1CB8;
  if (!qword_27DAB1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CB8);
  }

  return result;
}

unint64_t sub_22F18EAD8()
{
  result = qword_2810AACA0;
  if (!qword_2810AACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACA0);
  }

  return result;
}

unint64_t sub_22F18EB30()
{
  result = qword_2810AACA8;
  if (!qword_2810AACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACA8);
  }

  return result;
}

unint64_t sub_22F18EB88()
{
  result = qword_2810AAD60;
  if (!qword_2810AAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD60);
  }

  return result;
}

unint64_t sub_22F18EBE0()
{
  result = qword_2810AAD68;
  if (!qword_2810AAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD68);
  }

  return result;
}

unint64_t sub_22F18EC38()
{
  result = qword_27DAB1CC0;
  if (!qword_27DAB1CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CC0);
  }

  return result;
}

unint64_t sub_22F18EC90()
{
  result = qword_27DAB1CC8;
  if (!qword_27DAB1CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CC8);
  }

  return result;
}

unint64_t sub_22F18ECE8()
{
  result = qword_2810AAC88;
  if (!qword_2810AAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC88);
  }

  return result;
}

unint64_t sub_22F18ED40()
{
  result = qword_2810AAC90;
  if (!qword_2810AAC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC90);
  }

  return result;
}

unint64_t sub_22F18ED98()
{
  result = qword_27DAB1CD0;
  if (!qword_27DAB1CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CD0);
  }

  return result;
}

unint64_t sub_22F18EDF0()
{
  result = qword_27DAB1CD8;
  if (!qword_27DAB1CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CD8);
  }

  return result;
}

unint64_t sub_22F18EE48()
{
  result = qword_2810AAAA8;
  if (!qword_2810AAAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAA8);
  }

  return result;
}

unint64_t sub_22F18EEA0()
{
  result = qword_2810AAAB0;
  if (!qword_2810AAAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAB0);
  }

  return result;
}

unint64_t sub_22F18EEF8()
{
  result = qword_2810AAAC8;
  if (!qword_2810AAAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAC8);
  }

  return result;
}

unint64_t sub_22F18EF50()
{
  result = qword_2810AAAD0;
  if (!qword_2810AAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAD0);
  }

  return result;
}

unint64_t sub_22F18EFA8()
{
  result = qword_2810AABA8;
  if (!qword_2810AABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABA8);
  }

  return result;
}

unint64_t sub_22F18F000()
{
  result = qword_2810AABB0;
  if (!qword_2810AABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABB0);
  }

  return result;
}

unint64_t sub_22F18F058()
{
  result = qword_2810AAB70;
  if (!qword_2810AAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB70);
  }

  return result;
}

unint64_t sub_22F18F0B0()
{
  result = qword_2810AAB78;
  if (!qword_2810AAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB78);
  }

  return result;
}

unint64_t sub_22F18F108()
{
  result = qword_2810AAB90;
  if (!qword_2810AAB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB90);
  }

  return result;
}

unint64_t sub_22F18F160()
{
  result = qword_2810AAB98;
  if (!qword_2810AAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB98);
  }

  return result;
}

unint64_t sub_22F18F1B8()
{
  result = qword_2810AAAF0;
  if (!qword_2810AAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAF0);
  }

  return result;
}

unint64_t sub_22F18F210()
{
  result = qword_2810AAAF8;
  if (!qword_2810AAAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAAF8);
  }

  return result;
}

unint64_t sub_22F18F268()
{
  result = qword_2810AAB50;
  if (!qword_2810AAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB50);
  }

  return result;
}

unint64_t sub_22F18F2C0()
{
  result = qword_2810AAB58;
  if (!qword_2810AAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB58);
  }

  return result;
}

unint64_t sub_22F18F318()
{
  result = qword_2810AAB30;
  if (!qword_2810AAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB30);
  }

  return result;
}

unint64_t sub_22F18F370()
{
  result = qword_2810AAB38;
  if (!qword_2810AAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB38);
  }

  return result;
}

unint64_t sub_22F18F3C8()
{
  result = qword_2810AAB10;
  if (!qword_2810AAB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB10);
  }

  return result;
}

unint64_t sub_22F18F420()
{
  result = qword_2810AAB18;
  if (!qword_2810AAB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAB18);
  }

  return result;
}

unint64_t sub_22F18F478()
{
  result = qword_2810AABC8;
  if (!qword_2810AABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABC8);
  }

  return result;
}

unint64_t sub_22F18F4D0()
{
  result = qword_2810AABD0;
  if (!qword_2810AABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABD0);
  }

  return result;
}

unint64_t sub_22F18F528()
{
  result = qword_2810AABE8;
  if (!qword_2810AABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABE8);
  }

  return result;
}

unint64_t sub_22F18F580()
{
  result = qword_2810AABF0;
  if (!qword_2810AABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AABF0);
  }

  return result;
}

unint64_t sub_22F18F5D8()
{
  result = qword_2810AAC08;
  if (!qword_2810AAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC08);
  }

  return result;
}

unint64_t sub_22F18F630()
{
  result = qword_2810AAC10;
  if (!qword_2810AAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC10);
  }

  return result;
}

unint64_t sub_22F18F688()
{
  result = qword_27DAB1CE0;
  if (!qword_27DAB1CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CE0);
  }

  return result;
}

unint64_t sub_22F18F6E0()
{
  result = qword_27DAB1CE8;
  if (!qword_27DAB1CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CE8);
  }

  return result;
}

unint64_t sub_22F18F738()
{
  result = qword_27DAB1CF0;
  if (!qword_27DAB1CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CF0);
  }

  return result;
}

unint64_t sub_22F18F790()
{
  result = qword_27DAB1CF8;
  if (!qword_27DAB1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1CF8);
  }

  return result;
}

unint64_t sub_22F18F7E8()
{
  result = qword_2810AAC30;
  if (!qword_2810AAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC30);
  }

  return result;
}

unint64_t sub_22F18F840()
{
  result = qword_2810AAC38;
  if (!qword_2810AAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC38);
  }

  return result;
}

unint64_t sub_22F18F898()
{
  result = qword_2810AAC50;
  if (!qword_2810AAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC50);
  }

  return result;
}

unint64_t sub_22F18F8F0()
{
  result = qword_2810AAC58;
  if (!qword_2810AAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAC58);
  }

  return result;
}

unint64_t sub_22F18F948()
{
  result = qword_27DAB1D00;
  if (!qword_27DAB1D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D00);
  }

  return result;
}

unint64_t sub_22F18F9A0()
{
  result = qword_27DAB1D08;
  if (!qword_27DAB1D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D08);
  }

  return result;
}

unint64_t sub_22F18F9F8()
{
  result = qword_27DAB1D10;
  if (!qword_27DAB1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D10);
  }

  return result;
}

unint64_t sub_22F18FA50()
{
  result = qword_27DAB1D18;
  if (!qword_27DAB1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D18);
  }

  return result;
}

unint64_t sub_22F18FAA8()
{
  result = qword_27DAB1D20;
  if (!qword_27DAB1D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D20);
  }

  return result;
}

unint64_t sub_22F18FB00()
{
  result = qword_27DAB1D28;
  if (!qword_27DAB1D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D28);
  }

  return result;
}

unint64_t sub_22F18FB58()
{
  result = qword_27DAB1D30;
  if (!qword_27DAB1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D30);
  }

  return result;
}

unint64_t sub_22F18FBB0()
{
  result = qword_27DAB1D38;
  if (!qword_27DAB1D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D38);
  }

  return result;
}

unint64_t sub_22F18FC08()
{
  result = qword_27DAB1D40;
  if (!qword_27DAB1D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D40);
  }

  return result;
}

unint64_t sub_22F18FC60()
{
  result = qword_27DAB1D48;
  if (!qword_27DAB1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D48);
  }

  return result;
}

unint64_t sub_22F18FCB8()
{
  result = qword_27DAB1D50;
  if (!qword_27DAB1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D50);
  }

  return result;
}

unint64_t sub_22F18FD10()
{
  result = qword_27DAB1D58;
  if (!qword_27DAB1D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D58);
  }

  return result;
}

unint64_t sub_22F18FD68()
{
  result = qword_27DAB1D60;
  if (!qword_27DAB1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D60);
  }

  return result;
}

unint64_t sub_22F18FDC0()
{
  result = qword_27DAB1D68;
  if (!qword_27DAB1D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB1D68);
  }

  return result;
}

unint64_t sub_22F18FE18()
{
  result = qword_2810AAD40;
  if (!qword_2810AAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD40);
  }

  return result;
}

unint64_t sub_22F18FE70()
{
  result = qword_2810AAD48;
  if (!qword_2810AAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD48);
  }

  return result;
}

unint64_t sub_22F18FEC8()
{
  result = qword_2810AAD08;
  if (!qword_2810AAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD08);
  }

  return result;
}

unint64_t sub_22F18FF20()
{
  result = qword_2810AAD10;
  if (!qword_2810AAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD10);
  }

  return result;
}

unint64_t sub_22F18FF78()
{
  result = qword_2810AAD28;
  if (!qword_2810AAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD28);
  }

  return result;
}

unint64_t sub_22F18FFD0()
{
  result = qword_2810AAD30;
  if (!qword_2810AAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AAD30);
  }

  return result;
}

unint64_t sub_22F190028()
{
  result = qword_2810AACC8;
  if (!qword_2810AACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACC8);
  }

  return result;
}

unint64_t sub_22F190080()
{
  result = qword_2810AACD0;
  if (!qword_2810AACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACD0);
  }

  return result;
}

unint64_t sub_22F1900D8()
{
  result = qword_2810AACE8;
  if (!qword_2810AACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACE8);
  }

  return result;
}

unint64_t sub_22F190130()
{
  result = qword_2810AACF0;
  if (!qword_2810AACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AACF0);
  }

  return result;
}

uint64_t sub_22F190184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22F190294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22F1903B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572506F72746E69 && a2 == 0xEC00000077656976 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7377656976657270 && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E65726566657270 && a2 == 0xEF65726F63536563 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x73676174696E75 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_22F742040() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F78FFF0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6172615079616C70 && a2 == 0xEA0000000000736DLL || (sub_22F742040() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x636F4C6F69647561 && a2 == 0xEB00000000656C61 || (sub_22F742040() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022F790010 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365 || (sub_22F742040() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x50746E65746E6F63 && a2 == 0xEF72656469766F72)
  {

    return 15;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

unint64_t sub_22F1908D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22F741E30();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22F190924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1801545072 && a2 == 0xE400000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22F190A34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399981 && a2 == 0xE400000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646E65 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22F190B50(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852399981 && a2 == 0xE400000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696E6E69676562 && a2 == 0xE900000000000067 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646E65 && a2 == 0xE600000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F790070 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t sub_22F190CC0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6369646F6C656DLL && a2 == 0xEB00000000737365 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63697473756F6361 && a2 == 0xEC0000007373656ELL || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E656C6176 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796772656E65 && a2 == 0xE600000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7373656E64756F6CLL && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69626165636E6164 && a2 == 0xEC0000007974696CLL || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7374616562 && a2 == 0xE500000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7172194 && a2 == 0xE300000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_22F190FA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C426F5465646166 && a2 == 0xEB000000006B6361;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756C61566E696167 && a2 == 0xE900000000000065 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7900B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t sub_22F191124(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756C61566E696167 && a2 == 0xE900000000000065;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7900B0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_22F191254(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E656C6176 && a2 == 0xE700000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6173756F7261 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65546C6175736976 && a2 == 0xEB000000006F706DLL || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E696F5074697865 && a2 == 0xEA00000000007374 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696F507972746E65 && a2 == 0xEB0000000073746ELL || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6576456F65646976 && a2 == 0xEB0000000073746ELL)
  {

    return 5;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t sub_22F191468(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43545565746164 && a2 == 0xE700000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4354557372756F68 && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022F7900D0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E756F4379616C70 && a2 == 0xE900000000000074 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E756F4370696B73 && a2 == 0xE900000000000074 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x52646E457473616CLL && a2 == 0xED00006E6F736165 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73656369766564 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022F7900F0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_22F19171C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_22F742040();

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

unint64_t sub_22F191888()
{
  result = qword_2810A8EA0;
  if (!qword_2810A8EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8EA0);
  }

  return result;
}

uint64_t sub_22F19193C(uint64_t a1)
{
  v1 = *(a1 + 288);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

void sub_22F191AA8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22F7419C0();
    type metadata accessor for SongSourceEntry();
    sub_22F1A3328(&unk_27DAB1E28, type metadata accessor for SongSourceEntry, MEMORY[0x277D85378]);
    sub_22F741470();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_22F741A40() || (type metadata accessor for SongSourceEntry(), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_22F0FF590(v1);
      return;
    }

LABEL_17:
    v12 = [v11 identifier];
    if (v12)
    {
      v13 = v12;
      v19 = sub_22F740E20();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_22F13E1A8(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_22F13E1A8((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t MusicCache.read(songSourceIdentifier:readOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a3 + 16);
  v9 = *(a3 + 17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F771340;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v13[0] = v6;
  v13[1] = v7;
  v14 = v8;
  v15 = v9;

  v11 = MusicCache.read(songSourceIdentifiers:readOptions:progressReporter:)(v10, v13);

  return v11;
}

uint64_t MusicCache.MergePolicy.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t MusicCache.ReadOptions.init(sortDescriptors:fetchLimit:shouldReadPlaybackInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  *(a5 + 17) = a4;
  return result;
}

PhotosGraph::MusicCache::WriteOptions __swiftcall MusicCache.WriteOptions.init(mergePolicy:shouldOverwriteSourceSongs:shouldWritePlaybackInfo:shouldPreservePlaybackInfo:)(PhotosGraph::MusicCache::MergePolicy mergePolicy, Swift::Bool shouldOverwriteSourceSongs, Swift::Bool shouldWritePlaybackInfo, Swift::Bool shouldPreservePlaybackInfo)
{
  *v4 = *mergePolicy;
  v4[1] = shouldOverwriteSourceSongs;
  v4[2] = shouldWritePlaybackInfo;
  v4[3] = shouldPreservePlaybackInfo;
  result.mergePolicy = mergePolicy;
  return result;
}

uint64_t sub_22F191FAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E58, &qword_22F7774E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F770DF0;
  *(inited + 32) = sub_22F740E20();
  *(inited + 40) = v1;
  *(inited + 48) = 1;
  *(inited + 56) = sub_22F740E20();
  *(inited + 64) = v2;
  *(inited + 72) = 1;
  v3 = sub_22F14E41C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1E60, qword_22F7774E8);
  result = swift_arrayDestroy();
  qword_2810AC290 = v3;
  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicCache.readMusicCacheInfo()(PhotosGraph::MusicCacheInfo_optional *__return_ptr retstr)
{
  if (qword_2810A9BF8[0] != -1)
  {
    swift_once();
  }

  v3 = qword_2810B4EA8;
  *&v4 = CACurrentMediaTime();
  sub_22F1B560C("MusicCacheReadInfo", 18, 2u, v4, 0, v3, v8);
  sub_22F1A2878(v9);
  v5 = memcpy(v7, v9, sizeof(v7));
  MEMORY[0x28223BE20](v5);
  sub_22F7417A0();
  if (v1)
  {

    memcpy(v6, v7, sizeof(v6));
    sub_22F120ADC(v6, &unk_27DAB1D90, &qword_22F7771A8);
  }

  else
  {
    sub_22F1B2BBC(0);

    memcpy(retstr, v7, 0x130uLL);
  }
}

void MusicCache.removeAll(progressReporter:)()
{
  sub_22F741710();
  sub_22F7417A0();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MusicCache.write(musicCacheInfo:)(PhotosGraph::MusicCacheInfo *musicCacheInfo)
{
  memcpy(v6, musicCacheInfo, sizeof(v6));
  if (qword_2810A9BF8[0] != -1)
  {
    swift_once();
  }

  v2 = qword_2810B4EA8;
  *&v3 = CACurrentMediaTime();
  v4 = sub_22F1B560C("MusicCacheWriteInfo", 19, 2u, v3, 0, v2, &v5);
  MEMORY[0x28223BE20](v4);
  sub_22F7417A0();
  if (!v1)
  {
    sub_22F1B2BBC(0);
  }
}

char *sub_22F192688(char *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22F73F470();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v24 = a1;
  sub_22F73F410();
  sub_22F73F420();
  v15 = *(v6 + 8);
  v15(v11, v5);
  v16 = OBJC_IVAR___PGMusicCache_cacheURL;
  (*(v6 + 32))(&v3[OBJC_IVAR___PGMusicCache_cacheURL], v14, v5);
  (*(v6 + 16))(v8, &v3[v16], v5);
  v17 = sub_22F1A1BBC(v8);
  if (v2)
  {
    v15(v24, v5);
    v15(v8, v5);
    v15(&v3[v16], v5);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v17;
    v15(v8, v5);
    *&v3[OBJC_IVAR___PGMusicCache_persistentStoreCoordinator] = v18;
    v19 = objc_allocWithZone(MEMORY[0x277CBE440]);
    v20 = v18;
    v21 = [v19 initWithConcurrencyType_];
    [v21 setPersistentStoreCoordinator_];

    *&v3[OBJC_IVAR___PGMusicCache_managedObjectContext] = v21;
    v25.receiver = v3;
    v25.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v25, sel_init);
    v15(v24, v5);
  }

  return v3;
}

void sub_22F192984(uint64_t a1)
{
  v62[3] = *MEMORY[0x277D85DE8];
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v4 = sub_22F740DF0();

  v5 = [v3 initWithEntityName_];

  v6 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v6 setResultType_];
  v7 = *(a1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v62[0] = 0;
  v8 = [v7 executeRequest:v6 error:v62];
  if (!v8)
  {
    v39 = v62[0];
    sub_22F73F370();

    swift_willThrow();
    goto LABEL_10;
  }

  v9 = v8;
  v10 = v62[0];

  sub_22F7416A0();
  if (v1)
  {
LABEL_10:

    return;
  }

  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v12 = sub_22F740DF0();

  v13 = [v11 initWithEntityName_];

  v14 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v14 setResultType_];
  v62[0] = 0;
  v15 = [v7 executeRequest:v14 error:v62];
  if (!v15)
  {
    v40 = v62[0];
    sub_22F73F370();

    swift_willThrow();
    v6 = v14;
    goto LABEL_10;
  }

  v16 = v15;
  v17 = v62[0];

  sub_22F7416A0();
  v18 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v19 = sub_22F740DF0();

  v20 = [v18 initWithEntityName_];

  v21 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v21 setResultType_];
  v62[0] = 0;
  v22 = [v7 executeRequest:v21 error:v62];
  if (!v22)
  {
    v41 = v62[0];
    sub_22F73F370();

    swift_willThrow();
    v6 = v21;
    goto LABEL_10;
  }

  v23 = v22;
  v24 = v62[0];

  sub_22F7416A0();
  swift_beginAccess();
  v25 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v26 = sub_22F740DF0();

  v27 = [v25 initWithEntityName_];

  v28 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v28 setResultType_];
  v61 = 0;
  v29 = [v7 executeRequest:v28 error:&v61];
  if (!v29)
  {
    v42 = v61;
    sub_22F73F370();

    swift_willThrow();
    v6 = v28;
    goto LABEL_10;
  }

  v30 = v29;
  v31 = v61;

  sub_22F7416A0();
  v59 = v28;
  v32 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v33 = sub_22F740DF0();

  v34 = [v32 initWithEntityName_];

  v35 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v35 setResultType_];
  v61 = 0;
  v36 = [v7 executeRequest:v35 error:&v61];
  if (!v36)
  {
    v43 = v61;
    sub_22F73F370();

    swift_willThrow();
    v6 = v35;
    goto LABEL_10;
  }

  v37 = v36;
  v38 = v61;

  sub_22F7416A0();
  v44 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v45 = sub_22F740DF0();

  v46 = [v44 initWithEntityName_];

  v47 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  [v47 setResultType_];
  v61 = 0;
  v48 = [v7 executeRequest:v47 error:&v61];
  if (!v48)
  {
    v52 = v61;
    sub_22F73F370();

    swift_willThrow();
LABEL_18:

    v6 = v47;
    goto LABEL_10;
  }

  v49 = v48;
  v50 = v61;

  sub_22F7416A0();
  v60 = v21;
  [v7 reset];
  v61 = 0;
  if (![v7 save_])
  {
    v53 = v61;
    v54 = sub_22F73F370();

    swift_willThrow();
    swift_getErrorValue();
    v55 = sub_22F7420F0();
    v57 = v56;
    sub_22F1A297C();
    swift_allocError();
    *v58 = v55;
    *(v58 + 8) = v57;
    *(v58 + 16) = 0;
    swift_willThrow();

    goto LABEL_18;
  }

  v51 = v61;
  sub_22F7416A0();
}

void sub_22F193238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v12 = sub_22F740DF0();

  v13 = [v11 initWithEntityName_];

  [v13 setPredicate_];
  v14 = *(a2 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for SongSourceEntry();
  v15 = sub_22F7417B0();
  if (v8)
  {
  }

  else
  {
    v16 = v15;
    sub_22F7416A0();
    v29 = v13;
    if (v16 >> 62)
    {
      goto LABEL_21;
    }

    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v18 = a6;
    if (v17)
    {
      v19 = 0;
      do
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x2319016F0](v19, v16);
          v18 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            sub_22F741A00();
            v17 = sub_22F741A00();
            goto LABEL_5;
          }

          v20 = *(v16 + 8 * v19 + 32);
          v18 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_15;
          }
        }

        [v14 deleteObject_];
        sub_22F741680();

        ++v19;
        v21 = v18 == v17;
        v18 = a6;
      }

      while (!v21);
    }

    sub_22F1A3370(v18, v14);
    sub_22F1A35D0(a8);
    v32[0] = 0;
    if ([v14 save_])
    {
      v22 = v32[0];
      sub_22F7416A0();
    }

    else
    {
      v23 = v32[0];
      v24 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v25 = sub_22F7420F0();
      v27 = v26;
      sub_22F1A297C();
      swift_allocError();
      *v28 = v25;
      *(v28 + 8) = v27;
      *(v28 + 16) = 0;
      swift_willThrow();
    }
  }
}

uint64_t sub_22F1935BC(uint64_t a1)
{
  result = sub_22F741690();
  if (!v1)
  {
    v8 = MEMORY[0x277D84F90];
    v3 = sub_22F7416D0();
    v5 = v4;
    v7 = v6;
    MEMORY[0x28223BE20](v3);
    sub_22F7417A0();

    return v8;
  }

  return result;
}

void sub_22F1936EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v43 = a6;
  v41 = a4;
  v42 = a5;
  v39 = a3;
  v8 = type metadata accessor for SongSource(0);
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = (v34 - v12);
  v14 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v15 = sub_22F740DF0();

  v16 = [v14 initWithEntityName_];

  [v16 setPredicate_];
  type metadata accessor for SongSourceEntry();
  v17 = sub_22F7417B0();
  if (v6)
  {
  }

  else
  {
    v18 = v17;
    v38 = v10;
    sub_22F7416A0();
    v37 = v18 >> 62;
    if (v18 >> 62)
    {
      goto LABEL_26;
    }

    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v34[0] = v16;
    if (v19)
    {
      v20 = 0;
      v35 = v19;
      v36 = v18 & 0xC000000000000001;
      v21 = (v18 & 0xFFFFFFFFFFFFFF8);
      v39 = v18 & 0xFFFFFFFFFFFFFF8;
      if (v18 < 0)
      {
        v21 = v18;
      }

      v34[1] = v21;
      v16 = v38;
      do
      {
        if (v36)
        {
          v23 = MEMORY[0x2319016F0](v20, v18);
          v22 = v41;
          v24 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          v22 = v41;
          if (v20 >= *(v39 + 16))
          {
            goto LABEL_25;
          }

          v23 = *(v18 + 8 * v20 + 32);
          v24 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            v19 = sub_22F741A00();
            goto LABEL_5;
          }
        }

        v25 = v18;
        v26 = v23;
        sub_22F193B18(v26, v13);
        sub_22F1A39E0(v13, v16, type metadata accessor for SongSource);
        v27 = *v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v22 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = sub_22F13E508(0, v27[2] + 1, 1, v27);
          *v22 = v27;
        }

        v30 = v27[2];
        v29 = v27[3];
        v31 = v40;
        if (v30 >= v29 >> 1)
        {
          v33 = sub_22F13E508((v29 > 1), v30 + 1, 1, v27);
          v31 = v40;
          v27 = v33;
          *v41 = v33;
        }

        v27[2] = v30 + 1;
        v32 = v27 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v30;
        v16 = v38;
        sub_22F1A3A48(v38, v32, type metadata accessor for SongSource);
        if (v37)
        {
          sub_22F741A00();
        }

        sub_22F741680();
        sub_22F1A3AB0(v13, type metadata accessor for SongSource);

        ++v20;
        v18 = v25;
      }

      while (v24 != v35);
    }

    sub_22F7416A0();
    sub_22F7416A0();
  }
}

void sub_22F193B18(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = v66 - v10;
  v12 = [a1 identifier];
  if (!v12)
  {
    sub_22F1A297C();
    swift_allocError();
    *v22 = xmmword_22F777150;
    *(v22 + 16) = 2;
    swift_willThrow();

    return;
  }

  v13 = v12;
  v14 = sub_22F740E20();
  v16 = v15;

  *a2 = v14;
  a2[1] = v16;
  v66[3] = v16;
  v17 = [a1 version];
  v67 = v2;
  if (v17)
  {
    v18 = v17;
    v19 = sub_22F740E20();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v23 = type metadata accessor for SongSource(0);
  v24 = (a2 + v23[11]);
  *v24 = v19;
  v24[1] = v21;
  v25 = [a1 category];
  if (v25)
  {
    v26 = v25;
    v27 = sub_22F740E20();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = (a2 + v23[12]);
  *v30 = v27;
  v30[1] = v29;
  v31 = [a1 dateLastUpdated];
  if (v31)
  {
    v32 = v31;
    sub_22F73F640();

    v33 = sub_22F73F690();
    (*(*(v33 - 8) + 56))(v11, 0, 1, v33);
  }

  else
  {
    v34 = sub_22F73F690();
    (*(*(v34 - 8) + 56))(v11, 1, 1, v34);
  }

  v66[0] = v23[5];
  sub_22F1207AC(v11, a2 + v66[0], &qword_27DAB0920, &qword_22F770B20);
  v35 = [a1 songs];
  if (v35)
  {
    type metadata accessor for SongEntry();
    sub_22F1A3328(&qword_2810A9520, type metadata accessor for SongEntry, MEMORY[0x277D85378]);
    v36 = sub_22F741420();

    if ((v36 & 0xC000000000000001) != 0)
    {
      v35 = sub_22F741A00();
    }

    else
    {
      v35 = *(v36 + 16);
    }
  }

  *(a2 + v23[6]) = v35;
  v37 = [a1 date];
  v66[1] = v29;
  v66[2] = v21;
  if (v37)
  {
    v38 = v37;
    sub_22F73F640();

    v39 = 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = sub_22F73F690();
  (*(*(v40 - 8) + 56))(v7, v39, 1, v40);
  v41 = v23[7];
  sub_22F1207AC(v7, a2 + v41, &qword_27DAB0920, &qword_22F770B20);
  v42 = [a1 geohash];
  if (v42)
  {
    v43 = sub_22F740E20();
    v45 = v44;

    v46 = (a2 + v23[8]);
    *v46 = v43;
    v46[1] = v45;
    *(a2 + v23[13]) = 1;
    type metadata accessor for Geohash();
    inited = swift_initStackObject();
    *(inited + 16) = 0;
    *(inited + 24) = 0;

    v48 = v67;
    sub_22F34B9D8(v43, v45, v49);
    if (v48)
    {

      swift_setDeallocating();

      sub_22F120ADC(a2 + v66[0], &qword_27DAB0920, &qword_22F770B20);
      sub_22F120ADC(a2 + v41, &qword_27DAB0920, &qword_22F770B20);

      return;
    }

    v57 = v50;
    v58 = v51;
    v59 = v52;
    v60 = v53;

    v61 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:(v57 + v58) * 0.5 longitude:(v59 + v60) * 0.5];
    swift_setDeallocating();

    [v61 coordinate];
    v62 = a2 + v23[9];
    *v62 = v63;
    v62[8] = 0;
    [v61 coordinate];
    v65 = v64;

    v56 = v23[10];
    *(a2 + v56) = v65;
  }

  else
  {

    v54 = (a2 + v23[8]);
    *v54 = 0;
    v54[1] = 0;
    *(a2 + v23[13]) = 1;
    v55 = a2 + v23[9];
    *v55 = 0;
    v55[8] = 1;
    v56 = v23[10];
    *(a2 + v56) = 0;
  }

  *(a2 + v56 + 8) = v42 == 0;
}

uint64_t static MusicCache.temporaryCacheDirectoryURL()@<X0>(uint64_t a1@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22F73F6D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22F73F470();
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = NSTemporaryDirectory();
  sub_22F740E20();

  sub_22F73F3C0();

  sub_22F73F6C0();
  sub_22F73F6A0();
  (*(v3 + 8))(v5, v2);
  sub_22F73F410();

  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  sub_22F73F450();
  v12 = sub_22F740DF0();

  LOBYTE(v5) = [v11 fileExistsAtPath_];

  if (v5)
  {
    return (*(v6 + 8))(v8, v23);
  }

  v14 = v23;
  v15 = [v10 defaultManager];
  v16 = sub_22F73F3F0();
  v24[0] = 0;
  v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v24];

  if (v17)
  {
    v18 = *(v6 + 8);
    v19 = v24[0];
    return v18(v8, v14);
  }

  else
  {
    v20 = v24[0];
    sub_22F73F370();

    swift_willThrow();
    v21 = *(v6 + 8);
    v21(a1, v14);
    return (v21)(v8, v14);
  }
}

id MusicCache.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCache.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MusicCache.removeSongSources(songSourceCategory:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F771340;
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  MusicCache.removeSongSources(songSourceCategories:progressReporter:)(v6, a3);
}

void MusicCache.removeSongSources(songSourceCategories:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v3 = swift_allocObject();
  v18 = xmmword_22F770DF0;
  *(v3 + 16) = xmmword_22F770DF0;
  *(v3 + 56) = MEMORY[0x277D837D0];
  v4 = sub_22F153470();
  *(v3 + 64) = v4;
  *(v3 + 32) = 0x79726F6765746163;
  *(v3 + 40) = 0xE800000000000000;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v3 + 96) = v5;
  v6 = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277CC9C50]);
  *(v3 + 104) = v6;
  *(v3 + 72) = a1;

  v7 = sub_22F741560();
  v8 = swift_allocObject();
  *(v8 + 16) = v18;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = v4;
  *(v8 + 32) = 0x79726F6765746163;
  *(v8 + 40) = 0xE800000000000000;
  *(v8 + 96) = v5;
  *(v8 + 104) = v6;
  *(v8 + 72) = a1;

  v9 = sub_22F741560();
  v10 = v7;
  sub_22F741690();
  if (v25)
  {
  }

  else
  {
    v11 = sub_22F7416F0();
    v25 = &v17;
    v12 = v20;
    v13 = v21;
    v15 = v22;
    v14 = v23;
    v16 = v24;
    MEMORY[0x28223BE20](v11);
    sub_22F7417A0();
  }
}

uint64_t MusicCache.readSongSources(songSourceCategory:progressReporter:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F771340;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22F770DF0;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_22F153470();
  *(v5 + 32) = 0x79726F6765746163;
  *(v5 + 40) = 0xE800000000000000;
  *(v5 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v5 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277CC9C50]);
  *(v5 + 72) = v4;

  v6 = sub_22F741560();
  v7 = sub_22F1935BC(v6);

  return v7;
}

void sub_22F194CB0(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v5 = sub_22F740DF0();

  v6 = [v4 initWithEntityName_];

  type metadata accessor for MusicCacheInfoEntry();
  v7 = sub_22F7417B0();
  if (v2)
  {

    return;
  }

  if (!(v7 >> 62))
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:

    goto LABEL_15;
  }

  v21 = v7;
  v22 = sub_22F741A00();
  v7 = v21;
  if (!v22)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x2319016F0](0);
LABEL_8:
    v9 = v8;

    if (v9)
    {
      sub_22F1A3B10(v25);
      v10 = v9;
      v11 = [v10 musicBagContentsAsData];
      if (v11)
      {
        v12 = v11;
        v13 = sub_22F73F510();
        v15 = v14;

        sub_22F73F310();
        swift_allocObject();
        sub_22F73F300();
        sub_22F1A3B3C();
        sub_22F73F2F0();
        sub_22F133BF0(v13, v15);

        memcpy(v23, __src, sizeof(v23));
        GEOLocationCoordinate2DMake();
        v16 = v23;
      }

      else
      {
        v16 = v25;
      }

      memcpy(__dst, v16, sizeof(__dst));
      v17 = [v10 version];
      v18 = sub_22F740E20();
      v20 = v19;

      __src[0] = v18;
      __src[1] = v20;
      memcpy(&__src[2], __dst, 0x120uLL);
      GEOLocationCoordinate2DMake();
      memcpy(v27, __src, sizeof(v27));
      goto LABEL_16;
    }

LABEL_15:

    sub_22F1A2878(v27);
LABEL_16:
    memcpy(__src, a2, sizeof(__src));
    memcpy(a2, v27, 0x130uLL);
    sub_22F120ADC(__src, &unk_27DAB1D90, &qword_22F7771A8);
    return;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v7 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_22F194FB0(uint64_t a1, const void *a2)
{
  __dst[38] = *MEMORY[0x277D85DE8];
  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v6 = sub_22F740DF0();

  v7 = [v5 initWithEntityName_];

  v8 = *(a1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for MusicCacheInfoEntry();
  v9 = sub_22F7417B0();
  if (!v2)
  {
    v10 = v9;
    if (v9 >> 62)
    {
      v11 = sub_22F741A00();
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
LABEL_4:
        if (v11 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v11; ++i)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x2319016F0](i, v10);
          }

          else
          {
            v13 = *(v10 + 8 * i + 32);
          }

          v14 = v13;
          [v8 deleteObject_];
        }
      }
    }

    memcpy(__dst, a2, 0x130uLL);

    __dst[0] = 0;
    if ([v8 save_])
    {
      v15 = __dst[0];
    }

    else
    {
      v16 = __dst[0];
      v17 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v18 = sub_22F7420F0();
      v20 = v19;
      sub_22F1A297C();
      swift_allocError();
      *v21 = v18;
      *(v21 + 8) = v20;
      *(v21 + 16) = 0;
      swift_willThrow();
    }
  }
}

void sub_22F19530C(uint64_t a1)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v4 = sub_22F740DF0();

  v5 = [v3 initWithEntityName_];

  v6 = *(a1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for MusicCacheInfoEntry();
  v7 = sub_22F7417B0();
  if (!v1)
  {
    v8 = v7;
    if (v7 >> 62)
    {
      v9 = sub_22F741A00();
      if (v9)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_4:
        if (v9 < 1)
        {
          __break(1u);
        }

        for (i = 0; i != v9; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x2319016F0](i, v8);
          }

          else
          {
            v11 = *(v8 + 8 * i + 32);
          }

          v12 = v11;
          [v6 deleteObject_];
        }
      }
    }

    v20[0] = 0;
    if ([v6 save_])
    {
      v13 = v20[0];
    }

    else
    {
      v14 = v20[0];
      v15 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v16 = sub_22F7420F0();
      v18 = v17;
      sub_22F1A297C();
      swift_allocError();
      *v19 = v16;
      *(v19 + 8) = v18;
      *(v19 + 16) = 0;
      swift_willThrow();
    }
  }
}

uint64_t MusicCache.readCacherStatus(category:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v6 = sub_22F740AD0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v10 = *(v7 + 8);
  v10(v9, v6);
  v11 = type metadata accessor for CacherStatus(0);
  v12 = (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  MEMORY[0x28223BE20](v12);
  v13 = v17;
  *(&v16 - 4) = a1;
  *(&v16 - 3) = v13;
  *(&v16 - 2) = v3;
  *(&v16 - 1) = a3;
  v14 = v18;
  sub_22F7417A0();
  if (v14)
  {
    return sub_22F120ADC(a3, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  sub_22F741730();
  sub_22F740AC0();
  sub_22F740A90();
  return (v10)(v9, v6);
}

void sub_22F1957C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v27 - v8);
  v10 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v11 = sub_22F740DF0();

  v12 = [v10 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_22F770DF0;
  v14 = MEMORY[0x277D837D0];
  *(v13 + 56) = MEMORY[0x277D837D0];
  v15 = sub_22F153470();
  *(v13 + 32) = 0x79726F6765746163;
  *(v13 + 40) = 0xE800000000000000;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 64) = v15;
  *(v13 + 72) = a1;
  *(v13 + 80) = a2;

  v16 = sub_22F741560();
  [v12 setPredicate_];

  type metadata accessor for CacherStatusEntry();
  v17 = sub_22F7417B0();
  if (v4)
  {

    return;
  }

  v18 = v28;
  if (!(v17 >> 62))
  {
    v19 = v28;
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_12;
  }

  v24 = v17;
  v25 = sub_22F741A00();
  v17 = v24;
  v19 = v18;
  if (!v25)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x2319016F0](0);
LABEL_8:
    v21 = v20;

    if (v21)
    {
      v22 = v21;
      sub_22F1F05C0(v9);

      v23 = type metadata accessor for CacherStatus(0);
      (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
LABEL_13:
      sub_22F1A394C(v9, v19);
      return;
    }

LABEL_12:

    v26 = type metadata accessor for CacherStatus(0);
    (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    goto LABEL_13;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(v17 + 32);
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t MusicCache.readAllCacherStatus(progressReporter:)()
{
  v1 = sub_22F740AD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v5 = *(v2 + 8);
  v5(v4, v1);
  v6 = sub_22F7416B0();
  v8 = v7;
  v12[0] = v1;
  v13 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v6);
  v12[-4] = v0;
  v12[-3] = v9;
  v12[-2] = &v13;
  v12[-1] = v8;
  v10 = v12[1];
  sub_22F7417A0();
  if (v10)
  {
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v5(v4, v12[0]);
    return v13;
  }
}

void sub_22F195D50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v48 = a4;
  v57 = a3;
  v58 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = type metadata accessor for CacherStatus(0);
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v15 = sub_22F740DF0();

  v16 = [v14 initWithEntityName_];

  type metadata accessor for CacherStatusEntry();
  v17 = sub_22F7417B0();
  if (v4)
  {

    return;
  }

  v18 = v17;
  v47 = v16;
  v52 = v13;
  v53 = v11;
  v54 = v7;
  v55 = v10;
  sub_22F7416A0();
  v46 = 0;
  v19 = v47;
  if (!(v18 >> 62))
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_25:

LABEL_26:
    sub_22F7416A0();

    return;
  }

  v20 = sub_22F741A00();
  if (!v20)
  {
    goto LABEL_25;
  }

LABEL_5:
  if (v20 >= 1)
  {
    v21 = 0;
    v49 = v18 & 0xC000000000000001;
    v50 = v20;
    v22 = v55;
    v51 = v18;
    do
    {
      if (v49)
      {
        v23 = MEMORY[0x2319016F0](v21, v18);
      }

      else
      {
        v23 = *(v18 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = [v23 category];
      if (v25)
      {
        v26 = v25;
        v58 = sub_22F740E20();
        v28 = v27;
      }

      else
      {
        v58 = 0;
        v28 = 0;
      }

      v29 = [v24 lastSuccessfulFetchedDate];
      if (v29)
      {
        v30 = v29;
        sub_22F73F640();

        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      v32 = sub_22F73F690();
      v33 = *(*(v32 - 8) + 56);
      v34 = 1;
      v33(v22, v31, 1, v32);
      v35 = [v24 lastFailedFetchedDate];
      v36 = v54;
      if (v35)
      {
        v37 = v35;
        sub_22F73F640();

        v34 = 0;
      }

      v33(v36, v34, 1, v32);
      v39 = v52;
      v38 = v53;
      *v52 = v58;
      *(v39 + 8) = v28;
      v22 = v55;
      sub_22F1207AC(v55, v39 + *(v38 + 20), &qword_27DAB0920, &qword_22F770B20);
      sub_22F1207AC(v36, v39 + *(v38 + 24), &qword_27DAB0920, &qword_22F770B20);
      v40 = v57;
      v41 = *v57;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v40 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v41 = sub_22F13E530(0, v41[2] + 1, 1, v41);
        *v40 = v41;
      }

      v44 = v41[2];
      v43 = v41[3];
      if (v44 >= v43 >> 1)
      {
        *v40 = sub_22F13E530((v43 > 1), v44 + 1, 1, v41);
      }

      ++v21;

      v45 = *v40;
      *(v45 + 16) = v44 + 1;
      sub_22F1A3A48(v39, v45 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v44, type metadata accessor for CacherStatus);
      v18 = v51;
    }

    while (v50 != v21);

    v19 = v47;
    goto LABEL_26;
  }

  __break(1u);
}

uint64_t MusicCache.write(cacherStatus:)(uint64_t *a1)
{
  v4 = sub_22F740AD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  if (v8)
  {
    v17 = v2;
    v9 = *a1;
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    v10 = qword_2810A8E88;
    sub_22F740AC0();
    v16[1] = v10;
    sub_22F740A90();
    v11 = *(v5 + 8);
    v12 = v11(v7, v4);
    MEMORY[0x28223BE20](v12);
    v16[-4] = v9;
    v16[-3] = v8;
    v16[-2] = v1;
    v16[-1] = a1;
    v13 = v17;
    result = sub_22F7417A0();
    if (!v13)
    {
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      return v11(v7, v4);
    }
  }

  else
  {
    sub_22F1A297C();
    swift_allocError();
    *v15 = xmmword_22F777160;
    *(v15 + 16) = 2;
    return swift_willThrow();
  }

  return result;
}

void sub_22F196484(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v9 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v10 = sub_22F740DF0();

  v11 = [v9 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22F770DF0;
  v13 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v14 = sub_22F153470();
  *(v12 + 32) = 0x79726F6765746163;
  *(v12 + 40) = 0xE800000000000000;
  *(v12 + 96) = v13;
  *(v12 + 104) = v14;
  *(v12 + 64) = v14;
  *(v12 + 72) = a1;
  *(v12 + 80) = a2;

  v15 = sub_22F741560();
  [v11 setPredicate_];

  v16 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  type metadata accessor for CacherStatusEntry();
  v17 = sub_22F7417B0();
  if (!v4)
  {
    if (v17 >> 62)
    {
      v20 = v17;
      v21 = sub_22F741A00();
      v17 = v20;
      if (v21)
      {
        goto LABEL_5;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_5:
      if ((v17 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x2319016F0](0);
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v18 = *(v17 + 32);
      }

      v19 = v18;

      sub_22F1F0818(a4);
      goto LABEL_11;
    }

    v19 = sub_22F1F220C(v16, a4);
LABEL_11:

    v29[0] = 0;
    if ([v16 save_])
    {
      v22 = v29[0];
    }

    else
    {
      v23 = v29[0];
      v24 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v25 = sub_22F7420F0();
      v27 = v26;
      sub_22F1A297C();
      swift_allocError();
      *v28 = v25;
      *(v28 + 8) = v27;
      *(v28 + 16) = 0;
      swift_willThrow();
    }
  }
}

void MusicCache.removeCacherStatus(songSourceCategories:progressReporter:)(uint64_t a1)
{
  if (a1)
  {
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_22F770DF0;
    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 64) = sub_22F153470();
    *(v3 + 32) = 0x79726F6765746163;
    *(v3 + 40) = 0xE800000000000000;
    *(v3 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    *(v3 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277CC9C50]);
    *(v3 + 72) = a1;

    v4 = sub_22F741560();
  }

  else
  {
    v4 = 0;
  }

  sub_22F741690();
  if (!v1)
  {
    v5 = sub_22F7416B0();
    v7 = v6;
    MEMORY[0x28223BE20](v5);
    sub_22F7417A0();
  }
}

void sub_22F1969BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  sub_22F1A3370(a2, v4);
  if (!v3)
  {
    v12[0] = 0;
    if ([v4 save_])
    {
      v5 = v12[0];
      sub_22F7416A0();
    }

    else
    {
      v6 = v12[0];
      v7 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v8 = sub_22F7420F0();
      v10 = v9;
      sub_22F1A297C();
      swift_allocError();
      *v11 = v8;
      *(v11 + 8) = v10;
      *(v11 + 16) = 0;
      swift_willThrow();
    }
  }
}

uint64_t MusicCache.read(readOptions:progressReporter:)(__int128 *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return sub_22F196B2C(0, &v5, a2);
}

uint64_t sub_22F196B2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v20 = a3;
  v19 = a1;
  v5 = sub_22F740AD0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  v18 = *(a2 + 17);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v12 = *(v6 + 8);
  v13 = v12(v8, v5);
  v17 = v5;
  v22 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v13);
  *(&v16 - 8) = &v22;
  *(&v16 - 7) = v3;
  *(&v16 - 6) = v19;
  *(&v16 - 5) = v9;
  *(&v16 - 4) = v10;
  *(&v16 - 24) = v11;
  *(&v16 - 23) = v18;
  v14 = v21;
  *(&v16 - 2) = v20;
  sub_22F7417A0();
  if (v14)
  {
  }

  sub_22F741730();
  sub_22F740AC0();
  sub_22F740A90();
  v12(v8, v17);
  return v22;
}

uint64_t MusicCache.read(adamIDs:readOptions:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F770DF0;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_22F153470();
  *(v8 + 32) = 0x44496D616461;
  *(v8 + 40) = 0xE600000000000000;
  *(v8 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v8 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277CC9C50]);
  *(v8 + 72) = a1;

  v9 = sub_22F741560();
  v13[0] = v5;
  v13[1] = v4;
  v14 = v6;
  v15 = v7;
  v10 = sub_22F196B2C(v9, v13, a3);

  return v10;
}

uint64_t MusicCache.read(songSourceCategories:progressReporter:)(uint64_t a1)
{
  v2 = sub_22F740AD0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F770DF0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_22F153470();
  *(v6 + 32) = 0x79726F6765746163;
  *(v6 + 40) = 0xE800000000000000;
  *(v6 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v6 + 104) = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277CC9C50]);
  *(v6 + 72) = a1;

  v7 = sub_22F741560();
  v19 = v7;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v8 = *(v3 + 8);
  v8(v5, v2);
  v9 = sub_22F7416B0();
  v11 = v10;
  v18 = v2;
  v21 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v9);
  *(&v18 - 10) = v7;
  *(&v18 - 9) = v12;
  *(&v18 - 8) = v13;
  *(&v18 - 7) = v11;
  *(&v18 - 6) = 0;
  *(&v18 - 5) = &v21;
  *(&v18 - 4) = 0;
  *(&v18 - 3) = 0;
  *(&v18 - 8) = 1;
  v14 = v20;
  sub_22F7417A0();
  if (v14)
  {

    v15 = v19;
  }

  else
  {
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v17 = v19;

    v8(v5, v18);
    return v21;
  }
}

uint64_t MusicCache.read(adamIDs:songSourceCategories:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a3;
  v5 = sub_22F740AD0();
  v6 = *(v5 - 8);
  v32 = v5;
  v33 = v6;
  MEMORY[0x28223BE20](v5);
  v31 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v8 = swift_allocObject();
  v28 = xmmword_22F770DF0;
  *(v8 + 16) = xmmword_22F770DF0;
  *(v8 + 56) = MEMORY[0x277D837D0];
  v9 = sub_22F153470();
  *(v8 + 64) = v9;
  *(v8 + 32) = 0x79726F6765746163;
  *(v8 + 40) = 0xE800000000000000;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v8 + 96) = v10;
  v11 = sub_22F16BC6C(&qword_2810A92D0, &qword_27DAB0E90, &qword_22F7714A0, MEMORY[0x277CC9C50]);
  *(v8 + 104) = v11;
  *(v8 + 72) = a2;

  v12 = sub_22F741560();
  v13 = swift_allocObject();
  *(v13 + 16) = v28;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = v9;
  *(v13 + 32) = 0x44496D616461;
  *(v13 + 40) = 0xE600000000000000;
  *(v13 + 96) = v10;
  *(v13 + 104) = v11;
  *(v13 + 72) = a1;

  v14 = sub_22F741560();
  v15 = v12;
  *&v28 = v14;
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  v16 = v31;
  sub_22F740AC0();
  sub_22F740A90();
  v17 = *(v33 + 8);
  v33 += 8;
  v17(v16, v32);
  v18 = sub_22F7416B0();
  v20 = v19;
  v34 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v18);
  *(&v28 - 10) = v12;
  *(&v28 - 9) = v21;
  *(&v28 - 8) = v22;
  *(&v28 - 7) = v20;
  *(&v28 - 6) = v14;
  *(&v28 - 5) = &v34;
  *(&v28 - 4) = 0;
  *(&v28 - 3) = 0;
  *(&v28 - 8) = 1;
  v23 = v30;
  sub_22F7417A0();
  if (v23)
  {

    v24 = v28;
  }

  else
  {
    sub_22F741730();
    v26 = v31;
    sub_22F740AC0();
    sub_22F740A90();

    v27 = v28;

    v17(v26, v32);
    return v34;
  }
}

uint64_t MusicCache.readSongsWithoutALastRefreshAttemptDate(progressReporter:)(uint64_t a1)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F771340;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_22F153470();
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x800000022F790200;
  v3 = sub_22F741560();
  v7[0] = 0;
  v7[1] = 0;
  v8 = 1;
  v4 = v3;
  v5 = sub_22F196B2C(v3, v7, a1);

  return v5;
}

uint64_t MusicCache.readSongsOrderedByLastRefreshAttemptDate(before:limit:ascending:progressReporter:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F7707D0;
  v7 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  v8 = sub_22F153470();
  *(v6 + 32) = 0xD000000000000016;
  *(v6 + 40) = 0x800000022F790200;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 64) = v8;
  *(v6 + 72) = 0xD000000000000016;
  *(v6 + 80) = 0x800000022F790200;
  v9 = sub_22F73F5B0();
  *(v6 + 136) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v6 + 144) = sub_22F15FD58();
  *(v6 + 112) = v9;
  v10 = sub_22F741560();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22F771EB0;
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = sub_22F740DF0();
  v14 = [v12 initWithKey:v13 ascending:a3 & 1];

  *(v11 + 32) = v14;
  v19[0] = v11;
  v19[1] = a2;
  v20 = 0;
  v15 = v10;
  v16 = sub_22F196B2C(v10, v19, a4);

  return v16;
}

void sub_22F1979DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7)
{
  v10[0] = a4;
  v10[1] = a5;
  v11 = a6;
  sub_22F197A4C(*(a2 + OBJC_IVAR___PGMusicCache_managedObjectContext), a3, v10);
  if (!v7)
  {
    *a1 = v9;
  }
}

void sub_22F197A4C(void *a1, uint64_t a2, uint64_t a3)
{
  v105 = a2;
  v111 = a1;
  v5 = type metadata accessor for Song(0);
  v96 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22F740AD0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 8);
  v104 = *a3;
  v13 = *(a3 + 16);
  v14 = *(a3 + 17);
  sub_22F741690();
  if (!v3)
  {
    LODWORD(v99) = v13;
    v103 = v12;
    v98 = v14;
    v102 = v11;
    v100 = v8;
    v94 = v7;
    v90 = sub_22F7416B0();
    v89 = v15;
    v16 = objc_allocWithZone(MEMORY[0x277CBE428]);

    v17 = sub_22F740DF0();

    v18 = [v16 initWithEntityName_];

    [v18 setPredicate_];
    [v18 setReturnsObjectsAsFaults_];
    if (v104)
    {
      sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
      v19 = sub_22F741160();
    }

    else
    {
      v19 = 0;
    }

    v20 = v102;
    v21 = v103;
    v22 = v99;
    [v18 setSortDescriptors_];

    if ((v22 & 1) == 0)
    {
      [v18 setFetchLimit_];
    }

    v23 = type metadata accessor for SongEntry();
    v24 = sub_22F7417B0();
    v87 = v23;
    v25 = v24;
    sub_22F7416A0();
    v26 = v25 >> 62;
    v81 = v18;
    v27 = v25 & 0xFFFFFFFFFFFFFF8;
    if (v25 >> 62)
    {
      goto LABEL_67;
    }

    v28 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
    v29 = v25;
    v25 = v100;
    v30 = v9;
    if (v29 < 0)
    {
      v31 = v29;
    }

    else
    {
      v31 = v27;
    }

    v80 = v31;
    v82 = v29;
    if (v28)
    {
      v79 = v26;
      v9 = 0;
      v93 = v29 & 0xC000000000000001;
      v92 = v29 + 32;
      v88 = (v30 + 8);
      *(&v32 + 1) = 4;
      v86 = xmmword_22F770DF0;
      *&v32 = 138412290;
      v85 = v32;
      v83 = MEMORY[0x277D84F90];
      v91 = v28;
      v99 = OBJC_IVAR___PGMusicCache_managedObjectContext;
      v95 = v27;
      while (1)
      {
        if (v93)
        {
          v33 = MEMORY[0x2319016F0](v9, v82);
        }

        else
        {
          v26 = *(v27 + 16);
          if (v9 >= v26)
          {
            goto LABEL_66;
          }

          v33 = *(v92 + 8 * v9);
        }

        v111 = v33;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v78 = v26;
          v28 = sub_22F741A00();
          v26 = v78;
          goto LABEL_9;
        }

        if (v98)
        {
          sub_22F741740();
          if (qword_2810A8E80 != -1)
          {
            swift_once();
          }

          v35 = qword_2810A8E88;
          sub_22F740AC0();
          sub_22F740A90();
          v36 = *v88;
          (*v88)(v20, v25);
          swift_beginAccess();
          v37 = objc_allocWithZone(MEMORY[0x277CBE428]);

          v38 = sub_22F740DF0();

          v39 = [v37 initWithEntityName_];

          sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
          v40 = swift_allocObject();
          *(v40 + 16) = v86;
          *(v40 + 56) = MEMORY[0x277D837D0];
          *(v40 + 64) = sub_22F153470();
          *(v40 + 32) = 1735290739;
          *(v40 + 40) = 0xE400000000000000;
          *(v40 + 96) = v87;
          *(v40 + 104) = sub_22F1A3328(&qword_27DAB1E50, type metadata accessor for SongEntry, MEMORY[0x277D85388]);
          v41 = v111;
          *(v40 + 72) = v111;
          v42 = v41;
          v43 = sub_22F741560();
          [v39 setPredicate_];

          type metadata accessor for SongPlaybackInfoEntry();
          v44 = sub_22F7417B0();
          v46 = v44;
          v84 = v39;
          v104 = v36;
          v105 = v35;
          if (v44 >> 62)
          {
            v47 = sub_22F741A00();
          }

          else
          {
            v47 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v48 = v104;
          v97 = v9;
          if (v47)
          {
            v49 = 0;
            v103 = v46 & 0xC000000000000001;
            v45 = MEMORY[0x277D84F90];
            while (1)
            {
              if (v103)
              {
                v50 = MEMORY[0x2319016F0](v49, v46);
              }

              else
              {
                if (v49 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_64;
                }

                v50 = *(v46 + 8 * v49 + 32);
              }

              v51 = v50;
              v52 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
                __break(1u);
LABEL_64:
                __break(1u);

                return;
              }

              SongPlaybackInfoEntry.playbackInfo()(&v110);
              if (v53)
              {
                break;
              }

              v108 = *&v110.playCount;
              *v109 = v110.lastEndReason;
              *&v109[9] = *(&v110.lastEndReason._object + 1);
              v107 = *&v110.hoursUTC._rawValue;
              dateUTC = v110.dateUTC;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v45 = sub_22F13E580(0, *(v45 + 2) + 1, 1, v45);
              }

              v55 = *(v45 + 2);
              v54 = *(v45 + 3);
              if (v55 >= v54 >> 1)
              {
                v45 = sub_22F13E580((v54 > 1), v55 + 1, 1, v45);
              }

              *(v45 + 2) = v55 + 1;
              v56 = &v45[80 * v55];
              *(v56 + 2) = dateUTC;
              v57 = v107;
              v58 = v108;
              v59 = *v109;
              *(v56 + 89) = *&v109[9];
              *(v56 + 4) = v58;
              *(v56 + 5) = v59;
              *(v56 + 3) = v57;
              ++v49;
              v60 = v52 == v47;
              v48 = v104;
              if (v60)
              {
                goto LABEL_41;
              }
            }

            v72 = v101;
            v20 = v102;
            v9 = v97;
            v70 = v99;
            v61 = sub_22F7415E0();
            if (qword_2810A8E80 != -1)
            {
              swift_once();
            }

            v62 = qword_2810A8E88;
            if (os_log_type_enabled(qword_2810A8E88, v61))
            {
              v63 = v9;
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              *v64 = v85;
              v66 = v111;
              *(v64 + 4) = v111;
              *v65 = v66;
              v67 = v66;
              _os_log_impl(&dword_22F0FC000, v62, v61, "[MemoriesMusic] MusicCuration - song entry %@ is corrupted - removing from cache", v64, 0xCu);
              sub_22F120ADC(v65, &qword_27DAB07D0, &qword_22F779400);
              v68 = v65;
              v20 = v102;
              MEMORY[0x2319033A0](v68, -1, -1);
              v69 = v64;
              v9 = v63;
              v70 = v99;
              MEMORY[0x2319033A0](v69, -1, -1);
            }

            v71 = v111;
            [*(v72 + v70) deleteObject_];

            goto LABEL_48;
          }

          v45 = MEMORY[0x277D84F90];
LABEL_41:

          sub_22F741730();
          v20 = v102;
          sub_22F740AC0();
          sub_22F740A90();

          v48(v20, v100);
        }

        else
        {
          v97 = v9;
          v45 = 0;
        }

        sub_22F35420C(v45, v94);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_22F13E558(0, v83[2] + 1, 1, v83);
        }

        v9 = v97;
        v73 = v83;
        v75 = v83[2];
        v74 = v83[3];
        if (v75 >= v74 >> 1)
        {
          v73 = sub_22F13E558((v74 > 1), v75 + 1, 1, v83);
        }

        v73[2] = v75 + 1;
        v76 = (*(v96 + 80) + 32) & ~*(v96 + 80);
        v83 = v73;
        sub_22F1A3A48(v94, v73 + v76 + *(v96 + 72) * v75, type metadata accessor for Song);
        if (v79)
        {
          sub_22F741A00();
        }

        sub_22F741680();

LABEL_48:
        v25 = v100;
        v27 = v95;
        if (v9 == v91)
        {
          goto LABEL_61;
        }
      }
    }

    v83 = MEMORY[0x277D84F90];
LABEL_61:

    v77 = v89;
    sub_22F7416A0();
  }
}