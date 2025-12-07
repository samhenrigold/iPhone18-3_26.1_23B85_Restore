uint64_t sub_217328728(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258D8, &qword_21775D968);
  v53 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v48 - v3;
  v5 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258E0, &qword_21775D970);
  v6 = v54;
  sub_21733CCD4(&qword_27CB258E8, &qword_27CB258E0, &qword_21775D970);
  sub_2177532F8();
  v57[0] = sub_2172E924C(type metadata accessor for CloudTrack, type metadata accessor for CloudTrack);
  v57[1] = v7;
  LOBYTE(v55[0]) = 0;
  sub_2172E1B18(v57[0], v7, v8);
  v9 = v52;
  sub_217752F88();
  if (v9)
  {

    return (*(v53 + 8))(v4, v2, v10);
  }

  else
  {
    v12 = v51;

    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v15 = v13;
    v16 = *(v6 + *(v13 + 40) + 8);
    if (v16)
    {
      LOBYTE(v57[0]) = 2;
      v13 = sub_217752F48();
    }

    v17 = v12;
    v18 = v54;
    v19 = v54 + v15[9];
    v20 = *v19;
    v21 = *(v19 + 8);
    LOBYTE(v19) = *(v19 + 16);
    v57[48] = v20;
    v57[49] = v21;
    v58 = v19;
    v60 = 1;
    sub_21733ABF0(v13, v16, v14);
    sub_217751DE8();
    sub_217752F88();

    v22 = sub_217751DC8();
    memcpy(v57, (v18 + v15[11]), 0x180uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v57) == 1)
    {
      v52 = v22;
    }

    else
    {

      sub_217751378();
      swift_allocObject();
      sub_217751368();
      v23 = memcpy(v55, v57, sizeof(v55));
      sub_21733AC98(v23, v24, v25);
      v26 = sub_217751358();
      v31 = v30;
      v50 = v4;
      v52 = v26;
      sub_217751348();
      swift_allocObject();
      sub_217751338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
      sub_217751308();

      sub_217275694(v52, v31);

      v52 = v55[0];
      v4 = v50;
      v17 = v12;
    }

    v55[3] = type metadata accessor for CloudTrack(0);
    v55[4] = &protocol witness table for CloudTrack;
    __swift_allocate_boxed_opaque_existential_0(v55);
    sub_21733CAD0();
    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    CloudTrack.mergeAttributes(with:for:)();
    v50 = v27;
    v56 = v27;
    v59 = 3;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v29 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    v49 = v28;
    sub_217752F88();
    v48 = v29;

    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    CloudTrack.mergeRelationships(with:for:)();
    if (v32)
    {
      v50 = v32;
      v56 = v32;
      v59 = 4;
      sub_217752F88();
    }

    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    CloudTrack.mergeAssociations(with:for:)(*(v54 + v15[14]), v17, v33, v34, v35, v36, v37, v38, v48, v49);
    if (v39)
    {
      v56 = v39;
      v59 = 5;
      sub_217752F88();
      v49 = v2;
      v50 = v4;
    }

    else
    {
      v49 = v2;
      v50 = v4;
    }

    v40 = v52;
    v41 = *(v54 + v15[15]);
    sub_217751DE8();
    sub_2174EB024(v40, v41);
    __swift_project_boxed_opaque_existential_1(v55, v55[3]);
    CloudTrack.mergeMetadata(with:for:)();
    v43 = v42;

    v45 = v53;
    if (v43)
    {
      v56 = v43;
      v59 = 6;
      v46 = v49;
      v47 = v50;
      sub_217752F88();
      (*(v45 + 8))(v47, v46);
    }

    else
    {
      (*(v53 + 8))(v50, v49, v44);
    }

    return __swift_destroy_boxed_opaque_existential_1(v55);
  }
}

void sub_217328F50(void *a1)
{
  v90 = type metadata accessor for CloudSong(0);
  MEMORY[0x28223BE20](v90);
  v89 = (&v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25710, &qword_21775D858);
  v104 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = (&v84 - v4);
  v6 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25718, &qword_21775D860);
  sub_21733CCD4(&qword_27CB25720, &qword_27CB25718, &qword_21775D860);
  v7 = v92;
  v8 = sub_2177532F8();
  v9 = v7[1];
  v95[0] = *v7;
  v95[1] = v9;
  LOBYTE(v94[0]) = 0;
  sub_2172E1B18(v8, v10, v11);
  v12 = v91;
  sub_217752F88();
  if (v12)
  {
    (*(v104 + 8))(v5, v3);
    return;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  v15 = v13;
  v16 = *(v7 + *(v13 + 40) + 8);
  if (v16)
  {
    LOBYTE(v95[0]) = 2;
    v13 = sub_217752F48();
  }

  v17 = v7 + v15[9];
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v17) = v17[16];
  v97 = v18;
  v98 = v19;
  v99 = v17;
  v96[391] = 1;
  sub_21733ABF0(v13, v16, v14);
  sub_217751DE8();
  sub_217752F88();

  v21 = sub_217751DC8();
  memcpy(v96, v7 + v15[11], 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v96) != 1)
  {

    sub_217751378();
    swift_allocObject();
    v28 = sub_217751368();
    v29 = memcpy(v95, v96, 0x180uLL);
    sub_21733AC98(v29, v30, v31);
    v32 = sub_217751358();
    v86 = v28;
    v87 = v32;
    v91 = v35;
    sub_217751348();
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_217751308();

    sub_217275694(v87, v91);

    v21 = v95[0];
    v7 = v92;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v22 = v90;
  if (!swift_dynamicCast())
  {
    memset(v94, 0, 40);
    sub_2171F0738(v94, &qword_27CB25588, &unk_21775D380);
    v89 = v15;
    v33 = *(v7 + v15[12]);
    if (*(v33 + 16))
    {
      v34 = sub_21738864C(v7 + v22[5], v88, v33);
      v91 = v21;
      v95[0] = v34;
      LOBYTE(v94[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      v43 = v91;
      v44 = v104;
    }

    else
    {
      v91 = v21;
      LOBYTE(v95[0]) = 3;
      type metadata accessor for CloudSong.Attributes(0);
      sub_21733CDD0(&qword_27CB25738, type metadata accessor for CloudSong.Attributes, &protocol conformance descriptor for CloudSong.Attributes);
      sub_217752F88();
      v44 = v104;
      v43 = v91;
    }

    sub_21726A630(v7 + v90[6], v94, &qword_27CB24A78, &qword_217759040);
    v45 = v89;
    if (*&v94[1] == 1)
    {
      v91 = v43;
      v46 = sub_2171F0738(v94, &qword_27CB24A78, &qword_217759040);
      v50 = *(v7 + *(v45 + 13));
      if (*(v50 + 16))
      {
        v95[0] = v50;
        LOBYTE(v94[0]) = 4;
        sub_217751DE8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
        sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
        sub_217752F88();
      }

      v45 = v89;
    }

    else
    {
      v51 = memcpy(v95, v94, sizeof(v95));
      v53 = *(v7 + v89[13]);
      if (*(v53 + 16))
      {
        sub_2173888E8();
        v91 = v43;
        *&v94[0] = v54;
        v93 = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
        sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
        sub_217752F88();
        sub_217284234(v95);

        v45 = v89;
      }

      else
      {
        v91 = v43;
        LOBYTE(v94[0]) = 4;
        sub_21733C020(v51, v52, v53);
        sub_217752F88();
        v46 = sub_217284234(v95);
      }

      v7 = v92;
    }

    v58 = *(v7 + *(v45 + 14));
    v59 = *(v58 + 16);
    if (*(v7 + v90[7]))
    {
      if (!v59)
      {
LABEL_34:
        v62 = (v7 + v90[8]);
        v63 = v62[3];
        if (v63 == 1)
        {
          v64 = *(v7 + v89[15]);
          if (*(v64 + 16))
          {
            sub_217751DE8();
            v95[0] = sub_2174EB024(v91, v64);
            LOBYTE(v94[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
            sub_217752F88();
            (*(v44 + 8))(v5, v3);
          }

          else
          {
            if (*(v91 + 16))
            {
              v95[0] = v91;
              LOBYTE(v94[0]) = 6;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
              sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
              sub_217752F88();

              (*(v44 + 8))(v5, v3, v20);
              return;
            }

            (*(v44 + 8))(v5, v3, v49);
          }
        }

        else
        {
          v66 = *v62;
          v65 = v62[1];
          v67 = v62[2];
          v68 = v62[4];
          v100[0] = *v62;
          v90 = v65;
          v100[1] = v65;
          v87 = v67;
          v101 = v67 & 1;
          v102 = v63;
          v103 = v68;
          v69 = *(v7 + v89[15]);
          v70 = v63;
          if (*(v69 + 16))
          {
            v85 = v3;
            sub_2171FF30C(v88, v95);
            sub_21733BF2C(v66, v90, v87, v70);
            sub_217221020(v66);
            sub_217751DE8();
            sub_217751DE8();
            v72 = sub_2174D5DD4(v100);
            v92 = v70;
            v73 = sub_217751DE8();
            v74 = sub_2175472EC(v73, v72);
            v95[0] = sub_2175472EC(v91, v74);
            LOBYTE(v94[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
            v75 = v85;
          }

          else
          {
            sub_2171FF30C(v88, v95);
            sub_21733BF2C(v66, v90, v87, v70);
            sub_217221020(v66);
            sub_217751DE8();
            sub_217751DE8();
            v71 = sub_2174D5DD4(v100);
            v92 = v70;
            v75 = v3;
            v95[0] = sub_2174D37FC(v91, v71);
            LOBYTE(v94[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
          }

          sub_217752F88();
          (*(v44 + 8))(v5, v75);
          sub_21733BF7C(v66, v90, v87, v92);
        }

        return;
      }

      v95[0] = v58;
      LOBYTE(v94[0]) = 5;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    else
    {
      if (!v59)
      {
        LOBYTE(v95[0]) = 5;
        sub_21733BFCC(v46, v47, v48);
        sub_217752F88();
        goto LABEL_34;
      }

      sub_2171FF30C(v88, v95);
      v60 = sub_2174D5760(v95);
      v61 = sub_217751DE8();
      v95[0] = sub_2174D37FC(v61, v60);
      LOBYTE(v94[0]) = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    goto LABEL_34;
  }

  v90 = v5;
  v91 = v21;
  sub_2171F3F0C(v94, v95);
  v23 = v15;
  v24 = v7;
  v25 = v95[3];
  v26 = v95[4];
  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  v27 = (*(v26 + 48))(*(v24 + v23[12]), v88, v25, v26);
  v89 = v23;
  *&v94[0] = v27;
  v93 = 3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  v37 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_217752F88();
  v86 = v37;
  v87 = v36;

  v38 = v95[3];
  v39 = v95[4];
  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  v40 = v89;
  v41 = (*(v39 + 56))(*(v92 + v89[13]), v88, v38, v39);
  v42 = v104;
  if (v41)
  {
    *&v94[0] = v41;
    v93 = 4;
    sub_217752F88();
  }

  v55 = v95[3];
  v56 = v95[4];
  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  v57 = (*(v56 + 64))(*(v92 + *(v40 + 14)), v88, v55, v56);
  if (v57)
  {
    *&v94[0] = v57;
    v93 = 5;
    sub_217752F88();
    v85 = v3;
  }

  else
  {
    v85 = v3;
  }

  v76 = *(v92 + *(v40 + 15));
  sub_217751DE8();
  v77 = sub_2174EB024(v91, v76);
  v78 = v95[3];
  v79 = v95[4];
  __swift_project_boxed_opaque_existential_1(v95, v95[3]);
  v80 = (*(v79 + 72))(v77, v88, v78, v79);

  if (v80)
  {
    *&v94[0] = v80;
    v93 = 6;
    v82 = v85;
    v83 = v90;
    sub_217752F88();
    (*(v42 + 8))(v83, v82);
  }

  else
  {
    (*(v42 + 8))(v90, v85, v81);
  }

  __swift_destroy_boxed_opaque_existential_1(v95);
}

void sub_21732A314(void *a1)
{
  v75 = type metadata accessor for CloudAlbum(0);
  MEMORY[0x28223BE20](v75);
  v76 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25568, &qword_21775D368);
  v78 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v72 - v4;
  v6 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25570, &qword_21775D370);
  sub_21733CCD4(qword_280BE4350, &qword_27CB25570, &qword_21775D370);
  v7 = v86;
  v8 = sub_2177532F8();
  v9 = v7[1];
  v81[0] = *v7;
  v81[1] = v9;
  LOBYTE(v80[0]) = 0;
  sub_2172E1B18(v8, v10, v11);
  v12 = v77;
  sub_217752F88();
  if (v12)
  {
    (*(v78 + 8))(v5, v3);
    return;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  v15 = v13;
  v16 = *(v7 + *(v13 + 40) + 8);
  if (v16)
  {
    LOBYTE(v81[0]) = 2;
    v13 = sub_217752F48();
  }

  v17 = v7 + v15[9];
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v17) = v17[16];
  v83 = v18;
  v84 = v19;
  v85 = v17;
  v82[391] = 1;
  sub_21733ABF0(v13, v16, v14);
  sub_217751DE8();
  sub_217752F88();

  v20 = sub_217751DC8();
  memcpy(v82, v7 + v15[11], 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v82) != 1)
  {

    sub_217751378();
    swift_allocObject();
    v27 = sub_217751368();
    v28 = memcpy(v81, v82, 0x180uLL);
    sub_21733AC98(v28, v29, v30);
    v31 = sub_217751358();
    v73 = v27;
    v76 = v31;
    v77 = v37;
    sub_217751348();
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_217751308();

    sub_217275694(v76, v77);

    v20 = v81[0];
    v7 = v86;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v21 = v75;
  if (swift_dynamicCast())
  {
    v76 = v5;
    v77 = v20;
    sub_2171F3F0C(v80, v81);
    v22 = v15;
    v23 = v7;
    v24 = v81[3];
    v25 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v26 = (*(v25 + 48))(*(v23 + v22[12]), v74, v24, v25);
    v73 = v22;
    *&v80[0] = v26;
    v79 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v38 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    v75 = v38;

    v40 = v81[3];
    v41 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v42 = v73;
    v43 = (*(v41 + 56))(*(v86 + v73[13]), v74, v40, v41);
    if (v43)
    {
      *&v80[0] = v43;
      v79 = 4;
      sub_217752F88();
    }

    v44 = v81[3];
    v45 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v46 = (*(v45 + 64))(*(v86 + v42[14]), v74, v44, v45);
    if (v46)
    {
      *&v80[0] = v46;
      v79 = 5;
      sub_217752F88();
      v72 = v3;
    }

    else
    {
      v72 = v3;
    }

    v57 = *(v86 + v42[15]);
    sub_217751DE8();
    v58 = sub_2174EB024(v77, v57);
    v59 = v81[3];
    v60 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v68 = (*(v60 + 72))(v58, v74, v59, v60);

    if (v68)
    {
      *&v80[0] = v68;
      v79 = 6;
      v70 = v72;
      v71 = v76;
      sub_217752F88();
      (*(v78 + 8))(v71, v70);
    }

    else
    {
      (*(v78 + 8))(v76, v72, v69);
    }

    __swift_destroy_boxed_opaque_existential_1(v81);
    return;
  }

  memset(v80, 0, 40);
  sub_2171F0738(v80, &qword_27CB25588, &unk_21775D380);
  v73 = v15;
  v32 = *(v7 + v15[12]);
  v33 = v7;
  v34 = *(v21 + 20);
  if (*(v32 + 16))
  {
    v35 = v74;
    v36 = sub_217388478(v33 + v34, v74, v32);
    v77 = v20;
    v39 = v33;
    v81[0] = v36;
    LOBYTE(v80[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
  }

  else
  {
    v77 = v20;
    LOBYTE(v81[0]) = 3;
    type metadata accessor for CloudAlbum.Attributes(0);
    sub_21733CDD0(&qword_27CB252E0, type metadata accessor for CloudAlbum.Attributes, &protocol conformance descriptor for CloudAlbum.Attributes);
    sub_217752F88();
    v39 = v33;
    v35 = v74;
  }

  v47 = v77;
  v48 = v75;
  sub_21726A630(v39 + *(v75 + 24), v80, &qword_27CB243C8, &unk_21775D390);
  if (*&v80[1] != 1)
  {
    v49 = memcpy(v81, v80, sizeof(v81));
    v51 = *(v39 + v73[13]);
    if (!*(v51 + 16))
    {
      LOBYTE(v80[0]) = 4;
      sub_2172E1B6C(v49, v50, v51);
      sub_217752F88();
      sub_21726A4EC(v81);
LABEL_25:
      v48 = v75;
      goto LABEL_26;
    }

    *&v80[0] = sub_217388868(v81, v35, v51);
    v79 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    sub_21726A4EC(v81);
LABEL_24:

    goto LABEL_25;
  }

  sub_2171F0738(v80, &qword_27CB243C8, &unk_21775D390);
  if (*(*(v39 + v73[13]) + 16))
  {
    v81[0] = *(v39 + v73[13]);
    LOBYTE(v80[0]) = 4;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    goto LABEL_24;
  }

LABEL_26:
  v52 = *(v48 + 28);
  v53 = v86;
  sub_21726A630(v86 + v52, v80, &qword_27CB24AA8, &qword_217759080);
  if (*&v80[1] == 1)
  {
    sub_2171F0738(v80, &qword_27CB24AA8, &qword_217759080);
    if (*(*(v53 + v73[14]) + 16))
    {
      v81[0] = *(v53 + v73[14]);
      LOBYTE(v80[0]) = 5;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
LABEL_34:
    }
  }

  else
  {
    v54 = memcpy(v81, v80, 0x200uLL);
    v56 = *(v53 + v73[14]);
    if (*(v56 + 16))
    {
      *&v80[0] = sub_217388C10(v81, v35, v56);
      v79 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
      sub_2172845E8(v81);
      goto LABEL_34;
    }

    LOBYTE(v80[0]) = 5;
    sub_2172E1BC0(v54, v55, v56);
    sub_217752F88();
    sub_2172845E8(v81);
  }

  v61 = v78;
  v62 = v86;
  sub_21726A630(v86 + *(v75 + 32), v80, &qword_27CB243C0, &unk_21775D3A0);
  if (*&v80[3] == 1)
  {
    sub_2171F0738(v80, &qword_27CB243C0, &unk_21775D3A0);
    v63 = *(v62 + v73[15]);
    if (*(v63 + 16))
    {
      sub_217751DE8();
      v81[0] = sub_2174EB024(v47, v63);
      LOBYTE(v80[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    else if (*(v47 + 16))
    {
      v81[0] = v47;
      LOBYTE(v80[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      (*(v61 + 8))(v5, v3, v66);
      return;
    }
  }

  else
  {
    memcpy(v81, v80, 0x140uLL);
    v64 = *(v62 + v73[15]);
    if (*(v64 + 16))
    {
      v65 = sub_217331390(v81, v47, v74, v64, sub_2172E1A8C, sub_2174D5C0C);
    }

    else
    {
      v65 = sub_217388E48(v81, v74, v47);
    }

    v67 = v65;

    *&v80[0] = v67;
    v79 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    sub_21726A498(v81);
  }

  (*(v61 + 8))(v5, v3);
}

double sub_21732B564(void *a1)
{
  v85 = type metadata accessor for CloudGenre(0);
  MEMORY[0x28223BE20](v85);
  v86 = (&v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25818, &qword_21775D8E0);
  v88 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v82 - v4;
  v6 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25820, &qword_21775D8E8);
  sub_21733CCD4(&qword_27CB25828, &qword_27CB25820, &qword_21775D8E8);
  v7 = v97;
  v8 = sub_2177532F8();
  v9 = v7[1];
  v92[0] = *v7;
  v92[1] = v9;
  LOBYTE(v89[0]) = 0;
  sub_2172E1B18(v8, v10, v11);
  v12 = v87;
  sub_217752F88();
  if (v12)
  {
    (*(v88 + 8))(v5, v3);
    return result;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  v16 = v14;
  v17 = *(v7 + *(v14 + 40) + 8);
  if (v17)
  {
    LOBYTE(v92[0]) = 2;
    v14 = sub_217752F48();
  }

  v18 = v7 + v16[9];
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v18) = v18[16];
  v94 = v19;
  v95 = v20;
  v96 = v18;
  v93 = 1;
  sub_21733ABF0(v14, v17, v15);
  sub_217751DE8();
  sub_217752F88();

  v21 = sub_217751DC8();
  memcpy(v92, v7 + v16[11], sizeof(v92));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v92) != 1)
  {

    sub_217751378();
    swift_allocObject();
    v27 = sub_217751368();
    v28 = memcpy(v89, v92, sizeof(v89));
    sub_21733AC98(v28, v29, v30);
    v31 = sub_217751358();
    v83 = v27;
    v86 = v16;
    v87 = v31;
    v37 = v36;
    sub_217751348();
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    v82 = v37;
    sub_217751308();

    sub_217275694(v87, v82);

    v21 = v89[0];
    v16 = v86;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v22 = v85;
  if (swift_dynamicCast())
  {
    v87 = v21;
    v85 = v5;
    sub_2171F3F0C(v91, v89);
    v23 = v16;
    v24 = v89[3];
    v25 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v26 = (*(v25 + 48))(*(v7 + v23[12]), v84, v24, v25);
    v86 = v23;
    *&v91[0] = v26;
    v90 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v38 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    v83 = v38;

    v40 = v89[3];
    v41 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v42 = (*(v41 + 56))(*(v97 + v86[13]), v84, v40, v41);
    if (v42)
    {
      *&v91[0] = v42;
      v90 = 4;
      sub_217752F88();
    }

    v43 = v89[3];
    v44 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v45 = (*(v44 + 64))(*(v97 + v86[14]), v84, v43, v44);
    if (v45)
    {
      *&v91[0] = v45;
      v90 = 5;
      sub_217752F88();
      v82 = v3;
    }

    else
    {
      v82 = v3;
    }

    v61 = *(v97 + v86[15]);
    sub_217751DE8();
    v62 = sub_2174EB024(v87, v61);
    v63 = v89[3];
    v64 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v78 = (*(v64 + 72))(v62, v84, v63, v64);

    if (v78)
    {
      *&v91[0] = v78;
      v90 = 6;
      v80 = v82;
      v81 = v85;
      sub_217752F88();
      (*(v88 + 8))(v81, v80);
    }

    else
    {
      (*(v88 + 8))(v85, v82, v79);
    }

    __swift_destroy_boxed_opaque_existential_1(v89);
    return result;
  }

  memset(v91, 0, 40);
  sub_2171F0738(v91, &qword_27CB25588, &unk_21775D380);
  v86 = v16;
  v32 = *(*(v7 + v16[12]) + 16);
  v33 = *(v22 + 20);
  if (v32)
  {
    v34 = v84;
    v35 = sub_21738877C(v7 + v33);
    v39 = v21;
    v89[0] = v35;
    LOBYTE(v91[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();

    v7 = v97;
  }

  else
  {
    v87 = v21;
    LOBYTE(v89[0]) = 3;
    type metadata accessor for CloudGenre.Attributes(0);
    sub_21733CDD0(&qword_27CB25840, type metadata accessor for CloudGenre.Attributes, &protocol conformance descriptor for CloudGenre.Attributes);
    sub_217752F88();
    v34 = v84;
    v39 = v87;
  }

  v46 = v85;
  sub_21726A630(v7 + *(v85 + 24), v91, &qword_27CB24AA0, &qword_21775D8F0);
  if (*&v91[1] == 1)
  {
    v87 = v39;
    v47 = sub_2171F0738(v91, &qword_27CB24AA0, &qword_21775D8F0);
    v50 = v86;
    v51 = *(v7 + v86[13]);
    if (!*(v51 + 16))
    {
      v7 = v97;
      goto LABEL_26;
    }

    v89[0] = v51;
    LOBYTE(v91[0]) = 4;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();

    v7 = v97;
  }

  else
  {
    v52 = memcpy(v89, v91, 0x80uLL);
    v54 = *(v7 + v86[13]);
    if (*(v54 + 16))
    {
      v55 = sub_217388AB8();
      v87 = v39;
      *&v91[0] = v55;
      v90 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
      sub_217284594(v89);

      v7 = v97;
    }

    else
    {
      v87 = v39;
      LOBYTE(v91[0]) = 4;
      sub_21733C378(v52, v53, v54);
      sub_217752F88();
      v47 = sub_217284594(v89);
    }

    v50 = v86;
  }

  v46 = v85;
LABEL_26:
  v56 = *(v7 + *(v46 + 28));
  v57 = *(v7 + v50[14]);
  v58 = *(v57 + 16);
  if ((v56 & 1) == 0)
  {
    if (v58)
    {
      sub_2171FF30C(v34, v89);
      v59 = sub_2174D57C8(v89);
      v60 = sub_217751DE8();
      v89[0] = sub_2174D37FC(v60, v59);
      LOBYTE(v91[0]) = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      v50 = v86;
    }

    else
    {
      LOBYTE(v89[0]) = 5;
      sub_21733C324(v47, v48, v49);
      sub_217752F88();
    }

    goto LABEL_34;
  }

  if (v58)
  {
    v89[0] = v57;
    LOBYTE(v91[0]) = 5;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();

LABEL_34:
    v46 = v85;
  }

  v65 = *(v97 + *(v46 + 32));
  v66 = *(v97 + v50[15]);
  v67 = *(v66 + 16);
  if (v65 == 1)
  {
    v68 = v88;
    if (v67)
    {
      sub_217751DE8();
      v89[0] = sub_2174EB024(v87, v66);
      LOBYTE(v91[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    else if (*(v87 + 16))
    {
      v89[0] = v87;
      LOBYTE(v91[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      (*(v68 + 8))(v5, v3, v75);
      return result;
    }

    (*(v68 + 8))(v5, v3);
  }

  else
  {
    v69 = v88;
    if (v67)
    {
      sub_2171FF30C(v84, v89);
      sub_217221020(v65);
      v70 = sub_217751DE8();
      v71 = sub_2174D5F94(v70, v89);
      v72 = sub_217751DE8();
      v73 = sub_2175472EC(v72, v71);
      v74 = sub_2175472EC(v87, v73);
    }

    else
    {
      sub_2171FF30C(v84, v89);
      sub_217221020(v65);
      v76 = sub_217751DE8();
      v77 = sub_2174D5F94(v76, v89);
      v74 = sub_2174D37FC(v87, v77);
    }

    v89[0] = v74;
    LOBYTE(v91[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    (*(v69 + 8))(v5, v3);
    sub_217221010(v65);
  }
}

void sub_21732C780(void *a1)
{
  v81 = type metadata accessor for CloudArtist(0);
  MEMORY[0x28223BE20](v81);
  v82 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257E8, &qword_21775D8C8);
  v84 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v78 - v4;
  v6 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB257F0, &qword_21775D8D0);
  sub_21733CCD4(&qword_27CB257F8, &qword_27CB257F0, &qword_21775D8D0);
  v7 = v92;
  v8 = sub_2177532F8();
  v9 = v7[1];
  v87[0] = *v7;
  v87[1] = v9;
  LOBYTE(v86[0]) = 0;
  sub_2172E1B18(v8, v10, v11);
  v12 = v83;
  sub_217752F88();
  if (v12)
  {
    (*(v84 + 8))(v5, v3);
    return;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24728, &qword_217758CB0);
  v15 = v13;
  v16 = *(v7 + *(v13 + 40) + 8);
  if (v16)
  {
    LOBYTE(v87[0]) = 2;
    v13 = sub_217752F48();
  }

  v17 = v7 + v15[9];
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v17) = v17[16];
  v89 = v18;
  v90 = v19;
  v91 = v17;
  v88[391] = 1;
  sub_21733ABF0(v13, v16, v14);
  sub_217751DE8();
  sub_217752F88();

  v20 = sub_217751DC8();
  memcpy(v88, v7 + v15[11], 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v88) != 1)
  {

    sub_217751378();
    swift_allocObject();
    v27 = sub_217751368();
    v28 = memcpy(v87, v88, 0x180uLL);
    sub_21733AC98(v28, v29, v30);
    v31 = sub_217751358();
    v79 = v27;
    v82 = v31;
    v83 = v37;
    sub_217751348();
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_217751308();

    sub_217275694(v82, v83);

    v20 = v87[0];
    v7 = v92;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v21 = v81;
  if (!swift_dynamicCast())
  {
    memset(v86, 0, 40);
    sub_2171F0738(v86, &qword_27CB25588, &unk_21775D380);
    v79 = v15;
    v32 = *(v7 + v15[12]);
    v33 = v7;
    v34 = *(v21 + 20);
    if (*(v32 + 16))
    {
      v35 = v80;
      v36 = sub_2173887C0(v33 + v34, v80, v32);
      v83 = v20;
      v87[0] = v36;
      LOBYTE(v86[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      v46 = v33;
    }

    else
    {
      v83 = v20;
      LOBYTE(v87[0]) = 3;
      type metadata accessor for CloudArtist.Attributes(0);
      sub_21733CDD0(&qword_280BE53E0, type metadata accessor for CloudArtist.Attributes, &protocol conformance descriptor for CloudArtist.Attributes);
      sub_217752F88();
      v46 = v33;
      v35 = v80;
    }

    v47 = v83;
    v48 = v81;
    sub_21726A630(v46 + *(v81 + 24), v86, &qword_27CB24328, &unk_21775D440);
    if (*&v86[1] == 1)
    {
      sub_2171F0738(v86, &qword_27CB24328, &unk_21775D440);
      v49 = *(v46 + v79[13]);
      if (!*(v49 + 16))
      {
        v46 = v92;
        goto LABEL_26;
      }

      v87[0] = v49;
      LOBYTE(v86[0]) = 4;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      v46 = v92;
    }

    else
    {
      v50 = memcpy(v87, v86, 0x380uLL);
      v52 = *(v46 + v79[13]);
      if (*(v52 + 16))
      {
        v83 = sub_217388B68(v87, v35, v52);
        *&v86[0] = v83;
        v85 = 4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
        sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
        sub_217752F88();
        sub_21726A204(v87);
      }

      else
      {
        LOBYTE(v86[0]) = 4;
        sub_21733C2D0(v50, v51, v52);
        sub_217752F88();
        sub_21726A204(v87);
      }
    }

    v48 = v81;
LABEL_26:
    sub_21726A630(v46 + *(v48 + 28), v86, &qword_27CB24AB0, &qword_217759088);
    if (*&v86[1] == 1)
    {
      sub_2171F0738(v86, &qword_27CB24AB0, &qword_217759088);
      v53 = *(v46 + v79[14]);
      if (!*(v53 + 16))
      {
        v58 = v84;
        goto LABEL_37;
      }

      v87[0] = v53;
      LOBYTE(v86[0]) = 5;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    else
    {
      v54 = memcpy(v87, v86, sizeof(v87));
      v56 = *(v46 + v79[14]);
      if (!*(v56 + 16))
      {
        LOBYTE(v86[0]) = 5;
        sub_21733C27C(v54, v55, v56);
        sub_217752F88();
        sub_21728463C(v87);
LABEL_36:
        v58 = v84;
        v48 = v81;
LABEL_37:
        v63 = *(v92 + *(v48 + 32));
        v64 = *(v92 + v79[15]);
        v65 = *(v64 + 16);
        if (v63 == 1)
        {
          if (v65)
          {
            sub_217751DE8();
            v87[0] = sub_2174EB024(v47, v64);
            LOBYTE(v86[0]) = 6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
            sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
            sub_217752F88();
            (*(v58 + 8))(v5, v3);
          }

          else
          {
            if (*(v47 + 16))
            {
              v87[0] = v47;
              LOBYTE(v86[0]) = 6;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
              sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
              sub_217752F88();

              (*(v58 + 8))(v5, v3, v71);
              return;
            }

            (*(v58 + 8))(v5, v3);
          }
        }

        else
        {
          if (v65)
          {
            sub_2171FF30C(v80, v87);
            sub_217221020(v63);
            v66 = sub_217751DE8();
            v67 = sub_2174D63C0(v66, v87);
            v68 = sub_217751DE8();
            v69 = sub_2175472EC(v68, v67);
            v70 = sub_2175472EC(v47, v69);
          }

          else
          {
            sub_2171FF30C(v80, v87);
            sub_217221020(v63);
            v72 = sub_217751DE8();
            v73 = sub_2174D63C0(v72, v87);
            v70 = sub_2174D37FC(v47, v73);
          }

          v87[0] = v70;
          LOBYTE(v86[0]) = 6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
          sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
          sub_217752F88();
          (*(v58 + 8))(v5, v3);
          sub_217221010(v63);
        }

        return;
      }

      sub_217388DA0();
      *&v86[0] = v57;
      v85 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
      sub_21728463C(v87);
    }

    goto LABEL_36;
  }

  v82 = v5;
  v83 = v20;
  sub_2171F3F0C(v86, v87);
  v22 = v15;
  v23 = v7;
  v24 = v87[3];
  v25 = v87[4];
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  v26 = (*(v25 + 48))(*(v23 + v22[12]), v80, v24, v25);
  v79 = v22;
  *&v86[0] = v26;
  v85 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  v38 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_217752F88();
  v81 = v38;

  v39 = v87[3];
  v40 = v87[4];
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  v41 = v79;
  v42 = (*(v40 + 56))(*(v92 + v79[13]), v80, v39, v40);
  if (v42)
  {
    *&v86[0] = v42;
    v85 = 4;
    sub_217752F88();
  }

  v43 = v87[3];
  v44 = v87[4];
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  v45 = (*(v44 + 64))(*(v92 + v41[14]), v80, v43, v44);
  if (v45)
  {
    *&v86[0] = v45;
    v85 = 5;
    sub_217752F88();
    v78 = v3;
  }

  else
  {
    v78 = v3;
  }

  v59 = *(v92 + v41[15]);
  sub_217751DE8();
  v60 = sub_2174EB024(v83, v59);
  v61 = v87[3];
  v62 = v87[4];
  __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  v74 = (*(v62 + 72))(v60, v80, v61, v62);

  if (v74)
  {
    *&v86[0] = v74;
    v85 = 6;
    v76 = v78;
    v77 = v82;
    sub_217752F88();
    (*(v84 + 8))(v77, v76);
  }

  else
  {
    (*(v84 + 8))(v82, v78, v75);
  }

  __swift_destroy_boxed_opaque_existential_1(v87);
}

void sub_21732D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171();
  v78 = v23;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258B8, &qword_21775D950);
  OUTLINED_FUNCTION_0_0();
  v77 = v27;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_111();
  v29 = OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_160(v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB258C0, &qword_21775D958);
  sub_21733CCD4(&qword_27CB258C8, &qword_27CB258C0, &qword_21775D958);
  sub_2177532F8();
  v81[0] = sub_2172E924C(type metadata accessor for LegacyModelCodablePlaylistEntryItem, type metadata accessor for LegacyModelCodablePlaylistEntryItem);
  v81[1] = v31;
  LOBYTE(v79[0]) = 0;
  sub_2172E1B18(v81[0], v31, v32);
  OUTLINED_FUNCTION_177_2();
  sub_217752F88();
  if (v24)
  {

    (*(v77 + 8))(v25, v26, v33);
  }

  else
  {

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v36 = v34;
    v37 = *(v23 + *(v34 + 40) + 8);
    if (v37)
    {
      LOBYTE(v81[0]) = 2;
      OUTLINED_FUNCTION_184_2();
      v34 = sub_217752F48();
    }

    v38 = v23 + v36[9];
    v39 = *v38;
    v40 = *(v38 + 8);
    LOBYTE(v38) = *(v38 + 16);
    v81[48] = v39;
    v81[49] = v40;
    v82 = v38;
    sub_21733ABF0(v34, v37, v35);
    OUTLINED_FUNCTION_87_6();
    sub_217751DE8();
    OUTLINED_FUNCTION_184_2();
    sub_217752F88();

    v41 = sub_217751DC8();
    memcpy(v81, (v78 + v36[11]), 0x180uLL);
    if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v81) == 1)
    {
      v75 = v41;
    }

    else
    {

      v42 = sub_217751378();
      OUTLINED_FUNCTION_235_0(v42);
      sub_217751368();
      v43 = memcpy(v79, v81, sizeof(v79));
      sub_21733AC98(v43, v44, v45);
      v46 = sub_217751358();
      v54 = v53;
      v76 = v46;
      v55 = sub_217751348();
      OUTLINED_FUNCTION_235_0(v55);
      sub_217751338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_95();
      sub_21733ACEC(v56, v57, v58, MEMORY[0x277D83528]);
      sub_217751308();

      sub_217275694(v76, v54);

      v75 = v79[0];
    }

    v79[3] = type metadata accessor for LegacyModelCodablePlaylistEntryItem(0);
    v79[4] = &protocol witness table for LegacyModelCodablePlaylistEntryItem;
    __swift_allocate_boxed_opaque_existential_0(v79);
    OUTLINED_FUNCTION_32_9();
    sub_21733CAD0();
    OUTLINED_FUNCTION_160(v79, v79[3]);
    LegacyModelCodablePlaylistEntryItem.mergeAttributes(with:for:)();
    v80 = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_0_21();
    v52 = sub_21733ACEC(v49, v50, v51, MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_166_2();
    OUTLINED_FUNCTION_184_2();
    sub_217752F88();

    OUTLINED_FUNCTION_160(v79, v79[3]);
    OUTLINED_FUNCTION_210_2(v36[13]);
    LegacyModelCodablePlaylistEntryItem.mergeRelationships(with:for:)();
    if (v59)
    {
      v80 = v59;
      OUTLINED_FUNCTION_166_2();
      OUTLINED_FUNCTION_184_2();
      sub_217752F88();
    }

    OUTLINED_FUNCTION_160(v79, v79[3]);
    v60 = OUTLINED_FUNCTION_210_2(v36[14]);
    LegacyModelCodablePlaylistEntryItem.mergeAssociations(with:for:)(v60, v61, v62, v63, v64, v65, v66, v67, v52, v48);
    if (v68)
    {
      v80 = v68;
      OUTLINED_FUNCTION_166_2();
      OUTLINED_FUNCTION_184_2();
      sub_217752F88();
      v73 = v26;
      v74 = v25;
    }

    else
    {
      v73 = v26;
      v74 = v25;
    }

    v69 = *(v78 + v36[15]);
    sub_217751DE8();
    sub_2174EB024(v75, v69);
    OUTLINED_FUNCTION_160(v79, v79[3]);
    LegacyModelCodablePlaylistEntryItem.mergeMetadata(with:for:)();
    v71 = v70;

    if (v71)
    {
      v80 = v71;
      sub_217752F88();
      (*(v77 + 8))(v74, v73);
    }

    else
    {
      (*(v77 + 8))(v74, v73, v72);
    }

    __swift_destroy_boxed_opaque_existential_1(v79);
  }

  OUTLINED_FUNCTION_170();
}

void sub_21732E104()
{
  OUTLINED_FUNCTION_171();
  v121 = v0;
  v4 = v3;
  v107 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_81();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25750, &qword_21775D878);
  OUTLINED_FUNCTION_0_0();
  v111 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_131_0();
  v106 = v4;
  v9 = OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_160(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25758, &qword_21775D880);
  sub_21733CCD4(&qword_27CB25760, &qword_27CB25758, &qword_21775D880);
  v11 = v121;
  v12 = sub_2177532F8();
  v13 = v121[1];
  v116[0] = *v121;
  v116[1] = v13;
  LOBYTE(v112[0]) = 0;
  sub_2172E1B18(v12, v14, v15);
  OUTLINED_FUNCTION_177_2();
  sub_217752F88();
  if (v1)
  {
    v16 = OUTLINED_FUNCTION_70_6();
    v17(v16);
    goto LABEL_6;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  v20 = v18;
  v21 = *(v121 + *(v18 + 40) + 8);
  if (v21)
  {
    LOBYTE(v116[0]) = 2;
    OUTLINED_FUNCTION_66_4();
    v18 = sub_217752F48();
  }

  v22 = v121 + v20[9];
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v22) = v22[16];
  v118 = v23;
  v119 = v24;
  v120 = v22;
  v117 = 1;
  sub_21733ABF0(v18, v21, v19);
  OUTLINED_FUNCTION_87_6();
  sub_217751DE8();
  OUTLINED_FUNCTION_66_4();
  sub_217752F88();

  v25 = sub_217751DC8();
  memcpy(v116, v121 + v20[11], sizeof(v116));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v116) != 1)
  {

    v27 = sub_217751378();
    OUTLINED_FUNCTION_235_0(v27);
    sub_217751368();
    v28 = memcpy(v112, v116, sizeof(v112));
    sub_21733AC98(v28, v29, v30);
    OUTLINED_FUNCTION_176_4();
    v109 = sub_217751358();
    v34 = v33;
    v35 = sub_217751348();
    OUTLINED_FUNCTION_235_0(v35);
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_95();
    sub_21733ACEC(v36, v37, v38, MEMORY[0x277D83528]);
    sub_217751308();

    sub_217275694(v109, v34);

    v25 = v112[0];
  }

  OUTLINED_FUNCTION_7_14();
  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  if (!swift_dynamicCast())
  {
    v115 = 0;
    memset(v114, 0, sizeof(v114));
    sub_2171F0738(v114, &qword_27CB25588, &unk_21775D380);
    v108 = v20;
    v31 = *(v121 + v20[12]);
    if (*(v31 + 16))
    {
      v32 = v106;
      v110 = v25;
      v112[0] = sub_217388F70(v121 + *(v107 + 20), v106, v31);
      LOBYTE(v114[0]) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_0_21();
      sub_21733ACEC(v42, v43, v44, MEMORY[0x277D83508]);
      OUTLINED_FUNCTION_15_18();
      OUTLINED_FUNCTION_66_4();
      sub_217752F88();

      v11 = v121;
    }

    else
    {
      v110 = v25;
      LOBYTE(v112[0]) = 3;
      type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
      sub_21733CDD0(&qword_27CB25778, type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes, &protocol conformance descriptor for LegacyModelCodablePlaylistEntry.Attributes);
      OUTLINED_FUNCTION_177_2();
      OUTLINED_FUNCTION_66_4();
      v49 = sub_217752F88();
      v32 = v106;
    }

    v53 = v107;
    v54 = *(v11 + *(v107 + 24));
    v55 = *(v11 + v108[13]);
    v56 = *(v55 + 16);
    if (v54)
    {
      if (!v56)
      {
        goto LABEL_26;
      }

      v112[0] = v55;
      LOBYTE(v114[0]) = 4;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_0_21();
      sub_21733ACEC(v57, v58, v59, MEMORY[0x277D83508]);
      OUTLINED_FUNCTION_15_18();
      OUTLINED_FUNCTION_66_4();
      sub_217752F88();
    }

    else if (v56)
    {
      sub_2171FF30C(v32, v112);
      v60 = OUTLINED_FUNCTION_176_4();
      v61 = sub_2174D66A8(v60);
      v62 = sub_217751DE8();
      v112[0] = sub_2174D37FC(v62, v61);
      LOBYTE(v114[0]) = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_0_21();
      sub_21733ACEC(v63, v64, v65, MEMORY[0x277D83508]);
      OUTLINED_FUNCTION_15_18();
      sub_217752F88();

      v32 = v106;
    }

    else
    {
      LOBYTE(v112[0]) = 4;
      sub_21733C0C8(v49, v50, v51);
      OUTLINED_FUNCTION_177_2();
      OUTLINED_FUNCTION_66_4();
      v49 = sub_217752F88();
    }

    v53 = v107;
LABEL_26:
    v66 = *(*(v121 + v108[14]) + 16);
    if (*(v121 + *(v53 + 28)))
    {
      if (!v66)
      {
        v105 = v2;
        v76 = v111;
        goto LABEL_35;
      }

      v112[0] = *(v121 + v108[14]);
      LOBYTE(v114[0]) = 5;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      OUTLINED_FUNCTION_0_21();
      sub_21733ACEC(v67, v68, v69, MEMORY[0x277D83508]);
      OUTLINED_FUNCTION_15_18();
      OUTLINED_FUNCTION_66_4();
      sub_217752F88();
      v105 = v2;
    }

    else
    {
      if (v66)
      {
        sub_2171FF30C(v32, v112);
        v70 = OUTLINED_FUNCTION_176_4();
        v71 = sub_2174D6674(v70);
        v72 = sub_217751DE8();
        v112[0] = sub_2174D37FC(v72, v71);
        LOBYTE(v114[0]) = 5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
        OUTLINED_FUNCTION_0_21();
        sub_21733ACEC(v73, v74, v75, MEMORY[0x277D83508]);
        OUTLINED_FUNCTION_15_18();
        sub_217752F88();
        v105 = v2;

        v76 = v111;
        v32 = v106;
        v53 = v107;
        goto LABEL_35;
      }

      LOBYTE(v112[0]) = 5;
      sub_21733C074(v49, v50, v51);
      OUTLINED_FUNCTION_177_2();
      OUTLINED_FUNCTION_66_4();
      sub_217752F88();
      v105 = v2;
    }

    v76 = v111;
    v53 = v107;
LABEL_35:
    v77 = *(v121 + v108[15]);
    v78 = *(v77 + 16);
    if (*(v121 + *(v53 + 32)))
    {
      if (!v78)
      {
        if (*(v110 + 16))
        {
          v112[0] = v110;
          LOBYTE(v114[0]) = 6;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
          OUTLINED_FUNCTION_0_21();
          sub_21733ACEC(v84, v85, v86, MEMORY[0x277D83508]);
          OUTLINED_FUNCTION_15_18();
          sub_217752F88();

          v87 = OUTLINED_FUNCTION_153();
          v88(v87);
          goto LABEL_6;
        }

        (*(v76 + 8))(v105, v6, v52);
        goto LABEL_33;
      }

      sub_217751DE8();
      v79 = sub_2174EB024(v110, v77);
    }

    else if (v78)
    {
      sub_2171FF30C(v32, v112);
      v80 = OUTLINED_FUNCTION_176_4();
      v81 = sub_2174D6640(v80);
      v82 = sub_217751DE8();
      v83 = sub_2175472EC(v82, v81);
      v79 = sub_2175472EC(v110, v83);
    }

    else
    {
      sub_2171FF30C(v32, v112);
      v89 = OUTLINED_FUNCTION_176_4();
      v90 = sub_2174D6640(v89);
      v79 = sub_2174D37FC(v110, v90);
    }

    v112[0] = v79;
    LOBYTE(v114[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    OUTLINED_FUNCTION_0_21();
    sub_21733ACEC(v95, v96, v97, MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_15_18();
    sub_217752F88();
    v98 = OUTLINED_FUNCTION_153();
    v99(v98);
LABEL_33:

    goto LABEL_6;
  }

  v104 = v2;
  sub_2171F3F0C(v114, v112);
  OUTLINED_FUNCTION_91_4(v112);
  OUTLINED_FUNCTION_117_5();
  *&v114[0] = v26();
  v113 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
  OUTLINED_FUNCTION_0_21();
  sub_21733ACEC(v39, v40, v41, MEMORY[0x277D83508]);
  OUTLINED_FUNCTION_122_2();
  sub_217752F88();

  OUTLINED_FUNCTION_91_4(v112);
  OUTLINED_FUNCTION_117_5();
  v46 = v45();
  if (v46)
  {
    *&v114[0] = v46;
    v113 = 4;
    OUTLINED_FUNCTION_122_2();
    sub_217752F88();
  }

  OUTLINED_FUNCTION_91_4(v112);
  OUTLINED_FUNCTION_117_5();
  v48 = v47();
  if (v48)
  {
    *&v114[0] = v48;
    v113 = 5;
    OUTLINED_FUNCTION_122_2();
    sub_217752F88();
    v103 = v6;
  }

  else
  {
    v103 = v6;
  }

  v91 = *(v121 + v20[15]);
  sub_217751DE8();
  v92 = sub_2174EB024(v25, v91);
  v93 = v112[3];
  v94 = v112[4];
  OUTLINED_FUNCTION_160(v112, v112[3]);
  v100 = (*(v94 + 72))(v92, v106, v93, v94);

  if (v100)
  {
    *&v114[0] = v100;
    v113 = 6;
    sub_217752F88();
    OUTLINED_FUNCTION_105_6();
    v101(v104, v103);
  }

  else
  {
    OUTLINED_FUNCTION_105_6();
    v102(v104, v103);
  }

  __swift_destroy_boxed_opaque_existential_1(v112);
LABEL_6:
  OUTLINED_FUNCTION_170();
}

void sub_21732EF24(void *a1)
{
  v75 = type metadata accessor for CloudPlaylist(0);
  MEMORY[0x28223BE20](v75);
  v76 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25788, &qword_21775D890);
  v78 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v72 - v4;
  v6 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25790, &qword_21775D898);
  sub_21733CCD4(&qword_27CB25798, &qword_27CB25790, &qword_21775D898);
  v7 = v86;
  v8 = sub_2177532F8();
  v9 = v7[1];
  v81[0] = *v7;
  v81[1] = v9;
  LOBYTE(v80[0]) = 0;
  sub_2172E1B18(v8, v10, v11);
  v12 = v77;
  sub_217752F88();
  if (v12)
  {
    (*(v78 + 8))(v5, v3);
    return;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  v15 = v13;
  v16 = *(v7 + *(v13 + 40) + 8);
  if (v16)
  {
    LOBYTE(v81[0]) = 2;
    v13 = sub_217752F48();
  }

  v17 = v7 + v15[9];
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v17) = v17[16];
  v83 = v18;
  v84 = v19;
  v85 = v17;
  v82[391] = 1;
  sub_21733ABF0(v13, v16, v14);
  sub_217751DE8();
  sub_217752F88();

  v20 = sub_217751DC8();
  memcpy(v82, v7 + v15[11], 0x180uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v82) != 1)
  {

    sub_217751378();
    swift_allocObject();
    v27 = sub_217751368();
    v28 = memcpy(v81, v82, 0x180uLL);
    sub_21733AC98(v28, v29, v30);
    v31 = sub_217751358();
    v73 = v27;
    v76 = v31;
    v77 = v37;
    sub_217751348();
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_217751308();

    sub_217275694(v76, v77);

    v20 = v81[0];
    v7 = v86;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v21 = v75;
  if (swift_dynamicCast())
  {
    v76 = v5;
    v77 = v20;
    sub_2171F3F0C(v80, v81);
    v22 = v15;
    v23 = v7;
    v24 = v81[3];
    v25 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v26 = (*(v25 + 48))(*(v23 + v22[12]), v74, v24, v25);
    v73 = v22;
    *&v80[0] = v26;
    v79 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v38 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    v75 = v38;

    v40 = v81[3];
    v41 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v42 = v73;
    v43 = (*(v41 + 56))(*(v86 + v73[13]), v74, v40, v41);
    if (v43)
    {
      *&v80[0] = v43;
      v79 = 4;
      sub_217752F88();
    }

    v44 = v81[3];
    v45 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v46 = (*(v45 + 64))(*(v86 + v42[14]), v74, v44, v45);
    if (v46)
    {
      *&v80[0] = v46;
      v79 = 5;
      sub_217752F88();
      v72 = v3;
    }

    else
    {
      v72 = v3;
    }

    v57 = *(v86 + v42[15]);
    sub_217751DE8();
    v58 = sub_2174EB024(v77, v57);
    v59 = v81[3];
    v60 = v81[4];
    __swift_project_boxed_opaque_existential_1(v81, v81[3]);
    v68 = (*(v60 + 72))(v58, v74, v59, v60);

    if (v68)
    {
      *&v80[0] = v68;
      v79 = 6;
      v70 = v72;
      v71 = v76;
      sub_217752F88();
      (*(v78 + 8))(v71, v70);
    }

    else
    {
      (*(v78 + 8))(v76, v72, v69);
    }

    __swift_destroy_boxed_opaque_existential_1(v81);
    return;
  }

  memset(v80, 0, 40);
  sub_2171F0738(v80, &qword_27CB25588, &unk_21775D380);
  v73 = v15;
  v32 = *(v7 + v15[12]);
  v33 = v7;
  v34 = *(v21 + 20);
  if (*(v32 + 16))
  {
    v35 = v74;
    v36 = sub_2173884CC(v33 + v34, v74, v32);
    v77 = v20;
    v39 = v33;
    v81[0] = v36;
    LOBYTE(v80[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
  }

  else
  {
    v77 = v20;
    LOBYTE(v81[0]) = 3;
    type metadata accessor for CloudPlaylist.Attributes(0);
    sub_21733CDD0(&qword_27CB257B0, type metadata accessor for CloudPlaylist.Attributes, &protocol conformance descriptor for CloudPlaylist.Attributes);
    sub_217752F88();
    v39 = v33;
    v35 = v74;
  }

  v47 = v77;
  v48 = v75;
  sub_21726A630(v39 + *(v75 + 24), v80, &qword_27CB24358, &unk_21775D510);
  if (*&v80[1] != 1)
  {
    v49 = memcpy(v81, v80, sizeof(v81));
    v51 = *(v39 + v73[13]);
    if (!*(v51 + 16))
    {
      LOBYTE(v80[0]) = 4;
      sub_21733C170(v49, v50, v51);
      sub_217752F88();
      sub_21726A354(v81);
LABEL_25:
      v48 = v75;
      goto LABEL_26;
    }

    *&v80[0] = sub_2173888A8(v81, v35, v51);
    v79 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    sub_21726A354(v81);
LABEL_24:

    goto LABEL_25;
  }

  sub_2171F0738(v80, &qword_27CB24358, &unk_21775D510);
  if (*(*(v39 + v73[13]) + 16))
  {
    v81[0] = *(v39 + v73[13]);
    LOBYTE(v80[0]) = 4;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    goto LABEL_24;
  }

LABEL_26:
  v52 = *(v48 + 28);
  v53 = v86;
  sub_21726A630(v86 + v52, v80, &qword_27CB24350, &unk_21776A5D0);
  if (*&v80[1] == 1)
  {
    sub_2171F0738(v80, &qword_27CB24350, &unk_21776A5D0);
    if (*(*(v53 + v73[14]) + 16))
    {
      v81[0] = *(v53 + v73[14]);
      LOBYTE(v80[0]) = 5;
      sub_217751DE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
LABEL_34:
    }
  }

  else
  {
    v54 = memcpy(v81, v80, 0x200uLL);
    v56 = *(v53 + v73[14]);
    if (*(v56 + 16))
    {
      *&v80[0] = sub_217388C50(v81, v35, v56);
      v79 = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
      sub_21726A300(v81);
      goto LABEL_34;
    }

    LOBYTE(v80[0]) = 5;
    sub_21733C11C(v54, v55, v56);
    sub_217752F88();
    sub_21726A300(v81);
  }

  v61 = v78;
  v62 = v86;
  sub_21726A630(v86 + *(v75 + 32), v80, &qword_27CB24348, &unk_21775D520);
  if (*&v80[3] == 1)
  {
    sub_2171F0738(v80, &qword_27CB24348, &unk_21775D520);
    v63 = *(v62 + v73[15]);
    if (*(v63 + 16))
    {
      sub_217751DE8();
      v81[0] = sub_2174EB024(v47, v63);
      LOBYTE(v80[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    else if (*(v47 + 16))
    {
      v81[0] = v47;
      LOBYTE(v80[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      (*(v61 + 8))(v5, v3, v66);
      return;
    }
  }

  else
  {
    memcpy(v81, v80, 0x140uLL);
    v64 = *(v62 + v73[15]);
    if (*(v64 + 16))
    {
      v65 = sub_217331390(v81, v47, v74, v64, sub_21733C1C4, sub_2174D5A94);
    }

    else
    {
      v65 = sub_217388E88(v81, v74, v47);
    }

    v67 = v65;

    *&v80[0] = v67;
    v79 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    sub_21726A2AC(v81);
  }

  (*(v61 + 8))(v5, v3);
}

double sub_217330174(void *a1)
{
  v85 = type metadata accessor for CloudRadioShow(0);
  MEMORY[0x28223BE20](v85);
  v86 = (&v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25970, &qword_21775D9F0);
  v88 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v82 - v4;
  v6 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25978, &qword_21775D9F8);
  sub_21733CCD4(&qword_27CB25980, &qword_27CB25978, &qword_21775D9F8);
  v7 = v97;
  v8 = sub_2177532F8();
  v9 = v7[1];
  v92[0] = *v7;
  v92[1] = v9;
  LOBYTE(v89[0]) = 0;
  sub_2172E1B18(v8, v10, v11);
  v12 = v87;
  sub_217752F88();
  if (v12)
  {
    (*(v88 + 8))(v5, v3);
    return result;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247C0, &unk_21779AA10);
  v16 = v14;
  v17 = *(v7 + *(v14 + 40) + 8);
  if (v17)
  {
    LOBYTE(v92[0]) = 2;
    v14 = sub_217752F48();
  }

  v18 = v7 + v16[9];
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v18) = v18[16];
  v94 = v19;
  v95 = v20;
  v96 = v18;
  v93 = 1;
  sub_21733ABF0(v14, v17, v15);
  sub_217751DE8();
  sub_217752F88();

  v21 = sub_217751DC8();
  memcpy(v92, v7 + v16[11], sizeof(v92));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v92) != 1)
  {

    sub_217751378();
    swift_allocObject();
    v27 = sub_217751368();
    v28 = memcpy(v89, v92, sizeof(v89));
    sub_21733AC98(v28, v29, v30);
    v31 = sub_217751358();
    v83 = v27;
    v86 = v16;
    v87 = v31;
    v37 = v36;
    sub_217751348();
    swift_allocObject();
    sub_217751338();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2388, sub_21733AD70, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    v82 = v37;
    sub_217751308();

    sub_217275694(v87, v82);

    v21 = v89[0];
    v16 = v86;
  }

  sub_21733CAD0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25580, &qword_21775D378);
  v22 = v85;
  if (swift_dynamicCast())
  {
    v87 = v21;
    v85 = v5;
    sub_2171F3F0C(v91, v89);
    v23 = v16;
    v24 = v89[3];
    v25 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v26 = (*(v25 + 48))(*(v7 + v23[12]), v84, v24, v25);
    v86 = v23;
    *&v91[0] = v26;
    v90 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    v38 = sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    v83 = v38;

    v40 = v89[3];
    v41 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v42 = (*(v41 + 56))(*(v97 + v86[13]), v84, v40, v41);
    if (v42)
    {
      *&v91[0] = v42;
      v90 = 4;
      sub_217752F88();
    }

    v43 = v89[3];
    v44 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v45 = (*(v44 + 64))(*(v97 + v86[14]), v84, v43, v44);
    if (v45)
    {
      *&v91[0] = v45;
      v90 = 5;
      sub_217752F88();
      v82 = v3;
    }

    else
    {
      v82 = v3;
    }

    v61 = *(v97 + v86[15]);
    sub_217751DE8();
    v62 = sub_2174EB024(v87, v61);
    v63 = v89[3];
    v64 = v89[4];
    __swift_project_boxed_opaque_existential_1(v89, v89[3]);
    v78 = (*(v64 + 72))(v62, v84, v63, v64);

    if (v78)
    {
      *&v91[0] = v78;
      v90 = 6;
      v80 = v82;
      v81 = v85;
      sub_217752F88();
      (*(v88 + 8))(v81, v80);
    }

    else
    {
      (*(v88 + 8))(v85, v82, v79);
    }

    __swift_destroy_boxed_opaque_existential_1(v89);
    return result;
  }

  memset(v91, 0, 40);
  sub_2171F0738(v91, &qword_27CB25588, &unk_21775D380);
  v86 = v16;
  v32 = *(*(v7 + v16[12]) + 16);
  v33 = *(v22 + 20);
  if (v32)
  {
    v34 = v84;
    v35 = sub_217388738(v7 + v33);
    v39 = v21;
    v89[0] = v35;
    LOBYTE(v91[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();

    v7 = v97;
  }

  else
  {
    v87 = v21;
    LOBYTE(v89[0]) = 3;
    type metadata accessor for CloudRadioShow.Attributes(0);
    sub_21733CDD0(&qword_27CB25998, type metadata accessor for CloudRadioShow.Attributes, &protocol conformance descriptor for CloudRadioShow.Attributes);
    sub_217752F88();
    v34 = v84;
    v39 = v87;
  }

  v46 = v85;
  sub_21726A630(v7 + *(v85 + 24), v91, &qword_27CB25640, &qword_217764750);
  if (*&v91[1] == 1)
  {
    v87 = v39;
    v47 = sub_2171F0738(v91, &qword_27CB25640, &qword_217764750);
    v50 = v86;
    v51 = *(v7 + v86[13]);
    if (!*(v51 + 16))
    {
      v7 = v97;
      goto LABEL_26;
    }

    v89[0] = v51;
    LOBYTE(v91[0]) = 4;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();

    v7 = v97;
  }

  else
  {
    v52 = memcpy(v89, v91, 0x80uLL);
    v54 = *(v7 + v86[13]);
    if (*(v54 + 16))
    {
      v55 = sub_217388A28();
      v87 = v39;
      *&v91[0] = v55;
      v90 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
      sub_21733BB04(v89);

      v7 = v97;
    }

    else
    {
      v87 = v39;
      LOBYTE(v91[0]) = 4;
      sub_21733CA00(v52, v53, v54);
      sub_217752F88();
      v47 = sub_21733BB04(v89);
    }

    v50 = v86;
  }

  v46 = v85;
LABEL_26:
  v56 = *(v7 + *(v46 + 28));
  v57 = *(v7 + v50[14]);
  v58 = *(v57 + 16);
  if ((v56 & 1) == 0)
  {
    if (v58)
    {
      sub_2171FF30C(v34, v89);
      v59 = sub_2174D57FC(v89);
      v60 = sub_217751DE8();
      v89[0] = sub_2174D37FC(v60, v59);
      LOBYTE(v91[0]) = 5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      v50 = v86;
    }

    else
    {
      LOBYTE(v89[0]) = 5;
      sub_21733C9AC(v47, v48, v49);
      sub_217752F88();
    }

    goto LABEL_34;
  }

  if (v58)
  {
    v89[0] = v57;
    LOBYTE(v91[0]) = 5;
    sub_217751DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();

LABEL_34:
    v46 = v85;
  }

  v65 = *(v97 + *(v46 + 32));
  v66 = *(v97 + v50[15]);
  v67 = *(v66 + 16);
  if (v65 == 1)
  {
    v68 = v88;
    if (v67)
    {
      sub_217751DE8();
      v89[0] = sub_2174EB024(v87, v66);
      LOBYTE(v91[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();
    }

    else if (*(v87 + 16))
    {
      v89[0] = v87;
      LOBYTE(v91[0]) = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
      sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
      sub_217752F88();

      (*(v68 + 8))(v5, v3, v75);
      return result;
    }

    (*(v68 + 8))(v5, v3);
  }

  else
  {
    v69 = v88;
    if (v67)
    {
      sub_2171FF30C(v84, v89);
      sub_217221020(v65);
      v70 = sub_217751DE8();
      v71 = sub_2174D5FC8(v70, v89);
      v72 = sub_217751DE8();
      v73 = sub_2175472EC(v72, v71);
      v74 = sub_2175472EC(v87, v73);
    }

    else
    {
      sub_2171FF30C(v84, v89);
      sub_217221020(v65);
      v76 = sub_217751DE8();
      v77 = sub_2174D5FC8(v76, v89);
      v74 = sub_2174D37FC(v87, v77);
    }

    v89[0] = v74;
    LOBYTE(v91[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25590, &qword_21776DFB0);
    sub_21733ACEC(&qword_280BE2390, sub_21733AC44, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_217752F88();
    (*(v69 + 8))(v5, v3);
    sub_217221010(v65);
  }
}

uint64_t sub_217331390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, _BYTE *), uint64_t (*a6)(_BYTE *, _BYTE *))
{
  a5(a1, v15);
  sub_2171FF30C(a3, v14);
  result = a6(v15, v14);
  if (!v6)
  {
    v10 = result;
    v11 = sub_217751DE8();
    v12 = sub_2175472EC(v11, v10);
    v13 = sub_217751DE8();
    return sub_2175472EC(v13, v12);
  }

  return result;
}

uint64_t sub_217331434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v75 = a3;
  v76 = a2;
  v77 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  MEMORY[0x28223BE20](v5);
  v70 = &v63[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v63[-v8];
  v10 = type metadata accessor for CloudMusicVideo(0);
  MEMORY[0x28223BE20](v10 - 8);
  v72 = &v63[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  MEMORY[0x28223BE20](v12);
  v69 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v63[-v15];
  v17 = type metadata accessor for CloudSong(0);
  MEMORY[0x28223BE20](v17 - 8);
  v71 = &v63[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for CloudTrack(0);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v63[-v21];
  sub_21733CAD0();
  v73 = v22;
  sub_21733CAD0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_21733CE30();
    sub_21733CAD0();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v24 = v23[10];
    v25 = (a1 + v23[9]);
    v26 = *v25;
    v71 = v25[1];
    v27 = v71;
    LODWORD(v65) = *(v25 + 16);
    v28 = *(a1 + v24 + 8);
    v69 = *(a1 + v24);
    v66 = v26;
    v67 = v28;
    v29 = v23[11];
    memcpy(v81, (a1 + v29), 0x180uLL);
    v30 = *(a1 + v23[12]);
    v31 = *(a1 + v23[13]);
    v32 = a1;
    v33 = *(a1 + v23[14]);
    v34 = *(v32 + v23[15]);
    v68 = v32;
    v35 = &v9[v5[9]];
    v36 = v67;
    *v35 = v66;
    *(v35 + 1) = v27;
    v35[16] = v65;
    v37 = &v9[v5[10]];
    *v37 = v69;
    v37[1] = v36;
    memcpy(&v9[v5[11]], (v32 + v29), 0x180uLL);
    *&v9[v5[12]] = v30;
    *&v9[v5[13]] = v31;
    *&v9[v5[14]] = v33;
    *&v9[v5[15]] = v34;
    v38 = v70;
    sub_21726A630(v9, v70, &qword_27CB24808, &qword_217758D90);
    v39 = v76;
    sub_2172CA838(v76, v80);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v81, v78, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172F1160(v38);
    sub_21733AB9C(v39);
    sub_2171F0738(v68, &qword_27CB24820, &unk_2177650E0);
    sub_2171F0738(v9, &qword_27CB24808, &qword_217758D90);
    v40 = type metadata accessor for CloudMusicVideo;
    v41 = v72;
  }

  else
  {
    sub_21733CE30();
    sub_21733CAD0();
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v43 = v42[10];
    v44 = (a1 + v42[9]);
    v45 = *v44;
    v72 = v44[1];
    v46 = v72;
    v64 = *(v44 + 16);
    v47 = *(a1 + v43 + 8);
    v67 = *(a1 + v43);
    v65 = v45;
    v66 = v47;
    v48 = v42[11];
    memcpy(v81, (a1 + v48), 0x180uLL);
    v49 = v42[13];
    v70 = *(a1 + v42[12]);
    v50 = v70;
    v51 = *(a1 + v49);
    v52 = v42[15];
    v53 = *(a1 + v42[14]);
    v54 = *(a1 + v52);
    v55 = &v16[v12[9]];
    *v55 = v65;
    *(v55 + 1) = v46;
    v55[16] = v64;
    v56 = &v16[v12[10]];
    v57 = v66;
    *v56 = v67;
    v56[1] = v57;
    memcpy(&v16[v12[11]], (a1 + v48), 0x180uLL);
    *&v16[v12[12]] = v50;
    *&v16[v12[13]] = v51;
    *&v16[v12[14]] = v53;
    *&v16[v12[15]] = v54;
    v58 = v69;
    sub_21726A630(v16, v69, &qword_27CB24748, &unk_217758CD0);
    v59 = v76;
    sub_2172CA838(v76, v80);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v81, v78, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217303E60(v58);
    sub_21733AB9C(v59);
    sub_2171F0738(a1, &qword_27CB24820, &unk_2177650E0);
    sub_2171F0738(v16, &qword_27CB24748, &unk_217758CD0);
    v40 = type metadata accessor for CloudSong;
    v41 = v71;
  }

  sub_21733CA78(v41, v40);
  result = sub_21733CA78(v73, type metadata accessor for CloudTrack);
  v61 = v78[1];
  v62 = v77;
  *v77 = v78[0];
  v62[1] = v61;
  v62[2] = v78[2];
  *(v62 + 6) = v79;
  *(v62 + 56) = EnumCaseMultiPayload == 1;
  return result;
}

void *sub_217331B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  MEMORY[0x28223BE20](v5);
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  sub_217275710(v2, v46);
  v44[0] = v46[0];
  v44[1] = v46[1];
  v44[2] = v46[2];
  v45 = v47;
  if (v48)
  {
    sub_2172F34C8(a1);
    sub_217283C08(v44);
    sub_21733CE30();
    type metadata accessor for CloudTrack(0);
    swift_storeEnumTagMultiPayload();
    v11 = v5[10];
    v12 = &v7[v5[9]];
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = v12[16];
    v16 = *&v7[v5[12]];
    v42 = v5[11];
    v43 = v16;
    v17 = v5[14];
    v41 = *&v7[v5[13]];
    v19 = *&v7[v11];
    v18 = *&v7[v11 + 8];
    v20 = *&v7[v17];
    v21 = *&v7[v5[15]];
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v23 = a2 + v22[9];
    *v23 = v13;
    *(v23 + 8) = v14;
    *(v23 + 16) = v15;
    v24 = (a2 + v22[10]);
    *v24 = v19;
    v24[1] = v18;
    result = memcpy((a2 + v22[11]), &v7[v42], 0x180uLL);
    *(a2 + v22[12]) = v43;
    *(a2 + v22[13]) = v41;
    *(a2 + v22[14]) = v20;
    *(a2 + v22[15]) = v21;
  }

  else
  {
    sub_21730D230(a1);
    sub_217283B58(v44);
    sub_21733CE30();
    type metadata accessor for CloudTrack(0);
    swift_storeEnumTagMultiPayload();
    v26 = v8[10];
    v27 = &v10[v8[9]];
    v28 = *v27;
    v29 = *(v27 + 1);
    v30 = v27[16];
    v31 = *&v10[v8[12]];
    v42 = v8[11];
    v43 = v31;
    v32 = v8[14];
    v41 = *&v10[v8[13]];
    v34 = *&v10[v26];
    v33 = *&v10[v26 + 8];
    v35 = *&v10[v32];
    v36 = *&v10[v8[15]];
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24820, &unk_2177650E0);
    v38 = a2 + v37[9];
    *v38 = v28;
    *(v38 + 8) = v29;
    *(v38 + 16) = v30;
    v39 = (a2 + v37[10]);
    *v39 = v34;
    v39[1] = v33;
    result = memcpy((a2 + v37[11]), &v10[v42], 0x180uLL);
    *(a2 + v37[12]) = v43;
    *(a2 + v37[13]) = v41;
    *(a2 + v37[14]) = v35;
    *(a2 + v37[15]) = v36;
  }

  return result;
}

uint64_t sub_217331E44(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v141 = v1;
  v142 = v2;
  v143 = v4;
  v144 = v3;
  v138 = v6;
  v139 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v7 - 8);
  v130 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v132 = &v126 - v10;
  MEMORY[0x28223BE20](v11);
  v131 = &v126 - v12;
  v135 = type metadata accessor for PlaylistEntryPropertyProvider(0);
  MEMORY[0x28223BE20](v135);
  v137 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  MEMORY[0x28223BE20](v14);
  v134 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v126 - v17;
  v19 = type metadata accessor for CloudMusicVideo(0);
  MEMORY[0x28223BE20](v19 - 8);
  *&v136 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  MEMORY[0x28223BE20](v21);
  v133 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v126 - v24;
  v26 = type metadata accessor for CloudSong(0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v126 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for CloudPlaylistEntry(0);
  MEMORY[0x28223BE20](v29);
  v31 = &v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v126 - v33;
  sub_21733CAD0();
  v140 = v34;
  sub_21733CAD0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v129 = v28;
    sub_21733CE30();
    sub_21733CAD0();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
    v58 = v57[10];
    v59 = v144;
    v60 = v144 + v57[9];
    v61 = *(v60 + 8);
    v132 = *v60;
    LODWORD(v131) = *(v60 + 16);
    v62 = *(v144 + v58 + 8);
    v135 = *(v144 + v58);
    *&v136 = v61;
    v134 = v62;
    v63 = v57[11];
    memcpy(v158, (v144 + v63), 0x180uLL);
    v64 = v57[13];
    v137 = *(v144 + v57[12]);
    v65 = v137;
    v66 = *(v144 + v64);
    v67 = *(v144 + v57[14]);
    v68 = *(v144 + v57[15]);
    v69 = &v25[v21[9]];
    *v69 = v132;
    *(v69 + 1) = v61;
    v69[16] = v131;
    v70 = &v25[v21[10]];
    v71 = v134;
    *v70 = v135;
    v70[1] = v71;
    memcpy(&v25[v21[11]], (v59 + v63), 0x180uLL);
    *&v25[v21[12]] = v65;
    *&v25[v21[13]] = v66;
    *&v25[v21[14]] = v67;
    *&v25[v21[15]] = v68;
    v72 = v133;
    sub_21726A630(v25, v133, &qword_27CB24748, &unk_217758CD0);
    v73 = v143;
    sub_2172CA838(v143, v146);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v158, v148, &qword_27CB25620, &qword_21776A5F0);

    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217303E60(v72);
    sub_217283AFC(v147, v148);
    v148[56] = 0;
    Playlist.Entry.init(track:position:occurrence:)();

    sub_21733AB9C(v73);
    sub_2171F0738(v59, &qword_27CB24A28, &qword_217758FE0);
    sub_217283B58(v147);
    sub_2171F0738(v25, &qword_27CB24748, &unk_217758CD0);
    v55 = type metadata accessor for CloudSong;
    v56 = v129;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_21733CE30();
    sub_21733CAD0();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
    v37 = v36[10];
    v38 = v144;
    v39 = (v144 + v36[9]);
    v40 = *v39;
    v135 = v39[1];
    v41 = v135;
    LODWORD(v129) = *(v39 + 16);
    v42 = *(v144 + v37 + 8);
    v132 = *(v144 + v37);
    v130 = v40;
    v131 = v42;
    v43 = v36[11];
    memcpy(v158, (v144 + v43), 0x180uLL);
    v44 = v36[13];
    v133 = *(v144 + v36[12]);
    v45 = v133;
    v46 = *(v144 + v44);
    v47 = v36[15];
    v137 = *(v144 + v36[14]);
    v48 = v137;
    v49 = *(v144 + v47);
    v50 = &v18[v14[9]];
    *v50 = v130;
    *(v50 + 1) = v41;
    v50[16] = v129;
    v51 = &v18[v14[10]];
    v52 = v131;
    *v51 = v132;
    *(v51 + 1) = v52;
    memcpy(&v18[v14[11]], (v38 + v43), 0x180uLL);
    *&v18[v14[12]] = v45;
    *&v18[v14[13]] = v46;
    *&v18[v14[14]] = v48;
    *&v18[v14[15]] = v49;
    v53 = v134;
    sub_21726A630(v18, v134, &qword_27CB24808, &qword_217758D90);
    v54 = v143;
    sub_2172CA838(v143, v146);
    sub_217751DE8();

    sub_217751DE8();
    sub_21726A630(v158, v148, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172F1160(v53);
    sub_217283BAC(v147, v148);
    v148[56] = 1;
    Playlist.Entry.init(track:position:occurrence:)();

    sub_21733AB9C(v54);
    sub_2171F0738(v38, &qword_27CB24A28, &qword_217758FE0);
    sub_217283C08(v147);
    sub_2171F0738(v18, &qword_27CB24808, &qword_217758D90);
    v55 = type metadata accessor for CloudMusicVideo;
    v56 = v136;
LABEL_5:
    sub_21733CA78(v56, v55);
    v74 = type metadata accessor for CloudPlaylistEntry;
    v75 = v140;
    return sub_21733CA78(v75, v74);
  }

  memcpy(v160, v31, 0x1F9uLL);
  sub_21726A630(v160, v159, &qword_27CB256E8, &qword_21775D830);
  if ((v159[504] & 1) == 0)
  {
    memcpy(v155, v159, sizeof(v155));
    v80 = v155[0];
    v81 = v155[1];
    v82 = qword_280BE90D0;
    sub_217751DE8();
    if (v82 != -1)
    {
      swift_once();
    }

    v84 = qword_280BE90E8;
    v83 = unk_280BE90F0;
    sub_217751DE8();
    sub_217751DE8();
    v136 = xmmword_280BE90D8;

    *v156 = v80;
    *&v156[8] = v81;
    *&v156[16] = v80;
    *&v156[24] = v81;
    v156[32] = 6;
    bzero(&v156[40], 0xE0uLL);
    *&v156[264] = MEMORY[0x277D84FA0];
    v156[272] = 0;
    *&v156[280] = &unk_28295F140;
    *&v156[288] = v136;
    *&v156[304] = v84;
    *&v156[312] = v83;
    memset(&v156[320], 0, 32);
    v156[352] = 4;
    v153 = 0;
    memset(v152, 0, sizeof(v152));
    v154 = -1;
    memcpy(v158, v156, 0x161uLL);
    MusicIdentifierSet.equivalentPlaylistEntryIdentifierSet(with:)(v157);
    sub_217269F50(v156);
    if (qword_280BE8AC8 != -1)
    {
      swift_once();
    }

    v85 = *(&xmmword_280BE8AD0 + 1);
    *&v136 = xmmword_280BE8AD0;
    LODWORD(v134) = byte_280BE8AE0;
    sub_217751DE8();
    v133 = sub_217751DC8();
    v129 = sub_217751DC8();
    v128 = sub_217751DC8();
    v127 = sub_217751DC8();
    v151 = 0;
    memset(v150, 0, sizeof(v150));
    sub_2172A497C(v158);
    v86 = v137;
    memcpy(v137, v158, 0x221uLL);
    *(v86 + 69) = 0;
    v86[560] = 1;
    *(v86 + 568) = 0u;
    *(v86 + 584) = 0u;
    v87 = v135;
    v88 = v135[8];
    v89 = sub_2177517D8();
    __swift_storeEnumTagSinglePayload(&v86[v88], 1, 1, v89);
    __swift_storeEnumTagSinglePayload(&v86[v87[9]], 1, 1, v89);
    v90 = &v86[v87[10]];
    *(v90 + 48) = 0;
    *(v90 + 16) = 0u;
    *(v90 + 32) = 0u;
    *v90 = 0u;
    *(v90 + 56) = -1;
    v91 = &v86[v87[11]];
    *v91 = 0;
    *(v91 + 1) = 0;
    v91[16] = 0;
    v92 = &v86[v87[12]];
    *(v92 + 14) = 0;
    *(v92 + 5) = 0u;
    *(v92 + 6) = 0u;
    *(v92 + 3) = 0u;
    *(v92 + 4) = 0u;
    *(v92 + 1) = 0u;
    *(v92 + 2) = 0u;
    *v92 = 0u;
    v93 = &v86[v87[14]];
    *v93 = 0;
    *(v93 + 1) = 0;
    v138 = v87[15];
    __swift_storeEnumTagSinglePayload(&v86[v138], 1, 1, v89);
    v94 = &v86[v87[17]];
    *(v94 + 32) = 0;
    *v94 = 0u;
    *(v94 + 16) = 0u;
    if (qword_280BE3168 != -1)
    {
      swift_once();
    }

    v95 = qword_280C01FB0;
    if (qword_280C01FB0 >> 62)
    {
      type metadata accessor for AnyMusicProperty();
      sub_217751DE8();
      v125 = sub_217752D28();

      v95 = v125;
    }

    else
    {
      sub_217751DE8();
      sub_217753128();
      type metadata accessor for AnyMusicProperty();
    }

    v96 = v135;
    v97 = v137;
    v98 = &v137[v135[13]];
    v99 = &v137[v135[16]];
    *&v137[v135[18]] = v95;
    v100 = &v97[v96[21]];
    memcpy(&v97[v96[19]], v157, 0x161uLL);
    v101 = &v97[v96[20]];
    *v101 = v136;
    *(v101 + 1) = v85;
    v101[16] = v134;
    *v100 = 0;
    *(v100 + 1) = 0;
    *&v97[v96[22]] = v133;
    v102 = v128;
    *&v97[v96[23]] = v129;
    *&v97[v96[24]] = v102;
    *&v97[v96[25]] = v127;
    sub_21733BBDC(v152, v90, &qword_27CB27D20, &qword_217758B80);
    *v98 = v139;
    v98[8] = 0;
    sub_21733BBDC(v150, v94, &qword_27CB24BA8, &unk_217772FF0);
    v103 = v155[60];
    *v99 = v155[59];
    *(v99 + 1) = v103;
    memcpy(v149, &v155[2], sizeof(v149));
    if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v149) == 1)
    {
      memcpy(v148, v158, 0x221uLL);
      sub_217751DE8();
    }

    else
    {
      memcpy(v148, v149, 0x1B8uLL);
      sub_217751DE8();
      sub_21726A630(&v155[2], v147, &qword_27CB25000, &unk_21776EA00);
      CloudAttribute<A>.convertToArtwork()(v146);
      memcpy(v145, v148, sizeof(v145));
      sub_2171F0738(v145, &qword_27CB243F0, &qword_21775D690);
      memcpy(v147, v146, 0x221uLL);
      nullsub_1();
      memcpy(v148, v147, 0x221uLL);
    }

    v105 = v142;
    v104 = v143;
    v106 = v137;
    memcpy(v147, v137, 0x221uLL);
    sub_2171F0738(v147, &qword_27CB24400, &unk_21775E9A0);
    memcpy(v106, v148, 0x221uLL);
    if ((v155[58] & 1) == 0)
    {
      v107 = v137;
      *(v137 + 69) = v155[57] / 1000.0;
      v107[560] = 0;
    }

    if (qword_280BE8910 != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for CloudFormatter(0);
    v109 = __swift_project_value_buffer(v108, qword_280BE8918);
    v110 = v155[62];
    v111 = v132;
    __swift_storeEnumTagSinglePayload(v132, 1, 1, v89);
    if (v110)
    {
      v112 = *(v109 + *(v108 + 20));
      v113 = sub_217751F18();
      v114 = [v112 dateFromString_];

      if (v114)
      {
        v115 = v130;
        sub_2177517C8();

        v116 = 0;
        v117 = v132;
      }

      else
      {
        v116 = 1;
        v117 = v132;
        v115 = v130;
      }

      sub_2171F0738(v117, &qword_27CB241C0, &qword_217759480);
      __swift_storeEnumTagSinglePayload(v115, v116, 1, v89);
      sub_21726A594(v115, v117, &qword_27CB241C0, &qword_217759480);
      v118 = v131;
      sub_21726A594(v117, v131, &qword_27CB241C0, &qword_217759480);
    }

    else
    {
      sub_2171F0738(v111, &qword_27CB241C0, &qword_217759480);
      v118 = v131;
      __swift_storeEnumTagSinglePayload(v131, 1, 1, v89);
    }

    sub_21733BC90(v155);
    v119 = v137;
    sub_21733BBDC(v118, &v137[v138], &qword_27CB241C0, &qword_217759480);
    v120 = v135;
    v105[5] = v135;
    v105[6] = &protocol witness table for PlaylistEntryPropertyProvider;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v105 + 2);
    sub_21733CAD0();

    v122 = (boxed_opaque_existential_0 + v120[19]);
    v124 = *v122;
    v123 = v122[1];
    sub_217751DE8();
    sub_21733AB9C(v104);
    sub_2171F0738(v144, &qword_27CB24A28, &qword_217758FE0);
    sub_2171F0738(v160, &qword_27CB256E8, &qword_21775D830);
    sub_21733CA78(v140, type metadata accessor for CloudPlaylistEntry);
    *v105 = v124;
    v105[1] = v123;
    v74 = type metadata accessor for PlaylistEntryPropertyProvider;
    v75 = v119;
    return sub_21733CA78(v75, v74);
  }

  if (dynamic_cast_existential_1_conditional(&type metadata for Playlist.Entry, &type metadata for Playlist.Entry, &protocol descriptor for InternalPlaylistEntryProviding))
  {
    v78 = v143;
    v79 = v144;
    (*(v77 + 16))(v144, v139, v138, v143, v141, &type metadata for AnyMusicDataRequestConfiguration, &protocol witness table for AnyMusicDataRequestConfiguration);

    sub_21733AB9C(v78);
    sub_2171F0738(v79, &qword_27CB24A28, &qword_217758FE0);
    sub_2171F0738(v160, &qword_27CB256E8, &qword_21775D830);
    sub_21733CA78(v140, type metadata accessor for CloudPlaylistEntry);
    return sub_2171F0738(v159, &qword_27CB256E8, &qword_21775D830);
  }

  else
  {
    v158[0] = 0;
    v158[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0x2065707954, 0xE500000000000000);
    MEMORY[0x21CEA23B0](0x7972746E45, 0xE500000000000000);
    MEMORY[0x21CEA23B0](0xD000000000000033, 0x80000002177AB9C0);
    result = sub_217752D08();
    __break(1u);
  }

  return result;
}

uint64_t sub_217333074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A28, &qword_217758FE0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14[-v10 - 8];
  sub_21726A630(a3, &v14[-v10 - 8], &qword_27CB24A28, &qword_217758FE0);
  sub_2172CA838(a6, v14);

  return sub_217331E44(v11);
}

uint64_t sub_21733316C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v108 = v2;
  v109 = v1;
  v4 = v3;
  v107 = v5;
  v112 = type metadata accessor for CloudGenre(0);
  MEMORY[0x28223BE20](v112);
  v113 = (&v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for GenrePropertyProvider(0);
  MEMORY[0x28223BE20](v7);
  v101 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v90 - v10;
  if (qword_280BE62C8 != -1)
  {
    swift_once();
  }

  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0;
  sub_2172DB230();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  v13 = v12[10];
  v14 = (v4 + v12[9]);
  v15 = v14[1];
  v105 = *v14;
  LODWORD(v104) = *(v14 + 16);
  v16 = *(v4 + v13 + 8);
  v110 = *(v4 + v13);
  v17 = v12[13];
  v102 = *(v4 + v12[12]);
  v18 = *(v4 + v17);
  v19 = *(v4 + v12[14]);
  v20 = *(v4 + v12[15]);
  sub_2172A497C(v134);
  memcpy(v11, v134, 0x221uLL);
  *(v11 + 36) = xmmword_2177586D0;
  *(v11 + 37) = 0u;
  *(v11 + 38) = 0u;
  *(v11 + 39) = 0u;
  v21 = v7[9];
  v99 = sub_2177517D8();
  __swift_storeEnumTagSinglePayload(&v11[v21], 1, 1, v99);
  memcpy(&v11[v7[10]], v134, 0x221uLL);
  v22 = &v11[v7[12]];
  *(v22 + 48) = 0;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0u;
  *v22 = 0u;
  v100 = v22;
  *(v22 + 56) = -1;
  v23 = v7[13];
  v24 = sub_2177516D8();
  v106 = v23;
  v98 = v24;
  __swift_storeEnumTagSinglePayload(&v11[v23], 1, 1, v24);
  v25 = &v11[v7[15]];
  *(v25 + 12) = 0;
  *(v25 + 4) = 0u;
  *(v25 + 5) = 0u;
  *(v25 + 2) = 0u;
  *(v25 + 3) = 0u;
  *v25 = 0u;
  *(v25 + 1) = 0u;
  v26 = qword_280BE3A58;
  v103 = v15;
  sub_217751DE8();
  v111 = v16;
  v27 = v18;
  v28 = v102;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  if (v26 != -1)
  {
    swift_once();
  }

  v29 = qword_280C01FD0;
  v114 = v4;
  v96 = qword_280C01FD0 >> 62;
  v97 = qword_280C01FD0;
  if (qword_280C01FD0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v29 = sub_217752D28();
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  v30 = &v11[v7[11]];
  *&v11[v7[17]] = v29;
  v31 = &v11[v7[20]];
  memcpy(&v11[v7[18]], v133, 0x161uLL);
  v32 = &v11[v7[19]];
  v33 = v103;
  *v32 = v105;
  *(v32 + 1) = v33;
  v32[16] = v104;
  v34 = v111;
  *v31 = v110;
  v31[1] = v34;
  *&v11[v7[21]] = v28;
  *&v11[v7[22]] = v27;
  *&v11[v7[23]] = v19;
  *&v11[v7[24]] = v20;
  v35 = v113;
  sub_21733CAD0();
  v36 = (v35 + *(v112 + 20));
  v37 = v36[70];
  *v30 = v36[69];
  *(v30 + 1) = v37;
  memcpy(v123, v36, sizeof(v123));
  memcpy(v124, v36, sizeof(v124));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v124) == 1)
  {
    memcpy(v122, v134, sizeof(v122));
    sub_217751DE8();
  }

  else
  {
    memcpy(v122, v124, 0x1B8uLL);
    sub_217751DE8();
    sub_21726A630(v123, v121, &qword_27CB25000, &unk_21776EA00);
    CloudAttribute<A>.convertToArtwork()(v116);
    memcpy(v115, v122, sizeof(v115));
    sub_2171F0738(v115, &qword_27CB243F0, &qword_21775D690);
    memcpy(v121, v116, 0x221uLL);
    nullsub_1();
    memcpy(v122, v121, sizeof(v122));
  }

  memcpy(v121, v11, 0x221uLL);
  sub_2171F0738(v121, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v11, v122, 0x221uLL);
  *(v11 + 71) = v36[57];
  if (v36[66])
  {
    v38 = v36[65];
    v40 = v36[63];
    v39 = v36[64];
    v41 = v36[61];
    v104 = v36[62];
    v105 = v39;
    v43 = v36[59];
    v42 = v36[60];
    v102 = v36[58];
    v103 = v42;
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
  }

  else
  {
    v102 = 0;
    v103 = 0;
    v41 = 0;
    v104 = 0;
    v105 = 0;
    v40 = 0;
    v38 = 0;
    v43 = 1;
  }

  v44 = &v11[v7[14]];
  v45 = *(v11 + 37);
  v116[0] = *(v11 + 36);
  v116[1] = v45;
  v46 = *(v11 + 39);
  v116[2] = *(v11 + 38);
  v116[3] = v46;
  sub_217751DE8();
  sub_2171F0738(v116, &qword_27CB24B70, &unk_217759460);
  v47 = v103;
  *(v11 + 72) = v102;
  *(v11 + 73) = v43;
  *(v11 + 74) = v47;
  *(v11 + 75) = v41;
  v48 = v105;
  *(v11 + 76) = v104;
  *(v11 + 77) = v40;
  *(v11 + 78) = v48;
  *(v11 + 79) = v38;
  *(v11 + 80) = v36[67];
  v49 = v36[76];
  *v44 = v36[75];
  *(v44 + 1) = v49;
  v50 = *(type metadata accessor for CloudGenre.Attributes(0) + 56);
  sub_217751DE8();
  sub_217751DE8();
  sub_21733B95C(v36 + v50, &v11[v106], &unk_27CB277C0, &qword_217758DC0);
  v51 = v36[56];
  *(v11 + 69) = v36[55];
  *(v11 + 70) = v51;
  v52 = v36[72];
  if (v52)
  {
    v53 = v36[74];
    v54 = v114;
    if (!v53)
    {
      sub_217751DE8();
      goto LABEL_27;
    }

    v106 = v36[71];
    v104 = v36[73];
    v55 = qword_280BE4A88;
    sub_217751DE8();
    sub_217751DE8();
    if (v55 != -1)
    {
      swift_once();
    }

    v105 = v53;
    v57 = qword_280BE4A90;
    v56 = *algn_280BE4A98;
    v95 = byte_280BE4AA0;
    v94 = xmmword_280BE62D0;
    v58 = unk_280BE62E8;
    v93 = qword_280BE62E0;
    swift_bridgeObjectRetain_n();
    v92 = v58;
    sub_217751DE8();

    v102 = v56;
    v103 = v57;
    if (v111)
    {
      *v115 = v110;
      *&v115[8] = v111;
      v119 = 47;
      v120 = 0xE100000000000000;
      sub_217751DE8();
      sub_217751DE8();
      MEMORY[0x21CEA23B0](v57, v56);
      MEMORY[0x21CEA23B0](47, 0xE100000000000000);
      MEMORY[0x21CEA23B0](*v113, v113[1]);
      v117 = 47;
      v118 = 0xE100000000000000;
      MEMORY[0x21CEA23B0](v57, v56);
      MEMORY[0x21CEA23B0](47, 0xE100000000000000);
      v59 = MEMORY[0x21CEA23B0](v106, v52);
      sub_21733A5C8(v59, v60, v61);
      v110 = sub_217752998();
      v91 = v62;
    }

    else
    {
      sub_217751DE8();
      v110 = 0;
      v91 = 0;
    }

    v111 = sub_217751DC8();
    v90 = sub_217751DC8();
    v63 = sub_217751DC8();
    v64 = sub_217751DC8();
    v65 = v101;
    memcpy(v101, v134, 0x221uLL);
    *(v65 + 552) = 0u;
    *(v65 + 568) = 0u;
    *(v65 + 73) = 1;
    *(v65 + 37) = 0u;
    *(v65 + 38) = 0u;
    *(v65 + 39) = 0u;
    *(v65 + 80) = 0;
    __swift_storeEnumTagSinglePayload(&v65[v7[9]], 1, 1, v99);
    memcpy(&v65[v7[10]], v134, 0x221uLL);
    v66 = &v65[v7[12]];
    *(v66 + 6) = 0;
    *(v66 + 1) = 0u;
    *(v66 + 2) = 0u;
    *v66 = 0u;
    v66[56] = -1;
    __swift_storeEnumTagSinglePayload(&v65[v7[13]], 1, 1, v98);
    v67 = &v65[v7[14]];
    *v67 = 0;
    *(v67 + 1) = 0;
    v68 = &v65[v7[15]];
    *(v68 + 12) = 0;
    *(v68 + 4) = 0u;
    *(v68 + 5) = 0u;
    *(v68 + 2) = 0u;
    *(v68 + 3) = 0u;
    *v68 = 0u;
    *(v68 + 1) = 0u;
    *&v65[v7[16]] = 0;
    if (v96)
    {
      type metadata accessor for AnyMusicProperty();
      sub_217751DE8();
      v69 = sub_217752D28();
    }

    else
    {
      v69 = v97;
      sub_217751DE8();
      sub_217753128();
      type metadata accessor for AnyMusicProperty();
    }

    v70 = &v65[v7[11]];
    *&v65[v7[17]] = v69;
    v71 = &v65[v7[20]];
    v72 = &v65[v7[18]];
    v73 = v106;
    *v72 = v106;
    *(v72 + 1) = v52;
    *(v72 + 2) = v73;
    *(v72 + 3) = v52;
    v72[32] = 0;
    *(v72 + 33) = v119;
    *(v72 + 9) = *(&v119 + 3);
    bzero(v72 + 40, 0xE0uLL);
    *(v72 + 33) = MEMORY[0x277D84FA0];
    v72[272] = 0;
    *(v72 + 273) = v117;
    *(v72 + 69) = *(&v117 + 3);
    *(v72 + 35) = &unk_28295F1C0;
    *(v72 + 18) = v94;
    v74 = v92;
    *(v72 + 38) = v93;
    *(v72 + 39) = v74;
    *(v72 + 20) = 0u;
    *(v72 + 21) = 0u;
    v72[352] = 4;
    v75 = &v65[v7[19]];
    v76 = v102;
    *v75 = v103;
    *(v75 + 1) = v76;
    v75[16] = v95;
    v77 = v111;
    v78 = v91;
    *v71 = v110;
    v71[1] = v78;
    *&v65[v7[21]] = v77;
    *&v65[v7[22]] = v90;
    *&v65[v7[23]] = v63;
    *&v65[v7[24]] = v64;
    v79 = v105;
    *v70 = v104;
    *(v70 + 1) = v79;
    *&v115[40] = v7;
    *&v115[48] = &protocol witness table for GenrePropertyProvider;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v115[16]);
    sub_21733CAD0();
    v81 = (boxed_opaque_existential_0 + v7[18]);
    v82 = v81[1];
    *v115 = *v81;
    *&v115[8] = v82;
    sub_217751DE8();
    v83 = v100;
    sub_2171F0738(v100, &qword_27CB256A0, &unk_21775D750);
    v84 = *&v115[16];
    *v83 = *v115;
    *(v83 + 16) = v84;
    *(v83 + 32) = *&v115[32];
    *(v83 + 48) = *&v115[48];
    *(v83 + 56) = 0;
    sub_21733CA78(v65, type metadata accessor for GenrePropertyProvider);
  }

  else
  {
    sub_217751DE8();
  }

  v54 = v114;
LABEL_27:
  v85 = v113;
  v86 = *(v112 + 32);
  v87 = *(v113 + v86);
  if (v87 == 1)
  {
    v88 = 0;
  }

  else
  {
    v88 = *(v113 + v86);
  }

  *&v11[v7[16]] = v88;
  *&v115[24] = v7;
  *&v115[32] = &protocol witness table for GenrePropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v115);
  sub_21733CAD0();
  sub_217221020(v87);
  Genre.init(propertyProvider:)(v115, v107);

  sub_21733AB9C(v109);
  sub_2171F0738(v54, &qword_27CB24768, &qword_217758CF0);
  sub_21733CA78(v85, type metadata accessor for CloudGenre);
  return sub_21733CA78(v11, type metadata accessor for GenrePropertyProvider);
}

void *sub_217333E00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v144 = a1;
  v142 = type metadata accessor for CloudGenre(0);
  MEMORY[0x28223BE20](v142);
  v143 = (&v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v141 = type metadata accessor for CloudGenre.Attributes(0);
  MEMORY[0x28223BE20](v141);
  v12 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280BE6A70 != -1)
  {
    swift_once();
  }

  sub_2176CAE18(qword_280C021E8, v4, v5, v6, v7, v8, v9, v10, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
  memcpy(v163, v162, 0x221uLL);
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v163) == 1)
  {
    sub_2172E22C0(v145);
  }

  else
  {
    memcpy(v145, v163, 0x221uLL);
    Artwork.convertToCloudArtworkAttribute()(v147);
    memcpy(v146, v145, 0x221uLL);
    sub_217284084(v146);
    memcpy(v148, v147, sizeof(v148));
    nullsub_1();
    memcpy(v145, v148, 0x1B8uLL);
  }

  if (qword_280BE6AE0 != -1)
  {
    swift_once();
  }

  v13 = sub_2172A4344();
  v139 = v14;
  v140 = v13;
  if (qword_280BE6AA8 != -1)
  {
    swift_once();
  }

  v138 = sub_2172A4850(qword_280C02210);
  if (qword_280BE6AD0 != -1)
  {
    swift_once();
  }

  sub_2176CAE24(qword_280C02228, v15, v16, v17, v18, v19, v20, v21, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
  v22 = v155;
  if (v155 == 1)
  {
    v130 = 0;
    v131 = 0;
    v22 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v135 = 0;
    v136 = 0;
    v129 = 0;
  }

  else
  {
    v135 = v160;
    v136 = v161;
    v23 = v159;
    v133 = v158;
    v24 = v157;
    v130 = v154;
    v131 = v156;
    sub_217751DE8();
    sub_217751DE8();
    v132 = v24;
    sub_217751DE8();
    v134 = v23;
    sub_217751DE8();
    v129 = sub_217751DC8();
    sub_2171F0738(&v154, &qword_27CB24B70, &unk_217759460);
  }

  v137 = v22;
  if (qword_280BE6A98 != -1)
  {
    swift_once();
  }

  v128 = sub_2172A4834(qword_280C02208);
  v25 = v2[5];
  v26 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v25);
  (*(v26 + 96))(v146, v25, v26);
  v27 = v146[3];
  v28 = v146[4];
  __swift_project_boxed_opaque_existential_1(v146, v146[3]);
  (*(*(v28 + 8) + 48))(v148, v27);
  __swift_destroy_boxed_opaque_existential_1(v146);
  v29 = v148[0];
  v30 = v148[1];
  if (qword_280BE4BF0 != -1)
  {
    swift_once();
  }

  if (v29 == qword_280BE4BF8 && v30 == unk_280BE4C00)
  {

    v33 = 1;
  }

  else
  {
    v32 = sub_217753058();

    if (v32)
    {
      v33 = 1;
    }

    else
    {
      v33 = 3;
    }
  }

  HIDWORD(v127) = v33;
  if (qword_280BE6A88 != -1)
  {
    swift_once();
  }

  v41 = sub_2172A4344();
  v42 = v34;
  if (qword_280BE6A80 != -1)
  {
    swift_once();
  }

  v43 = qword_280C021F0;
  sub_2176CA6B8(qword_280C021F0, v34, v35, v36, v37, v38, v39, v40, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
  v44 = v146[1];
  if (v146[1])
  {
    v126 = v146[0];
    sub_217751DE8();
    sub_21728418C(v146);
  }

  else
  {
    sub_2171F0738(v146, &unk_27CB27760, &unk_21775A2D0);
    v126 = 0;
  }

  sub_2176CA6B8(v43, v45, v46, v47, v48, v49, v50, v51, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
  if (v146[1])
  {
    v52 = sub_2172A4344();
    if (v53)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0;
    }

    v125 = v54;
    if (v53)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0xE000000000000000;
    }

    sub_21728418C(v146);
  }

  else
  {
    sub_2171F0738(v146, &unk_27CB27760, &unk_21775A2D0);
    v125 = 0;
    v55 = 0;
  }

  if (qword_280BE6AF8 != -1)
  {
    swift_once();
  }

  v63 = sub_2172A4344();
  v64 = v56;
  if (qword_280BE6A90 != -1)
  {
    swift_once();
  }

  if (!v42)
  {
    v42 = 0xE000000000000000;
    v41 = 0;
  }

  sub_2176CAEB4(qword_280C02200, v56, v57, v58, v59, v60, v61, v62, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145[0]);
  memcpy(v12, v145, 0x1B8uLL);
  v65 = v139;
  *(v12 + 55) = v140;
  *(v12 + 56) = v65;
  v66 = v130;
  *(v12 + 57) = v138;
  *(v12 + 58) = v66;
  v67 = v131;
  v68 = v132;
  *(v12 + 59) = v137;
  *(v12 + 60) = v67;
  v69 = v133;
  v70 = v134;
  *(v12 + 61) = v68;
  *(v12 + 62) = v69;
  v72 = v135;
  v71 = v136;
  *(v12 + 63) = v70;
  *(v12 + 64) = v72;
  *(v12 + 65) = v71;
  v73 = v128;
  *(v12 + 66) = v129;
  *(v12 + 67) = v73;
  v12[544] = BYTE4(v127);
  *(v12 + 69) = v41;
  *(v12 + 70) = v42;
  v74 = v125;
  *(v12 + 71) = v126;
  *(v12 + 72) = v44;
  *(v12 + 73) = v74;
  *(v12 + 74) = v55;
  *(v12 + 75) = v63;
  *(v12 + 76) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25470, &unk_21775D4C0);
  swift_allocObject();
  v75 = sub_2172E3DC4();
  v76 = sub_2172A4818(v75);

  if (v76 <= 1)
  {
    v77 = 1;
  }

  else
  {
    v77 = v76;
  }

  v79 = *v2;
  v78 = v2[1];
  v80 = v142;
  v81 = v143;
  sub_21733CAD0();
  v82 = v81 + v80[6];
  *v82 = 0;
  *(v82 + 1) = 0;
  *(v82 + 2) = 1;
  *(v82 + 24) = 0u;
  *(v82 + 40) = 0u;
  *(v82 + 56) = 0u;
  *(v82 + 72) = 0u;
  *(v82 + 88) = 0u;
  *(v82 + 104) = 0u;
  *(v82 + 15) = 0;
  *v81 = v79;
  v81[1] = v78;
  *(v81 + v80[7]) = 1;
  *(v81 + v80[8]) = v77;
  v83 = v2[5];
  v84 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v83);
  v85 = *(v84 + 24);
  sub_217751DE8();
  v85(v147, v83, v84);
  nullsub_1();
  memcpy(v148, v147, 0x161uLL);
  v86 = v81;
  sub_21733CAD0();
  v87 = v2[5];
  v88 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v87);
  (*(v88 + 96))(v146, v87, v88);
  v89 = v146[3];
  v90 = v146[4];
  __swift_project_boxed_opaque_existential_1(v146, v146[3]);
  (*(*(v90 + 8) + 48))(v152, v89);
  __swift_destroy_boxed_opaque_existential_1(v146);
  v141 = v152[1];
  v142 = v152[0];
  LODWORD(v140) = v153;
  v91 = v2[5];
  v92 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v91);
  (*(v92 + 96))(v146, v91, v92);
  v93 = v146[3];
  v94 = v146[4];
  __swift_project_boxed_opaque_existential_1(v146, v146[3]);
  v95 = (*(*(v94 + 8) + 56))(v93);
  v138 = v96;
  v139 = v95;
  __swift_destroy_boxed_opaque_existential_1(v146);
  memcpy(v146, v148, 0x168uLL);
  memset(&v146[45], 0, 24);
  nullsub_1();
  v97 = v2[5];
  v98 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v97);
  (*(v98 + 96))(v149, v97, v98);
  v99 = v150;
  v100 = v151;
  __swift_project_boxed_opaque_existential_1(v149, v150);
  v101 = (*(*(v100 + 8) + 64))(v99);
  __swift_destroy_boxed_opaque_existential_1(v149);
  v102 = v2[5];
  v103 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v102);
  (*(v103 + 96))(v149, v102, v103);
  v104 = v150;
  v105 = v151;
  __swift_project_boxed_opaque_existential_1(v149, v150);
  v106 = (*(*(v105 + 8) + 72))(v104);
  __swift_destroy_boxed_opaque_existential_1(v149);
  v107 = v2[5];
  v108 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v107);
  (*(v108 + 96))(v149, v107, v108);
  v109 = v150;
  v110 = v151;
  __swift_project_boxed_opaque_existential_1(v149, v150);
  v111 = (*(*(v110 + 8) + 80))(v109);
  __swift_destroy_boxed_opaque_existential_1(v149);
  v112 = v2[5];
  v113 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v112);
  (*(v113 + 96))(v149, v112, v113);
  v114 = v150;
  v115 = v151;
  __swift_project_boxed_opaque_existential_1(v149, v150);
  v116 = (*(*(v115 + 8) + 88))(v114);
  sub_21733CA78(v86, type metadata accessor for CloudGenre);
  sub_21733CA78(v12, type metadata accessor for CloudGenre.Attributes);
  __swift_destroy_boxed_opaque_existential_1(v149);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24768, &qword_217758CF0);
  v118 = v144;
  v119 = v144 + v117[9];
  v120 = v141;
  *v119 = v142;
  *(v119 + 8) = v120;
  *(v119 + 16) = v140;
  v121 = (v118 + v117[10]);
  v122 = v138;
  *v121 = v139;
  v121[1] = v122;
  result = memcpy((v118 + v117[11]), v146, 0x180uLL);
  *(v118 + v117[12]) = v101;
  *(v118 + v117[13]) = v106;
  *(v118 + v117[14]) = v111;
  *(v118 + v117[15]) = v116;
  return result;
}

void sub_2173349C8()
{
  OUTLINED_FUNCTION_12();
  v247 = v0;
  v250 = v1;
  v3 = v2;
  v5 = v4;
  v244 = v6;
  v7 = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_31();
  v235 = v10;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_99();
  v249 = v12;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v13);
  v15 = &v230 - v14;
  v16 = v278;
  sub_21733C5F0(v5, v278);
  sub_217751DE8();
  sub_217751DE8();
  OUTLINED_FUNCTION_65_6();
  sub_2176E3E18(v17, v18, v19, v20);
  v242 = LOBYTE(v272[0]);
  if (v283 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v282;
  }

  if (v283 == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = v283;
  }

  v272[0] = v21;
  v272[1] = v22;
  sub_2171FB568(v282, v283);
  v295.value.rawValue._countAndFlagsBits = v272;
  MusicPersonalRecommendation._DisplayKind.init(_:)(v295);
  v243 = LOBYTE(v275[0]);
  v277 = MEMORY[0x277D84F90];
  if (v290)
  {
    sub_2176DD510(v290, &v277);
  }

  sub_21726A630(&v291, v273, &qword_27CB244B0, &unk_21776DB80);
  v248 = v5;
  v245 = v3;
  if (v274 == 1)
  {
    sub_2171F0738(v273, &qword_27CB244B0, &unk_21776DB80);
LABEL_14:
    OUTLINED_FUNCTION_111_4(0);
    OUTLINED_FUNCTION_199_0(v30);
    goto LABEL_15;
  }

  sub_21726A630(v273, v272, &qword_27CB244B8, &unk_217758990);
  sub_21728373C(v273);
  if (!v272[2])
  {
    sub_2171F0738(v272, &qword_27CB244B8, &unk_217758990);
    v3 = v245;
    goto LABEL_14;
  }

  v23 = v272[0];
  v24 = v272[1];
  v25 = OUTLINED_FUNCTION_204();
  sub_2171FB568(v25, v26);
  sub_2176DE128();
  v251 = 0;
  v240 = v272[3];
  v241 = v27;
  v28 = v272[4];
  v239 = v272[5];
  v16 = v272[6];
  v29 = v272[7];
  v5 = v272[8];
  sub_21726A630(&v272[9], v276, &qword_27CB24188, &dword_217758930);
  v275[0] = v23;
  v275[1] = v24;
  v275[2] = v241;
  v275[3] = v240;
  v275[4] = v28;
  v275[5] = v239;
  v275[6] = v16;
  v275[7] = v29;
  v275[8] = v5;
  v276[5] = v272[14];
  v276[6] = v272[15];
  OUTLINED_FUNCTION_236_0();
  v7 = v251;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v272, &qword_27CB244C0, &qword_21775D9C0);
  v3 = v245;
LABEL_15:
  v31 = v247;
  v251 = v7;
  v271 = v247;
  memcpy(v272, v5 + 44, sizeof(v272));
  if (get_enum_tag_for_layout_string_8MusicKit0A3APIV6SourceVSg_0(v272) == 1 || !v272[45])
  {
    sub_217751DE8();
    v33 = v31;
  }

  else
  {
    sub_217751DE8();
    v32 = sub_217751DE8();
    sub_21754383C(v32);
    v33 = v271;
  }

  v34 = v277;
  v35 = *(v277 + 16);
  v36 = sub_2173C2FA0();
  v246 = v15;
  v241 = v33;
  if (v36 != 1)
  {
    sub_21726A630(v275, v273, &qword_27CB25938, &unk_21775D9B0);
    if (v274)
    {
      sub_21726A630(v275, v268, &qword_27CB25938, &unk_21775D9B0);
      if (*&v268[16])
      {
        v255 = 0;
        OUTLINED_FUNCTION_156_2();
        v47 = v269;
        if (v269)
        {
          OUTLINED_FUNCTION_230_1();
          *&v259 = v33;
          *(&v259 + 1) = v47;
          *&v260 = v31;
          OUTLINED_FUNCTION_161_0();
          v48 = swift_allocObject();
          OUTLINED_FUNCTION_170_1(v48);
          sub_2171F0738(&v252, &qword_27CB24188, &dword_217758930);
          *&v252 = v35;
          v254 = &type metadata for MusicPersonalRecommendationIncrementalLoader;
          v255 = &off_282969FA0;
        }

        else
        {
        }

        v66 = v251;
        OUTLINED_FUNCTION_213_3();
        v65 = sub_2171F0738(v268, &qword_27CB25930, &unk_217797B70);
      }

      else
      {

        v65 = sub_2171F0738(v268, &qword_27CB25938, &unk_21775D9B0);
        v259 = 0u;
        v260 = 0u;
        v261 = 0;
        v66 = v251;
      }

      MEMORY[0x28223BE20](v65);
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_178_2(v67);
      v70 = sub_2172E4ECC(sub_21733C8E8, v68, v69, sub_217276318, &qword_27CB24948, &unk_21775A210);
      OUTLINED_FUNCTION_183_2(v70);
      sub_21726A630(&v259, v265, &qword_27CB24188, &dword_217758930);
      if (v266)
      {
        v71 = v5;
        v72 = v15;
        sub_2171F0738(&v259, &qword_27CB24188, &dword_217758930);
        OUTLINED_FUNCTION_48_7();
      }

      else
      {
        OUTLINED_FUNCTION_211_1();
        v71 = v5;
        if (v66)
        {
          OUTLINED_FUNCTION_229_1();
          *v268 = &v230;
          *&v268[8] = v66;
          OUTLINED_FUNCTION_197();
          v73 = swift_allocObject();
          OUTLINED_FUNCTION_150_2(v73);
          OUTLINED_FUNCTION_88_3();
          sub_2171F0738(v74, v75, v76);
          OUTLINED_FUNCTION_88_3();
          sub_2171F0738(v77, v78, v79);
          v262[0] = &v230;
          v263 = &type metadata for MusicCatalogResourceIncrementalLoader;
          v264 = &off_2829650B8;
        }

        else
        {
          sub_2171F0738(&v259, &qword_27CB24188, &dword_217758930);
        }

        v72 = v15;
        OUTLINED_FUNCTION_182_2();
        if (v92)
        {
          sub_2171F0738(v265, &qword_27CB24188, &dword_217758930);
        }
      }

      *&v268[7] = v252;
      OUTLINED_FUNCTION_181_3();
      *&v268[23] = v93;
      *&v268[39] = v255;
      sub_2171FB568(v94, v95);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(v273, &qword_27CB25930, &unk_217797B70);
      *(&v270[1] + 1) = *v268;
      OUTLINED_FUNCTION_180_3();
      LOBYTE(v270[1]) = v265[0];
      *(&v270[3] + 1) = v96;
      *&v270[5] = *&v268[31];
      OUTLINED_FUNCTION_16_17();
      v15 = v72;
      v5 = v71;
    }

    else
    {

      sub_2171F0738(v273, &qword_27CB25938, &unk_21775D9B0);
      sub_2174AA410(MEMORY[0x277D84F90]);
    }

    goto LABEL_67;
  }

  if (v35)
  {
    v16 = *(v34 + 48);
    v34 = *(v34 + 56);
    v37 = qword_280BE62F0;
    sub_217751DE8();
    if (v37 == -1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_22:
  v38 = xmmword_280BE6308 == v16 && *(&xmmword_280BE6308 + 1) == v34;
  v39 = v251;
  if (!v38 && (OUTLINED_FUNCTION_194_2(xmmword_280BE6308, *(&xmmword_280BE6308 + 1)) & 1) == 0)
  {
    if (qword_280BE6220 != -1)
    {
      swift_once();
    }

    v57 = xmmword_280BE6238 == v16 && *(&xmmword_280BE6238 + 1) == v34;
    if (v57 || (OUTLINED_FUNCTION_194_2(xmmword_280BE6238, *(&xmmword_280BE6238 + 1)) & 1) != 0)
    {

      OUTLINED_FUNCTION_197_2(v58, v59, &qword_27CB25938, &unk_21775D9B0);
      v60 = *&v268[16];
      if (*&v268[16])
      {
        v61 = OUTLINED_FUNCTION_204();
        sub_2171FB568(v61, v62);
        sub_2176DD918();
        OUTLINED_FUNCTION_36_7(v63);
        sub_21726A630((v15 + 72), v64 + 72, &qword_27CB24188, &dword_217758930);
        OUTLINED_FUNCTION_27_13();
        sub_217751DE8();
        OUTLINED_FUNCTION_236_0();
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(v268, &qword_27CB25930, &unk_217797B70);
      }

      else
      {
        sub_2171F0738(v268, &qword_27CB25938, &unk_21775D9B0);
        OUTLINED_FUNCTION_37_6();
      }

      v15 = v246;
      v98 = v247;
      sub_21726A630(v273, v268, &qword_27CB242C0, &unk_21775D650);
      if (*&v268[16])
      {
        sub_21726A630(v273, &v259, &qword_27CB242C0, &unk_21775D650);
        if (v260)
        {
          OUTLINED_FUNCTION_116_4();
          if (v60)
          {
            OUTLINED_FUNCTION_153_2();
            *&v252 = v39;
            *(&v252 + 1) = v60;
            v253 = v98;
            OUTLINED_FUNCTION_161_0();
            v99 = swift_allocObject();
            OUTLINED_FUNCTION_90_4(v99);
            sub_2171F0738(v265, &qword_27CB24188, &dword_217758930);
            v265[0] = v98;
            v266 = &type metadata for MusicPersonalRecommendationIncrementalLoader;
            v267 = &off_282969FA0;
          }

          else
          {
          }

          OUTLINED_FUNCTION_48_7();
          sub_2171F0738(&v259, &qword_27CB242C8, &unk_217758970);
        }

        else
        {

          sub_2171F0738(&v259, &qword_27CB242C0, &unk_21775D650);
          OUTLINED_FUNCTION_156_2();
          v255 = 0;
        }

        OUTLINED_FUNCTION_133_4();
        MEMORY[0x28223BE20](v166);
        OUTLINED_FUNCTION_11_4();
        OUTLINED_FUNCTION_178_2(v167);
        v170 = sub_2172E4A28(sub_21733CEE8, v168, v169, sub_217276258, &qword_27CB24790, &unk_21775A220);
        OUTLINED_FUNCTION_183_2(v170);
        sub_21726A630(&v252, v262, &qword_27CB24188, &dword_217758930);
        if (v263)
        {
          sub_2171F0738(&v252, &qword_27CB24188, &dword_217758930);
          sub_2171F0738(v273, &qword_27CB242C0, &unk_21775D650);
          OUTLINED_FUNCTION_126_3();
        }

        else
        {
          OUTLINED_FUNCTION_125_2();
          if (v39)
          {
            OUTLINED_FUNCTION_152_3();
            *&v259 = v98;
            *(&v259 + 1) = v39;
            OUTLINED_FUNCTION_197();
            v171 = swift_allocObject();
            OUTLINED_FUNCTION_59_3(v171);
            OUTLINED_FUNCTION_88_3();
            sub_2171F0738(v172, v173, v174);
            OUTLINED_FUNCTION_88_3();
            sub_2171F0738(v175, v176, v177);
            sub_2171F0738(v273, &qword_27CB242C0, &unk_21775D650);
            v256 = v98;
            v257 = &type metadata for MusicCatalogResourceIncrementalLoader;
            v258 = &off_2829650B8;
          }

          else
          {
            sub_2171F0738(&v252, &qword_27CB24188, &dword_217758930);
            sub_2171F0738(v273, &qword_27CB242C0, &unk_21775D650);
          }

          OUTLINED_FUNCTION_81_4();
          if (v186)
          {
            sub_2171F0738(v262, &qword_27CB24188, &dword_217758930);
          }
        }

        v187 = OUTLINED_FUNCTION_61_2();
        OUTLINED_FUNCTION_60_6(v187, v188, v189, v190);
        sub_217751DE8();
        sub_217751DE8();
        sub_2171F0738(v268, &qword_27CB242C8, &unk_217758970);
        *(&v270[1] + 1) = v259;
        OUTLINED_FUNCTION_180_3();
        LOBYTE(v270[1]) = v262[0];
        *(v191 + 153) = v192;
        *(v191 + 168) = *(v60 + 31);
        OUTLINED_FUNCTION_16_17();
      }

      else
      {

        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v100, v101, v102);
        sub_2174AA0FC(MEMORY[0x277D84F90]);
        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v103, v104, v105);
      }

      v97 = 1;
      goto LABEL_68;
    }

    if (qword_280BE6248 != -1)
    {
      swift_once();
    }

    if (xmmword_280BE6260 == v16 && *(&xmmword_280BE6260 + 1) == v34)
    {
    }

    else
    {
      v155 = OUTLINED_FUNCTION_194_2(xmmword_280BE6260, *(&xmmword_280BE6260 + 1));

      if ((v155 & 1) == 0)
      {
        sub_21726A630(v275, v273, &qword_27CB25938, &unk_21775D9B0);
        if (v274)
        {
          sub_21726A630(v275, v268, &qword_27CB25938, &unk_21775D9B0);
          v15 = v246;
          v158 = v247;
          if (*&v268[16])
          {
            v255 = 0;
            OUTLINED_FUNCTION_156_2();
            v159 = v269;
            if (v269)
            {
              OUTLINED_FUNCTION_230_1();
              *&v259 = v39;
              *(&v259 + 1) = v159;
              v39 = v251;
              *&v260 = v158;
              OUTLINED_FUNCTION_161_0();
              v160 = swift_allocObject();
              OUTLINED_FUNCTION_170_1(v160);
              sub_2171F0738(&v252, &qword_27CB24188, &dword_217758930);
              *&v252 = v158;
              v254 = &type metadata for MusicPersonalRecommendationIncrementalLoader;
              v255 = &off_282969FA0;
            }

            else
            {
            }

            OUTLINED_FUNCTION_213_3();
            v212 = sub_2171F0738(v268, &qword_27CB25930, &unk_217797B70);
          }

          else
          {

            v212 = sub_2171F0738(v268, &qword_27CB25938, &unk_21775D9B0);
            v259 = 0u;
            v260 = 0u;
            v261 = 0;
          }

          MEMORY[0x28223BE20](v212);
          OUTLINED_FUNCTION_11_4();
          OUTLINED_FUNCTION_178_2(v213);
          v216 = sub_2172E4ECC(sub_21733CF48, v214, v215, sub_217276318, &qword_27CB24948, &unk_21775A210);
          OUTLINED_FUNCTION_183_2(v216);
          sub_21726A630(&v259, v265, &qword_27CB24188, &dword_217758930);
          if (v266)
          {
            sub_2171F0738(&v259, &qword_27CB24188, &dword_217758930);
            OUTLINED_FUNCTION_48_7();
          }

          else
          {
            OUTLINED_FUNCTION_211_1();
            if (v39)
            {
              OUTLINED_FUNCTION_229_1();
              *v268 = &v230;
              *&v268[8] = v39;
              OUTLINED_FUNCTION_197();
              v217 = swift_allocObject();
              OUTLINED_FUNCTION_150_2(v217);
              OUTLINED_FUNCTION_88_3();
              sub_2171F0738(v218, v219, v220);
              OUTLINED_FUNCTION_88_3();
              sub_2171F0738(v221, v222, v223);
              v262[0] = &v230;
              v263 = &type metadata for MusicCatalogResourceIncrementalLoader;
              v264 = &off_2829650B8;
            }

            else
            {
              sub_2171F0738(&v259, &qword_27CB24188, &dword_217758930);
            }

            OUTLINED_FUNCTION_182_2();
            if (v224)
            {
              sub_2171F0738(v265, &qword_27CB24188, &dword_217758930);
            }
          }

          *&v268[7] = v252;
          OUTLINED_FUNCTION_181_3();
          *(v225 + 247) = v226;
          *&v268[39] = v255;
          sub_2171FB568(v227, v228);
          sub_217751DE8();
          sub_217751DE8();
          sub_217751DE8();
          sub_2171F0738(v273, &qword_27CB25930, &unk_217797B70);
          *(&v270[1] + 1) = *v268;
          OUTLINED_FUNCTION_180_3();
          LOBYTE(v270[1]) = v265[0];
          *(&v270[3] + 1) = v229;
          *&v270[5] = *&v268[31];
          OUTLINED_FUNCTION_16_17();
        }

        else
        {

          sub_2171F0738(v273, &qword_27CB25938, &unk_21775D9B0);
          sub_2174AA410(MEMORY[0x277D84F90]);
          v15 = v246;
        }

LABEL_67:
        v97 = 3;
LABEL_68:
        LODWORD(v247) = v97;
        goto LABEL_80;
      }
    }

    OUTLINED_FUNCTION_197_2(v156, v157, &qword_27CB25938, &unk_21775D9B0);
    v161 = *&v268[16];
    if (*&v268[16])
    {
      v162 = OUTLINED_FUNCTION_204();
      sub_2171FB568(v162, v163);
      sub_2176DD598();
      OUTLINED_FUNCTION_36_7(v164);
      sub_21726A630((v15 + 72), v165 + 72, &qword_27CB24188, &dword_217758930);
      OUTLINED_FUNCTION_27_13();
      sub_217751DE8();
      OUTLINED_FUNCTION_236_0();
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(v268, &qword_27CB25930, &unk_217797B70);
    }

    else
    {
      sub_2171F0738(v268, &qword_27CB25938, &unk_21775D9B0);
      OUTLINED_FUNCTION_37_6();
    }

    v15 = v246;
    v178 = v247;
    sub_21726A630(v273, v268, &qword_27CB242F0, &unk_217797B80);
    if (*&v268[16])
    {
      sub_21726A630(v273, &v259, &qword_27CB242F0, &unk_217797B80);
      if (v260)
      {
        OUTLINED_FUNCTION_116_4();
        if (v161)
        {
          OUTLINED_FUNCTION_153_2();
          *&v252 = v39;
          *(&v252 + 1) = v161;
          v253 = v178;
          OUTLINED_FUNCTION_161_0();
          v179 = swift_allocObject();
          OUTLINED_FUNCTION_90_4(v179);
          sub_2171F0738(v265, &qword_27CB24188, &dword_217758930);
          v265[0] = v178;
          v266 = &type metadata for MusicPersonalRecommendationIncrementalLoader;
          v267 = &off_282969FA0;
        }

        else
        {
        }

        OUTLINED_FUNCTION_48_7();
        sub_2171F0738(&v259, &qword_27CB242F8, &qword_21775D6C0);
      }

      else
      {

        sub_2171F0738(&v259, &qword_27CB242F0, &unk_217797B80);
        OUTLINED_FUNCTION_156_2();
        v255 = 0;
      }

      OUTLINED_FUNCTION_133_4();
      MEMORY[0x28223BE20](v193);
      OUTLINED_FUNCTION_11_4();
      OUTLINED_FUNCTION_178_2(v194);
      v197 = sub_2172E4A28(sub_21733CF00, v195, v196, sub_2172761D8, &qword_27CB24738, &qword_217758CC0);
      OUTLINED_FUNCTION_183_2(v197);
      sub_21726A630(&v252, v262, &qword_27CB24188, &dword_217758930);
      if (v263)
      {
        sub_2171F0738(&v252, &qword_27CB24188, &dword_217758930);
        sub_2171F0738(v273, &qword_27CB242F0, &unk_217797B80);
        OUTLINED_FUNCTION_126_3();
      }

      else
      {
        OUTLINED_FUNCTION_125_2();
        if (v39)
        {
          OUTLINED_FUNCTION_152_3();
          *&v259 = v178;
          *(&v259 + 1) = v39;
          OUTLINED_FUNCTION_197();
          v198 = swift_allocObject();
          OUTLINED_FUNCTION_59_3(v198);
          OUTLINED_FUNCTION_88_3();
          sub_2171F0738(v199, v200, v201);
          OUTLINED_FUNCTION_88_3();
          sub_2171F0738(v202, v203, v204);
          sub_2171F0738(v273, &qword_27CB242F0, &unk_217797B80);
          v256 = v178;
          v257 = &type metadata for MusicCatalogResourceIncrementalLoader;
          v258 = &off_2829650B8;
        }

        else
        {
          sub_2171F0738(&v252, &qword_27CB24188, &dword_217758930);
          sub_2171F0738(v273, &qword_27CB242F0, &unk_217797B80);
        }

        OUTLINED_FUNCTION_81_4();
        if (v205)
        {
          sub_2171F0738(v262, &qword_27CB24188, &dword_217758930);
        }
      }

      v206 = OUTLINED_FUNCTION_61_2();
      OUTLINED_FUNCTION_60_6(v206, v207, v208, v209);
      sub_217751DE8();
      sub_217751DE8();
      sub_2171F0738(v268, &qword_27CB242F8, &qword_21775D6C0);
      *(&v270[1] + 1) = v259;
      OUTLINED_FUNCTION_180_3();
      LOBYTE(v270[1]) = v262[0];
      *(v210 + 153) = v211;
      *(v210 + 168) = *(v161 + 31);
      OUTLINED_FUNCTION_16_17();
    }

    else
    {

      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v180, v181, v182);
      sub_2174AA04C(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v183, v184, v185);
    }

    v97 = 2;
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_197_2(v40, v41, &qword_27CB25938, &unk_21775D9B0);
  v42 = *&v268[16];
  if (*&v268[16])
  {
    v43 = OUTLINED_FUNCTION_204();
    sub_2171FB568(v43, v44);
    sub_2176DDC98();
    OUTLINED_FUNCTION_36_7(v45);
    sub_21726A630((v15 + 72), v46 + 72, &qword_27CB24188, &dword_217758930);
    OUTLINED_FUNCTION_27_13();
    sub_217751DE8();
    OUTLINED_FUNCTION_236_0();
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v268, &qword_27CB25930, &unk_217797B70);
  }

  else
  {
    sub_2171F0738(v268, &qword_27CB25938, &unk_21775D9B0);
    OUTLINED_FUNCTION_37_6();
  }

  v15 = v246;
  v49 = v247;
  sub_21726A630(v273, v268, &qword_27CB24270, &unk_21775D640);
  if (*&v268[16])
  {
    sub_21726A630(v273, &v259, &qword_27CB24270, &unk_21775D640);
    if (v260)
    {
      OUTLINED_FUNCTION_116_4();
      if (v42)
      {
        OUTLINED_FUNCTION_153_2();
        *&v252 = v39;
        *(&v252 + 1) = v42;
        v253 = v49;
        OUTLINED_FUNCTION_161_0();
        v50 = swift_allocObject();
        OUTLINED_FUNCTION_90_4(v50);
        sub_2171F0738(v265, &qword_27CB24188, &dword_217758930);
        v265[0] = v49;
        v266 = &type metadata for MusicPersonalRecommendationIncrementalLoader;
        v267 = &off_282969FA0;
      }

      else
      {
      }

      OUTLINED_FUNCTION_48_7();
      sub_2171F0738(&v259, &qword_27CB24278, &unk_217759070);
    }

    else
    {

      sub_2171F0738(&v259, &qword_27CB24270, &unk_21775D640);
      OUTLINED_FUNCTION_156_2();
      v255 = 0;
    }

    OUTLINED_FUNCTION_133_4();
    MEMORY[0x28223BE20](v80);
    OUTLINED_FUNCTION_11_4();
    OUTLINED_FUNCTION_178_2(v81);
    v84 = sub_2172E4A28(sub_21733CE88, v82, v83, sub_2172762D8, &qword_27CB247F0, &qword_21775D360);
    OUTLINED_FUNCTION_183_2(v84);
    sub_21726A630(&v252, v262, &qword_27CB24188, &dword_217758930);
    if (v263)
    {
      sub_2171F0738(&v252, &qword_27CB24188, &dword_217758930);
      sub_2171F0738(v273, &qword_27CB24270, &unk_21775D640);
      OUTLINED_FUNCTION_126_3();
    }

    else
    {
      OUTLINED_FUNCTION_125_2();
      if (v39)
      {
        OUTLINED_FUNCTION_152_3();
        *&v259 = v49;
        *(&v259 + 1) = v39;
        OUTLINED_FUNCTION_197();
        v85 = swift_allocObject();
        OUTLINED_FUNCTION_59_3(v85);
        OUTLINED_FUNCTION_88_3();
        sub_2171F0738(v86, v87, v88);
        OUTLINED_FUNCTION_88_3();
        sub_2171F0738(v89, v90, v91);
        sub_2171F0738(v273, &qword_27CB24270, &unk_21775D640);
        v256 = v49;
        v257 = &type metadata for MusicCatalogResourceIncrementalLoader;
        v258 = &off_2829650B8;
      }

      else
      {
        sub_2171F0738(&v252, &qword_27CB24188, &dword_217758930);
        sub_2171F0738(v273, &qword_27CB24270, &unk_21775D640);
      }

      OUTLINED_FUNCTION_81_4();
      if (v106)
      {
        sub_2171F0738(v262, &qword_27CB24188, &dword_217758930);
      }
    }

    v107 = OUTLINED_FUNCTION_61_2();
    OUTLINED_FUNCTION_60_6(v107, v108, v109, v110);
    sub_217751DE8();
    sub_217751DE8();
    sub_2171F0738(v268, &qword_27CB24278, &unk_217759070);
    *(&v270[1] + 1) = v259;
    OUTLINED_FUNCTION_180_3();
    LOBYTE(v270[1]) = v262[0];
    *(v111 + 153) = v112;
    *(v111 + 168) = *(v42 + 31);
    OUTLINED_FUNCTION_16_17();
  }

  else
  {

    OUTLINED_FUNCTION_80_3();
    sub_2171F0738(v51, v52, v53);
    sub_2174AA1AC(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_80_3();
    sub_2171F0738(v54, v55, v56);
  }

  LODWORD(v247) = 0;
LABEL_80:
  v245 = v278[0];
  v251 = v278[1];
  v113 = v5[43];
  v240 = v5[42];
  if (v289)
  {
    v238 = v287;
    v239 = v288;
    sub_217751DE8();
  }

  else
  {
    v238 = 0;
    v239 = 0;
  }

  if (v286)
  {
    v236 = v284;
    v237 = v285;
    sub_217751DE8();
  }

  else
  {
    v236 = 0;
    v237 = 0;
  }

  v114 = qword_280BE8910;
  sub_217751DE8();
  sub_217751DE8();
  if (v114 != -1)
  {
    OUTLINED_FUNCTION_2_24(&qword_280BE8910);
  }

  v115 = type metadata accessor for CloudFormatter(0);
  v116 = __swift_project_value_buffer(v115, qword_280BE8918);
  v117 = v280;
  v118 = sub_2177517D8();
  v119 = v249;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v118);
  if (v117)
  {
    v123 = *(v116 + *(v115 + 24));
    OUTLINED_FUNCTION_204();
    v124 = sub_217751F18();
    v125 = [v123 dateFromString_];

    if (v125)
    {
      v126 = v235;
      sub_2177517C8();

      v127 = 0;
      v128 = v249;
    }

    else
    {
      v127 = 1;
      v128 = v249;
      v126 = v235;
    }

    OUTLINED_FUNCTION_171_1();
    sub_2171F0738(v132, v133, v134);
    __swift_storeEnumTagSinglePayload(v126, v127, 1, v118);
    sub_21726A594(v126, v128, &qword_27CB241C0, &qword_217759480);
    sub_21726A594(v128, v15, &qword_27CB241C0, &qword_217759480);
  }

  else
  {
    sub_2171F0738(v119, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v129, v130, v131, v118);
  }

  sub_2171F0738(v275, &qword_27CB25938, &unk_21775D9B0);
  sub_21733AB9C(v3);
  v250 = v292;
  v135 = v293;
  v136 = v294;
  if (v294 == 1)
  {
    v137 = 0;
  }

  else
  {
    v137 = v292;
  }

  if (v294 == 1)
  {
    v138 = 0;
  }

  else
  {
    v138 = v293;
  }

  if (v294 == 1)
  {
    v139 = 0;
  }

  else
  {
    v139 = v294;
  }

  v231 = v279;
  v232 = v281;
  v140 = v277;
  v141 = v248;
  v142 = v248[93];
  v233 = v248[92];
  v234 = v142;
  v235 = v248[94];
  v249 = v248[95];
  v143 = v244;
  v144 = v251;
  *v244 = v245;
  v143[1] = v144;
  v145 = v241;
  v143[2] = v240;
  v143[3] = v113;
  v143[4] = v145;
  *(v143 + 40) = v242;
  v146 = v239;
  v143[6] = v238;
  v143[7] = v146;
  v147 = v237;
  v143[8] = v236;
  v143[9] = v147;
  v148 = type metadata accessor for MusicPersonalRecommendation(0);
  sub_21726A594(v246, v143 + v148[10], &qword_27CB241C0, &qword_217759480);
  *(v143 + v148[11]) = v243;
  v149 = v231;
  *(v143 + v148[12]) = v232;
  v150 = (v143 + v148[13]);
  *v150 = v137;
  v150[1] = v138;
  v150[2] = v139;
  *(v143 + v148[14]) = v149;
  *(v143 + v148[15]) = v140;
  v151 = v143 + v148[16];
  memcpy(v151, v270, 0x68uLL);
  v151[104] = v247;
  v152 = v234;
  *(v143 + v148[17]) = v233;
  *(v143 + v148[18]) = v152;
  *(v143 + v148[19]) = v235;
  v153 = v250;
  *(v143 + v148[20]) = v249;
  sub_21733C6A8(v153, v135, v136);
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_2171F0738(v141, &qword_27CB244A8, &unk_217758980);
  sub_217269D5C(v278);

  OUTLINED_FUNCTION_13();
}

unint64_t sub_2173363C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB254B8;
  if (!qword_27CB254B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB254B8);
  }

  return result;
}

void sub_217336414()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v0);
  v196 = v2;
  v197 = v1;
  v4 = v3;
  v194 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v191 = v172 - v8;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_31();
  v174 = v10;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v11);
  v173 = v172 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v14 = OUTLINED_FUNCTION_45_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_31();
  v177 = v15;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_99();
  v192 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_99();
  v193 = v19;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_63_5();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_99();
  v202 = v22;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_99();
  v188 = v24;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_99();
  v175 = v26;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_99();
  v201 = v28;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v29);
  v186 = v172 - v30;
  v31 = OUTLINED_FUNCTION_206();
  v200 = type metadata accessor for LegacyModelCodablePlaylistEntry(v31);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_81();
  v203 = v33;
  v34 = OUTLINED_FUNCTION_206();
  v35 = type metadata accessor for PlaylistEntryPropertyProvider(v34);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1();
  v39 = v38 - v37;
  v216 = 0;
  v40 = 0uLL;
  memset(v215, 0, sizeof(v215));
  v217 = -1;
  if (qword_280BE90D0 != -1)
  {
    swift_once();
    v40 = 0uLL;
  }

  v218[0] = v40;
  v218[1] = v40;
  v218[2] = v40;
  v218[3] = v40;
  v218[4] = v40;
  v218[5] = v40;
  v218[6] = v40;
  *&v218[7] = 0;
  sub_2172DABC4();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  v42 = v41[10];
  v43 = v4 + v41[9];
  v44 = *(v43 + 8);
  v199 = *v43;
  v183 = *(v43 + 16);
  v45 = *(v4 + v41[12]);
  v46 = *(v4 + v41[13]);
  v47 = v41[15];
  v178 = *(v4 + v41[14]);
  v179 = v45;
  v48 = *(v4 + v42 + 8);
  v181 = *(v4 + v42);
  v204 = v4;
  v49 = *(v4 + v47);
  v214 = 0;
  memset(v213, 0, sizeof(v213));
  sub_2172A497C(v220);
  memcpy(v39, v220, 0x221uLL);
  *(v39 + 552) = 0;
  *(v39 + 560) = 1;
  v50 = v35[8];
  v51 = sub_2177517D8();
  v184 = v50;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v51);
  v185 = v35[9];
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v51);
  v58 = v39 + v35[10];
  *(v58 + 48) = 0;
  *(v58 + 16) = 0u;
  *(v58 + 32) = 0u;
  *v58 = 0u;
  v195 = v58;
  *(v58 + 56) = -1;
  v59 = v39 + v35[11];
  *v59 = 0;
  *(v59 + 8) = 0;
  v187 = v59;
  *(v59 + 16) = 0;
  memcpy((v39 + v35[12]), v218, 0x78uLL);
  v60 = (v39 + v35[14]);
  *v60 = 0;
  v60[1] = 0;
  v189 = v35[15];
  OUTLINED_FUNCTION_5_5();
  v205 = v51;
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v51);
  v64 = v39 + v35[17];
  *(v64 + 32) = 0;
  *v64 = 0u;
  *(v64 + 16) = 0u;
  v65 = qword_280BE3168;
  v182 = v44;
  v66 = v49;
  v67 = v178;
  v68 = v179;
  sub_217751DE8();
  v180 = v48;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v69 = v66;
  sub_217751DE8();
  if (v65 != -1)
  {
    swift_once();
  }

  v70 = qword_280C01FB0;
  if (qword_280C01FB0 >> 62)
  {
    v170 = qword_280C01FB0 & 0xFFFFFFFFFFFFFF8;
    if (qword_280C01FB0 < 0)
    {
      v170 = qword_280C01FB0;
    }

    v172[1] = v170;
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    v171 = sub_217752D28();

    v70 = v171;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v39 + v35[18]) = v70;
  v71 = (v39 + v35[21]);
  memcpy((v39 + v35[19]), v219, 0x161uLL);
  v72 = v39 + v35[20];
  v73 = v182;
  *v72 = v199;
  *(v72 + 8) = v73;
  *(v72 + 16) = v183;
  v74 = v180;
  *v71 = v181;
  v71[1] = v74;
  *(v39 + v35[22]) = v68;
  *(v39 + v35[23]) = v46;
  *(v39 + v35[24]) = v67;
  *(v39 + v35[25]) = v69;
  sub_21733BBDC(v215, v195, &qword_27CB27D20, &qword_217758B80);
  sub_21733BBDC(v213, v64, &qword_27CB24BA8, &unk_217772FF0);
  OUTLINED_FUNCTION_7_14();
  v75 = v203;
  sub_21733CAD0();
  v76 = v75 + *(v200 + 20);
  memcpy(v211, v76, sizeof(v211));
  memcpy(v212, v76, sizeof(v212));
  if (get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v212) == 1)
  {
    v77 = v220;
  }

  else
  {
    memcpy(v210, v212, 0x1B8uLL);
    memcpy(v206, v211, sizeof(v206));
    sub_21726A630(v206, v209, &qword_27CB243F0, &qword_21775D690);
    CloudAttribute<A>.convertToArtwork()(v208);
    memcpy(v207, v210, sizeof(v207));
    OUTLINED_FUNCTION_88_3();
    sub_2171F0738(v78, v79, v80);
    memcpy(v209, v208, 0x221uLL);
    nullsub_1();
    v77 = v209;
  }

  memcpy(v210, v77, sizeof(v210));
  v81 = v205;
  v82 = v201;
  memcpy(v209, v39, 0x221uLL);
  sub_2171F0738(v209, &qword_27CB24400, &unk_21775E9A0);
  memcpy(v39, v210, 0x221uLL);
  if ((*(v76 + 448) & 1) == 0)
  {
    *(v39 + 552) = *(v76 + 440) / 1000.0;
    *(v39 + 560) = 0;
  }

  v198 = v35;
  if (qword_280BE8910 != -1)
  {
    OUTLINED_FUNCTION_2_24(&qword_280BE8910);
  }

  v83 = type metadata accessor for CloudFormatter(0);
  v84 = __swift_project_value_buffer(v83, qword_280BE8918);
  v85 = *(v76 + 464);
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v81);
  v199 = v84;
  v200 = v83;
  if (v85)
  {
    v89 = *(v84 + *(v83 + 20));
    v90 = sub_217751F18();
    v91 = [v89 dateFromString_];

    if (v91)
    {
      v92 = v175;
      sub_2177517C8();

      v93 = 0;
    }

    else
    {
      v93 = 1;
      v92 = v175;
    }

    v98 = v198;
    sub_2171F0738(v201, &qword_27CB241C0, &qword_217759480);
    __swift_storeEnumTagSinglePayload(v92, v93, 1, v81);
    v99 = OUTLINED_FUNCTION_150_0();
    sub_21726A594(v99, v100, &qword_27CB241C0, &qword_217759480);
    v94 = v186;
    OUTLINED_FUNCTION_88_3();
    sub_21726A594(v101, v102, v103, &qword_217759480);
    v83 = v200;
  }

  else
  {
    sub_2171F0738(v82, &qword_27CB241C0, &qword_217759480);
    v94 = v186;
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v95, v96, v97, v81);
    v98 = v198;
  }

  sub_21733BBDC(v94, v39 + v184, &qword_27CB241C0, &qword_217759480);
  v104 = *(v76 + 480);
  v105 = v202;
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v81);
  if (v104)
  {
    v109 = *(v199 + *(v83 + 20));
    v110 = sub_217751F18();
    v111 = [v109 dateFromString_];

    if (v111)
    {
      v112 = v176;
      sub_2177517C8();

      v113 = 0;
    }

    else
    {
      v113 = 1;
      v112 = v176;
    }

    sub_2171F0738(v202, &qword_27CB241C0, &qword_217759480);
    __swift_storeEnumTagSinglePayload(v112, v113, 1, v81);
    v118 = OUTLINED_FUNCTION_150_0();
    sub_21726A594(v118, v119, &qword_27CB241C0, &qword_217759480);
    v114 = v188;
    OUTLINED_FUNCTION_88_3();
    sub_21726A594(v120, v121, v122, &qword_217759480);
  }

  else
  {
    sub_2171F0738(v105, &qword_27CB241C0, &qword_217759480);
    v114 = v188;
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v81);
  }

  sub_21733BBDC(v114, v39 + v185, &qword_27CB241C0, &qword_217759480);
  v123 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(0);
  v124 = v191;
  sub_21726A630(v76 + v123[8], v191, &qword_27CB25648, &qword_21775D598);
  if (__swift_getEnumTagSinglePayload(v124, 1, v190) == 1)
  {
    sub_2171F0738(v124, &qword_27CB25648, &qword_21775D598);
  }

  else
  {
    v125 = v173;
    OUTLINED_FUNCTION_80_3();
    sub_21726A594(v126, v127, v128, &unk_21778F830);
    sub_21726A630(v125, v174, &qword_27CB25650, &unk_21778F830);
    sub_2172CA838(v197, v207);

    v81 = v205;
    sub_21733718C();
    OUTLINED_FUNCTION_88_3();
    sub_2171F0738(v129, v130, v131);
    sub_21733BBDC(v208, v195, &qword_27CB27D20, &qword_217758B80);
  }

  v132 = v192;
  v133 = v200;
  v134 = v39 + *(v98 + 52);
  v135 = v76 + v123[9];
  v137 = *v135;
  v136 = *(v135 + 8);
  LOBYTE(v135) = *(v135 + 16);
  v138 = v187;
  *v187 = v137;
  v138[1] = v136;
  *(v138 + 16) = v135;
  sub_217751DE8();

  v139 = v76 + v123[11];
  v140 = *v139;
  LOBYTE(v139) = *(v139 + 8);
  *v134 = v140;
  *(v134 + 8) = v139;
  v141 = *(v76 + v123[12] + 8);
  OUTLINED_FUNCTION_5_5();
  __swift_storeEnumTagSinglePayload(v142, v143, v144, v81);
  if (v141)
  {
    v145 = *(v199 + *(v133 + 20));
    v146 = sub_217751F18();
    v147 = [v145 dateFromString_];

    if (v147)
    {
      v148 = v177;
      sub_2177517C8();

      v149 = 0;
      v150 = v204;
    }

    else
    {
      v149 = 1;
      v150 = v204;
      v148 = v177;
    }

    OUTLINED_FUNCTION_88_3();
    sub_2171F0738(v156, v157, v158);
    __swift_storeEnumTagSinglePayload(v148, v149, 1, v205);
    sub_21726A594(v148, v132, &qword_27CB241C0, &qword_217759480);
    v151 = v193;
    OUTLINED_FUNCTION_80_3();
    sub_21726A594(v159, v160, v161, &qword_217759480);
    v155 = v150;
    v98 = v198;
  }

  else
  {
    sub_2171F0738(v132, &qword_27CB241C0, &qword_217759480);
    v151 = v193;
    OUTLINED_FUNCTION_5_5();
    __swift_storeEnumTagSinglePayload(v152, v153, v154, v81);
    v155 = v204;
  }

  v162 = (v39 + *(v98 + 64));
  sub_21733BBDC(v151, v39 + v189, &qword_27CB241C0, &qword_217759480);
  v163 = (v76 + v123[10]);
  v164 = v163[1];
  *v162 = *v163;
  v162[1] = v164;
  v165 = (v76 + v123[13]);
  v166 = v165[1];
  *(v39 + 568) = *v165;
  *(v39 + 576) = v166;
  v167 = (v76 + v123[14]);
  v168 = v167[1];
  *(v39 + 584) = *v167;
  *(v39 + 592) = v168;
  v208[3] = v98;
  v208[4] = &protocol witness table for PlaylistEntryPropertyProvider;
  __swift_allocate_boxed_opaque_existential_0(v208);
  sub_21733CAD0();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  Playlist.Entry.init(propertyProvider:)(v208, v194);

  sub_21733AB9C(v197);
  sub_2171F0738(v155, &qword_27CB247D8, &qword_217758D60);
  OUTLINED_FUNCTION_1_19();
  sub_21733CA78(v203, v169);
  sub_21733CA78(v39, type metadata accessor for PlaylistEntryPropertyProvider);
  OUTLINED_FUNCTION_13();
}

void sub_21733718C()
{
  OUTLINED_FUNCTION_12();
  v79 = v2;
  v80 = v1;
  v4 = v3;
  v81 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_31();
  v74 = v8;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v67[-v10];
  v12 = type metadata accessor for CloudMusicVideo(0);
  v13 = OUTLINED_FUNCTION_45_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_81();
  v76 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_31();
  v73 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_115_3();
  v19 = type metadata accessor for CloudSong(0);
  v20 = OUTLINED_FUNCTION_45_0(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_81();
  v75 = v21;
  v22 = OUTLINED_FUNCTION_206();
  type metadata accessor for LegacyModelCodablePlaylistEntryItem(v22);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_165_3();
  MEMORY[0x28223BE20](v24);
  v26 = &v67[-v25];
  sub_21733CAD0();
  v77 = v26;
  sub_21733CAD0();
  OUTLINED_FUNCTION_15();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_98_6();
    sub_21733CE30();
    OUTLINED_FUNCTION_153();
    sub_21733CAD0();
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v48 = v47[10];
    v49 = v4 + v47[9];
    v50 = *v49;
    v75 = *(v49 + 8);
    v51 = v75;
    LODWORD(v69) = *(v49 + 16);
    v52 = *(v4 + v48 + 8);
    v73 = *(v4 + v48);
    v70 = v50;
    v71 = v52;
    v53 = v47[11];
    memcpy(v85, (v4 + v53), 0x180uLL);
    v54 = *(v4 + v47[12]);
    v55 = *(v4 + v47[13]);
    v56 = v4;
    v57 = *(v4 + v47[14]);
    v58 = *(v56 + v47[15]);
    v72 = v56;
    v59 = &v11[v6[9]];
    v60 = v71;
    *v59 = v70;
    *(v59 + 1) = v51;
    v59[16] = v69;
    v61 = &v11[v6[10]];
    *v61 = v73;
    v61[1] = v60;
    memcpy(&v11[v6[11]], (v56 + v53), 0x180uLL);
    *&v11[v6[12]] = v54;
    *&v11[v6[13]] = v55;
    *&v11[v6[14]] = v57;
    *&v11[v6[15]] = v58;
    v62 = v74;
    sub_21726A630(v11, v74, &qword_27CB24808, &qword_217758D90);
    v63 = v80;
    sub_2172CA838(v80, v84);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v85, v82, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_2172F1160(v62);
    sub_21733AB9C(v63);
    sub_2171F0738(v72, &qword_27CB25650, &unk_21778F830);
    sub_2171F0738(v11, &qword_27CB24808, &qword_217758D90);
    OUTLINED_FUNCTION_97_4();
    v46 = v76;
  }

  else
  {
    OUTLINED_FUNCTION_100_5();
    sub_21733CE30();
    OUTLINED_FUNCTION_204();
    sub_21733CAD0();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    v28 = v27[10];
    v29 = v4 + v27[9];
    v30 = *v29;
    v76 = *(v29 + 8);
    v31 = v76;
    v68 = *(v29 + 16);
    v32 = *(v4 + v28 + 8);
    v71 = *(v4 + v28);
    v69 = v30;
    v70 = v32;
    v33 = v27[11];
    memcpy(v85, (v4 + v33), 0x180uLL);
    v34 = v27[13];
    v74 = *(v4 + v27[12]);
    v35 = v74;
    v36 = *(v4 + v34);
    v37 = v27[15];
    v38 = *(v4 + v27[14]);
    v39 = *(v4 + v37);
    v40 = v0 + v15[9];
    *v40 = v69;
    *(v40 + 8) = v31;
    *(v40 + 16) = v68;
    v41 = (v0 + v15[10]);
    v42 = v70;
    *v41 = v71;
    v41[1] = v42;
    memcpy((v0 + v15[11]), (v4 + v33), 0x180uLL);
    *(v0 + v15[12]) = v35;
    *(v0 + v15[13]) = v36;
    *(v0 + v15[14]) = v38;
    *(v0 + v15[15]) = v39;
    v43 = v73;
    sub_21726A630(v0, v73, &qword_27CB24748, &unk_217758CD0);
    v44 = v80;
    sub_2172CA838(v80, v84);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v85, v82, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217303E60(v43);
    sub_21733AB9C(v44);
    sub_2171F0738(v4, &qword_27CB25650, &unk_21778F830);
    sub_2171F0738(v0, &qword_27CB24748, &unk_217758CD0);
    OUTLINED_FUNCTION_96_3();
    v46 = v75;
  }

  sub_21733CA78(v46, v45);
  OUTLINED_FUNCTION_2_26();
  sub_21733CA78(v77, v64);
  v65 = v82[1];
  v66 = v81;
  *v81 = v82[0];
  v66[1] = v65;
  v66[2] = v82[2];
  *(v66 + 6) = v83;
  *(v66 + 56) = EnumCaseMultiPayload != 1;
  OUTLINED_FUNCTION_13();
}

void sub_217337778()
{
  OUTLINED_FUNCTION_12();
  v3 = v0;
  v219 = v4;
  v230 = v5;
  v229 = type metadata accessor for LegacyModelCodablePlaylistEntry(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_81();
  v231 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25648, &qword_21775D598);
  OUTLINED_FUNCTION_45_0(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_131_0();
  v10 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v213 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_31();
  v212 = v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_63_5();
  MEMORY[0x28223BE20](v15);
  v17 = &v210 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v19 = OUTLINED_FUNCTION_45_0(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_31();
  v216 = v20;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_99();
  v214 = v22;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v23);
  v25 = &v210 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_99();
  v217 = v27;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v28);
  v30 = &v210 - v29;
  MEMORY[0x28223BE20](v31);
  v32 = OUTLINED_FUNCTION_201_3();
  v227 = type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes(v32);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_81();
  v228 = v41;
  if (qword_280BE66D8 != -1)
  {
    swift_once();
  }

  sub_2176CA244(qword_280BE66E0, v34, v35, v36, v37, v38, v39, v40, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, qword_280BE66E0, v226, v227);
  v42 = LOBYTE(v237[7]);
  v43 = sub_2171F0738(v237, &qword_27CB27D20, &qword_217758B80);
  LODWORD(v226) = v42;
  if (v42 == 255)
  {
    v52 = COERCE_DOUBLE(Playlist.Entry.duration.getter(v43));
    HIDWORD(v211) = v53;
    if (v53)
    {
      v224 = 0;
LABEL_11:
      Playlist.Entry.artwork.getter(v53, v54, v55, v56, v57, v58, v59, v236);
      memcpy(v237, v236, 0x221uLL);
      v61 = get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v237) == 1;
      v218 = v10;
      if (v61)
      {
        sub_2172E22C0(v232);
      }

      else
      {
        memcpy(v232, v237, 0x221uLL);
        Artwork.convertToCloudArtworkAttribute()(v234);
        memcpy(v233, v232, 0x221uLL);
        sub_217284084(v233);
        memcpy(v235, v234, sizeof(v235));
        nullsub_1();
        memcpy(v232, v235, 0x1B8uLL);
      }

      if (qword_280BE8910 != -1)
      {
        OUTLINED_FUNCTION_2_24(&qword_280BE8910);
      }

      v210 = v2;
      v221 = type metadata accessor for CloudFormatter(0);
      v220 = __swift_project_value_buffer(v221, qword_280BE8918);
      if (qword_280BE6738 != -1)
      {
        swift_once();
      }

      v69 = v3;
      sub_2176CA2EC(qword_280C02080, v62, v63, v64, v65, v66, v67, v68, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);
      sub_21726A630(v1, v30, &qword_27CB241C0, &qword_217759480);
      v70 = v218;
      OUTLINED_FUNCTION_237_0(v30, 1);
      if (v61)
      {
        OUTLINED_FUNCTION_158();
        sub_2171F0738(v71, v72, v73);
        OUTLINED_FUNCTION_158();
        sub_2171F0738(v74, v75, v76);
        v222 = 0;
        v223 = 0;
      }

      else
      {
        v77 = v213;
        (*(v213 + 32))(v17, v30, v70);
        v78 = *(v220 + *(v221 + 20));
        v79 = sub_2177517A8();
        v80 = [v78 stringFromDate_];

        v81 = sub_217751F48();
        v222 = v82;
        v223 = v81;

        (*(v77 + 8))(v17, v70);
        sub_2171F0738(v1, &qword_27CB241C0, &qword_217759480);
      }

      v3 = v69;
      v90 = v217;
      if (qword_280BE6700 != -1)
      {
        swift_once();
      }

      sub_2176CA2EC(qword_280C02068, v83, v84, v85, v86, v87, v88, v89, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231);
      sub_21726A630(v90, v25, &qword_27CB241C0, &qword_217759480);
      v91 = v218;
      OUTLINED_FUNCTION_237_0(v25, 1);
      v2 = v210;
      if (v61)
      {
        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v92, v93, v94);
        OUTLINED_FUNCTION_80_3();
        sub_2171F0738(v95, v96, v97);
        v220 = 0;
        v221 = 0;
      }

      else
      {
        v98 = v213;
        v99 = v215;
        (*(v213 + 32))(v215, v25, v91);
        v100 = *(v220 + *(v221 + 20));
        v101 = sub_2177517A8();
        v102 = [v100 stringFromDate_];

        v103 = sub_217751F48();
        v220 = v104;
        v221 = v103;

        (*(v98 + 8))(v99, v91);
        sub_2171F0738(v90, &qword_27CB241C0, &qword_217759480);
      }

      memcpy(v238, v232, 0x1B8uLL);
      v10 = v218;
      LODWORD(v51) = HIDWORD(v211);
      goto LABEL_27;
    }

    v60 = v52 * 1000.0;
    if (COERCE__INT64(fabs(v52 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v60 > -9.22337204e18)
    {
      if (v60 < 9.22337204e18)
      {
        v224 = v60;
        goto LABEL_11;
      }

LABEL_54:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_54;
  }

  sub_2172E22C0(v238);
  v220 = 0;
  v221 = 0;
  v222 = 0;
  v223 = 0;
  v224 = 0;
  LODWORD(v51) = 1;
LABEL_27:
  v105 = v226;
  sub_2176CA244(v225, v44, v45, v46, v47, v48, v49, v50, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227);
  if (LOBYTE(v237[7]) == 255)
  {
    sub_2171F0738(v237, &qword_27CB27D20, &qword_217758B80);
    v106 = 1;
  }

  else
  {
    sub_2173385F0();
    sub_21729C7F8(v237);
    v106 = 0;
  }

  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  __swift_storeEnumTagSinglePayload(v2, v106, 1, v107);
  if (qword_280BE66B8 != -1)
  {
    swift_once();
  }

  v115 = sub_2176CAC5C(qword_280C02038, v108, v109, v110, v111, v112, v113, v114, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229);
  v225 = v235[1];
  v226 = v235[0];
  LODWORD(v219) = LOBYTE(v235[2]);
  if (v105 == 255)
  {
    v116 = Playlist.Entry.title.getter(v115);
    v217 = v117;
    v218 = v116;
  }

  else
  {
    v217 = 0;
    v218 = 0;
  }

  if (qword_280BE66A8 != -1)
  {
    swift_once();
  }

  v118 = sub_2172A3FC8(qword_280C02030);
  v119 = v118;
  v121 = v120;
  if (v105 == 255)
  {
    v210 = v118;
    v122 = v3;
    if (qword_280BE8910 != -1)
    {
      OUTLINED_FUNCTION_2_24(&qword_280BE8910);
    }

    v123 = type metadata accessor for CloudFormatter(0);
    v124 = __swift_project_value_buffer(v123, qword_280BE8918);
    v125 = v214;
    Playlist.Entry.releaseDate.getter(v214);
    v126 = v216;
    sub_21726A630(v125, v216, &qword_27CB241C0, &qword_217759480);
    OUTLINED_FUNCTION_237_0(v126, 1);
    if (v61)
    {
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v127, v128, v129);
      OUTLINED_FUNCTION_80_3();
      sub_2171F0738(v130, v131, v132);
      v215 = 0;
      v216 = 0;
    }

    else
    {
      HIDWORD(v211) = v51;
      v133 = v212;
      v51 = v213;
      (*(v213 + 32))(v212, v126, v10);
      v134 = *(v124 + *(v123 + 20));
      v135 = sub_2177517A8();
      v136 = [v134 stringFromDate_];

      v137 = sub_217751F48();
      v215 = v138;
      v216 = v137;

      (*(v51 + 8))(v133, v10);
      LOBYTE(v51) = BYTE4(v211);
      sub_2171F0738(v214, &qword_27CB241C0, &qword_217759480);
    }

    v3 = v122;
    v119 = v210;
  }

  else
  {
    v215 = 0;
    v216 = 0;
  }

  v139 = v2;
  if (qword_280BE66F8 != -1)
  {
    swift_once();
  }

  v140 = v3;
  v141 = sub_2172A46D8();
  v143 = v142;
  if (qword_280BE6720 != -1)
  {
    swift_once();
  }

  if (v121)
  {
    v119 = 0;
  }

  v144 = sub_2172A46D8();
  v146 = v145;
  v147 = v228;
  memcpy(v228, v238, 0x1B8uLL);
  v147[55] = v224;
  *(v147 + 448) = v51 & 1;
  v148 = v222;
  v147[57] = v223;
  v147[58] = v148;
  v149 = v220;
  v147[59] = v221;
  v147[60] = v149;
  v150 = v227;
  sub_21726A594(v139, v147 + v227[8], &qword_27CB25648, &qword_21775D598);
  v151 = v147 + v150[9];
  v152 = v225;
  *v151 = v226;
  *(v151 + 1) = v152;
  v151[16] = v219;
  v153 = (v147 + v150[10]);
  v154 = v217;
  *v153 = v218;
  v153[1] = v154;
  v155 = v147 + v150[11];
  *v155 = v119;
  v155[8] = 0;
  v156 = (v147 + v150[12]);
  v157 = v215;
  *v156 = v216;
  v156[1] = v157;
  v158 = (v147 + v150[13]);
  *v158 = v141;
  v158[1] = v143;
  v159 = (v147 + v150[14]);
  *v159 = v144;
  v159[1] = v146;
  v161 = *v140;
  v160 = v140[1];
  v162 = v229;
  OUTLINED_FUNCTION_92_3();
  v163 = v231;
  sub_21733CAD0();
  *v163 = v161;
  v163[1] = v160;
  *(v163 + v162[6]) = 1;
  *(v163 + v162[7]) = 1;
  *(v163 + v162[8]) = 1;
  v164 = v140[5];
  v165 = v140[6];
  __swift_project_boxed_opaque_existential_1(v140 + 2, v164);
  v166 = *(v165 + 24);
  sub_217751DE8();
  v166(v233, v164, v165);
  nullsub_1();
  memcpy(v236, v233, 0x161uLL);
  OUTLINED_FUNCTION_7_14();
  v167 = v230;
  sub_21733CAD0();
  v168 = v140[6];
  OUTLINED_FUNCTION_162_2(v140 + 2);
  v169 = OUTLINED_FUNCTION_5_4();
  v170(v169, v168);
  __swift_project_boxed_opaque_existential_1(v237, v237[3]);
  v171 = OUTLINED_FUNCTION_5_4();
  v172(v171);
  __swift_destroy_boxed_opaque_existential_1(v237);
  v229 = v234[0];
  v227 = v234[1];
  LODWORD(v226) = LOBYTE(v234[2]);
  v173 = v140[6];
  OUTLINED_FUNCTION_162_2(v140 + 2);
  v174 = OUTLINED_FUNCTION_5_4();
  v175(v174, v173);
  OUTLINED_FUNCTION_67(v237, v237[3]);
  v176 = OUTLINED_FUNCTION_5_4();
  v178 = v177(v176);
  v224 = v179;
  v225 = v178;
  __swift_destroy_boxed_opaque_existential_1(v237);
  memcpy(v237, v236, 0x168uLL);
  memset(&v237[45], 0, 24);
  nullsub_1();
  v180 = v140[6];
  OUTLINED_FUNCTION_232_0();
  v181 = OUTLINED_FUNCTION_66_5();
  v182(v181, v180);
  v183 = v232[3];
  OUTLINED_FUNCTION_67(v232, v232[3]);
  v185 = (*(v184 + 64))(v183);
  __swift_destroy_boxed_opaque_existential_1(v232);
  v186 = v140[6];
  OUTLINED_FUNCTION_232_0();
  v187 = OUTLINED_FUNCTION_66_5();
  v188(v187, v186);
  v189 = v232[3];
  OUTLINED_FUNCTION_67(v232, v232[3]);
  v191 = (*(v190 + 72))(v189);
  __swift_destroy_boxed_opaque_existential_1(v232);
  v192 = v140[6];
  OUTLINED_FUNCTION_232_0();
  v193 = OUTLINED_FUNCTION_66_5();
  v194(v193, v192);
  v195 = v232[3];
  OUTLINED_FUNCTION_67(v232, v232[3]);
  v197 = (*(v196 + 80))(v195);
  __swift_destroy_boxed_opaque_existential_1(v232);
  v198 = v140[6];
  OUTLINED_FUNCTION_232_0();
  v199 = OUTLINED_FUNCTION_66_5();
  v200(v199, v198);
  OUTLINED_FUNCTION_67(v232, v232[3]);
  v201 = OUTLINED_FUNCTION_5_4();
  v203 = v202(v201);
  OUTLINED_FUNCTION_1_19();
  sub_21733CA78(v231, v204);
  sub_21733CA78(v147, type metadata accessor for LegacyModelCodablePlaylistEntry.Attributes);
  __swift_destroy_boxed_opaque_existential_1(v232);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  v206 = v167 + v205[9];
  v207 = v227;
  *v206 = v229;
  *(v206 + 8) = v207;
  *(v206 + 16) = v226;
  v208 = (v167 + v205[10]);
  v209 = v224;
  *v208 = v225;
  v208[1] = v209;
  memcpy((v167 + v205[11]), v237, 0x180uLL);
  *(v167 + v205[12]) = v185;
  *(v167 + v205[13]) = v191;
  *(v167 + v205[14]) = v197;
  *(v167 + v205[15]) = v203;
  OUTLINED_FUNCTION_13();
}

void sub_2173385F0()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24808, &qword_217758D90);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24748, &unk_217758CD0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_111();
  sub_21729C79C(v0, v33);
  if (v33[56] == 1)
  {
    OUTLINED_FUNCTION_8_2();
    sub_21730D230(v3);
    sub_217283B58(v32);
    OUTLINED_FUNCTION_100_5();
    sub_21733CE30();
    type metadata accessor for LegacyModelCodablePlaylistEntryItem(0);
    OUTLINED_FUNCTION_188_2();
    swift_storeEnumTagMultiPayload();
    v12 = (v1 + v10[9]);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v12 + 16);
    v16 = *(v1 + v10[12]);
    v30 = v10[11];
    v31 = v16;
    v29 = *(v1 + v10[13]);
    v17 = *(v1 + v10[15]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    OUTLINED_FUNCTION_79_6();
    *v18 = v13;
    *(v18 + 8) = v14;
    *(v18 + 16) = v15;
    v20 = OUTLINED_FUNCTION_47_7(v19);
    memcpy(v20, (v1 + v30), 0x180uLL);
    *(v5 + *(v0 + 48)) = v31;
    OUTLINED_FUNCTION_64_7(*(v0 + 52));
    *(v5 + v21) = v17;
  }

  else
  {
    OUTLINED_FUNCTION_8_2();
    sub_2172F34C8(v3);
    sub_217283C08(v32);
    OUTLINED_FUNCTION_98_6();
    sub_21733CE30();
    type metadata accessor for LegacyModelCodablePlaylistEntryItem(0);
    OUTLINED_FUNCTION_188_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_155_2();
    v30 = v23;
    v31 = v22;
    v29 = *&v9[*(v6 + 52)];
    OUTLINED_FUNCTION_200_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
    OUTLINED_FUNCTION_79_6();
    *v24 = v1;
    *(v24 + 8) = v10;
    *(v24 + 16) = v3;
    v26 = OUTLINED_FUNCTION_47_7(v25);
    memcpy(v26, &v9[v30], 0x180uLL);
    *(v5 + *(v0 + 48)) = v31;
    OUTLINED_FUNCTION_64_7(*(v0 + 52));
    *(v5 + v27) = v6;
  }

  OUTLINED_FUNCTION_13();
}

uint64_t sub_217338840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_2177517D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v79 = v2;
  v15 = *(v2 + 40);
  if (v15 != 10)
  {
    LOBYTE(v102[0]) = *(v2 + 40);
    sub_2176E4CF8();
    v14 = 0x80000002177ABB10;
    v13 = 0x796C746E65636572;
    if (v15 == 6)
    {
      v14 = 0xEF646579616C702DLL;
    }

    else
    {
      v13 = 0xD000000000000015;
    }
  }

  v73 = v14;
  v74 = v13;
  v75 = v12;
  v76 = v11;
  v16 = type metadata accessor for MusicPersonalRecommendation(0);
  v17 = v79;
  v71 = *(v79 + *(v16 + 56));
  if (qword_280BE8910 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for CloudFormatter(0);
  v19 = __swift_project_value_buffer(v18, qword_280BE8918);
  v78 = v16;
  sub_21726A630(v17 + *(v16 + 40), v6, &qword_27CB241C0, &qword_217759480);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2171F0738(v6, &qword_27CB241C0, &qword_217759480);
    v69 = 0;
    v70 = 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v20 = *(v19 + *(v18 + 24));
    v21 = sub_2177517A8();
    v22 = [v20 stringFromDate_];

    v23 = sub_217751F48();
    v69 = v24;
    v70 = v23;

    (*(v8 + 8))(v10, v7);
  }

  v25 = v78[11];
  v68 = *(v17 + v78[12]);
  if (*(v17 + v25) == 7)
  {
    v67 = 0;
    v26 = 1;
  }

  else
  {
    v101[0] = *(v17 + v25);
    MusicPersonalRecommendation._DisplayKind.convertToCloudDisplayInfo()();
    v67 = v102[0];
    v26 = v102[1];
  }

  v66 = v26;
  v27 = v17[9];
  if (v27)
  {
    v65 = v17[8];
    v64 = sub_217751DC8();
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  v28 = v17[7];
  v77 = a2;
  v61 = v27;
  if (v28)
  {
    v63 = v17[6];
    sub_217751DE8();
    v62 = sub_217751DC8();
  }

  else
  {
    sub_217751DE8();
    v62 = 0;
    v63 = 0;
  }

  sub_217751DE8();
  v60 = sub_2176E6868();
  MusicPersonalRecommendation.items.getter();
  sub_2172ECD24(v72, 0, v102);
  sub_2171F0738(v101, &qword_27CB25928, &unk_21775D9A0);
  v29 = v102[0];
  v30 = v102[1];
  sub_2171FB568(v102[0], v102[1]);
  sub_2176DE488();
  v32 = v31;
  v33 = v102[4];
  v58 = v102[5];
  v59 = v102[3];
  v34 = v102[6];
  v35 = v102[7];
  v72 = v28;
  v36 = v102[8];
  sub_21726A630(&v102[9], v99, &qword_27CB24188, &dword_217758930);
  v98[0] = v29;
  v98[1] = v30;
  v98[2] = v32;
  v98[3] = v59;
  v98[4] = v33;
  v98[5] = v58;
  v98[6] = v34;
  v98[7] = v35;
  v98[8] = v36;
  v99[5] = v102[14];
  v99[6] = v102[15];
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  v37 = v78;
  sub_217751DE8();
  sub_2171F0738(v102, &qword_27CB25930, &unk_217797B70);
  v38 = (v79 + v37[13]);
  v39 = *v38;
  v40 = v38[1];
  v41 = v38[2];
  v42 = *v79;
  v43 = v79[1];
  sub_21733C840(v98, v94);
  v80[0] = v42;
  v80[1] = v43;
  v80[2] = v75;
  v80[3] = v76;
  v80[4] = v74;
  v80[5] = v73;
  v81 = v71;
  v82 = v70;
  v83 = v69;
  v84 = v68;
  v85 = v67;
  v86 = v66;
  v87 = v65;
  v88 = v61;
  v89 = v64;
  v90 = v63;
  v91 = v72;
  v92 = v62;
  v93 = v60;
  v94[128] = 1;
  v95 = v39;
  v96 = v40;
  v97 = v41;
  sub_2172E1074(v39, v40, v41);
  v44 = v79;
  sub_217751DE8();
  sub_2176EF244();
  nullsub_1();
  v45 = v44[4];
  memcpy(v101, v100, 0x161uLL);
  v46 = v77;
  sub_21733C5F0(v80, v77);
  v47 = qword_280BE4AB0;
  sub_217751DE8();
  if (v47 != -1)
  {
    swift_once();
  }

  v48 = unk_280BE4AC0;
  v76 = qword_280BE4AB8;
  LODWORD(v75) = byte_280BE4AC8;
  sub_217751DE8();
  sub_217269D5C(v80);
  sub_21728373C(v98);
  v50 = v44[2];
  v49 = v44[3];
  memcpy(v102, v101, 0x168uLL);
  v102[47] = 0;
  v102[45] = v45;
  v102[46] = 0;
  nullsub_1();
  v51 = *(v44 + v37[17]);
  v52 = *(v44 + v37[18]);
  v53 = v37[20];
  v54 = *(v44 + v37[19]);
  v55 = *(v44 + v53);
  *(v46 + 312) = v76;
  *(v46 + 320) = v48;
  *(v46 + 328) = v75;
  *(v46 + 336) = v50;
  *(v46 + 344) = v49;
  memcpy((v46 + 352), v102, 0x180uLL);
  *(v46 + 736) = v51;
  *(v46 + 744) = v52;
  *(v46 + 752) = v54;
  *(v46 + 760) = v55;
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  sub_217751DE8();
  return sub_217751DE8();
}

void sub_217338F1C()
{
  OUTLINED_FUNCTION_12();
  v104 = v2;
  v105 = v3;
  v107 = v4;
  v108 = v5;
  v7 = v6;
  v9 = v8;
  v103 = v10;
  v12 = v11;
  v106 = v13;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_31();
  v98 = v15;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16);
  v94 = &v93 - v17;
  v18 = OUTLINED_FUNCTION_206();
  v19 = type metadata accessor for CloudStation(v18);
  v20 = OUTLINED_FUNCTION_45_0(v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_81();
  v101 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_31();
  v96 = v24;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v25);
  v27 = &v93 - v26;
  v28 = type metadata accessor for CloudPlaylist(0);
  v29 = OUTLINED_FUNCTION_45_0(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_81();
  v100 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_31();
  v95 = v33;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v34);
  v35 = OUTLINED_FUNCTION_201_3();
  v36 = type metadata accessor for CloudAlbum(v35);
  v37 = OUTLINED_FUNCTION_45_0(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_81();
  v99 = v38;
  v39 = OUTLINED_FUNCTION_206();
  v9(v39);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_1();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_115_3();
  OUTLINED_FUNCTION_25_0();
  sub_21733CAD0();
  v102 = v1;
  sub_21733CAD0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21733CE30();
      OUTLINED_FUNCTION_154();
      sub_21733CAD0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v107, v108);
      OUTLINED_FUNCTION_163_1();
      v47 = v46[1];
      v95 = *v46;
      OUTLINED_FUNCTION_205_2(v46);
      v98 = v48;
      v99 = v47;
      v97 = v49;
      OUTLINED_FUNCTION_222_1(v50);
      OUTLINED_FUNCTION_148_1();
      v52 = *(v12 + v51);
      v53 = &v27[v22[9]];
      *v53 = v95;
      *(v53 + 1) = v47;
      v53[16] = v94;
      v54 = &v27[v22[10]];
      v55 = v97;
      *v54 = v98;
      *(v54 + 1) = v55;
      memcpy(&v27[v22[11]], (v12 + v1), 0x180uLL);
      *&v27[v22[12]] = v43;
      *&v27[v22[13]] = v7;
      *&v27[v22[14]] = v93;
      *&v27[v22[15]] = v52;
      sub_21726A630(v27, v96, &qword_27CB24790, &unk_21775A220);
      v56 = v104;
      sub_2172CA838(v104, v110);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v111, v109, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      v57 = OUTLINED_FUNCTION_198_2();
      sub_2172F565C(v57);
      sub_21733AB9C(v56);
      sub_2171F0738(v12, v107, v108);
      sub_2171F0738(v27, &qword_27CB24790, &unk_21775A220);
      sub_21733CA78(v100, type metadata accessor for CloudPlaylist);
      sub_21733CA78(v102, v105);
      OUTLINED_FUNCTION_53_6();
      v59 = 1;
    }

    else
    {
      v74 = v101;
      sub_21733CE30();
      v75 = v94;
      sub_21733CAD0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v107, v108);
      OUTLINED_FUNCTION_163_1();
      v77 = *v76;
      v78 = *(v76 + 8);
      LODWORD(v93) = *(v76 + 16);
      v80 = *(v12 + v79 + 8);
      v99 = *(v12 + v79);
      v100 = v78;
      v95 = v77;
      v96 = v80;
      v82 = *(v81 + 44);
      memcpy(v111, (v12 + v82), 0x180uLL);
      v83 = *(v12 + v74[12]);
      v84 = *(v12 + v74[13]);
      v85 = *(v12 + v74[14]);
      v86 = *(v12 + v74[15]);
      v87 = v97;
      v88 = v75 + *(v97 + 36);
      *v88 = v95;
      *(v88 + 8) = v78;
      *(v88 + 16) = v93;
      v89 = (v75 + v87[10]);
      v90 = v96;
      *v89 = v99;
      v89[1] = v90;
      memcpy((v75 + v87[11]), (v12 + v82), 0x180uLL);
      *(v75 + v87[12]) = v83;
      *(v75 + v87[13]) = v84;
      *(v75 + v87[14]) = v85;
      *(v75 + v87[15]) = v86;
      v91 = v98;
      sub_21726A630(v75, v98, &qword_27CB24738, &qword_217758CC0);
      v92 = v104;
      sub_2172CA838(v104, v110);
      sub_217751DE8();
      sub_217751DE8();
      sub_21726A630(v111, v109, &qword_27CB25620, &qword_21776A5F0);
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_217751DE8();
      sub_2173078AC(v91);
      sub_21733AB9C(v92);
      sub_2171F0738(v12, v107, v108);
      sub_2171F0738(v75, &qword_27CB24738, &qword_217758CC0);
      sub_21733CA78(v101, type metadata accessor for CloudStation);
      sub_21733CA78(v102, v105);
      OUTLINED_FUNCTION_53_6();
      v59 = 2;
    }

    *(v58 + 56) = v59;
  }

  else
  {
    sub_21733CE30();
    sub_21733CAD0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v107, v108);
    OUTLINED_FUNCTION_163_1();
    v100 = *(v60 + 8);
    v61 = v100;
    OUTLINED_FUNCTION_205_2(v60);
    v98 = v62;
    v96 = v64;
    v97 = v63;
    OUTLINED_FUNCTION_222_1(v65);
    OUTLINED_FUNCTION_148_1();
    v67 = *(v12 + v66);
    v68 = v0 + v31[9];
    v69 = v97;
    *v68 = v96;
    *(v68 + 8) = v61;
    *(v68 + 16) = v94;
    v70 = (v0 + v31[10]);
    *v70 = v98;
    v70[1] = v69;
    memcpy((v0 + v31[11]), (v12 + v1), 0x180uLL);
    *(v0 + v31[12]) = v43;
    *(v0 + v31[13]) = v7;
    *(v0 + v31[14]) = v93;
    *(v0 + v31[15]) = v67;
    sub_21726A630(v0, v95, &qword_27CB247F0, &qword_21775D360);
    v71 = v104;
    sub_2172CA838(v104, v110);
    sub_217751DE8();
    sub_217751DE8();
    sub_21726A630(v111, v109, &qword_27CB25620, &qword_21776A5F0);
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    v72 = OUTLINED_FUNCTION_198_2();
    sub_2172E5528(v72);
    sub_21733AB9C(v71);
    sub_2171F0738(v12, v107, v108);
    sub_2171F0738(v0, &qword_27CB247F0, &qword_21775D360);
    sub_21733CA78(v99, type metadata accessor for CloudAlbum);
    sub_21733CA78(v102, v105);
    OUTLINED_FUNCTION_53_6();
    *(v73 + 56) = 0;
  }

  OUTLINED_FUNCTION_13();
}

void sub_21733971C()
{
  OUTLINED_FUNCTION_12();
  v58 = v3;
  v59 = v4;
  v57 = v5;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24738, &qword_217758CC0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_131_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24790, &unk_21775A220);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_130_2();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247F0, &qword_21775D360);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_7();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v54 - v19;
  v7(v0, &v61, v18);
  if (v62)
  {
    if (v62 == 1)
    {
      OUTLINED_FUNCTION_8_2();
      sub_2172F9998(v9);
      sub_21726B8C4(v60);
      sub_21733CE30();
      v57(0);
      OUTLINED_FUNCTION_188_2();
      swift_storeEnumTagMultiPayload();
      v21 = v14[10];
      v22 = (v2 + v14[9]);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v22 + 16);
      v26 = *(v2 + v14[12]);
      v56 = v14[11];
      v57 = v26;
      v27 = v14[14];
      v55 = *(v2 + v14[13]);
      v29 = *(v2 + v21);
      v28 = *(v2 + v21 + 8);
      v30 = *(v2 + v27);
      v31 = *(v2 + v14[15]);
      __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
      OUTLINED_FUNCTION_79_6();
      *v32 = v23;
      *(v32 + 8) = v24;
      *(v32 + 16) = v25;
      v34 = (v11 + *(v33 + 40));
      *v34 = v29;
      v34[1] = v28;
      memcpy((v11 + *(v33 + 44)), (v2 + v56), 0x180uLL);
      OUTLINED_FUNCTION_54_6();
      *(v11 + v35) = v30;
      *(v11 + *(v0 + 60)) = v31;
    }

    else
    {
      OUTLINED_FUNCTION_8_2();
      sub_21730FC14(v9);
      sub_217283DC8(v60);
      sub_21733CE30();
      v57(0);
      OUTLINED_FUNCTION_188_2();
      swift_storeEnumTagMultiPayload();
      v42 = (v1 + v12[9]);
      v43 = *v42;
      v44 = v42[1];
      v45 = *(v42 + 16);
      v46 = *(v1 + v12[12]);
      v56 = v12[11];
      v57 = v46;
      v47 = v12[14];
      v55 = *(v1 + v12[13]);
      v48 = *(v1 + v47);
      v49 = *(v1 + v12[15]);
      __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
      OUTLINED_FUNCTION_79_6();
      *v50 = v43;
      *(v50 + 8) = v44;
      *(v50 + 16) = v45;
      v52 = OUTLINED_FUNCTION_47_7(v51);
      memcpy(v52, (v1 + v56), 0x180uLL);
      OUTLINED_FUNCTION_54_6();
      *(v11 + v53) = v48;
      *(v11 + *(v0 + 60)) = v49;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_2();
    sub_2172E9898(v9);
    sub_21725CE44(v60);
    sub_21733CE30();
    v57(0);
    OUTLINED_FUNCTION_188_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_155_2();
    v56 = v37;
    v57 = v36;
    v55 = *&v20[*(v16 + 52)];
    OUTLINED_FUNCTION_200_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v58, v59);
    OUTLINED_FUNCTION_79_6();
    *v38 = v7;
    *(v38 + 8) = v1;
    *(v38 + 16) = v12;
    v40 = OUTLINED_FUNCTION_47_7(v39);
    memcpy(v40, &v20[v56], 0x180uLL);
    OUTLINED_FUNCTION_54_6();
    *(v11 + v41) = v14;
    *(v11 + *(v0 + 60)) = v16;
  }

  OUTLINED_FUNCTION_13();
}

void *sub_217339A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_217339B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_217339C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_2173130F4();

  return v3;
}

void *sub_217339CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_217339DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_217339E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_217339F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_217339FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_21733A0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_21733A174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_21733A234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_21733A2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_217312E74();

  return v3;
}

void *sub_21733A3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_2173130F4();

  return v3;
}

void *sub_21733A488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_217751DE8();

  v6 = OUTLINED_FUNCTION_25_0();
  sub_217312F4C(v6, v7, a4);

  return v4;
}

void *sub_21733A50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  sub_217751DE8();

  sub_2173130F4();

  return v3;
}

unint64_t sub_21733A5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE7610;
  if (!qword_280BE7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7610);
  }

  return result;
}

unint64_t sub_21733A61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB254E8;
  if (!qword_27CB254E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB254E8);
  }

  return result;
}

unint64_t sub_21733A670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB254F0;
  if (!qword_27CB254F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB254F0);
  }

  return result;
}

unint64_t sub_21733A6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB254F8;
  if (!qword_27CB254F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB254F8);
  }

  return result;
}

void sub_21733A718(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_143_2();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_21733A754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25520;
  if (!qword_27CB25520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25520);
  }

  return result;
}

unint64_t sub_21733A7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25528;
  if (!qword_27CB25528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25528);
  }

  return result;
}

_BYTE *sub_21733A838(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21733A938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25530;
  if (!qword_27CB25530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25530);
  }

  return result;
}

unint64_t sub_21733A990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25538;
  if (!qword_27CB25538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25538);
  }

  return result;
}

unint64_t sub_21733A9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25540;
  if (!qword_27CB25540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25540);
  }

  return result;
}

unint64_t sub_21733AA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25548;
  if (!qword_27CB25548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25548);
  }

  return result;
}

unint64_t sub_21733AA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25550;
  if (!qword_27CB25550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25550);
  }

  return result;
}

unint64_t sub_21733AAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25558;
  if (!qword_27CB25558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25558);
  }

  return result;
}

unint64_t sub_21733AB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25560;
  if (!qword_27CB25560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25560);
  }

  return result;
}

unint64_t sub_21733ABF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25578;
  if (!qword_27CB25578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25578);
  }

  return result;
}

unint64_t sub_21733AC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE23F0[0];
  if (!qword_280BE23F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280BE23F0);
  }

  return result;
}

unint64_t sub_21733AC98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25598;
  if (!qword_27CB25598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25598);
  }

  return result;
}

uint64_t sub_21733ACEC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25590, &qword_21776DFB0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21733AD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE23E8;
  if (!qword_280BE23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE23E8);
  }

  return result;
}

void sub_21733ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a1 < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < a1 || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
    OUTLINED_FUNCTION_80_3();
    return;
  }

LABEL_12:
  __break(1u);
}

double sub_21733B290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

void sub_21733B8A4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  bzero(a1 + 4, 0xC8uLL);
}

uint64_t sub_21733B8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_217751DE8();
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

double sub_21733B90C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_21733B95C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v4;
}

uint64_t sub_21733BBDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_43();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v4;
}

uint64_t sub_21733BC28()
{
  OUTLINED_FUNCTION_169();
  v1(0);
  OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  return v0;
}

unint64_t sub_21733BE84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE49C0;
  if (!qword_280BE49C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE49C0);
  }

  return result;
}

uint64_t sub_21733BF2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_217221020(result);
    sub_217751DE8();

    return sub_217751DE8();
  }

  return result;
}

double sub_21733BF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_217221010(a1);
  }

  return result;
}

unint64_t sub_21733BFCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25728;
  if (!qword_27CB25728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25728);
  }

  return result;
}

unint64_t sub_21733C020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25730;
  if (!qword_27CB25730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25730);
  }

  return result;
}

unint64_t sub_21733C074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25768;
  if (!qword_27CB25768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25768);
  }

  return result;
}

unint64_t sub_21733C0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25770;
  if (!qword_27CB25770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25770);
  }

  return result;
}

unint64_t sub_21733C11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB257A0;
  if (!qword_27CB257A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB257A0);
  }

  return result;
}

unint64_t sub_21733C170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB257A8;
  if (!qword_27CB257A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB257A8);
  }

  return result;
}

unint64_t sub_21733C27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25800;
  if (!qword_27CB25800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25800);
  }

  return result;
}

unint64_t sub_21733C2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25808;
  if (!qword_27CB25808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25808);
  }

  return result;
}

unint64_t sub_21733C324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25830;
  if (!qword_27CB25830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25830);
  }

  return result;
}

unint64_t sub_21733C378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25838;
  if (!qword_27CB25838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25838);
  }

  return result;
}

uint64_t sub_21733C3CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_217221020(result);

    return sub_217751DE8();
  }

  return result;
}

double sub_21733C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_217221010(a1);
  }

  return result;
}

unint64_t sub_21733C454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25868;
  if (!qword_27CB25868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25868);
  }

  return result;
}

unint64_t sub_21733C4A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25870;
  if (!qword_27CB25870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25870);
  }

  return result;
}

uint64_t sub_21733C6A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return sub_2172E1074(result, a2, a3);
  }

  return result;
}

double sub_21733C6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return sub_2172E141C(a1, a2, a3);
  }

  return result;
}

unint64_t sub_21733C6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25910;
  if (!qword_27CB25910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25910);
  }

  return result;
}

unint64_t sub_21733C744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25918;
  if (!qword_27CB25918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25918);
  }

  return result;
}

unint64_t sub_21733C798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25920;
  if (!qword_27CB25920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25920);
  }

  return result;
}

unint64_t sub_21733C9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25988;
  if (!qword_27CB25988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25988);
  }

  return result;
}

unint64_t sub_21733CA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25990;
  if (!qword_27CB25990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25990);
  }

  return result;
}

uint64_t sub_21733CA78(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_43();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21733CAD0()
{
  OUTLINED_FUNCTION_169();
  v1(0);
  OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  return v0;
}

unint64_t sub_21733CB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB259C0;
  if (!qword_27CB259C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB259C0);
  }

  return result;
}

unint64_t sub_21733CB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB259C8;
  if (!qword_27CB259C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB259C8);
  }

  return result;
}

unint64_t sub_21733CBD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB259F8;
  if (!qword_27CB259F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB259F8);
  }

  return result;
}

unint64_t sub_21733CC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25A00;
  if (!qword_27CB25A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25A00);
  }

  return result;
}

uint64_t sub_21733CCD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_21733CD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25A30;
  if (!qword_27CB25A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25A30);
  }

  return result;
}

unint64_t sub_21733CD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25A38;
  if (!qword_27CB25A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25A38);
  }

  return result;
}

uint64_t sub_21733CDD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21733CE30()
{
  OUTLINED_FUNCTION_169();
  v1(0);
  OUTLINED_FUNCTION_43();
  v2 = OUTLINED_FUNCTION_93();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_16_17()
{
  v0[85] = v4;
  v0[86] = v5;
  v0[87] = v6;
  v0[88] = v1;
  v0[89] = v2;
  v0[90] = v3;
}

uint64_t OUTLINED_FUNCTION_41_8()
{

  return sub_21726A630(v1, v0, v2, v3);
}

void OUTLINED_FUNCTION_42_7(__n128 a1)
{
  v1[74] = a1;
  v1[75] = a1;
  v1[76] = a1;
  v1[77] = a1;
}

uint64_t OUTLINED_FUNCTION_47_7(uint64_t a1)
{
  v4 = (v1 + *(a1 + 40));
  *v4 = v3;
  v4[1] = v2;
  return v1 + *(a1 + 44);
}

__n128 OUTLINED_FUNCTION_48_7()
{
  result = *(v0 + 448);
  v2 = *(v0 + 464);
  *(v0 + 160) = result;
  *(v0 + 176) = v2;
  *(v0 + 192) = *(v0 + 480);
  return result;
}

void OUTLINED_FUNCTION_51_6(__n128 a1)
{
  v1[70] = a1;
  v1[71] = a1;
  v1[72] = a1;
  v1[73] = a1;
}

__n128 OUTLINED_FUNCTION_53_6()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  *v2 = *(v0 + 128);
  *(v2 + 16) = v1;
  result = *(v0 + 160);
  *(v2 + 32) = result;
  *(v2 + 48) = *(v0 + 176);
  return result;
}

uint64_t OUTLINED_FUNCTION_55_4()
{
  *(v0 + 1328) = v1;

  return sub_217752EC8();
}

uint64_t OUTLINED_FUNCTION_59_3(uint64_t a1)
{
  v3 = *(v1 + 288);
  *(a1 + 16) = *(v1 + 272);
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 304);
  *(a1 + 64) = *(v1 + 320);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_60_6(uint64_t a1, uint64_t a2, double a3, __n128 a4)
{
  *(v4 + 400) = 0;
  *(v4 + 295) = a4;
  *(v4 + 311) = *(v4 + 480);
  sub_2171FB568(a1, a2);

  return sub_217751DE8();
}

void *OUTLINED_FUNCTION_72_5(double a1)
{
  *(v1 + 944) = v2;

  return sub_217752E08();
}

uint64_t OUTLINED_FUNCTION_76_5()
{

  return sub_217283154(v0 - 128);
}

__n128 OUTLINED_FUNCTION_81_4()
{
  result = *(v0 + 224);
  v2 = *(v0 + 240);
  *(v0 + 448) = result;
  *(v0 + 464) = v2;
  *(v0 + 480) = *(v0 + 256);
  return result;
}

uint64_t OUTLINED_FUNCTION_90_4(_OWORD *a1)
{
  v3 = v1[11];
  a1[1] = v1[10];
  a1[2] = v3;
  v4 = v1[13];
  a1[3] = v1[12];
  a1[4] = v4;

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_111_4(__n128 a1)
{
  v1[78] = a1;
  v1[79] = a1;
  v1[80] = a1;
  v1[81] = a1;
}

uint64_t OUTLINED_FUNCTION_113_4()
{
}

double OUTLINED_FUNCTION_114_2()
{
  result = 0.0;
  v0[193] = 0u;
  v0[194] = 0u;
  v0[195] = 0u;
  v0[196] = 0u;
  v0[197] = 0u;
  v0[198] = 0u;
  v0[199] = 0u;
  v0[200] = 0u;
  return result;
}

double OUTLINED_FUNCTION_116_4()
{
  *(v0 + 480) = 0;
  result = 0.0;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_121_3(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_125_2()
{
  *(v0 + 256) = 0;
  result = 0.0;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_126_3()
{
  result = *(v0 + 400);
  v2 = *(v0 + 416);
  *(v0 + 448) = result;
  *(v0 + 464) = v2;
  *(v0 + 480) = *(v0 + 432);
  return result;
}

uint64_t OUTLINED_FUNCTION_139_3()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_140_4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 72) = a5;

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t OUTLINED_FUNCTION_141_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
}

uint64_t OUTLINED_FUNCTION_142_2()
{
  *(v2 + 16) = v0;
  v7 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v1;
  v8 = *(v5 - 112);
  v9 = *(v5 - 104);

  return sub_21726A594(v4, v7, v8, v9);
}

uint64_t OUTLINED_FUNCTION_144_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21726A630(v4 + 16, v5 - 128, a3, a4);
}

uint64_t OUTLINED_FUNCTION_150_2(uint64_t a1)
{
  v3 = *(v1 + 512);
  *(a1 + 16) = *(v1 + 496);
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 528);
  *(a1 + 64) = *(v1 + 544);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_152_3()
{

  return sub_2172CA838(v1, v0 + 288);
}

uint64_t OUTLINED_FUNCTION_153_2()
{

  return sub_2172CA838(v1, v0 + 184);
}

uint64_t OUTLINED_FUNCTION_154_1()
{

  return sub_2171FF30C(v0, v1 - 120);
}

double OUTLINED_FUNCTION_156_2()
{
  result = 0.0;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  return result;
}

double OUTLINED_FUNCTION_157_3()
{
  result = 0.0;
  v0[58] = 0u;
  v0[59] = 0u;
  v0[60] = 0u;
  v0[61] = 0u;
  v0[62] = 0u;
  v0[63] = 0u;
  v0[64] = 0u;
  v0[65] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_159_2()
{
  *(v2 - 72) = v1;
  result = 0;
  *(v2 - 120) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_160_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  *(v5 - 96) = a1;
  *(v5 - 88) = a2;
  *(v5 - 112) = a4;
  *(v5 - 104) = a5;

  return __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
}

void OUTLINED_FUNCTION_169_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  sub_21729CCC4(va, v11, v10, v9, v8);
}

uint64_t OUTLINED_FUNCTION_170_1(_OWORD *a1)
{
  v3 = v1[18];
  a1[1] = v1[17];
  a1[2] = v3;
  v4 = v1[20];
  a1[3] = v1[19];
  a1[4] = v4;

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_171_2(char *a1@<X8>)
{

  sub_2174E3DC8(v3, v5, v4, v2, v1, a1);
}

double OUTLINED_FUNCTION_173_2()
{
  result = 0.0;
  v0[50] = 0u;
  v0[51] = 0u;
  v0[52] = 0u;
  v0[53] = 0u;
  v0[54] = 0u;
  v0[55] = 0u;
  v0[56] = 0u;
  v0[57] = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_182_2()
{
  result = *(v0 + 400);
  v2 = *(v0 + 416);
  *(v0 + 160) = result;
  *(v0 + 176) = v2;
  *(v0 + 192) = *(v0 + 432);
  return result;
}

void OUTLINED_FUNCTION_192_2(uint64_t a1@<X8>)
{
  *(a1 - 48) = v1;
  *(a1 - 40) = v4;
  *(a1 - 32) = v6;
  *(a1 - 24) = v5;
  *(a1 - 16) = v3;
  *(a1 - 8) = v2;

  sub_21720BA7C();
}

void OUTLINED_FUNCTION_193_2()
{

  sub_21733971C();
}

uint64_t OUTLINED_FUNCTION_194_2(uint64_t a1, uint64_t a2)
{

  return sub_217753058();
}

void OUTLINED_FUNCTION_196_3()
{

  sub_217338F1C();
}

uint64_t OUTLINED_FUNCTION_197_2(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_21726A630(v4 + 1248, v4 + 496, a3, a4);
}

void OUTLINED_FUNCTION_199_0(__n128 a1)
{
  v1[82] = a1;
  v1[83] = a1;
  v1[84] = a1;
  v1[85] = a1;
}

double OUTLINED_FUNCTION_211_1()
{
  *(v0 + 432) = 0;
  result = 0.0;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_213_3()
{
  result = *(v0 + 160);
  v2 = *(v0 + 176);
  *(v0 + 272) = result;
  *(v0 + 288) = v2;
  *(v0 + 304) = *(v0 + 192);
  return result;
}

void OUTLINED_FUNCTION_215_2(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  a1[3] = a3;
  a1[4] = a4;
  a1[2] = a2;
}

uint64_t OUTLINED_FUNCTION_221_2(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void *OUTLINED_FUNCTION_222_1(uint64_t a1)
{
  v4 = *(a1 + 44);

  return memcpy((v1 + 552), (v2 + v4), 0x180uLL);
}

uint64_t OUTLINED_FUNCTION_223_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  a24 = 1;

  return sub_21733B548(&a19, &a13);
}

uint64_t OUTLINED_FUNCTION_224_1()
{

  return sub_21726A630(v0, v1, v2, v3);
}

uint64_t OUTLINED_FUNCTION_225_2()
{

  return Encoder.dataRequestConfiguration.getter(v0, v1);
}

uint64_t OUTLINED_FUNCTION_226_2()
{
  *(v0 + 296) = 0;
  *(v0 + 304) = 0xE000000000000000;

  return sub_217752AA8();
}

uint64_t OUTLINED_FUNCTION_227_2()
{

  return sub_2171F0738(v2, v0, v1);
}

uint64_t OUTLINED_FUNCTION_228_2()
{

  return sub_2171F0738(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_229_1()
{

  return sub_2172CA838(v1, v0 + 512);
}

uint64_t OUTLINED_FUNCTION_230_1()
{

  return sub_2172CA838(v1, v0 + 296);
}

void *OUTLINED_FUNCTION_232_0()
{

  return __swift_project_boxed_opaque_existential_1((v1 + 16), v0);
}

uint64_t OUTLINED_FUNCTION_233_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  return sub_21726A630(v13, va, a3, a4);
}

uint64_t OUTLINED_FUNCTION_234_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_2172E4A28(a1, &a9, a3, a4, a5, a6);
}

uint64_t OUTLINED_FUNCTION_235_0(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_236_0()
{

  return sub_217751DE8();
}

uint64_t MusicLibrarySearchResponse._requestedTerm.getter()
{
  v1 = *(v0 + 664);
  sub_217751DE8();
  return v1;
}

BOOL static MusicLibrarySearchResponse.== infix(_:_:)(void *a1, void *a2)
{
  if ((sub_21733E3E4(a1, a2, sub_2172849D4, sub_2172703B0, sub_217557EA0, sub_2172703D8) & 1) == 0 || (sub_21733E3E4((a1 + 13), (a2 + 13), sub_2172849D4, sub_21727083C, sub_2175581A8, sub_217270864) & 1) == 0 || (sub_21733E3E4((a1 + 26), (a2 + 26), sub_2172849D4, sub_2172710D8, sub_217558CC8, sub_217271100) & 1) == 0 || (sub_21733E3E4((a1 + 39), (a2 + 39), sub_2172849D4, sub_217270680, sub_217558024, sub_217270764) & 1) == 0 || (sub_21733E3E4((a1 + 52), (a2 + 52), sub_2172849D4, sub_217271030, sub_2175589B0, sub_217271058) & 1) == 0 || (sub_21733E3E4((a1 + 65), (a2 + 65), sub_2172849D4, sub_217274178, sub_21755988C, sub_2172741A0) & 1) == 0)
  {
    return 0;
  }

  sub_217202078((a1 + 78), v17, &qword_27CB25AA0, &qword_21775DAC0);
  sub_217202078((a2 + 78), &v19, &qword_27CB25AA0, &qword_21775DAC0);
  if (v18)
  {
    sub_217202078(v17, v14, &qword_27CB25AA0, &qword_21775DAC0);
    if (*(&v20 + 1))
    {
      v12[0] = v19;
      v12[1] = v20;
      v13 = v21;
      v4 = v15;
      v5 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v6 = *(v5 + 40);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AB0, &qword_21775DAD0);
      v8 = v6(v12, v7, v4, v5);
      sub_21733EB14(v12);
      sub_21733EB14(v14);
      sub_2171F06D8(v17, &qword_27CB25AA0, &qword_21775DAC0);
      if ((v8 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    sub_21733EB14(v14);
LABEL_21:
    sub_2171F06D8(v17, &qword_27CB25AA8, &qword_21775DAC8);
    return 0;
  }

  if (*(&v20 + 1))
  {
    goto LABEL_21;
  }

  sub_2171F06D8(v17, &qword_27CB25AA0, &qword_21775DAC0);
LABEL_13:
  v9 = a1[83] == a2[83] && a1[84] == a2[84];
  if (v9 || (sub_217753058() & 1) != 0)
  {
    sub_217270BE0();
    if (v10)
    {
      return a1[86] == a2[86];
    }
  }

  return 0;
}

uint64_t sub_21733E3E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void, void), uint64_t (*a5)(uint64_t), uint64_t (*a6)(void, void))
{
  v11 = a1;
  v12 = *(a1 + 64);
  v13 = *(a2 + 64);
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_17;
    }

    if (*(a1 + 56) != *(a2 + 56) || v12 != v13)
    {
      a1 = sub_217753058();
      if ((a1 & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (v13)
  {
    goto LABEL_17;
  }

  sub_217202078(v11 + 16, v37, &qword_27CB24188, &dword_217758930);
  sub_217202078(a2 + 16, &v39, &qword_27CB24188, &dword_217758930);
  if (v38)
  {
    sub_217202078(v37, v34, &qword_27CB24188, &dword_217758930);
    if (*(&v40 + 1))
    {
      v32[0] = v39;
      v32[1] = v40;
      v33 = v41;
      v15 = v35;
      v16 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v31 = a6;
      v17 = a3;
      v18 = a4;
      v19 = *(v16 + 32);
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB244A0, &qword_21777F1E0);
      v21 = v19(v32, v20, v15, v16);
      a4 = v18;
      a3 = v17;
      a6 = v31;
      v22 = v21;
      sub_217283154(v32);
      sub_217283154(v34);
      a1 = sub_2171F06D8(v37, &qword_27CB24188, &dword_217758930);
      goto LABEL_18;
    }

    sub_217283154(v34);
  }

  else if (!*(&v40 + 1))
  {
    a1 = sub_2171F06D8(v37, &qword_27CB24188, &dword_217758930);
    v22 = 1;
    goto LABEL_18;
  }

  a1 = sub_2171F06D8(v37, &qword_27CB24928, &unk_21775E020);
LABEL_17:
  v22 = 0;
LABEL_18:
  v23 = *v11;
  v24 = *a2;
  if (*(v11 + 8))
  {
    if (*(a2 + 8))
    {
      sub_217283C5C(*a2, 1);
      sub_217283C5C(v23, 1);
      v25 = a3(v23, v24);
      sub_21725CF00(v24, 1);
      v26 = v23;
      v27 = 1;
LABEL_25:
      sub_21725CF00(v26, v27);
      return v25 & 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    if ((v22 & 1) == 0)
    {
      v25 = 0;
      return v25 & 1;
    }

    sub_217283C5C(*a2, 0);
    sub_217283C5C(v23, 0);
    v25 = a4(v23, v24);
    sub_21725CF00(v23, 0);
    v26 = v24;
    v27 = 0;
    goto LABEL_25;
  }

  v28 = a5(a1);
  v29 = (a5)();
  v25 = a6(v28, v29);

  return v25 & 1;
}

uint64_t MusicLibrarySearchResponse.hash(into:)(uint64_t a1)
{
  sub_21733F284(a1);
  sub_21733F284(a1);
  sub_21733F284(a1);
  sub_21733F284(a1);
  sub_21733F284(a1);
  sub_21733F284(a1);
  sub_217202078(v1 + 624, v9, &qword_27CB25AA0, &qword_21775DAC0);
  if (v10)
  {
    OUTLINED_FUNCTION_0_22();
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 48))(a1, v3, v4);
    sub_21733EB14(v6);
  }

  else
  {
    sub_217753208();
  }

  sub_217751FF8();
  sub_21727D7C8();
  return MEMORY[0x21CEA3550](*(v1 + 688));
}

uint64_t MusicLibrarySearchResponse.hashValue.getter()
{
  sub_2177531E8();
  MusicLibrarySearchResponse.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_21733ECCC(uint64_t a1)
{
  sub_2177531E8();
  MusicLibrarySearchResponse.hash(into:)(v2);
  return sub_217753238();
}

void sub_21733ED08(uint64_t a1)
{
  v36 = 0;
  v37 = 0xE000000000000000;
  v3 = *(v1 + 680);
  v4 = *(v3 + 16);
  sub_217751DE8();
  v5 = 0;
  v6 = (v3 + 56);
  v7 = &qword_27CB25AA0;
  v8 = &qword_21775DAC0;
  while (v4 != v5)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = a1;
    v11 = v7;
    v28 = *(v6 - 3);
    v12 = *(v6 - 1);
    v13 = *v6;
    v14 = qword_280BE62F0;
    sub_217751DE8();
    if (v14 != -1)
    {
      swift_once();
    }

    v15 = xmmword_280BE6308 == v12 && *(&xmmword_280BE6308 + 1) == v13;
    v7 = v11;
    if (v15 || (sub_217753058() & 1) != 0)
    {

      a1 = v10;
      sub_21759899C();
      v8 = v9;
    }

    else
    {
      a1 = v10;
      if (qword_280BE6270 != -1)
      {
        swift_once();
      }

      v16 = xmmword_280BE6288 == v12 && *(&xmmword_280BE6288 + 1) == v13;
      v8 = v9;
      if (v16 || (sub_217753058() & 1) != 0)
      {

        sub_2175996FC();
      }

      else
      {
        if (qword_280BE6378 != -1)
        {
          swift_once();
        }

        v17 = xmmword_280BE6390 == v12 && *(&xmmword_280BE6390 + 1) == v13;
        if (v17 || (sub_217753058() & 1) != 0)
        {

          sub_217599B64();
        }

        else
        {
          if (qword_280BE6220 != -1)
          {
            swift_once();
          }

          v18 = xmmword_280BE6238 == v12 && *(&xmmword_280BE6238 + 1) == v13;
          if (v18 || (sub_217753058() & 1) != 0)
          {

            sub_217598C8C();
          }

          else
          {
            if (qword_280BEB138 != -1)
            {
              swift_once();
            }

            v19 = xmmword_280BEB150 == v12 && *(&xmmword_280BEB150 + 1) == v13;
            if (v19 || (sub_217753058() & 1) != 0)
            {

              sub_217599E54();
            }

            else
            {
              sub_217202078(v29 + 624, v33, v7, v9);
              v20 = v34;
              if (v34)
              {
                v27 = v35;
                __swift_project_boxed_opaque_existential_1(v33, v34);
                v30 = v28;
                v31 = v12;
                v32 = v13;
                (*(v27 + 16))(&v30, a1 & 1, &v36, v20);

                sub_21733EB14(v33);
              }

              else
              {

                sub_2171F06D8(v33, v7, v8);
              }
            }
          }
        }
      }
    }

    v6 += 4;
    ++v5;
  }

  sub_21759A144();
  sub_217202078(v29 + 624, v33, &qword_27CB25AA0, &qword_21775DAC0);
  v21 = v34;
  if (v34)
  {
    v22 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    (*(v22 + 24))(a1 & 1, &v36, v21, v22);
    sub_21733EB14(v33);
  }

  else
  {
    sub_2171F06D8(v33, &qword_27CB25AA0, &qword_21775DAC0);
  }

  v33[0] = 0xD00000000000001BLL;
  v33[1] = 0x80000002177ABB70;
  v23 = v36;
  v24 = v37;
  MEMORY[0x21CEA23B0](v36, v37);

  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    MEMORY[0x21CEA23B0](10, 0xE100000000000000, v25);
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v25);
}

uint64_t sub_21733F284(uint64_t a1)
{
  v2 = v1;
  if (v1[8])
  {
    sub_217753208();
    sub_217751FF8();
  }

  else
  {
    sub_217753208();
  }

  sub_217202078((v1 + 2), v11, &qword_27CB24188, &dword_217758930);
  if (v12)
  {
    OUTLINED_FUNCTION_0_22();
    v4 = v9;
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    (*(v5 + 40))(a1, v4, v5);
    sub_217283154(v8);
  }

  else
  {
    sub_217753208();
  }

  v6 = *v1;
  if (*(v2 + 8) == 1)
  {
    swift_beginAccess();
    v6 = *(v6 + 56);
  }

  return MEMORY[0x21CEA3550](*(v6 + 16));
}

unint64_t sub_21733F3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25AB8;
  if (!qword_27CB25AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25AB8);
  }

  return result;
}

uint64_t sub_21733F400(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 696))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21733F440(uint64_t result, int a2, int a3)
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
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 696) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 696) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21733F630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21733F678()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21775E030;
  KeyPath = swift_getKeyPath("HM=e");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AC8, &qword_21775E0E0);
  swift_allocObject();
  *(v0 + 32) = sub_217383700(KeyPath);
  v2 = swift_getKeyPath(" M=e");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AD0, &unk_21775E110);
  swift_allocObject();
  result = sub_217383428(v2, &unk_28295B948);
  *(v0 + 40) = result;
  qword_27CB8A228 = v0;
  return result;
}

uint64_t sub_21733F75C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21733F7B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *sub_21733F80C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21775E030;
  KeyPath = swift_getKeyPath(byte_21775E060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AC0, &qword_21775E088);
  swift_allocObject();
  *(v0 + 32) = sub_217394020(KeyPath, &unk_28295B9B8);
  v2 = swift_getKeyPath("hM=e");
  swift_allocObject();
  result = sub_217394020(v2, &unk_28295B9E8);
  *(v0 + 40) = result;
  qword_27CB8A230 = v0;
  return result;
}

uint64_t sub_21733F8F4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_21733F94C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

id sub_21733F9A4()
{
  v0 = objc_allocWithZone(MusicKit_SoftLinking_MPModelGenreKind);

  return [v0 init];
}

uint64_t MusicLibraryExtendedStorage<>.isEqual<A>(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[1] = a5;
  v8 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v14);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v16, a1, a3, v20);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v13, 0, 1, a2);
    (*(v18 + 32))(v22, v13, a2);
    v24 = sub_217751F08();
    (*(v18 + 8))(v22, a2);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v13, 1, 1, a2);
    (*(v10 + 8))(v13, v8);
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t static AnyMusicLibraryExtendedStorage.== infix(_:_:)(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AD8, &qword_21775E120);
  return v5(a2, v6, v3, v4) & 1;
}

uint64_t sub_21733FD10(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

uint64_t AnyMusicLibraryExtendedStorage.hashValue.getter()
{
  sub_2177531E8();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 24))(v4, v1, v2);
  return sub_217753238();
}

uint64_t sub_21733FE48(uint64_t a1)
{
  sub_2177531E8();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 24))(v5, v2, v3);
  return sub_217753238();
}

unint64_t sub_21733FEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25AE0;
  if (!qword_27CB25AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25AE0);
  }

  return result;
}

uint64_t sub_21733FF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21733FEBC(a1, a2, a3);

  return MusicLibraryExtendedStorage<>.isEqual<A>(to:)(a1, a3, a2, v6, v7);
}

uint64_t sub_21733FFDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61727475656ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657469726F766166 && a2 == 0xE900000000000064;
    if (v6 || (sub_217753058() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x64656B696C736964 && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_217753058();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_2173400FC(char a1)
{
  if (!a1)
  {
    return 0x6C61727475656ELL;
  }

  if (a1 == 1)
  {
    return 0x657469726F766166;
  }

  return 0x64656B696C736964;
}

uint64_t sub_217340160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21733FFDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_217340188@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2173400F4();
  *a1 = result;
  return result;
}

uint64_t sub_2173401B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217340698(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173401EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217340698(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217340228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173406EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217340264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2173406EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2173402A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217340740(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2173402DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217340740(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_217340318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217340794(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_217340354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_217340794(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t LegacyModelFavoriteStatus.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AE8, &qword_21775E210);
  OUTLINED_FUNCTION_0_0();
  v39 = v4;
  v40 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v38 = &v32 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AF0, &qword_21775E218);
  OUTLINED_FUNCTION_0_0();
  v36 = v8;
  v37 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v35 = &v32 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25AF8, &qword_21775E220);
  OUTLINED_FUNCTION_0_0();
  v33 = v12;
  v34 = v11;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25B00, &qword_21775E228);
  OUTLINED_FUNCTION_0_0();
  v18 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  v21 = &v32 - v20;
  v22 = *v1;
  v23 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217340698(v23, v24, v25);
  v26 = sub_2177532F8();
  if (v22)
  {
    if (v22 == 1)
    {
      v42 = 1;
      sub_217340740(v26, v27, v28);
      v15 = v35;
      OUTLINED_FUNCTION_2_27(&type metadata for LegacyModelFavoriteStatus.FavoritedCodingKeys, &v42);
      v30 = v36;
      v29 = v37;
    }

    else
    {
      v43 = 2;
      sub_2173406EC(v26, v27, v28);
      v15 = v38;
      OUTLINED_FUNCTION_2_27(&type metadata for LegacyModelFavoriteStatus.DislikedCodingKeys, &v43);
      v30 = v39;
      v29 = v40;
    }
  }

  else
  {
    v41 = 0;
    sub_217340794(v26, v27, v28);
    OUTLINED_FUNCTION_2_27(&type metadata for LegacyModelFavoriteStatus.NeutralCodingKeys, &v41);
    v30 = v33;
    v29 = v34;
  }

  (*(v30 + 8))(v15, v29);
  return (*(v18 + 8))(v21, v16);
}

unint64_t sub_217340698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25B08;
  if (!qword_27CB25B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B08);
  }

  return result;
}

unint64_t sub_2173406EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25B10;
  if (!qword_27CB25B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B10);
  }

  return result;
}

unint64_t sub_217340740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25B18;
  if (!qword_27CB25B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B18);
  }

  return result;
}

unint64_t sub_217340794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25B20;
  if (!qword_27CB25B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B20);
  }

  return result;
}

uint64_t LegacyModelFavoriteStatus.hashValue.getter()
{
  v1 = *v0;
  sub_2177531E8();
  MEMORY[0x21CEA3550](v1);
  return sub_217753238();
}

uint64_t LegacyModelFavoriteStatus.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v61 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25B28, &qword_21775E230);
  OUTLINED_FUNCTION_0_0();
  v62 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v64 = &v53 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25B30, &qword_21775E238);
  OUTLINED_FUNCTION_0_0();
  v59 = v7;
  v60 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25B38, &qword_21775E240);
  OUTLINED_FUNCTION_0_0();
  v58 = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25B40, &unk_21775E248);
  OUTLINED_FUNCTION_0_0();
  v63 = v17;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v21 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217340698(v21, v22, v23);
  v24 = v66;
  sub_2177532C8();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v55 = v11;
  v56 = v15;
  v57 = v10;
  v26 = v64;
  v25 = v65;
  v66 = a1;
  sub_217752EB8();
  result = sub_21733CF68();
  if (v29 == v30 >> 1)
  {
    goto LABEL_9;
  }

  v54 = 0;
  if (v29 >= (v30 >> 1))
  {
    __break(1u);
  }

  else
  {
    LODWORD(v31) = *(v28 + v29);
    sub_21733CF64();
    v33 = v32;
    v35 = v34;
    v36 = swift_unknownObjectRelease();
    v39 = v33 == v35 >> 1;
    v40 = v62;
    if (!v39)
    {
LABEL_9:
      v45 = sub_217752B48();
      swift_allocError();
      v47 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25518, &qword_21775CDA0);
      *v47 = &type metadata for LegacyModelFavoriteStatus;
      sub_217752DF8();
      sub_217752B08();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v63 + 8))(v20, v16);
      a1 = v66;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    if (v31)
    {
      if (v31 == 1)
      {
        v68[0] = 1;
        sub_217340740(v36, v37, v38);
        v41 = v57;
        OUTLINED_FUNCTION_4_29(&type metadata for LegacyModelFavoriteStatus.FavoritedCodingKeys, v68);
        v42 = v61;
        v43 = v16;
        v44 = v63;
        swift_unknownObjectRelease();
        (*(v59 + 8))(v41, v60);
        (*(v44 + 8))(v20, v43);
      }

      else
      {
        LODWORD(v60) = v31;
        v68[1] = 2;
        sub_2173406EC(v36, v37, v38);
        v49 = v54;
        sub_217752DE8();
        v42 = v61;
        v31 = v16;
        v50 = v63;
        if (v49)
        {
          (*(v63 + 8))(v20, v31);
          swift_unknownObjectRelease();
          a1 = v66;
          return __swift_destroy_boxed_opaque_existential_1(a1);
        }

        swift_unknownObjectRelease();
        (*(v40 + 8))(v26, v25);
        (*(v50 + 8))(v20, v31);
        LOBYTE(v31) = v60;
      }
    }

    else
    {
      v67 = 0;
      sub_217340794(v36, v37, v38);
      v48 = v56;
      OUTLINED_FUNCTION_4_29(&type metadata for LegacyModelFavoriteStatus.NeutralCodingKeys, &v67);
      swift_unknownObjectRelease();
      (*(v58 + 8))(v48, v55);
      v51 = OUTLINED_FUNCTION_3_1();
      v52(v51);
      v42 = v61;
    }

    *v42 = v31;
    return __swift_destroy_boxed_opaque_existential_1(v66);
  }

  return result;
}

unint64_t sub_217340E60()
{
  result = qword_27CB25B48;
  if (!qword_27CB25B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB25B50, &qword_21775E258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B48);
  }

  return result;
}

unint64_t sub_217340EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25B58;
  if (!qword_27CB25B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B58);
  }

  return result;
}

uint64_t _s4KindOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_217340FB4(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2173410C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25B60;
  if (!qword_27CB25B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B60);
  }

  return result;
}

unint64_t sub_21734111C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25B68;
  if (!qword_27CB25B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B68);
  }

  return result;
}

unint64_t sub_217341174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB25B70;
  if (!qword_27CB25B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB25B70);
  }

  return result;
}