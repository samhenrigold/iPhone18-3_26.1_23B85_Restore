uint64_t sub_1A98E4C68(char *a1, char *a2)
{
  v100 = a1;
  v101 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E38, &qword_1A9994A70);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v96 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v97 = &v94 - v5;
  v6 = type metadata accessor for SFAirDrop.DeclineAction(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v99 = &v94 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v94 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E18, &unk_1A9994A50);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v94 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54E8, &qword_1A99A5918);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v94 - v27;
  v29 = (&v94 + *(v26 + 56) - v27);
  sub_1A97C13A4(v100, &v94 - v27, &qword_1EB3B1E18, &unk_1A9994A50);
  sub_1A97C13A4(v101, v29, &qword_1EB3B1E18, &unk_1A9994A50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v100 = v13;
    v101 = v28;
    v39 = v15;
    sub_1A97C13A4(v28, v24, &qword_1EB3B1E18, &unk_1A9994A50);
    v40 = *v24;
    v41 = v24[1];
    v42 = v24[2];
    v43 = v24[3];
    v44 = v24[4];
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E28, &unk_1A9994A60) + 80);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A98E6488(v24 + v45, type metadata accessor for SFAirDrop.DeclineAction);

      v28 = v101;
LABEL_16:
      v58 = &qword_1EB3B54E8;
      v59 = &qword_1A99A5918;
LABEL_17:
      v60 = v28;
LABEL_63:
      sub_1A97B06FC(v60, v58, v59);
      v87 = 0;
      return v87 & 1;
    }

    v98 = v43;
    v99 = v44;
    v62 = *v29;
    v61 = v29[1];
    v63 = v29[3];
    v94 = v29[2];
    v95 = v42;
    v64 = v29[4];
    v96 = v63;
    v97 = v64;
    v65 = v24 + v45;
    v66 = v39;
    sub_1A98EEE34(v65, v39, type metadata accessor for SFAirDrop.DeclineAction);
    v67 = v29 + v45;
    v56 = v100;
    sub_1A98EEE34(v67, v100, type metadata accessor for SFAirDrop.DeclineAction);
    if (v40 == v62 && v41 == v61)
    {

      v68 = v98;
    }

    else
    {
      v71 = sub_1A99777E0();

      v68 = v98;
      if ((v71 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v70 = v101;
    v72 = v99;
    if (v95 == v94 && v68 == v96)
    {
    }

    else
    {
      v88 = sub_1A99777E0();

      if ((v88 & 1) == 0)
      {

LABEL_60:
        sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
        v92 = v66;
        goto LABEL_61;
      }
    }

    v89 = sub_1A9905C4C(v72, v97);

    if (v89 & 1) != 0 && (*v66 == *v56 && *(v66 + 8) == *(v56 + 8) || (sub_1A99777E0()))
    {
      v75 = *(v66 + 16);
      v76 = *(v66 + 24);
      v77 = *(v66 + 32);
      v78 = *(v66 + 40);
      v79 = *(v66 + 48);
      v107 = v75;
      v108 = v76;
      v109 = v77;
      v110 = v78;
      v111 = v79;
      v81 = *(v56 + 16);
      v82 = *(v56 + 24);
      v83 = *(v56 + 32);
      v84 = *(v56 + 40);
      v80 = v66;
LABEL_53:
      v90 = *(v56 + 48);
      v102 = v81;
      v103 = v82;
      v104 = v83;
      v105 = v84;
      v106 = v90;
      sub_1A97DC908(v75, v76, v77, v78, v79);
      sub_1A97DC908(v81, v82, v83, v84, v90);
      v91 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v107, &v102);
      sub_1A97DC96C(v102, v103, v104, v105, v106);
      sub_1A97DC96C(v107, v108, v109, v110, v111);
      sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A98E6488(v80, type metadata accessor for SFAirDrop.DeclineAction);
      if (v91)
      {
        sub_1A97B06FC(v70, &qword_1EB3B1E18, &unk_1A9994A50);
        v87 = 1;
        return v87 & 1;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1A97C13A4(v28, v19, &qword_1EB3B1E18, &unk_1A9994A50);
    v46 = *v19;
    v47 = v19[1];
    v48 = v19[3];
    v100 = v19[2];
    v49 = v19[4];
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E28, &unk_1A9994A60) + 80);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1A98E6488(v19 + v50, type metadata accessor for SFAirDrop.DeclineAction);

      goto LABEL_16;
    }

    v101 = v28;
    v52 = *v29;
    v51 = v29[1];
    v53 = v29[3];
    v95 = v29[2];
    v96 = v29[4];
    v97 = v49;
    v54 = v19 + v50;
    v39 = v99;
    sub_1A98EEE34(v54, v99, type metadata accessor for SFAirDrop.DeclineAction);
    v55 = v29 + v50;
    v56 = v98;
    sub_1A98EEE34(v55, v98, type metadata accessor for SFAirDrop.DeclineAction);
    if (v46 == v52 && v47 == v51)
    {

      v57 = v97;
LABEL_22:
      v70 = v101;
      if (v100 == v95 && v48 == v53)
      {
      }

      else
      {
        v73 = sub_1A99777E0();

        if ((v73 & 1) == 0)
        {

LABEL_58:
          sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
          v92 = v39;
LABEL_61:
          sub_1A98E6488(v92, type metadata accessor for SFAirDrop.DeclineAction);
LABEL_62:
          v58 = &qword_1EB3B1E18;
          v59 = &unk_1A9994A50;
          v60 = v70;
          goto LABEL_63;
        }
      }

      v74 = sub_1A9905C4C(v57, v96);

      if (v74 & 1) != 0 && (*v39 == *v56 && *(v39 + 8) == *(v56 + 8) || (sub_1A99777E0()))
      {
        v75 = *(v39 + 16);
        v76 = *(v39 + 24);
        v77 = *(v39 + 32);
        v78 = *(v39 + 40);
        v79 = *(v39 + 48);
        v107 = v75;
        v108 = v76;
        v109 = v77;
        v110 = v78;
        v111 = v79;
        v80 = v39;
        v81 = *(v56 + 16);
        v82 = *(v56 + 24);
        v83 = *(v56 + 32);
        v84 = *(v56 + 40);
        goto LABEL_53;
      }

      goto LABEL_58;
    }

    v69 = sub_1A99777E0();

    v57 = v97;
    if (v69)
    {
      goto LABEL_22;
    }

LABEL_56:

    sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
    sub_1A98E6488(v39, type metadata accessor for SFAirDrop.DeclineAction);
    v58 = &qword_1EB3B1E18;
    v59 = &unk_1A9994A50;
    v60 = v101;
    goto LABEL_63;
  }

  sub_1A97C13A4(v28, v22, &qword_1EB3B1E18, &unk_1A9994A50);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E30, &qword_1A99A5920) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97B06FC(&v22[v31], &qword_1EB3B1E38, &qword_1A9994A70);
    goto LABEL_16;
  }

  v32 = *v22;
  v33 = *v29;
  v34 = v97;
  sub_1A97D8380(&v22[v31], v97, &qword_1EB3B1E38, &qword_1A9994A70);
  v35 = v29 + v31;
  v36 = v96;
  sub_1A97D8380(v35, v96, &qword_1EB3B1E38, &qword_1A9994A70);
  if (v32)
  {
    if (v32 == 1)
    {
      v37 = 0xE700000000000000;
      v38 = 0x65766965636572;
      if (!v33)
      {
LABEL_40:
        v85 = 0xE400000000000000;
        if (v38 != 1684956531)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v37 = 0xE800000000000000;
      v38 = 0x6F666E4965726F6DLL;
      if (!v33)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v37 = 0xE400000000000000;
    v38 = 1684956531;
    if (!v33)
    {
      goto LABEL_40;
    }
  }

  if (v33 == 1)
  {
    v85 = 0xE700000000000000;
    if (v38 != 0x65766965636572)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v85 = 0xE800000000000000;
    if (v38 != 0x6F666E4965726F6DLL)
    {
LABEL_45:
      v86 = sub_1A99777E0();

      if (v86)
      {
        goto LABEL_46;
      }

      sub_1A97B06FC(v36, &qword_1EB3B1E38, &qword_1A9994A70);
      sub_1A97B06FC(v34, &qword_1EB3B1E38, &qword_1A9994A70);
      v58 = &qword_1EB3B1E18;
      v59 = &unk_1A9994A50;
      goto LABEL_17;
    }
  }

LABEL_43:
  if (v37 != v85)
  {
    goto LABEL_45;
  }

LABEL_46:
  v87 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  sub_1A97B06FC(v36, &qword_1EB3B1E38, &qword_1A9994A70);
  sub_1A97B06FC(v34, &qword_1EB3B1E38, &qword_1A9994A70);
  sub_1A97B06FC(v28, &qword_1EB3B1E18, &unk_1A9994A50);
  return v87 & 1;
}

uint64_t sub_1A98E5750(char *a1, char *a2)
{
  v100 = a1;
  v101 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E10, &qword_1A99A58B0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v96 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v97 = &v94 - v5;
  v6 = type metadata accessor for SFAirDrop.DeclineAction(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v98 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v99 = &v94 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v94 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v94 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF0, &qword_1A9994A28);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v94 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v94 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B54A8, &unk_1A99A58B8);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v94 - v27;
  v29 = (&v94 + *(v26 + 56) - v27);
  sub_1A97C13A4(v100, &v94 - v27, &qword_1EB3B1DF0, &qword_1A9994A28);
  sub_1A97C13A4(v101, v29, &qword_1EB3B1DF0, &qword_1A9994A28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v100 = v13;
    v101 = v28;
    v39 = v15;
    sub_1A97C13A4(v28, v24, &qword_1EB3B1DF0, &qword_1A9994A28);
    v40 = *v24;
    v41 = v24[1];
    v42 = v24[2];
    v43 = v24[3];
    v44 = v24[4];
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E00, &unk_1A99A48A0) + 80);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A98E6488(v24 + v45, type metadata accessor for SFAirDrop.DeclineAction);

      v28 = v101;
LABEL_16:
      v58 = &qword_1EB3B54A8;
      v59 = &unk_1A99A58B8;
LABEL_17:
      v60 = v28;
LABEL_63:
      sub_1A97B06FC(v60, v58, v59);
      v87 = 0;
      return v87 & 1;
    }

    v98 = v43;
    v99 = v44;
    v62 = *v29;
    v61 = v29[1];
    v63 = v29[3];
    v94 = v29[2];
    v95 = v42;
    v64 = v29[4];
    v96 = v63;
    v97 = v64;
    v65 = v24 + v45;
    v66 = v39;
    sub_1A98EEE34(v65, v39, type metadata accessor for SFAirDrop.DeclineAction);
    v67 = v29 + v45;
    v56 = v100;
    sub_1A98EEE34(v67, v100, type metadata accessor for SFAirDrop.DeclineAction);
    if (v40 == v62 && v41 == v61)
    {

      v68 = v98;
    }

    else
    {
      v71 = sub_1A99777E0();

      v68 = v98;
      if ((v71 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v70 = v101;
    v72 = v99;
    if (v95 == v94 && v68 == v96)
    {
    }

    else
    {
      v88 = sub_1A99777E0();

      if ((v88 & 1) == 0)
      {

LABEL_60:
        sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
        v92 = v66;
        goto LABEL_61;
      }
    }

    v89 = sub_1A9905C74(v72, v97);

    if (v89 & 1) != 0 && (*v66 == *v56 && *(v66 + 8) == *(v56 + 8) || (sub_1A99777E0()))
    {
      v75 = *(v66 + 16);
      v76 = *(v66 + 24);
      v77 = *(v66 + 32);
      v78 = *(v66 + 40);
      v79 = *(v66 + 48);
      v107 = v75;
      v108 = v76;
      v109 = v77;
      v110 = v78;
      v111 = v79;
      v81 = *(v56 + 16);
      v82 = *(v56 + 24);
      v83 = *(v56 + 32);
      v84 = *(v56 + 40);
      v80 = v66;
LABEL_53:
      v90 = *(v56 + 48);
      v102 = v81;
      v103 = v82;
      v104 = v83;
      v105 = v84;
      v106 = v90;
      sub_1A97DC908(v75, v76, v77, v78, v79);
      sub_1A97DC908(v81, v82, v83, v84, v90);
      v91 = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v107, &v102);
      sub_1A97DC96C(v102, v103, v104, v105, v106);
      sub_1A97DC96C(v107, v108, v109, v110, v111);
      sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A98E6488(v80, type metadata accessor for SFAirDrop.DeclineAction);
      if (v91)
      {
        sub_1A97B06FC(v70, &qword_1EB3B1DF0, &qword_1A9994A28);
        v87 = 1;
        return v87 & 1;
      }

      goto LABEL_62;
    }

    goto LABEL_60;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1A97C13A4(v28, v19, &qword_1EB3B1DF0, &qword_1A9994A28);
    v46 = *v19;
    v47 = v19[1];
    v48 = v19[3];
    v100 = v19[2];
    v49 = v19[4];
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E00, &unk_1A99A48A0) + 80);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1A98E6488(v19 + v50, type metadata accessor for SFAirDrop.DeclineAction);

      goto LABEL_16;
    }

    v101 = v28;
    v52 = *v29;
    v51 = v29[1];
    v53 = v29[3];
    v95 = v29[2];
    v96 = v29[4];
    v97 = v49;
    v54 = v19 + v50;
    v39 = v99;
    sub_1A98EEE34(v54, v99, type metadata accessor for SFAirDrop.DeclineAction);
    v55 = v29 + v50;
    v56 = v98;
    sub_1A98EEE34(v55, v98, type metadata accessor for SFAirDrop.DeclineAction);
    if (v46 == v52 && v47 == v51)
    {

      v57 = v97;
LABEL_22:
      v70 = v101;
      if (v100 == v95 && v48 == v53)
      {
      }

      else
      {
        v73 = sub_1A99777E0();

        if ((v73 & 1) == 0)
        {

LABEL_58:
          sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
          v92 = v39;
LABEL_61:
          sub_1A98E6488(v92, type metadata accessor for SFAirDrop.DeclineAction);
LABEL_62:
          v58 = &qword_1EB3B1DF0;
          v59 = &qword_1A9994A28;
          v60 = v70;
          goto LABEL_63;
        }
      }

      v74 = sub_1A9905C74(v57, v96);

      if (v74 & 1) != 0 && (*v39 == *v56 && *(v39 + 8) == *(v56 + 8) || (sub_1A99777E0()))
      {
        v75 = *(v39 + 16);
        v76 = *(v39 + 24);
        v77 = *(v39 + 32);
        v78 = *(v39 + 40);
        v79 = *(v39 + 48);
        v107 = v75;
        v108 = v76;
        v109 = v77;
        v110 = v78;
        v111 = v79;
        v80 = v39;
        v81 = *(v56 + 16);
        v82 = *(v56 + 24);
        v83 = *(v56 + 32);
        v84 = *(v56 + 40);
        goto LABEL_53;
      }

      goto LABEL_58;
    }

    v69 = sub_1A99777E0();

    v57 = v97;
    if (v69)
    {
      goto LABEL_22;
    }

LABEL_56:

    sub_1A98E6488(v56, type metadata accessor for SFAirDrop.DeclineAction);
    sub_1A98E6488(v39, type metadata accessor for SFAirDrop.DeclineAction);
    v58 = &qword_1EB3B1DF0;
    v59 = &qword_1A9994A28;
    v60 = v101;
    goto LABEL_63;
  }

  sub_1A97C13A4(v28, v22, &qword_1EB3B1DF0, &qword_1A9994A28);
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E08, &unk_1A9994A40) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1A97B06FC(&v22[v31], &qword_1EB3B1E10, &qword_1A99A58B0);
    goto LABEL_16;
  }

  v32 = *v22;
  v33 = *v29;
  v34 = v97;
  sub_1A97D8380(&v22[v31], v97, &qword_1EB3B1E10, &qword_1A99A58B0);
  v35 = v29 + v31;
  v36 = v96;
  sub_1A97D8380(v35, v96, &qword_1EB3B1E10, &qword_1A99A58B0);
  if (v32)
  {
    if (v32 == 1)
    {
      v37 = 0xE700000000000000;
      v38 = 0x65766965636572;
      if (!v33)
      {
LABEL_40:
        v85 = 0xE400000000000000;
        if (v38 != 1684956531)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v37 = 0xE800000000000000;
      v38 = 0x6F666E4965726F6DLL;
      if (!v33)
      {
        goto LABEL_40;
      }
    }
  }

  else
  {
    v37 = 0xE400000000000000;
    v38 = 1684956531;
    if (!v33)
    {
      goto LABEL_40;
    }
  }

  if (v33 == 1)
  {
    v85 = 0xE700000000000000;
    if (v38 != 0x65766965636572)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v85 = 0xE800000000000000;
    if (v38 != 0x6F666E4965726F6DLL)
    {
LABEL_45:
      v86 = sub_1A99777E0();

      if (v86)
      {
        goto LABEL_46;
      }

      sub_1A97B06FC(v36, &qword_1EB3B1E10, &qword_1A99A58B0);
      sub_1A97B06FC(v34, &qword_1EB3B1E10, &qword_1A99A58B0);
      v58 = &qword_1EB3B1DF0;
      v59 = &qword_1A9994A28;
      goto LABEL_17;
    }
  }

LABEL_43:
  if (v37 != v85)
  {
    goto LABEL_45;
  }

LABEL_46:
  v87 = _s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0();
  sub_1A97B06FC(v36, &qword_1EB3B1E10, &qword_1A99A58B0);
  sub_1A97B06FC(v34, &qword_1EB3B1E10, &qword_1A99A58B0);
  sub_1A97B06FC(v28, &qword_1EB3B1DF0, &qword_1A9994A28);
  return v87 & 1;
}

uint64_t SFAirDropSend.Transfer.State.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F0858(v2, v6, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850);

    sub_1A98EEE34(v6, a1, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    v12 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858) + 48);
      sub_1A98EEE34(v6, a1, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      v9 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
      (*(*(v9 - 8) + 56))(a1, 0, 1, v9);
      v10 = type metadata accessor for SFAirDropSend.Failure;
      v11 = &v6[v8];
    }

    else
    {
      v14 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
      (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
      v10 = type metadata accessor for SFAirDropSend.Transfer.State;
      v11 = v6;
    }

    return sub_1A98E6488(v11, v10);
  }
}

uint64_t sub_1A98E6488(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SFAirDropSend.Transfer.State.description.getter()
{
  v1 = type metadata accessor for SFAirDropSend.Failure(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E20, &qword_1A99A4860);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF8, &unk_1A9994A30);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v54 - v14;
  v16 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A98F0858(v0, v18, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v33 = v18[4];
        v34 = v18[5];
        v35 = v18[7];
        v36 = v18[8];

        sub_1A97B4368(v33, v34);
        sub_1A97B43C4(v35, v36);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868);
        v25 = &qword_1EB3B1E20;
        v26 = &qword_1A99A4860;
        sub_1A97D8380(v18 + *(v37 + 48), v9, &qword_1EB3B1E20, &qword_1A99A4860);
        v55 = 0;
        v56 = 0xE000000000000000;
        sub_1A99772B0();

        v55 = 0xD000000000000021;
        v56 = 0x80000001A99E7040;
        v38 = sub_1A97D463C();
        MEMORY[0x1AC5895B0](v38);

        MEMORY[0x1AC5895B0](41, 0xE100000000000000);
        v28 = v55;
        v29 = v9;
        goto LABEL_19;
      }

      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858) + 48);
      sub_1A98EEE34(v18, v6, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      sub_1A98EEE34(v18 + v51, v3, type metadata accessor for SFAirDropSend.Failure);
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_1A99772B0();
      MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E31F0);
      sub_1A9977400();
      MEMORY[0x1AC5895B0](0x63697274656D202CLL, 0xEB00000000203A73);
      v52 = SFAirDropSend.Transfer.Metrics.description.getter();
      MEMORY[0x1AC5895B0](v52);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v28 = v55;
      sub_1A98E6488(v3, type metadata accessor for SFAirDropSend.Failure);
    }

    else
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          return 0x646574616572632ELL;
        }

        else
        {
          return 0xD000000000000016;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850);

      sub_1A98EEE34(v18, v6, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_1A99772B0();

      v55 = 0xD000000000000020;
      v56 = 0x80000001A99E7010;
      v48 = SFAirDropSend.Transfer.Metrics.description.getter();
      MEMORY[0x1AC5895B0](v48);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v28 = v55;
    }

    v31 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
    v32 = v6;
LABEL_22:
    sub_1A98E6488(v32, v31);
    return v28;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880);
      v25 = &qword_1EB3B1DF8;
      v26 = &unk_1A9994A30;
      sub_1A97D8380(v18 + *(v49 + 48), v15, &qword_1EB3B1DF8, &unk_1A9994A30);
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_1A99772B0();

      v55 = 0xD000000000000024;
      v56 = 0x80000001A99E33D0;
      v50 = sub_1A97D4920();
      MEMORY[0x1AC5895B0](v50);

      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v28 = v55;
      v29 = v15;
      goto LABEL_19;
    }

    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888) + 64);
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1A99772B0();
    MEMORY[0x1AC5895B0](0xD000000000000020, 0x80000001A99E3400);
    sub_1A9976DF0();
    MEMORY[0x1AC5895B0](41, 0xE100000000000000);
    v28 = v55;
    v31 = type metadata accessor for SFAirDrop.DeclineAction;
    v32 = v18 + v30;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {

    v39 = v18[2];
    v40 = v18[3];
    v41 = v18[4];
    v42 = v18[5];
    v43 = v18[6];

    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870) + 80);
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1A99772B0();

    strcpy(v60, ".transferring(");
    HIBYTE(v60[1]) = -18;
    v55 = v39;
    v56 = v40;
    v57 = v41;
    v58 = v42;
    v59 = v43;
    v45 = SFAirDrop.Progress.description.getter();
    v47 = v46;
    sub_1A97C2280(v39, v40, v41);
    MEMORY[0x1AC5895B0](v45, v47);

    MEMORY[0x1AC5895B0](41, 0xE100000000000000);
    v28 = v60[0];
    v31 = type metadata accessor for SFAirDrop.DeclineAction;
    v32 = v18 + v44;
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v20 = v18[4];
    v21 = v18[5];
    v22 = v18[7];
    v23 = v18[8];

    sub_1A97B4368(v20, v21);
    sub_1A97B43C4(v22, v23);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878);
    v25 = &qword_1EB3B1798;
    v26 = &qword_1A99929A8;
    sub_1A97D8380(v18 + *(v24 + 48), v12, &qword_1EB3B1798, &qword_1A99929A8);
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1A99772B0();

    v55 = 0xD00000000000002DLL;
    v56 = 0x80000001A99E7070;
    v27 = sub_1A97D4074();
    MEMORY[0x1AC5895B0](v27);

    MEMORY[0x1AC5895B0](41, 0xE100000000000000);
    v28 = v55;
    v29 = v12;
LABEL_19:
    sub_1A97B06FC(v29, v25, v26);
    return v28;
  }

  sub_1A98E6488(v18, type metadata accessor for SFAirDropSend.Transfer.State);
  return 0x676E61686378652ELL;
}

uint64_t SFAirDropSend.Transfer.State.shortDescription.getter()
{
  v1 = type metadata accessor for SFAirDropSend.Failure(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A98F0858(v0, v6, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v15 = v6[4];
        v16 = v6[5];
        v17 = v6[7];
        v18 = v6[8];

        sub_1A97B4368(v15, v16);
        sub_1A97B43C4(v17, v18);
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868);
        sub_1A97B06FC(v6 + *(v19 + 48), &qword_1EB3B1E20, &qword_1A99A4860);
        return 0xD000000000000020;
      }

      else
      {
        v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858);
        sub_1A98EEE34(v6 + *(v31 + 48), v3, type metadata accessor for SFAirDropSend.Failure);
        v34 = 0;
        v35 = 0xE000000000000000;
        sub_1A99772B0();
        MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E31F0);
        sub_1A9977400();
        MEMORY[0x1AC5895B0](41, 0xE100000000000000);
        v32 = v34;
        sub_1A98E6488(v3, type metadata accessor for SFAirDropSend.Failure);
        sub_1A98E6488(v6, type metadata accessor for SFAirDropSend.Transfer.Metrics);
        return v32;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850);

      sub_1A98E6488(v6, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      return 0xD000000000000016;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      return 0x646574616572632ELL;
    }

    else
    {
      return 0xD000000000000016;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880);
      sub_1A97B06FC(v6 + *(v30 + 48), &qword_1EB3B1DF8, &unk_1A9994A30);
      return 0xD000000000000023;
    }

    else
    {

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888);
      sub_1A98E6488(v6 + *(v14 + 64), type metadata accessor for SFAirDrop.DeclineAction);
      return 0xD000000000000015;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {

    v20 = v6[2];
    v21 = v6[3];
    v22 = v6[4];
    v23 = v6[5];
    v24 = v6[6];

    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870) + 80);
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_1A99772B0();

    strcpy(v39, ".transferring(");
    HIBYTE(v39[1]) = -18;
    v34 = v20;
    v35 = v21;
    v36 = v22;
    v37 = v23;
    v38 = v24;
    v26 = SFAirDrop.Progress.description.getter();
    v28 = v27;
    sub_1A97C2280(v20, v21, v22);
    MEMORY[0x1AC5895B0](v26, v28);

    MEMORY[0x1AC5895B0](41, 0xE100000000000000);
    v29 = v39[0];
    sub_1A98E6488(v6 + v25, type metadata accessor for SFAirDrop.DeclineAction);
    return v29;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v8 = v6[4];
    v9 = v6[5];
    v10 = v6[7];
    v11 = v6[8];

    sub_1A97B4368(v8, v9);
    sub_1A97B43C4(v10, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878);
    sub_1A97B06FC(v6 + *(v12 + 48), &qword_1EB3B1798, &qword_1A99929A8);
    return 0xD00000000000002CLL;
  }

  else
  {
    sub_1A98E6488(v6, type metadata accessor for SFAirDropSend.Transfer.State);
    return 0x676E61686378652ELL;
  }
}

uint64_t SFAirDropSend.Transfer.State.cancelAction.getter@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17E8, &unk_1A99A4890);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v41 - v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  MEMORY[0x1EEE9AC00](v41);
  v3 = &v41 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF0, &qword_1A9994A28);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF8, &unk_1A9994A30);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E18, &unk_1A9994A50);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v41 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E20, &qword_1A99A4860);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A98F0858(v45, v17, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {

        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880);
        sub_1A97D8380(v17 + *(v27 + 48), v9, &qword_1EB3B1DF8, &unk_1A9994A30);
        sub_1A97C13A4(&v9[*(v7 + 60)], v6, &qword_1EB3B1DF0, &qword_1A9994A28);
        sub_1A97B06FC(v9, &qword_1EB3B1DF8, &unk_1A9994A30);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v28 = type metadata accessor for SFAirDrop.DeclineAction(0);
          (*(*(v28 - 8) + 56))(v46, 1, 1, v28);
          return sub_1A97B06FC(v6, &qword_1EB3B1DF0, &qword_1A9994A28);
        }

        v37 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E00, &unk_1A99A48A0) + 80)];
        goto LABEL_20;
      }

      goto LABEL_16;
    }

    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888) + 64);
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v30 = v17[4];
        v31 = v17[5];
        v32 = v17[7];
        v33 = v17[8];

        sub_1A97B4368(v30, v31);
        sub_1A97B43C4(v32, v33);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878);
        sub_1A97D8380(v17 + *(v34 + 48), v3, &qword_1EB3B1798, &qword_1A99929A8);
        v35 = v44;
        sub_1A97C13A4(&v3[*(v41 + 60)], v44, &qword_1EB3B17E8, &unk_1A99A4890);
        sub_1A97B06FC(v3, &qword_1EB3B1798, &qword_1A99929A8);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v36 = type metadata accessor for SFAirDrop.DeclineAction(0);
          (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
          return sub_1A97B06FC(v35, &qword_1EB3B17E8, &unk_1A99A4890);
        }

        v37 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17F8, &qword_1A9992A08) + 80);
        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 5)
      {
        v19 = v17[4];
        v20 = v17[5];
        v21 = v17[7];
        v22 = v17[8];

        sub_1A97B4368(v19, v20);
        sub_1A97B43C4(v21, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868);
        sub_1A97D8380(v17 + *(v23 + 48), v14, &qword_1EB3B1E20, &qword_1A99A4860);
        v24 = v43;
        sub_1A97C13A4(&v14[*(v12 + 60)], v43, &qword_1EB3B1E18, &unk_1A9994A50);
        sub_1A97B06FC(v14, &qword_1EB3B1E20, &qword_1A99A4860);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v25 = type metadata accessor for SFAirDrop.DeclineAction(0);
          (*(*(v25 - 8) + 56))(v46, 1, 1, v25);
          return sub_1A97B06FC(v24, &qword_1EB3B1E18, &unk_1A9994A50);
        }

        v37 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E28, &unk_1A9994A60) + 80);
        goto LABEL_20;
      }

LABEL_16:
      v38 = type metadata accessor for SFAirDrop.DeclineAction(0);
      (*(*(v38 - 8) + 56))(v46, 1, 1, v38);
      return sub_1A98E6488(v17, type metadata accessor for SFAirDropSend.Transfer.State);
    }

    sub_1A97C2280(v17[2], v17[3], v17[4]);

    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870) + 80);
  }

  v37 = v17 + v29;
LABEL_20:
  v39 = v46;
  sub_1A98EEE34(v37, v46, type metadata accessor for SFAirDrop.DeclineAction);
  v40 = type metadata accessor for SFAirDrop.DeclineAction(0);
  return (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
}

uint64_t SFAirDropSend.Transfer.State.currentProgressCount.getter()
{
  v1 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A98F0858(v0, v3, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 7)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v21 = v3[4];
        v22 = v3[5];
        v23 = v3[7];
        v24 = v3[8];

        sub_1A97B4368(v21, v22);
        sub_1A97B43C4(v23, v24);
        v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868) + 48);
        v10 = &qword_1EB3B1E20;
        v11 = &qword_1A99A4860;
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858);
        sub_1A98E6488(v3 + *(v12 + 48), type metadata accessor for SFAirDropSend.Failure);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850);
      }

      v25 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
LABEL_21:
      sub_1A98E6488(v3, v25);
      return 1000;
    }

    return 0;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {

      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880);
      sub_1A97B06FC(v3 + *(v26 + 48), &qword_1EB3B1DF8, &unk_1A9994A30);
      return 0;
    }

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888);
    sub_1A98E6488(v3 + *(v13 + 64), type metadata accessor for SFAirDrop.DeclineAction);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {

    v16 = v3[2];
    v15 = v3[3];
    v18 = v3[4];
    v17 = v3[5];
    v19 = v3[6];

    if (v18 >> 62)
    {
      if (v18 >> 62 == 1)
      {
        sub_1A97C2280(v16, v15, v18);
        v20 = 1000;
      }

      else
      {
        v28 = v18 != 0x8000000000000000 || (v15 | v16 | v17 | v19) != 0;
        v20 = v28 << 63 >> 63;
      }
    }

    else
    {
      v20 = 500;
      if ((v18 & 1) == 0 && v15 >= 1)
      {
        if ((v17 * 1000) >> 64 != (1000 * v17) >> 63)
        {
          __break(1u);
          return result;
        }

        v20 = 1000 * v17 / v15;
      }
    }

    v29 = v20;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870);
    sub_1A98E6488(v3 + *(v30 + 80), type metadata accessor for SFAirDrop.DeclineAction);
    return v29;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v25 = type metadata accessor for SFAirDropSend.Transfer.State;
    goto LABEL_21;
  }

  v5 = v3[4];
  v6 = v3[5];
  v7 = v3[7];
  v8 = v3[8];

  sub_1A97B4368(v5, v6);
  sub_1A97B43C4(v7, v8);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878) + 48);
  v10 = &qword_1EB3B1798;
  v11 = &qword_1A99929A8;
LABEL_17:
  sub_1A97B06FC(v3 + v9, v10, v11);
  return 1000;
}

unint64_t sub_1A98E7F78(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD00000000000001FLL;
    v6 = 0x726566736E617274;
    if (a1 != 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000028;
    if (a1 != 5)
    {
      v7 = 0x69676E6168637865;
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
    v1 = 0x64657461657263;
    v2 = 0xD000000000000022;
    v3 = 0x726566736E617274;
    if (a1 == 3)
    {
      v3 = 0xD000000000000015;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
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

uint64_t sub_1A98E80E8()
{
  v1 = 0x73736572676F7270;
  if (*v0 != 1)
  {
    v1 = 0x63416C65636E6163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1936487029;
  }
}

uint64_t sub_1A98E8144@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98F1BEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98E816C(uint64_t a1)
{
  v2 = sub_1A98F0714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E81A8(uint64_t a1)
{
  v2 = sub_1A98F0714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E81EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98F1D08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98E8214(uint64_t a1)
{
  v2 = sub_1A98F03D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E8250(uint64_t a1)
{
  v2 = sub_1A98F03D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E828C()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x7363697274656DLL;
  }
}

uint64_t sub_1A98E82CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7363697274656DLL && a2 == 0xE700000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A99E3B90 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A98E83B0(uint64_t a1)
{
  v2 = sub_1A98F042C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E83EC(uint64_t a1)
{
  v2 = sub_1A98F042C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E8428(uint64_t a1)
{
  v2 = sub_1A98F0768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E8464(uint64_t a1)
{
  v2 = sub_1A98F0768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E84A0(uint64_t a1)
{
  v2 = sub_1A98F0570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E84DC(uint64_t a1)
{
  v2 = sub_1A98F0570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E8518(uint64_t a1)
{
  v2 = sub_1A98F0480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E8554(uint64_t a1)
{
  v2 = sub_1A98F0480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A98E8590()
{
  v1 = 0x73736572676F7270;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x63416C65636E6163;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1A98E8620@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98F2040(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98E8648(uint64_t a1)
{
  v2 = sub_1A98F0618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E8684(uint64_t a1)
{
  v2 = sub_1A98F0618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E86C0(uint64_t a1)
{
  v2 = sub_1A98F066C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E86FC(uint64_t a1)
{
  v2 = sub_1A98F066C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E8738(uint64_t a1)
{
  v2 = sub_1A98F051C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E8774(uint64_t a1)
{
  v2 = sub_1A98F051C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E87B0()
{
  if (*v0)
  {
    return 0x74736575716572;
  }

  else
  {
    return 1936487029;
  }
}

uint64_t sub_1A98E87E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1936487029 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A98E88C0(uint64_t a1)
{
  v2 = sub_1A98F06C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E88FC(uint64_t a1)
{
  v2 = sub_1A98F06C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98E8938()
{
  if (*v0)
  {
    return 0x74736575716572;
  }

  else
  {
    return 0x6F437265646E6573;
  }
}

uint64_t sub_1A98E8980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F437265646E6573 && a2 == 0xED0000746361746ELL;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A98E8A64(uint64_t a1)
{
  v2 = sub_1A98F05C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98E8AA0(uint64_t a1)
{
  v2 = sub_1A98F05C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Transfer.State.encode(to:)(void *a1)
{
  *(&v135 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5208, &qword_1A99A48B0);
  *&v135 = *(*(&v135 + 1) - 8);
  MEMORY[0x1EEE9AC00](*(&v135 + 1));
  v133 = &v97 - v2;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5210, &qword_1A99A48B8);
  v132 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v129 = &v97 - v3;
  v102 = type metadata accessor for SFAirDropSend.Failure(0);
  MEMORY[0x1EEE9AC00](v102);
  v131 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  v5 = MEMORY[0x1EEE9AC00](v137);
  v128 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v130 = &v97 - v7;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5218, &qword_1A99A48C0);
  v126 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v125 = &v97 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E20, &qword_1A99A4860);
  MEMORY[0x1EEE9AC00](v101);
  v124 = &v97 - v9;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5220, &qword_1A99A48C8);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v97 - v10;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5228, &qword_1A99A48D0);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v97 - v11;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  MEMORY[0x1EEE9AC00](v100);
  v117 = &v97 - v12;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5230, &qword_1A99A48D8);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v97 - v13;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5238, &qword_1A99A48E0);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v15 = &v97 - v14;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5240, &qword_1A99A48E8);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v97 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF8, &unk_1A9994A30);
  MEMORY[0x1EEE9AC00](v99);
  v110 = &v97 - v17;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5248, &qword_1A99A48F0);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v97 - v18;
  v98 = type metadata accessor for SFAirDrop.DeclineAction(0);
  v19 = MEMORY[0x1EEE9AC00](v98);
  v136 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v106 = &v97 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5250, &qword_1A99A48F8);
  v103 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v97 - v23;
  v25 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v97 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5258, &unk_1A99A4900);
  v139 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142);
  v29 = &v97 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F03D8();
  v141 = v29;
  sub_1A9977AA0();
  sub_1A98F0858(v138, v27, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v31 = v142;
      v32 = v141;
      if (EnumCaseMultiPayload == 2)
      {
        v59 = *(v27 + 3);
        v138 = *(v27 + 2);
        v134 = v59;
        v60 = v141;
        v61 = *(v27 + 5);
        *&v135 = *(v27 + 4);
        *(&v135 + 1) = v61;
        v62 = *(v27 + 7);
        v137 = *(v27 + 6);
        v133 = v62;
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870);
        v64 = v136;
        sub_1A98EEE34(&v27[*(v63 + 80)], v136, type metadata accessor for SFAirDrop.DeclineAction);
        LOBYTE(v149) = 4;
        sub_1A98F0618();
        v65 = v121;
        sub_1A9977640();
        LOBYTE(v149) = 0;
        v66 = v123;
        v67 = v140;
        sub_1A9977690();

        if (v67)
        {
          sub_1A97C2280(v138, v134, v135);

          (*(v122 + 8))(v65, v66);
          sub_1A98E6488(v64, type metadata accessor for SFAirDrop.DeclineAction);
          v68 = *(v139 + 8);
          v69 = v60;
        }

        else
        {
          v92 = v134;
          *&v149 = v138;
          *(&v149 + 1) = v134;
          v93 = v135;
          v150 = v135;
          *&v151 = v137;
          LOBYTE(v144) = 1;
          sub_1A97D7EDC();
          sub_1A99776E0();
          sub_1A97C2280(v138, v92, v93);
          LOBYTE(v149) = 2;
          sub_1A9977650();
          v95 = v136;

          LOBYTE(v149) = 3;
          sub_1A98F04D4(&qword_1EB3B1998, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
          sub_1A99776E0();
          v31 = v142;
          v96 = v141;
          (*(v122 + 8))(v65, v66);
          sub_1A98E6488(v95, type metadata accessor for SFAirDrop.DeclineAction);
          v68 = *(v139 + 8);
          v69 = v96;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 3)
        {
          v74 = *(v27 + 2);
          v152 = *(v27 + 3);
          v153 = *(v27 + 8);
          v75 = *v27;
          v150 = *(v27 + 1);
          v151 = v74;
          v149 = v75;
          LOBYTE(v144) = 6;
          sub_1A98F0570();
          v76 = v114;
          sub_1A9977640();
          v146 = v151;
          v147 = v152;
          v148 = v153;
          v144 = v149;
          v145 = v150;
          sub_1A97D79F0();
          v77 = v116;
          sub_1A99776E0();
          (*(v115 + 8))(v76, v77);
          (*(v139 + 8))(v32, v31);
          return sub_1A97D7A44(&v149);
        }

        v33 = *(v27 + 2);
        v152 = *(v27 + 3);
        v153 = *(v27 + 8);
        v34 = *v27;
        v150 = *(v27 + 1);
        v151 = v33;
        v149 = v34;
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878);
        v36 = v117;
        sub_1A97D8380(&v27[*(v35 + 48)], v117, &qword_1EB3B1798, &qword_1A99929A8);
        LOBYTE(v144) = 5;
        sub_1A98F05C4();
        v37 = v118;
        sub_1A9977640();
        v146 = v151;
        v147 = v152;
        v148 = v153;
        v144 = v149;
        v145 = v150;
        v143 = 0;
        sub_1A97D7AEC();
        v38 = v120;
        v39 = v140;
        sub_1A99776E0();
        if (v39)
        {
          (*(v119 + 8))(v37, v38);
          sub_1A97B06FC(v36, &qword_1EB3B1798, &qword_1A99929A8);
          (*(v139 + 8))(v32, v31);
          return sub_1A97B44F8(&v149);
        }

        LOBYTE(v144) = 1;
        sub_1A97AF974(&qword_1EB3B1938, &qword_1EB3B1798, &qword_1A99929A8, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
        sub_1A99776E0();
        sub_1A97B44F8(&v149);
        (*(v119 + 8))(v37, v38);
        sub_1A97B06FC(v36, &qword_1EB3B1798, &qword_1A99929A8);
        v68 = *(v139 + 8);
        v69 = v32;
      }

      goto LABEL_37;
    }

    v43 = v142;
    v44 = v141;
    if (EnumCaseMultiPayload)
    {
      v80 = *v27;
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880);
      v82 = v110;
      sub_1A97D8380(&v27[*(v81 + 48)], v110, &qword_1EB3B1DF8, &unk_1A9994A30);
      LOBYTE(v149) = 2;
      sub_1A98F06C0();
      v83 = v111;
      sub_1A9977640();
      *&v149 = v80;
      LOBYTE(v144) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
      sub_1A98F07BC(&qword_1EB3B1910, &qword_1EB3B1918, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
      v84 = v113;
      v85 = v140;
      sub_1A99776E0();
      if (v85)
      {
        (*(v112 + 8))(v83, v84);
        sub_1A97B06FC(v82, &qword_1EB3B1DF8, &unk_1A9994A30);
        goto LABEL_27;
      }

      LOBYTE(v149) = 1;
      sub_1A97AF974(&qword_1EB3B52C0, &qword_1EB3B1DF8, &unk_1A9994A30, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      sub_1A99776E0();
      (*(v112 + 8))(v83, v84);
      sub_1A97B06FC(v82, &qword_1EB3B1DF8, &unk_1A9994A30);
LABEL_39:
      v68 = *(v139 + 8);
      v69 = v44;
      v94 = v43;
      return v68(v69, v94);
    }

    v45 = *v27;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888);
    v47 = v106;
    sub_1A98EEE34(&v27[*(v46 + 64)], v106, type metadata accessor for SFAirDrop.DeclineAction);
    LOBYTE(v149) = 1;
    sub_1A98F0714();
    v48 = v107;
    sub_1A9977640();
    *&v149 = v45;
    LOBYTE(v144) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
    sub_1A98F07BC(&qword_1EB3B1910, &qword_1EB3B1918, MEMORY[0x1E6968FB8], MEMORY[0x1E69E6300]);
    v49 = v109;
    v50 = v140;
    sub_1A99776E0();
    if (v50)
    {
      (*(v108 + 8))(v48, v49);
      sub_1A98E6488(v47, type metadata accessor for SFAirDrop.DeclineAction);
LABEL_27:
      (*(v139 + 8))(v44, v43);
    }

    LOBYTE(v149) = 1;
    sub_1A99776B0();
    LOBYTE(v149) = 2;
    sub_1A98F04D4(&qword_1EB3B1998, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
    sub_1A99776E0();
    (*(v108 + 8))(v48, v49);
    v73 = type metadata accessor for SFAirDrop.DeclineAction;
LABEL_34:
    sub_1A98E6488(v47, v73);
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v51 = *(v27 + 2);
      v152 = *(v27 + 3);
      v153 = *(v27 + 8);
      v52 = *v27;
      v150 = *(v27 + 1);
      v151 = v51;
      v149 = v52;
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868);
      v54 = v124;
      sub_1A97D8380(&v27[*(v53 + 48)], v124, &qword_1EB3B1E20, &qword_1A99A4860);
      LOBYTE(v144) = 7;
      sub_1A98F051C();
      v55 = v125;
      v31 = v142;
      v56 = v141;
      sub_1A9977640();
      v146 = v151;
      v147 = v152;
      v148 = v153;
      v144 = v149;
      v145 = v150;
      v143 = 0;
      sub_1A97D7AEC();
      v57 = v127;
      v58 = v140;
      sub_1A99776E0();
      if (v58)
      {
        (*(v126 + 8))(v55, v57);
        sub_1A97B06FC(v54, &qword_1EB3B1E20, &qword_1A99A4860);
        (*(v139 + 8))(v56, v31);
        return sub_1A97B44F8(&v149);
      }

      LOBYTE(v144) = 1;
      sub_1A97AF974(&qword_1EB3B5290, &qword_1EB3B1E20, &qword_1A99A4860, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      sub_1A99776E0();
      sub_1A97B44F8(&v149);
      (*(v126 + 8))(v55, v57);
      sub_1A97B06FC(v54, &qword_1EB3B1E20, &qword_1A99A4860);
    }

    else
    {
      v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858) + 48);
      v87 = v130;
      sub_1A98EEE34(v27, v130, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      v88 = v131;
      sub_1A98EEE34(&v27[v86], v131, type metadata accessor for SFAirDropSend.Failure);
      LOBYTE(v149) = 8;
      sub_1A98F0480();
      v89 = v129;
      v31 = v142;
      v56 = v141;
      sub_1A9977640();
      LOBYTE(v149) = 0;
      sub_1A98F04D4(&qword_1EB3B5270, type metadata accessor for SFAirDropSend.Transfer.Metrics, &protocol conformance descriptor for SFAirDropSend.Transfer.Metrics);
      v90 = v134;
      v91 = v140;
      sub_1A99776E0();
      if (!v91)
      {
        LOBYTE(v149) = 1;
        sub_1A98F04D4(&qword_1EB3B5280, type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
        sub_1A99776E0();
      }

      (*(v132 + 8))(v89, v90);
      sub_1A98E6488(v88, type metadata accessor for SFAirDropSend.Failure);
      sub_1A98E6488(v87, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    }

    v68 = *(v139 + 8);
    v69 = v56;
LABEL_37:
    v94 = v31;
    return v68(v69, v94);
  }

  if (EnumCaseMultiPayload == 7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850);
    v47 = v128;
    sub_1A98EEE34(v27, v128, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    LOBYTE(v149) = 9;
    sub_1A98F042C();
    v70 = v133;
    v43 = v142;
    v44 = v141;
    sub_1A9977640();
    LOBYTE(v149) = 0;
    sub_1A98F04D4(&qword_1EB3B5270, type metadata accessor for SFAirDropSend.Transfer.Metrics, &protocol conformance descriptor for SFAirDropSend.Transfer.Metrics);
    v71 = *(&v135 + 1);
    v72 = v140;
    sub_1A99776E0();
    if (!v72)
    {
      LOBYTE(v149) = 1;
      sub_1A9977650();
    }

    (*(v135 + 8))(v70, v71);
    v73 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload == 8)
  {
    LOBYTE(v149) = 0;
    sub_1A98F0768();
    v40 = v142;
    v41 = v141;
    sub_1A9977640();
    (*(v103 + 8))(v24, v22);
    return (*(v139 + 8))(v41, v40);
  }

  else
  {
    LOBYTE(v149) = 3;
    sub_1A98F066C();
    v78 = v142;
    v79 = v141;
    sub_1A9977640();
    (*(v104 + 8))(v15, v105);
    return (*(v139 + 8))(v79, v78);
  }
}

uint64_t SFAirDropSend.Transfer.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v158 = a2;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B52D8, &qword_1A99A4910);
  v140 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v146 = &v116 - v3;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B52E0, &qword_1A99A4918);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v156 = &v116 - v4;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B52E8, &qword_1A99A4920);
  v136 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v149 = &v116 - v5;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B52F0, &qword_1A99A4928);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v155 = &v116 - v6;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B52F8, &qword_1A99A4930);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v148 = &v116 - v7;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5300, &qword_1A99A4938);
  v135 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v154 = &v116 - v8;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5308, &qword_1A99A4940);
  v124 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v145 = &v116 - v9;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5310, &qword_1A99A4948);
  v128 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v147 = &v116 - v10;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5318, &qword_1A99A4950);
  v129 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v153 = &v116 - v11;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5320, &qword_1A99A4958);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v152 = &v116 - v12;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5328, &unk_1A99A4960);
  v151 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v14 = &v116 - v13;
  v150 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  v15 = MEMORY[0x1EEE9AC00](v150);
  v142 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v125 = &v116 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v144 = &v116 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v121 = &v116 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v116 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = (&v116 - v27);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v116 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v116 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v116 - v35;
  v37 = a1[3];
  v160 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_1A98F03D8();
  v157 = v14;
  v38 = v161;
  sub_1A9977A70();
  if (v38)
  {
    goto LABEL_13;
  }

  v39 = v152;
  v117 = v31;
  v119 = v25;
  v118 = v34;
  v116 = v28;
  v40 = v153;
  v41 = v155;
  v42 = v154;
  v43 = v156;
  v161 = 0;
  v120 = v36;
  v44 = v158;
  v45 = v159;
  v46 = v157;
  v47 = sub_1A9977620();
  v48 = (2 * *(v47 + 16)) | 1;
  v168 = v47;
  v169 = v47 + 32;
  v170 = 0;
  v171 = v48;
  v49 = sub_1A97AB860();
  if (v49 == 10 || v170 != v171 >> 1)
  {
    v56 = sub_1A9977300();
    swift_allocError();
    v58 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v58 = v150;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x1E69E6AF8], v56);
    swift_willThrow();
    goto LABEL_11;
  }

  if (v49 <= 4u)
  {
    if (v49 <= 1u)
    {
      v65 = v44;
      v66 = v151;
      v67 = v161;
      if (v49)
      {
        LOBYTE(v162) = 1;
        sub_1A98F0714();
        sub_1A9977530();
        if (!v67)
        {
          v78 = v65;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
          LOBYTE(v162) = 0;
          sub_1A98F07BC(&qword_1EB3B1AA8, &qword_1EB3B1AB0, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
          v79 = v127;
          sub_1A99775F0();
          LOBYTE(v162) = 1;
          sub_1A99775C0();
          v96 = v129;
          v98 = v97;
          v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888);
          v161 = 0;
          v156 = *(v99 + 64);
          *(v118 + 1) = v98;
          type metadata accessor for SFAirDrop.DeclineAction(0);
          LOBYTE(v162) = 2;
          sub_1A98F04D4(&qword_1EB3B1AD0, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
          v100 = v161;
          sub_1A99775F0();
          if (!v100)
          {
            (*(v96 + 8))(v40, v79);
            (*(v66 + 8))(v46, v45);
            swift_unknownObjectRelease();
            v115 = v118;
            swift_storeEnumTagMultiPayload();
            v54 = v120;
            sub_1A98EEE34(v115, v120, type metadata accessor for SFAirDropSend.Transfer.State);
            v55 = v160;
            v52 = v78;
            goto LABEL_48;
          }

          (*(v96 + 8))(v40, v79);
          (*(v66 + 8))(v46, v45);
          swift_unknownObjectRelease();

          goto LABEL_13;
        }
      }

      else
      {
        LOBYTE(v162) = 0;
        sub_1A98F0768();
        sub_1A9977530();
        if (!v67)
        {
          (*(v122 + 8))(v39, v123);
          (*(v66 + 8))(v46, v45);
          swift_unknownObjectRelease();
          v54 = v120;
          swift_storeEnumTagMultiPayload();
          v55 = v160;
          v52 = v158;
          goto LABEL_48;
        }
      }

      (*(v66 + 8))(v46, v45);
      goto LABEL_12;
    }

    v50 = v151;
    v51 = v161;
    if (v49 == 2)
    {
      LOBYTE(v162) = 2;
      sub_1A98F06C0();
      sub_1A9977530();
      if (!v51)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1908, &qword_1A99A3580);
        LOBYTE(v162) = 0;
        sub_1A98F07BC(&qword_1EB3B1AA8, &qword_1EB3B1AB0, MEMORY[0x1E6968FD0], MEMORY[0x1E69E6330]);
        v70 = v117;
        v71 = v130;
        sub_1A99775F0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF8, &unk_1A9994A30);
        LOBYTE(v162) = 1;
        sub_1A97AF974(&qword_1EB3B5348, &qword_1EB3B1DF8, &unk_1A9994A30, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
        v86 = v147;
        sub_1A99775F0();
        (*(v128 + 8))(v86, v71);
        (*(v50 + 8))(v157, v159);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v104 = v70;
LABEL_46:
        v54 = v120;
        sub_1A98EEE34(v104, v120, type metadata accessor for SFAirDropSend.Transfer.State);
        v55 = v160;
        goto LABEL_47;
      }
    }

    else
    {
      if (v49 == 3)
      {
        v52 = v44;
        LOBYTE(v162) = 3;
        sub_1A98F066C();
        v53 = v145;
        sub_1A9977530();
        if (!v51)
        {
          (*(v124 + 8))(v53, v126);
          (*(v50 + 8))(v46, v45);
          swift_unknownObjectRelease();
          v54 = v120;
          swift_storeEnumTagMultiPayload();
          v55 = v160;
LABEL_48:
          sub_1A98EEE34(v54, v52, type metadata accessor for SFAirDropSend.Transfer.State);
          v59 = v55;
          return __swift_destroy_boxed_opaque_existential_0Tm(v59);
        }

        goto LABEL_33;
      }

      LOBYTE(v162) = 4;
      sub_1A98F0618();
      sub_1A9977530();
      if (!v51)
      {
        LOBYTE(v162) = 0;
        v74 = sub_1A99775A0();
        v89 = v42;
        v90 = v116;
        *v116 = v74;
        v90[1] = v91;
        v161 = v91;
        LOBYTE(v162) = 1;
        sub_1A97D826C();
        sub_1A99775F0();
        LOBYTE(v162) = 2;
        v111 = sub_1A9977550();
        v113 = v112;
        v156 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870) + 80);
        v90[7] = v111;
        v90[8] = v113;
        v155 = v113;
        type metadata accessor for SFAirDrop.DeclineAction(0);
        LOBYTE(v162) = 3;
        sub_1A98F04D4(&qword_1EB3B1AD0, type metadata accessor for SFAirDrop.DeclineAction, &protocol conformance descriptor for SFAirDrop.DeclineAction);
        v114 = v141;
        sub_1A99775F0();
        (*(v135 + 8))(v89, v114);
        (*(v50 + 8))(v46, v45);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v104 = v90;
        goto LABEL_46;
      }
    }

LABEL_33:
    (*(v50 + 8))(v46, v45);
    goto LABEL_12;
  }

  if (v49 <= 6u)
  {
    if (v49 == 5)
    {
      LOBYTE(v162) = 5;
      sub_1A98F05C4();
      v68 = v161;
      sub_1A9977530();
      if (!v68)
      {
        LOBYTE(v162) = 0;
        sub_1A97D8218();
        v69 = v134;
        sub_1A99775F0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
        v167 = 1;
        sub_1A97AF974(&qword_1EB3B1AC0, &qword_1EB3B1798, &qword_1A99929A8, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
        v94 = v119;
        v95 = v148;
        sub_1A99775F0();
        (*(v133 + 8))(v95, v69);
        (*(v151 + 8))(v46, v45);
        swift_unknownObjectRelease();
LABEL_45:
        swift_storeEnumTagMultiPayload();
        v104 = v94;
        goto LABEL_46;
      }
    }

    else
    {
      LOBYTE(v162) = 6;
      sub_1A98F0570();
      v80 = v161;
      sub_1A9977530();
      if (!v80)
      {
        sub_1A97D81C4();
        v81 = v132;
        sub_1A99775F0();
        v82 = v151;
        (*(v131 + 8))(v41, v81);
        (*(v82 + 8))(v46, v45);
        swift_unknownObjectRelease();
        v101 = v165;
        v102 = v121;
        *(v121 + 2) = v164;
        *(v102 + 48) = v101;
        *(v102 + 64) = v166;
        v103 = v163;
        *v102 = v162;
        *(v102 + 16) = v103;
        swift_storeEnumTagMultiPayload();
        v54 = v120;
        sub_1A98EEE34(v102, v120, type metadata accessor for SFAirDropSend.Transfer.State);
        v55 = v160;
LABEL_47:
        v52 = v44;
        goto LABEL_48;
      }
    }

LABEL_11:
    (*(v151 + 8))(v46, v45);
    goto LABEL_12;
  }

  if (v49 == 7)
  {
    LOBYTE(v162) = 7;
    sub_1A98F051C();
    v72 = v161;
    sub_1A9977530();
    v73 = v151;
    if (!v72)
    {
      LOBYTE(v162) = 0;
      sub_1A97D8218();
      sub_1A99775F0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E20, &qword_1A99A4860);
      v167 = 1;
      v87 = v143;
      sub_1A97AF974(&qword_1EB3B5340, &qword_1EB3B1E20, &qword_1A99A4860, &protocol conformance descriptor for SFAirDrop.PermissionRequest<A>);
      v94 = v144;
      v88 = v149;
      sub_1A99775F0();
      (*(v136 + 8))(v88, v87);
      (*(v73 + 8))(v46, v45);
      swift_unknownObjectRelease();
      goto LABEL_45;
    }

    goto LABEL_11;
  }

  v61 = v151;
  if (v49 != 8)
  {
    LOBYTE(v162) = 9;
    sub_1A98F042C();
    v75 = v146;
    v76 = v159;
    v77 = v161;
    sub_1A9977530();
    if (v77)
    {
      (*(v61 + 8))(v46, v76);
      swift_unknownObjectRelease();
      v59 = v160;
      return __swift_destroy_boxed_opaque_existential_0Tm(v59);
    }

    type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
    LOBYTE(v162) = 0;
    sub_1A98F04D4(&qword_1EB3B5330, type metadata accessor for SFAirDropSend.Transfer.Metrics, &protocol conformance descriptor for SFAirDropSend.Transfer.Metrics);
    v85 = v137;
    sub_1A99775F0();
    LOBYTE(v162) = 1;
    v92 = sub_1A9977550();
    v93 = v140;
    v105 = v92;
    v107 = v106;
    v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850) + 48);
    v109 = v93;
    v161 = 0;
    v94 = v142;
    v110 = &v142[v108];
    (*(v109 + 8))(v75, v85);
    (*(v61 + 8))(v46, v159);
    swift_unknownObjectRelease();
    *v110 = v105;
    *(v110 + 1) = v107;
    goto LABEL_45;
  }

  LOBYTE(v162) = 8;
  sub_1A98F0480();
  v62 = v43;
  v63 = v159;
  v64 = v161;
  sub_1A9977530();
  if (!v64)
  {
    type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
    LOBYTE(v162) = 0;
    sub_1A98F04D4(&qword_1EB3B5330, type metadata accessor for SFAirDropSend.Transfer.Metrics, &protocol conformance descriptor for SFAirDropSend.Transfer.Metrics);
    v83 = v125;
    v84 = v139;
    sub_1A99775F0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858);
    type metadata accessor for SFAirDropSend.Failure(0);
    LOBYTE(v162) = 1;
    sub_1A98F04D4(&qword_1EB3B5338, type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    sub_1A99775F0();
    (*(v138 + 8))(v62, v84);
    (*(v61 + 8))(v46, v159);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v104 = v83;
    goto LABEL_46;
  }

  (*(v61 + 8))(v46, v63);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v59 = v160;
  return __swift_destroy_boxed_opaque_existential_0Tm(v59);
}

uint64_t SFAirDropSend.Transfer.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDropSend.Transfer(0) + 20);
  v4 = sub_1A9976230();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDropSend.Transfer.displayPriority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SFAirDropSend.Transfer(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t SFAirDropSend.Transfer.activeInterfaceType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SFAirDropSend.Transfer(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t SFAirDropSend.Transfer.endpointID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDropSend.Transfer(0) + 40);
  v4 = *(type metadata accessor for SFAirDropSend.Request(0) + 28);
  v5 = sub_1A99762C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t SFAirDropSend.Transfer.bundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropSend.Transfer(0) + 44));

  return v1;
}

uint64_t SFAirDropSend.Transfer.receiverName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropSend.Transfer(0) + 48));

  return v1;
}

uint64_t SFAirDropSend.Transfer.init(id:sendRequest:receiverName:startDate:state:displayPriority:bundleIdentifier:activeInterfaceType:presenter:networkMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12, uint64_t a13)
{
  v19 = *a7;
  v20 = *a11;
  sub_1A98EEE34(a1, a9, type metadata accessor for SFAirDrop.TransferIdentifier);
  v21 = type metadata accessor for SFAirDropSend.Transfer(0);
  sub_1A98EEE34(a2, a9 + v21[10], type metadata accessor for SFAirDropSend.Request);
  v22 = (a9 + v21[12]);
  *v22 = a3;
  v22[1] = a4;
  v23 = v21[5];
  v24 = sub_1A9976230();
  (*(*(v24 - 8) + 32))(a9 + v23, a5, v24);
  sub_1A98EEE34(a6, a9 + v21[6], type metadata accessor for SFAirDropSend.Transfer.State);
  *(a9 + v21[7]) = v19;
  v25 = (a9 + v21[11]);
  *v25 = a8;
  v25[1] = a10;
  *(a9 + v21[8]) = v20;
  sub_1A98EEE34(a12, a9 + v21[9], type metadata accessor for SFAirDropClient.Identifier);
  return sub_1A98EEE34(a13, a9 + v21[13], type metadata accessor for SFAirDrop.NetworkMetrics);
}

double SFAirDropSend.Transfer.update(state:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A98F0858(v2, a2, type metadata accessor for SFAirDrop.TransferIdentifier);
  v5 = type metadata accessor for SFAirDropSend.Transfer(0);
  sub_1A98F0858(v2 + v5[10], a2 + v5[10], type metadata accessor for SFAirDropSend.Request);
  v6 = (v2 + v5[12]);
  v8 = *v6;
  v7 = v6[1];
  v9 = v5[5];
  v10 = sub_1A9976230();
  (*(*(v10 - 8) + 16))(a2 + v9, v2 + v9, v10);
  sub_1A98F0858(a1, a2 + v5[6], type metadata accessor for SFAirDropSend.Transfer.State);
  LOBYTE(v9) = *(v2 + v5[7]);
  v11 = (v2 + v5[11]);
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v2 + v5[8]);
  sub_1A98F0858(v2 + v5[9], a2 + v5[9], type metadata accessor for SFAirDropClient.Identifier);
  sub_1A98F0858(v2 + v5[13], a2 + v5[13], type metadata accessor for SFAirDrop.NetworkMetrics);
  v15 = (a2 + v5[12]);
  *v15 = v8;
  v15[1] = v7;
  *(a2 + v5[7]) = v9;
  v16 = (a2 + v5[11]);
  *v16 = v13;
  v16[1] = v12;
  *(a2 + v5[8]) = v14;

  return result;
}

double SFAirDropSend.Transfer.update(displayPriority:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1A98F0858(v2, a2, type metadata accessor for SFAirDrop.TransferIdentifier);
  v5 = type metadata accessor for SFAirDropSend.Transfer(0);
  sub_1A98F0858(v2 + v5[10], a2 + v5[10], type metadata accessor for SFAirDropSend.Request);
  v6 = (v2 + v5[12]);
  v8 = *v6;
  v7 = v6[1];
  v9 = v5[5];
  v10 = sub_1A9976230();
  (*(*(v10 - 8) + 16))(a2 + v9, v2 + v9, v10);
  sub_1A98F0858(v2 + v5[6], a2 + v5[6], type metadata accessor for SFAirDropSend.Transfer.State);
  v11 = (v2 + v5[11]);
  v13 = *v11;
  v12 = v11[1];
  v14 = *(v2 + v5[8]);
  sub_1A98F0858(v2 + v5[9], a2 + v5[9], type metadata accessor for SFAirDropClient.Identifier);
  sub_1A98F0858(v2 + v5[13], a2 + v5[13], type metadata accessor for SFAirDrop.NetworkMetrics);
  v15 = (a2 + v5[12]);
  *v15 = v8;
  v15[1] = v7;
  *(a2 + v5[7]) = v4;
  v16 = (a2 + v5[11]);
  *v16 = v13;
  v16[1] = v12;
  *(a2 + v5[8]) = v14;

  return result;
}

double SFAirDropSend.Transfer.update(activeInterfaceType:)@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1A98F0858(v2, a2, type metadata accessor for SFAirDrop.TransferIdentifier);
  v5 = type metadata accessor for SFAirDropSend.Transfer(0);
  sub_1A98F0858(v2 + v5[10], a2 + v5[10], type metadata accessor for SFAirDropSend.Request);
  v6 = (v2 + v5[12]);
  v8 = *v6;
  v7 = v6[1];
  v9 = v5[5];
  v10 = sub_1A9976230();
  (*(*(v10 - 8) + 16))(a2 + v9, v2 + v9, v10);
  sub_1A98F0858(v2 + v5[6], a2 + v5[6], type metadata accessor for SFAirDropSend.Transfer.State);
  v11 = *(v2 + v5[7]);
  v12 = (v2 + v5[11]);
  v14 = *v12;
  v13 = v12[1];
  sub_1A98F0858(v2 + v5[9], a2 + v5[9], type metadata accessor for SFAirDropClient.Identifier);
  sub_1A98F0858(v2 + v5[13], a2 + v5[13], type metadata accessor for SFAirDrop.NetworkMetrics);
  v15 = (a2 + v5[12]);
  *v15 = v8;
  v15[1] = v7;
  *(a2 + v5[7]) = v11;
  v16 = (a2 + v5[11]);
  *v16 = v14;
  v16[1] = v13;
  *(a2 + v5[8]) = v4;

  return result;
}

double SFAirDropSend.Transfer.update(networkMetrics:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1A98F0858(v3, a2, type metadata accessor for SFAirDrop.TransferIdentifier);
  v6 = type metadata accessor for SFAirDropSend.Transfer(0);
  sub_1A98F0858(v3 + v6[10], a2 + v6[10], type metadata accessor for SFAirDropSend.Request);
  v7 = (v3 + v6[12]);
  v9 = *v7;
  v8 = v7[1];
  v10 = v6[5];
  v11 = sub_1A9976230();
  (*(*(v11 - 8) + 16))(a2 + v10, v3 + v10, v11);
  sub_1A98F0858(v3 + v6[6], a2 + v6[6], type metadata accessor for SFAirDropSend.Transfer.State);
  v12 = *(v3 + v6[7]);
  v13 = (v3 + v6[11]);
  v15 = *v13;
  v14 = v13[1];
  v16 = *(v3 + v6[8]);
  sub_1A98F0858(v3 + v6[9], a2 + v6[9], type metadata accessor for SFAirDropClient.Identifier);
  sub_1A98F0858(a1, a2 + v6[13], type metadata accessor for SFAirDrop.NetworkMetrics);
  v17 = (a2 + v6[12]);
  *v17 = v9;
  v17[1] = v8;
  *(a2 + v6[7]) = v12;
  v18 = (a2 + v6[11]);
  *v18 = v15;
  v18[1] = v14;
  *(a2 + v6[8]) = v16;

  return result;
}

uint64_t SFAirDropSend.Transfer.description.getter(uint64_t a1)
{
  v1 = _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
  v3 = sub_1A98752D4(8, v1, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x1AC589540](v3, v5, v7, v9);

  MEMORY[0x1AC5895B0](32, 0xE100000000000000);
  type metadata accessor for SFAirDropSend.Transfer(0);
  v11 = SFAirDropSend.Transfer.State.description.getter();
  MEMORY[0x1AC5895B0](v11);

  return v10;
}

unint64_t sub_1A98ED154(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000010;
    v6 = 0x7265766965636572;
    if (a1 != 8)
    {
      v6 = 0x4D6B726F7774656ELL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x65746E6573657270;
    if (a1 != 5)
    {
      v7 = 0x75716552646E6573;
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
    v1 = 25705;
    v2 = 0x6574617473;
    v3 = 0x5079616C70736964;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x7461447472617473;
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

uint64_t sub_1A98ED2C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98F21B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98ED2F0(uint64_t a1)
{
  v2 = sub_1A98F08E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98ED32C(uint64_t a1)
{
  v2 = sub_1A98F08E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Transfer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5350, &qword_1A99A4970);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F08E0();
  sub_1A9977AA0();
  v11[15] = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier(0);
  sub_1A98F04D4(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  sub_1A99776E0();
  if (!v2)
  {
    v9 = type metadata accessor for SFAirDropSend.Transfer(0);
    v11[14] = 1;
    sub_1A9976230();
    sub_1A98F04D4(&qword_1EB3B0C58, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1A99776E0();
    v11[13] = 2;
    type metadata accessor for SFAirDropSend.Transfer.State(0);
    sub_1A98F04D4(&qword_1EB3B5360, type metadata accessor for SFAirDropSend.Transfer.State, &protocol conformance descriptor for SFAirDropSend.Transfer.State);
    sub_1A99776E0();
    v11[12] = *(v3 + *(v9 + 28));
    v11[11] = 3;
    sub_1A97D843C();
    sub_1A99776E0();
    v11[10] = *(v3 + *(v9 + 32));
    v11[9] = 4;
    sub_1A97D84E4();
    sub_1A9977680();
    v11[8] = 5;
    type metadata accessor for SFAirDropClient.Identifier(0);
    sub_1A98F04D4(&qword_1EB3B1B08, type metadata accessor for SFAirDropClient.Identifier, &protocol conformance descriptor for SFAirDropClient.Identifier);
    sub_1A99776E0();
    v11[7] = 6;
    type metadata accessor for SFAirDropSend.Request(0);
    sub_1A98F04D4(&qword_1EB3B41C8, type metadata accessor for SFAirDropSend.Request, &protocol conformance descriptor for SFAirDropSend.Request);
    sub_1A99776E0();
    v11[6] = 7;
    sub_1A9977650();
    v11[5] = 8;
    sub_1A9977650();
    v11[4] = 9;
    type metadata accessor for SFAirDrop.NetworkMetrics(0);
    sub_1A98F04D4(&qword_1EB3B1B40, type metadata accessor for SFAirDrop.NetworkMetrics, &protocol conformance descriptor for SFAirDrop.NetworkMetrics);
    sub_1A99776E0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SFAirDropSend.Transfer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = type metadata accessor for SFAirDrop.NetworkMetrics(0);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SFAirDropSend.Request(0);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SFAirDropClient.Identifier(0);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A9976230();
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5368, &qword_1A99A4978);
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for SFAirDropSend.Transfer(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1A98F08E0();
  v47 = v14;
  v19 = v48;
  sub_1A9977A70();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v49);
  }

  v20 = v43;
  v48 = v7;
  v21 = v15;
  v61 = 0;
  sub_1A98F04D4(&qword_1EB3B3540, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  v22 = v44;
  sub_1A99775F0();
  sub_1A98EEE34(v22, v17, type metadata accessor for SFAirDrop.TransferIdentifier);
  v60 = 1;
  sub_1A98F04D4(&qword_1EB3B0CE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v23 = v48;
  sub_1A99775F0();
  (*(v42 + 32))(&v17[v21[5]], v9, v23);
  v59 = 2;
  sub_1A98F04D4(&qword_1EB3B5370, type metadata accessor for SFAirDropSend.Transfer.State, &protocol conformance descriptor for SFAirDropSend.Transfer.State);
  v44 = 0;
  sub_1A99775F0();
  sub_1A98EEE34(v20, &v17[v21[6]], type metadata accessor for SFAirDropSend.Transfer.State);
  v57 = 3;
  sub_1A97D8538();
  sub_1A99775F0();
  v17[v21[7]] = v58;
  v55 = 4;
  sub_1A97D85E0();
  sub_1A9977590();
  v17[v21[8]] = v56;
  v54 = 5;
  sub_1A98F04D4(&qword_1EB3B1B50, type metadata accessor for SFAirDropClient.Identifier, &protocol conformance descriptor for SFAirDropClient.Identifier);
  v24 = v40;
  sub_1A99775F0();
  sub_1A98EEE34(v24, &v17[v21[9]], type metadata accessor for SFAirDropClient.Identifier);
  v53 = 6;
  sub_1A98F04D4(&qword_1EB3B43C0, type metadata accessor for SFAirDropSend.Request, &protocol conformance descriptor for SFAirDropSend.Request);
  v25 = v38;
  sub_1A99775F0();
  sub_1A98EEE34(v25, &v17[v21[10]], type metadata accessor for SFAirDropSend.Request);
  v52 = 7;
  v26 = sub_1A9977550();
  v27 = &v17[v21[11]];
  *v27 = v26;
  v27[1] = v28;
  v51 = 8;
  v29 = sub_1A9977550();
  v30 = &v17[v21[12]];
  *v30 = v29;
  v30[1] = v31;
  v50 = 9;
  sub_1A98F04D4(&qword_1EB3B1B88, type metadata accessor for SFAirDrop.NetworkMetrics, &protocol conformance descriptor for SFAirDrop.NetworkMetrics);
  sub_1A99775F0();
  (*(v45 + 8))(v47, v46);
  sub_1A98EEE34(v36, &v17[v21[13]], type metadata accessor for SFAirDrop.NetworkMetrics);
  sub_1A98F0858(v17, v34, type metadata accessor for SFAirDropSend.Transfer);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  return sub_1A98E6488(v17, type metadata accessor for SFAirDropSend.Transfer);
}

uint64_t sub_1A98EE31C(uint64_t a1)
{
  v1 = _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
  v3 = sub_1A98752D4(8, v1, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x1AC589540](v3, v5, v7, v9);

  MEMORY[0x1AC5895B0](32, 0xE100000000000000);
  v11 = SFAirDropSend.Transfer.State.description.getter();
  MEMORY[0x1AC5895B0](v11);

  return v10;
}

BOOL SFAirDropSend.Transfer.State.sameCase(as:)(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v85 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v84 = &v84 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v86 = (&v84 - v8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v84 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v84 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v84 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v84 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v84 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v84 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v84 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = (&v84 - v30);
  sub_1A98F0858(a1, &v84 - v30, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        if (EnumCaseMultiPayload == 8)
        {
          sub_1A98F0858(v87, v29, type metadata accessor for SFAirDropSend.Transfer.State);
          v49 = swift_getEnumCaseMultiPayload() == 8;
          sub_1A98E6488(v29, type metadata accessor for SFAirDropSend.Transfer.State);
          return v49;
        }

        sub_1A98F0858(v87, v17, type metadata accessor for SFAirDropSend.Transfer.State);
        v74 = swift_getEnumCaseMultiPayload() == 9;
        v75 = v17;
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850);

      v73 = v85;
      sub_1A98F0858(v87, v85, type metadata accessor for SFAirDropSend.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 7)
      {

        v71 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
        sub_1A98E6488(v73, type metadata accessor for SFAirDropSend.Transfer.Metrics);
        v72 = v31;
        goto LABEL_38;
      }

      sub_1A98E6488(v73, type metadata accessor for SFAirDropSend.Transfer.State);
      v53 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
      v54 = v31;
LABEL_35:
      sub_1A98E6488(v54, v53);
      return 0;
    }

    if (EnumCaseMultiPayload != 5)
    {
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858);
      v80 = *(v79 + 48);
      v81 = v84;
      sub_1A98F0858(v87, v84, type metadata accessor for SFAirDropSend.Transfer.State);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        sub_1A98E6488(v81 + *(v79 + 48), type metadata accessor for SFAirDropSend.Failure);
        sub_1A98E6488(v81, type metadata accessor for SFAirDropSend.Transfer.Metrics);
        sub_1A98E6488(v31 + v80, type metadata accessor for SFAirDropSend.Failure);
        v72 = v31;
        v82 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
LABEL_39:
        sub_1A98E6488(v72, v82);
        return 1;
      }

      sub_1A98E6488(v81, type metadata accessor for SFAirDropSend.Transfer.State);
      sub_1A98E6488(v31 + v80, type metadata accessor for SFAirDropSend.Failure);
      v53 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
      v54 = v31;
      goto LABEL_35;
    }

    v55 = v31;
    v56 = v31[4];
    v57 = v31[5];
    v58 = v31[7];
    v59 = v31[8];

    sub_1A97B4368(v56, v57);
    sub_1A97B43C4(v58, v59);
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868);
    v61 = *(v60 + 48);
    v62 = v86;
    sub_1A98F0858(v87, v86, type metadata accessor for SFAirDropSend.Transfer.State);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v63 = v62[4];
      v64 = v62[5];
      v65 = v62[7];
      v66 = v62[8];

      sub_1A97B4368(v63, v64);
      sub_1A97B43C4(v65, v66);
      v67 = *(v60 + 48);
      v46 = &qword_1EB3B1E20;
      v47 = &qword_1A99A4860;
      sub_1A97B06FC(v62 + v67, &qword_1EB3B1E20, &qword_1A99A4860);
      v48 = v55 + v61;
      goto LABEL_26;
    }

    sub_1A98E6488(v62, type metadata accessor for SFAirDropSend.Transfer.State);
    sub_1A97B06FC(v31 + v61, &qword_1EB3B1E20, &qword_1A99A4860);
    return 0;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888);
      v52 = *(v51 + 64);
      sub_1A98F0858(v87, v26, type metadata accessor for SFAirDropSend.Transfer.State);
      if (!swift_getEnumCaseMultiPayload())
      {

        v83 = *(v51 + 64);
        v71 = type metadata accessor for SFAirDrop.DeclineAction;
        sub_1A98E6488(&v26[v83], type metadata accessor for SFAirDrop.DeclineAction);
        v72 = v31 + v52;
        goto LABEL_38;
      }

      sub_1A98E6488(v26, type metadata accessor for SFAirDropSend.Transfer.State);
      v53 = type metadata accessor for SFAirDrop.DeclineAction;
      v54 = v31 + v52;
      goto LABEL_35;
    }

    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880);
    v77 = *(v76 + 48);
    sub_1A98F0858(v87, v23, type metadata accessor for SFAirDropSend.Transfer.State);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v78 = *(v76 + 48);
      v46 = &qword_1EB3B1DF8;
      v47 = &unk_1A9994A30;
      sub_1A97B06FC(&v23[v78], &qword_1EB3B1DF8, &unk_1A9994A30);
      v48 = v31 + v77;
      goto LABEL_26;
    }

    sub_1A98E6488(v23, type metadata accessor for SFAirDropSend.Transfer.State);
    sub_1A97B06FC(v31 + v77, &qword_1EB3B1DF8, &unk_1A9994A30);
    return 0;
  }

  v33 = v31;
  if (EnumCaseMultiPayload == 2)
  {

    sub_1A97C2280(v31[2], v31[3], v31[4]);

    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870);
    v69 = *(v68 + 80);
    sub_1A98F0858(v87, v14, type metadata accessor for SFAirDropSend.Transfer.State);
    if (swift_getEnumCaseMultiPayload() == 2)
    {

      sub_1A97C2280(*(v14 + 2), *(v14 + 3), *(v14 + 4));

      v70 = *(v68 + 80);
      v71 = type metadata accessor for SFAirDrop.DeclineAction;
      sub_1A98E6488(&v14[v70], type metadata accessor for SFAirDrop.DeclineAction);
      v72 = v31 + v69;
LABEL_38:
      v82 = v71;
      goto LABEL_39;
    }

    sub_1A98E6488(v14, type metadata accessor for SFAirDropSend.Transfer.State);
    v53 = type metadata accessor for SFAirDrop.DeclineAction;
    v54 = v31 + v69;
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1A98E6488(v31, type metadata accessor for SFAirDropSend.Transfer.State);
    sub_1A98F0858(v87, v11, type metadata accessor for SFAirDropSend.Transfer.State);
    v74 = swift_getEnumCaseMultiPayload() == 4;
    v75 = v11;
LABEL_23:
    sub_1A98E6488(v75, type metadata accessor for SFAirDropSend.Transfer.State);
    return v74;
  }

  v34 = v31[4];
  v35 = v31[5];
  v36 = v31[7];
  v37 = v31[8];

  sub_1A97B4368(v34, v35);
  sub_1A97B43C4(v36, v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878);
  v39 = *(v38 + 48);
  sub_1A98F0858(v87, v20, type metadata accessor for SFAirDropSend.Transfer.State);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1A98E6488(v20, type metadata accessor for SFAirDropSend.Transfer.State);
    sub_1A97B06FC(v33 + v39, &qword_1EB3B1798, &qword_1A99929A8);
    return 0;
  }

  v40 = v20[4];
  v41 = v20[5];
  v42 = v33;
  v43 = v20[7];
  v44 = v20[8];

  sub_1A97B4368(v40, v41);
  sub_1A97B43C4(v43, v44);
  v45 = *(v38 + 48);
  v46 = &qword_1EB3B1798;
  v47 = &qword_1A99929A8;
  sub_1A97B06FC(v20 + v45, &qword_1EB3B1798, &qword_1A99929A8);
  v48 = v42 + v39;
LABEL_26:
  sub_1A97B06FC(v48, v46, v47);
  return 1;
}

uint64_t sub_1A98EEE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s7Sharing13SFAirDropSendO8TransferV5StateO2eeoiySbAG_AGtFZ_0(char *a1, uint64_t a2)
{
  v197 = a1;
  v3 = type metadata accessor for SFAirDropSend.Failure(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  *(&v186 + 1) = &v180 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v188 = &v180 - v6;
  v7 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v190 = &v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  *&v186 = &v180 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1E20, &qword_1A99A4860);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v187 = &v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v189 = &v180 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1798, &qword_1A99929A8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  *&v185 = &v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  *(&v185 + 1) = &v180 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1DF8, &unk_1A9994A30);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v183 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v184 = &v180 - v22;
  v23 = type metadata accessor for SFAirDrop.DeclineAction(0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v191 = &v180 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v192 = &v180 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v181 = &v180 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v182 = &v180 - v30;
  v31 = type metadata accessor for SFAirDropSend.Transfer.State(0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v195 = &v180 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v196 = &v180 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v193 = &v180 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v194 = &v180 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v180 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = (&v180 - v44);
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = (&v180 - v47);
  MEMORY[0x1EEE9AC00](v46);
  v50 = (&v180 - v49);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5488, &qword_1A99A5890);
  v52 = MEMORY[0x1EEE9AC00](v51 - 8);
  v54 = &v180 - v53;
  v55 = &v180 + *(v52 + 56) - v53;
  sub_1A98F0858(v197, &v180 - v53, type metadata accessor for SFAirDropSend.Transfer.State);
  v56 = a2;
  v57 = v55;
  sub_1A98F0858(v56, v55, type metadata accessor for SFAirDropSend.Transfer.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v59 = v55;
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload != 3)
        {
          v116 = v194;
          sub_1A98F0858(v54, v194, type metadata accessor for SFAirDropSend.Transfer.State);
          v117 = *(v116 + 48);
          v215 = *(v116 + 32);
          v216 = v117;
          v217 = *(v116 + 64);
          v118 = *(v116 + 16);
          v213 = *v116;
          v214 = v118;
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v119 = *(v55 + 1);
            v120 = *(v55 + 3);
            v210 = *(v55 + 2);
            v211 = v120;
            v121 = *(v55 + 1);
            v208 = *v55;
            v209 = v121;
            v122 = *(v116 + 48);
            v205 = *(v116 + 32);
            v206 = v122;
            v123 = *(v116 + 16);
            v203 = *v116;
            v204 = v123;
            v124 = *(v55 + 3);
            v200 = v210;
            v201 = v124;
            v212 = *(v55 + 8);
            v207 = *(v116 + 64);
            v202 = *(v55 + 8);
            v198 = v208;
            v199 = v119;
            v70 = _s7Sharing9SFAirDropO14ContactRequestO2eeoiySbAE_AEtFZ_0(&v203, &v198);
            sub_1A97D7A44(&v208);
            sub_1A97D7A44(&v213);
LABEL_43:
            sub_1A98E6488(v54, type metadata accessor for SFAirDropSend.Transfer.State);
            return v70 & 1;
          }

          sub_1A97D7A44(&v213);
          goto LABEL_54;
        }

        sub_1A98F0858(v54, v42, type metadata accessor for SFAirDropSend.Transfer.State);
        v60 = *(v42 + 3);
        v215 = *(v42 + 2);
        v216 = v60;
        v217 = *(v42 + 8);
        v61 = *(v42 + 1);
        v213 = *v42;
        v214 = v61;
        v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F0, &qword_1A99A4878) + 48);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v63 = *(v55 + 3);
          v210 = *(v55 + 2);
          v211 = v63;
          v212 = *(v55 + 8);
          v64 = *(v55 + 1);
          v208 = *v55;
          v209 = v64;
          v65 = &qword_1EB3B1798;
          v66 = &qword_1A99929A8;
          v67 = *(&v185 + 1);
          sub_1A97D8380(&v42[v62], *(&v185 + 1), &qword_1EB3B1798, &qword_1A99929A8);
          v68 = v59 + v62;
          v69 = v185;
          sub_1A97D8380(v68, v185, &qword_1EB3B1798, &qword_1A99929A8);
          v205 = v215;
          v206 = v216;
          v207 = v217;
          v203 = v213;
          v204 = v214;
          v200 = v210;
          v201 = v211;
          v202 = v212;
          v198 = v208;
          v199 = v209;
          if (_s7Sharing9SFAirDropO11ContactInfoV2eeoiySbAE_AEtFZ_0(&v203, &v198))
          {
            v70 = sub_1A98E2B64(v67, v69);
            sub_1A97B44F8(&v208);
            sub_1A97B44F8(&v213);
            sub_1A97B06FC(v69, &qword_1EB3B1798, &qword_1A99929A8);
            v71 = v67;
LABEL_39:
            sub_1A97B06FC(v71, v65, v66);
            goto LABEL_43;
          }

          sub_1A97B44F8(&v208);
          sub_1A97B44F8(&v213);
          v82 = &qword_1EB3B1798;
          v83 = &qword_1A99929A8;
          sub_1A97B06FC(v69, &qword_1EB3B1798, &qword_1A99929A8);
          v165 = v67;
          goto LABEL_75;
        }

        v139 = &qword_1EB3B1798;
        v140 = &qword_1A99929A8;
        v141 = &v42[v62];
        goto LABEL_49;
      }

      sub_1A98F0858(v54, v45, type metadata accessor for SFAirDropSend.Transfer.State);
      v87 = v45[1];
      v195 = *v45;
      v196 = v87;
      v197 = v54;
      v89 = v45[2];
      v88 = v45[3];
      v90 = v45[4];
      v91 = v45[5];
      v92 = v45[6];
      v194 = v45[7];
      v93 = v45[8];
      v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E8, &qword_1A99A4870) + 80);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v188 = v89;
        v189 = v92;
        v193 = v93;
        v95 = *v59;
        v96 = v59[1];
        v97 = v59[2];
        v98 = v59[3];
        v184 = v90;
        *&v185 = v97;
        v99 = v59[4];
        v100 = v59[5];
        *(&v185 + 1) = v98;
        *&v186 = v99;
        v102 = v59[6];
        v101 = v59[7];
        *(&v186 + 1) = v100;
        v187 = v102;
        v182 = v101;
        v190 = v59[8];
        v103 = v45 + v94;
        v104 = v192;
        sub_1A98EEE34(v103, v192, type metadata accessor for SFAirDrop.DeclineAction);
        v105 = v191;
        sub_1A98EEE34(v59 + v94, v191, type metadata accessor for SFAirDrop.DeclineAction);
        if (v195 == v95 && v196 == v96)
        {

          v106 = v184;
          v107 = v88;
        }

        else
        {
          v158 = sub_1A99777E0();

          v106 = v184;
          v107 = v88;
          if ((v158 & 1) == 0)
          {
            sub_1A97C2280(v185, *(&v185 + 1), v186);
            sub_1A97C2280(v188, v88, v106);

            sub_1A98E6488(v105, type metadata accessor for SFAirDrop.DeclineAction);
            sub_1A98E6488(v104, type metadata accessor for SFAirDrop.DeclineAction);
            v166 = v197;
            goto LABEL_79;
          }
        }

        v183 = v91;
        v159 = v188;
        *&v213 = v188;
        *(&v213 + 1) = v107;
        *&v214 = v106;
        *(&v214 + 1) = v91;
        *&v215 = v189;
        v160 = v185;
        v208 = v185;
        v161 = v186;
        v209 = v186;
        *&v210 = v187;
        LODWORD(v196) = _s7Sharing9SFAirDropO8ProgressO2eeoiySbAE_AEtFZ_0(&v213, &v208);
        sub_1A97C2280(v160, *(&v160 + 1), v161);
        sub_1A97C2280(v159, v107, v106);
        v162 = v197;
        if ((v196 & 1) == 0)
        {

          sub_1A98E6488(v191, type metadata accessor for SFAirDrop.DeclineAction);
          v168 = v192;
LABEL_89:
          sub_1A98E6488(v168, type metadata accessor for SFAirDrop.DeclineAction);
          goto LABEL_90;
        }

        v163 = v191;
        if (v193)
        {
          v164 = v192;
          if (v190)
          {
            if (v194 == v182 && v193 == v190)
            {

              goto LABEL_95;
            }

            v170 = sub_1A99777E0();

            if (v170)
            {
LABEL_95:
              if (*v164 == *v163 && *(v164 + 8) == *(v163 + 8) || (sub_1A99777E0() & 1) != 0)
              {
                v171 = *(v164 + 24);
                v172 = *(v164 + 32);
                v173 = *(v164 + 40);
                v174 = *(v164 + 48);
                *&v213 = *(v164 + 16);
                *(&v213 + 1) = v171;
                *&v214 = v172;
                *(&v214 + 1) = v173;
                LOBYTE(v215) = v174;
                v176 = *(v163 + 24);
                v177 = *(v163 + 32);
                v178 = *(v163 + 40);
                v179 = *(v163 + 48);
                *&v208 = *(v163 + 16);
                v175 = v208;
                *(&v208 + 1) = v176;
                *&v209 = v177;
                *(&v209 + 1) = v178;
                LOBYTE(v210) = v179;
                sub_1A97DC908(v213, v171, v172, v173, v174);
                sub_1A97DC908(v175, v176, v177, v178, v179);
                LOBYTE(v175) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v213, &v208);
                sub_1A97DC96C(v208, *(&v208 + 1), v209, *(&v209 + 1), v210);
                sub_1A97DC96C(v213, *(&v213 + 1), v214, *(&v214 + 1), v215);
                sub_1A98E6488(v163, type metadata accessor for SFAirDrop.DeclineAction);
                sub_1A98E6488(v164, type metadata accessor for SFAirDrop.DeclineAction);
                if (v175)
                {
                  v125 = v162;
                  goto LABEL_35;
                }

LABEL_90:
                v166 = v162;
                goto LABEL_79;
              }
            }

LABEL_88:
            sub_1A98E6488(v163, type metadata accessor for SFAirDrop.DeclineAction);
            v168 = v164;
            goto LABEL_89;
          }
        }

        else
        {
          v164 = v192;
          if (!v190)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_88;
      }

      sub_1A98E6488(v45 + v94, type metadata accessor for SFAirDrop.DeclineAction);

      sub_1A97C2280(v89, v88, v90);

      v54 = v197;
LABEL_54:
      sub_1A97B06FC(v54, &qword_1EB3B5488, &qword_1A99A5890);
LABEL_80:
      v70 = 0;
      return v70 & 1;
    }

    if (EnumCaseMultiPayload)
    {
      sub_1A98F0858(v54, v48, type metadata accessor for SFAirDropSend.Transfer.State);
      v126 = *v48;
      v127 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51F8, &qword_1A99A4880) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v128 = *v57;
        v129 = v48 + v127;
        v130 = v184;
        sub_1A97D8380(v129, v184, &qword_1EB3B1DF8, &unk_1A9994A30);
        v131 = v57 + v127;
        v132 = v183;
        sub_1A97D8380(v131, v183, &qword_1EB3B1DF8, &unk_1A9994A30);
        v133 = sub_1A99054C0(v126, v128);

        if (v133)
        {
          v70 = sub_1A98E2F20(v130, v132);
          v65 = &qword_1EB3B1DF8;
          v66 = &unk_1A9994A30;
          sub_1A97B06FC(v132, &qword_1EB3B1DF8, &unk_1A9994A30);
          v71 = v130;
          goto LABEL_39;
        }

        v82 = &qword_1EB3B1DF8;
        v83 = &unk_1A9994A30;
        sub_1A97B06FC(v132, &qword_1EB3B1DF8, &unk_1A9994A30);
        v165 = v130;
LABEL_75:
        sub_1A97B06FC(v165, v82, v83);
        goto LABEL_78;
      }

      sub_1A97B06FC(v48 + v127, &qword_1EB3B1DF8, &unk_1A9994A30);
      goto LABEL_51;
    }

    sub_1A98F0858(v54, v50, type metadata accessor for SFAirDropSend.Transfer.State);
    v73 = *v50;
    v74 = v50[1];
    v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5200, &qword_1A99A4888) + 64);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1A98E6488(v50 + v75, type metadata accessor for SFAirDrop.DeclineAction);
LABEL_51:

      goto LABEL_54;
    }

    v142 = *v55;
    v143 = *(v55 + 1);
    v144 = v182;
    sub_1A98EEE34(v50 + v75, v182, type metadata accessor for SFAirDrop.DeclineAction);
    v145 = v181;
    sub_1A98EEE34(v57 + v75, v181, type metadata accessor for SFAirDrop.DeclineAction);
    v146 = sub_1A99054C0(v73, v142);

    if (v146 & 1) != 0 && v74 == v143 && (*v144 == *v145 && *(v144 + 8) == *(v145 + 8) || (sub_1A99777E0()))
    {
      v147 = *(v144 + 24);
      v148 = *(v144 + 32);
      v149 = *(v144 + 40);
      v150 = *(v144 + 48);
      *&v213 = *(v144 + 16);
      *(&v213 + 1) = v147;
      *&v214 = v148;
      *(&v214 + 1) = v149;
      LOBYTE(v215) = v150;
      v152 = *(v145 + 24);
      v153 = *(v145 + 32);
      v154 = *(v145 + 40);
      v155 = *(v145 + 48);
      *&v208 = *(v145 + 16);
      v151 = v208;
      *(&v208 + 1) = v152;
      *&v209 = v153;
      *(&v209 + 1) = v154;
      LOBYTE(v210) = v155;
      sub_1A97DC908(v213, v147, v148, v149, v150);
      sub_1A97DC908(v151, v152, v153, v154, v155);
      LOBYTE(v151) = _s7Sharing9SFAirDropO19ButtonConfigurationO2eeoiySbAE_AEtFZ_0(&v213, &v208);
      sub_1A97DC96C(v208, *(&v208 + 1), v209, *(&v209 + 1), v210);
      sub_1A97DC96C(v213, *(&v213 + 1), v214, *(&v214 + 1), v215);
      sub_1A98E6488(v145, type metadata accessor for SFAirDrop.DeclineAction);
      sub_1A98E6488(v144, type metadata accessor for SFAirDrop.DeclineAction);
      if ((v151 & 1) == 0)
      {
        goto LABEL_78;
      }

      goto LABEL_34;
    }

    sub_1A98E6488(v145, type metadata accessor for SFAirDrop.DeclineAction);
    v156 = v144;
    v157 = type metadata accessor for SFAirDrop.DeclineAction;
LABEL_77:
    sub_1A98E6488(v156, v157);
    goto LABEL_78;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v76 = v193;
      sub_1A98F0858(v54, v193, type metadata accessor for SFAirDropSend.Transfer.State);
      v77 = *(v76 + 48);
      v215 = *(v76 + 32);
      v216 = v77;
      v217 = *(v76 + 64);
      v78 = *(v76 + 16);
      v213 = *v76;
      v214 = v78;
      v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51E0, &qword_1A99A4868) + 48);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v80 = *(v55 + 3);
        v210 = *(v55 + 2);
        v211 = v80;
        v212 = *(v55 + 8);
        v81 = *(v55 + 1);
        v208 = *v55;
        v209 = v81;
        v82 = &qword_1EB3B1E20;
        v83 = &qword_1A99A4860;
        v84 = v76 + v79;
        v85 = v189;
        sub_1A97D8380(v84, v189, &qword_1EB3B1E20, &qword_1A99A4860);
        v86 = v187;
        sub_1A97D8380(&v55[v79], v187, &qword_1EB3B1E20, &qword_1A99A4860);
        v205 = v215;
        v206 = v216;
        v207 = v217;
        v203 = v213;
        v204 = v214;
        v200 = v210;
        v201 = v211;
        v202 = v212;
        v198 = v208;
        v199 = v209;
        if (_s7Sharing9SFAirDropO11ContactInfoV2eeoiySbAE_AEtFZ_0(&v203, &v198))
        {
          v70 = sub_1A98E32DC(v85, v86);
          sub_1A97B44F8(&v208);
          sub_1A97B44F8(&v213);
          v65 = &qword_1EB3B1E20;
          v66 = &qword_1A99A4860;
          sub_1A97B06FC(v86, &qword_1EB3B1E20, &qword_1A99A4860);
          v71 = v85;
          goto LABEL_39;
        }

        sub_1A97B44F8(&v208);
        sub_1A97B44F8(&v213);
        sub_1A97B06FC(v86, &qword_1EB3B1E20, &qword_1A99A4860);
        v165 = v85;
        goto LABEL_75;
      }

      v139 = &qword_1EB3B1E20;
      v140 = &qword_1A99A4860;
      v141 = v76 + v79;
LABEL_49:
      sub_1A97B06FC(v141, v139, v140);
      sub_1A97B44F8(&v213);
      goto LABEL_54;
    }

    v108 = v196;
    sub_1A98F0858(v54, v196, type metadata accessor for SFAirDropSend.Transfer.State);
    v134 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D8, &qword_1A99A4858) + 48);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v135 = v186;
      sub_1A98EEE34(v55, v186, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      v136 = v188;
      sub_1A98EEE34(v108 + v134, v188, type metadata accessor for SFAirDropSend.Failure);
      v137 = *(&v186 + 1);
      sub_1A98EEE34(&v55[v134], *(&v186 + 1), type metadata accessor for SFAirDropSend.Failure);
      v138 = _s7Sharing13SFAirDropSendO8TransferV7MetricsV2eeoiySbAG_AGtFZ_0(v108, v135);
      sub_1A98E6488(v108, type metadata accessor for SFAirDropSend.Transfer.Metrics);
      if (v138)
      {
        v70 = _s7Sharing13SFAirDropSendO7FailureO2eeoiySbAE_AEtFZ_0(v136, v137);
        sub_1A98E6488(v137, type metadata accessor for SFAirDropSend.Failure);
        sub_1A98E6488(v136, type metadata accessor for SFAirDropSend.Failure);
        sub_1A98E6488(v135, type metadata accessor for SFAirDropSend.Transfer.Metrics);
        goto LABEL_43;
      }

      sub_1A98E6488(v137, type metadata accessor for SFAirDropSend.Failure);
      sub_1A98E6488(v136, type metadata accessor for SFAirDropSend.Failure);
      v157 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
      v156 = v135;
      goto LABEL_77;
    }

    sub_1A98E6488(v108 + v134, type metadata accessor for SFAirDropSend.Failure);
LABEL_53:
    sub_1A98E6488(v108, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    goto LABEL_54;
  }

  v72 = v55;
  if (EnumCaseMultiPayload != 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_54;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 9)
    {
      goto LABEL_54;
    }

    goto LABEL_34;
  }

  v108 = v195;
  sub_1A98F0858(v54, v195, type metadata accessor for SFAirDropSend.Transfer.State);
  v109 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B51D0, &qword_1A99A4850) + 48);
  v111 = *(v108 + v109);
  v110 = *(v108 + v109 + 8);
  if (swift_getEnumCaseMultiPayload() != 7)
  {

    goto LABEL_53;
  }

  v113 = *&v55[v109];
  v112 = *&v55[v109 + 8];
  v114 = v190;
  sub_1A98EEE34(v72, v190, type metadata accessor for SFAirDropSend.Transfer.Metrics);
  v115 = _s7Sharing13SFAirDropSendO8TransferV7MetricsV2eeoiySbAG_AGtFZ_0(v108, v114);
  sub_1A98E6488(v108, type metadata accessor for SFAirDropSend.Transfer.Metrics);
  if (!v115)
  {
    sub_1A98E6488(v114, type metadata accessor for SFAirDropSend.Transfer.Metrics);

    goto LABEL_71;
  }

  if (!v110)
  {
    sub_1A98E6488(v114, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    if (!v112)
    {
      goto LABEL_34;
    }

LABEL_71:

LABEL_78:
    v166 = v54;
LABEL_79:
    sub_1A98E6488(v166, type metadata accessor for SFAirDropSend.Transfer.State);
    goto LABEL_80;
  }

  if (!v112)
  {

    v157 = type metadata accessor for SFAirDropSend.Transfer.Metrics;
    v156 = v114;
    goto LABEL_77;
  }

  if (v111 == v113 && v110 == v112)
  {

    sub_1A98E6488(v114, type metadata accessor for SFAirDropSend.Transfer.Metrics);
  }

  else
  {
    v169 = sub_1A99777E0();

    sub_1A98E6488(v114, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    if ((v169 & 1) == 0)
    {
      goto LABEL_78;
    }
  }

LABEL_34:
  v125 = v54;
LABEL_35:
  sub_1A98E6488(v125, type metadata accessor for SFAirDropSend.Transfer.State);
  v70 = 1;
  return v70 & 1;
}

unint64_t sub_1A98F03D8()
{
  result = qword_1EB3B5260;
  if (!qword_1EB3B5260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5260);
  }

  return result;
}

unint64_t sub_1A98F042C()
{
  result = qword_1EB3B5268;
  if (!qword_1EB3B5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5268);
  }

  return result;
}

unint64_t sub_1A98F0480()
{
  result = qword_1EB3B5278;
  if (!qword_1EB3B5278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5278);
  }

  return result;
}

uint64_t sub_1A98F04D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A98F051C()
{
  result = qword_1EB3B5288;
  if (!qword_1EB3B5288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5288);
  }

  return result;
}

unint64_t sub_1A98F0570()
{
  result = qword_1EB3B5298;
  if (!qword_1EB3B5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5298);
  }

  return result;
}

unint64_t sub_1A98F05C4()
{
  result = qword_1EB3B52A0;
  if (!qword_1EB3B52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B52A0);
  }

  return result;
}

unint64_t sub_1A98F0618()
{
  result = qword_1EB3B52A8;
  if (!qword_1EB3B52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B52A8);
  }

  return result;
}

unint64_t sub_1A98F066C()
{
  result = qword_1EB3B52B0;
  if (!qword_1EB3B52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B52B0);
  }

  return result;
}

unint64_t sub_1A98F06C0()
{
  result = qword_1EB3B52B8;
  if (!qword_1EB3B52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B52B8);
  }

  return result;
}

unint64_t sub_1A98F0714()
{
  result = qword_1EB3B52C8;
  if (!qword_1EB3B52C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B52C8);
  }

  return result;
}

unint64_t sub_1A98F0768()
{
  result = qword_1EB3B52D0;
  if (!qword_1EB3B52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B52D0);
  }

  return result;
}

uint64_t sub_1A98F07BC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    sub_1A98F04D4(a2, MEMORY[0x1E6968FB0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A98F0858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A98F08E0()
{
  result = qword_1EB3B5358;
  if (!qword_1EB3B5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5358);
  }

  return result;
}

void sub_1A98F09A4(uint64_t a1)
{
  type metadata accessor for SFAirDrop.TransferIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_1A9976230();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SFAirDropSend.Transfer.State(319);
      if (v3 <= 0x3F)
      {
        sub_1A97D8914(319, &qword_1EB3AC508, &type metadata for SFNWInterfaceType);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SFAirDropClient.Identifier(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SFAirDropSend.Request(319);
            if (v6 <= 0x3F)
            {
              sub_1A97D8914(319, &qword_1EB3AB718, MEMORY[0x1E69E6158]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for SFAirDrop.NetworkMetrics(319);
                if (v8 <= 0x3F)
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
}

void sub_1A98F0AE0(uint64_t a1)
{
  sub_1A98F0C0C(319);
  if (v1 <= 0x3F)
  {
    sub_1A98F0C94(319);
    if (v2 <= 0x3F)
    {
      sub_1A98F0D20(319);
      if (v3 <= 0x3F)
      {
        sub_1A97D91D4(319, &qword_1EB3ABB40, &qword_1EB3B1798, &qword_1A99929A8, "senderContact request ");
        if (v4 <= 0x3F)
        {
          sub_1A98F0E58();
          if (v5 <= 0x3F)
          {
            sub_1A97D91D4(319, &qword_1EB3ABB20, &qword_1EB3B1E20, &qword_1A99A4860, "receiverContact request ");
            if (v6 <= 0x3F)
            {
              sub_1A98F0E88(319);
              if (v7 <= 0x3F)
              {
                sub_1A98F0EFC(319);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A98F0C0C(uint64_t a1)
{
  if (!qword_1EB3AB708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    type metadata accessor for SFAirDrop.DeclineAction(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB3AB708);
    }
  }
}

void sub_1A98F0C94(uint64_t a1)
{
  if (!qword_1EB3AB710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1908, &qword_1A99A3580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1DF8, &unk_1A9994A30);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AB710);
    }
  }
}

void sub_1A98F0D20(uint64_t a1)
{
  if (!qword_1EB3AB770)
  {
    MEMORY[0x1EEE9AC00](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1BB0, &qword_1A9992DD8);
    type metadata accessor for SFAirDrop.DeclineAction(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB3AB770);
    }
  }
}

ValueMetadata *sub_1A98F0E58()
{
  result = qword_1EB3AB978;
  if (!qword_1EB3AB978)
  {
    result = &type metadata for SFAirDrop.ContactRequest;
    atomic_store(&type metadata for SFAirDrop.ContactRequest, &qword_1EB3AB978);
  }

  return result;
}

void sub_1A98F0E88(uint64_t a1)
{
  if (!qword_1EB3AC690)
  {
    type metadata accessor for SFAirDropSend.Transfer.Metrics(255);
    type metadata accessor for SFAirDropSend.Failure(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AC690);
    }
  }
}

void sub_1A98F0EFC(uint64_t a1)
{
  if (!qword_1EB3AC688)
  {
    type metadata accessor for SFAirDropSend.Transfer.Metrics(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B1BB0, &qword_1A9992DD8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AC688);
    }
  }
}

unint64_t sub_1A98F1040()
{
  result = qword_1EB3B5378;
  if (!qword_1EB3B5378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5378);
  }

  return result;
}

unint64_t sub_1A98F1098()
{
  result = qword_1EB3B5380;
  if (!qword_1EB3B5380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5380);
  }

  return result;
}

unint64_t sub_1A98F10F0()
{
  result = qword_1EB3B5388;
  if (!qword_1EB3B5388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5388);
  }

  return result;
}

unint64_t sub_1A98F1148()
{
  result = qword_1EB3B5390;
  if (!qword_1EB3B5390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5390);
  }

  return result;
}

unint64_t sub_1A98F11A0()
{
  result = qword_1EB3B5398;
  if (!qword_1EB3B5398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5398);
  }

  return result;
}

unint64_t sub_1A98F11F8()
{
  result = qword_1EB3B53A0;
  if (!qword_1EB3B53A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53A0);
  }

  return result;
}

unint64_t sub_1A98F1250()
{
  result = qword_1EB3B53A8;
  if (!qword_1EB3B53A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53A8);
  }

  return result;
}

unint64_t sub_1A98F12A8()
{
  result = qword_1EB3B53B0;
  if (!qword_1EB3B53B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53B0);
  }

  return result;
}

unint64_t sub_1A98F1300()
{
  result = qword_1EB3B53B8;
  if (!qword_1EB3B53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53B8);
  }

  return result;
}

unint64_t sub_1A98F1358()
{
  result = qword_1EB3B53C0;
  if (!qword_1EB3B53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53C0);
  }

  return result;
}

unint64_t sub_1A98F13B0()
{
  result = qword_1EB3B53C8;
  if (!qword_1EB3B53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53C8);
  }

  return result;
}

unint64_t sub_1A98F1408()
{
  result = qword_1EB3B53D0;
  if (!qword_1EB3B53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53D0);
  }

  return result;
}

unint64_t sub_1A98F1460()
{
  result = qword_1EB3B53D8;
  if (!qword_1EB3B53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53D8);
  }

  return result;
}

unint64_t sub_1A98F14B8()
{
  result = qword_1EB3B53E0;
  if (!qword_1EB3B53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53E0);
  }

  return result;
}

unint64_t sub_1A98F1510()
{
  result = qword_1EB3B53E8;
  if (!qword_1EB3B53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53E8);
  }

  return result;
}

unint64_t sub_1A98F1568()
{
  result = qword_1EB3B53F0;
  if (!qword_1EB3B53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53F0);
  }

  return result;
}

unint64_t sub_1A98F15C0()
{
  result = qword_1EB3B53F8;
  if (!qword_1EB3B53F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B53F8);
  }

  return result;
}

unint64_t sub_1A98F1618()
{
  result = qword_1EB3B5400;
  if (!qword_1EB3B5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5400);
  }

  return result;
}

unint64_t sub_1A98F1670()
{
  result = qword_1EB3B5408;
  if (!qword_1EB3B5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5408);
  }

  return result;
}

unint64_t sub_1A98F16C8()
{
  result = qword_1EB3B5410;
  if (!qword_1EB3B5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5410);
  }

  return result;
}

unint64_t sub_1A98F1720()
{
  result = qword_1EB3B5418;
  if (!qword_1EB3B5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5418);
  }

  return result;
}

unint64_t sub_1A98F1778()
{
  result = qword_1EB3B5420;
  if (!qword_1EB3B5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5420);
  }

  return result;
}

unint64_t sub_1A98F17D0()
{
  result = qword_1EB3B5428;
  if (!qword_1EB3B5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5428);
  }

  return result;
}

unint64_t sub_1A98F1828()
{
  result = qword_1EB3B5430;
  if (!qword_1EB3B5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5430);
  }

  return result;
}

unint64_t sub_1A98F1880()
{
  result = qword_1EB3B5438;
  if (!qword_1EB3B5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5438);
  }

  return result;
}

unint64_t sub_1A98F18D8()
{
  result = qword_1EB3B5440;
  if (!qword_1EB3B5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5440);
  }

  return result;
}

unint64_t sub_1A98F1930()
{
  result = qword_1EB3B5448;
  if (!qword_1EB3B5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5448);
  }

  return result;
}

unint64_t sub_1A98F1988()
{
  result = qword_1EB3B5450;
  if (!qword_1EB3B5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5450);
  }

  return result;
}

unint64_t sub_1A98F19E0()
{
  result = qword_1EB3B5458;
  if (!qword_1EB3B5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5458);
  }

  return result;
}

unint64_t sub_1A98F1A38()
{
  result = qword_1EB3B5460;
  if (!qword_1EB3B5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5460);
  }

  return result;
}

unint64_t sub_1A98F1A90()
{
  result = qword_1EB3B5468;
  if (!qword_1EB3B5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5468);
  }

  return result;
}

unint64_t sub_1A98F1AE8()
{
  result = qword_1EB3B5470;
  if (!qword_1EB3B5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5470);
  }

  return result;
}

unint64_t sub_1A98F1B40()
{
  result = qword_1EB3B5478;
  if (!qword_1EB3B5478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5478);
  }

  return result;
}

unint64_t sub_1A98F1B98()
{
  result = qword_1EB3B5480;
  if (!qword_1EB3B5480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5480);
  }

  return result;
}

uint64_t sub_1A98F1BEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936487029 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63416C65636E6163 && a2 == 0xEC0000006E6F6974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98F1D08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A99E39B0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001A99E39D0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E3930 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEC000000676E6972 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001A99E3950 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69676E6168637865 && a2 == 0xEA0000000000676ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001A99E71E0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEE0064656C696146 || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E3B50 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1A98F2040(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001A99E7200 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E3BD0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63416C65636E6163 && a2 == 0xEC0000006E6F6974)
  {

    return 3;
  }

  else
  {
    v5 = sub_1A99777E0();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1A98F21B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5079616C70736964 && a2 == 0xEF797469726F6972 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001A99E3C10 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000072 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x75716552646E6573 && a2 == 0xEB00000000747365 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E4F10 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7265766965636572 && a2 == 0xEC000000656D614ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4D6B726F7774656ELL && a2 == 0xEE00736369727465)
  {

    return 9;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1A98F2518()
{
  if (*v0)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_1A98F254C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A98F2628(uint64_t a1)
{
  v2 = sub_1A98F5254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F2664(uint64_t a1)
{
  v2 = sub_1A98F5254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98F26A0(uint64_t a1)
{
  v2 = sub_1A98F52A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F26DC(uint64_t a1)
{
  v2 = sub_1A98F52A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98F2718(uint64_t a1)
{
  v2 = sub_1A98F52FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F2754(uint64_t a1)
{
  v2 = sub_1A98F52FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Transfer.Metrics.TransferResult.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5500, &qword_1A99A5940);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v22 - v3;
  v4 = type metadata accessor for SFAirDropSend.Failure(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5508, &qword_1A99A5948);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5510, &qword_1A99A5950);
  v13 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F5254();
  sub_1A9977AA0();
  sub_1A98F5400(v29, v12, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    v31 = 0;
    sub_1A98F52FC();
    v16 = v30;
    sub_1A9977640();
    (*(v23 + 8))(v9, v24);
    return (*(v13 + 8))(v15, v16);
  }

  else
  {
    v18 = v25;
    sub_1A98F5398(v12, v25, type metadata accessor for SFAirDropSend.Failure);
    v32 = 1;
    sub_1A98F52A8();
    v19 = v26;
    v20 = v30;
    sub_1A9977640();
    sub_1A98F5350(&qword_1EB3B5280, type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    v21 = v28;
    sub_1A99776E0();
    (*(v27 + 8))(v19, v21);
    sub_1A98F55B4(v18, type metadata accessor for SFAirDropSend.Failure);
    return (*(v13 + 8))(v15, v20);
  }
}

uint64_t SFAirDropSend.Transfer.Metrics.TransferResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5530, &qword_1A99A5958);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5538, &qword_1A99A5960);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5540, &qword_1A99A5968);
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1A98F5254();
  v20 = v51;
  sub_1A9977A70();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v52);
  }

  v51 = v13;
  v42 = v16;
  v43 = v18;
  v22 = v48;
  v21 = v49;
  v23 = sub_1A9977620();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_1A97B2970();
  v26 = v10;
  v27 = v12;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v30 = sub_1A9977300();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v32 = v51;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v50 + 8))(v12, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v52);
  }

  if (v25)
  {
    v57 = 1;
    sub_1A98F52A8();
    v28 = v22;
    sub_1A9977530();
    v29 = v50;
    v35 = v21;
    v36 = type metadata accessor for SFAirDropSend.Failure(0);
    sub_1A98F5350(&qword_1EB3B5338, type metadata accessor for SFAirDropSend.Failure, &protocol conformance descriptor for SFAirDropSend.Failure);
    v37 = v42;
    v38 = v46;
    sub_1A99775F0();
    (*(v47 + 8))(v28, v38);
    (*(v29 + 8))(v27, v26);
    swift_unknownObjectRelease();
    (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
    v39 = v43;
    sub_1A98F5398(v37, v43, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  }

  else
  {
    v57 = 0;
    sub_1A98F52FC();
    sub_1A9977530();
    v34 = v50;
    v35 = v21;
    (*(v45 + 8))(v9, v44);
    (*(v34 + 8))(v12, v10);
    swift_unknownObjectRelease();
    v40 = type metadata accessor for SFAirDropSend.Failure(0);
    v39 = v43;
    (*(*(v40 - 8) + 56))(v43, 1, 1, v40);
  }

  sub_1A98F5398(v39, v35, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  return __swift_destroy_boxed_opaque_existential_0Tm(v52);
}

uint64_t SFAirDropSend.Transfer.Metrics.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDropSend.Transfer.Metrics(0) + 20);
  v4 = sub_1A9976230();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDropSend.Transfer.Metrics.init(id:startDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  v7 = v6[6];
  v8 = sub_1A9976230();
  v9 = *(v8 - 8);
  (*(v9 + 56))(a3 + v7, 1, 1, v8);
  v10 = v6[7];
  v11 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
  v13 = *(*(v11 - 8) + 56);
  (v13)((v11 - 8), a3 + v10, 1, 1, v11);
  sub_1A98F5398(a1, a3, type metadata accessor for SFAirDrop.TransferIdentifier);
  (*(v9 + 32))(a3 + v6[5], a2, v8);
  sub_1A97B06FC(a3 + v10, &qword_1EB3B5548, &qword_1A99A5970);

  return v13(a3 + v10, 1, 1, v11);
}

uint64_t SFAirDropSend.Transfer.Metrics.description.getter()
{
  v1 = sub_1A99760A0();
  v68 = *(v1 - 8);
  v69 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v66 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1A99760C0();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5550, &qword_1A99A5978);
  v4 = MEMORY[0x1EEE9AC00](v62);
  v59 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v59 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3650, &qword_1A999BA80);
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - v9;
  v11 = sub_1A9976230();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v0;
  v15 = _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
  v17 = sub_1A98752D4(8, v15, v16);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = MEMORY[0x1AC589540](v17, v19, v21, v23);
  v26 = v25;

  v27 = sub_1A97AE618(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1A97AE618((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  v30 = &v27[16 * v29];
  *(v30 + 4) = v24;
  *(v30 + 5) = v26;
  v31 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  sub_1A97C13A4(v14 + *(v31 + 24), v10, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v40 = (v12 + 32);
    v37 = *(v12 + 32);
    v41 = v70;
    v37();
    v42 = *(v31 + 20);
    sub_1A98F5350(&qword_1EB3B5558, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v39 = v11;
    if (sub_1A9976770())
    {
      v44 = v12;
      v45 = v12;
      v68 = v37;
      v46 = v59;
      v47 = v41;
      v48 = *(v44 + 16);
      v49 = v14 + v42;
      v50 = v61;
      v48(v61, v49, v11);
      v51 = v62;
      v48((v50 + *(v62 + 48)), v47, v11);
      sub_1A97C13A4(v50, v46, &qword_1EB3B5550, &qword_1A99A5978);
      v52 = *(v51 + 48);
      v41 = v63;
      v53 = v68;
      v69 = v27;
      (v68)(v63, v46, v11);
      v40 = *(v45 + 8);
      v40(v46 + v52, v11);
      sub_1A98F54F0(v50, v46);
      (v53)(v41 + *(v60 + 36), v46 + *(v51 + 48), v11);
      v27 = v69;
      v40(v46, v11);
      v73 = 0x203A656D6974;
      v74 = 0xE600000000000000;
      sub_1A98734C4();
      sub_1A9976F40();
      MEMORY[0x1AC5895B0](v71, v72);

      v29 = v73;
      v37 = v74;
      v14 = *(v27 + 2);
      v43 = *(v27 + 3);
      v39 = v14 + 1;
      if (v14 < v43 >> 1)
      {
LABEL_8:
        sub_1A97B06FC(v41, &qword_1EB3B3650, &qword_1A999BA80);
        v40(v70, v11);
        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    v27 = sub_1A97AE618((v43 > 1), v39, 1, v27);
    goto LABEL_8;
  }

  sub_1A97B06FC(v10, &unk_1EB3B2A30, &unk_1A99983A0);
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_1A99772B0();

  v73 = 0x203A656D6974;
  v74 = 0xE600000000000000;
  v32 = v64;
  sub_1A99760B0();
  v33 = v66;
  sub_1A9976090();
  v34 = sub_1A9976200();
  v36 = v35;
  (*(v68 + 1))(v33, v69);
  (*(v65 + 8))(v32, v67);
  MEMORY[0x1AC5895B0](v34, v36);

  MEMORY[0x1AC5895B0](0x6D6F636E49202D20, 0xED00006574656C70);
  v29 = v73;
  v37 = v74;
  v14 = *(v27 + 2);
  v38 = *(v27 + 3);
  v39 = v14 + 1;
  if (v14 >= v38 >> 1)
  {
    v27 = sub_1A97AE618((v38 > 1), v14 + 1, 1, v27);
  }

LABEL_9:
  *(v27 + 2) = v39;
  v54 = &v27[16 * v14];
  *(v54 + 4) = v29;
  *(v54 + 5) = v37;
  v73 = 123;
  v74 = 0xE100000000000000;
  v71 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97BD6AC();
  v55 = sub_1A9976760();
  v57 = v56;

  MEMORY[0x1AC5895B0](v55, v57);

  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  return v73;
}

uint64_t sub_1A98F3E2C()
{
  v1 = 25705;
  v2 = 0x65746144646E65;
  if (*v0 != 2)
  {
    v2 = 0x746C75736572;
  }

  if (*v0)
  {
    v1 = 0x7461447472617473;
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

uint64_t sub_1A98F3E9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98F5C4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98F3EC4(uint64_t a1)
{
  v2 = sub_1A98F5560();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F3F00(uint64_t a1)
{
  v2 = sub_1A98F5560();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropSend.Transfer.Metrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5560, &qword_1A99A5980);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F5560();
  sub_1A9977AA0();
  v12 = 0;
  type metadata accessor for SFAirDrop.TransferIdentifier(0);
  sub_1A98F5350(&qword_1EB3B34F0, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
  sub_1A99776E0();
  if (!v1)
  {
    type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
    v11 = 1;
    sub_1A9976230();
    sub_1A98F5350(&qword_1EB3B0C58, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1A99776E0();
    v10 = 2;
    sub_1A9977680();
    v9 = 3;
    type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
    sub_1A98F5350(&qword_1EB3B5570, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult, &protocol conformance descriptor for SFAirDropSend.Transfer.Metrics.TransferResult);
    sub_1A9977680();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SFAirDropSend.Transfer.Metrics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5548, &qword_1A99A5970);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = v32 - v6;
  v7 = sub_1A9976230();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v38 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5578, &qword_1A99A5988);
  v37 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v12 = v32 - v11;
  v13 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v8;
  v18 = *(v8 + 56);
  v44 = *(v14 + 24);
  v18(&v16[v44], 1, 1, v7);
  v19 = *(v13 + 28);
  v20 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
  v21 = *(*(v20 - 8) + 56);
  v45 = v19;
  v21(&v16[v19], 1, 1, v20);
  v22 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1A98F5560();
  v41 = v12;
  v23 = v43;
  sub_1A9977A70();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    sub_1A97B06FC(&v16[v44], &unk_1EB3B2A30, &unk_1A99983A0);
    return sub_1A97B06FC(&v16[v45], &qword_1EB3B5548, &qword_1A99A5970);
  }

  else
  {
    v32[1] = v20;
    v33 = v13;
    v24 = v37;
    v25 = v38;
    v43 = v7;
    v50 = 0;
    sub_1A98F5350(&qword_1EB3B3540, type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
    v26 = v40;
    sub_1A99775F0();
    sub_1A98F5398(v26, v16, type metadata accessor for SFAirDrop.TransferIdentifier);
    v49 = 1;
    sub_1A98F5350(&qword_1EB3B0CE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v27 = v43;
    sub_1A99775F0();
    (*(v17 + 32))(&v16[*(v33 + 20)], v25, v27);
    v48 = 2;
    v28 = v36;
    sub_1A9977590();
    sub_1A98F5488(v28, &v16[v44], &unk_1EB3B2A30, &unk_1A99983A0);
    v47 = 3;
    sub_1A98F5350(&qword_1EB3B5580, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult, &protocol conformance descriptor for SFAirDropSend.Transfer.Metrics.TransferResult);
    v29 = v35;
    v30 = v41;
    sub_1A9977590();
    (*(v24 + 8))(v30, v42);
    sub_1A98F5488(v29, &v16[v45], &qword_1EB3B5548, &qword_1A99A5970);
    sub_1A98F5400(v16, v34, type metadata accessor for SFAirDropSend.Transfer.Metrics);
    __swift_destroy_boxed_opaque_existential_0Tm(v46);
    return sub_1A98F55B4(v16, type metadata accessor for SFAirDropSend.Transfer.Metrics);
  }
}

uint64_t _s7Sharing13SFAirDropSendO8TransferV7MetricsV0E6ResultO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropSend.Failure(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B55E0, &qword_1A99A5F20);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - v13;
  v15 = *(v12 + 56);
  sub_1A98F5400(a1, &v19 - v13, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  sub_1A98F5400(a2, &v14[v15], type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1A98F5400(v14, v10, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1A98F5398(&v14[v15], v7, type metadata accessor for SFAirDropSend.Failure);
      v17 = _s7Sharing13SFAirDropSendO7FailureO2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_1A98F55B4(v7, type metadata accessor for SFAirDropSend.Failure);
      sub_1A98F55B4(v10, type metadata accessor for SFAirDropSend.Failure);
      sub_1A98F55B4(v14, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
      return v17 & 1;
    }

    sub_1A98F55B4(v10, type metadata accessor for SFAirDropSend.Failure);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A97B06FC(v14, &qword_1EB3B55E0, &qword_1A99A5F20);
    v17 = 0;
    return v17 & 1;
  }

  sub_1A98F55B4(v14, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  v17 = 1;
  return v17 & 1;
}

BOOL _s7Sharing13SFAirDropSendO8TransferV7MetricsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult(0);
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5548, &qword_1A99A5970);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v41 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B55E8, &qword_1A99A5F28);
  MEMORY[0x1EEE9AC00](v50);
  v10 = &v41 - v9;
  v11 = sub_1A9976230();
  v52 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1EB8, &unk_1A99A5F30);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  if ((_s7Sharing9SFAirDropO17PermissionRequestV18InterventionActionV2eeoiySbAGy_x_G_AItFZ_0() & 1) == 0)
  {
    return 0;
  }

  v48 = v13;
  v20 = type metadata accessor for SFAirDropSend.Transfer.Metrics(0);
  if ((sub_1A99761E0() & 1) == 0)
  {
    return 0;
  }

  v46 = v4;
  v47 = v10;
  v42 = v6;
  v43 = v20;
  v21 = *(v20 + 24);
  v22 = *(v17 + 48);
  v44 = a1;
  sub_1A97C13A4(a1 + v21, v19, &unk_1EB3B2A30, &unk_1A99983A0);
  v45 = a2;
  sub_1A97C13A4(a2 + v21, &v19[v22], &unk_1EB3B2A30, &unk_1A99983A0);
  v23 = v52;
  v24 = *(v52 + 48);
  if (v24(v19, 1, v11) != 1)
  {
    sub_1A97C13A4(v19, v16, &unk_1EB3B2A30, &unk_1A99983A0);
    if (v24(&v19[v22], 1, v11) != 1)
    {
      v28 = v48;
      (*(v23 + 32))(v48, &v19[v22], v11);
      sub_1A98F5350(&qword_1EB3B1EC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v29 = sub_1A99767A0();
      v30 = *(v23 + 8);
      v30(v28, v11);
      v30(v16, v11);
      sub_1A97B06FC(v19, &unk_1EB3B2A30, &unk_1A99983A0);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    (*(v23 + 8))(v16, v11);
LABEL_8:
    v25 = &qword_1EB3B1EB8;
    v26 = &unk_1A99A5F30;
    v27 = v19;
LABEL_16:
    sub_1A97B06FC(v27, v25, v26);
    return 0;
  }

  if (v24(&v19[v22], 1, v11) != 1)
  {
    goto LABEL_8;
  }

  sub_1A97B06FC(v19, &unk_1EB3B2A30, &unk_1A99983A0);
LABEL_10:
  v31 = *(v43 + 28);
  v32 = *(v50 + 48);
  v33 = v47;
  sub_1A97C13A4(v44 + v31, v47, &qword_1EB3B5548, &qword_1A99A5970);
  sub_1A97C13A4(v45 + v31, v33 + v32, &qword_1EB3B5548, &qword_1A99A5970);
  v34 = *(v51 + 48);
  v35 = v46;
  if (v34(v33, 1, v46) == 1)
  {
    if (v34(v33 + v32, 1, v35) == 1)
    {
      sub_1A97B06FC(v33, &qword_1EB3B5548, &qword_1A99A5970);
      return 1;
    }

    goto LABEL_15;
  }

  v36 = v49;
  sub_1A97C13A4(v33, v49, &qword_1EB3B5548, &qword_1A99A5970);
  if (v34(v33 + v32, 1, v35) == 1)
  {
    sub_1A98F55B4(v36, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
LABEL_15:
    v25 = &qword_1EB3B55E8;
    v26 = &qword_1A99A5F28;
    v27 = v33;
    goto LABEL_16;
  }

  v38 = v33 + v32;
  v39 = v42;
  sub_1A98F5398(v38, v42, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  v40 = _s7Sharing13SFAirDropSendO8TransferV7MetricsV0E6ResultO2eeoiySbAI_AItFZ_0(v36, v39);
  sub_1A98F55B4(v39, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  sub_1A98F55B4(v36, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
  sub_1A97B06FC(v33, &qword_1EB3B5548, &qword_1A99A5970);
  return (v40 & 1) != 0;
}

unint64_t sub_1A98F5254()
{
  result = qword_1EB3B5518;
  if (!qword_1EB3B5518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5518);
  }

  return result;
}

unint64_t sub_1A98F52A8()
{
  result = qword_1EB3B5520;
  if (!qword_1EB3B5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5520);
  }

  return result;
}

unint64_t sub_1A98F52FC()
{
  result = qword_1EB3B5528;
  if (!qword_1EB3B5528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5528);
  }

  return result;
}

uint64_t sub_1A98F5350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A98F5398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A98F5400(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A98F5488(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A98F54F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5550, &qword_1A99A5978);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A98F5560()
{
  result = qword_1EB3B5568;
  if (!qword_1EB3B5568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5568);
  }

  return result;
}

uint64_t sub_1A98F55B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A98F5684(uint64_t a1)
{
  type metadata accessor for SFAirDrop.TransferIdentifier(319);
  if (v1 <= 0x3F)
  {
    sub_1A9976230();
    if (v2 <= 0x3F)
    {
      sub_1A98F5770(319, &qword_1EB3AC8A0, MEMORY[0x1E6969530]);
      if (v3 <= 0x3F)
      {
        sub_1A98F5770(319, &qword_1EB3AC698, type metadata accessor for SFAirDropSend.Transfer.Metrics.TransferResult);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A98F5770(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A99770A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A98F57EC(uint64_t a1)
{
  v1 = type metadata accessor for SFAirDropSend.Failure(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1A98F5888()
{
  result = qword_1EB3B5588;
  if (!qword_1EB3B5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5588);
  }

  return result;
}

unint64_t sub_1A98F58E0()
{
  result = qword_1EB3B5590;
  if (!qword_1EB3B5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5590);
  }

  return result;
}

unint64_t sub_1A98F5938()
{
  result = qword_1EB3B5598;
  if (!qword_1EB3B5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5598);
  }

  return result;
}

unint64_t sub_1A98F5990()
{
  result = qword_1EB3B55A0;
  if (!qword_1EB3B55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55A0);
  }

  return result;
}

unint64_t sub_1A98F59E8()
{
  result = qword_1EB3B55A8;
  if (!qword_1EB3B55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55A8);
  }

  return result;
}

unint64_t sub_1A98F5A40()
{
  result = qword_1EB3B55B0;
  if (!qword_1EB3B55B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55B0);
  }

  return result;
}

unint64_t sub_1A98F5A98()
{
  result = qword_1EB3B55B8;
  if (!qword_1EB3B55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55B8);
  }

  return result;
}

unint64_t sub_1A98F5AF0()
{
  result = qword_1EB3B55C0;
  if (!qword_1EB3B55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55C0);
  }

  return result;
}

unint64_t sub_1A98F5B48()
{
  result = qword_1EB3B55C8;
  if (!qword_1EB3B55C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55C8);
  }

  return result;
}

unint64_t sub_1A98F5BA0()
{
  result = qword_1EB3B55D0;
  if (!qword_1EB3B55D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55D0);
  }

  return result;
}

unint64_t sub_1A98F5BF8()
{
  result = qword_1EB3B55D8;
  if (!qword_1EB3B55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55D8);
  }

  return result;
}

uint64_t sub_1A98F5C4C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A98F5DAC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A99773D0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t SFNearbySharingInteraction.InteractionType.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFNearbySharingInteraction.interactionType.getter@<X0>(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F5F68(v1, v5);
  v6 = swift_getEnumCaseMultiPayload() == 1;
  result = sub_1A98F5FCC(v5);
  *a1 = v6;
  return result;
}

uint64_t sub_1A98F5F68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98F5FCC(uint64_t a1)
{
  v2 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SFNearbySharingInteraction.id.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F5F68(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for SFProximityHandoff.Interaction(0);
    v6 = type metadata accessor for SFProximityHandoff.Interaction;
    v7 = &off_1F1D2EC98;
  }

  else
  {
    v5 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
    v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction;
    v7 = &off_1F1D2EC68;
  }

  v14 = v5;
  v15 = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  sub_1A98F6178(v4, boxed_opaque_existential_0, v6);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (v10[1])(v9, v10);
  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t sub_1A98F6178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SFNearbySharingInteraction.connectionTime.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F5F68(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for SFProximityHandoff.Interaction(0);
    v6 = type metadata accessor for SFProximityHandoff.Interaction;
    v7 = &off_1F1D2EC98;
  }

  else
  {
    v5 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
    v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction;
    v7 = &off_1F1D2EC68;
  }

  v14 = v5;
  v15 = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  sub_1A98F6178(v4, boxed_opaque_existential_0, v6);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (v10[2])(v9, v10);
  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t SFNearbySharingInteraction.isInitiator.getter()
{
  v1 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F5F68(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for SFProximityHandoff.Interaction(0);
    v5 = type metadata accessor for SFProximityHandoff.Interaction;
    v6 = &off_1F1D2EC98;
  }

  else
  {
    v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
    v5 = type metadata accessor for SFAirDrop.NearbySharingInteraction;
    v6 = &off_1F1D2EC68;
  }

  v13 = v4;
  v14 = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  sub_1A98F6178(v3, boxed_opaque_existential_0, v5);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  LOBYTE(v8) = (v9[3])(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v8 & 1;
}

uint64_t SFNearbySharingInteraction.isInitiatorRoleExpected.getter()
{
  v1 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v12[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F5F68(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for SFProximityHandoff.Interaction(0);
    v5 = type metadata accessor for SFProximityHandoff.Interaction;
    v6 = &off_1F1D2EC98;
  }

  else
  {
    v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
    v5 = type metadata accessor for SFAirDrop.NearbySharingInteraction;
    v6 = &off_1F1D2EC68;
  }

  v13 = v4;
  v14 = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12);
  sub_1A98F6178(v3, boxed_opaque_existential_0, v5);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  LOBYTE(v8) = (v9[4])(v8, v9);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v8 & 1;
}

uint64_t SFNearbySharingInteraction.state.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SFNearbySharingInteraction.Kind(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A98F5F68(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for SFProximityHandoff.Interaction(0);
    v6 = type metadata accessor for SFProximityHandoff.Interaction;
    v7 = &off_1F1D2EC98;
  }

  else
  {
    v5 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
    v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction;
    v7 = &off_1F1D2EC68;
  }

  v14 = v5;
  v15 = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  sub_1A98F6178(v4, boxed_opaque_existential_0, v6);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (v10[5])(v9, v10);
  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t SFNearbySharingInteraction.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1A98F6720(a1, type metadata accessor for SFAirDrop.NearbySharingInteraction, a2);
}

{
  return sub_1A98F6720(a1, type metadata accessor for SFProximityHandoff.Interaction, a2);
}

uint64_t sub_1A98F6720@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a4@<X8>)
{
  sub_1A98F6178(a1, a4, a2);
  type metadata accessor for SFNearbySharingInteraction.Kind(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1A98F6778()
{
  result = qword_1EB3B55F0;
  if (!qword_1EB3B55F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B55F0);
  }

  return result;
}

uint64_t sub_1A98F67CC(uint64_t a1)
{
  result = type metadata accessor for SFAirDrop.NearbySharingInteraction(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SFProximityHandoff.Interaction(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A98F6898(uint64_t a1)
{
  result = type metadata accessor for SFNearbySharingInteraction.Kind(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t SFAirDrop.TransferIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SFAirDrop.TransferIdentifier.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A99762C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SFAirDrop.TransferIdentifier.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = sub_1A99762C0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9976250();
  v20 = 0x6F72662044495555;
  v21 = 0xEA0000000000206DLL;
  MEMORY[0x1AC5895B0](a1, a2);

  v16 = v20;
  v15 = v21;
  sub_1A98F6C4C(v10, v8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_1A98F6CBC(v8);
    sub_1A97BCDE0();
    swift_allocError();
    *v17 = v16;
    v17[1] = v15;
    v17[2] = 0xD00000000000005ALL;
    v17[3] = 0x80000001A99E7220;
    v17[4] = 23;
    v17[10] = 0x2000000000000000;
    swift_willThrow();
    return sub_1A98F6CBC(v10);
  }

  else
  {

    sub_1A98F6CBC(v10);
    v19 = *(v12 + 32);
    v19(v14, v8, v11);
    return (v19)(v22, v14, v11);
  }
}

uint64_t sub_1A98F6C4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98F6CBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A98F6D28(uint64_t a1)
{
  v1 = _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
  v3 = sub_1A98752D4(8, v1, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = MEMORY[0x1AC589540](v3, v5, v7, v9);

  return v10;
}

uint64_t sub_1A98F6DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A98F6E40(uint64_t a1)
{
  v2 = sub_1A98F76E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F6E7C(uint64_t a1)
{
  v2 = sub_1A98F76E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.TransferIdentifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5618, &qword_1A99A6058);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F76E8();
  sub_1A9977AA0();
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1A99776E0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SFAirDrop.TransferIdentifier.hash(into:)(uint64_t a1)
{
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_1A9976740();
}

uint64_t SFAirDrop.TransferIdentifier.hashValue.getter()
{
  sub_1A9977980();
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A9976740();
  return sub_1A99779B0();
}

uint64_t SFAirDrop.TransferIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1A99762C0();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5628, &qword_1A99A6060);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F76E8();
  sub_1A9977A70();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1A98F787C(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1A99775F0();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1A98F7788(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A98F73C4()
{
  sub_1A9977980();
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A9976740();
  return sub_1A99779B0();
}

uint64_t sub_1A98F744C(uint64_t a1)
{
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  return sub_1A9976740();
}

uint64_t sub_1A98F74D0(uint64_t a1)
{
  sub_1A9977980();
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1A9976740();
  return sub_1A99779B0();
}

uint64_t sub_1A98F756C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5618, &qword_1A99A6058);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F76E8();
  sub_1A9977AA0();
  sub_1A99762C0();
  sub_1A98F787C(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1A99776E0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A98F76E8()
{
  result = qword_1EB3B5620;
  if (!qword_1EB3B5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5620);
  }

  return result;
}

uint64_t type metadata accessor for SFAirDrop.TransferIdentifier(uint64_t a1)
{
  result = qword_1EB3AB7A8;
  if (!qword_1EB3AB7A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A98F7788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.TransferIdentifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A98F787C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A98F78EC(uint64_t a1)
{
  result = sub_1A99762C0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A98F796C()
{
  result = qword_1EB3B5630;
  if (!qword_1EB3B5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5630);
  }

  return result;
}

unint64_t sub_1A98F79C4()
{
  result = qword_1EB3B5638;
  if (!qword_1EB3B5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5638);
  }

  return result;
}

unint64_t sub_1A98F7A1C()
{
  result = qword_1EB3B5640;
  if (!qword_1EB3B5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5640);
  }

  return result;
}

Sharing::SFInterventionWorkflow::SprinboardSettings_optional __swiftcall SFInterventionWorkflow.SprinboardSettings.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1A98F7AB4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t SFInterventionWorkflow.description.getter()
{
  v1 = 0x657669656365722ELL;
  if (*v0 != 1)
  {
    v1 = 0x666E4965726F6D2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646E65732ELL;
  }
}

Sharing::SFInterventionWorkflow_optional __swiftcall SFInterventionWorkflow.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A9977510();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SFInterventionWorkflow.rawValue.getter()
{
  v1 = 0x65766965636572;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4965726F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684956531;
  }
}

uint64_t sub_1A98F7BEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x65766965636572;
  if (v2 != 1)
  {
    v4 = 0x6F666E4965726F6DLL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1684956531;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x65766965636572;
  if (*a2 != 1)
  {
    v8 = 0x6F666E4965726F6DLL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1684956531;
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
    v11 = sub_1A99777E0();
  }

  return v11 & 1;
}

uint64_t sub_1A98F7CE8()
{
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

uint64_t sub_1A98F7D84(uint64_t a1)
{
  sub_1A99768D0();
}

uint64_t sub_1A98F7E0C(uint64_t a1)
{
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

void sub_1A98F7EB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x65766965636572;
  if (v2 != 1)
  {
    v5 = 0x6F666E4965726F6DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1684956531;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1A98F7FC8()
{
  v1 = 0x657669656365722ELL;
  if (*v0 != 1)
  {
    v1 = 0x666E4965726F6D2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646E65732ELL;
  }
}

uint64_t SFInterventionResponse.description.getter()
{
  if (*v0)
  {
    return 0x7463656A65722ELL;
  }

  else
  {
    return 0x7470656363612ELL;
  }
}

uint64_t sub_1A98F8070(uint64_t a1)
{
  v2 = sub_1A98F8630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F80AC(uint64_t a1)
{
  v2 = sub_1A98F8630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98F80E8()
{
  if (*v0)
  {
    return 0x7463656A6572;
  }

  else
  {
    return 0x747065636361;
  }
}

uint64_t sub_1A98F8114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x747065636361 && a2 == 0xE600000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7463656A6572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A98F81E8(uint64_t a1)
{
  v2 = sub_1A98F8588();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F8224(uint64_t a1)
{
  v2 = sub_1A98F8588();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98F8260(uint64_t a1)
{
  v2 = sub_1A98F85DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98F829C(uint64_t a1)
{
  v2 = sub_1A98F85DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFInterventionResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5648, &qword_1A99A62C0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5650, &qword_1A99A62C8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5658, &qword_1A99A62D0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F8588();
  sub_1A9977AA0();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A98F85DC();
    v14 = v18;
    sub_1A9977640();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A98F8630();
    sub_1A9977640();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1A98F8588()
{
  result = qword_1EB3B5660;
  if (!qword_1EB3B5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5660);
  }

  return result;
}

unint64_t sub_1A98F85DC()
{
  result = qword_1EB3B5668;
  if (!qword_1EB3B5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5668);
  }

  return result;
}

unint64_t sub_1A98F8630()
{
  result = qword_1EB3B5670;
  if (!qword_1EB3B5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5670);
  }

  return result;
}

uint64_t SFInterventionResponse.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFInterventionResponse.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5678, &qword_1A99A62D8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5680, &qword_1A99A62E0);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5688, &unk_1A99A62E8);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98F8588();
  v12 = v31;
  sub_1A9977A70();
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
    v16 = sub_1A9977620();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1A97B2970();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1A9977300();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v22 = &type metadata for SFInterventionResponse;
      sub_1A9977540();
      sub_1A99772F0();
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
        sub_1A98F85DC();
        sub_1A9977530();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1A98F8630();
        sub_1A9977530();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v13);
}

uint64_t sub_1A98F8BE4()
{
  if (*v0)
  {
    return 0x7463656A65722ELL;
  }

  else
  {
    return 0x7470656363612ELL;
  }
}

id SFAirDropInvocations.UserSafetyIntervention.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___SFXPCInvocation_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v8, sel_init);
}

id SFAirDropInvocations.UserSafetyIntervention.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___SFXPCInvocation_name];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SFAirDropInvocations.UserSafetyIntervention.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFAirDropInvocations.UserSafetyIntervention.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SFAirDropInvocations.UserSafetyIntervention.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98548EC(a1);

  return v4;
}

id SFAirDropInvocations.UserSafetyIntervention.init(coder:)(void *a1)
{
  v2 = sub_1A98548EC(a1);

  return v2;
}

id SFAirDropInvocations.UserSafetyIntervention.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A98F8E74()
{
  result = qword_1EB3B5690;
  if (!qword_1EB3B5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5690);
  }

  return result;
}

unint64_t sub_1A98F8ECC()
{
  result = qword_1EB3B5698;
  if (!qword_1EB3B5698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B5698);
  }

  return result;
}

unint64_t sub_1A98F8F24()
{
  result = qword_1EB3B56A0;
  if (!qword_1EB3B56A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B56A8, &qword_1A99A6488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56A0);
  }

  return result;
}

unint64_t sub_1A98F8F8C()
{
  result = qword_1EB3AC390;
  if (!qword_1EB3AC390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC390);
  }

  return result;
}

unint64_t sub_1A98F9078()
{
  result = qword_1EB3B56B0;
  if (!qword_1EB3B56B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56B0);
  }

  return result;
}

unint64_t sub_1A98F90D0()
{
  result = qword_1EB3B56B8;
  if (!qword_1EB3B56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56B8);
  }

  return result;
}

unint64_t sub_1A98F9128()
{
  result = qword_1EB3B56C0;
  if (!qword_1EB3B56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56C0);
  }

  return result;
}

unint64_t sub_1A98F9180()
{
  result = qword_1EB3B56C8;
  if (!qword_1EB3B56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56C8);
  }

  return result;
}

unint64_t sub_1A98F91D8()
{
  result = qword_1EB3B56D0;
  if (!qword_1EB3B56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56D0);
  }

  return result;
}

unint64_t sub_1A98F9230()
{
  result = qword_1EB3B56D8;
  if (!qword_1EB3B56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56D8);
  }

  return result;
}

unint64_t sub_1A98F9288()
{
  result = qword_1EB3B56E0;
  if (!qword_1EB3B56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56E0);
  }

  return result;
}

unint64_t sub_1A98F92DC()
{
  result = qword_1EB3B56E8;
  if (!qword_1EB3B56E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B56E8);
  }

  return result;
}

uint64_t sub_1A98F9330()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v2 = sub_1A99767E0();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_8;
  }

  v4 = 1;
LABEL_9:
  sub_1A97B06FC(&v8, &qword_1EB3B0BA0, &unk_1A99923D0);
  return v4;
}

id sub_1A98F93F4()
{
  if (*(v0 + 81))
  {
    return 0;
  }

  v2 = *(v0 + 64);
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 32);
  result = objc_opt_self();
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v5 | v3))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4)
  {
    return [result featureEnabledForDomain:v2 feature:v4];
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1A98F9474()
{
  v1 = v0;
  sub_1A9976530();
  if (v22[1])
  {
    return v22[0];
  }

  v3 = *(v0 + 56);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A99767E0();
    v6 = [v4 objectForKey_];

    if (v6)
    {
      sub_1A99771B0();
      swift_unknownObjectRelease();
      sub_1A97AF7EC(v22, v21);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v22);

        return v20;
      }

      v7 = sub_1A99767E0();
      v8 = [v4 stringForKey_];

      if (v8)
      {
        v9 = sub_1A9976820();

        __swift_destroy_boxed_opaque_existential_0Tm(v22);
        return v9;
      }

      if (qword_1EB3B0AB0 != -1)
      {
        swift_once();
      }

      v10 = sub_1A99764A0();
      __swift_project_value_buffer(v10, qword_1EB3B0AB8);

      v11 = sub_1A9976480();
      v12 = sub_1A9976F70();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v21[0] = v14;
        *v13 = 136315138;
        v15 = sub_1A99772C0();
        v17 = v16;

        v18 = sub_1A97AF148(v15, v17, v21);

        *(v13 + 4) = v18;
        _os_log_impl(&dword_1A9662000, v11, v12, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        MEMORY[0x1AC58D2C0](v14, -1, -1);
        MEMORY[0x1AC58D2C0](v13, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v22);
    }

    else
    {
    }
  }

  v19 = *(v1 + 88);

  return v19;
}

void sub_1A98F973C(_BYTE *a1@<X8>)
{
  v2 = v1;
  sub_1A9976530();
  v4 = v23[0];
  if (LOBYTE(v23[0]) != 8)
  {
    goto LABEL_16;
  }

  v5 = *(v1 + 56);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = v5;
  v7 = sub_1A99767E0();
  v8 = [v6 objectForKey_];

  if (!v8)
  {

LABEL_15:
    v4 = *(v2 + 82);
    goto LABEL_16;
  }

  sub_1A99771B0();
  swift_unknownObjectRelease();
  sub_1A97AF7EC(v23, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58D0, &qword_1A99A6BF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v9 = sub_1A99767E0();
    v10 = [v6 stringForKey_];

    if (v10)
    {
      sub_1A9976820();

      SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.init(rawValue:)(v22);
      v11 = v22[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v23);

      *a1 = v11;
      return;
    }

    if (qword_1EB3B0AB0 != -1)
    {
      swift_once();
    }

    v12 = sub_1A99764A0();
    __swift_project_value_buffer(v12, qword_1EB3B0AB8);

    v13 = sub_1A9976480();
    v14 = sub_1A9976F70();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22[0] = v16;
      *v15 = 136315138;
      v17 = sub_1A99772C0();
      v19 = v18;

      v20 = sub_1A97AF148(v17, v19, v22);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1A9662000, v13, v14, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v16);
      MEMORY[0x1AC58D2C0](v16, -1, -1);
      MEMORY[0x1AC58D2C0](v15, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    goto LABEL_15;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v23);

  v4 = v21;
LABEL_16:
  *a1 = v4;
}

void sub_1A98F9A24(_BYTE *a1@<X8>)
{
  v2 = v1;
  sub_1A9976530();
  v4 = v34[0];
  if (LOBYTE(v34[0]) != 2)
  {
    goto LABEL_6;
  }

  v5 = *(v1 + 56);
  if (!v5)
  {
LABEL_21:
    v9 = *(v2 + 82);
    goto LABEL_22;
  }

  v6 = v5;
  v7 = sub_1A99767E0();
  v8 = [v6 objectForKey_];

  if (!v8)
  {

    goto LABEL_21;
  }

  sub_1A99771B0();
  swift_unknownObjectRelease();
  sub_1A97AF7EC(v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58B8, &qword_1A99A6BE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = sub_1A99767E0();
    v11 = [v6 stringForKey_];

    if (v11)
    {
      v12 = sub_1A9976820();
      v14 = v13;

      v15 = _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0(v12, v14);
      if (v15 != 2)
      {
        v31 = v15;

        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        v9 = v31 & 1;
        goto LABEL_22;
      }

      if (qword_1EB3B0AB0 != -1)
      {
        swift_once();
      }

      v16 = sub_1A99764A0();
      __swift_project_value_buffer(v16, qword_1EB3B0AB8);

      v17 = sub_1A9976480();
      v18 = sub_1A9976F70();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v33[0] = v20;
        *v19 = 136315138;
        v21 = sub_1A99772C0();
        v23 = v22;

        v24 = sub_1A97AF148(v21, v23, v33);

        *(v19 + 4) = v24;
        v25 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
LABEL_18:
        _os_log_impl(&dword_1A9662000, v17, v18, v25, v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v20);
        MEMORY[0x1AC58D2C0](v20, -1, -1);
        MEMORY[0x1AC58D2C0](v19, -1, -1);

LABEL_20:
        __swift_destroy_boxed_opaque_existential_0Tm(v34);
        goto LABEL_21;
      }
    }

    else
    {
      if (qword_1EB3B0AB0 != -1)
      {
        swift_once();
      }

      v26 = sub_1A99764A0();
      __swift_project_value_buffer(v26, qword_1EB3B0AB8);

      v17 = sub_1A9976480();
      v18 = sub_1A9976F70();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v33[0] = v20;
        *v19 = 136315138;
        v27 = sub_1A99772C0();
        v29 = v28;

        v30 = sub_1A97AF148(v27, v29, v33);

        *(v19 + 4) = v30;
        v25 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
        goto LABEL_18;
      }
    }

    goto LABEL_20;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v34);

  v4 = v32;
LABEL_6:
  v9 = v4 & 1;
LABEL_22:
  *a1 = v9;
}

unint64_t sub_1A98F9E08()
{
  v1 = v0;
  sub_1A9976530();
  if (BYTE4(v31[0]) != 1)
  {
    return LODWORD(v31[0]);
  }

  v2 = *(v0 + 56);
  if (!v2)
  {
    return *(v1 + 84);
  }

  v3 = v2;
  v4 = sub_1A99767E0();
  v5 = [v3 objectForKey_];

  if (!v5)
  {

    return *(v1 + 84);
  }

  sub_1A99771B0();
  swift_unknownObjectRelease();
  sub_1A97AF7EC(v31, v30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v7 = sub_1A99767E0();
    v8 = [v3 stringForKey_];

    if (v8)
    {
      v9 = sub_1A9976820();
      v11 = v10;

      v12 = sub_1A97B0120(v9, v11);
      if ((v12 & 0x100000000) == 0)
      {
        v6 = v12;
        __swift_destroy_boxed_opaque_existential_0Tm(v31);

        return v6;
      }

      if (qword_1EB3B0AB0 != -1)
      {
        swift_once();
      }

      v23 = sub_1A99764A0();
      __swift_project_value_buffer(v23, qword_1EB3B0AB8);

      v14 = sub_1A9976480();
      v15 = sub_1A9976F70();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v30[0] = v17;
        *v16 = 136315138;
        v24 = sub_1A99772C0();
        v26 = v25;

        v27 = sub_1A97AF148(v24, v26, v30);

        *(v16 + 4) = v27;
        v22 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
        goto LABEL_19;
      }
    }

    else
    {
      if (qword_1EB3B0AB0 != -1)
      {
        swift_once();
      }

      v13 = sub_1A99764A0();
      __swift_project_value_buffer(v13, qword_1EB3B0AB8);

      v14 = sub_1A9976480();
      v15 = sub_1A9976F70();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v30[0] = v17;
        *v16 = 136315138;
        v18 = sub_1A99772C0();
        v20 = v19;

        v21 = sub_1A97AF148(v18, v20, v30);

        *(v16 + 4) = v21;
        v22 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_19:
        _os_log_impl(&dword_1A9662000, v14, v15, v22, v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x1AC58D2C0](v17, -1, -1);
        MEMORY[0x1AC58D2C0](v16, -1, -1);

LABEL_21:
        __swift_destroy_boxed_opaque_existential_0Tm(v31);
        return *(v1 + 84);
      }
    }

    goto LABEL_21;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v31);

  return v29;
}

uint64_t sub_1A98FA1C8()
{
  v1 = v0;
  sub_1A9976530();
  result = LOBYTE(v27[0]);
  if (LOBYTE(v27[0]) == 3)
  {
    v3 = *(v0 + 56);
    if (v3)
    {
      v4 = v3;
      v5 = sub_1A99767E0();
      v6 = [v4 objectForKey_];

      if (v6)
      {
        sub_1A99771B0();
        swift_unknownObjectRelease();
        sub_1A97AF7EC(v27, v26);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5890, &qword_1A99A6BB8);
        if (swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0Tm(v27);

          return v25;
        }

        v10 = sub_1A99767E0();
        v11 = [v4 stringForKey_];

        if (v11)
        {
          v12 = sub_1A9976820();
          v14 = v13;

          v15 = _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0(v12, v14);
          __swift_destroy_boxed_opaque_existential_0Tm(v27);
          return v15;
        }

        if (qword_1EB3B0AB0 == -1)
        {
          goto LABEL_16;
        }

        goto LABEL_25;
      }
    }

    if (*(v0 + 81))
    {
      return *(v1 + 82);
    }

    v7 = *(v0 + 64);
    v8 = *(v1 + 80);
    if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5890, &qword_1A99A6BB8) != MEMORY[0x1E69E6370])
    {
      return *(v1 + 82);
    }

    v4 = *(v1 + 16);
    v1 = *(v1 + 32);
    v9 = objc_opt_self();
    if (v7)
    {
      if (((v1 | v8) & 1) == 0)
      {
        if (v4)
        {
          LOBYTE(v26[0]) = [v9 featureEnabledForDomain:v7 feature:v4];
          swift_dynamicCast();
          return LOBYTE(v27[0]);
        }

        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
LABEL_16:
    v16 = sub_1A99764A0();
    __swift_project_value_buffer(v16, qword_1EB3B0AB8);

    v17 = sub_1A9976480();
    v18 = sub_1A9976F70();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26[0] = v20;
      *v19 = 136315138;
      v21 = sub_1A99772C0();
      v23 = v22;

      v24 = sub_1A97AF148(v21, v23, v26);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1A9662000, v17, v18, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1AC58D2C0](v20, -1, -1);
      MEMORY[0x1AC58D2C0](v19, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v27);
    return *(v1 + 82);
  }

  return result;
}

void sub_1A98FA538(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1A99762C0();
  v35 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A9976230();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SFUserDefaultsRepresentation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + 56);
  if (v13)
  {
    sub_1A98FBF78(v2, (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0)));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v15 = *v12;
          v16 = v13;
          v17 = sub_1A99767E0();
          [v16 setBool:v15 forKey:v17];

          return;
        }

        v28 = *v12;
        v18 = v13;
        v20 = sub_1A99767E0();
        [v18 setInteger:*&v28 forKey:v20];
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v21 = v13;
        v22 = sub_1A9977A30();
        v23 = sub_1A99767E0();
        [v21 setObject:v22 forKey:v23];

LABEL_19:
        return;
      }

      v32 = *v12;
      v21 = v13;
      v33 = sub_1A99767E0();
      [v21 setDouble:v33 forKey:v32];
LABEL_18:

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v24 = v35;
        (*(v35 + 32))(v5, v12, v3);
        v25 = v13;
        _s7Sharing9SFAirDropO18TransferIdentifierV11stringValueSSvg_0();
        v26 = sub_1A99767E0();

        v27 = sub_1A99767E0();
        [v25 setObject:v26 forKey:v27];

        (*(v24 + 8))(v5, v3);
        return;
      }

      v21 = v13;
      v33 = sub_1A99767E0();
      [v21 removeObjectForKey_];
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v18 = v13;
      v19 = sub_1A99767E0();

      v20 = sub_1A99767E0();
      [v18 setObject:v19 forKey:v20];

LABEL_14:
      return;
    }

    (*(v7 + 32))(v9, v12, v6);
    v29 = v13;
    v30 = sub_1A99760F0();
    v31 = sub_1A99767E0();
    [v29 setObject:v30 forKey:v31];

    (*(v7 + 8))(v9, v6);
  }
}

void sub_1A98FA9C8(char a1)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    if (a1 == 2)
    {
      v5 = v2;
      v3 = sub_1A99767E0();
      [v5 removeObjectForKey_];
    }

    else
    {
      v3 = v2;
      v5 = sub_1A99767E0();
      [v3 setBool:a1 & 1 forKey:?];
    }
  }
}

double sub_1A98FAAA0@<D0>(uint64_t a1@<X8>)
{
  v4 = v1[5];
  v3 = v1[6];

  sub_1A98F9474();
  sub_1A9977400();

  sub_1A9976530();

  v5 = sub_1A98F9330();
  v6 = sub_1A98F93F4();
  v7 = v1[16];
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 1;
  *(a1 + 33) = v5 & 1;
  *(a1 + 34) = v6 & 1;
  *(a1 + 35) = 0;
  *(a1 + 40) = v7;

  return result;
}

double sub_1A98FABA0@<D0>(uint64_t a1@<X8>)
{
  v4 = v1[5];
  v3 = v1[6];
  v13 = 0;
  v14 = 0xE000000000000000;

  sub_1A98F973C(&v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58D0, &qword_1A99A6BF8);
  sub_1A9977400();
  v5 = v13;
  v6 = v14;
  sub_1A9976530();
  v7 = v13 != 8;
  v8 = sub_1A98F9330();
  v9 = sub_1A98F93F4();
  v10 = v1[14];
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 33) = v8 & 1;
  *(a1 + 34) = v9 & 1;
  *(a1 + 35) = 0;
  *(a1 + 40) = v10;

  return result;
}

double sub_1A98FAC98@<D0>(uint64_t a1@<X8>)
{
  v4 = v1[5];
  v3 = v1[6];
  BYTE8(v9) = 0;

  *&v9 = sub_1A966D160() & 1;
  sub_1A9977400();
  sub_1A9976530();
  v5 = sub_1A98F9330();
  v6 = sub_1A98F93F4();
  v7 = v1[14];
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(&v9 + 1);
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = BYTE1(v9) != 2;
  *(a1 + 33) = v5 & 1;
  *(a1 + 34) = v6 & 1;
  *(a1 + 35) = 256;
  *(a1 + 40) = v7;

  return result;
}

double sub_1A98FAD88@<D0>(uint64_t a1@<X8>)
{
  v4 = v1[5];
  v3 = v1[6];
  v13 = 0;
  v14 = 0xE000000000000000;

  sub_1A98F9A24(&v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58B8, &qword_1A99A6BE0);
  sub_1A9977400();
  v5 = v13;
  v6 = v14;
  sub_1A9976530();
  v7 = v13 != 2;
  v8 = sub_1A98F9330();
  v9 = sub_1A98F93F4();
  v10 = v1[14];
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 33) = v8 & 1;
  *(a1 + 34) = v9 & 1;
  *(a1 + 35) = 0;
  *(a1 + 40) = v10;

  return result;
}

double sub_1A98FAE88@<D0>(uint64_t a1@<X8>)
{
  v4 = v1[5];
  v3 = v1[6];

  v9 = sub_1A98F9E08();
  sub_1A9977400();
  sub_1A9976530();
  v5 = sub_1A98F9330();
  v6 = sub_1A98F93F4();
  v7 = v1[14];
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = HIDWORD(v9);
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 1;
  *(a1 + 33) = v5 & 1;
  *(a1 + 34) = v6 & 1;
  *(a1 + 35) = 0;
  *(a1 + 40) = v7;

  return result;
}

double sub_1A98FAF70@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5890, &qword_1A99A6BB8) == MEMORY[0x1E69E6370];
  v5 = v1[5];
  v4 = v1[6];
  BYTE8(v10) = 0;

  *&v10 = sub_1A98FA1C8();
  sub_1A9977400();
  sub_1A9976530();
  v6 = sub_1A98F9330();
  v7 = sub_1A98F93F4();
  v8 = v1[14];
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(&v10 + 1);
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = BYTE1(v10) != 3;
  *(a1 + 33) = v6 & 1;
  *(a1 + 34) = v7 & 1;
  *(a1 + 35) = 0;
  *(a1 + 36) = v3;
  *(a1 + 40) = v8;

  return result;
}

void sub_1A98FB080(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  MEMORY[0x1AC5895B0](0x676E69727453, 0xE600000000000000);
  MEMORY[0x1AC5895B0](125, 0xE100000000000000);

  v8 = a3[7];

  if (v8)
  {
    v9 = v8;
    v10 = sub_1A99767E0();
    v11 = sub_1A99767E0();
    [v9 setObject:v10 forKey:{v11, 0, 0xE000000000000000}];
  }

  a4[3] = MEMORY[0x1E69E6158];
  *a4 = a1;
  a4[1] = a2;
}

uint64_t sub_1A98FB1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.init(rawValue:)(v8);
  v6 = LOBYTE(v8[0]);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  MEMORY[0x1AC5895B0](0xD000000000000019, 0x80000001A99E7F40);
  MEMORY[0x1AC5895B0](125, 0xE100000000000000);

  sub_1A98FA538(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58D0, &qword_1A99A6BF8);
  *(a3 + 24) = result;
  *a3 = v6;
  return result;
}

void sub_1A98FB31C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{

  v8 = _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0(a1, a2);
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  MEMORY[0x1AC5895B0](1819242306, 0xE400000000000000);
  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  if (v8 == 2)
  {
    sub_1A97BCDE0();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0xD00000000000004CLL;
    v9[3] = 0x80000001A99E2A20;
    v9[4] = 235;
    v9[10] = 0x2000000000000000;
    swift_willThrow();
  }

  else
  {

    v10 = a3[7];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1A99767E0();
      [v11 setBool:v8 & 1 forKey:v12];
    }

    *(a4 + 24) = MEMORY[0x1E69E6370];
    *a4 = v8 & 1;
  }
}

uint64_t sub_1A98FB4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{

  v8 = _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0(a1, a2);
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  MEMORY[0x1AC5895B0](0xD000000000000014, 0x80000001A99E7F20);
  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  if (v8 == 2)
  {
    sub_1A97BCDE0();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    v9[2] = 0xD00000000000004CLL;
    v9[3] = 0x80000001A99E2A20;
    v9[4] = 235;
    v9[10] = 0x2000000000000000;
    return swift_willThrow();
  }

  else
  {

    v11 = a3[7];
    if (v11)
    {
      v12 = v11;
      v13 = sub_1A99767E0();
      [v12 setBool:v8 & 1 forKey:v13];
    }

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58B8, &qword_1A99A6BE0);
    *(a4 + 24) = result;
    *a4 = v8 & 1;
  }

  return result;
}

void sub_1A98FB6D8(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{

  v8 = sub_1A97B0120(a1, a2);
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  MEMORY[0x1AC5895B0](0x3233746E4955, 0xE600000000000000);
  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  if ((v8 & 0x100000000) != 0)
  {
    sub_1A97BCDE0();
    swift_allocError();
    *v13 = 0;
    v13[1] = 0xE000000000000000;
    v13[2] = 0xD00000000000004CLL;
    v13[3] = 0x80000001A99E2A20;
    v13[4] = 235;
    v13[10] = 0x2000000000000000;
    swift_willThrow();
  }

  else
  {

    v9 = a3[7];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1A9977A30();
      v12 = sub_1A99767E0();
      [v10 setObject:v11 forKey:v12];
    }

    *(a4 + 24) = MEMORY[0x1E69E7668];
    *a4 = v8;
  }
}

uint64_t sub_1A98FB8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  v6 = _sSb7SharingE18userDefaultsStringSbSgSS_tcfC_0(a1, a2);
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000042, 0x80000001A99E29D0);
  MEMORY[0x1AC5895B0](a1, a2);
  MEMORY[0x1AC5895B0](0x203A65756C617620, 0xE800000000000000);
  MEMORY[0x1AC5895B0](0x6C616E6F6974704FLL, 0xEE003E6C6F6F423CLL);
  MEMORY[0x1AC5895B0](125, 0xE100000000000000);

  sub_1A98FA9C8(v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5890, &qword_1A99A6BB8);
  *(a3 + 24) = result;
  *a3 = v6;
  return result;
}

uint64_t sub_1A98FB9E0(void *a1)
{
  v1 = a1[7];
  if (v1)
  {
    v2 = sub_1A99767E0();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_1A99771B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8 = v6;
    v9 = v7;
    if (*(&v7 + 1))
    {
      sub_1A97B06FC(&v8, &qword_1EB3B0BA0, &unk_1A99923D0);
      v4 = sub_1A99767E0();
      [v1 removeObjectForKey_];

      return 1;
    }
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  sub_1A97B06FC(&v8, &qword_1EB3B0BA0, &unk_1A99923D0);
  return 0;
}

uint64_t sub_1A98FBAF8(void *a1)
{
  v2 = a1[6];
  v3 = a1[16];
  v7[0] = a1[5];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = sub_1A9903778;
  v7[4] = a1;
  v7[5] = sub_1A99037C0;
  v7[6] = a1;
  v7[7] = sub_1A9903794;
  v7[8] = a1;
  v4 = *(v1 + 24);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1A99037E0(v5);
  os_unfair_lock_unlock(v4 + 4);
  return sub_1A97B229C(v7);
}

uint64_t sub_1A98FBBB8(void *a1)
{
  v2 = a1[6];
  v3 = a1[14];
  v7[0] = a1[5];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = sub_1A9903758;
  v7[4] = a1;
  v7[5] = sub_1A99037C0;
  v7[6] = a1;
  v7[7] = sub_1A9903774;
  v7[8] = a1;
  v4 = *(v1 + 24);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1A99037E0(v5);
  os_unfair_lock_unlock(v4 + 4);
  return sub_1A97B229C(v7);
}

uint64_t sub_1A98FBC78(void *a1)
{
  v2 = a1[6];
  v3 = a1[14];
  v7[0] = a1[5];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = sub_1A99036B8;
  v7[4] = a1;
  v7[5] = sub_1A99037C0;
  v7[6] = a1;
  v7[7] = sub_1A99036D4;
  v7[8] = a1;
  v4 = *(v1 + 24);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1A97B2280(v5);
  os_unfair_lock_unlock(v4 + 4);
  return sub_1A97B229C(v7);
}

uint64_t sub_1A98FBD38(void *a1)
{
  v2 = a1[6];
  v3 = a1[14];
  v7[0] = a1[5];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = sub_1A9903718;
  v7[4] = a1;
  v7[5] = sub_1A9903738;
  v7[6] = a1;
  v7[7] = sub_1A9903734;
  v7[8] = a1;
  v4 = *(v1 + 24);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1A99037E0(v5);
  os_unfair_lock_unlock(v4 + 4);
  return sub_1A97B229C(v7);
}

uint64_t sub_1A98FBDF8(void *a1)
{
  v2 = a1[6];
  v3 = a1[14];
  v7[0] = a1[5];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = sub_1A99036F8;
  v7[4] = a1;
  v7[5] = sub_1A99037C0;
  v7[6] = a1;
  v7[7] = sub_1A9903714;
  v7[8] = a1;
  v4 = *(v1 + 24);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1A99037E0(v5);
  os_unfair_lock_unlock(v4 + 4);
  return sub_1A97B229C(v7);
}

uint64_t sub_1A98FBEB8(void *a1)
{
  v2 = a1[6];
  v3 = a1[14];
  v7[0] = a1[5];
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = sub_1A99036D8;
  v7[4] = a1;
  v7[5] = sub_1A99037C0;
  v7[6] = a1;
  v7[7] = sub_1A99036F4;
  v7[8] = a1;
  v4 = *(v1 + 24);
  swift_retain_n();

  os_unfair_lock_lock(v4 + 4);
  sub_1A99037E0(v5);
  os_unfair_lock_unlock(v4 + 4);
  return sub_1A97B229C(v7);
}

uint64_t sub_1A98FBF78@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 <= 3u)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
    v5 = 0x706F7244726961;
    if (a1 != 2)
    {
      v5 = 1952802157;
      v4 = 0xE400000000000000;
    }

    if (a1)
    {
      v3 = 0x636972656E6567;
    }

    if (a1 <= 1u)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if (a1 <= 1u)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = v4;
    }

    goto LABEL_17;
  }

  if (a1 <= 5u)
  {
    v7 = 0xE500000000000000;
    v6 = 0x6572616873;
    if (a1 != 4)
    {
      v6 = 0x6D79615072656570;
      v7 = 0xEB00000000746E65;
    }

    goto LABEL_17;
  }

  if (a1 == 6)
  {
    v7 = 0xE400000000000000;
    v6 = 1230324804;
LABEL_17:
    *a2 = v6;
    a2[1] = v7;
    type metadata accessor for SFUserDefaultsRepresentation(0);
    goto LABEL_18;
  }

  type metadata accessor for SFUserDefaultsRepresentation(0);
LABEL_18:

  return swift_storeEnumTagMultiPayload();
}

char *sub_1A98FC0AC(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A97AEE98(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void AirDropFeatureFlag.wrappedValue.setter(char a1)
{
  v2 = *(*(v1 + 16) + 56);
  if (v2)
  {
    v4 = v2;
    v5 = sub_1A99767E0();
    [v4 setBool:a1 & 1 forKey:v5];
  }
}

uint64_t (*SFAirDropUserDefaults.solariumEnabled.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__solariumEnabled);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.walkAwayEnabled.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__walkAwayEnabled);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t sub_1A98FC4A0(void *a1)
{

  v1 = sub_1A966D160();

  if (v1)
  {
    if (SFDeviceClassCodeGet(v2, v3) == 3)
    {
      if (qword_1EB3ACAB8 != -1)
      {
        swift_once();
      }

      v4 = qword_1EB3ACAC0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B56F8, &qword_1A99A6930);
      inited = swift_initStackObject();
      *(inited + 16) = "FlyingScotsman";
      *(inited + 24) = 14;
      *(inited + 32) = 2;
      *(inited + 56) = v4;
      *(inited + 64) = "SpringBoard";
      *(inited + 72) = 11;
      *(inited + 80) = 2;
      *(inited + 82) = 0;
      *(inited + 96) = 0;
      *(inited + 104) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5700, &unk_1A99A6938);
      swift_allocObject();
      v6 = v4;
      *(inited + 88) = sub_1A9976570();
      *(inited + 112) = MEMORY[0x1E69E7CC0];
      *(inited + 40) = sub_1A99768B0();
      *(inited + 48) = v7;
      v8 = sub_1A966D160();
      swift_setDeallocating();
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t (*SFAirDropUserDefaults.askToAirDropEnabled.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__askToAirDropEnabled);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.contactShareAfterAirDropEnabled.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__contactShareAfterAirDropEnabled);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.boopToActionEnabled.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__boopToActionEnabled);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.boopToAirDropEnabled.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__boopToAirDropEnabled);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.boopToCollaborateEnabled.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__boopToCollaborateEnabled);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.shockwaveEffectEnabled.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__shockwaveEffectEnabled);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

void *AirDropUserDefault.__allocating_init(wrappedValue:_:kill:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a4;
  swift_allocObject();
  v12 = sub_1A9902630(a1, a2, a3, v8, a5);
  (*(*(*(v6 + 80) - 8) + 8))(a1);
  return v12;
}

uint64_t SFAirDropUserDefaults.shockwaveEffectVariant.getter()
{

  v0 = sub_1A98F9474();

  return v0;
}

uint64_t sub_1A98FCAB8@<X0>(uint64_t *a2@<X8>)
{

  v3 = sub_1A98F9474();
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
  return result;
}

void SFAirDropUserDefaults.shockwaveEffectVariant.setter(uint64_t a1, uint64_t a2)
{
  v3 = *(*(*(v2 + OBJC_IVAR___SFAirDropUserDefaults__shockwaveEffectVariant) + 16) + 56);
  if (v3)
  {

    v6 = v3;
    v4 = sub_1A99767E0();

    v5 = sub_1A99767E0();
    [v6 setObject:v4 forKey:v5];
  }

  else
  {
  }
}

void sub_1A98FCC28(char a1)
{
  v2 = *(*(v1 + 16) + 56);
  if (v2)
  {
    if (a1 == 2)
    {
      v5 = v2;
      v3 = sub_1A99767E0();
      [v5 removeObjectForKey_];
    }

    else
    {
      v3 = v2;
      v5 = sub_1A99767E0();
      [v3 setBool:a1 & 1 forKey:?];
    }
  }
}

uint64_t AirDropUserDefault.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1A9902B3C(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t (*SFAirDropUserDefaults.shockwaveEffectVariant.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__shockwaveEffectVariant);

  *a1 = sub_1A98F9474();
  a1[1] = v3;
  return sub_1A98FCDDC;
}

uint64_t sub_1A98FCDDC(uint64_t *a1, char a2)
{
  v2 = a1[2];
  if (a2)
  {
    v3 = *(*(v2 + 16) + 56);
    if (v3)
    {

      v4 = v3;
      v5 = sub_1A99767E0();

      v6 = sub_1A99767E0();
      [v4 setObject:v5 forKey:v6];
    }
  }

  else
  {
    v7 = *(*(v2 + 16) + 56);
    if (v7)
    {
      v8 = v7;
      v9 = sub_1A99767E0();

      v10 = sub_1A99767E0();
      [v8 setObject:v9 forKey:v10];
    }

    else
    {
    }
  }
}

uint64_t SFAirDropUserDefaults.boopInteractionTypeOverride.getter@<X0>(_BYTE *a1@<X8>)
{

  sub_1A98F973C(a1);
}

uint64_t sub_1A98FCFB0@<X0>(_BYTE *a2@<X8>)
{

  sub_1A98F973C(&v4);

  *a2 = v4;
  return result;
}

uint64_t sub_1A98FD014(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;

  sub_1A98FA538(v2);
}

uint64_t SFAirDropUserDefaults.boopInteractionTypeOverride.setter(unsigned __int8 *a1)
{
  v1 = *a1;

  sub_1A98FA538(v1);
}

uint64_t (*SFAirDropUserDefaults.boopInteractionTypeOverride.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__boopInteractionTypeOverride);

  sub_1A98F973C((a1 + 8));
  return sub_1A98FD138;
}

uint64_t sub_1A98FD138(uint64_t *a1)
{
  sub_1A98FA538(*(a1 + 8));
}

uint64_t (*SFAirDropUserDefaults.shockwaveHapticsPlayerStartsEarly.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__shockwaveHapticsPlayerStartsEarly);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.nearFieldControllerEnabled.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__nearFieldControllerEnabled);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.finalALPN.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__finalALPN);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t SFAirDropUserDefaults.privacyImprovements.getter()
{
  if ((qword_1EB3B3940 & 0x13) != 0)
  {

    v0 = sub_1A966D160();

    v1 = (v0 & 1) != 0 && IsAppleInternalBuild() != 0;
    if (MEMORY[0x1E69A53F8])
    {
      v2 = [objc_opt_self() sharedInstance];
      v3 = sub_1A99767E0();
      v4 = [v2 objectForKey_];

      if (v4)
      {
        sub_1A99771B0();
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
        if (swift_dynamicCast())
        {
          v1 &= v6 ^ 1;
        }
      }

      else
      {
        sub_1A97B06FC(v9, &qword_1EB3B0BA0, &unk_1A99923D0);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t SFAirDropUserDefaults.idmsDefaultBackoffMS.getter()
{
  v0 = 300000;
  if (MEMORY[0x1E69A53F8])
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = sub_1A99767E0();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_1A99771B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
      sub_1A97B06FC(v8, &qword_1EB3B0BA0, &unk_1A99923D0);
    }
  }

  return v0;
}

uint64_t SFAirDropUserDefaults.idmsHandleRetryDelaySeconds.getter()
{
  v0 = 604800;
  if (MEMORY[0x1E69A53F8])
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = sub_1A99767E0();
    v3 = [v1 objectForKey_];

    if (v3)
    {
      sub_1A99771B0();
      swift_unknownObjectRelease();
    }

    else
    {
      v6 = 0u;
      v7 = 0u;
    }

    v8[0] = v6;
    v8[1] = v7;
    if (*(&v7 + 1))
    {
      if (swift_dynamicCast())
      {
        return v5;
      }
    }

    else
    {
      sub_1A97B06FC(v8, &qword_1EB3B0BA0, &unk_1A99923D0);
    }
  }

  return v0;
}

uint64_t (*SFAirDropUserDefaults.browseAllInterfaces.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__browseAllInterfaces);

  sub_1A98F9A24((a1 + 8));
  return sub_1A99037CC;
}

uint64_t sub_1A98FD7B0@<X0>(_BYTE *a2@<X8>)
{

  sub_1A98F9A24(a2);
}

uint64_t sub_1A98FD808@<X0>(_BYTE *a3@<X8>)
{

  sub_1A98F9A24(&v5);

  *a3 = v5;
  return result;
}

void sub_1A98FD874(unsigned __int8 *a1, void *a2)
{
  v3 = *(*(*(v2 + *a2) + 16) + 56);
  if (v3)
  {
    v4 = *a1;

    v5 = v3;
    v6 = sub_1A99767E0();
    [v5 setBool:v4 forKey:v6];
  }
}

uint64_t (*SFAirDropUserDefaults.registerAllInterfaces.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__registerAllInterfaces);

  sub_1A98F9A24((a1 + 8));
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.enabledDemoMode.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__enabledDemoMode);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.disableAirDrop.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__disableAirDrop);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A98FDAB4;
}

uint64_t (*SFAirDropUserDefaults.disableTLS.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__disableTLS);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.disableAirDropBLEAdvertising.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__disableAirDropBLEAdvertising);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.disableAutoAccept.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__disableAutoAccept);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.disableExtractMediaFromBundles.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__disableExtractMediaFromBundles);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.disableTransformingPhotosAssetBundlesToFolders.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__disableTransformingPhotosAssetBundlesToFolders);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.alwaysExchangeContacts.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__alwaysExchangeContacts);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.a2aRangingAssumeClose.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__a2aRangingAssumeClose);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.a2aRangingAssumeFar.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__a2aRangingAssumeFar);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

unint64_t SFAirDropUserDefaults.quicIdleTimeout.getter()
{

  v0 = sub_1A98F9E08();

  return v0;
}

uint64_t sub_1A98FDF74@<X0>(_DWORD *a2@<X8>)
{

  v3 = sub_1A98F9E08();

  *a2 = v3;
  return result;
}

void SFAirDropUserDefaults.quicIdleTimeout.setter(uint64_t a1)
{
  v2 = *(*(*(v1 + OBJC_IVAR___SFAirDropUserDefaults__quicIdleTimeout) + 16) + 56);
  if (v2)
  {

    v5 = v2;
    v3 = sub_1A9977A30();
    v4 = sub_1A99767E0();
    [v5 setObject:v3 forKey:v4];
  }
}

uint64_t (*SFAirDropUserDefaults.quicIdleTimeout.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__quicIdleTimeout);

  *(a1 + 8) = sub_1A98F9E08();
  return sub_1A98FE0E8;
}

uint64_t sub_1A98FE0E8(void *a1)
{
  v1 = *(*(*a1 + 16) + 56);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A9977A30();
    v4 = sub_1A99767E0();
    [v2 setObject:v3 forKey:v4];
  }
}

uint64_t (*SFAirDropUserDefaults.verboseWalkAway.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__verboseWalkAway);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.nearFieldSharingEnabled.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__nearFieldSharingEnabled);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.objcNearFieldSharingEnabled.modify(uint64_t a1))()
{
  v3 = OBJC_IVAR___SFAirDropUserDefaults__nearFieldSharingEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;

  v4 = sub_1A966D160();

  *(a1 + 16) = v4 & 1;
  return sub_1A98FE370;
}

uint64_t (*SFAirDropUserDefaults.cellularUsageEnabled.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__cellularUsageEnabled);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t sub_1A98FE40C(char *a1, uint64_t a2, void *a3)
{
  v3 = a1;

  v4 = sub_1A966D160();

  return v4 & 1;
}

uint64_t (*SFAirDropUserDefaults.objcCellularUsageEnabled.modify(uint64_t a1))()
{
  v3 = OBJC_IVAR___SFAirDropUserDefaults__cellularUsageEnabled;
  *a1 = v1;
  *(a1 + 8) = v3;

  v4 = sub_1A966D160();

  *(a1 + 16) = v4 & 1;
  return sub_1A99037D8;
}

uint64_t sub_1A98FE530(uint64_t result)
{
  v1 = *(*(*(*result + *(result + 8)) + 16) + 56);
  if (v1)
  {
    v2 = *(result + 16);

    v3 = v1;
    v4 = sub_1A99767E0();
    [v3 setBool:v2 forKey:v4];
  }

  return result;
}

uint64_t SFAirDropUserDefaults.identitySyncServiceEnabled.getter()
{
  v2[3] = &type metadata for SFAirDropSharedFeature;
  v2[4] = sub_1A9902BFC();
  v0 = sub_1A9976310();
  __swift_destroy_boxed_opaque_existential_0Tm(v2);
  return v0 & 1;
}

void sub_1A98FE630()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1A99767E0();
  v2 = [v0 initWithSuiteName_];

  qword_1EB3ACAC0 = v2;
}

uint64_t (*SFAirDropUserDefaults.sensitivePreviewOverride.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__sensitivePreviewOverride);

  *(a1 + 8) = sub_1A98FA1C8();
  return sub_1A99037DC;
}

uint64_t sub_1A98FE734(void *a1)
{

  v1 = sub_1A98FA1C8();

  return v1;
}

uint64_t sub_1A98FE778@<X0>(_BYTE *a3@<X8>)
{

  v4 = sub_1A98FA1C8();

  *a3 = v4;
  return result;
}

void sub_1A98FE7D8(char a1, void *a2)
{
  v3 = *(*(*(v2 + *a2) + 16) + 56);
  if (v3)
  {
    if (a1 == 2)
    {

      v6 = v3;
      v4 = sub_1A99767E0();
      [v6 removeObjectForKey_];
    }

    else
    {

      v4 = v3;
      v6 = sub_1A99767E0();
      [v4 setBool:a1 & 1 forKey:?];
    }
  }
}

uint64_t (*SFAirDropUserDefaults.sensitiveContentOverride.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__sensitiveContentOverride);

  *(a1 + 8) = sub_1A98FA1C8();
  return sub_1A98FE93C;
}

uint64_t sub_1A98FE940(uint64_t *a1)
{
  sub_1A98FCC28(*(a1 + 8));
}

uint64_t (*SFAirDropUserDefaults.showTransferIdentifierUI.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__showTransferIdentifierUI);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t (*SFAirDropUserDefaults.alwaysAutoAccept.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__alwaysAutoAccept);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t sub_1A98FEAB4@<X0>(_BYTE *a3@<X8>)
{

  v4 = sub_1A966D160();

  *a3 = v4 & 1;
  return result;
}

void sub_1A98FEB18(char a1, void *a2)
{
  v3 = *(*(*(v2 + *a2) + 16) + 56);
  if (v3)
  {

    v5 = v3;
    v6 = sub_1A99767E0();
    [v5 setBool:a1 & 1 forKey:v6];
  }
}

uint64_t (*SFAirDropUserDefaults.overrideReceivedFilesPathiOS.modify(uint64_t a1))()
{
  *a1 = *(v1 + OBJC_IVAR___SFAirDropUserDefaults__overrideReceivedFilesPathiOS);

  *(a1 + 8) = sub_1A966D160() & 1;
  return sub_1A99037CC;
}

uint64_t sub_1A98FEC38(void *a1)
{
  v2 = *a1;
  v1 = (a1 + 1);
  v3 = *(*(v2 + 16) + 56);
  if (v3)
  {
    v4 = *v1;
    v5 = v3;
    v6 = sub_1A99767E0();
    [v5 setBool:v4 forKey:v6];
  }
}

uint64_t sub_1A98FECDC()
{
  [objc_allocWithZone(type metadata accessor for SFAirDropUserDefaults()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B58E8, &unk_1A99A6C10);
  swift_allocObject();
  result = sub_1A9977AE0();
  qword_1EB3ACAC8 = result;
  return result;
}

id SFAirDropUserDefaults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFAirDropUserDefaults.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR___SFAirDropUserDefaults__solariumEnabled;
  type metadata accessor for AirDropFeatureFlag();
  v4 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("ShareSheetSolarium", 18, 2, &unk_1F1D278D8);
  *&v1[v3] = v4;
  v5 = OBJC_IVAR___SFAirDropUserDefaults__airDropPrivateContactDiscoveryEnabled;
  v6 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AirDropPrivateContactDiscovery", 30, 2, &unk_1F1D27900);
  *&v1[v5] = v6;
  v7 = OBJC_IVAR___SFAirDropUserDefaults__walkAwayEnabled;
  v8 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AirDropWalkAway", 15, 2, &unk_1F1D27928);
  *&v1[v7] = v8;
  v9 = OBJC_IVAR___SFAirDropUserDefaults__airDropSystemLevelProgressEnabled;
  v10 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AirDropSystemLevelProgress", 26, 2, &unk_1F1D27950);
  *&v1[v9] = v10;
  v11 = OBJC_IVAR___SFAirDropUserDefaults__airDropMoveToAppEnabled;
  v12 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AirDropMoveToApp", 16, 2, &unk_1F1D27978);
  *&v1[v11] = v12;
  v13 = OBJC_IVAR___SFAirDropUserDefaults__askToAirDropEnabled;
  v14 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AskToAirDrop", 12, 2, &unk_1F1D279A0);
  *&v1[v13] = v14;
  v15 = OBJC_IVAR___SFAirDropUserDefaults__contactShareAfterAirDropEnabled;
  v16 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AirDropContactShare", 19, 2, &unk_1F1D279C8);
  *&v1[v15] = v16;
  v17 = OBJC_IVAR___SFAirDropUserDefaults__boopToActionEnabled;
  v18 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("BoopToAction", 12, 2, &unk_1F1D279F0);
  *&v1[v17] = v18;
  v19 = OBJC_IVAR___SFAirDropUserDefaults__boopToAirDropEnabled;
  v20 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("BoopToAirDrop", 13, 2, &unk_1F1D27A18);
  *&v1[v19] = v20;
  v21 = OBJC_IVAR___SFAirDropUserDefaults__boopToCollaborateEnabled;
  v22 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("BoopToCollaborate", 17, 2, &unk_1F1D27A40);
  *&v1[v21] = v22;
  v23 = OBJC_IVAR___SFAirDropUserDefaults__shockwaveEffectEnabled;
  v24 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("BoopShockwave", 13, 2, &unk_1F1D27A68);
  *&v1[v23] = v24;
  v25 = OBJC_IVAR___SFAirDropUserDefaults__shockwaveEffectVariant;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5838, &qword_1A99A6948);
  swift_allocObject();
  *&v1[v25] = sub_1A98FFEE0(0xD000000000000016, 0x80000001A99E7460, "BoopShockwaveVariant", 20, 2, &unk_1F1D27A90);
  v26 = OBJC_IVAR___SFAirDropUserDefaults__boopInteractionTypeOverride;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5840, &qword_1A99A6950);
  swift_allocObject();
  *&v1[v26] = sub_1A99003E0(7, "BoopInteractionTypeOverride", 27, 2, &unk_1F1D27AB8);
  v27 = OBJC_IVAR___SFAirDropUserDefaults__shockwaveHapticsPlayerStartsEarly;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5848, &qword_1A99A6958);
  swift_allocObject();
  *&v1[v27] = sub_1A99008CC(1, "ShockwaveHapticsPlayerStartsEarly", 33, 2, &unk_1F1D27AE0);
  v28 = OBJC_IVAR___SFAirDropUserDefaults__nearFieldControllerEnabled;
  v29 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("NearFieldController", 19, 2, &unk_1F1D27B08);
  *&v1[v28] = v29;
  v30 = OBJC_IVAR___SFAirDropUserDefaults__finalALPN;
  v31 = swift_allocObject();
  AirDropFeatureFlag.init(_:kill:)("AirDropFinalALPN", 16, 2, &unk_1F1D27B30);
  *&v1[v30] = v31;
  v32 = OBJC_IVAR___SFAirDropUserDefaults___privacyImprovements;
  v33 = swift_allocObject();
  v34 = AirDropFeatureFlag.init(_:kill:)("AirDropPrivacyImprovements", 26, 2, &unk_1F1D27B58);
  *&v1[v32] = v33;
  v36 = SFIsRunningUnitTests(v34, v35);
  v38 = SFIsRunningUnitTests(v36, v37);
  v40 = SFIsRunningUnitTests(v38, v39);
  v42 = SFIsRunningUnitTests(v40, v41);
  v44 = SFIsRunningUnitTests(v42, v43);
  if (v44)
  {
    SFIsRunningUnitTests(v44, v45);
  }

  else
  {
    if (SFDeviceIsVirtualMachine())
    {
      v46 = 1;
      goto LABEL_7;
    }

    IsAppleInternalBuild();
  }

  v46 = 0;
LABEL_7:
  v47 = OBJC_IVAR___SFAirDropUserDefaults__browseAllInterfaces;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5850, &qword_1A99A6960);
  swift_allocObject();
  v48 = sub_1A9900DBC(v46, "BrowseAllInterfaces", 19, 2, MEMORY[0x1E69E7CC0]);
  *&v1[v47] = v48;
  v50 = SFIsRunningUnitTests(v48, v49);
  v52 = SFIsRunningUnitTests(v50, v51);
  v54 = SFIsRunningUnitTests(v52, v53);
  v56 = SFIsRunningUnitTests(v54, v55);
  v58 = SFIsRunningUnitTests(v56, v57);
  if (v58)
  {
    SFIsRunningUnitTests(v58, v59);
  }

  else
  {
    if (SFDeviceIsVirtualMachine())
    {
      v60 = 1;
      goto LABEL_13;
    }

    IsAppleInternalBuild();
  }

  v60 = 0;
LABEL_13:
  v61 = OBJC_IVAR___SFAirDropUserDefaults__registerAllInterfaces;
  swift_allocObject();
  v62 = MEMORY[0x1E69E7CC0];
  *&v1[v61] = sub_1A9900DBC(v60, "RegisterAllInterfaces", 21, 2, MEMORY[0x1E69E7CC0]);
  v63 = OBJC_IVAR___SFAirDropUserDefaults__enabledDemoMode;
  swift_allocObject();
  *&v1[v63] = sub_1A99008CC(0, "EnableDemoMode", 14, 2, v62);
  v64 = OBJC_IVAR___SFAirDropUserDefaults__disableAirDrop;
  swift_allocObject();
  *&v1[v64] = sub_1A99008CC(0, "DisableAirDrop", 14, 2, v62);
  v65 = OBJC_IVAR___SFAirDropUserDefaults__disableTLS;
  swift_allocObject();
  *&v1[v65] = sub_1A99008CC(0, "DisableTLS", 10, 2, v62);
  v66 = OBJC_IVAR___SFAirDropUserDefaults__disableAirDropBLEAdvertising;
  swift_allocObject();
  *&v1[v66] = sub_1A99008CC(0, "DisableAirDropAdvertising", 25, 2, v62);
  v67 = OBJC_IVAR___SFAirDropUserDefaults__disableAutoAccept;
  swift_allocObject();
  *&v1[v67] = sub_1A99008CC(0, "DisableAutoAccept", 17, 2, v62);
  v68 = OBJC_IVAR___SFAirDropUserDefaults__disableExtractMediaFromBundles;
  swift_allocObject();
  *&v1[v68] = sub_1A99008CC(0, "DisableExtractMediaFromBundles", 30, 2, v62);
  v69 = OBJC_IVAR___SFAirDropUserDefaults__disableTransformingPhotosAssetBundlesToFolders;
  swift_allocObject();
  *&v1[v69] = sub_1A99008CC(0, "DisableTransformingPhotosAssetBundlesToFolders", 46, 2, v62);
  v70 = OBJC_IVAR___SFAirDropUserDefaults__alwaysExchangeContacts;
  swift_allocObject();
  *&v1[v70] = sub_1A99008CC(0, "AirDropAlwaysExchangeContacts", 29, 2, &unk_1F1D27B80);
  v71 = OBJC_IVAR___SFAirDropUserDefaults__a2aRangingAssumeClose;
  swift_allocObject();
  *&v1[v71] = sub_1A99008CC(0, "A2ARangingAssumeClose", 21, 2, v62);
  v72 = OBJC_IVAR___SFAirDropUserDefaults__a2aRangingAssumeFar;
  swift_allocObject();
  *&v1[v72] = sub_1A99008CC(0, "A2ARangingAssumeFar", 19, 2, v62);
  v73 = OBJC_IVAR___SFAirDropUserDefaults__quicIdleTimeout;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5858, &qword_1A99A6968);
  swift_allocObject();
  *&v1[v73] = sub_1A99012AC(300000, "QUICIdleTimeout", 15, 2, &unk_1F1D27BA8);
  v74 = OBJC_IVAR___SFAirDropUserDefaults__verboseWalkAway;
  swift_allocObject();
  *&v1[v74] = sub_1A99008CC(0, "VerboseWalkAway", 15, 2, v62);
  v75 = OBJC_IVAR___SFAirDropUserDefaults__nearFieldSharingEnabled;
  swift_allocObject();
  v76 = sub_1A99008CC(1, "NearFieldSharingEnabled", 23, 2, v62);
  *&v1[v75] = v76;
  v78 = SFIsGreenTeaDevice(v76, v77);
  v80 = 0;
  if ((v78 & 1) == 0)
  {
    v81 = SFDeviceClassCodeGet(v78, v79);
    v80 = v81 == 1 || SFDeviceClassCodeGet(v81, v82) == 3;
  }

  v83 = OBJC_IVAR___SFAirDropUserDefaults__cellularUsageEnabled;
  swift_allocObject();
  *&v1[v83] = sub_1A99008CC(v80, "CellularUsageEnabled", 20, 2, MEMORY[0x1E69E7CC0]);
  v84 = OBJC_IVAR___SFAirDropUserDefaults__sensitivePreviewOverride;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5860, &qword_1A99A6970);
  swift_allocObject();
  *&v1[v84] = sub_1A990179C(2, "AirDropSensitivePreviewOverride", 31, 2, &unk_1F1D27BD0);
  v85 = OBJC_IVAR___SFAirDropUserDefaults__sensitiveContentOverride;
  swift_allocObject();
  *&v1[v85] = sub_1A990179C(2, "AirDropSensitiveContentOverride", 31, 2, &unk_1F1D27BF8);
  v86 = OBJC_IVAR___SFAirDropUserDefaults__showTransferIdentifierUI;
  swift_allocObject();
  *&v1[v86] = sub_1A99008CC(0, "AirDropShowTransferIdentifierUI", 31, 2, &unk_1F1D27C20);
  v87 = OBJC_IVAR___SFAirDropUserDefaults__alwaysAutoAccept;
  swift_allocObject();
  *&v1[v87] = sub_1A99008CC(0, "AlwaysAutoAccept", 16, 2, &unk_1F1D27C48);
  v88 = OBJC_IVAR___SFAirDropUserDefaults__overrideReceivedFilesPathiOS;
  swift_allocObject();
  *&v1[v88] = sub_1A99008CC(0, "OverrideReceivedFilesPathiOS", 28, 2, &unk_1F1D27C70);
  v90.receiver = v1;
  v90.super_class = ObjectType;
  return objc_msgSendSuper2(&v90, sel_init);
}