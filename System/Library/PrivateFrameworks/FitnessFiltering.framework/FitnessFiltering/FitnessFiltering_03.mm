uint64_t sub_24B5A7BA0(__int128 *a1, uint64_t a2)
{
  v4 = sub_24B5FEDEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v83 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018BD0, &unk_24B6022F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v81 - v8;
  v10 = type metadata accessor for FilterSectionDescriptor(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v14);
  v92 = v14;
  if (v14)
  {
    v16 = 0;
    v17 = *(v10 + 24);
    v88 = *(v10 + 20);
    v87 = &v13[v17];
    v86 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v85 = (v5 + 48);
    v82 = (v5 + 32);
    v84 = *(v11 + 72);
    v81 = (v5 + 8);
    v91 = v4;
    v90 = v9;
    v89 = v13;
    do
    {
      sub_24B5AB228(v86 + v84 * v16, v13, type metadata accessor for FilterSectionDescriptor);
      sub_24B5FFB1C();
      sub_24B57BAFC(&v13[v88], v9, &qword_27F018BD0, &unk_24B6022F0);
      if ((*v85)(v9, 1, v4) == 1)
      {
        sub_24B5FFF1C();
      }

      else
      {
        v18 = v83;
        (*v82)(v83, v9, v4);
        sub_24B5FFF1C();
        sub_24B5AB290(&qword_27F019000, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
        sub_24B5FFA4C();
        (*v81)(v18, v4);
      }

      v19 = *v87;
      v20 = v87[8];
      v93 = v16;
      if (v20 > 3)
      {
        if (v20 > 5)
        {
          if (v20 == 6)
          {
            MEMORY[0x24C243ED0](6);
            MEMORY[0x24C243ED0](*(v19 + 16));
            v33 = *(v19 + 16);
            if (v33)
            {
              v34 = (v19 + 32);
              do
              {
                v100 = *v34;
                v36 = *(v34 + 64);
                v38 = v34[2];
                v37 = v34[3];
                v101 = v34[1];
                v102 = v38;
                *v103 = v37;
                v103[16] = v36;
                v39 = v100;
                v40 = v101;
                v98 = *(&v37 + 1);
                sub_24B57BAFC(&v100, v99, &qword_27F018BE0, &qword_24B602300);
                sub_24B57926C(a1, v39);
                sub_24B5FFF1C();
                if (v40)
                {
                  sub_24B5FFB1C();
                }

                v35 = v103[16];
                sub_24B5FFB1C();
                sub_24B5FFB1C();
                MEMORY[0x24C243ED0](v98);
                MEMORY[0x24C243ED0](v35);
                sub_24B58090C(&v100, &qword_27F018BE0, &qword_24B602300);
                v34 = (v34 + 72);
                --v33;
              }

              while (v33);
            }
          }

          else
          {
            MEMORY[0x24C243ED0](7);
            MEMORY[0x24C243ED0](*(v19 + 16));
            v72 = *(v19 + 16);
            if (v72)
            {
              v73 = (v19 + 32);
              do
              {
                v100 = *v73;
                v75 = *(v73 + 57);
                v77 = v73[2];
                v76 = v73[3];
                v101 = v73[1];
                v102 = v77;
                *v103 = v76;
                *&v103[9] = v75;
                v78 = v100;
                v79 = v101;
                v97 = *(&v77 + 1);
                v98 = *&v103[8];
                v80 = v76;
                sub_24B57BAFC(&v100, v99, &qword_27F018BD8, &unk_24B601060);
                sub_24B57926C(a1, v78);
                sub_24B5FFF1C();
                if (v79)
                {
                  sub_24B5FFB1C();
                }

                sub_24B5FFB1C();
                sub_24B5FFF1C();
                if (v80)
                {
                  sub_24B5FFB1C();
                }

                v74 = v103[24];
                sub_24B5FFB1C();
                MEMORY[0x24C243ED0](v74);
                sub_24B58090C(&v100, &qword_27F018BD8, &unk_24B601060);
                v73 += 5;
                --v72;
              }

              while (v72);
            }
          }
        }

        else if (v20 == 4)
        {
          MEMORY[0x24C243ED0](4);
          MEMORY[0x24C243ED0](*(v19 + 16));
          v25 = *(v19 + 16);
          if (v25)
          {
            v26 = (v19 + 48);
            do
            {
              v27 = *(v26 - 2);
              v28 = *v26;
              v97 = v26[3];
              v98 = *(v26 + 40);

              sub_24B57926C(a1, v27);
              sub_24B5FFF1C();
              if (v28)
              {
                sub_24B5FFB1C();
              }

              v26 += 8;
              sub_24B5FFB1C();
              sub_24B5FFB1C();
              MEMORY[0x24C243ED0](v98);

              --v25;
            }

            while (v25);
          }
        }

        else
        {
          MEMORY[0x24C243ED0](5);
          MEMORY[0x24C243ED0](*(v19 + 16));
          v51 = *(v19 + 16);
          if (v51)
          {
            v52 = (v19 + 32);
            do
            {
              v100 = *v52;
              v54 = *(v52 + 57);
              v56 = v52[2];
              v55 = v52[3];
              v101 = v52[1];
              v102 = v56;
              *v103 = v55;
              *&v103[9] = v54;
              v57 = v100;
              v58 = v101;
              v97 = *(&v56 + 1);
              v98 = *&v103[8];
              v59 = v55;
              sub_24B57BAFC(&v100, v99, &qword_27F018BE8, &unk_24B601070);
              sub_24B57926C(a1, v57);
              sub_24B5FFF1C();
              if (v58)
              {
                sub_24B5FFB1C();
              }

              sub_24B5FFB1C();
              sub_24B5FFF1C();
              if (v59)
              {
                sub_24B5FFB1C();
              }

              v53 = v103[24];
              sub_24B5FFB1C();
              MEMORY[0x24C243ED0](v53);
              sub_24B58090C(&v100, &qword_27F018BE8, &unk_24B601070);
              v52 += 5;
              --v51;
            }

            while (v51);
          }
        }
      }

      else if (v20 > 1)
      {
        if (v20 == 2)
        {
          MEMORY[0x24C243ED0](2);
          MEMORY[0x24C243ED0](*(v19 + 16));
          v29 = *(v19 + 16);
          if (v29)
          {
            v30 = (v19 + 48);
            do
            {
              v31 = *(v30 - 2);
              v32 = *v30;
              v97 = v30[3];
              v98 = *(v30 + 40);

              sub_24B57926C(a1, v31);
              sub_24B5FFF1C();
              if (v32)
              {
                sub_24B5FFB1C();
              }

              v30 += 8;
              sub_24B5FFB1C();
              sub_24B5FFB1C();
              MEMORY[0x24C243ED0](v98);

              --v29;
            }

            while (v29);
          }
        }

        else
        {
          MEMORY[0x24C243ED0](3);
          v60 = *(v19 + 16);
          MEMORY[0x24C243ED0](v60);
          v95 = v60;
          if (v60)
          {
            v61 = 0;
            v94 = v19 + 32;
            do
            {
              v63 = (v94 + 80 * v61);
              v100 = *v63;
              v64 = *(v63 + 57);
              v66 = v63[2];
              v65 = v63[3];
              v101 = v63[1];
              v102 = v66;
              *v103 = v65;
              *&v103[9] = v64;
              v67 = v100;
              v68 = *(&v101 + 1);
              v97 = v65;
              v96 = *&v103[8];
              v98 = v64 >> 56;
              MEMORY[0x24C243ED0](*(v100 + 16));
              v69 = *(v67 + 16);
              if (v69)
              {
                v70 = (v67 + 32);
                do
                {
                  v71 = *v70++;
                  MEMORY[0x24C243ED0](v71);
                  --v69;
                }

                while (v69);
              }

              sub_24B57BAFC(&v100, v99, &qword_27F018BF8, &unk_24B601080);
              sub_24B57926C(a1, *(&v67 + 1));
              sub_24B5FFF1C();
              if (v68)
              {
                sub_24B5FFB1C();
              }

              ++v61;
              v62 = v103[24];
              sub_24B5FFB1C();
              sub_24B5FFB1C();
              sub_24B5799FC(a1, v98);
              MEMORY[0x24C243ED0](v62);
              sub_24B58090C(&v100, &qword_27F018BF8, &unk_24B601080);
            }

            while (v61 != v95);
          }
        }
      }

      else if (v20)
      {
        MEMORY[0x24C243ED0](1);
        v41 = *(v19 + 16);
        MEMORY[0x24C243ED0](v41);
        if (v41)
        {
          v42 = (v19 + 72);
          do
          {
            v43 = *(v42 - 3);
            v44 = *(v42 - 2);
            v45 = *(v42 - 1);
            v47 = *v42;
            v42 += 6;
            v46 = v47;

            sub_24B5FFB1C();
            if (v43 == 0.0)
            {
              v48 = 0.0;
            }

            else
            {
              v48 = v43;
            }

            MEMORY[0x24C243EF0](*&v48);
            if (v44 == 0.0)
            {
              v49 = 0.0;
            }

            else
            {
              v49 = v44;
            }

            MEMORY[0x24C243EF0](*&v49);
            if (v45 == 0.0)
            {
              v50 = 0.0;
            }

            else
            {
              v50 = v45;
            }

            MEMORY[0x24C243EF0](*&v50);
            MEMORY[0x24C243ED0](v46);

            --v41;
          }

          while (v41);
        }
      }

      else
      {
        MEMORY[0x24C243ED0](0);
        MEMORY[0x24C243ED0](*(v19 + 16));
        v21 = *(v19 + 16);
        if (v21)
        {
          v22 = (v19 + 48);
          do
          {
            v23 = *(v22 - 2);
            v24 = *v22;
            v97 = v22[3];
            v98 = *(v22 + 40);

            sub_24B57926C(a1, v23);
            sub_24B5FFF1C();
            if (v24)
            {
              sub_24B5FFB1C();
            }

            v22 += 8;
            sub_24B5FFB1C();
            sub_24B5FFB1C();
            MEMORY[0x24C243ED0](v98);

            --v21;
          }

          while (v21);
        }
      }

      v16 = v93 + 1;
      v13 = v89;
      result = sub_24B5AB2D8(v89, type metadata accessor for FilterSectionDescriptor);
      v4 = v91;
      v9 = v90;
    }

    while (v16 != v92);
  }

  return result;
}

uint64_t sub_24B5A88A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_24B5FFB1C();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24B5A8A30(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v7 = v5[1];
      v16 = *v5;
      v17 = v7;
      v8 = v5[3];
      v18 = v5[2];
      v19 = v8;
      if (BYTE8(v18) <= 3u)
      {
        if (BYTE8(v18) > 1u)
        {
          if (BYTE8(v18) == 2)
          {
            v6 = 2;
          }

          else
          {
            v6 = 3;
          }
        }

        else
        {
          if (BYTE8(v18))
          {
            v10 = *(&v17 + 1);
            v9 = v18;
            v11 = v17;
            MEMORY[0x24C243ED0](1);
            sub_24B5A208C(&v16, v15);
            sub_24B5FFB1C();
            if ((v11 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v12 = v11;
            }

            else
            {
              v12 = 0;
            }

            MEMORY[0x24C243EF0](v12);
            if ((v10 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v13 = v10;
            }

            else
            {
              v13 = 0;
            }

            MEMORY[0x24C243EF0](v13);
            if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v14 = v9;
            }

            else
            {
              v14 = 0;
            }

            MEMORY[0x24C243EF0](v14);
            goto LABEL_5;
          }

          v6 = 0;
        }
      }

      else if (BYTE8(v18) <= 5u)
      {
        if (BYTE8(v18) == 4)
        {
          v6 = 4;
        }

        else
        {
          v6 = 5;
        }
      }

      else if (BYTE8(v18) == 6)
      {
        v6 = 6;
      }

      else
      {
        if (BYTE8(v18) != 7)
        {
          MEMORY[0x24C243ED0](8);
          sub_24B5A208C(&v16, v15);
          sub_24B5FFB1C();

          goto LABEL_5;
        }

        v6 = 7;
      }

      MEMORY[0x24C243ED0](v6);
      sub_24B5A208C(&v16, v15);
      sub_24B5FFB1C();
LABEL_5:
      sub_24B5FFB1C();
      result = sub_24B5A20C4(&v16);
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_24B5A8CFC(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v4);
  if (v4)
  {
    v6 = (a2 + 48);
    do
    {
      v7 = *(v6 - 2);
      v8 = *v6;
      v9 = v6[5];

      sub_24B57926C(a1, v7);
      sub_24B5FFF1C();
      if (v8)
      {
        sub_24B5FFB1C();
      }

      sub_24B5FFB1C();
      sub_24B5FFB1C();
      MEMORY[0x24C243ED0](v9);

      v6 += 8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_24B5A8E1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x24C243ED0](v3);
  if (v3)
  {
    v5 = a2 + 56;
    do
    {

      sub_24B5FFB1C();
      sub_24B5FFB1C();

      v5 += 32;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s16FitnessFiltering12FilterActionO2eeoiySbAC_ACtFZ_0(char *a1, _BYTE *a2)
{
  v145 = a1;
  v146 = a2;
  v2 = sub_24B5FEE4C();
  v143 = *(v2 - 8);
  v144 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v138 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v139 = &v126 - v5;
  v6 = type metadata accessor for FilterAction(0);
  v7 = MEMORY[0x28223BE20](v6);
  v142 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v140 = &v126 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v141 = &v126 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v126 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v126 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v126 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v126 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v126 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019008, &qword_24B602308);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v126 - v29;
  v31 = &v126 + *(v28 + 56) - v29;
  sub_24B5AB228(v145, &v126 - v29, type metadata accessor for FilterAction);
  v32 = v146;
  v146 = v31;
  sub_24B5AB228(v32, v31, type metadata accessor for FilterAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_24B5AB228(v30, v24, type metadata accessor for FilterAction);
        v95 = v30;
        v97 = *v24;
        v96 = *(v24 + 1);
        v99 = *(v24 + 2);
        v98 = *(v24 + 3);
        v100 = *(v24 + 4);
        v101 = v24[40];
        v102 = v146;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v145 = v95;
          v103 = *v102;
          v104 = *(v102 + 1);
          v105 = *(v102 + 2);
          v143 = *(v102 + 3);
          v144 = v105;
          v142 = *(v102 + 4);
          LODWORD(v146) = v102[40];
          *&v162 = v97;
          *(&v162 + 1) = v96;
          *&v163 = v99;
          *(&v163 + 1) = v98;
          *&v164 = v100;
          BYTE8(v164) = v101;
          *&v157 = v103;
          *(&v157 + 1) = v104;
          *&v158 = v105;
          *(&v158 + 1) = v143;
          *&v159 = v142;
          BYTE8(v159) = v146;
          v36 = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v162, &v157);
          sub_24B57BA04(v103, v104, v144, v143, v142, v146);
          sub_24B57BA04(v97, v96, v99, v98, v100, v101);
          sub_24B5AB2D8(v145, type metadata accessor for FilterAction);
          return v36 & 1;
        }

        sub_24B57BA04(v97, v96, v99, v98, v100, v101);
        v30 = v95;
        goto LABEL_46;
      }

      sub_24B5AB228(v30, v26, type metadata accessor for FilterAction);
      v53 = *v26;
      v54 = *(v26 + 2);
      v55 = v26[24];
      v56 = v146;
      if (swift_getEnumCaseMultiPayload())
      {

        goto LABEL_46;
      }

      v37 = v30;
      v117 = v26[8];
      v118 = *v56;
      v119 = v56[8];
      v120 = *(v56 + 2);
      v121 = v56[24];
      if (sub_24B587A08(v53, v118) & 1) != 0 && ((v117 ^ v119) & 1) == 0 && (sub_24B587A08(v54, v120))
      {
        v122 = sub_24B5886F8(v55, v121);

        if (v122)
        {
          v115 = v37;
          goto LABEL_40;
        }
      }

      else
      {
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_24B5AB228(v30, v21, type metadata accessor for FilterAction);
        v57 = v146;
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v58 = *v21 ^ *v57;
          sub_24B5AB2D8(v30, type metadata accessor for FilterAction);
          v36 = v58 ^ 1;
          return v36 & 1;
        }

        goto LABEL_46;
      }

      if (EnumCaseMultiPayload != 3)
      {
        sub_24B5AB228(v30, v15, type metadata accessor for FilterAction);
        v86 = *(v15 + 3);
        v164 = *(v15 + 2);
        v165 = v86;
        v166 = *(v15 + 8);
        v87 = *(v15 + 1);
        v162 = *v15;
        v163 = v87;
        v88 = v146;
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v89 = *(v88 + 1);
          v90 = *(v88 + 3);
          v159 = *(v88 + 2);
          v160 = v90;
          v91 = *(v88 + 1);
          v157 = *v88;
          v158 = v91;
          v92 = *(v15 + 3);
          v154 = *(v15 + 2);
          v155 = v92;
          v93 = *(v15 + 1);
          v152 = *v15;
          v153 = v93;
          v94 = *(v88 + 3);
          v149 = v159;
          v150 = v94;
          v161 = *(v88 + 8);
          v156 = *(v15 + 8);
          v151 = *(v88 + 8);
          v147 = v157;
          v148 = v89;
          v36 = static FilterOptions.== infix(_:_:)(&v152, &v147);
          sub_24B5A0ACC(&v157);
          sub_24B5A0ACC(&v162);
          goto LABEL_37;
        }

        sub_24B5A0ACC(&v162);
        goto LABEL_46;
      }

      v37 = v30;
      sub_24B5AB228(v30, v18, type metadata accessor for FilterAction);
      v38 = *v18;
      v39 = v18[8];
      v40 = *(v18 + 2);
      v41 = v18[24];
      v42 = *(v18 + 5);
      v164 = *(v18 + 4);
      v165 = v42;
      v166 = *(v18 + 12);
      v43 = *(v18 + 3);
      v162 = *(v18 + 2);
      v163 = v43;
      v44 = v146;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_24B5A0B20(&v162);

        v30 = v37;
        goto LABEL_46;
      }

      v45 = *v44;
      v46 = v44;
      v47 = v44[8];
      v48 = *(v44 + 2);
      v49 = v46[24];
      v50 = *(v46 + 5);
      v159 = *(v46 + 4);
      v160 = v50;
      v161 = *(v46 + 12);
      v51 = *(v46 + 3);
      v157 = *(v46 + 2);
      v158 = v51;
      if (sub_24B587A08(v38, v45) & 1) != 0 && ((v39 ^ v47) & 1) == 0 && (sub_24B587A08(v40, v48))
      {
        v52 = sub_24B5886F8(v41, v49);

        if (v52)
        {
          v154 = v164;
          v155 = v165;
          v156 = v166;
          v152 = v162;
          v153 = v163;
          v149 = v159;
          v150 = v160;
          v151 = v161;
          v147 = v157;
          v148 = v158;
          v36 = _s16FitnessFiltering12FilterResultV2eeoiySbAC_ACtFZ_0(&v152, &v147);
          sub_24B5A0B20(&v157);
          sub_24B5A0B20(&v162);
          sub_24B5AB2D8(v37, type metadata accessor for FilterAction);
          return v36 & 1;
        }
      }

      else
      {
      }

      sub_24B5A0B20(&v157);
      sub_24B5A0B20(&v162);
    }

    sub_24B5AB2D8(v37, type metadata accessor for FilterAction);
    goto LABEL_47;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (EnumCaseMultiPayload == 9)
    {
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_46;
      }

      goto LABEL_39;
    }

    if (swift_getEnumCaseMultiPayload() == 10)
    {
LABEL_39:
      v115 = v30;
LABEL_40:
      sub_24B5AB2D8(v115, type metadata accessor for FilterAction);
      v36 = 1;
      return v36 & 1;
    }

LABEL_46:
    sub_24B58090C(v30, &qword_27F019008, &qword_24B602308);
LABEL_47:
    v36 = 0;
    return v36 & 1;
  }

  v34 = v146;
  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v35 = v140;
      sub_24B5AB228(v30, v140, type metadata accessor for FilterAction);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v36 = sub_24B5886F8(*v35, *v34);
LABEL_37:
        sub_24B5AB2D8(v30, type metadata accessor for FilterAction);
        return v36 & 1;
      }
    }

    else
    {
      v106 = v142;
      sub_24B5AB228(v30, v142, type metadata accessor for FilterAction);
      v107 = *(v106 + 48);
      v164 = *(v106 + 32);
      v165 = v107;
      v166 = *(v106 + 64);
      v108 = *(v106 + 16);
      v162 = *v106;
      v163 = v108;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v109 = *(v34 + 1);
        v110 = *(v34 + 3);
        v159 = *(v34 + 2);
        v160 = v110;
        v111 = *(v34 + 1);
        v157 = *v34;
        v158 = v111;
        v112 = *(v106 + 48);
        v154 = *(v106 + 32);
        v155 = v112;
        v113 = *(v106 + 16);
        v152 = *v106;
        v153 = v113;
        v114 = *(v34 + 3);
        v149 = v159;
        v150 = v114;
        v161 = *(v34 + 8);
        v156 = *(v106 + 64);
        v151 = *(v34 + 8);
        v147 = v157;
        v148 = v109;
        v36 = _s16FitnessFiltering12FilterResultV2eeoiySbAC_ACtFZ_0(&v152, &v147);
        sub_24B5A0B20(&v157);
        sub_24B5A0B20(&v162);
        goto LABEL_37;
      }

      sub_24B5A0B20(&v162);
    }

    goto LABEL_46;
  }

  v59 = v141;
  sub_24B5AB228(v30, v141, type metadata accessor for FilterAction);
  v60 = *(v59 + 8);
  v140 = *v59;
  v142 = v60;
  v62 = *(v59 + 16);
  v61 = *(v59 + 24);
  v63 = *(v59 + 32);
  v64 = *(v59 + 40);
  v137 = *(v59 + 41);
  v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B38, &qword_24B600DD0) + 64);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    (*(v143 + 8))(v59 + v65, v144);
    sub_24B57BA04(v140, v142, v62, v61, v63, v64);
    goto LABEL_46;
  }

  v145 = v30;
  v66 = *v34;
  v132 = *(v34 + 1);
  v133 = v66;
  v67 = *(v34 + 3);
  v131 = *(v34 + 2);
  v129 = v63;
  v130 = v67;
  v136 = v61;
  v68 = *(v34 + 4);
  LODWORD(v66) = v34[41];
  v69 = v64;
  v135 = v64;
  v70 = *(v143 + 32);
  v134 = v62;
  LODWORD(v67) = v34[40];
  v127 = v66;
  v128 = v67;
  v71 = v59 + v65;
  v72 = v144;
  v70(v139, v71, v144);
  v70(v138, &v34[v65], v72);
  v73 = v140;
  v74 = v142;
  *&v162 = v140;
  *(&v162 + 1) = v142;
  *&v163 = v62;
  *(&v163 + 1) = v61;
  v76 = v129;
  v75 = v130;
  *&v164 = v129;
  BYTE8(v164) = v69;
  v78 = v132;
  v77 = v133;
  *&v157 = v133;
  *(&v157 + 1) = v132;
  v79 = v131;
  *&v158 = v131;
  *(&v158 + 1) = v130;
  *&v159 = v68;
  LOBYTE(v72) = v128;
  BYTE8(v159) = v128;
  LODWORD(v146) = _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(&v162, &v157);
  sub_24B57BA04(v77, v78, v79, v75, v68, v72);
  sub_24B57BA04(v73, v74, v134, v136, v76, v135);
  if ((v146 & 1) == 0)
  {
    v123 = v144;
    v124 = *(v143 + 8);
    v124(v138, v144);
    v124(v139, v123);
    sub_24B5AB2D8(v145, type metadata accessor for FilterAction);
    goto LABEL_47;
  }

  v80 = v138;
  v82 = v144;
  v81 = v145;
  if (v137 != v127)
  {
    v125 = *(v143 + 8);
    v125(v138, v144);
    v125(v139, v82);
    sub_24B5AB2D8(v81, type metadata accessor for FilterAction);
    goto LABEL_47;
  }

  v83 = v139;
  v36 = sub_24B5FEE2C();
  v84 = v80;
  v85 = *(v143 + 8);
  v85(v84, v82);
  v85(v83, v82);
  sub_24B5AB2D8(v81, type metadata accessor for FilterAction);
  return v36 & 1;
}

void sub_24B5A9BFC(uint64_t a1)
{
  sub_24B5A9CC8();
  if (v1 <= 0x3F)
  {
    sub_24B5A9CF8();
    if (v2 <= 0x3F)
    {
      sub_24B5A9D28();
      if (v3 <= 0x3F)
      {
        sub_24B5A9D8C();
        if (v4 <= 0x3F)
        {
          sub_24B5A9DBC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

ValueMetadata *sub_24B5A9CC8()
{
  result = qword_27F018ED0;
  if (!qword_27F018ED0)
  {
    result = &type metadata for Filter;
    atomic_store(&type metadata for Filter, &qword_27F018ED0);
  }

  return result;
}

uint64_t sub_24B5A9CF8()
{
  result = qword_27F018ED8;
  if (!qword_27F018ED8)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27F018ED8);
  }

  return result;
}

void sub_24B5A9D28()
{
  if (!qword_27F018EE0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F018EE0);
    }
  }
}

ValueMetadata *sub_24B5A9D8C()
{
  result = qword_27F018EE8;
  if (!qword_27F018EE8)
  {
    result = &type metadata for FilterOptions;
    atomic_store(&type metadata for FilterOptions, &qword_27F018EE8);
  }

  return result;
}

void sub_24B5A9DBC(uint64_t a1)
{
  if (!qword_27F018EF0)
  {
    sub_24B5FEE4C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F018EF0);
    }
  }
}

uint64_t getEnumTagSinglePayload for FilterAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FilterAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FilterAction.SelectedFilterItemCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FilterAction.SelectedFilterItemCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24B5AA158(unsigned int *a1, int a2)
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

_WORD *sub_24B5AA1A8(_WORD *result, int a2, int a3)
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

unint64_t sub_24B5AA248()
{
  result = qword_27F018EF8;
  if (!qword_27F018EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018EF8);
  }

  return result;
}

unint64_t sub_24B5AA2A0()
{
  result = qword_27F018F00;
  if (!qword_27F018F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F00);
  }

  return result;
}

unint64_t sub_24B5AA2F8()
{
  result = qword_27F018F08;
  if (!qword_27F018F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F08);
  }

  return result;
}

unint64_t sub_24B5AA350()
{
  result = qword_27F018F10;
  if (!qword_27F018F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F10);
  }

  return result;
}

unint64_t sub_24B5AA3A8()
{
  result = qword_27F018F18;
  if (!qword_27F018F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F18);
  }

  return result;
}

unint64_t sub_24B5AA400()
{
  result = qword_27F018F20;
  if (!qword_27F018F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F20);
  }

  return result;
}

unint64_t sub_24B5AA458()
{
  result = qword_27F018F28;
  if (!qword_27F018F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F28);
  }

  return result;
}

unint64_t sub_24B5AA4B0()
{
  result = qword_27F018F30;
  if (!qword_27F018F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F30);
  }

  return result;
}

unint64_t sub_24B5AA508()
{
  result = qword_27F018F38;
  if (!qword_27F018F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F38);
  }

  return result;
}

unint64_t sub_24B5AA560()
{
  result = qword_27F018F40;
  if (!qword_27F018F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F40);
  }

  return result;
}

unint64_t sub_24B5AA5B8()
{
  result = qword_27F018F48;
  if (!qword_27F018F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F48);
  }

  return result;
}

unint64_t sub_24B5AA610()
{
  result = qword_27F018F50;
  if (!qword_27F018F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F50);
  }

  return result;
}

unint64_t sub_24B5AA668()
{
  result = qword_27F018F58;
  if (!qword_27F018F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F58);
  }

  return result;
}

unint64_t sub_24B5AA6C0()
{
  result = qword_27F018F60;
  if (!qword_27F018F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F60);
  }

  return result;
}

unint64_t sub_24B5AA718()
{
  result = qword_27F018F68;
  if (!qword_27F018F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F68);
  }

  return result;
}

unint64_t sub_24B5AA770()
{
  result = qword_27F018F70;
  if (!qword_27F018F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F70);
  }

  return result;
}

unint64_t sub_24B5AA7C8()
{
  result = qword_27F018F78;
  if (!qword_27F018F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F78);
  }

  return result;
}

unint64_t sub_24B5AA820()
{
  result = qword_27F018F80;
  if (!qword_27F018F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F80);
  }

  return result;
}

unint64_t sub_24B5AA878()
{
  result = qword_27F018F88;
  if (!qword_27F018F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F88);
  }

  return result;
}

unint64_t sub_24B5AA8D0()
{
  result = qword_27F018F90;
  if (!qword_27F018F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F90);
  }

  return result;
}

unint64_t sub_24B5AA928()
{
  result = qword_27F018F98;
  if (!qword_27F018F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018F98);
  }

  return result;
}

unint64_t sub_24B5AA980()
{
  result = qword_27F018FA0;
  if (!qword_27F018FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FA0);
  }

  return result;
}

unint64_t sub_24B5AA9D8()
{
  result = qword_27F018FA8;
  if (!qword_27F018FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FA8);
  }

  return result;
}

unint64_t sub_24B5AAA30()
{
  result = qword_27F018FB0;
  if (!qword_27F018FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FB0);
  }

  return result;
}

unint64_t sub_24B5AAA88()
{
  result = qword_27F018FB8;
  if (!qword_27F018FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FB8);
  }

  return result;
}

unint64_t sub_24B5AAAE0()
{
  result = qword_27F018FC0;
  if (!qword_27F018FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FC0);
  }

  return result;
}

unint64_t sub_24B5AAB38()
{
  result = qword_27F018FC8;
  if (!qword_27F018FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FC8);
  }

  return result;
}

unint64_t sub_24B5AAB90()
{
  result = qword_27F018FD0;
  if (!qword_27F018FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FD0);
  }

  return result;
}

unint64_t sub_24B5AABE8()
{
  result = qword_27F018FD8;
  if (!qword_27F018FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FD8);
  }

  return result;
}

unint64_t sub_24B5AAC40()
{
  result = qword_27F018FE0;
  if (!qword_27F018FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FE0);
  }

  return result;
}

unint64_t sub_24B5AAC98()
{
  result = qword_27F018FE8;
  if (!qword_27F018FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FE8);
  }

  return result;
}

unint64_t sub_24B5AACF0()
{
  result = qword_27F018FF0;
  if (!qword_27F018FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FF0);
  }

  return result;
}

unint64_t sub_24B5AAD48()
{
  result = qword_27F018FF8;
  if (!qword_27F018FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F018FF8);
  }

  return result;
}

uint64_t sub_24B5AAD9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C707061 && a2 == 0xE500000000000000;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B60A830 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7373696D736964 && a2 == 0xE700000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B60A850 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x704F646564616F6CLL && a2 == 0xED0000736E6F6974 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C69467465736572 && a2 == 0xEB00000000726574 || (sub_24B5FFECC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B60A870 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B60A890 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B60A8B0 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B60A8D0 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261)
  {

    return 10;
  }

  else
  {
    v6 = sub_24B5FFECC();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_24B5AB128(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t sub_24B5AB228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B5AB290(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B5AB2D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t BodyFocus.filterItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
}

uint64_t sub_24B5AB390@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
}

uint64_t Duration.filterItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = 1;
}

uint64_t sub_24B5AB3CC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = 1;
}

uint64_t Modality.filterItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 3;
}

uint64_t sub_24B5AB41C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 3;
}

uint64_t sub_24B5AB440@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  *a2 = *(v2 + 24);
  *(a2 + 8) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = a1;
}

uint64_t sub_24B5AB464@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  *a2 = *(v2 + 24);
  *(a2 + 8) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = a1;
}

uint64_t Theme.filterItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 6;
}

uint64_t sub_24B5AB4A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = 6;
}

uint64_t FilterItem.identifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 40);
  if ((v2 - 2) < 6 || v2 == 0)
  {
    sub_24B57BA1C(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 24), *(v0 + 32), v2);
  }

  else if (v2 == 1)
  {
  }

  else
  {
    v5 = *v0;
    v6 = 0x7053747369747261;
    v7 = 0x576D6172676F7270;
    if (v5 != 6)
    {
      v7 = 0x6967736B6E616874;
    }

    v8 = 0x7261655977656ELL;
    if (v5 != 4)
    {
      v8 = 0x6564697270;
    }

    if (*v0 <= 5u)
    {
      v7 = v8;
    }

    v9 = 0x796164696C6F68;
    if (v5 != 2)
    {
      v9 = 0x77654E72616E756CLL;
    }

    if (*v0)
    {
      v6 = 0x6565776F6C6C6168;
    }

    if (*v0 > 1u)
    {
      v6 = v9;
    }

    if (*v0 <= 3u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  return v1;
}

uint64_t sub_24B5AB67C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x75636F4679646F62;
    v6 = 0x6E656D7069757165;
    if (a1 != 2)
    {
      v6 = 0x7974696C61646F6DLL;
    }

    if (a1)
    {
      v5 = 0x6E6F697461727564;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656D656874;
    v2 = 0x72656E69617274;
    if (a1 != 7)
    {
      v2 = 0x7469617274;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E6547636973756DLL;
    if (a1 != 4)
    {
      v3 = 0x76654C6C6C696B73;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24B5AB7B0(uint64_t a1)
{
  v2 = sub_24B5AE400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5AB7EC(uint64_t a1)
{
  v2 = sub_24B5AE400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5AB830@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5AF0B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5AB864(uint64_t a1)
{
  v2 = sub_24B5AE064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5AB8A0(uint64_t a1)
{
  v2 = sub_24B5AE064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5AB8DC(uint64_t a1)
{
  v2 = sub_24B5AE358();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5AB918(uint64_t a1)
{
  v2 = sub_24B5AE358();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5AB954(uint64_t a1)
{
  v2 = sub_24B5AE304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5AB990(uint64_t a1)
{
  v2 = sub_24B5AE304();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5AB9CC(uint64_t a1)
{
  v2 = sub_24B5AE2B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5ABA08(uint64_t a1)
{
  v2 = sub_24B5AE2B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5ABA44(uint64_t a1)
{
  v2 = sub_24B5AE25C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5ABA80(uint64_t a1)
{
  v2 = sub_24B5AE25C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5ABABC(uint64_t a1)
{
  v2 = sub_24B5AE208();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5ABAF8(uint64_t a1)
{
  v2 = sub_24B5AE208();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5ABB34(uint64_t a1)
{
  v2 = sub_24B5AE1B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5ABB70(uint64_t a1)
{
  v2 = sub_24B5AE1B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5ABBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B5FFECC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B5ABC3C(uint64_t a1)
{
  v2 = sub_24B5AE160();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5ABC78(uint64_t a1)
{
  v2 = sub_24B5AE160();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5ABCB4(uint64_t a1)
{
  v2 = sub_24B5AE0B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5ABCF0(uint64_t a1)
{
  v2 = sub_24B5AE0B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterItem.encode(to:)(void *a1)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019010, &qword_24B6023C0);
  v37[5] = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = v37 - v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019018, &qword_24B6023C8);
  v37[4] = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = v37 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019020, &qword_24B6023D0);
  v37[3] = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v37 - v5;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019028, &qword_24B6023D8);
  v37[2] = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = v37 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019030, &qword_24B6023E0);
  v37[1] = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019038, &qword_24B6023E8);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = v37 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019040, &qword_24B6023F0);
  v39 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019048, &qword_24B6023F8);
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019050, &qword_24B602400);
  v38 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v37 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019058, &qword_24B602408);
  v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v18 = v37 - v17;
  v19 = v1[1];
  v59 = *v1;
  v56 = v19;
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v23 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5AE064();
  v58 = v18;
  sub_24B5FFF5C();
  if (v23 > 3)
  {
    if (v23 <= 5)
    {
      v24 = v58;
      if (v23 == 4)
      {
        LOBYTE(v61) = 4;
        sub_24B5AE25C();
        v25 = v41;
        v26 = v60;
        sub_24B5FFE0C();
        v27 = v42;
        sub_24B5FFE3C();
        v28 = &v64;
      }

      else
      {
        LOBYTE(v61) = 5;
        sub_24B5AE208();
        v25 = v43;
        v26 = v60;
        sub_24B5FFE0C();
        v27 = v44;
        sub_24B5FFE3C();
        v28 = &v65;
      }
    }

    else
    {
      v24 = v58;
      if (v23 == 6)
      {
        LOBYTE(v61) = 6;
        sub_24B5AE1B4();
        v25 = v45;
        v26 = v60;
        sub_24B5FFE0C();
        v27 = v46;
        sub_24B5FFE3C();
        v28 = &v66;
      }

      else if (v23 == 7)
      {
        LOBYTE(v61) = 7;
        sub_24B5AE160();
        v25 = v47;
        v26 = v60;
        sub_24B5FFE0C();
        v27 = v48;
        sub_24B5FFE3C();
        v28 = &v67;
      }

      else
      {
        LOBYTE(v61) = 8;
        sub_24B5AE0B8();
        v25 = v49;
        v26 = v60;
        sub_24B5FFE0C();
        LOBYTE(v61) = v59;
        sub_24B5AE10C();
        v27 = v50;
        sub_24B5FFE8C();
        v28 = &v68;
      }
    }

    goto LABEL_18;
  }

  v30 = v51;
  v29 = v52;
  v50 = v11;
  v31 = v53;
  v32 = v54;
  v33 = v55;
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      LOBYTE(v61) = 2;
      sub_24B5AE304();
      v34 = v60;
      v35 = v58;
      sub_24B5FFE0C();
      sub_24B5FFE3C();
      (*(v39 + 8))(v30, v29);
      return (*(v57 + 8))(v35, v34);
    }

    LOBYTE(v61) = 3;
    sub_24B5AE2B0();
    v26 = v60;
    v24 = v58;
    sub_24B5FFE0C();
    sub_24B5FFE3C();
    (*(v32 + 8))(v31, v33);
  }

  else
  {
    if (v23)
    {
      LOBYTE(v61) = 1;
      sub_24B5AE358();
      v25 = v13;
      v26 = v60;
      v24 = v58;
      sub_24B5FFE0C();
      v61 = v59;
      v62 = v56;
      v63 = v20;
      v64 = v21;
      v65 = v22;
      sub_24B5AE3AC();
      v27 = v50;
      sub_24B5FFE8C();
      v28 = &v69;
LABEL_18:
      (*(*(v28 - 32) + 8))(v25, v27);
      return (*(v57 + 8))(v24, v26);
    }

    LOBYTE(v61) = 0;
    sub_24B5AE400();
    v26 = v60;
    v24 = v58;
    sub_24B5FFE0C();
    sub_24B5FFE3C();
    (*(v38 + 8))(v16, v14);
  }

  return (*(v57 + 8))(v24, v26);
}

uint64_t FilterItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190C0, &qword_24B602410);
  v4 = *(v3 - 8);
  v117 = v3;
  v118 = v4;
  MEMORY[0x28223BE20](v3);
  v121 = &v97[-v5];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190C8, &qword_24B602418);
  v116 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v120 = &v97[-v6];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190D0, &qword_24B602420);
  v114 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v125 = &v97[-v7];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190D8, &qword_24B602428);
  v112 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v124 = &v97[-v8];
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190E0, &qword_24B602430);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v123 = &v97[-v9];
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190E8, &qword_24B602438);
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v119 = &v97[-v10];
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190F0, &qword_24B602440);
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v122 = &v97[-v11];
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0190F8, &qword_24B602448);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v13 = &v97[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019100, &qword_24B602450);
  v102 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v97[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019108, &qword_24B602458);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v97[-v19];
  v21 = a1[3];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24B5AE064();
  v22 = v136;
  sub_24B5FFF4C();
  v136 = v22;
  if (v22)
  {
    goto LABEL_13;
  }

  v23 = v16;
  v99 = v14;
  v100 = v13;
  v24 = v122;
  v25 = v123;
  v27 = v124;
  v26 = v125;
  v101 = v18;
  v28 = v126;
  v29 = sub_24B5FFDEC();
  v30 = (2 * *(v29 + 16)) | 1;
  v132 = v29;
  v133 = v29 + 32;
  v134 = 0;
  v135 = v30;
  v31 = sub_24B5AB348();
  if (v31 == 9 || v134 != v135 >> 1)
  {
    v40 = sub_24B5FFCFC();
    v41 = v20;
    v42 = swift_allocError();
    v43 = v17;
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E80, &qword_24B602460);
    *v45 = &type metadata for FilterItem;
    sub_24B5FFD5C();
    sub_24B5FFCEC();
    (*(*(v40 - 8) + 104))(v45, *MEMORY[0x277D84160], v40);
    v136 = v42;
    swift_willThrow();
    (*(v101 + 8))(v41, v43);
    goto LABEL_12;
  }

  v98 = v31;
  if (v31 <= 3u)
  {
    if (v31 > 1u)
    {
      if (v31 == 2)
      {
        LOBYTE(v128) = 2;
        sub_24B5AE304();
        v57 = v136;
        sub_24B5FFD4C();
        v136 = v57;
        if (!v57)
        {
          v58 = v106;
          v59 = sub_24B5FFD8C();
          v136 = 0;
          v84 = v59;
          v86 = v85;
          (*(v105 + 8))(v24, v58);
          (*(v101 + 8))(v20, v17);
          swift_unknownObjectRelease();
          v87 = v86;
LABEL_50:
          v88 = v84;
          v90 = 0;
          v89 = 0uLL;
          v46 = v127;
          v73 = v28;
          goto LABEL_51;
        }
      }

      else
      {
        LOBYTE(v128) = 3;
        sub_24B5AE2B0();
        v60 = v119;
        v72 = v136;
        sub_24B5FFD4C();
        v136 = v72;
        if (!v72)
        {
          v62 = v108;
          v63 = sub_24B5FFD8C();
          v136 = 0;
          v65 = &v136;
          goto LABEL_25;
        }
      }
    }

    else if (v31)
    {
      LOBYTE(v128) = 1;
      sub_24B5AE358();
      v69 = v100;
      v70 = v136;
      sub_24B5FFD4C();
      v71 = v17;
      v136 = v70;
      if (!v70)
      {
        v73 = v28;
        v32 = v20;
        v33 = v71;
        sub_24B5AE4A8();
        v79 = v104;
        v80 = v136;
        sub_24B5FFDDC();
        v81 = v101;
        v136 = v80;
        if (!v80)
        {
          (*(v103 + 8))(v69, v79);
          (*(v81 + 8))(v32, v33);
          swift_unknownObjectRelease();
          v88 = v128;
          v87 = v129;
          v89 = v130;
          v90 = v131;
LABEL_48:
          v46 = v127;
LABEL_51:
          *v73 = v88;
          *(v73 + 8) = v87;
          *(v73 + 16) = v89;
          *(v73 + 32) = v90;
          *(v73 + 40) = v98;
          return __swift_destroy_boxed_opaque_existential_1(v46);
        }

        (*(v103 + 8))(v69, v79);
        goto LABEL_42;
      }
    }

    else
    {
      LOBYTE(v128) = 0;
      sub_24B5AE400();
      v48 = v23;
      v49 = v136;
      sub_24B5FFD4C();
      v136 = v49;
      if (!v49)
      {
        v50 = v99;
        v51 = sub_24B5FFD8C();
        v136 = 0;
        v92 = v51;
        v52 = v48;
        v53 = v20;
        v54 = v17;
        v56 = v55;
        (*(v102 + 8))(v52, v50);
        (*(v101 + 8))(v53, v54);
LABEL_45:
        swift_unknownObjectRelease();
        v87 = v56;
        v73 = v28;
        v88 = v92;
        v90 = 0;
LABEL_47:
        v89 = 0uLL;
        goto LABEL_48;
      }
    }

LABEL_29:
    (*(v101 + 8))(v20, v17);
    goto LABEL_12;
  }

  if (v31 <= 5u)
  {
    if (v31 == 4)
    {
      LOBYTE(v128) = 4;
      sub_24B5AE25C();
      v60 = v25;
      v61 = v136;
      sub_24B5FFD4C();
      v136 = v61;
      if (!v61)
      {
        v62 = v110;
        v63 = sub_24B5FFD8C();
        v136 = 0;
        v65 = &v137;
LABEL_25:
        v66 = *(*(v65 - 32) + 8);
        v84 = v63;
        v67 = v60;
LABEL_49:
        v94 = v20;
        v95 = v17;
        v96 = v64;
        v66(v67, v62);
        (*(v101 + 8))(v94, v95);
        swift_unknownObjectRelease();
        v87 = v96;
        goto LABEL_50;
      }
    }

    else
    {
      LOBYTE(v128) = 5;
      sub_24B5AE208();
      v76 = v136;
      sub_24B5FFD4C();
      v136 = v76;
      if (!v76)
      {
        v62 = v111;
        v77 = sub_24B5FFD8C();
        v136 = 0;
        v66 = *(v112 + 8);
        v84 = v77;
        v67 = v27;
        goto LABEL_49;
      }
    }

    goto LABEL_29;
  }

  v32 = v20;
  v33 = v17;
  if (v31 == 6)
  {
    LOBYTE(v128) = 6;
    sub_24B5AE1B4();
    v35 = v32;
    v68 = v136;
    sub_24B5FFD4C();
    v136 = v68;
    if (!v68)
    {
      v37 = v113;
      v78 = sub_24B5FFD8C();
      v136 = 0;
      v91 = *(v114 + 8);
      v92 = v78;
      v93 = v26;
      goto LABEL_44;
    }

    goto LABEL_27;
  }

  if (v31 != 7)
  {
    v73 = v28;
    LOBYTE(v128) = 8;
    sub_24B5AE0B8();
    v74 = v121;
    v75 = v136;
    sub_24B5FFD4C();
    v136 = v75;
    if (v75)
    {
      (*(v101 + 8))(v32, v33);
      goto LABEL_12;
    }

    sub_24B5AE454();
    v82 = v117;
    v83 = v136;
    sub_24B5FFDDC();
    v81 = v101;
    v136 = v83;
    if (!v83)
    {
      (*(v118 + 8))(v74, v82);
      (*(v81 + 8))(v32, v33);
      swift_unknownObjectRelease();
      v87 = 0;
      v90 = 0;
      v88 = v128;
      goto LABEL_47;
    }

    (*(v118 + 8))(v74, v82);
LABEL_42:
    (*(v81 + 8))(v32, v33);
    goto LABEL_12;
  }

  LOBYTE(v128) = 7;
  sub_24B5AE160();
  v34 = v120;
  v35 = v32;
  v36 = v136;
  sub_24B5FFD4C();
  v136 = v36;
  if (!v36)
  {
    v37 = v115;
    v38 = sub_24B5FFD8C();
    v136 = 0;
    v91 = *(v116 + 8);
    v92 = v38;
    v93 = v34;
LABEL_44:
    v56 = v39;
    v91(v93, v37);
    (*(v101 + 8))(v32, v33);
    goto LABEL_45;
  }

LABEL_27:
  (*(v101 + 8))(v35, v33);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v46 = v127;
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t FilterItem.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  if (v3 <= 3)
  {
    if (*(v1 + 40) > 1u)
    {
      if (v3 == 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      if (*(v1 + 40))
      {
        MEMORY[0x24C243ED0](1);
        return Duration.hash(into:)(a1);
      }

      v4 = 0;
    }

    goto LABEL_20;
  }

  if (*(v1 + 40) <= 5u)
  {
    if (v3 == 4)
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }

LABEL_20:
    MEMORY[0x24C243ED0](v4);

    return sub_24B5FFB1C();
  }

  if (v3 == 6)
  {
    v4 = 6;
    goto LABEL_20;
  }

  if (v3 == 7)
  {
    v4 = 7;
    goto LABEL_20;
  }

  MEMORY[0x24C243ED0](8);
  sub_24B5FFB1C();
}

uint64_t FilterItem.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_24B5FFEFC();
  FilterItem.hash(into:)(v5);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5AD984()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 40);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_24B5FFEFC();
  FilterItem.hash(into:)(v5);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5AD9E4(uint64_t a1)
{
  sub_24B5FFEFC();
  FilterItem.hash(into:)(v2);
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering10FilterItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  v39[0] = *a1;
  v39[1] = v2;
  v39[2] = v5;
  v39[3] = v4;
  *&v39[4] = v6;
  v40 = v7;
  v41 = v9;
  v42 = v8;
  v43 = v11;
  v44 = v10;
  v45 = v12;
  v46 = v13;
  if (v7 <= 3)
  {
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        if (v13 == 2)
        {
          v22 = *&v6;
          if (v3 == v9 && v2 == v8)
          {
            sub_24B57BA1C(v3, v2, v11, v10, v12, 2u);
            v15 = v3;
            v16 = v2;
            v17 = v5;
            v18 = v4;
            v19 = v22;
            v20 = 2;
            goto LABEL_42;
          }

          v36 = sub_24B5FFECC();
          sub_24B57BA1C(v9, v8, v11, v10, v12, 2u);
          v29 = v3;
          v30 = v2;
          v31 = v5;
          v32 = v4;
          v33 = v22;
          v34 = 2;
          goto LABEL_54;
        }
      }

      else if (v13 == 3)
      {
        v26 = *&v6;
        if (v3 == v9 && v2 == v8)
        {
          sub_24B57BA1C(v3, v2, v11, v10, v12, 3u);
          v15 = v3;
          v16 = v2;
          v17 = v5;
          v18 = v4;
          v19 = v26;
          v20 = 3;
          goto LABEL_42;
        }

        v36 = sub_24B5FFECC();
        sub_24B57BA1C(v9, v8, v11, v10, v12, 3u);
        v29 = v3;
        v30 = v2;
        v31 = v5;
        v32 = v4;
        v33 = v26;
        v34 = 3;
        goto LABEL_54;
      }
    }

    else
    {
      if (!v7)
      {
        if (!v13)
        {
          v21 = *&v6;
          if (v3 == v9 && v2 == v8)
          {
            sub_24B57BA1C(v3, v2, v11, v10, v12, 0);
            v15 = v3;
            v16 = v2;
            v17 = v5;
            v18 = v4;
            v19 = v21;
            v20 = 0;
            goto LABEL_42;
          }

          v36 = sub_24B5FFECC();
          sub_24B57BA1C(v9, v8, v11, v10, v12, 0);
          v29 = v3;
          v30 = v2;
          v31 = v5;
          v32 = v4;
          v33 = v21;
          v34 = 0;
LABEL_54:
          sub_24B57BA1C(v29, v30, v31, v32, v33, v34);
          sub_24B5AF398(v39);
          return v36 & 1;
        }

        goto LABEL_43;
      }

      if (v13 == 1)
      {
        *&v38[0] = v3;
        *&v38[1] = v2;
        *&v38[2] = v5;
        *&v38[3] = v4;
        v38[4] = v6;
        v37[0] = v9;
        v37[1] = v8;
        v37[2] = v11;
        v37[3] = v10;
        v37[4] = v12;
        v35 = *&v6;
        v25 = _s16FitnessFiltering8DurationV2eeoiySbAC_ACtFZ_0(v38, v37);
        sub_24B57BA1C(v9, v8, v11, v10, v12, 1u);
        sub_24B57BA1C(v3, v2, v5, v4, v35, 1u);
        goto LABEL_37;
      }
    }

LABEL_43:

    goto LABEL_44;
  }

  if (v7 <= 5)
  {
    if (v7 == 4)
    {
      if (v13 == 4)
      {
        v23 = *&v6;
        if (v3 == v9 && v2 == v8)
        {
          sub_24B57BA1C(v3, v2, v11, v10, v12, 4u);
          v15 = v3;
          v16 = v2;
          v17 = v5;
          v18 = v4;
          v19 = v23;
          v20 = 4;
          goto LABEL_42;
        }

        v36 = sub_24B5FFECC();
        sub_24B57BA1C(v9, v8, v11, v10, v12, 4u);
        v29 = v3;
        v30 = v2;
        v31 = v5;
        v32 = v4;
        v33 = v23;
        v34 = 4;
        goto LABEL_54;
      }
    }

    else if (v13 == 5)
    {
      v27 = *&v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_24B57BA1C(v3, v2, v11, v10, v12, 5u);
        v15 = v3;
        v16 = v2;
        v17 = v5;
        v18 = v4;
        v19 = v27;
        v20 = 5;
        goto LABEL_42;
      }

      v36 = sub_24B5FFECC();
      sub_24B57BA1C(v9, v8, v11, v10, v12, 5u);
      v29 = v3;
      v30 = v2;
      v31 = v5;
      v32 = v4;
      v33 = v27;
      v34 = 5;
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  if (v7 == 6)
  {
    if (v13 == 6)
    {
      v24 = *&v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_24B57BA1C(v3, v2, v11, v10, v12, 6u);
        v15 = v3;
        v16 = v2;
        v17 = v5;
        v18 = v4;
        v19 = v24;
        v20 = 6;
        goto LABEL_42;
      }

      v36 = sub_24B5FFECC();
      sub_24B57BA1C(v9, v8, v11, v10, v12, 6u);
      v29 = v3;
      v30 = v2;
      v31 = v5;
      v32 = v4;
      v33 = v24;
      v34 = 6;
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  if (v7 == 7)
  {
    if (v13 == 7)
    {
      v14 = *&v6;
      if (v3 == v9 && v2 == v8)
      {
        sub_24B57BA1C(v3, v2, v11, v10, v12, 7u);
        v15 = v3;
        v16 = v2;
        v17 = v5;
        v18 = v4;
        v19 = v14;
        v20 = 7;
LABEL_42:
        sub_24B57BA1C(v15, v16, v17, v18, v19, v20);
        sub_24B5AF398(v39);
        v25 = 1;
        return v25 & 1;
      }

      v36 = sub_24B5FFECC();
      sub_24B57BA1C(v9, v8, v11, v10, v12, 7u);
      v29 = v3;
      v30 = v2;
      v31 = v5;
      v32 = v4;
      v33 = v14;
      v34 = 7;
      goto LABEL_54;
    }

    goto LABEL_43;
  }

  if (v13 != 8)
  {
LABEL_44:
    sub_24B57BA1C(v9, v8, v11, v10, v12, v13);
    sub_24B5AF398(v39);
    v25 = 0;
    return v25 & 1;
  }

  v25 = sub_24B5889A8(v3, v9);
LABEL_37:
  sub_24B5AF398(v39);
  return v25 & 1;
}

unint64_t sub_24B5AE064()
{
  result = qword_27F019060;
  if (!qword_27F019060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019060);
  }

  return result;
}

unint64_t sub_24B5AE0B8()
{
  result = qword_27F019068;
  if (!qword_27F019068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019068);
  }

  return result;
}

unint64_t sub_24B5AE10C()
{
  result = qword_27F019070;
  if (!qword_27F019070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019070);
  }

  return result;
}

unint64_t sub_24B5AE160()
{
  result = qword_27F019078;
  if (!qword_27F019078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019078);
  }

  return result;
}

unint64_t sub_24B5AE1B4()
{
  result = qword_27F019080;
  if (!qword_27F019080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019080);
  }

  return result;
}

unint64_t sub_24B5AE208()
{
  result = qword_27F019088;
  if (!qword_27F019088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019088);
  }

  return result;
}

unint64_t sub_24B5AE25C()
{
  result = qword_27F019090;
  if (!qword_27F019090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019090);
  }

  return result;
}

unint64_t sub_24B5AE2B0()
{
  result = qword_27F019098;
  if (!qword_27F019098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019098);
  }

  return result;
}

unint64_t sub_24B5AE304()
{
  result = qword_27F0190A0;
  if (!qword_27F0190A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0190A0);
  }

  return result;
}

unint64_t sub_24B5AE358()
{
  result = qword_27F0190A8;
  if (!qword_27F0190A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0190A8);
  }

  return result;
}

unint64_t sub_24B5AE3AC()
{
  result = qword_27F0190B0;
  if (!qword_27F0190B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0190B0);
  }

  return result;
}

unint64_t sub_24B5AE400()
{
  result = qword_27F0190B8;
  if (!qword_27F0190B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0190B8);
  }

  return result;
}

unint64_t sub_24B5AE454()
{
  result = qword_27F019110;
  if (!qword_27F019110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019110);
  }

  return result;
}

unint64_t sub_24B5AE4A8()
{
  result = qword_27F019118;
  if (!qword_27F019118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019118);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B5AE510(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 41))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 40);
  if (v3 >= 9)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B5AE54C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_24B5AE598(uint64_t result, unsigned int a2)
{
  if (a2 > 8)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 9;
    LOBYTE(a2) = 9;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_24B5AE664()
{
  result = qword_27F019120;
  if (!qword_27F019120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019120);
  }

  return result;
}

unint64_t sub_24B5AE6BC()
{
  result = qword_27F019128;
  if (!qword_27F019128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019128);
  }

  return result;
}

unint64_t sub_24B5AE714()
{
  result = qword_27F019130;
  if (!qword_27F019130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019130);
  }

  return result;
}

unint64_t sub_24B5AE76C()
{
  result = qword_27F019138;
  if (!qword_27F019138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019138);
  }

  return result;
}

unint64_t sub_24B5AE7C4()
{
  result = qword_27F019140;
  if (!qword_27F019140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019140);
  }

  return result;
}

unint64_t sub_24B5AE81C()
{
  result = qword_27F019148;
  if (!qword_27F019148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019148);
  }

  return result;
}

unint64_t sub_24B5AE874()
{
  result = qword_27F019150;
  if (!qword_27F019150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019150);
  }

  return result;
}

unint64_t sub_24B5AE8CC()
{
  result = qword_27F019158;
  if (!qword_27F019158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019158);
  }

  return result;
}

unint64_t sub_24B5AE924()
{
  result = qword_27F019160;
  if (!qword_27F019160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019160);
  }

  return result;
}

unint64_t sub_24B5AE97C()
{
  result = qword_27F019168;
  if (!qword_27F019168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019168);
  }

  return result;
}

unint64_t sub_24B5AE9D4()
{
  result = qword_27F019170;
  if (!qword_27F019170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019170);
  }

  return result;
}

unint64_t sub_24B5AEA2C()
{
  result = qword_27F019178;
  if (!qword_27F019178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019178);
  }

  return result;
}

unint64_t sub_24B5AEA84()
{
  result = qword_27F019180;
  if (!qword_27F019180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019180);
  }

  return result;
}

unint64_t sub_24B5AEADC()
{
  result = qword_27F019188;
  if (!qword_27F019188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019188);
  }

  return result;
}

unint64_t sub_24B5AEB34()
{
  result = qword_27F019190;
  if (!qword_27F019190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019190);
  }

  return result;
}

unint64_t sub_24B5AEB8C()
{
  result = qword_27F019198;
  if (!qword_27F019198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019198);
  }

  return result;
}

unint64_t sub_24B5AEBE4()
{
  result = qword_27F0191A0;
  if (!qword_27F0191A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191A0);
  }

  return result;
}

unint64_t sub_24B5AEC3C()
{
  result = qword_27F0191A8;
  if (!qword_27F0191A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191A8);
  }

  return result;
}

unint64_t sub_24B5AEC94()
{
  result = qword_27F0191B0;
  if (!qword_27F0191B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191B0);
  }

  return result;
}

unint64_t sub_24B5AECEC()
{
  result = qword_27F0191B8;
  if (!qword_27F0191B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191B8);
  }

  return result;
}

unint64_t sub_24B5AED44()
{
  result = qword_27F0191C0;
  if (!qword_27F0191C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191C0);
  }

  return result;
}

unint64_t sub_24B5AED9C()
{
  result = qword_27F0191C8;
  if (!qword_27F0191C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191C8);
  }

  return result;
}

unint64_t sub_24B5AEDF4()
{
  result = qword_27F0191D0;
  if (!qword_27F0191D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191D0);
  }

  return result;
}

unint64_t sub_24B5AEE4C()
{
  result = qword_27F0191D8;
  if (!qword_27F0191D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191D8);
  }

  return result;
}

unint64_t sub_24B5AEEA4()
{
  result = qword_27F0191E0;
  if (!qword_27F0191E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191E0);
  }

  return result;
}

unint64_t sub_24B5AEEFC()
{
  result = qword_27F0191E8;
  if (!qword_27F0191E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191E8);
  }

  return result;
}

unint64_t sub_24B5AEF54()
{
  result = qword_27F0191F0;
  if (!qword_27F0191F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191F0);
  }

  return result;
}

unint64_t sub_24B5AEFAC()
{
  result = qword_27F0191F8;
  if (!qword_27F0191F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0191F8);
  }

  return result;
}

unint64_t sub_24B5AF004()
{
  result = qword_27F019200;
  if (!qword_27F019200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019200);
  }

  return result;
}

unint64_t sub_24B5AF05C()
{
  result = qword_27F019208;
  if (!qword_27F019208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019208);
  }

  return result;
}

uint64_t sub_24B5AF0B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75636F4679646F62 && a2 == 0xE900000000000073;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6547636973756DLL && a2 == 0xEA00000000006572 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEA00000000006C65 || (sub_24B5FFECC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72656E69617274 && a2 == 0xE700000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7469617274 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t sub_24B5AF398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018B40, &qword_24B600DD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FilterResult.init(bodyFocusIdentifiers:durationIdentifiers:equipmentIdentifiers:modalityIdentifiers:musicGenreIdentifiers:results:skillLevelIdentifiers:themeIdentifiers:trainerIdentifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

unint64_t sub_24B5AF46C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000013;
    }

    if (a1)
    {
      v5 = 0xD000000000000013;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x73746C75736572;
    v2 = 0xD000000000000012;
    if (a1 == 7)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 == 6)
    {
      v2 = 0xD000000000000015;
    }

    if (a1 == 4)
    {
      v1 = 0xD000000000000015;
    }

    if (a1 <= 5u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24B5AF59C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5B0A84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5AF5C4(uint64_t a1)
{
  v2 = sub_24B5B0668();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5AF600(uint64_t a1)
{
  v2 = sub_24B5B0668();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterResult.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019210, &qword_24B6031B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v23 = v1[2];
  v24 = v8;
  v11 = v1[5];
  v21 = v1[4];
  v22 = v10;
  v12 = v1[7];
  v19 = v1[6];
  v20 = v11;
  v17 = v1[8];
  v18 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5B0668();

  v13 = v4;
  sub_24B5FFF5C();
  v26 = v9;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019220, &qword_24B6031B8);
  sub_24B5B0710(&qword_27F019228, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
  sub_24B5FFE8C();
  if (v2)
  {
  }

  else
  {
    v14 = v23;

    v26 = v24;
    v25 = 1;
    sub_24B5FFE8C();
    v26 = v14;
    v25 = 2;
    sub_24B5FFE8C();
    v26 = v22;
    v25 = 3;
    sub_24B5FFE8C();
    v26 = v21;
    v25 = 4;
    sub_24B5FFE8C();
    v26 = v20;
    v25 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019230, &qword_24B6031C0);
    sub_24B5B077C(&qword_27F019238, sub_24B5B06BC, MEMORY[0x277D83948]);
    sub_24B5FFE8C();
    v26 = v19;
    v25 = 6;
    sub_24B5FFE8C();
    v26 = v18;
    v25 = 7;
    sub_24B5FFE8C();
    v26 = v17;
    v25 = 8;
    sub_24B5FFE8C();
  }

  return (*(v5 + 8))(v7, v13);
}

uint64_t FilterResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019248, &qword_24B6031C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5B0668();
  sub_24B5FFF4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019220, &qword_24B6031B8);
  LOBYTE(v30) = 0;
  sub_24B5B0710(&qword_27F019250, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
  sub_24B5FFDDC();
  v28 = v35[0];
  LOBYTE(v30) = 1;
  sub_24B5FFDDC();
  v26 = v35[0];
  LOBYTE(v30) = 2;
  sub_24B5FFDDC();
  v25 = v35[0];
  LOBYTE(v30) = 3;
  sub_24B5FFDDC();
  v27 = v35[0];
  LOBYTE(v30) = 4;
  sub_24B5FFDDC();
  v9 = v35[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019230, &qword_24B6031C0);
  LOBYTE(v30) = 5;
  sub_24B5B077C(&qword_27F019258, sub_24B5B07F4, MEMORY[0x277D83978]);
  sub_24B5FFDDC();
  v24 = v35[0];
  LOBYTE(v30) = 6;
  v23 = 0;
  sub_24B5FFDDC();
  v22 = v35[0];
  LOBYTE(v30) = 7;
  sub_24B5FFDDC();
  v21 = v35[0];
  v36[0] = 8;
  sub_24B5FFDDC();
  (*(v6 + 8))(v8, v5);
  v10 = v37;
  v11 = v28;
  v12 = v26;
  *&v30 = v28;
  *(&v30 + 1) = v26;
  v13 = v25;
  v14 = v27;
  *&v31 = v25;
  *(&v31 + 1) = v27;
  v15 = v24;
  *&v32 = v9;
  *(&v32 + 1) = v24;
  *&v33 = v22;
  *(&v33 + 1) = v21;
  v34 = v37;
  v16 = v29;
  *(v29 + 64) = v37;
  v17 = v33;
  v16[2] = v32;
  v16[3] = v17;
  v18 = v31;
  *v16 = v30;
  v16[1] = v18;
  sub_24B5A0B98(&v30, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v11;
  v35[1] = v12;
  v35[2] = v13;
  v35[3] = v14;
  v35[4] = v9;
  v35[5] = v15;
  v35[6] = v22;
  v35[7] = v21;
  v35[8] = v10;
  return sub_24B5A0B20(v35);
}

uint64_t FilterResult.hash(into:)(__int128 *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  sub_24B57B1DC(a1, *v1);
  sub_24B57B1DC(a1, v3);
  sub_24B57B1DC(a1, v4);
  sub_24B57B1DC(a1, v5);
  sub_24B57B1DC(a1, v6);
  v11 = *(v7 + 16);
  MEMORY[0x24C243ED0](v11);
  if (v11)
  {
    v12 = v7 + 56;
    do
    {

      sub_24B5FFB1C();
      sub_24B5FFB1C();

      v12 += 32;
      --v11;
    }

    while (v11);
  }

  sub_24B57B1DC(a1, v9);
  sub_24B57B1DC(a1, v8);

  return sub_24B57B1DC(a1, v10);
}

uint64_t FilterResult.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[8];
  sub_24B5FFEFC();
  sub_24B57B1DC(v13, v1);
  sub_24B57B1DC(v13, v2);
  sub_24B57B1DC(v13, v3);
  sub_24B57B1DC(v13, v4);
  sub_24B57B1DC(v13, v5);
  v10 = *(v6 + 16);
  MEMORY[0x24C243ED0](v10);
  if (v10)
  {
    v11 = v6 + 56;
    do
    {

      sub_24B5FFB1C();
      sub_24B5FFB1C();

      v11 += 32;
      --v10;
    }

    while (v10);
  }

  sub_24B57B1DC(v13, v8);
  sub_24B57B1DC(v13, v7);
  sub_24B57B1DC(v13, v9);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5B039C(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  sub_24B57B1DC(a1, v3);
  sub_24B57B1DC(a1, v4);
  sub_24B57B1DC(a1, v5);
  sub_24B57B1DC(a1, v6);
  sub_24B57B1DC(a1, v7);
  sub_24B5A8E1C(a1, v8);
  sub_24B57B1DC(a1, v9);
  sub_24B57B1DC(a1, v10);

  return sub_24B57B1DC(a1, v11);
}

uint64_t sub_24B5B0460(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  sub_24B5FFEFC();
  sub_24B57B1DC(v12, v2);
  sub_24B57B1DC(v12, v3);
  sub_24B57B1DC(v12, v4);
  sub_24B57B1DC(v12, v5);
  sub_24B57B1DC(v12, v6);
  sub_24B5A8E1C(v12, v7);
  sub_24B57B1DC(v12, v8);
  sub_24B57B1DC(v12, v9);
  sub_24B57B1DC(v12, v10);
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering12FilterResultV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v18 = a1[6];
  v14 = a1[8];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v16 = a1[7];
  v17 = a2[6];
  v15 = a2[7];
  v13 = a2[8];
  if ((sub_24B588540(*a1, *a2) & 1) == 0 || (sub_24B588540(v2, v7) & 1) == 0 || (sub_24B588540(v4, v9) & 1) == 0 || (sub_24B588540(v3, v8) & 1) == 0 || (sub_24B588540(v6, v11) & 1) == 0 || (sub_24B5D3968(v5, v10) & 1) == 0 || (sub_24B588540(v18, v17) & 1) == 0 || (sub_24B588540(v16, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_24B588540(v14, v13);
}

unint64_t sub_24B5B0668()
{
  result = qword_27F019218;
  if (!qword_27F019218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019218);
  }

  return result;
}

unint64_t sub_24B5B06BC()
{
  result = qword_27F019240;
  if (!qword_27F019240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019240);
  }

  return result;
}

uint64_t sub_24B5B0710(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019220, &qword_24B6031B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24B5B077C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019230, &qword_24B6031C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24B5B07F4()
{
  result = qword_27F019260;
  if (!qword_27F019260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019260);
  }

  return result;
}

unint64_t sub_24B5B084C()
{
  result = qword_27F019268;
  if (!qword_27F019268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019268);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24B5B08C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24B5B090C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24B5B0980()
{
  result = qword_27F019270;
  if (!qword_27F019270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019270);
  }

  return result;
}

unint64_t sub_24B5B09D8()
{
  result = qword_27F019278;
  if (!qword_27F019278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019278);
  }

  return result;
}

unint64_t sub_24B5B0A30()
{
  result = qword_27F019280;
  if (!qword_27F019280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019280);
  }

  return result;
}

uint64_t sub_24B5B0A84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x800000024B60A910 == a2;
  if (v3 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B60A930 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024B60A950 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024B60A970 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B60A990 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024B60A9B0 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024B60A9D0 == a2 || (sub_24B5FFECC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024B60A9F0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t FilterTrainerSectionView.init(containerWidth:artworkViewBuilder:headerViewBuilder:options:onOptionSelected:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  *(a9 + 16) = a10;
  *a9 = a1;
  *(a9 + 8) = a2;
  v25 = a8;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29 = a14;
  v30 = a15;
  v31 = a16;
  v21 = type metadata accessor for FilterTrainerSectionView(0, &v25);

  a3(v22);

  *(a9 + *(v21 + 120)) = a5;
  v24 = (a9 + *(v21 + 116));
  *v24 = a6;
  v24[1] = a7;
  return result;
}

uint64_t FilterTrainerSectionView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v2 = *(a1 + 80);
  v70 = *(a1 + 88);
  v71 = v2;
  v102 = v2;
  v103 = v70;
  v3 = *(a1 + 24);
  v74 = *(a1 + 32);
  v68 = (a1 + 40);
  v69 = (a1 + 56);
  v4 = *(a1 + 48);
  v65 = v3;
  v66 = v4;
  v67 = *(a1 + 64);
  v64 = a1;
  v99 = v3;
  v100 = v4;
  v101 = v67;
  type metadata accessor for Option(255, &v99);
  swift_getTupleTypeMetadata2();
  v60 = sub_24B5FFBBC();
  v63 = *(a1 + 16);
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  v59 = sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  v62 = MEMORY[0x277CE14C0];
  swift_getWitnessTable();
  sub_24B5FF84C();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  v6 = sub_24B5FEFEC();
  WitnessTable = swift_getWitnessTable();
  v98 = MEMORY[0x277CDF918];
  v7 = MEMORY[0x277CDFAD8];
  v95 = swift_getWitnessTable();
  v96 = MEMORY[0x277CDF678];
  v93 = swift_getWitnessTable();
  v94 = sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0, MEMORY[0x277CE0470]);
  v8 = swift_getWitnessTable();
  v99 = v6;
  v100 = v8;
  swift_getOpaqueTypeMetadata2();
  v99 = v6;
  v100 = v8;
  swift_getOpaqueTypeConformance2();
  v9 = sub_24B5FF82C();
  v10 = swift_getWitnessTable();
  v99 = v9;
  v100 = v10;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018870, &qword_24B600AA0);
  v11 = sub_24B5FEFEC();
  v99 = v9;
  v100 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0, MEMORY[0x277CE0328]);
  v12 = swift_getWitnessTable();
  v13 = sub_24B57D828();
  v99 = v11;
  v100 = &type metadata for FilterButtonStyle;
  *&v101 = v12;
  *(&v101 + 1) = v13;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018860, &qword_24B600C40);
  v14 = sub_24B5FEFEC();
  v99 = v11;
  v100 = &type metadata for FilterButtonStyle;
  *&v101 = v12;
  *(&v101 + 1) = v13;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40, MEMORY[0x277CE08A0]);
  v61 = v7;
  v15 = swift_getWitnessTable();
  v99 = v14;
  v100 = v15;
  swift_getOpaqueTypeMetadata2();
  v16 = sub_24B5FEFEC();
  v17 = swift_getWitnessTable();
  v99 = v60;
  v100 = MEMORY[0x277D837D0];
  *&v101 = v16;
  *(&v101 + 1) = v17;
  v102 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v99 = v14;
  v100 = v15;
  v87 = swift_getOpaqueTypeConformance2();
  v88 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v86 = swift_getWitnessTable();
  swift_getWitnessTable();
  v18 = sub_24B5FF93C();
  v19 = swift_getWitnessTable();
  v99 = v18;
  v100 = v19;
  swift_getOpaqueTypeMetadata2();
  v99 = v18;
  v100 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = sub_24B5FEF2C();
  v21 = swift_getWitnessTable();
  v99 = v20;
  v100 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = sub_24B5FF3AC();
  v99 = v20;
  v100 = v21;
  v24 = swift_getOpaqueTypeConformance2();
  v99 = OpaqueTypeMetadata2;
  v100 = v23;
  v25 = MEMORY[0x277CDE478];
  *&v101 = v24;
  *(&v101 + 1) = MEMORY[0x277CDE478];
  v26 = swift_getOpaqueTypeMetadata2();
  v99 = OpaqueTypeMetadata2;
  v100 = v23;
  *&v101 = v24;
  *(&v101 + 1) = v25;
  v27 = swift_getOpaqueTypeConformance2();
  v99 = v26;
  v100 = v27;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v58 = sub_24B5FF94C();
  v57 = swift_getWitnessTable();
  v56 = sub_24B5FF87C();
  v60 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v53 - v28;
  v59 = sub_24B5FEFEC();
  v62 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = &v53 - v29;
  v30 = sub_24B5FF8DC();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = (&v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = sub_24B5FF8EC();
  v35 = *(v34 - 8);
  v36 = v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v53 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v33 = xmmword_24B600A10;
  (*(v31 + 104))(v33, *MEMORY[0x277CDF108], v30);
  sub_24B5FF8FC();
  v39 = sub_24B5FFB9C();
  *(v39 + 16) = 5;
  v40 = v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
  v41 = *(v35 + 16);
  v41(v40, v38, v34);
  v42 = *(v35 + 72);
  v41(v40 + v42, v38, v34);
  v41(v40 + 2 * v42, v38, v34);
  v41(v40 + 3 * v42, v38, v34);
  (*(v36 + 32))(v40 + 4 * v42, v38, v34);
  sub_24B5FF1DC();
  *&v43 = v74;
  *(&v43 + 1) = *v68;
  *&v44 = v63;
  *(&v44 + 1) = v65;
  v75 = v44;
  v76 = v43;
  *&v43 = v66;
  *(&v43 + 1) = *v69;
  v77 = v43;
  v78 = v67;
  v79 = v71;
  v80 = v70;
  v81 = *(v64 + 96);
  v82 = v72;
  v83 = v39;
  v45 = v55;
  sub_24B5FF86C();

  v46 = v56;
  v47 = swift_getWitnessTable();
  v48 = v54;
  sub_24B5FF75C();
  (*(v60 + 8))(v45, v46);
  v49 = sub_24B5FF3EC();
  v84 = v47;
  v85 = MEMORY[0x277CDFC48];
  v50 = v59;
  v51 = swift_getWitnessTable();
  sub_24B57FC54(v49, 0x4034000000000000, 0, v50, v51);
  return (*(v62 + 8))(v48, v50);
}

uint64_t sub_24B5B1A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, ValueMetadata *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, ValueMetadata *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, ValueMetadata *a12, uint64_t a13, uint64_t a14)
{
  v141 = a8;
  v121 = a4;
  v122 = a7;
  v125 = a6;
  v126 = a1;
  v145 = a5;
  v138 = a3;
  v127 = a2;
  v136 = a9;
  v144 = a14;
  v124 = a13;
  v123 = a12;
  v140 = a11;
  v139 = a10;
  v16 = sub_24B5FF23C();
  v134 = *(v16 - 8);
  v135 = v16;
  MEMORY[0x28223BE20](v16);
  v133 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24B5FF38C();
  MEMORY[0x28223BE20](v18 - 8);
  v131 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_24B5FF3AC();
  Description = v143[-1].Description;
  MEMORY[0x28223BE20](v143);
  v130 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_24B5FF33C();
  v128 = *(v21 - 8);
  v129 = v21;
  MEMORY[0x28223BE20](v21);
  v142 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = a4;
  v149 = a7;
  v150 = a10;
  v151 = a11;
  v152 = a12;
  v153 = a13;
  type metadata accessor for Option(255, &v148);
  swift_getTupleTypeMetadata2();
  v137 = sub_24B5FFBBC();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  v120 = sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF84C();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  v23 = sub_24B5FEFEC();
  WitnessTable = swift_getWitnessTable();
  v171 = MEMORY[0x277CDF918];
  v168 = swift_getWitnessTable();
  v169 = MEMORY[0x277CDF678];
  v24 = swift_getWitnessTable();
  v25 = sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0, MEMORY[0x277CE0470]);
  v166 = v24;
  v167 = v25;
  v26 = swift_getWitnessTable();
  v148 = v23;
  v149 = v26;
  swift_getOpaqueTypeMetadata2();
  v148 = v23;
  v149 = v26;
  swift_getOpaqueTypeConformance2();
  v27 = sub_24B5FF82C();
  v28 = swift_getWitnessTable();
  v148 = v27;
  v149 = v28;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018870, &qword_24B600AA0);
  v29 = sub_24B5FEFEC();
  v148 = v27;
  v149 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0, MEMORY[0x277CE0328]);
  v164 = OpaqueTypeConformance2;
  v165 = v31;
  v32 = swift_getWitnessTable();
  v33 = sub_24B57D828();
  v148 = v29;
  v149 = &type metadata for FilterButtonStyle;
  v150 = v32;
  v151 = v33;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018860, &qword_24B600C40);
  v34 = sub_24B5FEFEC();
  v148 = v29;
  v149 = &type metadata for FilterButtonStyle;
  v150 = v32;
  v151 = v33;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40, MEMORY[0x277CE08A0]);
  v162 = v35;
  v163 = v36;
  v37 = swift_getWitnessTable();
  v148 = v34;
  v149 = v37;
  swift_getOpaqueTypeMetadata2();
  v38 = sub_24B5FEFEC();
  v39 = v137;
  v40 = swift_getWitnessTable();
  v148 = v39;
  v149 = MEMORY[0x277D837D0];
  v150 = v38;
  v151 = v40;
  v152 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v148 = v34;
  v149 = v37;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v160 = v41;
  v161 = v42;
  v159 = swift_getWitnessTable();
  swift_getWitnessTable();
  v43 = sub_24B5FF93C();
  v44 = swift_getWitnessTable();
  v148 = v43;
  v149 = v44;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v148 = v43;
  v149 = v44;
  v101 = swift_getOpaqueTypeConformance2();
  v45 = sub_24B5FEF2C();
  v111 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v100 = &v100 - v46;
  v47 = swift_getWitnessTable();
  v148 = v45;
  v149 = v47;
  v48 = swift_getOpaqueTypeMetadata2();
  v108 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v106 = &v100 - v49;
  v112 = v45;
  v148 = v45;
  v104 = v47;
  v149 = v47;
  v50 = swift_getOpaqueTypeConformance2();
  v148 = v48;
  v51 = v143;
  v149 = v143;
  v52 = MEMORY[0x277CDE478];
  v150 = v50;
  v151 = MEMORY[0x277CDE478];
  v53 = swift_getOpaqueTypeMetadata2();
  v114 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v109 = &v100 - v54;
  v110 = v48;
  v148 = v48;
  v149 = v51;
  v103 = v50;
  v150 = v50;
  v151 = v52;
  v55 = swift_getOpaqueTypeConformance2();
  v117 = v53;
  v148 = v53;
  v107 = v55;
  v149 = v55;
  v120 = swift_getOpaqueTypeMetadata2();
  v116 = *(v120 - 8);
  v56 = MEMORY[0x28223BE20](v120);
  v119 = &v100 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = MEMORY[0x28223BE20](v56);
  v105 = &v100 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v115 = &v100 - v61;
  v62 = v145;
  v118 = *(v145 - 8);
  v63 = MEMORY[0x28223BE20](v60);
  v113 = &v100 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v66 = &v100 - v65;
  v148 = v138;
  v67 = v121;
  v68 = v122;
  v149 = v121;
  v150 = v62;
  v69 = v124;
  v70 = v125;
  v151 = v125;
  v152 = v122;
  v153 = v141;
  v154 = v139;
  v155 = v140;
  v71 = v123;
  v156 = v123;
  v157 = v124;
  v72 = v144;
  v158 = v144;
  type metadata accessor for FilterTrainerSectionView(0, &v148);
  v73 = v126;
  v137 = v66;
  sub_24B5FC7F0();
  v74 = sub_24B5FF3BC();
  v146[2] = v138;
  v146[3] = v67;
  v146[4] = v62;
  v146[5] = v70;
  v146[6] = v68;
  v146[7] = v141;
  v146[8] = v139;
  v146[9] = v140;
  v146[10] = v71;
  v146[11] = v69;
  v75 = v100;
  v146[12] = v72;
  v146[13] = v127;
  v146[14] = v73;
  sub_24B5EB7C0(v74, sub_24B5B73F4, v146, OpaqueTypeMetadata2, v101);
  sub_24B5FF31C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018908, &unk_24B600B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24B600A20;
  LOBYTE(v70) = sub_24B5FF3DC();
  *(inited + 32) = v70;
  v77 = sub_24B5FF3BC();
  *(inited + 33) = v77;
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v70)
  {
    sub_24B5FF3CC();
  }

  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v77)
  {
    sub_24B5FF3CC();
  }

  v78 = v109;
  v79 = v106;
  v80 = v142;
  v81 = v112;
  sub_24B5FF62C();
  (*(v128 + 8))(v80, v129);
  (*(v111 + 8))(v75, v81);
  sub_24B5FF37C();
  v82 = v130;
  sub_24B5FF39C();
  v83 = v110;
  v84 = v143;
  sub_24B5FF67C();
  Description[1](v82, v84);
  (*(v108 + 8))(v79, v83);
  v85 = v133;
  sub_24B5FF22C();
  LOBYTE(v84) = sub_24B5FF3BC();
  sub_24B5FF3CC();
  sub_24B5FF3CC();
  if (sub_24B5FF3CC() != v84)
  {
    sub_24B5FF3CC();
  }

  v86 = v105;
  v87 = v117;
  v88 = v107;
  sub_24B5FF66C();
  (*(v134 + 8))(v85, v135);
  (*(v114 + 8))(v78, v87);
  v148 = v87;
  v149 = v88;
  v89 = swift_getOpaqueTypeConformance2();
  v90 = v115;
  v91 = v120;
  sub_24B5FC7F0();
  v92 = v116;
  v143 = *(v116 + 8);
  (v143)(v86, v91);
  v93 = v118;
  v94 = v113;
  v95 = v145;
  (*(v118 + 16))(v113, v137, v145);
  v148 = v94;
  v96 = v119;
  (*(v92 + 16))(v119, v90, v91);
  v149 = v96;
  v146[17] = v89;
  v147[0] = v95;
  v147[1] = v91;
  v146[16] = v144;
  sub_24B5F7CDC(&v148, 2uLL, v147);
  v97 = v143;
  (v143)(v90, v91);
  v98 = *(v93 + 8);
  v98(v137, v95);
  (v97)(v96, v91);
  return (v98)(v94, v95);
}

uint64_t sub_24B5B2B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, ValueMetadata *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v66 = a6;
  v67 = a8;
  v56 = a4;
  v57 = a7;
  v63 = a1;
  v64 = a5;
  v55 = a3;
  v68 = a2;
  v69 = a9;
  v65 = a14;
  v61 = a13;
  v60 = a12;
  v59 = a11;
  v58 = a10;
  v16 = sub_24B5FF28C();
  MEMORY[0x28223BE20](v16 - 8);
  v62 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = a4;
  v96 = a7;
  v97 = a10;
  v98 = a11;
  v99 = a12;
  v100 = a13;
  type metadata accessor for Option(255, &v95);
  swift_getTupleTypeMetadata2();
  v54 = sub_24B5FFBBC();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  v53 = sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF84C();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  v18 = sub_24B5FEFEC();
  WitnessTable = swift_getWitnessTable();
  v94 = MEMORY[0x277CDF918];
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x277CDF678];
  v19 = swift_getWitnessTable();
  v20 = sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0, MEMORY[0x277CE0470]);
  v89 = v19;
  v90 = v20;
  v21 = swift_getWitnessTable();
  v95 = v18;
  v96 = v21;
  swift_getOpaqueTypeMetadata2();
  v95 = v18;
  v96 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = sub_24B5FF82C();
  v23 = swift_getWitnessTable();
  v95 = v22;
  v96 = v23;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018870, &qword_24B600AA0);
  v24 = sub_24B5FEFEC();
  v95 = v22;
  v96 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0, MEMORY[0x277CE0328]);
  v87 = OpaqueTypeConformance2;
  v88 = v26;
  v27 = swift_getWitnessTable();
  v28 = sub_24B57D828();
  v95 = v24;
  v96 = &type metadata for FilterButtonStyle;
  v97 = v27;
  v98 = v28;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018860, &qword_24B600C40);
  v29 = sub_24B5FEFEC();
  v95 = v24;
  v96 = &type metadata for FilterButtonStyle;
  v97 = v27;
  v98 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40, MEMORY[0x277CE08A0]);
  v85 = v30;
  v86 = v31;
  v32 = swift_getWitnessTable();
  v95 = v29;
  v96 = v32;
  swift_getOpaqueTypeMetadata2();
  v33 = sub_24B5FEFEC();
  v34 = v54;
  v35 = swift_getWitnessTable();
  v95 = v34;
  v96 = MEMORY[0x277D837D0];
  v97 = v33;
  v98 = v35;
  v99 = MEMORY[0x277D837E0];
  sub_24B5FF8CC();
  v95 = v29;
  v96 = v32;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v83 = v36;
  v84 = v37;
  v82 = swift_getWitnessTable();
  v50[2] = swift_getWitnessTable();
  v38 = sub_24B5FF93C();
  v54 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v40 = v50 - v39;
  v51 = swift_getWitnessTable();
  v95 = v38;
  v96 = v51;
  v53 = MEMORY[0x277CDEA40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v52 = *(OpaqueTypeMetadata2 - 8);
  v42 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v44 = v50 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = v50 - v45;

  v50[1] = sub_24B5FF12C();
  v70 = v55;
  v71 = v56;
  v72 = v64;
  v73 = v66;
  v74 = v57;
  v75 = v67;
  v76 = v58;
  v77 = v59;
  v78 = v60;
  v79 = v61;
  v80 = v65;
  v81 = v68;
  sub_24B5CA50C();
  sub_24B5FF92C();
  v47 = v51;
  sub_24B5FF63C();
  (*(v54 + 8))(v40, v38);
  v95 = v38;
  v96 = v47;
  swift_getOpaqueTypeConformance2();
  sub_24B5FC7F0();
  v48 = *(v52 + 8);
  v48(v44, OpaqueTypeMetadata2);
  sub_24B5FC7F0();
  return (v48)(v46, OpaqueTypeMetadata2);
}

uint64_t sub_24B5B3448@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, ValueMetadata *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, ValueMetadata *a11, uint64_t a12, uint64_t a13)
{
  v77 = a7;
  v75 = a5;
  v74 = a4;
  v73 = a1;
  v79 = a9;
  v76 = a13;
  v93 = a2;
  v94 = a3;
  v62 = a2;
  v67 = a3;
  v95 = a4;
  v96 = a5;
  v97 = a6;
  v98 = a7;
  v68 = a6;
  v99 = a8;
  v100 = a10;
  v72 = a8;
  v69 = a10;
  v101 = a11;
  v102 = a12;
  v70 = a11;
  v71 = a12;
  v103 = a13;
  v65 = type metadata accessor for FilterTrainerSectionView(0, &v93);
  v64 = *(v65 - 8);
  v66 = *(v64 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = v57 - v16;
  v93 = a3;
  v94 = a6;
  v95 = a8;
  v96 = a10;
  v97 = a11;
  v98 = a12;
  v78 = type metadata accessor for Option(255, &v93);
  swift_getTupleTypeMetadata2();
  v61 = sub_24B5FFBBC();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF84C();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  v17 = sub_24B5FEFEC();
  WitnessTable = swift_getWitnessTable();
  v92 = MEMORY[0x277CDF918];
  v18 = MEMORY[0x277CDFAD8];
  v89 = swift_getWitnessTable();
  v90 = MEMORY[0x277CDF678];
  v19 = swift_getWitnessTable();
  v20 = sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0, MEMORY[0x277CE0470]);
  v87 = v19;
  v88 = v20;
  v21 = swift_getWitnessTable();
  v93 = v17;
  v94 = v21;
  swift_getOpaqueTypeMetadata2();
  v93 = v17;
  v94 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = sub_24B5FF82C();
  v23 = swift_getWitnessTable();
  v93 = v22;
  v94 = v23;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018870, &qword_24B600AA0);
  v24 = sub_24B5FEFEC();
  v93 = v22;
  v94 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0, MEMORY[0x277CE0328]);
  v85 = OpaqueTypeConformance2;
  v86 = v26;
  v60 = v18;
  v27 = swift_getWitnessTable();
  v28 = sub_24B57D828();
  v93 = v24;
  v94 = &type metadata for FilterButtonStyle;
  v95 = v27;
  v96 = v28;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018860, &qword_24B600C40);
  v29 = sub_24B5FEFEC();
  v93 = v24;
  v94 = &type metadata for FilterButtonStyle;
  v95 = v27;
  v96 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40, MEMORY[0x277CE08A0]);
  v83 = v30;
  v84 = v31;
  v59 = v29;
  v58 = swift_getWitnessTable();
  v93 = v29;
  v94 = v58;
  v57[1] = MEMORY[0x277D7EDA0];
  swift_getOpaqueTypeMetadata2();
  v32 = sub_24B5FEFEC();
  v57[2] = v32;
  v33 = v61;
  v34 = swift_getWitnessTable();
  v93 = v33;
  v94 = MEMORY[0x277D837D0];
  v95 = v32;
  v96 = v34;
  v97 = MEMORY[0x277D837E0];
  v35 = sub_24B5FF8CC();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = v57 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = v57 - v40;
  v42 = v65;
  v43 = v64;
  v44 = v63;
  (*(v64 + 16))(v63);
  v45 = (*(v43 + 80) + 104) & ~*(v43 + 80);
  v46 = swift_allocObject();
  v47 = v67;
  *(v46 + 2) = v62;
  *(v46 + 3) = v47;
  v48 = v75;
  *(v46 + 4) = v74;
  *(v46 + 5) = v48;
  v49 = v77;
  *(v46 + 6) = v68;
  *(v46 + 7) = v49;
  v50 = v69;
  *(v46 + 8) = v72;
  *(v46 + 9) = v50;
  v51 = v71;
  *(v46 + 10) = v70;
  *(v46 + 11) = v51;
  *(v46 + 12) = v76;
  (*(v43 + 32))(&v46[v45], v44, v42);

  v93 = v59;
  v94 = v58;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v81 = v52;
  v82 = v53;
  v54 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24B5FF8AC();
  v80 = v54;
  swift_getWitnessTable();
  sub_24B5FC7F0();
  v55 = *(v36 + 8);
  v55(v39, v35);
  sub_24B5FC7F0();
  return (v55)(v41, v35);
}

uint64_t sub_24B5B3E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, ValueMetadata *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v184 = a7;
  v173 = a6;
  v178 = a2;
  v179 = a3;
  v180 = a1;
  v165 = a9;
  v183 = a15;
  v176 = a12;
  v181 = a10;
  v164 = sub_24B5FF1BC();
  v162 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24B5FFA3C();
  v160 = *(v20 - 8);
  v161 = v20;
  MEMORY[0x28223BE20](v20);
  v159 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24B5FF9DC();
  MEMORY[0x28223BE20](v22 - 8);
  v158 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_24B5FF9FC();
  MEMORY[0x28223BE20](v24 - 8);
  v156 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018910, &qword_24B606920);
  MEMORY[0x28223BE20](v26 - 8);
  v157 = &v120 - v27;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018968, &qword_24B600CF0);
  MEMORY[0x28223BE20](v155);
  v154 = &v120 - v28;
  v182 = a5;
  v211 = a5;
  v212 = a8;
  v174 = a8;
  v177 = a11;
  v213 = a11;
  v214 = a12;
  v172 = a13;
  v215 = a13;
  v216 = a14;
  v147 = a14;
  v185 = type metadata accessor for Option(0, &v211);
  v171 = *(v185 - 8);
  v146 = *(v171 + 64);
  MEMORY[0x28223BE20](v185);
  v175 = &v120 - v29;
  v169 = a4;
  v211 = a4;
  v212 = a5;
  v213 = a6;
  v214 = v184;
  v215 = a8;
  v216 = a10;
  v217 = a11;
  v218 = a12;
  v219 = a13;
  v220 = a14;
  v221 = v183;
  v166 = type metadata accessor for FilterTrainerSectionView(0, &v211);
  v168 = *(v166 - 8);
  v145 = *(v168 + 64);
  MEMORY[0x28223BE20](v166);
  v170 = &v120 - v30;
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  v153 = sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  swift_getWitnessTable();
  sub_24B5FF84C();
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  v31 = sub_24B5FEFEC();
  WitnessTable = swift_getWitnessTable();
  v210 = MEMORY[0x277CDF918];
  v207 = swift_getWitnessTable();
  v208 = MEMORY[0x277CDF678];
  v32 = swift_getWitnessTable();
  v33 = sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0, MEMORY[0x277CE0470]);
  v205 = v32;
  v206 = v33;
  v34 = swift_getWitnessTable();
  v211 = v31;
  v212 = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v211 = v31;
  v212 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = sub_24B5FF82C();
  v139 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v133 = &v120 - v36;
  v37 = swift_getWitnessTable();
  v211 = v35;
  v212 = v37;
  v38 = v35;
  v127 = v35;
  v128 = v37;
  v39 = v37;
  v138 = swift_getOpaqueTypeMetadata2();
  v143 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v131 = &v120 - v40;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018870, &qword_24B600AA0);
  v41 = sub_24B5FEFEC();
  v142 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v135 = &v120 - v42;
  v211 = v38;
  v212 = v39;
  v43 = swift_getOpaqueTypeConformance2();
  v132 = v43;
  v44 = sub_24B58085C(&qword_27F018868, &qword_27F018870, &qword_24B600AA0, MEMORY[0x277CE0328]);
  v203 = v43;
  v204 = v44;
  v45 = swift_getWitnessTable();
  v46 = sub_24B57D828();
  v211 = v41;
  v212 = &type metadata for FilterButtonStyle;
  v47 = v41;
  v123 = v41;
  v124 = v46;
  v213 = v45;
  v214 = v46;
  v125 = v45;
  v48 = v46;
  v130 = swift_getOpaqueTypeMetadata2();
  v134 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v129 = &v120 - v49;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018860, &qword_24B600C40);
  v50 = sub_24B5FEFEC();
  v141 = v50;
  v144 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v126 = &v120 - v51;
  v211 = v47;
  v212 = &type metadata for FilterButtonStyle;
  v213 = v45;
  v214 = v48;
  v52 = swift_getOpaqueTypeConformance2();
  v122 = v52;
  v53 = sub_24B58085C(&qword_27F018858, &qword_27F018860, &qword_24B600C40, MEMORY[0x277CE08A0]);
  v201 = v52;
  v202 = v53;
  v140 = swift_getWitnessTable();
  v211 = v50;
  v212 = v140;
  v54 = swift_getOpaqueTypeMetadata2();
  v148 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v167 = &v120 - v55;
  v150 = v56;
  v57 = sub_24B5FEFEC();
  v152 = *(v57 - 8);
  v153 = v57;
  v58 = MEMORY[0x28223BE20](v57);
  v149 = &v120 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v151 = &v120 - v60;
  v61 = v168;
  (*(v168 + 16))(v170, v179, v166);
  v62 = v171;
  (*(v171 + 16))(v175, v178, v185);
  v121 = (*(v61 + 80) + 104) & ~*(v61 + 80);
  v145 = (v145 + *(v62 + 80) + v121) & ~*(v62 + 80);
  v146 = (v146 + v145 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v64 = v169;
  v65 = v181;
  v66 = v182;
  *(v63 + 2) = v169;
  *(v63 + 3) = v66;
  v68 = v173;
  v67 = v174;
  v69 = v184;
  *(v63 + 4) = v173;
  *(v63 + 5) = v69;
  *(v63 + 6) = v67;
  *(v63 + 7) = v65;
  v70 = v176;
  *(v63 + 8) = v177;
  *(v63 + 9) = v70;
  v71 = v172;
  v72 = v147;
  *(v63 + 10) = v172;
  *(v63 + 11) = v72;
  *(v63 + 12) = v183;
  (*(v168 + 32))(&v63[v121], v170, v166);
  (*(v171 + 32))(&v63[v145], v175, v185);
  v73 = v179;
  *&v63[v146] = v180;
  v186 = v64;
  v187 = v66;
  v188 = v68;
  v189 = v69;
  v190 = v67;
  v191 = v65;
  v75 = v176;
  v74 = v177;
  v192 = v177;
  v193 = v176;
  v194 = v71;
  v195 = v72;
  v196 = v183;
  v76 = v178;
  v197 = v178;
  v198 = v73;
  v77 = v133;
  sub_24B5FF81C();
  sub_24B5FF3BC();
  sub_24B5FF91C();
  v78 = v131;
  v79 = v127;
  sub_24B5FF69C();
  (*(v139 + 8))(v77, v79);
  v80 = *MEMORY[0x277CE0118];
  v81 = sub_24B5FF18C();
  v82 = v154;
  (*(*(v81 - 8) + 104))(v154, v80, v81);
  *&v119 = v75;
  *(&v119 + 1) = v172;
  v83 = v76;
  v84 = sub_24B584BD4(v76, v169, v182, v173, v184, v174, v181, v74, v119, v72);
  *(v82 + *(v155 + 36)) = v84;
  sub_24B5FF90C();
  sub_24B5B7ADC();
  v85 = v135;
  v86 = v138;
  sub_24B5FF58C();
  sub_24B58090C(v82, &qword_27F018968, &qword_24B600CF0);
  (*(v143 + 8))(v78, v86);
  v87 = v129;
  v88 = v123;
  sub_24B5FF5BC();
  (*(v142 + 8))(v85, v88);
  v89 = v185;
  v90 = *(v185 + 68);
  v91 = v126;
  v92 = v130;
  sub_24B5FF70C();
  (*(v134 + 8))(v87, v92);
  Option.identifier.getter(v89);
  v93 = v180;
  sub_24B5FF9EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018988, &unk_24B6034F0);
  inited = swift_initStackObject();
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_24B600A40;
  *(inited + 40) = 0xE400000000000000;
  v95 = (*(v181 + 24))(v182);
  v96 = MEMORY[0x277D837D0];
  *(inited + 48) = v95;
  *(inited + 56) = v97;
  *(inited + 72) = v96;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x7265746C6966;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v96;
  *(inited + 128) = 0x6973736572706D69;
  v98 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v93;
  *(inited + 168) = v98;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v96;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_24B5EA4D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018990, &unk_24B600BF0);
  swift_arrayDestroy();
  sub_24B5FF9CC();
  v99 = MEMORY[0x277D84F90];
  sub_24B5F033C(MEMORY[0x277D84F90]);
  sub_24B5F033C(v99);
  v100 = v157;
  v102 = v140;
  v101 = v141;
  sub_24B5FFA0C();
  v103 = sub_24B5FFA1C();
  (*(*(v103 - 8) + 56))(v100, 0, 1, v103);
  v104 = v159;
  sub_24B5FFA2C();
  sub_24B5FF55C();
  (*(v160 + 8))(v104, v161);
  sub_24B58090C(v100, &qword_27F018910, &qword_24B606920);
  (*(v144 + 8))(v91, v101);
  if (*(v83 + v90) == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018998, &qword_24B600D30);
    v105 = v162;
    v106 = swift_allocObject();
    *(v106 + 16) = xmmword_24B600A30;
    sub_24B5FF19C();
    v211 = v106;
    sub_24B5B7C24(&qword_27F018970, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0, MEMORY[0x277D83970]);
    v108 = v163;
    v107 = v164;
    sub_24B5FFC6C();
    v109 = v105;
  }

  else
  {
    v211 = v99;
    sub_24B5B7C24(&qword_27F018970, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018978, &unk_24B600BE0);
    sub_24B58085C(&qword_27F018980, &qword_27F018978, &unk_24B600BE0, MEMORY[0x277D83970]);
    v108 = v163;
    v107 = v164;
    sub_24B5FFC6C();
    v109 = v162;
  }

  v211 = v101;
  v212 = v102;
  v110 = swift_getOpaqueTypeConformance2();
  v112 = v149;
  v111 = v150;
  v113 = v167;
  sub_24B5FF68C();
  (*(v109 + 8))(v108, v107);
  (*(v148 + 8))(v113, v111);
  v114 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v199 = v110;
  v200 = v114;
  v115 = v153;
  swift_getWitnessTable();
  v116 = v151;
  sub_24B5FC7F0();
  v117 = *(v152 + 8);
  v117(v112, v115);
  sub_24B5FC7F0();
  return (v117)(v116, v115);
}

uint64_t sub_24B5B526C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  v66 = a8;
  v64 = a7;
  v62 = a6;
  v61 = a5;
  v59 = a4;
  v56 = a3;
  v65 = a2;
  v63 = a1;
  v72 = a9;
  v60 = a12;
  v58 = a11;
  v57 = a10;
  v71 = sub_24B5FF35C();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_24B5FF89C();
  MEMORY[0x28223BE20](v68);
  v67 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24B5FEFEC();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  sub_24B5FEFEC();
  sub_24B5FF36C();
  sub_24B5FEFEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F019290, &qword_24B603448);
  sub_24B5FF21C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
  swift_getTupleTypeMetadata2();
  sub_24B5FF94C();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_24B5FF84C();
  v53 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  v17 = sub_24B5FEFEC();
  v52 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - v18;
  v20 = sub_24B5FEFEC();
  v55 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v49 = &v43 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018960, &qword_24B600BA0);
  v46 = v20;
  v22 = sub_24B5FEFEC();
  v54 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v50 = &v43 - v23;
  v43 = swift_getWitnessTable();
  v90 = v43;
  v91 = MEMORY[0x277CDF918];
  v44 = swift_getWitnessTable();
  v88 = v44;
  v89 = MEMORY[0x277CDF678];
  v24 = swift_getWitnessTable();
  v45 = v24;
  v25 = sub_24B58085C(&qword_27F018958, &qword_27F018960, &qword_24B600BA0, MEMORY[0x277CE0470]);
  v86 = v24;
  v87 = v25;
  v47 = swift_getWitnessTable();
  v84 = v22;
  v85 = v47;
  v48 = MEMORY[0x277CDEAE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v27 = *(OpaqueTypeMetadata2 - 8);
  v28 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v43 - v31;
  sub_24B5FF12C();
  v73 = v56;
  v74 = v59;
  v75 = v61;
  v76 = v62;
  v77 = v64;
  v78 = v66;
  v79 = v57;
  v80 = v58;
  v81 = v60;
  v82 = v63;
  v83 = v65;
  sub_24B5FF83C();
  sub_24B5FF6EC();
  (*(v53 + 8))(v16, v14);
  sub_24B5FF90C();
  v33 = v49;
  sub_24B5FF6CC();
  (*(v52 + 8))(v19, v17);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_24B5FF18C();
  v36 = v67;
  (*(*(v35 - 8) + 104))(v67, v34, v35);
  sub_24B5B7C24(&qword_27F019328, MEMORY[0x277CE1260], MEMORY[0x277CE1258]);
  v37 = v50;
  v38 = v46;
  sub_24B5FF5DC();
  sub_24B5B7C6C(v36, MEMORY[0x277CE1260]);
  (*(v55 + 8))(v33, v38);
  v39 = v69;
  sub_24B5FF34C();
  v40 = v47;
  sub_24B5FF65C();
  (*(v70 + 8))(v39, v71);
  (*(v54 + 8))(v37, v22);
  v84 = v22;
  v85 = v40;
  swift_getOpaqueTypeConformance2();
  sub_24B5FC7F0();
  v41 = *(v27 + 8);
  v41(v30, OpaqueTypeMetadata2);
  sub_24B5FC7F0();
  return (v41)(v32, OpaqueTypeMetadata2);
}

uint64_t sub_24B5B5BE8@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v174 = a5;
  v175 = a7;
  v181 = a6;
  v172 = a3;
  v173 = a4;
  v160 = a2;
  v171 = a1;
  v165 = a9;
  v168 = a13;
  v167 = a12;
  v166 = a11;
  v169 = a10;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019330, &qword_24B603500);
  v16 = MEMORY[0x28223BE20](v146);
  v147 = &v143 - v17;
  v153 = *(a3 - 8);
  MEMORY[0x28223BE20](v16);
  v149 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_24B5FEFEC();
  v152 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v148 = &v143 - v20;
  v180 = v21;
  v22 = sub_24B5FEFEC();
  v154 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v150 = &v143 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019288, &qword_24B603440);
  v179 = v22;
  v24 = sub_24B5FEFEC();
  v155 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v151 = &v143 - v25;
  sub_24B5FF36C();
  v178 = v24;
  v26 = sub_24B5FEFEC();
  v158 = *(v26 - 8);
  v27 = MEMORY[0x28223BE20](v26);
  v157 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v156 = &v143 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F019290, &qword_24B603448);
  MEMORY[0x28223BE20](v30);
  v144 = (&v143 - v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019338, &qword_24B603508);
  MEMORY[0x28223BE20](v32 - 8);
  v159 = &v143 - v33;
  v34 = type metadata accessor for Artwork(0);
  v182 = *(v34 - 8);
  v183 = v34;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v143 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v143 - v39;
  MEMORY[0x28223BE20](v38);
  v145 = &v143 - v41;
  v177 = v26;
  v161 = v30;
  v42 = sub_24B5FF21C();
  v163 = *(v42 - 8);
  v164 = v42;
  v43 = MEMORY[0x28223BE20](v42);
  v162 = &v143 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v170 = &v143 - v45;
  v46 = *(a8 + 8);
  v176 = a8;
  v47 = v46(a4, a8);
  v48 = v47;
  v49 = v47 + 56;
  v50 = 1 << *(v47 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v47 + 56);
  v53 = (v50 + 63) >> 6;

  v54 = 0;
  if (v52)
  {
    while (1)
    {
      v55 = v54;
LABEL_8:
      sub_24B57BA34(*(v48 + 48) + *(v182 + 72) * (__clz(__rbit64(v52)) | (v55 << 6)), v40);
      sub_24B57BA98(v40, v37);
      if (v37[*(v183 + 20)] > 8u)
      {
        break;
      }

      v56 = sub_24B5FFECC();

      if (v56)
      {

        goto LABEL_18;
      }

      v52 &= v52 - 1;
      sub_24B5B7C6C(v37, type metadata accessor for Artwork);
      v54 = v55;
      if (!v52)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v55 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v55 >= v53)
      {

        v57 = v182;
        v58 = *(v182 + 56);
        v59 = v159;
        v60 = v159;
        v61 = 1;
        goto LABEL_13;
      }

      v52 = *(v49 + 8 * v55);
      ++v54;
      if (v52)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

LABEL_18:
  v59 = v159;
  sub_24B57BA98(v37, v159);
  v57 = v182;
  v58 = *(v182 + 56);
  v60 = v59;
  v61 = 0;
LABEL_13:
  v62 = v183;
  v58(v60, v61, 1, v183);
  v63 = v181;
  v64 = v177;

  v65 = (*(v57 + 48))(v59, 1, v62);
  v66 = MEMORY[0x277CDFC60];
  if (v65 == 1)
  {
    sub_24B58090C(v59, &qword_27F019338, &qword_24B603508);
    v67 = sub_24B5FF90C();
    v68 = v144;
    *v144 = v67;
    *(v68 + 8) = v69;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019340, &unk_24B603510);
    *&v142[24] = v167;
    *&v142[8] = v166;
    *v142 = v169;
    v71 = v173;
    v72 = v176;
    sub_24B5B6E84(v173, v176, v68 + *(v70 + 44), *v142, *&v142[16]);
    v233 = v63;
    v234 = v66;
    WitnessTable = swift_getWitnessTable();
    v232 = MEMORY[0x277CE01B0];
    v73 = swift_getWitnessTable();
    v74 = sub_24B58085C(&qword_27F019348, &qword_27F019288, &qword_24B603440, MEMORY[0x277CDF4F0]);
    v229 = v73;
    v230 = v74;
    v75 = swift_getWitnessTable();
    v76 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v227 = v75;
    v228 = v76;
    v77 = swift_getWitnessTable();
    v78 = sub_24B58085C(&qword_27F019350, qword_27F019290, &qword_24B603448, MEMORY[0x277CE11A8]);
    sub_24B5F7FA4(v68, v64, v161, v77, v78);
    sub_24B58090C(v68, qword_27F019290, &qword_24B603448);
  }

  else
  {
    v79 = v59;
    v80 = v63;
    v81 = v145;
    sub_24B57BA98(v79, v145);
    v82 = *v160;
    v83 = *MEMORY[0x277D09DF8];
    v84 = sub_24B5FEEAC();
    v85 = v62;
    v86 = v147;
    (*(*(v84 - 8) + 104))(v147, v83, v84);
    swift_storeEnumTagMultiPayload();
    v87 = *(v85 + 24);
    v88 = v81;
    v89 = v149;
    v82(v81, v86, v81 + v87);
    sub_24B58090C(v86, &qword_27F019330, &qword_24B603500);
    sub_24B5FF90C();
    v90 = v172;
    v91 = v148;
    sub_24B5FF6DC();
    (*(v153 + 8))(v89, v90);
    v190 = v80;
    v191 = v66;
    v92 = v180;
    v93 = swift_getWitnessTable();
    v94 = v150;
    sub_24B5FF5CC();
    (*(v152 + 8))(v91, v92);
    v188 = v93;
    v189 = MEMORY[0x277CE01B0];
    v95 = v179;
    v96 = swift_getWitnessTable();
    sub_24B5B7F50();
    v97 = v151;
    sub_24B5FF74C();
    (*(v154 + 8))(v94, v95);
    v98 = sub_24B58085C(&qword_27F019348, &qword_27F019288, &qword_24B603440, MEMORY[0x277CDF4F0]);
    v186 = v96;
    v187 = v98;
    v99 = v178;
    v100 = swift_getWitnessTable();
    v101 = v157;
    sub_24B5FF64C();
    (*(v155 + 8))(v97, v99);
    v102 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v184 = v100;
    v185 = v102;
    v103 = swift_getWitnessTable();
    v104 = v156;
    sub_24B5FC7F0();
    v105 = *(v158 + 8);
    v105(v101, v64);
    sub_24B5FC7F0();
    v106 = sub_24B58085C(&qword_27F019350, qword_27F019290, &qword_24B603448, MEMORY[0x277CE11A8]);
    sub_24B5F7EAC(v101, v64, v161, v103, v106);
    v105(v101, v64);
    v105(v104, v64);
    sub_24B5B7C6C(v88, type metadata accessor for Artwork);
    v72 = v176;
    v71 = v173;
  }

  *&v224[0] = (*(v72 + 24))(v71, v72);
  *(&v224[0] + 1) = v107;
  sub_24B58096C();
  v108 = sub_24B5FF53C();
  v110 = v109;
  v112 = v111;
  sub_24B5FF4BC();
  v113 = sub_24B5FF50C();
  v115 = v114;
  v117 = v116;

  sub_24B5809C0(v108, v110, v112 & 1);

  v118 = sub_24B5FF4FC();
  v120 = v119;
  v122 = v121;
  sub_24B5809C0(v113, v115, v117 & 1);

  *&v224[0] = sub_24B584C9C(v171, v172, v173, v174, v181, v175, v176, v169, v166, v167);
  v123 = sub_24B5FF4DC();
  v125 = v124;
  v127 = v126;
  v129 = v128;
  sub_24B5809C0(v118, v120, v122 & 1);

  sub_24B5FF91C();
  sub_24B5FF03C();
  v226 = v127 & 1;
  *&v215 = v123;
  *(&v215 + 1) = v125;
  LOBYTE(v216) = v127 & 1;
  *(&v216 + 1) = *v225;
  DWORD1(v216) = *&v225[3];
  *(&v216 + 1) = v129;
  v131 = v162;
  v130 = v163;
  v132 = v170;
  v133 = v164;
  (*(v163 + 16))(v162, v170, v164);
  v211 = v221;
  v212 = v222;
  v213 = v223;
  v207 = v217;
  v208 = v218;
  v209 = v219;
  v210 = v220;
  v205 = v215;
  v206 = v216;
  v214[0] = v131;
  v214[1] = &v205;
  sub_24B5B7E5C(&v215, v224);
  v204[0] = v133;
  v204[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AC8, &unk_24B603450);
  v200 = v181;
  v201 = MEMORY[0x277CDFC60];
  v198 = swift_getWitnessTable();
  v199 = MEMORY[0x277CE01B0];
  v134 = swift_getWitnessTable();
  v135 = sub_24B58085C(&qword_27F019348, &qword_27F019288, &qword_24B603440, MEMORY[0x277CDF4F0]);
  v196 = v134;
  v197 = v135;
  v136 = swift_getWitnessTable();
  v137 = sub_24B5B7C24(qword_27F018878, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v194 = v136;
  v195 = v137;
  v138 = swift_getWitnessTable();
  v139 = sub_24B58085C(&qword_27F019350, qword_27F019290, &qword_24B603448, MEMORY[0x277CE11A8]);
  v192 = v138;
  v193 = v139;
  v202 = swift_getWitnessTable();
  v203 = sub_24B5B7ECC();
  sub_24B5F7CDC(v214, 2uLL, v204);
  sub_24B58090C(&v215, &qword_27F018AC8, &unk_24B603450);
  v140 = *(v130 + 8);
  v140(v132, v133);
  v224[6] = v211;
  v224[7] = v212;
  v224[8] = v213;
  v224[2] = v207;
  v224[3] = v208;
  v224[4] = v209;
  v224[5] = v210;
  v224[0] = v205;
  v224[1] = v206;
  sub_24B58090C(v224, &qword_27F018AC8, &unk_24B603450);
  return (v140)(v131, v133);
}

uint64_t sub_24B5B6E84@<X0>(uint64_t a1@<X3>, uint64_t a2@<X7>, uint64_t a3@<X8>, __int128 a4, __int128 a5)
{
  v59 = a3;
  v50[0] = a5;
  v50[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019368, &unk_24B609240);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = v50 - v8;
  v52 = sub_24B5FEFDC();
  v9 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v11 = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019370, &qword_24B603520);
  MEMORY[0x28223BE20](v53);
  v51 = v50 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019378, &qword_24B603528);
  MEMORY[0x28223BE20](v57);
  v54 = v50 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019380, &qword_24B603530);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v56 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v55 = v50 - v17;
  v18 = (*(a2 + 24))(a1, a2);
  v20 = sub_24B5B7CCC(v18, v19);
  v22 = v21;

  v60 = v20;
  v61 = v22;
  sub_24B58096C();
  v23 = sub_24B5FF53C();
  v25 = v24;
  LOBYTE(v22) = v26;
  v27 = sub_24B5FF4FC();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_24B5809C0(v23, v25, v22 & 1);

  v60 = v27;
  v61 = v29;
  v34 = v31 & 1;
  v62 = v31 & 1;
  v63 = v33;
  v35 = v52;
  (*(v9 + 104))(v11, *MEMORY[0x277CDF9D8], v52);
  v36 = v51;
  sub_24B5FF61C();
  (*(v9 + 8))(v11, v35);
  sub_24B5809C0(v27, v29, v34);

  v37 = sub_24B5FF4BC();
  KeyPath = swift_getKeyPath();
  v39 = &v36[*(v53 + 36)];
  v40 = v36;
  *v39 = KeyPath;
  v39[1] = v37;
  v41 = *MEMORY[0x277CE09A0];
  v42 = sub_24B5FF47C();
  v43 = *(v42 - 8);
  v44 = v58;
  (*(v43 + 104))(v58, v41, v42);
  (*(v43 + 56))(v44, 0, 1, v42);
  sub_24B5B7FA4();
  v45 = v54;
  sub_24B5FF59C();
  sub_24B58090C(v44, &qword_27F019368, &unk_24B609240);
  sub_24B58090C(v40, &qword_27F019370, &qword_24B603520);
  *(v45 + *(v57 + 36)) = sub_24B5FF2BC();
  sub_24B5B808C();
  v46 = v55;
  sub_24B5FF64C();
  sub_24B58090C(v45, &qword_27F019378, &qword_24B603528);
  LODWORD(v41) = sub_24B5FF2CC();
  v47 = v56;
  sub_24B57528C(v46, v56);
  v48 = v59;
  sub_24B57528C(v47, v59);
  *(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193B8, &qword_24B603578) + 48)) = v41;
  sub_24B58090C(v46, &qword_27F019380, &qword_24B603530);
  return sub_24B58090C(v47, &qword_27F019380, &qword_24B603530);
}

uint64_t sub_24B5B7478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = v3[3];
  v4 = v3[4];
  v5 = v3[5];
  v6 = v3[6];
  v7 = v3[7];
  v8 = v3[8];
  v9 = v3[9];
  v11 = v3[10];
  v10 = v3[11];
  v12 = v3[12];
  v20[0] = v3[2];
  v16 = v20[0];
  v20[1] = v15;
  v20[2] = v4;
  v20[3] = v5;
  v20[4] = v6;
  v20[5] = v7;
  v20[6] = v8;
  v20[7] = v9;
  v20[8] = v11;
  v20[9] = v10;
  v20[10] = v12;
  v13 = *(type metadata accessor for FilterTrainerSectionView(0, v20) - 8);
  return sub_24B5B3E04(a1, a2, v3 + ((*(v13 + 80) + 104) & ~*(v13 + 80)), v16, v15, v4, v5, v6, a3, v7, v8, v9, v11, v10, v12);
}

uint64_t sub_24B5B7560()
{
  v1 = *(v0 + 3);
  v19 = *(v0 + 4);
  v2 = *(v0 + 6);
  v17 = *(v0 + 7);
  v18 = *(v0 + 5);
  v3 = *(v0 + 8);
  v4 = *(v0 + 9);
  v5 = *(v0 + 10);
  v6 = *(v0 + 11);
  v16 = *(v0 + 12);
  v21 = *(v0 + 2);
  v20 = v21;
  v22 = v1;
  v23 = v19;
  v24 = v18;
  v25 = v2;
  v26 = v17;
  v27 = v3;
  v28 = v4;
  v29 = v5;
  v30 = v6;
  v31 = v16;
  v7 = *(type metadata accessor for FilterTrainerSectionView(0, &v21) - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v21 = v1;
  v22 = v2;
  v10 = (v8 + 104) & ~v8;
  v23 = v3;
  v24 = v4;
  v25 = v5;
  v26 = v6;
  v11 = *(type metadata accessor for Option(0, &v21) - 8);
  v12 = (v10 + v9 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *&v0[(*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8];
  v21 = v20;
  v22 = v1;
  v23 = v19;
  v24 = v18;
  v25 = v2;
  v26 = v17;
  v27 = v3;
  v28 = v4;
  v29 = v5;
  v30 = v6;
  v31 = v16;
  v14 = type metadata accessor for FilterTrainerSectionView(0, &v21);
  return (*&v0[*(v14 + 116) + v10])(&v0[v12], v13);
}

unint64_t sub_24B5B771C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_24B5FFB6C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_24B59637C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_24B59637C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_24B5FFB5C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_24B5FFB2C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_24B5FFB2C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_24B5FFB6C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_24B59637C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_24B5FFB6C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_24B59637C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_24B59637C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_24B5FFB2C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24B5B7ADC()
{
  result = qword_27F019318;
  if (!qword_27F019318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018968, &qword_24B600CF0);
    sub_24B5B7C24(&qword_27F019320, MEMORY[0x277CE1260], MEMORY[0x277CE1250]);
    sub_24B58085C(&qword_27F018B00, &qword_27F018B08, &qword_24B600D78, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019318);
  }

  return result;
}

uint64_t sub_24B5B7C24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B5B7C6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B5B7CCC(uint64_t a1, unint64_t a2)
{
  v21 = 32;
  v22 = 0xE100000000000000;
  v20[2] = &v21;

  result = sub_24B5B771C(1, 1, sub_24B5B8180, v20, a1, a2, v4);
  v6 = result;
  v7 = *(result + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = result + 56;
    v11 = 0xE000000000000000;
    while (v9 < *(v6 + 16))
    {
      v12 = *(v10 - 24);
      v13 = *(v10 - 16);

      result = sub_24B5FFC4C();
      if (v14)
      {
        v15 = v13;
      }

      else
      {
        v15 = result;
      }

      if (v15 >> 14 < v12 >> 14)
      {
        goto LABEL_13;
      }

      ++v9;
      v16 = sub_24B5FFC5C();
      v25 = v8;
      v26 = v11;
      v21 = v16;
      v22 = v17;
      v23 = v18;
      v24 = v19;
      sub_24B5B81D8();
      sub_24B5FFB3C();

      v8 = v25;
      v11 = v26;
      v10 += 32;
      if (v7 == v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    v8 = 0;
LABEL_11:

    return v8;
  }

  return result;
}

uint64_t sub_24B5B7E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018AC8, &unk_24B603450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B5B7ECC()
{
  result = qword_27F019358;
  if (!qword_27F019358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F018AC8, &unk_24B603450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019358);
  }

  return result;
}

unint64_t sub_24B5B7F50()
{
  result = qword_27F019360;
  if (!qword_27F019360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019360);
  }

  return result;
}

unint64_t sub_24B5B7FA4()
{
  result = qword_27F019388;
  if (!qword_27F019388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019370, &qword_24B603520);
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F019390, &qword_27F019398, &unk_24B608280, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019388);
  }

  return result;
}

unint64_t sub_24B5B808C()
{
  result = qword_27F0193A0;
  if (!qword_27F0193A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019378, &qword_24B603528);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019370, &qword_24B603520);
    sub_24B5B7FA4();
    swift_getOpaqueTypeConformance2();
    sub_24B58085C(&qword_27F0193A8, &qword_27F0193B0, &qword_24B603570, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0193A0);
  }

  return result;
}

uint64_t sub_24B5B8180(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24B5FFECC() & 1;
  }
}

unint64_t sub_24B5B81D8()
{
  result = qword_27F0193C0;
  if (!qword_27F0193C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0193C0);
  }

  return result;
}

uint64_t sub_24B5B8244(uint64_t a1)
{
  v2 = sub_24B5B99D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B8280(uint64_t a1)
{
  v2 = sub_24B5B99D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B82BC()
{
  v1 = *v0;
  v2 = 0x75636F4679646F62;
  v3 = 0x656D656874;
  if (v1 != 6)
  {
    v3 = 0x72656E69617274;
  }

  v4 = 0x6E6547636973756DLL;
  if (v1 != 4)
  {
    v4 = 0x76654C6C6C696B73;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E656D7069757165;
  if (v1 != 2)
  {
    v5 = 0x7974696C61646F6DLL;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24B5B83B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24B5B9EDC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24B5B83EC(uint64_t a1)
{
  v2 = sub_24B5B9260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B8428(uint64_t a1)
{
  v2 = sub_24B5B9260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B8464(uint64_t a1)
{
  v2 = sub_24B5B98CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B84A0(uint64_t a1)
{
  v2 = sub_24B5B98CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B84DC(uint64_t a1)
{
  v2 = sub_24B5B97C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B8518(uint64_t a1)
{
  v2 = sub_24B5B97C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B8554(uint64_t a1)
{
  v2 = sub_24B5B96C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B8590(uint64_t a1)
{
  v2 = sub_24B5B96C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B85CC(uint64_t a1)
{
  v2 = sub_24B5B95C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B8608(uint64_t a1)
{
  v2 = sub_24B5B95C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B8644(uint64_t a1)
{
  v2 = sub_24B5B94BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B8680(uint64_t a1)
{
  v2 = sub_24B5B94BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B86BC(uint64_t a1)
{
  v2 = sub_24B5B93B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B86F8(uint64_t a1)
{
  v2 = sub_24B5B93B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5B8734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24B5FFECC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24B5B87BC(uint64_t a1)
{
  v2 = sub_24B5B92B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5B87F8(uint64_t a1)
{
  v2 = sub_24B5B92B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterSectionContent.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v55 = a3;
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193C8, &qword_24B603580);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193D0, &qword_24B603588);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193D8, &qword_24B603590);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v35 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193E0, &qword_24B603598);
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v35 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193E8, &qword_24B6035A0);
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v40 = &v35 - v13;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193F0, &qword_24B6035A8);
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v15 = &v35 - v14;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0193F8, &qword_24B6035B0);
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019400, &qword_24B6035B8);
  v35 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019408, &qword_24B6035C0);
  v22 = *(v21 - 8);
  v57 = v21;
  v58 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v35 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5B9260();
  sub_24B5FFF5C();
  if (v55 > 3u)
  {
    if (v55 > 5u)
    {
      v27 = v57;
      if (v55 == 6)
      {
        LOBYTE(v59) = 6;
        sub_24B5B93B8();
        v28 = v49;
        sub_24B5FFE0C();
        v59 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019440, &unk_24B6035D8);
        sub_24B5B940C();
        v29 = v51;
        sub_24B5FFE8C();
        v30 = v50;
      }

      else
      {
        LOBYTE(v59) = 7;
        sub_24B5B92B4();
        v28 = v52;
        sub_24B5FFE0C();
        v59 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019420, &unk_24B6035C8);
        sub_24B5B9308();
        v29 = v54;
        sub_24B5FFE8C();
        v30 = v53;
      }
    }

    else
    {
      v27 = v57;
      if (v55 == 4)
      {
        LOBYTE(v59) = 4;
        sub_24B5B95C0();
        v28 = v43;
        sub_24B5FFE0C();
        v59 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019480, &qword_24B6035F8);
        sub_24B5B9614();
        v29 = v45;
        sub_24B5FFE8C();
        v30 = v44;
      }

      else
      {
        LOBYTE(v59) = 5;
        sub_24B5B94BC();
        v28 = v46;
        sub_24B5FFE0C();
        v59 = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019460, &unk_24B6035E8);
        sub_24B5B9510();
        v29 = v48;
        sub_24B5FFE8C();
        v30 = v47;
      }
    }

    goto LABEL_16;
  }

  if (v55 > 1u)
  {
    if (v55 == 2)
    {
      LOBYTE(v59) = 2;
      sub_24B5B97C8();
      v27 = v57;
      sub_24B5FFE0C();
      v59 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0194C0, &qword_24B603618);
      sub_24B5B981C();
      v31 = v39;
      sub_24B5FFE8C();
      (*(v38 + 8))(v15, v31);
      v32 = *(v58 + 8);
      v33 = v24;
      return v32(v33, v27);
    }

    LOBYTE(v59) = 3;
    sub_24B5B96C4();
    v28 = v40;
    v27 = v57;
    sub_24B5FFE0C();
    v59 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0194A0, &unk_24B603608);
    sub_24B5B9718();
    v29 = v42;
    sub_24B5FFE8C();
    v30 = v41;
LABEL_16:
    (*(v30 + 8))(v28, v29);
    v32 = *(v58 + 8);
    v33 = v24;
    return v32(v33, v27);
  }

  if (!v55)
  {
    LOBYTE(v59) = 0;
    sub_24B5B99D0();
    v25 = v57;
    sub_24B5FFE0C();
    v59 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019500, &unk_24B603638);
    sub_24B5B9A24();
    sub_24B5FFE8C();
    (*(v35 + 8))(v20, v18);
    return (*(v58 + 8))(v24, v25);
  }

  LOBYTE(v59) = 1;
  sub_24B5B98CC();
  v27 = v57;
  sub_24B5FFE0C();
  v59 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0194E0, &qword_24B603628);
  sub_24B5B9920();
  v34 = v37;
  sub_24B5FFE8C();
  (*(v36 + 8))(v17, v34);
  v32 = *(v58 + 8);
  v33 = v24;
  return v32(v33, v27);
}

unint64_t sub_24B5B9260()
{
  result = qword_27F019410;
  if (!qword_27F019410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019410);
  }

  return result;
}

unint64_t sub_24B5B92B4()
{
  result = qword_27F019418;
  if (!qword_27F019418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019418);
  }

  return result;
}

unint64_t sub_24B5B9308()
{
  result = qword_27F019428;
  if (!qword_27F019428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019420, &unk_24B6035C8);
    sub_24B58085C(&qword_27F019430, &qword_27F018BD8, &unk_24B601060, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019428);
  }

  return result;
}

unint64_t sub_24B5B93B8()
{
  result = qword_27F019438;
  if (!qword_27F019438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019438);
  }

  return result;
}

unint64_t sub_24B5B940C()
{
  result = qword_27F019448;
  if (!qword_27F019448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019440, &unk_24B6035D8);
    sub_24B58085C(&qword_27F019450, &qword_27F018BE0, &qword_24B602300, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019448);
  }

  return result;
}

unint64_t sub_24B5B94BC()
{
  result = qword_27F019458;
  if (!qword_27F019458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019458);
  }

  return result;
}

unint64_t sub_24B5B9510()
{
  result = qword_27F019468;
  if (!qword_27F019468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019460, &unk_24B6035E8);
    sub_24B58085C(&qword_27F019470, &qword_27F018BE8, &unk_24B601070, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019468);
  }

  return result;
}

unint64_t sub_24B5B95C0()
{
  result = qword_27F019478;
  if (!qword_27F019478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019478);
  }

  return result;
}

unint64_t sub_24B5B9614()
{
  result = qword_27F019488;
  if (!qword_27F019488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019480, &qword_24B6035F8);
    sub_24B58085C(&qword_27F019490, &qword_27F018BF0, &qword_24B603600, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019488);
  }

  return result;
}

unint64_t sub_24B5B96C4()
{
  result = qword_27F019498;
  if (!qword_27F019498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019498);
  }

  return result;
}

unint64_t sub_24B5B9718()
{
  result = qword_27F0194A8;
  if (!qword_27F0194A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0194A0, &unk_24B603608);
    sub_24B58085C(&qword_27F0194B0, &qword_27F018BF8, &unk_24B601080, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0194A8);
  }

  return result;
}

unint64_t sub_24B5B97C8()
{
  result = qword_27F0194B8;
  if (!qword_27F0194B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0194B8);
  }

  return result;
}

unint64_t sub_24B5B981C()
{
  result = qword_27F0194C8;
  if (!qword_27F0194C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0194C0, &qword_24B603618);
    sub_24B58085C(&qword_27F0194D0, &qword_27F018C00, &qword_24B603620, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0194C8);
  }

  return result;
}

unint64_t sub_24B5B98CC()
{
  result = qword_27F0194D8;
  if (!qword_27F0194D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0194D8);
  }

  return result;
}

unint64_t sub_24B5B9920()
{
  result = qword_27F0194E8;
  if (!qword_27F0194E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0194E0, &qword_24B603628);
    sub_24B58085C(&qword_27F0194F0, &qword_27F018C20, &qword_24B603630, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0194E8);
  }

  return result;
}

unint64_t sub_24B5B99D0()
{
  result = qword_27F0194F8;
  if (!qword_27F0194F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0194F8);
  }

  return result;
}

unint64_t sub_24B5B9A24()
{
  result = qword_27F019508;
  if (!qword_27F019508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019500, &unk_24B603638);
    sub_24B58085C(&qword_27F019510, &qword_27F018C08, &qword_24B601090, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019508);
  }

  return result;
}

uint64_t sub_24B5B9AEC@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_24B5BA17C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t FilterSectionContent.hash(into:)(__int128 *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {
        MEMORY[0x24C243ED0](6);

        return sub_24B5A7570(a1, a2);
      }

      else
      {
        MEMORY[0x24C243ED0](7);

        return sub_24B5A755C(a1, a2);
      }
    }

    else
    {
      if (a3 == 4)
      {
        MEMORY[0x24C243ED0](4);

        return sub_24B5AB35C();
      }

      MEMORY[0x24C243ED0](5);

      return sub_24B5A76B8(a1, a2);
    }
  }

  else if (a3 > 1u)
  {
    if (a3 == 2)
    {
      MEMORY[0x24C243ED0](2);

      return sub_24B5AB35C();
    }

    MEMORY[0x24C243ED0](3);

    return sub_24B5A7830(a1, a2);
  }

  else
  {
    if (!a3)
    {
      MEMORY[0x24C243ED0](0);

      return sub_24B5AB35C();
    }

    MEMORY[0x24C243ED0](1);

    return sub_24B5A79B0(a1, a2);
  }
}

uint64_t FilterSectionContent.hashValue.getter(uint64_t a1, unsigned __int8 a2)
{
  sub_24B5FFEFC();
  FilterSectionContent.hash(into:)(v5, a1, a2);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5B9D40()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_24B5FFEFC();
  FilterSectionContent.hash(into:)(v4, v1, v2);
  return sub_24B5FFF3C();
}

uint64_t sub_24B5B9D9C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_24B5FFEFC();
  FilterSectionContent.hash(into:)(v5, v2, v3);
  return sub_24B5FFF3C();
}

uint64_t _s16FitnessFiltering20FilterSectionContentO2eeoiySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        if (a4 == 6)
        {
          return sub_24B5D321C(a1, a3);
        }
      }

      else if (a4 == 7)
      {
        return sub_24B5D3488(a1, a3);
      }
    }

    else if (a2 == 4)
    {
      if (a4 == 4)
      {
        return sub_24B5D31F4(a1, a3);
      }
    }

    else if (a4 == 5)
    {
      return sub_24B5D3208(a1, a3);
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a4 == 2)
      {
        return sub_24B5D2CE8(a1, a3);
      }
    }

    else if (a4 == 3)
    {
      return sub_24B5D2F30(a1, a3);
    }
  }

  else if (a2)
  {
    if (a4 == 1)
    {
      return sub_24B5D2BE4(a1, a3);
    }
  }

  else if (!a4)
  {
    return sub_24B5D2BD0(a1, a3);
  }

  return 0;
}

uint64_t sub_24B5B9EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75636F4679646F62 && a2 == 0xE900000000000073;
  if (v4 || (sub_24B5FFECC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656D7069757165 && a2 == 0xE900000000000074 || (sub_24B5FFECC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7974696C61646F6DLL && a2 == 0xE800000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6547636973756DLL && a2 == 0xEA00000000006572 || (sub_24B5FFECC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x76654C6C6C696B73 && a2 == 0xEA00000000006C65 || (sub_24B5FFECC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656D656874 && a2 == 0xE500000000000000 || (sub_24B5FFECC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x72656E69617274 && a2 == 0xE700000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_24B5FFECC();

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

uint64_t sub_24B5BA17C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0195F8, &qword_24B604260);
  v3 = *(v2 - 8);
  v76 = v2;
  v77 = v3;
  MEMORY[0x28223BE20](v2);
  v79 = v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019600, &qword_24B604268);
  v6 = *(v5 - 8);
  v74 = v5;
  v75 = v6;
  MEMORY[0x28223BE20](v5);
  v83 = v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019608, &qword_24B604270);
  v9 = *(v8 - 8);
  v72 = v8;
  v73 = v9;
  MEMORY[0x28223BE20](v8);
  v82 = v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019610, &qword_24B604278);
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x28223BE20](v11);
  v81 = v59 - v12;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019618, &qword_24B604280);
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v80 = v59 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019620, &qword_24B604288);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v78 = v59 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019628, &qword_24B604290);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v16 = v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019630, &qword_24B604298);
  v63 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019638, &unk_24B6042A0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v59 - v22;
  v24 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_24B5B9260();
  v25 = v84;
  sub_24B5FFF4C();
  if (v25)
  {
    goto LABEL_11;
  }

  v61 = v19;
  v60 = v17;
  v26 = v16;
  v62 = 0;
  v28 = v80;
  v27 = v81;
  v30 = v82;
  v29 = v83;
  v84 = v21;
  v31 = sub_24B5FFDEC();
  v32 = (2 * *(v31 + 16)) | 1;
  v86 = v31;
  v87 = v31 + 32;
  v88 = 0;
  v89 = v32;
  v33 = sub_24B5A6AB8();
  if (v33 != 8 && v88 == v89 >> 1)
  {
    v59[1] = v33;
    if (v33 <= 3u)
    {
      if (v33 > 1u)
      {
        if (v33 == 2)
        {
          LOBYTE(v90) = 2;
          sub_24B5B97C8();
          v43 = v78;
          v44 = v62;
          sub_24B5FFD4C();
          v45 = v84;
          if (v44)
          {
LABEL_31:
            (*(v45 + 8))(v23, v20);
            goto LABEL_10;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0194C0, &qword_24B603618);
          sub_24B5BBE34();
          v46 = v67;
          sub_24B5FFDDC();
          v47 = &v91;
        }

        else
        {
          LOBYTE(v90) = 3;
          sub_24B5B96C4();
          v43 = v28;
          v51 = v62;
          sub_24B5FFD4C();
          v45 = v84;
          if (v51)
          {
            goto LABEL_31;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0194A0, &unk_24B603608);
          sub_24B5BBD84();
          v46 = v69;
          sub_24B5FFDDC();
          v47 = &v92;
        }

        (*(*(v47 - 32) + 8))(v43, v46);
      }

      else
      {
        if (!v33)
        {
          LOBYTE(v90) = 0;
          sub_24B5B99D0();
          v34 = v61;
          v35 = v62;
          sub_24B5FFD4C();
          if (!v35)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019500, &unk_24B603638);
            sub_24B5BBF94();
            v36 = v60;
            sub_24B5FFDDC();
            (*(v63 + 8))(v34, v36);
            (*(v84 + 8))(v23, v20);
            swift_unknownObjectRelease();
LABEL_40:
            v21 = v90;
            __swift_destroy_boxed_opaque_existential_1(v85);
            return v21;
          }

          goto LABEL_26;
        }

        LOBYTE(v90) = 1;
        sub_24B5B98CC();
        v49 = v62;
        sub_24B5FFD4C();
        if (v49)
        {
LABEL_26:
          v45 = v84;
          goto LABEL_31;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0194E0, &qword_24B603628);
        sub_24B5BBEE4();
        v50 = v65;
        sub_24B5FFDDC();
        (*(v64 + 8))(v26, v50);
        v45 = v84;
      }

      (*(v45 + 8))(v23, v20);
LABEL_39:
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

    v40 = v84;
    v41 = v62;
    if (v33 > 5u)
    {
      if (v33 == 6)
      {
        LOBYTE(v90) = 6;
        sub_24B5B93B8();
        v48 = v29;
        sub_24B5FFD4C();
        if (!v41)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019440, &unk_24B6035D8);
          sub_24B5BBB74();
          v42 = v74;
          sub_24B5FFDDC();
          v56 = *(v75 + 8);
          v57 = v48;
LABEL_37:
          v58 = v42;
          goto LABEL_38;
        }
      }

      else
      {
        LOBYTE(v90) = 7;
        sub_24B5B92B4();
        v52 = v79;
        sub_24B5FFD4C();
        if (!v41)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019420, &unk_24B6035C8);
          sub_24B5BBAC4();
          v53 = v76;
          sub_24B5FFDDC();
          v56 = *(v77 + 8);
          v57 = v52;
          v58 = v53;
LABEL_38:
          v56(v57, v58);
          (*(v40 + 8))(v23, v20);
          goto LABEL_39;
        }
      }
    }

    else if (v33 == 4)
    {
      LOBYTE(v90) = 4;
      sub_24B5B95C0();
      v30 = v27;
      sub_24B5FFD4C();
      if (!v41)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019480, &qword_24B6035F8);
        sub_24B5BBCD4();
        v42 = v71;
        sub_24B5FFDDC();
        v55 = v70;
LABEL_36:
        v56 = *(v55 + 8);
        v57 = v30;
        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v90) = 5;
      sub_24B5B94BC();
      sub_24B5FFD4C();
      if (!v41)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019460, &unk_24B6035E8);
        sub_24B5BBC24();
        v42 = v72;
        sub_24B5FFDDC();
        v55 = v73;
        goto LABEL_36;
      }
    }

    v54 = *(v40 + 8);
    v21 = v40 + 8;
    v54(v23, v20);
    goto LABEL_10;
  }

  v21 = sub_24B5FFCFC();
  swift_allocError();
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E80, &qword_24B602460);
  *v38 = &type metadata for FilterSectionContent;
  sub_24B5FFD5C();
  sub_24B5FFCEC();
  (*(*(v21 - 8) + 104))(v38, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v84 + 8))(v23, v20);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v85);
  return v21;
}

unint64_t sub_24B5BAE94()
{
  result = qword_27F019518;
  if (!qword_27F019518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019518);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_24B5BAF08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 9))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 8);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24B5BAF50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EditorialTrait(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EditorialTrait(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_24B5BB180()
{
  result = qword_27F019520;
  if (!qword_27F019520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019520);
  }

  return result;
}

unint64_t sub_24B5BB1D8()
{
  result = qword_27F019528;
  if (!qword_27F019528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019528);
  }

  return result;
}

unint64_t sub_24B5BB230()
{
  result = qword_27F019530;
  if (!qword_27F019530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019530);
  }

  return result;
}

unint64_t sub_24B5BB288()
{
  result = qword_27F019538;
  if (!qword_27F019538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019538);
  }

  return result;
}

unint64_t sub_24B5BB2E0()
{
  result = qword_27F019540;
  if (!qword_27F019540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019540);
  }

  return result;
}

unint64_t sub_24B5BB338()
{
  result = qword_27F019548;
  if (!qword_27F019548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019548);
  }

  return result;
}

unint64_t sub_24B5BB390()
{
  result = qword_27F019550;
  if (!qword_27F019550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019550);
  }

  return result;
}

unint64_t sub_24B5BB3E8()
{
  result = qword_27F019558;
  if (!qword_27F019558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019558);
  }

  return result;
}

unint64_t sub_24B5BB440()
{
  result = qword_27F019560;
  if (!qword_27F019560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019560);
  }

  return result;
}

unint64_t sub_24B5BB498()
{
  result = qword_27F019568;
  if (!qword_27F019568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019568);
  }

  return result;
}

unint64_t sub_24B5BB4F0()
{
  result = qword_27F019570;
  if (!qword_27F019570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019570);
  }

  return result;
}

unint64_t sub_24B5BB548()
{
  result = qword_27F019578;
  if (!qword_27F019578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019578);
  }

  return result;
}

unint64_t sub_24B5BB5A0()
{
  result = qword_27F019580;
  if (!qword_27F019580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019580);
  }

  return result;
}

unint64_t sub_24B5BB5F8()
{
  result = qword_27F019588;
  if (!qword_27F019588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019588);
  }

  return result;
}

unint64_t sub_24B5BB650()
{
  result = qword_27F019590;
  if (!qword_27F019590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019590);
  }

  return result;
}

unint64_t sub_24B5BB6A8()
{
  result = qword_27F019598;
  if (!qword_27F019598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019598);
  }

  return result;
}

unint64_t sub_24B5BB700()
{
  result = qword_27F0195A0;
  if (!qword_27F0195A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195A0);
  }

  return result;
}

unint64_t sub_24B5BB758()
{
  result = qword_27F0195A8;
  if (!qword_27F0195A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195A8);
  }

  return result;
}

unint64_t sub_24B5BB7B0()
{
  result = qword_27F0195B0;
  if (!qword_27F0195B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195B0);
  }

  return result;
}

unint64_t sub_24B5BB808()
{
  result = qword_27F0195B8;
  if (!qword_27F0195B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195B8);
  }

  return result;
}

unint64_t sub_24B5BB860()
{
  result = qword_27F0195C0;
  if (!qword_27F0195C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195C0);
  }

  return result;
}

unint64_t sub_24B5BB8B8()
{
  result = qword_27F0195C8;
  if (!qword_27F0195C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195C8);
  }

  return result;
}

unint64_t sub_24B5BB910()
{
  result = qword_27F0195D0;
  if (!qword_27F0195D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195D0);
  }

  return result;
}

unint64_t sub_24B5BB968()
{
  result = qword_27F0195D8;
  if (!qword_27F0195D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195D8);
  }

  return result;
}

unint64_t sub_24B5BB9C0()
{
  result = qword_27F0195E0;
  if (!qword_27F0195E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195E0);
  }

  return result;
}

unint64_t sub_24B5BBA18()
{
  result = qword_27F0195E8;
  if (!qword_27F0195E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195E8);
  }

  return result;
}

unint64_t sub_24B5BBA70()
{
  result = qword_27F0195F0;
  if (!qword_27F0195F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0195F0);
  }

  return result;
}

unint64_t sub_24B5BBAC4()
{
  result = qword_27F019640;
  if (!qword_27F019640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019420, &unk_24B6035C8);
    sub_24B58085C(&qword_27F019648, &qword_27F018BD8, &unk_24B601060, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019640);
  }

  return result;
}

unint64_t sub_24B5BBB74()
{
  result = qword_27F019650;
  if (!qword_27F019650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019440, &unk_24B6035D8);
    sub_24B58085C(&qword_27F019658, &qword_27F018BE0, &qword_24B602300, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019650);
  }

  return result;
}

unint64_t sub_24B5BBC24()
{
  result = qword_27F019660;
  if (!qword_27F019660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019460, &unk_24B6035E8);
    sub_24B58085C(&qword_27F019668, &qword_27F018BE8, &unk_24B601070, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019660);
  }

  return result;
}

unint64_t sub_24B5BBCD4()
{
  result = qword_27F019670;
  if (!qword_27F019670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019480, &qword_24B6035F8);
    sub_24B58085C(&qword_27F019678, &qword_27F018BF0, &qword_24B603600, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019670);
  }

  return result;
}

unint64_t sub_24B5BBD84()
{
  result = qword_27F019680;
  if (!qword_27F019680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0194A0, &unk_24B603608);
    sub_24B58085C(&qword_27F019688, &qword_27F018BF8, &unk_24B601080, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019680);
  }

  return result;
}

unint64_t sub_24B5BBE34()
{
  result = qword_27F019690;
  if (!qword_27F019690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0194C0, &qword_24B603618);
    sub_24B58085C(&qword_27F019698, &qword_27F018C00, &qword_24B603620, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019690);
  }

  return result;
}

unint64_t sub_24B5BBEE4()
{
  result = qword_27F0196A0;
  if (!qword_27F0196A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F0194E0, &qword_24B603628);
    sub_24B58085C(&qword_27F0196A8, &qword_27F018C20, &qword_24B603630, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0196A0);
  }

  return result;
}

unint64_t sub_24B5BBF94()
{
  result = qword_27F0196B0;
  if (!qword_27F0196B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019500, &unk_24B603638);
    sub_24B58085C(&qword_27F0196B8, &qword_27F018C08, &qword_24B601090, &protocol conformance descriptor for Option<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0196B0);
  }

  return result;
}

uint64_t sub_24B5BC068(uint64_t a1)
{
  v2 = sub_24B5BD174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC0A4(uint64_t a1)
{
  v2 = sub_24B5BD174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC0E0(uint64_t a1)
{
  v2 = sub_24B5BCE80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC11C(uint64_t a1)
{
  v2 = sub_24B5BCE80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC158(uint64_t a1)
{
  v2 = sub_24B5BD120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC194(uint64_t a1)
{
  v2 = sub_24B5BD120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC1D0(uint64_t a1)
{
  v2 = sub_24B5BD0CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC20C(uint64_t a1)
{
  v2 = sub_24B5BD0CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC248(uint64_t a1)
{
  v2 = sub_24B5BD078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC284(uint64_t a1)
{
  v2 = sub_24B5BD078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC2C0(uint64_t a1)
{
  v2 = sub_24B5BD024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC2FC(uint64_t a1)
{
  v2 = sub_24B5BD024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC338(uint64_t a1)
{
  v2 = sub_24B5BCFD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC374(uint64_t a1)
{
  v2 = sub_24B5BCFD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC3B0(uint64_t a1)
{
  v2 = sub_24B5BCF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC3EC(uint64_t a1)
{
  v2 = sub_24B5BCF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC428(uint64_t a1)
{
  v2 = sub_24B5BCF28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC464(uint64_t a1)
{
  v2 = sub_24B5BCF28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24B5BC4A0(uint64_t a1)
{
  v2 = sub_24B5BCED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24B5BC4DC(uint64_t a1)
{
  v2 = sub_24B5BCED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FilterKind.encode(to:)(void *a1, int a2)
{
  LODWORD(v68) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196C0, &qword_24B6042B0);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196C8, &qword_24B6042B8);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196D0, &qword_24B6042C0);
  v54 = *(v7 - 8);
  v55 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v44 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196D8, &qword_24B6042C8);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v50 = &v44 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196E0, &qword_24B6042D0);
  v48 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v44 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196E8, &qword_24B6042D8);
  v67 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v66 = &v44 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196F0, &qword_24B6042E0);
  v65 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v64 = &v44 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0196F8, &qword_24B6042E8);
  v63 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019700, &qword_24B6042F0);
  v62 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019708, &qword_24B6042F8);
  v19 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v21 = &v44 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24B5BCE80();
  v69 = v21;
  sub_24B5FFF5C();
  v22 = (v19 + 8);
  v23 = v68;
  if (v68 <= 3u)
  {
    v61 = v16;
    v68 = v22;
    v30 = v62;
    v29 = v63;
    v31 = v64;
    v32 = v65;
    v33 = v66;
    v34 = v67;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v73 = 2;
        sub_24B5BD0CC();
        v38 = v31;
        v40 = v69;
        v39 = v70;
        sub_24B5FFE0C();
        (*(v32 + 8))(v38, v45);
      }

      else
      {
        v74 = 3;
        sub_24B5BD078();
        v42 = v33;
        v40 = v69;
        v39 = v70;
        sub_24B5FFE0C();
        (*(v34 + 8))(v42, v46);
      }
    }

    else
    {
      if (!v23)
      {
        v71[0] = 0;
        sub_24B5BD174();
        v35 = v69;
        v36 = v70;
        sub_24B5FFE0C();
        (*(v30 + 8))(v18, v61);
        return (*v68)(v35, v36);
      }

      v72 = 1;
      sub_24B5BD120();
      v40 = v69;
      v39 = v70;
      sub_24B5FFE0C();
      (*(v29 + 8))(v15, v13);
    }

    return (*v68)(v40, v39);
  }

  else
  {
    if (v68 <= 5u)
    {
      if (v68 == 4)
      {
        v75 = 4;
        sub_24B5BD024();
        v41 = v47;
        v25 = v69;
        v26 = v70;
        sub_24B5FFE0C();
        (*(v48 + 8))(v41, v49);
      }

      else
      {
        v76 = 5;
        sub_24B5BCFD0();
        v43 = v50;
        v25 = v69;
        v26 = v70;
        sub_24B5FFE0C();
        (*(v51 + 8))(v43, v52);
      }
    }

    else
    {
      if (v68 == 6)
      {
        v77 = 6;
        sub_24B5BCF7C();
        v24 = v53;
        v25 = v69;
        v26 = v70;
        sub_24B5FFE0C();
        v28 = v54;
        v27 = v55;
      }

      else if (v68 == 7)
      {
        v78 = 7;
        sub_24B5BCF28();
        v24 = v56;
        v25 = v69;
        v26 = v70;
        sub_24B5FFE0C();
        v28 = v57;
        v27 = v58;
      }

      else
      {
        v79 = 8;
        sub_24B5BCED4();
        v24 = v59;
        v25 = v69;
        v26 = v70;
        sub_24B5FFE0C();
        v28 = v60;
        v27 = v61;
      }

      (*(v28 + 8))(v24, v27);
    }

    return (*v22)(v25, v26);
  }
}

unint64_t sub_24B5BCE80()
{
  result = qword_27F019710;
  if (!qword_27F019710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019710);
  }

  return result;
}

unint64_t sub_24B5BCED4()
{
  result = qword_27F019718;
  if (!qword_27F019718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019718);
  }

  return result;
}

unint64_t sub_24B5BCF28()
{
  result = qword_27F019720;
  if (!qword_27F019720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019720);
  }

  return result;
}

unint64_t sub_24B5BCF7C()
{
  result = qword_27F019728;
  if (!qword_27F019728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019728);
  }

  return result;
}

unint64_t sub_24B5BCFD0()
{
  result = qword_27F019730;
  if (!qword_27F019730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019730);
  }

  return result;
}

unint64_t sub_24B5BD024()
{
  result = qword_27F019738;
  if (!qword_27F019738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019738);
  }

  return result;
}

unint64_t sub_24B5BD078()
{
  result = qword_27F019740;
  if (!qword_27F019740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019740);
  }

  return result;
}

unint64_t sub_24B5BD0CC()
{
  result = qword_27F019748;
  if (!qword_27F019748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019748);
  }

  return result;
}

unint64_t sub_24B5BD120()
{
  result = qword_27F019750;
  if (!qword_27F019750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019750);
  }

  return result;
}

unint64_t sub_24B5BD174()
{
  result = qword_27F019758;
  if (!qword_27F019758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019758);
  }

  return result;
}

char *sub_24B5BD1E0@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_24B5BD298(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t FilterKind.hashValue.getter(unsigned __int8 a1)
{
  sub_24B5FFEFC();
  MEMORY[0x24C243ED0](a1);
  return sub_24B5FFF3C();
}

char *sub_24B5BD298(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019820, &qword_24B604C10);
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v70 = &v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019828, &qword_24B604C18);
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019830, &qword_24B604C20);
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6);
  v68 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019838, &qword_24B604C28);
  v59 = *(v8 - 8);
  v60 = v8;
  MEMORY[0x28223BE20](v8);
  v73 = &v47 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019840, &qword_24B604C30);
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v72 = &v47 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019848, &qword_24B604C38);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v71 = &v47 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019850, &qword_24B604C40);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v67 = &v47 - v12;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019858, &qword_24B604C48);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019860, &qword_24B604C50);
  v50 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v47 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F019868, &qword_24B604C58);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - v20;
  v22 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24B5BCE80();
  v23 = v75;
  sub_24B5FFF4C();
  if (!v23)
  {
    v48 = v17;
    v47 = v15;
    v24 = v14;
    v25 = v71;
    v26 = v72;
    v27 = v73;
    v75 = v19;
    v49 = v21;
    v28 = sub_24B5FFDEC();
    v29 = (2 * *(v28 + 16)) | 1;
    v76 = v28;
    v77 = v28 + 32;
    v78 = 0;
    v79 = v29;
    v30 = sub_24B5AB348();
    if (v30 != 9 && v78 == v79 >> 1)
    {
      v21 = v30;
      if (v30 <= 3u)
      {
        v31 = v49;
        if (v30 > 1u)
        {
          if (v30 == 2)
          {
            v80 = 2;
            sub_24B5BD0CC();
            v45 = v67;
            sub_24B5FFD4C();
            (*(v53 + 8))(v45, v54);
          }

          else
          {
            v80 = 3;
            sub_24B5BD078();
            sub_24B5FFD4C();
            (*(v55 + 8))(v25, v56);
          }

          (*(v75 + 8))(v31, v18);
          goto LABEL_29;
        }

        v32 = v75;
        if (v30)
        {
          v80 = 1;
          sub_24B5BD120();
          sub_24B5FFD4C();
          v42 = *(v51 + 8);
          v43 = v24;
          v44 = &v81;
        }

        else
        {
          v80 = 0;
          sub_24B5BD174();
          v41 = v48;
          sub_24B5FFD4C();
          v42 = *(v50 + 8);
          v43 = v41;
          v44 = &v79;
        }
      }

      else
      {
        v31 = v49;
        if (v30 > 5u)
        {
          v32 = v75;
          if (v30 == 6)
          {
            v80 = 6;
            sub_24B5BCF7C();
            v33 = v68;
            sub_24B5FFD4C();
            v35 = v61;
            v34 = v62;
          }

          else
          {
            if (v30 != 7)
            {
              v80 = 8;
              sub_24B5BCED4();
              v46 = v70;
              sub_24B5FFD4C();
              (*(v65 + 8))(v46, v66);
LABEL_28:
              (*(v32 + 8))(v31, v18);
LABEL_29:
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1(v74);
              return v21;
            }

            v80 = 7;
            sub_24B5BCF28();
            v33 = v69;
            sub_24B5FFD4C();
            v35 = v63;
            v34 = v64;
          }

          goto LABEL_26;
        }

        v32 = v75;
        if (v30 != 4)
        {
          v80 = 5;
          sub_24B5BCFD0();
          v33 = v27;
          sub_24B5FFD4C();
          v35 = v59;
          v34 = v60;
LABEL_26:
          v42 = *(v35 + 8);
          v43 = v33;
          goto LABEL_27;
        }

        v80 = 4;
        sub_24B5BD024();
        sub_24B5FFD4C();
        v42 = *(v58 + 8);
        v43 = v26;
        v44 = &v82;
      }

      v34 = *(v44 - 32);
LABEL_27:
      v42(v43, v34);
      goto LABEL_28;
    }

    v36 = sub_24B5FFCFC();
    v21 = swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F018E80, &qword_24B602460);
    *v38 = &type metadata for FilterKind;
    v39 = v49;
    sub_24B5FFD5C();
    sub_24B5FFCEC();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    (*(v75 + 8))(v39, v18);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v74);
  return v21;
}

unint64_t sub_24B5BDD60()
{
  result = qword_27F019760;
  if (!qword_27F019760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F019768, &qword_24B604328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019760);
  }

  return result;
}

unint64_t sub_24B5BDDC4()
{
  result = qword_27F019770;
  if (!qword_27F019770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019770);
  }

  return result;
}

unint64_t sub_24B5BDECC()
{
  result = qword_27F019778;
  if (!qword_27F019778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019778);
  }

  return result;
}

unint64_t sub_24B5BDF24()
{
  result = qword_27F019780;
  if (!qword_27F019780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019780);
  }

  return result;
}

unint64_t sub_24B5BDF7C()
{
  result = qword_27F019788;
  if (!qword_27F019788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019788);
  }

  return result;
}

unint64_t sub_24B5BDFD4()
{
  result = qword_27F019790;
  if (!qword_27F019790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019790);
  }

  return result;
}

unint64_t sub_24B5BE02C()
{
  result = qword_27F019798;
  if (!qword_27F019798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019798);
  }

  return result;
}

unint64_t sub_24B5BE084()
{
  result = qword_27F0197A0;
  if (!qword_27F0197A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0197A0);
  }

  return result;
}

unint64_t sub_24B5BE0DC()
{
  result = qword_27F0197A8;
  if (!qword_27F0197A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0197A8);
  }

  return result;
}

unint64_t sub_24B5BE134()
{
  result = qword_27F0197B0;
  if (!qword_27F0197B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0197B0);
  }

  return result;
}

unint64_t sub_24B5BE18C()
{
  result = qword_27F0197B8;
  if (!qword_27F0197B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0197B8);
  }

  return result;
}

unint64_t sub_24B5BE1E4()
{
  result = qword_27F0197C0;
  if (!qword_27F0197C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0197C0);
  }

  return result;
}

unint64_t sub_24B5BE23C()
{
  result = qword_27F0197C8;
  if (!qword_27F0197C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0197C8);
  }

  return result;
}

unint64_t sub_24B5BE294()
{
  result = qword_27F0197D0;
  if (!qword_27F0197D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0197D0);
  }

  return result;
}

unint64_t sub_24B5BE2EC()
{
  result = qword_27F0197D8;
  if (!qword_27F0197D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0197D8);
  }

  return result;
}

unint64_t sub_24B5BE344()
{
  result = qword_27F0197E0;
  if (!qword_27F0197E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0197E0);
  }

  return result;
}

unint64_t sub_24B5BE39C()
{
  result = qword_27F0197E8;
  if (!qword_27F0197E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0197E8);
  }

  return result;
}

unint64_t sub_24B5BE3F4()
{
  result = qword_27F0197F0;
  if (!qword_27F0197F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0197F0);
  }

  return result;
}

unint64_t sub_24B5BE44C()
{
  result = qword_27F0197F8;
  if (!qword_27F0197F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0197F8);
  }

  return result;
}

unint64_t sub_24B5BE4A4()
{
  result = qword_27F019800;
  if (!qword_27F019800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019800);
  }

  return result;
}

unint64_t sub_24B5BE4FC()
{
  result = qword_27F019808;
  if (!qword_27F019808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019808);
  }

  return result;
}

unint64_t sub_24B5BE554()
{
  result = qword_27F019810;
  if (!qword_27F019810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019810);
  }

  return result;
}

unint64_t sub_24B5BE5AC()
{
  result = qword_27F019818;
  if (!qword_27F019818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F019818);
  }

  return result;
}

uint64_t FilterState.loadState.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x111uLL);
  memcpy(a1, v1, 0x111uLL);
  return sub_24B58FE14(__dst, v4);
}

void *FilterState.loadState.setter(const void *a1)
{
  memcpy(v4, v1, 0x111uLL);
  sub_24B58FECC(v4);
  return memcpy(v1, a1, 0x111uLL);
}

__n128 FilterState.init(layout:loadState:locale:rootFilterItem:rootFilterName:shouldResetFilterOnDisposal:)@<Q0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X8>)
{
  v15 = *(a4 + 32);
  v16 = *(a4 + 40);
  v17 = type metadata accessor for FilterState(0);
  sub_24B5BE82C(a1, &a8[v17[5]]);
  memcpy(a8, a2, 0x111uLL);
  v18 = v17[6];
  v19 = sub_24B5FEE1C();
  v23 = *(a4 + 16);
  v24 = *a4;
  (*(*(v19 - 8) + 32))(&a8[v18], a3, v19);
  v20 = &a8[v17[7]];
  result = v24;
  *v20 = v24;
  *(v20 + 1) = v23;
  *(v20 + 4) = v15;
  v20[40] = v16;
  v22 = &a8[v17[8]];
  *v22 = a5;
  *(v22 + 1) = a6;
  a8[v17[9]] = a7;
  return result;
}

uint64_t type metadata accessor for FilterState(uint64_t a1)
{
  result = qword_27F0198C8;
  if (!qword_27F0198C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24B5BE82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FilterLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B5BE890()
{
  v1 = *v0;
  v2 = 0x7461745364616F6CLL;
  v3 = 0x746C6946746F6F72;
  v4 = 0x746C6946746F6F72;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74756F79616CLL;
  if (v1 != 1)
  {
    v5 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
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