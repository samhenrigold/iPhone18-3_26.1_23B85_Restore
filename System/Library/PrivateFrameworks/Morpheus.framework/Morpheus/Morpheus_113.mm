void sub_25A8D555C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8D5564);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8D5648(int a1, unsigned __int8 a2)
{
  v113 = *MEMORY[0x277D85DE8];
  if (a2 == 3)
  {
    LODWORD(v110[0]) = a1;
    v3 = mlx_array_new_data(v110, (MEMORY[0x277D84F90] + 32), 0, 3);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
    return result;
  }

  v107 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84CC0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v109 = 0;
    memset(v108, 0, sizeof(v108));
    sub_25A878194(v108, &qword_27FA04950, &qword_25A9F9598);
    v111 = v6;
    v112 = sub_25A8DFA50();
    LODWORD(v110[0]) = a1;
    v11 = __swift_project_boxed_opaque_existential_1(v110, v6);
    v12 = *(v6 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v14);
    v15 = sub_25A9984D8();
    if (a2 <= 6u)
    {
      if (a2 <= 3u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if (v15)
            {
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v106 = &v106;
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v46 = sub_25A998A78();
              MEMORY[0x28223BE20](v46);
              sub_25A9989C8();
              v47 = sub_25A997D98();
              (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
              if ((v47 & 1) == 0)
              {
                goto LABEL_166;
              }
            }

            LOWORD(v108[0]) = -1;
            v48 = sub_25A9984D8();
            MEMORY[0x28223BE20](v48);
            sub_25A8DFAA4();
            sub_25A9984A8();
            v49 = sub_25A997D88();
            v50 = *(v12 + 8);
            v50(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
            if ((v49 & 1) == 0)
            {
              v51 = *v14;
              v50(v14, MEMORY[0x277D84CC0]);
              LOWORD(v108[0]) = v51;
              v10 = mlx_array_new_data(v108, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_158;
            }

            goto LABEL_164;
          }

          if (v15)
          {
            v17 = swift_getAssociatedTypeWitness();
            v106 = &v106;
            MEMORY[0x28223BE20](v17);
            swift_getAssociatedConformanceWitness();
            v18 = sub_25A998A78();
            MEMORY[0x28223BE20](v18);
            sub_25A9989C8();
            v19 = sub_25A997D98();
            (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
            if ((v19 & 1) == 0)
            {
              goto LABEL_165;
            }
          }

          LOBYTE(v108[0]) = -1;
          v20 = sub_25A9984D8();
          MEMORY[0x28223BE20](v20);
          sub_25A89522C();
          sub_25A9984A8();
          v21 = sub_25A997D88();
          v22 = *(v12 + 8);
          v22(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if ((v21 & 1) == 0)
          {
            v23 = *v14;
            v22(v14, MEMORY[0x277D84CC0]);
            LOBYTE(v108[0]) = v23;
            v10 = mlx_array_new_data(v108, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_158;
          }

LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

        if ((v15 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v108[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v37 = sub_25A9984C8();
            if (v37 < 64)
            {
LABEL_138:
              sub_25A9984B8();
              goto LABEL_139;
            }
          }

          else
          {
            v60 = sub_25A9984D8();
            v37 = sub_25A9984C8();
            if ((v60 & 1) == 0)
            {
              if (v37 >= 64)
              {
                goto LABEL_139;
              }

              goto LABEL_138;
            }

            if (v37 <= 64)
            {
              v70 = swift_getAssociatedTypeWitness();
              v106 = &v106;
              MEMORY[0x28223BE20](v70);
              swift_getAssociatedConformanceWitness();
              v71 = sub_25A998A78();
              MEMORY[0x28223BE20](v71);
              sub_25A9989C8();
              v72 = sub_25A997D88();
              (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
              if (v72)
              {
LABEL_168:
                __break(1u);
                goto LABEL_169;
              }

              goto LABEL_138;
            }
          }

          MEMORY[0x28223BE20](v37);
          sub_25A895280();
          sub_25A9984A8();
          v65 = sub_25A997D88();
          (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if (v65)
          {
            goto LABEL_168;
          }
        }

LABEL_139:
        v73 = *v14;
        (*(v12 + 8))(v14, MEMORY[0x277D84CC0]);
        mlx_array_new_BOOL(v73 != 0);
      }

      if (a2 != 4)
      {
        if (a2 == 5)
        {
          if ((v15 & 1) == 0 || sub_25A9984C8() < 9)
          {
            goto LABEL_152;
          }

          LOBYTE(v108[0]) = 0x80;
          if (sub_25A9984D8())
          {
            v28 = sub_25A9984C8();
            if (v28 < 8)
            {
              goto LABEL_151;
            }
          }

          else
          {
            v63 = sub_25A9984D8();
            v28 = sub_25A9984C8();
            if ((v63 & 1) == 0)
            {
              if (v28 >= 8)
              {
LABEL_152:
                LOBYTE(v108[0]) = 127;
                v87 = sub_25A9984D8();
                MEMORY[0x28223BE20](v87);
                sub_25A8DF9FC();
                sub_25A9984A8();
                v88 = sub_25A997D88();
                v89 = *(v12 + 8);
                v89(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
                if ((v88 & 1) == 0)
                {
                  v90 = *v14;
                  v89(v14, MEMORY[0x277D84CC0]);
                  LOBYTE(v108[0]) = v90;
                  v10 = mlx_array_new_data(v108, (MEMORY[0x277D84F90] + 32), 0, 5);
                  goto LABEL_158;
                }

                __break(1u);
                goto LABEL_162;
              }

LABEL_151:
              sub_25A9984B8();
              goto LABEL_152;
            }

            if (v28 <= 8)
            {
              v84 = swift_getAssociatedTypeWitness();
              v106 = &v106;
              MEMORY[0x28223BE20](v84);
              swift_getAssociatedConformanceWitness();
              v85 = sub_25A998A78();
              MEMORY[0x28223BE20](v85);
              sub_25A9989C8();
              v86 = sub_25A997D88();
              (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
              if (v86)
              {
LABEL_171:
                __break(1u);
                goto LABEL_172;
              }

              goto LABEL_151;
            }
          }

          MEMORY[0x28223BE20](v28);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v68 = sub_25A997D88();
          (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if (v68)
          {
            goto LABEL_171;
          }

          goto LABEL_152;
        }

        if ((v15 & 1) == 0 || sub_25A9984C8() < 17)
        {
LABEL_156:
          LOWORD(v108[0]) = 0x7FFF;
          v94 = sub_25A9984D8();
          MEMORY[0x28223BE20](v94);
          sub_25A8DF9A8();
          sub_25A9984A8();
          v95 = sub_25A997D88();
          v96 = *(v12 + 8);
          v96(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if ((v95 & 1) == 0)
          {
            v97 = *v14;
            v96(v14, MEMORY[0x277D84CC0]);
            LOWORD(v108[0]) = v97;
            v10 = mlx_array_new_data(v108, (MEMORY[0x277D84F90] + 32), 0, 6);
            goto LABEL_158;
          }

LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        LOWORD(v108[0]) = 0x8000;
        if (sub_25A9984D8())
        {
          v53 = sub_25A9984C8();
          if (v53 < 16)
          {
LABEL_155:
            sub_25A9984B8();
            goto LABEL_156;
          }
        }

        else
        {
          v64 = sub_25A9984D8();
          v53 = sub_25A9984C8();
          if ((v64 & 1) == 0)
          {
            if (v53 >= 16)
            {
              goto LABEL_156;
            }

            goto LABEL_155;
          }

          if (v53 <= 16)
          {
            v91 = swift_getAssociatedTypeWitness();
            v106 = &v106;
            MEMORY[0x28223BE20](v91);
            swift_getAssociatedConformanceWitness();
            v92 = sub_25A998A78();
            MEMORY[0x28223BE20](v92);
            sub_25A9989C8();
            v93 = sub_25A997D88();
            (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
            if (v93)
            {
              goto LABEL_172;
            }

            goto LABEL_155;
          }
        }

        MEMORY[0x28223BE20](v53);
        sub_25A8DF9A8();
        sub_25A9984A8();
        v69 = sub_25A997D88();
        (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
        if (v69)
        {
LABEL_172:
          __break(1u);
        }

        goto LABEL_156;
      }

      if (v15)
      {
        v39 = swift_getAssociatedTypeWitness();
        v106 = &v106;
        MEMORY[0x28223BE20](v39);
        swift_getAssociatedConformanceWitness();
        v40 = sub_25A998A78();
        MEMORY[0x28223BE20](v40);
        sub_25A9989C8();
        v41 = sub_25A997D98();
        v43 = *(v12 + 8);
        v12 += 8;
        v42 = v43;
        v15 = (v43)(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
        if ((v41 & 1) == 0)
        {
          __break(1u);
          goto LABEL_75;
        }
      }

      else
      {
        v42 = *(v12 + 8);
      }

      v55 = *v14;
      v42(v14, MEMORY[0x277D84CC0]);
      *&v108[0] = v55;
      v10 = mlx_array_new_data(v108, (MEMORY[0x277D84F90] + 32), 0, 4);
      goto LABEL_158;
    }

    if (a2 > 9u)
    {
      if (a2 != 10)
      {
        if (a2 == 11)
        {
          if (v15)
          {
            v27 = sub_25A9984B8();
          }

          else
          {
            v27 = *v14;
          }

          (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if (qword_27FA043D8 == -1)
          {
            goto LABEL_96;
          }

LABEL_160:
          swift_once();
LABEL_96:
          sub_25A998C58();
          v56 = *&v108[0];
          v57 = mlx_array_new_float(v27);
          *&v108[0] = mlx_array_new();
          mlx_astype(v108, v57, 12, *(v56 + 16));
          v58 = *&v108[0];
          type metadata accessor for MLXArray();
          v59 = swift_allocObject();
          *(v59 + 16) = v58;
          mlx_array_free(v57);

LABEL_159:
          __swift_destroy_boxed_opaque_existential_0Tm(v110);
          return v59;
        }

        if (v15)
        {
          v54 = sub_25A9984B8();
        }

        else
        {
          LODWORD(v16) = *v14;
          v54 = v16;
        }

        (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
        v36 = sub_25A8BA558(v54);
LABEL_101:
        v59 = v36;
        goto LABEL_159;
      }

LABEL_75:
      if (v15)
      {
        v44 = sub_25A9984B8();
      }

      else
      {
        v44 = *v14;
      }

      (*(v12 + 8))(v14, MEMORY[0x277D84CC0]);
      v10 = mlx_array_new_float(v44);
      goto LABEL_158;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
        if (v15)
        {
          v52 = sub_25A9984B8();
        }

        else
        {
          v52 = *v14;
        }

        (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
        *v108 = v52;
        v10 = mlx_array_new_data(v108, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_158;
      }

      if ((v15 & 1) == 0 || sub_25A9984C8() < 65)
      {
        goto LABEL_149;
      }

      *&v108[0] = 0x8000000000000000;
      if (sub_25A9984D8())
      {
        v24 = sub_25A9984C8();
        if (v24 < 64)
        {
LABEL_148:
          sub_25A9984B8();
          goto LABEL_149;
        }
      }

      else
      {
        v62 = sub_25A9984D8();
        v24 = sub_25A9984C8();
        if ((v62 & 1) == 0)
        {
          if (v24 < 64)
          {
            goto LABEL_148;
          }

LABEL_149:
          v83 = *v14;
          (*(v12 + 8))(v14, MEMORY[0x277D84CC0]);
          *&v108[0] = v83;
          v10 = mlx_array_new_data(v108, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_158;
        }

        if (v24 <= 64)
        {
          v80 = swift_getAssociatedTypeWitness();
          v106 = &v106;
          MEMORY[0x28223BE20](v80);
          swift_getAssociatedConformanceWitness();
          v81 = sub_25A998A78();
          MEMORY[0x28223BE20](v81);
          sub_25A9989C8();
          v82 = sub_25A997D88();
          (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if (v82)
          {
LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

          goto LABEL_148;
        }
      }

      MEMORY[0x28223BE20](v24);
      sub_25A8DF900();
      sub_25A9984A8();
      v67 = sub_25A997D88();
      (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
      if (v67)
      {
        goto LABEL_170;
      }

      goto LABEL_149;
    }

    if ((v15 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v108[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v38 = sub_25A9984C8();
        if (v38 < 32)
        {
LABEL_141:
          sub_25A9984B8();
          goto LABEL_142;
        }
      }

      else
      {
        v61 = sub_25A9984D8();
        v38 = sub_25A9984C8();
        if ((v61 & 1) == 0)
        {
          if (v38 >= 32)
          {
            goto LABEL_142;
          }

          goto LABEL_141;
        }

        if (v38 <= 32)
        {
          v74 = swift_getAssociatedTypeWitness();
          v106 = &v106;
          MEMORY[0x28223BE20](v74);
          swift_getAssociatedConformanceWitness();
          v75 = sub_25A998A78();
          MEMORY[0x28223BE20](v75);
          sub_25A9989C8();
          v76 = sub_25A997D88();
          (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
          if (v76)
          {
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }

          goto LABEL_141;
        }
      }

      MEMORY[0x28223BE20](v38);
      sub_25A8DF954();
      sub_25A9984A8();
      v66 = sub_25A997D88();
      (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
      if (v66)
      {
        goto LABEL_169;
      }
    }

LABEL_142:
    if ((sub_25A9984D8() & 1) == 0)
    {
      LODWORD(v108[0]) = 0x7FFFFFFF;
      v77 = sub_25A9984D8();
      if (v77)
      {
        sub_25A9984B8();
      }

      else
      {
        MEMORY[0x28223BE20](v77);
        sub_25A8DF954();
        sub_25A9984A8();
        v78 = sub_25A997D88();
        (*(v12 + 8))(&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84CC0]);
        if (v78)
        {
LABEL_167:
          __break(1u);
          goto LABEL_168;
        }
      }
    }

    v79 = *v14;
    (*(v12 + 8))(v14, MEMORY[0x277D84CC0]);
    mlx_array_new_int(v79);
  }

  sub_25A87817C(v108, v110);
  v7 = v111;
  v8 = __swift_project_boxed_opaque_existential_1(v110, v111);
  v9 = v8;
  if (a2 > 6u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 7)
      {
        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v108[0]) & 1) == 0)
        {
          mlx_array_new_int(v108[0]);
        }

        *&v108[0] = 0;
        *(&v108[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v99 = sub_25A998C68();
        MEMORY[0x25F850290](v99);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 8)
        {
          MEMORY[0x28223BE20](v8);
          (*(v33 + 16))(&v106 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v107) = v108[0];
          v10 = mlx_array_new_data(&v107, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_158;
        }

        sub_25A8DFBF4();
        sub_25A9987F8();
        if ((BYTE8(v108[0]) & 1) == 0)
        {
          v10 = mlx_array_new_data(v108, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_158;
        }

        *&v108[0] = 0;
        *(&v108[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v102 = sub_25A998C68();
        MEMORY[0x25F850290](v102);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_180;
    }

    if (a2 == 10)
    {
      MEMORY[0x28223BE20](v8);
      (*(v31 + 16))(&v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v10 = mlx_array_new_float(*v108);
      goto LABEL_158;
    }

    if (a2 == 11)
    {
      MEMORY[0x28223BE20](v8);
      (*(v26 + 16))(&v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v27 = *&v107;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_96;
      }

      goto LABEL_160;
    }

    MEMORY[0x28223BE20](v8);
    (*(v35 + 16))(&v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v36 = sub_25A8BA558(*v108);
    goto LABEL_101;
  }

  if (a2 > 3u)
  {
    if (a2 == 4)
    {
      sub_25A8DFD44();
      sub_25A9987F8();
      if ((BYTE8(v108[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v108, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_158;
      }

      *&v108[0] = 0;
      *(&v108[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v100 = sub_25A998C68();
      MEMORY[0x25F850290](v100);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 5)
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v108[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v108, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_158;
      }

      *&v108[0] = 0;
      *(&v108[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v103 = sub_25A998C68();
      MEMORY[0x25F850290](v103);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFC9C();
      sub_25A9987F8();
      if ((BYTE2(v108[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v108, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_158;
      }

      *&v108[0] = 0;
      *(&v108[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v105 = sub_25A998C68();
      MEMORY[0x25F850290](v105);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v29 = sub_25A997D38();
      mlx_array_new_BOOL((v29 & 1) == 0);
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v108[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v108, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_158:
        v98 = v10;
        type metadata accessor for MLXArray();
        v59 = swift_allocObject();
        *(v59 + 16) = v98;
        goto LABEL_159;
      }

      *&v108[0] = 0;
      *(&v108[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v101 = sub_25A998C68();
      MEMORY[0x25F850290](v101);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v108[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v108, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_158;
      }

      *&v108[0] = 0;
      *(&v108[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v104 = sub_25A998C68();
      MEMORY[0x25F850290](v104);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_180:
  __break(1u);
  return result;
}

void sub_25A8D81B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8D81B8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8D829C(uint64_t a1, unsigned __int8 a2)
{
  v118 = *MEMORY[0x277D85DE8];
  if (a2 == 4)
  {
    *v115 = a1;
    v3 = mlx_array_new_data(v115, (MEMORY[0x277D84F90] + 32), 0, 4);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v3;
    return result;
  }

  v112 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04948, &qword_25A9F9590);
  v6 = MEMORY[0x277D84D38];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v114 = 0;
    memset(v113, 0, sizeof(v113));
    sub_25A878194(v113, &qword_27FA04950, &qword_25A9F9598);
    v116 = v6;
    v117 = sub_25A8DFF20();
    *v115 = a1;
    v11 = __swift_project_boxed_opaque_existential_1(v115, v6);
    v111 = &v111;
    v12 = *(v6 - 8);
    v13 = *(v12 + 64);
    MEMORY[0x28223BE20](v11);
    v14 = (&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v14);
    v15 = sub_25A9984D8();
    if (a2 <= 6u)
    {
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 != 1)
          {
            if (v15)
            {
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v47 = sub_25A998A78();
              MEMORY[0x28223BE20](v47);
              sub_25A9989C8();
              v48 = sub_25A997D98();
              (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
              if ((v48 & 1) == 0)
              {
                goto LABEL_173;
              }
            }

            LOWORD(v113[0]) = -1;
            v49 = sub_25A9984D8();
            MEMORY[0x28223BE20](v49);
            sub_25A8DFAA4();
            sub_25A9984A8();
            v50 = sub_25A997D88();
            v51 = *(v12 + 8);
            v51(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
            if ((v50 & 1) == 0)
            {
              v52 = *v14;
              v51(v14, MEMORY[0x277D84D38]);
              LOWORD(v113[0]) = v52;
              v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 2);
              goto LABEL_162;
            }

            goto LABEL_170;
          }

          if (v15)
          {
            v16 = swift_getAssociatedTypeWitness();
            MEMORY[0x28223BE20](v16);
            swift_getAssociatedConformanceWitness();
            v17 = sub_25A998A78();
            MEMORY[0x28223BE20](v17);
            sub_25A9989C8();
            v18 = sub_25A997D98();
            (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
            if ((v18 & 1) == 0)
            {
              goto LABEL_172;
            }
          }

          LOBYTE(v113[0]) = -1;
          v19 = sub_25A9984D8();
          MEMORY[0x28223BE20](v19);
          sub_25A89522C();
          sub_25A9984A8();
          v20 = sub_25A997D88();
          v21 = *(v12 + 8);
          v21(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if ((v20 & 1) == 0)
          {
            v22 = *v14;
            v21(v14, MEMORY[0x277D84D38]);
            LOBYTE(v113[0]) = v22;
            v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 1);
            goto LABEL_162;
          }

LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
          goto LABEL_174;
        }

        if ((v15 & 1) != 0 && sub_25A9984C8() >= 65)
        {
          *&v113[0] = 0x8000000000000000;
          if (sub_25A9984D8())
          {
            v36 = sub_25A9984C8();
            if (v36 < 64)
            {
LABEL_137:
              sub_25A9984B8();
              goto LABEL_138;
            }
          }

          else
          {
            v60 = sub_25A9984D8();
            v36 = sub_25A9984C8();
            if ((v60 & 1) == 0)
            {
              if (v36 >= 64)
              {
                goto LABEL_138;
              }

              goto LABEL_137;
            }

            if (v36 <= 64)
            {
              v70 = swift_getAssociatedTypeWitness();
              MEMORY[0x28223BE20](v70);
              swift_getAssociatedConformanceWitness();
              v71 = sub_25A998A78();
              MEMORY[0x28223BE20](v71);
              sub_25A9989C8();
              v72 = sub_25A997D88();
              (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
              if (v72)
              {
LABEL_176:
                __break(1u);
                goto LABEL_177;
              }

              goto LABEL_137;
            }
          }

          MEMORY[0x28223BE20](v36);
          sub_25A895280();
          sub_25A9984A8();
          v65 = sub_25A997D88();
          (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if (v65)
          {
            goto LABEL_176;
          }
        }

LABEL_138:
        if ((sub_25A9984D8() & 1) == 0)
        {
          *&v113[0] = 0x7FFFFFFFFFFFFFFFLL;
          v73 = sub_25A9984D8();
          if (v73)
          {
            sub_25A9984B8();
          }

          else
          {
            MEMORY[0x28223BE20](v73);
            sub_25A895280();
            sub_25A9984A8();
            v74 = sub_25A997D88();
            (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
            if (v74)
            {
LABEL_174:
              __break(1u);
              goto LABEL_175;
            }
          }
        }

        v75 = *v14;
        (*(v12 + 8))(v14, MEMORY[0x277D84D38]);
        mlx_array_new_BOOL(v75 != 0);
      }

      if (a2 == 3)
      {
        if (v15)
        {
          v38 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v38);
          swift_getAssociatedConformanceWitness();
          v39 = sub_25A998A78();
          MEMORY[0x28223BE20](v39);
          sub_25A9989C8();
          v40 = sub_25A997D98();
          (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if ((v40 & 1) == 0)
          {
            goto LABEL_171;
          }
        }

        LODWORD(v113[0]) = -1;
        v41 = sub_25A9984D8();
        MEMORY[0x28223BE20](v41);
        sub_25A8DFA50();
        sub_25A9984A8();
        v42 = sub_25A997D88();
        v43 = *(v12 + 8);
        v43(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        if ((v42 & 1) == 0)
        {
          v44 = *v14;
          v43(v14, MEMORY[0x277D84D38]);
          LODWORD(v113[0]) = v44;
          v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 3);
          goto LABEL_162;
        }

        goto LABEL_168;
      }

      if (a2 == 5)
      {
        if ((v15 & 1) == 0 || sub_25A9984C8() < 9)
        {
LABEL_156:
          LOBYTE(v113[0]) = 127;
          v92 = sub_25A9984D8();
          MEMORY[0x28223BE20](v92);
          sub_25A8DF9FC();
          sub_25A9984A8();
          v93 = sub_25A997D88();
          v94 = *(v12 + 8);
          v94(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if ((v93 & 1) == 0)
          {
            v95 = *v14;
            v94(v14, MEMORY[0x277D84D38]);
            LOBYTE(v113[0]) = v95;
            v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 5);
            goto LABEL_162;
          }

          goto LABEL_166;
        }

        LOBYTE(v113[0]) = 0x80;
        if (sub_25A9984D8())
        {
          v27 = sub_25A9984C8();
          if (v27 < 8)
          {
LABEL_155:
            sub_25A9984B8();
            goto LABEL_156;
          }
        }

        else
        {
          v63 = sub_25A9984D8();
          v27 = sub_25A9984C8();
          if ((v63 & 1) == 0)
          {
            if (v27 >= 8)
            {
              goto LABEL_156;
            }

            goto LABEL_155;
          }

          if (v27 <= 8)
          {
            v89 = swift_getAssociatedTypeWitness();
            MEMORY[0x28223BE20](v89);
            swift_getAssociatedConformanceWitness();
            v90 = sub_25A998A78();
            MEMORY[0x28223BE20](v90);
            sub_25A9989C8();
            v91 = sub_25A997D88();
            (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
            if (v91)
            {
LABEL_179:
              __break(1u);
              goto LABEL_180;
            }

            goto LABEL_155;
          }
        }

        MEMORY[0x28223BE20](v27);
        sub_25A8DF9FC();
        sub_25A9984A8();
        v68 = sub_25A997D88();
        (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        if (v68)
        {
          goto LABEL_179;
        }

        goto LABEL_156;
      }

      if ((v15 & 1) == 0 || sub_25A9984C8() < 17)
      {
LABEL_160:
        LOWORD(v113[0]) = 0x7FFF;
        v99 = sub_25A9984D8();
        MEMORY[0x28223BE20](v99);
        sub_25A8DF9A8();
        sub_25A9984A8();
        v100 = sub_25A997D88();
        v101 = *(v12 + 8);
        v101(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        if ((v100 & 1) == 0)
        {
          v102 = *v14;
          v101(v14, MEMORY[0x277D84D38]);
          LOWORD(v113[0]) = v102;
          v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 6);
          goto LABEL_162;
        }

        goto LABEL_167;
      }

      LOWORD(v113[0]) = 0x8000;
      if (sub_25A9984D8())
      {
        v54 = sub_25A9984C8();
        if (v54 < 16)
        {
LABEL_159:
          sub_25A9984B8();
          goto LABEL_160;
        }
      }

      else
      {
        v64 = sub_25A9984D8();
        v54 = sub_25A9984C8();
        if ((v64 & 1) == 0)
        {
          if (v54 >= 16)
          {
            goto LABEL_160;
          }

          goto LABEL_159;
        }

        if (v54 <= 16)
        {
          v96 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v96);
          swift_getAssociatedConformanceWitness();
          v97 = sub_25A998A78();
          MEMORY[0x28223BE20](v97);
          sub_25A9989C8();
          v98 = sub_25A997D88();
          (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if (v98)
          {
            goto LABEL_180;
          }

          goto LABEL_159;
        }
      }

      MEMORY[0x28223BE20](v54);
      sub_25A8DF9A8();
      sub_25A9984A8();
      v69 = sub_25A997D88();
      (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
      if (v69)
      {
LABEL_180:
        __break(1u);
      }

      goto LABEL_160;
    }

    if (a2 > 9u)
    {
      if (a2 == 10)
      {
        if (v15)
        {
          v45 = sub_25A9984B8();
        }

        else
        {
          v45 = *v14;
        }

        (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        v10 = mlx_array_new_float(v45);
        goto LABEL_162;
      }

      if (a2 == 11)
      {
        if (v15)
        {
          v26 = sub_25A9984B8();
        }

        else
        {
          v26 = *v14;
        }

        (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        if (qword_27FA043D8 == -1)
        {
          goto LABEL_95;
        }

LABEL_164:
        swift_once();
LABEL_95:
        sub_25A998C58();
        v56 = *&v113[0];
        v57 = mlx_array_new_float(v26);
        *&v113[0] = mlx_array_new();
        mlx_astype(v113, v57, 12, *(v56 + 16));
        v58 = *&v113[0];
        type metadata accessor for MLXArray();
        v59 = swift_allocObject();
        *(v59 + 16) = v58;
        mlx_array_free(v57);

LABEL_163:
        __swift_destroy_boxed_opaque_existential_0Tm(v115);
        return v59;
      }

      if (v15)
      {
        v55 = sub_25A9984B8();
      }

      else
      {
        v55 = *v14;
      }

      (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
      v35 = sub_25A8BA558(v55);
LABEL_100:
      v59 = v35;
      goto LABEL_163;
    }

    if (a2 != 7)
    {
      if (a2 != 8)
      {
        if (v15)
        {
          v53 = sub_25A9984B8();
        }

        else
        {
          v53 = *v14;
        }

        (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        *v113 = v53;
        v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 9);
        goto LABEL_162;
      }

      if ((v15 & 1) != 0 && sub_25A9984C8() >= 65)
      {
        *&v113[0] = 0x8000000000000000;
        if (sub_25A9984D8())
        {
          v23 = sub_25A9984C8();
          if (v23 < 64)
          {
LABEL_148:
            sub_25A9984B8();
            goto LABEL_149;
          }
        }

        else
        {
          v62 = sub_25A9984D8();
          v23 = sub_25A9984C8();
          if ((v62 & 1) == 0)
          {
            if (v23 >= 64)
            {
              goto LABEL_149;
            }

            goto LABEL_148;
          }

          if (v23 <= 64)
          {
            v83 = swift_getAssociatedTypeWitness();
            MEMORY[0x28223BE20](v83);
            swift_getAssociatedConformanceWitness();
            v84 = sub_25A998A78();
            MEMORY[0x28223BE20](v84);
            sub_25A9989C8();
            v85 = sub_25A997D88();
            (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
            if (v85)
            {
LABEL_178:
              __break(1u);
              goto LABEL_179;
            }

            goto LABEL_148;
          }
        }

        MEMORY[0x28223BE20](v23);
        sub_25A8DF900();
        sub_25A9984A8();
        v67 = sub_25A997D88();
        (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        if (v67)
        {
          goto LABEL_178;
        }
      }

LABEL_149:
      if ((sub_25A9984D8() & 1) == 0)
      {
        *&v113[0] = 0x7FFFFFFFFFFFFFFFLL;
        v86 = sub_25A9984D8();
        if (v86)
        {
          sub_25A9984B8();
        }

        else
        {
          MEMORY[0x28223BE20](v86);
          sub_25A8DF900();
          sub_25A9984A8();
          v87 = sub_25A997D88();
          (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if (v87)
          {
LABEL_175:
            __break(1u);
            goto LABEL_176;
          }
        }
      }

      v88 = *v14;
      (*(v12 + 8))(v14, MEMORY[0x277D84D38]);
      *&v113[0] = v88;
      v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 8);
      goto LABEL_162;
    }

    if ((v15 & 1) != 0 && sub_25A9984C8() >= 33)
    {
      LODWORD(v113[0]) = 0x80000000;
      if (sub_25A9984D8())
      {
        v37 = sub_25A9984C8();
        if (v37 < 32)
        {
LABEL_144:
          sub_25A9984B8();
          goto LABEL_145;
        }

LABEL_118:
        MEMORY[0x28223BE20](v37);
        sub_25A8DF954();
        sub_25A9984A8();
        v66 = sub_25A997D88();
        (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
        if (v66)
        {
          goto LABEL_177;
        }

        goto LABEL_145;
      }

      v61 = sub_25A9984D8();
      v37 = sub_25A9984C8();
      if (v61)
      {
        if (v37 <= 32)
        {
          v76 = swift_getAssociatedTypeWitness();
          MEMORY[0x28223BE20](v76);
          swift_getAssociatedConformanceWitness();
          v77 = sub_25A998A78();
          MEMORY[0x28223BE20](v77);
          sub_25A9989C8();
          v78 = sub_25A997D88();
          (*(v12 + 8))(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
          if (v78)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          goto LABEL_144;
        }

        goto LABEL_118;
      }

      if (v37 < 32)
      {
        goto LABEL_144;
      }
    }

LABEL_145:
    LODWORD(v113[0]) = 0x7FFFFFFF;
    v79 = sub_25A9984D8();
    MEMORY[0x28223BE20](v79);
    sub_25A8DF954();
    sub_25A9984A8();
    v80 = sub_25A997D88();
    v81 = *(v12 + 8);
    v81(&v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), MEMORY[0x277D84D38]);
    if ((v80 & 1) == 0)
    {
      v82 = *v14;
      v81(v14, MEMORY[0x277D84D38]);
      mlx_array_new_int(v82);
    }

    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  sub_25A87817C(v113, v115);
  v7 = v116;
  v8 = __swift_project_boxed_opaque_existential_1(v115, v116);
  v9 = v8;
  if (a2 > 6u)
  {
    if (a2 <= 9u)
    {
      if (a2 == 7)
      {
        sub_25A8DFC48();
        sub_25A9987F8();
        if ((BYTE4(v113[0]) & 1) == 0)
        {
          mlx_array_new_int(v113[0]);
        }

        *&v113[0] = 0;
        *(&v113[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v104 = sub_25A998C68();
        MEMORY[0x25F850290](v104);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      else
      {
        if (a2 != 8)
        {
          MEMORY[0x28223BE20](v8);
          (*(v32 + 16))(&v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
          sub_25A8DFBA0();
          sub_25A997C38();
          LOWORD(v112) = v113[0];
          v10 = mlx_array_new_data(&v112, (MEMORY[0x277D84F90] + 32), 0, 9);
          goto LABEL_162;
        }

        sub_25A8DFBF4();
        sub_25A9987F8();
        if ((BYTE8(v113[0]) & 1) == 0)
        {
          v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 8);
          goto LABEL_162;
        }

        *&v113[0] = 0;
        *(&v113[0] + 1) = 0xE000000000000000;
        sub_25A9985F8();
        v107 = sub_25A998C68();
        MEMORY[0x25F850290](v107);

        MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
        MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
        MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
        result = sub_25A998818();
      }

      goto LABEL_188;
    }

    if (a2 == 10)
    {
      MEMORY[0x28223BE20](v8);
      (*(v30 + 16))(&v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v10 = mlx_array_new_float(*v113);
      goto LABEL_162;
    }

    if (a2 == 11)
    {
      MEMORY[0x28223BE20](v8);
      (*(v25 + 16))(&v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
      sub_25A8DFB4C();
      sub_25A997C38();
      v26 = *&v112;
      if (qword_27FA043D8 == -1)
      {
        goto LABEL_95;
      }

      goto LABEL_164;
    }

    MEMORY[0x28223BE20](v8);
    (*(v34 + 16))(&v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v7);
    sub_25A8DFAF8();
    sub_25A997C38();
    v35 = sub_25A8BA558(*v113);
    goto LABEL_100;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_25A8DFD98();
      sub_25A9987F8();
      if ((BYTE4(v113[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_162;
      }

      *&v113[0] = 0;
      *(&v113[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v105 = sub_25A998C68();
      MEMORY[0x25F850290](v105);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (a2 == 5)
    {
      sub_25A8DFCF0();
      sub_25A9987F8();
      if ((BYTE1(v113[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_162;
      }

      *&v113[0] = 0;
      *(&v113[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v108 = sub_25A998C68();
      MEMORY[0x25F850290](v108);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFC9C();
      sub_25A9987F8();
      if ((BYTE2(v113[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_162;
      }

      *&v113[0] = 0;
      *(&v113[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v110 = sub_25A998C68();
      MEMORY[0x25F850290](v110);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!a2)
    {
      v28 = sub_25A997D38();
      mlx_array_new_BOOL((v28 & 1) == 0);
    }

    if (a2 == 1)
    {
      sub_25A8DFE40();
      sub_25A9987F8();
      if ((BYTE1(v113[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 1);
LABEL_162:
        v103 = v10;
        type metadata accessor for MLXArray();
        v59 = swift_allocObject();
        *(v59 + 16) = v103;
        goto LABEL_163;
      }

      *&v113[0] = 0;
      *(&v113[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v106 = sub_25A998C68();
      MEMORY[0x25F850290](v106);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      sub_25A8DFDEC();
      sub_25A9987F8();
      if ((BYTE2(v113[0]) & 1) == 0)
      {
        v10 = mlx_array_new_data(v113, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_162;
      }

      *&v113[0] = 0;
      *(&v113[0] + 1) = 0xE000000000000000;
      sub_25A9985F8();
      v109 = sub_25A998C68();
      MEMORY[0x25F850290](v109);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

LABEL_188:
  __break(1u);
  return result;
}

void sub_25A8DB070(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8DB078);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8DB15C(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_u16[0];
  v3 = a1;
  v35[5] = *MEMORY[0x277D85DE8];
  if (a1 == 9)
  {
    LOWORD(v35[0]) = a2.n128_u16[0];
    v4 = mlx_array_new_data(v35, (MEMORY[0x277D84F90] + 32), 0, 9);
    type metadata accessor for MLXArray();
    result = swift_allocObject();
    *(result + 16) = v4;
    return result;
  }

  v6 = MEMORY[0x277D84DC8];
  v35[3] = MEMORY[0x277D84DC8];
  v35[4] = sub_25A8DFBA0();
  LOWORD(v35[0]) = v2;
  v7 = __swift_project_boxed_opaque_existential_1(v35, v6);
  if (v3 > 5)
  {
    if (v3 > 9)
    {
      if (v3 != 10)
      {
        if (v3 == 11)
        {
          _H8 = *v7;
          if (qword_27FA043D8 != -1)
          {
            swift_once();
          }

          sub_25A998C58();
          __asm { FCVT            S0, H8 }

          v16 = v33;
          v17 = mlx_array_new_float(_S0);
          v33 = mlx_array_new();
          mlx_astype(&v33, v17, 12, *(v16 + 16));
          v18 = v33;
          type metadata accessor for MLXArray();
          v19 = swift_allocObject();
          *(v19 + 16) = v18;
          mlx_array_free(v17);
        }

        else
        {
          _H0 = *v7;
          __asm { FCVT            D0, H0 }

          v19 = sub_25A8BA558(_D0);
        }

        goto LABEL_36;
      }

      _H0 = *v7;
      __asm { FCVT            S0, H0 }

      v9 = mlx_array_new_float(_S0);
LABEL_35:
      v22 = v9;
      type metadata accessor for MLXArray();
      v19 = swift_allocObject();
      *(v19 + 16) = v22;
LABEL_36:
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      return v19;
    }

    if (v3 == 6)
    {
      LOWORD(v8) = *v7;
      sub_25A8DEBDC(&v33, v8);
      if ((v33 & 0x10000) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 6);
        goto LABEL_35;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v25 = sub_25A998C68();
      MEMORY[0x25F850290](v25);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (v3 == 7)
    {
      LOWORD(v8) = *v7;
      sub_25A8DED68(&v33, v8);
      if ((v33 & 0x100000000) == 0)
      {
        mlx_array_new_int(v33);
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v28 = sub_25A998C68();
      MEMORY[0x25F850290](v28);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      LOWORD(v8) = *v7;
      sub_25A8DEF24(&v33, v8);
      if ((v34 & 1) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 8);
        goto LABEL_35;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v31 = sub_25A998C68();
      MEMORY[0x25F850290](v31);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E49, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else if (v3 > 2)
  {
    if (v3 == 3)
    {
      LOWORD(v8) = *v7;
      sub_25A8DE768(&v33, v8);
      if ((v33 & 0x100000000) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 3);
        goto LABEL_35;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v26 = sub_25A998C68();
      MEMORY[0x25F850290](v26);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3233746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else if (v3 == 4)
    {
      LOWORD(v8) = *v7;
      sub_25A8DE8CC(&v33, v8);
      if ((v34 & 1) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 4);
        goto LABEL_35;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v29 = sub_25A998C68();
      MEMORY[0x25F850290](v29);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3436746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      LOWORD(v8) = *v7;
      sub_25A8DEA2C(&v33, v8);
      if ((v33 & 0x100) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 5);
        goto LABEL_35;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v32 = sub_25A998C68();
      MEMORY[0x25F850290](v32);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](947154505, 0xE400000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  else
  {
    if (!v3)
    {
      mlx_array_new_BOOL((*v7 & 0x7FFF) != 0);
    }

    if (v3 == 1)
    {
      LOWORD(v8) = *v7;
      sub_25A8DE4D8(&v33, v8);
      if ((v33 & 0x100) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 1);
        goto LABEL_35;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v27 = sub_25A998C68();
      MEMORY[0x25F850290](v27);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x38746E4955, 0xE500000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }

    else
    {
      LOWORD(v8) = *v7;
      sub_25A8DE634(&v33, v8);
      if ((v33 & 0x10000) == 0)
      {
        v9 = mlx_array_new_data(&v33, (MEMORY[0x277D84F90] + 32), 0, 2);
        goto LABEL_35;
      }

      v33 = 0;
      v34 = 0xE000000000000000;
      sub_25A9985F8();
      v30 = sub_25A998C68();
      MEMORY[0x25F850290](v30);

      MEMORY[0x25F850290](0xD00000000000001ELL, 0x800000025AA68BC0);
      MEMORY[0x25F850290](0x3631746E4955, 0xE600000000000000);
      MEMORY[0x25F850290](0xD00000000000002ELL, 0x800000025AA68BE0);
      result = sub_25A998818();
    }
  }

  __break(1u);
  return result;
}

void sub_25A8DBC48(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8DBC50);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8DCB60(uint64_t a1, void (*a2)(void))
{
  sub_25A936F00(a1);
  a2();
}

BOOL sub_25A8DCBB8(_BYTE *a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LOBYTE(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_25A9981F8();
      if (v9 > 7)
      {
        LOBYTE(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = sub_25A9981E8();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 7)
        {
          if (v6 < -8 || v6 > 8)
          {
LABEL_9:
            LOBYTE(v6) = 0;
            LOBYTE(v13) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -8)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 8)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          LOBYTE(v13) = 0;
LABEL_24:
          v7 = 0;
          LOBYTE(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOBYTE(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LOBYTE(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  a1[1] = v7;
  return result;
}

BOOL sub_25A8DCD2C(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LOWORD(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_25A9981F8();
      if (v9 > 15)
      {
        LOWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = sub_25A9981E8();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 15)
        {
          if (v6 < -16 || v6 > 16)
          {
LABEL_9:
            LOWORD(v6) = 0;
            LOWORD(v13) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -16)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 16)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          LOWORD(v13) = 0;
LABEL_24:
          v7 = 0;
          LOWORD(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LOWORD(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LOWORD(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LOWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_25A8DCEA0(uint64_t a1, double a2)
{
  v3 = LODWORD(a2);
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  LODWORD(v6) = 0;
  v7 = 1;
  if (v4 == 2047)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_25A9981F8();
      if (v9 > 31)
      {
        LODWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_25;
      }

      v10 = v9;
      v11 = sub_25A9981E8();
      v12 = v11 + __clz(__rbit64(v5));
      v6 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 31)
        {
          if (v6 < -32 || v6 > 32)
          {
LABEL_9:
            LODWORD(v6) = 0;
            v13 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v6 < 0)
          {
            if (v6 == -32)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 >> (v12 - v10);
          }

          else
          {
            if (v6 == 32)
            {
              goto LABEL_9;
            }

            LODWORD(v6) = v3 << v6;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v13 = 1 << v10;
            goto LABEL_24;
          }

          v13 = 0;
LABEL_24:
          v7 = 0;
          LODWORD(v6) = v6 | v13;
          result = v10 >= v11;
          goto LABEL_25;
        }

        if ((v6 - 65) <= 0xFFFFFFFFFFFFFF7ELL)
        {
          LODWORD(v6) = 0;
          goto LABEL_21;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          if (v6 >= 0x40)
          {
            LODWORD(v6) = 0;
          }

          else
          {
            v6 = v5 << v6;
          }

          goto LABEL_21;
        }
      }

      if (v6 <= 0xFFFFFFFFFFFFFFC0)
      {
        LODWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_21;
    }
  }

LABEL_25:
  *a1 = v6;
  *(a1 + 4) = v7;
  return result;
}

BOOL sub_25A8DD010(uint64_t a1, double a2)
{
  v3 = (*&a2 >> 52) & 0x7FFLL;
  v4 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v5 = v3 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (v5)
  {
    result = 0;
    v5 = 0;
    v7 = 1;
    if (v3 != 2047 && a2 > -1.0)
    {
      v8 = sub_25A9981F8();
      if (v8 <= 63)
      {
        v9 = v8;
        v10 = sub_25A9981E8();
        v11 = v10 + __clz(__rbit64(v4));
        v12 = v9 - v11;
        if (__OFSUB__(v9, v11))
        {
          __break(1u);
        }

        else
        {
          if (v11 > 63)
          {
            if (v12 < -64 || v12 > 64)
            {
              goto LABEL_12;
            }
          }

          else if (v12 < -64 || v12 > 64)
          {
            goto LABEL_12;
          }

          if ((v12 & 0x8000000000000000) == 0)
          {
            if (v12 != 64)
            {
              v13 = v4 << v12;
              if (v9 < 0)
              {
LABEL_17:
                v14 = 0;
                goto LABEL_24;
              }

LABEL_23:
              v14 = 1 << v9;
              goto LABEL_24;
            }

            goto LABEL_12;
          }
        }

        if (v12 != -64)
        {
          v13 = v4 >> (v11 - v9);
          if (v9 < 0)
          {
            goto LABEL_17;
          }

          goto LABEL_23;
        }

LABEL_12:
        v13 = 0;
        v14 = 0;
        if (v9 < 0)
        {
LABEL_24:
          v7 = 0;
          result = v9 >= v10;
          v5 = v13 | v14;
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      v5 = 0;
      result = 0;
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
    result = 1;
  }

LABEL_25:
  *a1 = v5;
  *(a1 + 8) = v7;
  return result;
}

BOOL sub_25A8DD150(_BYTE *a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOBYTE(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_25A9981F8(), v8 > 7))
  {
LABEL_38:
    LOBYTE(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_25A9981E8();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 7)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 7)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -8 && v13 <= 8)
  {
    if (v13 < 0)
    {
      if (v13 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 7)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x80) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x80) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOBYTE(v15) = 0x80;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  a1[1] = v7;
  return result;
}

BOOL sub_25A8DD304(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    LOWORD(v15) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047 || (v8 = sub_25A9981F8(), v8 > 15))
  {
LABEL_38:
    LOWORD(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  v9 = v8;
  v10 = sub_25A9981E8();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit64(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v12 > 15)
  {
    if ((v13 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v13 < 0)
      {
        v12 = v6 >> (v12 - v9);
        if (v13 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v12) = 0;
        }
      }

      else
      {
        v12 = v6 << v13;
        if (v13 >= 0x40)
        {
          LODWORD(v12) = 0;
        }
      }
    }

    else
    {
      LODWORD(v12) = 0;
    }

LABEL_20:
    if (v9 != 15)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_31:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  if (v13 >= -16 && v13 <= 16)
  {
    if (v13 < 0)
    {
      if (v13 == -16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 >> (v12 - v9);
    }

    else
    {
      if (v13 == 16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = v4 << v13;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 15)
  {
    goto LABEL_37;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v14 = 1 << v9;
  }

LABEL_24:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x8000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v12 & 0x8000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 >= 0.0)
    {
      goto LABEL_38;
    }

LABEL_33:
    LOBYTE(v7) = 0;
    LOWORD(v15) = 0x8000;
    goto LABEL_29;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_29:
  *a1 = v15;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_25A8DD4B8(uint64_t a1, double a2)
{
  v4 = LODWORD(a2);
  v5 = (*&a2 >> 52) & 0x7FFLL;
  v6 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v7 = v5 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v7)
  {
    v14 = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v5 == 2047)
  {
    goto LABEL_39;
  }

  v8 = sub_25A9981F8();
  if (v8 > 31)
  {
    goto LABEL_39;
  }

  v9 = v8;
  v10 = sub_25A9981E8();
  result = v9 >= v10;
  v7 = v10 + __clz(__rbit64(v6));
  v12 = v9 - v7;
  if (__OFSUB__(v9, v7))
  {
    __break(1u);
LABEL_31:
    if (a2 < 0.0 && !v7)
    {
      v14 = 0x80000000;
      goto LABEL_29;
    }

LABEL_39:
    v14 = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_29;
  }

  if (v7 > 31)
  {
    if ((v12 - 65) > 0xFFFFFFFFFFFFFF7ELL)
    {
      if (v12 < 0)
      {
        v7 = v6 >> (v7 - v9);
        if (v12 <= 0xFFFFFFFFFFFFFFC0)
        {
          LODWORD(v7) = 0;
        }
      }

      else
      {
        v7 = v6 << v12;
        if (v12 >= 0x40)
        {
          LODWORD(v7) = 0;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

LABEL_20:
    if (v9 != 31)
    {
      if (v9 < 0)
      {
        v13 = 0;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    goto LABEL_31;
  }

  if (v12 >= -32 && v12 <= 32)
  {
    if (v12 < 0)
    {
      if (v12 == -32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 >> (v7 - v9);
    }

    else
    {
      if (v12 == 32)
      {
        goto LABEL_8;
      }

      LODWORD(v7) = v4 << v12;
    }

    goto LABEL_20;
  }

LABEL_8:
  if (v9 == 31)
  {
    goto LABEL_37;
  }

  v13 = 0;
  LODWORD(v7) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_23:
    v13 = 1 << v9;
  }

LABEL_24:
  v14 = v7 | v13;
  if (a2 >= 0.0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if ((v7 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    if (a2 < 0.0)
    {
      LOBYTE(v7) = 0;
      v14 = 0x80000000;
      goto LABEL_29;
    }

    goto LABEL_39;
  }

  LOBYTE(v7) = 0;
  v14 = -v14;
LABEL_29:
  *a1 = v14;
  *(a1 + 4) = v7;
  return result;
}

BOOL sub_25A8DD66C(uint64_t a1, double a2)
{
  v4 = (*&a2 >> 52) & 0x7FFLL;
  v5 = *&a2 & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | *&a2 & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = sub_25A9981F8();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = sub_25A9981E8();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (a2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (a2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (a2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (a2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

BOOL sub_25A8DD85C(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_24;
  }

  LOBYTE(v6) = 0;
  v7 = 1;
  if (v4 == 255)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_25A998218();
      if (v9 > 7)
      {
        LOBYTE(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_24;
      }

      v10 = v9;
      v11 = sub_25A998208();
      v12 = v11 + __clz(__rbit32(v5));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 7)
        {
          if (v13 < -8 || v13 > 8)
          {
LABEL_9:
            LOBYTE(v6) = 0;
            LOBYTE(v14) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          if (v13 < 0)
          {
            if (v13 == -8)
            {
              goto LABEL_9;
            }

            v6 = LOBYTE(a2) >> (v12 - v10);
          }

          else
          {
            if (v13 == 8)
            {
              goto LABEL_9;
            }

            v6 = LODWORD(a2) << v13;
          }

LABEL_20:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_22:
            v14 = 1 << v10;
            goto LABEL_23;
          }

          LOBYTE(v14) = 0;
LABEL_23:
          v7 = 0;
          LOBYTE(v6) = v6 | v14;
          result = v10 >= v11;
          goto LABEL_24;
        }

        if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
        {
LABEL_13:
          LOBYTE(v6) = 0;
          goto LABEL_20;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x20)
          {
            v6 = v5 << v13;
            goto LABEL_20;
          }

          goto LABEL_13;
        }
      }

      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_20;
    }
  }

LABEL_24:
  *a1 = v6;
  a1[1] = v7;
  return result;
}

BOOL sub_25A8DD9D0(uint64_t a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    v7 = 0;
    result = 1;
    goto LABEL_24;
  }

  LOWORD(v6) = 0;
  v7 = 1;
  if (v4 == 255)
  {
    result = 0;
  }

  else
  {
    result = 0;
    if (a2 > -1.0)
    {
      v9 = sub_25A998218();
      if (v9 > 15)
      {
        LOWORD(v6) = 0;
        result = 0;
        v7 = 1;
        goto LABEL_24;
      }

      v10 = v9;
      v11 = sub_25A998208();
      v12 = v11 + __clz(__rbit32(v5));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 15)
        {
          if (v13 < -16 || v13 > 16)
          {
LABEL_9:
            LOWORD(v6) = 0;
            LOWORD(v14) = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_22;
            }

            goto LABEL_23;
          }

          if (v13 < 0)
          {
            if (v13 == -16)
            {
              goto LABEL_9;
            }

            v6 = LOWORD(a2) >> (v12 - v10);
          }

          else
          {
            if (v13 == 16)
            {
              goto LABEL_9;
            }

            v6 = LODWORD(a2) << v13;
          }

LABEL_20:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_22:
            v14 = 1 << v10;
            goto LABEL_23;
          }

          LOWORD(v14) = 0;
LABEL_23:
          v7 = 0;
          LOWORD(v6) = v6 | v14;
          result = v10 >= v11;
          goto LABEL_24;
        }

        if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
        {
LABEL_13:
          LOWORD(v6) = 0;
          goto LABEL_20;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x20)
          {
            v6 = v5 << v13;
            goto LABEL_20;
          }

          goto LABEL_13;
        }
      }

      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LOWORD(v6) = 0;
      }

      else
      {
        v6 = v5 >> (v12 - v10);
      }

      goto LABEL_20;
    }
  }

LABEL_24:
  *a1 = v6;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_25A8DDB44(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 23);
  v4 = LODWORD(a2) & 0x7FFFFF;
  v5 = v3 | LODWORD(a2) & 0x7FFFFF;
  if (v5)
  {
    v5 = 0;
    v6 = 1;
    if (v3 == 255)
    {
      result = 0;
    }

    else
    {
      result = 0;
      if (a2 > -1.0)
      {
        v8 = sub_25A998218();
        if (v8 <= 31)
        {
          v9 = v8;
          v10 = sub_25A998208();
          v11 = v10 + __clz(__rbit32(v4));
          v12 = v9 - v11;
          if (__OFSUB__(v9, v11))
          {
            __break(1u);
          }

          else
          {
            if (v11 > 31)
            {
              if (v12 < -32 || v12 > 32)
              {
                goto LABEL_13;
              }
            }

            else if (v12 < -32 || v12 > 32)
            {
              goto LABEL_13;
            }

            if ((v12 & 0x8000000000000000) == 0)
            {
              if (v12 != 32)
              {
                v13 = v4 << v12;
                if (v9 < 0)
                {
LABEL_18:
                  v14 = 0;
                  goto LABEL_25;
                }

LABEL_24:
                v14 = 1 << v9;
                goto LABEL_25;
              }

              goto LABEL_13;
            }
          }

          if (v12 != -32)
          {
            v13 = v4 >> (v11 - v9);
            if (v9 < 0)
            {
              goto LABEL_18;
            }

            goto LABEL_24;
          }

LABEL_13:
          v13 = 0;
          v14 = 0;
          if (v9 < 0)
          {
LABEL_25:
            v6 = 0;
            v5 = v13 | v14;
            result = v9 >= v10;
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v5 = 0;
        result = 0;
        v6 = 1;
      }
    }
  }

  else
  {
    v6 = 0;
    result = 1;
  }

LABEL_26:
  *a1 = v5;
  *(a1 + 4) = v6;
  return result;
}

BOOL sub_25A8DDC8C(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 23);
  v4 = LODWORD(a2) & 0x7FFFFF;
  if (!(v3 | v4))
  {
    v6 = 0;
    v7 = 0;
    result = 1;
    goto LABEL_21;
  }

  result = 0;
  v6 = 0;
  v7 = 1;
  if (v3 != 255 && a2 > -1.0)
  {
    v8 = sub_25A998218();
    if (v8 > 63)
    {
      v6 = 0;
      result = 0;
      v7 = 1;
      goto LABEL_21;
    }

    v9 = v8;
    v10 = sub_25A998208();
    v11 = v10 + __clz(__rbit32(v4));
    v12 = v9 - v11;
    if (__OFSUB__(v9, v11))
    {
      __break(1u);
    }

    else
    {
      if (v11 <= 63)
      {
        if (v12 < -64 || v12 > 64)
        {
LABEL_9:
          v12 = 0;
          v13 = 0;
          if ((v9 & 0x8000000000000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_20;
        }

        if (v12 < 0)
        {
          if (v12 == -64)
          {
            goto LABEL_9;
          }

          v12 = v4 >> (v11 - v9);
        }

        else
        {
          if (v12 == 64)
          {
            goto LABEL_9;
          }

          v12 = v4 << v12;
        }

LABEL_17:
        if ((v9 & 0x8000000000000000) == 0)
        {
LABEL_19:
          v13 = 1 << v9;
          goto LABEL_20;
        }

        v13 = 0;
LABEL_20:
        v7 = 0;
        result = v9 >= v10;
        v6 = v12 | v13;
        goto LABEL_21;
      }

      if ((v12 - 33) <= 0xFFFFFFFFFFFFFFBELL)
      {
        goto LABEL_12;
      }

      if ((v12 & 0x8000000000000000) == 0)
      {
        if (v12 < 0x20)
        {
          LODWORD(v12) = v4 << v12;
          goto LABEL_16;
        }

LABEL_12:
        LODWORD(v12) = 0;
LABEL_16:
        v12 = v12;
        goto LABEL_17;
      }
    }

    if (v12 > 0xFFFFFFFFFFFFFFE0)
    {
      LODWORD(v12) = v4 >> (v11 - v9);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_21:
  *a1 = v6;
  *(a1 + 8) = v7;
  return result;
}

BOOL sub_25A8DDDFC(_BYTE *a1, float a2)
{
  v5 = (LODWORD(a2) >> 23);
  v6 = LODWORD(a2) & 0x7FFFFF;
  v7 = v5 | LODWORD(a2) & 0x7FFFFF;
  if (!v7)
  {
    LOBYTE(v15) = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v5 == 255 || (v8 = sub_25A998218(), v8 > 7))
  {
LABEL_37:
    LOBYTE(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = sub_25A998208();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit32(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v12 > 7)
  {
    if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
LABEL_12:
      LODWORD(v12) = 0;
      goto LABEL_19;
    }

    if (v13 < 0)
    {
      LODWORD(v12) = v6 >> (v12 - v9);
      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }
    }

    else
    {
      if (v13 >= 0x20)
      {
        goto LABEL_12;
      }

      LODWORD(v12) = v6 << v13;
    }

LABEL_19:
    if (v9 != 7)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_30:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v13 >= -8 && v13 <= 8)
  {
    if (v13 < 0)
    {
      if (v13 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LOBYTE(a2) >> (v12 - v9);
    }

    else
    {
      if (v13 == 8)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LODWORD(a2) << v13;
    }

    goto LABEL_19;
  }

LABEL_8:
  if (v9 == 7)
  {
    goto LABEL_36;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v14 = 1 << v9;
  }

LABEL_23:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x80) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if ((v12 & 0x80) != 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if (a2 >= 0.0)
    {
      goto LABEL_37;
    }

LABEL_32:
    LOBYTE(v7) = 0;
    LOBYTE(v15) = 0x80;
    goto LABEL_28;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_28:
  *a1 = v15;
  a1[1] = v7;
  return result;
}

BOOL sub_25A8DDFB0(uint64_t a1, float a2)
{
  v5 = (LODWORD(a2) >> 23);
  v6 = LODWORD(a2) & 0x7FFFFF;
  v7 = v5 | LODWORD(a2) & 0x7FFFFF;
  if (!v7)
  {
    LOWORD(v15) = 0;
    result = 1;
    goto LABEL_28;
  }

  if (v5 == 255 || (v8 = sub_25A998218(), v8 > 15))
  {
LABEL_37:
    LOWORD(v15) = 0;
    result = 0;
    LOBYTE(v7) = 1;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = sub_25A998208();
  result = v9 >= v10;
  v12 = v10 + __clz(__rbit32(v6));
  v13 = v9 - v12;
  if (__OFSUB__(v9, v12))
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v12 > 15)
  {
    if ((v13 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
LABEL_12:
      LODWORD(v12) = 0;
      goto LABEL_19;
    }

    if (v13 < 0)
    {
      LODWORD(v12) = v6 >> (v12 - v9);
      if (v13 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }
    }

    else
    {
      if (v13 >= 0x20)
      {
        goto LABEL_12;
      }

      LODWORD(v12) = v6 << v13;
    }

LABEL_19:
    if (v9 != 15)
    {
      if (v9 < 0)
      {
        v14 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_30:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v13 >= -16 && v13 <= 16)
  {
    if (v13 < 0)
    {
      if (v13 == -16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LOWORD(a2) >> (v12 - v9);
    }

    else
    {
      if (v13 == 16)
      {
        goto LABEL_8;
      }

      LODWORD(v12) = LODWORD(a2) << v13;
    }

    goto LABEL_19;
  }

LABEL_8:
  if (v9 == 15)
  {
    goto LABEL_36;
  }

  v14 = 0;
  LODWORD(v12) = 0;
  if ((v9 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v14 = 1 << v9;
  }

LABEL_23:
  v15 = v12 | v14;
  if (a2 >= 0.0)
  {
    if ((v12 & 0x8000) == 0)
    {
      LOBYTE(v7) = 0;
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if ((v12 & 0x8000) != 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    if (a2 >= 0.0)
    {
      goto LABEL_37;
    }

LABEL_32:
    LOBYTE(v7) = 0;
    LOWORD(v15) = 0x8000;
    goto LABEL_28;
  }

  LOBYTE(v7) = 0;
  v15 = -v15;
LABEL_28:
  *a1 = v15;
  *(a1 + 2) = v7;
  return result;
}

BOOL sub_25A8DE164(uint64_t a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LODWORD(a2) & 0x7FFFFF;
  if (!v6)
  {
    LODWORD(v12) = 0;
    result = 1;
    goto LABEL_25;
  }

  if (v4 == 255)
  {
    goto LABEL_37;
  }

  v7 = sub_25A998218();
  if (v7 > 31)
  {
    goto LABEL_37;
  }

  v8 = v7;
  v9 = sub_25A998208();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit32(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
LABEL_27:
    if (a2 < 0.0)
    {
      LOBYTE(v6) = 0;
      LODWORD(v12) = 0x80000000;
      goto LABEL_25;
    }

LABEL_37:
    LODWORD(v12) = 0;
    result = 0;
    LOBYTE(v6) = 1;
    goto LABEL_25;
  }

  if (v11 > 31)
  {
    if (v12 < -32 || v12 > 32)
    {
      goto LABEL_11;
    }
  }

  else if (v12 < -32 || v12 > 32)
  {
    goto LABEL_11;
  }

  if (v12 < 0)
  {
    goto LABEL_32;
  }

  if (v12 != 32)
  {
    v6 = v5 << v12;
    if (v8 != 31)
    {
      goto LABEL_17;
    }

LABEL_34:
    if (a2 < 0.0 && !v6)
    {
      LODWORD(v12) = 0x80000000;
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_11:
  if (v8 == 31)
  {
    goto LABEL_27;
  }

  v13 = 0;
  v6 = 0;
  if (v8 < 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  v13 = 1 << v8;
LABEL_20:
  while (1)
  {
    v12 = v6 | v13;
    if (a2 >= 0.0)
    {
      break;
    }

    if ((v6 & 0x80000000) == 0)
    {
      LOBYTE(v6) = 0;
      LODWORD(v12) = -v12;
      goto LABEL_25;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    if (v12 == -32)
    {
      goto LABEL_11;
    }

    v6 = v5 >> -v12;
    if (v8 == 31)
    {
      goto LABEL_34;
    }

LABEL_17:
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    v13 = 0;
  }

  if (v6 < 0)
  {
    goto LABEL_31;
  }

  LOBYTE(v6) = 0;
LABEL_25:
  *a1 = v12;
  *(a1 + 4) = v6;
  return result;
}

BOOL sub_25A8DE2F4(uint64_t a1, float a2)
{
  v4 = (LODWORD(a2) >> 23);
  v5 = LODWORD(a2) & 0x7FFFFF;
  v6 = v4 | LOBYTE(a2);
  if (!(v4 | v5))
  {
    v12 = 0;
    result = 1;
    goto LABEL_32;
  }

  if (v4 == 255 || (v7 = sub_25A998218(), v7 > 63))
  {
LABEL_44:
    v12 = 0;
    result = 0;
    v6 = 1;
    goto LABEL_32;
  }

  v8 = v7;
  v9 = sub_25A998208();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit32(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 > 63)
  {
    if ((v12 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
      goto LABEL_13;
    }

    if (v12 < 0)
    {
      if (v12 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v12) = v5 >> (v11 - v8);
      }

      goto LABEL_17;
    }

    if (v12 >= 0x20)
    {
LABEL_13:
      LODWORD(v12) = 0;
    }

    else
    {
      LODWORD(v12) = v5 << v12;
    }

LABEL_17:
    v12 = v12;
LABEL_18:
    if (v8 != 63)
    {
      if (v8 > -65)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_25:
          v13 = 1 << v8;
          goto LABEL_26;
        }

        if (v8 != -64)
        {
          v13 = 0;
LABEL_26:
          v12 |= v13;
        }
      }

      if (a2 >= 0.0)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
LABEL_31:
          v6 = 0;
          goto LABEL_32;
        }
      }

      else
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        __break(1u);
      }

      __break(1u);
LABEL_43:
      if (a2 >= 0.0)
      {
        goto LABEL_44;
      }

LABEL_39:
      v6 = 0;
      v12 = 0x8000000000000000;
      goto LABEL_32;
    }

LABEL_37:
    if (a2 >= 0.0 || v12)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 == -64)
      {
        goto LABEL_8;
      }

      v12 = v5 >> (v11 - v8);
    }

    else
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

      v12 = v5 << v12;
    }

    goto LABEL_18;
  }

LABEL_8:
  if (v8 == 63)
  {
    goto LABEL_43;
  }

  if (v8 < -64)
  {
    goto LABEL_10;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if (v8 != -64)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_26;
  }

LABEL_10:
  v12 = 0;
  if (a2 >= 0.0)
  {
    goto LABEL_31;
  }

LABEL_29:
  v6 = 0;
  v12 = -v12;
LABEL_32:
  *a1 = v12;
  *(a1 + 8) = v6;
  return result;
}

BOOL sub_25A8DE4D8(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 10) & 0x1F;
  v5 = LOWORD(a2) & 0x3FF;
  v6 = v4 | v5;
  if (!(v4 | v5))
  {
    v8 = 0;
    result = 1;
    goto LABEL_27;
  }

  if (v4 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    v10 = sub_25A998C18();
    if (v10 <= 7)
    {
      v11 = v10;
      v12 = sub_25A998C08();
      v13 = v12 + __clz(__rbit32(v5 | 0x10000));
      v14 = v11 - v13;
      if (__OFSUB__(v11, v13))
      {
        __break(1u);
      }

      else
      {
        if (v13 <= 7)
        {
          if (v14 < -8 || v14 > 8)
          {
LABEL_13:
            LOBYTE(v15) = 0;
            LOBYTE(v16) = 0;
            if ((v11 & 0x8000000000000000) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          if ((v14 & 0x8000000000000000) == 0)
          {
            if (v14 == 8)
            {
              goto LABEL_13;
            }

            goto LABEL_22;
          }

          if (v14 == -8)
          {
            goto LABEL_13;
          }

          v15 = LOBYTE(a2) >> (v13 - v11);
LABEL_23:
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_25:
            v16 = 1 << v11;
            goto LABEL_26;
          }

          LOBYTE(v16) = 0;
LABEL_26:
          v6 = 0;
          v8 = v15 | v16;
          result = v11 >= v12;
          goto LABEL_27;
        }

        if ((v14 - 17) < 0xFFFFFFFFFFFFFFDFLL)
        {
LABEL_16:
          LOBYTE(v15) = 0;
          goto LABEL_23;
        }

        if ((v14 & 0x8000000000000000) == 0)
        {
          if (v14 < 0x10)
          {
LABEL_22:
            v15 = LODWORD(a2) << v14;
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      if (v14 > 0xFFFFFFFFFFFFFFF0)
      {
        v15 = v5 >> (v13 - v11);
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  v8 = 0;
  result = 0;
  v6 = 1;
LABEL_27:
  *a1 = v8;
  a1[1] = v6;
  return result;
}

BOOL sub_25A8DE634(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | v4;
  if (v3 | v4)
  {
    if (v3 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
    {
      v9 = sub_25A998C18();
      if (v9 <= 15)
      {
        v10 = v9;
        v11 = sub_25A998C08();
        v12 = v11 + __clz(__rbit32(v4 | 0x10000));
        v13 = v10 - v12;
        if (__OFSUB__(v10, v12))
        {
          __break(1u);
        }

        else
        {
          if (v12 > 15)
          {
            if (v13 < -16 || v13 > 16)
            {
              goto LABEL_16;
            }
          }

          else if (v13 < -16 || v13 > 16)
          {
            goto LABEL_16;
          }

          if ((v13 & 0x8000000000000000) == 0)
          {
            if (v13 != 16)
            {
              v14 = v4 << v13;
              if (v10 < 0)
              {
LABEL_21:
                LOWORD(v15) = 0;
                goto LABEL_27;
              }

LABEL_26:
              v15 = 1 << v10;
              goto LABEL_27;
            }

            goto LABEL_16;
          }
        }

        if (v13 != -16)
        {
          v14 = v4 >> (v12 - v10);
          if (v10 < 0)
          {
            goto LABEL_21;
          }

          goto LABEL_26;
        }

LABEL_16:
        LOWORD(v14) = 0;
        LOWORD(v15) = 0;
        if (v10 < 0)
        {
LABEL_27:
          v5 = 0;
          v7 = v14 | v15;
          result = v10 >= v11;
          goto LABEL_28;
        }

        goto LABEL_26;
      }
    }

    v7 = 0;
    result = 0;
    v5 = 1;
  }

  else
  {
    v7 = 0;
    result = 1;
  }

LABEL_28:
  *a1 = v7;
  *(a1 + 2) = v5;
  return result;
}

BOOL sub_25A8DE768(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | v4;
  if (!(v3 | v4))
  {
    v7 = 0;
    result = 1;
    goto LABEL_27;
  }

  if (v3 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    v9 = sub_25A998C18();
    if (v9 <= 31)
    {
      v10 = v9;
      v11 = sub_25A998C08();
      v12 = v11 + __clz(__rbit32(v4 | 0x10000));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 31)
        {
          if (v13 < -32 || v13 > 32)
          {
LABEL_13:
            v14 = 0;
            v15 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_26;
          }

          if (v13 < 0)
          {
            if (v13 == -32)
            {
              goto LABEL_13;
            }

            v14 = v4 >> (v12 - v10);
          }

          else
          {
            if (v13 == 32)
            {
              goto LABEL_13;
            }

            v14 = v4 << v13;
          }

LABEL_23:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_25:
            v15 = 1 << v10;
            goto LABEL_26;
          }

          v15 = 0;
LABEL_26:
          v5 = 0;
          v7 = v14 | v15;
          result = v10 >= v11;
          goto LABEL_27;
        }

        if ((v13 - 17) <= 0xFFFFFFFFFFFFFFDELL)
        {
LABEL_16:
          v14 = 0;
          goto LABEL_23;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x10)
          {
            v14 = (v4 << v13);
            goto LABEL_23;
          }

          goto LABEL_16;
        }
      }

      if (v13 > 0xFFFFFFFFFFFFFFF0)
      {
        v14 = (v4 >> (v12 - v10));
        goto LABEL_23;
      }

      goto LABEL_16;
    }
  }

  v7 = 0;
  result = 0;
  v5 = 1;
LABEL_27:
  *a1 = v7;
  *(a1 + 4) = v5;
  return result;
}

BOOL sub_25A8DE8CC(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | LOBYTE(a2);
  if (!(v3 | v4))
  {
    v7 = 0;
    result = 1;
    goto LABEL_25;
  }

  if (v3 != 31 && *&a2 > COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(-1.0)))
  {
    v9 = sub_25A998C18();
    if (v9 <= 63)
    {
      v10 = v9;
      v11 = sub_25A998C08();
      v12 = v11 + __clz(__rbit32(v4 | 0x10000));
      v13 = v10 - v12;
      if (__OFSUB__(v10, v12))
      {
        __break(1u);
      }

      else
      {
        if (v12 <= 63)
        {
          if (v13 < -64 || v13 > 64)
          {
LABEL_13:
            v13 = 0;
            v14 = 0;
            if ((v10 & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          if (v13 < 0)
          {
            if (v13 == -64)
            {
              goto LABEL_13;
            }

            v13 = v4 >> (v12 - v10);
          }

          else
          {
            if (v13 == 64)
            {
              goto LABEL_13;
            }

            v13 = v4 << v13;
          }

LABEL_21:
          if ((v10 & 0x8000000000000000) == 0)
          {
LABEL_23:
            v14 = 1 << v10;
            goto LABEL_24;
          }

          v14 = 0;
LABEL_24:
          v5 = 0;
          result = v10 >= v11;
          v7 = v13 | v14;
          goto LABEL_25;
        }

        if ((v13 - 17) <= 0xFFFFFFFFFFFFFFDELL)
        {
          goto LABEL_16;
        }

        if ((v13 & 0x8000000000000000) == 0)
        {
          if (v13 < 0x10)
          {
            LODWORD(v13) = v4 << v13;
            goto LABEL_20;
          }

LABEL_16:
          LOWORD(v13) = 0;
LABEL_20:
          v13 = v13;
          goto LABEL_21;
        }
      }

      if (v13 > 0xFFFFFFFFFFFFFFF0)
      {
        LODWORD(v13) = v4 >> (v12 - v10);
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

  v7 = 0;
  result = 0;
  v5 = 1;
LABEL_25:
  *a1 = v7;
  *(a1 + 8) = v5;
  return result;
}

BOOL sub_25A8DEA2C(_BYTE *a1, float a2)
{
  v4 = (LODWORD(a2) >> 10) & 0x1F;
  v5 = LOWORD(a2) & 0x3FF;
  v6 = v4 | v5;
  if (!(v4 | v5))
  {
    LOBYTE(v14) = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v4 == 31 || (v7 = sub_25A998C18(), v7 > 7))
  {
LABEL_39:
    LOBYTE(v14) = 0;
    result = 0;
    v6 = 1;
    goto LABEL_29;
  }

  v8 = v7;
  v9 = sub_25A998C08();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit32(v5 | 0x10000));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v11 > 7)
  {
    if ((v12 - 17) >= 0xFFFFFFFFFFFFFFDFLL)
    {
      if (v12 < 0)
      {
        if (v12 > 0xFFFFFFFFFFFFFFF0)
        {
          LODWORD(v11) = v5 >> (v11 - v8);
LABEL_19:
          if (v8 != 7)
          {
            if (v8 < 0)
            {
              v13 = 0;
              goto LABEL_23;
            }

            goto LABEL_22;
          }

LABEL_31:
          __asm { FCMP            H8, #0 }

          if (!_NF || v11)
          {
            goto LABEL_39;
          }

          goto LABEL_34;
        }
      }

      else if (v12 < 0x10)
      {
LABEL_18:
        LODWORD(v11) = LODWORD(a2) << v12;
        goto LABEL_19;
      }
    }

    LODWORD(v11) = 0;
    goto LABEL_19;
  }

  if (v12 >= -8 && v12 <= 8)
  {
    if (v12 < 0)
    {
      if (v12 == -8)
      {
        goto LABEL_8;
      }

      LODWORD(v11) = LOBYTE(a2) >> (v11 - v8);
      goto LABEL_19;
    }

    if (v12 == 8)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_8:
  if (v8 == 7)
  {
    goto LABEL_38;
  }

  v13 = 0;
  LODWORD(v11) = 0;
  if ((v8 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v13 = 1 << v8;
  }

LABEL_23:
  v14 = v11 | v13;
  __asm { FCMP            H8, #0 }

  if (!_NF)
  {
    if ((v11 & 0x80) == 0)
    {
      v6 = 0;
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if ((v11 & 0x80) != 0)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __asm { FCMP            H8, #0 }

    if (!_NF)
    {
      goto LABEL_39;
    }

LABEL_34:
    v6 = 0;
    LOBYTE(v14) = 0x80;
    goto LABEL_29;
  }

  v6 = 0;
  v14 = -v14;
LABEL_29:
  *a1 = v14;
  a1[1] = v6;
  return result;
}

BOOL sub_25A8DEBDC(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | v4;
  if (!(v3 | v4))
  {
    LOWORD(v11) = 0;
    result = 1;
    goto LABEL_26;
  }

  if (v3 == 31)
  {
    goto LABEL_29;
  }

  v6 = sub_25A998C18();
  if (v6 > 15)
  {
    goto LABEL_29;
  }

  v7 = v6;
  v8 = sub_25A998C08();
  result = v7 >= v8;
  v10 = v8 + __clz(__rbit32(v4 | 0x10000));
  v11 = v7 - v10;
  if (__OFSUB__(v7, v10))
  {
    __break(1u);
LABEL_28:
    __asm { FCMP            H8, #0 }

    if (_NF)
    {
LABEL_38:
      v5 = 0;
      LOWORD(v11) = 0x8000;
      goto LABEL_26;
    }

LABEL_29:
    LOWORD(v11) = 0;
    result = 0;
    v5 = 1;
    goto LABEL_26;
  }

  if (v10 > 15)
  {
    if (v11 < -16 || v11 > 16)
    {
      goto LABEL_11;
    }
  }

  else if (v11 < -16 || v11 > 16)
  {
    goto LABEL_11;
  }

  if (v11 < 0)
  {
    goto LABEL_33;
  }

  if (v11 != 16)
  {
    v13 = v4 << v11;
    if (v7 != 15)
    {
      goto LABEL_17;
    }

LABEL_35:
    __asm { FCMP            H8, #0 }

    if (_NF && !v13)
    {
      goto LABEL_38;
    }

    goto LABEL_29;
  }

LABEL_11:
  if (v7 == 15)
  {
    goto LABEL_28;
  }

  v12 = 0;
  v13 = 0;
  if (v7 < 0)
  {
    goto LABEL_20;
  }

LABEL_19:
  v12 = 1 << v7;
LABEL_20:
  while (1)
  {
    v11 = v13 | v12;
    __asm { FCMP            H8, #0 }

    if (!_NF)
    {
      break;
    }

    if ((v13 & 0x8000) == 0)
    {
      v5 = 0;
      LODWORD(v11) = -v11;
      goto LABEL_26;
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    if (v11 == -16)
    {
      goto LABEL_11;
    }

    v13 = v4 >> -v11;
    if (v7 == 15)
    {
      goto LABEL_35;
    }

LABEL_17:
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    v12 = 0;
  }

  if ((v13 & 0x8000) != 0)
  {
    goto LABEL_32;
  }

  v5 = 0;
LABEL_26:
  *a1 = v11;
  *(a1 + 2) = v5;
  return result;
}

BOOL sub_25A8DED68(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  LOBYTE(v5) = v3 | v4;
  if (!(v3 | v4))
  {
    v12 = 0;
    result = 1;
    goto LABEL_29;
  }

  if (v3 == 31)
  {
    goto LABEL_41;
  }

  v6 = sub_25A998C18();
  if (v6 > 31)
  {
    goto LABEL_41;
  }

  v7 = v6;
  v8 = sub_25A998C08();
  result = v7 >= v8;
  v5 = v8 + __clz(__rbit32(v4 | 0x10000));
  v10 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
    __break(1u);
LABEL_31:
    __asm { FCMP            H8, #0 }

    if (_NF && !v5)
    {
      v12 = 0x80000000;
      goto LABEL_29;
    }

LABEL_41:
    v12 = 0;
    result = 0;
    LOBYTE(v5) = 1;
    goto LABEL_29;
  }

  if (v5 > 31)
  {
    if ((v10 - 17) <= 0xFFFFFFFFFFFFFFDELL)
    {
LABEL_12:
      LODWORD(v5) = 0;
      goto LABEL_19;
    }

    if (v10 < 0)
    {
      if (v10 <= 0xFFFFFFFFFFFFFFF0)
      {
        goto LABEL_12;
      }

      LODWORD(v5) = (v4 >> (v5 - v7));
    }

    else
    {
      if (v10 >= 0x10)
      {
        goto LABEL_12;
      }

      LODWORD(v5) = (v4 << v10);
    }

LABEL_19:
    if (v7 != 31)
    {
      if (v7 < 0)
      {
        v11 = 0;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_31;
  }

  if (v10 >= -32 && v10 <= 32)
  {
    if (v10 < 0)
    {
      if (v10 == -32)
      {
        goto LABEL_8;
      }

      LODWORD(v5) = v4 >> (v5 - v7);
    }

    else
    {
      if (v10 == 32)
      {
        goto LABEL_8;
      }

      LODWORD(v5) = v4 << v10;
    }

    goto LABEL_19;
  }

LABEL_8:
  if (v7 == 31)
  {
    goto LABEL_38;
  }

  v11 = 0;
  LODWORD(v5) = 0;
  if ((v7 & 0x8000000000000000) == 0)
  {
LABEL_22:
    v11 = 1 << v7;
  }

LABEL_23:
  v12 = v5 | v11;
  __asm { FCMP            H8, #0 }

  if (!_NF)
  {
    if ((v5 & 0x80000000) == 0)
    {
      LOBYTE(v5) = 0;
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if ((v5 & 0x80000000) != 0)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __asm { FCMP            H8, #0 }

    if (_NF)
    {
      LOBYTE(v5) = 0;
      v12 = 0x80000000;
      goto LABEL_29;
    }

    goto LABEL_41;
  }

  LOBYTE(v5) = 0;
  v12 = -v12;
LABEL_29:
  *a1 = v12;
  *(a1 + 4) = v5;
  return result;
}

BOOL sub_25A8DEF24(uint64_t a1, float a2)
{
  v3 = (LODWORD(a2) >> 10) & 0x1F;
  v4 = LOWORD(a2) & 0x3FF;
  v5 = v3 | LOBYTE(a2);
  if (!(v3 | v4))
  {
    v11 = 0;
    result = 1;
    goto LABEL_33;
  }

  if (v3 == 31 || (v6 = sub_25A998C18(), v6 > 63))
  {
LABEL_46:
    v11 = 0;
    result = 0;
    v5 = 1;
    goto LABEL_33;
  }

  v7 = v6;
  v8 = sub_25A998C08();
  result = v7 >= v8;
  v10 = v8 + __clz(__rbit32(v4 | 0x10000));
  v11 = v7 - v10;
  if (__OFSUB__(v7, v10))
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v10 > 63)
  {
    if ((v11 - 17) > 0xFFFFFFFFFFFFFFDELL)
    {
      if (v11 < 0)
      {
        if (v11 > 0xFFFFFFFFFFFFFFF0)
        {
          LODWORD(v11) = v4 >> (v10 - v7);
          goto LABEL_17;
        }
      }

      else if (v11 < 0x10)
      {
        LODWORD(v11) = v4 << v11;
        goto LABEL_17;
      }
    }

    LOWORD(v11) = 0;
LABEL_17:
    v11 = v11;
LABEL_18:
    if (v7 != 63)
    {
      if (v7 > -65)
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
LABEL_25:
          v17 = 1 << v7;
          goto LABEL_26;
        }

        if (v7 != -64)
        {
          v17 = 0;
LABEL_26:
          v11 |= v17;
        }
      }

      __asm { FCMP            H8, #0 }

      if (_NF)
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_30;
        }

        __break(1u);
      }

      else if ((v11 & 0x8000000000000000) == 0)
      {
LABEL_32:
        v5 = 0;
        goto LABEL_33;
      }

      __break(1u);
LABEL_45:
      __asm { FCMP            H8, #0 }

      if (!_NF)
      {
        goto LABEL_46;
      }

LABEL_41:
      v5 = 0;
      v11 = 0x8000000000000000;
      goto LABEL_33;
    }

LABEL_38:
    __asm { FCMP            H8, #0 }

    if (!_NF || v11)
    {
      goto LABEL_46;
    }

    goto LABEL_41;
  }

  if (v11 >= -64 && v11 <= 64)
  {
    if (v11 < 0)
    {
      if (v11 == -64)
      {
        goto LABEL_8;
      }

      v11 = v4 >> (v10 - v7);
    }

    else
    {
      if (v11 == 64)
      {
        goto LABEL_8;
      }

      v11 = v4 << v11;
    }

    goto LABEL_18;
  }

LABEL_8:
  if (v7 == 63)
  {
    goto LABEL_45;
  }

  if (v7 < -64)
  {
    goto LABEL_10;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    goto LABEL_25;
  }

  if (v7 != -64)
  {
    v17 = 0;
    v11 = 0;
    goto LABEL_26;
  }

LABEL_10:
  v11 = 0;
  __asm { FCMP            H8, #0 }

  if (!_NF)
  {
    goto LABEL_32;
  }

LABEL_30:
  v5 = 0;
  v11 = -v11;
LABEL_33:
  *a1 = v11;
  *(a1 + 8) = v5;
  return result;
}

void sub_25A8DF108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = mlx_array_new();
  v6 = Array<A>.asInt32.getter(a1);
  v7 = *(a1 + 16);
  swift_beginAccess();
  v8 = *(a2 + 16);
  v9 = mlx_array_dtype(v8);
  v10 = sub_25A956420(v9);
  mlx_full(v11, (v6 + 32), v7, v8, dword_25A9F95BC[v10], *(a3 + 16));
}

void sub_25A8DF1F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A8DF1FCLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A8DF214()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25A8DF268(uint64_t a1)
{
  sub_25A8780B8(a1, &v7);
  if (v8)
  {
    sub_25A872D74(&v7, v9);
    v1 = sub_25A8F0FA0(v9, 13);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
    sub_25A878194(&v7, &qword_27FA04458, &unk_25A9F7FB0);
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v2 = sub_25A997BD8();
    __swift_project_value_buffer(v2, qword_27FA0FCE8);
    v3 = sub_25A997BB8();
    v1 = sub_25A9983A8();
    if (os_log_type_enabled(v3, v1))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_25A232000, v3, v1, "Failed to convert to MLXArray", v4, 2u);
      MEMORY[0x25F852800](v4, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v5 = 37;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_25A8DF3E0(uint64_t a1)
{
  v2 = sub_25A9616CC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  *(v3 + 16) = MEMORY[0x277D84F90];
  v5 = *(v2 + 2);
  if (v5)
  {
    v6 = v4;
    do
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_25A967754(0, v6[2] + 1, 1, v6);
      }

      v8 = v6[2];
      v7 = v6[3];
      if (v8 >= v7 >> 1)
      {
        v6 = sub_25A967754((v7 > 1), v8 + 1, 1, v6);
      }

      v6[2] = v8 + 1;
      v6[v8 + 4] = v4;
      --v5;
    }

    while (v5);
    *(v3 + 16) = v6;
  }

  v9 = MEMORY[0x277D84F90];
  sub_25A897F48(a1, MEMORY[0x277D84F90], v3, v2);

  swift_beginAccess();
  v10 = *(v3 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    sub_25A998748();
    v12 = v10 + 32;
    do
    {
      v12 += 8;

      sub_25A955844(v13, 0);
      sub_25A998718();
      sub_25A998758();
      sub_25A998768();
      sub_25A998728();
      --v11;
    }

    while (v11);

    return v9;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

char *sub_25A8DF5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16) || (v4 = sub_25A8F3600(a2, a3), (v5 & 1) == 0))
  {
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
    goto LABEL_16;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, &v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v26 = 0;
    v24 = 0u;
    v25 = 0u;
    goto LABEL_16;
  }

  v6 = *(&v25 + 1);
  if (!*(&v25 + 1))
  {
LABEL_16:
    sub_25A878194(&v24, &qword_27FA04728, &unk_25A9FD740);
    return 0;
  }

  v7 = v26;
  __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
  v8 = (*(v7 + 8))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(&v24);
  v10 = sub_25A92F774(v8, v9);

  if (!v10)
  {
    return 0;
  }

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  v11 = sub_25A998848();
  if (!v11)
  {
LABEL_26:

    return MEMORY[0x277D84F90];
  }

LABEL_8:
  *&v24 = MEMORY[0x277D84F90];
  result = sub_25A937570(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = v24;
    if ((v10 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v11; ++i)
      {
        v15 = [MEMORY[0x25F8509C0](i v10)];
        swift_unknownObjectRelease();
        *&v24 = v13;
        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_25A937570((v16 > 1), v17 + 1, 1);
          v13 = v24;
        }

        *(v13 + 16) = v17 + 1;
        *(v13 + 8 * v17 + 32) = v15;
      }
    }

    else
    {
      v18 = (v10 + 32);
      do
      {
        v19 = [*v18 integerValue];
        *&v24 = v13;
        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v19;
          sub_25A937570((v20 > 1), v21 + 1, 1);
          v19 = v22;
          v13 = v24;
        }

        *(v13 + 16) = v21 + 1;
        *(v13 + 8 * v21 + 32) = v19;
        ++v18;
        --v11;
      }

      while (v11);
    }

    return v13;
  }

  __break(1u);
  return result;
}

id sub_25A8DF850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_25A8F3600(a2, a3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_25A87500C(*(a1 + 56) + 32 * v4, v9);
  sub_25A873A9C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = [v8 integerValue];

  return v6;
}

unint64_t sub_25A8DF900()
{
  result = qword_27FA04958;
  if (!qword_27FA04958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04958);
  }

  return result;
}

unint64_t sub_25A8DF954()
{
  result = qword_27FA04960;
  if (!qword_27FA04960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04960);
  }

  return result;
}

unint64_t sub_25A8DF9A8()
{
  result = qword_27FA04968;
  if (!qword_27FA04968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04968);
  }

  return result;
}

unint64_t sub_25A8DF9FC()
{
  result = qword_27FA04970;
  if (!qword_27FA04970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04970);
  }

  return result;
}

unint64_t sub_25A8DFA50()
{
  result = qword_27FA04978;
  if (!qword_27FA04978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04978);
  }

  return result;
}

unint64_t sub_25A8DFAA4()
{
  result = qword_27FA04980;
  if (!qword_27FA04980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04980);
  }

  return result;
}

unint64_t sub_25A8DFAF8()
{
  result = qword_27FA04988;
  if (!qword_27FA04988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04988);
  }

  return result;
}

unint64_t sub_25A8DFB4C()
{
  result = qword_27FA04990;
  if (!qword_27FA04990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04990);
  }

  return result;
}

unint64_t sub_25A8DFBA0()
{
  result = qword_27FA04998;
  if (!qword_27FA04998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04998);
  }

  return result;
}

unint64_t sub_25A8DFBF4()
{
  result = qword_27FA049A0;
  if (!qword_27FA049A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049A0);
  }

  return result;
}

unint64_t sub_25A8DFC48()
{
  result = qword_27FA049A8;
  if (!qword_27FA049A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049A8);
  }

  return result;
}

unint64_t sub_25A8DFC9C()
{
  result = qword_27FA049B0;
  if (!qword_27FA049B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049B0);
  }

  return result;
}

unint64_t sub_25A8DFCF0()
{
  result = qword_27FA049B8;
  if (!qword_27FA049B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049B8);
  }

  return result;
}

unint64_t sub_25A8DFD44()
{
  result = qword_27FA049C0;
  if (!qword_27FA049C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049C0);
  }

  return result;
}

unint64_t sub_25A8DFD98()
{
  result = qword_27FA049C8;
  if (!qword_27FA049C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049C8);
  }

  return result;
}

unint64_t sub_25A8DFDEC()
{
  result = qword_27FA049D0;
  if (!qword_27FA049D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049D0);
  }

  return result;
}

unint64_t sub_25A8DFE40()
{
  result = qword_27FA049D8;
  if (!qword_27FA049D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049D8);
  }

  return result;
}

uint64_t sub_25A8DFE94()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_25A8DFECC()
{
  result = qword_27FA049F8;
  if (!qword_27FA049F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA049F8);
  }

  return result;
}

unint64_t sub_25A8DFF20()
{
  result = qword_27FA04A00;
  if (!qword_27FA04A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A00);
  }

  return result;
}

uint64_t sub_25A8DFF74(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6D614E7373616C63;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656D614E7166;
    }

    else
    {
      v5 = 0x6D614E7373616C63;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE500000000000000;
    v5 = 0x7365736162;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 2036625250;
    }

    else
    {
      v5 = 7303789;
    }

    if (v4 == 3)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  v7 = 0xE500000000000000;
  v8 = 0x7365736162;
  v9 = 0xE400000000000000;
  v10 = 2036625250;
  if (a2 != 3)
  {
    v10 = 7303789;
    v9 = 0xE300000000000000;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x656D614E7166;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_25A9989E8();
  }

  return v13 & 1;
}

uint64_t sub_25A8E00C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746567726174;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 7562857;
    }

    else
    {
      v4 = 0x636E7973417369;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1919251561;
    }

    else
    {
      v4 = 0x746567726174;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE300000000000000;
  v8 = 7562857;
  if (a2 != 2)
  {
    v8 = 0x636E7973417369;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 1919251561;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8E01F4()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8E02C4(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A8E0380(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A8E044C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A8E14C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A8E047C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000065;
  v4 = 0x6D614E7373616C63;
  v5 = 0xE500000000000000;
  v6 = 0x7365736162;
  v7 = 0xE400000000000000;
  v8 = 2036625250;
  if (v2 != 3)
  {
    v8 = 7303789;
    v7 = 0xE300000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656D614E7166;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_25A8E0508()
{
  v1 = *v0;
  v2 = 0x6D614E7373616C63;
  v3 = 0x7365736162;
  v4 = 2036625250;
  if (v1 != 3)
  {
    v4 = 7303789;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D614E7166;
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

unint64_t sub_25A8E0590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A8E14C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A8E05C4(uint64_t a1)
{
  v2 = sub_25A8E1148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8E0600(uint64_t a1)
{
  v2 = sub_25A8E1148();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_25A8E0688(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04A08, ".I\a");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8E1148();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for ClassDef();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v13[0]) = 0;
    v1[5] = sub_25A9988F8();
    v1[6] = v10;
    LOBYTE(v13[0]) = 1;
    v1[7] = sub_25A9988F8();
    v1[8] = v11;
    v1[9] = sub_25A94B3A8(v8, 2);
    v14 = 3;
    type metadata accessor for LexicalBlock();
    sub_25A8E119C();
    sub_25A998938();
    v1[10] = v13[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04870, &qword_25A9F8EE8);
    v14 = 4;
    sub_25A8E11F4();
    sub_25A998938();
    v1[11] = v13[0];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v1[12] = sub_25A8F4D24();
    sub_25A872F24(a1, v13);
    v3 = sub_25A8963D8(v13);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8E0A84@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = v1;
  v6 = v1[10];
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v7 = v4[4];
  swift_beginAccess();
  *(v6 + 32) = v7;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  v8 = v4[9];
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v35 = a1;
    v52 = MEMORY[0x277D84F90];
    v37 = v9;
    result = sub_25A9378A0(0, v9, 0);
    v12 = 0;
    v13 = (v8 + 40);
    v10 = v52;
    v39 = v8;
    v41 = v4;
    while (v12 < *(v8 + 16))
    {
      v42 = v12;
      v14 = v3;
      v15 = *v13;
      ObjectType = swift_getObjectType();
      Strong = swift_unknownObjectWeakLoadStrong();
      v18 = v4[4];
      v19 = *(v15 + 48);
      swift_unknownObjectRetain();
      v19(Strong, v18, ObjectType, v15);
      (*(v15 + 64))(v45, ObjectType, v15);
      v3 = v14;
      if (v14)
      {
        goto LABEL_22;
      }

      sub_25A872C84(v45, v43);
      if (v44)
      {
        sub_25A872CE0(v43);
        v44 = v46;
        v43[0] = v45[0];
        v43[1] = v45[1];
        if (v46 != 1)
        {
          sub_25A872CE0(v43);
          v47 = 0u;
          v48 = 0u;
          v49 = 0;
LABEL_21:
          sub_25A8E10E0(&v47);
          sub_25A874F54();
          swift_allocError();
          *v33 = 118;
          swift_willThrow();
LABEL_22:

          return swift_unknownObjectRelease();
        }
      }

      else
      {
        sub_25A872CE0(v45);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v49 = 0;
        v47 = 0u;
        v48 = 0u;
      }

      if (!*(&v48 + 1))
      {
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
      sub_25A87817C(&v47, &v50);
      v52 = v10;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_25A9378A0((v20 > 1), v21 + 1, 1);
        v10 = v52;
      }

      v12 = v42 + 1;
      *(v10 + 16) = v21 + 1;
      result = sub_25A87817C(&v50, v10 + 40 * v21 + 32);
      v13 += 2;
      v8 = v39;
      v4 = v41;
      if (v37 == v42 + 1)
      {
        a1 = v35;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:
    sub_25A87A380(0, &v50);
    if (v3)
    {
    }

    else
    {
      v36 = a1;
      sub_25A872CE0(&v50);
      v22 = v4[5];
      v23 = v4[6];
      v24 = v4[8];
      v38 = v10;
      v40 = v4[7];
      v25 = v4;
      v26 = v4[11];
      v27 = v4[12];
      v34 = v26;
      v28 = type metadata accessor for PyCustomClass();
      v29 = swift_allocObject();
      v29[10] = v27;
      v29[2] = v22;
      v29[3] = v23;
      v29[4] = v40;
      v29[5] = v24;
      v29[6] = v38;
      v29[7] = v34;
      v29[8] = v6;
      v29[9] = &off_286C0F948;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = v25[4];
        v31 = swift_getObjectType();
        v51 = v28;
        *&v50 = v29;
        v32 = *(v30 + 64);

        v32(v22, v23, &v50, v31, v30);
        swift_unknownObjectRelease();

        result = __swift_destroy_boxed_opaque_existential_0Tm(&v50);
      }

      else
      {
      }

      *(v36 + 32) = 0;
      *v36 = 0u;
      *(v36 + 16) = 0u;
    }
  }

  return result;
}

uint64_t sub_25A8E0F0C()
{
  sub_25A9985F8();

  MEMORY[0x25F850290](*(v0 + 40), *(v0 + 48));
  MEMORY[0x25F850290](0x202020200A3ALL, 0xE600000000000000);
  v1 = sub_25A87A5A4();
  v3 = sub_25A985514(v1, v2);
  v5 = v4;

  MEMORY[0x25F850290](v3, v5);

  MEMORY[0x25F850290](10, 0xE100000000000000);
  return 0x207373616C63;
}

uint64_t sub_25A8E0FE4()
{
}

uint64_t sub_25A8E1034()
{
  sub_25A872F88(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25A8E10E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047F8, L"D\a\t");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25A8E1148()
{
  result = qword_27FA04A10;
  if (!qword_27FA04A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A10);
  }

  return result;
}

unint64_t sub_25A8E119C()
{
  result = qword_27FA04A18;
  if (!qword_27FA04A18)
  {
    type metadata accessor for LexicalBlock();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A18);
  }

  return result;
}

unint64_t sub_25A8E11F4()
{
  result = qword_27FA04A20;
  if (!qword_27FA04A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA04870, &qword_25A9F8EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClassDef.StrideCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassDef.StrideCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25A8E13C4()
{
  result = qword_27FA04A28;
  if (!qword_27FA04A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A28);
  }

  return result;
}

unint64_t sub_25A8E141C()
{
  result = qword_27FA04A30;
  if (!qword_27FA04A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A30);
  }

  return result;
}

unint64_t sub_25A8E1474()
{
  result = qword_27FA04A38;
  if (!qword_27FA04A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A38);
  }

  return result;
}

unint64_t sub_25A8E14C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A9988C8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25A8E1514(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7563378;
  }

  else
  {
    v3 = 0x746567726174;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7563378;
  }

  else
  {
    v5 = 0x746567726174;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25A9989E8();
  }

  return v8 & 1;
}

uint64_t sub_25A8E15B0()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8E1628(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A8E168C(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8E1700@<X0>(char *a2@<X8>)
{
  v3 = sub_25A9988C8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25A8E1760(uint64_t *a1@<X8>)
{
  v2 = 7563378;
  if (!*v1)
  {
    v2 = 0x746567726174;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25A8E1794()
{
  if (*v0)
  {
    return 7563378;
  }

  else
  {
    return 0x746567726174;
  }
}

uint64_t sub_25A8E17C4@<X0>(char *a3@<X8>)
{
  v4 = sub_25A9988C8();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25A8E1828(uint64_t a1)
{
  v2 = sub_25A8E1E8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8E1864(uint64_t a1)
{
  v2 = sub_25A8E1E8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8E18EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04A40, &unk_25A9F97E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8E1E8C();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Assignment();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A90E58C(v8, 0);
    v1[6] = v10;
    v1[7] = sub_25A90E58C(v8, 1);
    v1[8] = v11;
    sub_25A872F24(a1, v13);
    v3 = sub_25A8963D8(v13);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8E1AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = v1[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = v1[4];
  v9 = *(v5 + 48);
  swift_unknownObjectRetain();
  v9(Strong, v8, ObjectType, v5);
  swift_unknownObjectRelease();
  v10 = v1[8];
  v11 = swift_getObjectType();
  v12 = swift_unknownObjectWeakLoadStrong();
  v13 = v1[4];
  v14 = *(v10 + 48);
  swift_unknownObjectRetain();
  v14(v12, v13, v11, v10);
  swift_unknownObjectRelease();
  v15 = v1[6];
  v16 = swift_getObjectType();
  v17 = *(v15 + 64);
  swift_unknownObjectRetain();
  v17(v25, v16, v15);
  result = swift_unknownObjectRelease();
  if (!v3)
  {
    sub_25A896580(v26);
    sub_25A872CE0(v25);
    v19 = v1[8];
    v20 = swift_getObjectType();
    v21 = *(v19 + 64);
    swift_unknownObjectRetain();
    v21(v25, v20, v19);
    swift_unknownObjectRelease();
    sub_25A91185C(&v22);
    sub_25A872CE0(v25);
    if (v23)
    {
      sub_25A872D74(&v22, v24);
      sub_25A930C1C(v24, v26);
      __swift_destroy_boxed_opaque_existential_0Tm(v24);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v26);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      result = sub_25A872D84(&v22);
    }

    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25A8E1D34()
{
  swift_getObjectType();
  sub_25A9989B8();
  MEMORY[0x25F850290](2112800, 0xE300000000000000);
  swift_getObjectType();
  sub_25A9989B8();
  return 0;
}

uint64_t sub_25A8E1DD0()
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_25A8E1E00()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_25A8E1E8C()
{
  result = qword_27FA04A48;
  if (!qword_27FA04A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A48);
  }

  return result;
}

unint64_t sub_25A8E1EF4()
{
  result = qword_27FA04A50;
  if (!qword_27FA04A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A50);
  }

  return result;
}

unint64_t sub_25A8E1F4C()
{
  result = qword_27FA04A58;
  if (!qword_27FA04A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A58);
  }

  return result;
}

unint64_t sub_25A8E1FA4()
{
  result = qword_27FA04A60;
  if (!qword_27FA04A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A60);
  }

  return result;
}

uint64_t sub_25A8E2098@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v8 = a2;
  v11 = static MorpheusUtils.isNil(_:)(a1);
  v12 = static MorpheusUtils.isNil(_:)(a3);
  if (v11 & 1) != 0 || (v12)
  {
    v31 = v11 & v12;
    v32 = sub_25A8E4760(v8);
    v34 = v33;
    if (v32 == 29029 && v33 == 0xE200000000000000)
    {
    }

    else
    {
      LODWORD(v80) = v8;
      v36 = v32;
      v37 = sub_25A9989E8();

      if ((v37 & 1) == 0)
      {
        if (v36 == 25966 && v34 == 0xE200000000000000)
        {
        }

        else
        {
          v38 = sub_25A9989E8();

          LOBYTE(v8) = v80;
          if ((v38 & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        *(a4 + 24) = MEMORY[0x277D839B0];
        *a4 = (v31 & 1) == 0;
        return result;
      }
    }

    *(a4 + 24) = MEMORY[0x277D839B0];
    *a4 = v31 & 1;
    return result;
  }

LABEL_3:
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  DynamicType = swift_getDynamicType();
  __swift_project_boxed_opaque_existential_1(a3, *(a3 + 3));
  if (DynamicType != swift_getDynamicType())
  {
    goto LABEL_23;
  }

  sub_25A87500C(a1, &v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04A90, &qword_25A9F9BA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    sub_25A878194(&v74, &qword_27FA04A98, &qword_25A9F9BA8);
    goto LABEL_23;
  }

  sub_25A87817C(&v74, v77);
  sub_25A87500C(a3, &v68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    sub_25A878194(&v71, &qword_27FA04A98, &qword_25A9F9BA8);
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    goto LABEL_23;
  }

  v80 = v5;
  v66[1] = v4;
  v67 = a4;
  sub_25A87817C(&v71, &v74);
  v15 = v78;
  v14 = v79;
  v16 = __swift_project_boxed_opaque_existential_1(v77, v78);
  MEMORY[0x28223BE20](v16);
  v18 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  sub_25A8E36E8(v18, v15, &v71, v14, v20);
  v21 = *(&v75 + 1);
  v22 = v76;
  v23 = __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
  MEMORY[0x28223BE20](v23);
  v25 = v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25);
  sub_25A8E36E8(v25, v21, &v68, v22, v27);
  if (v8 <= 2u)
  {
    v6 = v80;
    if (!v8)
    {
      v54 = *(&v72 + 1);
      v55 = v73;
      __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
      v30 = (*(v55 + 16))(&v68, v54, v55);
      goto LABEL_71;
    }

    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v28 = v69;
        v29 = v70;
        __swift_project_boxed_opaque_existential_1(&v68, v69);
        v30 = (*(v29 + 24))(&v71, v28, v29);
LABEL_71:
        v60 = v67;
        *(v67 + 24) = MEMORY[0x277D839B0];
        v61 = v30 & 1;
        goto LABEL_72;
      }

      goto LABEL_67;
    }

    v58 = *(&v72 + 1);
    v59 = v73;
    __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
    v45 = (*(v59 + 16))(&v68, v58, v59);
LABEL_69:
    v60 = v67;
    *(v67 + 24) = MEMORY[0x277D839B0];
    v61 = (v45 & 1) == 0;
LABEL_72:
    *v60 = v61;
    sub_25A8E6C6C(&v68);
    sub_25A8E6C6C(&v71);
    goto LABEL_73;
  }

  v6 = v80;
  switch(v8)
  {
    case 3u:
      v56 = *(&v72 + 1);
      v57 = v73;
      __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
      v45 = (*(v57 + 24))(&v68, v56, v57);
      goto LABEL_69;
    case 4u:
      v62 = *(&v72 + 1);
      v63 = v73;
      __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
      v30 = (*(v63 + 24))(&v68, v62, v63);
      goto LABEL_71;
    case 5u:
      v43 = v69;
      v44 = v70;
      __swift_project_boxed_opaque_existential_1(&v68, v69);
      v45 = (*(v44 + 24))(&v71, v43, v44);
      goto LABEL_69;
  }

LABEL_67:
  sub_25A8E6C6C(&v68);
  sub_25A8E6C6C(&v71);
  __swift_destroy_boxed_opaque_existential_0Tm(&v74);
  __swift_destroy_boxed_opaque_existential_0Tm(v77);
  a4 = v67;
LABEL_23:
  sub_25A87500C(a1, &v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    sub_25A878194(&v74, &qword_27FA04750, "jN\a");
LABEL_34:
    sub_25A874F54();
    swift_allocError();
    *v40 = -123;
    return swift_willThrow();
  }

  sub_25A87817C(&v74, v77);
  sub_25A87500C(a3, &v68);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v73 = 0;
    v71 = 0u;
    v72 = 0u;
    sub_25A878194(&v71, &qword_27FA04750, "jN\a");
    __swift_destroy_boxed_opaque_existential_0Tm(v77);
    goto LABEL_34;
  }

  v39 = sub_25A87817C(&v71, &v74);
  if (v8 <= 2u)
  {
    if (!v8)
    {
      MEMORY[0x28223BE20](v39);
      sub_25A8E4BC4(sub_25A8E7310, &v68);
      if (!v6)
      {
        if (!v69)
        {
          v46 = sub_25A878194(&v68, &qword_27FA04458, &unk_25A9F7FB0);
          MEMORY[0x28223BE20](v46);
          sub_25A8E4BC4(sub_25A8E7334, &v68);
          if (!v69)
          {
            sub_25A878194(&v68, &qword_27FA04458, &unk_25A9F7FB0);
            v47 = v78;
            __swift_project_boxed_opaque_existential_1(v77, v78);
            *(&v72 + 1) = v47;
            __swift_allocate_boxed_opaque_existential_0(&v71);
            (*(*(v47 - 8) + 16))();
            v48 = *(&v75 + 1);
            __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
            v69 = v48;
            __swift_allocate_boxed_opaque_existential_0(&v68);
            (*(*(v48 - 8) + 16))();
            if (static MorpheusUtils.isNil(_:)(&v71) & 1) != 0 && (static MorpheusUtils.isNil(_:)(&v68))
            {
              v49 = 1;
            }

            else if (static MorpheusUtils.isNil(_:)(&v71) & 1) != 0 || (static MorpheusUtils.isNil(_:)(&v68))
            {
              v49 = 0;
            }

            else
            {
              v64 = sub_25A9989D8();
              v65 = sub_25A9989D8();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v49 = v64 == v65;
            }

            __swift_destroy_boxed_opaque_existential_0Tm(&v68);
            __swift_destroy_boxed_opaque_existential_0Tm(&v71);
            *(a4 + 24) = MEMORY[0x277D839B0];
            *a4 = v49;
            goto LABEL_73;
          }
        }

        goto LABEL_64;
      }

      goto LABEL_73;
    }

    if (v8 == 1)
    {
      MEMORY[0x28223BE20](v39);
      sub_25A8E4BC4(sub_25A8E7310, &v68);
      if (!v6)
      {
        if (v69)
        {
          goto LABEL_64;
        }

        v52 = sub_25A878194(&v68, &qword_27FA04458, &unk_25A9F7FB0);
        MEMORY[0x28223BE20](v52);
        sub_25A8E4BC4(sub_25A8E7334, &v68);
        if (v69)
        {
          goto LABEL_64;
        }

        sub_25A878194(&v68, &qword_27FA04458, &unk_25A9F7FB0);
        sub_25A8E4DD0(a4);
      }

      goto LABEL_73;
    }

    if (v8 == 2)
    {
      MEMORY[0x28223BE20](v39);
      sub_25A8E4BC4(sub_25A8E7310, &v68);
      if (!v6)
      {
        if (!v69)
        {
LABEL_62:
          v53 = sub_25A878194(&v68, &qword_27FA04458, &unk_25A9F7FB0);
          MEMORY[0x28223BE20](v53);
          v42 = sub_25A8E7334;
          goto LABEL_63;
        }

LABEL_64:
        sub_25A872D74(&v68, &v71);
        sub_25A872D74(&v71, a4);
        goto LABEL_73;
      }

      goto LABEL_73;
    }

LABEL_54:
    sub_25A874F54();
    swift_allocError();
    v51 = 16;
LABEL_55:
    *v50 = v51;
    swift_willThrow();
    goto LABEL_73;
  }

  if (v8 != 3)
  {
    if (v8 == 4)
    {
      MEMORY[0x28223BE20](v39);
      sub_25A8E4BC4(sub_25A8E7310, &v68);
      if (v6)
      {
        goto LABEL_73;
      }

      if (!v69)
      {
        goto LABEL_62;
      }

      goto LABEL_64;
    }

    if (v8 == 5)
    {
      MEMORY[0x28223BE20](v39);
      sub_25A8E4BC4(sub_25A8E6C08, &v68);
      if (!v6)
      {
        if (!v69)
        {
          v41 = sub_25A878194(&v68, &qword_27FA04458, &unk_25A9F7FB0);
          MEMORY[0x28223BE20](v41);
          v42 = sub_25A8E6C2C;
LABEL_63:
          sub_25A8E4BC4(v42, &v68);
          if (v69)
          {
            goto LABEL_64;
          }

          sub_25A878194(&v68, &qword_27FA04458, &unk_25A9F7FB0);
          sub_25A874F54();
          swift_allocError();
          v51 = -123;
          goto LABEL_55;
        }

        goto LABEL_64;
      }

      goto LABEL_73;
    }

    goto LABEL_54;
  }

  MEMORY[0x28223BE20](v39);
  sub_25A8E4BC4(sub_25A8E7310, &v68);
  if (!v6)
  {
    if (!v69)
    {
      goto LABEL_62;
    }

    goto LABEL_64;
  }

LABEL_73:
  __swift_destroy_boxed_opaque_existential_0Tm(&v74);
  return __swift_destroy_boxed_opaque_existential_0Tm(v77);
}

uint64_t sub_25A8E2F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_0, v3, a1);
}

uint64_t sub_25A8E2FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _ConcreteComparableBox(255, v11, v12, v13);
  v15 = sub_25A9983F8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  (*(v8 + 16))(v10, v4, a1);
  v19 = swift_dynamicCast();
  v20 = *(*(v14 - 8) + 56);
  if (v19)
  {
    v21 = *(v14 - 8);
    v20(v18, 0, 1, v14);
    v22 = *(a2 - 8);
    (*(v22 + 16))(a3, v18, a2);
    (*(v21 + 8))(v18, v14);
    v23 = 0;
  }

  else
  {
    v23 = 1;
    v20(v18, 1, 1, v14);
    (*(v16 + 8))(v18, v15);
    v22 = *(a2 - 8);
  }

  return (*(v22 + 56))(a3, v23, 1, a2);
}

uint64_t sub_25A8E3290(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_25A9983F8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 32))(v4, *(a2 + 24), v13, v14);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
    v15 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v9, v4);
    v15 = sub_25A997DF8();
    (*(v10 + 8))(v12, v4);
  }

  return v15 & 1;
}

uint64_t sub_25A8E34AC(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_25A9983F8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 32))(v4, *(a2 + 24), v13, v14);
  if ((*(v10 + 48))(v9, 1, v4) == 1)
  {
    (*(v6 + 8))(v9, v5);
    v15 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v9, v4);
    v15 = sub_25A997D88();
    (*(v10 + 8))(v12, v4);
  }

  return v15 & 1;
}

uint64_t sub_25A8E36E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  a3[3] = type metadata accessor for _ConcreteComparableBox(0, a2, a4, a5);
  a3[4] = &off_286C10160;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v9 = *(*(a2 - 8) + 32);

  return v9(boxed_opaque_existential_0, a1, a2);
}

uint64_t sub_25A8E3770(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 16))(a2, v3, v4) & 1;
}

uint64_t sub_25A8E37CC(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 24))(a2, v3, v4) & 1;
}

BOOL sub_25A8E3828(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return ((*(v4 + 24))(a1, v3, v4) & 1) == 0;
}

BOOL sub_25A8E388C(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return ((*(v4 + 24))(a2, v3, v4) & 1) == 0;
}

uint64_t sub_25A8E38EC(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 24))(a1, v3, v4) & 1;
}

uint64_t sub_25A8E394C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v4, v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04A88, &qword_25A9F9B78);
  return sub_25A997EA8();
}

uint64_t static NSString.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_25A997E28();
  v4 = v3;
  if (v2 == sub_25A997E28() && v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_25A9989E8();
  }

  return v6 & 1;
}

uint64_t sub_25A8E3A54(void *a1, uint64_t *a2)
{
  v2 = sub_25A997E28();
  v4 = v3;
  if (v2 == sub_25A997E28() && v4 == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_25A9989E8();
  }

  return v7 & 1;
}

uint64_t static Array<A>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[3] = a4;
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = sub_25A9983F8();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v29 - v15;
  v29[1] = a1;
  v29[2] = a2;
  v31 = a1;
  *&v35 = a2;
  v17 = sub_25A9981A8();
  WitnessTable = swift_getWitnessTable();
  sub_25A998A88();
  v35 = v36;
  v30 = v17;
  v31 = v17;
  v32 = v17;
  v33 = WitnessTable;
  v34 = WitnessTable;
  sub_25A998648();
  sub_25A998618();
  v29[4] = TupleTypeMetadata2 - 8;
  v19 = (v7 + 32);
  v20 = (v7 + 8);
  while (1)
  {
    v31 = v30;
    v32 = v30;
    v33 = WitnessTable;
    v34 = WitnessTable;
    sub_25A998638();
    sub_25A998628();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {

      v25 = _sSa8MorpheusE3lenSiyF_0();
      v26 = v25 < _sSa8MorpheusE3lenSiyF_0();
      return v26 & 1;
    }

    v21 = *(TupleTypeMetadata2 + 48);
    v22 = v10;
    v23 = *v19;
    (*v19)(v12, v16, a3);
    v23(v22, &v16[v21], a3);
    v10 = v22;
    if ((sub_25A997DF8() & 1) == 0)
    {
      break;
    }

    v24 = *v20;
    (*v20)(v22, a3);
    v24(v12, a3);
  }

  v26 = sub_25A997D88();
  v27 = *v20;
  (*v20)(v22, a3);
  v27(v12, a3);
  return v26 & 1;
}

uint64_t static SharedMutableArray<A>.== infix(_:_:)()
{
  v0 = sub_25A9533D4();
  v11 = sub_25A9981A8();
  *v10 = v0;
  v9 = v11;
  *v8 = sub_25A9533D4();

  v1 = static MorpheusUtils.isNil(_:)(v10);
  v2 = static MorpheusUtils.isNil(_:)(v8);
  v3 = v1 & v2;
  if ((v1 & 1) == 0 && (v2 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v10, v11);
    DynamicType = swift_getDynamicType();
    __swift_project_boxed_opaque_existential_1(v8, v9);
    if (DynamicType == swift_getDynamicType())
    {
      v5 = v11;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      v3 = sub_25A9390C4(v10, v8, v5, v6);
    }

    else
    {
      v3 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  __swift_destroy_boxed_opaque_existential_0Tm(v10);
  return v3 & 1;
}

uint64_t sub_25A8E3FE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7565423;
  if (v2 != 1)
  {
    v4 = 0x74617261706D6F63;
    v3 = 0xEB0000000073726FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1952867692;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7565423;
  if (*a2 != 1)
  {
    v8 = 0x74617261706D6F63;
    v7 = 0xEB0000000073726FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1952867692;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25A9989E8();
  }

  return v11 & 1;
}

uint64_t sub_25A8E40E0()
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A8E417C(uint64_t a1)
{
  sub_25A997D58();
}

uint64_t sub_25A8E4204(uint64_t a1)
{
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

unint64_t sub_25A8E429C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25A8E7294(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25A8E42CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7565423;
  if (v2 != 1)
  {
    v5 = 0x74617261706D6F63;
    v4 = 0xEB0000000073726FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1952867692;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25A8E4324()
{
  v1 = 7565423;
  if (*v0 != 1)
  {
    v1 = 0x74617261706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1952867692;
  }
}

unint64_t sub_25A8E4378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25A8E7294(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25A8E43A0(uint64_t a1)
{
  v2 = sub_25A8E6CB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A8E43DC(uint64_t a1)
{
  v2 = sub_25A8E6CB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A8E4464(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04AA8, &qword_25A9F9BD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A8E6CB4();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Comparison();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v1[5] = sub_25A90E5B4(v8, 0);
    v1[6] = v10;
    v1[7] = sub_25A946CD4(v8, 1);
    v1[8] = sub_25A946CD4(v8, 2);
    sub_25A872F24(a1, v12);
    v3 = sub_25A8963D8(v12);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

uint64_t sub_25A8E4694(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 28265;
    v6 = 29545;
    if (a1 != 8)
    {
      v6 = 0x746F6E207369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 15676;
    if (a1 != 5)
    {
      v7 = 0x6E6920746F6ELL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 15677;
    v2 = 62;
    v3 = 15678;
    if (a1 != 3)
    {
      v3 = 60;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 15649;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25A8E4760(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 28265;
    v6 = 29545;
    if (a1 != 8)
    {
      v6 = 0x746F6E7369;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 6648940;
    if (a1 != 5)
    {
      v7 = 0x6E69746F6ELL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 29029;
    v2 = 29799;
    v3 = 6648935;
    if (a1 != 3)
    {
      v3 = 29804;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 25966;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25A8E4838(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = a3[3];
  v10 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v9);
  (*(v10 + 8))(v28, v9, v10);
  v11 = v29;
  v12 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(*(v12 + 8) + 8))(v31, a1, a2, v11);
  if (!v31[3])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    sub_25A878194(v31, &qword_27FA04458, &unk_25A9F7FB0);
    *v32 = 0u;
    v33 = 0u;
    v34 = 0;
LABEL_12:
    sub_25A878194(v32, &qword_27FA04760, &unk_25A9F9BB0);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v34 = 0;
    *v32 = 0u;
    v33 = 0u;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v28);
  if (!*(&v33 + 1))
  {
    goto LABEL_12;
  }

  sub_25A87817C(v32, v35);
  v13 = v36;
  v14 = v37;
  __swift_project_boxed_opaque_existential_1(v35, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25A9F8D80;
  v16 = a3[3];
  v17 = __swift_project_boxed_opaque_existential_1(a3, v16);
  *(v15 + 56) = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v15 + 32));
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v17, v16);
  v19 = a4[3];
  v20 = __swift_project_boxed_opaque_existential_1(a4, v19);
  *(v15 + 88) = v19;
  v21 = __swift_allocate_boxed_opaque_existential_0((v15 + 64));
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  v22 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  (*(v14 + 16))(v15, v22, v13, v14);

  if (!v4)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  v32[0] = v4;
  v23 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04AA0, &qword_25A9F9BC8);
  if (!swift_dynamicCast())
  {
LABEL_9:

    return __swift_destroy_boxed_opaque_existential_0Tm(v35);
  }

  v24 = v28[0];
  if (LOBYTE(v28[0]) < 0xA1u)
  {
    sub_25A874F54();
    swift_allocError();
    *v25 = v24;
    swift_willThrow();
    goto LABEL_9;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v35);
LABEL_13:
  sub_25A874F54();
  swift_allocError();
  *v27 = -95;
  return swift_willThrow();
}

void sub_25A8E4BC4(void (*a1)(void)@<X0>, _OWORD *a2@<X8>)
{
  a1();
  if (v2)
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04AA0, &qword_25A9F9BC8);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:

      return;
    }

    if (v6 < 0xA1u)
    {
      sub_25A874F54();
      swift_allocError();
      *v5 = v6;
      swift_willThrow();
      goto LABEL_5;
    }

    *a2 = 0u;
    a2[1] = 0u;
  }
}

uint64_t sub_25A8E4CAC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = PySpecialFunction.rawValue.getter();
  sub_25A8E4838(v6, v7, a3, a4);
}

uint64_t sub_25A8E4D2C(char a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (a1)
  {
    v7 = PySpecialFunction.rawValue.getter();
    v9 = a4;
    v10 = a5;
  }

  else
  {
    v7 = PySpecialFunction.rawValue.getter();
    v9 = a5;
    v10 = a4;
  }

  sub_25A8E4838(v7, v8, v9, v10);
}

void sub_25A8E4DD0(uint64_t a1@<X8>)
{
  sub_25A8E4BC4(sub_25A8E7310, &v9);
  if (!v1)
  {
    if (v10)
    {
      sub_25A872D74(&v9, v7);
      sub_25A872D74(v7, &v11);
    }

    else
    {
      sub_25A878194(&v9, &qword_27FA04458, &unk_25A9F7FB0);
      v12 = MEMORY[0x277D839B0];
      LOBYTE(v11) = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
    if (swift_dynamicCast())
    {
      sub_25A87817C(v7, v13);
      v3 = v14;
      v4 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v5 = (*(v4 + 8))(v3, v4);
      *(a1 + 24) = MEMORY[0x277D839B0];
      *a1 = (v5 & 1) == 0;
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
    }

    else
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      sub_25A878194(v7, &qword_27FA047E8, &unk_25A9FBF80);
      sub_25A874F54();
      swift_allocError();
      *v6 = 29;
      swift_willThrow();
    }
  }
}

uint64_t sub_25A8E4F80(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = v3;
  sub_25A87500C(a1, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04758, &unk_25A9F9B90);
  LOBYTE(v9) = MEMORY[0x277D84F70];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    sub_25A878194(&v51, &qword_27FA04750, "jN\a");
    goto LABEL_20;
  }

  sub_25A87817C(&v51, v54);
  v10 = v55;
  v11 = v56;
  __swift_project_boxed_opaque_existential_1(v54, v55);
  (*(v11 + 8))(&v44, v10, v11);
  v12 = *(&v45 + 1);
  v13 = v46;
  __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
  (*(*(v13 + 8) + 8))(v47, 0x6961746E6F635F5FLL, 0xEC0000005F5F736ELL, v12);
  if (v47[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04768, "~N\a");
    if ((swift_dynamicCast() & 1) == 0)
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v44);
    if (*(&v49 + 1))
    {
      v43 = a2;
      v57 = v3;
      sub_25A87817C(&v48, &v51);
      v14 = *(&v52 + 1);
      v15 = v53;
      __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_25A9F8D80;
      sub_25A87500C(a3, v16 + 32);
      v17 = v55;
      v18 = __swift_project_boxed_opaque_existential_1(v54, v55);
      *(v16 + 88) = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v16 + 64));
      (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v18, v17);
      v20 = sub_25A92BDB4(MEMORY[0x277D84F90]);
      (*(v15 + 16))(v47, v16, v20, v14, v15);
      if (v4)
      {

        v44 = 0u;
        v45 = 0u;
        v46 = 0;
        v5 = v57;
LABEL_17:
        a2 = v43;
        goto LABEL_18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
      v21 = swift_dynamicCast();
      v5 = v57;
      if ((v21 & 1) == 0)
      {
        v46 = 0;
        v44 = 0u;
        v45 = 0u;
        goto LABEL_17;
      }

      a2 = v43;
      if (!*(&v45 + 1))
      {
LABEL_18:
        sub_25A878194(&v44, &qword_27FA047E8, &unk_25A9FBF80);
        __swift_destroy_boxed_opaque_existential_0Tm(&v51);
        goto LABEL_19;
      }

      sub_25A87817C(&v44, &v48);
      if (sub_25A8E4760(v43) == 28265 && v22 == 0xE200000000000000)
      {
      }

      else
      {
        v40 = sub_25A9989E8();

        if ((v40 & 1) == 0)
        {
          v9 = *(&v49 + 1);
          v42 = v50;
          __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
          LOBYTE(v9) = (*(v42 + 8))(v9, v42) ^ 1;
          goto LABEL_42;
        }
      }

      v9 = *(&v49 + 1);
      v41 = v50;
      __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
      LOBYTE(v9) = (*(v41 + 8))(v9, v41);
LABEL_42:
      __swift_destroy_boxed_opaque_existential_0Tm(&v48);
      __swift_destroy_boxed_opaque_existential_0Tm(&v51);
      goto LABEL_31;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v44);
    sub_25A878194(v47, &qword_27FA04458, &unk_25A9F7FB0);
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
  }

  sub_25A878194(&v48, &qword_27FA04760, &unk_25A9F9BB0);
LABEL_19:
  __swift_destroy_boxed_opaque_existential_0Tm(v54);
LABEL_20:
  sub_25A87500C(a3, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04AB8, &qword_25A9F9BD8);
  if (swift_dynamicCast())
  {
    sub_25A87817C(&v51, v54);
    if (a2 == 6)
    {
      v9 = v55;
      v29 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      LOBYTE(v9) = (*(v29 + 8))(a1, v9, v29) ^ 1;
      goto LABEL_31;
    }

    if (a2 == 7)
    {
      v9 = v55;
      v23 = v56;
      __swift_project_boxed_opaque_existential_1(v54, v55);
      LOBYTE(v9) = (*(v23 + 8))(a1, v9, v23);
LABEL_31:
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      return v9 & 1;
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v30 = sub_25A997BD8();
    __swift_project_value_buffer(v30, qword_27FA0FCE8);
    swift_retain_n();
    v31 = sub_25A997BB8();
    v32 = sub_25A9983A8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *&v51 = v34;
      *v33 = 136315394;
      v35 = sub_25A8E4694(a2);
      v37 = sub_25A98CC90(v35, v36, &v51);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2048;
      v9 = *(v5 + 16);

      *(v33 + 14) = v9;

      _os_log_impl(&dword_25A232000, v31, v32, "Comparison> Op %s is neither in nor notin. line %ld", v33, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x25F852800](v34, -1, -1);
      MEMORY[0x25F852800](v33, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v38 = 16;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
  }

  else
  {
    v53 = 0;
    v51 = 0u;
    v52 = 0u;
    sub_25A878194(&v51, qword_27FA04AC0, &qword_25A9F9BE0);
    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v24 = sub_25A997BD8();
    __swift_project_value_buffer(v24, qword_27FA0FCE8);

    v25 = sub_25A997BB8();
    v26 = sub_25A9983A8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = *(v5 + 16);

      _os_log_impl(&dword_25A232000, v25, v26, "Comparison> Right operand is not MembershipTestable. line %ld", v27, 0xCu);
      MEMORY[0x25F852800](v27, -1, -1);
    }

    else
    {
    }

    sub_25A874F54();
    swift_allocError();
    *v28 = 18;
    swift_willThrow();
  }

  return v9 & 1;
}

uint64_t sub_25A8E57A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[6];
  ObjectType = swift_getObjectType();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = v1[4];
  v6 = *(v2 + 48);
  swift_unknownObjectRetain();
  v6(Strong, v5, ObjectType, v2);
  swift_unknownObjectRelease();
  v122 = v1;
  v7 = v1[7];
  v8 = *(v7 + 16);

  v102 = v8;
  if (v8)
  {
    v9 = 0;
    v10 = (v7 + 40);
    while (v9 < *(v7 + 16))
    {
      ++v9;
      v11 = *v10;
      v12 = swift_getObjectType();
      v13 = swift_unknownObjectWeakLoadStrong();
      v14 = v122[4];
      v15 = *(v11 + 48);
      swift_unknownObjectRetain();
      v15(v13, v14, v12, v11);
      swift_unknownObjectRelease();
      v10 += 2;
      if (v102 == v9)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_102;
  }

LABEL_5:

  v16 = v122[8];
  v17 = *(v16 + 16);

  v103 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = (v16 + 40);
    while (v18 < *(v16 + 16))
    {
      ++v18;
      v20 = *v19;
      v21 = swift_getObjectType();
      v22 = swift_unknownObjectWeakLoadStrong();
      v23 = v122[4];
      v24 = *(v20 + 48);
      swift_unknownObjectRetain();
      v24(v22, v23, v21, v20);
      swift_unknownObjectRelease();
      v19 += 2;
      if (v103 == v18)
      {
        goto LABEL_9;
      }
    }

LABEL_102:
    __break(1u);

    __swift_destroy_boxed_opaque_existential_0Tm(v121);
    __swift_destroy_boxed_opaque_existential_0Tm(&v115);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v119);
  }

LABEL_9:

  v25 = v122;
  if (*(v122[7] + 16) != *(v122[8] + 16))
  {
    if (qword_27FA043C0 == -1)
    {
LABEL_13:
      v30 = sub_25A997BD8();
      __swift_project_value_buffer(v30, qword_27FA0FCE8);

      v31 = sub_25A997BB8();
      v32 = sub_25A9983A8();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 134217984;
        *(v33 + 4) = v25[2];

        _os_log_impl(&dword_25A232000, v31, v32, "Comparison> ops and comparators do not match. line %ld", v33, 0xCu);
        MEMORY[0x25F852800](v33, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      *v34 = 19;
      return swift_willThrow();
    }

LABEL_115:
    swift_once();
    goto LABEL_13;
  }

  v26 = v122[6];
  v27 = swift_getObjectType();
  v28 = *(v26 + 64);
  swift_unknownObjectRetain();
  v28(v117, v27, v26);
  if (v101)
  {
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_25A896580(v121);
  sub_25A872CE0(v117);
  v35 = v25[7];
  v36 = *(v35 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    *&v115 = MEMORY[0x277D84F90];

    sub_25A937550(0, v36, 0);
    v38 = 0;
    v104 = v115;
    v39 = (v35 + 40);
    v25 = 0;
    while (v38 < *(v35 + 16))
    {
      v40 = v36;
      v41 = *v39;
      v42 = swift_getObjectType();
      v43 = *(v41 + 64);
      swift_unknownObjectRetain();
      v43(v117, v42, v41);
      v25 = 0;
      sub_25A872C84(v117, &v111);
      if (v113 && (sub_25A872CE0(&v111), sub_25A872C84(v117, &v111), v113 != 1))
      {
        sub_25A872CE0(&v111);
        *(&v108 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
        v44 = swift_allocObject();
        *&v107 = v44;
        *(v44 + 16) = 0u;
        *(v44 + 32) = 0u;
        swift_unknownObjectRelease();
      }

      else
      {
        v119 = v111;
        v120 = v112;
        sub_25A92DE50(&v119, &v107);
        swift_unknownObjectRelease();
        sub_25A878194(&v119, &qword_27FA04458, &unk_25A9F7FB0);
      }

      sub_25A872CE0(v117);
      v45 = v104;
      *&v115 = v104;
      v47 = *(v104 + 16);
      v46 = *(v104 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_25A937550((v46 > 1), v47 + 1, 1);
        v45 = v115;
      }

      ++v38;
      *(v45 + 16) = v47 + 1;
      v104 = v45;
      sub_25A872D74(&v107, (v45 + 32 * v47 + 32));
      v39 += 2;
      v36 = v40;
      if (v40 == v38)
      {

        v25 = v122;
        v37 = v104;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

LABEL_28:
  v105 = v37;
  v48 = v25[8];
  v49 = *(v48 + 16);
  v50 = MEMORY[0x277D84F90];
  if (v49)
  {
    *&v115 = MEMORY[0x277D84F90];

    sub_25A937550(0, v49, 0);
    v51 = 0;
    v50 = v115;
    v52 = (v48 + 40);
    v100 = v49;
    do
    {
      if (v51 >= *(v48 + 16))
      {
        goto LABEL_114;
      }

      v53 = *v52;
      v54 = swift_getObjectType();
      v25 = *(v53 + 64);
      swift_unknownObjectRetain();
      (v25)(v117, v54, v53);
      sub_25A872C84(v117, &v111);
      if (v113)
      {
        sub_25A872CE0(&v111);
        sub_25A872C84(v117, &v111);
        if (v113 == 1)
        {
          v119 = v111;
          v120 = v112;
          sub_25A92DE50(&v119, &v107);
          swift_unknownObjectRelease();
          sub_25A878194(&v119, &qword_27FA04458, &unk_25A9F7FB0);
        }

        else
        {
          sub_25A872CE0(&v111);
          *(&v108 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v55 = swift_allocObject();
          *&v107 = v55;
          *(v55 + 16) = 0u;
          *(v55 + 32) = 0u;
          swift_unknownObjectRelease();
        }

        sub_25A872CE0(v117);
      }

      else
      {
        v119 = v111;
        v120 = v112;
        sub_25A92DE50(&v119, &v107);
        swift_unknownObjectRelease();
        sub_25A878194(&v119, &qword_27FA04458, &unk_25A9F7FB0);
        sub_25A872CE0(v117);
      }

      *&v115 = v50;
      v57 = *(v50 + 16);
      v56 = *(v50 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_25A937550((v56 > 1), v57 + 1, 1);
        v50 = v115;
      }

      ++v51;
      *(v50 + 16) = v57 + 1;
      sub_25A872D74(&v107, (v50 + 32 * v57 + 32));
      v52 += 2;
    }

    while (v100 != v51);
  }

  sub_25A87500C(v121, &v119);
  v58 = v105;
  v59 = *(v105 + 16);
  if (!v59)
  {
    v61 = 1;
LABEL_98:

    v79 = a1;
    *(a1 + 24) = MEMORY[0x277D839B0];
    *a1 = v61 & 1;
    __swift_destroy_boxed_opaque_existential_0Tm(v121);
LABEL_99:
    *(v79 + 32) = 0;
    return __swift_destroy_boxed_opaque_existential_0Tm(&v119);
  }

  v60 = 0;
  v61 = 1;
  v62 = MEMORY[0x277D84F70];
  v63 = 32;
  while (1)
  {
    if (v60 >= *(v58 + 16))
    {
      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    sub_25A87500C(v58 + v63, &v111);
    v64 = *(v50 + 16);
    if (v60 == v64)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v111);
      goto LABEL_98;
    }

    if (v60 >= v64)
    {
      goto LABEL_117;
    }

    sub_25A872D74(&v111, v117);
    sub_25A87500C(v50 + v63, v118);
    sub_25A872D74(v118, &v115);
    sub_25A872D74(v117, &v111);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_94;
    }

    v65 = sub_25A9988C8();

    if (v65 <= 4)
    {
      break;
    }

    if (v65 <= 6)
    {
      if (v65 == 5)
      {
        v66 = 5;
        goto LABEL_82;
      }

      v70 = 6;
      if (v61)
      {
LABEL_79:
        v61 = sub_25A8E4F80(&v119, v70, &v115);
        goto LABEL_44;
      }
    }

    else
    {
      switch(v65)
      {
        case 7:
          v70 = 7;
          if (v61)
          {
            goto LABEL_79;
          }

          break;
        case 8:
          if (v61)
          {
            sub_25A87500C(&v119, &v111);

            goto LABEL_74;
          }

          break;
        case 9:
          if (v61)
          {
            sub_25A87500C(&v119, &v111);
            v67 = sub_25A9989E8();

            if ((v67 & 1) == 0)
            {
              if ((static MorpheusUtils.isNil(_:)(&v111) & 1) == 0 || (static MorpheusUtils.isNil(_:)(&v115) & 1) == 0)
              {
                if ((static MorpheusUtils.isNil(_:)(&v111) & 1) == 0 && (static MorpheusUtils.isNil(_:)(&v115) & 1) == 0)
                {
                  __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
                  v68 = sub_25A9989D8();
                  __swift_project_boxed_opaque_existential_1(&v115, v116);
                  v69 = sub_25A9989D8();
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v61 = v68 != v69;
LABEL_88:
                  __swift_destroy_boxed_opaque_existential_0Tm(&v111);
                  goto LABEL_44;
                }

LABEL_76:
                v61 = 1;
                goto LABEL_88;
              }

LABEL_91:
              v61 = 0;
              goto LABEL_88;
            }

LABEL_74:
            if (static MorpheusUtils.isNil(_:)(&v111) & 1) != 0 && (static MorpheusUtils.isNil(_:)(&v115))
            {
              goto LABEL_76;
            }

            if ((static MorpheusUtils.isNil(_:)(&v111) & 1) == 0 && (static MorpheusUtils.isNil(_:)(&v115) & 1) == 0)
            {
              __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
              v73 = sub_25A9989D8();
              __swift_project_boxed_opaque_existential_1(&v115, v116);
              v74 = sub_25A9989D8();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v61 = v73 == v74;
              goto LABEL_88;
            }

            goto LABEL_91;
          }

          break;
        default:
          goto LABEL_94;
      }
    }

    v61 = 0;
LABEL_44:
    ++v60;
    __swift_destroy_boxed_opaque_existential_0Tm(&v119);
    sub_25A872D74(&v115, &v119);
    v63 += 32;
    v58 = v105;
    if (v59 == v60)
    {
      goto LABEL_98;
    }
  }

  if (v65 <= 1)
  {
    if (!v65)
    {
      v66 = 0;
      goto LABEL_82;
    }

    if (v65 == 1)
    {
      v66 = 1;
      goto LABEL_82;
    }

LABEL_94:

    v62 = v122;
    if (qword_27FA043C0 == -1)
    {
LABEL_95:
      v75 = sub_25A997BD8();
      __swift_project_value_buffer(v75, qword_27FA0FCE8);

      v76 = sub_25A997BB8();
      v77 = sub_25A9983A8();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 134217984;
        *(v78 + 4) = v62[2];

        _os_log_impl(&dword_25A232000, v76, v77, "Comparison> Not supported comparison operator. line %ld", v78, 0xCu);
        MEMORY[0x25F852800](v78, -1, -1);
      }

      else
      {
      }

      sub_25A874F54();
      swift_allocError();
      *v80 = 16;
      swift_willThrow();
      goto LABEL_112;
    }

LABEL_118:
    swift_once();
    goto LABEL_95;
  }

  if (v65 == 2)
  {
    v66 = 2;
  }

  else if (v65 == 3)
  {
    v66 = 3;
  }

  else
  {
    v66 = 4;
  }

LABEL_82:
  sub_25A8E2098(&v119, v66, &v115, v114);
  if (*(v105 + 16) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v121);

    __swift_destroy_boxed_opaque_existential_0Tm(&v115);
    v79 = a1;
    sub_25A872D74(v114, a1);
    goto LABEL_99;
  }

  sub_25A87500C(v114, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA047E0, &unk_25A9F9B80);
  if (swift_dynamicCast())
  {
    sub_25A87817C(&v107, &v111);
    if (v61)
    {
      v71 = *(&v112 + 1);
      v72 = v113;
      __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
      v61 = (*(v72 + 8))(v71, v72);
    }

    else
    {
      v61 = 0;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v114);
    goto LABEL_88;
  }

  v109 = 0;
  v107 = 0u;
  v108 = 0u;

  sub_25A878194(&v107, &qword_27FA047E8, &unk_25A9FBF80);
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v81 = sub_25A997BD8();
  __swift_project_value_buffer(v81, qword_27FA0FCE8);
  sub_25A87500C(&v115, &v111);
  v82 = v122;
  swift_retain_n();
  v83 = sub_25A997BB8();
  v84 = sub_25A9983A8();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v106 = v86;
    *v85 = 136315906;
    swift_beginAccess();
    sub_25A87500C(&v119, &v107);
    v87 = sub_25A997EA8();
    v89 = sub_25A98CC90(v87, v88, &v106);

    *(v85 + 4) = v89;
    *(v85 + 12) = 2080;
    v90 = sub_25A8E4694(v66);
    v92 = sub_25A98CC90(v90, v91, &v106);

    *(v85 + 14) = v92;
    *(v85 + 22) = 2080;
    sub_25A87500C(&v111, &v107);
    v93 = sub_25A997EA8();
    v95 = v94;
    __swift_destroy_boxed_opaque_existential_0Tm(&v111);
    v96 = sub_25A98CC90(v93, v95, &v106);

    *(v85 + 24) = v96;
    *(v85 + 32) = 2048;
    v97 = v82[2];

    *(v85 + 34) = v97;

    _os_log_impl(&dword_25A232000, v83, v84, "Comparison> %s %s %s not returning Truthiness. line %ld", v85, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x25F852800](v86, -1, -1);
    MEMORY[0x25F852800](v85, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v111);
  }

  sub_25A874F54();
  swift_allocError();
  *v98 = 29;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0Tm(v114);
LABEL_112:
  __swift_destroy_boxed_opaque_existential_0Tm(v121);
  __swift_destroy_boxed_opaque_existential_0Tm(&v115);
  return __swift_destroy_boxed_opaque_existential_0Tm(&v119);
}

uint64_t sub_25A8E683C()
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v11 = sub_25A997EB8();
  MEMORY[0x25F850290](32, 0xE100000000000000);
  v1 = *(v0 + 56);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04450, "lT\a");
  v3 = MEMORY[0x25F850440](v1, v2);
  v5 = v4;

  MEMORY[0x25F850290](v3, v5);

  MEMORY[0x25F850290](32, 0xE100000000000000);

  v7 = MEMORY[0x25F850440](v6, v2);
  v9 = v8;

  MEMORY[0x25F850290](v7, v9);

  return v11;
}

uint64_t sub_25A8E6964()
{
  swift_unknownObjectRelease();
}

uint64_t sub_25A8E699C()
{
  sub_25A872F88(v0 + 24);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A8E6A6C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_25A8E6ABC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25A8E6ABC(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_25A8E6B74()
{
  result = qword_27FA04A80;
  if (!qword_27FA04A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04A80);
  }

  return result;
}

uint64_t sub_25A8E6BC8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25A8E6CB4()
{
  result = qword_27FA04AB0;
  if (!qword_27FA04AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04AB0);
  }

  return result;
}

uint64_t sub_25A8E6D20(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25A8E6D90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_25A8E6ED0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
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

uint64_t sub_25A8E70EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25A8E7134(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25A8E7190()
{
  result = qword_27FA04B48;
  if (!qword_27FA04B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B48);
  }

  return result;
}

unint64_t sub_25A8E71E8()
{
  result = qword_27FA04B50;
  if (!qword_27FA04B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA04B50);
  }

  return result;
}