uint64_t static Logger.alert.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v2 = sub_265779DEC();
  v3 = __swift_project_value_buffer(v2, qword_2814476E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26575F368(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26575F444(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_265779C1C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26575F520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_26575F5D4(a1 + 96, v9);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 16))(a2, a3, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_26575F5D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t InMemoryAlertStore.alert(identifier:)@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  v5 = *v3;
  if (*(v5 + 16) && (v6 = sub_26576435C(a2, a3), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(v5 + 56);
    v10 = type metadata accessor for Alert(0);
    v17 = *(v10 - 8);
    sub_265763F98(v9 + *(v17 + 72) * v8, a1);
    v11 = *(v17 + 56);
    v12 = a1;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = type metadata accessor for Alert(0);
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a1;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_26575F7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_265779C1C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26575F8A0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t AlertCenter.presentAlert(identifier:payload:coordinated:dismissOption:breaksThroughFocus:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, int a7)
{
  v8 = v7;
  v58 = a7;
  v66 = a3;
  v67 = a4;
  v59 = a2;
  v56 = a1;
  v63 = sub_265779C1C();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Alert(0);
  v60 = *(v57 - 8);
  v13 = MEMORY[0x28223BE20](v57);
  v64 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v52 - v16);
  v62 = v18;
  MEMORY[0x28223BE20](v15);
  v65 = &v52 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D628, &qword_26577AC10);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v52 - v21;
  v54 = *a6;
  v55 = *(a6 + 8);
  if (a5)
  {
    __swift_project_boxed_opaque_existential_1((v8 + 32), *(v8 + 56));
    sub_265779CFC();
    v23 = sub_265779D3C();
    LODWORD(v68) = (*(*(v23 - 8) + 48))(v22, 1, v23) == 1;
    sub_26575FF24(v22, &qword_28001D628, &qword_26577AC10);
  }

  else
  {
    LODWORD(v68) = 1;
  }

  sub_265779BFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D630, &qword_26577AC18);
  v24 = *(type metadata accessor for Alert.HistoryItem(0) - 8);
  v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_26577ABF0;
  v27 = v26 + v25;
  __swift_project_boxed_opaque_existential_1((v8 + 32), *(v8 + 56));
  v28 = sub_265779D0C();
  v30 = v29;
  v31 = v8;
  v32 = *(v8 + 56);
  v53 = v31;
  __swift_project_boxed_opaque_existential_1((v31 + 32), v32);
  v33 = sub_265779D0C();
  v35 = v34;
  result = sub_265779BFC();
  *v27 = v68;
  *(v27 + 8) = v28;
  *(v27 + 16) = v30;
  *(v27 + 24) = v33;
  *(v27 + 32) = v35;
  *(v27 + 40) = 0;
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v37 = v57;
  v38 = v59;
  *v17 = v56;
  v17[1] = v38;
  v39 = v61;
  v40 = v63;
  (*(v61 + 16))(v17 + v37[5], v12, v63);
  v41 = v17 + v37[7];
  *v41 = v54;
  v41[8] = v55;
  *(v17 + v37[8]) = v58 & 1;

  sub_265779BAC();
  (*(v39 + 8))(v12, v40);
  v42 = (v17 + v37[9]);
  v44 = v66;
  v43 = v67;
  *v42 = v66;
  v42[1] = v43;
  *(v17 + v37[10]) = v26;
  v45 = v65;
  sub_26575FFA4(v17, v65, type metadata accessor for Alert);
  v46 = v53;
  v68 = *(v53 + 16);
  v47 = v64;
  sub_26576000C(v45, v64, type metadata accessor for Alert);
  v48 = (*(v60 + 80) + 24) & ~*(v60 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v46;
  sub_26575FFA4(v47, v49 + v48, type metadata accessor for Alert);
  v50 = swift_allocObject();
  *(v50 + 16) = sub_2657618B4;
  *(v50 + 24) = v49;
  aBlock[4] = sub_2657618F4;
  aBlock[5] = v50;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2657600DC;
  aBlock[3] = &block_descriptor_37;
  v51 = _Block_copy(aBlock);
  sub_265760088(v44, v43);

  dispatch_sync(v68, v51);
  _Block_release(v51);
  sub_2657622E0(v45, type metadata accessor for Alert);
  LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

  if (v48)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_26575FF24(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26575FFA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26576000C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265760088(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_265760104(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D628, &qword_26577AC10);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v179 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v177 - v7;
  v188 = type metadata accessor for Alert(0);
  v9 = MEMORY[0x28223BE20](v188);
  v189 = (&v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v183 = (&v177 - v12);
  v13 = MEMORY[0x28223BE20](v11);
  v178 = (&v177 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v177 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v182 = (&v177 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = (&v177 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v185 = (&v177 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v186 = (&v177 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v180 = (&v177 - v28);
  MEMORY[0x28223BE20](v27);
  v30 = &v177 - v29;
  v31 = sub_265779E3C();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = (&v177 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v2[2];
  *v34 = v35;
  (*(v32 + 104))(v34, *MEMORY[0x277D85200], v31);
  v36 = v35;
  LOBYTE(v35) = sub_265779E4C();
  (*(v32 + 8))(v34, v31);
  if (v35)
  {
    v184 = v8;
    sub_2657618F8(*a1, a1[1]);
    if (qword_2814476D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v37 = sub_265779DEC();
  v38 = __swift_project_value_buffer(v37, qword_2814476E0);
  sub_26576000C(a1, v30, type metadata accessor for Alert);

  v39 = sub_265779DDC();
  v40 = sub_265779EBC();

  v41 = os_log_type_enabled(v39, v40);
  v177 = v17;
  v181 = v22;
  if (v41)
  {
    v42 = swift_slowAlloc();
    v187 = v38;
    v43 = v42;
    v44 = swift_slowAlloc();
    v190 = v44;
    *v43 = 136380931;
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v45 = sub_265779D0C();
    v47 = sub_265761C38(v45, v46, &v190);

    *(v43 + 4) = v47;
    *(v43 + 12) = 2082;
    v48 = Alert.description.getter();
    v50 = v49;
    sub_2657622E0(v30, type metadata accessor for Alert);
    v51 = sub_265761C38(v48, v50, &v190);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_26575E000, v39, v40, "(%{private}s): Advancing alert to next state: %{public}s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v44, -1, -1);
    v52 = v43;
    v38 = v187;
    MEMORY[0x26675E650](v52, -1, -1);
  }

  else
  {

    sub_2657622E0(v30, type metadata accessor for Alert);
  }

  if (sub_265762340(a1))
  {
    v53 = v189;
    sub_26576000C(a1, v189, type metadata accessor for Alert);

    v54 = sub_265779DDC();
    v55 = sub_265779EBC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v190 = v57;
      *v56 = 136380931;
      __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
      v58 = sub_265779D0C();
      v60 = sub_265761C38(v58, v59, &v190);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2082;
      v61 = *v53;
      v62 = v53[1];

      sub_2657622E0(v53, type metadata accessor for Alert);
      v63 = sub_265761C38(v61, v62, &v190);

      *(v56 + 14) = v63;
      v64 = "(%{private}s): Current state is obsolete; abandoning further action: %{public}s";
LABEL_9:
      _os_log_impl(&dword_26575E000, v54, v55, v64, v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26675E650](v57, -1, -1);
      MEMORY[0x26675E650](v56, -1, -1);

      return;
    }

    goto LABEL_57;
  }

  v65 = *(a1 + *(v188 + 40));
  v66 = *(v65 + 16);
  if (!v66)
  {
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v67 = v66 - 1;
  v68 = *(type metadata accessor for Alert.HistoryItem(0) - 8);
  v69 = v65 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
  v70 = *(v68 + 72);
  v71 = v69 + v70 * v67;
  v72 = *(v71 + 40);
  if (!(v72 >> 6))
  {
    if (v72)
    {
      v53 = v186;
      sub_26576000C(a1, v186, type metadata accessor for Alert);

      v54 = sub_265779DDC();
      v55 = sub_265779EBC();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v190 = v57;
        *v56 = 136380931;
        __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
        v76 = sub_265779D0C();
        v78 = sub_265761C38(v76, v77, &v190);

        *(v56 + 4) = v78;
        *(v56 + 12) = 2082;
        v79 = *v53;
        v80 = v53[1];

        sub_2657622E0(v53, type metadata accessor for Alert);
        v81 = sub_265761C38(v79, v80, &v190);

        *(v56 + 14) = v81;
        v64 = "(%{private}s): Ignoring alert that is waiting to be presented: %{public}s";
        goto LABEL_9;
      }

      goto LABEL_57;
    }

    v100 = *(v71 + 24);
    v99 = *(v71 + 32);
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

    if (v100 == sub_265779D0C() && v99 == v101)
    {
    }

    else
    {
      v115 = sub_26577A0BC();

      if ((v115 & 1) == 0)
      {
        v53 = v180;
        sub_26576000C(a1, v180, type metadata accessor for Alert);

        v54 = sub_265779DDC();
        v55 = sub_265779EBC();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v190 = v57;
          *v56 = 136380931;
          __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
          v146 = sub_265779D0C();
          v148 = sub_265761C38(v146, v147, &v190);

          *(v56 + 4) = v148;
          *(v56 + 12) = 2082;
          v149 = *v53;
          v150 = v53[1];

          sub_2657622E0(v53, type metadata accessor for Alert);
          v151 = sub_265761C38(v149, v150, &v190);

          *(v56 + 14) = v151;
          v64 = "(%{private}s): Ignoring alert request not intended for this device: %{public}s";
          goto LABEL_9;
        }

        goto LABEL_57;
      }
    }

    sub_2657626C0(a1);
    return;
  }

  if (v72 >> 6 != 1)
  {
    v83 = *(v71 + 24);
    v82 = *(v71 + 32);
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

    if (v83 == sub_265779D0C() && v82 == v84)
    {
    }

    else
    {
      v102 = sub_26577A0BC();

      if ((v102 & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
        v103 = sub_265779D0C();
        v105 = sub_26576EFDC(v103, v104);

        if ((v105 & 1) == 0)
        {
          sub_26576F174(a1);
        }
      }
    }

    sub_265766ADC(a1);
    return;
  }

  v187 = v38;
  v74 = *(v71 + 8);
  v73 = *(v71 + 16);
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

  if (v74 == sub_265779D0C() && v73 == v75)
  {
  }

  else
  {
    v85 = sub_26577A0BC();

    if ((v85 & 1) == 0)
    {
      v53 = v183;
      sub_26576000C(a1, v183, type metadata accessor for Alert);

      v54 = sub_265779DDC();
      v55 = sub_265779EBC();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v190 = v57;
        *v56 = 136380931;
        __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
        v109 = sub_265779D0C();
        v111 = sub_265761C38(v109, v110, &v190);

        *(v56 + 4) = v111;
        *(v56 + 12) = 2082;
        v112 = *v53;
        v113 = v53[1];

        sub_2657622E0(v53, type metadata accessor for Alert);
        v114 = sub_265761C38(v112, v113, &v190);

        *(v56 + 14) = v114;
        v64 = "(%{private}s): Ignoring failing alert that originated on another device: %{public}s";
        goto LABEL_9;
      }

      goto LABEL_57;
    }
  }

  v86 = *(v65 + 16);
  if (!v86)
  {
    goto LABEL_71;
  }

  v87 = v69 + (v86 - 1) * v70;
  if (*v87 == 1)
  {
    v88 = v185;
    sub_26576000C(a1, v185, type metadata accessor for Alert);

    v89 = sub_265779DDC();
    v90 = sub_265779EAC();

    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v190 = v92;
      *v91 = 136315394;
      __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
      v93 = sub_265779D0C();
      v95 = sub_265761C38(v93, v94, &v190);

      *(v91 + 4) = v95;
      *(v91 + 12) = 2082;
      v96 = *v88;
      v97 = v88[1];

      sub_2657622E0(v88, type metadata accessor for Alert);
      v98 = sub_265761C38(v96, v97, &v190);

      *(v91 + 14) = v98;
      _os_log_impl(&dword_26575E000, v89, v90, "(%s): Mandatory alert failed to be displayed: %{public}s", v91, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26675E650](v92, -1, -1);
      MEMORY[0x26675E650](v91, -1, -1);
    }

    else
    {

      sub_2657622E0(v88, type metadata accessor for Alert);
    }

    sub_265765264(a1);
    return;
  }

  v107 = *(v87 + 24);
  v106 = *(v87 + 32);
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

  if (v107 != sub_265779D0C() || v106 != v108)
  {
    v116 = sub_26577A0BC();

    if (v116)
    {
      goto LABEL_42;
    }

    v152 = *(v65 + 16);
    if (v152)
    {
      v153 = v69 + (v152 - 1) * v70;
      v155 = *(v153 + 24);
      v154 = *(v153 + 32);
      __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

      v156 = v179;
      sub_265779CFC();
      v157 = sub_265779D3C();
      v158 = *(v157 - 8);
      if ((*(v158 + 48))(v156, 1, v157) == 1)
      {
        sub_26575FF24(v156, &qword_28001D628, &qword_26577AC10);

        goto LABEL_55;
      }

      v165 = sub_265779D2C();
      v167 = v166;
      (*(v158 + 8))(v156, v157);
      if (v155 == v165 && v154 == v167)
      {

        v120 = v177;
      }

      else
      {
        v168 = sub_26577A0BC();

        v120 = v177;
        if ((v168 & 1) == 0)
        {
LABEL_55:
          v53 = v178;
          sub_26576000C(a1, v178, type metadata accessor for Alert);

          v54 = sub_265779DDC();
          v55 = sub_265779EAC();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v190 = v57;
            *v56 = 136380931;
            __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
            v159 = sub_265779D0C();
            v161 = sub_265761C38(v159, v160, &v190);

            *(v56 + 4) = v161;
            *(v56 + 12) = 2082;
            v162 = *v53;
            v163 = v53[1];

            sub_2657622E0(v53, type metadata accessor for Alert);
            v164 = sub_265761C38(v162, v163, &v190);

            *(v56 + 14) = v164;
            v64 = "(%{private}s): Ignoring alert from unexpected device: %{public}s";
            goto LABEL_9;
          }

LABEL_57:

          sub_2657622E0(v53, type metadata accessor for Alert);
          return;
        }
      }

      sub_26576000C(a1, v120, type metadata accessor for Alert);

      v121 = sub_265779DDC();
      v122 = sub_265779EBC();

      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v190 = v124;
        *v123 = 136380931;
        __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
        v169 = sub_265779D0C();
        v171 = sub_265761C38(v169, v170, &v190);

        *(v123 + 4) = v171;
        *(v123 + 12) = 2082;
        v172 = *v120;
        v173 = v120[1];

        sub_2657622E0(v120, type metadata accessor for Alert);
        v174 = sub_265761C38(v172, v173, &v190);

        *(v123 + 14) = v174;
        v131 = "(%{private}s): Remote device failed to show optional alert; retrying as mandatory alert: %{public}s";
        goto LABEL_45;
      }

LABEL_66:

      sub_2657622E0(v120, type metadata accessor for Alert);
      goto LABEL_67;
    }

LABEL_72:
    __break(1u);
    return;
  }

LABEL_42:
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  v117 = v184;
  sub_265779CFC();
  v118 = sub_265779D3C();
  v119 = *(v118 - 8);
  if ((*(v119 + 48))(v117, 1, v118) == 1)
  {
    sub_26575FF24(v117, &qword_28001D628, &qword_26577AC10);
    v120 = v182;
    sub_26576000C(a1, v182, type metadata accessor for Alert);

    v121 = sub_265779DDC();
    v122 = sub_265779EBC();

    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v190 = v124;
      *v123 = 136380931;
      __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
      v125 = sub_265779D0C();
      v127 = sub_265761C38(v125, v126, &v190);

      *(v123 + 4) = v127;
      *(v123 + 12) = 2082;
      v128 = *v120;
      v129 = v120[1];

      sub_2657622E0(v120, type metadata accessor for Alert);
      v130 = sub_265761C38(v128, v129, &v190);

      *(v123 + 14) = v130;
      v131 = "(%{private}s): Optional alert failed; retrying as mandatory alert: %{public}s";
LABEL_45:
      _os_log_impl(&dword_26575E000, v121, v122, v131, v123, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26675E650](v124, -1, -1);
      MEMORY[0x26675E650](v123, -1, -1);

LABEL_67:
      __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
      v175 = sub_265779D0C();
      LOBYTE(v190) = 1;
      sub_26576DC94(a1, v175, v176, &v190);

      return;
    }

    goto LABEL_66;
  }

  v132 = sub_265779D2C();
  v134 = v133;
  (*(v119 + 8))(v117, v118);
  v135 = v181;
  sub_26576000C(a1, v181, type metadata accessor for Alert);

  v136 = sub_265779DDC();
  v137 = sub_265779EBC();

  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v190 = v189;
    *v138 = 136380931;
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    LODWORD(v188) = v137;
    v139 = sub_265779D0C();
    v141 = sub_265761C38(v139, v140, &v190);

    *(v138 + 4) = v141;
    *(v138 + 12) = 2082;
    v142 = *v135;
    v143 = v135[1];

    sub_2657622E0(v135, type metadata accessor for Alert);
    v144 = sub_265761C38(v142, v143, &v190);

    *(v138 + 14) = v144;
    _os_log_impl(&dword_26575E000, v136, v188, "(%{private}s): Sending failed optional alert to remote device: %{public}s", v138, 0x16u);
    v145 = v189;
    swift_arrayDestroy();
    MEMORY[0x26675E650](v145, -1, -1);
    MEMORY[0x26675E650](v138, -1, -1);
  }

  else
  {

    sub_2657622E0(v135, type metadata accessor for Alert);
  }

  LOBYTE(v190) = 0;
  sub_26576DC94(a1, v132, v134, &v190);
}

uint64_t sub_2657618F8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_265779E3C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v3[2];
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v11 = v10;
  LOBYTE(v10) = sub_265779E4C();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  result = swift_beginAccess();
  v13 = v3[17];
  if (!*(v13 + 16))
  {
    return result;
  }

  v14 = sub_26576435C(a1, a2);
  if ((v15 & 1) == 0)
  {
  }

  v9 = *(*(v13 + 56) + 8 * v14);

  if (qword_2814476D8 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v16 = sub_265779DEC();
  __swift_project_value_buffer(v16, qword_2814476E0);

  v17 = sub_265779DDC();
  v18 = sub_265779EBC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 136380931;
    v24[1] = v9;
    v25[0] = v20;
    __swift_project_boxed_opaque_existential_1(v3 + 4, v3[7]);
    v21 = sub_265779D0C();
    v23 = sub_265761C38(v21, v22, v25);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_265761C38(a1, a2, v25);
    _os_log_impl(&dword_26575E000, v17, v18, "(%{private}s): Watchdog cancelled for: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v20, -1, -1);
    MEMORY[0x26675E650](v19, -1, -1);
  }

  sub_265779C3C();
  swift_beginAccess();

  sub_265778BC0(0, a1, a2);
  swift_endAccess();
}

unint64_t sub_265761C38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265761D04(v11, 0, 0, 1, a1, a2);
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
    sub_265761E10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_265761D04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26576FDF8(a5, a6);
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
    result = sub_265779F8C();
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

uint64_t sub_265761E10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t Alert.description.getter()
{
  v1 = type metadata accessor for Alert.HistoryItem(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_265779F5C();
  MEMORY[0x26675DF80](0x696669746E656469, 0xEC000000203A7265);
  MEMORY[0x26675DF80](*v0, v0[1]);
  MEMORY[0x26675DF80](0xD000000000000010, 0x800000026577C3C0);
  v5 = type metadata accessor for Alert(0);
  sub_265779C1C();
  sub_265762188(&qword_2814476B8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v6 = sub_26577A0AC();
  MEMORY[0x26675DF80](v6);

  MEMORY[0x26675DF80](0x73696D736964203BLL, 0xEF203A6574614473);
  v7 = sub_26577A0AC();
  MEMORY[0x26675DF80](v7);

  MEMORY[0x26675DF80](0xD000000000000011, 0x800000026577C3E0);
  v8 = v0 + v5[7];
  v9 = *v8;
  LOBYTE(v8) = v8[8];
  v17 = v9;
  v18 = v8;
  v10 = sub_265779E5C();
  MEMORY[0x26675DF80](v10);

  MEMORY[0x26675DF80](0xD000000000000016, 0x800000026577C400);
  if (*(v0 + v5[8]))
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (*(v0 + v5[8]))
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x26675DF80](v11, v12);

  result = MEMORY[0x26675DF80](0xD000000000000010, 0x800000026577C420);
  v14 = *(v0 + v5[10]);
  v15 = *(v14 + 16);
  if (v15)
  {
    sub_265762204(v14 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * (v15 - 1), v4, type metadata accessor for Alert.HistoryItem);
    v16 = sub_265779E5C();
    MEMORY[0x26675DF80](v16);

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_265762188(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_2657621E4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265762204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2657622A4(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

uint64_t sub_2657622E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_265762340(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265779C1C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v41 - v9;
  result = type metadata accessor for Alert(0);
  v11 = *(a1 + *(result + 40));
  v12 = *(v11 + 16);
  if (!v12)
  {
    __break(1u);
    goto LABEL_25;
  }

  v41 = v8;
  v42 = v5;
  v43 = v4;
  v13 = v12 - 1;
  v14 = type metadata accessor for Alert.HistoryItem(0);
  v15 = v11 + ((*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80));
  v16 = *(*(v14 - 8) + 72);
  v17 = v15 + v16 * v13;
  v19 = *(v17 + 8);
  v18 = *(v17 + 16);
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

  if (v19 == sub_265779D0C() && v18 == v20)
  {

    goto LABEL_15;
  }

  v22 = sub_26577A0BC();

  if (v22)
  {
LABEL_15:
    v30 = 0;
    return v30 & 1;
  }

  v23 = *(v11 + 16);
  if (!v23)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v24 = v15 + (v23 - 1) * v16;
  v26 = *(v24 + 24);
  v25 = *(v24 + 32);
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);

  if (v26 == sub_265779D0C() && v25 == v27)
  {

    goto LABEL_18;
  }

  v29 = sub_26577A0BC();

  if ((v29 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  v31 = *(v11 + 16);
  if (!v31)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v32 = *(v15 + (v31 - 1) * v16 + 40);
  if (v32 > 0x3F)
  {
    goto LABEL_15;
  }

  if (!*(v2[11] + 16))
  {
    goto LABEL_15;
  }

  result = sub_265764524(v32);
  if ((v33 & 1) == 0)
  {
    goto LABEL_15;
  }

  v34 = *(v11 + 16);
  if (v34)
  {
    v35 = v15 + (v34 - 1) * v16;
    v37 = v41;
    v36 = v42;
    v38 = v43;
    (*(v42 + 16))(v41, v35 + *(v14 + 32), v43);
    v39 = v44;
    sub_265779BAC();
    v40 = *(v36 + 8);
    v40(v37, v38);
    sub_265779BFC();
    v30 = sub_265779BBC();
    v40(v37, v38);
    v40(v39, v38);
    return v30 & 1;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_2657626C0(uint64_t a1)
{
  v3 = type metadata accessor for Alert.HistoryItem(0);
  v66 = *(v3 - 8);
  v67 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v68 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = (&v59 - v7);
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - v9;
  v71 = type metadata accessor for Alert(0);
  v65 = *(v71 - 1);
  v11 = *(v65 + 64);
  v12 = MEMORY[0x28223BE20](v71);
  v13 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v69 = &v59 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = (&v59 - v16);
  v18 = sub_265779E3C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v70 = v1;
  v22 = v1[2];
  *v21 = v22;
  (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
  v64 = v22;
  LOBYTE(v22) = sub_265779E4C();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v23 = *(a1 + *(v71 + 10));
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = a1;
      v62 = (*(v66 + 80) + 32) & ~*(v66 + 80);
      v63 = v11;
      v26 = *(v66 + 72);
      v60 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      v61 = v26;
      sub_26576000C(v23 + v62 + v26 * (v24 - 1), v8, type metadata accessor for Alert.HistoryItem);
      v27 = *v8;
      v28 = v17;
      v29 = v8[1];
      v30 = v8[2];
      v32 = v8[3];
      v31 = v8[4];
      v66 = v25;

      sub_265779BFC();
      sub_2657622E0(v8, type metadata accessor for Alert.HistoryItem);
      *v10 = v27;
      *(v10 + 1) = v29;
      *(v10 + 2) = v30;
      v17 = v28;
      *(v10 + 3) = v32;
      *(v10 + 4) = v31;
      v21 = v66;
      v10[40] = 1;
      sub_26576000C(v21, v28, type metadata accessor for Alert);
      v18 = v68;
      sub_26576000C(v10, v68, type metadata accessor for Alert.HistoryItem);
      v13 = *(v71 + 10);
      v8 = *&v13[v17];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_20:
  v8 = sub_265763004(0, v8[2] + 1, 1, v8);
LABEL_4:
  v33 = v69;
  v35 = v8[2];
  v34 = v8[3];
  if (v35 >= v34 >> 1)
  {
    v8 = sub_265763004((v34 > 1), v35 + 1, 1, v8);
  }

  sub_2657622E0(v10, type metadata accessor for Alert.HistoryItem);
  v8[2] = v35 + 1;
  sub_26575FFA4(v18, v8 + v62 + v35 * v61, type metadata accessor for Alert.HistoryItem);
  *&v13[v17] = v8;
  v36 = v70;
  sub_2657631E0(v17);
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v37 = sub_265779DEC();
  __swift_project_value_buffer(v37, qword_2814476E0);
  sub_26576000C(v21, v33, type metadata accessor for Alert);

  v38 = sub_265779DDC();
  v39 = sub_265779EBC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v72 = v41;
    *v40 = 136380931;
    __swift_project_boxed_opaque_existential_1(v36 + 4, v36[7]);
    v42 = sub_265779D0C();
    v44 = sub_265761C38(v42, v43, &v72);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2082;
    v45 = Alert.description.getter();
    v47 = v46;
    sub_2657622E0(v33, type metadata accessor for Alert);
    v48 = sub_265761C38(v45, v47, &v72);

    *(v40 + 14) = v48;
    _os_log_impl(&dword_26575E000, v38, v39, "(%{private}s): Attempting to present alert on local device: %{public}s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v41, -1, -1);
    MEMORY[0x26675E650](v40, -1, -1);
  }

  else
  {

    sub_2657622E0(v33, type metadata accessor for Alert);
  }

  v49 = v63;
  if (*(v36[11] + 16))
  {
    sub_265764524(1);
    if (v50)
    {
      goto LABEL_17;
    }
  }

  if (qword_281447838 != -1)
  {
    swift_once();
  }

  if (*(off_281447840 + 2))
  {
    sub_265764524(1);
    if (v51)
    {
LABEL_17:
      sub_265779CDC();
      v52 = sub_265779CAC();
      v53 = sub_265779C8C();
      v71 = &v59;
      MEMORY[0x28223BE20](v53);
      *(&v59 - 4) = v36;
      *(&v59 - 3) = v17;
      *(&v59 - 2) = v52;
      v54 = v60;
      sub_26576000C(v17, v60, type metadata accessor for Alert);
      v55 = v17;
      v56 = (*(v65 + 80) + 24) & ~*(v65 + 80);
      v57 = (v49 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      *(v58 + 16) = v36;
      sub_26575FFA4(v54, v58 + v56, type metadata accessor for Alert);
      *(v58 + v57) = v52;

      sub_265779C5C();

      sub_2657622E0(v55, type metadata accessor for Alert);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_265762EB8()
{
  v1 = (type metadata accessor for Alert(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_265779C1C();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[8], v7);
  sub_265764C28(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

void *sub_265763004(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D630, &qword_26577AC18);
  v10 = *(type metadata accessor for Alert.HistoryItem(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(type metadata accessor for Alert.HistoryItem(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

uint64_t sub_2657631E0(uint64_t *a1)
{
  v2 = v1;
  v91 = a1;
  v90 = type metadata accessor for Alert(0);
  v3 = *(v90 - 8);
  v4 = MEMORY[0x28223BE20](v90);
  v88 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v87 = &v82 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v86 = &v82 - v9;
  MEMORY[0x28223BE20](v8);
  v83 = (&v82 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D670, &qword_26577AD60);
  MEMORY[0x28223BE20](v11);
  v13 = &v82 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v89 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v82 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v82 - v20);
  v22 = sub_265779E3C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = (&v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(v2 + 16);
  *v25 = v26;
  (*(v23 + 104))(v25, *MEMORY[0x277D85200], v22);
  v27 = v26;
  LOBYTE(v26) = sub_265779E4C();
  (*(v23 + 8))(v25, v22);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
LABEL_19:
    v72 = sub_265779DEC();
    __swift_project_value_buffer(v72, qword_2814476E0);
    v73 = v2;
    v41 = v88;
    sub_26576000C(v73, v88, type metadata accessor for Alert);

    v42 = sub_265779DDC();
    v43 = sub_265779EBC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v92[0] = v45;
      *v44 = 136380931;
      __swift_project_boxed_opaque_existential_1(v21 + 4, v21[7]);
      v74 = sub_265779D0C();
      v76 = sub_265761C38(v74, v75, v92);

      *(v44 + 4) = v76;
      *(v44 + 12) = 2082;
      v77 = Alert.description.getter();
      v79 = v78;
      sub_2657622E0(v41, type metadata accessor for Alert);
      v80 = sub_265761C38(v77, v79, v92);

      *(v44 + 14) = v80;
      v53 = "(%{private}s): Not syncing unchanged alert: %{public}s";
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  swift_beginAccess();
  v28 = v2;
  sub_26575F5D4(v2 + 96, v92);
  v29 = v92[4];
  __swift_project_boxed_opaque_existential_1(v92, v92[3]);
  v2 = v91;
  v30 = *v91;
  v31 = *(v29 + 16);
  v84 = v91[1];
  v85 = v30;
  v31();
  __swift_destroy_boxed_opaque_existential_1(v92);
  sub_26576000C(v2, v19, type metadata accessor for Alert);
  v32 = v90;
  (*(v3 + 56))(v19, 0, 1, v90);
  v33 = *(v11 + 48);
  sub_265763DF8(v21, v13, &qword_28001D620, &qword_26577C140);
  sub_265763DF8(v19, &v13[v33], &qword_28001D620, &qword_26577C140);
  v34 = *(v3 + 48);
  v25 = v21;
  if (v34(v13, 1, v32) == 1)
  {
    sub_26575FF24(v19, &qword_28001D620, &qword_26577C140);
    v21 = v28;
    if (v34(&v13[v33], 1, v32) == 1)
    {
      sub_26575FF24(v13, &qword_28001D620, &qword_26577C140);
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  v35 = v89;
  sub_265763DF8(v13, v89, &qword_28001D620, &qword_26577C140);
  if (v34(&v13[v33], 1, v32) == 1)
  {
    sub_26575FF24(v19, &qword_28001D620, &qword_26577C140);
    sub_2657622E0(v35, type metadata accessor for Alert);
    v21 = v28;
LABEL_7:
    v36 = v32;
    sub_26575FF24(v13, &qword_28001D670, &qword_26577AD60);
    goto LABEL_8;
  }

  v36 = v32;
  v68 = &v13[v33];
  v69 = v35;
  v70 = v83;
  sub_26575FFA4(v68, v83, type metadata accessor for Alert);
  v71 = _s12SessionAlert0B0V2eeoiySbAC_ACtFZ_0(v69, v70);
  sub_2657622E0(v70, type metadata accessor for Alert);
  sub_26575FF24(v19, &qword_28001D620, &qword_26577C140);
  sub_2657622E0(v69, type metadata accessor for Alert);
  sub_26575FF24(v13, &qword_28001D620, &qword_26577C140);
  v21 = v28;
  if (v71)
  {
LABEL_18:
    if (qword_2814476D8 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_8:
  swift_beginAccess();
  v37 = v21[15];
  v38 = v21[16];
  __swift_mutable_project_boxed_opaque_existential_1((v21 + 12), v37);
  (*(v38 + 24))(v2, v37, v38);
  swift_endAccess();
  if (*(v2 + *(v36 + 32)))
  {
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v39 = sub_265779DEC();
    __swift_project_value_buffer(v39, qword_2814476E0);
    v40 = v2;
    v41 = v87;
    sub_26576000C(v40, v87, type metadata accessor for Alert);

    v42 = sub_265779DDC();
    v43 = sub_265779EBC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v92[0] = v45;
      *v44 = 136380931;
      __swift_project_boxed_opaque_existential_1(v21 + 4, v21[7]);
      v46 = sub_265779D0C();
      v48 = sub_265761C38(v46, v47, v92);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      v49 = Alert.description.getter();
      v51 = v50;
      sub_2657622E0(v41, type metadata accessor for Alert);
      v52 = sub_265761C38(v49, v51, v92);

      *(v44 + 14) = v52;
      v53 = "(%{private}s): Not syncing breaksThroughFocus alert: %{public}s";
LABEL_21:
      _os_log_impl(&dword_26575E000, v42, v43, v53, v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26675E650](v45, -1, -1);
      MEMORY[0x26675E650](v44, -1, -1);

      return sub_26575FF24(v25, &qword_28001D620, &qword_26577C140);
    }

LABEL_22:

    sub_2657622E0(v41, type metadata accessor for Alert);
    return sub_26575FF24(v25, &qword_28001D620, &qword_26577C140);
  }

  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v54 = sub_265779DEC();
  __swift_project_value_buffer(v54, qword_2814476E0);
  v55 = v2;
  v56 = v86;
  sub_26576000C(v55, v86, type metadata accessor for Alert);

  v57 = sub_265779DDC();
  v58 = sub_265779EBC();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v92[0] = v60;
    *v59 = 136380931;
    __swift_project_boxed_opaque_existential_1(v21 + 4, v21[7]);
    v61 = sub_265779D0C();
    v63 = sub_265761C38(v61, v62, v92);

    *(v59 + 4) = v63;
    *(v59 + 12) = 2082;
    v64 = Alert.description.getter();
    v66 = v65;
    sub_2657622E0(v56, type metadata accessor for Alert);
    v67 = sub_265761C38(v64, v66, v92);

    *(v59 + 14) = v67;
    _os_log_impl(&dword_26575E000, v57, v58, "(%{private}s): Syncing alert: %{public}s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v60, -1, -1);
    MEMORY[0x26675E650](v59, -1, -1);
  }

  else
  {

    sub_2657622E0(v56, type metadata accessor for Alert);
  }

  __swift_project_boxed_opaque_existential_1(v21 + 4, v21[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D668, &qword_26577AD58);
  sub_265779DBC();
  *(swift_allocObject() + 16) = xmmword_26577ABF0;

  sub_265779D9C();
  sub_265779CEC();

  return sub_26575FF24(v25, &qword_28001D620, &qword_26577C140);
}

uint64_t sub_265763DF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_265763EB0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = *a1;
  v6 = a1[1];
  sub_265763F98(a1, &v9 - v3);
  v7 = type metadata accessor for Alert(0);
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);

  return sub_265763FFC(v4, v5, v6);
}

uint64_t sub_265763F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alert(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265763FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Alert(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_26576594C(a1);
    sub_2657659B4(a2, a3, v9);

    return sub_26576594C(v9);
  }

  else
  {
    sub_265764194(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_2657641F8(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_265764194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alert(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2657641F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_26576435C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_265779838();
      goto LABEL_7;
    }

    sub_2657791DC(v15, a4 & 1);
    v22 = sub_26576435C(a2, a3);
    if ((v16 & 1) == (v23 & 1))
    {
      v12 = v22;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26577A0CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for Alert(0) - 8) + 72) * v12;

    return sub_265779A68(a1, v20);
  }

LABEL_13:
  sub_2657643D4(v12, a2, a3, a1, v18);
}

unint64_t sub_26576435C(uint64_t a1, uint64_t a2)
{
  sub_26577A0DC();
  sub_265779E6C();
  v4 = sub_26577A10C();

  return sub_26576446C(a1, a2, v4);
}

uint64_t sub_2657643D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Alert(0);
  result = sub_265764194(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_26576446C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26577A0BC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_265764524(uint64_t a1)
{
  v1 = a1;
  sub_26577A0DC();
  v2 = v1 >> 6;
  if (!(v1 >> 6) || v2 == 1)
  {
    MEMORY[0x26675E1F0]();
    v2 = v1 & 1;
  }

  MEMORY[0x26675E1F0](v2);
  v3 = sub_26577A10C();

  return sub_2657645AC(v1, v3);
}

unint64_t sub_2657645AC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = *(*(v2 + 48) + result);
      if (!(v7 >> 6))
      {
        break;
      }

      if (v7 >> 6 != 1)
      {
        if (a1 == 128)
        {
          return result;
        }

        goto LABEL_4;
      }

      if ((a1 & 0xC0) == 0x40)
      {
        goto LABEL_10;
      }

LABEL_4:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (a1 > 0x3Fu)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (((v7 ^ a1) & 1) == 0)
    {
      return result;
    }

    goto LABEL_4;
  }

  return result;
}

uint64_t sub_265764650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v7 = type metadata accessor for Alert(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = *(a2 + 80);
  ObjectType = swift_getObjectType();
  v11 = swift_allocObject();
  swift_weakInit();
  sub_26576000C(a3, &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Alert);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = a1;
  sub_26575FFA4(&ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for Alert);
  *(v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v14 = *(v10 + 32);

  v14(a3, 1, sub_265765D04, v13, ObjectType, v10);
}

uint64_t sub_265764820()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265764858()
{
  v1 = (type metadata accessor for Alert(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_265779C1C();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[8], v7);
  sub_265764C28(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t Alert.payload.getter()
{
  v1 = v0 + *(type metadata accessor for Alert(0) + 36);
  v2 = *v1;
  sub_265760088(*v1, *(v1 + 8));
  return v2;
}

uint64_t Alert.currentState.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Alert(0);
  v4 = *(v1 + *(result + 40));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v5 - 1;
    v7 = *(type metadata accessor for Alert.HistoryItem(0) - 8);
    return sub_265762204(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, a1, type metadata accessor for Alert.HistoryItem);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_29Tm()
{
  v1 = (type metadata accessor for Alert(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_265779C1C();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[8], v6);
  sub_265764C28(*(v0 + v3 + v1[11]), *(v0 + v3 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265764C28(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

Swift::Void __swiftcall AlertCenter.dismissAlert(identifier:)(Swift::String identifier)
{
  v2 = v1;
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v5 = *(v1 + 16);
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = countAndFlagsBits;
  v6[4] = object;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_265765258;
  *(v7 + 24) = v6;
  v9[4] = sub_2657618F4;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2657600DC;
  v9[3] = &block_descriptor_47;
  v8 = _Block_copy(v9);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

uint64_t sub_265764E0C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265764E50(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31[-v7];
  v9 = type metadata accessor for Alert(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v31[-v14];
  swift_beginAccess();
  sub_26575F5D4((a1 + 12), v32);
  v16 = v33;
  v17 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v17 + 16))(a2, a3, v16, v17);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26575FF24(v8, &qword_28001D620, &qword_26577C140);
    return __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    sub_26575FFA4(v8, v15, type metadata accessor for Alert);
    __swift_destroy_boxed_opaque_existential_1(v32);
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v19 = sub_265779DEC();
    __swift_project_value_buffer(v19, qword_2814476E0);
    sub_26576000C(v15, v13, type metadata accessor for Alert);

    v20 = sub_265779DDC();
    v21 = sub_265779EBC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v32[0] = v23;
      *v22 = 136380931;
      __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
      v24 = sub_265779D0C();
      v26 = sub_265761C38(v24, v25, v32);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      v27 = Alert.description.getter();
      v29 = v28;
      sub_2657622E0(v13, type metadata accessor for Alert);
      v30 = sub_265761C38(v27, v29, v32);

      *(v22 + 14) = v30;
      _os_log_impl(&dword_26575E000, v20, v21, "(%{private}s): Dismissing alert: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26675E650](v23, -1, -1);
      MEMORY[0x26675E650](v22, -1, -1);
    }

    else
    {

      sub_2657622E0(v13, type metadata accessor for Alert);
    }

    sub_265765264(v15);
    return sub_2657622E0(v15, type metadata accessor for Alert);
  }
}

uint64_t sub_265765264(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Alert(0);
  v47 = *(v4 - 8);
  v5 = *(v47 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - v8;
  v10 = sub_265779E3C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v2[2];
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  v16 = sub_265779E4C();
  (*(v11 + 8))(v13, v10);
  if (v16)
  {
    v46 = v5;
    if (qword_2814476D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_265779DEC();
  __swift_project_value_buffer(v17, qword_2814476E0);
  sub_26576000C(a1, v9, type metadata accessor for Alert);

  v18 = sub_265779DDC();
  v19 = sub_265779EBC();

  v20 = os_log_type_enabled(v18, v19);
  v45 = v15;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v44 = v7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v48[0] = v23;
    *v22 = 136380931;
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v24 = sub_265779D0C();
    v26 = sub_265761C38(v24, v25, v48);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v27 = Alert.description.getter();
    v29 = v28;
    sub_2657622E0(v9, type metadata accessor for Alert);
    v30 = sub_265761C38(v27, v29, v48);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_26575E000, v18, v19, "(%{private}s): Deleting alert: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v23, -1, -1);
    v31 = v22;
    v7 = v44;
    MEMORY[0x26675E650](v31, -1, -1);
  }

  else
  {

    sub_2657622E0(v9, type metadata accessor for Alert);
  }

  v32 = *a1;
  v33 = a1[1];
  swift_beginAccess();
  v34 = v2[15];
  v35 = v2[16];
  __swift_mutable_project_boxed_opaque_existential_1((v2 + 12), v34);
  (*(v35 + 32))(v32, v33, v34, v35);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D668, &qword_26577AD58);
  sub_265779DBC();
  *(swift_allocObject() + 16) = xmmword_26577ABF0;

  sub_265779D9C();
  sub_265779CEC();

  v36 = v2[10];
  ObjectType = swift_getObjectType();
  (*(v36 + 40))(a1, ObjectType, v36);
  sub_2657618F8(v32, v33);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v39 = result;
    v40 = v2[19];
    sub_265779CDC();
    sub_26576000C(a1, v7, type metadata accessor for Alert);
    v41 = (*(v47 + 80) + 40) & ~*(v47 + 80);
    v42 = swift_allocObject();
    v42[2] = v39;
    v42[3] = v40;
    v42[4] = v2;
    sub_26575FFA4(v7, v42 + v41, type metadata accessor for Alert);

    swift_unknownObjectRetain();
    sub_265779CCC();
    sub_265779CBC();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_265765878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  v7 = type metadata accessor for Alert(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);

  return sub_265763FFC(v6, a1, a2);
}

uint64_t sub_26576594C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2657659B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_26576435C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_265779838();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for Alert(0);
    v19 = *(v12 - 8);
    sub_265764194(v11 + *(v19 + 72) * v8, a3);
    sub_265765B0C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for Alert(0);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_265765B0C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_265779F3C() + 1) & ~v5;
    while (1)
    {
      sub_26577A0DC();

      sub_265779E6C();
      v9 = sub_26577A10C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for Alert(0) - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_265765D04(char *a1)
{
  v3 = *(type metadata accessor for Alert(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_265765DA4(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_265765DA4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a3;
  v28 = a5;
  v26 = sub_265779DFC();
  v31 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265779E2C();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Alert(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25[1] = *(result + 16);
    v18 = result;
    sub_26576000C(a4, v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Alert);
    v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v20 = v19 + v14;
    v21 = swift_allocObject();
    v25[0] = v11;
    *(v21 + 16) = v27;
    *(v21 + 24) = v18;
    sub_26575FFA4(v15, v21 + v19, type metadata accessor for Alert);
    *(v21 + v20) = v16;
    *(v21 + (v20 & 0xFFFFFFFFFFFFFFF8) + 8) = v28;
    aBlock[4] = sub_2657663C4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265766380;
    aBlock[3] = &block_descriptor_94;
    v22 = _Block_copy(aBlock);

    v23 = v25[0];
    sub_265779E0C();
    v32 = MEMORY[0x277D84F90];
    sub_2657662E4(qword_2814475D0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D678, &qword_26577AD68);
    sub_26576632C(&qword_2814475C0, &qword_28001D678, &qword_26577AD68);
    v24 = v26;
    sub_265779F1C();
    MEMORY[0x26675E000](0, v23, v8, v22);
    _Block_release(v22);
    (*(v31 + 8))(v8, v24);
    (*(v29 + 8))(v23, v30);
  }

  return result;
}

uint64_t sub_26576618C()
{
  v1 = (type metadata accessor for Alert(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (v3 + *(*v1 + 64)) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_265779C1C();
  v8 = *(*(v7 - 8) + 8);
  v8(v5 + v6, v7);
  v8(v5 + v1[8], v7);
  sub_265764C28(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_2657662E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26576632C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_265766380(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2657663C4()
{
  v1 = *(type metadata accessor for Alert(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + v2 + *(v1 + 64));

  return sub_265766458(v3, v4, v0 + v2, v5);
}

uint64_t sub_265766458(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((sub_265779C6C() & 1) == 0)
  {
    sub_265779C3C();
    v7 = a4;
    sub_2657664C8(a3, &v7);
  }

  return sub_265779C9C();
}

uint64_t sub_2657664C8(uint64_t a1, unsigned __int8 *a2)
{
  v54 = type metadata accessor for Alert.HistoryItem(0);
  v5 = *(v54 - 8);
  v6 = MEMORY[0x28223BE20](v54);
  v55 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v49[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v49[-v11];
  v58 = type metadata accessor for Alert(0);
  v13 = MEMORY[0x28223BE20](v58);
  v56 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v57 = &v49[-v15];
  v16 = sub_265779E3C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v49[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = *a2;
  v21 = *(v2 + 2);
  *v19 = v21;
  (*(v17 + 104))(v19, *MEMORY[0x277D85200], v16);
  v22 = v21;
  v23 = sub_265779E4C();
  (*(v17 + 8))(v19, v16);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v24 = *(a1 + *(v58 + 40));
  v25 = *(v24 + 16);
  if (!v25)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    v23 = sub_265763004(0, *(v23 + 16) + 1, 1, v23);
    goto LABEL_6;
  }

  v26 = v20 & 1 | 0x40;
  if (v20 == 2)
  {
    v26 = 128;
  }

  v50 = v26;
  v52 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v53 = v2;
  v51 = *(v5 + 72);
  sub_26576000C(v24 + v52 + v51 * (v25 - 1), v10, type metadata accessor for Alert.HistoryItem);
  v27 = *v10;
  v28 = v10[1];
  v29 = v10[2];
  v31 = v10[3];
  v30 = v10[4];

  sub_265779BFC();
  sub_2657622E0(v10, type metadata accessor for Alert.HistoryItem);
  *v12 = v27;
  *(v12 + 1) = v28;
  *(v12 + 2) = v29;
  *(v12 + 3) = v31;
  *(v12 + 4) = v30;
  v12[40] = v50;
  v10 = v57;
  sub_26576000C(a1, v57, type metadata accessor for Alert);
  v2 = v55;
  sub_26576000C(v12, v55, type metadata accessor for Alert.HistoryItem);
  a1 = *(v58 + 40);
  v23 = *(v10 + a1);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_6:
  v32 = v56;
  v34 = *(v23 + 16);
  v33 = *(v23 + 24);
  v35 = v53;
  if (v34 >= v33 >> 1)
  {
    v23 = sub_265763004((v33 > 1), v34 + 1, 1, v23);
  }

  sub_2657622E0(v12, type metadata accessor for Alert.HistoryItem);
  *(v23 + 16) = v34 + 1;
  sub_26575FFA4(v2, v23 + v52 + v34 * v51, type metadata accessor for Alert.HistoryItem);
  *(v10 + a1) = v23;
  sub_2657631E0(v10);
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v36 = sub_265779DEC();
  __swift_project_value_buffer(v36, qword_2814476E0);
  sub_26576000C(v10, v32, type metadata accessor for Alert);

  v37 = sub_265779DDC();
  v38 = sub_265779EBC();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v59 = v40;
    *v39 = 136380931;
    __swift_project_boxed_opaque_existential_1(v35 + 4, *(v35 + 7));
    v41 = sub_265779D0C();
    v43 = sub_265761C38(v41, v42, &v59);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2082;
    v44 = Alert.description.getter();
    v46 = v45;
    sub_2657622E0(v32, type metadata accessor for Alert);
    v47 = sub_265761C38(v44, v46, &v59);

    *(v39 + 14) = v47;
    _os_log_impl(&dword_26575E000, v37, v38, "(%{private}s): Received presentation response for alert: %{public}s", v39, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v40, -1, -1);
    MEMORY[0x26675E650](v39, -1, -1);
  }

  else
  {

    sub_2657622E0(v32, type metadata accessor for Alert);
  }

  sub_265760104(v10);
  return sub_2657622E0(v10, type metadata accessor for Alert);
}

uint64_t *sub_265766ADC(uint64_t a1)
{
  v3 = sub_265779E3C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(type metadata accessor for Alert(0) - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](a1);
  v10 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(v11 + 36);
  if ((*(v12 + 8) & 1) == 0)
  {
    if (*v12 <= 0.0)
    {

      return sub_265765264(result);
    }

    else
    {
      v14 = *result;
      v13 = result[1];
      sub_26576000C(result, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Alert);
      v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = v1;
      sub_26575FFA4(v10, v16 + v15, type metadata accessor for Alert);
      v17 = *(v1 + 16);
      *v6 = v17;
      (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);

      v18 = v17;
      LOBYTE(v15) = sub_265779E4C();
      result = (*(v4 + 8))(v6, v3);
      if (v15)
      {
        swift_beginAccess();
        if (*(*(v1 + 136) + 16))
        {

          sub_26576435C(v14, v13);
          if (v19)
          {

            sub_265779C3C();
            swift_beginAccess();

            sub_265778BC0(0, v14, v13);
            swift_endAccess();
          }

          else
          {
          }
        }

        sub_265779C8C();
        v20 = sub_265779C7C();
        MEMORY[0x28223BE20](v20);
        *(&v23 - 4) = v1;
        *(&v23 - 3) = v14;
        *(&v23 - 2) = v13;
        v21 = swift_allocObject();
        v21[2] = v1;
        v21[3] = v14;
        v21[4] = v13;
        v21[5] = sub_265771100;
        v21[6] = v16;

        sub_265779C4C();

        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *(v1 + 136);
        *(v1 + 136) = 0x8000000000000000;
        sub_265767118(v20, v14, v13, isUniquelyReferenced_nonNull_native);

        *(v1 + 136) = v24;
        swift_endAccess();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_265766F48(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v7 = sub_265779DEC();
  __swift_project_value_buffer(v7, qword_2814476E0);

  oslog = sub_265779DDC();
  v8 = sub_265779EBC();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136380931;
    __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
    v11 = sub_265779D0C();
    v13 = sub_265761C38(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_265761C38(a3, a4, &v15);
    _os_log_impl(&dword_26575E000, oslog, v8, "(%{private}s): Configured watchdog for: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v10, -1, -1);
    MEMORY[0x26675E650](v9, -1, -1);
  }
}

uint64_t sub_265767118(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26576435C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_265778F34(v16, a4 & 1);
      v11 = sub_26576435C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_26577A0CC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2657796C8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_2657672A4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2657672E4(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_2657693AC(v3, v2);
}

uint64_t sub_265767320()
{
  v1 = (type metadata accessor for Alert(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v10 = *(*v1 + 64);
  v9 = (v2 + 16 + ((((v3 + v10) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v2;
  v4 = v0 + v3;

  v5 = v1[7];
  v6 = sub_265779C1C();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v7(v4 + v1[8], v6);
  sub_265764C28(*(v4 + v1[11]), *(v4 + v1[11] + 8));

  v7(v0 + v9 + v1[7], v6);
  v7(v0 + v9 + v1[8], v6);
  sub_265764C28(*(v0 + v9 + v1[11]), *(v0 + v9 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v2 | 7);
}

uint64_t sub_265767554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_265779C1C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_265767600(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_265779C1C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_26576771C()
{
  MEMORY[0x26675E650](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26576778C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2657677AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_28001D550)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28001D550);
    }
  }
}

uint64_t static DismissOption.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_265767898()
{
  sub_26577A0DC();
  MEMORY[0x26675E1F0](0);
  return sub_26577A10C();
}

uint64_t sub_2657678DC(uint64_t a1)
{
  sub_26577A0DC();
  MEMORY[0x26675E1F0](0);
  return sub_26577A10C();
}

uint64_t sub_265767928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26577A0BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2657679B4(uint64_t a1)
{
  v2 = sub_265768128();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657679F0(uint64_t a1)
{
  v2 = sub_265768128();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s12SessionAlert0B0V13FailureReasonO9hashValueSivg_0()
{
  v1 = *v0;
  sub_26577A0DC();
  MEMORY[0x26675E1F0](v1);
  return sub_26577A10C();
}

uint64_t sub_265767A74(uint64_t a1)
{
  v2 = *v1;
  sub_26577A0DC();
  MEMORY[0x26675E1F0](v2);
  return sub_26577A10C();
}

uint64_t sub_265767AB8()
{
  v1 = 0x616470557478656ELL;
  if (*v0 != 1)
  {
    v1 = 0x7265746661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726576656ELL;
  }
}

uint64_t sub_265767B10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_265769144(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_265767B44(uint64_t a1)
{
  v2 = sub_2657680D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265767B80(uint64_t a1)
{
  v2 = sub_2657680D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265767BC8(uint64_t a1)
{
  v2 = sub_2657681D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265767C04(uint64_t a1)
{
  v2 = sub_2657681D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265767C40(uint64_t a1)
{
  v2 = sub_26576817C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265767C7C(uint64_t a1)
{
  v2 = sub_26576817C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DismissOption.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D558, &qword_26577A6C0);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D560, &qword_26577A6C8);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v25 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D568, &qword_26577A6D0);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v22 = &v21 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D570, &qword_26577A6D8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = *v1;
  v14 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2657680D4();
  sub_26577A12C();
  if (v14 == 1)
  {
    if (v13)
    {
      v32 = 1;
      sub_26576817C();
      v15 = v25;
      sub_26577A05C();
      v17 = v26;
      v16 = v27;
    }

    else
    {
      v31 = 0;
      sub_2657681D0();
      v15 = v22;
      sub_26577A05C();
      v17 = v23;
      v16 = v24;
    }

    (*(v17 + 8))(v15, v16);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v33 = 2;
    sub_265768128();
    v18 = v28;
    sub_26577A05C();
    v19 = v30;
    sub_26577A08C();
    (*(v29 + 8))(v18, v19);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2657680D4()
{
  result = qword_28001D578;
  if (!qword_28001D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D578);
  }

  return result;
}

unint64_t sub_265768128()
{
  result = qword_28001D580;
  if (!qword_28001D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D580);
  }

  return result;
}

unint64_t sub_26576817C()
{
  result = qword_28001D588;
  if (!qword_28001D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D588);
  }

  return result;
}

unint64_t sub_2657681D0()
{
  result = qword_28001D590;
  if (!qword_28001D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D590);
  }

  return result;
}

uint64_t DismissOption.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    return MEMORY[0x26675E1F0](v1 != 0);
  }

  MEMORY[0x26675E1F0](2);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return MEMORY[0x26675E200](v2);
}

uint64_t DismissOption.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_26577A0DC();
  if (v2 == 1)
  {
    MEMORY[0x26675E1F0](v1 != 0);
  }

  else
  {
    MEMORY[0x26675E1F0](2);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x26675E200](v3);
  }

  return sub_26577A10C();
}

uint64_t DismissOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D598, &qword_26577A6E0);
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v44 = &v36 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5A0, &qword_26577A6E8);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5A8, &qword_26577A6F0);
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5B0, &qword_26577A6F8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2657680D4();
  v14 = v45;
  sub_26577A11C();
  if (!v14)
  {
    v16 = v43;
    v15 = v44;
    v36 = v6;
    v37 = 0;
    v45 = v10;
    v17 = sub_26577A04C();
    v18 = *(v17 + 16);
    if (!v18 || ((v19 = *(v17 + 32), v18 == 1) ? (v20 = v19 == 3) : (v20 = 1), v20))
    {
      v21 = sub_265779F7C();
      swift_allocError();
      v22 = v9;
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5B8, &qword_26577A700);
      *v24 = &type metadata for DismissOption;
      sub_265779FEC();
      sub_265779F6C();
      (*(*(v21 - 8) + 104))(v24, *MEMORY[0x277D84160], v21);
      swift_willThrow();
      (*(v45 + 8))(v12, v22);
LABEL_17:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v46);
    }

    if (*(v17 + 32))
    {
      if (v19 == 1)
      {
        v48 = 1;
        sub_26576817C();
        v25 = v37;
        sub_265779FDC();
        v26 = v45;
        if (v25)
        {
          (*(v45 + 8))(v12, v9);
          goto LABEL_17;
        }

        (*(v38 + 8))(v5, v40);
        (*(v26 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v32 = 1;
        v33 = 1;
        v30 = v42;
LABEL_23:
        *v30 = v33;
        *(v30 + 8) = v32;
        return __swift_destroy_boxed_opaque_existential_1(v46);
      }

      v49 = 2;
      sub_265768128();
      v29 = v37;
      sub_265779FDC();
      v30 = v42;
      v28 = v45;
      if (!v29)
      {
        v34 = v39;
        sub_26577A02C();
        v33 = v35;
        (*(v41 + 8))(v15, v34);
        (*(v28 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v32 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      v47 = 0;
      sub_2657681D0();
      v27 = v37;
      sub_265779FDC();
      if (!v27)
      {
        (*(v16 + 8))(v8, v36);
        (*(v45 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v32 = 1;
        v33 = 0;
        v30 = v42;
        goto LABEL_23;
      }

      v28 = v45;
    }

    (*(v28 + 8))(v12, v9);
    goto LABEL_17;
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t sub_2657688F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_265768924()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_265768990(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_26577A0DC();
  if (v3 == 1)
  {
    MEMORY[0x26675E1F0](v2 != 0);
  }

  else
  {
    MEMORY[0x26675E1F0](2);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x26675E200](v4);
  }

  return sub_26577A10C();
}

unint64_t sub_265768A10()
{
  result = qword_28001D5C0;
  if (!qword_28001D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5C0);
  }

  return result;
}

uint64_t sub_265768A64(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = *&v3 == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t getEnumTagSinglePayload for DismissOption(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DismissOption(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DismissOption.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DismissOption.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DismissOption.AfterCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DismissOption.AfterCodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_265768DD8()
{
  result = qword_28001D5C8;
  if (!qword_28001D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5C8);
  }

  return result;
}

unint64_t sub_265768E30()
{
  result = qword_28001D5D0;
  if (!qword_28001D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5D0);
  }

  return result;
}

unint64_t sub_265768E88()
{
  result = qword_28001D5D8;
  if (!qword_28001D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5D8);
  }

  return result;
}

unint64_t sub_265768EE0()
{
  result = qword_28001D5E0;
  if (!qword_28001D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5E0);
  }

  return result;
}

unint64_t sub_265768F38()
{
  result = qword_28001D5E8;
  if (!qword_28001D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5E8);
  }

  return result;
}

unint64_t sub_265768F90()
{
  result = qword_28001D5F0;
  if (!qword_28001D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5F0);
  }

  return result;
}

unint64_t sub_265768FE8()
{
  result = qword_28001D5F8;
  if (!qword_28001D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D5F8);
  }

  return result;
}

unint64_t sub_265769040()
{
  result = qword_28001D600;
  if (!qword_28001D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D600);
  }

  return result;
}

unint64_t sub_265769098()
{
  result = qword_28001D608;
  if (!qword_28001D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D608);
  }

  return result;
}

unint64_t sub_2657690F0()
{
  result = qword_28001D610;
  if (!qword_28001D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D610);
  }

  return result;
}

uint64_t sub_265769144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726576656ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_26577A0BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616470557478656ELL && a2 == 0xEA00000000006574 || (sub_26577A0BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265746661 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_26577A0BC();

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

void *sub_26576927C()
{
  result = sub_2657703C0(&unk_287713C00);
  off_281447840 = result;
  return result;
}

double sub_2657692A4@<D0>(_OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D618, &unk_26577AC00);
  sub_265779EEC();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_265769320()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D618, &unk_26577AC00);
  sub_265779EEC();
  return v1;
}

uint64_t sub_2657693AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_265769524;
  *(v8 + 24) = v7;
  v11[4] = sub_2657618CC;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2657600DC;
  v11[3] = &block_descriptor;
  v9 = _Block_copy(v11);
  swift_unknownObjectRetain();

  dispatch_sync(v6, v9);
  swift_unknownObjectRelease();
  _Block_release(v9);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void (*sub_265769528(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  *(v3 + 72) = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D618, &unk_26577AC00);
  sub_265779EEC();
  v4[3] = *v4;
  return sub_2657695F0;
}

void sub_2657695F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v5 = *(*a1 + 64);
  v4 = *(*a1 + 72);
  v6 = *(*a1 + 56);
  if ((a2 & 1) == 0)
  {
    v11 = swift_allocObject();
    v11[2] = v5;
    v11[3] = v3;
    v11[4] = v6;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_265771280;
    *(v12 + 24) = v11;
    v2[4] = sub_2657618F4;
    v2[5] = v12;
    *v2 = MEMORY[0x277D85DD0];
    v2[1] = 1107296256;
    v2[2] = sub_2657600DC;
    v2[3] = &block_descriptor_26;
    v13 = _Block_copy(v2);
    swift_unknownObjectRetain();

    dispatch_sync(v4, v13);
    swift_unknownObjectRelease();
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_265771280;
  *(v8 + 24) = v7;
  v2[4] = sub_2657618F4;
  v2[5] = v8;
  *v2 = MEMORY[0x277D85DD0];
  v2[1] = 1107296256;
  v2[2] = sub_2657600DC;
  v2[3] = &block_descriptor_15;
  v9 = _Block_copy(v2);
  swift_unknownObjectRetain_n();

  dispatch_sync(v4, v9);
  swift_unknownObjectRelease();
  _Block_release(v9);
  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_9;
  }

  swift_unknownObjectRelease();
LABEL_5:

  free(v2);
}

uint64_t objectdestroyTm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2657698F4()
{
  v2 = v0[2];
  v1 = v0[3];
  *(v2 + 152) = v0[4];
  return MEMORY[0x2821FEC20](v2 + 144, v1);
}

void *AlertCenter.__allocating_init(store:syncEngine:presenter:watchdogIntervals:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_2657704A0(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v10;
}

void *AlertCenter.init(store:syncEngine:presenter:watchdogIntervals:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_2657704A0(a1, a2, a3, a4, a5);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t AlertCenter.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  sub_265770928(v0 + 144);
  return v0;
}

uint64_t AlertCenter.__deallocating_deinit()
{
  AlertCenter.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

Swift::Bool __swiftcall AlertCenter.hasAlert(identifier:)(Swift::String identifier)
{
  object = identifier._object;
  countAndFlagsBits = identifier._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  MEMORY[0x28223BE20](v4);
  v6 = &v10[-v5];
  v11 = v1;
  v12 = countAndFlagsBits;
  v13 = object;
  sub_265779EEC();
  v7 = type metadata accessor for Alert(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7) != 1;
  sub_26575FF24(v6, &qword_28001D620, &qword_26577C140);
  return v8;
}

uint64_t sub_265769BE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D618, &unk_26577AC00);
  sub_265779EEC();
  return v1;
}

void (*sub_265769C5C(uint64_t *a1))(uint64_t **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D618, &unk_26577AC00);
  sub_265779EEC();
  *v4 = v4[1];
  return sub_265769D20;
}

void sub_265769D20(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v2[1];
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_2657693AC(v5, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2657693AC(v3, v2[1]);
  }

  free(v2);
}

BOOL sub_265769D88(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  MEMORY[0x28223BE20](v5);
  v7 = &v11[-v6];
  v12 = v2;
  v13 = a1;
  v14 = a2;
  sub_265779EEC();
  v8 = type metadata accessor for Alert(0);
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8) != 1;
  sub_26575FF24(v7, &qword_28001D620, &qword_26577C140);
  return v9;
}

uint64_t AlertCenter.syncEngine(_:dataFor:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D638, &qword_26577AC20);
  sub_265779EEC();
  return v3;
}

void sub_265769F24(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v64 = a3;
  v5 = sub_265779DBC();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v59 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v58 - v10;
  v12 = type metadata accessor for Alert(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26575F5D4(a1 + 96, v66);
  v16 = v66[4];
  __swift_project_boxed_opaque_existential_1(v66, v66[3]);
  v61 = a2;
  v17 = sub_265779DAC();
  (*(v16 + 16))(v17);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26575FF24(v11, &qword_28001D620, &qword_26577C140);
    __swift_destroy_boxed_opaque_existential_1(v66);
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v18 = sub_265779DEC();
    __swift_project_value_buffer(v18, qword_2814476E0);
    v19 = v62;
    v20 = v60;
    v21 = v63;
    (*(v62 + 16))(v60, v61, v63);
    v22 = sub_265779DDC();
    v23 = sub_265779EBC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v19;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v66[0] = v26;
      *v25 = 136446210;
      sub_2657662E4(&qword_28001D648, 255, MEMORY[0x277D4D708], MEMORY[0x277D4D720]);
      v27 = sub_26577A0AC();
      v29 = v28;
      (*(v24 + 8))(v20, v21);
      v30 = sub_265761C38(v27, v29, v66);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_26575E000, v22, v23, "Could not find an alert for recordID %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x26675E650](v26, -1, -1);
      MEMORY[0x26675E650](v25, -1, -1);
    }

    else
    {

      (*(v19 + 8))(v20, v21);
    }

    v55 = 0;
LABEL_16:
    v56 = 0xF000000000000000;
    goto LABEL_17;
  }

  sub_26575FFA4(v11, v15, type metadata accessor for Alert);
  __swift_destroy_boxed_opaque_existential_1(v66);
  sub_265779B6C();
  swift_allocObject();
  sub_265779B5C();
  sub_2657662E4(&qword_28001D690, 255, type metadata accessor for Alert, &protocol conformance descriptor for Alert);
  v31 = v65;
  v32 = sub_265779B4C();
  if (v31)
  {
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v34 = sub_265779DEC();
    __swift_project_value_buffer(v34, qword_2814476E0);
    v35 = v62;
    v36 = v59;
    v37 = v63;
    (*(v62 + 16))(v59, v61, v63);
    MEMORY[0x26675E540](v31);
    v38 = sub_265779DDC();
    v39 = sub_265779EBC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v61 = v15;
      v65 = v31;
      v41 = v35;
      v42 = v37;
      v43 = v36;
      v44 = v40;
      v60 = swift_slowAlloc();
      v66[0] = v60;
      *v44 = 136446466;
      sub_2657662E4(&qword_28001D648, 255, MEMORY[0x277D4D708], MEMORY[0x277D4D720]);
      v45 = sub_26577A0AC();
      v47 = v46;
      (*(v41 + 8))(v43, v42);
      v48 = sub_265761C38(v45, v47, v66);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      v49 = v65;
      v66[6] = v65;
      MEMORY[0x26675E540](v65);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D698, &qword_26577AD80);
      v50 = sub_265779E5C();
      v52 = sub_265761C38(v50, v51, v66);

      *(v44 + 14) = v52;
      _os_log_impl(&dword_26575E000, v38, v39, "Could not encode alert for recordID %{public}s: %{public}s", v44, 0x16u);
      v53 = v60;
      swift_arrayDestroy();
      MEMORY[0x26675E650](v53, -1, -1);
      MEMORY[0x26675E650](v44, -1, -1);

      v54 = v61;
    }

    else
    {

      (*(v35 + 8))(v36, v37);
      v54 = v15;
    }

    sub_2657622E0(v54, type metadata accessor for Alert);
    v55 = 0;
    goto LABEL_16;
  }

  v55 = v32;
  v56 = v33;
  sub_2657622E0(v15, type metadata accessor for Alert);

LABEL_17:
  v57 = v64;
  *v64 = v55;
  v57[1] = v56;
}

uint64_t sub_26576A738@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v97 = a1;
  v94 = a2;
  v83 = sub_265779D5C();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v79 = v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265779DBC();
  v85 = *(v3 - 8);
  v86 = v3;
  MEMORY[0x28223BE20](v3);
  v80 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_265779D8C();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v78 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265779C1C();
  v90 = *(v6 - 8);
  v91 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v87 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v89 = v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v92 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = v77 - v13;
  v15 = type metadata accessor for Alert(0);
  v95 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v88 = v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v77 - v19;
  MEMORY[0x28223BE20](v18);
  v93 = v77 - v21;
  sub_265779B3C();
  swift_allocObject();
  v22 = sub_265779B2C();
  v23 = sub_265779D6C();
  v25 = v24;
  sub_2657662E4(&qword_28001D640, 255, type metadata accessor for Alert, &protocol conformance descriptor for Alert);
  v26 = v15;
  v27 = v96;
  sub_265779B1C();
  if (v27)
  {

    sub_265764C28(v23, v25);
    (*(v95 + 56))(v14, 1, 1, v15);
    sub_26575FF24(v14, &qword_28001D620, &qword_26577C140);
    v28 = sub_265779D6C();
    v30 = v29;

LABEL_10:
    v60 = v94;
    *v94 = v28;
    v60[1] = v30;
    return result;
  }

  v96 = v20;
  sub_265764C28(v23, v25);
  v32 = (v95 + 56);
  v95 = *(v95 + 56);
  (v95)(v14, 0, 1, v15);
  sub_26575FFA4(v14, v93, type metadata accessor for Alert);
  v33 = sub_265779D6C();
  v35 = v34;
  v36 = v92;
  sub_265779B1C();
  v77[1] = v22;
  v77[0] = 0;
  sub_265764C28(v33, v35);
  (v95)(v36, 0, 1, v26);
  sub_26575FFA4(v36, v96, type metadata accessor for Alert);
  v37 = *(v93 + *(v26 + 40));
  v38 = *(v37 + 16);
  if (!v38)
  {
    __break(1u);
    goto LABEL_12;
  }

  v39 = v38 - 1;
  v40 = type metadata accessor for Alert.HistoryItem(0);
  v41 = (*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80);
  v42 = *(*(v40 - 8) + 72);
  v43 = v37 + v41 + v42 * v39;
  v44 = v89;
  v32 = v90;
  v45 = v90[2];
  v46 = v91;
  v45(v89, v43 + *(v40 + 32), v91);
  v47 = *&v96[*(v26 + 40)];
  v48 = *(v47 + 16);
  if (!v48)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v49 = v47 + v41 + (v48 - 1) * v42 + *(v40 + 32);
  v50 = v87;
  v45(v87, v49, v46);
  v51 = sub_265779BBC();
  v52 = v32[1];
  v52(v50, v46);
  v52(v44, v46);
  v53 = v96;
  v54 = v93;
  if (v51)
  {
    v55 = v93;
  }

  else
  {
    v55 = v96;
  }

  v56 = v88;
  sub_26576000C(v55, v88, type metadata accessor for Alert);
  sub_265779B6C();
  swift_allocObject();
  sub_265779B5C();
  sub_2657662E4(&qword_28001D690, 255, type metadata accessor for Alert, &protocol conformance descriptor for Alert);
  v57 = v77[0];
  v58 = sub_265779B4C();
  v32 = v57;
  if (!v57)
  {
    v28 = v58;
    v30 = v59;
    sub_2657622E0(v56, type metadata accessor for Alert);

    sub_2657622E0(v53, type metadata accessor for Alert);
    result = sub_2657622E0(v54, type metadata accessor for Alert);
    goto LABEL_10;
  }

LABEL_13:
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v61 = sub_265779DEC();
  __swift_project_value_buffer(v61, qword_2814476E0);
  (*(v82 + 16))(v78, v97, v84);
  MEMORY[0x26675E540](v32);
  v62 = sub_265779DDC();
  v63 = sub_265779EBC();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v99 = v97;
    *v64 = 136446466;
    v65 = v78;
    v66 = v79;
    sub_265779D7C();
    v67 = v80;
    sub_265779D4C();
    (*(v81 + 8))(v66, v83);
    sub_2657662E4(&qword_28001D648, 255, MEMORY[0x277D4D708], MEMORY[0x277D4D720]);
    v68 = v86;
    v69 = sub_26577A0AC();
    v71 = v70;
    (*(v85 + 8))(v67, v68);
    (*(v82 + 8))(v65, v84);
    v72 = sub_265761C38(v69, v71, &v99);

    *(v64 + 4) = v72;
    *(v64 + 12) = 2082;
    v98 = v32;
    MEMORY[0x26675E540](v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D698, &qword_26577AD80);
    v73 = sub_265779E5C();
    v75 = sub_265761C38(v73, v74, &v99);

    *(v64 + 14) = v75;
    _os_log_impl(&dword_26575E000, v62, v63, "Could not encode alert for recordID %{public}s: %{public}s", v64, 0x16u);
    v76 = v97;
    swift_arrayDestroy();
    MEMORY[0x26675E650](v76, -1, -1);
    MEMORY[0x26675E650](v64, -1, -1);
  }

  else
  {

    (*(v82 + 8))(v78, v84);
  }

  result = sub_265779F9C();
  __break(1u);
  return result;
}

BOOL AlertCenter.syncEngine(_:didFetch:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_265779D5C();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265779DBC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_265779D8C();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v58 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Alert(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v54 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v47 - v18;
  sub_265779B3C();
  swift_allocObject();
  v20 = sub_265779B2C();
  v56 = a2;
  v21 = sub_265779D6C();
  v23 = v22;
  sub_2657662E4(&qword_28001D640, 255, type metadata accessor for Alert, &protocol conformance descriptor for Alert);
  v62 = v20;
  sub_265779B1C();
  sub_265764C28(v21, v23);
  v24 = v19;
  (*(v10 + 56))(v19, 0, 1, v9);
  sub_265763DF8(v19, v17, &qword_28001D620, &qword_26577C140);
  v61 = (*(v10 + 48))(v17, 1, v9);
  if (v61 == 1)
  {
    sub_26575FF24(v17, &qword_28001D620, &qword_26577C140);
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v31 = sub_265779DEC();
    __swift_project_value_buffer(v31, qword_2814476E0);
    v33 = v58;
    v32 = v59;
    v34 = v60;
    (*(v59 + 16))(v58, v56, v60);
    v35 = sub_265779DDC();
    v36 = sub_265779EBC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v63 = v57;
      *v37 = 136446210;
      v38 = v48;
      LODWORD(v56) = v36;
      sub_265779D7C();
      v39 = v49;
      sub_265779D4C();
      (*(v50 + 8))(v38, v51);
      sub_2657662E4(&qword_28001D648, 255, MEMORY[0x277D4D708], MEMORY[0x277D4D720]);
      v40 = v53;
      v41 = sub_26577A0AC();
      v43 = v42;
      (*(v52 + 8))(v39, v40);
      (*(v32 + 8))(v33, v34);
      v44 = sub_265761C38(v41, v43, &v63);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_26575E000, v35, v56, "Could not create an alert for recordID %{public}s", v37, 0xCu);
      v45 = v57;
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x26675E650](v45, -1, -1);
      MEMORY[0x26675E650](v37, -1, -1);
    }

    else
    {

      (*(v32 + 8))(v33, v34);
    }

    v30 = v24;
  }

  else
  {
    v25 = v55;
    sub_26575FFA4(v17, v55, type metadata accessor for Alert);
    sub_265779CDC();
    v26 = v57;
    v27 = v54;
    sub_26576000C(v25, v54, type metadata accessor for Alert);
    v28 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    sub_26575FFA4(v27, v29 + v28, type metadata accessor for Alert);

    sub_265779CCC();
    sub_265779CBC();

    sub_2657622E0(v25, type metadata accessor for Alert);
    v30 = v19;
  }

  sub_26575FF24(v30, &qword_28001D620, &qword_26577C140);
  return v61 != 1;
}

uint64_t sub_26576B9B0(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D670, &qword_26577AD60);
  MEMORY[0x28223BE20](v4);
  v6 = &v60 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v67 = (&v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v8);
  v69 = &v60 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - v12;
  v68 = type metadata accessor for Alert(0);
  v66 = *(v68 - 8);
  v14 = MEMORY[0x28223BE20](v68);
  v63 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - v16;
  v18 = sub_265779E3C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = v2[2];
  *v21 = v22;
  (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
  v23 = v22;
  LOBYTE(v22) = sub_265779E4C();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    if (qword_2814476D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v65 = v4;
  v24 = sub_265779DEC();
  v25 = __swift_project_value_buffer(v24, qword_2814476E0);
  sub_26576000C(a1, v17, type metadata accessor for Alert);

  v64 = v25;
  v26 = sub_265779DDC();
  v27 = sub_265779EBC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v62 = v13;
    v29 = v28;
    v60 = swift_slowAlloc();
    v70[0] = v60;
    *v29 = 136380931;
    v61 = a1;
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v30 = sub_265779D0C();
    v32 = sub_265761C38(v30, v31, v70);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    v33 = Alert.description.getter();
    v35 = v34;
    sub_2657622E0(v17, type metadata accessor for Alert);
    v36 = sub_265761C38(v33, v35, v70);
    a1 = v61;

    *(v29 + 14) = v36;
    _os_log_impl(&dword_26575E000, v26, v27, "(%{private}s): Received alert update from sync engine: %{public}s", v29, 0x16u);
    v37 = v60;
    swift_arrayDestroy();
    MEMORY[0x26675E650](v37, -1, -1);
    v38 = v29;
    v13 = v62;
    MEMORY[0x26675E650](v38, -1, -1);
  }

  else
  {

    sub_2657622E0(v17, type metadata accessor for Alert);
  }

  swift_beginAccess();
  sub_26575F5D4((v2 + 12), v70);
  v39 = v71;
  v40 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  (*(v40 + 16))(*a1, a1[1], v39, v40);
  __swift_destroy_boxed_opaque_existential_1(v70);
  v41 = v69;
  sub_26576000C(a1, v69, type metadata accessor for Alert);
  v42 = v66;
  v43 = v68;
  (*(v66 + 56))(v41, 0, 1, v68);
  v44 = *(v65 + 48);
  sub_265763DF8(v13, v6, &qword_28001D620, &qword_26577C140);
  sub_265763DF8(v41, &v6[v44], &qword_28001D620, &qword_26577C140);
  v45 = *(v42 + 48);
  if (v45(v6, 1, v43) != 1)
  {
    sub_265763DF8(v6, v67, &qword_28001D620, &qword_26577C140);
    if (v45(&v6[v44], 1, v43) != 1)
    {
      v48 = &v6[v44];
      v49 = v63;
      sub_26575FFA4(v48, v63, type metadata accessor for Alert);
      v50 = v67;
      v51 = _s12SessionAlert0B0V2eeoiySbAC_ACtFZ_0(v67, v49);
      sub_2657622E0(v49, type metadata accessor for Alert);
      sub_26575FF24(v41, &qword_28001D620, &qword_26577C140);
      sub_2657622E0(v50, type metadata accessor for Alert);
      sub_26575FF24(v6, &qword_28001D620, &qword_26577C140);
      if (v51)
      {
        goto LABEL_14;
      }

LABEL_12:
      swift_beginAccess();
      v46 = v2[15];
      v47 = v2[16];
      __swift_mutable_project_boxed_opaque_existential_1((v2 + 12), v46);
      (*(v47 + 24))(a1, v46, v47);
      swift_endAccess();
      sub_265760104(a1);
      return sub_26575FF24(v13, &qword_28001D620, &qword_26577C140);
    }

    sub_26575FF24(v41, &qword_28001D620, &qword_26577C140);
    sub_2657622E0(v67, type metadata accessor for Alert);
LABEL_11:
    sub_26575FF24(v6, &qword_28001D670, &qword_26577AD60);
    goto LABEL_12;
  }

  sub_26575FF24(v41, &qword_28001D620, &qword_26577C140);
  if (v45(&v6[v44], 1, v43) != 1)
  {
    goto LABEL_11;
  }

  sub_26575FF24(v6, &qword_28001D620, &qword_26577C140);
LABEL_14:

  v52 = sub_265779DDC();
  v53 = sub_265779EBC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v70[0] = v55;
    *v54 = 136380675;
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v56 = sub_265779D0C();
    v58 = sub_265761C38(v56, v57, v70);

    *(v54 + 4) = v58;
    _os_log_impl(&dword_26575E000, v52, v53, "(%{private}s): Ignoring unchanged alert", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x26675E650](v55, -1, -1);
    MEMORY[0x26675E650](v54, -1, -1);
  }

  return sub_26575FF24(v13, &qword_28001D620, &qword_26577C140);
}

uint64_t AlertCenter.syncEngine(_:didDelete:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_265779DBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_265779CDC();
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_265779CCC();
  sub_265779CBC();
}

uint64_t sub_26576C3BC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v40 = a1;
  v6 = sub_265779DBC();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D620, &qword_26577C140);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for Alert(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_26575F5D4(a3 + 96, v41);
  v15 = v41[4];
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v35 = a4;
  v16 = sub_265779DAC();
  (*(v15 + 16))(v16);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v17 = v40;
    sub_26575FF24(v10, &qword_28001D620, &qword_26577C140);
    __swift_destroy_boxed_opaque_existential_1(v41);
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v18 = sub_265779DEC();
    __swift_project_value_buffer(v18, qword_2814476E0);
    v19 = v36;
    v20 = v37;
    v21 = v38;
    (*(v37 + 16))(v36, v35, v38);
    v22 = sub_265779DDC();
    v23 = sub_265779EBC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41[0] = v25;
      *v24 = 136446210;
      sub_2657662E4(&qword_28001D648, 255, MEMORY[0x277D4D708], MEMORY[0x277D4D720]);
      v26 = sub_26577A0AC();
      v27 = v19;
      v28 = v26;
      v30 = v29;
      (*(v20 + 8))(v27, v21);
      v31 = sub_265761C38(v28, v30, v41);

      *(v24 + 4) = v31;
      _os_log_impl(&dword_26575E000, v22, v23, "Could not find an existing alert for deleted recordID %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x26675E650](v25, -1, -1);
      MEMORY[0x26675E650](v24, -1, -1);
    }

    else
    {

      v32 = (*(v20 + 8))(v19, v21);
    }

    return v17(v32);
  }

  else
  {
    sub_26575FFA4(v10, v14, type metadata accessor for Alert);
    __swift_destroy_boxed_opaque_existential_1(v41);
    v33 = sub_26576C818(v14);
    v40(v33);
    return sub_2657622E0(v14, type metadata accessor for Alert);
  }
}

uint64_t sub_26576C818(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Alert(0);
  v46 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = sub_265779E3C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v2[2];
  *v13 = v14;
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v15 = v14;
  v16 = sub_265779E4C();
  (*(v11 + 8))(v13, v10);
  if (v16)
  {
    if (qword_2814476D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = sub_265779DEC();
  __swift_project_value_buffer(v17, qword_2814476E0);
  sub_26576000C(a1, v9, type metadata accessor for Alert);

  v18 = sub_265779DDC();
  v19 = sub_265779EBC();

  v20 = os_log_type_enabled(v18, v19);
  v45 = v15;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v44 = v7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v48[0] = v23;
    *v22 = 136380931;
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v24 = sub_265779D0C();
    v26 = sub_265761C38(v24, v25, v48);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2082;
    v27 = Alert.description.getter();
    v29 = v28;
    sub_2657622E0(v9, type metadata accessor for Alert);
    v30 = sub_265761C38(v27, v29, v48);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_26575E000, v18, v19, "(%{private}s): Dismissing alert: %{public}s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v23, -1, -1);
    v31 = v22;
    v7 = v44;
    MEMORY[0x26675E650](v31, -1, -1);
  }

  else
  {

    sub_2657622E0(v9, type metadata accessor for Alert);
  }

  v32 = *a1;
  v33 = a1[1];
  swift_beginAccess();
  v34 = v2[15];
  v35 = v2[16];
  __swift_mutable_project_boxed_opaque_existential_1((v2 + 12), v34);
  (*(v35 + 32))(v32, v33, v34, v35);
  swift_endAccess();
  v36 = v2[10];
  ObjectType = swift_getObjectType();
  (*(v36 + 40))(a1, ObjectType, v36);
  sub_2657618F8(v32, v33);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v39 = result;
    v40 = v2[19];
    sub_265779CDC();
    sub_26576000C(a1, v7, type metadata accessor for Alert);
    v41 = (*(v46 + 80) + 40) & ~*(v46 + 80);
    v42 = swift_allocObject();
    v42[2] = v39;
    v42[3] = v40;
    v42[4] = v2;
    sub_26575FFA4(v7, v42 + v41, type metadata accessor for Alert);

    swift_unknownObjectRetain();
    sub_265779CCC();
    sub_265779CBC();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t AlertCenter.recordIDs(for:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D650, &qword_26577AC28);
  sub_265779EEC();
  return v1;
}

uint64_t sub_26576CDD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D660, &qword_26577AD50);
  v5 = MEMORY[0x28223BE20](v59);
  v58 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v57 = (&v46 - v8);
  MEMORY[0x28223BE20](v7);
  v56 = &v46 - v9;
  v55 = sub_265779DBC();
  v10 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v60 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_26575F5D4(a1 + 96, v65);
  v12 = v66;
  v13 = v67;
  __swift_project_boxed_opaque_existential_1(v65, v66);
  v14 = (*(v13 + 8))(v12, v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v47 = a2;
    v48 = v2;
    v68 = MEMORY[0x277D84F90];
    sub_2657701C8(0, v15, 0);
    v16 = v68;
    v17 = v14 + 64;
    result = sub_265779F2C();
    v19 = result;
    v20 = 0;
    v64 = *(v14 + 36);
    v53 = v10 + 32;
    v49 = v14 + 72;
    v54 = v10;
    v50 = v15;
    v51 = v14 + 64;
    v52 = v14;
    while ((v19 & 0x8000000000000000) == 0 && v19 < 1 << *(v14 + 32))
    {
      v23 = v19 >> 6;
      if ((*(v17 + 8 * (v19 >> 6)) & (1 << v19)) == 0)
      {
        goto LABEL_24;
      }

      if (v64 != *(v14 + 36))
      {
        goto LABEL_25;
      }

      v61 = v20;
      v62 = 1 << v19;
      v24 = v59;
      v25 = *(v59 + 48);
      v26 = *(v14 + 56);
      v27 = (*(v14 + 48) + 16 * v19);
      v63 = v16;
      v29 = *v27;
      v28 = v27[1];
      v30 = type metadata accessor for Alert(0);
      v31 = v56;
      sub_26576000C(v26 + *(*(v30 - 8) + 72) * v19, &v56[v25], type metadata accessor for Alert);
      v32 = v57;
      *v57 = v29;
      *(v32 + 8) = v28;
      sub_26575FFA4(&v31[v25], v32 + *(v24 + 48), type metadata accessor for Alert);
      v33 = v58;
      sub_265763DF8(v32, v58, &qword_28001D660, &qword_26577AD50);
      v34 = *(v24 + 48);

      v35 = v60;
      sub_265779D9C();
      sub_26575FF24(v32, &qword_28001D660, &qword_26577AD50);
      v36 = v33 + v34;
      v16 = v63;
      sub_2657622E0(v36, type metadata accessor for Alert);
      v68 = v16;
      v38 = *(v16 + 16);
      v37 = *(v16 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_2657701C8((v37 > 1), v38 + 1, 1);
        v35 = v60;
        v16 = v68;
      }

      *(v16 + 16) = v38 + 1;
      result = (*(v54 + 32))(v16 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v38, v35, v55);
      v14 = v52;
      v21 = 1 << *(v52 + 32);
      if (v19 >= v21)
      {
        goto LABEL_26;
      }

      v17 = v51;
      v39 = *(v51 + 8 * v23);
      if ((v39 & v62) == 0)
      {
        goto LABEL_27;
      }

      if (v64 != *(v52 + 36))
      {
        goto LABEL_28;
      }

      v40 = v39 & (-2 << (v19 & 0x3F));
      if (v40)
      {
        v21 = __clz(__rbit64(v40)) | v19 & 0x7FFFFFFFFFFFFFC0;
        v22 = v50;
      }

      else
      {
        v41 = v23 << 6;
        v42 = v23 + 1;
        v43 = (v49 + 8 * v23);
        v22 = v50;
        while (v42 < (v21 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            result = sub_265770D54(v19, v64, 0);
            v21 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        result = sub_265770D54(v19, v64, 0);
      }

LABEL_4:
      v20 = v61 + 1;
      v19 = v21;
      if (v61 + 1 == v22)
      {

        a2 = v47;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
LABEL_22:
    result = __swift_destroy_boxed_opaque_existential_1(v65);
    *a2 = v16;
  }

  return result;
}

uint64_t AlertCenter.purgeRecords(for:pairedDeviceIdentifier:)()
{
  sub_265779CDC();

  sub_265779CCC();
  sub_265779CBC();
}

uint64_t sub_26576D3B4(uint64_t (*a1)(uint64_t), uint64_t a2, void *a3)
{
  v48[1] = a2;
  v49 = a1;
  v4 = type metadata accessor for Alert(0);
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = (v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D658, &qword_26577AD48);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v48 - v10;
  if (qword_2814476D8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v12 = sub_265779DEC();
  __swift_project_value_buffer(v12, qword_2814476E0);

  v13 = sub_265779DDC();
  v14 = sub_265779EBC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v57[0] = v16;
    *v15 = 136380675;
    __swift_project_boxed_opaque_existential_1(a3 + 4, a3[7]);
    v17 = sub_265779D0C();
    v19 = sub_265761C38(v17, v18, v57);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_26575E000, v13, v14, "(%{private}s): Purging records", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x26675E650](v16, -1, -1);
    MEMORY[0x26675E650](v15, -1, -1);
  }

  swift_beginAccess();
  sub_26575F5D4((a3 + 12), v57);
  v20 = v58;
  v21 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v22 = (*(v21 + 8))(v20, v21);
  __swift_destroy_boxed_opaque_existential_1(v57);
  v23 = 0;
  v24 = *(v22 + 64);
  v50 = v22 + 64;
  v51 = v9;
  v53 = a3;
  v54 = v22;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v55 = v11;
  while (1)
  {
    if (!v27)
    {
      if (v28 <= (v23 + 1))
      {
        v30 = (v23 + 1);
      }

      else
      {
        v30 = v28;
      }

      v11 = (v30 - 1);
      while (1)
      {
        v29 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v29 >= v28)
        {
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D660, &qword_26577AD50);
          (*(*(v45 - 8) + 56))(v9, 1, 1, v45);
          v27 = 0;
          goto LABEL_17;
        }

        v27 = *(v50 + 8 * v29);
        ++v23;
        if (v27)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

    v29 = v23;
LABEL_16:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = v31 | (v29 << 6);
    v33 = (*(v54 + 48) + 16 * v32);
    v35 = *v33;
    v34 = v33[1];
    v36 = v56;
    sub_26576000C(*(v54 + 56) + *(v52 + 72) * v32, v56, type metadata accessor for Alert);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D660, &qword_26577AD50);
    v38 = *(v37 + 48);
    v39 = v51;
    *v51 = v35;
    *(v39 + 1) = v34;
    v40 = v36;
    v9 = v39;
    sub_26575FFA4(v40, &v39[v38], type metadata accessor for Alert);
    (*(*(v37 - 8) + 56))(v9, 0, 1, v37);

    v11 = v29;
    a3 = v53;
LABEL_17:
    v41 = v55;
    sub_265770CE4(v9, v55);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D660, &qword_26577AD50);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {
      break;
    }

    v43 = v41 + *(v42 + 48);
    v44 = v56;
    sub_26575FFA4(v43, v56, type metadata accessor for Alert);
    sub_26576C818(v44);
    sub_2657622E0(v44, type metadata accessor for Alert);
    v23 = v11;
  }

  return v49(v46);
}

uint64_t sub_26576D8F8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D638, &qword_26577AC20);
  sub_265779EEC();
  return v3;
}

uint64_t sub_26576D974(uint64_t a1, uint64_t a2)
{
  v4 = sub_265779DBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  sub_265779CDC();
  (*(v5 + 16))(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v7 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  (*(v5 + 32))(v8 + v7, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_265779CCC();
  sub_265779CBC();
}

uint64_t sub_26576DAFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D650, &qword_26577AC28);
  sub_265779EEC();
  return v1;
}

uint64_t sub_26576DBFC()
{
  sub_265779CDC();

  sub_265779CCC();
  sub_265779CBC();
}

uint64_t sub_26576DC94(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v110 = a2;
  v111 = a1;
  v8 = sub_265779C1C();
  v106 = *(v8 - 8);
  v107 = v8;
  MEMORY[0x28223BE20](v8);
  v105 = &v92[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Alert(0);
  v94 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v97 = &v92[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v95 = &v92[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v108 = &v92[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v104 = &v92[-v18];
  v96 = v19;
  MEMORY[0x28223BE20](v17);
  v109 = &v92[-v20];
  v21 = type metadata accessor for Alert.HistoryItem(0);
  v103 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v92[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_265779E3C();
  v25 = *(v24 - 1);
  MEMORY[0x28223BE20](v24);
  v27 = &v92[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = *a4;
  v29 = v5[2];
  *v27 = v29;
  (*(v25 + 104))(v27, *MEMORY[0x277D85200], v24);
  v30 = v29;
  v31 = sub_265779E4C();
  (*(v25 + 8))(v27, v24);
  if (v31)
  {
    v24 = *(v111 + *(v10 + 40));
    __swift_project_boxed_opaque_existential_1(v5 + 4, v5[7]);

    v32 = sub_265779D0C();
    v34 = v33;
    sub_265779BFC();
    *v23 = v28;
    *(v23 + 1) = v32;
    *(v23 + 2) = v34;
    *(v23 + 3) = v110;
    *(v23 + 4) = a3;
    v23[40] = 0;

    v31 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v24 = sub_265763004(0, v24[2] + 1, 1, v24);
LABEL_3:
  v35 = v103;
  v37 = v24[2];
  v36 = v24[3];
  v101 = a3;
  v102 = v5;
  v93 = v28;
  if (v37 >= v36 >> 1)
  {
    v24 = sub_265763004((v36 > 1), v37 + 1, 1, v24);
  }

  v103 = v24;
  v24[2] = v37 + 1;
  sub_26575FFA4(v23, v24 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + v35[9] * v37, type metadata accessor for Alert.HistoryItem);
  v38 = v111;
  v39 = v111[1];
  v98 = *v111;
  v40 = v31;
  v41 = v105;
  v42 = v106;
  v43 = *(v106 + 16);
  v44 = v107;
  v43(v105, v111 + v31[5], v107);
  v45 = v43;
  v46 = v31[8];
  v47 = v38 + v31[7];
  v48 = *v47;
  v49 = (v38 + v31[9]);
  v50 = *v49;
  v99 = v49[1];
  v100 = v50;
  LOBYTE(v38) = *(v38 + v46);
  v51 = v47[8];
  v52 = v104;
  *v104 = v98;
  *(v52 + 8) = v39;
  v45(v52 + v40[5], v41, v44);
  v53 = v52 + v40[7];
  *v53 = v48;
  *(v53 + 8) = v51;
  *(v52 + v40[8]) = v38;

  v55 = v99;
  v54 = v100;
  sub_265760088(v100, v99);
  sub_265779BAC();
  (*(v42 + 8))(v41, v44);
  v56 = (v52 + v40[9]);
  *v56 = v54;
  v56[1] = v55;
  *(v52 + v40[10]) = v103;
  v57 = v109;
  sub_26575FFA4(v52, v109, type metadata accessor for Alert);
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v58 = sub_265779DEC();
  __swift_project_value_buffer(v58, qword_2814476E0);
  v59 = v108;
  sub_26576000C(v57, v108, type metadata accessor for Alert);
  v60 = v102;

  v61 = sub_265779DDC();
  v62 = sub_265779EBC();

  v63 = os_log_type_enabled(v61, v62);
  v64 = v110;
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v112[0] = v66;
    *v65 = 136380931;
    __swift_project_boxed_opaque_existential_1(v60 + 4, v60[7]);
    v67 = sub_265779D0C();
    v69 = sub_265761C38(v67, v68, v112);

    *(v65 + 4) = v69;
    *(v65 + 12) = 2082;
    v70 = Alert.description.getter();
    v72 = v71;
    sub_2657622E0(v59, type metadata accessor for Alert);
    v73 = sub_265761C38(v70, v72, v112);

    *(v65 + 14) = v73;
    _os_log_impl(&dword_26575E000, v61, v62, "(%{private}s): Attempting to present alert on a specific device: %{public}s ", v65, 0x16u);
    swift_arrayDestroy();
    v74 = v66;
    v64 = v110;
    MEMORY[0x26675E650](v74, -1, -1);
    MEMORY[0x26675E650](v65, -1, -1);
  }

  else
  {

    sub_2657622E0(v59, type metadata accessor for Alert);
  }

  v75 = v111;
  __swift_project_boxed_opaque_existential_1(v60 + 4, v60[7]);
  v76 = sub_265779D0C();
  v78 = v101;
  if (v76 == v64 && v77 == v101)
  {
  }

  else
  {
    v79 = sub_26577A0BC();

    if ((v79 & 1) == 0)
    {
      v80 = v95;
      sub_26576000C(v57, v95, type metadata accessor for Alert);
      sub_26576000C(v75, v97, type metadata accessor for Alert);
      v81 = *(v94 + 80);
      v82 = v60;
      v83 = (v81 + 16) & ~v81;
      v84 = v78;
      v85 = v83 + v96;
      v86 = (v83 + v96) & 0xFFFFFFFFFFFFFFF8;
      v87 = (v86 + 23) & 0xFFFFFFFFFFFFFFF8;
      v88 = (v81 + 16 + v87) & ~v81;
      v89 = swift_allocObject();
      sub_26575FFA4(v80, v89 + v83, type metadata accessor for Alert);
      *(v89 + v85) = v93;
      *(v89 + v86 + 8) = v82;
      v90 = (v89 + v87);
      *v90 = v110;
      v90[1] = v84;
      sub_26575FFA4(v97, v89 + v88, type metadata accessor for Alert);
      v57 = v109;

      sub_26576EAB0(v57, sub_265771050, v89);

      sub_2657631E0(v57);
      return sub_2657622E0(v57, type metadata accessor for Alert);
    }
  }

  sub_2657626C0(v57);
  return sub_2657622E0(v57, type metadata accessor for Alert);
}

uint64_t sub_26576E59C(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v68 = a6;
  v64 = a4;
  LODWORD(v63) = a2;
  v73 = sub_265779C1C();
  v66 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Alert(0);
  v11 = MEMORY[0x28223BE20](v10);
  v67 = (&v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v69 = (&v60 - v13);
  v14 = type metadata accessor for Alert.HistoryItem(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v60 - v19;
  v71 = v10;
  v21 = *(a1 + *(v10 + 40));
  __swift_project_boxed_opaque_existential_1(a3 + 4, a3[7]);

  v22 = sub_265779D0C();
  v24 = v23;
  v65 = v14;
  sub_265779BFC();
  *v20 = v63 & 1;
  *(v20 + 1) = v22;
  *(v20 + 2) = v24;
  *(v20 + 3) = v64;
  *(v20 + 4) = a5;
  v20[40] = 64;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_265763004(0, v21[2] + 1, 1, v21);
  }

  v26 = v21[2];
  v25 = v21[3];
  if (v26 >= v25 >> 1)
  {
    v21 = sub_265763004((v25 > 1), v26 + 1, 1, v21);
  }

  v21[2] = v26 + 1;
  v27 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v28 = *(v15 + 72);
  sub_26575FFA4(v20, v21 + v27 + v28 * v26, type metadata accessor for Alert.HistoryItem);
  __swift_project_boxed_opaque_existential_1(a3 + 4, a3[7]);
  v29 = sub_265779D0C();
  v31 = v30;
  v32 = v21;
  __swift_project_boxed_opaque_existential_1(a3 + 4, a3[7]);
  v33 = sub_265779D0C();
  v35 = v34;
  sub_265779BFC();
  *v18 = 1;
  *(v18 + 1) = v29;
  *(v18 + 2) = v31;
  *(v18 + 3) = v33;
  *(v18 + 4) = v35;
  v18[40] = 0;
  v37 = v21[2];
  v36 = v21[3];
  v72 = a3;
  if (v37 >= v36 >> 1)
  {
    v32 = sub_265763004((v36 > 1), v37 + 1, 1, v21);
  }

  v65 = v32;
  v32[2] = v37 + 1;
  sub_26575FFA4(v18, v32 + v27 + v37 * v28, type metadata accessor for Alert.HistoryItem);
  v38 = v68;
  v39 = *v68;
  v61 = v68[1];
  v62 = v39;
  v40 = v70;
  v41 = v71;
  v42 = v66;
  v43 = *(v66 + 16);
  v44 = v73;
  v43(v70, v68 + v71[5], v73);
  v45 = v41[8];
  v46 = v38 + v41[7];
  v47 = *v46;
  v48 = (v38 + v41[9]);
  v49 = *v48;
  v63 = v48[1];
  v64 = v49;
  v50 = v44;
  v51 = *(v38 + v45);
  LOBYTE(v38) = v46[8];
  v52 = v67;
  v53 = v61;
  *v67 = v62;
  *(v52 + 8) = v53;
  v43((v52 + v41[5]), v40, v50);
  v54 = v52 + v41[7];
  *v54 = v47;
  *(v54 + 8) = v38;
  *(v52 + v41[8]) = v51;

  v56 = v63;
  v55 = v64;
  sub_265760088(v64, v63);
  sub_265779BAC();
  (*(v42 + 8))(v40, v73);
  v57 = (v52 + v41[9]);
  *v57 = v55;
  v57[1] = v56;
  *(v52 + v41[10]) = v65;
  v58 = v69;
  sub_26575FFA4(v52, v69, type metadata accessor for Alert);
  sub_265760104(v58);
  return sub_2657622E0(v58, type metadata accessor for Alert);
}

void sub_26576EAB0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v52 = a2;
  v53 = a3;
  v6 = type metadata accessor for Alert(0);
  MEMORY[0x28223BE20](v6);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265779C1C();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v14 = sub_265779E3C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v4[2];
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  v20 = sub_265779E4C();
  (*(v15 + 8))(v17, v14);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v21 = *(a1 + *(v6 + 40));
  v22 = *(v21 + 16);
  if (!v22)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v55 = a1;
  v23 = v4[11];
  v24 = type metadata accessor for Alert.HistoryItem(0);
  v26 = *(*(v24 - 8) + 72);
  if (*(v23 + 16))
  {
    v27 = v24;
    v25 = *(*(v24 - 8) + 80);
    v28 = v21 + ((v25 + 32) & ~v25);
    sub_265764524(*(v28 + v26 * (v22 - 1) + 40));
    if (v29)
    {
      v30 = *(v21 + 16);
      if (v30)
      {
        v32 = v50;
        v31 = v51;
        (*(v50 + 16))(v11, v28 + (v30 - 1) * v26 + *(v27 + 32), v51);
        sub_265779BCC();
        v33 = *(v32 + 8);
        v33(v11, v31);
        sub_265779BDC();
        v35 = v34;
        v33(v13, v31);
        sub_26576F5FC(*v55, v55[1], v52, v53, v35);
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  if (qword_2814476D8 != -1)
  {
    goto LABEL_13;
  }

LABEL_8:
  v36 = sub_265779DEC();
  __swift_project_value_buffer(v36, qword_2814476E0);
  v37 = v54;
  sub_26576000C(v55, v54, type metadata accessor for Alert);

  v38 = sub_265779DDC();
  v39 = sub_265779EBC();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v56 = v41;
    *v40 = 136380931;
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    v42 = sub_265779D0C();
    v44 = sub_265761C38(v42, v43, &v56);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2082;
    v45 = Alert.description.getter();
    v47 = v46;
    sub_2657622E0(v37, type metadata accessor for Alert);
    v48 = sub_265761C38(v45, v47, &v56);

    *(v40 + 14) = v48;
    _os_log_impl(&dword_26575E000, v38, v39, "(%{private}s): Alert does not require a watchdog: %{public}s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v41, -1, -1);
    MEMORY[0x26675E650](v40, -1, -1);
  }

  else
  {

    sub_2657622E0(v37, type metadata accessor for Alert);
  }
}

uint64_t sub_26576EFDC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Alert.HistoryItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for Alert(0);
  v10 = *(v2 + *(result + 40));
  v11 = *(v10 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = 0;
  v13 = v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  while (v12 < *(v10 + 16))
  {
    sub_26576000C(v13 + *(v6 + 72) * v12, v8, type metadata accessor for Alert.HistoryItem);
    v14 = *(v8 + 3) == a1 && *(v8 + 4) == a2;
    if (v14 || (sub_26577A0BC()) && v8[40] < 0x40u)
    {
      sub_2657622E0(v8, type metadata accessor for Alert.HistoryItem);
      return 1;
    }

    ++v12;
    result = sub_2657622E0(v8, type metadata accessor for Alert.HistoryItem);
    if (v11 == v12)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26576F174(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Alert(0);
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = sub_265779E3C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v2[2];
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  v15 = sub_265779E4C();
  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (qword_2814476D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_265779DEC();
  __swift_project_value_buffer(v16, qword_2814476E0);
  sub_26576000C(a1, v8, type metadata accessor for Alert);

  v17 = sub_265779DDC();
  v18 = sub_265779EBC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v41 = v21;
    *v20 = 136380931;
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v22 = sub_265779D0C();
    v24 = sub_265761C38(v22, v23, &v41);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v25 = Alert.description.getter();
    v27 = v26;
    sub_2657622E0(v8, type metadata accessor for Alert);
    v28 = sub_265761C38(v25, v27, &v41);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_26575E000, v17, v18, "(%{private}s): Attempting to present non-interrupting alert on local device: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v21, -1, -1);
    v29 = v20;
    a1 = v38;
    MEMORY[0x26675E650](v29, -1, -1);
  }

  else
  {

    sub_2657622E0(v8, type metadata accessor for Alert);
  }

  v30 = v2[10];
  ObjectType = swift_getObjectType();
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v39;
  sub_26576000C(a1, v39, type metadata accessor for Alert);
  v34 = (*(v40 + 80) + 24) & ~*(v40 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  sub_26575FFA4(v33, v35 + v34, type metadata accessor for Alert);
  v36 = *(v30 + 32);

  v36(a1, 0, sub_265771170, v35, ObjectType, v30);
}

uint64_t sub_26576F5FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, double a5)
{
  v6 = v5;
  v12 = sub_265779E3C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v6 + 16);
  *v15 = v16;
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v17 = v16;
  v18 = sub_265779E4C();
  result = (*(v13 + 8))(v15, v12);
  if (v18)
  {
    v20 = swift_beginAccess();
    if (*(*(v6 + 136) + 16))
    {

      sub_26576435C(a1, a2);
      if ((v21 & 1) == 0)
      {

        if (a5 > 0.0)
        {
          goto LABEL_6;
        }

        return a3(v20);
      }

      sub_265779C3C();
      swift_beginAccess();

      sub_265778BC0(0, a1, a2);
      swift_endAccess();
    }

    if (a5 > 0.0)
    {
LABEL_6:
      sub_265779C8C();
      v22 = sub_265779C7C();
      MEMORY[0x28223BE20](v22);
      *(&v25 - 4) = v6;
      *(&v25 - 3) = a1;
      *(&v25 - 2) = a2;
      v23 = swift_allocObject();
      v23[2] = v6;
      v23[3] = a1;
      v23[4] = a2;
      v23[5] = a3;
      v23[6] = a4;

      sub_265779C4C();

      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *(v6 + 136);
      *(v6 + 136) = 0x8000000000000000;
      sub_265767118(v22, a1, a2, isUniquelyReferenced_nonNull_native);

      *(v6 + 136) = v26;
      swift_endAccess();
    }

    return a3(v20);
  }

  __break(1u);
  return result;
}

uint64_t sub_26576F938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Alert(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    if (qword_2814476D8 != -1)
    {
      swift_once();
    }

    v9 = sub_265779DEC();
    __swift_project_value_buffer(v9, qword_2814476E0);
    sub_26576000C(a3, v6, type metadata accessor for Alert);

    v10 = sub_265779DDC();
    v11 = sub_265779EBC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136380931;
      __swift_project_boxed_opaque_existential_1((v8 + 32), *(v8 + 56));
      v14 = sub_265779D0C();
      v16 = sub_265761C38(v14, v15, &v21);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v17 = Alert.description.getter();
      v19 = v18;
      sub_2657622E0(v6, type metadata accessor for Alert);
      v20 = sub_265761C38(v17, v19, &v21);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_26575E000, v10, v11, "(%{private}s): Presented non-interrupting alert on local device: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26675E650](v13, -1, -1);
      MEMORY[0x26675E650](v12, -1, -1);
    }

    else
    {

      return sub_2657622E0(v6, type metadata accessor for Alert);
    }
  }

  return result;
}

uint64_t sub_26576FBDC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t))
{
  if (qword_2814476D8 != -1)
  {
    swift_once();
  }

  v9 = sub_265779DEC();
  __swift_project_value_buffer(v9, qword_2814476E0);

  v10 = sub_265779DDC();
  v11 = sub_265779EBC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v12 = 136380931;
    v19[0] = v18;
    __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
    v13 = sub_265779D0C();
    v15 = sub_265761C38(v13, v14, v19);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    *(v12 + 14) = sub_265761C38(a3, a4, v19);
    _os_log_impl(&dword_26575E000, v10, v11, "(%{private}s): Watchdog fired for: %{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26675E650](v18, -1, -1);
    MEMORY[0x26675E650](v12, -1, -1);
  }

  swift_beginAccess();

  sub_265778BC0(0, a3, a4);
  v16 = swift_endAccess();
  return a5(v16);
}

void *sub_26576FDF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_26576FE44(a1, a2);
  sub_26576FF74(&unk_287713C50);
  return v3;
}

void *sub_26576FE44(uint64_t a1, unint64_t a2)
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

  v6 = sub_265770060(v5, 0);
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

  result = sub_265779F8C();
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
        v10 = sub_265779E8C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265770060(v10, 0);
        result = sub_265779F4C();
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

uint64_t sub_26576FF74(uint64_t result)
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

  result = sub_2657700D4(result, v11, 1, v3);
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

void *sub_265770060(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D688, &qword_26577AD78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2657700D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D688, &qword_26577AD78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_2657701C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2657701E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2657701E8(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D668, &qword_26577AD58);
  v10 = *(sub_265779DBC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
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
  v15 = *(sub_265779DBC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
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

unint64_t sub_2657703C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D680, &qword_26577AD70);
    v3 = sub_265779FCC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_265764524(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2657704A0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a4;
  v34 = a5;
  v31 = a3;
  v32 = a2;
  v30 = a1;
  v7 = sub_265779EDC();
  v8 = *(v7 - 8);
  v35 = v7;
  v36 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265779ECC();
  MEMORY[0x28223BE20](v11);
  v12 = sub_265779E2C();
  MEMORY[0x28223BE20](v12 - 8);
  v5[17] = MEMORY[0x277D84F98];
  v5[19] = 0;
  swift_unknownObjectWeakInit();
  v13 = sub_2657711E4();
  v28 = "rtCenter.swift";
  v29 = v13;
  sub_265779E1C();
  v37 = MEMORY[0x277D84F90];
  v27[1] = sub_2657662E4(&qword_2814476C8, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6A0, &qword_26577AD88);
  sub_26576632C(&qword_2814476D0, &qword_28001D6A0, &qword_26577AD88);
  sub_265779F1C();
  v14 = *MEMORY[0x277D85268];
  v15 = *(v36 + 104);
  v36 += 104;
  v27[0] = v10;
  v15(v10, v14, v35);
  v5[2] = sub_265779F0C();
  v28 = "lertCenter.internal";
  sub_265779E1C();
  v37 = MEMORY[0x277D84F90];
  v17 = v30;
  v16 = v31;
  v18 = v32;
  sub_265779F1C();
  v15(v27[0], v14, v35);
  v5[3] = sub_265779F0C();
  sub_26575F5D4(v18, (v5 + 4));
  v19 = v33;
  v5[9] = v16;
  v5[10] = v19;
  sub_26575F5D4(v17, (v5 + 12));
  if (v34)
  {
    v5[11] = v34;
    swift_unknownObjectRetain();
  }

  else
  {
    v20 = qword_281447838;
    swift_unknownObjectRetain();
    if (v20 != -1)
    {
      swift_once();
    }

    v6[11] = off_281447840;
  }

  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  sub_2657662E4(&qword_281447830, v21, type metadata accessor for AlertCenter, &protocol conformance descriptor for AlertCenter);

  sub_265779D1C();

  v22 = v6[10];
  ObjectType = swift_getObjectType();
  v24 = *(v22 + 16);

  v24(v25, &protocol witness table for AlertCenter, ObjectType, v22);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v6;
}

uint64_t sub_265770988(uint64_t (*a1)(uint64_t))
{
  v3 = *(type metadata accessor for Alert(0) - 8);
  v4 = sub_26576B9B0((v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80))));
  return a1(v4);
}

uint64_t objectdestroy_52Tm()
{
  v1 = sub_265779DBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265770C28(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_265779DBC() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_26576C3BC(a1, a2, v6, v7);
}

uint64_t sub_265770CAC@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 152);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_265770CE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D658, &qword_26577AD48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265770D54(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_265770D60()
{
  v1 = *(type metadata accessor for Alert(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v4 = 0;
  sub_2657664C8(v0 + v2, &v4);
  return sub_265779C9C();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t objectdestroy_78Tm()
{
  v1 = (type metadata accessor for Alert(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = sub_265779C1C();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[8], v6);
  sub_265764C28(*(v0 + v3 + v1[11]), *(v0 + v3 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_265770F94(uint64_t (*a1)(uint64_t))
{
  v3 = *(type metadata accessor for Alert(0) - 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = (v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));
  ObjectType = swift_getObjectType();
  v8 = (*(v4 + 8))(v5, &protocol witness table for AlertCenter, *v6, v6[1], ObjectType, v4);
  return a1(v8);
}

uint64_t sub_265771050()
{
  v1 = *(type metadata accessor for Alert(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = *(v0 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);

  return sub_26576E59C(v0 + v3, v6, v7, v8, v9, (v0 + ((v2 + 16 + v5) & ~v2)));
}

uint64_t objectdestroy_102Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_265771170(uint64_t a1)
{
  v3 = *(type metadata accessor for Alert(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_26576F938(a1, v4, v5);
}

unint64_t sub_2657711E4()
{
  result = qword_2814476C0;
  if (!qword_2814476C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814476C0);
  }

  return result;
}

uint64_t sub_2657712B4()
{
  v0 = sub_265779C2C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265779DEC();
  __swift_allocate_value_buffer(v4, qword_2814476E0);
  __swift_project_value_buffer(v4, qword_2814476E0);
  (*(v1 + 104))(v3, *MEMORY[0x277CB9750], v0);
  return sub_265779DCC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t Alert.HistoryItem.init(necessity:requestingDeviceID:requestedDeviceID:state:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = *a6;
  type metadata accessor for Alert.HistoryItem(0);
  result = sub_265779BFC();
  *a7 = v12;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = v13;
  return result;
}

uint64_t Alert.init(identifier:creationDate:dismissOption:payload:breaksThroughFocus:history:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  if (*(a8 + 16))
  {
    v13 = *a4;
    v14 = *(a4 + 8);
    *a9 = result;
    *(a9 + 1) = a2;
    v15 = type metadata accessor for Alert(0);
    v16 = v15[5];
    v17 = sub_265779C1C();
    v18 = *(v17 - 8);
    (*(v18 + 16))(&a9[v16], a3, v17);
    v19 = &a9[v15[7]];
    *v19 = v13;
    v19[8] = v14;
    a9[v15[8]] = a7 & 1;
    sub_265779BAC();
    result = (*(v18 + 8))(a3, v17);
    v20 = &a9[v15[9]];
    *v20 = a5;
    *(v20 + 1) = a6;
    *&a9[v15[10]] = a8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2657715CC()
{
  if (*v0)
  {
    return 0x726F7461646E616DLL;
  }

  else
  {
    return 0x6C616E6F6974706FLL;
  }
}

uint64_t sub_26577160C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C616E6F6974706FLL && a2 == 0xE800000000000000;
  if (v6 || (sub_26577A0BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F7461646E616DLL && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26577A0BC();

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

uint64_t sub_2657716F0(uint64_t a1)
{
  v2 = sub_265771B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26577172C(uint64_t a1)
{
  v2 = sub_265771B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265771768(uint64_t a1)
{
  v2 = sub_265771B5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657717A4(uint64_t a1)
{
  v2 = sub_265771B5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657717E0(uint64_t a1)
{
  v2 = sub_265771BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26577181C(uint64_t a1)
{
  v2 = sub_265771BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Alert.Necessity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6A8, &qword_26577ADA0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6B0, &qword_26577ADA8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6B8, &qword_26577ADB0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265771B08();
  sub_26577A12C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_265771B5C();
    v14 = v18;
    sub_26577A05C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_265771BB0();
    sub_26577A05C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_265771B08()
{
  result = qword_28001D6C0;
  if (!qword_28001D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D6C0);
  }

  return result;
}

unint64_t sub_265771B5C()
{
  result = qword_28001D6C8;
  if (!qword_28001D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D6C8);
  }

  return result;
}

unint64_t sub_265771BB0()
{
  result = qword_28001D6D0;
  if (!qword_28001D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D6D0);
  }

  return result;
}

uint64_t Alert.Necessity.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6D8, &qword_26577ADB8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6E0, &qword_26577ADC0);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6E8, &unk_26577ADC8);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265771B08();
  v12 = v31;
  sub_26577A11C();
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
    v16 = sub_26577A04C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_26576925C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_265779F7C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5B8, &qword_26577A700);
      *v22 = &type metadata for Alert.Necessity;
      sub_265779FEC();
      sub_265779F6C();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
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
        sub_265771B5C();
        sub_265779FDC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_265771BB0();
        sub_265779FDC();
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

uint64_t sub_2657720F0()
{
  if (*v0)
  {
    return 0x676E696B6E696874;
  }

  else
  {
    return 0x6974736575716572;
  }
}

uint64_t sub_265772130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6974736575716572 && a2 == 0xEA0000000000676ELL;
  if (v6 || (sub_26577A0BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E696B6E696874 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26577A0BC();

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

uint64_t sub_265772214(uint64_t a1)
{
  v2 = sub_26577262C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265772250(uint64_t a1)
{
  v2 = sub_26577262C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26577228C(uint64_t a1)
{
  v2 = sub_2657726D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657722C8(uint64_t a1)
{
  v2 = sub_2657726D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265772304(uint64_t a1)
{
  v2 = sub_265772680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265772340(uint64_t a1)
{
  v2 = sub_265772680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Alert.CoordinationState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6F0, &qword_26577ADD8);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D6F8, &qword_26577ADE0);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D700, &qword_26577ADE8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26577262C();
  sub_26577A12C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_265772680();
    v14 = v18;
    sub_26577A05C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2657726D4();
    sub_26577A05C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_26577262C()
{
  result = qword_28001D708;
  if (!qword_28001D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D708);
  }

  return result;
}

unint64_t sub_265772680()
{
  result = qword_28001D710;
  if (!qword_28001D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D710);
  }

  return result;
}

unint64_t sub_2657726D4()
{
  result = qword_28001D718;
  if (!qword_28001D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D718);
  }

  return result;
}

uint64_t Alert.CoordinationState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D720, &qword_26577ADF0);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D728, &qword_26577ADF8);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D730, &qword_26577AE00);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26577262C();
  v12 = v31;
  sub_26577A11C();
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
    v16 = sub_26577A04C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_26576925C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_265779F7C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5B8, &qword_26577A700);
      *v22 = &type metadata for Alert.CoordinationState;
      sub_265779FEC();
      sub_265779F6C();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
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
        sub_265772680();
        sub_265779FDC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_2657726D4();
        sub_265779FDC();
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

uint64_t sub_265772C2C()
{
  if (*v0)
  {
    return 0x64656E696C636564;
  }

  else
  {
    return 0x74754F64656D6974;
  }
}

uint64_t sub_265772C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74754F64656D6974 && a2 == 0xE800000000000000;
  if (v6 || (sub_26577A0BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656E696C636564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26577A0BC();

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

uint64_t sub_265772D3C(uint64_t a1)
{
  v2 = sub_265773154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265772D78(uint64_t a1)
{
  v2 = sub_265773154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265772DB4(uint64_t a1)
{
  v2 = sub_2657731A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265772DF0(uint64_t a1)
{
  v2 = sub_2657731A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265772E2C(uint64_t a1)
{
  v2 = sub_2657731FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265772E68(uint64_t a1)
{
  v2 = sub_2657731FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Alert.FailureReason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D738, &qword_26577AE08);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D740, &qword_26577AE10);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D748, &qword_26577AE18);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265773154();
  sub_26577A12C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_2657731A8();
    v14 = v18;
    sub_26577A05C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_2657731FC();
    sub_26577A05C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_265773154()
{
  result = qword_28001D750;
  if (!qword_28001D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D750);
  }

  return result;
}

unint64_t sub_2657731A8()
{
  result = qword_28001D758;
  if (!qword_28001D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D758);
  }

  return result;
}

unint64_t sub_2657731FC()
{
  result = qword_28001D760;
  if (!qword_28001D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D760);
  }

  return result;
}

uint64_t Alert.FailureReason.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D768, &qword_26577AE20);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D770, &qword_26577AE28);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D778, &qword_26577AE30);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265773154();
  v12 = v31;
  sub_26577A11C();
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
    v16 = sub_26577A04C();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_26576925C();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_265779F7C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5B8, &qword_26577A700);
      *v22 = &type metadata for Alert.FailureReason;
      sub_265779FEC();
      sub_265779F6C();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
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
        sub_2657731A8();
        sub_265779FDC();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_2657731FC();
        sub_265779FDC();
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

uint64_t sub_265773770()
{
  v1 = 0x64656C696166;
  if (*v0 != 1)
  {
    v1 = 0x6579616C70736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616E6964726F6F63;
  }
}

uint64_t sub_2657737D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_265778624(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2657737FC(uint64_t a1)
{
  v2 = sub_265776470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265773838(uint64_t a1)
{
  v2 = sub_265776470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265773874(uint64_t a1)
{
  v2 = sub_2657765C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657738B0(uint64_t a1)
{
  v2 = sub_2657765C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2657738EC(uint64_t a1)
{
  v2 = sub_2657764C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265773928(uint64_t a1)
{
  v2 = sub_2657764C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265773964(uint64_t a1)
{
  v2 = sub_265776518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2657739A0(uint64_t a1)
{
  v2 = sub_265776518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Alert.AlertState.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D780, &qword_26577AE38);
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v23 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D788, &qword_26577AE40);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D790, &qword_26577AE48);
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D798, &qword_26577AE50);
  v12 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v14 = &v22 - v13;
  v15 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265776470();
  sub_26577A12C();
  if (v15 >> 6)
  {
    if (v15 >> 6 == 1)
    {
      v32 = 1;
      sub_265776518();
      v16 = v28;
      sub_26577A05C();
      v31 = v15 & 1;
      sub_26577656C();
      v17 = v25;
      sub_26577A09C();
      (*(v24 + 8))(v8, v17);
      return (*(v12 + 8))(v14, v16);
    }

    else
    {
      v33 = 2;
      sub_2657764C4();
      v20 = v23;
      v21 = v28;
      sub_26577A05C();
      (*(v26 + 8))(v20, v27);
      return (*(v12 + 8))(v14, v21);
    }
  }

  else
  {
    v30 = 0;
    sub_2657765C0();
    v19 = v28;
    sub_26577A05C();
    v29 = v15 & 1;
    sub_265776614();
    sub_26577A09C();
    (*(v22 + 8))(v11, v9);
    return (*(v12 + 8))(v14, v19);
  }
}

uint64_t Alert.AlertState.hash(into:)()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (!(v1 >> 6) || v2 == 1)
  {
    MEMORY[0x26675E1F0]();
    v2 = v1 & 1;
  }

  return MEMORY[0x26675E1F0](v2);
}

uint64_t Alert.AlertState.hashValue.getter()
{
  v1 = *v0;
  sub_26577A0DC();
  v2 = v1 >> 6;
  if (!(v1 >> 6) || v2 == 1)
  {
    MEMORY[0x26675E1F0]();
    v2 = v1 & 1;
  }

  MEMORY[0x26675E1F0](v2);
  return sub_26577A10C();
}

uint64_t Alert.AlertState.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D7D0, &qword_26577AE58);
  v40 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v39 = &v34 - v3;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D7D8, &qword_26577AE60);
  v38 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D7E0, &qword_26577AE68);
  v36 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D7E8, &qword_26577AE70);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_265776470();
  v14 = v42;
  sub_26577A11C();
  if (!v14)
  {
    v16 = v39;
    v15 = v40;
    v34 = 0;
    v42 = v10;
    v17 = v41;
    v18 = sub_26577A04C();
    v19 = (2 * *(v18 + 16)) | 1;
    v44 = v18;
    v45 = v18 + 32;
    v46 = 0;
    v47 = v19;
    v20 = sub_265768924();
    if (v20 == 3 || v46 != v47 >> 1)
    {
      v25 = sub_265779F7C();
      swift_allocError();
      v26 = v9;
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D5B8, &qword_26577A700);
      *v28 = &type metadata for Alert.AlertState;
      sub_265779FEC();
      sub_265779F6C();
      (*(*(v25 - 8) + 104))(v28, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v42 + 8))(v12, v26);
    }

    else
    {
      if (v20)
      {
        if (v20 == 1)
        {
          v48 = 1;
          sub_265776518();
          v21 = v5;
          v22 = v34;
          sub_265779FDC();
          v23 = v42;
          if (!v22)
          {
            sub_265776668();
            v24 = v35;
            sub_26577A03C();
            (*(v38 + 8))(v21, v24);
            (*(v23 + 8))(v12, v9);
            swift_unknownObjectRelease();
            v33 = v48 | 0x40;
LABEL_18:
            *v17 = v33;
            return __swift_destroy_boxed_opaque_existential_1(v43);
          }
        }

        else
        {
          v48 = 2;
          sub_2657764C4();
          v31 = v34;
          sub_265779FDC();
          v32 = v42;
          if (!v31)
          {
            (*(v15 + 8))(v16, v37);
            (*(v32 + 8))(v12, v9);
            swift_unknownObjectRelease();
            v33 = 0x80;
            goto LABEL_18;
          }
        }
      }

      else
      {
        v48 = 0;
        sub_2657765C0();
        v30 = v34;
        sub_265779FDC();
        if (!v30)
        {
          sub_2657766BC();
          sub_26577A03C();
          (*(v36 + 8))(v8, v6);
          (*(v42 + 8))(v12, v9);
          swift_unknownObjectRelease();
          *v17 = v48;
          return __swift_destroy_boxed_opaque_existential_1(v43);
        }
      }

      (*(v42 + 8))(v12, v9);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_265774538()
{
  v1 = *v0;
  sub_26577A0DC();
  v2 = v1 >> 6;
  if (!(v1 >> 6) || v2 == 1)
  {
    MEMORY[0x26675E1F0]();
    v2 = v1 & 1;
  }

  MEMORY[0x26675E1F0](v2);
  return sub_26577A10C();
}

uint64_t sub_26577459C()
{
  v1 = *v0;
  v2 = v1 >> 6;
  if (!(v1 >> 6) || v2 == 1)
  {
    MEMORY[0x26675E1F0]();
    v2 = v1 & 1;
  }

  return MEMORY[0x26675E1F0](v2);
}

uint64_t sub_2657745E4(uint64_t a1)
{
  v2 = *v1;
  sub_26577A0DC();
  v3 = v2 >> 6;
  if (!(v2 >> 6) || v3 == 1)
  {
    MEMORY[0x26675E1F0]();
    v3 = v2 & 1;
  }

  MEMORY[0x26675E1F0](v3);
  return sub_26577A10C();
}

uint64_t Alert.HistoryItem.requestingDeviceID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Alert.HistoryItem.requestedDeviceID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Alert.HistoryItem.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Alert.HistoryItem(0) + 32);
  v4 = sub_265779C1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_265774740()
{
  v1 = *v0;
  v2 = 0x746973736563656ELL;
  v3 = 0x6574617473;
  if (v1 != 3)
  {
    v3 = 1702125924;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_2657747D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_265778744(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_265774808(uint64_t a1)
{
  v2 = sub_265776800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265774844(uint64_t a1)
{
  v2 = sub_265776800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Alert.HistoryItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D800, &qword_26577AE78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265776800();
  sub_26577A12C();
  v10[15] = *v3;
  v10[14] = 0;
  sub_265776854();
  sub_26577A09C();
  if (!v2)
  {
    v10[13] = 1;
    sub_26577A06C();
    v10[12] = 2;
    sub_26577A06C();
    v10[11] = v3[40];
    v10[10] = 3;
    sub_2657768A8();
    sub_26577A09C();
    type metadata accessor for Alert.HistoryItem(0);
    v10[9] = 4;
    sub_265779C1C();
    sub_265762188(&qword_28001D820, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_26577A09C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Alert.HistoryItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_265779C1C();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D828, &qword_26577AE80);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = v20 - v7;
  v9 = type metadata accessor for Alert.HistoryItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_265776800();
  sub_26577A11C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v21 = v6;
  v13 = v11;
  v15 = v23;
  v14 = v24;
  v32 = 0;
  sub_2657768FC();
  v16 = v25;
  sub_26577A03C();
  *v13 = v33;
  v31 = 1;
  *(v13 + 8) = sub_26577A01C();
  *(v13 + 16) = v17;
  v20[1] = v17;
  v30 = 2;
  *(v13 + 24) = sub_26577A01C();
  *(v13 + 32) = v18;
  v28 = 3;
  sub_265776950();
  v20[0] = 0;
  sub_26577A03C();
  *(v13 + 40) = v29;
  v27 = 4;
  sub_265762188(&qword_28001D840, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_26577A03C();
  (*(v15 + 8))(v8, v16);
  (*(v22 + 32))(v13 + *(v9 + 32), v21, v4);
  sub_265762204(v13, v14, type metadata accessor for Alert.HistoryItem);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_265776E00(v13, type metadata accessor for Alert.HistoryItem);
}

uint64_t Alert.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Alert.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Alert(0) + 20);
  v4 = sub_265779C1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Alert.dismissDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Alert(0) + 24);
  v4 = sub_265779C1C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Alert.dismissOption.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for Alert(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t Alert.payload.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Alert(0) + 36);
  result = sub_265764C28(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Alert.history.getter()
{
  type metadata accessor for Alert(0);
}

uint64_t Alert.history.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Alert(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_265775238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Alert.HistoryItem(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_265762204(v13, v10, type metadata accessor for Alert.HistoryItem);
        sub_265762204(v14, v7, type metadata accessor for Alert.HistoryItem);
        if (*v10 != *v7 || (*(v10 + 1) == *(v7 + 1) ? (v16 = *(v10 + 2) == *(v7 + 2)) : (v16 = 0), !v16 && (sub_26577A0BC() & 1) == 0 || (*(v10 + 3) != *(v7 + 3) || *(v10 + 4) != *(v7 + 4)) && (sub_26577A0BC() & 1) == 0))
        {
LABEL_26:
          sub_265776E00(v7, type metadata accessor for Alert.HistoryItem);
          sub_265776E00(v10, type metadata accessor for Alert.HistoryItem);
          goto LABEL_27;
        }

        v17 = v10[40];
        v18 = v7[40];
        if (!(v17 >> 6))
        {
          break;
        }

        if (v17 >> 6 == 1)
        {
          if ((v18 & 0xC0) != 0x40)
          {
            goto LABEL_26;
          }

          goto LABEL_19;
        }

        if (v18 != 128)
        {
          goto LABEL_26;
        }

LABEL_22:
        v19 = sub_265779BEC();
        sub_265776E00(v7, type metadata accessor for Alert.HistoryItem);
        sub_265776E00(v10, type metadata accessor for Alert.HistoryItem);
        if (v19)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v19 & 1;
      }

      if (v18 > 0x3F)
      {
        goto LABEL_26;
      }

LABEL_19:
      if ((v18 ^ v17))
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    v19 = 1;
  }

  else
  {
LABEL_27:
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_2657754CC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x64616F6C796170;
  if (v1 != 5)
  {
    v3 = 0x79726F74736968;
  }

  v4 = 0x4F7373696D736964;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461657263;
  if (v1 != 1)
  {
    v5 = 0x447373696D736964;
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

uint64_t sub_2657755CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_265778904(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_265775600(uint64_t a1)
{
  v2 = sub_265776D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26577563C(uint64_t a1)
{
  v2 = sub_265776D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Alert.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_265779C1C();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D848, &qword_26577AE88);
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for Alert(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_265776D04();
  v17 = v42;
  sub_26577A11C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v37 = v7;
  v18 = v41;
  v42 = v13;
  LOBYTE(v44) = 0;
  v19 = v12;
  v21 = v15;
  *v15 = sub_26577A01C();
  v15[1] = v22;
  LOBYTE(v44) = 1;
  sub_265762188(&qword_28001D840, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v23 = v9;
  v24 = v39;
  sub_26577A03C();
  v25 = v42[5];
  v35 = *(v40 + 32);
  v36 = v21;
  v35(v21 + v25, v23, v24);
  LOBYTE(v44) = 2;
  v26 = v37;
  sub_26577A03C();
  v35((v36 + v42[6]), v26, v24);
  v45 = 3;
  sub_265776D58();
  sub_26577A00C();
  v27 = v18;
  if (BYTE9(v44))
  {
    v28 = 0;
    v29 = 0x4018000000000000;
  }

  else
  {
    v29 = v44;
    v28 = BYTE8(v44);
  }

  v30 = v38;
  v31 = v42;
  v32 = v36;
  v33 = v36 + v42[7];
  *v33 = v29;
  *(v33 + 8) = v28 & 1;
  LOBYTE(v44) = 4;
  *(v32 + v31[8]) = sub_265779FFC() & 1;
  v45 = 5;
  sub_265776DAC();
  sub_26577A03C();
  *(v32 + v31[9]) = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D868, &qword_26577AE90);
  v45 = 6;
  sub_265776F08(&qword_28001D870, &qword_28001D878, &protocol conformance descriptor for Alert.HistoryItem, MEMORY[0x277D83978]);
  sub_26577A03C();
  (*(v27 + 8))(v19, v10);
  *(v32 + v31[10]) = v44;
  sub_265762204(v32, v30, type metadata accessor for Alert);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_265776E00(v32, type metadata accessor for Alert);
}

uint64_t Alert.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D880, &qword_26577AE98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265776D04();
  sub_26577A12C();
  LOBYTE(v15) = 0;
  sub_26577A06C();
  if (!v2)
  {
    v9 = type metadata accessor for Alert(0);
    LOBYTE(v15) = 1;
    sub_265779C1C();
    sub_265762188(&qword_28001D820, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_26577A09C();
    LOBYTE(v15) = 2;
    sub_26577A09C();
    v10 = v3 + v9[7];
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v15 = v11;
    LOBYTE(v16) = v10;
    v17 = 3;
    sub_265776E60();
    sub_26577A09C();
    LOBYTE(v15) = 4;
    sub_26577A07C();
    v12 = (v3 + v9[9]);
    v13 = v12[1];
    v15 = *v12;
    v16 = v13;
    v17 = 5;
    sub_265760088(v15, v13);
    sub_265776EB4();
    sub_26577A09C();
    sub_265764C28(v15, v16);
    v15 = *(v3 + v9[10]);
    v17 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28001D868, &qword_26577AE90);
    sub_265776F08(&qword_28001D898, &qword_28001D8A0, &protocol conformance descriptor for Alert.HistoryItem, MEMORY[0x277D83948]);
    sub_26577A09C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_265776058@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_265779B7C();
    if (v10)
    {
      v11 = sub_265779B9C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_265779B8C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_265779B7C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_265779B9C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_265779B8C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_265776288(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2657769A4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_265764C28(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_265776058(v13, a3, a4, &v12);
  v10 = v4;
  sub_265764C28(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

BOOL _s12SessionAlert0B0V0B5StateO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        return 0;
      }

      return ((v3 ^ v2) & 1) == 0;
    }

    if (v3 == 128)
    {
      return 1;
    }
  }

  else if (v3 < 0x40)
  {
    return ((v3 ^ v2) & 1) == 0;
  }

  return 0;
}

unint64_t sub_265776470()
{
  result = qword_28001D7A0;
  if (!qword_28001D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7A0);
  }

  return result;
}

unint64_t sub_2657764C4()
{
  result = qword_28001D7A8;
  if (!qword_28001D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7A8);
  }

  return result;
}

unint64_t sub_265776518()
{
  result = qword_28001D7B0;
  if (!qword_28001D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7B0);
  }

  return result;
}

unint64_t sub_26577656C()
{
  result = qword_28001D7B8;
  if (!qword_28001D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7B8);
  }

  return result;
}

unint64_t sub_2657765C0()
{
  result = qword_28001D7C0;
  if (!qword_28001D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7C0);
  }

  return result;
}

unint64_t sub_265776614()
{
  result = qword_28001D7C8;
  if (!qword_28001D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7C8);
  }

  return result;
}

unint64_t sub_265776668()
{
  result = qword_28001D7F0;
  if (!qword_28001D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7F0);
  }

  return result;
}

unint64_t sub_2657766BC()
{
  result = qword_28001D7F8;
  if (!qword_28001D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D7F8);
  }

  return result;
}

uint64_t _s12SessionAlert0B0V11HistoryItemV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
  if (!v5 && (sub_26577A0BC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4);
  if (!v6 && (sub_26577A0BC() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[40];
  v8 = a2[40];
  if (v7 >> 6)
  {
    if (v7 >> 6 == 1)
    {
      if ((v8 & 0xC0) != 0x40)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (v8 == 128)
    {
      goto LABEL_21;
    }

    return 0;
  }

  if (v8 > 0x3F)
  {
    return 0;
  }

LABEL_18:
  if ((v8 ^ v7))
  {
    return 0;
  }

LABEL_21:
  type metadata accessor for Alert.HistoryItem(0);

  return sub_265779BEC();
}

unint64_t sub_265776800()
{
  result = qword_28001D808;
  if (!qword_28001D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D808);
  }

  return result;
}

unint64_t sub_265776854()
{
  result = qword_28001D810;
  if (!qword_28001D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D810);
  }

  return result;
}

unint64_t sub_2657768A8()
{
  result = qword_28001D818;
  if (!qword_28001D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D818);
  }

  return result;
}

unint64_t sub_2657768FC()
{
  result = qword_28001D830;
  if (!qword_28001D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D830);
  }

  return result;
}

unint64_t sub_265776950()
{
  result = qword_28001D838;
  if (!qword_28001D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D838);
  }

  return result;
}

uint64_t sub_2657769A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_265779B7C();
  v11 = result;
  if (result)
  {
    result = sub_265779B9C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_265779B8C();
  sub_265776058(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_265776A5C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_265760088(a3, a4);
          return sub_265776288(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s12SessionAlert0B0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_26577A0BC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Alert(0);
  if ((sub_265779BEC() & 1) == 0 || (sub_265779BEC() & 1) == 0)
  {
    return 0;
  }

  v6 = v5[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = *(v9 + 8);
  if (v8 == 1)
  {
    if (v7 == 0.0)
    {
      if (v10 != 0.0)
      {
        LOBYTE(v11) = 0;
      }

      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v10 == 0.0)
      {
        v11 = 0;
      }

      if (v11 != 1)
      {
        return 0;
      }
    }
  }

  else
  {
    if (v7 != v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (*(a1 + v5[8]) != *(a2 + v5[8]) || !sub_265776A5C(*(a1 + v5[9]), *(a1 + v5[9] + 8), *(a2 + v5[9]), *(a2 + v5[9] + 8)))
  {
    return 0;
  }

  v12 = v5[10];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);

  return sub_265775238(v13, v14);
}

unint64_t sub_265776D04()
{
  result = qword_28001D850;
  if (!qword_28001D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D850);
  }

  return result;
}

unint64_t sub_265776D58()
{
  result = qword_28001D858;
  if (!qword_28001D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D858);
  }

  return result;
}

unint64_t sub_265776DAC()
{
  result = qword_28001D860;
  if (!qword_28001D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D860);
  }

  return result;
}

uint64_t sub_265776E00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_265776E60()
{
  result = qword_28001D888;
  if (!qword_28001D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D888);
  }

  return result;
}

unint64_t sub_265776EB4()
{
  result = qword_28001D890;
  if (!qword_28001D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D890);
  }

  return result;
}

uint64_t sub_265776F08(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28001D868, &qword_26577AE90);
    sub_265762188(a2, type metadata accessor for Alert.HistoryItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_265776FA8()
{
  result = qword_28001D8A8;
  if (!qword_28001D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8A8);
  }

  return result;
}

unint64_t sub_265777000()
{
  result = qword_28001D8B0;
  if (!qword_28001D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8B0);
  }

  return result;
}

unint64_t sub_265777058()
{
  result = qword_28001D8B8;
  if (!qword_28001D8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28001D8B8);
  }

  return result;
}

unint64_t sub_2657770B0()
{
  result = qword_2814478B0;
  if (!qword_2814478B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814478B0);
  }

  return result;
}

void sub_265777104(uint64_t a1)
{
  sub_265779C1C();
  if (v1 <= 0x3F)
  {
    sub_2657771BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2657771BC(uint64_t a1)
{
  if (!qword_2814475C8)
  {
    type metadata accessor for Alert.HistoryItem(255);
    v1 = sub_265779E9C();
    if (!v2)
    {
      atomic_store(v1, &qword_2814475C8);
    }
  }
}

uint64_t getEnumTagSinglePayload for Alert.AlertState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7E)
  {
    goto LABEL_17;
  }

  if (a2 + 130 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 130) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 130;
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

      return (*a1 | (v4 << 8)) - 130;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 130;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7D)
  {
    v6 = -1;
  }

  return v6 + 1;
}