uint64_t sub_23DD0AFAC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1072) = v2;
  v3 = *(v1 + 880);
  v4 = *(v1 + 872);
  if (v2)
  {
    v5 = sub_23DD0BC54;
  }

  else
  {
    v5 = sub_23DD0B0DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23DD0B0DC()
{
  v1 = v0[133];
  v2 = v0[132];

  v3 = v0[34];

  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 >> 62)
    {
      goto LABEL_17;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      while (1)
      {
        v6 = 0;
        v92 = v3;
        v95 = v3 & 0xC000000000000001;
        v90 = v4;
        while (v95)
        {
          v7 = MEMORY[0x23EEFDD80](v6, v3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            goto LABEL_20;
          }

LABEL_9:
          v82 = v7;
          v9 = [v7 username];
          if (v9)
          {
            v10 = v0[117];
            v11 = v5;
            v12 = v0[116];
            v13 = v9;
            v14 = sub_23DD42178();
            v16 = v15;

            v0[26] = v14;
            v0[27] = v16;
            v0[28] = v12;
            v0[29] = v10;
            v5 = v11;
            v4 = v90;
            v3 = v92;
            v17 = sub_23DD42488();

            if (!v17)
            {
              goto LABEL_15;
            }
          }

          ++v6;
          if (v8 == v5)
          {
            goto LABEL_18;
          }
        }

        if (v6 < *(v4 + 16))
        {
          break;
        }

        __break(1u);
LABEL_17:
        v5 = sub_23DD425C8();
        if (!v5)
        {
          goto LABEL_18;
        }
      }

      v7 = *(v3 + 8 * v6 + 32);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

LABEL_18:
  }

  v82 = 0;
LABEL_20:
  v74 = v0[124];
  v75 = v0[131];
  v72 = v0[128];
  v73 = v0[130];
  v76 = v0[129];
  if (sub_23DD421E8() < 1)
  {
    v89 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  if (qword_2814FD150 != -1)
  {
    goto LABEL_76;
  }

LABEL_22:
  swift_beginAccess();
  v18 = qword_2814FD158;
  sub_23DCE6098();

  v19 = sub_23DD41418();

  v93 = *(v19 + 16);
  if (v93)
  {
    v20 = 0;
    v21 = v0[82];
    v88 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v22 = (v21 + 8);
    v89 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v20 >= *(v19 + 16))
      {
        __break(1u);
LABEL_76:
        swift_once();
        goto LABEL_22;
      }

      v23 = *(v21 + 72);
      v24 = *(v21 + 16);
      v24(v0[85], v19 + v88 + v23 * v20, v0[81]);
      v25 = sub_23DD413F8();
      v27 = v26;

      v28 = HIBYTE(v27) & 0xF;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (!v28)
      {
        goto LABEL_33;
      }

      sub_23DD413F8();
      v29 = sub_23DD42218();

      if ((v29 & 1) == 0)
      {
        goto LABEL_33;
      }

      v30 = v0[117];
      v31 = v0[116];
      if (sub_23DD413F8() == v31 && v32 == v30)
      {
        break;
      }

      v33 = sub_23DD42648();

      if (v33)
      {
        goto LABEL_33;
      }

      v24(v0[84], v0[85], v0[81]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v89 = sub_23DCF2310(0, *(v89 + 2) + 1, 1, v89);
      }

      v35 = *(v89 + 2);
      v34 = *(v89 + 3);
      if (v35 >= v34 >> 1)
      {
        v89 = sub_23DCF2310((v34 > 1), v35 + 1, 1, v89);
      }

      v36 = v0[84];
      v37 = v0[81];
      (*v22)(v0[85], v37);
      *(v89 + 2) = v35 + 1;
      (*(v21 + 32))(&v89[v88 + v35 * v23], v36, v37);
      if (v35 == 2)
      {
        goto LABEL_44;
      }

LABEL_34:
      if (v93 == ++v20)
      {
        goto LABEL_44;
      }
    }

LABEL_33:
    (*v22)(v0[85], v0[81]);
    goto LABEL_34;
  }

  v89 = MEMORY[0x277D84F90];
LABEL_44:

LABEL_45:
  v85 = *(v76 + 16);
  if (v85)
  {
    v38 = 0;
    v39 = v0[40];
    v40 = *(v39 + 16);
    v39 += 16;
    v87 = v40;
    v41 = v0[82];
    v78 = (*(v39 + 64) + 32) & ~*(v39 + 64);
    v86 = *(v39 + 56);
    v94 = (v41 + 8);
    v79 = (v41 + 32);
    v81 = v41;
    v84 = (v41 + 56);
    v77 = (v39 + 16);
    v83 = (v39 - 8);
    v80 = MEMORY[0x277D84F90];
    do
    {
      v91 = v38;
      v87(v0[42], v76 + v78 + v38 * v86, v0[39]);
      v42 = *(v89 + 2);
      if (v42)
      {
        v43 = &v89[(*(v81 + 80) + 32) & ~*(v81 + 80)];
        v44 = *(v81 + 72);
        v45 = *(v81 + 16);
        while (1)
        {
          v45(v0[83], v43, v0[81]);
          v46 = sub_23DD413F8();
          v48 = v47;
          sub_23DD41508();
          if (v46 == sub_23DD421C8() && v48 == v49)
          {
            break;
          }

          v51 = sub_23DD42648();

          if (v51)
          {
            goto LABEL_68;
          }

          (*v94)(v0[83], v0[81]);
          v43 += v44;
          if (!--v42)
          {
            goto LABEL_57;
          }
        }

LABEL_68:
        v63 = v0[81];
        v64 = v0[77];
        (*v79)(v64, v0[83], v63);
        (*v84)(v64, 0, 1, v63);
        sub_23DCEFA38(v64, &qword_27E30E5B0, &qword_23DD44B60);
      }

      else
      {
LABEL_57:
        v52 = v0[117];
        v53 = v0[116];
        v54 = v0[77];
        (*v84)(v54, 1, 1, v0[81]);
        sub_23DCEFA38(v54, &qword_27E30E5B0, &qword_23DD44B60);
        sub_23DD41508();
        if (sub_23DD421C8() == v53 && v55 == v52)
        {
        }

        else
        {
          v57 = sub_23DD42648();

          if ((v57 & 1) == 0)
          {
            v87(v0[41], v0[42], v0[39]);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v58 = v80;
            }

            else
            {
              v58 = sub_23DCF22E8(0, v80[2] + 1, 1, v80);
            }

            v60 = v58[2];
            v59 = v58[3];
            if (v60 >= v59 >> 1)
            {
              v58 = sub_23DCF22E8((v59 > 1), v60 + 1, 1, v58);
            }

            v61 = v0[41];
            v62 = v0[39];
            v58[2] = v60 + 1;
            v80 = v58;
            (*v77)(v58 + v78 + v60 * v86, v61, v62);
          }
        }
      }

      v38 = v91 + 1;
      (*v83)(v0[42], v0[39]);
    }

    while (v91 + 1 != v85);

    v65 = v80;
  }

  else
  {

    v65 = MEMORY[0x277D84F90];
  }

  v66 = v0[82];
  v67 = v0[81];
  v68 = v0[35];
  (*(v0[75] + 8))(v0[76], v0[74]);
  v69 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  (*(v66 + 56))(&v68[v69[8]], 1, 1, v67);
  *v68 = v82;
  *(v68 + 1) = 0;
  *(v68 + 2) = 0;
  *(v68 + 3) = v72;
  *(v68 + 4) = v73;
  *(v68 + 5) = v74;
  *(v68 + 6) = v75;
  *&v68[v69[9]] = v89;
  *&v68[v69[10]] = v65;
  (*(*(v69 - 1) + 56))(v68, 0, 1, v69);
  sub_23DD0F3B8("AccountAddViewModel.validateEmailAddress(:) end");

  v70 = v0[1];

  return v70();
}

uint64_t sub_23DD0BC54()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];

  swift_willThrow();

  v60 = v0[130];
  v61 = v0[131];
  v62 = v0[129];
  v58 = v0[128];
  v59 = v0[124];
  if (sub_23DD421E8() < 1)
  {
    v74 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  if (qword_2814FD150 != -1)
  {
    goto LABEL_57;
  }

LABEL_3:
  swift_beginAccess();
  v4 = qword_2814FD158;
  sub_23DCE6098();

  v5 = sub_23DD41418();

  v76 = *(v5 + 16);
  if (v76)
  {
    v6 = 0;
    v7 = v0[82];
    v73 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v8 = (v7 + 8);
    v74 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
LABEL_57:
        swift_once();
        goto LABEL_3;
      }

      v9 = *(v7 + 72);
      v10 = *(v7 + 16);
      v10(v0[85], v5 + v73 + v9 * v6, v0[81]);
      v11 = sub_23DD413F8();
      v13 = v12;

      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v11 & 0xFFFFFFFFFFFFLL;
      }

      if (!v14)
      {
        goto LABEL_14;
      }

      sub_23DD413F8();
      v15 = sub_23DD42218();

      if ((v15 & 1) == 0)
      {
        goto LABEL_14;
      }

      v16 = v0[117];
      v17 = v0[116];
      if (sub_23DD413F8() == v17 && v18 == v16)
      {
        break;
      }

      v19 = sub_23DD42648();

      if (v19)
      {
        goto LABEL_14;
      }

      v10(v0[84], v0[85], v0[81]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_23DCF2310(0, *(v74 + 2) + 1, 1, v74);
      }

      v21 = *(v74 + 2);
      v20 = *(v74 + 3);
      if (v21 >= v20 >> 1)
      {
        v74 = sub_23DCF2310((v20 > 1), v21 + 1, 1, v74);
      }

      v22 = v0[84];
      v23 = v0[81];
      (*v8)(v0[85], v23);
      *(v74 + 2) = v21 + 1;
      (*(v7 + 32))(&v74[v73 + v21 * v9], v22, v23);
      if (v21 == 2)
      {
        goto LABEL_25;
      }

LABEL_15:
      if (v76 == ++v6)
      {
        goto LABEL_25;
      }
    }

LABEL_14:
    (*v8)(v0[85], v0[81]);
    goto LABEL_15;
  }

  v74 = MEMORY[0x277D84F90];
LABEL_25:

LABEL_26:
  v70 = *(v62 + 16);
  if (v70)
  {
    v24 = 0;
    v25 = v0[40];
    v26 = *(v25 + 16);
    v25 += 16;
    v72 = v26;
    v27 = v0[82];
    v64 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v71 = *(v25 + 56);
    v77 = (v27 + 8);
    v65 = (v27 + 32);
    v67 = v27;
    v69 = (v27 + 56);
    v63 = (v25 + 16);
    v68 = (v25 - 8);
    v66 = MEMORY[0x277D84F90];
    do
    {
      v75 = v24;
      v72(v0[42], v62 + v64 + v24 * v71, v0[39]);
      v28 = *(v74 + 2);
      if (v28)
      {
        v29 = &v74[(*(v67 + 80) + 32) & ~*(v67 + 80)];
        v30 = *(v67 + 72);
        v31 = *(v67 + 16);
        while (1)
        {
          v31(v0[83], v29, v0[81]);
          v32 = sub_23DD413F8();
          v34 = v33;
          sub_23DD41508();
          if (v32 == sub_23DD421C8() && v34 == v35)
          {
            break;
          }

          v37 = sub_23DD42648();

          if (v37)
          {
            goto LABEL_49;
          }

          (*v77)(v0[83], v0[81]);
          v29 += v30;
          if (!--v28)
          {
            goto LABEL_38;
          }
        }

LABEL_49:
        v49 = v0[81];
        v50 = v0[77];
        (*v65)(v50, v0[83], v49);
        (*v69)(v50, 0, 1, v49);
        sub_23DCEFA38(v50, &qword_27E30E5B0, &qword_23DD44B60);
      }

      else
      {
LABEL_38:
        v38 = v0[117];
        v39 = v0[116];
        v40 = v0[77];
        (*v69)(v40, 1, 1, v0[81]);
        sub_23DCEFA38(v40, &qword_27E30E5B0, &qword_23DD44B60);
        sub_23DD41508();
        if (sub_23DD421C8() == v39 && v41 == v38)
        {
        }

        else
        {
          v43 = sub_23DD42648();

          if ((v43 & 1) == 0)
          {
            v72(v0[41], v0[42], v0[39]);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v44 = v66;
            }

            else
            {
              v44 = sub_23DCF22E8(0, v66[2] + 1, 1, v66);
            }

            v46 = v44[2];
            v45 = v44[3];
            if (v46 >= v45 >> 1)
            {
              v44 = sub_23DCF22E8((v45 > 1), v46 + 1, 1, v44);
            }

            v47 = v0[41];
            v48 = v0[39];
            v44[2] = v46 + 1;
            v66 = v44;
            (*v63)(v44 + v64 + v46 * v71, v47, v48);
          }
        }
      }

      v24 = v75 + 1;
      (*v68)(v0[42], v0[39]);
    }

    while (v75 + 1 != v70);

    v51 = v66;
  }

  else
  {

    v51 = MEMORY[0x277D84F90];
  }

  v52 = v0[82];
  v53 = v0[81];
  v54 = v0[35];
  (*(v0[75] + 8))(v0[76], v0[74]);
  v55 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  (*(v52 + 56))(&v54[v55[8]], 1, 1, v53);
  *v54 = 0;
  *(v54 + 1) = 0;
  *(v54 + 2) = 0;
  *(v54 + 3) = v58;
  *(v54 + 4) = v60;
  *(v54 + 5) = v59;
  *(v54 + 6) = v61;
  *&v54[v55[9]] = v74;
  *&v54[v55[10]] = v51;
  (*(*(v55 - 1) + 56))(v54, 0, 1, v55);
  sub_23DD0F3B8("AccountAddViewModel.validateEmailAddress(:) end");

  v56 = v0[1];

  return v56();
}

uint64_t sub_23DD0C6A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1C0, &qword_23DD43F60);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      sub_23DCEFAE8(0, &qword_2814FCC50, 0x277CB8F30);
      v9 = sub_23DD42268();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_23DD0C7A4@<X0>(id *a1@<X0>, char *a2@<X8>)
{
  v130 = a1;
  v131 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v117 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v122 = &v112 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v126 = &v112 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v124 = &v112 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v112 - v12;
  v14 = sub_23DD41408();
  v128 = *(v14 - 8);
  v129 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v116 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v127 = &v112 - v17;
  v18 = sub_23DD41658();
  v132 = *(v18 - 8);
  v133 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v121 = &v112 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v120 = &v112 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v119 = &v112 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v123 = &v112 - v29;
  MEMORY[0x28223BE20](v28);
  v31 = &v112 - v30;
  v32 = sub_23DD411D8();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v125 = v2;
  sub_23DD416D8();

  sub_23DD411C8();
  v118 = sub_23DCF4570();
  v36 = sub_23DD42478();
  v38 = v37;
  v39 = *(v33 + 8);
  v39(v35, v32);

  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {

    if (qword_2814FD160 != -1)
    {
      swift_once();
    }

    v49 = v133;
    v50 = __swift_project_value_buffer(v133, qword_2814FD168);
    swift_beginAccess();
    v51 = v132;
    (*(v132 + 16))(v21, v50, v49);
    v52 = sub_23DD42338();
    v53 = sub_23DD41638();
    if (os_log_type_enabled(v53, v52))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_23DCDB000, v53, v52, "AccountAddViewModel.nextStepForContinueButton() found empty username string, returning nil", v54, 2u);
      MEMORY[0x23EEFE6D0](v54, -1, -1);
    }

    (*(v51 + 8))(v21, v49);
    goto LABEL_15;
  }

  v41 = v130;
  if (*v130)
  {
    v42 = *v130;

    if (qword_2814FD160 != -1)
    {
      swift_once();
    }

    v43 = v133;
    v44 = __swift_project_value_buffer(v133, qword_2814FD168);
    swift_beginAccess();
    v45 = v132;
    (*(v132 + 16))(v31, v44, v43);
    v46 = sub_23DD42338();
    v47 = sub_23DD41638();
    if (os_log_type_enabled(v47, v46))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_23DCDB000, v47, v46, "AccountAddViewModel.nextStepForContinueButton() returning .showExisting", v48, 2u);
      MEMORY[0x23EEFE6D0](v48, -1, -1);
    }

    (*(v45 + 8))(v31, v43);
    *v131 = v42;
    type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
    return swift_storeEnumTagMultiPayload();
  }

  v115 = v38;
  v56 = type metadata accessor for AccountAddViewModel.EmailAddressValidationResult(0);
  sub_23DCFD8B0(v41 + *(v56 + 32), v13, &qword_27E30E5B0, &qword_23DD44B60);
  v58 = v128;
  v57 = v129;
  v114 = *(v128 + 48);
  if (v114(v13, 1, v129) == 1)
  {
    sub_23DCEFA38(v13, &qword_27E30E5B0, &qword_23DD44B60);
    v59 = v41[4];
    if (v59)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

  v70 = v127;
  v113 = *(v58 + 32);
  v113();
  if (sub_23DD413F8() == v36 && v71 == v115)
  {
  }

  else
  {
    v72 = sub_23DD42648();

    if ((v72 & 1) == 0)
    {
      v58 = v128;
      v57 = v129;
      (*(v128 + 8))(v70, v129);
      v59 = v41[4];
      if (v59)
      {
LABEL_19:
        v60 = v41[3];
        v61 = v60 == 0xD000000000000019 && v59 == 0x800000023DD4BC10;
        v62 = v61;
        LODWORD(v130) = v62;
        if (v61 || (sub_23DD42648() & 1) != 0)
        {

LABEL_28:
          v64 = v132;
          v63 = v133;
          if (v130 & 1) != 0 || (sub_23DD42648())
          {
            if (qword_2814FD160 != -1)
            {
              swift_once();
            }

            v65 = __swift_project_value_buffer(v63, qword_2814FD168);
            swift_beginAccess();
            v66 = v120;
            (*(v64 + 16))(v120, v65, v63);
            v67 = sub_23DD42338();
            v68 = sub_23DD41638();
            if (os_log_type_enabled(v68, v67))
            {
              v69 = swift_slowAlloc();
              *v69 = 0;
              _os_log_impl(&dword_23DCDB000, v68, v67, "AccountAddViewModel.nextStepForContinueButton() returning .showOtherSheet because we don't know what type", v69, 2u);
              MEMORY[0x23EEFE6D0](v69, -1, -1);
            }

            (*(v64 + 8))(v66, v63);
            type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
            return swift_storeEnumTagMultiPayload();
          }

          goto LABEL_49;
        }

        v91 = v41[6];
        if (!v91)
        {

          v98 = v122;
          (*(v128 + 56))(v122, 1, 1, v57);
          v97 = v98;
          goto LABEL_58;
        }

        v134 = v41[5];
        v135 = v91;
        sub_23DD411C8();
        v92 = sub_23DD42478();
        v94 = v93;
        v39(v35, v32);
        v95 = v122;
        sub_23DD0D798(v60, v59, v92, v94, v122);
        v96 = v129;

        if (v114(v95, 1, v96) == 1)
        {

          v97 = v95;
LABEL_58:
          sub_23DCEFA38(v97, &qword_27E30E5B0, &qword_23DD44B60);
          goto LABEL_28;
        }

        v99 = v128;
        v100 = *(v128 + 32);
        v101 = v116;
        v100(v116, v95, v96);
        v103 = v132;
        v102 = v133;
        if (qword_2814FD160 != -1)
        {
          swift_once();
        }

        v104 = __swift_project_value_buffer(v102, qword_2814FD168);
        swift_beginAccess();
        (*(v103 + 16))(v119, v104, v102);
        v105 = sub_23DD42338();
        v106 = sub_23DD41638();
        if (os_log_type_enabled(v106, v105))
        {
          v107 = swift_slowAlloc();
          *v107 = 0;
          _os_log_impl(&dword_23DCDB000, v106, v105, "AccountAddViewModel.nextStepForContinueButton() returning .loginSuggestion for resolver found type", v107, 2u);
          MEMORY[0x23EEFE6D0](v107, -1, -1);
        }

        (*(v103 + 8))(v119, v102);
        v108 = *(v125 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel);
        v109 = v129;
        if (v108)
        {
          *(v108 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism) = 1;
        }

        v110 = v126;
        (*(v99 + 16))(v126, v101, v109);
        (*(v99 + 56))(v110, 0, 1, v109);
        v111 = v117;
        sub_23DD0DA9C(v110, v117);
        sub_23DCEFA38(v110, &qword_27E30E5B0, &qword_23DD44B60);
        result = (v114)(v111, 1, v109);
        if (result != 1)
        {
          (*(v99 + 8))(v101, v109);

          v100(v131, v111, v109);
          goto LABEL_15;
        }

        goto LABEL_68;
      }

LABEL_48:

      v85 = v122;
      (*(v58 + 56))(v122, 1, 1, v57);
      sub_23DCEFA38(v85, &qword_27E30E5B0, &qword_23DD44B60);
      v64 = v132;
      v63 = v133;
LABEL_49:
      if (qword_2814FD160 != -1)
      {
        swift_once();
      }

      v86 = __swift_project_value_buffer(v63, qword_2814FD168);
      swift_beginAccess();
      v87 = v121;
      (*(v64 + 16))(v121, v86, v63);
      v88 = sub_23DD42338();
      v89 = sub_23DD41638();
      if (os_log_type_enabled(v89, v88))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_23DCDB000, v89, v88, "AccountAddViewModel.nextStepForContinueButton() returning .none because we don't know what else to do, probably an error is showing", v90, 2u);
        MEMORY[0x23EEFE6D0](v90, -1, -1);
      }

      (*(v64 + 8))(v87, v63);
      goto LABEL_15;
    }
  }

  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v73 = v133;
  v74 = __swift_project_value_buffer(v133, qword_2814FD168);
  swift_beginAccess();
  v75 = v132;
  v76 = v123;
  (*(v132 + 16))(v123, v74, v73);
  v77 = sub_23DD42338();
  v78 = sub_23DD41638();
  if (os_log_type_enabled(v78, v77))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_23DCDB000, v78, v77, "AccountAddViewModel.nextStepForContinueButton() returning .loginSuggestion for override", v79, 2u);
    MEMORY[0x23EEFE6D0](v79, -1, -1);
  }

  (*(v75 + 8))(v76, v73);
  v80 = *(v125 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel);
  if (v80)
  {
    *(v80 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism) = 5;
  }

  v81 = v128;
  v82 = v129;
  v83 = v126;
  (*(v128 + 16))(v126, v70, v129);
  (*(v81 + 56))(v83, 0, 1, v82);
  v84 = v124;
  sub_23DD0DA9C(v83, v124);
  sub_23DCEFA38(v83, &qword_27E30E5B0, &qword_23DD44B60);
  result = (v114)(v84, 1, v82);
  if (result != 1)
  {
    (*(v81 + 8))(v70, v82);

    (v113)(v131, v84, v82);
LABEL_15:
    type metadata accessor for AccountAddViewModel.ContinueButtonNextStep(0);
    return swift_storeEnumTagMultiPayload();
  }

  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_23DD0D798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v36 = a1;
  v37 = a5;
  v7 = sub_23DD412D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAD8, &qword_23DD45F08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23DD44160;
  *(inited + 32) = sub_23DD413C8();
  *(inited + 40) = v12;
  sub_23DD412C8();
  v13 = sub_23DD412B8();
  v15 = v14;
  v16 = v7;
  v17 = a3;
  (*(v8 + 8))(v10, v16);
  v18 = v35;
  v19 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  *(inited + 80) = sub_23DD413B8();
  *(inited + 88) = v20;
  *(inited + 120) = v19;
  v21 = v36;
  *(inited + 96) = v36;
  *(inited + 104) = a2;

  *(inited + 128) = sub_23DD413D8();
  *(inited + 136) = v22;
  *(inited + 168) = v19;
  *(inited + 144) = a3;
  *(inited + 152) = v18;

  v23 = sub_23DD29A38(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAD0, &qword_23DD45F00);
  swift_arrayDestroy();
  if (sub_23DD42178() == v21 && v24 == a2)
  {
  }

  else
  {
    v25 = sub_23DD42648();

    if ((v25 & 1) == 0)
    {
      v26 = sub_23DD413A8();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAE0, &qword_23DD45F10);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_23DD43570;
      *(v29 + 32) = sub_23DD42178();
      *(v29 + 40) = v30;
      *(v29 + 48) = v17;
      *(v29 + 56) = v18;

      v31 = sub_23DD29B68(v29);
      swift_setDeallocating();
      sub_23DCEFA38(v29 + 32, &qword_27E30EAE8, &qword_23DD45F18);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EAF0, &qword_23DD45F20);
      *&v40 = v31;
      sub_23DD2AD18(&v40, v39);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = v23;
      sub_23DD285BC(v39, v26, v28, isUniquelyReferenced_nonNull_native);
    }
  }

  return sub_23DD41398();
}

uint64_t sub_23DD0DA9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - v5;
  v7 = sub_23DD41408();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DCFD8B0(a1, v6, &qword_27E30E5B0, &qword_23DD44B60);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    v43 = *(v8 + 32);
    v43(v10, v6, v7);
    v12 = sub_23DD41388();
    v14 = v13;
    if (v12 == sub_23DD42178() && v14 == v15)
    {
    }

    else
    {
      v17 = sub_23DD42648();

      if ((v17 & 1) == 0)
      {
        v18 = sub_23DD42178();
        v20 = v19;
        v21 = sub_23DD41378();
        if (*(v21 + 16))
        {
          v22 = sub_23DCEA154(v18, v20);
          v24 = v23;

          if (v24)
          {
            sub_23DCEFBF0(*(v21 + 56) + 32 * v22, &v45);

            if (swift_dynamicCast())
            {
              v26 = v44[0];
              v25 = v44[1];
              v27 = sub_23DD413F8();
              if (v25)
              {
                if (v26 == v27 && v25 == v28)
                {

LABEL_23:
                  v43(a2, v10, v7);
                  v11 = 0;
                  return (*(v8 + 56))(a2, v11, 1, v7);
                }

                v41 = sub_23DD42648();

                if (v41)
                {
                  goto LABEL_23;
                }

LABEL_21:
                v33 = MEMORY[0x277D837D0];
                v34 = sub_23DD42178();
                v36 = v35;
                v37 = sub_23DD413F8();
                v46 = v33;
                *&v45 = v37;
                *(&v45 + 1) = v38;
                v39 = sub_23DD41368();
                sub_23DD00478(&v45, v34, v36);
                v39(v44, 0);
                goto LABEL_23;
              }

LABEL_20:

              goto LABEL_21;
            }

LABEL_19:
            sub_23DD413F8();
            goto LABEL_20;
          }
        }

        else
        {
        }

        goto LABEL_19;
      }
    }

    v29 = sub_23DD42178();
    v31 = v30;
    v32 = sub_23DD41368();
    sub_23DD279C8(v29, v31, &v45);

    sub_23DCEFA38(&v45, &qword_27E30E1F0, &unk_23DD43F80);
    v32(v44, 0);
    goto LABEL_23;
  }

  sub_23DCEFA38(v6, &qword_27E30E5B0, &qword_23DD44B60);
  v11 = 1;
  return (*(v8 + 56))(a2, v11, 1, v7);
}

void sub_23DD0DECC(void *a1)
{
  v143 = sub_23DD41258();
  v142 = *(v143 - 8);
  v2 = MEMORY[0x28223BE20](v143);
  v134 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  *&v136 = &v134 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA90, &qword_23DD45D40);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v135 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v138 = &v134 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v134 - v11;
  MEMORY[0x28223BE20](v10);
  v145 = &v134 - v13;
  v14 = sub_23DD41658();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v139 = &v134 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v137 = &v134 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v134 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v134 - v26;
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v14, qword_2814FD168);
  swift_beginAccess();
  v29 = *(v15 + 16);
  v148 = v28;
  v147 = v15 + 16;
  v146 = v29;
  v29(v27, v28, v14);
  v30 = sub_23DD42338();
  v31 = sub_23DD41638();
  if (os_log_type_enabled(v31, v30))
  {
    v32 = v15;
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_23DCDB000, v31, v30, "AccountAddViewModel.openExistingAccountPressed(:) begin", v33, 2u);
    v34 = v33;
    v15 = v32;
    MEMORY[0x23EEFE6D0](v34, -1, -1);
  }

  v37 = *(v15 + 8);
  v35 = v15 + 8;
  v36 = v37;
  v37(v27, v14);
  v38 = [a1 displayAccount];
  if (!v38)
  {
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v39 = v38;
  v40 = [v38 identifier];

  v144 = v40;
  if (!v40)
  {
    v146(v18, v148, v14);
    v49 = sub_23DD42338();
    v50 = sub_23DD41638();
    if (os_log_type_enabled(v50, v49))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_23DCDB000, v50, v49, "AccountAddViewModel.openExistingAccountPressed(:) has no identifier", v51, 2u);
      MEMORY[0x23EEFE6D0](v51, -1, -1);
    }

    v36(v18, v14);
    goto LABEL_70;
  }

  v41 = [a1 accountType];
  if (!v41)
  {
    goto LABEL_99;
  }

  v42 = v41;
  v43 = [v41 identifier];

  if (!v43)
  {
    sub_23DD42178();
    goto LABEL_17;
  }

  v44 = sub_23DD42178();
  v46 = v45;

  v47 = sub_23DD42178();
  if (!v46)
  {
LABEL_17:

LABEL_18:
    v52 = 0;
    goto LABEL_19;
  }

  if (v44 == v47 && v46 == v48)
  {

    goto LABEL_24;
  }

  v60 = sub_23DD42648();

  v52 = 0;
  if (v60)
  {
LABEL_24:
    v61 = sub_23DD42138();
    v62 = [a1 accountPropertyForKey_];

    if (v62)
    {
      sub_23DD424A8();
      swift_unknownObjectRelease();
    }

    else
    {
      v152 = 0u;
      v151 = 0u;
    }

    v154 = v152;
    aBlock = v151;
    if (*(&v152 + 1))
    {
      if (swift_dynamicCast())
      {
        if (v149 == 0x7972616D697270 && v150 == 0xE700000000000000)
        {

          v52 = 1;
        }

        else
        {
          v52 = sub_23DD42648();
        }

        goto LABEL_19;
      }
    }

    else
    {
      sub_23DCEFA38(&aBlock, &qword_27E30E1F0, &unk_23DD43F80);
    }

    goto LABEL_18;
  }

LABEL_19:
  v53 = v145;
  (*(v142 + 56))(v145, 1, 1, v143);
  v140 = v35;
  if (v52)
  {
    sub_23DD41248();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23DD416D8();

    v54 = *(&aBlock + 1);
    if (*(&aBlock + 1))
    {
      v55 = aBlock;
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_23DD42538();
      MEMORY[0x23EEFDA30](0xD00000000000003ALL, 0x800000023DD4BB40);
      v56 = [v144 description];
      v57 = sub_23DD42178();
      v59 = v58;

      MEMORY[0x23EEFDA30](v57, v59);

      MEMORY[0x23EEFDA30](0xD000000000000023, 0x800000023DD4BBA0);
      MEMORY[0x23EEFDA30](v55, v54);
    }

    else
    {
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      sub_23DD42538();
      MEMORY[0x23EEFDA30](0xD00000000000003ALL, 0x800000023DD4BB40);
      v63 = [v144 description];
      v64 = sub_23DD42178();
      v66 = v65;

      MEMORY[0x23EEFDA30](v64, v66);
    }

    sub_23DD41248();

    v53 = v145;
  }

  sub_23DCEFA38(v53, &qword_27E30EA90, &qword_23DD45D40);
  sub_23DCFD790(v12, v53, &qword_27E30EA90, &qword_23DD45D40);
  v67 = [objc_opt_self() mainBundle];
  v68 = [v67 bundleIdentifier];

  if (v68)
  {
    v69 = sub_23DD42178();
    v71 = v70;

    if (v69 == 0xD000000000000014 && 0x800000023DD4A5A0 == v71)
    {

LABEL_33:
      v146(v25, v148, v14);
      v72 = sub_23DD42338();
      v73 = sub_23DD41638();
      if (os_log_type_enabled(v73, v72))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&dword_23DCDB000, v73, v72, "AccountAddViewModel.openExistingAccountPressed(:) url based flow for iOS Mail", v74, 2u);
        MEMORY[0x23EEFE6D0](v74, -1, -1);
      }

      v36(v25, v14);
      v75 = v138;
      sub_23DCFD8B0(v53, v138, &qword_27E30EA90, &qword_23DD45D40);
      v76 = v142;
      v77 = v143;
      if ((*(v142 + 48))(v75, 1, v143) == 1)
      {
        sub_23DCEFA38(v75, &qword_27E30EA90, &qword_23DD45D40);
        v78 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost;
        v79 = *&v141[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost];
        if (v79)
        {
          v80 = [v79 traitCollection];
          if (v80)
          {
            v81 = v80;
            if ([v80 acuis_statefulNavigation])
            {
              [v81 acuis:1 popLastItemsFromStack:?];

LABEL_66:
              goto LABEL_68;
            }
          }

          v107 = *&v141[v78];
          if (v107)
          {
            v108 = [v107 navigationController];
            if (v108)
            {
              v81 = v108;
              v109 = [v108 popViewControllerAnimated_];

              goto LABEL_66;
            }

            goto LABEL_71;
          }
        }

        goto LABEL_67;
      }

      v82 = v136;
      (*(v76 + 32))(v136, v75, v77);
      v83 = [objc_opt_self() defaultWorkspace];
      if (v83)
      {
        v84 = v83;
        v85 = sub_23DD41228();
        sub_23DD29A38(MEMORY[0x277D84F90]);
        v86 = sub_23DD42108();

        [v84 openSensitiveURL:v85 withOptions:v86];

        (*(v76 + 8))(v82, v77);
LABEL_68:
        v99 = v53;
        goto LABEL_69;
      }

      goto LABEL_100;
    }

    v87 = sub_23DD42648();

    if ((v87 | v52))
    {
      goto LABEL_33;
    }
  }

  else if (v52)
  {
    goto LABEL_33;
  }

  v88 = v137;
  v146(v137, v148, v14);
  v89 = sub_23DD42338();
  v90 = sub_23DD41638();
  if (os_log_type_enabled(v90, v89))
  {
    v91 = swift_slowAlloc();
    *v91 = 0;
    _os_log_impl(&dword_23DCDB000, v90, v89, "AccountAddViewModel.openExistingAccountPressed(:) Preferences app flow (fragile)", v91, 2u);
    MEMORY[0x23EEFE6D0](v91, -1, -1);
  }

  v36(v88, v14);
  v92 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost;
  v93 = *&v141[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost];
  if (!v93)
  {
    goto LABEL_67;
  }

  v94 = [v93 traitCollection];
  if (!v94)
  {
LABEL_58:
    v100 = *&v141[v92];
    if (v100)
    {
      v101 = [v100 navigationController];
      if (v101)
      {
        v102 = v101;

        v135 = v102;
        v103 = [v102 topViewController];
        if (v103)
        {
          v104 = v103;
          v105 = [v103 childViewControllers];

          sub_23DCEFAE8(0, &qword_27E30EAC0, 0x277D75D28);
          v106 = sub_23DD42268();
        }

        else
        {
          v106 = MEMORY[0x277D84F90];
        }

        if (v106 >> 62)
        {
          goto LABEL_94;
        }

        for (i = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23DD425C8())
        {
          v117 = 0;
          v143 = v106 & 0xC000000000000001;
          v142 = v106 & 0xFFFFFFFFFFFFFF8;
          v141 = "Settings.InternetAccounts/";
          v137 = &v154;
          v136 = xmmword_23DD43570;
          v138 = v106;
          while (1)
          {
            if (v143)
            {
              v124 = MEMORY[0x23EEFDD80](v117, v106);
            }

            else
            {
              if (v117 >= *(v142 + 16))
              {
                goto LABEL_93;
              }

              v124 = *(v106 + 8 * v117 + 32);
            }

            v123 = v124;
            v125 = v117 + 1;
            if (__OFADD__(v117, 1))
            {
              break;
            }

            v126 = sub_23DD42138();
            v127 = NSClassFromString(v126);

            if (!v127)
            {
              goto LABEL_98;
            }

            if ([v123 isKindOfClass_])
            {
              v128 = i;
              objc_opt_self();
              v129 = swift_dynamicCastObjCClass();
              if (v129)
              {
                v130 = v129;
                v146(v139, v148, v14);
                v131 = sub_23DD42338();
                v132 = sub_23DD41638();
                if (os_log_type_enabled(v132, v131))
                {
                  v133 = swift_slowAlloc();
                  *v133 = 0;
                  _os_log_impl(&dword_23DCDB000, v132, v131, "AccountAddViewModel.openExistingAccountPressed(:) found settings controller, yay", v133, 2u);
                  MEMORY[0x23EEFE6D0](v133, -1, -1);
                }

                v36(v139, v14);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA98, &qword_23DD45D48);
                inited = swift_initStackObject();
                *(inited + 16) = v136;
                *&aBlock = 1752457584;
                *(&aBlock + 1) = 0xE400000000000000;
                sub_23DD424F8();
                *(inited + 96) = sub_23DCEFAE8(0, &qword_27E30E0E0, 0x277CCACA8);
                v119 = v144;
                *(inited + 72) = v144;
                v120 = v119;
                sub_23DD298FC(inited);
                swift_setDeallocating();
                sub_23DCEFA38(inited + 32, &qword_27E30EAA0, &unk_23DD45D50);
                v121 = sub_23DD42108();

                v155 = nullsub_1;
                v156 = 0;
                *&aBlock = MEMORY[0x277D85DD0];
                *(&aBlock + 1) = 1107296256;
                *&v154 = sub_23DCE4C84;
                *(&v154 + 1) = &block_descriptor_502;
                v122 = _Block_copy(&aBlock);
                [v130 handleURL:v121 withCompletion:v122];
                _Block_release(v122);

                v123 = v121;
                v53 = v145;
              }

              i = v128;
              v106 = v138;
            }

            ++v117;
            if (v125 == i)
            {
              goto LABEL_95;
            }
          }

          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          ;
        }

LABEL_95:
        sub_23DCEFA38(v53, &qword_27E30EA90, &qword_23DD45D40);

        v110 = &v157;
        goto LABEL_96;
      }

LABEL_71:
      sub_23DCEFA38(v53, &qword_27E30EA90, &qword_23DD45D40);
      v110 = &v158;
LABEL_96:

      goto LABEL_70;
    }

LABEL_67:

    goto LABEL_68;
  }

  v95 = v94;
  if (![v94 acuis_statefulNavigation])
  {

    goto LABEL_58;
  }

  [v95 acuis:1 popLastItemsFromStack:?];
  v96 = v135;
  sub_23DCFD8B0(v53, v135, &qword_27E30EA90, &qword_23DD45D40);
  v97 = v142;
  v98 = v143;
  if ((*(v142 + 48))(v96, 1, v143) == 1)
  {
    sub_23DCEFA38(v53, &qword_27E30EA90, &qword_23DD45D40);

    v99 = v96;
LABEL_69:
    sub_23DCEFA38(v99, &qword_27E30EA90, &qword_23DD45D40);
LABEL_70:
    sub_23DD0F3B8("AccountAddViewModel.openExistingAccountPressed(:) end");
    return;
  }

  v111 = v134;
  (*(v97 + 32))(v134, v96, v98);
  v112 = [objc_opt_self() defaultWorkspace];
  if (v112)
  {
    v113 = v112;
    v114 = sub_23DD41228();
    sub_23DD29A38(MEMORY[0x277D84F90]);
    v115 = sub_23DD42108();

    [v113 openSensitiveURL:v114 withOptions:v115];

    (*(v97 + 8))(v111, v98);
    goto LABEL_68;
  }

LABEL_101:
  __break(1u);
}

uint64_t sub_23DD0F3B8(const char *a1)
{
  v2 = sub_23DD41658();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2814FD168);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_23DD42338();
  v8 = sub_23DD41638();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23DCDB000, v8, v7, a1, v9, 2u);
    MEMORY[0x23EEFE6D0](v9, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_23DD0F560()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = 0;
  v7 = v0;
  sub_23DD416E8();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v15) = 0;
  v8 = v7;
  sub_23DD416E8();
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = 0;
  v16 = 0;
  v9 = v8;
  sub_23DD416E8();
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = 0;
  v16 = 0xE000000000000000;
  v10 = v9;
  sub_23DD416E8();
  v11 = sub_23DD41408();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DCFD8B0(v6, v4, &qword_27E30E5B0, &qword_23DD44B60);
  v12 = v10;
  sub_23DD416E8();
  sub_23DCEFA38(v6, &qword_27E30E5B0, &qword_23DD44B60);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v15) = 0;
  v13 = v12;
  sub_23DD416E8();
  return sub_23DD01210();
}

uint64_t sub_23DD0F824(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v47 = sub_23DD42068();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v51 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23DD42098();
  v50 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v49 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23DD41658();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v53 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v44 - v15;
  if (a2)
  {
    v52 = a1;
    if (qword_2814FD160 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v11, qword_2814FD168);
    swift_beginAccess();
    (*(v12 + 16))(v16, v17, v11);
    v18 = sub_23DD42338();
    v19 = v12;
    v20 = sub_23DD41638();
    v46 = v18;
    if (os_log_type_enabled(v20, v18))
    {
      v21 = swift_slowAlloc();
      v45 = a4;
      v22 = v21;
      v23 = swift_slowAlloc();
      aBlock[0] = v23;
      *v22 = 136315138;
      *&v56 = a2;
      v24 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E468, &qword_23DD444B8);
      v25 = sub_23DD42188();
      v27 = v9;
      v28 = sub_23DD2731C(v25, v26, aBlock);

      *(v22 + 4) = v28;
      v9 = v27;
      _os_log_impl(&dword_23DCDB000, v20, v46, "AccountAddViewModel.ratchet(for:completion:) error from ratchet: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x23EEFE6D0](v23, -1, -1);
      v29 = v22;
      a4 = v45;
      MEMORY[0x23EEFE6D0](v29, -1, -1);
    }

    (*(v19 + 8))(v16, v11);
    v12 = v19;
    a1 = v52;
    a3(0);
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v55 = 1;
  sub_23DD424F8();
  if (!*(a1 + 16) || (v30 = sub_23DCEA1CC(aBlock), (v31 & 1) == 0))
  {
    sub_23DCEF8B0(aBlock);
LABEL_13:
    v56 = 0u;
    v57 = 0u;
    goto LABEL_14;
  }

  sub_23DCEFBF0(*(a1 + 56) + 32 * v30, &v56);
  sub_23DCEF8B0(aBlock);
  if (*(&v57 + 1))
  {
    sub_23DCEFA38(&v56, &qword_27E30E1F0, &unk_23DD43F80);
    sub_23DCEFAE8(0, &unk_2814FCC58, 0x277D85C78);
    v32 = sub_23DD42388();
    v33 = swift_allocObject();
    *(v33 + 16) = a3;
    *(v33 + 24) = a4;
    aBlock[4] = sub_23DD2ACF0;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23DCE4C84;
    aBlock[3] = &block_descriptor_445;
    v34 = _Block_copy(aBlock);

    v35 = v49;
    sub_23DD42088();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23DD03710(&qword_2814FCCA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E0B8, &qword_23DD444B0);
    sub_23DCEF9F0(&qword_2814FCC90, &unk_27E30E0B8, &qword_23DD444B0, MEMORY[0x277D83970]);
    v36 = v51;
    v37 = v47;
    sub_23DD424B8();
    MEMORY[0x23EEFDBD0](0, v35, v36, v34);
    _Block_release(v34);

    (*(v48 + 8))(v36, v37);
    return (*(v50 + 8))(v35, v9);
  }

LABEL_14:
  sub_23DCEFA38(&v56, &qword_27E30E1F0, &unk_23DD43F80);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v11, qword_2814FD168);
  swift_beginAccess();
  v40 = v53;
  (*(v12 + 16))(v53, v39, v11);
  v41 = sub_23DD42338();
  v42 = sub_23DD41638();
  if (os_log_type_enabled(v42, v41))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_23DCDB000, v42, v41, "AccountAddViewModel.ratchet(for:completion:) ratchet failure", v43, 2u);
    MEMORY[0x23EEFE6D0](v43, -1, -1);
  }

  (*(v12 + 8))(v40, v11);
  return (a3)(0);
}

uint64_t sub_23DD0FF54(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_23DD42118();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_23DD10000(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23DD41658();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost);
  if (v12)
  {
    v18 = v12;
    sub_23DD10220(a1, a2, a3, v18);
    v13 = v18;
  }

  else
  {
    if (qword_2814FD160 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v8, qword_2814FD168);
    swift_beginAccess();
    (*(v9 + 16))(v11, v14, v8);
    v15 = sub_23DD42348();
    v16 = sub_23DD41638();
    if (os_log_type_enabled(v16, v15))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23DCDB000, v16, v15, "AccountAddViewModel.showAddSheet(for:suggestion:) is missing a psListControllerHost", v17, 2u);
      MEMORY[0x23EEFE6D0](v17, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    sub_23DD0F560();
  }
}

uint64_t sub_23DD10220(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v53 = a4;
  v54 = a1;
  v55 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v49 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v50 = v7;
  v51 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v44 - v8;
  v10 = sub_23DD41658();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_2814FD168);
  swift_beginAccess();
  v47 = *(v11 + 16);
  v47(v16, v17, v10);
  v18 = sub_23DD42338();
  v19 = sub_23DD41638();
  v20 = os_log_type_enabled(v19, v18);
  v48 = v11;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v46 = v9;
    v22 = v21;
    v23 = swift_slowAlloc();
    v45 = a3;
    v24 = v11;
    v25 = v23;
    v56 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_23DD2731C(v54, v55, &v56);
    _os_log_impl(&dword_23DCDB000, v19, v18, "AccountAddViewModel.showAddSheet(for:suggestion:host:) begin for type %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x23EEFE6D0](v25, -1, -1);
    v26 = v22;
    v9 = v46;
    MEMORY[0x23EEFE6D0](v26, -1, -1);

    v27 = v24;
    a3 = v45;
  }

  else
  {

    v27 = v11;
  }

  v28 = *(v27 + 8);
  v28(v16, v10);
  sub_23DD0DA9C(a3, v9);
  v47(v14, v17, v10);
  v29 = sub_23DD42338();
  v30 = sub_23DD41638();
  if (os_log_type_enabled(v30, v29))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_23DCDB000, v30, v29, "AccountAddViewModel.showAddSheet(for:suggestion:host:) calling ratchet", v31, 2u);
    MEMORY[0x23EEFE6D0](v31, -1, -1);
  }

  v28(v14, v10);
  v32 = v51;
  sub_23DCFD8B0(v9, v51, &qword_27E30E5B0, &qword_23DD44B60);
  v33 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v34 = (v50 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v52;
  v37 = v9;
  v39 = v54;
  v38 = v55;
  v35[2] = v52;
  v35[3] = v39;
  v35[4] = v38;
  sub_23DCFD790(v32, v35 + v33, &qword_27E30E5B0, &qword_23DD44B60);
  v40 = v53;
  *(v35 + v34) = v53;

  v41 = v36;
  v42 = v40;
  sub_23DD2A1CC(v39, v38, sub_23DD29E44, v35);

  return sub_23DCEFA38(v37, &qword_27E30E5B0, &qword_23DD44B60);
}

void sub_23DD10698(char a1, uint64_t a2, uint64_t a3, id a4, uint64_t a5, void *a6)
{
  v74 = a6;
  v70 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  MEMORY[0x28223BE20](v10 - 8);
  v71 = &v66 - v11;
  v12 = sub_23DD41408();
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v68 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v66 - v15;
  v16 = sub_23DD41658();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v16, qword_2814FD168);
  swift_beginAccess();
  (*(v17 + 16))(v19, v20, v16);
  v21 = sub_23DD42338();
  v22 = sub_23DD41638();
  if (os_log_type_enabled(v22, v21))
  {
    v23 = swift_slowAlloc();
    v67 = a4;
    v24 = v23;
    v25 = swift_slowAlloc();
    v75 = a3;
    aBlock = v25;
    v26 = v25;
    *v24 = 136315138;
    if (a1)
    {
      v27 = 5457241;
    }

    else
    {
      v27 = 20302;
    }

    if (a1)
    {
      v28 = 0xE300000000000000;
    }

    else
    {
      v28 = 0xE200000000000000;
    }

    v29 = sub_23DD2731C(v27, v28, &aBlock);
    v66 = v16;
    v30 = a1;
    v31 = a2;
    v32 = v29;

    *(v24 + 4) = v32;
    a2 = v31;
    _os_log_impl(&dword_23DCDB000, v22, v21, "AccountAddViewModel.showAddSheet(for:suggestion:host:) ratchet success %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    v33 = v26;
    a3 = v75;
    MEMORY[0x23EEFE6D0](v33, -1, -1);
    v34 = v24;
    a4 = v67;
    MEMORY[0x23EEFE6D0](v34, -1, -1);

    v35 = (*(v17 + 8))(v19, v66);
    if ((v30 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {

    v35 = (*(v17 + 8))(v19, v16);
    if ((a1 & 1) == 0)
    {
LABEL_22:
      sub_23DD0F560();
      return;
    }
  }

  aBlock = a3;
  v77 = a4;
  MEMORY[0x28223BE20](v35);
  *(&v66 - 2) = &aBlock;
  if (sub_23DCEA650(sub_23DD2CE5C, (&v66 - 4), v36))
  {
    v37 = sub_23DD42178();
    v39 = v38;
    v40 = sub_23DD2ADE0(a3, a4);
  }

  else
  {

    v40 = 0;
    v37 = a3;
    v39 = a4;
  }

  if (qword_2814FD150 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v41 = qword_2814FD158;
  v42 = sub_23DCE628C();

  v43 = sub_23DD42138();
  v44 = [v42 accountTypeWithAccountTypeIdentifier_];

  if (!v44)
  {

    goto LABEL_22;
  }

  v67 = v44;
  v75 = a3;
  v45 = v71;
  sub_23DCFD8B0(v70, v71, &qword_27E30E5B0, &qword_23DD44B60);
  v46 = v72;
  v47 = v73;
  if ((*(v72 + 48))(v45, 1, v73) == 1)
  {
    sub_23DCEFA38(v45, &qword_27E30E5B0, &qword_23DD44B60);
    v48 = 0;
  }

  else
  {
    v49 = *(v46 + 32);
    v70 = v37;
    v50 = v69;
    v49(v69, v45, v47);
    sub_23DCEFAE8(0, &qword_2814FCC50, 0x277CB8F30);
    (*(v46 + 16))(v68, v50, v47);
    v51 = v67;
    v48 = sub_23DD42408();
    sub_23DCEFAE8(0, &qword_27E30E280, 0x277CCABB0);
    v52 = sub_23DD423D8();
    v53 = sub_23DD42138();
    [v48 setAccountProperty:v52 forKey:v53];

    v54 = v50;
    v37 = v70;
    (*(v46 + 8))(v54, v47);
  }

  if (*(a2 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel))
  {

    sub_23DCFE120(v75, a4);
  }

  v55 = [objc_allocWithZone(ACUISAddAccountHelper) init];
  v56 = *(a2 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper);
  *(a2 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper) = v55;
  v57 = v55;

  v58 = sub_23DD42138();
  if (v40)
  {
    v59 = sub_23DD42108();
  }

  else
  {
    v59 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  v60 = aBlock == 1;
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  v62[2] = v61;
  v62[3] = v37;
  v63 = v74;
  v62[4] = v39;
  v62[5] = v63;
  v80 = sub_23DD2ADD4;
  v81 = v62;
  aBlock = MEMORY[0x277D85DD0];
  v77 = 1107296256;
  v78 = sub_23DD11780;
  v79 = &block_descriptor_459;
  v64 = _Block_copy(&aBlock);
  v65 = v63;

  [v57 showAddSheetForAccountType:v58 onController:v65 withAccount:v48 configDictionary:v59 forceMail:v60 completion:v64];

  _Block_release(v64);
}

uint64_t sub_23DD10EF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v31 = a2;
  v32 = a6;
  v30 = a5;
  v33 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  v12 = sub_23DD41658();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_2814FD168);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_23DD42338();
  v18 = sub_23DD41638();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_23DCDB000, v18, v17, "AccountAddViewModel.showAddSheet(for:suggestion:host:) calling setupSheetCompletion", v19, 2u);
    MEMORY[0x23EEFE6D0](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v20 = sub_23DD422E8();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = a7;
  v24 = v31;
  v26 = v32;
  v25 = v33;
  v23[6] = v30;
  v23[7] = v26;
  v23[8] = v25;
  v23[9] = v24;
  v23[10] = a3;

  v27 = a7;

  v28 = v25;
  sub_23DD03C3C(0, 0, v11, &unk_23DD45DC0, v23);

  return sub_23DCEFA38(v11, &qword_27E30EA40, &qword_23DD45C78);
}

uint64_t sub_23DD1121C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = v12;
  v8[14] = v13;
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = sub_23DD41658();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23DD112F0, 0, 0);
}

uint64_t sub_23DD112F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v2 = v0[11];
    v3 = swift_task_alloc();
    v0[19] = v3;
    *v3 = v0;
    v3[1] = sub_23DD11504;
    v4 = v0[13];
    v5 = v0[14];
    v6 = v0[12];
    v8 = v0[9];
    v7 = v0[10];

    return sub_23DD11834(v8, v7, v2, v6, v4, v5);
  }

  else
  {
    if (qword_2814FD160 != -1)
    {
      swift_once();
    }

    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[15];
    v13 = __swift_project_value_buffer(v12, qword_2814FD168);
    swift_beginAccess();
    (*(v11 + 16))(v10, v13, v12);
    v14 = sub_23DD42338();
    v15 = sub_23DD41638();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_23DCDB000, v15, v14, "AccountAddViewModel.showAddSheet(for:suggestion:host:) end", v16, 2u);
      MEMORY[0x23EEFE6D0](v16, -1, -1);
    }

    v18 = v0[16];
    v17 = v0[17];
    v19 = v0[15];

    (*(v18 + 8))(v17, v19);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_23DD11504()
{
  v1 = *(*v0 + 144);

  return MEMORY[0x2822009F8](sub_23DD11618, 0, 0);
}

uint64_t sub_23DD11618()
{
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = __swift_project_value_buffer(v3, qword_2814FD168);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_23DD42338();
  v6 = sub_23DD41638();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23DCDB000, v6, v5, "AccountAddViewModel.showAddSheet(for:suggestion:host:) end", v7, 2u);
    MEMORY[0x23EEFE6D0](v7, -1, -1);
  }

  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];

  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_23DD11780(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a4)
  {
    v7 = sub_23DD42118();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v6(a2, a3, v7);
}

uint64_t sub_23DD11834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[45] = a6;
  v7[46] = v6;
  v7[43] = a4;
  v7[44] = a5;
  v7[41] = a2;
  v7[42] = a3;
  v7[40] = a1;
  v8 = sub_23DD41658();
  v7[47] = v8;
  v7[48] = *(v8 - 8);
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = swift_task_alloc();
  v7[53] = swift_task_alloc();
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  sub_23DD422C8();
  v7[57] = sub_23DD422B8();
  v10 = sub_23DD422A8();
  v7[58] = v10;
  v7[59] = v9;

  return MEMORY[0x2822009F8](sub_23DD11988, v10, v9);
}

uint64_t sub_23DD11988()
{
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v1 = v0[56];
  v2 = v0[47];
  v3 = v0[48];
  v4 = __swift_project_value_buffer(v2, qword_2814FD168);
  v0[60] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[61] = v5;
  v0[62] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_23DD42338();
  v7 = sub_23DD41638();
  if (os_log_type_enabled(v7, v6))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23DCDB000, v7, v6, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) begin", v8, 2u);
    MEMORY[0x23EEFE6D0](v8, -1, -1);
  }

  v9 = v0[56];
  v10 = v0[47];
  v11 = v0[48];
  v12 = v0[44];

  v13 = *(v11 + 8);
  v0[63] = v13;
  v13(v9, v10);
  if (v12 <= 1)
  {
    if (!v12)
    {
      v52 = v0[55];
      v53 = v0[47];

      v5(v52, v4, v53);
      v54 = sub_23DD42338();
      v17 = sub_23DD41638();
      if (os_log_type_enabled(v17, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_23DCDB000, v17, v54, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) end state none", v55, 2u);
        MEMORY[0x23EEFE6D0](v55, -1, -1);
      }

      v19 = v0[55];
      goto LABEL_31;
    }

    if (v12 == 1)
    {
      v20 = v0[54];
      v21 = v0[47];

      v5(v20, v4, v21);
      v22 = sub_23DD42338();
      v23 = sub_23DD41638();
      if (os_log_type_enabled(v23, v22))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_23DCDB000, v23, v22, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) end state dataclass config", v24, 2u);
        MEMORY[0x23EEFE6D0](v24, -1, -1);
      }

      v25 = v0[54];
      v26 = v0[47];
      v27 = v0[43];

      v13(v25, v26);
      if (v27)
      {
        v28 = v0[43];
        v29 = v0[40];
        v75 = objc_opt_self();
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v31 = swift_allocObject();
        v31[2] = v30;
        v31[3] = v28;
        v31[4] = v29;
        v0[22] = sub_23DD29CA8;
        v0[23] = v31;
        v0[18] = MEMORY[0x277D85DD0];
        v0[19] = 1107296256;
        v0[20] = sub_23DD12F60;
        v0[21] = &block_descriptor_414;
        v32 = _Block_copy(v0 + 18);
        v33 = v28;
        v34 = v29;

        v35 = [v75 dataclassConfigurationControllerForAccount:v33 name:0 completion:v32];
        _Block_release(v32);
        if (v35)
        {
          [v0[40] showController:v35 animate:1];
        }

        else
        {
          v5(v0[53], v4, v0[47]);
          v65 = sub_23DD42348();
          v66 = sub_23DD41638();
          v67 = os_log_type_enabled(v66, v65);
          v68 = v0[53];
          v69 = v0[47];
          if (v67)
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_23DCDB000, v66, v65, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) unable to make dataclass config view for some reason!", v70, 2u);
            MEMORY[0x23EEFE6D0](v70, -1, -1);
          }

          else
          {
          }

          v13(v68, v69);
        }
      }

      goto LABEL_32;
    }

LABEL_22:

LABEL_32:

    v59 = v0[1];

    return v59();
  }

  if (v12 == 2)
  {
    v5(v0[52], v4, v0[47]);
    v36 = sub_23DD42338();
    v37 = sub_23DD41638();
    if (os_log_type_enabled(v37, v36))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_23DCDB000, v37, v36, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) end state alternate creation", v38, 2u);
      MEMORY[0x23EEFE6D0](v38, -1, -1);
    }

    v39 = v0[52];
    v40 = v0[47];
    v41 = v0[43];

    v13(v39, v40);
    if (v41 || !v0[42])
    {
      goto LABEL_22;
    }

    v60 = v0[45];
    v61 = sub_23DD42138();
    v0[64] = v61;
    if (v60)
    {
      v62 = v0[45];
      v0[36] = 0x656D616E72657355;
      v0[37] = 0xE800000000000000;
      sub_23DD424F8();
      if (*(v62 + 16) && (v63 = sub_23DCEA1CC((v0 + 24)), (v64 & 1) != 0))
      {
        sub_23DCEFBF0(*(v62 + 56) + 32 * v63, (v0 + 29));
        sub_23DCEF8B0((v0 + 24));
        if (v0[32])
        {
          swift_dynamicCast();
LABEL_48:
          v71 = v0[40];
          v72 = objc_opt_self();
          v73 = sub_23DD42138();
          v0[65] = v73;

          v0[2] = v0;
          v0[7] = v0 + 68;
          v0[3] = sub_23DD123A4;
          v74 = swift_continuation_init();
          v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA78, &qword_23DD45D00);
          v0[10] = MEMORY[0x277D85DD0];
          v0[11] = 1107296256;
          v0[12] = sub_23DD12FB4;
          v0[13] = &block_descriptor_406;
          v0[14] = v74;
          [v72 showAlternateSetupControllerForAccount:v61 username:v73 from:v71 completion:v0 + 10];

          return MEMORY[0x282200938](v0 + 2);
        }
      }

      else
      {
        sub_23DCEF8B0((v0 + 24));
        *(v0 + 29) = 0u;
        *(v0 + 31) = 0u;
      }
    }

    else
    {
      *(v0 + 31) = 0u;
      *(v0 + 29) = 0u;
    }

    sub_23DCEFA38((v0 + 29), &qword_27E30E1F0, &unk_23DD43F80);
    goto LABEL_48;
  }

  if (v12 != 3)
  {
    if (v12 == 4)
    {
      v14 = v0[49];
      v15 = v0[47];

      v5(v14, v4, v15);
      v16 = sub_23DD42338();
      v17 = sub_23DD41638();
      if (os_log_type_enabled(v17, v16))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_23DCDB000, v17, v16, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) end state dataclass canceled", v18, 2u);
        MEMORY[0x23EEFE6D0](v18, -1, -1);
      }

      v19 = v0[49];
LABEL_31:
      v56 = v0[47];
      v57 = v0[46];

      v13(v19, v56);
      v58 = *(v57 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper);
      *(v57 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper) = 0;

      goto LABEL_32;
    }

    goto LABEL_22;
  }

  v5(v0[50], v4, v0[47]);
  v42 = sub_23DD42338();
  v43 = sub_23DD41638();
  if (os_log_type_enabled(v43, v42))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_23DCDB000, v43, v42, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) end state done", v44, 2u);
    MEMORY[0x23EEFE6D0](v44, -1, -1);
  }

  v45 = v0[50];
  v46 = v0[47];

  v13(v45, v46);
  v47 = swift_task_alloc();
  v0[67] = v47;
  *v47 = v0;
  v47[1] = sub_23DD1280C;
  v48 = v0[41];
  v49 = v0[42];
  v50 = v0[40];

  return sub_23DD13010(1, v48, v49, v50, 1);
}

uint64_t sub_23DD123A4()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);

  return MEMORY[0x2822009F8](sub_23DD124AC, v2, v1);
}

uint64_t sub_23DD124AC()
{
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  v3 = *(v0 + 480);
  v4 = *(v0 + 408);
  v5 = *(v0 + 376);
  v6 = *(v0 + 544);

  v2(v4, v3, v5);
  v7 = sub_23DD42338();
  v8 = sub_23DD41638();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23DCDB000, v8, v7, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) end state alternate creation end", v9, 2u);
    MEMORY[0x23EEFE6D0](v9, -1, -1);
  }

  v10 = *(v0 + 504);
  v11 = *(v0 + 408);
  v12 = *(v0 + 376);

  v10(v11, v12);
  v13 = swift_task_alloc();
  *(v0 + 528) = v13;
  *v13 = v0;
  v13[1] = sub_23DD12628;
  v14 = *(v0 + 328);
  v15 = *(v0 + 336);
  v16 = *(v0 + 320);

  return sub_23DD13010(v6, v14, v15, v16, 1);
}

uint64_t sub_23DD12628()
{
  v1 = *v0;

  v2 = *(v1 + 472);
  v3 = *(v1 + 464);

  return MEMORY[0x2822009F8](sub_23DD12748, v3, v2);
}

uint64_t sub_23DD12748()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23DD1280C()
{
  v1 = *v0;

  v2 = *(v1 + 472);
  v3 = *(v1 + 464);

  return MEMORY[0x2822009F8](sub_23DD2CE38, v3, v2);
}

uint64_t sub_23DD1292C(char a1, uint64_t a2, void *a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_23DD41658();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_2814FD168);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);
  v15 = sub_23DD42338();
  v16 = sub_23DD41638();
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v31 = v9;
    v18 = a3;
    v19 = a4;
    v20 = a1;
    v21 = v17;
    *v17 = 0;
    _os_log_impl(&dword_23DCDB000, v16, v15, "AccountAddViewModel.setupSheetCompletion(:accountTypeIdentifier:account:action:action:accountInfo) dataclass config finished", v17, 2u);
    v22 = v21;
    a1 = v20;
    a4 = v19;
    a3 = v18;
    v9 = v31;
    MEMORY[0x23EEFE6D0](v22, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  v23 = sub_23DD422E8();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  v24 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = v24;
  *(v26 + 40) = a1 & 1;
  *(v26 + 48) = a3;
  *(v26 + 56) = a4;
  v27 = a3;
  v28 = a4;
  sub_23DD03EFC(0, 0, v9, &unk_23DD45D10, v26);

  return sub_23DCEFA38(v9, &qword_27E30EA40, &qword_23DD45C78);
}

uint64_t sub_23DD12C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 96) = a5;
  *(v7 + 40) = a1;
  *(v7 + 48) = a4;
  return MEMORY[0x2822009F8](sub_23DD12C88, 0, 0);
}

id sub_23DD12C88()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    result = [*(v0 + 56) accountType];
    if (result)
    {
      v3 = result;
      v4 = [result identifier];

      if (v4)
      {
        v5 = sub_23DD42178();
        v7 = v6;
      }

      else
      {
        v5 = 0;
        v7 = 0;
      }

      *(v0 + 80) = v7;
      v9 = swift_task_alloc();
      *(v0 + 88) = v9;
      *v9 = v0;
      v9[1] = sub_23DD12E08;
      v10 = *(v0 + 64);
      v11 = *(v0 + 96);

      return sub_23DD13010(v11, v5, v7, v10, 2);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    **(v0 + 40) = 1;
    v8 = *(v0 + 8);

    return v8();
  }

  return result;
}

uint64_t sub_23DD12E08()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_23DD12F38, 0, 0);
}

uint64_t sub_23DD12F60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_23DD12FB4(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_23DD13010(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 16) = a2;
  *(v6 + 65) = a1;
  sub_23DD422C8();
  *(v6 + 56) = sub_23DD422B8();
  v8 = sub_23DD422A8();

  return MEMORY[0x2822009F8](sub_23DD130B4, v8, v7);
}

void sub_23DD130B4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 65);

  v3 = *(v1 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel);
  if (v2 == 1)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v5 = *(v0 + 16);
    v4 = *(v0 + 24);

    sub_23DCFE328(v5, v4);
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    sub_23DCFE77C();
  }

LABEL_7:
  v6 = *(v0 + 48);
  sub_23DD0F560();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  v7 = *(v0 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 64) = 0;
  v8 = v6;
  sub_23DD416E8();
  v9 = *&v8[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper];
  *&v8[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper] = 0;

  v10 = [objc_opt_self() defaultCenter];
  if (qword_27E30DFE0 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 32);
  [v10 postNotificationName:qword_27E311D18 object:0];

  v12 = [v11 traitCollection];
  LODWORD(v11) = [v12 acuis_statefulNavigation];

  v13 = *(v0 + 40);
  if (v11)
  {
    v14 = [*(v0 + 32) traitCollection];
    [v14 acuis:v13 popLastItemsFromStack:?];
  }

  else
  {
    if (v13 < 0)
    {
      __break(1u);
      return;
    }

    if (v13)
    {
      v15 = 0;
      do
      {
        v16 = [*(v0 + 32) navigationController];
        if (v16)
        {
          v17 = v16;
          v18 = [v16 popViewControllerAnimated_];
        }

        ++v15;
      }

      while (v15 != *(v0 + 40));
    }
  }

  if (v7)
  {
    v19 = *(v0 + 48);
    v20 = OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost;
    v21 = *(v19 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_psListControllerHost);
    if (v21)
    {
      v22 = [v21 traitCollection];
      if (v22)
      {
        v23 = v22;
        if ([v22 acuis_statefulNavigation])
        {
          [v23 acuis:1 popLastItemsFromStack:?];
LABEL_26:

          goto LABEL_27;
        }
      }

      v24 = *(v19 + v20);
      if (v24)
      {
        v25 = [v24 navigationController];
        if (v25)
        {
          v23 = v25;

          goto LABEL_26;
        }
      }
    }
  }

LABEL_27:
  v26 = *(v0 + 8);

  v26();
}

id AccountAddViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_23DD13A30@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AccountAddViewModel(0);
  result = sub_23DD41688();
  *a2 = result;
  return result;
}

uint64_t AccountAddView.body.getter@<X0>(uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = sub_23DD41FF8();
  v9 = v8;
  sub_23DD13F08(v6, &v45);
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v42 = v48;
  v43[0] = v45;
  v43[1] = v46;
  v43[2] = v47;
  v44 = v48;
  sub_23DCFD8B0(&v39, v34, &qword_27E30E600, &qword_23DD44C78);
  sub_23DCEFA38(v43, &qword_27E30E600, &qword_23DD44C78);
  v46 = v39;
  v47 = v40;
  v48 = v41;
  LOWORD(v49) = v42;
  v10 = swift_allocObject();
  v10[2] = v3;
  v10[3] = v4;
  v29 = v4;
  v10[4] = v6;
  v10[5] = v5;
  *&v45 = v7;
  *(&v45 + 1) = v9;
  *(&v49 + 1) = 0;
  *&v50 = 0;
  *(&v50 + 1) = sub_23DD23BB4;
  v51 = v10;
  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = v3;
    v11 = v6;
    sub_23DD416D8();

    v31 = *(&v34[0] + 1);
    v12 = *&v34[0];
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    v13 = sub_23DD41858();
    swift_getKeyPath();
    sub_23DD41878();

    v26 = v37;
    v27 = v36;
    v28 = v38;
    v14 = swift_allocObject();
    v15 = v29;
    v14[2] = v3;
    v14[3] = v15;
    v14[4] = v6;
    v14[5] = v5;
    v34[4] = v49;
    v34[5] = v50;
    v35 = v51;
    v34[0] = v45;
    v34[1] = v46;
    v34[2] = v47;
    v34[3] = v48;
    v16 = v25;
    v17 = v11;
    sub_23DD21C0C(v12, v31);
    v25 = v18;
    v29 = &v24;
    v32 = v19;
    v33 = v18;
    v20 = MEMORY[0x28223BE20](v19);
    v24 = v23;
    v23[2] = sub_23DD23F6C;
    v23[3] = v14;
    MEMORY[0x28223BE20](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E608, &unk_23DD44CF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D8, &qword_23DD44200);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E610, &qword_23DD44D00);
    sub_23DD23F88();
    sub_23DCF4570();
    sub_23DCEF9F0(&qword_27E30E3E0, &qword_27E30E3D8, &qword_23DD44200, MEMORY[0x277CE14C0]);
    sub_23DD24040();
    sub_23DD41D88();

    sub_23DCEFA38(&v45, &qword_27E30E608, &unk_23DD44CF0);
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    v22 = v3;
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD13F08@<X0>(void *a1@<X2>, uint64_t a3@<X8>)
{
  *(&v14 + 1) = &type metadata for AccountsUIModel.FeatureFlags;
  *&v15 = sub_23DCE1B80();
  v5 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v13);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for AccountsUIModel(0);
    sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    sub_23DD41888();
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    sub_23DD41888();
    sub_23DD41478();
    sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530], MEMORY[0x277CE8528]);
    sub_23DD41888();
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECE0, &qword_23DD46320);
    sub_23DD2C4FC();
    sub_23DD2C588();
    result = sub_23DD41A78();
    v12 = v14;
    *a3 = v13;
    *(a3 + 16) = v12;
    *(a3 + 32) = v15;
    *(a3 + 48) = v16;
    return result;
  }

  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = a1;
    sub_23DD416D8();

    if (!*(&v13 + 1))
    {
      goto LABEL_9;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v7 = v6;
    sub_23DD416D8();

    if (*(&v13 + 1))
    {
      if (v13 == __PAIR128__(0x800000023DD4A5A0, 0xD000000000000014))
      {

        goto LABEL_9;
      }

      v8 = sub_23DD42648();

      if (v8)
      {
LABEL_9:
        swift_getKeyPath();
        swift_getKeyPath();
        v9 = v6;
        sub_23DD416D8();

        if (v13)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          v10 = v9;
          sub_23DD416D8();
        }
      }
    }

    type metadata accessor for AccountsUIModel(0);
    sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    sub_23DD41888();
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    sub_23DD41888();
    sub_23DD41478();
    sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530], MEMORY[0x277CE8528]);
    sub_23DD41888();
    sub_23DD2C588();
    sub_23DD2C5DC();
    sub_23DD41A78();
    goto LABEL_12;
  }

  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

void sub_23DD14558(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = a3;
    sub_23DD416D8();

    if ((v8 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v6 = v5;
      sub_23DD416D8();

      if ((v7 & 1) == 0 && !*&v6[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_addAccountHelper])
      {
        if (*&v6[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel])
        {

          sub_23DCFE77C();
        }
      }
    }
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    sub_23DD41868();
    __break(1u);
  }
}

void sub_23DD146C4(char a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a4)
  {
    v6 = a4;
    sub_23DD03914(a1 & 1);
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    sub_23DD41868();
    __break(1u);
  }
}

uint64_t sub_23DD1477C()
{
  v1 = v0;
  v2 = sub_23DD41618();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23DD42178();
  (*(v3 + 16))(v5, v1, v2);
  v7 = (*(v3 + 88))(v5, v2);
  if (v7 == *MEMORY[0x277CE8778] || v7 == *MEMORY[0x277CE8758] || v7 == *MEMORY[0x277CE8768] || v7 == *MEMORY[0x277CE8770] || v7 == *MEMORY[0x277CE8760])
  {

    return sub_23DD42178();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    return v6;
  }
}

uint64_t AccountAddViewModern.body.getter@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v2 = sub_23DD41958();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E638, &qword_23DD44D10);
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E640, &qword_23DD44D18);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v23 - v11;
  v13 = v1[1];
  v25 = *v1;
  v26 = v13;
  v27 = v1[2];
  v23[4] = &v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E648, &qword_23DD44D20);
  sub_23DD240C4();
  sub_23DD41BF8();
  v14 = swift_allocObject();
  v15 = v26;
  *(v14 + 1) = v25;
  *(v14 + 2) = v15;
  *(v14 + 3) = v27;
  v16 = &v8[*(v6 + 36)];
  *v16 = sub_23DD241F8;
  v16[1] = v14;
  v16[2] = 0;
  v16[3] = 0;
  v17 = objc_opt_self();
  sub_23DD24200(&v25, &v24);
  v18 = [v17 currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (v19)
  {
    sub_23DD41938();
  }

  else
  {
    sub_23DD41948();
  }

  v20 = sub_23DD243D4();
  sub_23DD41C98();
  (*(v3 + 8))(v5, v2);
  sub_23DCEFA38(v8, &qword_27E30E638, &qword_23DD44D10);
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  v21 = sub_23DD41858();
  swift_getKeyPath();
  sub_23DD41878();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E680, &qword_23DD44D58);
  v23[6] = v6;
  v23[7] = v20;
  swift_getOpaqueTypeConformance2();
  sub_23DD2448C();
  sub_23DD41D98();

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_23DD14DA0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  v4 = objc_opt_self();
  v5 = v2;
  v6 = [v4 sharedConnection];
  if (!v6)
  {
    __break(1u);
LABEL_7:
    type metadata accessor for AccountsUIModel(0);
    sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    result = sub_23DD41868();
    __break(1u);
    return result;
  }

  v7 = v6;
  v8 = [v6 effectiveBoolValueForSetting_];

  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  sub_23DD41888();
  if (v8 != 2)
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    sub_23DD41888();
    sub_23DD41478();
    sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530], MEMORY[0x277CE8528]);
    sub_23DD41888();
  }

  sub_23DD24150();
  sub_23DD241A4();
  result = sub_23DD41A78();
  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  *(a2 + 48) = v13;
  return result;
}

uint64_t _s18AccountsUISettings20AccountAddViewModernVACycfC_0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  *a1 = sub_23DD41888();
  a1[1] = v2;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  a1[2] = sub_23DD41888();
  a1[3] = v3;
  sub_23DD41478();
  sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530], MEMORY[0x277CE8528]);
  result = sub_23DD41888();
  a1[4] = result;
  a1[5] = v5;
  return result;
}

uint64_t sub_23DD1511C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = sub_23DD422E8();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    v8 = v5;
    sub_23DD03C3C(0, 0, v4, &unk_23DD46310, v7);

    return sub_23DCEFA38(v4, &qword_27E30EA40, &qword_23DD45C78);
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD152B4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  v2 = sub_23DD41888();
  v4 = v3;
  result = sub_23DD41B98();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t ModdernAddViewFormContents.body.getter@<X0>(char *a1@<X8>)
{
  v89 = a1;
  v2 = sub_23DD414B8();
  MEMORY[0x28223BE20](v2 - 8);
  v107 = v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23DD41528();
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v101 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v110 = v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E698, &qword_23DD44D60);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v98 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = v84 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E6A0, &qword_23DD44D68);
  v97 = *(v99 - 8);
  v12 = MEMORY[0x28223BE20](v99);
  v96 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v84 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E6A8, &qword_23DD44D70);
  MEMORY[0x28223BE20](v16);
  v18 = v84 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E6B0, &qword_23DD44D78);
  v93 = *(v19 - 8);
  v94 = v19;
  v20 = MEMORY[0x28223BE20](v19);
  v92 = v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v84 - v22;
  v24 = v1[1];
  *&v120[23] = *v1;
  v121 = v24;
  v122 = v1[2];
  sub_23DD2456C();
  sub_23DD41FE8();
  *&v118 = sub_23DD41DF8();
  *&v18[*(v16 + 36)] = sub_23DD41F48();
  sub_23DD245C0();
  v90 = v23;
  sub_23DD41D08();
  sub_23DCEFA38(v18, &qword_27E30E6A8, &qword_23DD44D70);
  v25 = sub_23DD41A28();
  v117 = 1;
  sub_23DD160A8(&v118);
  v123 = v118;
  v124 = *v119;
  v125 = *&v119[16];
  v126 = *&v119[32];
  v127[0] = v118;
  v127[1] = *v119;
  v127[2] = *&v119[16];
  v127[3] = *&v119[32];
  sub_23DCFD8B0(&v123, &v112, &qword_27E30E6E8, &qword_23DD44D90);
  sub_23DCEFA38(v127, &qword_27E30E6E8, &qword_23DD44D90);
  *&v116[55] = v126;
  *&v116[39] = v125;
  *&v116[23] = v124;
  *&v116[7] = v123;
  v118 = v25;
  v119[0] = v117;
  *&v119[1] = *v116;
  *&v120[15] = *(&v126 + 1);
  *v120 = *&v116[48];
  *&v119[33] = *&v116[32];
  *&v119[17] = *&v116[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E6F0, &qword_23DD44D98);
  sub_23DD24708();
  sub_23DD2475C();
  sub_23DCEF9F0(&qword_27E30E708, &qword_27E30E6F0, &qword_23DD44D98, MEMORY[0x277CE1198]);
  v91 = v15;
  sub_23DD41FD8();
  v26 = type metadata accessor for AccountsUIModel(0);
  v27 = sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  v28 = sub_23DD41888();
  v30 = v29;
  v31 = type metadata accessor for AccountAddViewModel(0);
  v84[0] = sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  v32 = sub_23DD41888();
  v34 = v121;
  if (v121)
  {
    v84[1] = v27;
    v84[2] = v31;
    v84[3] = v26;
    v85 = v33;
    v86 = v30;
    v87 = v32;
    v88 = v28;
    swift_getKeyPath();
    swift_getKeyPath();
    v35 = v34;
    sub_23DD416D8();

    v106 = v35;

    v36 = v118;
    v105 = *(v118 + 16);
    if (v105)
    {
      v37 = 0;
      v38 = v109;
      v104 = v108 + 16;
      v100 = (v108 + 32);
      v102 = (v108 + 8);
      v103 = MEMORY[0x277D84F90];
      v39 = v110;
      while (1)
      {
        if (v37 >= *(v36 + 16))
        {
          __break(1u);
          goto LABEL_22;
        }

        v40 = (*(v108 + 80) + 32) & ~*(v108 + 80);
        v41 = *(v108 + 72);
        (*(v108 + 16))(v39, v36 + v40 + v41 * v37, v38);
        swift_getKeyPath();
        swift_getKeyPath();
        v42 = v106;
        sub_23DD416D8();

        v43 = v118;
        sub_23DD41508();
        if (v43 == sub_23DD421C8() && *(&v43 + 1) == v44)
        {
        }

        else
        {
          v45 = sub_23DD42648();

          if ((v45 & 1) == 0)
          {
            v46 = *v100;
            v38 = v109;
            (*v100)(v101, v110, v109);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v103 = sub_23DCF22E8(0, *(v103 + 2) + 1, 1, v103);
            }

            v48 = *(v103 + 2);
            v47 = *(v103 + 3);
            if (v48 >= v47 >> 1)
            {
              v103 = sub_23DCF22E8((v47 > 1), v48 + 1, 1, v103);
            }

            v49 = v103;
            *(v103 + 2) = v48 + 1;
            v46(&v49[v40 + v48 * v41], v101, v38);
            goto LABEL_6;
          }
        }

        v38 = v109;
        (*v102)(v110, v109);
LABEL_6:
        if (v105 == ++v37)
        {
          goto LABEL_17;
        }
      }
    }

    v103 = MEMORY[0x277D84F90];
LABEL_17:

    v50 = *(v103 + 2);

    if (v50)
    {
      MEMORY[0x28223BE20](v51);
      sub_23DD17308(&v118);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E720, &qword_23DD44E40);
      sub_23DD24C8C();
      v52 = v95;
      sub_23DD41FC8();
      v53 = 0;
    }

    else
    {
      v53 = 1;
      v52 = v95;
    }

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E710, &qword_23DD44E30);
    (*(*(v54 - 8) + 56))(v52, v53, 1, v54);
    v55 = sub_23DD41888();
    v105 = v56;
    v106 = v55;
    v108 = sub_23DD41888();
    v104 = v57;
    sub_23DD41478();
    sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530], MEMORY[0x277CE8528]);
    v103 = sub_23DD41888();
    v110 = v58;
    LOBYTE(v112) = 0;
    sub_23DD41EA8();
    LODWORD(v107) = v118;
    v109 = *(&v118 + 1);
    v59 = v92;
    v60 = *(v93 + 16);
    v61 = v94;
    v60(v92, v90, v94);
    v62 = v96;
    v63 = *(v97 + 16);
    v63(v96, v91, v99);
    v64 = v98;
    sub_23DCFD8B0(v52, v98, &qword_27E30E698, &qword_23DD44D60);
    v65 = v89;
    v60(v89, v59, v61);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E718, &qword_23DD44E38);
    v67 = v99;
    v63(&v65[v66[12]], v62, v99);
    v68 = &v65[v66[16]];
    v70 = v87;
    v69 = v88;
    v71 = v85;
    v72 = v86;
    *v68 = v88;
    *(v68 + 1) = v72;
    *(v68 + 2) = v70;
    *(v68 + 3) = v71;
    sub_23DCFD8B0(v64, &v65[v66[20]], &qword_27E30E698, &qword_23DD44D60);
    v73 = &v65[v66[24]];
    v75 = v105;
    v74 = v106;
    *&v112 = v106;
    *(&v112 + 1) = v105;
    v77 = v103;
    v76 = v104;
    *&v113 = v108;
    *(&v113 + 1) = v104;
    *&v114 = v103;
    *(&v114 + 1) = v110;
    LOBYTE(v115) = v107;
    *(&v115 + 1) = *v111;
    DWORD1(v115) = *&v111[3];
    *(&v115 + 1) = v109;
    v78 = v113;
    *v73 = v112;
    *(v73 + 1) = v78;
    v79 = v115;
    *(v73 + 2) = v114;
    *(v73 + 3) = v79;
    v102 = v70;
    v101 = v69;
    sub_23DD24C1C(&v112, &v118);
    sub_23DCEFA38(v95, &qword_27E30E698, &qword_23DD44D60);
    v80 = *(v97 + 8);
    v80(v91, v67);
    v81 = v94;
    v82 = *(v93 + 8);
    v82(v90, v94);
    *&v118 = v74;
    *(&v118 + 1) = v75;
    *v119 = v108;
    *&v119[8] = v76;
    *&v119[16] = v77;
    *&v119[24] = v110;
    v119[32] = v107;
    *&v119[33] = *v111;
    *&v119[36] = *&v111[3];
    *&v119[40] = v109;
    sub_23DD24C54(&v118);
    sub_23DCEFA38(v98, &qword_27E30E698, &qword_23DD44D60);

    v80(v96, v99);
    return (v82)(v92, v81);
  }

  else
  {
LABEL_22:
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD16010@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  v2 = sub_23DD41888();
  v4 = v3;
  result = sub_23DD41788();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = result & 1;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6 & 1;
  return result;
}

uint64_t sub_23DD160A8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  v2 = sub_23DD41888();
  v4 = v3;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  v5 = sub_23DD41888();
  v7 = v6;
  v8 = sub_23DD41888();
  v10 = v9;
  result = sub_23DD41888();
  *a1 = v2;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v10;
  a1[6] = result;
  a1[7] = v12;
  return result;
}

uint64_t sub_23DD161C8(_OWORD *a1)
{
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  v2 = sub_23DD41858();
  swift_getKeyPath();
  sub_23DD41878();

  v3 = v11;
  v4 = v12;
  v5 = v13;
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  v7[3] = a1[2];
  sub_23DD2C0EC(a1, v10);
  return sub_23DD16E00(v3, v4, v5, KeyPath, sub_23DD2C0E4, v7);
}

__n128 sub_23DD16314@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC8, &qword_23DD462C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E748, &qword_23DD44E50);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  sub_23DCFD8B0(a1, v8, &qword_27E30ECC8, &qword_23DD462C0);
  v13 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = a2[1];
  v14[1] = *a2;
  v14[2] = v15;
  v14[3] = a2[2];
  sub_23DCFD790(v8, v14 + v13, &qword_27E30ECC8, &qword_23DD462C0);
  v23 = a1;
  sub_23DD2C0EC(a2, v24);
  sub_23DD26C3C();
  sub_23DD41EF8();
  sub_23DD41FF8();
  sub_23DD41848();
  v16 = v22;
  (*(v10 + 32))(v22, v12, v9);
  v17 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E738, &qword_23DD44E48) + 36);
  v18 = v24[5];
  *(v17 + 64) = v24[4];
  *(v17 + 80) = v18;
  *(v17 + 96) = v24[6];
  v19 = v24[1];
  *v17 = v24[0];
  *(v17 + 16) = v19;
  result = v24[3];
  *(v17 + 32) = v24[2];
  *(v17 + 48) = result;
  return result;
}

uint64_t sub_23DD165D0(uint64_t a1)
{
  v2 = sub_23DD414B8();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECD0, &qword_23DD462C8);
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v8 = sub_23DD41658();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_2814FD168);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_23DD42338();
  v14 = sub_23DD41638();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v23[0] = v4;
    v16 = v15;
    *v15 = 0;
    _os_log_impl(&dword_23DCDB000, v14, v13, "ConfigResolver suggestion tapped", v15, 2u);
    MEMORY[0x23EEFE6D0](v16, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v17 = *(a1 + 16);
  if (v17)
  {
    swift_getKeyPath();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC8, &qword_23DD462C0);
    sub_23DD41F78();

    MEMORY[0x23EEFD790](v5);
    sub_23DCEFA38(v7, &qword_27E30ECD0, &qword_23DD462C8);
    v19 = sub_23DD421C8();
    v21 = v20;
    swift_getKeyPath();
    swift_getKeyPath();
    v23[1] = v19;
    v23[2] = v21;
    return sub_23DD416E8();
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD16958@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v3 = sub_23DD414B8();
  MEMORY[0x28223BE20](v3 - 8);
  v29[2] = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECD0, &qword_23DD462C8);
  MEMORY[0x28223BE20](v29[0]);
  v6 = v29 - v5;
  v7 = sub_23DD41618();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECD8, &qword_23DD462D0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v29 - v12;
  v14 = sub_23DD41528();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC8, &qword_23DD462C0);
  v29[1] = a1;
  MEMORY[0x23EEFD790]();
  sub_23DD41518();
  (*(v15 + 8))(v17, v14);
  if ((*(v8 + 48))(v13, 1, v7))
  {
    sub_23DCEFA38(v13, &qword_27E30ECD8, &qword_23DD462D0);
    v18 = sub_23DD42178();
    v20 = v19;
  }

  else
  {
    (*(v8 + 16))(v10, v13, v7);
    sub_23DCEFA38(v13, &qword_27E30ECD8, &qword_23DD462D0);
    v18 = sub_23DD1477C();
    v20 = v21;
    (*(v8 + 8))(v10, v7);
  }

  swift_getKeyPath();
  sub_23DD41F78();

  MEMORY[0x23EEFD790](v29[0]);
  sub_23DCEFA38(v6, &qword_27E30ECD0, &qword_23DD462C8);
  v22 = sub_23DD421C8();
  v24 = sub_23DD16CFC(v22, v23);
  v26 = v25;

  v28 = v30;
  *v30 = v18;
  v28[1] = v20;
  v28[2] = v24;
  v28[3] = v26;
  return result;
}

uint64_t sub_23DD16CFC(uint64_t a1, uint64_t a2)
{
  sub_23DCF4570();
  if (*(sub_23DD42458() + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E090, &qword_23DD436C0);
    sub_23DCEF9F0(&qword_27E30EA48, &unk_27E30E090, &qword_23DD436C0, MEMORY[0x277D83958]);
    a1 = sub_23DD42128();
  }

  else
  {
  }

  return a1;
}

uint64_t sub_23DD16E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC90, &qword_23DD462A8);
  MEMORY[0x23EEFD790](v18, v12);
  v13 = *(v18[0] + 16);

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v18[0] = 0;
  v18[1] = v13;
  v18[2] = sub_23DD2C174;
  v18[3] = v14;
  sub_23DD41528();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E738, &qword_23DD44E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5D0, &qword_23DD44B98);
  sub_23DD03710(&qword_27E30EC98, MEMORY[0x277CE8680], MEMORY[0x277CE8688]);
  sub_23DD24D10();
  sub_23DCEF9F0(&qword_27E30ECA0, &qword_27E30E5D0, &qword_23DD44B98, MEMORY[0x277D83960]);
  sub_23DCEF9F0(&qword_27E30ECA8, &qword_27E30E5D0, &qword_23DD44B98, MEMORY[0x277D83980]);
  swift_getKeyPath();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a5;
  v15[6] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_23DD2C1D0;
  *(v16 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECB0, &qword_23DD462B0);
  sub_23DD2C240();
  return sub_23DD41FA8();
}

uint64_t sub_23DD1708C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBB8, &qword_23DD46148);
  MEMORY[0x23EEFD790](v18, v12);
  v13 = *(v18[0] + 16);

  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  v18[0] = 0;
  v18[1] = v13;
  v18[2] = sub_23DD2BC80;
  v18[3] = v14;
  type metadata accessor for ShowAddButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E090, &qword_23DD436C0);
  sub_23DD03710(&qword_27E30E9C0, type metadata accessor for ShowAddButton, &unk_23DD45AF0);
  sub_23DCEF9F0(&qword_27E30EBC0, &unk_27E30E090, &qword_23DD436C0, MEMORY[0x277D83960]);
  sub_23DCEF9F0(&qword_27E30EBA0, &unk_27E30E090, &qword_23DD436C0, MEMORY[0x277D83980]);
  swift_getKeyPath();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a5;
  v15[6] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_23DD2BCB8;
  *(v16 + 24) = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBC8, &qword_23DD46170);
  sub_23DD2BD1C();
  return sub_23DD41FA8();
}

void sub_23DD17308(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

void EnterYourEmailAddressTitle.body.getter(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD175D8@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC60, &qword_23DD46258);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  *v10 = sub_23DD41A28();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC68, &qword_23DD46260);
  sub_23DD17748(a1, &v10[*(v11 + 44)]);
  sub_23DCFD8B0(v10, v8, &qword_27E30EC60, &qword_23DD46258);
  *a3 = 0;
  *(a3 + 8) = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC70, &qword_23DD46268);
  sub_23DCFD8B0(v8, a3 + *(v12 + 48), &qword_27E30EC60, &qword_23DD46258);
  v13 = a3 + *(v12 + 64);
  *v13 = 0;
  *(v13 + 8) = 1;
  sub_23DCEFA38(v10, &qword_27E30EC60, &qword_23DD46258);
  return sub_23DCEFA38(v8, &qword_27E30EC60, &qword_23DD46258);
}

uint64_t sub_23DD17748@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_23DD41A18();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v62 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC78, &unk_23DD46270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v61 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E288, &qword_23DD44080);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC80, &qword_23DD46280);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v61 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - v20;
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = a1;
    sub_23DD416D8();

    if (v69)
    {
      v23 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
      v24 = sub_23DD42138();

      [v23 initWithBundleIdentifier_];

      sub_23DD41498();
      (*(v14 + 32))(v21, v16, v13);
      v25 = 0;
    }

    else
    {
      v25 = 1;
    }

    v65 = v12;
    v66 = v10;
    v67 = a3;
    (*(v14 + 56))(v21, v25, 1, v13);
    v26 = sub_23DD42138();
    v27 = [objc_opt_self() bundleWithIdentifier_];

    if (v27)
    {
      v28 = sub_23DD42138();
      v29 = sub_23DD42138();
      v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

      v31 = sub_23DD42178();
      v33 = v32;

      v68 = v31;
      v69 = v33;
      sub_23DCF4570();
      v34 = sub_23DD41C48();
      v36 = v35;
      LOBYTE(v29) = v37;
      sub_23DD41BC8();
      v38 = sub_23DD41C08();
      v40 = v39;
      v42 = v41;
      sub_23DCEF904(v34, v36, v29 & 1);

      sub_23DD41BB8();
      v43 = sub_23DD41C28();
      v45 = v44;
      LOBYTE(v30) = v46;

      sub_23DCEF904(v38, v40, v42 & 1);

      sub_23DD41E18();
      v47 = sub_23DD41C18();
      v49 = v48;
      v51 = v50;
      v53 = v52;

      sub_23DCEF904(v43, v45, v30 & 1);

      v68 = v47;
      v69 = v49;
      v70 = v51 & 1;
      v71 = v53;
      v54 = v62;
      sub_23DD41A08();
      v55 = v65;
      sub_23DD41D38();
      (*(v63 + 8))(v54, v64);
      sub_23DCEF904(v47, v49, v51 & 1);

      v56 = v61;
      sub_23DCFD8B0(v21, v61, &qword_27E30EC80, &qword_23DD46280);
      v57 = v66;
      sub_23DCFD8B0(v55, v66, &qword_27E30EC78, &unk_23DD46270);
      v58 = v67;
      sub_23DCFD8B0(v56, v67, &qword_27E30EC80, &qword_23DD46280);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC88, &qword_23DD46288);
      sub_23DCFD8B0(v57, v58 + *(v59 + 48), &qword_27E30EC78, &unk_23DD46270);
      sub_23DCEFA38(v55, &qword_27E30EC78, &unk_23DD46270);
      sub_23DCEFA38(v21, &qword_27E30EC80, &qword_23DD46280);
      sub_23DCEFA38(v57, &qword_27E30EC78, &unk_23DD46270);
      return sub_23DCEFA38(v56, &qword_27E30EC80, &qword_23DD46280);
    }

    __break(1u);
  }

  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

void EmailAddressTextField.body.getter(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = sub_23DD41838();
  v87 = *(v2 - 8);
  v88 = v2;
  MEMORY[0x28223BE20](v2);
  v85 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23DD417C8();
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x28223BE20](v4);
  v82 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E758, &qword_23DD44E60);
  MEMORY[0x28223BE20](v6 - 8);
  v81 = &v58 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E760, &qword_23DD44E68);
  v66 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v61 = &v58 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E768, &qword_23DD44E70);
  MEMORY[0x28223BE20](v67);
  v10 = &v58 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E770, &qword_23DD44E78);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v63 = &v58 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E778, &qword_23DD44E80);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = &v58 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E780, &qword_23DD44E88);
  MEMORY[0x28223BE20](v59);
  v65 = &v58 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E788, &qword_23DD44E90);
  MEMORY[0x28223BE20](v72);
  v15 = &v58 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E790, &qword_23DD44E98);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v71 = &v58 - v16;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E798, &qword_23DD44EA0);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v58 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E7A0, &qword_23DD44EA8);
  v79 = *(v18 - 8);
  v80 = v18;
  MEMORY[0x28223BE20](v18);
  v77 = &v58 - v19;
  v20 = v1[1];
  v91 = *v1;
  v92 = v20;
  v93 = *(v1 + 32);
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  v21 = sub_23DD41858();
  swift_getKeyPath();
  sub_23DD41878();

  v22 = sub_23DD42138();
  v23 = [objc_opt_self() bundleWithIdentifier_];

  if (v23)
  {
    v24 = sub_23DD42138();
    v25 = sub_23DD42138();
    v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

    sub_23DD42178();
    v27 = v61;
    sub_23DD42028();
    sub_23DCEF9F0(&qword_27E30E7A8, &qword_27E30E760, &qword_23DD44E68, MEMORY[0x277CDF1A8]);
    v28 = v69;
    sub_23DD41D48();
    (*(v66 + 8))(v27, v28);
    v29 = sub_23DD24DC8();
    v30 = v63;
    v31 = v67;
    sub_23DD41CC8();
    sub_23DCEFA38(v10, &qword_27E30E768, &qword_23DD44E70);
    v89 = v31;
    v90 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = v60;
    v34 = v70;
    MEMORY[0x23EEFD560](1, v70, OpaqueTypeConformance2);
    (*(v68 + 8))(v30, v34);
    LOBYTE(v34) = sub_23DD41B98();
    v35 = v65;
    (*(v62 + 32))(v65, v33, v64);
    v36 = v35 + *(v59 + 36);
    *v36 = v34;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 32) = 0x4034000000000000;
    *(v36 + 40) = 0;
    v37 = sub_23DD42008();
    v39 = v38;
    v40 = v72;
    v41 = &v15[*(v72 + 36)];
    sub_23DD18B54(&v91, v41);
    v42 = (v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E7C0, &qword_23DD44EB0) + 36));
    *v42 = v37;
    v42[1] = v39;
    sub_23DCDDC80(v35, v15);
    v43 = sub_23DD24EB0();
    v44 = v71;
    sub_23DD41CB8();
    sub_23DCEFA38(v15, &qword_27E30E788, &qword_23DD44E90);
    v45 = v81;
    sub_23DD41AD8();
    v46 = sub_23DD41AE8();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    v89 = v40;
    v90 = v43;
    v47 = swift_getOpaqueTypeConformance2();
    v48 = v74;
    v49 = v75;
    sub_23DD41D58();
    sub_23DCEFA38(v45, &qword_27E30E758, &qword_23DD44E60);
    (*(v73 + 8))(v44, v49);
    v50 = v82;
    sub_23DD417B8();
    v89 = v49;
    v90 = v47;
    v51 = swift_getOpaqueTypeConformance2();
    v52 = v77;
    v53 = v78;
    sub_23DD41CA8();
    (*(v83 + 8))(v50, v84);
    (*(v76 + 8))(v48, v53);
    v54 = swift_allocObject();
    v55 = v92;
    *(v54 + 16) = v91;
    *(v54 + 32) = v55;
    *(v54 + 48) = v93;
    sub_23DD2507C(&v91, &v89);
    v56 = v85;
    sub_23DD41828();
    v89 = v53;
    v90 = v51;
    swift_getOpaqueTypeConformance2();
    v57 = v80;
    sub_23DD41DD8();

    (*(v87 + 8))(v56, v88);
    (*(v79 + 8))(v52, v57);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD18A54@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_23DD18AD4(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_23DD416E8();
}

uint64_t sub_23DD18B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC38, &qword_23DD46210);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18[-1] - v6;
  v8 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    sub_23DD416D8();

    v11 = v18[0];
    v10 = v18[1];

    v12 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v12 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      v13 = swift_allocObject();
      v14 = *(a1 + 16);
      *(v13 + 16) = *a1;
      *(v13 + 32) = v14;
      *(v13 + 48) = *(a1 + 32);
      sub_23DD2507C(a1, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC40, &qword_23DD46218);
      sub_23DD2BFE4();
      sub_23DD41EF8();
      (*(v5 + 32))(a2, v7, v4);
      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    return (*(v5 + 56))(a2, v15, 1, v4);
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD18DC0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    return sub_23DD416E8();
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD18E90@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23DD41E48();
  v3 = sub_23DD41E28();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_23DD18EF4(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = swift_allocObject();
    v4 = *(a1 + 16);
    *(v3 + 16) = *a1;
    *(v3 + 32) = v4;
    *(v3 + 48) = *(a1 + 32);
    v5 = v2;
    sub_23DD2507C(a1, v7);
    sub_23DD04DA0(sub_23DD2BF94, v3);
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD18FEC(uint64_t a1, id *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  if (*a2)
  {
    v7 = *a2;
    v8 = sub_23DD41388();
    v10 = v9;
    v11 = sub_23DD41408();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v6, a1, v11);
    (*(v12 + 56))(v6, 0, 1, v11);
    sub_23DD10000(v8, v10, v6);

    return sub_23DCEFA38(v6, &qword_27E30E5B0, &qword_23DD44B60);
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t ExistingAccountSection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E7E0, &qword_23DD44EB8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v8 = *(v1 + 2);
  v7 = *(v1 + 3);
  if (v8)
  {
    v14 = *v1;
    swift_getKeyPath();
    swift_getKeyPath();
    v9 = v8;
    sub_23DD416D8();

    v11 = v15;
    if (v15)
    {
      MEMORY[0x28223BE20](v10);
      *(&v14 - 3) = v14;
      *(&v14 - 4) = v8;
      *(&v14 - 3) = v7;
      *(&v14 - 2) = v11;
      sub_23DD19768(&v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E738, &qword_23DD44E48);
      sub_23DD24D10();
      sub_23DD41FC8();

      (*(v4 + 32))(a1, v6, v3);
      v12 = 0;
    }

    else
    {
      v12 = 1;
    }

    return (*(v4 + 56))(a1, v12, 1, v3);
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

__n128 sub_23DD19408@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E748, &qword_23DD44E50);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24[-v14];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v25 = a5;
  sub_23DD26C3C();
  v17 = a1;
  v18 = a3;
  v19 = a5;
  sub_23DD41EF8();
  sub_23DD41FF8();
  sub_23DD41848();
  (*(v13 + 32))(a6, v15, v12);
  v20 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E738, &qword_23DD44E48) + 36);
  v21 = v31;
  *(v20 + 64) = v30;
  *(v20 + 80) = v21;
  *(v20 + 96) = v32;
  v22 = v27;
  *v20 = v26;
  *(v20 + 16) = v22;
  result = v29;
  *(v20 + 32) = v28;
  *(v20 + 48) = result;
  return result;
}

void sub_23DD19604(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v6 = a3;
    sub_23DD0DECC(a5);
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    sub_23DD41868();
    __break(1u);
  }
}

void sub_23DD196B8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [a1 accountType];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 identifier];

    if (v5)
    {
      v6 = sub_23DD42178();
      v8 = v7;

      v9 = ACAccount.displayUserName.getter();
      v11 = sub_23DD16CFC(v9, v10);
      v13 = v12;

      *a2 = v6;
      a2[1] = v8;
      a2[2] = v11;
      a2[3] = v13;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_23DD19768(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

void ErrorTextStack.body.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v2;
    sub_23DD416D8();

    if (v12)
    {
      sub_23DD41968();
      LOBYTE(v12) = 1;
      sub_23DD19B90(&v18);
      v19 = 0;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v5 = v4;
      sub_23DD416D8();

      if (!*(&v12 + 1))
      {
        v6 = 0uLL;
        v11 = -256;
        v7 = 0uLL;
        v8 = 0uLL;
        v9 = 0uLL;
        v10 = 0uLL;
        goto LABEL_7;
      }

      sub_23DD41968();
      LOBYTE(v12) = 1;
      sub_23DD19D70(&v18);

      v19 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E7E8, &qword_23DD44F98);
    sub_23DCEF9F0(&qword_27E30E7F0, &qword_27E30E7E8, &qword_23DD44F98, MEMORY[0x277CE1138]);
    sub_23DD41A78();
    v6 = v12;
    v7 = v13;
    v8 = v14;
    v9 = v15;
    v10 = v16;
    v11 = v17;
LABEL_7:
    *a1 = v6;
    *(a1 + 16) = v7;
    *(a1 + 32) = v8;
    *(a1 + 48) = v9;
    *(a1 + 64) = v10;
    *(a1 + 80) = v11;
    return;
  }

  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  sub_23DD41868();
  __break(1u);
}

void sub_23DD19B90(uint64_t a1@<X8>)
{
  v2 = sub_23DD41E48();
  v3 = sub_23DD41E08();
  v4 = sub_23DD42138();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (v5)
  {
    v6 = sub_23DD42138();
    v7 = sub_23DD42138();
    v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    v9 = sub_23DD41C48();
    v11 = v10;
    LOBYTE(v8) = v12 & 1;
    *a1 = v2;
    *(a1 + 8) = v3;
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    *(a1 + 32) = v12 & 1;
    *(a1 + 40) = v13;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;

    sub_23DCFC0BC(v9, v11, v8);

    sub_23DCEF904(v9, v11, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD19D70@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_23DD41E48();
  v5 = sub_23DD41E08();
  sub_23DCF4570();

  v6 = sub_23DD41C48();
  v8 = v7;
  v10 = v9 & 1;
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v9 & 1;
  *(a3 + 40) = v11;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;

  sub_23DCFC0BC(v6, v8, v10);

  sub_23DCEF904(v6, v8, v10);
}

uint64_t EmailAddressFieldSectionFooter.body.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23DD41A28();
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  result = sub_23DD41888();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_23DD19F18@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_23DD41A28();
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  result = sub_23DD41888();
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = v5;
  return result;
}

uint64_t sub_23DD19FCC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *a4 = sub_23DD41978();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  return a3(v10, v9);
}

uint64_t sub_23DD1A040@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC00, &qword_23DD461B8);
  MEMORY[0x28223BE20](v5);
  v7 = &v63 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC08, &qword_23DD461C0);
  v8 = MEMORY[0x28223BE20](v66);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v64 = &v63 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  MEMORY[0x28223BE20](v13);
  v65 = &v63 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC10, &qword_23DD461C8);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v69 = &v63 - v21;
  if (!a1)
  {
    goto LABEL_15;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v67 = a1;
  v22 = a1;
  sub_23DD416D8();

  v72 = v5;
  v73 = a3;
  v70 = v20;
  v71 = v7;
  if (v74 == 1)
  {
    goto LABEL_8;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v22;
  sub_23DD416D8();

  v63 = v23;

  if (!v75)
  {
    goto LABEL_10;
  }

  if (v74 != 0xD000000000000014 || v75 != 0x800000023DD4A5A0)
  {
    v24 = sub_23DD42648();

    if (v24)
    {
      goto LABEL_8;
    }

LABEL_10:
    v42 = sub_23DD42138();
    v43 = [objc_opt_self() bundleWithIdentifier_];

    if (v43)
    {
      v44 = sub_23DD42138();
      v45 = sub_23DD42138();
      v46 = [v43 localizedStringForKey:v44 value:v45 table:0];

      sub_23DD42178();
      sub_23DD419D8();
      v47 = sub_23DD41C38();
      v49 = v48;
      LOBYTE(v45) = v50;
      v52 = v51;
      KeyPath = swift_getKeyPath();
      v54 = swift_allocObject();
      v55 = v68;
      *(v54 + 16) = v67;
      *(v54 + 24) = v55;
      v56 = &v10[*(v66 + 36)];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC18, &qword_23DD46200);
      v57 = v63;
      sub_23DD417F8();
      *v56 = KeyPath;
      *v10 = v47;
      *(v10 + 1) = v49;
      v10[16] = v45 & 1;
      *(v10 + 3) = v52;
      v41 = v64;
      sub_23DCFD790(v10, v64, &qword_27E30EC08, &qword_23DD461C0);
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_8:
  v64 = v22;
  v25 = sub_23DD42138();
  v26 = [objc_opt_self() bundleWithIdentifier_];

  if (v26)
  {
    v27 = sub_23DD42138();
    v28 = sub_23DD42138();
    v29 = [v26 localizedStringForKey:v27 value:v28 table:0];

    sub_23DD42178();
    sub_23DD419D8();
    v30 = sub_23DD41C38();
    v32 = v31;
    LOBYTE(v27) = v33;
    v35 = v34;
    v36 = swift_getKeyPath();
    v37 = swift_allocObject();
    v38 = v68;
    *(v37 + 16) = v67;
    *(v37 + 24) = v38;
    v39 = &v15[*(v66 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC18, &qword_23DD46200);
    v40 = v64;
    sub_23DD417F8();
    *v39 = v36;
    *v15 = v30;
    *(v15 + 1) = v32;
    v15[16] = v27 & 1;
    *(v15 + 3) = v35;
    v41 = v65;
    sub_23DCFD790(v15, v65, &qword_27E30EC08, &qword_23DD461C0);
LABEL_12:
    sub_23DCFD8B0(v41, v71, &qword_27E30EC08, &qword_23DD461C0);
    swift_storeEnumTagMultiPayload();
    sub_23DD2BEA8();
    v58 = v69;
    sub_23DD41A78();
    sub_23DCEFA38(v41, &qword_27E30EC08, &qword_23DD461C0);
    v59 = v70;
    sub_23DCFD8B0(v58, v70, &qword_27E30EC10, &qword_23DD461C8);
    v60 = v73;
    sub_23DCFD8B0(v59, v73, &qword_27E30EC10, &qword_23DD461C8);
    v61 = v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EC30, &qword_23DD46208) + 48);
    *v61 = 0;
    *(v61 + 8) = 1;
    sub_23DCEFA38(v58, &qword_27E30EC10, &qword_23DD461C8);
    return sub_23DCEFA38(v59, &qword_27E30EC10, &qword_23DD461C8);
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

uint64_t sub_23DD1A820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_23DD1A8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a2 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel))
    {

      sub_23DCFDF90();
    }

    MEMORY[0x28223BE20](a1);
    sub_23DD42018();
    sub_23DD41808();

    return sub_23DD417E8();
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD1AA20(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = a1;
    return sub_23DD416E8();
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD1AB1C@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t (*a3)(uint64_t, uint64_t)@<X4>, uint64_t a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  *a4 = sub_23DD41978();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  return a3(v10, v9);
}

uint64_t AccountSuggestionSection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E800, &qword_23DD44FA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - v5;
  v7 = v1[1];
  v20 = *v1;
  v21 = v7;
  v8 = v1[3];
  v22 = v1[2];
  v23 = v8;
  sub_23DD41478();
  if ((sub_23DD41438() & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = v21;
  if (v21)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v10 = v9;
    sub_23DD416D8();

    if ((v19 & 1) == 0 || (swift_getKeyPath(), swift_getKeyPath(), v11 = v10, sub_23DD416D8(), , , v11, v12 = sub_23DD421E8(), , v12 >= 1))
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v13 = v10;
      sub_23DD416D8();

      v14 = *(v19 + 16);

      if (v14)
      {
        MEMORY[0x28223BE20](v15);
        *(&v18 - 2) = &v20;
        sub_23DD1B17C(&v19);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E610, &qword_23DD44D00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E808, &qword_23DD44FF8);
        sub_23DD24040();
        sub_23DD250CC();
        sub_23DD41FC8();
        (*(v4 + 32))(a1, v6, v3);
        v16 = 0;
        return (*(v4 + 56))(a1, v16, 1, v3);
      }
    }

LABEL_7:
    v16 = 1;
    return (*(v4 + 56))(a1, v16, 1, v3);
  }

  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  result = sub_23DD41868();
  __break(1u);
  return result;
}

uint64_t sub_23DD1AEEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_23DD416D8();

    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5C8, &qword_23DD44B88);
    type metadata accessor for SuggestionButton(0);
    sub_23DCEF9F0(&qword_27E30EBF8, &qword_27E30E5C8, &qword_23DD44B88, MEMORY[0x277D83980]);
    sub_23DD03710(&qword_27E30E818, type metadata accessor for SuggestionButton, &unk_23DD45B40);
    return sub_23DD41FA8();
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD1B0B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(type metadata accessor for SuggestionButton(0) + 20);
  v5 = sub_23DD41408();
  (*(*(v5 - 8) + 16))(&a2[v4], a1, v5);
  sub_23DD41478();
  sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530], MEMORY[0x277CE8528]);
  result = sub_23DD41888();
  *a2 = result;
  *(a2 + 1) = v7;
  return result;
}

void sub_23DD1B17C(uint64_t a1@<X8>)
{
  *(&v14 + 1) = &type metadata for AccountsUIModel.FeatureFlags;
  v15 = sub_23DCE1B80();
  v2 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v13);
  v3 = sub_23DD42138();
  v4 = [objc_opt_self() bundleWithIdentifier_];

  if (v2)
  {
    if (v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  else if (v4)
  {
LABEL_5:
    v5 = sub_23DD42138();
    v6 = sub_23DD42138();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    v8 = sub_23DD42178();
    v10 = v9;

    *&v13 = v8;
    *(&v13 + 1) = v10;
    sub_23DCF4570();
    sub_23DD41C48();
    sub_23DD41A78();
    v11 = v14;
    v12 = v15;
    *a1 = v13;
    *(a1 + 16) = v11;
    *(a1 + 32) = v12;
    return;
  }

  __break(1u);
}

id sub_23DD1B3E4()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = type metadata accessor for AccountTypeSheetPSRoot();
    v3 = objc_allocWithZone(v2);
    v3[OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_added] = 0;
    *&v3[OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_addModel] = v1;
    v9.receiver = v3;
    v9.super_class = v2;
    v4 = v1;
    v5 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
    v6 = objc_allocWithZone(MEMORY[0x277D3FAB8]);
    v7 = [v6 initWithRootViewController_];

    return v7;
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

uint64_t sub_23DD1B530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DD268B4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_23DD1B594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23DD268B4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_23DD1B5F8(uint64_t a1)
{
  sub_23DD268B4();
  sub_23DD41B58();
  __break(1u);
}

id sub_23DD1B620(void *a1)
{
  v1[OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_added] = 0;
  v7 = 0;
  v3 = objc_allocWithZone(type metadata accessor for AccountAddViewModel(0));
  *&v1[OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_addModel] = AccountAddViewModel.init(_:analyticsModel:hostBundleID:)(&v7, 0, 0, 0);
  v6.receiver = v1;
  v6.super_class = type metadata accessor for AccountTypeSheetPSRoot();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_23DD1B730(char a1)
{
  v2 = v1;
  v59.receiver = v2;
  v59.super_class = type metadata accessor for AccountTypeSheetPSRoot();
  objc_msgSendSuper2(&v59, sel_viewWillAppear_, a1 & 1);
  v4 = OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_added;
  if (v2[OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_added])
  {
    return;
  }

  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  v58[0] = sub_23DD41888();
  v58[1] = v5;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  if (qword_2814FD150 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_2814FD158;
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  v7 = v6;
  v58[3] = sub_23DD41678();
  v58[4] = v7;
  v8 = qword_2814FD158;
  v9 = sub_23DCE6098();

  sub_23DD41478();
  sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530], MEMORY[0x277CE8528]);
  v58[5] = sub_23DD41678();
  v58[6] = v9;
  v10 = *&v2[OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_addModel];
  v58[7] = sub_23DD41678();
  v58[8] = v10;
  sub_23DCFD8B0(v58, &v57, &qword_27E30EA60, &qword_23DD45CE0);
  v11 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA68, &qword_23DD45CE8));
  v12 = sub_23DD41A68();
  v13 = [v12 view];
  if (!v13)
  {
    __break(1u);
    goto LABEL_21;
  }

  v14 = v13;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  [v2 addChildViewController_];
  v15 = [v2 view];
  if (!v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = v15;
  v17 = [v12 view];
  if (!v17)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v18 = v17;
  [v16 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E1E8, &unk_23DD45CF0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_23DD44AE0;
  v20 = [v12 view];
  if (!v20)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v2 view];
  if (!v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = v23;
  v25 = [v23 topAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v19 + 32) = v26;
  v27 = [v12 view];
  if (!v27)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v2 view];
  if (!v30)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v31 = v30;
  v32 = [v30 bottomAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v19 + 40) = v33;
  v34 = [v12 view];
  if (!v34)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v2 view];
  if (!v37)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v38 = v37;
  v39 = [v37 leadingAnchor];

  v40 = [v36 constraintEqualToAnchor_];
  *(v19 + 48) = v40;
  v41 = [v12 view];

  if (!v41)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v42 = [v41 trailingAnchor];

  v43 = [v2 view];
  if (!v43)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v44 = v43;
  v45 = objc_opt_self();
  v46 = [v44 trailingAnchor];

  v47 = [v42 constraintEqualToAnchor_];
  *(v19 + 56) = v47;
  sub_23DCEFAE8(0, &qword_27E30EA70, 0x277CCAAD0);
  v48 = sub_23DD42258();

  [v45 activateConstraints_];

  [v12 willMoveToParentViewController_];
  v2[v4] = 1;
  v49 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v2 action:sel_cancelButtonPressed];
  v50 = [v2 navigationItem];
  [v50 setRightBarButtonItem_];

  v51 = [v2 navigationItem];
  v52 = sub_23DD42138();
  v53 = [objc_opt_self() bundleWithIdentifier_];

  if (!v53)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v54 = sub_23DD42138();
  v55 = sub_23DD42138();
  v56 = [v53 localizedStringForKey:v54 value:v55 table:0];

  if (!v56)
  {
    sub_23DD42178();
    v56 = sub_23DD42138();
  }

  [v51 setTitle_];

  sub_23DCEFA38(v58, &qword_27E30EA60, &qword_23DD45CE0);
}

void sub_23DD1BFDC()
{
  v1 = v0;
  v2 = sub_23DD41658();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2814FD168);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_23DD42338();
  v8 = sub_23DD41638();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23DCDB000, v8, v7, "AccountTypeSheetPSRoot cancel button pressed", v9, 2u);
    MEMORY[0x23EEFE6D0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_addModel;
  v11 = *(v1 + OBJC_IVAR____TtC18AccountsUISettings22AccountTypeSheetPSRoot_addModel);
  swift_getKeyPath();
  swift_getKeyPath();
  HIBYTE(v15) = 0;
  v12 = v11;
  sub_23DD416E8();
  v13 = *(v1 + v10);
  swift_getKeyPath();
  swift_getKeyPath();
  HIBYTE(v15) = 0;
  v14 = v13;
  sub_23DD416E8();
  sub_23DD01210();
}

id sub_23DD1C2B4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t AccountTypeSheet.body.getter()
{
  v1 = sub_23DD41958();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E820, &qword_23DD45000);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  v13 = v0;
  sub_23DD251A8();
  sub_23DD41BF8();
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10)
  {
    sub_23DD41938();
  }

  else
  {
    sub_23DD41948();
  }

  sub_23DCEF9F0(&qword_27E30E830, &qword_27E30E820, &qword_23DD45000, MEMORY[0x277CDE580]);
  sub_23DD41C98();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_23DD1C534(uint64_t *a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  *a2 = sub_23DD41888();
  a2[1] = v3;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  a2[2] = sub_23DD41888();
  a2[3] = v4;
  sub_23DD41478();
  sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530], MEMORY[0x277CE8528]);
  a2[4] = sub_23DD41888();
  a2[5] = v5;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
}

uint64_t AccountTypeSection.body.getter()
{
  v13 = &type metadata for AccountsUIModel.FeatureFlags;
  v14 = sub_23DCE1B80();
  v0 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  if (v0)
  {
    v1 = sub_23DD41A28();
    v2 = sub_23DD41978();
    sub_23DD1E088(&v11);
    v3 = v11;
    v4 = v13;
    v5 = v14;
    v6 = v15;
    LOBYTE(v11) = 1;
    v7 = 1;
    v8 = v12;
    v9 = 1;
  }

  else
  {
    v1 = 0;
    v2 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v8 = 0;
    v7 = 0;
    v9 = 0;
    v3 = 0uLL;
  }

  v11 = v1;
  v12 = v9;
  v13 = v2;
  v14 = 0;
  v15 = v7;
  v16 = v3;
  v17 = v8;
  v18 = v4;
  v19 = v5;
  v20 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E838, &qword_23DD45008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E840, &qword_23DD45010);
  sub_23DD25204();
  sub_23DCEF9F0(&qword_27E30E860, &qword_27E30E840, &qword_23DD45010, MEMORY[0x277CE14C0]);
  return sub_23DD41FC8();
}

uint64_t sub_23DD1C818@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v65 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB38, &qword_23DD460D8);
  v50 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v49 = &v47 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB40, &qword_23DD460E0);
  MEMORY[0x28223BE20](v52);
  v54 = &v47 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB48, &qword_23DD460E8);
  v48 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v47 = &v47 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB50, &qword_23DD460F0);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v53 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB58, &qword_23DD460F8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v64 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB60, &unk_23DD46100);
  v62 = *(v11 - 8);
  v63 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v58 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - v14;
  v16 = *(a1 + 16);
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  v17 = sub_23DD41858();
  swift_getKeyPath();
  sub_23DD41878();

  v18 = v67;
  v19 = v68;
  v20 = v69;
  KeyPath = swift_getKeyPath();
  v51 = a1;
  sub_23DD2B930(a1, v66);
  v22 = swift_allocObject();
  sub_23DD2B998(v66, v22 + 16);
  v57 = v15;
  sub_23DD1708C(v18, v19, v20, KeyPath, sub_23DD2B9D0, v22);
  if (v16)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v23 = v16;
    sub_23DD416D8();

    if (LOBYTE(v66[0]))
    {
      v24 = 1;
      v25 = v60;
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v26 = v23;
      sub_23DD416D8();

      v25 = v60;
      if (v66[0])
      {
        v67 = *&v26[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_otherAccountTypes];
        swift_getKeyPath();
        sub_23DD2B930(v51, v66);
        v27 = swift_allocObject();
        sub_23DD2B998(v66, v27 + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E30E090, &qword_23DD436C0);
        type metadata accessor for ShowAddButton(0);
        sub_23DCEF9F0(&qword_27E30EBA0, &unk_27E30E090, &qword_23DD436C0, MEMORY[0x277D83980]);
        sub_23DD03710(&qword_27E30E9C0, type metadata accessor for ShowAddButton, &unk_23DD45AF0);
        v28 = v49;
        sub_23DD41FA8();
        v29 = v50;
        v30 = v56;
        (*(v50 + 16))(v54, v28, v56);
        swift_storeEnumTagMultiPayload();
        sub_23DCEF9F0(&qword_27E30EB90, &qword_27E30EB48, &qword_23DD460E8, MEMORY[0x277CDF028]);
        sub_23DD2BA98();
        v31 = v53;
        sub_23DD41A78();
        (*(v29 + 8))(v28, v30);
      }

      else
      {
        sub_23DD2B930(v51, v66);
        v32 = swift_allocObject();
        sub_23DD2B998(v66, v32 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB70, &qword_23DD46130);
        sub_23DD2B9E0();
        v33 = v47;
        sub_23DD41EF8();
        v34 = v48;
        v35 = v55;
        (*(v48 + 16))(v54, v33, v55);
        swift_storeEnumTagMultiPayload();
        sub_23DCEF9F0(&qword_27E30EB90, &qword_27E30EB48, &qword_23DD460E8, MEMORY[0x277CDF028]);
        sub_23DD2BA98();
        v31 = v53;
        sub_23DD41A78();
        (*(v34 + 8))(v33, v35);
      }

      sub_23DCFD790(v31, v25, &qword_27E30EB50, &qword_23DD460F0);
      v24 = 0;
    }

    (*(v59 + 56))(v25, v24, 1, v61);
    v36 = v25;
    v38 = v62;
    v37 = v63;
    v39 = *(v62 + 16);
    v40 = v57;
    v41 = v58;
    v39(v58, v57, v63);
    v42 = v64;
    sub_23DCFD8B0(v36, v64, &qword_27E30EB58, &qword_23DD460F8);
    v43 = v65;
    v39(v65, v41, v37);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB68, &qword_23DD46128);
    sub_23DCFD8B0(v42, &v43[*(v44 + 48)], &qword_27E30EB58, &qword_23DD460F8);
    sub_23DCEFA38(v36, &qword_27E30EB58, &qword_23DD460F8);
    v45 = *(v38 + 8);
    v45(v40, v37);
    sub_23DCEFA38(v42, &qword_27E30EB58, &qword_23DD460F8);
    return (v45)(v41, v37);
  }

  else
  {
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

void sub_23DD1D1CC(__int128 *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22[-v6];
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v25 = *a1;
  v26 = v8;
  v27 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBF0, &qword_23DD46180);
  MEMORY[0x23EEFD790](v24, v10);
  v11 = v24[0];
  v12 = v24[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  v14 = sub_23DD41408();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  *a3 = sub_23DD41888();
  *(a3 + 8) = v16;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  *(a3 + 16) = sub_23DD41888();
  *(a3 + 24) = v17;
  v22[15] = 0;
  sub_23DD41EA8();
  v18 = v23;
  *(a3 + 32) = v22[16];
  *(a3 + 40) = v18;
  v19 = type metadata accessor for ShowAddButton(0);
  v20 = *(v19 + 32);
  v15((a3 + v20), 1, 1, v14);
  v21 = *(v19 + 36);
  swift_unknownObjectWeakInit();
  sub_23DD26908(v7, a3 + v20);
  *(a3 + 48) = v11;
  *(a3 + 56) = v12;
  *(a3 + v21) = 0;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_23DD1D414(uint64_t a1)
{
  v2 = sub_23DD41658();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2814FD168);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_23DD42338();
  v8 = sub_23DD41638();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23DCDB000, v8, v7, "AccountTypeSection show other account types tapped", v9, 2u);
    MEMORY[0x23EEFE6D0](v9, -1, -1);
  }

  v10 = (*(v3 + 8))(v5, v2);
  MEMORY[0x28223BE20](v10);
  *(&v12 - 2) = a1;
  sub_23DD42018();
  sub_23DD41808();
}

uint64_t sub_23DD1D628(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    return sub_23DD416E8();
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

double sub_23DD1D700@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_23DD41978();
  sub_23DD1D854(v13);
  *&v4[23] = v13[1];
  *&v4[39] = v13[2];
  *&v4[55] = v13[3];
  v4[71] = v14;
  *&v4[7] = v13[0];
  sub_23DD41FF8();
  sub_23DD41848();
  *&v5[55] = v9;
  *&v5[71] = v10;
  *&v5[87] = v11;
  *&v5[103] = v12;
  *&v5[7] = v6;
  *&v5[23] = v7;
  *&v5[39] = v8;
  *(a1 + 33) = *&v4[16];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *(a1 + 17) = *v4;
  *(a1 + 153) = *&v5[64];
  *(a1 + 169) = *&v5[80];
  *(a1 + 185) = *&v5[96];
  *(a1 + 89) = *v5;
  *(a1 + 105) = *&v5[16];
  result = *&v5[32];
  *(a1 + 121) = *&v5[32];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 81) = *&v4[64];
  *(a1 + 200) = *(&v12 + 1);
  *(a1 + 137) = *&v5[48];
  return result;
}

void sub_23DD1D854(uint64_t a1@<X8>)
{
  *(&v44 + 1) = &type metadata for AccountsUIModel.FeatureFlags;
  *&v45 = sub_23DCE1B80();
  v2 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v43);
  v3 = sub_23DD42138();
  v4 = [objc_opt_self() bundleWithIdentifier_];

  if (v2)
  {
    if (v4)
    {
      v5 = sub_23DD42138();
      v6 = sub_23DD42138();
      v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

      v8 = sub_23DD42178();
      v10 = v9;

      *&v43 = v8;
      *(&v43 + 1) = v10;
      sub_23DCF4570();
      v11 = sub_23DD41C48();
      v13 = v12;
      LOBYTE(v6) = v14;
      sub_23DD41DE8();
      sub_23DD41C18();

      sub_23DCEF904(v11, v13, v6 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBA8, &qword_23DD46140);
      sub_23DCEF9F0(&qword_27E30EBB0, &qword_27E30EBA8, &qword_23DD46140, MEMORY[0x277CE14C0]);
      sub_23DD41A78();
LABEL_6:
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = v46;
      LOBYTE(v43) = v46;
      *a1 = v35;
      *(a1 + 16) = v36;
      *(a1 + 32) = v37;
      *(a1 + 48) = v38;
      *(a1 + 56) = 0;
      *(a1 + 64) = 1;
      v39 = v35;
      v40 = v36;
      v41 = v37;
      v42 = *(&v37 + 1);
      sub_23DD2BBA4(v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1), v38);
      sub_23DD2BC04(v39, *(&v39 + 1), v40, *(&v40 + 1), v41, v42, v38);
      return;
    }

    __break(1u);
  }

  else if (v4)
  {
    v15 = sub_23DD42138();
    v16 = sub_23DD42138();
    v17 = [v4 localizedStringForKey:v15 value:v16 table:0];

    v18 = sub_23DD42178();
    v20 = v19;

    *&v43 = v18;
    *(&v43 + 1) = v20;
    sub_23DCF4570();
    v21 = sub_23DD41C48();
    v23 = v22;
    LOBYTE(v16) = v24;
    sub_23DD41E18();
    v25 = sub_23DD41C18();
    v27 = v26;
    v29 = v28;

    sub_23DCEF904(v21, v23, v16 & 1);

    sub_23DD41BD8();
    v30 = sub_23DD41C28();
    v32 = v31;
    v34 = v33;

    sub_23DCEF904(v25, v27, v29 & 1);

    sub_23DCFC0BC(v30, v32, v34 & 1);

    sub_23DCFC0BC(v30, v32, v34 & 1);

    sub_23DCEF904(v30, v32, v34 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBA8, &qword_23DD46140);
    sub_23DCEF9F0(&qword_27E30EBB0, &qword_27E30EBA8, &qword_23DD46140, MEMORY[0x277CE14C0]);
    sub_23DD41A78();
    sub_23DCEF904(v30, v32, v34 & 1);

    goto LABEL_6;
  }

  __break(1u);
}

void sub_23DD1DD78(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19[-v6];
  v9 = *a1;
  v8 = a1[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  v11 = sub_23DD41408();
  v12 = *(*(v11 - 8) + 56);
  v12(v7, 1, 1, v11);
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);

  *a3 = sub_23DD41888();
  *(a3 + 8) = v13;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  *(a3 + 16) = sub_23DD41888();
  *(a3 + 24) = v14;
  v19[15] = 0;
  sub_23DD41EA8();
  v15 = v20;
  *(a3 + 32) = v19[16];
  *(a3 + 40) = v15;
  v16 = type metadata accessor for ShowAddButton(0);
  v17 = *(v16 + 32);
  v12((a3 + v17), 1, 1, v11);
  v18 = *(v16 + 36);
  swift_unknownObjectWeakInit();
  sub_23DD26908(v7, a3 + v17);
  *(a3 + 48) = v9;
  *(a3 + 56) = v8;
  *(a3 + v18) = 1;
  swift_unknownObjectWeakAssign();
}

void sub_23DD1DFA0(uint64_t a1@<X8>)
{
  v14 = &type metadata for AccountsUIModel.FeatureFlags;
  v15 = sub_23DCE1B80();
  v2 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  if (v2)
  {
    v3 = sub_23DD41A28();
    v17 = 1;
    v4 = sub_23DD41978();
    sub_23DD1E088(&v12);
    v5 = v12;
    v6 = v14;
    v7 = v15;
    v8 = v16;
    LOBYTE(v12) = 1;
    v19 = v13;
    v18 = v16;
    v9 = 1;
    v10 = v13;
    v11 = v17;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    v11 = 0;
    v5 = 0uLL;
  }

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = v9;
  *(a1 + 48) = v5;
  *(a1 + 64) = v10;
  *(a1 + 72) = v6;
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
}

void sub_23DD1E088(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    v7 = sub_23DD41C48();
    v9 = v8;
    *a1 = v7;
    *(a1 + 8) = v8;
    LOBYTE(v6) = v10 & 1;
    *(a1 + 16) = v10 & 1;
    *(a1 + 24) = v11;
    *(a1 + 32) = 0;
    *(a1 + 40) = 1;
    sub_23DCFC0BC(v7, v8, v10 & 1);

    sub_23DCEF904(v7, v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD1E204()
{
  sub_23DD1DFA0(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E838, &qword_23DD45008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E840, &qword_23DD45010);
  sub_23DD25204();
  sub_23DCEF9F0(&qword_27E30E860, &qword_27E30E840, &qword_23DD45010, MEMORY[0x277CE14C0]);
  return sub_23DD41FC8();
}

uint64_t AccountAddViewLegacy.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v32 = a1;
  v33 = sub_23DD41958();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E868, &qword_23DD45020);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E870, &qword_23DD45028);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E878, &qword_23DD45030);
  v28 = *(v10 - 8);
  v29 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = v2[1];
  v39[0] = *v2;
  v39[1] = v13;
  v39[2] = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E880, &qword_23DD45038);
  sub_23DCEF9F0(&qword_27E30E888, &qword_27E30E880, &qword_23DD45038, MEMORY[0x277CE14C0]);
  sub_23DD41BF8();
  sub_23DD419D8();
  v14 = sub_23DCEF9F0(&qword_27E30E890, &qword_27E30E868, &qword_23DD45020, MEMORY[0x277CDE580]);
  sub_23DD41CF8();

  (*(v5 + 8))(v7, v4);
  v34 = v39;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E898, &unk_23DD45040);
  v35 = v4;
  v36 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E8A0, &unk_23DD466E0);
  v18 = sub_23DCEF9F0(&qword_27E30E8A8, &qword_27E30E8A0, &unk_23DD466E0, MEMORY[0x277CDD7A8]);
  v35 = v17;
  v36 = v18;
  v19 = v26;
  v20 = swift_getOpaqueTypeConformance2();
  sub_23DD41DB8();
  (*(v27 + 8))(v9, v19);
  v21 = [objc_opt_self() currentDevice];
  v22 = [v21 userInterfaceIdiom];

  if (v22)
  {
    v23 = v30;
    sub_23DD41938();
  }

  else
  {
    v23 = v30;
    sub_23DD41948();
  }

  v35 = v19;
  v36 = v15;
  v37 = OpaqueTypeConformance2;
  v38 = v20;
  swift_getOpaqueTypeConformance2();
  v24 = v29;
  sub_23DD41C98();
  (*(v31 + 8))(v23, v33);
  return (*(v28 + 8))(v12, v24);
}

uint64_t sub_23DD1E830@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E6A8, &qword_23DD44D70);
  MEMORY[0x28223BE20](v1);
  v3 = &v38 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E6B0, &qword_23DD44D78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB28, &qword_23DD460C8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - v11;
  v58 = &type metadata for AccountsUIModel.FeatureFlags;
  v59 = sub_23DCE1B80();
  v13 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v55);
  if (v13)
  {
    sub_23DD2456C();
    sub_23DD41FE8();
    v55 = sub_23DD41DF8();
    *&v3[*(v1 + 36)] = sub_23DD41F48();
    sub_23DD245C0();
    sub_23DD41D08();
    sub_23DCEFA38(v3, &qword_27E30E6A8, &qword_23DD44D70);
    (*(v5 + 32))(v12, v7, v4);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  (*(v5 + 56))(v12, v14, 1, v4);
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  v15 = sub_23DD41888();
  v17 = v16;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  v44 = sub_23DD41888();
  v43 = v18;
  sub_23DD41478();
  sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530], MEMORY[0x277CE8528]);
  v42 = sub_23DD41888();
  v47 = v19;
  LOBYTE(v51) = 0;
  sub_23DD41EA8();
  v40 = v12;
  v41 = v55;
  v20 = v56;
  v39 = v56;
  v49[0] = sub_23DD41888();
  v49[1] = v21;
  v49[2] = sub_23DD41888();
  v49[3] = v22;
  v49[4] = sub_23DD41888();
  v49[5] = v23;
  swift_unknownObjectWeakInit();
  v24 = v12;
  v25 = v45;
  sub_23DCFD8B0(v24, v45, &qword_27E30EB28, &qword_23DD460C8);
  sub_23DD2B930(v49, v48);
  v26 = v46;
  sub_23DCFD8B0(v25, v46, &qword_27E30EB28, &qword_23DD460C8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EB30, &qword_23DD460D0);
  v28 = (v26 + *(v27 + 48));
  v29 = v15;
  *&v51 = v15;
  *(&v51 + 1) = v17;
  v30 = v44;
  v31 = v43;
  *&v52 = v44;
  *(&v52 + 1) = v43;
  v32 = v42;
  *&v53 = v42;
  *(&v53 + 1) = v47;
  v33 = v41;
  LOBYTE(v54) = v41;
  *(&v54 + 1) = *v50;
  DWORD1(v54) = *&v50[3];
  *(&v54 + 1) = v20;
  v34 = v52;
  v35 = v53;
  *v28 = v51;
  v28[1] = v34;
  v36 = v54;
  v28[2] = v35;
  v28[3] = v36;
  sub_23DD2B930(v48, v26 + *(v27 + 64));
  sub_23DD24C1C(&v51, &v55);
  sub_23DD2B968(v49);
  sub_23DCEFA38(v40, &qword_27E30EB28, &qword_23DD460C8);
  sub_23DD2B968(v48);
  v55 = v29;
  v56 = v17;
  v57 = v30;
  v58 = v31;
  v59 = v32;
  v60 = v47;
  v61 = v33;
  *v62 = *v50;
  *&v62[3] = *&v50[3];
  v63 = v39;
  sub_23DD24C54(&v55);
  return sub_23DCEFA38(v25, &qword_27E30EB28, &qword_23DD460C8);
}

uint64_t sub_23DD1EDE0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  result = sub_23DD41888();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23DD1EE50(uint64_t a1)
{
  v2 = sub_23DD41AA8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E8A0, &unk_23DD466E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_23DD41A88();
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0, MEMORY[0x277CDF028]);
  sub_23DD417D8();
  v7 = sub_23DCEF9F0(&qword_27E30E8A8, &qword_27E30E8A0, &unk_23DD466E0, MEMORY[0x277CDD7A8]);
  MEMORY[0x23EEFD2F0](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

void sub_23DD1F03C(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_23DD42138();
  v6 = [objc_opt_self() bundleWithIdentifier_];

  if (v6)
  {
    v7 = sub_23DD42138();
    v8 = sub_23DD42138();
    v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

    v10 = sub_23DD42178();
    v12 = v11;

    v17 = v10;
    v18 = v12;
    sub_23DD41748();
    v13 = sub_23DD41758();
    (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
    v14 = swift_allocObject();
    v15 = a1[1];
    v14[1] = *a1;
    v14[2] = v15;
    v14[3] = a1[2];
    sub_23DD2B8F8(a1, v16);
    sub_23DCF4570();
    sub_23DD41F08();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD1F250(uint64_t a1)
{
  v2 = sub_23DD41658();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2814FD168);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_23DD42338();
  v8 = sub_23DD41638();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23DCDB000, v8, v7, "AccountAddViewLegacy cancel button pressed", v9, 2u);
    MEMORY[0x23EEFE6D0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(a1 + 16);
  if (!v10)
  {
    type metadata accessor for AccountAddViewModel(0);
    v14 = &qword_27E30E540;
    v15 = type metadata accessor for AccountAddViewModel;
    v16 = &protocol conformance descriptor for AccountAddViewModel;
LABEL_14:
    sub_23DD03710(v14, v15, v16);
    result = sub_23DD41868();
    __break(1u);
    return result;
  }

  if (*(v10 + OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel))
  {

    sub_23DCFE77C();
  }

  v11 = *a1;
  if (!*a1)
  {
    type metadata accessor for AccountsUIModel(0);
    v14 = &qword_27E30E1A0;
    v15 = type metadata accessor for AccountsUIModel;
    v16 = &protocol conformance descriptor for AccountsUIModel;
    goto LABEL_14;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v11;
  sub_23DD416D8();

  v12 = HIBYTE(v17);
  if ((v17 & 0x100000000000000) == 0)
  {
    sub_23DCE6098();
    sub_23DD41428();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  HIBYTE(v17) = v12 ^ 1;
  return sub_23DD416E8();
}

uint64_t sub_23DD1F570@<X0>(uint64_t a1@<X8>)
{
  v21[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v21 - v3;
  v5 = sub_23DD41408();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ShowAddButton(0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SuggestionButton(0);
  v13 = *(v6 + 16);
  v13(v8, v1 + *(v12 + 20), v5);
  v13(v4, v8, v5);
  v14 = *(v6 + 56);
  v14(v4, 0, 1, v5);
  type metadata accessor for AccountsUIModel(0);
  sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
  *v11 = sub_23DD41888();
  *(v11 + 1) = v15;
  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
  *(v11 + 2) = sub_23DD41888();
  *(v11 + 3) = v16;
  v23 = 0;
  sub_23DD41EA8();
  (*(v6 + 8))(v8, v5);
  v17 = v25;
  v11[32] = v24;
  *(v11 + 5) = v17;
  v18 = *(v9 + 32);
  v14(&v11[v18], 1, 1, v5);
  v19 = *(v9 + 36);
  swift_unknownObjectWeakInit();
  sub_23DD26908(v4, &v11[v18]);
  *(v11 + 6) = 0;
  *(v11 + 7) = 0;
  v11[v19] = 0;
  v22 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  sub_23DD03710(&qword_27E30E9C0, type metadata accessor for ShowAddButton, &unk_23DD45AF0);
  sub_23DCEF9F0(&qword_27E30E3B0, &qword_27E30E3B8, &unk_23DD45BE0, MEMORY[0x277CDF028]);
  sub_23DD41C88();
  return sub_23DD2B4C0(v11, type metadata accessor for ShowAddButton);
}

uint64_t sub_23DD1F928(uint64_t a1)
{
  v2 = type metadata accessor for SuggestionButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_23DD41738();
  v8 = sub_23DD41758();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_23DD269AC(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestionButton);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_23DD26A14(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for SuggestionButton);
  return sub_23DD41EE8();
}

uint64_t sub_23DD1FB14(uint64_t *a1)
{
  if (*a1)
  {
    type metadata accessor for SuggestionButton(0);

    sub_23DD41458();
  }

  else
  {
    sub_23DD41478();
    sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530], MEMORY[0x277CE8528]);
    result = sub_23DD41868();
    __break(1u);
  }

  return result;
}

void sub_23DD1FBD4(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD1FD1C(int a1)
{
  FunctionReplacement = swift_getFunctionReplacement();
  if (FunctionReplacement)
  {

    return FunctionReplacement(a1 & 1);
  }

  else
  {
    v5 = *(v1 + 56);
    if (v5)
    {
      v6 = *(v1 + 48);
      if (qword_27E30DFD8 != -1)
      {
        v9 = *(v1 + 48);
        FunctionReplacement = swift_once();
        v6 = v9;
      }

      v7 = qword_27E311CD8;
      v11[0] = v6;
      v11[1] = v5;
      MEMORY[0x28223BE20](FunctionReplacement);
      v10[2] = v11;

      v8 = sub_23DCEA650(sub_23DD28DC4, v10, v7);

      if ((v8 | a1))
      {
        return 0x4044000000000000;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23DD1FE7C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v50 - v4;
  v55 = type metadata accessor for ShowAddButton(0);
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E9C8, &qword_23DD45BF0);
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v9 = v50 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E9D0, &qword_23DD45BF8);
  MEMORY[0x28223BE20](v61);
  v62 = v50 - v10;
  sub_23DD269AC(v2, v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowAddButton);
  v11 = *(v6 + 80);
  v12 = (v11 + 16) & ~v11;
  v58 = v7;
  v56 = v11;
  v13 = swift_allocObject();
  v57 = v12;
  v59 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23DD26A14(v59, v13 + v12, type metadata accessor for ShowAddButton);
  v63 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E9D8, &qword_23DD45C00);
  sub_23DD26B2C();
  v52 = v9;
  sub_23DD41EF8();
  v14 = COERCE_DOUBLE(sub_23DD1FD1C(1));
  v16 = v15;
  v17 = sub_23DD1FD1C(0);
  v19 = v18;
  v20 = sub_23DD1FD1C(0);
  v22 = v21;
  v23 = sub_23DD41FF8();
  if (v16)
  {
    v24 = -INFINITY;
  }

  else
  {
    v24 = v14;
  }

  v25 = *&v17;
  if (v19)
  {
    v25 = v24;
  }

  v26 = *&v20;
  if (v22)
  {
    v26 = v25;
  }

  if (v24 > v25 || v25 > v26)
  {
    v50[1] = v23;
    sub_23DD42358();
    v27 = sub_23DD41B88();
    v51 = v5;
    v28 = v27;
    sub_23DD41628();

    v5 = v51;
  }

  sub_23DD41848();
  v29 = v62;
  (*(v53 + 32))(v62, v52, v54);
  v30 = &v29[*(v61 + 36)];
  v31 = v74;
  *(v30 + 4) = v73;
  *(v30 + 5) = v31;
  *(v30 + 6) = v75;
  v32 = v70;
  *v30 = v69;
  *(v30 + 1) = v32;
  v33 = v72;
  *(v30 + 2) = v71;
  *(v30 + 3) = v33;
  sub_23DCFD8B0(v2 + *(v55 + 32), v5, &qword_27E30E5B0, &qword_23DD44B60);
  v34 = sub_23DD41408();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v5, 1, v34) == 1)
  {
    sub_23DCEFA38(v5, &qword_27E30E5B0, &qword_23DD44B60);
    v36 = 0;
    v37 = 0;
  }

  else
  {
    v38 = sub_23DD413F8();
    v39 = v5;
    v36 = v38;
    v37 = v40;
    (*(v35 + 8))(v39, v34);
  }

  v41 = *(v2 + 40);
  v67 = *(v2 + 32);
  v68 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
  sub_23DD41ED8();
  v54 = v64;
  v53 = v65;
  LODWORD(v55) = v66;
  v42 = v59;
  sub_23DD269AC(v2, v59, type metadata accessor for ShowAddButton);
  v43 = v57;
  v44 = swift_allocObject();
  sub_23DD26A14(v42, v44 + v43, type metadata accessor for ShowAddButton);
  sub_23DD21C0C(v36, v37);
  v59 = v45;
  v58 = v50;
  v64 = v46;
  v65 = v45;
  v47 = MEMORY[0x28223BE20](v46);
  MEMORY[0x28223BE20](v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3D8, &qword_23DD44200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E610, &qword_23DD44D00);
  sub_23DD27018();
  sub_23DCF4570();
  sub_23DCEF9F0(&qword_27E30E3E0, &qword_27E30E3D8, &qword_23DD44200, MEMORY[0x277CE14C0]);
  sub_23DD24040();
  v48 = v62;
  sub_23DD41D88();

  sub_23DCEFA38(v48, &qword_27E30E9D0, &qword_23DD45BF8);
}

void sub_23DD2068C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v1;
    sub_23DD416D8();

    if ((v4 & 1) == 0)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = v2;
      sub_23DD416E8();
      sub_23DD01210();

      sub_23DD207CC();
    }
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    sub_23DD41868();
    __break(1u);
  }
}

uint64_t sub_23DD207CC()
{
  v1 = v0;
  v2 = sub_23DD41658();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_2814FD168);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_23DD42338();
  v8 = sub_23DD41638();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_23DCDB000, v8, v7, "ShowAddButton addButtonPressed", v9, 2u);
    MEMORY[0x23EEFE6D0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = sub_23DD42178();
  if (!v11)
  {

    return sub_23DD20FF0();
  }

  if (v10 != v12 || v11 != v13)
  {
    v15 = sub_23DD42648();

    if (v15)
    {
      goto LABEL_15;
    }

    return sub_23DD20FF0();
  }

LABEL_15:
  v17 = *(v1 + 40);
  v18[8] = *(v1 + 32);
  v19 = v17;
  v18[7] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
  return sub_23DD41EC8();
}

uint64_t sub_23DD20A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_23DD41408();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShowAddButton(0);
  sub_23DCFD8B0(a1 + *(v11 + 32), v6, &qword_27E30E5B0, &qword_23DD44B60);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_23DCEFA38(v6, &qword_27E30E5B0, &qword_23DD44B60);
    v13 = *(a1 + 56);
    if (!v13)
    {
      v26 = 0uLL;
      v27 = 16711680;
      v28 = 0uLL;
      goto LABEL_21;
    }

    v14 = *(a1 + 48);
    if (*(a1 + *(v11 + 36)))
    {

      sub_23DCF4364(v14, v13, 0, v15);
      *&v38 = v14;
      *(&v38 + 1) = v13;
      *&v39 = v16;
      *(&v39 + 1) = v17;
      v40 = 0;
    }

    else
    {
      v29 = qword_27E30DFD8;

      if (v29 != -1)
      {
        v30 = swift_once();
      }

      v31 = qword_27E311CD8;
      *&v42 = v14;
      *(&v42 + 1) = v13;
      MEMORY[0x28223BE20](v30);
      *(&v38 - 2) = &v42;

      v32 = sub_23DCEA650(sub_23DD2CE5C, (&v38 - 2), v31);

      if (v32)
      {
        *&v38 = v14;
        *(&v38 + 1) = v13;
        sub_23DD26DFC();
        sub_23DD26D1C();
        v39 = 0uLL;
        LOBYTE(v40) = 0;
      }

      else
      {
        sub_23DCF4364(v14, v13, 1, v33);
        *&v38 = v14;
        *(&v38 + 1) = v13;
        *&v39 = v34;
        *(&v39 + 1) = v35;
        LOBYTE(v40) = 1;
        sub_23DD26DFC();
        sub_23DD26D1C();
      }

      sub_23DD41A78();
      v38 = v42;
      v39 = v43;
      LOBYTE(v40) = v44;
      HIBYTE(v40) = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA20, &qword_23DD45C18);
    sub_23DD26D1C();
    sub_23DD26D70();
    sub_23DD41A78();
    if (HIBYTE(v44))
    {
      v36 = 256;
    }

    else
    {
      v36 = 0;
    }

    v38 = v42;
    v39 = v43;
    v40 = v36 | v44;
    v41 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA08, &qword_23DD45C10);
    sub_23DD26C3C();
    sub_23DD26C90();
    result = sub_23DD41A78();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v18 = sub_23DD41388();
    v20 = v19;
    v21 = sub_23DD413F8();
    v23 = sub_23DD16CFC(v21, v22);
    v25 = v24;

    *&v38 = v18;
    *(&v38 + 1) = v20;
    *&v39 = v23;
    *(&v39 + 1) = v25;
    v40 = 0;
    v41 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA08, &qword_23DD45C10);
    sub_23DD26C3C();
    sub_23DD26C90();
    sub_23DD41A78();
    result = (*(v8 + 8))(v10, v7);
  }

  v26 = v42;
  v28 = v43;
  if (v45)
  {
    v37 = 0x10000;
  }

  else
  {
    v37 = 0;
  }

  v27 = v37 | v44;
LABEL_21:
  *a2 = v26;
  *(a2 + 16) = v28;
  *(a2 + 32) = v27;
  *(a2 + 34) = BYTE2(v27);
  return result;
}

void sub_23DD20EC0(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E328, &unk_23DD45C20);
  sub_23DD41EC8();
  if (a1)
  {
    sub_23DD20FF0();
  }

  else
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v5 = v4;
      sub_23DD416E8();
      sub_23DD01210();
    }

    else
    {
      type metadata accessor for AccountAddViewModel(0);
      sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
      sub_23DD41868();
      __break(1u);
    }
  }
}

uint64_t sub_23DD20FF0()
{
  v1 = v0;
  v2 = type metadata accessor for ShowAddButton(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA40, &qword_23DD45C78);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_23DD41658();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_2814FD168);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_23DD42338();
  v15 = sub_23DD41638();
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v27 = v8;
    v17 = v1;
    v18 = v3;
    v19 = v16;
    *v16 = 0;
    _os_log_impl(&dword_23DCDB000, v15, v14, "ShowAddButton continue with add flow", v16, 2u);
    v20 = v19;
    v3 = v18;
    v1 = v17;
    v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = v27;
    MEMORY[0x23EEFE6D0](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v21 = sub_23DD422E8();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_23DD269AC(v1, v5, type metadata accessor for ShowAddButton);
  sub_23DD422C8();
  v22 = sub_23DD422B8();
  v23 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  sub_23DD26A14(v5, v24 + v23, type metadata accessor for ShowAddButton);
  sub_23DD00BD0(0, 0, v8, &unk_23DD45C88, v24);
}

uint64_t sub_23DD21378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_23DD41658();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_23DD41408();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  sub_23DD422C8();
  v4[15] = sub_23DD422B8();
  v8 = sub_23DD422A8();

  return MEMORY[0x2822009F8](sub_23DD21524, v8, v7);
}

uint64_t sub_23DD21524()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = *(v0 + 32);

  v5 = type metadata accessor for ShowAddButton(0);
  sub_23DCFD8B0(v4 + *(v5 + 32), v3, &qword_27E30E5B0, &qword_23DD44B60);
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) != 1)
  {
    v18 = *(v0 + 112);
    v19 = *(v0 + 88);
    v20 = *(v0 + 96);
    v21 = *(v0 + 72);
    (*(v20 + 32))(v18, *(v0 + 80), v19);
    v22 = sub_23DD41388();
    v24 = v23;
    (*(v20 + 16))(v21, v18, v19);
    (*(v20 + 56))(v21, 0, 1, v19);
    sub_23DD21A98(v22, v24, v21);

    sub_23DCEFA38(v21, &qword_27E30E5B0, &qword_23DD44B60);
    (*(v20 + 8))(v18, v19);
    goto LABEL_9;
  }

  v7 = *(v0 + 32);
  sub_23DCEFA38(*(v0 + 80), &qword_27E30E5B0, &qword_23DD44B60);
  v8 = *(v7 + 56);
  if (v8)
  {
    v9 = *(*(v0 + 32) + 16);
    if (v9)
    {
      v10 = *(v7 + 48);
      swift_getKeyPath();
      swift_getKeyPath();
      v11 = v9;
      sub_23DD416D8();

      v12 = *(v0 + 24);
      if (v12)
      {
        v13 = *(v0 + 16);
        v14 = *(v0 + 88);
        v15 = *(v0 + 64);
        v16 = v11;
        sub_23DD0D798(v10, v8, v13, v12, v15);

        if (v6(v15, 1, v14) != 1)
        {
          v37 = *(v0 + 96);
          v36 = *(v0 + 104);
          v38 = *(v0 + 88);
          v39 = *(v0 + 72);
          (*(v37 + 32))(v36, *(v0 + 64), v38);
          (*(v37 + 16))(v39, v36, v38);
          (*(v37 + 56))(v39, 0, 1, v38);
          sub_23DD21A98(v10, v8, v39);
          sub_23DCEFA38(v39, &qword_27E30E5B0, &qword_23DD44B60);
          (*(v37 + 8))(v36, v38);
          goto LABEL_9;
        }

        sub_23DCEFA38(*(v0 + 64), &qword_27E30E5B0, &qword_23DD44B60);
      }

      v17 = *(v0 + 72);
      (*(*(v0 + 96) + 56))(v17, 1, 1, *(v0 + 88));
      sub_23DD21A98(v10, v8, v17);
      sub_23DCEFA38(v17, &qword_27E30E5B0, &qword_23DD44B60);
LABEL_9:

      v25 = *(v0 + 8);

      return v25();
    }
  }

  else
  {
    sub_23DD41648();
    v27 = sub_23DD42348();
    v28 = sub_23DD41638();
    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_23DCDB000, v28, v27, "Unable to determine account type, or suggestion for ShOowAddButton", v29, 2u);
      MEMORY[0x23EEFE6D0](v29, -1, -1);
    }

    v31 = *(v0 + 48);
    v30 = *(v0 + 56);
    v33 = *(v0 + 32);
    v32 = *(v0 + 40);

    (*(v31 + 8))(v30, v32);
    v34 = *(v33 + 16);
    if (v34)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 128) = 0;
      v35 = v34;
      sub_23DD416E8();
      sub_23DD01210();

      goto LABEL_9;
    }
  }

  type metadata accessor for AccountAddViewModel(0);
  sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);

  return sub_23DD41868();
}

void sub_23DD21A98(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  if (v4)
  {
    v8 = *&v4[OBJC_IVAR____TtC18AccountsUISettings19AccountAddViewModel_analyticsModel];
    if (v8)
    {
      v9 = sub_23DD41408();
      if ((*(*(v9 - 8) + 48))(a3, 1, v9) == 1)
      {
        v10 = 6;
      }

      else
      {
        v10 = 5;
      }

      *(v8 + OBJC_IVAR____TtC18AccountsUISettings25AccountAddAnalyticsSender_lastAddMechanism) = v10;
    }

    type metadata accessor for ShowAddButton(0);
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = v4;
    if (Strong)
    {
      sub_23DD10220(a1, a2, a3, Strong);
    }

    else
    {
      sub_23DD10000(a1, a2, a3);
    }
  }

  else
  {
    type metadata accessor for AccountAddViewModel(0);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    sub_23DD41868();
    __break(1u);
  }
}

void sub_23DD21C0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    v4 = sub_23DD42138();
    v5 = [objc_opt_self() bundleWithIdentifier_];

    if (v5)
    {
      v6 = sub_23DD42138();
      v7 = sub_23DD42138();
      v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

      sub_23DD42178();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E420, &unk_23DD44450);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_23DD43570;
      *(v9 + 56) = MEMORY[0x277D837D0];
      *(v9 + 64) = sub_23DCFD428();
      *(v9 + 32) = a1;
      *(v9 + 40) = a2;
      sub_23DD42148();

      return;
    }

    __break(1u);
  }

  else
  {
    v10 = sub_23DD42138();
    v11 = [objc_opt_self() bundleWithIdentifier_];

    if (v11)
    {
      v12 = sub_23DD42138();
      v13 = sub_23DD42138();
      v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

      sub_23DD42178();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_23DD21E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E410, &qword_23DD46740);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E3B8, &unk_23DD45BE0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v29 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v29 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;

  sub_23DD41EF8();
  sub_23DD41748();
  v22 = sub_23DD41758();
  (*(*(v22 - 8) + 56))(v7, 0, 1, v22);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;

  sub_23DD41EE8();
  v24 = *(v9 + 16);
  v24(v15, v20, v8);
  v24(v12, v18, v8);
  v25 = v30;
  v24(v30, v15, v8);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E418, &qword_23DD44400);
  v24(&v25[*(v26 + 48)], v12, v8);
  v27 = *(v9 + 8);
  v27(v18, v8);
  v27(v20, v8);
  v27(v12, v8);
  return (v27)(v15, v8);
}

void sub_23DD221DC(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23DD22310(uint64_t (*a1)(void), uint64_t a2, const char *a3, char a4)
{
  v7 = sub_23DD41658();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814FD160 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_2814FD168);
  swift_beginAccess();
  (*(v8 + 16))(v10, v11, v7);
  v12 = sub_23DD42338();
  v13 = sub_23DD41638();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_23DCDB000, v13, v12, a3, v14, 2u);
    MEMORY[0x23EEFE6D0](v14, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  return a1(a4 & 1);
}

void sub_23DD224DC(uint64_t a1@<X8>)
{
  v2 = sub_23DD42138();
  v3 = [objc_opt_self() bundleWithIdentifier_];

  if (v3)
  {
    v4 = sub_23DD42138();
    v5 = sub_23DD42138();
    v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

    sub_23DD42178();
    sub_23DCF4570();
    *a1 = sub_23DD41C48();
    *(a1 + 8) = v7;
    *(a1 + 16) = v8 & 1;
    *(a1 + 24) = v9;
  }

  else
  {
    __break(1u);
  }
}

void sub_23DD22604(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_23DD42138();
  v5 = [objc_opt_self() bundleWithIdentifier_];

  if (a1)
  {
    if (v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  else if (v5)
  {
LABEL_5:
    v6 = sub_23DD42138();
    v7 = sub_23DD42138();
    v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

    v9 = sub_23DD42178();
    v11 = v10;

    *&v12 = v9;
    *(&v12 + 1) = v11;
    sub_23DCF4570();
    sub_23DD41C48();
    sub_23DD41A78();
    *a2 = v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = v14;
    return;
  }

  __break(1u);
}

uint64_t sub_23DD22824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDA8, &qword_23DD46558);
  MEMORY[0x28223BE20](v4);
  v6 = &v24[-1] - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDB0, &qword_23DD46560);
  MEMORY[0x28223BE20](v7);
  v9 = &v24[-1] - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDB8, &qword_23DD46568);
  MEMORY[0x28223BE20](v10);
  v12 = &v24[-1] - v11;
  v24[3] = &type metadata for AccountsUIModel.FeatureFlags;
  v24[4] = sub_23DCE1B80();
  v13 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  v14 = sub_23DD41978();
  if (v13)
  {
    *v12 = v14;
    *(v12 + 1) = 0;
    v12[16] = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDD8, &qword_23DD46578);
    sub_23DD22B68(a1, a2, &v12[*(v15 + 44)]);
    sub_23DCFD8B0(v12, v9, &qword_27E30EDB8, &qword_23DD46568);
    swift_storeEnumTagMultiPayload();
    v16 = MEMORY[0x277CE1138];
    sub_23DCEF9F0(&qword_27E30EDC8, &qword_27E30EDB8, &qword_23DD46568, MEMORY[0x277CE1138]);
    sub_23DCEF9F0(&qword_27E30EDD0, &qword_27E30EDA8, &qword_23DD46558, v16);
    sub_23DD41A78();
    v17 = v12;
    v18 = &qword_27E30EDB8;
    v19 = &qword_23DD46568;
  }

  else
  {
    *v6 = v14;
    *(v6 + 1) = 0;
    v6[16] = 1;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDC0, &qword_23DD46570);
    sub_23DD22D34(a1, a2, &v6[*(v20 + 44)]);
    sub_23DCFD8B0(v6, v9, &qword_27E30EDA8, &qword_23DD46558);
    swift_storeEnumTagMultiPayload();
    v21 = MEMORY[0x277CE1138];
    sub_23DCEF9F0(&qword_27E30EDC8, &qword_27E30EDB8, &qword_23DD46568, MEMORY[0x277CE1138]);
    sub_23DCEF9F0(&qword_27E30EDD0, &qword_27E30EDA8, &qword_23DD46558, v21);
    sub_23DD41A78();
    v17 = v6;
    v18 = &qword_27E30EDA8;
    v19 = &qword_23DD46558;
  }

  return sub_23DCEFA38(v17, v18, v19);
}

uint64_t sub_23DD22B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDE0, &qword_23DD46580);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  LOBYTE(v20[0]) = 1;
  sub_23DCF4A10(a1, a2, v20);
  v20[0] = v12;
  v20[1] = 0;
  v21 = 1;
  _sSo13ACAccountTypeC18AccountsUISettingsE09localizedB4Name3forS2SSg_tFZ_0(a1, a2, v13, v14);
  v19[1] = v15;
  v19[2] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDE8, &qword_23DD46588);
  sub_23DD2CBB0();
  sub_23DCF4570();
  sub_23DD41D18();

  sub_23DCFD8B0(v11, v9, &qword_27E30EDE0, &qword_23DD46580);
  sub_23DCFD8B0(v9, a3, &qword_27E30EDE0, &qword_23DD46580);
  v17 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDF8, &qword_23DD46590) + 48);
  *v17 = 0;
  *(v17 + 8) = 1;
  sub_23DCEFA38(v11, &qword_27E30EDE0, &qword_23DD46580);
  return sub_23DCEFA38(v9, &qword_27E30EDE0, &qword_23DD46580);
}

uint64_t sub_23DD22D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE00, &qword_23DD46598);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21[-1] - v10;
  LOBYTE(v21[0]) = 1;
  sub_23DCF4A10(a1, a2, v21);
  v21[2] = v12;
  _sSo13ACAccountTypeC18AccountsUISettingsE09localizedB4Name3forS2SSg_tFZ_0(a1, a2, v13, v14);
  v21[0] = v15;
  v21[1] = v16;
  sub_23DCF4570();
  sub_23DD41D18();

  sub_23DCFD8B0(v11, v9, &qword_27E30EE00, &qword_23DD46598);
  *a3 = 0;
  *(a3 + 8) = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EE08, &qword_23DD465A0);
  sub_23DCFD8B0(v9, a3 + *(v17 + 48), &qword_27E30EE00, &qword_23DD46598);
  v18 = a3 + *(v17 + 64);
  *v18 = 0;
  *(v18 + 8) = 1;
  sub_23DCEFA38(v11, &qword_27E30EE00, &qword_23DD46598);
  return sub_23DCEFA38(v9, &qword_27E30EE00, &qword_23DD46598);
}

__n128 sub_23DD22EF4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v12.n128_u64[1] = &type metadata for AccountsUIModel.FeatureFlags;
  *&v13 = sub_23DCE1B80();
  v8 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v11);
  if (v8)
  {
    sub_23DD41978();
    sub_23DD23098(a1, a2, &v11);
    LOBYTE(v11) = v12.n128_u8[8];
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA50, &qword_23DD45CB8);
  sub_23DCEF9F0(&qword_27E30EA58, &qword_27E30EA50, &qword_23DD45CB8, MEMORY[0x277CE1138]);
  sub_23DD26D1C();
  sub_23DD41A78();
  v9 = v14[0];
  *(a5 + 32) = v13;
  *(a5 + 48) = v9;
  *(a5 + 58) = *(v14 + 10);
  result = v12;
  *a5 = v11;
  *(a5 + 16) = result;
  return result;
}

uint64_t sub_23DD23098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v16 = 0;
  sub_23DCF4A10(a1, a2, &v16);
  v7 = v6;

  sub_23DD41E18();
  v8 = sub_23DD41C18();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  *a5 = v7;
  *(a5 + 8) = v8;
  *(a5 + 16) = v10;
  *(a5 + 24) = v12 & 1;
  *(a5 + 32) = v14;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;

  sub_23DCFC0BC(v8, v10, v12 & 1);

  sub_23DCEF904(v8, v10, v12 & 1);
}

uint64_t sub_23DD231AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED60, &qword_23DD46520);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED68, &qword_23DD46528);
  MEMORY[0x28223BE20](v12);
  v14 = v23 - v13;
  *(&v38 + 1) = &type metadata for AccountsUIModel.FeatureFlags;
  *&v39 = sub_23DCE1B80();
  v15 = sub_23DD41308();
  __swift_destroy_boxed_opaque_existential_1Tm(&v37);
  if (v15)
  {
    v23[0] = sub_23DD41978();
    v31 = 1;
    sub_23DD23560(a1, a2, &v25);
    v34 = v27;
    v35 = v28;
    v36 = v29;
    v32 = v25;
    v33 = v26;
    v39 = v27;
    v40 = v28;
    v41 = v29;
    v37 = v25;
    v38 = v26;
    sub_23DCFD8B0(&v32, &v24, &qword_27E30ED90, &qword_23DD46540);
    sub_23DCEFA38(&v37, &qword_27E30ED90, &qword_23DD46540);
    *&v30[7] = v32;
    *&v30[55] = v35;
    *&v30[39] = v34;
    *&v30[23] = v33;
    v16 = *v30;
    *(v14 + 33) = *&v30[16];
    v17 = *&v30[48];
    *(v14 + 49) = *&v30[32];
    *(v14 + 65) = v17;
    v30[71] = v36;
    v18 = v31;
    *v14 = v23[0];
    *(v14 + 1) = 0;
    v14[16] = v18;
    *(v14 + 81) = *&v30[64];
    *(v14 + 17) = v16;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED78, &qword_23DD46538);
    v19 = MEMORY[0x277CE1138];
    sub_23DCEF9F0(&qword_27E30ED80, &qword_27E30ED78, &qword_23DD46538, MEMORY[0x277CE1138]);
    sub_23DCEF9F0(&qword_27E30ED88, &qword_27E30ED60, &qword_23DD46520, v19);
    return sub_23DD41A78();
  }

  else
  {
    *v11 = sub_23DD41978();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED70, &qword_23DD46530);
    sub_23DD23680(a1, a2, a3, a4, &v11[*(v21 + 44)]);
    sub_23DCFD8B0(v11, v14, &qword_27E30ED60, &qword_23DD46520);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED78, &qword_23DD46538);
    v22 = MEMORY[0x277CE1138];
    sub_23DCEF9F0(&qword_27E30ED80, &qword_27E30ED78, &qword_23DD46538, MEMORY[0x277CE1138]);
    sub_23DCEF9F0(&qword_27E30ED88, &qword_27E30ED60, &qword_23DD46520, v22);
    sub_23DD41A78();
    return sub_23DCEFA38(v11, &qword_27E30ED60, &qword_23DD46520);
  }
}

uint64_t sub_23DD23560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v16 = 0;
  sub_23DCF4A10(a1, a2, &v16);
  v7 = v6;

  sub_23DD41E18();
  v8 = sub_23DD41C18();
  v10 = v9;
  v12 = v11;
  v14 = v13;

  *a5 = v7;
  *(a5 + 8) = 0;
  *(a5 + 16) = 1;
  *(a5 + 24) = v8;
  *(a5 + 32) = v10;
  *(a5 + 40) = v12 & 1;
  *(a5 + 48) = v14;
  *(a5 + 56) = 0;
  *(a5 + 64) = 1;

  sub_23DCFC0BC(v8, v10, v12 & 1);

  sub_23DCEF904(v8, v10, v12 & 1);
}

uint64_t sub_23DD23680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v51 = a5;
  v9 = sub_23DD420F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ED98, &qword_23DD46548);
  v49 = *(v13 - 8);
  v50 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v48 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  LOBYTE(v52[0]) = 0;
  sub_23DCF4A10(a1, a2, v52);
  v52[0] = v18;
  (*(v10 + 104))(v12, *MEMORY[0x277D4D810], v9);
  v46 = v17;
  sub_23DD41C58();
  (*(v10 + 8))(v12, v9);

  v52[0] = a3;
  v52[1] = a4;
  sub_23DCF4570();

  v19 = sub_23DD41C48();
  v21 = v20;
  LOBYTE(a3) = v22;
  sub_23DD41BB8();
  v23 = sub_23DD41C28();
  v25 = v24;
  v27 = v26;

  sub_23DCEF904(v19, v21, a3 & 1);

  sub_23DD41E18();
  v28 = sub_23DD41C18();
  v30 = v29;
  v47 = v31;
  v33 = v32;

  sub_23DCEF904(v23, v25, v27 & 1);

  v35 = v48;
  v34 = v49;
  v36 = *(v49 + 16);
  v37 = v17;
  v38 = v50;
  v36(v48, v37, v50);
  v39 = v51;
  *v51 = 0;
  *(v39 + 8) = 1;
  v40 = v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EDA0, &qword_23DD46550);
  v36(&v40[v41[12]], v35, v38);
  v42 = &v40[v41[16]];
  *v42 = v28;
  *(v42 + 1) = v30;
  LOBYTE(v25) = v47 & 1;
  v42[16] = v47 & 1;
  *(v42 + 3) = v33;
  v43 = &v40[v41[20]];
  *v43 = 0;
  v43[8] = 1;
  sub_23DCFC0BC(v28, v30, v25);
  v44 = *(v34 + 8);

  v44(v46, v38);
  sub_23DCEF904(v28, v30, v25);

  return (v44)(v35, v38);
}

uint64_t sub_23DD23A54@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  *a2 = v4;
  return result;
}

uint64_t sub_23DD23AD4(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_23DD416E8();
}

unint64_t sub_23DD23B44()
{
  result = qword_27E30E5E8;
  if (!qword_27E30E5E8)
  {
    sub_23DCEFAE8(255, &qword_27E30E5D8, 0x277CBEB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E5E8);
  }

  return result;
}

id sub_23DD23BC0(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23DD41228();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_23DD41258();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_23DD411F8();

    swift_willThrow();
    v11 = sub_23DD41258();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_23DD23D0C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_23DD416E8();
}

uint64_t sub_23DD23D84(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_23DD416E8();
}

uint64_t sub_23DD23DF8(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_23DD416E8();
  return sub_23DD01210();
}

double sub_23DD23E74@<D0>(_OWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();

  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_23DD23EF0(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_23DD416E8();
}

unint64_t sub_23DD23F88()
{
  result = qword_27E30E618;
  if (!qword_27E30E618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E608, &unk_23DD44CF0);
    sub_23DCEF9F0(&qword_27E30E620, &qword_27E30E628, &qword_23DD44D08, MEMORY[0x277CE11A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E618);
  }

  return result;
}

unint64_t sub_23DD24040()
{
  result = qword_27E30E630;
  if (!qword_27E30E630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E610, &qword_23DD44D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E630);
  }

  return result;
}

unint64_t sub_23DD240C4()
{
  result = qword_27E30E650;
  if (!qword_27E30E650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E648, &qword_23DD44D20);
    sub_23DD24150();
    sub_23DD241A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E650);
  }

  return result;
}

unint64_t sub_23DD24150()
{
  result = qword_27E30E658;
  if (!qword_27E30E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E658);
  }

  return result;
}

unint64_t sub_23DD241A4()
{
  result = qword_27E30E660;
  if (!qword_27E30E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E660);
  }

  return result;
}

uint64_t sub_23DD24238()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DD416D8();
}

uint64_t sub_23DD242B0(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  sub_23DCFD8B0(a1, &v21 - v16, a5, a6);
  v18 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23DCFD8B0(v17, v15, a5, a6);
  v19 = v18;
  sub_23DD416E8();
  return sub_23DCEFA38(v17, a5, a6);
}

unint64_t sub_23DD243D4()
{
  result = qword_27E30E668;
  if (!qword_27E30E668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E638, &qword_23DD44D10);
    sub_23DCEF9F0(&qword_27E30E670, &qword_27E30E678, &qword_23DD44D28, MEMORY[0x277CDE580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E668);
  }

  return result;
}

unint64_t sub_23DD2448C()
{
  result = qword_27E30E688;
  if (!qword_27E30E688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E680, &qword_23DD44D58);
    sub_23DD24518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E688);
  }

  return result;
}

unint64_t sub_23DD24518()
{
  result = qword_27E30E690;
  if (!qword_27E30E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E690);
  }

  return result;
}

unint64_t sub_23DD2456C()
{
  result = qword_27E30E6B8;
  if (!qword_27E30E6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E6B8);
  }

  return result;
}

unint64_t sub_23DD245C0()
{
  result = qword_27E30E6C0;
  if (!qword_27E30E6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E6A8, &qword_23DD44D70);
    sub_23DD24678();
    sub_23DCEF9F0(&qword_27E30E6D8, &qword_27E30E6E0, &qword_23DD44D88, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E6C0);
  }

  return result;
}

unint64_t sub_23DD24678()
{
  result = qword_27E30E6C8;
  if (!qword_27E30E6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E6D0, &qword_23DD44D80);
    sub_23DD2456C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E6C8);
  }

  return result;
}

unint64_t sub_23DD24708()
{
  result = qword_27E30E6F8;
  if (!qword_27E30E6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E6F8);
  }

  return result;
}

unint64_t sub_23DD2475C()
{
  result = qword_27E30E700;
  if (!qword_27E30E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E700);
  }

  return result;
}

uint64_t sub_23DD247B0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23DD2CE30;

  return v6(a1);
}

void *sub_23DD248A8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EBB8, &qword_23DD46148);
  result = MEMORY[0x23EEFD790](v8, v6);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v8[0] + 16) > a1)
  {

    swift_getAtKeyPath();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_23DD24964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30ECC8, &qword_23DD462C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v17 - v12);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a5;
  v14[7] = a1;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a5;
  v15[7] = a1;
  sub_23DD41528();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_23DD41F88();
  a6(v13);
  return sub_23DCEFA38(v13, &qword_27E30ECC8, &qword_23DD462C0);
}

uint64_t sub_23DD24AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a4;
  v12[5] = a5;
  v12[6] = a6;
  v12[7] = a1;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a4;
  v13[5] = a5;
  v13[6] = a6;
  v13[7] = a1;
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_23DD41F88();
  a7(&v15);
}

unint64_t sub_23DD24C8C()
{
  result = qword_27E30E728;
  if (!qword_27E30E728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E720, &qword_23DD44E40);
    sub_23DD24D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E728);
  }

  return result;
}

unint64_t sub_23DD24D10()
{
  result = qword_27E30E730;
  if (!qword_27E30E730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E738, &qword_23DD44E48);
    sub_23DCEF9F0(&qword_27E30E740, &qword_27E30E748, &qword_23DD44E50, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E730);
  }

  return result;
}

unint64_t sub_23DD24DC8()
{
  result = qword_27E30E7B0;
  if (!qword_27E30E7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E768, &qword_23DD44E70);
    sub_23DCEF9F0(&qword_27E30E7A8, &qword_27E30E760, &qword_23DD44E68, MEMORY[0x277CDF1A8]);
    sub_23DD03710(&qword_27E30E7B8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E7B0);
  }

  return result;
}

unint64_t sub_23DD24EB0()
{
  result = qword_27E30E7C8;
  if (!qword_27E30E7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E788, &qword_23DD44E90);
    sub_23DD24F68();
    sub_23DCEF9F0(&qword_27E30E7D8, &qword_27E30E7C0, &qword_23DD44EB0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E7C8);
  }

  return result;
}

unint64_t sub_23DD24F68()
{
  result = qword_27E30E7D0;
  if (!qword_27E30E7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E780, &qword_23DD44E88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E770, &qword_23DD44E78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E768, &qword_23DD44E70);
    sub_23DD24DC8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E7D0);
  }

  return result;
}

unint64_t sub_23DD250CC()
{
  result = qword_27E30E810;
  if (!qword_27E30E810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E808, &qword_23DD44FF8);
    sub_23DD03710(&qword_27E30E818, type metadata accessor for SuggestionButton, &unk_23DD45B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E810);
  }

  return result;
}

unint64_t sub_23DD251A8()
{
  result = qword_27E30E828;
  if (!qword_27E30E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E828);
  }

  return result;
}

unint64_t sub_23DD25204()
{
  result = qword_27E30E848;
  if (!qword_27E30E848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E838, &qword_23DD45008);
    sub_23DCEF9F0(&qword_27E30E850, &qword_27E30E858, &qword_23DD45018, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E848);
  }

  return result;
}

unint64_t sub_23DD252C0()
{
  result = qword_27E30E8B0;
  if (!qword_27E30E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E8B0);
  }

  return result;
}

void sub_23DD254A4(uint64_t a1)
{
  sub_23DCEF378(319, &qword_2814FCD18, &qword_27E30E2D8, &qword_23DD47200);
  if (v1 <= 0x3F)
  {
    sub_23DD265CC(319, &unk_2814FCCC0, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_23DCEF378(319, &qword_2814FCD08, &qword_27E30E528, &qword_23DD44B80);
      if (v3 <= 0x3F)
      {
        sub_23DD265CC(319, &qword_2814FCD10, MEMORY[0x277D837D0], MEMORY[0x277CBCED0]);
        if (v4 <= 0x3F)
        {
          sub_23DCEF378(319, qword_2814FCD50, &qword_27E30E5B0, &qword_23DD44B60);
          if (v5 <= 0x3F)
          {
            sub_23DD265CC(319, &unk_2814FCD38, &type metadata for AccountAddViewModel.AddType, MEMORY[0x277CBCED0]);
            if (v6 <= 0x3F)
            {
              sub_23DCEF378(319, &qword_2814FCCE0, &unk_27E30E090, &qword_23DD436C0);
              if (v7 <= 0x3F)
              {
                sub_23DCEF378(319, &qword_2814FCCA8, &unk_27E30E050, &qword_23DD436A0);
                if (v8 <= 0x3F)
                {
                  sub_23DCEF378(319, &qword_2814FCD00, &qword_27E30E5C8, &qword_23DD44B88);
                  if (v9 <= 0x3F)
                  {
                    sub_23DCEF378(319, &qword_2814FCCE8, &qword_27E30E5D0, &qword_23DD44B98);
                    if (v10 <= 0x3F)
                    {
                      sub_23DCEF378(319, &qword_2814FCD30, &qword_27E30E588, &qword_23DD44B28);
                      if (v11 <= 0x3F)
                      {
                        swift_updateClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23DD259BC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_23DD25A18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23DD25AA0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_23DD25AFC(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23DD25B84(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_23DD25BE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23DD25C78(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_23DD25CD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23DD25D38(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
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

uint64_t sub_23DD25D94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23DD25E04(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_23DD25E60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_23DD25ED0()
{
  result = qword_27E30E8E8;
  if (!qword_27E30E8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E8F0, &qword_23DD45918);
    sub_23DD25F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E8E8);
  }

  return result;
}

unint64_t sub_23DD25F54()
{
  result = qword_27E30E8F8;
  if (!qword_27E30E8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E7E0, &qword_23DD44EB8);
    sub_23DD24D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E8F8);
  }

  return result;
}

unint64_t sub_23DD25FEC()
{
  result = qword_27E30E900;
  if (!qword_27E30E900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E908, &qword_23DD45920);
    sub_23DD26070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E900);
  }

  return result;
}

unint64_t sub_23DD26070()
{
  result = qword_27E30E910;
  if (!qword_27E30E910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E918, &qword_23DD45928);
    sub_23DCEF9F0(&qword_27E30E7F0, &qword_27E30E7E8, &qword_23DD44F98, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E910);
  }

  return result;
}

unint64_t sub_23DD26120()
{
  result = qword_27E30E940;
  if (!qword_27E30E940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E948, &qword_23DD45940);
    sub_23DD261A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E940);
  }

  return result;
}

unint64_t sub_23DD261A4()
{
  result = qword_27E30E950;
  if (!qword_27E30E950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E800, &qword_23DD44FA8);
    sub_23DD24040();
    sub_23DD250CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E950);
  }

  return result;
}

unint64_t sub_23DD2623C()
{
  result = qword_27E30E958;
  if (!qword_27E30E958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E960, &qword_23DD45948);
    sub_23DD25204();
    sub_23DCEF9F0(&qword_27E30E860, &qword_27E30E840, &qword_23DD45010, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E958);
  }

  return result;
}

void sub_23DD26348(uint64_t a1)
{
  sub_23DD264A4(319);
  if (v1 <= 0x3F)
  {
    sub_23DD26538(319);
    if (v2 <= 0x3F)
    {
      sub_23DD265CC(319, &qword_27E30E988, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_23DD265CC(319, &qword_27E30E990, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_23DD2C848(319, &qword_27E30E998, MEMORY[0x277CE8520], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_23DD264A4(uint64_t a1)
{
  if (!qword_27E30E978)
  {
    type metadata accessor for AccountsUIModel(255);
    sub_23DD03710(&qword_27E30E1A0, type metadata accessor for AccountsUIModel, &protocol conformance descriptor for AccountsUIModel);
    v1 = sub_23DD41898();
    if (!v2)
    {
      atomic_store(v1, &qword_27E30E978);
    }
  }
}

void sub_23DD26538(uint64_t a1)
{
  if (!qword_27E30E980)
  {
    type metadata accessor for AccountAddViewModel(255);
    sub_23DD03710(&qword_27E30E540, type metadata accessor for AccountAddViewModel, &protocol conformance descriptor for AccountAddViewModel);
    v1 = sub_23DD41898();
    if (!v2)
    {
      atomic_store(v1, &qword_27E30E980);
    }
  }
}

void sub_23DD265CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_23DD26644(uint64_t a1)
{
  sub_23DD266C8(319);
  if (v1 <= 0x3F)
  {
    sub_23DD41408();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23DD266C8(uint64_t a1)
{
  if (!qword_27E30E9B0)
  {
    sub_23DD41478();
    sub_23DD03710(&qword_27E30E548, MEMORY[0x277CE8530], MEMORY[0x277CE8528]);
    v1 = sub_23DD41898();
    if (!v2)
    {
      atomic_store(v1, &qword_27E30E9B0);
    }
  }
}

uint64_t sub_23DD267CC(uint64_t a1)
{
  result = sub_23DCEFAE8(319, &qword_2814FCC50, 0x277CB8F30);
  if (v2 <= 0x3F)
  {
    result = sub_23DD41408();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_23DD268B4()
{
  result = qword_27E30E9B8;
  if (!qword_27E30E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E9B8);
  }

  return result;
}

uint64_t sub_23DD26908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30E5B0, &qword_23DD44B60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23DD269AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DD26A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23DD26AA8(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_23DD26B2C()
{
  result = qword_27E30E9E0;
  if (!qword_27E30E9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E9D8, &qword_23DD45C00);
    sub_23DD26BB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E9E0);
  }

  return result;
}

unint64_t sub_23DD26BB0()
{
  result = qword_27E30E9E8;
  if (!qword_27E30E9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E9F0, &qword_23DD45C08);
    sub_23DD26C3C();
    sub_23DD26C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E9E8);
  }

  return result;
}

unint64_t sub_23DD26C3C()
{
  result = qword_27E30E9F8;
  if (!qword_27E30E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30E9F8);
  }

  return result;
}

unint64_t sub_23DD26C90()
{
  result = qword_27E30EA00;
  if (!qword_27E30EA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EA08, &qword_23DD45C10);
    sub_23DD26D1C();
    sub_23DD26D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EA00);
  }

  return result;
}

unint64_t sub_23DD26D1C()
{
  result = qword_27E30EA10;
  if (!qword_27E30EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EA10);
  }

  return result;
}

unint64_t sub_23DD26D70()
{
  result = qword_27E30EA18;
  if (!qword_27E30EA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30EA20, &qword_23DD45C18);
    sub_23DD26DFC();
    sub_23DD26D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EA18);
  }

  return result;
}

unint64_t sub_23DD26DFC()
{
  result = qword_27E30EA28;
  if (!qword_27E30EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EA28);
  }

  return result;
}

uint64_t objectdestroy_372Tm()
{
  v1 = type metadata accessor for ShowAddButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 32);
  v7 = sub_23DD41408();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  MEMORY[0x23EEFE770](v5 + *(v1 + 40));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_23DD26FA8(char a1)
{
  v3 = *(type metadata accessor for ShowAddButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_23DD20EC0(a1, v4);
}

unint64_t sub_23DD27018()
{
  result = qword_27E30EA30;
  if (!qword_27E30EA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E30E9D0, &qword_23DD45BF8);
    sub_23DCEF9F0(&qword_27E30EA38, &qword_27E30E9C8, &qword_23DD45BF0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E30EA30);
  }

  return result;
}

uint64_t sub_23DD270D0(uint64_t a1)
{
  v4 = *(type metadata accessor for ShowAddButton(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23DD03B48;

  return sub_23DD21378(a1, v6, v7, v1 + v5);
}

uint64_t sub_23DD271C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23DD2CE34;

  return sub_23DD247B0(a1, v4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23DD272C0(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_23DD2731C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_23DD2731C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23DD273E8(v11, 0, 0, 1, a1, a2);
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
    sub_23DCEFBF0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_23DD273E8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_23DD274F4(a5, a6);
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
    result = sub_23DD42568();
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

void *sub_23DD274F4(uint64_t a1, unint64_t a2)
{
  v3 = sub_23DD27540(a1, a2);
  sub_23DD27670(&unk_28500CA40);
  return v3;
}

void *sub_23DD27540(uint64_t a1, unint64_t a2)
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

  v6 = sub_23DD2775C(v5, 0);
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

  result = sub_23DD42568();
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
        v10 = sub_23DD42208();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23DD2775C(v10, 0);
        result = sub_23DD42528();
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

uint64_t sub_23DD27670(uint64_t result)
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

  result = sub_23DD277D0(result, v11, 1, v3);
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

void *sub_23DD2775C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E30EA88, &qword_23DD45D38);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}